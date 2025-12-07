double LanguageSelectionViewModel.availableLanguages.getter()
{
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_26F49DB28();

  return result;
}

double LanguageSelectionViewModel.suggestedLanguages.getter()
{
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_26F49DB28();

  return result;
}

uint64_t LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_26F3E718C(a2, &v17 - v12);
  sub_26F3E718C(a3, v10);
  v14 = sub_26F49D9E8();
  v15 = swift_allocObject();
  LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(a1, v13, v10, a4, v14, 0);
  sub_26F3EDA38(a3);
  sub_26F3EDA38(a2);
  return v15;
}

uint64_t LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = swift_allocObject();
  LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(a1, a2, a3, a4, a5, v6);
  return v12;
}

uint64_t LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v77 = a6;
  v80 = a5;
  v81 = a3;
  v82 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = v72 - v13;
  MEMORY[0x28223BE20](v14);
  v74 = v72 - v15;
  MEMORY[0x28223BE20](v16);
  v79 = v72 - v17;
  v89 = sub_26F49DAB8();
  v18 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v73 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v87 = v72 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v72 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v72 - v26;
  v28 = MEMORY[0x277D84F90];
  *(v7 + 16) = MEMORY[0x277D84F90];
  *(v7 + 24) = v28;
  *(v7 + 32) = 0;
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap) = MEMORY[0x277D84F98];
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer) = 0;
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask) = 0;
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observationTask) = 0;
  sub_26F49DB38();
  *(v7 + 40) = a1;
  v29 = *(a4 + 16);
  v88 = v18;
  v78 = v7;
  if (v29)
  {
    v72[0] = v27;
    v96 = v28;
    sub_26F40333C(0, v29, 0);
    v30 = v89;
    v31 = v96;
    v32 = v18 + 16;
    v85 = *(v18 + 16);
    v33 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v72[1] = a4;
    v84 = v33;
    v34 = a4 + v33;
    v83 = (v18 + 8);
    v35 = *(v18 + 72);
    v86 = v32;
    v36 = (v32 + 16);
    do
    {
      v37 = v87;
      v85(v87, v34, v30);
      v94 = sub_26F49D988();
      v95 = v38;
      v92 = 45;
      v93 = 0xE100000000000000;
      v90 = 95;
      v91 = 0xE100000000000000;
      v70 = sub_26F3BDC0C();
      v71 = v70;
      v69 = v70;
      v68 = MEMORY[0x277D837D0];
      sub_26F49FFF8();
      v39 = v24;

      v30 = v89;
      sub_26F49D978();
      (*v83)(v37, v30);
      v96 = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_26F40333C((v40 > 1), v41 + 1, 1);
        v30 = v89;
        v31 = v96;
      }

      *(v31 + 16) = v41 + 1;
      (*v36)(v31 + v84 + v41 * v35, v39, v30);
      v34 += v35;
      --v29;
      v24 = v39;
    }

    while (v29);

    v7 = v78;
    v18 = v88;
    v27 = v72[0];
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v42 = _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  MEMORY[0x28223BE20](v42);
  v70 = v27;
  v94 = v31;

  sub_26F3F7298(sub_26F3FA2EC, &v68);

  v43 = v94;
  v44 = v89;
  v86 = *(v18 + 8);
  v86(v27, v89);
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_suggestedLocales) = v43;
  v45 = v74;
  sub_26F3E718C(v82, v74);
  v46 = *(v18 + 48);
  v47 = 1;
  if (v46(v45, 1, v44) != 1)
  {
    v48 = v87;
    (*(v18 + 32))(v87, v45, v44);
    v94 = sub_26F49D988();
    v95 = v49;
    v92 = 45;
    v93 = 0xE100000000000000;
    v90 = 95;
    v91 = 0xE100000000000000;
    v70 = sub_26F3BDC0C();
    v71 = v70;
    v69 = v70;
    v68 = MEMORY[0x277D837D0];
    sub_26F49FFF8();

    sub_26F49D978();
    v86(v48, v44);
    v47 = 0;
  }

  v50 = *(v18 + 56);
  v51 = 1;
  v52 = v79;
  v50(v79, v47, 1, v44);
  sub_26F3FA30C(v52, v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_defaultTranslateToLocale);
  v53 = v75;
  sub_26F3E718C(v81, v75);
  v54 = v46(v53, 1, v44);
  v55 = v76;
  if (v54 != 1)
  {
    v56 = v87;
    (*(v88 + 32))(v87, v53, v44);
    v94 = sub_26F49D988();
    v95 = v57;
    v92 = 45;
    v93 = 0xE100000000000000;
    v90 = 95;
    v91 = 0xE100000000000000;
    v70 = sub_26F3BDC0C();
    v71 = v70;
    v69 = v70;
    v68 = MEMORY[0x277D837D0];
    sub_26F49FFF8();

    v44 = v89;
    sub_26F49D978();
    v86(v56, v44);
    v51 = 0;
  }

  v50(v55, v51, 1, v44);
  sub_26F3FA30C(v55, v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_currentTranslateToLocale);
  v58 = v80;
  v59 = *(v80 + 16);
  if (v59)
  {
    v96 = MEMORY[0x277D84F90];
    sub_26F40333C(0, v59, 0);
    v60 = v96;
    v61 = sub_26F3BDC0C();
    v62 = (v58 + 40);
    v63 = v73;
    do
    {
      v64 = *v62;
      v94 = *(v62 - 1);
      v95 = v64;
      v92 = 45;
      v93 = 0xE100000000000000;
      v90 = 95;
      v91 = 0xE100000000000000;

      v70 = v61;
      v71 = v61;
      v69 = v61;
      v68 = MEMORY[0x277D837D0];
      sub_26F49FFF8();
      sub_26F49D978();

      v96 = v60;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_26F40333C((v65 > 1), v66 + 1, 1);
        v63 = v73;
        v60 = v96;
      }

      *(v60 + 16) = v66 + 1;
      (*(v88 + 32))(v60 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v66, v63, v89);
      v62 += 2;
      --v59;
    }

    while (v59);

    sub_26F3EDA38(v81);
    sub_26F3EDA38(v82);
    v7 = v78;
  }

  else
  {

    sub_26F3EDA38(v81);
    sub_26F3EDA38(v82);
    v60 = MEMORY[0x277D84F90];
  }

  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_preferredLanguages) = v60;
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_useDedicatedMachPort) = v77 & 1;
  return v7;
}

uint64_t sub_26F3F4CD8(unint64_t a1)
{

  v4 = sub_26F42DE5C(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
    sub_26F49DB18();
  }
}

uint64_t sub_26F3F4E2C(unint64_t a1)
{

  v4 = sub_26F42DE5C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
    sub_26F49DB18();
  }
}

uint64_t sub_26F3F4F80(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
    sub_26F49DB18();
  }

  return result;
}

uint64_t sub_26F3F5090(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00B8, &qword_26F4A6190);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0028, &qword_26F4A5F50);
  sub_26F49FC38();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26F3F5194(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0028, &qword_26F4A5F50);

  return sub_26F3F5090(a1);
}

uint64_t LanguageSelectionViewModel.restartObservation()()
{
  v1[3] = v0;
  sub_26F49FBD8();
  v1[4] = sub_26F49FBC8();
  v3 = sub_26F49FB68();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_26F3F52A8, v3, v2);
}

uint64_t sub_26F3F52A8()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask))
  {

    sub_26F49FC88();

    v1 = v0[3];
  }

  if (*(v1 + 32))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[2] = v1;
    sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
    sub_26F49DB18();
  }

  else
  {
    *(v1 + 32) = 0;
  }

  v3 = v0[3];
  v4 = *(v3 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer);
  *(v3 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer) = 0;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_26F3F5460;

  return LanguageSelectionViewModel.prepare()();
}

uint64_t sub_26F3F5460()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_26F3F5580, v3, v2);
}

uint64_t sub_26F3F5580()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_26F3F55E0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_26F49DB28();

  *a2 = *(v3 + 16);

  return result;
}

double sub_26F3F56B8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_26F49DB28();

  *a2 = *(v3 + 24);

  return result;
}

uint64_t sub_26F3F5790()
{
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_26F49DB28();

  return *(v0 + 32);
}

uint64_t sub_26F3F5830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_26F49DB28();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_26F3F58D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_26F49FBD8();
  v5[12] = sub_26F49FBC8();
  v7 = sub_26F49FB68();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_26F3F5970, v7, v6);
}

uint64_t sub_26F3F5970()
{
  v1 = *(v0 + 80);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_26F3F5A48;

  return MEMORY[0x282200538](v0 + 64, &unk_26F4A6188, 0, v3, v2);
}

void sub_26F3F5A48()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);

    MEMORY[0x2822009F8](sub_26F3F5B7C, v3, v4);
  }
}

uint64_t sub_26F3F5B7C()
{

  v1 = v0[8];
  if (v1 != 1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_26F3F5E40(v1);
      sub_26F3FAAF0(v1);
    }

    else
    {
      sub_26F3FAAF0(v1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 32) == 1)
      {
        *(Strong + 32) = 1;
      }

      else
      {
        v3 = Strong;
        swift_getKeyPath();
        v4 = swift_task_alloc();
        *(v4 + 16) = v3;
        *(v4 + 24) = 1;
        v0[9] = v3;
        sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
        sub_26F49DB18();
      }
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_26F3F5D44()
{
  sub_26F49FBD8();
  *(v0 + 16) = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F3F5DD8, v2, v1);
}

uint64_t sub_26F3F5DD8()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_26F3F5E40(uint64_t *a1)
{
  v2 = sub_26F49DAB8();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D84F90];
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v35[0] = v5;

      sub_26F4A01F8();
      if (v7 < 0)
      {
        __break(1u);
LABEL_33:

        __break(1u);
        return result;
      }

      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x274390F80](v8, v6);
LABEL_9:
        v10 = v9;
        ++v8;
        sub_26F3F63B8(v9);

        sub_26F4A01D8();
        sub_26F4A0208();
        sub_26F4A0218();
        sub_26F4A01E8();
        if (v7 == v8)
        {

          goto LABEL_19;
        }
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v7 = sub_26F4A00A8();
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v9 = *(v6 + 8 * v8 + 32);
    goto LABEL_9;
  }

LABEL_18:

LABEL_19:

  v35[0] = sub_26F3F99A8(v11);
  sub_26F3F7358(v35);
  v29 = 0;

  v12 = v34;
  sub_26F3F4CD8(v35[0]);
  v13 = *(v12 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_suggestedLocales);
  v36 = v5;
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap;
    v31 = *(v32 + 16);
    v32 += 16;
    v16 = v13 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v30 = *(v32 + 56);
    v17 = (v32 - 8);
    v31(v4, v16, v33);
    while (1)
    {
      v18 = sub_26F49D988();
      v20 = v19;
      v21 = v34;
      swift_beginAccess();
      if (!*(*(v21 + v15) + 16))
      {
        break;
      }

      sub_26F45FD88(v18, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

      swift_endAccess();
      v24 = *v17;

      v25 = v24(v4, v33);
      MEMORY[0x2743908C0](v25);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26F49FB18();
      }

      sub_26F49FB38();
LABEL_23:
      v16 += v30;
      if (!--v14)
      {
        goto LABEL_30;
      }

      v31(v4, v16, v33);
    }

LABEL_22:
    swift_endAccess();
    (*v17)(v4, v33);
    goto LABEL_23;
  }

LABEL_30:

  v35[0] = sub_26F3F99A8(v26);
  v6 = v29;
  sub_26F3F7358(v35);
  if (v6)
  {
    goto LABEL_33;
  }

  return sub_26F3F4E2C(v35[0]);
}

uint64_t sub_26F3F6218()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  sub_26F49DAA8();
  v7 = sub_26F49DA68();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v6, v0);
  sub_26F49DAA8();
  v11 = sub_26F49DA68();
  v13 = v12;
  v10(v3, v0);
  if (v7 == v11 && v9 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_26F4A0458();
  }

  return v15 & 1;
}

uint64_t sub_26F3F63B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v62 - v5;
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v62 - v12;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v62 - v15;
  v70 = a1;
  v17 = [a1 locale];
  sub_26F49DA18();

  v18 = sub_26F49D988();
  v20 = v19;
  v68 = *(v8 + 8);
  v69 = v8 + 8;
  v66 = v7;
  v68(v16, v7);
  v21 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap;
  v65 = 0;
  swift_beginAccess();
  v63 = v21;
  v64 = v2;
  v22 = *(v2 + v21);
  if (*(v22 + 16))
  {
    v23 = sub_26F45FD88(v18, v20);
    v25 = v24;

    if (v25)
    {
      v26 = *(*(v22 + 56) + 8 * v23);
      swift_endAccess();

      v27 = v66;
      v28 = v70;
      v29 = &off_279DD7000;
      goto LABEL_6;
    }
  }

  else
  {
  }

  swift_endAccess();
  v29 = &off_279DD7000;
  v28 = v70;
  v30 = [v70 locale];
  v31 = v67;
  sub_26F49DA18();

  v32 = [v28 downloadSize];
  type metadata accessor for LanguageSelectionDownloadModel(0);
  v26 = swift_allocObject();
  *(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) = 0;
  *(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state) = 0;
  *(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) = 0;
  sub_26F49DB38();
  v33 = v31;
  v27 = v66;
  (*(v8 + 32))(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale, v33, v66);
  *(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_downloadSize) = v32;
