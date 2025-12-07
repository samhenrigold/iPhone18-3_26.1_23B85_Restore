uint64_t sub_268A43B88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v76 = a6;
  v77 = a7;
  v74 = a3;
  v75 = a5;
  v69 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v64 - v14;
  v73 = sub_268B34E24();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_268B37A54();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v24);
  v26 = (&v64 - v25);
  sub_2688F1FA4(a1, &v64 - v25, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = a2;
    v27 = *v26;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v28 = v66;
    v29 = __swift_project_value_buffer(v66, qword_2802CDA10);
    v30 = v65;
    (*(v65 + 16))(v17, v29, v28);
    v31 = v27;
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v78 = v27;
      v79[0] = v35;
      *v34 = 136446210;
      v36 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
      v37 = sub_268B37C24();
      v39 = sub_26892CDB8(v37, v38, v79);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2688BB000, v32, v33, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse An error occurred in generating the dialog for GetVolumeLevel: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x26D6266E0](v35, -1, -1);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    (*(v30 + 8))(v17, v28);
    v40 = v74;
    v41 = v68;
    v42 = sub_268B36E84();
    if (v43)
    {
      v44 = v42;
      v45 = v43;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v44 = v50;
      v45 = v51;
    }

    v52 = __swift_project_boxed_opaque_existential_1(v64 + 12, v64[15]);
    (*(v71 + 104))(v70, *MEMORY[0x277D5BC00], v73);
    v53 = sub_268B350F4();
    v54 = v72;
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v53);
    v55 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v55);
    v56 = *v52;
    v57 = v67;
    sub_2688F1FA4(v54, v67, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v57, 1, v53) == 1)
    {
      sub_2688C058C(v57, &unk_2802A57B0, &unk_268B3CE00);
      v58 = 0;
      v59 = 0;
    }

    else
    {
      v58 = sub_268B350B4();
      v59 = v60;
      (*(*(v53 - 8) + 8))(v57, v53);
    }

    v63 = v56;
    v61 = v70;
    sub_2688E3F08(v75, v70, v40, v58, v59, v44, v45, v41, v63);

    sub_2688C058C(v41, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v72, &unk_2802A57B0, &unk_268B3CE00);
    (*(v71 + 8))(v61, v73);
    v79[0] = v27;
    v80 = 1;
    v62 = v27;
    v76(v79);

    return sub_2688C058C(v79, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v26, v23);
    __swift_project_boxed_opaque_existential_1(a2 + 22, a2[25]);
    v46 = sub_268B36FA4();
    sub_2688F1FA4(v23, v21, &unk_2802A56E0, &unk_268B3CDF0);
    v47 = *&v21[*(v18 + 48)];
    if (v46)
    {
      sub_268A44B4C();
    }

    else
    {
      sub_268A45380();
    }

    sub_2688C058C(v23, &unk_2802A56E0, &unk_268B3CDF0);
    v48 = sub_268B350F4();
    return (*(*(v48 - 8) + 8))(v21, v48);
  }
}

uint64_t sub_268A4436C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v76 = a6;
  v77 = a7;
  v74 = a3;
  v75 = a5;
  v69 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v64 - v14;
  v73 = sub_268B34E24();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_268B37A54();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v24);
  v26 = (&v64 - v25);
  sub_2688F1FA4(a1, &v64 - v25, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = a2;
    v27 = *v26;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v28 = v66;
    v29 = __swift_project_value_buffer(v66, qword_2802CDA10);
    v30 = v65;
    (*(v65 + 16))(v17, v29, v28);
    v31 = v27;
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v78 = v27;
      v79[0] = v35;
      *v34 = 136446210;
      v36 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
      v37 = sub_268B37C24();
      v39 = sub_26892CDB8(v37, v38, v79);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2688BB000, v32, v33, "GetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse An error occurred in generating the dialog for GetVolumeLevel: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x26D6266E0](v35, -1, -1);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    (*(v30 + 8))(v17, v28);
    v40 = v74;
    v41 = v68;
    v42 = sub_268B36E84();
    if (v43)
    {
      v44 = v42;
      v45 = v43;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v44 = v50;
      v45 = v51;
    }

    v52 = __swift_project_boxed_opaque_existential_1(v64 + 12, v64[15]);
    (*(v71 + 104))(v70, *MEMORY[0x277D5BC00], v73);
    v53 = sub_268B350F4();
    v54 = v72;
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v53);
    v55 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v55);
    v56 = *v52;
    v57 = v67;
    sub_2688F1FA4(v54, v67, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v57, 1, v53) == 1)
    {
      sub_2688C058C(v57, &unk_2802A57B0, &unk_268B3CE00);
      v58 = 0;
      v59 = 0;
    }

    else
    {
      v58 = sub_268B350B4();
      v59 = v60;
      (*(*(v53 - 8) + 8))(v57, v53);
    }

    v63 = v56;
    v61 = v70;
    sub_2688E3F08(v75, v70, v40, v58, v59, v44, v45, v41, v63);

    sub_2688C058C(v41, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v72, &unk_2802A57B0, &unk_268B3CE00);
    (*(v71 + 8))(v61, v73);
    v79[0] = v27;
    v80 = 1;
    v62 = v27;
    v76(v79);

    return sub_2688C058C(v79, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v26, v23);
    __swift_project_boxed_opaque_existential_1(a2 + 22, a2[25]);
    v46 = sub_268B36FA4();
    sub_2688F1FA4(v23, v21, &unk_2802A56E0, &unk_268B3CDF0);
    v47 = *&v21[*(v18 + 48)];
    if (v46)
    {
      sub_268A45B98();
    }

    else
    {
      sub_268A467BC();
    }

    sub_2688C058C(v23, &unk_2802A56E0, &unk_268B3CDF0);
    v48 = sub_268B350F4();
    return (*(*(v48 - 8) + 8))(v21, v48);
  }
}

void sub_268A44B4C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v105 = v2;
  v106 = v3;
  v99 = v4;
  v95 = v5;
  v114 = v6;
  v115 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v104 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v98 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v102 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_78();
  v110 = v20;
  OUTLINED_FUNCTION_9();
  v111 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v109 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v108 = v24 - v23;
  OUTLINED_FUNCTION_9();
  v25 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v100 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  v32 = &v93 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v103 = v35;
  OUTLINED_FUNCTION_8();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v93 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v93 - v40;
  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 16))(v41, v114, v42);
  v112 = v33;
  v44 = *(v33 + 48);
  v114 = v41;
  *&v41[v44] = v9;
  v45 = qword_2802A4F30;
  v46 = v9;
  if (v45 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v25, qword_2802CDA10);
  v47 = *(v27 + 16);
  v97 = v48;
  v113 = v25;
  v96 = v47;
  (v47)(v32);
  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();
  v51 = os_log_type_enabled(v49, v50);
  v107 = v43;
  if (v51)
  {
    v52 = OUTLINED_FUNCTION_14();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v49, v50, "GetVolumeLevelHandleIntentStrategy#intentNothingIsPlayingResponse...", v52, 2u);
    v43 = v107;
    OUTLINED_FUNCTION_12();
  }

  v53 = *(v27 + 8);
  v101 = v27 + 8;
  v94 = v53;
  v53(v32, v113);
  v54 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  v55 = v95;
  OUTLINED_FUNCTION_22_12(v95 + OBJC_IVAR___GetVolumeLevelIntentResponse_code);
  v116 = *(v55 + v54);
  sub_268B38404();
  OUTLINED_FUNCTION_21_14();
  sub_268947F08();
  v95 = v56;
  v58 = v57;

  v59 = __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  (*(v109 + 104))(v108, *MEMORY[0x277D5BC10], v111);
  sub_2688F1FA4(v114, v39, &unk_2802A56E0, &unk_268B3CDF0);

  v60 = v110;
  (*(v43 + 32))(v110, v39, v42);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v42);
  sub_268B34B94();
  v64 = v98;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  v69 = *v59;
  v70 = v60;
  v71 = v102;
  sub_2688F1FA4(v70, v102, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v71, 1, v42) == 1)
  {
    sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
    v72 = 0;
    v73 = 0;
  }

  else
  {
    v72 = sub_268B350B4();
    v73 = v74;
    (*(v43 + 8))(v71, v42);
  }

  v102 = v42;
  v92 = v69;
  v75 = v108;
  v76 = v115;
  sub_2688E3F08(v99, v108, v115, v72, v73, v95, v58, v64, v92);

  sub_2688C058C(v64, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v110, &unk_2802A57B0, &unk_268B3CE00);
  (*(v109 + 8))(v75, v111);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_26894B450();
  v77 = v100;
  v78 = v113;
  v96(v100, v97, v113);
  v79 = sub_268B37A34();
  v80 = sub_268B37ED4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = OUTLINED_FUNCTION_14();
    *v81 = 0;
    _os_log_impl(&dword_2688BB000, v79, v80, "GetVolumeLevelHandleIntentStrategy#intentHandledResponse returning output", v81, 2u);
    OUTLINED_FUNCTION_12();
  }

  v94(v77, v78);
  v82 = v1[35];
  v83 = v1[36];
  __swift_project_boxed_opaque_existential_1(v1 + 32, v82);
  v84 = v114;
  v85 = v103;
  sub_2688F1FA4(v114, v103, &unk_2802A56E0, &unk_268B3CDF0);
  v86 = *(v85 + *(v112 + 48));
  v87 = v104;
  sub_268A82B50(v76, v104);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  (*(v83 + 8))(v85, v86, v87, MEMORY[0x277D84F90], 0, v105, v106, v82, v83);

  sub_2688C058C(v87, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v84, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v107 + 8))(v85, v102);
  OUTLINED_FUNCTION_23();
}

void sub_268A45380()
{
  OUTLINED_FUNCTION_26();
  v98 = v0;
  v99 = v1;
  v100 = v2;
  v92 = v3;
  v89 = v4;
  v93 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v96 = v12;
  OUTLINED_FUNCTION_9();
  v97 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v95 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v94 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v91 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v90 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_78();
  v103 = v24;
  OUTLINED_FUNCTION_9();
  v104 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v102 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v101 = v28 - v27;
  OUTLINED_FUNCTION_9();
  v29 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v88 - v38;
  v40 = sub_268B350F4();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v39, v9, v40);
  v42 = *(v33 + 48);
  v105 = v39;
  *&v39[v42] = v7;
  v43 = qword_2802A4F30;
  v44 = v7;
  if (v43 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v29, qword_2802CDA10);
  v45 = OUTLINED_FUNCTION_139();
  v46(v45);
  v47 = sub_268B37A34();
  v48 = sub_268B37ED4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_14();
    *v49 = 0;
    _os_log_impl(&dword_2688BB000, v47, v48, "GetVolumeLevelHandleIntentStrategy#legacyNothingIsPlayingResponse...", v49, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v31 + 8))(v0, v29);
  v50 = OBJC_IVAR___GetVolumeLevelIntentResponse_code;
  v51 = v89;
  OUTLINED_FUNCTION_22_12(v89 + OBJC_IVAR___GetVolumeLevelIntentResponse_code);
  v108[0] = *(v51 + v50);
  sub_268B38404();
  OUTLINED_FUNCTION_21_14();
  v52 = v93;
  sub_268947F08();
  v54 = v53;
  v56 = v55;

  v57 = v98;
  v58 = __swift_project_boxed_opaque_existential_1(v98 + 12, v98[15]);
  (*(v102 + 104))(v101, *MEMORY[0x277D5BC10], v104);
  sub_2688F1FA4(v105, v37, &unk_2802A56E0, &unk_268B3CDF0);

  v59 = v103;
  (*(v41 + 32))(v103, v37, v40);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v40);
  sub_268B34B94();
  v63 = v91;
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  v68 = *v58;
  v69 = v90;
  sub_2688F1FA4(v59, v90, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v69, 1, v40) == 1)
  {
    sub_2688C058C(v69, &unk_2802A57B0, &unk_268B3CE00);
    v70 = 0;
    v71 = 0;
  }

  else
  {
    v89 = v68;
    v72 = v40;
    v73 = v54;
    v74 = v69;
    v70 = sub_268B350B4();
    v71 = v75;
    v76 = v74;
    v54 = v73;
    v77 = v72;
    v68 = v89;
    (*(v41 + 8))(v76, v77);
  }

  v87 = v68;
  v78 = v101;
  sub_2688E3F08(v92, v101, v52, v70, v71, v54, v56, v63, v87);

  sub_2688C058C(v63, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v103, &unk_2802A57B0, &unk_268B3CE00);
  (*(v102 + 8))(v78, v104);
  __swift_project_boxed_opaque_existential_1(v57 + 12, v57[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  v79 = v94;
  sub_268A82B50(v52, v94);
  v108[3] = sub_268B354F4();
  v108[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v108);
  __swift_project_boxed_opaque_existential_1(v57 + 7, v57[10]);
  sub_268B34CA4();
  v80 = v95;
  v81 = v96;
  v82 = v97;
  (*(v95 + 16))(v96, v79, v97);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v82);
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  v86 = v105;
  sub_268B34EF4();
  sub_2688C058C(v106, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v81, &qword_2802A57F0, &qword_268B3DDB0);
  (*(v80 + 8))(v79, v82);
  v109 = 0;
  v100(v108);
  sub_2688C058C(v86, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v108, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_268A45B98()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v74 = v2;
  v75 = v3;
  v73 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v76 = v12;
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  *(&v67 + 1) = v14 - v13;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v68 = v20;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v23);
  v69 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_78();
  v72 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v59 - v27;
  v29 = sub_268B350F4();
  v70 = *(v29 - 8);
  v71 = v29;
  (*(v70 + 16))(v28, v10);
  *&v67 = v19;
  v30 = *(v19 + 48);
  v78 = v28;
  *&v28[v30] = v8;
  v31 = qword_2802A4F30;
  v32 = v8;
  if (v31 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v15, qword_2802CDA10);
  v33 = OUTLINED_FUNCTION_139();
  v34(v33);
  v35 = sub_268B37A34();
  v36 = sub_268B37ED4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_14();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "GetVolumeLevelHandleIntentStrategy#intentHandledResponse...", v37, 2u);
    v1 = v0;
    OUTLINED_FUNCTION_12();
  }

  (*(v17 + 8))(v0, v15);
  v38 = *__swift_project_boxed_opaque_existential_1((v1 + 216), *(v1 + 240));
  if (v38)
  {
    v39 = sub_268B37BC4();
    v66 = [v38 BOOLForKey_];
  }

  else
  {
    v66 = 0;
  }

  sub_26890C900(v1 + 256, v79);
  v62 = v80;
  v63 = v81;
  v64 = __swift_project_boxed_opaque_existential_1(v79, v80);
  v40 = v78;
  v41 = v72;
  sub_2688F1FA4(v78, v72, &unk_2802A56E0, &unk_268B3CDF0);
  *&v67 = *(v41 + *(v67 + 48));
  v42 = sub_2689EEF44();
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  v61 = v44;
  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  v46 = *(&v67 + 1);
  sub_268A82B50(v6, *(&v67 + 1));
  HIDWORD(v60) = sub_2689F0948();
  v47 = v40;
  v48 = v69;
  sub_2688F1FA4(v47, v69, &unk_2802A56E0, &unk_268B3CDF0);
  v49 = v1;
  v50 = (*(v68 + 80) + 40) & ~*(v68 + 80);
  v51 = (v22 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v52[2] = v6;
  v52[3] = v49;
  v52[4] = v74;
  sub_2689186C8(v48, v52 + v50);
  v53 = (v52 + v51);
  v54 = v75;
  *v53 = v73;
  v53[1] = v54;
  v55 = v6;

  LOBYTE(v57) = BYTE4(v60) & 1;
  v56 = v67;
  sub_268A83648(v41, v67, v61, v45, v66, MEMORY[0x277D84F90], v46, v49 + 136, v57, sub_268A49108, v52, v62, v63, v58, v59, v60, v61, v62, v63, v64, v65, v67, v68, v69);

  (*(v76 + 8))(v46, v77);
  sub_2688C058C(v78, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v70 + 8))(v41, v71);
  __swift_destroy_boxed_opaque_existential_0Tm(v79);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A46100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
    _os_log_impl(&dword_2688BB000, v27, v28, "GetVolumeLevelHandleIntentStrategy#intentHandledResponse output has been created.", v29, 2u);
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
  v38 = __swift_project_boxed_opaque_existential_1((v71 + 96), *(v71 + 120));
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
  sub_2688E3F08(v61, v66, v70, v43, v44, v55, v37, v69, v53);

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
  (*(v67 + 8))(v46, v68);
  __swift_project_boxed_opaque_existential_1((v71 + 96), *(v71 + 120));
  sub_26894B450();
  v48 = v60;
  (v58)(v60, v59, v20);
  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2688BB000, v49, v50, "GetVolumeLevelHandleIntentStrategy#intentHandledResponse returning output", v51, 2u);
    MEMORY[0x26D6266E0](v51, -1, -1);
  }

  v57(v48, v20);
  return v65(v63);
}

