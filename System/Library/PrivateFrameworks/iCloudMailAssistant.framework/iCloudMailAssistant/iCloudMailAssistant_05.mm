uint64_t sub_2149105DC(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for MANavigationLinkView(0) + 40)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    sub_21498E750();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C270, &qword_21499A2C8);
    return sub_21498F420();
  }

  else
  {
    sub_21498E8C0();
    sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

unint64_t sub_214910740@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214914540(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_214910770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214914540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214910798(uint64_t a1)
{
  v2 = sub_214914178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149107D4(uint64_t a1)
{
  v2 = sub_214914178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214910810@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v63 = sub_21498E6A0();
  v60 = *(v63 - 8);
  v3 = MEMORY[0x28223BE20](v63);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v52 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v52 - v8;
  v55 = sub_21498E350();
  v62 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C288, &qword_21499A2D8);
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = type metadata accessor for MANavigationLinkView(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v17 + *(v15 + 32)) = MEMORY[0x277D84F90];
  v18 = (v17 + *(v15 + 36));
  sub_21498E870();
  v19 = MEMORY[0x277D233A0];
  sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);
  v68 = sub_21498ED20();
  *v18 = v68;
  v18[1] = v20;
  v21 = (v17 + v14[10]);
  sub_21498E8C0();
  sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330], v19);
  v67 = sub_21498ED20();
  *v21 = v67;
  v21[1] = v22;
  v23 = v17 + v14[11];
  KeyPath = swift_getKeyPath();
  *v23 = KeyPath;
  v23[8] = 0;
  v24 = v17 + v14[12];
  v73 = 0;
  sub_21498F400();
  v25 = v72;
  *v24 = v71;
  v65 = v25;
  *(v24 + 1) = v25;
  v26 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_214914178();
  v27 = v69;
  sub_2149901B0();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    v28 = v62;
    v71 = 0;
    v29 = sub_21498FF20();
    v31 = v13;
    v32 = v11;
    v69 = v31;
    if (!v30)
    {
      v34 = v10;
      sub_21498E340();
      v35 = sub_21498E330();
      v37 = v36;
      (*(v28 + 8))(v34, v55);
      v30 = v37;
      v29 = v35;
    }

    v38 = v60;
    *v17 = v29;
    v17[1] = v30;
    v62 = v30;
    v71 = 1;
    sub_2148B4C20(&qword_27CA1BC18, &qword_27CA1AD30, &unk_214997FD0, MEMORY[0x277D23238]);
    v39 = v59;
    v40 = v61;
    sub_21498FF40();
    v55 = v32;
    v41 = v58;
    v42 = *(v58 + 48);
    if (v42(v39, 1, v40) == 1)
    {
      v43 = v56;
      *v56 = 0;
      (*(v41 + 104))(v43, *MEMORY[0x277D23230], v40);
      v44 = v42(v39, 1, v40);
      v45 = v43;
      v38 = v60;
      if (v44 != 1)
      {
        sub_21489DFCC(v39, &qword_27CA1AC78, qword_214999F40);
      }
    }

    else
    {
      v45 = v56;
      (*(v41 + 32))(v56, v39, v40);
    }

    (*(v41 + 32))(v17 + v14[5], v45, v40);
    v71 = 2;
    v46 = sub_21490F6E8(&qword_27CA1B770, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
    v47 = v57;
    v48 = v63;
    v49 = v55;
    v59 = v46;
    v50 = v69;
    sub_21498FFA0();
    v51 = *(v38 + 32);
    v51(v17 + v14[6], v47, v48);
    v71 = 3;
    sub_21498FFA0();
    (*(v64 + 8))(v50, v49);
    v51(v17 + v14[7], v54, v48);
    sub_214914048(v17, v53, type metadata accessor for MANavigationLinkView);
    __swift_destroy_boxed_opaque_existential_1(v70);
    return sub_2149141CC(v17, type metadata accessor for MANavigationLinkView);
  }
}

uint64_t sub_21491109C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1B8E8, type metadata accessor for MANavigationLinkView, &unk_21499A1A0);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_214911120(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1C178, type metadata accessor for MANavigationLinkView, &unk_21499A030);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_21491119C(uint64_t a1)
{
  v2 = sub_21490F6E8(&qword_27CA1C178, type metadata accessor for MANavigationLinkView, &unk_21499A030);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_214911218(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1C1A8, type metadata accessor for MANavigationLinkView, &unk_214999FF8);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_21491129C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C248, &qword_21499A240);
  MEMORY[0x28223BE20](v3);
  v5 = &v12[-v4];
  v6 = v1 + *(a1 + 48);
  v7 = *v6;
  v8 = *(v6 + 8);
  v16 = v7;
  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C270, &qword_21499A2C8);
  sub_21498F430();
  v13 = v1;
  sub_21490FCC8(v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C278, &qword_21499A2D0);
  sub_214913FBC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C218, &unk_21499A220);
  v10 = sub_214913B68();
  v14 = v9;
  v15 = v10;
  swift_getOpaqueTypeConformance2();
  return sub_21498EC70();
}

uint64_t sub_214911464(uint64_t a1, uint64_t a2)
{
  sub_21490F6E8(&qword_27CA1B8E8, type metadata accessor for MANavigationLinkView, &unk_21499A1A0);
  sub_21490F6E8(&qword_27CA1C178, type metadata accessor for MANavigationLinkView, &unk_21499A030);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_214911534(uint64_t (*a1)(void))
{
  v3 = sub_21498EDC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1(0) + 44));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_21498FBC0();
    v10 = sub_21498EFC0();
    sub_21498E5A0();

    sub_21498EDB0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_21491168C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1B8, &qword_21499A1E8);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1C0, &qword_21499A1F0);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v29 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1C8, &qword_21499A1F8);
  MEMORY[0x28223BE20](v34);
  v7 = &v29 - v6;
  v8 = type metadata accessor for BindableMANavigationLink(0);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  sub_214913874(v2 + *(v8 + 20), &v29 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v18 = sub_21489DFCC(v15, &qword_27CA1AC78, qword_214999F40);
    MEMORY[0x28223BE20](v18);
    *(&v29 - 2) = v2;
    sub_214911D6C(v2, &unk_2826C9AF8, sub_214913F08, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
    sub_214913900();
    sub_214913AA0();
    sub_21498EC60();
    v19 = v33;
    v20 = v35;
    (*(v33 + 16))(v7, v5, v35);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C228, &qword_21499A230);
    sub_2148B4C20(&qword_27CA1C230, &qword_27CA1C228, &qword_21499A230, &unk_21499F210);
    sub_2148B4C20(&qword_27CA1C238, &qword_27CA1C1C0, &qword_21499A1F0, MEMORY[0x277CDD938]);
    sub_21498EE90();
    return (*(v19 + 8))(v5, v20);
  }

  else
  {
    v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (*(v2 + *(v8 + 40)))
    {

      sub_21498E760();

      (*(v17 + 8))(v15, v16);
      v22 = v38;
      v33 = v37;
      v23 = v39;
      sub_214914048(v2, v12, type metadata accessor for BindableMANavigationLink);
      v24 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v25 = swift_allocObject();
      sub_2149140B0(v12, v25 + v24, type metadata accessor for BindableMANavigationLink);
      v26 = v2;
      v27 = v29;
      sub_214914048(v26, v29, type metadata accessor for BindableMANavigationLink);
      v28 = swift_allocObject();
      sub_2149140B0(v27, v28 + v24, type metadata accessor for BindableMANavigationLink);
      *v7 = v33;
      *(v7 + 1) = v22;
      v7[16] = v23;
      *(v7 + 3) = sub_214913C5C;
      *(v7 + 4) = v25;
      *(v7 + 5) = sub_214913EA4;
      *(v7 + 6) = v28;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C228, &qword_21499A230);
      sub_2148B4C20(&qword_27CA1C230, &qword_27CA1C228, &qword_21499A230, &unk_21499F210);
      sub_2148B4C20(&qword_27CA1C238, &qword_27CA1C1C0, &qword_21499A1F0, MEMORY[0x277CDD938]);
      return sub_21498EE90();
    }

    else
    {
      sub_21498E8C0();
      sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
      result = sub_21498ED10();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_214911D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v58 = a3;
  v56 = a2;
  v5 = type metadata accessor for BindableMANavigationLink(0);
  v53 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v54 = v6;
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1E8, &qword_21499A208);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
  MEMORY[0x28223BE20](v46);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C240, &qword_21499A238);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v45 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C218, &unk_21499A220);
  MEMORY[0x28223BE20](v49);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C248, &qword_21499A240);
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x28223BE20](v16);
  v50 = &v45 - v17;
  v18 = *(a1 + v5[10]);
  if (!v18)
  {
    sub_21498E8C0();
    v43 = &qword_27CA1A858;
    v44 = MEMORY[0x277D23330];
LABEL_8:
    sub_21490F6E8(v43, v44, MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v19 = v5[7];
  sub_21498E8C0();
  sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);

  v20 = sub_21498E9C0();
  v21 = sub_21498E6A0();
  (*(*(v21 - 8) + 16))(v9, a1 + v19, v21);
  v22 = &v9[*(v7 + 36)];
  *v22 = v20;
  v22[1] = v18;
  v23 = *(a1 + v5[9]);
  if (!v23)
  {
    sub_21498E870();
    v43 = &qword_27CA1AC08;
    v44 = MEMORY[0x277D232E8];
    goto LABEL_8;
  }

  sub_21498E870();
  sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

  v24 = sub_21498E9C0();
  sub_2148B4C68(v9, v11, &qword_27CA1C1E8, &qword_21499A208);
  v25 = &v11[*(v46 + 36)];
  *v25 = v24;
  v25[1] = v23;
  if (qword_27CA19F88 != -1)
  {
    swift_once();
  }

  v26 = qword_27CA31008;
  sub_214913900();
  v27 = v26;
  v28 = v45;
  MEMORY[0x2160581D0]();

  sub_21489DFCC(v11, &qword_27CA1C1D0, &qword_21499A200);
  v29 = sub_214911534(type metadata accessor for BindableMANavigationLink);
  KeyPath = swift_getKeyPath();
  (*(v47 + 32))(v15, v28, v48);
  v31 = v49;
  v32 = &v15[*(v49 + 36)];
  *v32 = KeyPath;
  v32[1] = v29;
  sub_214911534(type metadata accessor for BindableMANavigationLink);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v33 = v59;
  v34 = v60;
  v35 = sub_214913B68();
  v36 = v50;
  MEMORY[0x2160581A0](v33, v34, v31, v35);
  swift_unknownObjectRelease();
  sub_214895A50(v15);
  v37 = v55;
  sub_214914048(a1, v55, type metadata accessor for BindableMANavigationLink);
  v38 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v39 = swift_allocObject();
  sub_2149140B0(v37, v39 + v38, type metadata accessor for BindableMANavigationLink);
  v40 = v57;
  (*(v51 + 32))(v57, v36, v52);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1B8, &qword_21499A1E8);
  v42 = (v40 + *(result + 36));
  *v42 = v58;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  return result;
}

