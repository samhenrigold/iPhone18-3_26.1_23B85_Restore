void sub_26F1729AC(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for TouchHoldView(0);
  v3 = a1 + v2[5];
  type metadata accessor for TrainingManager(0);
  sub_26F179160(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  *v3 = sub_26F17F914();
  v3[8] = v4 & 1;
  v5 = v2[6];
  sub_26F180404();
  *(a1 + v5) = v21;
  v6 = a1 + v2[7];
  sub_26F180404();
  *v6 = v21;
  *(v6 + 1) = *(&v21 + 1);
  v7 = a1 + v2[8];
  sub_26F180404();
  *v7 = v21;
  *(v7 + 1) = *(&v21 + 1);
  v8 = a1 + v2[9];
  sub_26F180404();
  *v8 = v21;
  *(v8 + 2) = v22;
  v9 = (a1 + v2[10]);
  sub_26F180404();
  *v9 = v21;
  v10 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F30, qword_26F183608);
  sub_26F180404();
  *(a1 + v10) = v21;
  v11 = v2[12];
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  *(a1 + v11) = CGRectGetHeight(v23);
}

uint64_t sub_26F172C10()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for TouchHoldView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void *sub_26F172D60(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_26F172C10();
  swift_getKeyPath();
  v18 = v7;
  sub_26F179160(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v8 = *(v7 + 48);

  if ((v8 & 1) == 0)
  {
    v10 = (v2 + *(type metadata accessor for TouchHoldView(0) + 24));
    v12 = *v10;
    v11 = v10[1];
    v18 = *v10;
    v19 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
    result = sub_26F180414();
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      v17[1] = v12;
      v17[2] = v11;
      v17[0] = v20 + 1;
      sub_26F180424();

      result = sub_26F172C10();
      v13 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 72);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (!v14)
      {
        *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 72) = v15;

        sub_26F172C10();
        v16 = sub_26F180714();
        (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
        sub_26F15BCB8(a1, 1, v6);

        return sub_26F13AB10(v6, &qword_2806D4360, &qword_26F181DC0);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F172F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for TouchHoldView(0);
  v6 = v5 - 8;
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = v7;
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5240, &qword_26F183B60);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5248, &qword_26F183B68);
  v11 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v27 - v12;
  v33 = a2;
  v34 = a1;
  sub_26F17FFF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5250, &qword_26F183B70);
  sub_26F13AC54(&qword_2806D5258, &qword_2806D5250, &qword_26F183B70, MEMORY[0x277CE1198]);
  sub_26F17F8A4();
  v14 = (a2 + *(v6 + 48));
  v15 = *v14;
  v16 = v14[1];
  *&v36 = v15;
  *(&v36 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  v17 = v35;
  v18 = &v10[*(v8 + 36)];
  *v18 = 0;
  *(v18 + 1) = v17;
  v36 = *(a2 + *(v6 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  if (v35 >= 4)
  {
    v19 = sub_26F172C10();
    swift_getKeyPath();
    *&v36 = v19;
    sub_26F179160(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    sub_26F17F7C4();
  }

  sub_26F177934();
  sub_26F180274();
  sub_26F13AB10(v10, &qword_2806D5240, &qword_26F183B60);
  v20 = a2;
  v21 = v31;
  sub_26F1777E0(v20, v31);
  v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v23 = swift_allocObject();
  sub_26F177848(v21, v23 + v22);
  v24 = v32;
  (*(v11 + 32))(v32, v13, v28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5278, &qword_26F183B80);
  v26 = (v24 + *(result + 36));
  *v26 = sub_26F1779EC;
  v26[1] = v23;
  v26[2] = 0;
  v26[3] = 0;
  return result;
}

uint64_t sub_26F17338C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_26F17FD74();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5280, &qword_26F183BB0);
  return sub_26F1733F4(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_26F1733F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v72 = a3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4580, &qword_26F182090);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v61 = (&v61 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4588, &qword_26F182098);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v61 - v9;
  v10 = type metadata accessor for TouchHoldView(0);
  v62 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5288, &qword_26F183BB8);
  v63 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = (&v61 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5290, &qword_26F183BC0);
  v66 = *(v16 - 8);
  v67 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v65 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  *v15 = sub_26F180564();
  v15[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5298, &qword_26F183BC8);
  sub_26F173B18(a1, a2, v15 + *(v22 + 44));
  v23 = (v15 + *(v13 + 52));
  *v23 = 0x7267206F746F6870;
  v23[1] = 0xEA00000000006469;
  v24 = (a1 + *(v10 + 32));
  v25 = a1;
  v26 = *v24;
  v27 = *(v24 + 1);
  LOBYTE(v74) = v26;
  v75 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180434();
  sub_26F1777E0(a1, &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v29 = swift_allocObject();
  sub_26F177848(&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52A0, &qword_26F183BD0);
  sub_26F13AC54(&qword_2806D52A8, &qword_2806D5288, &qword_26F183BB8, MEMORY[0x277CE1148]);
  sub_26F177A7C();
  v30 = v25;
  v64 = v20;
  v31 = v62;
  sub_26F1802F4();

  sub_26F13AB10(v15, &qword_2806D5288, &qword_26F183BB8);
  v73 = *(v30 + *(v31 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  if (v74 < 4 || (v32 = sub_26F172C10(), swift_getKeyPath(), *&v73 = v32, sub_26F179160(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30), sub_26F17F7C4(), , v33 = *(v32 + 48), , (v33 & 1) != 0))
  {
    v34 = 1;
    v36 = v69;
    v35 = v70;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v38 = v61;
    *v61 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
    swift_storeEnumTagMultiPayload();
    v39 = v38 + *(type metadata accessor for HapticTouchButtonView(0) + 20);
    type metadata accessor for TrainingManager(0);
    *v39 = sub_26F17F914();
    *(v39 + 8) = v40 & 1;
    v41 = sub_26F180034();
    v42 = (v30 + *(v31 + 40));
    v43 = *v42;
    v44 = v42[1];
    *&v73 = v43;
    *(&v73 + 1) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
    sub_26F180414();
    sub_26F17F894();
    v36 = v69;
    v45 = v70;
    v46 = v38 + *(v70 + 36);
    *v46 = v41;
    *(v46 + 8) = v47;
    *(v46 + 16) = v48;
    *(v46 + 24) = v49;
    *(v46 + 32) = v50;
    *(v46 + 40) = 0;
    sub_26F177B5C(v38, v36);
    v35 = v45;
    v34 = 0;
  }

  (*(v68 + 56))(v36, v34, 1, v35);
  v52 = v65;
  v51 = v66;
  v53 = *(v66 + 16);
  v54 = v64;
  v55 = v67;
  v53(v65, v64, v67);
  v56 = v71;
  sub_26F13A854(v36, v71, &qword_2806D4588, &qword_26F182098);
  v57 = v72;
  v53(v72, v52, v55);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52B8, &qword_26F183BD8);
  sub_26F13A854(v56, &v57[*(v58 + 48)], &qword_2806D4588, &qword_26F182098);
  sub_26F13AB10(v36, &qword_2806D4588, &qword_26F182098);
  v59 = *(v51 + 8);
  v59(v54, v55);
  sub_26F13AB10(v56, &qword_2806D4588, &qword_26F182098);
  return (v59)(v52, v55);
}

uint64_t sub_26F173B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v109 = a3;
  v105 = sub_26F17FE74();
  MEMORY[0x28223BE20](v105);
  v102 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F1804F4();
  v6 = *(v5 - 8);
  v94 = v5;
  v95 = v6;
  MEMORY[0x28223BE20](v5);
  v92 = (&v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_26F180504();
  v98 = *(v8 - 8);
  v99 = v8 - 8;
  v96 = v8;
  v97 = v98;
  MEMORY[0x28223BE20](v8);
  v93 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52C8, &qword_26F183C18) - 8;
  v10 = MEMORY[0x28223BE20](v107);
  v108 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = &v80 - v12;
  v13 = sub_26F17FAE4();
  v14 = *(v13 - 8);
  v88 = v13;
  v89 = v14;
  MEMORY[0x28223BE20](v13);
  v80 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A8, &qword_26F182228);
  v17 = *(v16 - 8);
  v90 = v16;
  v91 = v17;
  MEMORY[0x28223BE20](v16);
  v81 = &v80 - v18;
  v19 = type metadata accessor for TouchHoldView(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46B0, &qword_26F182230);
  v87 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v111 = &v80 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46B8, &qword_26F182238);
  v103 = *(v106 - 8);
  v23 = MEMORY[0x28223BE20](v106);
  v101 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v110 = &v80 - v25;
  v26 = sub_26F180354();
  sub_26F180564();
  sub_26F17FB44();
  *(&v115[6] + 5) = *&v115[21];
  *(&v115[8] + 5) = *&v115[23];
  *(&v115[10] + 5) = *&v115[25];
  *(&v115[12] + 5) = v116;
  *(v115 + 5) = *&v115[15];
  *(&v115[2] + 5) = *&v115[17];
  *(&v115[4] + 5) = *&v115[19];
  *(&v114[4] + 11) = *&v115[8];
  *(&v114[5] + 11) = *&v115[10];
  *(&v114[6] + 11) = *&v115[12];
  *(v114 + 11) = *v115;
  *(&v114[1] + 11) = *&v115[2];
  *(&v114[2] + 11) = *&v115[4];
  *&v114[0] = v26;
  WORD4(v114[0]) = 256;
  BYTE10(v114[0]) = 0;
  *(&v114[7] + 1) = *(&v116 + 1);
  *(&v114[3] + 11) = *&v115[6];
  sub_26F1777E0(a1, &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v85 = *(v20 + 80);
  v86 = v21;
  v28 = swift_allocObject();
  sub_26F177848(&v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46C0, &qword_26F182240);
  v30 = sub_26F14AAE8();
  sub_26F180254();

  v117[4] = v114[4];
  v117[5] = v114[5];
  v117[6] = v114[6];
  v117[7] = v114[7];
  v117[0] = v114[0];
  v117[1] = v114[1];
  v117[2] = v114[2];
  v117[3] = v114[3];
  sub_26F13AB10(v117, &qword_2806D46C0, &qword_26F182240);
  v31 = v80;
  sub_26F17FAD4();
  v82 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F1777E0(a1, v82);
  v83 = v27;
  v32 = swift_allocObject();
  sub_26F177848(&v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v27);
  sub_26F179160(&qword_2806D4700, MEMORY[0x277CDDAD8], MEMORY[0x277CDDAD0]);
  v33 = v81;
  v34 = v88;
  sub_26F1804C4();

  (*(v89 + 8))(v31, v34);
  sub_26F17F924();
  *&v114[0] = v29;
  *(&v114[0] + 1) = v30;
  swift_getOpaqueTypeConformance2();
  sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228, MEMORY[0x277CDF728]);
  v35 = v33;
  v36 = v84;
  v37 = v90;
  v38 = v111;
  sub_26F1802C4();
  (*(v91 + 8))(v35, v37);
  (*(v87 + 8))(v38, v36);
  v39 = v92;
  *v92 = xmmword_26F181FE0;
  (*(v95 + 104))(v39, *MEMORY[0x277CDF108], v94);
  v40 = v93;
  sub_26F180514();
  v41 = v96;
  v42 = sub_26F180894();
  *(v42 + 16) = 3;
  v43 = v97;
  v44 = v42 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v45 = *(v97 + 16);
  v45(v44, v40, v41);
  v46 = *(v98 + 72);
  v45(v44 + v46, v40, v41);
  (*(v43 + 32))(v44 + 2 * v46, v40, v41);
  sub_26F17FD74();
  v112 = a1;
  v113 = v104;
  LODWORD(v114[0]) = 0;
  sub_26F179160(&qword_2806D4710, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_26F180BD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52D0, &qword_26F183C20);
  sub_26F177CE8();
  v47 = v100;
  sub_26F180614();
  sub_26F180564();
  sub_26F17FB44();
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5350, &qword_26F183C60) + 36));
  v49 = v114[5];
  v48[4] = v114[4];
  v48[5] = v49;
  v48[6] = v114[6];
  v50 = v114[1];
  *v48 = v114[0];
  v48[1] = v50;
  v51 = v114[3];
  v48[2] = v114[2];
  v48[3] = v51;
  LOBYTE(v44) = sub_26F180004();
  sub_26F17F894();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5358, &qword_26F183C68) + 36);
  *v60 = v44;
  *(v60 + 8) = v53;
  *(v60 + 16) = v55;
  *(v60 + 24) = v57;
  *(v60 + 32) = v59;
  *(v60 + 40) = 0;
  v61 = v82;
  sub_26F1777E0(a1, v82);
  v62 = v83;
  v63 = swift_allocObject();
  sub_26F177848(v61, v63 + v62);
  v64 = sub_26F180564();
  v66 = v65;
  v67 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5360, &qword_26F183C70) + 36));
  *v67 = sub_26F150C28;
  v67[1] = 0;
  v67[2] = v64;
  v67[3] = v66;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_26F1781D4;
  *(v68 + 24) = v63;
  v69 = v106;
  v70 = (v47 + *(v107 + 44));
  *v70 = sub_26F14B30C;
  v70[1] = v68;
  v71 = v103;
  v72 = *(v103 + 16);
  v73 = v101;
  v74 = v110;
  v72(v101);
  v75 = v108;
  sub_26F178284(v47, v108);
  v76 = v109;
  (v72)(v109, v73, v69);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5368, &unk_26F183C78);
  sub_26F178284(v75, v76 + *(v77 + 48));
  sub_26F13AB10(v47, &qword_2806D52C8, &qword_26F183C18);
  v78 = *(v71 + 8);
  v78(v74, v69);
  sub_26F13AB10(v75, &qword_2806D52C8, &qword_26F183C18);
  return (v78)(v73, v69);
}

