void sub_1C1DDADAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE75DC0;
  sub_1C1E51E8C(0x25206D6F72662059, 0xE900000000000040, 0, 0, qword_1EDE75DC0, 0, 0xE000000000000000, 0xD00000000000011ALL, 0x80000001C1E5B570);
  sub_1C1E51E8C(0x4025206F742059, 0xE700000000000000, 0, 0, v4, 0, 0xE000000000000000, 0xD000000000000114, 0x80000001C1E5B450);
  sub_1C1E00C70();
  v5 = *(a1 + 40);
  if (v5)
  {

    sub_1C1DD9E20(v5, 0, 1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C1DDAF40(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDE75DC0;
  sub_1C1E51E8C(0x4025206F742059, 0xE700000000000000, 0, 0, qword_1EDE75DC0, 0, 0xE000000000000000, 0xD000000000000114, 0x80000001C1E5B450);
  sub_1C1E51E8C(0x25206D6F72662059, 0xE900000000000040, 0, 0, v6, 0, 0xE000000000000000, 0xD00000000000011ALL, 0x80000001C1E5B570);
  sub_1C1E00C70();
  v7 = *(a1 + 48);
  if (v7)
  {

    sub_1C1DD9E20(v7, 0, a2 & 1, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C1DDB0D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE75DC0;
  sub_1C1E51E8C(0x25206D6F7266205ALL, 0xE900000000000040, 0, 0, qword_1EDE75DC0, 0, 0xE000000000000000, 0xD00000000000011ALL, 0x80000001C1E5B330);
  sub_1C1E51E8C(0x4025206F74205ALL, 0xE700000000000000, 0, 0, v4, 0, 0xE000000000000000, 0xD000000000000114, 0x80000001C1E5B210);
  sub_1C1E00C70();
  v5 = *(a1 + 56);
  if (v5)
  {

    sub_1C1DD9E20(v5, 0, 1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C1DDB26C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDE75DC0;
  sub_1C1E51E8C(0x4025206F74205ALL, 0xE700000000000000, 0, 0, qword_1EDE75DC0, 0, 0xE000000000000000, 0xD000000000000114, 0x80000001C1E5B210);
  sub_1C1E51E8C(0x25206D6F7266205ALL, 0xE900000000000040, 0, 0, v6, 0, 0xE000000000000000, 0xD00000000000011ALL, 0x80000001C1E5B330);
  sub_1C1E00C70();
  v7 = *(a1 + 64);
  if (v7)
  {

    sub_1C1DD9E20(v7, 0, a2 & 1, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C1DDB404@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5C8, &qword_1C1E56C10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5D0, &qword_1C1E56C18);
  sub_1C1DC1124(&qword_1EBF1C5D8, &qword_1EBF1C5D0, &qword_1C1E56C18, MEMORY[0x1E697D658]);
  sub_1C1E5373C();
  KeyPath = swift_getKeyPath();
  *v3 = KeyPath;
  *(v3 + 8) = 0;
  v19 = 0x4042000000000000;
  sub_1C1DDEBFC(KeyPath, v9, v10);
  sub_1C1E527AC();
  sub_1C1DC1124(&qword_1EBF1C5E0, &qword_1EBF1C5C8, &qword_1C1E56C10, MEMORY[0x1E697D680]);
  sub_1C1DDF040(&qword_1EBF1C5E8, type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle, &unk_1C1E56B14);
  v11 = v18;
  sub_1C1E532FC();
  sub_1C1DDEDB8(v3, type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle);
  (*(v5 + 8))(v7, v4);
  v12 = sub_1C1E36158();
  swift_getKeyPath();
  v19 = v12;
  sub_1C1DDF040(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  v13 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
  swift_beginAccess();
  LOBYTE(v3) = *(v12 + v13);

  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = (v3 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5B8, &qword_1C1E56C00);
  v17 = (v11 + *(result + 36));
  *v17 = v14;
  v17[1] = sub_1C1DDF1C4;
  v17[2] = v15;
  return result;
}

uint64_t sub_1C1DDB834@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E536AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C1DDB874@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5C8, &qword_1C1E56C10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5D0, &qword_1C1E56C18);
  sub_1C1DC1124(&qword_1EBF1C5D8, &qword_1EBF1C5D0, &qword_1C1E56C18, MEMORY[0x1E697D658]);
  sub_1C1E5373C();
  KeyPath = swift_getKeyPath();
  *v3 = KeyPath;
  *(v3 + 8) = 0;
  v19 = 0x4042000000000000;
  sub_1C1DDEBFC(KeyPath, v9, v10);
  sub_1C1E527AC();
  sub_1C1DC1124(&qword_1EBF1C5E0, &qword_1EBF1C5C8, &qword_1C1E56C10, MEMORY[0x1E697D680]);
  sub_1C1DDF040(&qword_1EBF1C5E8, type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle, &unk_1C1E56B14);
  v11 = v18;
  sub_1C1E532FC();
  sub_1C1DDEDB8(v3, type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle);
  (*(v5 + 8))(v7, v4);
  v12 = sub_1C1E36158();
  swift_getKeyPath();
  v19 = v12;
  sub_1C1DDF040(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  v13 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
  swift_beginAccess();
  LOBYTE(v3) = *(v12 + v13);

  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = (v3 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5B8, &qword_1C1E56C00);
  v17 = (v11 + *(result + 36));
  *v17 = v14;
  v17[1] = sub_1C1DDED0C;
  v17[2] = v15;
  return result;
}

uint64_t sub_1C1DDBC2C(uint64_t a1, void (*a2)(void))
{
  sub_1C1E36158();

  a2(0);
}

uint64_t sub_1C1DDBCF4@<X0>(uint64_t a1@<X8>)
{
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE75DC0;
  result = sub_1C1E5314C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1C1DDBDBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E536AC();
  *a1 = result;
  return result;
}

uint64_t CalculateGraphBoundsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C488, &qword_1C1E56A10);
  MEMORY[0x1EEE9AC00](v40);
  v3 = &v37 - v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C490, &qword_1C1E56A18);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v37 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C498, &qword_1C1E56A20);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C4A0, &qword_1C1E56A28);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C4A8, &qword_1C1E56A30);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = *v1;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 || (v17 = [objc_opt_self() mainScreen], objc_msgSend(v17, sel_bounds), v19 = v18, v21 = v20, v23 = v22, v25 = v24, v17, v45.origin.x = v19, v45.origin.y = v21, v45.size.width = v23, v45.size.height = v25, CGRectGetWidth(v45) > 450.0))
  {
    *v9 = sub_1C1E52C9C();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C4B0, &qword_1C1E56A38);
    sub_1C1DDC34C(v14, &v9[*(v26 + 44)]);
    *&v9[*(v7 + 36)] = 257;
    v27 = sub_1C1DDE684();
    sub_1C1E533DC();
    sub_1C1DC1870(v9, &qword_1EBF1C4A0, &qword_1C1E56A28);
    (*(v11 + 16))(v6, v13, v10);
    swift_storeEnumTagMultiPayload();
    v43 = v7;
    v44 = v27;
    swift_getOpaqueTypeConformance2();
    v28 = sub_1C1DDE73C();
    v43 = v40;
    v44 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1C1E52CEC();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    *v3 = sub_1C1E52C9C();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C4E8, &qword_1C1E56A50);
    sub_1C1DDD35C(v14, &v3[*(v30 + 44)]);
    v31 = v40;
    *&v3[*(v40 + 36)] = 257;
    v32 = sub_1C1DDE73C();
    v33 = v37;
    sub_1C1E533DC();
    sub_1C1DC1870(v3, &qword_1EBF1C488, &qword_1C1E56A10);
    v34 = v38;
    v35 = v41;
    (*(v38 + 16))(v6, v33, v41);
    swift_storeEnumTagMultiPayload();
    v36 = sub_1C1DDE684();
    v43 = v7;
    v44 = v36;
    swift_getOpaqueTypeConformance2();
    v43 = v31;
    v44 = v32;
    swift_getOpaqueTypeConformance2();
    sub_1C1E52CEC();
    return (*(v34 + 8))(v33, v35);
  }
}

uint64_t sub_1C1DDC34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6A8, &qword_1C1E56D80);
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6B0, &qword_1C1E56D88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v96 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6B8, &qword_1C1E56D90);
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v96 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6C0, &qword_1C1E56D98);
  MEMORY[0x1EEE9AC00](v97);
  v102 = &v96 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6C8, &qword_1C1E56DA0);
  MEMORY[0x1EEE9AC00](v100);
  v104 = &v96 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6D0, &qword_1C1E56DA8);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6D8, &qword_1C1E56DB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v96 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6E0, &qword_1C1E56DB8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v96 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6E8, &qword_1C1E56DC0);
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v96 - v27;
  swift_getKeyPath();
  *&v118 = a1;
  sub_1C1DDF040(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v29 = *(a1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);
  v30 = 1;
  if (v29)
  {

    *v17 = sub_1C1E538DC();
    *(v17 + 1) = v31;
    *(v17 + 2) = 0;
    v17[24] = 1;
    *(v17 + 4) = 0;
    v17[40] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6F0, &qword_1C1E56DC8);
    sub_1C1DDCCE8(a1, v29, &v17[*(v32 + 44)]);
    sub_1C1E538DC();
    sub_1C1E529FC();
    sub_1C1DC18D0(v17, v20, &qword_1EBF1C6D8, &qword_1C1E56DB0);
    v33 = &v20[*(v18 + 36)];
    v34 = v116;
    *(v33 + 4) = v115;
    *(v33 + 5) = v34;
    *(v33 + 6) = v117;
    v35 = v112;
    *v33 = v111;
    *(v33 + 1) = v35;
    v36 = v114;
    *(v33 + 2) = v113;
    *(v33 + 3) = v36;
    v37 = sub_1C1E5300C();
    sub_1C1E5264C();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_1C1DC18D0(v20, v25, &qword_1EBF1C6E0, &qword_1C1E56DB8);
    v46 = &v25[*(v21 + 36)];
    *v46 = v37;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    sub_1C1DC18D0(v25, v28, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    *v6 = sub_1C1E52C0C();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6F8, &qword_1C1E56DD0);
    sub_1C1DDE4B0(a1, &v6[*(v47 + 44)]);
    sub_1C1E538DC();
    sub_1C1E529FC();
    v48 = v98;
    sub_1C1DC18D0(v6, v98, &qword_1EBF1C6B0, &qword_1C1E56D88);
    v49 = (v48 + *(v96 + 36));
    v50 = v123;
    v49[4] = v122;
    v49[5] = v50;
    v49[6] = v124;
    v51 = v119;
    *v49 = v118;
    v49[1] = v51;
    v52 = v121;
    v49[2] = v120;
    v49[3] = v52;
    v53 = sub_1C1E52FFC();
    sub_1C1E5264C();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v48;
    v63 = v102;
    sub_1C1DC18D0(v62, v102, &qword_1EBF1C6B8, &qword_1C1E56D90);
    v64 = v63 + *(v97 + 36);
    *v64 = v53;
    *(v64 + 8) = v55;
    *(v64 + 16) = v57;
    *(v64 + 24) = v59;
    *(v64 + 32) = v61;
    *(v64 + 40) = 0;
    v65 = sub_1C1E5302C();
    sub_1C1E5264C();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = v63;
    v75 = v104;
    sub_1C1DC18D0(v74, v104, &qword_1EBF1C6C0, &qword_1C1E56D98);
    v76 = v75 + *(v100 + 36);
    *v76 = v65;
    *(v76 + 8) = v67;
    *(v76 + 16) = v69;
    *(v76 + 24) = v71;
    *(v76 + 32) = v73;
    *(v76 + 40) = 0;
    v77 = sub_1C1E5301C();
    sub_1C1E5264C();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = v101;
    sub_1C1DC18D0(v75, v101, &qword_1EBF1C6C8, &qword_1C1E56DA0);
    v87 = v86 + *(v103 + 36);
    *v87 = v77;
    *(v87 + 8) = v79;
    *(v87 + 16) = v81;
    *(v87 + 24) = v83;
    *(v87 + 32) = v85;
    *(v87 + 40) = 0;
    v88 = v105;
    sub_1C1DC18D0(v86, v105, &qword_1EBF1C6D0, &qword_1C1E56DA8);
    v89 = v99;
    sub_1C1DC1424(v28, v99, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    v90 = v106;
    sub_1C1DC1424(v88, v106, &qword_1EBF1C6D0, &qword_1C1E56DA8);
    v91 = v107;
    sub_1C1DC1424(v89, v107, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C700, &qword_1C1E56DD8);
    sub_1C1DC1424(v90, v91 + *(v92 + 48), &qword_1EBF1C6D0, &qword_1C1E56DA8);

    sub_1C1DC1870(v88, &qword_1EBF1C6D0, &qword_1C1E56DA8);
    sub_1C1DC1870(v28, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    sub_1C1DC1870(v90, &qword_1EBF1C6D0, &qword_1C1E56DA8);
    sub_1C1DC1870(v89, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    v93 = v109;
    sub_1C1DC18D0(v91, v109, &qword_1EBF1C6A8, &qword_1C1E56D80);
    v30 = 0;
    v94 = v93;
  }

  else
  {
    v94 = v109;
  }

  return (*(v108 + 56))(v94, v30, 1, v110);
}

uint64_t sub_1C1DDCCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C708, &qword_1C1E56DE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C710, &qword_1C1E56DE8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v37 = (&v33 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  *v21 = 0;
  v22 = 1;
  v21[8] = 1;
  sub_1C1DDD170(a1, a2, sub_1C1DDAA80, sub_1C1DDAC14, &v33 + *(v23 + 36) - v20);
  *v18 = 0;
  v18[8] = 1;
  v24 = &v18[*(v10 + 36)];
  v34 = a2;
  sub_1C1DDD170(a1, a2, sub_1C1DDADAC, sub_1C1DDAF40, v24);
  swift_getKeyPath();
  v38 = a1;
  sub_1C1DDF040(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v25 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  if (*(a1 + v25) == 1)
  {
    v26 = v37;
    *v37 = 0;
    *(v26 + 8) = 1;
    sub_1C1DDD170(a1, v34, sub_1C1DDB0D8, sub_1C1DDB26C, v26 + *(v10 + 36));
    sub_1C1DC18D0(v26, v9, &qword_1EBF1C710, &qword_1C1E56DE8);
    v22 = 0;
  }

  (*(v11 + 56))(v9, v22, 1, v10);
  v27 = v37;
  sub_1C1DC1424(v21, v37, &qword_1EBF1C710, &qword_1C1E56DE8);
  sub_1C1DC1424(v18, v13, &qword_1EBF1C710, &qword_1C1E56DE8);
  v28 = v36;
  sub_1C1DC1424(v9, v36, &qword_1EBF1C708, &qword_1C1E56DE0);
  v29 = v9;
  v30 = v35;
  sub_1C1DC1424(v27, v35, &qword_1EBF1C710, &qword_1C1E56DE8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C718, &qword_1C1E56DF0);
  sub_1C1DC1424(v13, v30 + *(v31 + 48), &qword_1EBF1C710, &qword_1C1E56DE8);
  sub_1C1DC1424(v28, v30 + *(v31 + 64), &qword_1EBF1C708, &qword_1C1E56DE0);
  sub_1C1DC1870(v29, &qword_1EBF1C708, &qword_1C1E56DE0);
  sub_1C1DC1870(v18, &qword_1EBF1C710, &qword_1C1E56DE8);
  sub_1C1DC1870(v21, &qword_1EBF1C710, &qword_1C1E56DE8);
  sub_1C1DC1870(v28, &qword_1EBF1C708, &qword_1C1E56DE0);
  sub_1C1DC1870(v13, &qword_1EBF1C710, &qword_1C1E56DE8);
  return sub_1C1DC1870(v27, &qword_1EBF1C710, &qword_1C1E56DE8);
}

uint64_t sub_1C1DDD170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, __n128)@<X2>, void (*a4)(uint64_t, void)@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C720, &qword_1C1E56DF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  v27 = a1;
  a3(a2, v18);
  v27 = a1;
  v25(a2, 0);
  sub_1C1DC1424(v20, v13, &qword_1EBF1C720, &qword_1C1E56DF8);
  sub_1C1DC1424(v16, v10, &qword_1EBF1C720, &qword_1C1E56DF8);
  v21 = v26;
  sub_1C1DC1424(v13, v26, &qword_1EBF1C720, &qword_1C1E56DF8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C728, &qword_1C1E56E00);
  sub_1C1DC1424(v10, v21 + *(v22 + 48), &qword_1EBF1C720, &qword_1C1E56DF8);
  sub_1C1DC1870(v16, &qword_1EBF1C720, &qword_1C1E56DF8);
  sub_1C1DC1870(v20, &qword_1EBF1C720, &qword_1C1E56DF8);
  sub_1C1DC1870(v10, &qword_1EBF1C720, &qword_1C1E56DF8);
  return sub_1C1DC1870(v13, &qword_1EBF1C720, &qword_1C1E56DF8);
}

uint64_t sub_1C1DDD35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C558, &qword_1C1E56B78);
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C560, &qword_1C1E56B80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v96 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C568, &qword_1C1E56B88);
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v96 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C570, &qword_1C1E56B90);
  MEMORY[0x1EEE9AC00](v97);
  v102 = &v96 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C578, &qword_1C1E56B98);
  MEMORY[0x1EEE9AC00](v100);
  v104 = &v96 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C580, &qword_1C1E56BA0);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C588, &qword_1C1E56BA8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v96 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C590, &qword_1C1E56BB0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v96 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C598, &qword_1C1E56BB8);
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v96 - v27;
  swift_getKeyPath();
  *&v118 = a1;
  sub_1C1DDF040(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v29 = *(a1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);
  v30 = 1;
  if (v29)
  {

    *v17 = sub_1C1E538DC();
    *(v17 + 1) = v31;
    *(v17 + 2) = 0;
    v17[24] = 1;
    *(v17 + 4) = 0;
    v17[40] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5A0, &qword_1C1E56BE8);
    sub_1C1DDDCF8(a1, v29, &v17[*(v32 + 44)]);
    sub_1C1E538DC();
    sub_1C1E529FC();
    sub_1C1DC18D0(v17, v20, &qword_1EBF1C588, &qword_1C1E56BA8);
    v33 = &v20[*(v18 + 36)];
    v34 = v116;
    *(v33 + 4) = v115;
    *(v33 + 5) = v34;
    *(v33 + 6) = v117;
    v35 = v112;
    *v33 = v111;
    *(v33 + 1) = v35;
    v36 = v114;
    *(v33 + 2) = v113;
    *(v33 + 3) = v36;
    v37 = sub_1C1E5300C();
    sub_1C1E5264C();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_1C1DC18D0(v20, v25, &qword_1EBF1C590, &qword_1C1E56BB0);
    v46 = &v25[*(v21 + 36)];
    *v46 = v37;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    sub_1C1DC18D0(v25, v28, &qword_1EBF1C598, &qword_1C1E56BB8);
    *v6 = sub_1C1E52C9C();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5A8, &qword_1C1E56BF0);
    sub_1C1DDE4B0(a1, &v6[*(v47 + 44)]);
    sub_1C1E538DC();
    sub_1C1E529FC();
    v48 = v98;
    sub_1C1DC18D0(v6, v98, &qword_1EBF1C560, &qword_1C1E56B80);
    v49 = (v48 + *(v96 + 36));
    v50 = v123;
    v49[4] = v122;
    v49[5] = v50;
    v49[6] = v124;
    v51 = v119;
    *v49 = v118;
    v49[1] = v51;
    v52 = v121;
    v49[2] = v120;
    v49[3] = v52;
    v53 = sub_1C1E52FFC();
    sub_1C1E5264C();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v48;
    v63 = v102;
    sub_1C1DC18D0(v62, v102, &qword_1EBF1C568, &qword_1C1E56B88);
    v64 = v63 + *(v97 + 36);
    *v64 = v53;
    *(v64 + 8) = v55;
    *(v64 + 16) = v57;
    *(v64 + 24) = v59;
    *(v64 + 32) = v61;
    *(v64 + 40) = 0;
    v65 = sub_1C1E5302C();
    sub_1C1E5264C();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = v63;
    v75 = v104;
    sub_1C1DC18D0(v74, v104, &qword_1EBF1C570, &qword_1C1E56B90);
    v76 = v75 + *(v100 + 36);
    *v76 = v65;
    *(v76 + 8) = v67;
    *(v76 + 16) = v69;
    *(v76 + 24) = v71;
    *(v76 + 32) = v73;
    *(v76 + 40) = 0;
    v77 = sub_1C1E5301C();
    sub_1C1E5264C();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = v101;
    sub_1C1DC18D0(v75, v101, &qword_1EBF1C578, &qword_1C1E56B98);
    v87 = v86 + *(v103 + 36);
    *v87 = v77;
    *(v87 + 8) = v79;
    *(v87 + 16) = v81;
    *(v87 + 24) = v83;
    *(v87 + 32) = v85;
    *(v87 + 40) = 0;
    v88 = v105;
    sub_1C1DC18D0(v86, v105, &qword_1EBF1C580, &qword_1C1E56BA0);
    v89 = v99;
    sub_1C1DC1424(v28, v99, &qword_1EBF1C598, &qword_1C1E56BB8);
    v90 = v106;
    sub_1C1DC1424(v88, v106, &qword_1EBF1C580, &qword_1C1E56BA0);
    v91 = v107;
    sub_1C1DC1424(v89, v107, &qword_1EBF1C598, &qword_1C1E56BB8);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5B0, &qword_1C1E56BF8);
    sub_1C1DC1424(v90, v91 + *(v92 + 48), &qword_1EBF1C580, &qword_1C1E56BA0);

    sub_1C1DC1870(v88, &qword_1EBF1C580, &qword_1C1E56BA0);
    sub_1C1DC1870(v28, &qword_1EBF1C598, &qword_1C1E56BB8);
    sub_1C1DC1870(v90, &qword_1EBF1C580, &qword_1C1E56BA0);
    sub_1C1DC1870(v89, &qword_1EBF1C598, &qword_1C1E56BB8);
    v93 = v109;
    sub_1C1DC18D0(v91, v109, &qword_1EBF1C558, &qword_1C1E56B78);
    v30 = 0;
    v94 = v93;
  }

  else
  {
    v94 = v109;
  }

  return (*(v108 + 56))(v94, v30, 1, v110);
}

