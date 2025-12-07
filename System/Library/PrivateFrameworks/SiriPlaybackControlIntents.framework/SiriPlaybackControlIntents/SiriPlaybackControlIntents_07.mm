uint64_t sub_26895B5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v5[13] = swift_task_alloc();
  sub_268B34DA4();
  v5[14] = swift_task_alloc();
  v6 = sub_268B35374();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = sub_268B367A4();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v8 = sub_268B37A54();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26895B7BC, 0, 0);
}

uint64_t sub_26895B7BC()
{
  v51 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = __swift_project_value_buffer(v2, qword_2802CDA10);
  v48 = *(v3 + 16);
  v48(v1, v4, v2);

  v5 = sub_268B37A34();
  v6 = sub_268B37EC4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 176);
  if (v7)
  {
    v45 = *(v0 + 168);
    v46 = v4;
    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v43 = *(v0 + 144);
    v44 = *(v0 + 192);
    v11 = OUTLINED_FUNCTION_172_0();
    v12 = swift_slowAlloc();
    v50 = v12;
    *v11 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v13 = sub_268B36784();
    v15 = v14;
    v16 = v10;
    v4 = v46;
    (*(v9 + 8))(v16, v43);
    v17 = sub_26892CDB8(v13, v15, &v50);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_2688BB000, v5, v6, "LanguageDisambiguationStrategy.provideOutput with responseMode = %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v18 = *(v8 + 8);
    v18(v44, v45);
  }

  else
  {

    v18 = *(v8 + 8);
    v19 = OUTLINED_FUNCTION_103();
    v18(v19, v20);
  }

  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  v23 = *(v0 + 136);
  v24 = *(v0 + 80);
  v47 = *(v0 + 64);
  sub_268B34D64();
  v25 = swift_task_alloc();
  v25[1] = vextq_s8(v47, v47, 8uLL);
  v25[2].i64[0] = v24;
  sub_268B352C4();

  v48(v21, v4, v22);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v28);
    _os_log_impl(&dword_2688BB000, v26, v27, "LanguageDisambiguationStrategy.provideOutput creating confirmationViewOutput using RF 2.0", v23, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v0 + 184);
  v30 = *(v0 + 168);
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);
  v33 = *(v0 + 80);
  v34 = *(v0 + 88);

  v18(v29, v30);
  sub_268B35094();
  swift_allocObject();
  *(v0 + 200) = sub_268B35084();
  v35 = sub_268B36A54();
  *(v0 + 40) = v35;
  *(v0 + 48) = sub_26895F804(&qword_2802A6470, MEMORY[0x277D55560], MEMORY[0x277D55540]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v37 = swift_allocObject();
  *(v0 + 208) = v37;
  *(v37 + 16) = xmmword_268B3BBA0;
  sub_2688F1FA4(v33, v31, &unk_2802A56E0, &unk_268B3CDF0);
  *(v37 + 32) = *(v31 + *(v32 + 48));
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v38 + 8))(v31);
  v49 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v39 = swift_task_alloc();
  *(v0 + 216) = v39;
  *v39 = v0;
  v39[1] = sub_26895BC6C;
  v40 = *(v0 + 136);
  v41 = *(v0 + 56);

  return v49(v41, v0 + 16, v37, v40);
}

uint64_t sub_26895BC6C()
{
  OUTLINED_FUNCTION_219();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_89();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_26895BDA4, 0, 0);
}

uint64_t sub_26895BDA4()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_222();

  return v1();
}

uint64_t sub_26895BE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = sub_268B34E54();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = sub_268B367A4();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = sub_268B35044();
  (*(*(v16 - 8) + 16))(v15, a2, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_268B35314();
  sub_268B35344();
  sub_268B35304();
  sub_268B36714();
  sub_268B36B14();

  sub_268B352D4();
  sub_2688F1FA4(v21, v11, &unk_2802A56E0, &unk_268B3CDF0);
  v17 = *&v11[*(v9 + 56)];
  v18 = [v17 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v19 = sub_268B350F4();
  (*(*(v19 - 8) + 8))(v11, v19);
  (*(v5 + 104))(v7, *MEMORY[0x277D5BC50], v22);
  return sub_268B352E4();
}

void sub_26895C174()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v13 = &v26[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  v17 = &v26[-v16];
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v18 + 16))(v17, v7);
  *&v17[*(v14 + 56)] = v5;
  v19 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  v20 = sub_268B35244();
  sub_26895D2A0(v20);
  v22 = v21;

  __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
  v28[0] = v22;

  sub_268948494(v28);
  sub_2688C058C(v28, &byte_2802A6450, &byte_268B3BE10);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_268B34CA4();
  v23 = sub_268B35044();
  OUTLINED_FUNCTION_4();
  (*(v24 + 16))(v13, v9, v23);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v23);
  v25 = sub_268B354F4();
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v29 = v25;
  v30 = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_268B34F34();

  sub_2688C058C(v26, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v13, &qword_2802A57F0, &qword_268B3DDB0);
  v31 = 0;
  v3(v28);
  sub_2688C058C(v17, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v28, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_26895C468()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v26 = v5;
  v27 = v4;
  v7 = v6;
  v9 = v8;
  v28 = v10;
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v18 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v13 + 16))(v17, v18, v11);
  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "LanguageDisambiguationStrategy.makeFlowCancelledResponse()", v21, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v17, v11);
  sub_26890C900(v1 + 56, v29);
  type metadata accessor for DialogProvider();
  inited = swift_initStackObject();
  sub_2688E6514(v29, inited + 16);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_268B3BBA0;
    *(v23 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v24 = swift_allocObject();
  v24[2] = v26;
  v24[3] = v3;
  v24[4] = v27;
  v24[5] = v7;
  v24[6] = v9;
  v24[7] = v1;
  v24[8] = v28;
  v24[9] = v23;

  v25 = v9;

  sub_268ABDE34(sub_26895EFE0, v24);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((inited + 16));
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26895C710(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v67 = a8;
  v68 = a6;
  v61 = a4;
  v62 = a5;
  v73 = a2;
  v74 = a3;
  v70 = a1;
  v60 = *a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = &v56 - v15;
  v72 = sub_268B34E24();
  v64 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v59 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - v21;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v23 = MEMORY[0x28223BE20](v71);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v56 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v56 - v29;
  sub_2688F1FA4(v70, v22, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v22, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v17, qword_2802CDA10);
    v32 = v59;
    (*(v59 + 16))(v19, v31, v17);
    v33 = sub_268B37A34();
    v34 = sub_268B37EE4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "LanguageDisambiguationStrategy.makeFlowCancelledResponse Unable to generate dialog.", v35, 2u);
      MEMORY[0x26D6266E0](v35, -1, -1);
    }

    (*(v32 + 8))(v19, v17);
    sub_2688C2ECC();
    v36 = swift_allocError();
    *v37 = -70;
    v75[0] = v36;
    v76 = 1;
    v73(v75);
    return sub_2688C058C(v75, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v59 = a9;
    sub_2689186C8(v22, v30);
    v58 = *(v60 + 80);
    v60 = *(v60 + 104);
    v39 = v68;
    v61 = sub_26894CE44(3, 1, v61, v62, v68, 0, 0, v58, v60);
    v41 = v40;
    v57 = __swift_project_boxed_opaque_existential_1(a7 + 17, a7[20]);
    v42 = v63;
    v43 = v64;
    (*(v64 + 104))(v63, *MEMORY[0x277D5BC08], v72);
    sub_2688F1FA4(v30, v28, &unk_2802A56E0, &unk_268B3CDF0);

    v44 = sub_268B350F4();
    v62 = *(v44 - 8);
    v45 = v65;
    (*(v62 + 32))(v65, v28, v44);
    v70 = v44;
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v44);
    v46 = sub_268B34B94();
    v47 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v46);
    sub_26894D438(v67, v42, v39, v45, v61, v41, v47, *v57, v58, v60, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);

    sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
    v48 = v45;
    v49 = v59;
    sub_2688C058C(v48, &unk_2802A57B0, &unk_268B3CE00);
    (*(v43 + 8))(v42, v72);
    v51 = a7[25];
    v50 = a7[26];
    __swift_project_boxed_opaque_existential_1(a7 + 22, v51);
    sub_2688F1FA4(v30, v25, &unk_2802A56E0, &unk_268B3CDF0);
    v52 = *&v25[*(v71 + 48)];
    v53 = sub_268B35044();
    v54 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v53);
    if (v49 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v55 = sub_268B38294();

      v49 = v55;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    (*(v50 + 32))(v25, v52, v54, v49, v73, v74, v51, v50);

    sub_2688C058C(v54, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v62 + 8))(v25, v70);
  }
}

void sub_26895CF5C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v36 = v2;
  v37 = v3;
  v38 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57E8, &unk_268B3BE60);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v35 = v7;
  OUTLINED_FUNCTION_9();
  v42 = sub_268B36A44();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v41 = v11 - v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v40 = &v33 - v14;
  v15 = sub_2688EFD0C();
  v16 = 0;
  v44 = v1 & 0xC000000000000001;
  v17 = v1;
  v18 = v1 & 0xFFFFFFFFFFFFFF8;
  v34 = v9;
  v39 = (v9 + 32);
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v16)
    {

      v30 = v38;
      sub_268B36AB4();
      v31 = *MEMORY[0x277D55558];
      sub_268B36A54();
      OUTLINED_FUNCTION_4();
      (*(v32 + 104))(v30, v31);
      OUTLINED_FUNCTION_23();
      return;
    }

    if (v44)
    {
      v19 = MEMORY[0x26D625BD0](v16, v17);
    }

    else
    {
      if (v16 >= *(v18 + 16))
      {
        goto LABEL_19;
      }

      v19 = *(v17 + 8 * v16 + 32);
    }

    v20 = v19;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    sub_268988504(v19);
    if (!v21)
    {
      goto LABEL_10;
    }

    sub_2689EF3E4(v20);
    if (v22)
    {
      v23 = sub_268B34534();
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v23);
      sub_268B36A34();

      v24 = *v39;
      (*v39)(v40, v41, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2689879FC();
        v43 = v28;
      }

      v25 = *(v43 + 16);
      if (v25 >= *(v43 + 24) >> 1)
      {
        sub_2689879FC();
        v43 = v29;
      }

      v26 = v42;
      v27 = v43;
      *(v43 + 16) = v25 + 1;
      v24((v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25), v40, v26);
      ++v16;
    }

    else
    {

LABEL_10:

      ++v16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_26895D2A0(uint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  v3 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D47A60]) init];
      sub_2688EA03C(0, &unk_2802A6430, 0x277D47AB8);
      v8 = sub_268B37CE4();

      [v7 setItems_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_268B3BBA0;
      *(v9 + 32) = v7;
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v5;
    sub_26895D460(&v11, v1, &v10);

    if (v10)
    {
      MEMORY[0x26D6256C0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_26895D460(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 name];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 languageIdentifier];
    if (v8)
    {
      sub_268B37BF4();

      v8 = [objc_allocWithZone(MEMORY[0x277D47AB8]) init];
      [v8 setTitle_];

      type metadata accessor for DirectInvocationHelper();
      __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
      v9 = sub_268B34D34();
      sub_268A69540();
      v11 = v10;

      if (v11 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
        sub_268B38294();
      }

      else
      {
        sub_268B38454();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
      v12 = sub_268B37CE4();

      [v8 setCommands_];
    }

    else
    {
    }
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

void sub_26895D648()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v11 = (v9 - v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v68 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v19 = sub_2688EFD0C();
  if (!v19)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v5, qword_2802CDA10);
    OUTLINED_FUNCTION_8_4();
    v55(v0);
    v56 = sub_268B37A34();
    v57 = sub_268B37EE4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_14();
      *v58 = 0;
      _os_log_impl(&dword_2688BB000, v56, v57, "LanguageDisambiguationStrategy.selectMatch No languages found to choose from. Returning nil", v58, 2u);
      OUTLINED_FUNCTION_12();
    }

    v59 = OUTLINED_FUNCTION_103();
    v60(v59);
    goto LABEL_42;
  }

  v20 = v19;
  v73 = v18;
  v74 = v7;
  v69 = v15;
  v70 = v11;
  v75 = v5;
  v21 = 0;
  v22 = 0;
  v76 = v4;
  v77 = v4 & 0xC000000000000001;
  v79 = MEMORY[0x277D84F90];
  v23 = v4 & 0xFFFFFFFFFFFFFF8;
  while (v20 != v21)
  {
    if (v77)
    {
      v24 = MEMORY[0x26D625BD0](v21, v4);
    }

    else
    {
      if (v21 >= *(v23 + 16))
      {
        goto LABEL_44;
      }

      v24 = *(v4 + 8 * v21 + 32);
    }

    v25 = v24;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (sub_2689EF38C(v24))
    {
      v78[0] = sub_268B37254();
      v78[1] = v26;
      MEMORY[0x28223BE20](v78[0]);
      *(&v68 - 2) = v78;
      LODWORD(v5) = sub_268ACD018();

      if (v5)
      {
        v27 = 1;
        v4 = v76;
        goto LABEL_13;
      }

      v4 = v76;
    }

    v27 = 0;
LABEL_13:
    sub_268988504(v25);
    if (v28)
    {
      sub_268B37C84();
      OUTLINED_FUNCTION_35_2();
      v27 |= v5;
    }

    switch(v2)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_268B38444();
        OUTLINED_FUNCTION_35_2();
        if ((v27 ^ v5))
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      case 5:
        if ((v27 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      default:

        if (v27)
        {
LABEL_19:
          sub_268B38214();
          v5 = *(v79 + 16);
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
        }

        else
        {
LABEL_17:
        }

        ++v21;
        break;
    }
  }

  v22 = v79;
  if (qword_2802A4F30 == -1)
  {
    goto LABEL_25;
  }

LABEL_45:
  OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_25:
  v29 = v75;
  v30 = __swift_project_value_buffer(v75, qword_2802CDA10);
  v31 = v73;
  v32 = v74;
  v33 = *(v74 + 16);
  v71 = v30;
  v72 = v33;
  (v33)(v73);

  v34 = sub_268B37A34();
  v35 = sub_268B37EE4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v36 = 136315394;
    LOBYTE(v79) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6428, &qword_268B3F090);
    v37 = sub_268B38094();
    v39 = sub_26892CDB8(v37, v38, v78);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    v40 = type metadata accessor for LanguageOption();
    v41 = MEMORY[0x26D6256F0](v22, v40);
    v43 = sub_26892CDB8(v41, v42, v78);

    *(v36 + 14) = v43;
    _os_log_impl(&dword_2688BB000, v34, v35, "LanguageDisambiguationStrategy.selectMatch mediaOptions after filtering by mediaViewOption: %s: %s", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    v32 = v74;
    v29 = v75;
    OUTLINED_FUNCTION_12();
  }

  v44 = *(v32 + 8);
  v44(v31, v29);
  if (sub_2688EFD0C())
  {
    sub_2688EFD10();
    if ((v22 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x26D625BD0](0, v22);
    }

    else
    {
      v45 = *(v22 + 32);
    }

    v46 = v45;
    v47 = v72;

    v48 = v70;
    v47(v70, v71, v29);
    v49 = v46;
    v50 = sub_268B37A34();
    v51 = sub_268B37ED4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_172_0();
      v53 = swift_slowAlloc();
      *v52 = 138543362;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&dword_2688BB000, v50, v51, "LanguageDisambiguationStrategy.selectMatch Selected: %{public}@", v52, 0xCu);
      sub_2688C058C(v53, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v44(v48, v29);
  }

  else
  {

    v61 = v69;
    v72(v69, v71, v29);
    v62 = sub_268B37A34();
    v63 = sub_268B37EE4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_14();
      *v64 = 0;
      _os_log_impl(&dword_2688BB000, v62, v63, "LanguageDisambiguationStrategy.selectMatch no languages matched the requested mediaViewOption. Returning matches.first", v64, 2u);
      OUTLINED_FUNCTION_12();
    }

    v65 = v77;

    v44(v61, v29);
    v66 = v76;
    sub_2688EFD10();
    if (v65)
    {
      MEMORY[0x26D625BD0](0, v66);
    }

    else
    {
      v67 = *(v66 + 32);
    }
  }

LABEL_42:
  OUTLINED_FUNCTION_23();
}

void sub_26895DDF0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = type metadata accessor for MediaIntent(0);
  sub_26895E3B4(v1, v3 + *(v14 + 36), v15, v16, v17, v18, v19, v20, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  if (v21)
  {
    goto LABEL_2;
  }

  v22 = *(v3 + 16);
  if (v22)
  {
    v57 = *(v3 + 8);
    v62 = v57;
    v63 = v22;
    v60 = 95;
    v61 = 0xE100000000000000;
    v58 = 45;
    v59 = 0xE100000000000000;
    sub_26895EF2C();
    v56 = sub_268B380B4();
    v24 = v23;
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_56;
    }

    while (1)
    {
      __swift_project_value_buffer(v4, qword_2802CDA10);
      OUTLINED_FUNCTION_8_4();
      v25(v13);

      v26 = sub_268B37A34();
      LODWORD(v27) = sub_268B37EC4();

      v28 = os_log_type_enabled(v26, v27);
      v29 = v24;
      v55 = v3;
      if (v28)
      {
        v30 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v62 = v54;
        *v30 = 136446722;
        *(v30 + 4) = sub_26892CDB8(v57, v22, &v62);
        HIDWORD(v53) = v27;
        *(v30 + 12) = 2082;
        *(v30 + 14) = sub_26892CDB8(v56, v29, &v62);
        *(v30 + 22) = 2082;
        v31 = type metadata accessor for LanguageOption();
        v32 = MEMORY[0x26D6256F0](v1, v31);
        v34 = sub_26892CDB8(v32, v33, &v62);

        *(v30 + 24) = v34;
        _os_log_impl(&dword_2688BB000, v26, BYTE4(v53), "Comparing %{public}s and %{public}s against: %{public}s", v30, 0x20u);
        LOBYTE(v27) = v54;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        v24 = v29;
        OUTLINED_FUNCTION_12();
      }

      (*(v6 + 8))(v13, v4);
      v4 = sub_2688EFD0C();
      v35 = 0;
      v6 = v1 & 0xC000000000000001;
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4 == v35)
        {
          v13 = 0;
          v62 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v4 == v13)
            {

              sub_26895D648();

              goto LABEL_2;
            }

            if (v6)
            {
              v44 = MEMORY[0x26D625BD0](v13, v1);
            }

            else
            {
              if (v13 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v44 = *(v1 + 8 * v13 + 32);
            }

            v45 = v44;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_54;
            }

            v46 = sub_2689EF3F0(v44);
            if (!v47)
            {
              goto LABEL_38;
            }

            if (v46 == v57 && v47 == v22)
            {
              goto LABEL_45;
            }

            sub_268B38444();
            OUTLINED_FUNCTION_35_2();
            if ((v27 & 1) == 0)
            {
LABEL_38:
              v49 = sub_2689EF3F0(v45);
              if (!v50)
              {
                goto LABEL_44;
              }

              if (v49 == v56 && v50 == v24)
              {
LABEL_45:

                goto LABEL_46;
              }

              sub_268B38444();
              OUTLINED_FUNCTION_35_2();
              if ((v27 & 1) == 0)
              {
LABEL_44:

                goto LABEL_47;
              }
            }

LABEL_46:
            sub_268B38214();
            v27 = *(v62 + 16);
            sub_268B38244();
            sub_268B38254();
            sub_268B38224();
LABEL_47:
            ++v13;
          }
        }

        if (v6)
        {
          v36 = MEMORY[0x26D625BD0](v35, v1);
        }

        else
        {
          if (v35 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v36 = *(v1 + 8 * v35 + 32);
        }

        v24 = v36;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        v37 = sub_2689EF3E4(v36);
        if (v38)
        {
          v13 = v38;
          if (v37 == v57 && v38 == v22)
          {

LABEL_51:

            goto LABEL_2;
          }

          LOBYTE(v27) = sub_268B38444();

          if (v27)
          {
            goto LABEL_51;
          }
        }

        ++v35;
        v24 = v29;
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v4, qword_2802CDA10);
  OUTLINED_FUNCTION_8_4();
  v40(v10);
  v41 = sub_268B37A34();
  v42 = sub_268B37F04();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "Intent is missing language, ignoring", v43, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v6 + 8))(v10, v4);
LABEL_2:
  OUTLINED_FUNCTION_23();
}

void sub_26895E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = sub_268B37124();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_20_0();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_15();
  sub_2688F1FA4(v24, v30, &qword_2802A58C0, &unk_268B3F080);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_2688C058C(v30, &qword_2802A58C0, &unk_268B3F080);
LABEL_17:
    OUTLINED_FUNCTION_23();
    return;
  }

  (*(v33 + 32))(v20, v30, v31);
  (*(v33 + 16))(v37, v20, v31);
  v39 = OUTLINED_FUNCTION_153_0();
  LODWORD(v41) = v40(v39);
  if (v41 == *MEMORY[0x277D5F7A8])
  {
    v42 = OUTLINED_FUNCTION_153_0();
    v43(v42);
    v44 = *v37;
    v41 = sub_2688EFD0C();
    if (v41 < v44)
    {
      goto LABEL_16;
    }

    v49 = __OFSUB__(v44, 1);
    v37 = v44 - 1;
    if (!v49)
    {
LABEL_14:
      sub_2688EFD10();
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](v37, v26);
      }

      else
      {
        v53 = *(v26 + 8 * v37 + 32);
      }

      goto LABEL_16;
    }

    __break(1u);
  }

  if (v41 != *MEMORY[0x277D5F7B0])
  {
    v50 = *(v33 + 8);
    v51 = OUTLINED_FUNCTION_103();
    v50(v51);
    v52 = OUTLINED_FUNCTION_153_0();
    v50(v52);
    goto LABEL_17;
  }

  v45 = OUTLINED_FUNCTION_153_0();
  v46(v45);
  v47 = *v37;
  v48 = sub_2688EFD0C();
  v49 = __OFSUB__(v48, v47);
  v37 = v48 - v47;
  if (v37 < 0 != v49)
  {
LABEL_16:
    v54 = OUTLINED_FUNCTION_103();
    v55(v54);
    goto LABEL_17;
  }

  if (!v49)
  {
    goto LABEL_14;
  }

  __break(1u);
}

