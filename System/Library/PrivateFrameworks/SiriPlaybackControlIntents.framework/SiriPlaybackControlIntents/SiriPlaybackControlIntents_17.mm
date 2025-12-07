void sub_268A61424()
{
  OUTLINED_FUNCTION_26();
  v44 = v0;
  v45 = v1;
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

  v46 = v5;
  v17 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v12 + 16))(v16, v17, v10);

  v18 = sub_268B37A34();
  v19 = sub_268B37F04();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_26892CDB8(v9, v7, &v47);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_26892CDB8(v46, v3, &v47);
    _os_log_impl(&dword_2688BB000, v18, v19, "Making SAUIConfirmationView with confirmLabel: %s and cancelLabel: %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v12 + 8))(v16, v10);
  sub_2688EA03C(0, &qword_2802A6940, 0x277D47A28);
  v21 = sub_268B37BF4();
  v23 = v22;
  v24 = sub_268B37BF4();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v28 = OUTLINED_FUNCTION_29_6(v27);
  *(v28 + 16) = xmmword_268B3BBA0;
  *(v28 + 32) = v44;

  v29 = v44;
  v30 = sub_268996C74(v9, v7, v21, v23, v24, v26, v28);
  v31 = sub_268B37BF4();
  v33 = v32;
  v34 = sub_268B37BF4();
  v36 = v35;
  v37 = OUTLINED_FUNCTION_29_6(v27);
  *(v37 + 16) = xmmword_268B3BBA0;
  *(v37 + 32) = v45;

  v38 = v45;
  v39 = sub_268996C74(v46, v3, v31, v33, v34, v36, v37);
  sub_2688EA03C(0, &qword_2802A79E8, 0x277D47A38);
  v40 = v39;
  v41 = v30;
  v42 = sub_268996A94(v40, v41);
  v43 = OUTLINED_FUNCTION_29_6(v27);
  *(v43 + 16) = xmmword_268B3BBA0;
  *(v43 + 32) = v42;

  OUTLINED_FUNCTION_23();
}

void sub_268A617C0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A79D0, &unk_268B485D0);
  v3 = sub_268B37CE4();

  [a2 setTemplateItems_];
}

uint64_t OUTLINED_FUNCTION_5_18()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_268B34D34();
}

uint64_t sub_268A618A0(uint64_t a1, void (*a2)(char *, unint64_t), uint64_t a3, void (*a4)(uint64_t *), unint64_t a5)
{
  v58 = a4;
  v60 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = (&v54 - v8);
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v57 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - v18;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v20 = __swift_project_value_buffer(v10, qword_2802CDA10);
    v59 = *(v12 + 16);
    v59(v19, v20, v10);
    v21 = sub_268B37A34();
    v22 = sub_268B37ED4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v61 = v6;
      *v23 = 0;
      _os_log_impl(&dword_2688BB000, v21, v22, "PauseMediaConfirmIntentStrategy.makeDialogForConfirmation()", v23, 2u);
      OUTLINED_FUNCTION_12();
    }

    v24 = *(v12 + 8);
    v61 = (v12 + 8);
    v24(v19, v10);
    v25 = sub_268B18100(v60);
    if (!v25)
    {
      break;
    }

    v12 = v25;
    v26 = sub_2688EFD0C();
    if (!v26)
    {

      break;
    }

    v27 = v26;
    v6 = v56;
    v59(v56, v20, v10);
    v19 = v6;
    v28 = sub_268B37A34();
    v9 = sub_268B37EC4();
    v29 = os_log_type_enabled(v28, v9);
    v55 = a5;
    if (v29)
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v60 = v24;
      v31 = v30;
      v62 = v30;
      *v19 = 136315138;
      v32 = type metadata accessor for Device();
      v33 = MEMORY[0x26D6256F0](v12, v32);
      v35 = sub_26892CDB8(v33, v34, &v62);

      *(v19 + 4) = v35;
      _os_log_impl(&dword_2688BB000, v28, v9, "Confirming devices: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v60(v6, v10);
    }

    else
    {

      v24(v6, v10);
    }

    v10 = 0;
    a5 = v12 & 0xC000000000000001;
    v43 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v27 == v10)
      {

        sub_268AAF49C(v43, v58, v55);
      }

      if (a5)
      {
        v44 = MEMORY[0x26D625BD0](v10, v12);
      }

      else
      {
        if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v44 = *(v12 + 8 * v10 + 32);
      }

      v6 = v44;
      v9 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v45 = sub_268988580(v44);
      if (v46)
      {
        v47 = v45;
        v19 = v46;

        goto LABEL_23;
      }

      v47 = sub_268988568(v6);
      v19 = v48;

      ++v10;
      if (v19)
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
        *(v51 + 40) = v19;
        v10 = v9;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v36 = v57;
  v59(v57, v20, v10);
  v37 = sub_268B37A34();
  v38 = sub_268B37EE4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_2688BB000, v37, v38, "Could not find any devices in the intent for confirmation", v39, 2u);
    OUTLINED_FUNCTION_12();
  }

  v24(v36, v10);
  sub_2688C2ECC();
  v40 = swift_allocError();
  *v41 = 33;
  *v9 = v40;
  swift_storeEnumTagMultiPayload();
  v58(v9);
  return sub_2688C058C(v9, &qword_2802A6300, &unk_268B3BD80);
}

uint64_t sub_268A61E78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a4;
  v38 = a5;
  v40 = a2;
  v41 = a1;
  v7 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v39 = &v36 - v14;
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v21 = __swift_project_value_buffer(v15, qword_2802CDA10);
  (*(v17 + 16))(v20, v21, v15);
  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "PauseMediaConfirmIntentStrategy.makePromptForConfirmation() called", v24, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v17 + 8))(v20, v15);
  sub_268B362B4();
  swift_allocObject();
  sub_268B362A4();
  v25 = v39;
  sub_2689D9FD4();

  v26 = v36;
  (*(v9 + 16))(v36, v25, v7);
  v27 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 2) = v37;
  *(v28 + 3) = v29;
  v30 = v40;
  v31 = v41;
  *(v28 + 4) = v40;
  *(v28 + 5) = v6;
  *(v28 + 6) = v31;
  (*(v9 + 32))(&v28[v27], v26, v7);

  v32 = v30;

  sub_268A618A0(v33, v32, v34, sub_268A62D60, v28);

  return (*(v9 + 8))(v25, v7);
}

uint64_t sub_268A621B8(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v64 = a6;
  v65 = a7;
  v63 = a5;
  v70 = a4;
  v71 = a2;
  v72 = a3;
  v67 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v60 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - v14;
  v15 = sub_268B34E24();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_268B37A54();
  v58 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = MEMORY[0x28223BE20](v24);
  v62 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v56 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v56 - v30;
  sub_2688F1FA4(v67, v23, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v23, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v18, qword_2802CDA10);
    v33 = v58;
    v58[2](v20, v32, v18);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "PauseMediaConfirmIntentStrategy.makePromptForConfirmation Unable to generate dialog.", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    (v33[1])(v20, v18);
    sub_2688C2ECC();
    v37 = swift_allocError();
    *v38 = -74;
    v73[0] = v37;
    v74 = 1;
    v71(v73);
    return sub_2688C058C(v73, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v23, v31);
    sub_268947F08();
    v56 = v40;
    v41 = v63;
    __swift_project_boxed_opaque_existential_1(v63 + 8, v63[11]);
    v42 = *MEMORY[0x277D5BB48];
    v43 = *(v68 + 104);
    v58 = v17;
    v43(v17, v42, v69);
    sub_2688F1FA4(v31, v29, &unk_2802A56E0, &unk_268B3CDF0);
    v57 = v24;

    v44 = sub_268B350F4();
    v67 = *(v44 - 8);
    v45 = v59;
    (*(v67 + 32))(v59, v29, v44);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v44);
    v46 = sub_268B34B94();
    v47 = v61;
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v46);
    v48 = v60;
    sub_2688F1FA4(v45, v60, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v48, 1, v44) == 1)
    {
      sub_2688C058C(v48, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v67 + 8))(v48, v44);
    }

    v49 = v58;
    sub_2688E2778();

    sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v45, &unk_2802A57B0, &unk_268B3CE00);
    (*(v68 + 8))(v49, v69);
    v50 = v41[16];
    v51 = v41[17];
    __swift_project_boxed_opaque_existential_1(v41 + 13, v50);
    v52 = v62;
    sub_2688F1FA4(v31, v62, &unk_2802A56E0, &unk_268B3CDF0);
    v53 = *(v52 + *(v57 + 48));
    v54 = sub_268B35044();
    v55 = v66;
    (*(*(v54 - 8) + 16))(v66, v65, v54);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
    (*(v51 + 16))(v52, v53, v55, v71, v72, v50, v51);

    sub_2688C058C(v55, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v31, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v67 + 8))(v52, v44);
  }
}

void sub_268A62A44()
{
  type metadata accessor for PauseMediaConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268A62AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A62B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for PauseMediaConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268A62C14(uint64_t a1)
{
  result = sub_268A62C3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A62C3C()
{
  result = qword_2802A79F0;
  if (!qword_2802A79F0)
  {
    type metadata accessor for PauseMediaConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A79F0);
  }

  return result;
}

uint64_t sub_268A62C90()
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

uint64_t sub_268A62D60(uint64_t a1)
{
  v3 = *(sub_268B35044() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_268A621B8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_268A62F08(uint64_t a1, int a2)
{
  v54 = a2;
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v13 = *(v4 + 16);
  v52 = v12;
  v53 = v13;
  (v13)(v11);
  v14 = sub_268B37A34();
  v15 = sub_268B37EC4();
  v16 = os_log_type_enabled(v14, v15);
  v51 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v49 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v48 = v9;
    v57[0] = v19;
    *v18 = 136446466;
    v20 = NLMediaType.description.getter(a1);
    v22 = sub_26892CDB8(v20, v21, v57);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = v54;
    LOBYTE(v55) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D58, &unk_268B42830);
    v24 = sub_268B38094();
    v26 = sub_26892CDB8(v24, v25, v57);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_2688BB000, v14, v15, "Getting app identifier for mediaType %{public}s and deviceType: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v9 = v48;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v27 = OUTLINED_FUNCTION_5_19();
    (v14)(v27);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_5_19();
    (v14)(v28);
    v23 = v54;
  }

  if (v23 == 7)
  {
    v29 = v50;
    v53(v50, v52, v3);
    v30 = v29;
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Device type is nil. Returning nil for getLocalBundleIdentifier", v33, 2u);
      OUTLINED_FUNCTION_12();
    }

    v34 = v30;
  }

  else
  {
    v35 = v51;
    sub_268A63930(v51, &v55);
    if (v56)
    {
      sub_2688E6514(&v55, v57);
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      v44 = OUTLINED_FUNCTION_0_37();
      v45(v44);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      return OUTLINED_FUNCTION_123();
    }

    sub_268A63A14(&v55);
    v53(v9, v52, v3);
    v36 = sub_268B37A34();
    v37 = sub_268B37EE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v9;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v57[0] = v40;
      *v39 = 136446210;
      v41 = NLMediaType.description.getter(v35);
      v43 = sub_26892CDB8(v41, v42, v57);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2688BB000, v36, v37, "Could not get bunlde id for type: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v34 = v38;
    }

    else
    {

      v34 = v9;
    }
  }

  (v14)(v34, v3);
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_268A63484@<X0>(void *a1@<X8>)
{
  result = *MEMORY[0x277D27E58];
  if (*MEMORY[0x277D27E58])
  {
    result = sub_268B37BF4();
    *a1 = 0x6C7070612E6D6F63;
    a1[1] = 0xEF636973754D2E65;
    a1[2] = 0x6C7070612E6D6F63;
    a1[3] = 0xEF636973754D2E65;
    a1[4] = 0xD000000000000011;
    a1[5] = 0x8000000268B5BA50;
    a1[6] = 0x6C7070612E6D6F63;
    a1[7] = 0xEF636973754D2E65;
    a1[8] = result;
    a1[9] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268A635E4@<X0>(void *a1@<X8>)
{
  result = *MEMORY[0x277D27E60];
  if (*MEMORY[0x277D27E60])
  {
    result = sub_268B37BF4();
    *a1 = 0xD000000000000012;
    a1[1] = 0x8000000268B5BA70;
    a1[2] = 0xD000000000000012;
    a1[3] = 0x8000000268B5BA70;
    a1[4] = 0xD000000000000012;
    a1[5] = 0x8000000268B5BA70;
    a1[6] = 0xD000000000000012;
    a1[7] = 0x8000000268B5BA70;
    a1[8] = result;
    a1[9] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268A63648@<X0>(void *a1@<X8>)
{
  result = *MEMORY[0x277D27E50];
  if (*MEMORY[0x277D27E50])
  {
    result = sub_268B37BF4();
    *a1 = 0xD000000000000010;
    a1[1] = 0x8000000268B5BA90;
    a1[2] = 0xD000000000000010;
    a1[3] = 0x8000000268B5BA90;
    a1[4] = 0xD000000000000010;
    a1[5] = 0x8000000268B5BA90;
    a1[6] = 0xD000000000000011;
    a1[7] = 0x8000000268B5BAB0;
    a1[8] = result;
    a1[9] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268A636C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3E990;
  if (qword_2802A4F40 != -1)
  {
    swift_once();
  }

  v1 = *algn_2802CDA38;
  *(inited + 32) = qword_2802CDA30;
  *(inited + 40) = v1;
  v2 = qword_2802A4F48;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_2802CDA48;
  *(inited + 48) = qword_2802CDA40;
  *(inited + 56) = v3;
  *(inited + 64) = 0xD000000000000018;
  *(inited + 72) = 0x8000000268B562C0;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x8000000268B5BAD0;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x8000000268B5BAF0;

  result = sub_268A63AD8(inited);
  qword_2802CDA28 = result;
  return result;
}

uint64_t sub_268A63894(uint64_t a1, void (*a2)(void *__return_ptr), uint64_t (*a3)(void *), void *a4, void *a5)
{
  (a2)(v11, a1);
  v9 = v11[0];
  v8 = v11[1];

  result = a3(v11);
  *a4 = v9;
  *a5 = v8;
  return result;
}

double sub_268A63930@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 6:
      sub_268A63648(v5);
      *(a2 + 24) = &unk_28795A5A8;
      *(a2 + 32) = &off_28795A7F0;
      goto LABEL_7;
    case 2:
      sub_268A635E4(v5);
      *(a2 + 24) = &unk_28795A638;
      *(a2 + 32) = &off_28795A770;
      goto LABEL_7;
    case 1:
      sub_268A63484(v5);
      *(a2 + 24) = &unk_28795A6C8;
      *(a2 + 32) = &off_28795A6F0;
LABEL_7:
      v3 = swift_allocObject();
      *a2 = v3;
      memcpy((v3 + 16), v5, 0x50uLL);
      return result;
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_268A63A14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A79F8, &unk_268B48708);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_268A63AD8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  result = sub_268B38194();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_268B38514();

    sub_268B37C54();
    result = sub_268B38544();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_268B38444() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268A63C90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_268A63CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_268A63D80()
{
  OUTLINED_FUNCTION_26();
  v6 = OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_30(v10, v177);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58_0();
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_1(v13, v14, v15, v16, v17, v18, v19, v20, v178);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_80_1();
  v26 = MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_16(v26, v27, v28, v29, v30, v31, v32, v33, v179);
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_33_0(v35, v36, v37, v38, v39, v40, v41, v42, v180);
  v44 = MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21_15(v44, v45, v46, v47, v48, v49, v50, v51, v181);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  OUTLINED_FUNCTION_9_20();
  v53 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v54 = OUTLINED_FUNCTION_5_20(v53);
  v55(v54);
  v56 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v58);
    OUTLINED_FUNCTION_50_7(&dword_2688BB000, v59, v60, "Updating destination parameters for WHA dialog");
    OUTLINED_FUNCTION_12();
  }

  v61 = OUTLINED_FUNCTION_16_26();
  v62(v61);
  sub_268A66710(v2);
  OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_19();
  while (v5 != v3)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_94_4();
    }

    else
    {
      OUTLINED_FUNCTION_70_6();
      if (v63)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_92_4();
    }

    OUTLINED_FUNCTION_76_3();
    if (v144)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      OUTLINED_FUNCTION_58_7();
      goto LABEL_98;
    }

    v64 = OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_106_1();
    v65 = OUTLINED_FUNCTION_201_0();
    v4 = v65;
    if (v0)
    {
      v1 = OUTLINED_FUNCTION_102_3();

      if (v1)
      {

        goto LABEL_15;
      }
    }

    else
    {
    }

    v1 = v183;
    sub_268B38214();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_104_3();
    sub_268B38224();
LABEL_15:
    ++v3;
  }

  if (!OUTLINED_FUNCTION_98_1())
  {

    v68 = OUTLINED_FUNCTION_0_38();
    v69(v68);
    v70 = sub_268B37A34();
    v71 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_139_0(v71))
    {
      v72 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v72);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v73, v74, "No destinations found to populate speaker parameter.");
      OUTLINED_FUNCTION_83_0();
    }

    v75 = OUTLINED_FUNCTION_278();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_15_20();
  do
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_81_2();
      if (!(v143 ^ v144 | v66))
      {
        v76 = OUTLINED_FUNCTION_18_14();
        v77(v76);
        v78 = sub_268B37A34();
        v79 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v79))
        {
          v80 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v80);
          OUTLINED_FUNCTION_10_7(&dword_2688BB000, v81, v82, "More than 2 rooms mentioned in the intent. Setting speaker.hasThreeOrMoreRooms to true");
          OUTLINED_FUNCTION_83_0();
        }

        v83 = OUTLINED_FUNCTION_54_4();
        v84(v83);
        OUTLINED_FUNCTION_4_33();
        sub_268AB22D8();
        OUTLINED_FUNCTION_7_25();
        if (!v66)
        {
          OUTLINED_FUNCTION_78_5(v85, v86);
        }

        v87 = OUTLINED_FUNCTION_29_13();
        v88(v87);
      }

      v1 = 0;
      while (v5)
      {
        if (v3)
        {
          v89 = OUTLINED_FUNCTION_138();
          MEMORY[0x26D625BD0](v89);
        }

        else
        {
          OUTLINED_FUNCTION_56_6();
          if (v63)
          {
            goto LABEL_135;
          }

          OUTLINED_FUNCTION_64_6();
        }

        OUTLINED_FUNCTION_75_3();
        if (v144)
        {
          goto LABEL_134;
        }

        if (OUTLINED_FUNCTION_61_4() == 6)
        {

LABEL_55:
          v103 = OUTLINED_FUNCTION_8_24();
          v104(v103);
          v1 = sub_268B37A34();
          v105 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v105))
          {
            v106 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v106);
            OUTLINED_FUNCTION_10_7(&dword_2688BB000, v107, v108, "Destination resolved as the local device. Setting speaker.isInHere to true");
            OUTLINED_FUNCTION_83_0();
          }

          v109 = OUTLINED_FUNCTION_52_9();
          v110(v109);
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_7_25();
          if (!v66)
          {
            OUTLINED_FUNCTION_80_5(v111, v112);
          }

          v113 = OUTLINED_FUNCTION_29_13();
          v114(v113);
          break;
        }

        v0 = OUTLINED_FUNCTION_61_4();

        OUTLINED_FUNCTION_83_4();
        if (v66)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_77_6();
      v5 = &unk_2879500E8;
