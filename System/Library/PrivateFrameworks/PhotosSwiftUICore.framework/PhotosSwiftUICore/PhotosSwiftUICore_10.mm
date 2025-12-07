uint64_t sub_1C1097234(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1C10972B8()
{
  result = qword_1EDE774F0;
  if (!qword_1EDE774F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92938, &qword_1C12AF580);
    sub_1C0FDB6D4(&qword_1EDE7C018, &qword_1EBE92990, &qword_1C12B1390, MEMORY[0x1E697DDD0]);
    sub_1C0FDB6D4(&qword_1EDE76B38, &qword_1EBE92998, &unk_1C12AF650, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774F0);
  }

  return result;
}

unint64_t sub_1C109739C()
{
  result = qword_1EDE788A0;
  if (!qword_1EDE788A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE788A0);
  }

  return result;
}

uint64_t PhotosObservableAlbum.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableAlbum.init(_:)(a1);
  return v2;
}

uint64_t *PhotosObservableAlbum.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  v95[2] = v95 - v6;
  v95[1] = v4[13];
  v7 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v95 - v12;
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v95 - v17;
  OUTLINED_FUNCTION_14_2(v4[17]);
  v20 = v2 + *(v19 + 144);
  *v20 = 0;
  v20[8] = 1;
  OUTLINED_FUNCTION_10_15();
  v22 = v2 + *(v21 + 152);
  *v22 = 0;
  v22[8] = v23;
  OUTLINED_FUNCTION_10_15();
  v25 = v2 + *(v24 + 160);
  *v25 = 0;
  v25[8] = v26;
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_14_2(*(v27 + 216));
  OUTLINED_FUNCTION_14_2(*(v28 + 224));
  OUTLINED_FUNCTION_14_2(*(v29 + 232));
  v31 = *(v30 + 240);
  v32 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v2 + v31, 1, 1, v32);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v33 + 248)) = 0;
  OUTLINED_FUNCTION_10_15();
  sub_1C1261F60();
  (*(v15 + 16))(v18, a1, v7);
  sub_1C10342F0(v18, *v2, v2 + *(*v2 + 112));
  sub_1C12622A0();
  OUTLINED_FUNCTION_10_15();
  (*(v10 + 32))(v2 + *(v34 + 120), v13, AssociatedTypeWitness);
  (*(v4[12] + 16))(v7);
  OUTLINED_FUNCTION_10_15();
  v36 = (v2 + *(v35 + 128));
  *v36 = v37;
  v36[1] = v38;
  v39 = *(v4[11] + 8);
  v40 = (*(v39 + 40))(v7, v39);
  v42 = v41;
  OUTLINED_FUNCTION_10_15();
  v44 = (v2 + *(v43 + 136));

  *v44 = v40;
  v44[1] = v42;
  v45 = OUTLINED_FUNCTION_32_5();
  v46(v45);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_28_5(v48, v49, *(v47 + 144));
  v50 = OUTLINED_FUNCTION_32_5();
  v51(v50);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_28_5(v53, v54, *(v52 + 152));
  v55 = OUTLINED_FUNCTION_32_5();
  v56(v55);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_28_5(v58, v59, *(v57 + 160));
  (*(*(v39 + 8) + 8))(v7);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_25_4(v61, *(v60 + 168));
  v62 = OUTLINED_FUNCTION_32_5();
  v63(v62);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_25_4(v65, *(v64 + 176));
  v66 = OUTLINED_FUNCTION_32_5();
  v67(v66);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_25_4(v69, *(v68 + 184));
  v70 = OUTLINED_FUNCTION_32_5();
  v71(v70);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_25_4(v73, *(v72 + 192));
  v74 = OUTLINED_FUNCTION_32_5();
  v75(v74);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v76 + 200)) = v77 & 1;
  (*(v39 + 80))(v7, v39);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v78 + 208)) = v79;
  v80 = (*(v39 + 88))(v7, v39);
  sub_1C1098708(v80, v81);
  v82 = OUTLINED_FUNCTION_27_7();
  v84 = v83(v82);
  sub_1C10988DC(v84, v85);
  v86 = OUTLINED_FUNCTION_27_7();
  v88 = v87(v86);
  sub_1C1098924(v88, v89);
  v90 = OUTLINED_FUNCTION_27_7();
  v91(v90);
  sub_1C109896C();
  v92 = OUTLINED_FUNCTION_27_7();
  v93(v92);
  sub_1C1098AD4();
  (*(v15 + 8))(a1, v7);
  return v2;
}

uint64_t sub_1C1097A80()
{
  OUTLINED_FUNCTION_13_13();
  v4 = v3;
  v5 = *(v2 + 80);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  sub_1C109A520(&v15[-v9]);
  v11 = *(v7 + 8);
  v11(v10, v5);
  v18 = v5;
  v19 = *(v4 + 88);
  OUTLINED_FUNCTION_20();
  v20 = *(v12 + 104);
  KeyPath = swift_getKeyPath();
  v16 = v1;
  v17 = v0;
  sub_1C109C22C(KeyPath, sub_1C109C300, v15, MEMORY[0x1E69E7CA8] + 8);

  return v11(v0, v5);
}

void sub_1C1097C00()
{
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  v16[0] = sub_1C109AB74();
  v16[1] = v5;
  v14 = v2;
  v15 = v0;
  v6 = sub_1C0FA8038(v16, &v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180]);

  if (v6)
  {
    OUTLINED_FUNCTION_35_2();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_4_22();
    v8 = *(v4 + 96);
    *(v9 - 32) = *(v4 + 80);
    *(v9 - 16) = v8;
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_13();
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_12_3();
    *(v11 - 32) = v1;
    *(v11 - 24) = v2;
    *(v11 - 16) = v0;
    OUTLINED_FUNCTION_20_14(v12, v13, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    sub_1C109ABB4();
  }
}

void sub_1C1097D6C()
{
  OUTLINED_FUNCTION_9_2();
  v3 = sub_1C109AE0C();
  OUTLINED_FUNCTION_12_12(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A8, &unk_1C12AFBE0);
  v5 = sub_1C109CE8C(&qword_1EBE929B0, &qword_1EBE929A8, &unk_1C12AFBE0);
  if (OUTLINED_FUNCTION_33_6(v5))
  {
    OUTLINED_FUNCTION_35_2();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_52_1(v7);
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_13();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_12_3();
    *(v9 - 32) = v1;
    *(v9 - 24) = v0;
    *(v9 - 16) = v2;
    OUTLINED_FUNCTION_20_14(v10, v11, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_38_5(*(v12 + 144));
  }
}

void sub_1C1097EA8()
{
  OUTLINED_FUNCTION_9_2();
  v3 = sub_1C109AEE0();
  OUTLINED_FUNCTION_12_12(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A8, &unk_1C12AFBE0);
  v5 = sub_1C109CE8C(&qword_1EBE929B0, &qword_1EBE929A8, &unk_1C12AFBE0);
  if (OUTLINED_FUNCTION_33_6(v5))
  {
    OUTLINED_FUNCTION_35_2();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_52_1(v7);
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_13();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_12_3();
    *(v9 - 32) = v1;
    *(v9 - 24) = v0;
    *(v9 - 16) = v2;
    OUTLINED_FUNCTION_20_14(v10, v11, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_38_5(*(v12 + 152));
  }
}

void sub_1C1097FE4()
{
  OUTLINED_FUNCTION_9_2();
  v3 = sub_1C109AFB4();
  OUTLINED_FUNCTION_12_12(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A8, &unk_1C12AFBE0);
  v5 = sub_1C109CE8C(&qword_1EBE929B0, &qword_1EBE929A8, &unk_1C12AFBE0);
  if (OUTLINED_FUNCTION_33_6(v5))
  {
    OUTLINED_FUNCTION_35_2();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_52_1(v7);
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_13();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_12_3();
    *(v9 - 32) = v1;
    *(v9 - 24) = v0;
    *(v9 - 16) = v2;
    OUTLINED_FUNCTION_20_14(v10, v11, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_38_5(*(v12 + 160));
  }
}

void sub_1C1098120()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_7_18(v3, *(v2 + 168));
  if (OUTLINED_FUNCTION_47_2(v4, v5, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]))
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14(v8, v9, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v10 + 168)) = v1;
  }
}

void sub_1C109821C()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_7_18(v3, *(v2 + 176));
  if (OUTLINED_FUNCTION_47_2(v4, v5, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]))
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14(v8, v9, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v10 + 176)) = v1;
  }
}

void sub_1C1098318()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_7_18(v3, *(v2 + 184));
  if (OUTLINED_FUNCTION_47_2(v4, v5, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]))
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14(v8, v9, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v10 + 184)) = v1;
  }
}

void sub_1C1098414()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_7_18(v3, *(v2 + 192));
  if (OUTLINED_FUNCTION_47_2(v4, v5, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]))
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14(v8, v9, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v10 + 192)) = v1;
  }
}

void sub_1C1098510()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_7_18(v3, *(v2 + 200));
  if (OUTLINED_FUNCTION_47_2(v4, v5, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]))
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14(v8, v9, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v10 + 200)) = v1;
  }
}

double sub_1C109860C()
{
  OUTLINED_FUNCTION_13_13();
  sub_1C109B69C();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();

  swift_getAssociatedTypeWitness();
  sub_1C12661A0();
  OUTLINED_FUNCTION_51_1();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_54_2(KeyPath, MEMORY[0x1E69E7CA8], v2);

  return result;
}

void sub_1C1098750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v10 = *v6;
  v23[0] = a3();
  v23[1] = v11;
  v22[0] = a1;
  v22[1] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60, &qword_1C12AB090);
  v13 = sub_1C109CE8C(&qword_1EDE7B740, &qword_1EBE91A60, &qword_1C12AB090);
  LOBYTE(v12) = sub_1C0FA8038(v23, v22, v12, v13);

  if (v12)
  {
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_4_22();
    v15 = *(v10 + 96);
    *(v16 - 32) = *(v10 + 80);
    *(v16 - 16) = v15;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v18 - 32) = v6;
    *(v18 - 24) = a1;
    *(v18 - 16) = a2;
    sub_1C109C22C(v19, a5, v20, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
    a6(a1, a2);
  }
}

uint64_t sub_1C109896C()
{
  OUTLINED_FUNCTION_9_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12[-v4];
  sub_1C109BC40(&v12[-v4]);
  v6 = sub_1C109CFB8();
  LOBYTE(v2) = sub_1C0FA8038(v5, v0, v2, v6);
  sub_1C109C528(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_35_2();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_52_1(v8);
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_13();
    MEMORY[0x1EEE9AC00](v9);
    *&v12[-16] = v1;
    *&v12[-8] = v0;
    OUTLINED_FUNCTION_20_14(v10, &v12[-32], MEMORY[0x1E69E7CA8]);
  }

  else
  {
    sub_1C109CF2C(v0, v5);
    sub_1C109BC94();
  }

  return sub_1C109C528(v0);
}

uint64_t sub_1C1098AD4()
{
  OUTLINED_FUNCTION_13_13();
  sub_1C109BEE4();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();
  swift_getAssociatedTypeWitness();
  sub_1C1266790();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_51_1();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_54_2(KeyPath, MEMORY[0x1E69E7CA8], v2);

  return swift_unknownObjectRelease();
}

double sub_1C1098BD4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v176 = &v168 - v4;
  v5 = v2[10];
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v175 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v174 = &v168 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v173 = &v168 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v172 = &v168 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v171 = &v168 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v178 = &v168 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v168 - v20;
  sub_1C109A808();
  v22 = v2[12];
  v23 = (*(v22 + 16))(v5, v22);
  v25 = v24;
  v26 = *(v6 + 8);
  v182 = v6 + 8;
  v180 = v26;
  v26(v21, v5);
  v27 = v2[11];
  v179 = v5;
  *&v28 = v5;
  *(&v28 + 1) = v27;
  *&v29 = v22;
  *(&v29 + 1) = v2[13];
  v184 = v29;
  v185 = v28;
  v188 = v28;
  v189 = v29;
  KeyPath = swift_getKeyPath();
  sub_1C109C190(KeyPath);

  v31 = *(*v0 + 256);
  v193 = v0;
  v186 = v185;
  v187 = v184;
  swift_getKeyPath();
  v192[0] = v185;
  v192[1] = v184;
  type metadata accessor for PhotosObservableAlbum(255, v192);
  WitnessTable = swift_getWitnessTable();
  sub_1C1261F50();

  v32 = (v1 + *(*v1 + 128));
  swift_beginAccess();
  v33 = *v32 == v23 && v32[1] == v25;
  v183 = v31;
  if (v33 || (sub_1C1266D50() & 1) != 0)
  {
  }

  else
  {

    *v32 = v23;
    v32[1] = v25;
  }

  swift_endAccess();
  sub_1C109C098();
  v34 = v178;
  sub_1C109A808();
  v177 = *(v27 + 8);
  v35 = v179;
  v36 = (*(v177 + 40))(v179);
  v38 = v37;
  v39 = v180(v34, v35);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v40;
  v41 = swift_getKeyPath();
  sub_1C109C190(v41);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v42);
  v43 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v43;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v36, v38);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  v170 = (*(v27 + 16))(v35, v27);
  LODWORD(v169) = v44;
  v45 = v27;
  v46 = v180;
  v47 = v180(v34, v35);
  MEMORY[0x1EEE9AC00](v47);
  v48 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v48;
  v49 = swift_getKeyPath();
  sub_1C109C190(v49);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v50);
  v51 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v51;
  swift_getKeyPath();
  sub_1C1261F50();

  sub_1C11D6210(v170, v169 & 1);
  sub_1C109C098();
  sub_1C109A808();
  v170 = (*(v45 + 24))(v35, v45);
  LODWORD(v169) = v52;
  v53 = v46(v34, v35);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v54;
  v55 = swift_getKeyPath();
  sub_1C109C190(v55);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v56);
  v57 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v57;
  swift_getKeyPath();
  sub_1C1261F50();

  sub_1C11D6210(v170, v169 & 1);
  sub_1C109C098();
  sub_1C109A808();
  v58 = *(v45 + 32);
  v170 = v45;
  v169 = v58(v35, v45);
  LOBYTE(v36) = v59;
  v60 = v180;
  v61 = v180(v34, v35);
  MEMORY[0x1EEE9AC00](v61);
  v62 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v62;
  v63 = swift_getKeyPath();
  sub_1C109C190(v63);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v64);
  v65 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v65;
  swift_getKeyPath();
  sub_1C1261F50();

  sub_1C11D6210(v169, v36 & 1);
  v66 = v60;
  sub_1C109C098();
  v67 = v171;
  sub_1C109A808();
  v68 = (*(*(v177 + 8) + 8))(v35) & 1;
  v69 = v66(v67, v35);
  MEMORY[0x1EEE9AC00](v69);
  v70 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v70;
  v71 = swift_getKeyPath();
  sub_1C109C190(v71);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v72);
  v73 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v73;
  swift_getKeyPath();
  sub_1C1261F50();

  v74 = *(*v1 + 168);
  if (v68 != *(v1 + v74))
  {
    *(v1 + v74) = v68;
  }

  sub_1C109C098();
  v75 = v172;
  sub_1C109A808();
  v76 = v170;
  v77 = v179;
  v78 = v170[5](v179, v170) & 1;
  v79 = v180;
  v80 = v180(v75, v77);
  MEMORY[0x1EEE9AC00](v80);
  v81 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v81;
  v82 = swift_getKeyPath();
  sub_1C109C190(v82);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v83);
  v84 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v84;
  swift_getKeyPath();
  sub_1C1261F50();

  v85 = *(*v1 + 176);
  if (v78 != *(v1 + v85))
  {
    *(v1 + v85) = v78;
  }

  sub_1C109C098();
  v86 = v173;
  sub_1C109A808();
  v87 = v179;
  v88 = v76[6](v179, v76) & 1;
  v89 = v79(v86, v87);
  MEMORY[0x1EEE9AC00](v89);
  v90 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v90;
  v91 = swift_getKeyPath();
  sub_1C109C190(v91);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v92);
  v93 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v93;
  swift_getKeyPath();
  sub_1C1261F50();

  v94 = *(*v1 + 184);
  if (v88 != *(v1 + v94))
  {
    *(v1 + v94) = v88;
  }

  sub_1C109C098();
  v95 = v174;
  sub_1C109A808();
  v96 = v179;
  v97 = v76[7](v179, v76) & 1;
  v98 = v79(v95, v96);
  MEMORY[0x1EEE9AC00](v98);
  v99 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v99;
  v100 = swift_getKeyPath();
  sub_1C109C190(v100);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v101);
  v102 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v102;
  swift_getKeyPath();
  sub_1C1261F50();

  v103 = *(*v1 + 192);
  if (v97 != *(v1 + v103))
  {
    *(v1 + v103) = v97;
  }

  sub_1C109C098();
  v104 = v175;
  sub_1C109A808();
  v105 = v179;
  v106 = v76[8](v179, v76) & 1;
  v107 = v79(v104, v105);
  MEMORY[0x1EEE9AC00](v107);
  v108 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v108;
  v109 = swift_getKeyPath();
  sub_1C109C190(v109);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v110);
  v111 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v111;
  swift_getKeyPath();
  sub_1C1261F50();

  v112 = *(*v1 + 200);
  if (v106 != *(v1 + v112))
  {
    *(v1 + v112) = v106;
  }

  sub_1C109C098();
  v113 = v178;
  sub_1C109A808();
  v114 = v177;
  v115 = v179;
  v116 = (*(v177 + 88))(v179, v177);
  v118 = v117;
  v119 = v180(v113, v115);
  MEMORY[0x1EEE9AC00](v119);
  v120 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v120;
  v121 = swift_getKeyPath();
  sub_1C109C190(v121);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v122);
  v123 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v123;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v116, v118);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  v175 = (*(v114 + 48))(v115, v114);
  v125 = v124;
  v126 = v113;
  v127 = v115;
  v128 = v113;
  v129 = v180;
  v130 = v180(v126, v127);
  MEMORY[0x1EEE9AC00](v130);
  v131 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v131;
  v132 = swift_getKeyPath();
  sub_1C109C190(v132);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v133);
  v134 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v134;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v175, v125);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  v135 = v179;
  v175 = (*(v114 + 56))(v179, v114);
  v137 = v136;
  v138 = v129(v128, v135);
  MEMORY[0x1EEE9AC00](v138);
  v139 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v139;
  v140 = swift_getKeyPath();
  sub_1C109C190(v140);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v141);
  v142 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v142;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v175, v137);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  v143 = v176;
  v144 = v179;
  (*(v114 + 64))(v179, v114);
  v145 = v180;
  v146 = v180(v128, v144);
  MEMORY[0x1EEE9AC00](v146);
  v147 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v147;
  v148 = swift_getKeyPath();
  sub_1C109C190(v148);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v149);
  v150 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v150;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6240();
  sub_1C109C528(v143);
  swift_endAccess();
  sub_1C109C098();
  sub_1C109A808();
  v151 = (*(v114 + 80))(v144, v114);
  v176 = v151;
  v152 = v145(v128, v144);
  v193 = v151;
  MEMORY[0x1EEE9AC00](v152);
  v153 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v153;
  v154 = swift_getKeyPath();
  sub_1C109C190(v154);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v155);
  v156 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v156;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v157 = sub_1C12661A0();
  v158 = *(swift_getAssociatedConformanceWitness() + 8);
  v191[1] = v158;
  v159 = swift_getWitnessTable();
  PhotosIdentical.setIfNotIdentical(_:)(&v193, v157, v159);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  (*(v114 + 72))(&v193, v144, v114);
  v160 = v180(v128, v144);
  v191[0] = v193;
  MEMORY[0x1EEE9AC00](v160);
  v161 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v161;
  v162 = swift_getKeyPath();
  sub_1C109C190(v162);

  *&v192[0] = v1;
  MEMORY[0x1EEE9AC00](v163);
  v164 = v184;
  *(&v168 - 2) = v185;
  *(&v168 - 1) = v164;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  v165 = sub_1C1266790();
  v190 = v158;
  v166 = swift_getWitnessTable();
  PhotosIdentical.setIfNotIdentical(_:)(v191, v165, v166);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_1C109C098();
}