void *sub_26895E66C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_26895F84C((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  return v0;
}

uint64_t sub_26895E6B4()
{
  sub_26895E66C();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

uint64_t sub_26895E700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 96);
  v16[0] = *(a6 + 80);
  v16[1] = v13;
  v14 = type metadata accessor for LanguageDisambiguationStrategy(0, v16);
  return MEMORY[0x26D622290](a1, a2, a3, a4, a5, v14, a7);
}

uint64_t sub_26895E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a7;
  *(v10 + 24) = a8;

  sub_26895975C();
}

uint64_t sub_26895E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  OUTLINED_FUNCTION_16_8();
  v12 = *(a10 + 96);
  v15[0] = *(a10 + 80);
  v15[1] = v12;
  type metadata accessor for LanguageDisambiguationStrategy(0, v15);
  v13 = OUTLINED_FUNCTION_17_7();
  return a12(v13);
}

uint64_t sub_26895EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t))
{
  OUTLINED_FUNCTION_16_8();
  v11 = *(a9 + 96);
  v14[0] = *(a9 + 80);
  v14[1] = v11;
  type metadata accessor for LanguageDisambiguationStrategy(0, v14);
  v12 = OUTLINED_FUNCTION_17_7();
  return a11(v12);
}

uint64_t sub_26895EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a8 + 96);
  v11[0] = *(a8 + 80);
  v11[1] = v9;
  type metadata accessor for LanguageDisambiguationStrategy(0, v11);
  return sub_268B353B4();
}

uint64_t sub_26895EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 48) = v15;
  v16 = *(a6 + 96);
  *(v7 + 16) = *(a6 + 80);
  *(v7 + 32) = v16;
  v17 = type metadata accessor for LanguageDisambiguationStrategy(0, v7 + 16);
  *v15 = v7;
  v15[1] = sub_26895EC80;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v17, a7);
}

uint64_t sub_26895EC80()
{
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  OUTLINED_FUNCTION_222();

  return v3();
}

uint64_t sub_26895ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8;
  v17 = swift_task_alloc();
  *(v15 + 48) = v17;
  v18 = *(a7 + 96);
  *(v15 + 16) = *(a7 + 80);
  *(v15 + 32) = v18;
  v19 = type metadata accessor for LanguageDisambiguationStrategy(0, v15 + 16);
  *v17 = v15;
  v17[1] = sub_26895F8A0;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v19, a8);
}

unint64_t sub_26895EE90()
{
  result = qword_2802A6400;
  if (!qword_2802A6400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2802A6408, &qword_268B3EFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6400);
  }

  return result;
}

uint64_t sub_26895EEF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26895EF2C()
{
  result = qword_2802A6418;
  if (!qword_2802A6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6418);
  }

  return result;
}

uint64_t sub_26895EF80()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26895F014()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v9 = *(*v8 + 80);
  v10 = (v7 + v9) & ~v9;
  v11 = *(*v8 + 64);
  v22 = sub_268B36A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = v14;
  v16 = *(v13 + 80);
  v17 = (v10 + v11 + v16) & ~v16;
  v21 = *(v15 + 64);
  v18 = v4 | v16 | v9;

  (*(v3 + 8))(v0 + v5, v1);
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v19 + 8))(v0 + v10);

  (*(v13 + 8))(v0 + v17, v22);

  return MEMORY[0x2821FE8E8](v0, v17 + v21, v18 | 7);
}

uint64_t sub_26895F208(uint64_t a1)
{
  v3 = v2;
  v5 = sub_268B35044();
  OUTLINED_FUNCTION_19_0(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = sub_268B36A54();
  OUTLINED_FUNCTION_22(v15);
  v17 = (v12 + v14 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = *(v1 + 16);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_26895F3A8;

  return sub_26895B5C8(a1, v18, v1 + v7, v1 + v12, v1 + v17);
}

uint64_t sub_26895F3A8()
{
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  OUTLINED_FUNCTION_222();

  return v3();
}

uint64_t sub_26895F48C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26895F4D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26895F3A8;

  return sub_2688DB8EC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_26895F5B4()
{
  OUTLINED_FUNCTION_26();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_26895F6D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  OUTLINED_FUNCTION_19_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_26895A718(a1, *(v1 + 48), *(v1 + 56), v1 + v8, *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_26895F7A8(uint64_t a1)
{
  v2 = type metadata accessor for MediaIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26895F804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_23_7@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  **(v3 - 192) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_27_5(uint64_t a1)
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_35_2()
{
}

Swift::String_optional __swiftcall UsoTask_disableSetting_common_MediaItem.verb()()
{
  if (sub_26895F9F8() == 3)
  {
    v0 = UsoTask_disableSetting_common_MediaItem.referencedSetting()();
    if (v0)
    {
      sub_268962A68();
      v2 = v1;
      v3 = v1;

      if (v3 != 24)
      {
        v0 = sub_26893E3F8(v2);
        goto LABEL_8;
      }

      v0 = 0;
    }

    v4 = 0;
  }

  else
  {
    v4 = 0xE300000000000000;
    v0 = 7628147;
  }

LABEL_8:
  result.value._object = v4;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26895F9F8()
{
  if ((sub_268A9D268() & 0xFE) != 0)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t UsoTask_disableSetting_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
      }

      sub_268B35B44();

      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_26895FAB8()
{
  v0 = sub_268A9D268();
  if (v0 == 1)
  {
    v1 = 6;
  }

  else
  {
    v1 = 7;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_26895FAEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B3F0D0;
  inited[3] = xmmword_268B3F0E0;
  UsoTask_disableSetting_common_MediaItem.verb()();
  v1 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v1)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t UsoTask_disableSetting_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = UsoTask_disableSetting_common_MediaItem.referencedSetting()();
  if (v15)
  {
    sub_2689633E8();
    if (v16)
    {
      if (qword_2802A4F30 != -1)
      {
        v16 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_1_14(v16, qword_2802CDA10);
      v17(v14);
      v18 = sub_268B37A34();
      v19 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v19))
      {
        v20 = OUTLINED_FUNCTION_14();
        *v20 = 0;
        _os_log_impl(&dword_2688BB000, v18, v19, "UsoTask_disableSetting_common_MediaItem#shouldHandle Task is mediaPlayer. Handling in controls", v20, 2u);
        OUTLINED_FUNCTION_12();
      }

      v21 = 0;
    }

    else
    {
      sub_268963658();
      if (v26)
      {
        if (qword_2802A4F30 != -1)
        {
          v26 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_1_14(v26, qword_2802CDA10);
        v27(v12);
        v28 = sub_268B37A34();
        v29 = sub_268B37F04();
        if (OUTLINED_FUNCTION_196(v29))
        {
          v30 = OUTLINED_FUNCTION_14();
          *v30 = 0;
          _os_log_impl(&dword_2688BB000, v28, v29, "UsoTask_disableSetting_common_MediaItem#shouldHandle Task is settings. Handling in controls", v30, 2u);
          OUTLINED_FUNCTION_12();
        }

        v21 = 2;
        v14 = v12;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v26 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_1_14(v26, qword_2802CDA10);
        v31(v9);
        v32 = sub_268B37A34();
        v33 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_196(v33))
        {
          v34 = OUTLINED_FUNCTION_14();
          *v34 = 0;
          _os_log_impl(&dword_2688BB000, v32, v33, "UsoTask_disableSetting_common_MediaItem#shouldHandle Task is not mediaPlayer/setting: Not handling in controls", v34, 2u);
          OUTLINED_FUNCTION_12();
        }

        v21 = 3;
        v14 = v9;
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v15 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_1_14(v15, qword_2802CDA10);
    v22(v6);
    v23 = sub_268B37A34();
    v24 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v24))
    {
      v25 = OUTLINED_FUNCTION_14();
      *v25 = 0;
      _os_log_impl(&dword_2688BB000, v23, v24, "UsoTask_disableSetting_common_MediaItem#shouldHandle no referenced setting found in task. Not handling in Controls", v25, 2u);
      OUTLINED_FUNCTION_12();
    }

    v21 = 3;
    v14 = v6;
  }

  result = (*(v3 + 8))(v14, v2);
  *a1 = v21;
  return result;
}

uint64_t sub_2689600D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268960128(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_26896017C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689601D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268960224(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268960278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689602CC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268960320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268960384(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689603D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_26896043C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689604A0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268960504(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268960568(uint64_t a1)
{
  result = sub_268960614(&qword_2802A6490, &protocol conformance descriptor for UsoTask_disableSetting_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268960614(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36514();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_268960AA8()
{
  OUTLINED_FUNCTION_26();
  v5 = v4;
  sub_268B37A54();
  OUTLINED_FUNCTION_1_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v33 = __swift_project_value_buffer(v0, qword_2802CDA10);
  v34 = *(v7 + 16);
  v34(v1);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_14();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "Checking confirm intent condition", v17, 2u);
    OUTLINED_FUNCTION_12();
  }

  v18 = *(v7 + 8);
  v18(v1, v0);
  v19 = [v5 device];
  if (v19)
  {
    v20 = v19;
    if (sub_268961260(v19))
    {
      (v34)(v3, v33, v0);
      v21 = sub_268B37A34();
      v22 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_196(v22))
      {
        v23 = OUTLINED_FUNCTION_14();
        v2 = v3;
        OUTLINED_FUNCTION_89_1(v23);
        OUTLINED_FUNCTION_2_13(&dword_2688BB000, v24, v22, "Confirm intent condition returning true");
        OUTLINED_FUNCTION_132_0();
      }

      else
      {

        v2 = v3;
      }
    }

    else
    {
      (v34)(v11, v33, v0);
      v29 = sub_268B37A34();
      v30 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_196(v30))
      {
        v31 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_89_1(v31);
        OUTLINED_FUNCTION_2_13(&dword_2688BB000, v32, v30, "Intent indicates confirmation is not necessary");
        OUTLINED_FUNCTION_132_0();
      }

      v2 = v11;
    }
  }

  else
  {
    (v34)(v2, v33, v0);
    v20 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_14_6(v25))
    {
      v26 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v26);
      OUTLINED_FUNCTION_7_7(&dword_2688BB000, v27, v28, "No resolved devices were found in the intent. Skipping confirmation step");
      OUTLINED_FUNCTION_12();
    }
  }

  v18(v2, v0);
  OUTLINED_FUNCTION_23();
}

BOOL sub_268961260(void *a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  if (sub_2689850E8())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v8, v9, v2);
    v10 = sub_268B37A34();
    v11 = sub_268B37F04();
    if (!os_log_type_enabled(v10, v11))
    {
      v13 = 0;
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "shouldSkipUserConfirmation is set to true. Skipping confirmation step", v12, 2u);
    v13 = 0;
  }

  else
  {
    v14 = sub_2689840D4();
    v13 = sub_268AD3738(v14, &unk_28794EE18);
    sub_2688C063C();
    v15 = sub_268B38054();
    [a1 setConfirmed_];

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v16, v2);
    v10 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (!os_log_type_enabled(v10, v17))
    {
      v8 = v6;
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v13;
    _os_log_impl(&dword_2688BB000, v10, v17, "ConfirmableIntent.shouldConfirm: %{BOOL}d", v12, 8u);
    v8 = v6;
  }

  MEMORY[0x26D6266E0](v12, -1, -1);
LABEL_13:

  (*(v3 + 8))(v8, v2);
  return v13;
}

void sub_26896155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_268B37A54();
  OUTLINED_FUNCTION_1_15();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_20_0();
  v35 = (v33 - v34);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  if ((sub_2689850E8() & 1) == 0)
  {
    if (v27())
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v20, qword_2802CDA10);
      OUTLINED_FUNCTION_1_13();
      v44(v21);
      v45 = sub_268B37A34();
      v46 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v46))
      {
        v47 = OUTLINED_FUNCTION_14();
        *v47 = 0;
        _os_log_impl(&dword_2688BB000, v45, v46, "This is a WHA request. Skipping confirmation", v47, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v31 + 8))(v21, v20);
    }

    else
    {
      v48 = sub_2689840D4();
      if (sub_268AD3738(v48, v25))
      {
        sub_2688C063C();
        v49 = 1;
        v50 = sub_268B38054();
LABEL_16:
        [v29 setConfirmed_];

        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        __swift_project_value_buffer(v20, qword_2802CDA10);
        OUTLINED_FUNCTION_1_13();
        v51(v35);
        v41 = sub_268B37A34();
        v52 = sub_268B37ED4();
        if (!OUTLINED_FUNCTION_196(v52))
        {
          v39 = v35;
          goto LABEL_22;
        }

        v53 = swift_slowAlloc();
        *v53 = 67109120;
        *(v53 + 4) = v49;
        _os_log_impl(&dword_2688BB000, v41, v52, "DeviceQueryableIntent.shouldConfirm: %{BOOL}d", v53, 8u);
        v39 = v35;
        goto LABEL_20;
      }
    }

    sub_2688C063C();
    v50 = sub_268B38054();
    v49 = 0;
    goto LABEL_16;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v20, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v40(v39);
  v41 = sub_268B37A34();
  v42 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v43);
    _os_log_impl(&dword_2688BB000, v41, v42, "shouldSkipUserConfirmation is set to true. Skipping confirmation step", v29, 2u);
LABEL_20:
    OUTLINED_FUNCTION_12();
  }

LABEL_22:

  (*(v31 + 8))(v39, v20);
  OUTLINED_FUNCTION_23();
}

id sub_2689618EC(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!sub_2688EFD0C())
  {

    return 0;
  }

  sub_2688EFD10();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D625BD0](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  return v5;
}