LABEL_61:
      while (v6 != v56)
      {
        if (v3)
        {
          v117 = OUTLINED_FUNCTION_278();
          MEMORY[0x26D625BD0](v117);
        }

        else
        {
          OUTLINED_FUNCTION_84_4();
          if (v63)
          {
            goto LABEL_133;
          }

          v115 = *(v4 + v6);
        }

        OUTLINED_FUNCTION_73_5();
        if (v144)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_96_3();
        v116 = 0;
        while (v116 != 24)
        {
          OUTLINED_FUNCTION_31_14();
          if (v66)
          {

            goto LABEL_61;
          }
        }

        v1 = v183;
        sub_268B38214();
        OUTLINED_FUNCTION_48_8();
        OUTLINED_FUNCTION_103_3();
        sub_268B38224();
      }

      OUTLINED_FUNCTION_93_5();
      OUTLINED_FUNCTION_71_6();
      if (v118)
      {
        OUTLINED_FUNCTION_49_5();
        if (v0)
        {
          OUTLINED_FUNCTION_99_3();
        }

        else
        {
          v119 = v56[4].isa;
        }

        OUTLINED_FUNCTION_100_2(v119);
        OUTLINED_FUNCTION_55_6();
        if (!v63)
        {
          OUTLINED_FUNCTION_3_39();
          v121();
          v1 = sub_268B37A34();
          v122 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v122))
          {
            v123 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v123);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v124, v125, "Destination #1: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v126();
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_25_15();
          if (!v66)
          {
            if (OUTLINED_FUNCTION_42_9())
            {
              sub_268B37BF4();
              OUTLINED_FUNCTION_66_5();
            }

            else
            {
              OUTLINED_FUNCTION_58_7();
            }

            OUTLINED_FUNCTION_89_4();
LABEL_99:

            v142 = OUTLINED_FUNCTION_24_15();
            (v1)(v142);
LABEL_100:

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v120 == 3)
        {
          OUTLINED_FUNCTION_3_39();
          v127();
          v1 = sub_268B37A34();
          v128 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v128))
          {
            v129 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v129);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v130, v131, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v132();
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_25_15();
          if (!v66)
          {
            if (!OUTLINED_FUNCTION_42_9())
            {
              goto LABEL_97;
            }

            sub_268B37BF4();
            OUTLINED_FUNCTION_66_5();
LABEL_98:
            OUTLINED_FUNCTION_88_4();
            goto LABEL_99;
          }

LABEL_87:
          v133 = OUTLINED_FUNCTION_29_13();
          (v1)(v133);
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_3_39();
        v134();
        v135 = sub_268B37A34();
        v136 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v136))
        {
          v137 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v137);
          OUTLINED_FUNCTION_12_20(&dword_2688BB000, v138, v139, "Destination #1: Destination type is unknown. Ignoring...");
          OUTLINED_FUNCTION_20_2();
        }

        OUTLINED_FUNCTION_37_13();
        v140();
      }

LABEL_101:
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_91_4();
      if (v66)
      {
        swift_unknownObjectRelease();
        goto LABEL_129;
      }

      OUTLINED_FUNCTION_87_3();
      if (v143 == v144)
      {
        __break(1u);
        return;
      }

      v147 = *(v145 + 8 * v146);
      OUTLINED_FUNCTION_95_4();
      OUTLINED_FUNCTION_61_4();
      OUTLINED_FUNCTION_55_6();
      if (!v63)
      {
        v149 = OUTLINED_FUNCTION_1_48();
        v150(v149);
        v151 = sub_268B37A34();
        v152 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v152))
        {
          v153 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v153);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v154, v155, "Destination #2: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v156 = OUTLINED_FUNCTION_17_21();
        v157(v156);
        OUTLINED_FUNCTION_23_17();
        sub_268AB22D8();
        OUTLINED_FUNCTION_26_14();
        if (!v66)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_86_3();
          goto LABEL_127;
        }

        goto LABEL_117;
      }

      if (v148 == 3)
      {
        v158 = OUTLINED_FUNCTION_1_48();
        v159(v158);
        v160 = sub_268B37A34();
        v161 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v161))
        {
          v162 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v162);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v163, v164, "Destination #2: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v165 = OUTLINED_FUNCTION_17_21();
        v166(v165);
        OUTLINED_FUNCTION_23_17();
        sub_268AB22D8();
        OUTLINED_FUNCTION_26_14();
        if (!v66)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_85_4();
LABEL_127:

          v176 = OUTLINED_FUNCTION_24_15();
          (v0)(v176);
          goto LABEL_128;
        }

LABEL_117:
        v167 = OUTLINED_FUNCTION_29_13();
        (v0)(v167);
LABEL_128:

        goto LABEL_129;
      }

      v168 = OUTLINED_FUNCTION_1_48();
      v169(v168);
      v170 = sub_268B37A34();
      v171 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v171))
      {
        v172 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v172);
        OUTLINED_FUNCTION_13_15(&dword_2688BB000, v173, v174, "Destination #2: Destination type is unknown. Ignoring...");
        OUTLINED_FUNCTION_6();
      }

      v75 = OUTLINED_FUNCTION_43_8();
LABEL_31:
      v182(v75);
      goto LABEL_129;
    }

    if (v3)
    {
      v67 = OUTLINED_FUNCTION_138();
      MEMORY[0x26D625BD0](v67);
    }

    else
    {
      OUTLINED_FUNCTION_56_6();
      if (v63)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_64_6();
    }

    OUTLINED_FUNCTION_90_4();
    if (v144)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      goto LABEL_2;
    }

    v56 = OUTLINED_FUNCTION_97_2();

    OUTLINED_FUNCTION_82_2();
  }

  while (!v66);

  v90 = OUTLINED_FUNCTION_0_38();
  v91(v90);
  v92 = sub_268B37A34();
  v93 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v93))
  {
    v95 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v95);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v96, v97, "User mentioned everywhere in the intent. Setting speaker.isAllSpeakers to true");
    OUTLINED_FUNCTION_83_0();
  }

  v98 = OUTLINED_FUNCTION_278();
  v182(v98);
  OUTLINED_FUNCTION_4_33();
  sub_268AB22D8();
  OUTLINED_FUNCTION_7_25();
  if (!v66)
  {
    OUTLINED_FUNCTION_79_5(v99, v100);
  }

  v101 = OUTLINED_FUNCTION_29_13();
  v102(v101);
LABEL_129:
  OUTLINED_FUNCTION_23();
}

void sub_268A647E4()
{
  OUTLINED_FUNCTION_26();
  v6 = OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_30(v10, v177);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58_0();
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_1(v13, v14, v15, v16, v17, v18, v19, v20, v178);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_80_1();
  v26 = MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_16(v26, v27, v28, v29, v30, v31, v32, v33, v179);
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_33_0(v35, v36, v37, v38, v39, v40, v41, v42, v180);
  v44 = MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21_15(v44, v45, v46, v47, v48, v49, v50, v51, v181);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  OUTLINED_FUNCTION_9_20();
  v53 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v54 = OUTLINED_FUNCTION_5_20(v53);
  v55(v54);
  v56 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v58);
    OUTLINED_FUNCTION_50_7(&dword_2688BB000, v59, v60, "Updating destination parameters for WHA dialog");
    OUTLINED_FUNCTION_12();
  }

  v61 = OUTLINED_FUNCTION_16_26();
  v62(v61);
  sub_268A66710(v2);
  OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_19();
  while (v5 != v3)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_94_4();
    }

    else
    {
      OUTLINED_FUNCTION_70_6();
      if (v63)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_92_4();
    }

    OUTLINED_FUNCTION_76_3();
    if (v144)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      OUTLINED_FUNCTION_58_7();
      goto LABEL_98;
    }

    v64 = OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_106_1();
    v65 = OUTLINED_FUNCTION_201_0();
    v4 = v65;
    if (v0)
    {
      v1 = OUTLINED_FUNCTION_102_3();

      if (v1)
      {

        goto LABEL_15;
      }
    }

    else
    {
    }

    v1 = v183;
    sub_268B38214();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_104_3();
    sub_268B38224();
LABEL_15:
    ++v3;
  }

  if (!OUTLINED_FUNCTION_98_1())
  {

    v68 = OUTLINED_FUNCTION_0_38();
    v69(v68);
    v70 = sub_268B37A34();
    v71 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_139_0(v71))
    {
      v72 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v72);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v73, v74, "No destinations found to populate speaker parameter.");
      OUTLINED_FUNCTION_83_0();
    }

    v75 = OUTLINED_FUNCTION_278();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_15_20();
  do
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_81_2();
      if (!(v143 ^ v144 | v66))
      {
        v76 = OUTLINED_FUNCTION_18_14();
        v77(v76);
        v78 = sub_268B37A34();
        v79 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v79))
        {
          v80 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v80);
          OUTLINED_FUNCTION_10_7(&dword_2688BB000, v81, v82, "More than 2 rooms mentioned in the intent. Setting speaker.hasThreeOrMoreRooms to true");
          OUTLINED_FUNCTION_83_0();
        }

        v83 = OUTLINED_FUNCTION_54_4();
        v84(v83);
        OUTLINED_FUNCTION_4_33();
        sub_268AB22D8();
        OUTLINED_FUNCTION_7_25();
        if (!v66)
        {
          OUTLINED_FUNCTION_78_5(v85, v86);
        }

        v87 = OUTLINED_FUNCTION_29_13();
        v88(v87);
      }

      v1 = 0;
      while (v5)
      {
        if (v3)
        {
          v89 = OUTLINED_FUNCTION_138();
          MEMORY[0x26D625BD0](v89);
        }

        else
        {
          OUTLINED_FUNCTION_56_6();
          if (v63)
          {
            goto LABEL_135;
          }

          OUTLINED_FUNCTION_64_6();
        }

        OUTLINED_FUNCTION_75_3();
        if (v144)
        {
          goto LABEL_134;
        }

        if (OUTLINED_FUNCTION_61_4() == 6)
        {

LABEL_55:
          v103 = OUTLINED_FUNCTION_8_24();
          v104(v103);
          v1 = sub_268B37A34();
          v105 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v105))
          {
            v106 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v106);
            OUTLINED_FUNCTION_10_7(&dword_2688BB000, v107, v108, "Destination resolved as the local device. Setting speaker.isInHere to true");
            OUTLINED_FUNCTION_83_0();
          }

          v109 = OUTLINED_FUNCTION_52_9();
          v110(v109);
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_7_25();
          if (!v66)
          {
            OUTLINED_FUNCTION_80_5(v111, v112);
          }

          v113 = OUTLINED_FUNCTION_29_13();
          v114(v113);
          break;
        }

        v0 = OUTLINED_FUNCTION_61_4();

        OUTLINED_FUNCTION_83_4();
        if (v66)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_77_6();
      v5 = &unk_287950120;
LABEL_61:
      while (v6 != v56)
      {
        if (v3)
        {
          v117 = OUTLINED_FUNCTION_278();
          MEMORY[0x26D625BD0](v117);
        }

        else
        {
          OUTLINED_FUNCTION_84_4();
          if (v63)
          {
            goto LABEL_133;
          }

          v115 = *(v4 + v6);
        }

        OUTLINED_FUNCTION_73_5();
        if (v144)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_96_3();
        v116 = 0;
        while (v116 != 24)
        {
          OUTLINED_FUNCTION_31_14();
          if (v66)
          {

            goto LABEL_61;
          }
        }

        v1 = v183;
        sub_268B38214();
        OUTLINED_FUNCTION_48_8();
        OUTLINED_FUNCTION_103_3();
        sub_268B38224();
      }

      OUTLINED_FUNCTION_93_5();
      OUTLINED_FUNCTION_71_6();
      if (v118)
      {
        OUTLINED_FUNCTION_49_5();
        if (v0)
        {
          OUTLINED_FUNCTION_99_3();
        }

        else
        {
          v119 = v56[4].isa;
        }

        OUTLINED_FUNCTION_100_2(v119);
        OUTLINED_FUNCTION_55_6();
        if (!v63)
        {
          OUTLINED_FUNCTION_3_39();
          v121();
          v1 = sub_268B37A34();
          v122 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v122))
          {
            v123 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v123);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v124, v125, "Destination #1: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v126();
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_25_15();
          if (!v66)
          {
            if (OUTLINED_FUNCTION_42_9())
            {
              sub_268B37BF4();
              OUTLINED_FUNCTION_66_5();
            }

            else
            {
              OUTLINED_FUNCTION_58_7();
            }

            OUTLINED_FUNCTION_89_4();
LABEL_99:

            v142 = OUTLINED_FUNCTION_24_15();
            (v1)(v142);
LABEL_100:

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v120 == 3)
        {
          OUTLINED_FUNCTION_3_39();
          v127();
          v1 = sub_268B37A34();
          v128 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v128))
          {
            v129 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v129);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v130, v131, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v132();
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_25_15();
          if (!v66)
          {
            if (!OUTLINED_FUNCTION_42_9())
            {
              goto LABEL_97;
            }

            sub_268B37BF4();
            OUTLINED_FUNCTION_66_5();
LABEL_98:
            OUTLINED_FUNCTION_88_4();
            goto LABEL_99;
          }

LABEL_87:
          v133 = OUTLINED_FUNCTION_29_13();
          (v1)(v133);
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_3_39();
        v134();
        v135 = sub_268B37A34();
        v136 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v136))
        {
          v137 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v137);
          OUTLINED_FUNCTION_12_20(&dword_2688BB000, v138, v139, "Destination #1: Destination type is unknown. Ignoring...");
          OUTLINED_FUNCTION_20_2();
        }

        OUTLINED_FUNCTION_37_13();
        v140();
      }

LABEL_101:
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_91_4();
      if (v66)
      {
        swift_unknownObjectRelease();
        goto LABEL_129;
      }

      OUTLINED_FUNCTION_87_3();
      if (v143 == v144)
      {
        __break(1u);
        return;
      }

      v147 = *(v145 + 8 * v146);
      OUTLINED_FUNCTION_95_4();
      OUTLINED_FUNCTION_61_4();
      OUTLINED_FUNCTION_55_6();
      if (!v63)
      {
        v149 = OUTLINED_FUNCTION_1_48();
        v150(v149);
        v151 = sub_268B37A34();
        v152 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v152))
        {
          v153 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v153);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v154, v155, "Destination #2: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v156 = OUTLINED_FUNCTION_17_21();
        v157(v156);
        OUTLINED_FUNCTION_23_17();
        sub_268AB22D8();
        OUTLINED_FUNCTION_26_14();
        if (!v66)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_86_3();
          goto LABEL_127;
        }

        goto LABEL_117;
      }

      if (v148 == 3)
      {
        v158 = OUTLINED_FUNCTION_1_48();
        v159(v158);
        v160 = sub_268B37A34();
        v161 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v161))
        {
          v162 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v162);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v163, v164, "Destination #2: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v165 = OUTLINED_FUNCTION_17_21();
        v166(v165);
        OUTLINED_FUNCTION_23_17();
        sub_268AB22D8();
        OUTLINED_FUNCTION_26_14();
        if (!v66)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_85_4();
LABEL_127:

          v176 = OUTLINED_FUNCTION_24_15();
          (v0)(v176);
          goto LABEL_128;
        }

LABEL_117:
        v167 = OUTLINED_FUNCTION_29_13();
        (v0)(v167);
LABEL_128:

        goto LABEL_129;
      }

      v168 = OUTLINED_FUNCTION_1_48();
      v169(v168);
      v170 = sub_268B37A34();
      v171 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v171))
      {
        v172 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v172);
        OUTLINED_FUNCTION_13_15(&dword_2688BB000, v173, v174, "Destination #2: Destination type is unknown. Ignoring...");
        OUTLINED_FUNCTION_6();
      }

      v75 = OUTLINED_FUNCTION_43_8();
LABEL_31:
      v182(v75);
      goto LABEL_129;
    }

    if (v3)
    {
      v67 = OUTLINED_FUNCTION_138();
      MEMORY[0x26D625BD0](v67);
    }

    else
    {
      OUTLINED_FUNCTION_56_6();
      if (v63)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_64_6();
    }

    OUTLINED_FUNCTION_90_4();
    if (v144)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      goto LABEL_2;
    }

    v56 = OUTLINED_FUNCTION_97_2();

    OUTLINED_FUNCTION_82_2();
  }

  while (!v66);

  v90 = OUTLINED_FUNCTION_0_38();
  v91(v90);
  v92 = sub_268B37A34();
  v93 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v93))
  {
    v95 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v95);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v96, v97, "User mentioned everywhere in the intent. Setting speaker.isAllSpeakers to true");
    OUTLINED_FUNCTION_83_0();
  }

  v98 = OUTLINED_FUNCTION_278();
  v182(v98);
  OUTLINED_FUNCTION_4_33();
  sub_268AB22D8();
  OUTLINED_FUNCTION_7_25();
  if (!v66)
  {
    OUTLINED_FUNCTION_79_5(v99, v100);
  }

  v101 = OUTLINED_FUNCTION_29_13();
  v102(v101);
LABEL_129:
  OUTLINED_FUNCTION_23();
}

void sub_268A65248()
{
  OUTLINED_FUNCTION_26();
  v6 = OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_30(v10, v177);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58_0();
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_1(v13, v14, v15, v16, v17, v18, v19, v20, v178);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_80_1();
  v26 = MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_16(v26, v27, v28, v29, v30, v31, v32, v33, v179);
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_33_0(v35, v36, v37, v38, v39, v40, v41, v42, v180);
  v44 = MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21_15(v44, v45, v46, v47, v48, v49, v50, v51, v181);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  OUTLINED_FUNCTION_9_20();
  v53 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v54 = OUTLINED_FUNCTION_5_20(v53);
  v55(v54);
  v56 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v58);
    OUTLINED_FUNCTION_50_7(&dword_2688BB000, v59, v60, "Updating destination parameters for WHA dialog");
    OUTLINED_FUNCTION_12();
  }

  v61 = OUTLINED_FUNCTION_16_26();
  v62(v61);
  sub_268A66710(v2);
  OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_19();
  while (v5 != v3)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_94_4();
    }

    else
    {
      OUTLINED_FUNCTION_70_6();
      if (v63)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_92_4();
    }

    OUTLINED_FUNCTION_76_3();
    if (v144)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      OUTLINED_FUNCTION_58_7();
      goto LABEL_98;
    }

    v64 = OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_106_1();
    v65 = OUTLINED_FUNCTION_201_0();
    v4 = v65;
    if (v0)
    {
      v1 = OUTLINED_FUNCTION_102_3();

      if (v1)
      {

        goto LABEL_15;
      }
    }

    else
    {
    }

    v1 = v183;
    sub_268B38214();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_104_3();
    sub_268B38224();
LABEL_15:
    ++v3;
  }

  if (!OUTLINED_FUNCTION_98_1())
  {

    v68 = OUTLINED_FUNCTION_0_38();
    v69(v68);
    v70 = sub_268B37A34();
    v71 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_139_0(v71))
    {
      v72 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v72);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v73, v74, "No destinations found to populate speaker parameter.");
      OUTLINED_FUNCTION_83_0();
    }

    v75 = OUTLINED_FUNCTION_278();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_15_20();
  do
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_81_2();
      if (!(v143 ^ v144 | v66))
      {
        v76 = OUTLINED_FUNCTION_18_14();
        v77(v76);
        v78 = sub_268B37A34();
        v79 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v79))
        {
          v80 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v80);
          OUTLINED_FUNCTION_10_7(&dword_2688BB000, v81, v82, "More than 2 rooms mentioned in the intent. Setting speaker.hasThreeOrMoreRooms to true");
          OUTLINED_FUNCTION_83_0();
        }

        v83 = OUTLINED_FUNCTION_54_4();
        v84(v83);
        OUTLINED_FUNCTION_4_33();
        sub_268AB22D8();
        OUTLINED_FUNCTION_7_25();
        if (!v66)
        {
          OUTLINED_FUNCTION_78_5(v85, v86);
        }

        v87 = OUTLINED_FUNCTION_29_13();
        v88(v87);
      }

      v1 = 0;
      while (v5)
      {
        if (v3)
        {
          v89 = OUTLINED_FUNCTION_138();
          MEMORY[0x26D625BD0](v89);
        }

        else
        {
          OUTLINED_FUNCTION_56_6();
          if (v63)
          {
            goto LABEL_135;
          }

          OUTLINED_FUNCTION_64_6();
        }

        OUTLINED_FUNCTION_75_3();
        if (v144)
        {
          goto LABEL_134;
        }

        if (OUTLINED_FUNCTION_61_4() == 6)
        {

LABEL_55:
          v103 = OUTLINED_FUNCTION_8_24();
          v104(v103);
          v1 = sub_268B37A34();
          v105 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v105))
          {
            v106 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v106);
            OUTLINED_FUNCTION_10_7(&dword_2688BB000, v107, v108, "Destination resolved as the local device. Setting speaker.isInHere to true");
            OUTLINED_FUNCTION_83_0();
          }

          v109 = OUTLINED_FUNCTION_52_9();
          v110(v109);
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_7_25();
          if (!v66)
          {
            OUTLINED_FUNCTION_80_5(v111, v112);
          }

          v113 = OUTLINED_FUNCTION_29_13();
          v114(v113);
          break;
        }

        v0 = OUTLINED_FUNCTION_61_4();

        OUTLINED_FUNCTION_83_4();
        if (v66)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_77_6();
      v5 = &unk_287950158;