void sub_268A467BC()
{
  OUTLINED_FUNCTION_26();
  v41 = v1;
  v42 = v0;
  v44 = v2;
  v45 = v3;
  v46 = v4;
  v43 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v22 + 16))(v21, v9);
  *&v21[*(v15 + 56)] = v7;
  v23 = qword_2802A4F30;
  v24 = v7;
  if (v23 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
  v25 = OUTLINED_FUNCTION_139();
  v26(v25);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_14();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "GetVolumeLevelHandleIntentStrategy#legacyHandledResponse...", v29, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v12 + 8))(v0, v10);
  sub_2688F1FA4(v21, v19, &unk_2802A56E0, &unk_268B3CDF0);
  v30 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v31 = (v17 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v35 = v42;
  v34 = v43;
  v33[2] = v43;
  v33[3] = v35;
  v33[4] = v44;
  sub_2689186C8(v19, v33 + v30);
  v36 = (v33 + v31);
  v38 = v45;
  v37 = v46;
  *v36 = v41;
  v36[1] = v38;
  *(v33 + v32) = v37;
  v39 = v34;

  v40 = v37;
  sub_268A820E0((v35 + 56), sub_268A48F1C);

  sub_2688C058C(v21, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A46AE8(void *a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8, uint64_t a9)
{
  v117 = a8;
  v118 = a7;
  v114 = a6;
  v116 = a5;
  LODWORD(v110) = a2;
  v120 = a1;
  v109 = sub_268B37A54();
  v99 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v12 - 8);
  v104 = &v98 - v13;
  v105 = sub_268B35044();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_268B354F4();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v113 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v98 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v98 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v100 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v112 = &v98 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v98 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v98 - v32;
  v34 = sub_268B34E24();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v111 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v98 - v39;
  v119 = v35;
  v115 = v38;
  if (v110)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v109;
    v42 = __swift_project_value_buffer(v109, qword_2802CDA10);
    v43 = v99;
    v44 = v108;
    (*(v99 + 16))(v108, v42, v41);
    v45 = v120;
    v46 = v120;
    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();
    sub_268A48FEC(v45, 1);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v121 = v45;
      *&v122 = v50;
      *v49 = 136446210;
      v51 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
      v52 = sub_268B37C24();
      v54 = sub_26892CDB8(v52, v53, &v122);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_2688BB000, v47, v48, "GetVolumeLevelHandleIntentStrategy#legacyHandledResponse Failed to make views with error: %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x26D6266E0](v50, -1, -1);
      MEMORY[0x26D6266E0](v49, -1, -1);

      (*(v43 + 8))(v108, v109);
    }

    else
    {

      (*(v43 + 8))(v44, v41);
    }

    v65 = v119;
    v66 = sub_268B36E84();
    if (v67)
    {
      v68 = v66;
      v69 = v67;
      v70 = v120;
    }

    else
    {
      v70 = v120;
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v68 = v82;
      v69 = v83;
    }

    v84 = __swift_project_boxed_opaque_existential_1((a4 + 96), *(a4 + 120));
    v85 = v115;
    (*(v65 + 104))(v111, *MEMORY[0x277D5BC00], v115);
    v86 = sub_268B350F4();
    v87 = v112;
    __swift_storeEnumTagSinglePayload(v112, 1, 1, v86);
    v88 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v88);
    v89 = *v84;
    v90 = v100;
    sub_2688F1FA4(v87, v100, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v90, 1, v86) == 1)
    {
      sub_2688C058C(v90, &unk_2802A57B0, &unk_268B3CE00);
      v91 = 0;
      v92 = 0;
    }

    else
    {
      v91 = sub_268B350B4();
      v92 = v93;
      (*(*(v86 - 8) + 8))(v90, v86);
    }

    v94 = v111;
    v95 = v113;
    sub_2688E3F08(v116, v111, a3, v91, v92, v68, v69, v113, v89);

    sub_2688C058C(v95, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v112, &unk_2802A57B0, &unk_268B3CE00);
    (*(v119 + 8))(v94, v85);
    *&v122 = v70;
    v125 = 1;
    v96 = v70;
    v118(&v122);
  }

  else
  {
    v113 = a3;
    sub_268947F08();
    v110 = v55;
    v111 = v56;
    v57 = *(a4 + 120);
    v112 = a4;
    v58 = __swift_project_boxed_opaque_existential_1((a4 + 96), v57);
    (*(v35 + 104))(v40, *MEMORY[0x277D5BC10], v34);
    sub_2688F1FA4(v114, v23, &unk_2802A56E0, &unk_268B3CDF0);

    v59 = sub_268B350F4();
    v60 = *(v59 - 8);
    (*(v60 + 32))(v33, v23, v59);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v59);
    v61 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v61);
    v62 = *v58;
    sub_2688F1FA4(v33, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v59) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
      v63 = 0;
      v64 = 0;
    }

    else
    {
      v63 = sub_268B350B4();
      v64 = v71;
      (*(v60 + 8))(v31, v59);
    }

    v72 = v113;
    sub_2688E3F08(v116, v40, v113, v63, v64, v110, v111, v20, v62);

    sub_2688C058C(v20, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v33, &unk_2802A57B0, &unk_268B3CE00);
    (*(v119 + 8))(v40, v115);
    v73 = v112;
    __swift_project_boxed_opaque_existential_1((v112 + 96), *(v112 + 120));
    sub_268948308(MEMORY[0x277D84F90]);
    v74 = v101;
    sub_268A82B50(v72, v101);
    __swift_project_boxed_opaque_existential_1((v73 + 56), *(v73 + 80));
    sub_268B34CA4();
    v75 = v103;
    v76 = v104;
    v77 = v105;
    (*(v103 + 16))(v104, v74, v105);
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v78 = v102;
    sub_268B34EF4();
    sub_2688C058C(&v122, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v76, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v75 + 8))(v74, v77);
    v79 = v107;
    *(&v123 + 1) = v107;
    v124 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v122);
    v81 = v106;
    (*(v106 + 16))(boxed_opaque_existential_1, v78, v79);
    v125 = 0;
    v118(&v122);
    (*(v81 + 8))(v78, v79);
  }

  return sub_2688C058C(&v122, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A47774()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v34 = v2;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
  v14 = OUTLINED_FUNCTION_139();
  v15(v14);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_14();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "GetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse called", v18, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v12 + 8))(v0, v10);
  v19 = sub_268B36E84();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
  }

  else
  {
    OUTLINED_FUNCTION_22_12(v5 + OBJC_IVAR___GetVolumeLevelIntentResponse_code);
    sub_268B38404();
    sub_268947F08();
    v21 = v23;
    v22 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  swift_beginAccess();
  sub_268B38404();
  v26 = sub_268B36E94();
  v28 = v27;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v26;
  *(inited + 56) = v28;
  v29 = sub_268B37B84();
  v30 = swift_allocObject();
  v30[2] = v0;
  v30[3] = v9;
  v30[4] = v7;
  v30[5] = v21;
  v30[6] = v22;
  v30[7] = v34;
  v30[8] = v35;
  v31 = v0[5];
  v32 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);

  v33 = v7;

  sub_2689CE860(0xD000000000000022, 0x8000000268B5A3F0, v29, sub_268A48DE8, v30, v31, v32);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A47AF0(char *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v120 = a7;
  v121 = a8;
  v118 = a5;
  v119 = a6;
  v122 = a4;
  v123 = a2;
  v117 = a3;
  v113 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v103 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = MEMORY[0x28223BE20](v116);
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
  v115 = &v103 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  MEMORY[0x28223BE20](v25);
  v107 = &v103 - v28;
  v29 = sub_268B34E24();
  v124 = *(v29 - 8);
  v125 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v114 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v104 = &v103 - v32;
  v33 = sub_268B37A54();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v110 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v103 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v103 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v42);
  v44 = (&v103 - v43);
  sub_2688F1FA4(v113, &v103 - v43, &qword_2802A6300, &unk_268B3BD80);
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
    v50 = v123;
    v51 = v104;
    if (v49)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "GetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v52, 2u);
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    (*(v34 + 8))(v41, v33);
    v53 = __swift_project_boxed_opaque_existential_1(v50 + 12, v50[15]);
    (*(v124 + 104))(v51, *MEMORY[0x277D5BC00], v125);
    v54 = sub_268B350F4();
    v55 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v54);
    v56 = *MEMORY[0x277D5B8E0];
    v57 = sub_268B34B94();
    v58 = v108;
    (*(*(v57 - 8) + 104))(v108, v56, v57);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v57);
    v59 = *v53;
    sub_2688F1FA4(v55, v27, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v54) == 1)
    {
      sub_2688C058C(v27, &unk_2802A57B0, &unk_268B3CE00);
      v60 = 0;
      v61 = 0;
    }

    else
    {
      v60 = sub_268B350B4();
      v61 = v80;
      (*(*(v54 - 8) + 8))(v27, v54);
    }

    sub_2688E3F08(v117, v51, v122, v60, v61, v118, v119, v58, v59);

    sub_2688C058C(v58, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v55, &unk_2802A57B0, &unk_268B3CE00);
    (*(v124 + 8))(v51, v125);
    __swift_project_boxed_opaque_existential_1(v50 + 12, v50[15]);
    sub_2688C2ECC();
    v81 = swift_allocError();
    *v82 = -93;
    sub_26894B450();

    v83 = swift_allocError();
    *v84 = -93;
    v126[0] = v83;
    v127 = 1;
    v120(v126);

    return sub_2688C058C(v126, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v44, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v33, qword_2802CDA10);
    v63 = *(v34 + 16);
    v104 = v62;
    v103 = v63;
    (v63)(v39);
    v64 = sub_268B37A34();
    v65 = sub_268B37ED4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2688BB000, v64, v65, "GetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v66, 2u);
      MEMORY[0x26D6266E0](v66, -1, -1);
    }

    v67 = *(v34 + 8);
    v108 = (v34 + 8);
    v67(v39, v33);
    v68 = __swift_project_boxed_opaque_existential_1(v123 + 12, v123[15]);
    (*(v124 + 104))(v114, *MEMORY[0x277D5BC00], v125);
    v113 = v15;
    v69 = v105;
    sub_2688F1FA4(v15, v105, &unk_2802A56E0, &unk_268B3CDF0);

    v70 = sub_268B350F4();
    v71 = *(v70 - 8);
    v72 = v115;
    (*(v71 + 32))(v115, v69, v70);
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v70);
    v73 = sub_268B34B94();
    v74 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v73);
    v75 = *v68;
    v76 = v106;
    sub_2688F1FA4(v72, v106, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v70);
    v107 = v71;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v76, &unk_2802A57B0, &unk_268B3CE00);
      v78 = 0;
      v79 = 0;
    }

    else
    {
      v78 = sub_268B350B4();
      v79 = v86;
      (*(v71 + 8))(v76, v70);
    }

    v87 = v110;
    v102 = v75;
    v88 = v114;
    sub_2688E3F08(v117, v114, v122, v78, v79, v118, v119, v74, v102);

    sub_2688C058C(v74, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v115, &unk_2802A57B0, &unk_268B3CE00);
    (*(v124 + 8))(v88, v125);
    v89 = v123;
    __swift_project_boxed_opaque_existential_1(v123 + 12, v123[15]);
    sub_2688C2ECC();
    v90 = swift_allocError();
    *v91 = 79;
    sub_26894B450();

    v103(v87, v104, v33);
    v92 = sub_268B37A34();
    v93 = sub_268B37ED4();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_2688BB000, v92, v93, "GetVolumeLevelHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v94, 2u);
      MEMORY[0x26D6266E0](v94, -1, -1);
    }

    v67(v87, v33);
    v95 = v89[35];
    v96 = v89[36];
    __swift_project_boxed_opaque_existential_1(v89 + 32, v95);
    v97 = v113;
    v98 = v111;
    sub_2688F1FA4(v113, v111, &unk_2802A56E0, &unk_268B3CDF0);
    v99 = *(v98 + *(v116 + 48));
    v100 = v112;
    sub_268A82B50(v122, v112);
    v101 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v101);
    (*(v96 + 40))(v98, v99, v100, v120, v121, v95, v96);

    sub_2688C058C(v100, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v97, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v107 + 8))(v98, v70);
  }
}

void *sub_268A48820()
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

uint64_t sub_268A48878()
{
  sub_268A48820();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

uint64_t sub_268A488D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

uint64_t sub_268A4894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

uint64_t sub_268A489C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

uint64_t sub_268A48A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

uint64_t sub_268A48AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, VolumeLevelHandleIntentStrategy, a7);
}

id sub_268A48B84()
{
  if (qword_2802A4EE0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9C0;

  return v1;
}

uint64_t sub_268A48BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, VolumeLevelHandleIntentStrategy, a3);
}

uint64_t sub_268A48C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, VolumeLevelHandleIntentStrategy, a4);
}

uint64_t sub_268A48C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelHandleIntentStrategy = type metadata accessor for GetVolumeLevelHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, VolumeLevelHandleIntentStrategy, a6);
}

uint64_t sub_268A48CF0(uint64_t a1, uint64_t a2)
{
  result = sub_268A491D4(&qword_2802A77E8, a2, type metadata accessor for GetVolumeLevelHandleIntentStrategy, &unk_268B46F94);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A48D90()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_268A48DFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v7 = v1 + v4;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v7);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v3 | 7);
}

uint64_t sub_268A48F1C(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_268A46AE8(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_268A48FEC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_268A48FF8()
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

uint64_t sub_268A49108(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A46100(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A491D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t objectdestroy_9Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t OUTLINED_FUNCTION_8_21@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v3 - 192) = a1;
  *(v3 - 152) = 1;
  return v3 - 192;
}

id sub_268A49358()
{
  result = [objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentHandler()) init];
  qword_2802CD9C8 = result;
  return result;
}

uint64_t sub_268A4938C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v62 = a2;
  v2 = sub_268B35434();
  OUTLINED_FUNCTION_1();
  v58 = v3;
  MEMORY[0x28223BE20](v4);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v54 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v59 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v22 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v55 = *(v16 + 16);
  v56 = v22;
  v55(v21);
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v61 = v16;
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "WhatDidTheySayFlowStrategy#actionForInput called", v25, 2u);
    v16 = v61;
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v16 + 8);
  v26 = v16 + 8;
  v27 = v28;
  v28(v21, v14);
  v29 = v60;
  sub_268B35414();
  v30 = (*(v8 + 88))(v13, v6);
  if (v30 == *MEMORY[0x277D5C128] || v30 == *MEMORY[0x277D5C160])
  {
    (*(v8 + 8))(v13, v6);
    return sub_268B34EC4();
  }

  else
  {
    v52 = v27;
    v53 = v6;
    v61 = v26;
    v33 = v59;
    (v55)(v59, v56, v14);
    v35 = v57;
    v34 = v58;
    (*(v58 + 16))(v57, v29, v2);
    v36 = sub_268B37A34();
    v37 = sub_268B37EE4();
    if (os_log_type_enabled(v36, v37))
    {
      v39 = v35;
      v40 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v40 = 136315138;
      sub_268B35414();
      LODWORD(v56) = v37;
      v41 = v53;
      v42 = sub_268B37C24();
      v43 = v34;
      v45 = v44;
      (*(v43 + 8))(v39, v2);
      v46 = sub_26892CDB8(v42, v45, &v63);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_2688BB000, v36, v56, "WhatDidTheySayFlowStrategy#actionForInput unexpected parse type: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v52(v59, v14);
    }

    else
    {

      (*(v34 + 8))(v35, v2);
      v52(v33, v14);
      v41 = v53;
    }

    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_36();
    OUTLINED_FUNCTION_4_10(v48 | v47, v49, v50, v51);
    sub_268B34ED4();
    return (*(v8 + 8))(v13, v41);
  }
}

uint64_t sub_268A498BC(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v96 = a3;
  v97 = a4;
  v91 = sub_268B34614();
  OUTLINED_FUNCTION_1();
  v84 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v82 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v83 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  MEMORY[0x28223BE20](v11 - 8);
  v89 = &v82 - v12;
  v95 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v85 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  v90 = &v82 - v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  v98 = &v82 - v20;
  v21 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v93 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v29 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v86 = *(v23 + 16);
  v87 = v29;
  v86(v28);
  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "WhatDidTheySayFlowStrategy#makeIntentFromParse called", v32, 2u);
    OUTLINED_FUNCTION_12();
  }

  v34 = *(v23 + 8);
  v33 = v23 + 8;
  v88 = v34;
  v34(v28, v21);
  if (a2)
  {
    v35 = a2;
    v94 = a2;
  }

  else
  {
    v35 = 0;
    v94 = [objc_allocWithZone(type metadata accessor for WhatDidTheySayIntent()) init];
  }

  v36 = v95;
  v37 = v98;
  v38 = *(v14 + 16);
  v38(v98, a1, v95);
  v39 = (*(v14 + 88))(v37, v36);
  if (v39 == *MEMORY[0x277D5C128] || v39 == *MEMORY[0x277D5C160])
  {
    v41 = *(v14 + 8);
    v42 = v35;
    v41(v37, v36);
    v43 = v94;
    v44 = [v94 startTime];
    if (v44)
    {
      v45 = v44;
      v46 = v89;
      sub_268B345D4();

      __swift_storeEnumTagSinglePayload(v46, 0, 1, v91);
      sub_2688F3448(v46);
    }

    else
    {
      v70 = v89;
      v71 = v91;
      __swift_storeEnumTagSinglePayload(v89, 1, 1, v91);
      sub_2688F3448(v70);
      v72 = v82;
      sub_268B34604();
      v73 = v83;
      sub_268B345E4();
      v74 = *(v84 + 8);
      v74(v72, v71);
      v75 = sub_268B34594();
      v74(v73, v71);
      [v43 setStartTime_];
    }

    v76 = v92;
    v77 = v92[5];
    v78 = v92[6];
    __swift_project_boxed_opaque_existential_1(v92 + 2, v77);
    v79 = swift_allocObject();
    v80 = v97;
    v79[2] = v96;
    v79[3] = v80;
    v79[4] = v43;
    v81 = v43;

    sub_268AD35F4(v81, &off_287953C68, (v76 + 7), sub_268A4A870, v79, v77, v78);
  }

  else
  {
    v47 = v93;
    (v86)(v93, v87, v21);
    v48 = v90;
    v38(v90, a1, v36);
    v49 = v35;
    v50 = sub_268B37A34();
    v51 = v36;
    v52 = sub_268B37EE4();
    if (os_log_type_enabled(v50, v52))
    {
      v54 = v48;
      v55 = swift_slowAlloc();
      v91 = v55;
      v92 = swift_slowAlloc();
      v99 = v92;
      *v55 = 136315138;
      v38(v85, v54, v51);
      v56 = sub_268B37C24();
      v58 = v57;
      v59 = *(v14 + 8);
      v95 = v33;
      v59(v54, v51);
      v60 = sub_26892CDB8(v56, v58, &v99);

      v61 = v91;
      *(v91 + 1) = v60;
      _os_log_impl(&dword_2688BB000, v50, v52, "WhatDidTheySayFlowStrategy#makeIntentFromParse unexpected parse type: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v88(v93, v21);
    }

    else
    {

      v62 = v48;
      v59 = *(v14 + 8);
      v59(v62, v51);
      v88(v47, v21);
    }

    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_36();
    OUTLINED_FUNCTION_4_10(v63 + 16, v64, v65, v66);
    sub_2688C2ECC();
    v67 = swift_allocError();
    *v68 = -110;
    v96(v67, 1);

    return (v59)(v98, v51);
  }
}

uint64_t sub_268A4A060(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v10, v11, "WhatDidTheySayFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_268A4A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A4A334()
{
  if (qword_2802A4EE8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9C8;

  return v1;
}

uint64_t sub_268A4A390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A4A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A4A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4A5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4A778(uint64_t a1)
{
  result = sub_268A4A7F0(&qword_2802A77F8, &unk_268B47124);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4A7F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WhatDidTheySayFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A4A830()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_268A4A8A0()
{
  result = [objc_allocWithZone(type metadata accessor for SkipContentIntentHandler(0)) init];
  qword_2802CD9D0 = result;
  return result;
}

uint64_t sub_268A4A8D4()
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
  sub_268A4C5DC(&unk_2802A5890, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802CD9D8 = result;
  return result;
}

uint64_t sub_268A4AB28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
    _os_log_impl(&dword_2688BB000, v26, v27, "SkipContentFlowStrategy#actionForInput called", v28, 2u);
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
      _os_log_impl(&dword_2688BB000, v34, v35, "SkipContentFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v29(v33, v14);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_44();
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
        _os_log_impl(&dword_2688BB000, v51, v52, "SkipContentFlowStrategy#actionForInput received unsupported parse type %s", v55, 0xCu);
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
      OUTLINED_FUNCTION_1_44();
      OUTLINED_FUNCTION_4_10(v61 | v60, v62, v63, v64);
      sub_268B34ED4();
      return (*(v44 + 8))(v72, v43);
    }
  }
}

uint64_t sub_268A4B1AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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
  if (qword_2802A4EF8 != -1)
  {
    swift_once();
  }

  v34 = qword_2802CD9D8;
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
  aBlock[4] = sub_268A4C4D0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_9;
  v30 = _Block_copy(aBlock);
  v31 = v27;

  sub_268B37AE4();
  v43 = MEMORY[0x277D84F90];
  sub_268A4C5DC(&unk_2802A7010, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v32 = v42;
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v30);
  _Block_release(v30);
  (*(v41 + 8))(v9, v32);
  (*(v39 + 8))(v14, v40);
}