uint64_t sub_214912424(uint64_t a1)
{
  v2 = type metadata accessor for BindableMANavigationLink(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v6 + 16))(v8, v9, v5);
  sub_214914048(a1, v4, type metadata accessor for BindableMANavigationLink);
  v10 = sub_21498E670();
  v11 = sub_21498FBD0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    v22 = v12;
    *v12 = 136315138;
    if (*&v4[*(v2 + 40)])
    {

      v13 = sub_21498E980();

      v23 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C250, &qword_21499A2B8);
      sub_2148B4C20(&qword_27CA1C258, &qword_27CA1C250, &qword_21499A2B8, MEMORY[0x277D84060]);
      v14 = sub_21498F980();
      v16 = v15;

      sub_2149141CC(v4, type metadata accessor for BindableMANavigationLink);
      v17 = sub_2149079F4(v14, v16, &v24);

      v18 = v22;
      *(v22 + 1) = v17;
      _os_log_impl(&dword_21488E000, v10, v11, "Store: %s", v18, 0xCu);
      v19 = v21;
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x216059AC0](v19, -1, -1);
      MEMORY[0x216059AC0](v18, -1, -1);

      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      sub_21498E8C0();
      sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
      result = sub_21498ED10();
      __break(1u);
    }
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return sub_2149141CC(v4, type metadata accessor for BindableMANavigationLink);
  }

  return result;
}

uint64_t sub_2149127E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1E8, &qword_21499A208);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for BindableMANavigationLink(0);
  v8 = *(a1 + *(v7 + 40));
  if (v8)
  {
    v9 = v7;
    v10 = *(v7 + 24);
    sub_21498E8C0();
    sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);

    v11 = sub_21498E9C0();
    v12 = sub_21498E6A0();
    (*(*(v12 - 8) + 16))(v6, a1 + v10, v12);
    v13 = &v6[*(v4 + 36)];
    *v13 = v11;
    v13[1] = v8;
    v14 = *(a1 + *(v9 + 36));
    if (v14)
    {
      sub_21498E870();
      sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

      v15 = sub_21498E9C0();
      sub_2148B4C68(v6, a2, &qword_27CA1C1E8, &qword_21499A208);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
      v17 = (a2 + *(result + 36));
      *v17 = v15;
      v17[1] = v14;
      return result;
    }

    sub_21498E870();
    v18 = &qword_27CA1AC08;
    v19 = MEMORY[0x277D232E8];
  }

  else
  {
    sub_21498E8C0();
    v18 = &qword_27CA1A858;
    v19 = MEMORY[0x277D23330];
  }

  sub_21490F6E8(v18, v19, MEMORY[0x277D233A0]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_214912A70()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214912B2C(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_214912BD4(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_214912C8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21491458C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_214912CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21491458C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214912CE4(uint64_t a1)
{
  v2 = sub_214913F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214912D20(uint64_t a1)
{
  v2 = sub_214913F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214912D5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v49 = sub_21498E6A0();
  v46 = *(v49 - 8);
  v3 = MEMORY[0x28223BE20](v49);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v39 - v7;
  v43 = sub_21498E350();
  v47 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C260, &qword_21499A2C0);
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for BindableMANavigationLink(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v16 + *(v14 + 32)) = MEMORY[0x277D84F90];
  v17 = (v16 + *(v14 + 36));
  sub_21498E870();
  v18 = MEMORY[0x277D233A0];
  sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);
  v52 = sub_21498ED20();
  *v17 = v52;
  v17[1] = v19;
  v20 = (v16 + v13[10]);
  sub_21498E8C0();
  sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330], v18);
  v51 = sub_21498ED20();
  *v20 = v51;
  v20[1] = v21;
  v22 = v16 + v13[11];
  KeyPath = swift_getKeyPath();
  *v22 = KeyPath;
  v22[8] = 0;
  v23 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_214913F60();
  v24 = v53;
  sub_2149901B0();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    v25 = v47;
    v26 = v49;
    v58 = 0;
    v27 = sub_21498FF20();
    v30 = v28;
    v53 = v12;
    v40 = v10;
    if (!v28)
    {
      sub_21498E340();
      v31 = sub_21498E330();
      v33 = v32;
      v25[1](v9, v43);
      v30 = v33;
      v27 = v31;
    }

    *v16 = v27;
    v16[1] = v30;
    v49 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v57 = 1;
    sub_2148B4C20(&qword_27CA1BC18, &qword_27CA1AD30, &unk_214997FD0, MEMORY[0x277D23238]);
    v34 = v45;
    v35 = v40;
    v36 = v53;
    sub_21498FF40();
    sub_2148B4C68(v34, v16 + v13[5], &qword_27CA1AC78, qword_214999F40);
    v56 = 2;
    sub_21490F6E8(&qword_27CA1B770, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
    v37 = v44;
    sub_21498FFA0();
    v38 = v16 + v13[6];
    v47 = *(v46 + 32);
    (v47)(v38, v37, v26);
    v55 = 3;
    sub_21498FFA0();
    (*(v48 + 8))(v36, v35);
    (v47)(v16 + v13[7], v42, 0);
    sub_214914048(v16, v41, type metadata accessor for BindableMANavigationLink);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_2149141CC(v16, type metadata accessor for BindableMANavigationLink);
  }
}

uint64_t sub_214913464(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1B948, type metadata accessor for BindableMANavigationLink, &unk_21499A158);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2149134E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1C180, type metadata accessor for BindableMANavigationLink, &unk_21499A108);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_214913564(uint64_t a1)
{
  v2 = sub_21490F6E8(&qword_27CA1C180, type metadata accessor for BindableMANavigationLink, &unk_21499A108);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2149135E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1C1B0, type metadata accessor for BindableMANavigationLink, &unk_21499A0D0);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_21491369C(uint64_t a1, uint64_t a2)
{
  sub_21490F6E8(&qword_27CA1B948, type metadata accessor for BindableMANavigationLink, &unk_21499A158);
  sub_21490F6E8(&qword_27CA1C180, type metadata accessor for BindableMANavigationLink, &unk_21499A108);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_214913874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214913900()
{
  result = qword_27CA1C1D8;
  if (!qword_27CA1C1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C1D0, &qword_21499A200);
    sub_2149139B8();
    sub_2148B4C20(&qword_27CA1C200, &qword_27CA1C208, &qword_21499A218, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C1D8);
  }

  return result;
}

unint64_t sub_2149139B8()
{
  result = qword_27CA1C1E0;
  if (!qword_27CA1C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C1E8, &qword_21499A208);
    sub_21490F6E8(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    sub_2148B4C20(&qword_27CA1C1F0, &qword_27CA1C1F8, &qword_21499A210, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C1E0);
  }

  return result;
}

unint64_t sub_214913AA0()
{
  result = qword_27CA1C210;
  if (!qword_27CA1C210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C1B8, &qword_21499A1E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C218, &unk_21499A220);
    sub_214913B68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C210);
  }

  return result;
}