LABEL_61:
      while (v6 != v56)
      {
        if (v3)
        {
          v117 = OUTLINED_FUNCTION_278();
          MEMORY[0x26D625BD0](v117);
        }

        else
        {
          OUTLINED_FUNCTION_84_4();
          if (v63)
          {
            goto LABEL_133;
          }

          v115 = *(v4 + v6);
        }

        OUTLINED_FUNCTION_73_5();
        if (v144)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_96_3();
        v116 = 0;
        while (v116 != 24)
        {
          OUTLINED_FUNCTION_31_14();
          if (v66)
          {

            goto LABEL_61;
          }
        }

        v1 = v183;
        sub_268B38214();
        OUTLINED_FUNCTION_48_8();
        OUTLINED_FUNCTION_103_3();
        sub_268B38224();
      }

      OUTLINED_FUNCTION_93_5();
      OUTLINED_FUNCTION_71_6();
      if (v118)
      {
        OUTLINED_FUNCTION_49_5();
        if (v0)
        {
          OUTLINED_FUNCTION_99_3();
        }

        else
        {
          v119 = v56[4].isa;
        }

        OUTLINED_FUNCTION_100_2(v119);
        OUTLINED_FUNCTION_55_6();
        if (!v63)
        {
          OUTLINED_FUNCTION_3_39();
          v121();
          v1 = sub_268B37A34();
          v122 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v122))
          {
            v123 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v123);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v124, v125, "Destination #1: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v126();
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_25_15();
          if (!v66)
          {
            if (OUTLINED_FUNCTION_42_9())
            {
              sub_268B37BF4();
              OUTLINED_FUNCTION_66_5();
            }

            else
            {
              OUTLINED_FUNCTION_58_7();
            }

            OUTLINED_FUNCTION_89_4();
LABEL_99:

            v142 = OUTLINED_FUNCTION_24_15();
            (v1)(v142);
LABEL_100:

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v120 == 3)
        {
          OUTLINED_FUNCTION_3_39();
          v127();
          v1 = sub_268B37A34();
          v128 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v128))
          {
            v129 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v129);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v130, v131, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v132();
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_25_15();
          if (!v66)
          {
            if (!OUTLINED_FUNCTION_42_9())
            {
              goto LABEL_97;
            }

            sub_268B37BF4();
            OUTLINED_FUNCTION_66_5();
LABEL_98:
            OUTLINED_FUNCTION_88_4();
            goto LABEL_99;
          }

LABEL_87:
          v133 = OUTLINED_FUNCTION_29_13();
          (v1)(v133);
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_3_39();
        v134();
        v135 = sub_268B37A34();
        v136 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v136))
        {
          v137 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v137);
          OUTLINED_FUNCTION_12_20(&dword_2688BB000, v138, v139, "Destination #1: Destination type is unknown. Ignoring...");
          OUTLINED_FUNCTION_20_2();
        }

        OUTLINED_FUNCTION_37_13();
        v140();
      }

LABEL_101:
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_91_4();
      if (v66)
      {
        swift_unknownObjectRelease();
        goto LABEL_129;
      }

      OUTLINED_FUNCTION_87_3();
      if (v143 == v144)
      {
        __break(1u);
        return;
      }

      v147 = *(v145 + 8 * v146);
      OUTLINED_FUNCTION_95_4();
      OUTLINED_FUNCTION_61_4();
      OUTLINED_FUNCTION_55_6();
      if (!v63)
      {
        v149 = OUTLINED_FUNCTION_1_48();
        v150(v149);
        v151 = sub_268B37A34();
        v152 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v152))
        {
          v153 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v153);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v154, v155, "Destination #2: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v156 = OUTLINED_FUNCTION_17_21();
        v157(v156);
        OUTLINED_FUNCTION_23_17();
        sub_268AB22D8();
        OUTLINED_FUNCTION_26_14();
        if (!v66)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_86_3();
          goto LABEL_127;
        }

        goto LABEL_117;
      }

      if (v148 == 3)
      {
        v158 = OUTLINED_FUNCTION_1_48();
        v159(v158);
        v160 = sub_268B37A34();
        v161 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v161))
        {
          v162 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v162);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v163, v164, "Destination #2: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v165 = OUTLINED_FUNCTION_17_21();
        v166(v165);
        OUTLINED_FUNCTION_23_17();
        sub_268AB22D8();
        OUTLINED_FUNCTION_26_14();
        if (!v66)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_85_4();
LABEL_127:

          v176 = OUTLINED_FUNCTION_24_15();
          (v0)(v176);
          goto LABEL_128;
        }

LABEL_117:
        v167 = OUTLINED_FUNCTION_29_13();
        (v0)(v167);
LABEL_128:

        goto LABEL_129;
      }

      v168 = OUTLINED_FUNCTION_1_48();
      v169(v168);
      v170 = sub_268B37A34();
      v171 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v171))
      {
        v172 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v172);
        OUTLINED_FUNCTION_13_15(&dword_2688BB000, v173, v174, "Destination #2: Destination type is unknown. Ignoring...");
        OUTLINED_FUNCTION_6();
      }

      v75 = OUTLINED_FUNCTION_43_8();
LABEL_31:
      v182(v75);
      goto LABEL_129;
    }

    if (v3)
    {
      v67 = OUTLINED_FUNCTION_138();
      MEMORY[0x26D625BD0](v67);
    }

    else
    {
      OUTLINED_FUNCTION_56_6();
      if (v63)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_64_6();
    }

    OUTLINED_FUNCTION_90_4();
    if (v144)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      goto LABEL_2;
    }

    v56 = OUTLINED_FUNCTION_97_2();

    OUTLINED_FUNCTION_82_2();
  }

  while (!v66);

  v90 = OUTLINED_FUNCTION_0_38();
  v91(v90);
  v92 = sub_268B37A34();
  v93 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v93))
  {
    v95 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v95);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v96, v97, "User mentioned everywhere in the intent. Setting speaker.isAllSpeakers to true");
    OUTLINED_FUNCTION_83_0();
  }

  v98 = OUTLINED_FUNCTION_278();
  v182(v98);
  OUTLINED_FUNCTION_4_33();
  sub_268AB22D8();
  OUTLINED_FUNCTION_7_25();
  if (!v66)
  {
    OUTLINED_FUNCTION_79_5(v99, v100);
  }

  v101 = OUTLINED_FUNCTION_29_13();
  v102(v101);
LABEL_129:
  OUTLINED_FUNCTION_23();
}

void sub_268A65CAC()
{
  OUTLINED_FUNCTION_26();
  v6 = OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_30(v10, v177);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58_0();
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_1(v13, v14, v15, v16, v17, v18, v19, v20, v178);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31_5();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_80_1();
  v26 = MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_16(v26, v27, v28, v29, v30, v31, v32, v33, v179);
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_33_0(v35, v36, v37, v38, v39, v40, v41, v42, v180);
  v44 = MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21_15(v44, v45, v46, v47, v48, v49, v50, v51, v181);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  OUTLINED_FUNCTION_9_20();
  v53 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v54 = OUTLINED_FUNCTION_5_20(v53);
  v55(v54);
  v56 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_52_1(v58);
    OUTLINED_FUNCTION_50_7(&dword_2688BB000, v59, v60, "Updating destination parameters for WHA dialog");
    OUTLINED_FUNCTION_12();
  }

  v61 = OUTLINED_FUNCTION_16_26();
  v62(v61);
  sub_268A66710(v2);
  OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_14_19();
  while (v5 != v3)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_94_4();
    }

    else
    {
      OUTLINED_FUNCTION_70_6();
      if (v63)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_92_4();
    }

    OUTLINED_FUNCTION_76_3();
    if (v144)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      OUTLINED_FUNCTION_58_7();
      goto LABEL_98;
    }

    v64 = OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_106_1();
    v65 = OUTLINED_FUNCTION_201_0();
    v4 = v65;
    if (v0)
    {
      v1 = OUTLINED_FUNCTION_102_3();

      if (v1)
      {

        goto LABEL_15;
      }
    }

    else
    {
    }

    v1 = v183;
    sub_268B38214();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_104_3();
    sub_268B38224();
LABEL_15:
    ++v3;
  }

  if (!OUTLINED_FUNCTION_98_1())
  {

    v68 = OUTLINED_FUNCTION_0_38();
    v69(v68);
    v70 = sub_268B37A34();
    v71 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_139_0(v71))
    {
      v72 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v72);
      OUTLINED_FUNCTION_10_7(&dword_2688BB000, v73, v74, "No destinations found to populate speaker parameter.");
      OUTLINED_FUNCTION_83_0();
    }

    v75 = OUTLINED_FUNCTION_278();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_15_20();
  do
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_81_2();
      if (!(v143 ^ v144 | v66))
      {
        v76 = OUTLINED_FUNCTION_18_14();
        v77(v76);
        v78 = sub_268B37A34();
        v79 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v79))
        {
          v80 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v80);
          OUTLINED_FUNCTION_10_7(&dword_2688BB000, v81, v82, "More than 2 rooms mentioned in the intent. Setting speaker.hasThreeOrMoreRooms to true");
          OUTLINED_FUNCTION_83_0();
        }

        v83 = OUTLINED_FUNCTION_54_4();
        v84(v83);
        OUTLINED_FUNCTION_4_33();
        sub_268AB22D8();
        OUTLINED_FUNCTION_7_25();
        if (!v66)
        {
          OUTLINED_FUNCTION_78_5(v85, v86);
        }

        v87 = OUTLINED_FUNCTION_29_13();
        v88(v87);
      }

      v1 = 0;
      while (v5)
      {
        if (v3)
        {
          v89 = OUTLINED_FUNCTION_138();
          MEMORY[0x26D625BD0](v89);
        }

        else
        {
          OUTLINED_FUNCTION_56_6();
          if (v63)
          {
            goto LABEL_135;
          }

          OUTLINED_FUNCTION_64_6();
        }

        OUTLINED_FUNCTION_75_3();
        if (v144)
        {
          goto LABEL_134;
        }

        if (OUTLINED_FUNCTION_61_4() == 6)
        {

LABEL_55:
          v103 = OUTLINED_FUNCTION_8_24();
          v104(v103);
          v1 = sub_268B37A34();
          v105 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v105))
          {
            v106 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v106);
            OUTLINED_FUNCTION_10_7(&dword_2688BB000, v107, v108, "Destination resolved as the local device. Setting speaker.isInHere to true");
            OUTLINED_FUNCTION_83_0();
          }

          v109 = OUTLINED_FUNCTION_52_9();
          v110(v109);
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_7_25();
          if (!v66)
          {
            OUTLINED_FUNCTION_80_5(v111, v112);
          }

          v113 = OUTLINED_FUNCTION_29_13();
          v114(v113);
          break;
        }

        v0 = OUTLINED_FUNCTION_61_4();

        OUTLINED_FUNCTION_83_4();
        if (v66)
        {
          goto LABEL_55;
        }
      }

      OUTLINED_FUNCTION_63_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_77_6();
      v5 = &unk_28794F570;
LABEL_61:
      while (v6 != v56)
      {
        if (v3)
        {
          v117 = OUTLINED_FUNCTION_278();
          MEMORY[0x26D625BD0](v117);
        }

        else
        {
          OUTLINED_FUNCTION_84_4();
          if (v63)
          {
            goto LABEL_133;
          }

          v115 = *(v4 + v6);
        }

        OUTLINED_FUNCTION_73_5();
        if (v144)
        {
          goto LABEL_132;
        }

        OUTLINED_FUNCTION_96_3();
        v116 = 0;
        while (v116 != 24)
        {
          OUTLINED_FUNCTION_31_14();
          if (v66)
          {

            goto LABEL_61;
          }
        }

        v1 = v183;
        sub_268B38214();
        OUTLINED_FUNCTION_48_8();
        OUTLINED_FUNCTION_103_3();
        sub_268B38224();
      }

      OUTLINED_FUNCTION_93_5();
      OUTLINED_FUNCTION_71_6();
      if (v118)
      {
        OUTLINED_FUNCTION_49_5();
        if (v0)
        {
          OUTLINED_FUNCTION_99_3();
        }

        else
        {
          v119 = v56[4].isa;
        }

        OUTLINED_FUNCTION_100_2(v119);
        OUTLINED_FUNCTION_55_6();
        if (!v63)
        {
          OUTLINED_FUNCTION_3_39();
          v121();
          v1 = sub_268B37A34();
          v122 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v122))
          {
            v123 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v123);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v124, v125, "Destination #1: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v126();
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_25_15();
          if (!v66)
          {
            if (OUTLINED_FUNCTION_42_9())
            {
              sub_268B37BF4();
              OUTLINED_FUNCTION_66_5();
            }

            else
            {
              OUTLINED_FUNCTION_58_7();
            }

            OUTLINED_FUNCTION_89_4();
LABEL_99:

            v142 = OUTLINED_FUNCTION_24_15();
            (v1)(v142);
LABEL_100:

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v120 == 3)
        {
          OUTLINED_FUNCTION_3_39();
          v127();
          v1 = sub_268B37A34();
          v128 = sub_268B37F04();
          if (OUTLINED_FUNCTION_139_0(v128))
          {
            v129 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_279(v129);
            OUTLINED_FUNCTION_12_20(&dword_2688BB000, v130, v131, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
            OUTLINED_FUNCTION_20_2();
          }

          OUTLINED_FUNCTION_37_13();
          v132();
          OUTLINED_FUNCTION_4_33();
          sub_268AB22D8();
          OUTLINED_FUNCTION_25_15();
          if (!v66)
          {
            if (!OUTLINED_FUNCTION_42_9())
            {
              goto LABEL_97;
            }

            sub_268B37BF4();
            OUTLINED_FUNCTION_66_5();
LABEL_98:
            OUTLINED_FUNCTION_88_4();
            goto LABEL_99;
          }

LABEL_87:
          v133 = OUTLINED_FUNCTION_29_13();
          (v1)(v133);
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_3_39();
        v134();
        v135 = sub_268B37A34();
        v136 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v136))
        {
          v137 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v137);
          OUTLINED_FUNCTION_12_20(&dword_2688BB000, v138, v139, "Destination #1: Destination type is unknown. Ignoring...");
          OUTLINED_FUNCTION_20_2();
        }

        OUTLINED_FUNCTION_37_13();
        v140();
      }

LABEL_101:
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_91_4();
      if (v66)
      {
        swift_unknownObjectRelease();
        goto LABEL_129;
      }

      OUTLINED_FUNCTION_87_3();
      if (v143 == v144)
      {
        __break(1u);
        return;
      }

      v147 = *(v145 + 8 * v146);
      OUTLINED_FUNCTION_95_4();
      OUTLINED_FUNCTION_61_4();
      OUTLINED_FUNCTION_55_6();
      if (!v63)
      {
        v149 = OUTLINED_FUNCTION_1_48();
        v150(v149);
        v151 = sub_268B37A34();
        v152 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v152))
        {
          v153 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v153);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v154, v155, "Destination #2: Destination is a room or zone. Setting speaker.firstRoom to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v156 = OUTLINED_FUNCTION_17_21();
        v157(v156);
        OUTLINED_FUNCTION_23_17();
        sub_268AB22D8();
        OUTLINED_FUNCTION_26_14();
        if (!v66)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_86_3();
          goto LABEL_127;
        }

        goto LABEL_117;
      }

      if (v148 == 3)
      {
        v158 = OUTLINED_FUNCTION_1_48();
        v159(v158);
        v160 = sub_268B37A34();
        v161 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v161))
        {
          v162 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v162);
          OUTLINED_FUNCTION_13_15(&dword_2688BB000, v163, v164, "Destination #2: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName");
          OUTLINED_FUNCTION_6();
        }

        v165 = OUTLINED_FUNCTION_17_21();
        v166(v165);
        OUTLINED_FUNCTION_23_17();
        sub_268AB22D8();
        OUTLINED_FUNCTION_26_14();
        if (!v66)
        {
          if (OUTLINED_FUNCTION_46_9())
          {
            sub_268B37BF4();
            OUTLINED_FUNCTION_65_6();
          }

          else
          {
            OUTLINED_FUNCTION_57_4();
          }

          OUTLINED_FUNCTION_85_4();
LABEL_127:

          v176 = OUTLINED_FUNCTION_24_15();
          (v0)(v176);
          goto LABEL_128;
        }

LABEL_117:
        v167 = OUTLINED_FUNCTION_29_13();
        (v0)(v167);
LABEL_128:

        goto LABEL_129;
      }

      v168 = OUTLINED_FUNCTION_1_48();
      v169(v168);
      v170 = sub_268B37A34();
      v171 = sub_268B37F04();
      if (OUTLINED_FUNCTION_139_0(v171))
      {
        v172 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v172);
        OUTLINED_FUNCTION_13_15(&dword_2688BB000, v173, v174, "Destination #2: Destination type is unknown. Ignoring...");
        OUTLINED_FUNCTION_6();
      }

      v75 = OUTLINED_FUNCTION_43_8();
LABEL_31:
      v182(v75);
      goto LABEL_129;
    }

    if (v3)
    {
      v67 = OUTLINED_FUNCTION_138();
      MEMORY[0x26D625BD0](v67);
    }

    else
    {
      OUTLINED_FUNCTION_56_6();
      if (v63)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_64_6();
    }

    OUTLINED_FUNCTION_90_4();
    if (v144)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      goto LABEL_2;
    }

    v56 = OUTLINED_FUNCTION_97_2();

    OUTLINED_FUNCTION_82_2();
  }

  while (!v66);

  v90 = OUTLINED_FUNCTION_0_38();
  v91(v90);
  v92 = sub_268B37A34();
  v93 = sub_268B37F04();
  if (OUTLINED_FUNCTION_139_0(v93))
  {
    v95 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v95);
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v96, v97, "User mentioned everywhere in the intent. Setting speaker.isAllSpeakers to true");
    OUTLINED_FUNCTION_83_0();
  }

  v98 = OUTLINED_FUNCTION_278();
  v182(v98);
  OUTLINED_FUNCTION_4_33();
  sub_268AB22D8();
  OUTLINED_FUNCTION_7_25();
  if (!v66)
  {
    OUTLINED_FUNCTION_79_5(v99, v100);
  }

  v101 = OUTLINED_FUNCTION_29_13();
  v102(v101);
LABEL_129:
  OUTLINED_FUNCTION_23();
}

void sub_268A66710(uint64_t a1)
{
  sub_268B0DEEC();
  v2 = v1;
  v3 = sub_2688EFD0C();
  if (!v3)
  {

    v6 = MEMORY[0x277D84F90];
LABEL_12:
    sub_26893E750(v6);

    return;
  }

  v4 = v3;
  v14 = MEMORY[0x277D84F90];
  sub_26894478C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D625BD0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = sub_268988568(v7);
      v11 = v10;

      v12 = *(v14 + 16);
      if (v12 >= *(v14 + 24) >> 1)
      {
        sub_26894478C();
      }

      ++v5;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
    }

    while (v4 != v5);

    goto LABEL_12;
  }

  __break(1u);
}