void sub_268A4B574(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, void *a5)
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
    _os_log_impl(&dword_2688BB000, v21, v22, "SkipContentFlowStrategy#makeIntentFromParse called", v27, 2u);
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
      _os_log_impl(&dword_2688BB000, v40, v41, "SkipContentFlowStrategy#makeIntentFromParse received unexpected parse: %s", v42, 0xCu);
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
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000032, 0x8000000268B56D00, 0x746E6F4370696B53, 0xEB00000000746E65, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v49 = swift_allocError();
    *v50 = 119;
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
      v48 = [objc_allocWithZone(type metadata accessor for SkipContentIntent()) init];
    }

    v51 = v70;
    sub_268AC76C4(v13);
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

    sub_268AD35F4(v58, &off_287953B88, (v52 + 7), sub_268A4C5D0, v56, v53, v54);

    sub_2688C2F6C(v55);
  }
}

uint64_t sub_268A4BC14(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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

uint64_t sub_268A4BE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4BE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A4BEE8()
{
  if (qword_2802A4EF0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9D0;

  return v1;
}

uint64_t sub_268A4BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4C088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A4C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A4C12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4C198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4C214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4C368(uint64_t a1, uint64_t a2)
{
  result = sub_268A4C5DC(&qword_2802A7818, a2, type metadata accessor for SkipContentFlowStrategy, &unk_268B472E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4C408()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_268A4C4D0()
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

  sub_268A4B574(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A4C590()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A4C5DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::String_optional __swiftcall UsoTask_stop_common_MediaItem.verb()()
{
  v0 = 1886352499;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_stop_common_MediaItem.referencedSetting()(uint64_t a1)
{
  result = sub_268B36304();
  if (result)
  {
    v2 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v2);
      }

      else
      {
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t UsoTask_stop_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268A4C8D4();
  if (result)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_268B37A34();
    v9 = sub_268B37EE4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2688BB000, v8, v9, "UsoTask_stop_common_MediaItem#shouldHandle Sleep timers request. Not handling in controls", v10, 2u);
      MEMORY[0x26D6266E0](v10, -1, -1);
    }

    result = (*(v3 + 8))(v5, v2);
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v11;
  return result;
}

BOOL sub_268A4C8D4()
{
  v0 = sub_268B362F4();
  if (v0)
  {
  }

  return v0 != 0;
}

uint64_t sub_268A4C978(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A4C9CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A4CA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A4CA74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A4CAC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A4CB1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A4CB70(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A4CBC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A4CC28(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A4CC7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A4CCE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A4CD44(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A4CDA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A4CE0C(uint64_t a1)
{
  result = sub_268A4CEB8(&qword_2802A7830, &protocol conformance descriptor for UsoTask_stop_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4CEB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36034();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A4CF10@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v11 = 1;
      goto LABEL_10;
    }

    v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v4 = OUTLINED_FUNCTION_0_34();
    if (v4)
    {
      v5 = v4;
      v6 = sub_268B37BC4();
      [v5 doubleForKey_];
    }
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = OUTLINED_FUNCTION_0_34();
    if (v8)
    {
      v9 = v8;
      v10 = sub_268B37BC4();
      [v9 doubleForKey_];
    }
  }

  sub_268B345C4();
  v11 = 0;
LABEL_10:
  v12 = sub_268B34614();

  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v12);
}

id OUTLINED_FUNCTION_0_34()
{

  return sub_26892CB58(0xD00000000000001FLL, v0 | 0x8000000000000000);
}

id sub_268A4D0B0()
{
  result = [objc_allocWithZone(type metadata accessor for AddSpeakerIntentHandler()) init];
  qword_2802CD9E0 = result;
  return result;
}

uint64_t sub_268A4D0E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v72 = a2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v64 = v3;
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v68 = v6;
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v70 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v73 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v66 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v67 = &v63 - v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v23 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v24 = *(v15 + 16);
  v24(v22, v23, v13);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "AddSpeakerFlowStrategy#actionForInput called", v27, 2u);
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v15 + 8);
  v28(v22, v13);
  v29 = v71;
  sub_268B35414();
  sub_26893BA8C(v12);
  v30 = type metadata accessor for MediaPlayerIntent(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v30);
  sub_2688C2E64(v12);
  if (EnumTagSinglePayload == 1)
  {
    v32 = v66;
    v24(v66, v23, v13);
    v33 = sub_268B37A34();
    v34 = sub_268B37EE4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "AddSpeakerFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v35, 2u);
      OUTLINED_FUNCTION_12();
    }

    v28(v32, v13);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_4_30();
    OUTLINED_FUNCTION_2_26(v36 + 25, v37, v38);
    return sub_268B34ED4();
  }

  else
  {
    v66 = (v15 + 8);
    v40 = v70;
    sub_268B35414();
    v42 = v68;
    v41 = v69;
    v43 = (*(v68 + 88))(v40, v69);
    if (v43 == *MEMORY[0x277D5C128] || v43 == *MEMORY[0x277D5C150] || v43 == *MEMORY[0x277D5C148] || v43 == *MEMORY[0x277D5C160])
    {
      (*(v42 + 8))(v40, v41);
      return sub_268B34EC4();
    }

    else
    {
      v24(v67, v23, v13);
      v47 = v63;
      v48 = v64;
      v49 = v65;
      (*(v64 + 16))(v63, v29, v65);
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
        v41 = v69;

        *(v54 + 4) = v58;
        _os_log_impl(&dword_2688BB000, v50, v51, "AddSpeakerFlowStrategy#actionForInput received unsupported parse %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        v42 = v68;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v48 + 8))(v47, v49);
      }

      v28(v67, v13);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_4_30();
      OUTLINED_FUNCTION_2_26(v60 | v59, v61, v62);
      sub_268B34ED4();
      return (*(v42 + 8))(v70, v41);
    }
  }
}

void sub_268A4D764(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v66 = a3;
  v67 = a4;
  v68 = a2;
  v63 = a1;
  v65 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v69 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v60 = v6;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - v11;
  v62 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v62);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v64 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v23 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v57 = *(v17 + 16);
  v58 = v23;
  v57(v22);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "AddSpeakerFlowStrategy#makeIntentFromParse called", v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  v59 = *(v17 + 8);
  v59(v22, v15);
  v27 = *(v69 + 16);
  v28 = v63;
  v29 = v65;
  v27(v9, v63, v65);
  sub_26893BA8C(v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v62) == 1)
  {
    sub_2688C2E64(v12);
    (v57)(v64, v58, v15);
    v30 = v60;
    v27(v60, v28, v29);
    v31 = v29;
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70 = v68;
      *v34 = 136315138;
      v27(v9, v30, v31);
      v35 = sub_268B37C24();
      v37 = v36;
      v38 = OUTLINED_FUNCTION_7_11();
      v39(v38);
      v40 = sub_26892CDB8(v35, v37, &v70);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_2688BB000, v32, v33, "AddSpeakerFlowStrategy#makeIntentFromParse received unexpected parse: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      v42 = OUTLINED_FUNCTION_7_11();
      v43(v42);
    }

    v59(v64, v15);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_4_30();
    OUTLINED_FUNCTION_2_26(v44 + 30, v45, v46);
    sub_2688C2ECC();
    v47 = swift_allocError();
    *v48 = 18;
    v66(v47, 1);
  }

  else
  {
    sub_2688C0464(v12, v14);
    if (v68)
    {
      v41 = v68;
    }

    else
    {
      v41 = [objc_allocWithZone(type metadata accessor for AddSpeakerIntent()) init];
    }

    v49 = v68;
    sub_26896587C(v14);
    v50 = v61;
    v51 = v61[5];
    v52 = v61[6];
    __swift_project_boxed_opaque_existential_1(v61 + 2, v51);
    v53 = v14;
    v54 = swift_allocObject();
    v55 = v67;
    v54[2] = v66;
    v54[3] = v55;
    v54[4] = v41;
    v56 = v41;

    sub_268AD35F4(v56, &off_287953C88, (v50 + 7), sub_268A4E524, v54, v51, v52);

    sub_2688C2F6C(v53);
  }
}

uint64_t sub_268A4DD60(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v10, v11, "AddSpeakerFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_268A4DF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

id sub_268A4DFE8()
{
  if (qword_2802A4F00 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9E0;

  return v1;
}

uint64_t sub_268A4E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4E0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4E188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A4E1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A4E22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A4E298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4E314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A4E42C(uint64_t a1)
{
  result = sub_268A4E4A4(&qword_2802A7850, &unk_268B47630);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4E4A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddSpeakerFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A4E4E4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_2_26@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(a1, a3 | 0x8000000000000000, a2, 0xEA00000000007265, 0xD000000000000014, v3 | 0x8000000000000000);
}

uint64_t sub_268A4E56C(uint64_t a1)
{
  v1 = 2;
  v2 = 4;
  if (a1 == 3000)
  {
    v2 = 1;
  }

  if (a1 == 4000)
  {
    v2 = 0;
  }

  if (a1 != 2000)
  {
    v1 = v2;
  }

  if (a1 == 1000)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t static DeviceProximity.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 < 5 && a2 < 5)
  {
    return a1 == a2;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t sub_268A4E600(unint64_t a1, unint64_t a2)
{
  if (a2 < 5 && a1 < 5)
  {
    return a2 >= a1;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

BOOL sub_268A4E68C(void (*a1)(uint64_t, uint64_t))
{
  sub_268B34614();
  OUTLINED_FUNCTION_1_45();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_35();
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_37(v7, v8, v9, v10, v11, v12, v13, v14, v17);
  sub_26897B408(v2);
  sub_268B345B4();
  v15 = OUTLINED_FUNCTION_2_27();
  (a1)(v15);
  a1(v3, v1);
  return (a1 & 1) == 0;
}

BOOL sub_268A4E794(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  sub_268B34614();
  OUTLINED_FUNCTION_1_45();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_35();
  v8 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_37(v8, v9, v10, v11, v12, v13, v14, v15, v18);
  sub_26897B408(v3);
  sub_268B345B4();
  v16 = OUTLINED_FUNCTION_2_27();
  (a2)(v16);
  a2(v4, v2);
  return (a2 & 1) == 0;
}

uint64_t sub_268A4E87C(unint64_t a1, unint64_t a2)
{
  if (a1 < 5 && a2 < 5)
  {
    return a1 >= a2;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t sub_268A4E8EC(void (*a1)(uint64_t, uint64_t))
{
  sub_268B34614();
  OUTLINED_FUNCTION_1_45();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_35();
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_37(v7, v8, v9, v10, v11, v12, v13, v14, v17);
  sub_26897B408(v2);
  sub_268B345B4();
  v15 = OUTLINED_FUNCTION_2_27();
  (a1)(v15);
  a1(v3, v1);
  return a1 & 1;
}

uint64_t sub_268A4E9D0(unint64_t a1, unint64_t a2)
{
  if (a2 < 5 && a1 < 5)
  {
    return a2 < a1;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t DeviceProximity.description.getter(uint64_t a1)
{
  result = 0x7972616D6972702ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x616964656D6D692ELL;
      break;
    case 2:
      result = 0x7261656E2ELL;
      break;
    case 3:
      result = 1918985774;
      break;
    case 4:
      result = 0x6E776F6E6B6E752ELL;
      break;
    default:
      sub_268B381C4();

      v3 = sub_268B38404();
      MEMORY[0x26D625650](v3);

      MEMORY[0x26D625650](41, 0xE100000000000000);
      result = 0x64657070616D6E75;
      break;
  }

  return result;
}

uint64_t static DeviceProximity.< infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 < 5 && a2 < 5)
  {
    return a1 < a2;
  }

  result = sub_268B38474();
  __break(1u);
  return result;
}

unint64_t sub_268A4EBF0()
{
  result = qword_2802A7868;
  if (!qword_2802A7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26897B408(&a9 - v9);
}

void sub_268A4ED18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MediaIntent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_268A4F18C(a1);
  if (*a1 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  [v2 setEnable_];
  v15 = *(a1 + 2);
  switch(v15)
  {
    case 3:
      v16 = 2;
      break;
    case 5:
      goto LABEL_11;
    case 4:
      v16 = 3;
      break;
    default:
      v16 = 1;
      break;
  }

  [v2 setType_];
LABEL_11:
  v17 = *(a1 + 16);
  if (v17)
  {
    v36 = *(a1 + 8);
    v37 = v11;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v18 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v13, v18, v7);
    v19 = sub_268B37A34();
    v20 = sub_268B37F04();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = v7;
      v22 = v6;
      v23 = v21;
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Found language in intent, mapping it to SiriKit intent", v21, 2u);
      v24 = v23;
      v6 = v22;
      v7 = v35;
      MEMORY[0x26D6266E0](v24, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    type metadata accessor for LanguageOption();
    v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v26 = sub_26893A824(0, 0, 0, 0xE000000000000000);
    v42 = v36;
    v43 = v17;
    v40 = 95;
    v41 = 0xE100000000000000;
    v38 = 45;
    v39 = 0xE100000000000000;
    sub_26895EF2C();
    v27 = sub_268B380B4();
    sub_268A1A108(v27, v28, v26);
    [v2 setLanguage_];

    v11 = v37;
  }

  sub_268A1A468();
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v29 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v11, v29, v7);
    v30 = sub_268B37A34();
    v31 = sub_268B37F04();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "Found home automation nodes, attempting to map them to SiriKit intent", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    sub_268932630(a1, v6);
    v33 = sub_268A91BFC(v6);
    [v2 setDevice_];
  }
}

void sub_268A4F18C(uint64_t a1)
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
    v13 = off_28795BBB8;
    v14 = type metadata accessor for SetSubtitleStateIntent();
    v13(v12, v14, &off_28795BBA8);
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

uint64_t sub_268A4F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "WhatDidTheySayDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v15 = sub_268B35244();
  sub_268AE2278(v15);
  v17 = v16;

  v18 = sub_268B35244();
  sub_268AE23DC(v18);
  v20 = v19;

  sub_268A3A2AC(v17, v20 & 1, a4, a5);
}

void *sub_268A4F6A8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  sub_26895F84C((v0 + 28));
  return v0;
}

uint64_t sub_268A4F6F8()
{
  sub_268A4F6A8();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

void sub_268A4F750()
{
  type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268A4F860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A4F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A4F9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A4FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A4FB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268A4FBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_268A4FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_268A4FE84(uint64_t a1, uint64_t a2)
{
  result = sub_268A4FEDC(&qword_2802A7888, a2, type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy, &unk_268B47900);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A4FEDC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_268A4FF24(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v65 = a7;
  v67 = a4;
  v68 = a8;
  v60 = a2;
  v61 = a6;
  v63 = a3;
  v64 = a5;
  v62 = a1;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v58 = v9;
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v57 = v10;
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v69 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v19 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v20 = *(v13 + 16);
  v20(v18, v19, v11);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "SeekTimeUnsupportedValueStrategy.makeUnsupportedValueOutput()", v23, 2u);
    OUTLINED_FUNCTION_12();
  }

  v24 = *(v13 + 8);
  v24(v18, v11);
  sub_268B36754();
  v25 = sub_268B36734();
  if (!v25)
  {
    v25 = sub_268B36744();
  }

  v26 = v25;
  v27 = v69;
  v20(v69, v19, v11);

  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v56 = v24;
    v31 = v30;
    v32 = swift_slowAlloc();
    v70 = v32;
    *v31 = 136315138;
    sub_268B36714();
    v33 = v57;
    sub_268B36B14();

    v34 = sub_268B36784();
    v36 = v35;
    (*(v58 + 8))(v33, v59);
    v37 = sub_26892CDB8(v34, v36, &v70);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v28, v29, "SeekTimeUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v56(v69, v11);
  }

  else
  {

    v24(v27, v11);
  }

  v38 = swift_allocObject();
  v40 = v62;
  v39 = v63;
  v38[2] = v26;
  v38[3] = v39;
  v42 = v66;
  v41 = v67;
  v43 = v60;
  v44 = v61;
  v38[4] = v67;
  v38[5] = v43;
  v38[6] = v44;
  v38[7] = v42;
  v45 = v65;
  v38[8] = v40;
  v38[9] = v45;
  v46 = v68;
  v38[10] = v68;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v47 = v43;
  v48 = v44;
  swift_retain_n();
  v49 = v47;
  v50 = v48;

  v51 = v49;
  v52 = v50;

  sub_2689FA258(v53, v51, v39, v41, v64, v52, v42, v45, v46, v39, v41, v51, v52, v42, sub_268A51430, v38, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
}

uint64_t sub_268A50494(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v93 = a8;
  v80 = a7;
  v88 = a6;
  v78 = a5;
  v89 = a4;
  v77 = a3;
  v75 = a2;
  v84 = a1;
  v92 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v71 - v10;
  v11 = sub_268B37A54();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v87 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v79 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v71 - v20;
  v21 = sub_268B34E24();
  v85 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = MEMORY[0x28223BE20](v24);
  v81 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v71 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v71 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v32);
  v34 = &v71 - v33;
  sub_268935590(v84, &v71 - v33, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v34, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v35 = v91;
    v36 = __swift_project_value_buffer(v91, qword_2802CDA10);
    v37 = v90;
    (*(v90 + 16))(v87, v36, v35);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "SeekTimeUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v37 + 8))(v87, v35);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = -85;
    v94[0] = v41;
    v95 = 1;
    v93(v94);
    return sub_2688EF38C(v94, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v34, v31);
    v73 = sub_2688E1B0C(21, 3, v75, v77, v89, 0x6E776F6E6B6E75, 0xE700000000000000, v78);
    v74 = v44;
    __swift_project_boxed_opaque_existential_1(v88 + 13, v88[16]);
    v45 = *MEMORY[0x277D5BBE0];
    v46 = *(v85 + 104);
    v77 = v23;
    v78 = v21;
    v46(v23, v45, v21);
    sub_268935590(v31, v29, &unk_2802A56E0, &unk_268B3CDF0);
    v87 = v24;

    v47 = sub_268B350F4();
    v48 = *(v47 - 8);
    v49 = v76;
    (*(v48 + 32))(v76, v29, v47);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
    v50 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v50);
    v51 = v79;
    sub_268935590(v49, v79, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v47);
    v75 = v31;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v51, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v48 + 8))(v51, v47);
    }

    v72 = v48;
    v84 = v47;
    v53 = v77;
    v54 = v86;
    sub_2688E3D1C();

    sub_2688EF38C(v54, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v85 + 8))(v53, v78);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v55 = v91;
    v56 = __swift_project_value_buffer(v91, qword_2802CDA10);
    v57 = v90;
    v58 = v82;
    (*(v90 + 16))(v82, v56, v55);
    v59 = sub_268B37A34();
    v60 = sub_268B37ED4();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v88;
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2688BB000, v59, v60, "SeekTimeUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v63, 2u);
      MEMORY[0x26D6266E0](v63, -1, -1);
    }

    (*(v57 + 8))(v58, v55);
    v64 = v62[21];
    v65 = v62[22];
    __swift_project_boxed_opaque_existential_1(v62 + 18, v64);
    v66 = v75;
    v67 = v81;
    sub_268935590(v75, v81, &unk_2802A56E0, &unk_268B3CDF0);
    v68 = *(v67 + *(v87 + 12));
    v69 = v83;
    sub_268A82B50(v89, v83);
    v70 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v70);
    (*(v65 + 40))(v67, v68, v69, v93, v92, v64, v65);

    sub_2688EF38C(v69, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v66, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v72 + 8))(v67, v84);
  }
}

