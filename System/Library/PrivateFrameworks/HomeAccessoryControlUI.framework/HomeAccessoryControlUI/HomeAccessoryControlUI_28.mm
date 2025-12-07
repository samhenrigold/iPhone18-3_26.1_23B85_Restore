double *sub_25262576C(uint64_t a1, int a2)
{
  v3 = v2;
  v62 = a1;
  v63 = a2 & 1;
  v64 = a2;
  v46 = sub_252692A70();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_252692F80();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4068, &qword_2526AAB80);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v39 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4070, &qword_2526AAB88);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v50 = &v39 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4078, &qword_2526AAB90);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4080, &unk_2526AAB98);
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v39 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D38, &qword_2526A4120);
  MEMORY[0x28223BE20](v59);
  v58 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v39 - v15;
  v16 = sub_252692FA0();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252692F60();
  MEMORY[0x28223BE20](v19);
  v20 = sub_252692AB0();
  MEMORY[0x28223BE20](v20 - 8);
  v3[4] = 0.0;
  v65 = sub_25242D500();
  v54 = "lowerRange upperRange ";
  sub_252692AA0();
  v66 = MEMORY[0x277D84F90];
  sub_252666040(&qword_27F4DED10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DED18, &qword_2526A0280);
  v21 = v11;
  sub_252400FC8(&qword_27F4DED20, &qword_27F4DED18, &qword_2526A0280, MEMORY[0x277D83970]);
  v22 = v3;
  sub_252693190();
  (*(v55 + 104))(v18, *MEMORY[0x277D85260], v56);
  v23 = *&v62;
  *(v3 + 5) = sub_252692FD0();
  v24 = *(*v3 + 120);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D30, &unk_2526A59C0);
  v26 = v57;
  (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
  sub_25237153C(v26, v58, &qword_27F4E0D38, &qword_2526A4120);
  v27 = v60;
  sub_252690660();
  sub_252372288(v26, &qword_27F4E0D38, &qword_2526A4120);
  (*(v61 + 32))(v22 + v24, v27, v21);
  v22[2] = v23;
  v28 = v64;
  *(v22 + 24) = v63;
  if (v28)
  {
    return v22;
  }

  swift_beginAccess();
  v29 = v51;
  sub_252690670();
  swift_endAccess();
  sub_252400FC8(&qword_27F4E4088, &qword_27F4E4068, &qword_2526AAB80, MEMORY[0x277CBCEC8]);
  v30 = v50;
  v31 = v53;
  sub_2526906C0();
  result = (*(v52 + 8))(v29, v31);
  if ((~*&v23 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v23 < 9.22337204e18)
  {
    v33 = v42;
    *v42 = v23;
    (*(v44 + 104))(v33, *MEMORY[0x277D85178], v46);
    v34 = v47;
    sub_252692F90();
    v66 = *(v22 + 5);
    sub_252400FC8(&qword_27F4E4090, &qword_27F4E4070, &qword_2526AAB88, MEMORY[0x277CBCB10]);
    sub_252666040(&qword_27F4DED08, sub_25242D500, MEMORY[0x277D85228]);
    v35 = v39;
    v36 = v41;
    sub_2526906D0();
    (*(v48 + 8))(v34, v49);
    (*(v40 + 8))(v30, v36);
    sub_252400FC8(&qword_27F4E4098, &qword_27F4E4078, &qword_2526AAB90, MEMORY[0x277CBCD20]);
    v37 = v45;
    v38 = sub_2526906E0();
    (*(v43 + 8))(v35, v37);
    *(v22 + 4) = v38;

    return v22;
  }

LABEL_9:
  __break(1u);
  return result;
}

double *sub_252626140(uint64_t a1, int a2)
{
  v3 = v2;
  v62 = a1;
  v63 = a2 & 1;
  v64 = a2;
  v46 = sub_252692A70();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_252692F80();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40A0, &qword_2526AAC38);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v39 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40A8, &qword_2526AAC40);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v50 = &v39 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40B0, &qword_2526AAC48);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E40B8, &qword_2526AAC50);
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v39 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1900, &qword_2526A57D8);
  MEMORY[0x28223BE20](v59);
  v58 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v39 - v15;
  v16 = sub_252692FA0();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252692F60();
  MEMORY[0x28223BE20](v19);
  v20 = sub_252692AB0();
  MEMORY[0x28223BE20](v20 - 8);
  v3[4] = 0.0;
  v65 = sub_25242D500();
  v54 = "lowerRange upperRange ";
  sub_252692AA0();
  v66 = MEMORY[0x277D84F90];
  sub_252666040(&qword_27F4DED10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DED18, &qword_2526A0280);
  v21 = v11;
  sub_252400FC8(&qword_27F4DED20, &qword_27F4DED18, &qword_2526A0280, MEMORY[0x277D83970]);
  v22 = v3;
  sub_252693190();
  (*(v55 + 104))(v18, *MEMORY[0x277D85260], v56);
  v23 = *&v62;
  *(v3 + 5) = sub_252692FD0();
  v24 = *(*v3 + 120);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1908, &qword_2526A57E0);
  v26 = v57;
  (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
  sub_25237153C(v26, v58, &qword_27F4E1900, &qword_2526A57D8);
  v27 = v60;
  sub_252690660();
  sub_252372288(v26, &qword_27F4E1900, &qword_2526A57D8);
  (*(v61 + 32))(v22 + v24, v27, v21);
  v22[2] = v23;
  v28 = v64;
  *(v22 + 24) = v63;
  if (v28)
  {
    return v22;
  }

  swift_beginAccess();
  v29 = v51;
  sub_252690670();
  swift_endAccess();
  sub_252400FC8(&qword_27F4E40C0, &qword_27F4E40A0, &qword_2526AAC38, MEMORY[0x277CBCEC8]);
  v30 = v50;
  v31 = v53;
  sub_2526906C0();
  result = (*(v52 + 8))(v29, v31);
  if ((~*&v23 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v23 < 9.22337204e18)
  {
    v33 = v42;
    *v42 = v23;
    (*(v44 + 104))(v33, *MEMORY[0x277D85178], v46);
    v34 = v47;
    sub_252692F90();
    v66 = *(v22 + 5);
    sub_252400FC8(&qword_27F4E40C8, &qword_27F4E40A8, &qword_2526AAC40, MEMORY[0x277CBCB10]);
    sub_252666040(&qword_27F4DED08, sub_25242D500, MEMORY[0x277D85228]);
    v35 = v39;
    v36 = v41;
    sub_2526906D0();
    (*(v48 + 8))(v34, v49);
    (*(v40 + 8))(v30, v36);
    sub_252400FC8(&qword_27F4E40D0, &qword_27F4E40B0, &qword_2526AAC48, MEMORY[0x277CBCD20]);
    v37 = v45;
    v38 = sub_2526906E0();
    (*(v43 + 8))(v35, v37);
    *(v22 + 4) = v38;

    return v22;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_252626B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E19D8, &unk_2526A59E0);
  sub_252665FB8(a1 + *(v5 + 36), v4, type metadata accessor for AccessoryControl.ColorState);
  v6 = type metadata accessor for AccessoryControl.ColorState(0);
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  return sub_2526926B0();
}

uint64_t sub_252626CA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D30, &unk_2526A59C0);
  sub_252665FB8(a1 + *(v5 + 36), v4, type metadata accessor for AccessoryControl.ThermostatState);
  v6 = type metadata accessor for AccessoryControl.ThermostatState(0);
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  return sub_2526926B0();
}

uint64_t sub_252626DA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1908, &qword_2526A57E0);
  sub_252665FB8(a1 + *(v5 + 36), v4, type metadata accessor for AccessoryControl.IncrementalState);
  v6 = type metadata accessor for AccessoryControl.IncrementalState(0);
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810, &unk_2526A56A0);
  return sub_2526926B0();
}

double sub_252626EB0()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlModuleView(0);
  v6 = v0 + *(v5 + 36);
  v17 = *(v6 + 64);
  v7 = *(v6 + 48);
  v16[2] = *(v6 + 32);
  v16[3] = v7;
  v8 = *(v6 + 16);
  v16[0] = *v6;
  v16[1] = v8;
  if ((v17 & 0x100) != 0)
  {
    v9 = *(v6 + 48);
    v13[2] = *(v6 + 32);
    v14 = v9;
    v15 = *(v6 + 64);
    v10 = *(v6 + 16);
    v13[0] = *v6;
    v13[1] = v10;
  }

  else
  {

    sub_252692F00();
    v11 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v16, &qword_27F4DC120, &qword_25269CED0);
    (*(v2 + 8))(v4, v1);
  }

  result = *(v0 + *(v5 + 32));
  if ((BYTE1(v14) & 1) == 0)
  {
    return result + -80.0;
  }

  return result;
}

uint64_t sub_252627080@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39B0, &qword_2526AA5F8);
  MEMORY[0x28223BE20](v72);
  v73 = &v68 - v2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39B8, &qword_2526AA600);
  MEMORY[0x28223BE20](v81);
  v75 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v68 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39C0, &qword_2526AA608);
  MEMORY[0x28223BE20](v78);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v68 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39C8, &unk_2526AA610);
  MEMORY[0x28223BE20](v80);
  v79 = &v68 - v9;
  v10 = sub_2526910F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Device.ControlModule(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  v20 = type metadata accessor for ControlRowSolver(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_252626EB0();
  v25 = v24;
  v26 = type metadata accessor for ControlModuleView(0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8, &qword_2526A8040);
  MEMORY[0x2530A4210](v27);
  v70 = v26;
  v28 = *(v26 + 36);
  v77 = v1;
  v29 = (v1 + v28);
  v102 = *(v1 + v28 + 64);
  v30 = *(v1 + v28 + 48);
  v101[2] = *(v1 + v28 + 32);
  v101[3] = v30;
  v31 = *(v1 + v28 + 16);
  v101[0] = *(v1 + v28);
  v101[1] = v31;
  if ((v102 & 0x100) != 0)
  {
    v32 = v29[3];
    v98 = v29[2];
    v99 = v32;
    v100 = *(v29 + 64);
    v33 = v29[1];
    v96 = *v29;
    v97 = v33;
    v34 = v10;
  }

  else
  {

    sub_252692F00();
    v35 = v22;
    v36 = v10;
    v37 = sub_2526919C0();
    v68 = v19;
    v38 = v13;
    v39 = v11;
    v40 = v37;
    v41 = v35;
    sub_252690570();

    v11 = v39;
    v13 = v38;
    v19 = v68;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v101, &qword_27F4DC120, &qword_25269CED0);
    (*(v11 + 8))(v13, v36);
    v34 = v36;
    v22 = v41;
  }

  LOBYTE(v94[0]) = BYTE1(v99);
  sub_252627B18(v94, v19);
  sub_252665DD8(v16, type metadata accessor for Device.ControlModule);
  v95 = *(v29 + 32);
  v42 = v29[3];
  v94[2] = v29[2];
  v94[3] = v42;
  v43 = v29[1];
  v94[0] = *v29;
  v94[1] = v43;
  if ((v95 & 0x100) != 0)
  {
    v44 = v29[3];
    v91 = v29[2];
    v92 = v44;
    v93 = *(v29 + 64);
    v45 = v29[1];
    v89 = *v29;
    v90 = v45;
  }

  else
  {

    sub_252692F00();
    v46 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v94, &qword_27F4DC120, &qword_25269CED0);
    (*(v11 + 8))(v13, v34);
  }

  LOBYTE(v87[0]) = BYTE1(v92);
  sub_2526662C0(v19, v87, sub_252627F5C, 0, v22, v23, v25);
  v88 = *(v29 + 32);
  v47 = v29[3];
  v87[2] = v29[2];
  v87[3] = v47;
  v48 = v29[1];
  v87[0] = *v29;
  v87[1] = v48;
  if ((v88 & 0x100) == 0)
  {

    sub_252692F00();
    v60 = v11;
    v61 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v87, &qword_27F4DC120, &qword_25269CED0);
    (*(v60 + 8))(v13, v34);
    if ((BYTE1(v85) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v62 = sub_2526911D0();
    MEMORY[0x28223BE20](v62);
    v54 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39D0, &qword_2526AA620);
    sub_252636488(&qword_27F4E39D8, &qword_27F4E39D0, &qword_2526AA620, sub_252636458);
    v63 = v73;
    sub_2526925B0();
    sub_252692920();
    sub_252400FC8(&qword_27F4E3A68, &qword_27F4E39B0, &qword_2526AA5F8, MEMORY[0x277CE1138]);
    v64 = v75;
    sub_252692140();
    sub_252372288(v63, &qword_27F4E39B0, &qword_2526AA5F8);
    sub_25263680C();
    v65 = v74;
    v66 = v81;
    sub_25268A710();
    sub_252372288(v64, &qword_27F4E39B8, &qword_2526AA600);
    sub_25268A710();
    sub_252400FC8(&qword_27F4E3A78, &qword_27F4E39C0, &qword_2526AA608, MEMORY[0x277CDE590]);
    v56 = v79;
    sub_252688380(v64, v78, v66);
    sub_252372288(v64, &qword_27F4E39B8, &qword_2526AA600);
    v57 = v65;
    v58 = &qword_27F4E39B8;
    v59 = &qword_2526AA600;
    goto LABEL_12;
  }

  v49 = v29[3];
  v84 = v29[2];
  v85 = v49;
  v86 = *(v29 + 64);
  v50 = v29[1];
  v82 = *v29;
  v83 = v50;
  if (BYTE1(v49))
  {
    goto LABEL_11;
  }

LABEL_9:
  v51 = sub_252692900();
  MEMORY[0x28223BE20](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A88, &qword_2526AA668);
  sub_252636984();
  v52 = v69;
  sub_252691C00();
  sub_252400FC8(&qword_27F4E3A78, &qword_27F4E39C0, &qword_2526AA608, MEMORY[0x277CDE590]);
  v53 = v71;
  v54 = v22;
  v55 = v78;
  sub_25268A710();
  sub_252372288(v52, &qword_27F4E39C0, &qword_2526AA608);
  sub_25268A710();
  sub_25263680C();
  v56 = v79;
  sub_252688288(v52, v55);
  sub_252372288(v52, &qword_27F4E39C0, &qword_2526AA608);
  v57 = v53;
  v58 = &qword_27F4E39C0;
  v59 = &qword_2526AA608;
LABEL_12:
  sub_252372288(v57, v58, v59);
  sub_2526368C4();
  sub_25268A710();
  sub_252372288(v56, &qword_27F4E39C8, &unk_2526AA610);
  return sub_252665DD8(v54, type metadata accessor for ControlRowSolver);
}

uint64_t sub_252627B18@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Device.ControlGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v15);
  v38 = v33 - v16;
  v17 = type metadata accessor for Device.ControlModule(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    return sub_252665FB8(v2, a2, type metadata accessor for Device.ControlModule);
  }

  sub_252665FB8(v2, v19, type metadata accessor for Device.ControlModule);
  v35 = v19;
  v20 = *(v19 + 2);
  v21 = *(v20 + 16);
  if (v21)
  {
    v34 = a2;
    v39 = MEMORY[0x277D84F90];
    sub_252370650(0, v21, 0);
    v22 = v39;
    v23 = *(v9 + 80);
    v33[1] = v20;
    v37 = (v23 + 32) & ~v23;
    v24 = v20 + v37;
    v36 = *(v9 + 72);
    do
    {
      sub_252665FB8(v24, v14, type metadata accessor for Device.ControlGroup);
      sub_252665FB8(v14, v11, type metadata accessor for Device.ControlGroup);
      sub_252665FB8(v14, v7, type metadata accessor for Device.ControlGroup.LayoutType);
      sub_252665DD8(v14, type metadata accessor for Device.ControlGroup);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        sub_252665DD8(v11, type metadata accessor for Device.ControlGroup.LayoutType);
        sub_252665E38(v7, v11, type metadata accessor for Device.Control);
      }

      else
      {
        v25 = *v7;
        sub_252665DD8(v11, type metadata accessor for Device.ControlGroup.LayoutType);
        *v11 = v25;
      }

      v26 = v38;
      v27 = v5;
      swift_storeEnumTagMultiPayload();
      sub_252665E38(v11, v26, type metadata accessor for Device.ControlGroup);
      v39 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_252370650((v28 > 1), v29 + 1, 1);
        v26 = v38;
        v22 = v39;
      }

      *(v22 + 16) = v29 + 1;
      v30 = v36;
      sub_252665E38(v26, v22 + v37 + v29 * v36, type metadata accessor for Device.ControlGroup);
      v24 += v30;
      --v21;
      v5 = v27;
    }

    while (v21);

    a2 = v34;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v32 = v35;
  *(v35 + 2) = v22;
  return sub_252665E38(v32, a2, type metadata accessor for Device.ControlModule);
}

uint64_t sub_252627F5C()
{
  type metadata accessor for Device.Control(0);
  Device.Control.Kind.primitive.getter(&v3);
  if (v3 > 8u)
  {

    v1 = 0;
  }

  else
  {
    v0 = sub_2526933B0();

    v1 = v0 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_252628118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for ControlRowSolver(0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for ControlModuleView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A88, &qword_2526AA668);
  v26 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  sub_252667440(v16);
  v28 = v19;
  sub_252665FB8(a2, v11, type metadata accessor for ControlModuleView);
  sub_252665FB8(a1, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = (v10 + *(v25 + 80) + v20) & ~*(v25 + 80);
  v22 = swift_allocObject();
  sub_252665E38(v11, v22 + v20, type metadata accessor for ControlModuleView);
  sub_252665E38(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ControlRowSolver);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AA8, &qword_2526AA678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AA0, &qword_2526AA670);
  sub_252400FC8(&qword_27F4E3AB0, &qword_27F4E3AA8, &qword_2526AA678, MEMORY[0x277D83980]);
  sub_252400FC8(&qword_27F4E3A98, &qword_27F4E3AA0, &qword_2526AA670, MEMORY[0x277CDF0A0]);
  sub_252636B8C();
  sub_2526927B0();
  sub_252636984();
  sub_25268A710();
  v23 = *(v26 + 8);
  v23(v14, v12);
  sub_25268A710();
  return (v23)(v18, v12);
}

uint64_t sub_2526284F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AA0, &qword_2526AA670);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  v14 = *a1;
  v13 = a1[1];
  sub_2526911C0();
  v16[4] = a2;
  v16[5] = v14;
  v16[6] = v13;
  v16[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8, &qword_2526AA628);
  sub_252636458();
  sub_2526927E0();
  sub_252400FC8(&qword_27F4E3A98, &qword_27F4E3AA0, &qword_2526AA670, MEMORY[0x277CDF0A0]);
  sub_25268A710();
  sub_252372288(v9, &qword_27F4E3AA0, &qword_2526AA670);
  sub_25268A710();
  return sub_252372288(v12, &qword_27F4E3AA0, &qword_2526AA670);
}

uint64_t sub_252628698(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8, &qword_2526AA628);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_252628804(a2, a3, a4, v10);
  sub_252636458();
  sub_25268A710();
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_25268A710();
  return (v14)(v13, v7);
}

uint64_t sub_252628804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a1;
  v38 = a4;
  v8 = type metadata accessor for ControlModuleView(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for ControlRowSolver(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8, &qword_2526AA628);
  v37 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v36 = &v32 - v18;
  v19 = *a3;
  v20 = sub_252666BCC(v17);
  if (v19 / v20 > 1.0)
  {
    v21 = v19 / v20;
  }

  else
  {
    v21 = 1.0;
  }

  v39 = a2;
  sub_252665FB8(a3, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
  sub_252665FB8(v5, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlModuleView);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v33 + 80) + v24 + 8) & ~*(v33 + 80);
  v26 = swift_allocObject();
  sub_252665E38(v13, v26 + v22, type metadata accessor for ControlRowSolver);
  v27 = (v26 + v23);
  *v27 = v34;
  v27[1] = a2;
  *(v26 + v24) = v21;
  sub_252665E38(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ControlModuleView);
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AC0, &unk_2526AA680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEF8, &qword_252694F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39F8, &qword_2526AA630);
  sub_252400FC8(&qword_27F4E3AC8, &qword_27F4E3AC0, &unk_2526AA680, MEMORY[0x277D83980]);
  sub_252636504();
  sub_252666040(&qword_27F4E3AD0, type metadata accessor for DisplayControlGroup, &unk_2526AAF44);
  v28 = v35;
  sub_2526927B0();
  sub_252636458();
  v29 = v36;
  sub_25268A710();
  v30 = *(v37 + 8);
  v30(v28, v14);
  sub_25268A710();
  return (v30)(v29, v14);
}

uint64_t sub_252628C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v5 = type metadata accessor for ControlRowSolver(0);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ControlModuleView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39D0, &qword_2526AA620);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  sub_252667440(v16);
  v28 = v19;
  sub_252665FB8(v25, v10, type metadata accessor for ControlModuleView);
  sub_252665FB8(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = (v9 + *(v26 + 80) + v20) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_252665E38(v10, v22 + v20, type metadata accessor for ControlModuleView);
  sub_252665E38(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ControlRowSolver);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AA8, &qword_2526AA678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8, &qword_2526AA628);
  sub_252400FC8(&qword_27F4E3AB0, &qword_27F4E3AA8, &qword_2526AA678, MEMORY[0x277D83980]);
  sub_252636458();
  sub_252636B8C();
  sub_2526927B0();
  sub_252636488(&qword_27F4E39D8, &qword_27F4E39D0, &qword_2526AA620, sub_252636458);
  sub_25268A710();
  v23 = *(v12 + 8);
  v23(v14, v11);
  sub_25268A710();
  return (v23)(v18, v11);
}

uint64_t sub_252629030(uint64_t *a1, uint64_t a2, double *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39E8, &qword_2526AA628);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_252628804(*a1, a1[1], a3, v8);
  sub_252636458();
  sub_25268A710();
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_25268A710();
  return (v12)(v11, v5);
}

void sub_25262918C(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v38 = a5;
  v39 = a6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A08, &qword_2526AA638);
  MEMORY[0x28223BE20](v37);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E39F8, &qword_2526AA630);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v20.n128_f64[0] = sub_252666DCC(a1, 0.0, 0.0);
  v21 = v20.n128_f64[0];
  sub_252667440(v20);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = 32;
    while (*(v22 + v25) != a3)
    {
      ++v24;
      v25 += 16;
      if (v23 == v24)
      {
        goto LABEL_5;
      }
    }

    sub_252667440(v32);
    v34 = *(v33 + 16);

    v26 = v24 == 0;
    if (v34 - 1 == v24 && *(a4 + 16) == 1)
    {
      sub_252666BCC(v35);
      goto LABEL_9;
    }
  }

  else
  {
LABEL_5:

    v26 = 0;
  }

  v27 = ceil(v21 / a7);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

LABEL_9:
  v28 = sub_25257C73C(a1, a4);
  v30 = v26 & *(v38 + *(type metadata accessor for ControlModuleView(0) + 28)) & ~v29;
  if (v28)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  sub_252629474(a1, a2, v31, v13);
  sub_252636590();
  sub_252691F20();
  sub_252372288(v13, &qword_27F4E3A08, &qword_2526AA638);
  sub_252636504();
  sub_25268A710();
  sub_252372288(v16, &qword_27F4E39F8, &qword_2526AA630);
  sub_25268A710();
  sub_252372288(v19, &qword_27F4E39F8, &qword_2526AA630);
}

uint64_t sub_252629474@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v228 = a2;
  LODWORD(v216) = a3;
  v230 = a1;
  v227 = a4;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AD8, &qword_2526AA690);
  MEMORY[0x28223BE20](v187);
  v191 = &v179 - v4;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AE0, &qword_2526AA698);
  MEMORY[0x28223BE20](v188);
  v183 = &v179 - v5;
  v194 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  v180 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v181 = v6;
  v182 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v195 = &v179 - v8;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AE8, &qword_2526AA6A0);
  MEMORY[0x28223BE20](v186);
  v201 = (&v179 - v9);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AF0, &qword_2526AA6A8);
  MEMORY[0x28223BE20](v196);
  v189 = &v179 - v10;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AF8, &qword_2526AA6B0);
  MEMORY[0x28223BE20](v220);
  v197 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v210 = &v179 - v13;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A58, &qword_2526AA660);
  MEMORY[0x28223BE20](v226);
  v211 = &v179 - v14;
  v15 = type metadata accessor for DisplayControl(0);
  MEMORY[0x28223BE20](v15 - 8);
  v219 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B00, &qword_2526AA6B8);
  MEMORY[0x28223BE20](v17 - 8);
  v192 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v209 = (&v179 - v20);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A48, &qword_2526AA658);
  MEMORY[0x28223BE20](v213);
  v22 = &v179 - v21;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B08, &qword_2526AA6C0);
  MEMORY[0x28223BE20](v223);
  v225 = &v179 - v23;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B10, &qword_2526AA6C8);
  MEMORY[0x28223BE20](v203);
  v212 = &v179 - v24;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A18, &qword_2526AA640);
  MEMORY[0x28223BE20](v224);
  v214 = &v179 - v25;
  v26 = sub_2526910F0();
  v199 = *(v26 - 8);
  v200 = v26;
  MEMORY[0x28223BE20](v26);
  v198 = &v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for ControlModuleView(0);
  v206 = *(v218 - 8);
  v28 = *(v206 + 64);
  MEMORY[0x28223BE20](v218);
  v207 = &v179 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DisplayControlGroup(0);
  v205 = *(v29 - 8);
  v30 = *(v205 + 64);
  MEMORY[0x28223BE20](v29);
  v31 = type metadata accessor for ControlRowSolver(0);
  v204 = *(v31 - 8);
  v32 = *(v204 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B18, &qword_2526AA6D0);
  MEMORY[0x28223BE20](v34 - 8);
  v184 = &v179 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v208 = (&v179 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A38, &qword_2526AA650);
  MEMORY[0x28223BE20](v38 - 8);
  v215 = &v179 - v39;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A28, &qword_2526AA648);
  MEMORY[0x28223BE20](v202);
  v185 = &v179 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v190 = &v179 - v42;
  v43 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v43);
  v45 = (&v179 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3A08, &qword_2526AA638);
  MEMORY[0x28223BE20](v222);
  v221 = &v179 - v46;
  v217 = v29;
  sub_252665FB8(&v230[*(v29 + 24)], v45, type metadata accessor for DisplayControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v193 = &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = *v45;
    *v22 = sub_2526912E0();
    *(v22 + 1) = 0x4024000000000000;
    v219 = v22;
    v22[16] = 0;
    v69 = sub_2526912E0();
    v70 = v209;
    *v209 = v69;
    v70[1] = 0x4049000000000000;
    *(v70 + 16) = 0;
    v215 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E90, &qword_2526AA8B0) + 44);
    v238 = v68;
    sub_252665FB8(v228, &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
    sub_252665FB8(v230, &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisplayControlGroup);
    v71 = v207;
    sub_252665FB8(v229, v207, type metadata accessor for ControlModuleView);
    v72 = (*(v204 + 80) + 16) & ~*(v204 + 80);
    v73 = (v32 + *(v205 + 80) + v72) & ~*(v205 + 80);
    v74 = (v30 + *(v206 + 80) + v73) & ~*(v206 + 80);
    v75 = swift_allocObject();
    sub_252665E38(v33, v75 + v72, type metadata accessor for ControlRowSolver);
    sub_252665E38(v193, v75 + v73, type metadata accessor for DisplayControlGroup);
    sub_252665E38(v71, v75 + v74, type metadata accessor for ControlModuleView);
    *(v75 + v74 + v28) = v216 & 1;
    v216 = v68;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E98, &qword_2526AA8B8);
    sub_25268DA10();
    sub_252400FC8(&qword_27F4E3EA0, &qword_27F4E3E98, &qword_2526AA8B8, MEMORY[0x277D83980]);
    sub_252639494();
    sub_252666040(&qword_27F4E3EC0, type metadata accessor for DisplayControl, &unk_2526AAF0C);
    sub_2526927B0();
    v76 = v230;
    v77 = sub_252666DCC(v230, 20.0, 0.0);
    v78 = &v76[*(v217 + 28)];
    v80 = *v78;
    v79 = *(v78 + 1);
    v81 = v229 + *(v218 + 36);
    v255 = *(v81 + 32);
    v82 = *(v81 + 3);
    v253 = *(v81 + 2);
    v254 = v82;
    v83 = *(v81 + 1);
    v251 = *v81;
    v252 = v83;
    if ((v255 & 0x100) != 0)
    {
      v84 = *(v81 + 3);
      v248 = *(v81 + 2);
      v249 = v84;
      v250 = v81[64];
      v85 = *(v81 + 1);
      v246 = *v81;
      v247 = v85;
    }

    else
    {

      sub_25237153C(&v251, &v238, &qword_27F4DC120, &qword_25269CED0);
      sub_252692F00();
      v133 = sub_2526919C0();
      sub_252690570();

      v134 = v198;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v251, &qword_27F4DC120, &qword_25269CED0);
      (*(v199 + 8))(v134, v200);
    }

    v135 = v192;
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EC8, &qword_2526AA8D0);
    v103 = v219;
    v137 = &v219[*(v136 + 44)];
    v233 = v248;
    v234 = v249;
    v235 = v250;
    v231 = v246;
    v232 = v247;
    v138 = v209;
    sub_25237153C(v209, v135, &qword_27F4E3B00, &qword_2526AA6B8);
    sub_25237153C(v135, v137, &qword_27F4E3B00, &qword_2526AA6B8);
    v139 = (v137 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3ED0, &qword_2526AA8D8) + 48));
    *&v236 = v80;
    *(&v236 + 1) = v79;
    *v237 = v77;
    *(v237 + 8) = v231;
    *(&v237[1] + 8) = v232;
    *(&v237[2] + 8) = v233;
    *(&v237[3] + 8) = v234;
    BYTE8(v237[4]) = v235;
    v140 = v237[0];
    *v139 = v236;
    v139[1] = v140;
    v141 = v237[1];
    v142 = v237[2];
    v143 = v237[3];
    *(v139 + 73) = *(&v237[3] + 9);
    v139[3] = v142;
    v139[4] = v143;
    v139[2] = v141;
    sub_2526393EC(&v236, &v238);
    sub_252372288(v138, &qword_27F4E3B00, &qword_2526AA6B8);
    v238 = v80;
    v239 = v79;
    v240 = v77;
    v242 = v232;
    v243 = v233;
    v244 = v234;
    v245 = v235;
    v241 = v231;
    sub_252639424(&v238);
    sub_252372288(v135, &qword_27F4E3B00, &qword_2526AA6B8);

    v127 = &qword_27F4E3A48;
    v128 = &qword_2526AA658;
    sub_25237153C(v103, v212, &qword_27F4E3A48, &qword_2526AA658);
    swift_storeEnumTagMultiPayload();
    sub_252636700();
    v144 = MEMORY[0x277CE1198];
    sub_252400FC8(&qword_27F4E3A40, &qword_27F4E3A48, &qword_2526AA658, MEMORY[0x277CE1198]);
    v145 = v214;
    sub_252691470();
    sub_25237153C(v145, v225, &qword_27F4E3A18, &qword_2526AA640);
    swift_storeEnumTagMultiPayload();
    sub_252636648();
    sub_252400FC8(&qword_27F4E3A50, &qword_27F4E3A58, &qword_2526AA660, v144);
    v131 = v221;
    sub_252691470();
    v132 = v145;
