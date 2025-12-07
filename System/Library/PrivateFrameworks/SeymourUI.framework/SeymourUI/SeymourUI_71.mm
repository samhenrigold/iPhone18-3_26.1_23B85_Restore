void sub_20BD0F2F0(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_20C134634();
  sub_20BD120E0(&qword_27C76E100, MEMORY[0x277D508E8], MEMORY[0x277D508F0]);
    ;
  }
}

uint64_t WorkoutPlanArtworkV2.deinit()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_schedule;
  v4 = sub_20C1357B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t WorkoutPlanArtworkV2.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_schedule;
  v4 = sub_20C1357B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void WorkoutPlanArtworkViewV2.init(artwork:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  v3 = sub_20BD0E158();

  a2[1] = v3;
}

double WorkoutPlanArtworkViewV2.body.getter@<D0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_20BD11630;
  a1[1] = v5;

  return result;
}

double sub_20BD0F5F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_20C13C454();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFA8, &qword_20C179DD8);
  sub_20BD0F6C4(a2, a3, a1, a4 + *(v9 + 44));
  sub_20C13C1E4();
  sub_20C13C454();
  sub_20C13C1D4();
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFB0, &qword_20C179DE0) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_20BD0F6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v91 = a1;
  v87 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFB8, &qword_20C179DE8);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = (&KeyPath - v7);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFC0, &qword_20C179DF0);
  MEMORY[0x28223BE20](v83);
  v86 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &KeyPath - v10;
  MEMORY[0x28223BE20](v11);
  v85 = &KeyPath - v12;
  v13 = sub_20C13C1F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFC8, &qword_20C179DF8);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &KeyPath - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFD0, &qword_20C179E00);
  MEMORY[0x28223BE20](v75);
  v84 = &KeyPath - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = &KeyPath - v22;
  MEMORY[0x28223BE20](v23);
  v90 = &KeyPath - v24;
  *v19 = sub_20C13C264();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFD8, &unk_20C179E08) + 44);
  v25 = *(a2 + 16);
  *&v92 = 0;
  *(&v92 + 1) = v25;
  v79 = v25;
  KeyPath = swift_getKeyPath();
  v26 = *(v14 + 16);
  v73 = v14 + 16;
  v72 = v26;
  v26(&KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
  v27 = *(v14 + 80);
  v70 = ~v27;
  v28 = (v27 + 16) & ~v27;
  v76 = v15;
  v29 = swift_allocObject();
  v30 = *(v14 + 32);
  v77 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v13;
  v78 = v14 + 32;
  v71 = v30;
  v30(v29 + v28, v77, v13);
  v31 = (v29 + ((v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v91;
  *v31 = v91;
  v31[1] = a2;
  v33 = v32;

  v81 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFE0, &qword_20C179E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFE8, &qword_20C179E38);
  sub_20BD11CCC();
  sub_20BD11DAC();
  v34 = v88;
  sub_20C13C3F4();
  sub_20C13C1E4();
  sub_20C13C454();
  sub_20C13C1D4();
  v35 = &v19[*(v17 + 44)];
  v36 = v93;
  *v35 = v92;
  *(v35 + 1) = v36;
  *(v35 + 2) = v94;
  v69 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset;
  v37 = 0.0;
  v38 = 0.0;
  if (*(v33 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset) == 1)
  {
    sub_20C13C1E4();
    v38 = v39 / v79 * *(v91 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier) * -0.5;
  }

  v40 = v74;
  sub_20B5DF134(v19, v74, &qword_27C76DFC8, &qword_20C179DF8);
  v41 = v40 + *(v75 + 36);
  *v41 = 0;
  *(v41 + 8) = v38;
  sub_20B5DF134(v40, v90, &qword_27C76DFD0, &qword_20C179E00);
  v42 = sub_20C13C264();
  v43 = v89;
  *v89 = v42;
  v43[1] = 0;
  *(v43 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E010, &qword_20C179E40);
  v44 = v81;
  v95 = v81;
  v45 = v77;
  v46 = v80;
  v72(v77, v34, v80);
  v47 = (v27 + 32) & v70;
  v48 = swift_allocObject();
  v49 = v91;
  *(v48 + 16) = v91;
  *(v48 + 24) = v44;
  v71(v48 + v47, v45, v46);

  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E018, &qword_20C179E48);
  sub_20C132EE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E020, &qword_20C179E50);
  sub_20B6D6ABC(&qword_27C76E028, &qword_27C76E018, &qword_20C179E48, MEMORY[0x277D83980]);
  sub_20BD11F10();
  sub_20BD120E0(&qword_27C76E068, type metadata accessor for WorkoutPlanArtworkV2.Day, &unk_20C179D64);
  sub_20C13C404();
  if (*(v49 + v69) == 1)
  {
    sub_20C13C1E4();
    v37 = v50 / v79 * *(v91 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier) * -0.5;
  }

  v51 = v82;
  sub_20B5DF134(v89, v82, &qword_27C76DFB8, &qword_20C179DE8);
  v52 = v51 + *(v83 + 36);
  *v52 = 0;
  *(v52 + 8) = v37;
  v53 = v85;
  sub_20B5DF134(v51, v85, &qword_27C76DFC0, &qword_20C179DF0);
  sub_20C13C484();
  sub_20C13C494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90, &qword_20C179C60);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_20C1517D0;
  if (qword_27C760BE0 != -1)
  {
    swift_once();
  }

  sub_20C13C364();
  *(v54 + 32) = sub_20C13C434();
  *(v54 + 40) = v55;
  sub_20C13C364();
  *(v54 + 48) = sub_20C13C434();
  *(v54 + 56) = v56;
  sub_20C13C364();
  *(v54 + 64) = sub_20C13C434();
  *(v54 + 72) = v57;
  sub_20C13C444();
  sub_20C13C204();
  v58 = v90;
  v59 = v84;
  sub_20B52F9E8(v90, v84, &qword_27C76DFD0, &qword_20C179E00);
  v60 = v86;
  sub_20B52F9E8(v53, v86, &qword_27C76DFC0, &qword_20C179DF0);
  v61 = v53;
  v62 = v95;
  v63 = v87;
  sub_20B52F9E8(v59, v87, &qword_27C76DFD0, &qword_20C179E00);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E070, &qword_20C179E70);
  sub_20B52F9E8(v60, v63 + *(v64 + 48), &qword_27C76DFC0, &qword_20C179DF0);
  v65 = v63 + *(v64 + 64);
  *v65 = v62;
  v66 = v96;
  *(v65 + 24) = v97;
  *(v65 + 8) = v66;

  sub_20B520158(v61, &qword_27C76DFC0, &qword_20C179DF0);
  sub_20B520158(v58, &qword_27C76DFD0, &qword_20C179E00);

  sub_20B520158(v60, &qword_27C76DFC0, &qword_20C179DF0);
  return sub_20B520158(v59, &qword_27C76DFD0, &qword_20C179E00);
}

double sub_20BD100FC@<D0>(_BYTE *a1@<X0>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    sub_20C13C494();
    sub_20C13C484();
  }

  else
  {
    sub_20C13C484();
    sub_20C13C494();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90, &qword_20C179C60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14F320;
  if (qword_27C760BD0 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = sub_20C13C434();
  *(v6 + 40) = v7;
  if (qword_27C760BD8 != -1)
  {
    swift_once();
  }

  *(v6 + 48) = sub_20C13C434();
  *(v6 + 56) = v8;
  sub_20C13C444();
  sub_20C13C204();
  sub_20C13C1E4();
  sub_20C13C1E4();
  sub_20C13C454();
  sub_20C13C1D4();
  *(a4 + 32) = v12;
  *(a4 + 48) = v13;
  *(a4 + 64) = v14;
  *(a4 + 80) = v15;
  result = *&v10;
  *a4 = v10;
  *(a4 + 16) = v11;
  return result;
}

double static LinearGradient.backgroundGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90, &qword_20C179C60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14F320;
  if (qword_27C760BD0 != -1)
  {
    swift_once();
  }

  *(v6 + 32) = sub_20C13C434();
  *(v6 + 40) = v7;
  if (qword_27C760BD8 != -1)
  {
    swift_once();
  }

  *(v6 + 48) = sub_20C13C434();
  *(v6 + 56) = v8;
  sub_20C13C444();
  sub_20C13C204();
  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_20BD1042C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40[1] = a4;
  v42 = a3;
  v41 = a2;
  v47 = a5;
  v7 = sub_20C13C1F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutPlanArtworkV2.Day(0);
  v12 = v11 - 8;
  v40[0] = *(v11 - 8);
  v13 = *(v40[0] + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E050, &qword_20C179E60) - 8;
  MEMORY[0x28223BE20](v43);
  v16 = v40 - v15;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E040, &qword_20C179E58) - 8;
  MEMORY[0x28223BE20](v46);
  v45 = v40 - v17;
  *v16 = sub_20C13C244();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v40[3] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E078, &qword_20C179E78) + 44);
  v18 = *(v12 + 32);
  v44 = a1;
  sub_20C114758(*(a1 + v18));
  *&v51 = v19;
  v40[2] = swift_getKeyPath();
  sub_20BD123CC(a1, v14);
  (*(v8 + 16))(v10, a4, v7);
  v20 = (*(v40[0] + 80) + 16) & ~*(v40[0] + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v8 + 80) + v21 + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  sub_20BD126DC(v14, v23 + v20, type metadata accessor for WorkoutPlanArtworkV2.Day);
  v24 = (v23 + v21);
  v25 = v42;
  *v24 = v41;
  v24[1] = v25;
  (*(v8 + 32))(v23 + v22, v10, v7);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_20BD12430;
  *(v26 + 24) = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E080, &qword_20C179EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E088, &qword_20C179EB8);
  sub_20B6D6ABC(&qword_27C76E090, &qword_27C76E080, &qword_20C179EB0, MEMORY[0x277D83980]);
  sub_20BD120E0(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20BD12598();
  sub_20C13C3F4();
  sub_20C13C1E4();
  sub_20C13C454();
  sub_20C13C1D4();
  v27 = &v16[*(v43 + 44)];
  v28 = v49;
  *v27 = v48;
  *(v27 + 1) = v28;
  *(v27 + 2) = v50;
  sub_20C13C454();
  sub_20C13C234();
  v29 = v45;
  sub_20B5DF134(v16, v45, &qword_27C76E050, &qword_20C179E60);
  v30 = (v29 + *(v46 + 44));
  v31 = v56;
  v30[4] = v55;
  v30[5] = v31;
  v30[6] = v57;
  v32 = v52;
  *v30 = v51;
  v30[1] = v32;
  v33 = v54;
  v30[2] = v53;
  v30[3] = v33;
  sub_20C13C1E4();
  v35 = v34 * *(v44 + *(v12 + 28));
  v36 = v29;
  v37 = v47;
  sub_20B5DF134(v36, v47, &qword_27C76E040, &qword_20C179E58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E020, &qword_20C179E50);
  v39 = v37 + *(result + 36);
  *v39 = v35;
  *(v39 + 8) = 0;
  return result;
}

uint64_t sub_20BD10A18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0A8, &qword_20C179EC0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - v14);
  *v15 = sub_20C13C454();
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0C8, &qword_20C179ED8);
  sub_20BD10BF8(a2, a1, a3, v15 + *(v17 + 44));
  sub_20C13C1E4();
  v18 = *(a5 + 16);
  v19 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier;
  sub_20C13C1E4();
  type metadata accessor for WorkoutPlanArtworkV2.Workout(0);
  sub_20C13C454();
  sub_20C13C1D4();
  v20 = (v15 + *(v13 + 44));
  v21 = v26[1];
  *v20 = v26[0];
  v20[1] = v21;
  v20[2] = v26[2];
  if (a1)
  {
    sub_20C13C1E4();
    v23 = *(a4 + v19) * (-v22 / v18) * a1;
  }

  else
  {
    v23 = 0.0;
  }

  sub_20B5DF134(v15, a6, &qword_27C76E0A8, &qword_20C179EC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E088, &qword_20C179EB8);
  v25 = a6 + *(result + 36);
  *v25 = v23;
  *(v25 + 8) = 0;
  return result;
}

uint64_t sub_20BD10BF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v50 = a2;
  v51 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0D0, &qword_20C179EE0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0D8, &qword_20C179EE8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = *MEMORY[0x277CE0128];
  v19 = sub_20C13C254();
  (*(*(v19 - 8) + 104))(v8, v18, v19);
  v20 = &v8[*(v6 + 60)];
  *v20 = *a1;
  *(v20 + 8) = *(a1 + 1);
  *(v20 + 24) = *(a1 + 3);
  *&v8[*(v6 + 64)] = 256;

  sub_20C13C454();
  sub_20C13C234();
  sub_20B5DF134(v8, v14, &qword_27C76E0D0, &qword_20C179EE0);
  v21 = &v14[*(v10 + 44)];
  v22 = *&v76[99];
  *(v21 + 4) = *&v76[91];
  *(v21 + 5) = v22;
  *(v21 + 6) = *&v76[107];
  v23 = *&v76[67];
  *v21 = *&v76[59];
  *(v21 + 1) = v23;
  v24 = *&v76[83];
  *(v21 + 2) = *&v76[75];
  *(v21 + 3) = v24;
  v25 = v17;
  sub_20B5DF134(v14, v17, &qword_27C76E0D8, &qword_20C179EE8);
  v26 = type metadata accessor for WorkoutPlanArtworkV2.Workout(0);
  v27 = *(a1 + *(v26 + 24));
  sub_20C13C464();
  sub_20C13C234();
  *&v76[27] = *&v76[139];
  *&v76[35] = *&v76[147];
  *&v76[43] = *&v76[155];
  *&v76[51] = *&v76[163];
  *&v76[11] = *&v76[123];
  *&v76[19] = *&v76[131];
  *&v76[3] = *&v76[115];
  v28 = *(a1 + *(v26 + 28));
  v48 = v27;

  sub_20C13C474();
  sub_20C13C234();
  *&v75[54] = *&v76[195];
  *&v75[70] = *&v76[203];
  *&v75[86] = *&v76[211];
  *&v75[102] = *&v76[219];
  *&v75[6] = *&v76[171];
  *&v75[22] = *&v76[179];
  *&v75[38] = *&v76[187];
  if (*(*(v49 + *(type metadata accessor for WorkoutPlanArtworkV2.Day(0) + 24)) + 16) - 1 == v50)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = v52;
  sub_20B52F9E8(v25, v52, &qword_27C76E0D8, &qword_20C179EE8);
  v31 = v30;
  v32 = v51;
  sub_20B52F9E8(v31, v51, &qword_27C76E0D8, &qword_20C179EE8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0E0, &qword_20C179EF0);
  v34 = (v32 + *(v33 + 48));
  *&v53[0] = v27;
  WORD4(v53[0]) = 256;
  *(v53 + 10) = *v76;
  *(&v53[1] + 10) = *&v76[8];
  *(&v53[4] + 10) = *&v76[32];
  *(&v53[5] + 10) = *&v76[40];
  *(&v53[6] + 10) = *&v76[48];
  *(&v53[7] + 1) = *&v76[55];
  *(&v53[2] + 10) = *&v76[16];
  *(&v53[3] + 10) = *&v76[24];
  v35 = v53[5];
  v34[4] = v53[4];
  v34[5] = v35;
  v36 = v53[7];
  v34[6] = v53[6];
  v34[7] = v36;
  v37 = v53[1];
  *v34 = v53[0];
  v34[1] = v37;
  v38 = v53[3];
  v34[2] = v53[2];
  v34[3] = v38;
  v39 = v32 + *(v33 + 64);
  *&v54[0] = v28;
  WORD4(v54[0]) = 256;
  *(&v54[4] + 10) = *&v75[64];
  *(&v54[5] + 10) = *&v75[80];
  *(&v54[6] + 10) = *&v75[96];
  *(&v54[7] + 1) = *&v75[110];
  *(&v54[3] + 10) = *&v75[48];
  *(&v54[2] + 10) = *&v75[32];
  *(&v54[1] + 10) = *&v75[16];
  *(v54 + 10) = *v75;
  v55 = v29;
  v40 = v54[0];
  v41 = v54[1];
  v42 = v54[3];
  *(v39 + 32) = v54[2];
  *(v39 + 48) = v42;
  *v39 = v40;
  *(v39 + 16) = v41;
  v43 = v54[4];
  v44 = v54[5];
  v45 = v54[6];
  v46 = v54[7];
  *(v39 + 128) = v55;
  *(v39 + 96) = v45;
  *(v39 + 112) = v46;
  *(v39 + 64) = v43;
  *(v39 + 80) = v44;

  sub_20B52F9E8(v53, &v56, &qword_27C76E0E8, &qword_20C179EF8);
  sub_20B52F9E8(v54, &v56, &qword_27C76E0F0, &qword_20C179F00);
  sub_20B520158(v25, &qword_27C76E0D8, &qword_20C179EE8);
  v56 = v28;
  v57 = 256;
  v62 = *&v75[64];
  v63 = *&v75[80];
  *v64 = *&v75[96];
  *&v64[14] = *&v75[110];
  v58 = *v75;
  v59 = *&v75[16];
  v60 = *&v75[32];
  v61 = *&v75[48];
  v65 = v29;
  sub_20B520158(&v56, &qword_27C76E0F0, &qword_20C179F00);
  v72 = *&v76[32];
  v73 = *&v76[40];
  *v74 = *&v76[48];
  v68 = *v76;
  v69 = *&v76[8];
  v70 = *&v76[16];
  v66 = v48;
  v67 = 256;
  *&v74[14] = *&v76[55];
  v71 = *&v76[24];
  sub_20B520158(&v66, &qword_27C76E0E8, &qword_20C179EF8);
  return sub_20B520158(v52, &qword_27C76E0D8, &qword_20C179EE8);
}

double static LinearGradient.darkScrimGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90, &qword_20C179C60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C1517D0;
  if (qword_27C760BE0 != -1)
  {
    swift_once();
  }

  sub_20C13C364();
  *(v6 + 32) = sub_20C13C434();
  *(v6 + 40) = v7;
  sub_20C13C364();
  *(v6 + 48) = sub_20C13C434();
  *(v6 + 56) = v8;
  sub_20C13C364();
  *(v6 + 64) = sub_20C13C434();
  *(v6 + 72) = v9;
  sub_20C13C444();
  sub_20C13C204();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_20BD113F8@<D0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_20BD12750;
  a1[1] = v5;

  return result;
}

uint64_t sub_20BD116AC(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_20C13C314();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v7);
  result = sub_20C13C374();
  *a5 = result;
  return result;
}

double static LinearGradient.lightScrimGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90, &qword_20C179C60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14F320;
  if (qword_27C760BE0 != -1)
  {
    swift_once();
  }

  sub_20C13C364();
  *(v6 + 32) = sub_20C13C434();
  *(v6 + 40) = v7;
  sub_20C13C364();
  *(v6 + 48) = sub_20C13C434();
  *(v6 + 56) = v8;
  sub_20C13C444();
  sub_20C13C204();
  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_20BD11908(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C1357B4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20BD11A60(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20BD11B38(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20BD11BC4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20BD11BC4(uint64_t a1)
{
  if (!qword_281100598)
  {
    type metadata accessor for WorkoutPlanArtworkV2.Workout(255);
    v1 = sub_20C13CD04();
    if (!v2)
    {
      atomic_store(v1, &qword_281100598);
    }
  }
}

double sub_20BD11C1C@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C13C1F4();

  return sub_20BD100FC(a1, a2);
}

unint64_t sub_20BD11CCC()
{
  result = qword_27C76DFF0;
  if (!qword_27C76DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76DFE0, &qword_20C179E30);
    sub_20BD11D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DFF0);
  }

  return result;
}

unint64_t sub_20BD11D58()
{
  result = qword_27C76DFF8;
  if (!qword_27C76DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DFF8);
  }

  return result;
}

unint64_t sub_20BD11DAC()
{
  result = qword_27C76E000;
  if (!qword_27C76E000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76DFE8, &qword_20C179E38);
    sub_20BD11E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E000);
  }

  return result;
}

unint64_t sub_20BD11E38()
{
  result = qword_27C76E008;
  if (!qword_27C76E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E008);
  }

  return result;
}

uint64_t sub_20BD11E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C13C1F4() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_20BD1042C(a1, v6, v7, v8, a2);
}

unint64_t sub_20BD11F10()
{
  result = qword_27C76E030;
  if (!qword_27C76E030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E020, &qword_20C179E50);
    sub_20BD11F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E030);
  }

  return result;
}

unint64_t sub_20BD11F9C()
{
  result = qword_27C76E038;
  if (!qword_27C76E038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E040, &qword_20C179E58);
    sub_20BD12028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E038);
  }

  return result;
}

unint64_t sub_20BD12028()
{
  result = qword_27C76E048;
  if (!qword_27C76E048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E050, &qword_20C179E60);
    sub_20B6D6ABC(&qword_27C76E058, &qword_27C76E060, &qword_20C179E68, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E048);
  }

  return result;
}