LABEL_6:
  v34 = [v28 v29[317]];
  sub_26F49DA18();

  v35 = sub_26F49D988();
  v37 = v36;
  v38 = v68;
  v68(v10, v27);
  v39 = v64;
  sub_26F3E718C(v64 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_defaultTranslateToLocale, v6);
  if ((*(v8 + 48))(v6, 1, v27) == 1)
  {
    sub_26F3EDA38(v6);

    v40 = 0;
    v41 = (v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
    if (*(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel))
    {
LABEL_8:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v62 - 2) = v26;
      *(&v62 - 8) = v40 & 1;
      v72 = v26;
      sub_26F3FAB20(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
      sub_26F49DB18();

      goto LABEL_15;
    }
  }

  else
  {
    v43 = sub_26F49D988();
    v44 = v27;
    v46 = v45;
    v38(v6, v44);
    if (v35 == v43 && v37 == v46)
    {

      v41 = (v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
      v40 = 1;
      v27 = v66;
      if ((*(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v40 = sub_26F4A0458();

      v41 = (v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
      v27 = v66;
      if ((v40 & 1) != *(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel))
      {
        goto LABEL_8;
      }
    }
  }

  *v41 = v40 & 1;
LABEL_15:
  v47 = v70;
  v48 = [v70 status];
  if (*(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state) != v48)
  {
    v49 = v48;
    v50 = swift_getKeyPath();
    MEMORY[0x28223BE20](v50);
    *(&v62 - 2) = v26;
    *(&v62 - 1) = v49;
    v72 = v26;
    sub_26F3FAB20(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }

  [v47 progress];
  v52 = v51;
  if (*(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) == v51)
  {
    *(v26 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) = v51;
  }

  else
  {
    v53 = swift_getKeyPath();
    MEMORY[0x28223BE20](v53);
    *(&v62 - 2) = v26;
    *(&v62 - 1) = v52;
    v72 = v26;
    sub_26F3FAB20(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }

  v54 = [v47 locale];
  v55 = v67;
  sub_26F49DA18();

  v56 = sub_26F49D988();
  v58 = v57;
  v68(v55, v27);
  v59 = v63;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v39 + v59);
  *(v39 + v59) = 0x8000000000000000;
  sub_26F497FFC(v26, v56, v58, isUniquelyReferenced_nonNull_native);

  *(v39 + v59) = v71;
  swift_endAccess();
  return v26;
}

uint64_t sub_26F3F6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = sub_26F49FBD8();
  v5[14] = sub_26F49FBC8();
  v7 = sub_26F49FB68();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x2822009F8](sub_26F3F6C38, v7, v6);
}

uint64_t sub_26F3F6C38()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_26F49FCA8();

  swift_beginAccess();
  v6 = sub_26F49FBC8();
  v0[17] = v6;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_26F3F6E1C;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 10, v6, v8);
}

uint64_t sub_26F3F6E1C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 120);
    v5 = *(v2 + 128);

    return MEMORY[0x2822009F8](sub_26F3F6F30, v4, v5);
  }

  return result;
}

uint64_t sub_26F3F6F30()
{
  v1 = v0[10];
  if (v1 == 1)
  {

LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v5 = v0[1];

    return v5();
  }

  if (!swift_weakLoadStrong())
  {

    sub_26F3FAAF0(v1);
    goto LABEL_8;
  }

  sub_26F3F5E40(v1);

  sub_26F3FAAF0(v1);
  v2 = sub_26F49FBC8();
  v0[17] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_26F3F6E1C;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 10, v2, v4);
}

uint64_t LanguageSelectionViewModel.deinit()
{

  sub_26F3EDA38(v0 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_defaultTranslateToLocale);
  sub_26F3EDA38(v0 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_currentTranslateToLocale);

  v1 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel___observationRegistrar;
  v2 = sub_26F49DB48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LanguageSelectionViewModel.__deallocating_deinit()
{
  LanguageSelectionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26F3F71F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_26F3FABA4();
    v2 = sub_26F49FAF8();
  }

  v3(v2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26F3F7298(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_26F49DAB8();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_26F40D67C(v5);
  }

  sub_26F3F73D4(a1, a2);
  *v2 = v5;
}

uint64_t sub_26F3F7358(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26F40D690(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_26F3F7510(v6);
  return sub_26F4A01E8();
}

void sub_26F3F73D4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_26F4A0418();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26F49DAB8();
        v9 = sub_26F49FB28();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_26F49DAB8() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_26F3F7AAC(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_26F3F7614(0, v5, 1, a1, a2);
  }
}

void sub_26F3F7510(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26F4A0418();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LanguageSelectionDownloadModel(0);
        v6 = sub_26F49FB28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_26F3F86B8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26F3F7900(0, v2, 1, a1);
  }
}

