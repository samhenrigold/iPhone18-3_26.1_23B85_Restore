void sub_268A2CE88()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v74 = v2;
  v75 = v3;
  v73 = v4;
  v77 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v78 = v13;
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v76 = v15 - v14;
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  *(&v69 + 1) = v24;
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v27);
  v70 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_78();
  v80 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v62 - v31;
  v33 = sub_268B350F4();
  v71 = *(v33 - 8);
  v72 = v33;
  (*(v71 + 16))(v32, v11);
  *&v32[*(v23 + 48)] = v9;
  v34 = qword_2802A4F30;
  v35 = v9;
  if (v34 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v36 = __swift_project_value_buffer(v16, qword_2802CDA10);
  (*(v18 + 16))(v22, v36, v16);
  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_14();
    *&v69 = v23;
    *v39 = 0;
    _os_log_impl(&dword_2688BB000, v37, v38, "SeekTimeHandleIntentStrategy#intentHandledResponse...", v39, 2u);
    v23 = v69;
    OUTLINED_FUNCTION_12();
  }

  (*(v18 + 8))(v22, v16);
  sub_26890C900(v1 + 264, v81);
  v66 = v83;
  v67 = v82;
  *&v69 = __swift_project_boxed_opaque_existential_1(v81, v82);
  v40 = v80;
  sub_2688F1FA4(v32, v80, &unk_2802A56E0, &unk_268B3CDF0);
  v68 = *(v40 + *(v23 + 48));
  if (sub_268B18100(v7))
  {
    sub_268921344();
    v42 = v41;

    if (v42[2])
    {
      v43 = v42[5];
      v64 = v42[4];
      v65 = v43;
    }

    else
    {
      OUTLINED_FUNCTION_6_19();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
  }

  v44 = *__swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
  if (v44)
  {
    v45 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v63) = [v44 BOOLForKey_];
  }

  else
  {
    HIDWORD(v63) = 0;
  }

  v46 = v76;
  sub_268A82B50(v7, v76);
  v47 = sub_2689F0948();
  v48 = v70;
  sub_2688F1FA4(v32, v70, &unk_2802A56E0, &unk_268B3CDF0);
  v49 = (*(*(&v69 + 1) + 80) + 40) & ~*(*(&v69 + 1) + 80);
  v50 = v32;
  v51 = v7;
  v52 = (v26 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v53[2] = v51;
  v53[3] = v1;
  v53[4] = v74;
  sub_2689186C8(v48, v53 + v49);
  v54 = (v53 + v52);
  v55 = v75;
  *v54 = v73;
  v54[1] = v55;
  v56 = v51;

  LOBYTE(v60) = v47 & 1;
  v57 = v1 + 104;
  v58 = v80;
  v59 = v68;
  sub_268A83648(v80, v68, v64, v65, HIDWORD(v63), v77, v46, v57, v60, sub_268A30914, v53, v67, v66, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);

  (*(v78 + 8))(v46, v79);
  sub_2688C058C(v50, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v71 + 8))(v58, v72);
  __swift_destroy_boxed_opaque_existential_0Tm(v81);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A2D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v55 = a7;
  v56 = a6;
  v52 = a4;
  v61 = a2;
  v62 = a3;
  v54 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = v46 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v47);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v18 = sub_268B34E24();
  v58 = *(v18 - 8);
  v59 = v18;
  MEMORY[0x28223BE20](v18);
  v57 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v51 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v46 - v24;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v49 = *(v21 + 16);
  v50 = v26;
  v49(v25);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v53 = v11;
    v30 = a5;
    v31 = v21;
    v32 = v29;
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "SeekTimeHandleIntentStrategy#intentHandledResponse output has been created.", v29, 2u);
    v33 = v32;
    v21 = v31;
    a5 = v30;
    v11 = v53;
    MEMORY[0x26D6266E0](v33, -1, -1);
  }

  v34 = *(v21 + 8);
  v53 = (v21 + 8);
  v48 = v34;
  v34(v25, v20);
  sub_268947F08();
  v46[1] = v35;
  __swift_project_boxed_opaque_existential_1((v62 + 144), *(v62 + 168));
  (*(v58 + 104))(v57, *MEMORY[0x277D5BC10], v59);
  sub_2688F1FA4(a5, v11, &unk_2802A56E0, &unk_268B3CDF0);

  v36 = sub_268B350F4();
  v37 = *(v36 - 8);
  (*(v37 + 32))(v17, v11, v36);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v36);
  v38 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v38);
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

  v39 = v57;
  v40 = v60;
  sub_2688E3D1C();

  sub_2688C058C(v40, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
  (*(v58 + 8))(v39, v59);
  __swift_project_boxed_opaque_existential_1((v62 + 144), *(v62 + 168));
  sub_26894B450();
  v41 = v51;
  (v49)(v51, v50, v20);
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "SeekTimeHandleIntentStrategy#intentHandledResponse returning output", v44, 2u);
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v48(v41, v20);
  return v56(v54);
}

uint64_t sub_268A2DF9C(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, char *a9, uint64_t a10)
{
  v83 = a8;
  v84 = a7;
  v81 = a6;
  v82 = a5;
  v89 = a3;
  LODWORD(v78) = a2;
  v85 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v70 - v12;
  v77 = sub_268B35044();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v73 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v71 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v72 = &v70 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v70 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v70 - v32;
  v34 = sub_268B34E24();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v79 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v70 - v39;
  v87 = v38;
  v88 = a4;
  v86 = v35;
  if (v78)
  {
    v41 = v81;
    sub_268B36E84();
    if (!v42)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v58 = v86;
    v57 = v87;
    v59 = v73;
    v60 = v71;
    __swift_project_boxed_opaque_existential_1(v88 + 18, v88[21]);
    (*(v58 + 104))(v79, *MEMORY[0x277D5BC00], v57);
    sub_2688F1FA4(v41, v21, &unk_2802A56E0, &unk_268B3CDF0);

    v61 = sub_268B350F4();
    v62 = *(v61 - 8);
    v63 = v72;
    (*(v62 + 32))(v72, v21, v61);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v61);
    v64 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v64);
    sub_2688F1FA4(v63, v60, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
    {
      sub_2688C058C(v60, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v62 + 8))(v60, v61);
    }

    v65 = v79;
    sub_2688E3D1C();

    sub_2688C058C(v59, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v63, &unk_2802A57B0, &unk_268B3CE00);
    (*(v86 + 8))(v65, v87);
    __swift_project_boxed_opaque_existential_1(v88 + 18, v88[21]);
    sub_2688C2ECC();
    v66 = swift_allocError();
    *v67 = 54;
    sub_26894B450();

    v92[0] = v85;
    v95 = 1;
    v68 = v85;
  }

  else
  {
    v79 = a9;
    sub_268947F08();
    v73 = v43;
    v78 = v44;
    __swift_project_boxed_opaque_existential_1(a4 + 18, a4[21]);
    (*(v35 + 104))(v40, *MEMORY[0x277D5BC10], v34);
    sub_2688F1FA4(v81, v23, &unk_2802A56E0, &unk_268B3CDF0);

    v45 = sub_268B350F4();
    v46 = *(v45 - 8);
    (*(v46 + 32))(v33, v23, v45);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v45);
    v47 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v47);
    sub_2688F1FA4(v33, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v45) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v46 + 8))(v31, v45);
    }

    v48 = v89;
    v49 = v80;
    sub_2688E3D1C();

    sub_2688C058C(v49, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v33, &unk_2802A57B0, &unk_268B3CE00);
    (*(v86 + 8))(v40, v87);
    v50 = v88;
    __swift_project_boxed_opaque_existential_1(v88 + 18, v88[21]);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v92[0] = v85;

    sub_268948494(v92);
    sub_2688C058C(v92, &byte_2802A6450, &byte_268B3BE10);
    __swift_project_boxed_opaque_existential_1(v50 + 18, v50[21]);
    sub_26894B450();
    v51 = v74;
    sub_268A82B50(v48, v74);
    v93 = sub_268B354F4();
    v94 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v92);
    v52 = 0;
    if (sub_2689F0948())
    {
      v52 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688C063C();
      v53 = sub_268B38064();
      [v52 setMinimumAutoDismissalTimeInMs_];

      [v52 setPremptivelyResumeMedia_];
    }

    __swift_project_boxed_opaque_existential_1(v50 + 2, v50[5]);
    sub_268B34CA4();
    v54 = v75;
    v55 = v76;
    v56 = v77;
    (*(v75 + 16))(v76, v51, v77);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
    v91 = 0;
    memset(v90, 0, sizeof(v90));
    sub_268B34EF4();

    sub_2688C058C(v90, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v55, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v54 + 8))(v51, v56);
    v95 = 0;
  }

  v84(v92);
  return sub_2688C058C(v92, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A2EB1C()
{
  OUTLINED_FUNCTION_26();
  v79 = v0;
  v76 = v1;
  v77 = v2;
  v75 = v3;
  v5 = v4;
  v7 = v6;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v66 = v9;
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v65 = v11 - v10;
  OUTLINED_FUNCTION_9();
  v12 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v80 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v20 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v68 = *(v14 + 16);
  v69 = v20;
  v68(v19);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_14();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse()", v23, 2u);
    OUTLINED_FUNCTION_12();
  }

  v25 = *(v14 + 8);
  v24 = v14 + 8;
  v72 = v25;
  v25(v19, v12);
  v26 = sub_268B36E84();
  if (v27)
  {
    v70 = v27;
    v71 = v26;
  }

  else
  {
    v28 = OBJC_IVAR___SeekTimeIntentResponse_code;
    swift_beginAccess();
    v83[0] = *(v5 + v28);
    sub_268B38404();
    sub_268947F08();
    v70 = v30;
    v71 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  OUTLINED_FUNCTION_20_14();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_268B3BBC0;
  *(v31 + 32) = 0xD000000000000010;
  *(v31 + 40) = 0x8000000268B572E0;
  v32 = OBJC_IVAR___SeekTimeIntentResponse_code;
  swift_beginAccess();
  v83[0] = *(v5 + v32);
  sub_268B38404();
  v78 = v5;
  v33 = sub_268B36E94();
  v35 = v34;

  *(v31 + 72) = MEMORY[0x277D837D0];
  *(v31 + 48) = v33;
  *(v31 + 56) = v35;
  v74 = sub_268B37B84();
  sub_268B36754();
  v36 = sub_268B36734();
  v73 = v24;
  if (!v36)
  {
    v36 = sub_268B36744();
  }

  v37 = v36;
  v38 = v80;
  (v68)(v80, v69, v12);

  v39 = sub_268B37A34();
  v40 = sub_268B37ED4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v69 = v7;
    v42 = v41;
    v43 = swift_slowAlloc();
    v83[0] = v43;
    *v42 = 136315138;
    sub_268B36714();
    v68 = v12;
    v44 = v32;
    v45 = v65;
    sub_268B36B14();

    v46 = sub_268B36784();
    v48 = v47;
    v49 = v45;
    v32 = v44;
    (*(v66 + 8))(v49, v67);
    v50 = sub_26892CDB8(v46, v48, v83);

    *(v42 + 4) = v50;
    _os_log_impl(&dword_2688BB000, v39, v40, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    OUTLINED_FUNCTION_12();
    v7 = v69;
    OUTLINED_FUNCTION_12();

    v51 = v80;
    v52 = v68;
  }

  else
  {

    v51 = v38;
    v52 = v12;
  }

  v72(v51, v52);
  v54 = v78;
  v53 = v79;
  OUTLINED_FUNCTION_20_14();
  v55 = swift_allocObject();
  v55[2] = v37;
  v55[3] = v53;
  v56 = v77;
  v55[4] = v76;
  v55[5] = v7;
  v57 = v70;
  v55[6] = v71;
  v55[7] = v57;
  v55[8] = v75;
  v55[9] = v56;
  LOWORD(v82[0]) = 0;
  BYTE2(v82[0]) = 0;
  v82[1] = 0;
  v82[2] = 0;
  v82[3] = 1;
  memset(&v82[4], 0, 61);

  v58 = v7;

  v59 = sub_268B18100(v58);
  if (v59)
  {
    v60 = v59;
    if (sub_2688EFD0C())
    {
      memcpy(v83, &v82[1], 0x51uLL);
      sub_2688C058C(v83, &qword_2802A5C88, qword_268B418C0);
      LODWORD(v82[1]) = 0;
      memset(&v82[2], 0, 72);
      LOBYTE(v82[11]) = 1;
      sub_268AE3BC0(v60);
    }
  }

  v61 = *(v54 + v32);
  v62 = *(v53 + 56);
  if (v61 == 101)
  {
    v63 = v62[5];
    v64 = v62[6];
    __swift_project_boxed_opaque_existential_1(v62 + 2, v63);
    sub_2689CE860(0xD00000000000002BLL, 0x8000000268B59570, v74, sub_268A3055C, v55, v63, v64);

LABEL_22:

    goto LABEL_23;
  }

  if (v61 != 100)
  {
    memcpy(v83, v82, 0x5DuLL);
    OUTLINED_FUNCTION_4_26();
    sub_268ABC88C();

    goto LABEL_22;
  }

  memcpy(v83, v82, 0x5DuLL);
  OUTLINED_FUNCTION_4_26();
  sub_268AC6530();

LABEL_23:

  memcpy(v81, v82, 0x5DuLL);
  sub_268A30574(v81);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A2F2A8(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v112 = a8;
  v110 = a6;
  v111 = a7;
  v108 = a3;
  v109 = a5;
  v113 = a4;
  v115 = a2;
  v102 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v92 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = MEMORY[0x28223BE20](v106);
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
  v105 = &v92 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v92 - v26;
  MEMORY[0x28223BE20](v25);
  v96 = &v92 - v28;
  v107 = sub_268B34E24();
  v114 = *(v107 - 8);
  v29 = MEMORY[0x28223BE20](v107);
  v104 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v103 = &v92 - v31;
  v32 = sub_268B37A54();
  v118 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v99 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v92 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v92 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v40);
  v42 = (&v92 - v41);
  sub_2688F1FA4(v102, &v92 - v41, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v42;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v32, qword_2802CDA10);
    (*(v118 + 16))(v39, v44, v32);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v107;
    v49 = v96;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v50, 2u);
      MEMORY[0x26D6266E0](v50, -1, -1);
    }

    (*(v118 + 8))(v39, v32);
    __swift_project_boxed_opaque_existential_1(v115 + 18, v115[21]);
    (*(v114 + 104))(v103, *MEMORY[0x277D5BC00], v48);
    v51 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v51);
    v52 = *MEMORY[0x277D5B8E0];
    v53 = sub_268B34B94();
    v54 = v97;
    (*(*(v53 - 8) + 104))(v97, v52, v53);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v53);
    sub_2688F1FA4(v49, v27, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v51) == 1)
    {
      sub_2688C058C(v27, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v51 - 8) + 8))(v27, v51);
    }

    v72 = v103;
    sub_2688E3D1C();

    sub_2688C058C(v54, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v114 + 8))(v72, v48);
    __swift_project_boxed_opaque_existential_1(v115 + 18, v115[21]);
    sub_2688C2ECC();
    v73 = swift_allocError();
    *v74 = -66;
    sub_26894B450();

    v75 = swift_allocError();
    *v76 = -66;
    v116[0] = v75;
    v117 = 1;
    v111(v116);

    return sub_2688C058C(v116, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v42, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v32, qword_2802CDA10);
    v56 = *(v118 + 16);
    v97 = v55;
    v96 = v56;
    (v56)(v37);
    v57 = sub_268B37A34();
    v58 = sub_268B37ED4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2688BB000, v57, v58, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v59, 2u);
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    v60 = *(v118 + 8);
    v118 += 8;
    v93 = v60;
    v60(v37, v32);
    v61 = __swift_project_boxed_opaque_existential_1(v115 + 18, v115[21]);
    v62 = v107;
    (*(v114 + 104))(v104, *MEMORY[0x277D5BC00], v107);
    v103 = v15;
    v63 = v94;
    sub_2688F1FA4(v15, v94, &unk_2802A56E0, &unk_268B3CDF0);

    v64 = sub_268B350F4();
    v65 = *(v64 - 8);
    v66 = v105;
    (*(v65 + 32))(v105, v63, v64);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v64);
    v67 = sub_268B34B94();
    v68 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v67);
    v69 = *v61;
    v70 = v95;
    sub_2688F1FA4(v66, v95, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v64);
    v102 = v65;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v70, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v94 = v69;
      sub_268B350B4();
      (*(v65 + 8))(v70, v64);
    }

    v78 = v104;
    sub_2688E3D1C();

    sub_2688C058C(v68, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v105, &unk_2802A57B0, &unk_268B3CE00);
    (*(v114 + 8))(v78, v62);
    __swift_project_boxed_opaque_existential_1(v115 + 18, v115[21]);
    sub_2688C2ECC();
    v79 = swift_allocError();
    *v80 = 56;
    sub_26894B450();

    v81 = v99;
    (v96)(v99, v97, v32);
    v82 = sub_268B37A34();
    v83 = sub_268B37ED4();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_2688BB000, v82, v83, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v84, 2u);
      MEMORY[0x26D6266E0](v84, -1, -1);
    }

    v93(v81, v32);
    v85 = v115[36];
    v86 = v115[37];
    __swift_project_boxed_opaque_existential_1(v115 + 33, v85);
    v87 = v103;
    v88 = v100;
    sub_2688F1FA4(v103, v100, &unk_2802A56E0, &unk_268B3CDF0);
    v89 = *(v88 + *(v106 + 48));
    v90 = v101;
    sub_268A82B50(v113, v101);
    v91 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v91);
    (*(v86 + 40))(v88, v89, v90, v111, v112, v85, v86);

    sub_2688C058C(v90, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v87, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v102 + 8))(v88, v64);
  }
}