uint64_t sub_26F1747AC()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F172D60(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26F174890()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F172D60(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26F174974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_26F17FAC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = type metadata accessor for TouchHoldView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v16 = xmmword_26F181FF0;
  swift_getKeyPath();
  sub_26F1777E0(a1, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_26F177848(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  (*(v6 + 32))(v13 + v12, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47D8, &qword_26F1822F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52E8, &qword_26F183C28);
  sub_26F14B3DC();
  sub_26F177D98(&qword_2806D52E0, &qword_2806D52E8, &qword_26F183C28, sub_26F177E4C);
  return sub_26F1804B4();
}

uint64_t sub_26F174C00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v55 = a2;
  v49 = a4;
  v5 = sub_26F17FCF4();
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F17F7A4();
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F180714();
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TouchHoldView(0);
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5300, &qword_26F183C38);
  MEMORY[0x28223BE20](v50);
  v14 = &v47 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52F8, &qword_26F183C30);
  MEMORY[0x28223BE20](v54);
  v16 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52E8, &qword_26F183C28);
  MEMORY[0x28223BE20](v48);
  v53 = &v47 - v17;
  v51 = *a1;
  strcpy(v62, "TapTouchGrid");
  BYTE13(v62[0]) = 0;
  HIWORD(v62[0]) = -5120;
  v60 = v51;
  v18 = sub_26F180B34();
  MEMORY[0x27438A3F0](v18);

  v19 = v62[0];
  KeyPath = swift_getKeyPath();

  sub_26F180564();
  sub_26F17FB44();
  LOBYTE(v60) = 0;
  v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5318, &qword_26F183C40) + 36)];
  v22 = *(sub_26F17FB14() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_26F17FD14();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #18.0 }

  *v21 = _Q0;
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  *v14 = KeyPath;
  v14[8] = 0;
  *(v14 + 1) = v19;
  v30 = v62[5];
  *(v14 + 6) = v62[4];
  *(v14 + 7) = v30;
  *(v14 + 8) = v62[6];
  v31 = v62[1];
  *(v14 + 2) = v62[0];
  *(v14 + 3) = v31;
  v32 = v62[3];
  *(v14 + 4) = v62[2];
  *(v14 + 5) = v32;
  *(v14 + 18) = 0x3FF0000000000000;
  *(v14 + 76) = 256;
  v33 = swift_getKeyPath();
  v34 = &v14[*(v50 + 36)];
  *v34 = v33;
  v34[8] = 1;
  v35 = v55;
  sub_26F1777E0(v55, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v37 = swift_allocObject();
  sub_26F177848(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
  sub_26F177F40();
  sub_26F180254();

  sub_26F13AB10(v14, &qword_2806D5300, &qword_26F183C38);
  v38 = &v16[*(v54 + 36)];
  v39 = v51;
  sub_26F17530C(v35, v19, *(&v19 + 1), v58, v51, v38);

  v40 = sub_26F180564();
  v42 = v41;
  v43 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5348, &qword_26F183C58) + 36));
  *v43 = v40;
  v43[1] = v42;
  v44 = v53;
  sub_26F180704();
  sub_26F17F794();
  v60 = sub_26F180764();
  v61 = v45;
  sub_26F177E4C();
  sub_26F140F5C();
  sub_26F180294();

  sub_26F13AB10(v16, &qword_2806D52F8, &qword_26F183C30);
  sub_26F17FCE4();
  result = sub_26F17FCD4();
  if (__OFADD__(v39, 1))
  {
    __break(1u);
  }

  else
  {
    v60 = v39 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    sub_26F17FA84();

    return sub_26F13AB10(v44, &qword_2806D52E8, &qword_26F183C28);
  }

  return result;
}