uint64_t sub_1C1DDDCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5F0, &qword_1C1E56CD0);
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v70 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5F8, &qword_1C1E56CD8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C600, &qword_1C1E56CE0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C608, &qword_1C1E56CE8);
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v82 = (&v69 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v69 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v69 - v31;
  *v32 = 0;
  v33 = 1;
  v32[8] = 1;
  v35 = *(v34 + 36);
  v85 = a1;
  v79 = &v69 - v31;
  sub_1C1DDAA80(a2, &v69 + v35 - v31);
  *v29 = 0;
  v29[8] = 1;
  v36 = *(v18 + 36);
  v85 = a1;
  v80 = v29;
  sub_1C1DDAC14(a2, 1, &v29[v36]);
  *v17 = 0;
  v17[8] = 1;
  v37 = *(v18 + 36);
  v85 = a1;
  sub_1C1DDADAC(a2, &v17[v37]);
  v38 = sub_1C1E5301C();
  sub_1C1E5264C();
  v39 = *(v10 + 36);
  v81 = v17;
  v40 = &v17[v39];
  *v40 = v38;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  *v26 = 0;
  v26[8] = 1;
  v45 = *(v18 + 36);
  v85 = a1;
  v72 = v26;
  sub_1C1DDAF40(a2, 1, &v26[v45]);
  swift_getKeyPath();
  v85 = a1;
  sub_1C1DDF040(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v46 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  if (*(a1 + v46) == 1)
  {
    *v14 = 0;
    v14[8] = 1;
    v47 = *(v18 + 36);
    v84 = a1;
    sub_1C1DDB0D8(a2, &v14[v47]);
    v48 = sub_1C1E5301C();
    sub_1C1E5264C();
    v49 = &v14[*(v10 + 36)];
    *v49 = v48;
    *(v49 + 1) = v50;
    *(v49 + 2) = v51;
    *(v49 + 3) = v52;
    *(v49 + 4) = v53;
    v49[40] = 0;
    v54 = v82;
    *v82 = 0;
    *(v54 + 8) = 1;
    v55 = *(v18 + 36);
    v84 = a1;
    sub_1C1DDB26C(a2, 1, v54 + v55);
    v56 = v69;
    sub_1C1DC1424(v14, v69, &qword_1EBF1C600, &qword_1C1E56CE0);
    v57 = v83;
    sub_1C1DC1424(v54, v83, &qword_1EBF1C608, &qword_1C1E56CE8);
    v58 = v70;
    sub_1C1DC1424(v56, v70, &qword_1EBF1C600, &qword_1C1E56CE0);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C618, &qword_1C1E56D20);
    sub_1C1DC1424(v57, v58 + *(v59 + 48), &qword_1EBF1C608, &qword_1C1E56CE8);
    sub_1C1DC1870(v54, &qword_1EBF1C608, &qword_1C1E56CE8);
    sub_1C1DC1870(v14, &qword_1EBF1C600, &qword_1C1E56CE0);
    sub_1C1DC1870(v57, &qword_1EBF1C608, &qword_1C1E56CE8);
    sub_1C1DC1870(v56, &qword_1EBF1C600, &qword_1C1E56CE0);
    sub_1C1DC18D0(v58, v78, &qword_1EBF1C5F0, &qword_1C1E56CD0);
    v33 = 0;
  }

  v60 = v78;
  (*(v73 + 56))(v78, v33, 1, v75);
  v61 = v82;
  sub_1C1DC1424(v79, v82, &qword_1EBF1C608, &qword_1C1E56CE8);
  v62 = v83;
  sub_1C1DC1424(v80, v83, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1424(v81, v14, &qword_1EBF1C600, &qword_1C1E56CE0);
  v63 = v72;
  v64 = v76;
  sub_1C1DC1424(v72, v76, &qword_1EBF1C608, &qword_1C1E56CE8);
  v65 = v74;
  sub_1C1DC1424(v60, v74, &qword_1EBF1C5F8, &qword_1C1E56CD8);
  v71 = v14;
  v66 = v77;
  sub_1C1DC1424(v61, v77, &qword_1EBF1C608, &qword_1C1E56CE8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C610, &qword_1C1E56D18);
  sub_1C1DC1424(v62, v66 + v67[12], &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1424(v14, v66 + v67[16], &qword_1EBF1C600, &qword_1C1E56CE0);
  sub_1C1DC1424(v64, v66 + v67[20], &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1424(v65, v66 + v67[24], &qword_1EBF1C5F8, &qword_1C1E56CD8);
  sub_1C1DC1870(v60, &qword_1EBF1C5F8, &qword_1C1E56CD8);
  sub_1C1DC1870(v63, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1870(v81, &qword_1EBF1C600, &qword_1C1E56CE0);
  sub_1C1DC1870(v80, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1870(v79, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1870(v65, &qword_1EBF1C5F8, &qword_1C1E56CD8);
  sub_1C1DC1870(v64, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1870(v71, &qword_1EBF1C600, &qword_1C1E56CE0);
  sub_1C1DC1870(v83, &qword_1EBF1C608, &qword_1C1E56CE8);
  return sub_1C1DC1870(v82, &qword_1EBF1C608, &qword_1C1E56CE8);
}

uint64_t sub_1C1DDE4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5B8, &qword_1C1E56C00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  v19 = a1;
  sub_1C1DDB404(&v18 - v14);
  v19 = a1;
  sub_1C1DDB874(v12);
  sub_1C1DC1424(v15, v9, &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1424(v12, v6, &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1424(v9, a2, &qword_1EBF1C5B8, &qword_1C1E56C00);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5C0, &qword_1C1E56C08);
  sub_1C1DC1424(v6, a2 + *(v16 + 48), &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1870(v12, &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1870(v15, &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1870(v6, &qword_1EBF1C5B8, &qword_1C1E56C00);
  return sub_1C1DC1870(v9, &qword_1EBF1C5B8, &qword_1C1E56C00);
}

unint64_t sub_1C1DDE684()
{
  result = qword_1EBF1C4B8;
  if (!qword_1EBF1C4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C4A0, &qword_1C1E56A28);
    sub_1C1DC1124(&qword_1EBF1C4C0, &qword_1EBF1C4C8, &qword_1C1E56A40, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C4B8);
  }

  return result;
}

unint64_t sub_1C1DDE73C()
{
  result = qword_1EBF1C4D0;
  if (!qword_1EBF1C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C488, &qword_1C1E56A10);
    sub_1C1DC1124(&qword_1EBF1C4D8, &qword_1EBF1C4E0, &qword_1C1E56A48, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C4D0);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CalculateGraphBoundsView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CalculateGraphBoundsView(uint64_t result, int a2, int a3)
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

unint64_t sub_1C1DDE958()
{
  result = qword_1EBF1C4F0;
  if (!qword_1EBF1C4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C4F8, &qword_1C1E56AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C4A0, &qword_1C1E56A28);
    sub_1C1DDE684();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C488, &qword_1C1E56A10);
    sub_1C1DDE73C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C4F0);
  }

  return result;
}

uint64_t type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle(uint64_t a1)
{
  result = qword_1EBF1C508;
  if (!qword_1EBF1C508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1DDEACC(uint64_t a1)
{
  sub_1C1DDEB50();
  if (v1 <= 0x3F)
  {
    sub_1C1DDEBA0(319, v1, v2);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1DDEB50()
{
  if (!qword_1EBF1C518)
  {
    v0 = sub_1C1E5274C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1C518);
    }
  }
}

void sub_1C1DDEBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1EBF1C520)
  {
    sub_1C1DDEBFC(0, a2, a3);
    v3 = sub_1C1E527CC();
    if (!v4)
    {
      atomic_store(v3, &qword_1EBF1C520);
    }
  }
}

unint64_t sub_1C1DDEBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1C528;
  if (!qword_1EBF1C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C528);
  }

  return result;
}

uint64_t sub_1C1DDEC6C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1C1DDEC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E529CC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DDED54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateScrubberView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DDEDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C1DDEE18()
{
  result = qword_1EBF1C668;
  if (!qword_1EBF1C668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C660, &qword_1C1E56D68);
    sub_1C1DDEEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C668);
  }

  return result;
}

unint64_t sub_1C1DDEEA4()
{
  result = qword_1EBF1C670;
  if (!qword_1EBF1C670)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C678, &qword_1C1E56D70);
    sub_1C1DDEF30(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C670);
  }

  return result;
}

unint64_t sub_1C1DDEF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1C680;
  if (!qword_1EBF1C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C680);
  }

  return result;
}

unint64_t sub_1C1DDEF84()
{
  result = qword_1EBF1C688;
  if (!qword_1EBF1C688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C630, &qword_1C1E56D38);
    sub_1C1DDF040(&qword_1EBF1C690, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C688);
  }

  return result;
}

uint64_t sub_1C1DDF040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1DDF088()
{
  result = qword_1EBF1C6A0;
  if (!qword_1EBF1C6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C698, &qword_1C1E56D78);
    sub_1C1DDEE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C6A0);
  }

  return result;
}

unint64_t sub_1C1DDF10C()
{
  result = qword_1EBF1C730;
  if (!qword_1EBF1C730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C538, &qword_1C1E56B58);
    sub_1C1DC1124(&qword_1EBF1C738, &qword_1EBF1C740, &qword_1C1E56E08, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C730);
  }

  return result;
}

uint64_t CalculateGraph.image(size:)(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1DDF268, 0, 0);
}

uint64_t sub_1C1DDF268()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_1C1E5485C();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v3;
  v6[6] = v2;
  v7 = sub_1C1DE0DE8(0, 0, v1, &unk_1C1E56E30, v6);
  v0[7] = v7;
  sub_1C1DC1870(v1, &qword_1EBF1C748, &qword_1C1E56E20);
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
  *v8 = v0;
  v8[1] = sub_1C1DDF400;

  return MEMORY[0x1EEE6DA40](v0 + 2, v7, v9);
}

uint64_t sub_1C1DDF400()
{

  return MEMORY[0x1EEE6DFA0](sub_1C1DDF518, 0, 0);
}

uint64_t sub_1C1DDF518()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C1DDF580(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a2;
  *(v6 + 128) = a3;
  *(v6 + 104) = a1;
  *(v6 + 112) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = *(type metadata accessor for Function(0) - 8);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1DDF678, 0, 0);
}

uint64_t sub_1C1DDF678()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
    v5 = v0[13];
    goto LABEL_5;
  }

  v2 = Strong;
  v3 = sub_1C1E36158();
  swift_getKeyPath();
  v0[8] = v3;
  sub_1C1DC4D68(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  LOBYTE(v4) = *(v3 + v4);

  if (v4)
  {
    v5 = v0[13];

LABEL_5:
    *v5 = 0;

    v6 = v0[1];

    return v6();
  }

  v8 = sub_1C1E36158();
  v9 = *(v8 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);

  [v9 lock];
  swift_getKeyPath();
  v0[9] = v8;
  sub_1C1E520BC();

  v10 = *(v8 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v9 unlock];

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v0[18];
    v28 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate;
    v13 = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v27 = *(v12 + 72);
    do
    {
      v14 = v0[19];
      sub_1C1DE160C(v13, v14);

      sub_1C1DE1670(v14);
      swift_getKeyPath();
      v0[10] = v2;
      sub_1C1DC4D68(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
      sub_1C1E520BC();

      if (*(v2 + v28) == 1)
      {
        swift_getKeyPath();
        v15 = swift_task_alloc();
        *(v15 + 16) = v2;
        *(v15 + 24) = 0;
        v0[12] = v2;
        sub_1C1E520AC();

        sub_1C1E33630();
      }

      swift_getKeyPath();
      v0[11] = v2;
      sub_1C1E520BC();

      sub_1C1E24AC8();

      sub_1C1E5246C();

      v13 += v27;
      --v11;
    }

    while (v11);
  }

  v16 = v0[17];
  v18 = v0[15];
  v17 = v0[16];
  v19 = sub_1C1E5485C();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  sub_1C1E5483C();

  v20 = sub_1C1E5482C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v2;
  v21[5] = v18;
  v21[6] = v17;
  v23 = sub_1C1E0A290(0, 0, v16, &unk_1C1E56F00, v21);
  v0[21] = v23;
  v24 = swift_task_alloc();
  v0[22] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
  *v24 = v0;
  v24[1] = sub_1C1DDFC0C;
  v26 = v0[13];

  return MEMORY[0x1EEE6DA40](v26, v23, v25);
}

uint64_t sub_1C1DDFC0C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C1DDFD24, 0, 0);
}

uint64_t sub_1C1DDFD24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C1DDFD98(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1DE184C;

  return sub_1C1DDF580(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1C1DDFE68(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1336) = a3;
  *(v6 + 1328) = a2;
  *(v6 + 1320) = a6;
  *(v6 + 1312) = a1;
  *(v6 + 1344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  *(v6 + 1352) = swift_task_alloc();
  *(v6 + 1360) = swift_task_alloc();
  *(v6 + 1368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C760, &unk_1C1E57C80);
  *(v6 + 1376) = swift_task_alloc();
  *(v6 + 1384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C768, &qword_1C1E56F08);
  *(v6 + 1392) = swift_task_alloc();
  sub_1C1E5483C();
  *(v6 + 1400) = sub_1C1E5482C();
  v8 = sub_1C1E5481C();

  return MEMORY[0x1EEE6DFA0](sub_1C1DDFFCC, v8, v7);
}

uint64_t sub_1C1DDFFCC()
{

  v1 = sub_1C1E36158();
  swift_getKeyPath();
  *(v0 + 1304) = v1;
  sub_1C1DC4D68(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  swift_beginAccess();
  v109 = *(v1 + 17);

  v2 = sub_1C1E36158();
  swift_beginAccess();
  if (*(v2 + 17))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    *(v0 + 1272) = v2;

    sub_1C1E520AC();
  }

  else
  {
    *(v2 + 17) = 0;
  }

  v110 = *(v0 + 1392);
  v115 = *(v0 + 1384);
  v4 = *(v0 + 1376);
  v5 = *(v0 + 1368);
  v6 = *(v0 + 1360);
  v7 = *(v0 + 1352);
  v8 = sub_1C1E36158();
  *(v4 + v5[10]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *v4 = v8;
  v4[1] = 0;
  v108 = v4 + 1;
  v4[2] = 0;
  v11 = v4 + v5[11];
  *v11 = KeyPath;
  v11[8] = 0;
  v12 = v4 + v5[12];
  *v12 = v10;
  v12[8] = 0;
  v13 = v4 + v5[13];
  *(v0 + 1240) = 0;
  *(v0 + 1248) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  sub_1C1E536DC();
  v14 = *(v0 + 824);
  v15 = *(v0 + 832);
  *v13 = *(v0 + 816);
  v13[8] = v14;
  *(v13 + 2) = v15;
  v16 = v4 + v5[14];
  *(v0 + 1256) = 0;
  *(v0 + 1264) = 1;
  sub_1C1E536DC();
  v17 = *(v0 + 872);
  v18 = *(v0 + 880);
  *v16 = *(v0 + 864);
  v16[8] = v17;
  *(v16 + 2) = v18;
  v19 = v4 + v5[15];
  *(v0 + 682) = 0;
  sub_1C1E536DC();
  v20 = *(v0 + 1120);
  *v19 = *(v0 + 1112);
  *(v19 + 1) = v20;
  v21 = (v4 + v5[16]);
  *(v0 + 1296) = sub_1C1E5355C();
  sub_1C1E536DC();
  v22 = *(v0 + 1152);
  *v21 = *(v0 + 1144);
  v21[1] = v22;
  v23 = type metadata accessor for Function(0);
  v106 = *(*(v23 - 8) + 56);
  v107 = v23;
  v106(v6, 1, 1);
  sub_1C1DC1424(v6, v7, &qword_1EBF1C758, &qword_1C1E579C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v6, &qword_1EBF1C758, &qword_1C1E579C0);
  v24 = v4 + v5[18];
  *(v0 + 1008) = 0;
  *(v0 + 1016) = 0;
  *(v0 + 1024) = 2;
  sub_1C1E536DC();
  v25 = *(v0 + 512);
  v26 = *(v0 + 520);
  *v24 = *(v0 + 496);
  v24[16] = v25;
  *(v24 + 3) = v26;
  v27 = v4 + v5[19];
  *(v0 + 1056) = 0;
  *(v0 + 1064) = 0;
  *(v0 + 1072) = 0;
  sub_1C1E536DC();
  v28 = *(v0 + 576);
  v29 = *(v0 + 584);
  *v27 = *(v0 + 560);
  v27[16] = v28;
  *(v27 + 3) = v29;
  v30 = v4 + v5[20];
  *(v0 + 688) = 0;
  *(v0 + 696) = 0;
  *(v0 + 704) = 0;
  *(v0 + 712) = 2;
  sub_1C1E536DC();
  v31 = *(v0 + 176);
  v32 = *(v0 + 184);
  v33 = *(v0 + 192);
  *v30 = *(v0 + 160);
  *(v30 + 2) = v31;
  v30[24] = v32;
  *(v30 + 4) = v33;
  v34 = v4 + v5[21];
  *(v0 + 1080) = 0;
  *(v0 + 1088) = 0;
  sub_1C1E536DC();
  v35 = *(v0 + 856);
  *v34 = *(v0 + 840);
  *(v34 + 2) = v35;
  v36 = v4 + v5[22];
  type metadata accessor for CGSize(0);
  *(v0 + 1160) = 0;
  *(v0 + 1168) = 0;
  sub_1C1E536DC();
  v37 = *(v0 + 784);
  *v36 = *(v0 + 768);
  *(v36 + 2) = v37;
  v38 = v4 + v5[23];
  type metadata accessor for CGRect(0);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_1C1E536DC();
  v39 = *(v0 + 392);
  v40 = *(v0 + 376);
  *v38 = *(v0 + 360);
  *(v38 + 1) = v40;
  *(v38 + 4) = v39;
  v41 = v4 + v5[24];
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  sub_1C1E536DC();
  v42 = *(v0 + 352);
  v43 = *(v0 + 336);
  *v41 = *(v0 + 320);
  *(v41 + 1) = v43;
  *(v41 + 4) = v42;
  sub_1C1DF2DCC(nullsub_1, 0, v110);
  sub_1C1DC1870(v4, &qword_1EBF1C760, &unk_1C1E57C80);
  sub_1C1E538DC();
  sub_1C1E5281C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C780, &qword_1C1E56FD0);
  v45 = (v110 + *(v44 + 36));
  v47 = *(v0 + 32);
  v46 = *(v0 + 48);
  *v45 = *(v0 + 16);
  v45[1] = v47;
  v45[2] = v46;
  v48 = (v110 + *(v115 + 36));
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C788, &qword_1C1E56FD8);
  v49 = *(v114 + 28);
  v50 = *MEMORY[0x1E697DBB8];
  v51 = sub_1C1E526EC();
  v112 = *(*(v51 - 8) + 104);
  v113 = v51;
  v112(v48 + v49, v50);
  *v48 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C790, &qword_1C1E57010);
  swift_allocObject();
  MEMORY[0x1C690E480](v110);
  v52 = sub_1C1E5287C();

  if (v52)
  {
    v111 = *(v0 + 1392);
    v53 = *(v0 + 1376);
    v54 = *(v0 + 1360);
    v104 = *(v0 + 1352);
    v103 = v52;
    v105 = v52;
    v55 = sub_1C1E36158();
    *(v53 + v5[10]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v56 = swift_getKeyPath();
    v57 = swift_getKeyPath();
    *v53 = v55;
    *v108 = 0;
    v108[1] = 0;
    v58 = v53 + v5[11];
    *v58 = v56;
    v58[8] = 0;
    v59 = v53 + v5[12];
    *v59 = v57;
    v59[8] = 0;
    v60 = v53 + v5[13];
    *(v0 + 1224) = 0;
    *(v0 + 1232) = 1;

    sub_1C1E536DC();
    v61 = *(v0 + 944);
    v62 = *(v0 + 952);
    *v60 = *(v0 + 936);
    v60[8] = v61;
    *(v60 + 2) = v62;
    v63 = v53 + v5[14];
    *(v0 + 1208) = 0;
    *(v0 + 1216) = 1;
    sub_1C1E536DC();
    v64 = *(v0 + 968);
    v65 = *(v0 + 976);
    *v63 = *(v0 + 960);
    v63[8] = v64;
    *(v63 + 2) = v65;
    v66 = v53 + v5[15];
    *(v0 + 681) = 0;
    sub_1C1E536DC();
    v67 = *(v0 + 1136);
    *v66 = *(v0 + 1128);
    *(v66 + 1) = v67;
    v68 = (v53 + v5[16]);
    *(v0 + 1280) = sub_1C1E5355C();
    sub_1C1E536DC();
    v69 = *(v0 + 1104);
    *v68 = *(v0 + 1096);
    v68[1] = v69;
    (v106)(v54, 1, 1, v107);
    sub_1C1DC1424(v54, v104, &qword_1EBF1C758, &qword_1C1E579C0);
    sub_1C1E536DC();
    sub_1C1DC1870(v54, &qword_1EBF1C758, &qword_1C1E579C0);
    v70 = v53 + v5[18];
    *(v0 + 1032) = 0;
    *(v0 + 1040) = 0;
    *(v0 + 1048) = 2;
    sub_1C1E536DC();
    v71 = *(v0 + 608);
    v72 = *(v0 + 616);
    *v70 = *(v0 + 592);
    v70[16] = v71;
    *(v70 + 3) = v72;
    v73 = v53 + v5[19];
    *(v0 + 984) = 0;
    *(v0 + 992) = 0;
    *(v0 + 1000) = 0;
    sub_1C1E536DC();
    v74 = *(v0 + 544);
    v75 = *(v0 + 552);
    *v73 = *(v0 + 528);
    v73[16] = v74;
    *(v73 + 3) = v75;
    v76 = v53 + v5[20];
    *(v0 + 656) = 0;
    *(v0 + 664) = 0;
    *(v0 + 672) = 0;
    *(v0 + 680) = 2;
    sub_1C1E536DC();
    v77 = *(v0 + 296);
    v78 = *(v0 + 304);
    v79 = *(v0 + 312);
    *v76 = *(v0 + 280);
    *(v76 + 2) = v77;
    v76[24] = v78;
    *(v76 + 4) = v79;
    v80 = v53 + v5[21];
    *(v0 + 1176) = 0;
    *(v0 + 1184) = 0;
    sub_1C1E536DC();
    v81 = *(v0 + 808);
    *v80 = *(v0 + 792);
    *(v80 + 2) = v81;
    v82 = v53 + v5[22];
    *(v0 + 1192) = 0;
    *(v0 + 1200) = 0;
    sub_1C1E536DC();
    v83 = *(v0 + 736);
    *v82 = *(v0 + 720);
    *(v82 + 2) = v83;
    v84 = v53 + v5[23];
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    sub_1C1E536DC();
    v85 = *(v0 + 272);
    v86 = *(v0 + 256);
    *v84 = *(v0 + 240);
    *(v84 + 1) = v86;
    *(v84 + 4) = v85;
    v87 = v53 + v5[24];
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    sub_1C1E536DC();
    v88 = *(v0 + 232);
    v89 = *(v0 + 216);
    *v87 = *(v0 + 200);
    *(v87 + 1) = v89;
    *(v87 + 4) = v88;
    sub_1C1DF2DCC(nullsub_1, 0, v111);
    sub_1C1DC1870(v53, &qword_1EBF1C760, &unk_1C1E57C80);
    sub_1C1E538DC();
    sub_1C1E5281C();
    v90 = (v111 + *(v44 + 36));
    v92 = *(v0 + 128);
    v91 = *(v0 + 144);
    *v90 = *(v0 + 112);
    v90[1] = v92;
    v90[2] = v91;
    v93 = (v111 + *(v115 + 36));
    (v112)(v93 + *(v114 + 28), *MEMORY[0x1E697DBA8], v113);
    *v93 = swift_getKeyPath();
    swift_allocObject();
    MEMORY[0x1C690E480](v111);
    v94 = sub_1C1E5287C();

    if (v94)
    {
      v95 = [v105 imageAsset];
      if (v95)
      {
        v96 = v95;
        *(v0 + 96) = sub_1C1DE0DD8;
        *(v0 + 104) = 0;
        *(v0 + 64) = MEMORY[0x1E69E9820];
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_1C1E054A4;
        *(v0 + 88) = &block_descriptor;
        v97 = _Block_copy((v0 + 64));
        v98 = [objc_opt_self() traitCollectionWithTraits_];
        _Block_release(v97);

        result = swift_isEscapingClosureAtFileLocation();
        if (result)
        {
          __break(1u);
          return result;
        }

        [v96 registerImage:v94 withTraitCollection:v98];
      }
    }

    v52 = v103;
  }

  v100 = sub_1C1E36158();
  swift_beginAccess();
  if (v109 == *(v100 + 17))
  {
    *(v100 + 17) = v109;
  }

  else
  {
    swift_getKeyPath();
    v101 = swift_task_alloc();
    *(v101 + 16) = v100;
    *(v101 + 24) = v109;
    *(v0 + 1288) = v100;

    sub_1C1E520AC();
  }

  **(v0 + 1312) = v52;

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_1C1DE0DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C1DC1424(a3, v25 - v10, &qword_1EBF1C748, &qword_1C1E56E20);
  v12 = sub_1C1E5485C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1DC1870(v11, &qword_1EBF1C748, &qword_1C1E56E20);
  }

  else
  {
    sub_1C1E5484C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C1E5481C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C1E5464C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C1DE10BC(uint64_t a1)
{
  v2 = sub_1C1E526EC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1E52A3C();
}

uint64_t sub_1C1DE1184(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C1DE1278;

  return v5(v2 + 16);
}

uint64_t sub_1C1DE1278()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C1DE13A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1DE184C;

  return sub_1C1DE1184(a1, v4);
}

uint64_t sub_1C1DE1460(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1DE1518;

  return sub_1C1DE1184(a1, v4);
}

uint64_t sub_1C1DE1518()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C1DE160C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Function(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DE1670(uint64_t a1)
{
  v2 = type metadata accessor for Function(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1DE170C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1DE1518;

  return sub_1C1DDFE68(a1, v7, v8, v4, v5, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1DE1864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1DE18A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1DE191C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C798, &qword_1C1E57098);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v45 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C7A0, &qword_1C1E570A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C7A8, &qword_1C1E570A8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - v11;
  v13 = *(v1 + 8);
  v14 = *(v1 + 32);
  v15 = *v1 * 0.5;
  v16 = *(sub_1C1E529CC() + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1C1E52C8C();
  (*(*(v18 - 8) + 104))(v6 + v16, v17, v18);
  *v6 = v15;
  v6[1] = v15;
  LODWORD(v17) = sub_1C1E52D3C();
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C7B0, &qword_1C1E570B0) + 36)) = v17;
  sub_1C1E538DC();
  sub_1C1E5281C();
  v19 = (v6 + *(v4 + 44));
  v20 = v45[1];
  *v19 = v45[0];
  v19[1] = v20;
  v19[2] = v45[2];
  v21 = v13 * v13;
  if (v14 == 1)
  {
    v22 = 0.25 - v21 * 0.25;
  }

  else
  {
    v23 = v21 * -25.0 + 1.0;
    if (v23 <= 0.0)
    {
      v23 = 0.0;
    }

    v22 = 0.6 - v21 * 0.6 + v23 * 0.4;
  }

  sub_1C1DC18D0(v6, v9, &qword_1EBF1C798, &qword_1C1E57098);
  *&v9[*(v7 + 36)] = v22;
  v24 = sub_1C1E5301C();
  sub_1C1E5264C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1C1DC18D0(v9, v12, &qword_1EBF1C7A0, &qword_1C1E570A0);
  v33 = &v12[*(v10 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_1C1E5302C();
  sub_1C1E5264C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1C1DC18D0(v12, a1, &qword_1EBF1C7A8, &qword_1C1E570A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C7B8, &qword_1C1E570B8);
  v44 = a1 + *(result + 36);
  *v44 = v34;
  *(v44 + 8) = v36;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v42;
  *(v44 + 40) = 0;
  return result;
}

unint64_t sub_1C1DE1CCC()
{
  result = qword_1EBF1C7C0;
  if (!qword_1EBF1C7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7B8, &qword_1C1E570B8);
    sub_1C1DE1D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7C0);
  }

  return result;
}

unint64_t sub_1C1DE1D58()
{
  result = qword_1EBF1C7C8;
  if (!qword_1EBF1C7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7A8, &qword_1C1E570A8);
    sub_1C1DE1DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7C8);
  }

  return result;
}