uint64_t sub_1C109A520@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_7_4(v1 + v4, v5);
  OUTLINED_FUNCTION_20();
  return (*(*(*(v6 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C109A5AC()
{
  OUTLINED_FUNCTION_13_13();
  v3 = *(v2 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v3, v0, v5);
  swift_endAccess();
  v7 = sub_1C1098BD4();
  return (*(v6 + 8))(v0, v5, v7);
}

double (*sub_1C109A684(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return sub_1C109A6F0;
}

double sub_1C109A6F0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C1098BD4();
  }

  return result;
}

uint64_t sub_1C109A748(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_1C1097A80();
}

uint64_t sub_1C109A828(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_1C109A5AC();
}

uint64_t (*sub_1C109A8F4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  KeyPath = swift_getKeyPath();
  sub_1C109C190(KeyPath);

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableAlbum(255, v3);
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C109A684(v3);
  return sub_1C109AA64;
}

void sub_1C109AA64(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1C109C098();

  free(v1);
}

uint64_t PhotosObservableAlbum.id.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5();
  v4 = *(v3 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t sub_1C109AB74()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109ABB4()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6(v0);
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109ABF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109AC64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109ACD4()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109AD14()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6(v0);
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109AD58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109AD9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109AE58@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C109AEC0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C109AF2C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C109AF94();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C109B000@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C109B068();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C109B088(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  v4 = OUTLINED_FUNCTION_55_0(v3);
  sub_1C109C190(v4);

  return a2(v5);
}

uint64_t sub_1C109B144@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B19C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B19C()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C109C190(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 168));
}

uint64_t sub_1C109B264@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B2BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B2BC()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C109C190(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 176));
}

uint64_t sub_1C109B384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B3DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B3DC()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C109C190(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 184));
}

uint64_t sub_1C109B4A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B4FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B4FC()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C109C190(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 192));
}

uint64_t sub_1C109B5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B61C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B61C()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C109C190(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 200));
}

double sub_1C109B69C()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_7_4(v0 + *(v1 + 208), v2);

  return result;
}

double sub_1C109B6E0()
{
  OUTLINED_FUNCTION_9_2();
  v3 = *(v2 + 208);
  OUTLINED_FUNCTION_53_1(v4);
  *(v1 + v3) = v0;

  return result;
}

uint64_t sub_1C109B72C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109B784();
  *a1 = result;
  return result;
}

uint64_t sub_1C109B7E0()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109B820()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6(v0);
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109B864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109B8A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109B918()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109B958()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6(v0);
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109B99C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109B9E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109BA50()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3(v0);
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109BA90()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6(v0);
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109BAD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109BB60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109BB18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C109BB80(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  v4 = OUTLINED_FUNCTION_55_0(v3);
  sub_1C109C190(v4);

  return a2(v5);
}

uint64_t sub_1C109BC40@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 240);
  OUTLINED_FUNCTION_7_4(v1 + v4, v5);
  return sub_1C109CF2C(v1 + v4, a1);
}

uint64_t sub_1C109BC94()
{
  OUTLINED_FUNCTION_9_2();
  v3 = *(v2 + 240);
  swift_beginAccess();
  sub_1C109CD00(v0, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C109BD1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C109CF2C(a1, &v5 - v3);
  return sub_1C109896C();
}

uint64_t sub_1C109BDD0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  v4 = OUTLINED_FUNCTION_55_0(v3);
  sub_1C109C190(v4);

  return a2(v5);
}

uint64_t sub_1C109BE48(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C109CF2C(a2, &v6 - v4);
  return sub_1C109BC94();
}

uint64_t sub_1C109BEE4()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_7_4(v0 + *(v1 + 248), v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C109BF28()
{
  OUTLINED_FUNCTION_9_2();
  v3 = *(v2 + 248);
  OUTLINED_FUNCTION_53_1(v4);
  *(v1 + v3) = v0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C109BF74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109BFCC();
  *a1 = result;
  return result;
}

uint64_t sub_1C109BFEC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  v4 = OUTLINED_FUNCTION_55_0(v3);
  sub_1C109C190(v4);

  return a2(v5);
}

double sub_1C109C098()
{
  OUTLINED_FUNCTION_39_0();
  v10[4] = v0;
  OUTLINED_FUNCTION_39_0();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_39_0();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_39_0();
  v6 = *(v5 + 96);
  OUTLINED_FUNCTION_39_0();
  v8 = *(v7 + 104);
  swift_getKeyPath();
  v10[0] = v2;
  v10[1] = v4;
  v10[2] = v6;
  v10[3] = v8;
  type metadata accessor for PhotosObservableAlbum(255, v10);
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C109C190(uint64_t a1)
{
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C109C22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t keypath_get_11Tm()
{
  OUTLINED_FUNCTION_13_1();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t *PhotosObservableAlbum.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112), *(*v0 + 80));
  OUTLINED_FUNCTION_10_2();
  v2 = *(v1 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  sub_1C109C528(v0 + *(v4 + 240));
  OUTLINED_FUNCTION_10_2();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_2();
  v6 = *(v5 + 256);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v7 + 8))(v0 + v6);
  return v0;
}

uint64_t sub_1C109C528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosObservableAlbum.__deallocating_deinit()
{
  PhotosObservableAlbum.deinit();
  OUTLINED_FUNCTION_16_4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1C109C6D4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1C109C71C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C109A8F4(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C109C79C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C109C864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109BFCC();
  *a1 = result;
  return result;
}

uint64_t sub_1C109C8D8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C109CD00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C109CE8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C109CF2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C109CFB8()
{
  result = qword_1EDE7B4C8;
  if (!qword_1EDE7B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE929A0, &qword_1C12AF660);
    sub_1C109D03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B4C8);
  }

  return result;
}

unint64_t sub_1C109D03C()
{
  result = qword_1EDE82F50;
  if (!qword_1EDE82F50)
  {
    sub_1C1261990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F50);
  }

  return result;
}

void OUTLINED_FUNCTION_38_5(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v1;
  *(v4 + 8) = v3;
}

double OUTLINED_FUNCTION_49_1()
{

  return result;
}

__n128 OUTLINED_FUNCTION_52_1@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 96);
  *(a1 - 32) = result;
  *(a1 - 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3)
{

  return sub_1C109C22C(a1, v3, &a3, a2 + 8);
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1)
{

  return swift_getKeyPath();
}

uint64_t sub_1C109D1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  result = swift_getKeyPath();
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t PhotosInteractiveFavoriteBadge.init(_:tint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  result = swift_getKeyPath();
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t PhotosFavoriteBadge.init(_:tint:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  OUTLINED_FUNCTION_15_1();
  (*(v8 + 32))(a2);
  result = type metadata accessor for PhotosFavoriteBadge(0, a3, a4, v9);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t PhotosMockFavoriteProviding.__allocating_init(isFavorite:)(char a1)
{
  v2 = swift_allocObject();
  sub_1C1261F60();
  *(v2 + 16) = a1;
  return v2;
}

double PhotosFavoriteBadge.body.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = (*(*(a1 + 24) + 8))(*(a1 + 16));
  if (v6)
  {
    v7 = 0xEA00000000006C6CLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = qword_1EDE833C0;

  if (v8 != -1)
  {
    swift_once();
  }

  if (v6)
  {
    v9 = 0x69662E7472616568;
  }

  else
  {
    v9 = 0x7472616568;
  }

  *&v14 = v9;
  *(&v14 + 1) = v7;
  v15 = 262912;
  v16 = 0;
  v17 = 65280;

  sub_1C12192C4(&v14);

  v10 = sub_1C12652F0();

  v11 = *(v3 + *(a1 + 36));
  KeyPath = swift_getKeyPath();
  *a2 = v10;
  a2[1] = KeyPath;
  a2[2] = v11;

  return result;
}

void *sub_1C109D4C0()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v8 = sub_1C105861C(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1C109D610()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1C109D758()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 48);
  if (*(v0 + 56) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

double PhotosInteractiveFavoriteBadge.body.getter@<D0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v87 = a2;
  v4 = a1[2];
  v5 = a1[4];
  v83 = *(v5 + 8);
  v74 = type metadata accessor for PhotosFavoriteBadge(255, v4, v83, a3);
  OUTLINED_FUNCTION_5_19();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C12654A0();
  OUTLINED_FUNCTION_0();
  v76 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  v72 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91358, &qword_1C12A8590);
  v67 = sub_1C1263190();
  v77 = *(v67 - 8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  v71 = v12;
  OUTLINED_FUNCTION_8_1();
  v68 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_19();
  v103 = v68;
  v104 = sub_1C0FDB6D4(v13, v14, &qword_1C12A8590, v15);
  v70 = swift_getWitnessTable();
  v66 = sub_1C109F0EC();
  *&v105 = v67;
  *(&v105 + 1) = &type metadata for PhotosFavoriteButtonStyle;
  *&v106 = v70;
  *(&v106 + 1) = v66;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v78 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  v69 = v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91970, &unk_1C12A5EE0);
  v79 = OpaqueTypeMetadata2;
  v20 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v84 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_34();
  v80 = v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C90, &qword_1C12BC110);
  v85 = v20;
  v75 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v86 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v81 = v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v82 = v65 - v28;
  v29 = v3[1];
  v105 = *v3;
  v106 = v29;
  v107[0] = v3[2];
  *(v107 + 9) = *(v3 + 41);
  sub_1C1265790();
  v30 = swift_allocBox();
  v31 = a1[3];
  swift_unknownObjectRetain();
  sub_1C1265770();
  v32 = swift_allocObject();
  v33 = v4;
  *(v32 + 16) = v4;
  *(v32 + 24) = v31;
  v65[1] = v5;
  *(v32 + 32) = v5;
  *(v32 + 40) = v30;
  v34 = v106;
  *(v32 + 48) = v105;
  *(v32 + 64) = v34;
  *(v32 + 80) = v107[0];
  *(v32 + 89) = *(v107 + 9);
  v88 = v4;
  v89 = v31;
  v90 = v5;
  v91 = v30;
  v92 = &v105;

  v65[0] = a1;
  OUTLINED_FUNCTION_15_1();
  (*(v35 + 16))(&v100, &v105);
  v36 = v72;
  sub_1C1265480();
  *&v100 = 0xC020000000000000;
  sub_1C109F160();
  OUTLINED_FUNCTION_2_1();
  v37 = v71;
  v38 = v66;
  sub_1C1264AC0();
  v39 = v7;
  v40 = v67;
  (*(v76 + 8))(v36, v39);
  v76 = v30;
  v41 = v70;
  *&v100 = sub_1C109E0B8(v30, v33);
  v42 = (*(v83 + 8))(v33);
  swift_unknownObjectRelease();
  v43 = *(&v105 + 1);
  LOBYTE(v100) = v42 & 1;
  *(&v100 + 1) = *(&v105 + 1);
  swift_retain_n();
  v44 = v69;
  sub_1C1264A00();

  (*(v77 + 8))(v37, v40);
  v100 = v105;
  v101 = v106;
  v102[0] = v107[0];
  *(v102 + 9) = *(v107 + 9);
  if (sub_1C109D610())
  {
    v93 = v105;
    v94 = v106;
    v95[0] = v107[0];
    *(v95 + 9) = *(v107 + 9);
    sub_1C109D758();
  }

  *&v100 = v40;
  *(&v100 + 1) = &type metadata for PhotosFavoriteButtonStyle;
  *&v101 = v41;
  *(&v101 + 1) = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v79;
  v47 = v80;
  sub_1C1264FD0();
  (*(v78 + 8))(v44, v46);
  *&v100 = v43;
  OUTLINED_FUNCTION_4_24();
  v52 = sub_1C0FDB6D4(v48, v49, v50, v51);
  v98 = OpaqueTypeConformance2;
  v99 = v52;
  v53 = v85;
  v54 = swift_getWitnessTable();
  v55 = v81;
  sub_1C1264E80();

  (*(v84 + 8))(v47, v53);
  OUTLINED_FUNCTION_0_0();
  v60 = sub_1C0FDB6D4(v56, v57, v58, v59);
  v96 = v54;
  v97 = v60;
  v61 = v75;
  swift_getWitnessTable();
  v62 = v82;
  sub_1C0FDBA4C();
  v63 = *(v86 + 8);
  v63(v55, v61);
  sub_1C0FDBA4C();
  v63(v62, v61);

  return result;
}

uint64_t sub_1C109E0B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1265790();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - v4;
  v6 = swift_projectBox();
  (*(v3 + 16))(v5, v6, v2);
  sub_1C1265750();
  (*(v3 + 8))(v5, v2);
  return v8[1];
}

uint64_t sub_1C109E1AC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v9 = sub_1C1261FA0();
  v10 = *(v9 - 8);
  v54 = v9;
  v55 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929F0, &unk_1C12B0020);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v40 - v15;
  v16 = sub_1C1261B50();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v47 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C1265E50();
  v45 = *(v18 - 8);
  v46 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1261AD0();
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v42 = &v40 - v23;
  v41 = a1;
  v59 = sub_1C109E0B8(a1, a3);
  *&v56 = sub_1C109E0B8(a1, a3);
  v24 = *(a5 + 8);
  v25 = *(v24 + 8);
  v26 = v25(a3, v24);
  swift_unknownObjectRelease();
  v27 = v44[1];
  v56 = *v44;
  v57 = v27;
  v58[0] = v44[2];
  *(v58 + 9) = *(v44 + 41);
  type metadata accessor for PhotosInteractiveFavoriteBadge(0, a3, a4, a5);
  v28 = sub_1C109D4C0();
  (*(a5 + 16))((v26 & 1) == 0, v28, a3, a5);
  swift_unknownObjectRelease();

  *&v56 = sub_1C109E0B8(v41, a3);
  v25(a3, v24);
  swift_unknownObjectRelease();
  v29 = v43;
  sub_1C1265DF0();
  static String.photosSwiftUICoreLocalized(_:)(v29);
  (*(v45 + 8))(v29, v46);
  sub_1C1261B40();
  v30 = v42;
  sub_1C1261AE0();
  v31 = *MEMORY[0x1E69594E0];
  v32 = sub_1C1261A00();
  v33 = v51;
  (*(*(v32 - 8) + 104))(v51, v31, v32);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v32);
  sub_1C109FA1C(v33, v52);
  sub_1C109FA8C();
  sub_1C1261B00();
  sub_1C109FAE0(v33);
  v34 = v48;
  v35 = v49;
  v36 = v50;
  (*(v49 + 16))(v48, v30, v50);
  v37 = v53;
  MEMORY[0x1C68EB8F0](v34);
  v38 = v54;
  sub_1C1261F90();
  (*(v55 + 8))(v37, v38);
  return (*(v35 + 8))(v30, v36);
}

uint64_t sub_1C109E738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v12 = sub_1C109E0B8(a1, a3);
  v8 = *(a5 + 8);
  PhotosFavoriteBadge.init(_:tint:)(*(a2 + 8), &v11, a3, v8);
  type metadata accessor for PhotosFavoriteBadge(0, a3, v8, v9);
  swift_getWitnessTable();
  sub_1C0FDBA4C();

  swift_unknownObjectRelease();
  v11 = v12;
  sub_1C0FDBA4C();

  return swift_unknownObjectRelease();
}

uint64_t PhotosMockFavoriteProviding.init(isFavorite:)(uint64_t a1)
{
  v2 = a1;
  sub_1C1261F60();
  *(v1 + 16) = v2;
  return v1;
}

void sub_1C109E884(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_1C109EC4C(v4, sub_1C109F1B4, v5);
  }
}

uint64_t sub_1C109E990@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109E9E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109E9E8()
{
  swift_getKeyPath();
  sub_1C109F1D4();
  sub_1C1261F30();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1C109EA6C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t (*sub_1C109EAC0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore27PhotosMockFavoriteProviding___observationRegistrar;
  *v3 = v1;
  v3[6] = sub_1C109F1D4();
  sub_1C1261F30();

  *v3 = v1;
  swift_getKeyPath();
  sub_1C1261F50();

  v3[7] = sub_1C109E940(v3);
  return sub_1C109EBB4;
}

void sub_1C109EBB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C1261F40();

  free(v1);
}

uint64_t PhotosMockFavoriteProviding.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore27PhotosMockFavoriteProviding___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockFavoriteProviding.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore27PhotosMockFavoriteProviding___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t PhotosInteractiveFavoriteBadgeFactory.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosInteractiveFavoriteBadgeFactory.init(capacity:)(a1);
  return v2;
}

uint64_t PhotosInteractiveFavoriteBadgeFactory.init(capacity:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ColorFactory();
  result = swift_allocObject();
  *(v1 + 16) = result;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      sub_1C1266A50();
      type metadata accessor for PhotosMockFavoriteProviding(0);
      v6 = 0;
      do
      {
        v7 = swift_allocObject();
        sub_1C1261F60();
        *(v7 + 16) = (v6 & 1) == 0;
        sub_1C1266A10();
        sub_1C1266A60();
        sub_1C1266A70();
        sub_1C1266A30();
        ++v6;
      }

      while (a1 != v6);
      v5 = v8;
    }

    *(v2 + 24) = v5;
    return v2;
  }

  return result;
}

uint64_t sub_1C109EF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1C1265110();
  v8 = *(v4 + 24);
  sub_1C0FF768C();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1C68F02D0](a1, v8);
  }

  else
  {
  }

  return sub_1C109D1CC(v9, v7, a2);
}

uint64_t PhotosInteractiveFavoriteBadgeFactory.deinit()
{

  return v0;
}

uint64_t PhotosInteractiveFavoriteBadgeFactory.__deallocating_deinit()
{
  PhotosInteractiveFavoriteBadgeFactory.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C109F0EC()
{
  result = qword_1EDE81228;
  if (!qword_1EDE81228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81228);
  }

  return result;
}

unint64_t sub_1C109F160()
{
  result = qword_1EDE7B790;
  if (!qword_1EDE7B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B790);
  }

  return result;
}

unint64_t sub_1C109F1D4()
{
  result = qword_1EBE929C0;
  if (!qword_1EBE929C0)
  {
    type metadata accessor for PhotosMockFavoriteProviding(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE929C0);
  }

  return result;
}

uint64_t type metadata accessor for PhotosMockFavoriteProviding(uint64_t a1)
{
  result = qword_1EBE929C8;
  if (!qword_1EBE929C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C109F32C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C109F3A4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C109F4E0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C109F6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C109F6E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C109F728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C109F798(uint64_t a1)
{
  result = sub_1C1261F70();
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

unint64_t sub_1C109F964()
{
  result = qword_1EDE7BE20;
  if (!qword_1EDE7BE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE929D8, &qword_1C12BDD40);
    sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670, &qword_1C12A7770, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE20);
  }

  return result;
}

uint64_t sub_1C109FA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929F0, &unk_1C12B0020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C109FA8C()
{
  result = qword_1EBE929F8;
  if (!qword_1EBE929F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE929F8);
  }

  return result;
}

uint64_t sub_1C109FAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929F0, &unk_1C12B0020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosDropTargetStyle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, 0xE1uLL);
  v6 = sub_1C12659A0();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A00, &qword_1C12B0030) + 36);
  sub_1C109FC40(__dst, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A08, &qword_1C12B0038) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A10, &qword_1C12B0040);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

uint64_t sub_1C109FC40@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_1C12637E0();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1263310();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v39, a1, 0xD1uLL);
  memcpy(v40, a1, 0xD1uLL);
  if (sub_1C100D688(v40) == 1)
  {
    nullsub_1();
    memcpy(v33, a1, 0xD1uLL);
    nullsub_1();
    memcpy(v35, v13, sizeof(v35));
    sub_1C10A0544(v39, v34);
  }

  else
  {
    nullsub_1();
    memcpy(v33, a1, 0xD1uLL);
    nullsub_1();
    v30[1] = *v14;
    sub_1C10A0544(v39, v34);
    sub_1C1266420();
    v15 = sub_1C1264410();
    v31 = v10;
    v16 = v15;
    sub_1C1262620();

    v10 = v31;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C10A05B4(v39);
    (*(v4 + 8))(v6, v32);
  }

  memcpy(v34, v35, 0xD0uLL);
  sub_1C100C7D0(v34);
  v17 = v34[0];
  v18 = *(v7 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1C12639D0();
  (*(*(v20 - 8) + 104))(&v9[v18], v19, v20);
  *v9 = v17;
  *(v9 + 1) = v17;
  sub_1C107CD70(v9, v12);
  *&v12[*(v10 + 20)] = 0xC004000000000000;
  memcpy(v33, a1, sizeof(v33));
  v21 = sub_1C10A003C();
  sub_1C1262B10();
  sub_1C10A061C(v12, a2);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A30, &unk_1C12B0240) + 36);
  v23 = v37;
  *v22 = v36;
  *(v22 + 16) = v23;
  *(v22 + 32) = v38;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A38, &unk_1C12BB340);
  *(a2 + *(v24 + 52)) = v21;
  *(a2 + *(v24 + 56)) = 256;
  v25 = sub_1C12659A0();
  v27 = v26;
  sub_1C10A0680(v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A40, &qword_1C12B0250);
  v29 = (a2 + *(result + 36));
  *v29 = v25;
  v29[1] = v27;
  return result;
}