void sub_26F3F7614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = sub_26F49DAB8();
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v38 - v14;
  v18 = MEMORY[0x28223BE20](v15);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v16;
    v19 = *v5;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = (v19 + v22 * (a3 - 1));
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        (v48)(v50, v25, v11, v18);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          v37(v28, v11);
          return;
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        v33(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        v34(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = &v42[v38];
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

void sub_26F3F7900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_26F49DAB8();
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v13 = (v9 + 8);
    v14 = (*a4 + 8 * a3 - 8);
    v15 = a1 - a3;
LABEL_5:
    v25 = a3;
    v16 = *(v12 + 8 * a3);
    v23 = v15;
    v24 = v14;
    v17 = v15;
    while (1)
    {
      v18 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;

      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      LOBYTE(v18) = sub_26F427634(v16 + v18);
      (*v13)(v11, v8);

      if ((v18 & 1) == 0)
      {
LABEL_4:
        a3 = v25 + 1;
        v14 = v24 + 1;
        v15 = v23 - 1;
        if (v25 + 1 == v22)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v12)
      {
        break;
      }

      v19 = *v14;
      v16 = v14[1];
      *v14 = v16;
      v14[1] = v19;
      --v14;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_26F3F7AAC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_26F49DAB8();
  MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = &v134 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v134 - v18;
  MEMORY[0x28223BE20](v20);
  v140 = &v134 - v21;
  MEMORY[0x28223BE20](v22);
  v29 = MEMORY[0x28223BE20](&v134 - v23);
  v161 = v26;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v25;
  v139 = v24;
  v151 = v19;
  v147 = v28;
  v148 = v27;
  v137 = a6;
  v31 = 0;
  v159 = (v26 + 8);
  v160 = v26 + 16;
  v155 = (v26 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163, v29);
      v157 = v36;
      v138 = v35;
      v39 = v35 + v36 * v144;
      v40 = v139;
      v152 = v37;
      (v37)(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
        goto LABEL_117;
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = v138 + v157 * (v144 + 2);
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
LABEL_117:

          return;
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, v63 + v61, v163);
              if (v61 < a4 || v63 + v61 >= (v63 + v58))
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v64((v63 + a4), v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32, v29);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                  goto LABEL_117;
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                v123(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = (v138 - 1);
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    a4 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_26F40D370(0, *(v32 + 2) + 1, 1, v32);
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v32 = sub_26F40D370((v67 > 1), v68 + 1, 1, v32);
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_26F3F8E14((*v162 + *(v161 + 72) * v110), (*v162 + *(v161 + 72) * *&v32[16 * a4 + 32]), (*v162 + *(v161 + 72) * v111), v71, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_26F40D35C(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    sub_26F40D2D0(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
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
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  v32 = sub_26F40D35C(v32);
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
    goto LABEL_117;
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_26F3F8E14((*v162 + *(v161 + 72) * v128), (*v162 + *(v161 + 72) * *&v32[16 * v127 + 16]), (*v162 + *(v161 + 72) * v129), a4, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_26F40D35C(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    sub_26F40D2D0(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_26F3F86B8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = a1;
  v104 = sub_26F49DAB8();
  MEMORY[0x28223BE20](v104);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_87:
    v10 = v13;
    v13 = *v99;
    if (!*v99)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v10 = sub_26F40D35C(v10);
    }

    v105 = v10;
    v91 = *(v10 + 2);
    if (v91 >= 2)
    {
      while (*v102)
      {
        v92 = *&v10[16 * v91];
        v93 = *&v10[16 * v91 + 24];
        sub_26F3F950C((*v102 + 8 * v92), (*v102 + 8 * *&v10[16 * v91 + 16]), (*v102 + 8 * v93), v13);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v93 < v92)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26F40D35C(v10);
        }

        if (v91 - 2 >= *(v10 + 2))
        {
          goto LABEL_113;
        }

        v94 = &v10[16 * v91];
        *v94 = v92;
        *(v94 + 1) = v93;
        v105 = v10;
        sub_26F40D2D0(v91 - 1);
        v10 = v105;
        v91 = *(v105 + 2);
        if (v91 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v96 = a4;
  v12 = 0;
  v103 = (v8 + 8);
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    v14 = v12;
    v15 = v12 + 1;
    if (v12 + 1 < v11)
    {
      v100 = v11;
      v98 = v5;
      v16 = *(*v102 + 8 * v15);
      v17 = 8 * v12;
      v18 = (*v102 + 8 * v12 + 16);
      v19 = v12;
      v20 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;

      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      LODWORD(v101) = sub_26F427634(v16 + v20);
      v21 = *v103;
      (*v103)(v10, v104);

      v97 = v19;
      v22 = v19 + 2;
      while (1)
      {
        v23 = v100;
        if (v100 == v22)
        {
          break;
        }

        v24 = *v18;
        v25 = v13;
        v26 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;

        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        LODWORD(v26) = sub_26F427634(v24 + v26);
        v21(v10, v104);

        ++v22;
        ++v18;
        v27 = (v101 & 1) == v26;
        v13 = v25;
        if (!v27)
        {
          v23 = v22 - 1;
          break;
        }
      }

      v14 = v97;
      v5 = v98;
      if (v101)
      {
        if (v23 < v97)
        {
          goto LABEL_116;
        }

        if (v97 < v23)
        {
          v28 = 8 * v23 - 8;
          v29 = v23;
          v30 = v97;
          do
          {
            if (v30 != --v29)
            {
              v32 = *v102;
              if (!*v102)
              {
                goto LABEL_122;
              }

              v31 = *(v32 + v17);
              *(v32 + v17) = *(v32 + v28);
              *(v32 + v28) = v31;
            }

            ++v30;
            v28 -= 8;
            v17 += 8;
          }

          while (v30 < v29);
        }
      }

      v15 = v23;
    }

    v33 = v102[1];
    if (v15 < v33)
    {
      if (__OFSUB__(v15, v14))
      {
        goto LABEL_115;
      }

      if (v15 - v14 < v96)
      {
        v34 = v14 + v96;
        if (__OFADD__(v14, v96))
        {
          goto LABEL_117;
        }

        if (v34 >= v33)
        {
          v34 = v102[1];
        }

        if (v34 < v14)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v15 != v34)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v14)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_26F40D370(0, *(v13 + 2) + 1, 1, v13);
    }

    v45 = *(v13 + 2);
    v44 = *(v13 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v13 = sub_26F40D370((v44 > 1), v45 + 1, 1, v13);
    }

    *(v13 + 2) = v46;
    v47 = &v13[16 * v45];
    *(v47 + 4) = v14;
    *(v47 + 5) = v15;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_124;
    }

    v101 = v15;
    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v13 + 4);
          v51 = *(v13 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_56:
          if (v53)
          {
            goto LABEL_103;
          }

          v66 = &v13[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v13[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_110;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v76 = &v13[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_70:
        if (v71)
        {
          goto LABEL_105;
        }

        v79 = &v13[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_108;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_77:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
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
          goto LABEL_118;
        }

        if (!*v102)
        {
          goto LABEL_121;
        }

        v88 = *&v13[16 * v87 + 32];
        v89 = *&v13[16 * v49 + 40];
        sub_26F3F950C((*v102 + 8 * v88), (*v102 + 8 * *&v13[16 * v49 + 32]), (*v102 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v89 < v88)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_26F40D35C(v13);
        }

        if (v87 >= *(v13 + 2))
        {
          goto LABEL_100;
        }

        v90 = &v13[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        v105 = v13;
        sub_26F40D2D0(v49);
        v13 = v105;
        v46 = *(v105 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v13[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_101;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_102;
      }

      v61 = &v13[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_104;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v13[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v12 = v101;
    v11 = v102[1];
    if (v101 >= v11)
    {
      goto LABEL_87;
    }
  }

  v95 = v13;
  v97 = v14;
  v98 = v5;
  v35 = *v102;
  v36 = *v102 + 8 * v15 - 8;
  v37 = v14 - v15;
  v100 = v34;
LABEL_29:
  v101 = v15;
  v38 = *(v35 + 8 * v15);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;

    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    LOBYTE(v41) = sub_26F427634(v38 + v41);
    (*v103)(v10, v104);

    if ((v41 & 1) == 0)
    {
LABEL_28:
      v15 = v101 + 1;
      v36 += 8;
      --v37;
      if (v101 + 1 != v100)
      {
        goto LABEL_29;
      }

      v15 = v100;
      v14 = v97;
      v5 = v98;
      v13 = v95;
      goto LABEL_36;
    }

    if (!v35)
    {
      break;
    }

    v42 = *v40;
    v38 = v40[1];
    *v40 = v38;
    v40[1] = v42;
    --v40;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

void sub_26F3F8E14(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v77 = a6;
  v78 = a5;
  v76 = sub_26F49DAB8();
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = &v68 - v19;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v25 = (a2 - a1) / v22;
    v84 = a1;
    v83 = a4;
    v79 = v22;
    if (v25 < v24 / v22)
    {
      v26 = v25 * v22;
      if (a4 < a1 || &a1[v26] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = &a4[v26];
      v82 = &a4[v26];
      if (v26 >= 1 && a2 < a3)
      {
        v52 = *(v11 + 16);
        v73 = v17;
        v74 = v11 + 16;
        v71 = v52;
        v72 = (v11 + 8);
        v53 = v23;
        v54 = v76;
        v55 = v6;
        v70 = a3;
        while (1)
        {
          v80 = a1;
          v56 = v71;
          v71(v53, a2, v54);
          v57 = a2;
          v58 = v53;
          v59 = v73;
          v56(v73, a4, v54);
          v60 = v78(v58, v59);
          if (v55)
          {
            break;
          }

          v61 = v60;
          v81 = 0;
          v62 = *v72;
          (*v72)(v59, v54);
          v62(v58, v54);
          v53 = v58;
          if (v61)
          {
            v63 = v79;
            v64 = v80;
            a2 = &v57[v79];
            if (v80 < v57 || v80 >= a2)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }
          }

          else
          {
            v63 = v79;
            v64 = v80;
            v65 = &a4[v79];
            a2 = v57;
            if (v80 < a4 || v80 >= v65)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }

            v83 = v65;
            a4 = v65;
          }

          a1 = &v64[v63];
          v84 = a1;
          if (a4 >= v75 || a2 >= v70)
          {
            goto LABEL_65;
          }
        }

        v66 = *v72;
        (*v72)(v59, v54);
        v66(v58, v54);
      }

LABEL_65:
      sub_26F3F98C4(&v84, &v83, &v82);
      return;
    }

    v75 = v20;
    v27 = a3;
    v28 = a2;
    v29 = v24 / v22 * v22;
    if (a4 < v28 || &v28[v29] <= a4)
    {
      v30 = v28;
      v31 = v76;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v30 = v28;
      v31 = v76;
      if (a4 == v28)
      {
LABEL_24:
        v81 = v6;
        v33 = &a4[v29];
        if (v29 >= 1)
        {
          v34 = -v22;
          v68 = a4;
          v69 = (v11 + 16);
          v71 = (v11 + 8);
          v35 = &a4[v29];
          v36 = v27;
          v37 = v75;
          v80 = a1;
          v73 = -v22;
          do
          {
            v74 = v33;
            v70 = v33;
            v38 = v30;
            v76 = v30 + v34;
            v72 = v30;
            while (1)
            {
              if (v38 <= a1)
              {
                v84 = v38;
                v33 = v70;
                goto LABEL_64;
              }

              v39 = v36;
              v40 = v73;
              v79 = v35;
              v41 = &v35[v73];
              v42 = *v69;
              (*v69)(v37, &v35[v73], v31);
              v42(v13, v76, v31);
              v43 = v37;
              v44 = v81;
              v45 = v78(v37, v13);
              v81 = v44;
              if (v44)
              {
                v67 = *v71;
                (*v71)(v13, v31);
                v67(v43, v31);
                v84 = v72;
                v33 = v74;
                goto LABEL_64;
              }

              v46 = v45;
              v47 = &v39[v40];
              v48 = v13;
              v49 = *v71;
              v50 = v48;
              (*v71)();
              v49(v43, v31);
              if (v46)
              {
                break;
              }

              v36 = &v39[v40];
              if (v39 < v79 || v47 >= v79)
              {
                swift_arrayInitWithTakeFrontToBack();
                v13 = v50;
                v37 = v75;
              }

              else
              {
                v13 = v50;
                v37 = v75;
                if (v39 != v79)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v74 = v41;
              v35 = v41;
              a1 = v80;
              v38 = v72;
              if (v41 <= v68)
              {
                v30 = v72;
                v33 = v74;
                goto LABEL_63;
              }
            }

            v36 = &v39[v40];
            if (v39 < v72 || v47 >= v72)
            {
              v30 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v51 = v68;
              v13 = v50;
              v37 = v75;
            }

            else
            {
              v37 = v75;
              v30 = v76;
              v51 = v68;
              v13 = v50;
              if (v39 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v35 = v79;
            a1 = v80;
            v34 = v73;
            v33 = v74;
          }

          while (v79 > v51);
        }

LABEL_63:
        v84 = v30;
LABEL_64:
        v82 = v33;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v79;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_26F3F950C(char *a1, char *a2, char *a3, char *a4)
{
  v42 = sub_26F49DAB8();
  MEMORY[0x28223BE20](v42);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 - a1;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      v25 = v8;
      memmove(a4, a2, 8 * v15);
      v8 = v25;
    }

    v19 = &a4[8 * v15];
    v17 = a4;
    if (a3 - a2 < 8)
    {
      v24 = a2;
    }

    else
    {
      v24 = a2;
      if (a2 > a1)
      {
        v39 = v10;
        v40 = (v8 + 8);
        v41 = a4;
        v37 = a1;
        do
        {
          v38 = v24;
          v26 = v24 - 8;
          a3 -= 8;
          v27 = v19;
          v28 = v19;
          while (1)
          {
            v29 = a3 + 8;
            v30 = *(v28 - 1);
            v28 -= 8;
            v31 = v26;
            v32 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;

            v33 = v39;
            _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
            LOBYTE(v32) = sub_26F427634(v30 + v32);
            (*v40)(v33, v42);

            if (v32)
            {
              break;
            }

            if (v29 != v27)
            {
              *a3 = *v28;
            }

            a3 -= 8;
            v27 = v28;
            v26 = v31;
            if (v28 <= v41)
            {
              v19 = v28;
              v17 = v41;
              v24 = v38;
              goto LABEL_39;
            }
          }

          v34 = v37;
          v35 = v31;
          if (v29 != v38)
          {
            *a3 = *v31;
          }

          v17 = v41;
          v19 = v27;
          if (v27 <= v41)
          {
            break;
          }

          v24 = v35;
        }

        while (v35 > v34);
        v24 = v35;
      }
    }
  }

  else
  {
    v16 = a2;
    v17 = a4;
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      v18 = v8;
      memmove(a4, a1, 8 * v13);
      v8 = v18;
    }

    v19 = &a4[8 * v13];
    if (v11 >= 8 && v16 < a3)
    {
      v40 = (v8 + 8);
      while (1)
      {
        v20 = *v16;
        v21 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;

        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        LOBYTE(v21) = sub_26F427634(v20 + v21);
        (*v40)(v10, v42);

        if ((v21 & 1) == 0)
        {
          break;
        }

        v22 = v16;
        v23 = a1 == v16;
        v16 += 8;
        if (!v23)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 += 8;
        if (v17 >= v19 || v16 >= a3)
        {
          goto LABEL_20;
        }
      }

      v22 = v17;
      v23 = a1 == v17;
      v17 += 8;
      if (v23)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    v24 = a1;
  }

LABEL_39:
  if (v24 != v17 || v24 >= &v17[(v19 - v17 + (v19 - v17 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v24, v17, 8 * ((v19 - v17) / 8));
  }

  return 1;
}

uint64_t sub_26F3F98C4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26F49DAB8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_26F3F99A8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_26F4A00A8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_26F4970D4(v3, 0);
  sub_26F3F9A3C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26F3F9A3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26F4A00A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26F4A00A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26F3B18CC(&qword_2806E00A8, &qword_2806DFF50, &qword_26F4A5E40, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF50, &qword_26F4A5E40);
            v9 = sub_26F3F9BE0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LanguageSelectionDownloadModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_26F3F9BE0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x274390F80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_26F3F9C60;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F3F9C68(uint64_t a1, uint64_t a2)
{
  v2[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v2[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0030, &qword_26F4A5F58);
  v2[5] = v3;
  v2[6] = sub_26F3B18CC(&qword_2806E00A0, &qword_2806E0030, &qword_26F4A5F58, MEMORY[0x277D857C0]);
  v2[14] = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v3 - 8) + 16))();
  v2[15] = sub_26F49FBD8();
  v2[16] = sub_26F49FBC8();
  v5 = sub_26F49FB68();
  v2[17] = v5;
  v2[18] = v4;

  return MEMORY[0x2822009F8](sub_26F3F9DD4, v5, v4);
}

uint64_t sub_26F3F9DD4(__n128 a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = sub_26F49FC08();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_26F3FA85C(v1 + 16, v1 + 56);

  v6 = sub_26F49FBC8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  sub_26F3FA8C0((v1 + 56), (v7 + 4));
  v7[9] = v5;

  v9 = sub_26F40570C(0, 0, v3, &unk_26F4A60F0, v7);
  v10 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask;
  *(v1 + 152) = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask;
  v11 = *(v2 + v10);
  *(v2 + v10) = v9;
  if (v11)
  {

    sub_26F49FC88();

    v9 = *(v2 + v10);
  }

  *(v1 + 160) = v9;
  if (v9)
  {

    v12 = swift_task_alloc();
    *(v1 + 168) = v12;
    *v12 = v1;
    v12[1] = sub_26F3FA06C;

    return MEMORY[0x282200460]();
  }

  else
  {

    v13 = *(v1 + 152);
    v14 = *(v1 + 96);
    v15 = *(v14 + v13);
    *(v14 + v13) = 0;
    if (v15)
    {
      sub_26F49FC88();
    }

    sub_26F3FA528(*(v1 + 112), *(v1 + 96));
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));

    v16 = *(v1 + 8);

    return v16();
  }
}

uint64_t sub_26F3FA06C()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26F3FA1B0, v3, v2);
}

uint64_t sub_26F3FA1B0()
{

  v1 = v0[19];
  v2 = v0[12];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;
  if (v3)
  {
    sub_26F49FC88();
  }

  sub_26F3FA528(v0[14], v0[12]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t type metadata accessor for LanguageSelectionViewModel(uint64_t a1)
{
  result = qword_2806E0090;
  if (!qword_2806E0090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3FA30C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26F3FA394(uint64_t a1)
{
  sub_26F3FA4D0(319);
  if (v1 <= 0x3F)
  {
    sub_26F49DB48();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26F3FA4D0(uint64_t a1)
{
  if (!qword_280F66C80)
  {
    sub_26F49DAB8();
    v1 = sub_26F49FFC8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F66C80);
    }
  }
}

uint64_t sub_26F3FA528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0030, &qword_26F4A5F58);
  v18[3] = v7;
  v18[4] = sub_26F3B18CC(&qword_2806E00A0, &qword_2806E0030, &qword_26F4A5F58, MEMORY[0x277D857C0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  v9 = sub_26F49FC08();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_26F3FA85C(v18, v17);
  sub_26F49FBD8();

  v11 = sub_26F49FBC8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  sub_26F3FA8C0(v17, (v12 + 4));
  v12[9] = v10;

  v14 = sub_26F40570C(0, 0, v6, &unk_26F4A6100, v12);
  v15 = *(a2 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observationTask);
  *(a2 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observationTask) = v14;
  if (v15)
  {

    sub_26F49FC88();
  }

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_26F3FA780()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_26F3FA7BC()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26F3FA85C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26F3FA8C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26F3FA8D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F3F58D8(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_26F3FA9E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CEEAC;

  return sub_26F3F6B9C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26F3FAAF0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26F3FAB20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F3FABA4()
{
  result = qword_2806E00B0;
  if (!qword_2806E00B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806E00B0);
  }

  return result;
}

void sub_26F3FAC28(uint64_t a1, uint64_t a2, int a3)
{
  v39 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v37 = *(v5 - 8);
  v38 = v5;
  v35 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - v6;
  v41 = sub_26F49DAB8();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    LODWORD(v34) = a3;
    aBlock = MEMORY[0x277D84F90];
    sub_26F4A01F8();
    v40 = (v7 + 8);
    v11 = a2 + 40;
    do
    {
      v16 = *(v11 + 8);
      v17 = *(v11 + 16);
      v18 = objc_opt_self();
      swift_bridgeObjectRetain_n();

      v19 = sub_26F49F898();
      if (v17 == 1)
      {
        if (v16 == 0.0)
        {
          v20 = [v18 discreteProgressWithIdentifier:v19 offlineState:2];
        }

        else
        {
          v20 = [v18 discreteProgressWithIdentifier:v19 offlineState:0];
        }

        v12 = v20;
      }

      else
      {
        v12 = [v18 discreteProgressWithIdentifier:v19 offlineState:1];

        if (v16 > 0.001)
        {
          v13 = v16;
        }

        else
        {
          v13 = 0.001;
        }

        [v12 updatePercentComplete_];
      }

      sub_26F49D978();
      v14 = objc_allocWithZone(MEMORY[0x277CE1B00]);
      v15 = sub_26F49D9F8();
      [v14 initWithLocale:v15 progress:v12];

      (*v40)(v9, v41);
      sub_26F4A01D8();
      sub_26F4A0208();
      sub_26F4A0218();
      sub_26F4A01E8();
      v11 += 48;
      --v10;
    }

    while (v10);
    LOBYTE(a3) = v34;
  }

  v21 = 2;
  if (a3)
  {
    v21 = 3;
  }

  v41 = v21;
  v40 = objc_opt_self();
  sub_26F4003F4();
  v34 = sub_26F49FAD8();

  v23 = v36;
  v22 = v37;
  v33 = *(v37 + 16);
  v24 = v38;
  v33(v36, v39, v38);
  v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v26 = swift_allocObject();
  v27 = *(v22 + 32);
  v27(v26 + v25, v23, v24);
  v46 = sub_26F400440;
  v47 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_26F3FB728;
  v45 = &block_descriptor_3;
  v28 = _Block_copy(&aBlock);

  v33(v23, v39, v24);
  v29 = swift_allocObject();
  v27(v29 + v25, v23, v24);
  v46 = sub_26F400504;
  v47 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_26F3B3644;
  v45 = &block_descriptor_27;
  v30 = _Block_copy(&aBlock);

  v31 = v34;
  [v40 setLanguageAssets:v34 options:v41 progress:v28 completion:v30];
  _Block_release(v30);
  _Block_release(v28);
}

void sub_26F3FB12C(unint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D8, &unk_26F4A6C80);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  if (a1)
  {
    v63 = v17;
    v71 = v13;
    if (a1 >> 62)
    {
      v18 = sub_26F4A00A8();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v64 = v7;
      v81 = MEMORY[0x277D84F90];
      sub_26F4032B0(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        __break(1u);
        return;
      }

      v60 = v15;
      v61 = v14;
      v62 = a2;
      v20 = 0;
      v19 = v81;
      v21 = a1;
      v65 = (v5 + 8);
      v66 = a1 & 0xC000000000000001;
      v22 = &off_279DD7000;
      v69 = v4;
      v70 = a1;
      v67 = v18;
      v68 = v10;
      do
      {
        v73 = v19;
        if (v66)
        {
          v23 = MEMORY[0x274390F80](v20, v21);
        }

        else
        {
          v23 = *(v21 + 8 * v20 + 32);
        }

        v24 = v23;
        v25 = [v23 v22[326]];
        v26 = v4;
        if (v25 == 2)
        {
          v30 = 1;
          v29 = 0;
        }

        else if (v25 == 1)
        {
          v27 = [v24 progress];
          [v27 fractionCompleted];
          v29 = v28;

          v30 = 0;
        }

        else
        {
          v30 = 1;
          v29 = 1;
        }

        v72 = v24;
        v31 = [v24 ltIdentifier];
        v32 = sub_26F49F8C8();
        v34 = v33;

        v79 = v32;
        v80 = v34;
        v77 = 45;
        v78 = 0xE100000000000000;
        v75 = 95;
        v76 = 0xE100000000000000;
        sub_26F3BDC0C();
        v35 = sub_26F49FFF8();
        v37 = v36;

        LOBYTE(v79) = v30;

        v38 = v71;
        v74 = v35;
        sub_26F49D978();
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v39 = sub_26F49D9F8();
        v40 = sub_26F49D9F8();
        v41 = [v39 lt:0 displayNameForContext:v40 inTargetLocale:?];

        if (v41)
        {
          v42 = sub_26F49F8C8();
          v44 = v43;

          v45 = *v65;
          (*v65)(v10, v26);
          v45(v38, v26);
          v46 = v74;
        }

        else
        {
          v47 = *v65;
          (*v65)(v10, v26);
          v48 = v64;
          _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
          v49 = sub_26F49D9F8();
          v50 = sub_26F49D9F8();
          v51 = [v49 lt:0 displaySubnameForContext:v50 inTargetLocale:?];

          if (v51)
          {
            v42 = sub_26F49F8C8();
            v44 = v52;

            v47(v48, v26);
            v47(v38, v26);
            v22 = &off_279DD7000;
            v46 = v74;
          }

          else
          {
            v47(v48, v26);
            v47(v38, v26);

            v46 = v74;
            v42 = v74;
            v44 = v37;
            v22 = &off_279DD7000;
          }
        }

        v53 = v79;
        v19 = v73;
        v81 = v73;
        v55 = *(v73 + 16);
        v54 = *(v73 + 24);
        v56 = v67;
        if (v55 >= v54 >> 1)
        {
          sub_26F4032B0((v54 > 1), v55 + 1, 1);
          v46 = v74;
          v19 = v81;
        }

        ++v20;
        *(v19 + 16) = v55 + 1;
        v57 = v19 + 48 * v55;
        *(v57 + 32) = v46;
        *(v57 + 40) = v37;
        *(v57 + 48) = v29;
        *(v57 + 56) = v53;
        *(v57 + 64) = v42;
        *(v57 + 72) = v44;
        v4 = v69;
        v21 = v70;
        v10 = v68;
      }

      while (v56 != v20);
      v14 = v61;
      v15 = v60;
    }

    v79 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    v58 = v63;
    sub_26F49FCC8();
    (*(v15 + 8))(v58, v14);
  }
}

uint64_t sub_26F3FB728(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_26F4003F4();
    v2 = sub_26F49FAF8();
  }

  v3(v2);
}

uint64_t sub_26F3FB7A0(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  return sub_26F49FCD8();
}

uint64_t static LanguagesInstallService.save(_:useCellular:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v5 + 104))(v7, *MEMORY[0x277D858A0], v4);
  return sub_26F49FD08();
}

uint64_t static LanguagesInstallService.add(_:useCellular:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v10 = sub_26F49DCA8();
  __swift_project_value_buffer(v10, qword_280F67EB8);

  v11 = sub_26F49DC88();
  v12 = sub_26F49FDB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = a3;
    v23 = v21;
    *v13 = 134349314;
    *(v13 + 4) = *(a1 + 16);

    *(v13 + 12) = 2082;
    v14 = MEMORY[0x274390900](a1, &type metadata for LanguageModel);
    v16 = sub_26F3B38D0(v14, v15, &v23);

    *(v13 + 14) = v16;
    _os_log_impl(&dword_26F39E000, v11, v12, "Add %{public}ld languages: %{public}s", v13, 0x16u);
    v17 = v21;
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x274391F70](v17, -1, -1);
    MEMORY[0x274391F70](v13, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v18);
  *(&v20 - 2) = a1;
  *(&v20 - 8) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v7 + 104))(v9, *MEMORY[0x277D858A0], v6);
  return sub_26F49FD08();
}

uint64_t sub_26F3FBC18(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_26F49FC08();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 41) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  (*(v7 + 32))(v15 + v14, v9, v6);

  sub_26F40570C(0, 0, v12, &unk_26F4A6258, v15);
}

uint64_t sub_26F3FBE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 304) = a5;
  *(v6 + 152) = a4;
  *(v6 + 160) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D8, &unk_26F4A6C80);
  *(v6 + 168) = v7;
  *(v6 + 176) = *(v7 - 8);
  *(v6 + 184) = swift_task_alloc();
  v8 = sub_26F49DAB8();
  *(v6 + 192) = v8;
  *(v6 + 200) = *(v8 - 8);
  *(v6 + 208) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  *(v6 + 216) = v9;
  *(v6 + 224) = *(v9 - 8);
  *(v6 + 232) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E0, &qword_26F4A6210);
  *(v6 + 240) = v10;
  *(v6 + 248) = *(v10 - 8);
  *(v6 + 256) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E8, &qword_26F4A6218);
  *(v6 + 264) = v11;
  *(v6 + 272) = *(v11 - 8);
  *(v6 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F3FC078, 0, 0);
}

uint64_t sub_26F3FC078(__n128 a1)
{
  v2 = v1[19];
  v3 = *(v2 + 16);
  v1[36] = v3;
  if (v3)
  {
    v4 = v1[25];
    v41 = MEMORY[0x277D84F90];
    sub_26F4032B0(0, v3, 0);
    v5 = v41;
    v35 = (v4 + 8);
    v6 = (v2 + 72);
    do
    {
      v8 = *(v6 - 5);
      v7 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *v6;
      v40 = *(v6 - 1);
      if (*(v6 - 16) == 1)
      {

        if (v9)
        {
          v11 = v36[26];
          v38 = v36[24];

          sub_26F49D978();
          v39 = v5;
          v36[2] = sub_26F49D988();
          v36[3] = v12;
          v36[4] = 45;
          v37 = v10;
          v36[5] = 0xE100000000000000;
          v36[6] = 95;
          v36[7] = 0xE100000000000000;
          sub_26F3BDC0C();
          v13 = sub_26F49FFF8();
          v15 = v14;

          (*v35)(v11, v38);
          v36[8] = v13;
          v36[9] = v15;
          v36[10] = 45;
          v36[11] = 0xE100000000000000;
          v36[12] = 95;
          v36[13] = 0xE100000000000000;

          v8 = sub_26F49FFF8();
          v17 = v16;

          v18 = v37;

          v9 = 0;
          v19 = 0;
          v7 = v17;
          v5 = v39;
        }

        else
        {
          v18 = v10;
          v19 = 1;
        }
      }

      else
      {

        v18 = v10;

        v19 = 0;
      }

      v21 = *(v5 + 16);
      v20 = *(v5 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26F4032B0((v20 > 1), v21 + 1, 1);
      }

      v6 += 6;
      *(v5 + 16) = v21 + 1;
      v22 = v5 + 48 * v21;
      *(v22 + 32) = v8;
      *(v22 + 40) = v7;
      *(v22 + 48) = v9;
      *(v22 + 56) = v19;
      *(v22 + 64) = v40;
      *(v22 + 72) = v18;
      --v3;
    }

    while (v3);
    v23 = v5;
    v1 = v36;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v25 = v1[31];
  v24 = v1[32];
  v27 = v1[29];
  v26 = v1[30];
  v29 = v1[27];
  v28 = v1[28];
  v30 = *(v1 + 304);
  v31 = swift_task_alloc();
  *(v31 + 16) = v23;
  *(v31 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v28 + 104))(v27, *MEMORY[0x277D858A0], v29);
  sub_26F49FD08();

  sub_26F49FC58();
  (*(v25 + 8))(v24, v26);
  v32 = swift_task_alloc();
  v1[37] = v32;
  *v32 = v1;
  v32[1] = sub_26F3FC470;
  v33 = v1[33];

  return MEMORY[0x2822005A8](v1 + 14, 0, 0, v33, v1 + 15);
}

uint64_t sub_26F3FC470()
{

  if (v0)
  {
    v1 = sub_26F3FC960;
  }

  else
  {
    v1 = sub_26F3FC580;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26F3FC580()
{
  v37 = v0;
  v1 = v0[14];
  if (v1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v4 = v0[21];
    v0[18] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCC8();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    v0[37] = v5;
    *v5 = v0;
    v5[1] = sub_26F3FC470;
    v6 = v0[33];

    return MEMORY[0x2822005A8](v0 + 14, 0, 0, v6, v0 + 15);
  }

  else
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v7 = sub_26F49DCA8();
    __swift_project_value_buffer(v7, qword_280F67EB8);

    v8 = sub_26F49DC88();
    v9 = sub_26F49FDB8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[36];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      v35 = v12;
      *v11 = 136446210;
      v14 = MEMORY[0x277D84F90];
      if (v10)
      {
        v32 = v12;
        v33 = v9;
        v34 = v8;
        v15 = v0[36];
        v16 = v0[19];
        v36 = MEMORY[0x277D84F90];
        sub_26F403380(0, v15, 0);
        v17 = 0;
        v14 = v36;
        v18 = *(v36 + 16);
        v19 = 16 * v18;
        v20 = (v16 + 40);
        do
        {
          v21 = *(v20 - 1);
          v22 = *v20;
          v36 = v14;
          v23 = *(v14 + 24);

          if (v18 >= v23 >> 1)
          {
            sub_26F403380((v23 > 1), v18 + 1, 1);
            v14 = v36;
          }

          v24 = v0[36];
          ++v17;
          *(v14 + 16) = v18 + 1;
          v25 = v14 + v19;
          *(v25 + 32) = v21;
          *(v25 + 40) = v22;
          v19 += 16;
          v20 += 6;
          ++v18;
        }

        while (v17 != v24);
        v8 = v34;
        v9 = v33;
        v13 = v32;
      }

      v26 = MEMORY[0x274390900](v14, MEMORY[0x277D837D0]);
      v28 = v27;

      v29 = sub_26F3B38D0(v26, v28, &v35);

      *(v11 + 4) = v29;
      _os_log_impl(&dword_26F39E000, v8, v9, "Successfully added languages: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x274391F70](v13, -1, -1);
      MEMORY[0x274391F70](v11, -1, -1);
    }

    v0[17] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCD8();

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_26F3FC960()
{
  v36 = v0;
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[15];
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v2 = sub_26F49DCA8();
  __swift_project_value_buffer(v2, qword_280F67EB8);

  v3 = v1;
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v7 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 134218498;
    *(v7 + 4) = v6;

    *(v7 + 12) = 2082;
    v9 = MEMORY[0x277D84F90];
    if (v6)
    {
      v28 = v8;
      v29 = v5;
      v30 = v7;
      v31 = v4;
      v32 = v1;
      v10 = v0[36];
      v11 = v0[19];
      v35 = MEMORY[0x277D84F90];
      sub_26F403380(0, v10, 0);
      v12 = 0;
      v9 = v35;
      v13 = *(v35 + 16);
      v14 = 16 * v13;
      v15 = (v11 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v35 = v9;
        v18 = *(v9 + 24);

        if (v13 >= v18 >> 1)
        {
          sub_26F403380((v18 > 1), v13 + 1, 1);
          v9 = v35;
        }

        v19 = v0[36];
        ++v12;
        *(v9 + 16) = v13 + 1;
        v20 = v9 + v14;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v14 += 16;
        v15 += 6;
        ++v13;
      }

      while (v12 != v19);
      v4 = v31;
      v1 = v32;
      v7 = v30;
      v5 = v29;
      v8 = v28;
    }

    v21 = MEMORY[0x274390900](v9, MEMORY[0x277D837D0]);
    v23 = v22;

    v24 = sub_26F3B38D0(v21, v23, &v34);

    *(v7 + 14) = v24;
    *(v7 + 22) = 2112;
    v25 = sub_26F49D7E8();
    *(v7 + 24) = v25;
    *v33 = v25;
    _os_log_impl(&dword_26F39E000, v4, v5, "Failed to save %ld languages: %{public}s; %@", v7, 0x20u);
    sub_26F3CC31C(v33);
    MEMORY[0x274391F70](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x274391F70](v8, -1, -1);
    MEMORY[0x274391F70](v7, -1, -1);
  }

  else
  {
  }

  v0[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  sub_26F49FCD8();

  v26 = v0[1];

  return v26();
}

uint64_t static LanguagesInstallService.add(pair:useCellular:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v3) = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C8, &unk_26F4A61C0);
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v26[-v7];
  v9 = type metadata accessor for LocalePair(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v12 = sub_26F49DCA8();
  __swift_project_value_buffer(v12, qword_280F67EB8);
  v29 = a1;
  sub_26F3FFF24(a1, v11);
  v13 = sub_26F49DC88();
  v14 = sub_26F49FDB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = a3;
    v17 = v16;
    *v15 = 136446210;
    v31 = 0;
    v32 = 0xE000000000000000;
    v33 = v16;
    sub_26F4A0178();

    v31 = 0x203A656372756F73;
    v32 = 0xE800000000000000;
    v18 = sub_26F49D988();
    v27 = v3;
    MEMORY[0x2743907E0](v18);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v19 = sub_26F49D988();
    MEMORY[0x2743907E0](v19);

    v20 = v31;
    v3 = v32;
    sub_26F3FFF88(v11);
    v21 = sub_26F3B38D0(v20, v3, &v33);
    LOBYTE(v3) = v27;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_26F39E000, v13, v14, "Add locale pair: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x274391F70](v17, -1, -1);
    MEMORY[0x274391F70](v15, -1, -1);
  }

  else
  {

    v22 = sub_26F3FFF88(v11);
  }

  v23 = MEMORY[0x28223BE20](v22);
  v24 = v30;
  *&v26[-16] = v29;
  v26[-8] = v3 & 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D858A0], v24, v23);
  return sub_26F49FD08();
}

uint64_t sub_26F3FD048(uint64_t a1, uint64_t a2, int a3)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-v7];
  v9 = type metadata accessor for LocalePair(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22[-v14];
  v16 = sub_26F49FC08();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_26F3FFF24(a2, v12);
  (*(v6 + 16))(v8, a1, v5);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = v17 + v11;
  v19 = (*(v6 + 80) + v17 + v11 + 1) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_26F40010C(v12, v20 + v17);
  *(v20 + v18) = v23;
  (*(v6 + 32))(v20 + v19, v8, v5);
  sub_26F40570C(0, 0, v15, &unk_26F4A6238, v20);
}

uint64_t sub_26F3FD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 265) = a5;
  *(v6 + 320) = a4;
  *(v6 + 328) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F8, &unk_26F4A6240);
  *(v6 + 336) = v7;
  *(v6 + 344) = *(v7 - 8);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = type metadata accessor for LocalePair(0);
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E0, &qword_26F4A6210);
  *(v6 + 392) = v8;
  *(v6 + 400) = *(v8 - 8);
  *(v6 + 408) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E8, &qword_26F4A6218);
  *(v6 + 416) = v9;
  *(v6 + 424) = *(v9 - 8);
  *(v6 + 432) = swift_task_alloc();
  v10 = sub_26F49DAB8();
  *(v6 + 440) = v10;
  *(v6 + 448) = *(v10 - 8);
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F3FD578, 0, 0);
}