uint64_t sub_268A30060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A300DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A30158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A301F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A30274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A30314()
{
  if (qword_2802A4EC8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9B0;

  return v1;
}

uint64_t sub_268A30370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A303C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A30414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A30480(uint64_t a1)
{
  result = sub_268A304A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A304A8()
{
  result = qword_2802A73C0;
  if (!qword_2802A73C0)
  {
    type metadata accessor for SeekTimeHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73C0);
  }

  return result;
}

uint64_t sub_268A30500()
{

  OUTLINED_FUNCTION_20_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268A305F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = (((((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = v1 + v4;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v7);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v3 | 7);
}

uint64_t sub_268A30728(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_268A2DF9C(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_268A30804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = v1 + v4;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v7);

  return MEMORY[0x2821FE8E8](v1, v6 + 16, v3 | 7);
}

uint64_t sub_268A30914(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A2D434(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A309D8()
{

  OUTLINED_FUNCTION_20_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_13_12(uint64_t a1)
{
  *(v1 - 192) = a1;
  *(v1 - 152) = 1;
  return v1 - 192;
}

void sub_268A30B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v102 = v31;
  v101 = v32;
  v34 = v33;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v112 = v36;
  v113 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20_0();
  v99 = v37 - v38;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v100 = v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  v98 = v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  v110 = v44;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v45);
  v105 = &v98 - v46;
  OUTLINED_FUNCTION_0_3();
  v47 = swift_allocObject();
  v104 = v22;
  *(v47 + 16) = v22;
  *(v47 + 24) = a21;
  OUTLINED_FUNCTION_10_18();
  v48 = swift_allocObject();
  *(v48 + 16) = v30;
  *(v48 + 24) = v28;
  *(v48 + 32) = v26;
  v103 = v24;
  *(v48 + 40) = v24;
  *(v48 + 48) = sub_2688EF17C;
  *(v48 + 56) = v47;
  OUTLINED_FUNCTION_0_3();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_268958D1C;
  *(v49 + 24) = v48;
  v106 = v49;
  v50 = sub_2688EFD0C();
  v108 = a21;
  OUTLINED_FUNCTION_23_14();
  swift_retain_n();
  v51 = v30;
  v52 = v28;
  v109 = v26;
  swift_bridgeObjectRetain_n();
  v107 = v47;
  swift_retain_n();
  v53 = v51;
  v111 = v52;

  v54 = 0;
  do
  {
    if (v50 == v54)
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_34;
      }

      goto LABEL_11;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x26D625BD0](v54, v34);
    }

    else
    {
      if (v54 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v55 = *(v34 + 8 * v54 + 32);
    }

    v56 = v55;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_11:
      __swift_project_value_buffer(v113, qword_2802CDA10);
      v58 = v112;
      v59 = *(v112 + 16);
      v60 = v105;
      v61 = OUTLINED_FUNCTION_9_17();
      v59(v61);
      v62 = sub_268B37A34();
      v63 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v63))
      {
        v64 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v64);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v65, v66, "Local device not found in devices to control. Skipping prepareForAudioHandoff");
        v60 = v105;
        OUTLINED_FUNCTION_12();
      }

      v67 = v58 + 8;
      v68 = *(v58 + 8);
      v112 = v67;
      v68(v60, v113);
      v69 = OUTLINED_FUNCTION_9_17();
      v59(v69);
      OUTLINED_FUNCTION_23_14();
      swift_retain_n();
      v70 = v53;
      v71 = v111;

      v72 = sub_268B37A34();
      v73 = sub_268B37F04();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 67109120;
        *(v74 + 4) = 1;
        _os_log_impl(&dword_2688BB000, v72, v73, "SkipContentIntentHandler#sharedIntentDirectionHandler prepareForAudioHandoff completed with: %{BOOL}d", v74, 8u);
        OUTLINED_FUNCTION_12();
      }

      v68(v110, v113);
LABEL_16:

      sub_268957B10();

      OUTLINED_FUNCTION_23_14();

      goto LABEL_24;
    }

    v57 = sub_268983434(v55);

    ++v54;
  }

  while ((v57 & 1) == 0);
  v75 = v102;
  if ((v101 & 1) != 0 && (sub_268A32440() & 1) == 0)
  {
    v110 = v53;
    v84 = v112;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v113, qword_2802CDA10);
    v85 = *(v84 + 16);
    v86 = v98;
    v87 = OUTLINED_FUNCTION_9_17();
    v85(v87);
    v88 = sub_268B37A34();
    v89 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v89))
    {
      v90 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v90);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v91, v92, "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff");
      v86 = v98;
      OUTLINED_FUNCTION_12();
    }

    v93 = *(v112 + 8);
    v112 += 8;
    v93(v86, v113);
    v94 = OUTLINED_FUNCTION_9_17();
    v85(v94);
    OUTLINED_FUNCTION_23_14();
    swift_retain_n();
    v53 = v110;
    v70 = v110;
    v71 = v111;

    v95 = sub_268B37A34();
    v96 = sub_268B37F04();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 67109120;
      *(v97 + 4) = 1;
      _os_log_impl(&dword_2688BB000, v95, v96, "SkipContentIntentHandler#sharedIntentDirectionHandler prepareForAudioHandoff completed with: %{BOOL}d", v97, 8u);
      OUTLINED_FUNCTION_12();
    }

    v93(v99, v113);
    goto LABEL_16;
  }

  v76 = v112;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v113, qword_2802CDA10);
  v77 = v100;
  (*(v76 + 16))(v100);
  v78 = sub_268B37A34();
  v79 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v79))
  {
    v80 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v80);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v81, v82, "Local device found in devices to control. Asking to prepareForAudioHandoff");
    OUTLINED_FUNCTION_83_0();
  }

  (*(v76 + 8))(v77, v113);
  OUTLINED_FUNCTION_18_9((v75 + 56));
  OUTLINED_FUNCTION_26_11(sub_268A325F4, v106);

LABEL_24:
  OUTLINED_FUNCTION_23_14();

  swift_bridgeObjectRelease_n();
  v83 = v111;

  OUTLINED_FUNCTION_23();
}

void sub_268A31290()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v45 = v4;
  v44 = v5;
  v7 = v6;
  v48 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v43 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  OUTLINED_FUNCTION_0_3();
  v19 = swift_allocObject();
  v46 = v3;
  v47 = v19;
  *(v19 + 16) = v3;
  *(v19 + 24) = v1;
  v20 = sub_2688EFD0C();
  v49 = v1;

  v21 = 0;
  do
  {
    if (v20 == v21)
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_11;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x26D625BD0](v21, v7);
    }

    else
    {
      if (v21 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v22 = *(v7 + 8 * v21 + 32);
    }

    v23 = v22;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_11:
      v25 = v48;
      OUTLINED_FUNCTION_82(v48, qword_2802CDA10);
      (*(v9 + 16))(v18);
      v26 = sub_268B37A34();
      v27 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v27))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v28, v29, "Local device not found in devices to control. Skipping prepareForAudioHandoff");
        OUTLINED_FUNCTION_12();
      }

      (*(v9 + 8))(v18, v25);
LABEL_14:
      sub_268958234();
      goto LABEL_22;
    }

    v24 = sub_268983434(v22);

    ++v21;
  }

  while ((v24 & 1) == 0);
  v30 = v45;
  if ((v44 & 1) != 0 && (sub_268A32440() & 1) == 0)
  {
    v36 = v48;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v36, qword_2802CDA10);
    v37 = v43;
    (*(v9 + 16))(v43);
    v38 = sub_268B37A34();
    v39 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v39))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_28_3(&dword_2688BB000, v40, v41, "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff");
      OUTLINED_FUNCTION_12();
    }

    (*(v9 + 8))(v37, v36);
    goto LABEL_14;
  }

  v31 = v48;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v31, qword_2802CDA10);
  (*(v9 + 16))(v13);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v33))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_28_3(&dword_2688BB000, v34, v35, "Local device found in devices to control. Asking to prepareForAudioHandoff");
    OUTLINED_FUNCTION_12();
  }

  (*(v9 + 8))(v13, v31);
  OUTLINED_FUNCTION_18_9((v30 + 56));
  OUTLINED_FUNCTION_26_11(sub_268A324F0, v47);
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_268A31684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v24 = v23;
  v89 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v78 = v31;
  v77 = v32;
  v34 = v33;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v83 = v36;
  v84 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20_0();
  v81 = v37 - v38;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v76 = v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  v79 = &v76 - v42;
  OUTLINED_FUNCTION_0_3();
  v43 = swift_allocObject();
  v80 = v22;
  *(v43 + 16) = v22;
  *(v43 + 24) = a21;
  OUTLINED_FUNCTION_0_3();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_268958D98;
  *(v44 + 24) = v43;
  OUTLINED_FUNCTION_10_18();
  v45 = swift_allocObject();
  v45[2] = v30;
  v45[3] = v28;
  v45[4] = v26;
  v45[5] = sub_2688EF17C;
  v45[6] = v44;
  v45[7] = v24;
  v85 = v45;
  v46 = sub_2688EFD0C();
  v86 = a21;
  swift_retain_n();
  v47 = v43;
  swift_retain_n();
  v82 = v30;
  v48 = v28;
  v87 = v26;

  v88 = v44;

  v49 = 0;
  do
  {
    if (v46 == v49)
    {
      v26 = v83;
      v47 = v84;
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_11;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x26D625BD0](v49, v34);
    }

    else
    {
      if (v49 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v50 = *(v34 + 8 * v49 + 32);
    }

    v51 = v50;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_11:
      OUTLINED_FUNCTION_82(v47, qword_2802CDA10);
      v52 = v79;
      (*(v26 + 16))(v79);
      v53 = sub_268B37A34();
      v54 = sub_268B37F04();
      v55 = v48;
      if (OUTLINED_FUNCTION_115_0(v54))
      {
        v56 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v56);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v57, v58, "Local device not found in devices to control. Skipping prepareForAudioHandoff");
        OUTLINED_FUNCTION_12();
      }

      (*(v26 + 8))(v52, v47);

      OUTLINED_FUNCTION_20_17();
LABEL_14:
      sub_2689D74A4();

      goto LABEL_22;
    }

    v26 = sub_268983434(v50);

    ++v49;
  }

  while ((v26 & 1) == 0);
  v59 = v78;
  if ((v77 & 1) != 0 && (sub_268A32440() & 1) == 0)
  {
    v55 = v48;
    v68 = v84;
    v69 = v83;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v68, qword_2802CDA10);
    v70 = v76;
    (*(v69 + 16))(v76);
    v71 = sub_268B37A34();
    v72 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v72))
    {
      v73 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v73);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v74, v75, "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff");
      OUTLINED_FUNCTION_83_0();
    }

    (*(v69 + 8))(v70, v68);

    OUTLINED_FUNCTION_20_17();
    goto LABEL_14;
  }

  v55 = v48;
  v61 = v84;
  v60 = v85;
  v62 = v83;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v61, qword_2802CDA10);
  (*(v62 + 16))(v81);
  v63 = sub_268B37A34();
  v64 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v64))
  {
    v65 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v65);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v66, v67, "Local device found in devices to control. Asking to prepareForAudioHandoff");
    OUTLINED_FUNCTION_83_0();
  }

  (*(v62 + 8))(v81, v61);
  OUTLINED_FUNCTION_18_9((v59 + 56));
  OUTLINED_FUNCTION_26_11(sub_268A325F0, v60);

LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_268A31BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v76 = v31;
  v75 = v32;
  v34 = v33;
  v35 = a21;
  v82 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v80 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_20_0();
  v74 = v38 - v39;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18();
  v73 = v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  v77 = &v73 - v43;
  OUTLINED_FUNCTION_10_18();
  v44 = swift_allocObject();
  v44[2] = v30;
  v44[3] = v28;
  v44[4] = v26;
  v44[5] = v24;
  v78 = v24;
  v44[6] = v22;
  v44[7] = a21;
  v45 = sub_2688EFD0C();
  v79 = v30;
  v81 = v28;
  v84 = v26;

  v83 = v22;

  v46 = 0;
  do
  {
    if (v45 == v46)
    {
      v35 = v77;
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_29;
      }

      goto LABEL_11;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x26D625BD0](v46, v34);
    }

    else
    {
      if (v46 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v47 = *(v34 + 8 * v46 + 32);
    }

    v48 = v47;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_11:
      v50 = v82;
      OUTLINED_FUNCTION_82(v82, qword_2802CDA10);
      v51 = v80;
      (*(v80 + 16))(v35);
      v52 = sub_268B37A34();
      v53 = sub_268B37F04();
      if (!OUTLINED_FUNCTION_19(v53))
      {
LABEL_14:

        (*(v51 + 8))(v35, v50);
        v58 = v79;
        v59 = v81;
        sub_2689D7F68();
        goto LABEL_22;
      }

      v54 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v54);
      v57 = "Local device not found in devices to control. Skipping prepareForAudioHandoff";
LABEL_13:
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v55, v56, v57);
      OUTLINED_FUNCTION_83_0();
      goto LABEL_14;
    }

    v49 = sub_268983434(v47);

    ++v46;
  }

  while ((v49 & 1) == 0);
  v60 = v76;
  if ((v75 & 1) != 0 && (sub_268A32440() & 1) == 0)
  {
    v50 = v82;
    v51 = v80;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v50, qword_2802CDA10);
    OUTLINED_FUNCTION_49_1();
    v35 = v73;
    v70(v73);
    v52 = sub_268B37A34();
    v71 = sub_268B37F04();
    if (!OUTLINED_FUNCTION_19(v71))
    {
      goto LABEL_14;
    }

    v72 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v72);
    v57 = "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff";
    goto LABEL_13;
  }

  v61 = v82;
  v62 = v80;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v61, qword_2802CDA10);
  OUTLINED_FUNCTION_49_1();
  v63 = v74;
  v64(v74);
  v65 = sub_268B37A34();
  v66 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v66))
  {
    v67 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v67);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v68, v69, "Local device found in devices to control. Asking to prepareForAudioHandoff");
    OUTLINED_FUNCTION_83_0();
  }

  (*(v62 + 8))(v63, v61);
  OUTLINED_FUNCTION_18_9((v60 + 56));
  OUTLINED_FUNCTION_26_11(sub_268A324EC, v44);
  v59 = v81;
  v58 = v79;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_268A32028()
{
  OUTLINED_FUNCTION_26();
  v46 = v0;
  v48 = v1;
  v47 = v2;
  v4 = v3;
  v49 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v45 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = sub_2688EFD0C();
  v17 = 0;
  while (v16 != v17)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x26D625BD0](v17, v4);
    }

    else
    {
      if (v17 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v18 = *(v4 + 8 * v17 + 32);
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v20 = sub_268983434(v18);

    ++v17;
    if (v20)
    {
      v28 = v48;
      if ((v47 & 1) != 0 && (sub_268A32440() & 1) == 0)
      {
        v36 = v49;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        __swift_project_value_buffer(v36, qword_2802CDA10);
        OUTLINED_FUNCTION_49_1();
        v37 = v45;
        v38(v45);
        v39 = sub_268B37A34();
        v40 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v40))
        {
          v41 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v41);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v42, v43, "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff");
          OUTLINED_FUNCTION_12();
        }

        (*(v6 + 8))(v37, v36);
      }

      else
      {
        v29 = v49;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        __swift_project_value_buffer(v29, qword_2802CDA10);
        OUTLINED_FUNCTION_49_1();
        v30(v10);
        v31 = sub_268B37A34();
        v32 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v32))
        {
          v33 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v33);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v34, v35, "Local device found in devices to control. Asking to prepareForAudioHandoff");
          OUTLINED_FUNCTION_12();
        }

        (*(v6 + 8))(v10, v29);
        OUTLINED_FUNCTION_18_9((v28 + 56));
        OUTLINED_FUNCTION_26_11(v46, 0);
      }

      goto LABEL_21;
    }
  }

  if (qword_2802A4F30 == -1)
  {
    goto LABEL_11;
  }