uint64_t sub_1C10A003C()
{
  v1 = sub_1C1263AE0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 216);
  if (*(v0 + 224) != 1)
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v6, 0);
    (*(v3 + 8))(v5, v2);
    if (v10 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1263AD0();
    sub_1C10A06DC();
    return sub_1C1262C90();
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1C1265170();
  return sub_1C1262C90();
}

uint64_t View.dropTargetStyle()(uint64_t a1, uint64_t a2)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(__dst, __src, 0xD1uLL);
  KeyPath = swift_getKeyPath();
  v7 = 0;
  memcpy(v6, __dst, 0xD8uLL);
  v6[27] = KeyPath;
  LOBYTE(v6[28]) = 0;
  MEMORY[0x1C68EE920](v6, a1, &type metadata for PhotosDropTargetStyle, a2);
  memcpy(v10, v6, 0xE1uLL);
  return sub_1C10A02E8(v10);
}

uint64_t sub_1C10A033C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 225))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 208);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C10A037C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 208) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C10A040C()
{
  result = qword_1EBE92A18;
  if (!qword_1EBE92A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A00, &qword_1C12B0030);
    sub_1C0FDB6D4(&qword_1EBE92A20, &qword_1EBE92A10, &qword_1C12B0040, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&qword_1EBE8FBF0, &qword_1EBE92A08, &qword_1C12B0038, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A18);
  }

  return result;
}

unint64_t sub_1C10A04F0()
{
  result = qword_1EBE92EB0;
  if (!qword_1EBE92EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92EB0);
  }

  return result;
}

uint64_t sub_1C10A0544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A28, &qword_1C12B0238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10A05B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A28, &qword_1C12B0238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C10A061C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263310();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10A0680(uint64_t a1)
{
  v2 = sub_1C1263310();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10A06DC()
{
  result = qword_1EBE92A48;
  if (!qword_1EBE92A48)
  {
    sub_1C1263AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A48);
  }

  return result;
}

uint64_t sub_1C10A0738@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.shelfHeightOverride.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t PhotosItemTruncationMode.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

__n128 PhotosItemsListRow.cols.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 80));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  return result;
}

uint64_t sub_1C10A08AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosScrollViewModel(255, *(a1 + 32), *(a1 + 56), a4);
  sub_1C1265790();
  sub_1C1265750();
  return v5;
}

uint64_t PhotosItemsListRow.itemView.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 100));

  return v2;
}

uint64_t PhotosItemsListRow.init(data:id:cols:rows:itemTruncationMode:scrollViewModel:scrollViewAccessibilityIdentifier:draggingDelegate:itemTransition:itemView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v42 = *a3;
  v21 = *(a3 + 2);
  v22 = *a5;
  v23 = *(*a6 + 88);
  v24 = *(*a2 + *MEMORY[0x1E69E77B0]);
  __src[0] = a14;
  *&__src[1] = v24;
  __src[3] = a15;
  __src[4] = a16;
  __src[5] = v23;
  __src[6] = a17;
  v25 = type metadata accessor for PhotosItemsListRow(0, __src);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_29_5(KeyPath);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_29_5(v27);
  v28 = v25[30];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + v28), __src, 0xD1uLL);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_29_5(v29);
  v30 = v25[32];
  *(a9 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v31 = a9 + v25[33];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  v32 = a9 + v25[34];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_29_5(v33);
  v34 = *(a14 - 8);
  (*(v34 + 16))(a9, a1, a14);
  *(a9 + v25[19]) = a2;
  v35 = (a9 + v25[25]);
  *v35 = a12;
  v35[1] = a13;
  v36 = a9 + v25[20];
  *v36 = v42;
  *(v36 + 16) = v21;
  *(a9 + v25[21]) = a4;
  *(a9 + v25[22]) = v22;
  sub_1C0FFEBF0(a6, v37, v38, v39);
  (*(v34 + 8))(a1, a14);
  v40 = (a9 + v25[26]);
  *v40 = a7;
  v40[1] = a8;
  result = sub_1C0F9DDE4(a10, a9 + v25[27]);
  *(a9 + v25[24]) = a11;
  return result;
}

double sub_1C10A0C40(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 116));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v10 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0FA03F4(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_1C10A0D98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 120);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FFC7B0(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10A0FB4(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 132);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 9) != 1)
  {

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v11 = sub_1C1058610(v8, v9, 0);
    (*(v4 + 8))(v6, v3, v11);
    return v13;
  }

  return v8;
}

double sub_1C10A1120(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 136);
  v9 = *v7;
  v8 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  v14 = sub_1C1001C04(v9, v8, v11, v10, 0);
  (*(v4 + 8))(v6, v3, v14);
  return v15;
}

void sub_1C10A12A8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 140);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10A1434(uint64_t a1)
{
  v3 = sub_1C1265810();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(v1 + *(a1 + 84));
  *v6 = xmmword_1C12A3450;
  (*(v4 + 104))(v6, *MEMORY[0x1E697D748], v3);
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1C1265830();
    v20 = v9;
    v19 = v13;
    return sub_1C12478D4(v20, v19);
  }

  result = sub_1C1265830();
  v15 = (v1 + *(a1 + 80));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    if (v17 != 0x8000000000000000 || v16 != -1)
    {
      v19 = v17 / v16;
      v20 = v12;
      return sub_1C12478D4(v20, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C10A1614(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(v7 + 84));
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1C10A1758(a1, v6);
    v8 = sub_1C12662E0();
    (*(v4 + 8))(v6, v3);
  }

  *&result = COERCE_DOUBLE(sub_1C10A0FB4(a1));
  if ((v10 & 1) == 0)
  {
    *&result = COERCE_DOUBLE(sub_1C10A0FB4(a1));
    if (v11)
    {
      __break(1u);
    }

    else
    {
      *&result = *&result / v8;
    }
  }

  return result;
}

void sub_1C10A1758(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v5 = *(a1 + 24);
  v6 = sub_1C1266790();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v40 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = *(v3 + *(a1 + 88));
  sub_1C10A08AC(a1, v13, v14, v15);
  v16 = sub_1C111EB24();

  if ((v12 & 1) == 0)
  {
    if ((v16 & 1) == 0 || sub_1C12662E0() < 2)
    {
      goto LABEL_25;
    }

    v22 = floor(*(v3 + *(a1 + 80)) / *(v3 + *(a1 + 80) + 8));
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v22 > -9.22337204e18)
      {
        if (v22 < 9.22337204e18)
        {
          v23 = *(v3 + *(a1 + 84));
          v24 = v23 * v22;
          if ((v23 * v22) >> 64 == v24 >> 63)
          {
            v25 = sub_1C12662E0();
            if (v25 < v24)
            {
              v24 = v25;
            }

            if (v24 < sub_1C12662E0())
            {
              if ((v24 & 0x8000000000000000) == 0)
              {
                v43 = 0;
                v44 = v24;
                sub_1C1266390();
                swift_getAssociatedConformanceWitness();
                v43 = sub_1C12661C0();
                sub_1C12661A0();
LABEL_33:
                swift_dynamicCast();
                return;
              }

              goto LABEL_43;
            }

            goto LABEL_25;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          return;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if ((v16 & 1) == 0 || sub_1C12662E0() < 2)
  {
    goto LABEL_25;
  }

  v17 = floor(*(v3 + *(a1 + 80)) / *(v3 + *(a1 + 80) + 8));
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = *(v3 + *(a1 + 84));
  v19 = v18 * v17;
  if ((v18 * v17) >> 64 != v19 >> 63)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v20 = sub_1C12662E0();
  if (v20 < v19)
  {
    v19 = v20;
  }

  if (v19 < sub_1C12662E0())
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      v43 = 0;
      v44 = v19;
      sub_1C1266390();
      swift_getAssociatedConformanceWitness();
      v21 = v40;
      v43 = sub_1C12661C0();
      sub_1C1265D60();
      if (__swift_getEnumTagSinglePayload(v8, 1, v21) == 1)
      {
        (*(v35 + 8))(v8, v36);
LABEL_32:
        v42 = v43;
        sub_1C12661A0();
        goto LABEL_33;
      }

      v29 = v37;
      v28 = v38;
      (*(v38 + 32))(v37, v8, v21);
      v30 = sub_1C1266170();
      v31 = v30 - 1;
      if (!__OFSUB__(v30, 1))
      {
        sub_1C12661A0();
        sub_1C1266120();
        v32 = v43;
        sub_1C10A7EE0(v31, v43, v21);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v34 = v32 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v34 = v32;
        }

        (*(v28 + 40))(v34 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v31, v29, v21);
        nullsub_1();
        goto LABEL_32;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_25:
  v26 = *(*(v11 - 8) + 16);
  v27 = v41;

  v26(v27, v3, v11);
}

BOOL sub_1C10A1D28(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(v7 + 84));
  result = 1;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1C10A1758(a1, v6);
    v10 = sub_1C12662E0();
    (*(v4 + 8))(v6, v3);
    if (v10 >= v8 || !sub_1C10A1404(a1))
    {
      return 0;
    }
  }

  return result;
}

uint64_t PhotosItemsListRow.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v250 = a1;
  v245 = a2;
  v3 = sub_1C12643C0();
  v4 = OUTLINED_FUNCTION_15(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v243 = v5;
  OUTLINED_FUNCTION_49();
  v249 = sub_1C12643E0();
  OUTLINED_FUNCTION_0();
  v244 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v242 = v8;
  OUTLINED_FUNCTION_49();
  sub_1C1264160();
  OUTLINED_FUNCTION_0();
  v240 = v10;
  v241 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v239 = v11;
  OUTLINED_FUNCTION_49();
  sub_1C1263E10();
  OUTLINED_FUNCTION_0();
  v237 = v13;
  v238 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v236 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50, &qword_1C12B0388);
  v17 = a1[6];
  v16 = a1[7];
  v260[2] = v15;
  v260[3] = v17;
  v260[4] = v16;
  v18 = a1[4];
  v260[0] = a1[2];
  v260[1] = v18;
  OUTLINED_FUNCTION_31_7();
  v19 = sub_1C12656A0();
  v260[35] = sub_1C10A3184();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  v20 = OUTLINED_FUNCTION_11_0();
  v248 = type metadata accessor for LazyHGridOrVGrid(v20, v19, v21, v22);
  v23 = a1[3];
  *&v24 = v18;
  *(&v24 + 1) = a1[5];
  *&v25 = v260[0];
  v251 = v260[0];
  *(&v25 + 1) = v23;
  v26 = a1[8];
  v225 = v24;
  v223 = v25;
  v224 = v26;
  v27 = OUTLINED_FUNCTION_31_7();
  type metadata accessor for PhotosItemsListRow.ItemContainerView(v27, v28);
  v29 = sub_1C1263190();
  v260[33] = OUTLINED_FUNCTION_18_14();
  v260[34] = MEMORY[0x1E697E040];
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  v30 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosItemsListCellContainer(v30, v29, v31, v32);
  sub_1C1263190();
  OUTLINED_FUNCTION_8_19();
  v260[31] = swift_getWitnessTable();
  v260[32] = sub_1C1001354();
  v246 = v17;
  v260[4] = v17;
  v260[5] = v16;
  v33 = v16;
  v260[6] = swift_getWitnessTable();
  v34 = OUTLINED_FUNCTION_31_7();
  v36 = type metadata accessor for PhotosDraggableForEach(v34, v35);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v37 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for LazyHGridOrVGrid(v37, v36, v38, v39);
  OUTLINED_FUNCTION_15_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_31_7();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  v40 = sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v41 = sub_1C12655C0();
  OUTLINED_FUNCTION_17_15(v41);
  v42 = OUTLINED_FUNCTION_11_0();
  v200 = v40;
  v201 = v43;
  v45 = type metadata accessor for PhotosTestableScrollView(v42, v40, v43, v44);
  OUTLINED_FUNCTION_26_1();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v233 = v48;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_34();
  v232 = v50;
  v222 = v45;
  v229 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v228 = v53;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_34();
  v221 = v55;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A60, &unk_1C12B03A0);
  v231 = v52;
  v56 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v227 = v57;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_34();
  v220 = v59;
  v234 = OpaqueTypeMetadata2;
  v226 = OpaqueTypeConformance2;
  v60 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_9_3();
  v204 = v60;
  v260[29] = v60;
  v260[30] = sub_1C0FDB6D4(v61, &qword_1EBE92A60, &unk_1C12B03A0, v62);
  v63 = swift_getWitnessTable();
  v64 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v215 = v65;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_34();
  v212 = v67;
  v230 = v56;
  v205 = v63;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v213 = v70;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_34();
  v207 = v72;
  v217 = v64;
  v202 = v68;
  v216 = v69;
  v260[0] = v69;
  v260[1] = v249;
  v206 = swift_getOpaqueTypeConformance2();
  v260[2] = v206;
  v260[3] = MEMORY[0x1E697CC08];
  v73 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v209 = v74;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_34();
  v203 = v76;
  v235 = v33;
  v211 = v73;
  v208 = type metadata accessor for PhotosScrollPositionModifier(255, v18, v33, v77);
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v218 = v79;
  v219 = v78;
  MEMORY[0x1EEE9AC00](v78);
  v210 = &v187 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v214 = &v187 - v82;
  v248 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v198 = &v187 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = v84;
  MEMORY[0x1EEE9AC00](v85);
  v247 = &v187 - v86;
  OUTLINED_FUNCTION_49();
  v87 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v195 = v88;
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_8();
  v194 = v90;
  v91 = v250;
  v92 = *(v250 - 1);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v197 = &v187 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95);
  v196 = &v187 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v187 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_15(v100);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v187 - v102;
  v193 = swift_getWitnessTable();
  v104 = v252;
  View.photosTrace.getter();
  v105 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v103, 1, v105) == 1)
  {
    sub_1C0FFC7B0(v103, &qword_1EBE919B0, &qword_1C12A8810);
  }

  else
  {
    v191 = v105;
    v192 = v87;
    v106 = *(v92 + 16);
    v106(v99, v104, v91);
    v106(v196, v104, v91);
    sub_1C1262640();
    v107 = sub_1C1262670();
    v108 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v109 = swift_slowAlloc();
      v188 = v108;
      v190 = v92;
      v110 = v109;
      v189 = swift_slowAlloc();
      v260[0] = v189;
      *v110 = 134349314;
      v111 = sub_1C12662E0();
      v187 = v107;
      v112 = *(v92 + 8);
      v112(v99, v250);
      *(v110 + 4) = v111;
      *(v110 + 12) = 2082;
      v113 = v196;
      v114 = View.photosChangedProperties.getter(v250, v193);
      v116 = v115;
      v112(v113, v250);
      v91 = v250;
      v117 = sub_1C0FA0E80(v114, v116, v260);

      *(v110 + 14) = v117;
      v118 = sub_1C1262630();
      v119 = v187;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v187, v188, v118, "PhotosItemsListRow", "PhotosItemsListRow count:%{public}ld %{public}s", v110, 0x16u);
      v120 = v189;
      __swift_destroy_boxed_opaque_existential_0Tm(v189);
      MEMORY[0x1C68F1630](v120, -1, -1);
      MEMORY[0x1C68F1630](v110, -1, -1);

      v121 = OUTLINED_FUNCTION_30_6();
      v122(v121);
      v92 = v190;
    }

    else
    {
      v123 = *(v92 + 8);
      v123(v99, v91);

      v124 = OUTLINED_FUNCTION_30_6();
      v125(v124);
      v123(v196, v91);
    }

    OUTLINED_FUNCTION_15_1();
    (*(v126 + 8))(v103);
  }

  v127 = v247;
  v128 = v252;
  sub_1C10A1758(v91, v247);
  LODWORD(v196) = sub_1C1264420();
  v129 = (v128 + *(v91 + 26));
  v130 = v129[1];
  v195 = *v129;
  v131 = v197;
  (*(v92 + 16))(v197, v128, v91);
  v132 = v248;
  v133 = v198;
  v134 = v251;
  (*(v248 + 16))(v198, v127, v251);
  v135 = (*(v92 + 80) + 72) & ~*(v92 + 80);
  v136 = (v93 + v135 + *(v132 + 80)) & ~*(v132 + 80);
  v137 = swift_allocObject();
  v138 = v225;
  *(v137 + 16) = v223;
  *(v137 + 32) = v138;
  v139 = v235;
  *(v137 + 48) = v246;
  *(v137 + 56) = v139;
  *(v137 + 64) = v224;
  v140 = v137 + v135;
  v141 = v250;
  (*(v92 + 32))(v140, v131, v250);
  (*(v132 + 32))(v137 + v136, v133, v134);

  swift_checkMetadataState();
  PhotosTestableScrollView.init(_:accessibilityIdentifier:content:)(v196, v195, v130, sub_1C10A373C, v137, v260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8, &unk_1C12B03B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  LOBYTE(v137) = sub_1C1264460();
  *(inited + 32) = v137;
  v143 = sub_1C1264480();
  *(inited + 33) = v143;
  v144 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v137)
  {
    v144 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v143)
  {
    v144 = sub_1C12644B0();
  }

  v145 = sub_1C10A1120(v141);
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v152 = v236;
  sub_1C1263E00();
  v153 = swift_checkMetadataState();
  v154 = v232;
  MEMORY[0x1C68EE490](v144, v152, v153, v229, v145, v147, v149, v151);
  (*(v237 + 8))(v152, v238);
  memcpy(v259, v260, 0xE8uLL);
  OUTLINED_FUNCTION_15_1();
  (*(v155 + 8))(v259, v153);
  v156 = v221;
  v157 = v234;
  sub_1C1264CC0();
  (*(v233 + 8))(v154, v157);
  sub_1C100AE3C();
  v158 = v220;
  v159 = v231;
  sub_1C1264C10();
  (*(v228 + 8))(v156, v159);
  v160 = v239;
  sub_1C1264140();
  v161 = v230;
  sub_1C1005F50();
  v162 = v212;
  sub_1C1264C50();
  (*(v240 + 8))(v160, v241);
  (*(v227 + 8))(v158, v161);
  sub_1C10A08AC(v141, v163, v164, v165);
  sub_1C111EB24();

  v166 = v207;
  v167 = v217;
  sub_1C1264B70();
  (*(v215 + 8))(v162, v167);
  sub_1C12643B0();
  v168 = v242;
  sub_1C12643D0();
  v169 = v203;
  v170 = v216;
  v171 = v249;
  v172 = v206;
  v173 = MEMORY[0x1E697CC08];
  sub_1C1264D90();
  (*(v244 + 8))(v168, v171);
  (*(v213 + 8))(v166, v170);
  v177 = sub_1C10A08AC(v141, v174, v175, v176);
  v255 = v170;
  v256 = v171;
  v257 = v172;
  v258 = v173;
  v178 = swift_getOpaqueTypeConformance2();
  v180 = v210;
  v179 = v211;
  View.photosScrollPosition<A>(scrollViewModel:)(v177, v211, v178, v181);

  (*(v209 + 8))(v169, v179);
  (*(v248 + 8))(v247, v251);
  OUTLINED_FUNCTION_14_7();
  v182 = swift_getWitnessTable();
  v253 = v178;
  v254 = v182;
  v183 = v219;
  swift_getWitnessTable();
  v184 = v214;
  sub_1C0FDBA4C();
  v185 = *(v218 + 8);
  v185(v180, v183);
  sub_1C0FDBA4C();
  return (v185)(v184, v183);
}

unint64_t sub_1C10A3184()
{
  result = qword_1EDE7BD88;
  if (!qword_1EDE7BD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50, &qword_1C12B0388);
    sub_1C10A323C();
    sub_1C0FDB6D4(&qword_1EDE7BC58, &qword_1EBE924C0, &qword_1C12AE8D0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD88);
  }

  return result;
}

unint64_t sub_1C10A323C()
{
  result = qword_1EDE7BE50;
  if (!qword_1EDE7BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A58, &unk_1C12B0390);
    sub_1C1001354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE50);
  }

  return result;
}