uint64_t sub_26F3FD578()
{
  v73 = (*(v0 + 448) + 16);
  v69 = *v73;
  (*v73)(*(v0 + 512), *(v0 + 320), *(v0 + 440));
  *(v0 + 16) = sub_26F49D988();
  *(v0 + 24) = v1;
  *(v0 + 32) = 45;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 95;
  *(v0 + 56) = 0xE100000000000000;
  v2 = sub_26F3BDC0C();
  v3 = MEMORY[0x277D837D0];
  v4 = sub_26F49FFF8();
  v6 = v5;

  *(v0 + 64) = v4;
  *(v0 + 80) = 45;
  *(v0 + 72) = v6;
  *(v0 + 88) = 0xE100000000000000;
  *(v0 + 96) = 95;
  *(v0 + 104) = 0xE100000000000000;
  v63 = v3;
  v7 = sub_26F49FFF8();
  v9 = v8;

  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v10 = sub_26F49D9F8();
  v11 = sub_26F49D9F8();
  v12 = [v10 lt:0 displayNameForContext:v11 inTargetLocale:{v63, v2, v2, v2}];

  v14 = *(v0 + 496);
  v13 = *(v0 + 504);
  v76 = v7;
  if (v12)
  {
    v15 = *(v0 + 440);
    v16 = *(v0 + 448);
    v71 = sub_26F49F8C8();
    v72 = v17;

    v18 = *(v16 + 8);
    v18(v14, v15);
    v18(v13, v15);
  }

  else
  {
    v75 = *(*(v0 + 448) + 8);
    v75(v14, *(v0 + 440));
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v19 = sub_26F49D9F8();
    v20 = sub_26F49D9F8();
    v21 = [v19 lt:0 displaySubnameForContext:v20 inTargetLocale:?];

    v22 = *(v0 + 504);
    v23 = *(v0 + 464);
    v24 = *(v0 + 440);
    if (v21)
    {
      v71 = sub_26F49F8C8();
      v72 = v25;

      v18 = v75;
      v75(v23, v24);
      v75(v22, v24);
    }

    else
    {
      v75(*(v0 + 464), *(v0 + 440));
      v75(v22, v24);

      v71 = v7;
      v72 = v9;
      v18 = v75;
    }
  }

  v26 = *(v0 + 488);
  v27 = *(v0 + 440);
  v28 = *(v0 + 360);
  v29 = *(v0 + 320);
  v18(*(v0 + 512), v27);
  v69(v26, v29 + *(v28 + 20), v27);
  *(v0 + 112) = sub_26F49D988();
  *(v0 + 120) = v30;
  *(v0 + 128) = 45;
  *(v0 + 136) = 0xE100000000000000;
  *(v0 + 144) = 95;
  *(v0 + 152) = 0xE100000000000000;
  v31 = MEMORY[0x277D837D0];
  v32 = sub_26F49FFF8();
  v34 = v33;

  *(v0 + 160) = v32;
  *(v0 + 168) = v34;
  *(v0 + 176) = 45;
  *(v0 + 184) = 0xE100000000000000;
  *(v0 + 192) = 95;
  *(v0 + 200) = 0xE100000000000000;
  v65 = v2;
  v66 = v2;
  v64 = v2;
  v35 = sub_26F49FFF8();
  v37 = v36;

  v74 = v37;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v38 = sub_26F49D9F8();
  v39 = sub_26F49D9F8();
  v40 = [v38 lt:0 displayNameForContext:v39 inTargetLocale:{v31, v64, v65, v66}];

  v42 = *(v0 + 472);
  v41 = *(v0 + 480);
  v70 = v35;
  if (v40)
  {
    v43 = *(v0 + 440);
    v44 = sub_26F49F8C8();
    v68 = v45;

    v46 = v42;
    v47 = v44;
    v18(v46, v43);
    v18(v41, v43);
  }

  else
  {
    v18(v42, *(v0 + 440));
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v48 = sub_26F49D9F8();
    v49 = sub_26F49D9F8();
    v50 = [v48 lt:0 displaySubnameForContext:v49 inTargetLocale:?];

    v51 = *(v0 + 480);
    v52 = *(v0 + 456);
    v53 = *(v0 + 440);
    if (v50)
    {
      v54 = sub_26F49F8C8();
      v68 = v55;

      v47 = v54;
      v18(v52, v53);
      v18(v51, v53);
    }

    else
    {
      v18(*(v0 + 456), *(v0 + 440));
      v18(v51, v53);
      v47 = v35;
    }
  }

  v57 = *(v0 + 400);
  v56 = *(v0 + 408);
  v67 = *(v0 + 392);
  v58 = *(v0 + 265);
  v18(*(v0 + 488), *(v0 + 440));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0100, &unk_26F4A6690);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26F4A3B80;
  *(v59 + 32) = v76;
  *(v59 + 40) = v9;
  *(v59 + 48) = 0;
  *(v59 + 56) = 0;
  *(v59 + 64) = v71;
  *(v59 + 72) = v72;
  *(v59 + 80) = v70;
  *(v59 + 88) = v74;
  *(v59 + 96) = 0;
  *(v59 + 104) = 0;
  *(v59 + 112) = v47;
  *(v59 + 120) = v68;

  static LanguagesInstallService.add(_:useCellular:)(v59, v58, v56);

  sub_26F49FC58();
  (*(v57 + 8))(v56, v67);
  *(v0 + 576) = v72;
  *(v0 + 568) = 0;
  *(v0 + 560) = v9;
  *(v0 + 552) = v76;
  *(v0 + 544) = v68;
  *(v0 + 266) = 0;
  *(v0 + 536) = 0;
  *(v0 + 528) = v74;
  *(v0 + 520) = v70;
  v60 = swift_task_alloc();
  *(v0 + 584) = v60;
  *v60 = v0;
  v60[1] = sub_26F3FDCCC;
  v61 = *(v0 + 416);

  return MEMORY[0x2822005A8](v0 + 272, 0, 0, v61, v0 + 280);
}

