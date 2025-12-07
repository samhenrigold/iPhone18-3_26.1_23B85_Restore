uint64_t sub_27412EED4@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView(0) + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[0] = v10;
  v14[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v11 = v14[3];
  swift_getKeyPath();
  v14[0] = v11;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v11 + v12, v7, type metadata accessor for NetworkSettings);

  LOBYTE(v12) = v7[96];
  result = sub_274138044(v7, type metadata accessor for NetworkSettings);
  *a2 = v12;
  return result;
}

uint64_t sub_27412F064(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v6 = type metadata accessor for NetworkDetailsView(0);
  v7 = v6 - 8;
  v30 = *(v6 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v29 - v13;
  v15 = *a1;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000036, 0x80000002741DD240);
  if (v15)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v16, v17);

  sub_2740CB218(v31, v32, 2036625250, 0xE400000000000000);

  v18 = (a4 + *(v7 + 28));
  v20 = *v18;
  v19 = v18[1];
  v31 = v20;
  v32 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v21 = v33;
  swift_getKeyPath();
  v31 = v21;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v31 = v21;
  swift_getKeyPath();
  sub_2741C6A2C();

  v22 = v21 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  *(v22 + 96) = v15;
  v33 = v21;
  swift_getKeyPath();
  sub_2741C6A1C();

  v23 = sub_2741C80DC();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  sub_274137EA4(v29, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();
  v24 = sub_2741C809C();
  v25 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  sub_2741383D8(v10, v26 + v25, type metadata accessor for NetworkDetailsView);
  sub_2740CE980(0, 0, v14, &unk_2741D3D60, v26);
}

uint64_t sub_27412F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2741C80AC();
  v4[6] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_27412F4C0, v6, v5);
}

uint64_t sub_27412F4C0()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for NetworkDetailsView(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_27412F594;

  return sub_2741020B8();
}

uint64_t sub_27412F594()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_274139850, v3, v2);
}

uint64_t sub_27412F6D8@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView(0) + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[0] = v10;
  v14[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v11 = v14[3];
  swift_getKeyPath();
  v14[0] = v11;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v11 + v12, v7, type metadata accessor for NetworkSettings);

  LOBYTE(v12) = v7[98];
  result = sub_274138044(v7, type metadata accessor for NetworkSettings);
  *a2 = v12;
  return result;
}

uint64_t sub_27412F868(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v6 = type metadata accessor for NetworkDetailsView(0);
  v7 = v6 - 8;
  v30 = *(v6 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v29 - v13;
  v15 = *a1;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000037, 0x80000002741DD280);
  if (v15)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v16, v17);

  sub_2740CB218(v31, v32, 2036625250, 0xE400000000000000);

  v18 = (a4 + *(v7 + 28));
  v20 = *v18;
  v19 = v18[1];
  v31 = v20;
  v32 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v21 = v33;
  swift_getKeyPath();
  v31 = v21;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v31 = v21;
  swift_getKeyPath();
  sub_2741C6A2C();

  v22 = v21 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  *(v22 + 98) = v15;
  v33 = v21;
  swift_getKeyPath();
  sub_2741C6A1C();

  v23 = sub_2741C80DC();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  sub_274137EA4(v29, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();
  v24 = sub_2741C809C();
  v25 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  sub_2741383D8(v10, v26 + v25, type metadata accessor for NetworkDetailsView);
  sub_2740CE980(0, 0, v14, &unk_2741D3D70, v26);
}

uint64_t sub_27412FC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a3;
  v51 = sub_2741C73BC();
  v46 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A388, &qword_2741D3D78);
  v9 = MEMORY[0x28223BE20](v52, v8);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v53 = &v45 - v12;
  if (qword_2809374A0 != -1)
  {
    swift_once();
  }

  v56 = xmmword_280946078;
  sub_2740A6A74();

  v13 = sub_2741C76AC();
  v47 = v14;
  v48 = v13;
  v49 = v15;
  v50 = v16;
  *&v56 = a1;
  *(&v56 + 1) = a2;

  v17 = sub_2741C76AC();
  v19 = v18;
  v21 = v20;
  *&v56 = sub_2741C798C();
  v22 = sub_2741C764C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2740A6AC8(v17, v19, v21 & 1);

  *&v56 = v22;
  *(&v56 + 1) = v24;
  v26 &= 1u;
  v57 = v26;
  v58 = v28;
  sub_2741C73AC();
  v29 = v53;
  v30 = v51;
  sub_2741C774C();
  (*(v46 + 8))(v7, v30);
  sub_2740A6AC8(v22, v24, v26);

  v31 = objc_opt_self();
  v32 = [v31 preferredFontForTextStyle_];
  [v32 pointSize];
  v34 = v33;

  v35 = [v31 monospacedSystemFontOfSize:v34 weight:*MEMORY[0x277D74418]];
  v36 = sub_2741C75FC();
  KeyPath = swift_getKeyPath();
  v38 = (v29 + *(v52 + 36));
  *v38 = KeyPath;
  v38[1] = v36;
  v39 = v54;
  sub_2740A6D94(v29, v54, &qword_28093A388, &qword_2741D3D78);
  v40 = v55;
  v42 = v47;
  v41 = v48;
  *v55 = v48;
  v40[1] = v42;
  LOBYTE(v30) = v49 & 1;
  *(v40 + 16) = v49 & 1;
  v40[3] = v50;
  v40[4] = 0;
  *(v40 + 40) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A390, &unk_2741D3DB0);
  sub_2740A6D94(v39, v40 + *(v43 + 64), &qword_28093A388, &qword_2741D3D78);
  sub_27409861C(v41, v42, v30);

  sub_27409D420(v29, &qword_28093A388, &qword_2741D3D78);
  sub_27409D420(v39, &qword_28093A388, &qword_2741D3D78);
  sub_2740A6AC8(v41, v42, v30);
}

uint64_t sub_274130060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v101 = a4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A388, &qword_2741D3D78);
  MEMORY[0x28223BE20](v100, v7);
  v9 = (&v87 - v8);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A398, &qword_2741D3DD0);
  MEMORY[0x28223BE20](v92, v10);
  v98 = &v87 - v11;
  v91 = sub_2741C73BC();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2E0, &qword_2741D3C78);
  v15 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v16);
  v18 = &v87 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3A0, &qword_2741D3DD8);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v99 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v97 = &v87 - v24;
  if (qword_2809374A8 != -1)
  {
    swift_once();
  }

  v102 = xmmword_280946088;
  sub_2740A6A74();

  v25 = sub_2741C76AC();
  v93 = v26;
  v94 = v25;
  v90 = v27;
  v95 = v28;
  v29 = (a1 + *(type metadata accessor for NetworkDetailsView(0) + 24));
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v102) = v30;
  *(&v102 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v105 == 1)
  {
    *&v102 = sub_2741308B0(a2, a3);
    *(&v102 + 1) = v32;
    v33 = sub_2741C76AC();
    v35 = v34;
    v37 = v36;
    v38 = sub_2741C798C();
    v87 = v18;
    *&v102 = v38;
    v39 = sub_2741C764C();
    v88 = v15;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_2740A6AC8(v33, v35, v37 & 1);

    *&v102 = v40;
    *(&v102 + 1) = v42;
    v44 &= 1u;
    LOBYTE(v103) = v44;
    v104 = v46;
    sub_2741C73AC();
    v47 = MEMORY[0x277CE0BD8];
    v48 = MEMORY[0x277CE06D0];
    v49 = v87;
    v50 = v91;
    sub_2741C774C();
    (*(v89 + 8))(v14, v50);
    sub_2740A6AC8(v40, v42, v44);

    v51 = v88;
    v52 = v96;
    v88[2](v98, v49, v96);
    swift_storeEnumTagMultiPayload();
    *&v102 = v47;
    *(&v102 + 1) = v50;
    v103 = MEMORY[0x277CE0BC8];
    v104 = v48;
    swift_getOpaqueTypeConformance2();
    sub_274139594();
    v53 = v97;
    sub_2741C72CC();
    v51[1](v49, v52);
  }

  else
  {
    *&v102 = a2;
    *(&v102 + 1) = a3;

    v54 = sub_2741C76AC();
    v88 = v9;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    *&v102 = sub_2741C798C();
    v60 = sub_2741C764C();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_2740A6AC8(v55, v57, v59 & 1);

    *&v102 = v60;
    *(&v102 + 1) = v62;
    v67 = v64 & 1;
    LOBYTE(v103) = v64 & 1;
    v104 = v66;
    sub_2741C73AC();
    v68 = MEMORY[0x277CE0BD8];
    v69 = MEMORY[0x277CE0BC8];
    v70 = v88;
    v71 = v91;
    sub_2741C774C();
    (*(v89 + 8))(v14, v71);
    sub_2740A6AC8(v60, v62, v67);

    v72 = objc_opt_self();
    v73 = [v72 preferredFontForTextStyle_];
    [v73 pointSize];
    v75 = v74;

    v76 = [v72 monospacedSystemFontOfSize:v75 weight:*MEMORY[0x277D74418]];
    v77 = sub_2741C75FC();
    KeyPath = swift_getKeyPath();
    v79 = (v70 + *(v100 + 36));
    *v79 = KeyPath;
    v79[1] = v77;
    sub_2740A6D94(v70, v98, &qword_28093A388, &qword_2741D3D78);
    swift_storeEnumTagMultiPayload();
    *&v102 = v68;
    *(&v102 + 1) = v71;
    v103 = v69;
    v104 = MEMORY[0x277CE06D0];
    swift_getOpaqueTypeConformance2();
    sub_274139594();
    v53 = v97;
    sub_2741C72CC();
    sub_27409D420(v70, &qword_28093A388, &qword_2741D3D78);
  }

  v80 = v99;
  sub_2740A6D94(v53, v99, &qword_28093A3A0, &qword_2741D3DD8);
  v81 = v101;
  v83 = v93;
  v82 = v94;
  *v101 = v94;
  v81[1] = v83;
  v84 = v90 & 1;
  *(v81 + 16) = v90 & 1;
  v81[3] = v95;
  v81[4] = 0;
  *(v81 + 40) = 1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3B0, &qword_2741D3DE8);
  sub_2740A6D94(v80, v81 + *(v85 + 64), &qword_28093A3A0, &qword_2741D3DD8);
  sub_27409861C(v82, v83, v84);

  sub_27409D420(v53, &qword_28093A3A0, &qword_2741D3DD8);
  sub_27409D420(v80, &qword_28093A3A0, &qword_2741D3DD8);
  sub_2740A6AC8(v82, v83, v84);
}

uint64_t sub_2741308B0(uint64_t a1, uint64_t a2)
{
  if (sub_2741C7F1C() >= 20)
  {
    v3 = 20;
  }

  else
  {
    result = sub_2741C7F1C();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    if (!result)
    {
      return 0;
    }
  }

  v4 = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277D83C10];
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2741CB550;
    *(v6 + 56) = v4;
    *(v6 + 64) = v5;
    *(v6 + 32) = 63386;
    v7 = sub_2741C7E8C();
    MEMORY[0x2743E5FB0](v7);

    --v3;
  }

  while (v3);
  return 0;
}

void *sub_2741309C4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v6 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v25 - v9;
  v11 = (a1 + *(v2 + 24));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v27) = *v11;
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  result = sub_2741C7A3C();
  if (v26 == 1)
  {
    v25 = v3;
    v15 = (a1 + *(v2 + 20));
    v17 = *v15;
    v16 = v15[1];
    v27 = v17;
    v28 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
    sub_2741C7A3C();
    v18 = v26;
    swift_getKeyPath();
    v27 = v18;
    sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
    sub_2741C6A0C();

    v19 = *(v18 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

    if (v19 == 4)
    {
      LOBYTE(v27) = v12;
      v28 = v13;
      LOBYTE(v26) = 0;
      return sub_2741C7A4C();
    }

    else
    {
      v20 = sub_2741C80DC();
      (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
      sub_274137EA4(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
      sub_2741C80AC();
      v21 = sub_2741C809C();
      v22 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D85700];
      *(v23 + 16) = v21;
      *(v23 + 24) = v24;
      sub_2741383D8(v6, v23 + v22, type metadata accessor for NetworkDetailsView);
      sub_2740CE980(0, 0, v10, &unk_2741D3DC8, v23);
    }
  }

  return result;
}

uint64_t sub_274130CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_274130DA8;

  return sub_2740B5AD8(1);
}

uint64_t sub_274130DA8(char a1)
{
  v2 = *v1;
  *(v2 + 72) = a1;

  v4 = sub_2741C805C();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_274130EF4, v4, v3);
}

uint64_t sub_274130EF4()
{
  if ((*(v0 + 72) | 2) == 2)
  {

    return MEMORY[0x2822009F8](sub_274130F9C, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_274130F9C(uint64_t a1)
{
  *(v1 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274131028, v3, v2);
}

uint64_t sub_274131028()
{
  v1 = v0[2];

  sub_2741C7C4C();
  *(swift_task_alloc() + 16) = v1;
  sub_2741C6DCC();

  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_2741310F0, v2, v3);
}

uint64_t sub_2741310F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_274131150(uint64_t a1)
{
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  return sub_2741C7A4C();
}

uint64_t sub_2741311C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = type metadata accessor for NetworkDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  if (qword_280937730 != -1)
  {
    swift_once();
  }

  v14[4] = qword_280946598;
  v14[5] = unk_2809465A0;
  sub_274137EA4(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();

  v7 = sub_2741C809C();
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v7;
  *(v9 + 24) = v10;
  sub_2741383D8(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for NetworkDetailsView);
  sub_274137EA4(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  v11 = sub_2741C809C();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  sub_2741383D8(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8, type metadata accessor for NetworkDetailsView);
  sub_2741C7B2C();
  sub_2740A6A74();
  return sub_2741C7ADC();
}

uint64_t sub_27413140C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView(0) + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[0] = v10;
  v14[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v11 = v14[3];
  swift_getKeyPath();
  v14[0] = v11;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v11 + v12, v7, type metadata accessor for NetworkSettings);

  LOBYTE(v12) = v7[56];
  result = sub_274138044(v7, type metadata accessor for NetworkSettings);
  *a2 = v12;
  return result;
}

uint64_t sub_27413159C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v6 = type metadata accessor for NetworkDetailsView(0);
  v7 = v6 - 8;
  v30 = *(v6 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v29 - v13;
  v15 = *a1;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000003ALL, 0x80000002741DD1B0);
  if (v15)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v16, v17);

  sub_2740CB218(v31, v32, 2036625250, 0xE400000000000000);

  v18 = (a4 + *(v7 + 28));
  v20 = *v18;
  v19 = v18[1];
  v31 = v20;
  v32 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v21 = v33;
  swift_getKeyPath();
  v31 = v21;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v31 = v21;
  swift_getKeyPath();
  sub_2741C6A2C();

  v22 = v21 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  *(v22 + 56) = v15;
  v33 = v21;
  swift_getKeyPath();
  sub_2741C6A1C();

  v23 = sub_2741C80DC();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  sub_274137EA4(v29, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();
  v24 = sub_2741C809C();
  v25 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  sub_2741383D8(v10, v26 + v25, type metadata accessor for NetworkDetailsView);
  sub_2740CE980(0, 0, v14, &unk_2741D3B38, v26);
}

uint64_t sub_274131960@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2B0, &qword_2741D3C50);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2B8, &qword_2741D3C58);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v26 - v18;
  v28 = a1;
  sub_274131C68(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800, MEMORY[0x277CE1138]);
  sub_274138CEC();
  sub_2741C6DDC();
  *v10 = sub_2741C70EC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2C8, &qword_2741D3C60);
  sub_274132464(a1, &v10[*(v20 + 44)]);
  v21 = *(v12 + 16);
  v21(v16, v19, v11);
  sub_2740A6D94(v10, v7, &qword_28093A2B0, &qword_2741D3C50);
  v22 = v27;
  v21(v27, v16, v11);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2D0, &qword_2741D3C68);
  sub_2740A6D94(v7, &v22[*(v23 + 48)], &qword_28093A2B0, &qword_2741D3C50);
  sub_27409D420(v10, &qword_28093A2B0, &qword_2741D3C50);
  v24 = *(v12 + 8);
  v24(v19, v11);
  sub_27409D420(v7, &qword_28093A2B0, &qword_2741D3C50);
  return (v24)(v16, v11);
}