uint64_t sub_20BD120E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BD12128(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_20BD12744(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if (result < 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20BD12260(unint64_t result, double a2)
{
  if (result)
  {
    v2 = result;
    sub_20C134634();
    sub_20BD120E0(&qword_27C76E100, MEMORY[0x277D508E8], MEMORY[0x277D508F0]);
    v3 = sub_20C13C7A4();
    v4 = v3 * v2;
    result = (v3 * v2) >> 64;
    if (v4 < v2)
    {
      v5 = -v2 % v2;
      if (v5 > v4)
      {
        do
        {
          v6 = sub_20C13C7A4();
        }

        while (v5 > v6 * v2);
        return (v6 * v2) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20BD12328(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x20F2F6A60](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_20BD12328(a1, a2);
  }
}

uint64_t sub_20BD123CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanArtworkV2.Day(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD12430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for WorkoutPlanArtworkV2.Day(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_20C13C1F4();
  v10 = *(v3 + v9);
  v11 = *(v3 + v9 + 8);

  return sub_20BD10A18(a1, a2, v3 + v8, v10, v11, a3);
}

uint64_t sub_20BD12530(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0C0, &qword_20C179ED0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_20BD12598()
{
  result = qword_27C76E098;
  if (!qword_27C76E098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E088, &qword_20C179EB8);
    sub_20BD12624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E098);
  }

  return result;
}

unint64_t sub_20BD12624()
{
  result = qword_27C76E0A0;
  if (!qword_27C76E0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E0A8, &qword_20C179EC0);
    sub_20B6D6ABC(&qword_27C76E0B0, &qword_27C76E0B8, &qword_20C179EC8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E0A0);
  }

  return result;
}

uint64_t sub_20BD126DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_20BD12744(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_20BD12758()
{
  v1 = OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation);
  }

  else
  {
    v4 = sub_20BD127B8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_20BD127B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
  [v0 setMass_];
  [v0 setStiffness_];
  [v0 setDamping_];
  v1 = v0;
  [v1 durationForEpsilon_];
  [v1 setDuration_];
  v2 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v3) = 1045220557;
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  v6 = [v2 initWithControlPoints__:0.0 :{v3, v4, v5}];
  [v1 setTimingFunction_];

  return v1;
}

uint64_t sub_20BD12948(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
  if (v4 && (v5 = *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider + 8], v6 = , v4(v6), v8 = v7, v9 = v7, sub_20B583ECC(v4, v5), v9 <= 0xFB) && (v8 & 0xC0) == 0x40)
  {
    result = [v2 isUserInteractionEnabled];
    if (result)
    {
      result = [v2 scrollsToTop];
      if (result)
      {
        result = [v2 isScrollEnabled];
        if (result)
        {
          if ([v2 isTracking])
          {
            return 0;
          }

          if ([v2 isZooming])
          {
            return 0;
          }

          [v2 contentOffset];
          if (v11 <= 0.0)
          {
            return 0;
          }

          v12 = [v2 delegate];
          if (v12)
          {
            v13 = v12;
            if ([v12 respondsToSelector_])
            {
              v14 = [v13 scrollViewShouldScrollToTop_];
              swift_unknownObjectRelease();
              if (!v14)
              {
                return 0;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          [v2 contentOffset];
          v16 = v15;
          v17 = sub_20BD12758();
          [v2 _setContentOffset_animated_animationCurve_animationAdjustsForContentOffsetDelta_animation_];

          return 1;
        }
      }
    }
  }

  else
  {
    v18.receiver = v2;
    v18.super_class = type metadata accessor for CollectionView();
    return objc_msgSendSuper2(&v18, sel__scrollToTopIfPossible_, v3 & 1);
  }

  return result;
}

id sub_20BD12C14(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CollectionView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_20BD12CD0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CollectionView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20BD12D8C()
{
  v33 = sub_20C136594();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134014();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C134A74();
  MEMORY[0x28223BE20](v36);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ShelfIndexedLazyLockup(0);
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 168);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v37 = MEMORY[0x277D84F90];

    sub_20B526D44(0, v11, 0);
    v12 = v37;
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v34 = *(v7 + 72);
    v28 = (v1 + 8);
    v29 = (v1 + 32);
    v27 = (v3 + 32);
    v25 = v10;
    v26 = (v3 + 8);
    do
    {
      sub_20BCC3E8C(v13, v9, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BCC3E8C(&v9[*(v35 + 20)], v6, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = v30;
        v15 = v31;
        (*v27)(v30, v6, v31);
        v16 = sub_20C133E44();
        v18 = v17;
        v19 = v26;
      }

      else
      {
        v14 = v32;
        v15 = v33;
        (*v29)(v32, v6, v33);
        v16 = sub_20C136564();
        v18 = v20;
        v19 = v28;
      }

      (*v19)(v14, v15);
      sub_20BD1672C(v9, type metadata accessor for ShelfIndexedLazyLockup);
      v37 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_20B526D44((v21 > 1), v22 + 1, 1);
        v12 = v37;
      }

      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v16;
      *(v23 + 40) = v18;
      v13 += v34;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_20BD13168(uint64_t (*a1)(unint64_t, void, char *, void), uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v39 = sub_20C136594();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C134014();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C134A74();
  MEMORY[0x28223BE20](v45);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E138, &unk_20C17A000);
  MEMORY[0x28223BE20](v44);
  v11 = (&v33 - v10);
  swift_beginAccess();
  v12 = *(v2 + 168);
  v13 = *(v12 + 16);
  v46 = v2;
  v47 = v13;
  v14 = (v5 + 32);
  v15 = (v5 + 8);
  v37 = (v3 + 32);

  v16 = 0;
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = v16;
    if (v47 == v16)
    {

      return;
    }

    if (v16 >= *(v12 + 16))
    {
      break;
    }

    v18 = (type metadata accessor for ShelfIndexedLazyLockup(0) - 8);
    v19 = v12 + ((*(*v18 + 80) + 32) & ~*(*v18 + 80)) + *(*v18 + 72) * v17;
    v20 = (v11 + *(v44 + 48));
    *v11 = v17;
    sub_20BCC3E8C(v19, v20, type metadata accessor for ShelfIndexedLazyLockup);
    sub_20BCC3E8C(v20 + v18[7], v9, MEMORY[0x277D50C70]);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = *v37;
      v36(v38, v9, v39);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80, &unk_20C165750);
      v24 = swift_allocBox();
      v26 = v25;
      v27 = v23[12];
      v34 = v23[16];
      v35 = v24;
      v28 = v23[20];
      *v25 = *v20;
      v36(v25 + v27, v38, v39);
      v29 = v46;
      *(v26 + v34) = *(v46 + 104);
      *(v26 + v28) = *(v29 + 105);
      v22 = v35 | 0x3000000000000007;
      sub_20B520158(v11, &qword_27C76E138, &unk_20C17A000);
      goto LABEL_8;
    }

    v21 = v41;
    (*v14)(v7, v9, v41);
    v22 = v42(v17, *v20, v7, *(v46 + 104));
    (*v15)(v7, v21);
    sub_20B520158(v11, &qword_27C76E138, &unk_20C17A000);
    v16 = v17 + 1;
    if ((~v22 & 0xF000000000000007) != 0)
    {
LABEL_8:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_20BC05D3C(0, *(v40 + 2) + 1, 1, v40);
      }

      v31 = *(v40 + 2);
      v30 = *(v40 + 3);
      if (v31 >= v30 >> 1)
      {
        v40 = sub_20BC05D3C((v30 > 1), v31 + 1, 1, v40);
      }

      v16 = v17 + 1;
      v32 = v40;
      *(v40 + 2) = v31 + 1;
      *&v32[8 * v31 + 32] = v22;
    }
  }

  __break(1u);
}

uint64_t sub_20BD1362C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a3;
  v101 = a4;
  v118 = sub_20C136594();
  v100 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v122 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_20C134014();
  v7 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v104 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v99 - v10;
  MEMORY[0x28223BE20](v11);
  v112 = (&v99 - v12);
  MEMORY[0x28223BE20](v13);
  v111 = (&v99 - v14);
  MEMORY[0x28223BE20](v15);
  v121 = (&v99 - v16);
  MEMORY[0x28223BE20](v17);
  v110 = &v99 - v18;
  v127 = sub_20C134A74();
  MEMORY[0x28223BE20](v127);
  v105 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v113 = &v99 - v21;
  MEMORY[0x28223BE20](v22);
  v119 = &v99 - v23;
  v125 = type metadata accessor for ShelfIndexedLazyLockup(0);
  MEMORY[0x28223BE20](v125);
  v114 = (&v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v124 = (&v99 - v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v99 - v28;
  MEMORY[0x28223BE20](v30);
  v120 = &v99 - v31;
  MEMORY[0x28223BE20](v32);
  v35 = &v99 - v34;
  v36 = *(a2 + 16);
  v116 = v7;
  v102 = v33;
  if (v36)
  {
    v109 = *a1;
    v37 = *(v33 + 72);
    v117 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v38 = a2 + v117;
    v107 = (v7 + 32);
    v106 = (v7 + 8);
    v126 = MEMORY[0x277D84F90];
    v39 = v119;
    v108 = v37;
    while (1)
    {
      sub_20BCC3E8C(v38, v35, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BCC3E8C(&v35[*(v125 + 20)], v39, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v40 = v29;
      v41 = v110;
      v42 = v123;
      v43 = (*v107)(v110, v39, v123);
      MEMORY[0x28223BE20](v43);
      *(&v99 - 2) = v41;
      sub_20B796808(sub_20BD1670C, (&v99 - 4), v109);
      v45 = v44;
      (*v106)(v41, v42);
      if (v45)
      {
        v29 = v40;
        v39 = v119;
        v37 = v108;
LABEL_9:
        sub_20BD1678C(v35, v29, type metadata accessor for ShelfIndexedLazyLockup);
        v46 = v126;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128[0] = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5E158(0, *(v126 + 16) + 1, 1);
          v39 = v119;
          v126 = v128[0];
        }

        v49 = *(v126 + 16);
        v48 = *(v126 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_20BB5E158((v48 > 1), v49 + 1, 1);
          v39 = v119;
          v126 = v128[0];
        }

        v50 = v126;
        *(v126 + 16) = v49 + 1;
        sub_20BD1678C(v29, v50 + v117 + v49 * v37, type metadata accessor for ShelfIndexedLazyLockup);
        goto LABEL_4;
      }

      sub_20BD1672C(v35, type metadata accessor for ShelfIndexedLazyLockup);
      v29 = v40;
      v39 = v119;
      v37 = v108;
LABEL_4:
      v38 += v37;
      if (!--v36)
      {
        goto LABEL_15;
      }
    }

    sub_20BD1672C(v39, MEMORY[0x277D50C70]);
    goto LABEL_9;
  }

  v126 = MEMORY[0x277D84F90];
LABEL_15:
  v51 = *(v126 + 16);
  v52 = MEMORY[0x277D84F90];
  if (v51)
  {
    v53 = *(v125 + 20);
    v54 = v126 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v55 = *(v102 + 72);
    v56 = (v116 + 32);
    v57 = v113;
    v58 = v111;
    do
    {
      v59 = v120;
      sub_20BCC3E8C(v54, v120, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BD1678C(v59 + v53, v57, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v60 = *v56;
        v61 = v112;
        v62 = v57;
        v63 = v123;
        (*v56)(v112, v62, v123);
        v60(v58, v61, v63);
        v60(v121, v58, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_20BC06C30(0, v52[2] + 1, 1, v52);
        }

        v65 = v52[2];
        v64 = v52[3];
        if (v65 >= v64 >> 1)
        {
          v52 = sub_20BC06C30((v64 > 1), v65 + 1, 1, v52);
        }

        v52[2] = v65 + 1;
        v60((v52 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v65), v121, v123);
        v57 = v113;
      }

      else
      {
        sub_20BD1672C(v57, MEMORY[0x277D50C70]);
      }

      v54 += v55;
      --v51;
    }

    while (v51);
  }

  v66 = v115;

  v67 = sub_20BD172F4(v52);

  *(v66 + 160) = v67;

  v68 = *(v126 + 16);
  if (!v68)
  {

    v69 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v128[0] = MEMORY[0x277D84F90];
  sub_20BB5E158(0, v68, 0);
  v69 = v128[0];
  v70 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v71 = v126 + v70;
  v72 = *(v102 + 72);
  v121 = (v100 + 32);
  v112 = (v100 + 8);
  v113 = (v116 + 16);
  v111 = (v116 + 32);
  v73 = v105;
  v74 = v114;
  v119 = v72;
  v120 = v70;
  do
  {
    sub_20BCC3E8C(v71, v74, type metadata accessor for ShelfIndexedLazyLockup);
    sub_20BCC3E8C(v74 + *(v125 + 20), v73, MEMORY[0x277D50C70]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20BD1678C(v74, v124, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BD1672C(v73, MEMORY[0x277D50C70]);
      goto LABEL_35;
    }

    v75 = *v121;
    v76 = v118;
    (*v121)(v122, v73, v118);
    v77 = sub_20C136564();
    v79 = v78;
    v80 = *(v115 + 160);
    if (*(v80 + 16))
    {
      v81 = v77;

      v82 = sub_20B65AA60(v81, v79);
      v84 = v83;

      if (v84)
      {
        v85 = v116;
        v86 = *(v80 + 56) + *(v116 + 72) * v82;
        v87 = v104;
        v88 = v123;
        (*(v116 + 16))(v104, v86, v123);

        (*v112)(v122, v118);
        v89 = *(v85 + 32);
        v90 = v103;
        v89(v103, v87, v88);
        v74 = v114;
        v117 = *v114;
        sub_20BD1672C(v114, type metadata accessor for ShelfIndexedLazyLockup);
        v91 = v124;
        v89(v124 + *(v125 + 20), v90, v88);
        swift_storeEnumTagMultiPayload();
        *v91 = v117;
        v72 = v119;
        v70 = v120;
        v73 = v105;
        goto LABEL_35;
      }

      v76 = v118;
      v73 = v105;
    }

    else
    {
    }

    v92 = v114;
    v93 = *v114;
    sub_20BD1672C(v114, type metadata accessor for ShelfIndexedLazyLockup);
    v94 = v124;
    (v75)(v124 + *(v125 + 20), v122, v76);
    v74 = v92;
    swift_storeEnumTagMultiPayload();
    *v94 = v93;
    v72 = v119;
    v70 = v120;
LABEL_35:
    v128[0] = v69;
    v96 = *(v69 + 16);
    v95 = *(v69 + 24);
    if (v96 >= v95 >> 1)
    {
      sub_20BB5E158((v95 > 1), v96 + 1, 1);
      v74 = v114;
      v69 = v128[0];
    }

    *(v69 + 16) = v96 + 1;
    sub_20BD1678C(v124, v69 + v70 + v96 * v72, type metadata accessor for ShelfIndexedLazyLockup);
    v71 += v72;
    --v68;
  }

  while (v68);

LABEL_40:
  v97 = v115;
  swift_beginAccess();
  *(v97 + 168) = v69;

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BD14244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E130, &qword_20C179FF8);
  MEMORY[0x28223BE20](v62);
  v58 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v44 - v8;
  v9 = type metadata accessor for ShelfIndexedLazyLockup(0);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v49 = v14;
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v51 = &v44 - v16;
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v45 = v13;
    v46 = v12;
    v47 = v3;
    v48 = a2;
    v64 = MEMORY[0x277D84F90];
    sub_20BB5E158(0, v17, 0);
    v18 = v64;
    v19 = 0;
    v54 = sub_20C136594();
    v20 = *(v54 - 8);
    v21 = *(v20 + 16);
    v20 += 16;
    v56 = v17;
    v57 = v21;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v23 = *(v20 + 56);
    v55 = v20;
    v52 = (v20 + 16);
    v53 = v23;
    v24 = v21;
    v25 = v58;
    do
    {
      v63 = v18;
      v27 = v61;
      v26 = v62;
      v28 = *(v62 + 48);
      v29 = v54;
      v24(&v61[v28], v22, v54);
      *v25 = v19;
      v30 = *(v26 + 48);
      (*v52)(&v25[v30], &v27[v28], v29);
      v31 = v29;
      v18 = v63;
      v24(&v11[*(v60 + 20)], &v25[v30], v31);
      sub_20C134A74();
      swift_storeEnumTagMultiPayload();
      *v11 = v19;
      sub_20B520158(v25, &qword_27C76E130, &qword_20C179FF8);
      v64 = v18;
      v33 = *(v18 + 16);
      v32 = *(v18 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_20BB5E158((v32 > 1), v33 + 1, 1);
        v18 = v64;
      }

      ++v19;
      *(v18 + 16) = v33 + 1;
      sub_20BD1678C(v11, v18 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v33, type metadata accessor for ShelfIndexedLazyLockup);
      v22 += v53;
    }

    while (v56 != v19);
    v3 = v47;
    v13 = v45;
    v12 = v46;
  }

  v34 = v3[11];
  v35 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v34);
  v36 = v51;
  (*(v35 + 8))(v34, v35);
  v37 = swift_allocObject();
  *(v37 + 16) = v18;
  *(v37 + 24) = v3;
  v38 = v50;
  (*(v13 + 16))(v50, v36, v12);
  v39 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v40 = (v49 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v13 + 32))(v41 + v39, v38, v12);
  v42 = (v41 + v40);
  *v42 = sub_20B8406F4;
  v42[1] = v37;

  sub_20C137C94();
  return (*(v13 + 8))(v36, v12);
}

void sub_20BD14728(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C134A74();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ShelfIndexedLazyLockup(0);
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7A8, &qword_20C179FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_20C136594();
  v36 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v41 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 20 * (a1 / 20);
  if (!__OFADD__(v15, 20))
  {
    swift_beginAccess();
    v16 = *(*(v2 + 168) + 16) - 1;
    if (v16 >= (v15 + 20))
    {
      v16 = v15 + 20;
    }

    v40 = v16;
    if (v16 < v15)
    {
      sub_20BD17628();
      v17 = swift_allocError();
      *v18 = 3;
      *(swift_allocObject() + 16) = v17;
LABEL_25:
      sub_20C137CA4();
      return;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      v33 = a2;
      v19 = *(v2 + 168);
      if (v15 < *(v19 + 16))
      {
        v20 = (v36 + 32);
        v38 = (v36 + 48);
        v39 = (v36 + 56);
        v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v37 = *(v8 + 72);
        v22 = v21 + v37 * v15;
        v23 = MEMORY[0x277D84F90];
        v34 = v7;
        v35 = v5;
        while (1)
        {
          v24 = v42;
          sub_20BCC3E8C(v19 + v22, v42, type metadata accessor for ShelfIndexedLazyLockup);
          sub_20BD1678C(v24 + *(v43 + 20), v7, MEMORY[0x277D50C70]);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            (*v39)(v12, 1, 1, v13);
            sub_20BD1672C(v7, MEMORY[0x277D50C70]);
          }

          else
          {
            (*v20)(v12, v7, v13);
            (*v39)(v12, 0, 1, v13);
          }

          if ((*v38)(v12, 1, v13) == 1)
          {
            sub_20B520158(v12, &qword_27C76B7A8, &qword_20C179FF0);
          }

          else
          {
            v25 = v2;
            v26 = *v20;
            (*v20)(v41, v12, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_20BC0662C(0, *(v23 + 2) + 1, 1, v23);
            }

            v28 = *(v23 + 2);
            v27 = *(v23 + 3);
            if (v28 >= v27 >> 1)
            {
              v23 = sub_20BC0662C((v27 > 1), v28 + 1, 1, v23);
            }

            *(v23 + 2) = v28 + 1;
            v26(&v23[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28], v41, v13);
            v2 = v25;
            v7 = v34;
          }

          if (v40 == v15)
          {
            break;
          }

          ++v15;
          v19 = *(v2 + 168);
          v22 += v37;
          if (v15 >= *(v19 + 16))
          {
            goto LABEL_26;
          }
        }

        v30 = sub_20B63F2F0(v29, v23);

        if (*(v30 + 16))
        {
          sub_20BD14CEC(v30, v33);

          return;
        }

        sub_20BD17628();
        v31 = swift_allocError();
        *v32 = 1;
        *(swift_allocObject() + 16) = v31;
        goto LABEL_25;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

double sub_20BD14CEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v133 = *(v4 - 8);
  v134 = v4;
  MEMORY[0x28223BE20](v4);
  v130 = v5;
  v131 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v132 = &v118 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358, &qword_20C1713C0);
  v128 = *(v8 - 8);
  v129 = v8;
  MEMORY[0x28223BE20](v8);
  v126 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v9;
  MEMORY[0x28223BE20](v10);
  v127 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v118 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v118 - v20;
  v135 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v118 - v24;
  v147 = sub_20C136594();
  v26 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C13BB84();
  MEMORY[0x28223BE20](v28);
  v124 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  if (v32)
  {
    v118 = v30;
    v119 = v29;
    v120 = v15;
    v138 = v25;
    v136 = v21;
    v121 = v18;
    v122 = v13;
    v123 = v12;
    v140 = v2;
    v148 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v32, 0);
    v33 = v148;
    v35 = *(v26 + 16);
    v34 = v26 + 16;
    v36 = *(v34 + 64);
    v139 = a1;
    v37 = a1 + ((v36 + 32) & ~v36);
    v144 = *(v34 + 56);
    v145 = v35;
    v141 = v34;
    v143 = (v34 - 8);
    v38 = v37;
    v39 = v32;
    do
    {
      v40 = v146;
      v41 = v147;
      v145(v146, v38, v147);
      v42 = sub_20C136564();
      v44 = v43;
      v142 = *v143;
      v142(v40, v41);
      v148 = v33;
      v46 = *(v33 + 16);
      v45 = *(v33 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_20B526D44((v45 > 1), v46 + 1, 1);
        v33 = v148;
      }

      *(v33 + 16) = v46 + 1;
      v47 = v33 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
      v38 += v144;
      --v39;
    }

    while (v39);
    v48 = v124;
    sub_20C13B534();

    v49 = sub_20C13BB74();
    v50 = sub_20C13D1F4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v148 = v52;
      *v51 = 136446210;
      v53 = MEMORY[0x20F2F43F0](v33, MEMORY[0x277D837D0]);
      v55 = v54;

      v56 = sub_20B51E694(v53, v55, &v148);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_20B517000, v49, v50, "[ShelfLazyLockupFetcher] refreshing lockups with identifiers %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x20F2F6A40](v52, -1, -1);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    else
    {
    }

    (*(v118 + 8))(v48, v119);
    v61 = v140;
    v62 = v140[19];

    v64 = sub_20B745ACC(v63, v62);

    v61[19] = v64;

    v148 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v32, 0);
    v65 = v148;
    do
    {
      v66 = v146;
      v67 = v147;
      v145(v146, v37, v147);
      v68 = sub_20C136564();
      v70 = v69;
      v142(v66, v67);
      v148 = v65;
      v72 = *(v65 + 16);
      v71 = *(v65 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_20B526D44((v71 > 1), v72 + 1, 1);
        v65 = v148;
      }

      *(v65 + 16) = v72 + 1;
      v73 = v65 + 16 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
      v37 += v144;
      --v32;
    }

    while (v32);
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    v75 = v74;
    __swift_project_boxed_opaque_existential_1(v61 + 3, v61[6]);
    v76 = v127;
    sub_20C139F14();
    v77 = swift_allocObject();
    *(v77 + 16) = sub_20B80E4E0;
    *(v77 + 24) = v75;
    v147 = v75;
    v79 = v128;
    v78 = v129;
    v80 = v126;
    (*(v128 + 16))(v126, v76, v129);
    v81 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v82 = (v125 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    (*(v79 + 32))(v83 + v81, v80, v78);
    v84 = (v83 + v82);
    *v84 = sub_20BD1757C;
    v84[1] = v77;

    sub_20C137C94();
    (*(v79 + 8))(v76, v78);
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    v86 = v140[11];
    v87 = v140[12];
    __swift_project_boxed_opaque_existential_1(v140 + 8, v86);
    v88 = v132;
    (*(v87 + 8))(v86, v87);
    v89 = swift_allocObject();
    *(v89 + 16) = sub_20BD177AC;
    *(v89 + 24) = v85;
    v146 = v85;
    v91 = v133;
    v90 = v134;
    v92 = v131;
    (*(v133 + 16))(v131, v88, v134);
    v93 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v94 = (v130 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    (*(v91 + 32))(v95 + v93, v92, v90);
    v96 = (v95 + v94);
    *v96 = sub_20BD175AC;
    v96[1] = v89;

    v97 = v136;
    sub_20C137C94();
    (*(v91 + 8))(v88, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
    v98 = v122;
    v99 = *(v122 + 72);
    v100 = *(v122 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_20C14F320;
    v102 = v101 + ((v100 + 32) & ~v100);
    v103 = *(v98 + 16);
    v145 = v103;
    v104 = v123;
    v103(v102, v138, v123);
    v103((v102 + v99), v97, v104);
    v148 = v101;
    sub_20B5E2E18();
    v105 = sub_20C13D374();
    sub_20C13A7C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B798, &unk_20C171400);
    sub_20BD175B4();
    v106 = v121;
    sub_20C137C84();

    v107 = swift_allocObject();
    v108 = v146;
    v107[2] = v147;
    v107[3] = v108;
    v109 = v139;
    v110 = v140;
    v107[4] = v65;
    v107[5] = v110;
    v107[6] = v109;
    v111 = swift_allocObject();
    *(v111 + 16) = sub_20BD17618;
    *(v111 + 24) = v107;
    v112 = v120;
    v145(v120, v106, v104);
    v113 = (v100 + 16) & ~v100;
    v114 = (v135 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
    v115 = swift_allocObject();
    (*(v98 + 32))(v115 + v113, v112, v104);
    v116 = (v115 + v114);
    *v116 = sub_20B64B960;
    v116[1] = v111;

    sub_20C137C94();
    v117 = *(v98 + 8);
    v117(v106, v104);
    v117(v136, v104);
    v117(v138, v104);
  }

  else
  {
    v57 = sub_20C133A24();
    sub_20BBAE560();
    v58 = swift_allocError();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D50210], v57);
    *(swift_allocObject() + 16) = v58;

    sub_20C137CA4();
  }

  return result;
}

void sub_20BD15A18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_20C134014();
  v126 = *(v12 - 8);
  v127 = v12;
  MEMORY[0x28223BE20](v12);
  v122 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v118 = &v114 - v15;
  MEMORY[0x28223BE20](v16);
  v125 = &v114 - v17;
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v114 - v23;
  swift_beginAccess();
  v119 = *(a1 + 16);
  if (!v119)
  {
    sub_20C13B534();
    v40 = sub_20C13BB74();
    v41 = sub_20C13D1D4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20B517000, v40, v41, "[ShelfLazyLockupFetcher] failed to fetch remote lockups", v42, 2u);
      MEMORY[0x20F2F6A40](v42, -1, -1);
    }

    (*(v19 + 8))(v24, v18);
    sub_20BD17628();
    v43 = swift_allocError();
    *v44 = 2;
    *(swift_allocObject() + 16) = v43;
    goto LABEL_15;
  }

  swift_beginAccess();
  v123 = *(a2 + 16);
  if (!v123)
  {
    sub_20C13B534();
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20B517000, v45, v46, "[ShelfLazyLockupFetcher] failed to fetch allowed content ratings", v47, 2u);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    (*(v19 + 8))(v21, v18);
    sub_20BD17628();
    v48 = swift_allocError();
    *v49 = 0;
    *(swift_allocObject() + 16) = v48;
LABEL_15:
    sub_20C137CA4();
    return;
  }

  v121 = a5;
  v115 = a4;
  v114 = a6;
  v25 = v119;
  v26 = *(v119 + 16);
  if (v26)
  {
    v120 = a3;
    v128 = MEMORY[0x277D84F90];

    sub_20B526D44(0, v26, 0);
    v27 = v128;
    v124 = *(v126 + 16);
    v28 = v25 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
    v29 = *(v126 + 72);
    v30 = (v126 + 8);
    do
    {
      v31 = v125;
      v32 = v127;
      (v124)(v125, v28, v127);
      v33 = sub_20C133E44();
      v35 = v34;
      isUniquelyReferenced_nonNull_native = (*v30)(v31, v32);
      v128 = v27;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_20B526D44((v37 > 1), v38 + 1, 1);
        v27 = v128;
      }

      *(v27 + 16) = v38 + 1;
      v39 = v27 + 16 * v38;
      *(v39 + 32) = v33;
      *(v39 + 40) = v35;
      v28 += v29;
      --v26;
    }

    while (v26);
    a3 = v120;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v124 = v27;
  v50 = *(a3 + 16);
  if (v50)
  {
    v51 = 0;
    v52 = a3 + 40;
    v116 = MEMORY[0x277D84F90];
    v120 = a3 + 40;
    do
    {
      v53 = (v52 + 16 * v51);
      v54 = v51;
      while (1)
      {
        if (v54 >= v50)
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v51 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_65;
        }

        v56 = *(v53 - 1);
        v55 = *v53;
        v128 = v56;
        v129 = v55;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v114 - 2) = &v128;

        if ((sub_20B79692C(sub_20B606650, (&v114 - 4), v124) & 1) == 0)
        {
          break;
        }

        ++v54;
        v53 += 2;
        if (v51 == v50)
        {
          goto LABEL_32;
        }
      }

      v57 = v116;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130 = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_20B526D44(0, *(v57 + 16) + 1, 1);
        v57 = v130;
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_20B526D44((v58 > 1), v59 + 1, 1);
        v57 = v130;
      }

      *(v57 + 16) = v59 + 1;
      v116 = v57;
      v60 = v57 + 16 * v59;
      *(v60 + 32) = v56;
      *(v60 + 40) = v55;
      v52 = v120;
    }

    while (v51 != v50);
  }

  else
  {
    v116 = MEMORY[0x277D84F90];
  }