unint64_t sub_1C1DE1DE4()
{
  result = qword_1EBF1C7D0;
  if (!qword_1EBF1C7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7A0, &qword_1C1E570A0);
    sub_1C1DE1E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7D0);
  }

  return result;
}

unint64_t sub_1C1DE1E70()
{
  result = qword_1EBF1C7D8;
  if (!qword_1EBF1C7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C798, &qword_1C1E57098);
    sub_1C1DE1EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7D8);
  }

  return result;
}

unint64_t sub_1C1DE1EFC()
{
  result = qword_1EBF1C7E0;
  if (!qword_1EBF1C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7B0, &qword_1C1E570B0);
    sub_1C1DE1F88();
    sub_1C1DE1FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7E0);
  }

  return result;
}

unint64_t sub_1C1DE1F88()
{
  result = qword_1EBF1C7E8;
  if (!qword_1EBF1C7E8)
  {
    sub_1C1E529CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7E8);
  }

  return result;
}

unint64_t sub_1C1DE1FE0()
{
  result = qword_1EBF1C7F0;
  if (!qword_1EBF1C7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7F8, &qword_1C1E570C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7F0);
  }

  return result;
}

id UIFont.rounded.getter()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithDesign_];

  if (v2)
  {
    [v6 pointSize];
    v4 = [objc_opt_self() fontWithDescriptor:v2 size:v3];

    return v4;
  }

  else
  {

    return v6;
  }
}

void CalculateExpressionTypesetView.init(expression:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1C1E53D7C();

  if (v4)
  {
    v5 = [v4 formattedResult];

    v4 = sub_1C1E545FC();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0x4032000000000000;
}

void CalculateExpressionTypesetView.init(expression:fontSize:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{

  v6 = sub_1C1E53D7C();

  if (v6)
  {
    v7 = [v6 formattedResult];

    v6 = sub_1C1E545FC();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 24) = 1;
  *(a2 + 32) = a3;
}

uint64_t CalculateExpressionTypesetView.init(expression:result:showResult:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0x4032000000000000;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t CalculateExpressionTypesetView.init(expression:result:showResult:fontSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  return result;
}

double CalculateExpressionTypesetView.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v74 = a1;
  v2 = sub_1C1E51E2C();
  v72 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1E51F9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C1E53CBC();
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  if (sub_1C1E53D3C() == 1)
  {
    v12 = sub_1C1E53B0C();
    v14 = sub_1C1E09930(v12, v13);
    v16 = v15;
    v18 = v17;

    v19 = v9;
    if (!v9)
    {
      v20 = sub_1C1E53D7C();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 formattedResult];
        v73 = v16;
        v23 = v22;

        v8 = sub_1C1E545FC();
        v19 = v24;

        v16 = v73;
      }

      else
      {
        v8 = 0;
        v19 = 0;
      }
    }

    if (!v10)
    {
      goto LABEL_17;
    }

    v45 = sub_1C1E53B3C();
    if (v45)
    {
      goto LABEL_17;
    }

    v45 = sub_1C1E53BAC();
    if (!v46)
    {
      v57 = 1;
      goto LABEL_18;
    }

    v45 = sub_1C1E53D7C();
    if (v45)
    {
      v64 = v45;
      v65 = [v45 isTrivial];

      v57 = v65 ^ 1;
    }

    else
    {
LABEL_17:
      v57 = 0;
    }

LABEL_18:
    v84 = v18 & 1;
    v75 = 0;
    v76 = v14;
    v77 = v16;
    LOBYTE(v78) = v18 & 1;
    v79 = v8;
    v80 = v19;
    v81 = v57;
    v82 = v11;
    v83 = 0;
    goto LABEL_19;
  }

  v67 = v2;
  v25 = [objc_opt_self() labelColor];
  v26 = [v25 CGColor];

  v70 = sub_1C1E5351C();
  v68 = sub_1C1E53B0C();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v30 = *MEMORY[0x1E6992250];
  *(inited + 32) = *MEMORY[0x1E6992250];
  v69 = v5;
  v31 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v32 = v30;
  v33 = [v31 initWithUnsignedInteger_];
  v34 = sub_1C1DE2864();
  *(inited + 40) = v33;
  v35 = *MEMORY[0x1E6992228];
  *(inited + 64) = v34;
  *(inited + 72) = v35;
  v36 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v37 = v35;
  v38 = [v36 initWithBool_];
  *(inited + 104) = v34;
  v39 = v68;
  *(inited + 80) = v38;
  sub_1C1DF776C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
  swift_arrayDestroy();
  (*(v73 + 104))(v7, *MEMORY[0x1E6992100], v69);
  sub_1C1E51F8C();
  sub_1C1E5444C();
  swift_allocObject();
  sub_1C1E5445C();
  sub_1C1E53D4C();
  v40 = sub_1C1E53B0C();
  v42 = v41;

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {
    goto LABEL_8;
  }

  *&v85 = v39;
  *(&v85 + 1) = v28;
  v49 = v71;
  v50 = sub_1C1E51E1C();
  sub_1C1DC733C(v50, v51, v52);
  v53 = sub_1C1E549FC();
  v55 = v54;
  (*(v72 + 8))(v49, v67);

  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
LABEL_8:

    v39 = sub_1C1E53B0C();
    v28 = v44;

    v48 = 0;
  }

  else
  {

    v48 = 1;
  }

  v84 = 1;
  v76 = v39;
  v77 = v28;
  v78 = v11;
  LOBYTE(v79) = v48;
  v80 = v70;
  v83 = 1;
LABEL_19:
  v58 = sub_1C1DE28B0(v45, v46, v47);
  sub_1C1DE2904(v58, v59, v60);
  sub_1C1E52CEC();
  v61 = v86;
  v62 = v74;
  *v74 = v85;
  v62[1] = v61;
  v62[2] = v87[0];
  result = *(v87 + 9);
  *(v62 + 41) = *(v87 + 9);
  return result;
}

unint64_t sub_1C1DE2864()
{
  result = qword_1EBF1C808;
  if (!qword_1EBF1C808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1C808);
  }

  return result;
}

unint64_t sub_1C1DE28B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1C818;
  if (!qword_1EBF1C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C818);
  }

  return result;
}

unint64_t sub_1C1DE2904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1C820;
  if (!qword_1EBF1C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C820);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1DE2988(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C1DE29D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1DE2A28()
{
  result = qword_1EBF1C828;
  if (!qword_1EBF1C828)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C830, &unk_1C1E57180);
    v6 = sub_1C1DE28B0(v1, v2, v3);
    sub_1C1DE2904(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C828);
  }

  return result;
}

void *CalculateScrubberView.init(scrubber:isCompact:style:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a2;
  v48 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v47 = *a3;
  v11 = type metadata accessor for CalculateScrubberView(0);
  *&v50 = 0x405E800000000000;
  sub_1C1DDEBFC(v11, v12, v13);
  sub_1C1E527AC();
  *&v50 = 0x4043000000000000;
  sub_1C1E527AC();
  *&v50 = 0x405CC00000000000;
  sub_1C1E527AC();
  *&v50 = 0x4041000000000000;
  sub_1C1E527AC();
  *&v50 = 0x4038000000000000;
  sub_1C1E527AC();
  *&v50 = 0x4041000000000000;
  sub_1C1E527AC();
  *&v50 = 0x4024000000000000;
  sub_1C1E527AC();
  v14 = a4 + v11[13];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  sub_1C1E52D8C();
  v15 = a4 + v11[15];
  *v15 = sub_1C1E5268C() & 1;
  *(v15 + 8) = v16;
  *(v15 + 16) = v17 & 1;
  v18 = a4 + v11[16];
  v52 = 0;
  v53 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C840, &qword_1C1E571F8);
  sub_1C1E536DC();
  v19 = v51;
  *v18 = v50;
  *(v18 + 16) = v19;
  v20 = v11[17];
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C848, &qword_1C1E57200);
  sub_1C1E536DC();
  *(a4 + v20) = v50;
  v21 = (a4 + v11[19]);
  v52 = 0;
  sub_1C1E536DC();
  v22 = *(&v50 + 1);
  *v21 = v50;
  v21[1] = v22;
  v23 = v11[20];
  v52 = 0;
  sub_1C1E536DC();
  *(a4 + v23) = v50;
  v24 = a4 + v11[21];
  LOBYTE(v52) = 0;
  sub_1C1E536DC();
  v25 = *(&v50 + 1);
  *v24 = v50;
  *(v24 + 8) = v25;
  v26 = a4 + v11[22];
  v52 = 0;
  sub_1C1E5277C();
  v27 = *(&v50 + 1);
  v28 = v51;
  *v26 = v50;
  *(v26 + 8) = v27;
  *(v26 + 16) = v28;
  v29 = sub_1C1E51F5C();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_1C1DC1424(v10, v7, &qword_1EBF1C838, &qword_1C1E571C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v10, &qword_1EBF1C838, &qword_1C1E571C0);
  v30 = a4 + v11[24];
  LOBYTE(v52) = 0;
  sub_1C1E536DC();
  v31 = *(&v50 + 1);
  *v30 = v50;
  *(v30 + 8) = v31;
  v32 = a4 + v11[25];
  v52 = 0;
  sub_1C1E5277C();
  v33 = *(&v50 + 1);
  v34 = v51;
  *v32 = v50;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34;
  v35 = (a4 + v11[26]);
  v52 = 0;
  sub_1C1E536DC();
  v36 = *(&v50 + 1);
  *v35 = v50;
  v35[1] = v36;
  v37 = (a4 + v11[27]);
  v52 = 0;
  sub_1C1E536DC();
  v38 = *(&v50 + 1);
  *v37 = v50;
  v37[1] = v38;
  v39 = (a4 + v11[28]);
  v52 = 0;
  sub_1C1E536DC();
  v40 = *(&v50 + 1);
  *v39 = v50;
  v39[1] = v40;
  *(a4 + v11[29]) = 0x3FE0000000000000;
  *(a4 + v11[30]) = 0x3FB999999999999ALL;
  *&v50 = 0x4008000000000000;
  sub_1C1E527AC();
  *&v50 = 0x4026000000000000;
  sub_1C1E527AC();
  *&v50 = 0x4010000000000000;
  sub_1C1E527AC();
  v41 = (a4 + v11[34]);
  v52 = 0;
  sub_1C1E536DC();
  v42 = *(&v50 + 1);
  *v41 = v50;
  v41[1] = v42;
  *&v50 = 0x4020000000000000;
  sub_1C1E527AC();
  *&v50 = 0x4000000000000000;
  sub_1C1E527AC();
  *&v50 = 0x4018000000000000;
  sub_1C1E527AC();
  *a4 = v48;
  v43 = a4 + v11[18];
  LOBYTE(v52) = v49;
  result = sub_1C1E536DC();
  v45 = *(&v50 + 1);
  *v43 = v50;
  *(v43 + 8) = v45;
  *(a4 + 8) = v47;
  return result;
}

uint64_t type metadata accessor for CalculateScrubberView(uint64_t a1)
{
  result = qword_1EBF1C9F0;
  if (!qword_1EBF1C9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CalculateScrubberView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

void *CalculateScrubberView.init(scrubber:isCompact:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v46 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for CalculateScrubberView(0);
  *&v48 = 0x405E800000000000;
  sub_1C1DDEBFC(v9, v10, v11);
  sub_1C1E527AC();
  *&v48 = 0x4043000000000000;
  sub_1C1E527AC();
  *&v48 = 0x405CC00000000000;
  sub_1C1E527AC();
  *&v48 = 0x4041000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4038000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4041000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4024000000000000;
  sub_1C1E527AC();
  v12 = a3 + v9[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  sub_1C1E52D8C();
  v13 = a3 + v9[15];
  *v13 = sub_1C1E5268C() & 1;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15 & 1;
  v16 = a3 + v9[16];
  v50 = 0;
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C840, &qword_1C1E571F8);
  sub_1C1E536DC();
  v17 = v49;
  *v16 = v48;
  *(v16 + 16) = v17;
  v18 = v9[17];
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C848, &qword_1C1E57200);
  sub_1C1E536DC();
  *(a3 + v18) = v48;
  v19 = (a3 + v9[19]);
  v50 = 0;
  sub_1C1E536DC();
  v20 = *(&v48 + 1);
  *v19 = v48;
  v19[1] = v20;
  v21 = v9[20];
  v50 = 0;
  sub_1C1E536DC();
  *(a3 + v21) = v48;
  v22 = a3 + v9[21];
  LOBYTE(v50) = 0;
  sub_1C1E536DC();
  v23 = *(&v48 + 1);
  *v22 = v48;
  *(v22 + 8) = v23;
  v24 = a3 + v9[22];
  v50 = 0;
  sub_1C1E5277C();
  v25 = *(&v48 + 1);
  v26 = v49;
  *v24 = v48;
  *(v24 + 8) = v25;
  *(v24 + 16) = v26;
  v27 = sub_1C1E51F5C();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  sub_1C1DC1424(v8, v5, &qword_1EBF1C838, &qword_1C1E571C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v8, &qword_1EBF1C838, &qword_1C1E571C0);
  v28 = a3 + v9[24];
  LOBYTE(v50) = 0;
  sub_1C1E536DC();
  v29 = *(&v48 + 1);
  *v28 = v48;
  *(v28 + 8) = v29;
  v30 = a3 + v9[25];
  v50 = 0;
  sub_1C1E5277C();
  v31 = *(&v48 + 1);
  v32 = v49;
  *v30 = v48;
  *(v30 + 8) = v31;
  *(v30 + 16) = v32;
  v33 = (a3 + v9[26]);
  v50 = 0;
  sub_1C1E536DC();
  v34 = *(&v48 + 1);
  *v33 = v48;
  v33[1] = v34;
  v35 = (a3 + v9[27]);
  v50 = 0;
  sub_1C1E536DC();
  v36 = *(&v48 + 1);
  *v35 = v48;
  v35[1] = v36;
  v37 = (a3 + v9[28]);
  v50 = 0;
  sub_1C1E536DC();
  v38 = *(&v48 + 1);
  *v37 = v48;
  v37[1] = v38;
  *(a3 + v9[29]) = 0x3FE0000000000000;
  *(a3 + v9[30]) = 0x3FB999999999999ALL;
  *&v48 = 0x4008000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4026000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4010000000000000;
  sub_1C1E527AC();
  v39 = (a3 + v9[34]);
  v50 = 0;
  sub_1C1E536DC();
  v40 = *(&v48 + 1);
  *v39 = v48;
  v39[1] = v40;
  *&v48 = 0x4020000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4000000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4018000000000000;
  sub_1C1E527AC();
  *a3 = v46;
  v41 = a3 + v9[18];
  LOBYTE(v50) = v47;
  result = sub_1C1E536DC();
  v43 = *(&v48 + 1);
  *v41 = v48;
  *(v41 + 8) = v43;
  *(a3 + 8) = 0;
  return result;
}

uint64_t CalculateScrubberView.isCompact.setter(char a1)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

void *CalculateScrubberView.init(scrubber:isCompact:isUsingPopoverPresentationController:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v46 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for CalculateScrubberView(0);
  *&v48 = 0x405E800000000000;
  sub_1C1DDEBFC(v9, v10, v11);
  sub_1C1E527AC();
  *&v48 = 0x4043000000000000;
  sub_1C1E527AC();
  *&v48 = 0x405CC00000000000;
  sub_1C1E527AC();
  *&v48 = 0x4041000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4038000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4041000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4024000000000000;
  sub_1C1E527AC();
  v12 = a3 + v9[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  sub_1C1E52D8C();
  v13 = a3 + v9[15];
  *v13 = sub_1C1E5268C() & 1;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15 & 1;
  v16 = a3 + v9[16];
  v50 = 0;
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C840, &qword_1C1E571F8);
  sub_1C1E536DC();
  v17 = v49;
  *v16 = v48;
  *(v16 + 16) = v17;
  v18 = v9[17];
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C848, &qword_1C1E57200);
  sub_1C1E536DC();
  *(a3 + v18) = v48;
  v19 = (a3 + v9[19]);
  v50 = 0;
  sub_1C1E536DC();
  v20 = *(&v48 + 1);
  *v19 = v48;
  v19[1] = v20;
  v21 = v9[20];
  v50 = 0;
  sub_1C1E536DC();
  *(a3 + v21) = v48;
  v22 = a3 + v9[21];
  LOBYTE(v50) = 0;
  sub_1C1E536DC();
  v23 = *(&v48 + 1);
  *v22 = v48;
  *(v22 + 8) = v23;
  v24 = a3 + v9[22];
  v50 = 0;
  sub_1C1E5277C();
  v25 = *(&v48 + 1);
  v26 = v49;
  *v24 = v48;
  *(v24 + 8) = v25;
  *(v24 + 16) = v26;
  v27 = sub_1C1E51F5C();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  sub_1C1DC1424(v8, v5, &qword_1EBF1C838, &qword_1C1E571C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v8, &qword_1EBF1C838, &qword_1C1E571C0);
  v28 = a3 + v9[24];
  LOBYTE(v50) = 0;
  sub_1C1E536DC();
  v29 = *(&v48 + 1);
  *v28 = v48;
  *(v28 + 8) = v29;
  v30 = a3 + v9[25];
  v50 = 0;
  sub_1C1E5277C();
  v31 = *(&v48 + 1);
  v32 = v49;
  *v30 = v48;
  *(v30 + 8) = v31;
  *(v30 + 16) = v32;
  v33 = (a3 + v9[26]);
  v50 = 0;
  sub_1C1E536DC();
  v34 = *(&v48 + 1);
  *v33 = v48;
  v33[1] = v34;
  v35 = (a3 + v9[27]);
  v50 = 0;
  sub_1C1E536DC();
  v36 = *(&v48 + 1);
  *v35 = v48;
  v35[1] = v36;
  v37 = (a3 + v9[28]);
  v50 = 0;
  sub_1C1E536DC();
  v38 = *(&v48 + 1);
  *v37 = v48;
  v37[1] = v38;
  *(a3 + v9[29]) = 0x3FE0000000000000;
  *(a3 + v9[30]) = 0x3FB999999999999ALL;
  *&v48 = 0x4008000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4026000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4010000000000000;
  sub_1C1E527AC();
  v39 = (a3 + v9[34]);
  v50 = 0;
  sub_1C1E536DC();
  v40 = *(&v48 + 1);
  *v39 = v48;
  v39[1] = v40;
  *&v48 = 0x4020000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4000000000000000;
  sub_1C1E527AC();
  *&v48 = 0x4018000000000000;
  sub_1C1E527AC();
  *a3 = v46;
  v41 = a3 + v9[18];
  LOBYTE(v50) = v47;
  result = sub_1C1E536DC();
  v43 = *(&v48 + 1);
  *v41 = v48;
  *(v41 + 8) = v43;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_1C1DE3DF0()
{
  v1 = sub_1C1E52B7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CalculateScrubberView(0) + 52);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C1E5490C();
    v7 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1C1DE3F48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52ABC();
  *a1 = result & 1;
  return result;
}