LABEL_17:
    sub_252372288(v132, &qword_27F4E3A18, &qword_2526AA640);
    sub_252372288(v103, v127, v128);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v193 = &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = *v45;
    v49 = sub_2526912E0();
    v50 = v215;
    *v215 = v49;
    *(v50 + 8) = 0x4024000000000000;
    *(v50 + 16) = 0;
    v51 = sub_2526911D0();
    v52 = v208;
    *v208 = v51;
    v52[1] = 0x4034000000000000;
    *(v52 + 16) = 0;
    v211 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3ED8, &qword_2526AA8E0) + 44);
    v238 = v48;
    sub_252665FB8(v228, &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlRowSolver);
    sub_252665FB8(v230, &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisplayControlGroup);
    v53 = v207;
    sub_252665FB8(v229, v207, type metadata accessor for ControlModuleView);
    v54 = (*(v204 + 80) + 16) & ~*(v204 + 80);
    v55 = (v32 + *(v205 + 80) + v54) & ~*(v205 + 80);
    v56 = (v30 + *(v206 + 80) + v55) & ~*(v206 + 80);
    v57 = swift_allocObject();
    sub_252665E38(v33, v57 + v54, type metadata accessor for ControlRowSolver);
    sub_252665E38(v193, v57 + v55, type metadata accessor for DisplayControlGroup);
    sub_252665E38(v53, v57 + v56, type metadata accessor for ControlModuleView);
    *(v57 + v56 + v28) = v216 & 1;
    v219 = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E98, &qword_2526AA8B8);
    sub_25268DA10();
    sub_252400FC8(&qword_27F4E3EA0, &qword_27F4E3E98, &qword_2526AA8B8, MEMORY[0x277D83980]);
    sub_252639494();
    sub_252666040(&qword_27F4E3EC0, type metadata accessor for DisplayControl, &unk_2526AAF0C);
    sub_2526927B0();
    v58 = v230;
    v59 = sub_252666DCC(v230, 20.0, 0.0);
    v60 = &v58[*(v217 + 28)];
    v62 = *v60;
    v61 = *(v60 + 1);
    v63 = v229 + *(v218 + 36);
    v255 = *(v63 + 32);
    v64 = *(v63 + 3);
    v253 = *(v63 + 2);
    v254 = v64;
    v65 = *(v63 + 1);
    v251 = *v63;
    v252 = v65;
    if ((v255 & 0x100) != 0)
    {
      v66 = *(v63 + 3);
      v248 = *(v63 + 2);
      v249 = v66;
      v250 = v63[64];
      v67 = *(v63 + 1);
      v246 = *v63;
      v247 = v67;
    }

    else
    {

      sub_25237153C(&v251, &v238, &qword_27F4DC120, &qword_25269CED0);
      sub_252692F00();
      v101 = sub_2526919C0();
      sub_252690570();

      v102 = v198;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v251, &qword_27F4DC120, &qword_25269CED0);
      (*(v199 + 8))(v102, v200);
    }

    v103 = v190;
    v104 = v184;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EE0, &qword_2526AA8E8);
    v106 = v215 + *(v105 + 44);
    v233 = v248;
    v234 = v249;
    v235 = v250;
    v231 = v246;
    v232 = v247;
    v107 = v208;
    sub_25237153C(v208, v104, &qword_27F4E3B18, &qword_2526AA6D0);
    sub_25237153C(v104, v106, &qword_27F4E3B18, &qword_2526AA6D0);
    v108 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EE8, &unk_2526AA8F0) + 48));
    *&v236 = v62;
    *(&v236 + 1) = v61;
    *v237 = v59;
    *(v237 + 8) = v231;
    *(&v237[1] + 8) = v232;
    *(&v237[2] + 8) = v233;
    *(&v237[3] + 8) = v234;
    BYTE8(v237[4]) = v235;
    v109 = v237[0];
    *v108 = v236;
    v108[1] = v109;
    v110 = v237[1];
    v111 = v237[2];
    v112 = v237[3];
    *(v108 + 73) = *(&v237[3] + 9);
    v108[3] = v111;
    v108[4] = v112;
    v108[2] = v110;
    sub_2526393EC(&v236, &v238);
    sub_252372288(v107, &qword_27F4E3B18, &qword_2526AA6D0);
    v238 = v62;
    v239 = v61;
    v240 = v59;
    v242 = v232;
    v243 = v233;
    v244 = v234;
    v245 = v235;
    v241 = v231;
    sub_252639424(&v238);
    sub_252372288(v104, &qword_27F4E3B18, &qword_2526AA6D0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8, &qword_252698910);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_252694EA0;
    LOBYTE(v106) = sub_252691A50();
    *(v113 + 32) = v106;
    v114 = sub_252691A70();
    *(v113 + 33) = v114;
    v115 = sub_252691A60();
    sub_252691A60();
    if (sub_252691A60() != v106)
    {
      v115 = sub_252691A60();
    }

    sub_252691A60();
    if (sub_252691A60() != v114)
    {
      v115 = sub_252691A60();
    }

    v116 = v202;
    v117 = v185;
    sub_252690760();
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;
    sub_2523714D4(v215, v117, &qword_27F4E3A38, &qword_2526AA650);
    v126 = v117 + *(v116 + 36);
    *v126 = v115;
    *(v126 + 8) = v119;
    *(v126 + 16) = v121;
    *(v126 + 24) = v123;
    *(v126 + 32) = v125;
    *(v126 + 40) = 0;
    v127 = &qword_27F4E3A28;
    v128 = &qword_2526AA648;
    sub_2523714D4(v117, v103, &qword_27F4E3A28, &qword_2526AA648);
    sub_25237153C(v103, v212, &qword_27F4E3A28, &qword_2526AA648);
    swift_storeEnumTagMultiPayload();
    sub_252636700();
    v129 = MEMORY[0x277CE1198];
    sub_252400FC8(&qword_27F4E3A40, &qword_27F4E3A48, &qword_2526AA658, MEMORY[0x277CE1198]);
    v130 = v214;
    sub_252691470();
    sub_25237153C(v130, v225, &qword_27F4E3A18, &qword_2526AA640);
    swift_storeEnumTagMultiPayload();
    sub_252636648();
    sub_252400FC8(&qword_27F4E3A50, &qword_27F4E3A58, &qword_2526AA660, v129);
    v131 = v221;
    sub_252691470();
    v132 = v130;
    goto LABEL_17;
  }

  v86 = v219;
  sub_252665E38(v45, v219, type metadata accessor for DisplayControl);
  v87 = sub_2526912E0();
  v88 = v211;
  *v211 = v87;
  *(v88 + 8) = 0x4024000000000000;
  *(v88 + 16) = 0;
  v89 = sub_252667110(v86);
  v90 = v201;
  v91 = v229;
  sub_25262BB98(v229, v86, v216 & 1, v201);
  v92 = sub_25268DA10();
  v93 = v195;
  (*(*(v92 - 8) + 16))(v195, v86, v92);
  swift_storeEnumTagMultiPayload();
  if (byte_27F4FB500 == 1)
  {
    v94 = sub_252692520();
    v95 = v182;
    sub_252665FB8(v93, v182, type metadata accessor for AccessoryControl.ElementIdentifier);
    v96 = (*(v180 + 80) + 16) & ~*(v180 + 80);
    v97 = swift_allocObject();
    sub_252665E38(v95, v97 + v96, type metadata accessor for AccessoryControl.ElementIdentifier);
    v98 = v183;
    sub_25237153C(v90, v183, &qword_27F4E3AE8, &qword_2526AA6A0);
    v99 = (v98 + *(v188 + 36));
    *v99 = v94;
    v99[1] = sub_252639454;
    v99[2] = v97;
    sub_25237153C(v98, v191, &qword_27F4E3AE0, &qword_2526AA698);
    swift_storeEnumTagMultiPayload();
    sub_252636CF0();
    sub_252636DA8();
    v100 = v189;
    v90 = v201;
    sub_252691470();
    sub_252372288(v98, &qword_27F4E3AE0, &qword_2526AA698);
  }

  else
  {
    sub_25237153C(v90, v191, &qword_27F4E3AE8, &qword_2526AA6A0);
    swift_storeEnumTagMultiPayload();
    sub_252636CF0();
    sub_252636DA8();
    v100 = v189;
    sub_252691470();
  }

  sub_252665DD8(v93, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_252372288(v90, &qword_27F4E3AE8, &qword_2526AA6A0);
  v146 = sub_252691A20();
  sub_252690760();
  v147 = v100 + *(v196 + 36);
  *v147 = v146;
  *(v147 + 8) = v148;
  *(v147 + 16) = v149;
  *(v147 + 24) = v150;
  *(v147 + 32) = v151;
  *(v147 + 40) = 0;
  v152 = v219;
  sub_252635B24(v219);
  sub_2526392D4();
  v153 = v210;
  sub_252692070();

  sub_252372288(v100, &qword_27F4E3AF0, &qword_2526AA6A8);
  v154 = *(v152 + *(type metadata accessor for Device.Control(0) + 44));
  KeyPath = swift_getKeyPath();
  v156 = swift_allocObject();
  *(v156 + 16) = (v154 & 1) == 0;
  v157 = (v153 + *(v220 + 36));
  *v157 = KeyPath;
  v157[1] = sub_25247D5D8;
  v157[2] = v156;
  v158 = &v230[*(v217 + 28)];
  v159 = *(v158 + 1);
  v230 = *v158;
  v160 = v91 + *(v218 + 36);
  v161 = *(v160 + 3);
  v253 = *(v160 + 2);
  v254 = v161;
  v255 = *(v160 + 32);
  v162 = *(v160 + 1);
  v251 = *v160;
  v252 = v162;
  if ((v255 & 0x100) != 0)
  {
    v163 = *(v160 + 3);
    v248 = *(v160 + 2);
    v249 = v163;
    v250 = v160[64];
    v164 = *(v160 + 1);
    v246 = *v160;
    v247 = v164;
  }

  else
  {

    sub_25237153C(&v251, &v238, &qword_27F4DC120, &qword_25269CED0);
    sub_252692F00();
    v165 = sub_2526919C0();
    sub_252690570();

    v166 = v198;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v251, &qword_27F4DC120, &qword_25269CED0);
    (*(v199 + 8))(v166, v200);
  }

  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E80, &qword_2526AA8A0);
  v169 = v210;
  v168 = v211;
  v170 = v211 + *(v167 + 44);
  v233 = v248;
  v234 = v249;
  v235 = v250;
  v231 = v246;
  v232 = v247;
  v171 = v197;
  sub_25237153C(v210, v197, &qword_27F4E3AF8, &qword_2526AA6B0);
  sub_25237153C(v171, v170, &qword_27F4E3AF8, &qword_2526AA6B0);
  v172 = (v170 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E88, &qword_2526AA8A8) + 48));
  v173 = v230;
  *&v236 = v230;
  *(&v236 + 1) = v159;
  *v237 = v89;
  *(v237 + 8) = v231;
  *(&v237[1] + 8) = v232;
  *(&v237[2] + 8) = v233;
  *(&v237[3] + 8) = v234;
  BYTE8(v237[4]) = v235;
  v174 = v237[0];
  *v172 = v236;
  v172[1] = v174;
  v175 = v237[1];
  v176 = v237[2];
  v177 = v237[3];
  *(v172 + 73) = *(&v237[3] + 9);
  v172[3] = v176;
  v172[4] = v177;
  v172[2] = v175;
  sub_2526393EC(&v236, &v238);
  sub_252372288(v169, &qword_27F4E3AF8, &qword_2526AA6B0);
  v238 = v173;
  v239 = v159;
  v240 = v89;
  v242 = v232;
  v243 = v233;
  v244 = v234;
  v245 = v235;
  v241 = v231;
  sub_252639424(&v238);
  sub_252372288(v171, &qword_27F4E3AF8, &qword_2526AA6B0);
  sub_25237153C(v168, v225, &qword_27F4E3A58, &qword_2526AA660);
  swift_storeEnumTagMultiPayload();
  sub_252636648();
  sub_252400FC8(&qword_27F4E3A50, &qword_27F4E3A58, &qword_2526AA660, MEMORY[0x277CE1198]);
  v131 = v221;
  sub_252691470();
  sub_252372288(v168, &qword_27F4E3A58, &qword_2526AA660);
  sub_252665DD8(v219, type metadata accessor for DisplayControl);
LABEL_23:
  sub_252636590();
  sub_25268A710();
  return sub_252372288(v131, &qword_27F4E3A08, &qword_2526AA638);
}

uint64_t sub_25262B1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v68 = a3;
  v69 = a7;
  v59 = a6;
  v60 = a2;
  v57 = a5;
  LODWORD(v62) = a4;
  v70 = a8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AD8, &qword_2526AA690);
  MEMORY[0x28223BE20](v64);
  v67 = &v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AE0, &qword_2526AA698);
  MEMORY[0x28223BE20](v66);
  v58 = &v55 - v11;
  v61 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  v55 = *(v61 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v61);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AE8, &qword_2526AA6A0);
  MEMORY[0x28223BE20](v63);
  v17 = (&v55 - v16);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AF0, &qword_2526AA6A8);
  MEMORY[0x28223BE20](v65);
  v19 = &v55 - v18;
  v20 = type metadata accessor for DisplayControl(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = a1;
  sub_252667110(a1);
  v27 = type metadata accessor for DisplayControlGroup(0);
  sub_252665FB8(v60 + *(v27 + 24), v26, type metadata accessor for DisplayControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_252665E38(v26, v23, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158, &qword_2526AA900);
    v29 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_252694E90;
    sub_252665E38(v23, v28 + v29, type metadata accessor for DisplayControl);
  }

  else
  {
    v28 = *v26;
  }

  v30 = v71;
  v31 = sub_25257CD60(v71, v28);
  v33 = v32;

  sub_25262BB98(v68, v30, (v31 == 0) & ~v33 & v62, v17);
  v34 = sub_25268DA10();
  (*(*(v34 - 8) + 16))(v15, v30, v34);
  swift_storeEnumTagMultiPayload();
  if (byte_27F4FB500 == 1)
  {
    v62 = sub_252692520();
    v35 = v56;
    sub_252665FB8(v15, v56, type metadata accessor for AccessoryControl.ElementIdentifier);
    v36 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v37 = swift_allocObject();
    sub_252665E38(v35, v37 + v36, type metadata accessor for AccessoryControl.ElementIdentifier);
    v38 = v58;
    sub_25237153C(v17, v58, &qword_27F4E3AE8, &qword_2526AA6A0);
    v39 = v67;
    v40 = (v38 + *(v66 + 36));
    v41 = v59;
    *v40 = v62;
    v40[1] = v41;
    v40[2] = v37;
    sub_25237153C(v38, v39, &qword_27F4E3AE0, &qword_2526AA698);
    swift_storeEnumTagMultiPayload();
    sub_252636CF0();
    sub_252636DA8();
    sub_252691470();
    sub_252372288(v38, &qword_27F4E3AE0, &qword_2526AA698);
  }

  else
  {
    sub_25237153C(v17, v67, &qword_27F4E3AE8, &qword_2526AA6A0);
    swift_storeEnumTagMultiPayload();
    sub_252636CF0();
    sub_252636DA8();
    sub_252691470();
  }

  sub_252665DD8(v15, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_252372288(v17, &qword_27F4E3AE8, &qword_2526AA6A0);
  v42 = sub_252691A20();
  sub_252690760();
  v43 = &v19[*(v65 + 36)];
  *v43 = v42;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  v48 = v71;
  sub_252635B24(v71);
  sub_2526392D4();
  v49 = v70;
  sub_252692070();

  sub_252372288(v19, &qword_27F4E3AF0, &qword_2526AA6A8);
  v50 = *(v48 + *(type metadata accessor for Device.Control(0) + 44));
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = (v50 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3AF8, &qword_2526AA6B0);
  v54 = (v49 + *(result + 36));
  *v54 = KeyPath;
  v54[1] = a9;
  v54[2] = v52;
  return result;
}

__n128 sub_25262B928@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    v3 = *(v1 + 24);

    if (v3 == 1)
    {
      sub_252692360();
    }

    else
    {
      sub_252692330();
    }

    v4 = sub_252691CD0();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    KeyPath = swift_getKeyPath();
    type metadata accessor for AnimationModel(0);
    sub_252666040(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    v12 = sub_252690DF0();
    v14 = v13;
    sub_252692920();
    sub_252690D70();
    *&v20 = v4;
    *(&v20 + 1) = v6;
    LOBYTE(v21) = v8 & 1;
    *(&v21 + 1) = v10;
    *&v22 = KeyPath;
    BYTE8(v22) = 1;
    v23.n128_u64[0] = v12;
    v23.n128_u64[1] = v14;
    CGPointMake();
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v35 = v24;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    v31 = v20;
    v32 = v21;
    v33 = v22;
    v34 = v23;
  }

  else
  {
    sub_252666020(&v31);
  }

  v15 = v40;
  *(a1 + 128) = v39;
  *(a1 + 144) = v15;
  *(a1 + 160) = v41;
  v16 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v16;
  v17 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v17;
  v18 = v32;
  *a1 = v31;
  *(a1 + 16) = v18;
  result = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25262BB98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v69 = a3;
  v72 = a4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E40, &qword_2526AA850);
  MEMORY[0x28223BE20](v71);
  v61 = (&v57 - v8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E30, &qword_2526AA848);
  MEMORY[0x28223BE20](v64);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v57 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EF0, &qword_2526AA908);
  MEMORY[0x28223BE20](v70);
  v68 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3EF8, &qword_2526AA910);
  MEMORY[0x28223BE20](v66);
  v67 = &v57 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B48, &qword_2526AA6E0);
  MEMORY[0x28223BE20](v73);
  v63 = &v57 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B58, &qword_2526AA6E8);
  MEMORY[0x28223BE20](v65);
  v58 = (&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v62 = (&v57 - v17);
  v18 = sub_2526910F0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a1 + *(type metadata accessor for ControlModuleView(0) + 36);
  v86 = *(v23 + 32);
  v24 = *(v23 + 3);
  v85[2] = *(v23 + 2);
  v85[3] = v24;
  v25 = *(v23 + 1);
  v85[0] = *v23;
  v85[1] = v25;
  if ((v86 & 0x100) != 0)
  {
    v26 = *(v23 + 2);
    v83 = *(v23 + 3);
    LOBYTE(v84) = v23[64];
    v27 = *v23;
    v81 = *(v23 + 1);
    v82 = v26;
    v80 = v27;
    if (BYTE1(v83))
    {
      goto LABEL_5;
    }
  }

  else
  {

    sub_252692F00();
    v28 = sub_2526919C0();
    v57 = a2;
    v29 = v28;
    sub_252690570();

    a2 = v57;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v85, &qword_27F4DC120, &qword_25269CED0);
    (*(v19 + 8))(v21, v18);
    if (BYTE1(v83))
    {
      goto LABEL_5;
    }
  }

  LOBYTE(v75) = *(a2 + *(type metadata accessor for DisplayControl(0) + 20));
  Device.Control.viewType(with:)(&v75, &v80);
  if (v80 - 6 < 6 || v80 == 15)
  {
    v34 = v62;
    sub_25262C654(a2, v69 & 1, v62);
    v35 = &qword_27F4E3B58;
    v36 = &qword_2526AA6E8;
    sub_25237153C(v34, v67, &qword_27F4E3B58, &qword_2526AA6E8);
    swift_storeEnumTagMultiPayload();
    sub_252636F44();
    sub_252639130();
    v37 = v63;
    sub_252691470();
    sub_25237153C(v37, v68, &qword_27F4E3B48, &qword_2526AA6E0);
    swift_storeEnumTagMultiPayload();
    sub_252636EB8();
    sub_2526391BC();
    sub_252691470();
    sub_252372288(v37, &qword_27F4E3B48, &qword_2526AA6E0);
    v38 = v34;
    goto LABEL_14;
  }

LABEL_5:
  v84 = *(v23 + 32);
  v30 = *(v23 + 2);
  v83 = *(v23 + 3);
  v31 = *v23;
  v81 = *(v23 + 1);
  v82 = v30;
  v80 = v31;
  if ((v84 & 0x100) != 0)
  {
    v32 = *(v23 + 3);
    v77 = *(v23 + 2);
    v78 = v32;
    v79 = v23[64];
    v33 = *v23;
    v76 = *(v23 + 1);
    v75 = v33;
  }

  else
  {

    sub_252692F00();
    v39 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v80, &qword_27F4DC120, &qword_25269CED0);
    (*(v19 + 8))(v21, v18);
  }

  if (BYTE1(v78) != 1 || (v40 = *(type metadata accessor for DisplayControl(0) + 20), v74 = *(a2 + v40), Device.Control.viewType(with:)(&v74, &v75), v75 > 0xFu) || ((1 << v75) & 0xE3D1) == 0)
  {
    v50 = v69 & 1;
    v51 = v61;
    sub_25262C654(a2, v69 & 1, v61);
    v52 = *v22;
    v53 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E50, &qword_2526AA858) + 36);
    *v53 = v50;
    *(v53 + 1) = v52;
    sub_252692920();
    sub_2526909C0();
    v54 = (v51 + *(v71 + 36));
    v55 = v76;
    *v54 = v75;
    v54[1] = v55;
    v54[2] = v77;
    sub_25237153C(v51, v68, &qword_27F4E3E40, &qword_2526AA850);
    swift_storeEnumTagMultiPayload();
    sub_252636EB8();
    sub_2526391BC();
    sub_252691470();
    v38 = v51;
    v48 = &qword_27F4E3E40;
    v49 = &qword_2526AA850;
    return sub_252372288(v38, v48, v49);
  }

  v41 = v58;
  sub_25262C654(a2, v69 & 1, v58);
  v74 = *(a2 + v40);
  Device.Control.viewType(with:)(&v74, &v75);
  v42 = v67;
  sub_252626EB0();
  sub_252692920();
  sub_2526909C0();
  v43 = v59;
  sub_2523714D4(v41, v59, &qword_27F4E3B58, &qword_2526AA6E8);
  v44 = (v43 + *(v64 + 36));
  v45 = v76;
  *v44 = v75;
  v44[1] = v45;
  v44[2] = v77;
  v35 = &qword_27F4E3E30;
  v36 = &qword_2526AA848;
  v46 = v60;
  sub_2523714D4(v43, v60, &qword_27F4E3E30, &qword_2526AA848);
  sub_25237153C(v46, v42, &qword_27F4E3E30, &qword_2526AA848);
  swift_storeEnumTagMultiPayload();
  sub_252636F44();
  sub_252639130();
  v47 = v63;
  sub_252691470();
  sub_25237153C(v47, v68, &qword_27F4E3B48, &qword_2526AA6E0);
  swift_storeEnumTagMultiPayload();
  sub_252636EB8();
  sub_2526391BC();
  sub_252691470();
  sub_252372288(v47, &qword_27F4E3B48, &qword_2526AA6E0);
  v38 = v46;
LABEL_14:
  v48 = v35;
  v49 = v36;
  return sub_252372288(v38, v48, v49);
}