LABEL_29:
  OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_11:
  v21 = v49;
  __swift_project_value_buffer(v49, qword_2802CDA10);
  OUTLINED_FUNCTION_49_1();
  v22(v15);
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (OUTLINED_FUNCTION_115_0(v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v25);
    OUTLINED_FUNCTION_7(&dword_2688BB000, v26, v27, "Local device not found in devices to control. Skipping prepareForAudioHandoff");
    OUTLINED_FUNCTION_12();
  }

  (*(v6 + 8))(v15, v21);
LABEL_21:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A3239C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_4_27();
  if ((sub_268B34C74() & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_4_27();
  sub_268B35104();
  OUTLINED_FUNCTION_18_9(v3);
  v1 = sub_268B35204();
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  return v1;
}

uint64_t sub_268A32440()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_4_27();
  if (sub_268B34CE4())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_4_27();
  if (sub_268B34CC4())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_4_27();
  return sub_268B34CD4() & 1;
}

uint64_t sub_268A324F8()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroyTm_8()
{

  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268A32590()
{

  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821BB318](a1, a2, v2, v3);
}

uint64_t sub_268A32664(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_22_13(*MEMORY[0x277D85DE8], v27, v30, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5]);
  v8 = v34;
  v9 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35(&qword_2802A4D30);
  }

  sub_268A34F28();
  v10 = sub_268B344D4();
  v12 = v11;
  objc_opt_self();
  OUTLINED_FUNCTION_23_15();
  v13 = sub_268B34554();
  v32[0] = 0;
  v14 = [0 JSONObjectWithData:v13 options:0 error:v32];

  if (v14)
  {
    v15 = v32[0];
    sub_268B380E4();
    swift_unknownObjectRelease();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_26_12(v16, v17, v18, v16, v19, v20, v21, v22, v28, v31, v32[0]))
    {
      v23 = v29;
    }

    else
    {
      v23 = sub_268B37B84();
    }

    sub_268910B4C(v10, v12);
  }

  else
  {
    v24 = v32[0];
    v25 = sub_268B34514();

    swift_willThrow();
    sub_268910B4C(v10, v12);
    v23 = sub_268B37B84();
  }

  (*(v9 + 8))(0xD00000000000001DLL, 0x8000000268B5B100, v23, a3 & 1, a4, a5, v8, v9);

  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

uint64_t sub_268A328D8(void *__src)
{
  v2 = v1;
  v25 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35(&qword_2802A4D30);
  }

  sub_268A34F7C();
  v3 = sub_268B344D4();
  v5 = v4;
  v6 = objc_opt_self();
  v7 = sub_268B34554();
  v23[0] = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v23];

  if (v8)
  {
    v9 = v23[0];
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (swift_dynamicCast())
    {
      v10 = v22;
    }

    else
    {
      v10 = sub_268B37B84();
    }

    sub_268910B4C(v3, v5);
  }

  else
  {
    v11 = v23[0];
    OUTLINED_FUNCTION_23_15();
    v12 = sub_268B34514();

    swift_willThrow();
    sub_268910B4C(v3, v5);
    v10 = sub_268B37B84();
  }

  sub_268A32DA4(v13, v10);
  v14 = v2[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  v16 = OUTLINED_FUNCTION_11_23(34);
  sub_2689CE860(v16, v17, v18, v19, v20, v14, v15);
}

uint64_t sub_268A32B60()
{
  OUTLINED_FUNCTION_22_13(*MEMORY[0x277D85DE8], v25, v27, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5]);
  v0 = v31;
  v1 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35(&qword_2802A4D30);
  }

  sub_268A34F28();
  sub_268B344D4();
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_13_13();
  v3 = sub_268B34554();
  v29[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:v29];

  if (v4)
  {
    v5 = v29[0];
    sub_268B380E4();
    swift_unknownObjectRelease();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if ((OUTLINED_FUNCTION_26_12(v6, v7, v8, v6, v9, v10, v11, v12, v26, v28, v29[0]) & 1) == 0)
    {
      sub_268B37B84();
    }

    v17 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v17, v18);
  }

  else
  {
    v13 = v29[0];
    OUTLINED_FUNCTION_23_15();
    v14 = sub_268B34514();

    swift_willThrow();
    v15 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v15, v16);
    sub_268B37B84();
  }

  v19 = OUTLINED_FUNCTION_11_23(29);
  sub_2689CE860(v19, v20, v21, v22, v23, v0, v1);

  return __swift_destroy_boxed_opaque_existential_0Tm(v30);
}

uint64_t sub_268A32DA4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_268A34FD0(a1, sub_268AC0374, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

double sub_268A32E28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 4) = 0;
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 82) = 0u;
  return result;
}

uint64_t sub_268A32E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x8000000268B5B140 == a2;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x654C656D756C6F76 && a2 == 0xEB000000006C6576;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
                if (v12 || (sub_268B38444() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000011 && 0x8000000268B5B180 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_268B38444();

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

unint64_t sub_268A33120(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x6F52656D61537369;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x654C656D756C6F76;
      break;
    case 7:
      result = 0x72656B61657073;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A33264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_197();
  v26 = v23;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A73E0, &unk_268B44FF8);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15_19();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v33 = sub_268A35494();
  OUTLINED_FUNCTION_25_13(&type metadata for VolumeControlsDialogProvider.GetVolumeLevelParams.CodingKeys, v34, v33);
  v35[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v24)
  {
    OUTLINED_FUNCTION_1_41(1);
    sub_268B383B4();
    OUTLINED_FUNCTION_1_41(2);
    sub_268B383B4();
    OUTLINED_FUNCTION_1_41(3);
    sub_268B383B4();
    OUTLINED_FUNCTION_1_41(4);
    sub_268B383B4();
    OUTLINED_FUNCTION_1_41(5);
    sub_268B383B4();
    OUTLINED_FUNCTION_1_41(6);
    sub_268B383C4();
    memcpy(v36, (v26 + 16), sizeof(v36));
    sub_268A354E8(v26, v35);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    memcpy(v35, v36, 0x51uLL);
    sub_268A35574(v35);
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  (*(v31 + 8))(v25, v29);
  OUTLINED_FUNCTION_198();
}

void sub_268A33490()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7430, &qword_268B45028);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_13();
  v26 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v1);
  v7 = sub_268A35494();
  OUTLINED_FUNCTION_21_12(&type metadata for VolumeControlsDialogProvider.GetVolumeLevelParams.CodingKeys, v8, v7);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    v31 = 0;
    v32 = 0;
    v33 = 1;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    LOBYTE(v41) = 0;
    sub_268A35574(&v31);
  }

  else
  {
    LOBYTE(v31) = 0;
    OUTLINED_FUNCTION_8_19();
    v9 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(1);
    v10 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(2);
    sub_268B38344();
    OUTLINED_FUNCTION_5_16(3);
    v25 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(4);
    v24 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(5);
    v23 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(6);
    v22 = sub_268B38354();
    v49[31] = 7;
    sub_268A356BC();
    sub_268B38334();
    v28 = v51;
    v29 = v50;
    v14 = v52;
    v27 = v53;
    v17 = v54;
    v18 = v55;
    v16 = v56;
    v20 = v58;
    v21 = v57;
    v19 = v59;
    v15 = v60;
    v46[0] = 0;
    v46[1] = 0;
    v46[2] = 1;
    v47 = 0u;
    v48 = 0u;
    memset(v49, 0, 25);
    sub_268A35574(v46);
    v45 = 8;
    OUTLINED_FUNCTION_8_19();
    v11 = sub_268B38344();
    v12 = OUTLINED_FUNCTION_17_19();
    v13(v12);
    LOBYTE(v30[0]) = v9 & 1;
    *(v30 + 1) = v10 & 1;
    BYTE3(v30[0]) = v25 & 1;
    BYTE4(v30[0]) = v24 & 1;
    BYTE5(v30[0]) = v23 & 1;
    v30[1] = v22;
    v30[2] = v29;
    v30[3] = v28;
    v30[4] = v14;
    v30[5] = v27;
    v30[6] = v17;
    v30[7] = v18;
    v30[8] = v16;
    v30[9] = v21;
    v30[10] = v20;
    v30[11] = v19;
    LOBYTE(v30[12]) = v15;
    BYTE1(v30[12]) = v11 & 1;
    sub_268A354E8(v30, &v31);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    LOBYTE(v31) = v9 & 1;
    *(&v31 + 1) = v10 & 1;
    BYTE3(v31) = v25 & 1;
    BYTE4(v31) = v24 & 1;
    BYTE5(v31) = v23 & 1;
    v32 = v22;
    v33 = v29;
    v34 = v28;
    v35 = v14;
    v36 = v27;
    v37 = v17;
    v38 = v18;
    v39 = v16;
    v40 = v21;
    v41 = v20;
    v42 = v19;
    v43 = v15;
    v44 = v11 & 1;
    sub_268A35710(&v31);
    memcpy(v5, v30, 0x62uLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A338F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A32E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A33918(uint64_t a1)
{
  v2 = sub_268A35494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A33954(uint64_t a1)
{
  v2 = sub_268A35494();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A33990(void *a1@<X8>)
{
  sub_268A33490();
  if (!v1)
  {
    memcpy(a1, __src, 0x62uLL);
  }
}

uint64_t sub_268A33A50(const void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  sub_26890C900(v1, v23);
  v3 = v24;
  v4 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  memcpy(__dst, a1, sizeof(__dst));
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35(&qword_2802A4D30);
  }

  sub_268A33CC4();
  sub_268B344D4();
  v5 = objc_opt_self();
  OUTLINED_FUNCTION_13_13();
  v6 = sub_268B34554();
  v21[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v21];

  if (v7)
  {
    v8 = v21[0];
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_268B37B84();
    }

    v13 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v13, v14);
  }

  else
  {
    v9 = v21[0];
    OUTLINED_FUNCTION_23_15();
    v10 = sub_268B34514();

    swift_willThrow();
    v11 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v11, v12);
    sub_268B37B84();
  }

  v15 = OUTLINED_FUNCTION_11_23(29);
  sub_2689CE860(v15, v16, v17, v18, v19, v3, v4);

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

unint64_t sub_268A33CC4()
{
  result = qword_2802A73C8;
  if (!qword_2802A73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73C8);
  }

  return result;
}

uint64_t sub_268A33D18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000268B5B1A0 == a2;
  if (v3 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x50616964654D7369 && a2 == 0xEE00676E6979616CLL;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616572636E497369 && a2 == 0xEF6C6576654C6573;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6165726365447369 && a2 == 0xEF6C6576654C6573)
      {

        return 3;
      }

      else
      {
        v9 = sub_268B38444();

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

uint64_t sub_268A33E90(char a1)
{
  result = 0x50616964654D7369;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      v3 = 1850307433;
      goto LABEL_5;
    case 3:
      v3 = 1698984809;
LABEL_5:
      result = v3 | 0x6165726300000000;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

void sub_268A33F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_197();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A73F8, &qword_268B45008);
  OUTLINED_FUNCTION_1();
  v34 = v33;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15_19();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_268A355DC();
  sub_268B38584();
  a14 = 0;
  sub_268B38394();
  if (!v24)
  {
    a13 = 1;
    OUTLINED_FUNCTION_1_5((v29 >> 8) & 1, &a13);
    a12 = 2;
    OUTLINED_FUNCTION_1_5(HIWORD(v29) & 1, &a12);
    a11 = 3;
    OUTLINED_FUNCTION_1_5(HIBYTE(v29) & 1, &a11);
  }

  (*(v34 + 8))(v25, v32);
  OUTLINED_FUNCTION_198();
}

void sub_268A340A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_197();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7418, &qword_268B45018);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v29);
  v31 = v32 - v30;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_268A355DC();
  sub_268B38574();
  OUTLINED_FUNCTION_10_19();
  sub_268B38324();
  OUTLINED_FUNCTION_10_19();
  sub_268B38344();
  OUTLINED_FUNCTION_10_19();
  v32[3] = sub_268B38344();
  OUTLINED_FUNCTION_10_19();
  sub_268B38344();
  (*(v28 + 8))(v31, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A342A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A33D18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A342C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2688EF5DC();
  *a1 = result;
  return result;
}

uint64_t sub_268A342F0(uint64_t a1)
{
  v2 = sub_268A355DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3432C(uint64_t a1)
{
  v2 = sub_268A355DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268A34418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1448375145 && a2 == 0xE400000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000011 && 0x8000000268B5B180 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_268B38444();

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

unint64_t sub_268A34654(char a1)
{
  result = 0x6F52656D61537369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x534F497369;
      break;
    case 3:
      result = 1448375145;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x72656B61657073;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A34750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_197();
  v26 = v23;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7408, &qword_268B45010);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15_19();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v33 = sub_268A35630();
  OUTLINED_FUNCTION_25_13(&type metadata for VolumeControlsDialogProvider.SetVolumeLevelErrorParameters.CodingKeys, v34, v33);
  v35[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v24)
  {
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v35[0] = 4;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    memcpy(v36, (v26 + 8), sizeof(v36));
    sub_268A35684(v26, v35);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    memcpy(v35, v36, 0x51uLL);
    sub_268A35574(v35);
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  (*(v31 + 8))(v25, v29);
  OUTLINED_FUNCTION_198();
}

void sub_268A3497C()
{
  OUTLINED_FUNCTION_197();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7420, &qword_268B45020);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_13();
  v20 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v2);
  v9 = sub_268A35630();
  OUTLINED_FUNCTION_21_12(&type metadata for VolumeControlsDialogProvider.SetVolumeLevelErrorParameters.CodingKeys, v10, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_0_31();
    OUTLINED_FUNCTION_16_23();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    v47 = 0;
    v48 = 0;
    v49 = v7;
    v50 = v1;
    v51 = v2;
    v52 = v55;
    v53 = v56;
    OUTLINED_FUNCTION_9_18();
    v54 = 0;
    sub_26896F3AC(&v47);
  }

  else
  {
    v47 = 0;
    OUTLINED_FUNCTION_8_19();
    v19 = sub_268B38344() & 1;
    v18 = OUTLINED_FUNCTION_7_22(1) & 1;
    v17 = OUTLINED_FUNCTION_7_22(2) & 1;
    v16 = OUTLINED_FUNCTION_7_22(3) & 1;
    v15 = OUTLINED_FUNCTION_7_22(4) & 1;
    v35[31] = 5;
    sub_268A356BC();
    sub_268B38334();
    v57 = v36;
    v11 = v38;
    v28 = v39;
    v29 = v37;
    v26 = v41;
    v27 = v40;
    v24 = v43;
    v25 = v42;
    v22 = v45;
    v23 = v44;
    v21 = v46;
    v32[0] = 0;
    v32[1] = 0;
    v32[2] = 1;
    v33 = 0u;
    v34 = 0u;
    memset(v35, 0, 25);
    sub_268A35574(v32);
    v31 = 6;
    OUTLINED_FUNCTION_8_19();
    v12 = sub_268B38344();
    v13 = OUTLINED_FUNCTION_6_29();
    v14(v13);
    v30[0] = v19;
    v30[1] = v18;
    v30[2] = v17;
    v30[3] = v16;
    v30[4] = v15;
    *&v30[8] = v57;
    *&v30[16] = v29;
    *&v30[24] = v11;
    *&v30[32] = v28;
    *&v30[40] = v27;
    *&v30[48] = v26;
    *&v30[56] = v25;
    *&v30[64] = v24;
    *&v30[72] = v23;
    *&v30[80] = v22;
    v30[88] = v21;
    v30[89] = v12 & 1;
    sub_268A35684(v30, &v47);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v47 = v19;
    v48 = v18;
    v49 = v17;
    v50 = v16;
    v51 = v15;
    OUTLINED_FUNCTION_9_18();
    v54 = v12 & 1;
    sub_26896F3AC(&v47);
    memcpy(v6, v30, 0x5AuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A34DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A34418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A34DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26891B798();
  *a1 = result;
  return result;
}

uint64_t sub_268A34DF0(uint64_t a1)
{
  v2 = sub_268A35630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A34E2C(uint64_t a1)
{
  v2 = sub_268A35630();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A34E68(void *a1@<X8>)
{
  sub_268A3497C();
  if (!v1)
  {
    memcpy(a1, v3, 0x5AuLL);
  }
}

unint64_t sub_268A34F28()
{
  result = qword_2802A73D0;
  if (!qword_2802A73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73D0);
  }

  return result;
}

unint64_t sub_268A34F7C()
{
  result = qword_2802A73D8;
  if (!qword_2802A73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73D8);
  }

  return result;
}

uint64_t sub_268A34FD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_268AC03AC(a1, a2, a3, v30);
  v28[2] = v30[0];
  v28[3] = v30[1];
  v28[4] = v30[2];
  v29 = v31;

  while (1)
  {
    sub_268AC03E8(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      sub_2689475B8();
    }

    v8 = v27;
    sub_2688EF2B0(v28, v26);
    v9 = *a5;
    v11 = sub_268A75754(v8);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (*(v9 + 24) >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A70B8, &qword_268B43C68);
        sub_268B38274();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_268ADEF5C();
      v15 = sub_268A75754(v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_2688EF2C0(*(*a5 + 56) + 32 * v11, v25);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);

        v18 = (*(v17 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        sub_2688EF2B0(v25, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_2688EF2B0(v26, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_268A35218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 12))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
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

uint64_t sub_268A35264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SiriPlaybackControlIntents18BaseDialogProviderC7SpeakerVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268A352E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 90))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268A35340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268A353BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 98))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268A3541C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_268A35494()
{
  result = qword_2802A73E8;
  if (!qword_2802A73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73E8);
  }

  return result;
}