uint64_t sub_26F3FDCCC()
{

  if (v0)
  {
    v1 = sub_26F3FE840;
  }

  else
  {
    v1 = sub_26F3FDDDC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26F3FDDDC()
{
  v71 = v1;
  v2 = *(*&v1 + 272);
  if (!v2)
  {
    (*(*(*&v1 + 424) + 8))(*(*&v1 + 432), *(*&v1 + 416));
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v14 = *(*&v1 + 384);
    v15 = *(*&v1 + 320);
    v16 = sub_26F49DCA8();
    __swift_project_value_buffer(v16, qword_280F67EB8);
    sub_26F3FFF24(v15, v14);
    v17 = sub_26F49DC88();
    v18 = sub_26F49FDB8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(*&v1 + 384);
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v69 = v22;
      *v21 = 136446210;
      sub_26F4A0178();

      v70[0] = 0x203A656372756F73;
      v70[1] = 0xE800000000000000;
      v23 = sub_26F49D988();
      MEMORY[0x2743907E0](v23);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v24 = sub_26F49D988();
      MEMORY[0x2743907E0](v24);

      sub_26F3FFF88(v20);
      v25 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v69);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_26F39E000, v17, v18, "Successfully added locale pair: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x274391F70](v22, -1, -1);
      MEMORY[0x274391F70](v21, -1, -1);
    }

    else
    {

      sub_26F3FFF88(v20);
    }

    *(*&v1 + 296) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228);
    sub_26F49FCD8();

    v26 = *(*&v1 + 8);

    return v26();
  }

  v3 = 0;
  v66 = *(*&v1 + 272);
  v4 = *(v2 + 16);
  v61 = *(*&v1 + 267);
  v62 = *(*&v1 + 568);
  v5 = *(*&v1 + 560);
  v63 = *(*&v1 + 544);
  v64 = *(*&v1 + 576);
  v59 = *(*&v1 + 266);
  v60 = *(*&v1 + 536);
  v67 = *(*&v1 + 552);
  v68 = *(*&v1 + 528);
  v65 = *(*&v1 + 520);
LABEL_3:
  v6 = 48 * v3;
  v7 = v3;
  while (v4 != v7)
  {
    if (v7 >= v4)
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v3 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_66;
    }

    v10 = *(v66 + v6 + 32);
    v9 = *(v66 + v6 + 40);
    v1 = *(v66 + v6 + 48);
    v0 = *(v66 + v6 + 56);
    v11 = *(v66 + v6 + 72);
    if (v67 == v10 && v5 == v9)
    {
      goto LABEL_19;
    }

    v13 = v5;
    if (sub_26F4A0458())
    {
      v67 = v10;
LABEL_19:

      v5 = v9;
      v62 = v1;
      v61 = v0;
      v64 = v11;
      goto LABEL_3;
    }

    if (v65 == v10 && v68 == v9)
    {
      v10 = v65;
LABEL_16:

      v5 = v13;
      v63 = v11;
      v59 = v0;
      v60 = v1;
      v68 = v9;
      v65 = v10;
      goto LABEL_3;
    }

    v8 = sub_26F4A0458();
    ++v7;
    v6 += 48;
    v5 = v13;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  if ((v61 & 1) == 0)
  {
    v0 = v58;
    v57 = v5;
    if ((v59 & 1) == 0)
    {

      LODWORD(v1) = 0;
      v28 = (v60 + v62) * 0.5;
LABEL_40:
      v4 = *&v28;
      goto LABEL_41;
    }

    v1 = v62;
    if (v60 != 0.0)
    {
      goto LABEL_37;
    }

LABEL_39:

    v29 = v1;
    LODWORD(v1) = 0;
    v28 = v29 * 0.5 + 0.5;
    goto LABEL_40;
  }

  v0 = v58;
  if (v62 != 0.0)
  {
    v57 = v5;
    goto LABEL_37;
  }

  v57 = v5;
  v1 = v60;
  if ((v59 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v60 == 0.0)
  {

    v4 = 0;
    goto LABEL_38;
  }

LABEL_37:

  v4 = 1;
LABEL_38:
  LODWORD(v1) = 1;
LABEL_41:
  if (qword_280F66C10 == -1)
  {
    goto LABEL_42;
  }

LABEL_67:
  swift_once();
LABEL_42:
  v30 = sub_26F49DCA8();
  __swift_project_value_buffer(v30, qword_280F67EB8);
  v31 = sub_26F49DC88();
  v32 = sub_26F49FDC8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *(v0 + 312) = v34;
    *v33 = 136446210;
    v35 = LODWORD(v1);
    if (LODWORD(v1))
    {
      v36 = v4;
      if (v4)
      {
        v37 = 0xD000000000000014;
      }

      else
      {
        v37 = 0x656C6C6174736E69;
      }

      if (v4)
      {
        v38 = 0x800000026F4ADC00;
      }

      else
      {
        v38 = 0xE900000000000064;
      }
    }

    else
    {
      v36 = v4;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0xE000000000000000;
      MEMORY[0x2743907E0](0x64616F6C6E776F64, 0xEC00000028676E69);
      sub_26F49FD28();
      MEMORY[0x2743907E0](41, 0xE100000000000000);
      v37 = *(v0 + 240);
      v38 = *(v0 + 248);
    }

    v39 = sub_26F3B38D0(v37, v38, (v0 + 312));

    *(v33 + 4) = v39;
    _os_log_impl(&dword_26F39E000, v31, v32, "Add locale pair state yield: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x274391F70](v34, -1, -1);
    MEMORY[0x274391F70](v33, -1, -1);

    v4 = v36;
  }

  else
  {
    v35 = LODWORD(v1);
  }

  v41 = *(v0 + 344);
  v40 = *(v0 + 352);
  v42 = *(v0 + 336);
  *(v0 + 256) = v4;
  *(v0 + 264) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228);
  sub_26F49FCC8();
  (*(v41 + 8))(v40, v42);
  if (v4)
  {
    v43 = 0;
  }

  else
  {
    v43 = v35;
  }

  if (v43 == 1)
  {
    sub_26F3FFF24(*(v0 + 320), *(v0 + 376));
    v44 = sub_26F49DC88();
    v45 = sub_26F49FDB8();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 376);
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136446210;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      sub_26F4A0178();

      *(v0 + 208) = 0x203A656372756F73;
      *(v0 + 216) = 0xE800000000000000;
      v50 = sub_26F49D988();
      MEMORY[0x2743907E0](v50);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v51 = sub_26F49D988();
      MEMORY[0x2743907E0](v51);

      v52 = *(v0 + 208);
      v53 = *(v0 + 216);
      sub_26F3FFF88(v47);
      v54 = sub_26F3B38D0(v52, v53, v70);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_26F39E000, v44, v45, "Install complete for locale pair: %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x274391F70](v49, -1, -1);
      MEMORY[0x274391F70](v48, -1, -1);
    }

    else
    {

      sub_26F3FFF88(v47);
    }

    *(v0 + 304) = 0;
    sub_26F49FCD8();
  }

  *(v0 + 576) = v64;
  *(v0 + 267) = v61 & 1;
  *(v0 + 568) = v62;
  *(v0 + 560) = v57;
  *(v0 + 552) = v67;
  *(v0 + 544) = v63;
  *(v0 + 266) = v59 & 1;
  *(v0 + 536) = v60;
  *(v0 + 528) = v68;
  *(v0 + 520) = v65;
  v55 = swift_task_alloc();
  *(v0 + 584) = v55;
  *v55 = v0;
  v55[1] = sub_26F3FDCCC;
  v56 = *(v0 + 416);

  return MEMORY[0x2822005A8](v0 + 272, 0, 0, v56, v0 + 280);
}