unint64_t sub_214913B68()
{
  result = qword_27CA1C220;
  if (!qword_27CA1C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C218, &unk_21499A220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C1D0, &qword_21499A200);
    sub_214913900();
    swift_getOpaqueTypeConformance2();
    sub_2148B4C20(&qword_27CA1C040, &qword_27CA1C048, &unk_214999898, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C220);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for BindableMANavigationLink(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[6];
  v10 = sub_21498E6A0();
  v11 = *(*(v10 - 8) + 8);
  v11(v5 + v9, v10);
  v11(v5 + v1[7], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_214913F60()
{
  result = qword_27CA1C268;
  if (!qword_27CA1C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C268);
  }

  return result;
}

unint64_t sub_214913FBC()
{
  result = qword_27CA1C280;
  if (!qword_27CA1C280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C278, &qword_21499A2D0);
    sub_214913900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C280);
  }

  return result;
}

uint64_t sub_214914048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2149140B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214914118()
{
  v1 = *(type metadata accessor for MANavigationLinkView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2149105DC(v2);
}

unint64_t sub_214914178()
{
  result = qword_27CA1C290;
  if (!qword_27CA1C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C290);
  }

  return result;
}

uint64_t sub_2149141CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21491424C()
{
  result = qword_27CA1C298;
  if (!qword_27CA1C298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C2A0, &qword_21499A2F0);
    sub_2148B4C20(&qword_27CA1C230, &qword_27CA1C228, &qword_21499A230, &unk_21499F210);
    sub_2148B4C20(&qword_27CA1C238, &qword_27CA1C1C0, &qword_21499A1F0, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C298);
  }

  return result;
}

unint64_t sub_214914334()
{
  result = qword_27CA1C2B8;
  if (!qword_27CA1C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2B8);
  }

  return result;
}

unint64_t sub_21491438C()
{
  result = qword_27CA1C2C0;
  if (!qword_27CA1C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2C0);
  }

  return result;
}

unint64_t sub_2149143E4()
{
  result = qword_27CA1C2C8;
  if (!qword_27CA1C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2C8);
  }

  return result;
}

unint64_t sub_21491443C()
{
  result = qword_27CA1C2D0;
  if (!qword_27CA1C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2D0);
  }

  return result;
}

unint64_t sub_214914494()
{
  result = qword_27CA1C2D8;
  if (!qword_27CA1C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2D8);
  }

  return result;
}

unint64_t sub_2149144EC()
{
  result = qword_27CA1C2E0;
  if (!qword_27CA1C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2E0);
  }

  return result;
}

unint64_t sub_214914540(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21491458C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2149145F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v55 = a7;
  v52 = a6;
  v51 = a5;
  v9 = v8;
  v54 = a3;
  v58 = a2;
  v53 = a1;
  v11 = sub_21498F510();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x28223BE20](v11);
  v62 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21498F540();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21498F560();
  v14 = *(v59 - 8);
  v15 = MEMORY[0x28223BE20](v59);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v49 - v18;
  v50 = sub_21498F520();
  v19 = *(v50 - 1);
  MEMORY[0x28223BE20](v50);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21498E690();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a4;
  v26 = exp2(a4);
  v27 = sub_214925B68(0x20000000000001uLL);
  v28 = vcvtd_n_f64_u64(v27, 0x35uLL) * 0.5 + 0.75;
  if (v27 == 0x20000000000000)
  {
    v28 = 1.25;
  }

  v29 = v26 * v28;
  if (v29 <= 30.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 30.0;
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v22, qword_281194E18);
  (*(v23 + 16))(v25, v31, v22);
  v32 = v9;
  v33 = sub_21498E670();
  v34 = sub_21498FB90();
  if (!os_log_type_enabled(v33, v34))
  {

    v33 = v32;
    goto LABEL_12;
  }

  v49 = v14;
  result = swift_slowAlloc();
  *result = 134218496;
  *(result + 4) = v30;
  *(result + 12) = 2048;
  if (!__OFADD__(v66, 1))
  {
    v36 = result;
    *(result + 14) = v66 + 1;
    *(result + 22) = 2048;
    *(result + 24) = 5;

    _os_log_impl(&dword_21488E000, v33, v34, "Rate limited (429). Retrying in %f seconds. Attempt %ld/%ld", v36, 0x20u);
    MEMORY[0x216059AC0](v36, -1, -1);
    v14 = v49;
LABEL_12:

    (*(v23 + 8))(v25, v22);
    sub_2148FFDCC();
    v37 = v50;
    (*(v19 + 104))(v21, *MEMORY[0x277D851D0], v50);
    v49 = sub_21498FC60();
    (*(v19 + 8))(v21, v37);
    sub_21498F550();
    v38 = v56;
    sub_21498F570();
    v50 = *(v14 + 8);
    v39 = v17;
    v40 = v59;
    (v50)(v39, v59);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v43 = v53;
    *(v42 + 16) = v41;
    *(v42 + 24) = v43;
    *(v42 + 32) = v58;
    *(v42 + 40) = v54 & 1;
    *(v42 + 48) = v66;
    aBlock[4] = v55;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2148A457C;
    aBlock[3] = v57;
    v44 = _Block_copy(aBlock);

    v45 = v60;
    sub_21498F530();
    v67 = MEMORY[0x277D84F90];
    sub_214925D14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
    sub_214925D6C();
    v46 = v62;
    v47 = v65;
    sub_21498FD60();
    v48 = v49;
    MEMORY[0x216058C80](v38, v45, v46, v44);
    _Block_release(v44);

    (*(v64 + 8))(v46, v47);
    (*(v61 + 8))(v45, v63);
    (v50)(v38, v40);
  }

  __break(1u);
  return result;
}

void sub_214914CE8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3DD0;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_2149264B4;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_224;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214915234(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3E00;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_214925CE4;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_31;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214915780(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3E30;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_21492632C;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_128;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214915CCC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3E60;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_214926254;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_56;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214916218(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3E90;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_2149265D4;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_320;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214916764(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3EC0;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_21492646C;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_200;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214916CB0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3EF0;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_21492675C;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_344;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_2149171FC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3F20;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_2149263DC;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_152;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214917748(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3F50;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_214926424;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_176;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214917C94(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3F80;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_21492658C;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_296;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_2149181E0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3FB0;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_21492629C;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_80;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_21491872C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3FE0;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_2149262E4;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_104;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214918C78(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C4010;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_214926544;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_272;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_2149191C4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v52 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v57 = a1;
  v16 = a1;
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v56 = v15;

  v55 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = a5;
    v21 = a3;
    v22 = v20;
    *v19 = 138412546;
    v23 = v55;
    *(v19 + 4) = v55;
    *(v19 + 12) = 2112;
    v24 = v56;
    *(v19 + 14) = v56;
    *v20 = v57;
    v20[1] = a2;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_21488E000, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v27 = v22;
    a3 = v21;
    a5 = v51;
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v29;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C4040;
  v31 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v32 = qword_281190E68;
  v33 = v54;
  v34 = *(v54 + qword_281190E68);
  if (v34)
  {
    v35 = *(v54 + qword_281190E68);
LABEL_9:
    v40 = *(v33 + qword_281190E60);
    v41 = v34;
    sub_21491F834(v31);

    v42 = sub_21498F7D0();

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v43;
    v44[3] = v45;
    v46 = v57;
    v44[4] = a5;
    v44[5] = v46;
    v44[6] = a2;
    v44[7] = a3;
    v44[8] = v53;
    aBlock[4] = sub_2149264FC;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_248;
    v47 = _Block_copy(aBlock);
    v48 = v55;
    v49 = v56;

    v50 = a3;

    [v35 renewCredentialsForAccount:v40 options:v42 completion:v47];
    _Block_release(v47);

    return;
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultStore];
  v38 = *(v33 + v32);
  *(v33 + v32) = v37;

  v39 = [v36 defaultStore];
  if (v39)
  {
    v35 = v39;
    v34 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_214919710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_21492649C;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_216;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3B8, &qword_21499A6F8);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_214919DF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_214925CB4;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_3;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C340, &qword_21499A678);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491A4D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_214926314;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_120;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C390, &qword_21499A6D0);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491ABB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_214926164;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_48;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C370, &qword_21499A6B0);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491B290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_2149265BC;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_312;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3D8, &qword_21499B5B0);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491B970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_214926454;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_192;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3B0, &qword_21499A6F0);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491C050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_2149266EC;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_336;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3E0, &qword_21499A720);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491C730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_2149263C4;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_144;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3A0, &unk_21499A6E0);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491CE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_21492640C;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_168;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3A8, &qword_21499B4A0);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491D4F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_214926574;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_288;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3D0, &unk_21499A710);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491DBD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_214926284;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_72;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C380, &unk_21499A6C0);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491E2B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_2149262CC;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_96;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C388, &qword_21499B450);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491E990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_21492652C;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_264;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3C8, &qword_21499B550);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

