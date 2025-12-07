unint64_t sub_1E492F270()
{
  result = qword_1ECF80370;
  if (!qword_1ECF80370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF80370);
  }

  return result;
}

unint64_t sub_1E492F2BC()
{
  result = qword_1ECF80378;
  if (!qword_1ECF80378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF816A0, &unk_1E49A5C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80378);
  }

  return result;
}

void sub_1E492F33C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor) = *(v0 + 24);
}

uint64_t sub_1E492F380()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor) = *(v0 + 24);

  return sub_1E492C76C();
}

void sub_1E492F3D4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor) = *(v0 + 24);
}

uint64_t sub_1E492F470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E492F510()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void sub_1E492F54C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t sub_1E492F5A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E48ECAA8;

  return sub_1E492A8F0();
}

uint64_t sub_1E492F64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E4927AEC(a1, v4, v5, v6);
}

uint64_t sub_1E492F700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E4928448(a1, v4, v5, v6);
}

uint64_t sub_1E492F7B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E49292F8(a1, v4, v5, v6);
}

uint64_t sub_1E492F868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E48ECAA8;

  return sub_1E492A484();
}

uint64_t sub_1E492F914(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E492F974()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 144) = v0[3];
  *(v1 + 152) = v2;
}

unint64_t sub_1E492FA1C()
{
  result = qword_1ECF803A8;
  if (!qword_1ECF803A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF803A8);
  }

  return result;
}

unint64_t sub_1E492FA74()
{
  result = qword_1ECF803B0;
  if (!qword_1ECF803B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF803B0);
  }

  return result;
}

unint64_t sub_1E492FACC()
{
  result = qword_1ECF803B8;
  if (!qword_1ECF803B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF803B8);
  }

  return result;
}

uint64_t sub_1E492FBD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E492FC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1E492FCB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  *a2 = *(v3 + 16);
}

uint64_t sub_1E492FD88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v50 = a4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803D0, &qword_1E49A2498);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v44[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803D8, &qword_1E49A24A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803E0, &qword_1E49A24A8);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44[-v21];
  *v22 = sub_1E4997CEC();
  *(v22 + 1) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803E8, &qword_1E49A24B0);
  sub_1E4930310(a1, a2 & 1, a3, &v22[*(v24 + 44)], a5);
  *&v53 = a5;
  *(&v53 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F0, &qword_1E49A24B8);
  sub_1E4997B5C();
  v25 = 1.0 / *v51;
  sub_1E4997DAC();
  v27 = v26;
  v29 = v28;
  v30 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F8, &qword_1E49A24C0) + 36)];
  *v30 = v25;
  v30[1] = v25;
  *(v30 + 2) = v27;
  *(v30 + 3) = v29;
  v31 = sub_1E499734C();
  v32 = sub_1E49977CC();
  v33 = &v22[*(v17 + 44)];
  *v33 = v31;
  v33[8] = v32;
  v45 = a2;
  v46 = a1;
  v35 = sub_1E4961F94(a1, a2 & 1, v34);
  swift_getKeyPath();
  *&v53 = v35;
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  v36 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  swift_beginAccess();
  LODWORD(v36) = *(v35 + v36);

  if (v36 == 1)
  {
    *v51 = a5;
    *(&v51[0] + 1) = a3;
    sub_1E4997B7C();
    sub_1E49684E4(v53, *(&v53 + 1), v54, v51);
    sub_1E4961F94(v46, v45 & 1, v37);
    type metadata accessor for SolarViewModel(0);
    sub_1E4931A7C();
    v38 = v47;
    sub_1E499793C();

    v56 = v51[3];
    v57 = v51[4];
    v58 = v52;
    v53 = v51[0];
    v54 = v51[1];
    v55 = v51[2];
    sub_1E4931AD0(&v53);
    v39 = v48;
    v40 = v49;
    (*(v48 + 32))(v15, v38, v49);
    (*(v39 + 56))(v15, 0, 1, v40);
  }

  else
  {
    (*(v48 + 56))(v15, 1, 1, v49);
  }

  sub_1E48C12D0(v22, v19, &qword_1ECF803E0, &qword_1E49A24A8);
  sub_1E48C12D0(v15, v12, &qword_1ECF803D8, &qword_1E49A24A0);
  v41 = v50;
  sub_1E48C12D0(v19, v50, &qword_1ECF803E0, &qword_1E49A24A8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80400, &qword_1E49A24F0);
  sub_1E48C12D0(v12, v41 + *(v42 + 48), &qword_1ECF803D8, &qword_1E49A24A0);
  sub_1E48C1338(v15, &qword_1ECF803D8, &qword_1E49A24A0);
  sub_1E48C1338(v22, &qword_1ECF803E0, &qword_1E49A24A8);
  sub_1E48C1338(v12, &qword_1ECF803D8, &qword_1E49A24A0);
  return sub_1E48C1338(v19, &qword_1ECF803E0, &qword_1E49A24A8);
}

uint64_t sub_1E4930310@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v67 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80410, &qword_1E49A24F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v53 - v12);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80418, &qword_1E49A2500);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v69 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  type metadata accessor for SolarViewModel(0);
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  v18 = sub_1E49971EC();
  v75 = 0.0333333333;
  v76 = v18;
  LOBYTE(v77) = v19 & 1;
  LODWORD(v63) = a2;
  v20 = a2 & 1;
  v21 = a1;
  sub_1E4961F94(a1, v20, v22);
  sub_1E4931B24();
  v23 = v17;
  sub_1E499793C();

  v75 = a5;
  v76 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F0, &qword_1E49A24B8);
  sub_1E4997B5C();
  if (1.0 / *&v70 == 1.0)
  {
    v24 = 0;
    v61 = 0;
    v60 = 0;
    v59 = 0;
    v62 = 0;
    v58 = 0;
    v68 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0.0;
  }

  else
  {
    v62 = sub_1E4997A1C();
    sub_1E49971FC();
    v29 = v85;
    v28 = v85 * 0.5;
    v61 = v88;
    v60 = v89;
    v59 = v90;
    v26 = v86;
    v30 = v87;
    v58 = sub_1E4997CEC();
    v68 = v31;
    v24 = *&v29;
    v27 = v30 << 32;
    v25 = 256;
  }

  v54 = v24;
  v55 = v25;
  *v13 = sub_1E4997CEC();
  v13[1] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80428, &qword_1E49A2508);
  sub_1E493090C(v21, v63 & 1, a3, v13 + *(v33 + 44));
  v34 = v64;
  v56 = v13;
  v35 = *(v64 + 16);
  v36 = v69;
  v57 = v23;
  v37 = v23;
  v38 = v65;
  v35(v69, v37, v65);
  v39 = v27 | v26;
  v63 = v39;
  v40 = v66;
  sub_1E48C12D0(v13, v66, &qword_1ECF80410, &qword_1E49A24F8);
  v41 = v67;
  v35(v67, v36, v38);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80430, &qword_1E49A2510);
  v43 = &v41[*(v42 + 48)];
  *&v70 = v28;
  *(&v70 + 1) = v24;
  *&v71 = v39;
  v44 = v61;
  *(&v71 + 1) = v61;
  v45 = v60;
  *&v72 = v60;
  v46 = v59;
  *(&v72 + 1) = v59;
  v47 = v62;
  *&v73 = v62;
  *(&v73 + 1) = v25;
  v48 = v58;
  *&v74 = v58;
  *(&v74 + 1) = v68;
  v49 = v71;
  *v43 = v70;
  *(v43 + 1) = v49;
  v50 = v73;
  *(v43 + 2) = v72;
  *(v43 + 3) = v50;
  *(v43 + 4) = v74;
  sub_1E48C12D0(v40, &v41[*(v42 + 64)], &qword_1ECF80410, &qword_1E49A24F8);
  sub_1E48C12D0(&v70, &v75, &qword_1ECF80438, &qword_1E49A2518);
  sub_1E48C1338(v56, &qword_1ECF80410, &qword_1E49A24F8);
  v51 = *(v34 + 8);
  v51(v57, v38);
  sub_1E48C1338(v40, &qword_1ECF80410, &qword_1E49A24F8);
  v75 = v28;
  v76 = v54;
  v77 = v63;
  v78 = v44;
  v79 = v45;
  v80 = v46;
  v81 = v47;
  v82 = v55;
  v83 = v48;
  v84 = v68;
  sub_1E48C1338(&v75, &qword_1ECF80438, &qword_1E49A2518);
  return (v51)(v69, v38);
}

uint64_t sub_1E493090C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v25 = a4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80440, &qword_1E49A2520);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v21 - v7;
  v9 = sub_1E49979EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80448, &qword_1E49A2528);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v22 = a1;
  v17 = sub_1E4961F94(a1, a2 & 1, v14);
  swift_getKeyPath();
  v26 = v17;
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  LODWORD(a1) = *(v17 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode);

  if (a1 == 1)
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E69814D8], v9);
    v18 = 1.0;
    v19 = sub_1E4997AAC();
    sub_1E4930C38(v19, 0, 0, 0, v22, a2 & 1, v16);
  }

  else
  {
    sub_1E4930C38(2, 0, 0, 4u, v22, a2 & 1, v16);
    v18 = 0.0;
  }

  *&v16[*(v13 + 36)] = v18;
  sub_1E48C12D0(v16, v8, &qword_1ECF80448, &qword_1E49A2528);
  swift_storeEnumTagMultiPayload();
  sub_1E4931B78();
  sub_1E499772C();
  return sub_1E48C1338(v16, &qword_1ECF80448, &qword_1E49A2528);
}

uint64_t sub_1E4930C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = sub_1E4997EAC();
  v13 = CTFontCreateWithNameAndOptions(v12, 210.0, 0, 0x400uLL);

  type metadata accessor for RollingClockViewModel(0);
  sub_1E49321A0(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  v14 = sub_1E49971EC();
  LOBYTE(v26[0]) = v15 & 1;
  v16 = v13;
  sub_1E48C0618(a1, a2, a3, a4);
  *&v22 = v14;
  BYTE8(v22) = v26[0];
  *&v23 = sub_1E48C36F4();
  *(&v23 + 1) = a1;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25[0] = a4;
  *&v25[8] = v16;
  *&v25[16] = v16;
  *&v25[24] = 640;
  sub_1E4961F94(a5, a6 & 1, v17);
  swift_getKeyPath();
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  sub_1E48D2BC4();
  sub_1E499793C();

  v26[2] = v24;
  v27[0] = *v25;
  *(v27 + 10) = *&v25[10];
  v26[0] = v22;
  v26[1] = v23;
  sub_1E48C1180(v26);
  sub_1E499726C();
  sub_1E4997D2C();
  v18 = sub_1E499727C();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80460, &qword_1E49A2558);
  *(a7 + *(result + 36)) = v18;
  return result;
}

double sub_1E4930EB0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SolarViewModel(0);
  sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  v2 = sub_1E49971EC();
  v4 = v3;
  sub_1E4997B4C();
  result = v6;
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1E4930F70@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *a1 = sub_1E4997CEC();
  a1[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803C0, &qword_1E49A2488);
  sub_1E492FD88(v4, v5, v7, a1 + *(v9 + 44), v6);
  v10 = sub_1E4997A3C();
  LOBYTE(v4) = sub_1E49977CC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803C8, &qword_1E49A2490);
  v12 = a1 + *(result + 36);
  *v12 = v10;
  v12[8] = v4;
  return result;
}

unint64_t sub_1E4931024(uint64_t a1)
{
  result = sub_1E48CD0C4();
  *(a1 + 8) = result;
  return result;
}

void sub_1E493104C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v47 = a1;
  v9 = sub_1E4996D8C();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80500, &qword_1E49A26A0);
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804C0, &qword_1E49A2678);
  v15 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v45 - v16;
  v17 = sub_1E4961F94(a2, a3 & 1, v15);
  swift_getKeyPath();
  v58[0] = v17;
  v48 = sub_1E49321A0(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel, &unk_1E49A10B0);
  sub_1E4996FCC();

  v18 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  sub_1E49321E8(v17 + v18, v58);

  if (!v58[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  v46 = a4;
  v19 = v60;
  v20 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v21 = (*(v20 + 24))(v19, v20);
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.4 green:0.0 blue:0.0 alpha:1.0];
  v23 = CLKUIInterpolateBetweenColors();

  if (!v23)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1E4920094(v58);
  v24 = sub_1E49979DC();
  sub_1E4997CEC();
  sub_1E499722C();
  *&v62[11] = *&v62[35];
  *&v62[19] = v63;
  *&v62[3] = *&v62[27];
  *v55 = v24;
  *&v55[8] = 256;
  *&v55[10] = *v62;
  *&v55[26] = *&v62[8];
  *&v55[42] = *&v62[16];
  *&v55[56] = *(&v63 + 1);
  *&v55[64] = 0x4069000000000000;
  v55[72] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804F0, &qword_1E49A2690);
  sub_1E499720C();
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804C8, &qword_1E49A2680);
  sub_1E493205C();
  sub_1E49321A0(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v26 = v51;
  sub_1E499799C();

  (*(v50 + 8))(v11, v26);
  v56[2] = *&v55[32];
  v57[0] = *&v55[48];
  *(v57 + 9) = *&v55[57];
  v56[0] = *v55;
  v56[1] = *&v55[16];
  sub_1E4932268(v56);
  sub_1E4961F94(a2, a3 & 1, v27);
  v28 = sub_1E491CA14();
  v30 = v29;

  v31 = v54;
  v32.n128_f64[0] = (*(v52 + 32))(v54, v14, v53);
  v33 = (v31 + *(v49 + 36));
  *v33 = v28;
  *(v33 + 1) = v30;
  v34 = sub_1E4961F94(a2, a3 & 1, v32);
  swift_getKeyPath();
  *v55 = v34;
  sub_1E4996FCC();

  v35 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  sub_1E49321E8(v34 + v35, v55);

  v36 = *&v55[24];
  if (!*&v55[24])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v37 = *&v55[32];
  __swift_project_boxed_opaque_existential_1(v55, *&v55[24]);
  v38 = (*(v37 + 24))(v36, v37);
  v39 = [objc_opt_self() blackColor];
  v40 = CLKUIInterpolateBetweenColors();

  v41 = v46;
  if (v40)
  {
    sub_1E4920094(v55);
    v42 = sub_1E49979DC();
    v43 = sub_1E49977CC();
    sub_1E48B4E58(v31, v41);
    v44 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804A0, &qword_1E49A2670) + 36);
    *v44 = v42;
    *(v44 + 8) = v43;
    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1E49316B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1E4996CCC();
  v7 = v6.n128_f64[0];
  sub_1E4961F94(a3, a4 & 1, v6);
  sub_1E491D148(v7);

  return result;
}

uint64_t sub_1E4931720()
{
  v1 = sub_1E499776C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 16);
  sub_1E499775C();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  *(v11 + 32) = v10;
  (*(v2 + 16))(v4, v7, v1);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1E4931E74;
  *(v12 + 24) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804A0, &qword_1E49A2670);
  sub_1E49321A0(&qword_1ECF804A8, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
  sub_1E4931E8C();
  sub_1E499721C();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_1E4931934(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804F0, &qword_1E49A2690);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804F8, &qword_1E49A2698);
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

unint64_t sub_1E4931A7C()
{
  result = qword_1ECF80408;
  if (!qword_1ECF80408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80408);
  }

  return result;
}

unint64_t sub_1E4931B24()
{
  result = qword_1ECF80420;
  if (!qword_1ECF80420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80420);
  }

  return result;
}

unint64_t sub_1E4931B78()
{
  result = qword_1ECF80450;
  if (!qword_1ECF80450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80448, &qword_1E49A2528);
    sub_1E4931C30();
    sub_1E48C1B44(&qword_1ECF80478, &qword_1ECF80480, &qword_1E49A2568, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80450);
  }

  return result;
}

unint64_t sub_1E4931C30()
{
  result = qword_1ECF80458;
  if (!qword_1ECF80458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80460, &qword_1E49A2558);
    type metadata accessor for RollingClockViewModel(255);
    sub_1E48D2BC4();
    sub_1E49321A0(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
    swift_getOpaqueTypeConformance2();
    sub_1E48C1B44(&qword_1ECF80468, &qword_1ECF80470, &qword_1E49A2560, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80458);
  }

  return result;
}

unint64_t sub_1E4931D74()
{
  result = qword_1ECF80488;
  if (!qword_1ECF80488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF803C8, &qword_1E49A2490);
    sub_1E48C1B44(&qword_1ECF80490, &qword_1ECF80498, &qword_1E49A2618, MEMORY[0x1E6981880]);
    sub_1E48C1B44(&qword_1ECF7F430, &qword_1ECF7F438, &qword_1E499BDD8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80488);
  }

  return result;
}

unint64_t sub_1E4931E8C()
{
  result = qword_1ECF804B0;
  if (!qword_1ECF804B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF804A0, &qword_1E49A2670);
    sub_1E4931F44();
    sub_1E48C1B44(&qword_1ECF7F430, &qword_1ECF7F438, &qword_1E499BDD8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF804B0);
  }

  return result;
}

unint64_t sub_1E4931F44()
{
  result = qword_1ECF804B8;
  if (!qword_1ECF804B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF804C0, &qword_1E49A2678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF804C8, &qword_1E49A2680);
    sub_1E4996D8C();
    sub_1E493205C();
    sub_1E49321A0(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF804B8);
  }

  return result;
}

unint64_t sub_1E493205C()
{
  result = qword_1ECF804D0;
  if (!qword_1ECF804D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF804C8, &qword_1E49A2680);
    sub_1E49320E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF804D0);
  }

  return result;
}

unint64_t sub_1E49320E8()
{
  result = qword_1ECF804D8;
  if (!qword_1ECF804D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF800A8, &qword_1E49A0BE0);
    sub_1E48C1B44(&qword_1ECF804E0, &qword_1ECF804E8, &qword_1E49A2688, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF804D8);
  }

  return result;
}

uint64_t sub_1E49321A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E49321E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801E0, &qword_1E49A5370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4932268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF804C8, &qword_1E49A2680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E49322D0()
{
  result = qword_1ECF80508;
  if (!qword_1ECF80508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80510, &unk_1E49A26D0);
    sub_1E4931E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80508);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4932368(uint64_t a1, int a2)
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

uint64_t sub_1E49323B0(uint64_t result, int a2, int a3)
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

char *sub_1E4932410(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80528, qword_1E49A27D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SolarPosition(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, a3, v15);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v8, 0, 1, v13);
    sub_1E4932C80(v8, v17);
    v22 = a2;

    sub_1E4937D20(&v22);
    sub_1E4932CE4(v17);
    return v22;
  }

  else
  {
    v19(v8, 1, 1, v13);
    sub_1E4932C18(v8);
  }

  return a2;
}