uint64_t CalculateScrubberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v96 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C858, &qword_1C1E57210);
  MEMORY[0x1EEE9AC00](v83);
  v4 = &v79 - v3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C860, &qword_1C1E57218);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v6 = &v79 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C868, &qword_1C1E57220);
  MEMORY[0x1EEE9AC00](v94);
  v8 = &v79 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C870, &qword_1C1E57228);
  v86 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v10 = (&v79 - v9);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C878, &qword_1C1E57230);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v79 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C880, &qword_1C1E57238);
  v89 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v88 = &v79 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C888, &qword_1C1E57240);
  v87 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v14 = &v79 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C890, &qword_1C1E57248);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C898, &qword_1C1E57250);
  v82 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v19 = &v79 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C8A0, &qword_1C1E57258);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v79 - v22;
  LOBYTE(v22) = *(v2 + 8);
  v93 = v24;
  if (v22)
  {
    v81 = v15;
    v82 = v10;
    *v4 = sub_1C1E52C0C();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C8B0, &qword_1C1E57268);
    sub_1C1DE5CF8(v2, &v4[*(v25 + 44)]);
    v26 = v83;
    v4[*(v83 + 36)] = 0;
    sub_1C1DE54A0(v14);
    sub_1C1E5275C();
    v27 = sub_1C1DE6074();
    v28 = MEMORY[0x1E697E238];
    v29 = v4;
    v30 = sub_1C1DC1124(&qword_1EBF1C8F0, &qword_1EBF1C888, &qword_1C1E57240, MEMORY[0x1E697E238]);
    v80 = v8;
    v31 = v97;
    sub_1C1E5349C();
    (*(v87 + 8))(v14, v31);
    sub_1C1DC1870(v29, &qword_1EBF1C858, &qword_1C1E57210);
    v32 = v88;
    sub_1C1DE58D8(v88);
    sub_1C1E5275C();
    v99 = v26;
    v100 = v31;
    v101 = v27;
    v102 = v30;
    v87 = v30;
    swift_getOpaqueTypeConformance2();
    v33 = sub_1C1DC1124(&qword_1EBF1C8F8, &qword_1EBF1C880, &qword_1C1E57238, v28);
    v34 = v80;
    v35 = v85;
    v36 = v98;
    sub_1C1E5349C();
    (*(v89 + 8))(v32, v36);
    v37 = v6;
    v38 = v34;
    (*(v84 + 8))(v37, v35);
    type metadata accessor for CalculateScrubberView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    sub_1C1E527BC();
    v39 = v99;
    sub_1C1E527BC();
    v40 = v99;
    v41 = v94;
    v42 = (v34 + *(v94 + 36));
    v43 = *(sub_1C1E529CC() + 20);
    v44 = *MEMORY[0x1E697F468];
    v45 = sub_1C1E52C8C();
    (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
    *v42 = v39;
    *(v42 + 1) = v40;
    LODWORD(v44) = sub_1C1E52D3C();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C900, &qword_1C1E57290);
    v47 = &v42[*(v46 + 52)];
    *v47 = v44;
    *(v47 + 1) = 1031127695;
    *&v42[*(v46 + 56)] = 256;
    v48 = sub_1C1E538DC();
    v50 = v49;
    v51 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C908, &qword_1C1E57298) + 36)];
    *v51 = v48;
    v51[1] = v50;
    sub_1C1E52C6C();
    if (qword_1EDE737A0 != -1)
    {
      swift_once();
    }

    v52 = qword_1EDE75DC0;
    v53 = sub_1C1E5314C();
    v55 = v54;
    v57 = v56;
    v58 = sub_1C1DECD54();
    v59 = v82;
    sub_1C1E5347C();
    sub_1C1DECF2C(v53, v55, v57 & 1);

    sub_1C1DC1870(v38, &qword_1EBF1C868, &qword_1C1E57220);
    v60 = v86;
    v61 = v92;
    (*(v86 + 16))(v91, v59, v92);
    swift_storeEnumTagMultiPayload();
    v62 = sub_1C1DECF3C();
    v99 = v81;
    v100 = v97;
    v101 = v62;
    v102 = v87;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v99 = v90;
    v100 = v98;
    v101 = OpaqueTypeConformance2;
    v102 = v33;
    swift_getOpaqueTypeConformance2();
    v99 = v41;
    v100 = v58;
    swift_getOpaqueTypeConformance2();
    v64 = v96;
    sub_1C1E52CEC();
    (*(v60 + 8))(v59, v61);
  }

  else
  {
    v85 = v23;
    v86 = v21;
    sub_1C1DE4C08(v2, v17);
    v17[*(v15 + 36)] = 0;
    sub_1C1DE54A0(v14);
    sub_1C1E5275C();
    v65 = sub_1C1DECF3C();
    v84 = MEMORY[0x1E697E238];
    v66 = sub_1C1DC1124(&qword_1EBF1C8F0, &qword_1EBF1C888, &qword_1C1E57240, MEMORY[0x1E697E238]);
    v67 = v97;
    sub_1C1E5349C();
    (*(v87 + 8))(v14, v67);
    sub_1C1DC1870(v17, &qword_1EBF1C890, &qword_1C1E57248);
    v68 = v88;
    sub_1C1DE58D8(v88);
    sub_1C1E5275C();
    v99 = v15;
    v100 = v67;
    v101 = v65;
    v102 = v66;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = sub_1C1DC1124(&qword_1EBF1C8F8, &qword_1EBF1C880, &qword_1C1E57238, v84);
    v71 = v85;
    v72 = v90;
    v73 = v98;
    sub_1C1E5349C();
    (*(v89 + 8))(v68, v73);
    v82[1](v19, v72);
    v74 = v86;
    v75 = v93;
    (*(v86 + 16))(v91, v71, v93);
    swift_storeEnumTagMultiPayload();
    v99 = v72;
    v100 = v73;
    v101 = v69;
    v102 = v70;
    swift_getOpaqueTypeConformance2();
    v76 = sub_1C1DECD54();
    v99 = v94;
    v100 = v76;
    swift_getOpaqueTypeConformance2();
    v64 = v96;
    sub_1C1E52CEC();
    (*(v74 + 8))(v71, v75);
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C8A8, &qword_1C1E57260);
  return (*(*(v77 - 8) + 56))(v64, 0, 1, v77);
}

uint64_t sub_1C1DE4C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA68, &qword_1C1E57430);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v36 - v3;
  v5 = type metadata accessor for CalculateScrubberView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C948, &qword_1C1E572B0);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v36 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA70, &qword_1C1E57438);
  v11 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v13 = &v36 - v12;
  v14 = (a1 + *(v5 + 72));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v44) = v15;
  v45 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  if (v40 == 1)
  {
    sub_1C1DE5184(v10);
    v17 = v36;
    v10[*(v36 + 36)] = 0;
    sub_1C1DDED54(a1, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v19 = swift_allocObject();
    sub_1C1DEDD58(v8, v19 + v18);
    v20 = sub_1C1DED140();
    sub_1C1E5335C();

    sub_1C1DC1870(v10, &qword_1EBF1C948, &qword_1C1E572B0);
    v21 = v38;
    (*(v11 + 16))(v4, v13, v38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9A0, &qword_1C1E572E0);
    v44 = v17;
    v45 = v20;
    swift_getOpaqueTypeConformance2();
    sub_1C1DED33C();
    sub_1C1E52CEC();
    return (*(v11 + 8))(v13, v21);
  }

  else
  {
    sub_1C1DDED54(a1, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v24 = swift_allocObject();
    sub_1C1DEDD58(v8, v24 + v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    sub_1C1E527BC();
    sub_1C1E527BC();
    sub_1C1E538DC();
    sub_1C1E5281C();
    v25 = v44;
    v26 = v46;
    v27 = v48;
    v28 = v49;
    v43 = v45;
    v42 = v47;
    LOBYTE(v23) = sub_1C1E5305C();
    sub_1C1E5264C();
    v29 = v43;
    v30 = v42;
    LOBYTE(v40) = 0;
    *v4 = sub_1C1DEDDBC;
    *(v4 + 1) = v24;
    *(v4 + 2) = v25;
    v4[24] = v29;
    *(v4 + 4) = v26;
    v4[40] = v30;
    *(v4 + 6) = v27;
    *(v4 + 7) = v28;
    v4[64] = v23;
    *(v4 + 9) = v31;
    *(v4 + 10) = v32;
    *(v4 + 11) = v33;
    *(v4 + 12) = v34;
    v4[104] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9A0, &qword_1C1E572E0);
    v35 = sub_1C1DED140();
    v40 = v36;
    v41 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1C1DED33C();
    return sub_1C1E52CEC();
  }
}

uint64_t CalculateScrubberView.isCompact.getter()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return v1;
}

double sub_1C1DE5184@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA78, &qword_1C1E57440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C970, &qword_1C1E572C0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v20 - v7);
  v9 = sub_1C1E536AC();
  v10 = sub_1C1E5307C();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_1C1E530AC();
  sub_1C1DC1870(v4, &qword_1EBF1CA78, &qword_1C1E57440);
  KeyPath = swift_getKeyPath();
  v13 = (v8 + *(v6 + 44));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C990, &qword_1C1E572D8) + 28);
  v15 = *MEMORY[0x1E69816E0];
  v16 = sub_1C1E536BC();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v8 = v9;
  v8[1] = KeyPath;
  v8[2] = v11;
  sub_1C1E538DC();
  sub_1C1E5281C();
  sub_1C1DEDED0(v8, a1);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C960, &qword_1C1E572B8) + 36));
  v18 = v20[1];
  *v17 = v20[0];
  v17[1] = v18;
  result = *&v21;
  v17[2] = v21;
  return result;
}

double sub_1C1DE53F8(uint64_t a1)
{
  v1 = sub_1C1DE3DF0();
  if ((v1 & 1) == 0)
  {
    v1 = MEMORY[0x1C690F510](0.5, 1.0, 0.0);
  }

  MEMORY[0x1EEE9AC00](v1);
  sub_1C1E5291C();

  return result;
}

uint64_t sub_1C1DE54A0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for CalculateScrubberView(0);
  v3 = v2 - 8;
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v26 = v4;
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1E52CFC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB70, &qword_1C1E575B0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB78, &qword_1C1E575B8);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  sub_1C1E52D9C();
  sub_1C1E5270C();
  v14 = *(v3 + 96);
  v27 = v1;
  v15 = (v1 + v14);
  v16 = v15[1];
  v35 = *v15;
  v36 = v16;
  v37 = *(v15 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB30, &qword_1C1E57538);
  sub_1C1E5279C();
  v17 = v33;
  v18 = v34;
  v19 = &v9[*(v7 + 44)];
  *v19 = v32;
  *(v19 + 1) = v17;
  *(v19 + 1) = v18;
  v20 = &v9[*(v7 + 48)];
  *v20 = sub_1C1DE98CC;
  v20[1] = 0;
  sub_1C1DDED54(v1, v5);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_1C1DEDD58(v5, v22 + v21);
  sub_1C1DC1124(&qword_1EBF1CB80, &qword_1EBF1CB70, &qword_1C1E575B0, MEMORY[0x1E697BD70]);
  sub_1C1DEEC28(&qword_1EBF1CB88, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  sub_1C1E5382C();

  sub_1C1DC1870(v9, &qword_1EBF1CB70, &qword_1C1E575B0);
  sub_1C1DDED54(v27, v5);
  v23 = swift_allocObject();
  sub_1C1DEDD58(v5, v23 + v21);
  sub_1C1DC1124(&qword_1EBF1CB90, &qword_1EBF1CB78, &qword_1C1E575B8, MEMORY[0x1E697E8D0]);
  v24 = v29;
  sub_1C1E5381C();

  return (*(v30 + 8))(v13, v24);
}

uint64_t sub_1C1DE58D8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for CalculateScrubberView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v27[1] = v5;
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1E529EC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB38, &qword_1C1E57540);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB40, &qword_1C1E57548);
  v12 = *(v11 - 8);
  v29 = v11;
  v30 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  sub_1C1E529DC();
  sub_1C1E5269C();
  v15 = *(v3 + 108);
  v28 = v1;
  v16 = (v1 + v15);
  v17 = v16[1];
  v35 = *v16;
  v36 = v17;
  v37 = *(v16 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB30, &qword_1C1E57538);
  sub_1C1E5279C();
  v18 = v33;
  v19 = v34;
  v20 = &v10[*(v8 + 44)];
  *v20 = v32;
  *(v20 + 1) = v18;
  *(v20 + 1) = v19;
  v21 = &v10[*(v8 + 48)];
  *v21 = sub_1C1DEA348;
  v21[1] = 0;
  sub_1C1DDED54(v1, v6);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_1C1DEDD58(v6, v23 + v22);
  sub_1C1DC1124(&qword_1EBF1CB48, &qword_1EBF1CB38, &qword_1C1E57540, MEMORY[0x1E697BD70]);
  sub_1C1DEEC28(&qword_1EBF1CB50, MEMORY[0x1E697BE20], MEMORY[0x1E697BE28]);
  sub_1C1E5382C();

  sub_1C1DC1870(v10, &qword_1EBF1CB38, &qword_1C1E57540);
  sub_1C1DDED54(v28, v6);
  v24 = swift_allocObject();
  sub_1C1DEDD58(v6, v24 + v22);
  sub_1C1DC1124(&qword_1EBF1CB58, &qword_1EBF1CB40, &qword_1C1E57548, MEMORY[0x1E697E8D0]);
  v25 = v29;
  sub_1C1E5381C();

  return (*(v30 + 8))(v14, v25);
}

uint64_t sub_1C1DE5CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB98, &qword_1C1E575C0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBA0, &qword_1C1E575C8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v35 - v14);
  *v15 = sub_1C1E538DC();
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBA8, &qword_1C1E575D0);
  sub_1C1DE61DC(a1, (v15 + *(v17 + 44)));
  v18 = type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  sub_1C1E527BC();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v19 = (v15 + *(v10 + 44));
  v20 = v42;
  *v19 = v41;
  v19[1] = v20;
  v19[2] = v43;
  sub_1C1DE5184(v8);
  v21 = (a1 + *(v18 + 136));
  v22 = *v21;
  v23 = v21[1];
  v39 = v22;
  v40 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  v24 = (1.0 - v38) * 0.5 + 0.5;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBB0, &qword_1C1E575D8) + 36)] = v24;
  v25 = sub_1C1E5304C();
  sub_1C1E527BC();
  sub_1C1E5264C();
  v26 = &v8[*(v4 + 44)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_1C1DC1424(v15, v12, &qword_1EBF1CBA0, &qword_1C1E575C8);
  v31 = v36;
  sub_1C1DC1424(v8, v36, &qword_1EBF1CB98, &qword_1C1E575C0);
  v32 = v37;
  sub_1C1DC1424(v12, v37, &qword_1EBF1CBA0, &qword_1C1E575C8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBB8, &qword_1C1E575E0);
  sub_1C1DC1424(v31, v32 + *(v33 + 48), &qword_1EBF1CB98, &qword_1C1E575C0);
  sub_1C1DC1870(v8, &qword_1EBF1CB98, &qword_1C1E575C0);
  sub_1C1DC1870(v15, &qword_1EBF1CBA0, &qword_1C1E575C8);
  sub_1C1DC1870(v31, &qword_1EBF1CB98, &qword_1C1E575C0);
  return sub_1C1DC1870(v12, &qword_1EBF1CBA0, &qword_1C1E575C8);
}

unint64_t sub_1C1DE6074()
{
  result = qword_1EBF1C8B8;
  if (!qword_1EBF1C8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C858, &qword_1C1E57210);
    sub_1C1DE612C();
    sub_1C1DC1124(&qword_1EBF1C8E0, &qword_1EBF1C8E8, &unk_1C1E57280, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C8B8);
  }

  return result;
}

unint64_t sub_1C1DE612C()
{
  result = qword_1EBF1C8C0;
  if (!qword_1EBF1C8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C8C8, &qword_1C1E57270);
    sub_1C1DC1124(&qword_1EBF1C8D0, &qword_1EBF1C8D8, &qword_1C1E57278, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C8C0);
  }

  return result;
}

void sub_1C1DE61DC(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v132 = a2;
  v131 = sub_1C1E528DC();
  v139 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v123 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1C1E52CDC();
  v109 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v104 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBC0, &qword_1C1E575E8);
  v102 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v96 - v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBC8, &qword_1C1E575F0);
  v107 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v98 = &v96 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBD0, &qword_1C1E575F8) - 8;
  MEMORY[0x1EEE9AC00](v106);
  v100 = &v96 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBD8, &qword_1C1E57600);
  MEMORY[0x1EEE9AC00](v111);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBE0, &qword_1C1E57608);
  v117 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v110 = &v96 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBE8, &qword_1C1E57610);
  v121 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v135 = &v96 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBF0, &qword_1C1E57618);
  v128 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v136 = &v96 - v11;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBF8, &qword_1C1E57620);
  v130 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v120 = &v96 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC00, &qword_1C1E57628);
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v96 - v15;
  v16 = type metadata accessor for CalculateScrubberView(0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1DDED54(a1, v20);
  v21 = *(v18 + 80);
  v134 = (v21 + 16) & ~v21;
  v118 = swift_allocObject();
  sub_1C1DEDD58(v20, v118 + ((v21 + 16) & ~v21));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  sub_1C1E527BC();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v115 = v145;
  v114 = v147;
  v113 = v149;
  v112 = v150;
  v152 = v146;
  v151 = v148;
  v137 = a1;
  sub_1C1DDED54(a1, v20);
  sub_1C1E5483C();
  v22 = sub_1C1E5482C();
  v23 = (v21 + 32) & ~v21;
  v133 = v19;
  v138 = v21;
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  sub_1C1DEDD58(v20, v24 + v23);
  sub_1C1DDED54(a1, v20);
  v26 = sub_1C1E5482C();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  sub_1C1DEDD58(v20, v27 + v23);
  sub_1C1E537BC();
  v28 = v99;
  sub_1C1E5396C();
  v29 = sub_1C1DC1124(&qword_1EBF1CC08, &qword_1EBF1CBC0, &qword_1C1E575E8, MEMORY[0x1E697D7E0]);
  v30 = v98;
  v31 = v101;
  sub_1C1E5334C();
  (*(v102 + 8))(v28, v31);
  v32 = v104;
  sub_1C1E52CCC();
  v141 = v31;
  v142 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1C1DEEC28(&qword_1EBF1CC10, MEMORY[0x1E697C5B0], MEMORY[0x1E697C5A8]);
  v33 = v100;
  v34 = v105;
  v35 = v108;
  sub_1C1E5337C();
  (*(v109 + 8))(v32, v35);
  (*(v107 + 8))(v30, v34);
  v36 = sub_1C1E535FC();
  v37 = sub_1C1E5300C();
  v38 = v33;
  v39 = &v33[*(v106 + 44)];
  *v39 = v36;
  v39[8] = v37;
  v40 = sub_1C1E535FC();
  v41 = v103;
  sub_1C1DE7678(v40, v103);

  sub_1C1DC1870(v38, &qword_1EBF1CBD0, &qword_1C1E575F8);
  LOBYTE(v36) = sub_1C1E5304C();
  sub_1C1E5264C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC18, &qword_1C1E57630) + 36);
  *v50 = v36;
  *(v50 + 8) = v43;
  *(v50 + 16) = v45;
  *(v50 + 24) = v47;
  *(v50 + 32) = v49;
  *(v50 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v52 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC20, &qword_1C1E57668) + 36);
  *v52 = KeyPath;
  *(v52 + 8) = 1;
  v53 = v137;
  v54 = (v137 + *(v17 + 68));
  v55 = *v54;
  v56 = *(v54 + 1);
  LODWORD(v54) = v54[16];
  LOBYTE(v141) = v55;
  LOBYTE(v28) = v55;
  LODWORD(v109) = v55;
  v142 = v56;
  v57 = v56;
  v108 = v56;
  LOBYTE(v143) = v54;
  LOBYTE(v32) = v54;
  LODWORD(v107) = v54;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5265C();
  v58 = v111;
  *(v41 + *(v111 + 36)) = v140;
  LOBYTE(v141) = v28;
  v142 = v57;
  LOBYTE(v143) = v32;
  sub_1C1E5267C();
  v59 = sub_1C1DEEC70();
  v60 = v110;
  v61 = v58;
  sub_1C1E5348C();

  sub_1C1DC1870(v41, &qword_1EBF1CBD8, &qword_1C1E57600);
  v62 = v123;
  sub_1C1E528CC();
  v97 = v20;
  sub_1C1DDED54(v53, v20);
  v63 = v134;
  v64 = swift_allocObject();
  sub_1C1DEDD58(v20, v64 + v63);
  v141 = v61;
  v142 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v116;
  v67 = v60;
  sub_1C1E532DC();

  v68 = *(v139 + 8);
  v139 += 8;
  v69 = v131;
  v68(v62, v131);
  (*(v117 + 8))(v67, v66);
  sub_1C1E528BC();
  v70 = v97;
  sub_1C1DDED54(v137, v97);
  v71 = v134;
  v72 = swift_allocObject();
  v73 = v70;
  sub_1C1DEDD58(v70, v72 + v71);
  v141 = v66;
  v142 = OpaqueTypeConformance2;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v119;
  v76 = v135;
  sub_1C1E532DC();

  v68(v62, v69);
  (*(v121 + 8))(v76, v75);
  LOBYTE(v141) = v109;
  v142 = v108;
  LOBYTE(v143) = v107;
  sub_1C1E5265C();
  sub_1C1DDED54(v137, v73);
  v77 = swift_allocObject();
  sub_1C1DEDD58(v73, v77 + v71);
  v141 = v75;
  v142 = v74;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = MEMORY[0x1E69E6370];
  v80 = MEMORY[0x1E69E6388];
  v81 = v120;
  v82 = v126;
  v83 = v136;
  sub_1C1E534BC();

  (*(v128 + 8))(v83, v82);
  v141 = v82;
  v142 = v79;
  v143 = v78;
  v144 = v80;
  swift_getOpaqueTypeConformance2();
  v84 = v122;
  v85 = v129;
  sub_1C1E5333C();
  (*(v130 + 8))(v81, v85);
  LOBYTE(v85) = v152;
  LOBYTE(v83) = v151;
  v86 = v125;
  v87 = *(v125 + 16);
  v88 = v124;
  v89 = v127;
  v87(v124, v84, v127);
  v90 = v132;
  v91 = v118;
  *v132 = sub_1C1DEE608;
  v90[1] = v91;
  v90[2] = v115;
  *(v90 + 24) = v85;
  v90[4] = v114;
  *(v90 + 40) = v83;
  v92 = v112;
  v90[6] = v113;
  v90[7] = v92;
  v93 = v90;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC78, &qword_1C1E57690);
  v87(v93 + *(v94 + 48), v88, v89);
  v95 = *(v86 + 8);

  v95(v84, v89);
  v95(v88, v89);
}

void sub_1C1DE72CC(uint64_t *a2@<X8>)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5265C();
  if (v5 == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC80, &qword_1C1E57698), sub_1C1E536EC(), (v3 = v6) != 0))
  {
    v4 = v5;
  }

  else
  {
    CalculateScrubber.formattedValue.getter();
  }

  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1C1DE73AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v6 = *MEMORY[0x1E6992228];
  *(inited + 32) = *MEMORY[0x1E6992228];
  v7 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v8 = v6;
  v9 = [v7 initWithBool_];
  v10 = sub_1C1DE2864();
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E6992230];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v13 = v11;
  v14 = [v12 initWithBool_];
  *(inited + 104) = v10;
  *(inited + 80) = v14;
  sub_1C1DF776C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
  swift_arrayDestroy();
  v15 = sub_1C1E544FC();

  v16 = v15;
  if (!v15)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v16 = sub_1C1E544FC();
  }

  v17 = v15;
  sub_1C1DFD1D4(v16);
  v19 = v18;

  sub_1C1DFCE18(v19);
  swift_getKeyPath();
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v20 = *(v4 + 56);
  if (v20)
  {
    v21 = *(v4 + 64);

    CalculateScrubber.formattedValue.getter();
    v20();
    sub_1C1DD0EB8(v20, v21);
  }

  type metadata accessor for CalculateScrubberView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC80, &qword_1C1E57698);
  return sub_1C1E536FC();
}

