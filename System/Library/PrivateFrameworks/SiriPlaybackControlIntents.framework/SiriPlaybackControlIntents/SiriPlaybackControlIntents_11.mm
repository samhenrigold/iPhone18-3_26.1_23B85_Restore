unint64_t sub_2689BF09C()
{
  result = qword_2802A6C00;
  if (!qword_2802A6C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A6C00);
  }

  return result;
}

uint64_t sub_2689BF0E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2689BF150()
{
  result = qword_2802A6C08;
  if (!qword_2802A6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C08);
  }

  return result;
}

unint64_t sub_2689BF1A4()
{
  result = qword_2802A6C20;
  if (!qword_2802A6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t a1)
{
  v3[14] = a1;
  v3[15] = *(v2 + 16);
  v3[16] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

void OUTLINED_FUNCTION_22_7(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return sub_2689BD904();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_35_7()
{

  return swift_task_alloc();
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenAccessoryItemAppIntentForLyrics()(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v4 = OUTLINED_FUNCTION_0_25(v3);

  return v5(v4);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeCloseAccessoryItemAppIntentForLyrics()(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v4 = OUTLINED_FUNCTION_0_25(v3);

  return v5(v4);
}

id sub_2689BF6D0()
{
  if (qword_2802A4D60 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD908;
  qword_2802CD950 = qword_2802CD908;

  return v1;
}

void sub_2689BF734()
{
  OUTLINED_FUNCTION_26();
  v47 = v0;
  v2 = v1;
  v4 = v3;
  v43 = v6;
  v44 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v48 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v17 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v45 = *(v11 + 16);
  v46 = v17;
  v45(v16);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    v42 = v8;
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "ResumeMediaHandleIntentStrategy.makeIntentHandledResponse()", v20, 2u);
    v8 = v42;
    OUTLINED_FUNCTION_12();
  }

  v21 = *(v11 + 8);
  v21(v16, v9);
  v22 = sub_268B18100(v8);
  if (v22)
  {
    v23 = v22;
    if (sub_2688EFD0C())
    {
      v24 = v8;
      v51 = 0;
      v25 = v47;
      v48 = sub_268AAC34C(v47 + 2, v23, &v51);
      *v50 = 0;
      v50[2] = 0;
      *&v50[8] = 0;
      *&v50[16] = 0;
      *&v50[24] = 1;
      memset(&v50[32], 0, 59);
      memcpy(v52, &v50[8], 0x51uLL);
      sub_2688C058C(v52, &qword_2802A5C88, qword_268B418C0);
      *&v50[8] = 0;
      memset(&v50[16], 0, 72);
      v50[88] = 1;
      sub_268AE35C0(v23);

      v26 = *__swift_project_boxed_opaque_existential_1(v25 + 8, v25[11]);
      if (v26 && (v27 = OUTLINED_FUNCTION_28_1(), v28 = [v26 BOOLForKey_], v27, (v28 & 1) != 0))
      {
        v29 = 1;
      }

      else
      {
        v29 = v51;
      }

      memcpy(v53, v50, 0x5BuLL);
      v30 = swift_allocObject();
      *(v30 + 16) = v25;
      *(v30 + 24) = v24;
      v31 = v43;
      v32 = v44;
      *(v30 + 32) = v43;
      *(v30 + 40) = v32;
      *(v30 + 48) = v48;
      *(v30 + 56) = v4;
      *(v30 + 64) = v2;
      *(v30 + 72) = v29;

      v33 = v24;
      v34 = v31;

      sub_268AB01E0(v53, 1, sub_2689C3F38, v30);

      memcpy(v49, v50, 0x5BuLL);
      sub_2689C3F70(v49);
      goto LABEL_16;
    }
  }

  (v45)(v48, v46, v9);
  v35 = sub_268B37A34();
  v36 = sub_268B37EE4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_14();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "No device found in intent", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v21(v48, v9);
  __swift_project_boxed_opaque_existential_1(v47 + 13, v47[16]);
  sub_2688C2ECC();
  v38 = OUTLINED_FUNCTION_26_1();
  *v39 = 46;
  sub_26894B450();

  v40 = OUTLINED_FUNCTION_26_1();
  *v41 = 46;
  v53[0] = v40;
  LOBYTE(v53[5]) = 1;
  v4(v53);
  sub_2688C058C(v53, &unk_2802A57C0, &qword_268B3BE00);
LABEL_16:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689BFBE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8, char a9)
{
  v64 = a8;
  v65 = a7;
  v55 = a6;
  v62 = a3;
  v63 = a5;
  v57 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v55 - v17;
  v61 = sub_268B34E24();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v25);
  v27 = (&v55 - v26);
  sub_2688F1FA4(a1, &v55 - v26, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    v29 = sub_268B36E84();
    if (v30)
    {
      v31 = v30;
      v57 = v29;
      v32 = a2;
      v33 = v62;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      v33 = v62;
      sub_268947F08();
      v57 = v39;
      v31 = v40;

      v32 = a2;
    }

    v41 = __swift_project_boxed_opaque_existential_1(v32 + 13, v32[16]);
    (*(v59 + 104))(v58, *MEMORY[0x277D5BC00], v61);
    v42 = sub_268B350F4();
    v43 = v60;
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v42);
    v44 = sub_268B34B94();
    v45 = v56;
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v44);
    v46 = *v41;
    sub_2688F1FA4(v43, v16, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v16, 1, v42) == 1)
    {
      sub_2688C058C(v16, &unk_2802A57B0, &unk_268B3CE00);
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v47 = sub_268B350B4();
      v48 = v49;
      (*(*(v42 - 8) + 8))(v16, v42);
    }

    v50 = v58;
    sub_2688E2390(v63, v58, v33, v47, v48, v57, v31, v45, v46);

    sub_2688C058C(v45, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v60, &unk_2802A57B0, &unk_268B3CE00);
    (*(v59 + 8))(v50, v61);
    __swift_project_boxed_opaque_existential_1(v32 + 13, v32[16]);
    sub_2688C2ECC();
    v51 = swift_allocError();
    *v52 = 48;
    sub_26894B450();

    v66[0] = v28;
    v67 = 1;
    v53 = v28;
    v65(v66);

    return sub_2688C058C(v66, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v34 = v57;
    sub_2689186C8(v27, v24);
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    v35 = sub_268B36FA4();
    sub_2688F1FA4(v24, v22, &unk_2802A56E0, &unk_268B3CDF0);
    v36 = *&v22[*(v19 + 48)];
    if (v35)
    {
      sub_2689C0244();
    }

    else
    {
      sub_2689C0EB8(v22, v36, v62, v34, v63, a9 & 1, v55, v65, v64, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    }

    sub_2688C058C(v24, &unk_2802A56E0, &unk_268B3CDF0);
    v37 = sub_268B350F4();
    return (*(*(v37 - 8) + 8))(v22, v37);
  }
}

void sub_2689C0244()
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
  v29 = MEMORY[0x28223BE20](v28);
  v80 = &v62 - v30;
  MEMORY[0x28223BE20](v29);
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
    _os_log_impl(&dword_2688BB000, v37, v38, "ResumeMediaHandleIntentStrategy#intentHandledResponse...", v39, 2u);
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
  v57 = v1 + 184;
  v58 = v80;
  v59 = v68;
  sub_268A83648(v80, v68, v64, v65, HIDWORD(v63), v77, v46, v57, v60, sub_2689C3E24, v53, v67, v66, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);

  (*(v78 + 8))(v46, v79);
  sub_2688C058C(v50, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v71 + 8))(v58, v72);
  __swift_destroy_boxed_opaque_existential_0Tm(v81);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v64 = a7;
  v65 = a6;
  v61 = a4;
  v70 = a2;
  v71 = a3;
  v63 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v54 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v56);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = sub_268B34E24();
  v67 = *(v18 - 8);
  v68 = v18;
  MEMORY[0x28223BE20](v18);
  v66 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v60 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - v24;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v58 = *(v21 + 16);
  v59 = v26;
  v58(v25);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v62 = v11;
    v30 = a5;
    v31 = v21;
    v32 = v29;
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "ResumeMediaHandleIntentStrategy#intentHandledResponse output has been created.", v29, 2u);
    v33 = v32;
    v21 = v31;
    a5 = v30;
    v11 = v62;
    MEMORY[0x26D6266E0](v33, -1, -1);
  }

  v34 = *(v21 + 8);
  v62 = (v21 + 8);
  v57 = v34;
  v34(v25, v20);
  sub_268947F08();
  v55 = v35;
  v37 = v36;
  v38 = __swift_project_boxed_opaque_existential_1((v71 + 104), *(v71 + 128));
  (*(v67 + 104))(v66, *MEMORY[0x277D5BC10], v68);
  sub_2688F1FA4(a5, v11, &unk_2802A56E0, &unk_268B3CDF0);

  v39 = sub_268B350F4();
  v40 = *(v39 - 8);
  (*(v40 + 32))(v17, v11, v39);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v39);
  v41 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v41);
  v42 = *v38;
  sub_2688F1FA4(v17, v15, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v15, 1, v39) == 1)
  {
    sub_2688C058C(v15, &unk_2802A57B0, &unk_268B3CE00);
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v43 = sub_268B350B4();
    v44 = v45;
    (*(v40 + 8))(v15, v39);
  }

  v53 = v42;
  v46 = v66;
  v47 = v69;
  sub_2688E2390(v61, v66, v70, v43, v44, v55, v37, v69, v53);

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
  (*(v67 + 8))(v46, v68);
  __swift_project_boxed_opaque_existential_1((v71 + 104), *(v71 + 128));
  sub_26894B450();
  v48 = v60;
  (v58)(v60, v59, v20);
  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2688BB000, v49, v50, "ResumeMediaHandleIntentStrategy#intentHandledResponse returning output", v51, 2u);
    MEMORY[0x26D6266E0](v51, -1, -1);
  }

  v57(v48, v20);
  return v65(v63);
}

uint64_t sub_2689C1304(void *a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v98 = a8;
  v99 = a7;
  v95 = a6;
  v97 = a5;
  v104 = a3;
  LODWORD(v94) = a2;
  v100 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v87 - v12;
  v93 = sub_268B35044();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v96 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v87 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v87 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v88 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v89 = &v87 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v87 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v87 - v32;
  v34 = sub_268B34E24();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v87 - v40;
  v102 = v39;
  v103 = a4;
  v101 = v35;
  if (v94)
  {
    v42 = v95;
    v43 = sub_268B36E84();
    if (v44)
    {
      v45 = v43;
      v46 = v44;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v45 = v66;
      v46 = v67;
    }

    v69 = v101;
    v68 = v102;
    v70 = v88;
    v71 = __swift_project_boxed_opaque_existential_1(v103 + 13, v103[16]);
    (*(v69 + 104))(v38, *MEMORY[0x277D5BC00], v68);
    sub_2688F1FA4(v42, v21, &unk_2802A56E0, &unk_268B3CDF0);

    v72 = sub_268B350F4();
    v73 = *(v72 - 8);
    v74 = v89;
    (*(v73 + 32))(v89, v21, v72);
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v72);
    v75 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v75);
    v76 = *v71;
    sub_2688F1FA4(v74, v70, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v70, 1, v72) == 1)
    {
      sub_2688C058C(v70, &unk_2802A57B0, &unk_268B3CE00);
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v77 = sub_268B350B4();
      v78 = v79;
      (*(v73 + 8))(v70, v72);
    }

    v80 = v77;
    v81 = v96;
    sub_2688E2390(v97, v38, v104, v80, v78, v45, v46, v96, v76);

    sub_2688C058C(v81, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v74, &unk_2802A57B0, &unk_268B3CE00);
    (*(v101 + 8))(v38, v102);
    __swift_project_boxed_opaque_existential_1(v103 + 13, v103[16]);
    sub_2688C2ECC();
    v82 = swift_allocError();
    *v83 = 47;
    sub_26894B450();

    v107[0] = v100;
    v110 = 1;
    v84 = v100;
  }

  else
  {
    v96 = a9;
    sub_268947F08();
    v89 = v47;
    v94 = v48;
    v49 = __swift_project_boxed_opaque_existential_1(a4 + 13, a4[16]);
    (*(v35 + 104))(v41, *MEMORY[0x277D5BC10], v34);
    sub_2688F1FA4(v95, v23, &unk_2802A56E0, &unk_268B3CDF0);

    v50 = sub_268B350F4();
    v51 = *(v50 - 8);
    (*(v51 + 32))(v33, v23, v50);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v50);
    v52 = sub_268B34B94();
    v53 = v87;
    __swift_storeEnumTagSinglePayload(v87, 1, 1, v52);
    v54 = *v49;
    sub_2688F1FA4(v33, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v50) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v55 = sub_268B350B4();
      v56 = v57;
      (*(v51 + 8))(v31, v50);
    }

    v86 = v54;
    v58 = v104;
    sub_2688E2390(v97, v41, v104, v55, v56, v89, v94, v53, v86);

    sub_2688C058C(v53, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v33, &unk_2802A57B0, &unk_268B3CE00);
    (*(v101 + 8))(v41, v102);
    v59 = v103;
    __swift_project_boxed_opaque_existential_1(v103 + 13, v103[16]);
    sub_26894B450();
    __swift_project_boxed_opaque_existential_1(v59 + 13, v59[16]);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v107[0] = v100;

    sub_268948494(v107);
    sub_2688C058C(v107, &byte_2802A6450, &byte_268B3BE10);
    v60 = v90;
    sub_268A82B50(v58, v90);
    v108 = sub_268B354F4();
    v109 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v107);
    v61 = 0;
    if (sub_2689F0948())
    {
      v61 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688C063C();
      v62 = sub_268B38064();
      [v61 setMinimumAutoDismissalTimeInMs_];

      [v61 setPremptivelyResumeMedia_];
    }

    __swift_project_boxed_opaque_existential_1(v59 + 2, v59[5]);
    sub_268B34CA4();
    v63 = v91;
    v64 = v92;
    v65 = v93;
    (*(v91 + 16))(v92, v60, v93);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v65);
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    sub_268B34EF4();

    sub_2688C058C(v105, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v64, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v63 + 8))(v60, v65);
    v110 = 0;
  }

  v99(v107);
  return sub_2688C058C(v107, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_2689C1E84()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v100 = v2;
  v99 = v3;
  v5 = v4;
  v103 = v6;
  v108 = v7;
  v94 = sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v93 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v92 = v11 - v10;
  v12 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v89 - v22;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v96 = v18;
  v24 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v25 = *(v14 + 16);
  v105 = v24;
  v106 = v14 + 16;
  v104 = v25;
  v25(v23);
  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();
  v28 = os_log_type_enabled(v26, v27);
  v101 = v1;
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_14();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse()", v29, 2u);
    OUTLINED_FUNCTION_12();
  }

  v107 = *(v14 + 8);
  v107(v23, v12);
  v30 = sub_268B36E84();
  v102 = v14 + 8;
  if (v31)
  {
    v97 = v31;
    v98 = v30;
  }

  else
  {
    v32 = OBJC_IVAR___ResumeMediaIntentResponse_code;
    swift_beginAccess();
    v109[1] = *(v5 + v32);
    sub_268B38404();
    sub_268947F08();
    v98 = v33;
    v97 = v34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v36 = OBJC_IVAR___ResumeMediaIntentResponse_code;
  swift_beginAccess();
  v109[0] = *(v5 + v36);
  sub_268B38404();
  v37 = sub_268B36E94();
  v39 = v38;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v37;
  *(inited + 56) = v39;
  v40 = sub_268B37B84();
  sub_268B36754();
  v41 = sub_268B36734();
  v95 = v40;
  if (!v41)
  {
    v41 = sub_268B36744();
  }

  v42 = v41;
  v43 = v21;
  OUTLINED_FUNCTION_8_13();
  v44();

  v45 = sub_268B37A34();
  v46 = sub_268B37ED4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v91 = v12;
    v48 = v47;
    v49 = swift_slowAlloc();
    v109[0] = v49;
    *v48 = 136315138;
    sub_268B36714();
    v50 = v92;
    sub_268B36B14();

    v51 = sub_268B36784();
    v90 = v43;
    v53 = v52;
    (*(v93 + 8))(v50, v94);
    v54 = sub_26892CDB8(v51, v53, v109);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_2688BB000, v45, v46, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    OUTLINED_FUNCTION_12();
    v12 = v91;
    OUTLINED_FUNCTION_12();

    v55 = v90;
  }

  else
  {

    v55 = v21;
  }

  v107(v55, v12);
  v56 = v100;
  v57 = v103;
  v58 = swift_allocObject();
  v59 = v101;
  v58[2] = v42;
  v58[3] = v59;
  v58[4] = v108;
  v58[5] = v57;
  v60 = v97;
  v58[6] = v98;
  v58[7] = v60;
  v58[8] = v99;
  v58[9] = v56;
  if (*(v5 + v36) != 102 || qword_2802A6C28 >= 2)
  {
    qword_2802A6C28 = 0;
  }

  v62 = v57;

  v63 = sub_268B18100(v62);
  v64 = sub_268A90E50(v63, v5);

  if (v64)
  {
    v65 = *(v59 + 56);
    v66 = "#TimedOutForCanBeNowPlaying";
    v67 = v65[5];
    v68 = v65[6];
    __swift_project_boxed_opaque_existential_1(v65 + 2, v67);
    OUTLINED_FUNCTION_0_26();
    v71 = v70 + 21;
LABEL_20:
    sub_2689CE860(v71, v66 | 0x8000000000000000, v95, v69, v58, v67, v68);
    goto LABEL_21;
  }

  v77 = *(v5 + v36);
  if (v77 != 102)
  {
    if (v77 == 101)
    {
      v80 = *(v59 + 56);
      v66 = "PlaybackControls#ResumeFailed";
      v67 = v80[5];
      v68 = v80[6];
      __swift_project_boxed_opaque_existential_1(v80 + 2, v67);
      OUTLINED_FUNCTION_0_26();
      v71 = v81 + 16;
    }

    else
    {
      if (v77 != 100)
      {
        type metadata accessor for ErrorFilingHelper();
        static ErrorFilingHelper.setupAdditionalTTRInfo(intentResponse:params:)();
        v83 = v82;

        v84 = *(v59 + 56);
        v85 = v84[5];
        v86 = v84[6];
        __swift_project_boxed_opaque_existential_1(v84 + 2, v85);
        OUTLINED_FUNCTION_0_26();
        sub_2689CE860(v87 + 13, 0x8000000268B59520, v83, v88, v58, v85, v86);
        goto LABEL_21;
      }

      v78 = *(v59 + 56);
      v66 = "#NoContentToPlay";
      v67 = v78[5];
      v68 = v78[6];
      __swift_project_boxed_opaque_existential_1(v78 + 2, v67);
      OUTLINED_FUNCTION_0_26();
      v71 = v79 + 27;
    }

    goto LABEL_20;
  }

  if (__OFADD__(qword_2802A6C28, 1))
  {
    __break(1u);
    return;
  }

  ++qword_2802A6C28;
  sub_268AAEAE0();