unint64_t sub_268A35520()
{
  result = qword_2802A73F0;
  if (!qword_2802A73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73F0);
  }

  return result;
}

uint64_t sub_268A35574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C88, qword_268B418C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268A355DC()
{
  result = qword_2802A7400;
  if (!qword_2802A7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7400);
  }

  return result;
}

unint64_t sub_268A35630()
{
  result = qword_2802A7410;
  if (!qword_2802A7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7410);
  }

  return result;
}

unint64_t sub_268A356BC()
{
  result = qword_2802A7428;
  if (!qword_2802A7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VolumeControlsDialogProvider.SetVolumeLevelErrorParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268A3580CLL);
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

_BYTE *storeEnumTagSinglePayload for VolumeControlsDialogProvider.SetVolumeParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268A35910);
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

_BYTE *storeEnumTagSinglePayload for VolumeControlsDialogProvider.GetVolumeLevelParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268A35A14);
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

unint64_t sub_268A35A50()
{
  result = qword_2802A7438;
  if (!qword_2802A7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7438);
  }

  return result;
}

unint64_t sub_268A35AA8()
{
  result = qword_2802A7440;
  if (!qword_2802A7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7440);
  }

  return result;
}

unint64_t sub_268A35B00()
{
  result = qword_2802A7448;
  if (!qword_2802A7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7448);
  }

  return result;
}

unint64_t sub_268A35B58()
{
  result = qword_2802A7450;
  if (!qword_2802A7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7450);
  }

  return result;
}

unint64_t sub_268A35BB0()
{
  result = qword_2802A7458;
  if (!qword_2802A7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7458);
  }

  return result;
}

unint64_t sub_268A35C08()
{
  result = qword_2802A7460;
  if (!qword_2802A7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7460);
  }

  return result;
}

unint64_t sub_268A35C60()
{
  result = qword_2802A7468;
  if (!qword_2802A7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7468);
  }

  return result;
}

unint64_t sub_268A35CB8()
{
  result = qword_2802A7470;
  if (!qword_2802A7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7470);
  }

  return result;
}

unint64_t sub_268A35D10()
{
  result = qword_2802A7478;
  if (!qword_2802A7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7478);
  }

  return result;
}

void OUTLINED_FUNCTION_0_31()
{
  *(v1 - 72) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 44) = 0;
}

uint64_t OUTLINED_FUNCTION_3_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_22@<X0>(char a1@<W8>)
{
  *(v1 - 192) = a1;

  return sub_268B38344();
}

void OUTLINED_FUNCTION_9_18()
{
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v2 - 184) = *(v2 - 72);
  *(v2 - 176) = v4;
  *(v2 - 168) = v1;
  *(v2 - 160) = v3;
  v5 = *(v0 + 80);
  *(v2 - 152) = *(v0 + 88);
  *(v2 - 144) = v5;
  v6 = *(v0 + 64);
  *(v2 - 136) = *(v0 + 72);
  *(v2 - 128) = v6;
  v7 = *(v0 + 48);
  *(v2 - 120) = *(v0 + 56);
  *(v2 - 112) = v7;
  *(v2 - 104) = *(v0 + 44);
}

uint64_t OUTLINED_FUNCTION_21_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_268B38574();
}

uint64_t OUTLINED_FUNCTION_22_13@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v10 - 88) = a1;

  return sub_26890C900(v9, va);
}

uint64_t OUTLINED_FUNCTION_25_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_268B38584();
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

id sub_268A35FCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7490, &qword_268B453D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3E990;
  v1 = *MEMORY[0x277CB8178];
  v2 = *MEMORY[0x277CB8168];
  *(v0 + 32) = *MEMORY[0x277CB8178];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CB8158];
  v4 = *MEMORY[0x277CB8150];
  *(v0 + 48) = *MEMORY[0x277CB8158];
  *(v0 + 56) = v4;
  v10 = *MEMORY[0x277CB81D0];
  *(v0 + 64) = *MEMORY[0x277CB81D0];
  qword_2802A7480 = v0;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return v10;
}

id sub_268A3609C()
{
  v1 = [*(v0 + 56) currentRoute];
  v2 = [v1 outputs];

  sub_268A362D0();
  v3 = sub_268B37CF4();

  v4 = sub_2688EFD0C();
  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4 == v5)
    {
LABEL_11:

      return (v4 != v6);
    }

    sub_2688EFD10();
    result = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](v6, v3) : *(v3 + 8 * v6 + 32);
    v8 = result;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (qword_2802A4ED0 != -1)
    {
      swift_once();
    }

    v10 = [v8 portType];
    MEMORY[0x28223BE20](v10);
    v9 = sub_268ACD25C();

    v5 = v6 + 1;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268A3626C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_268A362D0()
{
  result = qword_2802A7488;
  if (!qword_2802A7488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A7488);
  }

  return result;
}

uint64_t sub_268A36358()
{
  if (!sub_268B37314())
  {
    return 26;
  }

  v0 = sub_268B35EC4();

  if (!v0)
  {
    return 26;
  }

  v1 = sub_268A6A3CC();

  return v1;
}

uint64_t sub_268A363C0(void *a1, void *a2, char a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v30[4] = a1;
  v30[5] = a2;
  v31 = a3;
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35(&qword_2802A4D30);
  }

  v5 = sub_268A3C75C();
  OUTLINED_FUNCTION_83_3(v5, &unk_287958BC8, v5, v6, v7, v8, v9, v10, v28);
  if (v3)
  {

LABEL_5:
    v11 = sub_268B37B84();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_87_2();
  v12 = objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  sub_268B34554();
  OUTLINED_FUNCTION_68_5();
  v13 = [v12 JSONObjectWithData:v4 options:0 error:v30];

  if (!v13)
  {
    v15 = v30[0];
    v16 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v17 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v17, v18);
    goto LABEL_5;
  }

  v14 = v30[0];
  sub_268B380E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
  if (swift_dynamicCast())
  {
    v11 = v29;
  }

  else
  {
    v11 = sub_268B37B84();
  }

  v19 = OUTLINED_FUNCTION_29_12();
  sub_268910B4C(v19, v20);
LABEL_12:
  v21 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v21, v11);
  OUTLINED_FUNCTION_12_18();
  v22 = OUTLINED_FUNCTION_11_23(45);
  OUTLINED_FUNCTION_53_5(v22, v23, v24, v25, v26);
}

uint64_t sub_268A367E4(uint64_t a1)
{
  OUTLINED_FUNCTION_47_6();
  v34 = *MEMORY[0x277D85DE8];
  HIBYTE(v32) = v1;
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35(&qword_2802A4D30);
  }

  sub_268A3C468();
  sub_268B344D4();
  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  v2 = sub_268B34554();
  *v33 = 0;
  v9 = OUTLINED_FUNCTION_50_6(v2, sel_JSONObjectWithData_options_error_, v3, v4, v5, v6, v7, v8, v31[0], v31[1], v32);

  if (v9)
  {
    v10 = *v33;
    sub_268B380E4();
    swift_unknownObjectRelease();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_76_2(v31, v12, v13, v11, v14, v15, v16))
    {
      v17 = v31[0];
    }

    else
    {
      v17 = sub_268B37B84();
    }

    v22 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v22, v23);
  }

  else
  {
    v18 = *v33;
    v19 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v20 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v20, v21);
    v17 = sub_268B37B84();
  }

  v24 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v24, v17);
  OUTLINED_FUNCTION_12_18();
  v25 = OUTLINED_FUNCTION_11_23(33);
  OUTLINED_FUNCTION_53_5(v25, v26, v27, v28, v29);
}

uint64_t sub_268A36FD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000268B5B4E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268B38444();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268A37100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A36FD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268A37148@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_7();
  *a1 = result & 1;
  return result;
}

uint64_t sub_268A37174(uint64_t a1)
{
  v2 = sub_268A3CF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A371B0(uint64_t a1)
{
  v2 = sub_268A3CF64();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A371EC(_BYTE *a2@<X8>)
{
  sub_268A38714();
  if (!v2)
  {
    *a2 = v4 & 1;
  }
}

uint64_t sub_268A3738C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_268A38B5C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_268A373B8(uint64_t a1)
{
  v2 = sub_268A3CFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A373F4(uint64_t a1)
{
  v2 = sub_268A3CFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268A374BC(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v35 = a2;
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35(&qword_2802A4D30);
  }

  sub_268A3C4BC();
  sub_268B344D4();
  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  v2 = sub_268B34554();
  *v33 = 0;
  v9 = OUTLINED_FUNCTION_50_6(v2, sel_JSONObjectWithData_options_error_, v3, v4, v5, v6, v7, v8, v31, v32[0], v32[1]);

  if (v9)
  {
    v10 = *v33;
    sub_268B380E4();
    swift_unknownObjectRelease();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_76_2(v32, v12, v13, v11, v14, v15, v16))
    {
      v17 = v32[0];
    }

    else
    {
      v17 = sub_268B37B84();
    }

    v22 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v22, v23);
  }

  else
  {
    v18 = *v33;
    v19 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v20 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v20, v21);
    v17 = sub_268B37B84();
  }

  v24 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v24, v17);
  OUTLINED_FUNCTION_12_18();
  v25 = OUTLINED_FUNCTION_11_23(42);
  OUTLINED_FUNCTION_53_5(v25, v26, v27, v28, v29);
}