uint64_t sub_1C1DE7678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  sub_1C1E5276C();
  v7 = v30;
  v8 = v30 * 0.5;
  v9 = v31;
  v10 = DWORD1(v31);
  v11 = *(&v31 + 1);
  v12 = v32;

  v13 = sub_1C1E538DC();
  v15 = v14;
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v37 = *v29;
  v38 = *&v29[16];
  v35 = v33[0];
  v36 = v31;
  *&v39 = v13;
  *(&v39 + 1) = v14;
  sub_1C1DC1424(v4, a2, &qword_1EBF1CBD0, &qword_1C1E575F8);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC48, &unk_1C1E57670) + 36));
  v17 = *&v29[16];
  v16[2] = *v29;
  v16[3] = v17;
  v16[4] = v39;
  v18 = v36;
  *v16 = v35;
  v16[1] = v18;
  v40[2] = *v29;
  v40[3] = *&v29[16];
  v40[0] = v27;
  v40[1] = v28;
  v41 = v13;
  v42 = v15;
  sub_1C1DC1424(v33, v20, &qword_1EBF1CC90, &unk_1C1E576D0);
  sub_1C1DC1424(&v35, v20, &qword_1EBF1CC70, &unk_1C1E57680);
  sub_1C1DC1870(v40, &qword_1EBF1CC70, &unk_1C1E57680);
  *v20 = v8;
  *&v20[1] = v7;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a1;
  v26 = 256;
  return sub_1C1DC1870(v20, &qword_1EBF1CC90, &unk_1C1E576D0);
}

uint64_t sub_1C1DE7858@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5266C();
  v3 = *MEMORY[0x1E697D770];
  v4 = sub_1C1E5387C();
  return (*(*(v4 - 8) + 104))(a2, v3, v4);
}

uint64_t sub_1C1DE7924@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC88, &qword_1C1E576A0);
  sub_1C1E536EC();
  v4 = v13;
  if (!v13)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v4 = sub_1C1E544FC();
  }

  v5 = v13;
  sub_1C1DFD1D4(v4);
  v7 = v6;

  sub_1C1DFCE18(v7);
  swift_getKeyPath();
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v8 = *(v3 + 56);
  if (v8)
  {
    v9 = *(v3 + 64);

    CalculateScrubber.formattedValue.getter();
    v8();
    sub_1C1DD0EB8(v8, v9);
  }

  CalculateScrubber.formattedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC80, &qword_1C1E57698);
  sub_1C1E536FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5266C();
  v10 = *MEMORY[0x1E697D770];
  v11 = sub_1C1E5387C();
  return (*(*(v11 - 8) + 104))(a2, v10, v11);
}

uint64_t sub_1C1DE7BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5265C();
  if (v4 == 1)
  {
    CalculateScrubber.formattedValue.getter();
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    sub_1C1E544FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC88, &qword_1C1E576A0);
    sub_1C1E536FC();
    CalculateScrubber.formattedValue.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC80, &qword_1C1E57698);
  return sub_1C1E536FC();
}

void *sub_1C1DE7D14@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  result = sub_1C1E536EC();
  *a2 = v4;
  return result;
}

uint64_t sub_1C1DE7D90(char *a1, uint64_t a2)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t (*CalculateScrubberView.isCompact.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CalculateScrubberView(0) + 72));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return sub_1C1DEFFD0;
}

uint64_t CalculateScrubberView.$isCompact.getter()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E5370C();
  return v1;
}

uint64_t CalculateScrubberView.value.getter()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536EC();
  return v1;
}

void *sub_1C1DE7F88@<X0>(void *a2@<X8>)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  result = sub_1C1E536EC();
  *a2 = v4;
  return result;
}

double sub_1C1DE7FF8(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536FC();
  return sub_1C1DE81DC();
}

double CalculateScrubberView.value.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536FC();
  v4 = *v2;
  sub_1C1E536EC();
  if (*(v4 + 104) == a1)
  {
    sub_1C1DFE054(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();
  }

  return result;
}

double sub_1C1DE81DC()
{
  v1 = *v0;
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536EC();
  if (*(v1 + 104) == v4)
  {
    sub_1C1DFE054(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();
  }

  return result;
}

void (*CalculateScrubberView.value.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = (v1 + *(type metadata accessor for CalculateScrubberView(0) + 80));
  v6 = *v5;
  v4[5] = *v5;
  v7 = v5[1];
  v4[6] = v7;
  *v4 = v6;
  v4[1] = v7;
  v4[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536EC();
  return sub_1C1DE83E0;
}

void sub_1C1DE83E0(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = (*a1)[6];
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  *v3 = v7;
  v3[1] = v5;
  v3[3] = v4;
  v8 = v3 + 3;
  sub_1C1E536FC();
  v9 = *v6;
  *v3 = v7;
  v3[1] = v5;
  sub_1C1E536EC();
  v10 = *(v9 + 104);
  if ((a2 & 1) == 0)
  {
    if (v10 != *v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1DFE054(*v8);
    goto LABEL_6;
  }

  if (v10 == *v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *v3 = v9;
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520AC();

LABEL_6:
  free(v3);
}

uint64_t CalculateScrubberView.$value.getter()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E5370C();
  return v1;
}

double sub_1C1DE864C()
{
  v1 = type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB30, &qword_1C1E57538);
  sub_1C1E5278C();
  sub_1C1E5278C();
  return v3 + v3 + v3 * *(v0 + *(v1 + 116));
}

void *sub_1C1DE875C(double a1)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  result = sub_1C1E527BC();
  v3 = round(a1 / (v4 + v4));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C1DE883C(uint64_t a1)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

double sub_1C1DE88B4()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  if (v8 == 1)
  {
    v1 = sub_1C1DE3DF0();
    if ((v1 & 1) == 0)
    {
      v1 = MEMORY[0x1C690F510](0.5, 1.0, 0.0);
    }

    MEMORY[0x1EEE9AC00](v1);
    sub_1C1E5291C();
  }

  v2 = *v0;
  sub_1C1E536EC();
  if (v8 == 1)
  {
    v3 = 1;
    if ((*(v2 + 88) & 1) == 0)
    {
LABEL_7:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
      sub_1C1E520AC();

      goto LABEL_10;
    }
  }

  else
  {
    sub_1C1E536EC();
    v3 = v8;
    if (v8 != *(v2 + 88))
    {
      goto LABEL_7;
    }
  }

  *(v2 + 88) = v3;
LABEL_10:
  v5 = sub_1C1DE864C();
  v9 = sub_1C1DE875C(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536FC();
  sub_1C1E536EC();
  if (*(v2 + 104) == v9)
  {
    sub_1C1DFE054(v9);
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t CalculateScrubberView.isDragging.getter()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return v1;
}

uint64_t CalculateScrubberView.isPanning.getter()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return v1;
}

void sub_1C1DE8D0C(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for CalculateScrubberView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = sub_1C1DE875C(a1);
  v16 = sub_1C1DE875C(a2);
  if (__OFSUB__(v16, v15))
  {
    __break(1u);
  }

  else
  {
    v17 = v16;
    v18 = v15;
    v48 = v16 - v15;
    v49 = v15;
    v50 = v7;
    v51 = v11;
    v19 = (v2 + *(v6 + 80));
    v20 = *v19;
    v21 = *(v19 + 1);
    v52 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v53 = v20;
    v54 = v21;
    v55 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
    sub_1C1E536FC();
    v22 = *v2;
    v53 = v20;
    v54 = v21;
    sub_1C1E536EC();
    v23 = v55;
    if (*(*&v22 + 104) == v55)
    {
      sub_1C1DFE054(v55);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v48 - 2) = v22;
      *(&v48 - 1) = v23;
      v53 = v22;
      sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
      sub_1C1E520AC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    sub_1C1E527BC();
    v25 = v53;
    sub_1C1E527BC();
    v26 = (v25 + v53) * v17 - a1;
    v27 = (v3 + *(v6 + 76));
    v28 = *v27;
    v29 = *(v27 + 1);
    v53 = v28;
    v54 = v29;
    v55 = *&a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
    sub_1C1E536FC();
    sub_1C1DDED54(v3, v14);
    v30 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v31 = (v30 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_1C1DEDD58(v14, v34 + v30);
    v35 = v48;
    *(v34 + v31) = v49;
    *(v34 + v32) = v35;
    *(v34 + v33) = a1;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v36 = v51;
    sub_1C1DDED54(v3, v51);
    v37 = v52;
    sub_1C1DDED54(v36, v52);
    v38 = swift_allocObject();
    sub_1C1DEDD58(v36, v38 + v30);
    _s14descr1F4186469V15SpringAnimationCMa();
    v39 = swift_allocObject();
    *(v39 + 80) = CACurrentMediaTime();
    *(v39 + 88) = 0x4097700000000000;
    *(v39 + 96) = 0;
    *(v39 + 104) = 1;
    *(v39 + 112) = 0;
    *(v39 + 120) = 1;
    *(v39 + 128) = 0;
    *(v39 + 136) = 1;
    *(v39 + 144) = 0;
    *(v39 + 152) = 1;
    *(v39 + 160) = 0;
    *(v39 + 168) = 0;
    *(v39 + 176) = 1;
    *(v39 + 48) = sub_1C1DEE410;
    *(v39 + 56) = v34;
    *(v39 + 16) = xmmword_1C1E57190;
    *(v39 + 32) = xmmword_1C1E571A0;
    *(v39 + 64) = sub_1C1DEE4D0;
    *(v39 + 72) = v38;
    v40 = objc_opt_self();

    v41 = [v40 mainScreen];
    v42 = [v41 displayLinkWithTarget:v39 selector:sel_displayLinkDidUpdate_];

    if (v42)
    {
      sub_1C1DEE4E8(v37);
      v43 = [objc_opt_self() currentRunLoop];
      [v42 addToRunLoop:v43 forMode:*MEMORY[0x1E695D918]];
    }

    else
    {
      *(v39 + 160) = 0x3FF0000000000000;
      v44 = *v37;
      swift_getKeyPath();
      v53 = v44;
      sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);

      sub_1C1E520BC();

      swift_beginAccess();
      v45 = *(*&v44 + 72);
      if (v45)
      {
        v46 = *(*&v44 + 80);

        v45(v47);
        sub_1C1DD0EB8(v45, v46);
      }

      sub_1C1DEE4E8(v37);
    }
  }
}

uint64_t *sub_1C1DE932C(uint64_t *result, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = round(a3 * a4);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = a2 + v6;
  if (__OFADD__(a2, v6))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v8 = result;
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536FC();
  v9 = *v8;
  sub_1C1E536EC();
  if (*(v9 + 104) == v7)
  {
    sub_1C1DFE054(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  return sub_1C1E536FC();
}

uint64_t sub_1C1DE9568(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  result = swift_beginAccess();
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = *(v1 + 80);

    v3(v5);
    return sub_1C1DD0EB8(v3, v4);
  }

  return result;
}

void *sub_1C1DE9640@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  result = sub_1C1E536EC();
  *a2 = v4;
  return result;
}

uint64_t sub_1C1DE96BC(char *a1, uint64_t a2)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t CalculateScrubberView.isDragging.setter(char a1)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t (*CalculateScrubberView.isDragging.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CalculateScrubberView(0) + 84));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return sub_1C1DE985C;
}

uint64_t CalculateScrubberView.$isDragging.getter()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E5370C();
  return v1;
}

void sub_1C1DE98F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CalculateScrubberView(0);
  v8 = (v0 + *(v7 + 84));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v17) = *v8;
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  if ((v20 & 1) == 0)
  {
    LOBYTE(v17) = v9;
    v18 = v10;
    v20 = 1;
    sub_1C1E536FC();
    v11 = (v0 + *(v7 + 60));
    v12 = *v11;
    v13 = *(v11 + 1);
    LOBYTE(v11) = v11[16];
    LOBYTE(v17) = v12;
    v18 = v13;
    v19 = v11;
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
    sub_1C1E5266C();
    sub_1C1E51F3C();
    v14 = sub_1C1E51F5C();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_1C1DC1424(v6, v3, &qword_1EBF1C838, &qword_1C1E571C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);
    sub_1C1E536FC();
    sub_1C1DC1870(v6, &qword_1EBF1C838, &qword_1C1E571C0);
    if (*(v0 + 8) == 1)
    {
      sub_1C1E5392C();
      sub_1C1E5273C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
      sub_1C1E527BC();
      sub_1C1E5391C();

      MEMORY[0x1EEE9AC00](v15);
      *(&v16 - 2) = v0;
      sub_1C1E5291C();
    }
  }

  sub_1C1DE88B4();
}

uint64_t sub_1C1DE9BF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v37 - v2;
  v4 = sub_1C1E51F5C();
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for CalculateScrubberView(0);
  v11 = v0 + v10[19];
  v13 = *(v11 + 8);
  v38 = *v11;
  v12 = v38;
  v39 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  v14 = v41;
  sub_1C1E5271C();
  v16 = v14 + v15;
  v38 = v12;
  v39 = v13;
  sub_1C1E536EC();
  v17 = v41;
  sub_1C1E5272C();
  v19 = v17 + v18;
  if (vabdd_f64(v19, v16) < 8.0)
  {
    v19 = v16;
    if (*(v0 + 8) == 1)
    {
      sub_1C1E5273C();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
      sub_1C1E527BC();
      v22 = v21 < v38;
      v19 = v16;
      if (v22)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);
        sub_1C1E536EC();
        v23 = v37;
        if ((*(v37 + 48))(v3, 1, v4) == 1)
        {
          sub_1C1DC1870(v3, &qword_1EBF1C838, &qword_1C1E571C0);
        }

        else
        {
          (*(v23 + 32))(v9, v3, v4);
          sub_1C1E51F3C();
          sub_1C1E51F4C();
          v25 = v24;
          v26 = *(v23 + 8);
          v26(v6, v4);
          if (v25 >= 0.2)
          {
            v26(v9, v4);
          }

          else
          {
            v27 = (v0 + v10[15]);
            v28 = *v27;
            v29 = *(v27 + 1);
            LOBYTE(v27) = v27[16];
            LOBYTE(v38) = v28;
            v39 = v29;
            v40 = v27;
            LOBYTE(v41) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
            sub_1C1E5266C();
            v30 = v0 + v10[34];
            v31 = *(v30 + 8);
            v38 = *v30;
            v39 = v31;
            v41 = 0.0;

            sub_1C1E536FC();
            v26(v9, v4);
          }
        }

        v19 = v16;
      }
    }
  }

  sub_1C1DE88B4();
  sub_1C1DE8D0C(v16, v19);
  if (*(v0 + 8) == 1)
  {
    v32 = sub_1C1E5392C();
    MEMORY[0x1EEE9AC00](v32);
    *(&v37 - 2) = v0;
    sub_1C1E5291C();
  }

  v33 = (v0 + v10[21]);
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v38) = v34;
  v39 = v35;
  LOBYTE(v41) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

void *sub_1C1DEA058@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  result = sub_1C1E536EC();
  *a2 = v4;
  return result;
}

uint64_t sub_1C1DEA0D4(char *a1, uint64_t a2)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t CalculateScrubberView.isPanning.setter(char a1)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t (*CalculateScrubberView.isPanning.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CalculateScrubberView(0) + 96));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return sub_1C1DEFFD0;
}

void sub_1C1DEA274(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_1C1E536FC();

  free(v1);
}

uint64_t CalculateScrubberView.$isPanning.getter()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E5370C();
  return v1;
}

uint64_t sub_1C1DEA374()
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  if ((v3 & 1) == 0)
  {
    sub_1C1E536FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
    sub_1C1E5266C();
    if (*(v0 + 8) == 1)
    {
      v1 = sub_1C1E5392C();
      MEMORY[0x1EEE9AC00](v1);
      sub_1C1E5291C();
    }
  }

  sub_1C1DE88B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB30, &qword_1C1E57538);
  sub_1C1E5278C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  CACurrentMediaTime();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB60, &qword_1C1E57550);
  sub_1C1E536EC();
  sub_1C1E536FC();
  sub_1C1E526AC();
  sub_1C1E536FC();
  CACurrentMediaTime();
  return sub_1C1E536FC();
}

uint64_t sub_1C1DEA624()
{
  v1 = CACurrentMediaTime();
  v2 = type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB60, &qword_1C1E57550);
  sub_1C1E536EC();
  v3 = v1 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  sub_1C1E526AC();
  v5 = v10 + v4 * *(v0 + *(v2 + 116));
  v6 = v3 < 0.1;
  v7 = v5;
  if (v6)
  {
    sub_1C1E536EC();
    v7 = v5 + v10 * *(v0 + *(v2 + 120));
  }

  sub_1C1DE88B4();
  sub_1C1DE8D0C(v5, v7);
  if (*(v0 + 8) == 1)
  {
    v8 = sub_1C1E5392C();
    MEMORY[0x1EEE9AC00](v8);
    sub_1C1E5291C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

double sub_1C1DEA82C()
{
  v0 = sub_1C1DE864C();
  sub_1C1E5283C();
  v2 = v1 * 0.5;
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  if (v0 <= v7 - v2)
  {
    v0 = v7 - v2;
  }

  sub_1C1E5283C();
  v4 = v3 * 0.5;
  sub_1C1E527BC();
  if (v4 - v7 < v0)
  {
    v0 = v4 - v7;
  }

  sub_1C1E5283C();
  return v0 / v5 + v0 / v5;
}

void *sub_1C1DEA90C(uint64_t a1)
{
  sub_1C1E5283C();
  v2 = v1;
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  result = sub_1C1E527BC();
  v4 = v2 / (v6 + v6) * 0.5;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 + 0x4000000000000000 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = 2 * v4;
  result = (v5 - 1);
  if (__OFSUB__(v5, 1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

double sub_1C1DEAA18()
{
  v0 = sub_1C1DE864C();
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  sub_1C1E527BC();
  v1 = fmod(v0, v3 + v3);
  sub_1C1E527BC();
  sub_1C1E527BC();
  return v1 / (v3 + v3);
}

uint64_t sub_1C1DEAAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v59 = a3;
  v4 = sub_1C1E52E5C();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalculateScrubberView(0);
  v7 = *(v6 - 8);
  v61 = v6 - 8;
  v55 = v7;
  v60 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1E52C1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA80, &qword_1C1E574A8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA88, &qword_1C1E574B0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA90, &qword_1C1E574B8);
  v20 = *(v19 - 8);
  v52 = v19;
  v53 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA98, &qword_1C1E574C0);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v50 = &v47 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v56 = &v47 - v27;
  *v15 = sub_1C1E52C9C();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA0, &qword_1C1E574C8);
  sub_1C1DEB1E8(a2, v49, &v15[*(v28 + 44)]);
  v29 = (a2 + *(v61 + 144));
  v30 = *v29;
  v31 = v29[1];
  v62 = v30;
  v63 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  *&v15[*(v13 + 36)] = v64[0] + v64[0];
  (*(v10 + 104))(v12, *MEMORY[0x1E697F3A0], v9);
  sub_1C1DEDF40();
  sub_1C1E5332C();
  (*(v10 + 8))(v12, v9);
  sub_1C1DC1870(v15, &qword_1EBF1CA80, &qword_1C1E574A8);
  v32 = v51;
  sub_1C1DDED54(a2, v51);
  v33 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v34 = swift_allocObject();
  sub_1C1DEDD58(v32, v34 + v33);
  v35 = &v18[*(v16 + 36)];
  *v35 = sub_1C1DEDFF8;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v36 = v47;
  sub_1C1E52E4C();
  v37 = sub_1C1DEE010();
  sub_1C1E5341C();
  (*(v57 + 8))(v36, v58);
  sub_1C1DC1870(v18, &qword_1EBF1CA88, &qword_1C1E574B0);
  v62 = v16;
  v63 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v48;
  v39 = v52;
  sub_1C1E533CC();
  (*(v53 + 8))(v22, v39);
  CalculateScrubber.formattedValue.getter();
  v62 = v40;
  v63 = v41;
  sub_1C1DC733C(v40, v41, v42);
  v43 = v50;
  sub_1C1E5297C();

  sub_1C1DC1870(v38, &qword_1EBF1CA98, &qword_1C1E574C0);
  sub_1C1DDED54(a2, v32);
  v44 = swift_allocObject();
  sub_1C1DEDD58(v32, v44 + v33);
  v45 = v56;
  sub_1C1E5298C();

  sub_1C1DC1870(v43, &qword_1EBF1CA98, &qword_1C1E574C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  sub_1C1E52D7C();
  sub_1C1DEE108();
  sub_1C1E5342C();

  return sub_1C1DC1870(v45, &qword_1EBF1CA98, &qword_1C1E574C0);
}

uint64_t sub_1C1DEB1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAD8, &qword_1C1E574E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v27 = v28;
  sub_1C1E527BC();
  v12 = v28;
  v13 = sub_1C1DEA82C();
  v14 = sub_1C1DE864C();
  sub_1C1E5283C();
  v16 = v15 * 0.5;
  sub_1C1E527BC();
  if (v14 <= v28 - v16)
  {
    v14 = v28 - v16;
  }

  sub_1C1E5283C();
  v18 = v17 * 0.5;
  sub_1C1E527BC();
  if (v18 - v28 < v14)
  {
    v14 = v18 - v28;
  }

  sub_1C1E527BC();
  v19 = v28;
  *v11 = sub_1C1E52C0C();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAE0, &qword_1C1E574E8);
  sub_1C1DEB4B8(a1, a2, &v11[*(v20 + 44)]);
  sub_1C1E527BC();
  v21 = v28;
  sub_1C1E527BC();
  v22 = v21 + v28;
  sub_1C1E527BC();
  v23 = v22 + v28;
  sub_1C1DC1424(v11, v8, &qword_1EBF1CAD8, &qword_1C1E574E0);
  *a3 = v27;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = 0;
  *(a3 + 48) = v19;
  *(a3 + 56) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAE8, &qword_1C1E574F0);
  sub_1C1DC1424(v8, a3 + *(v24 + 80), &qword_1EBF1CAD8, &qword_1C1E574E0);
  v25 = a3 + *(v24 + 96);
  *v25 = v23;
  *(v25 + 8) = 0;
  sub_1C1DC1870(v11, &qword_1EBF1CAD8, &qword_1C1E574E0);
  return sub_1C1DC1870(v8, &qword_1EBF1CAD8, &qword_1C1E574E0);
}

void *sub_1C1DEB4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CalculateScrubberView(0);
  v7 = v6 - 8;
  v36 = *(v6 - 8);
  v8 = *(v36 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAF0, &unk_1C1E574F8);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = sub_1C1DEA90C(a2);
  sub_1C1E5283C();
  v17 = v16;
  v18 = *(v7 + 148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v37 = v18;
  sub_1C1E527BC();
  v19 = *&v39;
  v20 = *(v7 + 152);
  result = sub_1C1E527BC();
  if (v15 < -1)
  {
    __break(1u);
  }

  else
  {
    v22 = (v17 - (v19 + *&v39) * v15) * 0.5;
    v39 = v15 / -2;
    v40 = v15 / 2;
    swift_getKeyPath();
    sub_1C1DDED54(a1, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = v36[80];
    v35 = v20;
    v36 = v11;
    v24 = (v23 + 16) & ~v23;
    v25 = a3;
    v26 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    sub_1C1DEDD58(v9, v27 + v24);
    *(v27 + v26) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAF8, &qword_1C1E57520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB00, &qword_1C1E57528);
    sub_1C1DEE200();
    sub_1C1DEE2E0();
    sub_1C1E537FC();
    v28 = sub_1C1DE864C();
    sub_1C1E527BC();
    v29 = *&v39;
    sub_1C1E527BC();
    v30 = fmod(v28, v29 + *&v39);
    v31 = &v14[*(v38 + 36)];
    *v31 = v30;
    *(v31 + 1) = 0;
    v32 = v36;
    sub_1C1DC1424(v14, v36, &qword_1EBF1CAF0, &unk_1C1E574F8);
    *v25 = v22;
    *(v25 + 8) = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB28, &qword_1C1E57530);
    sub_1C1DC1424(v32, v25 + *(v33 + 48), &qword_1EBF1CAF0, &unk_1C1E574F8);
    v34 = v25 + *(v33 + 64);
    *v34 = v22;
    *(v34 + 8) = 0;
    sub_1C1DC1870(v14, &qword_1EBF1CAF0, &unk_1C1E574F8);
    return sub_1C1DC1870(v32, &qword_1EBF1CAF0, &unk_1C1E574F8);
  }

  return result;
}