uint64_t sub_21491F070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v70 = a2;
  v65 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_21498E320();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v62 = v14;
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v15;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_281194E18);
  v60 = *(v6 + 16);
  v61 = v16;
  v60(v11);
  v17 = v4;
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();

  if (os_log_type_enabled(v18, v19))
  {
    v58 = v9;
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315394;
    v21 = (*((*MEMORY[0x277D85000] & *v17) + 0xF8))();
    v59 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_2149079F4(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_21498F870();
    v30 = v29;

    v31 = sub_2149079F4(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_21488E000, v18, v19, "%s %s", v20, 0x16u);
    v32 = v57;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v32, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v59;
    v25(v11, v59);
    v9 = v58;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v60)(v9, v61, v5);
  v33 = v17;
  v34 = sub_21498E670();
  v35 = v9;
  v36 = sub_21498FBA0();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v60 = v6;
    v39 = *(v33 + qword_281190E40);
    v40 = *(v33 + qword_281190E40 + 8);

    v41 = sub_2149079F4(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_21488E000, v34, v36, "X-Apple-Request-UUID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  v25(v35, v5);
  v61 = v33;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v68;
  v43 = v69;
  v45 = v63;
  v46 = v66;
  (*(v68 + 16))(v63, v66, v69);
  v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v48 = v47 + v62;
  v49 = (((v47 + v62) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  (*(v44 + 32))(v50 + v47, v45, v43);
  *(v50 + v48) = v64 & 1;
  v51 = v50 + (v48 & 0xFFFFFFFFFFFFFFF8);
  v52 = v70;
  *(v51 + 8) = v65;
  *(v51 + 16) = v52;
  *(v50 + v49) = v67;
  aBlock[4] = sub_2149264E4;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_240;
  v53 = _Block_copy(aBlock);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3C0, &unk_21499A700);
  v71.receiver = v61;
  v71.super_class = v54;
  objc_msgSendSuper2(&v71, sel_performRequestWithHandler_, v53);
  _Block_release(v53);
  return (*(v44 + 8))(v46, v43);
}

unint64_t sub_21491F750(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_21491F79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (__OFADD__(a5, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = Strong;
      a6(a2, a3, a4 & 1, a5 + 1);
    }
  }
}

uint64_t sub_21491F834(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B590, &unk_214995AD0);
    v2 = sub_21498FEC0();
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
    sub_21489E614(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2148A4198(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2148A4198(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2148A4198(v31, v32);
    result = sub_21498FD90();
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
    result = sub_2148A4198(v32, (*(v2 + 56) + 32 * v10));
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

void sub_21491FAFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void (*)(uint64_t, uint64_t, uint64_t), uint64_t, void, uint64_t))
{
  v46 = a6;
  v47 = a7;
  v48 = a5;
  v49 = a4;
  v13 = sub_21498E690();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v45 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v45 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v45 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_281190DA0 != -1)
        {
          swift_once();
        }

        v32 = __swift_project_value_buffer(v13, qword_281194E18);
        (*(v14 + 16))(v23, v32, v13);
        v33 = sub_21498E670();
        v34 = sub_21498FB90();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_21488E000, v33, v34, "auth token renew failed. User rejected.", v35, 2u);
          MEMORY[0x216059AC0](v35, -1, -1);
        }

        (*(v14 + 8))(v23, v13);
      }

      else if (a1 == 2)
      {
        if (qword_281190DA0 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v13, qword_281194E18);
        (*(v14 + 16))(v25, v28, v13);
        v29 = sub_21498E670();
        v30 = sub_21498FB90();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_21488E000, v29, v30, "auth token renew failed.", v31, 2u);
          MEMORY[0x216059AC0](v31, -1, -1);
        }

        (*(v14 + 8))(v25, v13);
      }

      else
      {
        if (qword_281190DA0 != -1)
        {
          swift_once();
        }

        v40 = __swift_project_value_buffer(v13, qword_281194E18);
        (*(v14 + 16))(v17, v40, v13);
        v41 = sub_21498E670();
        v42 = sub_21498FB90();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_21488E000, v41, v42, "auth token renew failed. @unknown result", v43, 2u);
          MEMORY[0x216059AC0](v43, -1, -1);
        }

        (*(v14 + 8))(v17, v13);
      }

      if (a2)
      {
        v44 = a2;
      }

      else
      {
        v44 = a8;
      }

      v49(v46, v47, v44);
    }

    else
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v36 = __swift_project_value_buffer(v13, qword_281194E18);
      (*(v14 + 16))(v20, v36, v13);
      v37 = sub_21498E670();
      v38 = sub_21498FB90();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_21488E000, v37, v38, "auth token renewed. Retrying request with server.", v39, 2u);
        MEMORY[0x216059AC0](v39, -1, -1);
      }

      (*(v14 + 8))(v20, v13);
      a10(v49, v48, 0, a9);
    }
  }
}

void sub_214920010(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_214920088(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CA5A0, &unk_2826CA668, sub_2149264CC, &block_descriptor_231);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214914CE8(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214920404(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826C9CE0, &unk_2826C9DA8, sub_214925CFC, &block_descriptor_38);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214915234(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214920780(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CA140, &unk_2826CA208, sub_214926344, &block_descriptor_135);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214915780(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214920AFC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826C9DF8, &unk_2826C9EC0, sub_21492626C, &block_descriptor_63);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214915CCC(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214920E78(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CAA00, &unk_2826CAAC8, sub_2149265EC, &block_descriptor_327);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214916218(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_2149211F4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CA488, &unk_2826CA550, sub_214926484, &block_descriptor_207);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214916764(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214921570(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CAB18, &unk_2826CABE0, sub_2149267EC, &block_descriptor_351);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214916CB0(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_2149218EC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CA258, &unk_2826CA320, sub_2149263F4, &block_descriptor_159);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_2149171FC(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214921C68(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CA370, &unk_2826CA438, sub_21492643C, &block_descriptor_183);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214917748(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214921FE4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CA8E8, &unk_2826CA9B0, sub_2149265A4, &block_descriptor_303);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214917C94(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214922360(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826C9F10, &unk_2826C9FD8, sub_2149262B4, &block_descriptor_87);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_2149181E0(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_2149226DC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CA028, &unk_2826CA0F0, sub_2149262FC, &block_descriptor_111);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_21491872C(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214922A58(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CA7D0, &unk_2826CA898, sub_21492655C, &block_descriptor_279);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_214918C78(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214922DD4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = [a2 statusCode];
    }

    else
    {
      v20 = 0;
    }

    v40 = a1;
    v41 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = a9;
    v21 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v17, v21, v14);
    v22 = v19;
    v23 = sub_21498E670();
    v24 = sub_21498FBA0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = v22;
      v26 = v25;
      v27 = swift_slowAlloc();
      v37 = a8;
      v28 = v27;
      v43 = v27;
      *v26 = 134218242;
      *(v26 + 4) = v20;
      *(v26 + 12) = 2080;
      v35 = v15;
      v36 = a3;
      v29 = a7;
      v30 = *&v38[qword_281190E40];
      v31 = *&v38[qword_281190E40 + 8];

      v32 = sub_2149079F4(v30, v31, &v43);
      a7 = v29;
      a3 = v36;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_21488E000, v23, v24, "[%ld] Response: X-Apple-Request-UUID: %s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v33 = v28;
      a8 = v37;
      MEMORY[0x216059AC0](v33, -1, -1);
      v34 = v26;
      v22 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v35 + 8))(v17, v14);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    if (v20 == 429)
    {
      if (v39 <= 4)
      {
        sub_2149145F4(a7, a8, v42 & 1, v39, &unk_2826CA6B8, &unk_2826CA780, sub_214926514, &block_descriptor_255);
        goto LABEL_17;
      }
    }

    else if (v20 == 401 && (v42 & 1) != 0)
    {
      sub_2149191C4(v40, v41, a3, a7, a8, v39);
LABEL_17:

      return;
    }

    a7(v40, v41, a3);
    goto LABEL_17;
  }
}

void sub_214923150(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_2149231F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_214919DF0(sub_214925C20, v7, 1, 0);
}

uint64_t sub_214923348(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C350, &qword_21499A690), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v11 = qword_27CA30F98;
    v12 = xmmword_27CA30FA0;
    v13 = byte_27CA30FB0;
    v14 = qword_27CA30FB8;
    v15 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v12;
    *(v16 + 24) = v13;
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;

    goto LABEL_8;
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v5 = *v3;
  v4 = *(v3 + 1);
  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = v3[40];
  if (v3[41])
  {
    sub_2148A2800();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v4;
    *(v10 + 16) = v7;
    *(v10 + 24) = v6 & 1;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9 & 1;
    sub_214925DD0(v5, v4, v7, v6, v8, v9, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670);
    return sub_21498FA60();
  }

  sub_214925DD0(v5, v4, v7, v6, v8, v9, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670);
  return sub_21498FA70();
}

uint64_t sub_214923544(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2149235F0(uint64_t (*a1)(uint64_t *))
{
  sub_21498FE50();
  sub_21498FED0();
  v3 = v10;
  if (v10)
  {
    v4 = v9;
    while (1)
    {
      v9 = v4;
      v10 = v3;
      v5 = a1(&v9);
      if (v1)
      {

        return v7 & 1;
      }

      v6 = v5;

      if (v6)
      {
        break;
      }

      sub_21498FED0();
      v4 = v9;
      v3 = v10;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v7 = 1;
  }

  else
  {
LABEL_6:

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2149236D0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v31 - v11);
  v13 = sub_21498E690();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_successRange) = xmmword_21499A590;
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v33 = a3;
  sub_214926040(a3, v5 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_source);
  v17 = qword_281190DA0;
  v32 = a2;
  v18 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v13, qword_281194E18);
  (*(v14 + 16))(v16, v19, v13);
  v20 = sub_21498E670();
  v21 = sub_21498FBD0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21488E000, v20, v21, "Init data source", v22, 2u);
    MEMORY[0x216059AC0](v22, -1, -1);
  }

  (*(v14 + 8))(v16, v13);

  sub_21498E980();

  v36[0] = 0xD000000000000023;
  v36[1] = 0x80000002149A10E0;
  v34 = 0xD000000000000023;
  v35 = 0x80000002149A10E0;
  v23 = sub_21498FE60();
  if (v23 != 2)
  {
    v29 = v23;

    if ((v29 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_21489DFCC(v33, &qword_27CA1A328, &unk_2149933A0);

    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v23);
  *(&v31 - 2) = v36;
  v24 = sub_2149235F0(sub_21492610C);

  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0xE000000000000000;
  *v12 = v25;
  v26 = *MEMORY[0x277D232A0];
  v27 = sub_21498E7C0();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v12, v26, v27);
  (*(v28 + 56))(v12, 0, 1, v27);
  sub_21498E8E0();

  sub_21489DFCC(v33, &qword_27CA1A328, &unk_2149933A0);
LABEL_10:
  *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_stateStore) = a4;
  return v5;
}

