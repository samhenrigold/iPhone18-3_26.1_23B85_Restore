double sub_2647002DC@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_2647845C4();
  v30 = 1;
  sub_2646FF8E4(v4, &v15);
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v31 = v15;
  v32 = v16;
  v45[10] = v25;
  v45[11] = v26;
  v45[12] = v27;
  v45[6] = v21;
  v45[7] = v22;
  v45[8] = v23;
  v45[9] = v24;
  v45[2] = v17;
  v45[3] = v18;
  v45[4] = v19;
  v45[5] = v20;
  v44 = v28;
  v46 = v28;
  v45[0] = v15;
  v45[1] = v16;
  sub_26460CCE8(&v31, &v14, &qword_27FF78248, &qword_26478FA00);
  sub_26460CD50(v45, &qword_27FF78248, &qword_26478FA00);
  *&v29[167] = v41;
  *&v29[183] = v42;
  *&v29[199] = v43;
  *&v29[103] = v37;
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[151] = v40;
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v6 = *&v29[176];
  *(a2 + 177) = *&v29[160];
  *(a2 + 193) = v6;
  *(a2 + 209) = *&v29[192];
  v7 = *&v29[112];
  *(a2 + 113) = *&v29[96];
  *(a2 + 129) = v7;
  v8 = *&v29[144];
  *(a2 + 145) = *&v29[128];
  *(a2 + 161) = v8;
  v9 = *&v29[48];
  *(a2 + 49) = *&v29[32];
  *(a2 + 65) = v9;
  v10 = *&v29[80];
  *(a2 + 81) = *&v29[64];
  *(a2 + 97) = v10;
  result = *v29;
  v12 = *&v29[16];
  *(a2 + 17) = *v29;
  v29[215] = v44;
  v13 = v30;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 225) = *&v29[208];
  *(a2 + 33) = v12;
  return result;
}

void sub_2647004BC(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32);
  v5 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48);
  v6 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache);
  v36 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16);
  v37 = v4;
  v7 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64);
  v8 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80);
  v38 = v5;
  v39 = v7;
  v40 = v8;
  v35 = v6;
  v9 = v36;
  v10 = 0uLL;
  v11 = 0.0;
  if (v36)
  {
    v12 = *(&v37 + 1);
    if (*(&v37 + 1))
    {
      v13 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
      swift_beginAccess();
      if (*(a1 + v13) == 1)
      {
        sub_26460CCE8(&v35, v34, &qword_27FF756F8, &qword_264787DF0);
        v15 = v12;
        Set<>.latitudeRange.getter(v9);
        v17 = v16 * 1.25 + 0.01;
        if (v17 > 0.01)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0.01;
        }

        Set<>.longitudeRange.getter(v9);
        v20 = v19 * 1.25 + 0.01;
        if (v20 <= 0.01)
        {
          v20 = 0.01;
        }

        v33 = v20;
        *&v21 = COERCE_DOUBLE(Set<>.middleLatitude.getter(v9));
        if (v22)
        {
          [v15 latitude];
        }

        else
        {
          v23 = *&v21;
        }

        v11 = v23 - v18 * 0.0714285714;
        v29 = Set<>.middleLongitude.getter(v9);
        if (v30)
        {
          [v15 longitude];
          v32 = v31;

          sub_26460CD50(&v35, &qword_27FF756F8, &qword_264787DF0);
          v24 = 0;
          *v10.i64 = v18 / 0.7;
          v9 = v32;
        }

        else
        {
          v9 = v29;

          sub_26460CD50(&v35, &qword_27FF756F8, &qword_264787DF0);
          v24 = 0;
          *v10.i64 = v18 / 0.7;
        }

        *&v10.i64[1] = v33;
      }

      else
      {
        sub_26460CCE8(&v35, v34, &qword_27FF756F8, &qword_264787DF0);
        v25 = v12;
        [v25 latitude];
        v11 = v26;
        [v25 longitude];
        v28 = v27;

        sub_26460CD50(&v35, &qword_27FF756F8, &qword_264787DF0);
        v24 = 0;
        v9 = v28;
        v10 = vdupq_n_s64(0x3F9999999999999AuLL);
      }
    }

    else
    {
      v9 = 0;
      v24 = 1;
    }
  }

  else
  {
    v24 = 1;
  }

  *a3 = v11;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 32) = v24;
}

uint64_t sub_264700748@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a3;
  v90 = a2;
  v85 = a1;
  v87 = a5;
  v74 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v88 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264783E24();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v10 = MEMORY[0x28223BE20](v86);
  v79 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  v14 = MEMORY[0x28223BE20](v73);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  v19 = type metadata accessor for SafetyCacheMapView(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v81 = &v67 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78280, &qword_26478FAC8);
  MEMORY[0x28223BE20](v80);
  v84 = &v67 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v92);

  v25 = v9;
  v26 = v74;

  v27 = v92;
  (*(v88 + 56))(v13, 1, 1, v26);
  sub_264785404();
  sub_26460CD50(v13, &qword_27FF766A8, &unk_26478AA80);
  v86 = a4;
  sub_2647004BC(v90, a4, &v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766B8, &qword_26478F190);
  sub_264785404();
  v28 = v98;
  v76 = v99;
  v77 = v101;
  v78 = v100;
  v75 = v102;
  *v22 = v27;
  v29 = v16;
  sub_26460CCE8(v18, v22 + v19[5], &qword_27FF766E8, &unk_26478F160);
  sub_264783DE4();
  sub_26460CCE8(v18, v16, &qword_27FF766E8, &unk_26478F160);
  v30 = sub_264783E14();
  v31 = sub_2647859F4();
  if (os_log_type_enabled(v30, v31))
  {
    v69 = v31;
    v70 = v28;
    v71 = v25;
    v32 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v92 = v68;
    *v32 = 136642819;
    v33 = v79;
    v34 = v73;
    v73 = v29;
    MEMORY[0x26673F100](v34);
    if ((*(v88 + 48))(v33, 1, v26))
    {
      sub_26460CD50(v79, &qword_27FF766A8, &unk_26478AA80);
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v37 = v79;
      v38 = v72;
      sub_264706858(v79, v72, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_26460CD50(v37, &qword_27FF766A8, &unk_26478AA80);
      v35 = sub_2646E9D5C();
      v36 = v39;
      sub_26470510C(v38, type metadata accessor for SafetyCacheMapView.Annotation);
    }

    sub_26460CD50(v73, &qword_27FF766E8, &unk_26478F160);
    v40 = sub_2646DF234(v35, v36, &v92);

    *(v32 + 4) = v40;
    _os_log_impl(&dword_264605000, v30, v69, "selected annotation is %{sensitive}s", v32, 0xCu);
    v41 = v68;
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x266740650](v41, -1, -1);
    MEMORY[0x266740650](v32, -1, -1);

    (*(v82 + 8))(v71, v83);
    sub_26460CD50(v18, &qword_27FF766E8, &unk_26478F160);
    v28 = v70;
  }

  else
  {

    sub_26460CD50(v29, &qword_27FF766E8, &unk_26478F160);
    (*(v82 + 8))(v25, v83);
    sub_26460CD50(v18, &qword_27FF766E8, &unk_26478F160);
  }

  v42 = v22 + v19[6];
  v43 = v76;
  *v42 = v28;
  *(v42 + 1) = v43;
  v44 = v77;
  *(v42 + 1) = v78;
  *(v42 + 2) = v44;
  v42[48] = v75;
  *(v22 + v19[7]) = 0;
  *(v22 + v19[8]) = 0;
  *(v22 + v19[9]) = 0;
  *(v22 + v19[10]) = 0;
  *(v22 + v19[11]) = 0;
  v45 = v81;
  sub_264706140(v22, v81, type metadata accessor for SafetyCacheMapView);
  v46 = sub_2647854F4();
  v48 = v47;
  v50 = v84;
  v49 = v85;
  v51 = &v84[*(v80 + 36)];
  v52 = v90;
  v53 = v86;
  sub_264700FB8(v85, v90, v89, v86, v51);
  v54 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78290, &unk_26478FAD0) + 36));
  *v54 = v46;
  v54[1] = v48;
  sub_264706140(v45, v50, type metadata accessor for SafetyCacheMapView);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v91);

  v94 = v91[2];
  v95 = v91[3];
  v96 = v91[4];
  v97 = v91[5];
  v92 = v91[0];
  v93 = v91[1];
  v55 = swift_allocObject();
  v55[2] = v49;
  v55[3] = v52;
  v55[4] = v89;
  v55[5] = v53;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78268, &qword_26478FAC0);
  v57 = v87;
  v58 = (v87 + *(v56 + 36));
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782A0, &qword_264792120);
  v60 = v52;
  v61 = v53;
  sub_2647858C4();
  v62 = (v58 + *(v59 + 40));
  v63 = v95;
  v62[2] = v94;
  v62[3] = v63;
  v64 = v97;
  v62[4] = v96;
  v62[5] = v64;
  v65 = v93;
  *v62 = v92;
  v62[1] = v65;
  *v58 = &unk_26478FB48;
  v58[1] = v55;
  return sub_26460E7E4(v50, v57, &qword_27FF78280, &qword_26478FAC8);
}

uint64_t sub_264700FB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a2;
  v82 = a3;
  v83 = a1;
  v86 = a5;
  v79 = sub_2647849E4();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782B8, &qword_26478FB50);
  MEMORY[0x28223BE20](v71);
  v80 = &v68 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782C0, &qword_26478FB58);
  MEMORY[0x28223BE20](v72);
  v73 = &v68 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782C8, &qword_26478FB60);
  MEMORY[0x28223BE20](v74);
  v75 = &v68 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782D0, &qword_26478FB68);
  MEMORY[0x28223BE20](v76);
  v11 = &v68 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782D8, &qword_26478FB70);
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  v15 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v22);

  v23 = *(v20 + 36);
  if ((*(v16 + 48))(&v22[v23], 1, v15))
  {
    v24 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo;
    v25 = v22;
  }

  else
  {
    v30 = v80;
    v68 = v14;
    v69 = v11;
    v70 = a4;
    v31 = v83;
    sub_264706858(&v22[v23], v18, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
    sub_26470510C(v22, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
    v32 = [v18[2] name];
    if (v32)
    {
      v33 = v32;
      sub_264785724();

      sub_26470510C(v18, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
      *v30 = sub_2647845C4();
      *(v30 + 8) = 0;
      *(v30 + 16) = 1;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782E0, &qword_26478FB78);
      sub_264701834(v31, v81, v82, v70, (v30 + *(v34 + 44)));

      v35 = sub_264784C24();
      v36 = v30 + *(v71 + 36);
      *v36 = v35;
      *(v36 + 8) = 0u;
      *(v36 + 24) = 0u;
      *(v36 + 40) = 1;
      sub_264785514();
      sub_264784314();
      v37 = v73;
      sub_26460E7E4(v30, v73, &qword_27FF782B8, &qword_26478FB50);
      v38 = (v37 + *(v72 + 36));
      v39 = v92;
      v38[4] = v91;
      v38[5] = v39;
      v38[6] = v93;
      v40 = v88;
      *v38 = v87;
      v38[1] = v40;
      v41 = v90;
      v38[2] = v89;
      v38[3] = v41;
      v42 = sub_264785504();
      v44 = v43;
      v45 = v75;
      v46 = &v75[*(v74 + 36)];
      v47 = sub_2647851C4();
      KeyPath = swift_getKeyPath();
      v49 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782E8, &unk_26478FB80) + 36);
      sub_2647854A4();
      v50 = sub_264784C34();
      v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782F0, &unk_2647912F0) + 36)] = v50;
      *v46 = KeyPath;
      v46[1] = v47;
      v46[2] = 0x3FA999999999999ALL;
      v51 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782F8, &qword_26478FB90) + 36));
      *v51 = v42;
      v51[1] = v44;
      sub_26460E7E4(v37, v45, &qword_27FF782C0, &qword_26478FB58);
      v52 = swift_allocObject();
      v53 = v82;
      v54 = v83;
      v55 = v81;
      v52[2] = v83;
      v52[3] = v55;
      v56 = v70;
      v52[4] = v53;
      v52[5] = v56;
      v57 = v55;
      v58 = v56;
      v59 = v77;
      sub_2647849D4();
      sub_264705174();
      v60 = v69;
      sub_264784FD4();

      (*(v78 + 8))(v59, v79);
      sub_26460CD50(v45, &qword_27FF782C8, &qword_26478FB60);
      v61 = swift_allocObject();
      v61[2] = v54;
      v61[3] = v57;
      v61[4] = v53;
      v61[5] = v58;
      sub_264705370();
      v62 = v57;
      v63 = v58;
      v64 = v68;
      sub_264784F14();

      sub_26460CD50(v60, &qword_27FF782D0, &qword_26478FB68);
      v29 = v84;
      v65 = v85;
      v66 = v86;
      (*(v84 + 32))(v86, v64, v85);
      v28 = v65;
      v27 = v66;
      v26 = 0;
      return (*(v29 + 56))(v27, v26, 1, v28);
    }

    v24 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo;
    v25 = v18;
  }

  sub_26470510C(v25, v24);
  v26 = 1;
  v28 = v85;
  v27 = v86;
  v29 = v84;
  return (*(v29 + 56))(v27, v26, 1, v28);
}

uint64_t sub_264701834@<X0>(uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X8>)
{
  v37 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78340, &qword_26478FBF8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v40 = sub_264785274();
  v39 = sub_264785174();
  KeyPath = swift_getKeyPath();
  *v16 = sub_264784724();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78348, &qword_26478FC00);
  sub_264701C08(a3, a4, a5, a6, &v16[*(v17 + 44)]);
  v18 = &a6[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  v19 = *&a6[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48];
  v50 = *&a6[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32];
  v51 = v19;
  v20 = *&a6[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80];
  v52 = *&a6[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64];
  v53 = v20;
  v21 = *&a6[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16];
  v49[0] = *&a6[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  v49[1] = v21;
  v22 = *(&v50 + 1);
  if (!v21)
  {
    v42 = *v18;
    v43 = 0;
    v44 = *(v18 + 24);
    v45 = *(&v50 + 1);
    v27 = *(v18 + 4);
    v46 = *(v18 + 3);
    v47 = v27;
    v48 = *(v18 + 5);
    sub_26460CCE8(v49, v41, &qword_27FF756F8, &qword_264787DF0);
    sub_26460CD50(&v42, &qword_27FF756F8, &qword_264787DF0);
    v22 = 0;
    goto LABEL_5;
  }

  v42 = *v18;
  v43 = v21;
  v44 = *(v18 + 24);
  v45 = *(&v50 + 1);
  v23 = *(v18 + 4);
  v46 = *(v18 + 3);
  v47 = v23;
  v48 = *(v18 + 5);
  sub_26460CCE8(v49, v41, &qword_27FF756F8, &qword_264787DF0);
  v24 = v22;
  sub_26460CD50(&v42, &qword_27FF756F8, &qword_264787DF0);
  if (!v22)
  {
LABEL_5:
    v26 = 0;
    v25 = 0;
    goto LABEL_6;
  }

  v22 = sub_264785274();
  v25 = sub_264785214();
  v26 = swift_getKeyPath();

LABEL_6:
  sub_26460CCE8(v16, v14, &qword_27FF78340, &qword_26478FBF8);
  v28 = v39;
  v36 = v16;
  v30 = v37;
  v29 = KeyPath;
  *v37 = v40;
  v30[1] = v29;
  v30[2] = v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78350, &qword_26478FC08);
  sub_26460CCE8(v14, v30 + v31[12], &qword_27FF78340, &qword_26478FBF8);
  v32 = v30 + v31[16];
  *v32 = 0;
  v32[8] = 1;
  v33 = (v30 + v31[20]);

  sub_26466D2FC(v22);
  sub_26466D34C(v22, v26, v25);
  *v33 = v22;
  v33[1] = v26;
  v33[2] = v25;
  sub_26460CD50(v36, &qword_27FF78340, &qword_26478FBF8);
  sub_26466D34C(v22, v26, v25);
  sub_26460CD50(v14, &qword_27FF78340, &qword_26478FBF8);
}