void sub_268A376E4()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75E0, &qword_268B45D68);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_67_3(v0);
  v3 = sub_268A3D370();
  OUTLINED_FUNCTION_25_13(&type metadata for LanguageControlsDialogProvider.AudioSetSuccessfullyParameters.CodingKeys, v4, v3);
  v12[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v12[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_74_4();
    v5 = OUTLINED_FUNCTION_36_9();
    sub_268A3D3C4(v5, v6);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    v7 = OUTLINED_FUNCTION_39_7();
    memcpy(v7, v8, v9);
    sub_268A35574(v12);
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  v10 = OUTLINED_FUNCTION_59_3();
  v11(v10);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A378A8()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75F0, &qword_268B45D70);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_58_6();
  v3 = sub_268A3D370();
  OUTLINED_FUNCTION_21_12(&type metadata for LanguageControlsDialogProvider.AudioSetSuccessfullyParameters.CodingKeys, v4, v3);
  if (v1)
  {
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_89_3();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v5 = OUTLINED_FUNCTION_17_20();
    sub_2689E5448(v5);
  }

  else
  {
    v13[272] = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    sub_268B38344();
    v13[183] = 3;
    sub_268A356BC();
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_4_28(4);
    v6 = sub_268B38344();
    OUTLINED_FUNCTION_57_3(v6);
    v7 = OUTLINED_FUNCTION_17_19();
    v8(v7);
    v9 = OUTLINED_FUNCTION_16_24();
    sub_268A3D3C4(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v11 = OUTLINED_FUNCTION_21_13();
    sub_2689E5448(v11);
    memcpy(v12, v13, 0x5BuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A37B44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_268A3BC20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_268A37B6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268A376DC();
  *a1 = result;
  return result;
}

uint64_t sub_268A37B94(uint64_t a1)
{
  v2 = sub_268A3D370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A37BD0(uint64_t a1)
{
  v2 = sub_268A3D370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268A37D48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_268A37E8C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_268A37D74(uint64_t a1)
{
  v2 = sub_268A3D23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A37DB0(uint64_t a1)
{
  v2 = sub_268A3D23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268A37E8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_268B38444();
    OUTLINED_FUNCTION_93_4();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

void sub_268A37F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_197();
  v22 = v21;
  v24 = v23;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_62_3();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v22();
  OUTLINED_FUNCTION_88_3();
  sub_268B38584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_11_24(&qword_2802A7518, MEMORY[0x277D837D8]);
  sub_268B383D4();
  (*(v29 + 8))(v20, v27);
  OUTLINED_FUNCTION_198();
}

void sub_268A380C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_27_12(v23, v24, v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_75();
  v27 = OUTLINED_FUNCTION_30_13();
  v28 = v22(v27);
  OUTLINED_FUNCTION_9_19(v28);
  if (!v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    OUTLINED_FUNCTION_10_20(&qword_2802A7610, MEMORY[0x277D83808]);
    sub_268B38364();
    v29 = OUTLINED_FUNCTION_60_3();
    v30(v29);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A381EC(uint64_t a1)
{
  v2 = sub_268A3CF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A38228(uint64_t a1)
{
  v2 = sub_268A3CF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268A384F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1850700649 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268B38444();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_268A385BC()
{
  OUTLINED_FUNCTION_197();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_37_12();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_268B38584();
  sub_268B383B4();
  v7 = OUTLINED_FUNCTION_60_0();
  v8(v7);
  OUTLINED_FUNCTION_198();
}

void sub_268A38714()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_27_12(v3, v4, v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75();
  v7 = OUTLINED_FUNCTION_30_13();
  v8 = v2(v7);
  OUTLINED_FUNCTION_9_19(v8);
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10();
    sub_268B38344();
    v9 = OUTLINED_FUNCTION_60_3();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A387F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A384F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268A38824(uint64_t a1)
{
  v2 = sub_268A3D108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A38860(uint64_t a1)
{
  v2 = sub_268A3D108();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A3889C(_BYTE *a1@<X8>)
{
  sub_268A38714();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_268A38940(uint64_t a1)
{
  OUTLINED_FUNCTION_47_6();
  v34 = *MEMORY[0x277D85DE8];
  HIBYTE(v32) = v1;
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35(&qword_2802A4D30);
  }

  sub_268A3C60C();
  sub_268B344D4();
  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  v2 = sub_268B34554();
  *v33 = 0;
  v9 = OUTLINED_FUNCTION_50_6(v2, sel_JSONObjectWithData_options_error_, v3, v4, v5, v6, v7, v8, v31[0], v31[1], v32);

  if (v9)
  {
    v10 = *v33;
    sub_268B380E4();
    swift_unknownObjectRelease();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_76_2(v31, v12, v13, v11, v14, v15, v16))
    {
      v17 = v31[0];
    }

    else
    {
      v17 = sub_268B37B84();
    }

    v22 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v22, v23);
  }

  else
  {
    v18 = *v33;
    v19 = OUTLINED_FUNCTION_51_5();

    swift_willThrow();
    v20 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v20, v21);
    v17 = sub_268B37B84();
  }

  v24 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v24, v17);
  OUTLINED_FUNCTION_12_18();
  v25 = OUTLINED_FUNCTION_11_23(39);
  OUTLINED_FUNCTION_53_5(v25, v26, v27, v28, v29);
}

uint64_t sub_268A38B5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000268B5B500 == a2)
  {

    v4 = 0;
  }

  else
  {
    sub_268B38444();
    OUTLINED_FUNCTION_93_4();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268A38BD4()
{
  sub_268B38514();
  MEMORY[0x26D625F10](0);
  return sub_268B38544();
}

void sub_268A38C5C()
{
  OUTLINED_FUNCTION_197();
  v1 = v0;
  v13[1] = v2;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  v12 = v13 - v11;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v1();
  sub_268B38584();
  sub_268B38374();
  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_198();
}

void sub_268A38DC8()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_27_12(v3, v4, v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75();
  v7 = OUTLINED_FUNCTION_30_13();
  v8 = v2(v7);
  OUTLINED_FUNCTION_9_19(v8);
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10();
    sub_268B38304();
    v9 = OUTLINED_FUNCTION_60_3();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A38EB0(uint64_t a1)
{
  sub_268B38514();
  MEMORY[0x26D625F10](0);
  return sub_268B38544();
}

uint64_t sub_268A38EF0(uint64_t a1)
{
  v2 = sub_268A3D00C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A38F2C(uint64_t a1)
{
  v2 = sub_268A3D00C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A38FAC()
{
  OUTLINED_FUNCTION_69_5();
  sub_268A38DC8();
  if (!v1)
  {
    *v0 = v2;
    v0[1] = v3;
  }
}

uint64_t sub_268A39020(char a1)
{
  if (a1)
  {
    return 0x7265486E49736168;
  }

  else
  {
    return 0x736D6F6F72;
  }
}

uint64_t sub_268A39108@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_268A39D78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_268A39130@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_10();
  *a1 = result;
  return result;
}

uint64_t sub_268A39158(uint64_t a1)
{
  v2 = sub_268A3CEBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A39194(uint64_t a1)
{
  v2 = sub_268A3CEBC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_268A39448()
{
  result = qword_2802A7498;
  if (!qword_2802A7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7498);
  }

  return result;
}

uint64_t sub_268A3949C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62616E457369 && a2 == 0xE800000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x8000000268B5B540 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7265486E49736168 && a2 == 0xE900000000000065)
      {

        return 3;
      }

      else
      {
        v9 = sub_268B38444();

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

unint64_t sub_268A39600(char a1)
{
  result = 0x736D6F6F72;
  switch(a1)
  {
    case 1:
      result = 0x656C62616E457369;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x7265486E49736168;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A39698()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7570, &qword_268B45D28);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_19();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_268A3D0B4();
  sub_268B38584();
  v12[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_11_24(&qword_2802A7518, MEMORY[0x277D837D8]);
  OUTLINED_FUNCTION_65_5();
  sub_268B383D4();
  if (!v0)
  {
    OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_1_5(v3 & 1, v12);
    v11 = 2;
    OUTLINED_FUNCTION_1_5((v3 >> 8) & 1, &v11);
    v10 = 3;
    OUTLINED_FUNCTION_1_5(HIWORD(v3) & 1, &v10);
  }

  (*(v8 + 8))(v1, v6);
  OUTLINED_FUNCTION_198();
}

void sub_268A39830()
{
  OUTLINED_FUNCTION_197();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7630, &qword_268B45DA8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_67_3(v1);
  sub_268A3D0B4();
  sub_268B38574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_10_20(&qword_2802A7610, MEMORY[0x277D83808]);
  OUTLINED_FUNCTION_84_3();
  OUTLINED_FUNCTION_52_8();
  sub_268B38364();
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_52_8();
  sub_268B38344();
  OUTLINED_FUNCTION_52_8();
  sub_268B38344();
  OUTLINED_FUNCTION_52_8();
  sub_268B38344();
  v3 = OUTLINED_FUNCTION_61_3();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A39A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A3949C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A39A78(uint64_t a1)
{
  v2 = sub_268A3D0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A39AB4(uint64_t a1)
{
  v2 = sub_268A3D0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A39AF0(uint64_t a1@<X8>)
{
  sub_268A39830();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
    *(a1 + 9) = BYTE1(v4) & 1;
    *(a1 + 10) = BYTE2(v4) & 1;
  }
}

uint64_t sub_268A39D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_58_1(0x736D6F6F72) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265486E49736168 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_58_1(0x7265486E49736168);
    OUTLINED_FUNCTION_93_4();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_268A39E68()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_62_3();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3();
  OUTLINED_FUNCTION_88_3();
  sub_268B38584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_11_24(&qword_2802A7518, MEMORY[0x277D837D8]);
  OUTLINED_FUNCTION_65_5();
  sub_268B383D4();
  if (!v0)
  {
    OUTLINED_FUNCTION_86_2();
    sub_268B383B4();
  }

  (*(v10 + 8))(v1, v8);
  OUTLINED_FUNCTION_198();
}

void sub_268A3A018()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v5 = v4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75();
  v11 = OUTLINED_FUNCTION_30_13();
  v12 = v3(v11);
  OUTLINED_FUNCTION_9_19(v12);
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    OUTLINED_FUNCTION_10_20(&qword_2802A7610, MEMORY[0x277D83808]);
    OUTLINED_FUNCTION_84_3();
    OUTLINED_FUNCTION_52_8();
    sub_268B38364();
    OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_52_8();
    sub_268B38344();
    (*(v9 + 8))(v1, v13);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A3A1A4(uint64_t a1)
{
  v2 = sub_268A3D1E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3A1E0(uint64_t a1)
{
  v2 = sub_268A3D1E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268A3A494(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000268B5B500 == a2;
  if (v3 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000268B5B540 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

unint64_t sub_268A3A568(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_268A3A5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_197();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75C0, &qword_268B45D58);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_58_6();
  sub_268A3D290();
  sub_268B38584();
  OUTLINED_FUNCTION_60_0();
  sub_268B38374();
  if (!v24)
  {
    sub_268B383B4();
  }

  (*(v28 + 8))(v25, v26);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A3A6E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7600, &qword_268B45D80);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_67_3(a1);
  sub_268A3D290();
  sub_268B38574();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10();
    sub_268B38304();
    OUTLINED_FUNCTION_35_10();
    sub_268B38344();
    (*(v6 + 8))(v2, v4);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return OUTLINED_FUNCTION_60_0();
}

uint64_t sub_268A3A868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A3A494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A3A890(uint64_t a1)
{
  v2 = sub_268A3D290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3A8CC(uint64_t a1)
{
  v2 = sub_268A3D290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268A3A908@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268A3A6E0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_268A3A95C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1850700649 && a2 == 0xE400000000000000;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000016 && 0x8000000268B5B540 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_268B38444();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268A3ABE8(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0x6F52656D61537369;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 1850700649;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A3ACF8()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7590, &unk_268B45D38);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_67_3(v0);
  v3 = sub_268A3D15C();
  OUTLINED_FUNCTION_25_13(&type metadata for LanguageControlsDialogProvider.SubtitleSetSuccessfullyParameters.CodingKeys, v4, v3);
  v12[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v12[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_74_4();
    v5 = OUTLINED_FUNCTION_36_9();
    sub_268A3D1B0(v5, v6);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    v7 = OUTLINED_FUNCTION_39_7();
    memcpy(v7, v8, v9);
    sub_268A35574(v12);
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  v10 = OUTLINED_FUNCTION_59_3();
  v11(v10);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A3AEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7620, &qword_268B45D98);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_37_12();
  v16 = v10[3];
  v17 = v10[4];
  v37 = v10;
  OUTLINED_FUNCTION_58_6();
  v18 = sub_268A3D15C();
  OUTLINED_FUNCTION_21_12(&type metadata for LanguageControlsDialogProvider.SubtitleSetSuccessfullyParameters.CodingKeys, v19, v18);
  if (v11)
  {
    OUTLINED_FUNCTION_5_17();
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = v86;
    v71 = v87;
    v72 = v42;
    v73 = v40;
    v74 = 1;
    v75 = v35;
    v76 = v36;
    v77 = v38;
    v78 = a10;
    v79 = v48;
    v80 = v14;
    v81 = v16;
    v82 = v13;
    v83 = v17;
    v84 = v46;
    v85 = v44;
    sub_268A3D468(&v67);
  }

  else
  {
    v67 = 0;
    OUTLINED_FUNCTION_8_20();
    v34 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(1);
    v33 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(2);
    v32 = sub_268B38344() & 1;
    v55[31] = 3;
    sub_268A356BC();
    OUTLINED_FUNCTION_48_7();
    v41 = v57;
    v43 = v56;
    v20 = v59;
    v27 = v12;
    v28 = v58;
    v21 = v60;
    v39 = v61;
    v22 = v62;
    v49 = v63;
    v30 = v65;
    v31 = v64;
    v29 = v66;
    v52[0] = 0;
    v52[1] = 0;
    v52[2] = 1;
    v53 = 0u;
    v54 = 0u;
    memset(v55, 0, 25);
    sub_268A35574(v52);
    OUTLINED_FUNCTION_4_28(4);
    v23 = v20;
    LOBYTE(v20) = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(5);
    v47 = sub_268B38344() & 1;
    OUTLINED_FUNCTION_4_28(6);
    v45 = sub_268B38344() & 1;
    v51 = 7;
    v24 = sub_268B38344();
    v25 = OUTLINED_FUNCTION_60_0();
    v26(v25);
    v50[0] = v34;
    v50[1] = v33;
    v50[2] = v32;
    *&v50[8] = v43;
    *&v50[16] = v41;
    *&v50[24] = v28;
    *&v50[32] = v23;
    *&v50[40] = v21;
    *&v50[48] = v39;
    *&v50[56] = v22;
    *&v50[64] = v49;
    *&v50[72] = v31;
    *&v50[80] = v30;
    v50[88] = v29;
    v50[89] = v20;
    v50[90] = v47;
    v50[91] = v45;
    v50[92] = v24 & 1;
    sub_268A3D1B0(v50, &v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v67 = v34;
    v68 = v33;
    v69 = v32;
    v72 = v43;
    v73 = v41;
    v74 = v28;
    v75 = v23;
    v76 = v21;
    v77 = v39;
    v78 = v22;
    v79 = v49;
    v80 = v31;
    v81 = v30;
    v82 = v29;
    v83 = v20;
    v84 = v47;
    LOBYTE(v85) = v45;
    HIBYTE(v85) = v24 & 1;
    sub_268A3D468(&v67);
    memcpy(v27, v50, 0x5DuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A3B3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A3A95C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A3B408@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268A3ABE0();
  *a1 = result;
  return result;
}

uint64_t sub_268A3B430(uint64_t a1)
{
  v2 = sub_268A3D15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3B46C(uint64_t a1)
{
  v2 = sub_268A3D15C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A3B4A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_268A3AEFC(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0x5DuLL);
  }
}

uint64_t sub_268A3B73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000268B5B520 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

uint64_t sub_268A3B808(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x736D6F6F72;
  }
}

uint64_t sub_268A3B8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A3B73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A3B8FC(uint64_t a1)
{
  v2 = sub_268A3D060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3B938(uint64_t a1)
{
  v2 = sub_268A3D060();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A3B9B8()
{
  OUTLINED_FUNCTION_69_5();
  sub_268A3A018();
  if (!v1)
  {
    *v0 = v2;
    *(v0 + 8) = v3 & 1;
  }
}

uint64_t sub_268A3BC20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_58_1(0x534F497369) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_58_1(1448375145) & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();
      v8 = a1 == 0xD000000000000012 && v7 == a2;
      if (v8 || (OUTLINED_FUNCTION_58_1(0xD000000000000012) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v9 || (OUTLINED_FUNCTION_58_1(0x72656B61657073) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_72_4();
          v12 = a1 == v10 && a2 == v11;
          if (v12 || (OUTLINED_FUNCTION_58_1(v10) & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_71_5();
            if (a1 == 0xD000000000000014 && v13 == a2)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_58_1(0xD000000000000014);
              OUTLINED_FUNCTION_93_4();
              if (a1)
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
}

void sub_268A3BDA4(char a1)
{
  switch(a1)
  {
    case 2:
    case 5:
      OUTLINED_FUNCTION_71_5();
      break;
    case 4:
      OUTLINED_FUNCTION_72_4();
      break;
    default:
      return;
  }
}

void sub_268A3BE88()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75D0, &qword_268B45D60);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_67_3(v0);
  v3 = sub_268A3D2E4();
  OUTLINED_FUNCTION_25_13(&type metadata for LanguageControlsDialogProvider.WhatDidTheySayHandledParameters.CodingKeys, v4, v3);
  v12[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v12[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_74_4();
    v5 = OUTLINED_FUNCTION_36_9();
    sub_268A3D338(v5, v6);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    v7 = OUTLINED_FUNCTION_39_7();
    memcpy(v7, v8, v9);
    sub_268A35574(v12);
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  v10 = OUTLINED_FUNCTION_59_3();
  v11(v10);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A3C04C()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A75F8, &qword_268B45D78);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_58_6();
  v3 = sub_268A3D2E4();
  OUTLINED_FUNCTION_21_12(&type metadata for LanguageControlsDialogProvider.WhatDidTheySayHandledParameters.CodingKeys, v4, v3);
  if (v1)
  {
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_89_3();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v5 = OUTLINED_FUNCTION_17_20();
    sub_2689EA0A8(v5);
  }

  else
  {
    v13[272] = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    sub_268B38344();
    v13[183] = 3;
    sub_268A356BC();
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_22_14();
    OUTLINED_FUNCTION_4_28(4);
    v6 = sub_268B38344();
    OUTLINED_FUNCTION_57_3(v6);
    v7 = OUTLINED_FUNCTION_17_19();
    v8(v7);
    v9 = OUTLINED_FUNCTION_16_24();
    sub_268A3D338(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v11 = OUTLINED_FUNCTION_21_13();
    sub_2689EA0A8(v11);
    memcpy(v12, v13, 0x5BuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A3C2CC(uint64_t a1)
{
  v2 = sub_268A3D2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3C308(uint64_t a1)
{
  v2 = sub_268A3D2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_268A3C370@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x5BuLL);
  }

  return result;
}

unint64_t sub_268A3C414()
{
  result = qword_2802A74A0;
  if (!qword_2802A74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74A0);
  }

  return result;
}

unint64_t sub_268A3C468()
{
  result = qword_2802A74A8;
  if (!qword_2802A74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74A8);
  }

  return result;
}

unint64_t sub_268A3C4BC()
{
  result = qword_2802A74B0;
  if (!qword_2802A74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74B0);
  }

  return result;
}

unint64_t sub_268A3C510()
{
  result = qword_2802A74B8;
  if (!qword_2802A74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74B8);
  }

  return result;
}

unint64_t sub_268A3C564()
{
  result = qword_2802A74C0;
  if (!qword_2802A74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74C0);
  }

  return result;
}

unint64_t sub_268A3C5B8()
{
  result = qword_2802A74C8;
  if (!qword_2802A74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74C8);
  }

  return result;
}

unint64_t sub_268A3C60C()
{
  result = qword_2802A74D0;
  if (!qword_2802A74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74D0);
  }

  return result;
}

unint64_t sub_268A3C660()
{
  result = qword_2802A74D8;
  if (!qword_2802A74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74D8);
  }

  return result;
}

unint64_t sub_268A3C6B4()
{
  result = qword_2802A74E0;
  if (!qword_2802A74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74E0);
  }

  return result;
}

unint64_t sub_268A3C708()
{
  result = qword_2802A74E8;
  if (!qword_2802A74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74E8);
  }

  return result;
}

unint64_t sub_268A3C75C()
{
  result = qword_2802A74F0;
  if (!qword_2802A74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74F0);
  }

  return result;
}

unint64_t sub_268A3C7B0()
{
  result = qword_2802A74F8;
  if (!qword_2802A74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A74F8);
  }

  return result;
}

unint64_t sub_268A3C804()
{
  result = qword_2802A7500;
  if (!qword_2802A7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7500);
  }

  return result;
}

uint64_t sub_268A3C874(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 91))
  {
    return OUTLINED_FUNCTION_46_8(*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_8(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }
}

uint64_t sub_268A3C8D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268A3C948(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
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

uint64_t sub_268A3C99C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
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

uint64_t sub_268A3CA30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 93))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268A3CA90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 93) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 93) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_268A3CB28(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 11))
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

uint64_t sub_268A3CB68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
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

uint64_t sub_268A3CBE8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_8(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_8(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v4);
}

uint64_t sub_268A3CC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_268A3CC9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268A3CD34(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268A3CDF0);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268A3CE30(uint64_t *a1, int a2)
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

uint64_t sub_268A3CE70(uint64_t result, int a2, int a3)
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

unint64_t sub_268A3CEBC()
{
  result = qword_2802A7510;
  if (!qword_2802A7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7510);
  }

  return result;
}

unint64_t sub_268A3CF10()
{
  result = qword_2802A7528;
  if (!qword_2802A7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7528);
  }

  return result;
}

unint64_t sub_268A3CF64()
{
  result = qword_2802A7538;
  if (!qword_2802A7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7538);
  }

  return result;
}

unint64_t sub_268A3CFB8()
{
  result = qword_2802A7548;
  if (!qword_2802A7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7548);
  }

  return result;
}

unint64_t sub_268A3D00C()
{
  result = qword_2802A7558;
  if (!qword_2802A7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7558);
  }

  return result;
}

unint64_t sub_268A3D060()
{
  result = qword_2802A7568;
  if (!qword_2802A7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7568);
  }

  return result;
}

unint64_t sub_268A3D0B4()
{
  result = qword_2802A7578;
  if (!qword_2802A7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7578);
  }

  return result;
}

unint64_t sub_268A3D108()
{
  result = qword_2802A7588;
  if (!qword_2802A7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7588);
  }

  return result;
}

unint64_t sub_268A3D15C()
{
  result = qword_2802A7598;
  if (!qword_2802A7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7598);
  }

  return result;
}

unint64_t sub_268A3D1E8()
{
  result = qword_2802A75A8;
  if (!qword_2802A75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75A8);
  }

  return result;
}

unint64_t sub_268A3D23C()
{
  result = qword_2802A75B8;
  if (!qword_2802A75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75B8);
  }

  return result;
}