uint64_t sub_1C10A32F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v40 = a6;
  v42 = a2;
  v41 = a1;
  v43 = a8;
  v39 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50, &qword_1C12B0388);
  v15 = sub_1C12656A0();
  v64 = sub_1C10A3184();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for LazyHGridOrVGrid(255, v15, WitnessTable, v17);
  v57 = a3;
  v58 = a4;
  v18 = a4;
  v38 = a4;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  v62 = a9;
  v63 = a10;
  type metadata accessor for PhotosItemsListRow.ItemContainerView(255, &v57);
  v19 = sub_1C1263190();
  v55 = swift_getWitnessTable();
  v56 = MEMORY[0x1E697E040];
  v20 = swift_getWitnessTable();
  type metadata accessor for PhotosItemsListCellContainer(255, v19, v20, v21);
  v22 = sub_1C1263190();
  v53 = swift_getWitnessTable();
  v54 = sub_1C1001354();
  v23 = swift_getWitnessTable();
  v57 = a3;
  v58 = v18;
  v59 = a5;
  v60 = v22;
  v61 = a7;
  v62 = a9;
  v63 = v23;
  v24 = type metadata accessor for PhotosDraggableForEach(255, &v57);
  v25 = swift_getWitnessTable();
  v27 = type metadata accessor for LazyHGridOrVGrid(255, v24, v25, v26);
  v28 = swift_getWitnessTable();
  v57 = v27;
  v58 = v28;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v29 = sub_1C12655C0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v38 - v34;
  sub_1C1265940();
  v44 = a3;
  v45 = v38;
  v46 = a5;
  v47 = v40;
  v48 = a7;
  v49 = a9;
  v50 = v39;
  v51 = v41;
  v52 = v42;
  sub_1C12655B0();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v36 = *(v30 + 8);
  v36(v32, v29);
  sub_1C0FDBA4C();
  return (v36)(v35, v29);
}

uint64_t sub_1C10A373C()
{
  OUTLINED_FUNCTION_4_25();
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v9 = *(type metadata accessor for PhotosItemsListRow(0, &v12) - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  return sub_1C10A32F8(v0 + v10, v0 + ((v10 + *(v9 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v2, v3, v4, v5, v6, v1, v7, v8);
}

uint64_t sub_1C10A384C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v91 = a6;
  v87 = a2;
  v88 = a9;
  v80 = a10;
  v115 = a3;
  v116 = a4;
  v117 = a5;
  v118 = a6;
  v119 = a7;
  v120 = a8;
  v15 = a7;
  v121 = a10;
  type metadata accessor for PhotosItemsListRow.ItemContainerView(255, &v115);
  v16 = sub_1C1263190();
  v114[5] = swift_getWitnessTable();
  v114[6] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for PhotosItemsListCellContainer(255, v16, WitnessTable, v18);
  v19 = sub_1C1263190();
  v114[3] = swift_getWitnessTable();
  v114[4] = sub_1C1001354();
  v20 = swift_getWitnessTable();
  v115 = a3;
  v116 = a4;
  v117 = a5;
  v118 = v19;
  v119 = v15;
  v120 = a8;
  v121 = v20;
  v85 = type metadata accessor for PhotosDraggableForEach(255, &v115);
  v84 = swift_getWitnessTable();
  v22 = type metadata accessor for LazyHGridOrVGrid(0, v85, v84, v21);
  v78 = v22;
  v86 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v64 - v23;
  v74 = &unk_1C12B05F4;
  v77 = swift_getWitnessTable();
  v115 = v22;
  v116 = v77;
  v81 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  v83 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v75 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v76 = &v64 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50, &qword_1C12B0388);
  v115 = a3;
  v116 = a5;
  v29 = a5;
  v117 = v28;
  v118 = v15;
  v67 = v15;
  v119 = a8;
  v30 = sub_1C12656A0();
  v73 = v30;
  v114[2] = sub_1C10A3184();
  v72 = swift_getWitnessTable();
  v32 = type metadata accessor for LazyHGridOrVGrid(0, v30, v72, v31);
  v33 = *(v32 - 8);
  v89 = v32;
  v90 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v92 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v93 = &v64 - v36;
  v115 = a3;
  v116 = a4;
  v37 = a3;
  v69 = a3;
  v70 = v29;
  v71 = a4;
  v38 = v91;
  v117 = v29;
  v118 = v91;
  v119 = v15;
  v120 = a8;
  v68 = a8;
  v39 = v80;
  v121 = v80;
  v40 = type metadata accessor for PhotosItemsListRow(0, &v115);
  v65 = sub_1C10A1D28(v40);
  v66 = sub_1C10A1614(v40);
  LOBYTE(v15) = v41;
  v64 = sub_1C10A1434(v40);
  v42 = sub_1C10A0C40(v40);
  v103 = v37;
  v104 = a4;
  v105 = v29;
  v106 = v38;
  v43 = v67;
  v107 = v67;
  v108 = a8;
  v44 = v87;
  v109 = v39;
  v110 = v87;
  v111 = a1;
  v45 = v92;
  sub_1C10A4500(v65, v66, v15 & 1, v64, sub_1C10A7A8C, v73, v72, v92, v42);
  v46 = v89;
  v72 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v73 = *(v90 + 8);
  v74 = (v90 + 8);
  v73(v45, v46);
  LOBYTE(v46) = sub_1C10A1D28(v40);
  v47 = sub_1C10A1614(v40);
  LOBYTE(v15) = v48;
  v49 = sub_1C10A1434(v40);
  v50 = sub_1C10A0C40(v40);
  v94 = v69;
  v95 = v71;
  v96 = v70;
  v97 = v91;
  v98 = v43;
  v99 = v68;
  v100 = v39;
  v101 = v44;
  v102 = a1;
  v51 = v79;
  sub_1C10A4500(v46 & 1, v47, v15 & 1, v49, sub_1C10A7AA4, v85, v84, v79, v50);
  v53 = v77;
  v52 = v78;
  OUTLINED_FUNCTION_15_6();
  v54 = v75;
  sub_1C1264CD0();
  (*(v86 + 8))(v51, v52);
  v115 = v52;
  v116 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v76;
  v57 = v83;
  sub_1C0FDBA4C();
  v58 = v82;
  v59 = *(v82 + 8);
  v59(v54, v57);
  v60 = v89;
  v61 = v92;
  (*(v90 + 16))(v92, v93, v89);
  v115 = v61;
  (*(v58 + 16))(v54, v56, v57);
  v116 = v54;
  v114[0] = v60;
  v114[1] = v57;
  v112 = v72;
  v113 = OpaqueTypeConformance2;
  sub_1C119EE80(&v115, 2, v114);
  v59(v56, v57);
  v62 = v73;
  v73(v93, v60);
  v59(v54, v57);
  return v62(v92, v60);
}

uint64_t sub_1C10A3F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v53 = a4;
  v54 = a6;
  v49 = a1;
  v55 = a9;
  v51 = a2;
  v52 = a10;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  v44 = a5;
  v61 = a7;
  v62 = a8;
  v42 = a7;
  v43 = a8;
  v63 = a10;
  v14 = type metadata accessor for PhotosItemsListRow(0, &v57);
  v15 = *(v14 - 8);
  v47 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v45 = v41 - v16;
  v17 = a3;
  v18 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[2] = v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A50, &qword_1C12B0388);
  v57 = v17;
  v58 = a5;
  v59 = v48;
  v60 = a7;
  v61 = a8;
  v22 = sub_1C12656A0();
  v50 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v46 = v41 - v27;
  v28 = *(v18 + 16);
  v29 = v17;
  v41[1] = v17;
  v28(v21, v49, v17, v26);
  v30 = v14;
  v31 = v45;
  (*(v15 + 16))(v45);
  v32 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v33 = swift_allocObject();
  v34 = v53;
  *(v33 + 2) = v29;
  *(v33 + 3) = v34;
  v35 = v43;
  v36 = v54;
  *(v33 + 4) = v44;
  *(v33 + 5) = v36;
  *(v33 + 6) = v42;
  *(v33 + 7) = v35;
  *(v33 + 8) = v52;
  (*(v15 + 32))(&v33[v32], v31, v30);
  v37 = sub_1C10A3184();

  sub_1C1265680();
  v56 = v37;
  swift_getWitnessTable();
  v38 = v46;
  sub_1C0FDBA4C();
  v39 = *(v50 + 8);
  v39(v24, v22);
  sub_1C0FDBA4C();
  return (v39)(v38, v22);
}

void *sub_1C10A4324@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v37 = sub_1C1265170();
  v36 = sub_1C1264420();
  v41[0] = a3;
  v41[1] = a4;
  v41[2] = a5;
  v41[3] = a6;
  v41[4] = a7;
  v41[5] = a8;
  v41[6] = a10;
  v18 = type metadata accessor for PhotosItemsListRow(0, v41);
  v19 = (a2 + *(v18 + 80));
  v20 = *v19;
  v21 = v19[1];
  v22 = sub_1C10A0C40(v18);
  v23 = sub_1C12659A0();
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v40 = 0;
  __src[35] = 0;
  sub_1C10A0D98(v18, v41);
  v29 = v41[22];
  v30 = v41[23];
  v31 = v41[24];
  v32 = v41[25];

  sub_1C100C7D0(v41);
  v33 = sub_1C12659A0();
  *&v42[0] = v29;
  *(&v42[0] + 1) = v30;
  v42[1] = 0uLL;
  *&v43 = v31;
  *(&v43 + 1) = v32;
  *&v44 = v33;
  *(&v44 + 1) = v34;
  *&__src[3] = v42[0];
  *&__src[11] = 0uLL;
  *&__src[19] = v43;
  *&__src[27] = v44;
  v45[0] = v29;
  v45[1] = v30;
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v31;
  v45[5] = v32;
  v45[6] = v33;
  v45[7] = v34;
  sub_1C10A7E70(v42, v38);
  sub_1C0FFC7B0(v45, &qword_1EBE924C0, &qword_1C12AE8D0);
  *a9 = v37;
  *(a9 + 8) = v36;
  *(a9 + 16) = v20;
  *(a9 + 24) = v21;
  *(a9 + 32) = v22;
  *(a9 + 40) = v23;
  *(a9 + 48) = v25;
  *(a9 + 56) = KeyPath;
  *(a9 + 64) = 0;
  *(a9 + 72) = v27;
  *(a9 + 80) = 0;
  *(a9 + 88) = v28;
  *(a9 + 96) = 0;
  return memcpy((a9 + 98), __src, 0x46uLL);
}

uint64_t sub_1C10A4500@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>)
{
  v16 = a8 + *(type metadata accessor for LazyHGridOrVGrid(0, a6, a7, a4) + 52);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  result = a5();
  *a8 = a1 & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a9;
  return result;
}

uint64_t sub_1C10A45C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v64 = a1;
  v67 = a9;
  *&v73 = a3;
  *(&v73 + 1) = a4;
  v74 = a5;
  v75 = a6;
  v62 = a6;
  v76 = a7;
  v77 = a8;
  v55 = a8;
  v78 = a10;
  v61 = a10;
  v60 = type metadata accessor for PhotosItemsListRow(0, &v73);
  v65 = *(v60 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v49[-v17];
  v18 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v49[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v73 = a3;
  *(&v73 + 1) = a4;
  v53 = a4;
  v74 = a5;
  v75 = a6;
  v21 = a5;
  v54 = a5;
  v76 = a7;
  v77 = a8;
  v22 = a7;
  v52 = a7;
  v78 = a10;
  type metadata accessor for PhotosItemsListRow.ItemContainerView(255, &v73);
  v23 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v72 = MEMORY[0x1E697E040];
  v24 = swift_getWitnessTable();
  type metadata accessor for PhotosItemsListCellContainer(255, v23, v24, v25);
  v26 = sub_1C1263190();
  v27 = swift_getWitnessTable();
  v28 = sub_1C1001354();
  v69 = v27;
  v70 = v28;
  v58 = v26;
  v56 = swift_getWitnessTable();
  *&v73 = a3;
  *(&v73 + 1) = a4;
  v74 = v21;
  v75 = v26;
  v76 = v22;
  v29 = v55;
  v77 = v55;
  v78 = v56;
  v30 = type metadata accessor for PhotosDraggableForEach(0, &v73);
  v59 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v51 = &v49[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x1EEE9AC00](v32);
  v57 = &v49[-v34];
  v35 = a3;
  (*(v18 + 16))(v68, v64, a3, v33);
  v36 = v60;
  v64 = *(a2 + *(v60 + 76));

  v50 = sub_1C10A1D28(v36);
  sub_1C0FDB0A8(a2 + *(v36 + 108), &v73);
  v37 = *(a2 + *(v36 + 96));
  v38 = v65;
  v39 = v63;
  (*(v65 + 16))(v63, a2, v36);
  v40 = (*(v38 + 80) + 72) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v42 = v53;
  *(v41 + 2) = v35;
  *(v41 + 3) = v42;
  v43 = v62;
  *(v41 + 4) = v54;
  *(v41 + 5) = v43;
  v44 = v52;
  *(v41 + 6) = v52;
  *(v41 + 7) = v29;
  *(v41 + 8) = v61;
  (*(v38 + 32))(&v41[v40], v39, v36);

  v45 = v51;
  sub_1C1039330(v64, v50, &v73, v37, 0, 0, sub_1C10A7ABC, v51, v41, v35, v58, v44, v29, v56);
  swift_getWitnessTable();
  v46 = v57;
  sub_1C0FDBA4C();
  v47 = *(v59 + 8);
  v47(v45, v30);
  sub_1C0FDBA4C();
  return (v47)(v46, v30);
}

uint64_t sub_1C10A4B10@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a9;
  v12 = type metadata accessor for PhotosItemsListRow(0, v14);
  return sub_1C10A4B78(a1, v12, x8_0);
}

uint64_t sub_1C10A4B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v38 = *(a2 + 16);
  v37 = *(a2 + 24);
  v36 = *(a2 + 32);
  v35 = *(a2 + 40);
  v34 = *(a2 + 48);
  v33 = *(a2 + 56);
  v32 = *(a2 + 64);
  v57[0] = v38;
  v57[1] = v37;
  v57[2] = v36;
  v57[3] = v35;
  v57[4] = v34;
  v57[5] = v33;
  v57[6] = v32;
  type metadata accessor for PhotosItemsListRow.ItemContainerView(255, v57);
  v6 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v56 = MEMORY[0x1E697E040];
  v41 = MEMORY[0x1E697E858];
  v7 = swift_getWitnessTable();
  v9 = type metadata accessor for PhotosItemsListCellContainer(0, v6, v7, v8);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = sub_1C1263190();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v31 = &v31 - v16;
  v17 = sub_1C10A4FAC(a1, a2);
  v18 = sub_1C10A5380(a1, a2);
  v44 = v38;
  v45 = v37;
  v46 = v36;
  v47 = v35;
  v48 = v34;
  v49 = v33;
  v50 = v32;
  v51 = v3;
  v52 = a1;
  sub_1C11FC1D4(v17 & 1, v18 & 1, sub_1C10A7B4C, v43, v6, v7, v11);
  LOBYTE(v7) = sub_1C1264420();
  v19 = (v3 + *(a2 + 80));
  v20 = *v19;
  v21 = v19[1];
  v22 = sub_1C10A0C40(a2);
  v23 = sub_1C12659A0();
  v25 = v24;
  v26 = swift_getWitnessTable();
  View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(v7, v20, v21, v23, v25, v9, v26, v22);
  (*(v39 + 8))(v11, v9);
  v27 = sub_1C1001354();
  v53 = v26;
  v54 = v27;
  swift_getWitnessTable();
  v28 = v31;
  sub_1C0FDBA4C();
  v29 = *(v40 + 8);
  v29(v14, v12);
  sub_1C0FDBA4C();
  return (v29)(v28, v12);
}

uint64_t sub_1C10A4FAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v42 = a1;
  v43 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 32);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v34 - v13;
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C10A1758(v20, v19);
  v21 = *(a2 + 84);
  v41 = v2;
  v22 = *&v2[v21];
  if (v22 < 1 || (v23 = *(*(*(a2 + 48) + 8) + 8), (sub_1C12662F0() & 1) != 0))
  {
    (*(v16 + 8))(v19, v15);
    return 0;
  }

  v34 = v16;
  v40 = *&v41[*(a2 + 76)];
  swift_getAtKeyPath();
  v24 = v19;
  sub_1C12662D0();
  v25 = v45[0];
  v41 = v24;
  v42 = v15;
  sub_1C1266310();
  v39 = v46;
  if (v25 >= v46)
  {
    v31 = *(v36 + 8);
    v36 = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
LABEL_11:
    v31(v44, v8);
    (*(v34 + 8))(v41, v42);
    return 0;
  }

  v37 = v23;
  v38 = a2;
  v26 = (v35 + 16);
  v27 = (v35 + 8);
  v28 = (v36 + 8);
  v36 = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (1)
  {
    v46 = v25;
    v29 = sub_1C12663A0();
    v30 = v43;
    (*v26)(v6);
    (v29)(v45, 0);
    swift_getAtKeyPath();
    (*v27)(v6, v30);
    LOBYTE(v29) = sub_1C1265DE0();
    v31 = *v28;
    (*v28)(v11, v8);
    if (v29)
    {
      break;
    }

    v32 = v25 + v22;
    if (!__OFADD__(v25, v22))
    {
      v25 += v22;
      if (v32 < v39)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  v31(v44, v8);
  (*(v34 + 8))(v41, v42);
  return 1;
}

uint64_t sub_1C10A5380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *(a2 + 24);
  v77 = *(v5 - 8);
  v78 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v89 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 32);
  v9 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v74 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v79 = &v69 - v10;
  v91 = v5;
  v72 = sub_1C1266790();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v69 - v11;
  v81 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v69 - v18;
  v85 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v69 - v22;
  v23 = *(v4 + 16);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C10A1758(v4, v27);
  v88 = *(v3 + *(v4 + 84));
  v76 = v88 - 1;
  if (v88 < 1 || (v87 = *(*(*(v4 + 48) + 8) + 8), (sub_1C12662F0() & 1) != 0))
  {
    (*(v24 + 8))(v27, v23);
    return 0;
  }

  v75 = v9;
  v29 = *(v3 + *(v4 + 76));
  v30 = v92;
  swift_getAtKeyPath();
  v31 = v84;
  (*(v85 + 16))(v84, v30, v8);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v8);
  sub_1C1265D60();
  v32 = v91;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v91);
  v70 = v24;
  v86 = v27;
  v83 = v29;
  if (EnumTagSinglePayload == 1)
  {
    (*(v71 + 8))(v12, v72);
    v34 = v80;
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v8);
  }

  else
  {
    v34 = v80;
    swift_getAtKeyPath();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v8);
    (*(v77 + 8))(v12, v32);
  }

  v35 = v81;
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v81 + 16);
  v38 = v79;
  v39 = v75;
  v37(v79, v84, v75);
  v78 = v36;
  v37((v38 + v36), v34, v39);
  if (__swift_getEnumTagSinglePayload(v38, 1, v8) == 1)
  {
    v40 = *(v35 + 8);
    v41 = v75;
    v40(v34, v75);
    v40(v84, v41);
    if (__swift_getEnumTagSinglePayload(v38 + v78, 1, v8) == 1)
    {
      v40(v38, v75);
      v42 = *(v85 + 8);
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v43 = v73;
  v37(v73, v38, v75);
  v44 = v78;
  if (__swift_getEnumTagSinglePayload(v38 + v78, 1, v8) == 1)
  {
    v45 = *(v81 + 8);
    v46 = v75;
    v45(v80, v75);
    v45(v84, v46);
    (*(v85 + 8))(v43, v8);
LABEL_14:
    (*(v74 + 8))(v38, TupleTypeMetadata2);
LABEL_15:
    result = sub_1C12662D0();
    v47 = v93[0] + v76;
    if (__OFADD__(v93[0], v76))
    {
      __break(1u);
      return result;
    }

    sub_1C1266310();
    v84 = v93[0];
    if (v47 >= v93[0])
    {
      v59 = *(v85 + 8);
      v85 = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    }

    else
    {
      v48 = (v77 + 16);
      v49 = (v77 + 8);
      v50 = (v85 + 8);
      v85 = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        v93[4] = v47;
        v51 = v23;
        v52 = sub_1C12663A0();
        v53 = v4;
        v54 = v89;
        v55 = v91;
        (*v48)(v89);
        v52(v93, 0);
        v56 = v8;
        v57 = v90;
        swift_getAtKeyPath();
        v58 = v54;
        v4 = v53;
        (*v49)(v58, v55);
        LOBYTE(v53) = sub_1C1265DE0();
        v59 = *v50;
        v60 = v57;
        v8 = v56;
        (*v50)(v60, v56);
        if (v53)
        {
          v59(v92, v56);
          (*(v70 + 8))(v86, v51);
          return 1;
        }

        v61 = v47 + v88;
        if (__OFADD__(v47, v88))
        {
          break;
        }

        v47 += v88;
        v23 = v51;
        if (v61 >= v84)
        {
          goto LABEL_23;
        }
      }

      v23 = v51;
    }

LABEL_23:
    v59(v92, v8);
    (*(v70 + 8))(v86, v23);
    return 0;
  }

  v62 = v85;
  v63 = v38 + v44;
  v64 = v90;
  (*(v85 + 32))(v90, v63, v8);
  v65 = sub_1C1265DE0();
  v42 = *(v62 + 8);
  v42(v64, v8);
  v66 = *(v81 + 8);
  v67 = v75;
  v66(v80, v75);
  v66(v84, v67);
  v42(v43, v8);
  v66(v79, v67);
  if ((v65 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_25:
  v68 = v86;
  v42(v92, v8);
  (*(v70 + 8))(v68, v23);
  return 1;
}

uint64_t sub_1C10A5D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6)
{
  v47 = a2;
  v50 = a5;
  v45 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v10;
  v54 = v11;
  v12 = v10;
  v38 = v10;
  v55 = v13;
  v56 = v14;
  v15 = v13;
  v39 = v13;
  v40 = v14;
  v16 = v14;
  v57 = v17;
  v58 = v18;
  v19 = v17;
  v41 = v17;
  v59 = a6;
  v20 = type metadata accessor for PhotosItemsListRow.ItemContainerView(0, &v53);
  v48 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v42 = &v37 - v21;
  v22 = sub_1C1263190();
  v49 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v46 = &v37 - v25;
  v53 = v12;
  v54 = a3;
  v55 = v15;
  v56 = v16;
  v57 = v19;
  v58 = a4;
  v59 = a6;
  v26 = type metadata accessor for PhotosItemsListRow(0, &v53);
  v27 = (a1 + *(v26 + 100));
  v28 = *v27;
  v29 = v27[1];
  v30 = v44;
  (*(v45 + 16))(v44, v47, a3);
  v31 = v42;
  sub_1C10A60C0(v28, v29, v30, v38, a3, v39, v40, v41, v42, a4, a6);

  sub_1C10A1614(v26);
  WitnessTable = swift_getWitnessTable();
  sub_1C12659A0();
  v33 = v43;
  sub_1C1264E90();
  (*(v48 + 8))(v31, v20);
  v51 = WitnessTable;
  v52 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  v34 = v46;
  sub_1C0FDBA4C();
  v35 = *(v49 + 8);
  v35(v33, v22);
  sub_1C0FDBA4C();
  return (v35)(v34, v22);
}

uint64_t sub_1C10A60C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a10;
  v16[6] = a11;
  v14 = type metadata accessor for PhotosItemsListRow.ItemContainerView(0, v16);
  return (*(*(a5 - 8) + 32))(&a9[*(v14 + 76)], a3, a5);
}