uint64_t sub_26F17530C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a5;
  v83 = a4;
  v81 = a3;
  v80 = a2;
  v88 = a6;
  v7 = sub_26F17FCF4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26F17F7A4();
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26F180714();
  MEMORY[0x28223BE20](v12 - 8);
  v85 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TouchHoldView(0);
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v14);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5370, &qword_26F183CC8);
  MEMORY[0x28223BE20](v76);
  v19 = &v69 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5378, &qword_26F183CD0);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v69 - v20;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5380, &qword_26F183CD8);
  v21 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v78 = &v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5388, &qword_26F183CE0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v86 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v74 = &v69 - v27;
  v28 = *(v15 + 36);
  v82 = a1;
  v29 = (a1 + v28);
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v98) = v30;
  *(&v98 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v90 != 1)
  {
    return (*(v24 + 56))(v88, 1, 1, v23);
  }

  v69 = v24;
  v70 = v23;
  v71 = v16;
  KeyPath = swift_getKeyPath();
  v72 = v21;
  v33 = v81;

  sub_26F180564();
  sub_26F17FB44();
  LOBYTE(v90) = 0;
  v34 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5390, &qword_26F183CE8) + 36)];
  v35 = sub_26F17FB14();
  v73 = v9;
  v36 = *(v35 + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_26F17FD14();
  (*(*(v38 - 8) + 104))(&v34[v36], v37, v38);
  __asm { FMOV            V0.2D, #18.0 }

  *v34 = _Q0;
  *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  *v19 = KeyPath;
  v19[8] = 0;
  *(v19 + 9) = *v105;
  *(v19 + 3) = *&v105[3];
  *(v19 + 2) = v80;
  *(v19 + 3) = v33;
  v44 = v103;
  *(v19 + 6) = v102;
  *(v19 + 7) = v44;
  *(v19 + 8) = v104;
  v45 = v99;
  *(v19 + 2) = v98;
  *(v19 + 3) = v45;
  v46 = v101;
  *(v19 + 4) = v100;
  *(v19 + 5) = v46;
  v47 = swift_getKeyPath();
  v48 = v76;
  v49 = &v19[*(v76 + 36)];
  *v49 = v47;
  v49[8] = 1;
  sub_26F1777E0(v82, &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v51 = swift_allocObject();
  sub_26F177848(&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v50);
  v52 = sub_26F179568();
  v53 = v75;
  sub_26F180254();

  v54 = sub_26F13AB10(v19, &qword_2806D5370, &qword_26F183CC8);
  v71 = &v69;
  v55 = MEMORY[0x28223BE20](v54);
  MEMORY[0x28223BE20](v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53A8, &qword_26F183CF0);
  v90 = v48;
  v91 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = sub_26F179714();
  v68 = sub_26F177D98(&qword_2806D53B8, &qword_2806D53A8, &qword_26F183CF0, sub_26F179768);
  v58 = v78;
  v59 = v79;
  sub_26F180234();
  (*(v77 + 8))(v53, v59);
  sub_26F180704();
  sub_26F17F794();
  v96 = sub_26F180764();
  v97 = v60;
  v90 = v59;
  v91 = &type metadata for ContextMenuView;
  v92 = v56;
  v93 = OpaqueTypeConformance2;
  v94 = v67;
  v95 = v68;
  swift_getOpaqueTypeConformance2();
  sub_26F140F5C();
  v61 = v86;
  v62 = v84;
  sub_26F180294();

  (*(v72 + 8))(v58, v62);
  sub_26F17FCE4();
  result = sub_26F17FCD4();
  if (__OFADD__(v89, 1))
  {
    __break(1u);
  }

  else
  {
    v90 = v89 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    v64 = v74;
    v65 = v70;
    sub_26F17FA84();

    sub_26F13AB10(v61, &qword_2806D5388, &qword_26F183CE0);
    v66 = v88;
    sub_26F179810(v64, v88);
    return (*(v69 + 56))(v66, 0, 1, v65);
  }

  return result;
}

uint64_t sub_26F175D70()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F172D60(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26F175E54@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for TouchHoldView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52C0, &qword_26F183C10);
  sub_26F180434();
  *a4 = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v8;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
}

uint64_t sub_26F175F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a5;
  v33 = a4;
  *(&v38 + 1) = a2;
  *&v38 = a1;
  v31[1] = a6;
  v8 = sub_26F17FCF4();
  MEMORY[0x28223BE20](v8 - 8);
  v39 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26F17F7A4();
  MEMORY[0x28223BE20](v10 - 8);
  v37 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26F180714();
  MEMORY[0x28223BE20](v12 - 8);
  v36 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TouchHoldView(0);
  v15 = *(v14 - 8);
  v35 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26F17FAC4();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53A8, &qword_26F183CF0);
  MEMORY[0x28223BE20](v31[0]);
  v23 = v31 - v22;
  KeyPath = swift_getKeyPath();
  (*(v19 + 16))(v21, a3, v18);
  sub_26F1777E0(a4, v17);
  v24 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v25 = *(v15 + 80);
  v26 = (v20 + v25 + v24) & ~v25;
  v27 = swift_allocObject();
  (*(v19 + 32))(v27 + v24, v21, v32);
  sub_26F177848(v17, v27 + v26);
  v48 = 0;
  sub_26F1777E0(v33, v17);
  v28 = swift_allocObject();
  sub_26F177848(v17, v28 + ((v25 + 16) & ~v25));
  *&v42 = KeyPath;
  BYTE8(v42) = v48;
  v43 = v38;
  *&v44 = sub_26F179AEC;
  *(&v44 + 1) = v27;
  v45 = 0u;
  v46 = 0u;
  *&v47 = sub_26F179DA0;
  *(&v47 + 1) = v28;

  sub_26F180704();
  sub_26F17F794();
  v41[0] = sub_26F180764();
  v41[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53C8, &qword_26F183CF8);
  sub_26F179768();
  sub_26F140F5C();
  sub_26F180294();

  v49[2] = v44;
  v49[3] = v45;
  v49[4] = v46;
  v49[5] = v47;
  v49[0] = v42;
  v49[1] = v43;
  sub_26F13AB10(v49, &qword_2806D53C8, &qword_26F183CF8);
  sub_26F17FCE4();
  result = sub_26F17FCD4();
  if (__OFADD__(v40, 1))
  {
    __break(1u);
  }

  else
  {
    *&v42 = v40 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    sub_26F17FA84();

    return sub_26F13AB10(v23, &qword_2806D53A8, &qword_26F183CF0);
  }

  return result;
}

