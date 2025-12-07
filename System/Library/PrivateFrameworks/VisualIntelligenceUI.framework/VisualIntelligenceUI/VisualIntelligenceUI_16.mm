void sub_21E0DCB9C(void **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = *(v5 + v4);
  *(v5 + v4) = **a1;

  v7 = v3[1];
  if (a2)
  {

    sub_21E0DC4BC(v6);
  }

  else
  {
    sub_21E0DC4BC(v6);
  }

  *v3 = v7;
  swift_getKeyPath();
  sub_21E13D3D4();

  free(v3);
}

void sub_21E0DCC80()
{
  v1 = v0;
  v42 = sub_21E13D344();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v47 = sub_21E13EEE4();
  v7 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v52 = v1;
  v10 = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  v40 = v9;
  v39 = v10;
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v12 = *(v1 + v11);
  swift_getKeyPath();
  v51 = v12;
  sub_21E0ECD50(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);

  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v14 = *(v12 + v13);

  v46 = v14;
  v15 = *(v14 + 16);
  v43 = v1;
  v38 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics[0];
  swift_beginAccess();
  v44 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = (v7 + 48);
    v35 = (v7 + 32);
    v34 = (v2 + 16);
    v33 = (v2 + 8);
    v32 = (v7 + 8);
    v18 = (v46 + 40);
    v37 = v6;
    v36 = (v7 + 48);
    while (v16 < *(v46 + 16))
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      swift_getKeyPath();
      v50 = v19;
      sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
      v48 = v20;

      sub_21E13D3C4();

      v21 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
      swift_beginAccess();
      sub_21DF236C0(v19 + v21, v6, &qword_27CEA6D48, &unk_21E148070);
      v22 = v47;
      if ((*v17)(v6, 1, v47) == 1)
      {

        sub_21DF23614(v6, &qword_27CEA6D48, &unk_21E148070);
      }

      else
      {
        (*v35)(v45, v6, v22);
        swift_getKeyPath();
        v23 = v43;
        v50 = v43;
        sub_21E13D3C4();

        v24 = *(v23 + v38);
        swift_getKeyPath();
        v50 = v24;
        sub_21E0ECD50(&qword_280F6AEA8, type metadata accessor for SessionAnalytics, &protocol conformance descriptor for SessionAnalytics);

        sub_21E13D3C4();

        v49 = 0;
        swift_getKeyPath();
        v50 = v24;

        sub_21E13D3C4();

        v25 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
        swift_beginAccess();
        v26 = v41;
        v27 = v42;
        (*v34)(v41, v24 + v25, v42);
        v28 = v45;
        sub_21E007D9C(v45, v16, v19, &v49, v26);

        v29 = v26;
        v6 = v37;
        v30 = v27;
        v17 = v36;
        (*v33)(v29, v30);
        (*v32)(v28, v47);
      }

      ++v16;
      v18 += 2;
      if (v44 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

uint64_t NewSaliencyModel.heroPillChanged(topAction:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13F1B4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  if (!a1)
  {
LABEL_4:
    swift_getKeyPath();
    v20 = v1;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
    sub_21E13D3C4();

    if (!*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
    {
      sub_21E13EC34();
      v11 = sub_21E13F1A4();
      v12 = sub_21E142554();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_21DF05000, v11, v12, "PillAnalytics: Hero pill not visible", v13, 2u);
        MEMORY[0x223D540B0](v13, -1, -1);
      }

      (*(v19 + 8))(v6, v4);
      swift_getKeyPath();
      v20 = v2;
      sub_21E13D3C4();

      swift_beginAccess();

      sub_21E0FC3C0();
    }

    return result;
  }

  v18 = v4;
  swift_getKeyPath();
  v20 = v1;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);

  sub_21E13D3C4();

  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {

    v4 = v18;
    goto LABEL_4;
  }

  sub_21E13EC34();
  v14 = sub_21E13F1A4();
  v15 = sub_21E142554();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21DF05000, v14, v15, "PillAnalytics: Hero pill visible", v16, 2u);
    MEMORY[0x223D540B0](v16, -1, -1);
  }

  (*(v19 + 8))(v9, v18);
  swift_getKeyPath();
  v20 = v2;
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E0FC630(a1);
}

Swift::Void __swiftcall NewSaliencyModel.barItemsDisappeared()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v32 = sub_21E13EEE4();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v35 = v0;
  v25 = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  v26 = v7;
  sub_21E13D3C4();

  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
  swift_beginAccess();
  v9 = *(v0 + v8);
  swift_getKeyPath();
  v34 = v9;
  sub_21E0ECD50(&qword_280F6BEE0, type metadata accessor for NewBarModel, &protocol conformance descriptor for NewBarModel);

  sub_21E13D3C4();

  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
  swift_beginAccess();
  v11 = *(v9 + v10);

  v12 = *(v11 + 16);
  v28 = v1;
  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics[0];
  swift_beginAccess();
  v31 = v12;
  if (v12)
  {
    v13 = 0;
    v30 = (v5 + 48);
    v22 = (v5 + 32);
    v21 = (v5 + 8);
    v14 = (v11 + 40);
    v23 = v11;
    v29 = v4;
    while (v13 < *(v11 + 16))
    {
      v15 = *v14;
      swift_getKeyPath();
      v33 = v15;
      sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);

      sub_21E13D3C4();

      v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
      swift_beginAccess();
      sub_21DF236C0(v15 + v16, v4, &qword_27CEA6D48, &unk_21E148070);
      if ((*v30)(v4, 1, v32) == 1)
      {

        sub_21DF23614(v4, &qword_27CEA6D48, &unk_21E148070);
      }

      else
      {
        v17 = v32;
        v18 = v27;
        (*v22)(v27, v29, v32);
        swift_getKeyPath();
        v33 = v28;
        sub_21E13D3C4();

        LOBYTE(v33) = 1;

        sub_21E0FB7F4(v18, v13, &v33);

        v19 = v18;
        v20 = v17;
        v4 = v29;
        v11 = v23;
        (*v21)(v19, v20);
      }

      ++v13;
      v14 += 2;
      if (v31 == v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

void sub_21E0DDC20()
{
  v1 = v0;
  v2 = sub_21E13D834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v0;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  LODWORD(v6) = *(v1 + v6);
  swift_getKeyPath();
  v7 = (v3 + 16);
  v8 = (v3 + 8);
  if (v6 != 1)
  {
    v18 = v1;
    sub_21E13D3C4();

    v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
    swift_beginAccess();
    (*v7)(v5, v1 + v10, v2);
    LOBYTE(v10) = sub_21E13D7F4();
    (*v8)(v5, v2);
    if ((v10 & 1) == 0)
    {
      return;
    }

    swift_getKeyPath();
    v17 = v1;
    sub_21E13D3C4();

    swift_beginAccess();
    swift_getKeyPath();
    v16[4] = v1;

    sub_21E13D3C4();

    v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v12 = *(v1 + v11);
    swift_getKeyPath();
    v16[1] = v12;
    sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__preShutterActions;
    swift_beginAccess();
    v14 = *(v12 + v13);

    if (v14 >> 62)
    {
      if (sub_21E1427B4())
      {
        goto LABEL_7;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D530F0](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v15 = *(v14 + 32);
      }

      goto LABEL_13;
    }

    v15 = 0;
LABEL_13:
    sub_21E0FC630(v15);

    sub_21E0DCC80();
    return;
  }

  v18 = v1;
  sub_21E13D3C4();

  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  (*v7)(v5, v1 + v9, v2);
  LOBYTE(v9) = sub_21E13D7F4();
  (*v8)(v5, v2);
  if (v9)
  {
    swift_getKeyPath();
    v17 = v1;
    sub_21E13D3C4();

    swift_beginAccess();

    sub_21E0FC3C0();

    NewSaliencyModel.barItemsDisappeared()();
  }
}

uint64_t (*sub_21E0DE0EC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21E0DE150;
}

uint64_t sub_21E0DE168(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_21E0DE1E8(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_21E0DDC20();
}

uint64_t (*NewSaliencyModel.isAskingMontara.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0DE0EC(v4);
  return sub_21E0DE384;
}

uint64_t sub_21E0DE3A4@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_21E0DE49C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t (*NewSaliencyModel.analytics.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E0DE650;
}

void BCSAction.logDescription.getter()
{
  v1 = v0;
  v2 = sub_21E13D264();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v87 - v7;
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_21E142884();

  v87 = 0xD000000000000010;
  v88 = 0x800000021E15F020;
  [v0 payloadDataType];
  v9 = sub_21E1425A4();
  MEMORY[0x223D52A60](v9);

  v10 = v87;
  v11 = v88;
  v12 = sub_21E06AF54(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_21E06AF54((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[16 * v14];
  *(v15 + 4) = v10;
  *(v15 + 5) = v11;
  v16 = [v0 dataTypeDisplayString];
  if (v16)
  {
    v17 = v16;
    v18 = sub_21E142124();
    v20 = v19;

    v87 = 0;
    v88 = 0xE000000000000000;
    sub_21E142884();

    v87 = 0xD000000000000017;
    v88 = 0x800000021E15F080;
    MEMORY[0x223D52A60](v18, v20);

    MEMORY[0x223D52A60](34, 0xE100000000000000);
    v21 = v87;
    v22 = v88;
    v24 = *(v12 + 2);
    v23 = *(v12 + 3);
    if (v24 >= v23 >> 1)
    {
      v12 = sub_21E06AF54((v23 > 1), v24 + 1, 1, v12);
    }

    *(v12 + 2) = v24 + 1;
    v25 = &v12[16 * v24];
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
  }

  v87 = 0x3D7373616C63;
  v88 = 0xE600000000000000;
  swift_getObjectType();
  v26 = sub_21E142CD4();
  MEMORY[0x223D52A60](v26);

  v27 = v87;
  v28 = v88;
  v30 = *(v12 + 2);
  v29 = *(v12 + 3);
  if (v30 >= v29 >> 1)
  {
    v12 = sub_21E06AF54((v29 > 1), v30 + 1, 1, v12);
  }

  *(v12 + 2) = v30 + 1;
  v31 = &v12[16 * v30];
  *(v31 + 4) = v27;
  *(v31 + 5) = v28;
  v32 = [v1 urlThatCanBeOpened];
  if (v32)
  {
    v33 = v32;
    sub_21E13D214();

    (*(v3 + 32))(v8, v5, v2);
    v87 = 1030517365;
    v88 = 0xE400000000000000;
    sub_21E0ECD50(&qword_27CEA6BB8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v34 = sub_21E142AB4();
    MEMORY[0x223D52A60](v34);

    v35 = v87;
    v36 = v88;
    v38 = *(v12 + 2);
    v37 = *(v12 + 3);
    if (v38 >= v37 >> 1)
    {
      v12 = sub_21E06AF54((v37 > 1), v38 + 1, 1, v12);
    }

    (*(v3 + 8))(v8, v2);
    *(v12 + 2) = v38 + 1;
    v39 = &v12[16 * v38];
    *(v39 + 4) = v35;
    *(v39 + 5) = v36;
  }

  v40 = [v1 defaultActionTargetApplicationBundleIdentifier];
  if (v40)
  {
    v41 = v40;
    v42 = sub_21E142124();
    v44 = v43;

    v87 = 0;
    v88 = 0xE000000000000000;
    sub_21E142884();

    v87 = 0xD000000000000014;
    v88 = 0x800000021E15F060;
    MEMORY[0x223D52A60](v42, v44);

    v45 = v87;
    v46 = v88;
    v48 = *(v12 + 2);
    v47 = *(v12 + 3);
    if (v48 >= v47 >> 1)
    {
      v12 = sub_21E06AF54((v47 > 1), v48 + 1, 1, v12);
    }

    *(v12 + 2) = v48 + 1;
    v49 = &v12[16 * v48];
    *(v49 + 4) = v45;
    *(v49 + 5) = v46;
  }

  v50 = [v1 actionPickerItems];
  if (!v50)
  {
    goto LABEL_45;
  }

  v51 = v50;
  sub_21DF3ED18(0, &qword_27CEAD5B0, 0x277CF0AF8);
  v52 = sub_21E1422D4();

  v53 = v52 >> 62 ? sub_21E1427B4() : *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v53 < 1)
  {
    goto LABEL_45;
  }

  v54 = [v1 actionPickerItems];
  if (v54)
  {
    v55 = v54;
    v56 = sub_21E1422D4();

    if (!(v56 >> 62))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_23:
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        goto LABEL_24;
      }

LABEL_42:

      v87 = 0;
      v88 = 0xE000000000000000;
      sub_21E142884();

      v87 = 0xD000000000000013;
      v88 = 0x800000021E15F040;
      v76 = objc_opt_self();
      v77 = sub_21E1422C4();

      v78 = [v76 localizedStringByJoiningStrings_];

      v79 = sub_21E142124();
      v81 = v80;

      MEMORY[0x223D52A60](v79, v81);

      MEMORY[0x223D52A60](93, 0xE100000000000000);
      v82 = v87;
      v83 = v88;
      v85 = *(v12 + 2);
      v84 = *(v12 + 3);
      if (v85 >= v84 >> 1)
      {
        v12 = sub_21E06AF54((v84 > 1), v85 + 1, 1, v12);
      }

      *(v12 + 2) = v85 + 1;
      v86 = &v12[16 * v85];
      *(v86 + 4) = v82;
      *(v86 + 5) = v83;
LABEL_45:
      v87 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD588, &qword_21E156E08);
      sub_21E0EA5A8();
      sub_21E142044();

      return;
    }
  }

  v57 = sub_21E1427B4();
  if (!v57)
  {
    goto LABEL_42;
  }

LABEL_24:
  if (v57 >= 1)
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v58 = 0;
      v59 = MEMORY[0x277D84F90];
      do
      {
        MEMORY[0x223D530F0](v58, v56);
        v87 = 34;
        v88 = 0xE100000000000000;
        v60 = sub_21E1425E4();
        MEMORY[0x223D52A60](v60);

        MEMORY[0x223D52A60](34, 0xE100000000000000);
        v61 = v87;
        v62 = v88;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_21E06AF54(0, *(v59 + 2) + 1, 1, v59);
        }

        v64 = *(v59 + 2);
        v63 = *(v59 + 3);
        if (v64 >= v63 >> 1)
        {
          v59 = sub_21E06AF54((v63 > 1), v64 + 1, 1, v59);
        }

        ++v58;
        swift_unknownObjectRelease();
        *(v59 + 2) = v64 + 1;
        v65 = &v59[16 * v64];
        *(v65 + 4) = v61;
        *(v65 + 5) = v62;
      }

      while (v57 != v58);
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
      v67 = 32;
      do
      {
        v68 = *(v56 + v67);
        v87 = 34;
        v88 = 0xE100000000000000;
        v69 = v68;
        v70 = sub_21E1425E4();
        MEMORY[0x223D52A60](v70);

        MEMORY[0x223D52A60](34, 0xE100000000000000);
        v71 = v87;
        v72 = v88;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_21E06AF54(0, *(v66 + 2) + 1, 1, v66);
        }

        v74 = *(v66 + 2);
        v73 = *(v66 + 3);
        if (v74 >= v73 >> 1)
        {
          v66 = sub_21E06AF54((v73 > 1), v74 + 1, 1, v66);
        }

        *(v66 + 2) = v74 + 1;
        v75 = &v66[16 * v74];
        *(v75 + 4) = v71;
        *(v75 + 5) = v72;
        v67 += 8;
        --v57;
      }

      while (v57);
    }

    goto LABEL_42;
  }

  __break(1u);
}