__n128 sub_274131C68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E8, &unk_2741D3C90);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v24 - v6;
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView(0) + 20));
  v9 = *v8;
  v25 = v8[1];
  v26 = v9;
  *&v45 = v9;
  *(&v45 + 1) = v25;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A5C();
  v10 = v38;
  v11 = v39;
  swift_getKeyPath();
  v36[2] = v10;
  v37 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  sub_2741C7B0C();

  swift_getKeyPath();
  sub_2741C7B0C();

  sub_27409D420(v7, &qword_2809399E8, &unk_2741D3C90);
  v45 = v35[2];
  v46 = v35[3];
  v47[0] = v36[0];
  *(v47 + 9) = *(v36 + 9);
  swift_getKeyPath();
  v33 = v45;
  v34 = v46;
  v35[0] = v47[0];
  *(v35 + 9) = *(v47 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2F8, &qword_2741D3CE0);
  sub_2741C7B0C();

  sub_27409D420(&v45, &qword_28093A2F8, &qword_2741D3CE0);
  v12 = v30;
  v13 = v31;
  v14 = v32;
  *&v38 = v26;
  *(&v38 + 1) = v25;
  sub_2741C7A3C();
  v15 = v27[0];
  swift_getKeyPath();
  *&v38 = v15;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v16 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v15 + v16, v27);

  v17 = v28;
  v18 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v19 = (*(v18 + 32))(v17, v18);
  sub_2740C6F94(v12, v13, v14, v19, v20, &v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v21 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v21;
  *(a2 + 96) = v44;
  v22 = v39;
  *a2 = v38;
  *(a2 + 16) = v22;
  result = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_274131FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkDetailsView(0);
  if (*(a1 + *(v8 + 32)) == 1)
  {
    if (qword_280937A08 != -1)
    {
      swift_once();
    }

    v9 = &qword_280946B68;
  }

  else
  {
    if (qword_280937A00 != -1)
    {
      swift_once();
    }

    v9 = &qword_280946B58;
  }

  v10 = *v9;

  v49 = v10;
  v50 = v11;
  sub_2740A6A74();
  v42 = sub_2741C76AC();
  v43 = v12;
  v14 = v13;
  HIDWORD(v41) = v15;
  v16 = (a1 + *(v8 + 20));
  v18 = *v16;
  v17 = v16[1];
  v49 = v18;
  v50 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v19 = v47;
  swift_getKeyPath();
  v49 = v19;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v20 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v19 + v20, v7, type metadata accessor for NetworkSettings);

  v21 = v7[104];
  sub_274138044(v7, type metadata accessor for NetworkSettings);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (qword_2809379C8 != -1)
      {
        swift_once();
      }

      v22 = &qword_280946AE8;
    }

    else
    {
      if (qword_2809379C0 != -1)
      {
        swift_once();
      }

      v22 = &qword_280946AD8;
    }
  }

  else if (v21)
  {
    if (qword_2809379B8 != -1)
    {
      swift_once();
    }

    v22 = &qword_280946AC8;
  }

  else
  {
    if (qword_280937408 != -1)
    {
      swift_once();
    }

    v22 = &qword_280945F48;
  }

  v23 = *v22;

  v47 = v23;
  v48 = v24;
  v25 = sub_2741C76AC();
  v27 = v26;
  v29 = v28;
  LODWORD(v47) = sub_2741C737C();
  v30 = sub_2741C764C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_2740A6AC8(v25, v27, v29 & 1);

  v37 = BYTE4(v41) & 1;
  LOBYTE(v47) = BYTE4(v41) & 1;
  v46 = BYTE4(v41) & 1;
  v45 = 1;
  v34 &= 1u;
  v44 = v34;
  v39 = v42;
  v38 = v43;
  *a2 = v42;
  *(a2 + 8) = v14;
  *(a2 + 16) = v37;
  *(a2 + 24) = v38;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v30;
  *(a2 + 56) = v32;
  *(a2 + 64) = v34;
  *(a2 + 72) = v36;
  sub_27409861C(v39, v14, v37);

  sub_27409861C(v30, v32, v34);

  sub_2740A6AC8(v30, v32, v34);

  sub_2740A6AC8(v39, v14, v47);
}

uint64_t sub_274132464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v119 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2D8, &qword_2741D3C70);
  MEMORY[0x28223BE20](v114, v3);
  v118 = &v103 - v4;
  v113 = sub_2741C73BC();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v5);
  v110 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2E0, &qword_2741D3C78);
  v116 = *(v7 - 8);
  v117 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v103 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v103 - v12;
  v14 = type metadata accessor for NetworkSettings(0);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v103 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v103 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2E8, &qword_2741D3C80);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v115 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v103 - v31;
  v33 = type metadata accessor for NetworkDetailsView(0);
  v34 = *(a1 + *(v33 + 32)) == 1;
  v112 = v32;
  v104 = v13;
  if (v34)
  {
    if (qword_280937800 != -1)
    {
      swift_once();
    }

    v35 = &qword_280946748;
  }

  else
  {
    if (qword_2809377F8 != -1)
    {
      swift_once();
    }

    v35 = &qword_280946738;
  }

  v36 = *v35;

  v120 = v36;
  v121 = v37;
  v105 = sub_2740A6A74();
  v108 = sub_2741C76AC();
  v107 = v38;
  v106 = v39;
  v109 = v40;
  v41 = (a1 + *(v33 + 20));
  v42 = *v41;
  v43 = v41[1];
  v120 = *v41;
  v121 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v44 = v125;
  swift_getKeyPath();
  v120 = v44;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v45 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v44 + v45, v25, type metadata accessor for NetworkSettings);

  LODWORD(v45) = v25[104];
  sub_274138044(v25, type metadata accessor for NetworkSettings);
  if (v45 == 1)
  {
    v120 = v42;
    v121 = v43;
    sub_2741C7A3C();
    v46 = v124;
    swift_getKeyPath();
    v120 = v46;
    sub_2741C6A0C();

    v47 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    sub_274137EA4(v46 + v47, v18, type metadata accessor for NetworkSettings);

    v48 = *(v18 + 16);
    v49 = *(v18 + 17);

    sub_274138044(v18, type metadata accessor for NetworkSettings);
    if (v49)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    v51 = 0xE000000000000000;
    if (v49)
    {
      v51 = v49;
    }

    v120 = v50;
    v121 = v51;
    v52 = sub_2741C76AC();
    v54 = v53;
    v56 = v55;
    sub_2741C79AC();
    v57 = sub_2741C763C();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_2740A6AC8(v52, v54, v56 & 1);

    v120 = v57;
    v121 = v59;
    LOBYTE(v54) = v61 & 1;
    LOBYTE(v122) = v61 & 1;
    v123 = v63;
    v64 = v110;
    sub_2741C73AC();
    v65 = MEMORY[0x277CE0BD8];
    v66 = MEMORY[0x277CE0BC8];
    v67 = v103;
    v68 = v113;
    sub_2741C774C();
    (*(v111 + 8))(v64, v68);
    sub_2740A6AC8(v57, v59, v54);

    v70 = v116;
    v69 = v117;
    (*(v116 + 16))(v118, v67, v117);
    swift_storeEnumTagMultiPayload();
    v120 = v65;
    v121 = v68;
    v122 = v66;
    v123 = MEMORY[0x277CE06D0];
    swift_getOpaqueTypeConformance2();
    v71 = v112;
    sub_2741C72CC();
    v72 = v67;
  }

  else
  {
    v120 = v42;
    v121 = v43;
    sub_2741C7A3C();
    v73 = v124;
    swift_getKeyPath();
    v120 = v73;
    sub_2741C6A0C();

    v74 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    sub_274137EA4(v73 + v74, v22, type metadata accessor for NetworkSettings);

    v75 = *(v22 + 14);
    v76 = *(v22 + 15);

    sub_274138044(v22, type metadata accessor for NetworkSettings);
    if (v76)
    {
      v77 = v75;
    }

    else
    {
      v77 = 0;
    }

    v78 = 0xE000000000000000;
    if (v76)
    {
      v78 = v76;
    }

    v120 = v77;
    v121 = v78;
    v79 = sub_2741C76AC();
    v81 = v80;
    v83 = v82;
    sub_2741C79AC();
    v84 = sub_2741C763C();
    v86 = v85;
    v88 = v87;
    v90 = v89;

    sub_2740A6AC8(v79, v81, v83 & 1);

    v120 = v84;
    v121 = v86;
    v91 = v88 & 1;
    LOBYTE(v122) = v88 & 1;
    v123 = v90;
    v92 = v110;
    sub_2741C73AC();
    v93 = MEMORY[0x277CE0BD8];
    v94 = MEMORY[0x277CE06D0];
    v72 = v104;
    v95 = v113;
    sub_2741C774C();
    (*(v111 + 8))(v92, v95);
    sub_2740A6AC8(v84, v86, v91);

    v70 = v116;
    v69 = v117;
    (*(v116 + 16))(v118, v72, v117);
    swift_storeEnumTagMultiPayload();
    v120 = v93;
    v121 = v95;
    v122 = MEMORY[0x277CE0BC8];
    v123 = v94;
    swift_getOpaqueTypeConformance2();
    v71 = v112;
    sub_2741C72CC();
  }

  (*(v70 + 8))(v72, v69);
  v96 = v115;
  sub_2740A6D94(v71, v115, &qword_28093A2E8, &qword_2741D3C80);
  v97 = v119;
  v98 = v108;
  v99 = v107;
  *v119 = v108;
  v97[1] = v99;
  v100 = v106 & 1;
  *(v97 + 16) = v106 & 1;
  v97[3] = v109;
  v97[4] = 0;
  *(v97 + 40) = 1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2F0, &qword_2741D3C88);
  sub_2740A6D94(v96, v97 + *(v101 + 64), &qword_28093A2E8, &qword_2741D3C80);
  sub_27409861C(v98, v99, v100);

  sub_27409D420(v71, &qword_28093A2E8, &qword_2741D3C80);
  sub_27409D420(v96, &qword_28093A2E8, &qword_2741D3C80);
  sub_2740A6AC8(v98, v99, v100);
}

uint64_t sub_274132EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for NetworkDetailsView(0) + 32)) == 1)
  {
    if (qword_280937750 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280937748 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  sub_2740A6A74();
  v3 = sub_2741C76AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_27413309C();
  v10 = sub_2741C76AC();
  v12 = v11;
  v13 = v7 & 1;
  v18 = v7 & 1;
  v15 = v14 & 1;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v13;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v16;
  sub_27409861C(v3, v5, v13);

  sub_27409861C(v10, v12, v15);

  sub_2740A6AC8(v10, v12, v15);

  sub_2740A6AC8(v3, v5, v18);
}

uint64_t sub_27413309C()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NetworkDetailsView(0);
  v7 = (v0 + *(v6 + 20));
  v9 = *v7;
  v8 = v7[1];
  v15[0] = v9;
  v15[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v10 = v15[3];
  swift_getKeyPath();
  v15[0] = v10;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v11 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v10 + v11, v5, type metadata accessor for NetworkSettings);

  v12 = v5[104];
  sub_274138044(v5, type metadata accessor for NetworkSettings);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      if (*(v1 + *(v6 + 32)) == 1)
      {
        if (qword_280937780 != -1)
        {
          swift_once();
        }

        v13 = &qword_280946638;
      }

      else
      {
        if (qword_280937778 != -1)
        {
          swift_once();
        }

        v13 = &qword_280946628;
      }
    }

    else if (*(v1 + *(v6 + 32)) == 1)
    {
      if (qword_280937770 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946618;
    }

    else
    {
      if (qword_280937768 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946608;
    }
  }

  else
  {
    if (!v12)
    {
      return v12;
    }

    if (*(v1 + *(v6 + 32)) == 1)
    {
      if (qword_280937760 != -1)
      {
        swift_once();
      }

      v13 = &qword_2809465F8;
    }

    else
    {
      if (qword_280937758 != -1)
      {
        swift_once();
      }

      v13 = &qword_2809465E8;
    }
  }

  v12 = *v13;

  return v12;
}

uint64_t sub_2741333EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = type metadata accessor for NetworkDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  if (qword_280937788 != -1)
  {
    swift_once();
  }

  v14[4] = qword_280946658;
  v14[5] = unk_280946660;
  sub_274137EA4(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();

  v7 = sub_2741C809C();
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v7;
  *(v9 + 24) = v10;
  sub_2741383D8(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for NetworkDetailsView);
  sub_274137EA4(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  v11 = sub_2741C809C();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  sub_2741383D8(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8, type metadata accessor for NetworkDetailsView);
  sub_2741C7B2C();
  sub_2740A6A74();
  return sub_2741C7ADC();
}

uint64_t sub_274133630@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView(0) + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[0] = v10;
  v14[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v11 = v14[3];
  swift_getKeyPath();
  v14[0] = v11;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v11 + v12, v7, type metadata accessor for NetworkSettings);

  LOBYTE(v12) = v7[99];
  result = sub_274138044(v7, type metadata accessor for NetworkSettings);
  *a2 = v12;
  return result;
}

uint64_t sub_2741337C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v6 = type metadata accessor for NetworkDetailsView(0);
  v7 = v6 - 8;
  v30 = *(v6 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v29 - v13;
  v15 = *a1;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000046, 0x80000002741DD1F0);
  if (v15)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v16, v17);

  sub_2740CB218(v31, v32, 2036625250, 0xE400000000000000);

  v18 = (a4 + *(v7 + 28));
  v20 = *v18;
  v19 = v18[1];
  v31 = v20;
  v32 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v21 = v33;
  swift_getKeyPath();
  v31 = v21;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v31 = v21;
  swift_getKeyPath();
  sub_2741C6A2C();

  v22 = v21 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  *(v22 + 99) = v15;
  v33 = v21;
  swift_getKeyPath();
  sub_2741C6A1C();

  v23 = sub_2741C80DC();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  sub_274137EA4(v29, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();
  v24 = sub_2741C809C();
  v25 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  sub_2741383D8(v10, v26 + v25, type metadata accessor for NetworkDetailsView);
  sub_2740CE980(0, 0, v14, &unk_2741D3C48, v26);
}

uint64_t sub_274133B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2741C80AC();
  v4[6] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_274133C1C, v6, v5);
}

uint64_t sub_274133C1C()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for NetworkDetailsView(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_274133CF0;

  return sub_2741020B8();
}

uint64_t sub_274133CF0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_274133E34, v3, v2);
}

uint64_t sub_274133E34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_274133E94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for ConfigureIP4View(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = (v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A290, &qword_2741D3C00);
  v57 = *(v7 - 8);
  v58 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v56 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v60 = v54 - v12;
  v61 = a1;
  v13 = *(type metadata accessor for NetworkDetailsView(0) + 20);
  v54[1] = a1;
  v14 = (a1 + v13);
  v16 = v14[1];
  v99[0] = *v14;
  v15 = v99[0];
  v99[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A5C();
  v17 = *&v100[0];
  v55 = *(v100 + 8);
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  v18 = v6 + v3[5];
  LOBYTE(v99[0]) = 2;
  sub_2741C7A2C();
  v19 = *(&v100[0] + 1);
  *v18 = v100[0];
  *(v18 + 1) = v19;
  v20 = v6 + v3[6];
  *v20 = v17;
  *(v20 + 8) = v55;
  v21 = v6 + v3[7];
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  sub_2741C7A2C();
  v22 = *&v100[1];
  *v21 = v100[0];
  *(v21 + 2) = v22;
  v23 = v6 + v3[8];
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  sub_2741C7A2C();
  v24 = *&v100[1];
  *v23 = v100[0];
  *(v23 + 2) = v24;
  v25 = v6 + v3[9];
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  sub_2741C7A2C();
  v26 = *&v100[1];
  *v25 = v100[0];
  *(v25 + 2) = v26;
  v27 = v6 + v3[10];
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  sub_2741C7A2C();
  v28 = *&v100[1];
  *v27 = v100[0];
  *(v27 + 2) = v28;
  v29 = v6 + v3[11];
  *v29 = sub_2741C6C9C() & 1;
  *(v29 + 1) = v30;
  v29[16] = v31 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800, MEMORY[0x277CE1138]);
  sub_274138B18(&qword_28093A298, type metadata accessor for ConfigureIP4View, &unk_2741D2A44);
  sub_2741C6DDC();
  *&v100[0] = v15;
  *(&v100[0] + 1) = v16;
  sub_2741C7A3C();
  v32 = v99[0];
  swift_getKeyPath();
  *&v100[0] = v32;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  LODWORD(v29) = *(v32 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v29 == 1 && (*&v100[0] = v15, *(&v100[0] + 1) = v16, sub_2741C7A3C(), v33 = v99[0], swift_getKeyPath(), *&v100[0] = v33, sub_2741C6A0C(), , v34 = v33 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config, swift_beginAccess(), v35 = *(v34 + 8), , , v35) && (, *&v100[0] = v15, *(&v100[0] + 1) = v16, sub_2741C7A3C(), v36 = v99[0], swift_getKeyPath(), *&v100[0] = v36, sub_2741C6A0C(), , v37 = v36 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config, swift_beginAccess(), v38 = *(v37 + 32), , , v38))
  {

    *&v55 = sub_2741C70EC();
    LOBYTE(v98[0]) = 1;
    sub_274134E10(v100);
    v68 = v100[2];
    v69 = v100[3];
    v66 = v100[0];
    v67 = v100[1];
    v71[2] = v100[2];
    v71[3] = v100[3];
    v71[4] = v100[4];
    v71[1] = v100[1];
    v70 = v100[4];
    v71[0] = v100[0];
    sub_2740A6D94(&v66, v99, &qword_280939838, &qword_2741D3B50);
    sub_27409D420(v71, &qword_280939838, &qword_2741D3B50);
    *&v65[23] = v67;
    *&v65[39] = v68;
    *&v65[55] = v69;
    *&v65[71] = v70;
    *&v65[7] = v66;
    v39 = v98[0];
    v54[0] = sub_2741C70EC();
    LOBYTE(v98[0]) = 1;
    sub_2741351A0(v100);
    v74 = v100[2];
    v75 = v100[3];
    v72 = v100[0];
    v73 = v100[1];
    v77[2] = v100[2];
    v77[3] = v100[3];
    v77[4] = v100[4];
    v77[1] = v100[1];
    v76 = v100[4];
    v77[0] = v100[0];
    sub_2740A6D94(&v72, v99, &qword_280939838, &qword_2741D3B50);
    sub_27409D420(v77, &qword_280939838, &qword_2741D3B50);
    *&v64[23] = v73;
    *&v64[39] = v74;
    *&v64[55] = v75;
    *&v64[71] = v76;
    *&v64[7] = v72;
    v40 = v98[0];
    v41 = sub_2741C70EC();
    LOBYTE(v98[0]) = 1;
    sub_274135538(v100);
    v80 = v100[2];
    v81 = v100[3];
    v82 = v100[4];
    v78 = v100[0];
    v79 = v100[1];
    v83[2] = v100[2];
    v83[3] = v100[3];
    v83[4] = v100[4];
    v83[1] = v100[1];
    v83[0] = v100[0];
    sub_2740A6D94(&v78, v99, &qword_280939838, &qword_2741D3B50);
    sub_27409D420(v83, &qword_280939838, &qword_2741D3B50);
    *&v63[23] = v79;
    *&v63[39] = v80;
    *&v63[55] = v81;
    *&v63[71] = v82;
    *&v63[7] = v78;
    v42 = v55;
    v84[0] = v55;
    v84[1] = 0;
    v85[0] = v39;
    *&v85[1] = *v65;
    *&v85[17] = *&v65[16];
    *&v85[80] = *&v65[79];
    *&v85[65] = *&v65[64];
    *&v85[49] = *&v65[48];
    *&v85[33] = *&v65[32];
    *v62 = v55;
    *&v62[16] = *v85;
    *&v62[64] = *&v85[48];
    *&v62[80] = *&v85[64];
    *&v62[32] = *&v85[16];
    *&v62[48] = *&v85[32];
    v43 = v54[0];
    v86[0] = v54[0];
    v86[1] = 0;
    v87[0] = v40;
    *&v87[1] = *v64;
    *&v87[17] = *&v64[16];
    *&v87[80] = *&v64[79];
    *&v87[65] = *&v64[64];
    *&v87[49] = *&v64[48];
    *&v87[33] = *&v64[32];
    *&v62[136] = *&v87[16];
    *&v62[120] = *v87;
    *&v62[104] = v54[0];
    *&v62[184] = *&v87[64];
    *&v62[168] = *&v87[48];
    *&v62[152] = *&v87[32];
    v88[0] = v41;
    v88[1] = 0;
    v89[0] = v98[0];
    *&v89[1] = *v63;
    *&v89[17] = *&v63[16];
    *&v89[80] = *(&v82 + 1);
    *&v89[65] = *&v63[64];
    *&v89[49] = *&v63[48];
    *&v89[33] = *&v63[32];
    *&v62[208] = v41;
    *&v62[224] = *v89;
    *&v62[272] = *&v89[48];
    *&v62[288] = *&v89[64];
    *&v62[240] = *&v89[16];
    *&v62[256] = *&v89[32];
    v93 = *&v63[16];
    *&v62[96] = *&v85[80];
    *&v62[200] = *&v87[80];
    *&v62[304] = *&v89[80];
    v90[0] = v41;
    v90[1] = 0;
    v91 = v98[0];
    v92 = *v63;
    *(v96 + 15) = *(&v82 + 1);
    v96[0] = *&v63[64];
    v95 = *&v63[48];
    v94 = *&v63[32];
    sub_2740A6D94(v84, v100, &qword_280939820, &unk_2741D05C0);
    sub_2740A6D94(v86, v100, &qword_280939820, &unk_2741D05C0);
    sub_2740A6D94(v88, v100, &qword_280939820, &unk_2741D05C0);
    sub_27409D420(v90, &qword_280939820, &unk_2741D05C0);
    *(&v97[6] + 1) = *&v64[32];
    *(&v97[8] + 1) = *&v64[48];
    *(&v97[10] + 1) = *&v64[64];
    *(&v97[2] + 1) = *v64;
    v97[0] = v43;
    v97[1] = 0;
    LOBYTE(v97[2]) = v40;
    v97[12] = *&v64[79];
    *(&v97[4] + 1) = *&v64[16];
    sub_27409D420(v97, &qword_280939820, &unk_2741D05C0);
    *(&v98[6] + 1) = *&v65[32];
    *(&v98[8] + 1) = *&v65[48];
    *(&v98[10] + 1) = *&v65[64];
    *(&v98[2] + 1) = *v65;
    v98[0] = v42;
    v98[1] = 0;
    LOBYTE(v98[2]) = v39;
    v98[12] = *&v65[79];
    *(&v98[4] + 1) = *&v65[16];
    sub_27409D420(v98, &qword_280939820, &unk_2741D05C0);
    memcpy(v99, v62, sizeof(v99));
    nullsub_1();
    memcpy(v100, v99, 0x138uLL);
  }

  else
  {
    v44.n128_f64[0] = sub_274138B60(v100);
  }

  v46 = v56;
  v45 = v57;
  v47 = *(v57 + 16);
  v48 = v60;
  v49 = v58;
  v47(v56, v60, v58, v44);
  memcpy(v97, v100, sizeof(v97));
  v50 = v59;
  (v47)(v59, v46, v49);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2A0, &qword_2741D3C08) + 48);
  memcpy(v98, v97, sizeof(v98));
  sub_2740A6D94(v98, v99, &qword_28093A2A8, &qword_2741D3C10);
  v52 = *(v45 + 8);
  v52(v48, v49);
  memcpy(&v50[v51], v98, 0x138uLL);
  memcpy(v99, v97, sizeof(v99));
  sub_27409D420(v99, &qword_28093A2A8, &qword_2741D3C10);
  return (v52)(v46, v49);
}