uint64_t sub_1C10A6158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 + 16);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v31[1] = swift_getWitnessTable();
  v5 = sub_1C1262920();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = v31 - v9;
  v10 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = *(a1 + 24);
  v12 = sub_1C1265AB0();
  v31[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  v18 = sub_1C1263C30();
  v35 = *(v18 - 8);
  v36 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v34 = v31 - v19;
  if (*v2)
  {
    v20 = sub_1C1263AB0();
    MEMORY[0x1EEE9AC00](v20);
    v31[-4] = v4;
    v31[-3] = v11;
    v30 = v21;
    sub_1C10A6A8C();
    sub_1C1262910();
    swift_getWitnessTable();
    v22 = v32;
    sub_1C0FDBA4C();
    v23 = v33[1];
    v23(v7, v5);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    v24 = v34;
    sub_1C1112E18();
    v23(v7, v5);
    v23(v22, v5);
  }

  else
  {

    v32 = sub_1C12638C0();
    v33 = v31;
    MEMORY[0x1EEE9AC00](v32);
    v31[-4] = v4;
    v31[-3] = v11;
    sub_1C10A6A8C();
    v30 = v11;
    sub_1C1265AA0();
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v25 = *(v31[0] + 8);
    v25(v14, v12);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    v24 = v34;
    sub_1C1112D68();
    v25(v14, v12);
    v25(v17, v12);
  }

  WitnessTable = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v38 = WitnessTable;
  v39 = v27;
  v28 = v36;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v35 + 8))(v24, v28);
}

uint64_t sub_1C10A676C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LazyHGridOrVGrid(0, v6, v7, v8);
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1C10A6864@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v6 = sub_1C1263190();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  type metadata accessor for LazyHGridOrVGrid(0, a2, a3, v13);
  sub_1C12659A0();
  sub_1C1264E90();
  v21[2] = a3;
  v21[3] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v15 = *(v7 + 8);
  v15(v9, v6);
  (*(v7 + 16))(v9, v12, v6);
  v19 = 0;
  v20 = 1;
  v21[0] = v9;
  v21[1] = &v19;
  v18[0] = v6;
  v18[1] = MEMORY[0x1E6981840];
  v17[2] = WitnessTable;
  v17[3] = MEMORY[0x1E6981838];
  sub_1C119EE80(v21, 2, v18);
  v15(v12, v6);
  return (v15)(v9, v6);
}

uint64_t sub_1C10A6A8C()
{
  sub_1C1263DC0();
  sub_1C10A7A1C();
  return sub_1C1266FE0();
}

unint64_t sub_1C10A6AE4()
{
  result = qword_1EBE92A68;
  if (!qword_1EBE92A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A68);
  }

  return result;
}

unint64_t sub_1C10A6B68(void *a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[4];
    v2 = sub_1C1266F10();
    if (v6 <= 0x3F)
    {
      type metadata accessor for PhotosScrollViewModel(255, v4, a1[7], v5);
      v2 = sub_1C1265790();
      if (v7 <= 0x3F)
      {
        sub_1C10A77C0(319, &qword_1EDE77500, MEMORY[0x1E697E0C8], MEMORY[0x1E69E6720]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          v2 = sub_1C1007F88();
          if (v10 <= 0x3F)
          {
            sub_1C10A77C0(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            v2 = v11;
            if (v12 <= 0x3F)
            {
              swift_getExtendedExistentialTypeMetadata();
              sub_1C10A77C0(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
              v2 = v13;
              if (v14 <= 0x3F)
              {
                sub_1C10A77C0(319, &qword_1EDE775B0, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
                if (v16 > 0x3F)
                {
                  return v15;
                }

                sub_1C10A77C0(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
                if (v17 > 0x3F)
                {
                  return v15;
                }

                sub_1C10A77C0(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                if (v18 > 0x3F)
                {
                  return v15;
                }

                sub_1C10A7810(319, &qword_1EDE77590, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                if (v19 > 0x3F)
                {
                  return v15;
                }

                sub_1C10A6EE0(319);
                if (v20 > 0x3F)
                {
                  return v15;
                }

                sub_1C10A77C0(319, &qword_1EDE775A0, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
                if (v21 > 0x3F)
                {
                  return v15;
                }

                else
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1C10A6EE0(uint64_t a1)
{
  if (!qword_1EDE775A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93690, &qword_1C12B32F0);
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE775A8);
    }
  }
}

uint64_t sub_1C10A6F44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C10A70C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1C10A7310(uint64_t a1)
{
  sub_1C10A77C0(319, &qword_1EDE7B4C0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C10A7810(319, &qword_1EDE76AD0, MEMORY[0x1E697D750], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1C10A77C0(319, &qword_1EDE775A0, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C10A7454(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = result & 0xFFFFFFFFFFFFFFF8;
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v18 = *(v17 + 24);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 40) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C10A75C0(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          v18 = a1 & 0xFFFFFFFFFFFFFFF8;
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((v18 + 39) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *(v18 + 24) = v19;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v17;
        break;
      case 2:
        *(a1 + v11) = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1C10A77C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C10A7810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

_BYTE *sub_1C10A7874(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C10A7954()
{
  result = qword_1EBE92A70;
  if (!qword_1EBE92A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A70);
  }

  return result;
}

unint64_t sub_1C10A7A1C()
{
  result = qword_1EDE7BBA0;
  if (!qword_1EDE7BBA0)
  {
    sub_1C1263DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBA0);
  }

  return result;
}

uint64_t sub_1C10A7ABC()
{
  OUTLINED_FUNCTION_4_25();
  v18 = v0;
  v19 = v1;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v7 = type metadata accessor for PhotosItemsListRow(0, &v18);
  OUTLINED_FUNCTION_15(v7);
  v8 = OUTLINED_FUNCTION_7_3();
  return sub_1C10A4B10(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

uint64_t objectdestroy_55Tm()
{
  v2 = *(v1 + 48);
  v15 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v16[1] = v15;
  v17 = v2;
  v18 = *(v1 + 56);
  v14 = v18;
  type metadata accessor for PhotosItemsListRow(0, v16);
  OUTLINED_FUNCTION_10_4();
  v4 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(v4);

  v6 = v0[23];
  v8 = type metadata accessor for PhotosScrollViewModel(255, v15, v14, v7);
  OUTLINED_FUNCTION_46_0(v8);
  OUTLINED_FUNCTION_4_2();
  (*(v9 + 8))(v4 + v6);

  __swift_destroy_boxed_opaque_existential_0Tm((v4 + v0[27]));
  OUTLINED_FUNCTION_27_1(v0[28]);
  OUTLINED_FUNCTION_27_1(v0[29]);
  OUTLINED_FUNCTION_1_10((v4 + v0[30]));
  OUTLINED_FUNCTION_27_1(v0[31]);
  v10 = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_4_2();
    (*(v11 + 8))(v4 + v10);
  }

  else
  {
  }

  sub_1C1058610(*(v4 + v0[33]), *(v4 + v0[33] + 8), *(v4 + v0[33] + 9));
  v12 = v4 + v0[34];
  sub_1C1001C04(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32));
  OUTLINED_FUNCTION_27_1(v0[35]);
  return swift_deallocObject();
}

void *sub_1C10A7DE0()
{
  OUTLINED_FUNCTION_4_25();
  v18 = v0;
  v19 = v1;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v7 = type metadata accessor for PhotosItemsListRow(0, &v18);
  OUTLINED_FUNCTION_15(v7);
  OUTLINED_FUNCTION_7_3();
  return sub_1C10A4324(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

uint64_t sub_1C10A7E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924C0, &qword_1C12AE8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10A7EE0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 PhotosNotificationCell.init(_:isExpanded:icon:content:bottomAccessory:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *(a9 + 136) = swift_getKeyPath();
  *(a9 + 144) = 0;
  *(a9 + 152) = 0;
  v19 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v19;
  result = *(a1 + 32);
  v21 = *(a1 + 48);
  *(a9 + 32) = result;
  *(a9 + 48) = v21;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  *(a9 + 112) = a2;
  *(a9 + 120) = a3;
  *(a9 + 128) = a4;
  return result;
}

uint64_t sub_1C10A8008()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  MEMORY[0x1C68EEF20](&v5, v3);
  return v5;
}

uint64_t PhotosNotificationCell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  *&v56 = a1 + 5;
  v3 = a1[2];
  sub_1C1263190();
  v54 = a1[3];
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  sub_1C1263190();
  v51 = a1[4];
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v61 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v50 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C20, &unk_1C12A73D0);
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v62 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v50 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v60 = sub_1C1263190();
  v64 = *(v60 - 8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v50 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A78, &unk_1C12B07C8);
  v58 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v65 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v63 = &v50 - v24;
  memcpy(v87, v57, 0x99uLL);
  *&v25 = v51;
  *(&v25 + 1) = *v56;
  *&v26 = v3;
  *(&v26 + 1) = v54;
  v56 = v25;
  v57 = v26;
  v72 = v26;
  v73 = v25;
  v27 = a1[7];
  v54 = a1[6];
  v51 = v27;
  v74 = v54;
  v75 = v27;
  v76 = v87;
  v77 = *&v87[5];
  sub_1C1263AA0();
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  v28 = swift_getWitnessTable();
  v29 = v50;
  sub_1C1264FA0();
  (*(v6 + 8))(v9, v4);
  v86 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C00, &unk_1C12A73B0);
  v84 = v28;
  v85 = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable();
  sub_1C0FDB6D4(&unk_1EDE76D60, &qword_1EBE90C00, &unk_1C12A73B0, MEMORY[0x1E69809C8]);
  sub_1C100C6E8(v10);
  v31 = v53;
  sub_1C1264960();
  (*(v61 + 8))(v29, v10);
  OUTLINED_FUNCTION_8_3();
  v34 = sub_1C0FDB6D4(v32, &qword_1EBE90C20, &unk_1C12A73D0, v33);
  v82 = v30;
  v83 = v34;
  v35 = swift_getWitnessTable();
  v36 = v55;
  sub_1C1264AE0();
  (*(v62 + 8))(v31, v14);
  sub_1C1265950();
  v67 = v57;
  v68 = v56;
  v69 = v54;
  v70 = v51;
  v71 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A80, &qword_1C12B07D8);
  OUTLINED_FUNCTION_10();
  v39 = sub_1C0FDB6D4(v37, &qword_1EBE91C40, &unk_1C12A7010, v38);
  v80 = v35;
  v81 = v39;
  v40 = v60;
  v41 = swift_getWitnessTable();
  sub_1C10A987C();
  v42 = v59;
  sub_1C1264F60();
  (*(v64 + 8))(v36, v40);
  OUTLINED_FUNCTION_11();
  v45 = sub_1C0FDB6D4(v43, &qword_1EBE92A78, &unk_1C12B07C8, v44);
  v78 = v41;
  v79 = v45;
  v46 = v58;
  swift_getWitnessTable();
  v47 = v63;
  sub_1C0FDBA4C();
  v48 = *(v65 + 8);
  v48(v42, v46);
  sub_1C0FDBA4C();
  return (v48)(v47, v46);
}

uint64_t sub_1C10A87E8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(void, void)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v58 = a6;
  v52 = a5;
  v56 = a7;
  v54 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v45 - v17;
  v19 = v18;
  v45 = v18;
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1C12654C0();
  v50 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v49 = sub_1C1263190();
  v51 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v57 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v48 = &v45 - v25;
  sub_1C12638E0();
  v26 = a1;
  v59 = v19;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v27 = a4;
  v28 = v52;
  v29 = v58;
  v63 = v52;
  v64 = v58;
  v65 = v26;
  v30 = v26;
  v46 = v26;
  v66 = a8;
  v67 = a9;
  sub_1C12654B0();
  memcpy(v78, v30, 0x99uLL);
  v72 = v45;
  v73 = a2;
  v74 = a3;
  v75 = v27;
  v76 = v28;
  v77 = v29;
  type metadata accessor for PhotosNotificationCell(0, &v72);
  sub_1C10A8008();
  v31 = swift_getWitnessTable();
  v32 = v57;
  sub_1C1265060();
  (*(v50 + 8))(v22, v20);
  v70 = v31;
  v71 = MEMORY[0x1E697EBE0];
  v33 = v49;
  v50 = swift_getWitnessTable();
  v34 = v48;
  sub_1C0FDBA4C();
  v35 = v51;
  v52 = *(v51 + 8);
  v36 = v52(v32, v33);
  v37 = v53;
  (v46[12])(v36);
  v38 = v55;
  sub_1C0FDBA4C();
  v39 = v54;
  WitnessTable = *(v54 + 8);
  WitnessTable(v37, a3);
  v40 = *(v35 + 16);
  v41 = v57;
  v40(v57, v34, v33);
  v78[0] = v41;
  (*(v39 + 16))(v37, v38, a3);
  v78[1] = v37;
  v72 = v33;
  v73 = a3;
  v68 = v50;
  v69 = v58;
  sub_1C119EE80(v78, 2, &v72);
  v42 = WitnessTable;
  WitnessTable(v38, a3);
  v43 = v52;
  v52(v34, v33);
  v42(v37, a3);
  return v43(v41, v33);
}

uint64_t sub_1C10A8D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v54 = a3;
  v55 = a6;
  v11 = *(a3 - 8);
  v52 = a5;
  v53 = v11;
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v44 - v14;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1263190();
  v49 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v44 - v25;
  (*(a1 + 64))(v24);
  sub_1C10A0734(a2, a4, v27, v28, v29, v30);
  sub_1C1264E90();
  (*(v16 + 8))(v19, a2);
  v62[3] = a4;
  v62[4] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v31 = v26;
  v45 = v22;
  sub_1C0FDBA4C();
  v32 = v49;
  v48 = *(v49 + 8);
  v33 = v48(v22, v20);
  v34 = v50;
  (*(a1 + 80))(v33);
  v35 = v51;
  v36 = v52;
  v37 = v54;
  sub_1C0FDBA4C();
  v38 = v53;
  v46 = *(v53 + 8);
  v46(v34, v37);
  v39 = *(v32 + 16);
  v40 = v45;
  v39(v45, v31, v20);
  v62[0] = v40;
  (*(v38 + 16))(v34, v35, v37);
  v60 = 0;
  v61 = 1;
  v62[1] = v34;
  v62[2] = &v60;
  v59[0] = v20;
  v59[1] = v37;
  v59[2] = MEMORY[0x1E6981840];
  v56 = WitnessTable;
  v57 = v36;
  v58 = MEMORY[0x1E6981838];
  sub_1C119EE80(v62, 3, v59);
  v41 = v46;
  v46(v35, v37);
  v42 = v48;
  v48(v31, v20);
  v41(v34, v37);
  return v42(v40, v20);
}

uint64_t sub_1C10A9148@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A98, &qword_1C12B07E0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30[-1] - v17;
  memcpy(__dst, a1, 0x99uLL);
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  type metadata accessor for PhotosNotificationCell(0, v30);
  v19 = sub_1C10A9384();
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B60, &qword_1C12B0A90);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE929D8, &qword_1C12BDD40);
    v25 = sub_1C109F964();
    __dst[0] = v24;
    __dst[1] = v25;
    swift_getOpaqueTypeConformance2();
    sub_1C1265480();
    sub_1C0FCF004(v21, v22);
    *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92AA8, &qword_1C12B07E8) + 36)] = xmmword_1C12B0720;
    v26 = &v18[*(v16 + 36)];
    *v26 = 0xC02E000000000000;
    v26[8] = 0;
    sub_1C0FB4B4C(v18, a8);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a8, v27, 1, v16);
}

uint64_t (*sub_1C10A9384())()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 136);
  LODWORD(v3) = *(v0 + 152);
  v6 = *(v0 + 136);
  v11[0] = v5;
  if (v3 == 1)
  {
    sub_1C0FCF1B4(v6, *(&v5 + 1));
    v7 = v11[0];
  }

  else
  {

    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v9 = sub_1C0FFC474(v6, *(&v11[0] + 1), 0);
    (*(v2 + 8))(v4, v1, v9);
    v7 = v11[1];
  }

  if (!v7)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v7;
  return sub_1C0FFC480;
}

double sub_1C10A9538()
{
  v0 = sub_1C1263130();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C12652F0();
  sub_1C1265230();
  v5 = sub_1C12651E0();

  KeyPath = swift_getKeyPath();
  v8[1] = v4;
  v8[2] = KeyPath;
  v8[3] = v5;
  (*(v1 + 104))(v3, *MEMORY[0x1E697E6E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929D8, &qword_1C12BDD40);
  sub_1C109F964();
  sub_1C1264BB0();
  (*(v1 + 8))(v3, v0);

  return result;
}

uint64_t (*sub_1C10A96D8())()
{
  sub_1C10AA0C4();
  sub_1C12637F0();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_10();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1C0FFC94C;
}

uint64_t (*sub_1C10A975C@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = sub_1C10A96D8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    OUTLINED_FUNCTION_2_10();
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1C10AA214;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1C10A97C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    OUTLINED_FUNCTION_2_10();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C0FFC94C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1, v2);
  return sub_1C10A9A70(v4, v3);
}

unint64_t sub_1C10A987C()
{
  result = qword_1EBE92A88;
  if (!qword_1EBE92A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A80, &qword_1C12B07D8);
    sub_1C10A9900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A88);
  }

  return result;
}

unint64_t sub_1C10A9900()
{
  result = qword_1EBE92A90;
  if (!qword_1EBE92A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A98, &qword_1C12B07E0);
    sub_1C10A99B8();
    sub_1C0FDB6D4(&unk_1EDE7BB90, &qword_1EBE91358, &qword_1C12A8590, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92A90);
  }

  return result;
}

unint64_t sub_1C10A99B8()
{
  result = qword_1EBE92AA0;
  if (!qword_1EBE92AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92AA8, &qword_1C12B07E8);
    sub_1C0FDB6D4(&qword_1EBE92AB0, &qword_1EBE92AB8, &unk_1C12B07F0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92AA0);
  }

  return result;
}