uint64_t sub_264701C08@<X0>(uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v64 = a5;
  v65 = a6;
  v62 = a3;
  v63 = a4;
  v69 = a7;
  v7 = sub_264784AE4();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76588, &qword_26478A690);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v66 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v55 - v15;
  v16 = sub_264783B94();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_264785704();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_2647856E4();
  MEMORY[0x28223BE20](v18 - 8);
  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();
  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v71 = sub_264785754();
  v72 = v21;
  sub_264613FC4();
  v22 = sub_264784E44();
  v24 = v23;
  v26 = v25;
  sub_264784CC4();
  v27 = sub_264784E24();
  v29 = v28;
  v31 = v30;

  sub_26460ECC4(v22, v24, v26 & 1);

  sub_264785204();
  v32 = sub_264784DE4();
  v56 = v33;
  v57 = v34;
  v58 = v35;

  sub_26460ECC4(v27, v29, v31 & 1);

  v36 = v11;
  sub_264784AD4();
  v37 = swift_allocObject();
  v38 = v63;
  v37[2] = v62;
  v37[3] = v38;
  v39 = v65;
  v37[4] = v64;
  v37[5] = v39;
  v40 = v60;
  v41 = v61;
  (*(v60 + 16))(v59, v11, v61);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_2647061A8;
  *(v42 + 24) = v37;
  v43 = v38;
  v44 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76590, &qword_26478A698);
  sub_264703CEC(&qword_27FF76598, MEMORY[0x277CE0818], MEMORY[0x277CE0810]);
  sub_26466D4BC();
  v45 = v70;
  sub_264784024();
  (*(v40 + 8))(v36, v41);
  v47 = v66;
  v46 = v67;
  v48 = *(v67 + 16);
  v49 = v68;
  v48(v66, v45, v68);
  v50 = v69;
  v51 = v56;
  *v69 = v32;
  v50[1] = v51;
  LOBYTE(v37) = v57 & 1;
  *(v50 + 16) = v57 & 1;
  v50[3] = v58;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78358, &unk_26478FC10);
  v48(v50 + *(v52 + 48), v47, v49);
  sub_26460C474(v32, v51, v37);
  v53 = *(v46 + 8);

  v53(v70, v49);
  v53(v47, v49);
  sub_26460ECC4(v32, v51, v37);
}

uint64_t sub_2647021FC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v37[0] = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264785704();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2647856E4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_264783AF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v44);

  if (v45 && *(&v46 + 1))
  {
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v38 = v44;
    v39 = v45;
    v11 = *(&v46 + 1);
    sub_26460CD50(&v38, &qword_27FF756F8, &qword_264787DF0);
    v12 = [v11 date];

    sub_264783AC4();
    v13 = sub_264783A64();
    v14 = [v13 preciseFormattedTime];

    sub_264785724();
    (*(v8 + 8))(v10, v7);
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v37[3] = sub_264785754();
    v37[4] = v17;
    sub_264613FC4();
    v18 = sub_264784E44();
    v20 = v19;
    v22 = v21;
    sub_264784D74();
    v23 = sub_264784E24();
    v25 = v24;
    v27 = v26;

    sub_26460ECC4(v18, v20, v22 & 1);

    sub_264785214();
    v28 = sub_264784DE4();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    sub_26460ECC4(v23, v25, v27 & 1);

    v36 = v32 & 1;
  }

  else
  {
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v38 = v44;
    v39 = v45;
    result = sub_26460CD50(&v38, &qword_27FF756F8, &qword_264787DF0);
    v28 = 0;
    v30 = 0;
    v36 = 0;
    v34 = 0;
  }

  *a2 = v28;
  a2[1] = v30;
  a2[2] = v36;
  a2[3] = v34;
  return result;
}

uint64_t sub_2647026BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[58] = a3;
  v4[59] = a4;
  v4[56] = a1;
  v4[57] = a2;
  v5 = sub_264785594();
  v4[60] = v5;
  v4[61] = *(v5 - 8);
  v4[62] = swift_task_alloc();
  v6 = sub_2647855C4();
  v4[63] = v6;
  v4[64] = *(v6 - 8);
  v4[65] = swift_task_alloc();
  sub_2647858B4();
  v4[66] = sub_2647858A4();
  v8 = sub_264785874();

  return MEMORY[0x2822009F8](sub_264702810, v8, v7);
}

uint64_t sub_264702810()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((v0 + 112));

  v1 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v1;
  v2 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v2;
  v3 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v3;
  v4 = *(v0 + 32);
  if (v4)
  {
    v20 = *(v0 + 520);
    v24 = *(v0 + 512);
    v25 = *(v0 + 504);
    v22 = *(v0 + 496);
    v23 = *(v0 + 488);
    v5 = *(v0 + 472);
    v6 = *(v0 + 480);
    v8 = *(v0 + 456);
    v7 = *(v0 + 464);
    v9 = *(v0 + 448);
    *(v0 + 424) = *(v0 + 112);
    v10 = *(v0 + 152);
    v11 = *(v0 + 184);
    *(v0 + 336) = *(v0 + 168);
    *(v0 + 352) = v11;
    *(v0 + 368) = *(v0 + 200);
    *(v0 + 304) = *(v0 + 136);
    *(v0 + 320) = v10;
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v21 = sub_264785A44();
    v12 = swift_allocObject();
    *(v12 + 48) = *(v0 + 424);
    v13 = *(v0 + 304);
    *(v12 + 88) = *(v0 + 320);
    v14 = *(v0 + 352);
    *(v12 + 104) = *(v0 + 336);
    *(v12 + 120) = v14;
    *(v12 + 16) = v9;
    *(v12 + 24) = v8;
    *(v12 + 32) = v7;
    *(v12 + 40) = v5;
    *(v12 + 64) = v4;
    *(v12 + 136) = *(v0 + 368);
    *(v12 + 72) = v13;
    *(v0 + 408) = sub_2647050B4;
    *(v0 + 416) = v12;
    *(v0 + 376) = MEMORY[0x277D85DD0];
    *(v0 + 384) = 1107296256;
    *(v0 + 392) = sub_264659F60;
    *(v0 + 400) = &block_descriptor_118_0;
    v15 = _Block_copy((v0 + 376));
    v16 = v8;
    v17 = v5;
    sub_26460CCE8(v0 + 16, v0 + 208, &qword_27FF756F8, &qword_264787DF0);
    sub_2647855B4();
    *(v0 + 440) = MEMORY[0x277D84F90];
    sub_264703CEC(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
    sub_264785BD4();
    MEMORY[0x26673F780](0, v20, v22, v15);
    _Block_release(v15);

    sub_26460CD50(v0 + 16, &qword_27FF756F8, &qword_264787DF0);
    (*(v23 + 8))(v22, v6);
    (*(v24 + 8))(v20, v25);
  }

  v18 = *(v0 + 8);

  return v18();
}

double sub_264702B84@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78268, &qword_26478FAC0);
  sub_264704D78();
  sub_264785464();
  sub_2647851A4();
  v2 = sub_2647853C4();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782A8, &qword_26478FAE0) + 36)) = v2;
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782B0, &qword_26478FAE8) + 36);
  *(v3 + 32) = 0;
  result = 0.0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  return result;
}

void SMWorkoutEvent.id.getter()
{
  v1 = [v0 identifier];
  sub_264783B44();
}

void sub_264702CC8()
{
  v1 = [*v0 identifier];
  sub_264783B44();
}

uint64_t sub_264702D28@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_264702DA8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v2;
  sub_264783EE4();
  return sub_2646BB6FC();
}

uint64_t sub_264702E2C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a2);
}

uint64_t sub_264702EA8(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_264706858(a1, &v13 - v8, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264706858(v9, v7, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v11 = v10;
  sub_264783EE4();
  return sub_26470510C(v9, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
}

double sub_264702FD0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v7);

  v3 = v7[3];
  a2[2] = v7[2];
  a2[3] = v3;
  v4 = v7[5];
  a2[4] = v7[4];
  a2[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t sub_264703064(_OWORD *a1, void **a2)
{
  v3 = a1[3];
  v12[2] = a1[2];
  v12[3] = v3;
  v4 = a1[5];
  v12[4] = a1[4];
  v12[5] = v4;
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[3];
  v11[8] = a1[2];
  v11[9] = v7;
  v8 = a1[5];
  v11[10] = a1[4];
  v11[11] = v8;
  v9 = a1[1];
  v11[6] = *a1;
  v11[7] = v9;
  sub_26460CCE8(v12, v11, &qword_27FF756F8, &qword_264787DF0);
  v6;
  sub_264783EE4();
  return sub_2646F6B34();
}

uint64_t sub_264703134(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return sub_264783EE4();
}

void *sub_2647031F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2647033D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78468, qword_26478FE80);
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

char *sub_2647034DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77020, &qword_26478FE70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2647035F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78460, &qword_26478FE78);
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

char *sub_2647036FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78370, &qword_26478FCC8);
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

uint64_t sub_264703800()
{
  sub_264655264(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264703864()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2647038AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264611390;

  return sub_2646F91D0(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for SafetyCacheDetailViewModel(uint64_t a1)
{
  result = qword_27FF78218;
  if (!qword_27FF78218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2647039C0()
{
  result = qword_27FF78100;
  if (!qword_27FF78100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF780C8, &qword_26478F520);
    sub_264703A4C();
    sub_264703D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78100);
  }

  return result;
}

unint64_t sub_264703A4C()
{
  result = qword_27FF78108;
  if (!qword_27FF78108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF780C0, &qword_26478F518);
    sub_264703DEC(&qword_27FF78110, &qword_27FF780D0, &qword_26478F528, sub_264703B30);
    sub_264703DEC(&qword_27FF78148, &qword_27FF780A0, &qword_26478F4F8, sub_264703C24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78108);
  }

  return result;
}

unint64_t sub_264703B60()
{
  result = qword_27FF78128;
  if (!qword_27FF78128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78130, &qword_26478F5B0);
    sub_26460CDF0(&qword_27FF78138, &qword_27FF78140, &qword_26478F5B8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78128);
  }

  return result;
}

unint64_t sub_264703C24()
{
  result = qword_27FF78150;
  if (!qword_27FF78150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78158, &qword_26478F5C0);
    sub_264703CEC(&qword_27FF78160, type metadata accessor for TimerInfoView, &unk_264790808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78150);
  }

  return result;
}

uint64_t sub_264703CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_264703D34()
{
  result = qword_27FF78168;
  if (!qword_27FF78168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78090, &qword_26478F4E0);
    sub_264703DEC(&qword_27FF78170, &qword_27FF78098, &unk_26478F4E8, sub_264703E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78168);
  }

  return result;
}

uint64_t sub_264703DEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_264703E68()
{
  result = qword_27FF78178;
  if (!qword_27FF78178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78180, &qword_26478F5C8);
    sub_264703F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78178);
  }

  return result;
}

unint64_t sub_264703F00()
{
  result = qword_27FF78188;
  if (!qword_27FF78188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78190, &qword_26478F5D0);
    sub_264703F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78188);
  }

  return result;
}

unint64_t sub_264703F84()
{
  result = qword_27FF78198;
  if (!qword_27FF78198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF781A0, &qword_26478F5D8);
    sub_26470403C();
    sub_26460CDF0(&qword_27FF781B0, &qword_27FF781B8, &qword_26478F5E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78198);
  }

  return result;
}

unint64_t sub_26470403C()
{
  result = qword_27FF781A8;
  if (!qword_27FF781A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF781A8);
  }

  return result;
}

unint64_t sub_2647040E8()
{
  result = qword_27FF781E8;
  if (!qword_27FF781E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF781E8);
  }

  return result;
}

__n128 sub_2647041A0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_2647041F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

void sub_264704250(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_2647042A8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_2647042FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  return sub_26460CCE8(v3 + v4, a2, &qword_27FF75710, &qword_264787E40);
}