void sub_214923AE4(char *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_21498F8C0();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v58 - v6;
  v7 = sub_21498E1B0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  v16 = sub_21498E690();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v16, qword_281194E18);
  (*(v17 + 16))(v19, v20, v16);
  v67 = v16;
  v21 = *(v8 + 16);
  v74 = a1;
  v68 = v21;
  v21(v15, a1, v7);
  v22 = v19;
  v23 = v17;
  v24 = sub_21498E670();
  v25 = sub_21498FBD0();
  v26 = os_log_type_enabled(v24, v25);
  v65 = v8;
  v66 = v11;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v59 = v7;
    v28 = v27;
    v60 = swift_slowAlloc();
    v75 = v60;
    *v28 = 136315138;
    v61 = v22;
    v29 = sub_21498E130();
    v31 = v30;
    v32 = v8 + 8;
    v33 = *(v8 + 8);
    v73 = v32 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34 = v15;
    v35 = v59;
    v33(v34, v59);
    v36 = sub_2149079F4(v29, v31, &v75);

    *(v28 + 4) = v36;
    _os_log_impl(&dword_21488E000, v24, v25, "request for: %s", v28, 0xCu);
    v37 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x216059AC0](v37, -1, -1);
    MEMORY[0x216059AC0](v28, -1, -1);

    (*(v23 + 8))(v61, v67);
  }

  else
  {

    v38 = v8 + 8;
    v33 = *(v8 + 8);
    v73 = v38 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v15, v7);
    (*(v23 + 8))(v22, v67);
    v35 = v7;
  }

  v39 = v69;
  v40 = v70;
  v42 = *(v70 + 16);
  v41 = *(v70 + 24);
  v43 = v68;
  v68(v69, v74, v35);
  v44 = objc_allocWithZone(type metadata accessor for MALiftUIRequest(0));
  v43(&v44[qword_27CA1C130], v39, v35);
  v45 = v42;
  v46 = v41;
  v47 = sub_214925E04(v41, v45, 0, 0xF000000000000000, &qword_27CA1C368, &qword_21499A6A8, &qword_27CA1C360, &qword_21499A6A0);

  v33(v39, v35);
  v48 = [v47 urlRequest];
  sub_21498DE80();

  v49 = v71;
  sub_214926040(v40 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_source, v71);
  v50 = type metadata accessor for MALiftUISource(0);
  if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
  {

    sub_21489DFCC(v49, &qword_27CA1A328, &unk_2149933A0);
  }

  else if (swift_getEnumCaseMultiPayload())
  {

    sub_2149260B0(v49);
  }

  else
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
    v52 = v49;
    v53 = *(v49 + *(v51 + 48) + 8);
    v54 = (v52 + *(v51 + 64));
    v55 = v54[1];
    v70 = *v54;
    v56 = v66;
    (*(v65 + 32))(v66);
    if (sub_21498E150())
    {
      if (v53)
      {
        sub_21498DE60();
      }

      if (v55)
      {
        v57 = v62;
        sub_21498F8B0();
        sub_21498F880();

        (*(v63 + 8))(v57, v64);
        sub_21498DEC0();

        v33(v66, v35);
      }

      else
      {
        v33(v66, v35);
      }
    }

    else
    {
      v33(v56, v35);
    }
  }
}

uint64_t sub_2149241E8(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_21498DEE0();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v2[19] = *(v4 + 64);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v2[21] = swift_task_alloc();
  v5 = sub_21498E690();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v2[26] = swift_task_alloc();
  sub_21498FAB0();
  v2[27] = sub_21498FAA0();
  v7 = sub_21498FA50();
  v2[28] = v7;
  v2[29] = v6;

  return MEMORY[0x2822009F8](sub_2149243BC, v7, v6);
}

uint64_t sub_2149243BC()
{
  v64 = v0;
  v1 = *(v0 + 208);
  sub_21498DEA0();
  v2 = sub_21498E1B0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 208);
  if (v4 == 1)
  {
    sub_21489DFCC(*(v0 + 208), &qword_27CA1A348, &qword_214991700);
    v6 = 0xE700000000000000;
    v7 = 0x6C694E5F6C7255;
  }

  else
  {
    v7 = sub_21498E130();
    v6 = v8;
    (*(v3 + 8))(v5, v2);
  }

  *(v0 + 240) = v6;
  v9 = sub_21498DE50();
  v11 = 0x4E5F646F6874654DLL;
  if (v10)
  {
    v11 = v9;
  }

  v12 = 0xEA00000000006C69;
  if (v10)
  {
    v12 = v10;
  }

  v62 = v11;
  v63 = v12;
  MEMORY[0x2160589C0](32, 0xE100000000000000);
  v60 = v7;
  v61 = v6;
  MEMORY[0x2160589C0](v7, v6);
  v13 = v62;
  v14 = v63;
  *(v0 + 248) = v62;
  *(v0 + 256) = v14;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 200);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = __swift_project_value_buffer(v17, qword_281194E18);
  *(v0 + 264) = v18;
  v19 = *(v16 + 16);
  *(v0 + 272) = v19;
  *(v0 + 280) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v18, v17);

  v20 = sub_21498E670();
  v21 = sub_21498FBD0();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 200);
  v25 = *(v0 + 176);
  v24 = *(v0 + 184);
  if (v22)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v62 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2149079F4(v13, v14, &v62);
    _os_log_impl(&dword_21488E000, v20, v21, "LiftUI Request: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x216059AC0](v27, -1, -1);
    MEMORY[0x216059AC0](v26, -1, -1);
  }

  v28 = *(v24 + 8);
  v28(v23, v25);
  *(v0 + 288) = v28;
  v29 = sub_21498DE50();
  if (!v30 || (v31 = sub_21491F750(v29, v30), v32 = v31, v31 == 4))
  {
    v33 = sub_21498DEB0();
    v35 = v34;
LABEL_15:
    v36 = 0xE400000000000000;
    v59 = 1;
    v37 = 1414745936;
    goto LABEL_16;
  }

  v54 = v31;
  v33 = sub_21498DEB0();
  v35 = v55;
  if (v32 > 1)
  {
    v59 = v54;
    if (v32 == 2)
    {
      v36 = 0xE300000000000000;
      v37 = 5526864;
    }

    else
    {
      v36 = 0xE600000000000000;
      v37 = 0x4554454C4544;
    }
  }

  else
  {
    if (v32)
    {
      goto LABEL_15;
    }

    v59 = v54;
    v36 = 0xE300000000000000;
    v37 = 5522759;
  }