double sub_274134980@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2741C70EC();
  v18 = 1;
  a2(&v12, a1);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_2740A6D94(&v19, &v11, &qword_2809380B0, &qword_2741CD1A0);
  sub_27409D420(v24, &qword_2809380B0, &qword_2741CD1A0);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_274134A90@<X0>(uint64_t a2@<X8>)
{
  if (qword_2809377C0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v3 = sub_2741C76AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v10 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v11 = *(v28 + v10);

  v26 = v3;
  v27 = v9;
  v25 = v7;
  if (!v11)
  {
    if (qword_280937AC0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v11 == 1)
  {
    if (qword_280937AC8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (qword_280937AD8 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:

  v12 = sub_2741C76AC();
  v14 = v13;
  v16 = v15;
  sub_2741C737C();
  v17 = sub_2741C764C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_2740A6AC8(v12, v14, v16 & 1);

  *a2 = v26;
  *(a2 + 8) = v5;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21 & 1;
  *(a2 + 72) = v23;
  sub_27409861C(v26, v5, v25 & 1);

  sub_27409861C(v17, v19, v21 & 1);

  sub_2740A6AC8(v17, v19, v21 & 1);

  sub_2740A6AC8(v26, v5, v25 & 1);
}

uint64_t sub_274134E10@<X0>(uint64_t a2@<X8>)
{
  if (qword_2809377C8 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v25 = sub_2741C76AC();
  v4 = v3;
  v24 = v5;
  v7 = v6;
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v8 = v26 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v9 = *(v8 + 8);

  if (!v9)
  {

LABEL_8:
    v16 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  if (!*(v9 + 16))
  {

    v9 = 0;
    goto LABEL_8;
  }

  v23 = v7;

  v10 = sub_2741C76AC();
  v12 = v11;
  v14 = v13;
  sub_2741C737C();
  v9 = sub_2741C764C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2740A6AC8(v10, v12, v14 & 1);

  v21 = v18 & 1;
  v7 = v23;
  sub_27409861C(v9, v16, v21);

LABEL_9:
  sub_27409861C(v25, v4, v24 & 1);

  sub_2740ACA00(v9, v16, v21, v20);
  sub_2740ACA44(v9, v16, v21, v20);
  *a2 = v25;
  *(a2 + 8) = v4;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v9;
  *(a2 + 56) = v16;
  *(a2 + 64) = v21;
  *(a2 + 72) = v20;
  sub_2740ACA44(v9, v16, v21, v20);
  sub_2740A6AC8(v25, v4, v24 & 1);
}

uint64_t sub_2741351A0@<X0>(uint64_t a2@<X8>)
{
  if (qword_2809377D0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v25 = sub_2741C76AC();
  v4 = v3;
  v24 = v5;
  v7 = v6;
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v8 = v26 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v9 = *(v8 + 16);

  if (!v9)
  {

LABEL_8:
    v16 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  if (!*(v9 + 16))
  {

    v9 = 0;
    goto LABEL_8;
  }

  v23 = v7;

  v10 = sub_2741C76AC();
  v12 = v11;
  v14 = v13;
  sub_2741C737C();
  v9 = sub_2741C764C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2740A6AC8(v10, v12, v14 & 1);

  v21 = v18 & 1;
  v7 = v23;
  sub_27409861C(v9, v16, v21);

LABEL_9:
  sub_27409861C(v25, v4, v24 & 1);

  sub_2740ACA00(v9, v16, v21, v20);
  sub_2740ACA44(v9, v16, v21, v20);
  *a2 = v25;
  *(a2 + 8) = v4;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v9;
  *(a2 + 56) = v16;
  *(a2 + 64) = v21;
  *(a2 + 72) = v20;
  sub_2740ACA44(v9, v16, v21, v20);
  sub_2740A6AC8(v25, v4, v24 & 1);
}

uint64_t sub_274135538@<X0>(uint64_t a2@<X8>)
{
  if (qword_280937A48 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v3 = sub_2741C76AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v10 = v31 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v11 = *(v10 + 32);

  if (v11)
  {
    v12 = sub_2741C76AC();
    v28 = v7;
    v14 = v13;
    v29 = v5;
    v16 = v15;
    sub_2741C737C();
    v11 = sub_2741C764C();
    v18 = v17;
    v30 = v3;
    v19 = v9;
    v21 = v20;
    v23 = v22;
    v24 = v16 & 1;
    v5 = v29;
    v25 = v14;
    v7 = v28;
    sub_2740A6AC8(v12, v25, v24);

    v26 = v21 & 1;
    v9 = v19;
    v3 = v30;
    sub_27409861C(v11, v18, v26);
  }

  else
  {
    v18 = 0;
    v26 = 0;
    v23 = 0;
  }

  sub_27409861C(v3, v5, v7 & 1);

  sub_2740ACA00(v11, v18, v26, v23);
  sub_2740ACA44(v11, v18, v26, v23);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v11;
  *(a2 + 56) = v18;
  *(a2 + 64) = v26;
  *(a2 + 72) = v23;
  sub_2740ACA44(v11, v18, v26, v23);
  sub_2740A6AC8(v3, v5, v7 & 1);
}

uint64_t sub_274135840@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A248, &qword_2741D3B40);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24 - v10;
  v28 = a1;
  sub_274135BB0(&v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A250, &qword_2741D3B48);
  sub_2740A6D24(&qword_28093A258, &qword_28093A250, &qword_2741D3B48, MEMORY[0x277CE1138]);
  sub_274138920();
  sub_2741C6DDC();
  v25 = sub_2741C70EC();
  v30 = 1;
  sub_274136440(&v39);
  v33 = *&v40[16];
  v34 = *&v40[32];
  v31 = v39;
  v32 = *v40;
  v36[2] = *&v40[16];
  v36[3] = *&v40[32];
  v36[4] = *&v40[48];
  v36[1] = *v40;
  v35 = *&v40[48];
  v36[0] = v39;
  sub_2740A6D94(&v31, v37, &qword_280939838, &qword_2741D3B50);
  sub_27409D420(v36, &qword_280939838, &qword_2741D3B50);
  *&v29[23] = v32;
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[7] = v31;
  v12 = v30;
  v13 = *(v4 + 16);
  v26 = v8;
  v13(v8, v11, v3);
  v14 = v27;
  v13(v27, v8, v3);
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A268, &unk_2741D3B58) + 48)];
  v16 = v25;
  v37[0] = v25;
  v37[1] = 0;
  v38[0] = v12;
  *&v38[1] = *v29;
  *&v38[17] = *&v29[16];
  *&v38[65] = *&v29[64];
  *&v38[80] = *&v29[79];
  *&v38[49] = *&v29[48];
  *&v38[33] = *&v29[32];
  v17 = *v38;
  *v15 = v25;
  *(v15 + 1) = v17;
  v18 = *&v38[16];
  v19 = *&v38[32];
  v20 = *&v38[48];
  v21 = *&v38[64];
  *(v15 + 12) = *&v38[80];
  *(v15 + 4) = v20;
  *(v15 + 5) = v21;
  *(v15 + 2) = v18;
  *(v15 + 3) = v19;
  sub_2740A6D94(v37, &v39, &qword_280939820, &unk_2741D05C0);
  v22 = *(v4 + 8);
  v22(v11, v3);
  *&v40[33] = *&v29[32];
  *&v40[49] = *&v29[48];
  *v41 = *&v29[64];
  *&v40[1] = *v29;
  v39 = v16;
  v40[0] = v12;
  *&v41[15] = *&v29[79];
  *&v40[17] = *&v29[16];
  sub_27409D420(&v39, &qword_280939820, &unk_2741D05C0);
  return (v22)(v26, v3);
}

void sub_274135BB0(uint64_t *a2@<X8>)
{
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v3 = *(v9 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v4 = *(v9 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v5 = *(v9 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v6 = *(v9 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v7 = *(v9 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  sub_274103F80(v3, v4, v5, v6, v7);

  v8 = 0;
  if (v4 != 1)
  {

    v8 = v4;
  }

  sub_2740CC5FC(v3, v4, v5, v6, v7);
  *a2 = v8;
}

double sub_274135D08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C70EC();
  v17 = 1;
  sub_274135E28(a1, &v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v25 = v15;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[0] = v10;
  v24[1] = v11;
  sub_2740A6D94(&v18, &v9, &qword_28093A270, &qword_2741D3B68);
  sub_27409D420(v24, &qword_28093A270, &qword_2741D3B68);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v16[64];
  v7 = *v16;
  result = *&v16[16];
  *(a2 + 33) = *&v16[16];
  v16[87] = v23;
  v8 = v17;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 97) = *&v16[80];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_274135E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C713C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  if (qword_2809377C8 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v35 = sub_2741C76AC();
  v7 = v6;
  v34 = v8;
  v10 = v9;
  v38 = *(a1 + *(type metadata accessor for NetworkDetailsView(0) + 20) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v12 = *(v36 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v11 = *(v36 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v14 = *(v36 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v13 = *(v36 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v15 = *(v36 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  sub_274103F80(v12, v11, v14, v13, v15);

  if (v11 >= 2)
  {

    sub_2740CC5FC(v12, v11, v14, v13, v15);
    v21 = *(v11 + 16);

    sub_2741C712C();
    sub_2741C711C();
    v33 = v10;
    if (v21 == 1)
    {
      HIDWORD(v37) = 0;
      sub_2741C70FC();
      sub_2741C711C();
      if (qword_2809377D8 != -1)
      {
        swift_once();
      }

      sub_2741C710C();

      sub_2741C711C();
      sub_2741C715C();
      v22 = sub_2741C768C();
      v24 = v23;
      v26 = v25;
      LODWORD(v37) = sub_2741C737C();
      sub_2741C764C();
      sub_2740A6AC8(v22, v24, v26 & 1);
    }

    else
    {
      HIDWORD(v37) = HIDWORD(v21);
      sub_2741C70FC();
      sub_2741C711C();
      if (qword_2809377E0 != -1)
      {
        swift_once();
      }

      sub_2741C710C();

      sub_2741C711C();
      sub_2741C715C();
      v27 = sub_2741C768C();
      v29 = v28;
      v31 = v30;
      LODWORD(v37) = sub_2741C737C();
      sub_2741C764C();
      sub_2740A6AC8(v27, v29, v31 & 1);
    }

    sub_2741C72CC();
    v16 = v37;
    v17 = v38;
    v18 = v39;
    v19 = v40;
    v20 = v41;
    sub_274138974(v37, v38, v39, v40);
    v10 = v33;
  }

  else
  {
    sub_2740CC5FC(v12, v11, v14, v13, v15);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
  }

  sub_27409861C(v35, v7, v34 & 1);

  sub_2741389B0(v16, v17, v18, v19, v20);
  sub_2741389C8(v16, v17, v18, v19, v20);
  *a2 = v35;
  *(a2 + 8) = v7;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;
  sub_2741389C8(v16, v17, v18, v19, v20);
  sub_2740A6AC8(v35, v7, v34 & 1);
}

uint64_t sub_274136440@<X0>(uint64_t a2@<X8>)
{
  if (qword_280937A48 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v28 = sub_2741C76AC();
  v4 = v3;
  v27 = v5;
  v7 = v6;
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v8 = *(v29 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v9 = *(v29 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v11 = *(v29 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v10 = *(v29 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v12 = *(v29 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  sub_274103F80(v8, v9, v11, v10, v12);

  if (v9 == 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 0;
  }

  else
  {

    sub_2740CC5FC(v8, v9, v11, v10, v12);
    if (v12)
    {
      v16 = sub_2741C76AC();
      v18 = v17;
      v20 = v19;
      sub_2741C737C();
      v13 = sub_2741C764C();
      v14 = v21;
      v26 = v7;
      v23 = v22;
      v12 = v24;
      sub_2740A6AC8(v16, v18, v20 & 1);

      v15 = v23 & 1;
      v7 = v26;
      sub_27409861C(v13, v14, v15);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }
  }

  sub_27409861C(v28, v4, v27 & 1);

  sub_2740ACA00(v13, v14, v15, v12);
  sub_2740ACA44(v13, v14, v15, v12);
  *a2 = v28;
  *(a2 + 8) = v4;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  *(a2 + 72) = v12;
  sub_2740ACA44(v13, v14, v15, v12);
  sub_2740A6AC8(v28, v4, v27 & 1);
}

uint64_t sub_274136778(uint64_t a1)
{
  v2 = type metadata accessor for ConfigureDNSView(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1;
  v6 = (a1 + *(type metadata accessor for NetworkDetailsView(0) + 20));
  v8 = *v6;
  v7 = v6[1];
  v26 = v8;
  v27 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A5C();
  v9 = v24;
  v22 = v25;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  swift_storeEnumTagMultiPayload();
  *(v5 + v2[5]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  sub_2740BAE84();
  sub_2741C6CAC();
  LOBYTE(a1) = v24;
  v10 = v25;
  v11 = BYTE8(v25);
  v12 = v5 + v2[6];
  *v12 = v9;
  *(v12 + 8) = v22;
  v13 = v5 + v2[7];
  LOBYTE(v26) = 0;
  sub_2741C7A2C();
  v14 = v25;
  *v13 = v24;
  *(v13 + 1) = v14;
  v15 = (v5 + v2[8]);
  v16 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386A0, &unk_2741CC7C0);
  sub_2741C7A2C();
  v17 = v25;
  *v15 = v24;
  v15[1] = v17;
  v18 = (v5 + v2[9]);
  v26 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386B0, &qword_2741D3BD0);
  sub_2741C7A2C();
  v19 = v25;
  *v18 = v24;
  v18[1] = v19;
  v20 = v5 + v2[10];
  *v20 = a1;
  *(v20 + 1) = v10;
  v20[16] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800, MEMORY[0x277CE1138]);
  sub_274138B18(&qword_28093A288, type metadata accessor for ConfigureDNSView, &unk_2741CC800);
  return sub_2741C6DDC();
}

uint64_t sub_274136A64@<X0>(uint64_t a2@<X8>)
{
  if (qword_280937810 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v22 = sub_2741C76AC();
  v23 = v3;
  v5 = v4;
  v21 = v6;
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v7 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  LOBYTE(v7) = *(v24 + v7);

  if (v7)
  {
    if (qword_280937B20 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_280937B18 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:

  v8 = sub_2741C76AC();
  v10 = v9;
  v12 = v11;
  sub_2741C737C();
  v13 = sub_2741C764C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2740A6AC8(v8, v10, v12 & 1);

  *a2 = v22;
  *(a2 + 8) = v5;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  *(a2 + 64) = v17 & 1;
  *(a2 + 72) = v19;
  sub_27409861C(v22, v5, v21 & 1);

  sub_27409861C(v13, v15, v17 & 1);

  sub_2740A6AC8(v13, v15, v17 & 1);

  sub_2740A6AC8(v22, v5, v21 & 1);
}

uint64_t sub_274136D94(uint64_t a1)
{
  sub_274136E60(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800, MEMORY[0x277CE1138]);
  sub_274138A4C();
  return sub_2741C6DDC();
}

__n128 sub_274136E60@<Q0>(uint64_t a2@<X8>)
{
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A5C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  result = *v4;
  *a2 = *v4;
  *(a2 + 8) = *&v4[8];
  *(a2 + 24) = v4[0];
  *(a2 + 32) = *&v4[8];
  *(a2 + 40) = *v4;
  *(a2 + 56) = *&v4[16];
  *(a2 + 64) = *v4;
  *(a2 + 80) = *&v4[16];
  *(a2 + 88) = v4[0];
  *(a2 + 96) = *&v4[8];
  *(a2 + 104) = *v4;
  *(a2 + 120) = *&v4[16];
  *(a2 + 128) = *v4;
  *(a2 + 144) = *&v4[16];
  *(a2 + 152) = *v4;
  *(a2 + 168) = *&v4[16];
  return result;
}

uint64_t sub_274137034@<X0>(uint64_t a2@<X8>)
{
  if (qword_280937820 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v3 = sub_2741C76AC();
  v25 = v4;
  v6 = v5;
  v8 = v7;
  type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v9 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v10 = *(v28 + v9);

  v11 = *(v10 + 16);

  v26 = v3;
  v27 = v8;
  if (!v11)
  {
    if (qword_280937B28 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v11 == 1)
  {
    if (qword_280937B30 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (qword_280937B38 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:

  v12 = sub_2741C76AC();
  v14 = v13;
  v16 = v15;
  sub_2741C737C();
  v17 = sub_2741C764C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_2740A6AC8(v12, v14, v16 & 1);

  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21 & 1;
  *(a2 + 72) = v23;
  sub_27409861C(v26, v25, v6 & 1);

  sub_27409861C(v17, v19, v21 & 1);

  sub_2740A6AC8(v17, v19, v21 & 1);

  sub_2740A6AC8(v26, v25, v6 & 1);
}

uint64_t sub_2741373C4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = 0xEF6B726F7774656ELL;
  v5 = 0x20746E6572727563;
  v6 = *a1;
  v23 = *a2;
  v26 = 0xE000000000000000;
  sub_2741C856C();
  v25 = type metadata accessor for NetworkDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A018, &qword_2741D38E0);
  v7 = sub_2741C7EBC();
  v9 = v8;

  v29 = v7;
  v30 = v9;
  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741DD110);
  v26 = *(a3 + *(v25 + 20) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  v25 = v24;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v10 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v24 + v10, &v25);

  v11 = v27;
  v12 = v28;
  __swift_project_boxed_opaque_existential_1(&v25, v27);
  v13 = (*(v12 + 32))(v11, v12);
  MEMORY[0x2743E5FB0](v13);

  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  MEMORY[0x2743E5FB0](0x6465676E61686320, 0xEE00206D6F726620);
  v14 = 0x80000002741DBD00;
  v15 = 0xD00000000000001CLL;
  v16 = 0x80000002741DBCE0;
  v17 = 0xD00000000000001ELL;
  if (v6 != 3)
  {
    v17 = 0xD00000000000002ALL;
    v16 = 0x80000002741DBCB0;
  }

  if (v6 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  v18 = 0x80000002741DBD20;
  if (v6)
  {
    v19 = 0x20746E6572727563;
  }

  else
  {
    v19 = 0xD000000000000019;
  }

  if (v6)
  {
    v18 = 0xEF6B726F7774656ELL;
  }

  if (v6 <= 1)
  {
    v20 = v19;
  }

  else
  {
    v20 = v15;
  }

  if (v6 <= 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v14;
  }

  MEMORY[0x2743E5FB0](v20, v21);

  MEMORY[0x2743E5FB0](544175136, 0xE400000000000000);
  if (v23 <= 1)
  {
    if (!v23)
    {
      v4 = 0x80000002741DBD20;
      v5 = 0xD000000000000019;
    }
  }

  else if (v23 == 2)
  {
    v4 = 0x80000002741DBD00;
    v5 = 0xD00000000000001CLL;
  }

  else if (v23 == 3)
  {
    v4 = 0x80000002741DBCE0;
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v4 = 0x80000002741DBCB0;
    v5 = 0xD00000000000002ALL;
  }

  MEMORY[0x2743E5FB0](v5, v4);

  sub_2740CB460(v29, v30);
}

uint64_t sub_274137734(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v21 = 0xE000000000000000;
  sub_2741C856C();
  v6 = type metadata accessor for NetworkDetailsView(0);
  v20 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A018, &qword_2741D38E0);
  v7 = sub_2741C7EBC();
  v9 = v8;

  v24 = v7;
  v25 = v9;
  MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741DD0E0);
  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v10, v11);

  MEMORY[0x2743E5FB0](544175136, 0xE400000000000000);
  if (v5)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v5)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v12, v13);

  MEMORY[0x2743E5FB0](0x20726F6620, 0xE500000000000000);
  v21 = *(a3 + *(v6 + 20) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  v20 = v19;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v14 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v19 + v14, &v20);

  v15 = v22;
  v16 = v23;
  __swift_project_boxed_opaque_existential_1(&v20, v22);
  v17 = (*(v16 + 32))(v15, v16);
  MEMORY[0x2743E5FB0](v17);

  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  sub_2740CB460(v24, v25);
}

uint64_t sub_274137A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_274137AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2741C6AFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = &type metadata for WiFiAssociationRequest;
  v24[4] = &off_2883289B0;
  v24[0] = swift_allocObject();
  sub_27413879C(a1, v24[0] + 16);
  swift_beginAccess();
  v9 = *(a2 + 16);
  if (*(v9 + 16) && (v10 = sub_274125ECC(), (v11 & 1) != 0))
  {
    sub_27409D4E4(*(v9 + 56) + 40 * v10, &v21);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  swift_endAccess();
  if (!*(&v22 + 1))
  {
    sub_27409D420(&v21, &qword_280939AF8, &qword_2741D11A0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_13;
  }

  if (!*(&v19 + 1))
  {
LABEL_13:
    sub_27409D420(&v18, &qword_28093A228, &unk_2741D4770);
    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  sub_27409D118(&v18, &v21);
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000001BLL, 0x80000002741DD190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A240, &unk_2741D3B20);
  sub_2741C862C();
  v12 = v18;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_280945DD8);
  (*(v5 + 16))(v8, v13, v4);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v12, *(&v12 + 1));

  (*(v5 + 8))(v8, v4);
  sub_27409D4E4(v24, &v18);
  v14 = *(&v22 + 1);
  v15 = v23;
  __swift_mutable_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  (*(v15 + 72))(&v18, v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

unint64_t sub_274137E48()
{
  result = qword_28093A160;
  if (!qword_28093A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A160);
  }

  return result;
}

uint64_t sub_274137EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_274137F10()
{
  result = qword_28093A170;
  if (!qword_28093A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A098, &unk_2741D3960);
    type metadata accessor for ForgetNetworkSection(255);
    type metadata accessor for NetworkDetailsModel(255);
    sub_274138B18(&qword_28093A168, type metadata accessor for ForgetNetworkSection, &unk_2741CE6C8);
    sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A170);
  }

  return result;
}

uint64_t sub_274138044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2741380C4()
{
  v1 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 113) & ~v2;
  v4 = *(v1 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2741C6DBC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274138230()
{
  type metadata accessor for NetworkDetailsView(0);

  return sub_27412D328(v0 + 16);
}

unint64_t sub_2741382AC()
{
  result = qword_28093A180;
  if (!qword_28093A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A178, &qword_2741D3A88);
    sub_274138330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A180);
  }

  return result;
}

unint64_t sub_274138330()
{
  result = qword_28093A188;
  if (!qword_28093A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A188);
  }

  return result;
}

uint64_t sub_2741383D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_274138448@<X0>(uint64_t *a1@<X8>)
{
  v5 = *(v1 + 16);
  v3 = [objc_allocWithZone(WiFiAccessoryDeviceViewController) initWithDADevice_];
  *a1 = v5;
  a1[1] = v3;

  return MEMORY[0x2821F9840]();
}

unint64_t sub_2741384AC()
{
  result = qword_28093A1A0;
  if (!qword_28093A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A1A0);
  }

  return result;
}

uint64_t sub_274138500()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_274138540()
{
  result = qword_28093A1D0;
  if (!qword_28093A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A1D0);
  }

  return result;
}

unint64_t sub_274138594()
{
  result = qword_28093A1D8;
  if (!qword_28093A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A1C0, &qword_2741D3AD0);
    sub_2740A6D24(&qword_28093A1E0, &qword_28093A1E8, &qword_2741D3AD8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A1D8);
  }

  return result;
}

unint64_t sub_274138644()
{
  result = qword_28093A1F0;
  if (!qword_28093A1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A1A8, &qword_2741D3A98);
    sub_274138594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A1F0);
  }

  return result;
}

uint64_t sub_2741386C8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_274138764()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_274138828(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27412F428(a1, v6, v7, v1 + v5);
}

unint64_t sub_274138920()
{
  result = qword_28093A260;
  if (!qword_28093A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A260);
  }

  return result;
}

uint64_t sub_274138974(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_27409861C(a1, a2, a3 & 1);
}

uint64_t sub_2741389B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_274138974(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_2741389C8(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_2741389E0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_2741389E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2740A6AC8(a1, a2, a3 & 1);
}

unint64_t sub_274138A4C()
{
  result = qword_28093A280;
  if (!qword_28093A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A280);
  }

  return result;
}

uint64_t sub_274138B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_274138B60(uint64_t a1)
{
  *(a1 + 304) = 0;
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_274138BCC(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_274133B84(a1, v6, v7, v1 + v5);
}

unint64_t sub_274138CEC()
{
  result = qword_28093A2C0;
  if (!qword_28093A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A2C0);
  }

  return result;
}

unint64_t sub_274138D40()
{
  result = qword_28093A358;
  if (!qword_28093A358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A330, &qword_2741D3D18);
    sub_2740A6D24(&qword_28093A360, &qword_28093A300, &qword_2741D3CE8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A358);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2741C6DBC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274138F5C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_274139018(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_2741390BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_274139144(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27412F428(a1, v6, v7, v1 + v5);
}

uint64_t sub_274139234(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27412F428(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2741C6DBC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274139488(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_274130CE8(a1, v6, v7, v1 + v5);
}

unint64_t sub_274139594()
{
  result = qword_28093A3A8;
  if (!qword_28093A3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A388, &qword_2741D3D78);
    sub_2741C73BC();
    swift_getOpaqueTypeConformance2();
    sub_2740A6D24(&qword_280939658, &qword_280939660, &qword_2741D3DE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A3A8);
  }

  return result;
}

uint64_t sub_274139690()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939FF0, &qword_2741D3840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939FE8, &qword_2741D3838);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939FE0, &qword_2741D3830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939FD8, &qword_2741D3828);
  sub_2740A6D24(&qword_28093A008, &qword_280939FD8, &qword_2741D3828, MEMORY[0x277CDE580]);
  swift_getOpaqueTypeConformance2();
  sub_2740A6A74();
  swift_getOpaqueTypeConformance2();
  sub_274125FA4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274139854()
{
  swift_getKeyPath();
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  sub_2741C6A0C();
}

uint64_t sub_2741398F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  sub_2741C6A0C();

  *a2 = *(v3 + 56);
}

uint64_t sub_2741399A4(uint64_t a1)
{
  if (*(v1 + 56) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
    sub_2741C69FC();
  }
}

uint64_t sub_274139AD8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v1 + 64, a1, &qword_28093A3D0, &qword_2741D3EA0);
}

uint64_t sub_274139BA8(uint64_t a1)
{
  swift_beginAccess();
  sub_2740A6D94(v1 + 64, v7, &qword_28093A3D0, &qword_2741D3EA0);
  v3 = sub_27413B5A4(v7, a1);
  sub_27409D420(v7, &qword_28093A3D0, &qword_2741D3EA0);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    v7[0] = v1;
    sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
    sub_2741C69FC();
  }

  else
  {
    sub_2740A6D94(a1, v7, &qword_28093A3D0, &qword_2741D3EA0);
    swift_beginAccess();
    sub_27413B714(v7, v1 + 64);
    swift_endAccess();
  }

  return sub_27409D420(a1, &qword_28093A3D0, &qword_2741D3EA0);
}

uint64_t sub_274139D5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_27413B7A8(a2, a1 + 64);
  return swift_endAccess();
}

uint64_t sub_274139DC0(uint64_t a1)
{
  *(v1 + 96) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  sub_2741C6A3C();
  v2 = type metadata accessor for AssociationState(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  sub_2741C6A3C();
  *(v1 + 56) = v3;
  v8[3] = v2;
  v8[4] = sub_27413B9D0(&qword_28093A3E0, type metadata accessor for AssociationState, &unk_2741D0B34);
  v8[0] = v3;
  v4 = qword_280937B98;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_274175B8C(v5, v8);
  *(v1 + 40) = type metadata accessor for WiFiAssociator();
  *(v1 + 48) = &off_28832D700;
  *(v1 + 16) = v6;
  sub_2741C69EC();

  return v1;
}

uint64_t sub_274139F44(uint64_t a1, char a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 88) = a4;
  *(v6 + 90) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v7 = sub_2741C6AFC();
  *(v6 + 48) = v7;
  *(v6 + 56) = *(v7 - 8);
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27413A010, 0, 0);
}

uint64_t sub_27413A010()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 90);
  v3 = *(v0 + 24);
  sub_2741C856C();

  v4 = sub_27409DCD8();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0x6974746573202D20, 0xED0000273D73676ELL);
  v5 = sub_27409984C(v2, v3, v1 & 0x101);
  MEMORY[0x2743E5FB0](v5);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 88);
  v11 = __swift_project_value_buffer(v8, qword_280945DD8);
  (*(v7 + 16))(v6, v11, v8);
  MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
  MEMORY[0x2743E5FB0](43, 0xE100000000000000);
  MEMORY[0x2743E5FB0](93, 0xE100000000000000);
  sub_2740CA9CC(91, 0xE100000000000000, 0xD000000000000018, 0x80000002741DD3A0);

  (*(v7 + 8))(v6, v8);
  *(v0 + 72) = *(*__swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40)) + 16);
  swift_unknownObjectRetain();
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_27413A2A4;
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = *(v0 + 90);
  v16 = *(v0 + 16);

  return sub_2740EB8A4(v16, v15, v13, v10 & 0x101, v14);
}

uint64_t sub_27413A2A4()
{
  v3 = *v0;

  swift_unknownObjectRelease();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27413A3D8(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 80) = a3;
  *(v5 + 16) = a2;
  *(v5 + 82) = a1;
  v6 = sub_2741C6AFC();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27413A4A4, 0, 0);
}