void sub_268A66850()
{
  OUTLINED_FUNCTION_26();
  v60 = v1;
  v61 = v0;
  v62 = v2;
  v63 = v3;
  v55 = v5;
  v56 = v4;
  v58 = v6;
  v59 = v7;
  v57 = v8;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v53 = v10;
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v64 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v18 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v19 = *(v14 + 16);
  v19(v0, v18, v12);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "AddSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v14 + 8);
  v23(v0, v12);
  sub_268B36754();
  v24 = sub_268B36734();
  if (!v24)
  {
    v24 = sub_268B36744();
  }

  v25 = v24;
  v26 = v64;
  v19(v64, v18, v12);

  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v51 = v23;
    v30 = v29;
    v31 = swift_slowAlloc();
    v65 = v31;
    *v30 = 136315138;
    sub_268B36714();
    v32 = v52;
    sub_268B36B14();

    sub_268B36784();
    (*(v53 + 8))(v32, v54);
    v33 = OUTLINED_FUNCTION_138();
    v36 = sub_26892CDB8(v33, v34, v35);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_2688BB000, v27, v28, "AddSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    v51(v64, v12);
  }

  else
  {

    v23(v26, v12);
  }

  v37 = swift_allocObject();
  v39 = v57;
  v38 = v58;
  v37[2] = v25;
  v37[3] = v38;
  v40 = v61;
  v41 = v55;
  v42 = v56;
  v37[4] = v62;
  v37[5] = v42;
  v37[6] = v41;
  v37[7] = v40;
  v43 = v60;
  v37[8] = v39;
  v37[9] = v43;
  v37[10] = v63;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v44 = v41;
  swift_retain_n();
  v45 = v42;
  v46 = v44;
  v47 = v45;

  v48 = v47;
  v49 = v46;

  sub_2689FABD8();

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A66DA4(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
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
      _os_log_impl(&dword_2688BB000, v38, v39, "AddSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v37 + 8))(v87, v35);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = -87;
    v94[0] = v41;
    v95 = 1;
    v93(v94);
    return sub_2688EF38C(v94, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v34, v31);
    v73 = sub_2688E1BE4(9, 3, v75, v77, v89, 0x6E776F6E6B6E75, 0xE700000000000000, v78);
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
    sub_2688E3180();

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
      _os_log_impl(&dword_2688BB000, v59, v60, "AddSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v63, 2u);
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

uint64_t sub_268A67768(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_268935590(a1, v49, &unk_2802A57C0, &qword_268B3BE00);
  v16 = LOBYTE(v49[5]);
  sub_2688EF38C(v49, &unk_2802A57C0, &qword_268B3BE00);
  if (v16 != 1)
  {
    return a2(a1);
  }

  v17 = a4 == 0x656372756F73 && a5 == 0xE600000000000000;
  if (v17 || (sub_268B38444() & 1) != 0)
  {
    v18 = AddSpeakerSourceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
    if (v19)
    {
LABEL_8:
      sub_2688C2ECC();
      v20 = swift_allocError();
      v22 = 20;
LABEL_9:
      *v21 = v22;
      v49[0] = v20;
      LOBYTE(v49[5]) = 1;
      a2(v49);
      return sub_2688EF38C(v49, &unk_2802A57C0, &qword_268B3BE00);
    }

    if (v18 == 1)
    {
      v38 = *(a7 + 56);
      v25 = "ioMentionedInIntent";
      v26 = v38[5];
      v27 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v26);
      v28 = 0xD000000000000025;
      return sub_2689CE88C(v28, v25 | 0x8000000000000000, v45, a9, v26, v27);
    }

    if (v18 != 2)
    {
      if (v18 != 3)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    v32.n128_f64[0] = OUTLINED_FUNCTION_3_20();
    *(&__src[8] + 3) = v32;
    OUTLINED_FUNCTION_0_23(v32);
    BYTE1(__src[10]) = 1;
    memcpy(__dst, __src, 0x51uLL);
    sub_2688EF38C(__dst, &qword_2802A5C88, qword_268B418C0);
    LODWORD(__src[0]) = 0;
    *&__src[1] = 0u;
    OUTLINED_FUNCTION_0_23(0);
    __src[9] = 0;
    LOBYTE(__src[10]) = 1;
    if (sub_268B0F7F4(a10))
    {
      sub_268A65CAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_268B3BBC0;
    v34 = OUTLINED_FUNCTION_1_27(v33, "TTRErrorCodeInfo");
    v35 = 0x8000000268B59310;
    v34[9] = MEMORY[0x277D837D0];
    v37 = v36 | 3;
LABEL_25:
    v34[6] = v37;
    v34[7] = v35;
    sub_268B37B84();
    memcpy(v49, __src, 0x53uLL);
    sub_268AB2B1C();

    memcpy(v46, __src, 0x53uLL);
    return sub_26891864C(v46);
  }

  v29 = a4 == 0x74616E6974736564 && a5 == 0xEC000000736E6F69;
  if (!v29 && (sub_268B38444() & 1) == 0)
  {
    sub_2688C2ECC();
    v20 = swift_allocError();
    v22 = 22;
    goto LABEL_9;
  }

  v30 = AddSpeakerDestinationsUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
  if (v31)
  {
LABEL_21:
    sub_2688C2ECC();
    v20 = swift_allocError();
    v22 = 21;
    goto LABEL_9;
  }

  if (v30 == 1)
  {
    v40.n128_f64[0] = OUTLINED_FUNCTION_3_20();
    OUTLINED_FUNCTION_0_23(v40);
    *(&__src[8] + 2) = v41;
    BYTE2(__src[10]) = 1;
    memcpy(__dst, __src, 0x51uLL);
    sub_2688EF38C(__dst, &qword_2802A5C88, qword_268B418C0);
    LODWORD(__src[0]) = 0;
    *&__src[1] = 0u;
    OUTLINED_FUNCTION_0_23(0);
    __src[9] = 0;
    LOBYTE(__src[10]) = 1;
    if (sub_268B0F7F4(a10))
    {
      sub_268A65CAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_268B3BBC0;
    v34 = OUTLINED_FUNCTION_1_27(v42, "TTRErrorCodeInfo");
    v35 = 0x8000000268B59280;
    v34[9] = MEMORY[0x277D837D0];
    v37 = v43 | 9;
    goto LABEL_25;
  }

  if (v30 != 3)
  {
    if (v30 == 2)
    {
LABEL_14:
      v24 = *(a7 + 56);
      v25 = "noDestinationSpeakerFound";
      v26 = v24[5];
      v27 = v24[6];
      __swift_project_boxed_opaque_existential_1(v24 + 2, v26);
      v28 = 0xD000000000000033;
      return sub_2689CE88C(v28, v25 | 0x8000000000000000, v45, a9, v26, v27);
    }

    goto LABEL_21;
  }

  sub_26890C900(a7 + 16, v49);
  sub_26890C900(v49, __src);
  v39 = sub_268ABE424(__src);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  return sub_268ABEFDC(v39, v45, a9);
}

uint64_t type metadata accessor for AddSpeakerUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_2802A7A00;
  if (!qword_2802A7A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A67CAC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_268A67FA8(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_268A67F38(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_268A67D44(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_2688EFD0C();
  v5 = sub_268A67FA8(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_268A67FF4(v7, a2);
  result = sub_268A67FF4(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    type metadata accessor for DeviceGroup();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_268B381D4();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_268B382B4();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268A67E98()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_268A67F38(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_268A67FA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_268A67FF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_268B382A4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_20(uint64_t a1)
{
  v5 = *(v2 + 16);
  result = v1;
  *(v3 - 168) = a1;
  *(v3 - 160) = v5;
  *(v3 - 152) = v2 + 16;
  return result;
}

void OUTLINED_FUNCTION_9_20()
{
  *(v5 - 216) = v4;
  *(v5 - 248) = v3;
  *(v5 - 264) = v2;
  *(v5 - 240) = v1;
  *(v5 - 256) = v0;
}

void OUTLINED_FUNCTION_12_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_13_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_26()
{
  v4 = *(v2 + 8);
  result = v0;
  *(v3 - 136) = v2 + 8;
  *(v3 - 128) = v1;
  *(v3 - 144) = v4;
  return result;
}

id OUTLINED_FUNCTION_42_9()
{

  return [v0 (v1 + 3448)];
}

id OUTLINED_FUNCTION_46_9()
{

  return [v0 (v1 + 3448)];
}

uint64_t OUTLINED_FUNCTION_48_8()
{

  return sub_268B38244();
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return sub_2688EFD10();
}

void OUTLINED_FUNCTION_50_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

id OUTLINED_FUNCTION_61_4()
{
  v3 = *(v1 + 88);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_62_4()
{
  *(v1 - 176) = v0;

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_63_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;

  return sub_2688EFD0C();
}

id OUTLINED_FUNCTION_64_6()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

void OUTLINED_FUNCTION_65_6()
{
}

void OUTLINED_FUNCTION_66_5()
{
}

uint64_t OUTLINED_FUNCTION_85_4()
{
  result = *(v0 + 32);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_86_3()
{
  result = *(v0 + 64);
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_4()
{
  result = *(v1 + 16);
  *(v1 + 8) = v0;
  *(v1 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_4()
{
  result = *(v1 + 48);
  *(v1 + 40) = v0;
  *(v1 + 48) = v2;
  return result;
}

id OUTLINED_FUNCTION_92_4()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_93_5()
{

  return sub_2688EFD0C();
}

void OUTLINED_FUNCTION_94_4()
{

  JUMPOUT(0x26D625BD0);
}

uint64_t OUTLINED_FUNCTION_95_4()
{

  return swift_unknownObjectRelease();
}

id OUTLINED_FUNCTION_96_3()
{
  v3 = *(v1 + 88);

  return [v0 v3];
}

id OUTLINED_FUNCTION_97_2()
{
  v3 = *(v1 + 88);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return sub_2688EFD0C();
}

void OUTLINED_FUNCTION_99_3()
{

  JUMPOUT(0x26D625BD0);
}

id OUTLINED_FUNCTION_100_2(void *a1)
{
  v3 = *(v1 + 88);

  return [a1 v3];
}

unint64_t OUTLINED_FUNCTION_101_1()
{

  return sub_268A67D44(1, v0);
}

uint64_t OUTLINED_FUNCTION_102_3()
{

  return sub_268B38074();
}

uint64_t OUTLINED_FUNCTION_103_3()
{

  return sub_268B38254();
}

uint64_t OUTLINED_FUNCTION_104_3()
{

  return sub_268B38254();
}

unint64_t OUTLINED_FUNCTION_106_1()
{

  return sub_2688C063C();
}

id OUTLINED_FUNCTION_107_2()
{

  return [v0 (v1 + 1129)];
}

uint64_t sub_268A68684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
LABEL_28:
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_268B37A34();
  v12 = sub_268B37ED4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "SetSubtitleStateDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v9 = a3;
  a3 = sub_268B35254();
  v6 = sub_2688EFD0C();
  v14 = 0;
  v7 = a3 & 0xC000000000000001;
  while (1)
  {
    if (v6 == v14)
    {

      v20 = v32[31];
      v21 = v32[32];
      __swift_project_boxed_opaque_existential_1(v32 + 28, v20);
      return sub_2689CE88C(0xD000000000000024, 0x8000000268B5BBB0, v33, v34, v20, v21);
    }

    if (v7)
    {
      v15 = MEMORY[0x26D625BD0](v14, a3);
    }

    else
    {
      if (v14 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v15 = *(a3 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v17 = [v15 isDeviceSelectedUsingContext];
    v9 = sub_2688C063C();
    v18 = sub_268B38054();
    v19 = v18;
    if (v17)
    {
      break;
    }

LABEL_14:
    ++v14;
  }

  v9 = sub_268B38074();

  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_268AE2278(a3);
  v24 = v23;
  v25 = v31;
  v26 = [v31 enable];
  sub_268AE23DC(a3);
  v28 = v27;

  if ([v25 type] == 2)
  {
    v29 = 256;
  }

  else
  {
    v29 = ([v25 type] == 3) << 8;
  }

  if (v28)
  {
    v30 = 0x10000;
  }

  else
  {
    v30 = 0;
  }

  if (v26 == 2)
  {
    ++v30;
  }

  sub_268A39B7C(v24, v30 | v29, v33, v34);
}

void sub_268A68A34()
{
  type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268A68B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A68BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A68C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A68D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A68DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268A68E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_268A68F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_268A69138(uint64_t a1, uint64_t a2)
{
  result = sub_268A69190(&qword_2802A7A18, a2, type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy, &unk_268B48920);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A69190(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_268A691D8()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_3_40();
  v4(v3);

  v5 = sub_268B37A34();
  v6 = sub_268B37F04();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_7_26();
    *(v0 + 4) = OUTLINED_FUNCTION_8_25(4.8149e-34);
    OUTLINED_FUNCTION_9_21(&dword_2688BB000, v7, v8, "DirectInvocationHelper#deviceOfChoiceCommand for %s");
    OUTLINED_FUNCTION_11_25();
    OUTLINED_FUNCTION_5_21();
  }

  v9 = OUTLINED_FUNCTION_10_22();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_268B3BBA0;
  v12 = OUTLINED_FUNCTION_4_34();
  *(v11 + 32) = sub_268A69860(v12, v13, v14, 0xD000000000000046, v15, 0);
  OUTLINED_FUNCTION_23();
}

void sub_268A693C4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v11 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v9 + 16))(v0, v11, v7);
  v12 = sub_268B37A34();
  v13 = sub_268B37F04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, v4, v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v9 + 8))(v0, v7);
  sub_268A69AD0(v2, v6);
  OUTLINED_FUNCTION_23();
}

void sub_268A69540()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_3_40();
  v4(v3);

  v5 = sub_268B37A34();
  v6 = sub_268B37F04();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_7_26();
    *(v0 + 4) = OUTLINED_FUNCTION_8_25(4.8149e-34);
    OUTLINED_FUNCTION_9_21(&dword_2688BB000, v7, v8, "DirectInvocationHelper#languageChoiceCommand for %s");
    OUTLINED_FUNCTION_11_25();
    OUTLINED_FUNCTION_5_21();
  }

  v9 = OUTLINED_FUNCTION_10_22();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_268B3BBA0;
  v12 = OUTLINED_FUNCTION_4_34();
  *(v11 + 32) = sub_268A69860(v12, v13, v14, 0xD000000000000048, v15, 2);
  OUTLINED_FUNCTION_23();
}

void sub_268A696EC()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_3_40();
  v4(v3);

  v5 = sub_268B37A34();
  v6 = sub_268B37F04();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_7_26();
    *(v0 + 4) = OUTLINED_FUNCTION_8_25(4.8149e-34);
    OUTLINED_FUNCTION_9_21(&dword_2688BB000, v7, v8, "DirectInvocationHelper#buttonPressed for %s");
    OUTLINED_FUNCTION_11_25();
    OUTLINED_FUNCTION_5_21();
  }

  v9 = OUTLINED_FUNCTION_10_22();
  v10(v9);
  v11 = OUTLINED_FUNCTION_4_34();
  sub_268A69860(v11, v12, v13, 0xD00000000000003CLL, v14, 1);
  OUTLINED_FUNCTION_23();
}

id sub_268A69860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_268A6A1E8();

  v11 = sub_268A69A5C(a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A28, &unk_268B48A50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  v13 = inited;
  v14 = MEMORY[0x277D837D0];
  sub_268B38164();
  v13[12] = v14;
  v13[9] = a1;
  v13[10] = a2;

  v15 = sub_268B37B84();
  sub_268A6A22C(v15, v11);
  v16 = objc_opt_self();
  v17 = [v16 runSiriKitExecutorCommandWithContext:a3 payload:v11];
  v18 = [v16 wrapCommandInStartLocalRequest_];

  return v18;
}

id sub_268A69A5C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_268B37BC4();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

uint64_t sub_268A69AD0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_268B35474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = sub_268B35464();
  if (!v15)
  {
    v43 = 0u;
    v44 = 0u;
LABEL_13:
    sub_26891F498(&v43);
    goto LABEL_14;
  }

  v16 = v15;
  v40 = v14;
  v17 = 0x72506E6F74747562;
  switch(v3)
  {
    case 1:
      break;
    case 2:
      v17 = 0x65676175676E616CLL;
      break;
    case 3:
      v17 = 0x64496D657469;
      break;
    default:
      v17 = 0xD000000000000013;
      break;
  }

  sub_26892E0F4(v16, &v43, v17);

  if (!*(&v44 + 1))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v18 = v41;
    v19 = v42;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v8, qword_2802CDA10);
    v21 = v40;
    (*(v9 + 16))(v40, v20, v8);

    v22 = sub_268B37A34();
    v23 = sub_268B37F04();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v8;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v43 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_26892CDB8(v18, v19, &v43);
      _os_log_impl(&dword_2688BB000, v22, v23, "DirectInvocationHelper destinationID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x26D6266E0](v26, -1, -1);
      MEMORY[0x26D6266E0](v25, -1, -1);

      (*(v9 + 8))(v21, v24);
    }

    else
    {

      (*(v9 + 8))(v21, v8);
    }

    return v18;
  }

LABEL_14:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v9 + 16))(v12, v27, v8);
  (*(v5 + 16))(v7, a2, v4);
  v28 = sub_268B37A34();
  v29 = sub_268B37EE4();
  if (os_log_type_enabled(v28, v29))
  {
    v38 = v4;
    v39 = v9;
    v40 = v8;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v43 = v31;
    *v30 = 136315138;
    if (sub_268B35464())
    {
      v32 = sub_268B37B74();
      v34 = v33;
    }

    else
    {
      v34 = 0xE300000000000000;
      v32 = 7104878;
    }

    (*(v5 + 8))(v7, v38);
    v35 = sub_26892CDB8(v32, v34, &v43);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_2688BB000, v28, v29, "DirectInvocationHelper invalid user data: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x26D6266E0](v31, -1, -1);
    MEMORY[0x26D6266E0](v30, -1, -1);

    (*(v39 + 8))(v12, v40);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v8);
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for DirectInvocationIdentifier(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268A6A174);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268A6A1E8()
{
  result = qword_2802A7A20;
  if (!qword_2802A7A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A7A20);
  }

  return result;
}

void sub_268A6A22C(uint64_t a1, void *a2)
{
  v3 = sub_268B37B54();

  [a2 setUserData_];
}

void OUTLINED_FUNCTION_5_21()
{

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_7_26()
{
  *(v1 - 96) = v0;

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_8_25(float a1)
{
  *v3 = a1;

  return sub_26892CDB8(v2, v1, (v4 - 88));
}

void OUTLINED_FUNCTION_9_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_11_25()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D6266E0);
}

uint64_t sub_268A6A3CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A30, &qword_268B48A70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_268B36054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36044();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_268A6A594(v2);
    return 26;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    if (qword_2802A4F50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = sub_26892E0A8(v6, qword_2802CDA50);
    swift_endAccess();
    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_268A6A594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A30, &qword_268B48A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268A6A5FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A38, &qword_268B48A78);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7A40, &qword_268B48A80) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_268B48A60;
  v3 = v36 + v2;
  v4 = v0[14];
  v5 = *MEMORY[0x277D5EDA0];
  v6 = sub_268B36054();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  *(v3 + v4) = 20;
  v8 = v0[14];
  v7(v3 + v1, *MEMORY[0x277D5EDB8], v6);
  *(v3 + v1 + v8) = 6;
  v9 = v0[14];
  v7(v3 + 2 * v1, *MEMORY[0x277D5EE18], v6);
  *(v3 + 2 * v1 + v9) = 2;
  v10 = v0[14];
  v7(v3 + 3 * v1, *MEMORY[0x277D5EE10], v6);
  *(v3 + 3 * v1 + v10) = 15;
  v11 = v0[14];
  v7(v3 + 4 * v1, *MEMORY[0x277D5ED30], v6);
  *(v3 + 4 * v1 + v11) = 12;
  v12 = v0[14];
  v7(v3 + 5 * v1, *MEMORY[0x277D5ED90], v6);
  *(v3 + 5 * v1 + v12) = 4;
  v13 = v0[14];
  v7(v3 + 6 * v1, *MEMORY[0x277D5EDF8], v6);
  *(v3 + 6 * v1 + v13) = 7;
  v14 = v0[14];
  v7(v3 + 7 * v1, *MEMORY[0x277D5EE08], v6);
  *(v3 + 7 * v1 + v14) = 1;
  v15 = v0[14];
  v7(v3 + 8 * v1, *MEMORY[0x277D5ED38], v6);
  *(v3 + 8 * v1 + v15) = 3;
  v16 = v0[14];
  v7(v3 + 9 * v1, *MEMORY[0x277D5EDB0], v6);
  *(v3 + 9 * v1 + v16) = 0;
  v17 = v0[14];
  v7(v3 + 10 * v1, *MEMORY[0x277D5ED80], v6);
  *(v3 + 10 * v1 + v17) = 21;
  v18 = v0[14];
  v7(v3 + 11 * v1, *MEMORY[0x277D5EDD8], v6);
  *(v3 + 11 * v1 + v18) = 10;
  v19 = v0[14];
  v7(v3 + 12 * v1, *MEMORY[0x277D5ED98], v6);
  *(v3 + 12 * v1 + v19) = 9;
  v20 = v0[14];
  v7(v3 + 13 * v1, *MEMORY[0x277D5EE20], v6);
  *(v3 + 13 * v1 + v20) = 22;
  v21 = v0[14];
  v7(v3 + 14 * v1, *MEMORY[0x277D5ED78], v6);
  *(v3 + 14 * v1 + v21) = 18;
  v22 = v0[14];
  v7(v3 + 15 * v1, *MEMORY[0x277D5ED88], v6);
  *(v3 + 15 * v1 + v22) = 11;
  v23 = v0[14];
  v7(v3 + 16 * v1, *MEMORY[0x277D5ED48], v6);
  *(v3 + 16 * v1 + v23) = 12;
  v24 = v0[14];
  v7(v3 + 17 * v1, *MEMORY[0x277D5ED70], v6);
  *(v3 + 17 * v1 + v24) = 17;
  v25 = v0[14];
  v7(v3 + 18 * v1, *MEMORY[0x277D5EDC8], v6);
  *(v3 + 18 * v1 + v25) = 19;
  v26 = v0[14];
  v7(v3 + 19 * v1, *MEMORY[0x277D5EDF0], v6);
  *(v3 + 19 * v1 + v26) = 16;
  v27 = v0[14];
  v7(v3 + 20 * v1, *MEMORY[0x277D5ED58], v6);
  *(v3 + 20 * v1 + v27) = 13;
  v28 = v0[14];
  v7(v3 + 21 * v1, *MEMORY[0x277D5EDD0], v6);
  *(v3 + 21 * v1 + v28) = 23;
  v29 = v0[14];
  v7(v3 + 22 * v1, *MEMORY[0x277D5ED40], v6);
  *(v3 + 22 * v1 + v29) = 8;
  v30 = v0[14];
  v7(v3 + 23 * v1, *MEMORY[0x277D5EDA8], v6);
  *(v3 + 23 * v1 + v30) = 24;
  v31 = v0[14];
  v7(v3 + 24 * v1, *MEMORY[0x277D5ED28], v6);
  *(v3 + 24 * v1 + v31) = 5;
  v32 = v0[14];
  v7(v3 + 25 * v1, *MEMORY[0x277D5ED50], v6);
  *(v3 + 25 * v1 + v32) = 14;
  v33 = v3 + 26 * v1;
  v34 = v0[14];
  v7(v33, *MEMORY[0x277D5EE00], v6);
  *(v33 + v34) = 25;
  sub_268A6AC78();
  result = sub_268B37B84();
  qword_2802CDA50 = result;
  return result;
}

unint64_t sub_268A6AC78()
{
  result = qword_2802A7A48;
  if (!qword_2802A7A48)
  {
    sub_268B36054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7A48);
  }

  return result;
}

id SetSubtitleStateIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetSubtitleStateIntentHandler.init()()
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
  sub_268A6F578(v27, v26, &v35, v12, v34);
  OUTLINED_FUNCTION_129();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268A6B0E4()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_7_12(v3);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  OUTLINED_FUNCTION_0_3();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  v12 = qword_2802A5028;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v13 = OUTLINED_FUNCTION_4_13();
  v14(v13);
  OUTLINED_FUNCTION_5_5();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_0_20(v15, 21);
  v17(v16);
  *(v15 + v0) = 1;
  v18 = v15 + v12;
  *(v18 + 8) = sub_268958724;
  *(v18 + 16) = v11;

  sub_268B38004();
  sub_268B37A04();

  sub_268A6B2CC(v19[0], v19[1], sub_268A6F8C0, v15);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_23();
}

void sub_268A6B2CC(void *a1, char *a2, void (*a3)(void **), uint64_t a4)
{
  v8 = sub_268B37144();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_268B37A54();
  v10 = *(v79 - 8);
  v11 = MEMORY[0x28223BE20](v79);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v69 - v15;
  MEMORY[0x28223BE20](v14);
  v75 = &v69 - v17;
  v18 = swift_allocObject();
  v80 = a3;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268958D98;
  *(v19 + 24) = v18;

  v20 = [a1 device];
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v20;
  v22 = sub_2689EEF44();
  if (!v23)
  {

LABEL_14:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v45 = v79;
    v46 = __swift_project_value_buffer(v79, qword_2802CDA10);
    (*(v10 + 16))(v13, v46, v45);
    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "No device found in intent, returning failure", v49, 2u);
      MEMORY[0x26D6266E0](v49, -1, -1);
    }

    (*(v10 + 8))(v13, v45);
    v50 = sub_268B36EA4();
    v51 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
    v52 = v50;
    v53 = SetSubtitleStateIntentResponse.init(code:userActivity:)(5, v50);
    v81 = v53;
    v80(&v81);

    goto LABEL_29;
  }

  v72 = v22;
  v73 = v23;
  v71 = v10;
  v74 = a4;
  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_analyticsService], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_analyticsService + 24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBA0;
  *(inited + 32) = v21;
  v25 = v21;
  sub_268920C54(inited);
  sub_268949478(0xD000000000000010, 0x8000000268B5B900, v26, inited);

  swift_setDeallocating();
  sub_268ACE718();
  if ([a1 enable] != 2)
  {
    sub_268A6BD28();

    return;
  }

  v70 = v25;
  v27 = [a1 language];
  v28 = v71;
  if (!v27)
  {
    goto LABEL_21;
  }

  v29 = v27;
  sub_2689EF3E4(v27);
  if (!v30)
  {

LABEL_21:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v54 = v79;
    v55 = __swift_project_value_buffer(v79, qword_2802CDA10);
    (*(v28 + 16))(v16, v55, v54);
    v56 = sub_268B37A34();
    v57 = sub_268B37EE4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2688BB000, v56, v57, "No language resolved and user requested to enable subtitles, returning failure", v58, 2u);
      MEMORY[0x26D6266E0](v58, -1, -1);
    }

    (*(v28 + 8))(v16, v54);
    v59 = sub_268B36EA4();
    v60 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
    v61 = v59;
    v62 = SetSubtitleStateIntentResponse.init(code:userActivity:)(5, v59);
    v81 = v62;
    v80(&v81);

    goto LABEL_28;
  }

  v69 = v29;
  v31 = [v29 isActive];
  sub_2688C063C();
  v32 = sub_268B38054();
  v33 = v32;
  if (v31)
  {
    v34 = sub_268B38074();

    if (v34)
    {

      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v35 = v79;
      v36 = __swift_project_value_buffer(v79, qword_2802CDA10);
      v37 = v75;
      (*(v28 + 16))(v75, v36, v35);
      v38 = sub_268B37A34();
      v39 = sub_268B37F04();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v70;
      if (v40)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2688BB000, v38, v39, "The requested language was already enabled", v42, 2u);
        MEMORY[0x26D6266E0](v42, -1, -1);
      }

      (*(v28 + 8))(v37, v35);
      v43 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
      v44 = SetSubtitleStateIntentResponse.init(code:userActivity:)(100, 0);
      v81 = v44;
      v80(&v81);

      goto LABEL_28;
    }
  }

  else
  {
  }

  v63 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24];
  v79 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 32];
  v80 = __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], v63);
  v64 = v77;
  v65 = v78;
  v66 = v76;
  (*(v77 + 104))(v76, *MEMORY[0x277D5F7D8], v78);
  v67 = swift_allocObject();
  v67[2] = sub_2688E19F8;
  v67[3] = v19;
  v67[4] = a2;
  v68 = a2;
  sub_268B36D34();

  (*(v64 + 8))(v66, v65);