BOOL sub_21E0DEF20(void *a1)
{
  v2 = sub_21E1420F4();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_21E142754();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  sub_21DF23614(v7, &unk_27CEAC970, &qword_21E154AC8);
  return *(&v6 + 1) != 0;
}

unint64_t sub_21E0DEFE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C60, &unk_21E1576D0);
    v2 = sub_21E142A14();
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_21DF27A70(&v22, v24);
        sub_21DF27A70(v24, v25);
        sub_21DF27A70(v25, &v23);
        result = sub_21E0E0F20(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_21DF27A70(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_21DF27A70(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21E0DF228(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C10, &unk_21E1576E0);
    v2 = sub_21E142A14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21E023F60(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_21DF27A70(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_21DF27A70(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_21DF27A70(v31, v32);
    result = sub_21E142804();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_21DF27A70(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_21E0DF4F0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    handleBarcodeError(_:)(a1);
  }
}

void sub_21E0DF538(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t NewSaliencyModel.setTranslateAction(_:)()
{

  return sub_21E0CCB90(v0);
}

Swift::Void __swiftcall NewSaliencyModel.toggleTranslateActionSelection()()
{
  v1 = sub_21E13F1B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = v0;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v5 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__translateAction);
  if (v5)
  {
    swift_getKeyPath();
    v11 = v5;
    sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);

    sub_21E13D3C4();

    v11 = v5;
    swift_getKeyPath();
    sub_21E13D3E4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
    swift_beginAccess();
    *(v5 + v6) = (*(v5 + v6) & 1) == 0;
    v10 = v5;
    swift_getKeyPath();
    sub_21E13D3D4();
  }

  else
  {
    sub_21E13EBF4();
    v7 = sub_21E13F1A4();
    v8 = sub_21E142564();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21DF05000, v7, v8, "Trying to toggle translateAction that doesn't exist.", v9, 2u);
      MEMORY[0x223D540B0](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

Swift::Void __swiftcall NewSaliencyModel.dismissVisibleWaypoints()()
{
  swift_getKeyPath();
  v8 = v0;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();
  v2 = *(v8 + v1);
  if (v2 >> 62)
  {
    v3 = sub_21E1427B4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223D530F0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      if (*(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) != 2)
      {
        KeyPath = swift_getKeyPath();
        v7[0] = v7;
        MEMORY[0x28223BE20](KeyPath);
        v7[2] = v5;
        sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
        sub_21E13D3B4();
      }
    }
  }
}

uint64_t NewSaliencyModel.deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel_id;
  v2 = sub_21E13D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  v4 = sub_21E13D834();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportData, &qword_27CEADA80, &qword_21E148AB0);

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelection, &qword_27CEACB50, &qword_21E14FA80);
  swift_unknownObjectRelease();

  MEMORY[0x223D541D0](v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel_viewCoordinator);
  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration;
  v6 = sub_21E13E3D4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v8 = sub_21E13D404();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t NewSaliencyModel.__deallocating_deinit()
{
  NewSaliencyModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21E0DFE00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel_id;
  v5 = sub_21E13D344();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t BCSAction.willPunchOutOfApp.getter()
{
  v1 = [v0 payloadDataType];
  if (v1 == 1)
  {
    v9 = [v0 defaultActionTargetApplicationBundleIdentifier];
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    v11 = sub_21E142124();
    v13 = v12;

    v14 = v11 == 0xD000000000000014 && 0x800000021E15F0A0 == v13;
    if (v14 || (sub_21E142B14() & 1) != 0 || (v11 == 0xD000000000000016 ? (v15 = 0x800000021E15C490 == v13) : (v15 = 0), v15))
    {
LABEL_22:

      return 1;
    }

    v16 = sub_21E142B14();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1 != 3)
  {
    if (v1 == 6)
    {
      result = [v0 defaultActionTargetApplicationBundleIdentifier];
      if (!result)
      {
        return result;
      }

      v3 = result;
      v4 = sub_21E142124();
      v6 = v5;

      if (v4 != 0x6C7070612E6D6F63 || v6 != 0xEE007370614D2E65)
      {
        v8 = sub_21E142B14();

        return v8 & 1;
      }

      goto LABEL_22;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21E0E001C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6AEA8, type metadata accessor for SessionAnalytics, &protocol conformance descriptor for SessionAnalytics);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  v5 = sub_21E13D834();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21E0E0114(uint64_t a1)
{
  v2 = sub_21E13D834();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_21E0F4DF4(v5);
}

uint64_t sub_21E0E01E0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_21E0E0250(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_21E1427B4();
    if (v8 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_28;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v10 = a1;
  }

  if (v7)
  {
    v11 = v10;
  }

  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v12 = a2;
  }

  if (a2 >> 62)
  {
    v13 = v12;
  }

  if (v11 == v13)
  {
LABEL_28:
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    sub_21E1423C4();
    v24 = a2 & 0xC000000000000001;
    v25 = a1 & 0xC000000000000001;
    v14 = 4;
    v23 = v8;
    while (1)
    {
      v15 = v14 - 4;
      v16 = v14 - 3;
      if (__OFADD__(v14 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v8 = sub_21E1427B4();
        goto LABEL_3;
      }

      if (v25)
      {
        v17 = MEMORY[0x223D530F0](v14 - 4, a1);
        if (v24)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_30;
        }

        v17 = *(a1 + 8 * v14);

        if (v24)
        {
LABEL_20:
          v18 = MEMORY[0x223D530F0](v14 - 4, a2);
          v19 = v18;
          goto LABEL_25;
        }
      }

      if (v15 >= *(v21 + 16))
      {
        goto LABEL_31;
      }

      v19 = *(a2 + 8 * v14);

LABEL_25:
      MEMORY[0x28223BE20](v18);
      v20[2] = v17;
      v20[3] = v19;
      v7 = sub_21E0C372C(v26, v20, v27, 41, 2, v28);

      if (v7)
      {
        ++v14;
        if (v16 != v23)
        {
          continue;
        }
      }

      return v7 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E0E046C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21E142B14() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21E0E04FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E0E0558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  if (v2 && a1 != a2)
  {
    v5 = sub_21E1423C4();
    v6 = (a2 + 40);
    v7 = (a1 + 40);
    while (1)
    {
      v18[0] = v18;
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v6 - 1);
      v11 = *v6;
      MEMORY[0x28223BE20](v5);
      v16 = v8;
      v17 = v10;

      v12 = sub_21E0C372C(sub_21DF6078C, v15, "VisualIntelligenceUI/NewEntityModel.swift", 41, 2, 233);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v18[0] = v18;
      MEMORY[0x28223BE20](v12);
      v16 = v9;
      v17 = v11;
      v13 = sub_21E0C372C(sub_21DF35578, v15, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);

      if (v13)
      {
        v6 += 2;
        v7 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return v13 & 1;
    }

    goto LABEL_11;
  }

  v13 = 1;
  return v13 & 1;
}

uint64_t sub_21E0E0744(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21E0ECF6C;

  return v6(a1);
}

void sub_21E0E0864(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_21E0E08C0(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_21E0E08C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21E0E098C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21E023F60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21E0E098C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21E0E0A98(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21E1428D4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_21E0E0A98(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E0E0AE4(a1, a2);
  sub_21E0E0C14(&unk_282F3B810);
  return v3;
}

void *sub_21E0E0AE4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21E0E0D00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21E1428D4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21E142234();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21E0E0D00(v10, 0);
        result = sub_21E142874();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_21E0E0C14(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_21E0E0D74(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_21E0E0D00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A0, &qword_21E157718);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21E0E0D74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A0, &qword_21E157718);
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

_BYTE **sub_21E0E0E68(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_21E0E0EC8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity) = *(v0 + 24);

  sub_21E0DC4BC(v2);
}

unint64_t sub_21E0E0F20(uint64_t a1, uint64_t a2)
{
  sub_21E142C14();
  sub_21E142204();
  v4 = sub_21E142C44();

  return sub_21E0E12A4(a1, a2, v4);
}

unint64_t sub_21E0E0F98(uint64_t a1)
{
  v1 = a1;
  sub_21E142C14();
  ActionAnalytics.ActionType.rawValue.getter();
  sub_21E142204();

  v2 = sub_21E142C44();

  return sub_21E0E135C(v1, v2);
}

unint64_t sub_21E0E1024(uint64_t a1)
{
  sub_21E13D344();
  v2 = MEMORY[0x277CC95F0];
  sub_21E0ECD50(&qword_280F6C090, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_21E142014();
  return sub_21E0E1BA4(a1, v3, MEMORY[0x277CC95F0], &qword_280F6C088, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_21E0E10F8(uint64_t a1)
{
  sub_21E142124();
  sub_21E142C14();
  sub_21E142204();
  v2 = sub_21E142C44();

  return sub_21E0E19D8(a1, v2);
}

unint64_t sub_21E0E118C(uint64_t a1)
{
  v2 = sub_21E142804();

  return sub_21E0E1ADC(a1, v2);
}

unint64_t sub_21E0E11D0(uint64_t a1)
{
  sub_21E13D534();
  v2 = MEMORY[0x277D08668];
  sub_21E0ECD50(&qword_27CEAD5B8, MEMORY[0x277D08668], MEMORY[0x277D08670]);
  v3 = sub_21E142014();
  return sub_21E0E1BA4(a1, v3, MEMORY[0x277D08668], &qword_27CEAD5C0, v2, MEMORY[0x277D08678]);
}

unint64_t sub_21E0E12A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21E142B14())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21E0E135C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEC00000070756B6FLL;
      v8 = 0x6F4C6C6175736956;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xEA00000000007075;
          v8 = 0x6B6F6F4C7370614DLL;
          break;
        case 2:
          v8 = 0x697463417370614DLL;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x65646F435251;
          break;
        case 4:
          v8 = 0x4370696C43707041;
          v9 = 6644847;
          goto LABEL_26;
        case 5:
          v8 = 0x6574654461746144;
          v7 = 0xEC000000726F7463;
          break;
        case 6:
          v8 = 0x7A6972616D6D7553;
          goto LABEL_21;
        case 7:
          v7 = 0xE900000000000064;
          v8 = 0x756F6C4164616552;
          break;
        case 8:
          v8 = 0x7261646E656C6143;
          v7 = 0xED0000746E657645;
          break;
        case 9:
          v8 = 0xD000000000000014;
          v7 = 0x800000021E15ADE0;
          break;
        case 0xA:
          v8 = 0x7261646E656C6143;
          v7 = 0xEC00000074696445;
          break;
        case 0xB:
          v7 = 0xE300000000000000;
          v8 = 7041857;
          break;
        case 0xC:
          v8 = 0x6165536567616D49;
          v9 = 6841202;
          goto LABEL_26;
        case 0xD:
          v8 = 0x74616C736E617254;
LABEL_21:
          v7 = 0xE900000000000065;
          break;
        case 0xE:
          v8 = 0x4172657474756853;
          v7 = 0xED00006E6F697463;
          break;
        case 0xF:
          v8 = 0x4E72657474756853;
          v7 = 0xEF6E6F697463416FLL;
          break;
        case 0x10:
          v7 = 0xEA00000000007265;
          v8 = 0x6B63697453646441;
          break;
        case 0x11:
          v8 = 0xD000000000000014;
          v7 = 0x800000021E15AE50;
          break;
        case 0x12:
          v7 = 0xE90000000000006FLL;
          v8 = 0x746F685065766153;
          break;
        case 0x13:
          v8 = 0x6974634174786554;
          v9 = 7564911;
          goto LABEL_26;
        case 0x14:
          v7 = 0xE800000000000000;
          v8 = 0x6B63616264656546;
          break;
        case 0x15:
          v8 = 0x6669636570736E55;
          v9 = 6579561;
LABEL_26:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        default:
          break;
      }

      v10 = 0x6F4C6C6175736956;
      v11 = 0xEC00000070756B6FLL;
      switch(a1)
      {
        case 1:
          v11 = 0xEA00000000007075;
          if (v8 == 0x6B6F6F4C7370614DLL)
          {
            goto LABEL_65;
          }

          goto LABEL_66;
        case 2:
          v11 = 0xEA00000000006E6FLL;
          if (v8 != 0x697463417370614DLL)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 3:
          v11 = 0xE600000000000000;
          if (v8 != 0x65646F435251)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 4:
          v13 = 0x4370696C43707041;
          v14 = 6644847;
          goto LABEL_70;
        case 5:
          v15 = 0x6574654461746144;
          v16 = 1919906915;
          goto LABEL_61;
        case 6:
          v17 = 0x7A6972616D6D7553;
          goto LABEL_56;
        case 7:
          v11 = 0xE900000000000064;
          if (v8 != 0x756F6C4164616552)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 8:
          v10 = 0x7261646E656C6143;
          v11 = 0xED0000746E657645;
          goto LABEL_64;
        case 9:
          v11 = 0x800000021E15ADE0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 10:
          v15 = 0x7261646E656C6143;
          v16 = 1953064005;
LABEL_61:
          v11 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v15)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 11:
          v11 = 0xE300000000000000;
          if (v8 != 7041857)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 12:
          v13 = 0x6165536567616D49;
          v14 = 6841202;
          goto LABEL_70;
        case 13:
          v17 = 0x74616C736E617254;
LABEL_56:
          v11 = 0xE900000000000065;
          if (v8 != v17)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 14:
          v11 = 0xED00006E6F697463;
          if (v8 != 0x4172657474756853)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 15:
          v11 = 0xEF6E6F697463416FLL;
          if (v8 != 0x4E72657474756853)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 16:
          v11 = 0xEA00000000007265;
          v12 = 0x697453646441;
          goto LABEL_50;
        case 17:
          v11 = 0x800000021E15AE50;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 18:
          v11 = 0xE90000000000006FLL;
          if (v8 != 0x746F685065766153)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 19:
          v13 = 0x6974634174786554;
          v14 = 7564911;
          goto LABEL_70;
        case 20:
          v11 = 0xE800000000000000;
          v12 = 0x616264656546;
LABEL_50:
          if (v8 != (v12 & 0xFFFFFFFFFFFFLL | 0x6B63000000000000))
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 21:
          v13 = 0x6669636570736E55;
          v14 = 6579561;
LABEL_70:
          v11 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v13)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        default:
LABEL_64:
          if (v8 != v10)
          {
            goto LABEL_66;
          }

LABEL_65:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_66:
          v18 = sub_21E142B14();

          if (v18)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_21E0E19D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21E142124();
      v8 = v7;
      if (v6 == sub_21E142124() && v8 == v9)
      {
        break;
      }

      v11 = sub_21E142B14();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_21E0E1ADC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21E0ECA4C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D53050](v9, a1);
      sub_21E0ECAA8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21E0E1BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_21E0ECD50(v24, v25, v26);
      v20 = sub_21E142074();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_21E0E1D44(char *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_21E142C14();
  ActionAnalytics.ActionType.rawValue.getter();
  sub_21E142204();

  v5 = sub_21E142C44();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_72:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v23;
    sub_21E0E3C80(v3, v7, isUniquelyReferenced_nonNull_native);
    *v23 = v25;
    result = 1;
    goto LABEL_75;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xEC00000070756B6FLL;
    v10 = 0x6F4C6C6175736956;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xEA00000000007075;
        v10 = 0x6B6F6F4C7370614DLL;
        break;
      case 2:
        v10 = 0x697463417370614DLL;
        v9 = 0xEA00000000006E6FLL;
        break;
      case 3:
        v9 = 0xE600000000000000;
        v10 = 0x65646F435251;
        break;
      case 4:
        v10 = 0x4370696C43707041;
        v11 = 6644847;
        goto LABEL_26;
      case 5:
        v10 = 0x6574654461746144;
        v9 = 0xEC000000726F7463;
        break;
      case 6:
        v10 = 0x7A6972616D6D7553;
        goto LABEL_21;
      case 7:
        v9 = 0xE900000000000064;
        v10 = 0x756F6C4164616552;
        break;
      case 8:
        v10 = 0x7261646E656C6143;
        v9 = 0xED0000746E657645;
        break;
      case 9:
        v10 = 0xD000000000000014;
        v9 = 0x800000021E15ADE0;
        break;
      case 0xA:
        v10 = 0x7261646E656C6143;
        v9 = 0xEC00000074696445;
        break;
      case 0xB:
        v9 = 0xE300000000000000;
        v10 = 7041857;
        break;
      case 0xC:
        v10 = 0x6165536567616D49;
        v11 = 6841202;
        goto LABEL_26;
      case 0xD:
        v10 = 0x74616C736E617254;
LABEL_21:
        v9 = 0xE900000000000065;
        break;
      case 0xE:
        v10 = 0x4172657474756853;
        v9 = 0xED00006E6F697463;
        break;
      case 0xF:
        v10 = 0x4E72657474756853;
        v9 = 0xEF6E6F697463416FLL;
        break;
      case 0x10:
        v9 = 0xEA00000000007265;
        v10 = 0x6B63697453646441;
        break;
      case 0x11:
        v10 = 0xD000000000000014;
        v9 = 0x800000021E15AE50;
        break;
      case 0x12:
        v9 = 0xE90000000000006FLL;
        v10 = 0x746F685065766153;
        break;
      case 0x13:
        v10 = 0x6974634174786554;
        v11 = 7564911;
        goto LABEL_26;
      case 0x14:
        v9 = 0xE800000000000000;
        v10 = 0x6B63616264656546;
        break;
      case 0x15:
        v10 = 0x6669636570736E55;
        v11 = 6579561;
LABEL_26:
        v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      default:
        break;
    }

    v12 = 0x6F4C6C6175736956;
    v13 = 0xEC00000070756B6FLL;
    switch(v3)
    {
      case 1:
        v13 = 0xEA00000000007075;
        if (v10 == 0x6B6F6F4C7370614DLL)
        {
          goto LABEL_65;
        }

        goto LABEL_66;
      case 2:
        v13 = 0xEA00000000006E6FLL;
        if (v10 != 0x697463417370614DLL)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 3:
        v13 = 0xE600000000000000;
        if (v10 != 0x65646F435251)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 4:
        v15 = 0x4370696C43707041;
        v16 = 6644847;
        goto LABEL_70;
      case 5:
        v17 = 0x6574654461746144;
        v18 = 1919906915;
        goto LABEL_61;
      case 6:
        v19 = 0x7A6972616D6D7553;
        goto LABEL_56;
      case 7:
        v13 = 0xE900000000000064;
        if (v10 != 0x756F6C4164616552)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 8:
        v12 = 0x7261646E656C6143;
        v13 = 0xED0000746E657645;
        goto LABEL_64;
      case 9:
        v13 = 0x800000021E15ADE0;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 10:
        v17 = 0x7261646E656C6143;
        v18 = 1953064005;
LABEL_61:
        v13 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v17)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 11:
        v13 = 0xE300000000000000;
        if (v10 != 7041857)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 12:
        v15 = 0x6165536567616D49;
        v16 = 6841202;
        goto LABEL_70;
      case 13:
        v19 = 0x74616C736E617254;
LABEL_56:
        v13 = 0xE900000000000065;
        if (v10 != v19)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 14:
        v13 = 0xED00006E6F697463;
        if (v10 != 0x4172657474756853)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 15:
        v13 = 0xEF6E6F697463416FLL;
        if (v10 != 0x4E72657474756853)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 16:
        v13 = 0xEA00000000007265;
        v14 = 0x697453646441;
        goto LABEL_50;
      case 17:
        v13 = 0x800000021E15AE50;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 18:
        v13 = 0xE90000000000006FLL;
        if (v10 != 0x746F685065766153)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 19:
        v15 = 0x6974634174786554;
        v16 = 7564911;
        goto LABEL_70;
      case 20:
        v13 = 0xE800000000000000;
        v14 = 0x616264656546;
LABEL_50:
        if (v10 != (v14 & 0xFFFFFFFFFFFFLL | 0x6B63000000000000))
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      case 21:
        v15 = 0x6669636570736E55;
        v16 = 6579561;
LABEL_70:
        v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v10 != v15)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      default:
LABEL_64:
        if (v10 != v12)
        {
          goto LABEL_66;
        }

LABEL_65:
        if (v9 != v13)
        {
LABEL_66:
          v20 = sub_21E142B14();

          if (v20)
          {
            goto LABEL_74;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_72;
          }

          continue;
        }

LABEL_74:
        result = 0;
        v3 = *(*(v4 + 48) + v7);
LABEL_75:
        *a1 = v3;
        return result;
    }
  }
}

uint64_t sub_21E0E2440(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21E140124();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21E0ECD50(&qword_27CEAD690, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
  v33 = a2;
  v11 = sub_21E142014();
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
      sub_21E0ECD50(&qword_27CEA79D0, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
      v21 = sub_21E142074();
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
    sub_21E0E43C0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21E0E2720(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_21E1427C4();

    if (v8)
    {

      v29[9] = v8;
      type metadata accessor for NewActionModel(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v29[0];
    }

    else
    {
      result = sub_21E1427B4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v21 = sub_21E0E2B70(v7, result + 1);
        v29[0] = v21;
        v22 = *(v21 + 16);
        if (*(v21 + 24) <= v22)
        {
          sub_21E0E3664(v22 + 1);
          v21 = v29[0];
        }

        sub_21E0E3BA0(v23, v21);

        *v3 = v21;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v27 = v2;
    v28 = a1;
    sub_21E142C14();
    v10 = sub_21E1423C4();
    MEMORY[0x28223BE20](v10);
    v25 = v29;
    v26 = a2;
    sub_21E0C38E4(sub_21DFE90E0, v24, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
    v11 = sub_21E142C44();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);
        MEMORY[0x28223BE20](v11);
        v25 = v15;
        v26 = a2;

        v16 = sub_21E0C372C(sub_21DF60774, v24, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *v28 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v17 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29[0] = *v17;

      sub_21E0E4688(v19, v13, isUniquelyReferenced_nonNull_native, v20);
      *v17 = v29[0];
      *v28 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_21E0E2A20(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21E142C14();
  sub_21E142204();
  v8 = sub_21E142C44();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21E142B14() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v17 = (*(v7 + 48) + 16 * v10);
    v18 = v17[1];
    *a1 = *v17;
    a1[1] = v18;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;

    sub_21E0E48BC(a2, a3, v10, isUniquelyReferenced_nonNull_native, v15);
    *v3 = v19;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21E0E2B70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD658, &qword_21E157618);
    v2 = sub_21E142854();
    v23 = v2;
    sub_21E1427A4();
    v3 = sub_21E1427E4();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for NewActionModel(0);
      v5 = v4;
      do
      {
        *&v20[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_21E0E3664(v14 + 1);
        }

        v6 = v22;
        v2 = v23;
        sub_21E142C14();
        v20[2] = v26;
        v20[3] = v27;
        v21 = v28;
        v20[0] = v24;
        v20[1] = v25;
        v7 = sub_21E1423C4();
        MEMORY[0x28223BE20](v7);
        v19[2] = v20;
        v19[3] = v6;
        sub_21E0C38E4(sub_21DFE90E0, v19, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
        result = sub_21E142C44();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = sub_21E1427E4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21E0E2DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD5C8, &qword_21E157298);
  result = sub_21E142844();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_21E142C14();
      sub_21E142204();

      result = sub_21E142C44();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21E0E3308(uint64_t a1)
{
  v2 = v1;
  v36 = sub_21E140124();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD688, &unk_21E1576F0);
  result = sub_21E142844();
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
      sub_21E0ECD50(&qword_27CEAD690, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      result = sub_21E142014();
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

uint64_t sub_21E0E3664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD658, &qword_21E157618);
  result = sub_21E142844();
  v5 = result;
  if (*(v3 + 16))
  {
    v28 = v1;
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
    v29 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_21E142C14();
      v30[2] = v34;
      v30[3] = v35;
      v31 = v36;
      v30[0] = v32;
      v30[1] = v33;
      v18 = sub_21E1423C4();
      MEMORY[0x28223BE20](v18);
      v27[2] = v30;
      v27[3] = v17;
      sub_21E0C38E4(sub_21DFE90E0, v27, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
      result = sub_21E142C44();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
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
      v3 = v29;
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

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21E0E3940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD648, &qword_21E1575D0);
  result = sub_21E142844();
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
      sub_21E142C14();
      sub_21E142204();
      result = sub_21E142C44();
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

unint64_t sub_21E0E3BA0(uint64_t a1, uint64_t a2)
{
  sub_21E142C14();
  sub_21E1423C4();
  v5[2] = v6;
  v5[3] = a1;
  sub_21E0C38E4(sub_21DFE90E0, v5, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
  sub_21E142C44();
  result = sub_21E142794();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_21E0E3C80(char a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21E0E2DEC(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_21E0E4A3C();
        goto LABEL_79;
      }

      sub_21E0E5060(v6 + 1);
    }

    v8 = *v3;
    sub_21E142C14();
    ActionAnalytics.ActionType.rawValue.getter();
    sub_21E142204();

    v9 = sub_21E142C44();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xEC00000070756B6FLL;
        v13 = 0x6F4C6C6175736956;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0xEA00000000007075;
            v13 = 0x6B6F6F4C7370614DLL;
            break;
          case 2:
            v13 = 0x697463417370614DLL;
            v12 = 0xEA00000000006E6FLL;
            break;
          case 3:
            v12 = 0xE600000000000000;
            v13 = 0x65646F435251;
            break;
          case 4:
            v13 = 0x4370696C43707041;
            v14 = 6644847;
            goto LABEL_33;
          case 5:
            v13 = 0x6574654461746144;
            v12 = 0xEC000000726F7463;
            break;
          case 6:
            v13 = 0x7A6972616D6D7553;
            goto LABEL_28;
          case 7:
            v12 = 0xE900000000000064;
            v13 = 0x756F6C4164616552;
            break;
          case 8:
            v13 = 0x7261646E656C6143;
            v12 = 0xED0000746E657645;
            break;
          case 9:
            v13 = 0xD000000000000014;
            v12 = 0x800000021E15ADE0;
            break;
          case 0xA:
            v13 = 0x7261646E656C6143;
            v12 = 0xEC00000074696445;
            break;
          case 0xB:
            v12 = 0xE300000000000000;
            v13 = 7041857;
            break;
          case 0xC:
            v13 = 0x6165536567616D49;
            v14 = 6841202;
            goto LABEL_33;
          case 0xD:
            v13 = 0x74616C736E617254;
LABEL_28:
            v12 = 0xE900000000000065;
            break;
          case 0xE:
            v13 = 0x4172657474756853;
            v12 = 0xED00006E6F697463;
            break;
          case 0xF:
            v13 = 0x4E72657474756853;
            v12 = 0xEF6E6F697463416FLL;
            break;
          case 0x10:
            v12 = 0xEA00000000007265;
            v13 = 0x6B63697453646441;
            break;
          case 0x11:
            v13 = 0xD000000000000014;
            v12 = 0x800000021E15AE50;
            break;
          case 0x12:
            v12 = 0xE90000000000006FLL;
            v13 = 0x746F685065766153;
            break;
          case 0x13:
            v13 = 0x6974634174786554;
            v14 = 7564911;
            goto LABEL_33;
          case 0x14:
            v12 = 0xE800000000000000;
            v13 = 0x6B63616264656546;
            break;
          case 0x15:
            v13 = 0x6669636570736E55;
            v14 = 6579561;
LABEL_33:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          default:
            break;
        }

        v15 = 0x6F4C6C6175736956;
        v16 = 0xEC00000070756B6FLL;
        switch(a1)
        {
          case 1:
            v16 = 0xEA00000000007075;
            if (v13 == 0x6B6F6F4C7370614DLL)
            {
              goto LABEL_72;
            }

            goto LABEL_73;
          case 2:
            v16 = 0xEA00000000006E6FLL;
            if (v13 != 0x697463417370614DLL)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 3:
            v16 = 0xE600000000000000;
            if (v13 != 0x65646F435251)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 4:
            v18 = 0x4370696C43707041;
            v19 = 6644847;
            goto LABEL_77;
          case 5:
            v20 = 0x6574654461746144;
            v21 = 1919906915;
            goto LABEL_68;
          case 6:
            v22 = 0x7A6972616D6D7553;
            goto LABEL_63;
          case 7:
            v16 = 0xE900000000000064;
            if (v13 != 0x756F6C4164616552)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 8:
            v15 = 0x7261646E656C6143;
            v16 = 0xED0000746E657645;
            goto LABEL_71;
          case 9:
            v16 = 0x800000021E15ADE0;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 10:
            v20 = 0x7261646E656C6143;
            v21 = 1953064005;
LABEL_68:
            v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v13 != v20)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 11:
            v16 = 0xE300000000000000;
            if (v13 != 7041857)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 12:
            v18 = 0x6165536567616D49;
            v19 = 6841202;
            goto LABEL_77;
          case 13:
            v22 = 0x74616C736E617254;
LABEL_63:
            v16 = 0xE900000000000065;
            if (v13 != v22)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 14:
            v16 = 0xED00006E6F697463;
            if (v13 != 0x4172657474756853)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 15:
            v16 = 0xEF6E6F697463416FLL;
            if (v13 != 0x4E72657474756853)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 16:
            v16 = 0xEA00000000007265;
            v17 = 0x697453646441;
            goto LABEL_57;
          case 17:
            v16 = 0x800000021E15AE50;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 18:
            v16 = 0xE90000000000006FLL;
            if (v13 != 0x746F685065766153)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 19:
            v18 = 0x6974634174786554;
            v19 = 7564911;
            goto LABEL_77;
          case 20:
            v16 = 0xE800000000000000;
            v17 = 0x616264656546;
LABEL_57:
            if (v13 != (v17 & 0xFFFFFFFFFFFFLL | 0x6B63000000000000))
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          case 21:
            v18 = 0x6669636570736E55;
            v19 = 6579561;
LABEL_77:
            v16 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v13 != v18)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          default:
LABEL_71:
            if (v13 != v15)
            {
              goto LABEL_73;
            }

LABEL_72:
            if (v12 == v16)
            {
              goto LABEL_82;
            }

LABEL_73:
            v23 = sub_21E142B14();

            if (v23)
            {
              goto LABEL_83;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_79:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = a1;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_82:

LABEL_83:
    sub_21E142B74();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v27;
  }
}

uint64_t sub_21E0E43C0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21E140124();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21E0E3308(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21E0E4E28(MEMORY[0x277CDDE90], &qword_27CEAD688, &unk_21E1576F0);
      goto LABEL_12;
    }

    sub_21E0E554C(v11 + 1);
  }

  v13 = *v3;
  sub_21E0ECD50(&qword_27CEAD690, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
  v14 = sub_21E142014();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21E0ECD50(&qword_27CEA79D0, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
      v22 = sub_21E142074();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21E142B74();
  __break(1u);
  return result;
}

uint64_t sub_21E0E4688(uint64_t result, unint64_t a2, char a3, __n128 a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21E0E3664(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_21E0E4B7C();
      goto LABEL_12;
    }

    sub_21E0E5868(v7 + 1);
  }

  v9 = *v4;
  sub_21E142C14();
  v10 = sub_21E1423C4();
  MEMORY[0x28223BE20](v10);
  v20 = v24;
  v21 = v6;
  sub_21E0C38E4(sub_21DFE90E0, v19, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
  result = sub_21E142C44();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    result = type metadata accessor for NewActionModel(0);
    v22 = result;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);
      MEMORY[0x28223BE20](result);
      v20 = v13;
      v21 = v6;

      v14 = sub_21E0C372C(sub_21DF60774, v19, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v23;
  *(v15 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21E142B74();
  __break(1u);
  return result;
}

uint64_t sub_21E0E48BC(uint64_t result, uint64_t a2, unint64_t a3, char a4, __n128 a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21E0E3940(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_21E0E4CCC();
      goto LABEL_16;
    }

    sub_21E0E5B34(v9 + 1);
  }

  v11 = *v5;
  sub_21E142C14();
  sub_21E142204();
  result = sub_21E142C44();
  v12 = -1 << *(v11 + 32);
  a3 = result & ~v12;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v11 + 48) + 16 * a3);
      if (*v14 == v8 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21E142B14();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v8;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21E142B74();
  __break(1u);
  return result;
}

void *sub_21E0E4A3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD5C8, &qword_21E157298);
  v2 = *v0;
  v3 = sub_21E142834();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21E0E4B7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD658, &qword_21E157618);
  v2 = *v0;
  v3 = sub_21E142834();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_21E0E4CCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD648, &qword_21E1575D0);
  v2 = *v0;
  v3 = sub_21E142834();
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

void *sub_21E0E4E28(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_21E142834();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_21E0E5060(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD5C8, &qword_21E157298);
  result = sub_21E142844();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_21E142C14();
      sub_21E142204();

      result = sub_21E142C44();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21E0E554C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_21E140124();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD688, &unk_21E1576F0);
  v7 = sub_21E142844();
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
      sub_21E0ECD50(&qword_27CEAD690, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      result = sub_21E142014();
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

uint64_t sub_21E0E5868(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD658, &qword_21E157618);
  result = sub_21E142844();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
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
    v28 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v29 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_21E142C14();
      v30[2] = v34;
      v30[3] = v35;
      v31 = v36;
      v30[0] = v32;
      v30[1] = v33;
      v18 = sub_21E1423C4();
      MEMORY[0x28223BE20](v18);
      v26[2] = v30;
      v26[3] = v17;

      sub_21E0C38E4(sub_21DFE90E0, v26, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
      result = sub_21E142C44();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
      v10 = v29;
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
        v29 = (v16 - 1) & v16;
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

uint64_t sub_21E0E5B34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD648, &qword_21E1575D0);
  result = sub_21E142844();
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
      sub_21E142C14();

      sub_21E142204();
      result = sub_21E142C44();
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

uint64_t sub_21E0E5D6C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_21E1427F4();

    if (v5)
    {
      v6 = sub_21E0E6290(v4, a1);

      return v6;
    }

    return 0;
  }

  v22 = v1;
  sub_21E142C14();
  v8 = sub_21E1423C4();
  MEMORY[0x28223BE20](v8);
  v20 = &v23;
  v21 = a1;
  sub_21E0C38E4(sub_21DFE90E0, v19, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
  v9 = sub_21E142C44();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    MEMORY[0x28223BE20](v9);
    v20 = v13;
    v21 = a1;

    v14 = sub_21E0C372C(sub_21DF60774, v19, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v15;
  v23 = *v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21E0E4B7C();
    v17 = v23;
  }

  v18 = *(*(v17 + 48) + 8 * v11);
  sub_21E0E64E0(v11);
  result = v18;
  *v22 = v23;
  return result;
}

uint64_t sub_21E0E5FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_21E13F274();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_21E0ECD50(&qword_27CEAD5E0, MEMORY[0x277D796D0], MEMORY[0x277D796D8]);
  v33 = a1;
  v11 = sub_21E142014();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v3;
    v29 = v7;
    v30 = a2;
    v15 = ~v13;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v32 + 48) + v19 * v14, v6);
      sub_21E0ECD50(&qword_27CEA77C0, MEMORY[0x277D796D0], MEMORY[0x277D796E0]);
      v20 = sub_21E142074();
      (*(v17 - 8))(v9, v6);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v7 = v29;
        a2 = v30;
        return (*(v7 + 56))(a2, v21, 1, v6);
      }
    }

    v22 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v34 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21E0E4E28(MEMORY[0x277D796D0], &qword_27CEAD5E8, &unk_21E1591D0);
      v24 = v34;
    }

    v7 = v29;
    a2 = v30;
    v25.n128_f64[0] = (*(v29 + 32))(v30, *(v24 + 48) + v19 * v14, v6);
    sub_21E0E6724(v14, v25);
    v21 = 0;
    *v22 = v34;
  }

  else
  {
    v21 = 1;
  }

  return (*(v7 + 56))(a2, v21, 1, v6);
}

uint64_t sub_21E0E6290(uint64_t a1, uint64_t a2)
{

  v3 = sub_21E1427B4();
  v4 = swift_unknownObjectRetain();
  v5 = sub_21E0E2B70(v4, v3);
  v23 = v5;
  sub_21E142C14();
  sub_21E1423C4();
  v20 = v22;
  v21 = a2;

  sub_21E0C38E4(sub_21DFE90E0, v19, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
  v6 = sub_21E142C44();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v5 + 48) + 8 * v8);
      MEMORY[0x28223BE20](v6);
      v16 = v10;
      v17 = a2;

      v11 = sub_21E0C372C(sub_21DF60774, v15, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v23 + 48) + 8 * v8);
  v13 = sub_21E0E64E0(v8);
  MEMORY[0x28223BE20](v13);
  v16 = a2;
  v17 = v12;
  result = sub_21E0C372C(sub_21DF60774, v15, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);
  if (result)
  {
    *v18 = v23;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21E0E64E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21E142784();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v20[4] = sub_21E1423C4();
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_21E142C14();
        v21[2] = v25;
        v21[3] = v26;
        v22 = v27;
        v21[0] = v23;
        v21[1] = v24;
        MEMORY[0x28223BE20](v11);
        v20[2] = v21;
        v20[3] = v10;

        sub_21E0C38E4(sub_21DFE90E0, v20, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
        v12 = sub_21E142C44();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void sub_21E0E6724(int64_t a1, __n128 a2)
{
  v4 = sub_21E13F274();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = *v2 + 56;
  v10 = -1 << *(*v2 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_21E142784();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v5 + 16);
      v36 = v5 + 16;
      v16 = *(v5 + 72);
      v33 = (v5 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v4);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_21E0ECD50(&qword_27CEAD5E0, MEMORY[0x277D796D0], MEMORY[0x277D796D8]);
        v24 = sub_21E142014();
        (*v33)(v7, v4);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }
}

uint64_t sub_21E0E6A2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21E0E0F20(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21E1000F4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21E0FE5C0(v16, a4 & 1);
    v11 = sub_21E0E0F20(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21E142B84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_21E0ECD98(a1, v22);
  }

  else
  {
    sub_21E0FFE84(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_21E0E6B74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_21E0E0F20(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_21E1002B8();
      goto LABEL_7;
    }

    sub_21E0FE8E0(v15, a4 & 1);
    v22 = sub_21E0E0F20(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21E142B84();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0) - 8) + 72) * v12;

    return sub_21E0ECDF4(a1, v20);
  }

LABEL_13:
  sub_21E0FFEE0(v12, a2, a3, a1, v18);
}