uint64_t sub_27413A4A4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 82);
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000033, 0x80000002741DD360);
  v4 = sub_27409984C(v3, v2, v1 & 0x101);
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = __swift_project_value_buffer(v7, qword_280945DD8);
  (*(v6 + 16))(v5, v9, v7);
  MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
  MEMORY[0x2743E5FB0](43, 0xE100000000000000);
  MEMORY[0x2743E5FB0](93, 0xE100000000000000);
  sub_2740CA9CC(91, 0xE100000000000000, 0, 0xE000000000000000);

  (*(v6 + 8))(v5, v7);
  *(v0 + 64) = *(*__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40)) + 16);
  swift_unknownObjectRetain();
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_27413A6FC;
  v11 = *(v0 + 24);

  return sub_2740F1830(v11);
}

uint64_t sub_27413A6FC()
{
  v3 = *v0;

  swift_unknownObjectRelease();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27413A830(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_2741C6AFC();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27413A8F8, 0, 0);
}

uint64_t sub_27413A8F8()
{
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 88);
  v6 = __swift_project_value_buffer(v3, qword_280945DD8);
  (*(v2 + 16))(v1, v6, v3);
  sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000035, 0x80000002741DD320);
  (*(v2 + 8))(v1, v3);
  *(v0 + 72) = *(*__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40)) + 16);
  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_27413AA7C;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return sub_274187020(v10, v8, v9, v5 & 1);
}

uint64_t sub_27413AA7C(uint64_t a1)
{
  v4 = *v2;

  swift_unknownObjectRelease();

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_27413ABCC(uint64_t a1)
{
  swift_getKeyPath();
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_27413B9D0(&qword_2809399A0, type metadata accessor for AssociationState, &unk_2741D0B18);

  sub_2741C6A0C();
}

uint64_t sub_27413ACEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = sub_2741C80DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2741C80AC();

  v7 = sub_2741C809C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_2740CE980(0, 0, v5, &unk_2741D3F10, v8);

  return sub_2741C69EC();
}

uint64_t sub_27413AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[49] = a4;
  v5 = sub_2741C6AFC();
  v4[50] = v5;
  v4[51] = *(v5 - 8);
  v4[52] = swift_task_alloc();
  sub_2741C80AC();
  v4[53] = sub_2741C809C();
  v7 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27413AF44, v7, v6);
}