double sub_1C1DEB870(uint64_t a1)
{
  v2 = sub_1C1E5376C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1E5375C();
  MEMORY[0x1C690F520](v5, 0.0);
  (*(v3 + 8))(v5, v2);
  sub_1C1E5391C();

  v6 = sub_1C1DE3DF0();
  if ((v6 & 1) == 0)
  {
  }

  MEMORY[0x1EEE9AC00](v6);
  *&v8[-16] = a1;
  sub_1C1E5291C();

  type metadata accessor for CalculateScrubberView(0);
  v9[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  sub_1C1E52D6C();

  return result;
}

uint64_t sub_1C1DEBA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v59 = a3;
  v4 = sub_1C1E52E5C();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalculateScrubberView(0);
  v7 = *(v6 - 8);
  v61 = v6 - 8;
  v55 = v7;
  v60 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1E52C1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC98, &qword_1C1E576E8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCA0, &qword_1C1E576F0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCA8, &qword_1C1E576F8);
  v20 = *(v19 - 8);
  v52 = v19;
  v53 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCB0, &unk_1C1E57700);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v50 = &v47 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v56 = &v47 - v27;
  *v15 = sub_1C1E52C0C();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAE0, &qword_1C1E574E8);
  sub_1C1DEC12C(a2, v49, &v15[*(v28 + 44)]);
  v29 = (a2 + *(v61 + 144));
  v30 = *v29;
  v31 = v29[1];
  v62 = v30;
  v63 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  *&v15[*(v13 + 36)] = v64[0] + v64[0];
  (*(v10 + 104))(v12, *MEMORY[0x1E697F3A0], v9);
  sub_1C1DEF1E0();
  sub_1C1E5332C();
  (*(v10 + 8))(v12, v9);
  sub_1C1DC1870(v15, &qword_1EBF1CC98, &qword_1C1E576E8);
  v32 = v51;
  sub_1C1DDED54(a2, v51);
  v33 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v34 = swift_allocObject();
  sub_1C1DEDD58(v32, v34 + v33);
  v35 = &v18[*(v16 + 36)];
  *v35 = sub_1C1DEF298;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v36 = v47;
  sub_1C1E52E4C();
  v37 = sub_1C1DEF324();
  sub_1C1E5341C();
  (*(v57 + 8))(v36, v58);
  sub_1C1DC1870(v18, &qword_1EBF1CCA0, &qword_1C1E576F0);
  v62 = v16;
  v63 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v48;
  v39 = v52;
  sub_1C1E533CC();
  (*(v53 + 8))(v22, v39);
  CalculateScrubber.formattedValue.getter();
  v62 = v40;
  v63 = v41;
  sub_1C1DC733C(v40, v41, v42);
  v43 = v50;
  sub_1C1E5297C();

  sub_1C1DC1870(v38, &qword_1EBF1CCB0, &unk_1C1E57700);
  sub_1C1DDED54(a2, v32);
  v44 = swift_allocObject();
  sub_1C1DEDD58(v32, v44 + v33);
  v45 = v56;
  sub_1C1E5298C();

  sub_1C1DC1870(v43, &qword_1EBF1CCB0, &unk_1C1E57700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  sub_1C1E52D7C();
  sub_1C1DEF924();
  sub_1C1E5342C();

  return sub_1C1DC1870(v45, &qword_1EBF1CCB0, &unk_1C1E57700);
}

void *sub_1C1DEC12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CalculateScrubberView(0);
  v34 = *(v6 - 8);
  v7 = *(v34 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAF0, &unk_1C1E574F8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  result = sub_1C1DEA90C(a2);
  v14 = result + 3;
  if (__OFADD__(result, 3))
  {
    __break(1u);
  }

  else
  {
    sub_1C1E5283C();
    v16 = v15;
    v17 = *(v6 + 140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    v33[1] = v17;
    sub_1C1E527BC();
    v18 = *&v36;
    v19 = *(v6 + 144);
    result = sub_1C1E527BC();
    if (v14 >= -1)
    {
      v20 = (v16 - (v18 + *&v36) * v14) * 0.5;
      v36 = v14 / -2;
      v37 = v14 / 2;
      swift_getKeyPath();
      sub_1C1DDED54(a1, v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = v34[80];
      v34 = v9;
      v22 = a3;
      v23 = (v21 + 16) & ~v21;
      v24 = swift_allocObject();
      v33[0] = v19;
      v25 = v24;
      sub_1C1DEDD58(v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
      *(v25 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAF8, &qword_1C1E57520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB00, &qword_1C1E57528);
      sub_1C1DEE200();
      sub_1C1DEE2E0();
      sub_1C1E537FC();
      v26 = sub_1C1DE864C();
      sub_1C1E527BC();
      v27 = *&v36;
      sub_1C1E527BC();
      v28 = fmod(v26, v27 + *&v36);
      v29 = v34;
      v30 = &v12[*(v35 + 36)];
      *v30 = v28;
      *(v30 + 1) = 0;
      sub_1C1DC1424(v12, v29, &qword_1EBF1CAF0, &unk_1C1E574F8);
      *v22 = v20;
      *(v22 + 8) = 0;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB28, &qword_1C1E57530);
      sub_1C1DC1424(v29, v22 + *(v31 + 48), &qword_1EBF1CAF0, &unk_1C1E574F8);
      v32 = v22 + *(v31 + 64);
      *v32 = v20;
      *(v32 + 8) = 0;
      sub_1C1DC1870(v12, &qword_1EBF1CAF0, &unk_1C1E574F8);
      return sub_1C1DC1870(v29, &qword_1EBF1CAF0, &unk_1C1E574F8);
    }
  }

  __break(1u);
  return result;
}

void sub_1C1DEC4F0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_1C1DEAA18();
  v9 = (v8 + v7) / a3 + (v8 + v7) / a3;
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  sub_1C1E527BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  v10 = *(a2 + 8);
  v11 = sub_1C1E52FFC();
  sub_1C1E527BC();
  sub_1C1E5264C();
  *a4 = v17;
  *(a4 + 8) = v9;
  *(a4 + 16) = v17;
  *(a4 + 24) = v16;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  *(a4 + 56) = v13;
  *(a4 + 64) = v14;
  *(a4 + 72) = v15;
  *(a4 + 80) = 0;
}

double sub_1C1DEC644(uint64_t a1)
{
  v2 = sub_1C1E5376C();
  v3 = *(v2 - 8);
  *&result = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_1C1E5375C();
    MEMORY[0x1C690F520](v6, 0.0);
    (*(v3 + 8))(v6, v2);
    sub_1C1E5391C();

    v7 = sub_1C1DE3DF0();
    if ((v7 & 1) == 0)
    {
    }

    MEMORY[0x1EEE9AC00](v7);
    *&v8[-16] = a1;
    sub_1C1E5291C();

    type metadata accessor for CalculateScrubberView(0);
    v9[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
    sub_1C1E52D6C();
  }

  return result;
}

uint64_t sub_1C1DEC814(double a1)
{
  type metadata accessor for CalculateScrubberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  return sub_1C1E536FC();
}

void sub_1C1DEC898(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_1C1E52F3C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 != *MEMORY[0x1E697CC28])
  {
    if (v12 != *MEMORY[0x1E697CC20])
    {
LABEL_16:
      sub_1C1E54BFC();
      __break(1u);
      return;
    }

    v18 = (a2 + *(type metadata accessor for CalculateScrubberView(0) + 80));
    v19 = *v18;
    v20 = v18[1];
    v26 = *v18;
    v27 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
    sub_1C1E536EC();
    if (!__OFSUB__(v25, 1))
    {
      v26 = v19;
      v27 = v20;
      --v25;
      sub_1C1E536FC();
      v21 = *a2;
      v26 = v19;
      v27 = v20;
      sub_1C1E536EC();
      if (*(v21 + 104) == v25)
      {
        v17 = v25;
        goto LABEL_9;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v26 = v21;
      sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = (a2 + *(type metadata accessor for CalculateScrubberView(0) + 80));
  v14 = *v13;
  v15 = v13[1];
  v26 = *v13;
  v27 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536EC();
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v26 = v14;
  v27 = v15;
  ++v25;
  sub_1C1E536FC();
  v16 = *a2;
  v26 = v14;
  v27 = v15;
  sub_1C1E536EC();
  if (*(v16 + 104) == v25)
  {
    v17 = v25;
LABEL_9:
    sub_1C1DFE054(v17);
    return;
  }

  v22 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v22);
  v26 = v16;
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
LABEL_12:
  sub_1C1E520AC();
}

void sub_1C1DECC84(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  *a2 = *(v3 + 104);
}

unint64_t sub_1C1DECD54()
{
  result = qword_1EBF1C910;
  if (!qword_1EBF1C910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C868, &qword_1C1E57220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C860, &qword_1C1E57218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C880, &qword_1C1E57238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C858, &qword_1C1E57210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C888, &qword_1C1E57240);
    sub_1C1DE6074();
    v1 = MEMORY[0x1E697E238];
    sub_1C1DC1124(&qword_1EBF1C8F0, &qword_1EBF1C888, &qword_1C1E57240, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1C8F8, &qword_1EBF1C880, &qword_1C1E57238, v1);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1C918, &qword_1EBF1C908, &qword_1C1E57298, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C910);
  }

  return result;
}

double sub_1C1DECF2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1C1DECF3C()
{
  result = qword_1EBF1C920;
  if (!qword_1EBF1C920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C890, &qword_1C1E57248);
    sub_1C1DECFF4();
    sub_1C1DC1124(&qword_1EBF1C8E0, &qword_1EBF1C8E8, &unk_1C1E57280, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C920);
  }

  return result;
}

unint64_t sub_1C1DECFF4()
{
  result = qword_1EBF1C928;
  if (!qword_1EBF1C928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C930, &qword_1C1E572A0);
    sub_1C1DED078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C928);
  }

  return result;
}

unint64_t sub_1C1DED078()
{
  result = qword_1EBF1C938;
  if (!qword_1EBF1C938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C940, &qword_1C1E572A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C948, &qword_1C1E572B0);
    sub_1C1DED140();
    swift_getOpaqueTypeConformance2();
    sub_1C1DED33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C938);
  }

  return result;
}

unint64_t sub_1C1DED140()
{
  result = qword_1EBF1C950;
  if (!qword_1EBF1C950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C948, &qword_1C1E572B0);
    sub_1C1DED1F8();
    sub_1C1DC1124(&qword_1EBF1C8E0, &qword_1EBF1C8E8, &unk_1C1E57280, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C950);
  }

  return result;
}

unint64_t sub_1C1DED1F8()
{
  result = qword_1EBF1C958;
  if (!qword_1EBF1C958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C960, &qword_1C1E572B8);
    sub_1C1DED284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C958);
  }

  return result;
}

unint64_t sub_1C1DED284()
{
  result = qword_1EBF1C968;
  if (!qword_1EBF1C968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C970, &qword_1C1E572C0);
    sub_1C1DCA40C();
    sub_1C1DC1124(&qword_1EBF1C988, &qword_1EBF1C990, &qword_1C1E572D8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C968);
  }

  return result;
}

unint64_t sub_1C1DED33C()
{
  result = qword_1EBF1C998;
  if (!qword_1EBF1C998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C9A0, &qword_1C1E572E0);
    sub_1C1DED3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C998);
  }

  return result;
}

unint64_t sub_1C1DED3C8()
{
  result = qword_1EBF1C9A8;
  if (!qword_1EBF1C9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C9B0, &qword_1C1E572E8);
    sub_1C1DC1124(&qword_1EBF1C9B8, &qword_1EBF1C9C0, &qword_1C1E572F0, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C9A8);
  }

  return result;
}

unint64_t sub_1C1DED4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1C9D8;
  if (!qword_1EBF1C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C9D8);
  }

  return result;
}

void sub_1C1DED538(uint64_t a1)
{
  type metadata accessor for CalculateScrubber(319);
  if (v1 <= 0x3F)
  {
    sub_1C1DDEBA0(319, v1, v2);
    if (v3 <= 0x3F)
    {
      sub_1C1DED94C(319, &qword_1EBF1C518, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        sub_1C1DED898(319, &qword_1EBF1CA00, MEMORY[0x1E697C880]);
        if (v5 <= 0x3F)
        {
          sub_1C1DED898(319, &qword_1EBF1CA08, MEMORY[0x1E697BDF0]);
          if (v6 <= 0x3F)
          {
            sub_1C1DED8F8(319, &qword_1EBF1CA10, &qword_1EBF1C840, &qword_1C1E571F8);
            if (v7 <= 0x3F)
            {
              sub_1C1DED8F8(319, &qword_1EBF1CA18, &qword_1EBF1C848, &qword_1C1E57200);
              if (v8 <= 0x3F)
              {
                sub_1C1DED94C(319, &qword_1EBF1CA20, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v9 <= 0x3F)
                {
                  sub_1C1DED94C(319, &qword_1EBF1CA28, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                  if (v10 <= 0x3F)
                  {
                    sub_1C1DED94C(319, &qword_1EBF1CA30, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
                    if (v11 <= 0x3F)
                    {
                      sub_1C1DED94C(319, &qword_1EBF1CA38, MEMORY[0x1E69E7DE0], MEMORY[0x1E697BF20]);
                      if (v12 <= 0x3F)
                      {
                        sub_1C1DED8F8(319, &qword_1EBF1CA40, &qword_1EBF1C838, &qword_1C1E571C0);
                        if (v13 <= 0x3F)
                        {
                          sub_1C1DED94C(319, &qword_1EBF1CA48, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
                          if (v14 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C1DED898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1DED8F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C1E5371C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C1DED94C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for GraphViewModel.GraphType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphViewModel.GraphType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1DEDAEC()
{
  result = qword_1EBF1CA50;
  if (!qword_1EBF1CA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA58, &qword_1C1E57428);
    sub_1C1DEDB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CA50);
  }

  return result;
}

unint64_t sub_1C1DEDB70()
{
  result = qword_1EBF1CA60;
  if (!qword_1EBF1CA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C8A8, &qword_1C1E57260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C898, &qword_1C1E57250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C880, &qword_1C1E57238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C890, &qword_1C1E57248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C888, &qword_1C1E57240);
    sub_1C1DECF3C();
    v1 = MEMORY[0x1E697E238];
    sub_1C1DC1124(&qword_1EBF1C8F0, &qword_1EBF1C888, &qword_1C1E57240, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1C8F8, &qword_1EBF1C880, &qword_1C1E57238, v1);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C868, &qword_1C1E57220);
    sub_1C1DECD54();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CA60);
  }

  return result;
}

uint64_t sub_1C1DEDD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateScrubberView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DEDE08(uint64_t a1)
{
  v2 = sub_1C1E536BC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1E52A1C();
}

uint64_t sub_1C1DEDED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C970, &qword_1C1E572C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1DEDF40()
{
  result = qword_1EBF1CAB0;
  if (!qword_1EBF1CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA80, &qword_1C1E574A8);
    sub_1C1DC1124(&qword_1EBF1CAB8, &qword_1EBF1CAC0, &qword_1C1E574D8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CAB0);
  }

  return result;
}

unint64_t sub_1C1DEE010()
{
  result = qword_1EBF1CAC8;
  if (!qword_1EBF1CAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA88, &qword_1C1E574B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA80, &qword_1C1E574A8);
    sub_1C1DEDF40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CAC8);
  }

  return result;
}

unint64_t sub_1C1DEE108()
{
  result = qword_1EBF1CAD0;
  if (!qword_1EBF1CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA98, &qword_1C1E574C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA88, &qword_1C1E574B0);
    sub_1C1DEE010();
    swift_getOpaqueTypeConformance2();
    sub_1C1DEEC28(&qword_1EBF1C690, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CAD0);
  }

  return result;
}

unint64_t sub_1C1DEE200()
{
  result = qword_1EBF1CB08;
  if (!qword_1EBF1CB08)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CAF8, &qword_1C1E57520);
    sub_1C1DEE28C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CB08);
  }

  return result;
}

unint64_t sub_1C1DEE28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1CB10;
  if (!qword_1EBF1CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CB10);
  }

  return result;
}

unint64_t sub_1C1DEE2E0()
{
  result = qword_1EBF1CB18;
  if (!qword_1EBF1CB18)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CB00, &qword_1C1E57528);
    sub_1C1DEE36C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CB18);
  }

  return result;
}

unint64_t sub_1C1DEE36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1CB20;
  if (!qword_1EBF1CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CB20);
  }

  return result;
}

uint64_t *sub_1C1DEE410(double a1)
{
  v3 = *(type metadata accessor for CalculateScrubberView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1DE932C((v1 + v4), v8, v9, a1, v10, v11);
}

uint64_t sub_1C1DEE4E8(uint64_t a1)
{
  v2 = type metadata accessor for CalculateScrubberView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1DEE620(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CalculateScrubberView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1C1DEE6B4(uint64_t *a1@<X8>)
{
  type metadata accessor for CalculateScrubberView(0);

  sub_1C1DE72CC(a1);
}

uint64_t objectdestroy_86Tm()
{
  v1 = type metadata accessor for CalculateScrubberView(0);
  v2 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = v1[6];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v6 = *(*(v5 - 8) + 8);
  v6(v3 + v4, v5);
  v6(v3 + v1[7], v5);
  v6(v3 + v1[8], v5);
  v6(v3 + v1[9], v5);
  v6(v3 + v1[10], v5);
  v6(v3 + v1[11], v5);
  v6(v3 + v1[12], v5);
  sub_1C1DDEC6C(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v7 = v3 + v1[14];
  v8 = sub_1C1E52DFC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);

  v10 = v3 + v1[23];
  v11 = sub_1C1E51F5C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);

  v6(v3 + v1[31], v5);
  v6(v3 + v1[32], v5);
  v6(v3 + v1[33], v5);

  v6(v3 + v1[35], v5);
  v6(v3 + v1[36], v5);
  v6(v3 + v1[37], v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v14, v2 | 7);
}

uint64_t sub_1C1DEEBB4(uint64_t *a1)
{
  v3 = *(type metadata accessor for CalculateScrubberView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1C1DE73AC(a1, v4, v5, v6);
}

uint64_t sub_1C1DEEC28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1DEEC70()
{
  result = qword_1EBF1CC28;
  if (!qword_1EBF1CC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CBD8, &qword_1C1E57600);
    sub_1C1DEECFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC28);
  }

  return result;
}

unint64_t sub_1C1DEECFC()
{
  result = qword_1EBF1CC30;
  if (!qword_1EBF1CC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC20, &qword_1C1E57668);
    sub_1C1DEEDB4();
    sub_1C1DC1124(&qword_1EDE73B30, &qword_1EBF1C1A8, &qword_1C1E55C80, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC30);
  }

  return result;
}

unint64_t sub_1C1DEEDB4()
{
  result = qword_1EBF1CC38;
  if (!qword_1EBF1CC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC18, &qword_1C1E57630);
    sub_1C1DEEE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC38);
  }

  return result;
}

unint64_t sub_1C1DEEE40()
{
  result = qword_1EBF1CC40;
  if (!qword_1EBF1CC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC48, &unk_1C1E57670);
    sub_1C1DEEEF8();
    sub_1C1DC1124(&qword_1EBF1CC68, &qword_1EBF1CC70, &unk_1C1E57680, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC40);
  }

  return result;
}

unint64_t sub_1C1DEEEF8()
{
  result = qword_1EBF1CC50;
  if (!qword_1EBF1CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CBD0, &qword_1C1E575F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CBC8, &qword_1C1E575F0);
    sub_1C1E52CDC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CBC0, &qword_1C1E575E8);
    sub_1C1DC1124(&qword_1EBF1CC08, &qword_1EBF1CBC0, &qword_1C1E575E8, MEMORY[0x1E697D7E0]);
    swift_getOpaqueTypeConformance2();
    sub_1C1DEEC28(&qword_1EBF1CC10, MEMORY[0x1E697C5B0], MEMORY[0x1E697C5A8]);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1CC58, &qword_1EBF1CC60, &qword_1C1E5A440, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC50);
  }

  return result;
}

uint64_t sub_1C1DEF0DC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalculateScrubberView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1C1DEF160(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CalculateScrubberView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C1DE7BA0(a1, a2, v6);
}

unint64_t sub_1C1DEF1E0()
{
  result = qword_1EBF1CCB8;
  if (!qword_1EBF1CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC98, &qword_1C1E576E8);
    sub_1C1DC1124(&qword_1EBF1CCC0, &qword_1EBF1CAD8, &qword_1C1E574E0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CCB8);
  }

  return result;
}

uint64_t sub_1C1DEF2B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalculateScrubberView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1C1DEF324()
{
  result = qword_1EBF1CCC8;
  if (!qword_1EBF1CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CCA0, &qword_1C1E576F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC98, &qword_1C1E576E8);
    sub_1C1DEF1E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CCC8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for CalculateScrubberView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v16 = v0;
  v4 = v0 + v3;

  v5 = v1[6];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[7], v6);
  v7(v4 + v1[8], v6);
  v7(v4 + v1[9], v6);
  v7(v4 + v1[10], v6);
  v7(v4 + v1[11], v6);
  v7(v4 + v1[12], v6);
  sub_1C1DDEC6C(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v8 = v4 + v1[14];
  v9 = sub_1C1E52DFC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);

  v11 = v4 + v1[23];
  v12 = sub_1C1E51F5C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);

  v7(v4 + v1[31], v6);
  v7(v4 + v1[32], v6);
  v7(v4 + v1[33], v6);

  v7(v4 + v1[35], v6);
  v7(v4 + v1[36], v6);
  v7(v4 + v1[37], v6);

  return MEMORY[0x1EEE6BDD0](v16, v3 + v15, v2 | 7);
}