LABEL_21:
  v72 = v96;

  OUTLINED_FUNCTION_8_13();
  v73();
  v74 = sub_268B37A34();
  v75 = sub_268B37ED4();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 134217984;
    *(v76 + 4) = qword_2802A6C28;
    _os_log_impl(&dword_2688BB000, v74, v75, "ResumeMediaHandleIntentStrategy#makeFailureHandlingIntentResponse no network counter: %ld", v76, 0xCu);
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v107(v72, v12);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C27DC(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v123 = a8;
  v121 = a6;
  v122 = a7;
  v119 = a3;
  v120 = a5;
  v124 = a4;
  v126 = a2;
  v113 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v103 - v9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = MEMORY[0x28223BE20](v117);
  v111 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v105 = &v103 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v103 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v109 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v103 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v106 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v116 = &v103 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  MEMORY[0x28223BE20](v25);
  v107 = &v103 - v28;
  v118 = sub_268B34E24();
  v125 = *(v118 - 8);
  v29 = MEMORY[0x28223BE20](v118);
  v115 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v114 = &v103 - v31;
  v32 = sub_268B37A54();
  v129 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v110 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v103 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v103 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v40);
  v42 = (&v103 - v41);
  sub_2688F1FA4(v113, &v103 - v41, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v42;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v32, qword_2802CDA10);
    (*(v129 + 16))(v39, v44, v32);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v118;
    v49 = v107;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v50, 2u);
      MEMORY[0x26D6266E0](v50, -1, -1);
    }

    (*(v129 + 8))(v39, v32);
    v51 = __swift_project_boxed_opaque_existential_1(v126 + 13, v126[16]);
    (*(v125 + 104))(v114, *MEMORY[0x277D5BC00], v48);
    v52 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v52);
    v53 = *MEMORY[0x277D5B8E0];
    v54 = sub_268B34B94();
    v55 = v108;
    (*(*(v54 - 8) + 104))(v108, v53, v54);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
    v56 = *v51;
    sub_2688F1FA4(v49, v27, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v52) == 1)
    {
      sub_2688C058C(v27, &unk_2802A57B0, &unk_268B3CE00);
      v57 = 0;
      v58 = 0;
    }

    else
    {
      v57 = sub_268B350B4();
      v58 = v78;
      (*(*(v52 - 8) + 8))(v27, v52);
    }

    v101 = v56;
    v79 = v114;
    sub_2688E2390(v119, v114, v124, v57, v58, v120, v121, v55, v101);

    sub_2688C058C(v55, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v125 + 8))(v79, v48);
    __swift_project_boxed_opaque_existential_1(v126 + 13, v126[16]);
    sub_2688C2ECC();
    v80 = swift_allocError();
    *v81 = -91;
    sub_26894B450();

    v82 = swift_allocError();
    *v83 = -91;
    v127[0] = v82;
    v128 = 1;
    v122(v127);

    return sub_2688C058C(v127, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v42, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v32, qword_2802CDA10);
    v60 = *(v129 + 16);
    v108 = v59;
    v107 = v60;
    (v60)(v37);
    v61 = sub_268B37A34();
    v62 = sub_268B37ED4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2688BB000, v61, v62, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v63, 2u);
      MEMORY[0x26D6266E0](v63, -1, -1);
    }

    v64 = *(v129 + 8);
    v129 += 8;
    v104 = v64;
    v64(v37, v32);
    v65 = __swift_project_boxed_opaque_existential_1(v126 + 13, v126[16]);
    v66 = v118;
    (*(v125 + 104))(v115, *MEMORY[0x277D5BC00], v118);
    v114 = v15;
    v67 = v105;
    sub_2688F1FA4(v15, v105, &unk_2802A56E0, &unk_268B3CDF0);

    v68 = sub_268B350F4();
    v69 = *(v68 - 8);
    v70 = v116;
    (*(v69 + 32))(v116, v67, v68);
    __swift_storeEnumTagSinglePayload(v70, 0, 1, v68);
    v71 = sub_268B34B94();
    v72 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v71);
    v73 = *v65;
    v74 = v106;
    sub_2688F1FA4(v70, v106, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, 1, v68);
    v113 = v69;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v74, &unk_2802A57B0, &unk_268B3CE00);
      v76 = 0;
      v77 = 0;
    }

    else
    {
      v105 = v73;
      v85 = v74;
      v76 = sub_268B350B4();
      v77 = v86;
      v73 = v105;
      (*(v69 + 8))(v85, v68);
    }

    v102 = v73;
    v87 = v115;
    sub_2688E2390(v119, v115, v124, v76, v77, v120, v121, v72, v102);

    sub_2688C058C(v72, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v116, &unk_2802A57B0, &unk_268B3CE00);
    (*(v125 + 8))(v87, v66);
    __swift_project_boxed_opaque_existential_1(v126 + 13, v126[16]);
    sub_2688C2ECC();
    v88 = swift_allocError();
    *v89 = 49;
    sub_26894B450();

    v90 = v110;
    (v107)(v110, v108, v32);
    v91 = sub_268B37A34();
    v92 = sub_268B37ED4();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_2688BB000, v91, v92, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v93, 2u);
      MEMORY[0x26D6266E0](v93, -1, -1);
    }

    v104(v90, v32);
    v94 = v126[36];
    v95 = v126[37];
    __swift_project_boxed_opaque_existential_1(v126 + 33, v94);
    v96 = v114;
    v97 = v111;
    sub_2688F1FA4(v114, v111, &unk_2802A56E0, &unk_268B3CDF0);
    v98 = *(v97 + *(v117 + 48));
    v99 = v112;
    sub_268A82B50(v124, v112);
    v100 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v100);
    (*(v95 + 40))(v97, v98, v99, v122, v123, v94, v95);

    sub_2688C058C(v99, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v96, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v113 + 8))(v97, v68);
  }
}

uint64_t sub_2689C35A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C373C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C37B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_2689C3858()
{
  if (qword_2802A4E00 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD950;

  return v1;
}

uint64_t sub_2689C38B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689C3904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689C3958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_2689C39C4(uint64_t a1)
{
  result = sub_2689C39EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689C39EC()
{
  result = qword_2802A6C30;
  if (!qword_2802A6C30)
  {
    type metadata accessor for ResumeMediaHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C30);
  }

  return result;
}

uint64_t sub_2689C3A44()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2689C3B00()
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

uint64_t sub_2689C3C38(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2689C1304(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2689C3D14()
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

uint64_t sub_2689C3E24(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_2689C07F8(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_2689C3ED8()
{

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

void sub_2689C4018()
{
  OUTLINED_FUNCTION_26();
  v62 = v2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v57 = v4;
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v56 = v6 - v5;
  OUTLINED_FUNCTION_9();
  sub_268B35494();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_48_4();
  v11 = type metadata accessor for MediaPlayerIntent(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v59 = v14 - v13;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_0();
  v53 = v19 - v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v54 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v55 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v60 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v61 = *(v17 + 16);
  v61(v0);
  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_38_2(v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_136_0(v28);
    OUTLINED_FUNCTION_49_3(&dword_2688BB000, v29, v30, "ConfirmIntentStrategy.actionForInput()");
    OUTLINED_FUNCTION_12();
  }

  v31 = *(v17 + 8);
  v32 = v15;
  v31(v0, v15);
  sub_268B35414();
  sub_26893BA8C(v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v11) == 1)
  {
    sub_2688C058C(v1, &qword_2802A5650, &unk_268B3BAC0);
    (v61)(v55, v60, v15);
    (*(v57 + 16))(v56, v62, v58);
    v33 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_172_0();
      v36 = OUTLINED_FUNCTION_173_0();
      v63 = v36;
      *v35 = 136315138;
      sub_268B35414();
      v37 = sub_268B37C24();
      v38 = v32;
      v40 = v39;
      (*(v57 + 8))(v56, v58);
      v41 = sub_26892CDB8(v37, v40, &v63);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_2688BB000, v33, v31, "Received unexpected parse: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v31(v55, v38);
    }

    else
    {

      (*(v57 + 8))(v56, v58);
      v31(v55, v32);
    }

    sub_268B34ED4();
  }

  else
  {
    sub_2689C963C(v1, v59, type metadata accessor for MediaPlayerIntent);
    v42 = 7562617;
    switch(*(v59 + *(v11 + 36)))
    {
      case 1:
        v42 = 28526;
        goto LABEL_10;
      case 2:

        goto LABEL_15;
      case 3:
        (v61)(v53, v60, v15);
        v49 = sub_268B37A34();
        v50 = sub_268B37F04();
        if (OUTLINED_FUNCTION_19(v50))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_23_4(&dword_2688BB000, v51, v52, "No confirmation response in the intent, ignoring input");
          OUTLINED_FUNCTION_12();
        }

        v31(v53, v32);
        sub_268B34ED4();
        goto LABEL_21;
      default:
LABEL_10:
        v43 = OUTLINED_FUNCTION_32_4(v42);

        if (v43)
        {
LABEL_15:
          (v61)(v54, v60, v32);
          v44 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_89_2();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_136_0(v46);
            OUTLINED_FUNCTION_52_5(&dword_2688BB000, v47, v48, "Cancelling due to confirmation value in intent");
            OUTLINED_FUNCTION_12();
          }

          v31(v54, v32);
          sub_268B34EB4();
        }

        else
        {
          sub_268B34EC4();
        }

LABEL_21:
        sub_2688E73C0(v59, type metadata accessor for MediaPlayerIntent);
        break;
    }
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689C4664()
{
  OUTLINED_FUNCTION_26();
  v68 = v2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v63 = v4;
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v62 = v6 - v5;
  OUTLINED_FUNCTION_9();
  sub_268B35494();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v70 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_48_4();
  v13 = type metadata accessor for MediaIntent(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v65 = v16 - v15;
  OUTLINED_FUNCTION_9();
  v17 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_20_0();
  v60 = v21 - v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v61 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v66 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v28 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v67 = *(v19 + 16);
  v67(v0, v28, v17);
  v29 = sub_268B37A34();
  v30 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_38_2(v30))
  {
    v31 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_136_0(v31);
    OUTLINED_FUNCTION_49_3(&dword_2688BB000, v32, v33, "ConfirmIntentStrategy.actionForInput()");
    OUTLINED_FUNCTION_12();
  }

  v34 = *(v19 + 8);
  v35 = v17;
  v34(v0, v17);
  sub_268B35414();
  sub_26892E840(v70);
  if (__swift_getEnumTagSinglePayload(v1, 1, v13) == 1)
  {
    sub_2688C058C(v1, &qword_2802A59A0, &unk_268B3F0C0);
    v67(v66, v28, v17);
    (*(v63 + 16))(v62, v68, v64);
    v36 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v36, v37))
    {
      v69 = v34;
      v38 = OUTLINED_FUNCTION_172_0();
      v39 = OUTLINED_FUNCTION_173_0();
      v71 = v39;
      *v38 = 136315138;
      sub_268B35414();
      v40 = sub_268B37C24();
      v41 = v35;
      v43 = v42;
      (*(v63 + 8))(v62, v64);
      v44 = sub_26892CDB8(v40, v43, &v71);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_2688BB000, v36, v28, "Received unexpected parse: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v69(v66, v41);
    }

    else
    {

      (*(v63 + 8))(v62, v64);
      v34(v66, v35);
    }

    sub_268B34ED4();
  }

  else
  {
    sub_2689C963C(v1, v65, type metadata accessor for MediaIntent);
    v45 = 7562617;
    switch(*(v65 + 24))
    {
      case 1:
        v45 = 28526;
        goto LABEL_10;
      case 2:

        goto LABEL_15;
      case 3:
        v54 = OUTLINED_FUNCTION_41_1();
        v55(v54);
        v56 = sub_268B37A34();
        v57 = sub_268B37F04();
        if (OUTLINED_FUNCTION_19(v57))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_23_4(&dword_2688BB000, v58, v59, "No confirmation response in the intent, ignoring input");
          OUTLINED_FUNCTION_12();
        }

        v34(v60, v35);
        sub_268B34ED4();
        goto LABEL_21;
      default:
LABEL_10:
        v46 = OUTLINED_FUNCTION_32_4(v45);

        if (v46)
        {
LABEL_15:
          v47 = OUTLINED_FUNCTION_41_1();
          v48(v47);
          v49 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_89_2();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_136_0(v51);
            OUTLINED_FUNCTION_52_5(&dword_2688BB000, v52, v53, "Cancelling due to confirmation value in intent");
            OUTLINED_FUNCTION_12();
          }

          v34(v61, v35);
          sub_268B34EB4();
        }

        else
        {
          sub_268B34EC4();
        }

LABEL_21:
        sub_2688E73C0(v65, type metadata accessor for MediaIntent);
        break;
    }
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689C4CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void))
{
  OUTLINED_FUNCTION_26();
  v23 = v22;
  v25 = v24;
  v113 = v27;
  v114 = v26;
  v108 = v28;
  v30 = v29;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v106 = v32;
  v107 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v105 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6528, &qword_268B421F0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_46_5(v37, v101[0]);
  v115 = v25;
  v116 = v23;
  v38 = OUTLINED_FUNCTION_103();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20_0();
  v109 = v41 - v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  v103 = v101 - v44;
  OUTLINED_FUNCTION_9();
  v101[0] = sub_268B35494();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1_0();
  v111 = v47 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v48);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v49);
  v50 = OUTLINED_FUNCTION_47_2();
  v110 = type metadata accessor for MediaPlayerIntent(v50);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  v54 = v53 - v52;
  v55 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v57 = v56;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_20_0();
  v61 = v59 - v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v63 = __swift_project_value_buffer(v55, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_44_5(v63, v63);
  v65(v64);
  v66 = sub_268B37A34();
  v67 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_38_2(v67))
  {
    v68 = OUTLINED_FUNCTION_14();
    v102 = v61;
    *v68 = 0;
    OUTLINED_FUNCTION_51_2(&dword_2688BB000, v69, v70, "ConfirmIntentStrategy.parseConfirmationResponse()");
    v61 = v102;
    OUTLINED_FUNCTION_12();
  }

  v73 = *(v57 + 8);
  v72 = v57 + 8;
  v71 = v73;
  v74 = OUTLINED_FUNCTION_103();
  (v73)(v74);
  sub_268B35414();
  sub_26893BA8C(v21);
  v75 = v110;
  if (__swift_getEnumTagSinglePayload(v21, 1, v110) == 1)
  {
    v110 = v72;
    sub_2688C058C(v21, &qword_2802A5650, &unk_268B3BAC0);
    (v101[1])(v61, v101[2], v55);
    v77 = v105;
    v76 = v106;
    v78 = v107;
    (*(v106 + 16))(v105, v30, v107);
    v79 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = OUTLINED_FUNCTION_172_0();
      v108 = v71;
      v82 = v81;
      v83 = OUTLINED_FUNCTION_173_0();
      v117 = v83;
      *v82 = 136315138;
      v102 = v61;
      sub_268B35414();
      v84 = sub_268B37C24();
      v86 = v85;
      (*(v76 + 8))(v77, v78);
      sub_26892CDB8(v84, v86, &v117);
      OUTLINED_FUNCTION_45_5();

      *(v82 + 4) = v84;
      OUTLINED_FUNCTION_53_4(&dword_2688BB000, v87, v88, "Unexpected parse: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v108(v102, v55);
    }

    else
    {

      (*(v76 + 8))(v77, v78);
      v93 = OUTLINED_FUNCTION_103();
      (v71)(v93);
    }

    sub_2688C2ECC();
    v94 = swift_allocError();
    OUTLINED_FUNCTION_33_7(v94, v95);
    swift_storeEnumTagMultiPayload();
    v114(v55);
    sub_2688C058C(v55, v115, v116);
  }

  else
  {
    sub_2689C963C(v21, v54, type metadata accessor for MediaPlayerIntent);
    if (*(v54 + *(v75 + 36)) - 2 >= 2)
    {
      v96 = v104;
      if (*(v54 + *(v75 + 36)))
      {
        v97 = MEMORY[0x277D5BED0];
      }

      else
      {
        v97 = MEMORY[0x277D5BED8];
      }

      v98 = *v97;
      v99 = sub_268B351D4();
      OUTLINED_FUNCTION_4();
      (*(v100 + 104))(v96, v98, v99);
      v89 = OUTLINED_FUNCTION_42_3();
    }

    else
    {
      sub_268B351D4();
      v89 = OUTLINED_FUNCTION_34_4();
    }

    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    a21(0);
    OUTLINED_FUNCTION_36_6(v108);
    swift_storeEnumTagMultiPayload();
    v114(a21);
    sub_2688C058C(a21, v115, v116);
    sub_2688E73C0(v54, type metadata accessor for MediaPlayerIntent);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689C5430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void))
{
  OUTLINED_FUNCTION_26();
  v23 = v22;
  v25 = v24;
  v109 = v27;
  v110 = v26;
  v105 = v28;
  v30 = v29;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v103 = v32;
  v104 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v102 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6528, &qword_268B421F0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_46_5(v37, v98[0]);
  v111 = v25;
  v112 = v23;
  v38 = OUTLINED_FUNCTION_103();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20_0();
  v106 = v41 - v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  v100 = v98 - v44;
  OUTLINED_FUNCTION_9();
  v98[0] = sub_268B35494();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1_0();
  v113 = v47 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v48);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v49);
  v50 = OUTLINED_FUNCTION_47_2();
  v107 = type metadata accessor for MediaIntent(v50);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  v54 = v53 - v52;
  v55 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v57 = v56;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_20_0();
  v61 = v59 - v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v63 = __swift_project_value_buffer(v55, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_44_5(v63, v63);
  v65(v64);
  v66 = sub_268B37A34();
  v67 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_38_2(v67))
  {
    v68 = OUTLINED_FUNCTION_14();
    v99 = v61;
    *v68 = 0;
    OUTLINED_FUNCTION_51_2(&dword_2688BB000, v69, v70, "ConfirmIntentStrategy.parseConfirmationResponse()");
    v61 = v99;
    OUTLINED_FUNCTION_12();
  }

  v71 = *(v57 + 8);
  v72 = OUTLINED_FUNCTION_103();
  v71(v72);
  v73 = v113;
  sub_268B35414();
  sub_26892E840(v73);
  if (__swift_getEnumTagSinglePayload(v21, 1, v107) == 1)
  {
    v107 = v71;
    sub_2688C058C(v21, &qword_2802A59A0, &unk_268B3F0C0);
    (v98[1])(v61, v98[2], v55);
    v74 = v102;
    v75 = v103;
    v76 = v104;
    (*(v103 + 16))(v102, v30, v104);
    v77 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = OUTLINED_FUNCTION_172_0();
      v105 = OUTLINED_FUNCTION_173_0();
      v114 = v105;
      *v79 = 136315138;
      v99 = v61;
      v80 = v74;
      sub_268B35414();
      sub_268B37C24();
      v81 = OUTLINED_FUNCTION_45_5();
      v83 = v82;
      (*(v75 + 8))(v81, v76);
      sub_26892CDB8(v80, v83, &v114);
      OUTLINED_FUNCTION_45_5();

      *(v79 + 4) = v80;
      OUTLINED_FUNCTION_53_4(&dword_2688BB000, v84, v85, "Unexpected parse: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v105);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v86 = v99;
    }

    else
    {

      (*(v75 + 8))(v74, v76);
      v86 = v61;
    }

    v107(v86, v55);
    sub_2688C2ECC();
    v91 = swift_allocError();
    OUTLINED_FUNCTION_33_7(v91, v92);
    swift_storeEnumTagMultiPayload();
    v110(v55);
    sub_2688C058C(v55, v111, v112);
  }

  else
  {
    sub_2689C963C(v21, v54, type metadata accessor for MediaIntent);
    if (*(v54 + 24) - 2 >= 2)
    {
      v93 = v101;
      if (*(v54 + 24))
      {
        v94 = MEMORY[0x277D5BED0];
      }

      else
      {
        v94 = MEMORY[0x277D5BED8];
      }

      v95 = *v94;
      v96 = sub_268B351D4();
      OUTLINED_FUNCTION_4();
      (*(v97 + 104))(v93, v95, v96);
      v87 = OUTLINED_FUNCTION_42_3();
    }

    else
    {
      sub_268B351D4();
      v87 = OUTLINED_FUNCTION_34_4();
    }

    __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    a21(0);
    OUTLINED_FUNCTION_36_6(v105);
    swift_storeEnumTagMultiPayload();
    v110(a21);
    sub_2688C058C(a21, v111, v112);
    sub_2688E73C0(v54, type metadata accessor for MediaIntent);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C5B6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v6;
    v19 = a2;
    v20 = a5;
    v21 = a1;
    v22 = a4;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()", v18, 2u);
    v24 = v23;
    a4 = v22;
    a1 = v21;
    a5 = v20;
    a2 = v19;
    v6 = v33;
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  sub_268947F08();
  v26 = v25;
  v28 = v27;
  v29 = swift_allocObject();
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = v6;
  v29[5] = a1;
  v29[6] = a2;
  v29[7] = v26;
  v29[8] = v28;

  v30 = a2;
  sub_268ABDE34(sub_2689C938C, v29);
}