uint64_t sub_27413AF44()
{
  v1 = *(v0 + 392);

  swift_getKeyPath();
  *(v0 + 360) = v1;
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  sub_2741C6A0C();

  v2 = *(v1 + 56);
  swift_getKeyPath();
  *(v0 + 368) = v2;
  sub_27413B9D0(&qword_2809399A0, type metadata accessor for AssociationState, &unk_2741D0B18);

  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v2 + 16, v0 + 56, &qword_2809399A8, &qword_2741D3F40);

  if (*(v0 + 80))
  {
    v3 = (v0 + 256);
    sub_27409D118((v0 + 56), v0 + 16);
    sub_2741C856C();

    sub_27409D4E4(v0 + 16, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A240, &unk_2741D3B20);
    v4 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v4);

    MEMORY[0x2743E5FB0](39, 0xE100000000000000);
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 408);
    v6 = *(v0 + 416);
    v7 = *(v0 + 400);
    v8 = __swift_project_value_buffer(v7, qword_280945DD8);
    (*(v5 + 16))(v6, v8, v7);
    sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD00000000000001FLL, 0x80000002741DD3C0);

    (*(v5 + 8))(v6, v7);
    sub_27409D4E4(v0 + 16, v0 + 176);
    if (swift_dynamicCast())
    {
      *(v0 + 136) = *(v0 + 216);
      *(v0 + 152) = *(v0 + 232);
      *(v0 + 168) = *(v0 + 248);
      sub_27413879C(v0 + 136, v0 + 296);
      sub_274139BA8(v0 + 296);
      sub_274138710(v0 + 136);
    }

    else
    {
      *(v0 + 248) = 0;
      *(v0 + 232) = 0u;
      *(v0 + 216) = 0u;
      sub_27409D420(v0 + 216, &qword_28093A3D0, &qword_2741D3EA0);
    }

    v9 = *(v0 + 392);
    swift_getKeyPath();
    *(v0 + 376) = v9;
    sub_2741C6A0C();

    v10 = *(v1 + 56);
    *(v0 + 288) = 0;
    *v3 = 0u;
    *(v0 + 272) = 0u;
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = v3;
    *(v0 + 384) = v10;

    sub_2741C69FC();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    v3 = (v0 + 56);
  }

  sub_27409D420(v3, &qword_2809399A8, &qword_2741D3F40);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_27413B3D8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  sub_27409D420(v0 + 64, &qword_28093A3D0, &qword_2741D3EA0);
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit16AssociationModel___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssociationModel(uint64_t a1)
{
  result = qword_28093A3C0;
  if (!qword_28093A3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27413B4F0(uint64_t a1)
{
  result = sub_2741C6A4C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_27413B5A4(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a1, v10, &qword_28093A3D0, &qword_2741D3EA0);
  sub_2740A6D94(a2, &v12, &qword_28093A3D0, &qword_2741D3EA0);
  if (!v11)
  {
    if (!*(&v13 + 1))
    {
      sub_27409D420(v10, &qword_28093A3D0, &qword_2741D3EA0);
      return 0;
    }

LABEL_7:
    sub_27409D420(v10, &qword_28093A3D8, &qword_2741D3ED0);
    return 1;
  }

  sub_2740A6D94(v10, v9, &qword_28093A3D0, &qword_2741D3EA0);
  if (!*(&v13 + 1))
  {
    sub_274138710(v9);
    goto LABEL_7;
  }

  v6 = v12;
  v7 = v13;
  v8 = v14;
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v3 = sub_2741C7DAC();
  __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
  v4 = v3 != sub_2741C7DAC();
  sub_274138710(&v6);
  sub_274138710(v9);
  sub_27409D420(v10, &qword_28093A3D0, &qword_2741D3EA0);
  return v4;
}

uint64_t sub_27413B714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3D0, &qword_2741D3EA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27413B7A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3D0, &qword_2741D3EA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27413B848()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_27413B8D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27413B914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_27413AE50(a1, v4, v5, v6);
}

uint64_t sub_27413B9D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WiFiScanner.deinit()
{
  sub_27413BA48(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_27413BA48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E10, &qword_2741D8580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WiFiScanner.__deallocating_deinit()
{
  sub_27413BA48(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_27413BB40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3E8, qword_2741D3FA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_27413BBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3E8, qword_2741D3FA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DNSDomainTextField(uint64_t a1)
{
  result = qword_28093A3F0;
  if (!qword_28093A3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27413BC94(uint64_t a1)
{
  sub_27413BD00(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_27413BD00(uint64_t a1)
{
  if (!qword_28093A400[0])
  {
    type metadata accessor for DNSDomain(255);
    v1 = sub_2741C7BFC();
    if (!v2)
    {
      atomic_store(v1, qword_28093A400);
    }
  }
}

uint64_t sub_27413BD74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3E8, qword_2741D3FA0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - v3;
  sub_2741C714C();
  sub_2741C7BCC();
  swift_getKeyPath();
  sub_2741C7BEC();

  (*(v1 + 8))(v4, v0);
  return sub_2741C7C8C();
}

uint64_t sub_27413BF78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27413BFCC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27413C060(void *a1)
{
  v1 = a1;
  v2 = sub_27413C094();

  return v2;
}

uint64_t sub_27413C104(uint64_t a1)
{
  swift_getObjectType();
  sub_2740B2A50(a1, v5);
  if (!v6)
  {
    sub_2740B29E8(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_2741C7DBC();

  return v2 & 1;
}

uint64_t sub_27413C228(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_2741C83DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_27413C104(v8);

  sub_2740B29E8(v8);
  return v6 & 1;
}

id sub_27413C2F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27413C3A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27413C43C()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 104));

  return swift_deallocClassInstance();
}

void sub_27413C564()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280945E48 = v1;
  *(&xmmword_280945E48 + 1) = v3;
}

void sub_27413C608()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E58 = v1;
  unk_280945E60 = v3;
}

void sub_27413C6B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E68 = v1;
  unk_280945E70 = v3;
}

void sub_27413C76C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E78 = v1;
  unk_280945E80 = v3;
}

void sub_27413C818()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E88 = v1;
  unk_280945E90 = v3;
}

void sub_27413C8CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E98 = v1;
  unk_280945EA0 = v3;
}

void sub_27413C980()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EA8 = v1;
  unk_280945EB0 = v3;
}

void sub_27413CA38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EB8 = v1;
  unk_280945EC0 = v3;
}

void sub_27413CAF0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EC8 = v1;
  unk_280945ED0 = v3;
}

void sub_27413CB9C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945ED8 = v1;
  unk_280945EE0 = v3;
}

void sub_27413CC38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EE8 = v1;
  unk_280945EF0 = v3;
}

void sub_27413CCE4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EF8 = v1;
  unk_280945F00 = v3;
}

void sub_27413CD90()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F08 = v1;
  unk_280945F10 = v3;
}

void sub_27413CE48()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F18 = v1;
  unk_280945F20 = v3;
}

void sub_27413CF04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F28 = v1;
  unk_280945F30 = v3;
}

void sub_27413CFB4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280945F38 = v1;
  *(&xmmword_280945F38 + 1) = v3;
}

void sub_27413D06C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F48 = v1;
  unk_280945F50 = v3;
}

void sub_27413D114()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F58 = v1;
  unk_280945F60 = v3;
}

void sub_27413D1BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F68 = v1;
  unk_280945F70 = v3;
}

void sub_27413D264()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F78 = v1;
  unk_280945F80 = v3;
}

void sub_27413D320()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F88 = v1;
  unk_280945F90 = v3;
}

void sub_27413D3DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F98 = v1;
  unk_280945FA0 = v3;
}

void sub_27413D498()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FA8 = v1;
  unk_280945FB0 = v3;
}

void sub_27413D554()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FB8 = v1;
  unk_280945FC0 = v3;
}

void sub_27413D610()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FC8 = v1;
  unk_280945FD0 = v3;
}

void sub_27413D6C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FD8 = v1;
  unk_280945FE0 = v3;
}

void sub_27413D770()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FE8 = v1;
  unk_280945FF0 = v3;
}

void sub_27413D820()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FF8 = v1;
  unk_280946000 = v3;
}

void sub_27413D8D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946008 = v1;
  unk_280946010 = v3;
}

void sub_27413D980()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946018 = v1;
  unk_280946020 = v3;
}

void sub_27413DA3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946028 = v1;
  unk_280946030 = v3;
}

void sub_27413DAF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946038 = v1;
  *(&xmmword_280946038 + 1) = v3;
}

void sub_27413DBA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946048 = v1;
  *(&xmmword_280946048 + 1) = v3;
}

void sub_27413DC58()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946058 = v1;
  unk_280946060 = v3;
}

void sub_27413DD0C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946068 = v1;
  unk_280946070 = v3;
}

void sub_27413DDBC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946078 = v1;
  *(&xmmword_280946078 + 1) = v3;
}

void sub_27413DE6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946088 = v1;
  *(&xmmword_280946088 + 1) = v3;
}

void sub_27413DF1C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946098 = v1;
  unk_2809460A0 = v3;
}

void sub_27413DFC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460A8 = v1;
  unk_2809460B0 = v3;
}

void sub_27413E084()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460B8 = v1;
  unk_2809460C0 = v3;
}

void sub_27413E140()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460C8 = v1;
  unk_2809460D0 = v3;
}

void sub_27413E204()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460D8 = v1;
  unk_2809460E0 = v3;
}

void sub_27413E2C0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460E8 = v1;
  unk_2809460F0 = v3;
}

void sub_27413E37C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460F8 = v1;
  unk_280946100 = v3;
}

void sub_27413E440()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946108 = v1;
  unk_280946110 = v3;
}

void sub_27413E51C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413E5E4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946138 = v1;
  unk_280946140 = v3;
}

void sub_27413E698()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946148 = v1;
  unk_280946150 = v3;
}

void sub_27413E74C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946158 = v1;
  unk_280946160 = v3;
}

void sub_27413E808()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946168 = v1;
  unk_280946170 = v3;
}

void sub_27413E8C4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946178 = v1;
  unk_280946180 = v3;
}

void sub_27413E980()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946188 = v1;
  unk_280946190 = v3;
}

void sub_27413EA3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946198 = v1;
  unk_2809461A0 = v3;
}

void sub_27413EAF8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461A8 = v1;
  unk_2809461B0 = v3;
}

void sub_27413EBB4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461B8 = v1;
  unk_2809461C0 = v3;
}

void sub_27413EC70()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461C8 = v1;
  unk_2809461D0 = v3;
}

void sub_27413ED2C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461D8 = v1;
  unk_2809461E0 = v3;
}

void sub_27413EDE8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461E8 = v1;
  unk_2809461F0 = v3;
}

void sub_27413EEA4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461F8 = v1;
  unk_280946200 = v3;
}

void sub_27413EF60()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946208 = v1;
  unk_280946210 = v3;
}

void sub_27413F01C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946218 = v1;
  unk_280946220 = v3;
}

void sub_27413F0D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946228 = v1;
  unk_280946230 = v3;
}

void sub_27413F1B4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413F29C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413F364()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946278 = v1;
  unk_280946280 = v3;
}

void sub_27413F420()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946288 = v1;
  unk_280946290 = v3;
}

void sub_27413F50C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413F5E4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413F6AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809462D8 = v1;
  unk_2809462E0 = v3;
}

void sub_27413F768()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809462E8 = v1;
  unk_2809462F0 = v3;
}

void sub_27413F824()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809462F8 = v1;
  unk_280946300 = v3;
}

void sub_27413F8E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946308 = v1;
  unk_280946310 = v3;
}

void sub_27413F99C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946318 = v1;
  unk_280946320 = v3;
}

void sub_27413FA58()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946328 = v1;
  unk_280946330 = v3;
}

void sub_27413FB14()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946338 = v1;
  unk_280946340 = v3;
}

void sub_27413FC20(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413FCF8(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413FDC0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463A8 = v1;
  unk_2809463B0 = v3;
}

void sub_27413FE7C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463B8 = v1;
  unk_2809463C0 = v3;
}

void sub_27413FF38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463C8 = v1;
  unk_2809463D0 = v3;
}

void sub_27413FFF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463D8 = v1;
  unk_2809463E0 = v3;
}

void sub_2741400A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463E8 = v1;
  unk_2809463F0 = v3;
}

void sub_27414015C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463F8 = v1;
  unk_280946400 = v3;
}

void sub_274140218()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946408 = v1;
  unk_280946410 = v3;
}

void sub_2741402CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946418 = v1;
  unk_280946420 = v3;
}

void sub_274140384()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946428 = v1;
  *(&xmmword_280946428 + 1) = v3;
}

void sub_274140440()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946438 = v1;
  unk_280946440 = v3;
}

void sub_2741404F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946448 = v1;
  *(&xmmword_280946448 + 1) = v3;
}

void sub_2741405F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_2741C676C();
  v10 = v9;

  *a4 = v8;
  *a5 = v10;
}

void sub_2741406A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946478 = v1;
  unk_280946480 = v3;
}

void sub_27414075C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946488 = v1;
  unk_280946490 = v3;
}

void sub_274140810()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946498 = v1;
  unk_2809464A0 = v3;
}

void sub_2741408B8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464A8 = v1;
  unk_2809464B0 = v3;
}

void sub_274140964()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464B8 = v1;
  unk_2809464C0 = v3;
}

void sub_274140A1C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464C8 = v1;
  unk_2809464D0 = v3;
}

void sub_274140AD0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464D8 = v1;
  unk_2809464E0 = v3;
}

void sub_274140B88()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464E8 = v1;
  unk_2809464F0 = v3;
}

void sub_274140C3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464F8 = v1;
  unk_280946500 = v3;
}

void sub_274140CF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946508 = v1;
  unk_280946510 = v3;
}

void sub_274140DA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946518 = v1;
  unk_280946520 = v3;
}

void sub_274140E60()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946528 = v1;
  unk_280946530 = v3;
}

void sub_274140F14()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946538 = v1;
  unk_280946540 = v3;
}

void sub_274140FCC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946548 = v1;
  unk_280946550 = v3;
}

void sub_274141080()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946558 = v1;
  unk_280946560 = v3;
}

void sub_274141134()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946568 = v1;
  unk_280946570 = v3;
}

void sub_2741411E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946578 = v1;
  unk_280946580 = v3;
}

void sub_2741412A4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946588 = v1;
  unk_280946590 = v3;
}

void sub_27414135C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946598 = v1;
  unk_2809465A0 = v3;
}

void sub_274141418()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465A8 = v1;
  unk_2809465B0 = v3;
}

void sub_2741414D0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465B8 = v1;
  unk_2809465C0 = v3;
}

void sub_274141588()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465C8 = v1;
  unk_2809465D0 = v3;
}

void sub_274141640()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465D8 = v1;
  unk_2809465E0 = v3;
}

void sub_2741416F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465E8 = v1;
  unk_2809465F0 = v3;
}

void sub_2741417AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465F8 = v1;
  unk_280946600 = v3;
}

void sub_274141860()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946608 = v1;
  unk_280946610 = v3;
}

void sub_274141918()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946618 = v1;
  unk_280946620 = v3;
}

void sub_2741419D0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946628 = v1;
  unk_280946630 = v3;
}

void sub_274141A84()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946638 = v1;
  unk_280946640 = v3;
}

void sub_274141B38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946658 = v1;
  unk_280946660 = v3;
}

void sub_274141BF0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946668 = v1;
  *(&xmmword_280946668 + 1) = v3;
}

void sub_274141CA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946678 = v1;
  unk_280946680 = v3;
}

void sub_274141D64()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946688 = v1;
  unk_280946690 = v3;
}

void sub_274141E18()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946698 = v1;
  *(&xmmword_280946698 + 1) = v3;
}

void sub_274141ED0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_2809466A8 = v1;
  *(&xmmword_2809466A8 + 1) = v3;
}

void sub_274141F88()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466B8 = v1;
  unk_2809466C0 = v3;
}

void sub_274142044()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466C8 = v1;
  unk_2809466D0 = v3;
}

void sub_2741420FC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466D8 = v1;
  unk_2809466E0 = v3;
}

void sub_2741421B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466E8 = v1;
  unk_2809466F0 = v3;
}

void sub_274142268()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466F8 = v1;
  unk_280946700 = v3;
}

void sub_274142318()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946708 = v1;
  unk_280946710 = v3;
}

void sub_2741423CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946718 = v1;
  unk_280946720 = v3;
}

void sub_274142484()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946728 = v1;
  unk_280946730 = v3;
}

void sub_274142540()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946738 = v1;
  unk_280946740 = v3;
}

void sub_2741425FC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946748 = v1;
  unk_280946750 = v3;
}

void sub_2741426B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946758 = v1;
  *(&xmmword_280946758 + 1) = v3;
}

void sub_27414275C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946768 = v1;
  unk_280946770 = v3;
}

void sub_274142818()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946778 = v1;
  *(&xmmword_280946778 + 1) = v3;
}

void sub_2741428CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946788 = v1;
  unk_280946790 = v3;
}

void sub_274142988()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946798 = v1;
  unk_2809467A0 = v3;
}

void sub_274142A3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467A8 = v1;
  unk_2809467B0 = v3;
}

void sub_274142AF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467B8 = v1;
  unk_2809467C0 = v3;
}

void sub_274142BA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467C8 = v1;
  unk_2809467D0 = v3;
}

void sub_274142C60()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467D8 = v1;
  unk_2809467E0 = v3;
}

void sub_274142D14()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467E8 = v1;
  unk_2809467F0 = v3;
}

void sub_274142DCC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467F8 = v1;
  unk_280946800 = v3;
}

void sub_274142E80()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946808 = v1;
  unk_280946810 = v3;
}

void sub_274142F34()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946818 = v1;
  unk_280946820 = v3;
}

void sub_274142FE8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946828 = v1;
  unk_280946830 = v3;
}

void sub_27414309C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946838 = v1;
  unk_280946840 = v3;
}

void sub_274143154()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946848 = v1;
  unk_280946850 = v3;
}

void sub_274143204()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946858 = v1;
  unk_280946860 = v3;
}

void sub_2741432BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946868 = v1;
  unk_280946870 = v3;
}

void sub_274143374()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946878 = v1;
  unk_280946880 = v3;
}

void sub_274143428()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946888 = v1;
  unk_280946890 = v3;
}

void sub_2741434DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946898 = v1;
  unk_2809468A0 = v3;
}

void sub_274143590()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468A8 = v1;
  unk_2809468B0 = v3;
}

void sub_274143648()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_2809468B8 = v1;
  *(&xmmword_2809468B8 + 1) = v3;
}

void sub_2741436EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_2809468C8 = v1;
  *(&xmmword_2809468C8 + 1) = v3;
}

void sub_2741437A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468D8 = v1;
  unk_2809468E0 = v3;
}

void sub_274143860()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468E8 = v1;
  unk_2809468F0 = v3;
}

void sub_27414391C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468F8 = v1;
  unk_280946900 = v3;
}

void sub_2741439D4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946908 = v1;
  unk_280946910 = v3;
}