LABEL_28:

LABEL_29:
}

void sub_268A6BC2C(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B36ED4();
  v5 = sub_268A6E290(a1);
  v6 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
  v7 = v4;
  v8 = SetSubtitleStateIntentResponse.init(code:userActivity:)(v5, v4);
  a2();
}

uint64_t sub_268A6BD28()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], *&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24]);
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v8;
  v9[4] = v6;
  v9[5] = v4;
  v9[6] = v2;
  v10 = v0;

  sub_268B36DA4();
  OUTLINED_FUNCTION_23();
}

void sub_268A6BDFC(char a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24]);
    v14 = swift_allocObject();
    v14[2] = a5;
    v14[3] = a6;
    v14[4] = a2;

    v15 = a2;
    sub_268B36D14();
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v13, v16, v10);
    v17 = sub_268B37A34();
    v18 = sub_268B37F04();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2688BB000, v17, v18, "The requested language was already disabled", v19, 2u);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v20 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
    v21 = SetSubtitleStateIntentResponse.init(code:userActivity:)(102, 0);
    a5();
  }
}

void sub_268A6C08C(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B36ED4();
  v5 = sub_268A6E290(a1);
  v6 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
  v7 = v4;
  v8 = SetSubtitleStateIntentResponse.init(code:userActivity:)(v5, v4);
  a2();
}

void sub_268A6C154(void *a1, uint64_t a2, void (**a3)(uint64_t, void *))
{
  v70 = a2;
  v5 = sub_268B371E4();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B36C04();
  v66 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v71 = swift_allocObject();
  v72 = a3;
  *(v71 + 16) = a3;
  _Block_copy(a3);
  v69 = a1;
  v18 = [a1 device];
  if (v18)
  {
    v19 = v18;
    v20 = sub_26892D418(v18);
    if (v21)
    {
      v22 = v21;
      v23 = v20;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v11, qword_2802CDA10);
      v25 = v12;
      (*(v12 + 16))(v17, v24, v11);

      v26 = sub_268B37A34();
      v27 = sub_268B37F04();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v73[0] = v29;
        *v28 = 136315138;
        v30 = sub_26892CDB8(v23, v22, v73);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_2688BB000, v26, v27, "Disambiguated Intent with destinationDeviceId: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x26D6266E0](v29, -1, -1);
        MEMORY[0x26D6266E0](v28, -1, -1);
      }

      else
      {
      }

      (*(v25 + 8))(v17, v11);
      v43 = sub_268B1CCB0(v69);
      if (v43)
      {
        v44 = v43;
      }

      else
      {
        v44 = MEMORY[0x277D84F90];
      }

      sub_268983D74(v44);

      type metadata accessor for SetSubtitleStateDeviceResolutionResult();
      v41 = sub_268B2CC98(v19);
      v42 = v72;
      v72[2](v72, v41);

LABEL_23:
      v45 = v42;
      goto LABEL_24;
    }
  }

  v31 = (v70 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceState);
  __swift_project_boxed_opaque_existential_1((v70 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceState), *(v70 + OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceState + 24));
  if (!sub_2688C328C())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v11, qword_2802CDA10);
    v36 = v12;
    (*(v12 + 16))(v15, v35, v11);
    v37 = sub_268B37A34();
    v38 = sub_268B37EE4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "Media controls are unsupported on this platform", v39, 2u);
      v40 = v39;
      v36 = v12;
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v36 + 8))(v15, v11);
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v41 = sub_268B17B04(4);
    v42 = v72;
    v72[2](v72, v41);

    goto LABEL_23;
  }

  v32 = v69;
  if (sub_268B1CCB0(v69))
  {
    if (sub_2688EFD0C())
    {
      v33 = [v32 device];
      if (!v33)
      {
        v62 = v66;
        (*(v66 + 104))(v10, *MEMORY[0x277D5F640], v8);
        v63 = swift_allocObject();
        v64 = v71;
        *(v63 + 16) = sub_26892DC18;
        *(v63 + 24) = v64;

        sub_268B37164();
        sub_2688F4CD4();

        (*(v67 + 8))(v7, v68);
        (*(v62 + 8))(v10, v8);

        v45 = v72;
        goto LABEL_24;
      }

      v34 = v33;
    }

    else
    {
    }
  }

  v46 = [v32 device];
  if (v46)
  {
    v47 = v46;
    sub_268988574(v46);
    if (v48)
    {
    }

    else
    {
      sub_2689E1C9C(0x76745F656C707061, 0xE800000000000000, v47);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_268B3BBA0;
    *(v51 + 32) = v47;
    v52 = swift_allocObject();
    v53 = v71;
    v52[2] = sub_26892DC18;
    v52[3] = v53;
    v52[4] = v32;

    v54 = v47;
    v55 = v32;
    sub_2688F6BEC();

    v45 = v72;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    if (sub_268B34D24())
    {
      type metadata accessor for SetSubtitleStateDeviceResolutionResult();
      v49 = sub_268B17B04(3);
      v50 = v72;
      v72[2](v72, v49);

      v45 = v50;
    }

    else
    {
      type metadata accessor for Device();
      sub_268B36C54();
      v56 = sub_268B36C24();
      LOBYTE(v65) = 0;
      sub_268983F14(v56, v57, 0, 0, 0, 0, 0, 0, 0, v65, v66, v67, v68, v69, v70, v71, v72, v73[0], v73[1], v73[2], v73[3], v74);
      v59 = v58;
      type metadata accessor for SetSubtitleStateDeviceResolutionResult();
      v60 = sub_268B2CC98(v59);
      v61 = v72;
      v72[2](v72, v60);

      v45 = v61;
    }
  }

LABEL_24:
  _Block_release(v45);
}

void sub_268A6D1D4(unint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v4 = 1;
LABEL_9:
    v8 = sub_268B17B04(v4);
    goto LABEL_10;
  }

  if (!sub_2688EFD0C())
  {
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
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
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v9 = sub_268B2CC98(v7);
    a3();

    goto LABEL_11;
  }

  type metadata accessor for SetSubtitleStateDeviceResolutionResult();
  v8 = sub_268B2CCFC(a1);
LABEL_10:
  v9 = v8;
  a3();
LABEL_11:
}

void sub_268A6D2EC(unint64_t a1, __int16 a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x100) != 0)
  {
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v12 = 1;
LABEL_12:
    v13 = sub_268B17B04(v12);
    goto LABEL_13;
  }

  if (!sub_2688EFD0C())
  {
    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
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
    v10 = sub_268B1CCB0(a5);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    sub_268983D74(v11);

    type metadata accessor for SetSubtitleStateDeviceResolutionResult();
    v14 = sub_268B2CC98(v9);
    a3();

    goto LABEL_14;
  }

  type metadata accessor for SetSubtitleStateDeviceResolutionResult();
  v13 = sub_268B2CCFC(a1);
LABEL_13:
  v14 = v13;
  a3();
LABEL_14:
}

void sub_268A6D450()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_7_12(v3);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  OUTLINED_FUNCTION_0_3();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  v12 = qword_2802A5028;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v13 = OUTLINED_FUNCTION_4_13();
  v14(v13);
  OUTLINED_FUNCTION_5_5();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_0_20(v15, 41);
  v17(v16);
  *(v15 + v0) = 0;
  v18 = v15 + v12;
  *(v18 + 8) = sub_2689969C0;
  *(v18 + 16) = v11;

  sub_268B38004();
  sub_268B37A04();

  sub_268A6D634(v19[0], v19[1], sub_268A6F8C0, v15);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_23();
}

void sub_268A6D634(void *a1, char *a2, void (*a3)(id *), uint64_t a4)
{
  v81 = a2;
  v92 = a1;
  v6 = sub_268B37144();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v80 - v9;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v80 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v80 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v80 - v19;
  v21 = swift_allocObject();
  v88 = a3;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268958D98;
  *(v22 + 24) = v21;
  v89 = v22;
  v23 = qword_2802A4F30;
  v91 = a4;

  v90 = v21;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v25 = *(v11 + 16);
  v25(v20, v24, v10);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "Resolving language for set subtitle state", v28, 2u);
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v29 = *(v11 + 8);
  v29(v20, v10);
  v30 = v92;
  v31 = [v92 language];
  if (v31)
  {
    v32 = v31;
    sub_2689EF3E4(v31);
    if (v33)
    {

      v25(v18, v24, v10);
      v34 = sub_268B37A34();
      v35 = sub_268B37F04();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2688BB000, v34, v35, "Language already found in intent, returning it", v36, 2u);
        MEMORY[0x26D6266E0](v36, -1, -1);
      }

      v29(v18, v10);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      v37 = sub_268B2F5B4(v32);
      v93 = v37;
      v88(&v93);

      goto LABEL_27;
    }

    v30 = v92;
  }

  if ([v30 enable] == 2)
  {
    v38 = [v30 device];
    v39 = v87;
    if (v38)
    {
      v40 = v38;
      v92 = sub_26892D418(v38);
      if (v41)
      {
        v87 = v41;
        v88 = v40;
        v42 = [v30 type];
        v43 = v82;
        sub_268A7517C(v42, v82);
        v44 = [v30 language];
        if (v44 && (sub_268A6F50C(v44, &selRef_languageIdentifier), v45))
        {

          v46 = [v30 language];
          if (!v46)
          {
            goto LABEL_25;
          }

          v47 = &selRef_languageIdentifier;
        }

        else
        {
          v46 = [v30 language];
          if (!v46)
          {
            goto LABEL_25;
          }

          v47 = &selRef_languageTag;
        }

        v53 = sub_268A6F50C(v46, v47);
        v55 = v54;
        if (v54)
        {
          v56 = v81;
          v86 = v53;
          v58 = *&v81[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24];
          v57 = *&v81[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 32];
          __swift_project_boxed_opaque_existential_1(&v81[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], v58);
          v59 = v43;
          v61 = v83;
          v60 = v84;
          v62 = v85;
          (*(v84 + 104))(v83, *MEMORY[0x277D5F7D8], v85);
          v63 = swift_allocObject();
          v64 = v89;
          v63[2] = sub_268958EA4;
          v63[3] = v64;
          v63[4] = v56;
          v65 = v56;
          sub_2689722C8(v86, v55, v61, v92, v87, v59, sub_268A6FBD0, v63, v58, v57);

          (*(v60 + 8))(v61, v62);
          v66 = v59;
LABEL_26:
          sub_2688C058C(v66, &unk_2802A7360, &qword_268B3F860);

LABEL_27:

          return;
        }

LABEL_25:
        v67 = v81;
        v68 = *&v81[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 24];
        v69 = *&v81[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController + 32];
        __swift_project_boxed_opaque_existential_1(&v81[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController], v68);
        v71 = v83;
        v70 = v84;
        v72 = v85;
        (*(v84 + 104))(v83, *MEMORY[0x277D5F7D8], v85);
        v73 = swift_allocObject();
        v74 = v89;
        v73[2] = sub_268958EA4;
        v73[3] = v74;
        v73[4] = v67;
        v75 = v67;
        sub_268973E68(v71, v92, v87, v43, sub_268A6FBC4, v73, v68, v69);

        (*(v70 + 8))(v71, v72);
        v66 = v43;
        goto LABEL_26;
      }
    }

    v25(v39, v24, v10);
    v76 = sub_268B37A34();
    v77 = sub_268B37EE4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_2688BB000, v76, v77, "No device found in intent, returning failure", v78, 2u);
      MEMORY[0x26D6266E0](v78, -1, -1);
    }

    v29(v39, v10);
    type metadata accessor for SetSubtitleStateLanguageResolutionResult();
    v52 = sub_268B1CD38(3);
  }

  else
  {

    v48 = v86;
    v25(v86, v24, v10);
    v49 = sub_268B37A34();
    v50 = sub_268B37EC4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v49, v50, "Did not request to enable subtitles", v51, 2u);
      MEMORY[0x26D6266E0](v51, -1, -1);
    }

    v29(v48, v10);
    type metadata accessor for SetSubtitleStateLanguageResolutionResult();
    v52 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v79 = v52;
  v93 = v52;
  v88(&v93);
}

void sub_268A6DF88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_268A6E420();
  v5 = v4;
  a3();
}

void sub_268A6DFDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_268A6E420();
  v5 = v4;
  a3();
}