uint64_t sub_21E0E6CE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21E0E0F20(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21E100500();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21E0FEC34(v16, a4 & 1);
    v11 = sub_21E0E0F20(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_21E142B84();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_21E0FFF84(v11, a2, a3, a1, v21);
}

void sub_21E0E6E28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21E13D344();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21E0E1024(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21E1007B8();
      goto LABEL_7;
    }

    sub_21E0FF424(v17, a3 & 1);
    v21 = sub_21E0E1024(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_21E0FFFCC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_21E142B84();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_21E0E6FF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21E0E0F20(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21E100A38();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21E0FF800(v16, a4 & 1);
    v11 = sub_21E0E0F20(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21E142B84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 104 * v11;

    return sub_21E0EC9F0(a1, v22);
  }

  else
  {
    sub_21E100084(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_21E0E713C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v35 = result + 64;
  v36 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v34 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v38 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = (*(result + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(result + 56) + 40 * v10;
    v16 = *v14;
    v15 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v19 = *(v14 + 32);

    sub_21DF27ADC(v16, v15, v18, v17, v19);
    v20 = v13 == 0;
    if (!v13)
    {
      return v20;
    }

    v21 = sub_21E0E0F20(v12, v13);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      sub_21DF346C4(v16, v15, v18, v17, v19);
      return 0;
    }

    v24 = *(v2 + 56) + 40 * v21;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    v39[0] = v25;
    v39[1] = v26;
    v39[2] = v27;
    v39[3] = v28;
    v40 = v29;
    v41 = v16;
    v42 = v15;
    v43 = v18;
    v44 = v17;
    v45 = v19;
    if (!v29)
    {
      if (v19)
      {
        goto LABEL_45;
      }

      goto LABEL_31;
    }

    if (v29 == 1)
    {
      if (v19 != 1 || (v25 == v16 ? (v30 = v26 == v15) : (v30 = 0), !v30 && (sub_21E142B14() & 1) == 0))
      {

LABEL_45:

        sub_21DF23614(v39, &qword_27CEAD698, &unk_21E157700);
        return 0;
      }

      if (v27 == v18 && v28 == v17)
      {

        goto LABEL_40;
      }

      v32 = sub_21E142B14();

LABEL_36:

      sub_21DF23614(v39, &qword_27CEAD698, &unk_21E157700);
      result = v36;
      v2 = a2;
      v6 = v38;
      v20 = 0;
      if ((v32 & 1) == 0)
      {
        return v20;
      }
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_45;
      }

LABEL_31:
      if (v25 != v16 || v26 != v15)
      {
        v32 = sub_21E142B14();
        goto LABEL_36;
      }

LABEL_40:

      sub_21DF23614(v39, &qword_27CEAD698, &unk_21E157700);
      result = v36;
      v2 = a2;
      v6 = v38;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v34)
    {
      return 1;
    }

    v9 = *(v35 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v38 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_21E0E744C(uint64_t a1, uint64_t a2)
{
  v54 = sub_21E13D344();
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD600, &qword_21E1573A8);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v47 = v44 - v10;
    v12 = 0;
    v45 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v44[0] = v14;
    v44[1] = v49 + 16;
    v52 = (v49 + 32);
    v46 = (v49 + 8);
    while (v18)
    {
      v53 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v45;
      v26 = v48;
      v27 = v49;
      v28 = v54;
      (*(v49 + 16))(v48, *(v45 + 48) + *(v49 + 72) * v20, v54, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD608, &qword_21E1573B0);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v51;
      v32(v51, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v47;
      sub_21DF3DE9C(v33, v47, &qword_27CEAD600, &qword_21E1573A8);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD608, &qword_21E1573B0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v50;
      v38 = v54;
      (*v52)(v50, v34, v54);
      v39 = *(v34 + v36);
      sub_21E0E1024(v37);
      LOBYTE(v36) = v40;
      (*v46)(v37, v38);
      if ((v36 & 1) == 0)
      {

        return;
      }

      v42 = sub_21E00E6FC(v41, v39);

      v18 = v53;
      if ((v42 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD608, &qword_21E1573B0);
        v33 = v51;
        (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
        v53 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v44[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v53 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

unint64_t sub_21E0E78D8(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 22;
    if (v13 != 22)
    {
      v15 = *(*(v3 + 56) + 8 * v12);
      result = sub_21E0E0F98(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 8 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E0E79F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21E0E7AEC;

  return v5(v2 + 32);
}

uint64_t sub_21E0E7AEC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21E0E7C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13EF04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77D8, &qword_21E147858);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEACB50, &qword_21E14FA80);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEACB50, &qword_21E14FA80);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEACB50, &qword_21E14FA80);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21E0ECD50(&qword_280F69070, MEMORY[0x277D796B8], MEMORY[0x277D796C0]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEACB50, &qword_21E14FA80);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEA77D8, &qword_21E147858);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEACB50, &qword_21E14FA80);
  v17 = 0;
  return v17 & 1;
}

void sub_21E0E7F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD5C8, &qword_21E157298);
    v3 = sub_21E142864();
    v4 = 0;
    v5 = v3 + 56;
    v28 = v1;
    v29 = a1 + 32;
    while (1)
    {
      v6 = *(v29 + v4);
      v30 = v4 + 1;
      sub_21E142C14();
      sub_21E142204();

      v7 = sub_21E142C44();
      v8 = ~(-1 << *(v3 + 32));
      v9 = v7 & v8;
      v10 = (v7 & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (v7 & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xEC00000070756B6FLL;
          v14 = 0x6F4C6C6175736956;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xEA00000000007075;
              v14 = 0x6B6F6F4C7370614DLL;
              break;
            case 2:
              v14 = 0x697463417370614DLL;
              v13 = 0xEA00000000006E6FLL;
              break;
            case 3:
              v13 = 0xE600000000000000;
              v14 = 0x65646F435251;
              break;
            case 4:
              v14 = 0x4370696C43707041;
              v15 = 6644847;
              goto LABEL_29;
            case 5:
              v14 = 0x6574654461746144;
              v13 = 0xEC000000726F7463;
              break;
            case 6:
              v14 = 0x7A6972616D6D7553;
              goto LABEL_24;
            case 7:
              v13 = 0xE900000000000064;
              v14 = 0x756F6C4164616552;
              break;
            case 8:
              v14 = 0x7261646E656C6143;
              v13 = 0xED0000746E657645;
              break;
            case 9:
              v14 = 0xD000000000000014;
              v13 = 0x800000021E15ADE0;
              break;
            case 0xA:
              v14 = 0x7261646E656C6143;
              v13 = 0xEC00000074696445;
              break;
            case 0xB:
              v13 = 0xE300000000000000;
              v14 = 7041857;
              break;
            case 0xC:
              v14 = 0x6165536567616D49;
              v15 = 6841202;
              goto LABEL_29;
            case 0xD:
              v14 = 0x74616C736E617254;
LABEL_24:
              v13 = 0xE900000000000065;
              break;
            case 0xE:
              v14 = 0x4172657474756853;
              v13 = 0xED00006E6F697463;
              break;
            case 0xF:
              v14 = 0x4E72657474756853;
              v13 = 0xEF6E6F697463416FLL;
              break;
            case 0x10:
              v13 = 0xEA00000000007265;
              v14 = 0x6B63697453646441;
              break;
            case 0x11:
              v14 = 0xD000000000000014;
              v13 = 0x800000021E15AE50;
              break;
            case 0x12:
              v13 = 0xE90000000000006FLL;
              v14 = 0x746F685065766153;
              break;
            case 0x13:
              v14 = 0x6974634174786554;
              v15 = 7564911;
              goto LABEL_29;
            case 0x14:
              v13 = 0xE800000000000000;
              v14 = 0x6B63616264656546;
              break;
            case 0x15:
              v14 = 0x6669636570736E55;
              v15 = 6579561;
LABEL_29:
              v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            default:
              break;
          }

          v16 = 0x6F4C6C6175736956;
          v17 = 0xEC00000070756B6FLL;
          switch(v6)
          {
            case 1:
              v17 = 0xEA00000000007075;
              if (v14 == 0x6B6F6F4C7370614DLL)
              {
                goto LABEL_68;
              }

              goto LABEL_69;
            case 2:
              v17 = 0xEA00000000006E6FLL;
              if (v14 != 0x697463417370614DLL)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 3:
              v17 = 0xE600000000000000;
              if (v14 != 0x65646F435251)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 4:
              v19 = 0x4370696C43707041;
              v20 = 6644847;
              goto LABEL_73;
            case 5:
              v21 = 0x6574654461746144;
              v22 = 1919906915;
              goto LABEL_64;
            case 6:
              v23 = 0x7A6972616D6D7553;
              goto LABEL_59;
            case 7:
              v17 = 0xE900000000000064;
              if (v14 != 0x756F6C4164616552)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 8:
              v16 = 0x7261646E656C6143;
              v17 = 0xED0000746E657645;
              goto LABEL_67;
            case 9:
              v17 = 0x800000021E15ADE0;
              if (v14 != 0xD000000000000014)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 10:
              v21 = 0x7261646E656C6143;
              v22 = 1953064005;
LABEL_64:
              v17 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v14 != v21)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 11:
              v17 = 0xE300000000000000;
              if (v14 != 7041857)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 12:
              v19 = 0x6165536567616D49;
              v20 = 6841202;
              goto LABEL_73;
            case 13:
              v23 = 0x74616C736E617254;
LABEL_59:
              v17 = 0xE900000000000065;
              if (v14 != v23)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 14:
              v17 = 0xED00006E6F697463;
              if (v14 != 0x4172657474756853)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 15:
              v17 = 0xEF6E6F697463416FLL;
              if (v14 != 0x4E72657474756853)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 16:
              v17 = 0xEA00000000007265;
              v18 = 0x697453646441;
              goto LABEL_53;
            case 17:
              v17 = 0x800000021E15AE50;
              if (v14 != 0xD000000000000014)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 18:
              v17 = 0xE90000000000006FLL;
              if (v14 != 0x746F685065766153)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 19:
              v19 = 0x6974634174786554;
              v20 = 7564911;
              goto LABEL_73;
            case 20:
              v17 = 0xE800000000000000;
              v18 = 0x616264656546;
LABEL_53:
              if (v14 != (v18 & 0xFFFFFFFFFFFFLL | 0x6B63000000000000))
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            case 21:
              v19 = 0x6669636570736E55;
              v20 = 6579561;
LABEL_73:
              v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v14 != v19)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            default:
LABEL_67:
              if (v14 != v16)
              {
                goto LABEL_69;
              }

LABEL_68:
              if (v13 == v17)
              {

                goto LABEL_4;
              }

LABEL_69:
              v24 = sub_21E142B14();

              if (v24)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_75;
              }

              break;
          }
        }
      }

LABEL_75:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v25 = *(v3 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v3 + 16) = v27;
LABEL_4:
      v4 = v30;
      if (v30 == v28)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21E0E8918()
{
  sub_21E142C14();
  sub_21E142204();
  v0 = sub_21E142C44();

  return sub_21E0E88EC(v0);
}

uint64_t sub_21E0E8978(uint64_t a1)
{
  v2 = sub_21E140124();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD688, &unk_21E1576F0);
    v9 = sub_21E142864();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21E0ECD50(&qword_27CEAD690, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      v16 = sub_21E142014();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21E0ECD50(&qword_27CEA79D0, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
          v23 = sub_21E142074();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_21E0E8C98(unint64_t a1, uint64_t a2)
{
  v39 = a2;
  v42 = sub_21E13EF04();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v28 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77D8, &qword_21E147858);
  MEMORY[0x28223BE20](v37);
  v33 = &v26[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v43 = &v26[-v9];
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v40 = sub_21E1427B4();
  }

  else
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelection;
  v36 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  swift_beginAccess();
  v11 = 0;
  v38 = a1 & 0xC000000000000001;
  v34 = (v3 + 48);
  v27 = (v3 + 32);
  v30 = (v3 + 8);
  v31 = v10;
  v32 = a1;
  while (1)
  {
    if (v40 == v11)
    {
      return 0;
    }

    if (v38)
    {
      v3 = MEMORY[0x223D530F0](v11, a1);
    }

    else
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v3 = *(a1 + 8 * v11 + 32);
    }

    swift_getKeyPath();
    v44 = v3;
    sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3C4();

    v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
    swift_beginAccess();
    v16 = v43;
    sub_21DF236C0(v3 + v15, v43, &qword_27CEACB50, &qword_21E14FA80);
    swift_getKeyPath();
    v17 = v39;
    v44 = v39;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
    sub_21E13D3C4();

    v18 = *(v37 + 48);
    v19 = v16;
    v20 = v33;
    sub_21DF236C0(v19, v33, &qword_27CEACB50, &qword_21E14FA80);
    sub_21DF236C0(v17 + v35, &v20[v18], &qword_27CEACB50, &qword_21E14FA80);
    v21 = *v34;
    if ((*v34)(v20, 1, v42) == 1)
    {
      break;
    }

    v22 = v42;
    sub_21DF236C0(v20, v41, &qword_27CEACB50, &qword_21E14FA80);
    if (v21(&v20[v18], 1, v22) != 1)
    {
      v23 = v28;
      (*v27)(v28, &v20[v18], v22);
      sub_21E0ECD50(&qword_280F69070, MEMORY[0x277D796B8], MEMORY[0x277D796C0]);
      v29 = sub_21E142074();
      v24 = *v30;
      (*v30)(v23, v22);
      sub_21DF23614(v43, &qword_27CEACB50, &qword_21E14FA80);
      v24(v41, v22);
      sub_21DF23614(v20, &qword_27CEACB50, &qword_21E14FA80);

      v10 = v31;
      if (v29)
      {
        return v11;
      }

      goto LABEL_6;
    }

    sub_21DF23614(v43, &qword_27CEACB50, &qword_21E14FA80);
    (*v30)(v41, v22);
    v10 = v31;
    v13 = v20;
LABEL_5:
    sub_21DF23614(v13, &qword_27CEA77D8, &qword_21E147858);

LABEL_6:
    v14 = __OFADD__(v11++, 1);
    a1 = v32;
    if (v14)
    {
      goto LABEL_22;
    }
  }

  sub_21DF23614(v43, &qword_27CEACB50, &qword_21E14FA80);
  v12 = v21(&v20[v18], 1, v42) == 1;
  v13 = v20;
  if (!v12)
  {
    goto LABEL_5;
  }

  sub_21DF23614(v20, &qword_27CEACB50, &qword_21E14FA80);

  return v11;
}

void sub_21E0E9274(void *a1)
{
  v2 = sub_21E13D264();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v125 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13F1B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v118 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v116 - v9;
  MEMORY[0x28223BE20](v11);
  v117 = &v116 - v12;
  MEMORY[0x28223BE20](v13);
  v121 = &v116 - v14;
  MEMORY[0x28223BE20](v15);
  v119 = &v116 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v116 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v116 - v24;
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v29 = &v116 - v28;
  v30 = [a1 urlThatCanBeOpened];
  v127 = v2;
  v124 = v3;
  if (v30)
  {
    v31 = v30;
    sub_21E13D214();

    (*(v3 + 56))(v25, 0, 1, v127);
  }

  else
  {
    (*(v3 + 56))(v25, 1, 1, v2);
  }

  sub_21DF3DE9C(v25, v29, &qword_27CEA9990, &qword_21E148DD0);
  v32 = [a1 defaultActionTargetApplicationBundleIdentifier];
  v126 = v6;
  v116 = v10;
  if (v32)
  {
    v33 = v32;
    v120 = sub_21E142124();
    v122 = v34;
  }

  else
  {
    v120 = 0;
    v122 = 0;
  }

  sub_21E13EC14();
  v35 = a1;
  v36 = sub_21E13F1A4();
  v37 = sub_21E142554();

  v38 = os_log_type_enabled(v36, v37);
  v123 = v35;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = v5;
    v41 = v29;
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v39 = 136315138;
    BCSAction.logDescription.getter();
    v45 = sub_21E0E08C0(v43, v44, aBlock);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_21DF05000, v36, v37, "Handling action %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v46 = v42;
    v29 = v41;
    v5 = v40;
    MEMORY[0x223D540B0](v46, -1, -1);
    MEMORY[0x223D540B0](v39, -1, -1);

    v47 = *(v126 + 8);
    v47(v19, v40);
  }

  else
  {

    v47 = *(v126 + 8);
    v47(v19, v5);
  }

  v48 = v127;
  v49 = v125;
  sub_21DF236C0(v29, v22, &qword_27CEA9990, &qword_21E148DD0);
  v50 = v124;
  if ((*(v124 + 48))(v22, 1, v48) != 1)
  {
    (*(v50 + 32))(v49, v22, v48);
    v51 = v123;
    if (v122)
    {
      if (v120 == 0xD000000000000016 && v122 == 0x800000021E15C490)
      {

        goto LABEL_17;
      }

      v52 = sub_21E142B14();

      if (v52)
      {
LABEL_17:
        if (!sub_21E0DEF20(v51))
        {
          v69 = v119;
          sub_21E13EC14();
          v70 = v51;
          v71 = sub_21E13F1A4();
          v72 = sub_21E142554();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = v29;
            v75 = swift_slowAlloc();
            aBlock[0] = v75;
            *v73 = 136315138;
            BCSAction.logDescription.getter();
            v78 = sub_21E0E08C0(v76, v77, aBlock);

            *(v73 + 4) = v78;
            _os_log_impl(&dword_21DF05000, v71, v72, "Handling App Clip Code %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v75);
            v79 = v75;
            v29 = v74;
            MEMORY[0x223D540B0](v79, -1, -1);
            MEMORY[0x223D540B0](v73, -1, -1);

            v50 = v124;
            v80 = v119;
          }

          else
          {

            v80 = v69;
          }

          v47(v80, v5);
          v81 = [objc_opt_self() defaultWorkspace];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD678, &qword_21E1576C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21E145380;
          *(inited + 32) = sub_21E142124();
          *(inited + 40) = v83;
          *(inited + 48) = 1;
          v84 = sub_21DF26BE4(inited);
          swift_setDeallocating();
          sub_21DF23614(inited + 32, &qword_27CEAD680, &qword_21E1576C8);
          v85 = v125;
          if (v81)
          {
            v86 = v81;
            v87 = sub_21E13D1D4();
            sub_21E0DEFE0(v84);

            v88 = sub_21E141FF4();

            [v86 openSensitiveURL:v87 withOptions:v88];
          }

          else
          {
          }

          (*(v50 + 8))(v85, v127);
          goto LABEL_29;
        }
      }
    }

    (*(v50 + 8))(v49, v48);
    goto LABEL_19;
  }

  sub_21DF23614(v22, &qword_27CEA9990, &qword_21E148DD0);
  v51 = v123;
LABEL_19:
  v53 = [v51 payloadDataType];
  v54 = v121;
  if (v53 <= 0x10)
  {
    if (((1 << v53) & 0x16342) != 0)
    {
      sub_21E13EC14();
      v55 = v51;
      v56 = sub_21E13F1A4();
      v57 = sub_21E142554();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        v59 = [v55 actionPickerItems];
        if (v59)
        {
          v60 = v29;
          sub_21DF3ED18(0, &qword_27CEAD5B0, 0x277CF0AF8);
          v61 = sub_21E1422D4();

          if (v61 >> 62)
          {
            v59 = sub_21E1427B4();
          }

          else
          {
            v59 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v29 = v60;
        }

        *(v58 + 4) = v59;

        _os_log_impl(&dword_21DF05000, v56, v57, "Performing action via perform (%ld actionPickerItems available)", v58, 0xCu);
        MEMORY[0x223D540B0](v58, -1, -1);
      }

      else
      {

        v56 = v55;
      }

      v47(v54, v5);
      [v55 performAction];
      goto LABEL_29;
    }

    if (!v53)
    {
LABEL_62:
      v113 = [v51 payloadDataType];
      sub_21E0ECBF4();
      v114 = swift_allocError();
      *v115 = v113;
      *(v115 + 8) = 0;
      handleBarcodeError(_:)(v114);
      sub_21DF23614(v29, &qword_27CEA9990, &qword_21E148DD0);

      return;
    }
  }

  v62 = sub_21E1420F4();
  v63 = NSSelectorFromString(v62);

  if ([v51 respondsToSelector_])
  {
    v64 = v117;
    sub_21E13EC14();
    v65 = sub_21E13F1A4();
    v66 = sub_21E142554();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_21DF05000, v65, v66, "Performing action using performDefaultActionWithCompletionHandler:", v67, 2u);
      MEMORY[0x223D540B0](v67, -1, -1);
    }

    v47(v64, v5);
    aBlock[4] = sub_21E0DF4F0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E0DF538;
    aBlock[3] = &block_descriptor_389;
    v68 = _Block_copy(aBlock);
    [v51 performDefaultActionWithCompletionHandler_];
    _Block_release(v68);
    goto LABEL_29;
  }

  v89 = [v51 actionPickerItems];
  if (!v89)
  {
LABEL_59:
    sub_21E13EC14();
    v110 = sub_21E13F1A4();
    v111 = sub_21E142564();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_21DF05000, v110, v111, "Found zero action picker items", v112, 2u);
      MEMORY[0x223D540B0](v112, -1, -1);
    }

    v47(v118, v5);
    goto LABEL_62;
  }

  v90 = v89;
  sub_21DF3ED18(0, &qword_27CEAD5B0, 0x277CF0AF8);
  v91 = sub_21E1422D4();

  if (v91 >> 62)
  {
    if (sub_21E1427B4())
    {
      goto LABEL_44;
    }

    goto LABEL_58;
  }

  if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_58:

    goto LABEL_59;
  }