double sub_26F176530(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TouchHoldView(0);
  v4 = v3 - 8;
  v24[0] = *(v3 - 8);
  v5 = *(v24[0] + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  v13 = sub_26F180714();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = 0x7267206F746F6870;
  *(&v25 + 1) = 0xEA00000000006469;
  sub_26F17FAB4();
  sub_26F172C10();
  sub_26F180704();
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_26F15BCB8(v16, 0, v12);

  sub_26F13AB10(v12, &qword_2806D4360, &qword_26F181DC0);
  (*(v14 + 8))(v16, v13);
  v17 = sub_26F180914();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_26F1777E0(a2, v6);
  sub_26F1808E4();
  v18 = sub_26F1808D4();
  v19 = (*(v24[0] + 80) + 32) & ~*(v24[0] + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  sub_26F177848(v6, v20 + v19);
  v22 = sub_26F1726AC(0, 0, v9, &unk_26F183D08, v20);
  v25 = *(a2 + *(v4 + 52));
  v24[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5000, &qword_26F183760);
  sub_26F180424();
  return result;
}

uint64_t sub_26F1768C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_26F180AA4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_26F1808E4();
  v4[8] = sub_26F1808D4();
  v7 = sub_26F1808C4();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_26F1769B8, v7, v6);
}

uint64_t sub_26F1769B8()
{
  sub_26F180B84();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_26F176A84;

  return sub_26F14A55C(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_26F176A84()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_26F17A6F8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_26F176C18;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26F176C18()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for TouchHoldView(0) + 28));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26F176CD8(uint64_t a1)
{
  type metadata accessor for TouchHoldView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5000, &qword_26F183760);
  sub_26F180414();
  if (v2)
  {
    sub_26F180924();
  }

  sub_26F172C10();
  sub_26F15B0EC(1, 0, 1);
}

uint64_t sub_26F176D8C(uint64_t a1, double a2, double a3)
{
  v5 = sub_26F17FE84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v38 = a1;
  sub_26F14E9B4((&v36 - v18));
  (*(v6 + 104))(v17, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v17, 0, 1, v5);
  v20 = *(v9 + 56);
  sub_26F13A854(v19, v11, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v17, &v11[v20], &qword_2806D4200, &qword_26F181B88);
  v21 = *(v6 + 48);
  if (v21(v11, 1, v5) == 1)
  {
    sub_26F13AB10(v17, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v19, &qword_2806D4200, &qword_26F181B88);
    if (v21(&v11[v20], 1, v5) == 1)
    {
      sub_26F13AB10(v11, &qword_2806D4200, &qword_26F181B88);
      v22 = v38;
LABEL_8:
      v23 = *(v22 + *(type metadata accessor for TouchHoldView(0) + 48)) * 0.5;
      goto LABEL_10;
    }
  }

  else
  {
    sub_26F13A854(v11, v37, &qword_2806D4200, &qword_26F181B88);
    if (v21(&v11[v20], 1, v5) != 1)
    {
      v24 = &v11[v20];
      v25 = v36;
      (*(v6 + 32))(v36, v24, v5);
      sub_26F179160(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v26 = v37;
      v27 = sub_26F1806F4();
      v28 = *(v6 + 8);
      v28(v25, v5);
      sub_26F13AB10(v17, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v19, &qword_2806D4200, &qword_26F181B88);
      v28(v26, v5);
      sub_26F13AB10(v11, &qword_2806D4200, &qword_26F181B88);
      v22 = v38;
      if ((v27 & 1) == 0)
      {
        v23 = 373.0;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_26F13AB10(v17, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v19, &qword_2806D4200, &qword_26F181B88);
    (*(v6 + 8))(v37, v5);
  }

  sub_26F13AB10(v11, &qword_2806D4308, &qword_26F182E30);
  v23 = 373.0;
  v22 = v38;
LABEL_10:
  v29 = v23 + a3 * -0.5;
  v30 = (v22 + *(type metadata accessor for TouchHoldView(0) + 40));
  v31 = *v30;
  v32 = v30[1];
  v39 = v29;
  v40 = v31;
  v41 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180424();
  v33 = sub_26F172C10();
  v40 = v31;
  v41 = v32;
  sub_26F180414();
  *(v33 + 64) = v39;

  v34 = sub_26F172C10();
  v40 = v31;
  v41 = v32;
  sub_26F180414();
  *(v34 + 56) = v39;
}

void sub_26F1772E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TouchHoldView(0);
  v18[0] = *(v4 - 8);
  v5 = *(v18[0] + 64);
  v6 = (a1 + *(MEMORY[0x28223BE20](v4 - 8) + 44));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v20 = *v6;
  v21 = v8;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52C0, &qword_26F183C10);
  sub_26F180414();

  v10 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v10 = v18[1] & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v14 = 0;
LABEL_9:
    v17 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  v20 = v7;
  v21 = v8;
  v22 = v9;
  sub_26F180414();
  sub_26F1427C4();
  v11 = sub_26F1809E4();
  if (!v11)
  {
    v11 = [objc_opt_self() mainBundle];
  }

  v12 = v11;
  v13 = sub_26F180724();

  v14 = [objc_opt_self() imageNamed:v13 inBundle:v12 withConfiguration:0];

  if (!v14)
  {
    goto LABEL_9;
  }

  sub_26F1777E0(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v18[0] + 80) + 16) & ~*(v18[0] + 80);
  v16 = swift_allocObject();
  sub_26F177848(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_26F177BCC;
LABEL_10:
  *a2 = v14;
  a2[1] = v17;
  a2[2] = v16;
}

double sub_26F177514(uint64_t a1)
{
  type metadata accessor for TouchHoldView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  return result;
}

uint64_t sub_26F177584(uint64_t a1)
{
  v2 = sub_26F17FC84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for TouchHoldView(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F180944();
    v9 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v7 = v11[1];
  }

  *(v7 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 1;
}

uint64_t sub_26F1776F4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26F1777E0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_26F177848(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_26F1778AC;
  a2[1] = v7;
  return result;
}

uint64_t sub_26F1777E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TouchHoldView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F177848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TouchHoldView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1778AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TouchHoldView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F172F94(a1, v6, a2);
}

unint64_t sub_26F177934()
{
  result = qword_2806D5260;
  if (!qword_2806D5260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5240, &qword_26F183B60);
    sub_26F13AC54(&qword_2806D5268, &qword_2806D5270, &qword_26F183B78, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5260);
  }

  return result;
}

void sub_26F177A0C(void *a1@<X8>)
{
  v3 = *(type metadata accessor for TouchHoldView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_26F1772E4(v4, a1);
}

unint64_t sub_26F177A7C()
{
  result = qword_2806D52B0;
  if (!qword_2806D52B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D52A0, &qword_26F183BD0);
    sub_26F177B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D52B0);
  }

  return result;
}

unint64_t sub_26F177B00()
{
  result = qword_2806D5520;
  if (!qword_2806D5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5520);
  }

  return result;
}

uint64_t sub_26F177B5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4580, &qword_26F182090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F177BE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TouchHoldView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26F177C70()
{
  type metadata accessor for TouchHoldView(0);

  return sub_26F174890();
}

unint64_t sub_26F177CE8()
{
  result = qword_2806D52D8;
  if (!qword_2806D52D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D52D0, &qword_26F183C20);
    sub_26F177D98(&qword_2806D52E0, &qword_2806D52E8, &qword_26F183C28, sub_26F177E4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D52D8);
  }

  return result;
}

uint64_t sub_26F177D98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26F179160(&qword_2806D4798, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F177E4C()
{
  result = qword_2806D52F0;
  if (!qword_2806D52F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D52F8, &qword_26F183C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5300, &qword_26F183C38);
    sub_26F177F40();
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D5340, &qword_2806D5348, &qword_26F183C58, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D52F0);
  }

  return result;
}

unint64_t sub_26F177F40()
{
  result = qword_2806D5308;
  if (!qword_2806D5308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5300, &qword_26F183C38);
    sub_26F177FF8();
    sub_26F13AC54(&qword_2806D4668, &qword_2806D4670, &qword_26F182180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5308);
  }

  return result;
}

unint64_t sub_26F177FF8()
{
  result = qword_2806D5310;
  if (!qword_2806D5310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5318, &qword_26F183C40);
    sub_26F1780B0();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5310);
  }

  return result;
}

unint64_t sub_26F1780B0()
{
  result = qword_2806D5320;
  if (!qword_2806D5320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5328, &qword_26F183C48);
    sub_26F17815C(&qword_2806D5330, &qword_2806D5338, &qword_26F183C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5320);
  }

  return result;
}