void sub_2689C5DE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C5F48()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C60A8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C6208()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C6368()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C64C8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C6628()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C6788()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C68E8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C6A48(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *))
{
  v12 = a4;
  sub_26896F760(a9, v11);
  a2(v11);
  return sub_2688C058C(v11, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_2689C6ACC()
{
  OUTLINED_FUNCTION_26();
  v56 = v0;
  v57 = v1;
  v52 = v3;
  v53 = v2;
  v54 = v4;
  v55 = v5;
  v7 = v6;
  v61 = v8;
  v58 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v60 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v52 - v27;
  v29 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v35 = v34 - v33;
  v36 = *(v7 + 88);
  v59 = v7;
  v37 = __swift_project_boxed_opaque_existential_1((v7 + 64), v36);
  v38 = *v52;
  v39 = *(v31 + 104);
  v52 = v29;
  v39(v35, v38, v29);
  sub_2688F1FA4(v61, v20, &unk_2802A56E0, &unk_268B3CDF0);

  v40 = sub_268B350F4();
  v41 = *(v40 - 8);
  (*(v41 + 32))(v28, v20, v40);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v40);
  v42 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v42);
  v43 = *v37;
  sub_2688F1FA4(v28, v25, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v25, 1, v40) == 1)
  {
    sub_2688C058C(v25, &unk_2802A57B0, &unk_268B3CE00);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v44 = sub_268B350B4();
    v45 = v46;
    (*(v41 + 8))(v25, v40);
  }

  v57(v53, v35, v54, v44, v45, v55, v56, v16, v43);

  sub_2688C058C(v16, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v28, &unk_2802A57B0, &unk_268B3CE00);
  (*(v31 + 8))(v35, v52);
  __swift_project_boxed_opaque_existential_1((v59 + 16), *(v59 + 40));
  sub_268B34CA4();
  v47 = sub_268B35044();
  v48 = v60;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v47);
  v49 = sub_268B354F4();
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v50 = MEMORY[0x277D5C1D8];
  v51 = v58;
  v58[3] = v49;
  v51[4] = v50;
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_268B34EE4();
  sub_2688C058C(v62, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v48, &qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C6F78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v6;
    v19 = a2;
    v20 = a5;
    v21 = a1;
    v22 = a4;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "ConfirmIntentStrategy.makeFlowCancelledResponse()", v18, 2u);
    v24 = v23;
    a4 = v22;
    a1 = v21;
    a5 = v20;
    a2 = v19;
    v6 = v33;
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  sub_268947F08();
  v26 = v25;
  v28 = v27;
  v29 = swift_allocObject();
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = v6;
  v29[5] = a1;
  v29[6] = a2;
  v29[7] = v26;
  v29[8] = v28;

  v30 = a2;
  sub_268ABDE34(sub_2689C9324, v29);
}

void sub_2689C71F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7354()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C74B4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7614()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7774()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C78D4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7A34()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7B94()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7CF4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_4_17();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v3 = OUTLINED_FUNCTION_2_20(v2, qword_2802CDA10);
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v6))
  {
    v7 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v7);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v8, v9, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v10 = OUTLINED_FUNCTION_11_16();
  v11(v10);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v12);

  v13 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7E54()
{
  OUTLINED_FUNCTION_26();
  v56 = v0;
  v2 = v1;
  v59 = v3;
  v61 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  v8 = (&v54 - v7);
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v58 = (v13 - v14);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v57 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v18 = __swift_project_value_buffer(v9, qword_2802CDA10);
    v19 = OUTLINED_FUNCTION_103();
    v60 = v20;
    (v20)(v19);
    v21 = sub_268B37A34();
    v22 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_38_2(v22))
    {
      v23 = OUTLINED_FUNCTION_14();
      v62 = v5;
      *v23 = 0;
      _os_log_impl(&dword_2688BB000, v21, v22, "ResumeMediaConfirmIntentStrategy.makeDialogForConfirmation()", v23, 2u);
      OUTLINED_FUNCTION_12();
    }

    v24 = *(v11 + 8);
    v62 = (v11 + 8);
    v24(v0, v9);
    v25 = sub_268B18100(v61);
    if (!v25)
    {
      break;
    }

    v11 = v25;
    v26 = sub_2688EFD0C();
    if (!v26)
    {

      break;
    }

    v27 = v26;
    v5 = v57;
    v60(v57, v18, v9);
    v0 = v5;
    v28 = sub_268B37A34();
    sub_268B37EC4();
    OUTLINED_FUNCTION_89_2();
    v30 = os_log_type_enabled(v28, v29);
    v55 = v2;
    if (v30)
    {
      v0 = OUTLINED_FUNCTION_172_0();
      v31 = OUTLINED_FUNCTION_173_0();
      v61 = v24;
      v32 = v31;
      v63 = v31;
      *v0 = 136315138;
      v33 = type metadata accessor for Device();
      v34 = MEMORY[0x26D6256F0](v11, v33);
      v36 = sub_26892CDB8(v34, v35, &v63);

      *(v0 + 4) = v36;
      _os_log_impl(&dword_2688BB000, v28, v8, "Confirming devices: %s", v0, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v61(v5, v9);
    }

    else
    {

      v24(v5, v9);
    }

    v9 = 0;
    v2 = v11 & 0xC000000000000001;
    v43 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v27 == v9)
      {

        sub_268AB0B84(v43, v59, v55);

        goto LABEL_30;
      }

      if (v2)
      {
        v44 = MEMORY[0x26D625BD0](v9, v11);
      }

      else
      {
        if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v44 = *(v11 + 8 * v9 + 32);
      }

      v5 = v44;
      v8 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v45 = sub_268988580(v44);
      if (v46)
      {
        v47 = v45;
        v0 = v46;

        goto LABEL_23;
      }

      v47 = sub_268988568(v5);
      v0 = v48;

      ++v9;
      if (v0)
      {
LABEL_23:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v43 = v52;
        }

        v49 = *(v43 + 16);
        v50 = v43;
        if (v49 >= *(v43 + 24) >> 1)
        {
          sub_2689876A4();
          v50 = v53;
        }

        *(v50 + 16) = v49 + 1;
        v43 = v50;
        v51 = v50 + 16 * v49;
        *(v51 + 32) = v47;
        *(v51 + 40) = v0;
        v9 = v8;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v37 = v58;
  v60(v58, v18, v9);
  v38 = sub_268B37A34();
  v39 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_19(v39))
  {
    v40 = OUTLINED_FUNCTION_14();
    *v40 = 0;
    _os_log_impl(&dword_2688BB000, v38, v37, "Could not find any devices in the intent for confirmation", v40, 2u);
    OUTLINED_FUNCTION_12();
  }

  v24(v37, v9);
  sub_2688C2ECC();
  v41 = swift_allocError();
  *v42 = 43;
  *v8 = v41;
  swift_storeEnumTagMultiPayload();
  v59(v8);
  sub_2688C058C(v8, &qword_2802A6300, &unk_268B3BD80);
LABEL_30:
  OUTLINED_FUNCTION_23();
}

void sub_2689C83C0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v31 = v2;
  v32 = v3;
  v34 = v5;
  v35 = v4;
  v6 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v30 - v13;
  OUTLINED_FUNCTION_9();
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v18 = __swift_project_value_buffer(v14, qword_2802CDA10);
  (*(v16 + 16))(v0, v18, v14);
  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "ResumeMediaConfirmIntentStrategy.makePromptForConfirmation() called", v21, 2u);
    v1 = v0;
    OUTLINED_FUNCTION_12();
  }

  (*(v16 + 8))(v0, v14);
  sub_268B363B4();
  swift_allocObject();
  sub_268B363A4();
  v22 = v33;
  sub_2689D9FD4();

  v23 = v30;
  (*(v8 + 16))(v30, v22, v6);
  v24 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 2) = v31;
  *(v25 + 3) = v26;
  v27 = v34;
  v28 = v35;
  *(v25 + 4) = v34;
  *(v25 + 5) = v1;
  *(v25 + 6) = v28;
  (*(v8 + 32))(&v25[v24], v23, v6);

  v29 = v27;
  OUTLINED_FUNCTION_45_5();

  sub_2689C7E54();

  (*(v8 + 8))(v22, v6);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C86D0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v71 = a6;
  v72 = a7;
  v70 = a5;
  v77 = a4;
  v78 = a2;
  v79 = a3;
  v74 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v63 - v14;
  v15 = sub_268B34E24();
  v75 = *(v15 - 8);
  v76 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_268B37A54();
  v65 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = MEMORY[0x28223BE20](v24);
  v69 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v63 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v63 - v30;
  sub_2688F1FA4(v74, v23, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v23, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v18, qword_2802CDA10);
    v33 = v65;
    v65[2](v20, v32, v18);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "ResumeMediaConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    (*(v33 + 8))(v20, v18);
    sub_2688C2ECC();
    v37 = swift_allocError();
    *v38 = -73;
    v80[0] = v37;
    v81 = 1;
    v78(v80);
    return sub_2688C058C(v80, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v23, v31);
    sub_268947F08();
    v63 = v40;
    v42 = v41;
    v43 = v70;
    v44 = __swift_project_boxed_opaque_existential_1(v70 + 8, v70[11]);
    v45 = *MEMORY[0x277D5BB48];
    v46 = *(v75 + 104);
    v65 = v17;
    v46(v17, v45, v76);
    sub_2688F1FA4(v31, v29, &unk_2802A56E0, &unk_268B3CDF0);
    v64 = v24;

    v47 = sub_268B350F4();
    v74 = *(v47 - 8);
    v48 = v66;
    (*(v74 + 32))(v66, v29, v47);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v47);
    v49 = sub_268B34B94();
    v50 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v49);
    v51 = *v44;
    v52 = v67;
    sub_2688F1FA4(v48, v67, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v52, 1, v47) == 1)
    {
      sub_2688C058C(v52, &unk_2802A57B0, &unk_268B3CE00);
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v53 = sub_268B350B4();
      v54 = v55;
      (*(v74 + 8))(v52, v47);
    }

    v56 = v65;
    sub_2688E2390(v71, v65, v77, v53, v54, v63, v42, v50, v51);

    sub_2688C058C(v50, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v48, &unk_2802A57B0, &unk_268B3CE00);
    (*(v75 + 8))(v56, v76);
    v57 = v43[16];
    v58 = v43[17];
    __swift_project_boxed_opaque_existential_1(v43 + 13, v57);
    v59 = v69;
    sub_2688F1FA4(v31, v69, &unk_2802A56E0, &unk_268B3CDF0);
    v60 = *(v59 + *(v64 + 48));
    v61 = sub_268B35044();
    v62 = v73;
    (*(*(v61 - 8) + 16))(v73, v72, v61);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    (*(v58 + 16))(v59, v60, v62, v78, v79, v57, v58);

    sub_2688C058C(v62, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v31, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v74 + 8))(v59, v47);
  }
}

void *sub_2689C8F10()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  return v0;
}

uint64_t sub_2689C8F48()
{
  sub_2689C8F10();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

void sub_2689C9020()
{
  type metadata accessor for ResumeMediaConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_2689C909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C9160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for ResumeMediaConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_2689C91FC(uint64_t a1)
{
  result = sub_2689C9224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689C9224()
{
  result = qword_2802A6C38;
  if (!qword_2802A6C38)
  {
    type metadata accessor for ResumeMediaConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C38);
  }

  return result;
}

uint64_t sub_2689C963C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_3()
{

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2689C9FE4()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2689CA0B4(uint64_t a1)
{
  v3 = sub_268B35044();
  OUTLINED_FUNCTION_22(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  return sub_2689C86D0(a1, v5, v6, v7, v8, v9, v10);
}

_WORD *OUTLINED_FUNCTION_0_27(_WORD *result)
{
  *(v2 - 88) = v1;
  *result = 0;
  return result;
}

void OUTLINED_FUNCTION_6_20()
{

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_9_12(void *a1)
{
  a1[2] = v7;
  a1[3] = v4;
  a1[4] = v3;
  a1[5] = v2;
  a1[6] = v1;
  a1[7] = v6;
  a1[8] = v5;
}

BOOL OUTLINED_FUNCTION_16_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19_11()
{

  sub_268947F08();
}

void OUTLINED_FUNCTION_20_12()
{

  sub_268947F08();
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_268ABDE34(v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1)
{

  return sub_268B38444();
}

void *OUTLINED_FUNCTION_33_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;
  v3 = *(v2 - 160);
  *v3 = a1;
  return v3;
}

uint64_t OUTLINED_FUNCTION_36_6(uint64_t a1)
{

  return MEMORY[0x2821BB510](v2, a1, v1);
}

BOOL OUTLINED_FUNCTION_38_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1, uint64_t a2)
{
  result = v2;
  *(v4 - 232) = *(v3 + 16);
  *(v4 - 224) = a2;
  return result;
}

void OUTLINED_FUNCTION_49_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void OUTLINED_FUNCTION_51_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void OUTLINED_FUNCTION_52_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_53_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_2689CA4AC(char *a1)
{
  sub_2689CA858(a1);
  sub_2689CAB94(a1, v1);
  sub_2689CAF58(a1);
  v3 = a1[2];
  if (v3 != 2)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = sub_268B38444();

    if (v5)
    {
      goto LABEL_8;
    }
  }

  v4 = a1[1];
  switch(a1[1])
  {
    case 2:
      goto LABEL_6;
    case 4:
      goto LABEL_9;
    default:
      v6 = sub_268B38444();

      if (v6)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v3 == 2)
      {
        break;
      }

      if (v3)
      {
LABEL_12:

LABEL_16:
        v7 = 2;
        goto LABEL_17;
      }

      v8 = sub_268B38444();

      if (v8)
      {
        goto LABEL_16;
      }

      break;
  }

  switch(v4)
  {
    case 3:
      goto LABEL_12;
    case 4:
      goto LABEL_24;
    default:
      v9 = sub_268B38444();

      if (v9)
      {
        goto LABEL_16;
      }

      if (v4)
      {
        v16 = sub_268B38444();

        if ((v16 & 1) == 0)
        {
LABEL_24:
          v17 = *a1;
          if (v17 == 24)
          {
LABEL_25:
            v7 = 0;
            goto LABEL_17;
          }

          if (sub_26893E3F8(*a1) != 0x656C6666756873 || v18 != 0xE700000000000000)
          {
            v20 = sub_268B38444();

            if (v20)
            {
              goto LABEL_8;
            }

            if (sub_26893E3F8(v17) != 2036427888 || v21 != 0xE400000000000000)
            {
              v23 = sub_268B38444();

              if ((v23 & 1) == 0)
              {
                goto LABEL_25;
              }

LABEL_8:
              v7 = 1;
              goto LABEL_17;
            }
          }

LABEL_6:

          goto LABEL_8;
        }
      }

      else
      {
      }

      v7 = 3;
LABEL_17:
      [v1 setShuffleState_];
      v10 = type metadata accessor for MediaPlayerIntent(0);
      v11 = 0;
      v12 = 0;
      v13 = a1[*(v10 + 48)];
      if (v13 != 26)
      {
        v11 = sub_268942D54(v13);
      }

      v14 = sub_268A7528C(v11, v12);

      return [v1 setMediaType_];
  }
}

uint64_t sub_2689CA858(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MediaPlayerIntent(0);
  v22 = sub_2689A9870(&qword_2802A56B0, &unk_268B3E7C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_268B37A34();
    v9 = sub_268B37F04();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2688BB000, v8, v9, "Found home automation nodes, attempting to map them to SiriKit intent", v10, 2u);
      MEMORY[0x26D6266E0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_268B3BBA0;
    v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v12);
    v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    *(v11 + 32) = sub_268A91478(v14);
    v16 = off_28795A028;
    v17 = type metadata accessor for SetShuffleStateIntent();
    v16(v11, v17, &off_28795A008);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

void sub_2689CAB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = var50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MediaPlayerIntent(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v9 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = sub_268B18100(a2);
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C())
      {
        sub_2688EFD10();
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], vars8);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_28795A028;
    v30 = type metadata accessor for SetShuffleStateIntent();
    v24 = v26;
    v29(v28, v30, &off_28795A008);
LABEL_13:
  }
}

void sub_2689CAF58(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v8);
  sub_2689A9870(&qword_2802A58E0, &unk_268B3E718);
  v9 = sub_268B37854();
  sub_2688C2F6C(v8);
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
    v13 = off_28795BB98;
    v14 = type metadata accessor for SetShuffleStateIntent();
    v13(v12, v14, &off_28795BB88);
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