uint64_t sub_268A50E58(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v40 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v42 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  sub_268935590(a1, v46, &unk_2802A57C0, &qword_268B3BE00);
  v16 = v47;
  sub_2688EF38C(v46, &unk_2802A57C0, &qword_268B3BE00);
  if (v16 != 1)
  {
    return a2(a1);
  }

  v17 = a4 == 0xD000000000000010 && 0x8000000268B5B7D0 == a5;
  if (!v17 && (sub_268B38444() & 1) == 0)
  {
    sub_2688C2ECC();
    v25 = swift_allocError();
    v27 = OUTLINED_FUNCTION_3_38(v25, v26, 59);
    a2(v27);
    return sub_2688EF38C(v46, &unk_2802A57C0, &qword_268B3BE00);
  }

  v18 = sub_268B18100(a6);
  if (!v18)
  {
LABEL_14:
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v28 = __swift_project_value_buffer(v40, qword_2802CDA10);
    (*(v42 + 16))(v15, v28, v40);
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2688BB000, v29, v30, "Did not receive intent response for seekTime or devices not populated!", v31, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v42 + 8))(v15, v40);
    sub_2688C2ECC();
    v32 = swift_allocError();
    v34 = OUTLINED_FUNCTION_3_38(v32, v33, 57);
    a2(v34);
    return sub_2688EF38C(v46, &unk_2802A57C0, &qword_268B3BE00);
  }

  v19 = v18;
  if (!sub_2688EFD0C())
  {

    goto LABEL_14;
  }

  LOWORD(v44[0]) = 0;
  BYTE2(v44[0]) = 0;
  v44[1] = 0;
  v44[2] = 0;
  v44[3] = 1;
  memset(&v44[4], 0, 61);
  memcpy(v45, &v44[1], 0x51uLL);
  sub_2688EF38C(v45, &qword_2802A5C88, qword_268B418C0);
  LODWORD(v44[1]) = 0;
  memset(&v44[2], 0, 72);
  LOBYTE(v44[11]) = 1;
  sub_268AE3BC0(v19);

  v20 = SeekTimePlayheadPositionUnsupportedReason.init(rawValue:)([a7 unsupportedReason]);
  if ((v21 & 1) == 0)
  {
    if (v20 != 3)
    {
      if (v20 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_268B3BBC0;
        *(v37 + 32) = 0xD000000000000010;
        *(v37 + 40) = 0x8000000268B572E0;
        *(v37 + 72) = MEMORY[0x277D837D0];
        *(v37 + 48) = 0xD000000000000012;
        *(v37 + 56) = 0x8000000268B5B7F0;
        sub_268B37B84();
        OUTLINED_FUNCTION_2_28();
        OUTLINED_FUNCTION_4_31();
        sub_268ABC88C();
LABEL_28:

        goto LABEL_29;
      }

      if (v20 != 1)
      {
        goto LABEL_10;
      }
    }

    if (v20 == 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_268B3BBC0;
    *(v36 + 32) = 0xD000000000000010;
    *(v36 + 40) = 0x8000000268B572E0;
    *(v36 + 72) = &type metadata for SeekTimePlayheadPositionUnsupportedReason;
    *(v36 + 48) = v35;
    sub_268B37B84();
    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_4_31();
    sub_268AC6530();
    goto LABEL_28;
  }

LABEL_10:
  sub_2688C2ECC();
  v22 = swift_allocError();
  *v23 = 58;
  v46[0] = v22;
  v47 = 1;
  a2(v46);
  sub_2688EF38C(v46, &unk_2802A57C0, &qword_268B3BE00);
LABEL_29:
  memcpy(v43, v44, 0x5DuLL);
  return sub_268A30574(v43);
}

uint64_t type metadata accessor for SeekTimeUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_2802A7890;
  if (!qword_2802A7890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A513C8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void *OUTLINED_FUNCTION_2_28()
{

  return memcpy((v1 - 184), (v0 + 144), 0x5DuLL);
}

uint64_t OUTLINED_FUNCTION_3_38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v3 - 184) = a1;
  *(v3 - 144) = 1;
  return v3 - 184;
}

uint64_t sub_268A514F4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = NLMediaType.matches(with:)([v4 nowPlayingMediaType], a1);
  v16 = v15;
  v25 = NLMediaType.isAmbiguous()();
  if (![v4 nowPlayingMediaType])
  {
    v17 = [v4 nowPlayingState] != 0;
    if (v15)
    {
LABEL_7:
      v16 = 1;
      goto LABEL_9;
    }

    if ((a2 & 1) == 0)
    {
LABEL_8:
      v16 = a3 & v17;
      goto LABEL_9;
    }

LABEL_6:
    if (NLMediaType.isAmbiguous()())
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v17 = 0;
  if (!v15 && (a2 & 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v10 + 16))(v14, v18, v8);
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = a3;
    v23 = v21;
    *v21 = 67110400;
    *(v21 + 4) = v15;
    *(v21 + 8) = 1024;
    *(v21 + 10) = v25;
    *(v21 + 14) = 1024;
    *(v21 + 16) = v17;
    *(v21 + 20) = 1024;
    *(v21 + 22) = a2 & 1;
    *(v21 + 26) = 1024;
    *(v21 + 28) = v22 & 1;
    *(v21 + 32) = 1024;
    *(v21 + 34) = v16 & 1;
    _os_log_impl(&dword_2688BB000, v19, v20, "exactMediaTypeFound: %{BOOL}d, isAmbiguousMediaType: %{BOOL}d, unknownMediaTypeQueued: %{BOOL}d, acceptAmbiguousMediaType: %{BOOL}d, acceptUnknownNowPlayingMediaType: %{BOOL}d. hasMatchingNowPlayingMediaTypeQueued: %{BOOL}d", v21, 0x26u);
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  (*(v10 + 8))(v14, v8);
  return v16 & 1;
}

uint64_t DeviceContext.isEqual(_:)(uint64_t a1)
{
  v4 = sub_268B34614();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78A0, &qword_268B47A10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_1_46();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  sub_2688F1FA4(a1, v61, &byte_2802A6450, &byte_268B3BE10);
  if (v62)
  {
    type metadata accessor for DeviceContext();
    if (swift_dynamicCast())
    {
      v57 = v10;
      v58 = v6;
      v22 = v60;
      v23 = [v1 nowPlayingState];
      if (v23 == [v22 nowPlayingState])
      {
        v59 = v22;
        v56 = v1;
        v24 = [v1 nowPlayingTimestamp];
        if (v24)
        {
          v25 = v24;
          sub_268B345D4();

          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        v27 = 1;
        __swift_storeEnumTagSinglePayload(v21, v26, 1, v4);
        v28 = [v59 nowPlayingTimestamp];
        if (v28)
        {
          v29 = v28;
          sub_268B345D4();

          v27 = 0;
        }

        __swift_storeEnumTagSinglePayload(v19, v27, 1, v4);
        v30 = *(v11 + 48);
        sub_2688F1FA4(v21, v14, &unk_2802A7350, qword_268B3FF10);
        sub_2688F1FA4(v19, &v14[v30], &unk_2802A7350, qword_268B3FF10);
        OUTLINED_FUNCTION_124(v14);
        if (v32)
        {
          sub_2688C058C(v19, &unk_2802A7350, qword_268B3FF10);
          sub_2688C058C(v21, &unk_2802A7350, qword_268B3FF10);
          OUTLINED_FUNCTION_124(&v14[v30]);
          if (v32)
          {
            sub_2688C058C(v14, &unk_2802A7350, qword_268B3FF10);
            v31 = v59;
            goto LABEL_24;
          }
        }

        else
        {
          sub_2688F1FA4(v14, v2, &unk_2802A7350, qword_268B3FF10);
          OUTLINED_FUNCTION_124(&v14[v30]);
          if (!v32)
          {
            v36 = v57;
            v35 = v58;
            (*(v58 + 32))(v57, &v14[v30], v4);
            sub_268A523C4(&qword_2802A78A8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            v37 = sub_268B37BB4();
            v38 = *(v35 + 8);
            v38(v36, v4);
            sub_2688C058C(v19, &unk_2802A7350, qword_268B3FF10);
            sub_2688C058C(v21, &unk_2802A7350, qword_268B3FF10);
            v38(v2, v4);
            sub_2688C058C(v14, &unk_2802A7350, qword_268B3FF10);
            v31 = v59;
            if ((v37 & 1) == 0)
            {
              goto LABEL_20;
            }

LABEL_24:
            v39 = v56;
            v40 = sub_2688EF000(v56, &selRef_routeId);
            v42 = v41;
            v43 = sub_2688EF000(v31, &selRef_routeId);
            v33 = v44;
            if (v42)
            {
              if (!v44)
              {

                return v33 & 1;
              }

              if (v40 != v43 || v42 != v44)
              {
                v46 = sub_268B38444();

                if (v46)
                {
                  goto LABEL_37;
                }

LABEL_20:

                goto LABEL_21;
              }
            }

            else if (v44)
            {
              goto LABEL_33;
            }

LABEL_37:
            if (static DeviceProximity.== infix(_:_:)([v39 proximity], objc_msgSend(v31, sel_proximity)))
            {
              v47 = [v39 nowPlayingMediaType];
              if (v47 == [v31 nowPlayingMediaType])
              {
                v48 = sub_2688EF000(v39, &selRef_groupId);
                v50 = v49;
                v51 = sub_2688EF000(v31, &selRef_groupId);
                v53 = v52;
                if (!v50)
                {

                  if (!v53)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_34;
                }

                if (v52)
                {
                  if (v48 != v51 || v50 != v52)
                  {
                    v33 = sub_268B38444();

                    return v33 & 1;
                  }

LABEL_50:
                  v33 = 1;
                  return v33 & 1;
                }

LABEL_33:

LABEL_34:

                goto LABEL_21;
              }
            }

            goto LABEL_20;
          }

          sub_2688C058C(v19, &unk_2802A7350, qword_268B3FF10);
          sub_2688C058C(v21, &unk_2802A7350, qword_268B3FF10);
          (*(v58 + 8))(v2, v4);
        }

        sub_2688C058C(v14, &qword_2802A78A0, &qword_268B47A10);
        v31 = v59;
        goto LABEL_20;
      }
    }
  }

  else
  {
    sub_2688C058C(v61, &byte_2802A6450, &byte_268B3BE10);
  }

LABEL_21:
  v33 = 0;
  return v33 & 1;
}

uint64_t DeviceContext.description.getter()
{
  v2 = v0;
  v3 = sub_268B34614();
  OUTLINED_FUNCTION_1();
  v37 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_1_46();
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_268B381C4();
  MEMORY[0x26D625650](0xD000000000000019, 0x8000000268B5B810);
  v13 = sub_2688EF000(v0, &selRef_routeId);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 0x3E6C696E3CLL;
    v15 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v13, v15);

  MEMORY[0x26D625650](0x203A6D6F6F72202CLL, 0xE800000000000000);
  v16 = sub_2688EF000(v0, &selRef_roomName);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v16 = 0x3E6C696E3CLL;
    v18 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v16, v18);

  MEMORY[0x26D625650](0x6D69786F7270202CLL, 0xED0000203A797469);
  v19 = DeviceProximity.description.getter([v0 proximity]);
  MEMORY[0x26D625650](v19);

  MEMORY[0x26D625650](0xD000000000000013, 0x8000000268B5B830);
  v20 = NowPlayingState.description.getter([v0 nowPlayingState]);
  MEMORY[0x26D625650](v20);

  OUTLINED_FUNCTION_4_32();
  v21 = [v0 nowPlayingTimestamp];
  if (v21)
  {
    v22 = v21;
    sub_268B345D4();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v23, 1, v3);
  sub_2688EF3EC(v1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3))
  {
    sub_2688C058C(v12, &unk_2802A7350, qword_268B3FF10);
    v24 = 0xE500000000000000;
    v25 = 0x3E6C696E3CLL;
  }

  else
  {
    v26 = v37;
    (*(v37 + 16))(v8, v12, v3);
    sub_2688C058C(v12, &unk_2802A7350, qword_268B3FF10);
    v25 = sub_268B34564();
    v24 = v27;
    (*(v26 + 8))(v8, v3);
  }

  MEMORY[0x26D625650](v25, v24);

  OUTLINED_FUNCTION_4_32();
  v28 = NowPlayingMediaType.description.getter([v2 nowPlayingMediaType]);
  MEMORY[0x26D625650](v28);

  MEMORY[0x26D625650](0x656369766564202CLL, 0xEE00203A65707954);
  v29 = sub_2688EF000(v2, &selRef_deviceType);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v29 = 0x3E6C696E3CLL;
    v31 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v29, v31);

  MEMORY[0x26D625650](0x4970756F7267202CLL, 0xEB00000000203A64);
  v32 = sub_2688EF000(v2, &selRef_groupId);
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v32 = 0x3E6C696E3CLL;
    v34 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v32, v34);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return v38;
}

uint64_t sub_268A5236C(uint64_t a1)
{
  result = sub_268A523C4(&qword_2802A78B0, type metadata accessor for DeviceContext, MEMORY[0x277CC9E10]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A523C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_4_32()
{

  JUMPOUT(0x26D625650);
}

id sub_268A52448(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78B8, &qword_268B47A38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_268B35AF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268A528CC(a1);
  sub_268A52C08(a1, v2);
  sub_268A52FCC(a1);
  v14 = type metadata accessor for MediaPlayerIntent(0);
  sub_268A532E4(&a1[v14[7]], v6);
  v15 = sub_268B35984();
  if (__swift_getEnumTagSinglePayload(v6, 1, v15) == 1)
  {
    sub_2688EF38C(v6, &qword_2802A5FA8, &unk_268B3DEF0);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
LABEL_4:
    sub_2688EF38C(v9, &qword_2802A78B8, &qword_268B47A38);
    v16 = sub_2688C063C();
    v17 = sub_268B38064();
    OUTLINED_FUNCTION_0_36(v17);

    goto LABEL_6;
  }

  sub_268B35974();
  (*(*(v15 - 8) + 8))(v6, v15);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_268A7ABE8();
  v18 = sub_268B37DD4();
  OUTLINED_FUNCTION_0_36(v18);

  (*(v11 + 8))(v13, v10);
LABEL_6:
  v19 = a1[v14[8]];
  if (v19 != 2)
  {
    if ((v19 & 1) == 0)
    {
LABEL_17:

      goto LABEL_18;
    }

    v24 = sub_268B38444();

    if (v24)
    {
      goto LABEL_18;
    }
  }

  v20 = *a1;
  if (v20 == 24)
  {
    goto LABEL_19;
  }

  if (sub_26893E3F8(v20) == 0x74726174736572 && v21 == 0xE700000000000000)
  {
    goto LABEL_17;
  }

  v23 = sub_268B38444();

  if (v23)
  {
LABEL_18:
    sub_2688C063C();
    v25 = sub_268B38064();
    [v2 setPlayheadPosition_];

    v26 = sub_268B38054();
    [v2 setShouldStartPlaybackAfterSeek_];
  }

LABEL_19:
  if (v19 == 2)
  {
    goto LABEL_24;
  }

  if (v19)
  {
  }

  else
  {
    v27 = sub_268B38444();

    if ((v27 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  sub_2688C063C();
  v28 = sub_268B38054();
  [v2 setIsSkipToEnd_];

LABEL_24:
  v29 = a1[v14[12]];
  if (v29 == 26)
  {
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = sub_268942D54(v29);
  }

  return [v2 setMediaType_];
}

uint64_t sub_268A528CC(uint64_t a1)
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
    v16 = off_287959EC8;
    v17 = type metadata accessor for SeekTimeIntent();
    v16(v11, v17, &off_287959EA8);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

void sub_268A52C08(uint64_t a1, uint64_t a2)
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
    v29 = off_287959EC8;
    v30 = type metadata accessor for SeekTimeIntent();
    v24 = v26;
    v29(v28, v30, &off_287959EA8);
LABEL_13:
  }
}

void sub_268A52FCC(uint64_t a1)
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
    v13 = off_28795BB18;
    v14 = type metadata accessor for SeekTimeIntent();
    v13(v12, v14, &off_28795BB08);
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

uint64_t sub_268A532E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5FA8, &unk_268B3DEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id OUTLINED_FUNCTION_0_36(uint64_t a1)
{

  return [v1 (v2 + 3401)];
}

id sub_268A53374()
{
  if (qword_2802A4F20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDA00;
  qword_2802CD9E8 = qword_2802CDA00;

  return v1;
}

void sub_268A533D8()
{
  OUTLINED_FUNCTION_26();
  v134 = v0;
  v130 = v1;
  v131 = v2;
  v4 = v3;
  v6 = v5;
  v129 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  v127 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v122 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_78();
  v125 = v15;
  OUTLINED_FUNCTION_9();
  v126 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v124 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v123 = v19 - v18;
  OUTLINED_FUNCTION_9();
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v132 = v21;
  v133 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v24 = v23 - v22;
  v25 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v121 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  v32 = &v117 - v31;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v33 = __swift_project_value_buffer(v25, qword_2802CDA10);
  v119 = *(v27 + 16);
  v120 = v33;
  v119(v32);
  v34 = sub_268B37A34();
  v35 = sub_268B37ED4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_14();
    v118 = v27;
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "SetSubtitleStateHandleIntentStrategy.makeIntentHandledResponse()", v36, 2u);
    v27 = v118;
    OUTLINED_FUNCTION_12();
  }

  v37 = *(v27 + 8);
  v37(v32, v25);
  sub_268A82B50(v6, v24);
  v38 = sub_268AAC1F4((v134 + 16));
  v39 = OBJC_IVAR___SetSubtitleStateIntentResponse_code;
  swift_beginAccess();
  v40 = *(v39 + v4);
  if (v40 == 102)
  {
    OUTLINED_FUNCTION_17_12();
    v70 = v4;
    v71 = v6;
    v72 = swift_allocObject();
    v73 = v134;
    v72[2] = v134;
    v72[3] = v71;
    v75 = v129;
    v74 = v130;
    v72[4] = v70;
    v72[5] = v75;
    v72[6] = v38;
    v72[7] = v74;
    v72[8] = v131;
    v128 = v24;
    v76 = v73[10];
    v130 = v73[11];
    __swift_project_boxed_opaque_existential_1(v73 + 7, v76);

    v77 = v71;
    v78 = v70;

    sub_2689CE88C(0xD000000000000023, 0x8000000268B5B920, sub_268A56B64, v72, v76, v130);

LABEL_27:
    (*(v132 + 8))(v128, v133);
    goto LABEL_28;
  }

  if (v40 == 100)
  {
    v64 = v4;
    v65 = v6;
    v66 = [v6 language];
    v128 = v24;
    if (v66)
    {
      v67 = sub_268A56AF0(v66);
      v69 = v68;
    }

    else
    {
      v67 = 0;
      v69 = 0;
    }

    OUTLINED_FUNCTION_17_12();
    v105 = swift_allocObject();
    v105[2] = v134;
    v105[3] = v65;
    v107 = v129;
    v106 = v130;
    v105[4] = v64;
    v105[5] = v107;
    v105[6] = v38;
    v105[7] = v106;
    v105[8] = v131;

    v108 = v65;
    v109 = v64;

    sub_268A365F4(v67, v69, sub_268A56B6C, v105);

    goto LABEL_27;
  }

  if (v40 != 4)
  {
    v79 = v6;

    v80 = sub_268B36E84();
    v128 = v24;
    if (!v81)
    {
      OUTLINED_FUNCTION_14_18();
      sub_268947F08();
    }

    v82 = v80;
    v83 = v81;
    OUTLINED_FUNCTION_59_0((v134 + 96), *(v134 + 120));
    (*(v124 + 104))(v123, *MEMORY[0x277D5BC00], v126);
    v84 = sub_268B350F4();
    v85 = v125;
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v84);
    v89 = *MEMORY[0x277D5B908];
    v90 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    (*(v91 + 104))(v127, v89, v90);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v90);
    v95 = *v39;
    v96 = v122;
    sub_2688F1FA4(v85, v122, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v96, 1, v84) == 1)
    {
      sub_2688C058C(v96, &unk_2802A57B0, &unk_268B3CE00);
      v97 = 0;
      v98 = 0;
    }

    else
    {
      v97 = sub_268B350B4();
      v98 = v99;
      (*(*(v84 - 8) + 8))(v96, v84);
    }

    v116 = v95;
    v100 = v123;
    v101 = v127;
    sub_2688E2F3C(v129, v123, v79, v97, v98, v82, v83, v127, v116);

    sub_2688C058C(v101, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v125, &unk_2802A57B0, &unk_268B3CE00);
    (*(v124 + 8))(v100, v126);
    OUTLINED_FUNCTION_59_0((v134 + 96), *(v134 + 120));
    sub_2688C2ECC();
    v103 = OUTLINED_FUNCTION_26_1();
    v104 = 96;
    goto LABEL_26;
  }

  v41 = [v6 device];
  if (!v41)
  {
    v128 = v24;

    v110 = v121;
    (v119)(v121, v120, v25);
    v111 = sub_268B37A34();
    v112 = sub_268B37EE4();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = OUTLINED_FUNCTION_14();
      *v113 = 0;
      _os_log_impl(&dword_2688BB000, v111, v112, "No device present in intent", v113, 2u);
      OUTLINED_FUNCTION_12();
    }

    v37(v110, v25);
    OUTLINED_FUNCTION_59_0((v134 + 96), *(v134 + 120));
    sub_2688C2ECC();
    v103 = OUTLINED_FUNCTION_26_1();
    v104 = 95;