LABEL_32:
  v61 = v115;
  v62 = *(v115 + 152);

  *(v61 + 152) = sub_20B6D38F8(v121, v62);

  v63 = v119;
  v121 = *(v119 + 16);
  if (v121)
  {
    v64 = 0;
    v120 = v126 + 16;
    v117 = (v126 + 8);
    v65 = (v126 + 32);
    v66 = MEMORY[0x277D84F90];
    v67 = v127;
    v68 = v118;
    while (v64 < *(v63 + 16))
    {
      v69 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v70 = *(v126 + 72);
      v71 = (*(v126 + 16))(v68, v63 + v69 + v70 * v64, v67);
      MEMORY[0x28223BE20](v71);
      *(&v114 - 2) = v68;
      sub_20B796808(sub_20BD177C4, (&v114 - 4), v123);
      if (v72)
      {
        v73 = v68;
        v74 = *v65;
        (*v65)(v122, v73, v67);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v66;
        if ((v75 & 1) == 0)
        {
          sub_20BB5E8CC(0, *(v66 + 16) + 1, 1);
          v67 = v127;
          v66 = v128;
        }

        v77 = *(v66 + 16);
        v76 = *(v66 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_20BB5E8CC((v76 > 1), v77 + 1, 1);
          v67 = v127;
          v66 = v128;
        }

        *(v66 + 16) = v77 + 1;
        v74((v66 + v69 + v77 * v70), v122, v67);
        v68 = v118;
        v63 = v119;
      }

      else
      {
        (*v117)(v68, v67);
      }

      if (v121 == ++v64)
      {
        goto LABEL_44;
      }
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v66 = MEMORY[0x277D84F90];
LABEL_44:

  v78 = *(v66 + 16);
  v79 = MEMORY[0x277D84F90];
  v121 = v66;
  if (v78)
  {
    v128 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v78, 0);
    v80 = v127;
    v79 = v128;
    v81 = *(v126 + 16);
    v82 = v66 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
    v122 = *(v126 + 72);
    v123 = v81;
    v126 += 16;
    v83 = (v126 - 8);
    do
    {
      v84 = v125;
      v123(v125, v82, v80);
      v85 = sub_20C133E44();
      v80 = v127;
      v86 = v85;
      v88 = v87;
      (*v83)(v84, v127);
      v128 = v79;
      v90 = *(v79 + 16);
      v89 = *(v79 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_20B526D44((v89 > 1), v90 + 1, 1);
        v80 = v127;
        v79 = v128;
      }

      *(v79 + 16) = v90 + 1;
      v91 = v79 + 16 * v90;
      *(v91 + 32) = v86;
      *(v91 + 40) = v88;
      v82 += v122;
      --v78;
    }

    while (v78);
  }

  v92 = v124;
  v93 = *(v124 + 16);
  if (v93)
  {
    v94 = 0;
    v95 = v124 + 40;
    v125 = v93 - 1;
    v126 = v124 + 40;
    v127 = MEMORY[0x277D84F90];
LABEL_51:
    v96 = (v95 + 16 * v94);
    v97 = v94;
    while (v97 < *(v124 + 16))
    {
      v99 = *(v96 - 1);
      v98 = *v96;
      v94 = v97 + 1;
      v128 = v99;
      v129 = v98;
      MEMORY[0x28223BE20](v92);
      *(&v114 - 2) = &v128;

      if ((sub_20B79692C(sub_20B606CAC, (&v114 - 4), v79) & 1) == 0)
      {
        v100 = v127;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v130 = v100;
        if ((v101 & 1) == 0)
        {
          sub_20B526D44(0, *(v100 + 16) + 1, 1);
          v100 = v130;
        }

        v92 = v124;
        v103 = *(v100 + 16);
        v102 = *(v100 + 24);
        if (v103 >= v102 >> 1)
        {
          sub_20B526D44((v102 > 1), v103 + 1, 1);
          v92 = v124;
          v100 = v130;
        }

        *(v100 + 16) = v103 + 1;
        v127 = v100;
        v104 = v100 + 16 * v103;
        *(v104 + 32) = v99;
        *(v104 + 40) = v98;
        v95 = v126;
        if (v125 != v97)
        {
          goto LABEL_51;
        }

        goto LABEL_63;
      }

      v96 += 2;
      ++v97;
      if (v93 == v94)
      {
        goto LABEL_63;
      }
    }

LABEL_67:
    __break(1u);
    return;
  }

  v127 = MEMORY[0x277D84F90];
LABEL_63:

  v128 = v116;
  sub_20B8DB710(v127);
  v105 = v128;
  v106 = v115;

  v107 = v121;
  v108 = sub_20BD172F4(v121);

  *(v106 + 160) = v108;

  swift_beginAccess();
  v109 = *(v106 + 168);

  v110 = sub_20B527580(v105);

  v111 = sub_20C12D21C(v110, v109);

  *(v106 + 168) = v111;

  v112 = *(v106 + 168);

  v113 = sub_20BCC36F4(v107, v112);

  *(v106 + 168) = v113;

  _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

unint64_t sub_20BD165E8(char *a1)
{
  v1 = sub_20C133E84();
  v3 = v2;
  v5 = v4 & 1;
  sub_20B654378();
  sub_20B652F70();
  v6 = sub_20C133C04();
  sub_20B583F4C(v1, v3, v5);
  return v6 & 1;
}

uint64_t sub_20BD16688()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_20BD1672C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BD1678C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20BD167F4(uint64_t a1, uint64_t a2)
{
  v68 = sub_20C136594();
  v4 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v57 - v7;
  v83 = sub_20C134014();
  v8 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C134A74();
  MEMORY[0x28223BE20](v81);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E138, &unk_20C17A000);
  MEMORY[0x28223BE20](v80);
  v84 = &v57 - v12;
  swift_beginAccess();
  v13 = *(a1 + 168);
  v14 = *(v13 + 16);
  v15 = OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_mediaTagStringBuilder;
  v59 = OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_lastEditOperation;

  v79 = v14;
  if (v14)
  {
    v16 = 0;
    v65 = (a2 + v15);
    v58 = a2;
    v64 = a2 + OBJC_IVAR____TtC9SeymourUI25TVUpNextQueueGalleryShelf_displayState;
    v63 = (v4 + 32);
    v62 = (v8 + 32);
    v61 = (v8 + 16);
    v60 = (v8 + 8);
    v17 = MEMORY[0x277D84F90];
    v77 = v11;
    v78 = a1;
    v18 = v84;
    v76 = v13;
    while (v16 < *(v13 + 16))
    {
      v85 = v17;
      v19 = (type metadata accessor for ShelfIndexedLazyLockup(0) - 8);
      v20 = v13 + ((*(*v19 + 80) + 32) & ~*(*v19 + 80)) + *(*v19 + 72) * v16;
      v21 = (v18 + *(v80 + 48));
      *v18 = v16;
      sub_20BCC3E8C(v20, v21, type metadata accessor for ShelfIndexedLazyLockup);
      sub_20BCC3E8C(v21 + v19[7], v11, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v62)(v82, v11, v83);
        v74 = *v21;
        v75 = *(a1 + 104);
        v22 = v65[3];
        v23 = v65[4];
        __swift_project_boxed_opaque_existential_1(v65, v22);
        v24 = sub_20C136194();
        v25 = v66;
        (*(*(v24 - 8) + 56))(v66, 1, 1, v24);
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v25, v22, v23, v86);
        sub_20B520158(v25, &unk_27C765110, &unk_20C152460);
        v26 = *(v64 + 8) >> 62;
        if (v26 == 2)
        {
          if (v16 == *(v64 + 16))
          {
            v27 = 3;
          }

          else
          {
            v27 = (*(v58 + v59) == 2) | *(v58 + v59) & 1;
          }
        }

        else if ((v26 - 3) >= 0xFFFFFFFE)
        {
          v27 = (*(v58 + v59) == 2) | *(v58 + v59) & 1;
        }

        else
        {
          v27 = 2;
        }

        v73 = v27;
        v71 = v86[0];
        v70 = v86[1];
        v69 = v86[2];
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0, &unk_20C151840);
        v72 = swift_allocBox();
        v43 = v42;
        v44 = v41[12];
        v45 = v41[16];
        v46 = (v42 + v41[20]);
        v47 = v42 + v41[24];
        v48 = v42 + v41[28];
        v49 = v41[32];
        v50 = v41[36];
        *v42 = v74;
        v52 = v82;
        v51 = v83;
        (*v61)(v42 + v44, v82, v83);
        *(v43 + v45) = v75;
        v53 = v70;
        *v46 = v71;
        v46[1] = v53;
        v46[2] = v69;
        v54 = v73;
        *(v47 + 4) = 0;
        *v47 = 0u;
        *(v47 + 1) = 0u;
        *(v47 + 20) = (v54 << 8) | 1;
        *v48 = 3;
        v48[8] = 3;
        *(v43 + v49) = 0;
        *(v43 + v50) = sub_20B6B2348(MEMORY[0x277D84F90]);
        v40 = v72 | 0x3000000000000006;
        (*v60)(v52, v51);
        a1 = v78;
        v18 = v84;
      }

      else
      {
        v28 = *v63;
        v29 = v67;
        v30 = v68;
        (*v63)(v67, v11, v68);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80, &unk_20C165750);
        v32 = swift_allocBox();
        v34 = v33;
        v35 = v31[12];
        v36 = v31[16];
        v37 = v31[20];
        *v33 = *v21;
        v38 = v33 + v35;
        v39 = v29;
        a1 = v78;
        v28(v38, v39, v30);
        v18 = v84;
        *(v34 + v36) = *(a1 + 104);
        *(v34 + v37) = *(a1 + 105);
        v40 = v32 | 0x3000000000000007;
      }

      sub_20B520158(v18, &qword_27C76E138, &unk_20C17A000);
      v17 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_20BC05D3C(0, *(v17 + 2) + 1, 1, v17);
      }

      v13 = v76;
      v11 = v77;
      v56 = *(v17 + 2);
      v55 = *(v17 + 3);
      if (v56 >= v55 >> 1)
      {
        v17 = sub_20BC05D3C((v55 > 1), v56 + 1, 1, v17);
      }

      ++v16;
      *(v17 + 2) = v56 + 1;
      *&v17[8 * v56 + 32] = v40;
      if (v79 == v16)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

void sub_20BD16FC4(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = sub_20C134014();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928, &unk_20C179FE0);
  MEMORY[0x28223BE20](v8);
  v41 = (v37 - v11);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 48);
    v39 = v5;
    v40 = v13;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v43 = (v42 + 32);
    v37[2] = v42 + 40;
    v38 = v15;
    while (1)
    {
      v44 = v12;
      v17 = v41;
      sub_20BD1750C(v14, v41);
      v19 = *v17;
      v18 = v17[1];
      v20 = *v43;
      v21 = v7;
      (*v43)(v7, v17 + v40, v5);
      v22 = *v45;
      v24 = sub_20B65AA60(v19, v18);
      v25 = v22[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      if (v22[3] >= v27)
      {
        if ((a2 & 1) == 0)
        {
          sub_20BA114B8();
        }
      }

      else
      {
        sub_20BA0C3EC(v27, a2 & 1);
        v29 = sub_20B65AA60(v19, v18);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_17;
        }

        v24 = v29;
      }

      v31 = *v45;
      if (v28)
      {

        v16 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        (*(v42 + 40))(v16, v21, v39);
      }

      else
      {
        v31[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v31[6] + 16 * v24);
        *v32 = v19;
        v32[1] = v18;
        v33 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        v20(v33, v21, v39);
        v34 = v31[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_16;
        }

        v31[2] = v36;
      }

      v14 += v38;
      a2 = 1;
      v12 = v44 - 1;
      if (v44 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_20C13E054();
    __break(1u);
  }
}

uint64_t sub_20BD172F4(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928, &unk_20C179FE0);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = (&v17 - v4);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = v1;
    v21 = MEMORY[0x277D84F90];
    sub_20BB5E784(0, v6, 0);
    v7 = v21;
    v19 = sub_20C134014();
    v8 = *(v19 - 8);
    v18 = *(v8 + 16);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v18(v5 + *(v20 + 48), v9, v19);
      *v5 = sub_20C133E44();
      v5[1] = v11;
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20BB5E784((v12 > 1), v13 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v13 + 1;
      sub_20BBAEB10(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
      v9 += v10;
      --v6;
    }

    while (v6);
    v1 = v17;
  }

  v14 = *(v1 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v14;
  sub_20BD16FC4(v7, isUniquelyReferenced_nonNull_native, &v21);

  return v21;
}

uint64_t sub_20BD1750C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928, &unk_20C179FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BD175B4()
{
  result = qword_27C771DC0;
  if (!qword_27C771DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76B798, &unk_20C171400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771DC0);
  }

  return result;
}

unint64_t sub_20BD17628()
{
  result = qword_27C76E128;
  if (!qword_27C76E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E128);
  }

  return result;
}

uint64_t sub_20BD1767C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20BD17758()
{
  result = qword_27C76E140;
  if (!qword_27C76E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76E140);
  }

  return result;
}

double sub_20BD1780C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  sub_20C03697C();
  sub_20BD181F0();
  sub_20B7959B8(0);
  result = sub_20BAD5954();
  v2 = *(*(*&v0[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = (v2 + 40);
    do
    {
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 48);
      swift_unknownObjectRetain();
      v7(ObjectType, v5);
      swift_unknownObjectRelease();
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_20BD17CBC(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_standardNavigationBarTintColor];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  v9 = v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior + 16];
  if (v9 <= 0xFB)
  {
    if (v9 >> 6 > 1)
    {
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
      sub_20C13DDF4();
      sub_20C1380E4();
    }

    else
    {
      sub_20BE8F76C();
    }
  }
}

void sub_20BD17EB0(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewWillDisappear_, a1 & 1);
  v17 = v2;
  sub_20C132E84();
  sub_20BD191D4(&qword_27C76E1D8, v9, type metadata accessor for CatalogEditorialCollectionDetailViewController, &unk_20C17A1C0);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v13 = sub_20C13CC74();

    v17 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = &v17;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v16 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v17 = v2;
      sub_20BD191D4(&qword_27C76E1E0, v15, type metadata accessor for CatalogEditorialCollectionDetailViewController, &unk_20C17A180);
      sub_20C138C64();
    }
  }
}

void sub_20BD181F0()
{
  v36[3] = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v36[0] = v0;
  type metadata accessor for MoreOptionsButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = v0;
  v3 = [ObjCClassFromMetadata buttonWithType_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  [v3 setTintColor_];
  v5 = *(v4 + 10);
  v6 = *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v5;
  v7 = v5;

  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = MEMORY[0x277D84FA0];

  sub_20BCC01CC(v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary], 0);
  sub_20B68E264(v36, v34);
  v8 = v35;
  if (v35)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_20C13DFD4();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v14 = 0;
  }

  [v3 addTarget:v14 action:sel_moreOptionsButtonTapped_ forControlEvents:0x2000];
  swift_unknownObjectRelease();
  sub_20B8006F4(v36);
  v15 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v17 = v3;
  *(v17 + 1) = &off_2822DD228;
  v33.receiver = v16;
  v33.super_class = v15;
  v18 = v3;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  [v19 setCustomView_];

  v20 = *&v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_upNextQueueButton];
  v21 = objc_allocWithZone(v15);
  v22 = &v21[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v22 = v20;
  *(v22 + 1) = &off_2822C8C68;
  v32.receiver = v21;
  v32.super_class = v15;
  v23 = v20;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  [v24 setCustomView_];

  if (v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_platform] == 1)
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C150040;
    *(v28 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v28 + 40) = v19;
    v27 = (v28 + 48);
    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_platform])
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20C151490;
    *(v26 + 32) = v19;
    v27 = (v26 + 40);
LABEL_8:
    *v27 = v24;
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v29 = v19;
    v30 = v24;
    v31 = sub_20C13CC54();

    [v25 setRightBarButtonItems_];
  }
}

double sub_20BD18630()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItems];

  if (!v2)
  {
    return result;
  }

  sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
  v4 = sub_20C13CC74();

  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_20C13DB34();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_22:

    return result;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2F5430](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = [v8 customView];
    if (v11)
    {
      break;
    }

    v7 = v9;
LABEL_6:

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_22;
    }
  }

  v7 = v11;
  type metadata accessor for MoreOptionsButton();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  v12 = v9;
  sub_20C03A3E4(v9, 0);

  return result;
}

id sub_20BD188CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BD18A10(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor] = v2;
    v4 = v2;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v10[4] = sub_20B7C9A90;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_120;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

uint64_t sub_20BD18BC0(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

double sub_20BD18CA8()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double sub_20BD18CF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BD18DA8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BD18E0C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139374();
}

id sub_20BD18EA0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v23[3] = a5;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v12 = &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -4;
  a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_resignActiveObserver] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_visibility] = 1;
  v13 = OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_standardNavigationBarTintColor;
  *&a4[v13] = [objc_opt_self() whiteColor];
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isBeyondScrollBoundary] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dependencies] = a1;
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_eventHub] = v22[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v22, &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v22, &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_storefrontLocalizer]);
  v14 = &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_contentInsetInitialBehavior];
  *v14 = 0;
  v14[8] = 0;
  sub_20B51CC64(v23, &a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_platform] = v22[0];
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_subscriptionToken] = sub_20C13A914();
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_upNextQueueButtonPresenter] = sub_20B887320(v15);
  v16 = sub_20BE8C450(&unk_28228D4A8);

  v18 = sub_20BAB9360(v17, v16, 0);

  *&a4[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_upNextQueueButton] = v18;
  v21.receiver = a4;
  v21.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v19 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v23);
  *(a2 + 24) = &off_2822DFFF8;
  swift_unknownObjectWeakAssign();
  return v19;
}

uint64_t sub_20BD191D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_20BD1921C()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_resignActiveObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_standardNavigationBarTintColor;
  *(v0 + v2) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BD1936C()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for EngagementBannerBackgroundView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  [v0 bounds];
  if (v3 != 0.0 || v2 != 0.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC9SeymourUI30EngagementBannerBackgroundView_imageDisplay + 8];
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    if (v6)
    {
      v7 = v6;
      [v6 size];
      if (v9 != 0.0 || v8 != 0.0)
      {
        v10 = *&v1[OBJC_IVAR____TtC9SeymourUI30EngagementBannerBackgroundView_imageDisplayWidthConstraint];
        [v1 bounds];
        Height = CGRectGetHeight(v16);
        [v7 size];
        v13 = Height / v12;
        [v7 size];
        [v10 setConstant_];

        v7 = v10;
      }
    }
  }
}