uint64_t sub_26F3FE840()
{
  v20 = v0;
  (*(v0[53] + 8))(v0[54], v0[52]);
  v1 = v0[35];
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v2 = v0[46];
  v3 = v0[40];
  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_280F67EB8);
  sub_26F3FFF24(v3, v2);
  v5 = v1;
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDD8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[46];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v10 = 136446466;
    sub_26F4A0178();

    v19[1] = 0x203A656372756F73;
    v19[2] = 0xE800000000000000;
    v13 = sub_26F49D988();
    MEMORY[0x2743907E0](v13);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v14 = sub_26F49D988();
    MEMORY[0x2743907E0](v14);

    sub_26F3FFF88(v9);
    v15 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, v19);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = sub_26F49D7E8();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&dword_26F39E000, v6, v7, "Failed to add locale pair %{public}s: %@", v10, 0x16u);
    sub_26F3CC31C(v11);
    MEMORY[0x274391F70](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x274391F70](v12, -1, -1);
    MEMORY[0x274391F70](v10, -1, -1);
  }

  else
  {

    sub_26F3FFF88(v9);
  }

  v0[36] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228);
  sub_26F49FCD8();

  v17 = v0[1];

  return v17();
}

uint64_t static LanguagesInstallService.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v8 = sub_26F49DCA8();
  __swift_project_value_buffer(v8, qword_280F67EB8);

  v9 = sub_26F49DC88();
  v10 = sub_26F49FDB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = a2;
    v20 = v12;
    v13 = v12;
    *v11 = 134349314;
    *(v11 + 4) = *(a1 + 16);

    *(v11 + 12) = 2082;
    v14 = MEMORY[0x274390900](a1, &type metadata for LanguageModel);
    v16 = sub_26F3B38D0(v14, v15, &v20);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_26F39E000, v9, v10, "Request to remove %{public}ld languages: %{public}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x274391F70](v13, -1, -1);
    MEMORY[0x274391F70](v11, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v17);
  *(&v19 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v5 + 104))(v7, *MEMORY[0x277D858A0], v4);
  return sub_26F49FD08();
}

uint64_t sub_26F3FEE98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_26F49FC08();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_26F40570C(0, 0, v10, &unk_26F4A6200, v13);
}

uint64_t sub_26F3FF084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D8, &unk_26F4A6C80);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_26F49DAB8();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E0, &qword_26F4A6210);
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E8, &qword_26F4A6218);
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F3FF2E4, 0, 0);
}

uint64_t sub_26F3FF2E4(__n128 a1)
{
  v2 = v1[19];
  v3 = *(v2 + 16);
  v1[36] = v3;
  if (v3)
  {
    v4 = v1[25];
    v37 = MEMORY[0x277D84F90];
    sub_26F4032B0(0, v3, 0);
    v5 = v37;
    v33 = (v4 + 8);
    v6 = (v2 + 72);
    do
    {
      v8 = *(v6 - 5);
      v7 = *(v6 - 4);
      v9 = *(v6 - 1);
      v10 = *v6;
      if (*(v6 - 16) == 1 && *(v6 - 3))
      {
      }

      else
      {
        v11 = v1[26];
        v34 = v1[24];
        swift_bridgeObjectRetain_n();

        sub_26F49D978();
        v36 = v5;
        v1[2] = sub_26F49D988();
        v1[3] = v12;
        v1[4] = 45;
        v1[5] = 0xE100000000000000;
        v1[6] = 95;
        v1[7] = 0xE100000000000000;
        sub_26F3BDC0C();
        v13 = sub_26F49FFF8();
        v35 = v3;
        v14 = v10;
        v16 = v15;

        (*v33)(v11, v34);
        v1[8] = v13;
        v1[9] = v16;
        v1[10] = 45;
        v1[11] = 0xE100000000000000;
        v1[12] = 95;
        v1[13] = 0xE100000000000000;

        v8 = sub_26F49FFF8();
        v18 = v17;
        v10 = v14;
        v3 = v35;

        v7 = v18;
        v5 = v36;
      }

      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26F4032B0((v19 > 1), v20 + 1, 1);
      }

      *(v5 + 16) = v20 + 1;
      v21 = v5 + 48 * v20;
      *(v21 + 32) = v8;
      *(v21 + 40) = v7;
      *(v21 + 48) = 1;
      *(v21 + 56) = 1;
      *(v21 + 64) = v9;
      *(v21 + 72) = v10;
      v6 += 6;
      --v3;
    }

    while (v3);
    v22 = v5;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v23 = v1[31];
  v24 = v1[32];
  v26 = v1[29];
  v25 = v1[30];
  v27 = v1[27];
  v28 = v1[28];
  v29 = swift_task_alloc();
  *(v29 + 16) = v22;
  *(v29 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v28 + 104))(v26, *MEMORY[0x277D858A0], v27);
  sub_26F49FD08();

  sub_26F49FC58();
  (*(v23 + 8))(v24, v25);
  v30 = swift_task_alloc();
  v1[37] = v30;
  *v30 = v1;
  v30[1] = sub_26F3FF6B4;
  v31 = v1[33];

  return MEMORY[0x2822005A8](v1 + 14, 0, 0, v31, v1 + 15);
}

uint64_t sub_26F3FF6B4()
{

  if (v0)
  {
    v1 = sub_26F3FFBA4;
  }

  else
  {
    v1 = sub_26F3FF7C4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26F3FF7C4()
{
  v37 = v0;
  v1 = v0[14];
  if (v1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v4 = v0[21];
    v0[18] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCC8();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    v0[37] = v5;
    *v5 = v0;
    v5[1] = sub_26F3FF6B4;
    v6 = v0[33];

    return MEMORY[0x2822005A8](v0 + 14, 0, 0, v6, v0 + 15);
  }

  else
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v7 = sub_26F49DCA8();
    __swift_project_value_buffer(v7, qword_280F67EB8);

    v8 = sub_26F49DC88();
    v9 = sub_26F49FDB8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[36];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      v35 = v12;
      *v11 = 136446210;
      v14 = MEMORY[0x277D84F90];
      if (v10)
      {
        v32 = v12;
        v33 = v9;
        v34 = v8;
        v15 = v0[36];
        v16 = v0[19];
        v36 = MEMORY[0x277D84F90];
        sub_26F403380(0, v15, 0);
        v17 = 0;
        v14 = v36;
        v18 = *(v36 + 16);
        v19 = 16 * v18;
        v20 = (v16 + 40);
        do
        {
          v21 = *(v20 - 1);
          v22 = *v20;
          v36 = v14;
          v23 = *(v14 + 24);

          if (v18 >= v23 >> 1)
          {
            sub_26F403380((v23 > 1), v18 + 1, 1);
            v14 = v36;
          }

          v24 = v0[36];
          ++v17;
          *(v14 + 16) = v18 + 1;
          v25 = v14 + v19;
          *(v25 + 32) = v21;
          *(v25 + 40) = v22;
          v19 += 16;
          v20 += 6;
          ++v18;
        }

        while (v17 != v24);
        v8 = v34;
        v9 = v33;
        v13 = v32;
      }

      v26 = MEMORY[0x274390900](v14, MEMORY[0x277D837D0]);
      v28 = v27;

      v29 = sub_26F3B38D0(v26, v28, &v35);

      *(v11 + 4) = v29;
      _os_log_impl(&dword_26F39E000, v8, v9, "Successfully removed languages: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x274391F70](v13, -1, -1);
      MEMORY[0x274391F70](v11, -1, -1);
    }

    v0[17] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCD8();

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_26F3FFBA4()
{
  v36 = v0;
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[15];
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v2 = sub_26F49DCA8();
  __swift_project_value_buffer(v2, qword_280F67EB8);

  v3 = v1;
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v7 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 134349570;
    *(v7 + 4) = v6;

    *(v7 + 12) = 2082;
    v9 = MEMORY[0x277D84F90];
    if (v6)
    {
      v28 = v8;
      v29 = v5;
      v30 = v7;
      v31 = v4;
      v32 = v1;
      v10 = v0[36];
      v11 = v0[19];
      v35 = MEMORY[0x277D84F90];
      sub_26F403380(0, v10, 0);
      v12 = 0;
      v9 = v35;
      v13 = *(v35 + 16);
      v14 = 16 * v13;
      v15 = (v11 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v35 = v9;
        v18 = *(v9 + 24);

        if (v13 >= v18 >> 1)
        {
          sub_26F403380((v18 > 1), v13 + 1, 1);
          v9 = v35;
        }

        v19 = v0[36];
        ++v12;
        *(v9 + 16) = v13 + 1;
        v20 = v9 + v14;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v14 += 16;
        v15 += 6;
        ++v13;
      }

      while (v12 != v19);
      v4 = v31;
      v1 = v32;
      v7 = v30;
      v5 = v29;
      v8 = v28;
    }

    v21 = MEMORY[0x274390900](v9, MEMORY[0x277D837D0]);
    v23 = v22;

    v24 = sub_26F3B38D0(v21, v23, &v34);

    *(v7 + 14) = v24;
    *(v7 + 22) = 2112;
    v25 = sub_26F49D7E8();
    *(v7 + 24) = v25;
    *v33 = v25;
    _os_log_impl(&dword_26F39E000, v4, v5, "Failed to remove %{public}ld languages: %{public}s: %@", v7, 0x20u);
    sub_26F3CC31C(v33);
    MEMORY[0x274391F70](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x274391F70](v8, -1, -1);
    MEMORY[0x274391F70](v7, -1, -1);
  }

  else
  {
  }

  v0[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  sub_26F49FCD8();

  v26 = v0[1];

  return v26();
}

uint64_t sub_26F3FFF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalePair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3FFF88(uint64_t a1)
{
  v2 = type metadata accessor for LocalePair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F400008(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F3CF3AC;

  return sub_26F3FF084(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_26F40010C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalePair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F400170(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalePair(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26F3CEEAC;

  return sub_26F3FD2E0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_26F4002E0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8) - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26F3CF3AC;

  return sub_26F3FBE14(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_26F4003F4()
{
  result = qword_280F65650;
  if (!qword_280F65650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F65650);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_20Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26F40051C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_26F4005B8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_26F4A00A8();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x274390F80](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_26F4006DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a2 + 72);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v8 - 16);
      v12 = *(v8 - 4);
      v13 = *(v8 - 3);
      *&v18 = *(v8 - 5);
      *(&v18 + 1) = v12;
      v19 = v13;
      v20 = v11;
      v21 = v9;
      v22 = v10;

      result = v7(&v18);
      if (v4)
      {
      }

      if (result)
      {
        break;
      }

      v8 += 6;

      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    *a3 = v18;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
    *(a3 + 40) = v17;
  }

  else
  {
LABEL_6:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void *sub_26F4007E4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26F4A00A8())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x274390F80](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void LanguageModel.init(identifier:state:displayName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a4;
  v11 = sub_26F49DAB8();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = *a3;
  v21 = *(a3 + 8);
  v49 = a1;
  v50 = a2;
  v47 = 45;
  v48 = 0xE100000000000000;
  v44 = v20;
  v45 = 95;
  v46 = 0xE100000000000000;
  sub_26F3BDC0C();
  v22 = sub_26F49FFF8();
  v24 = v23;

  LOBYTE(v49) = v21;
  if (a5)
  {
    v25 = v43;
  }

  else
  {
    v26 = v13;
    v27 = v42;

    v43 = v22;
    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v28 = sub_26F49D9F8();
    v29 = sub_26F49D9F8();
    v30 = [v28 lt:0 displayNameForContext:v29 inTargetLocale:?];

    if (v30)
    {
      v25 = sub_26F49F8C8();
      a5 = v31;

      v32 = v27[1];
      v32(v16, v11);
      v32(v19, v11);
      v22 = v43;
    }

    else
    {
      v42 = v27[1];
      (v42)(v16, v11);
      v33 = v26;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v34 = sub_26F49D9F8();
      v35 = sub_26F49D9F8();
      v36 = [v34 lt:0 displaySubnameForContext:v35 inTargetLocale:?];

      if (v36)
      {
        v25 = sub_26F49F8C8();
        a5 = v37;

        v38 = v42;
        (v42)(v33, v11);
        v38(v19, v11);
        v22 = v43;
      }

      else
      {
        v39 = v42;
        (v42)(v26, v11);
        v39(v19, v11);

        v22 = v43;
        v25 = v43;
        a5 = v24;
      }
    }
  }

  v40 = v49;
  *a6 = v22;
  *(a6 + 8) = v24;
  *(a6 + 16) = v44;
  *(a6 + 24) = v40;
  *(a6 + 32) = v25;
  *(a6 + 40) = a5;
}

uint64_t sub_26F400C68(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = a1 == 0;
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x656C6C6174736E69;
    }

    if (v2)
    {
      v4 = 0xE900000000000064;
    }

    else
    {
      v4 = 0x800000026F4ADC00;
    }
  }

  else
  {
    MEMORY[0x2743907E0](0x64616F6C6E776F64, 0xEC00000028676E69);
    sub_26F49FD28();
    MEMORY[0x2743907E0](41, 0xE100000000000000);
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x2743907E0](v3, v4);
}

uint64_t LanguageModel.locale.getter()
{

  return sub_26F49D978();
}

BOOL Array<A>.installedLanguagesExist.getter(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 48;
  }

  while (v4 != 1 || v3 != 0);
  return v2 != 0;
}

uint64_t Array<A>.downloadable.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 24;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 48 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_17;
    }

    v7 = *(v5 + 32);
    v8 = v5[3];
    ++v1;
    v5 += 6;
    if (v7 != 1 || v8 != 0)
    {
      v11 = *(v5 - 5);
      v10 = *(v5 - 4);
      v13 = *(v5 - 1);
      v12 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v11;
      if ((result & 1) == 0)
      {
        result = sub_26F4032B0(0, *(v4 + 16) + 1, 1);
      }

      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_26F4032B0((v14 > 1), v15 + 1, 1);
      }

      *(v4 + 16) = v15 + 1;
      v16 = v4 + 48 * v15;
      *(v16 + 32) = v17;
      *(v16 + 40) = v10;
      *(v16 + 48) = v8;
      *(v16 + 56) = v7;
      *(v16 + 64) = v13;
      *(v16 + 72) = v12;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t Array<A>.installed.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 24;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 48 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_18;
    }

    v7 = v5[3];
    v8 = *(v5 + 32);
    ++v1;
    v5 += 6;
    if (v8 == 1 && v7 == 0)
    {
      v11 = *(v5 - 5);
      v10 = *(v5 - 4);
      v13 = *(v5 - 1);
      v12 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26F4032B0(0, *(v4 + 16) + 1, 1);
      }

      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_26F4032B0((v14 > 1), v15 + 1, 1);
      }

      *(v4 + 16) = v15 + 1;
      v16 = v4 + 48 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v10;
      *(v16 + 48) = 0;
      *(v16 + 56) = 1;
      *(v16 + 64) = v13;
      *(v16 + 72) = v12;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t LanguageModel.identifierForDownloads.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  MEMORY[0x2743907E0](*v0, *(v0 + 8));
  MEMORY[0x2743907E0](32, 0xE100000000000000);
  sub_26F400C68(v1, v2);
  return 0;
}