id sub_1E493267C(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 40);

      return v3;
    }

    else
    {
      v6 = a2;
      sub_1E4932790(a1, &v12, a2);
      v7 = v13;
      v8 = v14;
      v9 = v16;
      v10 = v17;
      v11 = sub_1E4932D40(v13, v16, v17, v6, v12, v15);

      return v11;
    }
  }

  else
  {
    v5 = [objc_opt_self() blackColor];

    return v5;
  }
}

void sub_1E4932790(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3 - 1;
  if (v3 == 1)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = (a1 + 72);
  v9 = *(a1 + 72);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 40);
  v13 = v7;
  v14 = v11;
  v15 = v9;
  v16 = v6;
  v40 = v13;
  v41 = v12;
  v17 = v12;
  while (1)
  {
    v28 = *(v8 - 5);
    v29 = *(v8 - 4);
    v30 = *(v8 - 3);
    v31 = *(v8 - 2);
    v33 = *(v8 - 1);
    v32 = *v8;
    if (v28 <= a3 && v31 >= a3)
    {
      break;
    }

    if (v4 == 1)
    {
      v18 = v29;
      v19 = v30;
      v20 = v17;
      v21 = v14;
      v22 = v19;
      v23 = v33;
      v24 = v32;
      v25 = v13;
      v13 = v24;

      v26 = v41;
      v27 = v40;

      v17 = v23;
      v10 = v6;
      v14 = v26;
      v15 = v27;
      v16 = v31;
    }

    else
    {
      v31 = v16;
    }

    v8 += 3;
    v28 = v31;
    if (!--v4)
    {
      goto LABEL_13;
    }
  }

  v35 = v29;
  v36 = v30;
  v37 = v33;
  v38 = v32;

  v17 = v35;
  v13 = v36;
  v10 = v31;
  v14 = v37;
  v15 = v38;
LABEL_13:
  *a2 = v28;
  *(a2 + 8) = v17;
  *(a2 + 16) = v13;
  *(a2 + 24) = v10;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
}

uint64_t sub_1E4932958(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f32[0];
  sub_1E49985BC();
  MEMORY[0x1E691B7A0](0x727543726F6C6F63, 0xEB00000000286576);
  sub_1E499824C();
  MEMORY[0x1E691B7A0](11557, 0xE200000000000000);
  v4 = sub_1E493267C(a1, v3);
  v5 = [v4 description];
  v6 = sub_1E4997EEC();
  v8 = v7;

  MEMORY[0x1E691B7A0](v6, v8);

  MEMORY[0x1E691B7A0](41, 0xE100000000000000);
  return 0;
}

char *sub_1E4932A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1E4932410(a1, *(v3 + 8), a2);
  *a3 = v6;
  *(a3 + 8) = result;
  return result;
}

uint64_t sub_1E4932AB8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_1E48F7B30();
  v6 = sub_1E493267C(v3, v2);
  v7 = sub_1E493267C(v5, v4);
  LOBYTE(v5) = sub_1E499848C();

  return v5 & 1;
}

unint64_t sub_1E4932B40(uint64_t a1)
{
  *(a1 + 8) = sub_1E4932B70();
  result = sub_1E4932BC4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4932B70()
{
  result = qword_1ECF80518;
  if (!qword_1ECF80518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80518);
  }

  return result;
}

unint64_t sub_1E4932BC4()
{
  result = qword_1ECF80520;
  if (!qword_1ECF80520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80520);
  }

  return result;
}

uint64_t sub_1E4932C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80528, qword_1E49A27D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4932C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarPosition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4932CE4(uint64_t a1)
{
  v2 = type metadata accessor for SolarPosition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E4932D40(void *a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v7 = 1.0 - a5;
  if (a6 > a5)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (a6 > a5)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (a6 > a5)
  {
    v7 = -a5;
  }

  v10 = (a4 - a5) / (v7 + a6);
  v11 = v9;
  v12 = v8;
  *&v13 = v10;
  [a3 _solveForInput_];
  v15 = CGFloatMin(v14);
  CGFloatMax(v15);
  result = CLKUIInterpolateBetweenColors();
  if (result)
  {
    v17 = result;

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E4932F44()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for DigitalClockFaceComplicationsView(0);
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  sub_1E49331F0();
  v1 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_temperatureLabel;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_temperatureLabel])
  {
    v2 = sub_1E494C9C0(30.0);
    v3 = [objc_opt_self() whiteColor];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v20[4] = sub_1E4934210;
    v20[5] = v4;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1E4923F24;
    v20[3] = &block_descriptor_37;
    v6 = _Block_copy(v20);
    v7 = [v5 initWithDynamicProvider_];
    _Block_release(v6);

    [v2 setTextColor_];

    [v0 addSubview_];
    v8 = *&v0[v1];
    *&v0[v1] = v2;
    v9 = v2;

    sub_1E493381C();
  }

  [v0 frame];
  CGRectGetWidth(v22);
  v10 = CGRectMake();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_dateLabel];
  if (v16)
  {
    [v16 setFrame_];
  }

  v17 = *&v0[v1];
  if (v17)
  {
    [v17 setFrame_];
  }

  v18 = *&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_alarmComplication];
  if (v18)
  {
    v19 = v18;
    [v0 frame];
    [v19 setFrame_];
  }
}

void sub_1E49331F0()
{
  v1 = v0;
  v2 = sub_1E4996D8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 104;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_dateLabel])
  {
    v28 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_dateLabel;
    v6 = sub_1E4933AF0();
    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493BA48(v5);
    v7 = sub_1E4996CEC();
    v8 = objc_opt_self();
    v9 = [v8 textProviderWithDate:v7 units:512];

    v10 = *(v3 + 8);
    v10(v5, v2);
    [v9 setShortUnits_];
    [v9 setTintColor_];
    sub_1E493BA48(v5);
    v11 = sub_1E4996CEC();
    v12 = [v8 textProviderWithDate:v11 units:16];

    v10(v5, v2);
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 whiteColor];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    aBlock[4] = sub_1E4934210;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E4923F24;
    aBlock[3] = &block_descriptor_30;
    v18 = _Block_copy(aBlock);
    v19 = [v17 initWithDynamicProvider_];
    _Block_release(v18);

    [v14 setTintColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E499A180;
    v21 = sub_1E48D9CFC(0, &qword_1ECF80568, 0x1E695B4F0);
    *(inited + 56) = v21;
    v22 = sub_1E4934180();
    *(inited + 32) = v9;
    *(inited + 96) = v21;
    *(inited + 104) = v22;
    *(inited + 64) = v22;
    *(inited + 72) = v14;
    v23 = v14;
    v24 = v9;
    v25 = sub_1E4933610(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80578, &qword_1E49A2850);
    swift_arrayDestroy();
    v26 = sub_1E494C9C0(30.0);
    [v26 setUsesTextProviderTintColoring_];
    [v26 setTextProvider_];
    [v26 setTintColor_];
    [v1 addSubview_];

    v27 = *&v1[v28];
    *&v1[v28] = v26;
  }
}

void *sub_1E4933610(uint64_t a1)
{
  sub_1E49986BC();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    v22 = sub_1E49986AC();
    v23 = sub_1E4997EAC();
    v24 = [objc_opt_self() textProviderWithFormat:v23 arguments:v22];

    return v24;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 40 * v5), *(v6 + 40 * v5 + 24));
    result = sub_1E49989AC();
    v8 = *v3;
    v9 = result[2];
    v10 = __OFADD__(*v3, v9);
    v11 = *v3 + v9;
    if (v10)
    {
      break;
    }

    v12 = v2[4];
    if (v12 >= v11)
    {
      goto LABEL_18;
    }

    if (v12 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v13 = v2[5];
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    v2[4] = v11;
    if ((v11 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v14 = result;
    v15 = swift_slowAlloc();
    v16 = v15;
    v2[5] = v15;
    if (v13)
    {
      if (v15 != v13 || v15 >= &v13[8 * v8])
      {
        memmove(v15, v13, 8 * v8);
      }

      sub_1E499869C();
      result = v14;
LABEL_18:
      v16 = v2[5];
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v14;
    if (!v16)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v18 = result[2];
    if (v18)
    {
      v19 = result + 4;
      v20 = *v3;
      while (1)
      {
        v21 = *v19++;
        *&v16[8 * v20] = v21;
        v20 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v20;
        if (!--v18)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_1E493381C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  sub_1E4934110(v1 + OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_currentTemperature, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1E48C1338(v4, &qword_1ECF80368, &unk_1E49A2840);
    result = *(v1 + OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_temperatureLabel);
    if (result)
    {
      return [result setTextProvider_];
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    [v10 setUnitStyle_];
    v11 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v11 setNumberStyle_];
    [v11 setMaximumFractionDigits_];
    [v10 setNumberFormatter_];
    sub_1E48D9CFC(0, &qword_1ECF80370, 0x1E696B080);
    sub_1E499842C();
    v12 = sub_1E4997EAC();

    v13 = [objc_opt_self() textProviderWithText_];

    v14 = *(v1 + OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_temperatureLabel);
    if (v14)
    {
      [v14 setTextProvider_];
      v15 = v11;
    }

    else
    {
      v15 = v10;
      v10 = v11;
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1E4933AF0()
{
  v1 = [v0 _shouldReverseLayoutDirection];
  v2 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_colors;
  if (!v1)
  {
LABEL_22:
    v2 = *&v0[v2];
    if (v2 >> 62)
    {
      if (sub_1E49986EC())
      {
        goto LABEL_24;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      if ((v2 & 0xC000000000000001) != 0)
      {

        v19 = MEMORY[0x1E691BDE0](0, v2);

        return v19;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v2 + 32);
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_36;
    }

    v14 = [objc_opt_self() whiteColor];
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v16 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v23[4] = sub_1E492429C;
    v23[5] = v15;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1E4923F24;
    v23[3] = &block_descriptor_6;
    v17 = _Block_copy(v23);
    v18 = [v16 initWithDynamicProvider_];
    _Block_release(v17);

    return v18;
  }

  v3 = *&v0[OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_colors];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > 2)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  if (sub_1E49986EC() <= 2)
  {
LABEL_21:
    v2 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_colors;
    goto LABEL_22;
  }

LABEL_4:
  v4 = *&v0[v2];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

LABEL_36:
  v5 = sub_1E49986EC();
LABEL_6:
  v6 = round(0.75 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v7 = *&v0[v2];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      goto LABEL_11;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_40:
  v20 = sub_1E49986EC();
  v9 = v20 - 1;
  if (__OFSUB__(v20, 1))
  {
    goto LABEL_42;
  }

LABEL_11:
  v10 = *&v0[v2];
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

LABEL_43:
  v21 = v9;
  result = sub_1E49986EC();
  v9 = v21;
  v10 = *&v0[v2];
LABEL_13:
  if ((result & ~(result >> 63)) >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = result & ~(result >> 63);
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v22 = v10;

    v18 = MEMORY[0x1E691BDE0](v12, v22);

    return v18;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v13 = *(v10 + 8 * v12 + 32);
LABEL_27:

  return v13;
}

id sub_1E4933E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DigitalClockFaceComplicationsView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DigitalClockFaceComplicationsView(uint64_t a1)
{
  result = qword_1ECF80548;
  if (!qword_1ECF80548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4933F94(uint64_t a1)
{
  sub_1E49340A4(319, &qword_1ECF80320, &unk_1ECF816A0, &unk_1E49A5C90);
  if (v1 <= 0x3F)
  {
    sub_1E49340A4(319, &qword_1ECF80558, &qword_1ECF80560, &qword_1E49A2820);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E49340A4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E49984BC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4934110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4934180()
{
  result = qword_1ECF80570;
  if (!qword_1ECF80570)
  {
    sub_1E48D9CFC(255, &qword_1ECF80568, 0x1E695B4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80570);
  }

  return result;
}

uint64_t sub_1E4934214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E48C8304(a1, v7);
  if (v8 || (, sub_1E48B7448(v7, v9), sub_1E48C8304(a2, v7), v8))
  {
    sub_1E48C8360(v7);
    result = sub_1E49986DC();
    __break(1u);
  }

  else
  {

    sub_1E48B7448(v7, v6);
    sub_1E48B7448(v9, a3);
    result = sub_1E48B7448(v6, a3 + 40);
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 2;
  }

  return result;
}

uint64_t sub_1E4934308@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
    v18 = MEMORY[0x1E69E7CC0];
    sub_1E4906E78(0, v3, 0);
    v4 = v18;
    v6 = (v5 + 48);
    v12 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      v7 = v6[-1];
      v8 = v6->i64[0];
      v18 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v14 = v7;
        sub_1E4906E78((v9 > 1), v10 + 1, 1);
        v7 = v14;
        v4 = v18;
      }

      v13 = vdivq_f64(vcvtq_f64_s64(v7), v12);
      v16 = &type metadata for SolidClockFaceColor;
      v17 = sub_1E48D5004();
      v11 = swift_allocObject();
      *&v15 = v11;
      *(v11 + 16) = v13;
      *(v11 + 32) = v8 / 255.0;
      *(v11 + 40) = 0x3FF0000000000000;
      *(v4 + 16) = v10 + 1;
      result = sub_1E48B7448(&v15, v4 + 40 * v10 + 32);
      v6 = (v6 + 24);
      --v3;
    }

    while (v3);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v4;
  *(a2 + 96) = 1;
  return result;
}

uint64_t sub_1E4934478@<X0>(uint64_t a1@<X8>)
{
  *(&v14 + 1) = &type metadata for SolidClockFaceColor;
  v2 = sub_1E48D5004();
  *&v15 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E49A2860;
  *(v3 + 32) = xmmword_1E49A2870;
  v18 = 0;
  *(&v15 + 1) = 0;
  *&v16 = 0;
  *&v13 = v3;
  v9 = &type metadata for SolidClockFaceColor;
  v10 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E49A2880;
  *(v4 + 32) = xmmword_1E49A2890;
  v12 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v8[0] = v4;
  sub_1E4934214(&v13, v8, v19);
  sub_1E48C8360(v8);
  sub_1E48C8360(&v13);
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v13 = 0u;
  v14 = 0u;
  sub_1E4920CEC(&v13, v8);
  if (v9 == 1)
  {
    sub_1E4920DCC(&v13);
    v5 = 0xE800000000000000;
    v6 = 0x6D75727463657073;
  }

  else if (v9)
  {
    sub_1E4920DCC(&v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    v5 = 0xE600000000000000;
    v6 = 0x73726F6C6F63;
  }

  else
  {
    sub_1E4920DCC(&v13);
    v5 = 0xE300000000000000;
    v6 = 7957363;
  }

  sub_1E493696C(v6, v5, a1);

  return sub_1E48C8360(v19);
}

uint64_t sub_1E4934608@<X0>(uint64_t a1@<X8>)
{
  v14 = &type metadata for SolidClockFaceColor;
  v2 = sub_1E48D5004();
  *&v15 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E49A28A0;
  *(v3 + 32) = xmmword_1E499C3B0;
  v18 = 0;
  *(&v15 + 1) = 0;
  *&v16 = 0;
  v13[0] = v3;
  v9 = &type metadata for SolidClockFaceColor;
  v10 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E49A28B0;
  *(v4 + 32) = xmmword_1E49A28C0;
  v12 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v8[0] = v4;
  sub_1E4934214(v13, v8, v19);
  sub_1E48C8360(v8);
  sub_1E48C8360(v13);
  memset(v13, 0, sizeof(v13));
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sub_1E4920CEC(v13, v8);
  if (v9 == 1)
  {
    sub_1E4920DCC(v13);
    v5 = 0xE800000000000000;
    v6 = 0x6D75727463657073;
  }

  else if (v9)
  {
    sub_1E4920DCC(v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    v5 = 0xE600000000000000;
    v6 = 0x73726F6C6F63;
  }

  else
  {
    sub_1E4920DCC(v13);
    v5 = 0xE300000000000000;
    v6 = 7957363;
  }

  sub_1E493696C(v6, v5, a1);

  return sub_1E48C8360(v19);
}

uint64_t sub_1E49347A0@<X0>(uint64_t a1@<X8>)
{
  v8[3] = &type metadata for SolidClockFaceColor;
  v2 = sub_1E48D5004();
  v8[4] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E49A28D0;
  *(v3 + 32) = xmmword_1E49A28E0;
  v9 = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[0] = v3;
  v6[3] = &type metadata for SolidClockFaceColor;
  v6[4] = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = vdupq_n_s64(0x3FE999999999999AuLL);
  *(v4 + 32) = xmmword_1E49A28F0;
  v7 = 0;
  v6[5] = 0;
  v6[6] = 0;
  v6[0] = v4;
  sub_1E4934214(v8, v6, v10);
  sub_1E48C8360(v6);
  sub_1E48C8360(v8);
  sub_1E493696C(0x614D646574746F64, 0xED00006C6C694670, a1);
  return sub_1E48C8360(v10);
}

uint64_t sub_1E49348B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1E4906E58(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_1E48CD210(v4, v17);
      v5 = v18;
      v6 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v7 = (*(v6 + 32))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      v20 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1E4906E58((v10 > 1), v11 + 1, 1);
        v2 = v20;
      }

      *(v2 + 16) = v11 + 1;
      v12 = v2 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v17[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E49375A8();
  v13 = sub_1E4997E8C();
  v15 = v14;

  v17[0] = 91;
  v17[1] = 0xE100000000000000;
  MEMORY[0x1E691B7A0](v13, v15);

  MEMORY[0x1E691B7A0](93, 0xE100000000000000);
  return v17[0];
}

__n128 DynamicClockFaceColor.base.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 DynamicClockFaceColor.variation.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t DynamicClockFaceColor.stringValue.getter(__n128 a1)
{
  sub_1E49985BC();

  v1 = SolidClockFaceColor.stringValue.getter();
  MEMORY[0x1E691B7A0](v1);

  MEMORY[0x1E691B7A0](0x6974616972617620, 0xEC000000203A6E6FLL);
  v2 = SolidClockFaceColor.stringValue.getter();
  MEMORY[0x1E691B7A0](v2);

  MEMORY[0x1E691B7A0](93, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

unint64_t SolidClockFaceColor.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E63B0];
  *(v5 + 16) = xmmword_1E499B670;
  v7 = MEMORY[0x1E69E6438];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v1;
  v8 = sub_1E4997EFC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E499B670;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 32) = v2;
  v12 = sub_1E4997EFC();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E499B670;
  *(v15 + 56) = v6;
  *(v15 + 64) = v7;
  *(v15 + 32) = v4;
  v16 = sub_1E4997EFC();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E499B670;
  *(v19 + 56) = v6;
  *(v19 + 64) = v7;
  *(v19 + 32) = v3;
  v20 = sub_1E4997EFC();
  v22 = v21;
  sub_1E49985BC();

  MEMORY[0x1E691B7A0](v8, v10);

  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v12, v14);

  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v16, v18);

  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v20, v22);

  MEMORY[0x1E691B7A0](93, 0xE100000000000000);
  return 0xD000000000000015;
}

id DynamicClockFaceColor.primaryUIColor.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:*v0 green:v0[1] blue:v0[2] alpha:v0[3]];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v7[4] = sub_1E492429C;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E4923F24;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  return v5;
}

uint64_t DynamicClockFaceColor.primaryColor.getter()
{
  v0 = sub_1E49979EC();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  return sub_1E4997AAC();
}

id DynamicClockFaceColor.secondaryUIColor.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v0[4] green:v0[5] blue:v0[6] alpha:v0[7]];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v7[4] = sub_1E4934210;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E4923F24;
  v7[3] = &block_descriptor_14_0;
  v4 = _Block_copy(v7);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  return v5;
}

uint64_t DynamicClockFaceColor.secondaryColor.getter()
{
  v0 = sub_1E49979EC();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  return sub_1E4997AAC();
}

uint64_t sub_1E4935224()
{
  if (*v0)
  {
    return 0x6F69746169726176;
  }

  else
  {
    return 1702060386;
  }
}

void sub_1E493525C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E499884C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1E4935340(uint64_t a1)
{
  v2 = sub_1E4936C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E493537C(uint64_t a1)
{
  v2 = sub_1E4936C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicClockFaceColor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80588, &qword_1E49A2908);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = v3[2];
  v12 = v3[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4936C74();
  sub_1E49989CC();
  v10 = v3[1];
  v15 = *v3;
  v16 = v10;
  v14 = 0;
  sub_1E4936CC8();
  sub_1E49987DC();
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v14 = 1;
    sub_1E49987DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DynamicClockFaceColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E691C170](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1E691C170](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1E691C170](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1E691C170](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1E691C170](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1E691C170](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1E691C170](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  return MEMORY[0x1E691C170](*&v15);
}

uint64_t DynamicClockFaceColor.hashValue.getter()
{
  sub_1E499892C();
  DynamicClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t DynamicClockFaceColor.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80598, &qword_1E49A2910);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4936C74();
  sub_1E49989BC();
  if (!v2)
  {
    v16 = 0;
    sub_1E4924310();
    sub_1E499878C();
    v12 = v14;
    v13 = v15;
    v16 = 1;
    sub_1E499878C();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    *a2 = v12;
    a2[1] = v9;
    v10 = v15;
    a2[2] = v14;
    a2[3] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t _s11ClockPoster05SolidA9FaceColorV07primaryE07SwiftUI0E0Vvg_0()
{
  v0 = sub_1E49979EC();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  return sub_1E4997AAC();
}

uint64_t sub_1E493595C()
{
  v0 = sub_1E49979EC();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  return sub_1E4997AAC();
}

uint64_t sub_1E4935A44()
{
  sub_1E499892C();
  DynamicClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t sub_1E4935A88(uint64_t a1)
{
  sub_1E499892C();
  DynamicClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

ClockPoster::SolidClockFaceColor __swiftcall SolidClockFaceColor.init(_:)(UIColor a1)
{
  v3 = v1;
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0.0;
  v11[0] = 0;
  v8 = 0.0;
  v9 = 0.0;
  [(objc_class *)a1.super.isa getRed:v11 green:&v10 blue:&v9 alpha:&v8];

  v5 = v10;
  v4 = *v11;
  v7 = v8;
  v6 = v9;
  *v3 = v11[0];
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  result.alpha = v7;
  result.blue = v6;
  result.green = v5;
  result.red = v4;
  return result;
}

ClockPoster::SolidClockFaceColor __swiftcall SolidClockFaceColor.init(red:green:blue:alpha:)(Swift::Double red, Swift::Double green, Swift::Double blue, Swift::Double alpha)
{
  *v4 = red;
  v4[1] = green;
  v4[2] = blue;
  v4[3] = alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

id sub_1E4935BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:*v3 green:v3[1] blue:v3[2] alpha:v3[3]];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v12[4] = a2;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E4923F24;
  v12[3] = a3;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithDynamicProvider_];
  _Block_release(v9);

  return v10;
}

uint64_t sub_1E4935D04()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E4935D64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E49373CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4935D8C(uint64_t a1)
{
  v2 = sub_1E4936D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4935DC8(uint64_t a1)
{
  v2 = sub_1E4936D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SolidClockFaceColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF805A0, &qword_1E49A2918);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4936D1C();
  sub_1E49989CC();
  v8[15] = 0;
  sub_1E49987BC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1E49987BC();
    v8[13] = 2;
    sub_1E49987BC();
    v8[12] = 3;
    sub_1E49987BC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SolidClockFaceColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E691C170](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E691C170](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E691C170](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1E691C170](*&v7);
}

uint64_t SolidClockFaceColor.hashValue.getter()
{
  sub_1E499892C();
  SolidClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t SolidClockFaceColor.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF805B0, &qword_1E49A2920);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4936D1C();
  sub_1E49989BC();
  if (!v2)
  {
    v22 = 0;
    sub_1E499876C();
    v10 = v9;
    v21 = 1;
    sub_1E499876C();
    v12 = v11;
    v20 = 2;
    sub_1E499876C();
    v15 = v14;
    v19 = 3;
    sub_1E499876C();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1E49362A4()
{
  sub_1E499892C();
  SolidClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t sub_1E49362F4(uint64_t a1)
{
  sub_1E499892C();
  SolidClockFaceColor.hash(into:)();
  return sub_1E499896C();
}

uint64_t UIColor.cpStringValue.getter()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25[0] = 0;
  v22 = 0;
  v23 = 0;
  [v0 getRed:v25 green:&v24 blue:&v23 alpha:&v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E499B670;
  v2 = v25[0];
  v3 = MEMORY[0x1E69E7DE0];
  *(v1 + 56) = MEMORY[0x1E69E7DE0];
  v4 = sub_1E4936D70();
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  v5 = sub_1E4997EFC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E499B670;
  v7 = v24;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 32) = v7;
  v8 = sub_1E4997EFC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E499B670;
  v12 = v23;
  *(v11 + 56) = v3;
  *(v11 + 64) = v4;
  *(v11 + 32) = v12;
  v13 = sub_1E4997EFC();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E499B670;
  v17 = v22;
  *(v16 + 56) = v3;
  *(v16 + 64) = v4;
  *(v16 + 32) = v17;
  v18 = sub_1E4997EFC();
  v20 = v19;
  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v8, v10);

  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v13, v15);

  MEMORY[0x1E691B7A0](44, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v18, v20);

  return v5;
}

void *static UIColor.cpColor(from:)(uint64_t a1, unint64_t a2)
{
  v27 = a1;
  v28 = a2;
  sub_1E48D2EE4();
  v4 = sub_1E49984DC();
  if (v4[2] != 4)
  {

    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1E49985BC();
    MEMORY[0x1E691B7A0](0xD00000000000001CLL, 0x80000001E49A7FB0);
    MEMORY[0x1E691B7A0](a1, a2);
    v10 = "Cannot convert stringValue '";
    v11 = 0xD00000000000002ELL;
    goto LABEL_7;
  }

  v5 = v4[4];
  v6 = v4[5];
  v7 = v4;
  LODWORD(v27) = 0;

  v8 = sub_1E4936B28(v5, v6, &v27);

  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = *&v27;
  if (*&v27 < 0.0)
  {
    goto LABEL_4;
  }

  result = v7;
  if (*&v27 > 1.0)
  {
    goto LABEL_4;
  }

  if (v7[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  v16 = v7[6];
  v17 = v7[7];
  LODWORD(v27) = 0;

  v18 = sub_1E4936B28(v16, v17, &v27);

  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = *&v27;
  if (*&v27 < 0.0)
  {
    goto LABEL_4;
  }

  result = v7;
  if (*&v27 > 1.0)
  {
    goto LABEL_4;
  }

  if (v7[2] < 3uLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v7[8];
  v21 = v7[9];
  LODWORD(v27) = 0;

  v22 = sub_1E4936B28(v20, v21, &v27);

  if (!v22 || (v23 = *&v27, *&v27 < 0.0) || (result = v7, *&v27 > 1.0))
  {
LABEL_4:

LABEL_5:
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1E49985BC();
    MEMORY[0x1E691B7A0](0xD00000000000001CLL, 0x80000001E49A7FB0);
    MEMORY[0x1E691B7A0](a1, a2);
    v10 = "cuse components count is wrong";
    v11 = 0xD00000000000001BLL;
LABEL_7:
    MEMORY[0x1E691B7A0](v11, v10 | 0x8000000000000000);
    v12 = v27;
    v13 = v28;
    sub_1E4936DC4();
    swift_allocError();
    *v14 = v12;
    v14[1] = v13;
    return swift_willThrow();
  }

  if (v7[2] >= 4uLL)
  {
    v24 = v7[10];
    v25 = result[11];

    LODWORD(v27) = 0;
    v26 = sub_1E4936B28(v24, v25, &v27);

    if (v26 && *&v27 >= 0.0 && *&v27 <= 1.0)
    {
      return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v9 green:v19 blue:v23 alpha:{*&v27, 44, 0xE100000000000000}];
    }

    goto LABEL_5;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1E493696C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E48C8304(v3, &v19);
  if (v21 > 1u)
  {
    if (v21 != 2)
    {
      sub_1E48C8304(v3, a3);
      sub_1E48C8360(&v19);
      return;
    }

    sub_1E48B7448(&v19, v16);
    sub_1E48B7448(&v20, v18);
    sub_1E48B7448(v16, a3);
    sub_1E48B7448(v18, a3 + 40);
    *(a3 + 80) = a1;
    *(a3 + 88) = a2;
    v10 = 2;
LABEL_8:
    *(a3 + 96) = v10;

    return;
  }

  if (v21)
  {
    v11 = v19;

    *a3 = v11;
    *(a3 + 8) = a1;
    *(a3 + 16) = a2;
    v10 = 1;
    goto LABEL_8;
  }

  sub_1E48B7448(&v19, v18);
  sub_1E48CD210(v18, a3);
  memset(v16, 0, sizeof(v16));
  v17 = 3;
  v7 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(v16);
  if (v7)
  {
    v8 = 0xEE00656C62617A69;
    v9 = 0x6D6F747375636E75;
  }

  else
  {
    v12 = sub_1E4921538();
    if (v13)
    {
      v9 = v12;
      v8 = v13;
    }

    else
    {
      v14 = sub_1E4921408();
      v9 = sub_1E49348B8(v14);
      v8 = v15;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  *(a3 + 40) = v9;
  *(a3 + 48) = v8;
  *(a3 + 96) = 0;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1E4936B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1E499859C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t _s11ClockPoster07DynamicA9FaceColorV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))))
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])))) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E4936C74()
{
  result = qword_1ECF80590;
  if (!qword_1ECF80590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80590);
  }

  return result;
}

