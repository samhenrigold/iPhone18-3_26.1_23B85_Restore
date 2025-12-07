uint64_t sub_268A0FB7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8, char a9)
{
  v59 = a7;
  v58 = a8;
  v49 = a6;
  v57 = a5;
  v52 = a4;
  v60 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v48 - v16;
  v56 = sub_268B34E24();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v24);
  v26 = (&v48 - v25);
  sub_2688F1FA4(a1, &v48 - v25, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    sub_268B36E84();
    if (!v28)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v34 = a2;
    v35 = __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    (*(v54 + 104))(v53, *MEMORY[0x277D5BC00], v56);
    v36 = sub_268B350F4();
    v37 = v55;
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v36);
    v38 = sub_268B34B94();
    v39 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v38);
    v40 = *v35;
    v41 = v37;
    v42 = v50;
    sub_2688F1FA4(v41, v50, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v42, 1, v36) == 1)
    {
      sub_2688C058C(v42, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v52 = v40;
      sub_268B350B4();
      (*(*(v36 - 8) + 8))(v42, v36);
    }

    v43 = v53;
    sub_2688E2D50();

    sub_2688C058C(v39, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v55, &unk_2802A57B0, &unk_268B3CE00);
    (*(v54 + 8))(v43, v56);
    __swift_project_boxed_opaque_existential_1(v34 + 18, v34[21]);
    sub_2688C2ECC();
    v44 = swift_allocError();
    *v45 = -119;
    sub_26894B450();

    v61[0] = v27;
    v62 = 1;
    v46 = v27;
    v59(v61);

    return sub_2688C058C(v61, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v29 = v52;
    sub_2689186C8(v26, v23);
    __swift_project_boxed_opaque_existential_1(a2 + 23, a2[26]);
    v30 = sub_268B36FA4();
    sub_2688F1FA4(v23, v21, &unk_2802A56E0, &unk_268B3CDF0);
    v31 = *&v21[*(v18 + 48)];
    if (v30)
    {
      sub_268A10210();
    }

    else
    {
      sub_268A10E74(v21, v31, v60, v29, v57, a9 & 1, v49, v59, v58, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    }

    sub_2688C058C(v23, &unk_2802A56E0, &unk_268B3CDF0);
    v32 = sub_268B350F4();
    return (*(*(v32 - 8) + 8))(v21, v32);
  }
}

void sub_268A10210()
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
    _os_log_impl(&dword_2688BB000, v37, v38, "SkipTimeHandleIntentStrategy#intentHandledResponse...", v39, 2u);
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
  sub_268A83648(v80, v68, v64, v65, HIDWORD(v63), v77, v46, v57, v60, sub_268A1440C, v53, v67, v66, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);

  (*(v78 + 8))(v46, v79);
  sub_2688C058C(v50, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v71 + 8))(v58, v72);
  __swift_destroy_boxed_opaque_existential_0Tm(v81);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A107BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
    _os_log_impl(&dword_2688BB000, v27, v28, "SkipTimeHandleIntentStrategy#intentHandledResponse output has been created.", v29, 2u);
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
  sub_2688E2D50();

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
    _os_log_impl(&dword_2688BB000, v42, v43, "SkipTimeHandleIntentStrategy#intentHandledResponse returning output", v44, 2u);
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v48(v41, v20);
  return v56(v54);
}

uint64_t sub_268A112C0(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, char *a9, uint64_t a10)
{
  v83 = a8;
  v84 = a7;
  v81 = a6;
  v82 = a5;
  v89 = a3;
  LODWORD(v79) = a2;
  v85 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v70 - v12;
  v78 = sub_268B35044();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v74 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v72 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v73 = &v70 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v70 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v70 - v32;
  v34 = sub_268B34E24();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v80 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v70 - v39;
  v87 = v38;
  v88 = a4;
  v86 = v35;
  if (v79)
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
    v59 = v74;
    v60 = v72;
    __swift_project_boxed_opaque_existential_1(v88 + 18, v88[21]);
    (*(v58 + 104))(v80, *MEMORY[0x277D5BC00], v57);
    sub_2688F1FA4(v41, v21, &unk_2802A56E0, &unk_268B3CDF0);

    v61 = sub_268B350F4();
    v62 = *(v61 - 8);
    v63 = v73;
    (*(v62 + 32))(v73, v21, v61);
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

    v65 = v80;
    sub_2688E2D50();

    sub_2688C058C(v59, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v63, &unk_2802A57B0, &unk_268B3CE00);
    (*(v86 + 8))(v65, v87);
    __swift_project_boxed_opaque_existential_1(v88 + 18, v88[21]);
    sub_2688C2ECC();
    v66 = swift_allocError();
    *v67 = -120;
    sub_26894B450();

    v92[0] = v85;
    v95 = 1;
    v68 = v85;
  }

  else
  {
    v80 = a9;
    sub_268947F08();
    v74 = v43;
    v79 = v44;
    __swift_project_boxed_opaque_existential_1(a4 + 18, a4[21]);
    (*(v35 + 104))(v40, *MEMORY[0x277D5BC10], v34);
    sub_2688F1FA4(v81, v23, &unk_2802A56E0, &unk_268B3CDF0);

    v45 = sub_268B350F4();
    v46 = *(v45 - 8);
    (*(v46 + 32))(v33, v23, v45);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v45);
    v47 = sub_268B34B94();
    v48 = v71;
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
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

    v49 = v89;
    sub_2688E2D50();

    sub_2688C058C(v48, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v33, &unk_2802A57B0, &unk_268B3CE00);
    (*(v86 + 8))(v40, v87);
    v50 = v88;
    __swift_project_boxed_opaque_existential_1(v88 + 18, v88[21]);
    sub_26894B450();
    __swift_project_boxed_opaque_existential_1(v50 + 18, v50[21]);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v92[0] = v85;

    sub_268948494(v92);
    sub_2688C058C(v92, &byte_2802A6450, &byte_268B3BE10);
    v51 = v75;
    sub_268A82B50(v49, v75);
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
    v54 = v76;
    v55 = v77;
    v56 = v78;
    (*(v76 + 16))(v77, v51, v78);
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

void sub_268A11E3C()
{
  OUTLINED_FUNCTION_26();
  v160 = v1;
  v161 = v0;
  v152 = v2;
  v4 = v3;
  v6 = v5;
  v157 = v7;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v133 - v9;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v142 = v12;
  v143 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v141 = v14 - v13;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v145 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v148 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v144 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v147 = v25;
  OUTLINED_FUNCTION_8();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v133 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v133 - v30;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v32 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v33 = *(v17 + 16);
  v153 = v32;
  v154 = v33;
  v155 = v17 + 16;
  (v33)(v31);
  v34 = sub_268B37A34();
  v35 = sub_268B37ED4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_14();
    v159 = v17;
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse()", v36, 2u);
    v17 = v159;
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v17 + 8);
  v37 = v17 + 8;
  v156 = v38;
  v38(v31, v15);
  v39 = [v6 duration];
  if (v39)
  {
    v40 = v39;
    v158 = v15;
    v138 = v10;
    v136 = [v39 direction];

    v151 = sub_268B36E84();
    v139 = v6;
    if (v41)
    {
      v149 = v41;
    }

    else
    {
      v47 = OBJC_IVAR___SkipTimeIntentResponse_code;
      swift_beginAccess();
      v164[0] = *(v4 + v47);
      sub_268B38404();
      sub_268947F08();
      v151 = v48;
      v149 = v49;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000268B572E0;
    v51 = OBJC_IVAR___SkipTimeIntentResponse_code;
    swift_beginAccess();
    v164[0] = *(v4 + v51);
    sub_268B38404();
    v52 = sub_268B36E94();
    v54 = v53;

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v52;
    *(inited + 56) = v54;
    v55 = sub_268B37B84();
    v56 = sub_268B36754();
    v57 = sub_268B36734();
    v159 = v37;
    v140 = v55;
    v137 = v56;
    if (!v57)
    {
      v57 = sub_268B36744();
    }

    v58 = v57;
    v59 = v158;
    v154(v29, v153, v158);

    v60 = v58;
    v61 = sub_268B37A34();
    v62 = sub_268B37ED4();

    v63 = os_log_type_enabled(v61, v62);
    v150 = v60;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v134 = v29;
      v135 = v4;
      v65 = v64;
      v66 = swift_slowAlloc();
      v164[0] = v66;
      *v65 = 136315138;
      sub_268B36714();
      v67 = v141;
      sub_268B36B14();

      v68 = sub_268B36784();
      v70 = v69;
      (*(v142 + 8))(v67, v143);
      v60 = sub_26892CDB8(v68, v70, v164);

      *(v65 + 4) = v60;
      _os_log_impl(&dword_2688BB000, v61, v62, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      OUTLINED_FUNCTION_12();
      v4 = v135;
      OUTLINED_FUNCTION_12();

      v71 = v134;
    }

    else
    {

      v71 = v29;
    }

    v156(v71, v59);
    if (*(v4 + v51) == 100)
    {
      v72 = swift_allocObject();
      v73 = v151;
      v74 = v161;
      v72[2] = v150;
      v72[3] = v74;
      OUTLINED_FUNCTION_18_11(v72, v73);

      v75 = v60;

      v154(v147, v153, v158);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v76 = v75;
      OUTLINED_FUNCTION_29_9();
      swift_retain_n();
      v77 = v75;
      v78 = sub_268B37A34();
      v79 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_160_0(v79))
      {
        v80 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_52_1(v80);
        OUTLINED_FUNCTION_50_0(&dword_2688BB000, v81, v82, "callIntentHandledFailedUnsupportedCommand in SkipTimeDialogTemplatingService");
        OUTLINED_FUNCTION_12();
      }

      v83 = v159;
      v156(v147, v158);
      sub_268A13A00(v77, v162);
      if (v163 == 2)
      {
        v84 = OUTLINED_FUNCTION_39_5();
        v85(v84);
        v86 = sub_268B37A34();
        v87 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_160_0(v87))
        {
          v88 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_52_1(v88);
          OUTLINED_FUNCTION_50_0(&dword_2688BB000, v89, v90, "Could not create skip error params");
          v83 = v159;
          OUTLINED_FUNCTION_12();
        }

        v156(v144, v158);
        v91 = sub_2688C2ECC();
        v92 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v91);
        OUTLINED_FUNCTION_5_14(v92, v93, 141);
        OUTLINED_FUNCTION_37_9();
        MEMORY[0x28223BE20](v94);
        OUTLINED_FUNCTION_1_36();
        OUTLINED_FUNCTION_17_16(v95);
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_13_11(v163);
      if (v121)
      {
        OUTLINED_FUNCTION_33_12();
        OUTLINED_FUNCTION_4_23();
        sub_268AC6488();
        sub_2688C058C(v162, &qword_2802A70C8, qword_268B43DE0);
      }

      else
      {
        if (v120 != 2)
        {
          sub_2688C058C(v162, &qword_2802A70C8, qword_268B43DE0);
          v123 = sub_2688C2ECC();
          v124 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v123);
          OUTLINED_FUNCTION_5_14(v124, v125, 142);
          OUTLINED_FUNCTION_37_9();
          MEMORY[0x28223BE20](v126);
          OUTLINED_FUNCTION_1_36();
          OUTLINED_FUNCTION_17_16(v127);
LABEL_37:
          OUTLINED_FUNCTION_28_13();
          sub_2688C058C(v83, &qword_2802A6300, &unk_268B3BD80);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_33_12();
        OUTLINED_FUNCTION_4_23();
        sub_268AC64DC();
        sub_2688C058C(v162, &qword_2802A70C8, qword_268B43DE0);
      }

LABEL_38:

      swift_bridgeObjectRelease_n();
LABEL_42:

      goto LABEL_43;
    }

    v96 = swift_allocObject();
    v97 = v151;
    v98 = v161;
    v96[2] = v150;
    v96[3] = v98;
    OUTLINED_FUNCTION_18_11(v96, v97);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v99 = v60;
    OUTLINED_FUNCTION_29_9();
    swift_retain_n();
    v100 = v60;
    v154(v148, v153, v158);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v101 = v100;
    OUTLINED_FUNCTION_29_9();
    swift_retain_n();
    v77 = v100;
    v102 = sub_268B37A34();
    v103 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_160_0(v103))
    {
      v104 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_52_1(v104);
      OUTLINED_FUNCTION_50_0(&dword_2688BB000, v105, v106, "callGenericIntentHandledFailed in SkipTimeDialogTemplatingService");
      OUTLINED_FUNCTION_12();
    }

    v107 = v159;
    v156(v148, v158);
    sub_268A13A00(v77, v162);
    if (v163 == 2)
    {
      v108 = OUTLINED_FUNCTION_39_5();
      v109(v108);
      v110 = sub_268B37A34();
      v111 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_160_0(v111))
      {
        v112 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_52_1(v112);
        OUTLINED_FUNCTION_50_0(&dword_2688BB000, v113, v114, "Could not create skip error params");
        v107 = v159;
        OUTLINED_FUNCTION_12();
      }

      v156(v145, v158);
      v115 = sub_2688C2ECC();
      v116 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v115);
      OUTLINED_FUNCTION_5_14(v116, v117, 143);
      OUTLINED_FUNCTION_37_9();
      MEMORY[0x28223BE20](v118);
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_17_16(v119);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_13_11(v163);
    if (v121)
    {
      OUTLINED_FUNCTION_33_12();
      OUTLINED_FUNCTION_4_23();
      sub_268ABAEA4();
      sub_2688C058C(v162, &qword_2802A70C8, qword_268B43DE0);
    }

    else
    {
      if (v122 != 2)
      {
        sub_2688C058C(v162, &qword_2802A70C8, qword_268B43DE0);
        v128 = sub_2688C2ECC();
        v129 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v128);
        OUTLINED_FUNCTION_5_14(v129, v130, 144);
        OUTLINED_FUNCTION_37_9();
        MEMORY[0x28223BE20](v131);
        OUTLINED_FUNCTION_1_36();
        OUTLINED_FUNCTION_17_16(v132);
LABEL_40:
        OUTLINED_FUNCTION_28_13();
        sub_2688C058C(v107, &qword_2802A6300, &unk_268B3BD80);
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_33_12();
      OUTLINED_FUNCTION_4_23();
      sub_268ABB0EC();
      sub_2688C058C(v162, &qword_2802A70C8, qword_268B43DE0);
    }

LABEL_41:

    swift_bridgeObjectRelease_n();

    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1((v161 + 144), *(v161 + 168));
  sub_2688C2ECC();
  v42 = OUTLINED_FUNCTION_26_1();
  *v43 = -117;
  OUTLINED_FUNCTION_6_26();
  sub_26894B450();

  v44 = OUTLINED_FUNCTION_26_1();
  *v45 = -117;
  v46 = OUTLINED_FUNCTION_8_16(v44);
  v152(v46);
  sub_2688C058C(v164, &unk_2802A57C0, &qword_268B3BE00);
LABEL_43:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A12C6C(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
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
      _os_log_impl(&dword_2688BB000, v45, v46, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v50, 2u);
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
    sub_2688E2D50();

    sub_2688C058C(v54, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v114 + 8))(v72, v48);
    __swift_project_boxed_opaque_existential_1(v115 + 18, v115[21]);
    sub_2688C2ECC();
    v73 = swift_allocError();
    *v74 = -90;
    sub_26894B450();

    v75 = swift_allocError();
    *v76 = -90;
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
      _os_log_impl(&dword_2688BB000, v57, v58, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v59, 2u);
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
    sub_2688E2D50();

    sub_2688C058C(v68, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v105, &unk_2802A57B0, &unk_268B3CE00);
    (*(v114 + 8))(v78, v62);
    __swift_project_boxed_opaque_existential_1(v115 + 18, v115[21]);
    sub_2688C2ECC();
    v79 = swift_allocError();
    *v80 = -116;
    sub_26894B450();

    v81 = v99;
    (v96)(v99, v97, v32);
    v82 = sub_268B37A34();
    v83 = sub_268B37ED4();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_2688BB000, v82, v83, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v84, 2u);
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

void *sub_268A13A00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  LOWORD(__src[0]) = 0;
  BYTE2(__src[0]) = 0;
  __src[1] = 0;
  __src[2] = 0;
  __src[3] = 1;
  memset(&__src[4], 0, 61);
  v3 = sub_268B18100(a1);
  if (v3)
  {
    v4 = v3;
    if (sub_2688EFD0C())
    {
      memcpy(__dst, &__src[1], 0x51uLL);
      sub_2688C058C(__dst, &qword_2802A5C88, qword_268B418C0);
      LODWORD(__src[1]) = 0;
      memset(&__src[2], 0, 72);
      LOBYTE(__src[11]) = 1;
      sub_268AE38AC(v4, v5, v6, v7);
    }
  }

  memcpy(v10, __src, 0x5DuLL);
  memcpy(__dst, __src, 0x5DuLL);
  sub_268A13FC8(v10, v9);
  sub_2689E9FB8(__dst);
  return memcpy(a2, __src, 0x5DuLL);
}