LABEL_44:
  if ((v91 & 0xC000000000000001) != 0)
  {
    v92 = MEMORY[0x223D530F0](0, v91);
  }

  else
  {
    if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v92 = *(v91 + 32);
  }

  v93 = v92;
  v94 = v116;
  sub_21E13EC14();

  v95 = v93;
  v96 = sub_21E13F1A4();
  v97 = sub_21E142554();

  if (os_log_type_enabled(v96, v97))
  {
    v127 = v29;
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    aBlock[0] = v99;
    *v98 = 134218242;
    if (v91 >> 62)
    {
      v100 = sub_21E1427B4();
    }

    else
    {
      v100 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v98 + 4) = v100;

    *(v98 + 12) = 2080;
    v101 = [v95 label];
    v102 = sub_21E142124();
    v104 = v103;

    v105 = sub_21E0E08C0(v102, v104, aBlock);

    *(v98 + 14) = v105;
    _os_log_impl(&dword_21DF05000, v96, v97, "Performing first of %ld actionPickerItems: (%s)", v98, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x223D540B0](v99, -1, -1);
    MEMORY[0x223D540B0](v98, -1, -1);

    v47(v116, v5);
    v29 = v127;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v47(v94, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD420, &unk_21E1453A0);
  v106 = swift_initStackObject();
  *(v106 + 16) = xmmword_21E145380;
  *(v106 + 32) = sub_21E142124();
  *(v106 + 40) = v107;
  *(v106 + 72) = MEMORY[0x277D839B0];
  *(v106 + 48) = 1;
  v108 = sub_21DF2667C(v106);
  swift_setDeallocating();
  sub_21DF23614(v106 + 32, &qword_27CEA6B98, &unk_21E14ED90);
  sub_21E0DF228(v108);

  v109 = sub_21E141FF4();

  [v95 performActionWithFBOptions_];

LABEL_29:
  sub_21DF23614(v29, &qword_27CEA9990, &qword_21E148DD0);
}