id sub_26470436C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_2647043D8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_264704430(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_26470448C(uint64_t a1)
{
  sub_264656F0C(319, &unk_27FF779A0, &qword_27FF756F8, &qword_264787DF0);
  if (v1 <= 0x3F)
  {
    sub_264656F0C(319, &qword_27FF78228, &qword_27FF756E0, &qword_264787DE0);
    if (v2 <= 0x3F)
    {
      sub_264656F0C(319, &qword_27FF78230, &qword_27FF756D8, &qword_26478F7B0);
      if (v3 <= 0x3F)
      {
        sub_264656F0C(319, &qword_27FF76660, &qword_27FF756B8, &qword_26478AC90);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_264704B00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_264704B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_264704BFC@<X0>(uint64_t a1@<X8>)
{
  result = sub_264784524();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_264704C30@<X0>(uint64_t a1@<X8>)
{
  result = sub_264784524();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_264704CC4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26460C474(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_264704D14(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_26460ECC4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_264704D78()
{
  result = qword_27FF78270;
  if (!qword_27FF78270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78268, &qword_26478FAC0);
    sub_264704E30();
    sub_26460CDF0(&qword_27FF78298, &qword_27FF782A0, &qword_264792120, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78270);
  }

  return result;
}

unint64_t sub_264704E30()
{
  result = qword_27FF78278;
  if (!qword_27FF78278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78280, &qword_26478FAC8);
    sub_264703CEC(&qword_27FF77F70, type metadata accessor for SafetyCacheMapView, &unk_26478F20C);
    sub_26460CDF0(&qword_27FF78288, &qword_27FF78290, &unk_26478FAD0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78278);
  }

  return result;
}

uint64_t sub_264704F20()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264704F60()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264611390;

  return sub_2647026BC(v2, v3, v5, v4);
}

uint64_t sub_26470500C()
{

  v1 = *(v0 + 128);
  if (v1 >> 60 != 15)
  {
    sub_264655264(*(v0 + 120), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2647050B4()
{
  v1 = v0[6];
  v6[2] = v0[5];
  v6[3] = v1;
  v2 = v0[8];
  v6[4] = v0[7];
  v6[5] = v2;
  v3 = v0[4];
  v6[0] = v0[3];
  v6[1] = v3;
  sub_26467A834((v0 + 3), &v5);
  return sub_2646BBAB4(v6);
}

uint64_t sub_26470510C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264705174()
{
  result = qword_27FF78300;
  if (!qword_27FF78300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782C8, &qword_26478FB60);
    sub_26470522C();
    sub_26460CDF0(&qword_27FF78328, &qword_27FF782F8, &qword_26478FB90, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78300);
  }

  return result;
}

unint64_t sub_26470522C()
{
  result = qword_27FF78308;
  if (!qword_27FF78308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782C0, &qword_26478FB58);
    sub_2647052B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78308);
  }

  return result;
}

unint64_t sub_2647052B8()
{
  result = qword_27FF78310;
  if (!qword_27FF78310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782B8, &qword_26478FB50);
    sub_26460CDF0(&qword_27FF78318, &qword_27FF78320, &unk_26478FB98, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78310);
  }

  return result;
}

unint64_t sub_264705370()
{
  result = qword_27FF78330;
  if (!qword_27FF78330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782D0, &qword_26478FB68);
    sub_264705174();
    sub_264703CEC(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78330);
  }

  return result;
}

uint64_t sub_26470542C@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, char *)@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767C0, &qword_26478AC80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78360, &qword_26478FC20);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(v15, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v15[1];
    *a3 = v15[0];
    a3[1] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264705580(void *a1, uint64_t a2, uint64_t a3, char *a4, double a5, double a6)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v26 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  type metadata accessor for CLLocationCoordinate2D(0);
  v35[3] = v17;
  v35[4] = &protocol witness table for CLLocationCoordinate2D;
  *v35 = a5;
  *&v35[1] = a6;
  v18 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__placemark;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
  sub_264783E94();
  (*(v14 + 32))(&a4[v18], v16, v13);
  v19 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__subtitle;
  v33 = 0;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  (*(v10 + 32))(&a4[v19], v12, v9);
  swift_beginAccess();
  v20 = *(v14 + 8);
  v21 = v27;
  v22 = v27;
  v20(&a4[v18], v13);
  v31 = v21;
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  (*(v10 + 8))(&a4[v19], v26);
  v31 = v28;
  v32 = v29;
  sub_264783E94();
  swift_endAccess();
  sub_264689A40(v35, &a4[OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider]);
  v23 = type metadata accessor for SafetyCacheRouteInfoCellViewModel(0);
  v30.receiver = a4;
  v30.super_class = v23;
  v24 = objc_msgSendSuper2(&v30, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v24;
}

id sub_264705884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v23 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v32[3] = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  v32[4] = &protocol witness table for SMLocation;
  v32[0] = a4;
  v15 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__placemark;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
  sub_264783E94();
  (*(v12 + 32))(&a5[v15], v14, v11);
  v16 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__subtitle;
  v30 = 0;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  (*(v8 + 32))(&a5[v16], v10, v7);
  swift_beginAccess();
  v17 = *(v12 + 8);
  v18 = v24;
  v19 = v24;
  v17(&a5[v15], v11);
  v28 = v18;
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  (*(v8 + 8))(&a5[v16], v23);
  v28 = v25;
  v29 = v26;
  sub_264783E94();
  swift_endAccess();
  sub_264689A40(v32, &a5[OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider]);
  v20 = type metadata accessor for SafetyCacheRouteInfoCellViewModel(0);
  v27.receiver = a5;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v21;
}

uint64_t sub_264705B8C(uint64_t a1)
{
  v2 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v4 = *(v27[0] - 8);
  MEMORY[0x28223BE20](v27[0]);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v7 - 8);
  v27[1] = a1;
  v28 = v27 - v8;
  v9 = a1 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel;
  swift_beginAccess();
  v10 = *(v9 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  sub_264783ED4(v31);

  v12 = v31[0];
  v13 = *(v31[0] + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v31[0] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = 0x636F4C7472617473;
    v17 = 0x6563655274736F6DLL;
    while (v14 < v12[2])
    {
      sub_264706858(v15 + *(v4 + 72) * v14, v6, type metadata accessor for SafetyCacheMapView.Annotation);
      v18 = v6[24];
      if (v18 > 2 && v18 != 4 && v18 != 5)
      {

LABEL_11:

        v15 = v28;
        sub_264706140(v6, v28, type metadata accessor for SafetyCacheMapView.Annotation);
        v20 = 0;
        v16 = v29;
        goto LABEL_12;
      }

      v19 = sub_264785E84();

      if (v19)
      {
        goto LABEL_11;
      }

      ++v14;
      sub_26470510C(v6, type metadata accessor for SafetyCacheMapView.Annotation);
      if (v13 == v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_9:

  v20 = 1;
  v15 = v28;
  v16 = v29;
LABEL_12:
  (*(v4 + 56))(v15, v20, 1, v27[0]);
  sub_26460CCE8(v15, v16, &qword_27FF766A8, &unk_26478AA80);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v21 - 8) + 56))(v16, 0, 3, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = sub_264783EC4();
  v12 = v22;
  v17 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_17:
    v17 = sub_2647031F4(0, *(v17 + 16) + 1, 1, v17, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *v12 = v17;
  }

  v25 = *(v17 + 16);
  v24 = *(v17 + 24);
  if (v25 >= v24 >> 1)
  {
    v17 = sub_2647031F4((v24 > 1), v25 + 1, 1, v17, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *v12 = v17;
  }

  *(v17 + 16) = v25 + 1;
  sub_264706140(v16, v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v13(v31, 0);

  return sub_26460CD50(v15, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_264706140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2647061B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2647062A8()
{
  result = qword_27FF78398;
  if (!qword_27FF78398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78390, &qword_26478FCF8);
    sub_264706360();
    sub_26460CDF0(&qword_27FF76FB0, &qword_27FF76FB8, &qword_26478FD10, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78398);
  }

  return result;
}

unint64_t sub_264706360()
{
  result = qword_27FF783A0;
  if (!qword_27FF783A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF783A8, &unk_26478FD00);
    sub_264706418();
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF783A0);
  }

  return result;
}

unint64_t sub_264706418()
{
  result = qword_27FF783B0;
  if (!qword_27FF783B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF783B0);
  }

  return result;
}

void sub_264706470(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = *a1;
  }

  if (*(a1 + 16))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *(a1 + 8);
  }

  v4 = (*(v1 + 24) + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t objectdestroy_150Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_26470653C()
{
  result = qword_27FF783D8;
  if (!qword_27FF783D8)
  {
    sub_264659B70(255, &qword_27FF77A10, 0x277D4AC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF783D8);
  }

  return result;
}

uint64_t sub_2647065A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2647065EC()
{
  result = qword_27FF78440;
  if (!qword_27FF78440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78440);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2647066C4()
{
  result = qword_27FF78448;
  if (!qword_27FF78448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78418, &qword_26478FDF8);
    sub_2647065EC();
    swift_getOpaqueTypeConformance2();
    sub_264703CEC(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78448);
  }

  return result;
}

uint64_t sub_2647067AC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2647067E4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_264706858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2647068C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26470691C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264706964()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {

    v1 = *(v0 + 120);
    if (v1 >> 60 != 15)
    {
      sub_264655264(*(v0 + 112), v1);
    }
  }

  if (*(v0 + 152))
  {

    v2 = *(v0 + 216);
    if (v2 >> 60 != 15)
    {
      sub_264655264(*(v0 + 208), v2);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 249, 7);
}

unint64_t sub_264706ACC()
{
  result = qword_27FF78480;
  if (!qword_27FF78480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782B0, &qword_26478FAE8);
    sub_264706B84();
    sub_26460CDF0(&qword_27FF76038, &qword_27FF76040, &unk_264789B80, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78480);
  }

  return result;
}

unint64_t sub_264706B84()
{
  result = qword_27FF78488;
  if (!qword_27FF78488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782A8, &qword_26478FAE0);
    sub_264706C3C();
    sub_26460CDF0(&qword_27FF75AF0, &qword_27FF75AF8, &qword_264788928, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78488);
  }

  return result;
}

unint64_t sub_264706C3C()
{
  result = qword_27FF78490;
  if (!qword_27FF78490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78498, &unk_26478FEA0);
    sub_264704D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78490);
  }

  return result;
}

uint64_t SessionInitializationInfo.init(initiatorEligibility:receiverEligibility:initiatorInvitationTokenMap:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_264706D24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_264706D80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t static ImageProvider.image(named:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_264785714();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 withConfiguration:0];

  if (!v5)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return sub_264785254();
}

id static ImageProvider.uiImage(named:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_264785714();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 withConfiguration:0];

  if (v5)
  {
    return v5;
  }

  v7 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v7 init];
}

id CheckInOnboardingViewController.__allocating_init(isInSettings:sessionType:onboardingCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = objc_allocWithZone(v4);
  return CheckInOnboardingViewController.init(isInSettings:sessionType:onboardingCompletionHandler:)(v8, a2, a3, a4);
}

id CheckInOnboardingViewController.init(isInSettings:sessionType:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_264783B94();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264785704();
  MEMORY[0x28223BE20](v13 - 8);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_264783E24();
  v45 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_handlerManager] = 0;
  v5[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_isInSettings] = a1;
  v47 = OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_sessionType;
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_sessionType] = a2;
  v18 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_onboardingCompletionHandler];
  *v18 = a3;
  v18[1] = a4;
  v19 = v5;
  sub_264611394(a3, a4);
  sub_264783DF4();
  v20 = v19;
  v21 = sub_264783E14();
  v22 = sub_2647859F4();
  v23 = os_log_type_enabled(v21, v22);
  v49 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v43 = v15;
    v25 = v24;
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v25 = 136315650;
    v52 = ObjectType;
    swift_getMetatypeMetadata();
    v26 = sub_264785764();
    v28 = sub_2646DF234(v26, v27, v50);
    v44 = v12;
    v29 = a3;
    v30 = a4;
    v31 = v28;
    v32 = v49;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2646DF234(0xD00000000000003BLL, 0x80000002647994D0, v50);
    *(v25 + 22) = 2048;
    v33 = *&v5[v47];

    *(v25 + 24) = v33;
    a4 = v30;
    a3 = v29;

    _os_log_impl(&dword_264605000, v21, v22, "%s, %s: onboarding for session type %lu", v25, 0x20u);
    v34 = v42;
    swift_arrayDestroy();
    MEMORY[0x266740650](v34, -1, -1);
    MEMORY[0x266740650](v25, -1, -1);

    (*(v45 + 8))(v17, v43);
  }

  else
  {

    (*(v45 + 8))(v17, v15);
  }

  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = objc_opt_self();
  v37 = [v36 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264785694();
  [v36 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v38 = sub_264785714();

  v39 = sub_264785714();

  v51.receiver = v49;
  v51.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v51, sel_initWithTitle_detailText_symbolName_contentLayout_, v38, v39, 0, 1);
  sub_26460C9A0(a3, a4);

  return v40;
}

Swift::Void __swiftcall CheckInOnboardingViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_264783B94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, sel_viewDidLoad);
  v7 = objc_opt_self();
  v8 = sub_264785714();
  v9 = [v7 linkWithBundleIdentifier_];

  if (v9)
  {
    v10 = v9;
    sub_264783B84();
    sub_264783B74();
    (*(v4 + 8))(v6, v3);
    v11 = sub_264785714();

    [v10 setDisplayLanguage_];

    v12 = v10;
    v13 = [v1 view];
    if (!v13)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = [v13 tintColor];

    [v12 setCustomTintColor_];
  }

  v16 = [v1 buttonTray];
  v56 = v9;
  [v16 setPrivacyLinkController_];

  v17 = [v1 navigationItem];
  v57 = 0u;
  v58 = 0u;
  v18 = sub_264785714();
  v19 = *(&v58 + 1);
  if (*(&v58 + 1))
  {
    v20 = __swift_project_boxed_opaque_existential_0(&v57, *(&v58 + 1));
    v21 = *(v19 - 8);
    MEMORY[0x28223BE20](v20);
    v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v23);
    v24 = sub_264785E74();
    (*(v21 + 8))(v23, v19);
    __swift_destroy_boxed_opaque_existential_0(&v57);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v18 style:0 target:v24 action:0];

  swift_unknownObjectRelease();
  [v17 setBackBarButtonItem_];

  type metadata accessor for ImageProvider();
  sub_264707ED4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  v28 = sub_264785714();
  v29 = [objc_opt_self() imageNamed:v28 inBundle:v27 withConfiguration:0];

  if (!v29)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v30 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v31 = v30;
  [v31 setContentMode_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = [v1 view];
  if (!v32)
  {
    __break(1u);
    goto LABEL_16;
  }

  v33 = v32;
  [v32 addSubview_];

  v34 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26478E760;
  v36 = [v31 leftAnchor];
  v37 = [v1 contentView];
  v38 = [v37 leftAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v35 + 32) = v39;
  v40 = [v31 rightAnchor];
  v41 = [v1 contentView];
  v42 = [v41 rightAnchor];

  v43 = [v40 constraintEqualToAnchor_];
  *(v35 + 40) = v43;
  v44 = [v31 bottomAnchor];

  v45 = [v1 contentView];
  v46 = [v45 bottomAnchor];

  v47 = [v44 constraintEqualToAnchor_];
  *(v35 + 48) = v47;
  sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
  v48 = sub_2647857E4();

  [v34 activateConstraints_];

  v49 = [objc_opt_self() boldButton];
  if (qword_27FF75038 != -1)
  {
    swift_once();
  }

  v50 = sub_264785714();
  [v49 setTitle:v50 forState:0];

  [v49 addTarget:v1 action:sel_continueButtonAction forControlEvents:64];
  v51 = [objc_opt_self() linkButton];
  if (qword_27FF75048 != -1)
  {
    swift_once();
  }

  v52 = sub_264785714();
  [v51 setTitle:v52 forState:0];

  [v51 addTarget:v1 action:sel_notNowButtonAction forControlEvents:64];
  v53 = [v1 buttonTray];
  [v53 addButton_];

  v54 = [v1 buttonTray];
  [v54 addButton_];
}

uint64_t sub_264707ED4()
{
  v1 = [v0 traitCollection];
  [v1 userInterfaceStyle];

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  if (v3 == 1)
  {
    MEMORY[0x26673F4D0](0x4C5452202D20, 0xE600000000000000);
  }

  return 0x6E49206B63656843;
}

void sub_264708018()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_isInSettings];
  v3 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_sessionType];
  v4 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_onboardingCompletionHandler];
  v5 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_onboardingCompletionHandler + 8];
  objc_allocWithZone(type metadata accessor for CheckInOnboardingViewController2());
  sub_264611394(v4, v5);
  v8 = CheckInOnboardingViewController2.init(isInSettings:sessionType:onboardingCompletionHandler:)(v2, v3, v4, v5);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v8 animated:1];
  }
}

id CheckInOnboardingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264708510@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_264708590(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t UserSessionConfiguration.__allocating_init(sessionType:endLocation:destinationType:didDestinationChange:duration:workoutSessionID:workoutActivityType:workoutSessionType:)(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v114 = a6;
  v115 = a7;
  v112 = a2;
  v113 = a5;
  v111 = a4;
  v109 = a1;
  v110 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x28223BE20](v9);
  v106 = &v81 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v105 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v104 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v13 = *(v12 - 8);
  v120 = v12;
  v121 = v13;
  MEMORY[0x28223BE20](v12);
  v118 = &v81 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v102 = *(v103 - 1);
  MEMORY[0x28223BE20](v103);
  v101 = &v81 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v81 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v81 - v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v81 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v81 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v81 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v21 = MEMORY[0x28223BE20](v85);
  v117 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v116 = &v81 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v81 - v24;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v25 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v27 = &v81 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v81 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = [objc_opt_self() defaultManager];
  v33 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v34 = sub_264783B64();
  v35 = *(*(v34 - 8) + 56);
  v35(v32 + v33, 1, 1, v34);
  v36 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v122 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v29 + 32))(v32 + v36, v31, v28);
  v37 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v122) = 0;
  sub_264783E94();
  (*(v25 + 32))(v32 + v37, v27, v81);
  v38 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v122 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v39 = v82;
  sub_264783E94();
  (*(v83 + 32))(v32 + v38, v39, v84);
  v40 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v41 = v116;
  v35(v116, 1, 1, v34);
  sub_264720BE8(v41, v117);
  v42 = v86;
  sub_264783E94();
  sub_26460CD50(v41, &qword_27FF75CE8, &unk_264788B70);
  (*(v87 + 32))(v32 + v40, v42, v88);
  v43 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v122 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v44 = v89;
  sub_264783E94();
  (*(v90 + 32))(v32 + v43, v44, v91);
  v45 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v122 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v46 = v92;
  sub_264783E94();
  (*(v93 + 32))(v32 + v45, v46, v94);
  v47 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v122) = 0;
  v48 = v95;
  sub_264783E94();
  (*(v96 + 32))(v32 + v47, v48, v97);
  v49 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v122 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v50 = v98;
  sub_264783E94();
  (*(v99 + 32))(v32 + v49, v50, v100);
  v51 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v122) = 0;
  v52 = v101;
  sub_264783E94();
  (*(v102 + 32))(v32 + v51, v52, v103);
  v53 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v122 = 0x40AC200000000000;
  v54 = v118;
  sub_264783E94();
  v55 = *(v121 + 32);
  v121 += 32;
  v103 = v55;
  v55(v32 + v53, v54, v120);
  v56 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v122 = 0;
  v123 = 1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v58 = v104;
  sub_264783E94();
  v59 = *(v105 + 32);
  v60 = v119;
  v59(v32 + v56, v58, v119);
  v61 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v122 = 0;
  v123 = 1;
  v102 = v57;
  sub_264783E94();
  v59(v32 + v61, v58, v60);
  v62 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v59(v32 + v62, v58, v60);
  v63 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v122 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v64 = v106;
  sub_264783E94();
  v65 = v108;
  v66 = *(v107 + 32);
  v66(v32 + v63, v64, v108);
  v67 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v122 = 0;
  sub_264783E94();
  v66(v32 + v67, v64, v65);
  v68 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v122 = 0;
  sub_264783E94();
  v66(v32 + v68, v64, v65);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v122 = 0;
  sub_264783E94();
  v66(v32 + v69, v64, v65);
  v70 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v71 = v119;
  v59(v32 + v70, v58, v119);
  v72 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v59(v32 + v72, v58, v71);
  v73 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v59(v32 + v73, v58, v71);
  v74 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v59(v32 + v74, v58, v71);
  v75 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v122 = 0x40AC200000000000;
  v76 = v118;
  sub_264783E94();
  v103(v32 + v75, v76, v120);
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v109;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v110;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v122) = v111;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = *&a8;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v112;
  v77 = v112;

  sub_264783EE4();
  v78 = v113;
  v79 = v116;
  sub_264720BE8(v113, v116);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v79, v117);

  sub_264783EE4();
  sub_26460CD50(v79, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v114;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v115;

  sub_264783EE4();
  sub_26460CD50(v78, &qword_27FF75CE8, &unk_264788B70);

  return v32;
}