unint64_t sub_1E4936CC8()
{
  result = qword_1EE2BB4D8;
  if (!qword_1EE2BB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4D8);
  }

  return result;
}

unint64_t sub_1E4936D1C()
{
  result = qword_1ECF805A8;
  if (!qword_1ECF805A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805A8);
  }

  return result;
}

unint64_t sub_1E4936D70()
{
  result = qword_1ECF805B8;
  if (!qword_1ECF805B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805B8);
  }

  return result;
}

unint64_t sub_1E4936DC4()
{
  result = qword_1ECF805C0;
  if (!qword_1ECF805C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805C0);
  }

  return result;
}

unint64_t sub_1E4936E58()
{
  result = qword_1EE2BB4B0;
  if (!qword_1EE2BB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4B0);
  }

  return result;
}

unint64_t sub_1E4936EAC()
{
  result = qword_1EE2BB4A8;
  if (!qword_1EE2BB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4A8);
  }

  return result;
}

unint64_t sub_1E4936F04()
{
  result = qword_1EE2BB4A0;
  if (!qword_1EE2BB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4A0);
  }

  return result;
}

uint64_t sub_1E4936F98(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1E4936FEC()
{
  result = qword_1EE2BB4D0;
  if (!qword_1EE2BB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4D0);
  }

  return result;
}

unint64_t sub_1E4937044()
{
  result = qword_1EE2BB4C8;
  if (!qword_1EE2BB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4C8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E4937110(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4937130(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1E49371C0()
{
  result = qword_1ECF805C8;
  if (!qword_1ECF805C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805C8);
  }

  return result;
}

unint64_t sub_1E4937218()
{
  result = qword_1ECF805D0;
  if (!qword_1ECF805D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805D0);
  }

  return result;
}

unint64_t sub_1E4937270()
{
  result = qword_1ECF805D8;
  if (!qword_1ECF805D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805D8);
  }

  return result;
}

unint64_t sub_1E49372C8()
{
  result = qword_1ECF805E0;
  if (!qword_1ECF805E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805E0);
  }

  return result;
}

unint64_t sub_1E4937320()
{
  result = qword_1ECF805E8;
  if (!qword_1ECF805E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF805E8);
  }

  return result;
}

unint64_t sub_1E4937378()
{
  result = qword_1ECF805F0[0];
  if (!qword_1ECF805F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF805F0);
  }

  return result;
}

uint64_t sub_1E49373CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E499884C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1E499884C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1E499884C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E499884C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

_BYTE *sub_1E4937528@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1E49375A8()
{
  result = qword_1ECF7F278;
  if (!qword_1ECF7F278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F270, &qword_1E499B8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F278);
  }

  return result;
}

double sub_1E4937638()
{
  v12[5] = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v13[0] = 0;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.384313725 green:0.48627451 blue:0.643137255 alpha:1.0];
  v15 = 1;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.384313725 green:0.48627451 blue:0.643137255 alpha:1.0];
  v17 = 2;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.768627451 blue:1.0 alpha:1.0];
  v19 = 3;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.768627451 blue:1.0 alpha:1.0];
  v21 = 4;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.768627451 blue:1.0 alpha:1.0];
  v23 = 5;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.509803922 blue:0.788235294 alpha:1.0];
  v25 = 6;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.470588235 green:0.509803922 blue:0.788235294 alpha:1.0];
  v27 = 7;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v29 = 8;
  v12[0] = MEMORY[0x1E69E7CC0];
  sub_1E4906E98(0, 9, 0);
  v0 = v12[0];
  v1 = objc_opt_self();
  v2 = 0;
  v3 = *MEMORY[0x1E6979EB8];
  do
  {
    v4 = qword_1E49A2FC8[SLOBYTE(v12[v2 + 6])];
    v5 = v12[v2 + 5];
    v6 = [v1 functionWithName_];
    v12[0] = v0;
    v8 = *(v0 + 2);
    v7 = *(v0 + 3);
    if (v8 >= v7 >> 1)
    {
      v10 = v6;
      sub_1E4906E98((v7 > 1), v8 + 1, 1);
      v6 = v10;
      v0 = v12[0];
    }

    *(v0 + 2) = v8 + 1;
    v9 = &v0[24 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
    *(v9 + 6) = v6;
    v2 += 2;
  }

  while (v2 != 18);
  swift_arrayDestroy();
  v12[0] = v0;

  sub_1E4937D20(v12);

  return 0.0;
}

double sub_1E493799C()
{
  v12[5] = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.549019608 blue:0.815686275 alpha:1.0];
  v13[0] = 0;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.549019608 blue:0.815686275 alpha:1.0];
  v15 = 1;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.674509804 blue:0.4 alpha:1.0];
  v17 = 2;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.552941176 green:0.658823529 blue:0.22745098 alpha:1.0];
  v19 = 3;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.588235294 green:0.529411765 blue:0.352941176 alpha:1.0];
  v21 = 4;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.619607843 green:0.4 blue:0.478431373 alpha:1.0];
  v23 = 5;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.898039216 green:0.588235294 blue:0.149019608 alpha:1.0];
  v25 = 6;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.360784314 blue:0.184313725 alpha:1.0];
  v27 = 7;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.803921569 green:0.549019608 blue:0.815686275 alpha:1.0];
  v29 = 8;
  v12[0] = MEMORY[0x1E69E7CC0];
  sub_1E4906E98(0, 9, 0);
  v0 = v12[0];
  v1 = objc_opt_self();
  v2 = 0;
  v3 = *MEMORY[0x1E6979EB8];
  do
  {
    v4 = qword_1E49A2FC8[SLOBYTE(v12[v2 + 6])];
    v5 = v12[v2 + 5];
    v6 = [v1 functionWithName_];
    v12[0] = v0;
    v8 = *(v0 + 2);
    v7 = *(v0 + 3);
    if (v8 >= v7 >> 1)
    {
      v10 = v6;
      sub_1E4906E98((v7 > 1), v8 + 1, 1);
      v6 = v10;
      v0 = v12[0];
    }

    *(v0 + 2) = v8 + 1;
    v9 = &v0[24 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
    *(v9 + 6) = v6;
    v2 += 2;
  }

  while (v2 != 18);
  swift_arrayDestroy();
  v12[0] = v0;

  sub_1E4937D20(v12);

  return 0.0;
}