id sub_20BD19514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementBannerBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20BD195B8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_delegate[0] + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_showSeparator] = 1;
  v11 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
  v14 = [v11 layer];
  [v14 setCornerRadius_];

  [v11 setClipsToBounds_];
  *v13 = v11;
  v13[1] = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v16 &selRef_count + 2];
  [v16 setAxis_];
  [v16 setAlignment_];
  [v16 setSpacing_];
  [v16 setDistribution_];
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_headerLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  [v18 setFont_];

  v20 = objc_opt_self();
  v21 = [v20 systemGrayColor];
  [v18 setTextColor_];

  v22 = v18;
  [v22 &selRef_count + 2];
  [v22 setAdjustsFontForContentSizeCategory_];
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v22 &selRef:1 setBackgroundColor:v24 + 6];
  v25 = [v20 systemBackgroundColor];
  [v22 setBackgroundColor_];

  *&v4[v17] = v22;
  v26 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container;
  v27 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v27 &selRef_count + 2];
  v28 = [v20 clearColor];
  [v27 &:v28 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  *&v4[v26] = v27;
  v29 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_textLayoutGuide;
  *&v4[v29] = [objc_allocWithZone(MEMORY[0x277D756D0]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v30 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v31 &selRef_count + 2];
  v32 = [v20 whiteColor];
  [v31 setTextColor_];

  [v31 setNumberOfLines_];
  [v31 setLineBreakMode_];
  LODWORD(v33) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v33];
  v34 = [v20 systemBackgroundColor];
  [v31 setBackgroundColor_];

  *&v4[v30] = v31;
  v35 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel;
  v36 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = [v20 whiteColor];
  [v36 setTextColor_];

  [v36 setNumberOfLines_];
  [v36 setLineBreakMode_];
  LODWORD(v38) = 1148846080;
  [v36 setContentCompressionResistancePriority:1 forAxis:v38];
  v39 = [v20 systemBackgroundColor];
  [v36 setBackgroundColor_];

  *&v4[v35] = v36;
  v40 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator;
  v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = [v20 separatorColor];
  [v41 &:v42 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  *&v4[v40] = v41;
  v43 = &v4[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
  sub_20BD1CEF8(v69);
  v44 = v69[5];
  v43[4] = v69[4];
  v43[5] = v44;
  v45 = v69[6];
  v46 = v69[1];
  *v43 = v69[0];
  v43[1] = v46;
  v47 = v69[3];
  v43[2] = v69[2];
  v43[3] = v47;
  v43[6] = v45;
  v43[7] = xmmword_20C17A400;
  v43[8] = xmmword_20C15FDA0;
  v68.receiver = v4;
  v68.super_class = type metadata accessor for GroupedBrickItemCell(0);
  v48 = objc_msgSendSuper2(&v68, sel_initWithFrame_, a1, a2, a3, a4);
  v49 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container;
  v50 = *&v48[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container];
  v51 = *&v48[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
  v52 = v48;
  [v50 addSubview_];
  v53 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel;
  [*&v48[v49] addSubview_];
  v54 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel;
  [*&v48[v49] addSubview_];
  [*&v48[v49] addLayoutGuide_];
  v55 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView;
  [*&v52[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView] addArrangedSubview_];
  [*&v52[v55] addArrangedSubview_];
  v56 = [v52 contentView];
  [v56 addSubview_];

  v57 = *&v52[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator];
  v58 = v52;
  [v58 addSubview_];
  v59 = [v58 traitCollection];

  v60 = *&v52[v53];
  v61 = &v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
  v62 = *&v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 72];
  v71 = *&v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 56];
  v72 = v62;
  v73 = *&v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 88];
  v74 = *&v58[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 104];
  v63 = sub_20B7C6A74(v59);
  [v60 setFont_];

  v64 = *&v52[v54];
  v65 = *(v61 + 1);
  v69[7] = *v61;
  v69[8] = v65;
  v69[9] = *(v61 + 2);
  v70 = *(v61 + 6);
  v66 = sub_20B7C6A74(v59);
  [v64 setFont_];

  sub_20BD1A37C();
  return v58;
}

uint64_t sub_20BD1A01C(void *a1)
{
  v31.receiver = v1;
  v31.super_class = type metadata accessor for GroupedBrickItemCell(0);
  objc_msgSendSuper2(&v31, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v15 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel];
        v16 = &Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
        v17 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 72];
        v36 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 56];
        v37 = v17;
        v38 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 88];
        v39 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 104];
        v18 = sub_20B7C6A74(v13);
        [v15 setFont_];

        v19 = *&Strong[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel];
        v20 = *(v16 + 1);
        v32 = *v16;
        v33 = v20;
        v34 = *(v16 + 2);
        v35 = *(v16 + 6);
        v21 = sub_20B7C6A74(v13);
        [v19 setFont_];

        v3 = v21;
      }
    }
  }

  else
  {
    v22 = [v1 traitCollection];
    v23 = swift_unknownObjectUnownedLoadStrong();
    v24 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel];
    v25 = &v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
    v26 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 72];
    v36 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 56];
    v37 = v26;
    v38 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 88];
    v39 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 104];
    v27 = sub_20B7C6A74(v22);
    [v24 setFont_];

    v28 = *&v23[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel];
    v29 = *(v25 + 1);
    v32 = *v25;
    v33 = v29;
    v34 = *(v25 + 2);
    v35 = *(v25 + 6);
    v3 = sub_20B7C6A74(v22);
    [v28 setFont_];
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20BD1A37C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView];
  v3 = [v0 contentView];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  sub_20C13BBA4();
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v2 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v5];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v2 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v7];

  LODWORD(v16) = v113;
  [v15 setPriority_];
  v17 = v15;
  v18 = [v2 topAnchor];
  v19 = [v3 &selRef_setLineBreakMode_];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v4];

  LODWORD(v21) = 1148846080;
  [v20 setPriority_];
  v22 = [v2 bottomAnchor];
  v23 = [v3 &selRef_secondaryLabel + 5];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v6];

  LODWORD(v25) = 1148846080;
  [v24 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_20C14FE90;
  *(v112 + 32) = v12;
  *(v112 + 40) = v17;
  *(v112 + 48) = v20;
  *(v112 + 56) = v24;
  v26 = v20;

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C151850;
  v28 = v27;
  v29 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
  v30 = [v29 widthAnchor];
  v31 = [v1 contentView];
  v32 = [v31 widthAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 multiplier:0.5];
  v28[4] = v33;
  v34 = [v29 widthAnchor];
  v35 = [v29 heightAnchor];
  v36 = &v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider];
  v37 = [v34 constraintEqualToAnchor:v35 multiplier:*&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider + 112]];

  v28[5] = v37;
  v38 = [v29 leadingAnchor];
  v39 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container];
  v40 = [v39 leadingAnchor];
  v41 = [v38 constraintEqualToAnchor_];

  v28[6] = v41;
  v42 = [v29 topAnchor];
  v43 = [v39 topAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor_];

  v28[7] = v44;
  v45 = [v29 bottomAnchor];
  v46 = [v39 bottomAnchor];
  v47 = [v45 constraintLessThanOrEqualToAnchor:v46 constant:-v36[16]];

  v28[8] = v47;
  v111 = v28;
  v48 = [v29 centerYAnchor];
  v49 = [v39 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  v28[9] = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C150050;
  v52 = v51;
  v53 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_textLayoutGuide];
  v54 = [v53 leadingAnchor];
  v55 = [v29 trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:v36[15]];

  v52[4] = v56;
  v57 = [v53 centerYAnchor];
  v58 = [v29 centerYAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  v52[5] = v59;
  v60 = [v53 trailingAnchor];
  v61 = [v39 trailingAnchor];
  v62 = [v60 constraintLessThanOrEqualToAnchor_];

  v52[6] = v62;
  v63 = [v53 topAnchor];
  v64 = [v39 topAnchor];
  v65 = [v63 constraintGreaterThanOrEqualToAnchor_];

  v52[7] = v65;
  v66 = [v53 bottomAnchor];
  v67 = [v39 bottomAnchor];
  v68 = [v66 constraintLessThanOrEqualToAnchor_];

  v52[8] = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20C150040;
  v70 = v69;
  v71 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel];
  v72 = [v71 leadingAnchor];
  v73 = [v53 leadingAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  v70[4] = v74;
  v75 = [v71 trailingAnchor];
  v76 = [v53 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  v70[5] = v77;
  v78 = [v71 topAnchor];
  v79 = [v53 topAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  v70[6] = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_20C14FE90;
  v82 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel];
  v83 = [v82 leadingAnchor];
  v84 = [v53 leadingAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v81 + 32) = v85;
  v86 = [v82 trailingAnchor];
  v87 = [v53 trailingAnchor];
  v88 = [v86 constraintEqualToAnchor_];

  *(v81 + 40) = v88;
  v89 = [v82 topAnchor];
  v90 = [v71 bottomAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(v81 + 48) = v91;
  v92 = [v82 bottomAnchor];
  v93 = [v53 bottomAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  *(v81 + 56) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_20C14FE90;
  v96 = *&v1[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator];
  v97 = [v96 leadingAnchor];
  v98 = [v53 leadingAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  *(v95 + 32) = v99;
  v100 = [v96 trailingAnchor];
  v101 = [v1 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor_];

  *(v95 + 40) = v102;
  v103 = [v96 bottomAnchor];
  v104 = [v1 bottomAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v95 + 48) = v105;
  v106 = [v96 heightAnchor];
  sub_20C1387F4();
  v107 = [v106 constraintEqualToConstant_];

  *(v95 + 56) = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150DB0;
  *(inited + 32) = v112;
  *(inited + 40) = v111;
  *(inited + 48) = v52;
  *(inited + 56) = v70;
  *(inited + 64) = v81;
  *(inited + 72) = v95;
  v109 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v110 = sub_20C13CC54();

  [v109 activateConstraints_];
}

id sub_20BD1B0AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupedBrickItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GroupedBrickItemCell(uint64_t a1)
{
  result = qword_281102C98;
  if (!qword_281102C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD1B24C(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BD1B320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BD1B368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20BD1B3DC(unint64_t a1, int a2)
{
  LODWORD(v212) = a2;
  v4 = sub_20C13BB84();
  v213 = *(v4 - 8);
  v214 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v194 = *(v195 - 8);
  v7 = *(v194 + 64);
  MEMORY[0x28223BE20](v195);
  v191 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v192 = &v170 - v9;
  MEMORY[0x28223BE20](v10);
  v193 = &v170 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v170 - v13;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v204 = *(v205 - 8);
  v15 = *(v204 + 64);
  MEMORY[0x28223BE20](v205);
  MEMORY[0x28223BE20](v16);
  v198 = &v170 - v17;
  v201 = sub_20C1391C4();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v202 = &v170 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_20C138A64();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v203 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v20 - 8);
  v199 = &v170 - v21;
  v22 = sub_20C13C554();
  v210 = *(v22 - 8);
  v211 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = (&v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v218 = sub_20C137C24();
  v216 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v206 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = v25;
  MEMORY[0x28223BE20](v26);
  v217 = &v170 - v27;
  v28 = sub_20C136CD4();
  v208 = *(v28 - 8);
  v209 = v28;
  MEMORY[0x28223BE20](v28);
  v215 = &v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C134E44();
  MEMORY[0x28223BE20](v30 - 8);
  v219 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C134014();
  v221 = *(v32 - 8);
  v222 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v220 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = v2;
  v35 = *&v2[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_headerLabel];
  [v35 setHidden_];
  v223 = v35;
  [v35 setText_];
  v36 = (a1 >> 57) & 0x78 | a1 & 7;
  switch(v36)
  {
    case 28:
      v113 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v114 = v224;
      sub_20BD1B3DC(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20), v212 & 1);
      if (v113)
      {
        v115 = v223;
        [v223 setHidden_];
        v116 = sub_20C13C914();
        [v115 setText_];
      }

      [v114 setNeedsLayout];
      break;
    case 33:
      v111 = v224;
      sub_20BA1D9E0();
      [*&v111[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel] setText_];
      [*&v111[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel] setText_];
      v224 = [objc_opt_self() clearColor];
      [v223 setTextColor_];
      v112 = v224;

      break;
    case 32:
      v184 = v14;
      v180 = v15;
      v181 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v182 = v7;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
      v38 = swift_projectBox();
      v39 = v38 + *(v37 + 64);
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      v43 = *(v39 + 24);
      v45 = *(v39 + 32);
      v44 = *(v39 + 40);
      (*(v221 + 16))(v220, v38, v222);
      v46 = v224;
      v47 = *&v224[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel];
      v48 = v40;
      v49 = v41;
      v186 = v42;
      v212 = v43;

      v190 = v45;

      v188 = v44;

      v189 = v48;
      [v47 setAttributedText_];
      v50 = v46;
      v51 = *&v46[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel];
      v187 = v49;
      [v51 setAttributedText_];
      sub_20C133F04();
      v185 = sub_20C138054();
      v53 = v52;
      v54 = v215;
      sub_20C134E34();
      v55 = v217;
      sub_20C136CB4();
      v56 = sub_20C136CC4();
      v58 = v57;
      sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
      *v24 = sub_20C13D374();
      v59 = v210;
      v60 = v211;
      (*(v210 + 104))(v24, *MEMORY[0x277D85200], v211);
      LOBYTE(v48) = sub_20C13C584();
      (*(v59 + 8))(v24, v60);
      if (v48)
      {
        v62 = *&v50[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
        v61 = *&v50[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView + 8];
        ObjectType = swift_getObjectType();
        [v62 setContentMode_];
        v64 = sub_20BA66C54();
        v213 = ObjectType;
        v214 = v61;
        if (v64)
        {
          v178 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v65 = v216;
          v66 = *(v216 + 16);
          v67 = v206;
          v183 = v56;
          v68 = v218;
          v174 = v216 + 16;
          v175 = v66;
          v66(v206, v55, v218);
          v69 = *(v65 + 80);
          v70 = (v69 + 24) & ~v69;
          v171 = v207 + 7;
          v71 = (v207 + 7 + v70) & 0xFFFFFFFFFFFFFFF8;
          v211 = v58;
          v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
          v179 = v62;
          v73 = v53;
          v74 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
          v210 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
          v177 = (v74 + 31) & 0xFFFFFFFFFFFFFFF8;
          v176 = v69;
          v75 = swift_allocObject();
          *(v75 + 16) = v178;
          v76 = v65;
          v77 = v67;
          v173 = *(v76 + 32);
          v172 = v76 + 32;
          v173(v75 + v70, v67, v68);
          v78 = (v75 + v71);
          v79 = v211;
          v80 = v185;
          *v78 = v183;
          v78[1] = v79;
          v81 = (v75 + v72);
          *v81 = v80;
          v81[1] = v73;
          *(v75 + v74) = 2;
          v82 = v75 + v210;
          *v82 = MEMORY[0x277D84F90];
          *(v82 + 8) = 0;
          v83 = (v75 + v177);
          *v83 = 0;
          v83[1] = 0;
          v84 = v214;
          v85 = *(v214 + 152);

          v210 = v73;
          v86 = v179;

          v87 = v213;
          v85(sub_20BD1CCB0, v75, v213, v84);

          [v86 bounds];
          if (v88 <= 0.0 || (v90 = v89, v89 <= 0.0))
          {

            v109 = v223;
            v110 = v209;
            v55 = v217;
          }

          else
          {
            v91 = v88;
            v178 = ~v176;
            (*(v84 + 120))(0, v87, v84);
            v92 = v199;
            v93 = v217;
            v94 = v218;
            v95 = v175;
            v175(v199, v217, v218);
            (*(v216 + 56))(v92, 0, 1, v94);
            (*(v84 + 16))(v92, v87, v84);
            sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
            sub_20C137BC4();
            v96 = sub_20C13D5A4();
            [v86 setBackgroundColor_];

            (*(v84 + 176))(COERCE_DOUBLE(*&v91), COERCE_DOUBLE(*&v90), 0, v87, v84);
            v97 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v95(v77, v93, v94);
            v98 = (v176 + 16) & v178;
            v99 = (v171 + v98) & 0xFFFFFFFFFFFFFFF8;
            v100 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
            v101 = swift_allocObject();
            v199 = v101;
            v102 = v101 + v98;
            v103 = v218;
            v173(v102, v77, v218);
            *(v101 + v99) = v97;
            v104 = (v101 + v100);
            *v104 = v91;
            v104[1] = v90;
            v105 = (v101 + ((v100 + 23) & 0xFFFFFFFFFFFFFFF8));
            v55 = v217;
            *v105 = 0;
            v105[1] = 0;
            v175(v77, v55, v103);
            (*(v200 + 104))(v202, *MEMORY[0x277D542A8], v201);

            v106 = v203;
            sub_20C138A54();
            v107 = v184;
            sub_20B5F1988(v106, v184);
            v108 = v204;
            if ((*(v204 + 48))(v107, 1, v205) != 1)
            {
              v136 = *(v108 + 32);
              v211 = v108 + 32;
              v137 = v198;
              v136();
              v138 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v139 = v218;
              v175(v77, v55, v218);
              v140 = v108;
              v141 = (v176 + 40) & v178;
              v142 = v141 + v207;
              v143 = (v141 + v207) & 0xFFFFFFFFFFFFFFF8;
              v144 = swift_allocObject();
              *(v144 + 2) = v138;
              v144[3] = v91;
              v144[4] = v90;
              v173(v144 + v141, v77, v139);
              *(v144 + v142) = 0;
              v145 = v144 + v143;
              *(v145 + 1) = 0;
              *(v145 + 2) = 0;
              v146 = swift_allocObject();
              *(v146 + 16) = sub_20BD1CE44;
              *(v146 + 24) = v144;
              v147 = v181;
              v148 = v137;
              v149 = v205;
              (*(v140 + 16))(v181, v148, v205);
              v150 = (*(v140 + 80) + 16) & ~*(v140 + 80);
              v151 = (v180 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
              v152 = swift_allocObject();
              (v136)(v152 + v150, v147, v149);
              v153 = (v152 + v151);
              *v153 = sub_20B5F67A4;
              v153[1] = v146;
              v154 = v192;
              sub_20C137C94();
              v155 = swift_allocObject();
              v156 = v199;
              *(v155 + 16) = sub_20BD1CD88;
              *(v155 + 24) = v156;
              v157 = swift_allocObject();
              *(v157 + 16) = sub_20B5F67D4;
              *(v157 + 24) = v155;
              v158 = v194;
              v159 = v191;
              v160 = v195;
              (*(v194 + 16))(v191, v154, v195);
              v161 = (*(v158 + 80) + 16) & ~*(v158 + 80);
              v162 = (v182 + v161 + 7) & 0xFFFFFFFFFFFFFFF8;
              v163 = swift_allocObject();
              (*(v158 + 32))(v163 + v161, v159, v160);
              v164 = (v163 + v162);
              *v164 = sub_20B5DF204;
              v164[1] = v157;

              v165 = v193;
              sub_20C137C94();
              v166 = *(v158 + 8);
              v166(v154, v160);
              v167 = sub_20C137CB4();
              v168 = swift_allocObject();
              *(v168 + 16) = 0;
              *(v168 + 24) = 0;
              v167(sub_20B52347C, v168);

              v169 = v218;
              v166(v165, v160);
              (*(v204 + 8))(v198, v149);
              (*(v196 + 8))(v203, v197);
              v128 = v169;
              v109 = v223;
              v129 = v208;
              v110 = v209;
              v55 = v217;
              v54 = v215;
              v130 = v189;
              goto LABEL_24;
            }

            sub_20B520158(v107, &unk_27C766670, &unk_20C151580);
            sub_20BA1D9E0();

            (*(v196 + 8))(v106, v197);
            v109 = v223;
            v110 = v209;
          }

          v129 = v208;
          v54 = v215;
          v130 = v189;
          v128 = v218;
        }

        else
        {

          v109 = v223;
          v128 = v218;
          v129 = v208;
          v110 = v209;
          v130 = v189;
        }

LABEL_24:
        (*(v216 + 8))(v55, v128);
        (*(v129 + 8))(v54, v110);

        sub_20B62A2AC(v219);
        v131 = v220;
        v132 = sub_20C133EB4() > 0;
        v133 = v214;
        (*(v214 + 264))(v132, v213, v214);
        v134 = sub_20C133E54();
        (*(v133 + 296))(v134);

        v135 = [objc_opt_self() systemGrayColor];
        [v109 setTextColor_];

        (*(v221 + 8))(v131, v222);
        return;
      }

      __break(1u);
      break;
    default:
      sub_20C13B534();

      v117 = v224;
      v118 = sub_20C13BB74();
      v119 = sub_20C13D1D4();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v225 = a1;
        v226 = v122;
        *v120 = 138543618;
        *(v120 + 4) = v117;
        *v121 = v117;
        *(v120 + 12) = 2082;
        v123 = sub_20B5F66D0();
        v124 = v117;
        v125 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v123);
        v127 = sub_20B51E694(v125, v126, &v226);

        *(v120 + 14) = v127;
        _os_log_impl(&dword_20B517000, v118, v119, "Attempted to configure %{public}@ with item: %{public}s", v120, 0x16u);
        sub_20B520158(v121, &unk_27C762E30, &unk_20C150580);
        MEMORY[0x20F2F6A40](v121, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v122);
        MEMORY[0x20F2F6A40](v122, -1, -1);
        MEMORY[0x20F2F6A40](v120, -1, -1);
      }

      (*(v213 + 8))(v6, v214);
      break;
  }
}

double sub_20BD1CAE4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_delegate[0] + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BD1CB30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BD1CB88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BD1CBEC(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();

  sub_20B72097C(1, 2.0, v3);
}

id sub_20BD1CC60(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator) setHidden_];
}

void sub_20BD1CCB0()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA3CAF4(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BD1CD88(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63040(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BD1CE44(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2748(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20BD1CEF8(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D76968];
  v3 = *MEMORY[0x277D76818];
  v28 = MEMORY[0x277D84FA0];
  v22 = v3;
  sub_20B6FF83C(v27, 1);
  v30 = 0;
  v4 = v28;
  sub_20C13E164();
  v25 = v2;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 1 && v9 != 3 && v9 != 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_9;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v4;
    sub_20B706478(2u, v7, isUniquelyReferenced_nonNull_native);
    v4 = *v27;
  }

LABEL_9:
  v29 = 1;
  v24 = v30;
  v12 = *MEMORY[0x277D769D0];
  v26 = MEMORY[0x277D84FA0];
  v23 = v22;
  sub_20B6FF83C(v27, 1);
  v13 = v26;
  sub_20C13E164();
  v21 = v12;
  sub_20C13CA64();
  v14 = sub_20C13E1B4();
  v15 = -1 << *(v26 + 32);
  v16 = v14 & ~v15;
  if ((*(v26 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = *(*(v26 + 48) + v16);
      if (v18 > 1 && v18 != 3 && v18 != 4)
      {
        break;
      }

      v19 = sub_20C13DFF4();

      if (v19)
      {
        goto LABEL_17;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v26 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v26;
    sub_20B706478(2u, v16, v20);
    v13 = *v27;
  }

LABEL_17:
  v27[0] = 1;
  *a1 = 0;
  *(a1 + 8) = v23;
  *(a1 + 16) = v25;
  *(a1 + 24) = 0x8000;
  *(a1 + 28) = v24;
  *(a1 + 29) = 9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = v23;
  *(a1 + 72) = v21;
  *(a1 + 80) = 0x8000;
  *(a1 + 84) = 0;
  *(a1 + 85) = 9;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = v13;
}

void sub_20BD1D30C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_delegate[0] + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_showSeparator) = 1;
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_stackView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v8 &selRef_count + 2];
  [v8 setAxis_];
  [v8 setAlignment_];
  [v8 setSpacing_];
  [v8 setDistribution_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_headerLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v10 setFont_];

  v12 = objc_opt_self();
  v13 = [v12 systemGrayColor];
  [v10 setTextColor_];

  v14 = v10;
  [v14 &selRef_count + 2];
  [v14 setAdjustsFontForContentSizeCategory_];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 &selRef:1 setBackgroundColor:v16 + 6];
  v17 = [v12 systemBackgroundColor];
  [v14 setBackgroundColor_];

  *(v0 + v9) = v14;
  v18 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_container;
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v19 &selRef_count + 2];
  v20 = [v12 clearColor];
  [v19 &:v20 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  *(v0 + v18) = v19;
  v21 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_textLayoutGuide;
  *(v0 + v21) = [objc_allocWithZone(MEMORY[0x277D756D0]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v22 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_titleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v23 &selRef_count + 2];
  v24 = [v12 whiteColor];
  [v23 setTextColor_];

  [v23 setNumberOfLines_];
  [v23 setLineBreakMode_];
  LODWORD(v25) = 1148846080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v25];
  v26 = [v12 systemBackgroundColor];
  [v23 setBackgroundColor_];

  *(v0 + v22) = v23;
  v27 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_subtitleLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = [v12 whiteColor];
  [v28 setTextColor_];

  [v28 setNumberOfLines_];
  [v28 setLineBreakMode_];
  LODWORD(v30) = 1148846080;
  [v28 setContentCompressionResistancePriority:1 forAxis:v30];
  v31 = [v12 systemBackgroundColor];
  [v28 setBackgroundColor_];

  *(v0 + v27) = v28;
  v32 = OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_separator;
  v33 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = [v12 separatorColor];
  [v33 setBackgroundColor_];

  *(v0 + v32) = v33;
  v35 = (v0 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_styleProvider);
  sub_20BD1CEF8(v40);
  v36 = v40[5];
  v35[4] = v40[4];
  v35[5] = v36;
  v37 = v40[6];
  v38 = v40[1];
  *v35 = v40[0];
  v35[1] = v38;
  v39 = v40[3];
  v35[2] = v40[2];
  v35[3] = v39;
  v35[6] = v37;
  v35[7] = xmmword_20C17A400;
  v35[8] = xmmword_20C15FDA0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD1D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_20BD1DA90(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_20C13D064();
  if (!v19)
  {
    return sub_20C13CCC4();
  }

  v41 = v19;
  v45 = sub_20C13DDA4();
  v32 = sub_20C13DDB4();
  sub_20C13DD54();
  result = sub_20C13D024();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_20C13D0A4();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_20C13DD94();
      result = sub_20C13D084();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20BD1DEB0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(0, *(*v2 + 80), *(*v2 + 88), a1);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = *(v4 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  sub_20BD1E010(*(v2 + *(*v2 + 112)), v5, a2, v10);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20BD1E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = v4;
  v29 = a1;
  v31 = a3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ValidatedState(0, v7, v8, a4);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v13 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, v7, v8, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = *(a2 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, v5, a2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(*(v7 - 8) + 56))(v31, 1, 1, v7);
      return (*(v17 + 8))(v21, a2);
    }

    else
    {
      (*(v14 + 32))(v16, v21, v13);
      v25 = sub_20BD2110C(v29, v13, v11);
      (*(v14 + 8))(v16, v13, v25);
      v26 = *(v9 + 44);
      v27 = sub_20C13D914();
      (*(*(v27 - 8) + 16))(v31, &v11[v26], v27);
      return (*(v30 + 8))(v11, v9);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v24 = sub_20C1365F4();
      sub_20C13CD04();
      sub_20C13D914();
      swift_getTupleTypeMetadata2();

      (*(*(v24 - 8) + 8))(v21, v24);
    }

    else
    {
      (*(v17 + 8))(v21, a2);
    }

    return (*(*(v7 - 8) + 56))(v31, 1, 1, v7);
  }
}

uint64_t sub_20BD1E3E0(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, v8, v9, a5);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v15 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(0, v8, v9, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v6, a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v16 + 32))(v18, v22, v15);
      v25 = *&v18[*(v15 + 36)];
      v26 = *(v16 + 8);

      v26(v18, v15);
    }

    else
    {
      (*(v11 + 32))(v13, v22, v10);
      v25 = *&v13[*(v10 + 36)];
      v28 = *(v11 + 8);

      v28(v13, v10);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v27 = sub_20C1365F4();
    sub_20C13CD04();
    sub_20C13D914();
    v25 = *&v22[*(swift_getTupleTypeMetadata2() + 48)];
    (*(*(v27 - 8) + 8))(v22, v27);
  }

  else
  {
    return *v22;
  }

  return v25;
}

void sub_20BD1E6E8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v83 = a1;
  v84 = a2;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = sub_20C13D914();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v68 - v9;
  v10 = *(v6 + 88);
  v12 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, v7, v10, v11);
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x28223BE20](v12);
  v76 = &v68 - v13;
  v80 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(0, v7, v10, v14);
  v73 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v68 - v15;
  v71 = v7;
  v17 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(0, v7, v10, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v81 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v86 = &v68 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v68 - v26;
  v28 = sub_20C1365A4();
  v30 = v29;
  v31 = *(*v3 + 104);
  swift_beginAccess();
  v32 = *(v18 + 16);
  v88 = v31;
  v85 = v32;
  v32(v24, &v4[v31], v17);
  sub_20BD1EE58(v17, v27, v33);
  v82 = v18;
  v34 = *(v18 + 8);
  v87 = v17;
  v34(v24, v17);
  v35 = sub_20C1365F4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v27, 1, v35) == 1)
  {
    sub_20BD23440(v27);

    return;
  }

  v69 = v34;
  v70 = a3;
  v37 = sub_20C1365A4();
  v39 = v38;
  v40 = v27;
  v41 = *(v36 + 8);
  v41(v40, v35);
  if (v28 == v37 && v30 == v39)
  {
  }

  else
  {
    v42 = sub_20C13DFF4();

    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  v43 = v87;
  v44 = v86;
  v85(v86, &v4[v88], v87);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v46 = v73;
      v47 = v79;
      v48 = v44;
      v49 = v80;
      (*(v73 + 32))(v79, v48, v80);
      v50 = &v47[*(v49 + 48)];
      v51 = *v50;
      v52 = *(v50 + 1);
      v53 = v50[16];
      v55 = v83;
      v54 = v84;
      v56 = v70;
      sub_20B6D8730(v83, v84, v70);
      v57 = sub_20BC6AB28(v51, v52, v53);
      *v50 = v55;
      *(v50 + 1) = v54;
      v50[16] = v56;
      v59 = v80;
      v58 = v81;
      v60 = v79;
      (*(v46 + 16))(v81, v79, v80, v57);
      swift_storeEnumTagMultiPayload();
      v61 = v88;
      swift_beginAccess();
      (*(v82 + 40))(&v4[v61], v58, v43);
      swift_endAccess();
      sub_20BD20A60();
      (*(v46 + 8))(v60, v59);
    }

    else
    {
      v63 = v76;
      v62 = v77;
      v64 = v78;
      (*(v77 + 32))(v76, v44, v78);
      v65 = v72;
      sub_20BD220C8(v83, v84, v70, v72, v63);
      (*(v74 + 40))(v63 + *(v64 + 48), v65, v75);
      v66 = v81;
      (*(v62 + 16))(v81, v63, v64);
      swift_storeEnumTagMultiPayload();
      v67 = v88;
      swift_beginAccess();
      (*(v82 + 40))(&v4[v67], v66, v43);
      swift_endAccess();
      sub_20BD21668();
      (*(v62 + 8))(v63, v64);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    v41(v44, v35);
  }

  else
  {
    v69(v44, v43);
  }
}