uint64_t sub_25262C654@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  LODWORD(v952) = a2;
  v976 = a3;
  v815 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F00, &qword_2526AA918);
  MEMORY[0x28223BE20](v815);
  v814 = &v770 - v4;
  v810 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F08, &qword_2526AA920);
  MEMORY[0x28223BE20](v810);
  v809 = &v770 - v5;
  v812 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E00, &qword_2526AA830);
  MEMORY[0x28223BE20](v812);
  v811 = &v770 - v6;
  v975 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DF0, &qword_2526AA828);
  MEMORY[0x28223BE20](v975);
  v813 = &v770 - v7;
  v805 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F10, &qword_2526AA928);
  MEMORY[0x28223BE20](v805);
  v806 = &v770 - v8;
  v864 = type metadata accessor for MenuPickerControlView(0);
  MEMORY[0x28223BE20](v864);
  v800 = &v770 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v804 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F18, &qword_2526AA930);
  v802 = *(v804 - 8);
  MEMORY[0x28223BE20](v804);
  v801 = &v770 - v10;
  v803 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E10, &qword_2526AA838);
  MEMORY[0x28223BE20](v803);
  v807 = &v770 - v11;
  v787 = type metadata accessor for StatusDetailsButtonControlView(0);
  MEMORY[0x28223BE20](v787);
  v786 = &v770 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F20, &unk_2526AA938);
  MEMORY[0x28223BE20](v13 - 8);
  v799 = &v770 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420, &unk_2526A1120);
  v797 = *(v15 - 8);
  v798 = v15;
  MEMORY[0x28223BE20](v15);
  v785 = &v770 - v16;
  v906 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DD0, &qword_2526AA818);
  MEMORY[0x28223BE20](v906);
  v808 = &v770 - v17;
  v883 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F28, &qword_2526AA948);
  MEMORY[0x28223BE20](v883);
  v908 = &v770 - v18;
  v934 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DA0, &qword_2526AA800);
  MEMORY[0x28223BE20](v934);
  v907 = &v770 - v19;
  v882 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DB0, &qword_2526AA808);
  MEMORY[0x28223BE20](v882);
  v854 = &v770 - v20;
  v931 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F30, &qword_2526AA950);
  MEMORY[0x28223BE20](v931);
  v933 = &v770 - v21;
  v849 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F38, &qword_2526AA958);
  MEMORY[0x28223BE20](v849);
  v850 = &v770 - v22;
  v932 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D78, &qword_2526AA7F0);
  MEMORY[0x28223BE20](v932);
  v851 = &v770 - v23;
  v962 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D68, &qword_2526AA7E8);
  MEMORY[0x28223BE20](v962);
  v935 = &v770 - v24;
  v848 = type metadata accessor for AlarmAndTimerControlView(0);
  MEMORY[0x28223BE20](v848);
  v847 = (&v770 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v853 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F40, &qword_2526AA960);
  v852 = *(v853 - 8);
  MEMORY[0x28223BE20](v853);
  v903 = &v770 - v26;
  v27 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  MEMORY[0x28223BE20](v27 - 8);
  v902 = &v770 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v877 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F48, &qword_2526AA968);
  MEMORY[0x28223BE20](v877);
  v876 = &v770 - v29;
  v945 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D30, &qword_2526AA7D0);
  MEMORY[0x28223BE20](v945);
  v878 = &v770 - v30;
  v873 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F50, &qword_2526AA970);
  MEMORY[0x28223BE20](v873);
  v874 = &v770 - v31;
  v939 = type metadata accessor for ColorControl(0);
  MEMORY[0x28223BE20](v939);
  v869 = &v770 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v872 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F58, &qword_2526AA978);
  v871 = *(v872 - 8);
  MEMORY[0x28223BE20](v872);
  v870 = &v770 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F60, &unk_2526AA980);
  MEMORY[0x28223BE20](v34 - 8);
  v867 = &v770 - v35;
  v866 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  v865 = *(v866 - 8);
  MEMORY[0x28223BE20](v866);
  v938 = &v770 - v36;
  v868 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D40, &qword_2526AA7D8);
  MEMORY[0x28223BE20](v868);
  v875 = &v770 - v37;
  v844 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F68, &qword_2526AA990);
  MEMORY[0x28223BE20](v844);
  v845 = &v770 - v38;
  v900 = type metadata accessor for WheelPickerControlView(0);
  MEMORY[0x28223BE20](v900);
  v840 = &v770 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v843 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F70, &qword_2526AA998);
  v842 = *(v843 - 8);
  MEMORY[0x28223BE20](v843);
  v841 = &v770 - v40;
  v905 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D10, &qword_2526AA7C0);
  MEMORY[0x28223BE20](v905);
  v846 = &v770 - v41;
  v957 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F78, &qword_2526AA9A0);
  MEMORY[0x28223BE20](v957);
  v960 = &v770 - v42;
  v940 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F80, &qword_2526AA9A8);
  MEMORY[0x28223BE20](v940);
  v943 = &v770 - v43;
  v880 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F88, &unk_2526AA9B0);
  MEMORY[0x28223BE20](v880);
  v881 = &v770 - v44;
  v942 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CE0, &qword_2526AA7A0);
  MEMORY[0x28223BE20](v942);
  v904 = &v770 - v45;
  v959 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CD0, &qword_2526AA798);
  MEMORY[0x28223BE20](v959);
  v944 = &v770 - v46;
  v971 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CC0, &qword_2526AA790);
  MEMORY[0x28223BE20](v971);
  v961 = &v770 - v47;
  v772 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70, &unk_2526A41A0);
  MEMORY[0x28223BE20](v772);
  v771 = &v770 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v773 = &v770 - v50;
  v783 = type metadata accessor for ThermostatControlView(0);
  MEMORY[0x28223BE20](v783);
  v784 = &v770 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F90, &unk_2526AA9C0);
  MEMORY[0x28223BE20](v52 - 8);
  v795 = &v770 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  v792 = *(v54 - 8);
  v793 = v54;
  MEMORY[0x28223BE20](v54);
  v782 = &v770 - v55;
  v879 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CF0, &qword_2526AA7A8);
  MEMORY[0x28223BE20](v879);
  v796 = &v770 - v56;
  v921 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3F98, &qword_2526AA9D0);
  MEMORY[0x28223BE20](v921);
  v920 = &v770 - v57;
  v929 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C58, &qword_2526AA760);
  MEMORY[0x28223BE20](v929);
  v922 = &v770 - v58;
  v918 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FA0, &qword_2526AA9D8);
  MEMORY[0x28223BE20](v918);
  v917 = &v770 - v59;
  v937 = type metadata accessor for ButtonControlView(0);
  MEMORY[0x28223BE20](v937);
  v863 = &v770 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v916 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FA8, &qword_2526AA9E0);
  v858 = *(v916 - 8);
  MEMORY[0x28223BE20](v916);
  v857 = &v770 - v61;
  v910 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FB0, &qword_2526AA9E8);
  MEMORY[0x28223BE20](v910);
  v914 = &v770 - v62;
  v936 = type metadata accessor for StatusButtonControlView(0);
  MEMORY[0x28223BE20](v936);
  v909 = (&v770 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v911 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FB8, &qword_2526AA9F0);
  v856 = *(v911 - 8);
  MEMORY[0x28223BE20](v911);
  v855 = &v770 - v64;
  v912 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C78, &qword_2526AA770);
  MEMORY[0x28223BE20](v912);
  v913 = &v770 - v65;
  v915 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C68, &qword_2526AA768);
  MEMORY[0x28223BE20](v915);
  v919 = &v770 - v66;
  v925 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FC0, &qword_2526AA9F8);
  MEMORY[0x28223BE20](v925);
  v927 = &v770 - v67;
  v780 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FC8, &qword_2526AAA00);
  MEMORY[0x28223BE20](v780);
  v779 = &v770 - v68;
  v926 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CB0, &qword_2526AA788);
  MEMORY[0x28223BE20](v926);
  v781 = &v770 - v69;
  v958 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C48, &qword_2526AA758);
  MEMORY[0x28223BE20](v958);
  v928 = &v770 - v70;
  v901 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FD0, &qword_2526AAA08);
  v838 = *(v901 - 8);
  MEMORY[0x28223BE20](v901);
  v891 = &v770 - v71;
  v897 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FD8, &qword_2526AAA10);
  MEMORY[0x28223BE20](v897);
  v898 = &v770 - v72;
  v949 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BF8, &qword_2526AA738);
  MEMORY[0x28223BE20](v949);
  v899 = &v770 - v73;
  v859 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FE0, &qword_2526AAA18);
  MEMORY[0x28223BE20](v859);
  v862 = &v770 - v74;
  v930 = type metadata accessor for VerticalPickerControlView(0);
  MEMORY[0x28223BE20](v930);
  v776 = &v770 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v835 = &v770 - v77;
  v861 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FE8, &qword_2526AAA20);
  v860 = *(v861 - 8);
  MEMORY[0x28223BE20](v861);
  v777 = &v770 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v837 = &v770 - v80;
  v923 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C08, &qword_2526AA740);
  MEMORY[0x28223BE20](v923);
  v778 = &v770 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v839 = &v770 - v83;
  v84 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v84 - 8);
  v924 = &v770 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v890 = &v770 - v87;
  MEMORY[0x28223BE20](v88);
  v775 = &v770 - v89;
  MEMORY[0x28223BE20](v90);
  v794 = &v770 - v91;
  MEMORY[0x28223BE20](v92);
  v828 = &v770 - v93;
  MEMORY[0x28223BE20](v94);
  v892 = &v770 - v95;
  v834 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FF0, &qword_2526AAA28);
  MEMORY[0x28223BE20](v834);
  v791 = &v770 - v96;
  v831 = type metadata accessor for SliderControlView(0);
  MEMORY[0x28223BE20](v831);
  v829 = &v770 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3FF8, &qword_2526AAA30);
  v832 = *(v98 - 8);
  v833 = v98;
  MEMORY[0x28223BE20](v98);
  v830 = &v770 - v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4000, &unk_2526AAA38);
  MEMORY[0x28223BE20](v100 - 8);
  v822 = &v770 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810, &unk_2526A56A0);
  v820 = *(v102 - 8);
  v821 = v102;
  MEMORY[0x28223BE20](v102);
  v825 = &v770 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v887 = &v770 - v105;
  v896 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BD0, &qword_2526AA728);
  MEMORY[0x28223BE20](v896);
  v836 = &v770 - v106;
  v107 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v107 - 8);
  v889 = &v770 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v973 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4008, &qword_2526AAA48);
  MEMORY[0x28223BE20](v973);
  v972 = &v770 - v109;
  v967 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4010, &qword_2526AAA50);
  MEMORY[0x28223BE20](v967);
  v969 = &v770 - v110;
  v954 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4018, &qword_2526AAA58);
  MEMORY[0x28223BE20](v954);
  v955 = &v770 - v111;
  v941 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4020, &qword_2526AAA60);
  MEMORY[0x28223BE20](v941);
  v947 = &v770 - v112;
  v893 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4028, &qword_2526AAA68);
  MEMORY[0x28223BE20](v893);
  v894 = &v770 - v113;
  v946 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B98, &qword_2526AA708);
  MEMORY[0x28223BE20](v946);
  v895 = &v770 - v114;
  v953 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B88, &qword_2526AA700);
  MEMORY[0x28223BE20](v953);
  v948 = &v770 - v115;
  v968 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B78, &qword_2526AA6F8);
  MEMORY[0x28223BE20](v968);
  v956 = (&v770 - v116);
  v974 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3B68, &qword_2526AA6F0);
  MEMORY[0x28223BE20](v974);
  v970 = &v770 - v117;
  v826 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4030, &qword_2526AAA70);
  MEMORY[0x28223BE20](v826);
  v790 = &v770 - v118;
  v964 = sub_2526910F0();
  v965 = *(v964 - 8);
  MEMORY[0x28223BE20](v964);
  v963 = &v770 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v885 = type metadata accessor for SwitchControlView(0);
  MEMORY[0x28223BE20](v885);
  v884 = &v770 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v789 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4038, &qword_2526AAA78);
  v824 = *(v789 - 8);
  MEMORY[0x28223BE20](v789);
  v823 = &v770 - v121;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4040, &qword_2526AAA80);
  MEMORY[0x28223BE20](v122 - 8);
  v788 = &v770 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v124);
  v819 = &v770 - v125;
  MEMORY[0x28223BE20](v126);
  v818 = &v770 - v127;
  MEMORY[0x28223BE20](v128);
  v130 = &v770 - v129;
  MEMORY[0x28223BE20](v131);
  v816 = &v770 - v132;
  MEMORY[0x28223BE20](v133);
  v817 = &v770 - v134;
  MEMORY[0x28223BE20](v135);
  v137 = &v770 - v136;
  MEMORY[0x28223BE20](v138);
  v774 = &v770 - v139;
  MEMORY[0x28223BE20](v140);
  v142 = &v770 - v141;
  MEMORY[0x28223BE20](v143);
  v145 = &v770 - v144;
  MEMORY[0x28223BE20](v146);
  v148 = &v770 - v147;
  v888 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BA8, &qword_2526AA710);
  MEMORY[0x28223BE20](v888);
  v827 = &v770 - v149;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4048, &unk_2526AAA88);
  v151 = v150 - 8;
  MEMORY[0x28223BE20](v150);
  v153 = &v770 - v152;
  v154 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v154 - 8);
  v886 = &v770 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v156);
  v950 = &v770 - v157;
  v951 = *(type metadata accessor for DisplayControl(0) + 20);
  LOBYTE(v988) = *(a1 + v951);
  v158 = a1;
  Device.Control.viewType(with:)(&v988, v999);
  LOBYTE(a1) = v999[0];
  v159 = *(type metadata accessor for Device.Control(0) + 20);
  v160 = &v153[*(v151 + 56)];
  *v153 = a1;
  v161 = v160;
  v966 = v158;
  sub_252665FB8(v158 + v159, v160, type metadata accessor for Device.Control.Kind);
  switch(*v153)
  {
    case 1:
    case 2:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_205;
      }

      goto LABEL_3;
    case 3:
      type metadata accessor for Device.Control.Kind(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
LABEL_3:
        sub_252393F68(*v161, *(v161 + 8), *(v161 + 16), *(v161 + 24), *(v161 + 32));
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
        sub_252665E38(v161 + *(v162 + 48), v950, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v163 = type metadata accessor for ControlModuleView(0);
        v164 = v977;
        sub_252604038(v966, v137);
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
        if ((*(*(v165 - 8) + 48))(v137, 1, v165) == 1)
        {
          sub_252372288(v137, &qword_27F4E4040, &qword_2526AAA80);
          goto LABEL_223;
        }

        sub_252605008(&v988);
        sub_252372288(v137, &qword_27F4DAE18, &qword_2526A7F90);
        if (!*(&v988 + 1))
        {
          goto LABEL_223;
        }

        v166 = *&v989[8];
        v167 = *v989;
        v168 = *&v989[24];
        v169 = *&v989[16];
        v170 = *&v989[32];
        v966 = *(&v988 + 1);
        v962 = v988;
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1198, &unk_2526A4A00);
        MEMORY[0x2530A4210](&v978);
        v957 = v167;
        v959 = v166;
        v961 = v169;
        v960 = v168;
        v951 = v170;
        if (*&v980[0] == 1)
        {
          sub_252393F68(v978, *(&v978 + 1), v979, *(&v979 + 1), 1);
        }

        else
        {
          v194 = v979;
          sub_252393F68(v978, *(&v978 + 1), v979, *(&v979 + 1), *&v980[0]);
          if (v194 != 1)
          {
            goto LABEL_75;
          }
        }

        v949 = v163;
        *&v988 = v962;
        *(&v988 + 1) = v966;
        *v989 = v167;
        *&v989[8] = v166;
        *&v989[16] = v169;
        *&v989[24] = v168;
        *&v989[32] = v170;
        MEMORY[0x2530A4210](&v978, v171);
        v195 = *&v980[0];
        if (*&v980[0] == 1)
        {
          sub_252393F68(v978, *(&v978 + 1), v979, *(&v979 + 1), 1);
          v196 = v863;
LABEL_77:
          v952 = *v164;
          v367 = v937;
          v368 = v196 + *(v937 + 32);
          *v368 = swift_getKeyPath();
          v368[8] = 0;
          v369 = v196 + v367[9];
          __asm { FMOV            V0.2D, #1.0 }

          v978 = _Q0;
          v375 = v962;

          v376 = v966;

          v377 = v959;
          v378 = v960;
          sub_25239F750(v167, v959, v961, v960, v170);
          type metadata accessor for CGSize(0);
          sub_2526924D0();
          v379 = *v989;
          *v369 = v988;
          *(v369 + 2) = v379;
          v380 = v196 + v367[10];
          LOBYTE(v978) = 0;
          sub_2526924D0();
          v381 = *(&v988 + 1);
          *v380 = v988;
          *(v380 + 1) = v381;
          *v196 = v952;
          v196[1] = v375;
          v196[2] = v376;
          v196[3] = v167;
          v382 = v961;
          v196[4] = v377;
          v196[5] = v382;
          v196[6] = v378;
          v196[7] = v170;
          sub_252665E38(v950, v196 + v367[6], type metadata accessor for AccessoryControl.BinaryViewConfig);
          *(v196 + v367[7]) = 0;
          v383 = v977 + *(v949 + 36);
          LOWORD(v990) = *(v383 + 32);
          v384 = *(v383 + 3);
          *&v989[16] = *(v383 + 2);
          *&v989[32] = v384;
          v385 = *v383;
          *v989 = *(v383 + 1);
          v988 = v385;
          if (BYTE1(v990))
          {
            v386 = *(v383 + 3);
            v980[0] = *(v383 + 2);
            v980[1] = v386;
            LOBYTE(v981) = v383[64];
            v387 = *v383;
            v979 = *(v383 + 1);
            v978 = v387;
          }

          else
          {

            sub_252692F00();
            v388 = sub_2526919C0();
            sub_252690570();

            v389 = v963;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
            (*(v965 + 8))(v389, v964);
          }

          v390 = v916;
          if (v978 != 1)
          {
            LOWORD(v981) = *(v383 + 32);
            v391 = *(v383 + 3);
            v980[0] = *(v383 + 2);
            v980[1] = v391;
            v392 = *v383;
            v979 = *(v383 + 1);
            v978 = v392;
            if (BYTE1(v981))
            {
              v393 = *(v383 + 3);
              v996 = *(v383 + 2);
              v997 = v393;
              LOBYTE(v998) = v383[64];
              v394 = *(v383 + 1);
              v994 = *v383;
              v995 = v394;
            }

            else
            {

              sub_252692F00();
              v519 = sub_2526919C0();
              sub_252690570();

              v520 = v963;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
              (*(v965 + 8))(v520, v964);
            }
          }

          v977 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C90, &qword_2526AA780);
          v521 = sub_252666040(&qword_27F4E3C98, type metadata accessor for ButtonControlView, &unk_2526A4970);
          v522 = sub_252637DB4();
          v523 = v857;
          v524 = v937;
          sub_252691D70();
          sub_252665DD8(v196, type metadata accessor for ButtonControlView);
          v525 = v858;
          (*(v858 + 16))(v914, v523, v390);
          swift_storeEnumTagMultiPayload();
          v526 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C80, &qword_2526AA778);
          v527 = v390;
          v528 = sub_252666040(&qword_27F4E2028, type metadata accessor for StatusButtonControlView, &unk_2526A5A30);
          v529 = sub_252637CCC();
          *&v978 = v936;
          *(&v978 + 1) = v526;
          *&v979 = v528;
          *(&v979 + 1) = v529;
          swift_getOpaqueTypeConformance2();
          *&v978 = v524;
          *(&v978 + 1) = v977;
          *&v979 = v521;
          *(&v979 + 1) = v522;
          swift_getOpaqueTypeConformance2();
          v530 = v913;
          sub_252691470();
          (*(v525 + 8))(v523, v527);
LABEL_143:
          sub_25237153C(v530, v917, &qword_27F4E3C78, &qword_2526AA770);
          swift_storeEnumTagMultiPayload();
          sub_252637B34();
          v544 = v919;
          sub_252691470();
          sub_2526516F4(v962, v966, v957, v959, v961, v960, v951);
          sub_252372288(v530, &qword_27F4E3C78, &qword_2526AA770);
          sub_25237153C(v544, v920, &qword_27F4E3C68, &qword_2526AA768);
          swift_storeEnumTagMultiPayload();
          sub_252637AA8();
          v545 = v922;
          sub_252691470();
          sub_25237153C(v545, v927, &qword_27F4E3C58, &qword_2526AA760);
          swift_storeEnumTagMultiPayload();
          sub_2526384F0(&qword_27F4E3C50, &qword_27F4E3C58, &qword_2526AA760, sub_252637AA8);
          sub_252637E9C();
          v546 = v928;
          sub_252691470();
          sub_252372288(v545, &qword_27F4E3C58, &qword_2526AA760);
          sub_25237153C(v546, v955, &qword_27F4E3C48, &qword_2526AA758);
          swift_storeEnumTagMultiPayload();
          sub_2526370E8();
          sub_2526379F0();
          v547 = v956;
          sub_252691470();
          sub_252372288(v546, &qword_27F4E3C48, &qword_2526AA758);
          sub_25237153C(v547, v969, &qword_27F4E3B78, &qword_2526AA6F8);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v548 = v970;
          sub_252691470();
          sub_252372288(v547, &qword_27F4E3B78, &qword_2526AA6F8);
          sub_25237153C(v548, v972, &qword_27F4E3B68, &qword_2526AA6F0);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v548, &qword_27F4E3B68, &qword_2526AA6F0);
          return sub_252372288(v544, &qword_27F4E3C68, &qword_2526AA768);
        }

        v352 = v978;
        v354 = *(&v979 + 1);
        v353 = v979;

        v355 = v353;
        v167 = v957;
        v164 = v977;
        sub_252393F68(v352, *(&v352 + 1), v355, v354, v195);
        v196 = v863;
        if (!v195)
        {
          goto LABEL_77;
        }

        v166 = v959;
        v168 = v960;
        v163 = v949;
LABEL_75:
        v356 = v168;
        v357 = v909;
        v358 = v169;
        v359 = v962;
        *v909 = *v164;
        v357[1] = v359;
        v360 = v966;
        v357[2] = v966;
        v357[3] = v167;
        v357[4] = v166;
        v357[5] = v358;
        v357[6] = v356;
        v357[7] = v170;
        v361 = v936;
        sub_252665E38(v950, v357 + *(v936 + 24), type metadata accessor for AccessoryControl.BinaryViewConfig);
        *(v357 + *(v361 + 28)) = v952 & 1;
        v362 = v164 + *(v163 + 36);
        LOWORD(v990) = *(v362 + 32);
        v363 = *(v362 + 3);
        *&v989[16] = *(v362 + 2);
        *&v989[32] = v363;
        v364 = *v362;
        *v989 = *(v362 + 1);
        v988 = v364;
        if (BYTE1(v990))
        {
          v365 = *(v362 + 3);
          v980[0] = *(v362 + 2);
          v980[1] = v365;
          LOBYTE(v981) = v362[64];
          v366 = *v362;
          v979 = *(v362 + 1);
          v978 = v366;

          sub_25239F750(v167, v166, v961, v960, v170);
        }

        else
        {
          sub_252651774(v359, v360, v167, v166, v961, v960, v170);
          sub_25237153C(&v988, &v978, &qword_27F4DC120, &qword_25269CED0);
          sub_252692F00();
          v395 = sub_2526919C0();
          sub_252690570();

          v396 = v963;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
          (*(v965 + 8))(v396, v964);
        }

        if (v978 != 1)
        {
          LOWORD(v981) = *(v362 + 32);
          v397 = *(v362 + 3);
          v980[0] = *(v362 + 2);
          v980[1] = v397;
          v398 = *v362;
          v979 = *(v362 + 1);
          v978 = v398;
          if (BYTE1(v981))
          {
            v399 = *(v362 + 3);
            v996 = *(v362 + 2);
            v997 = v399;
            LOBYTE(v998) = v362[64];
            v400 = *(v362 + 1);
            v994 = *v362;
            v995 = v400;
          }

          else
          {

            sub_252692F00();
            v531 = sub_2526919C0();
            sub_252690570();

            v532 = v963;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
            (*(v965 + 8))(v532, v964);
          }
        }

        v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C80, &qword_2526AA778);
        v534 = sub_252666040(&qword_27F4E2028, type metadata accessor for StatusButtonControlView, &unk_2526A5A30);
        v535 = sub_252637CCC();
        v536 = v855;
        v537 = v936;
        v538 = v909;
        sub_252691D70();
        sub_252665DD8(v538, type metadata accessor for StatusButtonControlView);
        v539 = v856;
        v540 = v911;
        (*(v856 + 16))(v914, v536, v911);
        swift_storeEnumTagMultiPayload();
        *&v978 = v537;
        *(&v978 + 1) = v533;
        *&v979 = v534;
        *(&v979 + 1) = v535;
        swift_getOpaqueTypeConformance2();
        v541 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C90, &qword_2526AA780);
        v542 = sub_252666040(&qword_27F4E3C98, type metadata accessor for ButtonControlView, &unk_2526A4970);
        v543 = sub_252637DB4();
        *&v978 = v937;
        *(&v978 + 1) = v541;
        *&v979 = v542;
        *(&v979 + 1) = v543;
        swift_getOpaqueTypeConformance2();
        v530 = v913;
        sub_252691470();
        (*(v539 + 8))(v536, v540);
        goto LABEL_143;
      }

      if (EnumCaseMultiPayload != 2)
      {
LABEL_205:
        sub_252665DD8(v161, type metadata accessor for Device.Control.Kind);
LABEL_223:
        result = sub_252693260();
        __break(1u);
        return result;
      }

      v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
      v313 = v794;
      sub_252665E38(v161 + *(v312 + 48), v794, type metadata accessor for AccessoryControl.PickerViewConfig);
      v314 = type metadata accessor for ControlModuleView(0);
      v315 = v774;
      v316 = v966;
      sub_252604038(v966, v774);
      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      if ((*(*(v317 - 8) + 48))(v315, 1, v317) == 1)
      {
        sub_252372288(v315, &qword_27F4E4040, &qword_2526AAA80);
        goto LABEL_223;
      }

      sub_252606404(&v988);
      sub_252372288(v315, &qword_27F4DAE18, &qword_2526A7F90);
      v318 = *(&v988 + 1);
      v319 = v775;
      if (!*(&v988 + 1))
      {
        goto LABEL_223;
      }

      v320 = v988;
      v321 = *v989;
      v322 = v989[8];
      sub_252665FB8(v313, v775, type metadata accessor for AccessoryControl.PickerViewConfig);
      LOBYTE(v988) = *(v316 + v951);

      Device.Control.viewType(with:)(&v988, &v984);
      v323 = 0;
      if (v984 > 0xFu)
      {
        v324 = v776;
      }

      else
      {
        v324 = v776;
        if (((1 << v984) & 0x2011) != 0)
        {
          v325 = 0x4044000000000000;
        }

        else
        {
          if (((1 << v984) & 0x8C00) == 0)
          {
            goto LABEL_165;
          }

          v325 = 0x4059000000000000;
        }

        v323 = v325;
      }