void sub_1E4937D20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E4952DAC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1E49987EC();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1E49980EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1E4937E78(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1E4937E78(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1E48E9FB4(v7);
    }

    v84 = v7 + 16;
    v85 = *(v7 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1E4938440((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v13 = *v11;
      v12 = v11 + 6;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 3;
        v18 = v17 >= v16;
        ++v15;
        v16 = v17;
        if ((((v9 < v14) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            v26 = *(v23 - 24);
            v22[2] = *(v23 - 8);
            *v22 = v26;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1E48EA0AC(0, *(v7 + 2) + 1, 1, v7);
    }

    v37 = *(v7 + 2);
    v36 = *(v7 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v7 = sub_1E48EA0AC((v36 > 1), v37 + 1, 1, v7);
    }

    *(v7 + 2) = v38;
    v39 = v7 + 32;
    v40 = &v7[16 * v37 + 32];
    *v40 = v8;
    *(v40 + 1) = v6;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 4);
          v43 = *(v7 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[16 * v41];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[16 * v41 - 16];
        v80 = *v79;
        v81 = &v39[16 * v41];
        v82 = *(v81 + 1);
        sub_1E4938440((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v7 + 2);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        memmove(&v39[16 * v41], v81 + 16, 16 * (v83 - 1 - v41));
        *(v7 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[16 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[16 * v41];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1E4938440(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 3;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 3, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1E4938688(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 9))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 8);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E49386D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E493872C(uint64_t a1)
{
  result = sub_1E49984BC();
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

uint64_t sub_1E49387E4()
{
  v1 = *(*v0 + 96);
  v2 = sub_1E49984BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1E49388A0()
{
  sub_1E49387E4();

  return swift_deallocClassInstance();
}

void sub_1E4938964(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v60) = a4;
  v58 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF806F8, &qword_1E49A30D8);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80700, &qword_1E49A30E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v59 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v24 = *(a2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v24 + 4);
  swift_endAccess();
  swift_beginAccess();
  v25 = *(a2 + 24);
  if (*(v25 + 16) && (v26 = sub_1E4948474(a1), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + 8 * v26);
    swift_retain_n();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF80708, &unk_1E49A30E8);
    v28 = swift_allocObject();
    v29 = *(*v28 + 96);
    v30 = sub_1E4996D8C();
    (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
    v31 = *(*v28 + 104);
    type metadata accessor for CPUnfairLock();
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v28 + v31) = v32;
    *(v28 + *(*v28 + 112)) = MEMORY[0x1E69E7CC8];
    *(v28 + *(*v28 + 120)) = 0;
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    sub_1E4986964(v28, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + 24) = v68;
    swift_endAccess();
  }

  v34 = *(*v28 + 104);
  v35 = *(v28 + v34);
  swift_beginAccess();
  os_unfair_lock_lock(v35 + 4);
  swift_endAccess();
  v36 = *(*v28 + 120);
  v37 = *(v28 + v36);
  if ((v37 & 1) == 0)
  {
    *(v28 + v36) = 1;
  }

  v38 = *(v28 + v34);
  swift_beginAccess();
  os_unfair_lock_unlock(v38 + 4);
  swift_endAccess();
  v39 = sub_1E4996D8C();
  v40 = *(*(v39 - 8) + 56);
  v67 = v39;
  v40(v23, 1, 1);
  if ((v37 & 1) == 0)
  {
    swift_beginAccess();
    os_unfair_lock_unlock(v24 + 4);
    swift_endAccess();
    v41 = sub_1E499816C();
    (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
    sub_1E499814C();

    v42 = sub_1E499813C();
    v43 = swift_allocObject();
    v44 = MEMORY[0x1E69E85E0];
    *(v43 + 16) = v42;
    *(v43 + 24) = v44;
    *(v43 + 32) = a3;
    *(v43 + 40) = v60;
    sub_1E498DD1C(0, 0, v18, &unk_1E49A30F8, v43);

    v45 = v59;
    sub_1E493BA48(v59);
    swift_beginAccess();
    os_unfair_lock_lock(v24 + 4);
    swift_endAccess();
    (v40)(v45, 0, 1, v67);
    sub_1E49393E8(v45, v23);
  }

  v57 = v24;
  v59 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB80, &unk_1E49A2260);
  v47 = *(v46 - 8);
  v60 = *(v47 + 56);
  v48 = v61;
  v60(v61, 1, 1, v46);
  v49 = *(v28 + v34);
  swift_beginAccess();
  os_unfair_lock_lock(v49 + 4);
  v50 = swift_endAccess();
  v51 = MEMORY[0x1EEE9AC00](v50);
  *(&v56 - 2) = v28;
  *(&v56 - 1) = v23;
  v56 = v23;
  (*(v64 + 104))(v63, *MEMORY[0x1E69E8650], v65, v51);
  v52 = v62;
  sub_1E49981BC();
  sub_1E48C1338(v48, &qword_1ECF80700, &qword_1E49A30E0);
  v60(v52, 0, 1, v46);
  sub_1E4939244(v52, v48);
  v53 = *(v28 + v34);
  swift_beginAccess();
  os_unfair_lock_unlock(v53 + 4);
  swift_endAccess();
  v54 = v66;
  sub_1E49392B4(v48, v66);
  if ((*(v47 + 48))(v54, 1, v46) == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1E48C1338(v48, &qword_1ECF80700, &qword_1E49A30E0);
    (*(v47 + 32))(v58, v54, v46);
    sub_1E48C1338(v56, &qword_1ECF809D0, &qword_1E499D6C0);
    v55 = v57;
    swift_beginAccess();
    os_unfair_lock_unlock(v55 + 4);
    swift_endAccess();
  }
}

uint64_t sub_1E49391BC()
{

  return v0;
}

uint64_t sub_1E49391E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E4939244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80700, &qword_1E49A30E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E49392B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80700, &qword_1E49A30E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4939324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E493CFF8(a1, v4, v5, v6, v7);
}

uint64_t sub_1E49393E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E4939498(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = aBlock - v10;
  if ([objc_opt_self() isMainThread])
  {
    a1();
    return;
  }

  v12 = type metadata accessor for TimeString(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v11, 1, 1, v12);
  sub_1E48D9CFC(0, &qword_1ECF809E0, 0x1E69E9610);
  v14 = sub_1E499839C();
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = a1;
  v15[4] = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E49456A0;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1E4945B54;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E496F580;
  aBlock[3] = &block_descriptor_130;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v14, v17);

  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E48C12D0(v11, v8, &qword_1ECF815D0, &unk_1E499A370);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_1E4945410(v8, a3, type metadata accessor for TimeString);
  sub_1E48C1338(v11, &qword_1ECF815D0, &unk_1E499A370);
}

void sub_1E49397B0(void (*a1)(void *__return_ptr), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    a1(aBlock);
    return;
  }

  v9 = 256;
  sub_1E48D9CFC(0, &qword_1ECF809E0, 0x1E69E9610);
  v4 = sub_1E499839C();
  v5 = swift_allocObject();
  v5[2] = &v9;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E49453B4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1E48C36A4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E496F580;
  aBlock[3] = &block_descriptor_8;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else if ((v9 & 0x100) == 0)
  {

    return;
  }

  __break(1u);
}

uint64_t sub_1E493997C(uint64_t a1, void (*a2)(__n128))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  a2(v5);
  v8 = type metadata accessor for TimeString(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return sub_1E48EC0CC(v7, a1, &qword_1ECF815D0, &unk_1E499A370);
}

uint64_t sub_1E4939A6C(char a1)
{
  sub_1E499892C();
  MEMORY[0x1E691C170](qword_1E49A3A98[a1]);
  return sub_1E499896C();
}

void sub_1E4939AC0(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F0, &qword_1E49A3998);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = (&v40 - v4);
  v5 = type metadata accessor for TextClockDescriptor(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A30, &qword_1E49A39D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A08, &qword_1E49A39C0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v46 = a1;
  v47 = v19;
  v41 = v15;
  if (!v20)
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        (*(v12 + 56))(v10, 1, 1, v11, v13);
        v25 = 0;
        goto LABEL_11;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v21 = v18;
LABEL_10:
  v25 = (v20 - 1) & v20;
  v26 = __clz(__rbit64(v20)) | (v21 << 6);
  sub_1E4945478(*(v16 + 48) + *(v43 + 72) * v26, v7, type metadata accessor for TextClockDescriptor);
  v27 = *(*(v16 + 56) + 8 * v26);
  v28 = v7;
  v29 = *(v11 + 48);
  sub_1E4945410(v28, v10, type metadata accessor for TextClockDescriptor);
  *&v10[v29] = v27;
  (*(v12 + 56))(v10, 0, 1, v11);
  v30 = v27;
  v24 = v21;
LABEL_11:
  *v1 = v16;
  v1[1] = v17;
  v1[2] = v47;
  v1[3] = v24;
  v1[4] = v25;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E48C1338(v10, &qword_1ECF80A30, &qword_1E49A39D8);
    (*(v44 + 56))(v46, 1, 1, v45);
    return;
  }

  v31 = v10;
  v32 = v41;
  sub_1E48C15C8(v31, v41, &qword_1ECF80A08, &qword_1E49A39C0);
  v33 = v45;
  v34 = *(v45 + 48);
  v35 = v1[5];
  v36 = v42;
  *v42 = v35;
  sub_1E48C15C8(v32, v36 + v34, &qword_1ECF80A08, &qword_1E49A39C0);
  v37 = __OFADD__(v35, 1);
  v38 = v35 + 1;
  v39 = v46;
  if (v37)
  {
    goto LABEL_18;
  }

  v1[5] = v38;
  sub_1E48C15C8(v36, v39, &qword_1ECF809F0, &qword_1E49A3998);
  (*(v44 + 56))(v39, 0, 1, v33);
}

void sub_1E4939EEC(void (*a1)(char *, uint64_t))
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = *(*(v4 + 48) + v11);
      v13 = *(*(v4 + 56) + 8 * v11);

      if (!v13)
      {
        break;
      }

      v7 &= v7 - 1;
      v14[0] = v12;
      a1(v14, v13);

      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    swift_beginAccess();
    os_unfair_lock_unlock(v3 + 4);
    swift_endAccess();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E493A064(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_1E4948474(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = *(*v9 + 104);
    v11 = *(v9 + v10);
    swift_beginAccess();

    os_unfair_lock_lock(v11 + 4);
    swift_endAccess();
    sub_1E4977C88(a1);
    v12 = *(v9 + v10);
    swift_beginAccess();
    os_unfair_lock_unlock(v12 + 4);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A40, &qword_1E49A39F8);
    sub_1E48C1B44(&qword_1ECF80A48, &qword_1ECF80A40, &qword_1E49A39F8, &unk_1E49A3190);
    swift_allocError();
    swift_willThrow();
  }

  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  return swift_endAccess();
}

uint64_t sub_1E493A210(uint64_t a1, double *a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_1E4947FC0(a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A18, &unk_1E49A39C8);
    sub_1E48C1B44(&unk_1ECF80A20, &qword_1ECF80A18, &unk_1E49A39C8, &unk_1E49A3190);
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v10 = *(*v9 + 104);
  v11 = *(v9 + v10);
  swift_beginAccess();
  os_unfair_lock_lock(v11 + 4);
  swift_endAccess();
  sub_1E49736C8(a1);
  v12 = *(v9 + v10);
  swift_beginAccess();
  os_unfair_lock_unlock(v12 + 4);
  swift_endAccess();

LABEL_6:
  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  return swift_endAccess();
}

ClockPoster::ClockTimeInterval_optional __swiftcall ClockTimeInterval.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 0.01666)
  {
    *v1 = 0;
  }

  else
  {
    if (rawValue == 60.0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    if (rawValue == 1.0)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

double sub_1E493A4D8@<D0>(double *a1@<X8>)
{
  result = dbl_1E49A3AB0[*v1];
  *a1 = result;
  return result;
}

uint64_t OverrideTime.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4996D8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OverrideTime.date.setter(uint64_t a1)
{
  v3 = sub_1E4996D8C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 OverrideTime.advancingRate.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OverrideTime(0) + 20);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 OverrideTime.advancingRate.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for OverrideTime(0) + 20));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t OverrideTime.AdvancingRate.offset.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t OverrideTime.AdvancingRate.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OverrideTime.AdvancingRate.init(offset:interval:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static OverrideTime.AdvancingRate.paused.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E4998A0C();
  v4 = v3;
  result = sub_1E4998A0C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

uint64_t static OverrideTime.AdvancingRate.== infix(_:_:)(void *a1, void *a2)
{
  if ((sub_1E49989FC() & 1) == 0)
  {
    return 0;
  }

  return sub_1E49989FC();
}

uint64_t sub_1E493A8A0()
{
  if (*v0)
  {
    return 0x6C61767265746E69;
  }

  else
  {
    return 0x74657366666FLL;
  }
}

void sub_1E493A8D8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1E499884C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E499884C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1E493A9B0(uint64_t a1)
{
  v2 = sub_1E493ABE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E493A9EC(uint64_t a1)
{
  v2 = sub_1E493ABE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OverrideTime.AdvancingRate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80798, &qword_1E49A31E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v13 = v1[3];
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E493ABE4();
  sub_1E49989CC();
  v16 = v8;
  v17 = v7;
  v18 = 0;
  v10 = v15;
  sub_1E49987DC();
  if (!v10)
  {
    v16 = v14;
    v17 = v13;
    v18 = 1;
    sub_1E49987DC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E493ABE4()
{
  result = qword_1ECF807A0;
  if (!qword_1ECF807A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF807A0);
  }

  return result;
}

uint64_t OverrideTime.AdvancingRate.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807A8, &qword_1E49A31E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E493ABE4();
  sub_1E49989BC();
  if (!v2)
  {
    v13 = 0;
    sub_1E499878C();
    v9 = v12;
    v13 = 1;
    sub_1E499878C();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1E493AE40(void *a1, void *a2)
{
  if ((sub_1E49989FC() & 1) == 0)
  {
    return 0;
  }

  return sub_1E49989FC();
}

__n128 OverrideTime.init(date:advancingRate:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4996D8C();
  v9 = a2[1];
  v10 = *a2;
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = (a3 + *(type metadata accessor for OverrideTime(0) + 20));
  result = v10;
  *v7 = v10;
  v7[1] = v9;
  return result;
}

BOOL static OverrideTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_1E4996D2C())
  {
    type metadata accessor for OverrideTime(0);
    if (sub_1E49989FC() & 1) != 0 && (sub_1E49989FC())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E493AFD0()
{
  if (*v0)
  {
    return 0x6E69636E61766461;
  }

  else
  {
    return 1702125924;
  }
}

void sub_1E493B010(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E69636E61766461 && a2 == 0xED00006574615267)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E499884C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1E493B0F4(uint64_t a1)
{
  v2 = sub_1E493B340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E493B130(uint64_t a1)
{
  v2 = sub_1E493B340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OverrideTime.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807B0, &qword_1E49A31F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E493B340();
  sub_1E49989CC();
  LOBYTE(v13) = 0;
  sub_1E4996D8C();
  sub_1E493B768(&qword_1ECF807C0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E49987DC();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for OverrideTime(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_1E493B394();
    sub_1E49987DC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E493B340()
{
  result = qword_1ECF807B8;
  if (!qword_1ECF807B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF807B8);
  }

  return result;
}

unint64_t sub_1E493B394()
{
  result = qword_1ECF807C8;
  if (!qword_1ECF807C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF807C8);
  }

  return result;
}

uint64_t OverrideTime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_1E4996D8C();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807D0, &qword_1E49A31F8);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for OverrideTime(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E493B340();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  LOBYTE(v30) = 0;
  sub_1E493B768(&qword_1ECF807D8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v15 = v29;
  v16 = v27;
  sub_1E499878C();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v32 = 1;
  sub_1E493B7B0();
  sub_1E499878C();
  (*(v28 + 8))(v9, v16);
  v18 = v23;
  v19 = (v23 + *(v24 + 20));
  v20 = v31;
  *v19 = v30;
  v19[1] = v20;
  sub_1E4945478(v18, v25, type metadata accessor for OverrideTime);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1E4945640(v18, type metadata accessor for OverrideTime);
}

uint64_t sub_1E493B768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E493B7B0()
{
  result = qword_1ECF807E0;
  if (!qword_1ECF807E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF807E0);
  }

  return result;
}

void sub_1E493B920()
{
  if (MEMORY[0x1E691C5C0]("Clock:shared"))
  {
    type metadata accessor for SystemSystemStatusBarOverrideProvider();
    v0 = swift_allocObject();
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = [objc_allocWithZone(MEMORY[0x1E69D5480]) init];
    type metadata accessor for SystemOverrideClock();
    v1 = swift_allocObject();
    v2 = sub_1E49442B4(v0, v1);
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for Clock(0);
  swift_allocObject();
  v3 = sub_1E4943E9C(v2);

  qword_1ECF80790 = v3;
}

uint64_t static Clock.shared.getter()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }
}

void sub_1E493BA48(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-v4];
  v6 = type metadata accessor for OverrideTime(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  (*(v7 + 56))(v5, 1, 1, v6, v8);
  v12 = *(v11 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v12 + 4);
  swift_endAccess();
  sub_1E48C1338(v5, &qword_1ECF807E8, &qword_1E49A3200);
  v13 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v11 + v13, v5, &qword_1ECF807E8, &qword_1E49A3200);
  v14 = *(v11 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v14 + 4);
  swift_endAccess();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E48C1338(v5, &qword_1ECF807E8, &qword_1E49A3200);
    v15 = [objc_opt_self() now];
    sub_1E4996D3C();
  }

  else
  {
    sub_1E4945410(v5, v10, type metadata accessor for OverrideTime);
    v16 = sub_1E4996D8C();
    (*(*(v16 - 8) + 32))(a1, v10, v16);
  }
}

uint64_t sub_1E493BCE8()
{
  v0 = sub_1E4996D8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v5 = sub_1E4997EAC();
  [v4 setDateFormat_];

  sub_1E493BA48(v3);
  v6 = sub_1E4996CEC();
  (*(v1 + 8))(v3, v0);
  v7 = [v4 stringFromDate_];

  v8 = sub_1E4997EEC();
  return v8;
}

BOOL sub_1E493BE54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12[-v2];
  v4 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v5 = type metadata accessor for OverrideTime(0);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v3, 1, 1, v5);
  v7 = *(v4 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v7 + 4);
  swift_endAccess();
  sub_1E48C1338(v3, &qword_1ECF807E8, &qword_1E49A3200);
  v8 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v4 + v8, v3, &qword_1ECF807E8, &qword_1E49A3200);
  v9 = *(v4 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v9 + 4);
  swift_endAccess();
  v10 = (*(v6 + 48))(v3, 1, v5) != 1;
  sub_1E48C1338(v3, &qword_1ECF807E8, &qword_1E49A3200);
  return v10;
}

uint64_t sub_1E493C010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1E48C12D0(a1, &v6 - v3, &qword_1ECF807E8, &qword_1E49A3200);
  return sub_1E493C0BC(v4);
}

uint64_t sub_1E493C0BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-v4];
  v6 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v7 = type metadata accessor for OverrideTime(0);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = *(v6 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v8 + 4);
  swift_endAccess();
  sub_1E48C1338(v5, &qword_1ECF807E8, &qword_1E49A3200);
  v9 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v6 + v9, v5, &qword_1ECF807E8, &qword_1E49A3200);
  v10 = *(v6 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v10 + 4);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC11ClockPoster5Clock_lastOverrideTime;
  swift_beginAccess();
  sub_1E48EC0CC(v5, v1 + v11, &qword_1ECF807E8, &qword_1E49A3200);
  swift_endAccess();
  sub_1E48C12D0(a1, v5, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E4940ACC(v5);
  return sub_1E48C1338(a1, &qword_1ECF807E8, &qword_1E49A3200);
}