uint64_t sub_268A6E064(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_268A6E10C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
  v5 = SetSubtitleStateIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268A6E178(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetSubtitleStateIntentResponse());
  v4 = SetSubtitleStateIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_268A6E204(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

uint64_t sub_268A6E290(uint64_t a1)
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

void sub_268A6E420()
{
  OUTLINED_FUNCTION_26();
  LODWORD(v182) = v1;
  v3 = v2;
  v189 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6550, &qword_268B3F880);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_20_0();
  v186 = (v6 - v7);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v185 = &v176 - v9;
  v10 = sub_268B372A4();
  OUTLINED_FUNCTION_1();
  v188 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v179 = (v13 - v14);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v181 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v183 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v187 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v184 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  v180 = &v176 - v24;
  v25 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v190 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v29 = MEMORY[0x28223BE20](v28);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v176 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v176 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = MEMORY[0x28223BE20](&v176 - v37);
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v176 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v176 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v51 = &v176 - v50;
  switch(v3)
  {
    case 1:
      v185 = v46;
      v85 = v48;
      v178 = v47;
      if (qword_2802A4F30 != -1)
      {
        v45 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_6_32(v45, qword_2802CDA10);
      v180 = v86;
      v184 = v87;
      v182 = v88;
      v88(v33);
      v89 = v189;

      v90 = sub_268B37A34();
      v91 = sub_268B37F04();
      if (OUTLINED_FUNCTION_35_11(v91))
      {
        v92 = OUTLINED_FUNCTION_172_0();
        v93 = OUTLINED_FUNCTION_173_0();
        v191 = v93;
        *v92 = 136315138;
        v94 = OUTLINED_FUNCTION_31_15();
        v95 = MEMORY[0x26D6256F0](v94);
        v97 = sub_26892CDB8(v95, v96, &v191);

        *(v92 + 4) = v97;
        v89 = v189;
        _os_log_impl(&dword_2688BB000, v90, v0, "Received .matched response with languages: %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v93);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      v64 = *(v190 + 8);
      v64(v33, v25);
      v98 = v186;
      v99 = *(v89 + 16);
      if (v99 != 1)
      {
        v100 = v85;
        if (!v99)
        {
          OUTLINED_FUNCTION_9_22();
          v101();
          v102 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_39_1();
          if (os_log_type_enabled(v102, v103))
          {
            *OUTLINED_FUNCTION_14() = 0;
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v104, v105, "No languages matched");
            OUTLINED_FUNCTION_12();
          }

          OUTLINED_FUNCTION_10_23();
          v74 = v185;
          goto LABEL_32;
        }

        goto LABEL_36;
      }

      sub_2689A9A74(v89, v186);
      if (__swift_getEnumTagSinglePayload(v98, 1, v10) == 1)
      {
        sub_2688C058C(v98, &qword_2802A6550, &qword_268B3F880);
        v100 = v85;
LABEL_36:
        v106 = v100;
        OUTLINED_FUNCTION_9_22();
        v107();

        v108 = sub_268B37A34();
        v109 = sub_268B37F04();
        v110 = OUTLINED_FUNCTION_35_11(v109);
        v177 = v10;
        if (v110)
        {
          v33 = OUTLINED_FUNCTION_172_0();
          v111 = OUTLINED_FUNCTION_173_0();
          v191 = v111;
          *v33 = 136315138;
          v112 = MEMORY[0x26D6256F0](v189, v10);
          v10 = v64;
          v114 = sub_26892CDB8(v112, v113, &v191);

          *(v33 + 4) = v114;
          OUTLINED_FUNCTION_34_10(&dword_2688BB000, v115, v116, "Disambiguating languages: %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v111);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();
        }

        v117 = OUTLINED_FUNCTION_8_26();
        v64(v117, v25);
        v191 = MEMORY[0x277D84F90];
        sub_268B38234();
        v133 = type metadata accessor for LanguageOption();
        v134 = v187;
        OUTLINED_FUNCTION_5_22(v133);
        v135 = v183;
        do
        {
          v136 = v189;
          (v189)(v134, v33, v106);
          v136(v135, v134, v106);
          sub_2689EEFA0(v135);
          (*v10)(v134, v106);
          sub_268B38214();
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
          v33 += v188;
          --v99;
        }

        while (v99);
        goto LABEL_46;
      }

      v189 = v64;
      v150 = v188;
      v151 = v181;
      (*(v188 + 32))(v181, v98, v10);
      v152 = v178;
      OUTLINED_FUNCTION_9_22();
      v153();
      v154 = v179;
      v186 = *(v150 + 16);
      (v186)(v179, v151, v10);
      v155 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = OUTLINED_FUNCTION_172_0();
        v185 = OUTLINED_FUNCTION_173_0();
        v191 = v185;
        *v157 = 136315138;
        sub_268A6FAB4();
        LODWORD(v184) = v152;
        v158 = sub_268B38404();
        v159 = v154;
        v161 = v160;
        v162 = *(v150 + 8);
        (v162)(v159, v10);
        v163 = v162;
        v164 = sub_26892CDB8(v158, v161, &v191);

        *(v157 + 4) = v164;
        OUTLINED_FUNCTION_33_15(&dword_2688BB000, "Resolving successfully with: %s", v184);
        __swift_destroy_boxed_opaque_existential_0Tm(v185);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        OUTLINED_FUNCTION_10_23();
        v165 = v178;
      }

      else
      {

        v171 = *(v150 + 8);
        v172 = OUTLINED_FUNCTION_31_15();
        v171(v172);
        v163 = v171;
        v165 = OUTLINED_FUNCTION_8_26();
      }

      v189(v165, v25);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      type metadata accessor for LanguageOption();
      v173 = v187;
      v174 = v181;
      (v186)(v187, v181, v10);
      v175 = sub_2689EEFA0(v173);
      sub_268B2F5B4(v175);

      (v163)(v174, v10);
      goto LABEL_47;
    case 2:
      if (qword_2802A4F30 != -1)
      {
        v45 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_6_32(v45, qword_2802CDA10);
      v75(v51);
      v76 = sub_268B37A34();
      v77 = sub_268B37EE4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = OUTLINED_FUNCTION_14();
        *v78 = 0;
        _os_log_impl(&dword_2688BB000, v76, v77, "Received failure response when resolving language", v78, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v190 + 8))(v51, v25);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      v79 = 2;
      goto LABEL_33;
    case 3:
      if (qword_2802A4F30 != -1)
      {
        v45 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_6_32(v45, qword_2802CDA10);
      v80(v44);
      v81 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v81, v82))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v83, v84, "Returning .alreadyEnabled response code");
        OUTLINED_FUNCTION_12();
      }

      (*(v190 + 8))(v44, v25);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      v79 = 4;
      goto LABEL_33;
    default:
      v186 = v45;
      v176 = v49;
      if (qword_2802A4F30 != -1)
      {
        v45 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_6_32(v45, qword_2802CDA10);
      v178 = v52;
      v179 = v53;
      v181 = v54;
      v53(v41);
      v55 = v189;

      v56 = sub_268B37A34();
      v57 = sub_268B37F04();
      sub_268A23950(v55, 0);
      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_172_0();
        v59 = OUTLINED_FUNCTION_173_0();
        v191 = v59;
        *v58 = 136315138;
        v60 = OUTLINED_FUNCTION_31_15();
        v61 = MEMORY[0x26D6256F0](v60);
        v63 = sub_26892CDB8(v61, v62, &v191);

        *(v58 + 4) = v63;
        v55 = v189;
        _os_log_impl(&dword_2688BB000, v56, v57, "Received .allAvailable response with languages: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      v64 = *(v190 + 8);
      v64(v41, v25);
      v66 = v184;
      v65 = v185;
      v67 = *(v55 + 2);
      v68 = v186;
      if (!v67)
      {
        goto LABEL_10;
      }

      if (v67 == 1)
      {
        sub_2689A9A74(v55, v185);
        if (__swift_getEnumTagSinglePayload(v65, 1, v10) != 1)
        {
          v137 = v188;
          v138 = v180;
          (*(v188 + 32))(v180, v65, v10);
          v139 = v176;
          OUTLINED_FUNCTION_18_15();
          v140();
          v189 = *(v137 + 16);
          (v189)(v66, v138, v10);
          v141 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_39_1();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = OUTLINED_FUNCTION_172_0();
            v186 = OUTLINED_FUNCTION_173_0();
            v191 = v186;
            *v143 = 136315138;
            sub_268A6FAB4();
            LODWORD(v185) = v139;
            v144 = sub_268B38404();
            v146 = v145;
            v147 = OUTLINED_FUNCTION_17_22();
            v148(v147);
            v149 = sub_26892CDB8(v144, v146, &v191);
            v138 = v180;

            *(v143 + 4) = v149;
            OUTLINED_FUNCTION_33_15(&dword_2688BB000, "Resolving successfully with: %s", v185);
            __swift_destroy_boxed_opaque_existential_0Tm(v186);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          else
          {

            v166 = OUTLINED_FUNCTION_17_22();
            v167(v166);
          }

          OUTLINED_FUNCTION_10_23();
          v64(v176, v25);
          type metadata accessor for SetSubtitleStateLanguageResolutionResult();
          type metadata accessor for LanguageOption();
          v168 = v187;
          (v189)(v187, v138, v10);
          v169 = sub_2689EEFA0(v168);
          sub_268B2F5B4(v169);

          v170 = OUTLINED_FUNCTION_31_15();
          (v188)(v170);
          goto LABEL_47;
        }

        sub_2688C058C(v65, &qword_2802A6550, &qword_268B3F880);
        v68 = v186;
        if ((v182 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_39:
        v186 = v64;
        OUTLINED_FUNCTION_18_15();
        v118();

        v119 = sub_268B37A34();
        v120 = sub_268B37F04();
        sub_268A23950(v55, 0);
        v121 = os_log_type_enabled(v119, v120);
        v177 = v10;
        if (v121)
        {
          v66 = OUTLINED_FUNCTION_172_0();
          v122 = OUTLINED_FUNCTION_173_0();
          v191 = v122;
          *v66 = 136315138;
          v123 = MEMORY[0x26D6256F0](v189, v10);
          v125 = sub_26892CDB8(v123, v124, &v191);

          *(v66 + 4) = v125;
          OUTLINED_FUNCTION_34_10(&dword_2688BB000, v126, v127, "Disambiguating languages: %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v122);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();
        }

        v128 = OUTLINED_FUNCTION_8_26();
        (v186)(v128, v25);
        v191 = MEMORY[0x277D84F90];
        sub_268B38234();
        v129 = type metadata accessor for LanguageOption();
        OUTLINED_FUNCTION_5_22(v129);
        v130 = v187;
        v131 = v183;
        do
        {
          v132 = v189;
          (v189)(v130, v66, v68);
          (v132)(v131, v130, v68);
          sub_2689EEFA0(v131);
          (*v10)(v130, v68);
          sub_268B38214();
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
          v66 += v188;
          --v67;
        }

        while (v67);
LABEL_46:
        type metadata accessor for SetSubtitleStateLanguageResolutionResult();
        sub_268B2F618(v191);
        OUTLINED_FUNCTION_129();

        goto LABEL_47;
      }

      if (v182)
      {
        goto LABEL_39;
      }

LABEL_10:
      OUTLINED_FUNCTION_18_15();
      v69();
      v70 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_39_1();
      if (os_log_type_enabled(v70, v71))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v72, v73, "No languages matched");
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_10_23();
      v74 = v36;
LABEL_32:
      v64(v74, v25);
      type metadata accessor for SetSubtitleStateLanguageResolutionResult();
      v79 = 1;
LABEL_33:
      sub_268B1CD38(v79);
LABEL_47:
      OUTLINED_FUNCTION_23();
      return;
  }
}

id SetSubtitleStateIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetSubtitleStateIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_268A6F50C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_268B37BF4();

  return v4;
}

id sub_268A6F578(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v34[3] = sub_268B36C54();
  v34[4] = MEMORY[0x277D5F680];
  v34[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v33[3] = v10;
  v33[4] = &off_2879539D0;
  v33[0] = a4;
  v11 = type metadata accessor for SetSubtitleStateIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v33, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v32[3] = v10;
  v32[4] = &off_2879539D0;
  v32[0] = v17;
  sub_26890C900(v34, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_playbackController]);
  sub_26890C900(a3, v31);
  sub_26890C900(v32, &v29);
  sub_26890C900(a5, v28);
  sub_268B376A4();
  v18 = sub_268B37694();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  MEMORY[0x28223BE20](v19);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_26892D53C(a2, v31, *v21, v28, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceSelector] = v23;
  sub_26890C900(v32, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_analyticsService]);
  sub_26890C900(a3, v31);
  sub_26890C900(a5, &v29);
  type metadata accessor for AceServiceHelper();
  v24 = swift_allocObject();
  sub_2688E6514(v31, v24 + 16);
  sub_2688E6514(&v29, v24 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_aceServiceHelper] = v24;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents29SetSubtitleStateIntentHandler_deviceState]);
  v27.receiver = v12;
  v27.super_class = v11;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  return v25;
}

uint64_t sub_268A6F88C()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268A6F8EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268B37A24() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

unint64_t sub_268A6FAB4()
{
  result = qword_2802A7370;
  if (!qword_2802A7370)
  {
    sub_268B372A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7370);
  }

  return result;
}

uint64_t sub_268A6FB0C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268A6FB74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t result)
{
  *(v2 - 104) = *(v1 + 16);
  *(v2 - 96) = result;
  *(v2 - 112) = *(v1 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_22()
{
  result = v1;
  *(v2 - 112) = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_33_15(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

void OUTLINED_FUNCTION_34_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_35_11(os_log_type_t a1)
{
  sub_268A23950(v2, 1u);

  return os_log_type_enabled(v1, a1);
}

id sub_268A6FD70()
{
  if (qword_2802A4E50 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD980;
  qword_2802CDA58 = qword_2802CD980;

  return v1;
}

void sub_268A6FDD4()
{
  OUTLINED_FUNCTION_26();
  v102 = v0;
  v103 = v1;
  v104 = v2;
  v100 = v4;
  v101 = v3;
  v109 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v107 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_78();
  v95 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v98 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v106 = &v91 - v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v94 = &v91 - v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_78();
  v97 = v19;
  OUTLINED_FUNCTION_9();
  v99 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v108 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v105 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_78();
  v96 = v24;
  OUTLINED_FUNCTION_9();
  v25 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v93 = &v91 - v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  v35 = &v91 - v34;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v36 = __swift_project_value_buffer(v25, qword_2802CDA10);
  v37 = *(v27 + 16);
  v37(v35, v36, v25);
  v38 = sub_268B37A34();
  v39 = sub_268B37ED4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_14();
    v92 = v25;
    *v40 = 0;
    _os_log_impl(&dword_2688BB000, v38, v39, "SetShuffleStateHandleIntentStrategy.makeIntentHandledResponse()", v40, 2u);
    v25 = v92;
    OUTLINED_FUNCTION_12();
  }

  v41 = *(v27 + 8);
  v41(v35, v25);
  if (!sub_268B18100(v109))
  {
    goto LABEL_11;
  }

  if (!sub_2688EFD0C())
  {

LABEL_11:
    v37(v31, v36, v25);
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_14();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "Did not receive intent response for shuffle request or devices not populated!", v46, 2u);
      OUTLINED_FUNCTION_12();
    }

    v41(v31, v25);
    v47 = sub_268B36E84();
    v48 = v99;
    if (!v49)
    {
      sub_268947F08();
    }

    v100 = v47;
    OUTLINED_FUNCTION_9_23();
    (*(v108 + 104))(v105, *MEMORY[0x277D5BC00], v48);
    v50 = sub_268B350F4();
    v51 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v50);
    v52 = *MEMORY[0x277D5B908];
    v53 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    v55 = v107;
    (*(v54 + 104))(v107, v52, v53);
    OUTLINED_FUNCTION_15_21(v55);
    v56 = v51;
    v57 = v98;
    sub_2688F1FA4(v56, v98, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v57, 1, v50) == 1)
    {
      sub_2688C058C(v57, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v50 - 8) + 8))(v57, v50);
    }

    v58 = v105;
    v59 = v107;
    sub_2688E3F68();

    sub_2688C058C(v59, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v106, &unk_2802A57B0, &unk_268B3CE00);
    (*(v108 + 8))(v58, v48);
    OUTLINED_FUNCTION_9_23();
    sub_2688C2ECC();
    v60 = OUTLINED_FUNCTION_26_1();
    v62 = v60;
    goto LABEL_19;
  }

  v42 = [v109 shuffleState];
  if (v42 == 2)
  {
    v43 = 0;
    goto LABEL_21;
  }

  if (v42 != 1)
  {

    v75 = v93;
    v37(v93, v36, v25);
    v76 = sub_268B37A34();
    v77 = sub_268B37EE4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_14();
      *v78 = 0;
      _os_log_impl(&dword_2688BB000, v76, v77, "Unexpected shuffle state found", v78, 2u);
      OUTLINED_FUNCTION_12();
    }

    v41(v75, v25);
    sub_268B36E84();
    v79 = v99;
    v80 = v95;
    if (!v81)
    {
      sub_268947F08();
    }

    v82 = v102;
    __swift_project_boxed_opaque_existential_1(v102 + 13, v102[16]);
    (*(v108 + 104))(v96, *MEMORY[0x277D5BC00], v79);
    v83 = sub_268B350F4();
    v84 = v97;
    __swift_storeEnumTagSinglePayload(v97, 1, 1, v83);
    v85 = *MEMORY[0x277D5B908];
    v86 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    (*(v87 + 104))(v80, v85, v86);
    OUTLINED_FUNCTION_15_21(v80);
    v88 = v84;
    v89 = v94;
    sub_2688F1FA4(v88, v94, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v89, 1, v83) == 1)
    {
      sub_2688C058C(v89, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v83 - 8) + 8))(v89, v83);
    }

    v90 = v96;
    sub_2688E3F68();

    sub_2688C058C(v80, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v97, &unk_2802A57B0, &unk_268B3CE00);
    (*(v108 + 8))(v90, v99);
    __swift_project_boxed_opaque_existential_1(v82 + 13, v82[16]);
    sub_2688C2ECC();
    v60 = OUTLINED_FUNCTION_26_1();
    v62 = v60;
LABEL_19:
    OUTLINED_FUNCTION_7_27(v60, v61);

    v63 = OUTLINED_FUNCTION_26_1();
    v65 = OUTLINED_FUNCTION_13_16(v63, v64);
    v103(v65);
    sub_2688C058C(v113, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_25;
  }

  v43 = 1;
LABEL_21:
  v66 = v102;
  __swift_project_boxed_opaque_existential_1(v102 + 2, v102[5]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_268B3BBA0;
    *(v67 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  LOWORD(v110[0]) = 0;
  BYTE2(v110[0]) = 0;
  v110[1] = 0;
  v110[2] = 0;
  v110[3] = 1;
  memset(&v110[4], 0, 60);
  BYTE4(v110[11]) = v43;
  memcpy(v111, &v110[1], 0x51uLL);
  sub_2688C058C(v111, &qword_2802A5C88, qword_268B418C0);
  LODWORD(v110[1]) = 0;
  memset(&v110[2], 0, 72);
  LOBYTE(v110[11]) = 1;
  sub_268AE4144();

  memcpy(v113, v110, 0x5DuLL);
  v68 = swift_allocObject();
  v69 = v109;
  v68[2] = v66;
  v68[3] = v69;
  v71 = v100;
  v70 = v101;
  v68[4] = v100;
  v68[5] = v70;
  v72 = v104;
  v68[6] = v103;
  v68[7] = v72;
  v68[8] = v67;

  v73 = v69;
  v74 = v71;

  sub_268AB6018(v113, sub_268A75048, v68);

  memcpy(v112, v110, 0x5DuLL);
  sub_268A7505C(v112);
LABEL_25:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A7092C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v52 = a6;
  v53 = a7;
  v51 = a5;
  v46 = a4;
  v54 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = &v44 - v16;
  v50 = sub_268B34E24();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v24);
  v26 = (&v44 - v25);
  sub_2688F1FA4(a1, &v44 - v25, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    v28 = sub_268B36E84();
    if (v29)
    {
      v46 = v28;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v46 = v34;
    }

    v35 = v45;
    __swift_project_boxed_opaque_existential_1(a2 + 13, a2[16]);
    (*(v48 + 104))(v47, *MEMORY[0x277D5BC00], v50);
    v36 = sub_268B350F4();
    v37 = v49;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v36);
    v38 = *MEMORY[0x277D5B8E0];
    v39 = sub_268B34B94();
    (*(*(v39 - 8) + 104))(v35, v38, v39);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v39);
    sub_2688F1FA4(v37, v15, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v15, 1, v36) == 1)
    {
      sub_2688C058C(v15, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v36 - 8) + 8))(v15, v36);
    }

    v40 = v47;
    sub_2688E3F68();

    sub_2688C058C(v35, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v48 + 8))(v40, v50);
    __swift_project_boxed_opaque_existential_1(a2 + 13, a2[16]);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = 89;
    sub_26894B450();

    v55[0] = v27;
    v56 = 1;
    v43 = v27;
    v52(v55);

    return sub_2688C058C(v55, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v26, v23);
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    v30 = sub_268B36FA4();
    sub_2688F1FA4(v23, v21, &unk_2802A56E0, &unk_268B3CDF0);
    v31 = *&v21[*(v18 + 48)];
    if (v30)
    {
      sub_268A70FAC();
    }

    else
    {
      sub_268A71C14();
    }

    sub_2688C058C(v23, &unk_2802A56E0, &unk_268B3CDF0);
    v32 = sub_268B350F4();
    return (*(*(v32 - 8) + 8))(v21, v32);
  }
}