LABEL_165:
      v966 = v320;
      *v324 = v320;
      *(v324 + 8) = v318;
      v960 = v321;
      *(v324 + 16) = v321;
      *(v324 + 24) = v322 & 1;
      v690 = v930;
      sub_252665E38(v319, v324 + *(v930 + 20), type metadata accessor for AccessoryControl.PickerViewConfig);
      *(v324 + v690[6]) = v323;
      v691 = v324 + v690[7];
      *v691 = swift_getKeyPath();
      *(v691 + 8) = 0;
      v692 = v324 + v690[8];
      *&v978 = 0;
      BYTE8(v978) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8, &unk_2526994A0);
      sub_2526924D0();
      v693 = BYTE8(v988);
      v694 = *v989;
      *v692 = v988;
      *(v692 + 8) = v693;
      *(v692 + 16) = v694;
      v695 = v324 + v690[9];
      *&v978 = 0;
      BYTE8(v978) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F00, &qword_2526A4680);
      sub_2526924D0();
      v696 = BYTE8(v988);
      v697 = *v989;
      *v695 = v988;
      *(v695 + 8) = v696;
      *(v695 + 16) = v697;
      v698 = v977 + *(v314 + 36);
      v699 = *(v698 + 3);
      *&v989[16] = *(v698 + 2);
      *&v989[32] = v699;
      LOWORD(v990) = *(v698 + 32);
      v700 = *v698;
      *v989 = *(v698 + 1);
      v988 = v700;
      if (BYTE1(v990))
      {
        v701 = *(v698 + 3);
        v980[0] = *(v698 + 2);
        v980[1] = v701;
        LOBYTE(v981) = v698[64];
        v702 = *v698;
        v979 = *(v698 + 1);
        v978 = v702;
      }

      else
      {

        sub_252692F00();
        v703 = sub_2526919C0();
        sub_252690570();

        v704 = v963;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
        (*(v965 + 8))(v704, v964);
      }

      v962 = v318;
      LODWORD(v961) = v322;
      if (v978 != 1)
      {
        LOWORD(v981) = *(v698 + 32);
        v705 = *(v698 + 3);
        v980[0] = *(v698 + 2);
        v980[1] = v705;
        v706 = *v698;
        v979 = *(v698 + 1);
        v978 = v706;
        if (BYTE1(v981))
        {
          v707 = *(v698 + 3);
          v996 = *(v698 + 2);
          v997 = v707;
          LOBYTE(v998) = v698[64];
          v708 = *(v698 + 1);
          v994 = *v698;
          v995 = v708;
        }

        else
        {

          sub_252692F00();
          v730 = sub_2526919C0();
          sub_252690570();

          v731 = v963;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
          (*(v965 + 8))(v731, v964);
        }
      }

      v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C10, &qword_2526AA748);
      v733 = sub_252666040(&qword_27F4E3C18, type metadata accessor for VerticalPickerControlView, &unk_2526A5E58);
      v734 = sub_2526377FC();
      v735 = v777;
      v736 = v930;
      sub_252691D70();
      sub_252665DD8(v324, type metadata accessor for VerticalPickerControlView);
      v737 = v860;
      v738 = v861;
      (*(v860 + 16))(v862, v735, v861);
      swift_storeEnumTagMultiPayload();
      *&v978 = v736;
      *(&v978 + 1) = v732;
      *&v979 = v733;
      *(&v979 + 1) = v734;
      swift_getOpaqueTypeConformance2();
      v739 = v778;
      sub_252691470();
      v740 = sub_252651638(v966, v962);
      (*(v737 + 8))(v735, v738, v740);
      sub_25237153C(v739, v779, &qword_27F4E3C08, &qword_2526AA740);
      swift_storeEnumTagMultiPayload();
      sub_2526376E4();
      v741 = v781;
      sub_252691470();
      sub_25237153C(v741, v927, &qword_27F4E3CB0, &qword_2526AA788);
      swift_storeEnumTagMultiPayload();
      sub_2526384F0(&qword_27F4E3C50, &qword_27F4E3C58, &qword_2526AA760, sub_252637AA8);
      sub_252637E9C();
      v742 = v928;
      sub_252691470();
      sub_252372288(v741, &qword_27F4E3CB0, &qword_2526AA788);
      sub_25237153C(v742, v955, &qword_27F4E3C48, &qword_2526AA758);
      swift_storeEnumTagMultiPayload();
      sub_2526370E8();
      sub_2526379F0();
      v743 = v956;
      sub_252691470();
      sub_252372288(v742, &qword_27F4E3C48, &qword_2526AA758);
      sub_25237153C(v743, v969, &qword_27F4E3B78, &qword_2526AA6F8);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v744 = v970;
      sub_252691470();
      sub_252372288(v743, &qword_27F4E3B78, &qword_2526AA6F8);
      sub_25237153C(v744, v972, &qword_27F4E3B68, &qword_2526AA6F0);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v744, &qword_27F4E3B68, &qword_2526AA6F0);
      sub_252372288(v739, &qword_27F4E3C08, &qword_2526AA740);
      v576 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v577 = v794;
      return sub_252665DD8(v577, v576);
    case 4:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_223;
      }

      v276 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020) + 48);
      v950 = v161;
      v277 = v889;
      sub_252665E38(v161 + v276, v889, type metadata accessor for AccessoryControl.IncrementalConfig);
      v278 = type metadata accessor for ControlModuleView(0);
      v279 = v977;
      sub_252604038(v966, v145);
      v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      if ((*(*(v280 - 8) + 48))(v145, 1, v280) == 1)
      {
        sub_252372288(v145, &qword_27F4E4040, &qword_2526AAA80);
        v281 = v822;
        (*(v820 + 56))(v822, 1, 1, v821);
      }

      else
      {
        v281 = v822;
        sub_252605974(v822);
        sub_252372288(v145, &qword_27F4DAE18, &qword_2526A7F90);
        v282 = (*(v820 + 48))(v281, 1, v821);
        v283 = v829;
        if (v282 != 1)
        {
          v284 = v887;
          sub_2523714D4(v281, v887, &qword_27F4E1810, &unk_2526A56A0);
          v285 = *v279;
          v286 = v825;
          sub_25237153C(v284, v825, &qword_27F4E1810, &unk_2526A56A0);
          LOBYTE(v988) = *(v966 + v951);
          Device.Control.viewType(with:)(&v988, &v984);
          v287 = 0;
          v288 = v831;
          if (v984 > 0xFu)
          {
            v289 = v952;
            goto LABEL_133;
          }

          v289 = v952;
          if (((1 << v984) & 0x2011) != 0)
          {
            v290 = 0x4044000000000000;
          }

          else
          {
            if (((1 << v984) & 0x8C00) == 0)
            {
LABEL_133:
              sub_252665FB8(v277, v283 + *(v831 + 32), type metadata accessor for AccessoryControl.IncrementalConfig);
              *v283 = v285;
              sub_2523714D4(v286, v283 + v288[5], &qword_27F4E1810, &unk_2526A56A0);
              *(v283 + v288[6]) = v287;
              *(v283 + v288[7]) = v289 & 1;
              v497 = v283 + v288[9];
              *&v978 = 0;
              BYTE8(v978) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8, &unk_2526994A0);
              sub_2526924D0();
              v498 = BYTE8(v988);
              v499 = *v989;
              *v497 = v988;
              v497[8] = v498;
              *(v497 + 2) = v499;
              v500 = v283 + v288[10];
              *&v978 = 0;
              BYTE8(v978) = 1;
              sub_2526924D0();
              v501 = BYTE8(v988);
              v502 = *v989;
              *v500 = v988;
              v500[8] = v501;
              *(v500 + 2) = v502;
              v503 = v283 + v288[11];
              LOBYTE(v978) = 0;
              sub_2526924D0();
              v504 = *(&v988 + 1);
              *v503 = v988;
              *(v503 + 1) = v504;
              v505 = v288[12];
              *&v978 = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1840, &unk_2526AAB40);
              sub_2526924D0();
              *(v283 + v505) = v988;
              v506 = v283 + v288[13];
              *v506 = swift_getKeyPath();
              v506[8] = 0;
              v507 = v279 + *(v278 + 36);
              LOWORD(v990) = *(v507 + 32);
              v508 = *(v507 + 3);
              *&v989[16] = *(v507 + 2);
              *&v989[32] = v508;
              v509 = *v507;
              *v989 = *(v507 + 1);
              v988 = v509;
              if (BYTE1(v990))
              {
                v510 = *(v507 + 3);
                v980[0] = *(v507 + 2);
                v980[1] = v510;
                LOBYTE(v981) = v507[64];
                v511 = *v507;
                v979 = *(v507 + 1);
                v978 = v511;
              }

              else
              {

                sub_252692F00();
                v512 = sub_2526919C0();
                sub_252690570();

                v513 = v963;
                sub_2526910E0();
                swift_getAtKeyPath();
                sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
                (*(v965 + 8))(v513, v964);
              }

              v514 = v791;
              if (v978 != 1)
              {
                LOWORD(v981) = *(v507 + 32);
                v515 = *(v507 + 3);
                v980[0] = *(v507 + 2);
                v980[1] = v515;
                v516 = *v507;
                v979 = *(v507 + 1);
                v978 = v516;
                if (BYTE1(v981))
                {
                  v517 = *(v507 + 3);
                  v996 = *(v507 + 2);
                  v997 = v517;
                  LOBYTE(v998) = v507[64];
                  v518 = *(v507 + 1);
                  v994 = *v507;
                  v995 = v518;
                }

                else
                {

                  sub_252692F00();
                  v662 = sub_2526919C0();
                  sub_252690570();

                  v663 = v963;
                  sub_2526910E0();
                  swift_getAtKeyPath();
                  sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
                  (*(v965 + 8))(v663, v964);
                }
              }

              v664 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BD8, &qword_2526AA730);
              v665 = sub_252666040(&qword_27F4E3BE0, type metadata accessor for SliderControlView, &unk_2526A56D0);
              v666 = sub_252637518();
              v667 = v830;
              sub_252691D70();
              sub_252665DD8(v283, type metadata accessor for SliderControlView);
              v669 = v832;
              v668 = v833;
              (*(v832 + 16))(v514, v667, v833);
              swift_storeEnumTagMultiPayload();
              *&v978 = v288;
              *(&v978 + 1) = v664;
              *&v979 = v665;
              *(&v979 + 1) = v666;
              swift_getOpaqueTypeConformance2();
              v670 = v836;
              sub_252691470();
              (*(v669 + 8))(v667, v668);
              sub_252372288(v887, &qword_27F4E1810, &unk_2526A56A0);
              sub_25237153C(v670, v894, &qword_27F4E3BD0, &qword_2526AA728);
              swift_storeEnumTagMultiPayload();
              sub_252637200();
              sub_252637400();
              v671 = v895;
              sub_252691470();
              sub_25237153C(v671, v947, &qword_27F4E3B98, &qword_2526AA708);
              swift_storeEnumTagMultiPayload();
              sub_252637174();
              sub_252637600();
              v672 = v948;
              sub_252691470();
              sub_252372288(v671, &qword_27F4E3B98, &qword_2526AA708);
              sub_25237153C(v672, v955, &qword_27F4E3B88, &qword_2526AA700);
              swift_storeEnumTagMultiPayload();
              sub_2526370E8();
              sub_2526379F0();
              v673 = v956;
              sub_252691470();
              sub_252372288(v672, &qword_27F4E3B88, &qword_2526AA700);
              sub_25237153C(v673, v969, &qword_27F4E3B78, &qword_2526AA6F8);
              swift_storeEnumTagMultiPayload();
              sub_25263705C();
              sub_252637F28();
              v674 = v970;
              sub_252691470();
              sub_252372288(v673, &qword_27F4E3B78, &qword_2526AA6F8);
              sub_25237153C(v674, v972, &qword_27F4E3B68, &qword_2526AA6F0);
              swift_storeEnumTagMultiPayload();
              sub_252636FD0();
              sub_252638E18();
              sub_252691470();
              sub_252372288(v674, &qword_27F4E3B68, &qword_2526AA6F0);
              sub_252372288(v670, &qword_27F4E3BD0, &qword_2526AA728);
              sub_252665DD8(v889, type metadata accessor for AccessoryControl.IncrementalConfig);
              v675 = &qword_27F4DB218;
              v676 = &unk_252696080;
              return sub_252372288(v950, v675, v676);
            }

            v290 = 0x4059000000000000;
          }

          v287 = v290;
          goto LABEL_133;
        }
      }

      sub_252372288(v281, &qword_27F4E4000, &unk_2526AAA38);
      goto LABEL_223;
    case 5:
    case 6:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_223;
      }

      v172 = v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0) + 48);
      v984 = *v172;
      *&v985 = *(v172 + 16);
      sub_252372288(v161, &qword_27F4DB2A0, &qword_25269E4A0);
      v173 = type metadata accessor for ControlModuleView(0);
      v174 = v977;
      v175 = v966;
      sub_252604038(v966, v130);
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      if ((*(*(v176 - 8) + 48))(v130, 1, v176) == 1)
      {
        sub_252372288(v130, &qword_27F4E4040, &qword_2526AAA80);
        v177 = v867;
        (*(v865 + 56))(v867, 1, 1, v866);
      }

      else
      {
        v177 = v867;
        sub_252609030(v867);
        sub_252372288(v130, &qword_27F4DAE18, &qword_2526A7F90);
        v178 = (*(v865 + 48))(v177, 1, v866);
        v179 = v869;
        if (v178 != 1)
        {
          v180 = v177;
          v181 = v938;
          sub_2523714D4(v180, v938, &qword_27F4DE658, &unk_25269F720);
          LOBYTE(v978) = *(v175 + v951);
          Device.Control.viewType(with:)(&v978, &v988);
          v182 = v988 == 6;
          v183 = v939;
          sub_25237153C(v181, v179 + *(v939 + 28), &qword_27F4DE658, &unk_25269F720);
          v184 = *v174;
          *v179 = swift_getKeyPath();
          *(v179 + 8) = 0;
          *(v179 + 16) = swift_getKeyPath();
          *(v179 + 24) = 0;
          KeyPath = swift_getKeyPath();
          v999[0] = 0;
          *(v179 + 32) = KeyPath;
          *(v179 + 97) = 0;
          v186 = v179 + v183[12];
          LOBYTE(v978) = 0;
          sub_2526924D0();
          v187 = *(&v988 + 1);
          *v186 = v988;
          *(v186 + 8) = v187;
          v188 = v179 + v183[8];
          *v188 = v984;
          *(v188 + 16) = v985;
          *(v179 + v183[9]) = v182;
          *(v179 + v183[10]) = v184;
          *(v179 + v183[11]) = v952 & 1;
          v189 = v174 + *(v173 + 36);
          v190 = *(v189 + 3);
          *&v989[16] = *(v189 + 2);
          *&v989[32] = v190;
          LOWORD(v990) = *(v189 + 32);
          v191 = *(v189 + 1);
          v988 = *v189;
          *v989 = v191;
          if (BYTE1(v990))
          {
            v192 = *(v189 + 3);
            v980[0] = *(v189 + 2);
            v980[1] = v192;
            LOBYTE(v981) = v189[64];
            v193 = *v189;
            v979 = *(v189 + 1);
            v978 = v193;
          }

          else
          {

            sub_252692F00();
            v326 = sub_2526919C0();
            sub_252690570();

            v327 = v963;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
            (*(v965 + 8))(v327, v964);
          }

          if (v978 != 1)
          {
            LOWORD(v981) = *(v189 + 32);
            v328 = *(v189 + 3);
            v980[0] = *(v189 + 2);
            v980[1] = v328;
            v329 = *v189;
            v979 = *(v189 + 1);
            v978 = v329;
            if (BYTE1(v981))
            {
              v330 = *(v189 + 3);
              v996 = *(v189 + 2);
              v997 = v330;
              LOBYTE(v998) = v189[64];
              v331 = *(v189 + 1);
              v994 = *v189;
              v995 = v331;
            }

            else
            {

              sub_252692F00();
              v438 = sub_2526919C0();
              sub_252690570();

              v439 = v963;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
              (*(v965 + 8))(v439, v964);
            }
          }

          v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D48, &qword_2526AA7E0);
          v441 = sub_252666040(&qword_27F4E3D50, type metadata accessor for ColorControl, &unk_25269F750);
          v442 = sub_25263868C();
          v443 = v870;
          v444 = v939;
          sub_252691D70();
          sub_252665DD8(v179, type metadata accessor for ColorControl);
          v445 = v871;
          v446 = v872;
          (*(v871 + 16))(v874, v443, v872);
          swift_storeEnumTagMultiPayload();
          *&v978 = v444;
          *(&v978 + 1) = v440;
          *&v979 = v441;
          *(&v979 + 1) = v442;
          swift_getOpaqueTypeConformance2();
          v447 = v875;
          sub_252691470();
          (*(v445 + 8))(v443, v446);
          sub_252372288(v938, &qword_27F4DE658, &unk_25269F720);
          sub_25237153C(v447, v876, &qword_27F4E3D40, &qword_2526AA7D8);
          swift_storeEnumTagMultiPayload();
          sub_252638574();
          v448 = v878;
          sub_252691470();
          sub_25237153C(v448, v943, &qword_27F4E3D30, &qword_2526AA7D0);
          swift_storeEnumTagMultiPayload();
          sub_25263806C();
          sub_2526384F0(&qword_27F4E3D28, &qword_27F4E3D30, &qword_2526AA7D0, sub_252638574);
          v449 = v944;
          sub_252691470();
          sub_252372288(v448, &qword_27F4E3D30, &qword_2526AA7D0);
          sub_25237153C(v449, v960, &qword_27F4E3CD0, &qword_2526AA798);
          swift_storeEnumTagMultiPayload();
          sub_252637FB4();
          sub_252638774();
          v450 = v961;
          sub_252691470();
          sub_252372288(v449, &qword_27F4E3CD0, &qword_2526AA798);
          sub_25237153C(v450, v969, &qword_27F4E3CC0, &qword_2526AA790);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v451 = v970;
          sub_252691470();
          sub_252372288(v450, &qword_27F4E3CC0, &qword_2526AA790);
          sub_25237153C(v451, v972, &qword_27F4E3B68, &qword_2526AA6F0);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v451, &qword_27F4E3B68, &qword_2526AA6F0);
          return sub_252372288(v447, &qword_27F4E3D40, &qword_2526AA7D8);
        }
      }

      sub_252372288(v177, &qword_27F4E3F60, &unk_2526AA980);
      goto LABEL_223;
    case 7:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_223;
      }

      v231 = *v161;
      v232 = *(v161 + 8);
      v233 = *(v161 + 16);
      v234 = v977;
      v235 = *v977;
      v993 = 0;
      *&v984 = v235;
      BYTE8(v984) = v952 & 1;
      *&v985 = v231;
      *(&v985 + 1) = v232;
      LOBYTE(v986[0]) = v233;
      *(&v986[0] + 1) = sub_2525312C8;
      *&v986[1] = 0;
      BYTE8(v986[1]) = 0;
      v236 = v234 + *(type metadata accessor for ControlModuleView(0) + 36);
      LOWORD(v990) = *(v236 + 32);
      v237 = *(v236 + 3);
      *&v989[16] = *(v236 + 2);
      *&v989[32] = v237;
      v238 = *v236;
      *v989 = *(v236 + 1);
      v988 = v238;
      if (BYTE1(v990))
      {
        v239 = *(v236 + 3);
        v980[0] = *(v236 + 2);
        v980[1] = v239;
        LOBYTE(v981) = v236[64];
        v240 = *v236;
        v979 = *(v236 + 1);
        v978 = v240;
      }

      else
      {

        sub_252692F00();
        v411 = sub_2526919C0();
        sub_252690570();

        v412 = v963;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
        (*(v965 + 8))(v412, v964);
      }

      if (v978 != 1)
      {
        LOWORD(v981) = *(v236 + 32);
        v413 = *(v236 + 3);
        v980[0] = *(v236 + 2);
        v980[1] = v413;
        v414 = *v236;
        v979 = *(v236 + 1);
        v978 = v414;
        if (BYTE1(v981))
        {
          v415 = *(v236 + 3);
          v996 = *(v236 + 2);
          v997 = v415;
          LOBYTE(v998) = v236[64];
          v416 = *(v236 + 1);
          v994 = *v236;
          v995 = v416;
        }

        else
        {

          sub_252692F00();
          v596 = sub_2526919C0();
          sub_252690570();

          v597 = v963;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
          (*(v965 + 8))(v597, v964);
        }
      }

      v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C28, &qword_2526AA750);
      v599 = sub_2526378E4();
      v600 = sub_252637938();
      v601 = v891;
      sub_252691D70();
      v978 = v984;
      v979 = v985;
      v980[0] = v986[0];
      *(v980 + 9) = *(v986 + 9);
      sub_2526517F0(&v978);
      v602 = v838;
      v603 = v601;
      v604 = v901;
      (*(v838 + 16))(v898, v603, v901);
      swift_storeEnumTagMultiPayload();
      sub_2526376E4();
      *&v994 = &type metadata for MediaPlayerView;
      *(&v994 + 1) = v598;
      *&v995 = v599;
      *(&v995 + 1) = v600;
      swift_getOpaqueTypeConformance2();
      v605 = v899;
      sub_252691470();
      sub_25237153C(v605, v947, &qword_27F4E3BF8, &qword_2526AA738);
      swift_storeEnumTagMultiPayload();
      sub_252637174();
      sub_252637600();
      v606 = v948;
      sub_252691470();
      sub_252372288(v605, &qword_27F4E3BF8, &qword_2526AA738);
      sub_25237153C(v606, v955, &qword_27F4E3B88, &qword_2526AA700);
      swift_storeEnumTagMultiPayload();
      sub_2526370E8();
      sub_2526379F0();
      v607 = v956;
      sub_252691470();
      sub_252372288(v606, &qword_27F4E3B88, &qword_2526AA700);
      sub_25237153C(v607, v969, &qword_27F4E3B78, &qword_2526AA6F8);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v608 = v970;
      sub_252691470();
      sub_252372288(v607, &qword_27F4E3B78, &qword_2526AA6F8);
      sub_25237153C(v608, v972, &qword_27F4E3B68, &qword_2526AA6F0);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v608, &qword_27F4E3B68, &qword_2526AA6F0);
      return (*(v602 + 8))(v891, v604);
    case 8:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_223;
      }

      v301 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0) + 48);
      v950 = v161;
      v302 = (v161 + v301);
      v303 = v302[5];
      v990 = v302[4];
      v991 = v303;
      LOWORD(v992[0]) = *(v302 + 48);
      v304 = v302[1];
      v988 = *v302;
      *v989 = v304;
      v305 = v302[2];
      *&v989[32] = v302[3];
      *&v989[16] = v305;
      v306 = type metadata accessor for ControlModuleView(0);
      v307 = v977;
      v308 = v817;
      sub_252604038(v966, v817);
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      if ((*(*(v309 - 8) + 48))(v308, 1, v309) == 1)
      {
        sub_252385F08(&v988);
        sub_252372288(v308, &qword_27F4E4040, &qword_2526AAA80);
        v310 = v795;
        (*(v792 + 56))(v795, 1, 1, v793);
      }

      else
      {
        v310 = v795;
        sub_2526086C8(v795);
        sub_252372288(v308, &qword_27F4DAE18, &qword_2526A7F90);
        if ((*(v792 + 48))(v310, 1, v793) != 1)
        {
          v966 = v306;
          v609 = v310;
          v610 = v782;
          sub_2523714D4(v609, v782, &qword_27F4E0C20, &qword_2526A9B80);
          v611 = v784;
          sub_25237153C(v610, v784, &qword_27F4E0C20, &qword_2526A9B80);
          v958 = *v307;
          v612 = v783;
          v613 = v611 + *(v783 + 32);
          *v613 = swift_getKeyPath();
          *(v613 + 8) = 0;
          v614 = v611 + v612[9];
          v615 = swift_getKeyPath();
          v993 = 0;
          *v614 = v615;
          *(v614 + 65) = 0;
          v616 = (v611 + v612[10]);
          type metadata accessor for AccessoryControlLegacyViewModel(0);
          sub_252666040(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel, &unk_2526AB130);
          *v616 = sub_252690DF0();
          v616[1] = v617;
          v618 = (v611 + v612[11]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C60, &unk_2526A4000);
          swift_allocObject();
          *&v994 = sub_25262576C(0x406F400000000000, 0);
          sub_2526924D0();
          v619 = *(&v978 + 1);
          *v618 = v978;
          v618[1] = v619;
          v620 = v611 + v612[12];
          v621 = _s9KnobStateOMa(0);
          v956 = *(*(v621 - 8) + 56);
          v622 = v773;
          (v956)(v773, 1, 1, v621);
          sub_25237153C(v622, v771, &qword_27F4E0C70, &unk_2526A41A0);
          sub_2526924D0();
          sub_252372288(v622, &qword_27F4E0C70, &unk_2526A41A0);
          v623 = v611 + v612[5];
          v624 = v991;
          *(v623 + 64) = v990;
          *(v623 + 80) = v624;
          *(v623 + 96) = v992[0];
          v625 = *v989;
          *v623 = v988;
          *(v623 + 16) = v625;
          v626 = *&v989[32];
          *(v623 + 32) = *&v989[16];
          *(v623 + 48) = v626;
          (v956)(v622, 1, 1, v621);
          sub_252372288(v620, &qword_27F4E0C28, &unk_2526A3FD0);
          *(v620 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28, &unk_2526A3FD0) + 28)) = 0;
          sub_2523714D4(v622, v620, &qword_27F4E0C70, &unk_2526A41A0);
          v627 = v611 + v612[13];
          *v627 = 0;
          *(v627 + 8) = 0;
          *(v611 + v612[6]) = v958;
          *(v611 + v612[7]) = v952 & 1;
          v628 = v977 + *(v966 + 36);
          v629 = *(v628 + 3);
          v980[0] = *(v628 + 2);
          v980[1] = v629;
          LOWORD(v981) = *(v628 + 32);
          v630 = *v628;
          v979 = *(v628 + 1);
          v978 = v630;
          if (BYTE1(v981))
          {
            v631 = *(v628 + 3);
            v996 = *(v628 + 2);
            v997 = v631;
            LOBYTE(v998) = v628[64];
            v632 = *(v628 + 1);
            v994 = *v628;
            v995 = v632;
          }

          else
          {

            sub_252692F00();
            v724 = sub_2526919C0();
            sub_252690570();

            v725 = v963;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
            (*(v965 + 8))(v725, v964);
          }

          v428 = v881;
          v429 = v796;
          if (v994 != 1)
          {
            v998 = *(v628 + 32);
            v726 = *(v628 + 3);
            v996 = *(v628 + 2);
            v997 = v726;
            v727 = *(v628 + 1);
            v994 = *v628;
            v995 = v727;
            if ((v998 & 0x100) != 0)
            {
              v728 = *(v628 + 3);
              v986[0] = *(v628 + 2);
              v986[1] = v728;
              v987 = v628[64];
              v729 = *v628;
              v985 = *(v628 + 1);
              v984 = v729;
            }

            else
            {

              sub_252692F00();
              v761 = sub_2526919C0();
              sub_252690570();

              v762 = v963;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v994, &qword_27F4DC120, &qword_25269CED0);
              (*(v965 + 8))(v762, v964);
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CF8, &unk_2526AA7B0);
          sub_252666040(&qword_27F4E2190, type metadata accessor for ThermostatControlView, &unk_2526A4010);
          sub_252638208();
          v763 = v784;
          sub_252691D70();
          sub_252372288(v782, &qword_27F4E0C20, &qword_2526A9B80);
          sub_252665DD8(v763, type metadata accessor for ThermostatControlView);
          v764 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4060, &qword_2526AAB38);
          (*(*(v764 - 8) + 56))(v429, 0, 1, v764);