uint64_t sub_1E493C294@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v4 = type metadata accessor for OverrideTime(0);
  (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  v5 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  sub_1E48C1338(a1, &qword_1ECF807E8, &qword_1E49A3200);
  v6 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v3 + v6, a1, &qword_1ECF807E8, &qword_1E49A3200);
  v7 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v7 + 4);
  return swift_endAccess();
}

void (*sub_1E493C3B8(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v10 = type metadata accessor for OverrideTime(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = *(v9 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v11 + 4);
  swift_endAccess();
  sub_1E48C1338(v8, &qword_1ECF807E8, &qword_1E49A3200);
  v12 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v9 + v12, v8, &qword_1ECF807E8, &qword_1E49A3200);
  v13 = *(v9 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v13 + 4);
  swift_endAccess();
  return sub_1E493C588;
}

uint64_t sub_1E493C5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1E499814C();
  *(v4 + 24) = sub_1E499813C();
  v6 = sub_1E499811C();

  return MEMORY[0x1EEE6DFA0](sub_1E493C638, v6, v5);
}

uint64_t sub_1E493C638()
{
  v1 = *(v0 + 16);

  *(*(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_atomicClock) + 24) = &off_1F5E86C60;
  swift_unknownObjectWeakAssign();
  *(*(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_textClock) + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_delegate + 8) = &off_1F5E86C70;
  swift_unknownObjectWeakAssign();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E493C6E8()
{
  sub_1E493F0D0();
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_textClockStreamObservers);
  v2 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v2 + 4);
  swift_endAccess();
  swift_beginAccess();
  *(v1 + 24) = MEMORY[0x1E69E7CC8];

  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v3 + 4);
  return swift_endAccess();
}

uint64_t sub_1E493C7A4@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A50, &unk_1E49A3A00);
  v63 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A58, &unk_1E49A4D50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideDateStream);
  v20 = *(*v19 + 104);
  v21 = *(v19 + v20);
  swift_beginAccess();
  os_unfair_lock_lock(v21 + 4);
  swift_endAccess();
  v22 = *(*v19 + 120);
  v23 = *(v19 + v22);
  if ((v23 & 1) == 0)
  {
    *(v19 + v22) = 1;
  }

  v59 = v19;
  v60 = v20;
  v24 = *(v19 + v20);
  swift_beginAccess();
  os_unfair_lock_unlock(v24 + 4);
  swift_endAccess();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v27(v18, 1, 1, v25);
  v66 = v18;
  if ((v23 & 1) == 0)
  {
    v55 = v28;
    v57 = v27;
    v58 = v2;
    v29 = v15;
    v30 = v66;
    v31 = *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
    v32 = type metadata accessor for OverrideTime(0);
    v33 = *(v32 - 8);
    (*(v33 + 56))(v12, 1, 1, v32);
    v34 = *(v31 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v34 + 4);
    swift_endAccess();
    sub_1E48C1338(v12, &qword_1ECF807E8, &qword_1E49A3200);
    v35 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
    swift_beginAccess();
    sub_1E48C12D0(v31 + v35, v12, &qword_1ECF807E8, &qword_1E49A3200);
    v36 = *(v31 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v36 + 4);
    swift_endAccess();
    if ((*(v33 + 48))(v12, 1, v32))
    {
      sub_1E48C1338(v12, &qword_1ECF807E8, &qword_1E49A3200);
      v37 = sub_1E4996D8C();
      (*(*(v37 - 8) + 56))(v29, 1, 1, v37);
    }

    else
    {
      v38 = sub_1E4996D8C();
      v39 = *(v38 - 8);
      (*(v39 + 16))(v29, v12, v38);
      sub_1E48C1338(v12, &qword_1ECF807E8, &qword_1E49A3200);
      (*(v39 + 56))(v29, 0, 1, v38);
    }

    v57(v29, 0, 1, v25);
    sub_1E48EC0CC(v29, v30, &unk_1ECF80A60, &unk_1E49A3A10);
    v2 = v58;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v41 = *(v40 - 8);
  v42 = v2;
  v43 = v41;
  v57 = *(v41 + 56);
  v58 = v41 + 56;
  v44 = v64;
  v57(v64, 1, 1, v40);
  v46 = v59;
  v45 = v60;
  v47 = *(v59 + v60);
  swift_beginAccess();
  os_unfair_lock_lock(v47 + 4);
  v48 = swift_endAccess();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v50 = v66;
  *(&v55 - 2) = v46;
  *(&v55 - 1) = v50;
  (*(v63 + 104))(v61, *MEMORY[0x1E69E8650], v42, v49);
  v51 = v62;
  sub_1E49981BC();
  sub_1E48C1338(v44, &qword_1ECF80A58, &unk_1E49A4D50);
  v57(v51, 0, 1, v40);
  sub_1E48C15C8(v51, v44, &qword_1ECF80A58, &unk_1E49A4D50);
  v52 = *(v46 + v45);
  swift_beginAccess();
  os_unfair_lock_unlock(v52 + 4);
  swift_endAccess();
  v53 = v65;
  sub_1E48C12D0(v44, v65, &qword_1ECF80A58, &unk_1E49A4D50);
  result = (*(v43 + 48))(v53, 1, v40);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v44, &qword_1ECF80A58, &unk_1E49A4D50);
    (*(v43 + 32))(v56, v53, v40);
    return sub_1E48C1338(v66, &unk_1ECF80A60, &unk_1E49A3A10);
  }

  return result;
}

void sub_1E493CF94(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *&v2[OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers];
  v5 = *a1;

  sub_1E4938964(v5, v4, v2, v5, a2);
}

uint64_t sub_1E493CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_1E499814C();
  *(v5 + 24) = sub_1E499813C();
  v7 = sub_1E499811C();

  return MEMORY[0x1EEE6DFA0](sub_1E493D094, v7, v6);
}

uint64_t sub_1E493D094()
{
  v5 = v0;
  v1 = *(v0 + 32);

  v4 = v1;
  sub_1E493DDA0(&v4);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Clock.deinit()
{
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster5Clock_lastOverrideTime, &qword_1ECF807E8, &qword_1E49A3200);
  v1 = OBJC_IVAR____TtC11ClockPoster5Clock_dateInited;
  v2 = sub_1E4996D8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Clock.__deallocating_deinit()
{
  Clock.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E493D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  v6 = sub_1E4996D8C();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  sub_1E499814C();
  *(v5 + 48) = sub_1E499813C();
  v8 = sub_1E499811C();

  return MEMORY[0x1EEE6DFA0](sub_1E493D388, v8, v7);
}

uint64_t sub_1E493D388()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);

  v5 = [objc_opt_self() now];
  sub_1E4996D3C();

  sub_1E493A064(v1, v4);
  (*(v3 + 8))(v1, v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E493D488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E493D4AC, 0, 0);
}

uint64_t sub_1E493D4AC()
{
  sub_1E493A210(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E493D538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-v7];
  v17 = a2;
  v18 = a1;
  v19 = a3;
  sub_1E4939EEC(sub_1E49457A0);
  v9 = *(a1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideDateStream);
  v10 = *(*v9 + 104);
  v11 = *(v9 + v10);
  swift_beginAccess();
  os_unfair_lock_lock(v11 + 4);
  swift_endAccess();
  sub_1E4974E44(a2);
  v12 = *(v9 + v10);
  swift_beginAccess();
  os_unfair_lock_unlock(v12 + 4);
  swift_endAccess();
  v13 = *(a1 + OBJC_IVAR____TtC11ClockPoster5Clock_textClock);
  sub_1E48C12D0(a2, v8, &qword_1ECF809D0, &qword_1E499D6C0);
  v14 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_overrideDate;
  swift_beginAccess();
  sub_1E48EC048(v8, v13 + v14, &qword_1ECF809D0, &qword_1E499D6C0);
  swift_endAccess();
  sub_1E493EA5C();
  return sub_1E48C1338(v8, &qword_1ECF809D0, &qword_1E499D6C0);
}

void sub_1E493D6E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v52 = a5;
  v53 = a4;
  v54 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = sub_1E4996D8C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v55 = *a1;
  sub_1E48C12D0(a3, v14, &qword_1ECF809D0, &qword_1E499D6C0);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    sub_1E48C1338(v14, &qword_1ECF809D0, &qword_1E499D6C0);
    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493BA48(v18);
    v23 = *(v54 + *(*v54 + 104));
    swift_beginAccess();
    os_unfair_lock_lock(v23 + 4);
    swift_endAccess();
    sub_1E4977C88(v18);
    swift_beginAccess();
    os_unfair_lock_unlock(v23 + 4);
    swift_endAccess();
    goto LABEL_24;
  }

  v24 = *(v16 + 32);
  v50 = v21;
  v24(v21, v14, v15);
  v49 = OBJC_IVAR____TtC11ClockPoster5Clock__lastOverridePublishTimeByInterval;
  v25 = *(v53 + OBJC_IVAR____TtC11ClockPoster5Clock__lastOverridePublishTimeByInterval);
  v26 = *(v25 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v26 + 4);
  swift_endAccess();
  swift_beginAccess();
  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v28 + 4);
  swift_endAccess();

  if (*(v27 + 16) && (v29 = sub_1E4948474(v55), (v30 & 1) != 0))
  {
    (*(v16 + 16))(v11, *(v27 + 56) + *(v16 + 72) * v29, v15);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(v16 + 56);
  v32(v11, v31, 1, v15);
  if (v22(v11, 1, v15))
  {
    sub_1E48C1338(v11, &qword_1ECF809D0, &qword_1E499D6C0);
    v33 = 0.0;
  }

  else
  {
    (*(v16 + 16))(v18, v11, v15);
    sub_1E48C1338(v11, &qword_1ECF809D0, &qword_1E499D6C0);
    sub_1E4996D1C();
    v33 = v34;
    (*(v16 + 8))(v18, v15);
  }

  v18 = v50;
  sub_1E4996D1C();
  v36 = vabdd_f64(v35, v33);
  v37 = v22(v52, 1, v15);
  v38 = v55;
  if (v55)
  {
    if (v55 == 1)
    {
      if (v36 > 1.0)
      {
        goto LABEL_25;
      }
    }

    else if (v36 > 60.0)
    {
      goto LABEL_25;
    }

    if (v37 != 1)
    {
LABEL_24:
      (*(v16 + 8))(v18, v15);
      return;
    }
  }

  else if (v36 <= 0.01666 && v37 != 1)
  {
    goto LABEL_24;
  }

LABEL_25:
  v40 = *(v54 + *(*v54 + 104));
  swift_beginAccess();
  os_unfair_lock_lock(v40 + 4);
  swift_endAccess();
  sub_1E4977C88(v18);
  swift_beginAccess();
  os_unfair_lock_unlock(v40 + 4);
  swift_endAccess();
  v41 = v51;
  (*(v16 + 16))(v51, v18, v15);
  v32(v41, 0, 1, v15);
  v42 = *(v53 + v49);
  v43 = *(v42 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v43 + 4);
  swift_endAccess();
  swift_beginAccess();
  v45 = *(v42 + 16);
  v44 = *(v42 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v45 + 4);
  swift_endAccess();
  v56 = v44;
  sub_1E4971004(v41, v38);
  v46 = v56;
  v47 = *(v42 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v47 + 4);
  swift_endAccess();
  *(v42 + 24) = v46;

  v48 = *(v42 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v48 + 4);
  swift_endAccess();
  (*(v16 + 8))(v18, v15);
}

void sub_1E493DDA0(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  if (!*(*(v2 + 32) + 16) || (sub_1E4948474(v3), (v8 & 1) == 0))
  {
    if (v3)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1E49456AC;
      *(v9 + 24) = v5;
      if (v3 == 1)
      {
        v22 = sub_1E4945B8C;
        v23 = v9;
        aBlock = MEMORY[0x1E69E9820];
        v19 = 1107296256;
        v20 = sub_1E493E668;
        v21 = &block_descriptor_156;
        v10 = _Block_copy(&aBlock);

        v22 = sub_1E49456B8;
        v23 = v6;
        aBlock = MEMORY[0x1E69E9820];
        v19 = 1107296256;
        v20 = sub_1E493E75C;
        v21 = &block_descriptor_159;
        v11 = _Block_copy(&aBlock);

        v12 = [v7 startSecondUpdatesWithHandler:v10 identificationLog:v11];
      }

      else
      {
        v22 = sub_1E49456C0;
        v23 = v9;
        aBlock = MEMORY[0x1E69E9820];
        v19 = 1107296256;
        v20 = sub_1E493E668;
        v21 = &block_descriptor_146;
        v10 = _Block_copy(&aBlock);

        v22 = sub_1E49456B8;
        v23 = v6;
        aBlock = MEMORY[0x1E69E9820];
        v19 = 1107296256;
        v20 = sub_1E493E75C;
        v21 = &block_descriptor_149;
        v11 = _Block_copy(&aBlock);

        v12 = [v7 startMinuteUpdatesWithHandler:v10 identificationLog:v11];
      }
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1E49456AC;
      *(v13 + 24) = v5;
      v22 = sub_1E4945B8C;
      v23 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v19 = 1107296256;
      v20 = sub_1E493E668;
      v21 = &block_descriptor_166;
      v10 = _Block_copy(&aBlock);

      v22 = sub_1E49456B8;
      v23 = v6;
      aBlock = MEMORY[0x1E69E9820];
      v19 = 1107296256;
      v20 = sub_1E493E75C;
      v21 = &block_descriptor_169;
      v11 = _Block_copy(&aBlock);

      v12 = [v7 start60fpsUpdatesWithHandler:v10 identificationLog:v11];
    }

    v14 = v12;
    _Block_release(v11);
    _Block_release(v10);
    swift_beginAccess();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_1E4986C34(v15, v3, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v17;
    swift_endAccess();

    v7 = v15;
  }
}