unint64_t sub_268A3D290()
{
  result = qword_2802A75C8;
  if (!qword_2802A75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75C8);
  }

  return result;
}

unint64_t sub_268A3D2E4()
{
  result = qword_2802A75D8;
  if (!qword_2802A75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75D8);
  }

  return result;
}

unint64_t sub_268A3D370()
{
  result = qword_2802A75E8;
  if (!qword_2802A75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A75E8);
  }

  return result;
}

uint64_t sub_268A3D3FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5B48, &qword_268B416A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A3D4B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268A3D534(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268A3D5F0);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageControlsDialogProvider.SubtitleSetSuccessfullyParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LanguageControlsDialogProvider.SubtitleSetSuccessfullyParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x268A3D7C0);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LanguageControlsDialogProvider.DeviceDisambiguationSubtitlesParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268A3D8D4);
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

_BYTE *sub_268A3D94C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268A3D9E8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268A3DA20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268A3DAA4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268A3DB60);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268A3DB9C()
{
  result = qword_2802A7668;
  if (!qword_2802A7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7668);
  }

  return result;
}

unint64_t sub_268A3DBF4()
{
  result = qword_2802A7670;
  if (!qword_2802A7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7670);
  }

  return result;
}

unint64_t sub_268A3DC4C()
{
  result = qword_2802A7678;
  if (!qword_2802A7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7678);
  }

  return result;
}

unint64_t sub_268A3DCA4()
{
  result = qword_2802A7680;
  if (!qword_2802A7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7680);
  }

  return result;
}

unint64_t sub_268A3DCFC()
{
  result = qword_2802A7688;
  if (!qword_2802A7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7688);
  }

  return result;
}

unint64_t sub_268A3DD54()
{
  result = qword_2802A7690;
  if (!qword_2802A7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7690);
  }

  return result;
}

unint64_t sub_268A3DDAC()
{
  result = qword_2802A7698;
  if (!qword_2802A7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7698);
  }

  return result;
}

unint64_t sub_268A3DE04()
{
  result = qword_2802A76A0;
  if (!qword_2802A76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76A0);
  }

  return result;
}

unint64_t sub_268A3DE5C()
{
  result = qword_2802A76A8;
  if (!qword_2802A76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76A8);
  }

  return result;
}

unint64_t sub_268A3DEB4()
{
  result = qword_2802A76B0;
  if (!qword_2802A76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76B0);
  }

  return result;
}

unint64_t sub_268A3DF0C()
{
  result = qword_2802A76B8;
  if (!qword_2802A76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76B8);
  }

  return result;
}

unint64_t sub_268A3DF64()
{
  result = qword_2802A76C0;
  if (!qword_2802A76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76C0);
  }

  return result;
}

unint64_t sub_268A3DFBC()
{
  result = qword_2802A76C8;
  if (!qword_2802A76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76C8);
  }

  return result;
}

unint64_t sub_268A3E014()
{
  result = qword_2802A76D0;
  if (!qword_2802A76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76D0);
  }

  return result;
}

unint64_t sub_268A3E06C()
{
  result = qword_2802A76D8;
  if (!qword_2802A76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76D8);
  }

  return result;
}

unint64_t sub_268A3E0C4()
{
  result = qword_2802A76E0;
  if (!qword_2802A76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76E0);
  }

  return result;
}

unint64_t sub_268A3E11C()
{
  result = qword_2802A76E8;
  if (!qword_2802A76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76E8);
  }

  return result;
}

unint64_t sub_268A3E174()
{
  result = qword_2802A76F0;
  if (!qword_2802A76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76F0);
  }

  return result;
}

unint64_t sub_268A3E1CC()
{
  result = qword_2802A76F8;
  if (!qword_2802A76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A76F8);
  }

  return result;
}

unint64_t sub_268A3E224()
{
  result = qword_2802A7700;
  if (!qword_2802A7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7700);
  }

  return result;
}

unint64_t sub_268A3E27C()
{
  result = qword_2802A7708;
  if (!qword_2802A7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7708);
  }

  return result;
}

unint64_t sub_268A3E2D4()
{
  result = qword_2802A7710;
  if (!qword_2802A7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7710);
  }

  return result;
}

unint64_t sub_268A3E32C()
{
  result = qword_2802A7718;
  if (!qword_2802A7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7718);
  }

  return result;
}

unint64_t sub_268A3E384()
{
  result = qword_2802A7720;
  if (!qword_2802A7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7720);
  }

  return result;
}

unint64_t sub_268A3E3DC()
{
  result = qword_2802A7728;
  if (!qword_2802A7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7728);
  }

  return result;
}

unint64_t sub_268A3E434()
{
  result = qword_2802A7730;
  if (!qword_2802A7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7730);
  }

  return result;
}

unint64_t sub_268A3E48C()
{
  result = qword_2802A7738;
  if (!qword_2802A7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7738);
  }

  return result;
}

unint64_t sub_268A3E4E4()
{
  result = qword_2802A7740;
  if (!qword_2802A7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7740);
  }

  return result;
}

unint64_t sub_268A3E53C()
{
  result = qword_2802A7748;
  if (!qword_2802A7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7748);
  }

  return result;
}

unint64_t sub_268A3E594()
{
  result = qword_2802A7750;
  if (!qword_2802A7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7750);
  }

  return result;
}

unint64_t sub_268A3E5EC()
{
  result = qword_2802A7758;
  if (!qword_2802A7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7758);
  }

  return result;
}

unint64_t sub_268A3E644()
{
  result = qword_2802A7760;
  if (!qword_2802A7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7760);
  }

  return result;
}

unint64_t sub_268A3E69C()
{
  result = qword_2802A7768;
  if (!qword_2802A7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7768);
  }

  return result;
}

unint64_t sub_268A3E6F4()
{
  result = qword_2802A7770;
  if (!qword_2802A7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7770);
  }

  return result;
}

unint64_t sub_268A3E74C()
{
  result = qword_2802A7778;
  if (!qword_2802A7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7778);
  }

  return result;
}

unint64_t sub_268A3E7A4()
{
  result = qword_2802A7780;
  if (!qword_2802A7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7780);
  }

  return result;
}

unint64_t sub_268A3E7FC()
{
  result = qword_2802A7788;
  if (!qword_2802A7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7788);
  }

  return result;
}

unint64_t sub_268A3E854()
{
  result = qword_2802A7790;
  if (!qword_2802A7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7790);
  }

  return result;
}

unint64_t sub_268A3E8AC()
{
  result = qword_2802A7798;
  if (!qword_2802A7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7798);
  }

  return result;
}

unint64_t sub_268A3E904()
{
  result = qword_2802A77A0;
  if (!qword_2802A77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77A0);
  }

  return result;
}

unint64_t sub_268A3E95C()
{
  result = qword_2802A77A8;
  if (!qword_2802A77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77A8);
  }

  return result;
}

unint64_t sub_268A3E9B4()
{
  result = qword_2802A77B0;
  if (!qword_2802A77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77B0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_32()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 48) = 0;
  *(v1 - 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 104) = 0;
  *(v0 + 100) = 0;
}

void OUTLINED_FUNCTION_5_17()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[9] = 0;
  v0[10] = 0;
  v0[13] = 0;
  *(v1 - 72) = 0;
  v0[16] = 0;
  v0[17] = 0;
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1)
{

  return sub_268B38574();
}

uint64_t OUTLINED_FUNCTION_10_20(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83978];

  return sub_268A3D3FC(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_11_24(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83948];

  return sub_268A3D3FC(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_16_24()
{
  v6 = v1 & 1;
  *(v0 + 4) = v1 & 1;
  v7 = *(v0 + 40);
  *(v0 + 112) = *(v0 + 44);
  *(v0 + 113) = v7;
  *(v0 + 114) = v3;
  v8 = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 128) = v8;
  *(v0 + 136) = *(v0 + 8);
  *(v0 + 144) = v4;
  v9 = *(v0 + 64);
  *(v0 + 152) = *(v5 - 72);
  *(v0 + 160) = v9;
  *(v0 + 168) = *(v0 + 104);
  *(v0 + 176) = v2;
  v10 = *(v0 + 24);
  *(v0 + 184) = *(v0 + 32);
  *(v0 + 192) = v10;
  *(v0 + 200) = *(v0 + 20);
  *(v0 + 201) = *(v0 + 100);
  *(v0 + 202) = v6;
  return v0 + 112;
}

uint64_t OUTLINED_FUNCTION_17_20()
{
  *(v9 - 192) = v1;
  *(v9 - 191) = v4;
  *(v9 - 190) = v7;
  *(v0 + 387) = *(v9 - 96);
  *(v9 - 185) = *(v9 - 92);
  v10 = *(v0 + 80);
  *(v9 - 184) = *(v0 + 88);
  *(v9 - 176) = v10;
  v11 = *(v0 + 48);
  *(v9 - 168) = v6;
  *(v9 - 160) = v11;
  v12 = *(v0 + 64);
  *(v9 - 152) = *(v9 - 72);
  *(v9 - 144) = v12;
  *(v9 - 136) = *(v0 + 104);
  *(v9 - 128) = v2;
  *(v9 - 120) = v5;
  *(v9 - 112) = v8;
  *(v9 - 104) = v3;
  *(v9 - 103) = *(v0 + 100);
  return v9 - 192;
}

id OUTLINED_FUNCTION_18_13(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return [v12 a2];
}

uint64_t OUTLINED_FUNCTION_21_13()
{
  *(v9 - 192) = v4;
  *(v9 - 191) = v5;
  *(v9 - 190) = v7;
  *(v9 - 184) = v6;
  *(v9 - 176) = v1;
  *(v9 - 168) = *(v0 + 8);
  *(v9 - 160) = v8;
  *(v9 - 152) = *(v9 - 72);
  *(v9 - 144) = v3;
  *(v9 - 136) = *(v0 + 104);
  *(v9 - 128) = v2;
  v10 = *(v0 + 24);
  *(v9 - 120) = *(v0 + 32);
  *(v9 - 112) = v10;
  *(v9 - 104) = *(v0 + 20);
  *(v9 - 103) = *(v0 + 100);
  *(v9 - 102) = *(v0 + 4);
  return v9 - 192;
}

uint64_t OUTLINED_FUNCTION_22_14()
{
  *(v0 + 48) = v1;
  v4 = *(v0 + 296);
  *(v0 + 80) = *(v0 + 304);
  *(v0 + 88) = v4;
  *(v0 + 8) = *(v0 + 312);
  v5 = *(v0 + 336);
  *(v2 - 72) = *(v0 + 328);
  *(v0 + 64) = v5;
  *(v0 + 104) = *(v0 + 344);
  v6 = *(v0 + 360);
  *(v0 + 24) = *(v0 + 368);
  *(v0 + 32) = v6;
  *(v0 + 20) = *(v0 + 376);
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 273) = 0u;

  return sub_268A35574(v0 + 208);
}

id OUTLINED_FUNCTION_25_14(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2689CE860(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t OUTLINED_FUNCTION_27_12(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_31_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_41_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v10 - 88) = a1;

  return sub_26890C900(v9, va);
}

void *OUTLINED_FUNCTION_48_7()
{

  return sub_268B38334();
}

id OUTLINED_FUNCTION_50_6(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return [v11 a2];
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return sub_268B34514();
}

uint64_t OUTLINED_FUNCTION_53_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2689CE860(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t OUTLINED_FUNCTION_57_3(char a1)
{
  *(v1 + 100) = a1 & 1;
  *(v1 + 207) = 5;

  return sub_268B38344();
}

void *OUTLINED_FUNCTION_73_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_268B380E4();
}

void *OUTLINED_FUNCTION_74_4()
{

  return memcpy((v1 - 168), (v0 + 8), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_76_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_82_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;

  return sub_26890C900(v1, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_83_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_268B344D4();
}

uint64_t OUTLINED_FUNCTION_92_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_93_4()
{
}

uint64_t OUTLINED_FUNCTION_94_3()
{
}

void *OUTLINED_FUNCTION_95_3(uint64_t a1, uint64_t a2, ...)
{

  return sub_268B380E4();
}

uint64_t OUTLINED_FUNCTION_96_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_268B344D4();
}

void sub_268A3F298(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v82 = a5;
  v83 = a4;
  v84 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v81);
  v6 = &v73 - v5;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v80 = (&v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v78 = &v73 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v73 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v73 - v18);
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v20 = __swift_project_value_buffer(v7, qword_2802CDA10);
    v21 = *(v8 + 16);
    OUTLINED_FUNCTION_0_33();
    v21();
    v22 = sub_268B37A34();
    v23 = sub_268B37ED4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_14();
      v79 = (v8 + 16);
      *v24 = 0;
      _os_log_impl(&dword_2688BB000, v22, v23, "SkipTimeConfirmIntentStrategy.makePromptForConfirmation()", v24, 2u);
      OUTLINED_FUNCTION_12();
    }

    v25 = *(v8 + 8);
    v25(v19, v7);
    v26 = sub_268B18100(v84);
    if (!v26)
    {
      goto LABEL_10;
    }

    v27 = v26;
    v79 = v25;
    v28 = sub_2688EFD0C();
    if (!v28)
    {

      v25 = v79;
LABEL_10:
      v42 = v80;
      OUTLINED_FUNCTION_0_33();
      v21();
      v43 = sub_268B37A34();
      v44 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v44))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v45, v46, "Could not find any devices in the intent for confirmation");
        OUTLINED_FUNCTION_12();
      }

      v25(v42, v7);
      sub_2688C2ECC();
      v47 = swift_allocError();
      v49 = 0x80;