LABEL_16:
  v57 = v33;
  v58 = v37;
  *(v0 + 304) = v33;
  *(v0 + 312) = v36;
  *(v0 + 296) = v35;
  v38 = *(v0 + 168);
  *(v0 + 320) = *(*(v0 + 128) + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_stateStore);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0xE000000000000000;
  *v38 = v39;
  v40 = *MEMORY[0x277D232A0];
  *(v0 + 108) = v40;
  v41 = sub_21498E7C0();
  *(v0 + 328) = v41;
  v42 = *(v41 - 8);
  v43 = *(v42 + 104);
  *(v0 + 336) = v43;
  *(v0 + 344) = (v42 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v43(v38, v40, v41);
  v44 = *(v42 + 56);
  *(v0 + 352) = v44;
  *(v0 + 360) = (v42 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v44(v38, 0, 1, v41);

  sub_21498E8E0();
  if (qword_27CA19FC8 != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 152);
  v45 = *(v0 + 160);
  v48 = *(v0 + 136);
  v47 = *(v0 + 144);
  v49 = *(v0 + 120);
  v56 = *(v0 + 128);
  *(v0 + 16) = v58;
  *(v0 + 24) = v36;
  *(v0 + 32) = v60;
  *(v0 + 40) = v61;
  *(v0 + 48) = v57;
  *(v0 + 56) = v35;
  (*(v47 + 16))(v45, v49, v48);
  v50 = (*(v47 + 80) + 33) & ~*(v47 + 80);
  v51 = swift_allocObject();
  *(v0 + 368) = v51;
  *(v51 + 16) = v60;
  *(v51 + 24) = v61;
  *(v51 + 32) = v59;
  (*(v47 + 32))(v51 + v50, v45, v48);
  *(v51 + ((v46 + v50 + 7) & 0xFFFFFFFFFFFFFFF8)) = v56;

  v52 = swift_task_alloc();
  *(v0 + 376) = v52;
  *v52 = v0;
  v52[1] = sub_2149249A0;

  return sub_214906618((v0 + 16), &unk_21499A660, v51);
}

uint64_t sub_2149249A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 384) = v2;

  if (v2)
  {

    v7 = v6[28];
    v8 = v6[29];
    v9 = sub_214924BC4;
  }

  else
  {

    v6[49] = a2;
    v6[50] = a1;
    v7 = v6[28];
    v8 = v6[29];
    v9 = sub_214924AE4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_214924AE4()
{
  v1 = v0[38];
  v2 = v0[37];

  sub_21489B8F0(v1, v2);

  v3 = v0[1];
  v5 = v0[49];
  v4 = v0[50];

  return v3(v4, v5);
}

uint64_t sub_214924BC4()
{
  v44 = v0;
  v1 = *(v0 + 384);

  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 352);
    v4 = *(v0 + 336);
    v5 = *(v0 + 108);
    v6 = *(v0 + 328);
    v7 = *(v0 + 168);

    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v41 = *(v0 + 80);
    v39 = *(v0 + 88);
    v38 = *(v0 + 96);
    v37 = *(v0 + 104);
    v10 = swift_allocObject();
    v42 = v8;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    *v7 = v10;
    v4(v7, v5, v6);
    v3(v7, 0, 1, v6);

    sub_21498E8E0();
  }

  else
  {
    v11 = *(v0 + 272);
    v12 = *(v0 + 264);
    v13 = *(v0 + 192);
    v14 = *(v0 + 176);
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v43[0] = 2777980912;
    v43[1] = 0xA400000000000000;
    MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A0E50);
    MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
    v42 = sub_21498E0A0();
    v36 = v17;

    v11(v13, v12, v14);

    v18 = sub_21498E670();
    v19 = sub_21498FBB0();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 288);
    v22 = *(v0 + 256);
    if (v20)
    {
      v23 = *(v0 + 248);
      v40 = *(v0 + 192);
      v24 = *(v0 + 176);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43[0] = v26;
      *v25 = 136315394;
      v27 = sub_2149079F4(v23, v22, v43);

      *(v25 + 4) = v27;
      *(v25 + 12) = 2048;
      v41 = -1;
      *(v25 + 14) = -1;
      _os_log_impl(&dword_21488E000, v18, v19, "LiftUI Response for %s: [%ld] Invalid error response", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x216059AC0](v26, -1, -1);
      MEMORY[0x216059AC0](v25, -1, -1);

      v21(v40, v24);
      v39 = 0;
      v38 = 0;
      v37 = 1;
    }

    else
    {
      v28 = *(v0 + 192);
      v29 = *(v0 + 176);

      v21(v28, v29);
      v39 = 0;
      v38 = 0;
      v37 = 1;
      v41 = -1;
    }

    v9 = v36;
  }

  v30 = *(v0 + 384);
  v31 = *(v0 + 304);
  v32 = *(v0 + 296);
  sub_2148A2800();
  swift_allocError();
  *v33 = v42;
  *(v33 + 8) = v9;
  *(v33 + 16) = v41;
  *(v33 + 24) = v39;
  *(v33 + 32) = v38;
  *(v33 + 40) = v37;
  swift_willThrow();

  sub_21489B8F0(v31, v32);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_214925060(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 96) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_214925088, 0, 0);
}

uint64_t sub_214925088(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 96);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = sub_21498DEB0();
  v8 = v7;
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = objc_allocWithZone(type metadata accessor for GenericRequestAPIRequest(0));
  v12 = &v11[qword_27CA1BEE0];
  *v12 = v5;
  v12[1] = v4;
  v11[qword_27CA1BEE8] = v3;
  v13 = v10;

  v14 = v9;
  v15 = sub_214925E04(v9, v13, v6, v8, &qword_27CA1C358, &qword_21499A698, &qword_27CA1C340, &qword_21499A678);
  *(v1 + 64) = v15;
  sub_21489B8F0(v6, v8);

  v16 = swift_task_alloc();
  *(v1 + 72) = v16;
  *(v16 + 16) = v15;
  v17 = swift_task_alloc();
  *(v1 + 80) = v17;
  *v17 = v1;
  v17[1] = sub_214925240;
  v18 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v1 + 16, 0, 0, 0xD000000000000025, 0x80000002149A26A0, sub_214925C18, v16, v18);
}

uint64_t sub_214925240()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2149253CC;
  }

  else
  {

    v2 = sub_21492535C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21492535C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_2149253CC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_214925434()
{
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_source, &qword_27CA1A328, &unk_2149933A0);

  return swift_deallocClassInstance();
}

void sub_2149254F0(uint64_t a1)
{
  sub_2149255A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2149255A8(uint64_t a1)
{
  if (!qword_27CA1BFC0)
  {
    type metadata accessor for MALiftUISource(255);
    v1 = sub_21498FCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1BFC0);
    }
  }
}

void sub_214925620(uint64_t a1)
{
  sub_2149256A8(319);
  if (v1 <= 0x3F)
  {
    sub_21492572C();
    if (v2 <= 0x3F)
    {
      sub_21492575C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2149256A8(uint64_t a1)
{
  if (!qword_27CA1C320)
  {
    sub_21498E1B0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AB18, &unk_21499A610);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CA1C320);
    }
  }
}

uint64_t sub_21492572C()
{
  result = qword_27CA1C328;
  if (!qword_27CA1C328)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27CA1C328);
  }

  return result;
}

uint64_t sub_21492575C()
{
  result = qword_27CA1C330;
  if (!qword_27CA1C330)
  {
    result = MEMORY[0x277CC9318];
    atomic_store(MEMORY[0x277CC9318], &qword_27CA1C330);
  }

  return result;
}

uint64_t sub_2149257A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214925838;

  return sub_2149241E8(a1);
}