void sub_2689CB270(uint64_t a1)
{
  v2 = sub_2688EFD0C();
  if (!v2)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    sub_2688F4354(&qword_2802A5B50, &qword_2802A5B48, &qword_268B416A0, MEMORY[0x277D83958]);
    sub_268B37BA4();

    return;
  }

  v7 = v2;
  v21 = MEMORY[0x277D84F90];
  sub_26894470C(0, v2 & ~(v2 >> 63), 0, v3, v4, v5, v6);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D625BD0](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = sub_2688F3970();
      v13 = v12;

      v19 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26894470C(v18 > 1, v19 + 1, 1, v14, v15, v16, v17);
      }

      ++v8;
      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v11;
      *(v20 + 40) = v13;
    }

    while (v7 != v8);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_2689CB3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_298();
  v10 = sub_2689CB550();
  v11 = sub_2688EFD0C();
  if (!v11)
  {

    v17 = MEMORY[0x277D84F90];
LABEL_15:
    v25 = sub_26893E80C(v17);
    sub_268A7C150(v25);

    OUTLINED_FUNCTION_299();
    return;
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_0_28();
  sub_2689447EC(v13, v14, v15);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = a10;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D625BD0](v16, v10);
      }

      else
      {
        v18 = *(v10 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 context];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 nowPlayingState];
      }

      else
      {
        v22 = 0;
      }

      v24 = *(a10 + 16);
      v23 = *(a10 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2689447EC(v23 > 1, v24 + 1, 1);
      }

      ++v16;
      *(a10 + 16) = v24 + 1;
      *(a10 + 8 * v24 + 32) = v22;
    }

    while (v12 != v16);

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_2689CB550()
{
  v1 = sub_2689CC34C(v0);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v1;
  result = sub_2688EFD0C();
  v5 = result;
  v6 = 0;
  v34 = v3 & 0xFFFFFFFFFFFFFF8;
  v35 = v3 & 0xC000000000000001;
  v30 = v3;
  v31 = result;
  v33 = v3 + 32;
  v7 = v2;
  while (1)
  {
    if (v6 == v5)
    {

      return v7;
    }

    if (v35)
    {
      result = MEMORY[0x26D625BD0](v6, v30);
    }

    else
    {
      if (v6 >= *(v34 + 16))
      {
        goto LABEL_46;
      }

      result = *(v33 + 8 * v6);
    }

    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      break;
    }

    v10 = sub_2688F42F4(result);

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v2;
    }

    if (v11 >> 62)
    {
      v12 = sub_268B382A4();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v7 >> 62;
    if (v7 >> 62)
    {
      result = sub_268B382A4();
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = result + v12;
    if (__OFADD__(result, v12))
    {
      goto LABEL_47;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v13)
      {
LABEL_21:
        sub_268B382A4();
      }

LABEL_22:
      result = sub_268B381F4();
      v7 = result;
      v15 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v13)
    {
      goto LABEL_21;
    }

    v15 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v14 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

LABEL_23:
    v36 = v15;
    v37 = v7;
    v16 = *(v15 + 16);
    v17 = (*(v15 + 24) >> 1) - v16;
    v18 = v15 + 8 * v16;
    if (v11 >> 62)
    {
      v21 = sub_268B382A4();
      if (v21)
      {
        v22 = v21;
        result = sub_268B382A4();
        if (v17 < result)
        {
          goto LABEL_51;
        }

        if (v22 < 1)
        {
          goto LABEL_52;
        }

        v32 = result;
        v23 = v18 + 32;
        sub_2688F4354(&qword_2802A5B40, &qword_2802A5B38, &unk_268B51420, MEMORY[0x277D83988]);
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
          v25 = sub_26892D47C(v38, i, v11);
          v27 = *v26;
          v25(v38, 0);
          *(v23 + 8 * i) = v27;
        }

        v2 = MEMORY[0x277D84F90];
        v5 = v31;
        v20 = v32;
        goto LABEL_33;
      }

LABEL_37:

      if (v12 > 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_37;
      }

      if (v17 < v19)
      {
        goto LABEL_50;
      }

      v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      type metadata accessor for Device();
      swift_arrayInitWithCopy();
LABEL_33:

      v7 = v37;
      if (v20 < v12)
      {
        goto LABEL_48;
      }

      if (v20 > 0)
      {
        v28 = *(v36 + 16);
        v9 = __OFADD__(v28, v20);
        v29 = v28 + v20;
        if (v9)
        {
          goto LABEL_49;
        }

        *(v36 + 16) = v29;
      }
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_2689CB8A8()
{
  OUTLINED_FUNCTION_298();
  v18 = v0;
  v19 = v1;
  v2 = sub_2689CB550();
  v3 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
LABEL_24:

      goto LABEL_25;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 context];
    if (!v7 || (v8 = v7, v9 = [v7 nowPlayingState], v8, v9 != 1))
    {
LABEL_23:

LABEL_25:
      OUTLINED_FUNCTION_299();
      return;
    }

    v10 = [v6 context];
    if (v10 && (v11 = v10, v12 = [v10 nowPlayingState], v11, v12 == 1))
    {
      v13 = [v6 context];
      if (!v13)
      {
        goto LABEL_23;
      }

      v14 = sub_268AE10A4(v13);
      if (!v15)
      {
        goto LABEL_23;
      }

      if (v14 == v18 && v15 == v19)
      {
      }

      else
      {
        v17 = sub_268B38444();

        if ((v17 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

id sub_2689CBA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(v5);
  v11 = sub_268B37BC4();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setType_];
  sub_2688C063C();
  v14 = sub_268B38054();
  [v13 setIncludesTVs_];

  sub_2689CC274(a5, v13);
  if (a2)
  {
    sub_2689CC2E8(a1, a2, v13);
  }

  return v13;
}

void sub_2689CBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_298();
  sub_2689CBC4C();
  v11 = v10;
  v12 = sub_2688EFD0C();
  if (!v12)
  {

    v15 = MEMORY[0x277D84F90];
LABEL_12:
    sub_26893E750(v15);

    OUTLINED_FUNCTION_299();
    return;
  }

  v13 = v12;
  OUTLINED_FUNCTION_0_28();
  sub_26894478C();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = a10;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D625BD0](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = sub_268988568(v16);
      v20 = v19;

      v21 = *(a10 + 16);
      if (v21 >= *(a10 + 24) >> 1)
      {
        sub_26894478C();
      }

      ++v14;
      *(a10 + 16) = v21 + 1;
      v22 = a10 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v20;
    }

    while (v13 != v14);

    goto LABEL_12;
  }

  __break(1u);
}

void sub_2689CBC4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_268B371E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v24 - v8;
  v9 = sub_2689CB550();
  if (sub_2688EFD0C() == 1)
  {
    return;
  }

  v10 = [v0 includesTVs];
  sub_2688C063C();
  v11 = sub_268B38054();
  v12 = v11;
  if (v10)
  {
    v13 = sub_268B38074();

    if (v13)
    {
      return;
    }
  }

  else
  {
  }

  v31 = MEMORY[0x277D84F90];
  v14 = sub_2688EFD0C();
  v15 = 0;
  v29 = v9 & 0xFFFFFFFFFFFFFF8;
  v30 = v9 & 0xC000000000000001;
  v24 = (v5 + 8);
  v25 = (v5 + 32);
  v26 = v14;
  while (1)
  {
    if (v14 == v15)
    {

      return;
    }

    if (v30)
    {
      v16 = MEMORY[0x26D625BD0](v15, v9);
    }

    else
    {
      if (v15 >= *(v29 + 16))
      {
        goto LABEL_23;
      }

      v16 = *(v9 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    sub_268988574(v16);
    if (v18)
    {
      sub_268B37154();
      if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
      {
        sub_2689CC410(v3);
      }

      else
      {
        v19 = v27;
        (*v25)(v27, v3, v4);
        v20 = v28;
        sub_268B371A4();
        sub_2689CC478();
        v21 = sub_268B380F4();
        v22 = *v24;
        (*v24)(v20, v4);
        v23 = v19;
        v14 = v26;
        v22(v23, v4);
        if (v21)
        {

          goto LABEL_18;
        }
      }
    }

    sub_268B38214();
    sub_268B38244();
    sub_268B38254();
    sub_268B38224();
LABEL_18:
    ++v15;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t DeviceGroup.description.getter()
{
  sub_268B381C4();
  MEMORY[0x26D625650](0xD000000000000019, 0x8000000268B59630);
  v17 = sub_2689CC3AC(v0);
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  sub_268B37C24();
  OUTLINED_FUNCTION_3_23();

  MEMORY[0x26D625650](0x203A65707974202CLL, 0xE800000000000000);
  GroupType.description.getter([v0 type]);
  OUTLINED_FUNCTION_3_23();

  MEMORY[0x26D625650](0x64756C636E69202CLL, 0xEF203A7356547365);
  v18 = [v0 includesTVs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC8, &unk_268B3D780);
  v2 = sub_268B37C24();
  MEMORY[0x26D625650](v2);

  MEMORY[0x26D625650](0xD000000000000010, 0x8000000268B59650);
  v19 = [v0 excludeGroup];
  sub_268B37C24();
  OUTLINED_FUNCTION_3_23();

  v3 = MEMORY[0x26D625650](0x6F436D6F6F72202CLL, 0xED0000203A746E75);
  sub_2689CBB34(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20);
  sub_268B38404();
  OUTLINED_FUNCTION_3_23();

  MEMORY[0x26D625650](0x6D6165727473202CLL, 0xEB00000000203A73);
  v11 = sub_2689CC34C(v0);
  if (v11)
  {
    sub_2689CB270(v11);
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v15 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  MEMORY[0x26D625650](v13, v15);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return 0;
}

void sub_2689CC274(uint64_t a1, void *a2)
{
  type metadata accessor for MediaStream();
  v3 = sub_268B37CE4();

  [a2 setStreams_];
}

void sub_2689CC2E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setGroupName_];
}

uint64_t sub_2689CC34C(void *a1)
{
  v1 = [a1 streams];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for MediaStream();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_2689CC3AC(void *a1)
{
  v1 = [a1 groupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_2689CC410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2689CC478()
{
  result = qword_2802A5BE0;
  if (!qword_2802A5BE0)
  {
    sub_268B371E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5BE0);
  }

  return result;
}

void OUTLINED_FUNCTION_3_23()
{

  JUMPOUT(0x26D625650);
}

uint64_t sub_2689CC500(uint64_t a1, unint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2689CCB00();
  v8 = sub_268B37B84();
  if (a2 && (, v9 = sub_2689CC7B4(a1), v9 != 7))
  {
    v17 = sub_26892E1B8(v9, v8);
    v20 = v19;

    if ((v20 & 1) == 0)
    {

      return v17;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v7, v10, v4);

  v11 = sub_268B37A34();
  v12 = sub_268B37F04();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    if (a2)
    {
      v15 = a1;
    }

    else
    {
      v15 = 7104878;
    }

    if (!a2)
    {
      a2 = 0xE300000000000000;
    }

    v16 = sub_26892CDB8(v15, a2, &v22);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_2688BB000, v11, v12, "Found an unknown media type playing: %{public}s. Treating as unknown", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x26D6266E0](v14, -1, -1);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

unint64_t sub_2689CC7B4(uint64_t a1)
{
  v1 = sub_268B382F4();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

unint64_t NowPlayingMediaType.description.getter(uint64_t a1)
{
  result = 0x636973756D2ELL;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E752ELL;
      break;
    case 1:
      return result;
    case 2:
      result = 0x74736163646F702ELL;
      break;
    case 3:
      result = 0x6F626F696475612ELL;
      break;
    case 4:
      result = 0x5573656E7574692ELL;
      break;
    case 5:
      v3 = 1684107822;
      goto LABEL_9;
    case 6:
      v3 = 1685414190;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6F6900000000;
      break;
    case 7:
      result = 0x6F656469762ELL;
      break;
    default:
      sub_268B381C4();

      v4 = sub_268B38404();
      MEMORY[0x26D625650](v4);

      MEMORY[0x26D625650](41, 0xE100000000000000);
      result = 0xD000000000000023;
      break;
  }

  return result;
}

unint64_t sub_2689CC99C(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
    case 6:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2689CCA94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2689CC7B4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2689CCAC4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2689CC99C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2689CCB00()
{
  result = qword_2802A6C90;
  if (!qword_2802A6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MRMediaType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2689CCC20);
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

unint64_t sub_2689CCC5C()
{
  result = qword_2802A6C98;
  if (!qword_2802A6C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A6CA0, qword_268B422B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C98);
  }

  return result;
}

unint64_t sub_2689CCCC4()
{
  result = qword_2802A6CA8;
  if (!qword_2802A6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6CA8);
  }

  return result;
}

uint64_t sub_2689CCD44(uint64_t a1)
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v34[-v9];
  if (qword_2802A4DE0 != -1)
  {
    swift_once();
  }

  sub_268B36684();
  v11 = sub_26892E7B4();

  if (v11)
  {
    v12 = sub_2689CD728((a1 + 8));
    LOBYTE(v35[0]) = 2;
    v13 = sub_2689CD7E0(v35, a1);
    v35[0] = sub_268B36674();
    v35[1] = v14;
    MEMORY[0x28223BE20](v35[0]);
    *&v34[-16] = v35;
    v15 = sub_268ACD018();

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v16 = v15 & v13 & v12;
    v17 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v4 + 16))(v10, v17, v2);
    v18 = sub_268B37A34();
    v19 = sub_268B37ED4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109888;
      *(v20 + 4) = v15;
      v21 = OUTLINED_FUNCTION_1_31(v20);
      *(v21 + 16) = v12 & 1;
      *(v21 + 20) = v22;
      *(v21 + 22) = v16 & 1;
      _os_log_impl(&dword_2688BB000, v18, v19, "UsoTask.isSupportedSettingTask supportedVerbForEntity: %{BOOL}d, shouldHandleInControlsBySettings: %{BOOL}d, isWHASupported: %{BOOL}d. Task is supported by SettingsFlowProvider: %{BOOL}d", v20, 0x1Au);
      OUTLINED_FUNCTION_12();
    }

    (*(v4 + 8))(v10, v2);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v23 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v4 + 16))(v8, v23, v2);

    v24 = sub_268B37A34();
    v25 = sub_268B37ED4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = sub_268B36684();
      v29 = OUTLINED_FUNCTION_4_18(v27, v28);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = sub_268B36674();
      v32 = OUTLINED_FUNCTION_4_18(v30, v31);

      *(v26 + 14) = v32;
      _os_log_impl(&dword_2688BB000, v24, v25, "Task entity/verb: %s/%s is not supported by SettingsFlowProvider", v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    (*(v4 + 8))(v8, v2);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2689CD1A0(uint64_t a1, uint64_t (*a2)(uint64_t), char a3, const char *a4, const char *a5, ...)
{
  v49 = a4;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v50 = v9;
  v51 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v47[-v14];
  v16 = sub_268B36684();
  v17 = a2(v16);

  v18 = *(v17 + 16);
  if (!v18)
  {
    v49 = a5;

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v28 = v50;
    v29 = __swift_project_value_buffer(v50, qword_2802CDA10);
    v30 = v51;
    (*(v51 + 16))(v13, v29, v28);

    v31 = sub_268B37A34();
    v32 = sub_268B37ED4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_268B36684();
      v36 = OUTLINED_FUNCTION_4_18(v34, v35);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      v37 = sub_268B36674();
      v39 = OUTLINED_FUNCTION_4_18(v37, v38);

      *(v33 + 14) = v39;
      _os_log_impl(&dword_2688BB000, v31, v32, v49, v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    (*(v30 + 8))(v13, v28);
    LOBYTE(v17) = 0;
    return v17 & 1;
  }

  v19 = sub_268B36674();
  v21 = v20;
  v48 = sub_2689CD728((a1 + 8));
  v53 = a3;
  v22 = sub_2689CD7E0(&v53, a1);
  v23 = 0;
  v24 = (v17 + 48);
  v25 = v51;
  while (1)
  {
    if (v18 == v23)
    {

      goto LABEL_21;
    }

    if (v23 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v26 = *v24;
    if (*(v24 - 2) == v19 && *(v24 - 1) == v21)
    {
      break;
    }

    if (sub_268B38444() & v26)
    {
      goto LABEL_19;
    }

LABEL_12:
    v24 += 24;
    ++v23;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_19:

  if (v22)
  {
    LODWORD(v18) = 1;
    LOBYTE(v17) = v48;
    goto LABEL_22;
  }

LABEL_21:
  LOBYTE(v17) = 0;
  LODWORD(v18) = v18 != v23;
LABEL_22:
  v24 = v50;
  if (qword_2802A4F30 == -1)
  {
    goto LABEL_23;
  }

LABEL_28:
  OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
LABEL_23:
  v40 = __swift_project_value_buffer(v24, qword_2802CDA10);
  (*(v25 + 16))(v15, v40, v24);
  v41 = sub_268B37A34();
  v42 = sub_268B37ED4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 67109888;
    *(v43 + 4) = v18;
    v44 = OUTLINED_FUNCTION_1_31(v43);
    *(v44 + 16) = v48 & 1;
    *(v44 + 20) = v45;
    *(v44 + 22) = v17 & 1;
    _os_log_impl(&dword_2688BB000, v41, v42, v49, v43, 0x1Au);
    OUTLINED_FUNCTION_12();
  }

  (*(v25 + 8))(v15, v24);
  return v17 & 1;
}

uint64_t sub_2689CD5F0()
{
  sub_268B35DC4();
  if (!v3)
  {
    sub_2688EF38C(v2, &byte_2802A6450, &byte_268B3BE10);
    goto LABEL_5;
  }

  sub_268B361E4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v0 = 0;
    return v0 & 1;
  }

  v0 = sub_2689A85FC();

  return v0 & 1;
}

double sub_2689CD68C@<D0>(uint64_t a1@<X8>)
{
  sub_268B35DC4();
  if (!v3[3])
  {
    sub_2688EF38C(v3, &byte_2802A6450, &byte_268B3BE10);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5930, &qword_268B3BEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2689CD728(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B36F54())
  {
    goto LABEL_5;
  }

  sub_2689CD68C(v4);
  if (!v5)
  {
    sub_2688EF38C(v4, &qword_2802A5928, &unk_268B41110);
LABEL_5:
    v2 = 1;
    return v2 & 1;
  }

  __swift_project_boxed_opaque_existential_1(v4, v5);
  v1 = sub_268B37834();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  v2 = v1 ^ 1;
  return v2 & 1;
}

uint64_t sub_2689CD7E0(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = *a1;
  sub_268B35DC4();
  sub_26891F428(v38, v30);
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CB8, &unk_268B423A0);
    if (swift_dynamicCast())
    {
      if (*(&v33 + 1))
      {
        sub_2688E6514(&v32, v35);
        v12 = v36;
        v13 = v37;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        (*(v13 + 8))(&v32, a2, v12, v13);
        v14 = v32;
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
        (*(v5 + 16))(v10, v15, v4);
        v16 = sub_268B37A34();
        v17 = sub_268B37F04();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *&v32 = v19;
          *v18 = 136315138;
          v20 = 0xEB00000000726579;
          v21 = 0x616C50616964656DLL;
          v29 = v14;
          switch(v14)
          {
            case 1uLL:
              v20 = 0xE500000000000000;
              v21 = 0x616964656DLL;
              break;
            case 2uLL:
              v20 = 0xE800000000000000;
              v21 = 0x73676E6974746573;
              break;
            case 3uLL:
              v20 = 0xE300000000000000;
              v21 = 7104878;
              break;
            default:
              break;
          }

          v14 = sub_26892CDB8(v21, v20, &v32);

          *(v18 + 4) = v14;
          _os_log_impl(&dword_2688BB000, v16, v17, "Found shared task... should handle in domain: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v19);
          MEMORY[0x26D6266E0](v19, -1, -1);
          MEMORY[0x26D6266E0](v18, -1, -1);

          (*(v5 + 8))(v10, v4);
          LODWORD(v14) = v29;
        }

        else
        {

          (*(v5 + 8))(v10, v4);
        }

        if (v14 == 3)
        {
          sub_2688EF38C(v38, &byte_2802A6450, &byte_268B3BE10);
          v26 = v11 == 3;
        }

        else if (v11 == 3)
        {
          sub_2688EF38C(v38, &byte_2802A6450, &byte_268B3BE10);
          v26 = 0;
        }

        else
        {
          v26 = sub_26891F6C4(v14, v11);
          sub_2688EF38C(v38, &byte_2802A6450, &byte_268B3BE10);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        return v26 & 1;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }
  }

  else
  {
    sub_2688EF38C(v30, &byte_2802A6450, &byte_268B3BE10);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  sub_2688EF38C(&v32, &qword_2802A6CB0, &qword_268B42398);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v22, v4);
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "Not a shared task. Handling in controls", v25, 2u);
    MEMORY[0x26D6266E0](v25, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_2688EF38C(v38, &byte_2802A6450, &byte_268B3BE10);
  v26 = 1;
  return v26 & 1;
}

uint64_t OUTLINED_FUNCTION_1_31(uint64_t result)
{
  *(result + 8) = 1024;
  *(result + 10) = v1 & 1;
  *(result + 14) = 1024;
  return result;
}

unint64_t OUTLINED_FUNCTION_4_18(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 96));
}

Swift::String_optional __swiftcall UsoTask_disable_common_RadioStation.verb()()
{
  v0 = 1886352499;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_2689CDD74@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_268B358F4();
  v11 = sub_2688EFD0C();

  if (!v11)
  {
    sub_268B36314();
    if (!v20[1] && !UsoTask_disable_common_RadioStation.referencedSetting()())
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
      (*(v4 + 16))(v10, v18, v2);
      v13 = sub_268B37A34();
      v19 = sub_268B37F04();
      if (!os_log_type_enabled(v13, v19))
      {
        v16 = 0;
        goto LABEL_11;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2688BB000, v13, v19, "UsoTask_disable_common_RadioStation#shouldHandle bare task, should handle in controls", v15, 2u);
      v16 = 0;
      goto LABEL_9;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v12 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v4 + 16))(v8, v12, v2);
  v13 = sub_268B37A34();
  v14 = sub_268B37F04();
  if (!os_log_type_enabled(v13, v14))
  {
    v16 = 3;
    v10 = v8;
    goto LABEL_11;
  }

  v15 = swift_slowAlloc();
  *v15 = 0;
  _os_log_impl(&dword_2688BB000, v13, v14, "UsoTask_disable_common_RadioStation#shouldHandle task has other nodes, rejecting", v15, 2u);
  v16 = 3;
  v10 = v8;
LABEL_9:
  MEMORY[0x26D6266E0](v15, -1, -1);
LABEL_11:

  result = (*(v4 + 8))(v10, v2);
  *a1 = v16;
  return result;
}

uint64_t UsoTask_disable_common_RadioStation.referencedSetting()()
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

uint64_t UsoTask_disable_common_RadioStation.referencedMediaItem()()
{
  v0 = sub_268B36054();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36264();
  swift_allocObject();
  v6 = sub_268B36254();
  sub_268B36494();
  swift_allocObject();
  sub_268B36484();
  (*(v2 + 104))(v5, *MEMORY[0x277D5ED48], v0);
  sub_268B36474();
  (*(v2 + 8))(v5, v0);

  sub_268B36244();

  MEMORY[0x26D6237C0](v6);
  sub_268B35F14();
  sub_268B35EA4();

  return v8[1];
}

uint64_t sub_2689CE2C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689CE31C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689CE370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689CE3C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689CE418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689CE46C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689CE4C0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689CE514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689CE578(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689CE5CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689CE630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689CE694(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689CE6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689CE75C(uint64_t a1)
{
  result = sub_2689CE808(&qword_2802A6CC0, &protocol conformance descriptor for UsoTask_disable_common_RadioStation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689CE808(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B363E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2689CE88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_268B37B84();
  (*(a6 + 8))(a1, a2, v12, 1, a3, a4, a5, a6);
}

id sub_2689CE94C()
{
  type metadata accessor for DialogProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2802A6CD8 = result;
  return result;
}

void sub_2689CE9A4()
{
  OUTLINED_FUNCTION_26();
  v54 = v0;
  v55 = v1;
  v49 = v2;
  v50 = v3;
  v46 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v47 = v14;
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v45 - v15;
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v16, qword_2802CDA10);
  v23 = OUTLINED_FUNCTION_10_14();
  v24(v23);

  v25 = sub_268B37A34();
  v26 = sub_268B37F04();

  v27 = os_log_type_enabled(v25, v26);
  v52 = v8;
  v53 = v6;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v56[0] = v45;
    *v28 = 136315394;
    *(v28 + 4) = sub_26892CDB8(v55, v8, v56);
    *(v28 + 12) = 2080;
    v29 = sub_268B37B74();
    v31 = v11;
    v32 = v9;
    v33 = sub_26892CDB8(v29, v30, v56);

    *(v28 + 14) = v33;
    v9 = v32;
    v11 = v31;
    _os_log_impl(&dword_2688BB000, v25, v26, "Executing CAT: %s with params: %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v18 + 8))(v22, v16);
  v34 = v51;
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v35 = qword_2802CDB28;
  sub_268B37A14();
  v36 = v48;
  (*(v11 + 16))(v48, v34, v9);
  v37 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v38 = v37 + v47;
  v39 = (v37 + v47) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = "executeCAT";
  *(v40 + 24) = 10;
  *(v40 + 32) = 2;
  (*(v11 + 32))(v40 + v37, v36, v9);
  *(v40 + v38) = 0;
  v41 = v40 + v39;
  v42 = v50;
  *(v41 + 8) = v49;
  *(v41 + 16) = v42;

  sub_268B38004();
  sub_268B37A04();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_2689D1908;
  *(v43 + 24) = v40;
  sub_26890C900(v54 + 32, v56);
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);

  v44 = sub_268B36FA4();
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  if (v44 & 1) != 0 && (v46)
  {
    OUTLINED_FUNCTION_2_21();
    sub_2689CF8D4();
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_2689CEE3C();
  }

  (*(v11 + 8))(v34, v9);
  OUTLINED_FUNCTION_23();
}

void sub_2689CEE3C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = v2;
  v29 = v3;
  v5 = v4;
  v7 = v6;
  v30 = v8;
  sub_268B368B4();
  OUTLINED_FUNCTION_1();
  v31 = v10;
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v14, qword_2802CDA10);
  v21 = OUTLINED_FUNCTION_10_14();
  v22(v21);
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "BaseDialogProvider#executeTemplateResult...", v25, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v16 + 8))(v20, v14);
  sub_268B36894();
  if (qword_2802A4E08 != -1)
  {
    OUTLINED_FUNCTION_4_19(&qword_2802A4E08);
  }

  v26 = sub_2689D0A14();
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v27 = swift_allocObject();
  v27[2] = v1;
  v27[3] = v30;
  v27[4] = v7;
  v27[5] = v5;
  v27[6] = v28;
  v27[7] = v29;

  sub_268B368A4();
  sub_268B36884();

  (*(v31 + 8))(v13, v32);
  sub_2689A7CD8(v33, &qword_2802A6CE8, &qword_268B42598);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689CF12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v76 = a7;
  v77 = a6;
  v72 = a4;
  v73 = a5;
  v71 = a3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v74);
  v75 = &v66 - v8;
  v9 = sub_268B350F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v78 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v18 = sub_268B37A54();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CF0, qword_268B425A0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v66 - v25);
  sub_2689D1808(a1, &v66 - v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v18, qword_2802CDA10);
    (*(v19 + 16))(v23, v28, v18);
    v29 = v27;
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v80[0] = v33;
      *v32 = 136446210;
      swift_getErrorValue();
      v34 = sub_268B384A4();
      v36 = sub_26892CDB8(v34, v35, v80);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2688BB000, v30, v31, "BaseDialogProvider#executeTemplateResult Error while executing dialog: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x26D6266E0](v33, -1, -1);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    else
    {
    }

    return (*(v19 + 8))(v23, v18);
  }

  else
  {
    (*(v10 + 32))(v17, v26, v9);
    sub_268B350C4();
    sub_2689D0C94();

    v37 = v17;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v18, qword_2802CDA10);
    v39 = v19;
    v40 = v79;
    (*(v19 + 16))(v79, v38, v18);
    v73 = v18;
    v41 = *(v10 + 16);
    v41(v15, v17, v9);
    v42 = v78;
    v41(v78, v17, v9);
    v43 = sub_268B37A34();
    v70 = sub_268B37EE4();
    v44 = os_log_type_enabled(v43, v70);
    v72 = v9;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v69 = v37;
      v46 = v45;
      v67 = swift_slowAlloc();
      v80[0] = v67;
      *v46 = 136315394;
      v66 = v43;
      sub_268B350D4();
      v68 = v41;
      v47 = v39;
      v48 = MEMORY[0x26D6256F0]();
      v50 = v49;

      v51 = *(v10 + 8);
      v71 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52 = v72;
      v51(v15, v72);
      v53 = sub_26892CDB8(v48, v50, v80);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2080;
      v54 = v78;
      sub_268B350E4();
      v55 = MEMORY[0x26D6256F0]();
      v57 = v56;

      v51(v54, v52);
      v58 = sub_26892CDB8(v55, v57, v80);

      *(v46 + 14) = v58;
      v59 = v66;
      _os_log_impl(&dword_2688BB000, v66, v70, "BaseDialogProvider#executeTemplateResult returning template.print: %s template.speak: %s", v46, 0x16u);
      v60 = v67;
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v60, -1, -1);
      v61 = v46;
      v37 = v69;
      MEMORY[0x26D6266E0](v61, -1, -1);

      (*(v47 + 8))(v79, v73);
      v41 = v68;
    }

    else
    {

      v51 = *(v10 + 8);
      v71 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v63 = v42;
      v52 = v72;
      v51(v63, v72);
      v51(v15, v52);
      (*(v39 + 8))(v40, v73);
    }

    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) + 48);
    v65 = v75;
    v41(v75, v37, v52);
    *(v65 + v64) = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
    swift_storeEnumTagMultiPayload();
    v77(v65);
    sub_2689A7CD8(v65, &qword_2802A6300, &unk_268B3BD80);
    return (v51)(v37, v52);
  }
}