uint64_t sub_20BD1EE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v5 = v4;
  v36 = a2;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, v7, v8, x3_0);
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v13 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(0, v7, v8, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v17 = *(a1 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, v5, a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v14 + 32))(v16, v21, v13);
      v25 = sub_20C1365F4();
      v26 = *(v25 - 8);
      v27 = v36;
      (*(v26 + 16))(v36, v16, v25);
      (*(v14 + 8))(v16, v13);
      return (*(v26 + 56))(v27, 0, 1, v25);
    }

    else
    {
      v31 = v35;
      (*(v35 + 32))(v11, v21, v9);
      v32 = sub_20C1365F4();
      v33 = *(v32 - 8);
      v34 = v36;
      (*(v33 + 16))(v36, v11, v32);
      (*(v31 + 8))(v11, v9);
      return (*(v33 + 56))(v34, 0, 1, v32);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v28 = sub_20C1365F4();
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    v29 = *(v28 - 8);
    v30 = v36;
    (*(v29 + 32))(v36, v21, v28);
    return (*(v29 + 56))(v30, 0, 1, v28);
  }

  else
  {
    (*(v17 + 8))(v21, a1);
    v23 = sub_20C1365F4();
    return (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  }
}

uint64_t sub_20BD1F2C4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_20C1365F4();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 80);
  v8 = *(v4 + 88);
  v10 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(0, v7, v8, v9);
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v41 - v11;
  v13 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(0, v7, v8, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  if (sub_20BD22050(a1))
  {
    v20 = *v2;
    v41 = v5;
    v21 = a1;
    v22 = *(v20 + 104);
    swift_beginAccess();
    v23 = (*(v14 + 16))(v19, &v2[v22], v13);
    v27 = sub_20BD1E3E0(v13, v23, v24, v25, v26);
    (*(v14 + 8))(v19, v13);
    v28 = sub_20BD222F0(v27, v21);

    v29 = v42;
    (*(v46 + 16))(v42, v21, v41);
    v30 = v43;
    sub_20BD1F780(v29, v28, 0, 0, 0, 0, 252, v7, v43, v8);
    v32 = v44;
    v31 = v45;
    (*(v44 + 16))(v19, v30, v45);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v14 + 40))(&v2[v22], v19, v13);
    swift_endAccess();
    sub_20BD21668();
    return (*(v32 + 8))(v30, v31);
  }

  else
  {
    sub_20C13CD04();
    sub_20C13D914();
    v34 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v46 + 16))(v19, a1, v5);
    v35 = *(*v2 + 104);
    swift_beginAccess();
    v36 = (*(v14 + 16))(v16, &v2[v35], v13);
    v40 = sub_20BD1E3E0(v13, v36, v37, v38, v39);
    (*(v14 + 8))(v16, v13);
    *&v19[v34] = v40;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v14 + 40))(&v2[v35], v19, v13);
    swift_endAccess();
    return sub_20BD21668();
  }
}

int *sub_20BD1F780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = sub_20C1365F4();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(0, a8, a10, v20);
  *(a9 + result[9]) = a2;
  *(a9 + result[10]) = a3;
  *(a9 + result[11]) = a4;
  v22 = a9 + result[12];
  *v22 = a5;
  *(v22 + 8) = a6;
  *(v22 + 16) = a7;
  return result;
}

uint64_t sub_20BD1F858(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(*v5 + 80);
  v8 = *(*v5 + 88);
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, v7, v8, a5);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v13 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(0, v7, v8, v12);
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v17 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(0, v7, v8, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v24 = *(v6 + 104);
  swift_beginAccess();
  (*(v18 + 16))(v23, v5 + v24, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = v37;
      (*(v37 + 32))(v15, v23, v13);
      v28 = &v15[*(v13 + 48)];
      v29 = sub_20BC6AB28(*v28, *(v28 + 1), v28[16]);
      *v28 = 0;
      *(v28 + 1) = 0;
      v28[16] = -4;
      (*(v27 + 16))(v20, v15, v13, v29);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v18 + 40))(v5 + v24, v20, v17);
      swift_endAccess();
      sub_20BD20A60();
      return (*(v27 + 8))(v15, v13);
    }

    else
    {
      v31 = v38;
      v32 = v23;
      v33 = v39;
      (*(v38 + 32))(v11, v32, v39);
      v34 = *(v33 + 48);
      v35 = sub_20C13D914();
      (*(*(v35 - 8) + 8))(&v11[v34], v35);
      (*(*(v7 - 8) + 56))(&v11[v34], 1, 1, v7);
      (*(v31 + 16))(v20, v11, v33);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v18 + 40))(v5 + v24, v20, v17);
      swift_endAccess();
      sub_20BD21668();
      return (*(v31 + 8))(v11, v33);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v30 = sub_20C1365F4();
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    return (*(*(v30 - 8) + 8))(v23, v30);
  }

  else
  {
    return (*(v18 + 8))(v23, v17);
  }
}

void sub_20BD1FD50(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a1;
  v7 = *(*v5 + 80);
  v8 = *(*v5 + 88);
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, *(*v6 + 80), *(*v6 + 88), a5);
  v64 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v55 - v10;
  v12 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(0, v7, v8, v11);
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v59 = v7;
  v60 = &v55 - v13;
  v15 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(0, v7, v8, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v55 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v55 - v24;
  v26 = sub_20C1365A4();
  v28 = v27;
  v29 = *(*v5 + 104);
  swift_beginAccess();
  v30 = *(v16 + 16);
  v70 = v29;
  v68 = v30;
  v30(v22, v6 + v29, v15);
  sub_20BD1EE58(v15, v25, v31);
  v66 = v16;
  v32 = *(v16 + 8);
  v71 = v15;
  v32(v22, v15);
  v33 = sub_20C1365F4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v25, 1, v33) == 1)
  {
    sub_20BD23440(v25);

    return;
  }

  v57 = v32;
  v58 = v9;
  v35 = sub_20C1365A4();
  v37 = v36;
  v56 = *(v34 + 8);
  v56(v25, v33);
  if (v26 == v35 && v28 == v37)
  {

    v38 = v71;
  }

  else
  {
    v39 = sub_20C13DFF4();

    v38 = v71;
    if ((v39 & 1) == 0)
    {
      return;
    }
  }

  v40 = v69;
  v41 = v70;
  v68(v69, v6 + v70, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v44 = v60;
      v43 = v61;
      v45 = v62;
      (*(v61 + 32))(v60, v40, v62);
      v46 = *(v45 + 40);
      v47 = v67;

      *&v44[v46] = v47;
      v48 = v65;
      (*(v43 + 16))(v65, v44, v45);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v66 + 40))(v6 + v41, v48, v38);
      swift_endAccess();
      sub_20BD20A60();
      (*(v43 + 8))(v44, v45);
    }

    else
    {
      v50 = v63;
      v49 = v64;
      v51 = v58;
      (*(v64 + 32))(v63, v40, v58);
      v52 = *(v51 + 40);
      v53 = v67;

      *&v50[v52] = v53;
      v54 = v65;
      (*(v49 + 16))(v65, v50, v51);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v66 + 40))(v6 + v41, v54, v38);
      swift_endAccess();
      sub_20BD21668();
      (*(v49 + 8))(v50, v51);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    v56(v40, v33);
  }

  else
  {
    v57(v40, v38);
  }
}

void sub_20BD203D8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a1;
  v7 = *(*v5 + 80);
  v8 = *(*v5 + 88);
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, *(*v6 + 80), *(*v6 + 88), a5);
  v64 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v55 - v10;
  v12 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(0, v7, v8, v11);
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v59 = v7;
  v60 = &v55 - v13;
  v15 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(0, v7, v8, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v55 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v55 - v24;
  v26 = sub_20C1365A4();
  v28 = v27;
  v29 = *(*v5 + 104);
  swift_beginAccess();
  v30 = *(v16 + 16);
  v70 = v29;
  v68 = v30;
  v30(v22, v6 + v29, v15);
  sub_20BD1EE58(v15, v25, v31);
  v66 = v16;
  v32 = *(v16 + 8);
  v71 = v15;
  v32(v22, v15);
  v33 = sub_20C1365F4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v25, 1, v33) == 1)
  {
    sub_20BD23440(v25);

    return;
  }

  v57 = v32;
  v58 = v9;
  v35 = sub_20C1365A4();
  v37 = v36;
  v56 = *(v34 + 8);
  v56(v25, v33);
  if (v26 == v35 && v28 == v37)
  {

    v38 = v71;
  }

  else
  {
    v39 = sub_20C13DFF4();

    v38 = v71;
    if ((v39 & 1) == 0)
    {
      return;
    }
  }

  v40 = v69;
  v41 = v70;
  v68(v69, v6 + v70, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v44 = v60;
      v43 = v61;
      v45 = v62;
      (*(v61 + 32))(v60, v40, v62);
      v46 = *(v45 + 44);
      v47 = v67;

      *&v44[v46] = v47;
      v48 = v65;
      (*(v43 + 16))(v65, v44, v45);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v66 + 40))(v6 + v41, v48, v38);
      swift_endAccess();
      sub_20BD20A60();
      (*(v43 + 8))(v44, v45);
    }

    else
    {
      v50 = v63;
      v49 = v64;
      v51 = v58;
      (*(v64 + 32))(v63, v40, v58);
      v52 = *(v51 + 44);
      v53 = v67;

      *&v50[v52] = v53;
      v54 = v65;
      (*(v49 + 16))(v65, v50, v51);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v66 + 40))(v6 + v41, v54, v38);
      swift_endAccess();
      sub_20BD21668();
      (*(v49 + 8))(v50, v51);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20C13CD04();
    sub_20C13D914();
    swift_getTupleTypeMetadata2();

    v56(v40, v33);
  }

  else
  {
    v57(v40, v38);
  }
}

uint64_t sub_20BD20A60()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_20C13D914();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v40 - v4;
  v5 = sub_20C1365F4();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 88);
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, v2, v7, v8);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v40 - v10;
  v12 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(0, v2, v7, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v19 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(0, v2, v7, v18);
  v20 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - v21;
  v23 = v1;
  v24 = v13;
  v25 = *(v23 + 104);
  swift_beginAccess();
  (*(v24 + 16))(v17, v0 + v25, v12);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return (*(v24 + 8))(v17, v12);
  }

  v41 = v24;
  (*(v20 + 32))(v22, v17, v19);
  v26 = *&v22[v19[9]];
  if (!v26)
  {
    return (*(v20 + 8))(v22, v19);
  }

  v42 = v20;
  v27 = *&v22[v19[10]];
  if (!v27 || !*&v22[v19[11]])
  {
    v20 = v42;
    return (*(v20 + 8))(v22, v19);
  }

  v28 = *(v45 + 16);
  v40 = *&v22[v19[11]];
  v29 = v47;
  v45 = v27;
  v28(v47, v22, v46);
  v30 = v49;
  (*(*(v2 - 8) + 56))(v49, 1, 1, v2);
  sub_20BD21004(v29, v26, v45, v40, v30, v2, v7, v52);
  v31 = &v22[v19[12]];
  v32 = v31[16];
  if (v32 <= 0xFB)
  {
    v36 = *v31;
    v47 = *(v31 + 1);

    v37 = v32;
    v34 = v52;
    sub_20BD220C8(v36, v47, v37, v30, v52);
    v33 = v51;
    (*(v43 + 40))(v34 + *(v51 + 48), v30, v44);
  }

  else
  {

    v33 = v51;
    v34 = v52;
  }

  v38 = v50;
  v39 = v48;
  (*(v50 + 16))(v48, v34, v33);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v41 + 40))(v0 + v25, v39, v12);
  swift_endAccess();
  sub_20BD21668();
  (*(v42 + 8))(v22, v19);
  return (*(v38 + 8))(v34, v33);
}

uint64_t sub_20BD21004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_20C1365F4();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v18 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, a6, a7, v17);
  *(a8 + v18[9]) = a2;
  *(a8 + v18[10]) = a3;
  *(a8 + v18[11]) = a4;
  v19 = v18[12];
  v20 = sub_20C13D914();
  v21 = *(*(v20 - 8) + 32);

  return v21(a8 + v19, a5, v20);
}

double sub_20BD2110C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v46 = a1;
  v48 = a3;
  v6 = *(a2 + 16);
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13D914();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v45 - v13;
  v14 = *(v3 + *(a2 + 36));
  v56 = v14;
  v15 = *(a2 + 24);
  v54 = v6;
  v55 = v15;
  KeyPath = swift_getKeyPath();
  v47 = v15;
  v52 = v15;
  v53 = KeyPath;
  v17 = sub_20C13CD04();

  WitnessTable = swift_getWitnessTable();
  v20 = sub_20BD1DA90(sub_20BD233FC, v51, v17, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);

  v21 = sub_20B527580(v20);

  if ((v46 & 1) == 0)
  {
    v21 = sub_20B604EF4(*(v4 + *(a2 + 40)), v21, v22);
  }

  (*(v9 + 16))(v11, v4 + *(a2 + 48), v8);
  v23 = v49;
  v24 = (*(v49 + 48))(v11, 1, v6);
  v25 = v50;
  if (v24 == 1)
  {
    (*(v9 + 8))(v11, v8);
    v26 = v47;
LABEL_11:
    (*(v23 + 56))(v25, 1, 1, v6);
    v42 = *(v4 + *(a2 + 44));

    v40 = sub_20B604EF4(v42, v21, v43);
    goto LABEL_12;
  }

  v27 = *(v23 + 32);
  v28 = v23;
  v29 = v45;
  v27();
  v26 = v47;
  v30 = sub_20C1362C4();
  v32 = sub_20B8D7150(v30, v31, v21);

  if ((v32 & 1) == 0)
  {
    (*(v28 + 8))(v29, v6);
    v23 = v28;
LABEL_10:
    v25 = v50;
    goto LABEL_11;
  }

  v33 = *(v4 + *(a2 + 44));
  v34 = sub_20C1362C4();
  LOBYTE(v33) = sub_20B8D7150(v34, v35, v33);

  if ((v33 & 1) == 0)
  {
    v41 = v29;
    v23 = v49;
    (*(v49 + 8))(v41, v6);
    goto LABEL_10;
  }

  v36 = v49;
  v25 = v50;
  (*(v49 + 16))(v50, v29, v6);
  (*(v36 + 56))(v25, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0, &qword_20C14FCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v38 = v29;
  *(inited + 32) = sub_20C1362C4();
  *(inited + 40) = v39;
  v40 = sub_20BE8C2E8(inited);
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  (*(v36 + 8))(v38, v6);
LABEL_12:
  sub_20BD232A4(v14, v21, v40, v25, v6, v26, v48);

  return result;
}

uint64_t sub_20BD215D4(uint64_t a1, uint64_t a2)
{
  sub_20C13CD04();

  swift_getWitnessTable();
  return sub_20C13DD24();
}