LABEL_199:
          sub_25237153C(v429, v428, &qword_27F4E3CF0, &qword_2526AA7A8);
          swift_storeEnumTagMultiPayload();
          sub_2526380F8();
          sub_2526382F0();
          v765 = v429;
          v766 = v904;
          sub_252691470();
          sub_25237153C(v766, v943, &qword_27F4E3CE0, &qword_2526AA7A0);
          swift_storeEnumTagMultiPayload();
          sub_25263806C();
          sub_2526384F0(&qword_27F4E3D28, &qword_27F4E3D30, &qword_2526AA7D0, sub_252638574);
          v767 = v944;
          sub_252691470();
          sub_252372288(v766, &qword_27F4E3CE0, &qword_2526AA7A0);
          sub_25237153C(v767, v960, &qword_27F4E3CD0, &qword_2526AA798);
          swift_storeEnumTagMultiPayload();
          sub_252637FB4();
          sub_252638774();
          v768 = v961;
          sub_252691470();
          sub_252372288(v767, &qword_27F4E3CD0, &qword_2526AA798);
          sub_25237153C(v768, v969, &qword_27F4E3CC0, &qword_2526AA790);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v769 = v970;
          sub_252691470();
          sub_252372288(v768, &qword_27F4E3CC0, &qword_2526AA790);
          sub_25237153C(v769, v972, &qword_27F4E3B68, &qword_2526AA6F0);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v769, &qword_27F4E3B68, &qword_2526AA6F0);
          sub_252372288(v765, &qword_27F4E3CF0, &qword_2526AA7A8);
          v675 = &qword_27F4DB258;
          v676 = &unk_252696090;
          return sub_252372288(v950, v675, v676);
        }

        sub_252385F08(&v988);
      }

      v428 = v881;
      v429 = v796;
      sub_252372288(v310, &qword_27F4E3F90, &unk_2526AA9C0);
      v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4060, &qword_2526AAB38);
      (*(*(v430 - 8) + 56))(v429, 1, 1, v430);
      goto LABEL_199;
    case 9:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_223;
      }

      v221 = v161;
      v222 = v902;
      sub_252665E38(v221, v902, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
      v223 = v848;
      v224 = v847;
      sub_252665FB8(v222, v847 + *(v848 + 20), type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
      sub_25268DFB0();
      sub_25268DF80();
      sub_252666040(&qword_27F4DCFA0, MEMORY[0x277D151C0], MEMORY[0x277D15198]);
      *v224 = sub_252690AD0();
      v224[1] = v225;
      v226 = v977 + *(type metadata accessor for ControlModuleView(0) + 36);
      LOWORD(v990) = *(v226 + 32);
      v227 = *(v226 + 3);
      *&v989[16] = *(v226 + 2);
      *&v989[32] = v227;
      v228 = *v226;
      *v989 = *(v226 + 1);
      v988 = v228;
      if (BYTE1(v990))
      {
        v229 = *(v226 + 3);
        v980[0] = *(v226 + 2);
        v980[1] = v229;
        LOBYTE(v981) = v226[64];
        v230 = *v226;
        v979 = *(v226 + 1);
        v978 = v230;
      }

      else
      {

        sub_252692F00();
        v405 = sub_2526919C0();
        sub_252690570();

        v406 = v963;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
        (*(v965 + 8))(v406, v964);
      }

      if (v978 != 1)
      {
        LOWORD(v981) = *(v226 + 32);
        v407 = *(v226 + 3);
        v980[0] = *(v226 + 2);
        v980[1] = v407;
        v408 = *v226;
        v979 = *(v226 + 1);
        v978 = v408;
        if (BYTE1(v981))
        {
          v409 = *(v226 + 3);
          v996 = *(v226 + 2);
          v997 = v409;
          LOBYTE(v998) = v226[64];
          v410 = *(v226 + 1);
          v994 = *v226;
          v995 = v410;
        }

        else
        {

          sub_252692F00();
          v563 = sub_2526919C0();
          sub_252690570();

          v564 = v963;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
          (*(v965 + 8))(v564, v964);
        }
      }

      v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D80, &qword_2526AA7F8);
      v566 = sub_252666040(&qword_27F4E3D88, type metadata accessor for AlarmAndTimerControlView, &unk_25269C6CC);
      v567 = sub_252638918();
      v568 = v903;
      sub_252691D70();
      sub_252665DD8(v224, type metadata accessor for AlarmAndTimerControlView);
      v569 = v852;
      v570 = v568;
      v571 = v853;
      (*(v852 + 16))(v850, v570, v853);
      swift_storeEnumTagMultiPayload();
      *&v978 = v223;
      *(&v978 + 1) = v565;
      *&v979 = v566;
      *(&v979 + 1) = v567;
      swift_getOpaqueTypeConformance2();
      v572 = v851;
      sub_252691470();
      sub_25237153C(v572, v933, &qword_27F4E3D78, &qword_2526AA7F0);
      swift_storeEnumTagMultiPayload();
      sub_252638800();
      sub_252638A00();
      v573 = v935;
      sub_252691470();
      sub_252372288(v572, &qword_27F4E3D78, &qword_2526AA7F0);
      sub_25237153C(v573, v960, &qword_27F4E3D68, &qword_2526AA7E8);
      swift_storeEnumTagMultiPayload();
      sub_252637FB4();
      sub_252638774();
      v574 = v961;
      sub_252691470();
      sub_252372288(v573, &qword_27F4E3D68, &qword_2526AA7E8);
      sub_25237153C(v574, v969, &qword_27F4E3CC0, &qword_2526AA790);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v575 = v970;
      sub_252691470();
      sub_252372288(v574, &qword_27F4E3CC0, &qword_2526AA790);
      sub_25237153C(v575, v972, &qword_27F4E3B68, &qword_2526AA6F0);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v575, &qword_27F4E3B68, &qword_2526AA6F0);
      (*(v569 + 8))(v903, v571);
      v576 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
      v577 = v902;
      return sub_252665DD8(v577, v576);
    case 0xA:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_223;
      }

      v291 = *(v161 + 32);
      v292 = *(v161 + 40);
      v293 = *(v161 + 48);
      v294 = *(v161 + 56);
      v295 = *(v161 + 64);
      sub_2523E2E24(*v161, *(v161 + 8), *(v161 + 16), *(v161 + 24));
      v296 = type metadata accessor for ControlModuleView(0);
      v297 = v977;
      v298 = v818;
      sub_252604038(v966, v818);
      v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      if ((*(*(v299 - 8) + 48))(v298, 1, v299) == 1)
      {

        sub_252372288(v298, &qword_27F4E4040, &qword_2526AAA80);
        v300 = v908;
      }

      else
      {
        v958 = v293;
        LODWORD(v966) = v292;
        sub_252609970(&v988);
        sub_252372288(v298, &qword_27F4DAE18, &qword_2526A7F90);
        v417 = *(&v988 + 1);
        v300 = v908;
        if (*(&v988 + 1))
        {
          v418 = v988;
          v950 = v294;
          v419 = *v989;
          v949 = v295;
          v420 = *&v989[16];
          v956 = *v297;
          LOBYTE(v978) = 0;

          sub_2523E165C(v419, *(&v419 + 1), v420, *(&v420 + 1));
          sub_2526924D0();
          LODWORD(v948) = v988;
          v421 = *(&v988 + 1);
          v422 = swift_getKeyPath();
          v993 = 0;
          *&v988 = v956;
          v955 = v418;
          *(&v988 + 1) = v418;
          v956 = v417;
          *v989 = v417;
          v953 = v419 >> 64;
          v954 = v419;
          *&v989[8] = v419;
          v951 = v420 >> 64;
          v952 = v420;
          *&v989[24] = v420;
          *&v989[40] = v291;
          LOBYTE(v990) = v966;
          *(&v990 + 1) = v958;
          *&v991 = v950;
          *(&v991 + 1) = v949;
          LOBYTE(v992[0]) = v948;
          *(&v992[0] + 1) = v421;
          *&v992[1] = v422;
          BYTE8(v992[1]) = 0;
          v423 = v977 + *(v296 + 36);
          v424 = *(v423 + 3);
          v996 = *(v423 + 2);
          v997 = v424;
          v998 = *(v423 + 32);
          v425 = *(v423 + 1);
          v994 = *v423;
          v995 = v425;
          if ((v998 & 0x100) != 0)
          {
            v426 = *(v423 + 3);
            v980[0] = *(v423 + 2);
            v980[1] = v426;
            LOBYTE(v981) = v423[64];
            v427 = *v423;
            v979 = *(v423 + 1);
            v978 = v427;
          }

          else
          {

            sub_252692F00();
            v712 = sub_2526919C0();
            sub_252690570();

            v713 = v963;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v994, &qword_27F4DC120, &qword_25269CED0);
            (*(v965 + 8))(v713, v964);
          }

          v300 = v908;
          if (v978 != 1)
          {
            LOWORD(v981) = *(v423 + 32);
            v714 = *(v423 + 3);
            v980[0] = *(v423 + 2);
            v980[1] = v714;
            v715 = *v423;
            v979 = *(v423 + 1);
            v978 = v715;
            if (BYTE1(v981))
            {
              v716 = *(v423 + 3);
              v986[0] = *(v423 + 2);
              v986[1] = v716;
              v987 = v423[64];
              v717 = *v423;
              v985 = *(v423 + 1);
              v984 = v717;
            }

            else
            {

              sub_252692F00();
              v745 = sub_2526919C0();
              sub_252690570();

              v746 = v963;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
              (*(v965 + 8))(v746, v964);
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DB8, &qword_2526AA810);
          sub_25254E10C();
          sub_252638B68();
          v710 = v854;
          sub_252691D70();
          sub_25265167C(v955, v956, v954, v953, v952, v951);
          v981 = v990;
          v982 = v991;
          v983[0] = v992[0];
          *(v983 + 9) = *(v992 + 9);
          v978 = v988;
          v979 = *v989;
          v980[0] = *&v989[16];
          v980[1] = *&v989[32];
          sub_2524ABEBC(&v978);
          v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4058, &unk_2526AAB00);
          (*(*(v747 - 8) + 56))(v710, 0, 1, v747);
          v711 = v972;
LABEL_190:
          sub_25237153C(v710, v300, &qword_27F4E3DB0, &qword_2526AA808);
          swift_storeEnumTagMultiPayload();
          sub_252638A8C();
          sub_252638C20();
          v748 = v907;
          sub_252691470();
          sub_25237153C(v748, v933, &qword_27F4E3DA0, &qword_2526AA800);
          swift_storeEnumTagMultiPayload();
          sub_252638800();
          sub_252638A00();
          v749 = v935;
          sub_252691470();
          sub_252372288(v748, &qword_27F4E3DA0, &qword_2526AA800);
          sub_25237153C(v749, v960, &qword_27F4E3D68, &qword_2526AA7E8);
          swift_storeEnumTagMultiPayload();
          sub_252637FB4();
          sub_252638774();
          v750 = v961;
          sub_252691470();
          sub_252372288(v749, &qword_27F4E3D68, &qword_2526AA7E8);
          sub_25237153C(v750, v969, &qword_27F4E3CC0, &qword_2526AA790);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v751 = v970;
          sub_252691470();
          sub_252372288(v750, &qword_27F4E3CC0, &qword_2526AA790);
          sub_25237153C(v751, v711, &qword_27F4E3B68, &qword_2526AA6F0);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v751, &qword_27F4E3B68, &qword_2526AA6F0);
          return sub_252372288(v710, &qword_27F4E3DB0, &qword_2526AA808);
        }
      }

      v709 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4058, &unk_2526AAB00);
      v710 = v854;
      (*(*(v709 - 8) + 56))(v854, 1, 1, v709);
      v711 = v972;
      goto LABEL_190;
    case 0xB:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_223;
      }

      v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0) + 48);
      v950 = v161;
      v198 = (v161 + v197);
      v199 = *v198;
      v201 = *(v198 + 1);
      v200 = *(v198 + 2);
      v202 = *(v198 + 3);
      v203 = *(v198 + 4);
      v204 = type metadata accessor for ControlModuleView(0);
      v205 = v819;
      sub_252604038(v966, v819);
      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      if ((*(*(v206 - 8) + 48))(v205, 1, v206) == 1)
      {

        sub_252372288(v205, &qword_27F4E4040, &qword_2526AAA80);
        v207 = v799;
        (*(v797 + 56))(v799, 1, 1, v798);
      }

      else
      {
        v207 = v799;
        sub_25260A248(v799);
        sub_252372288(v205, &qword_27F4DAE18, &qword_2526A7F90);
        if ((*(v797 + 48))(v207, 1, v798) != 1)
        {
          v549 = v785;
          sub_2523714D4(v207, v785, &qword_27F4DF420, &unk_2526A1120);
          v966 = v201;
          v550 = *v977;
          v551 = v787;
          v552 = v199;
          v553 = v786;
          sub_25237153C(v549, &v786[*(v787 + 20)], &qword_27F4DF420, &unk_2526A1120);
          *v553 = v550;
          v554 = v553 + v551[6];
          *v554 = v552;
          *(v554 + 1) = v966;
          *(v554 + 2) = v200;
          *(v554 + 3) = v202;
          *(v554 + 4) = v203;
          v555 = v553 + v551[7];
          LOBYTE(v978) = 0;
          sub_2526924D0();
          v556 = *(&v988 + 1);
          *v555 = v988;
          *(v555 + 1) = v556;
          v557 = v553 + v551[8];
          *v557 = swift_getKeyPath();
          v557[8] = 0;
          v558 = v977 + *(v204 + 36);
          LOWORD(v990) = *(v558 + 32);
          v559 = *(v558 + 3);
          *&v989[16] = *(v558 + 2);
          *&v989[32] = v559;
          v560 = *v558;
          *v989 = *(v558 + 1);
          v988 = v560;
          if (BYTE1(v990))
          {
            v561 = *(v558 + 3);
            v980[0] = *(v558 + 2);
            v980[1] = v561;
            LOBYTE(v981) = v558[64];
            v562 = *v558;
            v979 = *(v558 + 1);
            v978 = v562;
          }

          else
          {

            sub_252692F00();
            v718 = sub_2526919C0();
            sub_252690570();

            v719 = v963;
            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
            (*(v965 + 8))(v719, v964);
          }

          v401 = v972;
          v402 = v908;
          v404 = v808;
          if (v978 != 1)
          {
            LOWORD(v981) = *(v558 + 32);
            v720 = *(v558 + 3);
            v980[0] = *(v558 + 2);
            v980[1] = v720;
            v721 = *v558;
            v979 = *(v558 + 1);
            v978 = v721;
            if (BYTE1(v981))
            {
              v722 = *(v558 + 3);
              v996 = *(v558 + 2);
              v997 = v722;
              LOBYTE(v998) = v558[64];
              v723 = *(v558 + 1);
              v994 = *v558;
              v995 = v723;
            }

            else
            {

              sub_252692F00();
              v752 = sub_2526919C0();
              sub_252690570();

              v753 = v963;
              sub_2526910E0();
              swift_getAtKeyPath();
              sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
              (*(v965 + 8))(v753, v964);
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DD8, &qword_2526AA820);
          sub_252666040(&qword_27F4E1FC0, type metadata accessor for StatusDetailsButtonControlView, &unk_2526A1158);
          sub_252638D30();
          v754 = v786;
          sub_252691D70();
          sub_252665DD8(v754, type metadata accessor for StatusDetailsButtonControlView);
          sub_252372288(v785, &qword_27F4DF420, &unk_2526A1120);
          v755 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4050, &unk_2526AAAC0);
          (*(*(v755 - 8) + 56))(v404, 0, 1, v755);
LABEL_196:
          sub_25237153C(v404, v402, &qword_27F4E3DD0, &qword_2526AA818);
          swift_storeEnumTagMultiPayload();
          sub_252638A8C();
          sub_252638C20();
          v756 = v404;
          v757 = v907;
          sub_252691470();
          sub_25237153C(v757, v933, &qword_27F4E3DA0, &qword_2526AA800);
          swift_storeEnumTagMultiPayload();
          sub_252638800();
          sub_252638A00();
          v758 = v935;
          sub_252691470();
          sub_252372288(v757, &qword_27F4E3DA0, &qword_2526AA800);
          sub_25237153C(v758, v960, &qword_27F4E3D68, &qword_2526AA7E8);
          swift_storeEnumTagMultiPayload();
          sub_252637FB4();
          sub_252638774();
          v759 = v961;
          sub_252691470();
          sub_252372288(v758, &qword_27F4E3D68, &qword_2526AA7E8);
          sub_25237153C(v759, v969, &qword_27F4E3CC0, &qword_2526AA790);
          swift_storeEnumTagMultiPayload();
          sub_25263705C();
          sub_252637F28();
          v760 = v970;
          sub_252691470();
          sub_252372288(v759, &qword_27F4E3CC0, &qword_2526AA790);
          sub_25237153C(v760, v401, &qword_27F4E3B68, &qword_2526AA6F0);
          swift_storeEnumTagMultiPayload();
          sub_252636FD0();
          sub_252638E18();
          sub_252691470();
          sub_252372288(v760, &qword_27F4E3B68, &qword_2526AA6F0);
          sub_252372288(v756, &qword_27F4E3DD0, &qword_2526AA818);
          v675 = &qword_27F4DB440;
          v676 = &qword_2526A1150;
          return sub_252372288(v950, v675, v676);
        }
      }

      v401 = v972;
      v402 = v908;
      sub_252372288(v207, &qword_27F4E3F20, &unk_2526AA938);
      v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4050, &unk_2526AAAC0);
      v404 = v808;
      (*(*(v403 - 8) + 56))(v808, 1, 1, v403);
      goto LABEL_196;
    case 0xC:
      goto LABEL_223;
    case 0xD:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_223;
      }

      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
      v209 = v892;
      sub_252665E38(v161 + *(v208 + 48), v892, type metadata accessor for AccessoryControl.PickerViewConfig);
      v210 = type metadata accessor for ControlModuleView(0);
      v211 = v966;
      sub_252604038(v966, v142);
      v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      if ((*(*(v212 - 8) + 48))(v142, 1, v212) == 1)
      {
        sub_252372288(v142, &qword_27F4E4040, &qword_2526AAA80);
        goto LABEL_223;
      }

      sub_252606404(&v988);
      sub_252372288(v142, &qword_27F4DAE18, &qword_2526A7F90);
      v213 = *(&v988 + 1);
      if (!*(&v988 + 1))
      {
        goto LABEL_223;
      }

      v214 = v988;
      v215 = *v989;
      v216 = v989[8];
      v217 = v828;
      sub_252665FB8(v209, v828, type metadata accessor for AccessoryControl.PickerViewConfig);
      LOBYTE(v988) = *(v211 + v951);

      Device.Control.viewType(with:)(&v988, &v984);
      v218 = 0;
      if (v984 > 0xFu)
      {
        v219 = v835;
      }

      else
      {
        v219 = v835;
        if (((1 << v984) & 0x2011) != 0)
        {
          v220 = 0x4044000000000000;
        }

        else
        {
          if (((1 << v984) & 0x8C00) == 0)
          {
            goto LABEL_117;
          }

          v220 = 0x4059000000000000;
        }

        v218 = v220;
      }

LABEL_117:
      v961 = v214;
      *v219 = v214;
      *(v219 + 8) = v213;
      v966 = v213;
      v960 = v215;
      *(v219 + 16) = v215;
      *(v219 + 24) = v216 & 1;
      v459 = v930;
      sub_252665E38(v217, v219 + *(v930 + 20), type metadata accessor for AccessoryControl.PickerViewConfig);
      *(v219 + v459[6]) = v218;
      v460 = v219 + v459[7];
      *v460 = swift_getKeyPath();
      *(v460 + 8) = 0;
      v461 = v219 + v459[8];
      *&v978 = 0;
      BYTE8(v978) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8, &unk_2526994A0);
      sub_2526924D0();
      v462 = BYTE8(v988);
      v463 = *v989;
      *v461 = v988;
      *(v461 + 8) = v462;
      *(v461 + 16) = v463;
      v464 = v219 + v459[9];
      *&v978 = 0;
      BYTE8(v978) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0F00, &qword_2526A4680);
      sub_2526924D0();
      v465 = BYTE8(v988);
      v466 = *v989;
      *v464 = v988;
      *(v464 + 8) = v465;
      *(v464 + 16) = v466;
      v467 = v977 + *(v210 + 36);
      v468 = *(v467 + 3);
      *&v989[16] = *(v467 + 2);
      *&v989[32] = v468;
      LOWORD(v990) = *(v467 + 32);
      v469 = *v467;
      *v989 = *(v467 + 1);
      v988 = v469;
      if (BYTE1(v990))
      {
        v470 = *(v467 + 3);
        v980[0] = *(v467 + 2);
        v980[1] = v470;
        LOBYTE(v981) = v467[64];
        v471 = *v467;
        v979 = *(v467 + 1);
        v978 = v471;
      }

      else
      {

        sub_252692F00();
        v472 = sub_2526919C0();
        sub_252690570();

        v473 = v963;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
        (*(v965 + 8))(v473, v964);
      }

      LODWORD(v962) = v216;
      if (v978 != 1)
      {
        LOWORD(v981) = *(v467 + 32);
        v474 = *(v467 + 3);
        v980[0] = *(v467 + 2);
        v980[1] = v474;
        v475 = *v467;
        v979 = *(v467 + 1);
        v978 = v475;
        if (BYTE1(v981))
        {
          v476 = *(v467 + 3);
          v996 = *(v467 + 2);
          v997 = v476;
          LOBYTE(v998) = v467[64];
          v477 = *(v467 + 1);
          v994 = *v467;
          v995 = v477;
        }

        else
        {

          sub_252692F00();
          v578 = sub_2526919C0();
          sub_252690570();

          v579 = v963;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
          (*(v965 + 8))(v579, v964);
        }
      }

      v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C10, &qword_2526AA748);
      v581 = sub_252666040(&qword_27F4E3C18, type metadata accessor for VerticalPickerControlView, &unk_2526A5E58);
      v582 = sub_2526377FC();
      v583 = v837;
      v584 = v930;
      sub_252691D70();
      sub_252665DD8(v219, type metadata accessor for VerticalPickerControlView);
      v585 = v860;
      v586 = v861;
      (*(v860 + 16))(v862, v583, v861);
      swift_storeEnumTagMultiPayload();
      *&v978 = v584;
      *(&v978 + 1) = v580;
      *&v979 = v581;
      *(&v979 + 1) = v582;
      swift_getOpaqueTypeConformance2();
      v587 = v839;
      sub_252691470();
      v588 = sub_252651638(v961, v966);
      (*(v585 + 8))(v583, v586, v588);
      sub_25237153C(v587, v898, &qword_27F4E3C08, &qword_2526AA740);
      swift_storeEnumTagMultiPayload();
      sub_2526376E4();
      v589 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C28, &qword_2526AA750);
      v590 = sub_2526378E4();
      v591 = sub_252637938();
      *&v978 = &type metadata for MediaPlayerView;
      *(&v978 + 1) = v589;
      *&v979 = v590;
      *(&v979 + 1) = v591;
      swift_getOpaqueTypeConformance2();
      v592 = v899;
      sub_252691470();
      sub_25237153C(v592, v947, &qword_27F4E3BF8, &qword_2526AA738);
      swift_storeEnumTagMultiPayload();
      sub_252637174();
      sub_252637600();
      v593 = v948;
      sub_252691470();
      sub_252372288(v592, &qword_27F4E3BF8, &qword_2526AA738);
      sub_25237153C(v593, v955, &qword_27F4E3B88, &qword_2526AA700);
      swift_storeEnumTagMultiPayload();
      sub_2526370E8();
      sub_2526379F0();
      v594 = v956;
      sub_252691470();
      sub_252372288(v593, &qword_27F4E3B88, &qword_2526AA700);
      sub_25237153C(v594, v969, &qword_27F4E3B78, &qword_2526AA6F8);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v595 = v970;
      sub_252691470();
      sub_252372288(v594, &qword_27F4E3B78, &qword_2526AA6F8);
      sub_25237153C(v595, v972, &qword_27F4E3B68, &qword_2526AA6F0);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v595, &qword_27F4E3B68, &qword_2526AA6F0);
      sub_252372288(v587, &qword_27F4E3C08, &qword_2526AA740);
      v576 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v577 = v892;
      return sub_252665DD8(v577, v576);
    case 0xE:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_223;
      }

      v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
      v242 = v890;
      sub_252665E38(v161 + *(v241 + 48), v890, type metadata accessor for AccessoryControl.PickerViewConfig);
      v243 = type metadata accessor for ControlModuleView(0);
      v244 = v977;
      v245 = v816;
      sub_252604038(v966, v816);
      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      v247 = (*(*(v246 - 8) + 48))(v245, 1, v246);
      v248 = v840;
      if (v247 == 1)
      {
        sub_252372288(v245, &qword_27F4E4040, &qword_2526AAA80);
        goto LABEL_223;
      }

      sub_252606404(&v988);
      sub_252372288(v245, &qword_27F4DAE18, &qword_2526A7F90);
      v249 = *(&v988 + 1);
      if (!*(&v988 + 1))
      {
        goto LABEL_223;
      }

      v250 = v988;
      v251 = *v989;
      v252 = v989[8];
      sub_252665FB8(v242, v248, type metadata accessor for AccessoryControl.PickerViewConfig);
      v253 = swift_getKeyPath();
      LOBYTE(v984) = 0;
      v254 = v900;
      v255 = v248 + *(v900 + 20);
      *v255 = v250;
      *(v255 + 8) = v249;
      *(v255 + 16) = v251;
      *(v255 + 24) = v252 & 1;
      v256 = v248 + *(v254 + 24);
      *v256 = v253;
      *(v256 + 65) = 0;
      v257 = v244 + *(v243 + 36);
      v258 = *(v257 + 3);
      *&v989[16] = *(v257 + 2);
      *&v989[32] = v258;
      LOWORD(v990) = *(v257 + 32);
      v259 = *v257;
      *v989 = *(v257 + 1);
      v988 = v259;
      LODWORD(v966) = v252;
      v958 = v250;
      v956 = v251;
      if (BYTE1(v990))
      {
        v260 = *(v257 + 3);
        v980[0] = *(v257 + 2);
        v980[1] = v260;
        LOBYTE(v981) = v257[64];
        v261 = *v257;
        v979 = *(v257 + 1);
        v978 = v261;
      }

      else
      {
        sub_2526515F8(v250, v249);
        sub_25237153C(&v988, &v978, &qword_27F4DC120, &qword_25269CED0);
        sub_252692F00();
        v431 = sub_2526919C0();
        sub_252690570();

        v432 = v963;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
        (*(v965 + 8))(v432, v964);
      }

      if (v978 == 1)
      {
        v433 = v249;
      }

      else
      {
        LOWORD(v981) = *(v257 + 32);
        v434 = *(v257 + 3);
        v980[0] = *(v257 + 2);
        v980[1] = v434;
        v435 = *v257;
        v979 = *(v257 + 1);
        v978 = v435;
        if (BYTE1(v981))
        {
          v436 = *(v257 + 3);
          v996 = *(v257 + 2);
          v997 = v436;
          LOBYTE(v998) = v257[64];
          v437 = *(v257 + 1);
          v994 = *v257;
          v995 = v437;
        }

        else
        {

          sub_252692F00();
          v633 = sub_2526919C0();
          sub_252690570();

          v634 = v963;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
          (*(v965 + 8))(v634, v964);
        }

        v433 = v249;
      }

      v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3D18, &qword_2526AA7C8);
      v636 = sub_252666040(&qword_27F4E1FF8, type metadata accessor for WheelPickerControlView, &unk_2526A6140);
      v637 = sub_252638408();
      v638 = v841;
      v639 = v900;
      sub_252691D70();
      sub_252665DD8(v248, type metadata accessor for WheelPickerControlView);
      v640 = v842;
      v641 = v843;
      (*(v842 + 16))(v845, v638, v843);
      swift_storeEnumTagMultiPayload();
      *&v978 = v639;
      *(&v978 + 1) = v635;
      *&v979 = v636;
      *(&v979 + 1) = v637;
      swift_getOpaqueTypeConformance2();
      v642 = v846;
      sub_252691470();
      v643 = sub_252651638(v958, v433);
      (*(v640 + 8))(v638, v641, v643);
      sub_25237153C(v642, v881, &qword_27F4E3D10, &qword_2526AA7C0);
      swift_storeEnumTagMultiPayload();
      sub_2526380F8();
      sub_2526382F0();
      v644 = v904;
      sub_252691470();
      sub_25237153C(v644, v943, &qword_27F4E3CE0, &qword_2526AA7A0);
      swift_storeEnumTagMultiPayload();
      sub_25263806C();
      sub_2526384F0(&qword_27F4E3D28, &qword_27F4E3D30, &qword_2526AA7D0, sub_252638574);
      v645 = v944;
      sub_252691470();
      sub_252372288(v644, &qword_27F4E3CE0, &qword_2526AA7A0);
      sub_25237153C(v645, v960, &qword_27F4E3CD0, &qword_2526AA798);
      swift_storeEnumTagMultiPayload();
      sub_252637FB4();
      sub_252638774();
      v646 = v961;
      sub_252691470();
      sub_252372288(v645, &qword_27F4E3CD0, &qword_2526AA798);
      sub_25237153C(v646, v969, &qword_27F4E3CC0, &qword_2526AA790);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v647 = v970;
      sub_252691470();
      sub_252372288(v646, &qword_27F4E3CC0, &qword_2526AA790);
      sub_25237153C(v647, v972, &qword_27F4E3B68, &qword_2526AA6F0);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v647, &qword_27F4E3B68, &qword_2526AA6F0);
      sub_252372288(v642, &qword_27F4E3D10, &qword_2526AA7C0);
      v576 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v577 = v890;
      return sub_252665DD8(v577, v576);
    case 0xF:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_223;
      }

      v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
      sub_252665E38(v161 + *(v332 + 48), v924, type metadata accessor for AccessoryControl.PickerViewConfig);
      v333 = type metadata accessor for ControlModuleView(0);
      v334 = v977;
      v335 = v788;
      sub_252604038(v966, v788);
      v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      v337 = (*(*(v336 - 8) + 48))(v335, 1, v336);
      v338 = v800;
      if (v337 == 1)
      {
        sub_252372288(v335, &qword_27F4E4040, &qword_2526AAA80);
        goto LABEL_223;
      }

      sub_252606404(&v988);
      sub_252372288(v335, &qword_27F4DAE18, &qword_2526A7F90);
      v339 = *(&v988 + 1);
      if (!*(&v988 + 1))
      {
        goto LABEL_223;
      }

      v340 = v988;
      v341 = *v989;
      v342 = v989[8];
      sub_252665FB8(v924, v338, type metadata accessor for AccessoryControl.PickerViewConfig);
      v343 = swift_getKeyPath();
      LOBYTE(v984) = 0;
      v344 = v864;
      v345 = v338 + *(v864 + 20);
      *v345 = v340;
      *(v345 + 8) = v339;
      *(v345 + 16) = v341;
      *(v345 + 24) = v342 & 1;
      v346 = v338 + *(v344 + 24);
      *v346 = v343;
      *(v346 + 65) = 0;
      v347 = v334 + *(v333 + 36);
      v348 = *(v347 + 3);
      *&v989[16] = *(v347 + 2);
      *&v989[32] = v348;
      LOWORD(v990) = *(v347 + 32);
      v349 = *v347;
      *v989 = *(v347 + 1);
      v988 = v349;
      v969 = v340;
      v968 = v341;
      if (BYTE1(v990))
      {
        v350 = *(v347 + 3);
        v980[0] = *(v347 + 2);
        v980[1] = v350;
        LOBYTE(v981) = v347[64];
        v351 = *v347;
        v979 = *(v347 + 1);
        v978 = v351;
      }

      else
      {
        sub_2526515F8(v340, v339);
        sub_25237153C(&v988, &v978, &qword_27F4DC120, &qword_25269CED0);
        sub_252692F00();
        v453 = sub_2526919C0();
        sub_252690570();

        v454 = v963;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
        (*(v965 + 8))(v454, v964);
      }

      v971 = v339;
      LODWORD(v970) = v342;
      if (v978 != 1)
      {
        LOWORD(v981) = *(v347 + 32);
        v455 = *(v347 + 3);
        v980[0] = *(v347 + 2);
        v980[1] = v455;
        v456 = *v347;
        v979 = *(v347 + 1);
        v978 = v456;
        if (BYTE1(v981))
        {
          v457 = *(v347 + 3);
          v996 = *(v347 + 2);
          v997 = v457;
          LOBYTE(v998) = v347[64];
          v458 = *(v347 + 1);
          v994 = *v347;
          v995 = v458;
        }

        else
        {

          sub_252692F00();
          v677 = sub_2526919C0();
          sub_252690570();

          v678 = v963;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
          (*(v965 + 8))(v678, v964);
        }
      }

      v679 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3E18, &qword_2526AA840);
      v680 = sub_252666040(&qword_27F4E2168, type metadata accessor for MenuPickerControlView, &unk_2526A5400);
      v681 = sub_252639048();
      v682 = v801;
      v683 = v864;
      sub_252691D70();
      sub_252665DD8(v338, type metadata accessor for MenuPickerControlView);
      v684 = v802;
      v685 = v804;
      (*(v802 + 16))(v806, v682, v804);
      swift_storeEnumTagMultiPayload();
      *&v978 = v683;
      *(&v978 + 1) = v679;
      *&v979 = v680;
      *(&v979 + 1) = v681;
      swift_getOpaqueTypeConformance2();
      v686 = v807;
      sub_252691470();
      v687 = sub_252651638(v969, v971);
      (*(v684 + 8))(v682, v685, v687);
      sub_25237153C(v686, v809, &qword_27F4E3E10, &qword_2526AA838);
      swift_storeEnumTagMultiPayload();
      sub_252638F30();
      v688 = v811;
      sub_252691470();
      sub_25237153C(v688, v814, &qword_27F4E3E00, &qword_2526AA830);
      swift_storeEnumTagMultiPayload();
      sub_252638EA4();
      v689 = v813;
      sub_252691470();
      sub_252372288(v688, &qword_27F4E3E00, &qword_2526AA830);
      sub_25237153C(v689, v972, &qword_27F4E3DF0, &qword_2526AA828);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v689, &qword_27F4E3DF0, &qword_2526AA828);
      sub_252372288(v686, &qword_27F4E3E10, &qword_2526AA838);
      v576 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v577 = v924;
      return sub_252665DD8(v577, v576);
    default:
      type metadata accessor for Device.Control.Kind(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_223;
      }

      sub_252393F68(*v161, *(v161 + 8), *(v161 + 16), *(v161 + 24), *(v161 + 32));
      v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
      v263 = v886;
      sub_252665E38(v161 + *(v262 + 48), v886, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v264 = type metadata accessor for ControlModuleView(0);
      v265 = v977;
      v266 = v966;
      sub_252604038(v966, v148);
      v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
      if ((*(*(v267 - 8) + 48))(v148, 1, v267) == 1)
      {
        sub_252372288(v148, &qword_27F4E4040, &qword_2526AAA80);
        goto LABEL_223;
      }

      v962 = sub_25260463C();
      v269 = v268;
      v271 = v270;
      sub_252372288(v148, &qword_27F4DAE18, &qword_2526A7F90);
      if (!v269)
      {
        goto LABEL_223;
      }

      v272 = *v265;
      LOBYTE(v988) = *(v266 + v951);
      Device.Control.viewType(with:)(&v988, &v984);
      v273 = 0;
      if (v984 > 0xFu)
      {
        v274 = v952;
      }

      else
      {
        v274 = v952;
        if (((1 << v984) & 0x2011) != 0)
        {
          v275 = 0x4044000000000000;
        }

        else
        {
          if (((1 << v984) & 0x8C00) == 0)
          {
            goto LABEL_125;
          }

          v275 = 0x4059000000000000;
        }

        v273 = v275;
      }

LABEL_125:
      v478 = v885;
      v479 = v884;
      sub_252665FB8(v263, &v884[*(v885 + 36)], type metadata accessor for AccessoryControl.BinaryViewConfig);
      *v479 = swift_getKeyPath();
      v479[8] = 0;
      v480 = v962;
      *(v479 + 2) = v272;
      *(v479 + 3) = v480;
      *(v479 + 4) = v269;
      v479[40] = v271;
      *(v479 + 6) = v273;
      v479[56] = v274 & 1;
      v481 = &v479[*(v478 + 40)];
      *&v978 = 0;
      BYTE8(v978) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8, &unk_2526994A0);
      sub_2526924D0();
      v482 = BYTE8(v988);
      v483 = *v989;
      *v481 = v988;
      v481[8] = v482;
      *(v481 + 2) = v483;
      v484 = v265 + *(v264 + 36);
      v485 = *(v484 + 3);
      *&v989[16] = *(v484 + 2);
      *&v989[32] = v485;
      LOWORD(v990) = *(v484 + 32);
      v486 = *v484;
      *v989 = *(v484 + 1);
      v988 = v486;
      if (BYTE1(v990))
      {
        v487 = *(v484 + 3);
        v980[0] = *(v484 + 2);
        v980[1] = v487;
        LOBYTE(v981) = v484[64];
        v488 = *v484;
        v979 = *(v484 + 1);
        v978 = v488;
      }

      else
      {

        sub_252692F00();
        v489 = sub_2526919C0();
        sub_252690570();

        v490 = v963;
        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v988, &qword_27F4DC120, &qword_25269CED0);
        (*(v965 + 8))(v490, v964);
      }

      v492 = v789;
      v491 = v790;
      if (v978 != 1)
      {
        LOWORD(v981) = *(v484 + 32);
        v493 = *(v484 + 3);
        v980[0] = *(v484 + 2);
        v980[1] = v493;
        v494 = *v484;
        v979 = *(v484 + 1);
        v978 = v494;
        if (BYTE1(v981))
        {
          v495 = *(v484 + 3);
          v996 = *(v484 + 2);
          v997 = v495;
          LOBYTE(v998) = v484[64];
          v496 = *(v484 + 1);
          v994 = *v484;
          v995 = v496;
        }

        else
        {

          sub_252692F00();
          v648 = sub_2526919C0();
          sub_252690570();

          v649 = v963;
          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v978, &qword_27F4DC120, &qword_25269CED0);
          (*(v965 + 8))(v649, v964);
        }
      }

      v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3BB0, &unk_2526AA718);
      v651 = sub_252666040(&qword_27F4E3BB8, type metadata accessor for SwitchControlView, &unk_2526A5B68);
      v652 = sub_252637318();
      v653 = v823;
      v654 = v885;
      v655 = v884;
      sub_252691D70();
      sub_252665DD8(v655, type metadata accessor for SwitchControlView);
      v656 = v824;
      (*(v824 + 16))(v491, v653, v492);
      swift_storeEnumTagMultiPayload();
      *&v978 = v654;
      *(&v978 + 1) = v650;
      *&v979 = v651;
      *(&v979 + 1) = v652;
      swift_getOpaqueTypeConformance2();
      v657 = v827;
      sub_252691470();

      (*(v656 + 8))(v653, v492);
      sub_25237153C(v657, v894, &qword_27F4E3BA8, &qword_2526AA710);
      swift_storeEnumTagMultiPayload();
      sub_252637200();
      sub_252637400();
      v658 = v895;
      sub_252691470();
      sub_25237153C(v658, v947, &qword_27F4E3B98, &qword_2526AA708);
      swift_storeEnumTagMultiPayload();
      sub_252637174();
      sub_252637600();
      v659 = v948;
      sub_252691470();
      sub_252372288(v658, &qword_27F4E3B98, &qword_2526AA708);
      sub_25237153C(v659, v955, &qword_27F4E3B88, &qword_2526AA700);
      swift_storeEnumTagMultiPayload();
      sub_2526370E8();
      sub_2526379F0();
      v660 = v956;
      sub_252691470();
      sub_252372288(v659, &qword_27F4E3B88, &qword_2526AA700);
      sub_25237153C(v660, v969, &qword_27F4E3B78, &qword_2526AA6F8);
      swift_storeEnumTagMultiPayload();
      sub_25263705C();
      sub_252637F28();
      v661 = v970;
      sub_252691470();
      sub_252372288(v660, &qword_27F4E3B78, &qword_2526AA6F8);
      sub_25237153C(v661, v972, &qword_27F4E3B68, &qword_2526AA6F0);
      swift_storeEnumTagMultiPayload();
      sub_252636FD0();
      sub_252638E18();
      sub_252691470();
      sub_252372288(v661, &qword_27F4E3B68, &qword_2526AA6F0);
      sub_252372288(v657, &qword_27F4E3BA8, &qword_2526AA710);
      v576 = type metadata accessor for AccessoryControl.BinaryViewConfig;
      v577 = v886;
      return sub_252665DD8(v577, v576);
  }
}