uint64_t sub_21E0EA254(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21E1427B4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD658, &qword_21E157618);
      v3 = sub_21E142864();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21E1427B4();
      if (!v5)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  result = sub_21E1423C4();
  v7 = 0;
  v8 = v3 + 56;
  v29 = v1 & 0xC000000000000001;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  v25 = v1 + 32;
  v28 = v1;
  v27 = v5;
  while (v29)
  {
    result = MEMORY[0x223D530F0](v7, v1);
    v9 = result;
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      goto LABEL_25;
    }

LABEL_18:
    v30 = v11;
    v12 = sub_21E142C14();
    v31[2] = v35;
    v31[3] = v36;
    v32 = v37;
    v31[0] = v33;
    v31[1] = v34;
    MEMORY[0x28223BE20](v12);
    v23 = v31;
    v24 = v9;
    sub_21E0C38E4(sub_21DFE8D14, v22, "VisualIntelligenceUI/NewActionModel.swift", 41, 2u, 186);
    result = sub_21E142C44();
    v13 = ~(-1 << *(v3 + 32));
    v14 = result & v13;
    v15 = (result & v13) >> 6;
    v16 = *(v8 + 8 * v15);
    v17 = 1 << (result & v13);
    if ((v17 & v16) != 0)
    {
      do
      {
        v18 = *(*(v3 + 48) + 8 * v14);
        MEMORY[0x28223BE20](result);
        v23 = v18;
        v24 = v9;

        v19 = sub_21E0C372C(sub_21DF60774, v22, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);

        if (v19)
        {

          v1 = v28;
          v5 = v27;
          goto LABEL_11;
        }

        v14 = (v14 + 1) & v13;
        v15 = v14 >> 6;
        v16 = *(v8 + 8 * (v14 >> 6));
        v17 = 1 << v14;
      }

      while (((1 << v14) & v16) != 0);
      v1 = v28;
      v5 = v27;
    }

    *(v8 + 8 * v15) = v17 | v16;
    *(*(v3 + 48) + 8 * v14) = v9;
    v20 = *(v3 + 16);
    v10 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v10)
    {
      goto LABEL_26;
    }

    *(v3 + 16) = v21;