uint64_t UserSessionConfiguration.init(sessionType:endLocation:destinationType:didDestinationChange:duration:workoutSessionID:workoutActivityType:workoutSessionType:)(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v114 = a6;
  v115 = a7;
  v112 = a2;
  v113 = a5;
  v111 = a4;
  v109 = a1;
  v110 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x28223BE20](v10);
  v106 = &v81 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v105 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v104 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v14 = *(v13 - 8);
  v120 = v13;
  v121 = v14;
  MEMORY[0x28223BE20](v13);
  v118 = &v81 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v102 = *(v103 - 1);
  MEMORY[0x28223BE20](v103);
  v101 = &v81 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v81 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v81 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v81 - v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v81 - v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v81 - v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v22 = MEMORY[0x28223BE20](v85);
  v117 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v116 = &v81 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v81 - v25;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v26 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v28 = &v81 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v81 - v31;
  *(v8 + 16) = [objc_opt_self() defaultManager];
  v33 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v34 = sub_264783B64();
  v35 = *(*(v34 - 8) + 56);
  v35(v8 + v33, 1, 1, v34);
  v36 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v122 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v30 + 32))(v8 + v36, v32, v29);
  v37 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v122) = 0;
  sub_264783E94();
  (*(v26 + 32))(v8 + v37, v28, v81);
  v38 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v122 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v39 = v82;
  sub_264783E94();
  (*(v83 + 32))(v8 + v38, v39, v84);
  v40 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v41 = v116;
  v35(v116, 1, 1, v34);
  sub_264720BE8(v41, v117);
  v42 = v86;
  sub_264783E94();
  sub_26460CD50(v41, &qword_27FF75CE8, &unk_264788B70);
  (*(v87 + 32))(v8 + v40, v42, v88);
  v43 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v122 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v44 = v89;
  sub_264783E94();
  (*(v90 + 32))(v8 + v43, v44, v91);
  v45 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v122 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v46 = v92;
  sub_264783E94();
  (*(v93 + 32))(v8 + v45, v46, v94);
  v47 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v122) = 0;
  v48 = v95;
  sub_264783E94();
  (*(v96 + 32))(v8 + v47, v48, v97);
  v49 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v122 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v50 = v98;
  sub_264783E94();
  (*(v99 + 32))(v8 + v49, v50, v100);
  v51 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v122) = 0;
  v52 = v101;
  sub_264783E94();
  (*(v102 + 32))(v8 + v51, v52, v103);
  v53 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v122 = 0x40AC200000000000;
  v54 = v118;
  sub_264783E94();
  v55 = *(v121 + 32);
  v121 += 32;
  v103 = v55;
  v55(v8 + v53, v54, v120);
  v56 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v122 = 0;
  v123 = 1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v58 = v104;
  sub_264783E94();
  v59 = *(v105 + 32);
  v60 = v119;
  v59(v8 + v56, v58, v119);
  v61 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v122 = 0;
  v123 = 1;
  v102 = v57;
  sub_264783E94();
  v59(v8 + v61, v58, v60);
  v62 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v59(v8 + v62, v58, v60);
  v63 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v122 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v64 = v106;
  sub_264783E94();
  v65 = v108;
  v66 = *(v107 + 32);
  v66(v8 + v63, v64, v108);
  v67 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v122 = 0;
  sub_264783E94();
  v66(v8 + v67, v64, v65);
  v68 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v122 = 0;
  sub_264783E94();
  v66(v8 + v68, v64, v65);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v122 = 0;
  sub_264783E94();
  v66(v8 + v69, v64, v65);
  v70 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v71 = v119;
  v59(v8 + v70, v58, v119);
  v72 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v59(v8 + v72, v58, v71);
  v73 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v59(v8 + v73, v58, v71);
  v74 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v122 = 0;
  v123 = 1;
  sub_264783E94();
  v59(v8 + v74, v58, v71);
  v75 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v122 = 0x40AC200000000000;
  v76 = v118;
  sub_264783E94();
  v103(v8 + v75, v76, v120);
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v109;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v110;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v122) = v111;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = *&a8;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v112;
  v77 = v112;

  sub_264783EE4();
  v78 = v113;
  v79 = v116;
  sub_264720BE8(v113, v116);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v79, v117);

  sub_264783EE4();
  sub_26460CD50(v79, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v114;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v115;

  sub_264783EE4();
  sub_26460CD50(v78, &qword_27FF75CE8, &unk_264788B70);

  return v8;
}

uint64_t sub_26470A804(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_26470A89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(a1, v4);

  sub_264783EE4();
  return sub_26460CD50(a1, &qword_27FF75CE8, &unk_264788B70);
}

uint64_t sub_26470A9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a7;
  v12 = sub_264783E24();
  v7[10] = v12;
  v7[11] = *(v12 - 8);
  v7[12] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[13] = v13;
  *v13 = v7;
  v13[1] = sub_26470AAC8;

  return sub_26470B378((v7 + 2), a4, a5, a6, a7);
}

uint64_t sub_26470AAC8()
{

  return MEMORY[0x2822009F8](sub_26470ABC4, 0, 0);
}

uint64_t sub_26470ABC4()
{
  v26 = v0;
  v1 = *(v0 + 16);
  *(v0 + 112) = v1;
  *(v0 + 26) = *(v0 + 24);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_264783ED4((v0 + 48));

    *(v0 + 120) = *(v0 + 48);
    sub_2647858B4();
    *(v0 + 128) = sub_2647858A4();
    v4 = sub_264785874();

    return MEMORY[0x2822009F8](sub_26470AF54, v4, v3);
  }

  else
  {
    sub_26471A560();
    sub_264783DF4();

    v5 = sub_264783E14();
    v6 = sub_2647859F4();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    if (v7)
    {
      v12 = *(v0 + 72);
      v24 = *(v0 + 80);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v8;
      v15 = swift_slowAlloc();
      v25 = v15;
      *v13 = 136315651;
      *(v0 + 32) = v12;
      type metadata accessor for UserSessionConfiguration(0);

      v16 = sub_264785764();
      v22 = v9;
      v18 = sub_2646DF234(v16, v17, &v25);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x80000002647997E0, &v25);
      *(v13 + 22) = 2117;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4((v0 + 40));

      v19 = *(v0 + 40);
      *(v13 + 24) = v19;
      *v14 = v19;
      _os_log_impl(&dword_264605000, v5, v6, "%s, %s: endLocation, %{sensitive}@", v13, 0x20u);
      sub_26460CD50(v14, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v14, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v15, -1, -1);
      MEMORY[0x266740650](v13, -1, -1);

      (*(v10 + 8))(v22, v24);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_26470AF54()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 26);
  v3 = *(v0 + 112);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = v3;
  v4 = v3;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v1;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 25) = v2;

  sub_264783EE4();
  sub_26470BC6C();

  return MEMORY[0x2822009F8](sub_26470B0BC, 0, 0);
}

uint64_t sub_26470B0BC()
{
  v22 = v0;

  sub_264783DF4();

  v1 = sub_264783E14();
  v2 = sub_2647859F4();

  if (os_log_type_enabled(v1, v2))
  {
    v17 = *(v0 + 112);
    v18 = *(v0 + 88);
    v3 = *(v0 + 72);
    v19 = *(v0 + 80);
    v20 = *(v0 + 96);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *(v0 + 32) = v3;
    v21 = v6;
    *v4 = 136315651;
    type metadata accessor for UserSessionConfiguration(0);

    v7 = sub_264785764();
    v9 = sub_2646DF234(v7, v8, &v21);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x80000002647997E0, &v21);
    *(v4 + 22) = 2117;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4((v0 + 40));

    v10 = *(v0 + 40);
    *(v4 + 24) = v10;
    *v5 = v10;
    _os_log_impl(&dword_264605000, v1, v2, "%s, %s: endLocation, %{sensitive}@", v4, 0x20u);
    sub_26460CD50(v5, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v5, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v6, -1, -1);
    MEMORY[0x266740650](v4, -1, -1);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v11 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26470B378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_264783E24();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26470B44C, 0, 0);
}

uint64_t sub_26470B44C(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  if (v2 >> 60 == 15)
  {
    if (v3)
    {
      v4 = v3;
      sub_264783DF4();
      v5 = v4;
      v6 = sub_264783E14();
      v7 = sub_2647859D4();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v1[5];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138739971;
        *(v9 + 4) = v5;
        *v10 = v8;
        v11 = v5;
        _os_log_impl(&dword_264605000, v6, v7, "#Initiator, UserSessionConfiguration, populateEndLocation - no map item, fallback to rev geo with coordinate %{sensitive}@", v9, 0xCu);
        sub_26460CD50(v10, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v10, -1, -1);
        MEMORY[0x266740650](v9, -1, -1);
      }

      v13 = v1[8];
      v12 = v1[9];
      v14 = v1[7];

      (*(v13 + 8))(v12, v14);
      v15 = swift_task_alloc();
      v1[18] = v15;
      *v15 = v1;
      v15[1] = sub_26470BB00;
      v16 = v1[2];

      return sub_26471932C(v16, v5);
    }

    goto LABEL_12;
  }

  if (!v3)
  {
LABEL_12:
    sub_264783DF4();
    v22 = sub_264783E14();
    v23 = sub_2647859E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_264605000, v22, v23, "#Initiator, UserSessionConfiguration, populateEndLocation - Unable to populateEndLocation, no map item, no coordintes", v24, 2u);
      MEMORY[0x266740650](v24, -1, -1);
    }

    v25 = v1[10];
    v26 = v1[7];
    v27 = v1[8];
    v28 = v1[2];

    (*(v27 + 8))(v25, v26);
    *v28 = 0;
    *(v28 + 8) = 0;

    v29 = v1[1];

    return v29();
  }

  v18 = v1[3];
  v1[11] = sub_2647858B4();
  sub_2646C6804(v18, v2);
  v19 = v3;
  v1[12] = sub_2647858A4();
  v21 = sub_264785874();
  v1[13] = v21;
  v1[14] = v20;

  return MEMORY[0x2822009F8](sub_26470B784, v21, v20);
}

uint64_t sub_26470B784(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v11 = *(v1 + 24);
  v4 = sub_2647858A4();
  *(v1 + 120) = v4;
  v5 = swift_task_alloc();
  *(v1 + 128) = v5;
  *(v5 + 16) = v11;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  v6 = swift_task_alloc();
  *(v1 + 136) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78638, &qword_264790708);
  *v6 = v1;
  v6[1] = sub_26470B8B8;
  v8 = *(v1 + 16);
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v8, v4, v9, 0xD000000000000019, 0x8000000264799810, sub_264723964, v5, v7);
}

uint64_t sub_26470B8B8()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_26470BA18, v3, v2);
}

uint64_t sub_26470BA18()
{

  return MEMORY[0x2822009F8](sub_26470BA80, 0, 0);
}

uint64_t sub_26470BA80()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  sub_264655900(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26470BB00()
{

  return MEMORY[0x2822009F8](sub_26470BBFC, 0, 0);
}

uint64_t sub_26470BBFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26470BC6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v9);

  if (v9)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v9);

    if (v10 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v9), , , (v10) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v9), , result = , v10 == 1))
    {
      v4 = sub_2647858E4();
      (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
      v5 = swift_allocObject();
      swift_weakInit();
      sub_2647858B4();

      v6 = sub_2647858A4();
      v7 = swift_allocObject();
      v8 = MEMORY[0x277D85700];
      v7[2] = v6;
      v7[3] = v8;
      v7[4] = v5;

      sub_264635430(0, 0, v2, &unk_264790758, v7);
    }
  }

  return result;
}

uint64_t sub_26470BEF8(void *a1, void *a2, char *a3)
{
  v5 = *a3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v15);

  v6 = v15;
  v7 = [a1 location];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  if (!v6)
  {
LABEL_8:

LABEL_9:
    sub_264714708();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v15) = 1;

    sub_264783EE4();
    goto LABEL_10;
  }

  v9 = [v6 location];
  if (!v9)
  {

LABEL_7:
    v8 = v6;
    goto LABEL_8;
  }

  v10 = v9;
  [v8 distanceFromLocation_];
  v12 = v11;

  if (v12 != 0.0)
  {
    goto LABEL_9;
  }

LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a1;

  v13 = a1;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a2;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v15) = v5;

  sub_264783EE4();
  return sub_26470BC6C();
}