uint64_t sub_252635B24(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE90, &qword_2526A9310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_252694E90;
  v3 = sub_252636A34();
  v29 = 0xD000000000000010;
  v30 = 0x80000002526B1EE0;
  MEMORY[0x2530A4800](v3);

  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x80000002526B1EE0;
  v4 = (a1 + *(type metadata accessor for Device.Control(0) + 32));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);

    if (v7 >= v8 >> 1)
    {
      v2 = sub_25236880C((v8 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 16) = v7 + 1;
    v9 = v2 + 16 * v7;
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;
  }

  Device.Control.Kind.primitive.getter(&v29);
  if (v29 > 4u)
  {
    if (v29 > 6u)
    {
      if (v29 == 7)
      {
        v12 = 0x72656B636970;
      }

      else
      {
        if (v29 != 8)
        {
          v10 = 0xE700000000000000;
          v11 = 0x79616C7265766FLL;
          goto LABEL_25;
        }

        v12 = 0x737574617473;
      }

      v11 = v12 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
      v10 = 0xEC0000006E6F7474;
      goto LABEL_25;
    }

    if (v29 == 5)
    {
      v10 = 0xEA00000000007461;
      v11 = 0x74736F6D72656874;
    }

    else
    {
      v10 = 0xEF7372656D695464;
      v11 = 0x6E41736D72616C61;
    }
  }

  else if (v29 <= 1u)
  {
    if (v29)
    {
      v10 = 0xEB000000006C6174;
      v11 = 0x6E656D6572636E69;
    }

    else
    {
      v10 = 0xE600000000000000;
      v11 = 0x7972616E6962;
    }
  }

  else if (v29 == 2)
  {
    v10 = 0xE600000000000000;
    v11 = 0x72656B636970;
  }

  else if (v29 == 3)
  {
    v10 = 0xE500000000000000;
    v11 = 0x726F6C6F63;
  }

  else
  {
    v10 = 0xED00006B63616279;
    v11 = 0x616C50616964656DLL;
  }

LABEL_25:
  v14 = *(v2 + 16);
  v13 = *(v2 + 24);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_25236880C((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 16) = v14 + 1;
  v15 = v2 + 16 * v14;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;
  LOBYTE(v29) = *(a1 + *(type metadata accessor for DisplayControl(0) + 20));
  Device.Control.viewType(with:)(&v29, &v28);
  v16 = ControlViewType.description.getter();
  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (v19 >= v18 >> 1)
  {
    v25 = v16;
    v26 = v17;
    v27 = sub_25236880C((v18 > 1), v19 + 1, 1, v2);
    v17 = v26;
    v2 = v27;
    v16 = v25;
  }

  *(v2 + 16) = v19 + 1;
  v20 = v2 + 16 * v19;
  *(v20 + 32) = v16;
  *(v20 + 40) = v17;
  v29 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB570, &unk_2526965A0);
  sub_252400FC8(&qword_27F4DB578, &qword_27F4DB570, &unk_2526965A0, MEMORY[0x277D83958]);
  v21 = sub_252692B40();
  v23 = v22;

  v29 = v21;
  v30 = v23;
  return sub_252692D10();
}

uint64_t sub_252635F34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v11 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00, &unk_25269F1C0) + 28);
  v13 = *MEMORY[0x277CDF3C0];
  v14 = sub_252690850();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  return sub_252665FB8(a1, a5, a4);
}

uint64_t sub_252636014@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v12 = *a1;
  v13 = v3;
  v14[0] = a1[2];
  *(v14 + 9) = *(a1 + 41);
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3C28, &qword_2526AA750) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00, &unk_25269F1C0) + 28);
  v7 = *MEMORY[0x277CDF3C0];
  v8 = sub_252690850();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  v9 = v13;
  *a2 = v12;
  a2[1] = v9;
  a2[2] = v14[0];
  *(a2 + 41) = *(v14 + 9);
  return sub_252651844(&v12, &v11);
}

uint64_t sub_252636118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3CF8, &unk_2526AA7B0) + 36);
  v5 = *MEMORY[0x277CDF3C0];
  v6 = sub_252690850();
  v7 = *(v6 - 8);
  (*(v7 + 104))(a2 + v4, v5, v6);
  (*(v7 + 56))(a2 + v4, 0, 1, v6);
  return sub_252665FB8(a1, a2, type metadata accessor for ThermostatControlView);
}

uint64_t sub_252636254@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v20 = a1[4];
  v21 = v3;
  v22[0] = a1[6];
  *(v22 + 9) = *(a1 + 105);
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v5 = a1[3];
  v18 = a1[2];
  v19 = v5;
  KeyPath = swift_getKeyPath();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3DB8, &qword_2526AA810) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00, &unk_25269F1C0) + 28);
  v9 = *MEMORY[0x277CDF3C0];
  v10 = sub_252690850();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = KeyPath;
  v11 = v21;
  a2[4] = v20;
  a2[5] = v11;
  a2[6] = v22[0];
  *(a2 + 105) = *(v22 + 9);
  v12 = v17;
  *a2 = v16;
  a2[1] = v12;
  v13 = v19;
  a2[2] = v18;
  a2[3] = v13;
  return sub_2524ABD4C(&v16, &v15);
}

uint64_t sub_252636488(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252636504()
{
  result = qword_27F4E39F0;
  if (!qword_27F4E39F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E39F8, &qword_2526AA630);
    sub_252636590();
    sub_2526367B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E39F0);
  }

  return result;
}

unint64_t sub_252636590()
{
  result = qword_27F4E3A00;
  if (!qword_27F4E3A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3A08, &qword_2526AA638);
    sub_252636648();
    sub_252400FC8(&qword_27F4E3A50, &qword_27F4E3A58, &qword_2526AA660, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A00);
  }

  return result;
}

unint64_t sub_252636648()
{
  result = qword_27F4E3A10;
  if (!qword_27F4E3A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3A18, &qword_2526AA640);
    sub_252636700();
    sub_252400FC8(&qword_27F4E3A40, &qword_27F4E3A48, &qword_2526AA658, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A10);
  }

  return result;
}

unint64_t sub_252636700()
{
  result = qword_27F4E3A20;
  if (!qword_27F4E3A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3A28, &qword_2526AA648);
    sub_252400FC8(&qword_27F4E3A30, &qword_27F4E3A38, &qword_2526AA650, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A20);
  }

  return result;
}

unint64_t sub_2526367B8()
{
  result = qword_27F4E3A60;
  if (!qword_27F4E3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A60);
  }

  return result;
}

unint64_t sub_25263680C()
{
  result = qword_27F4E3A70;
  if (!qword_27F4E3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E39B8, &qword_2526AA600);
    sub_252400FC8(&qword_27F4E3A68, &qword_27F4E39B0, &qword_2526AA5F8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A70);
  }

  return result;
}

unint64_t sub_2526368C4()
{
  result = qword_27F4E3A80;
  if (!qword_27F4E3A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E39C8, &unk_2526AA610);
    sub_252400FC8(&qword_27F4E3A78, &qword_27F4E39C0, &qword_2526AA608, MEMORY[0x277CDE590]);
    sub_25263680C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A80);
  }

  return result;
}

unint64_t sub_252636984()
{
  result = qword_27F4E3A90;
  if (!qword_27F4E3A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3A88, &qword_2526AA668);
    sub_252400FC8(&qword_27F4E3A98, &qword_27F4E3AA0, &qword_2526AA670, MEMORY[0x277CDF0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3A90);
  }

  return result;
}

uint64_t sub_252636A34()
{
  v0 = type metadata accessor for Device.ControlModule(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ControlModuleView(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8, &qword_2526A8040);
  MEMORY[0x2530A4210](v3);
  v4 = v2[4];
  if (v4)
  {
    v5 = v2[3];

    sub_252665DD8(v2, type metadata accessor for Device.ControlModule);
  }

  else
  {
    v5 = *v2;
    v4 = v2[1];

    sub_252665DD8(v2, type metadata accessor for Device.ControlModule);
    if (!v4)
    {
      return 0;
    }
  }

  v7[0] = 0x2D656C75646F4D2ELL;
  v7[1] = 0xE800000000000000;
  MEMORY[0x2530A4800](v5, v4);

  return v7[0];
}

unint64_t sub_252636B8C()
{
  result = qword_27F4E3AB8;
  if (!qword_27F4E3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3AB8);
  }

  return result;
}

void sub_252636BEC(char *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(type metadata accessor for ControlRowSolver(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for ControlModuleView(0) - 8);
  v11 = *(v3 + v8);
  v12 = *(v3 + v8 + 8);
  v13 = *(v3 + v9);
  v14 = v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80));

  sub_25262918C(a1, v3 + v7, v11, v12, v14, a2, v13);
}

unint64_t sub_252636CF0()
{
  result = qword_27F4E3B20;
  if (!qword_27F4E3B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3AE0, &qword_2526AA698);
    sub_252636DA8();
    sub_252400FC8(&qword_27F4E3E58, &qword_27F4E3E60, &qword_2526AA860, MEMORY[0x277CE0598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B20);
  }

  return result;
}

unint64_t sub_252636DA8()
{
  result = qword_27F4E3B28;
  if (!qword_27F4E3B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3AE8, &qword_2526AA6A0);
    sub_252636E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B28);
  }

  return result;
}

unint64_t sub_252636E2C()
{
  result = qword_27F4E3B30;
  if (!qword_27F4E3B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B38, &qword_2526AA6D8);
    sub_252636EB8();
    sub_2526391BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B30);
  }

  return result;
}

unint64_t sub_252636EB8()
{
  result = qword_27F4E3B40;
  if (!qword_27F4E3B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B48, &qword_2526AA6E0);
    sub_252636F44();
    sub_252639130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B40);
  }

  return result;
}

unint64_t sub_252636F44()
{
  result = qword_27F4E3B50;
  if (!qword_27F4E3B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B58, &qword_2526AA6E8);
    sub_252636FD0();
    sub_252638E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B50);
  }

  return result;
}

unint64_t sub_252636FD0()
{
  result = qword_27F4E3B60;
  if (!qword_27F4E3B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B68, &qword_2526AA6F0);
    sub_25263705C();
    sub_252637F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B60);
  }

  return result;
}

unint64_t sub_25263705C()
{
  result = qword_27F4E3B70;
  if (!qword_27F4E3B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B78, &qword_2526AA6F8);
    sub_2526370E8();
    sub_2526379F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B70);
  }

  return result;
}

unint64_t sub_2526370E8()
{
  result = qword_27F4E3B80;
  if (!qword_27F4E3B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B88, &qword_2526AA700);
    sub_252637174();
    sub_252637600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B80);
  }

  return result;
}

unint64_t sub_252637174()
{
  result = qword_27F4E3B90;
  if (!qword_27F4E3B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3B98, &qword_2526AA708);
    sub_252637200();
    sub_252637400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3B90);
  }

  return result;
}

unint64_t sub_252637200()
{
  result = qword_27F4E3BA0;
  if (!qword_27F4E3BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BA8, &qword_2526AA710);
    type metadata accessor for SwitchControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BB0, &unk_2526AA718);
    sub_252666040(&qword_27F4E3BB8, type metadata accessor for SwitchControlView, &unk_2526A5B68);
    sub_252637318();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BA0);
  }

  return result;
}

unint64_t sub_252637318()
{
  result = qword_27F4E3BC0;
  if (!qword_27F4E3BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BB0, &unk_2526AA718);
    sub_252666040(&qword_27F4E3BB8, type metadata accessor for SwitchControlView, &unk_2526A5B68);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BC0);
  }

  return result;
}

unint64_t sub_252637400()
{
  result = qword_27F4E3BC8;
  if (!qword_27F4E3BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BD0, &qword_2526AA728);
    type metadata accessor for SliderControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BD8, &qword_2526AA730);
    sub_252666040(&qword_27F4E3BE0, type metadata accessor for SliderControlView, &unk_2526A56D0);
    sub_252637518();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BC8);
  }

  return result;
}

unint64_t sub_252637518()
{
  result = qword_27F4E3BE8;
  if (!qword_27F4E3BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BD8, &qword_2526AA730);
    sub_252666040(&qword_27F4E3BE0, type metadata accessor for SliderControlView, &unk_2526A56D0);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BE8);
  }

  return result;
}

unint64_t sub_252637600()
{
  result = qword_27F4E3BF0;
  if (!qword_27F4E3BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3BF8, &qword_2526AA738);
    sub_2526376E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C28, &qword_2526AA750);
    sub_2526378E4();
    sub_252637938();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3BF0);
  }

  return result;
}

unint64_t sub_2526376E4()
{
  result = qword_27F4E3C00;
  if (!qword_27F4E3C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C08, &qword_2526AA740);
    type metadata accessor for VerticalPickerControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C10, &qword_2526AA748);
    sub_252666040(&qword_27F4E3C18, type metadata accessor for VerticalPickerControlView, &unk_2526A5E58);
    sub_2526377FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C00);
  }

  return result;
}

unint64_t sub_2526377FC()
{
  result = qword_27F4E3C20;
  if (!qword_27F4E3C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C10, &qword_2526AA748);
    sub_252666040(&qword_27F4E3C18, type metadata accessor for VerticalPickerControlView, &unk_2526A5E58);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C20);
  }

  return result;
}

unint64_t sub_2526378E4()
{
  result = qword_27F4E3C30;
  if (!qword_27F4E3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C30);
  }

  return result;
}

unint64_t sub_252637938()
{
  result = qword_27F4E3C38;
  if (!qword_27F4E3C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C28, &qword_2526AA750);
    sub_2526378E4();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C38);
  }

  return result;
}

unint64_t sub_2526379F0()
{
  result = qword_27F4E3C40;
  if (!qword_27F4E3C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C48, &qword_2526AA758);
    sub_2526384F0(&qword_27F4E3C50, &qword_27F4E3C58, &qword_2526AA760, sub_252637AA8);
    sub_252637E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C40);
  }

  return result;
}

unint64_t sub_252637AA8()
{
  result = qword_27F4E3C60;
  if (!qword_27F4E3C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C68, &qword_2526AA768);
    sub_252637B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C60);
  }

  return result;
}

unint64_t sub_252637B34()
{
  result = qword_27F4E3C70;
  if (!qword_27F4E3C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C78, &qword_2526AA770);
    type metadata accessor for StatusButtonControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C80, &qword_2526AA778);
    sub_252666040(&qword_27F4E2028, type metadata accessor for StatusButtonControlView, &unk_2526A5A30);
    sub_252637CCC();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for ButtonControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C90, &qword_2526AA780);
    sub_252666040(&qword_27F4E3C98, type metadata accessor for ButtonControlView, &unk_2526A4970);
    sub_252637DB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C70);
  }

  return result;
}

unint64_t sub_252637CCC()
{
  result = qword_27F4E3C88;
  if (!qword_27F4E3C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C80, &qword_2526AA778);
    sub_252666040(&qword_27F4E2028, type metadata accessor for StatusButtonControlView, &unk_2526A5A30);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3C88);
  }

  return result;
}

unint64_t sub_252637DB4()
{
  result = qword_27F4E3CA0;
  if (!qword_27F4E3CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3C90, &qword_2526AA780);
    sub_252666040(&qword_27F4E3C98, type metadata accessor for ButtonControlView, &unk_2526A4970);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CA0);
  }

  return result;
}

unint64_t sub_252637E9C()
{
  result = qword_27F4E3CA8;
  if (!qword_27F4E3CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CB0, &qword_2526AA788);
    sub_2526376E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CA8);
  }

  return result;
}

unint64_t sub_252637F28()
{
  result = qword_27F4E3CB8;
  if (!qword_27F4E3CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CC0, &qword_2526AA790);
    sub_252637FB4();
    sub_252638774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CB8);
  }

  return result;
}

unint64_t sub_252637FB4()
{
  result = qword_27F4E3CC8;
  if (!qword_27F4E3CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CD0, &qword_2526AA798);
    sub_25263806C();
    sub_2526384F0(&qword_27F4E3D28, &qword_27F4E3D30, &qword_2526AA7D0, sub_252638574);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CC8);
  }

  return result;
}

unint64_t sub_25263806C()
{
  result = qword_27F4E3CD8;
  if (!qword_27F4E3CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CE0, &qword_2526AA7A0);
    sub_2526380F8();
    sub_2526382F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CD8);
  }

  return result;
}

unint64_t sub_2526380F8()
{
  result = qword_27F4E3CE8;
  if (!qword_27F4E3CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CF0, &qword_2526AA7A8);
    type metadata accessor for ThermostatControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CF8, &unk_2526AA7B0);
    sub_252666040(&qword_27F4E2190, type metadata accessor for ThermostatControlView, &unk_2526A4010);
    sub_252638208();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3CE8);
  }

  return result;
}

unint64_t sub_252638208()
{
  result = qword_27F4E3D00;
  if (!qword_27F4E3D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3CF8, &unk_2526AA7B0);
    sub_252666040(&qword_27F4E2190, type metadata accessor for ThermostatControlView, &unk_2526A4010);
    sub_252400FC8(&qword_27F4DF8A0, &qword_27F4DF8A8, &qword_2526A7C40, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D00);
  }

  return result;
}

unint64_t sub_2526382F0()
{
  result = qword_27F4E3D08;
  if (!qword_27F4E3D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D10, &qword_2526AA7C0);
    type metadata accessor for WheelPickerControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D18, &qword_2526AA7C8);
    sub_252666040(&qword_27F4E1FF8, type metadata accessor for WheelPickerControlView, &unk_2526A6140);
    sub_252638408();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D08);
  }

  return result;
}

unint64_t sub_252638408()
{
  result = qword_27F4E3D20;
  if (!qword_27F4E3D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D18, &qword_2526AA7C8);
    sub_252666040(&qword_27F4E1FF8, type metadata accessor for WheelPickerControlView, &unk_2526A6140);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D20);
  }

  return result;
}

uint64_t sub_2526384F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252638574()
{
  result = qword_27F4E3D38;
  if (!qword_27F4E3D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D40, &qword_2526AA7D8);
    type metadata accessor for ColorControl(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D48, &qword_2526AA7E0);
    sub_252666040(&qword_27F4E3D50, type metadata accessor for ColorControl, &unk_25269F750);
    sub_25263868C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D38);
  }

  return result;
}

unint64_t sub_25263868C()
{
  result = qword_27F4E3D58;
  if (!qword_27F4E3D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D48, &qword_2526AA7E0);
    sub_252666040(&qword_27F4E3D50, type metadata accessor for ColorControl, &unk_25269F750);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D58);
  }

  return result;
}

unint64_t sub_252638774()
{
  result = qword_27F4E3D60;
  if (!qword_27F4E3D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D68, &qword_2526AA7E8);
    sub_252638800();
    sub_252638A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D60);
  }

  return result;
}

unint64_t sub_252638800()
{
  result = qword_27F4E3D70;
  if (!qword_27F4E3D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D78, &qword_2526AA7F0);
    type metadata accessor for AlarmAndTimerControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D80, &qword_2526AA7F8);
    sub_252666040(&qword_27F4E3D88, type metadata accessor for AlarmAndTimerControlView, &unk_25269C6CC);
    sub_252638918();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D70);
  }

  return result;
}

unint64_t sub_252638918()
{
  result = qword_27F4E3D90;
  if (!qword_27F4E3D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3D80, &qword_2526AA7F8);
    sub_252666040(&qword_27F4E3D88, type metadata accessor for AlarmAndTimerControlView, &unk_25269C6CC);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D90);
  }

  return result;
}

unint64_t sub_252638A00()
{
  result = qword_27F4E3D98;
  if (!qword_27F4E3D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DA0, &qword_2526AA800);
    sub_252638A8C();
    sub_252638C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3D98);
  }

  return result;
}

unint64_t sub_252638A8C()
{
  result = qword_27F4E3DA8;
  if (!qword_27F4E3DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DB0, &qword_2526AA808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DB8, &qword_2526AA810);
    sub_25254E10C();
    sub_252638B68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DA8);
  }

  return result;
}

unint64_t sub_252638B68()
{
  result = qword_27F4E3DC0;
  if (!qword_27F4E3DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DB8, &qword_2526AA810);
    sub_25254E10C();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DC0);
  }

  return result;
}

unint64_t sub_252638C20()
{
  result = qword_27F4E3DC8;
  if (!qword_27F4E3DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DD0, &qword_2526AA818);
    type metadata accessor for StatusDetailsButtonControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DD8, &qword_2526AA820);
    sub_252666040(&qword_27F4E1FC0, type metadata accessor for StatusDetailsButtonControlView, &unk_2526A1158);
    sub_252638D30();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DC8);
  }

  return result;
}

unint64_t sub_252638D30()
{
  result = qword_27F4E3DE0;
  if (!qword_27F4E3DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DD8, &qword_2526AA820);
    sub_252666040(&qword_27F4E1FC0, type metadata accessor for StatusDetailsButtonControlView, &unk_2526A1158);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DE0);
  }

  return result;
}

unint64_t sub_252638E18()
{
  result = qword_27F4E3DE8;
  if (!qword_27F4E3DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3DF0, &qword_2526AA828);
    sub_252638EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DE8);
  }

  return result;
}

unint64_t sub_252638EA4()
{
  result = qword_27F4E3DF8;
  if (!qword_27F4E3DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E00, &qword_2526AA830);
    sub_252638F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3DF8);
  }

  return result;
}

unint64_t sub_252638F30()
{
  result = qword_27F4E3E08;
  if (!qword_27F4E3E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E10, &qword_2526AA838);
    type metadata accessor for MenuPickerControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E18, &qword_2526AA840);
    sub_252666040(&qword_27F4E2168, type metadata accessor for MenuPickerControlView, &unk_2526A5400);
    sub_252639048();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E08);
  }

  return result;
}

unint64_t sub_252639048()
{
  result = qword_27F4E3E20;
  if (!qword_27F4E3E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E18, &qword_2526AA840);
    sub_252666040(&qword_27F4E2168, type metadata accessor for MenuPickerControlView, &unk_2526A5400);
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E20);
  }

  return result;
}

unint64_t sub_252639130()
{
  result = qword_27F4E3E28;
  if (!qword_27F4E3E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E30, &qword_2526AA848);
    sub_252636F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E28);
  }

  return result;
}

unint64_t sub_2526391BC()
{
  result = qword_27F4E3E38;
  if (!qword_27F4E3E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E40, &qword_2526AA850);
    sub_252639248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E38);
  }

  return result;
}

unint64_t sub_252639248()
{
  result = qword_27F4E3E48;
  if (!qword_27F4E3E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E50, &qword_2526AA858);
    sub_252636F44();
    sub_252497E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E48);
  }

  return result;
}

unint64_t sub_2526392D4()
{
  result = qword_27F4E3E68;
  if (!qword_27F4E3E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3AF0, &qword_2526AA6A8);
    sub_252639360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E68);
  }

  return result;
}

unint64_t sub_252639360()
{
  result = qword_27F4E3E70;
  if (!qword_27F4E3E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3E78, &qword_2526AA868);
    sub_252636CF0();
    sub_252636DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3E70);
  }

  return result;
}

unint64_t sub_252639494()
{
  result = qword_27F4E3EA8;
  if (!qword_27F4E3EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3AF8, &qword_2526AA6B0);
    sub_25263954C();
    sub_252400FC8(&qword_27F4DF0F8, &qword_27F4DF100, &qword_2526A2610, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3EA8);
  }

  return result;
}

unint64_t sub_25263954C()
{
  result = qword_27F4E3EB0;
  if (!qword_27F4E3EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E3EB8, &unk_2526AA8C0);
    sub_2526392D4();
    sub_252666040(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3EB0);
  }

  return result;
}

uint64_t sub_2526512D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = *(type metadata accessor for ControlRowSolver(0) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(type metadata accessor for DisplayControlGroup(0) - 8);
  v18 = (v15 + v16 + *(v17 + 80)) & ~*(v17 + 80);
  v19 = *(v17 + 64);
  v20 = *(type metadata accessor for ControlModuleView(0) - 8);
  v21 = (v18 + v19 + *(v20 + 80)) & ~*(v20 + 80);
  return sub_25262B1D4(a1, v7 + v18, (v7 + v21), *(v7 + v21 + *(v20 + 64)), a2, a3, a4, a6, a5);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(type metadata accessor for AccessoryControl.ElementIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v6 = sub_25268DA10();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252651578@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryControl.ElementIdentifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252683B20(a1, v6, a2);
}

double sub_2526515F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_252651638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_25265167C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_2523E2E24(a3, a4, a5, a6);
  }
}

void sub_2526516F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_252393F68(a3, a4, a5, a6, a7);
  }
}