uint64_t sub_214925838(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_214925948()
{
  v2 = *(sub_21498DEE0() - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_21490976C;

  return sub_214925060(v4, v5, v7, v0 + v3, v6);
}

void sub_214925A64(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_214925B00(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_214925B38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_214925B68(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x216059AE0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x216059AE0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214925C20(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670);

  return sub_214923348(a1, a2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_214925D14()
{
  result = qword_281190D90;
  if (!qword_281190D90)
  {
    sub_21498F510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D90);
  }

  return result;
}

unint64_t sub_214925D6C()
{
  result = qword_281190D00;
  if (!qword_281190D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C348, &qword_21499A980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D00);
  }

  return result;
}

uint64_t sub_214925DD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    return sub_21489B70C(a1, a2);
  }
}

id sub_214925E04(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v35 = a7;
  v36 = a8;
  v31 = a5;
  v32 = a6;
  v9 = v8;
  v33 = a2;
  v34 = a4;
  v30 = a3;
  v11 = sub_21498E350();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_281190E68;
  *&v9[qword_281190E68] = 0;
  v16 = &v9[qword_281190E48];
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 40) = -1;
  *&v9[qword_281190E58] = 5;
  *&v9[qword_281190E30] = 0x3FF0000000000000;
  *&v9[qword_281190E38] = 0x403E000000000000;
  *&v9[qword_281190E50] = 0;
  v17 = &v9[qword_281190E40];
  sub_21498E340();
  v18 = sub_21498E330();
  v20 = v19;
  (*(v12 + 8))(v14, v11);
  *v17 = v18;
  v17[1] = v20;
  v21 = v33;
  v22 = *&v9[v15];
  *&v9[v15] = a1;
  v23 = a1;

  v24 = v34;
  *&v9[qword_281190E60] = v21;
  if (v24 >> 60 == 15)
  {
    v25 = v21;
  }

  else
  {
    v26 = v30;
    v37[0] = v30;
    v37[1] = v24;
    v38 = 1;
    swift_beginAccess();
    v27 = v21;
    sub_21489B6F8(v26, v24);
    sub_21492635C(v37, v16, v31, v32);
    swift_endAccess();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  v39.receiver = v9;
  v39.super_class = v28;
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t sub_214926040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2149260B0(uint64_t a1)
{
  v2 = type metadata accessor for MALiftUISource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21492610C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_214990080() & 1;
  }
}

uint64_t sub_21492617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, unint64_t, void, void, void, void))
{
  v9 = *(sub_21498E320() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  return a4(a1, a2, a3, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 16), *(v4 + (((v11 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21492635C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_21498E320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214926978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_214927B30(a3, v25 - v10);
  v12 = sub_21498FAE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_214927BA0(v11);
  }

  else
  {
    sub_21498FAD0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21498FA50();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21498F8F0() + 32;
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

      sub_214927BA0(a3);

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

  sub_214927BA0(a3);
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

uint64_t sub_214926C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_214927B30(a3, v25 - v10);
  v12 = sub_21498FAE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_214927BA0(v11);
  }

  else
  {
    sub_21498FAD0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21498FA50();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21498F8F0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3F8, &qword_21499A7A8);
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

      sub_214927BA0(a3);

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

  sub_214927BA0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3F8, &qword_21499A7A8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t MailAssistantProvider.__allocating_init(accountStore:appleAccount:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  MailAssistantProvider.init(accountStore:appleAccount:)(a1, a2);
  return v4;
}

void *MailAssistantProvider.init(accountStore:appleAccount:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a2;
  v3[3] = a1;
  v10 = type metadata accessor for MARepositoryDefault();
  v11 = swift_allocObject();
  v12 = a2;
  v13 = a1;
  sub_21498E340();
  v14 = sub_21498E330();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  v11[2] = v14;
  v11[3] = v16;
  v11[4] = v13;
  v11[5] = v12;
  v3[7] = v10;
  v3[8] = &off_2826CB168;
  v3[4] = v11;
  return v3;
}

uint64_t sub_21492709C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = v3;

  return sub_214899D78(v4, v5, a1);
}

uint64_t sub_2149270F0@<X0>(void *a1@<X8>)
{
  v3 = sub_21498E350();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v20 = 0x80000002149A2720;
  a1[5] = v7;
  a1[6] = v8;
  v9 = type metadata accessor for MARepositoryDefault();
  v10 = swift_allocObject();
  v11 = v7;
  v12 = v8;
  v13 = v11;
  v14 = v12;
  sub_21498E340();
  v15 = sub_21498E330();
  v17 = v16;
  result = (*(v4 + 8))(v6, v3);
  v10[2] = v15;
  v10[3] = v17;
  v10[4] = v14;
  v10[5] = v13;
  a1[3] = v9;
  a1[4] = &off_2826CB168;
  *a1 = v10;
  a1[7] = 0xD00000000000003BLL;
  a1[8] = v20;
  return result;
}

uint64_t sub_214927264(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_21498FAE0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_214926978(0, 0, v7, &unk_21499A730, v9);
}

uint64_t sub_214927388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_21498E350();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492744C, 0, 0);
}

uint64_t sub_21492744C()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[17] = v2;
  v3 = *(v1 + 24);
  v0[18] = v3;
  sub_21498FAB0();
  v4 = v2;
  v5 = v3;
  v0[19] = sub_21498FAA0();
  v7 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_214927504, v7, v6);
}

uint64_t sub_214927504()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];

  v0[7] = v3;
  v0[8] = v1;
  v6 = type metadata accessor for MARepositoryDefault();
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v1;
  sub_21498E340();
  v10 = sub_21498E330();
  v12 = v11;
  (*(v5 + 8))(v2, v4);
  v7[2] = v10;
  v7[3] = v12;
  v7[4] = v9;
  v7[5] = v8;
  v0[2] = v7;
  v0[5] = v6;
  v0[6] = &off_2826CB168;
  v0[9] = 0xD00000000000003BLL;
  v0[10] = 0x80000002149A2720;
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_214927660;

  return sub_21497928C();
}

uint64_t sub_214927660(char a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    sub_214928038(v4 + 16);
    v5 = sub_21492780C;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    sub_214928038(v4 + 16);
    v5 = sub_21492779C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21492779C()
{
  (*(v0 + 96))(*(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21492780C()
{
  v1 = *(v0 + 168);
  (*(v0 + 96))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_214927888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899138;

  return sub_214927388(a1, v4, v5, v6, v7, v8);
}

uint64_t MailAssistantProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_214927A84()
{
  result = qword_27CA1C3E8;
  if (!qword_27CA1C3E8)
  {
    type metadata accessor for MASettingsRemoteView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C3E8);
  }

  return result;
}

unint64_t sub_214927ADC()
{
  result = qword_27CA1C3F0;
  if (!qword_27CA1C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C3F0);
  }

  return result;
}

uint64_t sub_214927B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214927BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214927C08(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_214927CFC;

  return v5(v2 + 32);
}

uint64_t sub_214927CFC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_214927E10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899964;

  return sub_214927C08(a1, v4);
}

uint64_t sub_214927EC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return sub_214927C08(a1, v4);
}

uint64_t sub_214927F80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899964;

  return sub_2148BB5C8(a1, v4);
}

uint64_t sub_21492808C()
{
  v1[26] = v0;
  v2 = sub_21498E690();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492814C, 0, 0);
}

uint64_t sub_21492814C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateUnsubscribeInlineTip()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_2149282DC;

  return sub_21493A124((v0 + 2));
}

uint64_t sub_2149282DC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2149288B4;
  }

  else
  {
    v2 = sub_2149283F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2149283F0()
{
  if (v0[3] != 1)
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[5];
      v3 = v0[7];

      sub_21492BB98((v0 + 2));
      if (v2 == 0x6465747065636341 && v1 == 0xE800000000000000)
      {

LABEL_14:
        v8 = v0[26];
        v9 = *(v8 + 32);
        v10 = *(v8 + 40);
        v0[18] = &type metadata for MAUpdateConsentAPIRequestBody;
        v0[19] = sub_21492BBEC();
        v0[15] = 0x64656E696C636544;
        v0[16] = 0xE800000000000000;
        v0[17] = v3;
        v11 = objc_allocWithZone(type metadata accessor for MAUpdateConsentAPIRequest(0));
        sub_21492BC40((v0 + 15), (v0 + 20));
        v12 = v9;
        v13 = v10;
        v14 = sub_21493B958(v9, v13, (v0 + 20));
        v0[32] = v14;

        sub_21489DFCC((v0 + 15), &qword_27CA1C410, &unk_21499B410);
        v15 = swift_task_alloc();
        v0[33] = v15;
        *(v15 + 16) = v14;
        v16 = swift_task_alloc();
        v0[34] = v16;
        *v16 = v0;
        v16[1] = sub_214928658;

        return MEMORY[0x2822008A0](v16, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21492BCB0, v15, &type metadata for MAUpdateConsentAPIResponse);
      }

      v5 = sub_214990080();

      if (v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21492BB98((v0 + 2));
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_214928658()
{
  v2 = *v1;
  *(v2 + 280) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2149287A8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2149287A8()
{

  v1 = *(v0 + 280);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v3 = *(v0 + 88), v4 = *(v0 + 96), , (v4) || (v3 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    swift_willThrow();

    v5 = *(v0 + 8);
  }

  else
  {

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_2149288B4()
{
  v1 = *(v0 + 248);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v3 = *(v0 + 88), v4 = *(v0 + 96), , (v4) || (v3 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    swift_willThrow();

    v5 = *(v0 + 8);
  }

  else
  {

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_2149289B0()
{
  v1[2] = v0;
  v2 = sub_21498E690();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214928A70, 0, 0);
}

uint64_t sub_214928A70()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "resetInlineTips()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_214928BFC;

  return sub_214938630(0);
}

uint64_t sub_214928BFC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 56) = v6;
    *v6 = v3;
    v6[1] = sub_214928D78;

    return sub_21493809C(0);
  }
}

uint64_t sub_214928D78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214928E90()
{
  v1[2] = v0;
  v2 = sub_21498E690();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214928F5C, 0, 0);
}

uint64_t sub_214928F5C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[7] = v4;
  v5 = *(v3 + 16);
  v0[8] = v5;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "resetUnifiedRules()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];

  v12 = *(v11 + 8);
  v0[10] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_214929104;

  return sub_214933DA0(&unk_2826C56A0);
}

uint64_t sub_214929104(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21492925C, 0, 0);
  }
}

uint64_t sub_21492925C()
{
  result = *(v0 + 96);
  v2 = *(result + 16);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      *(v0 + 112) = v3;
      v4 = *(v0 + 96);
      if (v3 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v5 = v4 + 112 * v3;
      v6 = *(v5 + 40);
      *(v0 + 120) = v6;
      if (v6)
      {
        break;
      }

      (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
      v7 = sub_21498E670();
      v8 = sub_21498FBD0();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 80);
      v11 = *(v0 + 40);
      v12 = *(v0 + 24);
      if (v9)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_21488E000, v7, v8, "resetUnifiedRules - ruleId not found", v13, 2u);
        MEMORY[0x216059AC0](v13, -1, -1);
      }

      result = v10(v11, v12);
      v3 = *(v0 + 112) + 1;
      if (v3 == *(v0 + 104))
      {
        goto LABEL_11;
      }
    }

    v14 = *(v5 + 32);

    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_214929488;

    return sub_214934144(v14, v6);
  }

  else
  {
LABEL_11:

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_214929488()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214929604, 0, 0);
  }
}