uint64_t sub_26F17815C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26F14A508();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26F1781D4(double a1, double a2)
{
  v5 = *(type metadata accessor for TouchHoldView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F176D8C(v6, a1, a2);
}

uint64_t sub_26F17824C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F178284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D52C8, &qword_26F183C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1782F4@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53E0, &qword_26F183DD8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v1 + 64);
  v16 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v16;
  sub_26F17A530(v1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53E8, &qword_26F183DE0);
  sub_26F13AC54(&qword_2806D53F0, &qword_2806D53E8, &qword_26F183DE0, MEMORY[0x277CE1138]);
  sub_26F180464();
  v17 = swift_allocObject();
  v18 = *(v1 + 48);
  *(v17 + 48) = *(v1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v1 + 64);
  v19 = *(v1 + 16);
  *(v17 + 16) = *v1;
  *(v17 + 32) = v19;
  sub_26F17A530(v1, v29);
  sub_26F180464();
  v20 = *(v3 + 16);
  v20(v8, v13, v2);
  v21 = v27;
  v20(v27, v11, v2);
  v22 = v28;
  v20(v28, v8, v2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D53F8, &qword_26F183DE8);
  v20(&v22[*(v23 + 48)], v21, v2);
  v24 = *(v3 + 8);
  v24(v11, v2);
  v24(v13, v2);
  v24(v21, v2);
  return (v24)(v8, v2);
}

void sub_26F178648(uint64_t a1)
{
  v1 = [objc_opt_self() generalPasteboard];
  sub_26F1427C4();
  v2 = sub_26F1809E4();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  v4 = sub_26F180724();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 withConfiguration:0];

  [v1 setImage_];
}

double sub_26F178764@<D0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v36 = sub_26F17F6C4();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v2 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26F17F7A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - v8;
  v10 = sub_26F180714();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v17 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v17 - 8);
  v33[1] = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F1427C4();
  v19 = sub_26F1809E4();
  if (!v19)
  {
    v19 = [objc_opt_self() mainBundle];
  }

  v20 = v19;
  sub_26F17F794();
  (*(v11 + 16))(v14, v16, v10);
  (*(v4 + 16))(v7, v9, v3);
  v21 = [v20 bundleURL];
  v33[0] = v10;
  v22 = v3;
  v23 = v21;
  sub_26F17F714();

  (*(v34 + 104))(v2, *MEMORY[0x277CC9118], v36);
  sub_26F17F6E4();

  (*(v4 + 8))(v9, v22);
  (*(v11 + 8))(v16, v33[0]);
  v24 = sub_26F1801A4();
  v26 = v25;
  LOBYTE(v23) = v27;
  v29 = v28;
  v30 = sub_26F1803B4();
  v31 = v35;
  *v35 = v24;
  v31[1] = v26;
  LOBYTE(v23) = v23 & 1;
  *(v31 + 16) = v23;
  v31[3] = v29;
  v31[4] = v30;
  sub_26F160E18(v24, v26, v23);

  sub_26F142878(v24, v26, v23);

  return result;
}

uint64_t sub_26F178B7C(uint64_t *a1)
{
  v3 = a1[7];
  v2 = a1[8];
  v4 = *(a1 + 5);
  v13 = *(a1 + 3);
  v14 = v4;
  v9 = v3;
  v10 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5400, &qword_26F183DF0);
  sub_26F180484();
  v5 = a1[1];
  v7 = *(a1 + 16);
  v15 = *a1;
  v6 = v15;
  *&v13 = v15;
  *(&v13 + 1) = v5;
  LOBYTE(v14) = v7;
  sub_26F17A5D0(&v15, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
  MEMORY[0x27438A090](&v12);
  v9 = v6;
  v10 = v5;
  v11 = v7;
  sub_26F180484();
  sub_26F17A62C(&v15);
}

__n128 sub_26F178C8C@<Q0>(void (*a1)(__n128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26F17FCB4();
  a1(&v8);
  v5 = v9;
  result = v8;
  v7 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  return result;
}

double sub_26F178D00@<D0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v36 = sub_26F17F6C4();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v2 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26F17F7A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - v8;
  v10 = sub_26F180714();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v17 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v17 - 8);
  v33[1] = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F1427C4();
  v19 = sub_26F1809E4();
  if (!v19)
  {
    v19 = [objc_opt_self() mainBundle];
  }

  v20 = v19;
  sub_26F17F794();
  (*(v11 + 16))(v14, v16, v10);
  (*(v4 + 16))(v7, v9, v3);
  v21 = [v20 bundleURL];
  v33[0] = v10;
  v22 = v3;
  v23 = v21;
  sub_26F17F714();

  (*(v34 + 104))(v2, *MEMORY[0x277CC9118], v36);
  sub_26F17F6E4();

  (*(v4 + 8))(v9, v22);
  (*(v11 + 8))(v16, v33[0]);
  v24 = sub_26F1801A4();
  v26 = v25;
  LOBYTE(v23) = v27;
  v29 = v28;
  v30 = sub_26F1803B4();
  v31 = v35;
  *v35 = v24;
  v31[1] = v26;
  LOBYTE(v23) = v23 & 1;
  *(v31 + 16) = v23;
  v31[3] = v29;
  v31[4] = v30;
  sub_26F160E18(v24, v26, v23);

  sub_26F142878(v24, v26, v23);

  return result;
}

uint64_t sub_26F179160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F1791A8()
{
  v1 = *(type metadata accessor for TouchHoldView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v13 = sub_26F17FAC4();
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);
  v12 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26F17FE84();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  else
  {
  }

  v9 = v2 | v6;
  v10 = (v3 + v4 + v6) & ~v6;

  (*(v5 + 8))(v0 + v10, v13);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v9 | 7);
}

uint64_t sub_26F179424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TouchHoldView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_26F17FAC4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F174C00(a1, v2 + v6, v9, a2);
}

unint64_t sub_26F179568()
{
  result = qword_2806D5398;
  if (!qword_2806D5398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5370, &qword_26F183CC8);
    sub_26F179620();
    sub_26F13AC54(&qword_2806D4668, &qword_2806D4670, &qword_26F182180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5398);
  }

  return result;
}

unint64_t sub_26F179620()
{
  result = qword_2806D53A0;
  if (!qword_2806D53A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5390, &qword_26F183CE8);
    sub_26F17815C(&qword_2806D5330, &qword_2806D5338, &qword_26F183C50);
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D53A0);
  }

  return result;
}

unint64_t sub_26F179714()
{
  result = qword_2806D53B0;
  if (!qword_2806D53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D53B0);
  }

  return result;
}

unint64_t sub_26F179768()
{
  result = qword_2806D53C0;
  if (!qword_2806D53C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D53C8, &qword_26F183CF8);
    sub_26F17815C(&qword_2806D4788, &qword_2806D4790, &qword_26F182298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D53C0);
  }

  return result;
}