double sub_1E493E290(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (!sub_1E493BE54())
      {
        v10 = sub_1E499816C();
        (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
        sub_1E499814C();
        swift_unknownObjectRetain();
        v11 = sub_1E499813C();
        v12 = swift_allocObject();
        v13 = MEMORY[0x1E69E85E0];
        *(v12 + 16) = v11;
        *(v12 + 24) = v13;
        *(v12 + 32) = v9;
        *(v12 + 40) = a3;
        sub_1E49690B8(0, 0, v6, &unk_1E49A39F0, v12);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_1E493E424(char a1)
{
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v6 = sub_1E49054F0();
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  v2 = sub_1E4905BE4();
  MEMORY[0x1E691B7A0](v2);

  MEMORY[0x1E691B7A0](45, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x646E6F636573;
    }

    else
    {
      v3 = 0x6574756E696DLL;
    }

    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x74736574736166;
  }

  MEMORY[0x1E691B7A0](v3, v4);

  return v6;
}

uint64_t sub_1E493E540(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1E4996D8C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_1E48C1338(v6, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E493E668(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E4996D8C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1E4996D3C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id sub_1E493E75C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3 = sub_1E4997EAC();

  return v3;
}

uint64_t sub_1E493E7D0()
{
  sub_1E48B7510(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E493E810()
{
  sub_1E499892C();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E691C170](*&v1);
  type metadata accessor for TextClockDescriptor(0);
  sub_1E4996F4C();
  sub_1E493B768(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E493E8D4(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E691C170](*&v2);
  sub_1E4996F4C();
  sub_1E493B768(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1E4997E5C();
}

uint64_t sub_1E493E978(uint64_t a1)
{
  sub_1E499892C();
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E691C170](*&v2);
  sub_1E4996F4C();
  sub_1E493B768(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E493EA30(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1E691A740);
  }

  return 0;
}

double sub_1E493EA5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v46 = &v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F0, &qword_1E49A3998);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F8, &qword_1E49A39A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
  v14 = *(v13 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  swift_beginAccess();
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v16 + 4);
  swift_endAccess();

  v17 = -1 << *(v15 + 32);
  v18 = ~v17;
  v19 = *(v15 + 64);
  v20 = -v17;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v48 = v15;
  v49 = v15 + 64;
  v50 = v18;
  v51 = 0;
  v52 = v21 & v19;
  v53 = 0;
  v22 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_overrideDate;
  v42 = v15;

  v44 = v22;
  v45 = v0;
  swift_beginAccess();
  sub_1E4939AC0(v12);
  v25 = *(v4 + 48);
  v24 = v4 + 48;
  v23 = v25;
  if (v25(v12, 1, v3) != 1)
  {
    v43 = v3;
    do
    {
      sub_1E48C15C8(v12, v9, &qword_1ECF809F0, &qword_1E49A3998);
      sub_1E48C12D0(v9, v6, &qword_1ECF809F0, &qword_1E49A3998);
      v27 = &v6[*(v3 + 48)];
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A08, &qword_1E49A39C0) + 48);
      v47 = v27;
      v29 = *(v27 + v28);
      v30 = v46;
      sub_1E48C12D0(v45 + v44, v46, &qword_1ECF809D0, &qword_1E499D6C0);
      v31 = sub_1E4996D8C();
      v32 = *(v31 - 8);
      v33 = (*(v32 + 48))(v30, 1, v31);
      v34 = 0;
      if (v33 != 1)
      {
        v35 = v23;
        v36 = v12;
        v37 = v9;
        v38 = v6;
        v39 = v24;
        v40 = v46;
        v34 = sub_1E4996CEC();
        v41 = v40;
        v24 = v39;
        v6 = v38;
        v9 = v37;
        v12 = v36;
        v23 = v35;
        (*(v32 + 8))(v41, v31);
      }

      [v29 setOverrideDate_];

      sub_1E48C1338(v9, &qword_1ECF809F0, &qword_1E49A3998);
      sub_1E4945640(v47, type metadata accessor for TextClockDescriptor);
      sub_1E4939AC0(v12);
      v3 = v43;
    }

    while (v23(v12, 1, v43) != 1);
  }

  sub_1E48EB764(v48);

  return result;
}

id sub_1E493EFDC()
{
  sub_1E493F0D0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextClock(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E493F0D0()
{
  v1 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset;
  v2 = *(v0 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
  v3 = *(v2 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();

  v6 = 0;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    [*(*(v4 + 56) + ((v11 << 9) | (8 * v12))) removeObserver_];
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      v13 = *(v0 + v1);
      v14 = *(v13 + 16);
      swift_beginAccess();

      os_unfair_lock_lock(v14 + 4);
      swift_endAccess();
      v15 = *(v13 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v15 + 4);
      swift_endAccess();
      v16 = *(v13 + 16);
      swift_beginAccess();
      os_unfair_lock_lock(v16 + 4);
      swift_endAccess();
      swift_beginAccess();
      *(v13 + 24) = MEMORY[0x1E69E7CC8];

      v17 = *(v13 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v17 + 4);
      swift_endAccess();

      return;
    }

    v9 = *(v4 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1E493F314(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset;
  v13 = *(v2 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
  v14 = *(v13 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  swift_beginAccess();
  v15 = *(v13 + 16);
  v16 = *(v13 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v15 + 4);
  swift_endAccess();

  if (*(v16 + 16))
  {
    sub_1E4947FC0(a1);
    v18 = v17;

    if (v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v43 = v8;
  v44 = v12;
  v46 = a2;
  v20 = [objc_allocWithZone(MEMORY[0x1E695B570]) init];
  v21 = v20;
  v45 = a1;
  if (*a1 != 0.0)
  {
    [v20 setTimeOffset_];
  }

  v22 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_overrideDate;
  swift_beginAccess();
  sub_1E48C12D0(v3 + v22, v11, &qword_1ECF809D0, &qword_1E499D6C0);
  v23 = sub_1E4996D8C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v3;
  v27 = v25(v11, 1, v23);
  sub_1E48C1338(v11, &qword_1ECF809D0, &qword_1E499D6C0);
  v28 = v27 == 1;
  v3 = v26;
  v29 = v21;
  if (!v28)
  {
    v30 = v3 + v22;
    v31 = v43;
    sub_1E48C12D0(v30, v43, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v25(v31, 1, v23) == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1E4996CEC();
      (*(v24 + 8))(v31, v23);
    }

    [v29 setOverrideDate_];
  }

  type metadata accessor for TextClockDescriptor(0);
  a1 = v45;
  v33 = sub_1E4996F1C();
  [v29 setTimeZone_];

  [v29 addObserver_];
  v34 = *(v3 + v44);
  v35 = *(v34 + 16);
  swift_beginAccess();
  v36 = v29;

  os_unfair_lock_lock(v35 + 4);
  swift_endAccess();
  swift_beginAccess();
  v37 = *(v34 + 16);
  v38 = *(v34 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v37 + 4);
  swift_endAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v38;
  sub_1E4986D7C(v36, a1, isUniquelyReferenced_nonNull_native);
  v40 = v47;
  v41 = *(v34 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v41 + 4);
  swift_endAccess();
  *(v34 + 24) = v40;

  v42 = *(v34 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v42 + 4);
  swift_endAccess();

  a2 = v46;
LABEL_13:
  MEMORY[0x1EEE9AC00](v19);
  *(&v43 - 2) = a1;
  *(&v43 - 1) = v3;
  sub_1E4939498(sub_1E4945B88, (&v43 - 4), a2);
}

id sub_1E493F7B0@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - v7;
  v9 = sub_1E4996D8C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v15);
  v16 = *a1;
  if (*a1 != 0.0)
  {
    sub_1E4996CDC();
    (*(v10 + 8))(v15, v9);
    (*(v10 + 32))(v15, v12, v9);
  }

  v17 = *(a2 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
  v18 = *(v17 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v18 + 4);
  swift_endAccess();
  swift_beginAccess();
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v20 + 4);
  swift_endAccess();

  if (*(v19 + 16) && (v21 = sub_1E4947FC0(a1), (v22 & 1) != 0))
  {
    v23 = *(*(v19 + 56) + 8 * v21);

    v24 = v23;
  }

  else
  {

    v25 = [objc_allocWithZone(MEMORY[0x1E695B570]) init];
    v26 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_overrideDate;
    swift_beginAccess();
    sub_1E48C12D0(a2 + v26, v8, &qword_1ECF809D0, &qword_1E499D6C0);
    LODWORD(v26) = (*(v10 + 48))(v8, 1, v9);
    v24 = v25;
    v27 = 0;
    if (v26 != 1)
    {
      v27 = sub_1E4996CEC();
      (*(v10 + 8))(v8, v9);
    }

    [v24 setOverrideDate_];

    [v24 setTimeOffset_];
    type metadata accessor for TextClockDescriptor(0);
    v28 = sub_1E4996F1C();
    [v24 setTimeZone_];
  }

  result = [v24 timeText];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = result;
  v57 = v15;
  v31 = sub_1E4997EEC();
  v58 = v32;
  v59 = v31;

  result = [v24 timeAndDesignatorText];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = result;
  v54 = v10;
  v55 = v9;
  v56 = a1;
  v34 = sub_1E4997EEC();
  v52 = v35;
  v53 = v34;

  v36 = [v24 designatorRangeInTimeAndDesignatorText];
  v38 = v37;
  result = [v24 timeSubstringToSeparatorText];
  if (result)
  {
    v39 = result;
    v40 = sub_1E4997EEC();
    v42 = v41;

    v43 = [v24 separatorRangeInTimeText];
    v45 = v44;

    v46 = *(type metadata accessor for TextClockDescriptor(0) + 20);
    v47 = type metadata accessor for TimeString(0);
    v48 = *(v47 + 36);
    v49 = sub_1E4996F4C();
    (*(*(v49 - 8) + 16))(a3 + v48, v56 + v46, v49);
    v50 = v58;
    *a3 = v59;
    a3[1] = v50;
    v51 = v52;
    a3[2] = v53;
    a3[3] = v51;
    a3[4] = v36;
    a3[5] = v38;
    a3[6] = v40;
    a3[7] = v42;
    a3[8] = v43;
    a3[9] = v45;
    return (*(v54 + 32))(a3 + *(v47 + 40), v57, v55);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E493FCCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v93 - v6;
  v8 = sub_1E499708C();
  v111 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v93 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v98 = v93 - v15;
  v16 = type metadata accessor for TimeString(0);
  v95 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v97 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v106 = v93 - v19;
  v20 = type metadata accessor for TextClockDescriptor(0);
  v21 = *(v20 - 8);
  v109 = v20;
  v110 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v94 = v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93[1] = v22;
  MEMORY[0x1EEE9AC00](v23);
  v105 = v93 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F0, &qword_1E49A3998);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v93 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809F8, &qword_1E49A39A0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v107 = v93 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A00, &qword_1E49A39A8);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v108 = v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  if (a1)
  {
    v101 = v7;
    v102 = v13;
    v103 = v93 - v37;
    v104 = v8;
    v38 = *(v112 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset);
    v39 = *(v38 + 16);
    swift_beginAccess();
    v113 = a1;

    os_unfair_lock_lock(v39 + 4);
    swift_endAccess();
    swift_beginAccess();
    v40 = *(v38 + 16);
    v41 = *(v38 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v40 + 4);
    swift_endAccess();

    v42 = -1 << *(v41 + 32);
    v43 = *(v41 + 64);
    v44 = ~v42;
    v45 = -v42;
    v114 = v41;
    v115 = v41 + 64;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v116 = v44;
    v117 = 0;
    v118 = v46 & v43;
    v119 = 0;
    v99 = v41;

    sub_1E4939AC0(v31);
    v100 = v26;
    v47 = *(v26 + 48);
    if (v47(v31, 1, v25) == 1)
    {
LABEL_8:
      v48.n128_f64[0] = sub_1E48EB764(v114);
      v49 = v107;
      (*(v100 + 56))(v107, 1, 1, v25, v48);
    }

    else
    {
      while (1)
      {
        sub_1E48C15C8(v31, v28, &qword_1ECF809F0, &qword_1E49A3998);
        sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A08, &qword_1E49A39C0);
        if (sub_1E499848C())
        {
          break;
        }

        sub_1E48C1338(v28, &qword_1ECF809F0, &qword_1E49A3998);
        sub_1E4939AC0(v31);
        if (v47(v31, 1, v25) == 1)
        {
          goto LABEL_8;
        }
      }

      sub_1E48EB764(v114);
      v60 = v28;
      v49 = v107;
      sub_1E48C15C8(v60, v107, &qword_1ECF809F0, &qword_1E49A3998);
      (*(v100 + 56))(v49, 0, 1, v25, v61);
    }

    v62 = v47(v49, 1, v25);
    v63 = v103;
    v64 = v112;
    v65 = v108;
    if (v62 == 1)
    {
      sub_1E48C1338(v49, &qword_1ECF809F8, &qword_1E49A39A0);
      v66 = 1;
    }

    else
    {
      v67 = v49 + *(v25 + 48);

      sub_1E4945410(v67, v63, type metadata accessor for TextClockDescriptor);
      v66 = 0;
    }

    v68 = v104;
    v69 = v110;
    v70 = v111;
    v71 = v101;
    v72 = v109;
    (*(v110 + 56))(v63, v66, 1, v109);
    sub_1E48C12D0(v63, v65, &qword_1ECF80A00, &qword_1E49A39A8);
    v73 = (*(v69 + 48))(v65, 1, v72);
    v74 = v102;
    if (v73 == 1)
    {
      sub_1E48C1338(v65, &qword_1ECF80A00, &qword_1E49A39A8);
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v75 = qword_1EE2BB458;
      v76 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v75 + v76, v71, &qword_1ECF7F008, &qword_1E499B170);
      v77 = *(v70 + 48);
      if (v77(v71, 1, v68) == 1)
      {
        sub_1E4904BF4(v74);
        if (v77(v71, 1, v68) != 1)
        {
          sub_1E48C1338(v71, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v70 + 32))(v74, v71, v68);
      }

      v90 = sub_1E499706C();
      v91 = sub_1E499831C();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_1E48B0000, v90, v91, "Cannot map CLKTimeFormatter to listeners.", v92, 2u);
        MEMORY[0x1E691CED0](v92, -1, -1);
      }

      (*(v70 + 8))(v74, v68);
      return sub_1E48C1338(v63, &qword_1ECF80A00, &qword_1E49A39A8);
    }

    else
    {
      v78 = v105;
      v79 = sub_1E4945410(v65, v105, type metadata accessor for TextClockDescriptor);
      MEMORY[0x1EEE9AC00](v79);
      v93[-2] = v78;
      v93[-1] = v64;
      v80 = v106;
      sub_1E4939498(sub_1E48BF0E4, &v93[-4], v106);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v82 = Strong;
        v83 = sub_1E499816C();
        v84 = v98;
        (*(*(v83 - 8) + 56))(v98, 1, 1, v83);
        v85 = v97;
        sub_1E4945478(v80, v97, type metadata accessor for TimeString);
        v86 = v94;
        sub_1E4945478(v78, v94, type metadata accessor for TextClockDescriptor);
        v87 = (*(v95 + 80) + 40) & ~*(v95 + 80);
        v88 = (v96 + *(v110 + 80) + v87) & ~*(v110 + 80);
        v89 = swift_allocObject();
        v89[2] = 0;
        v89[3] = 0;
        v89[4] = v82;
        sub_1E4945410(v85, v89 + v87, type metadata accessor for TimeString);
        sub_1E4945410(v86, v89 + v88, type metadata accessor for TextClockDescriptor);
        swift_unknownObjectRetain();
        sub_1E49690B8(0, 0, v84, &unk_1E49A39B8, v89);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1E4945640(v80, type metadata accessor for TimeString);
      sub_1E48C1338(v63, &qword_1ECF80A00, &qword_1E49A39A8);
      return sub_1E4945640(v78, type metadata accessor for TextClockDescriptor);
    }
  }

  else
  {
    v50 = v111;
    v51 = v10;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v52 = qword_1EE2BB458;
    v53 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v52 + v53, v4, &qword_1ECF7F008, &qword_1E499B170);
    v54 = v50;
    v55 = *(v50 + 48);
    if (v55(v4, 1, v8) == 1)
    {
      sub_1E4904BF4(v51);
      if (v55(v4, 1, v8) != 1)
      {
        sub_1E48C1338(v4, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v54 + 32))(v51, v4, v8);
    }

    v56 = sub_1E499706C();
    v57 = sub_1E499831C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1E48B0000, v56, v57, "CLKTimeFormatter must never CLKTimeFormatterObserver call is nil.", v58, 2u);
      MEMORY[0x1E691CED0](v58, -1, -1);
    }

    return (*(v54 + 8))(v51, v8);
  }
}

uint64_t sub_1E4940ACC(uint64_t a1)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for OverrideTime(0);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  v19 = *(v1 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v19 + 4);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C1338(v16, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C12D0(v1 + v20, v16, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C12D0(v42, v13, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C12D0(v1 + v20, v10, &qword_1ECF807E8, &qword_1E49A3200);
  swift_endAccess();
  swift_beginAccess();
  sub_1E48EC048(v13, v1 + v20, &qword_1ECF807E8, &qword_1E49A3200);
  swift_endAccess();
  sub_1E49412AC(v10);
  sub_1E48C1338(v10, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C1338(v13, &qword_1ECF807E8, &qword_1E49A3200);
  swift_beginAccess();
  os_unfair_lock_unlock(v19 + 4);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(v18 + 48);
    v24 = 1;
    v25 = v23(v16, 1, v17);
    v26 = sub_1E4996D8C();
    v27 = *(v26 - 8);
    if (!v25)
    {
      (*(*(v26 - 8) + 16))(v41, v16, v26);
      v24 = 0;
    }

    v28 = *(v27 + 56);
    v28(v41, v24, 1, v26);
    v29 = v39;
    sub_1E48C12D0(v42, v39, &qword_1ECF807E8, &qword_1E49A3200);
    if (v23(v29, 1, v17) == 1)
    {
      sub_1E48C1338(v29, &qword_1ECF807E8, &qword_1E49A3200);
      v30 = 1;
      v31 = v40;
    }

    else
    {
      v31 = v40;
      (*(v27 + 16))(v40, v29, v26);
      sub_1E4945640(v29, type metadata accessor for OverrideTime);
      v30 = 0;
    }

    v28(v31, v30, 1, v26);
    v35 = MEMORY[0x1E691C5C0]("Clock:shared");
    if (v35)
    {
      MEMORY[0x1EEE9AC00](v35);
      *(&v38 - 4) = v22;
      *(&v38 - 3) = v31;
      v36 = v41;
      *(&v38 - 2) = v41;
      sub_1E48C3264(sub_1E4945794, (&v38 - 6));
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v36 = v41;
    }

    sub_1E48C1338(v42, &qword_1ECF807E8, &qword_1E49A3200);
    sub_1E48C1338(v31, &qword_1ECF809D0, &qword_1E499D6C0);
    v34 = v36;
    v32 = &qword_1ECF809D0;
    v33 = &qword_1E499D6C0;
  }

  else
  {
    v32 = &qword_1ECF807E8;
    v33 = &qword_1E49A3200;
    v34 = v42;
  }

  sub_1E48C1338(v34, v32, v33);
  return sub_1E48C1338(v16, &qword_1ECF807E8, &qword_1E49A3200);
}

void (*sub_1E4941010(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for OverrideTime(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = *(v1 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v10 + 4);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C1338(v8, &qword_1ECF807E8, &qword_1E49A3200);
  sub_1E48C12D0(v1 + v11, v8, &qword_1ECF807E8, &qword_1E49A3200);
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(v10 + 4);
  swift_endAccess();
  return sub_1E49411D8;
}

void sub_1E49411F0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_1E48C12D0(*(*a1 + 88), v5, &qword_1ECF807E8, &qword_1E49A3200);
    a3(v5);
    sub_1E48C1338(v6, &qword_1ECF807E8, &qword_1E49A3200);
  }

  else
  {
    a3(*(*a1 + 88));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E49412AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v18 = v1;
  v9 = v1 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  v10 = type metadata accessor for OverrideTime(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v9, 1, v10);
  v13 = 0;
  v14 = 0;
  if (!v12)
  {
    v15 = v9 + *(v10 + 20);
    v13 = *(v15 + 16);
    v14 = *(v15 + 24);
  }

  v17[0] = v14;
  v17[1] = v13;
  sub_1E48C12D0(a1, v8, &qword_1ECF807E8, &qword_1E49A3200);
  if (v11(v8, 1, v10) == 1)
  {
    result = sub_1E48C1338(v8, &qword_1ECF807E8, &qword_1E49A3200);
    if (v12)
    {
      return result;
    }

    goto LABEL_9;
  }

  sub_1E4945640(v8, type metadata accessor for OverrideTime);
  if (v12 || (sub_1E49989FC() & 1) == 0 || (result = sub_1E49989FC(), (result & 1) == 0))
  {
LABEL_9:
    sub_1E48C12D0(v9, v5, &qword_1ECF807E8, &qword_1E49A3200);
    sub_1E49429D8(v5);
    return sub_1E48C1338(v5, &qword_1ECF807E8, &qword_1E49A3200);
  }

  return result;
}

char *sub_1E49414EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  *(v1 + 3) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for CPUnfairLock();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v1 + 5) = v6;
  v7 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  v8 = type metadata accessor for OverrideTime(0);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_advanceTimeTask] = 0;
  v9 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_initializationTime;
  sub_1E4996D4C();
  v10 = sub_1E4996D8C();
  (*(*(v10 - 8) + 56))(&v1[v9], 0, 1, v10);
  *(v1 + 4) = a1;
  if (a1)
  {
    v11 = sub_1E499816C();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v12;
    swift_retain_n();
    sub_1E498DD1C(0, 0, v5, &unk_1E49A3A68, v13);
  }

  return v1;
}

uint64_t sub_1E4941714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v5[22] = swift_task_alloc();
  v6 = sub_1E4996D8C();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5[26] = v7;
  v8 = *(v7 - 8);
  v5[27] = v8;
  v5[28] = *(v8 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  v5[33] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v5[34] = v9;
  v5[35] = *(v9 - 8);
  v5[36] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C0, &qword_1E49A3A70);
  v5[37] = v10;
  v5[38] = *(v10 - 8);
  v5[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E49419EC, 0, 0);
}

uint64_t sub_1E49419EC()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  sub_1E4958A10(v1);
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_1E4941AF8;
  v5 = v0[37];
  v6 = v0[33];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E4941AF8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E4941BF4, 0, 0);
}