LABEL_11:
    v7 = v30;
    if (v30 == v5)
    {
      return v3;
    }
  }

  if (v7 >= *(v26 + 16))
  {
    goto LABEL_27;
  }

  v9 = *(v25 + 8 * v7);

  v10 = __OFADD__(v7, 1);
  v11 = v7 + 1;
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_21E0EA5A8()
{
  result = qword_27CEAD590;
  if (!qword_27CEAD590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD588, &qword_21E156E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD590);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  v1 = sub_21E13EF04();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21E0EA720(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_21E13EF04() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_21E0EA798(uint64_t a1)
{
  v2 = sub_21E13D344();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD650, &unk_21E1575E0);
    v9 = sub_21E142864();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21E0ECD50(&qword_280F6C090, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v16 = sub_21E142014();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21E0ECD50(&qword_280F6C088, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v23 = sub_21E142074();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_21E0EAAB8(unint64_t *a1, unint64_t a2)
{
  v60 = sub_21E13EF04();
  v63 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77D8, &qword_21E147858);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = a1;
  v16 = *a1;
  v17 = a2;
  v18 = v64;
  result = sub_21E0E8C98(v16, a2);
  if (v18)
  {
    return a2;
  }

  v48 = v5;
  v49 = v15;
  v64 = v16;
  v52 = v14;
  v58 = v11;
  v59 = v6;
  if (v20)
  {
    if (v64 >> 62)
    {
      return sub_21E1427B4();
    }

    return *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2 = result;
  v57 = v8;
  v46 = 0;
  v21 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v54 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelection;
  v55 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  swift_beginAccess();
  v53 = (v63 + 48);
  v47 = (v63 + 32);
  v51 = (v63 + 8);
  v56 = v17;
  v22 = v52;
  v23 = v64;
  while (1)
  {
    if (v23 >> 62)
    {
      if (v21 == sub_21E1427B4())
      {
        return a2;
      }
    }

    else if (v21 == *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return a2;
    }

    v63 = a2;
    v64 = v23;
    v61 = v23 & 0xC000000000000001;
    v62 = v21;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x223D530F0](v21, v23);
      goto LABEL_16;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v25 = *(v23 + 8 * v21 + 32);

LABEL_16:
    swift_getKeyPath();
    v65 = v25;
    sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3C4();

    v26 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
    swift_beginAccess();
    sub_21DF236C0(v25 + v26, v22, &qword_27CEACB50, &qword_21E14FA80);
    swift_getKeyPath();
    v27 = v22;
    v28 = v56;
    v65 = v56;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
    sub_21E13D3C4();

    v29 = *(v59 + 48);
    v30 = v57;
    sub_21DF236C0(v27, v57, &qword_27CEACB50, &qword_21E14FA80);
    sub_21DF236C0(v28 + v54, v30 + v29, &qword_27CEACB50, &qword_21E14FA80);
    v31 = *v53;
    v32 = v60;
    if ((*v53)(v30, 1, v60) == 1)
    {
      sub_21DF23614(v27, &qword_27CEACB50, &qword_21E14FA80);
      v33 = v31(v30 + v29, 1, v32);
      v22 = v27;
      a2 = v63;
      if (v33 != 1)
      {
        goto LABEL_21;
      }

      sub_21DF23614(v30, &qword_27CEACB50, &qword_21E14FA80);

      v23 = v64;
      v34 = v62;
    }

    else
    {
      v35 = v32;
      v36 = v58;
      sub_21DF236C0(v30, v58, &qword_27CEACB50, &qword_21E14FA80);
      if (v31(v30 + v29, 1, v35) == 1)
      {
        v37 = v52;
        sub_21DF23614(v52, &qword_27CEACB50, &qword_21E14FA80);
        v38 = v36;
        v22 = v37;
        (*v51)(v38, v35);
        a2 = v63;
LABEL_21:
        sub_21DF23614(v30, &qword_27CEA77D8, &qword_21E147858);

        v23 = v64;
        v34 = v62;
LABEL_22:
        if (a2 != v34)
        {
          if (v61)
          {
            v61 = MEMORY[0x223D530F0](a2, v23);
            v39 = MEMORY[0x223D530F0](v34, v23);
          }

          else
          {
            if ((a2 & 0x8000000000000000) != 0)
            {
              goto LABEL_52;
            }

            v42 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a2 >= v42)
            {
              goto LABEL_53;
            }

            if (v34 >= v42)
            {
              goto LABEL_54;
            }

            v39 = *(v23 + 32 + 8 * v34);
            v61 = *(v23 + 32 + 8 * a2);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
          {
            v23 = sub_21E00E3E4(v23);
            v43 = (v23 >> 62) & 1;
          }

          else
          {
            LODWORD(v43) = 0;
          }

          v44 = v23 & 0xFFFFFFFFFFFFFF8;
          *((v23 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = v39;

          if ((v23 & 0x8000000000000000) != 0 || v43)
          {
            v23 = sub_21E00E3E4(v23);
            v44 = v23 & 0xFFFFFFFFFFFFFF8;
          }

          v45 = v49;
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_50;
          }

          if (v34 >= *(v44 + 16))
          {
            goto LABEL_51;
          }

          *(v44 + 8 * v34 + 32) = v61;

          *v45 = v23;
        }

        v24 = __OFADD__(a2++, 1);
        if (v24)
        {
          goto LABEL_49;
        }

        goto LABEL_9;
      }

      v40 = v48;
      (*v47)(v48, v30 + v29, v35);
      sub_21E0ECD50(&qword_280F69070, MEMORY[0x277D796B8], MEMORY[0x277D796C0]);
      v50 = sub_21E142074();
      v41 = *v51;
      (*v51)(v40, v35);
      v22 = v52;
      sub_21DF23614(v52, &qword_27CEACB50, &qword_21E14FA80);
      v41(v58, v35);
      sub_21DF23614(v30, &qword_27CEACB50, &qword_21E14FA80);

      a2 = v63;
      v23 = v64;
      v34 = v62;
      if ((v50 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_9:
    v24 = __OFADD__(v34, 1);
    v21 = v34 + 1;
    if (v24)
    {
      goto LABEL_48;
    }
  }

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
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_21E1427B4();
}

void sub_21E0EB2A8()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  sub_21E0D0AE0(*(v0 + 16), v2 | v3, *(v0 + 32), *(v0 + 40));
}

void sub_21E0EB3A0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = v3;
}

void sub_21E0EB438()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_21E0EB628(uint64_t a1)
{
  sub_21E13D344();
  if (v1 <= 0x3F)
  {
    sub_21E13D834();
    if (v2 <= 0x3F)
    {
      sub_21E0EB900(319, &qword_280F690C0, MEMORY[0x277D79330]);
      if (v3 <= 0x3F)
      {
        sub_21E0EB900(319, &qword_280F69068, MEMORY[0x277D796B8]);
        if (v4 <= 0x3F)
        {
          sub_21E13E3D4();
          if (v5 <= 0x3F)
          {
            sub_21E13D404();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_21E0EB900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E142724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for BarCodeActionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BarCodeActionError(uint64_t result, int a2, int a3)
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

uint64_t sub_21E0EB9A4(uint64_t a1)
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

uint64_t sub_21E0EB9C0(uint64_t result, int a2)
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

uint64_t sub_21E0EBA0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21DF8DAF8;

  return sub_21E0D0884();
}

uint64_t sub_21E0EBAE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DF8DAF8;

  return sub_21E0E79F8(a1, v4);
}

uint64_t sub_21E0EBBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13E084();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80, &qword_21E148AB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD610, &qword_21E1573E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEADA80, &qword_21E148AB0);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEADA80, &qword_21E148AB0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEADA80, &qword_21E148AB0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21E0ECD50(&qword_280F690D0, MEMORY[0x277D79330], MEMORY[0x277D79338]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEADA80, &qword_21E148AB0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEAD610, &qword_21E1573E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEADA80, &qword_21E148AB0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21E0EBEF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21E0EBF34(uint64_t a1)
{
  v2 = sub_21E13D994();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD5F8, &qword_21E157380);
    v9 = sub_21E142864();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21E0ECD50(&qword_27CEAD5F0, MEMORY[0x277D78FA8], MEMORY[0x277D78FB0]);
      v16 = sub_21E142014();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21E0ECD50(&qword_27CEAD5D8, MEMORY[0x277D78FA8], MEMORY[0x277D78FB8]);
          v23 = sub_21E142074();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21E0EC254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21DF8DAF8;

  return sub_21E0D7080(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_245Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21E0EC3C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF8DAF8;

  return sub_21E0CEFF8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_21E0EC50C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DF8DAF8;

  return sub_21E0D1458(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21E0EC5D0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_21E0D3738(a1, v6, v7, v4, v5);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E0EC688(uint64_t a1)
{
  v4 = v1[4];
  v13 = v1[5];
  v5 = v1[6];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21DF8DAF8;

  return sub_21E0D5CE4(a1, v7, v8, v1 + v6, v9, v4, v13, v5);
}

uint64_t sub_21E0EC7D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DF8DAF8;

  return sub_21E08E8F8(a1, v4);
}

uint64_t sub_21E0EC888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DF4AA04;

  return sub_21E08E8F8(a1, v4);
}

uint64_t sub_21E0EC984(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

void sub_21E0ECB70()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels) = *(v0 + 24);
}

unint64_t sub_21E0ECBF4()
{
  result = qword_27CEAD668;
  if (!qword_27CEAD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD668);
  }

  return result;
}

void sub_21E0ECCA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  *(v1 + v3) = v2;
  sub_21E0DDC20();
}

uint64_t sub_21E0ECD0C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity) = *(v0 + 24);
}

uint64_t sub_21E0ECD50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E0ECDF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_21E0ECE64@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t LighterRotatingContentLight.init(shimmer:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LighterRotatingContentLight.LoadingState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  *(a2 + 8) = 0x4046800000000000;
  type metadata accessor for LighterRotatingContentLight(0);
  v10 = sub_21E13F834();
  (*(*(v10 - 8) + 56))(v9, 1, 2, v10);
  sub_21E0EE3B8(v9, v6, type metadata accessor for LighterRotatingContentLight.LoadingState);
  sub_21E141704();
  result = sub_21E035544(v9);
  *a2 = a1;
  return result;
}

uint64_t LighterRotatingContentLight.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A8, &qword_21E157730);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for LighterRotatingContentLight(0);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21E140654();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_21E140644();
  sub_21E0EE3B8(v3, v11, type metadata accessor for LighterRotatingContentLight);
  v17 = a1;
  v18 = v5;
  (*(v6 + 16))(v8, v17, v5);
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  sub_21E0EE420(v11, v21 + v19);
  (*(v6 + 32))(v21 + v20, v8, v18);
  v22 = v27;
  (*(v12 + 16))(v25, v16, v27);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_21E0EE484;
  *(v23 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6B8, &qword_21E157740);
  sub_21E0EFB60(&qword_27CEAD6C0, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  sub_21E0EF778();
  sub_21E13F5A4();
  return (*(v12 + 8))(v16, v22);
}

uint64_t sub_21E0ED5C8@<X0>(uint64_t a1@<X0>, long double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v88 = a1;
  v98 = a4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD748, &qword_21E157858);
  v75 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v74 = &v73 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD750, &qword_21E157860);
  MEMORY[0x28223BE20](v79);
  v78 = &v73 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD758, &qword_21E157868);
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v73 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD700, &qword_21E157758);
  MEMORY[0x28223BE20](v97);
  v82 = &v73 - v8;
  v9 = sub_21E13D304();
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9);
  v84 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13F834();
  v99 = *(v11 - 8);
  v12 = *(v99 + 64);
  MEMORY[0x28223BE20](v11);
  v87 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v73 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD760, &qword_21E157870);
  MEMORY[0x28223BE20](v94);
  v96 = &v73 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD768, &qword_21E157878);
  MEMORY[0x28223BE20](v89);
  v17 = &v73 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6D8, &qword_21E157748);
  MEMORY[0x28223BE20](v95);
  OpaqueTypeConformance2 = &v73 - v18;
  v19 = type metadata accessor for LighterRotatingContentLight(0);
  v83 = *(v19 - 8);
  v20 = *(v83 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6E8, &qword_21E157750);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v24 = type metadata accessor for LighterRotatingContentLight.LoadingState(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6B0, &qword_21E157738);
  sub_21E141714();
  v27 = v99;
  v28 = *(v99 + 48);
  v92 = v11;
  v29 = v28(v26, 2, v11);
  if (v29)
  {
    if (v29 == 1)
    {
      sub_21E0EE3B8(a2, &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LighterRotatingContentLight);
      v30 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v31 = swift_allocObject();
      sub_21E0EE420(&v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
      v32 = &v23[*(v21 + 36)];
      sub_21E13F844();
      sub_21E1423D4();
      *v32 = &unk_21E157888;
      *(v32 + 1) = v31;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A8, &qword_21E157730);
      (*(*(v33 - 8) + 16))(v23, v93, v33);
      sub_21DF236C0(v23, v17, &qword_27CEAD6E8, &qword_21E157750);
      swift_storeEnumTagMultiPayload();
      sub_21E0EF890();
      sub_21E0EF94C();
      v34 = OpaqueTypeConformance2;
      sub_21E1402F4();
      sub_21DF236C0(v34, v96, &qword_27CEAD6D8, &qword_21E157748);
      swift_storeEnumTagMultiPayload();
      sub_21E0EF804();
      sub_21E0EF9B0();
      sub_21E1402F4();
      sub_21DF23614(v34, &qword_27CEAD6D8, &qword_21E157748);
      return sub_21DF23614(v23, &qword_27CEAD6E8, &qword_21E157750);
    }

    else
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A8, &qword_21E157730);
      (*(*(v58 - 8) + 16))(v17, v93, v58);
      swift_storeEnumTagMultiPayload();
      sub_21E0EF890();
      sub_21E0EF94C();
      v59 = OpaqueTypeConformance2;
      sub_21E1402F4();
      sub_21DF236C0(v59, v96, &qword_27CEAD6D8, &qword_21E157748);
      swift_storeEnumTagMultiPayload();
      sub_21E0EF804();
      sub_21E0EF9B0();
      sub_21E1402F4();
      return sub_21DF23614(v59, &qword_27CEAD6D8, &qword_21E157748);
    }
  }

  else
  {
    v36 = *(v27 + 32);
    v38 = v91;
    v37 = v92;
    v36(v91, v26, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD738, &qword_21E157848);
    v39 = v84;
    sub_21E13F594();
    sub_21E13D2A4();
    v41 = v40;
    (*(v85 + 8))(v39, v86);
    v42 = fmod(v41, a2[1]);
    LODWORD(v39) = *a2;
    v43 = v87;
    (*(v27 + 16))(v87, v38, v37);
    v44 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v45 = (v12 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v39 == 1)
    {
      v46 = swift_allocObject();
      v36((v46 + v44), v43, v92);
      *(v46 + v45) = v42;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A8, &qword_21E157730);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD708, &qword_21E157760);
      v49 = sub_21E0EF94C();
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD710, &qword_21E157768);
      v89 = v50;
      v51 = sub_21E13FD44();
      v52 = sub_21E0EFB60(&qword_27CEAD718, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
      v100 = v51;
      v101 = v52;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v100 = v50;
      v101 = OpaqueTypeConformance2;
      v53 = swift_getOpaqueTypeConformance2();
      v54 = v76;
      MEMORY[0x223D51700](sub_21E0F0434, v46, v47, v48, v49, v53);

      v55 = v77;
      v56 = v80;
      (*(v77 + 16))(v78, v54, v80);
      swift_storeEnumTagMultiPayload();
      v100 = v47;
      v101 = v48;
      v102 = v49;
      v103 = v53;
      swift_getOpaqueTypeConformance2();
      v100 = v47;
      v101 = v89;
      v102 = v49;
      v103 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v57 = v82;
      sub_21E1402F4();
      (*(v55 + 8))(v54, v56);
    }

    else
    {
      v60 = swift_allocObject();
      v36((v60 + v44), v43, v92);
      *(v60 + v45) = v42;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A8, &qword_21E157730);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD710, &qword_21E157768);
      v63 = sub_21E0EF94C();
      OpaqueTypeConformance2 = v63;
      v64 = sub_21E13FD44();
      v65 = sub_21E0EFB60(&qword_27CEAD718, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
      v100 = v64;
      v101 = v65;
      v66 = swift_getOpaqueTypeConformance2();
      v67 = v74;
      MEMORY[0x223D51700](sub_21E0F0388, v60, v61, v62, v63, v66);

      v68 = v75;
      v69 = v81;
      (*(v75 + 16))(v78, v67, v81);
      swift_storeEnumTagMultiPayload();
      v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD708, &qword_21E157760);
      v100 = v62;
      v101 = v66;
      v71 = swift_getOpaqueTypeConformance2();
      v100 = v61;
      v101 = v70;
      v72 = OpaqueTypeConformance2;
      v102 = OpaqueTypeConformance2;
      v103 = v71;
      swift_getOpaqueTypeConformance2();
      v100 = v61;
      v101 = v62;
      v102 = v72;
      v103 = v66;
      swift_getOpaqueTypeConformance2();
      v57 = v82;
      sub_21E1402F4();
      (*(v68 + 8))(v67, v69);
    }

    sub_21DF1C194(v57, v96);
    swift_storeEnumTagMultiPayload();
    sub_21E0EF804();
    sub_21E0EF9B0();
    sub_21E1402F4();
    sub_21DF1C204(v57);
    return (*(v99 + 8))(v91, v92);
  }
}