uint64_t sub_20BD21668()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v70 = sub_20C13D914();
  v63 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = v56 - v4;
  v5 = *(v2 + 88);
  v68 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ValidatedState(0, v3, v5, v6);
  v62 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v61 = v56 - v7;
  v9 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, v3, v5, v8);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v60 = v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v56 - v12;
  v59 = v3;
  v15 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(0, v3, v5, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v56 - v19;
  v21 = sub_20C1365F4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v2 + 104);
  swift_beginAccess();
  v64 = *(v16 + 16);
  (v64)(v20, v1 + v25, v15);
  sub_20BD1EE58(v15, v13, v26);
  v27 = v20;
  v28 = *(v16 + 8);
  v28(v27, v15);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    return sub_20BD23440(v13);
  }

  v30 = *(v22 + 32);
  v58 = v24;
  v30(v24, v13, v21);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v57 = v1[3];
    v33 = v65;
    (v64)(v65, v1 + v25, v15);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v34 = v60;
      v35 = v33;
      v36 = v67;
      (*(v66 + 32))(v60, v35, v67);
      v37 = *(v1 + *(*v1 + 112));
      v38 = v61;
      v65 = v21;
      sub_20BD2110C(v37, v36, v61);
      v39 = sub_20BD215D4(v68, sub_20BD2339C);
      v64 = v22;
      v40 = v39;
      v41 = *(v38 + 2);
      v42 = v63;
      v43 = v69;
      (*(v63 + 16))();
      v44 = sub_20C13CCF4();
      v56[1] = v56;
      v71 = v40;
      MEMORY[0x28223BE20](v44);
      v56[-8] = v41;
      v56[-7] = v43;
      v45 = v57;
      v56[-6] = v32;
      v56[-5] = v45;
      v56[-4] = v1;
      v56[-3] = v46;
      v56[-2] = v34;
      sub_20C13CD04();
      swift_getWitnessTable();
      v47 = sub_20C13CC04();

      ObjectType = swift_getObjectType();
      v49 = v45;
      v50 = *(v45 + 64);
      v51 = v58;
      v50(v1, v47, v58, ObjectType, v49);
      swift_unknownObjectRelease();

      (*(v64 + 8))(v51, v65);
      (*(v62 + 8))(v38, v68);
      (*(v42 + 8))(v69, v70);
      return (*(v66 + 8))(v34, v67);
    }

    swift_unknownObjectRelease();
    v28(v33, v15);
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  v53 = v58;
  if (v52)
  {
    v54 = v1[3];
    v55 = swift_getObjectType();
    (*(v54 + 64))(v1, MEMORY[0x277D84F90], v53, v55, v54);
    swift_unknownObjectRelease();
  }

  return (*(v22 + 8))(v53, v21);
}

uint64_t sub_20BD21D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v37 = a8;
  v38 = a5;
  v34 = a4;
  v35 = a7;
  v32 = a3;
  v36 = a9;
  v12 = *(*a6 + 80);
  v13 = sub_20C13D914();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v33 = a1;
  v17 = sub_20C1362C4();
  LOBYTE(a2) = sub_20B8D7150(v17, v18, a2);

  if (a2)
  {
    (*(v14 + 16))(v16, v32, v13);
    v19 = *(v12 - 8);
    if ((*(v19 + 48))(v16, 1, v12) == 1)
    {
      (*(v14 + 8))(v16, v13);
      v20 = v33;
      sub_20C1362C4();
    }

    else
    {
      v22 = sub_20C1362C4();
      v24 = v23;
      (*(v19 + 8))(v16, v12);
      v20 = v33;
      v25 = sub_20C1362C4();
      if (v24)
      {
        if (v22 == v25 && v24 == v26)
        {
        }

        else
        {
          v28 = sub_20C13DFF4();

          if ((v28 & 1) == 0)
          {
LABEL_13:
            v21 = 0;
            goto LABEL_16;
          }
        }

        v21 = 1;
        goto LABEL_16;
      }
    }

    goto LABEL_13;
  }

  v21 = 2;
  v20 = v33;
LABEL_16:
  ObjectType = swift_getObjectType();
  result = (*(v38 + 56))(a6, v20, v21, v35, v37, ObjectType);
  *v36 = result;
  return result;
}

uint64_t sub_20BD22050(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 24))(v1, a1, ObjectType, v4);
    swift_unknownObjectRelease();
    return v6 & 1;
  }

  return result;
}

uint64_t sub_20BD220C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v22 = a1;
  v23 = a2;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 88);
  v11 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ValidatedState(0, v9, v10, a5);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v15 = *(v5 + *(v8 + 112));
  v17 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(0, v9, v10, v16);
  sub_20BD2110C(v15, v17, v14);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = v5[3];
    ObjectType = swift_getObjectType();
    v20 = sub_20BD215D4(v11, sub_20BD2333C);
    (*(v18 + 40))(v5, v22, v23, a3, v20, ObjectType, v18);
    swift_unknownObjectRelease();

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    return (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
  }
}

uint64_t sub_20BD222F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 32))(v2, v4, a2, ObjectType, v5);
      swift_unknownObjectRelease();
      return v7;
    }
  }

  return result;
}