void sub_252651774(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_25239F750(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_252665CE0(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ControlModuleView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for ControlRowSolver(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t sub_252665DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252665E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_252665EC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
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

uint64_t sub_252665F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_252665FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_252666020(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_252666040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_252666088()
{
  result = qword_27F4E4110;
  if (!qword_27F4E4110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E4118, &qword_2526AACA8);
    sub_25266610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E4110);
  }

  return result;
}

unint64_t sub_25266610C()
{
  result = qword_27F4E4120;
  if (!qword_27F4E4120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E4128, &qword_2526AACB0);
    sub_252666198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E4120);
  }

  return result;
}

unint64_t sub_252666198()
{
  result = qword_27F4E4130;
  if (!qword_27F4E4130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E4138, &qword_2526AACB8);
    sub_2524CB52C();
    sub_25242F0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E4130);
  }

  return result;
}

void sub_25266622C(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      (a1)(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_2526662C0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v53 = a4;
  v52 = a3;
  v51 = a1;
  v54 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v54);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v56);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v57);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Device.ControlGroup(0);
  v55 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a2;
  v20 = type metadata accessor for ControlRowSolver(0);
  v48 = v20[8];
  *(a5 + v48) = 4;
  v49 = v20[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4158, &qword_2526AAD38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252694EA0;
  v22 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v23 = objc_opt_self();
  v24 = *MEMORY[0x277D74420];
  v25 = v22;
  v26 = v51;
  v27 = [v23 systemFontOfSize:17.0 weight:v24];
  v28 = sub_25266B2EC();
  *(inited + 40) = v27;
  v29 = *MEMORY[0x277D740D0];
  *(inited + 64) = v28;
  *(inited + 72) = v29;
  *(inited + 104) = MEMORY[0x277D839F8];
  *(inited + 80) = 0x3FE0000000000000;
  v30 = v29;
  v31 = sub_25256F764(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2C48, &unk_2526AAD40);
  swift_arrayDestroy();
  *(a5 + v49) = v31;
  *a5 = a6;
  a5[1] = a7;
  result = sub_25266AAD0(v26, a5 + v20[5], type metadata accessor for Device.ControlModule);
  *(a5 + v20[6]) = v50;
  v33 = (a5 + v20[7]);
  v34 = v53;
  *v33 = v52;
  v33[1] = v34;
  v35 = *(v26 + 16);
  if (*(v35 + 16) != 3)
  {
    return sub_25266AA08(v26, type metadata accessor for Device.ControlModule);
  }

  v36 = 0;
  v53 = v12 + 10;
  v52 = v12 + 2;
  while (1)
  {
    if (v36 == 3)
    {
      result = sub_25266AA08(v26, type metadata accessor for Device.ControlModule);
      *(a5 + v48) = 1;
      return result;
    }

    if (v36 >= *(v35 + 16))
    {
      break;
    }

    sub_25266AAD0(v35 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v36, v19, type metadata accessor for Device.ControlGroup);
    sub_25266AAD0(v19, v14, type metadata accessor for Device.ControlGroup.LayoutType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_25266AA08(v19, type metadata accessor for Device.ControlGroup);
      v45 = type metadata accessor for Device.ControlGroup.LayoutType;
      v46 = v14;
LABEL_30:
      sub_25266AA08(v46, v45);
      return sub_25266AA08(v26, type metadata accessor for Device.ControlModule);
    }

    sub_25266AB38(v14, v16, type metadata accessor for Device.Control);
    sub_25266AAD0(&v16[*(v57 + 20)], v12, type metadata accessor for Device.Control.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0);

          sub_252372288(v12, &qword_27F4DB258, &unk_252696090);
          goto LABEL_23;
        }
      }

      else if (EnumCaseMultiPayload == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0);

        sub_252372288(v12, &qword_27F4DB440, &qword_2526A1150);
        goto LABEL_23;
      }

LABEL_22:
      sub_25266AA08(v12, type metadata accessor for Device.Control.Kind);
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
        sub_25266AA08(v12 + *(v39 + 48), type metadata accessor for AccessoryControl.PickerViewConfig);
        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0);

        sub_252372288(v12, &qword_27F4DB2A0, &qword_25269E4A0);
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_252393F68(*v12, v12[1], v12[2], v12[3], v12[4]);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
      sub_25266AA08(v12 + *(v38 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);

      sub_25266AA08(v19, type metadata accessor for Device.ControlGroup);
      goto LABEL_24;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020);
    sub_25266AA08(v12 + *(v40 + 48), type metadata accessor for AccessoryControl.IncrementalConfig);
    sub_252372288(v12, &qword_27F4DB218, &unk_252696080);
LABEL_23:
    v41 = sub_2526933B0();

    sub_25266AA08(v19, type metadata accessor for Device.ControlGroup);
    if ((v41 & 1) == 0)
    {
      v45 = type metadata accessor for Device.Control;
      v46 = v16;
      goto LABEL_30;
    }

LABEL_24:
    v42 = &v16[*(v57 + 36)];
    v43 = *v42;
    v44 = v42[1];
    result = sub_25266AA08(v16, type metadata accessor for Device.Control);
    ++v36;
    if (v44 >= 3 && v43 < 5)
    {
      return sub_25266AA08(v26, type metadata accessor for Device.ControlModule);
    }
  }

  __break(1u);
  return result;
}

int64_t sub_252666BCC(__n128 a1)
{
  v2 = v1;
  sub_252667440(a1);
  v4 = v3;
  swift_getKeyPath();
  v5 = *(v4 + 16);
  if (!v5)
  {

    v6 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_19;
  }

  v27 = MEMORY[0x277D84F90];
  sub_25237078C(0, v5, 0);
  v6 = v27;
  v7 = v4 + 40;
  do
  {

    swift_getAtKeyPath();

    v9 = *(v27 + 16);
    v8 = *(v27 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_25237078C((v8 > 1), v9 + 1, 1);
    }

    *(v27 + 16) = v9 + 1;
    *(v27 + 8 * v9 + 32) = v26;
    v7 += 16;
    --v5;
  }

  while (v5);

  v10 = *(v27 + 16);
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v11 = *(v6 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 >= 5)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v14 = vdupq_n_s64(v11);
      v15 = (v6 + 56);
      v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = v14;
      do
      {
        v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
        v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
      v19 = vextq_s8(v18, v18, 8uLL).u64[0];
      v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
      if (v12 == (v12 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13 = 1;
    }

    v20 = v10 - v13;
    v21 = (v6 + 8 * v13 + 32);
    do
    {
      v23 = *v21++;
      v22 = v23;
      if (v11 <= v23)
      {
        v11 = v22;
      }

      --v20;
    }

    while (v20);
  }

LABEL_19:

  v24 = type metadata accessor for ControlRowSolver(0);
  if (*(v2 + *(v24 + 32)) >= v11)
  {
    return v11;
  }

  else
  {
    return *(v2 + *(v24 + 32));
  }
}

double sub_252666DCC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = type metadata accessor for Device.Control(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v4;
  v20 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(a1 + *(v20 + 24), v18, type metadata accessor for DisplayControlGroup.LayoutType);
  LODWORD(v4) = swift_getEnumCaseMultiPayload();
  sub_25266AA08(v18, type metadata accessor for DisplayControlGroup.LayoutType);
  if (v4 == 1)
  {
    sub_25266ABC0();
  }

  else
  {
    sub_25266AF38();
  }

  v22 = v21;
  if (sub_2526698F4())
  {
    v22 = v19;
  }

  sub_252669BA4();
  sub_25266AAD0(a1, v15, type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_25266AA08(v15, type metadata accessor for Device.ControlGroup.LayoutType);
  if (EnumCaseMultiPayload == 1)
  {
    sub_25266AAD0(a1, v12, type metadata accessor for Device.ControlGroup.LayoutType);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_25266AB38(v12, v9, type metadata accessor for Device.Control);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
      v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_252694E90;
      sub_25266AB38(v9, v26 + v25, type metadata accessor for Device.Control);
      v24 = v26;
    }

    else
    {
      v24 = *v12;
    }

    v27 = *(v24 + 16);

    if (v27 == 1)
    {
      return v19;
    }
  }

  return v22;
}

double sub_252667110(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(type metadata accessor for DisplayControl(0) + 20);
  LOBYTE(v28) = *(a1 + v10);
  Device.Control.viewType(with:)(&v28, &v29);
  v11 = dbl_2526AAFB8[SLOBYTE(v29)];
  LOBYTE(v28) = *(a1 + v10);
  Device.Control.viewType(with:)(&v28, &v29);
  if (LOBYTE(v29) != 14)
  {
    return v11;
  }

  v12 = type metadata accessor for Device.Control(0);
  sub_25266AAD0(a1 + *(v12 + 20), v6, type metadata accessor for Device.Control.Kind);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v24 = type metadata accessor for Device.Control.Kind;
    v25 = v6;
LABEL_12:
    sub_25266AA08(v25, v24);
    return v11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
  v14 = sub_25266AB38(&v6[*(v13 + 48)], v9, type metadata accessor for AccessoryControl.PickerViewConfig);
  if (v9[*(v7 + 28)] != 1)
  {
    v24 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v25 = v9;
    goto LABEL_12;
  }

  v29 = v11;
  v15 = *v9;
  v16 = *(*v9 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v28 = MEMORY[0x277D84F90];
    sub_25236FF70(0, v16, 0);
    v17 = v28;
    v18 = (v15 + 48);
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v28 = v17;
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);

      if (v21 >= v22 >> 1)
      {
        v14 = sub_25236FF70((v22 > 1), v21 + 1, 1);
        v17 = v28;
      }

      *(v17 + 16) = v21 + 1;
      v23 = v17 + 16 * v21;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v18 += 4;
      --v16;
    }

    while (v16);
  }

  MEMORY[0x28223BE20](v14);
  *&v27[-32] = v2;
  *&v27[-24] = 0x4072C00000000000;
  *&v27[-16] = &v29;
  *&v27[-8] = 0x4040000000000000;
  sub_25266622C(sub_25266AA68, &v27[-48], v17);

  sub_25266AA08(v9, type metadata accessor for AccessoryControl.PickerViewConfig);
  return v29;
}

void sub_252667440(__n128 a1)
{
  v2 = type metadata accessor for ControlRowSolver(0);
  v3 = *(v1 + *(v2 + 20) + 16);
  v4 = *(v3 + 16);
  v5 = *(v1 + *(v2 + 32));
  if (v5 >= v4)
  {
    v13 = *(type metadata accessor for Device.ControlGroup(0) - 8);
    v11 = v3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));

    v10 = v3;
    v12 = v4;
  }

  else
  {
    if (v5 < 0)
    {
      goto LABEL_32;
    }

    v6 = (2 * v5) | 1;
    v7 = *(type metadata accessor for Device.ControlGroup(0) - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    sub_25266A260(v3, v3 + v8, 0, v6, &qword_27F4DAEE0, &unk_2526A8FF0, type metadata accessor for Device.ControlGroup);
    v10 = v9;
    v11 = v9 + v8;
    v12 = *(v9 + 16);
  }

  v14 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_26:
    swift_unknownObjectRelease();
    return;
  }

  v15 = (2 * v12) | 1;
  v33 = v3;
  v34 = v4 - 1;
  while (1)
  {
    sub_25266790C(v10, v11, v15, v36);
    v16 = v36[0];
    if (!v36[0])
    {
      swift_unknownObjectRelease();

      return;
    }

    v17 = v36[3];
    v18 = v36[4];
    v19 = *(v36[0] + 16);
    if (v19)
    {

      v35 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_252369BD4(0, *(v14 + 2) + 1, 1, v14);
      }

      v20 = *(v14 + 2);
      v21 = 16 * v20;
      v22 = 40;
      do
      {
        v23 = *(v16 + v22);
        v24 = *(v14 + 3);

        if (v20 >= v24 >> 1)
        {
          v14 = sub_252369BD4((v24 > 1), v20 + 1, 1, v14);
        }

        *(v14 + 2) = v20 + 1;
        v25 = &v14[v21];
        *(v25 + 4) = v20;
        *(v25 + 5) = v23;
        v21 += 16;
        v22 += 16;
        ++v20;
        --v19;
      }

      while (v19);

      v3 = v33;
      v18 = v35;
    }

    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v26 = v18 >> 1;
    v27 = (v18 >> 1) - v17;
    if (__OFSUB__(v18 >> 1, v17))
    {
      break;
    }

    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_29;
    }

    v28 = __OFSUB__(v29, 1);
    v30 = v29 - 1;
    if (v28)
    {
      goto LABEL_30;
    }

    if (v34 >= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v34;
    }

    if (v31 < v26)
    {

      swift_unknownObjectRelease_n();
      type metadata accessor for Device.ControlGroup(0);
      goto LABEL_26;
    }

    swift_unknownObjectRelease_n();

    if (*(v3 + 16) <= v31)
    {
      goto LABEL_31;
    }

    v32 = *(type metadata accessor for Device.ControlGroup(0) - 8);
    v11 = v3 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v15 = 2 * v31 + 3;

    v10 = v3;
    if (v26 == v15 >> 1)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_2526677FC(void *a1, uint64_t a2, double *a3, double a4, double a5)
{
  v8 = sub_252692BA0();
  type metadata accessor for ControlRowSolver(0);
  type metadata accessor for Key(0);
  sub_25266B750(&qword_27F4DAD40, type metadata accessor for Key, &unk_252694E40);
  v9 = sub_252692AF0();
  [v8 sizeWithAttributes_];
  v11 = v10;

  if (v11 <= a4)
  {
    v12 = v11;
  }

  else
  {
    v12 = a4;
  }

  v13 = v12 + a5;
  if (*a3 > v13)
  {
    v13 = *a3;
  }

  *a3 = v13;
}

void sub_25266790C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v100 = a2;
  v92 = a1;
  v8 = type metadata accessor for Device.ControlGroup(0);
  v90 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Device.Control(0);
  v106 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v107);
  v108 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v88 - v14;
  v109 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v109);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v99 = a3;
  if (a3 >> 1 == v17)
  {
    goto LABEL_60;
  }

  v89 = a3 >> 1;
  if (qword_27F4DAB58 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v25 = off_27F4E3940;
    v96 = *(off_27F4E3940 + 2);
    if (!v96)
    {
      break;
    }

    v26 = 0;
    v27 = 0;
    v97 = off_27F4E3940 + 32;
    v104 = xmmword_252694E90;
    v98 = a4;
    v95 = v17;
    v94 = off_27F4E3940;
    while (v26 < v25[2])
    {
      MEMORY[0x28223BE20](v16);
      v93 = v28;
      *(&v88 - 16) = v28;
      *(&v88 - 1) = v5;
      sub_252371DB8(sub_25266B88C, (&v88 - 4), v100, v29, v99);
      v31 = v30;
      v32 = *(v30 + 16);
      if (!v32)
      {

        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        a4 = v98;
        goto LABEL_60;
      }

      v103 = v27;
      v102 = v26 + 1;
      v110 = type metadata accessor for DisplayControlGroup(0);
      v33 = *(v110 - 8);
      v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v101 = v31;
      v35 = v31 + v34;
      v36 = *(v33 + 72);
      v37 = 0.0;
      v38 = 0.0;
      v39 = v108;
      do
      {
        v50 = *v5;
        v51 = v5[1];
        sub_25266AAD0(v35 + *(v110 + 24), v19, type metadata accessor for DisplayControlGroup.LayoutType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_25266AA08(v19, type metadata accessor for DisplayControlGroup.LayoutType);
        if (EnumCaseMultiPayload == 1)
        {
          sub_25266ABC0();
        }

        else
        {
          sub_25266AF38();
        }

        v42 = v53;
        v55 = v54;
        if (sub_2526698F4())
        {
          v42 = v50;
        }

        if (sub_252669BA4())
        {
          v55 = v51;
        }

        sub_25266AAD0(v35, v15, type metadata accessor for Device.ControlGroup.LayoutType);
        v56 = swift_getEnumCaseMultiPayload();
        sub_25266AA08(v15, type metadata accessor for Device.ControlGroup.LayoutType);
        if (v56 == 1)
        {
          sub_25266AAD0(v35, v39, type metadata accessor for Device.ControlGroup.LayoutType);
          if (swift_getEnumCaseMultiPayload() < 2)
          {
            v40 = *v39;
          }

          else
          {
            v57 = v39;
            v58 = v105;
            sub_25266AB38(v57, v105, type metadata accessor for Device.Control);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE8, &unk_2526AACD0);
            v59 = (*(v106 + 80) + 32) & ~*(v106 + 80);
            v60 = swift_allocObject();
            *(v60 + 16) = v104;
            v61 = v58;
            v39 = v108;
            sub_25266AB38(v61, v60 + v59, type metadata accessor for Device.Control);
            v40 = v60;
          }

          v41 = *(v40 + 16);

          if (v41 == 1)
          {
            v42 = v50;
          }
        }

        v43 = type metadata accessor for ControlRowSolver(0);
        if (v42 > v38)
        {
          v44 = v42;
        }

        else
        {
          v44 = v38;
        }

        v45 = 40.0;
        if (v37 == 0.0)
        {
          v46 = 0.0;
        }

        else
        {
          v46 = 40.0;
        }

        v47 = v37 + v46 + v55;
        if (v55 > v37)
        {
          v48 = v55;
        }

        else
        {
          v48 = v37;
        }

        if (v38 == 0.0)
        {
          v45 = 0.0;
        }

        v49 = v38 + v45 + v42;
        if (*(v5 + *(v43 + 24)))
        {
          v37 = v47;
        }

        else
        {
          v37 = v48;
        }

        if (*(v5 + *(v43 + 24)))
        {
          v38 = v44;
        }

        else
        {
          v38 = v49;
        }

        v35 += v36;
        --v32;
      }

      while (v32);
      v62 = v43;

      if (*(v5 + *(v62 + 24)))
      {
        v63 = v37 == 0.0 || v37 > v5[1];
      }

      else
      {
        v63 = v38 == 0.0 || v38 > *v5;
      }

      a4 = v98;
      v17 = v95;
      v27 = v103;
      v25 = v94;
      v26 = v102;
      if (!v63)
      {
        MEMORY[0x28223BE20](v16);
        *(&v88 - 16) = v93;
        *(&v88 - 1) = v5;
        v22 = v100;
        v23 = v77;
        v24 = v99;
        sub_252371DB8(sub_25266B2B0, (&v88 - 4), v100, v77, v99);
        v79 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB150, &qword_2526AAD20);
        v20 = swift_allocObject();
        *(v20 + 16) = v104;
        *(v20 + 32) = 0;
        *(v20 + 40) = v79;
        v21 = swift_unknownObjectRetain();
        goto LABEL_60;
      }

      if (v102 == v96)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_66:
    v87 = v17;
    v16 = swift_once();
    v17 = v87;
  }

LABEL_49:
  if (__OFSUB__(v89, v17))
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v89 - v17 != 1)
  {
LABEL_59:
    v80 = sub_252668E88(1, v92, v100, v17, v99);
    v82 = v81;
    v84 = v83;
    swift_unknownObjectRetain();
    sub_25266790C(v80, v82, v84, v111);
    v20 = v111[0];
    v21 = v111[1];
    v22 = v111[2];
    v23 = v111[3];
    v24 = v111[4];
    swift_unknownObjectRelease();
LABEL_60:
    *a4 = v20;
    a4[1] = v21;
    a4[2] = v22;
    a4[3] = v23;
    a4[4] = v24;
    return;
  }

  if (v89 <= v17)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v64 = v17;
  v65 = v91;
  sub_25266AAD0(v100 + *(v90 + 72) * v17, v91, type metadata accessor for Device.ControlGroup);
  LOBYTE(v111[0]) = *(v5 + *(type metadata accessor for ControlRowSolver(0) + 24));
  v66 = sub_252668754(v65, v111);
  if (!v66)
  {
    sub_25266AA08(v65, type metadata accessor for Device.ControlGroup);
    v17 = v64;
    goto LABEL_59;
  }

  v67 = v66;
  v68 = *(v66 + 16);
  if (!v68)
  {

    v72 = v91;
LABEL_62:
    v85 = sub_252668928(v70, v67, v72);

    MEMORY[0x28223BE20](v86);
    *(&v88 - 2) = v5;
    v20 = sub_25236352C(sub_25266B2D0, (&v88 - 4), v85);

    sub_25266AA08(v72, type metadata accessor for Device.ControlGroup);
    if (*(v20 + 16) == 2)
    {
      v21 = swift_unknownObjectRetain();
      v22 = v100;
      v23 = v64;
      v24 = v99;
    }

    else
    {

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    goto LABEL_60;
  }

  v69 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  sub_25266A260(v66, v66 + v69, 0, v68 | 1, &qword_27F4DAEE8, &unk_2526AACD0, type metadata accessor for Device.Control);
  v71 = *(v67 + 16);
  if (v71 >= v68 >> 1)
  {
    v72 = v91;
    if (v68 != 1)
    {
      v73 = v67 + v69;
      v74 = v70;
      sub_25266A260(v67, v73, v68 >> 1, (2 * v71) | 1, &qword_27F4DAEE8, &unk_2526AACD0, type metadata accessor for Device.Control);
      v76 = v75;

      v72 = v91;
      v70 = v74;
      v67 = v76;
    }

    goto LABEL_62;
  }

LABEL_69:
  __break(1u);
}

uint64_t sub_25266838C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4150, &qword_2526AAD30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v34 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  v9 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DisplayControlGroup(0);
  v35 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Device.ControlGroup(0);
  MEMORY[0x28223BE20](v32);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  sub_25266AAD0(a1, &v32 - v17, type metadata accessor for Device.ControlGroup);
  v19 = a3 + *(type metadata accessor for ControlRowSolver(0) + 28);
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = v37;
  sub_25266AAD0(v18, v15, type metadata accessor for Device.ControlGroup);
  v38 = v22;
  sub_25235E21C(v21, v20);
  sub_252668F1C(v15, &v38, v21, v20, v8);
  if ((*(v9 + 48))(v8, 1, v34) == 1)
  {
    sub_25266AA08(v18, type metadata accessor for Device.ControlGroup);
    sub_252372288(v8, &qword_27F4E4150, &qword_2526AAD30);
    v23 = 1;
    v24 = v36;
  }

  else
  {
    v25 = v33;
    sub_25266AB38(v8, v33, type metadata accessor for DisplayControlGroup.LayoutType);
    sub_25266AAD0(v18, v13, type metadata accessor for Device.ControlGroup);
    v13[v11[5]] = v22;
    sub_25266AB38(v25, &v13[v11[6]], type metadata accessor for DisplayControlGroup.LayoutType);
    v26 = &v18[*(v32 + 20)];
    v28 = *v26;
    v27 = *(v26 + 1);

    sub_25266AA08(v18, type metadata accessor for Device.ControlGroup);
    v29 = &v13[v11[7]];
    *v29 = v28;
    *(v29 + 1) = v27;
    v30 = v36;
    sub_25266AB38(v13, v36, type metadata accessor for DisplayControlGroup);
    v23 = 0;
    v24 = v30;
  }

  return (*(v35 + 56))(v24, v23, 1, v11);
}

uint64_t sub_252668754(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v20 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4148, &qword_2526AAD28);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *a2;
  v15 = *(v14 + 56);
  sub_25266AAD0(a1, &v20 - v11, type metadata accessor for Device.ControlGroup.LayoutType);
  v12[v15] = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_5:
      sub_252372288(v12, &qword_27F4E4148, &qword_2526AAD28);
      return 0;
    }

    sub_25266AAD0(v12, v9, type metadata accessor for Device.ControlGroup.LayoutType);
    v17 = *v9;
    if (v13)
    {
LABEL_4:

      goto LABEL_5;
    }
  }

  else
  {
    sub_25266AAD0(v12, v6, type metadata accessor for Device.ControlGroup.LayoutType);
    v17 = *v6;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  v19 = v17;
  sub_25266AA08(v12, type metadata accessor for Device.ControlGroup.LayoutType);
  return v19;
}

uint64_t sub_252668928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25266AAD0(a3, v11, type metadata accessor for Device.ControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_25266AB38(v11, v8, type metadata accessor for Device.Control);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
    v22 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v23 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252694E90;
    sub_25266AAD0(v8, v15 + v23, type metadata accessor for Device.Control);
    swift_storeEnumTagMultiPayload();
    v24 = (v15 + v23 + v22[7]);
    v25 = (v15 + v23 + v22[8]);
    *v24 = 0;
    v24[1] = 0;
    *v25 = 0;
    v25[1] = 0;
    sub_25266AA08(v8, type metadata accessor for Device.Control);
  }

  else
  {
    sub_25266AA08(v11, type metadata accessor for Device.ControlGroup.LayoutType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
    v12 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v13 = *(*v12 + 72);
    v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252694EA0;
    v16 = (v15 + v14);
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = (v16 + v12[7]);
    v18 = (v16 + v12[8]);
    *v17 = 0;
    v17[1] = 0;
    v19 = (v16 + v13);
    *v18 = 0;
    v18[1] = 0;
    *v19 = a2;
    swift_storeEnumTagMultiPayload();
    v20 = (v19 + v12[7]);
    v21 = (v19 + v12[8]);
    *v20 = 0;
    v20[1] = 0;
    *v21 = 0;
    v21[1] = 0;
  }

  return v15;
}