uint64_t sub_268A13B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A13BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A13C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A13CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A13D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A13DDC()
{
  if (qword_2802A4E48 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD978;

  return v1;
}

uint64_t sub_268A13E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A13E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A13EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A13F48(uint64_t a1)
{
  result = sub_268A13F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A13F70()
{
  result = qword_2802A70C0;
  if (!qword_2802A70C0)
  {
    type metadata accessor for SkipTimeHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A70C0);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268A140E8()
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

uint64_t sub_268A14220(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_268A112C0(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_268A142FC()
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

uint64_t sub_268A1440C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A107BC(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A144C0()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t OUTLINED_FUNCTION_5_14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  **(v3 + 40) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1)
{
  *(v1 - 192) = a1;
  *(v1 - 152) = 1;
  return v1 - 192;
}

__n128 OUTLINED_FUNCTION_13_11@<Q0>(uint64_t a1@<X8>)
{
  *(v2 + 96) = *v2;
  *(v3 - 176) = *(v1 + 384);
  *(v3 - 168) = a1;
  v4 = *(v2 + 48);
  *(v2 + 128) = *(v2 + 32);
  *(v2 + 144) = v4;
  *(v2 + 160) = *(v2 + 64);
  result = *(v2 + 77);
  *(v2 + 173) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_20()
{
  *(v0 + 248) = 0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  *(v0 + 328) = 1;
  return *(v0 + 184);
}

void OUTLINED_FUNCTION_17_16(uint64_t a1@<X8>)
{
  *(a1 - 32) = v1;
  *(a1 - 24) = v4;
  v5 = *(v3 + 216);
  *(a1 - 16) = v2;
  *(a1 - 8) = v5;
}

uint64_t OUTLINED_FUNCTION_18_11@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[6];
  a1[4] = v2[24];
  a1[5] = v5;
  v6 = v2[16];
  a1[6] = a2;
  a1[7] = v6;
  a1[8] = v2[19];
  a1[9] = v3;
  return v4;
}

void OUTLINED_FUNCTION_19_13()
{

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_28_13()
{

  return sub_268B366F4();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_40_7()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void *OUTLINED_FUNCTION_42_6()
{

  return memcpy((v1 - 192), (v0 + 240), 0x68uLL);
}

Swift::String_optional __swiftcall UsoTask_decreaseBy_common_Setting.verb()()
{
  v0 = 0x6573616572636564;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268A148F4()
{
  v1 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v42 = v2;
  MEMORY[0x28223BE20](v3);
  v41 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_268B360B4();
  OUTLINED_FUNCTION_1();
  v43 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6578, &qword_268B3FA60);
  MEMORY[0x28223BE20](v10);
  v12 = &v38[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6580, &qword_268B3FA68);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_3_31();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v38[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v38[-v18];
  v20 = sub_268A9EA48() - 2;
  result = 0;
  switch(v20)
  {
    case 0:
      return result;
    case 1:
      return 2;
    case 2:
      return 1;
    case 4:
      v40 = v1;
      sub_268B36534();
      if (v44 && (v22 = sub_268B35B94(), , v22))
      {
        sub_268B360A4();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v19, 1, 1, v5);
      }

      (*(v43 + 104))(v17, *MEMORY[0x277D5EE50], v5);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v5);
      v23 = *(v10 + 48);
      sub_26897743C(v19, v12);
      sub_26897743C(v17, &v12[v23]);
      OUTLINED_FUNCTION_1_17(v12);
      if (!v24)
      {
        sub_26897743C(v12, v0);
        OUTLINED_FUNCTION_1_17(&v12[v23]);
        if (!v24)
        {
          v36 = v43;
          (*(v43 + 32))(v9, &v12[v23], v5);
          sub_268A15988(&qword_2802A6588, MEMORY[0x277D5EE58], MEMORY[0x277D5EE60]);
          v39 = sub_268B37BB4();
          v37 = *(v36 + 8);
          v37(v9, v5);
          sub_2688EF38C(v17, &qword_2802A6580, &qword_268B3FA68);
          sub_2688EF38C(v19, &qword_2802A6580, &qword_268B3FA68);
          v37(v0, v5);
          sub_2688EF38C(v12, &qword_2802A6580, &qword_268B3FA68);
          if (v39)
          {
            return 0;
          }

LABEL_17:
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          v25 = v40;
          v26 = __swift_project_value_buffer(v40, qword_2802CDA10);
          v28 = v41;
          v27 = v42;
          (*(v42 + 16))(v41, v26, v25);

          v29 = sub_268B37A34();
          v30 = sub_268B37EE4();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v44 = v32;
            *v31 = 136315138;
            v33 = sub_268B385B4();
            v35 = sub_26892CDB8(v33, v34, &v44);

            *(v31 + 4) = v35;
            _os_log_impl(&dword_2688BB000, v29, v30, "Unable to determine setting name for task %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v32);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          (*(v27 + 8))(v28, v25);
          return 3;
        }

        OUTLINED_FUNCTION_11_9(v17);
        OUTLINED_FUNCTION_11_9(v19);
        (*(v43 + 8))(v0, v5);
LABEL_16:
        sub_2688EF38C(v12, &qword_2802A6578, &qword_268B3FA60);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_11_9(v17);
      OUTLINED_FUNCTION_11_9(v19);
      OUTLINED_FUNCTION_1_17(&v12[v23]);
      if (!v24)
      {
        goto LABEL_16;
      }

      sub_2688EF38C(v12, &qword_2802A6580, &qword_268B3FA68);
      return 0;
    default:
      return 3;
  }
}

uint64_t sub_268A14F30()
{
  if (!sub_268B36524())
  {
    return 0;
  }

  v0 = sub_2689BC188();

  if (v0 == 7)
  {
    return 0;
  }

  return v0;
}

uint64_t sub_268A14F8C@<X0>(char *a1@<X8>)
{
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_31();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  v16 = sub_268B36534();
  if (v37[1])
  {
    sub_268963658();
    if (v17)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_1_14(v17, qword_2802CDA10);
      v18(v15);
      v19 = sub_268B37A34();
      v20 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v20))
      {
        v21 = OUTLINED_FUNCTION_14();
        *v21 = 0;
        _os_log_impl(&dword_2688BB000, v19, v20, "UsoTask_decreaseBy_common_Setting#shouldHandle Task is settings. Handling in controls", v21, 2u);
        OUTLINED_FUNCTION_12();
      }

      v22 = 2;
    }

    else
    {
      sub_2689633E8();
      if (v27)
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_1_14(v27, qword_2802CDA10);
        v28(v13);
        v29 = sub_268B37A34();
        v30 = sub_268B37F04();
        if (OUTLINED_FUNCTION_196(v30))
        {
          v31 = OUTLINED_FUNCTION_14();
          *v31 = 0;
          _os_log_impl(&dword_2688BB000, v29, v30, "UsoTask_increaseBy_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls", v31, 2u);
          OUTLINED_FUNCTION_12();
        }

        v22 = 0;
        v15 = v13;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_1_14(v27, qword_2802CDA10);
        v32(v10);
        v33 = sub_268B37A34();
        v34 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_196(v34))
        {
          v35 = OUTLINED_FUNCTION_14();
          *v35 = 0;
          _os_log_impl(&dword_2688BB000, v33, v34, "UsoTask_decreaseBy_common_Setting#shouldHandle Task is not setting: Not handling in controls", v35, 2u);
          OUTLINED_FUNCTION_12();
        }

        v22 = 3;
        v15 = v10;
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v16 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_1_14(v16, qword_2802CDA10);
    v23(v1);
    v24 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v25))
    {
      v26 = OUTLINED_FUNCTION_14();
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "UsoTask_decreaseBy_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v26, 2u);
      OUTLINED_FUNCTION_12();
    }

    v22 = 3;
    v15 = v1;
  }

  result = (*(v5 + 8))(v15, v3);
  *a1 = v22;
  return result;
}

uint64_t sub_268A153AC(uint64_t a1)
{
  result = sub_268A15988(&qword_2802A70D0, MEMORY[0x277D5F150], &protocol conformance descriptor for UsoTask_decreaseBy_common_Setting);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A154F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A15548(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A1559C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A155F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A15644(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A15698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A156EC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A15740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A157A4(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A157F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A1585C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A158C0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A15924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A15988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_268A159F0()
{
  result = [objc_allocWithZone(type metadata accessor for SetShuffleStateIntentHandler()) init];
  qword_2802CD980 = result;
  return result;
}

uint64_t sub_268A15A24()
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
  sub_268A17730(&unk_2802A5890, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802CD988 = result;
  return result;
}

uint64_t sub_268A15C78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v66 = v3;
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v65 = v5 - v4;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v70 = v7;
  v71 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v72 = v8;
  MEMORY[0x28223BE20](v9);
  v75 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v65 - v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v68 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v69 = &v65 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - v22;
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
    _os_log_impl(&dword_2688BB000, v26, v27, "SetShuffleStateFlowStrategy#actionForInput called", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v16 + 8);
  v29(v23, v14);
  v30 = v73;
  sub_268B35414();
  sub_26893BA8C(v13);
  v31 = type metadata accessor for MediaPlayerIntent(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v31);
  sub_2688C2E64(v13);
  if (EnumTagSinglePayload == 1)
  {
    v33 = v68;
    v25(v68, v24, v14);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "SetShuffleStateFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v29(v33, v14);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_4_10(v37 + 25, v38, v39, v40);
    return sub_268B34ED4();
  }

  else
  {
    v68 = (v16 + 8);
    v42 = v72;
    sub_268B35414();
    v44 = v70;
    v43 = v71;
    v45 = (*(v70 + 88))(v42, v71);
    if (v45 == *MEMORY[0x277D5C128] || v45 == *MEMORY[0x277D5C150] || v45 == *MEMORY[0x277D5C160])
    {
      (*(v44 + 8))(v42, v43);
      return sub_268B34EC4();
    }

    else
    {
      v25(v69, v24, v14);
      v48 = v65;
      v49 = v66;
      v50 = v67;
      (*(v66 + 16))(v65, v30, v67);
      v51 = sub_268B37A34();
      v52 = sub_268B37EE4();
      if (os_log_type_enabled(v51, v52))
      {
        v54 = v48;
        v55 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v55 = 136315138;
        sub_268B35414();
        v56 = sub_268B37C24();
        v58 = v57;
        (*(v49 + 8))(v54, v50);
        v59 = sub_26892CDB8(v56, v58, &v76);
        v43 = v71;

        *(v55 + 4) = v59;
        _os_log_impl(&dword_2688BB000, v51, v52, "SetShuffleStateFlowStrategy#actionForInput received no valid parse %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        v44 = v70;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v49 + 8))(v48, v50);
      }

      v29(v69, v14);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_1_37();
      OUTLINED_FUNCTION_4_10(v61 | v60, v62, v63, v64);
      sub_268B34ED4();
      return (*(v44 + 8))(v72, v43);
    }
  }
}

uint64_t sub_268A162FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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
  if (qword_2802A4E58 != -1)
  {
    swift_once();
  }

  v34 = qword_2802CD988;
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
  aBlock[4] = sub_268A17624;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_6;
  v30 = _Block_copy(aBlock);
  v31 = v27;

  sub_268B37AE4();
  v43 = MEMORY[0x277D84F90];
  sub_268A17730(&unk_2802A7010, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v32 = v42;
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v30);
  _Block_release(v30);
  (*(v41 + 8))(v9, v32);
  (*(v39 + 8))(v14, v40);
}

void sub_268A166C4(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, void *a5)
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
    _os_log_impl(&dword_2688BB000, v21, v22, "SetShuffleStateFlowStrategy#makeIntentFromParse called", v27, 2u);
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
      _os_log_impl(&dword_2688BB000, v40, v41, "SetShuffleStateFlowStrategy#makeIntentFromParse received unexpected parse: %s", v42, 0xCu);
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
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000032, 0x8000000268B56D00, 0x6666756853746553, 0xEF6574617453656CLL, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v49 = swift_allocError();
    *v50 = 85;
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
      v48 = [objc_allocWithZone(type metadata accessor for SetShuffleStateIntent()) init];
    }

    v51 = v70;
    sub_2689CA4AC(v13);
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

    sub_268AD35F4(v58, &off_287953BC8, (v52 + 7), sub_268A17724, v56, v53, v54);

    sub_2688C2F6C(v55);
  }
}

uint64_t sub_268A16D68(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v10, v11, "Finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_268A16F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A16FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A1703C()
{
  if (qword_2802A4E50 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD980;

  return v1;
}

uint64_t sub_268A17098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A17104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A17170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A171DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A1722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A17280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A172EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A17368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A174BC(uint64_t a1, uint64_t a2)
{
  result = sub_268A17730(&qword_2802A70F0, a2, type metadata accessor for SetShuffleStateFlowStrategy, &unk_268B44024);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A1755C()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_268A17624()
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

  sub_268A166C4(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A176E4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A17730(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::String_optional __swiftcall UsoTask_enableSetting_common_MediaItem.verb()()
{
  if (sub_268A1781C() == 3)
  {
    v0 = UsoTask_enableSetting_common_MediaItem.referencedSetting()();
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

uint64_t sub_268A1781C()
{
  if ((sub_268A9D228() & 0xFE) != 0)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t UsoTask_enableSetting_common_MediaItem.referencedSetting()()
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

uint64_t sub_268A178DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_268A17924()
{
  v0 = sub_268A9D228();
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

uint64_t sub_268A17958()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B3F0D0;
  inited[3] = xmmword_268B3F0E0;
  UsoTask_enableSetting_common_MediaItem.verb()();
  v1 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v1)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_268A17A28()
{
  if (UsoTask_enableSetting_common_MediaItem.referencedSetting()())
  {
    sub_268964750();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
    v1 = OUTLINED_FUNCTION_14_7();

    return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  }
}

uint64_t UsoTask_enableSetting_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
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
  v15 = UsoTask_enableSetting_common_MediaItem.referencedSetting()();
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
        _os_log_impl(&dword_2688BB000, v18, v19, "UsoTask_enableSetting_common_MediaItem#shouldHandle Task is mediaPlayer. Handling in controls", v20, 2u);
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
          _os_log_impl(&dword_2688BB000, v28, v29, "UsoTask_enableSetting_common_MediaItem#shouldHandle Task is settings. Handling in controls", v30, 2u);
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
          _os_log_impl(&dword_2688BB000, v32, v33, "UsoTask_enableSetting_common_MediaItem#shouldHandle Task is not mediaPlayer/setting: Not handling in controls", v34, 2u);
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
      _os_log_impl(&dword_2688BB000, v23, v24, "UsoTask_enableSetting_common_MediaItem#shouldHandle no referenced setting found in task. Not handling in Controls", v25, 2u);
      OUTLINED_FUNCTION_12();
    }

    v21 = 3;
    v14 = v6;
  }

  result = (*(v3 + 8))(v14, v2);
  *a1 = v21;
  return result;
}

uint64_t sub_268A17FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A18050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A180A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A180F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A1814C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A181A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A181F4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A18248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A182AC(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A18300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A18364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A183C8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A1842C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A18490(uint64_t a1)
{
  result = sub_268A1853C(&qword_2802A7108, &protocol conformance descriptor for UsoTask_enableSetting_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A1853C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B364C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A18584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268B366C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_268A185F0()
{
  if (qword_2802A4EA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_268A1864C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7178, &qword_268B442C8);
  OUTLINED_FUNCTION_245(v0);
  result = OUTLINED_FUNCTION_1_38();
  qword_2802A7120 = result;
  return result;
}

uint64_t sub_268A18698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7198, &qword_268B442E8);
  OUTLINED_FUNCTION_245(v0);
  result = OUTLINED_FUNCTION_1_38();
  qword_2802A7128 = result;
  return result;
}

uint64_t sub_268A186E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71A0, qword_268B442F0);
  OUTLINED_FUNCTION_245(v0);
  result = OUTLINED_FUNCTION_1_38();
  qword_2802A7130 = result;
  return result;
}

uint64_t sub_268A18730()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7190, &qword_268B442E0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(17, v1);
  qword_2802A7138 = result;
  return result;
}

uint64_t sub_268A18784()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7188, &qword_268B442D8);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(17, v1);
  qword_2802A7140 = result;
  return result;
}

uint64_t sub_268A187D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(19, v1);
  qword_2802A7148 = result;
  return result;
}

uint64_t sub_268A1882C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7180, &qword_268B442D0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(21, v1);
  qword_2802A7150 = result;
  return result;
}

uint64_t sub_268A18894(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268A188F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SettingNLv3Intent(uint64_t a1)
{
  result = qword_2802A71A8;
  if (!qword_2802A71A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A18988(uint64_t a1)
{
  result = sub_268B366C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268A189F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3E990;
  if (qword_2802A4E68 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7128;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7198, &qword_268B442E8);
  *(v0 + 64) = sub_268A19C14(&qword_2802A7210, &qword_2802A7198, &qword_268B442E8);
  *(v0 + 32) = v1;
  v2 = qword_2802A4E70;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2802A7130;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71A0, qword_268B442F0);
  *(v0 + 104) = sub_268A19C14(&qword_2802A7218, &qword_2802A71A0, qword_268B442F0);
  *(v0 + 72) = v3;
  v4 = qword_2802A4E78;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2802A7138;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7190, &qword_268B442E0);
  *(v0 + 144) = sub_268A19C14(&qword_2802A7220, &qword_2802A7190, &qword_268B442E0);
  *(v0 + 112) = v5;
  v6 = qword_2802A4E80;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2802A7140;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7188, &qword_268B442D8);
  *(v0 + 184) = sub_268A19C14(&qword_2802A7228, &qword_2802A7188, &qword_268B442D8);
  *(v0 + 152) = v7;
  v8 = qword_2802A4E90;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802A7150;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7180, &qword_268B442D0);
  *(v0 + 224) = sub_268A19C14(&qword_2802A7230, &qword_2802A7180, &qword_268B442D0);
  *(v0 + 192) = v9;
  sub_268B356D4();
  swift_allocObject();

  result = sub_268B356C4();
  qword_2802A7158 = result;
  return result;
}

uint64_t sub_268A18D00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3BBC0;
  if (qword_2802A4E98 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7158;
  v2 = sub_268B356D4();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  swift_allocObject();

  result = sub_268B356C4();
  qword_2802A7160 = result;
  return result;
}

uint64_t sub_268A18DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B442B0;
  if (qword_2802A4EA0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7160;
  v2 = sub_268B356D4();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2802A4E60;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2802A7120;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7178, &qword_268B442C8);
  *(v0 + 104) = sub_268A19C14(&qword_2802A71E0, &qword_2802A7178, &qword_268B442C8);
  *(v0 + 72) = v5;
  v6 = qword_2802A4E88;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2802A7148;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  *(v0 + 144) = sub_268A19C14(&qword_2802A71E8, &qword_2802A7170, &qword_268B442C0);
  *(v0 + 112) = v7;
  v8 = qword_2802A4DC8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802A69D0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v0 + 176) = v10;
  v11 = sub_268A19C14(&qword_2802A71F0, &qword_2802A6A88, &unk_268B414B0);
  *(v0 + 184) = v11;
  *(v0 + 152) = v9;
  v12 = qword_2802A4D88;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2802A6990;
  *(v0 + 216) = v10;
  *(v0 + 224) = v11;
  *(v0 + 192) = v13;
  v14 = qword_2802A4D90;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_2802A6998;
  *(v0 + 256) = v10;
  *(v0 + 264) = v11;
  *(v0 + 232) = v15;
  v16 = qword_2802A4D98;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_2802A69A0;
  *(v0 + 296) = v10;
  *(v0 + 304) = v11;
  *(v0 + 272) = v17;
  v18 = qword_2802A4DA0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_2802A69A8;
  *(v0 + 336) = v10;
  *(v0 + 344) = v11;
  *(v0 + 312) = v19;
  v20 = qword_2802A4DA8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_2802A69B0;
  *(v0 + 376) = v10;
  *(v0 + 384) = v11;
  *(v0 + 352) = v21;
  v22 = qword_2802A4DB0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_2802A69B8;
  *(v0 + 416) = v10;
  *(v0 + 424) = v11;
  *(v0 + 392) = v23;
  v24 = qword_2802A4DB8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_2802A69C0;
  *(v0 + 456) = v10;
  *(v0 + 464) = v11;
  *(v0 + 432) = v25;
  v26 = qword_2802A4DC0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_2802A69C8;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AA0, &unk_268B4B530);
  *(v0 + 504) = sub_268A19C14(&qword_2802A71F8, &qword_2802A6AA0, &unk_268B4B530);
  *(v0 + 472) = v27;
  v28 = qword_2802A4DD0;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_2802A69D8;
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A98, &unk_268B414C0);
  *(v0 + 544) = sub_268A19C14(&qword_2802A7200, &qword_2802A6A98, &unk_268B414C0);
  *(v0 + 512) = v29;
  v30 = qword_2802A4DD8;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_2802A69E0;
  *(v0 + 576) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A90, &qword_268B4B540);
  *(v0 + 584) = sub_268A19C14(&qword_2802A7208, &qword_2802A6A90, &qword_268B4B540);
  *(v0 + 552) = v31;
  sub_268B35774();
  swift_allocObject();

  result = sub_268B35764();
  qword_2802A7168 = result;
  return result;
}