LABEL_13:
      OUTLINED_FUNCTION_1_42(v47, v48, v49);
      v83(v6);
      goto LABEL_14;
    }

    v29 = v28;
    v30 = [v84 duration];
    if (!v30)
    {

      v50 = v78;
      OUTLINED_FUNCTION_0_33();
      v21();
      v51 = sub_268B37A34();
      v52 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v52))
      {
        v53 = OUTLINED_FUNCTION_14();
        *v53 = 0;
        _os_log_impl(&dword_2688BB000, v51, v50, "Did not receive valid duration", v53, 2u);
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_4_29();
      v54();
      sub_2688C2ECC();
      v47 = swift_allocError();
      v49 = -127;
      goto LABEL_13;
    }

    v84 = v30;
    OUTLINED_FUNCTION_0_33();
    v21();

    v78 = v17;
    v19 = sub_268B37A34();
    v31 = sub_268B37EC4();

    v76 = v31;
    v80 = v19;
    if (os_log_type_enabled(v19, v31))
    {
      v32 = swift_slowAlloc();
      v75 = v20;
      v33 = v32;
      v74 = swift_slowAlloc();
      v85 = v74;
      *v33 = 136315138;
      v34 = type metadata accessor for Device();
      v35 = MEMORY[0x26D6256F0](v27, v34);
      v37 = v21;
      v38 = v6;
      v39 = sub_26892CDB8(v35, v36, &v85);

      *(v33 + 4) = v39;
      v6 = v38;
      v21 = v37;
      v19 = v80;
      _os_log_impl(&dword_2688BB000, v80, v76, "Confirming devices: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      v40 = v84;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      OUTLINED_FUNCTION_4_29();
      v41();
    }

    else
    {

      OUTLINED_FUNCTION_4_29();
      v55();
      v40 = v84;
    }

    v56 = [v40 direction];
    if (v56 == 1)
    {
      LODWORD(v81) = 1;
      goto LABEL_23;
    }

    if (v56 != 2)
    {
      break;
    }

    LODWORD(v81) = 0;
LABEL_23:
    v17 = 0;
    v8 = v27 & 0xFFFFFFFFFFFFFF8;
    v57 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29 == v17)
      {

        sub_268AB7914(v57, v81, v83, v82);

        return;
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x26D625BD0](v17, v27);
      }

      else
      {
        if (v17 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v58 = *(v27 + 8 * v17 + 32);
      }

      v7 = v58;
      v59 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v60 = sub_268988580(v58);
      if (v61)
      {
        v19 = v60;
        v6 = v61;

        goto LABEL_33;
      }

      v19 = sub_268988568(v7);
      v6 = v62;

      ++v17;
      if (v6)
      {
LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v57 = v64;
        }

        v7 = *(v57 + 16);
        if (v7 >= *(v57 + 24) >> 1)
        {
          sub_2689876A4();
          v57 = v65;
        }

        *(v57 + 16) = v7 + 1;
        v63 = v57 + 16 * v7;
        *(v63 + 32) = v19;
        *(v63 + 40) = v6;
        v17 = v59;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  OUTLINED_FUNCTION_0_33();
  v21();
  v66 = sub_268B37A34();
  v67 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_19(v67))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v68, v69, "Unexpected skip time direction");
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_4_29();
  v70();
  sub_2688C2ECC();
  v71 = swift_allocError();
  OUTLINED_FUNCTION_1_42(v71, v72, 130);
  v83(v6);

LABEL_14:
  sub_268919854(v6);
}

void sub_268A3FAB4()
{
  type metadata accessor for SkipTimeConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268A3FB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A3FBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SkipTimeConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268A3FC84(uint64_t a1)
{
  result = sub_268A3FCAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A3FCAC()
{
  result = qword_2802A77B8;
  if (!qword_2802A77B8)
  {
    type metadata accessor for SkipTimeConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_42@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *v3 = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_268A3FD3C@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v82 = v3;
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v80 = v4 - v5;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  v79 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v78 - v9;
  v11 = sub_268B35524();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v85 = sub_268B355B4();
  OUTLINED_FUNCTION_1();
  v78 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = (v21 - v20);
  v81 = sub_268B354E4();
  OUTLINED_FUNCTION_1();
  v84 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v34 = (v33 - v32);
  (*(v30 + 16))(v33 - v32, v1, v28);
  v35 = OUTLINED_FUNCTION_13_14();
  v37 = v36(v35);
  if (v37 == *MEMORY[0x277D5C148])
  {
    v38 = OUTLINED_FUNCTION_13_14();
    v39(v38);
    v40 = *v34;
    sub_2689F8B1C();
    if (v41)
    {
      v42 = v41;
      v43 = v86;
      sub_268B36BA4();

      v44 = v43;
      v45 = 0;
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v61 = v83;
      OUTLINED_FUNCTION_82(v83, qword_2802CDA10);
      v62 = v82;
      v63 = v80;
      (*(v82 + 16))(v80);
      v64 = v40;
      v65 = sub_268B37A34();
      v66 = sub_268B37EE4();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v87 = v68;
        *v67 = 136315138;
        v69 = sub_268B36BC4();
        v70 = sub_268B36BB4();
        v71 = MEMORY[0x26D6256F0](v69, v70);
        v73 = v72;

        v74 = sub_26892CDB8(v71, v73, &v87);

        *(v67 + 4) = v74;
        _os_log_impl(&dword_2688BB000, v65, v66, "Parse-Extension#firstUsoTask PommesResponse doesn't contain audioExperience %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        (*(v62 + 8))(v80, v61);
      }

      else
      {

        (*(v62 + 8))(v63, v61);
      }

      v44 = v86;
      v45 = 1;
    }

    v77 = v85;
  }

  else
  {
    if (v37 != *MEMORY[0x277D5C160])
    {
      __swift_storeEnumTagSinglePayload(v86, 1, 1, v85);
      v58 = OUTLINED_FUNCTION_13_14();
      return v59(v58);
    }

    v46 = OUTLINED_FUNCTION_13_14();
    v47(v46);
    v48 = v84;
    v49 = v81;
    (*(v84 + 32))(v27, v34, v81);
    sub_268B354D4();
    v50 = sub_268B35514();
    (*(v13 + 8))(v17, v11);
    sub_2689A9934(v50, v10);

    v51 = v85;
    if (__swift_getEnumTagSinglePayload(v10, 1, v85) == 1)
    {
      sub_2688EF38C(v10, &qword_2802A5E08, &unk_268B3D910);
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v52 = v83;
      OUTLINED_FUNCTION_82(v83, qword_2802CDA10);
      v53 = v82;
      v54 = v79;
      (*(v82 + 16))(v79);
      v55 = sub_268B37A34();
      v56 = sub_268B37F04();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_14();
        *v57 = 0;
        _os_log_impl(&dword_2688BB000, v55, v56, "Parse-Extension#firstUserDialogAct No user dialog act found in userParse.", v57, 2u);
        v49 = v81;
        OUTLINED_FUNCTION_12();
      }

      (*(v53 + 8))(v54, v52);
      (*(v84 + 8))(v27, v49);
      v44 = v86;
      v45 = 1;
    }

    else
    {
      (*(v48 + 8))(v27, v49);
      v75 = *(v78 + 32);
      v75(v22, v10, v51);
      v76 = v86;
      v75(v86, v22, v51);
      v44 = v76;
      v45 = 0;
    }

    v77 = v51;
  }

  return __swift_storeEnumTagSinglePayload(v44, v45, 1, v77);
}

uint64_t sub_268A40454()
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v53 = v2;
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_20_0();
  v51 = v3 - v4;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  v50 = &v48 - v6;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E08, &unk_268B3D910);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_268B355B4();
  OUTLINED_FUNCTION_1();
  v52 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v18 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v24 = v23 - v22;
  (*(v20 + 16))(v23 - v22, v0, v18);
  v25 = (*(v20 + 88))(v24, v18);
  v26 = *MEMORY[0x277D5C148];
  v27 = *MEMORY[0x277D5C160];
  (*(v20 + 8))(v24, v18);
  v28 = 0;
  if (v25 != v26 && v25 != v27)
  {
    return v28;
  }

  sub_268A3FD3C(v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2688EF38C(v11, &qword_2802A5E08, &unk_268B3D910);
    v31 = v53;
    v30 = v54;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v30, qword_2802CDA10);
    v32 = v51;
    (*(v31 + 16))(v51);
    v33 = sub_268B37A34();
    v34 = sub_268B37F04();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_14();
      *v35 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "Parse-Extension#firstUsoTask No user dialog act found in userParse.", v35, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v31 + 8))(v32, v30);
    return 0;
  }

  v36 = v12;
  v37 = v52;
  (*(v52 + 32))(v17, v11, v36);
  v38 = sub_268B356A4();
  v40 = v53;
  v39 = v54;
  v42 = v38;
  if (!sub_2688EFD0C())
  {

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v39, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v43 = v49;
    v44(v49);
    v45 = sub_268B37A34();
    v46 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v46))
    {
      v47 = OUTLINED_FUNCTION_14();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, OS_LOG_TYPE_DEFAULT, "Parse-Extension#firstUsoTask No tasks found in input", v47, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v40 + 8))(v43, v39);
    (*(v37 + 8))(v17, v36);
    return 0;
  }

  sub_2688EFD10();
  if ((v42 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x26D625BD0](0, v42);
  }

  else
  {
    v28 = *(v42 + 32);
  }

  (*(v37 + 8))(v17, v36);
  return v28;
}

uint64_t sub_268A409F0()
{
  v1 = v0;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v82 = v3;
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v78 = v4 - v5;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  v77 = &v74 - v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v76 = &v74 - v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v79 = &v74 - v11;
  v12 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  v22 = sub_268B35474();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  v80 = *(v14 + 16);
  v81 = v1;
  v80(v21, v1, v12);
  v29 = *(v14 + 88);
  if (v29(v21, v12) == *MEMORY[0x277D5C150])
  {
    (*(v14 + 96))(v21, v12);
    v30 = *(v24 + 32);
    v75 = v22;
    v30(v28, v21, v22);
    v74 = v28;
    if (sub_268B35454() == 0xD00000000000003ALL && 0x8000000268B5A120 == v31)
    {
    }

    else
    {
      v33 = sub_268B38444();

      if ((v33 & 1) == 0)
      {
        (*(v24 + 8))(v74, v75);
        v34 = v83;
        goto LABEL_9;
      }
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v55 = v83;
    OUTLINED_FUNCTION_82(v83, qword_2802CDA10);
    v56 = v82;
    v57 = v79;
    (*(v82 + 16))(v79);
    v58 = sub_268B37A34();
    v59 = sub_268B37F04();
    v60 = OUTLINED_FUNCTION_115_0(v59);
    v62 = v74;
    v61 = v75;
    if (v60)
    {
      v63 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v63);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v64, v65, "Parse-Extension#isQuickStopParse Parse is QuickStop direct invocation, returning true");
      OUTLINED_FUNCTION_6();
    }

    (*(v56 + 8))(v57, v55);
    (*(v24 + 8))(v62, v61);
    return 1;
  }

  v34 = v83;
  (*(v14 + 8))(v21, v12);
LABEL_9:
  v80(v18, v81, v12);
  v35 = v29(v18, v12);
  v36 = *MEMORY[0x277D5C160];
  (*(v14 + 8))(v18, v12);
  if (v35 != v36)
  {
    v47 = v82;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v34, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v48 = v78;
    v49(v78);
    v50 = sub_268B37A34();
    v51 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v51))
    {
      v52 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v52);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v53, v54, "Parse-Extension#isQuickStopParse Parse type is not a valid QuickStop parse");
      OUTLINED_FUNCTION_6();
    }

    (*(v47 + 8))(v48, v34);
    return 0;
  }

  if ((sub_268A4118C() & 1) == 0)
  {
    result = sub_268A40454();
    if (!result)
    {
      return result;
    }

    sub_268B35DC4();
    if (v86)
    {
      sub_2688EF2B0(&v85, v87);
      sub_2688EF2C0(v87, &v85);
      sub_268B35E74();
      if (swift_dynamicCast())
      {
        *&v85 = v84;
        sub_268A41424();
        v38 = sub_268B37834();
        v39 = v77;
        if (v38)
        {
LABEL_18:
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          OUTLINED_FUNCTION_82(v34, qword_2802CDA10);
          (*(v82 + 16))(v39);
          v40 = sub_268B37A34();
          v41 = sub_268B37F04();
          if (OUTLINED_FUNCTION_115_0(v41))
          {
            v42 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_10(v42);
            OUTLINED_FUNCTION_7(&dword_2688BB000, v43, v44, "Parse-Extension#isQuickStopParse Parse is not a valid QuickStop parse");
            OUTLINED_FUNCTION_6();
          }

          v45 = OUTLINED_FUNCTION_12_19();
          v46(v45);
          __swift_destroy_boxed_opaque_existential_0Tm(v87);
          return 0;
        }

        if (sub_268B36304() || sub_268B362E4())
        {

          goto LABEL_18;
        }

        v66 = sub_268B362F4();

        if (v66)
        {

          goto LABEL_18;
        }

        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_82(v34, qword_2802CDA10);
        (*(v82 + 16))(v76);
        v67 = sub_268B37A34();
        v68 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v68))
        {
          v69 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v69);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v70, v71, "Parse-Extension#isQuickStopParse Parse is Quickstop uso parse, returning true");
          OUTLINED_FUNCTION_6();
        }

        v72 = OUTLINED_FUNCTION_12_19();
        v73(v72);
        __swift_destroy_boxed_opaque_existential_0Tm(v87);
        return 1;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v87);
    }

    else
    {

      sub_2688EF38C(&v85, &byte_2802A6450, &byte_268B3BE10);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_268A4118C()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  result = sub_268A40454();
  if (!result)
  {
    return result;
  }

  sub_268B35DC4();
  if (!v13)
  {

    sub_2688EF38C(&v12, &byte_2802A6450, &byte_268B3BE10);
    return 0;
  }

  sub_2688EF2B0(&v12, v14);
  sub_2688EF2C0(v14, &v12);
  sub_268B360C4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14);

    return 0;
  }

  sub_268B36334();
  if (v12)
  {

LABEL_10:
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    return 0;
  }

  v8 = sub_268B36324();

  if (v8)
  {

    goto LABEL_10;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v0, qword_2802CDA10);
  (*(v2 + 16))(v6);
  v9 = sub_268B37A34();
  v10 = sub_268B37F04();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_14();
    *v11 = 0;
    _os_log_impl(&dword_2688BB000, v9, v10, "Parse-Extension#isTurnOff Parse is Turn off, returning true", v11, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v2 + 8))(v6, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return 1;
}

unint64_t sub_268A41424()
{
  result = qword_2802A77C0;
  if (!qword_2802A77C0)
  {
    sub_268B35E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A77C0);
  }

  return result;
}

id sub_268A4149C()
{
  result = [objc_allocWithZone(type metadata accessor for SetVolumeLevelIntentHandler()) init];
  qword_2802CD9B8 = result;
  return result;
}

uint64_t sub_268A414D0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v33 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v15 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v32 = *(v9 + 16);
  v32(v14, v15, v7);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_14();
    v31 = v2;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "SetVolumeLevelFlowStrategy#actionForInput called", v18, 2u);
    v2 = v31;
    OUTLINED_FUNCTION_12();
  }

  v19 = *(v9 + 8);
  v19(v14, v7);
  sub_268B35414();
  v20 = sub_268982FF8(v6);
  (*(v2 + 8))(v6, v34);
  if (v20)
  {
    return sub_268B34EC4();
  }

  v22 = v33;
  v32(v33, v15, v7);
  v23 = sub_268B37A34();
  v24 = sub_268B37EE4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "SetVolumeLevelFlowStrategy#actionForInput unable to create SettingsIntent from parse", v25, 2u);
    OUTLINED_FUNCTION_12();
  }

  v19(v22, v7);
  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_1_43();
  OUTLINED_FUNCTION_4_10(v26 + 22, v27, v28, v29);
  return sub_268B34ED4();
}