LABEL_26:
    *v102 = v104;
    sub_26894B450();

    v114 = OUTLINED_FUNCTION_26_1();
    *v115 = v104;
    v138[0] = v114;
    LOBYTE(v138[5]) = 1;
    (v130)(v138);
    sub_2688C058C(v138, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_27;
  }

  v42 = v41;
  LOWORD(v136[0]) = 0;
  BYTE2(v136[0]) = 0;
  v136[1] = 0;
  v136[2] = 0;
  v43 = v6;
  v44 = 1;
  v136[3] = 1;
  memset(&v136[4], 0, 61);
  memcpy(v137, &v136[1], 0x51uLL);
  sub_2688C058C(v137, &qword_2802A5C88, qword_268B418C0);
  LODWORD(v136[1]) = 0;
  memset(&v136[2], 0, 72);
  LOBYTE(v136[11]) = 1;
  BYTE3(v136[11]) = [v43 enable] == 2;
  if ([v43 type] != 2)
  {
    v44 = [v43 type] == 3;
  }

  BYTE4(v136[11]) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_268B3BBA0;
  *(v45 + 32) = v42;
  v46 = v42;
  sub_268AE3E5C(v45, v47, v48, v49, v50, v51, v52, v53, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);

  memcpy(v138, v136, 0x5DuLL);
  OUTLINED_FUNCTION_17_12();
  v54 = swift_allocObject();
  v54[2] = v134;
  v54[3] = v43;
  v54[4] = v4;
  v55 = v130;
  v54[5] = v129;
  v54[6] = v38;
  v56 = v131;
  v54[7] = v55;
  v54[8] = v56;

  v57 = v43;
  v58 = v4;

  sub_268A3B548(v138, sub_268A56BD0, v54, v59, v60, v61, v62, v63, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135[0], v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7], v135[8], v135[9], v135[10], v135[11], v135[12], v136[0], v136[1], v136[2], v136[3], v136[4]);

  (*(v132 + 8))(v24, v133);
  memcpy(v135, v136, 0x5DuLL);
  sub_268A3D468(v135);
LABEL_28:
  OUTLINED_FUNCTION_23();
}

void sub_268A53EA0()
{
  OUTLINED_FUNCTION_26();
  v82 = v1;
  v83 = v0;
  v74 = v2;
  v75 = v3;
  v81 = v4;
  v84 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v76 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_78();
  v79 = v19;
  OUTLINED_FUNCTION_9();
  v80 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v78 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v77 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_20_0();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v74 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v32);
  v34 = (&v74 - v33);
  sub_2688F1FA4(v9, &v74 - v33, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v34;
    v36 = sub_268B36E84();
    if (v37)
    {
      v38 = v37;
      v75 = v36;
    }

    else
    {
      swift_getErrorValue();
      v34 = v87;
      sub_268B384A4();
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_14_18();
      sub_268947F08();
      v75 = v50;
      v38 = v51;
    }

    v52 = v76;
    OUTLINED_FUNCTION_59_0(v7 + 12, v7[15]);
    (*(v78 + 104))(v77, *MEMORY[0x277D5BC00], v80);
    v53 = sub_268B350F4();
    v54 = v79;
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v53);
    v58 = *MEMORY[0x277D5B8E0];
    v59 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    (*(v60 + 104))(v52, v58, v59);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v59);
    v64 = *v34;
    sub_2688F1FA4(v54, v17, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v17, 1, v53) == 1)
    {
      sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
      v65 = 0;
      v66 = 0;
    }

    else
    {
      v65 = sub_268B350B4();
      v66 = v67;
      (*(*(v53 - 8) + 8))(v17, v53);
    }

    v68 = v77;
    sub_2688E2F3C(v81, v77, v84, v65, v66, v75, v38, v52, v64);

    sub_2688C058C(v52, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v79, &unk_2802A57B0, &unk_268B3CE00);
    (*(v78 + 8))(v68, v80);
    OUTLINED_FUNCTION_59_0(v7 + 12, v7[15]);
    sub_2688C2ECC();
    v69 = swift_allocError();
    *v70 = 89;
    sub_26894B450();

    v85[0] = v35;
    v86 = 1;
    v71 = v35;
    v83(v85);

    sub_2688C058C(v85, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v34, v31);
    OUTLINED_FUNCTION_59_0(v7 + 22, v7[25]);
    v39 = sub_268B36FA4();
    sub_2688F1FA4(v31, v28, &unk_2802A56E0, &unk_268B3CDF0);
    v40 = *(v28 + *(v24 + 48));
    v41 = OUTLINED_FUNCTION_7_23();
    if (v39)
    {
      sub_268A54474(v41, v42, v43, v44, v45, v46, v47, v48, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
    }

    else
    {
      sub_268A54C88(v41, v42, v43, v44, v45, v46, v47, v48, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
    }

    sub_2688C058C(v31, &unk_2802A56E0, &unk_268B3CDF0);
    sub_268B350F4();
    OUTLINED_FUNCTION_4();
    (*(v49 + 8))(v28);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268A54474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v130 = v23;
  LODWORD(v116) = v24;
  v129 = v25;
  v122 = v26;
  v28 = v27;
  v30 = v29;
  v138 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  v128 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v126 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  v121 = v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_78();
  v134 = v42;
  OUTLINED_FUNCTION_9();
  v135 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v133 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_0();
  v132 = v46 - v45;
  OUTLINED_FUNCTION_9();
  v47 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  v123 = v51;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v52);
  v54 = &v116 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_3();
  v127 = v57;
  OUTLINED_FUNCTION_8();
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v116 - v60;
  MEMORY[0x28223BE20](v59);
  v63 = &v116 - v62;
  v64 = sub_268B350F4();
  v137 = *(v64 - 8);
  (*(v137 + 16))(v63, v138, v64);
  v136 = v55;
  v65 = *(v55 + 48);
  v138 = v63;
  *&v63[v65] = v30;
  v66 = qword_2802A4F30;
  v67 = v30;
  if (v66 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v68 = __swift_project_value_buffer(v47, qword_2802CDA10);
  v69 = *(v49 + 16);
  v119 = v68;
  v120 = v49 + 16;
  v118 = v69;
  (v69)(v54);
  v70 = sub_268B37A34();
  v71 = sub_268B37ED4();
  v72 = os_log_type_enabled(v70, v71);
  v131 = v28;
  if (v72)
  {
    v73 = OUTLINED_FUNCTION_14();
    *v73 = 0;
    _os_log_impl(&dword_2688BB000, v70, v71, "SetSubtitleStateHandleIntentStrategy#intentHandledResponse...", v73, 2u);
    OUTLINED_FUNCTION_12();
  }

  v74 = *(v49 + 8);
  v124 = v49 + 8;
  v117 = v74;
  v74(v54, v47);
  OUTLINED_FUNCTION_14_18();
  sub_268947F08();
  v77 = v76;
  v78 = v116;
  v125 = v47;
  if (v116 == 24)
  {
    v79 = v75;
  }

  else
  {

    sub_26894BC08(v78);
    OUTLINED_FUNCTION_25_12();
    OUTLINED_FUNCTION_14_18();
    sub_268947F08();
    v79 = v80;
    v77 = v81;
  }

  v82 = v126;
  v116 = a21;
  OUTLINED_FUNCTION_59_0(v22 + 12, v22[15]);
  (*(v133 + 104))(v132, *MEMORY[0x277D5BC10], v135);
  sub_2688F1FA4(v138, v61, &unk_2802A56E0, &unk_268B3CDF0);

  v83 = v137;
  v84 = v134;
  (*(v137 + 32))(v134, v61, v64);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v64);
  sub_268B34B94();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  v92 = *v78;
  v93 = v84;
  v94 = v121;
  sub_2688F1FA4(v93, v121, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v94, 1, v64) == 1)
  {
    sub_2688C058C(v94, &unk_2802A57B0, &unk_268B3CE00);
    v95 = 0;
    v96 = 0;
  }

  else
  {
    v95 = sub_268B350B4();
    v96 = v97;
    (*(v83 + 8))(v94, v64);
  }

  v126 = v64;
  v115 = v92;
  v99 = v131;
  v98 = v132;
  sub_2688E2F3C(v122, v132, v131, v95, v96, v79, v77, v82, v115);

  sub_2688C058C(v82, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v134, &unk_2802A57B0, &unk_268B3CE00);
  (*(v133 + 8))(v98, v135);
  __swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
  OUTLINED_FUNCTION_7_16();
  v100 = v123;
  v101 = v125;
  v118(v123, v119, v125);
  v102 = sub_268B37A34();
  v103 = sub_268B37ED4();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = OUTLINED_FUNCTION_14();
    *v104 = 0;
    _os_log_impl(&dword_2688BB000, v102, v103, "SetSubtitleStateHandleIntentStrategy#intentHandledResponse returning output", v104, 2u);
    OUTLINED_FUNCTION_12();
  }

  v117(v100, v101);
  v105 = v22[35];
  v106 = v22[36];
  OUTLINED_FUNCTION_59_0(v22 + 32, v105);
  v107 = v138;
  v108 = v127;
  sub_2688F1FA4(v138, v127, &unk_2802A56E0, &unk_268B3CDF0);
  v109 = *(v108 + *(v136 + 48));
  v110 = v128;
  sub_268A82B50(v99, v128);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  (*(v106 + 8))(v108, v109, v110, v129, 1, v130, v116, v105, v106);

  sub_2688C058C(v110, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v107, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v137 + 8))(v108, v126);
  OUTLINED_FUNCTION_23();
}

void sub_268A54C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v112 = v23;
  LODWORD(v114) = v24;
  v122 = v25;
  v116 = v26;
  v117 = v27;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  v120 = v34;
  OUTLINED_FUNCTION_9();
  v121 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v119 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v118 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  v127 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v43 = OUTLINED_FUNCTION_22(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v115 = v44;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_78();
  v125 = v46;
  OUTLINED_FUNCTION_9();
  v126 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v124 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  v123 = v50 - v49;
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
  v65 = &v111 - v64;
  v66 = sub_268B350F4();
  v113 = *(v66 - 8);
  (*(v113 + 16))(v65, v31, v66);
  v67 = *(v58 + 48);
  v128 = v65;
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
    _os_log_impl(&dword_2688BB000, v71, v72, "SetSubtitleStateHandleIntentStrategy#legacyHandledResponse...", v73, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v53 + 8))(v57, v51);
  OUTLINED_FUNCTION_14_18();
  v74 = v117;
  sub_268947F08();
  v77 = v76;
  v78 = v114;
  v79 = v113;
  if (v114 == 24)
  {
    v81 = v75;
  }

  else
  {

    sub_26894BC08(v78);
    OUTLINED_FUNCTION_25_12();
    OUTLINED_FUNCTION_14_18();
    sub_268947F08();
    v81 = v80;
    v77 = v82;
  }

  v114 = a21;
  OUTLINED_FUNCTION_59_0(v22 + 12, v22[15]);
  (*(v124 + 104))(v123, *MEMORY[0x277D5BC10], v126);
  sub_2688F1FA4(v128, v62, &unk_2802A56E0, &unk_268B3CDF0);

  v83 = *(v79 + 32);
  v84 = v79;
  v85 = v125;
  v83(v125, v62, v66);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v66);
  sub_268B34B94();
  OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  v93 = *v78;
  v94 = v115;
  sub_2688F1FA4(v85, v115, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v94, 1, v66) == 1)
  {
    sub_2688C058C(v94, &unk_2802A57B0, &unk_268B3CE00);
    v95 = 0;
    v96 = 0;
  }

  else
  {
    v95 = sub_268B350B4();
    v96 = v97;
    (*(v84 + 8))(v94, v66);
  }

  v98 = v118;
  v99 = v123;
  v100 = v95;
  v101 = v127;
  sub_2688E2F3C(v116, v123, v74, v100, v96, v81, v77, v127, v93);

  sub_2688C058C(v101, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v125, &unk_2802A57B0, &unk_268B3CE00);
  (*(v124 + 8))(v99, v126);
  __swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
  sub_268948308(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
  OUTLINED_FUNCTION_7_16();
  sub_268A82B50(v74, v98);
  v131[3] = sub_268B354F4();
  v131[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v131);
  v102 = 0;
  if (sub_2689F0948())
  {
    v102 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v103 = sub_268B38064();
    [v102 setMinimumAutoDismissalTimeInMs_];

    [v102 setPremptivelyResumeMedia_];
  }

  OUTLINED_FUNCTION_59_0(v22 + 2, v22[5]);
  sub_268B34CA4();
  v105 = v119;
  v104 = v120;
  v106 = v121;
  (*(v119 + 16))(v120, v98, v121);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v106);
  v130 = 0;
  memset(v129, 0, sizeof(v129));
  v110 = v128;
  sub_268B34EF4();

  sub_2688C058C(v129, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v104, &qword_2802A57F0, &qword_268B3DDB0);
  (*(v105 + 8))(v98, v106);
  v132 = 0;
  v112(v131);
  sub_2688C058C(v110, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v131, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_268A55520()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v32 = v2;
  v33 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v15 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v10 + 16))(v14, v15, v8);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_14();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "SetSubtitleStateHandleIntentStrategy.makeFailureHandlingIntentResponse()", v18, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v10 + 8))(v14, v8);
  v19 = sub_268B36E84();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
  }

  else
  {
    swift_beginAccess();
    sub_268B38404();
    OUTLINED_FUNCTION_25_12();
    sub_268947F08();
    v21 = v23;
    v22 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  swift_beginAccess();
  sub_268B38404();
  v26 = sub_268B36E94();
  v28 = v27;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v26;
  *(inited + 56) = v28;
  sub_268B37B84();
  v29 = [v5 enable] == 2;
  OUTLINED_FUNCTION_17_12();
  v30 = swift_allocObject();
  v30[2] = v1;
  v30[3] = v7;
  v30[4] = v5;
  v30[5] = v21;
  v30[6] = v22;
  v30[7] = v32;
  v30[8] = v33;

  v31 = v5;

  sub_268A38940(v29);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A55884(char *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v120 = a7;
  v121 = a8;
  v118 = a5;
  v119 = a6;
  v122 = a4;
  v123 = a2;
  v117 = a3;
  v113 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v103 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = MEMORY[0x28223BE20](v116);
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
  v115 = &v103 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  MEMORY[0x28223BE20](v25);
  v107 = &v103 - v28;
  v29 = sub_268B34E24();
  v124 = *(v29 - 8);
  v125 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v114 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v104 = &v103 - v32;
  v33 = sub_268B37A54();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v110 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v103 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v103 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v42);
  v44 = (&v103 - v43);
  sub_2688F1FA4(v113, &v103 - v43, &qword_2802A6300, &unk_268B3BD80);
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
    v50 = v123;
    v51 = v104;
    if (v49)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "SetSubtitleStateHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v52, 2u);
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    (*(v34 + 8))(v41, v33);
    v53 = __swift_project_boxed_opaque_existential_1(v50 + 12, v50[15]);
    (*(v124 + 104))(v51, *MEMORY[0x277D5BC00], v125);
    v54 = sub_268B350F4();
    v55 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v54);
    v56 = *MEMORY[0x277D5B8E0];
    v57 = sub_268B34B94();
    v58 = v108;
    (*(*(v57 - 8) + 104))(v108, v56, v57);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v57);
    v59 = *v53;
    sub_2688F1FA4(v55, v27, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v54) == 1)
    {
      sub_2688C058C(v27, &unk_2802A57B0, &unk_268B3CE00);
      v60 = 0;
      v61 = 0;
    }

    else
    {
      v60 = sub_268B350B4();
      v61 = v80;
      (*(*(v54 - 8) + 8))(v27, v54);
    }

    sub_2688E2F3C(v117, v51, v122, v60, v61, v118, v119, v58, v59);

    sub_2688C058C(v58, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v55, &unk_2802A57B0, &unk_268B3CE00);
    (*(v124 + 8))(v51, v125);
    __swift_project_boxed_opaque_existential_1(v50 + 12, v50[15]);
    sub_2688C2ECC();
    v81 = swift_allocError();
    *v82 = -65;
    sub_26894B450();

    v83 = swift_allocError();
    *v84 = -65;
    v126[0] = v83;
    v127 = 1;
    v120(v126);

    return sub_2688C058C(v126, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v44, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v33, qword_2802CDA10);
    v63 = *(v34 + 16);
    v104 = v62;
    v103 = v63;
    (v63)(v39);
    v64 = sub_268B37A34();
    v65 = sub_268B37ED4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2688BB000, v64, v65, "SetSubtitleStateHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v66, 2u);
      MEMORY[0x26D6266E0](v66, -1, -1);
    }

    v67 = *(v34 + 8);
    v108 = (v34 + 8);
    v67(v39, v33);
    v68 = __swift_project_boxed_opaque_existential_1(v123 + 12, v123[15]);
    (*(v124 + 104))(v114, *MEMORY[0x277D5BC00], v125);
    v113 = v15;
    v69 = v105;
    sub_2688F1FA4(v15, v105, &unk_2802A56E0, &unk_268B3CDF0);

    v70 = sub_268B350F4();
    v71 = *(v70 - 8);
    v72 = v115;
    (*(v71 + 32))(v115, v69, v70);
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v70);
    v73 = sub_268B34B94();
    v74 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v73);
    v75 = *v68;
    v76 = v106;
    sub_2688F1FA4(v72, v106, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v70);
    v107 = v71;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v76, &unk_2802A57B0, &unk_268B3CE00);
      v78 = 0;
      v79 = 0;
    }

    else
    {
      v78 = sub_268B350B4();
      v79 = v86;
      (*(v71 + 8))(v76, v70);
    }

    v87 = v110;
    v102 = v75;
    v88 = v114;
    sub_2688E2F3C(v117, v114, v122, v78, v79, v118, v119, v74, v102);

    sub_2688C058C(v74, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v115, &unk_2802A57B0, &unk_268B3CE00);
    (*(v124 + 8))(v88, v125);
    v89 = v123;
    __swift_project_boxed_opaque_existential_1(v123 + 12, v123[15]);
    sub_2688C2ECC();
    v90 = swift_allocError();
    *v91 = 97;
    sub_26894B450();

    v103(v87, v104, v33);
    v92 = sub_268B37A34();
    v93 = sub_268B37ED4();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_2688BB000, v92, v93, "SetSubtitleStateHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v94, 2u);
      MEMORY[0x26D6266E0](v94, -1, -1);
    }

    v67(v87, v33);
    v95 = v89[35];
    v96 = v89[36];
    __swift_project_boxed_opaque_existential_1(v89 + 32, v95);
    v97 = v113;
    v98 = v111;
    sub_2688F1FA4(v113, v111, &unk_2802A56E0, &unk_268B3CDF0);
    v99 = *(v98 + *(v116 + 48));
    v100 = v112;
    sub_268A82B50(v122, v112);
    v101 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v101);
    (*(v96 + 8))(v98, v99, v100, MEMORY[0x277D84F90], 0, v120, v121, v95, v96);

    sub_2688C058C(v100, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v97, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v107 + 8))(v98, v70);
  }
}