void OUTLINED_FUNCTION_2_13(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_7_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_14_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_2689619F4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  OUTLINED_FUNCTION_4_9();
  v19 = sub_268B35BC4();
  if (v19)
  {
    v20 = v19;
    v21 = *(v19 + 16);
    v64 = v4;
    v65 = v21;
    if (v21)
    {
      v62 = v0;
      v63 = v18;
      v60 = v8;
      v61 = v2;
      v22 = 0;
      OUTLINED_FUNCTION_258();
      v24 = v20 + v23;
      v25 = (v11 + 8);
      while (1)
      {
        if (v22 >= *(v20 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v4 = v9;
        (*(v11 + 16))(v15, v24 + *(v11 + 72) * v22, v9);
        v0 = v15;
        sub_268B358C4();
        if (v26)
        {
          v0 = v26;
          OUTLINED_FUNCTION_6_11();
          v28 = v28 && v27 == 0xEF6E6F6974704F77;
          if (v28)
          {

LABEL_48:

            v52 = v63;
            (*(v11 + 32))(v63, v15, v4);
            sub_268B358C4();
            if (!v53)
            {
LABEL_54:
              (*v25)(v52, v4);
              goto LABEL_58;
            }

            OUTLINED_FUNCTION_6_11();
            if (v28 && v54 == 0xEF6E6F6974704F77)
            {
            }

            else
            {
              v56 = sub_268B38444();

              if ((v56 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            sub_268B358B4();
            sub_2689AD5C0();
            (*v25)(v52, v4);
            goto LABEL_58;
          }

          v29 = sub_268B38444();

          if (v29)
          {
            goto LABEL_48;
          }
        }

        ++v22;
        v9 = v4;
        (*v25)(v15, v4);
        if (v65 == v22)
        {

          v2 = v61;
          v1 = v62;
          v4 = v64;
          v8 = v60;
          goto LABEL_14;
        }
      }
    }

    v4 = v64;
  }

LABEL_14:
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
  (*(v4 + 16))(v8);

  v30 = sub_268B37A34();
  v31 = sub_268B37EE4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_172_0();
    v33 = OUTLINED_FUNCTION_173_0();
    v66 = v1;
    v67 = v33;
    *v32 = 136315138;
    sub_268B35DB4();

    v34 = sub_268B37C24();
    v36 = v8;
    v37 = sub_26892CDB8(v34, v35, &v67);

    *(v32 + 4) = v37;
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*(v4 + 8))(v36, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  v43 = sub_268B35D94();
  if (v44)
  {
    v0 = v43;
    v4 = v44;
    if (v43 != 0x656C746974627573 || v44 != 0xE900000000000073)
    {
      OUTLINED_FUNCTION_103();
      if ((sub_268B38444() & 1) == 0 && (v0 != 25443 || v4 != 0xE200000000000000))
      {
        OUTLINED_FUNCTION_103();
        if ((sub_268B38444() & 1) == 0 && (v0 != 0x63206465736F6C63 || v4 != 0xEF736E6F69747061))
        {
          OUTLINED_FUNCTION_103();
          if ((sub_268B38444() & 1) == 0 && (v0 != 0xD000000000000010 || v4 != 0x8000000268B58340))
          {
            v49 = OUTLINED_FUNCTION_103();
            if ((OUTLINED_FUNCTION_37_4(v49) & 1) == 0 && (v0 != 0xD000000000000010 || v4 != 0x8000000268B58360))
            {
              v51 = OUTLINED_FUNCTION_103();
              if ((OUTLINED_FUNCTION_37_4(v51) & 1) == 0)
              {
LABEL_60:
                if (v0 != 0x6F69647561 || v4 != 0xE500000000000000)
                {
                  v58 = OUTLINED_FUNCTION_103();
                  if ((OUTLINED_FUNCTION_44_1(v58) & 1) == 0 && (v0 != 25697 || v4 != 0xE200000000000000))
                  {
                    OUTLINED_FUNCTION_103();
                    sub_268B38444();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_58:
  OUTLINED_FUNCTION_23();
}

void sub_268962000()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_4();
  v7 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  if (sub_268B35DA4())
  {
    v17 = sub_268B35FE4();

    if (v17)
    {
      v51 = v16;
      OUTLINED_FUNCTION_4_9();
      v18 = sub_268B35BC4();
      if (v18)
      {
        v19 = v18;
        v52 = *(v18 + 16);
        if (v52)
        {
          v47 = v1;
          v48 = v4;
          v49 = v2;
          v50 = v17;
          v20 = 0;
          OUTLINED_FUNCTION_258();
          v2 = v19 + v21;
          v1 = v9 + 16;
          v4 = v9 + 8;
          while (v20 < *(v19 + 16))
          {
            (*(v9 + 16))(v13, v2 + *(v9 + 72) * v20, v7);
            v22 = sub_268B358C4();
            if (v23)
            {
              if (v22 == 0x6E614C616964656DLL && v23 == 0xED00006567617567)
              {

LABEL_29:

                v46 = v51;
                (*(v9 + 32))(v51, v13, v7);
                sub_268B358B4();

                (*(v9 + 8))(v46, v7);
                goto LABEL_27;
              }

              v17 = sub_268B38444();

              if (v17)
              {
                goto LABEL_29;
              }
            }

            ++v20;
            (*v4)(v13, v7);
            if (v52 == v20)
            {

              v4 = v48;
              v2 = v49;
              v17 = v50;
              v1 = v47;
              goto LABEL_21;
            }
          }

          __break(1u);
        }

        else
        {

LABEL_21:
          if (qword_2802A4F30 == -1)
          {
            goto LABEL_22;
          }
        }

        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_22:
        OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
        (*(v4 + 16))(v1);

        v33 = sub_268B37A34();
        v34 = sub_268B37EE4();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_172_0();
          v36 = v1;
          v37 = OUTLINED_FUNCTION_173_0();
          v53 = v17;
          v54 = v37;
          *v35 = 136315138;
          sub_268B35E14();

          v38 = sub_268B37C24();
          v40 = sub_26892CDB8(v38, v39, &v54);

          *(v35 + 4) = v40;
          OUTLINED_FUNCTION_34_0();
          _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          (*(v4 + 8))(v36, v2);
        }

        else
        {

          (*(v4 + 8))(v1, v2);
        }

        goto LABEL_27;
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
      (*(v4 + 16))(v0);

      v25 = sub_268B37A34();
      v26 = v4;
      v27 = sub_268B37EE4();

      if (os_log_type_enabled(v25, v27))
      {
        v28 = OUTLINED_FUNCTION_172_0();
        v29 = OUTLINED_FUNCTION_173_0();
        v53 = v17;
        v54 = v29;
        *v28 = 136315138;
        sub_268B35E14();

        v30 = sub_268B37C24();
        v32 = sub_26892CDB8(v30, v31, &v54);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_2688BB000, v25, v27, "UsoEntityCommonSetting#getLanguage couldn't get usoIdentifiers for language: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      (*(v26 + 8))(v0, v2);
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_23();
}

void sub_268962590()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v61 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v58 - v14;
  OUTLINED_FUNCTION_4_9();
  v16 = sub_268B35BC4();
  if (v16)
  {
    v17 = v16;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v6, qword_2802CDA10);
    OUTLINED_FUNCTION_152();
    v18(v15);

    v19 = sub_268B37A34();
    v20 = sub_268B37F04();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_172_0();
      v60 = v8;
      v22 = v21;
      v23 = OUTLINED_FUNCTION_173_0();
      v59 = v6;
      v24 = v23;
      v62 = v23;
      *v22 = 136315138;
      v25 = MEMORY[0x26D6256F0](v17, v0);
      v27 = sub_26892CDB8(v25, v26, &v62);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2688BB000, v19, v20, "UsoMediaSettingNames: Found identifiers for name: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_12();

      (*(v60 + 8))(v15, v59);
    }

    else
    {

      (*(v8 + 8))(v15, v6);
    }

    v36 = *(v17 + 16);
    if (v36)
    {
      v37 = *(v61 + 16);
      v60 = 0x8000000268B58320;
      v61 = v37;
      OUTLINED_FUNCTION_258();
      v58[1] = v17;
      v39 = v17 + v38;
      v41 = *(v40 + 56);
      v42 = MEMORY[0x277D84F90];
      v59 = v0;
      while (1)
      {
        (v61)(v5, v39, v0);
        sub_268B358C4();
        if (!v43)
        {
          break;
        }

        OUTLINED_FUNCTION_28_6();
        if (v44 == v46 && v45 == v60)
        {
        }

        else
        {
          v48 = OUTLINED_FUNCTION_37_4(v44);

          if ((v48 & 1) == 0)
          {
            break;
          }
        }

        sub_268B358B4();
        v51 = sub_268B382F4();

        v52 = OUTLINED_FUNCTION_0_1();
        v53(v52);
        if (!v51)
        {
          v54 = 0;
          goto LABEL_26;
        }

        if (v51 == 1)
        {
          v54 = 1;
LABEL_26:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_30_4();
            sub_2689875D4();
            v42 = v56;
          }

          v55 = *(v42 + 16);
          if (v55 >= *(v42 + 24) >> 1)
          {
            OUTLINED_FUNCTION_30_4();
            sub_2689875D4();
            v42 = v57;
          }

          *(v42 + 16) = v55 + 1;
          *(v42 + v55 + 32) = v54;
          v0 = v59;
        }

LABEL_31:
        v39 += v41;
        if (!--v36)
        {
          goto LABEL_32;
        }
      }

      v49 = OUTLINED_FUNCTION_0_1();
      v50(v49);
      goto LABEL_31;
    }

LABEL_32:
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v6, qword_2802CDA10);
    OUTLINED_FUNCTION_152();
    v28(v12);
    v29 = sub_268B37A34();
    v30 = sub_268B37F04();
    if (os_log_type_enabled(v29, v30))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v8 + 8))(v12, v6);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268962A68()
{
  OUTLINED_FUNCTION_26();
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v109 - v8;
  v127 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v122 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v120 = (v12 - v13);
  OUTLINED_FUNCTION_8();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v109 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v118 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v117 = v20;
  OUTLINED_FUNCTION_8();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v109 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v109 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v109 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_4_9();
  v31 = sub_268B35BC4();
  if (!v31)
  {
LABEL_23:
    if (qword_2802A4F30 == -1)
    {
LABEL_24:
      OUTLINED_FUNCTION_82(v3, qword_2802CDA10);
      OUTLINED_FUNCTION_152();
      v50(v1);
      v51 = sub_268B37A34();
      v52 = sub_268B37EE4();
      if (os_log_type_enabled(v51, v52))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_27();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v5 + 8))(v1, v3);
      goto LABEL_29;
    }

LABEL_75:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    goto LABEL_24;
  }

  v124 = *(v31 + 16);
  if (!v124)
  {

    goto LABEL_23;
  }

  v115 = v27;
  v116 = v0;
  v111 = v17;
  v112 = v9;
  v113 = v5;
  v114 = v3;
  v1 = 0;
  v121 = 0x8000000268B58380;
  OUTLINED_FUNCTION_258();
  v110 = v33;
  v34 = v32 + v33;
  v125 = (v35 + 8);
  v126 = v35 + 16;
  do
  {
    if (v1 >= *(v32 + 16))
    {
      __break(1u);
LABEL_71:

LABEL_72:

      v107 = v117;
      v108 = v127;
      (v124)(v117, v118, v127);
      sub_2689646F4(v107);
      v27(v107, v108);
      v27(v115, v108);
      goto LABEL_29;
    }

    v3 = v32;
    v123 = v122[9];
    v36 = v122[2];
    v36(v30, v34 + v123 * v1, v127);
    sub_268B358C4();
    if (v37)
    {
      OUTLINED_FUNCTION_40_1();
      if (v38 == v40 && v39 == v121)
      {

LABEL_28:

        v58 = v122 + 4;
        v59 = OUTLINED_FUNCTION_16_9();
        v60 = v127;
        v61(v59);
        sub_2689646F4(v2);
        (*(v58 - 3))(v2, v60);
        goto LABEL_29;
      }

      v42 = OUTLINED_FUNCTION_43_3(v38);

      if (v42)
      {
        goto LABEL_28;
      }
    }

    ++v1;
    v27 = *v125;
    (*v125)(v30, v127);
    v32 = v3;
  }

  while (v124 != v1);
  v43 = 0;
  v119 = 0x8000000268B58320;
  OUTLINED_FUNCTION_40_1();
  v46 = v45 - 7;
  v5 = v34;
  while (1)
  {
    if (v43 >= *(v44 + 16))
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v36(v24, v5, v127);
    v47 = sub_268B358C4();
    if (v48)
    {
      break;
    }

LABEL_20:
    ++v43;
    OUTLINED_FUNCTION_31_4();
    (v27)();
    v5 += v123;
    v44 = v3;
    if (v124 == v43)
    {
      goto LABEL_33;
    }
  }

  if (v47 != v46 || v48 != v119)
  {
    v1 = sub_268B38444();

    if (v1)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

LABEL_31:
  v62 = v122[4];
  v62(v115, v24, v127);
  v63 = sub_268B358B4();
  v65 = sub_2689AD474(v63, v64);
  if (v65 == 2)
  {
    goto LABEL_32;
  }

  if ((v65 & 1) == 0)
  {

LABEL_56:

    if (sub_268B35D84())
    {
      OUTLINED_FUNCTION_4_9();
      v97 = sub_268B35BC4();

      if (v97)
      {
        v124 = v62;
        v98 = *(v97 + 16);
        if (v98)
        {
          v99 = 0;
          v100 = v97 + v110;
          do
          {
            if (v99 >= *(v97 + 16))
            {
              __break(1u);
LABEL_77:
              OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
              goto LABEL_47;
            }

            v36(v118, v100, v127);
            sub_268B358C4();
            if (v101)
            {
              OUTLINED_FUNCTION_40_1();
              if (v102 == v104 && v103 == v121)
              {
                goto LABEL_71;
              }

              v106 = OUTLINED_FUNCTION_43_3(v102);

              if (v106)
              {
                goto LABEL_72;
              }
            }

            ++v99;
            OUTLINED_FUNCTION_31_4();
            (v27)();
            v100 += v123;
          }

          while (v98 != v99);
        }
      }
    }

    OUTLINED_FUNCTION_31_4();
    (v27)();
    goto LABEL_29;
  }

  v91 = OUTLINED_FUNCTION_44_1(0x79616C70726961);

  if (v91)
  {
    goto LABEL_56;
  }

LABEL_32:
  OUTLINED_FUNCTION_31_4();
  (v27)();
LABEL_33:
  v5 = 0;
  OUTLINED_FUNCTION_40_1();
  v1 = v67 - 2;
  v68 = v120;
  while (2)
  {
    if (v5 >= *(v66 + 16))
    {
      __break(1u);
      goto LABEL_74;
    }

    v36(v68, v34, v127);
    v69 = sub_268B358C4();
    if (!v70)
    {
LABEL_44:
      ++v5;
      OUTLINED_FUNCTION_31_4();
      (v27)();
      v34 += v123;
      v66 = v3;
      if (v124 == v5)
      {

        goto LABEL_46;
      }

      continue;
    }

    break;
  }

  if (v69 == v1 && v70 == 0x8000000268B583C0)
  {

    v68 = v120;
  }

  else
  {
    v72 = sub_268B38444();

    v68 = v120;
    if ((v72 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  sub_268B358B4();
  v73 = sub_268B382F4();

  if (v73 >= 2)
  {
    goto LABEL_44;
  }

  v92 = v111;
  v93 = v127;
  (v122[4])(v111, v68, v127);
  v94 = sub_268B358B4();
  v96 = sub_2689AD468(v94, v95);
  v27(v92, v93);
  if (v96 != 2)
  {
    goto LABEL_29;
  }

LABEL_46:
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_77;
  }

LABEL_47:
  v74 = v114;
  OUTLINED_FUNCTION_82(v114, qword_2802CDA10);
  v76 = v112;
  v75 = v113;
  OUTLINED_FUNCTION_152();
  v77(v76);
  v78 = v116;

  v79 = sub_268B37A34();
  v80 = sub_268B37EE4();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = OUTLINED_FUNCTION_172_0();
    v82 = OUTLINED_FUNCTION_173_0();
    v128 = v78;
    v129 = v82;
    *v81 = 136315138;
    sub_268B35DB4();

    v83 = sub_268B37C24();
    v85 = sub_26892CDB8(v83, v84, &v129);

    *(v81 + 4) = v85;
    OUTLINED_FUNCTION_27();
    _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v75 + 8))(v76, v74);
LABEL_29:
  OUTLINED_FUNCTION_23();
}

void sub_2689633E8()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_4_9();
  v13 = sub_268B35BC4();
  if (v13)
  {
    v14 = v13;
    v15 = *(v13 + 16);
    if (v15)
    {
      v16 = 0;
      v6 = 0;
      v2 = v8 + 8;
      while (1)
      {
        if (v15 == v16)
        {
LABEL_13:

          goto LABEL_14;
        }

        if (v16 >= *(v14 + 16))
        {
          break;
        }

        v17 = OUTLINED_FUNCTION_11_8();
        v18(v17);
        v0 = sub_268963AC0(v12);
        ++v16;
        v19 = OUTLINED_FUNCTION_192();
        v20(v19);
        if (v0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_2802A4F30 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v0, qword_2802CDA10);
  (*(v2 + 16))(v6);
  v21 = sub_268B37A34();
  v22 = sub_268B37EE4();
  if (os_log_type_enabled(v21, v22))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_35_3(&dword_2688BB000, v23, v22, "UsoTaskExtension#validateForMediaPlayerDomain#settingEntity could not get usoIdentifiers for entity");
    OUTLINED_FUNCTION_20_2();
  }

  v24 = OUTLINED_FUNCTION_0_1();
  v25(v24);
LABEL_14:
  OUTLINED_FUNCTION_23();
}

void sub_268963658()
{
  OUTLINED_FUNCTION_26();
  sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v13 = v11 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_4();
  sub_268962000();
  if (v18)
  {

    if (qword_2802A4F30 == -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      (*(v9 + 16))(v13);
      v19 = sub_268B37A34();
      v20 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v20))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_57();
        _os_log_impl(v21, v22, v23, v24, v25, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v9 + 8))(v13, v7);
      goto LABEL_31;
    }

LABEL_34:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    goto LABEL_3;
  }

  sub_2689619F4();
  if (v26 != 5)
  {
    v27 = sub_268932314(v26);
    if (v27 == 0x6F69647561 && v28 == 0xE500000000000000)
    {
    }

    else
    {
      v30 = OUTLINED_FUNCTION_44_1(v27);

      if ((v30 & 1) == 0)
      {
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
        (*(v9 + 16))(v0);
        v31 = sub_268B37A34();
        v32 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_115_0(v32))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v33, v34, v35, v36, v37, 2u);
          OUTLINED_FUNCTION_12();
        }

        (*(v9 + 8))(v0, v7);
        goto LABEL_31;
      }
    }
  }

  OUTLINED_FUNCTION_4_9();
  v38 = sub_268B35BC4();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + 16);
    if (v40)
    {
      v41 = 0;
      v9 = v2 + 16;
      v13 = v2 + 8;
      while (1)
      {
        if (v40 == v41)
        {
LABEL_24:

          goto LABEL_31;
        }

        if (v41 >= *(v39 + 16))
        {
          break;
        }

        v42 = OUTLINED_FUNCTION_11_8();
        v43(v42);
        v7 = sub_268963EFC(v6);
        ++v41;
        v44 = OUTLINED_FUNCTION_192();
        v45(v44);
        if (v7)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
  (*(v9 + 16))(v17);
  v46 = sub_268B37A34();
  v47 = sub_268B37F04();
  if (os_log_type_enabled(v46, v47))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_35_3(&dword_2688BB000, v48, v47, "UsoTaskExtension#validateForSettingsDomain#settingEntity no identifiers found for entity, returning true");
    OUTLINED_FUNCTION_20_2();
  }

  v49 = OUTLINED_FUNCTION_0_1();
  v50(v49);
LABEL_31:
  OUTLINED_FUNCTION_23();
}

BOOL sub_268963AC0(uint64_t a1)
{
  v2 = sub_268B358D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_268B358C4();
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v10;
  v13 = v11;
  v40 = v7;
  v14 = v10 == 0xD000000000000015 && 0x8000000268B583C0 == v11;
  if (v14 || (sub_268B38444() & 1) != 0)
  {

    v15 = sub_268B358B4();
    v17 = sub_2689AD468(v15, v16);
    return v17 != 2;
  }

  v19 = v12 == 0xD000000000000010 && 0x8000000268B58320 == v13;
  if (v19 || (sub_268B38444() & 1) != 0)
  {

    v20 = sub_268B358B4();
    v17 = sub_2689AD474(v20, v21);
    return v17 != 2;
  }

  if (v12 == 0xD000000000000017 && 0x8000000268B58380 == v13)
  {

    goto LABEL_27;
  }

  v23 = sub_268B38444();

  v7 = v40;
  if (v23)
  {
LABEL_27:
    v35 = sub_268B358B4();
    v17 = sub_2689AD480(v35, v36);
    return v17 != 2;
  }

LABEL_20:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (v7[2])(v9, v24, v6);
  (*(v3 + 16))(v5, a1, v2);
  v25 = sub_268B37A34();
  v26 = sub_268B37EE4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v39 = v27;
    v40 = swift_slowAlloc();
    v43 = v40;
    *v27 = 136315138;
    v41 = sub_268B358C4();
    v42 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    v29 = sub_268B37C24();
    v38 = v26;
    v31 = v30;
    (*(v3 + 8))(v5, v2);
    v32 = sub_26892CDB8(v29, v31, &v43);

    v33 = v39;
    *(v39 + 1) = v32;
    _os_log_impl(&dword_2688BB000, v25, v38, "UsoTaskExtension#validateForMediaPlayerDomain#settingEntity unsupported mediaPlayer namespace: %s", v33, 0xCu);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x26D6266E0](v34, -1, -1);
    MEMORY[0x26D6266E0](v33, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  (v7[1])(v9, v6);
  return 0;
}

BOOL sub_268963EFC(uint64_t a1)
{
  v2 = sub_268B358D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_268B358C4();
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v10;
  v13 = v11;
  v38 = v7;
  v14 = v10 == 0xD000000000000011 && 0x8000000268B583A0 == v11;
  if (v14 || (sub_268B38444() & 1) != 0)
  {

    v15 = sub_268B358B4();
    v17 = sub_2689AD48C(v15, v16);
    return v17 != 2;
  }

  v19 = v12 == 0xD000000000000010 && 0x8000000268B580B0 == v13;
  if (v19 || (sub_268B38444() & 1) != 0)
  {

    v20 = sub_268B358B4();
    v17 = sub_2689AD498(v20, v21);
    return v17 != 2;
  }

  if (v12 == 0x72656765746E69 && v13 == 0xE700000000000000)
  {

    return 1;
  }

  v23 = sub_268B38444();

  v7 = v38;
  if (v23)
  {
    return 1;
  }

LABEL_20:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (v7[2])(v9, v24, v6);
  (*(v3 + 16))(v5, a1, v2);
  v25 = sub_268B37A34();
  v26 = sub_268B37EE4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v37 = v27;
    v38 = swift_slowAlloc();
    v41 = v38;
    *v27 = 136315138;
    v39 = sub_268B358C4();
    v40 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    v29 = sub_268B37C24();
    v36 = v26;
    v31 = v30;
    (*(v3 + 8))(v5, v2);
    v32 = sub_26892CDB8(v29, v31, &v41);

    v33 = v37;
    *(v37 + 1) = v32;
    _os_log_impl(&dword_2688BB000, v25, v36, "UsoTaskExtension#validateForSettingsDomain#settingEntity unsupported settings namespace: %s", v33, 0xCu);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x26D6266E0](v34, -1, -1);
    MEMORY[0x26D6266E0](v33, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  (v7[1])(v9, v6);
  return 0;
}

void sub_268964334()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v49 = &v47 - v9;
  v10 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_4_9();
  v17 = sub_268B35BC4();
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v50 = *(v17 + 16);
  if (!v50)
  {

LABEL_16:
    if (qword_2802A4F30 != -1)
    {
LABEL_29:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v1, qword_2802CDA10);
    (*(v3 + 16))(v7);
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v30))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v31, v0, "UsoTaskExtension#validateForMediaDomain#settingEntity could not get usoIdentifiers for entity");
      OUTLINED_FUNCTION_20_2();
    }

    (*(v3 + 8))(v7, v1);
    goto LABEL_27;
  }

  v47 = v3;
  v48 = v1;
  v1 = 0;
  OUTLINED_FUNCTION_258();
  v3 = v18 + v19;
  v0 = v12 + 16;
  v7 = v12 + 8;
  while (1)
  {
    if (v1 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    (*(v12 + 16))(v16, v3 + *(v12 + 72) * v1, v10);
    sub_268B358C4();
    if (!v20)
    {
      v26 = OUTLINED_FUNCTION_25_4();
      v27(v26);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_6_11();
    v22 = v22 && v21 == 0xEF6E6F6974704F77;
    if (v22)
    {
      break;
    }

    v23 = sub_268B38444();

    v24 = OUTLINED_FUNCTION_25_4();
    v25(v24);
    if (v23)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v50 == ++v1)
    {
      v28 = 0;
      goto LABEL_22;
    }
  }

  v32 = OUTLINED_FUNCTION_25_4();
  v33(v32);
LABEL_21:
  v28 = 1;
LABEL_22:

  v35 = v47;
  v34 = v48;
  v36 = v49;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v34, qword_2802CDA10);
  (*(v35 + 16))(v36);
  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 67109120;
    v39[1] = v28;
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v40, v41, v42, v43, v44, 8u);
    OUTLINED_FUNCTION_12();
  }

  v45 = OUTLINED_FUNCTION_16_9();
  v46(v45);
LABEL_27:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689646F4(uint64_t a1)
{
  v1 = sub_268B358B4();
  v3 = sub_2689AD480(v1, v2);
  if (v3 == 2)
  {
    v4 = sub_268B358B4();
    sub_2689BAB40(v4, v5);
    if (v6)
    {
      return 24;
    }

    else
    {
      return 16;
    }
  }

  else if (v3)
  {
    return 21;
  }

  else
  {
    return 22;
  }
}

void sub_268964750()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = sub_268B35CF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v180 = v16 - v15;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64A8, &qword_268B3F278);
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v182 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  v187 = &v172 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_20_0();
  v176 = v22 - v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v178 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  v183 = v27;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v177 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  v185 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18();
  v181 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  v179 = v35;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  v184 = v37;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v38);
  v186 = (&v172 - v39);
  v191 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_20_0();
  v190 = (v43 - v44);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v45);
  v47 = &v172 - v46;
  OUTLINED_FUNCTION_4_9();
  v189 = v0;
  v48 = sub_268B35BC4();
  if (!v48)
  {
    if (qword_2802A4F30 == -1)
    {
LABEL_32:
      OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
      (*(v6 + 16))(v10);
      v69 = v189;

      v70 = sub_268B37A34();
      v71 = sub_268B37EE4();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = v3;
        v73 = OUTLINED_FUNCTION_172_0();
        v74 = OUTLINED_FUNCTION_173_0();
        v196 = v74;
        *v73 = 136315138;
        v198 = v69;
        sub_268B35DB4();

        v75 = sub_268B37C24();
        v77 = sub_26892CDB8(v75, v76, &v196);

        *(v73 + 4) = v77;
        OUTLINED_FUNCTION_57();
        _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        OUTLINED_FUNCTION_20_2();
        v3 = v72;
        OUTLINED_FUNCTION_12();
      }

      (*(v6 + 8))(v10, v4);
      goto LABEL_36;
    }