void sub_214929604()
{
  v1 = *(v0 + 112) + 1;
  if (v1 == *(v0 + 104))
  {
LABEL_2:

    v2 = *(v0 + 8);

    v2();
  }

  else
  {
    while (1)
    {
      *(v0 + 112) = v1;
      v3 = *(v0 + 96);
      if (v1 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v4 = v3 + 112 * v1;
      v5 = *(v4 + 40);
      *(v0 + 120) = v5;
      if (v5)
      {
        break;
      }

      (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
      v6 = sub_21498E670();
      v7 = sub_21498FBD0();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 80);
      v10 = *(v0 + 40);
      v11 = *(v0 + 24);
      if (v8)
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_21488E000, v6, v7, "resetUnifiedRules - ruleId not found", v12, 2u);
        MEMORY[0x216059AC0](v12, -1, -1);
      }

      v9(v10, v11);
      v1 = *(v0 + 112) + 1;
      if (v1 == *(v0 + 104))
      {
        goto LABEL_2;
      }
    }

    v13 = *(v4 + 32);

    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_214929488;

    sub_214934144(v13, v5);
  }
}

uint64_t sub_21492982C()
{
  v1[2] = v0;
  v2 = sub_21498E690();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2149298EC, 0, 0);
}

uint64_t sub_2149298EC()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "resetRecommendations()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_214929A74;

  return sub_214938FE0();
}

uint64_t sub_214929A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;

  if (v3)
  {

    v7 = *(v6 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214929BC4, 0, 0);
  }
}

void *sub_214929BC4()
{
  v1 = *(v0[7] + 16);
  v0[9] = v1;

  if (v1)
  {
    v0[10] = 0;
    if (result[2])
    {
      v3 = result[5];
      v0[11] = v3;
      v4 = result[4];

      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_214929DC8;

      return sub_214939D7C(v4, v3, 0x4C414954494E49, 0xE700000000000000);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = v0[8];
  swift_bridgeObjectRelease_n();
  v7 = *(v6 + 16);
  v0[13] = v7;
  result = v0[8];
  if (v7)
  {
    v0[14] = 0;
    if (!result[2])
    {
      goto LABEL_15;
    }

    v8 = result[5];
    v0[15] = v8;
    v9 = result[4];

    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_21492A15C;

    return sub_214939884(v9, v8, 0x4C414954494E49, 0xE700000000000000);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_214929DC8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214929F4C, 0, 0);
  }
}

void sub_214929F4C()
{
  v1 = v0[10] + 1;
  if (v1 == v0[9])
  {
    v2 = v0[8];
    swift_bridgeObjectRelease_n();
    v3 = *(v2 + 16);
    v0[13] = v3;
    v4 = v0[8];
    if (v3)
    {
      v0[14] = 0;
      if (v4[2])
      {
        v5 = v4[5];
        v0[15] = v5;
        v6 = v4[4];

        v7 = swift_task_alloc();
        v0[16] = v7;
        *v7 = v0;
        v7[1] = sub_21492A15C;

        sub_214939884(v6, v5, 0x4C414954494E49, 0xE700000000000000);
        return;
      }

LABEL_15:
      __break(1u);
      return;
    }

    v13 = v0[1];

    v13();
  }

  else
  {
    v0[10] = v1;
    v8 = v0[7];
    if (v1 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = v8 + 104 * v1;
    v10 = *(v9 + 40);
    v0[11] = v10;
    v11 = *(v9 + 32);

    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_214929DC8;

    sub_214939D7C(v11, v10, 0x4C414954494E49, 0xE700000000000000);
  }
}

uint64_t sub_21492A15C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21492A2C4, 0, 0);
  }
}

void sub_21492A2C4()
{
  v1 = v0[14] + 1;
  if (v1 == v0[13])
  {

    v2 = v0[1];

    v2();
  }

  else
  {
    v0[14] = v1;
    v3 = v0[8];
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      v4 = v3 + 104 * v1;
      v5 = *(v4 + 40);
      v0[15] = v5;
      v6 = *(v4 + 32);

      v7 = swift_task_alloc();
      v0[16] = v7;
      *v7 = v0;
      v7[1] = sub_21492A15C;

      sub_214939884(v6, v5, 0x4C414954494E49, 0xE700000000000000);
    }
  }
}

uint64_t sub_21492A40C()
{
  v1[3] = v0;
  v2 = sub_21498E690();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492A4CC, 0, 0);
}

uint64_t sub_21492A4CC()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "resetMailCleanup()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  (*(v9 + 8))(v8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_21492A6AC;
  v13 = v0[3];
  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D837D0];

  return MEMORY[0x282200600](v0 + 2, v14, v11, 0, 0, &unk_21499A7E0, v13, v15);
}

uint64_t sub_21492A6AC()
{

  return MEMORY[0x2822009F8](sub_21492A7A8, 0, 0);
}

uint64_t sub_21492A7A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21492A810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C400, &qword_21499A7E8);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492A918, 0, 0);
}

uint64_t sub_21492A918()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = sub_21498FAE0();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_2148B8CE8(v1, &unk_21499A7F8, v5);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_2148B8CE8(v1, &unk_21499A808, v6);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v4(v1, 1, 1, v3);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_2148B8CE8(v1, &unk_21499A818, v7);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v4(v1, 1, 1, v3);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_2148B8CE8(v1, &unk_21499A828, v8);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  sub_21498FA80();
  v0[11] = MEMORY[0x277D84F90];
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_21492AC14;
  v10 = v0[7];

  return MEMORY[0x2822002E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_21492AC14()
{

  return MEMORY[0x2822009F8](sub_21492AD10, 0, 0);
}

uint64_t sub_21492AD10()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[11];
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2148A90C8(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_2148A90C8((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v1;
    *(v8 + 5) = v2;
    v0[11] = v5;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_21492AC14;
    v10 = v0[7];

    return MEMORY[0x2822002E8](v0 + 2, 0, 0, v10);
  }

  else
  {
    v11 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);
    *v11 = v3;

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_21492AEAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21492AF40;

  return sub_21492808C();
}

uint64_t sub_21492AF40()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_21492B088;
  }

  else
  {
    v2 = sub_21492B054;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21492B054()
{
  v1 = *(v0 + 16);
  *v1 = 0x1000000000000017;
  v1[1] = 0x80000002149A2890;
  return (*(v0 + 8))();
}

uint64_t sub_21492B088()
{
  v1 = *(v0 + 16);
  *v1 = 0x1000000000000018;
  v1[1] = 0x80000002149A2870;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21492B108(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21492B19C;

  return sub_2149289B0();
}

uint64_t sub_21492B19C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_21492B2E4;
  }

  else
  {
    v2 = sub_21492B2B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21492B2B0()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001ALL;
  v1[1] = 0x80000002149A2850;
  return (*(v0 + 8))();
}

uint64_t sub_21492B2E4()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001BLL;
  v1[1] = 0x80000002149A2830;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21492B364(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21492B3F8;

  return sub_214928E90();
}

uint64_t sub_21492B3F8()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_21492B540;
  }

  else
  {
    v2 = sub_21492B50C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21492B50C()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001CLL;
  v1[1] = 0x80000002149A2810;
  return (*(v0 + 8))();
}

uint64_t sub_21492B540()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001DLL;
  v1[1] = 0x80000002149A27F0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21492B5C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21492B654;

  return sub_21492982C();
}

uint64_t sub_21492B654()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_21492B79C;
  }

  else
  {
    v2 = sub_21492B768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21492B768()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001FLL;
  v1[1] = 0x80000002149A27D0;
  return (*(v0 + 8))();
}

uint64_t sub_21492B79C()
{
  v1 = *(v0 + 16);
  *v1 = 0x1000000000000020;
  v1[1] = 0x80000002149A27A0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21492B81C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_214899964;

  return sub_21492A810(a1, a2, v2);
}

uint64_t sub_21492B8C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899964;

  return sub_21492AEAC(a1);
}

uint64_t sub_21492B97C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899138;

  return sub_21492B108(a1);
}

uint64_t sub_21492BA30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899964;

  return sub_21492B364(a1);
}

uint64_t sub_21492BAE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899964;

  return sub_21492B5C0(a1);
}

unint64_t sub_21492BBEC()
{
  result = qword_27CA1C408;
  if (!qword_27CA1C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C408);
  }

  return result;
}

uint64_t sub_21492BC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C410, &unk_21499B410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21492BCB8()
{
  result = sub_21498F840();
  qword_281194E10 = result;
  return result;
}

uint64_t sub_21492BCF0()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_21492BD54(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_21492BDA0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_21498FEF0();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_21492BE20@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21498FEF0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_21492BE78(uint64_t a1)
{
  v2 = sub_21492CE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492BEB4(uint64_t a1)
{
  v2 = sub_21492CE64();

  return MEMORY[0x2821FE720](a1, v2);
}