void sub_274143A7C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946918 = v1;
  unk_280946920 = v3;
}

void sub_274143B24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946928 = v1;
  *(&xmmword_280946928 + 1) = v3;
}

void sub_274143BDC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946938 = v1;
  unk_280946940 = v3;
}

void sub_274143C84()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946948 = v1;
  unk_280946950 = v3;
}

void sub_274143D3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946958 = v1;
  unk_280946960 = v3;
}

void sub_274143DE8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946968 = v1;
  unk_280946970 = v3;
}

void sub_274143EA0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946978 = v1;
  unk_280946980 = v3;
}

void sub_274143F48()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946988 = v1;
  unk_280946990 = v3;
}

void sub_274144000()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946998 = v1;
  unk_2809469A0 = v3;
}

void sub_2741440B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_2809469A8 = v1;
  *(&xmmword_2809469A8 + 1) = v3;
}

void sub_274144168()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469B8 = v1;
  unk_2809469C0 = v3;
}

void sub_274144214()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469C8 = v1;
  unk_2809469D0 = v3;
}

void sub_2741442CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469D8 = v1;
  unk_2809469E0 = v3;
}

void sub_274144380()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469E8 = v1;
  unk_2809469F0 = v3;
}

void sub_27414443C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469F8 = v1;
  unk_280946A00 = v3;
}

void sub_2741444F0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A08 = v1;
  unk_280946A10 = v3;
}

void sub_2741445A4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A18 = v1;
  unk_280946A20 = v3;
}

void sub_27414465C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A28 = v1;
  unk_280946A30 = v3;
}

void sub_274144710()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A38 = v1;
  unk_280946A40 = v3;
}

void sub_2741447C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A48 = v1;
  unk_280946A50 = v3;
}

void sub_274144880()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A58 = v1;
  unk_280946A60 = v3;
}

void sub_274144938()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A68 = v1;
  unk_280946A70 = v3;
}

void sub_2741449EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A78 = v1;
  unk_280946A80 = v3;
}

void sub_274144AA4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A88 = v1;
  unk_280946A90 = v3;
}

void sub_274144B58()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A98 = v1;
  unk_280946AA0 = v3;
}

void sub_274144C10()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AA8 = v1;
  unk_280946AB0 = v3;
}

void sub_274144CC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AC8 = v1;
  unk_280946AD0 = v3;
}

void sub_274144D78()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AD8 = v1;
  unk_280946AE0 = v3;
}

void sub_274144E24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AE8 = v1;
  unk_280946AF0 = v3;
}

void sub_274144ED4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AF8 = v1;
  unk_280946B00 = v3;
}

void sub_274144F8C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B08 = v1;
  unk_280946B10 = v3;
}

void sub_274145044()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946B18 = v1;
  *(&xmmword_280946B18 + 1) = v3;
}

void sub_2741450FC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B28 = v1;
  unk_280946B30 = v3;
}

void sub_2741451B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B38 = v1;
  unk_280946B40 = v3;
}

void sub_27414526C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946B48 = v1;
  *(&xmmword_280946B48 + 1) = v3;
}

void sub_274145328()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B58 = v1;
  unk_280946B60 = v3;
}

void sub_2741453E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B68 = v1;
  unk_280946B70 = v3;
}

void sub_274145498()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946B78 = v1;
  *(&xmmword_280946B78 + 1) = v3;
}

void sub_274145540()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B88 = v1;
  unk_280946B90 = v3;
}

void sub_2741455F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C28 = v1;
  unk_280946C30 = v3;
}

void sub_2741456B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C38 = v1;
  unk_280946C40 = v3;
}

void sub_274145768()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C48 = v1;
  unk_280946C50 = v3;
}

void sub_27414581C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C58 = v1;
  unk_280946C60 = v3;
}

void sub_2741458C4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C68 = v1;
  unk_280946C70 = v3;
}

void sub_274145978()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C78 = v1;
  unk_280946C80 = v3;
}

void sub_274145A24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C88 = v1;
  unk_280946C90 = v3;
}

void sub_274145AD8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C98 = v1;
  unk_280946CA0 = v3;
}

void sub_274145B94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CA8 = v1;
  unk_280946CB0 = v3;
}

void sub_274145C40()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CB8 = v1;
  unk_280946CC0 = v3;
}

void sub_274145CF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CC8 = v1;
  unk_280946CD0 = v3;
}

void sub_274145DAC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946CD8 = v1;
  *(&xmmword_280946CD8 + 1) = v3;
}

void sub_274145E5C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CE8 = v1;
  unk_280946CF0 = v3;
}

void sub_274145F0C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CF8 = v1;
  unk_280946D00 = v3;
}

void sub_274145FC4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946D08 = v1;
  *(&xmmword_280946D08 + 1) = v3;
}

void sub_274146074()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946D18 = v1;
  *(&xmmword_280946D18 + 1) = v3;
}

void sub_274146130()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D28 = v1;
  unk_280946D30 = v3;
}

void sub_2741461E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946D38 = v1;
  *(&xmmword_280946D38 + 1) = v3;
}

void sub_2741462A0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D48 = v1;
  unk_280946D50 = v3;
}

void sub_274146388()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D68 = v1;
  unk_280946D70 = v3;
}

void sub_274146484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_2741C676C();
  v10 = v9;

  *a4 = v8;
  *a5 = v10;
}

void sub_27414653C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D98 = v1;
  unk_280946DA0 = v3;
}

void sub_274146610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_2741C676C();
  v10 = v9;

  *a4 = v8;
  *a5 = v10;
}

void sub_2741466C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946DB8 = v1;
  unk_280946DC0 = v3;
}

void sub_274146770()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946DC8 = v2;
  unk_280946DD0 = v4;
}

void sub_27414683C()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946DD8 = v2;
  unk_280946DE0 = v4;
}

void sub_274146908()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946DE8 = v2;
  unk_280946DF0 = v4;
}

void sub_2741469D8()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946DF8 = v2;
  unk_280946E00 = v4;
}

void sub_274146AA4()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946E08 = v2;
  unk_280946E10 = v4;
}

void sub_274146B70()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E18 = v1;
  unk_280946E20 = v3;
}

void sub_274146C24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E28 = v1;
  unk_280946E30 = v3;
}

void sub_274146CD0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E38 = v1;
  unk_280946E40 = v3;
}

void sub_274146D78()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E48 = v1;
  unk_280946E50 = v3;
}

void sub_274146E24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E58 = v1;
  unk_280946E60 = v3;
}

void sub_274146ED8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E68 = v1;
  unk_280946E70 = v3;
}

void sub_274146F94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E78 = v1;
  unk_280946E80 = v3;
}

void sub_274147048()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E88 = v1;
  unk_280946E90 = v3;
}

void sub_274147100()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E98 = v1;
  unk_280946EA0 = v3;
}

void sub_2741471B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EA8 = v1;
  unk_280946EB0 = v3;
}

void sub_27414726C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EB8 = v1;
  unk_280946EC0 = v3;
}

void sub_274147324()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EC8 = v1;
  unk_280946ED0 = v3;
}

void sub_2741473DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  *&xmmword_280946ED8 = v1;
  *(&xmmword_280946ED8 + 1) = v3;
}

void sub_274147488()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EE8 = v1;
  unk_280946EF0 = v3;
}

void sub_274147540()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EF8 = v1;
  unk_280946F00 = v3;
}

id sub_2741475F8()
{
  v0 = [objc_opt_self() autoUnlockEnabled];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v4 = MGGetBoolAnswer();
    if (v0)
    {
      if (v4)
      {
        if (wapiCapability)
        {
          if (qword_2809376C0 != -1)
          {
            swift_once();
          }

          v5 = &qword_2809464B8;
        }

        else
        {
          if (qword_2809376C8 != -1)
          {
            swift_once();
          }

          v5 = &qword_2809464C8;
        }
      }

      else if (wapiCapability)
      {
        if (qword_2809376D0 != -1)
        {
          swift_once();
        }

        v5 = &qword_2809464D8;
      }

      else
      {
        if (qword_2809376D8 != -1)
        {
          swift_once();
        }

        v5 = &qword_2809464E8;
      }
    }

    else if (v4)
    {
      if (wapiCapability)
      {
        if (qword_2809376E0 != -1)
        {
          swift_once();
        }

        v5 = &qword_2809464F8;
      }

      else
      {
        if (qword_2809376E8 != -1)
        {
          swift_once();
        }

        v5 = &qword_280946508;
      }
    }

    else if (wapiCapability)
    {
      if (qword_2809376F0 != -1)
      {
        swift_once();
      }

      v5 = &qword_280946518;
    }

    else
    {
      if (qword_2809376F8 != -1)
      {
        swift_once();
      }

      v5 = &qword_280946528;
    }

    return *v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274147868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2741478B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274147938()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_274147A78()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_274147BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a1;
  v127 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A590, &qword_2741D4270);
  v128 = *(v2 - 8);
  v129 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v126 = v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v125 = v111 - v7;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A598, &qword_2741D4278);
  MEMORY[0x28223BE20](v115, v8);
  v116 = v111 - v9;
  v10 = sub_2741C713C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v111[1] = v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5A0, &qword_2741D4280);
  MEMORY[0x28223BE20](v113, v13);
  v112 = v111 - v14;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5A8, &qword_2741D4288);
  MEMORY[0x28223BE20](v121, v15);
  v114 = v111 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5B0, &qword_2741D4290);
  MEMORY[0x28223BE20](v123, v17);
  v122 = v111 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5B8, &qword_2741D4298);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v124 = v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v132 = v111 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D0, &qword_2741CF940);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = v111 - v27;
  v133 = sub_2741C717C();
  v118 = *(v133 - 1);
  MEMORY[0x28223BE20](v133, v29);
  v31 = v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D8, &unk_2741D5420);
  MEMORY[0x28223BE20](v117, v32);
  v34 = v111 - v33;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E0, &qword_2741D42A0);
  v36 = MEMORY[0x28223BE20](v131, v35);
  v130 = v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v40 = v111 - v39;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5C0, &qword_2741D42A8);
  MEMORY[0x28223BE20](v119, v41);
  v43 = v111 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5C8, &qword_2741D42B0);
  v46 = MEMORY[0x28223BE20](v44 - 8, v45);
  v134 = v111 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v50 = v111 - v49;
  v135 = sub_2741C79CC();
  sub_2741C714C();
  sub_2741C77AC();

  v51 = v120;

  sub_2741C716C();
  sub_2741C6E5C();
  (*(v118 + 8))(v31, v133);
  v52 = v34;
  v53 = v131;
  sub_27409D420(v52, &qword_2809381D8, &unk_2741D5420);
  v54 = sub_2741C75AC();
  (*(*(v54 - 8) + 56))(v28, 1, 1, v54);
  v55 = sub_2741C75CC();
  sub_27409D420(v28, &qword_2809381D0, &qword_2741CF940);
  KeyPath = swift_getKeyPath();
  v57 = &v40[*(v53 + 36)];
  *v57 = KeyPath;
  v57[1] = v55;
  v58 = *(v51 + 24);
  v59 = *(v51 + 32);
  __swift_project_boxed_opaque_existential_1(v51, v58);
  if ((*(v59 + 72))(v58, v59))
  {
    v60 = 0.0;
  }

  else
  {
    v60 = 1.0;
  }

  sub_2740A6C18(v40, v43, &qword_2809381E0, &qword_2741D42A0);
  *&v43[*(v119 + 36)] = v60;
  v61 = *(v51 + 24);
  v62 = *(v51 + 32);
  __swift_project_boxed_opaque_existential_1(v51, v61);
  (*(v62 + 72))(v61, v62);
  sub_2741497E0();
  v133 = v50;
  sub_2741C77CC();
  sub_27409D420(v43, &qword_28093A5C0, &qword_2741D42A8);
  v63 = *(v51 + 24);
  v64 = *(v51 + 32);
  __swift_project_boxed_opaque_existential_1(v51, v63);
  if ((*(v64 + 56))(v63, v64))
  {
    v65 = v130;
    sub_2740A7CDC(v130);
    sub_2740A6D94(v65, v122, &qword_2809381E0, &qword_2741D42A0);
    swift_storeEnumTagMultiPayload();
    sub_27414986C();
    sub_274149A94();
    sub_2741C72CC();
    v66 = v65;
    v67 = &qword_2809381E0;
    v68 = &qword_2741D42A0;
  }

  else
  {
    v69 = v130;
    v70 = *(v51 + 24);
    v71 = *(v51 + 32);
    __swift_project_boxed_opaque_existential_1(v51, v70);
    (*(v71 + 72))(v70, v71);
    if (*(v51 + 96) == 1)
    {
      v72 = *(v51 + 24);
      v73 = *(v51 + 32);
      __swift_project_boxed_opaque_existential_1(v51, v72);
      v74 = (*(v73 + 64))(v72, v73);
      sub_2740A78A0(v74, v69);
      sub_2741C712C();
      sub_2741C711C();
      v75 = *(v51 + 24);
      v76 = *(v51 + 32);
      __swift_project_boxed_opaque_existential_1(v51, v75);
      (*(v76 + 32))(v75, v76);
      sub_2741C710C();

      sub_2741C711C();
      sub_2741C710C();

      sub_2741C711C();
      v77 = *(v51 + 24);
      v78 = *(v51 + 32);
      __swift_project_boxed_opaque_existential_1(v51, v77);
      v135 = (*(v78 + 64))(v77, v78);
    }

    else
    {
      v79 = *(v51 + 88) + 77.5;
      v80 = fabsf(sqrtf((v79 * v79) + 450.0));
      sub_2740CBBBC(((v79 / (v80 + v80)) + 0.5));
      v82 = v81;
      sub_2740A78A0(v81, v69);
      sub_2741C712C();
      sub_2741C711C();
      v83 = *(v51 + 24);
      v84 = *(v51 + 32);
      __swift_project_boxed_opaque_existential_1(v51, v83);
      (*(v84 + 32))(v83, v84);
      sub_2741C710C();

      sub_2741C711C();
      sub_2741C710C();

      sub_2741C711C();
      v135 = v82;
    }

    sub_2741C70FC();
    v85 = v122;
    sub_2741C711C();
    sub_2741C715C();
    sub_27414986C();
    v86 = v112;
    v87 = v130;
    sub_2741C77AC();

    sub_27409D420(v87, &qword_2809381E0, &qword_2741D42A0);
    sub_2740A6D94(v86, v116, &qword_28093A5A0, &qword_2741D4280);
    swift_storeEnumTagMultiPayload();
    sub_2741499E0(&qword_28093A5E8, &qword_28093A5A0, &qword_2741D4280, sub_27414986C);
    v88 = v114;
    sub_2741C72CC();
    sub_27409D420(v86, &qword_28093A5A0, &qword_2741D4280);
    sub_2740A6D94(v88, v85, &qword_28093A5A8, &qword_2741D4288);
    swift_storeEnumTagMultiPayload();
    sub_274149A94();
    sub_2741C72CC();
    v66 = v88;
    v67 = &qword_28093A5A8;
    v68 = &qword_2741D4288;
  }

  v89 = sub_27409D420(v66, v67, v68);
  MEMORY[0x28223BE20](v89, v90);
  v111[-2] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5F8, &unk_2741D42F0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A600, &unk_2741D5470);
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A608, &unk_2741D4300);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A610, &unk_2741D5480);
  v94 = sub_2741C732C();
  v95 = sub_2740A6D24(&qword_28093A618, &qword_28093A610, &unk_2741D5480, MEMORY[0x277CDF028]);
  v96 = sub_274149D18(&qword_28093A620, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v135 = v93;
  v136 = v94;
  v137 = v95;
  v138 = v96;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = sub_274149B4C();
  v135 = v91;
  v136 = v92;
  v137 = OpaqueTypeConformance2;
  v138 = v98;
  swift_getOpaqueTypeConformance2();
  v99 = v125;
  sub_2741C6E8C();
  v100 = v134;
  sub_2740A6D94(v133, v134, &qword_28093A5C8, &qword_2741D42B0);
  v101 = v132;
  v102 = v124;
  sub_2740A6D94(v132, v124, &qword_28093A5B8, &qword_2741D4298);
  v104 = v128;
  v103 = v129;
  v105 = *(v128 + 16);
  v106 = v126;
  v105(v126, v99, v129);
  v107 = v127;
  sub_2740A6D94(v100, v127, &qword_28093A5C8, &qword_2741D42B0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A648, &qword_2741D4320);
  sub_2740A6D94(v102, v107 + *(v108 + 48), &qword_28093A5B8, &qword_2741D4298);
  v105((v107 + *(v108 + 64)), v106, v103);
  v109 = *(v104 + 8);
  v109(v99, v103);
  sub_27409D420(v101, &qword_28093A5B8, &qword_2741D4298);
  sub_27409D420(v133, &qword_28093A5C8, &qword_2741D42B0);
  v109(v106, v103);
  sub_27409D420(v102, &qword_28093A5B8, &qword_2741D4298);
  return sub_27409D420(v134, &qword_28093A5C8, &qword_2741D42B0);
}