uint64_t sub_268A565E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A56664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A566E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A56780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A567FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A5689C()
{
  if (qword_2802A4F08 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9E8;

  return v1;
}

uint64_t sub_268A568F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A56948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A5699C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A56A08(uint64_t a1)
{
  result = sub_268A56A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A56A30()
{
  result = qword_2802A78C0;
  if (!qword_2802A78C0)
  {
    type metadata accessor for SetSubtitleStateHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A78C0);
  }

  return result;
}

uint64_t sub_268A56A88()
{

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268A56AF0(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268B37BF4();

  return v3;
}

uint64_t objectdestroy_3Tm_0()
{

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

Swift::String_optional __swiftcall UsoTask_disable_common_Setting.verb()()
{
  if (sub_268A56D8C() == 3)
  {
    if (sub_2689B83B8() == 5)
    {
      sub_268B36334();
      if (v6 && (sub_268962A68(), v1 = v0, v2 = v0, , v2 != 24))
      {
        v3 = sub_26893E3F8(v1);
      }

      else
      {
        v3 = 0;
        v4 = 0;
      }
    }

    else
    {
      v4 = 0xE700000000000000;
      v3 = 0x656C6261736964;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7628147;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_268A56D8C()
{
  if (sub_268A9EA44() >= 3u)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268A56DDC()
{
  v0 = sub_268A9EA44();
  if (v0 >= 3u)
  {
    return 7;
  }

  else
  {
    return 0x50506u >> (8 * v0);
  }
}

uint64_t UsoTask_disable_common_Setting.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v47 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v47 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v47 - v16;
  v18 = sub_268B36334();
  if (v47[1])
  {
    sub_2689633E8();
    if (v19)
    {
      if (qword_2802A4F30 != -1)
      {
        v19 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_1_28(v19, qword_2802CDA10);
      v20(v17);
      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      if (OUTLINED_FUNCTION_2_19(v22))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v23, v24, "UsoTask_disable_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls");
        OUTLINED_FUNCTION_12();
      }

      v25 = 0;
    }

    else
    {
      sub_268964334();
      if ((v30 & 1) != 0 && (sub_268963658(), (v31 & 1) == 0))
      {
        if (qword_2802A4F30 != -1)
        {
          v31 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_1_28(v31, qword_2802CDA10);
        v41(v15);
        v42 = sub_268B37A34();
        v43 = sub_268B37F04();
        if (OUTLINED_FUNCTION_2_19(v43))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_22_6(&dword_2688BB000, v44, v45, "UsoTask_disable_common_Setting#shouldHandle Task is media. Handling in controls");
          OUTLINED_FUNCTION_12();
        }

        v25 = 1;
        v17 = v15;
      }

      else
      {
        sub_268963658();
        if (v32)
        {
          if (qword_2802A4F30 != -1)
          {
            v32 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          OUTLINED_FUNCTION_1_28(v32, qword_2802CDA10);
          v33(v12);
          v34 = sub_268B37A34();
          v35 = sub_268B37F04();
          if (OUTLINED_FUNCTION_2_19(v35))
          {
            v36 = OUTLINED_FUNCTION_14();
            *v36 = 0;
            _os_log_impl(&dword_2688BB000, v34, v9, "UsoTask_disable_common_Setting#shouldHandle Task is settings. Handling in controls", v36, 2u);
            OUTLINED_FUNCTION_12();
          }

          v25 = 2;
          v17 = v12;
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            v32 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          OUTLINED_FUNCTION_1_28(v32, qword_2802CDA10);
          v37(v9);
          v38 = sub_268B37A34();
          v39 = sub_268B37EE4();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = OUTLINED_FUNCTION_14();
            *v40 = 0;
            _os_log_impl(&dword_2688BB000, v38, v39, "UsoTask_disable_common_Setting#shouldHandle Task is not mediaPlayer/media/setting: Not handling in controls", v40, 2u);
            OUTLINED_FUNCTION_12();
          }

          v25 = 3;
          v17 = v9;
        }
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v18 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_1_28(v18, qword_2802CDA10);
    v26(v6);
    v27 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "UsoTask_disable_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v29, 2u);
      OUTLINED_FUNCTION_12();
    }

    v25 = 3;
    v17 = v6;
  }

  result = (*(v3 + 8))(v17, v2);
  *a1 = v25;
  return result;
}

uint64_t sub_268A57394(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A573E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A5743C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A57490(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A574E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A57538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A5758C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A575E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A57644(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A57698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A576FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A57760(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A577C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A57828(uint64_t a1)
{
  result = sub_268A578D4(&qword_2802A78C8, &protocol conformance descriptor for UsoTask_disable_common_Setting);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A578D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B360C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GroupType.description.getter(uint64_t a1)
{
  result = 0x6F7373656363612ELL;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E752ELL;
      break;
    case 1:
      result = 0x6D6F6F722ELL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x687779726576652ELL;
      break;
    case 5:
      result = 0x6C61636F6C2ELL;
      break;
    case 6:
      result = 0x657265682ELL;
      break;
    case 7:
      result = 0x546563697665642ELL;
      break;
    case 8:
      result = 0x697665446C6C612ELL;
      break;
    default:
      sub_268B381C4();

      v3 = sub_268B38404();
      MEMORY[0x26D625650](v3);

      MEMORY[0x26D625650](41, 0xE100000000000000);
      result = 0x64657070616D6E75;
      break;
  }

  return result;
}

uint64_t sub_268A57AEC(uint64_t a1)
{
  v2 = sub_268B37564();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F10 != -1)
  {
    swift_once();
  }

  v14 = qword_2802CD9F0;
  if (*(qword_2802CD9F0 + 16) && (v15 = sub_268A75BA0(), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    (*(v4 + 8))(a1, v2);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v10 + 16))(v13, v18, v8);
    (*(v4 + 16))(v7, a1, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37EE4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = v8;
      v22 = v21;
      v23 = swift_slowAlloc();
      v33 = v10;
      v24 = v23;
      v35 = v23;
      *v22 = 136446210;
      v25 = sub_268B37554();
      v32 = a1;
      v27 = v26;
      v28 = *(v4 + 8);
      v28(v7);
      v29 = sub_26892CDB8(v25, v27, &v35);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_2688BB000, v19, v20, "Cannot convert value %{public}s to GroupType", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x26D6266E0](v24, -1, -1);
      MEMORY[0x26D6266E0](v22, -1, -1);

      (v28)(v32, v2);
      (*(v33 + 8))(v13, v34);
    }

    else
    {

      v30 = *(v4 + 8);
      v30(a1, v2);
      v30(v7, v2);
      (*(v10 + 8))(v13, v8);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_268A57E78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78E0, &qword_268B48058);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78E8, &unk_268B48060) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B414D0;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x277D5F8F8];
  v7 = sub_268B37564();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 3;
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x277D5F8C0], v7);
  *(v4 + v1 + v9) = 8;
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x277D5F8B8], v7);
  *(v4 + 2 * v1 + v10) = 7;
  v11 = v0[14];
  v8(v4 + 3 * v1, *MEMORY[0x277D5F8C8], v7);
  *(v4 + 3 * v1 + v11) = 4;
  v12 = v0[14];
  v8(v4 + 4 * v1, *MEMORY[0x277D5F8D0], v7);
  *(v4 + 4 * v1 + v12) = 6;
  v13 = v0[14];
  v8(v4 + 5 * v1, *MEMORY[0x277D5F8E8], v7);
  *(v4 + 5 * v1 + v13) = 5;
  v14 = v0[14];
  v8(v4 + 6 * v1, *MEMORY[0x277D5F8D8], v7);
  *(v4 + 6 * v1 + v14) = 1;
  v15 = v0[14];
  v8(v4 + 7 * v1, *MEMORY[0x277D5F8E0], v7);
  *(v4 + 7 * v1 + v15) = 2;
  v16 = v4 + 8 * v1;
  v17 = v0[14];
  v8(v16, *MEMORY[0x277D5F8F0], v7);
  *(v16 + v17) = 0;
  sub_268A58168();
  result = sub_268B37B84();
  qword_2802CD9F0 = result;
  return result;
}

unint64_t sub_268A58168()
{
  result = qword_2802A78F0;
  if (!qword_2802A78F0)
  {
    sub_268B37564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A78F0);
  }

  return result;
}

void sub_268A581D8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2(v2))
  {
    sub_268B0DEEC();
    v4 = v3;

    v5 = sub_2688EFD0C();
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v5 == v6)
      {

        return;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D625BD0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v18 = v8;
      sub_268A9CE64(&v18, &v16);

      v10 = v17;
      if (v17)
      {
        v11 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v7 = v14;
        }

        v12 = *(v7 + 16);
        if (v12 >= *(v7 + 24) >> 1)
        {
          sub_2689876A4();
          v7 = v15;
        }

        *(v7 + 16) = v12 + 1;
        v13 = v7 + 16 * v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v10;
      }

      ++v6;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

id sub_268A58364()
{
  if (qword_2802A4D78 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD930;
  qword_2802CD9F8 = qword_2802CD930;

  return v1;
}

void sub_268A583C8()
{
  OUTLINED_FUNCTION_26();
  v45 = v0;
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v47 = v8;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v48 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v17 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v43 = *(v11 + 16);
  v44 = v17;
  v43(v16);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    v42 = v7;
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "MoveSpeakerHandleIntentStrategy.makeIntentHandledResponse() called", v20, 2u);
    v7 = v42;
    OUTLINED_FUNCTION_12();
  }

  v21 = *(v11 + 8);
  v21(v16, v9);
  v22 = sub_268B0F7F4(v7);
  if (v22)
  {
    v23 = v22;
    v50[0] = 0;
    v50[1] = 0;
    v50[2] = 1;
    memset(&v50[3], 0, 57);
    memcpy(v51, v50, 0x51uLL);
    sub_2689B5C10(v51);
    LODWORD(v50[0]) = 0;
    memset(&v50[1], 0, 72);
    LOBYTE(v50[10]) = 1;
    sub_268A63D80();
    v24 = v45;
    memcpy(v53, v50, 0x51uLL);
    v25 = v7;
    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v25;
    v28 = v46;
    v27 = v47;
    v26[4] = v46;
    v26[5] = v27;
    v26[6] = v5;
    v26[7] = v3;
    v26[8] = v23;

    v29 = v25;
    v30 = v28;

    sub_268AB22F8(v53, sub_268A5C664, v26, v31, v32, v33, v34, v35, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v52[0], v52[1], v52[2], v52[3], v52[4]);

    memcpy(v52, v50, 0x51uLL);
    sub_2689B5C10(v52);
  }

  else
  {
    (v43)(v48, v44, v9);
    v36 = sub_268B37A34();
    v37 = sub_268B37EE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_14();
      *v38 = 0;
      _os_log_impl(&dword_2688BB000, v36, v37, "Unable to find any destinations in the intent. Returning a failure", v38, 2u);
      OUTLINED_FUNCTION_12();
    }

    v21(v48, v9);
    sub_2688C2ECC();
    v39 = swift_allocError();
    *v40 = 29;
    v53[0] = v39;
    LOBYTE(v53[5]) = 1;
    v5(v53);
    sub_2688C058C(v53, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A58770(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8)
{
  v26[1] = a4;
  v26[2] = a8;
  v26[4] = a5;
  v26[5] = a7;
  v26[3] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v17);
  v19 = (v26 - v18);
  sub_2688F1FA4(a1, v26 - v18, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27[0] = *v19;
    v20 = v27[0];
    v28 = 1;
    v21 = v27[0];
    a6(v27);

    return sub_2688C058C(v27, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v19, v16);
    __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
    v23 = sub_268B36FA4();
    sub_2688F1FA4(v16, v14, &unk_2802A56E0, &unk_268B3CDF0);
    v24 = *&v14[*(v11 + 48)];
    if (v23)
    {
      sub_268A58A00();
    }

    else
    {
      sub_268A596D0();
    }

    sub_2688C058C(v16, &unk_2802A56E0, &unk_268B3CDF0);
    v25 = sub_268B350F4();
    return (*(*(v25 - 8) + 8))(v14, v25);
  }
}

void sub_268A58A00()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v74 = v2;
  v75 = v3;
  v73 = v4;
  v80 = v5;
  v7 = v6;
  v9 = v8;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v77 = v11;
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v76 = v13 - v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  *(&v69 + 1) = v22;
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v25);
  v70 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v79 = &v62 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - v29;
  v31 = sub_268B350F4();
  v71 = *(v31 - 8);
  v72 = v31;
  (*(v71 + 16))(v30, v9);
  v32 = v30;
  *&v30[*(v21 + 48)] = v7;
  v33 = qword_2802A4F30;
  v34 = v7;
  if (v33 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v35 = __swift_project_value_buffer(v14, qword_2802CDA10);
  (*(v16 + 16))(v20, v35, v14);
  v36 = sub_268B37A34();
  v37 = sub_268B37ED4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_14();
    *v38 = 0;
    _os_log_impl(&dword_2688BB000, v36, v37, "MoveSpeakerHandleIntentStrategy#intentHandledResponse...", v38, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v16 + 8))(v20, v14);
  sub_26890C900((v1 + 33), v81);
  v66 = v83;
  v67 = v82;
  *&v69 = __swift_project_boxed_opaque_existential_1(v81, v82);
  v39 = v79;
  sub_2688F1FA4(v32, v79, &unk_2802A56E0, &unk_268B3CDF0);
  v68 = *(v39 + *(v21 + 48));
  sub_268A581D8(v1[38], sub_268B0F7F4);
  v41 = v40;
  if (*(v40 + 16))
  {
    v42 = *(v40 + 40);
    v64 = *(v41 + 32);
    v65 = v42;
  }

  else
  {
    v64 = 0;
    v65 = 0xE000000000000000;
  }

  v43 = *__swift_project_boxed_opaque_existential_1(v1 + 28, v1[31]);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v63) = [v43 BOOLForKey_];
  }

  else
  {
    HIDWORD(v63) = 0;
  }

  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_268B3BBA0;
    *(v45 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v46 = v76;
  v47 = v80;
  sub_268A82B50(v80, v76);
  v48 = sub_2689F0948();
  v62 = v32;
  v49 = v32;
  v50 = v70;
  sub_2688F1FA4(v49, v70, &unk_2802A56E0, &unk_268B3CDF0);
  v51 = (*(*(&v69 + 1) + 80) + 40) & ~*(*(&v69 + 1) + 80);
  v52 = (v24 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v53[2] = v47;
  v53[3] = v1;
  v53[4] = v74;
  sub_2689186C8(v50, v53 + v51);
  v54 = (v53 + v52);
  v55 = v75;
  *v54 = v73;
  v54[1] = v55;
  v56 = v47;

  LOBYTE(v60) = v48 & 1;
  v57 = (v1 + 13);
  v58 = v79;
  v59 = v68;
  sub_268A83648(v79, v68, v64, v65, HIDWORD(v63), v45, v46, v57, v60, sub_268A5C550, v53, v67, v66, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);

  (*(v77 + 8))(v46, v78);
  sub_2688C058C(v62, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v71 + 8))(v58, v72);
  __swift_destroy_boxed_opaque_existential_0Tm(v81);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A59014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
    _os_log_impl(&dword_2688BB000, v27, v28, "MoveSpeakerHandleIntentStrategy#intentHandledResponse output has been created.", v29, 2u);
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
  sub_2688E3410();

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
    _os_log_impl(&dword_2688BB000, v42, v43, "MoveSpeakerHandleIntentStrategy#intentHandledResponse returning output", v44, 2u);
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v48(v41, v20);
  return v56(v54);
}