uint64_t sub_1E4941BF4()
{
  v1 = v0[33];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) != 1)
  {
    sub_1E48C15C8(v1, v0[32], &qword_1ECF809D0, &qword_1E499D6C0);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = v0[31];
      v4 = v0[23];
      v5 = v0[24];
      v6 = Strong;
      v48 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_initializationTime;
      sub_1E48C12D0(Strong + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_initializationTime, v3, &qword_1ECF809D0, &qword_1E499D6C0);
      v7 = *(v5 + 48);
      v8 = v7(v3, 1, v4);
      if (v8 == 1)
      {
        __break(1u);
        return MEMORY[0x1EEE6D9C8](v8, v9, v10, v11);
      }

      v13 = v0[30];
      v12 = v0[31];
      v15 = v0[24];
      v14 = v0[25];
      v16 = v0[23];
      v47 = v0[22];
      sub_1E4996D4C();
      sub_1E4996CCC();
      v18 = v17;
      v19 = *(v15 + 8);
      v19(v14, v16);
      v19(v12, v16);
      sub_1E48C12D0(v6 + v48, v13, &qword_1ECF809D0, &qword_1E499D6C0);
      v20 = v7(v13, 1, v16);
      sub_1E48C1338(v13, &qword_1ECF809D0, &qword_1E499D6C0);
      v21 = type metadata accessor for OverrideTime(0);
      v22 = *(v21 - 8);
      (*(v22 + 56))(v47, 1, 1, v21);
      v23 = *(v6 + 40);
      swift_beginAccess();
      os_unfair_lock_lock(v23 + 4);
      swift_endAccess();
      v24 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
      swift_beginAccess();
      sub_1E48C1338(v47, &qword_1ECF807E8, &qword_1E49A3200);
      sub_1E48C12D0(v6 + v24, v47, &qword_1ECF807E8, &qword_1E49A3200);
      swift_endAccess();
      v49 = v6;
      v25 = *(v6 + 40);
      swift_beginAccess();
      os_unfair_lock_unlock(v25 + 4);
      swift_endAccess();
      v26 = (*(v22 + 48))(v47, 1, v21);
      v27 = v0[22];
      if (v26 == 1)
      {
        sub_1E48C1338(v27, &qword_1ECF807E8, &qword_1E49A3200);
      }

      else
      {
        sub_1E48C1338(v27, &qword_1ECF807E8, &qword_1E49A3200);
        if (v20 != 1 && v18 <= 1.0)
        {
          sub_1E48C1338(v0[32], &qword_1ECF809D0, &qword_1E499D6C0);

LABEL_22:
          v46 = swift_task_alloc();
          v0[40] = v46;
          *v46 = v0;
          v46[1] = sub_1E4941AF8;
          v11 = v0[37];
          v8 = v0[33];
          v9 = 0;
          v10 = 0;

          return MEMORY[0x1EEE6D9C8](v8, v9, v10, v11);
        }
      }

      v28 = v0[32];
      v29 = v0[29];
      v30 = v0[27];
      v31 = v0[20];
      v32 = v0[21];
      v33 = sub_1E499816C();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v32, 1, 1, v33);
      sub_1E48C12D0(v28, v29, &qword_1ECF809D0, &qword_1E499D6C0);
      v35 = (*(v30 + 80) + 40) & ~*(v30 + 80);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v49;
      sub_1E48C15C8(v29, v36 + v35, &qword_1ECF809D0, &qword_1E499D6C0);
      sub_1E48C12D0(v32, v31, &qword_1ECF7EC60, &unk_1E49A0DC0);
      LODWORD(v32) = (*(v34 + 48))(v31, 1, v33);

      v37 = v0[20];
      if (v32 == 1)
      {
        sub_1E48C1338(v0[20], &qword_1ECF7EC60, &unk_1E49A0DC0);
      }

      else
      {
        sub_1E499815C();
        (*(v34 + 8))(v37, v33);
      }

      v40 = v36[2];
      swift_unknownObjectRetain();

      if (v40)
      {
        swift_getObjectType();
        v41 = sub_1E499811C();
        v43 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      sub_1E48C1338(v0[21], &qword_1ECF7EC60, &unk_1E49A0DC0);
      v44 = swift_allocObject();
      *(v44 + 16) = &unk_1E49A3A80;
      *(v44 + 24) = v36;
      if (v43 | v41)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v41;
        v0[5] = v43;
      }

      v45 = v0[32];
      swift_task_create();

      sub_1E48C1338(v45, &qword_1ECF809D0, &qword_1E499D6C0);
      goto LABEL_22;
    }

    sub_1E48C1338(v0[32], &qword_1ECF809D0, &qword_1E499D6C0);
  }

  (*(v0[38] + 8))(v0[39], v0[37]);

  v38 = v0[1];

  return v38();
}

uint64_t sub_1E49422FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4942398, 0, 0);
}

uint64_t sub_1E4942398()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_1E4996D8C();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  sub_1E4942530(v1, v3, v2);
  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (MEMORY[0x1E691C5C0]("Clock:shared"))
    {
      v8 = swift_task_alloc();
      v9 = *(v0 + 9);
      *(v8 + 16) = v7;
      *(v8 + 24) = v9;
      sub_1E48C3264(sub_1E4945B90, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1E48C1338(v0[10], &qword_1ECF809D0, &qword_1E499D6C0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E4942530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(a2 + v18, v12, &qword_1ECF807E8, &qword_1E49A3200);
  v19 = type metadata accessor for OverrideTime(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v43 = v19;
  if (v21(v12, 1))
  {
    sub_1E48C1338(v12, &qword_1ECF807E8, &qword_1E49A3200);
    v22 = sub_1E4996D8C();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  }

  else
  {
    v22 = sub_1E4996D8C();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v17, v12, v22);
    sub_1E48C1338(v12, &qword_1ECF807E8, &qword_1E49A3200);
    (*(v23 + 56))(v17, 0, 1, v22);
  }

  sub_1E48EC0CC(v17, a1, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E4996D8C();
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v26 = 1;
  if (v25(a3, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  v40 = a2;
  v27 = v41;
  sub_1E48C12D0(a3, v41, &qword_1ECF809D0, &qword_1E499D6C0);
  result = (v25)(v27, 1, v22);
  if (result != 1)
  {
    v29 = sub_1E4998A0C();
    v31 = v30;
    v32 = sub_1E4998A0C();
    v34 = v33;
    v35 = v44;
    (*(v24 + 32))(v44, v27, v22);
    v26 = 0;
    v36 = &v35[*(v43 + 20)];
    *v36 = v29;
    v36[1] = v31;
    v36[2] = v32;
    v36[3] = v34;
    a2 = v40;
LABEL_7:
    v37 = v44;
    (*(v20 + 56))(v44, v26, 1, v43);
    v38 = v42;
    sub_1E48C12D0(a2 + v18, v42, &qword_1ECF807E8, &qword_1E49A3200);
    swift_beginAccess();
    sub_1E48EC048(v37, a2 + v18, &qword_1ECF807E8, &qword_1E49A3200);
    swift_endAccess();
    sub_1E49412AC(v38);
    sub_1E48C1338(v38, &qword_1ECF807E8, &qword_1E49A3200);
    return sub_1E48C1338(v37, &qword_1ECF807E8, &qword_1E49A3200);
  }

  __break(1u);
  return result;
}

double sub_1E49429D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_advanceTimeTask;
  if (*(v1 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_advanceTimeTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF809C0, &qword_1E49A3978);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
    sub_1E49981DC();
  }

  *(v1 + v9) = 0;

  sub_1E48C12D0(a1, v8, &qword_1ECF807E8, &qword_1E49A3200);
  v10 = type metadata accessor for OverrideTime(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1E48C1338(v8, &qword_1ECF807E8, &qword_1E49A3200);
  }

  else
  {
    v12 = &v8[*(v10 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    v16 = *(v12 + 3);
    sub_1E4945640(v8, type metadata accessor for OverrideTime);
    sub_1E4998A0C();
    if ((sub_1E49989FC() & 1) == 0)
    {
      sub_1E4998A0C();
      if ((sub_1E49989FC() & 1) == 0)
      {
        v17 = sub_1E499816C();
        (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = swift_allocObject();
        v19[2] = 0;
        v19[3] = 0;
        v19[4] = v18;
        v19[5] = v13;
        v19[6] = v14;
        v19[7] = v15;
        v19[8] = v16;
        *(v1 + v9) = sub_1E4969364(0, 0, v5, &unk_1E49A3990, v19);
      }
    }
  }

  return result;
}

uint64_t sub_1E4942CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a1;
  v8[18] = a4;
  v9 = sub_1E499866C();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v10 = sub_1E499865C();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v8[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v8[31] = swift_task_alloc();
  v11 = sub_1E4996D8C();
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4942ED0, 0, 0);
}

uint64_t sub_1E4942ED0()
{
  swift_beginAccess();
  if ((sub_1E49981EC() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    **(v0 + 136) = 0;

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v2 = Strong;
    v3 = *(v0 + 240);
    v4 = type metadata accessor for OverrideTime(0);
    v5 = *(v4 - 8);
    (*(v5 + 56))(v3, 1, 1, v4);
    v6 = *(v2 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v6 + 4);
    swift_endAccess();
    v7 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
    swift_beginAccess();
    sub_1E48C1338(v3, &qword_1ECF807E8, &qword_1E49A3200);
    sub_1E48C12D0(v2 + v7, v3, &qword_1ECF807E8, &qword_1E49A3200);
    swift_endAccess();
    v8 = *(v2 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v8 + 4);
    swift_endAccess();
    v9 = (*(v5 + 48))(v3, 1, v4);
    v10 = *(v0 + 280);
    if (v9)
    {
      v11 = *(v0 + 256);
      v12 = *(v0 + 264);
      v13 = *(v0 + 248);
      sub_1E48C1338(*(v0 + 240), &qword_1ECF807E8, &qword_1E49A3200);
      (*(v12 + 56))(v13, 1, 1, v11);
      sub_1E4996D4C();
      if ((*(v12 + 48))(v13, 1, v11) != 1)
      {
        sub_1E48C1338(*(v0 + 248), &qword_1ECF809D0, &qword_1E499D6C0);
      }
    }

    else
    {
      v17 = *(v0 + 264);
      v16 = *(v0 + 272);
      v19 = *(v0 + 248);
      v18 = *(v0 + 256);
      v20 = *(v0 + 240);
      (*(v17 + 16))(v16, v20, v18);
      sub_1E48C1338(v20, &qword_1ECF807E8, &qword_1E49A3200);
      sub_1E49989EC();
      sub_1E49989EC();
      sub_1E4996CDC();
      (*(v17 + 8))(v16, v18);
      (*(v17 + 56))(v19, 0, 1, v18);
      (*(v17 + 32))(v10, v19, v18);
    }

    v21 = *(v0 + 280);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);
    v24 = *(v0 + 216);
    v25 = swift_task_alloc();
    *(v25 + 16) = v2;
    *(v25 + 24) = v21;
    sub_1E49397B0(sub_1E49453AC, v25);

    sub_1E499863C();
    sub_1E49989EC();
    sub_1E49989EC();
    sub_1E4998A1C();
    sub_1E499864C();
    v26 = *(v24 + 8);
    *(v0 + 296) = v26;
    *(v0 + 304) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v22, v23);
    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    sub_1E49988AC();
    v27 = swift_task_alloc();
    *(v0 + 312) = v27;
    v28 = sub_1E493B768(&qword_1ECF809D8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
    *v27 = v0;
    v27[1] = sub_1E4943414;
    v29 = *(v0 + 232);
    v30 = *(v0 + 200);
    v31 = *(v0 + 184);

    return MEMORY[0x1EEE6DA68](v29, v0 + 112, v30, v31, v28);
  }
}

uint64_t sub_1E4943414()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = v2[37];
  if (v0)
  {
    v4 = v2[29];
    v5 = v2[26];
    (*(v2[24] + 8))(v2[25], v2[23]);
    v3(v4, v5);
    v6 = sub_1E4943AE0;
  }

  else
  {
    v7 = v2[29];
    v8 = v2[26];
    (*(v2[24] + 8))(v2[25], v2[23]);
    v3(v7, v8);
    v6 = sub_1E4943590;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E4943590()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  (*(v3 + 8))(v1, v2);
  if ((sub_1E49981EC() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    **(v0 + 136) = 0;

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v5 = Strong;
    v6 = *(v0 + 240);
    v7 = type metadata accessor for OverrideTime(0);
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, 1, 1, v7);
    v9 = *(v5 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v9 + 4);
    swift_endAccess();
    v10 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
    swift_beginAccess();
    sub_1E48C1338(v6, &qword_1ECF807E8, &qword_1E49A3200);
    sub_1E48C12D0(v5 + v10, v6, &qword_1ECF807E8, &qword_1E49A3200);
    swift_endAccess();
    v11 = *(v5 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v11 + 4);
    swift_endAccess();
    v12 = (*(v8 + 48))(v6, 1, v7);
    v13 = *(v0 + 280);
    if (v12)
    {
      v14 = *(v0 + 256);
      v15 = *(v0 + 264);
      v16 = *(v0 + 248);
      sub_1E48C1338(*(v0 + 240), &qword_1ECF807E8, &qword_1E49A3200);
      (*(v15 + 56))(v16, 1, 1, v14);
      sub_1E4996D4C();
      if ((*(v15 + 48))(v16, 1, v14) != 1)
      {
        sub_1E48C1338(*(v0 + 248), &qword_1ECF809D0, &qword_1E499D6C0);
      }
    }

    else
    {
      v20 = *(v0 + 264);
      v19 = *(v0 + 272);
      v22 = *(v0 + 248);
      v21 = *(v0 + 256);
      v23 = *(v0 + 240);
      (*(v20 + 16))(v19, v23, v21);
      sub_1E48C1338(v23, &qword_1ECF807E8, &qword_1E49A3200);
      sub_1E49989EC();
      sub_1E49989EC();
      sub_1E4996CDC();
      (*(v20 + 8))(v19, v21);
      (*(v20 + 56))(v22, 0, 1, v21);
      (*(v20 + 32))(v13, v22, v21);
    }

    v24 = *(v0 + 280);
    v25 = *(v0 + 224);
    v26 = *(v0 + 208);
    v27 = *(v0 + 216);
    v28 = swift_task_alloc();
    *(v28 + 16) = v5;
    *(v28 + 24) = v24;
    sub_1E49397B0(sub_1E49453AC, v28);

    sub_1E499863C();
    sub_1E49989EC();
    sub_1E49989EC();
    sub_1E4998A1C();
    sub_1E499864C();
    v29 = *(v27 + 8);
    *(v0 + 296) = v29;
    *(v0 + 304) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v25, v26);
    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    sub_1E49988AC();
    v30 = swift_task_alloc();
    *(v0 + 312) = v30;
    v31 = sub_1E493B768(&qword_1ECF809D8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
    *v30 = v0;
    v30[1] = sub_1E4943414;
    v32 = *(v0 + 232);
    v33 = *(v0 + 200);
    v34 = *(v0 + 184);

    return MEMORY[0x1EEE6DA68](v32, v0 + 112, v33, v34, v31);
  }
}

uint64_t sub_1E4943AE0()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E4943BC8@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v4 = sub_1E4941010(v11);
  v6 = v5;
  v7 = type metadata accessor for OverrideTime(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!v8)
  {
    v9 = sub_1E4996D8C();
    (*(*(v9 - 8) + 24))(v6, a1, v9);
  }

  result = (v4)(v11, 0);
  *a2 = v8 != 0;
  return result;
}

uint64_t sub_1E4943CBC()
{
  sub_1E48B7510(v0 + 16);

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime, &qword_1ECF807E8, &qword_1E49A3200);

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_initializationTime, &qword_1ECF809D0, &qword_1E499D6C0);

  return swift_deallocClassInstance();
}

uint64_t _s11ClockPoster10TimeStringV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E499884C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E499884C() & 1) == 0 || a1[4] != a2[4] || a1[5] != a2[5] || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E499884C() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] != a2[8])
  {
    return 0;
  }

  if (a1[9] != a2[9])
  {
    return 0;
  }

  v6 = type metadata accessor for TimeString(0);
  if ((MEMORY[0x1E691A740](a1 + *(v6 + 36), a2 + *(v6 + 36)) & 1) == 0)
  {
    return 0;
  }

  return sub_1E4996D2C();
}

uint64_t sub_1E4943E9C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = OBJC_IVAR____TtC11ClockPoster5Clock_lastOverrideTime;
  v7 = type metadata accessor for OverrideTime(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  sub_1E4996D7C();
  v8 = OBJC_IVAR____TtC11ClockPoster5Clock_atomicClock;
  type metadata accessor for AtomicClock();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  v10 = MEMORY[0x1E69E7CC8];
  *(v9 + 32) = MEMORY[0x1E69E7CC8];
  *(v1 + v8) = v9;
  v11 = OBJC_IVAR____TtC11ClockPoster5Clock_textClock;
  *(v1 + v11) = [objc_allocWithZone(type metadata accessor for TextClock(0)) init];
  v12 = OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A80, &qword_1E49A3A38);
  v13 = swift_allocObject();
  type metadata accessor for CPUnfairLock();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 16) = v14;
  *(v13 + 24) = v10;
  *(v1 + v12) = v13;
  v15 = OBJC_IVAR____TtC11ClockPoster5Clock_textClockStreamObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A88, &qword_1E49A3A40);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = v10;
  *(v1 + v15) = v16;
  v18 = OBJC_IVAR____TtC11ClockPoster5Clock__lastOverridePublishTimeByInterval;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A90, &qword_1E49A3A48);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v19 + 16) = v20;
  *(v19 + 24) = v10;
  *(v1 + v18) = v19;
  v21 = OBJC_IVAR____TtC11ClockPoster5Clock_overrideDateStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A70, &qword_1E49A3A28);
  v22 = swift_allocObject();
  v23 = *(*v22 + 96);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = *(*v22 + 104);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v22 + v25) = v26;
  *(v22 + *(*v22 + 112)) = v10;
  *(v22 + *(*v22 + 120)) = 0;
  *(v1 + v21) = v22;
  type metadata accessor for OverrideClock(0);
  swift_allocObject();

  *(v1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock) = sub_1E49414EC(v27);
  v28 = sub_1E499816C();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  sub_1E499814C();

  v29 = sub_1E499813C();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v2;
  sub_1E498DD1C(0, 0, v5, &unk_1E49A3A58, v30);

  *(*(v2 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock) + 24) = &off_1F5E86C80;
  swift_unknownObjectWeakAssign();
  return v2;
}

void *sub_1E49442B4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A70, &qword_1E49A3A28);
  v8 = swift_allocObject();
  (*(v5 + 56))(v8 + *(*v8 + 96), 1, 1, v4);
  v9 = *(*v8 + 104);
  type metadata accessor for CPUnfairLock();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v8 + v9) = v10;
  *(v8 + *(*v8 + 112)) = MEMORY[0x1E69E7CC8];
  *(v8 + *(*v8 + 120)) = 0;
  a2[4] = v8;
  v11 = sub_1E4996D8C();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A78, &qword_1E49A3A30);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v12[2] = v13;
  sub_1E48C15C8(v7, v12 + *(*v12 + 96), &qword_1ECF809D0, &qword_1E499D6C0);
  a2[5] = v12;
  a2[2] = a1;
  a2[3] = &off_1F5E87C58;
  v14 = swift_allocObject();
  swift_weakInit();
  swift_retain_n();

  sub_1E495D620(sub_1E49457AC, v14);

  return a2;
}