uint64_t *sub_20BD2237C()
{
  v1 = *v0;
  sub_20B583E6C((v0 + 2));
  v2 = *(*v0 + 104);
  v4 = type metadata accessor for WorkoutPlanFilterOptionCoordinator.State(0, *(v1 + 80), *(v1 + 88), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_20BD22424()
{
  sub_20BD2237C();

  return swift_deallocClassInstance();
}

uint64_t sub_20BD224AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_20C13CD04();
  result = sub_20C13D914();
  if (v4 <= 0x3F)
  {
    sub_20C1365F4();
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      v7 = *(a1 + 24);
      result = type metadata accessor for WorkoutPlanFilterOptionCoordinator.IncompleteState(319, v2, v7, v5);
      if (v9 <= 0x3F)
      {
        result = type metadata accessor for WorkoutPlanFilterOptionCoordinator.ConfiguredState(319, v2, v7, v8);
        if (v10 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_20BD22598(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = (*(*(sub_20C1365F4() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v7 <= v13)
  {
    v7 = v13;
  }

  v14 = *(v9 + 64);
  if (!*(v10 + 84))
  {
    ++v14;
  }

  v15 = v14 + ((v12 + 8) & ~v11);
  if (v7 > v15)
  {
    v15 = v7;
  }

  v16 = 8;
  if (v15 > 8)
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_31;
  }

  v17 = v16 + 1;
  v18 = 8 * (v16 + 1);
  if ((v16 + 1) <= 3)
  {
    v21 = ((a2 + ~(-1 << v18) - 252) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v21 < 2)
    {
LABEL_31:
      v23 = *(a1 + v16);
      if (v23 >= 4)
      {
        return (v23 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_20:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return (v17 | v22) + 253;
}

void sub_20BD22778(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = (*(*(sub_20C1365F4() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*(a4 + 16) - 8);
  v12 = v11;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v9 <= v15)
  {
    v9 = v15;
  }

  v16 = *(v11 + 64);
  if (!*(v12 + 84))
  {
    ++v16;
  }

  v17 = v16 + ((v14 + 8) & ~v13);
  if (v9 > v17)
  {
    v17 = v9;
  }

  if (v17 <= 8)
  {
    v17 = 8;
  }

  v18 = v17 + 1;
  if (a3 < 0xFD)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 + ~(-1 << (8 * v18)) - 252) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (a2 > 0xFC)
  {
    v20 = a2 - 253;
    if (v18 >= 4)
    {
      bzero(a1, v17 + 1);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v21 = (v20 >> (8 * v18)) + 1;
    if (v17 != -1)
    {
      v24 = v20 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v24;
          if (v19 > 1)
          {
LABEL_45:
            if (v19 == 2)
            {
              *&a1[v18] = v21;
            }

            else
            {
              *&a1[v18] = v21;
            }

            return;
          }
        }

        else
        {
          *a1 = v20;
          if (v19 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v19)
        {
          a1[v18] = v21;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v19 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v19 <= 1)
  {
    if (v19)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v17] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v19 == 2)
  {
    *&a1[v18] = 0;
    goto LABEL_30;
  }

  *&a1[v18] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

void sub_20BD22A08(uint64_t a1)
{
  sub_20C1365F4();
  if (v1 <= 0x3F)
  {
    sub_20C13CD04();
    if (v2 <= 0x3F)
    {
      sub_20BD230AC();
      if (v3 <= 0x3F)
      {
        sub_20C13D914();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20BD22AC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(v6 - 8) + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (v8 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v7 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v13 + 8;
  if (a2 <= v16)
  {
    goto LABEL_37;
  }

  v19 = v17 + ((v18 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v8 == v16)
      {
        v27 = *(v7 + 48);

        return v27(a1, v8, v6);
      }

      else
      {
        v28 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v15 & 0x80000000) != 0)
        {
          v30 = (*(*(*(a3 + 16) - 8) + 48))((v18 + ((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v16 + (v26 | v24) + 1;
}

void sub_20BD22D68(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_20C1365F4();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 > v17)
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!v13)
  {
    ++v16;
  }

  v19 = ((v15 + 8 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + v16;
  if (a3 <= v18)
  {
    goto LABEL_24;
  }

  if (v19 <= 3)
  {
    v20 = ((a3 - v18 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v20))
    {
      v9 = 4;
      if (v18 < a2)
      {
        goto LABEL_25;
      }

LABEL_13:
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v19] = 0;
      }

      else if (v9)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v11 == v18)
      {
        v24 = *(v10 + 56);

        v24(a1, a2, v11, v8);
      }

      else
      {
        v26 = (&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v17 & 0x80000000) != 0)
        {
          v28 = *(v12 + 56);

          v28((v15 + 8 + ((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15, (a2 + 1));
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v27 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v27 = (a2 - 1);
          }

          *v26 = v27;
        }
      }

      return;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

LABEL_24:
    if (v18 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v9 = 1;
  if (v18 >= a2)
  {
    goto LABEL_13;
  }

LABEL_25:
  v22 = ~v18 + a2;
  if (v19 < 4)
  {
    v23 = (v22 >> (8 * v19)) + 1;
    if (v19)
    {
      v25 = v22 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v25;
          if (v9 <= 1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          *a1 = v22;
          if (v9 <= 1)
          {
            goto LABEL_54;
          }
        }

LABEL_27:
        if (v9 == 2)
        {
          *&a1[v19] = v23;
        }

        else
        {
          *&a1[v19] = v23;
        }

        return;
      }

      *a1 = v25;
      a1[2] = BYTE2(v25);
    }

    if (v9 <= 1)
    {
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  bzero(a1, v19);
  *a1 = v22;
  v23 = 1;
  if (v9 > 1)
  {
    goto LABEL_27;
  }

LABEL_54:
  if (v9)
  {
    a1[v19] = v23;
  }
}

void sub_20BD230AC()
{
  if (!qword_27C76E390[0])
  {
    v0 = sub_20C13D004();
    if (!v1)
    {
      atomic_store(v0, qword_27C76E390);
    }
  }
}

void sub_20BD23104(uint64_t a1)
{
  sub_20C1365F4();
  if (v1 <= 0x3F)
  {
    sub_20C13CD04();
    sub_20C13D914();
    if (v2 <= 0x3F)
    {
      sub_20BD231F0(319);
      if (v3 <= 0x3F)
      {
        sub_20BD23254();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20BD231F0(uint64_t a1)
{
  if (!qword_27C76E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C763848, &unk_20C161540);
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C76E418);
    }
  }
}

void sub_20BD23254()
{
  if (!qword_27C76E420[0])
  {
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, qword_27C76E420);
    }
  }
}

uint64_t sub_20BD232A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v9 = *(type metadata accessor for WorkoutPlanFilterOptionCoordinator.ValidatedState(0, a5, a6, a4) + 44);
  v10 = sub_20C13D914();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a7[v9], a4, v10);
}

uint64_t sub_20BD2333C()
{
  v1 = *(*(v0 + 32) + 16);
  v2 = sub_20C1362C4();
  LOBYTE(v1) = sub_20B8D7150(v2, v3, v1);

  return v1 & 1;
}

uint64_t sub_20BD2339C()
{
  v1 = *(*(v0 + 32) + 8);
  v2 = sub_20C1362C4();
  LOBYTE(v1) = sub_20B8D7150(v2, v3, v1);

  return v1 & 1;
}

uint64_t sub_20BD23440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20BD234D0(uint64_t a1)
{
  sub_20C13CD04();
  if (v1 <= 0x3F)
  {
    sub_20BD230AC();
    if (v2 <= 0x3F)
    {
      sub_20C13D914();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20BD23578(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 24) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_20BD23740(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 24) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

id sub_20BD23C04(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityTypeIconView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20BD23C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a2;
  v122 = a1;
  v145 = a3;
  v4 = sub_20C13A484();
  v135 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v136 = v5;
  v138 = v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationRequest(0);
  v130 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v131 = v7;
  v132 = (v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v125 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v8;
  MEMORY[0x28223BE20](v9);
  v126 = v112 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v118 = *(v119 - 8);
  v11 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = v112 - v13;
  v121 = sub_20C1344C4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v116 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v142 = *(v134 - 8);
  v15 = *(v142 + 64);
  MEMORY[0x28223BE20](v134);
  v129 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v133 = v112 - v17;
  MEMORY[0x28223BE20](v18);
  v141 = v112 - v19;
  MEMORY[0x28223BE20](v20);
  v140 = v112 - v21;
  MEMORY[0x28223BE20](v22);
  v144 = v112 - v23;
  v24 = type metadata accessor for NavigationIntent(0);
  MEMORY[0x28223BE20](v24);
  v26 = v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v27);
  v29 = v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v139 = v112 - v31;
  v32 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v32);
  v34 = (v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = v3;
  sub_20BD317AC(v3, v34, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() != 16)
  {
    v35 = type metadata accessor for NavigationResource;
    goto LABEL_5;
  }

  type metadata accessor for WorkoutNavigationResource(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = type metadata accessor for WorkoutNavigationResource;
LABEL_5:
    v36 = v35;
    v37 = v34;
LABEL_6:
    sub_20BD31814(v37, v36);
    sub_20B5D9BA8();
    v38 = swift_allocError();
    *v39 = 13;
    *(swift_allocObject() + 16) = v38;
    type metadata accessor for WorkoutSessionConfiguration(0);
    return sub_20C137CA4();
  }

  v42 = *v34;
  v41 = v34[1];
  sub_20BD317AC(v143 + *(v6 + 20), v26, type metadata accessor for NavigationIntent);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    v36 = type metadata accessor for NavigationIntent;
    v37 = v26;
    goto LABEL_6;
  }

  v112[1] = v42;
  v112[2] = v41;
  v114 = *v26;
  v113 = v26[8];

  v43 = *(v26 + 4);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t");
  v45 = v139;
  sub_20BD3113C(&v26[*(v44 + 80)], v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  v122 = swift_allocBox();
  v47 = v46;
  v48 = v120;
  v49 = *(v120 + 56);
  v50 = v121;
  v49(v46, 1, 1, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  v115 = swift_allocBox();
  v52 = v51;
  v53 = sub_20C137254();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  sub_20B52F9E8(v45, v29, &qword_27C766E88, &qword_20C16E290);
  if ((*(v48 + 48))(v29, 1, v50) == 1)
  {
    sub_20B520158(v29, &qword_27C766E88, &qword_20C16E290);
    __swift_project_boxed_opaque_existential_1(v148, v148[3]);
    v54 = v123;
    sub_20C13A0B4();

    v55 = swift_allocObject();
    v56 = v122;
    *(v55 + 16) = sub_20BD311AC;
    *(v55 + 24) = v56;
    v57 = v118;
    v58 = v117;
    v59 = v119;
    (*(v118 + 16))(v117, v54, v119);
    v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v61 = swift_allocObject();
    (*(v57 + 32))(v61 + v60, v58, v59);
    v62 = (v61 + ((v11 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v62 = sub_20B80E4B0;
    v62[1] = v55;

    sub_20C137C94();
    (*(v57 + 8))(v123, v59);
  }

  else
  {

    v63 = *(v48 + 32);
    v64 = v116;
    v63(v116, v29, v50);
    _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    sub_20B520158(v47, &qword_27C766E88, &qword_20C16E290);
    v63(v47, v64, v50);
    v49(v47, 0, 1, v50);
  }

  __swift_project_boxed_opaque_existential_1(v147, v147[3]);
  v65 = v126;
  sub_20C1398E4();
  v66 = swift_allocObject();
  v67 = v115;
  v68 = v114;
  *(v66 + 16) = v115;
  *(v66 + 24) = v68;
  *(v66 + 32) = v113;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_20BD311F0;
  *(v69 + 24) = v66;
  v70 = v127;
  v71 = v125;
  v72 = v128;
  v127[2](v125, v65, v128);
  v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v74 = (v124 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (v70)[4]((v75 + v73), v71, v72);
  v76 = (v75 + v74);
  *v76 = sub_20B5DF4C4;
  v76[1] = v69;

  v77 = v140;
  sub_20C137C94();
  (v70[1])(v65, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v78 = *(v142 + 72);
  v79 = v142;
  v126 = *(v142 + 80);
  v80 = (v126 + 32) & ~v126;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_20C14F320;
  v82 = v81 + v80;
  v83 = *(v79 + 16);
  v127 = v83;
  v128 = v79 + 16;
  v84 = v134;
  (v83)(v82, v144, v134);
  (v83)(v82 + v78, v77, v84);
  sub_20B5E2E18();
  v85 = sub_20C13D374();
  sub_20C13A7C4();
  v86 = v133;
  sub_20C137C74();

  v87 = v132;
  sub_20BD317AC(v143, v132, type metadata accessor for NavigationRequest);
  sub_20B51CC64(v147, &v146);
  v88 = (*(v130 + 80) + 24) & ~*(v130 + 80);
  v89 = (v131 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  *(v90 + 16) = v67;
  sub_20BD3108C(v87, v90 + v88, type metadata accessor for NavigationRequest);
  *(v90 + v89) = v122;
  sub_20B51C710(&v146, v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8));
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20BD31210;
  *(v91 + 24) = v90;
  v92 = v129;
  v93 = v84;
  (v127)(v129, v86, v84);
  v94 = v15 + ((v126 + 16) & ~v126);
  v95 = (v126 + 16) & ~v126;
  v143 = v95;
  v96 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v131 = v96;
  v97 = swift_allocObject();
  v98 = v142;
  v132 = *(v142 + 32);
  (v132)(v97 + v95, v92, v93);
  v99 = (v97 + v96);
  *v99 = sub_20B64B960;
  v99[1] = v91;
  v100 = v122;

  sub_20C137C94();
  v101 = *(v98 + 8);
  v102 = v93;
  v101(v86, v93);
  v103 = v138;
  sub_20BD317AC(v137, v138, MEMORY[0x277D4DFB8]);
  v104 = (*(v135 + 80) + 32) & ~*(v135 + 80);
  v105 = (v136 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  *(v106 + 16) = v100;
  *(v106 + 24) = v115;
  sub_20BD3108C(v103, v106 + v104, MEMORY[0x277D4DFB8]);
  *(v106 + v105) = v43;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_20BD312BC;
  *(v107 + 24) = v106;
  v108 = v141;
  (v127)(v86, v141, v102);
  v109 = v131;
  v110 = swift_allocObject();
  (v132)(v110 + v143, v86, v102);
  v111 = (v110 + v109);
  *v111 = sub_20B7F133C;
  v111[1] = v107;
  type metadata accessor for WorkoutSessionConfiguration(0);

  sub_20C137C94();
  v101(v108, v102);
  v101(v140, v102);
  v101(v144, v102);
  sub_20B520158(v139, &qword_27C766E88, &qword_20C16E290);

  __swift_destroy_boxed_opaque_existential_1(v147);
  return __swift_destroy_boxed_opaque_existential_1(v148);
}

double sub_20BD24DFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v118 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v106 = *(v107 - 8);
  v3 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v104 = &v90 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0, &unk_20C153B90);
  v116 = *(v6 - 8);
  v117 = v6;
  v7 = *(v116 + 64);
  MEMORY[0x28223BE20](v6);
  v112 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v113 = &v90 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v109 = *(v114 - 8);
  v10 = *(v109 + 64);
  MEMORY[0x28223BE20](v114);
  v108 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v110 = &v90 - v12;
  MEMORY[0x28223BE20](v13);
  v111 = &v90 - v14;
  MEMORY[0x28223BE20](v15);
  v115 = &v90 - v16;
  v17 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C132C14();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4F8, &unk_20C17A810);
  v120 = swift_allocBox();
  v25 = v24;
  v26 = sub_20C137EA4();
  v27 = *(*(v26 - 8) + 56);
  v105 = v26;
  v27(v25, 1, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  v119 = swift_allocBox();
  v29 = v28;
  v30 = sub_20C134104();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  sub_20BD317AC(v2, v19, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    (*(v21 + 32))(v23, v19, v20);
    v31 = sub_20C132AE4();
    if (v32)
    {
      v101 = v31;
      v33 = sub_20C132B04();
      if ((v34 & 1) == 0)
      {
        v98 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810, &unk_20C1524D0);
        sub_20C133AA4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
        sub_20C133AA4();
        v102 = v20;
        v99 = v21;
        v100 = v23;
        __swift_project_boxed_opaque_existential_1(v122, v122[3]);
        v38 = v113;
        sub_20C13A124();

        v39 = swift_allocObject();
        v40 = v120;
        *(v39 + 16) = sub_20BD30F38;
        *(v39 + 24) = v40;
        v41 = v116;
        v42 = *(v116 + 16);
        v97 = v116 + 16;
        v101 = v42;
        v43 = v112;
        v42(v112, v38, v117);
        v44 = *(v41 + 80);
        v96 = v44;
        v45 = (v44 + 16) & ~v44;
        v94 = v45;
        v90 = v3;
        v46 = (v7 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
        v91 = v46;
        v47 = swift_allocObject();
        v93 = *(v41 + 32);
        v95 = v41 + 32;
        v48 = v117;
        v93(v47 + v45, v43, v117);
        v49 = (v47 + v46);
        *v49 = sub_20B681EF8;
        v49[1] = v39;

        sub_20C137C94();
        v50 = *(v41 + 8);
        v116 = v41 + 8;
        v92 = v50;
        v50(v38, v48);
        __swift_project_boxed_opaque_existential_1(v121, v121[3]);
        v51 = v104;
        sub_20C1398E4();
        v52 = swift_allocObject();
        v53 = v119;
        *(v52 + 16) = sub_20BD30FA0;
        *(v52 + 24) = v53;
        v54 = v106;
        v55 = v103;
        v56 = v107;
        (*(v106 + 16))(v103, v51, v107);
        v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
        v58 = (v90 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v59 = swift_allocObject();
        (*(v54 + 32))(v59 + v57, v55, v56);
        v60 = (v59 + v58);
        *v60 = sub_20B58D058;
        v60[1] = v52;

        v61 = v111;
        sub_20C137C94();
        (*(v54 + 8))(v51, v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
        v62 = v109;
        v63 = *(v109 + 72);
        v64 = *(v109 + 80);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_20C14F320;
        v66 = v65 + ((v64 + 32) & ~v64);
        v67 = *(v62 + 16);
        v68 = v114;
        v67(v66, v115, v114);
        v67(v66 + v63, v61, v68);
        sub_20B5E2E18();
        v69 = sub_20C13D374();
        sub_20C13A7C4();
        v70 = v110;
        sub_20C137C74();

        v71 = swift_allocObject();
        v72 = v120;
        *(v71 + 16) = sub_20BD31008;
        *(v71 + 24) = v72;
        v73 = swift_allocObject();
        *(v73 + 16) = sub_20B8955C4;
        *(v73 + 24) = v71;
        v74 = swift_allocObject();
        *(v74 + 16) = sub_20BD31010;
        *(v74 + 24) = v73;
        v75 = v108;
        v76 = v70;
        v77 = v114;
        v67(v108, v76, v114);
        v78 = (v64 + 16) & ~v64;
        v79 = swift_allocObject();
        (*(v62 + 32))(v79 + v78, v75, v77);
        v80 = (v79 + ((v10 + v78 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v80 = sub_20BD3102C;
        v80[1] = v74;

        v81 = v113;
        sub_20C137C94();
        v82 = *(v62 + 8);
        v82(v110, v77);
        v83 = swift_allocObject();
        v84 = v98;
        *(v83 + 16) = v119;
        *(v83 + 24) = v84;
        v85 = v112;
        v86 = v117;
        v101(v112, v81, v117);
        v87 = v91;
        v88 = swift_allocObject();
        v93(v88 + v94, v85, v86);
        v89 = (v88 + v87);
        *v89 = sub_20BD3105C;
        v89[1] = v83;
        type metadata accessor for WorkoutSessionConfiguration(0);

        sub_20C137C94();
        v92(v81, v86);
        v82(v111, v77);
        v82(v115, v77);
        (*(v99 + 8))(v100, v102);
        __swift_destroy_boxed_opaque_existential_1(v121);
        __swift_destroy_boxed_opaque_existential_1(v122);

        goto LABEL_8;
      }

      (*(v21 + 8))(v23, v20);
    }

    else
    {
      (*(v21 + 8))(v23, v20);
    }
  }

  else
  {
    sub_20BD31814(v19, type metadata accessor for NavigationResource);
  }

  sub_20B5D9BA8();
  v35 = swift_allocError();
  *v36 = 15;
  *(swift_allocObject() + 16) = v35;
  type metadata accessor for WorkoutSessionConfiguration(0);
  sub_20C137CA4();

LABEL_8:

  return result;
}

void sub_20BD25AAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v53 = a4;
  v51 = sub_20C1387E4();
  v6 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MarketingUserInterfaceResource(0);
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E4C8, &qword_20C17A7A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = sub_20C1387D4();
  v47 = v6;
  switch(v23)
  {
    case 0:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A30, &unk_20C155DB0);
      v45 = v8;
      v30 = v12;
      v31 = v16;
      v32 = *(v29 + 48);
      sub_20C1387C4();
      *&v22[v32] = a3;
      v16 = v31;
      v12 = v30;
      v8 = v45;
      goto LABEL_7;
    case 1:
      sub_20C1387C4();
      swift_storeEnumTagMultiPayload();
      v28 = v52;
      (*(v52 + 56))(v22, 0, 1, v12);
      goto LABEL_9;
    case 2:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764258, &qword_20C155D98);
      v45 = v8;
      v25 = v12;
      v26 = v16;
      v27 = *(v24 + 48);
      sub_20C1387C4();
      *&v22[v27] = v46;
      v16 = v26;
      v12 = v25;
      v8 = v45;
LABEL_7:
      swift_storeEnumTagMultiPayload();
      v28 = v52;
      (*(v52 + 56))(v22, 0, 1, v12);
      swift_unknownObjectRetain();
      goto LABEL_9;
  }

  v28 = v52;
  (*(v52 + 56))(v22, 1, 1, v12);
LABEL_9:
  sub_20B52F9E8(v22, v19, &unk_27C76E4C8, &qword_20C17A7A0);
  if ((*(v28 + 48))(v19, 1, v12) == 1)
  {
    sub_20B520158(v19, &unk_27C76E4C8, &qword_20C17A7A0);
    sub_20C13B424();
    v33 = v47;
    (*(v47 + 16))(v8, a1, v51);
    v34 = sub_20C13BB74();
    v35 = sub_20C13D1D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      v37 = sub_20C1387D4();
      (*(v33 + 8))(v8, v51);
      *(v36 + 4) = v37;
      _os_log_impl(&dword_20B517000, v34, v35, "Failed to handle unknown AMS URL type: %{public}ld", v36, 0xCu);
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    else
    {
      (*(v33 + 8))(v8, v51);
    }

    (*(v49 + 8))(v11, v50);
    sub_20B5D9BA8();
    v41 = swift_allocError();
    *v42 = 8;
    *(swift_allocObject() + 16) = v41;
    v43 = v41;
    sub_20C137CA4();
    sub_20B520158(v22, &unk_27C76E4C8, &qword_20C17A7A0);
  }

  else
  {
    sub_20BD3108C(v19, v16, type metadata accessor for MarketingUserInterfaceResource);
    v38 = v48;
    sub_20BD317AC(v16, v48, type metadata accessor for MarketingUserInterfaceResource);
    v39 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v40 = swift_allocObject();
    sub_20BD3108C(v38, v40 + v39, type metadata accessor for MarketingUserInterfaceResource);
    sub_20C137CA4();
    sub_20BD31814(v16, type metadata accessor for MarketingUserInterfaceResource);
    sub_20B520158(v22, &unk_27C76E4C8, &qword_20C17A7A0);
  }
}

uint64_t sub_20BD26100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W6>, uint64_t a5@<X8>)
{
  v36 = a4;
  v33 = a3;
  v31 = a2;
  v37 = a5;
  v6 = type metadata accessor for MarketingUserInterfaceResource(0);
  v34 = *(v6 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v8;
  v9 = sub_20C1388F4();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationRequest(0);
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  v32 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090, &unk_20C14F940);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450, &unk_20C1839F0);
  sub_20C133AA4();
  sub_20C133AA4();
  v29 = LOBYTE(v42[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00, &unk_20C156CF0);
  sub_20C133AA4();
  sub_20B51CC64(v43, v41);
  sub_20BD317AC(v31, &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v9);
  sub_20B51CC64(v44, v40);
  sub_20B51CC64(v45, v39);
  sub_20B51CC64(v42, v38);
  sub_20BD317AC(a1, v8, type metadata accessor for MarketingUserInterfaceResource);
  v14 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v15 = (v13 + *(v10 + 80) + v14) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 49) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 47) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v34 + 80) + v19 + 8) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_20B51C710(v41, v21 + 16);
  sub_20BD3108C(v25, v21 + v14, type metadata accessor for NavigationRequest);
  (*(v10 + 32))(v21 + v15, v27, v26);
  v22 = v21 + v16;
  sub_20B51C710(v40, v21 + v16);
  *(v22 + 40) = v29;
  *(v22 + 41) = v36;
  sub_20B51C710(v39, v21 + v17);
  sub_20B51C710(v38, v21 + v18);
  *(v21 + v19) = v32;
  sub_20BD3108C(v28, v21 + v20, type metadata accessor for MarketingUserInterfaceResource);
  v23 = swift_allocObject();
  *(v23 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
  *(v23 + 24) = 48;
  *(v23 + 32) = 2;
  *(v23 + 40) = 56;
  *(v23 + 48) = &unk_20C17A798;
  *(v23 + 56) = v21;
  type metadata accessor for MarketingUserInterfaceConfiguration(0);
  sub_20C137C94();
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_20BD26604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 1872) = v21;
  *(v8 + 1856) = v20;
  *(v8 + 1848) = a8;
  *(v8 + 1507) = a7;
  *(v8 + 1506) = a6;
  *(v8 + 1800) = a5;
  *(v8 + 1752) = a4;
  *(v8 + 1704) = a3;
  *(v8 + 1656) = a2;
  *(v8 + 1608) = a1;
  type metadata accessor for MarketingUserInterfaceResource(0);
  *(v8 + 1880) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D0, &qword_20C156190);
  *(v8 + 1888) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1896) = v10;
  *(v8 + 1904) = *(v10 + 64);
  *(v8 + 1912) = swift_task_alloc();
  *(v8 + 1920) = swift_task_alloc();
  *(v8 + 1928) = swift_task_alloc();
  v11 = sub_20C136354();
  *(v8 + 1936) = v11;
  *(v8 + 1944) = *(v11 - 8);
  *(v8 + 1952) = swift_task_alloc();
  v12 = sub_20C1388F4();
  *(v8 + 1960) = v12;
  v13 = *(v12 - 8);
  *(v8 + 1968) = v13;
  *(v8 + 1976) = *(v13 + 64);
  *(v8 + 1984) = swift_task_alloc();
  v14 = *(type metadata accessor for NavigationRequest(0) - 8);
  *(v8 + 1992) = v14;
  *(v8 + 2000) = *(v14 + 64);
  *(v8 + 2008) = swift_task_alloc();
  *(v8 + 2016) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764290, &unk_20C152F80);
  *(v8 + 2024) = v15;
  *(v8 + 2032) = *(v15 - 8);
  *(v8 + 2040) = swift_task_alloc();
  v16 = sub_20C139354();
  *(v8 + 2048) = v16;
  v17 = *(v16 - 8);
  *(v8 + 2056) = v17;
  *(v8 + 2064) = *(v17 + 64);
  *(v8 + 2072) = swift_task_alloc();
  *(v8 + 2080) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD26950, 0, 0);
}

uint64_t sub_20BD26950()
{
  v1 = *(v0 + 2040);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1656), *(*(v0 + 1656) + 24));
  sub_20B520B44(v1);
  v2 = swift_task_alloc();
  *(v0 + 2088) = v2;
  *(v2 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
  *(v2 + 24) = 48;
  *(v2 + 32) = 2;
  *(v2 + 40) = 57;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 2096) = v3;
  *v3 = v0;
  v3[1] = sub_20BD26A78;
  v4 = *(v0 + 2080);
  v5 = *(v0 + 2048);

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B521930, v2, v5);
}

uint64_t sub_20BD26A78()
{
  v2 = *v1;
  *(*v1 + 2104) = v0;

  if (v0)
  {
    v3 = sub_20BD2722C;
  }

  else
  {
    (*(v2[254] + 8))(v2[255], v2[253]);
    v3 = sub_20BD26BCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BD26BCC(double a1)
{
  v2 = *(v1 + 2072);
  v33 = *(v1 + 2064);
  v34 = *(v1 + 2080);
  v3 = *(v1 + 2056);
  v4 = *(v1 + 2048);
  v29 = v4;
  v30 = v2;
  v41 = *(v1 + 2008);
  v36 = *(v1 + 2000);
  v5 = *(v1 + 1984);
  v27 = *(v1 + 1992);
  v28 = *(v1 + 1976);
  v6 = *(v1 + 1968);
  v7 = *(v1 + 1960);
  v31 = *(v1 + 2016);
  v32 = v7;
  v47 = *(v1 + 1928);
  v45 = *(v1 + 1912);
  v46 = *(v1 + 1904);
  v8 = *(v1 + 1896);
  v43 = *(v1 + 1920);
  v44 = *(v1 + 1888);
  v42 = *(v1 + 1856);
  v38 = *(v1 + 1507);
  v35 = *(v1 + 1506);
  v9 = *(v1 + 1800);
  v10 = *(v1 + 1752);
  v39 = *(v1 + 1704);
  v40 = *(v1 + 1848);
  sub_20BD317AC(v39, v31, type metadata accessor for NavigationRequest);
  (*(v6 + 16))(v5, v10, v7);
  sub_20B51CC64(v9, v1 + 1336);
  v11 = *(v3 + 16);
  *(v1 + 2112) = v11;
  *(v1 + 2120) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v34, v4);
  v12 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v37 = v12 + v36;
  v13 = (v37 + *(v6 + 80)) & ~*(v6 + 80);
  v14 = (v28 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v3 + 80) + v14 + 41) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v1 + 2128) = v16;
  sub_20BD3108C(v31, v16 + v12, type metadata accessor for NavigationRequest);
  (*(v6 + 32))(v16 + v13, v5, v32);
  sub_20B51C710((v1 + 1336), v16 + v14);
  *(v16 + v14 + 40) = v35;
  (*(v3 + 32))(v16 + v15, v30, v29);
  *(v16 + v15 + v33) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D2A0, &qword_20C176DE8);
  swift_asyncLet_begin();
  sub_20BD317AC(v39, v41, type metadata accessor for NavigationRequest);
  sub_20B51CC64(v40, v1 + 1416);
  v17 = swift_allocObject();
  *(v1 + 2136) = v17;
  sub_20BD3108C(v41, v17 + v12, type metadata accessor for NavigationRequest);
  sub_20B51C710((v1 + 1416), v17 + ((v37 + 7) & 0xFFFFFFFFFFFFFFF8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
  swift_asyncLet_begin();
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  sub_20C139BD4();
  (*(v8 + 16))(v45, v43, v44);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v45, v44);
  v20 = (v19 + ((v46 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_20BD28BC8;
  v20[1] = 0;
  sub_20C137C94();
  v21 = *(v8 + 8);
  *(v1 + 2144) = v21;
  *(v1 + 2152) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v43, v44);
  v22 = swift_task_alloc();
  *(v1 + 2160) = v22;
  *(v22 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
  *(v22 + 24) = 48;
  *(v22 + 32) = 2;
  *(v22 + 40) = 66;
  *(v22 + 48) = v47;
  v23 = swift_task_alloc();
  *(v1 + 2168) = v23;
  *v23 = v1;
  v23[1] = sub_20BD270E0;
  v24 = *(v1 + 1952);
  v25 = *(v1 + 1936);

  return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BD2F6A4, v22, v25);
}

uint64_t sub_20BD270E0()
{
  v2 = *v1;
  *(*v1 + 2176) = v0;

  if (v0)
  {
    v3 = sub_20BD2744C;
  }

  else
  {
    (*(v2 + 2144))(*(v2 + 1928), *(v2 + 1888));
    v3 = sub_20BD2734C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BD2722C()
{
  (*(v0[254] + 8))(v0[255], v0[253]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD2734C()
{
  sub_20C139334();
  *(v0 + 1496) = sub_20C136324();
  *(v0 + 1504) = v1 & 1;
  *(v0 + 1505) = 0;
  sub_20BD2F6BC();
  sub_20BD2F710();
  if (sub_20C133C04())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_20C135EE4();
  }

  *(v0 + 1508) = v2 & 1;
  sub_20BD317AC(*(v0 + 1872), *(v0 + 1880), type metadata accessor for MarketingUserInterfaceResource);

  return MEMORY[0x282200930](v0 + 656, v0 + 1560, sub_20BD27654, v0 + 1456);
}

uint64_t sub_20BD2744C()
{
  (*(v0 + 2144))(*(v0 + 1928), *(v0 + 1888));

  return MEMORY[0x282200920](v0 + 656, v0 + 1560, sub_20BD274C4, v0 + 1296);
}

uint64_t sub_20BD2751C()
{
  (*(v0[257] + 8))(v0[260], v0[256]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD27654()
{
  v1[273] = v0;
  if (v0)
  {
    sub_20BD31814(v1[235], type metadata accessor for MarketingUserInterfaceResource);

    return MEMORY[0x2822009F8](sub_20BD27AB8, 0, 0);
  }

  else
  {
    v2 = v1[195];
    v1[274] = v2;
    v3 = v2;

    return MEMORY[0x282200930](v1 + 2, v1 + 189, sub_20BD27720, v1 + 202);
  }
}

uint64_t sub_20BD27720()
{
  v1[275] = v0;
  if (v0)
  {
    v2 = v1[274];
    sub_20BD31814(v1[235], type metadata accessor for MarketingUserInterfaceResource);

    v3 = sub_20BD27CC8;
  }

  else
  {
    v3 = sub_20BD277BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BD277BC()
{
  v16 = *(v0 + 1508);
  v13 = *(v0 + 2112);
  v1 = *(v0 + 2080);
  v2 = *(v0 + 2048);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1944);
  v5 = *(v0 + 1936);
  v14 = *(v0 + 1880);
  v15 = *(v0 + 2192);
  v6 = *(v0 + 1864);
  v7 = *(v0 + 1608);

  sub_20B905EF4(v8);
  v10 = v9;

  v11 = type metadata accessor for MarketingUserInterfaceConfiguration(0);
  (*(v4 + 32))(&v7[v11[7]], v3, v5);
  v13(&v7[v11[10]], v1, v2);
  *(v7 + 1) = v6;
  sub_20BD3108C(v14, &v7[v11[8]], type metadata accessor for MarketingUserInterfaceResource);
  *v7 = v15;
  *(v7 + 2) = v10;
  v7[v11[9]] = v16;
  swift_unknownObjectRetain();

  return MEMORY[0x282200920](v0 + 656, v0 + 1560, sub_20BD27924, v0 + 1760);
}

uint64_t sub_20BD2797C()
{
  (*(v0[257] + 8))(v0[260], v0[256]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD27AB8()
{
  (*(v0[243] + 8))(v0[244], v0[242]);

  return MEMORY[0x282200920](v0 + 82, v0 + 195, sub_20BD27B38, v0 + 190);
}

uint64_t sub_20BD27B90()
{
  (*(v0[257] + 8))(v0[260], v0[256]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD27CC8()
{
  (*(v0[243] + 8))(v0[244], v0[242]);

  return MEMORY[0x282200920](v0 + 82, v0 + 195, sub_20BD27D48, v0 + 208);
}

uint64_t sub_20BD27DA0()
{
  (*(v0[257] + 8))(v0[260], v0[256]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BD27ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 112) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v8 = sub_20C1388F4();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4F0, &qword_20C17A7E0);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD27FE4, 0, 0);
}

uint64_t sub_20BD27FE4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  (*(v4 + 16))(v2, *(v0 + 24), v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_20B52F9E8(v2, v1, &qword_27C76E4F0, &qword_20C17A7E0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_20B520158(*(v0 + 72), &qword_27C76E4F0, &qword_20C17A7E0);
    v5 = sub_20B6B3A3C(MEMORY[0x277D84F90]);
    v6 = *(v0 + 16);
    sub_20B520158(*(v0 + 80), &qword_27C76E4F0, &qword_20C17A7E0);
    *v6 = v5;

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 32);
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 72), *(v0 + 48));
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_20BD28208;
    v13 = *(v0 + 64);
    v14 = *(v0 + 40);
    v15 = *(v0 + 112);

    return MEMORY[0x2821B5790](v13, v14, v15, v10, v11);
  }
}

uint64_t sub_20BD28208(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_20BD283F8;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_20BD28330;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BD28330()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[13];
  v2 = v0[2];
  sub_20B520158(v0[10], &qword_27C76E4F0, &qword_20C17A7E0);
  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_20BD283F8()
{
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_20B520158(v1, &qword_27C76E4F0, &qword_20C17A7E0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20BD284AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v3[12] = *(v7 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD28614, 0, 0);
}

uint64_t sub_20BD28614()
{
  v19 = *(v0 + 112);
  v20 = *(v0 + 104);
  v21 = *(v0 + 96);
  v22 = *(v0 + 120);
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_20C13B954();
  (*(v6 + 16))(v4, v3, v7);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, v4, v7);
  v10 = (v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v10 = sub_20BD2C634;
  v10[1] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
  sub_20C137C94();
  (*(v6 + 8))(v3, v7);
  (*(v1 + 16))(v20, v19, v2);
  v12 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v13 = swift_allocObject();
  (*(v1 + 32))(v13 + v12, v20, v2);
  v14 = (v13 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = sub_20BD2C6C4;
  v14[1] = 0;
  sub_20C137C94();
  v15 = *(v1 + 8);
  *(v0 + 128) = v15;
  *(v0 + 136) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v19, v2);
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *(v16 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
  *(v16 + 24) = 48;
  *(v16 + 32) = 2;
  *(v16 + 40) = 65;
  *(v16 + 48) = v22;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_20BD2893C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BD2F7F4, v16, v11);
}

uint64_t sub_20BD2893C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BD28B18, 0, 0);
  }

  else
  {
    v4 = v2[16];
    v5 = v2[15];
    v6 = v2[10];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];

    *v8 = v7;
    v4(v5, v6);

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_20BD28B18()
{
  (*(v0 + 128))(*(v0 + 120), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BD28BC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C136354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = v6;
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v29 = sub_20C13BB84();
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v13 = a1;
  v14 = sub_20C13BB74();
  v15 = sub_20C13D1D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28[1] = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28[0] = v9;
    v19 = v18;
    v34 = v18;
    *v17 = 136446210;
    swift_getErrorValue();
    v20 = MEMORY[0x20F2F5850](v32, v33);
    v22 = sub_20B51E694(v20, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_20B517000, v14, v15, "Unable to fetch notice privacy preference: %{public}s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v23 = v19;
    v9 = v28[0];
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v29);
  sub_20C136334();
  sub_20C136314();
  v24 = v31;
  (*(v5 + 16))(v31, v9, v4);
  v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v26 = swift_allocObject();
  (*(v5 + 32))(v26 + v25, v24, v4);
  sub_20C137CA4();
  return (*(v5 + 8))(v9, v4);
}

void sub_20BD28F0C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v133 = a3;
  v135 = a2;
  v139 = a4;
  v111 = type metadata accessor for MarketingUserInterfaceResource(0);
  v114 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v119 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v7;
  MEMORY[0x28223BE20](v8);
  v121 = &v104 - v9;
  v10 = sub_20C138894();
  v122 = *(v10 - 8);
  v123 = v10;
  MEMORY[0x28223BE20](v10);
  v120 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E4B0, &qword_20C155DC8);
  v112 = *(v12 - 8);
  v113 = v12;
  v13 = *(v112 + 64);
  MEMORY[0x28223BE20](v12);
  v110 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v127 = (&v104 - v15);
  v16 = sub_20C1387E4();
  v117 = *(v16 - 8);
  v118 = v16;
  MEMORY[0x28223BE20](v16);
  v116 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NavigationRequest(0);
  v128 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v129 = v19;
  v134 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v108 = *(v20 - 8);
  v109 = v20;
  v21 = *(v108 + 64);
  MEMORY[0x28223BE20](v20);
  v107 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v126 = &v104 - v23;
  v24 = sub_20C1388F4();
  v137 = *(v24 - 8);
  v138 = v24;
  MEMORY[0x28223BE20](v24);
  v132 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v25;
  MEMORY[0x28223BE20](v26);
  v136 = &v104 - v27;
  v125 = sub_20C132C14();
  v28 = *(v125 - 1);
  MEMORY[0x28223BE20](v125);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  v131 = a1;
  sub_20C133AA4();
  v140 = v148[0];
  v130 = v5;
  sub_20BD317AC(v5, v33, type metadata accessor for NavigationResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0, &unk_20C155B00);
      v63 = *(v62 + 48);
      LODWORD(v127) = v33[*(v62 + 64)];
      v105 = v30;
      v106 = v28;
      (*(v28 + 32))(v30, v33, v125);
      v64 = v138;
      v65 = v137;
      v123 = *(v137 + 32);
      v66 = &v33[v63];
      v67 = v136;
      v123(v136, v66, v138);
      swift_getObjectType();
      sub_20C13D234();
      sub_20BD317AC(v130, v134, type metadata accessor for NavigationRequest);
      (*(v65 + 16))(v132, v67, v64);
      v68 = (*(v128 + 80) + 16) & ~*(v128 + 80);
      v69 = (v129 + *(v65 + 80) + v68) & ~*(v65 + 80);
      v70 = (v124 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
      v72 = swift_allocObject();
      sub_20BD3108C(v134, v72 + v68, type metadata accessor for NavigationRequest);
      v123((v72 + v69), v132, v64);
      *(v72 + v70) = v131;
      *(v72 + v71) = v135;
      v73 = v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v73 = v133;
      *(v73 + 8) = v127;
      v75 = v107;
      v74 = v108;
      v76 = v109;
      (*(v108 + 16))(v107, v126, v109);
      v77 = (*(v74 + 80) + 16) & ~*(v74 + 80);
      v78 = (v21 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = swift_allocObject();
      (*(v74 + 32))(v79 + v77, v75, v76);
      v80 = (v79 + v78);
      *v80 = sub_20BD2CF60;
      v80[1] = v72;
      type metadata accessor for MarketingUserInterfaceConfiguration(0);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_20C137C94();
      swift_unknownObjectRelease();
      (*(v74 + 8))(v126, v76);
      (*(v137 + 8))(v136, v138);
      (*(v106 + 8))(v105, v125);
      return;
    case 4u:
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0, &unk_20C15F290);
      v82 = *(v81 + 48);
      LODWORD(v126) = v33[*(v81 + 64)];
      v83 = v116;
      (*(v117 + 32))(v116, v33, v118);
      v84 = v138;
      v85 = v137;
      v125 = *(v137 + 32);
      v86 = &v33[v82];
      v87 = v136;
      v125(v136, v86, v138);
      v88 = v130;
      sub_20BD25AAC(v83, v135, v133, v127);
      sub_20BD317AC(v88, v134, type metadata accessor for NavigationRequest);
      v89 = v85;
      v90 = *(v85 + 16);
      v91 = v132;
      v90(v132, v87, v84);
      v92 = (*(v128 + 80) + 16) & ~*(v128 + 80);
      v93 = (v129 + *(v89 + 80) + v92) & ~*(v89 + 80);
      v94 = (v124 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      sub_20BD3108C(v134, v96 + v92, type metadata accessor for NavigationRequest);
      v125((v96 + v93), v91, v138);
      *(v96 + v94) = v131;
      *(v96 + v95) = v135;
      v97 = v96 + ((v95 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v97 = v133;
      *(v97 + 8) = v126;
      v99 = v112;
      v98 = v113;
      v100 = v110;
      (*(v112 + 16))(v110, v127, v113);
      v101 = (*(v99 + 80) + 16) & ~*(v99 + 80);
      v102 = swift_allocObject();
      (*(v99 + 32))(v102 + v101, v100, v98);
      v103 = (v102 + ((v13 + v101 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v103 = sub_20BD2CF20;
      v103[1] = v96;
      type metadata accessor for MarketingUserInterfaceConfiguration(0);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_20C137C94();
      swift_unknownObjectRelease();
      (*(v99 + 8))(v127, v98);
      (*(v137 + 8))(v136, v138);
      (*(v117 + 8))(v116, v118);
      return;
    case 6u:
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FD0, &unk_20C155B10);
      v37 = *(v36 + 48);
      LODWORD(v133) = v33[*(v36 + 64)];
      v38 = v123;
      v39 = v122;
      v40 = v120;
      (*(v122 + 32))(v120, v33, v123);
      v41 = v138;
      v42 = v137;
      v43 = *(v137 + 32);
      v126 = (v137 + 32);
      v127 = v43;
      v44 = &v33[v37];
      v45 = v136;
      v43(v136, v44, v138);
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764260, &unk_20C155DA0) + 48);
      v47 = v121;
      (*(v39 + 16))(v121, v40, v38);
      *(v47 + v46) = v135;
      swift_storeEnumTagMultiPayload();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
      sub_20C133AA4();
      sub_20C133AA4();
      v135 = v147[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090, &unk_20C14F940);
      sub_20C133AA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450, &unk_20C1839F0);
      sub_20C133AA4();
      sub_20C133AA4();
      LODWORD(v125) = LOBYTE(v145[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00, &unk_20C156CF0);
      sub_20C133AA4();
      sub_20B51CC64(v146, v144);
      v48 = v134;
      sub_20BD317AC(v130, v134, type metadata accessor for NavigationRequest);
      v49 = v42;
      v50 = v132;
      (*(v42 + 16))(v132, v45, v41);
      sub_20B51CC64(v147, v143);
      sub_20B51CC64(v148, v142);
      sub_20B51CC64(v145, v141);
      sub_20BD317AC(v47, v119, type metadata accessor for MarketingUserInterfaceResource);
      v51 = (*(v128 + 80) + 56) & ~*(v128 + 80);
      v52 = (v129 + *(v49 + 80) + v51) & ~*(v49 + 80);
      v53 = (v124 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = (v53 + 49) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v54 + 47) & 0xFFFFFFFFFFFFFFF8;
      v56 = (v55 + 47) & 0xFFFFFFFFFFFFFFF8;
      v131 = (*(v114 + 80) + v56 + 8) & ~*(v114 + 80);
      v57 = swift_allocObject();
      sub_20B51C710(v144, v57 + 16);
      sub_20BD3108C(v48, v57 + v51, type metadata accessor for NavigationRequest);
      v58 = v50;
      v59 = v138;
      v127(v57 + v52, v58, v138);
      v60 = v57 + v53;
      sub_20B51C710(v143, v57 + v53);
      *(v60 + 40) = v125;
      *(v60 + 41) = v133;
      sub_20B51C710(v142, v57 + v54);
      sub_20B51C710(v141, v57 + v55);
      *(v57 + v56) = v135;
      sub_20BD3108C(v119, v57 + v131, type metadata accessor for MarketingUserInterfaceResource);
      v61 = swift_allocObject();
      *(v61 + 16) = "SeymourUI/NavigationConfigurationProviding.swift";
      *(v61 + 24) = 48;
      *(v61 + 32) = 2;
      *(v61 + 40) = 56;
      *(v61 + 48) = &unk_20C17A790;
      *(v61 + 56) = v57;
      type metadata accessor for MarketingUserInterfaceConfiguration(0);
      swift_unknownObjectRetain();
      sub_20C137C94();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v145);
      __swift_destroy_boxed_opaque_existential_1(v146);
      __swift_destroy_boxed_opaque_existential_1(v147);
      __swift_destroy_boxed_opaque_existential_1(v148);
      sub_20BD31814(v121, type metadata accessor for MarketingUserInterfaceResource);
      (*(v137 + 8))(v136, v59);
      (*(v122 + 8))(v120, v123);
      return;
    case 9u:
      (*(v28 + 8))(v33, v125);
      goto LABEL_3;
    case 0xAu:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
      goto LABEL_3;
    default:
      sub_20BD31814(v33, type metadata accessor for NavigationResource);
LABEL_3:
      sub_20B5D9BA8();
      v34 = swift_allocError();
      *v35 = 13;
      *(swift_allocObject() + 16) = v34;
      type metadata accessor for MarketingUserInterfaceConfiguration(0);
      sub_20C137CA4();
      swift_unknownObjectRelease();
      return;
  }
}

uint64_t sub_20BD29F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v47 = a7;
  v48 = a8;
  v49 = a6;
  v39 = a5;
  v45 = a3;
  v46 = a4;
  v12 = sub_20C1388F4();
  v38 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationRequest(0);
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E4B0, &qword_20C155DC8);
  v43 = *(v18 - 8);
  v44 = v18;
  v19 = *(v43 + 64);
  MEMORY[0x28223BE20](v18);
  v42 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v50 = &v37 - v21;
  sub_20BD25AAC(a1, a5, a6, &v37 - v21);
  sub_20BD317AC(a2, v17, type metadata accessor for NavigationRequest);
  v22 = v41;
  (*(v13 + 16))(v41, v45, v12);
  v23 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v24 = (v16 + *(v13 + 80) + v23) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_20BD3108C(v17, v27 + v23, type metadata accessor for NavigationRequest);
  (*(v13 + 32))(v27 + v24, v22, v38);
  *(v27 + v25) = v46;
  *(v27 + v26) = v39;
  v28 = v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = v50;
  *v28 = v49;
  *(v28 + 8) = v47;
  v31 = v42;
  v30 = v43;
  v32 = v44;
  (*(v43 + 16))(v42, v29, v44);
  v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = swift_allocObject();
  (*(v30 + 32))(v34 + v33, v31, v32);
  v35 = (v34 + ((v19 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v35 = sub_20BD31A10;
  v35[1] = v27;
  type metadata accessor for MarketingUserInterfaceConfiguration(0);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_20C137C94();
  return (*(v30 + 8))(v50, v32);
}

uint64_t sub_20BD2A360(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = swift_projectBox();
  sub_20C135AA4();
  v6 = sub_20C1344C4();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  swift_beginAccess();
  return sub_20B5DF2D4(v4, v5, &qword_27C766E88, &qword_20C16E290);
}

void sub_20BD2A480(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v31 = a3;
  v35 = a4;
  v39 = sub_20C137254();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = &v29 - v9;
  v29 = swift_projectBox();
  v10 = sub_20C1340B4();
  v11 = v10;
  v12 = v10 + 56;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 56);
  v16 = (v13 + 63) >> 6;
  v36 = v4 + 32;
  v37 = v4;
  v32 = (v4 + 8);
  v33 = v4 + 16;

  v17 = 0;
  while (v15)
  {
LABEL_10:
    v19 = v11;
    v20 = *(v11 + 48);
    v21 = v37;
    v22 = v34;
    v23 = v39;
    (*(v37 + 16))(v34, v20 + *(v37 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v39);
    v24 = *(v21 + 32);
    v24(v38, v22, v23);
    v25 = sub_20C1371C4();
    if ((v35 & 1) == 0 && v25 == v31)
    {

      v26 = v30;
      v24(v30, v38, v39);
      v27 = 0;
LABEL_14:
      (*(v37 + 56))(v26, v27, 1, v39);

      v28 = v29;
      swift_beginAccess();
      sub_20B5DF2D4(v26, v28, &unk_27C762A60, &unk_20C1512D0);
      return;
    }

    v15 &= v15 - 1;
    (*v32)(v38, v39);
    v11 = v19;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      v27 = 1;
      v26 = v30;
      goto LABEL_14;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_20BD2A798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a4;
  v54 = a2;
  v55 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_20C1344C4();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v13);
  v44 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v49 = &v44 - v16;
  v17 = type metadata accessor for NavigationSource(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C137254();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v24 = swift_projectBox();
  v25 = swift_projectBox();
  swift_beginAccess();
  if (!(*(v21 + 48))(v24, 1, v20))
  {
    (*(v21 + 16))(v23, v24, v20);
    v26 = sub_20C1371C4();
    (*(v21 + 8))(v23, v20);
    if (!v26)
    {
      v27 = type metadata accessor for NavigationRequest(0);
      sub_20BD317AC(v54 + *(v27 + 24), v19, type metadata accessor for NavigationSource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = sub_20C135024();
        (*(*(v28 - 8) + 8))(v19, v28);
        swift_beginAccess();
        sub_20B52F9E8(v25, v12, &qword_27C766E88, &qword_20C16E290);
        v29 = v50;
        v30 = v51;
        if ((*(v50 + 48))(v12, 1, v51) != 1)
        {
          v32 = *(v29 + 32);
          v33 = v49;
          v32(v49, v12, v30);
          __swift_project_boxed_opaque_existential_1(v45, v45[3]);
          sub_20C1398E4();
          v34 = v44;
          (*(v29 + 16))(v44, v33, v30);
          v35 = (*(v29 + 80) + 24) & ~*(v29 + 80);
          v36 = swift_allocObject();
          *(v36 + 16) = v52;
          v32((v36 + v35), v34, v30);
          v37 = swift_allocObject();
          *(v37 + 16) = sub_20BD31874;
          *(v37 + 24) = v36;
          v39 = v46;
          v38 = v47;
          v40 = v48;
          (*(v47 + 16))(v46, v53, v48);
          v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
          v42 = swift_allocObject();
          (*(v38 + 32))(v42 + v41, v39, v40);
          v43 = (v42 + ((v7 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v43 = sub_20B5DF4C4;
          v43[1] = v37;

          sub_20C137C94();
          (*(v38 + 8))(v53, v40);
          return (*(v29 + 8))(v49, v30);
        }

        sub_20B520158(v12, &qword_27C766E88, &qword_20C16E290);
      }

      else
      {
        sub_20BD31814(v19, type metadata accessor for NavigationSource);
      }
    }
  }

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BD2ADC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  v7 = swift_projectBox();
  v8 = sub_20C1340B4();
  v11 = a3;
  sub_20B6B73C4(sub_20BD319BC, v8, v6);

  swift_beginAccess();
  return sub_20B5DF2D4(v6, v7, &unk_27C762A60, &unk_20C1512D0);
}

BOOL sub_20BD2AEE0()
{
  v0 = sub_20C134734();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134484();
  v4 = sub_20C1346F4();
  (*(v1 + 8))(v3, v0);
  v5 = sub_20C1371C4();
  v6 = *(v4 + 16);
  v7 = 32;
  do
  {
    v8 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v10 = *(v4 + v7);
    v7 += 8;
  }

  while (v10 != v5);
  v11 = v8 != 0;

  return v11;
}

uint64_t sub_20BD2B010@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v47 = a3;
  v54 = a2;
  v55 = a4;
  v56 = type metadata accessor for WorkoutSessionConfiguration(0);
  v48 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v49 = v6;
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_20C137254();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  v18 = sub_20C1344C4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_projectBox();
  v23 = swift_projectBox();
  swift_beginAccess();
  sub_20B52F9E8(v22, v17, &qword_27C766E88, &qword_20C16E290);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v24 = &qword_27C766E88;
    v25 = &qword_20C16E290;
    v26 = v17;
LABEL_5:
    sub_20B520158(v26, v24, v25);
    v29 = sub_20C133A24();
    sub_20BD31384(&qword_27C7622C0, MEMORY[0x277D50230], MEMORY[0x277D50238]);
    v30 = swift_allocError();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D50220], v29);
    *(swift_allocObject() + 16) = v30;
    return sub_20C137CA4();
  }

  (*(v19 + 32))(v21, v17, v18);
  swift_beginAccess();
  sub_20B52F9E8(v23, v12, &unk_27C762A60, &unk_20C1512D0);
  v28 = v52;
  v27 = v53;
  if ((*(v52 + 48))(v12, 1, v53) == 1)
  {
    (*(v19 + 8))(v21, v18);
    v24 = &unk_27C762A60;
    v25 = &unk_20C1512D0;
    v26 = v12;
    goto LABEL_5;
  }

  v33 = v51;
  (*(v28 + 32))(v51, v12, v27);
  (*(v19 + 16))(v9, v21, v18);
  v34 = v56;
  (*(v28 + 16))(&v9[*(v56 + 20)], v33, v27);
  sub_20BD317AC(v47, &v9[v34[7]], MEMORY[0x277D4DFB8]);
  v35 = v34[9];
  v36 = sub_20C13BA24();
  (*(*(v36 - 8) + 56))(&v9[v35], 1, 1, v36);
  v37 = v34[10];
  v38 = sub_20C134A44();
  (*(*(v38 - 8) + 56))(&v9[v37], 1, 1, v38);
  v39 = v34[12];
  v40 = sub_20C135C54();
  (*(*(v40 - 8) + 56))(&v9[v39], 1, 1, v40);
  v9[v34[6]] = 1;
  *&v9[v34[8]] = a5;
  v41 = &v9[v34[11]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &v9[v34[13]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = v21;
  v44 = v50;
  sub_20BD317AC(v9, v50, type metadata accessor for WorkoutSessionConfiguration);
  v45 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v46 = swift_allocObject();
  sub_20BD3108C(v44, v46 + v45, type metadata accessor for WorkoutSessionConfiguration);
  sub_20C137CA4();
  sub_20BD31814(v9, type metadata accessor for WorkoutSessionConfiguration);
  (*(v28 + 8))(v51, v27);
  return (*(v19 + 8))(v43, v18);
}

uint64_t sub_20BD2B704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = swift_projectBox();
  v13 = a5(0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  swift_beginAccess();
  return sub_20B5DF2D4(v11, v12, a3, a4);
}

uint64_t sub_20BD2B84C@<X0>(uint64_t a2@<X8>)
{
  v3 = swift_projectBox();
  swift_beginAccess();
  return sub_20B52F9E8(v3, a2, &qword_27C76E4F8, &unk_20C17A810);
}

void sub_20BD2B8A8(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a3;
  v118 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v90 - v6;
  v7 = type metadata accessor for WorkoutSessionConfiguration(0);
  v97 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v99 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v8;
  MEMORY[0x28223BE20](v9);
  v100 = &v90 - v10;
  v92 = sub_20C13A484();
  MEMORY[0x28223BE20](v92);
  v108 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v90 - v13;
  v94 = sub_20C13BB84();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_20C137254();
  v119 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v107 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v90 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v90 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - v22;
  v24 = sub_20C134104();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  MEMORY[0x28223BE20](v28 - 8);
  v105 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v90 - v31;
  v117 = sub_20C1344C4();
  v111 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v106 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v90 - v35;
  v37 = swift_projectBox();
  v116 = v36;
  v95 = a1;
  sub_20C137D84();
  swift_beginAccess();
  if ((*(v25 + 48))(v37, 1, v24))
  {
    v38 = v119;
    v39 = v112;
    (*(v119 + 56))(v32, 1, 1, v112);
    v40 = v32;
LABEL_14:
    v54 = v105;
    sub_20B52F9E8(v40, v105, &unk_27C762A60, &unk_20C1512D0);
    v55 = (*(v38 + 48))(v54, 1, v39);
    v56 = v117;
    v57 = v111;
    if (v55 == 1)
    {
      sub_20B520158(v54, &unk_27C762A60, &unk_20C1512D0);
      v58 = v91;
      sub_20C13B534();
      v59 = sub_20C13BB74();
      v60 = sub_20C13D1D4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_20B517000, v59, v60, "Remote Display Configuration creation failed. Invalid workout activity type behavior", v61, 2u);
        MEMORY[0x20F2F6A40](v61, -1, -1);
      }

      (*(v93 + 8))(v58, v94);
      sub_20B5D9BA8();
      v62 = swift_allocError();
      *v63 = 15;
      *(swift_allocObject() + 16) = v62;
      v64 = v62;
      sub_20C137CA4();
      sub_20B520158(v40, &unk_27C762A60, &unk_20C1512D0);
      (*(v57 + 8))(v116, v56);
    }

    else
    {
      v101 = v40;
      v65 = *(v38 + 32);
      v66 = v109;
      v65(v109, v54, v39);
      v67 = sub_20C137EA4();
      v68 = v110;
      (*(*(v67 - 8) + 16))(v110, v95, v67);
      swift_storeEnumTagMultiPayload();
      (*(v57 + 16))(v106, v116, v56);
      v69 = *(v38 + 16);
      v70 = v39;
      v69(v107, v66, v39);
      sub_20BD317AC(v68, v108, MEMORY[0x277D4DFB8]);
      v71 = v96;
      sub_20C137E84();
      v72 = v71;
      v73 = sub_20C138184();
      v74 = *(v73 - 8);
      if ((*(v74 + 48))(v72, 1, v73) == 1)
      {
        sub_20B520158(v72, &unk_27C768AF0, &unk_20C1523F0);
        v75 = 0;
      }

      else
      {
        sub_20C138134();
        v75 = v76;
        (*(v74 + 8))(v72, v73);
      }

      v77 = v7[9];
      v78 = sub_20C13BA24();
      v79 = v100;
      (*(*(v78 - 8) + 56))(&v100[v77], 1, 1, v78);
      v80 = v7[10];
      v81 = sub_20C134A44();
      (*(*(v81 - 8) + 56))(v79 + v80, 1, 1, v81);
      v82 = v7[12];
      v83 = sub_20C135C54();
      (*(*(v83 - 8) + 56))(v79 + v82, 1, 1, v83);
      v84 = v117;
      (*(v57 + 32))(v79, v106, v117);
      v65((v79 + v7[5]), v107, v70);
      *(v79 + v7[6]) = 1;
      sub_20BD3108C(v108, v79 + v7[7], MEMORY[0x277D4DFB8]);
      *(v79 + v7[8]) = v75;
      v85 = (v79 + v7[11]);
      *v85 = 0;
      v85[1] = 0;
      v86 = (v79 + v7[13]);
      *v86 = 0;
      v86[1] = 0;
      v87 = v99;
      sub_20BD317AC(v79, v99, type metadata accessor for WorkoutSessionConfiguration);
      v88 = (*(v97 + 80) + 16) & ~*(v97 + 80);
      v89 = swift_allocObject();
      sub_20BD3108C(v87, v89 + v88, type metadata accessor for WorkoutSessionConfiguration);
      sub_20C137CA4();
      sub_20BD31814(v79, type metadata accessor for WorkoutSessionConfiguration);
      sub_20BD31814(v110, MEMORY[0x277D4DFB8]);
      (*(v119 + 8))(v109, v70);
      sub_20B520158(v101, &unk_27C762A60, &unk_20C1512D0);
      (*(v57 + 8))(v116, v84);
    }

    return;
  }

  v103 = v20;
  v113 = v23;
  v101 = v32;
  v90 = v7;
  (*(v25 + 16))(v27, v37, v24);
  v41 = sub_20C1340B4();
  (*(v25 + 8))(v27, v24);
  v42 = v41 + 56;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 56);
  v46 = (v43 + 63) >> 6;
  v38 = v119;
  v102 = v119 + 16;
  v104 = v119 + 32;
  v47 = (v119 + 8);
  v114 = v41;

  v48 = 0;
  v39 = v112;
  v49 = v113;
  if (v45)
  {
    while (1)
    {
      v50 = v48;
LABEL_10:
      (*(v38 + 16))(v49, *(v114 + 48) + *(v38 + 72) * (__clz(__rbit64(v45)) | (v50 << 6)), v39);
      v51 = v38;
      v52 = *(v38 + 32);
      v53 = v103;
      v52();
      if (sub_20C1371C4() == v115)
      {
        break;
      }

      v45 &= v45 - 1;
      (*v47)(v53, v39);
      v48 = v50;
      v38 = v51;
      if (!v45)
      {
        goto LABEL_7;
      }
    }

    v40 = v101;
    (v52)(v101, v53, v39);
    (*(v51 + 56))(v40, 0, 1, v39);

    v7 = v90;
    v38 = v51;
    goto LABEL_14;
  }

LABEL_7:
  while (1)
  {
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v50 >= v46)
    {

      v40 = v101;
      (*(v38 + 56))(v101, 1, 1, v39);

      v7 = v90;
      goto LABEL_14;
    }

    v45 = *(v42 + 8 * v50);
    ++v48;
    if (v45)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_20BD2C634(void **a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);

  return sub_20C137CA4();
}

uint64_t sub_20BD2C6C4()
{
  *(swift_allocObject() + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);

  return sub_20C137CA4();
}

uint64_t sub_20BD2C744(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_20C13BB84();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD2C804, 0, 0);
}