LABEL_87:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    goto LABEL_32;
  }

  v192 = *(v48 + 16);
  if (!v192)
  {

LABEL_36:
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
    v84 = v3;
    goto LABEL_40;
  }

  v173 = v13;
  v172 = v1;
  v174 = v11;
  v175 = v3;
  v3 = 0;
  v49 = 0x8000000268B58380;
  OUTLINED_FUNCTION_258();
  v10 = v50 + v51;
  v193 = v41 + 16;
  v194 = (v41 + 8);
  v52 = v191;
  v195 = v50;
  do
  {
    if (v3 >= *(v50 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v53 = *(v41 + 72);
    v1 = *(v41 + 16);
    (v1)(v47, v10 + v53 * v3, v52);
    v6 = v52;
    sub_268B358C4();
    if (v54)
    {
      OUTLINED_FUNCTION_28_6();
      v58 = v57 == v56 + 7 && v55 == 0x8000000268B58380;
      if (v58)
      {

        (*v194)(v47, v191);
LABEL_38:

LABEL_39:
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
        v84 = v175;
LABEL_40:
        v85 = 1;
        goto LABEL_41;
      }

      v6 = sub_268B38444();

      v59 = *v194;
      v52 = v191;
      (*v194)(v47, v191);
      if (v6)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v59 = *v194;
      (*v194)(v47, v52);
    }

    ++v3;
    v50 = v195;
  }

  while (v192 != v3);
  v4 = 0;
  while (1)
  {
    if (v4 >= *(v50 + 16))
    {
      __break(1u);
      goto LABEL_87;
    }

    v3 = v190;
    OUTLINED_FUNCTION_176_0();
    v1();
    sub_268B358C4();
    if (!v60)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_28_6();
    if (v62 == v63 && v61 == 0x8000000268B58320)
    {
    }

    else
    {
      v6 = sub_268B38444();

      if ((v6 & 1) == 0)
      {
LABEL_22:
        v59(v190, v191);
        goto LABEL_29;
      }
    }

    v65 = v190;
    v66 = sub_268B358B4();
    v3 = v67;
    if (v66 == 0x6465657073 && v67 == 0xE500000000000000)
    {
      break;
    }

    v6 = OUTLINED_FUNCTION_44_1(v66);

    v59(v65, v191);
    if (v6)
    {
      goto LABEL_44;
    }

LABEL_29:
    ++v4;
    v10 += v53;
    v50 = v195;
    if (v192 == v4)
    {

      v3 = v175;
      goto LABEL_36;
    }
  }

  v59(v65, v191);
LABEL_44:

  if (!sub_268B35DA4())
  {
    goto LABEL_39;
  }

  v6 = sub_268B35FD4();

  if (!v6)
  {
    goto LABEL_39;
  }

  v86 = sub_2689BABA0();
  if ((v87 & 1) == 0)
  {
    v196 = v86;
    goto LABEL_82;
  }

  v88 = v186;
  sub_268B35CE4();
  v1 = *(v173 + 104);
  v89 = v184;
  v90 = v174;
  (v1)(v184, *MEMORY[0x277D5E7A8], v174);
  OUTLINED_FUNCTION_30_4();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
  v95 = v187;
  v96 = *(v188 + 48);
  v97 = OUTLINED_FUNCTION_16_9();
  sub_268965600(v97, v98);
  sub_268965600(v89, v95 + v96);
  OUTLINED_FUNCTION_3_13(v95);
  if (v58)
  {
    OUTLINED_FUNCTION_176_0();
    sub_2688EF38C(v99, v100, v101);
    v102 = OUTLINED_FUNCTION_16_9();
    v103 = v187;
    sub_2688EF38C(v102, v104, &qword_268B3F280);
    OUTLINED_FUNCTION_3_13(v103 + v96);
    v41 = v182;
    v47 = v183;
    v49 = v185;
    if (v58)
    {
      sub_2688EF38C(v103, &qword_2802A64B0, &qword_268B3F280);
      goto LABEL_72;
    }

    goto LABEL_56;
  }

  v195 = v1;
  v105 = v179;
  sub_268965600(v95, v179);
  OUTLINED_FUNCTION_3_13(v95 + v96);
  v49 = v185;
  if (v106)
  {
    OUTLINED_FUNCTION_176_0();
    sub_2688EF38C(v107, v108, v109);
    v110 = OUTLINED_FUNCTION_16_9();
    v103 = v187;
    sub_2688EF38C(v110, v111, &qword_268B3F280);
    (*(v173 + 8))(v105, v90);
    v41 = v182;
    v47 = v183;
    v1 = v195;
LABEL_56:
    sub_2688EF38C(v103, &qword_2802A64A8, &qword_268B3F278);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_9_8();
  v141 = OUTLINED_FUNCTION_24_6();
  v142(v141);
  v143 = sub_268965670();
  v146 = OUTLINED_FUNCTION_36_2(v105, v144, v145, v143);
  v147 = OUTLINED_FUNCTION_18_3(v146);
  v88(v147);
  OUTLINED_FUNCTION_26_4(v89);
  OUTLINED_FUNCTION_26_4(v186);
  (v88)(v105, v174);
  v90 = v174;
  OUTLINED_FUNCTION_26_4(v95);
  v41 = v182;
  v47 = v183;
  v1 = v195;
  if ((v194 & 1) == 0)
  {
LABEL_57:
    v112 = v181;
    sub_268B35CE4();
    (v1)(v49, *MEMORY[0x277D5E7B0], v90);
    OUTLINED_FUNCTION_30_4();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
    v117 = *(v188 + 48);
    sub_268965600(v112, v41);
    sub_268965600(v49, v41 + v117);
    OUTLINED_FUNCTION_3_13(v41);
    if (v58)
    {
      sub_2688EF38C(v49, &qword_2802A64B0, &qword_268B3F280);
      v118 = OUTLINED_FUNCTION_103();
      sub_2688EF38C(v118, v119, &qword_268B3F280);
      OUTLINED_FUNCTION_3_13(v41 + v117);
      if (v58)
      {
        sub_2688EF38C(v41, &qword_2802A64B0, &qword_268B3F280);
        goto LABEL_80;
      }
    }

    else
    {
      v10 = v177;
      sub_268965600(v41, v177);
      OUTLINED_FUNCTION_3_13(v41 + v117);
      if (!v120)
      {
LABEL_79:
        v195 = v6;
        OUTLINED_FUNCTION_9_8();
        v158 = OUTLINED_FUNCTION_24_6();
        v159(v158);
        v160 = sub_268965670();
        v163 = OUTLINED_FUNCTION_36_2(v10, v161, v162, v160);
        v164 = OUTLINED_FUNCTION_18_3(v163);
        (v41)(v164);
        OUTLINED_FUNCTION_26_4(v49);
        OUTLINED_FUNCTION_26_4(v181);
        (v41)(v10, v174);
        v90 = v174;
        OUTLINED_FUNCTION_26_4(v41);
        if (v194)
        {
LABEL_80:
          v148 = 0x4000000000000000;
          goto LABEL_81;
        }

LABEL_66:
        sub_268B35CE4();
        v127 = v178;
        (v1)(v178, *MEMORY[0x277D5E7B8], v90);
        OUTLINED_FUNCTION_30_4();
        __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
        v132 = *(v188 + 48);
        v133 = v172;
        sub_268965600(v47, v172);
        sub_268965600(v127, v133 + v132);
        OUTLINED_FUNCTION_3_13(v133);
        if (v58)
        {
          OUTLINED_FUNCTION_176_0();
          sub_2688EF38C(v134, v135, v136);
          OUTLINED_FUNCTION_176_0();
          sub_2688EF38C(v137, v138, v139);
          OUTLINED_FUNCTION_3_13(v133 + v132);
          v140 = v175;
          if (v58)
          {
            sub_2688EF38C(v133, &qword_2802A64B0, &qword_268B3F280);
LABEL_85:
            v196 = 0x3FE0000000000000;
            v197 = 0;
            LOBYTE(v198) = 0;
            sub_2689473F4();
            sub_268B36644();

            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
            v84 = v140;
            goto LABEL_83;
          }
        }

        else
        {
          v149 = v176;
          sub_268965600(v133, v176);
          OUTLINED_FUNCTION_3_13(v133 + v132);
          if (!v150)
          {
            OUTLINED_FUNCTION_9_8();
            v166 = OUTLINED_FUNCTION_24_6();
            v167(v166);
            v168 = sub_268965670();
            LODWORD(v195) = OUTLINED_FUNCTION_36_2(v149, v169, v170, v168);
            v171 = *(v127 + 8);
            v171(v132, v90);
            OUTLINED_FUNCTION_26_4(v127);
            OUTLINED_FUNCTION_26_4(v47);
            v171(v149, v90);
            OUTLINED_FUNCTION_26_4(v133);
            v140 = v175;
            if (v195)
            {
              goto LABEL_85;
            }

LABEL_77:
            v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
            __swift_storeEnumTagSinglePayload(v140, 1, 1, v157);

            goto LABEL_42;
          }

          OUTLINED_FUNCTION_176_0();
          sub_2688EF38C(v151, v152, v153);
          OUTLINED_FUNCTION_176_0();
          sub_2688EF38C(v154, v155, v156);
          (*(v173 + 8))(v149, v90);
          v140 = v175;
        }

        sub_2688EF38C(v133, &qword_2802A64A8, &qword_268B3F278);
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_176_0();
      sub_2688EF38C(v121, v122, v123);
      OUTLINED_FUNCTION_176_0();
      sub_2688EF38C(v124, v125, v126);
      (*(v173 + 8))(v10, v90);
    }

    sub_2688EF38C(v41, &qword_2802A64A8, &qword_268B3F278);
    goto LABEL_66;
  }

LABEL_72:
  v148 = 0x3FF0000000000000;
LABEL_81:
  v196 = v148;
LABEL_82:
  v197 = 0;
  LOBYTE(v198) = 0;
  sub_2689473F4();
  v165 = v175;
  sub_268B36644();

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v84 = v165;
LABEL_83:
  v85 = 0;
LABEL_41:
  __swift_storeEnumTagSinglePayload(v84, v85, 1, v83);
LABEL_42:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268965600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_268965670()
{
  result = qword_2802A64B8;
  if (!qword_2802A64B8)
  {
    sub_268B35CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A64B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1)
{

  return sub_2688EF38C(a1, v1, v2);
}

void OUTLINED_FUNCTION_35_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_268B37BB4();
}

uint64_t OUTLINED_FUNCTION_37_4(uint64_t a1)
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1)
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1)
{

  return sub_268B38444();
}

id sub_26896587C(uint64_t a1)
{
  sub_2689658F4(a1);
  v3 = type metadata accessor for MediaPlayerIntent(0);
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + *(v3 + 48));
  if (v6 != 26)
  {
    v4 = sub_268942D54(v6);
  }

  v7 = sub_268A7528C(v4, v5);

  return [v1 setMediaType_];
}

uint64_t sub_2689658F4(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v8);
  sub_268965BF8();
  v9 = sub_268B37854();
  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v22);
      sub_26890C900(v22, v21);
      sub_268AC88F0(v21);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v23;
    v13 = off_28795BC38;
    v14 = type metadata accessor for AddSpeakerIntent();
    v13(v12, v14, &off_28795BC28);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return sub_2688C2F6C(v8);
}

unint64_t sub_268965BF8()
{
  result = qword_2802A58E0;
  if (!qword_2802A58E0)
  {
    type metadata accessor for MediaPlayerIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A58E0);
  }

  return result;
}

id SetRepeatStateIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetRepeatStateIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v27 = sub_268B36C44();
  sub_268B37204();
  v26 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v34);
  sub_268AD33CC(v33);
  sub_268B36754();
  v25 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v31 = v0;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v1;
  v11 = type metadata accessor for AnalyticsServiceLogger();
  v29[4] = &off_28795F5E0;
  v29[3] = v11;
  v29[0] = v10;
  v28[4] = &off_287960608;
  v28[3] = v2;
  v28[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v16;
  v24 = *v21;
  v12[5] = v11;
  v12[6] = &off_28795F5E0;
  v12[2] = v23;
  v12[21] = v2;
  v12[22] = &off_287960608;
  v12[18] = v24;
  sub_2688E6514(v33, (v12 + 7));
  v12[12] = v25;
  sub_2688E6514(&v30, (v12 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  sub_268B34C64();
  sub_2689688AC(v27, v26, &v35, v12, v34);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268966070()
{
  OUTLINED_FUNCTION_26();
  v24 = v1;
  v25 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  OUTLINED_FUNCTION_15_7();
  v18(v13, v15, v6);
  v19 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v20 = v19 + v10;
  v21 = (v19 + v10) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleRepeatMedia";
  *(v22 + 24) = 17;
  *(v22 + 32) = 2;
  (*(v8 + 32))(v22 + v19, v13, v6);
  *(v22 + v20) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_2689662C8(v24, v25, sub_268958A64, v22);

  (*(v8 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

void sub_2689662C8(void *a1, char *a2, void (*a3)(char **), uint64_t a4)
{
  v79 = a2;
  v7 = sub_268B37084();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x28223BE20](v7);
  v80 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v78 = v73 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v73 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v73 - v19;
  v21 = swift_allocObject();
  v83 = a3;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268958D98;
  *(v22 + 24) = v21;

  v23 = sub_268B18100(a1);
  if (!v23)
  {
    goto LABEL_8;
  }

  v24 = v23;
  if (!sub_2688EFD0C())
  {

LABEL_8:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v18, v32, v9);
    v33 = sub_268B37A34();
    v34 = sub_268B37EE4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "No devices found in SetRepeatStateIntent, returning failure", v35, 2u);
      MEMORY[0x26D6266E0](v35, -1, -1);
    }

    (*(v10 + 8))(v18, v9);
    v36 = sub_268B36EA4();
    v37 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
    v38 = v36;
    v39 = SetRepeatStateIntentResponse.init(code:userActivity:)(5, v36);
    v85 = v39;
    v83(&v85);

    goto LABEL_20;
  }

  v77 = v21;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v26 = *(v10 + 16);
  v74 = v25;
  v75 = v26;
  v73[1] = v10 + 16;
  (v26)(v20);
  v27 = a1;
  v28 = sub_268B37A34();
  v29 = sub_268B37EC4();
  v30 = os_log_type_enabled(v28, v29);
  v76 = a4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    *v31 = 134349056;
    *(v31 + 4) = [v27 repeatState];

    _os_log_impl(&dword_2688BB000, v28, v29, "Handling repeatState with value: %{public}ld", v31, 0xCu);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  else
  {

    v28 = v27;
  }

  v40 = *(v10 + 8);
  v40(v20, v9);
  v41 = [v27 repeatState]- 1;
  if (v41 > 2)
  {

    v75(v13, v74, v9);
    v49 = sub_268B37A34();
    v50 = sub_268B37EE4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v49, v50, "Uknown repeat mode", v51, 2u);
      MEMORY[0x26D6266E0](v51, -1, -1);
    }

    v40(v13, v9);
    v52 = sub_268B36EA4();
    v53 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
    v54 = v52;
    v55 = SetRepeatStateIntentResponse.init(code:userActivity:)(5, v52);
    v85 = v55;
    v83(&v85);

    goto LABEL_20;
  }

  v73[0] = v40;
  v42 = v80;
  v43 = v81;
  (*(v81 + 104))(v80, **(&unk_279C41CC0 + v41), v82);
  v44 = v79;
  __swift_project_boxed_opaque_existential_1((v79 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_analyticsService), *(v79 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_analyticsService + 24));
  sub_268920C54(v24);
  sub_268949478(0x6165706552746573, 0xEE00657461745374, v45, v24);

  sub_268921344();
  if (*(v46 + 16))
  {
    __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_playbackController), *(v44 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_playbackController + 24));
    sub_26895761C();

    v47 = swift_allocObject();
    v47[2] = sub_2688E19F8;
    v47[3] = v22;
    v47[4] = v44;
    v48 = v44;
    sub_268B36CC4();

    (*(v43 + 8))(v42, v82);

LABEL_20:

    return;
  }

  v56 = v78;
  v75(v78, v74, v9);
  v57 = v27;
  v58 = sub_268B37A34();
  v59 = sub_268B37EE4();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v85 = v79;
    *v60 = 136315138;
    v84 = sub_268B18100(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
    v61 = sub_268B38094();
    v63 = v62;

    v64 = sub_26892CDB8(v61, v63, &v85);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_2688BB000, v58, v59, "Unable to get route ids for the intent devices: %s", v60, 0xCu);
    v65 = v79;
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    MEMORY[0x26D6266E0](v65, -1, -1);
    MEMORY[0x26D6266E0](v60, -1, -1);
  }

  (v73[0])(v56, v9);
  v67 = v81;
  v66 = v82;
  v68 = v80;
  v69 = sub_268B36EA4();
  v70 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
  v71 = v69;
  v72 = SetRepeatStateIntentResponse.init(code:userActivity:)(5, v69);
  v85 = v72;
  v83(&v85);

  (*(v67 + 8))(v68, v66);
}

void sub_268966E30(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v36 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v31 = *(v10 + 16);
  v32 = v15;
  v31(v14);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "Resolving devices for set repeat state", v19, 2u);
    v20 = v19;
    a1 = v18;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = *(v10 + 8);
  v21(v14, v9);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v25 = v33;
    (v31)(v33, v32, v9);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Whole House Audio requests are unsupported on this platform", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    v21(v25, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetRepeatStateDevicesResolutionResult();
    *(v29 + 32) = sub_268B17B04(2);
    v30 = sub_268B37CE4();
    v24 = v36;
    (v36)[2](v36, v30);
  }

  else
  {
    v23 = v34;
    v22 = v35;
    (*(v34 + 104))(v8, *MEMORY[0x277D5F650], v35);
    [a1 mediaType];
    v24 = v36;
    _Block_copy(v36);
    sub_268905C1C();
    (*(v23 + 8))(v8, v22);
  }

  _Block_release(v24);
  _Block_release(v24);
}

void sub_268967288()
{
  OUTLINED_FUNCTION_26();
  v34 = v0;
  v35 = v1;
  v36 = v3;
  v37 = v2;
  v33 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v32 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v31 = *(v12 + 16);
  v31(v18, v19, v10);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "Resolving devices for set repeat state", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v12 + 8);
  v23(v18, v10);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState), *(v34 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v25 = v32;
    v31(v32, v19, v10);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_14();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Whole House Audio requests are unsupported on this platform", v28, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v23(v25, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_12_9(v29, xmmword_268B3BBA0);
    v29[2].n128_u64[0] = sub_268B17B04(2);
    v35(v29);
  }

  else
  {
    v24 = v33;
    (*(v5 + 104))(v9, *MEMORY[0x277D5F650], v33);
    [v37 mediaType];

    sub_2689064DC();
    (*(v5 + 8))(v9, v24);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268967630()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v20 = __swift_project_value_buffer(v8, qword_2802CDA10);
      (*(v10 + 16))(v0, v20, v8);

      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_172_0();
        v23 = OUTLINED_FUNCTION_20_6();
        v64 = v23;
        *v19 = 136315138;
        v24 = type metadata accessor for Device();
        v25 = MEMORY[0x26D6256F0](v7, v24);
        OUTLINED_FUNCTION_30_3(v25, v26);
        v62 = v3;
        OUTLINED_FUNCTION_16_7();
        *(v19 + 4) = v10;
        _os_log_impl(&dword_2688BB000, v21, v22, "SetRepeatStateIntentHandler#resolveDevices Disambiguating between devices: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v3[1](v0, v8);
        v3 = v62;
      }

      else
      {

        (*(v10 + 8))(v0, v8);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v47 = swift_allocObject();
      OUTLINED_FUNCTION_12_9(v47, xmmword_268B3BBA0);
      v48 = sub_268B2CCFC(v7);
    }

    else
    {
      v62 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v34 = __swift_project_value_buffer(v8, qword_2802CDA10);
      v60 = *(v10 + 16);
      v61 = v34;
      v60(v19);
      v35 = sub_268B37A34();
      v36 = sub_268B37EE4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_172_0();
        v59 = v10;
        v38 = v37;
        v58 = swift_slowAlloc();
        v64 = v58;
        *v38 = 136315138;
        v63 = v7 & 1;
        sub_26890C84C();
        v39 = sub_268B384A4();
        v41 = sub_26892CDB8(v39, v40, &v64);

        *(v38 + 4) = v41;
        _os_log_impl(&dword_2688BB000, v35, v36, "SetRepeatStateIntentHandler#resolveDevices Error resolving devices: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        OUTLINED_FUNCTION_12();
        v10 = v59;
        OUTLINED_FUNCTION_12();
      }

      v42 = *(v10 + 8);
      v42(v19, v8);
      v3 = v62;
      if ((v7 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_12_9(v54, xmmword_268B3BBA0);
        v54[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v60)(v14, v61, v8);
      v43 = sub_268B37A34();
      v44 = sub_268B37EE4();
      if (os_log_type_enabled(v43, v44))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v45, v46, "SetRepeatStateIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v42(v14, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v47 = swift_allocObject();
      OUTLINED_FUNCTION_12_9(v47, xmmword_268B3BBA0);
      v48 = sub_268B17B04(1);
    }

    v47[2].n128_u64[0] = v48;
LABEL_32:
    v55 = sub_268B37CE4();
    OUTLINED_FUNCTION_15_7();
    v56(v3, v55);

    _Block_release(v3);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v27 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v10 + 16))(v1, v27, v8);

  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_172_0();
    v30 = OUTLINED_FUNCTION_20_6();
    v64 = v30;
    *v19 = 136315138;
    v31 = type metadata accessor for Device();
    v32 = MEMORY[0x26D6256F0](v7, v31);
    OUTLINED_FUNCTION_30_3(v32, v33);
    v62 = v3;
    OUTLINED_FUNCTION_16_7();
    *(v19 + 4) = v10;
    _os_log_impl(&dword_2688BB000, v28, v29, "SetRepeatStateIntentHandler#resolveDevices Success resolving devices: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v3[1](v1, v8);
    v3 = v62;
  }

  else
  {

    (*(v10 + 8))(v1, v8);
  }

  v49 = sub_2688EFD0C();
  if (!v49)
  {
LABEL_30:
    type metadata accessor for SetRepeatStateDevicesResolutionResult();
    goto LABEL_32;
  }

  v50 = v49;
  v64 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v50 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetRepeatStateDevicesResolutionResult();
    v51 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x26D625BD0](v51, v7);
      }

      else
      {
        v52 = *(v7 + 8 * v51 + 32);
      }

      v53 = v52;
      ++v51;
      sub_268B2CC98(v52);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v50 != v51);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_268967D34()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v60 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v9, qword_2802CDA10);
      OUTLINED_FUNCTION_15_7();
      v20(v0);

      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      sub_268958D4C(v8, 1u);
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_172_0();
        v23 = OUTLINED_FUNCTION_20_6();
        v62 = v23;
        *v16 = 136315138;
        v24 = type metadata accessor for Device();
        v25 = MEMORY[0x26D6256F0](v8, v24);
        OUTLINED_FUNCTION_30_3(v25, v26);
        v59 = v9;
        OUTLINED_FUNCTION_16_7();
        *(v16 + 4) = v3;
        _os_log_impl(&dword_2688BB000, v21, v22, "SetRepeatStateIntentHandler#resolveDevices Disambiguating between devices: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v11 + 8))(v0, v59);
      }

      else
      {

        (*(v11 + 8))(v0, v9);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_12_9(v48, xmmword_268B3BBA0);
      v49 = sub_268B2CCFC(v8);
    }

    else
    {
      v59 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v35 = __swift_project_value_buffer(v9, qword_2802CDA10);
      v57 = *(v11 + 16);
      v58 = v35;
      v57(v19);
      v36 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_172_0();
        v56 = v11;
        v39 = v38;
        v55 = swift_slowAlloc();
        v62 = v55;
        *v39 = 136315138;
        v61 = v8 & 1;
        sub_26890C84C();
        v40 = sub_268B384A4();
        v42 = sub_26892CDB8(v40, v41, &v62);

        *(v39 + 4) = v42;
        _os_log_impl(&dword_2688BB000, v36, v37, "SetRepeatStateIntentHandler#resolveDevices Error resolving devices: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        OUTLINED_FUNCTION_12();
        v11 = v56;
        OUTLINED_FUNCTION_12();
      }

      v43 = *(v11 + 8);
      v43(v19, v9);
      if (v8)
      {
        (v57)(v1, v58, v9);
        v44 = sub_268B37A34();
        v45 = sub_268B37EE4();
        if (os_log_type_enabled(v44, v45))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v46, v47, "SetRepeatStateIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v43(v1, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v48 = swift_allocObject();
        OUTLINED_FUNCTION_12_9(v48, xmmword_268B3BBA0);
        v49 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v48 = swift_allocObject();
        OUTLINED_FUNCTION_12_9(v48, xmmword_268B3BBA0);
        v49 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v48[2].n128_u64[0] = v49;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v9, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v27(v16);

  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  sub_268958D4C(v8, 0);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_172_0();
    v31 = swift_slowAlloc();
    v62 = v31;
    *v30 = 136315138;
    v32 = type metadata accessor for Device();
    v33 = MEMORY[0x26D6256F0](v8, v32);
    OUTLINED_FUNCTION_30_3(v33, v34);
    v59 = v9;
    OUTLINED_FUNCTION_16_7();
    *(v30 + 4) = v3;
    _os_log_impl(&dword_2688BB000, v28, v29, "SetRepeatStateIntentHandler#resolveDevices Success resolving devices: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v11 + 8))(v16, v59);
  }

  else
  {

    (*(v11 + 8))(v16, v9);
  }

  v50 = sub_2688EFD0C();
  v48 = MEMORY[0x277D84F90];
  if (!v50)
  {
    goto LABEL_32;
  }

  v51 = v50;
  v62 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v51 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetRepeatStateDevicesResolutionResult();
    v52 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x26D625BD0](v52, v8);
      }

      else
      {
        v53 = *(v8 + 8 * v52 + 32);
      }

      v54 = v53;
      ++v52;
      sub_268B2CC98(v53);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v51 != v52);
    v48 = v62;