Swift::Bool __swiftcall UserSessionConfiguration.areEndLocationsEqual(_:_:)(MKMapItem_optional a1, MKMapItem_optional a2)
{
  v2 = *&a1.is_nil;
  if (a1.value.super.isa)
  {
    v3 = [(objc_class *)a1.value.super.isa location:a2.value.super.isa];
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        v5 = [v2 location];
        if (v5)
        {
          v6 = v5;
          [v4 distanceFromLocation_];
          v8 = v7;

          return v8 == 0.0;
        }
      }
    }
  }

  else if (!*&a1.is_nil)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_26470C1CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_264720BE8(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  sub_264720C70(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_26470C28C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  return sub_264720BE8(v1 + v3, a1);
}

uint64_t sub_26470C2E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  sub_264720C70(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t (*sub_26470C3B8(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470C45C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B0, &qword_264790228);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470C5FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B0, &qword_264790228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470C734(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B0, &qword_264790228);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26470C8A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t (*sub_26470C918(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470C9BC(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470CB5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470CC94(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470CE18(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470CEBC(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470D05C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470D194(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26470D304@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1);
}

uint64_t (*sub_26470D37C(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_26470D420(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B8, &qword_264790230);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470D5C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B8, &qword_264790230);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470D6F8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B8, &qword_264790230);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t (*sub_26470D87C(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470D920(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C0, &qword_264790238);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470DAC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C0, &qword_264790238);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470DBF8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C0, &qword_264790238);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470DD7C(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470DE20(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C8, &qword_264790240);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470DFC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C8, &qword_264790240);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470E0F8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C8, &qword_264790240);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470E290(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470E334(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470E4D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470E60C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

double sub_26470E77C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return dbl_2647907E0[v1];
}

uint64_t (*sub_26470E810(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470E8B4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470EA54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470EB8C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470ED24(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470EDC8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D0, &qword_264790290);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470EF68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D0, &qword_264790290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470F0A0(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D0, &qword_264790290);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

double sub_26470F210@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26470F290(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_26470F334(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_26470F3A4(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470F448(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470F5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470F720(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470F8E0(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470F984(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26470FB24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470FC5C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470FE1C(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470FEC0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264710060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264710198(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264710358(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2647103FC(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26471059C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2647106D4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264710894(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264710938(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264710AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264710C10(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264710DD0(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264710E74(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264711014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26471114C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26471130C(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2647113B0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264711550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264711688(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264711820(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_264783EE4();
}

uint64_t (*sub_2647118C0(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264711964(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264711B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264711C3C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264711DFC(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264711EA0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264712040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264712178(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264712338(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2647123DC(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_26471257C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2647126B4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264712874(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264712918(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264712AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264712BF0(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264712D74@<X0>(uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v7);

  v6 = v8;
  *a4 = v7;
  *(a4 + 8) = v6;
  return result;
}

uint64_t sub_264712E0C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_264712EA0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  return v3;
}

uint64_t sub_264712F24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_264712FA4(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264713048(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2647131E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264713320(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264713490()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v25);

  if (v25 <= 1u || v25 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v23);

    v4 = v23;
    if (v24)
    {
      v5 = 1;
      goto LABEL_11;
    }

    v6 = v23;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v23);

    v6 = v23;
    v4 = v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v23);

  v5 = 0;
  if ((v24 & 1) == 0)
  {
    v4 = v6 + v23;
  }

LABEL_11:
  sub_264783DF4();

  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v20 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = *&v10;
    *v9 = 136315394;
    v21 = v0;
    if (v5)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v12 = sub_264785914();
      v11 = v13;
    }

    v14 = sub_2646DF234(v12, v11, &v23);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v25);

    v22 = v25;
    v15 = ETAType.labelName.getter();
    v17 = sub_2646DF234(v15, v16, &v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264605000, v7, v8, "#Initiator,UserSessionConfiguration, selectedETA, %s, etaType, %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v20 + 8))(v3, v21);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return *&v4;
}

uint64_t sub_2647138C4()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v30);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v29);

  v4 = v29;
  sub_264783DF4();

  v5 = sub_264783E14();
  v6 = sub_2647859F4();

  if (os_log_type_enabled(v5, v6))
  {
    v26 = v1;
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v7 = 136315394;
    v25 = v4;
    if (v4)
    {
      ErrorValue = swift_getErrorValue();
      v22 = &v22;
      v23 = v0;
      v9 = v28;
      v10 = *(v28 - 8);
      MEMORY[0x28223BE20](ErrorValue);
      v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      v13 = sub_264785EF4();
      v15 = v14;
      (*(v10 + 8))(v12, v9);
      v0 = v23;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_2646DF234(v13, v15, &v29);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v30);

    v27 = v30;
    v17 = ETAType.labelName.getter();
    v19 = sub_2646DF234(v17, v18, &v29);

    *(v7 + 14) = v19;
    _os_log_impl(&dword_264605000, v5, v6, "#Initiator,UserSessionConfiguration, _selectedETAError, %s, etaType, %s", v7, 0x16u);
    v20 = v24;
    swift_arrayDestroy();
    MEMORY[0x266740650](v20, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);

    (*(v26 + 8))(v3, v0);
    return v25;
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return v4;
}

uint64_t sub_264713D20()
{
  sub_264713490();
  if (v0)
  {
    result = sub_2647138C4();
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t sub_264713D4C()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v25);

  if (v25 <= 1u || v25 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v23);

    v4 = v23;
    if (v24)
    {
      v5 = 1;
      goto LABEL_11;
    }

    v6 = v23;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v23);

    v6 = v23;
    v4 = v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v23);

  v5 = 0;
  if ((v24 & 1) == 0)
  {
    v4 = v6 + v23;
  }

LABEL_11:
  sub_264783DF4();

  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v20 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = *&v10;
    *v9 = 136315394;
    v21 = v0;
    if (v5)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v12 = sub_264785914();
      v11 = v13;
    }

    v14 = sub_2646DF234(v12, v11, &v23);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v25);

    v22 = v25;
    v15 = ETAType.labelName.getter();
    v17 = sub_2646DF234(v15, v16, &v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264605000, v7, v8, "#Initiator, UserSessionConfiguration, selectedCoarseETA, %s, etaType, %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v20 + 8))(v3, v21);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return *&v4;
}

id sub_264714180()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v21);

  if (v21 > 1u)
  {
    if (v21 != 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v22);

      v4 = v22;
      v5 = 0xFFFFFFFLL;
      goto LABEL_12;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v22);

    if ((v23 & 1) == 0)
    {
      v4 = v22;
      v5 = 4;
      goto LABEL_12;
    }

    return 0;
  }

  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v22);

    if ((v23 & 1) == 0)
    {
      v4 = v22;
      v5 = 2;
      goto LABEL_12;
    }

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v22);

  if (v23)
  {
    return 0;
  }

  v4 = v22;
  v5 = 1;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v22);

  if (v23)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v22;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D4AB90]) initWithExpectedTravelTime:v5 additionalTravelTime:v4 transportType:v7];
  v8 = v6;
  sub_264783DF4();
  v9 = v8;
  v10 = sub_264783E14();
  v11 = sub_2647859F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = v0;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v6;
    v22 = *&v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E8, &unk_264790610);
    v15 = sub_264785B34();
    v17 = v16;

    v18 = sub_2646DF234(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_264605000, v10, v11, "#Initiator,UserSessionConfiguration, etaConfig, %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x266740650](v14, -1, -1);
    MEMORY[0x266740650](v13, -1, -1);

    (*(v1 + 8))(v3, v20);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return v6;
}

uint64_t sub_2647145BC(_BYTE *a1)
{
  if (*a1 <= 1u || *a1 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v3);

    v1 = v3;
    if ((v4 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v3);

      if ((v4 & 1) == 0)
      {
        v1 = v3 + v1;
      }
    }
  }

  else
  {
    v1 = 0.0;
  }

  return *&v1;
}

uint64_t sub_264714708()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_264714990()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_2647858E4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_2647858B4();

  v5 = sub_2647858A4();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_264635430(0, 0, v2, &unk_264790628, v6);
}

uint64_t sub_264714AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[261] = a4;
  v5 = sub_264783E24();
  v4[262] = v5;
  v4[263] = *(v5 - 8);
  v4[264] = swift_task_alloc();
  sub_2647858B4();
  v4[265] = sub_2647858A4();
  v7 = sub_264785874();
  v4[266] = v7;
  v4[267] = v6;

  return MEMORY[0x2822009F8](sub_264714BD8, v7, v6);
}

uint64_t sub_264714BD8()
{
  v18 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[268] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v0 + 255);

    v3 = v0[255];
    v0[269] = v3;
    if (v3)
    {
      sub_264714708();
      v4 = swift_task_alloc();
      v0[270] = v4;
      *(v4 + 16) = v2;
      *(v4 + 24) = v3;
      swift_asyncLet_begin();
      v5 = swift_task_alloc();
      v0[271] = v5;
      *(v5 + 16) = v2;
      *(v5 + 24) = v3;
      swift_asyncLet_begin();
      v6 = swift_task_alloc();
      v0[272] = v6;
      *(v6 + 16) = v2;
      *(v6 + 24) = v3;
      swift_asyncLet_begin();

      return MEMORY[0x282200920](v0 + 162);
    }
  }

  else
  {

    sub_264783DF4();
    v7 = sub_264783E14();
    v8 = sub_2647859D4();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[264];
    v11 = v0[263];
    v12 = v0[262];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2646DF234(0xD000000000000010, 0x80000002647997C0, &v17);
      _os_log_impl(&dword_264605000, v7, v8, "#Initiator,UserSessionConfiguration, no reference to self in %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266740650](v14, -1, -1);
      MEMORY[0x266740650](v13, -1, -1);
    }

    (*(v11 + 8))(v10, v12);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_264714EF0()
{

  return MEMORY[0x282200920](v0 + 656);
}

uint64_t sub_264714F74()
{

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_264714FF8()
{
  v1 = *(v0 + 2152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264715088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2646547BC;

  return sub_264715268(a3, 1);
}

uint64_t sub_264715128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_264724034;

  return sub_264715268(a3, 4);
}

uint64_t sub_2647151C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_264724034;

  return sub_264715268(a3, 2);
}

uint64_t sub_264715268(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = sub_264783E24();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = sub_2647858B4();
  v3[37] = sub_2647858A4();

  return MEMORY[0x2822009F8](sub_264715368, 0, 0);
}

uint64_t sub_264715368()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = swift_task_alloc();
  v0[38] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[39] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B00, &qword_264790720);
  v0[40] = v5;
  *v4 = v0;
  v4[1] = sub_264715474;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000012, 0x8000000264798970, sub_2646E2830, v3, v5);
}

uint64_t sub_264715474()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_264715AF0;
  }

  else
  {

    v2 = sub_264715590;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264715590()
{
  *(v0 + 336) = *(v0 + 40);
  v2 = sub_264785874();

  return MEMORY[0x2822009F8](sub_264715610, v2, v1);
}

uint64_t sub_264715610()
{
  v45 = v0;
  v1 = *(v0 + 216);

  sub_264783DF4();
  v2 = v1;
  v3 = sub_264783E14();
  v4 = sub_2647859F4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 248);
    v42 = *(v0 + 240);
    v43 = *(v0 + 280);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v10 = 136315651;
    *(v0 + 56) = v6;
    *(v0 + 64) = v5;
    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v44);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2085;
    v15 = [v9 debugDescription];
    v16 = sub_264785724();
    v18 = v17;

    v19 = sub_2646DF234(v16, v18, &v44);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    *(v0 + 208) = v8;
    type metadata accessor for SMDirectionsTransportType(0);
    v20 = sub_264785764();
    v22 = sub_2646DF234(v20, v21, &v44);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_264605000, v3, v4, "#Initiator,UserSessionConfiguration, estimatedTravelTime: %s, endLocation: %{sensitive}s, transportType: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    v23 = *(v7 + 8);
    v23(v43, v42);
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);

    v23 = *(v26 + 8);
    v23(v24, v25);
  }

  v27 = *(v0 + 224);
  switch(v27)
  {
    case 4:
      v33 = *(v0 + 336);
      v32 = *(v0 + 344);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 104) = v33;
      *(v0 + 112) = 0;

      sub_264783EE4();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 120) = v32;
      *(v0 + 128) = 0;

      goto LABEL_10;
    case 2:
      v31 = *(v0 + 336);
      v30 = *(v0 + 344);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 72) = v31;
      *(v0 + 80) = 0;

      sub_264783EE4();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 88) = v30;
      *(v0 + 96) = 0;

      goto LABEL_10;
    case 1:
      v29 = *(v0 + 336);
      v28 = *(v0 + 344);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 136) = v29;
      *(v0 + 144) = 0;

      sub_264783EE4();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 152) = v28;
      *(v0 + 160) = 0;

LABEL_10:
      sub_264783EE4();
      goto LABEL_14;
  }

  sub_264783DF4();
  v34 = sub_264783E14();
  v35 = sub_2647859E4();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  if (v36)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_264605000, v34, v35, "#Initiator,UserSessionConfiguration, estimateEta, error for invalid transport type", v39, 2u);
    MEMORY[0x266740650](v39, -1, -1);
  }

  v23(v37, v38);
LABEL_14:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_264715AF0()
{

  v1 = sub_264785874();

  return MEMORY[0x2822009F8](sub_264715B74, v1, v0);
}

uint64_t sub_264715B74()
{
  v35 = v0;
  v1 = v0[41];

  sub_264783DF4();
  v2 = v1;
  v3 = sub_264783E14();
  v4 = sub_2647859D4();

  if (os_log_type_enabled(v3, v4))
  {
    v31 = v0[31];
    v32 = v0[30];
    v33 = v0[34];
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v0[24] = v5;
    v34 = v7;
    *v6 = 136315394;
    type metadata accessor for SMDirectionsTransportType(0);
    v8 = sub_264785764();
    v10 = sub_2646DF234(v8, v9, &v34);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_264785EF4();
    v13 = sub_2646DF234(v11, v12, &v34);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264605000, v3, v4, "#Initiator,UserSessionConfiguration, estimateEta, error fetching eta for transport type: %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v7, -1, -1);
    MEMORY[0x266740650](v6, -1, -1);

    v14 = *(v31 + 8);
    v14(v33, v32);
  }

  else
  {
    v15 = v0[34];
    v16 = v0[30];
    v17 = v0[31];

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  v18 = v0[28];
  switch(v18)
  {
    case 4:
      v21 = v0[41];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[22] = v21;

      break;
    case 2:
      v20 = v0[41];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[21] = v20;

      break;
    case 1:
      v19 = v0[41];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[23] = v19;

      break;
    default:
      sub_264783DF4();
      v22 = sub_264783E14();
      v23 = sub_2647859E4();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v0[41];
      v26 = v0[32];
      v27 = v0[30];
      if (v24)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_264605000, v22, v23, "#Initiator,UserSessionConfiguration, estimateEta, error for invalid transport type", v28, 2u);
        MEMORY[0x266740650](v28, -1, -1);
      }

      else
      {
      }

      v14(v26, v27);
      goto LABEL_15;
  }

  sub_264783EE4();
LABEL_15:

  v29 = v0[1];

  return v29();
}

double sub_264715F64(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  return v3;
}

uint64_t (*sub_264715FD0(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264716074(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264716214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26471634C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2647164C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v156 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v154 = *(v3 - 8);
  v155 = v3;
  MEMORY[0x28223BE20](v3);
  v153 = &v95 - v4;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v152 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v151 = &v95 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v7 = *(v6 - 1);
  v161 = v6;
  v162 = v7;
  MEMORY[0x28223BE20](v6);
  v159 = &v95 - v8;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v144 = *(v150 - 1);
  MEMORY[0x28223BE20](v150);
  v140 = &v95 - v9;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v125 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v116 = &v95 - v10;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v115 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v113 = &v95 - v11;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v95 - v12;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v108 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v106 = &v95 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v104 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v95 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v98 = &v95 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v97 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v95 = &v95 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v17 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v19 = &v95 - v18;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v20 = MEMORY[0x28223BE20](v99);
  v157 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v95 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v95 - v26);
  v117 = &v95 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v95 - v28;
  v121 = &v95 - v28;
  v30 = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v148 = v30;
  sub_264783ED4(&v165);

  v149 = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v147 = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((&v167 + 1));

  v146 = BYTE1(v167);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v145 = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v143 = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v167);

  v141 = v167;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v31 = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v139 = v165;
  v138 = v166;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v136 = v165;
  v135 = v166;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v134 = v165;
  v133 = v166;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v158 = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v132 = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v131 = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v130 = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v129 = v165;
  v128 = v166;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v127 = v165;
  v126 = v166;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v124 = v165;
  v123 = v166;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v119 = v165;
  v118 = v166;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v165);

  v32 = v165;
  v33 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  sub_264720BE8(v2 + v33, v29);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v27);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v163);

  v120 = v163;
  v137 = type metadata accessor for UserSessionConfiguration(0);
  v34 = swift_allocObject();
  *(v34 + 16) = [objc_opt_self() defaultManager];
  v35 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v109 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v36 = sub_264783B64();
  v37 = *(*(v36 - 8) + 56);
  v37(v34 + v35, 1, 1, v36);
  v38 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v163 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v17 + 32))(v34 + v38, v19, v96);
  v39 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v163) = 0;
  v40 = v95;
  sub_264783E94();
  (*(v97 + 32))(v34 + v39, v40, v100);
  v41 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v163 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v42 = v98;
  sub_264783E94();
  (*(v101 + 32))(v34 + v41, v42, v103);
  v43 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v37(v24, 1, 1, v36);
  v105 = v24;
  sub_264720BE8(v24, v157);
  v44 = v102;
  sub_264783E94();
  sub_26460CD50(v24, &qword_27FF75CE8, &unk_264788B70);
  (*(v104 + 32))(v34 + v43, v44, v107);
  v45 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v163 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v46 = v106;
  sub_264783E94();
  (*(v108 + 32))(v34 + v45, v46, v111);
  v47 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v163 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v48 = v110;
  sub_264783E94();
  (*(v112 + 32))(v34 + v47, v48, v114);
  v49 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v163) = 0;
  v50 = v113;
  sub_264783E94();
  (*(v115 + 32))(v34 + v49, v50, v122);
  v51 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v163 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v52 = v116;
  sub_264783E94();
  (*(v125 + 32))(v34 + v51, v52, v142);
  v53 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v163) = 0;
  v54 = v140;
  sub_264783E94();
  (*(v144 + 32))(v34 + v53, v54, v150);
  v55 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v163 = 0x40AC200000000000;
  v56 = v159;
  sub_264783E94();
  v57 = v162[4];
  v162 += 4;
  v150 = v57;
  v57(v34 + v55, v56, v161);
  v58 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v163 = 0;
  v164 = 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v60 = v151;
  sub_264783E94();
  v61 = *(v152 + 32);
  v62 = v160;
  v61(v34 + v58, v60, v160);
  v63 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v163 = 0;
  v164 = 1;
  v144 = v59;
  sub_264783E94();
  v61(v34 + v63, v60, v62);
  v64 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v163 = 0;
  v164 = 1;
  sub_264783E94();
  v61(v34 + v64, v60, v62);
  v65 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v163 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v66 = v153;
  sub_264783E94();
  v67 = v155;
  v68 = *(v154 + 32);
  v68(v34 + v65, v66, v155);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v163 = 0;
  sub_264783E94();
  v68(v34 + v69, v66, v67);
  v70 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v163 = 0;
  sub_264783E94();
  v68(v34 + v70, v66, v67);
  v71 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v163 = 0;
  sub_264783E94();
  v68(v34 + v71, v66, v67);
  v72 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v163 = 0;
  v164 = 1;
  sub_264783E94();
  v73 = v160;
  v61(v34 + v72, v60, v160);
  v74 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v163 = 0;
  v164 = 1;
  sub_264783E94();
  v61(v34 + v74, v60, v73);
  v75 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v163 = 0;
  v164 = 1;
  sub_264783E94();
  v61(v34 + v75, v60, v73);
  v76 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v163 = 0;
  v164 = 1;
  sub_264783E94();
  v61(v34 + v76, v60, v73);
  v77 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v163 = 0x40AC200000000000;
  v78 = v159;
  sub_264783E94();
  v150(v34 + v77, v78, v161);
  v79 = *(v34 + 16);
  v80 = v148;
  *(v34 + 16) = v148;
  v162 = v80;

  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v149;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v147;
  v161 = v147;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v163) = v146;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v145;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v163) = v143;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v163) = v141;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v31;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v139;
  v164 = v138;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v136;
  v164 = v135;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v134;
  v164 = v133;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v158;
  v163 = v158;

  v82 = v81;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v132;
  v163 = v132;

  v84 = v83;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v85 = v131;
  v163 = v131;

  v86 = v85;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v130;
  v163 = v130;

  v88 = v87;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v129;
  v164 = v128;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v127;
  v164 = v126;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v124;
  v164 = v123;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v119;
  v164 = v118;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v32;

  sub_264783EE4();
  v89 = v109;
  swift_beginAccess();
  v90 = v121;
  sub_264720E84(v121, v34 + v89);
  swift_endAccess();
  v91 = v117;
  v92 = v105;
  sub_264720BE8(v117, v105);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v92, v157);

  sub_264783EE4();
  sub_26460CD50(v92, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v120;

  sub_264783EE4();

  sub_26460CD50(v91, &qword_27FF75CE8, &unk_264788B70);
  result = sub_26460CD50(v90, &qword_27FF75CE8, &unk_264788B70);
  v94 = v156;
  v156[3] = v137;
  *v94 = v34;
  return result;
}