uint64_t sub_268A193B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v60 = v4;
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v63 = v6 - v5;
  v7 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v57 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v53[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v53[-v15];
  v17 = sub_268B366C4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v23 = (v22 - v21);
  v62 = type metadata accessor for SettingNLv3Intent(0);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  v58 = *(v9 + 16);
  v58(v16, a1, v7);
  v27 = (*(v9 + 88))(v16, v7);
  v28 = *(v9 + 8);
  if (v27 == *MEMORY[0x277D5C128])
  {
    v28(a1, v7);
    (*(v9 + 96))(v16, v7);
    v29 = *(v19 + 32);
    v29(v23, v16, v17);
    v29(v26, v23, v17);
    v30 = v64;
    sub_268A19C68(v26, v64);
    v31 = 0;
    v32 = v30;
  }

  else
  {
    v56 = *(v9 + 8);
    v28(v16, v7);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v33 = v61;
    v34 = __swift_project_value_buffer(v61, qword_2802CDA10);
    v35 = v60;
    (*(v60 + 16))(v63, v34, v33);
    v36 = v59;
    v37 = v58;
    v58(v59, a1, v7);
    v38 = sub_268B37A34();
    v39 = sub_268B37F04();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v55 = a1;
      v41 = v40;
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 136315138;
      v54 = v39;
      v37(v57, v36, v7);
      v43 = sub_268B37C24();
      v45 = v44;
      v46 = v36;
      v47 = v56;
      v56(v46, v7);
      v48 = sub_26892CDB8(v43, v45, &v65);
      v49 = v35;
      v50 = v48;

      *(v41 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v38, v54, "Unsupported parse while creating SettingNLIntent: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x26D6266E0](v42, -1, -1);
      MEMORY[0x26D6266E0](v41, -1, -1);

      v47(v55, v7);
      (*(v49 + 8))(v63, v61);
    }

    else
    {

      v51 = v56;
      v56(a1, v7);
      v51(v36, v7);
      (*(v35 + 8))(v63, v33);
    }

    v31 = 1;
    v32 = v64;
  }

  return __swift_storeEnumTagSinglePayload(v32, v31, 1, v62);
}

uint64_t sub_268A198E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268B366C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_268A1996C(uint64_t a1)
{
  v2 = sub_268A19BD0(&qword_2802A71C0, &unk_268B44414);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268A199D4(uint64_t a1)
{
  v2 = sub_268A19BD0(&qword_2802A71C0, &unk_268B44414);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268A19A2C(uint64_t a1)
{
  v2 = sub_268A19BD0(&qword_2802A71C0, &unk_268B44414);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268A19ABC(uint64_t a1)
{
  result = sub_268A19BD0(&qword_2802A71B8, &unk_268B44334);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A19B00(uint64_t a1)
{
  *(a1 + 8) = sub_268A19BD0(&qword_2802A71C0, &unk_268B44414);
  result = sub_268A19BD0(&qword_2802A71C8, &unk_268B443B4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268A19BD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SettingNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A19C14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_268A19C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingNLv3Intent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_38()
{

  return sub_268B35784();
}

void sub_268A19CF0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MediaIntent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  sub_268A1A16C(a1);
  v14 = *(a1 + 16);
  if (v14)
  {
    v34 = *(a1 + 8);
    v35 = v11;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v15 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v13, v15, v7);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = a1;
      v19 = v6;
      v20 = v2;
      v21 = v18;
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found language in intent, mapping it to SiriKit intent", v18, 2u);
      v22 = v21;
      v2 = v20;
      v6 = v19;
      a1 = v33;
      MEMORY[0x26D6266E0](v22, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    type metadata accessor for LanguageOption();
    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v24 = sub_26893A824(0, 0, 0, 0xE000000000000000);
    v40 = v34;
    v41 = v14;
    v38 = 95;
    v39 = 0xE100000000000000;
    v36 = 45;
    v37 = 0xE100000000000000;
    sub_26895EF2C();
    v25 = sub_268B380B4();
    sub_268A1A108(v25, v26, v24);
    [v2 setLanguage_];

    v11 = v35;
  }

  sub_268A1A468();
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v27 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v11, v27, v7);
    v28 = sub_268B37A34();
    v29 = sub_268B37F04();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v28, v29, "Found home automation nodes, attempting to map them to SiriKit intent", v30, 2u);
      MEMORY[0x26D6266E0](v30, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    sub_268932630(a1, v6);
    v31 = sub_268A91BFC(v6);
    [v2 setDevice_];
  }
}

void sub_268A1A108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setLanguageTag_];
}

void sub_268A1A16C(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268932630(a1, v8);
  sub_268A1A468();
  v9 = sub_268B37854();
  sub_26895F7A8(v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v21);
      sub_26890C900(v21, v20);
      sub_268AC88F0(v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v22;
    v13 = off_28795BBD8;
    v14 = type metadata accessor for SetAudioLanguageIntent();
    v13(v12, v14, &off_28795BBC8);
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
}

unint64_t sub_268A1A468()
{
  result = qword_2802A59A8;
  if (!qword_2802A59A8)
  {
    type metadata accessor for MediaIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A59A8);
  }

  return result;
}

void sub_268A1A4C0(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7290, &qword_268B44568);
    v2 = OUTLINED_FUNCTION_27_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_22_10();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v13 = v12[1];
    v14 = *(a1[7] + 8 * v11);
    *&v32[0] = *v12;
    *(&v32[0] + 1) = v13;

    v14;
    swift_dynamicCast();
    sub_2688EA03C(0, &qword_2802A6258, 0x277D82BB8);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2688EF2B0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2688EF2B0(v31, v32);
    v15 = sub_268B38144() & ~(-1 << *(v2 + 32));
    if (((-1 << v15) & ~*(v8 + 8 * (v15 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_32_8();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v8 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_31_11();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_33_13();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_30_11();
    *(v8 + v20) |= v21;
    v23 = *(v2 + 48) + 40 * v22;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_2688EF2B0(v32, (*(v2 + 56) + 32 * v22));
    ++*(v2 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_268A1A748(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7298, qword_268B44570);
    v2 = OUTLINED_FUNCTION_27_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_22_10();
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(a1[7] + 8 * v11);

    v16 = v15;
    v17 = sub_268A75754(v14);
    v18 = v17;
    if (v19)
    {
      v20 = (v2[6] + 16 * v17);
      *v20 = v14;
      v20[1] = v13;

      v21 = v2[7];
      v22 = *(v21 + 8 * v18);
      *(v21 + 8 * v18) = v16;

      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v23 = (v2[6] + 16 * v17);
      *v23 = v14;
      v23[1] = v13;
      *(v2[7] + 8 * v17) = v16;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
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

    if (v9 >= v7)
    {

      return;
    }

    v6 = a1[v9 + 8];
    ++v8;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_268A1A918(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7290, &qword_268B44568);
    v2 = OUTLINED_FUNCTION_27_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_22_10();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2688EF2C0(a1[7] + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2688EF2B0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2688EF2B0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2688EF2B0(v31, v32);
    v15 = sub_268B38144() & ~(-1 << *(v2 + 32));
    if (((-1 << v15) & ~*(v8 + 8 * (v15 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_32_8();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v8 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_31_11();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_33_13();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_30_11();
    *(v8 + v20) |= v21;
    v23 = *(v2 + 48) + 40 * v22;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_2688EF2B0(v32, (*(v2 + 56) + 32 * v22));
    ++*(v2 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_268A1AB98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7288, &qword_268B44560);
    v2 = sub_268B382D4();
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
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_2688EF2B0(&v22, v24);
    sub_2688EF2B0(v24, v25);
    sub_2688EF2B0(v25, &v23);
    result = sub_268A75754(v13);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      result = sub_2688EF2B0(&v23, v17);
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
      result = sub_2688EF2B0(&v23, (v2[7] + 32 * result));
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

uint64_t sub_268A1ADD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = sub_268B35494();
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v25 = (v24 - v23);
  sub_268B35414();
  sub_26893BA8C(v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_2688C058C(v20, &qword_2802A5650, &unk_268B3BAC0);
  }

  else
  {
    sub_2688C0464(v20, v25);
    v26 = sub_268A1D6D4(v25);
    sub_2688C2F6C(v25);
    if (v26 != 2)
    {
      v32 = sub_268B35434();
      OUTLINED_FUNCTION_4();
      (*(v33 + 16))(v14, a1, v32);
      v31 = 1;
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v32);
      v34 = OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_input;
      swift_beginAccess();
      sub_268A1DEDC(v14, v2 + v34);
      swift_endAccess();
      return v31;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v27 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v6 + 16))(v10, v27, v4);
  v28 = sub_268B37A34();
  v29 = sub_268B37EE4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "SetLyricsStateFlow#onInput not a valid SetLyricsState parse", v30, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v6 + 8))(v10, v4);
  return 0;
}

uint64_t sub_268A1B14C()
{
  OUTLINED_FUNCTION_158();
  v1[11] = v2;
  v1[12] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v3);
  v1[13] = OUTLINED_FUNCTION_11_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v1[14] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v5);
  v1[17] = OUTLINED_FUNCTION_11_1();
  v6 = type metadata accessor for MediaPlayerIntent(0);
  v1[18] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[19] = OUTLINED_FUNCTION_11_1();
  v7 = sub_268B35434();
  v1[20] = v7;
  OUTLINED_FUNCTION_19_0(v7);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_11_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v9);
  v1[23] = OUTLINED_FUNCTION_11_1();
  v10 = sub_268B35494();
  v1[24] = v10;
  OUTLINED_FUNCTION_19_0(v10);
  v1[25] = v11;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v12 = sub_268B37A54();
  v1[29] = v12;
  OUTLINED_FUNCTION_19_0(v12);
  v1[30] = v13;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_268A1BD18()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = *v1;
  OUTLINED_FUNCTION_89();
  *v3 = v2;
  *(v4 + 352) = v0;

  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268A1C0FC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = *v1;
  OUTLINED_FUNCTION_89();
  *v3 = v2;
  *(v4 + 368) = v0;

  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268A1C1FC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268A1C7D8()
{
  v45 = v0;
  v2 = v0[44];
  v3 = OUTLINED_FUNCTION_16_21();
  v4(v3);
  v5 = v2;
  v6 = sub_268B37A34();
  v7 = sub_268B37ED4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_23_12();
    v9 = swift_slowAlloc();
    v44 = v9;
    OUTLINED_FUNCTION_43_6(4.8149e-34);
    v10 = sub_268B384A4();
    v12 = sub_26892CDB8(v10, v11, &v44);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_41_3(&dword_2688BB000, v13, v14, "SetLyricsStateFlow#execute caught exception with error %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v43(v42, v1);
  }

  else
  {
    v15 = v0[42];
    v16 = v0[32];
    v17 = v0[29];

    v15(v16, v17);
  }

  v18 = sub_268B34504();
  v0[48] = v18;
  v19 = [v18 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
  OUTLINED_FUNCTION_34_7();
  v20 = sub_268B37CF4();

  if (*(v20 + 16))
  {
    v21 = *(v20 + 32);
    v22 = v21;

    v0[8] = v21;
    v23 = sub_2688EA03C(0, &qword_2802A7278, 0x277CCA9B8);
    if (OUTLINED_FUNCTION_28_14(v23))
    {
      v24 = v0[9];
      v25 = [v24 domain];
      v26 = sub_268B37BF4();
      v28 = v27;

      if (v26 == 0xD000000000000026 && 0x8000000268B5AA50 == v28)
      {
      }

      else
      {
        v30 = OUTLINED_FUNCTION_26_9();

        if ((v30 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      [v24 code];
    }
  }

  else
  {
  }

LABEL_16:
  v31 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_24_11(v31);
  v32 = swift_task_alloc();
  v0[51] = v32;
  *v32 = v0;
  v33 = OUTLINED_FUNCTION_2_24(v32);

  return MEMORY[0x2822007B8](v33, v34, v35, v36, v37, v38, v39, v40);
}

uint64_t sub_268A1CAA8()
{
  v45 = v0;
  v2 = v0[46];
  v3 = OUTLINED_FUNCTION_16_21();
  v4(v3);
  v5 = v2;
  v6 = sub_268B37A34();
  v7 = sub_268B37ED4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_23_12();
    v9 = swift_slowAlloc();
    v44 = v9;
    OUTLINED_FUNCTION_43_6(4.8149e-34);
    v10 = sub_268B384A4();
    v12 = sub_26892CDB8(v10, v11, &v44);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_41_3(&dword_2688BB000, v13, v14, "SetLyricsStateFlow#execute caught exception with error %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v43(v42, v1);
  }

  else
  {
    v15 = v0[42];
    v16 = v0[32];
    v17 = v0[29];

    v15(v16, v17);
  }

  v18 = sub_268B34504();
  v0[48] = v18;
  v19 = [v18 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
  OUTLINED_FUNCTION_34_7();
  v20 = sub_268B37CF4();

  if (*(v20 + 16))
  {
    v21 = *(v20 + 32);
    v22 = v21;

    v0[8] = v21;
    v23 = sub_2688EA03C(0, &qword_2802A7278, 0x277CCA9B8);
    if (OUTLINED_FUNCTION_28_14(v23))
    {
      v24 = v0[9];
      v25 = [v24 domain];
      v26 = sub_268B37BF4();
      v28 = v27;

      if (v26 == 0xD000000000000026 && 0x8000000268B5AA50 == v28)
      {
      }

      else
      {
        v30 = OUTLINED_FUNCTION_26_9();

        if ((v30 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      [v24 code];
    }
  }

  else
  {
  }

LABEL_16:
  v31 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_24_11(v31);
  v32 = swift_task_alloc();
  v0[51] = v32;
  *v32 = v0;
  v33 = OUTLINED_FUNCTION_2_24(v32);

  return MEMORY[0x2822007B8](v33, v34, v35, v36, v37, v38, v39, v40);
}

uint64_t sub_268A1CD78(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v50 = a3;
  v51 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7280, &unk_268B44550);
  v54 = *(v6 - 8);
  v55 = v6;
  v52 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v47 - v7;
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v49 = *(v9 + 16);
  v49(v14, v15, v8);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v48 = v15;
    v19 = a2;
    v20 = v12;
    v21 = a4;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "SetLyricsStateFlow#execute withCheckedContinuation", v18, 2u);
    v23 = v22;
    a4 = v21;
    v12 = v20;
    a2 = v19;
    v15 = v48;
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  v24 = *(v9 + 8);
  v24(v14, v8);
  if (a2)
  {
    v49(v12, v15, v8);
    v25 = sub_268B37A34();
    v26 = sub_268B37ED4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "SetLyricsStateFlow#execute dialoging to reflect lyrics not available error", v27, 2u);
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    v24(v12, v8);
    v28 = *(v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider + 24);
    v29 = *(v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider + 32);
    __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider), v28);
    v31 = v53;
    v30 = v54;
    v32 = v55;
    (*(v54 + 16))(v53, v51, v55);
    v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v34 = swift_allocObject();
    (*(v30 + 32))(v34 + v33, v31, v32);
    sub_2689CE88C(0xD000000000000023, 0x8000000268B5AAD0, sub_268A1DF50, v34, v28, v29);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC0, &qword_268B41690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x8000000268B5AA80;
    if (a4)
    {
      v37 = sub_268B38444();
    }

    else
    {
      v37 = 1;
    }

    *(inited + 48) = v37 & 1;
    v38 = sub_268B37B84();
    v39 = *(v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider + 24);
    v40 = *(v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider + 32);
    __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider), v39);
    v41 = sub_268A1AB98(v38);

    v42 = v53;
    v43 = v54;
    v44 = v55;
    (*(v54 + 16))(v53, v51, v55);
    v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v46 = swift_allocObject();
    (*(v43 + 32))(v46 + v45, v42, v44);
    sub_2689CE860(0xD000000000000025, 0x8000000268B5AAA0, v41, sub_268A1DDE0, v46, v39, v40);
  }
}

uint64_t sub_268A1D30C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v16 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v11 + 16))(v15, v16, v9);
  sub_2688F1FA4(v29, v8, &qword_2802A6300, &unk_268B3BD80);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28[1] = a2;
    v21 = v20;
    v30 = v20;
    *v19 = 136315138;
    sub_2688F1FA4(v8, v6, &qword_2802A6300, &unk_268B3BD80);
    v22 = sub_268B37C24();
    v28[0] = v9;
    v23 = v6;
    v25 = v24;
    sub_2688C058C(v8, &qword_2802A6300, &unk_268B3BD80);
    v26 = sub_26892CDB8(v22, v25, &v30);
    v6 = v23;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2688BB000, v17, v18, "SetLyricsStateFlow#execute result: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*(v11 + 8))(v15, v28[0]);
  }

  else
  {

    sub_2688C058C(v8, &qword_2802A6300, &unk_268B3BD80);
    (*(v11 + 8))(v15, v9);
  }

  sub_2688F1FA4(v29, v6, &qword_2802A6300, &unk_268B3BD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7280, &unk_268B44550);
  return sub_268B37D94();
}

uint64_t sub_268A1D628(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetLyricsStateFlow(0);
  sub_268A1DD74();
  return sub_268B34A64();
}

unint64_t sub_268A1D688(char a1)
{
  if (a1 == 2)
  {
    return 0xD000000000000055;
  }

  else
  {
    return 0xD000000000000051;
  }
}

uint64_t sub_268A1D6D4(unsigned __int8 *a1)
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = *a1;
  if (v9 == 18)
  {
    return 0;
  }

  if (v9 == 23)
  {
    return 1;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v11 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v4 + 16))(v8, v11, v2);
  v12 = sub_268B37A34();
  v13 = sub_268B37EE4();
  if (os_log_type_enabled(v12, v13))
  {
    v10 = 2;
    v14 = OUTLINED_FUNCTION_14();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "SetLyricsStateFlow#getLyricsState unsupported verb", v14, 2u);
    OUTLINED_FUNCTION_12();

    (*(v4 + 8))(v8, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
    return 2;
  }

  return v10;
}

uint64_t sub_268A1D888()
{
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_input, &qword_2802A5660, &qword_268B3B8E8);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_appIntentInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_analyticsService));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_playbackController));
  return v0;
}