LABEL_32:
    v60(v48);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_268968420(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetRepeatStateDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_26896848C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
  v5 = SetRepeatStateIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_2689684F8(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
  v4 = SetRepeatStateIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_268968584(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268968610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &a9 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &a9 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  sub_26893B66C(v24, &a9 - v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *(v27 + 32);
    v38(v34, v37, v25);
    sub_268B36EC4();
    v39 = *(v27 + 8);
    v39(v34, v25);
    v38(v20, v32, v25);
    if ((*(v27 + 88))(v20, v25) != *MEMORY[0x277D5F6B0])
    {
      v39(v20, v25);
    }
  }

  OUTLINED_FUNCTION_23();
}

id SetRepeatStateIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetRepeatStateIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2689688AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v26[3] = type metadata accessor for AnalyticsServiceImpl();
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_26892D53C(a2, v25, *v13, v22, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v16);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_268968B3C(a1, v15, v25, *v18, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v20;
}

uint64_t sub_268968B04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_268968B3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v27[3] = sub_268B36C54();
  v27[4] = MEMORY[0x277D5F680];
  v27[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  v11 = type metadata accessor for SetRepeatStateIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v25[3] = v10;
  v25[4] = &off_2879539D0;
  v25[0] = v17;
  sub_26890C900(v27, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceSelector] = a2;
  sub_26890C900(v25, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_analyticsService]);
  sub_26890C900(a3, v24);
  sub_26890C900(a5, v23);
  type metadata accessor for AceServiceHelper();
  v18 = swift_allocObject();
  sub_2688E6514(v24, v18 + 16);
  sub_2688E6514(v23, v18 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_aceServiceHelper] = v18;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState]);
  v22.receiver = v12;
  v22.super_class = v11;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v19;
}

uint64_t sub_268968D64()
{
  v1 = sub_268B37A24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_268968ED8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268968F10()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_12_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SetRepeatStateDevicesResolutionResult();
}

id sub_268968F84()
{
  result = [objc_allocWithZone(type metadata accessor for ResumeMediaIntentHandler(0)) init];
  qword_2802CD908 = result;
  return result;
}

uint64_t sub_268968FB8()
{
  v7 = sub_268B37F44();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37F34();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268B37B14();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v8 = MEMORY[0x277D84F90];
  sub_26896ACD0(&unk_2802A5890, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802CD910 = result;
  return result;
}

uint64_t sub_26896920C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v75 = a2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v67 = v3;
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v66 = v5 - v4;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v71 = v7;
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v73 = v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v66 - v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v69 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v70 = &v66 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v25 = *(v16 + 16);
  v25(v23, v24, v14);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "ResumeMediaFlowStrategy#actionForInput called", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v16 + 8);
  v29(v23, v14);
  v30 = v74;
  sub_268B35414();
  sub_26893BA8C(v13);
  v31 = type metadata accessor for MediaPlayerIntent(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v31);
  sub_2688C2E64(v13);
  if (EnumTagSinglePayload == 1)
  {
    v33 = v69;
    v25(v69, v24, v14);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "ResumeMediaFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v29(v33, v14);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_4_10(v37 + 25, v38, v39, v40);
    return sub_268B34ED4();
  }

  else
  {
    v69 = (v16 + 8);
    v42 = v73;
    sub_268B35414();
    v44 = v71;
    v43 = v72;
    v45 = (*(v71 + 88))(v42, v72);
    if (v45 == *MEMORY[0x277D5C128] || v45 == *MEMORY[0x277D5C150] || v45 == *MEMORY[0x277D5C148] || v45 == *MEMORY[0x277D5C160])
    {
      (*(v44 + 8))(v42, v43);
      return sub_268B34EC4();
    }

    else
    {
      v25(v70, v24, v14);
      v49 = v66;
      v50 = v67;
      v51 = v68;
      (*(v67 + 16))(v66, v30, v68);
      v52 = sub_268B37A34();
      v53 = sub_268B37EE4();
      if (os_log_type_enabled(v52, v53))
      {
        v55 = v49;
        v56 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v77 = v74;
        *v56 = 136315138;
        sub_268B35414();
        v57 = sub_268B37C24();
        v59 = v58;
        (*(v50 + 8))(v55, v51);
        v60 = sub_26892CDB8(v57, v59, &v77);
        v43 = v72;

        *(v56 + 4) = v60;
        _os_log_impl(&dword_2688BB000, v52, v53, "ResumeMediaFlowStrategy#actionForInput received unsupported parse type %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        v44 = v71;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v50 + 8))(v49, v51);
      }

      v29(v70, v14);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_1_16();
      OUTLINED_FUNCTION_4_10(v62 | v61, v63, v64, v65);
      sub_268B34ED4();
      return (*(v44 + 8))(v73, v43);
    }
  }
}

uint64_t sub_2689698A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v35 = a3;
  v36 = a2;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  v41 = v6;
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v39 = v11;
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v21 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4D68 != -1)
  {
    swift_once();
  }

  v34 = qword_2802CD910;
  (*(v17 + 16))(&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v17 + 32))(v25 + v22, v21, v15);
  v26 = (v25 + v23);
  v27 = v36;
  v29 = v37;
  v28 = v38;
  *v26 = v35;
  v26[1] = v28;
  *(v25 + v24) = v27;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_26896ABC4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_1;
  v30 = _Block_copy(aBlock);
  v31 = v27;

  sub_268B37AE4();
  v43 = MEMORY[0x277D84F90];
  sub_26896ACD0(&unk_2802A7010, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v32 = v42;
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v30);
  _Block_release(v30);
  (*(v41 + 8))(v9, v32);
  (*(v39 + 8))(v14, v40);
}

void sub_268969C68(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, void *a5)
{
  v63 = a5;
  v69 = a3;
  v70 = a4;
  v68 = a2;
  v65 = a1;
  v67 = sub_268B35494();
  v71 = *(v67 - 8);
  v5 = MEMORY[0x28223BE20](v67);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - v10;
  v64 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v64);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v59 = *(v15 + 16);
  v60 = v20;
  v59(v19);
  v21 = sub_268B37A34();
  v22 = sub_268B37F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v8;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "ResumeMediaFlowStrategy#makeIntentFromParse called", v27, 2u);
    v28 = v27;
    v8 = v26;
    v15 = v25;
    v14 = v24;
    v13 = v23;
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v61 = *(v15 + 8);
  v61(v19, v14);
  v29 = *(v71 + 16);
  v30 = v65;
  v31 = v67;
  v29(v8, v65, v67);
  sub_26893BC0C(v8, 1, v32, v33, v34, v35, v36, v37, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  if (__swift_getEnumTagSinglePayload(v11, 1, v64) == 1)
  {
    sub_2688C2E64(v11);
    (v59)(v66, v60, v14);
    v38 = v62;
    v29(v62, v30, v31);
    v39 = v31;
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = v70;
      *v42 = 136315138;
      v29(v8, v38, v39);
      v43 = sub_268B37C24();
      v45 = v44;
      (*(v71 + 8))(v38, v39);
      v46 = sub_26892CDB8(v43, v45, &v72);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2688BB000, v40, v41, "ResumeMediaFlowStrategy#makeIntentFromParse received unexpected parse: %s", v42, 0xCu);
      v47 = v70;
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x26D6266E0](v47, -1, -1);
      MEMORY[0x26D6266E0](v42, -1, -1);
    }

    else
    {

      (*(v71 + 8))(v38, v31);
    }

    v61(v66, v14);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000032, 0x8000000268B56D00, 0x654D656D75736552, 0xEB00000000616964, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v49 = swift_allocError();
    *v50 = 45;
    v68(v49, 1);
  }

  else
  {
    sub_2688C0464(v11, v13);
    if (v70)
    {
      v48 = v70;
    }

    else
    {
      v48 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
    }

    v51 = v70;
    sub_2689A8C9C(v13);
    v52 = v63;
    v53 = v63[5];
    v54 = v63[6];
    __swift_project_boxed_opaque_existential_1(v63 + 2, v53);
    v55 = v13;
    v56 = swift_allocObject();
    v57 = v69;
    v56[2] = v68;
    v56[3] = v57;
    v56[4] = v48;
    v58 = v48;

    sub_268AD35F4(v58, &off_287953B28, (v52 + 7), sub_26896ACC4, v56, v53, v54);

    sub_2688C2F6C(v55);
  }
}

uint64_t sub_26896A308(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "ResumeMediaFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_26896A500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_26896A5DC()
{
  if (qword_2802A4D60 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD908;

  return v1;
}

uint64_t sub_26896A638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_26896A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_26896A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896AA5C(uint64_t a1, uint64_t a2)
{
  result = sub_26896ACD0(&qword_2802A64F0, a2, type metadata accessor for ResumeMediaFlowStrategy, &unk_268B3F390);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26896AAFC()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_26896ABC4()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = *(v5 + 8);

  sub_268969C68(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26896AC84()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26896ACD0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(a1, a4 | 0x8000000000000000, a2, a3, 0xD000000000000014, v4 | 0x8000000000000000);
}

id sub_26896AD58()
{
  if (qword_2802A4ED8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9B8;
  qword_2802CD918 = qword_2802CD9B8;

  return v1;
}

void sub_26896ADBC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v38 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v37 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v39 = v3;
  v40 = v10;
  v18 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v33 = *(v13 + 16);
  v34 = v18;
  v33(v0);
  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v21);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v19, v20, "SetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse called");
    OUTLINED_FUNCTION_12();
  }

  v22 = *(v13 + 8);
  v22(v0, v11);
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v35 = v6;

  v36 = v8;

  if (sub_268B34CB4())
  {
    v23 = [objc_allocWithZone(MEMORY[0x277D47818]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6510, &unk_268B3F610);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_268B3BBC0;
    v25 = sub_268B37BF4();
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    sub_268A823BC(v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_268B3BBA0;
    *(v27 + 32) = v23;
    v28 = v23;
    v29 = v36;
    sub_26896B16C(v27, 0, v35, v1, v36, v40, v38, v39);
  }

  else
  {
    (v33)(v37, v34, v11);
    v30 = sub_268B37A34();
    v31 = sub_268B37ED4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v32);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v30, v31, "VolumeControlsViewProvider#makeAceViewsForHandle Not macOS, skip rendering volume snippet");
      OUTLINED_FUNCTION_12();
    }

    v22(v37, v11);
    v29 = v36;
    sub_26896B16C(MEMORY[0x277D84F90], 0, v35, v1, v36, v40, v38, v39);
  }

  OUTLINED_FUNCTION_23();
}

void sub_26896B16C(uint64_t a1, char a2, char *a3, void *a4, char *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v88 = a6;
  v89 = a8;
  v87 = a7;
  v90 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v82 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v86 = &v82 - v19;
  v20 = sub_268B34E24();
  v21 = *(v20 - 8);
  v84 = v20;
  v85 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    a1 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v28 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  v29 = *&a3[v28];
  if (v29 == 101)
  {
    v30 = swift_allocObject();
    v41 = v89;
    v42 = v90;
    v30[2] = a4;
    v30[3] = v42;
    v43 = v87;
    v44 = v88;
    v30[4] = a3;
    v30[5] = v44;
    v30[6] = v43;
    v30[7] = v41;
    v30[8] = a1;
    v35 = "HandleIntentStrategy";
    v36 = a4[5];
    v37 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v36);

    v45 = v42;
    v46 = a3;

    v40 = sub_26896F630;
    goto LABEL_8;
  }

  if (v29 == 100)
  {
    v30 = swift_allocObject();
    v31 = v89;
    v32 = v90;
    v30[2] = a4;
    v30[3] = v32;
    v33 = v87;
    v34 = v88;
    v30[4] = a3;
    v30[5] = v34;
    v30[6] = v33;
    v30[7] = v31;
    v30[8] = a1;
    v35 = "VolumeControls#AlreadyAtMinimum";
    v36 = a4[5];
    v37 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v36);

    v38 = v32;
    v39 = a3;

    v40 = sub_26896F6A8;
LABEL_8:
    sub_2689CE88C(0xD00000000000001FLL, v35 | 0x8000000000000000, v40, v30, v36, v37);

    return;
  }

  v47 = [a3 volumeLevel];
  if (v47)
  {
    v27 = v90;
    v23 = v47;
    v18 = sub_2689B8400();
    v86 = v23;
    [v23 doubleValue];
    v49 = round(v48);
    if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v49 > -9.22337204e18)
    {
      if (v49 < 9.22337204e18)
      {
        if (v18 && (v50 = [v18 context]) != 0)
        {
          v51 = v50;
          v52 = [v50 nowPlayingState] == 1;

          LODWORD(v84) = v52 << 8;
        }

        else
        {
          LODWORD(v84) = 0;
        }

        v85 = v49;
        v53 = [v90 volumeLevel];
        if (v53)
        {
          v54 = v53;
          v55 = [v53 volumeSettingState] == 5;

          v56 = v55 << 16;
        }

        else
        {
          v56 = 0;
        }

        v65 = [v90 volumeLevel];
        v66 = v65;
        if (v65)
        {
          v67 = [v65 volumeSettingState] == 1;

          LODWORD(v66) = v67 << 24;
        }

        v68 = swift_allocObject();
        v70 = v89;
        v69 = v90;
        v68[2] = a4;
        v68[3] = v69;
        v71 = v87;
        v72 = v88;
        v68[4] = a3;
        v68[5] = v72;
        v68[6] = v71;
        v68[7] = v70;
        v68[8] = a1;

        v73 = v69;
        v74 = a3;

        sub_268A32664(v85, v56 | v84 | v66, 1, sub_26896F618, v68);

        return;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_2802A4F30 != -1)
  {
LABEL_36:
    swift_once();
  }

  v57 = __swift_project_value_buffer(v24, qword_2802CDA10);
  (*(v25 + 16))(v27, v57, v24);
  v58 = sub_268B37A34();
  v59 = sub_268B37EE4();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v83 = v58;
    v61 = v60;
    *v60 = 0;
    _os_log_impl(&dword_2688BB000, v83, v59, "SetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse Did not receive volume level from response", v60, 2u);
    v62 = v61;
    v58 = v83;
    MEMORY[0x26D6266E0](v62, -1, -1);
  }

  (*(v25 + 8))(v27, v24);
  v63 = sub_268B36E84();
  if (!v64)
  {
    sub_268947F08();
  }

  v83 = v63;
  v75 = v84;
  __swift_project_boxed_opaque_existential_1(a4 + 12, a4[15]);
  (*(v85 + 104))(v23, *MEMORY[0x277D5BC00], v75);
  v76 = sub_268B350F4();
  v77 = v86;
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v76);
  v78 = *MEMORY[0x277D5B908];
  v79 = sub_268B34B94();
  (*(*(v79 - 8) + 104))(v14, v78, v79);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v79);
  sub_2688F1FA4(v77, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v76) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(*(v76 - 8) + 8))(v18, v76);
  }

  sub_2688E2B50();

  sub_2688C058C(v14, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v86, &unk_2802A57B0, &unk_268B3CE00);
  (*(v85 + 8))(v23, v75);
  sub_2688C2ECC();
  v80 = swift_allocError();
  *v81 = 103;
  v91[0] = v80;
  v92 = 1;
  v87(v91);
  sub_2688C058C(v91, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_26896BA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21, const char *a22, char a23)
{
  OUTLINED_FUNCTION_26();
  v99 = v24;
  v117 = v26;
  v118 = v25;
  v111 = v27;
  v115 = v29;
  v116 = v28;
  v31 = v30;
  v108 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_74();
  v114 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_78();
  v112 = v39;
  OUTLINED_FUNCTION_9();
  v113 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v110 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  v109 = v43 - v42;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_78();
  v103 = v46;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v47);
  v49 = (&v99 - v48);
  v50 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_20_0();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v58 = __swift_project_value_buffer(v50, qword_2802CDA10);
  v59 = *(v52 + 16);
  v101 = v58;
  v100 = v59;
  (v59)(v23);
  v60 = sub_268B37A34();
  v61 = sub_268B37ED4();
  if (os_log_type_enabled(v60, v61))
  {
    v104 = v56;
    v62 = OUTLINED_FUNCTION_14();
    *v62 = 0;
    v56 = v104;
    _os_log_impl(&dword_2688BB000, v60, v61, a21, v62, 2u);
    OUTLINED_FUNCTION_12();
  }

  v65 = *(v52 + 8);
  v63 = v52 + 8;
  v64 = v65;
  v65(v23, v50);
  sub_2688F1FA4(v108, v49, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = *v49;
    v100(v56, v101, v50);
    v67 = v66;
    v68 = sub_268B37A34();
    v69 = sub_268B37EE4();

    if (os_log_type_enabled(v68, v69))
    {
      v108 = a22;
      v70 = swift_slowAlloc();
      v104 = v56;
      v71 = v70;
      v72 = swift_slowAlloc();
      v119 = v66;
      v120[0] = v72;
      *v71 = 136446210;
      v73 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
      v74 = sub_268B37C24();
      v107 = v63;
      v76 = sub_26892CDB8(v74, v75, v120);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_2688BB000, v68, v69, v108, v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v64(v104, v50);
    }

    else
    {

      v64(v56, v50);
    }

    sub_268B36E84();
    if (!v81)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    OUTLINED_FUNCTION_22_5();
    (*(v110 + 104))(v109, *MEMORY[0x277D5BC00], v113);
    v83 = sub_268B350F4();
    v84 = v112;
    __swift_storeEnumTagSinglePayload(v112, 1, 1, v83);
    v85 = *MEMORY[0x277D5B8E0];
    v86 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    (*(v87 + 104))(v114, v85, v86);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v86);
    v91 = v106;
    sub_2688F1FA4(v84, v106, &unk_2802A57B0, &unk_268B3CE00);
    v92 = OUTLINED_FUNCTION_17_8();
    if (__swift_getEnumTagSinglePayload(v92, v93, v83) == 1)
    {
      sub_2688C058C(v91, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      OUTLINED_FUNCTION_20_7();
      (*(v94 + 8))(v91, v83);
    }

    v95 = v109;
    v96 = v114;
    sub_2688E2B50();

    sub_2688C058C(v96, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v112, &unk_2802A57B0, &unk_268B3CE00);
    (*(v110 + 8))(v95, v113);
    OUTLINED_FUNCTION_22_5();
    sub_268948308(MEMORY[0x277D84F90]);
    v120[0] = v66;
    v121 = 1;
    v97 = v66;
    v111(v120);

    sub_2688C058C(v120, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v77 = v103;
    sub_2689186C8(v49, v103);
    __swift_project_boxed_opaque_existential_1((v116 + 136), *(v116 + 160));
    v78 = sub_268B36FA4();
    v79 = v105;
    sub_2688F1FA4(v77, v105, &unk_2802A56E0, &unk_268B3CDF0);
    v80 = *(v79 + *(v102 + 48));
    if (v78)
    {
      sub_26896C360();
    }

    else
    {
      sub_26896CEBC(v79, v80, v118, v31, v115, v99, a23 & 1, v111, v117, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
    }

    sub_2688C058C(v77, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268B350F4();
    OUTLINED_FUNCTION_4();
    (*(v82 + 8))(v79);
  }

  OUTLINED_FUNCTION_23();
}

void sub_26896C360()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v72 = v2;
  v73 = v3;
  v70 = v5;
  v71 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v74 = v12;
  OUTLINED_FUNCTION_9();
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v65 = v21;
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v24);
  v66 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - v29;
  v31 = sub_268B350F4();
  v67 = *(v31 - 8);
  v32 = *(v67 + 16);
  v69 = v31;
  v32(v30, v9);
  v33 = *(v20 + 48);
  v68 = v30;
  *&v30[v33] = v7;
  v34 = qword_2802A4F30;
  v35 = v7;
  if (v34 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v36 = __swift_project_value_buffer(v13, qword_2802CDA10);
  (*(v15 + 16))(v19, v36, v13);
  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_14();
    *v39 = 0;
    _os_log_impl(&dword_2688BB000, v37, v38, "SetVolumeLevelHandleIntentStrategy#intentHandledResponse...", v39, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v15 + 8))(v19, v13);
  v40 = v1;
  v41 = *(v1 + 280);
  v42 = *(v1 + 288);
  v64 = v41;
  v63 = __swift_project_boxed_opaque_existential_1((v40 + 256), v41);
  v43 = v68;
  sub_2688F1FA4(v68, v28, &unk_2802A56E0, &unk_268B3CDF0);
  v44 = *&v28[*(v20 + 48)];
  v61 = v28;
  v62 = v44;
  v45 = v74;
  v46 = v71;
  sub_268A82B50(v71, v74);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  v51 = v66;
  sub_2688F1FA4(v43, v66, &unk_2802A56E0, &unk_268B3CDF0);
  v52 = (*(v65 + 80) + 40) & ~*(v65 + 80);
  v53 = swift_allocObject();
  v53[2] = v46;
  v53[3] = v40;
  v53[4] = v72;
  sub_2689186C8(v51, v53 + v52);
  v54 = (v53 + ((v23 + v52 + 7) & 0xFFFFFFFFFFFFFFF8));
  v55 = v73;
  *v54 = v70;
  v54[1] = v55;
  v56 = *(v42 + 8);
  v57 = v46;

  v60 = v42;
  v59 = v61;
  v58 = v62;
  v56(v61, v62, v45, MEMORY[0x277D84F90], 1, sub_26896F564, v53, v64, v60);

  sub_2688C058C(v45, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v43, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v67 + 8))(v59, v69);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26896C7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v56 = a7;
  v57 = a6;
  v52 = a4;
  v62 = a2;
  v63 = a3;
  v55 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = v47 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v48);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v47 - v16;
  v18 = sub_268B34E24();
  v59 = *(v18 - 8);
  v60 = v18;
  MEMORY[0x28223BE20](v18);
  v58 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v53 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v47 - v24;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v50 = *(v21 + 16);
  v51 = v26;
  v50(v25);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v54 = v11;
    v30 = a5;
    v31 = v21;
    v32 = v29;
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "SetVolumeLevelHandleIntentStrategy#intentHandledResponse output has been created.", v29, 2u);
    v33 = v32;
    v21 = v31;
    a5 = v30;
    v11 = v54;
    MEMORY[0x26D6266E0](v33, -1, -1);
  }

  v34 = *(v21 + 8);
  v54 = (v21 + 8);
  v49 = v34;
  v34(v25, v20);
  sub_268947F08();
  v47[1] = v35;
  __swift_project_boxed_opaque_existential_1((v63 + 96), *(v63 + 120));
  (*(v59 + 104))(v58, *MEMORY[0x277D5BC10], v60);
  sub_2688F1FA4(a5, v11, &unk_2802A56E0, &unk_268B3CDF0);

  v36 = sub_268B350F4();
  v37 = *(v36 - 8);
  (*(v37 + 32))(v17, v11, v36);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v36);
  v38 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v38);
  sub_2688F1FA4(v17, v15, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v15, 1, v36) == 1)
  {
    sub_2688C058C(v15, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v37 + 8))(v15, v36);
  }

  v39 = v58;
  v40 = v61;
  sub_2688E2B50();

  sub_2688C058C(v40, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
  (*(v59 + 8))(v39, v60);
  v41 = v63;
  __swift_project_boxed_opaque_existential_1((v63 + 96), *(v63 + 120));
  sub_26894B450();
  __swift_project_boxed_opaque_existential_1((v41 + 96), *(v41 + 120));
  sub_268948308(MEMORY[0x277D84F90]);
  v42 = v53;
  (v50)(v53, v51, v20);
  v43 = sub_268B37A34();
  v44 = sub_268B37ED4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2688BB000, v43, v44, "SetVolumeLevelHandleIntentStrategy#intentHandledResponse returning output", v45, 2u);
    MEMORY[0x26D6266E0](v45, -1, -1);
  }

  v49(v42, v20);
  return v57(v55);
}