void sub_2689CF8D4()
{
  OUTLINED_FUNCTION_26();
  v56 = v1;
  v57 = v0;
  v53 = v3;
  v54 = v2;
  v55 = v4;
  v58 = v5;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v49 = v7;
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v48 = v9 - v8;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v20 = *(v12 + 16);
  v20(v18, v19, v10);
  v21 = sub_268B37A34();
  v22 = sub_268B37F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_14();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "BaseDialogProvider#executeDialog...", v23, 2u);
    OUTLINED_FUNCTION_12();
  }

  v51 = *(v12 + 8);
  v51(v18, v10);
  sub_268B36754();
  v24 = sub_268B36734();
  if (!v24)
  {
    v24 = sub_268B36744();
  }

  v52 = v24;
  v20(v16, v19, v10);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v59[0] = v28;
    *v27 = 136315138;
    if (sub_268B36734())
    {
      sub_268B36714();

      v29 = v48;
      sub_268B36B14();

      v30 = sub_268B36784();
      v32 = v31;
      (*(v49 + 8))(v29, v50);
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 4271950;
    }

    v33 = sub_26892CDB8(v30, v32, v59);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_2688BB000, v25, v26, "BaseDialogProvider#executeDialog is executing a dialog with responseMode = %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  v51(v16, v10);
  v51 = objc_opt_self();
  if (qword_2802A4E08 != -1)
  {
    OUTLINED_FUNCTION_4_19(&qword_2802A4E08);
  }

  v50 = qword_2802A6CD8;
  v34 = v54;
  v35 = v58;
  v49 = sub_268B37BC4();
  v36 = v55;

  sub_268A1A918(v37);

  v38 = sub_268B37B54();

  v39 = v57;
  v40 = sub_2689D0A14();
  sub_268B367F4();

  v41 = sub_268B37B54();

  v42 = *MEMORY[0x277D05220];
  v43 = swift_allocObject();
  v44 = v53;
  v43[2] = v52;
  v43[3] = v44;
  v43[4] = v56;
  v43[5] = v39;
  v43[6] = v34;
  v43[7] = v35;
  v43[8] = v36;
  v59[4] = sub_2689D16F0;
  v59[5] = v43;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 1107296256;
  v59[2] = sub_2689D0988;
  v59[3] = &block_descriptor_2;
  v45 = _Block_copy(v59);

  v46 = v49;
  [v51 execute:v50 catId:v49 parameters:v38 globals:v41 callback:0 options:v42 completion:v45];
  _Block_release(v45);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689CFF04(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, void *a8)
{
  v105 = a2;
  v101 = a8;
  v104 = a3;
  v12 = sub_268B350F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v102);
  v103 = (&v95 - v16);
  v17 = sub_268B37A54();
  *&v106 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v21 = &v95 - v20;
  if (a1)
  {
    v22 = a1;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v17, qword_2802CDA10);
    v24 = v106;
    (*(v106 + 16))(v21, v23, v17);
    v25 = a1;
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v105;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v107 = v101;
      *v30 = 136446210;
      swift_getErrorValue();
      LODWORD(v99) = v27;
      v31 = sub_268B384A4();
      v33 = sub_26892CDB8(v31, v32, &v107);
      v100 = v17;
      v34 = v33;

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2688BB000, v26, v99, "BaseDialogProvider#executeDialog Error while executing dialog: %{public}s", v30, 0xCu);
      v35 = v101;
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      MEMORY[0x26D6266E0](v35, -1, -1);
      MEMORY[0x26D6266E0](v30, -1, -1);

      (*(v24 + 8))(v21, v100);
    }

    else
    {

      (*(v24 + 8))(v21, v17);
    }

    v55 = v103;
    *v103 = a1;
    swift_storeEnumTagMultiPayload();
    v56 = a1;
    v29(v55);

    return sub_2689A7CD8(v55, &qword_2802A6300, &unk_268B3BD80);
  }

  else
  {
    v99 = v12;
    v100 = v19;
    v97 = v15;
    v98 = v13;
    v36 = [a7 meta];
    sub_268B37B64();

    v37 = a5;
    sub_2689D0C94();

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v17, qword_2802CDA10);
    v39 = v106;
    v40 = v100;
    (*(v106 + 16))(v100, v38, v17);
    v41 = a7;

    v42 = sub_268B37A34();
    v43 = sub_268B37F04();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v17;
      v95 = v42;
      LODWORD(v101) = v43;
      v45 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v107 = v96;
      *v45 = 136446722;
      *(v45 + 4) = sub_26892CDB8(v37, a6, &v107);
      *(v45 + 12) = 2082;
      v46 = [v41 dialog];
      sub_2689D1764();
      v47 = sub_268B37CF4();

      if (sub_2688EFD0C())
      {
        sub_2688EFD10();
        v48 = v44;
        if ((v47 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x26D625BD0](0, v47);
        }

        else
        {
          v49 = *(v47 + 32);
        }

        v50 = v49;

        v51 = [v50 fullSpeak];

        v52 = sub_268B37BF4();
        v54 = v53;
      }

      else
      {
        v52 = 4271950;

        v54 = 0xE300000000000000;
        v48 = v44;
      }

      v58 = sub_26892CDB8(v52, v54, &v107);

      *(v45 + 14) = v58;
      *(v45 + 22) = 2082;
      v59 = [v41 dialog];
      v60 = sub_268B37CF4();

      if (sub_2688EFD0C())
      {
        sub_2688EFD10();
        if ((v60 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x26D625BD0](0, v60);
        }

        else
        {
          v61 = *(v60 + 32);
        }

        v62 = v61;

        v63 = [v62 fullPrint];

        v64 = sub_268B37BF4();
        v66 = v65;
      }

      else
      {
        v64 = 4271950;

        v66 = 0xE300000000000000;
      }

      v67 = sub_26892CDB8(v64, v66, &v107);

      *(v45 + 24) = v67;
      v68 = v95;
      _os_log_impl(&dword_2688BB000, v95, v101, "BaseDialogProvider#executeDialog Successfully evaluated CAT: catId:%{public}s, result.speak:%{public}s, result.print:%{public}s", v45, 0x20u);
      v69 = v96;
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v69, -1, -1);
      MEMORY[0x26D6266E0](v45, -1, -1);

      (*(v106 + 8))(v100, v48);
    }

    else
    {

      (*(v39 + 8))(v40, v17);
    }

    v70 = [v41 catId];
    sub_268B37BF4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
    v71 = swift_allocObject();
    v106 = xmmword_268B3BBC0;
    *(v71 + 16) = xmmword_268B3BBC0;
    v72 = [v41 dialog];
    sub_2689D1764();
    v73 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v73 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x26D625BD0](0, v73);
      }

      else
      {
        v74 = *(v73 + 32);
      }

      v75 = v74;

      v76 = [v75 fullSpeak];

      v77 = sub_268B37BF4();
      v79 = v78;
    }

    else
    {

      v77 = 0;
      v79 = 0xE000000000000000;
    }

    *(v71 + 32) = v77;
    *(v71 + 40) = v79;
    v80 = swift_allocObject();
    *(v80 + 16) = v106;
    v81 = [v41 dialog];
    v82 = sub_268B37CF4();

    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      v83 = v99;
      if ((v82 & 0xC000000000000001) != 0)
      {
        v84 = MEMORY[0x26D625BD0](0, v82);
      }

      else
      {
        v84 = *(v82 + 32);
      }

      v85 = v84;

      v86 = [v85 fullPrint];

      v87 = sub_268B37BF4();
      v89 = v88;
    }

    else
    {

      v87 = 0;
      v89 = 0xE000000000000000;
      v83 = v99;
    }

    *(v80 + 32) = v87;
    *(v80 + 40) = v89;
    v90 = v97;
    sub_268B350A4();
    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) + 48);
    v92 = v98;
    v93 = v103;
    (*(v98 + 16))(v103, v90, v83);
    *(v93 + v91) = v41;
    swift_storeEnumTagMultiPayload();
    v94 = v41;
    v105(v93);
    sub_2689A7CD8(v93, &qword_2802A6300, &unk_268B3BD80);
    return (*(v92 + 8))(v90, v83);
  }
}

void sub_2689D0988(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_2689D0A14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CE0, &qword_268B49D30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = *(v0 + 72);
  if (*(v4 + 16))
  {
    sub_26892E0F4(*(v0 + 72), &v18, 0x656C61636F6CLL);
    if (v19)
    {
      OUTLINED_FUNCTION_6_21(v5, v6, v7, MEMORY[0x277D837D0]);
    }

    else
    {
      sub_2689A7CD8(&v18, &byte_2802A6450, &byte_268B3BE10);
    }

    sub_26892E0F4(v4, &v18, 0xD000000000000012);
    if (v19)
    {
      OUTLINED_FUNCTION_6_21(v8, v9, v10, MEMORY[0x277D839B0]);
    }

    else
    {
      sub_2689A7CD8(&v18, &byte_2802A6450, &byte_268B3BE10);
    }

    sub_26892E0F4(v4, &v18, 0xD000000000000015);
    if (v19)
    {
      OUTLINED_FUNCTION_6_21(v11, v12, v13, MEMORY[0x277D839B0]);
    }

    else
    {
      sub_2689A7CD8(&v18, &byte_2802A6450, &byte_268B3BE10);
    }

    sub_268B36864();
    sub_268B36814();
    sub_268B36834();

    sub_268B36844();
  }

  else
  {
    sub_268B36874();
    sub_268B36804();
  }

  v14 = sub_268B367A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v14);
  sub_268B36824();

  sub_2689A7CD8(v3, &qword_2802A6CE0, &qword_268B49D30);
  v15 = sub_268B36854();

  return v15;
}