uint64_t sub_268A1D910()
{
  sub_268A1D888();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SetLyricsStateFlow(uint64_t a1)
{
  result = qword_2802A7260;
  if (!qword_2802A7260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268A1D9BC(uint64_t a1)
{
  sub_268A1DA5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_268A1DA5C(uint64_t a1)
{
  if (!qword_2802A5640)
  {
    sub_268B35434();
    v1 = sub_268B380A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2802A5640);
    }
  }
}

uint64_t sub_268A1DADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_268A1DB8C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268A1DB8C()
{
  OUTLINED_FUNCTION_158();
  v2 = v1;
  OUTLINED_FUNCTION_219();
  v3 = *v0;
  OUTLINED_FUNCTION_89();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_268A1DC9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2688C8B94;

  return sub_268A1B14C();
}

uint64_t sub_268A1DD38(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SetLyricsStateFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

unint64_t sub_268A1DD74()
{
  result = qword_2802A7270;
  if (!qword_2802A7270)
  {
    type metadata accessor for SetLyricsStateFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7270);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7280, &unk_268B44550);
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_268A1DE70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7280, &unk_268B44550);
  OUTLINED_FUNCTION_22(v3);
  return sub_268A1D30C(a1, v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
}

uint64_t sub_268A1DEDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_39()
{
}

uint64_t OUTLINED_FUNCTION_23_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_11(uint64_t result)
{
  *(v3 + 400) = result;
  *(result + 16) = v1;
  *(result + 24) = v4;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return sub_268B382D4();
}

uint64_t OUTLINED_FUNCTION_28_14(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_8()
{
  *(v1 + 392) = v0;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_41_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *OUTLINED_FUNCTION_42_7()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_43_6(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

Swift::String_optional __swiftcall UsoTask_skipForward_common_MediaItem.verb()()
{
  v0 = 1885956979;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_skipForward_common_MediaItem.referencedSetting()()
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

uint64_t sub_268A1E354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A1E3A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A1E3FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A1E450(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A1E4A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A1E4F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A1E54C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A1E5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A1E604(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A1E658(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A1E6BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A1E720(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A1E784(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A1E7E8(uint64_t a1)
{
  result = sub_268A1E894(&qword_2802A72A0, &protocol conformance descriptor for UsoTask_skipForward_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A1E894(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36464();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id WhatDidTheySayIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void WhatDidTheySayIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v41 = sub_268B36C44();
  sub_268B37204();
  v42 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v59);
  sub_268AD33CC(&v56);
  sub_268B36754();
  v40 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v54 = v0;
  v55 = MEMORY[0x277D5F680];
  *&v53 = v1;
  v11 = type metadata accessor for AnalyticsServiceLogger();
  v51 = v11;
  v52 = &off_28795F5E0;
  v50[0] = v10;
  v48 = v2;
  v49 = &off_287960608;
  *&v47 = v3;
  v12 = type metadata accessor for AnalyticsServiceImpl();
  v13 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v16 = OUTLINED_FUNCTION_25_7(v15);
  v17(v16);
  __swift_mutable_project_boxed_opaque_existential_1(&v47, v48);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v10;
  v24 = *v21;
  v13[5] = v11;
  v13[6] = &off_28795F5E0;
  v13[2] = v23;
  v13[21] = v2;
  v13[22] = &off_287960608;
  v13[18] = v24;
  sub_2688E6514(&v56, (v13 + 7));
  v13[12] = v40;
  sub_2688E6514(&v53, (v13 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);

  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  sub_268B34C64();
  v57 = v12;
  v58 = &off_2879539D0;
  *&v56 = v13;
  v25 = type metadata accessor for WhatDidTheySayIntentHandler();
  v26 = objc_allocWithZone(v25);
  __swift_mutable_project_boxed_opaque_existential_1(&v56, v57);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v29 = OUTLINED_FUNCTION_25_7(v28);
  v30(v29);
  v31 = *v10;
  v54 = v0;
  v55 = MEMORY[0x277D5F680];
  v52 = &off_2879539D0;
  *&v53 = v41;
  v51 = v12;
  v50[0] = v31;
  *&v26[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer] = 0;
  *&v26[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_queue] = 0;
  *&v26[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion] = 0;
  v26[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_initialSubtitleStateDisabled] = 2;
  sub_26890C900(&v53, &v26[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController]);
  sub_26890C900(v60, &v47);
  sub_26890C900(v50, &v45);
  sub_26890C900(v59, v44);
  sub_268B376A4();
  v32 = sub_268B37694();
  __swift_mutable_project_boxed_opaque_existential_1(&v45, v46);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v36 = (v35 - v34);
  (*(v37 + 16))(v35 - v34);
  v38 = sub_26892D53C(v42, &v47, *v36, v44, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(&v45);
  *&v26[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_deviceSelector] = v38;
  sub_26890C900(v50, &v26[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_analyticsService]);
  sub_26890C900(v60, &v26[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_deviceState]);
  sub_26890C900(v60, &v47);
  sub_26890C900(v59, &v45);
  type metadata accessor for AceServiceHelper();
  v39 = swift_allocObject();
  sub_2688E6514(&v47, v39 + 16);
  sub_2688E6514(&v45, v39 + 56);
  *&v26[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_aceServiceHelper] = v39;
  v43.receiver = v26;
  v43.super_class = v25;
  objc_msgSendSuper2(&v43, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  __swift_destroy_boxed_opaque_existential_0Tm(&v53);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(&v56);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268A1EF6C(void *a1, NSObject *a2, void (**a3)(uint64_t, void *))
{
  v6 = sub_268B371E4();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_268B36C04();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  v16 = swift_allocObject();
  v76 = a2;
  v77 = v16;
  *(v16 + 16) = a3;
  v17 = (&a2->isa + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_deviceState);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v78 = a3;
  _Block_copy(a3);
  if (!sub_2688C328C())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v15, v36, v9);
    v37 = sub_268B37A34();
    v38 = sub_268B37EE4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "Media controls are unsupported on this platform", v39, 2u);
      MEMORY[0x26D6266E0](v39, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v40 = sub_268B17B04(4);
    v41 = v78;
    v78[2](v78, v40);

    goto LABEL_23;
  }

  v18 = [a1 device];
  v19 = a1;
  if (v18)
  {
    v20 = v18;
    v21 = sub_26892D418(v18);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v9, qword_2802CDA10);
      (*(v10 + 16))(v13, v25, v9);

      v26 = sub_268B37A34();
      v27 = sub_268B37F04();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v76 = v26;
        v29 = v23;
        v30 = v28;
        v31 = swift_slowAlloc();
        v79[0] = v31;
        *v30 = 136315138;
        v32 = sub_26892CDB8(v29, v24, v79);
        v33 = v19;
        v34 = v32;

        *(v30 + 4) = v34;
        v19 = v33;
        v35 = v76;
        _os_log_impl(&dword_2688BB000, v76, v27, "Disambiguated Intent with destinationDeviceId: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x26D6266E0](v31, -1, -1);
        MEMORY[0x26D6266E0](v30, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v13, v9);
      v44 = sub_268B1F16C(v19);
      if (v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = MEMORY[0x277D84F90];
      }

      sub_268983D74(v45);

      type metadata accessor for WhatDidTheySayDeviceResolutionResult();
      v40 = sub_268B2CC98(v20);
      v41 = v78;
      v78[2](v78, v40);

LABEL_23:
      v46 = v41;
      goto LABEL_24;
    }
  }

  if (sub_268B1F16C(a1))
  {
    if (sub_2688EFD0C())
    {
      v42 = [a1 device];
      if (!v42)
      {
        v64 = v70;
        v63 = v71;
        v65 = v73;
        (*(v71 + 104))(v70, *MEMORY[0x277D5F640], v73);
        v66 = swift_allocObject();
        v67 = v77;
        *(v66 + 16) = sub_26892DC18;
        *(v66 + 24) = v67;

        v68 = v72;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v74 + 8))(v68, v75);
        (*(v63 + 8))(v64, v65);

        v46 = v78;
        goto LABEL_24;
      }

      v43 = v42;
    }

    else
    {
    }
  }

  v47 = [a1 device];
  if (v47)
  {
    v48 = v47;
    sub_268988574(v47);
    if (v49)
    {
    }

    else
    {
      sub_2689E1C9C(0x76745F656C707061, 0xE800000000000000, v48);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_268B3BBA0;
    *(v52 + 32) = v48;
    v53 = swift_allocObject();
    v54 = v77;
    v53[2] = sub_26892DC18;
    v53[3] = v54;
    v53[4] = a1;

    v55 = v48;
    v56 = a1;
    sub_2688F6BEC();

    v46 = v78;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    if (sub_268B34D24())
    {
      type metadata accessor for WhatDidTheySayDeviceResolutionResult();
      v50 = sub_268B17B04(3);
      v51 = v78;
      v78[2](v78, v50);

      v46 = v51;
    }

    else
    {
      type metadata accessor for Device();
      sub_268B36C54();
      v57 = sub_268B36C24();
      LOBYTE(v69) = 0;
      sub_268983F14(v57, v58, 0, 0, 0, 0, 0, 0, 0, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0], v79[1], v80);
      v60 = v59;
      type metadata accessor for WhatDidTheySayDeviceResolutionResult();
      v61 = sub_268B2CC98(v60);
      v62 = v78;
      v78[2](v78, v61);

      v46 = v62;
    }
  }

LABEL_24:
  _Block_release(v46);
}

void sub_268A20034(unint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v4 = 1;
LABEL_9:
    v8 = sub_268B17B04(v4);
    goto LABEL_10;
  }

  if (!sub_2688EFD0C())
  {
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v4 = 3;
    goto LABEL_9;
  }

  if (sub_2688EFD0C() == 1)
  {
    sub_2688EFD10();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v9 = sub_268B2CC98(v7);
    a3();

    goto LABEL_11;
  }

  type metadata accessor for WhatDidTheySayDeviceResolutionResult();
  v8 = sub_268B2CCFC(a1);
LABEL_10:
  v9 = v8;
  a3();
LABEL_11:
}

void sub_268A2014C(unint64_t a1, __int16 a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if ((a2 & 0x100) != 0)
  {
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v12 = 1;
LABEL_12:
    v13 = sub_268B17B04(v12);
    goto LABEL_13;
  }

  if (!sub_2688EFD0C())
  {
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v12 = 2;
    goto LABEL_12;
  }

  if (sub_2688EFD0C() == 1)
  {
    sub_2688EFD10();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    v9 = v8;
    v10 = sub_268B1F16C(a5);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    sub_268983D74(v11);

    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v14 = sub_268B2CC98(v9);
    a3();

    goto LABEL_14;
  }

  type metadata accessor for WhatDidTheySayDeviceResolutionResult();
  v13 = sub_268B2CCFC(a1);
LABEL_13:
  v14 = v13;
  a3();
LABEL_14:
}

void sub_268A202B0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v24 = v5;
  v6 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v25 = v0;
  if (*&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_268B37FC4();
    swift_unknownObjectRelease();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  (*(v8 + 16))(v13, v15, v6);
  v18 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v19 = v18 + v10;
  v20 = v6;
  v21 = (v18 + v10) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleWhatDidTheySayIntent";
  *(v22 + 24) = 26;
  *(v22 + 32) = 2;
  (*(v8 + 32))(v22 + v18, v13, v20);
  *(v22 + v19) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_268A20548(v24, v25, sub_268958A64, v22);

  (*(v8 + 8))(v15, v20);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A20548(void (*a1)(char *, uint64_t), char *a2, void (*a3)(void), uint64_t a4)
{
  v80 = a1;
  v7 = sub_268B34614();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v70 - v15;
  v16 = sub_268B37A54();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v76 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v72 = &v70 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v70 - v22;
  v24 = swift_allocObject();
  v73 = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_268958D98;
  *(v25 + 24) = v24;
  v81 = v25;
  v26 = qword_2802A4F30;

  v82 = v24;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v28 = *(v17 + 16);
  v77 = v27;
  v78 = v28;
  v79 = v17 + 16;
  (v28)(v23);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v29, v30, "Handling What did they say", v31, 2u);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  v32 = *(v17 + 8);
  v32(v23, v16);
  v33 = v80;
  v34 = sub_2689EEF44();
  if (v35)
  {
    v36 = v35;
    v73 = v34;
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_analyticsService], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_analyticsService + 24]);
    sub_26894998C(0x5464694474616877, 0xEE00796153796568);
    v37 = [v33 startTime];
    if (v37)
    {
      v38 = v37;
      v39 = v74;
      sub_268B345D4();

      v40 = 0;
    }

    else
    {
      v40 = 1;
      v39 = v74;
    }

    __swift_storeEnumTagSinglePayload(v39, v40, 1, v7);
    v49 = v75;
    sub_2688EF3EC(v39, v75);
    if (__swift_getEnumTagSinglePayload(v49, 1, v7))
    {
      sub_2688C058C(v49, &unk_2802A7350, qword_268B3FF10);
      v50 = 15.0;
    }

    else
    {
      v51 = *(v8 + 16);
      v80 = v32;
      v52 = v70;
      v51(v70, v49, v7);
      sub_2688C058C(v49, &unk_2802A7350, qword_268B3FF10);
      v53 = v71;
      sub_268B34604();
      sub_268B345F4();
      v55 = v54;
      v56 = *(v8 + 8);
      v56(v53, v7);
      v57 = v52;
      v32 = v80;
      v56(v57, v7);
      v50 = v55 + 15.0;
    }

    v58 = v76;
    v78(v76, v77, v16);
    v59 = sub_268B37A34();
    v60 = sub_268B37ED4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = a2;
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v59, v60, "Calculated %f seconds as the duration to skip back", v62, 0xCu);
      v63 = v62;
      a2 = v61;
      MEMORY[0x26D6266E0](v63, -1, -1);
    }

    v32(v58, v16);
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_268B3BBC0;
    v65 = v73;
    *(v64 + 32) = v73;
    *(v64 + 40) = v36;
    v66 = swift_allocObject();
    v67 = v81;
    v66[2] = sub_2688E19F8;
    v66[3] = v67;
    v66[4] = a2;
    v66[5] = v65;
    v66[6] = v36;

    v68 = a2;
    sub_268B36E64();
  }

  else
  {

    v41 = v72;
    v78(v72, v77, v16);
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2688BB000, v42, v43, "Missing device in intent", v44, 2u);
      MEMORY[0x26D6266E0](v44, -1, -1);
    }

    v32(v41, v16);
    v45 = sub_268B36EA4();
    v46 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
    v47 = v45;
    v48 = WhatDidTheySayIntentResponse.init(code:userActivity:)(101, v45);
    v83 = v48;
    v73(&v83);
  }
}

void sub_268A20D5C(uint64_t a1, void (*a2)(void), uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v45 = a2;
  v46 = a3;
  v7 = sub_268B37A54();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_268B37144();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v44 = a1;
  sub_26893B66C(a1, &v39 - v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2688C058C(v19, &qword_2802A5DE8, &qword_268B3D790);
  if (EnumCaseMultiPayload == 1)
  {
    v21 = v45;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v22 = v43;
    v23 = __swift_project_value_buffer(v43, qword_2802CDA10);
    v24 = v42;
    (*(v42 + 16))(v9, v23, v22);
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "Error while performing rewind command", v27, 2u);
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    (*(v24 + 8))(v9, v22);
    v28 = sub_268B36ED4();
    v29 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
    v30 = v28;
    v31 = WhatDidTheySayIntentResponse.init(code:userActivity:)(102, v28);
    v21();
  }

  else
  {
    v32 = v39;
    v33 = *&v39[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 24];
    v44 = *&v39[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&v39[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController], v33);
    (*(v14 + 104))(v16, *MEMORY[0x277D5F7D8], v13);
    v34 = sub_268B37704();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = v45;
    v35[3] = v46;
    v35[4] = v32;
    v37 = v40;
    v36 = v41;
    v35[5] = v40;
    v35[6] = v36;

    v38 = v32;

    sub_268973E68(v16, v37, v36, v12, sub_268A23940, v35, v33, v44);

    sub_2688C058C(v12, &unk_2802A7360, &qword_268B3F860);
    (*(v14 + 8))(v16, v13);
  }
}

void sub_268A211F8(char *a1, char a2, void (*a3)(void), uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v115 = a6;
  v116 = a7;
  v118 = a5;
  v119 = a1;
  v120 = a3;
  v121 = a4;
  v8 = sub_268B37144();
  v113 = *(v8 - 8);
  v114 = v8;
  MEMORY[0x28223BE20](v8);
  v112 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6550, &qword_268B3F880);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v106 - v11;
  v117 = sub_268B372A4();
  v111 = *(v117 - 8);
  v13 = MEMORY[0x28223BE20](v117);
  v110 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v106 - v15;
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v106 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v106 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v106 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v106 - v30;
  MEMORY[0x28223BE20](v29);
  v34 = &v106 - v33;
  switch(a2)
  {
    case 1:
      v66 = v32;
      sub_2689A9A74(v119, v12);
      v67 = v117;
      v68 = v18;
      if (__swift_getEnumTagSinglePayload(v12, 1, v117) == 1)
      {
        sub_2688C058C(v12, &qword_2802A6550, &qword_268B3F880);
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v69 = __swift_project_value_buffer(v17, qword_2802CDA10);
        (*(v18 + 16))(v22, v69, v17);
        v70 = v119;

        v71 = sub_268B37A34();
        v72 = sub_268B37EE4();
        sub_268A23950(v70, 1u);
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v122[0] = v74;
          *v73 = 136446210;
          v75 = MEMORY[0x26D6256F0](v70, v67);
          v77 = sub_26892CDB8(v75, v76, v122);

          *(v73 + 4) = v77;
          _os_log_impl(&dword_2688BB000, v71, v72, "Failed to retrieve first matched language from matchingLanguageOptions: %{public}s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          MEMORY[0x26D6266E0](v74, -1, -1);
          MEMORY[0x26D6266E0](v73, -1, -1);
        }

        (*(v68 + 8))(v22, v17);
        goto LABEL_28;
      }

      v79 = v111;
      v111[4](v16, v12, v67);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v80 = __swift_project_value_buffer(v17, qword_2802CDA10);
      (*(v18 + 16))(v66, v80, v17);
      v81 = v79[2];
      v82 = v110;
      v119 = v16;
      v81(v110, v16, v67);
      v83 = sub_268B37A34();
      v84 = sub_268B37ED4();
      v85 = v17;
      v86 = v68;
      if (os_log_type_enabled(v83, v84))
      {
        v87 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v122[0] = v107;
        *v87 = 136315138;
        sub_268A239EC(&qword_2802A7370, MEMORY[0x277D5F818], MEMORY[0x277D5F820]);
        v108 = v85;
        v88 = sub_268B38404();
        v90 = v89;
        v91 = v79[1];
        v109 = (v79 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v111 = v91;
        (v91)(v82, v67);
        v92 = sub_26892CDB8(v88, v90, v122);

        *(v87 + 4) = v92;
        _os_log_impl(&dword_2688BB000, v83, v84, "Auto selected %s", v87, 0xCu);
        v93 = v107;
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        MEMORY[0x26D6266E0](v93, -1, -1);
        MEMORY[0x26D6266E0](v87, -1, -1);

        (*(v86 + 8))(v66, v108);
      }

      else
      {

        v94 = v79[1];
        v109 = (v79 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v111 = v94;
        (v94)(v82, v67);
        (*(v68 + 8))(v66, v85);
      }

      v95 = v118;
      v96 = *&v118[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 32];
      v110 = *&v118[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 24];
      v107 = v96;
      v108 = __swift_project_boxed_opaque_existential_1(&v118[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController], v110);
      sub_268B37214();
      v97 = v112;
      v98 = v113;
      v99 = v114;
      (*(v113 + 104))(v112, *MEMORY[0x277D5F7D8], v114);
      v100 = swift_allocObject();
      v102 = v115;
      v101 = v116;
      v100[2] = v95;
      v100[3] = v102;
      v103 = v120;
      v104 = v121;
      v100[4] = v101;
      v100[5] = v103;
      v100[6] = v104;
      v105 = v95;

      sub_268B36D34();

      (*(v98 + 8))(v97, v99);
      (v111)(v119, v117);
      return;
    case 2:
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v43 = __swift_project_value_buffer(v17, qword_2802CDA10);
      (*(v18 + 16))(v34, v43, v17);
      v44 = v119;
      v45 = v119;
      v46 = sub_268B37A34();
      v47 = sub_268B37EE4();
      sub_268A23950(v44, 2u);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v122[0] = v49;
        *v48 = 136446210;
        swift_getErrorValue();
        v50 = sub_268B384A4();
        v52 = sub_26892CDB8(v50, v51, v122);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_2688BB000, v46, v47, "Error getting matching subtitle options: %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x26D6266E0](v49, -1, -1);
        MEMORY[0x26D6266E0](v48, -1, -1);
      }

      (*(v18 + 8))(v34, v17);
LABEL_28:
      v39 = sub_268B36EA4();
      v78 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
      v41 = v39;
      v42 = 103;
      goto LABEL_29;
    case 3:
      v53 = v18;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v54 = __swift_project_value_buffer(v17, qword_2802CDA10);
      v55 = *(v53 + 16);
      v55(v28, v54, v17);
      v56 = sub_268B37A34();
      v57 = sub_268B37ED4();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2688BB000, v56, v57, "Skipping language change due to already enabled language", v58, 2u);
        MEMORY[0x26D6266E0](v58, -1, -1);
      }

      v59 = *(v53 + 8);
      v59(v28, v17);
      v60 = v118[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_initialSubtitleStateDisabled];
      if (v60 != 2 && (v60 & 1) != 0)
      {
        v55(v25, v54, v17);
        v61 = sub_268B37A34();
        v62 = sub_268B37ED4();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_2688BB000, v61, v62, "Subtitles previously disabled, triggering delayed disable", v63, 2u);
          MEMORY[0x26D6266E0](v63, -1, -1);
        }

        v59(v25, v17);
        sub_268A22248();
      }

      v64 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
      v65 = WhatDidTheySayIntentResponse.init(code:userActivity:)(4, 0);
      v120();
      goto LABEL_30;
    default:
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v17, qword_2802CDA10);
      (*(v18 + 16))(v31, v35, v17);
      v36 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2688BB000, v36, v37, "Error getting matching subtitle options. All available languages returned", v38, 2u);
        MEMORY[0x26D6266E0](v38, -1, -1);
      }

      (*(v18 + 8))(v31, v17);
      v39 = sub_268B36EA4();
      v40 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
      v41 = v39;
      v42 = 104;