void sub_268A596D0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v68 = v3;
  v69 = v2;
  v65 = v4;
  v62 = v5;
  v7 = v6;
  v67 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v21 = v20 - 8;
  v63 = *(v20 - 8);
  v22 = *(v63 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v64 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v26 + 16))(v25, v12);
  v27 = *(v21 + 56);
  v66 = v25;
  *&v25[v27] = v10;
  v28 = qword_2802A4F30;
  v29 = v10;
  if (v28 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v30 = __swift_project_value_buffer(v13, qword_2802CDA10);
  (*(v15 + 16))(v19, v30, v13);
  v31 = sub_268B37A34();
  v32 = sub_268B37ED4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_14();
    *v33 = 0;
    _os_log_impl(&dword_2688BB000, v31, v32, "MoveSpeakerHandleIntentStrategy#legacyHandledResponse...", v33, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v15 + 8))(v19, v13);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_268B3BBA0;
    v35 = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
    v61 = v34;
    *(v34 + 32) = v35;
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
  }

  sub_268B0DEEC();
  v37 = v36;
  if (sub_2688EFD0C())
  {
    sub_2688EFD10();
    if ((v37 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x26D625BD0](0, v37);
    }

    else
    {
      v38 = *(v37 + 32);
    }

    v39 = v38;

    v60 = sub_268B0F784(v39);
    v62 = v40;
  }

  else
  {

    v60 = 0;
    v62 = 0;
  }

  v41 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v42 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  if (v42)
  {
    v43 = v42;
    v44 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v59) = [v43 BOOLForKey_];
  }

  else
  {
    HIDWORD(v59) = 0;
  }

  v58 = v1 + 13;
  v45 = v66;
  v46 = v64;
  sub_2688F1FA4(v66, v64, &unk_2802A56E0, &unk_268B3CDF0);
  v47 = (*(v63 + 80) + 40) & ~*(v63 + 80);
  v48 = (v22 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v67;
  v50[2] = v67;
  v50[3] = v1;
  v50[4] = v7;
  sub_2689186C8(v46, v50 + v47);
  v52 = (v50 + v48);
  v54 = v68;
  v53 = v69;
  *v52 = v65;
  v52[1] = v54;
  *(v50 + v49) = v61;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
  v55 = *__swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
  v56 = v51;

  v57 = v53;
  sub_268AED0F0(v56, v60, v62, 0, 0, HIDWORD(v59), (v1 + 3), (v1 + 8), v58, v55, sub_268A5C364, v50, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);

  sub_2688C058C(v45, &unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A59BF0(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, unint64_t a9, uint64_t a10)
{
  v80 = a8;
  v81 = a7;
  v86 = a6;
  v79 = a5;
  v84 = a4;
  v87 = a3;
  LODWORD(v77) = a2;
  v82 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v70 - v11;
  v76 = sub_268B35044();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v72 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v70 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v70 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v70 - v33;
  v35 = sub_268B34E24();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v78 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v70 - v40;
  v85 = v39;
  v83 = v36;
  if (v77)
  {
    v42 = v17;
    v43 = v84;
    v44 = v86;
    v45 = sub_268B36E84();
    if (v46)
    {
      v77 = v45;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v77 = v60;
    }

    v61 = v85;
    v62 = v72;
    __swift_project_boxed_opaque_existential_1(v43 + 18, v43[21]);
    (*(v83 + 104))(v78, *MEMORY[0x277D5BC00], v61);
    sub_2688F1FA4(v44, v20, &unk_2802A56E0, &unk_268B3CDF0);

    v63 = sub_268B350F4();
    v64 = *(v63 - 8);
    (*(v64 + 32))(v29, v20, v63);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v63);
    v65 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v65);
    sub_2688F1FA4(v29, v26, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v26, 1, v63) == 1)
    {
      sub_2688C058C(v26, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v64 + 8))(v26, v63);
    }

    v66 = v78;
    sub_2688E3410();

    sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v29, &unk_2802A57B0, &unk_268B3CE00);
    (*(v83 + 8))(v66, v85);
    v90[0] = v82;
    v93 = 1;
    v67 = v82;
  }

  else
  {
    v78 = a9;
    sub_268947F08();
    v77 = v47;
    __swift_project_boxed_opaque_existential_1(v84 + 18, v84[21]);
    (*(v36 + 104))(v41, *MEMORY[0x277D5BC10], v35);
    sub_2688F1FA4(v86, v22, &unk_2802A56E0, &unk_268B3CDF0);

    v48 = sub_268B350F4();
    v49 = *(v48 - 8);
    (*(v49 + 32))(v34, v22, v48);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v48);
    v50 = sub_268B34B94();
    v51 = v71;
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v50);
    sub_2688F1FA4(v34, v32, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v32, 1, v48) == 1)
    {
      sub_2688C058C(v32, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v49 + 8))(v32, v48);
    }

    v52 = v87;
    sub_2688E3410();

    sub_2688C058C(v51, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v34, &unk_2802A57B0, &unk_268B3CE00);
    (*(v83 + 8))(v41, v85);
    v53 = v84;
    __swift_project_boxed_opaque_existential_1(v84 + 18, v84[21]);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v90[0] = v82;

    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    v54 = v73;
    sub_268A82B50(v52, v73);
    if (v78 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v69 = sub_268B38294();

      v78 = v69;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v91 = sub_268B354F4();
    v92 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v90);
    v55 = 0;
    if (sub_2689F0948())
    {
      v55 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v56 = sub_268B38064();
      [v55 setMinimumAutoDismissalTimeInMs_];

      [v55 setPremptivelyResumeMedia_];
    }

    __swift_project_boxed_opaque_existential_1(v53 + 3, v53[6]);
    sub_268B34CA4();
    v57 = v74;
    v58 = v75;
    v59 = v76;
    (*(v74 + 16))(v75, v54, v76);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);
    v89 = 0;
    memset(v88, 0, sizeof(v88));
    sub_268B34EF4();

    sub_2688C058C(v88, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v58, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v57 + 8))(v54, v59);
    v93 = 0;
  }

  v81(v90);
  return sub_2688C058C(v90, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A5A770()
{
  OUTLINED_FUNCTION_26();
  v69 = v0;
  v70 = v1;
  v66 = v2;
  v4 = v3;
  v71 = v5;
  v68 = v6;
  v61 = sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v60 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v59 = v10 - v9;
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v72 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v19 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v20 = *(v13 + 16);
  v20(v18, v19, v11);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_14();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse() called", v23, 2u);
    OUTLINED_FUNCTION_12();
  }

  v24 = *(v13 + 8);
  v24(v18, v11);
  v25 = sub_268B36E84();
  v65 = v13 + 8;
  if (v26)
  {
    v62 = v26;
    v63 = v25;
  }

  else
  {
    v27 = OBJC_IVAR___MoveSpeakerIntentResponse_code;
    swift_beginAccess();
    v73[0] = *(v4 + v27);
    sub_268B38404();
    sub_268947F08();
    v63 = v28;
    v62 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v31 = OBJC_IVAR___MoveSpeakerIntentResponse_code;
  swift_beginAccess();
  v73[0] = *(v4 + v31);
  sub_268B38404();
  v67 = v4;
  v32 = sub_268B36E94();
  v34 = v33;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v32;
  *(inited + 56) = v34;
  v64 = sub_268B37B84();
  sub_268B36754();
  v35 = sub_268B36734();
  if (!v35)
  {
    v35 = sub_268B36744();
  }

  v36 = v35;
  v37 = v72;
  v20(v72, v19, v11);

  v38 = sub_268B37A34();
  v39 = sub_268B37ED4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v73[0] = v41;
    *v40 = 136315138;
    sub_268B36714();
    v58 = v24;
    v42 = v59;
    sub_268B36B14();

    v43 = sub_268B36784();
    v45 = v44;
    (*(v60 + 8))(v42, v61);
    v46 = sub_26892CDB8(v43, v45, v73);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_2688BB000, v38, v39, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v58(v72, v11);
  }

  else
  {

    v24(v37, v11);
  }

  v47 = v70;
  v48 = v68;
  v49 = swift_allocObject();
  v50 = v69;
  v49[2] = v36;
  v49[3] = v50;
  v51 = v71;
  v49[4] = v48;
  v49[5] = v51;
  v52 = v62;
  v49[6] = v63;
  v49[7] = v52;
  v49[8] = v66;
  v49[9] = v47;
  v53 = *(v67 + v31);
  if (v53 == 101)
  {
    OUTLINED_FUNCTION_8_22(*(v50 + 16));

    v55 = v51;

    OUTLINED_FUNCTION_2_29();
  }

  else
  {
    if (v53 != 100)
    {

      v56 = v51;

      sub_2689B3A84(v56, v73);
      sub_268AB2900();

      sub_2689B5664(v73);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_8_22(*(v50 + 16));

    v54 = v51;

    OUTLINED_FUNCTION_2_29();
  }

LABEL_19:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A5AF24(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v112 = a8;
  v110 = a6;
  v111 = a7;
  v108 = a3;
  v109 = a5;
  v115 = a4;
  v113 = a2;
  v102 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v93 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = MEMORY[0x28223BE20](v107);
  v100 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v95 = &v93 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v93 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v98 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v96 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v106 = &v93 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v93 - v26;
  MEMORY[0x28223BE20](v25);
  v104 = &v93 - v28;
  v114 = sub_268B34E24();
  v116 = *(v114 - 8);
  v29 = MEMORY[0x28223BE20](v114);
  v105 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v103 = &v93 - v31;
  v119 = sub_268B37A54();
  v32 = *(v119 - 8);
  v33 = MEMORY[0x28223BE20](v119);
  v99 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v93 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v93 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v40);
  v42 = (&v93 - v41);
  sub_2688F1FA4(v102, &v93 - v41, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v107 = *v42;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v43 = v119;
    v44 = __swift_project_value_buffer(v119, qword_2802CDA10);
    (*(v32 + 16))(v39, v44, v43);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v113;
    v49 = v114;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v50, 2u);
      MEMORY[0x26D6266E0](v50, -1, -1);
    }

    (*(v32 + 8))(v39, v119);
    __swift_project_boxed_opaque_existential_1(v48 + 18, v48[21]);
    (*(v116 + 104))(v103, *MEMORY[0x277D5BC00], v49);
    v51 = sub_268B350F4();
    v52 = v104;
    __swift_storeEnumTagSinglePayload(v104, 1, 1, v51);
    v53 = *MEMORY[0x277D5B8E0];
    v54 = sub_268B34B94();
    v55 = v97;
    (*(*(v54 - 8) + 104))(v97, v53, v54);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
    sub_2688F1FA4(v52, v27, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v27, 1, v51) == 1)
    {
      sub_2688C058C(v27, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v51 - 8) + 8))(v27, v51);
    }

    v73 = v103;
    sub_2688E3410();

    sub_2688C058C(v55, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v104, &unk_2802A57B0, &unk_268B3CE00);
    (*(v116 + 8))(v73, v49);
    __swift_project_boxed_opaque_existential_1(v48 + 18, v48[21]);
    sub_2688C2ECC();
    v74 = swift_allocError();
    *v75 = -95;
    sub_26894B450();

    v76 = swift_allocError();
    *v77 = -97;
    v117[0] = v76;
    v118 = 1;
    v111(v117);

    return sub_2688C058C(v117, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v42, v15);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v56 = v119;
    v57 = __swift_project_value_buffer(v119, qword_2802CDA10);
    v97 = *(v32 + 16);
    (v97)(v37, v57, v56);
    v58 = sub_268B37A34();
    v59 = sub_268B37ED4();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v114;
    if (v60)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2688BB000, v58, v59, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v62, 2u);
      MEMORY[0x26D6266E0](v62, -1, -1);
    }

    v63 = *(v32 + 8);
    v103 = (v32 + 8);
    v94 = v63;
    v63(v37, v119);
    v64 = v113;
    __swift_project_boxed_opaque_existential_1(v113 + 18, v113[21]);
    (*(v116 + 104))(v105, *MEMORY[0x277D5BC00], v61);
    v104 = v15;
    v65 = v95;
    sub_2688F1FA4(v15, v95, &unk_2802A56E0, &unk_268B3CDF0);

    v66 = sub_268B350F4();
    v67 = *(v66 - 8);
    v68 = v106;
    (*(v67 + 32))(v106, v65, v66);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v66);
    v69 = sub_268B34B94();
    v70 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v69);
    v71 = v96;
    sub_2688F1FA4(v68, v96, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v66);
    v102 = v67;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      v64 = v113;
      (*(v67 + 8))(v71, v66);
    }

    v79 = v105;
    sub_2688E3410();

    sub_2688C058C(v70, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v106, &unk_2802A57B0, &unk_268B3CE00);
    (*(v116 + 8))(v79, v114);
    __swift_project_boxed_opaque_existential_1(v64 + 18, v64[21]);
    sub_2688C2ECC();
    v80 = swift_allocError();
    *v81 = 79;
    sub_26894B450();

    v82 = v99;
    (v97)(v99, v57, v119);
    v83 = sub_268B37A34();
    v84 = sub_268B37ED4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_2688BB000, v83, v84, "MoveSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v85, 2u);
      MEMORY[0x26D6266E0](v85, -1, -1);
    }

    v94(v82, v119);
    v86 = v64[36];
    v87 = v64[37];
    __swift_project_boxed_opaque_existential_1(v64 + 33, v86);
    v88 = v104;
    v89 = v100;
    sub_2688F1FA4(v104, v100, &unk_2802A56E0, &unk_268B3CDF0);
    v90 = *(v89 + v107[12]);
    v91 = v101;
    sub_268A82B50(v115, v101);
    v92 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v91, 0, 1, v92);
    (*(v87 + 40))(v89, v90, v91, v111, v112, v86, v87);

    sub_2688C058C(v91, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v88, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v102 + 8))(v89, v66);
  }
}

uint64_t sub_268A5BCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5BD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5BDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5BE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A5BF84()
{
  if (qword_2802A4F18 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9F8;

  return v1;
}

uint64_t sub_268A5BFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A5C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A5C084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A5C0F0(uint64_t a1)
{
  result = sub_268A5C118();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A5C118()
{
  result = qword_2802A78F8;
  if (!qword_2802A78F8)
  {
    type metadata accessor for MoveSpeakerHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A78F8);
  }

  return result;
}

uint64_t sub_268A5C170()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268A5C22C()
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

uint64_t sub_268A5C364(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_268A59BF0(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_268A5C440()
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

uint64_t sub_268A5C550(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A59014(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A5C604()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t OUTLINED_FUNCTION_2_29()
{
  v6 = *(v4 - 376);

  return sub_2689CE860(0xD000000000000023, v3 | 0x8000000000000000, v6, sub_268A5C1D0, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_8_22@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
}

uint64_t sub_268A5C764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v75 = sub_268B35AA4();
  v77 = *(v75 - 8);
  v3 = MEMORY[0x28223BE20](v75);
  v83 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v82 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7900, &qword_268B48258);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7908, &qword_268B48260);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7910, &qword_268B48268);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7918, &unk_268B48270);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A78B8, &qword_268B47A38);
  MEMORY[0x28223BE20](v16 - 8);
  v68 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7920, &qword_268B48280);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v67 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = &v57 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7928, &qword_268B48288);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v84 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v63 = &v57 - v25;
  v66 = sub_268B35AF4();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D84F90];
  v86 = MEMORY[0x277D84F90];
  result = sub_2688EFD0C();
  v29 = result;
  v30 = 0;
  while (1)
  {
    if (v29 == v30)
    {
      result = sub_2688EFD0C();
      v32 = result;
      v33 = 0;
      v80 = (v77 + 88);
      v81 = (v77 + 32);
      v79 = *MEMORY[0x277D5E5E0];
      v78 = *MEMORY[0x277D5E620];
      v62 = *MEMORY[0x277D5E618];
      v61 = *MEMORY[0x277D5E5F0];
      v60 = *MEMORY[0x277D5E5E8];
      v59 = *MEMORY[0x277D5E5F8];
      v57 = (v77 + 8);
      v34 = 0.0;
      v58 = *MEMORY[0x277D5E630];
      v35 = v75;
      while (1)
      {
        if (v32 == v33)
        {

          v47 = v63;
          (*(v77 + 104))(v63, v78, v35);
          __swift_storeEnumTagSinglePayload(v47, 0, 1, v35);
          v48 = v64;
          sub_268B35AD4();
          v49 = sub_268B35A24();
          __swift_storeEnumTagSinglePayload(v76, 1, 1, v49);
          __swift_storeEnumTagSinglePayload(v67, 1, 1, v49);
          v50 = v65;
          v51 = v68;
          v52 = v66;
          (*(v65 + 16))(v68, v48, v66);
          __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
          v53 = sub_268B35B04();
          __swift_storeEnumTagSinglePayload(v69, 1, 1, v53);
          v54 = sub_268B35944();
          __swift_storeEnumTagSinglePayload(v70, 1, 1, v54);
          v55 = sub_268B35A34();
          __swift_storeEnumTagSinglePayload(v71, 1, 1, v55);
          __swift_storeEnumTagSinglePayload(v72, 1, 1, v55);
          v56 = sub_268B359F4();
          __swift_storeEnumTagSinglePayload(v73, 1, 1, v56);
          sub_268B35964();
          return (*(v50 + 8))(v48, v52);
        }

        if ((v27 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x26D625BD0](v33, v27);
        }

        else
        {
          if (v33 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }
        }

        if (__OFADD__(v33, 1))
        {
          goto LABEL_49;
        }

        if (!sub_268B36384() || (v36 = sub_2689BABA0(), v38 = v37, , (v38 & 1) != 0))
        {

LABEL_23:
          v39 = 0.0;
          goto LABEL_30;
        }

        v39 = *&v36;
        if (!sub_268B36374())
        {
          break;
        }

        v40 = v84;
        sub_268AAC60C(v84);

        if (__swift_getEnumTagSinglePayload(v40, 1, v35) == 1)
        {
          goto LABEL_29;
        }

        v41 = v40;
        v42 = v82;
        v43 = *v81;
        (*v81)(v82, v41, v35);
        v44 = v83;
        v43(v83, v42, v35);
        result = (*v80)(v44, v35);
        if (result == v79)
        {
          v39 = v39 / 1000.0;
        }

        else if (result != v78)
        {
          if (result == v62)
          {
            v39 = v39 * 60.0;
          }

          else if (result == v61)
          {
            v39 = v39 * 60.0 * 60.0;
          }

          else
          {
            if (result == v60)
            {
              v45 = v39 * 24.0;
            }

            else
            {
              if (result == v59)
              {
                v46 = v39 * 7.0;
              }

              else
              {
                if (result != v58)
                {
                  result = (*v57)(v83, v35);
                  goto LABEL_23;
                }

                v46 = v39 * 14.0;
              }

              v45 = v46 * 24.0;
            }

            v39 = v45 * 60.0 * 60.0;
          }
        }

LABEL_30:
        v34 = v34 + v39;
        ++v33;
      }

      v40 = v84;
      __swift_storeEnumTagSinglePayload(v84, 1, 1, v35);
LABEL_29:
      result = sub_2688EF38C(v40, &qword_2802A7928, &qword_268B48288);
      goto LABEL_30;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D625BD0](v30, a1);
    }

    else
    {
      if (v30 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }
    }

    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    sub_268B35B44();
    if (v85)
    {
      sub_268B357C4();
    }

    sub_268B36394();
    sub_268B35EA4();

    ++v30;
    if (v85)
    {
      MEMORY[0x26D6256C0](result);
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      result = sub_268B37D44();
      v27 = v86;
      v30 = v31;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_268A5D1F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_268A5D240@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 24))() && (v3 = sub_268B35DE4(), , v3))
  {
    sub_268A5C764(v3, a2);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_268B35984();

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v5);
}