void sub_2689D0C94()
{
  OUTLINED_FUNCTION_26();
  v68 = v1;
  v69 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v17 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v70 = *(v8 + 16);
  v71 = v17;
  v70(v16);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "BaseDialogProvider#catchAllForRadarFilingConsideration...", v20, 2u);
    OUTLINED_FUNCTION_12();
  }

  v21 = *(v8 + 8);
  v21(v16, v6);
  v22 = sub_2689A99EC(v3);
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    v67 = v21;
    *&v75 = v22;
    *(&v75 + 1) = v23;
    MEMORY[0x28223BE20](v22);
    *(&v64 - 2) = &v75;
    if (sub_268ACD018())
    {
      (v70)(v14, v71, v6);

      v26 = sub_268B37A34();
      v27 = sub_268B37EC4();

      v28 = os_log_type_enabled(v26, v27);
      v66 = v5;
      if (v28)
      {
        v29 = swift_slowAlloc();
        *&v75 = swift_slowAlloc();
        *v29 = 136315394;
        *(v29 + 4) = sub_26892CDB8(v69, v5, &v75);
        *(v29 + 12) = 2080;
        v30 = sub_26892CDB8(v24, v25, &v75);

        *(v29 + 14) = v30;
        _os_log_impl(&dword_2688BB000, v26, v27, "BaseDialogProvider#catchAllForRadarFilingConsideration, catId: %s and category: %s, possible TTR candidate", v29, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      v67(v14, v6);
      v31 = v68;
      sub_26892E0F4(v68, &v75, 0xD000000000000011);
      if (v76)
      {
        v35 = OUTLINED_FUNCTION_3_24(v32, v33, v34, MEMORY[0x277D837D0]);
        if (v35)
        {
          v36 = v73;
        }

        else
        {
          v36 = 0;
        }

        if (v35)
        {
          v37 = v74;
        }

        else
        {
          v37 = 0;
        }

        v64 = v37;
        v65 = v36;
      }

      else
      {
        sub_2689A7CD8(&v75, &byte_2802A6450, &byte_268B3BE10);
        v64 = 0;
        v65 = 0;
      }

      OUTLINED_FUNCTION_9_13();
      if (v76)
      {
        if (OUTLINED_FUNCTION_3_24(v38, v39, v40, MEMORY[0x277D837D0]))
        {
          v41 = v73;
          v42 = v74;
          goto LABEL_29;
        }
      }

      else
      {
        sub_2689A7CD8(&v75, &byte_2802A6450, &byte_268B3BE10);
      }

      OUTLINED_FUNCTION_9_13();
      if (v76)
      {
        if (OUTLINED_FUNCTION_3_24(v43, v44, v45, MEMORY[0x277D83B88]))
        {
          *&v75 = v73;
          v41 = sub_268B38404();
          v42 = v46;
          goto LABEL_29;
        }
      }

      else
      {
        sub_2689A7CD8(&v75, &byte_2802A6450, &byte_268B3BE10);
      }

      v41 = 0;
      v42 = 0;
LABEL_29:
      (v70)(v72, v71, v6);
      v47 = sub_268B37A34();
      v48 = sub_268B37ED4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_14();
        *v49 = 0;
        _os_log_impl(&dword_2688BB000, v47, v48, "BaseDialogProvider#catchAllForRadarFilingConsideration TTR attempt", v49, 2u);
        OUTLINED_FUNCTION_12();
      }

      v67(v72, v6);
      sub_26892E0F4(v31, &v75, 0xD000000000000011);
      if (v76)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
        if (OUTLINED_FUNCTION_3_24(v50, v51, v52, v50))
        {
          v53 = v73;
          sub_26892E200(0xD00000000000001BLL, 0x8000000268B59740, v73);
          OUTLINED_FUNCTION_8_15(0x6150726579616C70);

          v54 = v75;
          v55 = sub_26892E200(0xD000000000000016, 0x8000000268B59760, v53);
          if (v56)
          {
            v57 = v56;
          }

          else
          {
            v55 = 0xD000000000000015;
            v57 = 0x8000000268B59780;
          }

          strcpy(&v75, "commandID = ");
          BYTE13(v75) = 0;
          HIWORD(v75) = -5120;
          MEMORY[0x26D625650](v55, v57);

          v58 = v75;
          sub_26892E200(0xD000000000000013, 0x8000000268B597A0, v53);

          OUTLINED_FUNCTION_8_15(0x7245664F656D6974);

          v59 = v75;
          *&v75 = 10;
          *(&v75 + 1) = 0xE100000000000000;
          MEMORY[0x26D625650](v54, *(&v54 + 1));

          MEMORY[0x26D625650](2570, 0xE200000000000000);
          MEMORY[0x26D625650](v58, *(&v58 + 1));

          MEMORY[0x26D625650](10, 0xE100000000000000);
          MEMORY[0x26D625650](v59, *(&v59 + 1));

          v61 = *(&v75 + 1);
          v60 = v75;
          goto LABEL_39;
        }
      }

      else
      {
        sub_2689A7CD8(&v75, &byte_2802A6450, &byte_268B3BE10);
      }

      v60 = 0;
      v61 = 0xE000000000000000;
LABEL_39:
      sub_268B372E4();
      v62 = swift_allocObject();
      v62[2] = v41;
      v62[3] = v42;
      v62[4] = v69;
      v63 = v65;
      v62[5] = v66;
      v62[6] = v63;
      v62[7] = v64;
      v62[8] = v60;
      v62[9] = v61;

      sub_268B372D4();

      goto LABEL_40;
    }
  }

LABEL_40:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D1494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a3;
  if (!a3)
  {

    a2 = a4;
    v15 = a5;
  }

  type metadata accessor for ErrorFilingHelper();

  static ErrorFilingHelper.fileTTR(errorToReport:errorDomain:extraInfo:extraDescInfo:duc:attachmentURLs:)(a2, v15, 0, 0xE000000000000000, a6, a7, a8, a9, a4, a5, a1, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, vars0);
}

uint64_t sub_2689D1568()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return v0;
}

uint64_t sub_2689D1598()
{
  sub_2689D1568();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2689D1614()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2689D1698()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2689D1764()
{
  result = qword_2802A57D0;
  if (!qword_2802A57D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A57D0);
  }

  return result;
}

uint64_t sub_2689D17A8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2689D1808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6CF0, qword_268B425A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2689D1878()
{
  sub_268B37A24();
  OUTLINED_FUNCTION_11_13();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_2689D1908(uint64_t a1)
{
  v3 = *(sub_268B37A24() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v1 + 32);

  return sub_2689A3D90(a1, v6, v7, v10, v1 + v4, v8, v9);
}

uint64_t sub_2689D19B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_3_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_8_15(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = v1 | 0xED00002000000000;

  JUMPOUT(0x26D625650);
}

double OUTLINED_FUNCTION_9_13()
{

  return sub_26892E0F4(v0, (v1 - 120), 0xD000000000000010);
}

Swift::String_optional __swiftcall UsoTask_skipForward_uso_NoEntity.verb()()
{
  v0 = 1885956979;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_skipForward_uso_NoEntity.referencedSetting()()
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

uint64_t sub_2689D1C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689D1C5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689D1CB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689D1D04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689D1D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689D1DAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689D1E00(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689D1E54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689D1EB8(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689D1F0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689D1F70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689D1FD4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689D2038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689D209C(uint64_t a1)
{
  result = sub_2689D2148(&qword_2802A6CF8, &protocol conformance descriptor for UsoTask_skipForward_uso_NoEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689D2148(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B361F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t sub_2689D21AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_2689D21EC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

id ResumeMediaIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ResumeMediaIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v26 = sub_268B36C44();
  sub_268B37204();
  v25 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v33);
  sub_268AD33CC(v32);
  sub_268B36754();
  v24 = sub_268B36734();
  sub_268B36C44();
  OUTLINED_FUNCTION_86_1();
  v1 = type metadata accessor for MultiUserConnectionProvider();
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v2 + 16) = [v3 init];
  __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = (v6 - v5);
  (*(v8 + 16))(v6 - v5);
  v9 = *v7;
  v30 = v0;
  v31 = MEMORY[0x277D5F680];
  *&v29 = v0;
  v10 = type metadata accessor for AnalyticsServiceLogger();
  v28[4] = &off_28795F5E0;
  v28[3] = v10;
  v28[0] = v9;
  v27[4] = &off_287960608;
  v27[3] = v1;
  v27[0] = v2;
  type metadata accessor for AnalyticsServiceImpl();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v1);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  v22 = *v15;
  v23 = *v20;
  v11[5] = v10;
  v11[6] = &off_28795F5E0;
  v11[2] = v22;
  v11[21] = v1;
  v11[22] = &off_287960608;
  v11[18] = v23;
  sub_2688E6514(v32, (v11 + 7));
  v11[12] = v24;
  sub_2688E6514(&v29, (v11 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);

  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  sub_268B34C64();
  sub_2689D8CB0(v26, v25, &v34, v11, v33);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_2689D2690()
{
  OUTLINED_FUNCTION_26();
  v26 = v1;
  v27 = v0;
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
  sub_268B36754();
  v25 = sub_268B36734();
  OUTLINED_FUNCTION_0_3();
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  (*(v8 + 16))(v13, v15, v6);
  v18 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v19 = v18 + v10;
  v20 = v6;
  v21 = (v18 + v10) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleResumeMedia";
  *(v22 + 24) = 17;
  *(v22 + 32) = 2;
  (*(v8 + 32))(v22 + v18, v13, v20);
  *(v22 + v19) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_2689D2900(v26, v27, v25, sub_268958A64, v22);

  (*(v8 + 8))(v15, v20);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D2900(void *a1, char *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v56 = a3;
  v57 = a2;
  v61 = a1;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = swift_allocObject();
  v58 = a4;
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_268958D98;
  *(v17 + 24) = v16;
  v59 = v17;
  v60 = a5;
  v18 = qword_2802A4F30;
  swift_retain_n();
  v62 = v16;
  swift_retain_n();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v20 = *(v8 + 16);
  v20(v15, v19, v7);
  v21 = sub_268B37A34();
  v22 = sub_268B37F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "Handling resume media", v23, 2u);
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  v24 = *(v8 + 8);
  v24(v15, v7);
  v25 = sub_268B18100(v61);
  if (v25)
  {
    v26 = v25;
    if (sub_2688EFD0C())
    {
      v27 = v57;
      __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState], *&v57[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState + 24]);
      if (sub_2688C3308())
      {
        v20(v55, v19, v7);
        v28 = sub_268B37A34();
        v29 = sub_268B37F04();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_2688BB000, v28, v29, "Resume media submitting suppress delay feedback", v30, 2u);
          MEMORY[0x26D6266E0](v30, -1, -1);
        }

        v24(v55, v7);
        sub_268B38004();
        if (qword_2802A5028 != -1)
        {
          swift_once();
        }

        v31 = v57;
        sub_268B37A04();
        v32 = *&v31[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper];
        v58 = [objc_allocWithZone(MEMORY[0x277D47B38]) init];
        v33 = swift_allocObject();
        v33[2] = v31;
        v33[3] = v26;
        v34 = v61;
        v35 = v56;
        v33[4] = v61;
        v33[5] = v35;
        v36 = v59;
        v33[6] = sub_2688E19F8;
        v33[7] = v36;

        __swift_project_boxed_opaque_existential_1((v32 + 56), *(v32 + 80));
        sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
        v37 = v34;
        v38 = v31;

        v39 = v58;
        sub_268B35134();
      }

      else
      {
        v47 = *&v27[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceServiceHelper];
        v48 = v56;

        v49 = v60;
        swift_retain_n();

        v50 = v61;
        v51 = v27;
        sub_268A31684(v26, 0, v47, v50, v51, v48, v26, v58, v49, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63[0], v63[1]);
      }

      goto LABEL_18;
    }
  }

  v20(v13, v19, v7);
  v40 = sub_268B37A34();
  v41 = sub_268B37EE4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_2688BB000, v40, v41, "No devices found in ResumeMediaIntent, returning failure", v42, 2u);
    MEMORY[0x26D6266E0](v42, -1, -1);
  }

  v24(v13, v7);
  v43 = sub_268B36EA4();
  v44 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v45 = v43;
  v46 = ResumeMediaIntentResponse.init(code:userActivity:)(5, v43);
  v63[0] = v46;
  v58(v63);

LABEL_18:
}

uint64_t sub_2689D2FAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v47 = a4;
  v48 = a5;
  v46 = a3;
  v49 = a2;
  v52 = sub_268B37A54();
  v45 = *(v52 - 8);
  v8 = MEMORY[0x28223BE20](v52);
  v44 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v41[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6368, qword_268B3EE78);
  MEMORY[0x28223BE20](v12);
  v14 = &v41[-v13];
  v15 = sub_268B351A4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v41[-v20];
  sub_2688F1FA4(a1, v14, &qword_2802A6368, qword_268B3EE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v21, v14, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v22 = v52;
    v23 = __swift_project_value_buffer(v52, qword_2802CDA10);
    v24 = v45;
    (*(v45 + 16))(v44, v23, v22);
    v25 = *(v16 + 16);
    v25(v19, v21, v15);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v28 = 138412290;
      sub_2689D99EC(&qword_2802A6370, MEMORY[0x277D5BE90], MEMORY[0x277D5BE98]);
      swift_allocError();
      v42 = v27;
      v25(v29, v19, v15);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = *(v16 + 8);
      v31(v19, v15);
      *(v28 + 4) = v30;
      v32 = v43;
      *v43 = v30;
      _os_log_impl(&dword_2688BB000, v26, v42, "ACE service submission error: %@", v28, 0xCu);
      sub_2688C058C(v32, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v32, -1, -1);
      MEMORY[0x26D6266E0](v28, -1, -1);

      (*(v24 + 8))(v44, v52);
      v31(v21, v15);
    }

    else
    {

      v39 = *(v16 + 8);
      v39(v19, v15);
      (*(v24 + 8))(v44, v22);
      v39(v21, v15);
    }
  }

  else
  {
    sub_2688C058C(v14, &qword_2802A6368, qword_268B3EE78);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v33 = v52;
    v34 = __swift_project_value_buffer(v52, qword_2802CDA10);
    v35 = v45;
    (*(v45 + 16))(v11, v34, v33);
    v36 = sub_268B37A34();
    v37 = sub_268B37F04();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2688BB000, v36, v37, "ACE service submission succeeded", v38, 2u);
      MEMORY[0x26D6266E0](v38, -1, -1);
    }

    (*(v35 + 8))(v11, v33);
  }

  sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  sub_268B37A04();
  return sub_2689D73FC(v46, v47, v48, 0, v50, v51);
}

void sub_2689D3650()
{
  OUTLINED_FUNCTION_26();
  v70 = v0;
  v71 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_86_1();
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v74 = v5;
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v72 = (v6 - v7);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v69[1] = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v73 = v69 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  v14 = v69 - v13;
  v15 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v69 - v23;
  sub_2688F1FA4(v3, v14, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = (*(v17 + 32))(v24, v14, v15);
    if (qword_2802A4F30 != -1)
    {
      v25 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v26 = v75;
    OUTLINED_FUNCTION_20_13(v25, qword_2802CDA10);
    v27 = v74;
    v28 = OUTLINED_FUNCTION_42_4();
    v29(v28);
    (*(v17 + 16))(v21, v24, v15);
    v30 = sub_268B37A34();
    v31 = sub_268B37ED4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_172_0();
      v33 = OUTLINED_FUNCTION_173_0();
      v79[0] = v33;
      *v32 = 136315138;
      sub_2689D99EC(&qword_2802A5DE0, MEMORY[0x277D5F6E0], MEMORY[0x277D5F6F0]);
      v34 = sub_268B38404();
      v36 = v35;
      v72 = v24;
      v37 = *(v17 + 8);
      v37(v21, v15);
      v38 = sub_26892CDB8(v34, v36, v79);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_2688BB000, v30, v31, "Not registering correction/undo for resume intent because resume did not succeed: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (*(v74 + 8))(v73, v75);
      v37(v72, v15);
    }

    else
    {

      v56 = *(v17 + 8);
      v56(v21, v15);
      (*(v27 + 8))(v73, v26);
      v56(v24, v15);
    }

    goto LABEL_20;
  }

  sub_2688C058C(v14, &qword_2802A5DE8, &qword_268B3D790);
  if (v0)
  {
    sub_268B36704();
    sub_268B34A44();

    if (*(&v77 + 1))
    {
      v39 = sub_2688E6514(&v76, v79);
      if (qword_2802A4F30 != -1)
      {
        v39 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_20_13(v39, qword_2802CDA10);
      v40 = OUTLINED_FUNCTION_39_3();
      v41(v40);
      v42 = sub_268B37A34();
      v43 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v43))
      {
        v44 = OUTLINED_FUNCTION_14();
        *v44 = 0;
        OUTLINED_FUNCTION_37_7();
        _os_log_impl(v45, v46, v47, v48, v44, 2u);
        OUTLINED_FUNCTION_12();
      }

      v49 = OUTLINED_FUNCTION_192();
      v50(v49);
      __swift_project_boxed_opaque_existential_1(v79, v79[3]);
      OUTLINED_FUNCTION_0_3();
      v51 = swift_allocObject();
      v52 = v70;
      v53 = v71;
      *(v51 + 16) = v70;
      *(v51 + 24) = v53;
      v54 = v52;
      v55 = v53;
      sub_268B34A34();

      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      goto LABEL_20;
    }
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  v57 = sub_2688C058C(&v76, &qword_2802A6D60, &qword_268B50890);
  if (qword_2802A4F30 != -1)
  {
    v57 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_20_13(v57, qword_2802CDA10);
  v58 = OUTLINED_FUNCTION_39_3();
  v59(v58);
  v60 = sub_268B37A34();
  v61 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_115_0(v61))
  {
    v62 = OUTLINED_FUNCTION_14();
    *v62 = 0;
    OUTLINED_FUNCTION_37_7();
    _os_log_impl(v63, v64, v65, v66, v62, 2u);
    OUTLINED_FUNCTION_12();
  }

  v67 = OUTLINED_FUNCTION_192();
  v68(v67);
LABEL_20:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D3C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2689D3C94, 0, 0);
}

uint64_t sub_2689D3C94()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_268B352B4();
  *v2 = v0;
  v2[1] = sub_2689D3D90;
  v4 = *(v0 + 16);

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000032, 0x8000000268B59990, sub_2689D983C, v1, v3);
}

uint64_t sub_2689D3D90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2689D3EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);
  v5 = *(v41 - 8);
  v38[1] = *(v5 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = v38 - v6;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController, v45);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState, v44);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService, v43);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_aceService, v42);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v43, v43[3]);
  MEMORY[0x28223BE20](v11);
  (*(v13 + 16))(v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v45, v45[3]);
  MEMORY[0x28223BE20](v14);
  (*(v16 + 16))(v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_268AF5A60();
  v38[0] = v17;
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  v18 = [objc_allocWithZone(type metadata accessor for PauseMediaIntent()) init];
  if (sub_268B18100(a3))
  {
    type metadata accessor for Device();
    v19 = sub_268B37CE4();
  }

  else
  {
    v19 = 0;
  }

  [v18 setDevices_];

  if (sub_268B18140(a3))
  {
    type metadata accessor for DeviceContext();
    v20 = sub_268B37CE4();
  }

  else
  {
    v20 = 0;
  }

  [v18 setDeviceContext_];

  [v18 setMediaType_];
  if (sub_268B18120(a3))
  {
    type metadata accessor for DeviceQuery();
    v21 = sub_268B37CE4();
  }

  else
  {
    v21 = 0;
  }

  [v18 setDeviceQueries_];

  if (sub_2689D8BEC(a3))
  {
    type metadata accessor for ControlsSettingAttribute();
    v22 = sub_268B37CE4();
  }

  else
  {
    v22 = 0;
  }

  [v18 setSettingAttributes_];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v23 = sub_268B38054();
  [v18 setIsDirectInvocation_];

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v10, v24, v7);
  v25 = v18;
  v26 = a3;
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412546;
    *(v29 + 4) = v25;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v26;
    *v30 = v25;
    v30[1] = v26;
    v31 = v25;
    v32 = v26;
    _os_log_impl(&dword_2688BB000, v27, v28, "Executing pause intent %@ as a correction/undo for resume intent %@", v29, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6420, &unk_268B3C680);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v30, -1, -1);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v33 = v39;
  v34 = v41;
  (*(v5 + 16))(v39, v40, v41);
  v35 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v36 = swift_allocObject();
  (*(v5 + 32))(v36 + v35, v33, v34);
  v37 = v38[0];
  sub_268AEE8D8();
}