LABEL_29:
      v65 = WhatDidTheySayIntentResponse.init(code:userActivity:)(v42, v39);
      v120();

LABEL_30:
      return;
  }
}

void sub_268A21F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_initialSubtitleStateDisabled) = 1;
  sub_268A22248();
  v7 = sub_268A23304(a1);
  v8 = sub_268B36ED4();
  v9 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
  v10 = v8;
  v11 = WhatDidTheySayIntentResponse.init(code:userActivity:)(v7, v8);
  a5();
}

void sub_268A220C4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
  v5 = WhatDidTheySayIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268A22130(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
  v4 = WhatDidTheySayIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_268A221BC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268A22248()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v62 = v2;
  v60 = v3;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  v66 = v5;
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v64 = v7 - v6;
  OUTLINED_FUNCTION_9();
  v65 = sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v63 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v61 = v11 - v10;
  OUTLINED_FUNCTION_9();
  sub_268B37AA4();
  OUTLINED_FUNCTION_1();
  v75 = v13;
  v76 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v74 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v72 = (&v59 - v17);
  OUTLINED_FUNCTION_9();
  v79 = sub_268B37B34();
  OUTLINED_FUNCTION_1();
  v73 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_20_0();
  v71 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v78 = &v59 - v23;
  OUTLINED_FUNCTION_9();
  v24 = sub_268B37F94();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  v31 = OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion;
  if (!*&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion])
  {
    v32 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_268B3BBA0;
    sub_2688EA03C(0, &qword_2802A7310, 0x277D46E38);
    *(v33 + 32) = sub_268A22A24(0x6C7070612E6D6F63, 0xEE00697269732E65, 0xD00000000000001BLL, 0x8000000268B5ABC0);
    v34 = objc_allocWithZone(MEMORY[0x277D46DB8]);
    v35 = sub_268A23598(0xD000000000000017, 0x8000000268B5ABA0, v32, v33);
    v36 = *&v0[v31];
    *&v0[v31] = v35;
  }

  v77 = v31;
  sub_2688EA03C(0, &qword_2802A7318, 0x277D85CA0);
  sub_2688EA03C(0, &qword_2802A7320, 0x277D85C78);
  v37 = sub_268B37F54();
  v80 = MEMORY[0x277D84F90];
  sub_268A239EC(&qword_2802A7328, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7330, &unk_268B44730);
  sub_2688C3054(&unk_2802A7338, &qword_2802A7330, &unk_268B44730);
  sub_268B38124();
  v38 = sub_268B37FA4();

  (*(v26 + 8))(v30, v24);
  v69 = OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer;
  v70 = v1;
  *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer] = v38;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v39 = v71;
  sub_268B37B24();
  v40 = v72;
  *v72 = 15;
  v41 = v75;
  v42 = v76;
  v43 = *(v75 + 104);
  v43(v40, *MEMORY[0x277D85188], v76);
  MEMORY[0x26D625530](v39, v40);
  v44 = *(v41 + 8);
  v44(v40, v42);
  v45 = *(v73 + 8);
  v45(v39, v79);
  v43(v40, *MEMORY[0x277D85180], v42);
  v46 = v74;
  *v74 = 100;
  v43(v46, *MEMORY[0x277D85178], v42);
  v47 = v78;
  MEMORY[0x26D625A20](v78, v40, v46, ObjectType);
  swift_unknownObjectRelease();
  v44(v46, v42);
  v44(v40, v42);
  v48 = v69;
  v45(v47, v79);
  v49 = v70;
  if (*&v70[v48])
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_220();
    v50 = swift_allocObject();
    v51 = v60;
    v50[2] = v49;
    v50[3] = v51;
    v50[4] = v62;
    v84 = sub_268A23828;
    v85 = v50;
    OUTLINED_FUNCTION_3_32();
    v81 = 1107296256;
    v82 = sub_268A0B300;
    v83 = &block_descriptor_7;
    v52 = _Block_copy(&v80);
    swift_unknownObjectRetain();
    v53 = v49;

    v54 = v61;
    sub_268B37AE4();
    v55 = v64;
    sub_268A22EEC();
    sub_268B37FB4();
    _Block_release(v52);
    swift_unknownObjectRelease();
    (*(v66 + 8))(v55, v67);
    (*(v63 + 8))(v54, v65);

    if (*&v49[v48])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_268B37FD4();
      swift_unknownObjectRelease();
    }
  }

  v56 = *&v49[v77];
  if (v56)
  {
    v57 = v56;
    if (([v57 isValid] & 1) == 0)
    {
      v84 = sub_268A22FC4;
      v85 = 0;
      OUTLINED_FUNCTION_3_32();
      v81 = 1107296256;
      v82 = sub_2689D0988;
      v83 = &block_descriptor_30;
      v58 = _Block_copy(&v80);
      [v57 acquireWithInvalidationHandler_];
      _Block_release(v58);
    }
  }

  OUTLINED_FUNCTION_23();
}

id sub_268A22A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_268B37BC4();

  v5 = sub_268B37BC4();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

uint64_t sub_268A22AB8(char *a1, uint64_t a2, uint64_t a3)
{
  *&a1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer] = 0;
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController], *&a1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 24]);
  *(swift_allocObject() + 16) = a1;
  v4 = a1;
  sub_268B36D14();
}

void sub_268A22B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_26893B66C(a1, &v24 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v8, v14, v4);
    v15 = sub_268B37A34();
    v16 = sub_268B37EE4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2688BB000, v15, v16, "Error disabling subtitles for 'What did they say' request", v17, 2u);
      MEMORY[0x26D6266E0](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_2688C058C(v13, &qword_2802A5DE8, &qword_268B3D790);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v10, v18, v4);
    v19 = sub_268B37A34();
    v20 = sub_268B37EC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Successfully disabled subtitles for 'What did they say' request", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  v22 = OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion;
  [*(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion) invalidate];
  v23 = *(a2 + v22);
  *(a2 + v22) = 0;

  *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_initialSubtitleStateDisabled) = 2;
}

uint64_t sub_268A22EEC()
{
  sub_268B37AB4();
  sub_268A239EC(&unk_2802A7010, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  return sub_268B38124();
}

uint64_t sub_268A22FC4(uint64_t a1, void *a2)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  if (a2)
  {
    v10 = a2;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v3, qword_2802CDA10);
    (*(v4 + 16))(v7, v11, v3);
    v12 = a2;
    v13 = sub_268B37A34();
    v14 = sub_268B37EE4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_268B384A4();
      v19 = sub_26892CDB8(v17, v18, &v26);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2688BB000, v13, v14, "Error acquiring assertion %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x26D6266E0](v16, -1, -1);
      MEMORY[0x26D6266E0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v3, qword_2802CDA10);
    (*(v4 + 16))(v9, v20, v3);
    v21 = sub_268B37A34();
    v22 = sub_268B37EC4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2688BB000, v21, v22, "Acquired RB assertion", v23, 2u);
      MEMORY[0x26D6266E0](v23, -1, -1);
    }

    return (*(v4 + 8))(v9, v3);
  }
}

uint64_t sub_268A23304(uint64_t a1)
{
  v2 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  sub_26893B66C(a1, &v17 - v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 4;
  }

  (*(v4 + 32))(v11, v14, v2);
  sub_268B36EC4();
  v15 = *(v4 + 8);
  v15(v8, v2);
  v15(v11, v2);
  return 5;
}

id WhatDidTheySayIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WhatDidTheySayIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268A23598(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_268B37BC4();

  sub_2688EA03C(0, &qword_2802A7348, 0x277D46DD8);
  v7 = sub_268B37CE4();

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:v7];

  return v8;
}