unint64_t sub_1C1DEF924()
{
  result = qword_1EBF1CCD0;
  if (!qword_1EBF1CCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CCB0, &unk_1C1E57700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CCA0, &qword_1C1E576F0);
    sub_1C1DEF324();
    swift_getOpaqueTypeConformance2();
    sub_1C1DEEC28(&qword_1EBF1C690, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CCD0);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for CalculateScrubberView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v16 = v0;
  v4 = v0 + v3;

  v5 = v1[6];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[7], v6);
  v7(v4 + v1[8], v6);
  v7(v4 + v1[9], v6);
  v7(v4 + v1[10], v6);
  v7(v4 + v1[11], v6);
  v7(v4 + v1[12], v6);
  sub_1C1DDEC6C(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v8 = v4 + v1[14];
  v9 = sub_1C1E52DFC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);

  v11 = v4 + v1[23];
  v12 = sub_1C1E51F5C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);

  v7(v4 + v1[31], v6);
  v7(v4 + v1[32], v6);
  v7(v4 + v1[33], v6);

  v7(v4 + v1[35], v6);
  v7(v4 + v1[36], v6);
  v7(v4 + v1[37], v6);

  return MEMORY[0x1EEE6BDD0](v16, ((v15 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1C1DEFECC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CalculateScrubberView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_1C1DEC4F0(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

void sub_1C1DEFFD8()
{
  v1 = *(v0 + 24);
  v2 = sub_1C1E53B4C();
  if (v2 >> 62)
  {
    v3 = sub_1C1E54ACC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else if (v5 >= 1)
  {
    v6 = sub_1C1DF1EE8(v5, 0);
    if (sub_1C1DF1F6C(v7, (v6 + 4), v5, 0, v5) != v5)
    {
      __break(1u);
    }
  }
}

uint64_t CalculateExpressionStackView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_1C1DF01BC;
  a1[1] = v5;
  return sub_1C1DF01C4(v10, &v9);
}

uint64_t sub_1C1DF011C@<X0>(uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  sub_1C1E5283C();
  v6 = v5 / *(a2 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(a2 + 16);
  *(v7 + 24) = *a2;
  *(v7 + 40) = v8;
  v9 = *(a2 + 48);
  *(v7 + 56) = *(a2 + 32);
  *(v7 + 72) = v9;
  *a3 = sub_1C1DF196C;
  a3[1] = v7;
  return sub_1C1DF01C4(a2, &v11);
}

uint64_t sub_1C1DF01FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v27 = a3;
  v28 = sub_1C1E52D2C();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCE8, &qword_1C1E577E8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCF0, &qword_1C1E577F0);
  v13 = *(v12 - 8);
  v24 = v12;
  v25 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v29 = a4;
  v30 = a2;
  v31 = a1;
  sub_1C1E52FEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCF8, &qword_1C1E577F8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CD00, &qword_1C1E57800);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CD08, &qword_1C1E57808);
  v18 = sub_1C1DC1124(&qword_1EBF1CD10, &qword_1EBF1CD00, &qword_1C1E57800, MEMORY[0x1E697C560]);
  v19 = sub_1C1DF1984();
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1C1E526BC();
  *&v11[*(v9 + 36)] = 0;
  sub_1C1E5399C();
  v20 = sub_1C1DF1A38();
  sub_1C1E533EC();
  sub_1C1DD2B1C(v11);
  sub_1C1E52D1C();
  sub_1C1E52FEC();
  v32 = v9;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  sub_1C1E5343C();
  (*(v26 + 8))(v8, v28);
  return (*(v25 + 8))(v15, v21);
}

uint64_t sub_1C1DF0554@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v19 = a2;
  v22 = a3;
  v6 = sub_1C1E529BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD00, &qword_1C1E57800);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  sub_1C1E52CAC();
  v23 = a1;
  v24 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD50, &qword_1C1E57820);
  sub_1C1DC1124(&qword_1EBF1CD58, &qword_1EBF1CD50, &qword_1C1E57820, MEMORY[0x1E6981F48]);
  sub_1C1E52CBC();
  v26 = sub_1C1E53B4C();
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v6);
  v13 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = a1[1];
  *(v14 + 1) = *a1;
  *(v14 + 2) = v15;
  v16 = a1[3];
  *(v14 + 3) = a1[2];
  *(v14 + 4) = v16;
  (*(v7 + 32))(&v14[v13], &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1C1DF01C4(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD08, &qword_1C1E57808);
  sub_1C1DC1124(&qword_1EBF1CD10, &qword_1EBF1CD00, &qword_1C1E57800, MEMORY[0x1E697C560]);
  sub_1C1DF1984();
  v17 = v20;
  sub_1C1E534CC();

  return (*(v21 + 8))(v12, v17);
}

uint64_t sub_1C1DF087C@<X0>(_OWORD *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD60, &qword_1C1E57828);
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD68, &unk_1C1E57830);
  v39 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v33 - v10;
  v11 = a1[1];
  v43[0] = *a1;
  v43[1] = v11;
  v12 = a1[3];
  v43[2] = a1[2];
  v43[3] = v12;
  sub_1C1DEFFD8();
  v42[8] = v13;
  swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = a1[1];
  v14[1] = *a1;
  v14[2] = v15;
  v16 = a1[3];
  v14[3] = a1[2];
  v14[4] = v16;
  sub_1C1DF01C4(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD70, &qword_1C1E57858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD78, &qword_1C1E57860);
  v17 = MEMORY[0x1E69E6338];
  sub_1C1DC1124(&qword_1EBF1CD80, &qword_1EBF1CD70, &qword_1C1E57858, MEMORY[0x1E69E6338]);
  sub_1C1DC1124(&qword_1EBF1CD88, &qword_1EBF1CD78, &qword_1C1E57860, MEMORY[0x1E6981870]);
  sub_1C1E537FC();
  v42[0] = sub_1C1E53B4C();
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  v20 = a1[3];
  *(v18 + 48) = a1[2];
  *(v18 + 64) = v20;
  *(v18 + 80) = a3;
  sub_1C1DF01C4(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD08, &qword_1C1E57808);
  sub_1C1E51F9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD90, &qword_1C1E57868);
  sub_1C1DC1124(&qword_1EBF1CD98, &qword_1EBF1CD08, &qword_1C1E57808, v17);
  sub_1C1DF1C24();
  sub_1C1DF1D0C(&qword_1EBF1CDC0, MEMORY[0x1E69921C8], MEMORY[0x1E69921E0]);
  v21 = v34;
  sub_1C1E5380C();
  v22 = *(v39 + 16);
  v23 = v33;
  v24 = v35;
  v22(v33, v41, v35);
  v25 = *(v40 + 16);
  v26 = v36;
  v27 = v37;
  v25(v36, v21, v37);
  v28 = v38;
  v22(v38, v23, v24);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDC8, &qword_1C1E57878);
  v25(&v28[*(v29 + 48)], v26, v27);
  v30 = *(v40 + 8);
  v30(v21, v27);
  v31 = *(v39 + 8);
  v31(v41, v24);
  v30(v26, v27);
  return (v31)(v23, v24);
}

uint64_t sub_1C1DF0DD4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1C1E52C9C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDE8, &qword_1C1E57898);
  return sub_1C1DF0E28(a2, a3 + *(v5 + 44));
}

uint64_t sub_1C1DF0E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  sub_1C1E537CC();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD8, &qword_1C1E57888) + 36)] = v11;

  sub_1C1E538DC();
  sub_1C1E5281C();
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDE0, &qword_1C1E57890) + 36)];
  v14 = v18[1];
  *v13 = v18[0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v18[2];
  v15 = &v10[*(v5 + 44)];
  *v15 = 0;
  *(v15 + 1) = v12;
  sub_1C1DF1E10(v10, v7);
  *a2 = 0;
  *(a2 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDF0, &qword_1C1E578A0);
  sub_1C1DF1E10(v7, a2 + *(v16 + 48));
  sub_1C1DF1E80(v10);
  return sub_1C1DF1E80(v7);
}

unint64_t sub_1C1DF0FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = type metadata accessor for CalculateExpressionView(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v3[1];
  v42 = *v3;
  v43 = v10;
  v11 = v3[3];
  v44 = v3[2];
  v45 = v11;
  result = sub_1C1E53B4C();
  if (!(result >> 62))
  {
    v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = a2;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:

    v37 = 0;
LABEL_14:
    v20 = v43;
    v21 = v7[10];
    v22 = sub_1C1E530EC();
    (*(*(v22 - 8) + 56))(v9 + v21, 1, 1, v22);
    v23 = v45;
    v24 = v9 + v7[12];
    type metadata accessor for PlatformKeyboardHandler();
    swift_allocObject();

    sub_1C1DD6A34(v23, *(&v23 + 1));
    v39 = sub_1C1DC148C();
    sub_1C1E536DC();
    v25 = v41;
    *v24 = v40;
    *(v24 + 1) = v25;
    v26 = v9 + v7[13];
    LOBYTE(v39) = 0;
    sub_1C1E536DC();
    v27 = v41;
    *v26 = v40;
    *(v26 + 1) = v27;
    *v9 = a1;
    *(v9 + 8) = v37;
    v9[2] = a3 / 1.35;
    v9[3] = 1.0;
    *(v9 + 40) = v20;
    sub_1C1DF1D54();

    *(v9 + 4) = sub_1C1E5499C();
    *(v9 + v7[11]) = v23;
    v28 = sub_1C1E538CC();
    v30 = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD90, &qword_1C1E57868);
    v32 = v38;
    v33 = v38 + *(v31 + 36);
    sub_1C1DF1514(a1, &v42, v33);
    v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDB8, &qword_1C1E57870) + 36));
    *v34 = v28;
    v34[1] = v30;
    return sub_1C1DC73F4(v9, v32);
  }

  v19 = result;
  v13 = sub_1C1E54ACC();
  result = v19;
  v38 = a2;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_16:
    v35 = MEMORY[0x1C6910730](v15, result);
    swift_unknownObjectRelease();

    v17 = v35 == a1;
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 8 * v15 + 32);

    v17 = v16 == a1;
LABEL_8:
    v18 = v17;
    v37 = v18;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1C1DF12D0()
{
  v0 = sub_1C1E51F9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = sub_1C1E53B4C();
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v11 = v7;
  v8 = sub_1C1E54ACC();
  v7 = v11;
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_14:
    MEMORY[0x1C6910730](v10);
    goto LABEL_8;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_8:

    sub_1C1E53C9C();

    (*(v1 + 32))(v6, v3, v0);
    sub_1C1DF1D0C(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1C1E529AC();
    (*(v1 + 8))(v6, v0);
    return;
  }

  __break(1u);
}

unint64_t sub_1C1DF1514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - v8;
  result = sub_1C1E53B4C();
  if (!(result >> 62))
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  v17 = result;
  v11 = sub_1C1E54ACC();
  result = v17;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_3:
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_16:
    v14 = MEMORY[0x1C6910730](v13);
    goto LABEL_8;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 8 * v13 + 32);

LABEL_8:

    *&v24 = a1;
    if (v14)
    {
      v23[1] = v14;
      sub_1C1E5444C();
      sub_1C1DF1D0C(&qword_1EBF1CD20, MEMORY[0x1E69921C8], MEMORY[0x1E69921D8]);

      v15 = sub_1C1E545AC();

      if (v15)
      {
        v16 = 1;
        return (*(v7 + 56))(a3, v16, 1, v6);
      }
    }

LABEL_13:
    v18 = *(a2 + 32);
    v19 = *(a2 + 40);
    sub_1C1E537CC();
    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD8, &qword_1C1E57888) + 36)] = v18;

    sub_1C1E538DC();
    sub_1C1E5281C();
    v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDE0, &qword_1C1E57890) + 36)];
    v21 = v25;
    *v20 = v24;
    *(v20 + 1) = v21;
    *(v20 + 2) = v26;
    v22 = &v9[*(v6 + 36)];
    *v22 = 0;
    *(v22 + 1) = v19;
    sub_1C1DF1DA0(v9, a3);
    v16 = 0;
    return (*(v7 + 56))(a3, v16, 1, v6);
  }

  __break(1u);
  return result;
}

uint64_t CalculateExpressionStackView.init(expression:textAlignment:textColor:rowCount:separatorColor:operationCallback:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 16) = a2;
  *a8 = result;
  *(a8 + 8) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = 0x3FE0000000000000;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

uint64_t sub_1C1DF181C@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  v7 = v1[3];
  v5[3] = v1[2];
  v5[4] = v7;
  *a1 = sub_1C1DF200C;
  a1[1] = v5;
  return sub_1C1DF01C4(v10, &v9);
}

uint64_t get_enum_tag_for_layout_string_9Calculate0A10ExpressionC9OperationCIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1C1DF18C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C1DF190C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1DF1984()
{
  result = qword_1EBF1CD18;
  if (!qword_1EBF1CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CD08, &qword_1C1E57808);
    sub_1C1DF1D0C(&qword_1EBF1CD20, MEMORY[0x1E69921C8], MEMORY[0x1E69921D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CD18);
  }

  return result;
}

unint64_t sub_1C1DF1A38()
{
  result = qword_1EBF1CD28;
  if (!qword_1EBF1CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CCE8, &qword_1C1E577E8);
    sub_1C1DC1124(&qword_1EBF1CD30, &qword_1EBF1CD38, &qword_1C1E57810, MEMORY[0x1E697BE60]);
    sub_1C1DC1124(&qword_1EBF1CD40, &qword_1EBF1CD48, &qword_1C1E57818, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CD28);
  }

  return result;
}

void sub_1C1DF1B28()
{
  sub_1C1E529BC();

  sub_1C1DF12D0();
}

uint64_t objectdestroyTm_0(uint64_t a1)
{

  if (*(v1 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1C1DF1C24()
{
  result = qword_1EBF1CDA0;
  if (!qword_1EBF1CDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CD90, &qword_1C1E57868);
    sub_1C1DF1D0C(&qword_1EBF1CDA8, type metadata accessor for CalculateExpressionView, &protocol conformance descriptor for CalculateExpressionView);
    sub_1C1DC1124(&qword_1EBF1CDB0, &qword_1EBF1CDB8, &qword_1C1E57870, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CDA0);
  }

  return result;
}

uint64_t sub_1C1DF1D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1DF1D54()
{
  result = qword_1EDE737A8;
  if (!qword_1EDE737A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE737A8);
  }

  return result;
}

uint64_t sub_1C1DF1DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DF1E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DF1E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C1DF1EE8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDF8, &qword_1C1E578A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t *sub_1C1DF1F6C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1DF204C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1C1E5352C();
  *a3 = result;
  return result;
}

uint64_t sub_1C1DF20C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v36 = sub_1C1E524FC();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE00, &qword_1C1E57930);
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v34 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE08, &qword_1C1E57938);
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE10, &qword_1C1E57940);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v37 = v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE18, &qword_1C1E57948);
  v14 = *(v13 - 8);
  v44 = v13;
  v45 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v40 = v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE20, &qword_1C1E57950);
  sub_1C1DF2BB4();
  sub_1C1E525AC();
  v34[1] = a1;
  v48 = sub_1C1E1CD1C();
  v49 = v16;
  sub_1C1E524EC();
  v17 = sub_1C1DC1124(&qword_1EBF1CE40, &qword_1EBF1CE00, &qword_1C1E57930, MEMORY[0x1E695B240]);
  v20 = sub_1C1DC733C(v17, v18, v19);
  sub_1C1E5322C();
  v47 = *(v3 + 8);
  v21 = v36;
  v47(v5, v36);

  (*(v38 + 8))(v8, v6);
  v52 = sub_1C1E1DA8C();
  v53 = v22;
  sub_1C1E524EC();
  v48 = v6;
  v49 = MEMORY[0x1E69E6158];
  v50 = v17;
  v51 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v37;
  v25 = v39;
  v26 = v35;
  sub_1C1E5324C();
  v27 = v21;
  v47(v5, v21);

  (*(v41 + 8))(v26, v25);
  v52 = sub_1C1E1D3D4();
  v53 = v28;
  sub_1C1E524EC();
  v48 = v25;
  v49 = MEMORY[0x1E69E6158];
  v50 = OpaqueTypeConformance2;
  v51 = v20;
  v33 = swift_getOpaqueTypeConformance2();
  v29 = v40;
  v30 = v42;
  sub_1C1E5326C();
  v47(v5, v27);

  (*(v43 + 8))(v24, v30);
  v48 = v30;
  v49 = MEMORY[0x1E69E6158];
  v50 = v33;
  v51 = v20;
  swift_getOpaqueTypeConformance2();
  v31 = v44;
  sub_1C1E5338C();
  return (*(v45 + 8))(v29, v31);
}

uint64_t sub_1C1DF26C0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v2 lock];
  swift_getKeyPath();
  sub_1C1DF2D00();
  sub_1C1E520BC();

  v3 = *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v2 unlock];
  sub_1C1E4C054(v3);

  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C1DF2D58;
  *(v4 + 24) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE48, &qword_1C1E5AA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE38, &qword_1C1E57958);
  sub_1C1DC1124(&qword_1EBF1CE50, &qword_1EBF1CE48, &qword_1C1E5AA60, MEMORY[0x1E69E6338]);
  sub_1C1DF2C38();
  return sub_1C1E537EC();
}

uint64_t sub_1C1DF2884@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E5234C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE60, &unk_1C1E579B0);
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = *(a1 + *(type metadata accessor for Function(0) + 52));
  if (v11)
  {

    sub_1C1E535FC();
    v12 = sub_1C1E5354C();

    if ((v12 & 1) == 0)
    {
      v13 = a1[10];
      if (v13)
      {
        v14 = a1[11];
        v26 = v14;
        v27 = v5;
        v15 = a1[3];
        v34 = a1[2];
        v35 = v15;
        v28 = a2;
        v16 = a1[7];
        v32 = a1[6];
        v33 = v16;
        v17 = a1[4];
        v18 = a1[5];
        v30 = v17;
        v31 = v18;
        sub_1C1DD6A34(v13, v14);
        v19 = sub_1C1DD6A34(v13, v14);
        sub_1C1DC733C(v19, v20, v21);

        v22 = v26;
        sub_1C1E5233C();
        v34 = v11;
        sub_1C1E5241C();
        sub_1C1DD0EB8(v13, v22);
        (*(v27 + 8))(v7, v4);

        v23 = v28;
        (*(v29 + 32))(v28, v10, v8);
        return (*(v29 + 56))(v23, 0, 1, v8);
      }
    }
  }

  v25 = *(v29 + 56);

  return v25(a2, 1, 1, v8);
}

unint64_t sub_1C1DF2BB4()
{
  result = qword_1EBF1CE28;
  if (!qword_1EBF1CE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE20, &qword_1C1E57950);
    sub_1C1DF2C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CE28);
  }

  return result;
}

unint64_t sub_1C1DF2C38()
{
  result = qword_1EBF1CE30;
  if (!qword_1EBF1CE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE38, &qword_1C1E57958);
    sub_1C1E5234C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CE30);
  }

  return result;
}

unint64_t sub_1C1DF2D00()
{
  result = qword_1EDE74850;
  if (!qword_1EDE74850)
  {
    type metadata accessor for GraphViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE74850);
  }

  return result;
}

uint64_t sub_1C1DF2D64(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE58, &qword_1C1E579A8);
  return v3(v4, &a1[*(v5 + 48)]);
}