uint64_t sub_2689D45A4(char *a1)
{
  v2 = sub_268B352B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___PauseMediaIntentResponse_code;
  swift_beginAccess();
  if (*&a1[v6] == 4)
  {
    *(v5 + 4) = 0;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    v7 = MEMORY[0x277D5BFD0];
  }

  else
  {
    *(v5 + 4) = 0;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_268B381C4();

    v15 = 0xD000000000000015;
    v16 = 0x8000000268B599D0;
    v8 = [a1 description];
    v9 = sub_268B37BF4();
    v11 = v10;

    MEMORY[0x26D625650](v9, v11);

    v12 = v16;
    *(v5 + 5) = v15;
    *(v5 + 6) = v12;
    v7 = MEMORY[0x277D5BFC8];
  }

  (*(v3 + 104))(v5, *v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);
  return sub_268B37D94();
}

void sub_2689D477C(char *a1, uint64_t a2, void (**a3)(void, void))
{
  v64 = a2;
  v5 = sub_268B36C04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v58 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v58 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
LABEL_32:
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v17 = *(v9 + 16);
  v60 = v16;
  v61 = v17;
  (v17)(v15);
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v62 = v6;
    v21 = v5;
    v22 = v8;
    v23 = v9;
    v24 = a1;
    v25 = a3;
    v26 = v20;
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "Resolving devices for resume media", v20, 2u);
    v27 = v26;
    a3 = v25;
    a1 = v24;
    v9 = v23;
    v8 = v22;
    v5 = v21;
    v6 = v62;
    MEMORY[0x26D6266E0](v27, -1, -1);
  }

  v62 = *(v9 + 8);
  (v62)(v15, v8);
  v28 = sub_2689D8C4C(a1);
  if (!v29)
  {
    if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState), *(v64 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
    {
      v51 = v58;
      v61(v58, v60, v8);
      v52 = sub_268B37A34();
      v53 = sub_268B37EE4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_2688BB000, v52, v53, "Whole House Audio requests are unsupported on this platform", v54, 2u);
        MEMORY[0x26D6266E0](v54, -1, -1);
      }

      (v62)(v51, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_268B3BBA0;
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      *(v55 + 32) = sub_268B17B04(2);
      v56 = sub_268B37CE4();
      (a3)[2](a3, v56);
    }

    else
    {
      v41 = v59;
      (*(v6 + 13))(v59, *MEMORY[0x277D5F660], v5);
      [a1 mediaType];
      _Block_copy(a3);
      sub_268909C48();
      (*(v6 + 1))(v41, v5);
    }

LABEL_24:
    _Block_release(a3);
    _Block_release(a3);
    return;
  }

  v30 = v28;
  v31 = v29;
  v6 = v63;
  v61(v63, v60, v8);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (os_log_type_enabled(v32, v33))
  {
    v6 = a1;
    v34 = swift_slowAlloc();
    v35 = a3;
    v36 = swift_slowAlloc();
    v65 = v36;
    *v34 = 136315138;
    v37 = sub_26892CDB8(v30, v31, &v65);

    *(v34 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v32, v33, "Request to resume app: %s. Forcing resolved device to be the local device", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v38 = v36;
    a3 = v35;
    MEMORY[0x26D6266E0](v38, -1, -1);
    v39 = v34;
    a1 = v6;
    MEMORY[0x26D6266E0](v39, -1, -1);

    v40 = v63;
  }

  else
  {

    v40 = v6;
  }

  (v62)(v40, v8);
  v42 = sub_268B18140(a1);
  if (!v42)
  {
LABEL_22:
    v45 = 0;
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_268B3BBA0;
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    v48 = sub_268901CB8(v45);
    v49 = sub_268B2CC98(v48);

    *(v47 + 32) = v49;
    v50 = sub_268B37CE4();
    (a3)[2](a3, v50);

    goto LABEL_24;
  }

  v15 = v42;
  v43 = sub_2688EFD0C();
  v8 = 0;
  v5 = v15 & 0xC000000000000001;
  v9 = v15 & 0xFFFFFFFFFFFFFF8;
  a1 = &unk_279C42000;
  while (1)
  {
    if (v43 == v8)
    {

      goto LABEL_22;
    }

    if (v5)
    {
      v44 = MEMORY[0x26D625BD0](v8, v15);
    }

    else
    {
      if (v8 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v44 = *(v15 + 8 * v8 + 32);
    }

    v45 = v44;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v46 = [v44 proximity];
    if ((v46 - 1) >= 4)
    {
      break;
    }

    ++v8;
  }

  v57 = v46;
  if (!v46)
  {

    goto LABEL_23;
  }

  _Block_release(a3);
  _Block_release(a3);
  v65 = v57;
  sub_268B38474();
  __break(1u);
}

void sub_2689D4EDC()
{
  OUTLINED_FUNCTION_26();
  v61 = v0;
  v62 = v1;
  v3 = v2;
  v4 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v57 = (v9 - v8);
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v56 = v14 - v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v58 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
  v59 = v19;
  v60 = *(v12 + 16);
  v60(v0);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "Resolving devices for resume media", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  v24 = *(v12 + 8);
  v12 += 8;
  v23 = v24;
  v24(v0, v10);
  v25 = sub_2689D8C4C(v3);
  if (!v26)
  {
    if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((v61 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState), *(v61 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_deviceState + 24)), OUTLINED_FUNCTION_189(), (sub_2688C3240() & 1) == 0))
    {
      v48 = v23;
      (v60)(v56, v59, v10);
      v49 = sub_268B37A34();
      v50 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v50))
      {
        v51 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v51);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v52, v53, "Whole House Audio requests are unsupported on this platform");
        OUTLINED_FUNCTION_83_0();
      }

      v48(v56, v10);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v55 = OUTLINED_FUNCTION_29_6(v54);
      OUTLINED_FUNCTION_11_17(v55, xmmword_268B3BBA0);
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      v55[2].n128_u64[0] = sub_268B17B04(2);
      v62(v55);
    }

    else
    {
      v6[13](v57, *MEMORY[0x277D5F660], v4);
      [v3 mediaType];

      sub_26890A508();
      (v6[1])(v57, v4);
    }

LABEL_24:
    OUTLINED_FUNCTION_23();
    return;
  }

  v27 = v25;
  v28 = v26;
  v57 = v23;
  v4 = v58;
  (v60)(v58, v59, v10);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v30))
  {
    v31 = v3;
    v32 = OUTLINED_FUNCTION_172_0();
    v33 = OUTLINED_FUNCTION_173_0();
    v63 = v33;
    *v32 = 136315138;
    v34 = sub_26892CDB8(v27, v28, &v63);

    *(v32 + 4) = v34;
    OUTLINED_FUNCTION_72();
    _os_log_impl(v35, v36, v37, v38, v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_12();
    v3 = v31;
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v57(v58, v10);
  v39 = sub_268B18140(v3);
  if (!v39)
  {
LABEL_22:
    v42 = 0;
LABEL_23:
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v45 = OUTLINED_FUNCTION_29_6(v44);
    OUTLINED_FUNCTION_11_17(v45, xmmword_268B3BBA0);
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    v46 = sub_268901CB8(v42);
    v47 = sub_268B2CC98(v46);

    v45[2].n128_u64[0] = v47;
    v62(v45);

    goto LABEL_24;
  }

  v0 = v39;
  v40 = sub_2688EFD0C();
  v3 = 0;
  v10 = v0 & 0xFFFFFFFFFFFFFF8;
  v6 = &unk_279C42000;
  while (1)
  {
    if (v40 == v3)
    {

      goto LABEL_22;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x26D625BD0](v3, v0);
    }

    else
    {
      if (v3 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v41 = *(v0 + 8 * v3 + 32);
    }

    v42 = v41;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v43 = [v41 proximity];
    if ((v43 - 1) >= 4)
    {
      break;
    }

    ++v3;
  }

  if (!v43)
  {

    goto LABEL_23;
  }

  v63 = v43;
  sub_268B38474();
  __break(1u);
}

void sub_2689D54E8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_141();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v68 - v18;
  if (v4)
  {
    if (v4 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_20_13(v17, qword_2802CDA10);
      v20 = OUTLINED_FUNCTION_42_4();
      v21(v20);

      v22 = sub_268B37A34();
      v23 = sub_268B37F04();
      sub_268958D4C(v6, 1u);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_172_0();
        v25 = OUTLINED_FUNCTION_173_0();
        v75 = v25;
        *v24 = 136315138;
        v26 = type metadata accessor for Device();
        v27 = MEMORY[0x26D6256F0](v6, v26);
        OUTLINED_FUNCTION_30_3(v27, v28);
        v73 = v2;
        OUTLINED_FUNCTION_16_7();
        *(v24 + 4) = v9;
        _os_log_impl(&dword_2688BB000, v22, v23, "ResumeMediaIntentHandler#resolveDevices Disambiguating between devices: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v2[1](v0, v7);
        v2 = v73;
      }

      else
      {

        (*(v9 + 8))(v0, v7);
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v55 = OUTLINED_FUNCTION_29_6(v57);
      OUTLINED_FUNCTION_11_17(v55, xmmword_268B3BBA0);
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      v56 = sub_268B2CCFC(v6);
    }

    else
    {
      v73 = v2;
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_20_13(v17, qword_2802CDA10);
      v71 = *(v9 + 16);
      v72 = v40;
      v71(v19);
      v41 = sub_268B37A34();
      v42 = sub_268B37EE4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_172_0();
        v70 = v9;
        v44 = v43;
        v69 = OUTLINED_FUNCTION_173_0();
        v75 = v69;
        *v44 = 136315138;
        v74 = v6 & 1;
        sub_26890C84C();
        v45 = sub_268B384A4();
        v47 = OUTLINED_FUNCTION_48_5(v45, v46);

        *(v44 + 4) = v47;
        _os_log_impl(&dword_2688BB000, v41, v42, "ResumeMediaIntentHandler#resolveDevices Error resolving devices: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        OUTLINED_FUNCTION_12();
        v9 = v70;
        OUTLINED_FUNCTION_12();
      }

      v48 = *(v9 + 8);
      v48(v19, v7);
      v2 = v73;
      if ((v6 & 1) == 0)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v66 = OUTLINED_FUNCTION_29_6(v65);
        OUTLINED_FUNCTION_11_17(v66, xmmword_268B3BBA0);
        type metadata accessor for ResumeMediaDevicesResolutionResult();
        v66[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v71)(v13, v72, v7);
      v49 = sub_268B37A34();
      v50 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v50))
      {
        v51 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v51);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v52, v53, "ResumeMediaIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v48(v13, v7);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v55 = OUTLINED_FUNCTION_29_6(v54);
      OUTLINED_FUNCTION_11_17(v55, xmmword_268B3BBA0);
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      v56 = sub_268B17B04(1);
    }

    v55[2].n128_u64[0] = v56;
LABEL_32:
    v67 = sub_268B37CE4();
    (v2)[2](v2, v67);

    _Block_release(v2);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_20_13(v17, qword_2802CDA10);
  v29 = OUTLINED_FUNCTION_39_3();
  v30(v29);

  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  sub_268958D4C(v6, 0);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_172_0();
    v34 = OUTLINED_FUNCTION_173_0();
    v75 = v34;
    *v33 = 136315138;
    v35 = type metadata accessor for Device();
    v36 = MEMORY[0x26D6256F0](v6, v35);
    OUTLINED_FUNCTION_30_3(v36, v37);
    v73 = v2;
    OUTLINED_FUNCTION_16_7();
    *(v33 + 4) = v9;
    _os_log_impl(&dword_2688BB000, v31, v32, "ResumeMediaIntentHandler#resolveDevices Success resolving devices: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v38 = OUTLINED_FUNCTION_192();
    v39(v38);
    v2 = v73;
  }

  else
  {

    v58 = OUTLINED_FUNCTION_192();
    v59(v58);
  }

  v60 = sub_2688EFD0C();
  if (!v60)
  {
LABEL_30:
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    goto LABEL_32;
  }

  v61 = v60;
  v75 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v61 & 0x8000000000000000) == 0)
  {
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    v62 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x26D625BD0](v62, v6);
      }

      else
      {
        v63 = *(v6 + 8 * v62 + 32);
      }

      v64 = v63;
      ++v62;
      sub_268B2CC98(v63);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v61 != v62);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_2689D5BA8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v63 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
      (*(v11 + 16))(v0);

      v20 = sub_268B37A34();
      v21 = sub_268B37F04();
      sub_268958D4C(v8, 1u);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_172_0();
        v23 = OUTLINED_FUNCTION_173_0();
        v65 = v23;
        *v22 = 136315138;
        v24 = type metadata accessor for Device();
        v25 = MEMORY[0x26D6256F0](v8, v24);
        OUTLINED_FUNCTION_30_3(v25, v26);
        v62 = v9;
        OUTLINED_FUNCTION_16_7();
        *(v22 + 4) = v3;
        _os_log_impl(&dword_2688BB000, v20, v21, "ResumeMediaIntentHandler#resolveDevices Disambiguating between devices: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v11 + 8))(v0, v62);
      }

      else
      {

        (*(v11 + 8))(v0, v9);
      }

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v49 = OUTLINED_FUNCTION_29_6(v51);
      OUTLINED_FUNCTION_11_17(v49, xmmword_268B3BBA0);
      type metadata accessor for ResumeMediaDevicesResolutionResult();
      v50 = sub_268B2CCFC(v8);
    }

    else
    {
      v62 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
      v60 = *(v11 + 16);
      v61 = v34;
      v60(v19);
      v35 = sub_268B37A34();
      v36 = sub_268B37EE4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_172_0();
        v59 = v11;
        v38 = v37;
        v58 = OUTLINED_FUNCTION_173_0();
        v65 = v58;
        *v38 = 136315138;
        v64 = v8 & 1;
        sub_26890C84C();
        v39 = sub_268B384A4();
        v41 = OUTLINED_FUNCTION_48_5(v39, v40);

        *(v38 + 4) = v41;
        _os_log_impl(&dword_2688BB000, v35, v36, "ResumeMediaIntentHandler#resolveDevices Error resolving devices: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        OUTLINED_FUNCTION_12();
        v11 = v59;
        OUTLINED_FUNCTION_12();
      }

      v42 = *(v11 + 8);
      v42(v19, v9);
      if (v8)
      {
        (v60)(v1, v61, v9);
        v43 = sub_268B37A34();
        v44 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v44))
        {
          v45 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v45);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v46, v47, "ResumeMediaIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v42(v1, v9);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v49 = OUTLINED_FUNCTION_29_6(v48);
        OUTLINED_FUNCTION_11_17(v49, xmmword_268B3BBA0);
        type metadata accessor for ResumeMediaDevicesResolutionResult();
        v50 = sub_268B17B04(1);
      }

      else
      {
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v49 = OUTLINED_FUNCTION_29_6(v57);
        OUTLINED_FUNCTION_11_17(v49, xmmword_268B3BBA0);
        type metadata accessor for ResumeMediaDevicesResolutionResult();
        v50 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v49[2].n128_u64[0] = v50;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
  (*(v11 + 16))(v16);

  v27 = sub_268B37A34();
  v28 = sub_268B37F04();
  sub_268958D4C(v8, 0);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_172_0();
    v30 = OUTLINED_FUNCTION_173_0();
    v65 = v30;
    *v29 = 136315138;
    v31 = type metadata accessor for Device();
    v32 = MEMORY[0x26D6256F0](v8, v31);
    OUTLINED_FUNCTION_30_3(v32, v33);
    v62 = v9;
    OUTLINED_FUNCTION_16_7();
    *(v29 + 4) = v3;
    _os_log_impl(&dword_2688BB000, v27, v28, "ResumeMediaIntentHandler#resolveDevices Success resolving devices: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v11 + 8))(v16, v62);
  }

  else
  {

    (*(v11 + 8))(v16, v9);
  }

  v52 = sub_2688EFD0C();
  v49 = MEMORY[0x277D84F90];
  if (!v52)
  {
    goto LABEL_32;
  }

  v53 = v52;
  v65 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v53 & 0x8000000000000000) == 0)
  {
    type metadata accessor for ResumeMediaDevicesResolutionResult();
    v54 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x26D625BD0](v54, v8);
      }

      else
      {
        v55 = *(v8 + 8 * v54 + 32);
      }

      v56 = v55;
      ++v54;
      sub_268B2CC98(v55);

      sub_268B38214();
      sub_268B38244();
      OUTLINED_FUNCTION_43_5();
      sub_268B38254();
      sub_268B38224();
    }

    while (v53 != v54);
    v49 = v65;
LABEL_32:
    v63(v49);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_2689D6268(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_86_1();
  type metadata accessor for ResumeMediaDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_2689D62D0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v5 = ResumeMediaIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_2689D633C(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v4 = ResumeMediaIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689D63C8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_2689D6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  sub_2688F1FA4(v23, &a9 - v33, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *(v26 + 32);
    v35(v31, v34, v24);
    sub_268B36EC4();
    v36 = *(v26 + 8);
    v36(v31, v24);
    v37 = OUTLINED_FUNCTION_189();
    (v35)(v37);
    v38 = OUTLINED_FUNCTION_103();
    v40 = v39(v38);
    if (v40 != *MEMORY[0x277D5F6C8] && v40 != *MEMORY[0x277D5F688] && v40 != *MEMORY[0x277D5F690])
    {
      v41 = OUTLINED_FUNCTION_103();
      (v36)(v41);
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689D6670(void *a1, uint64_t a2, char *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v47 = a2;
  v48 = a3;
  v8 = sub_268B37A54();
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_268958EDC;
  *(v12 + 24) = v11;
  v49 = a5;

  v13 = [a1 mediaType];
  v14 = sub_268AACBE0();
  v15 = sub_268A62F08(v13, v14);
  if (v16)
  {
    sub_2689A51F0(v15, v16, a1);
    v17 = v48;
    __swift_project_boxed_opaque_existential_1(&v48[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v48[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v47;
    v18[4] = a1;
    v18[5] = sub_268958EA4;
    v18[6] = v12;

    v19 = a1;

    v20 = v17;
    sub_268B36CE4();
  }

  else
  {
    v21 = v10;
    v22 = v46;
    v23 = v8;
    v24 = v12;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v8, qword_2802CDA10);
    v26 = v22;
    v27 = v21;
    (*(v22 + 16))(v21, v25, v23);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    v30 = os_log_type_enabled(v28, v29);
    v48 = v24;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v47 = v11;
      v32 = v31;
      v33 = swift_slowAlloc();
      v51 = v33;
      *v32 = 136446466;
      v34 = NLMediaType.description.getter(v13);
      v36 = sub_26892CDB8(v34, v35, &v51);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v50 = sub_268AACBE0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D58, &unk_268B42830);
      v37 = sub_268B38094();
      v39 = sub_26892CDB8(v37, v38, &v51);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_2688BB000, v28, v29, "ResumeMediaIntentHandler#resumeLocalFirstPartyAppForMediaType App bundle id for mediaType %{public}s on %{public}s is nil. Returning failure", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v33, -1, -1);
      MEMORY[0x26D6266E0](v32, -1, -1);

      (*(v26 + 8))(v27, v23);
    }

    else
    {

      (*(v22 + 8))(v27, v23);
    }

    v40 = a4;
    v41 = sub_268B36EA4();
    v42 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
    v43 = v41;
    v44 = ResumeMediaIntentResponse.init(code:userActivity:)(5, v41);
    v51 = v44;

    v40(&v51);
  }
}

void sub_2689D6B0C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v41 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = (v14 - v13);
  v16 = [v8 mediaType];
  v17 = sub_268AACBE0();
  v18 = sub_268A62F08(v16, v17);
  if (v19)
  {
    sub_2689A51F0(v18, v19, v8);
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
    OUTLINED_FUNCTION_24_9();
    v20 = v3;
    v21 = swift_allocObject();
    v21[2] = v1;
    v21[3] = v6;
    v21[4] = v8;
    v21[5] = v41;
    v21[6] = v20;

    v22 = v8;

    v23 = v1;
    sub_268B36CE4();

    OUTLINED_FUNCTION_23();
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
    v25 = v11;
    v26 = v9;
    v27 = v15;
    (*(v25 + 16))(v15);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v30 = 136446466;
      v31 = NLMediaType.description.getter(v16);
      v33 = v25;
      v34 = OUTLINED_FUNCTION_48_5(v31, v32);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v42 = sub_268AACBE0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D58, &unk_268B42830);
      v15 = &v42;
      v35 = sub_268B38094();
      v37 = OUTLINED_FUNCTION_48_5(v35, v36);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_2688BB000, v28, v29, "ResumeMediaIntentHandler#resumeLocalFirstPartyAppForMediaType App bundle id for mediaType %{public}s on %{public}s is nil. Returning failure", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (*(v33 + 8))(v27, v26);
    }

    else
    {

      (*(v25 + 8))(v15, v26);
    }

    sub_268B36EA4();
    OUTLINED_FUNCTION_86_1();
    v38 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
    v39 = v15;
    v40 = ResumeMediaIntentResponse.init(code:userActivity:)(5, v15);
    v41();

    OUTLINED_FUNCTION_23();
  }
}