void sub_26896CEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v115 = v21;
  v117 = v22;
  LODWORD(v105) = v23;
  v116 = v24;
  v109 = v25;
  v104 = v26;
  v110 = v27;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  v113 = v34;
  OUTLINED_FUNCTION_9();
  v114 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v112 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v111 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  v108 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v43 = OUTLINED_FUNCTION_22(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_78();
  v119 = v45;
  OUTLINED_FUNCTION_9();
  v120 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  v118 = v50 - v49;
  OUTLINED_FUNCTION_9();
  v51 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_0();
  v57 = v56 - v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_20_0();
  v62 = v60 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = &v102 - v64;
  v66 = sub_268B350F4();
  v103 = *(v66 - 8);
  (*(v103 + 16))(v65, v31, v66);
  v67 = *(v58 + 48);
  v121 = v65;
  *&v65[v67] = v29;
  v68 = qword_2802A4F30;
  v69 = v29;
  if (v68 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v70 = __swift_project_value_buffer(v51, qword_2802CDA10);
  (*(v53 + 16))(v57, v70, v51);
  v71 = sub_268B37A34();
  v72 = sub_268B37ED4();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = OUTLINED_FUNCTION_14();
    *v73 = 0;
    _os_log_impl(&dword_2688BB000, v71, v72, "SetVolumeLevelHandleIntentStrategy#legacyHandledResponse...", v73, 2u);
    OUTLINED_FUNCTION_12();
  }

  v106 = a21;

  (*(v53 + 8))(v57, v51);
  v74 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  v75 = v104;
  swift_beginAccess();
  v124[0] = *(v75 + v74);
  sub_268B38404();
  v76 = v110;
  sub_268947F08();
  v78 = v77;

  if (v105)
  {

    sub_268947F08();
    v105 = v79;
  }

  else
  {
    v105 = v78;
  }

  v80 = v115;
  v81 = v103;
  OUTLINED_FUNCTION_22_5();
  v82 = *MEMORY[0x277D5BC10];
  v115 = v47;
  (*(v47 + 104))(v118, v82, v120);
  sub_2688F1FA4(v121, v62, &unk_2802A56E0, &unk_268B3CDF0);

  v83 = v119;
  (*(v81 + 32))(v119, v62, v66);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v66);
  sub_268B34B94();
  v87 = v108;
  v88 = OUTLINED_FUNCTION_17_8();
  __swift_storeEnumTagSinglePayload(v88, v89, 1, v90);
  v91 = v83;
  v92 = v107;
  sub_2688F1FA4(v91, v107, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v92, 1, v66) == 1)
  {
    sub_2688C058C(v92, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v81 + 8))(v92, v66);
  }

  v93 = v118;
  sub_2688E2B50();

  sub_2688C058C(v87, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v119, &unk_2802A57B0, &unk_268B3CE00);
  (*(v115 + 8))(v93, v120);
  OUTLINED_FUNCTION_22_5();
  sub_268948308(MEMORY[0x277D84F90]);
  v94 = v111;
  sub_268A82B50(v76, v111);
  v124[3] = sub_268B354F4();
  v124[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v124);
  __swift_project_boxed_opaque_existential_1((v80 + 56), *(v80 + 80));
  sub_268B34CA4();
  v95 = v112;
  v96 = v113;
  v97 = v114;
  (*(v112 + 16))(v113, v94, v114);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
  v123 = 0;
  memset(v122, 0, sizeof(v122));
  v101 = v121;
  sub_268B34EF4();
  sub_2688C058C(v122, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v96, &qword_2802A57F0, &qword_268B3DDB0);
  (*(v95 + 8))(v94, v97);
  v125 = 0;
  v117(v124);
  sub_2688C058C(v101, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v124, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_26896D748()
{
  OUTLINED_FUNCTION_26();
  v79 = v0;
  v80 = v1;
  v81 = v2;
  v82 = v3;
  v83 = v5;
  v84 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v74 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v73 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_78();
  v77 = v14;
  OUTLINED_FUNCTION_9();
  v78 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v76 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v75 = v18 - v17;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v27 = __swift_project_value_buffer(v19, qword_2802CDA10);
    v28 = *(v21 + 16);
    v28(v0, v27, v19);
    v29 = sub_268B37A34();
    v30 = sub_268B37ED4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v31);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v29, v30, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse called");
      OUTLINED_FUNCTION_12();
    }

    v32 = *(v21 + 8);
    v32(v0, v19);
    v33 = v84;
    v34 = sub_2689B8400();
    if (!v34)
    {
      break;
    }

    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_268B3BBC0;
    *(v36 + 32) = 0xD000000000000010;
    *(v36 + 40) = 0x8000000268B572E0;
    v37 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
    v38 = v83;
    swift_beginAccess();
    v76 = v37;
    v90[0] = *(v83 + v37);
    sub_268B38404();
    v39 = sub_268B36E94();
    v41 = v40;

    *(v36 + 72) = MEMORY[0x277D837D0];
    *(v36 + 48) = v39;
    *(v36 + 56) = v41;
    v77 = sub_268B37B84();
    BYTE4(v86[0]) = 0;
    LODWORD(v86[0]) = 0;
    *(v86 + 5) = v87;
    HIBYTE(v86[0]) = v88;
    v86[1] = 0;
    v86[2] = 0;
    v86[3] = 1;
    memset(&v86[4], 0, 58);
    memcpy(v89, &v86[1], 0x51uLL);
    sub_2688C058C(v89, &qword_2802A5C88, qword_268B418C0);
    LODWORD(v86[1]) = 0;
    memset(&v86[2], 0, 72);
    LOBYTE(v86[11]) = 1;
    v0 = v86;
    v78 = v35;
    sub_268A4271C(v35);
    v42 = sub_268B18120(v84);
    if (!v42)
    {
LABEL_24:
      v62 = sub_268B36E84();
      if (v63)
      {
        v64 = v62;
        v65 = v63;
      }

      else
      {
        v90[0] = *(v38 + v76);
        sub_268B38404();
        sub_268947F08();
        v64 = v66;
        v65 = v67;
      }

      memcpy(v90, v86, 0x5AuLL);
      v68 = swift_allocObject();
      v68[2] = v79;
      v68[3] = v80;
      v68[4] = v33;
      v68[5] = v64;
      v68[6] = v65;
      v68[7] = v81;
      v68[8] = v82;

      v69 = v33;

      sub_268A328D8(v90);

      memcpy(v85, v86, 0x5AuLL);
      sub_26896F3AC(v85);
      goto LABEL_30;
    }

    v21 = v42;
    v43 = sub_2688EFD0C();
    v19 = 0;
    v25 = v21 & 0xC000000000000001;
    while (1)
    {
      if (v43 == v19)
      {
        goto LABEL_23;
      }

      if (v25)
      {
        v44 = MEMORY[0x26D625BD0](v19, v21);
      }

      else
      {
        if (v19 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v44 = *(v21 + 8 * v19 + 32);
      }

      v45 = v44;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v90[0] = v44;
      type metadata accessor for DeviceQuery();
      sub_26896F400(&qword_2802A5B68, 255, type metadata accessor for DeviceQuery, &protocol conformance descriptor for DeviceQuery);
      sub_268B37684();
      v0 = v46;

      if (v0)
      {

LABEL_23:

        BYTE1(v86[11]) = v43 != v19;
        v38 = v83;
        v33 = v84;
        goto LABEL_24;
      }

      ++v19;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v28(v25, v27, v19);
  v47 = sub_268B37A34();
  v48 = sub_268B37EE4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v49);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v47, v48, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse Did not receive devices in intent");
    OUTLINED_FUNCTION_12();
  }

  v32(v25, v19);
  sub_268B36E84();
  if (!v50)
  {
    sub_268947F08();
  }

  __swift_project_boxed_opaque_existential_1(v79 + 12, v79[15]);
  (*(v76 + 104))(v75, *MEMORY[0x277D5BC00], v78);
  v51 = sub_268B350F4();
  v52 = OUTLINED_FUNCTION_17_8();
  __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
  v54 = *MEMORY[0x277D5B908];
  v55 = sub_268B34B94();
  OUTLINED_FUNCTION_4();
  (*(v56 + 104))(v74, v54, v55);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);
  sub_2688F1FA4(v77, v73, &unk_2802A57B0, &unk_268B3CE00);
  v60 = OUTLINED_FUNCTION_17_8();
  if (__swift_getEnumTagSinglePayload(v60, v61, v51) == 1)
  {
    sub_2688C058C(v73, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    OUTLINED_FUNCTION_20_7();
    (*(v70 + 8))(v73, v51);
  }

  sub_2688E2B50();

  sub_2688C058C(v74, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v77, &unk_2802A57B0, &unk_268B3CE00);
  (*(v76 + 8))(v75, v78);
  sub_2688C2ECC();
  v71 = swift_allocError();
  *v72 = 104;
  v90[0] = v71;
  LOBYTE(v90[5]) = 1;
  v81(v90);
  sub_2688C058C(v90, &unk_2802A57C0, &qword_268B3BE00);
LABEL_30:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26896E0A8(char *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v109 = a7;
  v110 = a8;
  v107 = a5;
  v108 = a6;
  v111 = a4;
  v112 = a2;
  v106 = a3;
  v102 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v92 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = MEMORY[0x28223BE20](v105);
  v100 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v94 = &v92 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v92 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v98 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v95 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v104 = &v92 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v92 - v26;
  MEMORY[0x28223BE20](v25);
  v96 = &v92 - v28;
  v29 = sub_268B34E24();
  v113 = *(v29 - 8);
  v114 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v103 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v93 = &v92 - v32;
  v33 = sub_268B37A54();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v99 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v92 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v92 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v42);
  v44 = (&v92 - v43);
  sub_2688F1FA4(v102, &v92 - v43, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v44;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v33, qword_2802CDA10);
    (*(v34 + 16))(v41, v46, v33);
    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v112;
    v51 = v93;
    if (v49)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v52, 2u);
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    (*(v34 + 8))(v41, v33);
    __swift_project_boxed_opaque_existential_1(v50 + 12, v50[15]);
    (*(v113 + 104))(v51, *MEMORY[0x277D5BC00], v114);
    v53 = sub_268B350F4();
    v54 = v96;
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v53);
    v55 = *MEMORY[0x277D5B8E0];
    v56 = sub_268B34B94();
    v57 = v97;
    (*(*(v56 - 8) + 104))(v97, v55, v56);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v56);
    sub_2688F1FA4(v54, v27, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v53) == 1)
    {
      sub_2688C058C(v27, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v53 - 8) + 8))(v27, v53);
    }

    sub_2688E2B50();

    sub_2688C058C(v57, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v54, &unk_2802A57B0, &unk_268B3CE00);
    (*(v113 + 8))(v51, v114);
    __swift_project_boxed_opaque_existential_1(v50 + 12, v50[15]);
    sub_2688C2ECC();
    v72 = swift_allocError();
    *v73 = -63;
    sub_26894B450();

    v74 = swift_allocError();
    *v75 = -63;
    v115[0] = v74;
    v116 = 1;
    v109(v115);

    return sub_2688C058C(v115, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v44, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v58 = __swift_project_value_buffer(v33, qword_2802CDA10);
    v59 = *(v34 + 16);
    v93 = v58;
    v92 = v59;
    (v59)(v39);
    v60 = sub_268B37A34();
    v61 = sub_268B37ED4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2688BB000, v60, v61, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v62, 2u);
      MEMORY[0x26D6266E0](v62, -1, -1);
    }

    v63 = *(v34 + 8);
    v97 = (v34 + 8);
    v63(v39, v33);
    __swift_project_boxed_opaque_existential_1(v112 + 12, v112[15]);
    (*(v113 + 104))(v103, *MEMORY[0x277D5BC00], v114);
    v102 = v15;
    v64 = v94;
    sub_2688F1FA4(v15, v94, &unk_2802A56E0, &unk_268B3CDF0);

    v65 = sub_268B350F4();
    v66 = *(v65 - 8);
    v67 = v104;
    (*(v66 + 32))(v104, v64, v65);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v65);
    v68 = sub_268B34B94();
    v69 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v68);
    v70 = v95;
    sub_2688F1FA4(v67, v95, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v65);
    v96 = v66;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v70, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v66 + 8))(v70, v65);
    }

    v77 = v99;
    v78 = v103;
    sub_2688E2B50();

    sub_2688C058C(v69, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v104, &unk_2802A57B0, &unk_268B3CE00);
    (*(v113 + 8))(v78, v114);
    v79 = v112;
    __swift_project_boxed_opaque_existential_1(v112 + 12, v112[15]);
    sub_2688C2ECC();
    v80 = swift_allocError();
    *v81 = 79;
    sub_26894B450();

    v92(v77, v93, v33);
    v82 = sub_268B37A34();
    v83 = sub_268B37ED4();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_2688BB000, v82, v83, "SetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v84, 2u);
      MEMORY[0x26D6266E0](v84, -1, -1);
    }

    v63(v77, v33);
    v85 = v79[35];
    v86 = v79[36];
    __swift_project_boxed_opaque_existential_1(v79 + 32, v85);
    v87 = v102;
    v88 = v100;
    sub_2688F1FA4(v102, v100, &unk_2802A56E0, &unk_268B3CDF0);
    v89 = *(v88 + *(v105 + 48));
    v90 = v101;
    sub_268A82B50(v111, v101);
    v91 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v91);
    (*(v86 + 40))(v88, v89, v90, v109, v110, v85, v86);

    sub_2688C058C(v90, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v87, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v96 + 8))(v88, v65);
  }
}

void *sub_26896EDD8()
{
  sub_2689542A4((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  return v0;
}

uint64_t sub_26896EE28()
{
  sub_26896EDD8();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

uint64_t sub_26896EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896EEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896F018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896F094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_26896F134()
{
  if (qword_2802A4D70 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD918;

  return v1;
}

uint64_t sub_26896F190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_26896F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_26896F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896F2A0(uint64_t a1, uint64_t a2)
{
  result = sub_26896F400(&qword_2802A6508, a2, type metadata accessor for SetVolumeLevelHandleIntentStrategy, &unk_268B3F524);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26896F340()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26896F400(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26896F448()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_26896F564(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_26896C7E4(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void OUTLINED_FUNCTION_21_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void *OUTLINED_FUNCTION_22_5()
{
  v2 = *(v0 + 120);

  return __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
}

uint64_t sub_26896F760@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = (&v13 - v9);
  sub_2688F1FA4(v2, &v13 - v9, &qword_2802A6300, &unk_268B3BD80);
  result = swift_getEnumCaseMultiPayload();
  v12 = result;
  if (result == 1)
  {
    *a2 = *v10;
  }

  else
  {
    sub_2689186C8(v10, v7);
    a1(v7);
    result = sub_2688C058C(v7, &unk_2802A56E0, &unk_268B3CDF0);
  }

  *(a2 + 40) = v12 == 1;
  return result;
}

uint64_t sub_26896F8C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v64 = a8;
  v61 = a3;
  v62 = a4;
  v60 = a2;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v57 = v10;
  v58 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v53 - v14;
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v59 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v24 = *(v17 + 16);
  v24(v22, v23, v15);
  v25 = sub_268B37A34();
  v26 = sub_268B37ED4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "VolumeLevelNeedsConfirmationStrategy.makePromptForConfirmation()", v27, 2u);
    MEMORY[0x26D6266E0](v27, -1, -1);
  }

  v63 = a9;

  v28 = *(v17 + 8);
  v28(v22, v15);
  v29 = v61 == 0x654C656D756C6F76 && v62 == 0xEB000000006C6576;
  if (v29 || (sub_268B38444() & 1) != 0)
  {
    v30 = v60;
    if (sub_268B18100(v60))
    {
      v31 = sub_2688EFD0C();

      if (v31)
      {
        v32 = [v30 volumeLevel];
        if (v32)
        {
          v33 = v32;
          v34 = [v32 resolvedVolumeOutput];

          if (v34)
          {

            sub_2689702C8();
            v35 = v55;
            sub_2689D9C28();

            v37 = v57;
            v36 = v58;
            v38 = v54;
            (*(v57 + 16))(v54, v35, v58);
            v39 = (*(v37 + 80) + 40) & ~*(v37 + 80);
            v40 = swift_allocObject();
            v41 = v63;
            *(v40 + 2) = v64;
            *(v40 + 3) = v41;
            v42 = v56;
            *(v40 + 4) = v56;
            (*(v37 + 32))(&v40[v39], v38, v36);
            v43 = v42[21];
            v44 = v42[22];
            __swift_project_boxed_opaque_existential_1(v42 + 18, v43);

            sub_2689CE88C(0xD000000000000023, 0x8000000268B58690, sub_268972250, v40, v43, v44);

            return (*(v37 + 8))(v35, v36);
          }
        }
      }
    }

    v46 = v59;
    v24(v59, v23, v15);
    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "Could not find any devices or volume level in the intent for confirmation", v49, 2u);
      MEMORY[0x26D6266E0](v49, -1, -1);
    }

    v28(v46, v15);
    sub_2688C2ECC();
    v50 = swift_allocError();
    v52 = 108;
  }

  else
  {
    sub_2688C2ECC();
    v50 = swift_allocError();
    v52 = 110;
  }

  *v51 = v52;
  v65[0] = v50;
  v66 = 1;
  v64(v65);
  return sub_2688C058C(v65, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_26896FE14(uint64_t a1, void (*a2)(void *), uint64_t a3, void *a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v39 = a1;
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_268B37A54();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  sub_2688F1FA4(v39, v14, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v14, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v21 = v38;
    v22 = __swift_project_value_buffer(v38, qword_2802CDA10);
    v23 = v37;
    (*(v37 + 16))(v11, v22, v21);
    v24 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "VolumeLevelNeedsConfirmationStrategy.makePromptForConfirmation Unable to generate dialog.", v26, 2u);
      MEMORY[0x26D6266E0](v26, -1, -1);
    }

    (*(v23 + 8))(v11, v21);
    sub_2688C2ECC();
    v27 = swift_allocError();
    *v28 = -72;
    v41[0] = v27;
    v42 = 1;
    a2(v41);
    return sub_2688C058C(v41, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v14, v20);
    v30 = v35[16];
    v31 = v35[17];
    __swift_project_boxed_opaque_existential_1(v35 + 13, v30);
    sub_2688F1FA4(v20, v18, &unk_2802A56E0, &unk_268B3CDF0);
    v32 = *&v18[*(v15 + 48)];
    v33 = sub_268B35044();
    (*(*(v33 - 8) + 16))(v8, v36, v33);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v33);
    (*(v31 + 16))(v18, v32, v8, a2, v40, v30, v31);

    sub_2688C058C(v8, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v20, &unk_2802A56E0, &unk_268B3CDF0);
    v34 = sub_268B350F4();
    return (*(*(v34 - 8) + 8))(v18, v34);
  }
}

uint64_t sub_2689702C8()
{
  v0 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36554();
  swift_allocObject();
  v6 = sub_268B36544();
  sub_268B36124();
  swift_allocObject();
  sub_268B36114();
  sub_268B360F4();
  sub_268B358A4();
  sub_268B357B4();
  (*(v2 + 8))(v5, v0);
  sub_268B365D4();

  return v6;
}

void *sub_268970444()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  sub_2689542A4((v0 + 18));
  return v0;
}

uint64_t sub_268970484()
{
  sub_268970444();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2689704E4()
{
  v0 = sub_268B35494();
  MEMORY[0x28223BE20](v0 - 8);
  v40 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for SettingsIntent(0);
  MEMORY[0x28223BE20](v5);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v16 = *(v8 + 16);
  v37 = v15;
  v38 = v16;
  (v16)(v14);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v5;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "DefaultNeedsConfirmationStrategy.actionForInput()", v19, 2u);
    v5 = v34;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = *(v8 + 8);
  v21(v14, v7);
  v22 = v40;
  sub_268B35414();
  sub_26897BBA8(v22, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2688C058C(v4, &qword_2802A5D40, &qword_268B3FFE0);
    return sub_268B34ED4();
  }

  else
  {
    v24 = v39;
    sub_26891E594(v4, v39);
    if (sub_26897E154())
    {
      v25 = v36;
      v38(v36, v37, v7);
      v26 = sub_268B37A34();
      v27 = sub_268B37F04();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2688BB000, v26, v27, "Cancelling due to confirmation value in intent", v28, 2u);
        MEMORY[0x26D6266E0](v28, -1, -1);
      }

      v21(v25, v7);
      sub_268B34EB4();
    }

    else if ((*(v24 + *(v5 + 40)) & 0xFE) == 2)
    {
      v29 = v35;
      v38(v35, v37, v7);
      v30 = sub_268B37A34();
      v31 = sub_268B37F04();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2688BB000, v30, v31, "No confirmation response in the intent, ignoring input", v32, 2u);
        MEMORY[0x26D6266E0](v32, -1, -1);
      }

      v21(v29, v7);
      sub_268B34ED4();
    }

    else
    {
      sub_268B34EC4();
    }

    return sub_26891E5F8(v24);
  }
}