uint64_t sub_21E0EE3B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E0EE420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LighterRotatingContentLight(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0EE488()
{
  v0[2] = sub_21E1423C4();
  v0[3] = sub_21E1423B4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21DF81DC0;

  return sub_21E0EE534();
}

uint64_t sub_21E0EE534()
{
  v1[2] = v0;
  type metadata accessor for LighterRotatingContentLight.LoadingState(0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_21E1423C4();
  v1[7] = sub_21E1423B4();
  v3 = sub_21E142364();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_21E0EE61C, v3, v2);
}

uint64_t sub_21E0EE61C()
{
  v1 = *(v0 + 48);
  *(v0 + 112) = *(type metadata accessor for LighterRotatingContentLight(0) + 24);
  *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6B0, &qword_21E157738);
  sub_21E141714();
  v2 = sub_21E13F834();
  *(v0 + 88) = v2;
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 2, v2);
  if (v4)
  {
    if (v4 == 1)
    {
      v6 = *(v0 + 32);
      v5 = *(v0 + 40);
      v7 = *(v3 + 56);
      *(v0 + 96) = v7;
      *(v0 + 104) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v7(v5, 2, 2, v2);
      sub_21E0EE3B8(v5, v6, type metadata accessor for LighterRotatingContentLight.LoadingState);
      sub_21E141724();
      sub_21E035544(v5);

      return MEMORY[0x2822009F8](sub_21E0EE81C, 0, 0);
    }
  }

  else
  {
    v8 = *(v0 + 48);

    sub_21E035544(v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21E0EE81C()
{
  v1 = sub_21E1420F4();
  v2 = [objc_opt_self() bundleWithIdentifier_];

  if (v2)
  {
    v6 = v0[12];
    v7 = v0[11];
    v8 = v0[3];
    sub_21E13F824();

    v6(v8, 0, 2, v7);
    v4 = v0[8];
    v5 = v0[9];
    v3 = sub_21E0EE90C;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21E0EE90C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  sub_21E0EE3B8(v3, v1, type metadata accessor for LighterRotatingContentLight.LoadingState);
  sub_21E0EE3B8(v1, v2, type metadata accessor for LighterRotatingContentLight.LoadingState);
  sub_21E141724();
  sub_21E035544(v1);
  sub_21E035544(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21E0EEA0C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[2] = a3;
  v32 = a4;
  v33 = a2;
  v26 = a1;
  v5 = sub_21E141424();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21E13F8C4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21E1418A4();
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD710, &qword_21E157768);
  v14 = *(v13 - 8);
  v30 = v13;
  v31 = v14;
  MEMORY[0x28223BE20](v13);
  v24 = v21 - v15;
  sub_21E13F804();
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD770, &qword_21E157898);
  sub_21E141894();
  *(swift_allocObject() + 16) = xmmword_21E147C80;
  sub_21E13F714();
  sub_21E141884();
  sub_21E141874();
  sub_21E13F8B4();

  v16 = *(v37 + 8);
  v37 += 8;
  v25 = v16;
  v16(v8, v34);
  v23 = sub_21E13FD44();
  v22 = sub_21E0EFB60(&qword_27CEAD718, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  sub_21E13F634();
  v17 = *(v36 + 8);
  v36 += 8;
  v26 = v17;
  v17(v12, v35);
  sub_21E13F804();
  *(swift_allocObject() + 16) = xmmword_21E157720;
  (*(v28 + 104))(v27, *MEMORY[0x277CE0EE0], v29);
  sub_21E1415A4();
  sub_21E141864();

  sub_21E141874();
  sub_21E141874();
  sub_21E141874();
  sub_21E141874();
  sub_21E13F714();
  sub_21E141884();
  sub_21E141874();
  sub_21E141874();
  sub_21E141874();
  sub_21E13F8B4();

  v25(v8, v34);
  v38 = v23;
  v39 = v22;
  swift_getOpaqueTypeConformance2();
  v18 = v30;
  v19 = v24;
  sub_21E13F634();
  v26(v12, v35);
  return (*(v31 + 8))(v19, v18);
}

uint64_t sub_21E0EEFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a1;
  v4 = sub_21E13F8C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E1418A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13F804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD770, &qword_21E157898);
  sub_21E141894();
  *(swift_allocObject() + 16) = xmmword_21E147C80;
  sub_21E13F714();
  sub_21E141884();
  sub_21E141874();
  sub_21E13F8B4();

  (*(v5 + 8))(v7, v4);
  sub_21E13FD44();
  sub_21E0EFB60(&qword_27CEAD718, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  sub_21E13F634();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21E0EF294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v30 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A8, &qword_21E157730);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v28 = *(a2 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21E140654();
  v14 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v27 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  sub_21E140644();
  sub_21E0EE3B8(v5, v13, type metadata accessor for LighterRotatingContentLight);
  v19 = a1;
  v20 = v7;
  (*(v8 + 16))(v10, v19, v7);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = (v11 + v21 + *(v8 + 80)) & ~*(v8 + 80);
  v23 = swift_allocObject();
  sub_21E0EE420(v13, v23 + v21);
  (*(v8 + 32))(v23 + v22, v10, v20);
  v24 = v29;
  (*(v14 + 16))(v27, v18, v29);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_21E0F05E4;
  *(v25 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6B8, &qword_21E157740);
  sub_21E0EFB60(&qword_27CEAD6C0, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  sub_21E0EF778();
  sub_21E13F5A4();
  return (*(v14 + 8))(v18, v24);
}

uint64_t sub_21E0EF628(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD738, &qword_21E157848);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD740, &qword_21E157850);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21E0EF778()
{
  result = qword_27CEAD6C8;
  if (!qword_27CEAD6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD6B8, &qword_21E157740);
    sub_21E0EF804();
    sub_21E0EF9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD6C8);
  }

  return result;
}

unint64_t sub_21E0EF804()
{
  result = qword_27CEAD6D0;
  if (!qword_27CEAD6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD6D8, &qword_21E157748);
    sub_21E0EF890();
    sub_21E0EF94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD6D0);
  }

  return result;
}

unint64_t sub_21E0EF890()
{
  result = qword_27CEAD6E0;
  if (!qword_27CEAD6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD6E8, &qword_21E157750);
    sub_21E0EF94C();
    sub_21E0EFB60(&unk_280F68FF0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD6E0);
  }

  return result;
}

unint64_t sub_21E0EF94C()
{
  result = qword_27CEAD6F0;
  if (!qword_27CEAD6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD6A8, &qword_21E157730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD6F0);
  }

  return result;
}

unint64_t sub_21E0EF9B0()
{
  result = qword_27CEAD6F8;
  if (!qword_27CEAD6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD700, &qword_21E157758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD6A8, &qword_21E157730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD708, &qword_21E157760);
    sub_21E0EF94C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD710, &qword_21E157768);
    sub_21E13FD44();
    sub_21E0EFB60(&qword_27CEAD718, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD6F8);
  }

  return result;
}

uint64_t sub_21E0EFB60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21E0EFBEC(uint64_t a1)
{
  sub_21E0EFC70(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21E0EFC70(uint64_t a1)
{
  if (!qword_280F68D80)
  {
    type metadata accessor for LighterRotatingContentLight.LoadingState(255);
    v1 = sub_21E141744();
    if (!v2)
    {
      atomic_store(v1, &qword_280F68D80);
    }
  }
}

unint64_t sub_21E0EFCC8()
{
  result = qword_27CEAD720;
  if (!qword_27CEAD720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD728, &qword_21E157800);
    sub_21E0EF778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAD720);
  }

  return result;
}

uint64_t sub_21E0EFD74(uint64_t a1)
{
  v1 = sub_21E13F834();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21E0EFDCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13F834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LighterRotatingContentLight.LoadingState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD730, &qword_21E157840);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21E0EE3B8(a1, &v21 - v12, type metadata accessor for LighterRotatingContentLight.LoadingState);
  sub_21E0EE3B8(a2, &v13[v15], type metadata accessor for LighterRotatingContentLight.LoadingState);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_21E0EE3B8(v13, v10, type metadata accessor for LighterRotatingContentLight.LoadingState);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = sub_21E13F814();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_21E035544(v13);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_21DF23614(v13, &qword_27CEAD730, &qword_21E157840);
    v18 = 0;
    return v18 & 1;
  }

  sub_21E035544(v13);
  v18 = 1;
  return v18 & 1;
}

uint64_t objectdestroyTm_27()
{
  v1 = (type metadata accessor for LighterRotatingContentLight(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A8, &qword_21E157730);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v1[8] + v2;
  v8 = sub_21E13F834();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 2, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6B0, &qword_21E157738);

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_21E0F0298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LighterRotatingContentLight(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6A8, &qword_21E157730) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21E0ED5C8(a1, (v2 + v6), v9, a2);
}

uint64_t objectdestroy_26Tm()
{
  v1 = sub_21E13F834();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21E0F044C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, __n128))
{
  v6 = *(sub_21E13F834() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8.n128_u64[0] = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v8);
}

uint64_t sub_21E0F0514()
{
  type metadata accessor for LighterRotatingContentLight(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21DF4AA04;

  return sub_21E0EE488();
}

uint64_t sub_21E0F05E8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0, &qword_21E147730);
    return a2;
  }

  return result;
}