uint64_t sub_274148BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_2741C732C();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A610, &unk_2741D5480);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v24 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A600, &unk_2741D5470);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v12);
  v14 = &v24 - v13;
  sub_274149D60(a1, &v31);
  v15 = swift_allocObject();
  v16 = v36;
  *(v15 + 80) = v35;
  *(v15 + 96) = v16;
  *(v15 + 112) = v37;
  v17 = v32;
  *(v15 + 16) = v31;
  *(v15 + 32) = v17;
  v18 = v34;
  *(v15 + 48) = v33;
  *(v15 + 64) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A650, &qword_2741D4328);
  sub_274149DA4();
  sub_2741C7A7C();
  sub_2741C731C();
  v19 = sub_2740A6D24(&qword_28093A618, &qword_28093A610, &unk_2741D5480, MEMORY[0x277CDF028]);
  v20 = sub_274149D18(&qword_28093A620, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_2741C76FC();
  (*(v24 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
  v21 = *(a1 + 80);
  v29 = *(a1 + 72);
  v30 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A608, &unk_2741D4300);
  *&v31 = v7;
  *(&v31 + 1) = v3;
  *&v32 = v19;
  *(&v32 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  sub_274149B4C();
  v22 = v25;
  sub_2741C77FC();

  return (*(v26 + 8))(v14, v22);
}

uint64_t sub_274149058@<X0>(uint64_t a1@<X8>)
{
  sub_2740A7FB4(a1);
  v2 = sub_2741C754C();
  sub_2741C6C6C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A650, &qword_2741D4328);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_2741490D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A630, &qword_2741D4310);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v4);
  v6 = &v19 - v5;
  sub_274149D60(a1, &v22);
  v7 = swift_allocObject();
  v8 = v27;
  *(v7 + 80) = v26;
  *(v7 + 96) = v8;
  *(v7 + 112) = v28;
  v9 = v23;
  *(v7 + 16) = v22;
  *(v7 + 32) = v9;
  v10 = v25;
  *(v7 + 48) = v24;
  *(v7 + 64) = v10;
  *&v22 = sub_274149EB4;
  *(&v22 + 1) = v7;
  sub_274147938();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A638, &qword_2741D4318);
  v12 = type metadata accessor for AssociationModel(0);
  v13 = sub_2740A6D24(&qword_28093A640, &qword_28093A638, &qword_2741D4318, &unk_2741D6F50);
  v14 = sub_274149D18(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  sub_2741C770C();

  sub_274147A78();
  type metadata accessor for NetworksListModel(0);
  *&v22 = v11;
  *(&v22 + 1) = v12;
  *&v23 = v13;
  *(&v23 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_274149D18(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  v16 = v20;
  v15 = v21;
  sub_2741C770C();

  (*(v3 + 8))(v6, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A608, &unk_2741D4300);
  v18 = (v15 + *(result + 36));
  *v18 = sub_2741496D0;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0;
  return result;
}

id sub_2741493C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v28 - v6);
  sub_27409D4E4(a1, &v29);
  v8 = sub_274147A78();
  swift_getKeyPath();
  v28 = v8;
  sub_274149D18(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v9 = *(v8 + 128);

  type metadata accessor for NetworkDetailsModel(0);
  v10 = swift_allocObject();
  v11 = v31;
  v12 = v32;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v31);
  MEMORY[0x28223BE20](v13, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_274103260(v15, v9, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(&v29);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v19 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    sub_2740A6C18(v7, a2, &qword_280937E88, &qword_2741CB5A0);
    v21 = type metadata accessor for NetworkDetailsView(0);
    v22 = (a2 + v21[5]);
    v28 = v17;
    sub_2741C7A2C();
    v23 = v30;
    *v22 = v29;
    v22[1] = v23;
    v24 = a2 + v21[6];
    LOBYTE(v28) = 1;
    sub_2741C7A2C();
    v25 = v30;
    *v24 = v29;
    *(v24 + 8) = v25;
    v26 = a2 + v21[7];
    LOBYTE(v28) = 0;
    result = sub_2741C7A2C();
    v27 = v30;
    *v26 = v29;
    *(v26 + 8) = v27;
    *(a2 + v21[8]) = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2741496D0()
{
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A668, &unk_2741D4360);
  v0 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v0);

  MEMORY[0x2743E5FB0](0xD000000000000047, 0x80000002741E1BE0);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_274149784@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A588, &qword_2741D4268);
  return sub_274147BB8(v2, a2 + *(v4 + 44));
}

unint64_t sub_2741497E0()
{
  result = qword_28093A5D0;
  if (!qword_28093A5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A5C0, &qword_2741D42A8);
    sub_27414986C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A5D0);
  }

  return result;
}

unint64_t sub_27414986C()
{
  result = qword_28093A5D8;
  if (!qword_28093A5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381E0, &qword_2741D42A0);
    sub_274149924();
    sub_2740A6D24(&qword_280939658, &qword_280939660, &qword_2741D3DE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A5D8);
  }

  return result;
}

unint64_t sub_274149924()
{
  result = qword_28093A5E0;
  if (!qword_28093A5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381D8, &unk_2741D5420);
    sub_274149D18(&qword_280938F10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A5E0);
  }

  return result;
}

uint64_t sub_2741499E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_274149D18(&qword_280938F10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274149A94()
{
  result = qword_28093A5F0;
  if (!qword_28093A5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A5A8, &qword_2741D4288);
    sub_2741499E0(&qword_28093A5E8, &qword_28093A5A0, &qword_2741D4280, sub_27414986C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A5F0);
  }

  return result;
}

unint64_t sub_274149B4C()
{
  result = qword_28093A628;
  if (!qword_28093A628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A608, &unk_2741D4300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A630, &qword_2741D4310);
    type metadata accessor for NetworksListModel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A638, &qword_2741D4318);
    type metadata accessor for AssociationModel(255);
    sub_2740A6D24(&qword_28093A640, &qword_28093A638, &qword_2741D4318, &unk_2741D6F50);
    sub_274149D18(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
    swift_getOpaqueTypeConformance2();
    sub_274149D18(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A628);
  }

  return result;
}

uint64_t sub_274149D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274149DA4()
{
  result = qword_28093A658;
  if (!qword_28093A658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A650, &qword_2741D4328);
    sub_2741499E0(&qword_28093A660, &qword_2809381F0, &unk_2741D4330, sub_2740A829C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A658);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

BOOL sub_274149F10(void *a1, uint64_t a2)
{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    sub_2740ACAC8(v3, v8);
    if (v8[0] == *a1 && v8[1] == a1[1])
    {
      sub_2740ACB2C(v8);
      return v4 != 0;
    }

    v3 += 104;
    v6 = sub_2741C86DC();
    sub_2740ACB2C(v8);
  }

  while ((v6 & 1) == 0);
  return v4 != 0;
}

void sub_27414A034(uint64_t a1, void *a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(id *))
{
  v8 = a1;
  v23[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2741C844C();
    a3(0);
    sub_2741586EC(a4, a5, MEMORY[0x277D85378]);
    sub_2741C821C();
    v8 = v23[2];
    v11 = v23[3];
    v12 = v23[4];
    v13 = v23[5];
    v14 = v23[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_2740D43C8(v8);
      return;
    }

    while (1)
    {
      a6(v23);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2741C84BC())
      {
        a3(0);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_27414A234(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_2740ACAC8(*(v2 + 48) + 104 * (v11 | (v10 << 6)), v15);
      v12[4] = v15[4];
      v12[5] = v15[5];
      v13 = v16;
      v12[0] = v15[0];
      v12[1] = v15[1];
      v12[2] = v15[2];
      v12[3] = v15[3];
      sub_2741529B4(v14, v12);
      result = sub_2740ACB2C(v14);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27414A350()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();
}

uint64_t sub_27414A3F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  *a2 = *(v3 + 56);
}

uint64_t sub_27414A4A0(uint64_t a1)
{

  v4 = sub_274156A28(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

uint64_t sub_27414A5F4()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();
}

uint64_t sub_27414A698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  *a2 = *(v3 + 64);
}

uint64_t sub_27414A744(uint64_t a1)
{

  v4 = sub_274156A28(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

uint64_t sub_27414A898()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();
}

uint64_t sub_27414A93C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  *a2 = *(v3 + 72);
}

uint64_t sub_27414A9E8(uint64_t a1)
{

  v4 = sub_274156A28(v3, a1);

  if (v4)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

uint64_t sub_27414AB3C()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();
}

uint64_t sub_27414ABE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  *a2 = *(v3 + 80);
}

uint64_t sub_27414AC8C(uint64_t a1)
{

  v4 = sub_274156A28(v3, a1);

  if (v4)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

uint64_t sub_27414ADE0()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
}

uint64_t sub_27414AE98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_27414AF58(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_274157020(v3, a1);

  if (v4)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

uint64_t sub_27414B0A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
}

uint64_t sub_27414B108()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();
}

uint64_t sub_27414B1AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  *a2 = *(v3 + 96);
}

uint64_t sub_27414B258(uint64_t a1)
{
  if (!*(v1 + 96))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  v3 = sub_2741C813C();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 96) = a1;
}

double sub_27414B3F4()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  return *(v0 + 104);
}

double sub_27414B494@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  result = *(v3 + 104);
  *a2 = result;
  return result;
}

void sub_27414B53C(double a1)
{
  if (*(v1 + 104) == a1)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

uint64_t sub_27414B654()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
}

uint64_t sub_27414B70C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_274156A28(v3, a1);

  if (v4)
  {
    *(v1 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

uint64_t sub_27414B854(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 112) = a2;
}

uint64_t sub_27414B8BC()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
}

uint64_t sub_27414B974(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_274156A28(v3, a1);

  if (v4)
  {
    *(v1 + 120) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

uint64_t sub_27414BABC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 120) = a2;
}

uint64_t sub_27414BB24()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();
}

uint64_t sub_27414BBC8(uint64_t a1)
{
  if (*(v1 + 128) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

uint64_t sub_27414BCFC()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_27414BDD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v5 = *(v3 + 144);
  v4 = *(v3 + 152);
  v6 = *(v3 + 160);
  v7 = *(v3 + 161);
  *a2 = *(v3 + 136);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
}

uint64_t sub_27414BE98(__int16 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C69FC();
}

uint64_t sub_27414BF90()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();
}

uint64_t sub_27414C034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  *a2 = *(v3 + 168);
}

uint64_t sub_27414C0E0(uint64_t a1)
{
  if (*(v1 + 168) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C69FC();
  }
}

char *sub_27414C214()
{
  v1 = v0;
  v2 = sub_2741C6AFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740CB460(0xD000000000000021, 0x80000002741E2040);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280945DD8);
  (*(v3 + 16))(v6, v7, v2);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000014, 0x80000002741E1E90);
  (*(v3 + 8))(v6, v2);
  swift_unknownObjectRetain();
  sub_27418EA94(0x10u);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  v8 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksListModel___observationRegistrar;
  v9 = sub_2741C6A4C();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  return v1;
}

uint64_t sub_27414C450()
{
  sub_27414C214();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworksListModel(uint64_t a1)
{
  result = qword_28093A688;
  if (!qword_28093A688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27414C4FC(uint64_t a1)
{
  result = sub_2741C6A4C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_27414C5E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = sub_2741586EC(&qword_280938E50, type metadata accessor for ScanState, &unk_2741D5750);
  v2 = *(v1 + 16);
  v3 = type metadata accessor for ScanState(0);
  return v2(v3, v1);
}

uint64_t (*sub_27414C668(uint64_t a1, uint64_t a2))()
{
  sub_27409D4E4(a1, v5);
  v3 = swift_allocObject();
  sub_27409D118(v5, v3 + 16);
  *(v3 + 56) = a2;

  return sub_2741584D4;
}

uint64_t sub_27414C6EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - v6;
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_27409D4E4(a1, v22);
  sub_2741C80AC();

  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  sub_27409D118(v22, (v10 + 4));
  v10[9] = a2;
  sub_2740CE980(0, 0, v7, &unk_2741D4810, v10);

  v12 = *__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  swift_beginAccess();
  sub_2740A6D94(v12 + 16, &v20, &qword_280938E10, &qword_2741D8580);
  if (v21)
  {
    v13 = sub_27409D118(&v20, v22);
    v15 = MEMORY[0x28223BE20](v13, v14);
    MEMORY[0x28223BE20](v15, &v19 - 4);
    v17 = v22;
    v18 = a2;
    sub_2741C69EC();
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    sub_27409D420(&v20, &qword_280938E10, &qword_2741D8580);
    result = sub_2741C863C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27414C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5[4] = swift_task_alloc();
  v6 = sub_2741C6AFC();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_2741C80AC();
  v5[8] = sub_2741C809C();
  v8 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414CABC, v8, v7);
}

uint64_t sub_27414CABC()
{
  v1 = v0[2];

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = sub_2741586EC(&qword_280938E50, type metadata accessor for ScanState, &unk_2741D5750);
  v3 = *(v2 + 16);
  v4 = type metadata accessor for ScanState(0);
  v5 = v3(v4, v2);
  sub_2741C856C();

  v6 = sub_2740E3040(v5);
  MEMORY[0x2743E5FB0](v6);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  v10 = __swift_project_value_buffer(v9, qword_280945DD8);
  v21 = *(v8 + 16);
  v21(v7, v10, v9);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000017, 0x80000002741E2130);

  v11 = *(v8 + 8);
  v11(v7, v9);
  if (v5 > 0xFu)
  {
    if (v5 == 16)
    {
      sub_274150F08();
      goto LABEL_15;
    }

    if (v5 != 32)
    {
      if (v5 == 64)
      {
        sub_27414DDD8();
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v15 = v0[3];
    v16 = v0[4];
    v17 = sub_2741C80DC();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v15;

    sub_2740CE980(0, 0, v16, &unk_2741D4820, v18);
  }

  else if (v5 != 2 && v5 != 4)
  {
    if (v5 == 8)
    {
      sub_2741517B8();
      goto LABEL_15;
    }

LABEL_13:
    v12 = v0[7];
    v13 = v0[5];
    sub_2741C856C();

    v14 = sub_2740E3040(v5);
    MEMORY[0x2743E5FB0](v14);

    v21(v12, v10, v13);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000010, 0x80000002741E2150);

    v11(v12, v13);
  }

LABEL_15:

  v19 = v0[1];

  return v19();
}

uint64_t sub_27414CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 816) = a4;
  sub_2741C80AC();
  *(v4 + 824) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414CF78, v6, v5);
}

uint64_t sub_27414CF78()
{
  v1 = *(v0 + 816);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v3 = *(*(v1 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 224) = v3;
  sub_2741586EC(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);

  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(v3 + v4, v0 + 16, &qword_280938340, &qword_2741D1660);

  if (!*(v0 + 24))
  {
    sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
    goto LABEL_18;
  }

  v5 = *(v0 + 816);
  v27 = v5;
  v6 = *(v0 + 96);
  *(v0 + 600) = *(v0 + 80);
  *(v0 + 616) = v6;
  *(v0 + 632) = *(v0 + 112);
  v7 = *(v0 + 32);
  *(v0 + 536) = *v2;
  *(v0 + 552) = v7;
  v8 = *(v0 + 64);
  *(v0 + 568) = *(v0 + 48);
  *(v0 + 584) = v8;
  swift_getKeyPath();
  *(v0 + 16) = v5;
  sub_2741C6A0C();

  v9 = *(*(v1 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 16) = v9;

  sub_2741C6A0C();

  v10 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(v9 + v10, v0 + 328, &qword_280938340, &qword_2741D1660);

  swift_getKeyPath();
  *(v0 + 16) = v27;
  sub_2741C6A0C();

  v26 = v1;
  v11 = *(*(v1 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 16) = v11;

  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v11 + 32, v0 + 432, &qword_280938340, &qword_2741D1660);

  sub_2740A6D94(v0 + 328, v0 + 16, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(v0 + 432, v0 + 120, &qword_280938340, &qword_2741D1660);
  if (!*(v0 + 24))
  {
    sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
    v16 = (v0 + 536);
    if (!*(v0 + 128))
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  sub_2740A6D94(v0 + 16, v0 + 640, &qword_280938340, &qword_2741D1660);
  if (!*(v0 + 128))
  {
    sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v0 + 640);
    v16 = (v0 + 536);
LABEL_11:
    sub_27409D420(v0 + 16, &qword_280939B80, &qword_2741D4800);
    goto LABEL_12;
  }

  v12 = *(v0 + 136);
  *(v0 + 224) = *(v0 + 120);
  *(v0 + 240) = v12;
  v13 = *(v0 + 152);
  *(v0 + 320) = *(v0 + 216);
  v14 = *(v0 + 200);
  *(v0 + 288) = *(v0 + 184);
  *(v0 + 304) = v14;
  v15 = *(v0 + 168);
  *(v0 + 256) = v13;
  *(v0 + 272) = v15;
  v16 = (v0 + 536);
  if (*(v0 + 640) == *(v0 + 224) && *(v0 + 648) == *(v0 + 232))
  {
    sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v0 + 224);
    sub_2740ACB2C(v0 + 640);
LABEL_9:
    sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
LABEL_14:
    v18 = *(v0 + 816);
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741E2070);
    swift_getKeyPath();
    *(v0 + 16) = v18;
    sub_2741C6A0C();

    v19 = *(*(v26 + 128) + 16);
    swift_getKeyPath();
    *(v0 + 224) = v19;

    sub_2741C6A0C();

    v20 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
    swift_beginAccess();
    sub_2740A6D94(v19 + v20, v0 + 16, &qword_280938340, &qword_2741D1660);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938340, &qword_2741D1660);
    v21 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v21);

    MEMORY[0x2743E5FB0](0xD000000000000021, 0x80000002741E2090);
    swift_getKeyPath();
    *(v0 + 16) = v18;
    sub_2741C6A0C();

    v16 = (v0 + 536);
    v22 = *(*(v26 + 128) + 16);
    swift_getKeyPath();
    *(v0 + 328) = v22;

    sub_2741C6A0C();

    swift_beginAccess();
    sub_2740A6D94(v22 + 32, v0 + 16, &qword_280938340, &qword_2741D1660);

    v23 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v23);

    MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741E20C0);
    sub_2740CB460(0, 0xE000000000000000);

    goto LABEL_15;
  }

  v17 = sub_2741C86DC();
  sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v0 + 224);
  sub_2740ACB2C(v0 + 640);
  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
  if (v17)
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_274151DB4(v16);
LABEL_15:
  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  *v2 = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;

  sub_2741BA454(v0 + 16);

  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v16);
LABEL_18:
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_27414D804(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741586EC(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);

  sub_2741C6A0C();
}

uint64_t sub_27414D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = sub_2741C80DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_2741C80AC();

  v12 = sub_2741C809C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a1;
  sub_2740CE980(0, 0, v10, a3, v13);

  return sub_2741C69EC();
}

uint64_t sub_27414DAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = a4;
  sub_2741C80AC();
  *(v4 + 256) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414DB50, v6, v5);
}