uint64_t sub_268A23648()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268A2368C()
{
  sub_268B37A24();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_268A237EC()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A2384C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268A2388C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_55Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_268A23950(void *a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_268A23974()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268A239EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PlaybackControlsAceOutputHelper.makeAceCompletionOutput(intent:template:nlContext:deviceState:snippetAceViews:additionalCommands:setsRequestEndBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  v17[1] = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v17 - v11;
  if (a7 & 1) != 0 && (sub_2689F0948())
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v14 = sub_268B38064();
    [v13 setMinimumAutoDismissalTimeInMs_];

    [v13 setPremptivelyResumeMedia_];
  }

  else
  {
    v13 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_268B34CA4();
  v15 = sub_268B35044();
  (*(*(v15 - 8) + 16))(v12, a3, v15);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v15);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_268B34EF4();

  sub_2688EF38C(v18, &unk_2802A5800, &unk_268B3CE10);
  return sub_2688EF38C(v12, &qword_2802A57F0, &qword_268B3DDB0);
}

_BYTE *storeEnumTagSinglePayload for PlaybackControlsAceOutputHelper(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268A23D60);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A23D98()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_1();
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_15();
  v4 = MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_17(v4, v5, v6, v7, v8, v9, v10, v11, v48);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v14);
  if (OUTLINED_FUNCTION_23_13())
  {
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_54_3(42, v15);
    v16 = OUTLINED_FUNCTION_15_17();
    v17(v16);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v49, qword_2802CDA10);
    v18 = OUTLINED_FUNCTION_5_15();
    v19(v18);
    v20 = OUTLINED_FUNCTION_8_17();
    v1(v20);
    v21 = sub_268B37A34();
    v22 = sub_268B37F04();
    if (OUTLINED_FUNCTION_37_11(v22))
    {
      v23 = OUTLINED_FUNCTION_172_0();
      v24 = OUTLINED_FUNCTION_22_11(v23);
      OUTLINED_FUNCTION_48_6(v24);
      v25 = OUTLINED_FUNCTION_7_20(4.8149e-34);
      v1(v25);
      OUTLINED_FUNCTION_56_4();
      v26 = OUTLINED_FUNCTION_3_33();
      v27(v26);
      OUTLINED_FUNCTION_35_9();
      OUTLINED_FUNCTION_55_4();
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_16_22(&dword_2688BB000, v28, v29, "Transformer#quickStopToAlarmTransformer Reformed parse to stop alarm DirectInvocation: %s");
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_12();

      v30 = OUTLINED_FUNCTION_11_22();
      v31(v30);
      OUTLINED_FUNCTION_51_4();
    }

    else
    {

      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_49_4();
      v43();
      v44 = OUTLINED_FUNCTION_11_22();
      v45(v44);
      OUTLINED_FUNCTION_50_5();
    }

    v46 = OUTLINED_FUNCTION_29_10();
    v47(v46);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v49, qword_2802CDA10);
    v32 = OUTLINED_FUNCTION_6_28();
    v33(v32);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31_12(v36);
      OUTLINED_FUNCTION_24_12(&dword_2688BB000, v37, v38, "Transformer#quickStopToAlarmTransformer Task is not a valid QuickStop task, returning untransformed parse");
      OUTLINED_FUNCTION_18_12();
    }

    v39 = OUTLINED_FUNCTION_30_12();
    v40(v39);
    v41 = OUTLINED_FUNCTION_14_16();
    v42(v41);
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A240C0()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_1();
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_15();
  v4 = MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_17(v4, v5, v6, v7, v8, v9, v10, v11, v48);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v14);
  if (OUTLINED_FUNCTION_23_13())
  {
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_54_3(42, v15);
    v16 = OUTLINED_FUNCTION_15_17();
    v17(v16);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v49, qword_2802CDA10);
    v18 = OUTLINED_FUNCTION_5_15();
    v19(v18);
    v20 = OUTLINED_FUNCTION_8_17();
    v1(v20);
    v21 = sub_268B37A34();
    v22 = sub_268B37F04();
    if (OUTLINED_FUNCTION_37_11(v22))
    {
      v23 = OUTLINED_FUNCTION_172_0();
      v24 = OUTLINED_FUNCTION_22_11(v23);
      OUTLINED_FUNCTION_48_6(v24);
      v25 = OUTLINED_FUNCTION_7_20(4.8149e-34);
      v1(v25);
      OUTLINED_FUNCTION_56_4();
      v26 = OUTLINED_FUNCTION_3_33();
      v27(v26);
      OUTLINED_FUNCTION_35_9();
      OUTLINED_FUNCTION_55_4();
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_16_22(&dword_2688BB000, v28, v29, "Transformer#quickStopToTimerTransformer Reformed parse to stop timer DirectInvocation: %s");
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_12();

      v30 = OUTLINED_FUNCTION_11_22();
      v31(v30);
      OUTLINED_FUNCTION_51_4();
    }

    else
    {

      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_49_4();
      v43();
      v44 = OUTLINED_FUNCTION_11_22();
      v45(v44);
      OUTLINED_FUNCTION_50_5();
    }

    v46 = OUTLINED_FUNCTION_29_10();
    v47(v46);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v49, qword_2802CDA10);
    v32 = OUTLINED_FUNCTION_6_28();
    v33(v32);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31_12(v36);
      OUTLINED_FUNCTION_24_12(&dword_2688BB000, v37, v38, "Transformer#quickStopToTimerTransformer Task is not a valid QuickStop task, returning untransformed parse");
      OUTLINED_FUNCTION_18_12();
    }

    v39 = OUTLINED_FUNCTION_30_12();
    v40(v39);
    v41 = OUTLINED_FUNCTION_14_16();
    v42(v41);
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A243E8()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_1();
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_15();
  v4 = MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_17(v4, v5, v6, v7, v8, v9, v10, v11, v48);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v14);
  if (OUTLINED_FUNCTION_23_13())
  {
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_54_3(54, v15);
    v16 = OUTLINED_FUNCTION_15_17();
    v17(v16);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v49, qword_2802CDA10);
    v18 = OUTLINED_FUNCTION_5_15();
    v19(v18);
    v20 = OUTLINED_FUNCTION_8_17();
    v1(v20);
    v21 = sub_268B37A34();
    v22 = sub_268B37F04();
    if (OUTLINED_FUNCTION_37_11(v22))
    {
      v23 = OUTLINED_FUNCTION_172_0();
      v24 = OUTLINED_FUNCTION_22_11(v23);
      OUTLINED_FUNCTION_48_6(v24);
      v25 = OUTLINED_FUNCTION_7_20(4.8149e-34);
      v1(v25);
      OUTLINED_FUNCTION_56_4();
      v26 = OUTLINED_FUNCTION_3_33();
      v27(v26);
      OUTLINED_FUNCTION_35_9();
      OUTLINED_FUNCTION_55_4();
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_16_22(&dword_2688BB000, v28, v29, "Transformer#quickStopToHomeAnnouncementTransformer Reformed parse to stop home announcement DirectInvocation: %s");
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_12();

      v30 = OUTLINED_FUNCTION_11_22();
      v31(v30);
      OUTLINED_FUNCTION_51_4();
    }

    else
    {

      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_49_4();
      v43();
      v44 = OUTLINED_FUNCTION_11_22();
      v45(v44);
      OUTLINED_FUNCTION_50_5();
    }

    v46 = OUTLINED_FUNCTION_29_10();
    v47(v46);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v49, qword_2802CDA10);
    v32 = OUTLINED_FUNCTION_6_28();
    v33(v32);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31_12(v36);
      OUTLINED_FUNCTION_24_12(&dword_2688BB000, v37, v38, "Transformer#quickStopToHomeAnnouncementTransformer Task is not a valid QuickStop task, returning untransformed parse");
      OUTLINED_FUNCTION_18_12();
    }

    v39 = OUTLINED_FUNCTION_30_12();
    v40(v39);
    v41 = OUTLINED_FUNCTION_14_16();
    v42(v41);
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A24710()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_1();
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_15();
  v4 = MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_17(v4, v5, v6, v7, v8, v9, v10, v11, v48);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v14);
  if (OUTLINED_FUNCTION_23_13())
  {
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_54_3(44, v15);
    v16 = OUTLINED_FUNCTION_15_17();
    v17(v16);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v49, qword_2802CDA10);
    v18 = OUTLINED_FUNCTION_5_15();
    v19(v18);
    v20 = OUTLINED_FUNCTION_8_17();
    v1(v20);
    v21 = sub_268B37A34();
    v22 = sub_268B37F04();
    if (OUTLINED_FUNCTION_37_11(v22))
    {
      v23 = OUTLINED_FUNCTION_172_0();
      v24 = OUTLINED_FUNCTION_22_11(v23);
      OUTLINED_FUNCTION_48_6(v24);
      v25 = OUTLINED_FUNCTION_7_20(4.8149e-34);
      v1(v25);
      OUTLINED_FUNCTION_56_4();
      v26 = OUTLINED_FUNCTION_3_33();
      v27(v26);
      OUTLINED_FUNCTION_35_9();
      OUTLINED_FUNCTION_55_4();
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_16_22(&dword_2688BB000, v28, v29, "Transformer#quickStopToPhoneTransformer Reformed parse to hang up DirectInvocation: %s");
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_12();

      v30 = OUTLINED_FUNCTION_11_22();
      v31(v30);
      OUTLINED_FUNCTION_51_4();
    }

    else
    {

      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_49_4();
      v43();
      v44 = OUTLINED_FUNCTION_11_22();
      v45(v44);
      OUTLINED_FUNCTION_50_5();
    }

    v46 = OUTLINED_FUNCTION_29_10();
    v47(v46);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v49, qword_2802CDA10);
    v32 = OUTLINED_FUNCTION_6_28();
    v33(v32);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31_12(v36);
      OUTLINED_FUNCTION_24_12(&dword_2688BB000, v37, v38, "Transformer#quickStopToPhoneTransformer Task is not a valid QuickStop task, returning untransformed parse");
      OUTLINED_FUNCTION_18_12();
    }

    v39 = OUTLINED_FUNCTION_30_12();
    v40(v39);
    v41 = OUTLINED_FUNCTION_14_16();
    v42(v41);
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A24A38()
{
  OUTLINED_FUNCTION_197();
  v195 = v0;
  v2 = v1;
  v197 = v3;
  v210 = sub_268B37034();
  OUTLINED_FUNCTION_1();
  *&v200 = v4;
  MEMORY[0x28223BE20](v5);
  v205 = v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  MEMORY[0x28223BE20](v7 - 8);
  *&v211 = v185 - v8;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v199 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v18);
  v214 = v185 - v19;
  v190 = type metadata accessor for MediaPlayerNLv3Intent(0);
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_20_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v185 - v24;
  v26 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = v185 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_268B366C4();
  OUTLINED_FUNCTION_1();
  v191 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v35);
  v37 = v185 - v36;
  v38 = *(v28 + 16);
  v198 = v2;
  v194 = (v28 + 16);
  v193 = v38;
  (v38)(v31, v2, v26);
  v39 = (*(v28 + 88))(v31, v26);
  v40 = *MEMORY[0x277D5C128];
  v196 = v26;
  if (v39 == v40)
  {
    v41 = OUTLINED_FUNCTION_34_8();
    v42(v41, v26);
  }

  else
  {
    if (v39 != *MEMORY[0x277D5C158])
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_79;
      }

      goto LABEL_61;
    }

    v43 = OUTLINED_FUNCTION_34_8();
    v44(v43, v196);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940);
  }

  v187 = v28;
  v45 = v191 + 32;
  v46 = *(v191 + 32);
  v47 = v192;
  v46(v37, v31, v192);
  v185[1] = v45;
  v185[0] = v46;
  v46(v25, v37, v47);
  if (qword_2802A4F30 != -1)
  {
LABEL_77:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v48 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v49 = v199;
  v50 = *(v199 + 16);
  v207 = v48;
  v209 = v199 + 16;
  v208 = v50;
  v50(v214);
  sub_268A25E80(v25, v22);
  v51 = sub_268B37A34();
  v52 = sub_268B37EC4();
  v53 = os_log_type_enabled(v51, v52);
  v202 = v25;
  v54 = v204;
  if (v53)
  {
    v55 = OUTLINED_FUNCTION_172_0();
    v212 = OUTLINED_FUNCTION_173_0();
    v56 = v212;
    *v55 = 136315138;
    v57 = sub_268B366A4();
    v58 = v22;
    v60 = v59;
    sub_268A25EE4(v58);
    v61 = sub_26892CDB8(v57, v60, &v212);

    *(v55 + 4) = v61;
    _os_log_impl(&dword_2688BB000, v51, v52, "Transformer#homeAutomationNLV3Transformer MediaPlayerNLv3Intent %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    v54 = v204;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    sub_268A25EE4(v22);
  }

  v206 = *(v49 + 8);
  v206(v214, v9);
  v25 = v211;
  v28 = *(v198 + *(type metadata accessor for DevicesWithParse(0) + 20));
  OUTLINED_FUNCTION_1_40();
  v62();

  v63 = sub_268B37A34();
  v64 = sub_268B37EC4();

  v65 = os_log_type_enabled(v63, v64);
  v203 = v9;
  v66 = v210;
  v214 = v28;
  if (v65)
  {
    v67 = OUTLINED_FUNCTION_172_0();
    v212 = OUTLINED_FUNCTION_173_0();
    v68 = v212;
    *v67 = 136315138;
    v69 = type metadata accessor for Device();
    v70 = MEMORY[0x26D625710](v28, v69);
    v72 = sub_26892CDB8(v70, v71, &v212);

    *(v67 + 4) = v72;
    v28 = v214;
    _os_log_impl(&dword_2688BB000, v63, v64, "Transformer#homeAutomationNLV3Transformer Devices: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    OUTLINED_FUNCTION_9_15();
    v73 = v54;
    v74 = v203;
  }

  else
  {

    OUTLINED_FUNCTION_9_15();
    v73 = v54;
    v74 = v9;
  }

  v206(v73, v74);
  v75 = v200;
  v212 = MEMORY[0x277D84F90];
  v22 = sub_2688EFD0C();
  v76 = 0;
  v9 = v28 & 0xC000000000000001;
  v77 = v28 & 0xFFFFFFFFFFFFFF8;
  v204 = (v75 + 16);
  v78 = (v75 + 8);
  while (v22 != v76)
  {
    if (v9)
    {
      v79 = MEMORY[0x26D625BD0](v76, v28);
    }

    else
    {
      if (v76 >= *(v77 + 16))
      {
        goto LABEL_76;
      }

      v79 = *(v28 + 8 * v76 + 32);
    }

    v80 = v79;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    Device.deviceType.getter(v25);
    if (__swift_getEnumTagSinglePayload(v25, 1, v66))
    {
      sub_268A25F8C(v25);
LABEL_21:
      sub_268B38214();
      sub_268B38244();
      v66 = v210;
      sub_268B38254();
      sub_268B38224();
      goto LABEL_22;
    }

    v81 = v205;
    (*v204)(v205, v25, v66);
    sub_268A25F8C(v25);
    v82 = sub_268B36FF4();
    (*v78)(v81, v66);
    if (v82)
    {
      goto LABEL_21;
    }

LABEL_22:
    ++v76;
    v25 = v211;
    v28 = v214;
  }

  *&v211 = v212;
  v83 = sub_2688EFD0C();
  if (!v83)
  {
    v87 = MEMORY[0x277D84F90];
    v85 = v202;
    goto LABEL_44;
  }

  v31 = v83;
  v9 = v203;
  v85 = v202;
  if (v83 >= 1)
  {
    v86 = 0;
    v215 = v211 & 0xC000000000000001;
    v205 = (v199 + 8);
    v87 = MEMORY[0x277D84F90];
    *&v84 = 136315138;
    v200 = v84;
    v88 = v201;
    v210 = v83;
    do
    {
      if (v215)
      {
        v89 = MEMORY[0x26D625BD0](v86, v211);
      }

      else
      {
        v89 = *(v211 + 8 * v86 + 32);
      }

      v90 = v89;
      sub_268988574(v89);
      v91 = sub_268B382F4();

      if (v91)
      {
        OUTLINED_FUNCTION_1_40();
        v92();
        v93 = v90;
        v94 = sub_268B37A34();
        v95 = sub_268B37EE4();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = OUTLINED_FUNCTION_172_0();
          v204 = OUTLINED_FUNCTION_173_0();
          v212 = v204;
          *v96 = v200;
          v97 = [v93 debugDescription];
          v98 = v87;
          v99 = sub_268B37BF4();
          v101 = v100;

          v102 = v99;
          v87 = v98;
          v103 = sub_26892CDB8(v102, v101, &v212);
          v85 = v202;

          *(v96 + 4) = v103;
          v88 = v201;
          _os_log_impl(&dword_2688BB000, v94, v95, "Transformer#homeAutomationNLV3Transformer no accessory type found in native matter devices %s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v204);
          OUTLINED_FUNCTION_12();
          v9 = v203;
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        v206(v88, v9);
        v31 = v210;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_268987F00();
          v87 = v106;
        }

        v104 = *(v87 + 16);
        v105 = v104 + 1;
        if (v104 >= *(v87 + 24) >> 1)
        {
          sub_268987F00();
          v87 = v107;
        }

        *(v87 + 16) = v105;
      }

      ++v86;
    }

    while (v31 != v86);
LABEL_44:

    if (qword_2802A5038 != -1)
    {
      swift_once();
    }

    sub_268A25FF4();
    sub_268B35C64();
    v108 = v212;
    if (v212 == 24)
    {

      OUTLINED_FUNCTION_1_40();
      v109();
      v110 = sub_268B37A34();
      v111 = sub_268B37EE4();
      if (os_log_type_enabled(v110, v111))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v112, v113, "Transformer#homeAutomationNLV3Transformer unable to unwrap mediaPlayerIntent verb, returning parse");
        OUTLINED_FUNCTION_6();
      }

      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_19_14();
      v114();
      sub_268A25EE4(v85);
      OUTLINED_FUNCTION_41_4();
      OUTLINED_FUNCTION_32_9();
      v115();
      OUTLINED_FUNCTION_42_8();
      goto LABEL_72;
    }

    sub_268946620();
    v116 = sub_268B37B84();
    if (*(v116 + 16) && (v117 = sub_268A75C50(v108), (v118 & 1) != 0))
    {
      v119 = *(*(v116 + 56) + v117);

      v120 = sub_268B37B84();
      if (*(v120 + 16))
      {
        v121 = sub_268A75C50(v108);
        if (v122)
        {
          v123 = *(*(v120 + 56) + v121);

          type metadata accessor for HomeAutomationNLV3Intent.Builder();
          swift_initStackObject();
          sub_268A78490();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
          inited = swift_initStackObject();
          v211 = xmmword_268B3BBC0;
          *(inited + 16) = xmmword_268B3BBC0;
          if (qword_2802A4DA0 != -1)
          {
            swift_once();
          }

          sub_268B35C64();
          v125 = v212;
          v126 = v213;
          if (!v213)
          {
            v125 = 0;
            v126 = 0xE000000000000000;
          }

          *(inited + 32) = v125;
          *(inited + 40) = v126;
          sub_268A78ACC();

          swift_setDeallocating();
          sub_268ACE684();
          sub_268A78B90(v87);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7378, qword_268B447E8);
          v127 = swift_initStackObject();
          *(v127 + 16) = v211;
          *(v127 + 32) = v119;
          v128 = sub_268A78D74();

          swift_setDeallocating();
          LOBYTE(v212) = v123;
          v129 = v189;
          sub_268A78F28();
          OUTLINED_FUNCTION_1_40();
          v130();
          v131 = v191;
          v132 = v188;
          v133 = v192;
          (*(v191 + 16))(v188, v129, v192);
          v134 = sub_268B37A34();
          v135 = sub_268B37EC4();
          if (os_log_type_enabled(v134, v135))
          {
            v136 = OUTLINED_FUNCTION_172_0();
            v137 = OUTLINED_FUNCTION_173_0();
            *&v211 = v128;
            v138 = v137;
            v212 = v137;
            *v136 = 136315138;
            v139 = sub_268B366A4();
            v140 = v132;
            v142 = v141;
            (*(v131 + 8))(v140, v192);
            v143 = sub_26892CDB8(v139, v142, &v212);

            *(v136 + 4) = v143;
            _os_log_impl(&dword_2688BB000, v134, v135, "Transformer#homeAutomationNLV3Transformer final homeAutomationNLIntent: %s", v136, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v138);
            OUTLINED_FUNCTION_12();
            v133 = v192;
            OUTLINED_FUNCTION_12();
          }

          else
          {

            (*(v131 + 8))(v132, v133);
          }

          OUTLINED_FUNCTION_9_15();
          OUTLINED_FUNCTION_19_14();
          v181();
          sub_268A25EE4(v202);
          OUTLINED_FUNCTION_42_8();
          v182 = v196;
          v183 = v187;
          v184 = v197;
          (v185[0])(v197, v189, v133);
          (*(v183 + 104))(v184, v186, v182);
          goto LABEL_72;
        }
      }

      OUTLINED_FUNCTION_1_40();
      v170();
      v171 = sub_268B37A34();
      v172 = sub_268B37EE4();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = OUTLINED_FUNCTION_172_0();
        v174 = OUTLINED_FUNCTION_173_0();
        v212 = v174;
        *v173 = 136315138;
        v175 = sub_26893E3F8(v108);
        v177 = sub_26892CDB8(v175, v176, &v212);

        *(v173 + 4) = v177;
        OUTLINED_FUNCTION_52_7(&dword_2688BB000, v178, v179, "Transformer#homeAutomationNLV3Transformer no mapped HomeAutomationVerb for this verb %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v174);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_6();
      }

      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_19_14();
      v180();
      sub_268A25EE4(v202);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_32_9();
      v166 = v197;
      v167 = v198;
      v168 = v196;
    }

    else
    {

      OUTLINED_FUNCTION_1_40();
      v152();
      v153 = sub_268B37A34();
      v154 = sub_268B37EE4();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = OUTLINED_FUNCTION_172_0();
        v156 = OUTLINED_FUNCTION_173_0();
        v212 = v156;
        *v155 = 136315138;
        v157 = sub_26893E3F8(v108);
        v159 = v85;
        v160 = sub_26892CDB8(v157, v158, &v212);

        *(v155 + 4) = v160;
        OUTLINED_FUNCTION_52_7(&dword_2688BB000, v161, v162, "Transformer#homeAutomationNLV3Transformer no mapped HomeAutomationState for this verb %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v156);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_6();

        OUTLINED_FUNCTION_9_15();
        OUTLINED_FUNCTION_19_14();
        v163();
        v164 = v159;
      }

      else
      {

        OUTLINED_FUNCTION_9_15();
        OUTLINED_FUNCTION_19_14();
        v165();
        v164 = v85;
      }

      sub_268A25EE4(v164);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_41_4();
      OUTLINED_FUNCTION_32_9();
    }

    v169(v166, v167, v168);
    goto LABEL_72;
  }

  __break(1u);
LABEL_79:
  OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_61:
  v144 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v199 + 16))(v209, v144, v9);
  v145 = sub_268B37A34();
  v146 = sub_268B37EE4();
  os_log_type_enabled(v145, v146);
  OUTLINED_FUNCTION_42_8();
  if (v147)
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_23_4(&dword_2688BB000, v148, v149, "Transformer#homeAutomationNLV3Transformer Parse doesn't contain an NLv3 intent, returning untransformed parse");
    OUTLINED_FUNCTION_6();
  }

  (*(v199 + 8))(v209, v9);
  OUTLINED_FUNCTION_41_4();
  v151 = *(v150 - 256);
  v193();
  (*(v28 + 8))(v31, v151);
LABEL_72:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A25E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A25EE4(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayerNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DevicesWithParse(uint64_t a1)
{
  result = qword_2802A7380;
  if (!qword_2802A7380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A25F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268A25FF4()
{
  result = qword_2802A5A98;
  if (!qword_2802A5A98)
  {
    type metadata accessor for MediaPlayerNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5A98);
  }

  return result;
}

uint64_t sub_268A26060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268B35494();
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

    return (v8 + 1);
  }
}

uint64_t sub_268A26120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_268B35494();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_268A261C8(uint64_t a1)
{
  sub_268B35494();
  if (v1 <= 0x3F)
  {
    sub_268A2624C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268A2624C(uint64_t a1)
{
  if (!qword_2802A7390)
  {
    type metadata accessor for Device();
    v1 = sub_268B37D54();
    if (!v2)
    {
      atomic_store(v1, &qword_2802A7390);
    }
  }
}

void OUTLINED_FUNCTION_16_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 132);

  _os_log_impl(a1, v5, v8, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_17_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 104) = &a9 - v9;

  return sub_268B35494();
}

void OUTLINED_FUNCTION_18_12()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_20_15()
{
  __swift_destroy_boxed_opaque_existential_0Tm(*(v0 - 144));

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1)
{
  *(v1 - 152) = a1;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_13()
{
  *(v1 - 112) = v0;

  return sub_268A409F0();
}

void OUTLINED_FUNCTION_24_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_25_11()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_34_8()
{
  *(v3 - 480) = v2;
  *(v3 - 492) = v0;
  return v1;
}

unint64_t OUTLINED_FUNCTION_35_9()
{

  return sub_26892CDB8(v1, v0, (v2 - 72));
}

BOOL OUTLINED_FUNCTION_37_11(int a1)
{
  *(v2 - 132) = a1;

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 72) = result;
  return result;
}

void OUTLINED_FUNCTION_52_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_54_3(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x2821BBC00](v3, a2, 0);
}

uint64_t OUTLINED_FUNCTION_55_4()
{
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return sub_268B37C24();
}