uint64_t sub_26F179810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5388, &qword_26F183CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F179880()
{
  v1 = sub_26F17FAC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for TouchHoldView(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26F17FE84();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v0 + v8, 1, v10))
    {
      (*(v11 + 8))(v0 + v8, v10);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

double sub_26F179AEC()
{
  v1 = *(sub_26F17FAC4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for TouchHoldView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26F176530(v0 + v2, v5);
}

uint64_t objectdestroyTm_6()
{
  v1 = *(type metadata accessor for TouchHoldView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F179DB8()
{
  v1 = *(type metadata accessor for TouchHoldView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F179FA8(uint64_t a1)
{
  v4 = *(type metadata accessor for TouchHoldView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F149E48;

  return sub_26F1768C4(a1, v6, v7, v1 + v5);
}

uint64_t sub_26F17A098(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26F17A190;

  return v6(a1);
}

uint64_t sub_26F17A190()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26F17A288(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F15E4A8;

  return sub_26F17A098(a1, v4);
}

uint64_t sub_26F17A340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F149E48;

  return sub_26F17A098(a1, v4);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26F17A41C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_26F17A464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26F17A734()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26F17A7B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6F6D7463656C6573;
  v5 = 0xEE00747865746572;
  if (a1 != 5)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = 0x7A6F7468636E6970;
  v7 = 0xEB000000006D6F6FLL;
  if (a1 != 3)
  {
    v6 = 0x65747463656C6573;
    v7 = 0xEA00000000007478;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x646E616863756F74;
  v9 = 0xEC000000646C6F68;
  if (a1 != 1)
  {
    v8 = 1734439524;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 7364980;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEC000000646C6F68;
        if (v10 != 0x646E616863756F74)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1734439524)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7364980)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEE00747865746572;
      if (v10 != 0x6F6D7463656C6573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE000000000000000;
      if (v10)
      {
LABEL_39:
        v13 = sub_26F180B44();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEB000000006D6F6FLL;
    if (v10 != 0x7A6F7468636E6970)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEA00000000007478;
    if (v10 != 0x65747463656C6573)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_26F17A9EC(uint64_t a1, unsigned __int8 a2)
{
  sub_26F180B94();
  sub_26F1807B4();

  return sub_26F180BB4();
}

uint64_t TryItAttemptAnalyticsEvent.__allocating_init(tipId:correlationId:collectionId:lessonId:error:success:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  result = swift_allocObject();
  if (a10)
  {
    v18 = a9;
  }

  else
  {
    v18 = 0;
  }

  *(result + 96) = v18;
  *(result + 104) = a10;
  *(result + 112) = a11;
  *(result + 16) = 0xD00000000000001CLL;
  *(result + 24) = 0x800000026F184A70;
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 72) = a6;
  *(result + 80) = a7;
  *(result + 88) = a8;
  return result;
}

double sub_26F17ABE0(uint64_t a1)
{
  sub_26F1807B4();

  return result;
}

unint64_t sub_26F17ACF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F17B50C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F17AD28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7364980;
  v5 = 0xEE00747865746572;
  v6 = 0x6F6D7463656C6573;
  if (v2 != 5)
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = 0xEB000000006D6F6FLL;
  v8 = 0x7A6F7468636E6970;
  if (v2 != 3)
  {
    v8 = 0x65747463656C6573;
    v7 = 0xEA00000000007478;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC000000646C6F68;
  v10 = 0x646E616863756F74;
  if (v2 != 1)
  {
    v10 = 1734439524;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t TryItAttemptAnalyticsEvent.init(tipId:correlationId:collectionId:lessonId:error:success:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a10)
  {
    a9 = 0;
  }

  *(v11 + 96) = a9;
  *(v11 + 104) = a10;
  *(v11 + 112) = a11;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 16) = 0xD00000000000001CLL;
  *(v11 + 24) = 0x800000026F184A70;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;
  *(v11 + 64) = a5;
  *(v11 + 72) = a6;

  *(v11 + 80) = a7;
  *(v11 + 88) = a8;

  return v11;
}

unint64_t sub_26F17AE90()
{
  v0 = sub_26F150D68();

  v1 = sub_26F180724();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v1, 0x726F727265, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v3 = sub_26F1808B4();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v3, 0x73736563637573, 0xE700000000000000, v4);
  sub_26F17AFBC();
  v5 = sub_26F1808B4();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v5, 0x72745F7473726966, 0xE900000000000079, v6);
  return v0;
}

uint64_t sub_26F17AFBC()
{
  if (!*(v0 + 88))
  {
    return 0;
  }

  v1 = objc_opt_self();

  v2 = sub_26F180724();
  v3 = [v1 persistedObjectForKey_];

  if (v3)
  {

    sub_26F180A34();
    swift_unknownObjectRelease();
    sub_26F17B2FC(v7);
    return 0;
  }

  memset(v7, 0, sizeof(v7));
  sub_26F17B2FC(v7);
  v5 = sub_26F1808B4();
  v6 = sub_26F180724();

  [v1 persistObject:v5 forKey:v6];

  return 1;
}

void *TryItAttemptAnalyticsEvent.deinit()
{

  return v0;
}

uint64_t TryItAttemptAnalyticsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26F17B210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F17B260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_26F17B2B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26F17B2CC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_26F17B2FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5418, &unk_26F183E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TryItLessonStepId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TryItLessonStepId(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F17B4B8()
{
  result = qword_2806D5420;
  if (!qword_2806D5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5420);
  }

  return result;
}

unint64_t sub_26F17B50C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F180B14();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F17B574(uint64_t a1)
{
  v3 = sub_26F180644();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26F180684();
  v7 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v1 + 16);
  aBlock[4] = sub_26F17BA54;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);

  sub_26F180664();
  v14 = MEMORY[0x277D84F90];
  sub_26F17BF54(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F17BF9C(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
  sub_26F180A44();
  MEMORY[0x27438A5B0](0, v9, v6, v10);
  _Block_release(v10);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v13);
}

void sub_26F17B818(void *a1)
{
  if (qword_2806D3FF0 != -1)
  {
    swift_once();
  }

  sub_26F180A74();

  v11 = 0xD000000000000018;
  v12 = 0x800000026F185490;
  v2 = a1[2];
  v3 = a1[3];

  MEMORY[0x27438A3F0](v2, v3);

  v4 = MEMORY[0x27438A3F0](0x206874697720, 0xE600000000000000);
  (*(*a1 + 248))(v4);
  sub_26F13AA48(0, &qword_2806D5428, 0x277D82BB8);
  v5 = sub_26F1806E4();
  v7 = v6;

  MEMORY[0x27438A3F0](v5, v7);

  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x800000026F185490;
  TryItLog.debug(_:)(v8);

  v9 = sub_26F180724();

  v15 = sub_26F17BF30;
  v16 = a1;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_26F17BA74;
  v14 = &block_descriptor_5;
  v10 = _Block_copy(&v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_26F17BA74(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_26F13AA48(0, &qword_2806D5428, 0x277D82BB8);
    v4 = sub_26F1806C4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t TryItAnalyticsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy94_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26F17BBEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 94))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26F17BC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 94) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 94) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26F17BCC8()
{
  v9 = sub_26F180974();
  v0 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26F180954();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26F180684();
  MEMORY[0x28223BE20](v4 - 8);
  v8 = sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  sub_26F180674();
  v11 = MEMORY[0x277D84F90];
  sub_26F17BF54(&qword_2806D5430, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5438, "ʧ");
  sub_26F17BF9C(&qword_2806D5440, &qword_2806D5438, "ʧ");
  sub_26F180A44();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v9);
  v5 = sub_26F1809A4();
  v6 = v10;
  *(v10 + 16) = v5;
  return v6;
}

uint64_t sub_26F17BF54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F17BF9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26F17C070(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  v7 = a3();
  result = os_log_type_enabled(v6, v7);
  if (result)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_26F17C2AC(a1, a2, &v11);
    _os_log_impl(&dword_26F137000, v6, v7, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x27438AD70](v10, -1, -1);
    return MEMORY[0x27438AD70](v9, -1, -1);
  }

  return result;
}

uint64_t sub_26F17C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_26F17C940();
  result = sub_26F1809F4();
  *a4 = result;
  return result;
}

id sub_26F17C250@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

unint64_t sub_26F17C2AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26F17C378(v11, 0, 0, 1, a1, a2);
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
    sub_26F17C98C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26F17C378(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26F17C484(a5, a6);
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
    result = sub_26F180A84();
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

void *sub_26F17C484(uint64_t a1, unint64_t a2)
{
  v3 = sub_26F17C4D0(a1, a2);
  sub_26F17C600(&unk_287F28610);
  return v3;
}

void *sub_26F17C4D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_26F17C6EC(v5, 0);
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

  result = sub_26F180A84();
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
        v10 = sub_26F1807E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26F17C6EC(v10, 0);
        result = sub_26F180A64();
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

void sub_26F17C600(uint64_t a1)
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

  v3 = sub_26F17C760(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

void *sub_26F17C6EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5460, &qword_26F184020);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26F17C760(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5460, &qword_26F184020);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26F17C8AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F17C8F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F17C940()
{
  result = qword_2806D5458;
  if (!qword_2806D5458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D5458);
  }

  return result;
}

uint64_t sub_26F17C98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_26F17C9E8(void *a1, uint64_t a2)
{
  [a1 addSublayer_];

  return [a1 setNeedsDisplay];
}

char *sub_26F17CA88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5470, &qword_26F184050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26F17CB8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5488, &qword_26F184068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_26F17CC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_26F180844();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26F17D21C(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_26F180A84();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_26F17D21C(uint64_t a1, unint64_t a2)
{
  v2 = sub_26F180854();
  v6 = sub_26F17D29C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26F17D29C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26F180A14();
    if (!v9 || (v10 = v9, v11 = sub_26F17C6EC(v9, 0), v12 = sub_26F17D3F4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26F1807A4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26F1807A4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26F180A84();
LABEL_4:

  return sub_26F1807A4();
}

unint64_t sub_26F17D3F4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26F17D614(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26F180814();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26F180A84();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26F17D614(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_26F1807F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_26F17D614(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26F180824();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x27438A420](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

char *sub_26F17D690(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F17D7DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26F17D6B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F17D8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F17D6D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4938, &unk_26F1824E0);
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

char *sub_26F17D7DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5478, &qword_26F184058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_26F17D8E0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5480, &qword_26F184060);
  v10 = *(sub_26F17F664() - 8);
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
  v15 = *(sub_26F17F664() - 8);
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

char *sub_26F17DAB8(uint64_t a1)
{
  v2 = sub_26F17F664();
  v94 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v96 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v97 = v85 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5468, &qword_26F184048);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v85 - v10;
  v12 = sub_26F17F694();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F17F684();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26F17E570(v11);
    goto LABEL_100;
  }

  (*(v13 + 32))(v15, v11, v12);
  v16 = sub_26F17F674();
  if (!v16)
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_100;
  }

  v85[1] = a1;
  v86 = v8;
  v87 = v15;
  v88 = v13;
  v89 = v12;
  v17 = v16;
  v93 = *(v16 + 16);
  if (!v93)
  {
    countAndFlagsBits = MEMORY[0x277D84F90];
LABEL_20:

    if (*(countAndFlagsBits + 16))
    {
      v30 = v94;
      v31 = v86;
      (*(v94 + 16))(v86, countAndFlagsBits + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v2);

      v32 = sub_26F17F654();
      v34 = v33;
      (*(v30 + 8))(v31, v2);
      if (v34)
      {
        v100._countAndFlagsBits = v32;
        v100._object = v34;
        v98 = 44;
        v99 = 0xE100000000000000;
        sub_26F140F5C();
        v35 = sub_26F180A24();

        v36 = *(v35 + 16);
        if (!v36)
        {

          v38 = MEMORY[0x277D84F90];
LABEL_104:
          if (qword_2806D3FE8 != -1)
          {
LABEL_119:
            swift_once();
          }

          v74 = qword_2806D5448;
          v100._countAndFlagsBits = 0;
          v100._object = 0xE000000000000000;
          sub_26F180A74();

          v100._countAndFlagsBits = 0xD00000000000001DLL;
          v100._object = 0x800000026F185540;
          v75 = *(v38 + 2);
          v76 = MEMORY[0x277D84F90];
          if (v75)
          {
            v98 = MEMORY[0x277D84F90];

            sub_26F17D690(0, v75, 0);
            v76 = v98;
            v77 = *(v98 + 16);
            v78 = 32;
            do
            {
              v79 = *&v38[v78];
              v98 = v76;
              v80 = *(v76 + 24);
              if (v77 >= v80 >> 1)
              {
                sub_26F17D690((v80 > 1), v77 + 1, 1);
                v76 = v98;
              }

              *(v76 + 16) = v77 + 1;
              *(v76 + 8 * v77 + 32) = v79;
              v78 += 8;
              ++v77;
              --v75;
            }

            while (v75);
          }

          v81 = MEMORY[0x27438A4A0](v76, MEMORY[0x277D83B88]);
          v83 = v82;

          MEMORY[0x27438A3F0](v81, v83);

          v84 = v100;
          v100._countAndFlagsBits = v74;
          TryItLog.debug(_:)(v84);

          (*(v88 + 8))(v87, v89);
          return v38;
        }

        v37 = 0;
        v38 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v37 >= *(v35 + 16))
          {
            goto LABEL_113;
          }

          v39 = (v35 + 32 + 16 * v37);
          v41 = *v39;
          v40 = v39[1];
          v42 = HIBYTE(v40) & 0xF;
          v43 = v41 & 0xFFFFFFFFFFFFLL;
          if ((v40 & 0x2000000000000000) != 0)
          {
            v44 = HIBYTE(v40) & 0xF;
          }

          else
          {
            v44 = v41 & 0xFFFFFFFFFFFFLL;
          }

          if (!v44)
          {
            goto LABEL_25;
          }

          if ((v40 & 0x1000000000000000) == 0)
          {
            break;
          }

          sub_26F17CC90(v41, v40, 10);
          v47 = v67;
          v69 = v68;

          if ((v69 & 1) == 0)
          {
LABEL_89:
            if (v47 <= 5)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = sub_26F17CA88(0, *(v38 + 2) + 1, 1, v38);
              }

              v66 = *(v38 + 2);
              v65 = *(v38 + 3);
              if (v66 >= v65 >> 1)
              {
                v38 = sub_26F17CA88((v65 > 1), v66 + 1, 1, v38);
              }

              *(v38 + 2) = v66 + 1;
              *&v38[8 * v66 + 32] = v47;
            }
          }

LABEL_25:
          if (++v37 == v36)
          {

            goto LABEL_104;
          }
        }

        if ((v40 & 0x2000000000000000) != 0)
        {
          v100._countAndFlagsBits = v41;
          v100._object = (v40 & 0xFFFFFFFFFFFFFFLL);
          if (v41 == 43)
          {
            if (!v42)
            {
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
              goto LABEL_119;
            }

            if (--v42)
            {
              v47 = 0;
              v57 = &v100._countAndFlagsBits + 1;
              while (1)
              {
                v58 = *v57 - 48;
                if (v58 > 9)
                {
                  break;
                }

                v59 = 10 * v47;
                if ((v47 * 10) >> 64 != (10 * v47) >> 63)
                {
                  break;
                }

                v47 = v59 + v58;
                if (__OFADD__(v59, v58))
                {
                  break;
                }

                ++v57;
                if (!--v42)
                {
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v41 == 45)
          {
            if (!v42)
            {
              goto LABEL_117;
            }

            if (--v42)
            {
              v47 = 0;
              v51 = &v100._countAndFlagsBits + 1;
              while (1)
              {
                v52 = *v51 - 48;
                if (v52 > 9)
                {
                  break;
                }

                v53 = 10 * v47;
                if ((v47 * 10) >> 64 != (10 * v47) >> 63)
                {
                  break;
                }

                v47 = v53 - v52;
                if (__OFSUB__(v53, v52))
                {
                  break;
                }

                ++v51;
                if (!--v42)
                {
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v42)
          {
            v47 = 0;
            v62 = &v100;
            while (1)
            {
              v63 = LOBYTE(v62->_countAndFlagsBits) - 48;
              if (v63 > 9)
              {
                break;
              }

              v64 = 10 * v47;
              if ((v47 * 10) >> 64 != (10 * v47) >> 63)
              {
                break;
              }

              v47 = v64 + v63;
              if (__OFADD__(v64, v63))
              {
                break;
              }

              v62 = (v62 + 1);
              if (!--v42)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_87;
        }

        if ((v41 & 0x1000000000000000) != 0)
        {
          v45 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v45 = sub_26F180A84();
        }

        v46 = *v45;
        if (v46 == 43)
        {
          if (v43 < 1)
          {
            goto LABEL_118;
          }

          v42 = v43 - 1;
          if (v43 == 1)
          {
            goto LABEL_87;
          }

          v47 = 0;
          if (v45)
          {
            v54 = v45 + 1;
            while (1)
            {
              v55 = *v54 - 48;
              if (v55 > 9)
              {
                goto LABEL_87;
              }

              v56 = 10 * v47;
              if ((v47 * 10) >> 64 != (10 * v47) >> 63)
              {
                goto LABEL_87;
              }

              v47 = v56 + v55;
              if (__OFADD__(v56, v55))
              {
                goto LABEL_87;
              }

              ++v54;
              if (!--v42)
              {
                goto LABEL_88;
              }
            }
          }
        }

        else if (v46 == 45)
        {
          if (v43 < 1)
          {
            goto LABEL_116;
          }

          v42 = v43 - 1;
          if (v43 == 1)
          {
            goto LABEL_87;
          }

          v47 = 0;
          if (v45)
          {
            v48 = v45 + 1;
            while (1)
            {
              v49 = *v48 - 48;
              if (v49 > 9)
              {
                goto LABEL_87;
              }

              v50 = 10 * v47;
              if ((v47 * 10) >> 64 != (10 * v47) >> 63)
              {
                goto LABEL_87;
              }

              v47 = v50 - v49;
              if (__OFSUB__(v50, v49))
              {
                goto LABEL_87;
              }

              ++v48;
              if (!--v42)
              {
                goto LABEL_88;
              }
            }
          }
        }

        else
        {
          if (!v43)
          {
LABEL_87:
            v47 = 0;
            LOBYTE(v42) = 1;
LABEL_88:
            LOBYTE(v98) = v42;
            if ((v42 & 1) == 0)
            {
              goto LABEL_89;
            }

            goto LABEL_25;
          }

          v47 = 0;
          if (v45)
          {
            do
            {
              v60 = *v45 - 48;
              if (v60 > 9)
              {
                goto LABEL_87;
              }

              v61 = 10 * v47;
              if ((v47 * 10) >> 64 != (10 * v47) >> 63)
              {
                goto LABEL_87;
              }

              v47 = v61 + v60;
              if (__OFADD__(v61, v60))
              {
                goto LABEL_87;
              }

              ++v45;
            }

            while (--v43);
          }
        }

        LOBYTE(v42) = 0;
        goto LABEL_88;
      }

      (*(v88 + 8))(v87, v89);
    }

    else
    {
      (*(v88 + 8))(v87, v89);
    }

LABEL_100:
    if (qword_2806D3FE8 != -1)
    {
      goto LABEL_114;
    }

    goto LABEL_101;
  }

  v18 = 0;
  v92 = v94 + 16;
  v90 = (v94 + 8);
  v95 = (v94 + 32);
  countAndFlagsBits = MEMORY[0x277D84F90];
  v91 = v2;
  while (v18 < *(v17 + 16))
  {
    v20 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v21 = *(v94 + 72);
    (*(v94 + 16))(v97, v17 + v20 + v21 * v18, v2);
    if (sub_26F17F644() == 0x6E6F7373656CLL && v22 == 0xE600000000000000)
    {

LABEL_13:
      v24 = v17;
      v25 = *v95;
      (*v95)(v96, v97, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100._countAndFlagsBits = countAndFlagsBits;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26F17D6B0(0, *(countAndFlagsBits + 16) + 1, 1);
        countAndFlagsBits = v100._countAndFlagsBits;
      }

      v28 = *(countAndFlagsBits + 16);
      v27 = *(countAndFlagsBits + 24);
      if (v28 >= v27 >> 1)
      {
        sub_26F17D6B0((v27 > 1), v28 + 1, 1);
        countAndFlagsBits = v100._countAndFlagsBits;
      }

      *(countAndFlagsBits + 16) = v28 + 1;
      v29 = countAndFlagsBits + v20 + v28 * v21;
      v2 = v91;
      v25(v29, v96, v91);
      v17 = v24;
      goto LABEL_7;
    }

    v23 = sub_26F180B44();

    if (v23)
    {
      goto LABEL_13;
    }

    (*v90)(v97, v2);
LABEL_7:
    if (v93 == ++v18)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  swift_once();
LABEL_101:
  v70 = qword_2806D5448;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  sub_26F180A74();

  v100._countAndFlagsBits = 0xD00000000000002DLL;
  v100._object = 0x800000026F185510;
  v71 = sub_26F17F6F4();
  MEMORY[0x27438A3F0](v71);

  v72 = v100;
  v100._countAndFlagsBits = v70;
  TryItLog.debug(_:)(v72);

  return MEMORY[0x277D84F90];
}

uint64_t sub_26F17E570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5468, &qword_26F184048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F17E7D0()
{
  result = qword_2806D54A0;
  if (!qword_2806D54A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5498, &unk_26F184080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D54A0);
  }

  return result;
}

double sub_26F17E90C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  a6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5490, &qword_26F184078);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26F1826D0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5498, &unk_26F184080);
  *(v7 + 64) = sub_26F17E7D0();
  *(v7 + 32) = a5;

  sub_26F17F884();

  return result;
}

id sub_26F17E9F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UIImageActivityType();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC9TipsTryIt19UIImageActivityType_image] = a2;
  v21.receiver = v8;
  v21.super_class = v7;
  v9 = a2;
  v10 = objc_msgSendSuper2(&v21, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D5530, &qword_26F1841C8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26F1826D0;
  *(v11 + 56) = v7;
  *(v11 + 32) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v13 = v10;
  v14 = sub_26F180864();

  v15 = [v12 initWithActivityItems:v14 applicationActivities:0];

  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = a3;
  v16[4] = a4;
  v20[4] = sub_26F17F0A4;
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_26F17EBC8;
  v20[3] = &block_descriptor_5;
  v17 = _Block_copy(v20);
  v18 = v9;
  sub_26F17F0EC(a3, a4);

  [v15 setCompletionWithItemsHandler_];
  _Block_release(v17);

  return v15;
}

double sub_26F17EBC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_26F180874();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);

  return result;
}

uint64_t sub_26F17ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F17F008();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F17ED3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F17F008();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F17EDA0(uint64_t a1)
{
  sub_26F17F008();
  sub_26F17FFB4();
  __break(1u);
}

id sub_26F17EED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIImageActivityType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26F17EF6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F17EFB4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_26F17F008()
{
  result = qword_2806D5528;
  if (!qword_2806D5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5528);
  }

  return result;
}