void sub_264718248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = objc_opt_self();
  v13 = sub_264783A04();
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v8 + 32))(v16 + v15, v11, v7);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  aBlock[4] = sub_264723A54;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26464CCBC;
  aBlock[3] = &block_descriptor_263;
  v17 = _Block_copy(aBlock);
  v18 = a5;

  [v12 _mapItemFromHandle_completionHandler_];
  _Block_release(v17);
}

void sub_264718474(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v87 = a5;
  v88 = a4;
  v90 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v84 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v83 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - v8;
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  v85 = v10;
  v86 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v79 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v79 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (a2)
    {
      v82 = v17;
      v22 = a2;
      sub_264783DF4();
      v23 = a2;

      v24 = sub_264783E14();
      v25 = sub_2647859D4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v80 = v25;
        v27 = v26;
        v79 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v91 = v21;
        v92 = v81;
        *v27 = 136315650;
        type metadata accessor for UserSessionConfiguration(0);

        v28 = sub_264785764();
        v30 = v9;
        v31 = sub_2646DF234(v28, v29, &v92);
        v32 = v85;
        v33 = v86;

        *(v27 + 4) = v31;
        v9 = v30;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264799810, &v92);
        *(v27 + 22) = 2112;
        v34 = a2;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 24) = v35;
        v36 = v79;
        *v79 = v35;
        _os_log_impl(&dword_264605000, v24, v80, "%s, %s: Error hydrating map item from map data handle, error, %@", v27, 0x20u);
        sub_26460CD50(v36, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v36, -1, -1);
        v37 = v81;
        swift_arrayDestroy();
        MEMORY[0x266740650](v37, -1, -1);
        MEMORY[0x266740650](v27, -1, -1);

        (*(v33 + 8))(v19, v32);
      }

      else
      {

        (*(v86 + 8))(v19, v85);
      }

      v42 = sub_2647858E4();
      (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
      v43 = v84;
      v44 = v9;
      v45 = v83;
      v46 = v89;
      (*(v84 + 16))(v83, v88, v89);
      v47 = (*(v43 + 80) + 48) & ~*(v43 + 80);
      v48 = swift_allocObject();
      *(v48 + 2) = 0;
      *(v48 + 3) = 0;
      v49 = v87;
      *(v48 + 4) = v21;
      *(v48 + 5) = v49;
      v50 = v45;
      v9 = v44;
      (*(v43 + 32))(&v48[v47], v50, v46);

      v51 = v49;
      sub_264635430(0, 0, v44, &unk_264790798, v48);

      v17 = v82;
    }

    if (v90)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v52 = v90;
      sub_264783ED4(&v92);

      v53 = v92;
      [v87 horizontalAccuracy];
      if (v54 == 100.0)
      {
        v55 = 0;
        if (v53 > 1)
        {
          goto LABEL_13;
        }

LABEL_20:
        if (v53 != 1)
        {
LABEL_23:
          v66 = v52;
LABEL_30:
          v92 = v90;
          v93 = v55;
          v78 = v52;
          sub_264785894();

          return;
        }

        v64 = qword_27FF75088;
        v65 = v52;
        if (v64 == -1)
        {
LABEL_29:
          v77 = sub_264785714();
          [v65 setName_];

          goto LABEL_30;
        }

LABEL_33:
        swift_once();
        goto LABEL_29;
      }

      if (v54 == 250.0)
      {
        v55 = 1;
        if (v53 <= 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v55 = 2 * (v54 == 375.0);
        if (v53 <= 1)
        {
          goto LABEL_20;
        }
      }

LABEL_13:
      if (v53 == 2)
      {
        v75 = qword_27FF75090;
        v65 = v52;
        if (v75 == -1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v53 != 3)
        {
          goto LABEL_23;
        }

        v76 = qword_27FF75098;
        v65 = v52;
        if (v76 == -1)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_33;
    }

    sub_264783DF4();

    v56 = sub_264783E14();
    v57 = sub_2647859D4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v91 = v21;
      v92 = v60;
      *v58 = 136315650;
      type metadata accessor for UserSessionConfiguration(0);
      v82 = v17;

      v61 = sub_264785764();
      v63 = sub_2646DF234(v61, v62, &v92);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264799810, &v92);
      *(v58 + 22) = 2112;
      *(v58 + 24) = 0;
      *v59 = 0;
      _os_log_impl(&dword_264605000, v56, v57, "%s, %s: Resulting mapItem is invalid, %@", v58, 0x20u);
      sub_26460CD50(v59, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v59, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v60, -1, -1);
      MEMORY[0x266740650](v58, -1, -1);

      (*(v86 + 8))(v82, v85);
    }

    else
    {

      (*(v86 + 8))(v17, v85);
    }

    v67 = sub_2647858E4();
    (*(*(v67 - 8) + 56))(v9, 1, 1, v67);
    v69 = v83;
    v68 = v84;
    v70 = v89;
    (*(v84 + 16))(v83, v88, v89);
    v71 = (*(v68 + 80) + 48) & ~*(v68 + 80);
    v72 = swift_allocObject();
    *(v72 + 2) = 0;
    *(v72 + 3) = 0;
    v73 = v87;
    *(v72 + 4) = v21;
    *(v72 + 5) = v73;
    (*(v68 + 32))(&v72[v71], v69, v70);

    v74 = v73;
    sub_264635430(0, 0, v9, &unk_264790788, v72);
  }

  else
  {
    sub_264783DF4();
    v38 = sub_264783E14();
    v39 = sub_2647859D4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v92 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_2646DF234(0xD000000000000019, 0x8000000264799810, &v92);
      _os_log_impl(&dword_264605000, v38, v39, "#Initiator,UserSessionConfiguration, no reference to self in %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x266740650](v41, -1, -1);
      MEMORY[0x266740650](v40, -1, -1);
    }

    (*(v86 + 8))(v14, v85);
    v92 = 0;
    v93 = 0;
    sub_264785894();
  }
}

uint64_t sub_264718F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_264718FFC;

  return sub_26471932C(v6 + 16, a5);
}

uint64_t sub_264718FFC()
{

  return MEMORY[0x2822009F8](sub_264724038, 0, 0);
}

uint64_t sub_2647190F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_2647191A0;

  return sub_26471932C(v6 + 16, a5);
}

uint64_t sub_2647191A0()
{

  return MEMORY[0x2822009F8](sub_26471929C, 0, 0);
}

uint64_t sub_26471929C()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  sub_264785894();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26471932C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_264783E24();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = sub_2647858B4();
  v3[10] = sub_2647858A4();
  v6 = sub_264785874();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x2822009F8](sub_264719428, v6, v5);
}

uint64_t sub_264719428()
{
  v35 = v0;
  v1 = [objc_opt_self() sharedService];
  v0[13] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() sharedService];
    if (!v3)
    {
      __break(1u);
      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = v3;
    v12 = v0[4];
    v13 = [v3 defaultTraits];

    v14 = [v2 ticketForReverseGeocodeLocation:v12 traits:v13];
    v0[14] = v14;

    if (v14)
    {
      v15 = v0[5];
      v16 = sub_2647858A4();
      v0[15] = v16;
      v17 = swift_task_alloc();
      v0[16] = v17;
      *(v17 + 16) = v14;
      *(v17 + 24) = v15;
      v18 = swift_task_alloc();
      v0[17] = v18;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78638, &qword_264790708);
      *v18 = v0;
      v18[1] = sub_2647197D0;
      v3 = v0[3];
      v5 = MEMORY[0x277D85700];
      v8 = sub_26472346C;
      v6 = 0x286D65744970616DLL;
      v7 = 0xED0000293A726F66;
      v4 = v16;
      v9 = v17;

      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  sub_264783DF4();

  v19 = sub_264783E14();
  v20 = sub_2647859D4();

  v21 = os_log_type_enabled(v19, v20);
  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];
  if (v21)
  {
    v25 = v0[5];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315394;
    v0[2] = v25;
    type metadata accessor for UserSessionConfiguration(0);

    v28 = sub_264785764();
    v30 = sub_2646DF234(v28, v29, &v34);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2646DF234(0x286D65744970616DLL, 0xED0000293A726F66, &v34);
    _os_log_impl(&dword_264605000, v19, v20, "%s, %s: Unable to create MKMapServiceTicket for reverseGeocodeLocation", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v27, -1, -1);
    MEMORY[0x266740650](v26, -1, -1);
  }

  (*(v23 + 8))(v22, v24);
  v31 = v0[3];
  *v31 = 0;
  *(v31 + 8) = 0;

  v32 = v0[1];

  return v32();
}

uint64_t sub_2647197D0()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_264719930, v3, v2);
}

uint64_t sub_264719930()
{
  v1 = *(v0 + 104);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

void sub_2647199A8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_264723544;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26471A4C4;
  aBlock[3] = &block_descriptor_233;
  v12 = _Block_copy(aBlock);

  [a2 submitWithHandler:v12 networkActivity:0];
  _Block_release(v12);
}

void sub_264719B88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a2)
    {
      v19 = a2;
      sub_264783DF4();
      v20 = a2;

      v21 = sub_264783E14();
      v22 = sub_2647859D4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v63 = a4;
        v25 = v24;
        v61 = swift_slowAlloc();
        v64 = v61;
        *v23 = 136315650;
        v66 = v18;
        type metadata accessor for UserSessionConfiguration(0);
        v62 = v7;

        v26 = sub_264785764();
        v28 = sub_2646DF234(v26, v27, &v64);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_2646DF234(0x286D65744970616DLL, 0xED0000293A726F66, &v64);
        *(v23 + 22) = 2112;
        v29 = a2;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 24) = v30;
        *v25 = v30;
        _os_log_impl(&dword_264605000, v21, v22, "%s, %s: Error reverse geocoding from coordinates, error, %@", v23, 0x20u);
        sub_26460CD50(v25, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v25, -1, -1);
        v31 = v61;
        swift_arrayDestroy();
        MEMORY[0x266740650](v31, -1, -1);
        MEMORY[0x266740650](v23, -1, -1);

        (*(v8 + 8))(v16, v62);
      }

      else
      {

        (*(v8 + 8))(v16, v7);
      }

      v64 = 0;
      v65 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
      sub_264785894();

LABEL_26:

      return;
    }

    if (!a1 || !*(a1 + 16) || (sub_264655DB8(a1 + 32, &v64), sub_264659B70(0, &qword_27FF76FC8, 0x277CD4E80), (swift_dynamicCast() & 1) == 0))
    {
      sub_264783DF4();

      v42 = sub_264783E14();
      v43 = sub_2647859D4();

      if (os_log_type_enabled(v42, v43))
      {
        v62 = v7;
        v63 = a4;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v64 = v45;
        *v44 = 136315650;
        v66 = v18;
        type metadata accessor for UserSessionConfiguration(0);

        v46 = sub_264785764();
        v48 = sub_2646DF234(v46, v47, &v64);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_2646DF234(0x286D65744970616DLL, 0xED0000293A726F66, &v64);
        *(v44 + 22) = 2080;
        if (a1)
        {
          v49 = MEMORY[0x26673F550](a1, MEMORY[0x277D84F70] + 8);
          v51 = v50;
        }

        else
        {
          v51 = 0xE300000000000000;
          v49 = 7104878;
        }

        v52 = sub_2646DF234(v49, v51, &v64);

        *(v44 + 24) = v52;
        _os_log_impl(&dword_264605000, v42, v43, "%s, %s: Resulting mapItemList or mapItemList's first element is invalid %s", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v45, -1, -1);
        MEMORY[0x266740650](v44, -1, -1);

        (*(v8 + 8))(v14, v62);
      }

      else
      {

        (*(v8 + 8))(v14, v7);
      }

      v64 = 0;
      v65 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
      sub_264785894();
      goto LABEL_26;
    }

    v37 = v66;
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v37;
    sub_264783ED4(&v64);

    v39 = v64;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v64);

    switch(v39)
    {
      case 3:
        v55 = qword_27FF75098;
        v56 = v38;
        if (v55 == -1)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        v53 = qword_27FF75090;
        v54 = v38;
        if (v53 == -1)
        {
          goto LABEL_30;
        }

        break;
      case 1:
        v40 = qword_27FF75088;
        v41 = v38;
        if (v40 == -1)
        {
LABEL_30:
          v57 = sub_264785714();
          [v38 setName_];

          goto LABEL_31;
        }

        break;
      default:
LABEL_31:
        swift_getKeyPath();
        swift_getKeyPath();
        v58 = v38;
        sub_264783ED4(&v64);

        v59 = v64;
        v64 = v58;
        v65 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
        sub_264785894();

        return;
    }

    swift_once();
    goto LABEL_30;
  }

  sub_264783DF4();
  v32 = sub_264783E14();
  v33 = sub_2647859D4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v7;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v64 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_2646DF234(0x286D65744970616DLL, 0xED0000293A726F66, &v64);
    _os_log_impl(&dword_264605000, v32, v33, "#Initiator,UserSessionConfiguration, no reference to self in %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x266740650](v36, -1, -1);
    MEMORY[0x266740650](v35, -1, -1);

    (*(v8 + 8))(v11, v34);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v64 = 0;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  sub_264785894();
}