void sub_268A70FAC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v72 = v2;
  v73 = v3;
  v71 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v75 = v12;
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v74 = v14 - v13;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  *&v68 = v23;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v26);
  *(&v68 + 1) = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_78();
  v77 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v61 - v30;
  v32 = sub_268B350F4();
  v69 = *(v32 - 8);
  v70 = v32;
  (*(v69 + 16))(v31, v10);
  *&v31[*(v22 + 48)] = v8;
  v33 = qword_2802A4F30;
  v34 = v8;
  if (v33 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v35 = __swift_project_value_buffer(v15, qword_2802CDA10);
  (*(v17 + 16))(v21, v35, v15);
  v36 = sub_268B37A34();
  v37 = sub_268B37ED4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_14();
    v67 = v22;
    *v38 = 0;
    _os_log_impl(&dword_2688BB000, v36, v37, "SetShuffleStateHandleIntentStrategy#intentHandledResponse...", v38, 2u);
    v22 = v67;
    OUTLINED_FUNCTION_12();
  }

  (*(v17 + 8))(v21, v15);
  sub_26890C900(v1 + 264, v78);
  v64 = v80;
  v65 = v79;
  v67 = __swift_project_boxed_opaque_existential_1(v78, v79);
  v39 = v77;
  sub_2688F1FA4(v31, v77, &unk_2802A56E0, &unk_268B3CDF0);
  v66 = *(v39 + *(v22 + 48));
  if (sub_268B18100(v6))
  {
    sub_268921344();
    v41 = v40;

    if (v41[2])
    {
      v42 = v41[5];
      v62 = v41[4];
      v63 = v42;
    }

    else
    {
      OUTLINED_FUNCTION_16_27();
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_27();
  }

  v43 = *__swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v61) = [v43 BOOLForKey_];
  }

  else
  {
    HIDWORD(v61) = 0;
  }

  v45 = v74;
  sub_268A82B50(v6, v74);
  v46 = sub_2689F0948();
  v47 = *(&v68 + 1);
  sub_2688F1FA4(v31, *(&v68 + 1), &unk_2802A56E0, &unk_268B3CDF0);
  v48 = (*(v68 + 80) + 40) & ~*(v68 + 80);
  v49 = v31;
  v50 = v6;
  v51 = (v25 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v52[2] = v50;
  v52[3] = v1;
  v52[4] = v72;
  sub_2689186C8(v47, v52 + v48);
  v53 = (v52 + v51);
  v54 = v73;
  *v53 = v71;
  v53[1] = v54;
  v55 = v50;

  LOBYTE(v59) = v46 & 1;
  v56 = v1 + 184;
  v57 = v77;
  v58 = v66;
  sub_268A83648(v77, v66, v62, v63, HIDWORD(v61), MEMORY[0x277D84F90], v45, v56, v59, sub_268A74F34, v52, v65, v64, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);

  (*(v75 + 8))(v45, v76);
  sub_2688C058C(v49, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v69 + 8))(v57, v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v78);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A71550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
    _os_log_impl(&dword_2688BB000, v27, v28, "SetShuffleStateHandleIntentStrategy#intentHandledResponse output has been created.", v29, 2u);
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
  __swift_project_boxed_opaque_existential_1((v62 + 104), *(v62 + 128));
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
  sub_2688E3F68();

  sub_2688C058C(v40, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
  (*(v58 + 8))(v39, v59);
  __swift_project_boxed_opaque_existential_1((v62 + 104), *(v62 + 128));
  sub_26894B450();
  v41 = v51;
  (v49)(v51, v50, v20);
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "SetShuffleStateHandleIntentStrategy#intentHandledResponse returning output", v44, 2u);
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v48(v41, v20);
  return v56(v54);
}

uint64_t sub_268A720B8(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, unint64_t a9, uint64_t a10)
{
  v81 = a8;
  v82 = a7;
  v85 = a6;
  v80 = a5;
  v87 = a3;
  LODWORD(v77) = a2;
  v83 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = &v70 - v12;
  v76 = sub_268B35044();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v79 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v70 - v17;
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
  v38 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v70 - v39;
  v86 = a4;
  v84 = v35;
  if (v77)
  {
    v41 = v18;
    v78 = v34;
    v42 = v85;
    sub_268B36E84();
    if (!v43)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v58 = v84;
    v59 = v72;
    v60 = v71;
    __swift_project_boxed_opaque_existential_1(v86 + 13, v86[16]);
    (*(v58 + 104))(v38, *MEMORY[0x277D5BC00], v78);
    sub_2688F1FA4(v42, v21, &unk_2802A56E0, &unk_268B3CDF0);

    v61 = sub_268B350F4();
    v62 = *(v61 - 8);
    (*(v62 + 32))(v59, v21, v61);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v61);
    v63 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v79, 1, 1, v63);
    sub_2688F1FA4(v59, v60, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
    {
      sub_2688C058C(v60, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v62 + 8))(v60, v61);
    }

    v64 = v79;
    sub_2688E3F68();

    sub_2688C058C(v64, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v59, &unk_2802A57B0, &unk_268B3CE00);
    (*(v84 + 8))(v38, v78);
    __swift_project_boxed_opaque_existential_1(v86 + 13, v86[16]);
    sub_2688C2ECC();
    v65 = swift_allocError();
    *v66 = 88;
    sub_26894B450();

    v90[0] = v83;
    v93 = 1;
    v67 = v83;
  }

  else
  {
    v79 = a9;
    sub_268947F08();
    v72 = v44;
    v77 = v45;
    __swift_project_boxed_opaque_existential_1(a4 + 13, a4[16]);
    (*(v35 + 104))(v40, *MEMORY[0x277D5BC10], v34);
    sub_2688F1FA4(v85, v23, &unk_2802A56E0, &unk_268B3CDF0);

    v46 = sub_268B350F4();
    v47 = *(v46 - 8);
    (*(v47 + 32))(v33, v23, v46);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v46);
    v48 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v48);
    sub_2688F1FA4(v33, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v46) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v47 + 8))(v31, v46);
    }

    v49 = v87;
    v50 = v78;
    sub_2688E3F68();

    sub_2688C058C(v50, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v33, &unk_2802A57B0, &unk_268B3CE00);
    (*(v84 + 8))(v40, v34);
    v51 = v86;
    __swift_project_boxed_opaque_existential_1(v86 + 13, v86[16]);
    sub_26894B450();
    __swift_project_boxed_opaque_existential_1(v51 + 13, v51[16]);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v90[0] = v83;

    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    v52 = v73;
    sub_268A82B50(v49, v73);
    if (v79 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v69 = sub_268B38294();

      v79 = v69;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v91 = sub_268B354F4();
    v92 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v90);
    v53 = 0;
    if (sub_2689F0948())
    {
      v53 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v54 = sub_268B38064();
      [v53 setMinimumAutoDismissalTimeInMs_];

      [v53 setPremptivelyResumeMedia_];
    }

    __swift_project_boxed_opaque_existential_1(v51 + 2, v51[5]);
    sub_268B34CA4();
    v55 = v74;
    v56 = v75;
    v57 = v76;
    (*(v74 + 16))(v75, v52, v76);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    v89 = 0;
    memset(v88, 0, sizeof(v88));
    sub_268B34EF4();

    sub_2688C058C(v88, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v56, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v55 + 8))(v52, v57);
    v93 = 0;
  }

  v82(v90);
  return sub_2688C058C(v90, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A72CF8()
{
  OUTLINED_FUNCTION_26();
  v110 = v0;
  v111 = v1;
  v112 = v3;
  v113 = v2;
  v114 = v4;
  v109 = v5;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v101 = v7;
  v102 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v100 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x28223BE20](v11);
  v98 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v97 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_78();
  v105 = v17;
  OUTLINED_FUNCTION_9();
  v106 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v104 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v103 = v21 - v20;
  OUTLINED_FUNCTION_9();
  v22 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v108 = v26;
  OUTLINED_FUNCTION_8();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v97 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v97 - v31;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v33 = __swift_project_value_buffer(v22, qword_2802CDA10);
  v107 = *(v24 + 16);
  v107(v32, v33, v22);
  v34 = sub_268B37A34();
  v35 = sub_268B37ED4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_14();
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse()", v36, 2u);
    OUTLINED_FUNCTION_12();
  }

  v39 = *(v24 + 8);
  v38 = v24 + 8;
  v37 = v39;
  v39(v32, v22);
  v40 = v113;
  v41 = [v113 shuffleState];
  if (v41 == 2)
  {
    v106 = v38;
    v43 = 0;
    v42 = v114;
    goto LABEL_9;
  }

  v42 = v114;
  if (v41 == 1)
  {
    v106 = v38;
    v43 = 1;
LABEL_9:
    v44 = sub_268B36E84();
    v99 = v37;
    if (v45)
    {
      v98 = v45;
      v103 = v44;
    }

    else
    {
      v59 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
      swift_beginAccess();
      v117[0] = *(v42 + v59);
      sub_268B38404();
      sub_268947F08();
      v103 = v60;
      v98 = v61;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000268B572E0;
    v63 = OBJC_IVAR___SetShuffleStateIntentResponse_code;
    swift_beginAccess();
    v104 = v63;
    v117[0] = *(v42 + v63);
    sub_268B38404();
    v64 = sub_268B36E94();
    v66 = v65;

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v64;
    *(inited + 56) = v66;
    v105 = sub_268B37B84();
    sub_268AC65EC(v116, v43);
    v67 = sub_268B18100(v40);
    v68 = v108;
    if (v67)
    {
      v69 = v67;
      if (sub_2688EFD0C())
      {
        memcpy(v117, &v116[1], 0x51uLL);
        sub_2688C058C(v117, &qword_2802A5C88, qword_268B418C0);
        LODWORD(v116[1]) = 0;
        memset(&v116[2], 0, 72);
        LOBYTE(v116[11]) = 1;
        sub_268AE416C(v69);
      }
    }

    sub_268B36754();
    v70 = sub_268B36734();
    if (!v70)
    {
      v70 = sub_268B36744();
    }

    v71 = v70;
    v107(v68, v33, v22);

    v72 = sub_268B37A34();
    v73 = sub_268B37ED4();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v117[0] = v75;
      *v74 = 136315138;
      sub_268B36714();
      v76 = v100;
      sub_268B36B14();

      v77 = sub_268B36784();
      v79 = v78;
      (*(v101 + 8))(v76, v102);
      v80 = sub_26892CDB8(v77, v79, v117);
      v40 = v113;

      *(v74 + 4) = v80;
      _os_log_impl(&dword_2688BB000, v72, v73, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v81 = v108;
    }

    else
    {

      v81 = v68;
    }

    v99(v81, v22);
    v82 = v111;
    v83 = v112;
    v84 = v109;
    v85 = swift_allocObject();
    v86 = v110;
    v85[2] = v71;
    v85[3] = v86;
    v85[4] = v84;
    v85[5] = v40;
    v87 = v104;
    v88 = v98;
    v85[6] = v103;
    v85[7] = v88;
    v85[8] = v82;
    v85[9] = v83;
    if (*(v114 + v87) == 100)
    {
      memcpy(v117, v116, 0x5EuLL);

      v89 = v40;

      OUTLINED_FUNCTION_6_33();
      sub_268AC6584();
    }

    else
    {
      memcpy(v117, v116, 0x5EuLL);

      v90 = v40;

      OUTLINED_FUNCTION_6_33();
      sub_268ABD570();
    }

    memcpy(v115, v116, 0x5EuLL);
    sub_268A74B94(v115);
    goto LABEL_33;
  }

  v107(v30, v33, v22);
  v46 = sub_268B37A34();
  v47 = sub_268B37EE4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_14();
    *v48 = 0;
    _os_log_impl(&dword_2688BB000, v46, v47, "Unexpected shuffle state found", v48, 2u);
    OUTLINED_FUNCTION_12();
  }

  v37(v30, v22);
  sub_268B36E84();
  v49 = v106;
  if (!v50)
  {
    sub_268947F08();
  }

  v51 = v98;
  OUTLINED_FUNCTION_9_23();
  (*(v104 + 104))(v103, *MEMORY[0x277D5BC00], v49);
  v52 = sub_268B350F4();
  v53 = v105;
  __swift_storeEnumTagSinglePayload(v105, 1, 1, v52);
  v54 = *MEMORY[0x277D5B908];
  v55 = sub_268B34B94();
  OUTLINED_FUNCTION_4();
  (*(v56 + 104))(v51, v54, v55);
  OUTLINED_FUNCTION_15_21(v51);
  v57 = v53;
  v58 = v97;
  sub_2688F1FA4(v57, v97, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v58, 1, v52) == 1)
  {
    sub_2688C058C(v58, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(*(v52 - 8) + 8))(v58, v52);
  }

  v91 = v103;
  sub_2688E3F68();

  sub_2688C058C(v51, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v105, &unk_2802A57B0, &unk_268B3CE00);
  (*(v104 + 8))(v91, v106);
  OUTLINED_FUNCTION_9_23();
  sub_2688C2ECC();
  v92 = OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_7_27(v92, v93);

  v94 = OUTLINED_FUNCTION_26_1();
  v96 = OUTLINED_FUNCTION_13_16(v94, v95);
  v111(v96);
  sub_2688C058C(v117, &unk_2802A57C0, &qword_268B3BE00);
LABEL_33:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A73890(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
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
      _os_log_impl(&dword_2688BB000, v45, v46, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v50, 2u);
      MEMORY[0x26D6266E0](v50, -1, -1);
    }

    (*(v118 + 8))(v39, v32);
    __swift_project_boxed_opaque_existential_1(v115 + 13, v115[16]);
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
    sub_2688E3F68();

    sub_2688C058C(v54, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v49, &unk_2802A57B0, &unk_268B3CE00);
    (*(v114 + 8))(v72, v48);
    __swift_project_boxed_opaque_existential_1(v115 + 13, v115[16]);
    sub_2688C2ECC();
    v73 = swift_allocError();
    *v74 = -67;
    sub_26894B450();

    v75 = swift_allocError();
    *v76 = -67;
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
      _os_log_impl(&dword_2688BB000, v57, v58, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v59, 2u);
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    v60 = *(v118 + 8);
    v118 += 8;
    v93 = v60;
    v60(v37, v32);
    v61 = __swift_project_boxed_opaque_existential_1(v115 + 13, v115[16]);
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
    sub_2688E3F68();

    sub_2688C058C(v68, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v105, &unk_2802A57B0, &unk_268B3CE00);
    (*(v114 + 8))(v78, v62);
    __swift_project_boxed_opaque_existential_1(v115 + 13, v115[16]);
    sub_2688C2ECC();
    v79 = swift_allocError();
    *v80 = 79;
    sub_26894B450();

    v81 = v99;
    (v96)(v99, v97, v32);
    v82 = sub_268B37A34();
    v83 = sub_268B37ED4();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_2688BB000, v82, v83, "SetShuffleStateHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v84, 2u);
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