uint64_t sub_1C10A9A70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1C10AA0C4();
  return sub_1C1263800();
}

uint64_t View.photosNotificationCellCancellation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1C68EE920](v4, a3, &type metadata for PhotosNotificationCellCancellationModifier);
}

uint64_t sub_1C10A9B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B50, &qword_1C12B0A80);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v13 = sub_1C0FE7B00;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B58, &qword_1C12B0A88);
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  v15 = &v10[*(v8 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v15[2] = v12;
  sub_1C10AA01C(v10, a4);
  return sub_1C0FCF1B4(a2, a3);
}

void PhotosNotificationCellConfiguration.cellPadding.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void static PhotosNotificationCellConfiguration.smallIcon.getter(uint64_t a1@<X8>)
{
  __asm { FMOV            V1.2D, #20.0 }

  *a1 = xmmword_1C12B0730;
  *(a1 + 16) = _Q1;
  OUTLINED_FUNCTION_7_19(a1, xmmword_1C12B0740, xmmword_1C12B0750);
}

void static PhotosNotificationCellConfiguration.largeIcon.getter(uint64_t a1@<X8>)
{
  __asm { FMOV            V1.2D, #10.0 }

  *a1 = xmmword_1C12B0760;
  *(a1 + 16) = _Q1;
  OUTLINED_FUNCTION_7_19(a1, xmmword_1C12B0770, xmmword_1C12B0780);
}

void static PhotosNotificationCellConfiguration.largeIconStacked.getter(uint64_t a1@<X8>)
{
  __asm { FMOV            V1.2D, #10.0 }

  *a1 = xmmword_1C12B0760;
  *(a1 + 16) = _Q1;
  OUTLINED_FUNCTION_7_19(a1, xmmword_1C12B0770, xmmword_1C12B0790);
}

uint64_t sub_1C10A9E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10A9E70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C10A9EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10A9F30(uint64_t a1, int a2)
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

uint64_t sub_1C10A9F50(uint64_t result, int a2, int a3)
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

unint64_t sub_1C10A9F9C()
{
  result = qword_1EBE92B48;
  if (!qword_1EBE92B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B48);
  }

  return result;
}

uint64_t sub_1C10AA01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B50, &qword_1C12B0A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10AA0C4()
{
  result = qword_1EBE92B70;
  if (!qword_1EBE92B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B70);
  }

  return result;
}

unint64_t sub_1C10AA128()
{
  result = qword_1EBE92B78;
  if (!qword_1EBE92B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92B50, &qword_1C12B0A80);
    sub_1C0FDB6D4(&qword_1EBE92B80, &qword_1EBE92B58, &qword_1C12B0A88, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&qword_1EBE90B48, &qword_1EBE90B50, &qword_1C12A6CB8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B78);
  }

  return result;
}

double sub_1C10AA244@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {

    sub_1C1266420();
    v17 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v18 = sub_1C0FF9034(a2, a3, 0);
    (*(v11 + 8))(v13, v10, v18);
    v14 = v25[1];
    if (v25[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v14 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 40))(ObjectType, v14);
  swift_unknownObjectRelease();
LABEL_6:
  v19 = a1 & 1;
  v20 = swift_allocObject();
  *(v20 + 16) = v16 & 1;
  *(v20 + 24) = a1 & 1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  v21 = a4 & 1;
  *(v20 + 48) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = v21;
  KeyPath = swift_getKeyPath();
  LOBYTE(v25[0]) = 0;
  *a5 = v19;
  *(a5 + 8) = sub_1C10AA4C0;
  *(a5 + 16) = 0;
  *(a5 + 24) = sub_1C10AAA3C;
  *(a5 + 32) = v20;
  *(a5 + 40) = sub_1C10AAA58;
  *(a5 + 48) = v22;
  *(a5 + 56) = KeyPath;
  *(a5 + 64) = 0;
  *(a5 + 65) = v19;
  sub_1C1058CE4(a2, a3, v21);
  return sub_1C1058CE4(a2, a3, v21);
}

double sub_1C10AA4CC@<D0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    if (a4)
    {
      swift_unknownObjectRetain();
      v14 = a3;
      if (a2)
      {
LABEL_5:
        ObjectType = swift_getObjectType();
        (*(v14 + 200))(ObjectType, v14);
        v17 = v16;
        swift_unknownObjectRelease();
        v18 = swift_getObjectType();
        v19 = (*(v17 + 24))(v18, v17);
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    else
    {

      sub_1C1266420();
      v20 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      v21 = sub_1C0FF9034(a2, a3, 0);
      (*(v11 + 8))(v13, v10, v21);
      v14 = *(&v38 + 1);
      if (v38)
      {
        goto LABEL_5;
      }
    }

    v19 = 0;
LABEL_8:
    if (a4)
    {
      swift_unknownObjectRetain();
      if (a2)
      {
LABEL_10:
        v22 = swift_getObjectType();
        (*(a3 + 200))(v22, a3);
        v24 = v23;
        swift_unknownObjectRelease();
        v25 = swift_getObjectType();
        v26 = (*(v24 + 16))(v25, v24);
        swift_unknownObjectRelease();
LABEL_13:
        KeyPath = swift_getKeyPath();
        v34 = v19;
        v35 = v26;
        v36 = KeyPath;
        v37 = 256;
        sub_1C10AAA70();
        sub_1C10AAAC4();
        goto LABEL_14;
      }
    }

    else
    {

      sub_1C1266420();
      v27 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      v28 = sub_1C0FF9034(a2, a3, 0);
      (*(v11 + 8))(v13, v10, v28);
      a3 = *(&v38 + 1);
      if (v38)
      {
        goto LABEL_10;
      }
    }

    v26 = 0;
    goto LABEL_13;
  }

  v34 = swift_getKeyPath();
  sub_1C10AAA70();
  sub_1C10AAAC4();
  v35 = 0;
  v36 = 0;
  v37 = 0;
LABEL_14:
  sub_1C1263C20();
  result = *&v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  *a5 = v38;
  *(a5 + 16) = v31;
  *(a5 + 24) = v32;
  *(a5 + 25) = v33;
  return result;
}

uint64_t sub_1C10AA850@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    result = swift_unknownObjectRetain();
    if (!a1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  v14 = sub_1C0FF9034(a1, a2, 0);
  result = (*(v9 + 8))(v11, v8, v14);
  LOBYTE(a1) = v19[0];
  a2 = v19[1];
  if (v19[0])
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    (*(a2 + 200))(ObjectType, a2);
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = swift_getObjectType();
    LOBYTE(a1) = (*(v17 + 8))(v18, v17);
    result = swift_unknownObjectRelease();
  }

LABEL_6:
  *a4 = a1 & 1;
  *(a4 + 1) = 257;
  return result;
}

unint64_t sub_1C10AAA70()
{
  result = qword_1EBE92B88;
  if (!qword_1EBE92B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B88);
  }

  return result;
}

unint64_t sub_1C10AAAC4()
{
  result = qword_1EBE92B90;
  if (!qword_1EBE92B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B90);
  }

  return result;
}

unint64_t sub_1C10AAB18()
{
  result = qword_1EBE92B98;
  if (!qword_1EBE92B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92BA0, &qword_1C12B0C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92B98);
  }

  return result;
}

uint64_t PhotosColumns.countPerPage.getter()
{
  v1 = v0[1];
  if (v1)
  {
    if (*v0 != 0x8000000000000000 || v1 != -1)
    {
      return *v0 / v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

PhotosSwiftUICore::PhotosColumns __swiftcall PhotosColumns.init(_:span:prefixItemAdditionalSpan:)(Swift::Int _, Swift::Int span, Swift::Int prefixItemAdditionalSpan)
{
  *v3 = _;
  v3[1] = span;
  v3[2] = prefixItemAdditionalSpan;
  result.prefixItemAdditionalSpan = prefixItemAdditionalSpan;
  result.span = span;
  result.count = _;
  return result;
}

void *sub_1C10AABF8@<X0>(uint64_t *a7@<X8>)
{
  v8 = sub_1C12659A0();
  v10 = v9;
  sub_1C10AACD0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_1C102EFA0(__dst, &v12, &qword_1EBE92BB8, &qword_1C12B0D30);
  sub_1C0F9E21C(v15, &qword_1EBE92BB8, &qword_1C12B0D30);
  *a7 = v8;
  a7[1] = v10;
  return memcpy(a7 + 2, __dst, 0x58uLL);
}

double sub_1C10AACD0@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1265300();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13[0] = sub_1C12651B0();
  sub_1C0FDB76C();
  v6 = sub_1C1265270();
  sub_1C12652F0();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v7 = sub_1C1265350();

  (*(v3 + 8))(v5, v2);
  sub_1C1262D40();
  sub_1C12659A0();
  sub_1C1262C80();
  LOBYTE(v13[0]) = 1;
  *&v11[3] = *&v11[27];
  *&v11[11] = *&v11[35];
  *&v11[19] = *&v11[43];
  v8 = sub_1C1265190();
  v12[0] = v7;
  v12[1] = 0;
  LOWORD(v12[2]) = 1;
  *(&v12[2] + 2) = *v11;
  *(&v12[4] + 2) = *&v11[8];
  *(&v12[6] + 2) = *&v11[16];
  v12[8] = *&v11[23];
  v12[9] = v8;
  *a1 = v6;
  memcpy(a1 + 1, v12, 0x50uLL);
  v13[0] = v7;
  v13[1] = 0;
  v14 = 1;
  v15 = *v11;
  v16 = *&v11[8];
  *v17 = *&v11[16];
  *&v17[14] = *&v11[23];
  v18 = v8;

  sub_1C102EFA0(v12, v10, &qword_1EBE92BC0, &qword_1C12B0D38);
  sub_1C0F9E21C(v13, &qword_1EBE92BC0, &qword_1C12B0D38);

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosMockFaceView(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C10AB01C()
{
  result = qword_1EBE92BA8;
  if (!qword_1EBE92BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92BB0, &qword_1C12B0D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92BA8);
  }

  return result;
}

uint64_t PhotosListCell.init(_:)()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  v7 = type metadata accessor for PhotosListCell(0, v4, v5, v6);
  v8 = v7[9];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((v3 + v8), __src, 0xD1uLL);
  v9 = v7[10];
  *(v3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  sub_1C1009908();
  *(v3 + v7[12]) = 0x4039000000000000;
  *(v3 + v7[13]) = 0x403D000000000000;
  v10 = v7[14];
  *(v3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BD8, &qword_1C12B0DF0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v0 - 8) + 32))(v3, v1, v0);
}

uint64_t sub_1C10AB1DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 36);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E27C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10AB3F8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1C10AF3D4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1C1263130();
    return (*(*(v10 - 8) + 32))(a2, v9, v10);
  }

  else
  {
    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C10AB5FC(uint64_t a1)
{
  sub_1C10AB1DC(a1, v2);
  sub_1C100C7D0(v2);
  return v2[161];
}

double sub_1C10AB62C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  sub_1C1262BF0();
  return v1;
}

double sub_1C10AB678()
{
  result = sub_1C10AB62C();
  if (result <= 44.0)
  {
    return 44.0;
  }

  return result;
}

uint64_t sub_1C10AB6A0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90BD8, &qword_1C12B0DF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1C10AF3D4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C10AF1D8(v9, a2);
  }

  sub_1C1266420();
  v11 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PhotosListCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92BC8, &qword_1C12B0DF8);
  v6 = sub_1C10239B0(&qword_1EBE92BD0, &qword_1EBE92BC8, &qword_1C12B0DF8, MEMORY[0x1E6981F48]);
  *a2 = sub_1C1009330(v5, v6, v7, v8, v9, v10);
  a2[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92BD8, &qword_1C12B0E00);
  sub_1C10AB9B4(v2, *(a1 + 16), *(a1 + 24), a2 + *(v12 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92BE0, &qword_1C12B0E08);
  sub_1C10239B0(&qword_1EBE92BE8, &qword_1EBE92BE0, &qword_1C12B0E08, MEMORY[0x1E6981880]);
  sub_1C100AE3C();
  v13 = OUTLINED_FUNCTION_2_1();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92BF0, &qword_1C12B0E10);
  *(a2 + *(result + 36)) = v13 & 1;
  return result;
}

uint64_t sub_1C10AB9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C40, &qword_1C12A75B8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C00, &qword_1C12B0EC0);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v41 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C08, &qword_1C12B0EC8);
  MEMORY[0x1EEE9AC00](v43);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C10, &qword_1C12B0ED0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C18, &qword_1C12B0ED8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v45 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v22 = type metadata accessor for PhotosListCell(0, a2, a3, v21);
  if (sub_1C10AB5FC(v22))
  {
    v23 = sub_1C10AB678();
    if (v23 <= 72.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 72.0;
    }

    *v15 = sub_1C1263AB0();
    *(v15 + 1) = 0;
    v15[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C60, &qword_1C12B0F78);
    sub_1C10AC08C(a1, a2, a3, &v15[*(v25 + 44)], v24);
    sub_1C10AB1DC(v22, v49);
    sub_1C100C7D0(v49);
    v42 = v50;
    v41 = v51;
    v26 = sub_1C1264470();
    v27 = &v15[*(v13 + 36)];
    *v27 = v26;
    *(v27 + 24) = v41;
    *(v27 + 8) = v42;
    v27[40] = 0;
    v28 = &qword_1EBE92C10;
    sub_1C10AF3D4();
    swift_storeEnumTagMultiPayload();
    sub_1C10AF014();
    sub_1C10AF0CC();
    sub_1C1263C20();
    v29 = v15;
  }

  else
  {
    *v12 = sub_1C12638E0();
    *(v12 + 1) = 0;
    v12[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C20, &qword_1C12B0EE0);
    sub_1C10ADB58(a1, a2, a3, &v12[*(v30 + 44)]);
    sub_1C10AB1DC(v22, v49);
    sub_1C100C7D0(v49);
    v42 = v50;
    v41 = v51;
    v31 = sub_1C1264470();
    v32 = &v12[*(v44 + 36)];
    *v32 = v31;
    *(v32 + 24) = v41;
    *(v32 + 8) = v42;
    v32[40] = 0;
    v28 = &qword_1EBE92C00;
    sub_1C10AF3D4();
    swift_storeEnumTagMultiPayload();
    sub_1C10AF014();
    sub_1C10AF0CC();
    sub_1C1263C20();
    v29 = v12;
  }

  sub_1C0F9E27C(v29, v28);
  sub_1C1265150();
  v33 = sub_1C12651E0();

  if (qword_1EDE77908 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDE77910;
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v35 = qword_1EDE82B08;
  v36 = qword_1EDE82B10;
  v37 = qword_1EDE82B28;
  *v10 = v33;
  *(v10 + 4) = 514;
  *(v10 + 2) = v35;
  *(v10 + 3) = v36;
  *(v10 + 2) = xmmword_1EDE82B18;
  *(v10 + 6) = v37;
  *(v10 + 7) = 0;
  *(v10 + 8) = v34;
  *(v10 + 9) = swift_getKeyPath();
  v10[104] = 0;
  *(v10 + 14) = swift_getKeyPath();
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 145) = 0u;
  *(v10 + 21) = swift_getKeyPath();
  v10[176] = 0;
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();

  sub_1C12628D0();
  v38 = v45;
  sub_1C10AF3D4();
  v39 = v48;
  sub_1C10AF3D4();
  sub_1C10AF3D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C58, &qword_1C12B0F70);
  sub_1C10AF3D4();
  sub_1C0F9E27C(v10, &qword_1EBE90C40);
  sub_1C0F9E27C(v20, &qword_1EBE92C18);
  sub_1C0F9E27C(v39, &qword_1EBE90C40);
  return sub_1C0F9E27C(v38, &qword_1EBE92C18);
}

uint64_t sub_1C10AC08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v36[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C68, &qword_1C12B0F80);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v36 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C70, &qword_1C12B0F88);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v36 - v20;
  *v21 = sub_1C12638E0();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C78, &unk_1C12B0F90);
  sub_1C10AC35C(a1, a2, a3, &v21[*(v22 + 44)]);
  v23 = sub_1C1264470();
  v24 = &v21[*(v16 + 44)];
  *v24 = v23;
  __asm { FMOV            V0.2D, #8.0 }

  *(v24 + 8) = _Q0;
  *(v24 + 24) = xmmword_1C12B0D40;
  v24[40] = 0;
  *v14 = sub_1C12659A0();
  v14[1] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CA0, &qword_1C12A7690);
  sub_1C10AD90C(a2, a3, v14 + *(v31 + 44));
  v32 = sub_1C1264470();
  v33 = v14 + *(v9 + 44);
  *v33 = v32;
  *(v33 + 8) = xmmword_1C12A7250;
  __asm { FMOV            V0.2D, #12.0 }

  *(v33 + 24) = _Q0;
  v33[40] = 0;
  sub_1C10AF3D4();
  sub_1C10AF3D4();
  sub_1C10AF3D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C80, &unk_1C12B0FA0);
  sub_1C10AF3D4();
  sub_1C0F9E27C(v14, &qword_1EBE92C68);
  sub_1C0F9E27C(v21, &qword_1EBE92C70);
  sub_1C0F9E27C(v11, &qword_1EBE92C68);
  return sub_1C0F9E27C(v18, &qword_1EBE92C70);
}

uint64_t sub_1C10AC35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v81 = a4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C88, &unk_1C12B0FE8);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v63[-v8];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v63[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C90, &qword_1C12B0FF8);
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v63[-v13];
  v73 = sub_1C12657D0();
  v14 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C38, qword_1C12A74D8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v63[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92C98, &qword_1C12B1000);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v79 = &v63[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v63[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CA0, &unk_1C12B1008);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v76 = &v63[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v63[-v27];
  v29 = sub_1C12659A0();
  v77 = v30;
  v78 = v29;
  sub_1C10ACC00(a1, a2, v84);
  memcpy(v90, v84, sizeof(v90));
  memcpy(v91, v84, sizeof(v91));
  sub_1C10AF3D4();
  sub_1C0F9E27C(v91, &qword_1EBE90CD0);
  memcpy(__dst, v90, sizeof(__dst));
  v32 = type metadata accessor for PhotosListCell(0, a2, a3, v31);
  v74 = v28;
  sub_1C10ACD48(v32, v28);
  sub_1C10AB6A0(v19);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CA8, &qword_1C12B1018);
  if (__swift_getEnumTagSinglePayload(v19, 1, v33) == 1)
  {
    sub_1C0F9E27C(v19, &qword_1EBE90C38);
LABEL_6:
    v54 = v75;
    v55 = v75;
    v56 = 1;
    goto LABEL_7;
  }

  MEMORY[0x1C68EEF20](v33);
  sub_1C0F9E27C(v19, &qword_1EBE92CA8);
  v34 = sub_1C12657C0();
  (*(v14 + 8))(v16, v73);
  if ((v34 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1C12659A0();
  sub_1C1262C80();
  v35 = v84[18];
  v36 = v86;
  v37 = v88;
  v38 = v89;
  LOBYTE(v84[0]) = 1;
  LOBYTE(v83[0]) = v85;
  v82 = v87;
  v39 = *MEMORY[0x1E697E6D0];
  v40 = sub_1C1263130();
  v41 = v72;
  (*(*(v40 - 8) + 104))(v72, v39, v40);
  sub_1C10AF248(&qword_1EDE7BF90, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C1265DE0();
  if (result)
  {
    sub_1C10AF184();
    v73 = v37;
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    v65 = v36;
    v43 = v66;
    sub_1C1264BC0();
    sub_1C0F9E27C(v41, &qword_1EBE92FE0);
    v44 = v84[0];
    v64 = LOBYTE(v83[0]);
    LODWORD(v67) = v82;
    v46 = v69;
    v45 = v70;
    v72 = v38;
    v47 = *(v69 + 16);
    v48 = v35;
    v49 = v68;
    v47(v68, v43, v70);
    v50 = v71;
    *v71 = 0;
    *(v50 + 8) = v44;
    v50[2] = v48;
    *(v50 + 24) = v64;
    v50[4] = v65;
    *(v50 + 40) = v67;
    v51 = v72;
    v50[6] = v73;
    v50[7] = v51;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CC0, &qword_1C12B1030);
    v47(v50 + *(v52 + 48), v49, v45);
    v53 = *(v46 + 8);
    v53(v43, v45);
    v53(v49, v45);
    v54 = v75;
    sub_1C0FB4D1C();
    v55 = v54;
    v56 = 0;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v55, v56, 1, v80);
    v57 = v74;
    v58 = v76;
    sub_1C10AF3D4();
    v59 = v79;
    sub_1C10AF3D4();
    v61 = v77;
    v60 = v78;
    v83[0] = v78;
    v83[1] = v77;
    memcpy(&v83[2], __dst, 0x80uLL);
    v62 = v81;
    memcpy(v81, v83, 0x90uLL);
    v62[18] = 0;
    *(v62 + 152) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CB0, &unk_1C12B1020);
    sub_1C10AF3D4();
    sub_1C10AF3D4();
    sub_1C10AF3D4();
    sub_1C0F9E27C(v54, &qword_1EBE92C98);
    sub_1C0F9E27C(v57, &qword_1EBE92CA0);
    sub_1C0F9E27C(v59, &qword_1EBE92C98);
    sub_1C0F9E27C(v58, &qword_1EBE92CA0);
    v84[0] = v60;
    v84[1] = v61;
    memcpy(&v84[2], __dst, 0x80uLL);
    return sub_1C0F9E27C(v84, &qword_1EBE90CE0);
  }

  __break(1u);
  return result;
}