uint64_t sub_27414DB50()
{
  v1 = *(v0 + 248);

  swift_getKeyPath();
  *(v0 + 120) = v1;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v2 = *(*(v1 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 224) = v2;
  sub_2741586EC(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);

  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v2 + 32, v0 + 120, &qword_280938340, &qword_2741D1660);

  if (*(v0 + 128))
  {
    v3 = *(v0 + 200);
    *(v0 + 80) = *(v0 + 184);
    *(v0 + 96) = v3;
    *(v0 + 112) = *(v0 + 216);
    v4 = *(v0 + 136);
    *(v0 + 16) = *(v0 + 120);
    *(v0 + 32) = v4;
    v5 = *(v0 + 168);
    *(v0 + 48) = *(v0 + 152);
    *(v0 + 64) = v5;
    sub_2741519A0((v0 + 16));
    sub_2740ACB2C(v0 + 16);
  }

  else
  {
    sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_27414DD48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27409D648;

  return sub_27414F220();
}

uint64_t sub_27414DDD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v0;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  if (*(v0 + 96))
  {
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v7 + 16))(v10, v11, v6);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E1FB0);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v7 + 16))(v10, v13, v6);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD00000000000001ALL, 0x80000002741E1F90);
    (*(v7 + 8))(v10, v6);
    sub_2741C80BC();
    v14 = sub_2741C80DC();
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v1;

    sub_2741A771C(0, 0, v5, &unk_2741D4738, v15);

    sub_27414B258(v16);
  }
}

uint64_t sub_27414E154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = sub_2741C6AFC();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = sub_2741C85FC();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27414E270, 0, 0);
}

uint64_t sub_27414E270()
{
  v1 = v0[19];
  swift_getKeyPath();
  v0[26] = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksListModel___observationRegistrar;
  v0[17] = v1;
  v0[27] = sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  v2 = sub_2741C882C();
  v4 = v3;
  sub_2741C874C();
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_27414E3D0;

  return sub_2741B724C(v2, v4, 0, 0, 1);
}

uint64_t sub_27414E3D0()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[24] + 8))(v2[25], v2[23]);
  if (v0)
  {
    v3 = sub_27414EC40;
  }

  else
  {
    v3 = sub_27414E538;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27414E538()
{
  v1 = v0[19];
  if (*(v1 + 96))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[18] = v1;
    sub_2741C69FC();
  }

  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = __swift_project_value_buffer(v5, qword_280945DD8);
  v0[30] = v6;
  v7 = *(v4 + 16);
  v0[31] = v7;
  v0[32] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v5);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000015, 0x80000002741E1FE0);
  v8 = *(v4 + 8);
  v0[33] = v8;
  v0[34] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v0[35] = sub_2741C80AC();
  v0[36] = sub_2741C809C();
  v10 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414E730, v10, v9);
}

uint64_t sub_27414E730()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27414E7C8, 0, 0);
}

uint64_t sub_27414E7C8(uint64_t a1)
{
  *(v1 + 296) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414E854, v3, v2);
}

uint64_t sub_27414E854()
{

  *(v0 + 304) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27414E8D0, 0, 0);
}

uint64_t sub_27414E8D0(uint64_t a1)
{
  *(v1 + 312) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414E95C, v3, v2);
}

uint64_t sub_27414E95C()
{

  sub_2741BAB64(v0 + 96);

  return MEMORY[0x2822009F8](sub_27414E9D8, 0, 0);
}

uint64_t sub_27414E9D8()
{
  if (!*(v0 + 120))
  {
    sub_27409D420(v0 + 96, &qword_280939AF8, &qword_2741D11A0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_8;
  }

  if (!*(v0 + 80))
  {
LABEL_8:
    sub_27409D420(v0 + 56, &qword_28093A228, &unk_2741D4770);
    goto LABEL_9;
  }

  sub_27409D118((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_2741586EC(&qword_28093A3E0, type metadata accessor for AssociationState, &unk_2741D0B34);
  v2 = *(v1 + 16);
  v3 = type metadata accessor for AssociationState(0);
  if ((v2(v3, v1) | 2) == 3)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_9:
    v4 = *(v0 + 264);
    v5 = *(v0 + 176);
    v6 = *(v0 + 160);
    (*(v0 + 248))(v5, *(v0 + 240), v6);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000036, 0x80000002741E2000);
    v4(v5, v6);
    *(v0 + 352) = sub_2741C809C();
    v7 = sub_2741C805C();
    v9 = v8;
    v10 = sub_27414EF9C;
    goto LABEL_10;
  }

  *(v0 + 320) = sub_2741C809C();
  v7 = sub_2741C805C();
  v9 = v11;
  v10 = sub_27414ECB0;
LABEL_10:

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_27414EC40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27414ECB0()
{

  return MEMORY[0x2822009F8](sub_27414ED18, 0, 0);
}

uint64_t sub_27414ED18(uint64_t a1)
{
  *(v1 + 328) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414EDA4, v3, v2);
}

uint64_t sub_27414EDA4()
{

  *(v0 + 336) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27414EE20, 0, 0);
}

uint64_t sub_27414EE20(uint64_t a1)
{
  *(v1 + 344) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414EEAC, v3, v2);
}

uint64_t sub_27414EEAC()
{

  sub_2741B8FB8(32);

  return MEMORY[0x2822009F8](sub_27414EF24, 0, 0);
}

uint64_t sub_27414EF24()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27414EF9C()
{

  return MEMORY[0x2822009F8](sub_27414F004, 0, 0);
}

uint64_t sub_27414F004(uint64_t a1)
{
  *(v1 + 360) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414F090, v3, v2);
}

uint64_t sub_27414F090()
{

  *(v0 + 368) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27414F10C, 0, 0);
}

uint64_t sub_27414F10C(uint64_t a1)
{
  *(v1 + 376) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414F198, v3, v2);
}

uint64_t sub_27414F198()
{

  sub_2741B8FB8(8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27414F220()
{
  v1[16] = v0;
  v2 = sub_2741C6AFC();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A698, &qword_2741D4620);
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6A0, &unk_2741D4628);
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27414F3B0, 0, 0);
}

uint64_t sub_27414F3B0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1((v0[16] + 16), *(v0[16] + 40));
  swift_unknownObjectRetain();
  sub_274187EDC(100, 10.0, 3.0);
  swift_unknownObjectRelease();
  sub_2741C810C();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_27414F4DC;
  v5 = v0[23];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v5, v0 + 14);
}

uint64_t sub_27414F4DC()
{

  if (v0)
  {
    v1 = sub_27414F758;
  }

  else
  {
    v1 = sub_27414F5EC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_27414F5EC()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 128);
    sub_27409D118((v0 + 16), v0 + 56);
    v2 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_27415723C(*v2, v2[1], *(v2 + 16) | (*(v2 + 17) << 8), v2[3], v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = sub_27414F4DC;
    v4 = *(v0 + 184);

    return MEMORY[0x2822005A8](v0 + 16, 0, 0, v4, v0 + 112);
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_27414F758()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[14];
  sub_2741C856C();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E1EB0);
  v0[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  v2 = v0[12];
  v3 = v0[13];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v5 + 16))(v4, v7, v6);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v2, v3);

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_27414F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[87] = a5;
  v5[86] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v5[88] = swift_task_alloc();
  v6 = type metadata accessor for KnownNetwork(0);
  v5[89] = v6;
  v5[90] = *(v6 - 8);
  v5[91] = swift_task_alloc();
  v7 = sub_2741C6AFC();
  v5[92] = v7;
  v5[93] = *(v7 - 8);
  v5[94] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27414FA90, 0, 0);
}

uint64_t sub_27414FA90()
{
  v79 = v0;
  v1 = *(v0 + 688);
  swift_getKeyPath();
  *(v0 + 552) = v1;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();
  if (*(*(v1 + 88) + 16))
  {
    v2 = *(v0 + 696);
    v3 = *(v0 + 688);
    swift_getKeyPath();
    *(v0 + 672) = v3;
    sub_2741C6A0C();

    v4 = *(v1 + 88);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);

    v6 = sub_274155A44(v5, v4, sub_274156108, sub_274156108);

    v7 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v8 = v7[3];
    if (v6[2] <= *(v8 + 16) >> 3)
    {
      v77 = v7[3];

      sub_274152D78(v6);

      v9 = v77;
    }

    else
    {

      v9 = sub_274153528(v6, v8);
    }
  }

  else
  {
    v9 = __swift_project_boxed_opaque_existential_1(*(v0 + 696), *(*(v0 + 696) + 24))[3];
  }

  *(v0 + 760) = v9;
  if (*(v9 + 16))
  {
    sub_2741C856C();

    v77 = 0xD000000000000014;
    v78 = 0x80000002741E1EF0;
    sub_27409DC84();
    v10 = sub_2741C81FC();
    MEMORY[0x2743E5FB0](v10);

    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 752);
    v12 = *(v0 + 744);
    v13 = *(v0 + 736);
    v14 = __swift_project_value_buffer(v13, qword_280945DD8);
    (*(v12 + 16))(v11, v14, v13);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000014, 0x80000002741E1EF0);

    (*(v12 + 8))(v11, v13);
  }

  v15 = *(__swift_project_boxed_opaque_existential_1(*(v0 + 696), *(*(v0 + 696) + 24)) + 17);
  if (v15 <= 1)
  {
    if (v15)
    {
      v28 = *(v9 + 16);
      if (v28)
      {
        v29 = sub_2741776D0(*(v9 + 16), 0);
        v75 = sub_274156D30(&v77, (v29 + 4), v28, v9);
        v30 = v77;
        swift_bridgeObjectRetain_n();
        v19 = sub_2740D43C8(v30);
        if (v75 != v28)
        {
LABEL_60:
          __break(1u);
          return MEMORY[0x2822009F8](v19, v20, v21);
        }
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      sub_27414A744(v29);
      goto LABEL_35;
    }

    v16 = *(v9 + 16);
    if (v16)
    {
      v17 = sub_2741776D0(*(v9 + 16), 0);
      v72 = sub_274156D30(&v77, (v17 + 4), v16, v9);
      v18 = v77;
      swift_bridgeObjectRetain_n();
      v19 = sub_2740D43C8(v18);
      if (v72 != v16)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    sub_27414A4A0(v17);
    goto LABEL_35;
  }

  if (v15 == 2)
  {
    v22 = *(v9 + 16);
    if (v22)
    {
      v23 = sub_2741776D0(*(v9 + 16), 0);
      v73 = sub_274156D30(&v77, (v23 + 4), v22, v9);
      v24 = v77;
      swift_bridgeObjectRetain_n();
      v19 = sub_2740D43C8(v24);
      if (v73 != v22)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    sub_27414A9E8(v23);
    goto LABEL_35;
  }

  if (v15 != 3)
  {
    v25 = *(v9 + 16);
    if (!v25)
    {

      v26 = MEMORY[0x277D84F90];
LABEL_30:
      sub_27414AC8C(v26);
      goto LABEL_35;
    }

    v26 = sub_2741776D0(*(v9 + 16), 0);
    v74 = sub_274156D30(&v77, (v26 + 4), v25, v9);
    v27 = v77;
    swift_bridgeObjectRetain_n();
    v19 = sub_2740D43C8(v27);
    if (v74 == v25)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

  swift_bridgeObjectRetain_n();
  sub_27414AF58(v9);
LABEL_35:
  v31 = *(v0 + 688);
  swift_getKeyPath();
  *(v0 + 656) = v31;
  sub_2741C6A0C();

  v32 = *(v1 + 88);

  v33 = sub_27414A234(v9, v32);
  sub_27414AF58(v33);
  swift_getKeyPath();
  *(v0 + 624) = v31;
  sub_2741C6A0C();

  if (*(v31 + 152))
  {
    v34 = *(v0 + 688);
    swift_getKeyPath();
    *(v0 + 680) = v34;
    sub_2741C6A0C();

    v36 = sub_274157A94(v35, v34);

    sub_27414AF58(v36);
  }

  *(v0 + 768) = 0;
  v37 = *(v0 + 688);
  swift_getKeyPath();
  *(v0 + 608) = v37;
  sub_2741C6A0C();

  v38 = *(*(v37 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 576) = v38;
  sub_2741586EC(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);

  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v38 + 32, v0 + 328, &qword_280938340, &qword_2741D1660);

  if (*(v0 + 336))
  {
    v76 = v1;
    v39 = *(v0 + 408);
    *(v0 + 288) = *(v0 + 392);
    *(v0 + 304) = v39;
    *(v0 + 320) = *(v0 + 424);
    v40 = *(v0 + 344);
    *(v0 + 224) = *(v0 + 328);
    *(v0 + 240) = v40;
    v41 = *(v0 + 376);
    *(v0 + 256) = *(v0 + 360);
    *(v0 + 272) = v41;
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000031, 0x80000002741E1F10);
    v42 = sub_27409DCD8();
    MEMORY[0x2743E5FB0](v42);

    v43 = v77;
    v44 = v78;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 752);
    v46 = *(v0 + 744);
    v47 = *(v0 + 736);
    v48 = *(v0 + 720);
    v71 = *(v0 + 712);
    v49 = *(v0 + 704);
    v50 = *(v0 + 688);
    v51 = __swift_project_value_buffer(v47, qword_280945DD8);
    (*(v46 + 16))(v45, v51, v47);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v43, v44);

    (*(v46 + 8))(v45, v47);
    swift_getKeyPath();
    *(v0 + 560) = v50;
    sub_2741C6A0C();

    v52 = *(*(v37 + 128) + 16);
    swift_getKeyPath();
    *(v0 + 568) = v52;

    sub_2741C6A0C();

    v53 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
    swift_beginAccess();
    sub_2740A6D94(v52 + v53, v49, &qword_280938570, &qword_2741D1630);

    if ((*(v48 + 48))(v49, 1, v71) == 1)
    {
      v54 = *(v0 + 688);
      sub_27409D420(*(v0 + 704), &qword_280938570, &qword_2741D1630);
      swift_getKeyPath();
      *(v0 + 584) = v54;
      sub_2741C6A0C();

      v55 = *(v76 + 88);

      v56 = sub_27415092C((v0 + 224), v55);

      if (v56)
      {
        v57 = *(v0 + 688);
        swift_getKeyPath();
        *(v0 + 592) = v57;
        sub_2741C6A0C();

        *(v0 + 600) = v57;
        swift_getKeyPath();
        sub_2741C6A2C();

        swift_beginAccess();
        if (sub_27415092C((v0 + 224), *(v76 + 88)))
        {
          sub_274153D24((v0 + 224), v0 + 120);
          sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);
        }

        v58 = *(v0 + 688);
        swift_endAccess();
        *(v0 + 616) = v58;
        swift_getKeyPath();
        sub_2741C6A1C();
      }
    }

    else
    {
      v59 = *(v0 + 728);
      sub_27409D240(*(v0 + 704), v59);
      if ((*(v59 + 115) & 1) != 0 || (v60 = *(v0 + 688), swift_getKeyPath(), *(v0 + 632) = v60, sub_2741C6A0C(), , v61 = *(v76 + 88), , v62 = sub_27415092C((v0 + 224), v61), , (v62 & 1) == 0))
      {
        v66 = *(v0 + 728);
      }

      else
      {
        v63 = *(v0 + 688);
        swift_getKeyPath();
        *(v0 + 640) = v63;
        sub_2741C6A0C();

        *(v0 + 648) = v63;
        swift_getKeyPath();
        sub_2741C6A2C();

        swift_beginAccess();
        if (sub_27415092C((v0 + 224), *(v76 + 88)))
        {
          sub_274153D24((v0 + 224), v0 + 16);
          sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
        }

        v64 = *(v0 + 728);
        v65 = *(v0 + 688);
        swift_endAccess();
        *(v0 + 664) = v65;
        swift_getKeyPath();
        sub_2741C6A1C();

        v66 = v64;
      }

      sub_27409D050(v66);
    }

    sub_2740ACB2C(v0 + 224);
  }

  else
  {
    sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
  }

  sub_2741C80AC();
  *(v0 + 776) = sub_2741C809C();
  v67 = sub_2741C805C();
  v69 = v68;
  v19 = sub_274150800;
  v20 = v67;
  v21 = v69;

  return MEMORY[0x2822009F8](v19, v20, v21);
}

void sub_274150800()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 688);

  sub_274150A48(v2);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_2741508B4, 0, 0);
  }
}

uint64_t sub_2741508B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27415092C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_2741C87DC(), v4 = *a1, v5 = a1[1], sub_2741C7F0C(), v6 = sub_2741C880C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      sub_2740ACAC8(*(a2 + 48) + 104 * v8, v13);
      if (v13[0] == v4 && v13[1] == v5)
      {
        break;
      }

      v11 = sub_2741C86DC();
      sub_2740ACB2C(v13);
      if ((v11 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v11 & 1;
    }

    sub_2740ACB2C(v13);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_274150A48(char *a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v37[3] = a1;
  v8 = sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  swift_beginAccess();

  v10 = sub_2741B2B4C(v9);

  v37[0] = v10;

  sub_2741B3160(v37);
  if (v1)
  {

    __break(1u);
  }

  else
  {
    v38 = v7;

    sub_27414B70C(v37[0]);
    swift_getKeyPath();
    v37[0] = a1;
    sub_2741C6A0C();

    v12 = sub_2741B2D20(v11);

    v37[0] = v12;

    sub_2741B3160(v37);
    v32 = 0;

    sub_27414B974(v37[0]);
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_2741C856C();

    v33 = 0xD000000000000010;
    v34 = 0x80000002741E1F50;
    swift_getKeyPath();
    v37[0] = a1;
    sub_2741C6A0C();

    swift_beginAccess();

    v14 = MEMORY[0x2743E6080](v13, &type metadata for ScannedNetwork);
    v16 = v15;

    MEMORY[0x2743E5FB0](v14, v16);

    v29[1] = v8;
    v17 = v33;
    v18 = v34;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v3, qword_280945DD8);
    v30 = *(v4 + 16);
    v31 = v19;
    v20 = v38;
    v30(v38, v19, v3);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v17, v18);

    v21 = *(v4 + 8);
    v21(v20, v3);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_2741C856C();

    v35 = 0xD000000000000010;
    v36 = 0x80000002741E1F70;
    swift_getKeyPath();
    v33 = a1;
    sub_2741C6A0C();

    swift_beginAccess();

    v23 = MEMORY[0x2743E6080](v22, &type metadata for ScannedNetwork);
    v25 = v24;

    MEMORY[0x2743E5FB0](v23, v25);

    v26 = v35;
    v27 = v36;
    v30(v20, v31, v3);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v26, v27);

    return (v21)(v20, v3);
  }

  return result;
}