void sub_268A417EC(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v57 = a1;
  v58 = a3;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v55 = v7;
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v54 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v53 = type metadata accessor for SettingsIntent(0);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v51 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v24 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v49 = *(v18 + 16);
  v50 = v24;
  v49(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37ED4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_14();
    v48 = v18;
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "SetVolumeLevelFlowStrategy#makeIntentFromParse called", v27, 2u);
    v18 = v48;
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v18 + 8);
  v28(v23, v16);
  v29 = v54;
  (*(v55 + 16))(v54, v57, v56);
  sub_26897BBA8(v29, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v53) == 1)
  {
    sub_26891E52C(v12);
    v30 = v51;
    (v49)(v51, v50, v16);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_14();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "SetVolumeLevelFlowStrategy#makeIntentFromParse unable to create SettingsIntent from parse", v33, 2u);
      OUTLINED_FUNCTION_12();
    }

    v28(v30, v16);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_43();
    OUTLINED_FUNCTION_4_10(v34 + 27, v35, v36, v37);
    sub_2688C2ECC();
    v38 = swift_allocError();
    *v39 = 102;
    v58(v38, 1);
  }

  else
  {
    sub_26891E594(v12, v15);
    if (a2)
    {
      v40 = a2;
    }

    else
    {
      v40 = [objc_allocWithZone(type metadata accessor for SetVolumeLevelIntent()) init];
    }

    v41 = a2;
    sub_268A8242C(v15);
    v42 = v52;
    v43 = v52[5];
    v44 = v52[6];
    __swift_project_boxed_opaque_existential_1(v52 + 2, v43);
    v45 = swift_allocObject();
    v45[2] = v58;
    v45[3] = a4;
    v45[4] = v40;
    v46 = v40;

    sub_268AD35F4(v46, &off_287953C08, (v42 + 7), sub_268A4258C, v45, v43, v44);

    sub_26891E5F8(v15);
  }
}

uint64_t sub_268A41CD0(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v10, v11, "SetVolumeLevelFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_268A41E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3C5A0;
  sub_268B34BB4();
  swift_allocObject();
  *(v0 + 32) = sub_268B34BA4();
  swift_allocObject();
  *(v0 + 40) = sub_268B34BA4();
  return v0;
}

uint64_t sub_268A41FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

id sub_268A42050()
{
  if (qword_2802A4ED8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9B8;

  return v1;
}

uint64_t sub_268A420AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A42118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A42184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A421F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A42240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A42294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A42300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A42494(uint64_t a1)
{
  result = sub_268A4250C(&qword_2802A77D0, &unk_268B46E04);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4250C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SetVolumeLevelFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A4254C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A425C8()
{
  result = [v0 mediaType];
  if (result)
  {
    if ([v0 reference] || objc_msgSend(v0, sel_sortOrder))
    {
      return 0;
    }

    sub_2688EF000(v0, &selRef_albumName);
    if (v2)
    {
      goto LABEL_6;
    }

    sub_2688EF000(v0, &selRef_mediaName);
    if (v3)
    {
      goto LABEL_6;
    }

    if (sub_2689452B0(v0, &selRef_genreNames))
    {

      result = sub_2689452B0(v0, &selRef_genreNames);
      if (!result)
      {
        return result;
      }

      v4 = *(result + 16);

      if (v4)
      {
        return 0;
      }
    }

    sub_2688EF000(v0, &selRef_artistName);
    if (v5)
    {
LABEL_6:

      return 0;
    }

    if (!sub_2689452B0(v0, &selRef_moodNames))
    {
LABEL_16:
      v7 = [v0 releaseDate];
      if (v7)
      {

        return 0;
      }

      sub_2688EF000(v0, &selRef_mediaIdentifier);
      if (!v8)
      {
        return 1;
      }

      goto LABEL_6;
    }

    result = sub_2689452B0(v0, &selRef_moodNames);
    if (result)
    {
      v6 = *(result + 16);

      if (v6)
      {
        return 0;
      }

      goto LABEL_16;
    }
  }

  return result;
}

void sub_268A4271C(void *a1)
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = [a1 isDeviceSelectedUsingContext];
  sub_2688C063C();
  v10 = sub_268B38054();
  if (v9)
  {
    v32 = v10;
    v11 = sub_268B38074();

    if (v11)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
      (*(v4 + 16))(v8);
      v12 = sub_268B37A34();
      v13 = sub_268B37F04();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_14();
        *v14 = 0;
        _os_log_impl(&dword_2688BB000, v12, v13, "Updating parameters for Volume control", v14, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v4 + 8))(v8, v2);
      v16 = sub_268A34F08();
      if (*(v15 + 16) == 1)
      {
        v17 = OUTLINED_FUNCTION_22_15();
        (v16)(v17);
      }

      else
      {
        v18 = v15;
        v19 = sub_268988580(a1);
        if (!v20)
        {
          v19 = sub_268988568(a1);
        }

        *(v18 + 40) = v19;
        *(v18 + 48) = v20;

        v21 = OUTLINED_FUNCTION_22_15();
        (v16)(v21);
      }

      v23 = sub_268A34F08();
      if (*(v22 + 16) == 1)
      {
        v24 = OUTLINED_FUNCTION_22_15();
        (v23)(v24);
      }

      else
      {
        v25 = v22;
        v26 = [a1 name];
        if (v26)
        {
          v27 = v26;
          v28 = sub_268B37BF4();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0;
        }

        *(v25 + 8) = v28;
        *(v25 + 16) = v30;

        v31 = OUTLINED_FUNCTION_22_15();
        (v23)(v31);
      }
    }
  }

  else
  {

    MEMORY[0x2821F96F8](v10, v10);
  }
}

void sub_268A42A30(void *a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 isDeviceSelectedUsingContext];
  sub_2688C063C();
  v7 = sub_268B38054();
  if (v6)
  {
    v27 = v7;
    v8 = sub_268B38074();

    if (v8)
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v9 = __swift_project_value_buffer(v2, qword_2802CDA10);
      (*(v3 + 16))(v5, v9, v2);
      v10 = sub_268B37A34();
      v11 = sub_268B37F04();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2688BB000, v10, v11, "Updating parameters for Volume control", v12, 2u);
        MEMORY[0x26D6266E0](v12, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      v14 = sub_268A33A30();
      if (*(v13 + 16) == 1)
      {
        (v14)(v28, 0);
      }

      else
      {
        v15 = v13;
        v16 = sub_268988580(a1);
        if (!v17)
        {
          v16 = sub_268988568(a1);
        }

        *(v15 + 40) = v16;
        *(v15 + 48) = v17;

        (v14)(v28, 0);
      }

      v19 = sub_268A33A30();
      if (*(v18 + 16) == 1)
      {
        (v19)(v28, 0);
      }

      else
      {
        v20 = v18;
        v21 = [a1 name];
        if (v21)
        {
          v22 = v21;
          v23 = sub_268B37BF4();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        *(v20 + 8) = v23;
        *(v20 + 16) = v25;

        (v19)(v28, 0);
      }
    }
  }

  else
  {

    MEMORY[0x2821F96F8](v7, v7);
  }
}

id sub_268A42D8C()
{
  if (qword_2802A4DF0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD948;
  qword_2802CD9C0 = qword_2802CD948;

  return v1;
}

void sub_268A42DF0()
{
  OUTLINED_FUNCTION_26();
  v172 = v0;
  v173 = v1;
  v177 = v2;
  v4 = v3;
  v6 = v5;
  v179 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v170 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_78();
  v164 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v161 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v169 = &v156 - v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v158 = &v156 - v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_78();
  v163 = v21;
  OUTLINED_FUNCTION_9();
  v22 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v171 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v168 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_78();
  v162 = v27;
  OUTLINED_FUNCTION_9();
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v175 = v29;
  v176 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v180 = v31 - v30;
  OUTLINED_FUNCTION_9();
  v32 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v160 = v36;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v37);
  v159 = &v156 - v38;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v39);
  v41 = &v156 - v40;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    OUTLINED_FUNCTION_82(v32, qword_2802CDA10);
    v42 = OUTLINED_FUNCTION_139();
    v165 = v43;
    v166 = v44;
    v167 = v45;
    (v44)(v42);
    v46 = v6;
    v47 = sub_268B37A34();
    v48 = sub_268B37ED4();
    v178 = v32;
    v49 = v48;

    v50 = os_log_type_enabled(v47, v49);
    v174 = v4;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v184[0] = v157;
      *v51 = 136315138;
      v182[0] = [v46 currentVolumeLevel];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC8, &unk_268B3D780);
      v52 = sub_268B37C24();
      v54 = sub_26892CDB8(v52, v53, v184);

      *(v51 + 4) = v54;
      _os_log_impl(&dword_2688BB000, v47, v49, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse called with current volume level: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v157);
      OUTLINED_FUNCTION_12();
      v4 = v174;
      OUTLINED_FUNCTION_12();
    }

    v55 = *(v34 + 8);
    v56 = v178;
    v55(v41, v178);
    v57 = v179;
    sub_268A82B50(v179, v180);
    v58 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
    swift_beginAccess();
    if (*&v46[v58] == 100)
    {
      v59 = v57;
      v60 = swift_allocObject();
      v61 = v172;
      v62 = v173;
      v60[2] = v172;
      v60[3] = v59;
      v60[4] = v46;
      v60[5] = v62;
      v63 = v177;
      v60[6] = v4;
      v60[7] = v63;
      v64 = v61[5];
      v65 = v61[6];
      __swift_project_boxed_opaque_existential_1(v61 + 2, v64);
      v66 = v46;

      v67 = v59;

      sub_2689CE88C(0xD00000000000001FLL, 0x8000000268B588C0, sub_268A49278, v60, v64, v65);

LABEL_42:
      (*(v175 + 8))(v180, v176);
      goto LABEL_43;
    }

    v68 = [v57 device];
    if (!v68)
    {
      v79 = v160;
      v166(v160, v165, v56);
      v80 = sub_268B37A34();
      v81 = sub_268B37EE4();
      if (os_log_type_enabled(v80, v81))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_7(&dword_2688BB000, v82, v83, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse Did not receive device in intent");
        OUTLINED_FUNCTION_12();
      }

      v55(v79, v56);
      sub_268B36E84();
      if (!v84)
      {
        OUTLINED_FUNCTION_21_14();
        sub_268947F08();
      }

      OUTLINED_FUNCTION_28_17();
      v171[13](v168, *MEMORY[0x277D5BC00], v22);
      v85 = sub_268B350F4();
      v86 = v169;
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v85);
      v90 = *MEMORY[0x277D5B908];
      v91 = sub_268B34B94();
      OUTLINED_FUNCTION_4();
      (*(v92 + 104))(v170, v90, v91);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v91);
      isa = v80->isa;
      v97 = v86;
      v98 = v161;
      sub_2688F1FA4(v97, v161, &unk_2802A57B0, &unk_268B3CE00);
      if (__swift_getEnumTagSinglePayload(v98, 1, v85) == 1)
      {
        sub_2688C058C(v98, &unk_2802A57B0, &unk_268B3CE00);
      }

      else
      {
        sub_268B350B4();
        OUTLINED_FUNCTION_16_25();
        (*(v119 + 8))(v98, v85);
      }

      OUTLINED_FUNCTION_10_21();
      v120 = v170;
      sub_2688E3F08(v121, v122, v123, v124, v125, v126, v127, v170, isa);

      sub_2688C058C(v120, &unk_2802A62B0, &unk_268B3BDF0);
      sub_2688C058C(v169, &unk_2802A57B0, &unk_268B3CE00);
      v128 = OUTLINED_FUNCTION_23_16();
      v129(v128);
      sub_2688C2ECC();
      v130 = swift_allocError();
      v132 = OUTLINED_FUNCTION_8_21(v130, v131, 24);
      v133(v132);
      goto LABEL_41;
    }

    v69 = v68;
    v70 = [v46 currentVolumeLevel];
    if (!v70)
    {
      v99 = v159;
      v166(v159, v165, v56);
      v100 = sub_268B37A34();
      v101 = sub_268B37EE4();
      if (os_log_type_enabled(v100, v101))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_7(&dword_2688BB000, v102, v103, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse Did not receive the volume level");
        v99 = v159;
        OUTLINED_FUNCTION_12();
      }

      v55(v99, v56);
      sub_268B36E84();
      v178 = v69;
      if (!v104)
      {
        OUTLINED_FUNCTION_21_14();
        sub_268947F08();
      }

      OUTLINED_FUNCTION_28_17();
      v171[13](v162, *MEMORY[0x277D5BC00], v22);
      v105 = sub_268B350F4();
      v106 = v163;
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v107, v108, v109, v105);
      v110 = *MEMORY[0x277D5B908];
      v111 = sub_268B34B94();
      OUTLINED_FUNCTION_4();
      (*(v112 + 104))(v164, v110, v111);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v111);
      v116 = v100->isa;
      v117 = v106;
      v118 = v158;
      sub_2688F1FA4(v117, v158, &unk_2802A57B0, &unk_268B3CE00);
      if (__swift_getEnumTagSinglePayload(v118, 1, v105) == 1)
      {
        sub_2688C058C(v118, &unk_2802A57B0, &unk_268B3CE00);
      }

      else
      {
        sub_268B350B4();
        OUTLINED_FUNCTION_16_25();
        (*(v141 + 8))(v118, v105);
      }

      OUTLINED_FUNCTION_10_21();
      v142 = v164;
      sub_2688E3F08(v143, v144, v145, v146, v147, v148, v149, v164, v116);

      sub_2688C058C(v142, &unk_2802A62B0, &unk_268B3BDF0);
      sub_2688C058C(v163, &unk_2802A57B0, &unk_268B3CE00);
      v150 = OUTLINED_FUNCTION_23_16();
      v151(v150);
      sub_2688C2ECC();
      v152 = swift_allocError();
      v154 = OUTLINED_FUNCTION_8_21(v152, v153, 25);
      v155(v154);

LABEL_41:
      sub_2688C058C(v184, &unk_2802A57C0, &qword_268B3BE00);
      goto LABEL_42;
    }

    v71 = v70;
    [v70 doubleValue];
    v73 = round(v72);
    if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v73 <= -9.22337204e18)
    {
      goto LABEL_48;
    }

    v171 = v71;
    if (v73 >= 9.22337204e18)
    {
      goto LABEL_49;
    }

    sub_268A32E28(v73, v182);
    memcpy(v183, &v182[2], 0x51uLL);
    sub_2688C058C(v183, &qword_2802A5C88, qword_268B418C0);
    LODWORD(v182[2]) = 0;
    memset(&v182[3], 0, 72);
    LOBYTE(v182[12]) = 1;
    sub_268A42A30(v69);
    v41 = v179;
    v74 = sub_268B1CC90(v179);
    if (!v74)
    {
LABEL_38:
      memcpy(v184, v182, 0x62uLL);
      v134 = swift_allocObject();
      v135 = v173;
      v134[2] = v172;
      v134[3] = v41;
      v134[4] = v46;
      v134[5] = v135;
      v136 = v46;
      v137 = v41;
      v138 = v177;
      v134[6] = v174;
      v134[7] = v138;
      v139 = v136;

      v140 = v137;

      sub_268A33A50(v184);

      (*(v175 + 8))(v180, v176);
      memcpy(v181, v182, 0x62uLL);
      sub_268A35710(v181);
LABEL_43:
      OUTLINED_FUNCTION_23();
      return;
    }

    v32 = v74;
    v178 = v69;
    v170 = v46;
    v4 = sub_2688EFD0C();
    v75 = 0;
    v34 = v32 & 0xC000000000000001;
    v6 = (v32 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v4 == v75)
      {
        goto LABEL_37;
      }

      if (v34)
      {
        v76 = MEMORY[0x26D625BD0](v75, v32);
      }

      else
      {
        if (v75 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v76 = *(v32 + 8 * v75 + 32);
      }

      v77 = v76;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      v184[0] = v76;
      v22 = type metadata accessor for DeviceQuery();
      sub_268A491D4(&qword_2802A5B68, 255, type metadata accessor for DeviceQuery, &protocol conformance descriptor for DeviceQuery);
      sub_268B37684();
      v41 = v78;

      if (v41)
      {

LABEL_37:

        BYTE1(v182[12]) = v4 != v75;
        v69 = v178;
        v41 = v179;
        v46 = v170;
        goto LABEL_38;
      }

      ++v75;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}