uint64_t sub_26F4010D4(uint64_t (*a1)(uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 72);
    do
    {
      v9 = v7;
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 16);
      v13 = *(v8 - 4);
      v14 = *(v8 - 3);
      v17[0] = *(v8 - 5);
      v17[1] = v13;
      v17[2] = v14;
      v18 = v12;
      v19 = v10;
      v20 = v11;

      v15 = (a1)(v17);

      LOBYTE(v5) = (v4 != 0) | v15;
      if ((v4 != 0) | v15 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 6;
    }

    while (v9);
  }

  return v5 & 1;
}

uint64_t sub_26F4011AC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x274390F80](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_26F4A00A8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t static LanguageState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t LanguageModel.replacing(state:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v21 = *(a1 + 8);
  v9 = *(v2 + 32);
  v19 = *(v2 + 40);
  v20 = v9;

  sub_26F49D978();
  v27 = sub_26F49D988();
  v28 = v10;
  v25 = 45;
  v26 = 0xE100000000000000;
  v23 = 95;
  v24 = 0xE100000000000000;
  sub_26F3BDC0C();
  v11 = sub_26F49FFF8();
  v13 = v12;
  (*(v6 + 8))(v8, v5);

  v27 = v11;
  v28 = v13;
  v25 = 45;
  v26 = 0xE100000000000000;
  v23 = 95;
  v24 = 0xE100000000000000;
  v14 = v19;

  v15 = sub_26F49FFF8();
  v17 = v16;

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v22;
  *(a2 + 24) = v21;
  *(a2 + 32) = v20;
  *(a2 + 40) = v14;
  return result;
}

uint64_t LanguageModel.init(locale:state:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v39 = sub_26F49DAB8();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v38 = *a2;
  LODWORD(v37) = *(a2 + 8);
  v40 = a1;
  v46 = sub_26F49D988();
  v47 = v13;
  v44 = 45;
  v45 = 0xE100000000000000;
  v42 = 95;
  v43 = 0xE100000000000000;
  sub_26F3BDC0C();
  v14 = sub_26F49FFF8();
  v16 = v15;

  v46 = v14;
  v47 = v16;
  v44 = 45;
  v45 = 0xE100000000000000;
  v42 = 95;
  v43 = 0xE100000000000000;
  v17 = sub_26F49FFF8();
  v19 = v18;

  LOBYTE(v46) = v37;

  v37 = v17;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v20 = sub_26F49D9F8();
  v21 = sub_26F49D9F8();
  v22 = [v20 lt:0 displayNameForContext:v21 inTargetLocale:?];

  if (v22)
  {
    v23 = sub_26F49F8C8();
    v25 = v24;

    v26 = *(v5 + 8);
    v27 = v39;
    v26(v9, v39);
  }

  else
  {
    v26 = *(v5 + 8);
    v27 = v39;
    v26(v9, v39);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v28 = sub_26F49D9F8();
    v29 = sub_26F49D9F8();
    v30 = [v28 lt:0 displaySubnameForContext:v29 inTargetLocale:?];

    if (!v30)
    {
      v26(v36, v27);
      v26(v12, v27);

      v32 = v37;
      v23 = v37;
      v25 = v19;
      goto LABEL_6;
    }

    v23 = sub_26F49F8C8();
    v25 = v31;

    v26(v36, v27);
  }

  v26(v12, v27);
  v32 = v37;
LABEL_6:
  v33 = v46;
  result = (v26)(v40, v27);
  v35 = v41;
  *v41 = v32;
  v35[1] = v19;
  v35[2] = v38;
  *(v35 + 24) = v33;
  v35[4] = v23;
  v35[5] = v25;
  return result;
}

uint64_t LanguageState.combine(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v5 == 0.0)
    {
      if (*(result + 8))
      {
        if (v3 == 0.0)
        {
          *a2 = 0;
          *(a2 + 8) = 1;
          return result;
        }

        goto LABEL_8;
      }

      v5 = *result;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (*(result + 8))
  {
    if (v3 == 0.0)
    {
LABEL_11:
      v4 = 0;
      v6 = v5 * 0.5 + 0.5;
      goto LABEL_12;
    }

LABEL_8:
    *a2 = 1;
    *(a2 + 8) = 1;
    return result;
  }

  v6 = (v3 + v5) * 0.5;
LABEL_12:
  *a2 = v6;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_26F4019A4(uint64_t a1)
{
  sub_26F49F9A8();
}

unint64_t sub_26F401AF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F404B00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F401B20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEB00000000657275;
    v9 = 0xD000000000000010;
    v10 = 0x800000026F4AC340;
    if (v2 != 1)
    {
      v9 = 0x546C6C6174736E69;
      v10 = 0xEE0074756F656D69;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x6C69614664616572;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000026F4AC380;
    v4 = 0xD00000000000001ALL;
    if (v2 == 5)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x800000026F4AC3A0;
    }

    v5 = 0xEE006572756C6961;
    v6 = 0x466C6C6174736E69;
    if (v2 != 3)
    {
      v6 = 0x6E61697261567369;
      v5 = 0xE900000000000074;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_26F401C38()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0x546C6C6174736E69;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6C69614664616572;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0x466C6C6174736E69;
    if (v1 != 3)
    {
      v3 = 0x6E61697261567369;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

TranslationUI::TranslationTaskHint_optional __swiftcall TranslationTaskHint.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 10)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 5)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 1)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_26F401DAC()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](qword_26F4A66B8[v1]);
  return sub_26F4A0568();
}

uint64_t sub_26F401E34(uint64_t a1)
{
  v2 = *v1;
  sub_26F4A0528();
  MEMORY[0x274391330](qword_26F4A66B8[v2]);
  return sub_26F4A0568();
}

uint64_t LocalePair.sourceLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49DAB8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LocalePair.targetLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocalePair(0) + 20);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LocalePair.init(sourceLocale:targetLocale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26F49DAB8();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for LocalePair(0) + 20);

  return v9(v7, a2, v6);
}

uint64_t LocalePair.identifier.getter()
{
  type metadata accessor for LocalePair(0);
  v0 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v1 = sub_26F49D9F8();
  v2 = sub_26F49D9F8();
  v3 = [v0 initWithSourceLocale:v1 targetLocale:v2];

  v4 = [v3 identifier];
  v5 = sub_26F49F8C8();

  return v5;
}

uint64_t LocalePair.description.getter()
{
  sub_26F4A0178();

  v0 = sub_26F49D988();
  MEMORY[0x2743907E0](v0);

  MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
  type metadata accessor for LocalePair(0);
  v1 = sub_26F49D988();
  MEMORY[0x2743907E0](v1);

  return 0x203A656372756F73;
}

uint64_t LanguageState.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0x656C6C6174736E69;
    }
  }

  else
  {
    MEMORY[0x2743907E0](0x64616F6C6E776F64, 0xEC00000028676E69);
    sub_26F49FD28();
    MEMORY[0x2743907E0](41, 0xE100000000000000);
    return 0;
  }
}

uint64_t sub_26F402298(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t LanguageModel.id.getter()
{
  v1 = *v0;

  return v1;
}

void LanguageModel.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t LanguageModel.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t LanguageModel.displayName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LanguageModel.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  MEMORY[0x2743907E0](v0[4], v0[5]);
  MEMORY[0x2743907E0](23328, 0xE200000000000000);
  MEMORY[0x2743907E0](v1, v2);
  MEMORY[0x2743907E0](2112093, 0xE300000000000000);
  sub_26F400C68(v3, v4);
  return 0;
}

uint64_t LanguageModel.hashValue.getter()
{
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}

double sub_26F4024EC@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_26F4024F8()
{
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}

uint64_t sub_26F40254C(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}

uint64_t sub_26F402744()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  MEMORY[0x2743907E0](v0[4], v0[5]);
  MEMORY[0x2743907E0](23328, 0xE200000000000000);
  MEMORY[0x2743907E0](v1, v2);
  MEMORY[0x2743907E0](2112093, 0xE300000000000000);
  sub_26F400C68(v3, v4);
  return 0;
}

uint64_t Array<A>.set.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_26F403380(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_26F403380((v8 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v9 = v12 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 6;
      --v1;
    }

    while (v1);
  }

  v10 = sub_26F4043EC(v2);

  return v10;
}