void sub_1C10ACC00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v23 = sub_1C1265170();
  sub_1C12659A0();
  sub_1C1262C80();
  v8 = v32;
  v9 = v33;
  v10 = v34;
  v11 = v35;
  v19 = v37;
  v20 = v36;
  v31 = v33;
  v30 = v35;
  v29 = 0;
  v12 = sub_1C12659A0();
  v21 = v13;
  v22 = v12;
  sub_1C10AE428(a1, a2, &v24);
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  sub_1C100DCB0(v24, v25, v26, v27, v28);
  sub_1C100DD20(v14);
  *a4 = v23;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 40) = v20;
  *(a4 + 48) = v19;
  *(a4 + 56) = 0x3FF0000000000000;
  *(a4 + 64) = 0;
  *(a4 + 72) = v14;
  *(a4 + 80) = v15;
  *(a4 + 88) = v16;
  *(a4 + 96) = v17;
  *(a4 + 104) = v18;
  *(a4 + 112) = v22;
  *(a4 + 120) = v21;
}

uint64_t sub_1C10ACD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D10, &qword_1C12A7738);
  OUTLINED_FUNCTION_0();
  v105 = v5;
  v106 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  v104 = v7;
  v112.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D18, &qword_1C12A7740);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34();
  v107.n128_u64[0] = v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CC8, &qword_1C12B1038);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v117 = v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CD0, &qword_1C12B1040);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34();
  v110 = v13;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CD8, &qword_1C12B1048);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v111 = v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v119 = v17;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CE0, &qword_1C12B1050);
  OUTLINED_FUNCTION_0();
  v108 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v101 - v20;
  v22 = sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v121 = &v101 - v29;
  v30 = sub_1C10AB5FC(a1);
  v31 = MEMORY[0x1E697E6C0];
  if ((v30 & 1) == 0)
  {
    sub_1C10AB3F8(v27);
    v32 = sub_1C1263120();
    (*(v24 + 8))(v27, v22);
    if ((v32 & 1) == 0)
    {
      v31 = MEMORY[0x1E697E708];
    }
  }

  v33 = *v31;
  v120 = v24;
  v34 = *(v24 + 104);
  v35 = v121;
  v122 = v22;
  v34(v121, v33, v22);
  (*(*(a1 + 24) + 40))(&v125, *(a1 + 16));
  v118 = a2;
  switch(v125)
  {
    case 1:
      v123[0] = xmmword_1C12A7260;
      LOBYTE(v123[1]) = 0;
      if (qword_1EDE7B058 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    case 2:
      v123[0] = xmmword_1C12B0D50;
      LOBYTE(v123[1]) = 0;
      if (qword_1EDE7B058 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    default:
      sub_1C100A454(a1);
      sub_1C1264510();
      v36 = sub_1C1264870();
      v38 = v37;
      v21 = v39;
      v108 = v34;

      LODWORD(__dst[0]) = sub_1C1263E50();
      v40 = sub_1C1264850();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      sub_1C0FDB8E8(v36, v38, v21 & 1);

      v102 = v42;
      v103 = v40;
      *&__dst[0] = v40;
      *(&__dst[0] + 1) = v42;
      v35 = (v44 & 1);
      LOBYTE(__dst[1]) = v35;
      *(&__dst[1] + 1) = v46;
      v47 = v119;
      v108(v119, *MEMORY[0x1E697E6D0], v122);
      OUTLINED_FUNCTION_1_20();
      sub_1C10AF248(v48, v49, MEMORY[0x1E697E750]);
      if (sub_1C1265DE0())
      {
        OUTLINED_FUNCTION_20_1();
        v52 = sub_1C10239B0(v50, &qword_1EBE92FE0, &qword_1C12A7730, v51);
        v53 = v47;
        v54 = v104;
        v55 = v113;
        sub_1C1264BC0();
        sub_1C0F9E27C(v53, &qword_1EBE92FE0);
        sub_1C0FDB8E8(v103, v102, v35);

        *&__dst[0] = MEMORY[0x1E6981148];
        *(&__dst[0] + 1) = v55;
        *&__dst[1] = MEMORY[0x1E6981138];
        *(&__dst[1] + 1) = v52;
        v56 = v52;
        swift_getOpaqueTypeConformance2();
        v57 = v106;
        v58 = v107.n128_u64[0];
        sub_1C1264DF0();
        (*(v105 + 8))(v54, v57);
        sub_1C10AF3D4();
        swift_storeEnumTagMultiPayload();
        sub_1C100D8A4();
        v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CE8, &qword_1C12B1058);
        v60 = sub_1C10AF290();
        *&__dst[0] = v59;
        *(&__dst[0] + 1) = v55;
        *&__dst[1] = v60;
        *(&__dst[1] + 1) = v56;
        swift_getOpaqueTypeConformance2();
        v61 = v111;
        sub_1C1263C20();
        sub_1C10AF3D4();
        swift_storeEnumTagMultiPayload();
        sub_1C10AF430();
        sub_1C1263C20();
        sub_1C0F9E27C(v61, &qword_1EBE92CD8);
        sub_1C0F9E27C(v58, &qword_1EBE90D18);
        return (*(v120 + 8))(v121, v122);
      }

      __break(1u);
LABEL_15:
      OUTLINED_FUNCTION_3_25(&qword_1EDE7B058);
LABEL_8:
      OUTLINED_FUNCTION_10_16(&qword_1EDE7B060);
      v62 = OUTLINED_FUNCTION_15_17();
      OUTLINED_FUNCTION_8_20(v62, v63);
      v107 = __dst[0];
      v64 = sub_1C1265230();
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_6_19(KeyPath, v107);
      OUTLINED_FUNCTION_1_20();
      v68 = sub_1C10AF248(v66, v67, MEMORY[0x1E697E750]);
      if (OUTLINED_FUNCTION_11_14(v68))
      {
        v69 = v21;
        (*(v120 + 16))(v119, v35, v64);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CE8, &qword_1C12B1058);
        sub_1C10AF290();
        OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_13_14();
        sub_1C10239B0(v71, v72, v73, v74);
        v103 = v21;
        v75 = v70;
        v76 = v113;
        sub_1C1264BC0();
        OUTLINED_FUNCTION_13_14();
        sub_1C0F9E27C(v77, v78);
        memcpy(__dst, v123, 0x58uLL);
        sub_1C0F9E27C(__dst, &qword_1EBE92CE8);
        v79 = v108;
        v80 = v114;
        (*(v108 + 2))(v110, v69, v114);
        swift_storeEnumTagMultiPayload();
        sub_1C100D8A4();
        *&v123[0] = v75;
        *(&v123[0] + 1) = v76;
        OUTLINED_FUNCTION_4_26();
        v81 = v111;
        sub_1C1263C20();
        sub_1C10AF3D4();
        swift_storeEnumTagMultiPayload();
        sub_1C10AF430();
        sub_1C1263C20();
        sub_1C0F9E27C(v81, &qword_1EBE92CD8);
        (*(v79 + 1))(v103, v80);
        return (*(v120 + 8))(v121, v122);
      }

      __break(1u);
LABEL_17:
      OUTLINED_FUNCTION_3_25(&qword_1EDE7B058);
LABEL_12:
      OUTLINED_FUNCTION_10_16(&qword_1EDE7B060);
      v83 = OUTLINED_FUNCTION_15_17();
      OUTLINED_FUNCTION_8_20(v83, v84);
      v112 = __dst[0];
      v85 = sub_1C1265230();
      v86 = swift_getKeyPath();
      OUTLINED_FUNCTION_6_19(v86, v112);
      OUTLINED_FUNCTION_1_20();
      v89 = sub_1C10AF248(v87, v88, MEMORY[0x1E697E750]);
      result = OUTLINED_FUNCTION_11_14(v89);
      v90 = v120;
      if (result)
      {
        (*(v120 + 16))(v119, v35, v85);
        v112.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CE8, &qword_1C12B1058);
        sub_1C10AF290();
        OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_13_14();
        sub_1C10239B0(v91, v92, v93, v94);
        v95 = v21;
        v96 = v113;
        sub_1C1264BC0();
        OUTLINED_FUNCTION_13_14();
        sub_1C0F9E27C(v97, v98);
        memcpy(__dst, v123, 0x58uLL);
        sub_1C0F9E27C(__dst, &qword_1EBE92CE8);
        v99 = v108;
        v100 = v114;
        (*(v108 + 2))(v117, v95, v114);
        swift_storeEnumTagMultiPayload();
        sub_1C10AF430();
        *&v123[0] = v112.n128_u64[0];
        *(&v123[0] + 1) = v96;
        OUTLINED_FUNCTION_4_26();
        sub_1C1263C20();
        (*(v99 + 1))(v95, v100);
        return (*(v90 + 8))(v121, v122);
      }

      else
      {
        __break(1u);
      }

      return result;
  }
}

double sub_1C10AD90C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB0, &qword_1C12A76A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v14 = type metadata accessor for PhotosListCell(0, a1, a2, v13);
  v15 = sub_1C100A3D4(v14);
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v23 = xmmword_1C12A7270;
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  sub_1C1265090();
  v19 = *(v7 + 16);
  v19(v9, v12, v6);
  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = 0;
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 2;
  *(a3 + 48) = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB8, &qword_1C12B0FE0);
  v19((a3 + *(v20 + 48)), v9, v6);
  sub_1C0FDB850(v15, v17, 0);
  v21 = *(v7 + 8);

  v21(v12, v6);
  v21(v9, v6);
  sub_1C0FDB8E8(v15, v17, 0);

  return result;
}

uint64_t sub_1C10ADB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1C12657D0();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C38, qword_1C12A74D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CA0, &unk_1C12B1008);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v49 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  MEMORY[0x1EEE9AC00](v58);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D10, &qword_1C12A7738);
  v60 = *(v19 - 8);
  v61 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  v24 = sub_1C12659A0();
  v65 = v25;
  v66 = v24;
  sub_1C10AE2C8(a1, a2, a3, v70);
  memcpy(v76, v70, sizeof(v76));
  memcpy(v77, v70, sizeof(v77));
  sub_1C10AF3D4();
  sub_1C0F9E27C(v77, &qword_1EBE90CD0);
  memcpy(__dst, v76, sizeof(__dst));
  v27 = type metadata accessor for PhotosListCell(0, a2, a3, v26);
  v70[0] = sub_1C100A3D4(v27);
  v70[1] = v28;
  LOBYTE(v70[2]) = 0;
  v70[3] = MEMORY[0x1E69E7CC0];
  v29 = *MEMORY[0x1E697E6D0];
  v30 = sub_1C1263130();
  (*(*(v30 - 8) + 104))(v18, v29, v30);
  sub_1C10AF248(&qword_1EDE7BF90, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C1265DE0();
  if (result)
  {
    v57 = a4;
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    v63 = v23;
    sub_1C1264BC0();
    sub_1C0F9E27C(v18, &qword_1EBE92FE0);

    sub_1C10ACD48(v27, v64);
    sub_1C10AB6A0(v12);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92CA8, &qword_1C12B1018);
    if (__swift_getEnumTagSinglePayload(v12, 1, v32) == 1)
    {
      sub_1C0F9E27C(v12, &qword_1EBE90C38);
    }

    else
    {
      v33 = v54;
      MEMORY[0x1C68EEF20](v32);
      sub_1C0F9E27C(v12, &qword_1EBE92CA8);
      v34 = sub_1C12657C0();
      (*(v55 + 8))(v33, v56);
      if (v34)
      {
        sub_1C12659A0();
        sub_1C1262C80();
        LODWORD(v58) = 0;
        v55 = v72;
        v56 = v70[19];
        v53 = v75;
        v54 = v74;
        LOBYTE(v69[0]) = 1;
        v68 = v71;
        v67 = v73;
        v52 = 1;
        v51 = v71;
        v50 = v73;
        LOBYTE(v70[0]) = 0;
LABEL_7:
        v36 = v59;
        v35 = v60;
        v37 = *(v60 + 16);
        v38 = v61;
        v37(v59, v63, v61);
        v39 = v62;
        sub_1C10AF3D4();
        v69[0] = v66;
        v69[1] = v65;
        memcpy(&v69[2], __dst, 0x80uLL);
        v40 = v57;
        memcpy(v57, v69, 0x90uLL);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE92D00, &qword_1C12B10A8);
        v37(&v40[v41[12]], v36, v38);
        v42 = &v40[v41[16]];
        *v42 = 0;
        v42[8] = 1;
        sub_1C10AF3D4();
        v43 = &v40[v41[24]];
        v44 = v52;
        *v43 = 0;
        *(v43 + 1) = v44;
        v45 = v51;
        *(v43 + 2) = v56;
        *(v43 + 3) = v45;
        v46 = v50;
        *(v43 + 4) = v55;
        *(v43 + 5) = v46;
        v47 = v53;
        *(v43 + 6) = v54;
        *(v43 + 7) = v47;
        v43[64] = v58;
        sub_1C10AF3D4();
        sub_1C0F9E27C(v64, &qword_1EBE92CA0);
        v48 = *(v35 + 8);
        v48(v63, v38);
        sub_1C0F9E27C(v39, &qword_1EBE92CA0);
        v48(v36, v38);
        v70[0] = v66;
        v70[1] = v65;
        memcpy(&v70[2], __dst, 0x80uLL);
        return sub_1C0F9E27C(v70, &qword_1EBE90CE0);
      }
    }

    v51 = 0;
    v52 = 0;
    v55 = 0;
    v56 = 0;
    v50 = 0;
    v53 = 0;
    v54 = 0;
    LODWORD(v58) = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1C10AE2C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = sub_1C1265170();
  type metadata accessor for PhotosListCell(0, a2, a3, v8);
  sub_1C10AB678();
  sub_1C10AB678();
  sub_1C12659A0();
  sub_1C1262C80();
  v9 = v33;
  v10 = v34;
  v11 = v35;
  v12 = v36;
  v20 = v38;
  v21 = v37;
  v32 = v34;
  v31 = v36;
  v30 = 0;
  v13 = sub_1C12659A0();
  v22 = v14;
  v23 = v13;
  sub_1C10AE428(a1, a2, &v25);
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  sub_1C100DCB0(v25, v26, v27, v28, v29);
  sub_1C100DD20(v15);
  *a4 = v24;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  *(a4 + 40) = v21;
  *(a4 + 48) = v20;
  *(a4 + 56) = 0x3FF0000000000000;
  *(a4 + 64) = 0;
  *(a4 + 72) = v15;
  *(a4 + 80) = v16;
  *(a4 + 88) = v17;
  *(a4 + 96) = v18;
  *(a4 + 104) = v19;
  *(a4 + 112) = v23;
  *(a4 + 120) = v22;
}

uint64_t sub_1C10AE428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = OUTLINED_FUNCTION_41(a1, a2);
  v6 = v5(v4);
  if (v7)
  {
    v17 = v6;
    v18 = v7;
    v19 = 1;
    if (qword_1EDE7B058 != -1)
    {
      OUTLINED_FUNCTION_3_25(&qword_1EDE7B058);
    }

    v13 = qword_1EDE7B060;
    v14 = dword_1EDE7B068;
    v15 = BYTE2(dword_1EDE7B068);
    v16 = 1;
    PhotosPrefetchableImage(_:font:)(&v17, &v13, &v20);
    sub_1C100DC0C(v17, v18);
    v12 = v20;
    v8 = v21;
    v9 = sub_1C12651F0();
    result = swift_getKeyPath();
    v11 = v12;
  }

  else
  {
    v8 = 0;
    result = 0;
    v9 = 0;
    v11 = 0uLL;
  }

  *a3 = v11;
  *(a3 + 16) = v8;
  *(a3 + 24) = result;
  *(a3 + 32) = v9;
  return result;
}

double sub_1C10AE52C()
{
  if (qword_1EDE7B890 != -1)
  {
    swift_once();
  }

  qword_1EDE77910 = qword_1EDE7B898;

  return result;
}