id sub_268A26660()
{
  if (qword_2802A4D48 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD8F8;
  qword_2802CD998 = qword_2802CD8F8;

  return v1;
}

void sub_268A266C4()
{
  OUTLINED_FUNCTION_26();
  v115 = v1;
  v116 = v0;
  v118 = v2;
  v119 = v3;
  v117 = v4;
  v123 = v5;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v120 = v7;
  v121 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v122 = v9 - v8;
  OUTLINED_FUNCTION_9();
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v113 = v14;
  OUTLINED_FUNCTION_8();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v110 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v110 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v112 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v111 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v110 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  v29 = &v110 - v28;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v30 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v31 = *(v12 + 16);
  v124 = v10;
  (v31)(v29, v30, v10);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "SetPlaybackSpeedHandleIntentStrategy.makeIntentHandledResponse()", v34, 2u);
    OUTLINED_FUNCTION_12();
  }

  v36 = v12 + 8;
  v35 = *(v12 + 8);
  v114 = v12 + 8;
  (v35)(v29, v124);
  v37 = v122;
  sub_268A82B50(v123, v122);
  v38 = OBJC_IVAR___SetPlaybackSpeedIntentResponse_code;
  v39 = v117;
  OUTLINED_FUNCTION_22_12(&v117[OBJC_IVAR___SetPlaybackSpeedIntentResponse_code]);
  v40 = *&v39[v38];
  switch(v40)
  {
    case 101:
      v66 = v124;
      (v31)(v21, v30, v124);
      v67 = sub_268B37A34();
      v68 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_19(v68))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v69, v70, "Sending alreadyAtMinimumPlaybackSpeed dialog");
        OUTLINED_FUNCTION_12();
      }

      (v35)(v21, v66);
      OUTLINED_FUNCTION_28_16();
      OUTLINED_FUNCTION_10_18();
      v58 = swift_allocObject();
      v71 = v123;
      v58[2] = v36;
      v58[3] = v71;
      OUTLINED_FUNCTION_4_25(v58);
      v60 = "#AlreadyAtMaximumPlaybackSpeed";
      v61 = *(v66 + 40);
      v62 = *(v66 + 48);
      OUTLINED_FUNCTION_7_21();
      v72 = v71;
      v73 = v39;

      v65 = sub_268A29CA4;
      break;
    case 100:
      v52 = v30;
      v53 = v124;
      (v31)(v18, v52, v124);
      v54 = sub_268B37A34();
      v55 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_19(v55))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v56, v57, "Sending alreadyAtMaximumPlaybackSpeed dialog");
        OUTLINED_FUNCTION_12();
      }

      (v35)(v18, v53);
      OUTLINED_FUNCTION_28_16();
      OUTLINED_FUNCTION_10_18();
      v58 = swift_allocObject();
      v59 = v123;
      v58[2] = v36;
      v58[3] = v59;
      OUTLINED_FUNCTION_4_25(v58);
      v60 = "edHandleIntentStrategy";
      v61 = *(v18 + 5);
      v62 = *(v18 + 6);
      OUTLINED_FUNCTION_7_21();
      v63 = v59;
      v64 = v39;

      v65 = sub_268A29D84;
      break;
    case 4:
      v41 = [v123 playbackSpeedType];
      if (v41 == 1)
      {
        v90 = v111;
        OUTLINED_FUNCTION_29_11();
        v31();
        v91 = sub_268B37A34();
        v92 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_19(v92))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v93, v94, "Sending increasePlaybackSpeed dialog");
          OUTLINED_FUNCTION_12();
        }

        OUTLINED_FUNCTION_27_11();
        v35();
        OUTLINED_FUNCTION_28_16();
        OUTLINED_FUNCTION_10_18();
        v45 = swift_allocObject();
        v95 = v123;
        v45[2] = v36;
        v45[3] = v95;
        OUTLINED_FUNCTION_4_25(v45);
        v47 = "#AlreadyAtMinimumPlaybackSpeed";
        v48 = *(v90 + 40);
        v124 = *(v90 + 48);
        OUTLINED_FUNCTION_7_21();
        v96 = v95;
        v97 = v39;

        v51 = sub_268A29CC4;
      }

      else
      {
        if (v41 != 2)
        {
          OUTLINED_FUNCTION_29_11();
          v31();
          v98 = v123;
          v99 = sub_268B37A34();
          v100 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_196(v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 134218240;
            [v98 speedMagnitude];
            *(v101 + 4) = v102;
            *(v101 + 12) = 2048;
            *(v101 + 14) = [v98 requestedPlaybackSpeedUnit];

            _os_log_impl(&dword_2688BB000, v99, v100, "Sending setPlaybackSpeedToValue dialog with speed magnitude: %f and requestedPlaybackSpeedUnit %ld", v101, 0x16u);
            OUTLINED_FUNCTION_12();
          }

          else
          {

            v99 = v98;
          }

          OUTLINED_FUNCTION_27_11();
          v35();
          v103 = v116;
          [v98 speedMagnitude];
          v105 = v104;
          v106 = [v98 requestedPlaybackSpeedUnit] == 1;
          OUTLINED_FUNCTION_10_18();
          v107 = swift_allocObject();
          v107[2] = v103;
          v107[3] = v98;
          OUTLINED_FUNCTION_4_25(v107);

          v108 = v98;
          v109 = v39;

          sub_268ABF67C(v105, (v106 << 8), sub_268A29CB4, v107);
          goto LABEL_31;
        }

        v42 = v110;
        OUTLINED_FUNCTION_29_11();
        v31();
        v43 = sub_268B37A34();
        v44 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_19(v44))
        {
          v18 = OUTLINED_FUNCTION_14();
          *v18 = 0;
          _os_log_impl(&dword_2688BB000, v43, v42, "Sending decreasePlaybackSpeed dialog", v18, 2u);
          OUTLINED_FUNCTION_12();
        }

        OUTLINED_FUNCTION_27_11();
        v35();
        OUTLINED_FUNCTION_28_16();
        OUTLINED_FUNCTION_10_18();
        v45 = swift_allocObject();
        v46 = v123;
        v45[2] = v36;
        v45[3] = v46;
        OUTLINED_FUNCTION_4_25(v45);
        v47 = "#IncreasePlaybackSpeed";
        v48 = *(v18 + 5);
        v124 = *(v18 + 6);
        OUTLINED_FUNCTION_7_21();
        v49 = v46;
        v50 = v39;

        v51 = sub_268A29D28;
      }

      sub_2689CE88C(0xD000000000000026, v47 | 0x8000000000000000, v51, v45, v48, v124);
LABEL_31:

LABEL_32:
      v75 = v120;
      v74 = v121;
      goto LABEL_33;
    default:
      OUTLINED_FUNCTION_29_11();
      v31();
      v76 = sub_268B37A34();
      v77 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_196(v77))
      {
        v78 = OUTLINED_FUNCTION_14();
        *v78 = 0;
        _os_log_impl(&dword_2688BB000, v76, v77, "SetPlaybackSpeedHandleIntentStrategy.makeIntentHandledResponse() sending unsupported error dialog", v78, 2u);
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_27_11();
      v35();
      v79 = v116;
      v80 = *(v116 + 56);
      OUTLINED_FUNCTION_10_18();
      v81 = swift_allocObject();
      v82 = v123;
      v81[2] = v79;
      v81[3] = v82;
      v84 = v118;
      v83 = v119;
      v81[4] = v39;
      v81[5] = v84;
      v81[6] = v115;
      v81[7] = v83;

      v85 = v82;
      v86 = v39;

      v87 = sub_268B37B84();
      v88 = v80[5];
      v89 = v80[6];
      __swift_project_boxed_opaque_existential_1(v80 + 2, v88);
      sub_2689CE860(0xD000000000000032, 0x8000000268B579F0, v87, sub_268A29C98, v81, v88, v89);

      goto LABEL_32;
  }

  sub_2689CE88C(0xD00000000000002ELL, v60 | 0x8000000000000000, v65, v58, v61, v62);

  v75 = v120;
  v74 = v121;
  v37 = v122;
LABEL_33:
  (*(v75 + 8))(v37, v74);
  OUTLINED_FUNCTION_23();
}

void sub_268A2708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  OUTLINED_FUNCTION_26();
  v87 = v22;
  v88 = v21;
  v93 = v24;
  v94 = v23;
  v92 = v25;
  v95 = v27;
  v96 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_74();
  v91 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v34 = OUTLINED_FUNCTION_22(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v86 = v35;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v36);
  v90 = &v84 - v37;
  OUTLINED_FUNCTION_9();
  v38 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3();
  v89 = v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  v45 = &v84 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3();
  v85 = v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v49);
  v51 = &v84 - v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v52);
  v54 = (&v84 - v53);
  sub_2688F1FA4(v29, &v84 - v53, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v87 = v38;
    v55 = *v54;
    sub_268B36E84();
    if (!v56)
    {
      swift_getErrorValue();
      sub_268B384A4();
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_17_18();
      sub_268947F08();
    }

    v67 = v87;
    __swift_project_boxed_opaque_existential_1(v96 + 8, v96[11]);
    (*(v40 + 104))(v89, *MEMORY[0x277D5BC00], v67);
    v68 = sub_268B350F4();
    v69 = v90;
    __swift_storeEnumTagSinglePayload(v90, 1, 1, v68);
    v70 = *MEMORY[0x277D5B8E0];
    v71 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    (*(v72 + 104))(v91, v70, v71);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v71);
    v76 = v86;
    sub_2688F1FA4(v69, v86, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v76, 1, v68) == 1)
    {
      sub_2688C058C(v76, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v68 - 8) + 8))(v76, v68);
    }

    v77 = v91;
    v78 = v89;
    sub_2688E2964();

    sub_2688C058C(v77, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v90, &unk_2802A57B0, &unk_268B3CE00);
    (*(v40 + 8))(v78, v87);
    __swift_project_boxed_opaque_existential_1(v96 + 8, v96[11]);
    sub_2688C2ECC();
    v79 = swift_allocError();
    *v80 = 89;
    sub_26894B450();

    v97[0] = v55;
    v98 = 1;
    v81 = v55;
    (v94)(v97);

    sub_2688C058C(v97, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v54, v51);
    __swift_project_boxed_opaque_existential_1(v96 + 13, v96[16]);
    v57 = sub_268B36FA4();
    v58 = v85;
    sub_2688F1FA4(v51, v85, &unk_2802A56E0, &unk_268B3CDF0);
    v59 = *(v58 + *(v46 + 48));
    (*(v40 + 104))(v45, *v87, v38);
    v60 = (v40 + 8);
    v61 = OUTLINED_FUNCTION_20_16();
    if (v57)
    {
      sub_268A27700(v61, v62, v63, v64, v92, a21, v45, v65, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
    }

    else
    {
      sub_268A27E38(v61, v62, v63, v88, v92, a21, v45, v65, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
    }

    (*v60)(v45, v38);
    sub_2688C058C(v51, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268B350F4();
    OUTLINED_FUNCTION_4();
    (*(v66 + 8))(v58);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268A27700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v109 = v23;
  v105 = v24;
  v106 = v25;
  LODWORD(v100) = v26;
  v114 = v27;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  v108 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v103 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  v101 = v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  v102 = &v97 - v42;
  OUTLINED_FUNCTION_9();
  v43 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3();
  v110 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  v50 = &v97 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3();
  v107 = v53;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18();
  v99 = v55;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v56);
  v58 = &v97 - v57;
  v59 = sub_268B350F4();
  v104 = *(v59 - 8);
  v60 = *(v104 + 16);
  v113 = v59;
  v60(v58, v31);
  v111 = v51;
  v112 = v58;
  *&v58[*(v51 + 48)] = v29;
  v61 = qword_2802A4F30;
  v62 = v29;
  if (v61 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v63 = __swift_project_value_buffer(v43, qword_2802CDA10);
  v64 = *(v45 + 16);
  v64(v50, v63, v43);
  v65 = sub_268B37A34();
  v66 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v66))
  {
    v67 = OUTLINED_FUNCTION_14();
    *v67 = 0;
    _os_log_impl(&dword_2688BB000, v65, v66, "SetPlaybackSpeedHandleIntentStrategy#intentHandledResponse...", v67, 2u);
    OUTLINED_FUNCTION_12();
  }

  v68 = *(v45 + 8);
  v68(v50, v43);
  OUTLINED_FUNCTION_17_18();
  sub_268947F08();
  v70 = v100;
  if (v100 == 24)
  {
    v98 = v69;
  }

  else
  {

    sub_26894BC08(v70);
    OUTLINED_FUNCTION_17_18();
    sub_268947F08();
    v98 = v71;
  }

  v100 = a21;
  v64(v110, v63, v43);
  v72 = sub_268B37A34();
  v73 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v73))
  {
    v74 = OUTLINED_FUNCTION_14();
    *v74 = 0;
    _os_log_impl(&dword_2688BB000, v72, v73, "SetPlaybackSpeedHandleIntentStrategy#intentHandledResponse returning output", v74, 2u);
    OUTLINED_FUNCTION_12();
  }

  v68(v110, v43);
  __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  v75 = v99;
  sub_2688F1FA4(v112, v99, &unk_2802A56E0, &unk_268B3CDF0);

  v76 = v104;
  v77 = v102;
  v78 = v113;
  (*(v104 + 32))(v102, v75, v113);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v78);
  v82 = sub_268B34B94();
  v83 = v103;
  __swift_storeEnumTagSinglePayload(v103, 1, 1, v82);
  v84 = v101;
  sub_2688F1FA4(v77, v101, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v84, 1, v78) == 1)
  {
    sub_2688C058C(v84, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v76 + 8))(v84, v78);
  }

  v85 = v76;
  v86 = v114;
  sub_2688E2964();

  sub_2688C058C(v83, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v77, &unk_2802A57B0, &unk_268B3CE00);
  __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  sub_268948308(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  OUTLINED_FUNCTION_7_16();
  v87 = v22[31];
  v88 = v22[32];
  __swift_project_boxed_opaque_existential_1(v22 + 28, v87);
  v89 = v112;
  v90 = v107;
  sub_2688F1FA4(v112, v107, &unk_2802A56E0, &unk_268B3CDF0);
  v91 = *(v90 + *(v111 + 48));
  v92 = v108;
  sub_268A82B50(v86, v108);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  (*(v88 + 8))(v90, v91, v92, MEMORY[0x277D84F90], 1, v109, v100, v87, v88);

  sub_2688C058C(v92, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v89, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v85 + 8))(v90, v113);
  OUTLINED_FUNCTION_23();
}

void sub_268A27E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v93 = v23;
  v99 = v24;
  v96 = v25;
  v98 = v26;
  v95 = v27;
  v107 = v28;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_74();
  v103 = v35;
  OUTLINED_FUNCTION_9();
  v104 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v102 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v101 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_74();
  v106 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v97 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  v105 = &v92 - v47;
  OUTLINED_FUNCTION_9();
  v48 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  v54 = v53 - v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v92 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v61 = &v92 - v60;
  v62 = sub_268B350F4();
  v94 = *(v62 - 8);
  (*(v94 + 16))(v61, v32, v62);
  v63 = *(v55 + 48);
  v100 = v61;
  *&v61[v63] = v30;
  v64 = qword_2802A4F30;
  v65 = v30;
  if (v64 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v66 = __swift_project_value_buffer(v48, qword_2802CDA10);
  (*(v50 + 16))(v54, v66, v48);
  v67 = sub_268B37A34();
  v68 = sub_268B37ED4();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_14();
    *v69 = 0;
    _os_log_impl(&dword_2688BB000, v67, v68, "SetPlaybackSpeedHandleIntentStrategy#legacyHandledResponse...", v69, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v50 + 8))(v54, v48);
  v70 = OBJC_IVAR___SetPlaybackSpeedIntentResponse_code;
  v71 = v95;
  OUTLINED_FUNCTION_22_12(v95 + OBJC_IVAR___SetPlaybackSpeedIntentResponse_code);
  v110[0] = *(v71 + v70);
  sub_268B38404();
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_17_18();
  sub_268947F08();

  v72 = v96;
  if (v96 != 24)
  {

    sub_26894BC08(v72);
    OUTLINED_FUNCTION_25_12();
    OUTLINED_FUNCTION_17_18();
    sub_268947F08();
  }

  v73 = v100;
  v74 = v94;
  v100 = a21;
  __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  sub_2688F1FA4(v73, v59, &unk_2802A56E0, &unk_268B3CDF0);

  v75 = v105;
  (*(v74 + 32))(v105, v59, v62);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v62);
  v79 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v106, 1, 1, v79);
  v80 = v97;
  sub_2688F1FA4(v75, v97, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v80, 1, v62) == 1)
  {
    sub_2688C058C(v80, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v74 + 8))(v80, v62);
  }

  v81 = v101;
  v82 = v107;
  v83 = v106;
  sub_2688E2964();

  sub_2688C058C(v83, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v105, &unk_2802A57B0, &unk_268B3CE00);
  __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  sub_268948308(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  OUTLINED_FUNCTION_7_16();
  sub_268A82B50(v82, v81);
  v110[3] = sub_268B354F4();
  v110[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v110);
  v84 = 0;
  if (sub_2689F0948())
  {
    v84 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v85 = sub_268B38064();
    [v84 setMinimumAutoDismissalTimeInMs_];

    [v84 setPremptivelyResumeMedia_];
  }

  __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
  sub_268B34CA4();
  v87 = v102;
  v86 = v103;
  v88 = v104;
  (*(v102 + 16))(v103, v81, v104);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v88);
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  sub_268B34EF4();

  sub_2688C058C(v108, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v86, &qword_2802A57F0, &qword_268B3DDB0);
  (*(v87 + 8))(v81, v88);
  v111 = 0;
  v93(v110);
  sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v110, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_268A28684()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v36 = v5;
  v38 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v17 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v12 + 16))(v16, v17, v10);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "SetPlaybackSpeed.HandleIntentStrategy.makeFailureHandlingIntentResponse called", v20, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v12 + 8))(v16, v10);
  v21 = sub_268B36E84();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_22_12(v7 + OBJC_IVAR___SetPlaybackSpeedIntentResponse_code);
    sub_268B38404();
    OUTLINED_FUNCTION_25_12();
    sub_268947F08();
    v23 = v25;
    v24 = v26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  swift_beginAccess();
  sub_268B38404();
  v28 = sub_268B36E94();
  v30 = v29;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v28;
  *(inited + 56) = v30;
  v31 = sub_268B37B84();
  v32 = *(v1 + 56);
  v33 = swift_allocObject();
  v33[2] = v1;
  v33[3] = v38;
  v33[4] = v9;
  v33[5] = v23;
  v33[6] = v24;
  v33[7] = v36;
  v33[8] = v3;
  v34 = v32[5];
  v37 = v32[6];
  __swift_project_boxed_opaque_existential_1(v32 + 2, v34);

  v35 = v9;

  sub_2689CE860(0xD000000000000032, 0x8000000268B579F0, v31, sub_268A29C84, v33, v34, v37);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A28A0C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v106 = a7;
  v107 = a8;
  v103 = a5;
  v104 = a6;
  v105 = a4;
  v102 = a3;
  v110 = a2;
  v97 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v88 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = MEMORY[0x28223BE20](v101);
  v95 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v88 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v88 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v94 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v91 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v99 = &v88 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v88 - v26;
  MEMORY[0x28223BE20](v25);
  v92 = (&v88 - v28);
  v29 = sub_268B34E24();
  v108 = *(v29 - 8);
  v109 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v98 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v89 = &v88 - v32;
  v33 = sub_268B37A54();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v100 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v88 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v88 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v42);
  v44 = (&v88 - v43);
  sub_2688F1FA4(v97, &v88 - v43, &qword_2802A6300, &unk_268B3BD80);
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
    v50 = v89;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "SetPlaybackSpeedHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v51, 2u);
      MEMORY[0x26D6266E0](v51, -1, -1);
    }

    (*(v34 + 8))(v41, v33);
    __swift_project_boxed_opaque_existential_1(v110 + 8, v110[11]);
    (*(v108 + 104))(v50, *MEMORY[0x277D5BC00], v109);
    v52 = sub_268B350F4();
    v53 = v92;
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v52);
    v54 = *MEMORY[0x277D5B8E0];
    v55 = sub_268B34B94();
    v56 = v93;
    (*(*(v55 - 8) + 104))(v93, v54, v55);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v55);
    sub_2688F1FA4(v53, v27, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v52) == 1)
    {
      sub_2688C058C(v27, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v52 - 8) + 8))(v27, v52);
    }

    sub_2688E2964();

    sub_2688C058C(v56, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v53, &unk_2802A57B0, &unk_268B3CE00);
    (*(v108 + 8))(v50, v109);
    __swift_project_boxed_opaque_existential_1(v110 + 8, v110[11]);
    sub_2688C2ECC();
    v71 = swift_allocError();
    *v72 = -64;
    sub_26894B450();

    v73 = swift_allocError();
    *v74 = -64;
    v111[0] = v73;
    v112 = 1;
    v106(v111);

    return sub_2688C058C(v111, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v44, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v57 = __swift_project_value_buffer(v33, qword_2802CDA10);
    v58 = *(v34 + 16);
    v93 = v57;
    v92 = v58;
    v58(v39);
    v59 = sub_268B37A34();
    v60 = sub_268B37ED4();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v91;
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2688BB000, v59, v60, "SetPlaybackSpeedHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v63, 2u);
      MEMORY[0x26D6266E0](v63, -1, -1);
    }

    v89 = *(v34 + 8);
    (v89)(v39, v33);
    __swift_project_boxed_opaque_existential_1(v110 + 8, v110[11]);
    (*(v108 + 104))(v98, *MEMORY[0x277D5BC00], v109);
    v97 = v15;
    v64 = v15;
    v65 = v90;
    sub_2688F1FA4(v64, v90, &unk_2802A56E0, &unk_268B3CDF0);

    v66 = sub_268B350F4();
    v67 = *(v66 - 8);
    v68 = v99;
    (*(v67 + 32))(v99, v65, v66);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v66);
    v69 = sub_268B34B94();
    v70 = v94;
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v69);
    sub_2688F1FA4(v68, v62, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v62, 1, v66) == 1)
    {
      sub_2688C058C(v62, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v67 + 8))(v62, v66);
    }

    v76 = v98;
    v77 = v105;
    sub_2688E2964();

    sub_2688C058C(v70, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v99, &unk_2802A57B0, &unk_268B3CE00);
    (*(v108 + 8))(v76, v109);
    (v92)(v100, v93, v33);
    v78 = sub_268B37A34();
    v79 = sub_268B37ED4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_2688BB000, v78, v79, "SetPlaybackSpeedHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v80, 2u);
      MEMORY[0x26D6266E0](v80, -1, -1);
    }

    (v89)(v100, v33);
    v81 = v110[31];
    v82 = v110[32];
    __swift_project_boxed_opaque_existential_1(v110 + 28, v81);
    v83 = v97;
    v84 = v95;
    sub_2688F1FA4(v97, v95, &unk_2802A56E0, &unk_268B3CDF0);
    v85 = *(v84 + *(v101 + 48));
    v86 = v96;
    sub_268A82B50(v77, v96);
    v87 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v87);
    (*(v82 + 8))(v84, v85, v86, MEMORY[0x277D84F90], 0, v106, v107, v81, v82);

    sub_2688C058C(v86, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v83, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v67 + 8))(v84, v66);
  }
}