uint64_t _s11ClockPoster10TimeStringV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimeString(0);
  sub_1E4996D7C();
  v15[0] = a1;
  v8 = sub_1E4996EFC();
  v9 = *(v5 + 8);
  v9(v7, v4);
  sub_1E4996D7C();
  v15[1] = a2;
  v10 = sub_1E4996EFC();
  v9(v7, v4);
  if (v8 == v10)
  {
    v11 = sub_1E4996D0C();
  }

  else
  {
    sub_1E4996D7C();
    v12 = sub_1E4996EFC();
    v9(v7, v4);
    sub_1E4996D7C();
    v13 = sub_1E4996EFC();
    v9(v7, v4);
    v11 = v12 < v13;
  }

  return v11 & 1;
}

unint64_t sub_1E494472C()
{
  result = qword_1ECF80830;
  if (!qword_1ECF80830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80830);
  }

  return result;
}

unint64_t sub_1E49447C4(uint64_t a1)
{
  result = sub_1E49447EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E49447EC()
{
  result = qword_1ECF80848;
  if (!qword_1ECF80848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80848);
  }

  return result;
}

uint64_t sub_1E49448E0(uint64_t a1)
{
  result = sub_1E4996D8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E494498C(uint64_t a1)
{
  type metadata accessor for _NSRange(319);
  if (v1 <= 0x3F)
  {
    sub_1E4996F4C();
    if (v2 <= 0x3F)
    {
      sub_1E4996D8C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4944A68(uint64_t a1)
{
  sub_1E4944D9C(319, &qword_1ECF80888, type metadata accessor for OverrideTime);
  if (v1 <= 0x3F)
  {
    sub_1E4996D8C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E4944CD8(uint64_t a1)
{
  sub_1E4944D9C(319, &qword_1ECF80920, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E4944D9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E49984BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E4944E18(uint64_t a1)
{
  sub_1E4944D9C(319, &qword_1ECF80888, type metadata accessor for OverrideTime);
  if (v1 <= 0x3F)
  {
    sub_1E4944D9C(319, &qword_1ECF80920, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E4944F84(uint64_t a1)
{
  result = sub_1E4996F4C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4945024()
{
  result = qword_1ECF80970;
  if (!qword_1ECF80970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80970);
  }

  return result;
}

unint64_t sub_1E494507C()
{
  result = qword_1ECF80978;
  if (!qword_1ECF80978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80978);
  }

  return result;
}

uint64_t sub_1E49450D0(uint64_t a1)
{
  result = sub_1E493B768(&qword_1ECF80980, type metadata accessor for TextClockDescriptor, &unk_1E49A3820);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4945174()
{
  result = qword_1ECF80990;
  if (!qword_1ECF80990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80990);
  }

  return result;
}

unint64_t sub_1E49451CC()
{
  result = qword_1ECF80998;
  if (!qword_1ECF80998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80998);
  }

  return result;
}

unint64_t sub_1E4945224()
{
  result = qword_1ECF809A0;
  if (!qword_1ECF809A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF809A0);
  }

  return result;
}

unint64_t sub_1E494527C()
{
  result = qword_1ECF809A8;
  if (!qword_1ECF809A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF809A8);
  }

  return result;
}

uint64_t sub_1E49452D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E48BFD3C;

  return sub_1E4942CC8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void *sub_1E49453B4()
{
  v1 = *(v0 + 16);
  result = (*(v0 + 24))(&v3);
  *v1 = v3;
  v1[1] = 0;
  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4945410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4945478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E49454E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TimeString(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TextClockDescriptor(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E48ECAA8;

  return sub_1E493D488(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1E4945640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E49456C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48ECAA8;

  return sub_1E493D290(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_105Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1E4945800(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E493C5A0(a1, v4, v5, v6);
}

uint64_t sub_1E49458B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E4941714(a1, v4, v5, v7, v6);
}

uint64_t sub_1E4945974(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E48ECAA8;

  return sub_1E49422FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E4945A78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E48ECAA8;

  return sub_1E498FCE0(a1, v4);
}

uint64_t sub_1E4945B94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1802465132;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEE0064656553646ELL;
    v4 = 0xE900000000000065;
    if (a1 == 2)
    {
      v6 = 0x756F72676B636162;
    }

    else
    {
      v6 = 0x6D69546573696F6ELL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xEE0064656553646ELL;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x756F726765726F66;
    }

    else
    {
      v6 = 1802465132;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x756F72676B636162;
  v10 = 0xEE0064656553646ELL;
  if (a2 != 2)
  {
    v9 = 0x6D69546573696F6ELL;
    v10 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x756F726765726F66;
    v8 = 0xEE0064656553646ELL;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E499884C();
  }

  return v13 & 1;
}

uint64_t sub_1E4945D04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x676F6C616E61;
    }

    else
    {
      v4 = 0x6C617469676964;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x646C726F77;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x72616C6F73;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 2036427888;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x676F6C616E61;
    }

    else
    {
      v9 = 0x6C617469676964;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x72616C6F73;
    if (a2 != 3)
    {
      v6 = 2036427888;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x646C726F77;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1E499884C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1E4945E68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "gital";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v4)
    {
      v7 = "ANALOG_CLOCK_TITLE";
    }

    else
    {
      v7 = "gital";
    }
  }

  else
  {
    if (a1 == 2)
    {
      v5 = "SOLAR_CLOCK_TITLE";
    }

    else if (a1 == 3)
    {
      v5 = "WORLD_CLOCK_TITLE";
    }

    else
    {
      v5 = "FLOAT_CLOCK_TITLE";
    }

    v7 = (v5 - 32);
    v6 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000013;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a2)
    {
      v3 = "ANALOG_CLOCK_TITLE";
    }
  }

  else if (a2 == 2)
  {
    v3 = "DIGITAL_CLOCK_TITLE";
  }

  else
  {
    v3 = "SOLAR_CLOCK_TITLE";
    if (a2 != 3)
    {
      v3 = "WORLD_CLOCK_TITLE";
    }
  }

  if (v6 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E499884C();
  }

  return v8 & 1;
}

uint64_t sub_1E4945FB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656C62617A69;
  v3 = 0x6D6F747375636E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x746E656964617267;
    }

    else
    {
      v5 = 0x6E6F5474696C7073;
    }

    if (v4 == 2)
    {
      v6 = 0xEE0079617272615FLL;
    }

    else
    {
      v6 = 0xED0000625F615F65;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x726F6C6F63;
    }

    else
    {
      v5 = 0x6D6F747375636E75;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE00656C62617A69;
    }
  }

  v7 = 0x746E656964617267;
  v8 = 0xEE0079617272615FLL;
  if (a2 != 2)
  {
    v7 = 0x6E6F5474696C7073;
    v8 = 0xED0000625F615F65;
  }

  if (a2)
  {
    v3 = 0x726F6C6F63;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E499884C();
  }

  return v11 & 1;
}

__n128 ClockPosterConfiguration.init(look:kind:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v4;
  *(a3 + 96) = *(a1 + 96);
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 97) = v3;
  return result;
}

void ClockPosterConfiguration.init(defaultLookForKind:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 97) = v3;
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = sub_1E48D4D14();
    }

    else
    {
      v4 = sub_1E48D5058();
    }
  }

  else
  {
    if (v3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1E499B670;
      sub_1E49347A0(v5 + 32);
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v4 = sub_1E48D57B4();
    }

    else
    {
      v4 = sub_1E48D5B04();
    }
  }

  v5 = v4;
LABEL_11:
  if (*(v5 + 16))
  {
    sub_1E48C8304(v5 + 32, a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ClockPosterConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B00, &qword_1E49A3AC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49464D8();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  HIBYTE(v10) = 0;
  sub_1E48EB55C();
  sub_1E499878C();
  v18[4] = v15;
  v18[5] = v16;
  v19 = v17;
  v18[0] = v11;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  HIBYTE(v10) = 1;
  sub_1E48F01EC();
  sub_1E499878C();
  (*(v6 + 8))(v8, v5);
  v20 = v11;
  sub_1E48CCF0C(v18, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1E48CC924(v18);
}

unint64_t sub_1E49464D8()
{
  result = qword_1ECF80B08;
  if (!qword_1ECF80B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B08);
  }

  return result;
}

uint64_t ClockPosterConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B10, &unk_1E49A3AD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49464D8();
  sub_1E49989CC();
  v10[15] = *(v3 + 97);
  v10[14] = 1;
  sub_1E48F0338();
  sub_1E49987DC();
  if (!v2)
  {
    v10[13] = 0;
    sub_1E48EB5B0();
    sub_1E49987DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E49466B8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684957547;
  }

  else
  {
    v2 = 1802465132;
  }

  if (*a2)
  {
    v3 = 1684957547;
  }

  else
  {
    v3 = 1802465132;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E499884C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E4946730()
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

double sub_1E4946798(uint64_t a1)
{
  sub_1E4997F5C();

  return result;
}

uint64_t sub_1E49467E4(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

void sub_1E4946848(char *a2@<X8>)
{
  v3 = sub_1E499873C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1E49468A8(uint64_t *a1@<X8>)
{
  v2 = 1802465132;
  if (*v1)
  {
    v2 = 1684957547;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_1E49468D0()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1802465132;
  }
}

void sub_1E49468F4(char *a3@<X8>)
{
  v4 = sub_1E499873C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1E4946958(uint64_t a1)
{
  v2 = sub_1E49464D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4946994(uint64_t a1)
{
  v2 = sub_1E49464D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ClockPosterConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 97);
  v5 = *(a1 + 97);

  return sub_1E4945D04(v5, v4);
}

uint64_t sub_1E4946A54(uint64_t a1, uint64_t a2)
{
  if ((_s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 97);
  v5 = *(a1 + 97);

  return sub_1E4945D04(v5, v4);
}

__n128 static ClockPosterConfiguration.configuration(from:kind:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, __n128 *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v52 = sub_1E499708C();
  v14 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = *a3;
  if (a2 >> 60 == 15)
  {
    HIBYTE(v56) = *a3;
    if (v20 <= 1)
    {
      if (v20)
      {
        v21 = sub_1E48D4D14();
      }

      else
      {
        v21 = sub_1E48D5058();
      }
    }

    else
    {
      if (v20 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1E499B670;
        sub_1E49347A0(v34 + 32);
        goto LABEL_21;
      }

      if (v20 == 3)
      {
        v21 = sub_1E48D57B4();
      }

      else
      {
        v21 = sub_1E48D5B04();
      }
    }

    v34 = v21;
LABEL_21:
    if (*(v34 + 16))
    {
      sub_1E48C8304(v34 + 32, v55);

      if (qword_1EE2BB450 == -1)
      {
LABEL_23:
        v35 = qword_1EE2BB458;
        v36 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
        swift_beginAccess();
        sub_1E48C12D0(v35 + v36, v10, &qword_1ECF7F008, &qword_1E499B170);
        v37 = *(v14 + 48);
        v38 = v52;
        if (v37(v10, 1, v52) == 1)
        {
          sub_1E4904BF4(v16);
          if (v37(v10, 1, v38) != 1)
          {
            sub_1E48C1338(v10, &qword_1ECF7F008, &qword_1E499B170);
          }
        }

        else
        {
          (*(v14 + 32))(v16, v10, v38);
        }

        sub_1E48CCF0C(v55, v54);
        v39 = sub_1E499706C();
        v40 = sub_1E49982EC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v53 = v42;
          *v41 = 136446210;
          v43 = sub_1E48C6D6C();
          v45 = v44;
          sub_1E48CC924(v54);
          v46 = sub_1E48CA094(v43, v45, &v53);

          *(v41 + 4) = v46;
          _os_log_impl(&dword_1E48B0000, v39, v40, "Loading default configuration:\n %{public}s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v42);
          MEMORY[0x1E691CED0](v42, -1, -1);
          MEMORY[0x1E691CED0](v41, -1, -1);
        }

        else
        {

          sub_1E48CC924(v54);
        }

        (*(v14 + 8))(v16, v52);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_23;
  }

  v54[0] = *a3;
  sub_1E4949038(a1, a2);
  v51 = a1;
  sub_1E4947164(v55);
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v22 = qword_1EE2BB458;
  v23 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
  swift_beginAccess();
  sub_1E48C12D0(v22 + v23, v13, &qword_1ECF7F008, &qword_1E499B170);
  v24 = *(v14 + 48);
  v25 = v52;
  if (v24(v13, 1, v52) == 1)
  {
    sub_1E4904BF4(v19);
    if (v24(v13, 1, v25) != 1)
    {
      sub_1E48C1338(v13, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v13, v25);
  }

  sub_1E48CCF0C(v55, v54);
  v26 = sub_1E499706C();
  v27 = sub_1E49982EC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v53 = v29;
    *v28 = 136446210;
    v30 = sub_1E48C6D6C();
    v32 = v31;
    sub_1E48CC924(v54);
    v33 = sub_1E48CA094(v30, v32, &v53);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1E48B0000, v26, v27, "Loading existing configuration:\n %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x1E691CED0](v29, -1, -1);
    MEMORY[0x1E691CED0](v28, -1, -1);
    sub_1E494908C(v51, a2);

    (*(v14 + 8))(v19, v52);
  }

  else
  {
    sub_1E494908C(v51, a2);

    sub_1E48CC924(v54);
    (*(v14 + 8))(v19, v25);
  }

LABEL_31:
  v47 = v55[5];
  a4[4] = v55[4];
  a4[5] = v47;
  a4[6].n128_u16[0] = v56;
  v48 = v55[1];
  *a4 = v55[0];
  a4[1] = v48;
  result = v55[3];
  a4[2] = v55[2];
  a4[3] = result;
  return result;
}

__n128 sub_1E4947164@<Q0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E499708C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1E4996AFC();
  swift_allocObject();
  sub_1E4996AEC();
  sub_1E4949FD0();
  sub_1E4996ADC();

  *(a3 + 64) = v11;
  *(a3 + 80) = v12;
  *(a3 + 96) = v13;
  *a3 = v7;
  *(a3 + 16) = v8;
  result = v10;
  *(a3 + 32) = v9;
  *(a3 + 48) = v10;
  return result;
}

uint64_t static ClockPosterConfiguration.configuration(from:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, __n128 *a3@<X8>)
{
  v4 = *a2;
  if (!a1)
  {
    goto LABEL_12;
  }

  *&v13 = 0xD000000000000012;
  *(&v13 + 1) = 0x80000001E49A83D0;
  sub_1E499854C();
  if (!*(a1 + 16) || (v6 = sub_1E49484EC(v12), (v7 & 1) == 0))
  {
    sub_1E49490A0(v12);
LABEL_12:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_13;
  }

  sub_1E48CCF68(*(a1 + 56) + 32 * v6, &v13);
  sub_1E49490A0(v12);
  if (!*(&v14 + 1))
  {
LABEL_13:
    sub_1E48C1338(&v13, &unk_1ECF81660, &qword_1E49A3AE0);
    v9 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_14;
  }

  v8 = swift_dynamicCast();
  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v12[1];
  }

  else
  {
    v10 = 0xF000000000000000;
  }

LABEL_14:
  LOBYTE(v12[0]) = v4;
  static ClockPosterConfiguration.configuration(from:kind:)(v9, v10, v12, a3);
  return sub_1E494908C(v9, v10);
}

unint64_t ClockPosterConfiguration.dictionaryRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E499708C();
  MEMORY[0x1EEE9AC00](v1);
  sub_1E4996B3C();
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  sub_1E49490F4();
  v2 = sub_1E4996B1C();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B20, &qword_1E49A3AE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  sub_1E499854C();
  *(inited + 96) = MEMORY[0x1E6969080];
  *(inited + 72) = v2;
  *(inited + 80) = v4;
  v6 = sub_1E4949AB8(inited);
  swift_setDeallocating();
  sub_1E48C1338(inited + 32, &qword_1ECF80B28, &qword_1E49A3AF0);

  return v6;
}

uint64_t ClockPosterConfiguration.data.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E499708C();
  MEMORY[0x1EEE9AC00](v1);
  sub_1E4996B3C();
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  sub_1E49490F4();
  v2 = sub_1E4996B1C();

  return v2;
}

unint64_t sub_1E4947F28(uint64_t a1)
{
  sub_1E4996DBC();
  sub_1E4949E6C(&qword_1ECF814C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1E4997E4C();

  return sub_1E4948530(a1, v2);
}

unint64_t sub_1E4947FC0(double *a1)
{
  sub_1E499892C();
  v2 = *a1;
  if (*a1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E691C170](*&v2);
  type metadata accessor for TextClockDescriptor(0);
  sub_1E4996F4C();
  sub_1E4949E6C(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E4997E5C();
  v3 = sub_1E499896C();

  return sub_1E49486F0(a1, v3);
}

unint64_t sub_1E494809C(uint64_t a1)
{
  sub_1E4997EEC();
  sub_1E499892C();
  sub_1E4997F5C();
  v2 = sub_1E499896C();

  return sub_1E4948C20(a1, v2);
}

unint64_t sub_1E494812C(uint64_t a1, uint64_t a2)
{
  sub_1E499892C();
  sub_1E4997F5C();
  v4 = sub_1E499896C();

  return sub_1E4948860(a1, a2, v4);
}

unint64_t sub_1E49481A4(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1E691C120](*(v1 + 40), a1, 4);

  return sub_1E4948918(v2, v3);
}

unint64_t sub_1E49481EC(uint64_t a1)
{
  sub_1E499892C();
  ClockFaceLook.hash(into:)(v4);
  v2 = sub_1E499896C();

  return sub_1E4948984(a1, v2);
}

unint64_t sub_1E4948258(uint64_t a1)
{
  v1 = a1;
  sub_1E499892C();
  sub_1E4997F5C();

  v2 = sub_1E499896C();

  return sub_1E4948A4C(v1, v2);
}

unint64_t sub_1E4948350(double a1, double a2)
{
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(a1, a2);
  v4 = sub_1E499896C();

  return sub_1E4948D24(v4, a1, a2);
}

unint64_t sub_1E49483C4(char a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  v2 = sub_1E499896C();

  return sub_1E4948D9C(a1 & 1, v2);
}

unint64_t sub_1E4948474(uint64_t a1)
{
  v1 = a1;
  sub_1E499892C();
  MEMORY[0x1E691C170](qword_1E49A3E58[v1]);
  v2 = sub_1E499896C();

  return sub_1E4948EE0(v1, v2);
}

unint64_t sub_1E49484EC(uint64_t a1)
{
  v2 = sub_1E499852C();

  return sub_1E4948F70(a1, v2);
}

unint64_t sub_1E4948530(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1E4996DBC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1E4949E6C(&qword_1ECF80B70, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v16 = sub_1E4997E9C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}