void sub_252668D54(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
  v4 = *(type metadata accessor for Device.ControlGroup(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252694E90;
  sub_25266AAD0(a1, v6 + v5, type metadata accessor for Device.ControlGroup);
  sub_25266790C(v6, v6 + v5, 3uLL, &v8);

  v7 = v8;
  if (v8)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *a2 = v7;
}

uint64_t sub_252668E88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a5 >> 1;
  v6 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6 - result;
  if (__OFSUB__(v6, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < 1)
  {
    v7 = 0;
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = a5 >> 1;
    if (v6 < v7)
    {
LABEL_10:
      if (v8 >= a4)
      {
        if (v5 >= a4)
        {
          if (v5 >= v8)
          {
            if ((v8 & 0x8000000000000000) == 0)
            {
              return a2;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v8 = a4 + v7;
  if (!__OFADD__(a4, v7))
  {
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_252668F1C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a4;
  v88 = a3;
  v86 = a5;
  v90 = type metadata accessor for Device.Control(0);
  v81 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v80 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v79 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v79 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - v15;
  v89 = type metadata accessor for DisplayControl(0);
  v17 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v79 - v21;
  v23 = type metadata accessor for Device.ControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = (&v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *a2;
  v84 = a1;
  sub_25266AAD0(a1, v25, type metadata accessor for Device.ControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v46 = *v25;
    v30 = v88;
    if (v88)
    {
      sub_252380428(v88, v87, v46);
      v46 = v47;
    }

    v48 = *(v46 + 16);
    if (v48)
    {
      v91 = MEMORY[0x277D84F90];
      sub_2523707AC(0, v48, 0);
      v33 = v91;
      v49 = *(v81 + 80);
      v80 = v46;
      v50 = v46 + ((v49 + 32) & ~v49);
      v51 = *(v81 + 72);
      do
      {
        sub_25266AAD0(v50, v13, type metadata accessor for Device.Control);
        v52 = &v13[*(v90 + 36)];
        v53 = *v52;
        v54 = v52[1];
        if (v27 <= v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = v27;
        }

        if (v53 == 4)
        {
          v56 = v27;
        }

        else
        {
          v56 = v55;
        }

        if (v54 >= v27 || v54 == 4)
        {
          v58 = v56;
        }

        else
        {
          v58 = v54;
        }

        sub_25266AB38(v13, v19, type metadata accessor for Device.Control);
        v19[*(v89 + 20)] = v58;
        v91 = v33;
        v60 = *(v33 + 16);
        v59 = *(v33 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_2523707AC((v59 > 1), v60 + 1, 1);
          v33 = v91;
        }

        *(v33 + 16) = v60 + 1;
        sub_25266AB38(v19, v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v60, type metadata accessor for DisplayControl);
        v50 += v51;
        --v48;
      }

      while (v48);
      goto LABEL_22;
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_25266AB38(v25, v10, type metadata accessor for Device.Control);
    v61 = v88;
    if (v88)
    {
      v62 = v87;
      v63 = v88(v10);
      sub_25247CDCC(v61, v62);
      sub_25266AA08(v84, type metadata accessor for Device.ControlGroup);
      if ((v63 & 1) == 0)
      {
        sub_25266AA08(v10, type metadata accessor for Device.Control);
        return (*(v83 + 56))(v86, 1, 1, v85, v64);
      }
    }

    else
    {
      sub_25266AA08(v84, type metadata accessor for Device.ControlGroup);
    }

    v68 = v80;
    sub_25266AB38(v10, v80, type metadata accessor for Device.Control);
    v69 = (v68 + *(v90 + 36));
    v70 = *v69;
    v71 = v69[1];
    if (v27 <= v70)
    {
      v72 = v70;
    }

    else
    {
      v72 = v27;
    }

    if (v70 == 4)
    {
      v73 = v27;
    }

    else
    {
      v73 = v72;
    }

    if (v71 >= v27 || v71 == 4)
    {
      v75 = v73;
    }

    else
    {
      v75 = v71;
    }

    v76 = v68;
    v66 = v82;
    sub_25266AB38(v76, v82, type metadata accessor for Device.Control);
    *(v66 + *(v89 + 20)) = v75;
    v67 = v85;
    goto LABEL_62;
  }

  v29 = *v25;
  v30 = v88;
  if (v88)
  {
    sub_252380428(v88, v87, v29);
    v29 = v31;
  }

  v32 = *(v29 + 16);
  if (!v32)
  {
LABEL_46:
    sub_25266AA08(v84, type metadata accessor for Device.ControlGroup);

    v64.n128_f64[0] = sub_25247CDCC(v30, v87);
    return (*(v83 + 56))(v86, 1, 1, v85, v64);
  }

  v91 = MEMORY[0x277D84F90];
  sub_2523707AC(0, v32, 0);
  v33 = v91;
  v34 = *(v81 + 80);
  v80 = v29;
  v35 = v29 + ((v34 + 32) & ~v34);
  v36 = *(v81 + 72);
  do
  {
    sub_25266AAD0(v35, v16, type metadata accessor for Device.Control);
    v37 = &v16[*(v90 + 36)];
    v38 = *v37;
    v39 = v37[1];
    if (v27 <= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v27;
    }

    if (v38 == 4)
    {
      v41 = v27;
    }

    else
    {
      v41 = v40;
    }

    if (v39 >= v27 || v39 == 4)
    {
      v43 = v41;
    }

    else
    {
      v43 = v39;
    }

    sub_25266AB38(v16, v22, type metadata accessor for Device.Control);
    v22[*(v89 + 20)] = v43;
    v91 = v33;
    v45 = *(v33 + 16);
    v44 = *(v33 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_2523707AC((v44 > 1), v45 + 1, 1);
      v33 = v91;
    }

    *(v33 + 16) = v45 + 1;
    sub_25266AB38(v22, v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v45, type metadata accessor for DisplayControl);
    v35 += v36;
    --v32;
  }

  while (v32);
LABEL_22:
  sub_25266AA08(v84, type metadata accessor for Device.ControlGroup);

  sub_25247CDCC(v88, v87);
  v66 = v82;
  *v82 = v33;
  v67 = v85;
LABEL_62:
  swift_storeEnumTagMultiPayload();
  v77 = v86;
  sub_25266AB38(v66, v86, type metadata accessor for DisplayControlGroup.LayoutType);
  return (*(v83 + 56))(v77, 0, 1, v67, v78);
}

void sub_25266971C(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DisplayControl(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25266AAD0(v2, v9, type metadata accessor for DisplayControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = *v9;
    v12 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v9;
    v12 = 1;
LABEL_5:
    MEMORY[0x2530A4FE0](v12);
    sub_2523DBDF0(a1, v11);

    return;
  }

  sub_25266AB38(v9, v6, type metadata accessor for DisplayControl);
  MEMORY[0x2530A4FE0](2);
  Device.Control.hash(into:)(a1);
  MEMORY[0x2530A4FE0](v6[*(v4 + 20)]);
  sub_25266AA08(v6, type metadata accessor for DisplayControl);
}

uint64_t sub_2526698F4()
{
  v1 = type metadata accessor for DisplayControl(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(v0 + *(v11 + 24), v10, type metadata accessor for DisplayControlGroup.LayoutType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    sub_25266AB38(v10, v7, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158, &qword_2526AA900);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_252694E90;
    result = sub_25266AB38(v7, v13 + v15, type metadata accessor for DisplayControl);
    v14 = *(v13 + 16);
    if (!v14)
    {
LABEL_10:

      return 0;
    }
  }

  else
  {
    v13 = *v10;
    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  v16 = 0;
  while (v16 < *(v13 + 16))
  {
    sub_25266AAD0(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v4, type metadata accessor for DisplayControl);
    v18 = v4[*(v1 + 20)];
    Device.Control.viewType(with:)(&v18, &v19);
    result = sub_25266AA08(v4, type metadata accessor for DisplayControl);
    if (v19 - 6 < 6 || v19 == 15)
    {

      return 1;
    }

    if (v14 == ++v16)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252669BA4()
{
  v1 = type metadata accessor for DisplayControl(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(v0 + *(v11 + 24), v10, type metadata accessor for DisplayControlGroup.LayoutType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    sub_25266AB38(v10, v7, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158, &qword_2526AA900);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_252694E90;
    result = sub_25266AB38(v7, v13 + v15, type metadata accessor for DisplayControl);
    v14 = *(v13 + 16);
    if (!v14)
    {
LABEL_12:

      return 0;
    }
  }

  else
  {
    v13 = *v10;
    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  v16 = 0;
  while (v16 < *(v13 + 16))
  {
    sub_25266AAD0(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v4, type metadata accessor for DisplayControl);
    v18 = v4[*(v1 + 20)];
    Device.Control.viewType(with:)(&v18, &v19);
    result = sub_25266AA08(v4, type metadata accessor for DisplayControl);
    if (v19 <= 0xFu && (((1 << v19) & 0x63D1) != 0 || v19 == 15))
    {

      return 1;
    }

    if (v14 == ++v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252669E70(__int128 *a1)
{
  Device.ControlGroup.LayoutType.hash(into:)(a1);
  v3 = type metadata accessor for Device.ControlGroup(0);
  if (*(v1 + *(v3 + 20) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  if (*(v1 + *(v3 + 24) + 8))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  v4 = type metadata accessor for DisplayControlGroup(0);
  MEMORY[0x2530A4FE0](*(v1 + *(v4 + 20)));
  sub_25266971C(a1);
  if (!*(v1 + *(v4 + 28) + 8))
  {
    return sub_252693480();
  }

  sub_252693480();

  return sub_252692C80();
}

uint64_t sub_252669FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_25266A038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

uint64_t sub_25266A080(uint64_t a1)
{
  sub_252693460();
  Device.Control.hash(into:)(v4);
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 20)));
  return sub_2526934C0();
}

uint64_t sub_25266A114(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  Device.Control.hash(into:)(v5);
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
  return sub_2526934C0();
}

void *sub_25266A1B8(void *result, unint64_t a2)
{
  v3 = result;
  v4 = a2 - result;
  if (a2 < result)
  {
    if ((result - a2) < 0)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v4 = a2 - result;
LABEL_5:
    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      if (v4 != -1)
      {
        v6 = sub_2525EEDC4(v4 + 1, 0);
        if (sub_25266A404(&v7, (v6 + 4), v5, v3, a2) == v5)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x277D84F90];
    }

    __break(1u);
    goto LABEL_12;
  }

  if ((a2 - result) >= 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_25266A260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size_0(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_25266A404(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25266A4A8(uint64_t a1, uint64_t a2)
{
  if ((_s22HomeAccessoryControlUI6DeviceV0C5GroupV10LayoutTypeO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Device.ControlGroup(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2526933B0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    v18 = *v14 == *v16 && v15 == v17;
    if (!v18 && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v19 = type metadata accessor for DisplayControlGroup(0);
  if (*(a1 + *(v19 + 20)) == *(a2 + *(v19 + 20)))
  {
    v20 = v19;
    if (sub_25266A600(a1 + *(v19 + 24), a2 + *(v19 + 24)))
    {
      v21 = *(v20 + 28);
      v22 = (a1 + v21);
      v23 = *(a1 + v21 + 8);
      v24 = (a2 + v21);
      v25 = v24[1];
      if (v23)
      {
        if (v25 && (*v22 == *v24 && v23 == v25 || (sub_2526933B0() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v25)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_25266A600(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for DisplayControl(0);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4140, &qword_2526AACC8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v19 = *(v18 + 56);
  sub_25266AAD0(a1, &v27 - v16, type metadata accessor for DisplayControlGroup.LayoutType);
  sub_25266AAD0(a2, &v17[v19], type metadata accessor for DisplayControlGroup.LayoutType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25266AAD0(v17, v14, type metadata accessor for DisplayControlGroup.LayoutType);
    v21 = *v14;
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_25266AAD0(v17, v8, type metadata accessor for DisplayControlGroup.LayoutType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_25266AB38(&v17[v19], v5, type metadata accessor for DisplayControl);
      if (static Device.Control.== infix(_:_:)(v8, v5))
      {
        v23 = *(v28 + 20);
        v24 = v8[v23];
        v25 = v5[v23];
        sub_25266AA08(v5, type metadata accessor for DisplayControl);
        if (v24 == v25)
        {
          sub_25266AA08(v8, type metadata accessor for DisplayControl);
          sub_25266AA08(v17, type metadata accessor for DisplayControlGroup.LayoutType);
          return 1;
        }
      }

      else
      {
        sub_25266AA08(v5, type metadata accessor for DisplayControl);
      }

      sub_25266AA08(v8, type metadata accessor for DisplayControl);
      sub_25266AA08(v17, type metadata accessor for DisplayControlGroup.LayoutType);
      return 0;
    }

    sub_25266AA08(v8, type metadata accessor for DisplayControl);
LABEL_12:
    sub_252372288(v17, &qword_27F4E4140, &qword_2526AACC8);
    return 0;
  }

  sub_25266AAD0(v17, v11, type metadata accessor for DisplayControlGroup.LayoutType);
  v21 = *v11;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_12;
  }

LABEL_4:
  v22 = sub_2523E7FBC(v21, *&v17[v19]);

  sub_25266AA08(v17, type metadata accessor for DisplayControlGroup.LayoutType);
  return v22;
}

uint64_t sub_25266AA08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25266AAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25266AB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25266ABC0()
{
  v1 = type metadata accessor for DisplayControl(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v24[-v6];
  v8 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(v0 + *(v11 + 24), v10, type metadata accessor for DisplayControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_25266AB38(v10, v7, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158, &qword_2526AA900);
    v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252694E90;
    sub_25266AB38(v7, v12 + v23, type metadata accessor for DisplayControl);
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_27:

    return;
  }

  v12 = *v10;
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_3:
  v14 = 0;
  v15 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v16 = *(v2 + 72);
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    sub_25266AAD0(v15, v4, type metadata accessor for DisplayControl);
    v25 = v4[*(v1 + 20)];
    Device.Control.viewType(with:)(&v25, &v26);
    sub_25266AA08(v4, type metadata accessor for DisplayControl);
    v19 = 343.0;
    v20 = 123.0;
    if (v26 > 6u)
    {
      if (v26 < 0xDu)
      {
        goto LABEL_5;
      }

      if (v26 == 13)
      {
        goto LABEL_20;
      }

      if (v26 != 14)
      {
        goto LABEL_5;
      }

      v21 = 0x4069000000000000;
      goto LABEL_19;
    }

    if (v26 > 2u)
    {
      if (v26 <= 4u && v26 != 3)
      {
        goto LABEL_20;
      }

      v21 = 0x404C800000000000;
      goto LABEL_19;
    }

    if (v26)
    {
      if (v26 == 1)
      {
        v21 = 0x405C400000000000;
      }

      else
      {
        v21 = 0x4053C00000000000;
      }

LABEL_19:
      v20 = *&v21;
      v19 = *&v21;
    }

LABEL_20:
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_29;
    }

    if (v17 < v19)
    {
      v17 = v19;
    }

    v18 = v18 + v20;
LABEL_5:
    v15 += v16;
    --v13;
  }

  while (v13);

  if (!__OFSUB__(v14, 1))
  {
    return;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_25266AF38()
{
  v1 = type metadata accessor for DisplayControl(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v24[-v6];
  v8 = type metadata accessor for DisplayControlGroup.LayoutType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DisplayControlGroup(0);
  sub_25266AAD0(v0 + *(v11 + 24), v10, type metadata accessor for DisplayControlGroup.LayoutType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_25266AB38(v10, v7, type metadata accessor for DisplayControl);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB158, &qword_2526AA900);
    v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252694E90;
    sub_25266AB38(v7, v12 + v23, type metadata accessor for DisplayControl);
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_27:

    return;
  }

  v12 = *v10;
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_3:
  v14 = 0;
  v15 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v16 = *(v2 + 72);
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    sub_25266AAD0(v15, v4, type metadata accessor for DisplayControl);
    v25 = v4[*(v1 + 20)];
    Device.Control.viewType(with:)(&v25, &v26);
    sub_25266AA08(v4, type metadata accessor for DisplayControl);
    v19 = 343.0;
    v20 = 123.0;
    if (v26 > 6u)
    {
      if (v26 < 0xDu)
      {
        goto LABEL_5;
      }

      if (v26 == 13)
      {
        goto LABEL_20;
      }

      if (v26 != 14)
      {
        goto LABEL_5;
      }

      v21 = 0x4069000000000000;
      goto LABEL_19;
    }

    if (v26 > 2u)
    {
      if (v26 <= 4u && v26 != 3)
      {
        goto LABEL_20;
      }

      v21 = 0x404C800000000000;
      goto LABEL_19;
    }

    if (v26)
    {
      if (v26 == 1)
      {
        v21 = 0x405C400000000000;
      }

      else
      {
        v21 = 0x4053C00000000000;
      }

LABEL_19:
      v20 = *&v21;
      v19 = *&v21;
    }

LABEL_20:
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_29;
    }

    if (v17 < v20)
    {
      v17 = v20;
    }

    v18 = v18 + v19;
LABEL_5:
    v15 += v16;
    --v13;
  }

  while (v13);

  if (!__OFSUB__(v14, 1))
  {
    return;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

unint64_t sub_25266B2EC()
{
  result = qword_27F4E0D88;
  if (!qword_27F4E0D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4E0D88);
  }

  return result;
}

void sub_25266B338(uint64_t a1)
{
  sub_25266B3AC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DisplayControl(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25266B3AC(uint64_t a1)
{
  if (!qword_27F4E4170)
  {
    type metadata accessor for DisplayControl(255);
    v1 = sub_252692DD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4E4170);
    }
  }
}

void sub_25266B42C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Device.ControlModule(319);
    if (v2 <= 0x3F)
    {
      sub_252475AC0(319);
      if (v3 <= 0x3F)
      {
        sub_25266B4F0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25266B4F0(uint64_t a1)
{
  if (!qword_27F4E4188)
  {
    type metadata accessor for Key(255);
    sub_25266B750(&qword_27F4DAD40, type metadata accessor for Key, &unk_252694E40);
    v1 = sub_252692B10();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4E4188);
    }
  }
}

uint64_t sub_25266B5B8(uint64_t a1)
{
  result = type metadata accessor for Device.Control(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25266B654(uint64_t a1)
{
  type metadata accessor for Device.ControlGroup(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DisplayControlGroup.LayoutType(319);
    if (v2 <= 0x3F)
    {
      sub_252404218();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25266B750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25266B8A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

uint64_t sub_25266B918()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

uint64_t sub_25266B98C(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4248, &qword_2526AB230);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4240, &qword_2526AB228);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D28, &unk_2526AB120);
  MEMORY[0x28223BE20](v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4238, &qword_2526AB220);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4230, &qword_2526AB218);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device;
  v34 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device;
  v21 = type metadata accessor for Device(0);
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  v22 = (v2 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  *(v2 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_userHasInteractedWithControls) = 0;
  v23 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__decorationButtons;
  *&v44 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4208, &qword_2526AB110);
  sub_252690660();
  (*(v17 + 32))(v2 + v23, v19, v16);
  v24 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__bottomViewController;
  v44 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4218, &qword_2526AB118);
  sub_252690660();
  (*(v13 + 32))(v2 + v24, v15, v12);
  *(v2 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_allowsSwipeDownDismissal) = 1;
  v25 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlViewFrames;
  *(v2 + v25) = sub_25256ED10(MEMORY[0x277D84F90]);
  v26 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__overrideHeaderConfig;
  v27 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  sub_25237153C(v11, v8, &qword_27F4E0D28, &unk_2526AB120);
  v28 = v36;
  sub_252690660();
  sub_252372288(v11, &qword_27F4E0D28, &unk_2526AB120);
  (*(v37 + 32))(v2 + v26, v28, v38);
  v29 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__presentedError;
  v44 = xmmword_2526952D0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB00, &qword_252696C18);
  v30 = v39;
  sub_252690660();
  (*(v40 + 32))(v2 + v29, v30, v41);
  v31 = v34;
  swift_beginAccess();
  v32 = v42;
  sub_25266D7FC(v42, v2 + v31);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v44 = v43;

  sub_252690690();
  sub_252372288(v32, &qword_27F4E0D60, &unk_2526A4190);
  return v2;
}

double sub_25266BF18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return result;
}

uint64_t sub_25266BF90@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60, &unk_2526A4190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Device(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D28, &unk_2526AB120);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v17 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) != 1)
  {
    return sub_25266D794(v16, a1, type metadata accessor for AccessoryControlsHeaderConfig);
  }

  sub_252372288(v16, &qword_27F4E0D28, &unk_2526AB120);
  v18 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device;
  swift_beginAccess();
  sub_25237153C(v2 + v18, v6, &qword_27F4E0D60, &unk_2526A4190);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_252372288(v6, &qword_27F4E0D60, &unk_2526A4190);
    v19 = *(v17 + 24);
    v20 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
    result = (*(*(v20 - 8) + 56))(&a1[v19], 1, 1, v20);
    *a1 = 0;
    *(a1 + 1) = 0xE000000000000000;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
  }

  else
  {
    sub_25266D794(v6, v13, type metadata accessor for Device);
    sub_25266D6D4(v13, v10);
    sub_252430364(v10, a1);
    return sub_25266D738(v13);
  }

  return result;
}

__n128 sub_25266C2DC@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  result = v6;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void sub_25266C368(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930, &qword_2526964E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = swift_allocObject();
  v23[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAC8, &qword_252696BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAD0, &qword_252696BB8);
  if (swift_dynamicCast())
  {
    sub_25235E1A4(&v24, v5 + 16);
    v7 = sub_252692E30();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_252692E00();
    v9 = a1;

    v10 = sub_252692DF0();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v5;
    v11[5] = v8;
    v11[6] = a1;

    sub_2525738C0(0, 0, v4, &unk_2526AB1C0, v11);

    return;
  }

  *&v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_252372288(&v24, &qword_27F4DBAD8, &qword_252696BC0);
  swift_deallocUninitializedObject();
  v21[0] = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAE0, &qword_252696BC8);
  if (swift_dynamicCast())
  {
    sub_25235E1A4(&v24, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_25268D770();
    if (v14)
    {

      sub_2523C3820(v23, v21);
      v15 = v22;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      v17 = MEMORY[0x28223BE20](v16);
      v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19, v17);
      sub_252408DE0(v19, v15, &v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      sub_25266CCEC(&v24, a1);
      sub_252408FAC(&v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    *&v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_252372288(&v24, &qword_27F4DBAE8, &qword_252696BD0);
  }

  if (qword_27F4DA9A0 != -1)
  {
    swift_once();
  }

  v24 = xmmword_27F4FB380;
  v25 = *algn_27F4FB390;
  v26 = xmmword_27F4FB3A0;
  v27 = unk_27F4FB3B0;
  sub_25266CCEC(&v24, a1);
}

uint64_t sub_25266C788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  sub_252692E00();
  v6[36] = sub_252692DF0();
  v8 = sub_252692DE0();
  v6[37] = v8;
  v6[38] = v7;

  return MEMORY[0x2822009F8](sub_25266C824, v8, v7);
}

uint64_t sub_25266C824()
{
  v1 = *(v0 + 264);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_25266C8F0;

  return MEMORY[0x282170990](v2, v3);
}

uint64_t sub_25266C8F0()
{
  v1 = *v0;

  swift_endAccess();
  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_25266CA1C, v3, v2);
}

uint64_t sub_25266CA1C()
{
  v1 = *(v0 + 264);

  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  sub_25268D770();
  v7 = v6;
  (*(v4 + 8))(v5, v2);
  if (v7)
  {

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_9;
    }

    v8 = *(v0 + 280);
    v9 = *(v0 + 264);
    swift_beginAccess();
    v10 = *(v9 + 40);
    v11 = __swift_project_boxed_opaque_existential_1((v9 + 16), v10);
    v12 = *(v10 - 8);
    v13 = swift_task_alloc();
    (*(v12 + 16))(v13, v11, v10);
    sub_252408DE0(v13, v10, (v0 + 80));

    sub_25266CCEC((v0 + 80), v8);
    sub_252408FAC(v0 + 80);
  }

  else
  {

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_9;
    }

    if (qword_27F4DA9A0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 280);
    v16 = xmmword_27F4FB3A0;
    v15 = unk_27F4FB3B0;
    v17 = *algn_27F4FB390;
    *(v0 + 16) = xmmword_27F4FB380;
    *(v0 + 32) = v17;
    *(v0 + 48) = v16;
    *(v0 + 64) = v15;
    sub_25266CCEC((v0 + 16), v14);
  }

LABEL_9:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_25266CCEC(__int128 *a1, void *a2)
{
  v4 = a1[1];
  v25 = *a1;
  v26 = v4;
  v5 = a1[3];
  v27 = a1[2];
  v28 = v5;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v6 = sub_2526905A0();
  __swift_project_value_buffer(v6, qword_27F4E4B18);
  sub_252408F74(a1, v24);
  v7 = a2;
  v8 = sub_252690580();
  v9 = sub_252692F10();
  sub_252408FAC(a1);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v24[0] = v11;
    *v10 = 136446722;
    if (*(a1 + 1))
    {
      v12 = *a1;
      v13 = *(a1 + 1);
    }

    else
    {
      v12 = 1819047278;
      v13 = 0xE400000000000000;
    }

    v14 = sub_2525BDA90(v12, v13, v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (*(a1 + 3))
    {
      v15 = *(a1 + 2);
      v16 = *(a1 + 3);
    }

    else
    {
      v15 = 1819047278;
      v16 = 0xE400000000000000;
    }

    v17 = sub_2525BDA90(v15, v16, v24);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v23 = a2;
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBAF8, &qword_252696C10);
    v19 = sub_252692C00();
    v21 = sub_2525BDA90(v19, v20, v24);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_252309000, v8, v9, "Presenting error titled: %{public}s, description: %s, original: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v11, -1, -1);
    MEMORY[0x2530A5A40](v10, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v24[0] = v25;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  sub_252408F74(a1, &v23);

  return sub_252690690();
}

uint64_t sub_25266CFA0()
{
  sub_252372288(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_device, &qword_27F4E0D60, &unk_2526A4190);
  sub_25260B03C(*(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules), *(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules + 8), *(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules + 16));
  v1 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__decorationButtons;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4230, &qword_2526AB218);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__bottomViewController;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4238, &qword_2526AB220);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__overrideHeaderConfig;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4240, &qword_2526AB228);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel__presentedError;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4248, &qword_2526AB230);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryControlLegacyViewModel(uint64_t a1)
{
  result = qword_27F4E41E8;
  if (!qword_27F4E41E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25266D1C8(uint64_t a1)
{
  sub_25266D3C8(319);
  if (v1 <= 0x3F)
  {
    sub_2524896C0(319, &qword_27F4E4200, &qword_27F4E4208, &qword_2526AB110);
    if (v2 <= 0x3F)
    {
      sub_2524896C0(319, &qword_27F4E4210, &qword_27F4E4218, &qword_2526AB118);
      if (v3 <= 0x3F)
      {
        sub_2524896C0(319, &qword_27F4E4220, &qword_27F4E0D28, &unk_2526AB120);
        if (v4 <= 0x3F)
        {
          sub_2524896C0(319, &qword_27F4E4228, &qword_27F4DBB00, &qword_252696C18);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_25266D3C8(uint64_t a1)
{
  if (!qword_27F4E41F8)
  {
    type metadata accessor for Device(255);
    v1 = sub_252693130();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4E41F8);
    }
  }
}

uint64_t sub_25266D420@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccessoryControlLegacyViewModel(0);
  result = sub_252690630();
  *a2 = result;
  return result;
}

double sub_25266D460()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return result;
}

uint64_t sub_25266D4DC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D28, &unk_2526AB120);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_25237153C(a1, &v10 - v7, &qword_27F4E0D28, &unk_2526AB120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25237153C(v8, v5, &qword_27F4E0D28, &unk_2526AB120);

  sub_252690690();
  return sub_252372288(v8, &qword_27F4E0D28, &unk_2526AB120);
}

uint64_t sub_25266D60C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2523E233C;

  return sub_25266C788(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25266D6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25266D738(uint64_t a1)
{
  v2 = type metadata accessor for Device(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25266D794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25266D7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0D60, &unk_2526A4190);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 sub_25266D894@<Q0>(uint64_t a1@<X8>)
{
  sub_252431FB4();
  sub_252691100();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_25266D8FC(uint64_t a1, uint64_t a2)
{
  sub_2526928D0();
  if (sub_2526928F0())
  {

    return MEMORY[0x282131288]();
  }

  else
  {
    sub_2526928E0();
    if (sub_2526928F0())
    {

      return MEMORY[0x282131290]();
    }

    else
    {
      sub_2526928B0();
      if (sub_2526928F0())
      {

        return MEMORY[0x282131278]();
      }

      else
      {
        sub_2526928C0();
        if (sub_2526928F0())
        {

          return MEMORY[0x282131280]();
        }

        else
        {

          return MEMORY[0x282131298]();
        }
      }
    }
  }
}

uint64_t static AccessoryControlDecorationButton.Config.control(control:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v75 = a2;
  v79 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E4040, &qword_2526AAA80);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v65 - v6;
  v7 = type metadata accessor for IconDescriptor(0);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v15 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v73);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v20);
  v70 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v74 = a1;
  MEMORY[0x2530A4210]();
  v78 = v20;
  sub_2526763B0(&v27[*(v20 + 20)], v17, type metadata accessor for Device.Control.Kind);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v28 = swift_projectBox();
    sub_25237153C(v28, v14, &qword_27F4DB430, &qword_2526A9B30);
    sub_252676A88(&v14[*(v12 + 48)], v19, type metadata accessor for AccessoryControl.DecorationControlConfig);
    sub_252676418(v14, type metadata accessor for Device.Control.Kind);

    sub_25261239C(v11);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
    if ((*(*(v29 - 8) + 48))(v11, 1, v29) == 1)
    {
      sub_252372288(v11, &qword_27F4DADB8, &qword_2526A6E60);
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v41 = v71;
      sub_2526763B0(v11, v71, type metadata accessor for IconDescriptor);
      sub_252372288(v11, &qword_27F4DAD88, &unk_2526956E0);
      v30 = *v41;
      v31 = v41[1];

      sub_252676418(v41, type metadata accessor for IconDescriptor);
    }

    v65 = v30;
    v66 = v31;
    v42 = sub_25268F0D0();
    v68 = v43;
    v69 = v42;
    LODWORD(v71) = v27[*(v78 + 44)];
    v44 = &v27[*(v78 + 32)];
    v45 = *(v44 + 1);
    v78 = *v44;
    v70 = v45;

    v67 = sub_252685F88(v30, v31);
    v47 = v46;
    v48 = v76;
    sub_25237153C(v74, v76, &qword_27F4DAE18, &qword_2526A7F90);
    v49 = v72;
    v50 = *(*(v72 - 8) + 56);
    v50(v48, 0, 1, v72);
    LODWORD(v74) = (v19[*(v73 + 24)] & 1) == 0;

    v51 = v79;
    sub_25268DA00();
    sub_252676418(v19, type metadata accessor for AccessoryControl.DecorationControlConfig);
    sub_252676418(v27, type metadata accessor for Device.Control);
    v52 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
    v53 = (v51 + v52[10]);
    v54 = (v51 + v52[12]);
    v55 = v52[14];
    v50(v51 + v55, 1, 1, v49);
    v56 = (v51 + v52[5]);
    v57 = v66;
    *v56 = v65;
    v56[1] = v57;
    v58 = (v51 + v52[6]);
    v59 = v68;
    *v58 = v69;
    v58[1] = v59;
    v60 = (v51 + v52[7]);
    v61 = v77;
    *v60 = v75;
    v60[1] = v61;
    *(v51 + v52[8]) = 0;
    *(v51 + v52[9]) = v71;
    v62 = v70;
    *v53 = v78;
    v53[1] = v62;
    *(v51 + v52[11]) = 0;
    *v54 = v67;
    v54[1] = v47;
    *(v51 + v52[13]) = 0;

    sub_2526766DC(v48, v51 + v55);
    *(v51 + v52[15]) = v74;
    return (*(*(v52 - 1) + 56))(v51, 0, 1, v52);
  }

  else
  {
    sub_252676418(v17, type metadata accessor for Device.Control.Kind);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v32 = sub_2526905A0();
    __swift_project_value_buffer(v32, qword_27F4E4B18);
    sub_2526763B0(v27, v24, type metadata accessor for Device.Control);
    v33 = sub_252690580();
    v34 = sub_252692EF0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v80 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_2525BDA90(0x6769666E6F43, 0xE600000000000000, &v80);
      *(v35 + 12) = 2080;
      sub_2526763B0(v24, v70, type metadata accessor for Device.Control);
      v37 = sub_252692C00();
      v39 = v38;
      sub_252676418(v24, type metadata accessor for Device.Control);
      v40 = sub_2525BDA90(v37, v39, &v80);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_252309000, v33, v34, "Tried to create %s from non-overlay control %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v36, -1, -1);
      MEMORY[0x2530A5A40](v35, -1, -1);
    }

    else
    {

      sub_252676418(v24, type metadata accessor for Device.Control);
    }

    sub_252676418(v27, type metadata accessor for Device.Control);
    v64 = type metadata accessor for AccessoryControlDecorationButton.Config(0);
    return (*(*(v64 - 8) + 56))(v79, 1, 1, v64);
  }
}