uint64_t sub_268A5D2E4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B43BA0;
  *(inited + 32) = xmmword_268B481E0;
  *(inited + 48) = xmmword_268B481F0;
  *(inited + 64) = 0xD000000000000017;
  *(inited + 72) = 0x8000000268B56230;
  sub_268B37324();
  v5 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v5)
  {
    return (*(a2 + 40))(a1, a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v7 = OUTLINED_FUNCTION_14_7();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_268A5D430(uint64_t a1)
{
  v1 = sub_268B37324();
  if (!v2)
  {
    return 0;
  }

  if (v1 == 2036427888 && v2 == 0xE400000000000000)
  {
  }

  else
  {
    v4 = sub_268B38444();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_2_30();
  if (sub_268B37314())
  {
    v5 = sub_26893B978();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_2_30();
  if (sub_268B372F4() || (OUTLINED_FUNCTION_2_30(), sub_268B37304()))
  {

    return 0;
  }

  return 1;
}

uint64_t sub_268A5D510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-v6];
  MEMORY[0x28223BE20](v5);
  (*(v9 + 16))(&v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
  sub_268B36024();
  if (swift_dynamicCast())
  {
    v10 = UsoTask_play_common_MediaItem.hasMediaItemsToPlay()();

    v11 = !v10;
  }

  else
  {
    v11 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B48200;
  inited[3] = xmmword_268B48210;
  v20[0] = sub_268B37324();
  v20[1] = v13;
  MEMORY[0x28223BE20](v20[0]);
  *&v19[-16] = v20;
  v14 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v14 && (OUTLINED_FUNCTION_2_30(), sub_268B377A4(), v15 = sub_268B37924(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v15), sub_2688EF38C(v7, &qword_2802A5CA8, &unk_268B3CE30), EnumTagSinglePayload != 1))
  {
    v17 = sub_268B37834() & v11;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_268A5D7B0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 48))(a1);
  if (result)
  {
    v3 = sub_2689BC484(result);

    return v3;
  }

  return result;
}

id sub_268A5D82C()
{
  result = [objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentHandler()) init];
  qword_2802CDA00 = result;
  return result;
}

uint64_t sub_268A5D860()
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
  sub_268A5F8F4(&unk_2802A5890, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802CDA08 = result;
  return result;
}

uint64_t sub_268A5DAB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v64 = a2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v56 = v3;
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v55 = v5 - v4;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v60 = v7;
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v62 = v8;
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v58 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v59 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
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
    _os_log_impl(&dword_2688BB000, v26, v27, "SetSubtitleStateFlowStrategy#actionForInput called", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v16 + 8);
  v29(v23, v14);
  v30 = v65;
  v31 = v63;
  sub_268B35414();
  sub_26892E9C4(v30, 1, v13);
  v32 = type metadata accessor for MediaIntent(0);
  LODWORD(v30) = __swift_getEnumTagSinglePayload(v13, 1, v32);
  sub_268A03080(v13);
  if (v30 == 1)
  {
    v33 = v58;
    v25(v58, v24, v14);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "SetSubtitleStateFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v29(v33, v14);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_6(0xD00000000000002DLL, "makeIntentFromParseQueue");
    return sub_268B34ED4();
  }

  else
  {
    v58 = (v16 + 8);
    v38 = v62;
    sub_268B35414();
    v40 = v60;
    v39 = v61;
    v41 = (*(v60 + 88))(v38, v61);
    if (v41 == *MEMORY[0x277D5C128] || v41 == *MEMORY[0x277D5C160])
    {
      (*(v40 + 8))(v38, v39);
      return sub_268B34EC4();
    }

    else
    {
      v25(v59, v24, v14);
      v43 = v55;
      v44 = v56;
      v45 = v57;
      (*(v56 + 16))(v55, v31, v57);
      v46 = sub_268B37A34();
      v47 = sub_268B37EE4();
      if (os_log_type_enabled(v46, v47))
      {
        v49 = v43;
        v50 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v66 = v63;
        *v50 = 136315138;
        sub_268B35414();
        v51 = sub_268B37C24();
        v53 = v52;
        (*(v44 + 8))(v49, v45);
        v54 = sub_26892CDB8(v51, v53, &v66);
        v39 = v61;

        *(v50 + 4) = v54;
        _os_log_impl(&dword_2688BB000, v46, v47, "SetSubtitleStateFlowStrategy#actionForInput received unsupported parse type %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        v40 = v60;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v44 + 8))(v43, v45);
      }

      v29(v59, v14);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_3_6(0xD00000000000001FLL, "reateFailed_MediaPlayerIntent");
      sub_268B34ED4();
      return (*(v40 + 8))(v62, v39);
    }
  }
}

uint64_t sub_268A5E138(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v34 = a3;
  v36 = a2;
  v35 = sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
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
  v21 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F28 != -1)
  {
    swift_once();
  }

  v33 = qword_2802CDA08;
  (*(v17 + 16))(&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 16) = v36;
  (*(v17 + 32))(v24 + v22, v21, v15);
  v26 = (v24 + v23);
  v28 = v37;
  v27 = v38;
  *v26 = v34;
  v26[1] = v28;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_268A5F7F0;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_10;
  v29 = _Block_copy(aBlock);
  v30 = v25;

  sub_268B37AE4();
  v42 = MEMORY[0x277D84F90];
  sub_268A5F8F4(&unk_2802A7010, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v31 = v35;
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v29);
  _Block_release(v29);
  (*(v41 + 8))(v9, v31);
  (*(v39 + 8))(v14, v40);
}

void sub_268A5E504(id a1, char *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v93 = a5;
  v105 = a3;
  v106 = a4;
  v103 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v91 - v7;
  v95 = type metadata accessor for MediaIntent(0);
  MEMORY[0x28223BE20](v95);
  v91 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B35494();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v96 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v92 = &v91 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v102 = &v91 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v91 - v18;
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v94 = &v91 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v91 - v26;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v29 = *(v21 + 16);
  v97 = v28;
  v98 = v29;
  v99 = (v21 + 16);
  v29(v27);
  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v104 = a1;
    v33 = v11;
    v34 = v8;
    v35 = v10;
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v39 = v32;
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "SetSubtitleStateFlowStrategy#makeIntentFromParse called", v32, 2u);
    v40 = v39;
    v21 = v38;
    v20 = v37;
    v19 = v36;
    v10 = v35;
    v8 = v34;
    v11 = v33;
    a1 = v104;
    MEMORY[0x26D6266E0](v40, -1, -1);
  }

  v100 = *(v21 + 8);
  v101 = v21 + 8;
  v100(v27, v20);
  if (a1)
  {
    v104 = a1;
  }

  else
  {
    v104 = [objc_allocWithZone(type metadata accessor for SetSubtitleStateIntent()) init];
  }

  v41 = v103;
  v42 = v107;
  v43 = *(v11 + 16);
  v43(v19, v103, v10);
  v44 = (*(v11 + 88))(v19, v10);
  if (v44 == *MEMORY[0x277D5C128] || v44 == *MEMORY[0x277D5C160])
  {
    v46 = *(v11 + 8);
    v47 = a1;
    v46(v19, v10);
    v48 = v41;
    v49 = v102;
    v43(v102, v48, v10);
    sub_26892E9C4(v49, 1, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v95) == 1)
    {
      sub_268A03080(v8);
      v50 = v94;
      (v98)(v94, v97, v20);
      v51 = v92;
      v43(v92, v48, v10);
      v52 = sub_268B37A34();
      v53 = sub_268B37EE4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        LODWORD(v103) = v53;
        v55 = v54;
        v107 = swift_slowAlloc();
        v108 = v107;
        *v55 = 136315138;
        v43(v102, v51, v10);
        v56 = sub_268B37C24();
        v58 = v57;
        v46(v51, v10);
        v59 = sub_26892CDB8(v56, v58, &v108);

        *(v55 + 4) = v59;
        v60 = v55;
        _os_log_impl(&dword_2688BB000, v52, v103, "SetSubtitleStateFlowStrategy#makeIntentFromParse failed to create MediaIntent from parse: %s", v55, 0xCu);
        v61 = v107;
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        MEMORY[0x26D6266E0](v61, -1, -1);
        MEMORY[0x26D6266E0](v60, -1, -1);

        v62 = v94;
      }

      else
      {

        v46(v51, v10);
        v62 = v50;
      }

      v100(v62, v20);
      type metadata accessor for ErrorFilingHelper();
      static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000032, 0x8000000268B56D00, 0xD000000000000010, 0x8000000268B5B9E0, 0xD000000000000014, 0x8000000268B56D40);
      sub_2688C2ECC();
      v89 = swift_allocError();
      *v90 = 93;
      v105(v89, 1);
    }

    else
    {
      v79 = v91;
      sub_26893207C(v8, v91);
      v80 = v104;
      sub_268A4ED18(v79);
      sub_26895F7A8(v79);
      v81 = v93;
      v82 = v93[5];
      v83 = v93[6];
      __swift_project_boxed_opaque_existential_1(v93 + 2, v82);
      v84 = swift_allocObject();
      v85 = v106;
      v84[2] = v105;
      v84[3] = v85;
      v84[4] = v80;
      v86 = v80;

      sub_268AD35F4(v86, &off_287953C28, (v81 + 7), sub_268A5F8E8, v84, v82, v83);
    }
  }

  else
  {
    v103 = v19;
    (v98)(v42, v97, v20);
    v63 = v96;
    v43(v96, v41, v10);
    v64 = a1;
    v65 = sub_268B37A34();
    v66 = sub_268B37EE4();
    if (os_log_type_enabled(v65, v66))
    {
      v68 = swift_slowAlloc();
      v98 = v68;
      v99 = swift_slowAlloc();
      v108 = v99;
      *v68 = 136315138;
      v43(v102, v63, v10);
      v69 = sub_268B37C24();
      v71 = v70;
      v72 = *(v11 + 8);
      v72(v63, v10);
      v73 = sub_26892CDB8(v69, v71, &v108);

      v74 = v98;
      *(v98 + 1) = v73;
      v75 = v104;
      v76 = v66;
      v77 = v74;
      _os_log_impl(&dword_2688BB000, v65, v76, "SetSubtitleStateFlowStrategy#makeIntentFromParse unexpected parse type in makeIntentFromParse: %s", v74, 0xCu);
      v78 = v99;
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      MEMORY[0x26D6266E0](v78, -1, -1);
      MEMORY[0x26D6266E0](v77, -1, -1);

      v100(v107, v20);
    }

    else
    {

      v72 = *(v11 + 8);
      v72(v63, v10);
      v100(v42, v20);
      v75 = v104;
    }

    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000024, 0x8000000268B5A090, 0xD000000000000010, 0x8000000268B5B9E0, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v87 = swift_allocError();
    *v88 = 94;
    v105(v87, 1);

    v72(v103, v10);
  }
}

uint64_t sub_268A5EF14(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v10, v11, "SetSubtitleStateFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_268A5F10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A5F1E8()
{
  if (qword_2802A4F20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDA00;

  return v1;
}

uint64_t sub_268A5F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A5F3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A5F42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A5F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5F514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A5F668(uint64_t a1, uint64_t a2)
{
  result = sub_268A5F8F4(&qword_2802A7938, a2, type metadata accessor for SetSubtitleStateFlowStrategy, &unk_268B48348);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A5F708()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

void sub_268A5F7F0()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_268A5E504(v5, (v0 + v2), v8, v9, v7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A5F8A8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A5F8F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::String_optional __swiftcall UsoTask_set_common_Setting.verb()()
{
  v0 = sub_2689B83B8();
  v1 = v0 == 5;
  if (v0 == 5)
  {
    v2 = 7628147;
  }

  else
  {
    v2 = 0x656C62616E65;
  }

  if (v1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_268A5F980()
{
  v0 = sub_268A9EA44();
  if (v0 == 6)
  {
    return 3;
  }

  return sub_2689ABD4C(v0);
}

uint64_t sub_268A5F9F8@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v36 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  v15 = sub_268B36334();
  if (v36[1])
  {
    sub_268963658();
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
        _os_log_impl(&dword_2688BB000, v18, v19, "UsoTask_set_common_Setting#shouldHandle Task has settings attributes, handling in controls.", v20, 2u);
        OUTLINED_FUNCTION_12();
      }

      v21 = 2;
    }

    else
    {
      sub_268964334();
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
          _os_log_impl(&dword_2688BB000, v28, v29, "UsoTask_set_common_Setting#shouldHandle Task has media attributes, handling in controls.", v30, 2u);
          OUTLINED_FUNCTION_12();
        }

        v21 = 1;
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
          _os_log_impl(&dword_2688BB000, v32, v33, "UsoTask_set_common_Setting#shouldHandle Task has no supported attributes, not handling in controls.", v34, 2u);
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
      _os_log_impl(&dword_2688BB000, v23, v24, "UsoTask_set_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v25, 2u);
      OUTLINED_FUNCTION_12();
    }

    v21 = 3;
    v14 = v6;
  }

  result = (*(v3 + 8))(v14, v2);
  *a1 = v21;
  return result;
}

uint64_t sub_268A5FE14(uint64_t a1)
{
  result = sub_268A5FEE4(&qword_2802A7950, &protocol conformance descriptor for UsoTask_set_common_Setting);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A5FEE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A5FF70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A5FFC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A60018(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A6006C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A600C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A60114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A60168(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A601BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A60220(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A60274(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A602D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A6033C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A603A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A60408()
{
  v0 = sub_268B37A54();
  __swift_allocate_value_buffer(v0, qword_2802CDA10);
  __swift_project_value_buffer(v0, qword_2802CDA10);
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB28;
  return sub_268B37A64();
}

void sub_268A60494()
{
  OUTLINED_FUNCTION_26();
  v114 = v0;
  v2 = v1;
  v121 = v3;
  v118 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v116 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v111 = v6;
  MEMORY[0x28223BE20](v7);
  v110 = v95 - v8;
  v117 = sub_268B36AA4();
  OUTLINED_FUNCTION_1();
  v113 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v108 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v109 = v95 - v14;
  MEMORY[0x28223BE20](v13);
  v112 = v95 - v15;
  sub_268B34714();
  OUTLINED_FUNCTION_1();
  v119 = v16;
  v120 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v115 = v19 - v18;
  v20 = sub_268B37474();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  v27 = sub_268B37434();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v33 = v32 - v31;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_8_23();
  if ((sub_268B34D24() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    if ((sub_268B34CB4() & 1) == 0)
    {
      v107 = v26;
      v39 = v114[3];
      v106 = v114[4];
      v114 = __swift_project_boxed_opaque_existential_1(v114, v39);
      v40 = *MEMORY[0x277D5F850];
      v102 = *(v29 + 104);
      v103 = v29 + 104;
      v102(v33, v40, v27);
      v41 = *(v22 + 104);
      v100 = *MEMORY[0x277D5F8A8];
      v101 = v22 + 104;
      v99 = v41;
      v41(v107);
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      OUTLINED_FUNCTION_8_23();
      v42 = v20;
      v43 = v27;
      v45 = v44;
      sub_268B34C94();
      v104 = v39;
      v46 = v107;
      v95[1] = sub_268B376E4();
      v48 = v47;
      v49 = v120 + 8;
      v98 = *(v120 + 1);
      v98(v45, v119);
      v51 = *(v22 + 8);
      v50 = v22 + 8;
      v97 = v51;
      v51(v46, v42);
      v96 = *(v29 + 8);
      v96(v33, v43);
      v105 = v48;
      if (v48)
      {
        v102(v33, *MEMORY[0x277D5F840], v43);
        v99(v46, v100, v42);
        v120 = v49;
        v103 = v50;
        v52 = v43;
        v53 = v42;
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        sub_268B34C94();
        sub_268B376E4();
        v55 = v54;
        v98(v45, v119);
        v97(v46, v53);
        v96(v33, v52);
        if (v55)
        {
          type metadata accessor for DirectInvocationHelper();
          v56 = OUTLINED_FUNCTION_5_18();
          sub_268A696EC();
          v58 = v57;

          v59 = OUTLINED_FUNCTION_5_18();
          sub_268A696EC();
          v61 = v60;

          v62 = v58;
          v63 = v61;
          v64 = v112;
          v119 = v62;
          v120 = v63;
          sub_268B36A94();
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          v65 = v118;
          v66 = __swift_project_value_buffer(v118, qword_2802CDA10);
          v67 = v116;
          v68 = v110;
          (*(v116 + 16))(v110, v66, v65);
          v69 = v113;
          v70 = *(v113 + 16);
          v71 = v109;
          v72 = v117;
          v70(v109, v64, v117);
          v73 = sub_268B37A34();
          v74 = sub_268B37F04();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v122 = v76;
            *v75 = 136315138;
            v70(v108, v71, v117);
            v77 = sub_268B37C24();
            v79 = v78;
            (*(v113 + 8))(v71, v117);
            v80 = sub_26892CDB8(v77, v79, &v122);

            *(v75 + 4) = v80;
            _os_log_impl(&dword_2688BB000, v73, v74, "YesNoConfirmationViewProvider#snippet created RF 2.0 Snippet: %s.", v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v76);
            v69 = v113;
            OUTLINED_FUNCTION_12();
            v72 = v117;
            OUTLINED_FUNCTION_12();

            (*(v67 + 8))(v68, v118);
          }

          else
          {

            (*(v69 + 8))(v71, v72);
            (*(v67 + 8))(v68, v65);
          }

          v92 = v121;
          (*(v69 + 32))(v121, v112, v72);
          v93 = *MEMORY[0x277D55550];
          v94 = sub_268B36A54();
          (*(*(v94 - 8) + 104))(v92, v93, v94);
          v88 = v92;
          v89 = 0;
          v90 = 1;
          v91 = v94;
LABEL_20:
          __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
          OUTLINED_FUNCTION_23();
          return;
        }
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v81 = v118;
      v82 = __swift_project_value_buffer(v118, qword_2802CDA10);
      v83 = v116;
      v84 = v111;
      (*(v116 + 16))(v111, v82, v81);
      v85 = sub_268B37A34();
      v86 = sub_268B37EE4();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_2688BB000, v85, v86, "YesNoConfirmationViewProvider#snippet Failed to localize labels for confirmation dialog.", v87, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v83 + 8))(v84, v81);
      sub_268B36A54();
      v88 = OUTLINED_FUNCTION_7_24();
      goto LABEL_20;
    }
  }

  sub_268B36A54();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_23();

  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
}

uint64_t sub_268A60DFC(char a1)
{
  if (a1)
  {
    return 28526;
  }

  else
  {
    return 7562617;
  }
}

void sub_268A60E20()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v28 = v4;
  v29 = v5;
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
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "Making views for watch", v20, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v12 + 8))(v16, v10);
  v21 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_268B3C5A0;
  sub_2688EA03C(0, &qword_2802A7968, 0x277D47760);
  v24 = OUTLINED_FUNCTION_29_6(v22);
  *(v24 + 16) = xmmword_268B3BBA0;
  *(v24 + 32) = v7;

  v25 = v7;
  *(v23 + 32) = sub_268996D44(v28, v9, v24, 1);
  v26 = OUTLINED_FUNCTION_29_6(v22);
  *(v26 + 16) = xmmword_268B3BBA0;
  *(v26 + 32) = v1;

  v27 = v1;
  *(v23 + 40) = sub_268996D44(v29, v3, v26, 1);
  sub_268A617C0(v23, v21);
  sub_268B34B84();
  sub_268B34B44();
  OUTLINED_FUNCTION_8_23();
  sub_268B34B64();

  sub_268B34B74();

  OUTLINED_FUNCTION_23();
}

void sub_268A610D8()
{
  OUTLINED_FUNCTION_26();
  v32 = v1;
  v33 = v0;
  v3 = v2;
  v5 = v4;
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
  v19 = sub_268B37F04();

  if (os_log_type_enabled(v18, v19))
  {
    v31 = v5;
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_26892CDB8(v9, v7, &v34);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_26892CDB8(v31, v3, &v34);
    _os_log_impl(&dword_2688BB000, v18, v19, "Making views for TV with confirmUtterance: %s and cancelUtterance: %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    v5 = v31;
    OUTLINED_FUNCTION_12();
  }

  (*(v12 + 8))(v16, v10);
  sub_2688EA03C(0, &unk_2802A79D8, 0x277D47A18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v22 = OUTLINED_FUNCTION_29_6(v21);
  *(v22 + 16) = xmmword_268B3BBA0;
  *(v22 + 32) = v32;

  v23 = v32;
  v24 = sub_268996E40(v5, v3, v22);
  v25 = OUTLINED_FUNCTION_29_6(v21);
  *(v25 + 16) = xmmword_268B3BBA0;
  *(v25 + 32) = v33;

  v26 = v33;
  v27 = sub_268996E40(v9, v7, v25);
  sub_268B34B84();
  sub_268B34B44();
  OUTLINED_FUNCTION_8_23();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_268B3C5A0;
  *(v28 + 32) = v27;
  *(v28 + 40) = v24;
  v29 = v27;
  v30 = v24;
  sub_268B34B54();

  sub_268B34B74();

  OUTLINED_FUNCTION_23();
}