double photosListCellBackgroundColor.getter()
{
  if (qword_1EDE77908 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1C10AE630(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C107032C();
    if (v2 <= 0x3F)
    {
      sub_1C100D364(319);
      if (v3 <= 0x3F)
      {
        sub_1C100D3BC(319);
        if (v4 <= 0x3F)
        {
          sub_1C100D46C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C10AE710(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v3 = *(v32 - 8);
  v4 = *(v3 + 84);
  v5 = *(sub_1C1263130() - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  v6 = *(v31 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1C12657D0() - 8);
  v9 = *(v8 + 80);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 64);
  if (v4 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v4;
  }

  if (v11 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v11;
  }

  if (*(v5 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v5 + 64);
  }

  v14 = *(v3 + 64);
  v15 = *(v6 + 80);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v5 + 80) & 0xF8 | 7;
  v17 = v13 + v15 + 1;
  v18 = a1;
  if (a2 <= v12)
  {
    goto LABEL_33;
  }

  v19 = v10 + ((((((*(v6 + 64) + ((v17 + ((v16 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & (v9 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 1;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_15;
  }

  v23 = ((a2 - v12 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v23))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_33;
      }

LABEL_15:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_33;
      }

LABEL_23:
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

        switch(v25)
        {
          case 2:
            v26 = *a1;
            break;
          case 3:
            v26 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v26 = *a1;
            break;
          default:
            v26 = *a1;
            break;
        }
      }

      else
      {
        v26 = 0;
      }

      return v12 + (v26 | v24) + 1;
    }

    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_23;
    }
  }

LABEL_33:
  if (v4 == v12)
  {
    v27 = v4;
    v28 = v32;
  }

  else
  {
    v29 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v11 <= 0xFE)
    {
      v30 = *(v29 + 208);
      if (v30 > 1)
      {
        return (v30 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v18 = ((v17 + ((v29 + v16 + 209) & ~v16)) & ~v15);
    v27 = v7;
    v28 = v31;
  }

  return __swift_getEnumTagSinglePayload(v18, v27, v28);
}

void sub_1C10AEAB8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v36 = *(a4 + 16);
  v4 = *(v36 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1C1263130() - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  v7 = *(v35 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_1C12657D0() - 8);
  v10 = *(v9 + 80);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 64);
  if (v5 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v5;
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (*(v6 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v6 + 64);
  }

  v15 = *(v4 + 64);
  v16 = *(v6 + 80) & 0xF8 | 7;
  v17 = *(v7 + 80);
  v18 = v14 + v17 + 1;
  v19 = (((((*(v7 + 64) + ((v18 + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & (v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v20 = v11 + v19 + 1;
  v21 = 8 * v20;
  if (a3 <= v13)
  {
    v24 = 0;
    v22 = a1;
    v23 = a2;
  }

  else
  {
    v22 = a1;
    v23 = a2;
    if (v20 <= 3)
    {
      v28 = ((a3 - v13 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v28))
      {
        v24 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v24 = v29;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 1;
    }
  }

  if (v13 >= v23)
  {
    v27 = ~v17;
    switch(v24)
    {
      case 1:
        v22[v20] = 0;
        if (v23)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *&v22[v20] = 0;
        if (v23)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *&v22[v20] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!v23)
        {
          return;
        }

LABEL_35:
        if (v5 == v13)
        {
          v31 = v22;
          v32 = v5;
          v33 = v36;
        }

        else
        {
          v34 = &v22[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (v12 <= 0xFE)
          {
            if (v23 > 0xFE)
            {
              *(v34 + 200) = 0;
              *(v34 + 184) = 0u;
              *(v34 + 168) = 0u;
              *(v34 + 152) = 0u;
              *(v34 + 136) = 0u;
              *(v34 + 120) = 0u;
              *(v34 + 104) = 0u;
              *(v34 + 88) = 0u;
              *(v34 + 72) = 0u;
              *(v34 + 56) = 0u;
              *(v34 + 40) = 0u;
              *(v34 + 24) = 0u;
              *(v34 + 8) = 0u;
              *(v34 + 208) = 0;
              *v34 = (v23 - 255);
            }

            else
            {
              *(v34 + 208) = -v23;
            }

            return;
          }

          v31 = (v18 + ((v34 + v16 + 209) & ~v16)) & v27;
          v32 = v8;
          v33 = v35;
        }

        __swift_storeEnumTagSinglePayload(v31, v23, v32, v33);
        break;
    }
  }

  else
  {
    v25 = ~v13 + v23;
    if (v20 < 4)
    {
      v26 = (v25 >> v21) + 1;
      if (v20)
      {
        v30 = v25 & ~(-1 << v21);
        bzero(v22, v20);
        if (v20 == 3)
        {
          *v22 = v30;
          v22[2] = BYTE2(v30);
        }

        else if (v20 == 2)
        {
          *v22 = v30;
        }

        else
        {
          *v22 = v25;
        }
      }
    }

    else
    {
      bzero(v22, v20);
      *v22 = v25;
      v26 = 1;
    }

    switch(v24)
    {
      case 1:
        v22[v20] = v26;
        break;
      case 2:
        *&v22[v20] = v26;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&v22[v20] = v26;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C10AEF30()
{
  result = qword_1EBE92BF8;
  if (!qword_1EBE92BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92BF0, &qword_1C12B0E10);
    sub_1C10239B0(&qword_1EBE92BE8, &qword_1EBE92BE0, &qword_1C12B0E08, MEMORY[0x1E6981880]);
    sub_1C10239B0(&unk_1EDE7BB80, &qword_1EBE90C08, &unk_1C12B0EB0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92BF8);
  }

  return result;
}

unint64_t sub_1C10AF014()
{
  result = qword_1EBE92C28;
  if (!qword_1EBE92C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92C10, &qword_1C12B0ED0);
    sub_1C10239B0(&qword_1EBE92C30, &unk_1EBE92C38, &unk_1C12B0EE8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92C28);
  }

  return result;
}

unint64_t sub_1C10AF0CC()
{
  result = qword_1EBE92C40;
  if (!qword_1EBE92C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92C00, &qword_1C12B0EC0);
    sub_1C10239B0(&qword_1EBE92C48, &unk_1EBE92C50, &unk_1C12B0EF0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92C40);
  }

  return result;
}

unint64_t sub_1C10AF184()
{
  result = qword_1EBE92CB8;
  if (!qword_1EBE92CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92CB8);
  }

  return result;
}

uint64_t sub_1C10AF1D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C38, qword_1C12A74D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10AF248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C10AF290()
{
  result = qword_1EDE7BD28;
  if (!qword_1EDE7BD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CE8, &qword_1C12B1058);
    sub_1C10AF348();
    sub_1C10239B0(&qword_1EDE7B910, &qword_1EBE93670, &qword_1C12A7770, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD28);
  }

  return result;
}

unint64_t sub_1C10AF348()
{
  result = qword_1EDE7BD78;
  if (!qword_1EDE7BD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CF0, &unk_1C12B1060);
    sub_1C1062140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD78);
  }

  return result;
}

uint64_t sub_1C10AF3D4()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_3();
  (*(v4 + 16))(v0, v1);
  return v0;
}

unint64_t sub_1C10AF430()
{
  result = qword_1EBE92CF8;
  if (!qword_1EBE92CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CD8, &qword_1C12B1048);
    sub_1C100D8A4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92CE8, &qword_1C12B1058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    sub_1C10AF290();
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92CF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_14(uint64_t a1)
{

  return sub_1C1265DE0();
}

void *PhotosMapCell.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  result = memcpy(a3 + 2, __src, 0xD1uLL);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C10AF5E8@<X0>(void *a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v14, (v1 + 16), 0xD1uLL);
  memcpy(v15, (v1 + 16), 0xD1uLL);
  if (sub_1C100D688(v15) == 1)
  {
    nullsub_1();
    memcpy(v12, v14, sizeof(v12));
    nullsub_1();
    memcpy(a1, v7, 0xD0uLL);
    memcpy(v13, v14, sizeof(v13));
    nullsub_1();
    return sub_1C100D690(v8, v11);
  }

  else
  {
    nullsub_1();
    memcpy(v12, v14, sizeof(v12));
    nullsub_1();
    memcpy(v13, v14, sizeof(v13));
    nullsub_1();

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C10AFFB4(v14);
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PhotosMapCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v4 = *(a1 + 16);
  *&v69 = a1;
  OUTLINED_FUNCTION_1();
  v63 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  v65 = v4;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v8 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v62 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v55 - v11;
  v12 = *(a1 + 24);
  OUTLINED_FUNCTION_0_0();
  v15 = sub_1C0FDB6D4(v13, &unk_1EBE92EC0, &qword_1C12A8E00, v14);
  v57 = v12;
  v85 = v12;
  v86 = v15;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v19 = sub_1C0FDB6D4(v17, &qword_1EBE91C40, &unk_1C12A7010, v18);
  v83 = WitnessTable;
  v84 = v19;
  v20 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v23 = sub_1C0FDB6D4(v21, &unk_1EBE92ED0, &unk_1C12A8E80, v22);
  v81 = v20;
  v82 = v23;
  v24 = swift_getWitnessTable();
  v64 = v8;
  v56 = v24;
  v26 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v8, v24, v25);
  OUTLINED_FUNCTION_1();
  v59 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v55 - v29;
  v31 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v60 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v58 = &v55 - v38;
  v39 = *v2;
  v40 = v2[1];
  (*v2)(v37);
  v78 = v39;
  v79 = v40;
  v66 = v2;
  memcpy(v80, v2 + 2, sizeof(v80));
  sub_1C10AF5E8(v87);
  memcpy(v77, v88, sizeof(v77));
  sub_1C100D690(v87, v90);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDE82B08;
  v42 = qword_1EDE82B10;
  v55 = xmmword_1EDE82B18;
  v43 = qword_1EDE82B28;

  sub_1C100C7D0(v87);

  *&v90[0] = v41;
  *(&v90[0] + 1) = v42;
  v90[1] = v55;
  *&v90[2] = v43;
  memcpy(&v90[2] + 8, v77, 0xA8uLL);
  v44 = v61;
  v45 = v65;
  v46 = v68;
  View.cellStyle(for:)(v90, v57, v61);
  memcpy(v89, v90, sizeof(v89));
  sub_1C100C7D0(v89);
  (*(v63 + 8))(v46, v45);
  v76 = 2;
  v75 = 2;
  v78 = v39;
  v79 = v40;
  memcpy(v80, v66 + 2, sizeof(v80));
  sub_1C10AF5E8(v90);
  v47 = v90[0];
  v69 = v90[1];
  v48 = *&v90[2];

  sub_1C100C7D0(v90);
  v72 = v47;
  v73 = v69;
  v74 = v48;
  v49 = v64;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v76, 0, 0, v64, v56, v30);

  (*(v62 + 8))(v44, v49);
  OUTLINED_FUNCTION_4_3();
  v50 = swift_getWitnessTable();
  OUTLINED_FUNCTION_15_6();
  sub_1C1264E50();
  (*(v59 + 8))(v30, v26);
  v51 = sub_1C1025E04();
  v70 = v50;
  v71 = v51;
  swift_getWitnessTable();
  v52 = v58;
  sub_1C0FDBA4C();
  v53 = *(v60 + 8);
  v53(v35, v31);
  sub_1C0FDBA4C();
  return (v53)(v52, v31);
}

uint64_t sub_1C10AFEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10AFEE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 225))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C10AFF20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
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

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10AFFB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C80, &qword_1C12A75B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C10B001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10B0060(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C10B00A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10B0158@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v121 = a3;
  v7 = a1[3];
  v151 = a1[2];
  v6 = v151;
  v152 = &type metadata for OneUpToolbarSpacer;
  v153 = v7;
  v154 = &type metadata for OneUpToolbarSpacer;
  v155 = a1[4];
  v8 = v155;
  OUTLINED_FUNCTION_9_17(a1, a2, &v151);
  v9 = sub_1C1265B00();
  OUTLINED_FUNCTION_1();
  v115 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v96 - v12;
  OUTLINED_FUNCTION_1();
  v112 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v113 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v116 = v18;
  OUTLINED_FUNCTION_1();
  v111 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  v110 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v123 = v24;
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_30();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14_0();
  v122 = v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92990, &qword_1C12B1390);
  v127 = v6;
  v128 = v7;
  v124 = v8;
  swift_getTupleTypeMetadata3();
  v33 = sub_1C1265B00();
  OUTLINED_FUNCTION_5_20(&qword_1EBE92E08);
  v118 = v33;
  sub_1C1262E70();
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_30();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14_0();
  v109 = v38;
  v126 = v39;
  v120 = v9;
  v119 = sub_1C1263C30();
  OUTLINED_FUNCTION_1();
  v117 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v125 = &v96 - v42;
  v43 = *v3;
  v44 = sub_1C1264450();
  if (v44 == sub_1C1264450())
  {
    v45 = v4;
    v46 = sub_1C10B0C80();
    v47 = sub_1C10B11AC();
    v49 = a1[5];
    v48 = a1[6];
    v50 = a1[7];
    if (v47)
    {
      v51 = 65537;
    }

    else
    {
      v51 = 1;
    }

    v95 = a1[7];
    v123 = v35;
    v53 = v127;
    v52 = v128;
    v54 = v124;
    v55 = sub_1C10B0AF0(v51, 0, 1, v127, v128, v124, v49, v48, v46, v95);
    v57 = v56;
    v122 = &v96;
    v58 = MEMORY[0x1EEE9AC00](v55);
    *(&v96 - 8) = v53;
    *(&v96 - 7) = v52;
    *(&v96 - 6) = v54;
    *(&v96 - 5) = v49;
    *(&v96 - 4) = v48;
    *(&v96 - 3) = v50;
    v95 = v45;
    v59(sub_1C10B1C10, v58);

    OUTLINED_FUNCTION_1_21(&qword_1EDE7C018);
    OUTLINED_FUNCTION_2_23();
    WitnessTable = swift_getWitnessTable();
    v129 = v57;
    v130 = WitnessTable;
    OUTLINED_FUNCTION_12_0();
    v61 = v126;
    v62 = swift_getWitnessTable();
    v63 = v109;
    OUTLINED_FUNCTION_7_20();
    sub_1C0FDBA4C();
    v64 = *(v123 + 8);
    v65 = OUTLINED_FUNCTION_7_20();
    v64(v65);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_7_20();
    sub_1C1112D68();
    v66 = OUTLINED_FUNCTION_7_20();
    v64(v66);
    (v64)(v63, v61);
  }

  else
  {
    v4[1]();
    v101 = a1[5];
    v98 = v43;
    v67 = v30;
    v104 = v30;
    v68 = v127;
    sub_1C0FDBA4C();
    v69 = v26;
    v70 = *(v26 + 8);
    v102 = v26 + 8;
    v103 = v70;
    v70(v67, v68);
    KeyPath = swift_getKeyPath();
    v71 = v110;
    v4[3]();
    v100 = a1[6];
    v72 = v128;
    sub_1C0FDBA4C();
    v73 = v111;
    v74 = *(v111 + 8);
    v108 = v111 + 8;
    v109 = v74;
    v74(v71, v72);
    v105 = swift_getKeyPath();
    v75 = v113;
    v4[5]();
    v97 = a1[7];
    v76 = v116;
    v77 = v124;
    sub_1C0FDBA4C();
    v78 = v112;
    v79 = *(v112 + 8);
    v99 = v112 + 8;
    v107 = v79;
    v79(v75, v77);
    v80 = v104;
    (*(v69 + 16))(v104, v122, v68);
    LOBYTE(v68) = v98;
    v147 = v98;
    v148 = 0x4044000000000000;
    v149 = KeyPath;
    v150 = 0;
    v151 = v80;
    v152 = &v147;
    v81 = v128;
    (*(v73 + 16))(v71, v123, v128);
    v143 = v68;
    v144 = 0x4044000000000000;
    v145 = v105;
    v146 = 0;
    v153 = v71;
    v154 = &v143;
    v82 = v76;
    v83 = v124;
    (*(v78 + 16))(v75, v82, v124);
    v155 = v75;

    v84 = v127;
    v142[0] = v127;
    v142[1] = &type metadata for OneUpToolbarSpacer;
    v142[2] = v81;
    v142[3] = &type metadata for OneUpToolbarSpacer;
    v142[4] = v83;
    v137 = v101;
    v138 = sub_1C10B1B6C();
    v139 = v100;
    v140 = v138;
    v141 = v97;
    v85 = v114;
    sub_1C119EE80(&v151, 5, v142);
    v107(v75, v83);

    v109(v71, v81);

    v86 = v103;
    v103(v104, v84);
    OUTLINED_FUNCTION_1_21(&qword_1EDE7C018);
    OUTLINED_FUNCTION_2_23();
    v87 = swift_getWitnessTable();
    v135 = v84;
    v136 = v87;
    OUTLINED_FUNCTION_12_0();
    v62 = swift_getWitnessTable();
    v88 = v120;
    swift_getWitnessTable();
    sub_1C1112E18();

    (*(v115 + 8))(v85, v88);
    v107(v116, v124);
    v109(v123, v128);
    v86(v122, v127);
  }

  OUTLINED_FUNCTION_1_21(&qword_1EDE7C018);
  OUTLINED_FUNCTION_2_23();
  v89 = swift_getWitnessTable();
  v133 = v62;
  v134 = v89;
  OUTLINED_FUNCTION_12_0();
  v90 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v131 = v90;
  v132 = v91;
  OUTLINED_FUNCTION_19_0();
  v92 = v119;
  swift_getWitnessTable();
  v93 = v125;
  sub_1C0FDBA4C();
  return (*(v117 + 8))(v93, v92);
}

uint64_t (*sub_1C10B0AF0(int a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a6;
  *(v19 + 40) = a7;
  *(v19 + 48) = a8;
  *(v19 + 56) = a10;
  *(v19 + 64) = a9;
  *(v19 + 72) = a1;
  *(v19 + 73) = BYTE1(a1) & 1;
  *(v19 + 74) = BYTE2(a1) & 1;
  *(v19 + 80) = a2;
  *(v19 + 88) = a3 & 1;
  return sub_1C10B1C24;
}

uint64_t sub_1C10B0BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  swift_getTupleTypeMetadata3();
  v12 = sub_1C1265B00();
  v13 = sub_1C10B1C94();
  WitnessTable = swift_getWitnessTable();
  return sub_1C121710C(a1, a2, &unk_1F407F4A8, v12, v13, WitnessTable, x8_0);
}

double sub_1C10B0C80()
{
  v1 = sub_1C1263EB0();
  v35 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v0 + 64);
  v36 = *(v0 + 56);
  v18 = v37;

  if ((v18 & 1) == 0)
  {
    sub_1C1266420();
    v19 = sub_1C1264410();
    v32 = v14;
    v20 = v1;
    v21 = v13;
    v22 = v3;
    v23 = v19;
    sub_1C1262620();

    v3 = v22;
    v13 = v21;
    v1 = v20;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(&v36, &qword_1EBE92928, &qword_1C12AF570);
    (*(v15 + 8))(v17, v32);
  }

  sub_1C1226AE4();

  v24 = v35;
  (*(v35 + 104))(v10, *MEMORY[0x1E697FF40], v1);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v1);
  v25 = *(v3 + 48);
  sub_1C10B1CE8(v13, v5);
  sub_1C10B1CE8(v10, &v5[v25]);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    sub_1C0F9E21C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0F9E21C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v1) == 1)
    {
      sub_1C0F9E21C(v5, &qword_1EBE902F0, &qword_1C12B38C0);
      return 40.0;
    }

    goto LABEL_8;
  }

  v27 = v34;
  sub_1C10B1CE8(v5, v34);
  if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v1) == 1)
  {
    sub_1C0F9E21C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0F9E21C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v24 + 8))(v27, v1);
LABEL_8:
    sub_1C0F9E21C(v5, &qword_1EBE902E8, &unk_1C12A2E90);
    return 8.0;
  }

  v28 = v33;
  (*(v24 + 32))(v33, &v5[v25], v1);
  sub_1C1097070();
  v29 = sub_1C1265DE0();
  v30 = *(v24 + 8);
  v30(v28, v1);
  sub_1C0F9E21C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0F9E21C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
  v30(v27, v1);
  sub_1C0F9E21C(v5, &qword_1EBE902F0, &qword_1C12B38C0);
  result = 40.0;
  if ((v29 & 1) == 0)
  {
    return 8.0;
  }

  return result;
}

uint64_t sub_1C10B11AC()
{
  v1 = sub_1C1263EB0();
  v35 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v0 + 64);
  v36 = *(v0 + 56);
  v18 = v37;

  if ((v18 & 1) == 0)
  {
    sub_1C1266420();
    v19 = sub_1C1264410();
    v32 = v14;
    v20 = v1;
    v21 = v13;
    v22 = v3;
    v23 = v19;
    sub_1C1262620();

    v3 = v22;
    v13 = v21;
    v1 = v20;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(&v36, &qword_1EBE92928, &qword_1C12AF570);
    (*(v15 + 8))(v17, v32);
  }

  sub_1C1226AE4();

  v24 = v35;
  (*(v35 + 104))(v10, *MEMORY[0x1E697FF40], v1);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v1);
  v25 = *(v3 + 48);
  sub_1C10B1CE8(v13, v5);
  sub_1C10B1CE8(v10, &v5[v25]);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) != 1)
  {
    v27 = v34;
    sub_1C10B1CE8(v5, v34);
    if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v1) != 1)
    {
      v28 = v33;
      (*(v24 + 32))(v33, &v5[v25], v1);
      sub_1C1097070();
      v26 = sub_1C1265DE0();
      v29 = *(v24 + 8);
      v29(v28, v1);
      sub_1C0F9E21C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
      sub_1C0F9E21C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
      v29(v27, v1);
      sub_1C0F9E21C(v5, &qword_1EBE902F0, &qword_1C12B38C0);
      return v26 & 1;
    }

    sub_1C0F9E21C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0F9E21C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v24 + 8))(v27, v1);
    goto LABEL_8;
  }

  sub_1C0F9E21C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0F9E21C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v5[v25], 1, v1) != 1)
  {
LABEL_8:
    sub_1C0F9E21C(v5, &qword_1EBE902E8, &unk_1C12A2E90);
    v26 = 0;
    return v26 & 1;
  }

  sub_1C0F9E21C(v5, &qword_1EBE902F0, &qword_1C12B38C0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1C10B16C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a6;
  v66 = a7;
  v55 = a3;
  v56 = a5;
  v60 = a4;
  v61 = a8;
  v59 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v49 - v13;
  v54 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v49 - v19;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v64 = &v49 - v27;
  (*(v28 + 8))(v26);
  v51 = a2;
  sub_1C0FDBA4C();
  v29 = *(v21 + 8);
  v57 = v21 + 8;
  v58 = v29;
  v30 = v29(v24, a2);
  v31 = *(a1 + 24);
  v62 = v17;
  v31(v30);
  v32 = v55;
  sub_1C0FDBA4C();
  v33 = v54;
  v53 = *(v54 + 8);
  v34 = v53(v17, v32);
  (*(a1 + 40))(v34);
  v35 = v60;
  sub_1C0FDBA4C();
  v36 = v59;
  v52 = *(v59 + 8);
  v52(v11, v35);
  v37 = *(v21 + 16);
  v49 = v24;
  v38 = v51;
  v37(v24, v64, v51);
  v71[0] = v24;
  v39 = *(v33 + 16);
  v40 = v62;
  v41 = v50;
  v42 = v32;
  v39(v62, v50, v32);
  v71[1] = v40;
  v43 = *(v36 + 16);
  v44 = v63;
  v43(v11, v63, v35);
  v71[2] = v11;
  v70[0] = v38;
  v70[1] = v32;
  v70[2] = v35;
  v67 = v56;
  v68 = v65;
  v69 = v66;
  sub_1C119EE80(v71, 3, v70);
  v45 = v52;
  v52(v44, v35);
  v46 = v53;
  v53(v41, v42);
  v47 = v58;
  v58(v64, v38);
  v45(v11, v35);
  v46(v62, v42);
  return v47(v49, v38);
}

unint64_t sub_1C10B1B6C()
{
  result = qword_1EBE92E10;
  if (!qword_1EBE92E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92E10);
  }

  return result;
}