uint64_t sub_2689709F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v89 = a8;
  v83 = sub_268B35434();
  v11 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6528, &qword_268B421F0);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = &v74 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6530, &unk_268B3F850);
  v15 = MEMORY[0x28223BE20](v88);
  v84 = (&v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v80 = &v74 - v17;
  v75 = sub_268B35494();
  MEMORY[0x28223BE20](v75);
  v90 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v74 - v20;
  v86 = type metadata accessor for SettingsIntent(0);
  MEMORY[0x28223BE20](v86);
  v78 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_268B37A54();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v85 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v74 - v27;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v87 = a9;
  v29 = __swift_project_value_buffer(v23, qword_2802CDA10);
  v76 = *(v24 + 16);
  v77 = v29;
  v76(v28);
  v30 = sub_268B37A34();
  v31 = sub_268B37ED4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v79 = v24;
    v33 = v23;
    v34 = a7;
    v35 = v11;
    v36 = a2;
    v37 = v32;
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "DefaultNeedsConfirmationStrategy.parseConfirmationResponse()", v32, 2u);
    v38 = v37;
    a2 = v36;
    v11 = v35;
    a7 = v34;
    v23 = v33;
    v24 = v79;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v41 = *(v24 + 8);
  v40 = v24 + 8;
  v39 = v41;
  (v41)(v28, v23);
  v42 = v90;
  sub_268B35414();
  sub_26897BBA8(v42, v21);
  v43 = v86;
  if (__swift_getEnumTagSinglePayload(v21, 1, v86) == 1)
  {
    sub_2688C058C(v21, &qword_2802A5D40, &qword_268B3FFE0);
    v44 = v85;
    (v76)(v85, v77, v23);
    v45 = v82;
    v46 = a7;
    v47 = v83;
    (*(v11 + 16))(v82, v46, v83);
    v48 = sub_268B37A34();
    v49 = sub_268B37EE4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v11;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v79 = v40;
      v53 = v52;
      v91 = v52;
      *v51 = 136315138;
      v86 = v39;
      sub_268B35414();
      v54 = sub_268B37C24();
      v55 = v45;
      v56 = v54;
      v58 = v57;
      (*(v50 + 8))(v55, v47);
      v59 = sub_26892CDB8(v56, v58, &v91);

      *(v51 + 4) = v59;
      _os_log_impl(&dword_2688BB000, v48, v49, "Unexpected parse: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x26D6266E0](v53, -1, -1);
      MEMORY[0x26D6266E0](v51, -1, -1);

      (v86)(v85, v23);
    }

    else
    {

      (*(v11 + 8))(v45, v47);
      (v39)(v44, v23);
    }

    sub_2688C2ECC();
    v64 = swift_allocError();
    *v65 = 4;
    v66 = v84;
    *v84 = v64;
    swift_storeEnumTagMultiPayload();
    v89(v66);
    return sub_2688C058C(v66, &qword_2802A6530, &unk_268B3F850);
  }

  else
  {
    v60 = v78;
    sub_26891E594(v21, v78);
    if (*(v60 + v43[10]) - 2 >= 2)
    {
      v68 = v81;
      if (*(v60 + v43[10]))
      {
        v69 = MEMORY[0x277D5BED0];
      }

      else
      {
        v69 = MEMORY[0x277D5BED8];
      }

      v70 = *v69;
      v71 = sub_268B351D4();
      (*(*(v71 - 8) + 104))(v68, v70, v71);
      v62 = v68;
      v63 = 0;
      v61 = v71;
    }

    else
    {
      v61 = sub_268B351D4();
      v62 = v81;
      v63 = 1;
    }

    __swift_storeEnumTagSinglePayload(v62, v63, 1, v61);
    type metadata accessor for SetVolumeLevelIntent();
    v72 = a2;
    v73 = v80;
    sub_268B352A4();
    swift_storeEnumTagMultiPayload();
    v89(v73);
    sub_2688C058C(v73, &qword_2802A6530, &unk_268B3F850);
    return sub_26891E5F8(v60);
  }
}

uint64_t sub_2689711A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821B9E48](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

void sub_26897128C()
{
  type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  JUMPOUT(0x26D622250);
}

uint64_t sub_26897133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821B9E68](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2689713EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821B9E60](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268971484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821B9E70](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268971540(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v35 = a3;
  v36 = a6;
  v13 = sub_268B37A54();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_2802CDA10);
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v8;
    v21 = a2;
    v22 = a7;
    v23 = a1;
    v24 = a4;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "DefaultNeedsConfirmationStrategy.makeConfirmationRejectedResponse()", v20, 2u);
    v26 = v25;
    a4 = v24;
    a1 = v23;
    a7 = v22;
    a2 = v21;
    v8 = v34;
    MEMORY[0x26D6266E0](v26, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v27 = sub_2688E1B54(2, 0, v35, a4, a2, 0x6E776F6E6B6E75, 0xE700000000000000, 0);
  v29 = v28;
  v30 = swift_allocObject();
  v30[2] = v36;
  v30[3] = a7;
  v30[4] = v8;
  v30[5] = a1;
  v30[6] = a2;
  v30[7] = v27;
  v30[8] = v29;

  v31 = a2;
  sub_268ABDE34(sub_268972164, v30);
}

uint64_t sub_2689717C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return MEMORY[0x2821BB9B8](a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_26897184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for VolumeLevelNeedsConfirmationStrategy();

  return sub_268B353B4();
}

uint64_t sub_2689718E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_2689719C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for VolumeLevelNeedsConfirmationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_268971B04(uint64_t a1)
{
  result = sub_268971B48(&qword_2802A6520, &unk_268B3F7B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268971B48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VolumeLevelNeedsConfirmationStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268971B88(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v7 = a4;
  sub_26896F760(sub_268972180, v6);
  a2(v6);
  return sub_2688C058C(v6, &unk_2802A57C0, &qword_268B3BE00);
}

uint64_t sub_268971C1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v43 = a5;
  v44 = a6;
  v41 = a3;
  v42 = a4;
  v48 = a1;
  v45 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  v23 = sub_268B34E24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2[11];
  v46 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 8, v27);
  v28 = *MEMORY[0x277D5BBD0];
  v29 = *(v24 + 104);
  v40 = v23;
  v29(v26, v28, v23);
  sub_2688F1FA4(v48, v16, &unk_2802A56E0, &unk_268B3CDF0);

  v30 = sub_268B350F4();
  v31 = *(v30 - 8);
  (*(v31 + 32))(v22, v16, v30);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v30);
  v32 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v32);
  sub_2688F1FA4(v22, v20, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v20, 1, v30) == 1)
  {
    sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v31 + 8))(v20, v30);
  }

  sub_2688E2B50();

  sub_2688C058C(v12, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v22, &unk_2802A57B0, &unk_268B3CE00);
  (*(v24 + 8))(v26, v40);
  __swift_project_boxed_opaque_existential_1(v46 + 2, v46[5]);
  sub_268B34CA4();
  v33 = sub_268B35044();
  v34 = v47;
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v33);
  v35 = sub_268B354F4();
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v36 = MEMORY[0x277D5C1D8];
  v37 = v45;
  v45[3] = v35;
  v37[4] = v36;
  __swift_allocate_boxed_opaque_existential_1(v37);
  sub_268B34EE4();
  sub_2688C058C(v49, &unk_2802A5800, &unk_268B3CE10);
  return sub_2688C058C(v34, &qword_2802A57F0, &qword_268B3DDB0);
}

uint64_t sub_26897210C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_268972190()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_268972250(uint64_t a1)
{
  v3 = *(sub_268B35044() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_26896FE14(a1, v4, v5, v6, v7);
}

uint64_t sub_2689722C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v33 = a6;
  v37 = a7;
  v38 = a8;
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v35 = a1;
  v36 = a2;
  OUTLINED_FUNCTION_3_8();
  v13 = v12;
  v15 = *(v14 + 64);
  v34 = a10;
  MEMORY[0x28223BE20](v16);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  v19 = OUTLINED_FUNCTION_19_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v33 - v24;
  sub_26894D5AC(v33, &v33 - v24, &unk_2802A7360, &qword_268B3F860);
  (*(v13 + 16))(v17, v11, a9);
  v26 = (*(v21 + 80) + 64) & ~*(v21 + 80);
  v27 = (v23 + *(v13 + 80) + v26) & ~*(v13 + 80);
  v28 = swift_allocObject();
  v29 = v34;
  *(v28 + 2) = a9;
  *(v28 + 3) = v29;
  v30 = v38;
  *(v28 + 4) = v37;
  *(v28 + 5) = v30;
  v31 = v36;
  *(v28 + 6) = v35;
  *(v28 + 7) = v31;
  sub_268972EA0(v25, &v28[v26]);
  (*(v13 + 32))(&v28[v27], v17, a9);

  sub_268B36D44();
}

uint64_t sub_268972504(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(char *, char *, uint64_t), uint64_t a5, _DWORD *a6, void *a7, char *a8, uint64_t a9)
{
  v67 = a8;
  v68 = a7;
  v65 = a5;
  v66 = a6;
  v69 = a4;
  v72 = a3;
  v73 = a2;
  v74 = sub_268B37A54();
  v71 = *(v74 - 8);
  v10 = MEMORY[0x28223BE20](v74);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v65 - v12;
  v14 = sub_268B37134();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6538, &unk_268B3F868);
  MEMORY[0x28223BE20](v21);
  v23 = (&v65 - v22);
  sub_26894D5AC(a1, &v65 - v22, &qword_2802A6538, &unk_268B3F868);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v15 + 32))(v20, v23, v14);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = v74;
    v26 = __swift_project_value_buffer(v74, qword_2802CDA10);
    v27 = v71;
    (v71[2])(v13, v26, v25);
    v69 = *(v15 + 16);
    v70 = (v15 + 16);
    v69(v18, v20, v14);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v66 = v30;
      v68 = swift_slowAlloc();
      v75 = v68;
      *v30 = 136446210;
      sub_268975F38(&qword_2802A6540, MEMORY[0x277D5F7C0], MEMORY[0x277D5F7C8]);
      LODWORD(v65) = v29;
      v31 = sub_268B384A4();
      v33 = v32;
      v67 = v13;
      v34 = *(v15 + 8);
      v34(v18, v14);
      v35 = sub_26892CDB8(v31, v33, &v75);

      v36 = v66;
      *(v66 + 1) = v35;
      v37 = v36;
      _os_log_impl(&dword_2688BB000, v28, v65, "Error when getting language options: %{public}s", v36, 0xCu);
      v38 = v68;
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x26D6266E0](v38, -1, -1);
      MEMORY[0x26D6266E0](v37, -1, -1);

      v39 = v34;
      (v27[1])(v67, v74);
    }

    else
    {

      v39 = *(v15 + 8);
      v39(v18, v14);
      (v27[1])(v13, v25);
    }

    sub_268975F38(&qword_2802A6540, MEMORY[0x277D5F7C0], MEMORY[0x277D5F7C8]);
    v48 = swift_allocError();
    v69(v49, v20, v14);
    v73(v48, 2);

    return (v39)(v20, v14);
  }

  else
  {
    v40 = *v23;
    v41 = v65;
    if (v65)
    {
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v65 - 4) = v69;
      *(&v65 - 3) = v41;
      v42 = v66;
      *(&v65 - 2) = v66;

      sub_2688C90CC(sub_268975F80, (&v65 - 6), v40);
      v44 = v43;
      v45 = v74;
      v47 = v70;
      v46 = v71;
    }

    else
    {

      v44 = v40;
      v45 = v74;
      v47 = v70;
      v46 = v71;
      v42 = v66;
    }

    v51 = sub_268972FF0(v44, v42);

    v52 = qword_2802A4F30;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v45, qword_2802CDA10);
    (v46[2])(v47, v53, v45);

    v54 = sub_268B37A34();
    v55 = sub_268B37EC4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v75 = v71;
      *v56 = 134218498;
      *(v56 + 4) = *(v40 + 16);

      *(v56 + 12) = 2082;
      if (v41)
      {
        v58 = v69;
      }

      else
      {
        v58 = 0x3E6C696E3CLL;
      }

      v59 = v46;
      if (v41)
      {
        v60 = v41;
      }

      else
      {
        v60 = 0xE500000000000000;
      }

      v61 = sub_26892CDB8(v58, v60, &v75);

      *(v56 + 14) = v61;
      *(v56 + 22) = 2114;
      sub_268B372A4();
      v62 = sub_268B37CE4();
      *(v56 + 24) = v62;
      *v57 = v62;
      _os_log_impl(&dword_2688BB000, v54, v55, "Filtered %ld options against %{public}s to: %{public}@", v56, 0x20u);
      sub_26894DD8C(v57, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v57, -1, -1);
      v63 = v71;
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x26D6266E0](v63, -1, -1);
      MEMORY[0x26D6266E0](v56, -1, -1);

      (v59[1])(v70, v74);
    }

    else
    {

      (v46[1])(v47, v45);
    }

    v64 = *(v51 + 2);

    if (v64)
    {
      v73(v51, 1);
    }

    else
    {
      v73(v40, 0);
    }
  }
}

uint64_t sub_268972D28()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  OUTLINED_FUNCTION_19_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 64) & ~v4;
  OUTLINED_FUNCTION_3_8();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);

  v13 = sub_268B37704();
  if (!__swift_getEnumTagSinglePayload(v0 + v7, 1, v13))
  {
    OUTLINED_FUNCTION_70();
    (*(v14 + 8))(v0 + v7, v13);
  }

  v15 = v4 | v10;
  v16 = (v7 + v6 + v10) & ~v10;
  (*(v9 + 8))(v0 + v16, v1);

  return MEMORY[0x2821FE8E8](v0, v16 + v12, v15 | 7);
}

uint64_t sub_268972EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268972F10(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  return sub_268972504(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), (v1 + v10), (v1 + ((v10 + *(v9 + 64) + *(*(v3 - 1) + 80)) & ~*(*(v3 - 1) + 80))), v3, v4);
}

char *sub_268972FF0(char *a1, void (**a2)(char *, uint64_t))
{
  v139 = sub_268B372A4();
  v137 = *(v139 - 8);
  v4 = MEMORY[0x28223BE20](v139);
  v120 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v126 = &v115 - v6;
  v7 = sub_268B37704();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v136 = (&v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v138 = &v115 - v11;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  v12 = MEMORY[0x28223BE20](v131);
  v134 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v115 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v115 - v17;
  v19 = sub_268B37A54();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v123 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v121 = &v115 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v122 = &v115 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v127 = &v115 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v115 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v19, qword_2802CDA10);
  v32 = *(v20 + 16);
  v128 = v31;
  v129 = v32;
  v130 = v20 + 16;
  (v32)(v30);
  v135 = a2;
  sub_26894D5AC(a2, v18, &unk_2802A7360, &qword_268B3F860);

  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v124 = v8;
    v36 = v35;
    v37 = swift_slowAlloc();
    v125 = v7;
    v119 = v37;
    v140 = v37;
    *v36 = 136446466;
    v132 = v20;
    v133 = v19;
    sub_26894D5AC(v18, v16, &unk_2802A7360, &qword_268B3F860);
    v38 = sub_268B37C24();
    v40 = v39;
    sub_26894DD8C(v18, &unk_2802A7360, &qword_268B3F860);
    v41 = sub_26892CDB8(v38, v40, &v140);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2082;
    v42 = v139;
    v43 = MEMORY[0x26D6256F0](a1, v139);
    v45 = sub_26892CDB8(v43, v44, &v140);

    *(v36 + 14) = v45;
    v20 = v132;
    v19 = v133;
    _os_log_impl(&dword_2688BB000, v33, v34, "PlaybackControlling#filterOptionsByCharacteristic using characteristic: %{public}s to filter language options: %{public}s", v36, 0x16u);
    v46 = v119;
    swift_arrayDestroy();
    v7 = v125;
    MEMORY[0x26D6266E0](v46, -1, -1);
    v47 = v36;
    v8 = v124;
    MEMORY[0x26D6266E0](v47, -1, -1);

    v48 = *(v20 + 8);
    v48(v30, v19);
  }

  else
  {

    sub_26894DD8C(v18, &unk_2802A7360, &qword_268B3F860);
    v48 = *(v20 + 8);
    v48(v30, v19);
    v42 = v139;
  }

  v49 = v134;
  sub_26894D5AC(v135, v134, &unk_2802A7360, &qword_268B3F860);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v7);
  v51 = v138;
  v52 = v136;
  if (EnumTagSinglePayload == 1)
  {
    sub_26894DD8C(v49, &unk_2802A7360, &qword_268B3F860);

    return a1;
  }

  (*(v8 + 32))(v138, v49, v7);
  v131 = *(a1 + 2);
  if (v131 < 2)
  {
    v67 = *(v8 + 8);

    v67(v51, v7);
    return a1;
  }

  v119 = v48;
  v132 = v20;
  v133 = v19;
  v53 = *(v8 + 104);
  v53(v52, *MEMORY[0x277D5F938], v7);
  v54 = sub_268920988(v51, v52);
  v57 = *(v8 + 8);
  v56 = v8 + 8;
  v55 = v57;
  (v57)(v52, v7);
  if (v54 & 1) != 0 || (v53(v52, *MEMORY[0x277D5F940], v7), v58 = sub_268920988(v51, v52), (v55)(v52, v7), (v58))
  {
    v59 = v127;
    v60 = v133;
    v129(v127, v128, v133);
    v61 = sub_268B37A34();
    v62 = sub_268B37ED4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2688BB000, v61, v62, "PlaybackControlling#filterOptionsByCharacteristic returning options filtered by CC/SDH", v63, 2u);
      v64 = v63;
      v60 = v133;
      MEMORY[0x26D6266E0](v64, -1, -1);
    }

    v65 = v119(v59, v60);
    MEMORY[0x28223BE20](v65);
    *(&v115 - 2) = v51;

    sub_2688C90CC(sub_268975C28, (&v115 - 4), a1);
    a1 = v66;
    (v55)(v51, v7);
    return a1;
  }

  v53(v52, *MEMORY[0x277D5F948], v7);
  v69 = sub_268920988(v51, v52);
  v127 = v55;
  (v55)(v52, v7);
  if (v69)
  {
    v124 = v56;
    v125 = v7;
    v70 = 0;
    v136 = *(v137 + 16);
    v71 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v72 = *(v137 + 72);
    v117 = (v137 + 32);
    v137 += 16;
    v135 = (v137 - 8);
    v118 = a1;
    v116 = v71;
    v73 = &a1[v71];
    v123 = MEMORY[0x277D84F90];
    v134 = v72;
    v115 = &a1[v71];
LABEL_18:
    v74 = ~v70;
    v75 = &v73[v72 * v70];
    v76 = v131 - v70;
    v77 = v126;
    if (v131 == v70)
    {
LABEL_36:
      a1 = v123;
      if (*(v123 + 2))
      {
        v97 = v122;
        v98 = v133;
        v129(v122, v128, v133);
        v99 = sub_268B37A34();
        v100 = sub_268B37ED4();
        v101 = os_log_type_enabled(v99, v100);
        v102 = v125;
        v103 = v127;
        if (v101)
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&dword_2688BB000, v99, v100, "PlaybackControlling#filterOptionsByCharacteristic returning options filtered by subtitles", v104, 2u);
          v105 = v104;
          v98 = v133;
          MEMORY[0x26D6266E0](v105, -1, -1);
        }

        v119(v97, v98);
        v103(v138, v102);
      }

      else
      {

        v106 = v121;
        v107 = v133;
        v129(v121, v128, v133);
        v108 = sub_268B37A34();
        v109 = sub_268B37ED4();
        v110 = os_log_type_enabled(v108, v109);
        v111 = v125;
        v112 = v127;
        if (v110)
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_2688BB000, v108, v109, "PlaybackControlling#filterOptionsByCharacteristic options empty after filtering by subtitles, returning all options", v113, 2u);
          v114 = v113;
          v107 = v133;
          MEMORY[0x26D6266E0](v114, -1, -1);
        }

        v119(v106, v107);
        a1 = v118;

        v112(v138, v111);
      }

      return a1;
    }

    while (1)
    {
      v136(v77, v75, v42);
      v78 = *(sub_268B37244() + 16);

      if (v78)
      {
        sub_268B37244();
        v140 = sub_268B37274();
        v141 = v79;
        MEMORY[0x28223BE20](v140);
        *(&v115 - 2) = &v140;
        v80 = sub_268ACD018();

        if (v80 || (sub_268B37244(), v140 = sub_268B37264(), v141 = v81, MEMORY[0x28223BE20](v140), *(&v115 - 2) = &v140, v82 = sub_268ACD018(), , , v82))
        {
          v42 = v139;
        }

        else
        {
          sub_268B37244();
          v140 = sub_268B37254();
          v141 = v83;
          MEMORY[0x28223BE20](v140);
          *(&v115 - 2) = &v140;
          v84 = sub_268ACD018();

          if (!v84)
          {
            v85 = *v117;
            v42 = v139;
            (*v117)(v120, v126, v139);
            v86 = v123;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v142 = v86;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_26894482C(0, *(v86 + 2) + 1, 1);
              v86 = v142;
            }

            v73 = v115;
            v89 = *(v86 + 2);
            v88 = *(v86 + 3);
            if (v89 >= v88 >> 1)
            {
              sub_26894482C(v88 > 1, v89 + 1, 1);
              v86 = v142;
            }

            v70 = -v74;
            *(v86 + 2) = v89 + 1;
            v123 = v86;
            v90 = &v86[v116 + v89 * v134];
            v72 = v134;
            v85(v90, v120, v42);
            goto LABEL_18;
          }

          v42 = v139;
          v77 = v126;
        }

        v72 = v134;
      }

      (*v135)(v77, v42);
      --v74;
      v75 += v72;
      if (!--v76)
      {
        goto LABEL_36;
      }
    }
  }

  v91 = v123;
  v92 = v133;
  v129(v123, v128, v133);
  v93 = sub_268B37A34();
  v94 = sub_268B37ED4();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_2688BB000, v93, v94, "PlaybackControlling#filterOptionsByCharacteristic unknown characteristic, returning all options", v95, 2u);
    v96 = v95;
    v92 = v133;
    MEMORY[0x26D6266E0](v96, -1, -1);
  }

  v119(v91, v92);

  (v127)(v51, v7);
  return a1;
}