uint64_t sub_21E0F0688(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21E13EC94();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 horizontalAccuracy];
  v10 = v9 * 10.0;
  [a1 coordinate];
  v11 = MKMapPointForCoordinate(v49);
  sub_21E13EC64();
  sub_21E13EC84();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v8, v4);
  v15 = v11.x + v10 * sin(v13);
  sub_21E13EC64();
  sub_21E13EC84();
  v17 = v16;
  v14(v8, v4);
  v18 = v11.y - v10 * cos(v17);
  sub_21E13EC54();
  sub_21E13EC84();
  v20 = v19;
  v14(v8, v4);
  v21 = v10 * sin(v20);
  sub_21E13EC54();
  sub_21E13EC84();
  v23 = v22;
  v14(v8, v4);
  v24 = v10 * cos(v23);
  v48 = MEMORY[0x277D84F90];
  sub_21DF5C340(0, 3, 0);
  v25 = v48;
  v28 = MKCoordinateForMapPoint(v11);
  longitude = v28.longitude;
  latitude = v28.latitude;
  v30 = *(v25 + 16);
  v29 = *(v25 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_21DF5C340((v29 > 1), v30 + 1, 1);
    longitude = v28.longitude;
    latitude = v28.latitude;
    v25 = v48;
  }

  *(v25 + 16) = v30 + 1;
  v31 = v25 + 16 * v30;
  *(v31 + 32) = latitude;
  *(v31 + 40) = longitude;
  v50.x = v15;
  v50.y = v18;
  v34 = MKCoordinateForMapPoint(v50);
  v33 = v34.longitude;
  v32 = v34.latitude;
  v36 = *(v25 + 16);
  v35 = *(v25 + 24);
  if (v36 >= v35 >> 1)
  {
    sub_21DF5C340((v35 > 1), v36 + 1, 1);
    v33 = v34.longitude;
    v32 = v34.latitude;
    v25 = v48;
  }

  *(v25 + 16) = v36 + 1;
  v37 = v25 + 16 * v36;
  *(v37 + 32) = v32;
  *(v37 + 40) = v33;
  v51.x = v11.x + v21;
  v51.y = v11.y - v24;
  v40 = MKCoordinateForMapPoint(v51);
  v39 = v40.longitude;
  v38 = v40.latitude;
  v42 = *(v25 + 16);
  v41 = *(v25 + 24);
  if (v42 >= v41 >> 1)
  {
    sub_21DF5C340((v41 > 1), v42 + 1, 1);
    v39 = v40.longitude;
    v38 = v40.latitude;
  }

  v43 = v48;
  *(v48 + 16) = v42 + 1;
  v44 = (v43 + 32 + 16 * v42);
  *v44 = v38;
  v44[1] = v39;
  v45 = [objc_opt_self() polygonWithCoordinates:v43 + 32 count:v42 + 1];

  return sub_21E13D644();
}

uint64_t GeoLocationEstimate.body.getter@<X0>(char *a1@<X8>)
{
  v122 = a1;
  v120 = sub_21E13E144();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD778, &qword_21E1578B0);
  MEMORY[0x28223BE20](v2 - 8);
  v121 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v125 = &v90 - v5;
  v94 = sub_21E13D634();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD780, &qword_21E1578B8);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v90 - v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD788, &qword_21E1578C0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v91 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD790, &qword_21E1578C8);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v109 = &v90 - v12;
  v108 = sub_21E13EC94();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v105 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD798, &unk_21E1578D0);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v90 - v19;
  v20 = sub_21E13D5B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD288, &unk_21E1564F0);
  v127 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v25 = &v90 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD290, &qword_21E1578E0);
  v115 = *(v26 - 8);
  v116 = v26;
  MEMORY[0x28223BE20](v26);
  v114 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v90 - v29;
  v31 = sub_21E13E134();
  [v31 coordinate];
  v123 = v31;
  [v31 horizontalAccuracy];
  sub_21E13D5A4();
  sub_21E141444();
  v32 = sub_21E141514();

  v128 = v32;
  v33 = MEMORY[0x277CE0F78];
  v34 = MEMORY[0x277CE42E0];
  v35 = MEMORY[0x277CE0F60];
  sub_21E13D5E4();

  v36 = *(v21 + 8);
  v102 = v23;
  v37 = v23;
  v38 = v107;
  v103 = v21 + 8;
  v100 = v36;
  v36(v37, v20);
  v39 = sub_21E141444();
  v131 = v35;
  v132 = v39;
  v104 = v20;
  v128 = v20;
  v129 = v33;
  v40 = v106;
  v130 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = v30;
  v42 = v124;
  v99 = OpaqueTypeConformance2;
  sub_21E13D624();

  v43 = *(v127 + 8);
  v97 = v25;
  v127 += 8;
  v98 = v43;
  v43(v25, v42);
  v44 = v108;
  v45 = v109;
  sub_21E13E124();
  v46 = *(v38 + 48);
  if (v46(v45, 1, v44) == 1)
  {
    v47 = v45;
    v48 = v125;
    v49 = v117;
LABEL_5:
    sub_21E0F1870(v47);
    v53 = 1;
    v54 = v120;
    v55 = v118;
    v56 = v126;
    v57 = v112;
    v58 = v111;
    goto LABEL_7;
  }

  v50 = *(v38 + 32);
  v51 = v105;
  v50(v105, v45, v44);
  v52 = v110;
  sub_21E13E114();
  if (v46(v52, 1, v44) == 1)
  {
    (*(v38 + 8))(v51, v44);
    v48 = v125;
    v49 = v117;
    v47 = v110;
    goto LABEL_5;
  }

  v59 = v101;
  v50(v101, v110, v44);
  v60 = v90;
  sub_21E0F0688(v123, v51, v59);
  sub_21E141444();
  v61 = v38;
  v62 = sub_21E141514();

  v128 = v62;
  v63 = MEMORY[0x277CE4310];
  v64 = v93;
  v65 = v94;
  v66 = MEMORY[0x277CE0F78];
  sub_21E13D5E4();

  (*(v92 + 8))(v60, v65);
  v132 = sub_21E141444();
  v128 = v65;
  v129 = v66;
  v130 = v63;
  v131 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  v67 = v91;
  v68 = v96;
  sub_21E13D624();

  (*(v95 + 8))(v64, v68);
  v69 = *(v61 + 8);
  v69(v101, v44);
  v69(v105, v44);
  v58 = v111;
  v56 = v126;
  v70 = v112;
  (*(v111 + 32))(v126, v67, v112);
  v57 = v70;
  v53 = 0;
  v48 = v125;
  v54 = v120;
  v49 = v117;
  v55 = v118;
LABEL_7:
  (*(v58 + 56))(v56, v53, 1, v57);
  (*(v55 + 16))(v49, v40, v54);
  if ((*(v55 + 88))(v49, v54) == *MEMORY[0x277D79380])
  {
    (*(v55 + 96))(v49, v54);
    v71 = *(v49 + 1);

    [v71 coordinate];
    [v71 horizontalAccuracy];
    v72 = v102;
    sub_21E13D5A4();
    sub_21E1414F4();
    v73 = sub_21E141514();

    v128 = v73;
    v74 = v97;
    v75 = v104;
    sub_21E13D5E4();

    v100(v72, v75);
    v128 = sub_21E1414F4();
    v76 = v114;
    v77 = v124;
    sub_21E13D624();

    v78 = v77;
    v48 = v125;
    v98(v74, v78);
    v80 = v115;
    v79 = v116;
    (*(v115 + 32))(v48, v76, v116);
    v81 = 0;
  }

  else
  {
    (*(v55 + 8))(v49, v54);
    v81 = 1;
    v80 = v115;
    v79 = v116;
    v76 = v114;
  }

  (*(v80 + 56))(v48, v81, 1, v79);
  v82 = *(v80 + 16);
  v83 = v113;
  v82(v76, v113, v79);
  v84 = v119;
  sub_21DF236C0(v56, v119, &qword_27CEAD798, &unk_21E1578D0);
  v85 = v121;
  sub_21DF236C0(v48, v121, &qword_27CEAD778, &qword_21E1578B0);
  v86 = v122;
  v82(v122, v76, v79);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD7A0, &qword_21E1578E8);
  sub_21DF236C0(v84, &v86[*(v87 + 48)], &qword_27CEAD798, &unk_21E1578D0);
  sub_21DF236C0(v85, &v86[*(v87 + 64)], &qword_27CEAD778, &qword_21E1578B0);

  sub_21DF23614(v48, &qword_27CEAD778, &qword_21E1578B0);
  sub_21DF23614(v126, &qword_27CEAD798, &unk_21E1578D0);
  v88 = *(v80 + 8);
  v88(v83, v79);
  sub_21DF23614(v85, &qword_27CEAD778, &qword_21E1578B0);
  sub_21DF23614(v84, &qword_27CEAD798, &unk_21E1578D0);
  return (v88)(v76, v79);
}

uint64_t sub_21E0F1870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD790, &qword_21E1578C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GeoLocateResultToText(state:)(uint64_t a1)
{
  v2 = sub_21E13E144();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v51 - v7;
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - v9;
  v10 = sub_21E13D344();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E13DBB4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D790E0])
  {
    (*(v15 + 96))(v18, v14);
    (*(v11 + 8))(v18, v10);
    return 0xD000000000000020;
  }

  if (v19 == *MEMORY[0x277D790E8])
  {
    (*(v15 + 96))(v18, v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD7A8, &unk_21E1578F0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 64);
    (*(v11 + 32))(v13, v18, v10);
    v52 = v11;
    v53 = v10;
    v24 = *(v3 + 32);
    v25 = v55;
    v24(v55, &v18[v22], v2);
    v24(v56, &v18[v23], v2);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_21E142884();
    MEMORY[0x223D52A60](0xD00000000000002ELL, 0x800000021E15F530);
    v26 = sub_21E13E134();
    [v26 coordinate];
    v28 = v27;
    v30 = v29;

    v57 = v28;
    v58 = v30;
    type metadata accessor for CLLocationCoordinate2D(0);
    sub_21E1429B4();
    MEMORY[0x223D52A60](0x44496B6361727420, 0xEA0000000000203ALL);
    v54 = v13;
    v31 = sub_21E13D314();
    v34 = sub_21E0F41C8(8, v31, v32, v33);
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = MEMORY[0x223D52A20](v34, v36, v38, v40);
    v43 = v42;

    MEMORY[0x223D52A60](v41, v43);

    v20 = v59;
    v44 = v60;
    (*(v3 + 16))(v5, v25, v2);
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D79380])
    {
      (*(v3 + 96))(v5, v2);
      v45 = *v5;

      v59 = 0;
      v60 = 0xE000000000000000;
      sub_21E142884();
      MEMORY[0x223D52A60](0xD00000000000001ALL, 0x800000021E15F560);
      [v45 horizontalAccuracy];
      sub_21E142484();
      v46 = v59;
      v47 = v60;
      v59 = v20;
      v60 = v44;

      MEMORY[0x223D52A60](v46, v47);

      v20 = v59;
      v48 = *(v3 + 8);
      v48(v56, v2);
      v48(v25, v2);
      (*(v52 + 8))(v54, v53);
    }

    else
    {
      v49 = *(v3 + 8);
      v49(v56, v2);
      v49(v25, v2);
      (*(v52 + 8))(v54, v53);
      v49(v5, v2);
    }

    return v20;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t GeoLocateResultView.init(state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E13DBB4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void sub_21E0F1F9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21E1427B4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v49 = MEMORY[0x277D84F90];
    sub_21DF5C320(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_73;
    }

    v4 = 0;
    v5 = v49;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D530F0](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      [v6 coordinate];
      v9 = v8;

      v11 = *(v49 + 16);
      v10 = *(v49 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_21DF5C320((v10 > 1), v11 + 1, 1);
      }

      ++v4;
      *(v49 + 16) = v12;
      *(v49 + 8 * v11 + 32) = v9;
    }

    while (v2 != v4);
  }

  else
  {
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {

      v13 = INFINITY;
      goto LABEL_30;
    }

    v5 = MEMORY[0x277D84F90];
  }

  v13 = INFINITY;
  v14 = 32;
  do
  {
    if (*(v5 + v14) < v13)
    {
      v13 = *(v5 + v14);
    }

    v14 += 8;
    --v12;
  }

  while (v12);

  if (v2)
  {
    sub_21DF5C320(0, v2 & ~(v2 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v16 = v3;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x223D530F0](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        [v17 coordinate];
        v20 = v19;

        v22 = *(v3 + 16);
        v21 = *(v3 + 24);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          sub_21DF5C320((v21 > 1), v22 + 1, 1);
        }

        ++v15;
        *(v3 + 16) = v23;
        *(v3 + 8 * v22 + 32) = v20;
      }

      while (v2 != v15);
      goto LABEL_32;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_30:
  v23 = *(v3 + 16);
  if (!v23)
  {

    v24 = INFINITY;
    goto LABEL_47;
  }

  v16 = v3;
LABEL_32:
  v24 = INFINITY;
  v25 = 32;
  do
  {
    if (*(v16 + v25) < v24)
    {
      v24 = *(v16 + v25);
    }

    v25 += 8;
    --v23;
  }

  while (v23);

  if (v2)
  {
    sub_21DF5C320(0, v2 & ~(v2 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v27 = v3;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x223D530F0](v26, a1);
        }

        else
        {
          v28 = *(a1 + 8 * v26 + 32);
        }

        v29 = v28;
        [v28 coordinate];
        v31 = v30;

        v33 = *(v3 + 16);
        v32 = *(v3 + 24);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          sub_21DF5C320((v32 > 1), v33 + 1, 1);
        }

        ++v26;
        *(v3 + 16) = v34;
        *(v3 + 8 * v33 + 32) = v31;
      }

      while (v2 != v26);
      goto LABEL_49;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_47:
  v34 = *(v3 + 16);
  if (!v34)
  {

    v35 = -INFINITY;
    goto LABEL_64;
  }

  v27 = v3;
LABEL_49:
  v35 = -INFINITY;
  v36 = 32;
  do
  {
    if (v35 <= *(v27 + v36))
    {
      v35 = *(v27 + v36);
    }

    v36 += 8;
    --v34;
  }

  while (v34);

  if (!v2)
  {
LABEL_64:
    v44 = *(v3 + 16);
    if (!v44)
    {
      v45 = -INFINITY;
LABEL_69:

      v47 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v13 longitude:v24];
      v48 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v35 longitude:v45];
      [v47 distanceFromLocation_];

      v50.latitude = (v13 + v35) * 0.5;
      v50.longitude = (v24 + v45) * 0.5;
      MKMapPointForCoordinate(v50);
      return;
    }

LABEL_65:
    v45 = -INFINITY;
    v46 = 32;
    do
    {
      if (v45 <= *(v3 + v46))
      {
        v45 = *(v3 + v46);
      }

      v46 += 8;
      --v44;
    }

    while (v44);
    goto LABEL_69;
  }

  sub_21DF5C320(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x223D530F0](i, a1);
      }

      else
      {
        v38 = *(a1 + 8 * i + 32);
      }

      v39 = v38;
      [v38 coordinate];
      v41 = v40;

      v43 = *(v3 + 16);
      v42 = *(v3 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        sub_21DF5C320((v42 > 1), v43 + 1, 1);
      }

      *(v3 + 16) = v44;
      *(v3 + 8 * v43 + 32) = v41;
    }

    goto LABEL_65;
  }

LABEL_75:
  __break(1u);
}