void *sub_268A296E4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  return v0;
}

uint64_t sub_268A29734()
{
  sub_268A296E4();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_268A2978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A29808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A29884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A29924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A299A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A29A40()
{
  if (qword_2802A4EB0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD998;

  return v1;
}

uint64_t sub_268A29A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A29AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A29B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A29BAC(uint64_t a1)
{
  result = sub_268A29BD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A29BD4()
{
  result = qword_2802A7398;
  if (!qword_2802A7398)
  {
    type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7398);
  }

  return result;
}

uint64_t sub_268A29C2C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_3Tm()
{

  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void *OUTLINED_FUNCTION_4_25(void *result)
{
  v4 = *(v2 - 176);
  v3 = *(v2 - 168);
  result[4] = v1;
  result[5] = v4;
  result[6] = *(v2 - 200);
  result[7] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_21()
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), v0);
}

uint64_t OUTLINED_FUNCTION_22_12(uint64_t a1)
{

  return swift_beginAccess();
}

id sub_268A29E54()
{
  result = [objc_allocWithZone(type metadata accessor for SeekTimeIntentHandler()) init];
  qword_2802CD9A0 = result;
  return result;
}

uint64_t sub_268A29E88()
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
  sub_268A2BB88(&unk_2802A5890, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802CD9A8 = result;
  return result;
}

uint64_t sub_268A2A0DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v72 = a2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v64 = v3;
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v63 = v5 - v4;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v68 = v7;
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v70 = v8;
  MEMORY[0x28223BE20](v9);
  v73 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v63 - v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v66 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v67 = &v63 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
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
    _os_log_impl(&dword_2688BB000, v26, v27, "SeekTimeFlowStrategy#actionForInput called", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v16 + 8);
  v29(v23, v14);
  v30 = v71;
  sub_268B35414();
  sub_26893BA8C(v13);
  v31 = type metadata accessor for MediaPlayerIntent(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v31);
  sub_2688C2E64(v13);
  if (EnumTagSinglePayload == 1)
  {
    v33 = v66;
    v25(v66, v24, v14);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "SeekTimeFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v29(v33, v14);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_0(v37 + 25, v38, v39);
    return sub_268B34ED4();
  }

  else
  {
    v66 = (v16 + 8);
    v41 = v70;
    sub_268B35414();
    v43 = v68;
    v42 = v69;
    v44 = (*(v68 + 88))(v41, v69);
    if (v44 == *MEMORY[0x277D5C128] || v44 == *MEMORY[0x277D5C150] || v44 == *MEMORY[0x277D5C160])
    {
      (*(v43 + 8))(v41, v42);
      return sub_268B34EC4();
    }

    else
    {
      v25(v67, v24, v14);
      v47 = v63;
      v48 = v64;
      v49 = v65;
      (*(v64 + 16))(v63, v30, v65);
      v50 = sub_268B37A34();
      v51 = sub_268B37EE4();
      if (os_log_type_enabled(v50, v51))
      {
        v53 = v47;
        v54 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v74 = v71;
        *v54 = 136315138;
        sub_268B35414();
        v55 = sub_268B37C24();
        v57 = v56;
        (*(v48 + 8))(v53, v49);
        v58 = sub_26892CDB8(v55, v57, &v74);
        v42 = v69;

        *(v54 + 4) = v58;
        _os_log_impl(&dword_2688BB000, v50, v51, "SeekTimeFlowStrategy#actionForInput received no valid parse %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        v43 = v68;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v48 + 8))(v47, v49);
      }

      v29(v67, v14);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_3_34();
      OUTLINED_FUNCTION_16_0(v60 | v59, v61, v62);
      sub_268B34ED4();
      return (*(v43 + 8))(v70, v42);
    }
  }
}

uint64_t sub_268A2A760(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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
  if (qword_2802A4EC0 != -1)
  {
    swift_once();
  }

  v34 = qword_2802CD9A8;
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
  aBlock[4] = sub_268A2BA7C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_8;
  v30 = _Block_copy(aBlock);
  v31 = v27;

  sub_268B37AE4();
  v43 = MEMORY[0x277D84F90];
  sub_268A2BB88(&unk_2802A7010, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v32 = v42;
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v30);
  _Block_release(v30);
  (*(v41 + 8))(v9, v32);
  (*(v39 + 8))(v14, v40);
}

void sub_268A2AB28(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, void *a5)
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
    _os_log_impl(&dword_2688BB000, v21, v22, "SeekTimeFlowStrategy#makeIntentFromParse called", v27, 2u);
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
      _os_log_impl(&dword_2688BB000, v40, v41, "SeekTimeFlowStrategy#makeIntentFromParse received unexpected parse: %s", v42, 0xCu);
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
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000032, 0x8000000268B56D00, 0x656D69546B656553, 0xE800000000000000, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v49 = swift_allocError();
    *v50 = 51;
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
      v48 = [objc_allocWithZone(type metadata accessor for SeekTimeIntent()) init];
    }

    v51 = v70;
    sub_268A52448(v13);
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

    sub_268AD35F4(v58, &off_287953B48, (v52 + 7), sub_268A2BB7C, v56, v53, v54);

    sub_2688C2F6C(v55);
  }
}

uint64_t sub_268A2B1C0(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v10, v11, "SeekTimeFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_268A2B3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A2B494()
{
  if (qword_2802A4EB8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9A0;

  return v1;
}

uint64_t sub_268A2B4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A2B684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A2B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A2B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A2B914(uint64_t a1, uint64_t a2)
{
  result = sub_268A2BB88(&qword_2802A73A8, a2, type metadata accessor for SeekTimeFlowStrategy, &unk_268B44A40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A2B9B4()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_268A2BA7C()
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

  sub_268A2AB28(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A2BB3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A2BB88(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_268A2BBE4()
{
  if (qword_2802A4EB8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9A0;
  qword_2802CD9B0 = qword_2802CD9A0;

  return v1;
}

void sub_268A2BC48()
{
  OUTLINED_FUNCTION_26();
  v132 = v0;
  v126 = v1;
  v127 = v2;
  v125 = v3;
  v134 = v4;
  v128 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_3();
  v131 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78();
  v121 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_3();
  v122 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v130 = &v117 - v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v118 = &v117 - v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_78();
  v120 = v17;
  OUTLINED_FUNCTION_9();
  v124 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v133 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v129 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_78();
  v119 = v22;
  OUTLINED_FUNCTION_9();
  v23 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v117 = &v117 - v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  v33 = &v117 - v32;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v34 = __swift_project_value_buffer(v23, qword_2802CDA10);
  v123 = *(v25 + 16);
  v123(v33, v34, v23);
  v35 = sub_268B37A34();
  v36 = sub_268B37ED4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_14();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "SeekTimeHandleIntentStrategy.makeIntentHandledResponse()", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v25 + 8);
  v38(v33, v23);
  v39 = sub_268B18100(v134);
  if (v39)
  {
    v40 = v39;
    if (sub_2688EFD0C())
    {
      v41 = swift_allocObject();
      v131 = v41;
      *(v41 + 16) = 0;
      v42 = sub_268AAC34C(v132 + 2, v40, (v41 + 16));
      v43 = [v134 playheadPosition];
      if (v43)
      {
        v44 = v43;
        sub_268B37E64();
        if ((v45 & 1) == 0)
        {
          sub_268AADEE0(v136);
          memcpy(v137, &v136[1], 0x51uLL);
          sub_2688C058C(v137, &qword_2802A5C88, qword_268B418C0);
          LODWORD(v136[1]) = 0;
          memset(&v136[2], 0, 72);
          LOBYTE(v136[11]) = 1;
          sub_268AE3B98();

          v83 = v132;
          v84 = *__swift_project_boxed_opaque_existential_1(v132 + 8, v132[11]);
          if (v84)
          {
            v85 = OUTLINED_FUNCTION_28_1();
            [v84 BOOLForKey_];
          }

          memcpy(v138, v136, 0x68uLL);
          OUTLINED_FUNCTION_20_14();
          v86 = swift_allocObject();
          v87 = v134;
          v86[2] = v83;
          v86[3] = v87;
          v89 = v125;
          v88 = v126;
          v90 = v128;
          v86[4] = v125;
          v86[5] = v90;
          v86[6] = v42;
          v86[7] = v88;
          v91 = v131;
          v86[8] = v127;
          v86[9] = v91;

          v92 = v87;
          v93 = v89;

          sub_268AB1718(v138, sub_268A30A3C, v86, v94, v95, v96, v97, v98, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135[0], v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7], v135[8], v135[9], v135[10], v135[11], v135[12], v135[13], v136[0], v136[1], v136[2], v136[3], v136[4], v136[5]);

          memcpy(v135, v136, 0x68uLL);
          sub_268A30A90(v135);
          goto LABEL_31;
        }
      }

      v46 = v117;
      v123(v117, v34, v23);
      v47 = sub_268B37A34();
      v48 = sub_268B37EE4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_14();
        *v49 = 0;
        _os_log_impl(&dword_2688BB000, v47, v48, "Did not receive valid playheadPosition", v49, 2u);
        OUTLINED_FUNCTION_12();
      }

      v38(v46, v23);
      v130 = sub_2688C2ECC();
      v50 = swift_allocError();
      *v51 = 53;
      v52 = OUTLINED_FUNCTION_13_12(v50);
      v53(v52);
      sub_2688C058C(v138, &unk_2802A57C0, &qword_268B3BE00);
      v54 = sub_268B36E84();
      if (!v55)
      {
        sub_268947F08();
      }

      v129 = v54;
      v99 = v124;
      OUTLINED_FUNCTION_21_11();
      (*(v133 + 104))(v119, *MEMORY[0x277D5BC00], v99);
      v100 = sub_268B350F4();
      v101 = v120;
      v102 = OUTLINED_FUNCTION_19_15();
      __swift_storeEnumTagSinglePayload(v102, v103, 1, v100);
      v104 = *MEMORY[0x277D5B908];
      v105 = sub_268B34B94();
      OUTLINED_FUNCTION_4();
      v107 = v121;
      (*(v106 + 104))(v121, v104, v105);
      __swift_storeEnumTagSinglePayload(v107, 0, 1, v105);
      v108 = v101;
      v109 = v118;
      sub_2688F1FA4(v108, v118, &unk_2802A57B0, &unk_268B3CE00);
      v110 = OUTLINED_FUNCTION_19_15();
      if (__swift_getEnumTagSinglePayload(v110, v111, v100) == 1)
      {
        sub_2688C058C(v109, &unk_2802A57B0, &unk_268B3CE00);
      }

      else
      {
        sub_268B350B4();
        (*(*(v100 - 8) + 8))(v109, v100);
      }

      v112 = v121;
      sub_2688E3D1C();

      sub_2688C058C(v112, &unk_2802A62B0, &unk_268B3BDF0);
      sub_2688C058C(v120, &unk_2802A57B0, &unk_268B3CE00);
      v113 = OUTLINED_FUNCTION_15_18();
      v114(v113);
      OUTLINED_FUNCTION_21_11();
      v115 = swift_allocError();
      *v116 = 53;
      OUTLINED_FUNCTION_8_18();
      sub_26894B450();

LABEL_31:

      goto LABEL_32;
    }
  }

  v123(v29, v34, v23);
  v56 = sub_268B37A34();
  v57 = sub_268B37EE4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_14();
    *v58 = 0;
    _os_log_impl(&dword_2688BB000, v56, v57, "No device found in intent", v58, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38(v29, v23);
  v59 = sub_268B36E84();
  if (!v60)
  {
    sub_268947F08();
  }

  v125 = v59;
  v61 = v124;
  OUTLINED_FUNCTION_21_11();
  (*(v133 + 104))(v129, *MEMORY[0x277D5BC00], v61);
  v62 = sub_268B350F4();
  v63 = v130;
  v64 = OUTLINED_FUNCTION_19_15();
  __swift_storeEnumTagSinglePayload(v64, v65, 1, v62);
  v66 = *MEMORY[0x277D5B908];
  v67 = sub_268B34B94();
  OUTLINED_FUNCTION_4();
  v69 = v131;
  (*(v68 + 104))(v131, v66, v67);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v67);
  v70 = v63;
  v71 = v122;
  sub_2688F1FA4(v70, v122, &unk_2802A57B0, &unk_268B3CE00);
  v72 = OUTLINED_FUNCTION_19_15();
  if (__swift_getEnumTagSinglePayload(v72, v73, v62) == 1)
  {
    sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(*(v62 - 8) + 8))(v71, v62);
  }

  v74 = v131;
  sub_2688E3D1C();

  sub_2688C058C(v74, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v130, &unk_2802A57B0, &unk_268B3CE00);
  v75 = OUTLINED_FUNCTION_15_18();
  v76(v75);
  OUTLINED_FUNCTION_21_11();
  sub_2688C2ECC();
  v77 = OUTLINED_FUNCTION_26_1();
  *v78 = 52;
  OUTLINED_FUNCTION_8_18();
  sub_26894B450();

  v79 = OUTLINED_FUNCTION_26_1();
  *v80 = 52;
  v81 = OUTLINED_FUNCTION_13_12(v79);
  v82(v81);
  sub_2688C058C(v138, &unk_2802A57C0, &qword_268B3BE00);
LABEL_32:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A2C7E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8, uint64_t a9)
{
  v55 = a8;
  v56 = a7;
  v47 = a6;
  v54 = a5;
  v49 = a4;
  v57 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v47 - v17;
  v53 = sub_268B34E24();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v25);
  v27 = (&v47 - v26);
  sub_2688F1FA4(a1, &v47 - v26, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    v29 = sub_268B36E84();
    if (v30)
    {
      v49 = v29;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v49 = v36;
    }

    v37 = v48;
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    (*(v51 + 104))(v50, *MEMORY[0x277D5BC00], v53);
    v38 = sub_268B350F4();
    v39 = v52;
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v38);
    v40 = *MEMORY[0x277D5B8E0];
    v41 = sub_268B34B94();
    (*(*(v41 - 8) + 104))(v37, v40, v41);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v41);
    sub_2688F1FA4(v39, v16, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v16, 1, v38) == 1)
    {
      sub_2688C058C(v16, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v38 - 8) + 8))(v16, v38);
    }

    v42 = v50;
    sub_2688E3D1C();

    sub_2688C058C(v37, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v52, &unk_2802A57B0, &unk_268B3CE00);
    (*(v51 + 8))(v42, v53);
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    sub_2688C2ECC();
    v43 = swift_allocError();
    *v44 = 55;
    sub_26894B450();

    v58[0] = v28;
    v59 = 1;
    v45 = v28;
    v56(v58);

    return sub_2688C058C(v58, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v31 = v49;
    sub_2689186C8(v27, v24);
    __swift_project_boxed_opaque_existential_1(a2 + 23, a2[26]);
    v32 = sub_268B36FA4();
    sub_2688F1FA4(v24, v22, &unk_2802A56E0, &unk_268B3CDF0);
    v33 = *&v22[*(v19 + 48)];
    if (v32)
    {
      sub_268A2CE88();
    }

    else
    {
      swift_beginAccess();
      sub_268A2DAEC(v22, v33, v57, v31, v54, *(a9 + 16), v47, v56, v55, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
    }

    sub_2688C058C(v24, &unk_2802A56E0, &unk_268B3CDF0);
    v34 = sub_268B350F4();
    return (*(*(v34 - 8) + 8))(v22, v34);
  }
}