uint64_t sub_268973E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a6;
  v31 = a8;
  v29 = a5;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  v12 = OUTLINED_FUNCTION_19_0(v11);
  v14 = v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  OUTLINED_FUNCTION_3_8();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v22 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, v8, a7);
  sub_26894D5AC(a4, v16, &unk_2802A7360, &qword_268B3F860);
  v23 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v24 = (v20 + v23 + *(v14 + 80)) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v27 = v30;
  v26 = v31;
  *(v25 + 2) = a7;
  *(v25 + 3) = v26;
  *(v25 + 4) = v29;
  *(v25 + 5) = v27;
  (*(v18 + 32))(&v25[v23], v22, a7);
  sub_268972EA0(v16, &v25[v24]);

  sub_268B36D44();
}

uint64_t sub_268974084(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, void (**a5)(char *, uint64_t), uint64_t (*a6)(char *, uint64_t), uint64_t a7)
{
  v224 = a7;
  v221 = a6;
  v222 = a4;
  v226 = a5;
  v229 = a2;
  v230 = a3;
  v231 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6548, &qword_268B3F878);
  MEMORY[0x28223BE20](v7 - 8);
  v211 = &v201 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6550, &qword_268B3F880);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v203 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v215 = &v201 - v12;
  v223 = sub_268B346F4();
  v220 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v219 = &v201 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_268B34714();
  v228 = *(v225 - 8);
  v14 = MEMORY[0x28223BE20](v225);
  v209 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v217 = &v201 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6558, &qword_268B3F888);
  MEMORY[0x28223BE20](v17 - 8);
  v218 = &v201 - v18;
  v19 = sub_268B372A4();
  v20 = *(v19 - 1);
  v234 = v19;
  v235 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v202 = &v201 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v201 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v210 = &v201 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v212 = &v201 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v206 = &v201 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v201 - v33;
  MEMORY[0x28223BE20](v32);
  v208 = &v201 - v35;
  v36 = sub_268B37A54();
  v232 = *(v36 - 8);
  v233 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v216 = &v201 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v204 = &v201 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v205 = &v201 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v213 = &v201 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v214 = &v201 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v207 = &v201 - v48;
  MEMORY[0x28223BE20](v47);
  v227 = &v201 - v49;
  v50 = sub_268B37134();
  v51 = *(v50 - 8);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v201 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v201 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6538, &unk_268B3F868);
  MEMORY[0x28223BE20](v57);
  v59 = &v201 - v58;
  sub_26894D5AC(v231, &v201 - v58, &qword_2802A6538, &unk_268B3F868);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51[4](v56, v59, v50);
    if (qword_2802A4F30 != -1)
    {
LABEL_59:
      swift_once();
    }

    v60 = v233;
    v61 = __swift_project_value_buffer(v233, qword_2802CDA10);
    v62 = v232;
    v63 = v227;
    (*(v232 + 16))(v227, v61, v60);
    v234 = v51[2];
    v235 = (v51 + 2);
    (v234)(v54, v56, v50);
    v64 = sub_268B37A34();
    v65 = sub_268B37EE4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v228 = v66;
      v231 = swift_slowAlloc();
      v236 = v231;
      *v66 = 136446210;
      sub_268975F38(&qword_2802A6540, MEMORY[0x277D5F7C0], MEMORY[0x277D5F7C8]);
      LODWORD(v226) = v65;
      v67 = sub_268B384A4();
      v69 = v68;
      v70 = v51[1];
      (v70)(v54, v50);
      v71 = sub_26892CDB8(v67, v69, &v236);

      v72 = v228;
      *(v228 + 4) = v71;
      v73 = v72;
      _os_log_impl(&dword_2688BB000, v64, v226, "Error when getting language options: %{public}s", v72, 0xCu);
      v74 = v231;
      __swift_destroy_boxed_opaque_existential_0Tm(v231);
      MEMORY[0x26D6266E0](v74, -1, -1);
      v75 = v229;
      MEMORY[0x26D6266E0](v73, -1, -1);

      (*(v62 + 8))(v227, v233);
    }

    else
    {

      v70 = v51[1];
      (v70)(v54, v50);
      (*(v62 + 8))(v63, v233);
      v75 = v229;
    }

    sub_268975F38(&qword_2802A6540, MEMORY[0x277D5F7C0], MEMORY[0x277D5F7C8]);
    v93 = swift_allocError();
    (v234)(v94, v56, v50);
    v75(v93, 2);

    return (v70)(v56, v50);
  }

  v227 = v25;
  v50 = *v59;
  v76 = *(*v59 + 16);
  v51 = v234;
  if (!v76)
  {
LABEL_17:
    v231 = sub_268972FF0(v50, v226);

    v83 = objc_opt_self();
    v84 = [v83 autoupdatingCurrentLocale];
    v85 = v217;
    sub_268B346A4();

    v86 = v219;
    sub_268B34704();
    v87 = (v228 + 8);
    v88 = *(v228 + 1);
    v88(v85, v225);
    v89 = v218;
    sub_268B346E4();
    (v220)[1](v86, v223);
    v90 = sub_268B34694();
    if (__swift_getEnumTagSinglePayload(v89, 1, v90) == 1)
    {
      sub_26894DD8C(v89, &qword_2802A6558, &qword_268B3F888);
      v91 = v229;
      v92 = v233;
LABEL_46:
      v173 = v216;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v174 = __swift_project_value_buffer(v92, qword_2802CDA10);
      (*(v232 + 16))(v173, v174, v92);

      v175 = sub_268B37A34();
      v176 = sub_268B37F04();

      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        *v177 = 138412290;
        v179 = sub_268B37CE4();
        *(v177 + 4) = v179;
        *v178 = v179;
        _os_log_impl(&dword_2688BB000, v175, v176, "Unable to autoselect a language, returning filteredOptions: %@", v177, 0xCu);
        sub_26894DD8C(v178, &qword_2802A6420, &unk_268B3C680);
        MEMORY[0x26D6266E0](v178, -1, -1);
        MEMORY[0x26D6266E0](v177, -1, -1);
      }

      (*(v232 + 8))(v173, v92);
      v91(v231, 0);
    }

    v219 = v88;
    v220 = v83;
    v228 = v87;
    v224 = sub_268B34684();
    v97 = v96;
    (*(*(v90 - 8) + 8))(v89, v90);
    v92 = v233;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v98 = __swift_project_value_buffer(v92, qword_2802CDA10);
    v99 = *(v232 + 16);
    v100 = v214;
    v222 = v232 + 16;
    v223 = v98;
    v99(v214);

    v101 = sub_268B37A34();
    v102 = sub_268B37F04();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v236 = v104;
      v105 = v224;
      v106 = v232;
      *v103 = 136446210;
      *(v103 + 4) = sub_26892CDB8(v105, v97, &v236);
      _os_log_impl(&dword_2688BB000, v101, v102, "Searching for matching language using systemLanguage: %{public}s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      v107 = v104;
      v92 = v233;
      MEMORY[0x26D6266E0](v107, -1, -1);
      MEMORY[0x26D6266E0](v103, -1, -1);

      v221 = *(v106 + 8);
      v108 = v221(v100, v92);
    }

    else
    {

      v221 = *(v232 + 8);
      v108 = v221(v100, v92);
      v105 = v224;
    }

    MEMORY[0x28223BE20](v108);
    *(&v201 - 4) = v105;
    *(&v201 - 3) = v97;
    *(&v201 - 2) = v226;
    v109 = v215;
    sub_2688C9440(sub_268975E98, (&v201 - 6), v231);
    v110 = v234;
    if (__swift_getEnumTagSinglePayload(v109, 1, v234) == 1)
    {
      sub_26894DD8C(v109, &qword_2802A6550, &qword_268B3F880);
      v111 = [v220 autoupdatingCurrentLocale];
      v112 = v209;
      sub_268B346A4();

      v113 = v211;
      sub_268B346D4();
      (v219)(v112, v225);
      v114 = sub_268B346C4();
      if (__swift_getEnumTagSinglePayload(v113, 1, v114) == 1)
      {

        sub_26894DD8C(v113, &qword_2802A6548, &qword_268B3F878);
LABEL_45:
        v91 = v229;
        goto LABEL_46;
      }

      v147 = sub_268B34684();
      v149 = v148;
      (*(*(v114 - 8) + 8))(v113, v114);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
      v150 = swift_allocObject();
      *(v150 + 16) = xmmword_268B3BBD0;
      *(v150 + 32) = v105;
      *(v150 + 40) = v97;
      *(v150 + 48) = v147;
      *(v150 + 56) = v149;
      v236 = v150;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
      sub_268975ED4();
      v151 = sub_268B37BA4();
      v153 = v152;

      v154 = sub_268B36C14();
      v155 = sub_26892E200(v151, v153, v154);
      v157 = v156;

      if (!v157)
      {

        v92 = v233;
        goto LABEL_45;
      }

      v158 = v205;
      v159 = v233;
      v228 = v99;
      (v99)(v205, v223, v233);

      v160 = sub_268B37A34();
      v161 = sub_268B37F04();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        LODWORD(v220) = v161;
        v163 = v162;
        v236 = swift_slowAlloc();
        v225 = v155;
        v164 = v236;
        *v163 = 136315650;
        v165 = sub_26892CDB8(v224, v97, &v236);

        *(v163 + 4) = v165;
        *(v163 + 12) = 2082;
        v166 = sub_26892CDB8(v151, v153, &v236);

        *(v163 + 14) = v166;
        *(v163 + 22) = 2082;
        *(v163 + 24) = sub_26892CDB8(v225, v157, &v236);
        _os_log_impl(&dword_2688BB000, v160, v220, "Unable to find matching language using system language: %s. Searching for match with system language/region: %{public}s using mapped languageIdentifier: %{public}s", v163, 0x20u);
        swift_arrayDestroy();
        v167 = v164;
        v155 = v225;
        MEMORY[0x26D6266E0](v167, -1, -1);
        MEMORY[0x26D6266E0](v163, -1, -1);

        v168 = v205;
      }

      else
      {

        v168 = v158;
      }

      v180 = v221(v168, v159);
      v92 = v159;
      v110 = v234;
      v181 = v204;
      MEMORY[0x28223BE20](v180);
      *(&v201 - 4) = v155;
      *(&v201 - 3) = v157;
      *(&v201 - 2) = v226;
      v182 = v203;
      sub_2688C9440(sub_268975F80, (&v201 - 6), v231);

      if (__swift_getEnumTagSinglePayload(v182, 1, v110) == 1)
      {
        sub_26894DD8C(v182, &qword_2802A6550, &qword_268B3F880);
        goto LABEL_45;
      }

      v183 = v235;
      v184 = v227;
      (*(v235 + 4))(v227, v182, v110);
      (v228)(v181, v223, v92);
      v185 = v202;
      v234 = *(v183 + 2);
      (v234)(v202, v184, v110);
      v186 = sub_268B37A34();
      v187 = sub_268B37F04();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v236 = v189;
        *v188 = 136446210;
        sub_268975F38(&qword_2802A7370, MEMORY[0x277D5F818], MEMORY[0x277D5F820]);
        v190 = sub_268B38404();
        v191 = v185;
        v193 = v192;
        v125 = *(v235 + 1);
        v125(v191, v110);
        v194 = sub_26892CDB8(v190, v193, &v236);

        *(v188 + 4) = v194;
        _os_log_impl(&dword_2688BB000, v186, v187, "Auto selected %{public}s", v188, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v189);
        MEMORY[0x26D6266E0](v189, -1, -1);
        v195 = v188;
        v183 = v235;
        MEMORY[0x26D6266E0](v195, -1, -1);

        v196 = v233;
        v197 = v204;
      }

      else
      {

        v125 = *(v183 + 1);
        v125(v185, v110);
        v197 = v181;
        v196 = v92;
      }

      v221(v197, v196);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A70, qword_268B3F890);
      v198 = (v183[80] + 32) & ~v183[80];
      v199 = swift_allocObject();
      *(v199 + 16) = xmmword_268B3BBC0;
      v200 = v227;
      (v234)(v199 + v198, v227, v110);
      v229(v199, 1);

      v171 = v200;
    }

    else
    {

      v115 = v235;
      v116 = v212;
      (*(v235 + 4))(v212, v109, v110);
      (v99)(v213, v223, v92);
      v117 = v210;
      v231 = *(v115 + 2);
      (v231)(v210, v116, v110);
      v118 = sub_268B37A34();
      v119 = sub_268B37F04();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v236 = v121;
        *v120 = 136446210;
        sub_268975F38(&qword_2802A7370, MEMORY[0x277D5F818], MEMORY[0x277D5F820]);
        v122 = sub_268B38404();
        v124 = v123;
        v125 = *(v235 + 1);
        v125(v117, v110);
        v126 = sub_26892CDB8(v122, v124, &v236);
        v116 = v212;

        *(v120 + 4) = v126;
        _os_log_impl(&dword_2688BB000, v118, v119, "Auto selected %{public}s", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v121);
        MEMORY[0x26D6266E0](v121, -1, -1);
        v127 = v120;
        v115 = v235;
        MEMORY[0x26D6266E0](v127, -1, -1);

        v128 = v233;
        v129 = v213;
      }

      else
      {

        v125 = *(v115 + 1);
        v125(v117, v110);
        v129 = v213;
        v128 = v92;
      }

      v221(v129, v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A70, qword_268B3F890);
      v169 = (v115[80] + 32) & ~v115[80];
      v170 = swift_allocObject();
      *(v170 + 16) = xmmword_268B3BBC0;
      (v231)(v170 + v169, v116, v110);
      v229(v170, 1);

      v171 = v116;
    }

    v172 = v110;
    return (v125)(v171, v172);
  }

  v54 = 0;
  v77 = v50 + ((v235[80] + 32) & ~v235[80]);
  v56 = v235 + 16;
  v78 = (v235 + 8);
  while (1)
  {
    if (v54 >= *(v50 + 16))
    {
      __break(1u);
      goto LABEL_59;
    }

    v79 = *(v235 + 2);
    v79(v34, v77 + *(v235 + 9) * v54, v51);
    if (sub_268B37294())
    {
      if (sub_268B37214() == 1869903201 && v80 == 0xE400000000000000)
      {

        v51 = v234;
        goto LABEL_16;
      }

      v82 = sub_268B38444();

      v51 = v234;
      if ((v82 & 1) == 0)
      {
        break;
      }
    }

LABEL_16:
    ++v54;
    (*v78)(v34, v51);
    if (v76 == v54)
    {
      goto LABEL_17;
    }
  }

  v130 = v208;
  (*(v235 + 4))(v208, v34, v51);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v131 = v233;
  v132 = __swift_project_value_buffer(v233, qword_2802CDA10);
  v133 = v232;
  v134 = v207;
  (*(v232 + 16))(v207, v132, v131);
  v135 = v206;
  v79(v206, v130, v51);
  v136 = sub_268B37A34();
  v137 = v51;
  v138 = sub_268B37F04();
  if (os_log_type_enabled(v136, v138))
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v236 = v140;
    *v139 = 136315138;
    sub_268975F38(&qword_2802A7370, MEMORY[0x277D5F818], MEMORY[0x277D5F820]);
    v141 = sub_268B38404();
    v142 = v135;
    v144 = v143;
    LODWORD(v235) = v138;
    v125 = *v78;
    (*v78)(v142, v137);
    v145 = sub_26892CDB8(v141, v144, &v236);

    *(v139 + 4) = v145;
    _os_log_impl(&dword_2688BB000, v136, v235, "Found already enabled language: %s", v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v140);
    MEMORY[0x26D6266E0](v140, -1, -1);
    v146 = v139;
    v130 = v208;
    MEMORY[0x26D6266E0](v146, -1, -1);

    (*(v133 + 8))(v207, v233);
  }

  else
  {

    v125 = *v78;
    (*v78)(v135, v137);
    (*(v133 + 8))(v134, v233);
  }

  v229(0, 3);
  v171 = v130;
  v172 = v137;
  return (v125)(v171, v172);
}

uint64_t sub_268975B78()
{
  sub_268B37214();
  sub_268B37C34();

  sub_268B376F4();
  sub_26895EF2C();
  v0 = sub_268B380C4();

  return v0 & 1;
}

uint64_t sub_268975C48()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_3_8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v13 = *(v12 + 64);

  (*(v3 + 8))(v0 + v5, v1);
  v14 = sub_268B37704();
  if (!__swift_getEnumTagSinglePayload(v0 + v11, 1, v14))
  {
    OUTLINED_FUNCTION_70();
    (*(v15 + 8))(v0 + v11, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v11 + v13, v4 | v10 | 7);
}

uint64_t sub_268975DB0(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  OUTLINED_FUNCTION_3_8();
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860) - 8);
  v10 = v1[4];
  v11 = v1[5];
  v12 = (v1 + ((v6 + v8 + *(v9 + 80)) & ~*(v9 + 80)));

  return sub_268974084(a1, v10, v11, v1 + v6, v12, v3, v4);
}

unint64_t sub_268975ED4()
{
  result = qword_2802A5B50;
  if (!qword_2802A5B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5B48, &qword_268B416A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5B50);
  }

  return result;
}

uint64_t sub_268975F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String_optional __swiftcall UsoTask_increaseBy_common_Setting.verb()()
{
  v0 = 0x6573616572636E69;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268975FB4()
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v72 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v71 = v5;
  v6 = sub_268B360B4();
  OUTLINED_FUNCTION_1();
  v77 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v75 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6578, &qword_268B3FA60);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v74 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v65[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6580, &qword_268B3FA68);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_20_0();
  v73 = v17 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v65[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v65[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v65[-v27];
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v65[-v30];
  v76 = v0;
  v32 = sub_268A9EA48() - 2;
  result = 0;
  switch(v32)
  {
    case 0:
      return result;
    case 1:
      return 2;
    case 2:
      return 1;
    case 4:
      v70 = v2;
      sub_268B36534();
      if (v78 && (v34 = sub_268B35B94(), , v34))
      {
        sub_268B360A4();
      }

      else
      {
        OUTLINED_FUNCTION_12_10(v31, 1);
      }

      v35 = *(v77 + 104);
      v68 = *MEMORY[0x277D5EE50];
      v69 = v77 + 104;
      v67 = v35;
      v35(v1);
      OUTLINED_FUNCTION_12_10(v1, 0);
      v36 = *(v10 + 48);
      sub_26897743C(v31, v15);
      sub_26897743C(v1, &v15[v36]);
      OUTLINED_FUNCTION_1_17(v15);
      if (v38)
      {
        sub_2688EF38C(v1, &qword_2802A6580, &qword_268B3FA68);
        sub_2688EF38C(v31, &qword_2802A6580, &qword_268B3FA68);
        OUTLINED_FUNCTION_1_17(&v15[v36]);
        if (v38)
        {
          v37 = v15;
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      sub_26897743C(v15, v28);
      OUTLINED_FUNCTION_1_17(&v15[v36]);
      if (v38)
      {
        sub_2688EF38C(v1, &qword_2802A6580, &qword_268B3FA68);
        sub_2688EF38C(v31, &qword_2802A6580, &qword_268B3FA68);
        (*(v77 + 8))(v28, v6);
LABEL_16:
        sub_2688EF38C(v15, &qword_2802A6578, &qword_268B3FA60);
        goto LABEL_17;
      }

      (*(v77 + 32))(v75, &v15[v36], v6);
      OUTLINED_FUNCTION_2_14();
      sub_2689774AC(v56, v57, MEMORY[0x277D5EE60]);
      v66 = sub_268B37BB4();
      v58 = *(v77 + 8);
      v58(v75, v6);
      sub_2688EF38C(v1, &qword_2802A6580, &qword_268B3FA68);
      sub_2688EF38C(v31, &qword_2802A6580, &qword_268B3FA68);
      v58(v28, v6);
      sub_2688EF38C(v15, &qword_2802A6580, &qword_268B3FA68);
      if (v66)
      {
        return 0;
      }

LABEL_17:
      sub_268B36534();
      if (v78 && (v39 = sub_268B35B94(), , v39))
      {
        sub_268B360A4();
      }

      else
      {
        OUTLINED_FUNCTION_12_10(v25, 1);
      }

      v40 = v70;
      v41 = v73;
      v42 = v74;
      v67(v22, v68, v6);
      OUTLINED_FUNCTION_12_10(v22, 0);
      v43 = *(v10 + 48);
      sub_26897743C(v25, v42);
      sub_26897743C(v22, v42 + v43);
      OUTLINED_FUNCTION_1_17(v42);
      if (!v38)
      {
        sub_26897743C(v42, v41);
        OUTLINED_FUNCTION_1_17(v42 + v43);
        if (!v44)
        {
          v59 = v77;
          v60 = v42 + v43;
          v61 = v75;
          (*(v77 + 32))(v75, v60, v6);
          OUTLINED_FUNCTION_2_14();
          sub_2689774AC(v62, v63, MEMORY[0x277D5EE60]);
          LODWORD(v74) = sub_268B37BB4();
          v64 = *(v59 + 8);
          v64(v61, v6);
          sub_2688EF38C(v22, &qword_2802A6580, &qword_268B3FA68);
          sub_2688EF38C(v25, &qword_2802A6580, &qword_268B3FA68);
          v40 = v70;
          v64(v41, v6);
          sub_2688EF38C(v42, &qword_2802A6580, &qword_268B3FA68);
          if (v74)
          {
            return 0;
          }

LABEL_31:
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          v45 = __swift_project_value_buffer(v40, qword_2802CDA10);
          v47 = v71;
          v46 = v72;
          (*(v72 + 16))(v71, v45, v40);

          v48 = sub_268B37A34();
          v49 = sub_268B37EE4();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v78 = v51;
            *v50 = 136315138;
            v52 = sub_268B385B4();
            v54 = v40;
            v55 = sub_26892CDB8(v52, v53, &v78);

            *(v50 + 4) = v55;
            _os_log_impl(&dword_2688BB000, v48, v49, "Unable to determine setting name for task %s", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v51);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();

            (*(v46 + 8))(v47, v54);
          }

          else
          {

            (*(v46 + 8))(v47, v40);
          }

          return 3;
        }

        OUTLINED_FUNCTION_11_9(v22);
        OUTLINED_FUNCTION_11_9(v25);
        (*(v77 + 8))(v41, v6);
LABEL_30:
        sub_2688EF38C(v42, &qword_2802A6578, &qword_268B3FA60);
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_11_9(v22);
      OUTLINED_FUNCTION_11_9(v25);
      OUTLINED_FUNCTION_1_17(v42 + v43);
      if (!v38)
      {
        goto LABEL_30;
      }

      v37 = v42;
LABEL_26:
      sub_2688EF38C(v37, &qword_2802A6580, &qword_268B3FA68);
      return 0;
    default:
      return 3;
  }
}