double sub_1C1DF2DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  MEMORY[0x1EEE9AC00](v56);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = *v5;
  KeyPath = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(a5 + v18[10]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  swift_storeEnumTagMultiPayload();
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  *a5 = v16;
  a5[1] = a1;
  a5[2] = a2;
  v21 = a5 + v18[11];
  *v21 = v19;
  v21[8] = 0;
  v22 = a5 + v18[12];
  *v22 = v20;
  v22[8] = 0;
  v23 = a5 + v18[13];
  *&v57 = 0;
  BYTE8(v57) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  sub_1C1E536DC();
  v24 = BYTE8(v59);
  v25 = v60;
  *v23 = v59;
  v23[8] = v24;
  *(v23 + 2) = v25;
  v26 = a5 + v18[14];
  *&v57 = 0;
  BYTE8(v57) = 1;
  sub_1C1E536DC();
  v27 = BYTE8(v59);
  v28 = v60;
  *v26 = v59;
  v26[8] = v27;
  *(v26 + 2) = v28;
  v29 = a5 + v18[15];
  LOBYTE(v57) = 0;
  sub_1C1E536DC();
  v30 = *(&v59 + 1);
  *v29 = v59;
  *(v29 + 1) = v30;
  v31 = (a5 + v18[16]);
  *&v57 = sub_1C1E5355C();
  sub_1C1E536DC();
  v32 = *(&v59 + 1);
  *v31 = v59;
  v31[1] = v32;
  v33 = type metadata accessor for Function(0);
  (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
  sub_1C1DC1424(v15, v12, &qword_1EBF1C758, &qword_1C1E579C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v15, &qword_1EBF1C758, &qword_1C1E579C0);
  v34 = a5 + v18[18];
  v57 = 0uLL;
  LOBYTE(v58) = 2;
  sub_1C1E536DC();
  v35 = v60;
  v36 = *(&v60 + 1);
  *v34 = v59;
  v34[16] = v35;
  *(v34 + 3) = v36;
  v37 = a5 + v18[19];
  v57 = 0uLL;
  LOBYTE(v58) = 0;
  sub_1C1E536DC();
  v38 = v60;
  v39 = *(&v60 + 1);
  *v37 = v59;
  v37[16] = v38;
  *(v37 + 3) = v39;
  v40 = a5 + v18[20];
  v57 = 0uLL;
  *&v58 = 0;
  BYTE8(v58) = 2;
  sub_1C1E536DC();
  v41 = v60;
  v42 = BYTE8(v60);
  v43 = v61;
  *v40 = v59;
  *(v40 + 2) = v41;
  v40[24] = v42;
  *(v40 + 4) = v43;
  v44 = a5 + v18[21];
  v57 = 0uLL;
  sub_1C1E536DC();
  v45 = v60;
  *v44 = v59;
  *(v44 + 2) = v45;
  v46 = a5 + v18[22];
  type metadata accessor for CGSize(0);
  v57 = 0uLL;
  sub_1C1E536DC();
  v47 = v60;
  *v46 = v59;
  *(v46 + 2) = v47;
  v48 = a5 + v18[23];
  type metadata accessor for CGRect(0);
  v57 = 0u;
  v58 = 0u;
  sub_1C1E536DC();
  v49 = v61;
  v50 = v60;
  *v48 = v59;
  *(v48 + 1) = v50;
  *(v48 + 4) = v49;
  v51 = a5 + v18[24];
  v57 = 0u;
  v58 = 0u;
  sub_1C1E536DC();
  v52 = v61;
  result = *&v59;
  v54 = v60;
  *v51 = v59;
  *(v51 + 1) = v54;
  *(v51 + 4) = v52;
  return result;
}

uint64_t CalculateGraphView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  MEMORY[0x1EEE9AC00](KeyPath);
  v3 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE68, &qword_1C1E579C8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v66 - v11);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE70, &qword_1C1E579D0);
  MEMORY[0x1EEE9AC00](v71);
  v14 = &v66 - v13;
  v15 = *v1;
  swift_getKeyPath();
  *&v88 = v15;
  sub_1C1DF5D4C(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v16 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  if (*(v15 + v16) == 1)
  {
    v68 = sub_1C1E36158();
    KeyPath = swift_getKeyPath();
    v69 = swift_getKeyPath();
    v77 = 0;
    v76 = 0;
    v78 = 0uLL;

    sub_1C1E536DC();
    v17 = v88;
    v67 = v89;
    *&v78 = 0;
    BYTE8(v78) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
    sub_1C1E536DC();
    v18 = v88;
    v19 = v89;
    v75 = BYTE8(v88);
    *&v78 = 0;
    BYTE8(v78) = 1;
    sub_1C1E536DC();
    v20 = v88;
    v21 = v89;
    v74 = BYTE8(v88);
    *&v78 = 0;
    BYTE8(v78) = 1;
    sub_1C1E536DC();
    v22 = v88;
    v23 = v89;
    v73 = BYTE8(v88);
    v88 = v68;
    *&v89 = 0;
    *(&v89 + 1) = KeyPath;
    LOBYTE(v90) = v77;
    v91 = v69;
    v92 = v76;
    v93 = v17;
    v94 = v67;
    v95 = v18;
    v96 = v75;
    v97 = v19;
    v98 = v20;
    v99 = v74;
    v100 = v21;
    v101 = v22;
    v102 = v73;
    v103 = v23;

    sub_1C1DF3C10(sub_1C1DF5744, v15, &v78);

    sub_1C1DC1870(&v88, &qword_1EBF1CE78, &qword_1C1E57AA0);
    v24 = v85;
    *(v14 + 6) = v84;
    *(v14 + 7) = v24;
    *(v14 + 8) = v86;
    *(v14 + 18) = v87;
    v25 = v81;
    *(v14 + 2) = v80;
    *(v14 + 3) = v25;
    v26 = v83;
    *(v14 + 4) = v82;
    *(v14 + 5) = v26;
    v27 = v79;
    *v14 = v78;
    *(v14 + 1) = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE78, &qword_1C1E57AA0);
    sub_1C1DC1124(&qword_1EBF1CE80, &qword_1EBF1CE78, &qword_1C1E57AA0, &protocol conformance descriptor for GraphView3D<A>);
    sub_1C1DC1124(&qword_1EBF1CE88, &qword_1EBF1CE68, &qword_1C1E579C8, &protocol conformance descriptor for GraphView<A>);
    return sub_1C1E52CEC();
  }

  else
  {
    v29 = sub_1C1E36158();
    *(v9 + v7[10]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
    swift_storeEnumTagMultiPayload();
    v30 = swift_getKeyPath();
    v31 = swift_getKeyPath();
    v9[1] = 0;
    v9[2] = 0;
    *v9 = v29;
    v32 = v9 + v7[11];
    *v32 = v30;
    v32[8] = 0;
    v33 = v9 + v7[12];
    *v33 = v31;
    v33[8] = 0;
    v34 = v9 + v7[13];
    *&v78 = 0;
    v69 = v12;
    BYTE8(v78) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
    sub_1C1E536DC();
    v35 = BYTE8(v88);
    v36 = v89;
    *v34 = v88;
    v34[8] = v35;
    *(v34 + 2) = v36;
    v37 = v9 + v7[14];
    *&v78 = 0;
    BYTE8(v78) = 1;
    sub_1C1E536DC();
    v38 = BYTE8(v88);
    v39 = v89;
    *v37 = v88;
    v37[8] = v38;
    *(v37 + 2) = v39;
    v40 = v9 + v7[15];
    LOBYTE(v78) = 0;
    sub_1C1E536DC();
    v41 = *(&v88 + 1);
    *v40 = v88;
    *(v40 + 1) = v41;
    v42 = (v9 + v7[16]);
    *&v78 = sub_1C1E5355C();
    sub_1C1E536DC();
    v43 = *(&v88 + 1);
    *v42 = v88;
    v42[1] = v43;
    v44 = type metadata accessor for Function(0);
    (*(*(v44 - 8) + 56))(v6, 1, 1, v44);
    sub_1C1DC1424(v6, v3, &qword_1EBF1C758, &qword_1C1E579C0);
    sub_1C1E536DC();
    sub_1C1DC1870(v6, &qword_1EBF1C758, &qword_1C1E579C0);
    v45 = v9 + v7[18];
    v78 = 0uLL;
    LOBYTE(v79) = 2;
    sub_1C1E536DC();
    v46 = v89;
    v47 = *(&v89 + 1);
    *v45 = v88;
    v45[16] = v46;
    *(v45 + 3) = v47;
    v48 = v9 + v7[19];
    v78 = 0uLL;
    LOBYTE(v79) = 0;
    sub_1C1E536DC();
    v49 = v89;
    v50 = *(&v89 + 1);
    *v48 = v88;
    v48[16] = v49;
    *(v48 + 3) = v50;
    v51 = v9 + v7[20];
    v78 = 0uLL;
    *&v79 = 0;
    BYTE8(v79) = 2;
    sub_1C1E536DC();
    v52 = v89;
    v53 = BYTE8(v89);
    v54 = v90;
    *v51 = v88;
    *(v51 + 2) = v52;
    v51[24] = v53;
    *(v51 + 4) = v54;
    v55 = v9 + v7[21];
    v78 = 0uLL;
    sub_1C1E536DC();
    v56 = v89;
    *v55 = v88;
    *(v55 + 2) = v56;
    v57 = v9 + v7[22];
    type metadata accessor for CGSize(0);
    v78 = 0uLL;
    sub_1C1E536DC();
    v58 = v89;
    *v57 = v88;
    *(v57 + 2) = v58;
    v59 = v9 + v7[23];
    type metadata accessor for CGRect(0);
    v78 = 0u;
    v79 = 0u;
    sub_1C1E536DC();
    v60 = v90;
    v61 = v89;
    *v59 = v88;
    *(v59 + 1) = v61;
    *(v59 + 4) = v60;
    v62 = v9 + v7[24];
    v78 = 0u;
    v79 = 0u;
    sub_1C1E536DC();
    v63 = v90;
    v64 = v89;
    *v62 = v88;
    *(v62 + 1) = v64;
    *(v62 + 4) = v63;

    v65 = v69;
    sub_1C1DF2DE0(sub_1C1DF5714, v15, &qword_1EBF1CE68, &qword_1C1E579C8, v69);

    sub_1C1DC1870(v9, &qword_1EBF1CE68, &qword_1C1E579C8);
    sub_1C1DC1424(v65, v14, &qword_1EBF1CE68, &qword_1C1E579C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE78, &qword_1C1E57AA0);
    sub_1C1DC1124(&qword_1EBF1CE80, &qword_1EBF1CE78, &qword_1C1E57AA0, &protocol conformance descriptor for GraphView3D<A>);
    sub_1C1DC1124(&qword_1EBF1CE88, &qword_1EBF1CE68, &qword_1C1E579C8, &protocol conformance descriptor for GraphView<A>);
    sub_1C1E52CEC();
    return sub_1C1DC1870(v65, &qword_1EBF1CE68, &qword_1C1E579C8);
  }
}

void *sub_1C1DF3C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  *a3 = v7;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = KeyPath;
  *(a3 + 32) = 0;
  *(a3 + 40) = v9;
  *(a3 + 48) = 0;

  sub_1C1E536DC();
  *(a3 + 56) = v11;
  *(a3 + 72) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  sub_1C1E536DC();
  *(a3 + 80) = v11;
  *(a3 + 88) = BYTE8(v11);
  *(a3 + 96) = v12;
  sub_1C1E536DC();
  *(a3 + 104) = v11;
  *(a3 + 112) = BYTE8(v11);
  *(a3 + 120) = v12;
  result = sub_1C1E536DC();
  *(a3 + 128) = v11;
  *(a3 + 136) = BYTE8(v11);
  *(a3 + 144) = v12;
  return result;
}

uint64_t sub_1C1DF3D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CalculateGraphExpressionPopoverView(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v18 = a2;
  sub_1C1DF5D4C(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v12 = *(a2 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  v17 = a1;

  v13 = sub_1C1E2258C(a3, v16, v12);

  if (v13)
  {
    type metadata accessor for CalculateGraphExpression(0);
    sub_1C1DF5D4C(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
    sub_1C1E5384C();
    sub_1C1DF5AF4(v11, a4);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v9 + 56))(a4, v14, 1, v8);
}

uint64_t sub_1C1DF3F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEE8, &qword_1C1E57BE0);
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v55 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEF0, &qword_1C1E57BE8);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v58 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEF8, &qword_1C1E57BF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF00, &qword_1C1E57BF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v55 - v12;
  v13 = type metadata accessor for CalculateGraphExpressionPopoverView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF08, &qword_1C1E57C00);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF10, &qword_1C1E57C08);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v59 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  sub_1C1DF5A90(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v26 = swift_allocObject();
  sub_1C1DF5AF4(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF18, &qword_1C1E57C10);
  sub_1C1DF5BB8();
  sub_1C1E5373C();
  sub_1C1DC1124(&qword_1EBF1CF38, &qword_1EBF1CF08, &qword_1C1E57C00, MEMORY[0x1E697D680]);
  v57 = v24;
  sub_1C1E5344C();
  (*(v17 + 8))(v19, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  sub_1C1E5383C();
  v27 = *(v69 + 16);

  v28 = sub_1C1E53D7C();
  if (v28)
  {
    v29 = v28;
    v30 = [v28 formattedResult];

    v31 = sub_1C1E545FC();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = _s11CalculateUI0A22ExpressionTypesetImage10expression6result10showResult8fontSize05SwiftB00E0V0A00aC0C_SSSgSb12CoreGraphics7CGFloatVtF_0(v27, v31, v33, 1, 18.0);

  v35 = sub_1C1E52FFC();
  v69 = v34;
  LOBYTE(v70) = v35;
  v71 = 0u;
  v72 = 0u;
  v73 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF40, &qword_1C1E57C20);
  sub_1C1DF5C70();
  v36 = v56;
  sub_1C1E5344C();

  sub_1C1E52C6C();
  sub_1C1E5383C();
  v37 = v69;
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v37;

  sub_1C1E537BC();
  v40 = v60;
  sub_1C1E526CC();
  v41 = sub_1C1DC1124(&qword_1EBF1CF50, &qword_1EBF1CEE8, &qword_1C1E57BE0, MEMORY[0x1E697BE88]);
  v42 = v58;
  v43 = v64;
  sub_1C1E5334C();
  (*(v62 + 8))(v40, v43);
  v69 = v43;
  v70 = v41;
  swift_getOpaqueTypeConformance2();
  v44 = v61;
  v45 = v65;
  sub_1C1E5344C();
  (*(v63 + 8))(v42, v45);
  v46 = v57;
  v47 = v59;
  sub_1C1DC1424(v57, v59, &qword_1EBF1CF10, &qword_1C1E57C08);
  v48 = v36;
  v49 = v36;
  v50 = v66;
  sub_1C1DC1424(v49, v66, &qword_1EBF1CF00, &qword_1C1E57BF8);
  v51 = v67;
  sub_1C1DD30A0(v44, v67);
  v52 = v68;
  sub_1C1DC1424(v47, v68, &qword_1EBF1CF10, &qword_1C1E57C08);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF58, &qword_1C1E57C28);
  sub_1C1DC1424(v50, v52 + *(v53 + 48), &qword_1EBF1CF00, &qword_1C1E57BF8);
  sub_1C1DD30A0(v51, v52 + *(v53 + 64));
  sub_1C1DC1870(v44, &qword_1EBF1CEF8, &qword_1C1E57BF0);
  sub_1C1DC1870(v48, &qword_1EBF1CF00, &qword_1C1E57BF8);
  sub_1C1DC1870(v46, &qword_1EBF1CF10, &qword_1C1E57C08);
  sub_1C1DC1870(v51, &qword_1EBF1CEF8, &qword_1C1E57BF0);
  sub_1C1DC1870(v50, &qword_1EBF1CF00, &qword_1C1E57BF8);
  return sub_1C1DC1870(v47, &qword_1EBF1CF10, &qword_1C1E57C08);
}

void sub_1C1DF4840(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  sub_1C1E5383C();
  swift_getKeyPath();
  sub_1C1DF5D4C(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    MEMORY[0x1EEE9AC00](v3);
    v9[2] = a1;
    swift_getKeyPath();
    sub_1C1DF5D4C(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520BC();

    v10 = Strong;
    swift_getKeyPath();
    sub_1C1E520DC();

    v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
    v10 = *(Strong + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);

    v5 = sub_1C1DF5064(sub_1C1DF5D94, v9);
    if (v10 >> 62)
    {
      v8 = v5;
      v6 = sub_1C1E54ACC();
      v5 = v8;
      if (v6 >= v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v5)
      {
LABEL_4:
        sub_1C1DF5EB4(v5, v6);
        v7 = *(Strong + v4);
        *(Strong + v4) = v10;
        sub_1C1E2BD04(v7);

        v10 = Strong;
        swift_getKeyPath();
        sub_1C1E520CC();

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C1DF4AE8()
{
  v0 = sub_1C1E51F9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1C1E53C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  sub_1C1E5383C();
  sub_1C1E53C9C();

  v7 = sub_1C1E51F7C();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1C1DF4C50@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1E536AC();
  result = sub_1C1E5355C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1C1DF4C90()
{
  v1 = sub_1C1E52D5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEC0, &qword_1C1E57BC8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  *v7 = sub_1C1E52C0C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEC8, &qword_1C1E57BD0);
  sub_1C1DF3F70(v0, &v7[*(v8 + 44)]);
  v9 = sub_1C1E5300C();
  v10 = &v7[*(v5 + 36)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  sub_1C1E52D4C();
  sub_1C1DF59D8();
  sub_1C1E5346C();
  (*(v2 + 8))(v4, v1);
  return sub_1C1DC1870(v7, &qword_1EBF1CEC0, &qword_1C1E57BC8);
}

uint64_t sub_1C1DF4E4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DF5D4C(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1DF4F48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52ACC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1DF4F9C(uint64_t a1)
{
  v2 = sub_1C1E526EC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1E52A3C();
}

uint64_t sub_1C1DF5064(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  sub_1C1DF52E8(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1C1E54ACC();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1C1E54ACC())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C6910730](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1C6910730](v2, v6);
    v15 = MEMORY[0x1C6910730](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1C1DF54A4(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1C1DF54A4(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1C1E54ACC();
}

void sub_1C1DF52E8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1C1E54ACC();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6910730](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1C1DF5404(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C1E54ACC();
LABEL_9:
  result = sub_1C1E54B6C();
  *v2 = result;
  return result;
}

uint64_t sub_1C1DF54A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C1E54ACC();
  }

  return sub_1C1E54B6C();
}

uint64_t sub_1C1DF5508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1C1E543EC();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C1E54ACC();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1C1E54ACC();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1C1DF5628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1E54ACC();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1C1E54ACC();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1C1DF5404(result, 1);

  return sub_1C1DF5508(v7, v6, 1, v4);
}

unint64_t sub_1C1DF57A0()
{
  result = qword_1EBF1CE90;
  if (!qword_1EBF1CE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE98, &qword_1C1E57B38);
    sub_1C1DC1124(&qword_1EBF1CE80, &qword_1EBF1CE78, &qword_1C1E57AA0, &protocol conformance descriptor for GraphView3D<A>);
    sub_1C1DC1124(&qword_1EBF1CE88, &qword_1EBF1CE68, &qword_1C1E579C8, &protocol conformance descriptor for GraphView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CE90);
  }

  return result;
}

uint64_t type metadata accessor for CalculateGraphExpressionPopoverView(uint64_t a1)
{
  result = qword_1EBF1CEA8;
  if (!qword_1EBF1CEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1DF58F8(uint64_t a1, __n128 a2)
{
  sub_1C1DF5964(319, a2);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C1DF5964(uint64_t a1, __n128 a2)
{
  if (!qword_1EBF1CEB8)
  {
    type metadata accessor for CalculateGraphExpression(255);
    v2 = sub_1C1E5385C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBF1CEB8);
    }
  }
}

unint64_t sub_1C1DF59D8()
{
  result = qword_1EBF1CED0;
  if (!qword_1EBF1CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CEC0, &qword_1C1E57BC8);
    sub_1C1DC1124(&qword_1EBF1CED8, &qword_1EBF1CEE0, &qword_1C1E57BD8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CED0);
  }

  return result;
}

uint64_t sub_1C1DF5A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateGraphExpressionPopoverView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DF5AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateGraphExpressionPopoverView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C1DF5B58()
{
  v1 = *(type metadata accessor for CalculateGraphExpressionPopoverView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1C1DF4840(v2);
}

unint64_t sub_1C1DF5BB8()
{
  result = qword_1EBF1CF20;
  if (!qword_1EBF1CF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CF18, &qword_1C1E57C10);
    sub_1C1DC1124(&qword_1EBF1CF28, &qword_1EBF1CF30, &qword_1C1E57C18, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CF20);
  }

  return result;
}

unint64_t sub_1C1DF5C70()
{
  result = qword_1EBF1CF48;
  if (!qword_1EBF1CF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CF40, &qword_1C1E57C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CF48);
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1DF5D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1DF5DB4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CalculateGraphExpression(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1E54ACC();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1C1E54ACC();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DF5EB4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1E54ACC();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1C1E54ACC();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1C1DF5404(result, 1);

  return sub_1C1DF5DB4(v5, v3, 0, v12);
}

uint64_t type metadata accessor for TwoFingerDragRepresentable.Coordinator(uint64_t a1)
{
  result = qword_1EBF1CF68;
  if (!qword_1EBF1CF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1DF613C(uint64_t a1)
{
  result = sub_1C1E5350C();
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

uint64_t sub_1C1DF61D8(void *a1)
{
  v2 = sub_1C1E52CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1E5350C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF80, &qword_1C1E57DB8);
    sub_1C1E52F9C();
    *&v38.f64[0] = v6;
    v11 = v43;
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v13 = v12;
    v15 = v14;
    v16 = *(v3 + 8);
    *&v39.f64[0] = v3 + 8;
    v16(v5, v2);
    v17 = *(v7 + 8);
    v17(v10, v6);
    v18 = &v11[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_startLocation];
    *v18 = v13;
    *(v18 + 1) = v15;

    sub_1C1E52F9C();
    v19 = v43;
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v21 = v20;
    v23 = v22;
    v16(v5, v2);
    v17(v10, *&v38.f64[0]);
    v24 = &v19[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
    *v24 = v21;
    *(v24 + 1) = v23;

    v25 = v40[1];
    v43 = *v40;
    v44 = v25;
    v45 = *(v40 + 32);
    v41 = 0uLL;
    v42 = 2;
  }

  else if ([a1 state] == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF80, &qword_1C1E57DB8);
    sub_1C1E52F9C();
    v26 = v6;
    v27 = v43;
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v29 = v28;
    v31 = v30;
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v26);
    v32 = &v27[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
    *v32 = v29;
    *(v32 + 1) = v31;

    sub_1C1E52F9C();
    v33 = *&v46[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
    v38 = *&v46[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_startLocation];
    v39 = v33;

    v34 = v40[1];
    v43 = *v40;
    v44 = v34;
    v45 = *(v40 + 32);
    v41 = vsubq_f64(v39, v38);
    v42 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF80, &qword_1C1E57DB8);
    sub_1C1E52F9C();
    v35 = *&v46[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
    v38 = *&v46[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_startLocation];
    v39 = v35;

    v36 = v40[1];
    v43 = *v40;
    v44 = v36;
    v45 = *(v40 + 32);
    v41 = vsubq_f64(v39, v38);
    v42 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF88, &unk_1C1E57DC0);
  return sub_1C1E537AC();
}

uint64_t sub_1C1DF662C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C1E5350C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, a1, v4, v6);
  v10 = type metadata accessor for TwoFingerDragRepresentable.Coordinator(0);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_startLocation];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v11[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_currentLocation];
  *v13 = 0;
  *(v13 + 1) = 0;
  (v9)(&v11[OBJC_IVAR____TtCV11CalculateUI26TwoFingerDragRepresentable11Coordinator_converter], v8, v4);
  v16.receiver = v11;
  v16.super_class = v10;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  result = (*(v5 + 8))(v8, v4);
  *a2 = v14;
  return result;
}

void sub_1C1DF6798(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1C1E54ACC() != 2)
    {
      return;
    }
  }

  else if (*(a1 + 16) != 2)
  {
    return;
  }

  sub_1C1DF7224();
  sub_1C1DF7270();
  v4 = sub_1C1E548BC();
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DC9E8]) init];
  }

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TwoFingerPanGestureRecognizer();
  v6 = a2;
  objc_msgSendSuper2(&v7, sel_touchesMoved_withEvent_, v4, v5);
}

id sub_1C1DF690C(uint64_t a1, uint64_t a2)
{
  sub_1C1DF7224();
  sub_1C1DF7270();
  v4 = sub_1C1E548BC();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TwoFingerPanGestureRecognizer();
  objc_msgSendSuper2(&v10, sel_touchesEnded_withEvent_, v4, a2);

  result = [v2 _activeTouchesForEvent_];
  if (result)
  {
    v6 = result;
    v7 = sub_1C1E548CC();

    v8 = (v7 & 0xC000000000000001) != 0 ? sub_1C1E54ACC() : *(v7 + 16);

    result = [v2 minimumNumberOfTouches];
    if (v8 < result)
    {
      if ([v2 state] == 1)
      {
        v9 = 3;
      }

      else if ([v2 state] == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 5;
      }

      return [v2 setState_];
    }
  }

  return result;
}

id sub_1C1DF6AE8(uint64_t a1, uint64_t a2)
{
  sub_1C1DF70BC(a1, v16);
  v5 = v17;
  if (v17)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v16, v17);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1C1E54D0C();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for TwoFingerPanGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithTarget_action_, v11, a2);
  swift_unknownObjectRelease();
  sub_1C1DF712C(a1);
  return v13;
}

id sub_1C1DF6CD0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C1DF6D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C1DF6D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DragState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DragState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1DF6E68(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C1DF6E80(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

BOOL sub_1C1DF6EA8(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    return *(a1 + 8) == v3 && *a1 == v2;
  }

  if (*(a1 + 16) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return *(a1 + 8) == v3 && *a1 == v2;
  }

  return v4 == 2 && (*&v3 | *&v2) == 0;
}

uint64_t sub_1C1DF6F18(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C1E545FC();
  v5 = v4;

  if (v3 == 0xD00000000000001ALL && 0x80000001C1E5AF50 == v5)
  {
  }

  else
  {
    v7 = sub_1C1E54D2C();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1C1DF6FC8()
{
  type metadata accessor for TwoFingerPanGestureRecognizer();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setMinimumNumberOfTouches_];
  [v0 setMaximumNumberOfTouches_];
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF80, &qword_1C1E57DB8);
  sub_1C1E52F9C();
  [v1 setDelegate_];

  v2 = sub_1C1E545BC();
  [v1 setName_];

  return v1;
}

uint64_t sub_1C1DF70BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF90, &qword_1C1E58470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DF712C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF90, &qword_1C1E58470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

unint64_t sub_1C1DF7224()
{
  result = qword_1EBF1CF98;
  if (!qword_1EBF1CF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1CF98);
  }

  return result;
}

unint64_t sub_1C1DF7270()
{
  result = qword_1EBF1CFA0;
  if (!qword_1EBF1CFA0)
  {
    sub_1C1DF7224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CFA0);
  }

  return result;
}

Swift::Void __swiftcall CalculateExpression.copyToClipboard(overridePlaintext:)(Swift::String_optional overridePlaintext)
{
  countAndFlagsBits = overridePlaintext.value._countAndFlagsBits;
  object = overridePlaintext.value._object;
  if (!overridePlaintext.value._object)
  {
    v4 = sub_1C1DFFB1C(v1);
    if (!v5)
    {
      return;
    }

    countAndFlagsBits = v4;
    object = v5;
  }

  v6 = objc_opt_self();

  v7 = [v6 generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFB0, &qword_1C1E57DE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1E57DD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFB8, &qword_1C1E57DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  *(inited + 32) = 0xD000000000000011;
  v10 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0x80000001C1E5BB30;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x80000001C1E5AEA0;
  v11 = sub_1C1E53B0C();
  *(inited + 120) = v10;
  *(inited + 96) = v11;
  *(inited + 104) = v12;
  v13 = sub_1C1DF763C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFC0, &qword_1C1E57DF0);
  swift_arrayDestroy();
  *(v8 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFC8, &qword_1C1E57DF8);
  v14 = sub_1C1E547DC();

  [v7 setItems_];
}