uint64_t Array<A>.available.getter(uint64_t a1)
{
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v3 = v2;
  v4 = sub_26F49F898();
  v5 = [v3 BOOLForKey_];

  v6 = [objc_opt_self() sharedConnection];
  if (!v6)
  {

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:

    return a1;
  }

  v7 = v6;
  v8 = [v6 isOnDeviceOnlyTranslationForced];

  if (((v8 | v5) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = Array<A>.installed.getter(a1);
  v10 = Array<A>.downloadable.getter(a1);
  sub_26F403F74(v10);
  return v9;
}

uint64_t Array<A>.downloading.getter(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v1 + 48 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      return v4;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 56);
    ++v2;
    v5 += 48;
    if ((v7 & 1) == 0)
    {
      v9 = *(v5 - 16);
      v8 = *(v5 - 8);
      v10 = *v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26F4032B0(0, *(v4 + 16) + 1, 1);
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_26F4032B0((v13 > 1), v14 + 1, 1);
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 48 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v8;
      *(v15 + 48) = v10;
      *(v15 + 56) = 0;
      *(v15 + 64) = v12;
      *(v15 + 72) = v11;
      v2 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t Array<A>.localeState(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26F49D988();
  sub_26F3BDC0C();
  v5 = sub_26F49FFF8();
  v7 = v6;

  v8 = (a2 + 56);
  v9 = *(a2 + 16) + 1;
  while (--v9)
  {
    v10 = *(v8 - 1);
    v11 = *v8;
    if (*(v8 - 3) != v5 || *(v8 - 2) != v7)
    {
      v8 += 48;
      if ((sub_26F4A0458() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  v10 = 0;
  v11 = 0;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 9) = v9 == 0;
  return result;
}

uint64_t Array<A>.defaultPair(userLanguages:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  MEMORY[0x28223BE20](v11);
  v79 = &v67 - v12;
  MEMORY[0x28223BE20](v13);
  v72 = &v67 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - v22;
  sub_26F49D978();
  sub_26F49D978();
  v24 = *(a1 + 16);
  v25 = (a1 + 56);
  v26 = v24 + 1;
  do
  {
    if (!--v26)
    {
      v40 = *(v5 + 32);
      v40(a2, v23, v4);
      v41 = type metadata accessor for LocalePair(0);
      return (v40)(&a2[*(v41 + 20)], v20, v4);
    }

    v27 = *(v25 - 1);
    v28 = *v25;
    v25 += 48;
  }

  while (v28 != 1 || v27 != 0);
  v68 = v23;
  v69 = v20;
  v70 = v7;
  v71 = a2;
  v76 = v17;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v86 = MEMORY[0x277D84F90];
  sub_26F40333C(0, v24, 0);
  v30 = v86;
  v80 = v5 + 32;
  v81 = v4;
  v31 = a1 + 40;
  do
  {

    sub_26F49D978();
    v86 = v30;
    v33 = *(v30 + 16);
    v32 = *(v30 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_26F40333C((v32 > 1), v33 + 1, 1);
      v30 = v86;
    }

    *(v30 + 16) = v33 + 1;
    v34 = v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v35 = *(v5 + 72);
    v36 = v34 + v35 * v33;
    v37 = *(v5 + 32);
    v38 = v81;
    result = v37(v36, v10, v81);
    v31 += 48;
    --v24;
  }

  while (v24);
  v67 = v37;
  v42 = *(v30 + 16);
  v77 = (v5 + 8);
  v74 = -v42;
  v75 = (v5 + 16);
  v43 = -1;
  while (1)
  {
    if (v74 + v43 == -1)
    {
      v53 = v72;
      v55 = v67;
      v54 = v68;
      v67(v72, v68, v38);
      v56 = v76;
      goto LABEL_22;
    }

    if (++v43 >= *(v30 + 16))
    {
      break;
    }

    v73 = *v75;
    v73(v79, v34, v38);
    v86 = sub_26F49D988();
    v87 = v46;
    v84 = 45;
    v85 = 0xE100000000000000;
    v82 = 95;
    v83 = 0xE100000000000000;
    sub_26F3BDC0C();
    v78 = sub_26F49FFF8();
    v48 = v47;

    v86 = sub_26F49D988();
    v87 = v49;
    v84 = 45;
    v85 = 0xE100000000000000;
    v82 = 95;
    v83 = 0xE100000000000000;
    v50 = sub_26F49FFF8();
    v52 = v51;

    if (v78 == v50 && v48 == v52)
    {

      v45 = *v77;
      v38 = v81;
      (*v77)(v79, v81);
LABEL_21:
      v54 = v68;
      v45(v68, v38);
      v53 = v72;
      v56 = v76;
      v73(v72, v76, v38);
      v55 = v67;
LABEL_22:
      v55(v54, v53, v38);
      v57 = objc_opt_self();
      v58 = sub_26F49D9F8();
      v59 = sub_26F49D9F8();
      v60 = sub_26F49FAD8();

      v61 = [v57 lt:v58 defaultTargetForSource:v59 systemLocale:v60 availableLocales:0 targetMap:?];

      v62 = v70;
      sub_26F49DA18();

      v63 = *v77;
      (*v77)(v56, v38);
      v64 = v69;
      v63(v69, v38);
      v55(v64, v62, v38);
      v65 = v71;
      v55(v71, v54, v38);
      v66 = type metadata accessor for LocalePair(0);
      return (v55)(&v65[*(v66 + 20)], v64, v38);
    }

    v34 += v35;
    v44 = sub_26F4A0458();

    v45 = *v77;
    v38 = v81;
    result = (*v77)(v79, v81);
    if (v44)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

char *sub_26F4032B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403530(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for LocalePair(uint64_t a1)
{
  result = qword_280F66B38;
  if (!qword_280F66B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_26F40331C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26F40333C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0168, &qword_26F4A66A0, MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

char *sub_26F403380(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F40377C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26F4033A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0158, &qword_26F4A6688, type metadata accessor for LanguageOption);
  *v3 = result;
  return result;
}

void *sub_26F4033E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F403404(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403A78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F403424(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403B88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26F403444(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0118, &qword_26F4ABEF0, type metadata accessor for TextModel);
  *v3 = result;
  return result;
}

void *sub_26F403488(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0130, &qword_26F4A6660, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_26F4034CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26F4034EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0120, &qword_26F4A6650, type metadata accessor for VisualTranslationModel);
  *v3 = result;
  return result;
}

char *sub_26F403530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0100, &unk_26F4A6690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26F403650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0170, &unk_26F4A66A8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_26F40377C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0160, &unk_26F4A7660);
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

void *sub_26F403888(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0148, &qword_26F4A6678);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680) - 8);
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

char *sub_26F403A78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0140, &qword_26F4A6670);
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

char *sub_26F403B88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0138, &qword_26F4A6668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_26F403C8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0128, &qword_26F4A6658);
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

void *sub_26F403D98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26F403F74(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26F446268(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s13TranslationUI13LanguageModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_26F4A0458(), result = 0, (v7 & 1) != 0))
  {
    if (v4)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5;
    }

    if (!v2)
    {
      v9 = v10;
    }

    if (v3)
    {
      return v9;
    }

    else
    {
      return v5 ^ 1;
    }
  }

  return result;
}

uint64_t sub_26F4040F0(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26F4A00A8())
  {
    v4 = sub_26F404B4C();
    v5 = sub_26F404B98(&qword_2806DEF70, sub_26F404B4C, MEMORY[0x277D85378]);
    result = MEMORY[0x274390B50](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x274390F80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_26F484950(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_26F4A00A8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26F404250(uint64_t a1)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_26F404B98(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  result = MEMORY[0x274390B50](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_26F484B68(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_26F4043EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x274390B50](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26F484E48(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26F404484(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26F3E1C44();
  result = MEMORY[0x274390B50](v2, &type metadata for LanguageModel, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v9[0] = *v5;
      v9[1] = v6;
      v9[2] = v5[2];
      sub_26F3E2CA4(v9, v7);
      sub_26F484F98(v7, v9);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26F40452C(uint64_t a1)
{
  v2 = sub_26F49D968();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_26F404B98(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x274390B50](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_26F485190(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_26F4046CC()
{
  result = qword_2806E0108;
  if (!qword_2806E0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0108);
  }

  return result;
}

unint64_t sub_26F40472C()
{
  result = qword_280F65DF8;
  if (!qword_280F65DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranslationTaskHint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslationTaskHint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26F4048F8(uint64_t a1)
{
  result = sub_26F49DAB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LanguageState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26F404994(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F4049B0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26F4049F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26F404A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F404AAC()
{
  result = qword_2806E0110;
  if (!qword_2806E0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0110);
  }

  return result;
}

unint64_t sub_26F404B00(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F4A02A8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26F404B4C()
{
  result = qword_2806DEF68;
  if (!qword_2806DEF68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DEF68);
  }

  return result;
}

uint64_t sub_26F404B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LanguagesProgressView.init(progress:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

__n128 LanguagesProgressView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0178, &qword_26F4A66D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v6 = *v1;
  v8 = *(v1 + 1);
  v7 = *(v1 + 2);
  *v5 = sub_26F49E7F8();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0180, &qword_26F4A66D8);
  sub_26F404D58(v8, v7, &v5[*(v9 + 44)], v6);
  sub_26F49F5A8();
  sub_26F49E3D8();
  sub_26F3A5374(v5, a1);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0188, &qword_26F4A66E0) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_26F404D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_26F49DAB8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_26F49F888();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01A0, &qword_26F4A6778);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-v14];
  *v15 = sub_26F49E6D8();
  *(v15 + 1) = 0x4020000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01A8, &qword_26F4A6780);
  sub_26F405024(&v15[*(v16 + 44)], a4);
  sub_26F49F878();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v19 = sub_26F49F928();
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a1;
  *(v22 + 32) = a2;
  sub_26F3A5420(v15, v12);
  sub_26F3A5420(v12, a3);
  v23 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01B0, &qword_26F4A6788) + 48));
  *v23 = v19;
  v23[1] = v21;
  v23[2] = sub_26F40568C;
  v23[3] = v22;

  sub_26F3A5490(v15);

  return sub_26F3A5490(v12);
}

uint64_t sub_26F405024@<X0>(char *a1@<X8>, double a2@<D0>)
{
  v43 = a1;
  v3 = sub_26F49E758();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_26F49EB18();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1C8, &qword_26F4A6790);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01B8, &qword_26F4A6798);
  v40 = *(v42 - 8);
  v12 = v40;
  MEMORY[0x28223BE20](v42);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  sub_26F49E058();
  sub_26F49EB08();
  sub_26F3B18CC(&qword_2806DF1E8, &qword_2806DF1C8, &qword_26F4A6790, MEMORY[0x277CDD7F8]);
  sub_26F4056B4(v17);
  sub_26F49EF18();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_26F49E748();
  sub_26F49E738();
  v45 = a2 * 100.0;
  sub_26F49E708();
  sub_26F49E738();
  sub_26F49E778();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_26F49EEC8();
  v22 = v21;
  LOBYTE(v8) = v23;
  v44 = sub_26F49EA28();
  v24 = sub_26F49EE78();
  v26 = v25;
  LOBYTE(v5) = v27;
  v29 = v28;
  sub_26F3B8D40(v20, v22, v8 & 1);

  v30 = *(v12 + 16);
  v31 = v41;
  v32 = v16;
  v33 = v16;
  v34 = v42;
  v30(v41, v33, v42);
  v35 = v43;
  v30(v43, v31, v34);
  v36 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01C8, &unk_26F4A67A0) + 48)];
  *v36 = v24;
  *(v36 + 1) = v26;
  LOBYTE(v5) = v5 & 1;
  v36[16] = v5;
  *(v36 + 3) = v29;
  sub_26F3B0EE4(v24, v26, v5);
  v37 = *(v40 + 8);

  v37(v32, v34);
  sub_26F3B8D40(v24, v26, v5);

  return (v37)(v31, v34);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26F40553C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26F405584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F4055D4()
{
  result = qword_2806E0190;
  if (!qword_2806E0190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0188, &qword_26F4A66E0);
    sub_26F3B18CC(&qword_2806E0198, &qword_2806E0178, &qword_26F4A66D0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0190);
  }

  return result;
}

unint64_t sub_26F4056B4(__n128 a1)
{
  result = qword_2806E01C0;
  if (!qword_2806E01C0)
  {
    sub_26F49EB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E01C0);
  }

  return result;
}

uint64_t sub_26F40570C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26F40E5D4(a3, v25 - v10);
  v12 = sub_26F49FC08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F3B6B4C(v11, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26F49FB68();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26F49F958() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26F4059FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26F40E5D4(a3, v25 - v10);
  v12 = sub_26F49FC08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F3B6B4C(v11, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26F49FB68();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26F49F958() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0278, &qword_26F4A6A98);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0278, &qword_26F4A6A98);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26F405D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26F40E5D4(a3, v25 - v10);
  v12 = sub_26F49FC08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F3B6B4C(v11, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26F49FB68();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26F49F958() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0238, &qword_26F4A6A08);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0238, &qword_26F4A6A08);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26F406004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26F40E5D4(a3, v25 - v10);
  v12 = sub_26F49FC08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F3B6B4C(v11, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26F49FB68();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26F49F958() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0240, &qword_26F4A6A28);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0240, &qword_26F4A6A28);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t LanguagesService.__allocating_init(task:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  LanguagesService.init(task:)(a1);
  return v2;
}

uint64_t LanguagesService.models.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t LanguagesService.airplaneModeEnabled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

Swift::Void __swiftcall LanguagesService.download(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v8 = sub_26F49DCA8();
  __swift_project_value_buffer(v8, qword_280F67EB8);

  v9 = sub_26F49DC88();
  v10 = sub_26F49FDF8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v13 = MEMORY[0x274390900](a1._rawValue, &type metadata for LanguageModel);
    v23 = v2;
    v15 = sub_26F3B38D0(v13, v14, &v24);
    v2 = v23;

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26F39E000, v9, v10, "Requested download of: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x274391F70](v12, -1, -1);
    MEMORY[0x274391F70](v11, -1, -1);
  }

  v16 = *(a1._rawValue + 2);
  if (v16)
  {
    v24 = MEMORY[0x277D84F90];
    sub_26F40333C(0, v16, 0);
    v17 = v24;
    v18 = a1._rawValue + 40;
    do
    {

      sub_26F49D978();
      v24 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26F40333C((v19 > 1), v20 + 1, 1);
        v17 = v24;
      }

      *(v17 + 16) = v20 + 1;
      (*(v5 + 32))(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v7, v4);
      v18 += 48;
      --v16;
    }

    while (v16);
  }

  v21 = objc_opt_self();
  v22 = sub_26F49FAD8();

  [v21 addLanguages:v22 useCellular:*(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_useCellular)];
}

Swift::Void __swiftcall LanguagesService.deleteAll()()
{
  v0 = sub_26F49DAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_280F67EB8);
  v5 = sub_26F49DC88();
  v6 = sub_26F49FDF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26F39E000, v5, v6, "Requested delete of all languages.", v7, 2u);
    MEMORY[0x274391F70](v7, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v8 = v17;
  v9 = *(v17 + 16);
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_26F40333C(0, v9, 0);
    v10 = v17;
    v11 = v8 + 40;
    do
    {

      sub_26F49D978();
      v17 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26F40333C((v12 > 1), v13 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v13 + 1;
      (*(v1 + 32))(v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v3, v0);
      v11 += 48;
      --v9;
    }

    while (v9);
  }

  v14 = objc_opt_self();
  v15 = sub_26F49FAD8();

  [v14 removeLanguages_];
}

uint64_t sub_26F406A18@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v4;
  return result;
}

uint64_t sub_26F406A98(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t LanguagesService.models.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*LanguagesService.models.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F40EB7C;
}

uint64_t sub_26F406C44(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D8, &qword_26F4A6848);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t LanguagesService.$models.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D8, &qword_26F4A6848);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LanguagesService.$models.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D8, &qword_26F4A6848);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__models;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F40EB80;
}

uint64_t LanguagesService.localeModalities.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t sub_26F40715C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v4;
  return result;
}

uint64_t sub_26F4071DC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_26F49DDB8();
}

uint64_t LanguagesService.localeModalities.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*LanguagesService.localeModalities.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F407368;
}

uint64_t sub_26F407388(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E8, &qword_26F4A68A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t LanguagesService.$localeModalities.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E8, &qword_26F4A68A0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LanguagesService.$localeModalities.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E8, &qword_26F4A68A0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__localeModalities;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F4077B4;
}

void *LanguagesService.asrUnsupportedModels.getter()
{
  v31 = sub_26F49DAB8();
  v0 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v32 = v34;
  if (!v34)
  {
    return MEMORY[0x277D84FA0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  result = v34;
  v3 = v34[2];
  if (v3)
  {
    v4 = 0;
    v28 = (v0 + 8);
    v5 = v34 + 9;
    v6 = MEMORY[0x277D84F90];
    v25 = v34 + 9;
    v26 = v3;
    v29 = v34;
    do
    {
      v27 = v6;
      v7 = v3 - v4;
      v8 = &v5[6 * v4];
      while (1)
      {
        if (v4 >= result[2])
        {
          __break(1u);
          return result;
        }

        v33 = v7;
        v9 = *(v8 - 5);
        v10 = *(v8 - 4);
        v11 = *(v8 - 3);
        v12 = *(v8 - 16);
        v14 = *(v8 - 1);
        v13 = *v8;
        swift_bridgeObjectRetain_n();

        v15 = v30;
        sub_26F49D978();
        v16 = sub_26F49D9F8();
        (*v28)(v15, v31);
        LOBYTE(v15) = [v32 locale:v16 supportsModality:1];

        if ((v15 & 1) == 0)
        {
          break;
        }

        v8 += 6;
        ++v4;
        v7 = v33 - 1;
        result = v29;
        if (v33 == 1)
        {
          v6 = v27;
          goto LABEL_17;
        }
      }

      v24 = v12;
      v6 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26F4032B0(0, *(v6 + 16) + 1, 1);
        v6 = v34;
      }

      v18 = v24;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26F4032B0((v19 > 1), v20 + 1, 1);
        v18 = v24;
        v6 = v34;
      }

      ++v4;
      *(v6 + 16) = v20 + 1;
      v21 = v6 + 48 * v20;
      *(v21 + 32) = v9;
      *(v21 + 40) = v10;
      *(v21 + 48) = v11;
      *(v21 + 56) = v18;
      *(v21 + 64) = v14;
      *(v21 + 72) = v13;
      result = v29;
      v5 = v25;
      v3 = v26;
    }

    while (v33 != 1);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_17:

  v22 = sub_26F404484(v6);

  return v22;
}