uint64_t sub_268A74660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A746DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A74758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A747F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A74874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A74914()
{
  if (qword_2802A4F58 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDA58;

  return v1;
}

uint64_t sub_268A74970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A749C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A74A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A74A80(uint64_t a1)
{
  result = sub_268A74AA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A74AA8()
{
  result = qword_2802A7A78;
  if (!qword_2802A7A78)
  {
    type metadata accessor for SetShuffleStateHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7A78);
  }

  return result;
}

uint64_t sub_268A74B00()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268A74C10()
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

uint64_t sub_268A74D48(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_268A720B8(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_268A74E24()
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

uint64_t sub_268A74F34(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A71550(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A74FE8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void OUTLINED_FUNCTION_7_27(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;

  sub_26894B450();
}

uint64_t OUTLINED_FUNCTION_13_16(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;
  *(v3 - 184) = a1;
  *(v3 - 144) = 1;
  return v3 - 184;
}

uint64_t OUTLINED_FUNCTION_15_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t sub_268A7517C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = MEMORY[0x277D5F948];
      goto LABEL_6;
    case 2:
      v3 = MEMORY[0x277D5F938];
      goto LABEL_6;
    case 3:
      v3 = MEMORY[0x277D5F940];
      goto LABEL_6;
    case 4:
      v3 = MEMORY[0x277D5F930];
LABEL_6:
      v4 = *v3;
      v5 = sub_268B37704();
      (*(*(v5 - 8) + 104))(a2, v4, v5);
      v6 = a2;
      v7 = 0;
      v8 = v5;
      break;
    default:
      v8 = sub_268B37704();
      v6 = a2;
      v7 = 1;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
}

uint64_t sub_268A7528C(uint64_t a1, uint64_t a2)
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37B84();
  if (a2)
  {

    v11 = sub_26892E170(a1, a2, v10);
    v13 = v12;

    if ((v13 & 1) == 0)
    {

      return v11;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v6 + 16))(v9, v14, v2);

  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136446210;
    if (a2)
    {
      v19 = a1;
    }

    else
    {
      v19 = 7104878;
    }

    if (!a2)
    {
      a2 = 0xE300000000000000;
    }

    v20 = sub_26892CDB8(v19, a2, &v23);

    *(v17 + 4) = v20;
    _os_log_impl(&dword_2688BB000, v15, v16, "Cannot convert value %{public}s to NLMediaType", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x26D6266E0](v18, -1, -1);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v9, v2);
  return 0;
}

Swift::Bool __swiftcall NLMediaType.isAmbiguous()()
{
  v1 = v0;
  if (qword_2802A4F60 != -1)
  {
    OUTLINED_FUNCTION_0_39(&qword_2802A4F60);
  }

  if (*(qword_2802CDA60 + 16))
  {
    sub_268A75924(v1);
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

BOOL NLMediaType.matches(with:)(uint64_t a1, uint64_t a2)
{
  if (qword_2802A4F60 != -1)
  {
    OUTLINED_FUNCTION_0_39(&qword_2802A4F60);
  }

  v4 = qword_2802CDA60;
  if (*(qword_2802CDA60 + 16) && (v5 = sub_268A75924(a2), (v6 & 1) != 0))
  {
    return *(*(v4 + 56) + 8 * v5) == a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268A75610()
{
  sub_268A7597C();
  result = sub_268B37B84();
  qword_2802CDA60 = result;
  return result;
}

uint64_t NLMediaType.description.getter(uint64_t a1)
{
  sub_268A7597C();
  v2 = sub_268B37B84();
  v3 = sub_26892E2F8(a1, v2);
  v5 = v4;

  if (!v5)
  {
    sub_268B381C4();

    v6 = sub_268B38404();
    MEMORY[0x26D625650](v6);

    MEMORY[0x26D625650](41, 0xE100000000000000);
    return 0xD00000000000001BLL;
  }

  return v3;
}

unint64_t sub_268A75754(uint64_t a1)
{
  OUTLINED_FUNCTION_5_23(a1);
  sub_268B37C54();
  v3 = sub_268B38544();

  return sub_268A75D18(v2, v1, v3);
}

unint64_t sub_268A757B8()
{
  OUTLINED_FUNCTION_1_49();
  sub_268B36054();
  v0 = sub_268A76BBC(&qword_2802A7A48, MEMORY[0x277D5EE30], MEMORY[0x277D5EE38]);
  v1 = OUTLINED_FUNCTION_4_35(v0);
  return OUTLINED_FUNCTION_3_41(v1, v1, MEMORY[0x277D5EE30], &qword_2802A7A98, v2, MEMORY[0x277D5EE40]);
}

unint64_t sub_268A75894(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x26D625EE0](*(v1 + 40), a1, 4);

  return sub_268A76098(v2, v3);
}

unint64_t sub_268A758DC(uint64_t a1)
{
  v2 = sub_268B38144();

  return sub_268A760F8(a1, v2);
}

unint64_t sub_268A75924(uint64_t a1)
{
  OUTLINED_FUNCTION_6_34(a1);
  MEMORY[0x26D625F10](v1);
  v2 = sub_268B38544();
  return sub_268A761BC(v1, v2);
}

unint64_t sub_268A7597C()
{
  result = qword_2802A7A88;
  if (!qword_2802A7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7A88);
  }

  return result;
}

unint64_t sub_268A759D0(uint64_t a1)
{
  OUTLINED_FUNCTION_5_23(a1);
  sub_268B38534();
  if (v1)
  {
    sub_268B37C54();
  }

  v3 = sub_268B38544();

  return sub_268A7621C(v2, v1, v3);
}

unint64_t sub_268A75A50()
{
  OUTLINED_FUNCTION_1_49();
  sub_268B371E4();
  v0 = sub_268A76BBC(&qword_2802A7A90, MEMORY[0x277D5F7E0], MEMORY[0x277D5F7E8]);
  v1 = OUTLINED_FUNCTION_4_35(v0);
  return OUTLINED_FUNCTION_3_41(v1, v1, MEMORY[0x277D5F7E0], &qword_2802A5AF8, v2, MEMORY[0x277D5F7F0]);
}

unint64_t sub_268A75B00(uint64_t a1)
{
  v2 = sub_268B38504();

  return sub_268A761BC(a1, v2);
}

unint64_t sub_268A75B44(uint64_t a1)
{
  OUTLINED_FUNCTION_6_34(a1);
  MEMORY[0x26D625F10](v1);
  v2 = sub_268B38544();

  return sub_268A76470(v1, v2);
}

unint64_t sub_268A75BA0()
{
  OUTLINED_FUNCTION_1_49();
  sub_268B37564();
  v0 = sub_268A76BBC(&qword_2802A78F0, MEMORY[0x277D5F900], MEMORY[0x277D5F908]);
  v1 = OUTLINED_FUNCTION_4_35(v0);
  return OUTLINED_FUNCTION_3_41(v1, v1, MEMORY[0x277D5F900], &qword_2802A6FC8, v2, MEMORY[0x277D5F910]);
}

uint64_t sub_268A75C7C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_268B38514();
  a2(a1);
  sub_268B37C54();

  v5 = sub_268B38544();

  return a3(a1, v5);
}

unint64_t sub_268A75D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268B38444() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268A75DCC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001BLL;
      v8 = "com.apple.siri.SiriAudio";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD00000000000001DLL;
          v8 = "MRMediaRemoteMediaTypeMusic";
          break;
        case 2:
          v7 = 0xD00000000000001FLL;
          v8 = "MRMediaRemoteMediaTypePodcast";
          break;
        case 3:
          v7 = 0xD00000000000001DLL;
          v8 = "MRMediaRemoteMediaTypeAudioBook";
          break;
        case 4:
          v7 = 0xD000000000000022;
          v8 = "MRMediaRemoteMediaTypeITunesU";
          break;
        case 5:
          v7 = 0xD000000000000025;
          v8 = "diaTypeITunesRadio";
          break;
        case 6:
          v7 = 0xD000000000000025;
          v8 = "wPlayingInfoTypeAudio";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001BLL;
      v11 = "com.apple.siri.SiriAudio";
      switch(a1)
      {
        case 1:
          v10 = 0xD00000000000001DLL;
          v11 = "MRMediaRemoteMediaTypeMusic";
          break;
        case 2:
          v10 = 0xD00000000000001FLL;
          v11 = "MRMediaRemoteMediaTypePodcast";
          break;
        case 3:
          v10 = 0xD00000000000001DLL;
          v11 = "MRMediaRemoteMediaTypeAudioBook";
          break;
        case 4:
          v10 = 0xD000000000000022;
          v11 = "MRMediaRemoteMediaTypeITunesU";
          break;
        case 5:
          v10 = 0xD000000000000025;
          v11 = "diaTypeITunesRadio";
          break;
        case 6:
          v10 = 0xD000000000000025;
          v11 = "wPlayingInfoTypeAudio";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_268B38444();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_268A76098(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_268A760F8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_268A76C04(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D625B40](v8, a1);
    sub_2688EF510(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268A761BC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_268A7621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_268B38444() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_268A762E8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v18 = a1;
  a3(0);
  OUTLINED_FUNCTION_1_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v23 = v7 + 64;
  v19 = v7;
  v14 = ~(-1 << *(v7 + 32));
  for (i = a2 & v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v6);
    sub_268A76BBC(v20, v21, v22);
    v16 = sub_268B37BB4();
    (*(v10 + 8))(v13, v6);
    if (v16)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268A76470(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  while (2)
  {
    if (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
    {
      v6 = *(*(v2 + 48) + 8 * result);
      if (v6 < 5)
      {
        switch(a1)
        {
          case 0:
            if (!v6)
            {
              return result;
            }

            goto LABEL_14;
          case 1:
            if (v6 != 1)
            {
              goto LABEL_14;
            }

            return result;
          case 2:
            if (v6 == 2)
            {
              return result;
            }

            goto LABEL_14;
          case 3:
            if (v6 == 3)
            {
              return result;
            }

            goto LABEL_14;
          case 4:
            if (v6 == 4)
            {
              return result;
            }

LABEL_14:
            result = (result + 1) & v4;
            continue;
          default:
            break;
        }
      }

      sub_268B38474();
      __break(1u);
      JUMPOUT(0x268A76574);
    }

    return result;
  }
}

unint64_t sub_268A76588(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 2036427888;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x6573756170;
          break;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x656D75736572;
          break;
        case 3:
          v8 = 1886352499;
          break;
        case 4:
          v8 = 1885956979;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x73756F6976657270;
          break;
        case 6:
          v8 = 1801807219;
          break;
        case 7:
          v8 = 0x77726F4670696B73;
          v9 = 6582881;
          goto LABEL_15;
        case 8:
          v8 = 0x6B63614270696B73;
          v7 = 0xEC00000064726177;
          break;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x746165706572;
          break;
        case 0xA:
          v7 = 0xE700000000000000;
          v10 = 0x726174736572;
          goto LABEL_24;
        case 0xB:
          v7 = 0xE700000000000000;
          v8 = 0x656C6666756873;
          break;
        case 0xC:
          v8 = 0x6165705365766F6DLL;
          v9 = 7497067;
LABEL_15:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xD:
          v7 = 0xEA00000000007265;
          v8 = 0x6B61657053646461;
          break;
        case 0xE:
          v8 = 0x705365766F6D6572;
          v7 = 0xED000072656B6165;
          break;
        case 0xF:
          v7 = 0xE600000000000000;
          v8 = 0x627265566F6ELL;
          break;
        case 0x10:
          v8 = 0xD000000000000017;
          v7 = 0x8000000268B56230;
          break;
        case 0x11:
          v7 = 0xE900000000000065;
          v8 = 0x736972616D6D7573;
          break;
        case 0x12:
          v7 = 0xE700000000000000;
          v10 = 0x736575716572;
LABEL_24:
          v8 = v10 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
          break;
        case 0x13:
          v8 = 0xD000000000000016;
          v7 = 0x8000000268B56260;
          break;
        case 0x14:
          v8 = 0xD000000000000016;
          v7 = 0x8000000268B56280;
          break;
        case 0x15:
          v8 = 0x6573616572636E69;
          v7 = 0xE800000000000000;
          break;
        case 0x16:
          v7 = 0xE800000000000000;
          v8 = 0x6573616572636564;
          break;
        case 0x17:
          v8 = 1701079400;
          break;
        default:
          break;
      }

      v11 = 0xE400000000000000;
      v12 = 2036427888;
      switch(a1)
      {
        case 1:
          v11 = 0xE500000000000000;
          v12 = 0x6573756170;
          break;
        case 2:
          v11 = 0xE600000000000000;
          v12 = 0x656D75736572;
          break;
        case 3:
          v12 = 1886352499;
          break;
        case 4:
          v12 = 1885956979;
          break;
        case 5:
          v11 = 0xE800000000000000;
          v12 = 0x73756F6976657270;
          break;
        case 6:
          v12 = 1801807219;
          break;
        case 7:
          v12 = 0x77726F4670696B73;
          v13 = 6582881;
          goto LABEL_41;
        case 8:
          v12 = 0x6B63614270696B73;
          v11 = 0xEC00000064726177;
          break;
        case 9:
          v11 = 0xE600000000000000;
          v12 = 0x746165706572;
          break;
        case 10:
          v11 = 0xE700000000000000;
          v14 = 0x726174736572;
          goto LABEL_50;
        case 11:
          v11 = 0xE700000000000000;
          v12 = 0x656C6666756873;
          break;
        case 12:
          v12 = 0x6165705365766F6DLL;
          v13 = 7497067;
LABEL_41:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 13:
          v11 = 0xEA00000000007265;
          v12 = 0x6B61657053646461;
          break;
        case 14:
          v12 = 0x705365766F6D6572;
          v11 = 0xED000072656B6165;
          break;
        case 15:
          v11 = 0xE600000000000000;
          v12 = 0x627265566F6ELL;
          break;
        case 16:
          v12 = 0xD000000000000017;
          v11 = 0x8000000268B56230;
          break;
        case 17:
          v11 = 0xE900000000000065;
          v12 = 0x736972616D6D7573;
          break;
        case 18:
          v11 = 0xE700000000000000;
          v14 = 0x736575716572;
LABEL_50:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
          break;
        case 19:
          v12 = 0xD000000000000016;
          v11 = 0x8000000268B56260;
          break;
        case 20:
          v12 = 0xD000000000000016;
          v11 = 0x8000000268B56280;
          break;
        case 21:
          v12 = 0x6573616572636E69;
          v11 = 0xE800000000000000;
          break;
        case 22:
          v11 = 0xE800000000000000;
          v12 = 0x6573616572636564;
          break;
        case 23:
          v12 = 1701079400;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v11)
      {
        break;
      }

      v16 = sub_268B38444();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_268A76BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_39(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_3_41(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t a5, uint64_t a6)
{

  return sub_268A762E8(v6, a2, a3, a4, v7, a6);
}

uint64_t OUTLINED_FUNCTION_4_35(uint64_t a1)
{

  return MEMORY[0x2821FBA08](v1, v2, a1);
}

void *OUTLINED_FUNCTION_5_23(uint64_t a1, ...)
{

  return sub_268B38514();
}

void *OUTLINED_FUNCTION_6_34(uint64_t a1, ...)
{

  return sub_268B38514();
}

Swift::String_optional __swiftcall UsoTask_repeat_uso_NoEntity.verb()()
{
  v0 = 0x746165706572;
  v1 = 0xE600000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_repeat_uso_NoEntity.referencedSetting()(uint64_t a1)
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

void UsoTask_repeat_uso_NoEntity.shouldHandle(requestContext:)(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v3 = sub_268B37A54();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = sub_2688EFD0C();
  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D625BD0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = [v9 nowPlayingState];

    ++v8;
    if (v11 == 1)
    {
      v17 = 0;
      goto LABEL_14;
    }
  }

  if (qword_2802A4F30 == -1)
  {
    goto LABEL_11;
  }

LABEL_17:
  swift_once();
LABEL_11:
  v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v13 = v18;
  (*(v18 + 16))(v5, v12, v3);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "User asked to repeat but no devices in the home are playing. Retuning nil flow for the reader domain to handle the request instead", v16, 2u);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  (*(v13 + 8))(v5, v3);
  v17 = 3;
LABEL_14:
  *v19 = v17;
}

uint64_t sub_268A770A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A770F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A77148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A7719C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A771F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A77244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A77298(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A772EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A77350(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A773A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A77408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A7746C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A774D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A77534(uint64_t a1)
{
  result = sub_268A775E0(&qword_2802A7AA0, &protocol conformance descriptor for UsoTask_repeat_uso_NoEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A775E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B35F74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A77624(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v54);
  v7 = (&v52 - v6);
  v8 = sub_268B37A54();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = (&v52 - v13);
  MEMORY[0x28223BE20](v12);
  inited = &v52 - v14;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v16 = __swift_project_value_buffer(v8, qword_2802CDA10);
    v17 = *(v9 + 16);
    v17(inited, v16, v8);
    v18 = sub_268B37A34();
    v19 = sub_268B37ED4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v52 = v8;
      *v20 = 0;
      _os_log_impl(&dword_2688BB000, v18, v19, "SetSubtitleStateConfirmIntentStrategy.makeDialogForConfirmation()", v20, 2u);
      v8 = v52;
      OUTLINED_FUNCTION_12();
    }

    v22 = *(v9 + 8);
    v9 += 8;
    v21 = v22;
    v22(inited, v8);
    v23 = [a2 device];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    v54 = a2;
    v7 = v55;
    v17(v55, v16, v8);
    v25 = v24;
    v26 = sub_268B37A34();
    v27 = sub_268B37EC4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v21;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v25;
      *v30 = v24;
      v31 = v25;
      _os_log_impl(&dword_2688BB000, v26, v27, "Confirming device: %@", v29, 0xCu);
      sub_2688EF38C(v30, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      v21 = v28;
      OUTLINED_FUNCTION_12();
    }

    v21(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    *(inited + 32) = v25;
    a2 = (inited & 0xFFFFFFFFFFFFFF8);
    v8 = v25;
    v32 = MEMORY[0x277D84F90];
    if ((inited & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x26D625BD0](0, inited);
LABEL_10:
      v34 = v33;
      v35 = sub_268988580(v33);
      if (v36)
      {
        v37 = v35;
        v38 = v36;

        goto LABEL_13;
      }

      v37 = sub_268988568(v34);
      v38 = v39;

      if (v38)
      {
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v32 = v42;
        }

        v40 = *(v32 + 16);
        if (v40 >= *(v32 + 24) >> 1)
        {
          sub_2689876A4();
          v32 = v43;
        }

        *(v32 + 16) = v40 + 1;
        v41 = v32 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v38;
      }

      swift_setDeallocating();
      sub_268ACE718();
      v44 = [v54 enable] == 2;
      sub_268A3BA38(v32, v44, v56, v57);
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(inited + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v46 = v53;
  v17(v53, v16, v8);
  v47 = sub_268B37A34();
  v48 = sub_268B37EE4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2688BB000, v47, v48, "Could not find any devices in the intent for confirmation", v49, 2u);
    OUTLINED_FUNCTION_12();
  }

  v21(v46, v8);
  sub_2688C2ECC();
  v50 = swift_allocError();
  *v51 = 92;
  *v7 = v50;
  swift_storeEnumTagMultiPayload();
  v56(v7);
  return sub_2688EF38C(v7, &qword_2802A6300, &unk_268B3BD80);
}

void sub_268A77C50()
{
  type metadata accessor for SetSubtitleStateConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268A77CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetSubtitleStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A77D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SetSubtitleStateConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268A77E20(uint64_t a1)
{
  result = sub_268A77E48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A77E48()
{
  result = qword_2802A7AB8;
  if (!qword_2802A7AB8)
  {
    type metadata accessor for SetSubtitleStateConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7AB8);
  }

  return result;
}

uint64_t AccessoryTypeSemantic.init(rawValue:)()
{
  OUTLINED_FUNCTION_8_27();
  v1 = sub_268B382F4();

  *v0 = v1 != 0;
  return result;
}

uint64_t HomeAutomationNLV3Intent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  sub_268B366C4();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t HomeAutomationNLV3Intent.intent.setter()
{
  OUTLINED_FUNCTION_142_0();
  sub_268B366C4();
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t HomeAutomationNLV3Intent.domainOntologyNode.getter()
{
  type metadata accessor for HomeAutomationNLV3Intent(0);
}

uint64_t type metadata accessor for HomeAutomationNLV3Intent(uint64_t a1)
{
  result = qword_2802A7B68;
  if (!qword_2802A7B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeAutomationNLV3Intent.domainOntologyNode.setter()
{
  v2 = OUTLINED_FUNCTION_142_0();
  v3 = *(type metadata accessor for HomeAutomationNLV3Intent(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

void (*HomeAutomationNLV3Intent.domainOntologyNode.modify())()
{
  v0 = OUTLINED_FUNCTION_142_0();
  type metadata accessor for HomeAutomationNLV3Intent(v0);
  return nullsub_1;
}

uint64_t sub_268A780C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802CDA68 = result;
  return result;
}

uint64_t sub_268A78130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B90, &unk_268B494A8);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802CDA70 = result;
  return result;
}

uint64_t sub_268A78198()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AC0, &qword_268B48F00);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802CDA78 = result;
  return result;
}

uint64_t sub_268A78200()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AD0, &qword_268B48F08);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802CDA80 = result;
  return result;
}

uint64_t HomeAutomationNLV3Intent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomeAutomationNLV3Intent(0);
  *(a2 + *(v4 + 20)) = MEMORY[0x277D84F90];
  v5 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_268B43BA0;
  if (qword_2802A4F68 != -1)
  {
    OUTLINED_FUNCTION_2_31();
    swift_once();
  }

  v7 = qword_2802CDA68;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v6 + 64) = OUTLINED_FUNCTION_0_40(&qword_2802A71F0);
  *(v6 + 32) = v7;
  v8 = qword_2802A4F78;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_4_36(&qword_2802A4F78);
  }

  v9 = qword_2802CDA78;
  *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AC0, &qword_268B48F00);
  *(v6 + 104) = OUTLINED_FUNCTION_0_40(&qword_2802A7AC8);
  *(v6 + 72) = v9;
  v10 = qword_2802A4F80;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_3_42(&qword_2802A4F80);
  }

  v11 = qword_2802CDA80;
  *(v6 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AD0, &qword_268B48F08);
  *(v6 + 144) = OUTLINED_FUNCTION_0_40(&qword_2802A7AD8);
  *(v6 + 112) = v11;
  sub_268B35774();
  swift_allocObject();

  OUTLINED_FUNCTION_5_24();
  *(a2 + v5) = sub_268B35764();
  sub_268B366C4();
  OUTLINED_FUNCTION_4();
  v14 = *(v13 + 32);

  return v14(a2, a1, v12);
}

void *sub_268A78490()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v2;
  v0[4] = v2;
  return result;
}

uint64_t sub_268A784A8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 3)
  {
  }

  else
  {
    if (qword_2802A4F80 != -1)
    {
      OUTLINED_FUNCTION_3_42(&qword_2802A4F80);
    }

    sub_268B35794();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7AD0, &qword_268B48F08);
    swift_allocObject();
    sub_268B35784();
    v3 = sub_268B35794();
    v5 = 0xEA00000000006574;
    v6 = 0x6174735F646C6F68;
    if (v2 == 1)
    {
      v6 = 0x746174735F746567;
      v5 = 0xE900000000000065;
    }

    if (v2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x746174735F746573;
    }

    if (v2)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE900000000000065;
    }

    sub_268A78644(v3, v4, v7, v8);
  }

  return v1;
}

uint64_t HomeAutomationVerb.rawValue.getter()
{
  v1 = 0x746174735F746567;
  if (*v0 != 1)
  {
    v1 = 0x6174735F646C6F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746174735F746573;
  }
}

uint64_t sub_268A78644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;

  sub_268B359D4();
  v8 = *MEMORY[0x277D5E5D8];
  v9 = sub_268B35A44();
  OUTLINED_FUNCTION_4();
  (*(v10 + 104))(v7, v8, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  sub_268A78758();
  return sub_268A7A0F4(v7);
}

void sub_268A78758()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v39 = v5;
  v40 = v4;
  v41 = sub_268B35C14();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6138, &qword_268B3E820);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B98, &qword_268B494B8);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6148, &qword_268B3E830);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v37 = sub_268B35B14();
  v22 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2689AB648(v3, v21);
  v25 = sub_268B35A94();
  OUTLINED_FUNCTION_4_7(v17, v26, v27, v25);
  v28 = sub_268B359C4();
  OUTLINED_FUNCTION_4_7(v13, v29, v30, v28);
  sub_268B35A54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7BA0, &unk_268B494C0);
  v31 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_268B3BBC0;
  v33 = v37;
  (*(v22 + 16))(v32 + v31, v24, v37);

  v34 = v38;
  sub_268B35BF4();
  swift_beginAccess();
  sub_268A7A15C();
  v35 = *(*(v1 + 32) + 16);
  sub_268A7A1D4(v35);
  v36 = *(v1 + 32);
  *(v36 + 16) = v35 + 1;
  (*(v7 + 32))(v36 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v35, v34, v41);
  *(v1 + 32) = v36;
  swift_endAccess();
  (*(v22 + 8))(v24, v33);
  OUTLINED_FUNCTION_23();
}