uint64_t sub_26471A4C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2647857F4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_26471A560()
{
  v1 = sub_264785594();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2647855C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v9 = sub_264785A44();
  aBlock[4] = sub_26472344C;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_15;
  v10 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264723EE4(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  sub_264785BD4();
  MEMORY[0x26673F780](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26471A810(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v5 = sub_264783E14();
  v6 = sub_2647859F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_264605000, v5, v6, "#Initiator, UserSessionConfiguration, resetToTimeSessionConfiguration", v7, 2u);
    MEMORY[0x266740650](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 1;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 0x40AC200000000000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 0;

  return sub_264783EE4();
}

uint64_t UserSessionConfiguration.deinit()
{
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID, &qword_27FF75CE8, &unk_264788B70);
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v28 = *(*(v20 - 8) + 8);
  v28(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v23 = *(*(v22 - 8) + 8);
  v23(v0 + v21, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA, v22);
  v24 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v26 = *(*(v25 - 8) + 8);
  v26(v0 + v24, v25);
  v26(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError, v25);
  v26(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError, v25);
  v26(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError, v25);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime, v22);
  v28(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration, v20);
  return v0;
}

uint64_t UserSessionConfiguration.__deallocating_deinit()
{
  UserSessionConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26471AFE4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for UserSessionConfiguration(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

uint64_t sub_26471B030()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_26471B0A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

BOOL _s15SafetyMonitorUI24UserSessionConfigurationC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_264783B64();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  MEMORY[0x28223BE20](v2);
  v36 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED8, &qword_264789880);
  MEMORY[0x28223BE20](v5);
  v39 = &v34[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v34[-v14];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  v16 = *&v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  if (v16 != *&v40)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  v17 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  v18 = v40;
  if (v17)
  {
    if (*&v40 == 0.0)
    {
    }

    else
    {
      sub_264659B70(0, &qword_27FF76FC8, 0x277CD4E80);
      v19 = sub_264785AE4();

      if (v19)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (*&v40 != 0.0)
  {

    return 0;
  }

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  v20 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  if (v20 != v40)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  v21 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  if (v21 != v40)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v15);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v13);

  v22 = *(v5 + 48);
  v23 = v39;
  sub_264720BE8(v15, v39);
  sub_264720BE8(v13, &v23[v22]);
  v24 = v37;
  v25 = *(v38 + 48);
  if (v25(v23, 1, v37) == 1)
  {
    sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
    v26 = v39;
    sub_26460CD50(v15, &qword_27FF75CE8, &unk_264788B70);
    if (v25(&v26[v22], 1, v24) == 1)
    {
      sub_26460CD50(v26, &qword_27FF75CE8, &unk_264788B70);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_264720BE8(v23, v10);
  if (v25(&v23[v22], 1, v24) == 1)
  {
    sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
    v26 = v39;
    sub_26460CD50(v15, &qword_27FF75CE8, &unk_264788B70);
    (*(v38 + 8))(v10, v24);
LABEL_17:
    sub_26460CD50(v26, &qword_27FF75ED8, &qword_264789880);
    return 0;
  }

  v28 = v38;
  v29 = &v23[v22];
  v30 = v36;
  (*(v38 + 32))(v36, v29, v24);
  sub_264723EE4(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v35 = sub_264785684();
  v31 = *(v28 + 8);
  v31(v30, v24);
  sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CD50(v15, &qword_27FF75CE8, &unk_264788B70);
  v31(v10, v24);
  sub_26460CD50(v39, &qword_27FF75CE8, &unk_264788B70);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  v32 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  if (v32 != v40)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  v33 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  return v33 == v40;
}

uint64_t _s15SafetyMonitorUI24UserSessionConfigurationC4withACSo09SMSessionF0C_tcfC_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v2 - 8);
  v133 = &v133 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v171 = *(v4 - 8);
  v172 = v4;
  MEMORY[0x28223BE20](v4);
  v170 = &v133 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v174 = *(v6 - 8);
  v175 = v6;
  MEMORY[0x28223BE20](v6);
  v173 = &v133 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v9 = *(v8 - 8);
  v180 = v8;
  v181 = v9;
  MEMORY[0x28223BE20](v8);
  v179 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v165 = *(v11 - 8);
  v166 = v11;
  MEMORY[0x28223BE20](v11);
  v164 = &v133 - v12;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v133 - v13;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v133 - v14;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v133 - v15;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v133 - v16;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v133 - v17;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v133 - v18;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v140 = &v133 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v133 - v20;
  v141 = sub_264783AF4();
  v139 = *(v141 - 1);
  MEMORY[0x28223BE20](v141);
  v134 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v22 = MEMORY[0x28223BE20](v138);
  v177 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v176 = &v133 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v178 = &v133 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v133 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v133 - v31;
  v33 = sub_264783E24();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v37 = a1;
  v38 = sub_264783E14();
  v39 = sub_2647859F4();

  v40 = os_log_type_enabled(v38, v39);
  v142 = v30;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v169 = v34;
    v43 = v42;
    v182 = v42;
    *v41 = 136642819;
    v44 = [v37 debugDescription];
    v168 = v33;
    v45 = v32;
    v46 = v44;
    v47 = sub_264785724();
    v48 = v37;
    v50 = v49;

    v32 = v45;
    v51 = sub_2646DF234(v47, v50, &v182);
    v37 = v48;

    *(v41 + 4) = v51;
    _os_log_impl(&dword_264605000, v38, v39, "#Initiator, UserSessionConfiguration, initWithSessionConfiguration - Initializing with SMSessionConfiguration: %{sensitive}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x266740650](v43, -1, -1);
    MEMORY[0x266740650](v41, -1, -1);

    (*(v169 + 8))(v36, v168);
  }

  else
  {

    (*(v34 + 8))(v36, v33);
  }

  v52 = sub_264783B64();
  v53 = *(*(v52 - 8) + 56);
  v53(v32, 1, 1, v52);
  v54 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  if ([v37 sessionType] == 2 && (v55 = objc_msgSend(v37, sel_destination)) != 0)
  {
    v56 = v55;
    v151 = [v55 destinationType];
    v57 = [v56 destinationMapItem];
    v58 = sub_264783A14();
    v60 = v59;

    v167 = [v56 clLocation];
  }

  else
  {
    v151 = 0;
    v167 = 0;
    v58 = 0;
    v60 = 0xF000000000000000;
  }

  if ([v37 sessionType] == 1 && (v61 = objc_msgSend(v37, sel_time)) != 0)
  {
    v62 = v61;
    v63 = [v61 timeBound];
    v64 = v134;
    sub_264783AC4();

    sub_264783AA4();
    v66 = v65;

    v67 = v64;
    v54 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
    (*(v139 + 8))(v67, v141);
  }

  else
  {
    v66 = 0x40AC200000000000;
  }

  v68 = [v37 v54[71]];
  v168 = v60;
  v169 = v58;
  if (v68 == 4)
  {
    v69 = [v37 sessionWorkoutIdentifier];
    if (v69)
    {
      v70 = v142;
      v71 = v69;
      sub_264783B44();

      v72 = 0;
    }

    else
    {
      v72 = 1;
      v70 = v142;
    }

    sub_26460CD50(v32, &qword_27FF75CE8, &unk_264788B70);
    v53(v70, v72, 1, v52);
    sub_264723E74(v70, v32);
    v139 = [v37 sessionWorkoutType];
    v142 = [v37 sessionWorkoutMirrorType];
  }

  else
  {
    v142 = 0;
    v139 = 3000;
  }

  v134 = [v37 v54[71]];
  sub_264720BE8(v32, v178);
  type metadata accessor for UserSessionConfiguration(0);
  v73 = swift_allocObject();
  *(v73 + 16) = [objc_opt_self() defaultManager];
  v141 = v37;
  v53((v73 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID), 1, 1, v52);
  v74 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v182 = 2;
  type metadata accessor for SMSessionType(0);
  v75 = v135;
  sub_264783E94();
  (*(v136 + 32))(v73 + v74, v75, v137);
  v76 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v182) = 0;
  v77 = v140;
  sub_264783E94();
  (*(v143 + 32))(v73 + v76, v77, v144);
  v78 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v182 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v79 = v145;
  sub_264783E94();
  (*(v146 + 32))(v73 + v78, v79, v147);
  v80 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v81 = v176;
  v53(v176, 1, 1, v52);
  sub_264720BE8(v81, v177);
  v82 = v148;
  sub_264783E94();
  sub_26460CD50(v81, &qword_27FF75CE8, &unk_264788B70);
  (*(v149 + 32))(v73 + v80, v82, v150);
  v83 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v182 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v84 = v152;
  sub_264783E94();
  (*(v153 + 32))(v73 + v83, v84, v154);
  v85 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v182 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v86 = v155;
  sub_264783E94();
  (*(v156 + 32))(v73 + v85, v86, v157);
  v87 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v182) = 0;
  v88 = v158;
  sub_264783E94();
  (*(v159 + 32))(v73 + v87, v88, v160);
  v89 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v182 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v90 = v161;
  sub_264783E94();
  (*(v162 + 32))(v73 + v89, v90, v163);
  v91 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v182) = 0;
  v92 = v164;
  sub_264783E94();
  v165[4](v73 + v91, v92, v166);
  v93 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v182 = 0x40AC200000000000;
  v94 = v179;
  sub_264783E94();
  v95 = *(v181 + 32);
  v181 += 32;
  v165 = v95;
  (v95)(v73 + v93, v94, v180);
  v96 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v182 = 0;
  v183 = 1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v166 = v32;
  v98 = v97;
  v99 = v173;
  sub_264783E94();
  v100 = v175;
  v101 = *(v174 + 4);
  v101(v73 + v96, v99, v175);
  v102 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v182 = 0;
  v183 = 1;
  v164 = v98;
  sub_264783E94();
  v101(v73 + v102, v99, v100);
  v174 = v101;
  v103 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v182 = 0;
  v183 = 1;
  sub_264783E94();
  v101(v73 + v103, v99, v100);
  v104 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v182 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v105 = v170;
  sub_264783E94();
  v106 = v172;
  v107 = *(v171 + 32);
  v107(v73 + v104, v105, v172);
  v108 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v182 = 0;
  sub_264783E94();
  v107(v73 + v108, v105, v106);
  v109 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v182 = 0;
  sub_264783E94();
  v107(v73 + v109, v105, v106);
  v110 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v182 = 0;
  sub_264783E94();
  v107(v73 + v110, v105, v106);
  v111 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v182 = 0;
  v183 = 1;
  sub_264783E94();
  v112 = v174;
  v174(v73 + v111, v99, v100);
  v113 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v182 = 0;
  v183 = 1;
  sub_264783E94();
  v112(v73 + v113, v99, v100);
  v114 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v182 = 0;
  v183 = 1;
  sub_264783E94();
  v112(v73 + v114, v99, v100);
  v115 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v182 = 0;
  v183 = 1;
  sub_264783E94();
  v112(v73 + v115, v99, v100);
  v116 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v182 = 0x40AC200000000000;
  v117 = v179;
  sub_264783E94();
  (v165)(v73 + v116, v117, v180);
  swift_getKeyPath();
  swift_getKeyPath();
  v182 = v134;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v182 = v151;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v182) = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v182 = v66;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v182 = 0;

  sub_264783EE4();
  v118 = v178;
  v119 = v176;
  sub_264720BE8(v178, v176);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v119, v177);

  sub_264783EE4();
  sub_26460CD50(v119, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v182 = v139;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v182 = v142;

  sub_264783EE4();
  sub_26460CD50(v118, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4(&v182);

  if (v182 == 2)
  {
    v120 = v141;
    v121 = v166;
    v123 = v168;
    v122 = v169;
    if (v168 >> 60 == 15)
    {
LABEL_30:
      v122 = 0;
      v123 = 0xF000000000000000;
      goto LABEL_31;
    }

    v124 = v168 >> 62;
    if ((v168 >> 62) > 1)
    {
      if (v124 != 2)
      {
        goto LABEL_29;
      }

      v125 = *(v169 + 16);
      v126 = *(v169 + 24);
    }

    else
    {
      if (!v124)
      {
        if ((v168 & 0xFF000000000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_31:
        v127 = sub_2647858E4();
        v128 = v133;
        (*(*(v127 - 8) + 56))(v133, 1, 1, v127);
        v129 = swift_allocObject();
        v129[2] = 0;
        v129[3] = 0;
        v129[4] = v122;
        v129[5] = v123;
        v130 = v167;
        v129[6] = v167;
        v129[7] = v73;

        sub_2646C6804(v122, v123);
        v131 = v130;
        sub_264635430(0, 0, v128, &unk_2647907A0, v129);

        sub_264655900(v122, v123);

        sub_26460CD50(v121, &qword_27FF75CE8, &unk_264788B70);
        return v73;
      }

      v125 = v169;
      v126 = v169 >> 32;
    }

    if (v125 != v126)
    {
      goto LABEL_31;
    }

LABEL_29:
    sub_264655900(v169, v168);
    goto LABEL_30;
  }

  sub_26460CD50(v166, &qword_27FF75CE8, &unk_264788B70);

  sub_264655900(v169, v168);

  return v73;
}

uint64_t _s15SafetyMonitorUI24UserSessionConfigurationC07workoutE2ID0G12ActivityType0geJ0AC10Foundation4UUIDVSg_So09HKWorkoutiJ0VSo0meJ0VtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a2;
  v109 = a3;
  v107 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x28223BE20](v4);
  v104 = &v77 - v5;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v102 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v8 = *(v7 - 8);
  v114 = v7;
  v115 = v8;
  MEMORY[0x28223BE20](v7);
  v111 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x28223BE20](v10);
  v99 = &v77 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v77 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v77 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v77 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v77 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v77 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v77 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v18 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v20 = &v77 - v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v21 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v23 = &v77 - v22;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v24 = MEMORY[0x28223BE20](v78);
  v110 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v77 - v27;
  MEMORY[0x28223BE20](v26);
  v103 = &v77 - v29;
  sub_264720BE8(a1, &v77 - v29);
  type metadata accessor for UserSessionConfiguration(0);
  v30 = swift_allocObject();
  *(v30 + 16) = [objc_opt_self() defaultManager];
  v31 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v32 = sub_264783B64();
  v33 = *(*(v32 - 8) + 56);
  v33(v30 + v31, 1, 1, v32);
  v34 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v116 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v21 + 32))(v30 + v34, v23, v77);
  v35 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v116) = 0;
  sub_264783E94();
  (*(v18 + 32))(v30 + v35, v20, v79);
  v36 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v116 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v37 = v80;
  sub_264783E94();
  (*(v81 + 32))(v30 + v36, v37, v82);
  v38 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v33(v28, 1, 1, v32);
  v98 = v28;
  sub_264720BE8(v28, v110);
  v39 = v83;
  sub_264783E94();
  sub_26460CD50(v28, &qword_27FF75CE8, &unk_264788B70);
  (*(v84 + 32))(v30 + v38, v39, v85);
  v40 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v116 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v41 = v86;
  sub_264783E94();
  (*(v87 + 32))(v30 + v40, v41, v88);
  v42 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v116 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v43 = v89;
  sub_264783E94();
  (*(v90 + 32))(v30 + v42, v43, v91);
  v44 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v116) = 0;
  v45 = v92;
  sub_264783E94();
  (*(v93 + 32))(v30 + v44, v45, v94);
  v46 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v116 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v47 = v95;
  sub_264783E94();
  (*(v96 + 32))(v30 + v46, v47, v97);
  v48 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v116) = 0;
  v49 = v99;
  sub_264783E94();
  (*(v100 + 32))(v30 + v48, v49, v101);
  v50 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v116 = 0x40AC200000000000;
  v51 = v111;
  sub_264783E94();
  v52 = *(v115 + 32);
  v115 += 32;
  v101 = v52;
  v52(v30 + v50, v51, v114);
  v53 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v116 = 0;
  v117 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v54 = v112;
  sub_264783E94();
  v55 = *(v102 + 32);
  v56 = v113;
  v55(v30 + v53, v54, v113);
  v57 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v116 = 0;
  v117 = 1;
  sub_264783E94();
  v55(v30 + v57, v54, v56);
  v58 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v116 = 0;
  v117 = 1;
  sub_264783E94();
  v55(v30 + v58, v54, v56);
  v59 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v116 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v60 = v104;
  sub_264783E94();
  v61 = v106;
  v62 = *(v105 + 32);
  v62(v30 + v59, v60, v106);
  v63 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v116 = 0;
  sub_264783E94();
  v62(v30 + v63, v60, v61);
  v64 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v116 = 0;
  sub_264783E94();
  v62(v30 + v64, v60, v61);
  v65 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v116 = 0;
  sub_264783E94();
  v62(v30 + v65, v60, v61);
  v66 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v116 = 0;
  v117 = 1;
  v67 = v112;
  sub_264783E94();
  v68 = v113;
  v55(v30 + v66, v67, v113);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v116 = 0;
  v117 = 1;
  sub_264783E94();
  v55(v30 + v69, v67, v68);
  v70 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v116 = 0;
  v117 = 1;
  sub_264783E94();
  v55(v30 + v70, v67, v68);
  v71 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v116 = 0;
  v117 = 1;
  sub_264783E94();
  v55(v30 + v71, v67, v68);
  v72 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v116 = 0x40AC200000000000;
  v73 = v111;
  sub_264783E94();
  v101(v30 + v72, v73, v114);
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = 4;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = 4;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v116) = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = 0x40AC200000000000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = 0;

  sub_264783EE4();
  v74 = v103;
  v75 = v98;
  sub_264720BE8(v103, v98);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v75, v110);

  sub_264783EE4();
  sub_26460CD50(v75, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v108;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v109;

  sub_264783EE4();
  sub_26460CD50(v107, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CD50(v74, &qword_27FF75CE8, &unk_264788B70);
  return v30;
}

uint64_t _s15SafetyMonitorUI24UserSessionConfigurationC4withACSo16RTPlaceInferenceC_tcfC_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v2 - 8);
  v132 = &v132 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v165 = *(v4 - 8);
  v166 = v4;
  MEMORY[0x28223BE20](v4);
  v164 = &v132 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v168 = *(v6 - 8);
  v169 = v6;
  MEMORY[0x28223BE20](v6);
  v167 = &v132 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v9 = *(v8 - 8);
  v174 = v8;
  v175 = v9;
  MEMORY[0x28223BE20](v8);
  v170 = &v132 - v10;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v162 = *(v163 - 1);
  MEMORY[0x28223BE20](v163);
  v161 = &v132 - v11;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v132 - v12;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v132 - v13;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v132 - v14;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v132 - v15;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v132 - v16;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v132 - v17;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v132 - v18;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v132 - v19;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v20 = MEMORY[0x28223BE20](v139);
  v172 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v171 = &v132 - v23;
  MEMORY[0x28223BE20](v22);
  v173 = &v132 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v132 - v26;
  v28 = sub_264783AF4();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v133 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v144 = &v132 - v32;
  v33 = sub_264783E24();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v37 = a1;
  v38 = sub_264783E14();
  v39 = sub_2647859F4();

  v40 = os_log_type_enabled(v38, v39);
  v176 = v37;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138739971;
    *(v41 + 4) = v176;
    *v42 = v176;
    v43 = v176;
    _os_log_impl(&dword_264605000, v38, v39, "#Initiator, UserSessionConfiguration, initWithPlaceInference - Initializing with RTPlaceInference: %{sensitive}@", v41, 0xCu);
    sub_26460CD50(v42, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v42, -1, -1);
    v44 = v41;
    v37 = v176;
    MEMORY[0x266740650](v44, -1, -1);
  }

  (*(v34 + 8))(v36, v33);
  v148 = [objc_opt_self() convertPlaceTypeToDestinationType_];
  v45 = [v37 referenceLocation];
  [v45 latitude];
  v47 = v46;

  v48 = [v37 referenceLocation];
  [v48 longitude];
  v50 = v49;

  v51 = [v37 referenceLocation];
  [v51 altitude];
  v53 = v52;

  v54 = [v37 referenceLocation];
  [v54 horizontalUncertainty];
  v56 = v55;

  v57 = [v37 referenceLocation];
  [v57 horizontalUncertainty];
  v59 = v58;

  v60 = [v37 referenceLocation];
  v61 = [v60 date];

  if (v61)
  {
    v62 = v133;
    sub_264783AC4();

    v63 = *(v29 + 32);
    v63(v27, v62, v28);
    (*(v29 + 56))(v27, 0, 1, v28);
    v64 = v144;
    v63(v144, v27, v28);
  }

  else
  {
    (*(v29 + 56))(v27, 1, 1, v28);
    v65 = [objc_opt_self() distantPast];
    v64 = v144;
    sub_264783AC4();

    if ((*(v29 + 48))(v27, 1, v28) != 1)
    {
      sub_26460CD50(v27, &qword_27FF756B8, &qword_26478AC90);
    }
  }

  v66 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v67 = sub_264783A64();
  v144 = [v66 initWithCoordinate:v67 altitude:v47 horizontalAccuracy:v50 verticalAccuracy:v53 timestamp:{v56, v59}];

  (*(v29 + 8))(v64, v28);
  v68 = sub_264783B64();
  v69 = *(*(v68 - 8) + 56);
  v69(v173, 1, 1, v68);
  type metadata accessor for UserSessionConfiguration(0);
  v70 = swift_allocObject();
  *(v70 + 16) = [objc_opt_self() defaultManager];
  v69(v70 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID, 1, 1, v68);
  v71 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v177 = 2;
  type metadata accessor for SMSessionType(0);
  v72 = v134;
  sub_264783E94();
  (*(v135 + 32))(v70 + v71, v72, v136);
  v73 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v177) = 0;
  v74 = v137;
  sub_264783E94();
  (*(v138 + 32))(v70 + v73, v74, v140);
  v75 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v177 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v76 = v141;
  sub_264783E94();
  (*(v142 + 32))(v70 + v75, v76, v143);
  v77 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v78 = v171;
  v69(v171, 1, 1, v68);
  sub_264720BE8(v78, v172);
  v79 = v145;
  sub_264783E94();
  sub_26460CD50(v78, &qword_27FF75CE8, &unk_264788B70);
  (*(v146 + 32))(v70 + v77, v79, v147);
  v80 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v177 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v81 = v149;
  sub_264783E94();
  (*(v150 + 32))(v70 + v80, v81, v151);
  v82 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v177 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v83 = v152;
  sub_264783E94();
  (*(v153 + 32))(v70 + v82, v83, v154);
  v84 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v177) = 0;
  v85 = v155;
  sub_264783E94();
  (*(v156 + 32))(v70 + v84, v85, v157);
  v86 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v177 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v87 = v158;
  sub_264783E94();
  (*(v159 + 32))(v70 + v86, v87, v160);
  v88 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v177) = 0;
  v89 = v161;
  sub_264783E94();
  (*(v162 + 32))(v70 + v88, v89, v163);
  v90 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v177 = 0x40AC200000000000;
  v91 = v170;
  sub_264783E94();
  v92 = *(v175 + 32);
  v175 += 32;
  v163 = v92;
  v92(v70 + v90, v91, v174);
  v93 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v177 = 0;
  v178 = 1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v95 = v167;
  sub_264783E94();
  v96 = v169;
  v97 = *(v168 + 4);
  v97(v70 + v93, v95, v169);
  v98 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v177 = 0;
  v178 = 1;
  v162 = v94;
  sub_264783E94();
  v97(v70 + v98, v95, v96);
  v168 = v97;
  v99 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v97(v70 + v99, v95, v96);
  v100 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v177 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v101 = v164;
  sub_264783E94();
  v102 = v166;
  v103 = *(v165 + 32);
  v103(v70 + v100, v101, v166);
  v104 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v177 = 0;
  sub_264783E94();
  v103(v70 + v104, v101, v102);
  v105 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v177 = 0;
  sub_264783E94();
  v103(v70 + v105, v101, v102);
  v106 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v177 = 0;
  sub_264783E94();
  v103(v70 + v106, v101, v102);
  v107 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v108 = v168;
  v168(v70 + v107, v95, v96);
  v109 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v108(v70 + v109, v95, v96);
  v110 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v108(v70 + v110, v95, v96);
  v111 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v108(v70 + v111, v95, v96);
  v112 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v177 = 0x40AC200000000000;
  v113 = v170;
  sub_264783E94();
  v163(v70 + v112, v113, v174);
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = 2;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v148;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v177) = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = 0x40AC200000000000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = 0;

  sub_264783EE4();
  v114 = v173;
  v115 = v171;
  sub_264720BE8(v173, v171);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v115, v172);

  sub_264783EE4();
  sub_26460CD50(v115, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = 3000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = 0;

  sub_264783EE4();
  sub_26460CD50(v114, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4(&v177);

  if (v177 == 2)
  {
    v116 = v144;
    v117 = v176;
    v118 = [v176 mapItem];
    if (!v118 || (v119 = v118, v120 = [v118 geoMapItemHandle], v119, !v120))
    {
      v121 = 0;
      v123 = 0xF000000000000000;
      v125 = v116;
      goto LABEL_21;
    }

    v121 = sub_264783A14();
    v123 = v122;

    v124 = v123 >> 62;
    if ((v123 >> 62) > 1)
    {
      v125 = v116;
      if (v124 != 2)
      {
        goto LABEL_20;
      }

      v126 = *(v121 + 16);
      v127 = *(v121 + 24);
    }

    else
    {
      if (!v124)
      {
        v125 = v116;
        if ((v123 & 0xFF000000000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_21:
        v128 = sub_2647858E4();
        v129 = v132;
        (*(*(v128 - 8) + 56))(v132, 1, 1, v128);
        v130 = swift_allocObject();
        v130[2] = 0;
        v130[3] = 0;
        v130[4] = v121;
        v130[5] = v123;
        v130[6] = v125;
        v130[7] = v70;
        sub_264635430(0, 0, v129, &unk_264790770, v130);

        return v70;
      }

      v126 = v121;
      v127 = v121 >> 32;
      v125 = v116;
    }

    if (v126 != v127)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_264655264(v121, v123);
    v121 = 0;
    v123 = 0xF000000000000000;
    goto LABEL_21;
  }

  return v70;
}

uint64_t sub_26471FB50(uint64_t a1)
{
  v105 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v103 = *(v1 - 8);
  v104 = v1;
  MEMORY[0x28223BE20](v1);
  v102 = &v75 - v2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v100 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v75 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v5 = *(v4 - 8);
  v110 = v4;
  v111 = v5;
  MEMORY[0x28223BE20](v4);
  v107 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x28223BE20](v7);
  v97 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v75 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v75 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v75 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v75 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v75 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v75 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v16 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v18 = &v75 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v19 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v21 = &v75 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v22 = MEMORY[0x28223BE20](v76);
  v106 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v75 - v27;
  v101 = &v75 - v27;
  v29 = sub_264783B64();
  v30 = *(*(v29 - 8) + 56);
  v30(v28, 1, 1, v29);
  type metadata accessor for UserSessionConfiguration(0);
  v31 = swift_allocObject();
  *(v31 + 16) = [objc_opt_self() defaultManager];
  v30((v31 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID), 1, 1, v29);
  v32 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v112 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v19 + 32))(v31 + v32, v21, v75);
  v33 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v112) = 0;
  sub_264783E94();
  (*(v16 + 32))(v31 + v33, v18, v77);
  v34 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v112 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v35 = v78;
  sub_264783E94();
  (*(v79 + 32))(v31 + v34, v35, v80);
  v36 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v30(v26, 1, 1, v29);
  v96 = v26;
  sub_264720BE8(v26, v106);
  v37 = v81;
  sub_264783E94();
  sub_26460CD50(v26, &qword_27FF75CE8, &unk_264788B70);
  (*(v82 + 32))(v31 + v36, v37, v83);
  v38 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v112 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v39 = v84;
  sub_264783E94();
  (*(v85 + 32))(v31 + v38, v39, v86);
  v40 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v112 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v41 = v87;
  sub_264783E94();
  (*(v88 + 32))(v31 + v40, v41, v89);
  v42 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v112) = 0;
  v43 = v90;
  sub_264783E94();
  (*(v91 + 32))(v31 + v42, v43, v92);
  v44 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v112 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v45 = v93;
  sub_264783E94();
  (*(v94 + 32))(v31 + v44, v45, v95);
  v46 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v112) = 0;
  v47 = v97;
  sub_264783E94();
  (*(v98 + 32))(v31 + v46, v47, v99);
  v48 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v112 = 0x40AC200000000000;
  v49 = v107;
  sub_264783E94();
  v50 = *(v111 + 32);
  v111 += 32;
  v99 = v50;
  v50(v31 + v48, v49, v110);
  v51 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v112 = 0;
  v113 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v52 = v108;
  sub_264783E94();
  v53 = *(v100 + 32);
  v54 = v109;
  v53(v31 + v51, v52, v109);
  v55 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v112 = 0;
  v113 = 1;
  sub_264783E94();
  v53(v31 + v55, v52, v54);
  v56 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v112 = 0;
  v113 = 1;
  sub_264783E94();
  v53(v31 + v56, v52, v54);
  v57 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v112 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v58 = v102;
  sub_264783E94();
  v59 = v104;
  v60 = *(v103 + 32);
  v60(v31 + v57, v58, v104);
  v61 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v112 = 0;
  sub_264783E94();
  v60(v31 + v61, v58, v59);
  v62 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v112 = 0;
  sub_264783E94();
  v60(v31 + v62, v58, v59);
  v63 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v112 = 0;
  sub_264783E94();
  v60(v31 + v63, v58, v59);
  v64 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v112 = 0;
  v113 = 1;
  v65 = v108;
  sub_264783E94();
  v66 = v109;
  v53(v31 + v64, v65, v109);
  v67 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v112 = 0;
  v113 = 1;
  sub_264783E94();
  v53(v31 + v67, v65, v66);
  v68 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v112 = 0;
  v113 = 1;
  sub_264783E94();
  v53(v31 + v68, v65, v66);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v112 = 0;
  v113 = 1;
  sub_264783E94();
  v53(v31 + v69, v65, v66);
  v70 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v112 = 0x40AC200000000000;
  v71 = v107;
  sub_264783E94();
  v99(v31 + v70, v71, v110);
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = v105;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = 4;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v112) = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = 0x40AC200000000000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = 0;

  sub_264783EE4();
  v72 = v101;
  v73 = v96;
  sub_264720BE8(v101, v96);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v73, v106);

  sub_264783EE4();
  sub_26460CD50(v73, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = 3000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = 0;

  sub_264783EE4();
  sub_26460CD50(v72, &qword_27FF75CE8, &unk_264788B70);
  return v31;
}