void sub_2689D6EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = sub_268B36ED4();
  sub_2689D3650();
  sub_2689D6454(a1, v8, v9, v10, v11, v12, v13, v14, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
  v16 = v15;
  v17 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v18 = v7;
  v21 = ResumeMediaIntentResponse.init(code:userActivity:)(v16, v7);
  a5();
}

void sub_2689D6FB0()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v38 = v1;
  v39 = v12;
  OUTLINED_FUNCTION_82(v6, qword_2802CDA10);
  v40 = v15;
  v41 = *(v8 + 16);
  v41(v0);

  v16 = sub_268B37A34();
  v17 = sub_268B37EC4();
  v37 = v3;
  if (os_log_type_enabled(v16, v17))
  {
    v36 = v8;
    v18 = swift_slowAlloc();
    v1 = OUTLINED_FUNCTION_173_0();
    v42 = v1;
    *v18 = 134218242;
    *(v18 + 4) = sub_2688EFD0C();

    *(v18 + 12) = 2082;
    v19 = NLMediaType.description.getter(v3);
    v21 = sub_26892CDB8(v19, v20, &v42);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_2688BB000, v16, v17, "ResumeMediaIntentHandler#shouldResumeLocalFirstPartyAppForMediaType Determining if we should resume the local first party app using %ld device(s) and mediaType %{public}s.", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
    OUTLINED_FUNCTION_83_0();
    v8 = v36;
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v12 = *(v8 + 8);
  v22 = OUTLINED_FUNCTION_103();
  (v12)(v22);
  if (sub_2688EFD0C() == 1)
  {
    v23 = sub_2688EFD0C();
    v24 = 0;
    v1 = (v5 & 0xC000000000000001);
    v3 = v5 & 0xFFFFFFFFFFFFFF8;
    while (v23 != v24)
    {
      if (v1)
      {
        v25 = MEMORY[0x26D625BD0](v24, v5);
      }

      else
      {
        if (v24 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v25 = *(v5 + 8 * v24 + 32);
      }

      v0 = v25;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v26 = sub_2689840D4();
      if ((v26 - 1) >= 4)
      {
        if (v26)
        {
          v42 = v26;
          sub_268B38474();
          __break(1u);
          return;
        }

        v27 = [v0 context];

        if (!v27)
        {
          break;
        }

        v28 = sub_268A514F4(v37, 1, 1);
        v29 = sub_268AD404C(v37, qword_2802A7A80) & (v28 ^ 1);
        v30 = v38;
        (v41)(v38, v40, v6);
        v31 = sub_268B37A34();
        v32 = sub_268B37F04();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_236();
          *v33 = 67109120;
          *(v33 + 4) = v29 & 1;
          _os_log_impl(&dword_2688BB000, v31, v32, "ResumeMediaIntentHandler#shouldResumeLocalFirstPartyAppForMediaType shouldResumeLocalFirstPartyAppForMediaType = %{BOOL}d", v33, 8u);
          OUTLINED_FUNCTION_83_0();
        }

        goto LABEL_22;
      }

      ++v24;
    }
  }

  v30 = v39;
  (v41)(v39, v40, v6);
  v27 = sub_268B37A34();
  v34 = sub_268B37F04();
  if (os_log_type_enabled(v27, v34))
  {
    v35 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v35);
    _os_log_impl(&dword_2688BB000, v27, v34, "ResumeMediaIntentHandler#shouldResumeLocalFirstPartyAppForMediaType More than one device found in the intent or primary device not found. shouldResumeLocalFirstPartyAppForMediaType = false", v1, 2u);
    OUTLINED_FUNCTION_83_0();
  }

LABEL_22:

  (v12)(v30, v6);
  OUTLINED_FUNCTION_23();
}

void sub_2689D74A4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v125 = v5;
  v128 = v6;
  v129 = v7;
  v9 = v8;
  LODWORD(v126) = v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v121 = &v117 - v12;
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  v118 = v17 - v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v122 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v119 = v22;
  OUTLINED_FUNCTION_8();
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_3();
  v25 = swift_allocObject();
  v123 = v4;
  *(v25 + 16) = v4;
  *(v25 + 24) = v2;
  OUTLINED_FUNCTION_0_3();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_268958EDC;
  *(v26 + 24) = v25;
  v130 = v26;
  v27 = qword_2802A4F30;
  swift_retain_n();
  v127 = v25;
  swift_retain_n();
  if (v27 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v28 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v29 = *(v15 + 16);
  v131 = v13;
  v124 = v29;
  v29(v0, v28, v13);
  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_236();
    *v32 = 67109120;
    *(v32 + 4) = v126 & 1;
    _os_log_impl(&dword_2688BB000, v30, v31, "Prepare for audio handoff came back with result: %{BOOL}d", v32, 8u);
    OUTLINED_FUNCTION_12();
  }

  v33 = *(v15 + 8);
  (v33)(v0, v131);
  sub_2689D8C4C(v9);
  if (v34)
  {
    v35 = v128;
    __swift_project_boxed_opaque_existential_1(&v128[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v128[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
    OUTLINED_FUNCTION_24_9();
    v36 = swift_allocObject();
    v36[2] = v35;
    v37 = v130;
    v36[3] = v129;
    v36[4] = v9;
    v36[5] = sub_268958EA4;
    v36[6] = v37;

    v38 = v9;

    v39 = v35;
    OUTLINED_FUNCTION_189();
    sub_268B36CE4();
    OUTLINED_FUNCTION_47_3();

LABEL_7:

    goto LABEL_8;
  }

  v126 = v15 + 8;
  [v9 mediaType];
  v40 = v125;
  sub_2689D6FB0();
  if ((v41 & 1) == 0)
  {
    OUTLINED_FUNCTION_24_9();
    v50 = swift_allocObject();
    v51 = v128;
    v52 = v129;
    v50[2] = v128;
    v50[3] = v52;
    v50[4] = v9;
    v50[5] = sub_268958EA4;
    v117 = v50;
    v50[6] = v130;

    v53 = v9;

    v128 = v51;
    sub_268921344();
    if (!v54[2])
    {

      OUTLINED_FUNCTION_14_10();
      v60();
      v61 = sub_268B37A34();
      v62 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v62))
      {
        v63 = OUTLINED_FUNCTION_14();
        *v63 = 0;
        OUTLINED_FUNCTION_72();
        _os_log_impl(v64, v65, v66, v67, v63, 2u);
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_36_7();
      v33();
      v68 = *MEMORY[0x277D5F6D8];
      sub_268B36F24();
      OUTLINED_FUNCTION_4();
      v70 = v121;
      (*(v69 + 104))(v121, v68);
      swift_storeEnumTagMultiPayload();
      v71 = OUTLINED_FUNCTION_34_5();
      sub_2689D3650();
      sub_2689D6454(v70, v72, v73, v74, v75, v76, v77, v78, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
      OUTLINED_FUNCTION_86_1();
      objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
      v79 = v71;
      v80 = OUTLINED_FUNCTION_103();
      v82 = ResumeMediaIntentResponse.init(code:userActivity:)(v80, v81);
      v132 = v82;

      v123(&v132);

      sub_2688C058C(v70, &qword_2802A5DE8, &qword_268B3D790);
      OUTLINED_FUNCTION_47_3();
      goto LABEL_7;
    }

    v56 = v54[4];
    v55 = v54[5];

    if (sub_268B37734() == v56 && v57 == v55)
    {
    }

    else
    {
      v59 = sub_268B38444();

      if ((v59 & 1) == 0)
      {
        OUTLINED_FUNCTION_14_10();
        v100();

        v101 = sub_268B37A34();
        v102 = sub_268B37F04();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = OUTLINED_FUNCTION_172_0();
          v104 = OUTLINED_FUNCTION_236();
          *v103 = 138412290;
          type metadata accessor for Device();
          v105 = sub_268B37CE4();
          *(v103 + 4) = v105;
          *v104 = v105;
          OUTLINED_FUNCTION_37_7();
          _os_log_impl(v106, v107, v108, v109, v103, 0xCu);
          sub_2688C058C(v104, &qword_2802A6420, &unk_268B3C680);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();
        }

        OUTLINED_FUNCTION_36_7();
        v33();
        v110 = v128;
        __swift_project_boxed_opaque_existential_1(&v128[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService], *&v128[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService + 24]);
        sub_268920C54(v40);
        v112 = v111;
        v113 = OUTLINED_FUNCTION_3_25();
        sub_268949478(v113, v114, v112, v40);

        __swift_project_boxed_opaque_existential_1(&v110[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v110[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
        OUTLINED_FUNCTION_0_3();
        v115 = swift_allocObject();
        v116 = v117;
        *(v115 + 16) = sub_2689D9AA8;
        *(v115 + 24) = v116;

        sub_268B36E54();
        OUTLINED_FUNCTION_47_3();

        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_14_10();
    v83();
    v84 = sub_268B37A34();
    v85 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v85))
    {
      v86 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v86);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v87, v88, "Resuming in here");
      OUTLINED_FUNCTION_83_0();
    }

    OUTLINED_FUNCTION_36_7();
    v33();
    v89 = v128;
    __swift_project_boxed_opaque_existential_1(&v128[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService], *&v128[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v40 & 0xC000000000000001) == 0)
      {
        v91 = *(v40 + 32);
LABEL_29:
        *(inited + 32) = v91;
        sub_268920C54(inited);
        v93 = v92;
        v94 = OUTLINED_FUNCTION_3_25();
        sub_268949478(v94, v95, v93, inited);

        swift_setDeallocating();
        sub_268ACE718();
        __swift_project_boxed_opaque_existential_1(&v89[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController], *&v89[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController + 24]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
        v96 = swift_allocObject();
        OUTLINED_FUNCTION_11_17(v96, xmmword_268B3BBC0);
        sub_268B36C54();
        v96[2].n128_u64[0] = sub_268B36C24();
        v96[2].n128_u64[1] = v97;
        OUTLINED_FUNCTION_0_3();
        v98 = swift_allocObject();
        v99 = v117;
        *(v98 + 16) = sub_2689D9AA8;
        *(v98 + 24) = v99;

        OUTLINED_FUNCTION_39_3();
        sub_268B36E54();
        OUTLINED_FUNCTION_47_3();

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v91 = MEMORY[0x26D625BD0](0, v40);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_14_10();
  v42();
  v43 = sub_268B37A34();
  v44 = sub_268B37EC4();
  if (OUTLINED_FUNCTION_115_0(v44))
  {
    v45 = OUTLINED_FUNCTION_14();
    *v45 = 0;
    OUTLINED_FUNCTION_37_7();
    _os_log_impl(v46, v47, v48, v49, v45, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_36_7();
  v33();

  sub_2689D6670(v9, v129, v128, v123, v2);

LABEL_8:

  OUTLINED_FUNCTION_23();
}

void sub_2689D7F68()
{
  OUTLINED_FUNCTION_26();
  v119 = v2;
  v120 = v1;
  v121 = v3;
  v122 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v115 = &v110 - v12;
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_0();
  v112 = (v17 - v18);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v116 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v113 = v22;
  OUTLINED_FUNCTION_8();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v110 - v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v13, qword_2802CDA10);
  v27 = *(v15 + 16);
  v117 = v28;
  v118 = v27;
  (v27)(v0);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_236();
    *v31 = 67109120;
    *(v31 + 4) = v10 & 1;
    _os_log_impl(&dword_2688BB000, v29, v30, "Prepare for audio handoff came back with result: %{BOOL}d", v31, 8u);
    OUTLINED_FUNCTION_12();
  }

  v32 = *(v15 + 8);
  v33 = OUTLINED_FUNCTION_189();
  v32(v33);
  sub_2689D8C4C(v8);
  if (v34)
  {
    OUTLINED_FUNCTION_32_5(OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController);
    OUTLINED_FUNCTION_24_9();
    v35 = swift_allocObject();
    v35[2] = v6;
    v36 = v121;
    v35[3] = v120;
    v35[4] = v8;
    v37 = v122;
    v35[5] = v36;
    v35[6] = v37;

    v38 = v8;

    v39 = v6;
    sub_268B36CE4();
LABEL_7:

LABEL_8:

    goto LABEL_23;
  }

  [v8 mediaType];
  sub_2689D6FB0();
  if (v40)
  {
    v118(v26, v117, v13);
    v41 = sub_268B37A34();
    v42 = sub_268B37EC4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_14();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "User asked to Resume [mediaType], however no devices with a matching nowPlayingMediaType was found. Falling back to resuming the corresponding first party app locally", v43, 2u);
      OUTLINED_FUNCTION_12();
    }

    v44 = OUTLINED_FUNCTION_43_5();
    v32(v44);
    sub_2689D6B0C();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_24_9();
  v45 = swift_allocObject();
  v45[2] = v6;
  v46 = v121;
  v45[3] = v120;
  v45[4] = v8;
  v47 = v122;
  v111 = v45;
  v45[5] = v46;
  v45[6] = v47;

  v8;

  v48 = v6;
  sub_268921344();
  if (v49[2])
  {
    v51 = v49[4];
    v50 = v49[5];

    if (sub_268B37734() == v51 && v52 == v50)
    {
    }

    else
    {
      v54 = sub_268B38444();

      if ((v54 & 1) == 0)
      {
        v118(v112, v117, v13);
        v94 = v119;

        v95 = sub_268B37A34();
        v96 = sub_268B37F04();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = OUTLINED_FUNCTION_172_0();
          v98 = OUTLINED_FUNCTION_236();
          *v97 = 138412290;
          type metadata accessor for Device();
          v99 = sub_268B37CE4();
          *(v97 + 4) = v99;
          *v98 = v99;
          OUTLINED_FUNCTION_72();
          _os_log_impl(v100, v101, v102, v103, v97, 0xCu);
          sub_2688C058C(v98, &qword_2802A6420, &unk_268B3C680);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();
        }

        (v32)(v112, v13);
        __swift_project_boxed_opaque_existential_1(&v48[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService], *&v48[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService + 24]);
        sub_268920C54(v94);
        v105 = v104;
        v106 = OUTLINED_FUNCTION_3_25();
        sub_268949478(v106, v107, v105, v94);

        OUTLINED_FUNCTION_32_5(OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController);
        OUTLINED_FUNCTION_0_3();
        v108 = swift_allocObject();
        v109 = v111;
        *(v108 + 16) = sub_2689D969C;
        *(v108 + 24) = v109;

        sub_268B36E54();

        goto LABEL_8;
      }
    }

    v75 = v116;
    v118(v116, v117, v13);
    v76 = sub_268B37A34();
    v77 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v77))
    {
      v78 = OUTLINED_FUNCTION_14();
      *v78 = 0;
      OUTLINED_FUNCTION_72();
      _os_log_impl(v79, v80, v81, v82, v78, 2u);
      OUTLINED_FUNCTION_12();
    }

    (v32)(v75, v13);
    __swift_project_boxed_opaque_existential_1(&v48[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService], *&v48[OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_analyticsService + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    v84 = v119;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v84 & 0xC000000000000001) == 0)
      {
        v85 = *(v84 + 32);
LABEL_30:
        *(inited + 32) = v85;
        sub_268920C54(inited);
        v87 = v86;
        v88 = OUTLINED_FUNCTION_3_25();
        sub_268949478(v88, v89, v87, inited);

        swift_setDeallocating();
        sub_268ACE718();
        OUTLINED_FUNCTION_32_5(OBJC_IVAR____TtC26SiriPlaybackControlIntents24ResumeMediaIntentHandler_playbackController);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
        v90 = swift_allocObject();
        OUTLINED_FUNCTION_11_17(v90, xmmword_268B3BBC0);
        sub_268B36C54();
        v90[2].n128_u64[0] = sub_268B36C24();
        v90[2].n128_u64[1] = v91;
        OUTLINED_FUNCTION_0_3();
        v92 = swift_allocObject();
        v93 = v111;
        *(v92 + 16) = sub_2689D969C;
        *(v92 + 24) = v93;

        sub_268B36E54();

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v85 = MEMORY[0x26D625BD0](0, v84);
    goto LABEL_30;
  }

  v119 = v48;

  v118(v113, v117, v13);
  v55 = sub_268B37A34();
  v56 = sub_268B37EE4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = OUTLINED_FUNCTION_14();
    *v57 = 0;
    _os_log_impl(&dword_2688BB000, v55, v56, "Failed to handle Resume intent. No route ids found.", v57, 2u);
    OUTLINED_FUNCTION_12();
  }

  v58 = OUTLINED_FUNCTION_43_5();
  v32(v58);
  v59 = *MEMORY[0x277D5F6D8];
  sub_268B36F24();
  OUTLINED_FUNCTION_4();
  v61 = v115;
  (*(v60 + 104))(v115, v59);
  swift_storeEnumTagMultiPayload();
  v62 = OUTLINED_FUNCTION_34_5();
  sub_2689D3650();
  sub_2689D6454(v61, v63, v64, v65, v66, v67, v68, v69, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
  v70 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v71 = v62;
  v72 = OUTLINED_FUNCTION_43_5();
  v74 = ResumeMediaIntentResponse.init(code:userActivity:)(v72, v73);
  v121();

  sub_2688C058C(v61, &qword_2802A5DE8, &qword_268B3D790);
LABEL_23:
  OUTLINED_FUNCTION_23();
}

void sub_2689D8928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = sub_268B36ED4();
  sub_2689D3650();
  sub_2689D6454(a1, v8, v9, v10, v11, v12, v13, v14, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
  v16 = v15;
  v17 = objc_allocWithZone(type metadata accessor for ResumeMediaIntentResponse());
  v18 = v7;
  v21 = ResumeMediaIntentResponse.init(code:userActivity:)(v16, v7);
  a5();
}