uint64_t sub_26F17F05C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26F17F0A4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F17F0EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__n128 TryItSessionAnalyticsEvent.__allocating_init(tipId:correlationId:collectionId:lessonId:attempts:secondLessonAttempts:timeSpent:finishedLesson:finishedSecondLesson:replayed:linkTapped:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, char a12, char a13, char a14, char a15)
{
  v19 = swift_allocObject();
  result = a10;
  *(v19 + 96) = a10;
  *(v19 + 112) = a11;
  *(v19 + 120) = a12;
  *(v19 + 121) = a13;
  *(v19 + 122) = a14;
  *(v19 + 123) = a15;
  *(v19 + 16) = 0xD00000000000001CLL;
  *(v19 + 24) = 0x800000026F184B60;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;
  *(v19 + 64) = a5;
  *(v19 + 72) = a6;
  *(v19 + 80) = a7;
  *(v19 + 88) = a8;
  return result;
}

uint64_t TryItSessionAnalyticsEvent.init(tipId:correlationId:collectionId:lessonId:attempts:secondLessonAttempts:timeSpent:finishedLesson:finishedSecondLesson:replayed:linkTapped:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char a11, char a12, char a13, char a14)
{
  *(v14 + 96) = a9;
  *(v14 + 112) = a10;
  *(v14 + 120) = a11;
  *(v14 + 121) = a12;
  *(v14 + 122) = a13;
  *(v14 + 123) = a14;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 16) = 0xD00000000000001CLL;
  *(v14 + 24) = 0x800000026F184B60;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  *(v14 + 64) = a5;
  *(v14 + 72) = a6;

  *(v14 + 80) = a7;
  *(v14 + 88) = a8;

  return v14;
}

unint64_t sub_26F17F274()
{
  v0 = sub_26F150D68();
  v1 = sub_26F180934();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v1, 0x7374706D65747461, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v3 = sub_26F180934();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v3, 0x7374706D65747461, 0xEB0000000032765FLL, v4);
  v5 = sub_26F180934();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v5, 0x6570735F656D6974, 0xEA0000000000746ELL, v6);
  v7 = sub_26F1808B4();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v7, 0x64656873696E6966, 0xEF6E6F7373656C5FLL, v8);
  v9 = sub_26F1808B4();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v9, 0xD000000000000012, 0x800000026F185610, v10);
  v11 = sub_26F1808B4();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v11, 0x646579616C706572, 0xE800000000000000, v12);
  v13 = sub_26F1808B4();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v13, 0x7061745F6B6E696CLL, 0xEB00000000646570, v14);
  return v0;
}

void *TryItSessionAnalyticsEvent.deinit()
{

  return v0;
}

uint64_t TryItSessionAnalyticsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}