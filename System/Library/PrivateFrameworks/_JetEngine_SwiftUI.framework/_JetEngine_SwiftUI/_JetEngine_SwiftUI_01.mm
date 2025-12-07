uint64_t sub_1B7975E58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t View.impressionable(_:configuration:position:definesParentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v66 = a3;
  v63 = a7;
  v64 = a8;
  v60 = a4;
  v61 = a5;
  v54 = a2;
  v10 = sub_1B7A96C20();
  v59 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = sub_1B7A99670();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v51 - v20;
  v22 = type metadata accessor for ImpressionableViewModifier(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a6;
  v25 = sub_1B7A97590();
  v57 = *(v25 - 8);
  v58 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v55 = &v51 - v26;
  v65 = a1;
  sub_1B7957820(a1, v21, &qword_1EBA45C90, &qword_1B7A9C190);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    v53 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v51 = *(v16 + 32);
    v52 = v18;
    v51(v18, v21, v15);
    sub_1B7A9A760();
    sub_1B7A9A750();
    sub_1B7A9A710();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA8, &unk_1B7AA1E00);
    v27 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B7A9C180;
    v53 = v28;
    v51((v28 + v27), v52, v15);
  }

  v29 = v22[5];
  v30 = sub_1B7A99A20();
  (*(*(v30 - 8) + 16))(&v24[v29], v54, v30);
  v31 = &v24[v22[8]];
  *v31 = swift_getKeyPath();
  *(v31 + 1) = 0;
  *(v31 + 8) = 0;
  v32 = v22[9];
  *&v24[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v33 = &v24[v22[10]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = &v24[v22[11]];
  v69 = 0;
  sub_1B7A986C0();
  v35 = v71;
  *v34 = v70;
  *(v34 + 1) = v35;
  sub_1B7A96C10();
  v36 = v59;
  v37 = *(v59 + 16);
  v38 = v56;
  v37(v56, v14, v10);
  sub_1B7A986C0();
  v39 = *(v36 + 8);
  v39(v14, v10);
  sub_1B7A96C10();
  v37(v38, v14, v10);
  sub_1B7A986C0();
  v39(v14, v10);
  v40 = v22[14];
  *&v24[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  swift_storeEnumTagMultiPayload();
  *v24 = v53;
  v41 = &v24[v22[6]];
  v42 = v66;
  *v41 = v66;
  v43 = v61;
  LOBYTE(v38) = v60 & 1;
  v41[8] = v60 & 1;
  v24[v22[7]] = v43 & 1;
  v44 = v55;
  v45 = v22;
  v46 = v63;
  MEMORY[0x1B8CA96D0](v24, v62, v45, v63);
  sub_1B797C6D4(v24, type metadata accessor for ImpressionableViewModifier);
  v47 = sub_1B797C7FC(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
  v67 = v46;
  v68 = v47;
  v48 = v58;
  WitnessTable = swift_getWitnessTable();
  View.impressionableClickLocation(impressionMetrics:position:)(v65, v42, v38, v48, WitnessTable);
  return (*(v57 + 8))(v44, v48);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t View.impressionableOpaqueContainer(_:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v29[1] = a5;
  v30 = a3;
  v29[0] = a1;
  v6 = sub_1B7A96C20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = type metadata accessor for ImpressionableViewModifier(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 20);
  v18 = sub_1B7A99A20();
  (*(*(v18 - 8) + 16))(&v15[v17], a2, v18);
  v19 = &v15[v13[8]];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  *(v19 + 8) = 0;
  v20 = v13[9];
  *&v15[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v21 = &v15[v13[10]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v15[v13[11]];
  v32 = 0;
  sub_1B7A986C0();
  v23 = v34;
  *v22 = v33;
  *(v22 + 1) = v23;
  sub_1B7A96C10();
  v24 = *(v7 + 16);
  v24(v9, v12, v6);
  sub_1B7A986C0();
  v25 = *(v7 + 8);
  v25(v12, v6);
  sub_1B7A96C10();
  v24(v9, v12, v6);
  sub_1B7A986C0();
  v25(v12, v6);
  v26 = v13[14];
  *&v15[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  swift_storeEnumTagMultiPayload();
  *v15 = v29[0];
  v27 = &v15[v13[6]];
  *v27 = 0;
  v27[8] = 1;
  v15[v13[7]] = 0;

  MEMORY[0x1B8CA96D0](v15, v30, v13, v31);
  return sub_1B797C6D4(v15, type metadata accessor for ImpressionableViewModifier);
}

uint64_t View.impressionable(_:configuration:position:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A370();
  View.impressionable(_:configuration:position:definesParentContext:)(v16, a2, a3, a4 & 1, 0, a5, a6, a7);
  return sub_1B7957888(v16, &qword_1EBA45C90, &qword_1B7A9C190);
}

uint64_t View.impressionable<A>(_:configuration:position:definesParentContext:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v19 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v19 - v16;
  sub_1B7A9A370();
  View.impressionable(_:configuration:position:definesParentContext:)(v17, a1, a2, a3 & 1, a4, a5, v19, a8);
  return sub_1B7957888(v17, &qword_1EBA45C90, &qword_1B7A9C190);
}

uint64_t View.impressionable(_:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A370();
  View.impressionable(_:configuration:position:definesParentContext:)(v12, a2, 0, 1, 0, a3, a4, a5);
  return sub_1B7957888(v12, &qword_1EBA45C90, &qword_1B7A9C190);
}

uint64_t View.impressionable<A>(_:configuration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1B7A9A370();
  View.impressionable(_:configuration:position:definesParentContext:)(v12, a1, 0, 1, 0, a2, a4, a6);
  return sub_1B7957888(v12, &qword_1EBA45C90, &qword_1B7A9C190);
}

uint64_t View.impressionable(_:minimumPercentVisible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1B7A99A20();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1B7A999F0();
  sub_1B7A999D0();
  v16 = *(v10 + 8);
  v16(v12, v9);
  View.impressionable(_:configuration:position:definesParentContext:)(a1, v15, 0, 1, 0, a2, a3, a4);
  return (v16)(v15, v9);
}

double sub_1B7976F94@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B797E898(a2, a3, a4);
  sub_1B7A97890();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_1B7976FEC(uint64_t *a1)
{
  v1 = sub_1B797DEF0(*a1, a1[1]);
  sub_1B797E898(v1, v2, v3);
  return sub_1B7A978A0();
}

uint64_t sub_1B7977088(uint64_t a1)
{
  v2 = sub_1B7A99900();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = *(v3 + 16);
  v10(&v15 - v8, a1, v2, v7);
  v11 = (v10)(v5, v9, v2);
  sub_1B797E844(v11, v12, v13);
  sub_1B7A978A0();
  return (*(v3 + 8))(v9, v2);
}

void *sub_1B79771CC(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B797E7F0(x0_0, a2, a3);

  return sub_1B7A97890();
}

uint64_t sub_1B7977254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1B7957820(a1, &v12 - v6, &qword_1EBA45D18, &qword_1B7A9C320);
  v8 = sub_1B7957820(v7, v4, &qword_1EBA45D18, &qword_1B7A9C320);
  sub_1B797E7F0(v8, v9, v10);
  sub_1B7A978A0();
  return sub_1B7957888(v7, &qword_1EBA45D18, &qword_1B7A9C320);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B797739C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a1;
  v192 = a2;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D20, &qword_1B7A9C490);
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v147 - v3;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D28, &qword_1B7A9C498);
  MEMORY[0x1EEE9AC00](v180);
  v148 = &v147 - v4;
  v163 = sub_1B7A99DB0();
  v183 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v149 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D30, &unk_1B7A9C4A0);
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v147 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38, &unk_1B7AA4740);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v150 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v165 = &v147 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v182 = &v147 - v12;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D40, &qword_1B7A9C4B0);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v147 - v13;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D48, &qword_1B7A9C4B8);
  MEMORY[0x1EEE9AC00](v184);
  v186 = &v147 - v14;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D50, &qword_1B7A9C4C0);
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v147 - v15;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D58, &qword_1B7A9C4C8);
  MEMORY[0x1EEE9AC00](v185);
  v179 = &v147 - v16;
  v157 = sub_1B7A97880();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D60, &qword_1B7A9C4D0);
  MEMORY[0x1EEE9AC00](v174);
  v196 = &v147 - v18;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D68, &qword_1B7A9C4D8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v147 - v19;
  v197 = type metadata accessor for ImpressionableViewModifier(0);
  v171 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v172 = v20;
  v173 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1B7A96C20();
  v169 = *(v170 - 1);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70, &unk_1B7A9C4E0);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v147 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v167 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v147 - v26;
  v195 = sub_1B7A996F0();
  v188 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = v27;
  v194 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v198 = &v147 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D78, &qword_1B7A9D640);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v147 - v32;
  v34 = sub_1B7A99900();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (&v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v151 = (&v147 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v147 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D80, &qword_1B7A9C4F0);
  MEMORY[0x1EEE9AC00](v43);
  v187 = &v147 - v44;
  if (!*(*v2 + 16))
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90, &qword_1B7A9C500);
    (*(*(v55 - 8) + 16))(v191, v189, v55);
    swift_storeEnumTagMultiPayload();
    sub_1B797D494();
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90, &qword_1B7A9C500, MEMORY[0x1E697FDF8]);
    return sub_1B7A97B30();
  }

  v164 = v43;
  sub_1B797C0F4(&qword_1EBA45C98, &unk_1B7AA0460, MEMORY[0x1E69AB2B8], v42);
  sub_1B7A99890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D88, &qword_1B7A9C4F8);
  sub_1B7A99910();
  (*(v31 + 8))(v33, v30);
  v45 = *(v35 + 8);
  v45(v42, v34);
  v46 = v34;
  if (v200)
  {
    v183 = v200;
    v182 = v201;
    v47 = v197;
    v48 = *(v197 + 20);
    v181 = v2;
    v162 = v48;
    v165 = sub_1B7A99A10();
    v163 = v49;
    v50 = *(v47 + 28);
    v51 = v2 + *(v47 + 24);
    v161 = *v51;
    LODWORD(v160) = *(v51 + 8);
    if (*(v2 + v50) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
      v52 = v166;
      sub_1B7A986D0();
      v53 = v169;
      v54 = v170;
      (*(v169 + 56))(v52, 0, 1, v170);
    }

    else
    {
      v69 = v151;
      sub_1B797C0F4(&qword_1EBA45C98, &unk_1B7AA0460, MEMORY[0x1E69AB2B8], v151);
      v70 = v152;
      sub_1B7A998B0();
      v52 = v166;
      v54 = v170;
      sub_1B7A99920();
      (*(v153 + 8))(v70, v154);
      v45(v69, v46);
      v53 = v169;
      if ((*(v169 + 48))(v52, 1, v54) == 1)
      {
        sub_1B7957888(v52, &qword_1EBA45D18, &qword_1B7A9C320);
        v166 = 0;
LABEL_12:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
        v71 = v168;
        sub_1B7A986D0();
        sub_1B7A96C00();
        v72 = *(v53 + 8);
        v72(v71, v54);
        v73 = v167;
        sub_1B797BEF0(&qword_1EBA45CA0, &unk_1B7A9C240, &qword_1EBA45D18, &qword_1B7A9C320, v167);
        if ((*(v53 + 48))(v73, 1, v54) == 1)
        {
          sub_1B7957888(v73, &qword_1EBA45D18, &qword_1B7A9C320);
        }

        else
        {
          sub_1B7A96C00();
          v72(v73, v54);
        }

        v74 = v198;
        sub_1B7A996E0();
        v75 = v181;
        v76 = v173;
        sub_1B797E54C(v181, v173, type metadata accessor for ImpressionableViewModifier);
        v77 = v188;
        v78 = *(v188 + 16);
        v169 = v188 + 16;
        v170 = v78;
        v80 = v194;
        v79 = v195;
        (v78)(v194, v74, v195);
        v81 = *(v171 + 80);
        v82 = (v81 + 16) & ~v81;
        v160 = v82 + v172;
        v165 = v81 | 7;
        v171 = *(v77 + 80);
        v83 = (v82 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
        v172 = v83;
        v84 = (v171 + v83 + 16) & ~v171;
        v166 = v84;
        v85 = swift_allocObject();
        sub_1B797E5B4(v76, v85 + v82, type metadata accessor for ImpressionableViewModifier);
        v86 = (v85 + v83);
        v87 = v182;
        *v86 = v183;
        v86[1] = v87;
        v88 = *(v77 + 32);
        v167 = (v77 + 32);
        v168 = v88;
        v163 = v85;
        (v88)(v85 + v84, v80, v79);
        KeyPath = swift_getKeyPath();
        sub_1B797E54C(v75, v76, type metadata accessor for ImpressionableViewModifier);
        v90 = swift_allocObject();
        sub_1B797E5B4(v76, v90 + v82, type metadata accessor for ImpressionableViewModifier);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90, &qword_1B7A9C500);
        v92 = *(*(v91 - 8) + 16);
        v93 = v196;
        v94 = v189;
        v189 = v91;
        v92(v196, v94);
        v95 = &v93[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DB0, &unk_1B7A9C520) + 36)];
        *v95 = KeyPath;
        v95[1] = sub_1B797D6D8;
        v95[2] = v90;
        v96 = swift_getKeyPath();
        sub_1B797E54C(v75, v76, type metadata accessor for ImpressionableViewModifier);
        v97 = swift_allocObject();
        v98 = v82;
        v161 = v82;
        sub_1B797E5B4(v76, v97 + v82, type metadata accessor for ImpressionableViewModifier);
        v99 = &v93[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DA8, &qword_1B7A9C518) + 36)];
        *v99 = v96;
        v99[1] = sub_1B797D9B4;
        v99[2] = v97;
        v100 = v183;
        swift_unknownObjectRetain();
        sub_1B7A999C0();
        v102 = v101;
        v103 = v75;
        sub_1B797E54C(v75, v76, type metadata accessor for ImpressionableViewModifier);
        v104 = v194;
        (v170)(v194, v198, v79);
        v105 = v166;
        v106 = swift_allocObject();
        sub_1B797E5B4(v76, v106 + v98, type metadata accessor for ImpressionableViewModifier);
        v107 = (v106 + v172);
        v108 = v182;
        *v107 = v100;
        v107[1] = v108;
        (v168)(&v105[v106], v104, v79);
        type metadata accessor for _ImpressionableGeometryChange.VisibleState();
        v109 = swift_allocObject();
        *(v109 + 16) = 2;
        v199 = v109;
        swift_unknownObjectRetain();
        sub_1B7A986C0();
        v110 = v103;
        v112 = v200;
        v111 = v201;
        type metadata accessor for ListContainerGeometry(0);
        sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
        v113 = sub_1B7A970F0();
        LOBYTE(v90) = v114;
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DA0, &qword_1B7A9C510);
        v116 = v196;
        v117 = &v196[*(v115 + 36)];
        *v117 = v102;
        *(v117 + 1) = sub_1B797DDC0;
        *(v117 + 2) = v106;
        v118 = v100;
        *(v117 + 3) = v112;
        *(v117 + 4) = v111;
        *(v117 + 5) = v113;
        v117[48] = v90 & 1;
        sub_1B797E54C(v110, v76, type metadata accessor for ImpressionableViewModifier);
        v119 = v194;
        v120 = v195;
        (v170)(v194, v198, v195);
        v121 = v166;
        v122 = swift_allocObject();
        sub_1B797E5B4(v76, v122 + v161, type metadata accessor for ImpressionableViewModifier);
        v123 = (v122 + v172);
        v124 = v182;
        *v123 = v118;
        v123[1] = v124;
        (v168)(&v121[v122], v119, v120);
        v125 = swift_getKeyPath();
        v126 = &v116[*(v174 + 36)];
        *v126 = sub_1B797DDD8;
        *(v126 + 1) = v122;
        *(v126 + 2) = v125;
        *(v126 + 3) = 0;
        *(v126 + 16) = 0;
        v127 = v110 + *(v197 + 40);
        v128 = *v127;
        if (*(v127 + 8) == 1)
        {
          swift_unknownObjectRetain();
          j__swift_retain(v128);
        }

        else
        {
          swift_unknownObjectRetain();
          j__swift_retain(v128);
          sub_1B7A9AA10();
          v129 = sub_1B7A97E70();
          sub_1B7A96D30();

          v130 = v155;
          sub_1B7A97870();
          swift_getAtKeyPath();
          j__swift_release(v128);
          (*(v156 + 8))(v130, v157);
          v128 = v200;
        }

        v68 = v191;
        v67 = v187;
        if (v128)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
        }

        else
        {
          Strong = 0;
        }

        v132 = v175;
        v133 = v196;
        sub_1B797A258(Strong, sub_1B797D5F0, v163, v175);

        sub_1B7957888(v133, &qword_1EBA45D60, &qword_1B7A9C4D0);
        sub_1B7957820(v132, v178, &qword_1EBA45D68, &qword_1B7A9C4D8);
        swift_storeEnumTagMultiPayload();
        sub_1B797CFA0();
        sub_1B797EC34(&qword_1EDC0F640, &qword_1EBA45D28, &qword_1B7A9C498, &protocol conformance descriptor for _RequirementFailureView<A, B>);
        v134 = v179;
        sub_1B7A97B30();
        sub_1B7957820(v134, v186, &qword_1EBA45D58, &qword_1B7A9C4C8);
        swift_storeEnumTagMultiPayload();
        sub_1B797CEE8();
        sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90, &qword_1B7A9C500, MEMORY[0x1E697FDF8]);
        sub_1B7A97B30();
        swift_unknownObjectRelease();

        sub_1B7957888(v134, &qword_1EBA45D58, &qword_1B7A9C4C8);
        sub_1B7957888(v132, &qword_1EBA45D68, &qword_1B7A9C4D8);
        (*(v188 + 8))(v198, v195);
        goto LABEL_28;
      }
    }

    v166 = sub_1B7A96C00();
    (*(v53 + 8))(v52, v54);
    goto LABEL_12;
  }

  sub_1B797C0F4(&qword_1EBA45C98, &unk_1B7AA0460, MEMORY[0x1E69AB2B8], v37);
  v57 = v158;
  sub_1B7A99880();
  v58 = v182;
  v59 = v163;
  sub_1B7A99920();
  (*(v159 + 8))(v57, v160);
  v45(v37, v46);
  v60 = v183;
  v61 = v165;
  (*(v183 + 104))(v165, *MEMORY[0x1E69AB4F8], v59);
  (*(v60 + 56))(v61, 0, 1, v59);
  v62 = *(v161 + 48);
  v63 = v162;
  sub_1B7957820(v58, v162, &qword_1EBA45D38, &unk_1B7AA4740);
  sub_1B7957820(v61, v63 + v62, &qword_1EBA45D38, &unk_1B7AA4740);
  v64 = *(v60 + 48);
  if (v64(v63, 1, v59) != 1)
  {
    v135 = v150;
    sub_1B7957820(v63, v150, &qword_1EBA45D38, &unk_1B7AA4740);
    v136 = v64(v63 + v62, 1, v59);
    v67 = v187;
    if (v136 != 1)
    {
      v137 = v183;
      v138 = v63 + v62;
      v139 = v149;
      (*(v183 + 32))(v149, v138, v59);
      sub_1B797C7FC(&qword_1EBA45DD0, MEMORY[0x1E69AB508], MEMORY[0x1E69AB510]);
      LODWORD(v198) = sub_1B7A9A470();
      v140 = *(v137 + 8);
      v140(v139, v59);
      sub_1B7957888(v165, &qword_1EBA45D38, &unk_1B7AA4740);
      sub_1B7957888(v182, &qword_1EBA45D38, &unk_1B7AA4740);
      v140(v135, v59);
      sub_1B7957888(v63, &qword_1EBA45D38, &unk_1B7AA4740);
      v66 = v189;
      v68 = v191;
      if ((v198 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    sub_1B7957888(v165, &qword_1EBA45D38, &unk_1B7AA4740);
    sub_1B7957888(v182, &qword_1EBA45D38, &unk_1B7AA4740);
    (*(v183 + 8))(v135, v59);
    v66 = v189;
    v68 = v191;
LABEL_24:
    sub_1B7957888(v63, &qword_1EBA45D30, &unk_1B7A9C4A0);
    goto LABEL_27;
  }

  sub_1B7957888(v61, &qword_1EBA45D38, &unk_1B7AA4740);
  sub_1B7957888(v58, &qword_1EBA45D38, &unk_1B7AA4740);
  v65 = v64(v63 + v62, 1, v59);
  v66 = v189;
  v67 = v187;
  v68 = v191;
  if (v65 != 1)
  {
    goto LABEL_24;
  }

  sub_1B7957888(v63, &qword_1EBA45D38, &unk_1B7AA4740);
LABEL_26:
  sub_1B797D54C();
  if ((sub_1B7A9AB10() & 1) == 0)
  {
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90, &qword_1B7A9C500);
    v143 = v148;
    (*(*(v142 - 8) + 16))(v148, v66, v142);
    v144 = swift_allocObject();
    *(v144 + 16) = 0xD00000000000002CLL;
    *(v144 + 24) = 0x80000001B7AC4DB0;
    v145 = (v143 + *(v180 + 52));
    *v145 = sub_1B797D598;
    v145[1] = v144;
    sub_1B7957820(v143, v178, &qword_1EBA45D28, &qword_1B7A9C498);
    swift_storeEnumTagMultiPayload();
    sub_1B797CFA0();
    sub_1B797EC34(&qword_1EDC0F640, &qword_1EBA45D28, &qword_1B7A9C498, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    v146 = v179;
    sub_1B7A97B30();
    sub_1B7957820(v146, v186, &qword_1EBA45D58, &qword_1B7A9C4C8);
    swift_storeEnumTagMultiPayload();
    sub_1B797CEE8();
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90, &qword_1B7A9C500, MEMORY[0x1E697FDF8]);
    v67 = v187;
    sub_1B7A97B30();
    sub_1B7957888(v146, &qword_1EBA45D58, &qword_1B7A9C4C8);
    sub_1B7957888(v143, &qword_1EBA45D28, &qword_1B7A9C498);
    goto LABEL_28;
  }

LABEL_27:
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90, &qword_1B7A9C500);
  (*(*(v141 - 8) + 16))(v186, v66, v141);
  swift_storeEnumTagMultiPayload();
  sub_1B797CEE8();
  sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90, &qword_1B7A9C500, MEMORY[0x1E697FDF8]);
  sub_1B7A97B30();
LABEL_28:
  sub_1B7957820(v67, v68, &qword_1EBA45D80, &qword_1B7A9C4F0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90, &qword_1B7A9C500);
  sub_1B797D494();
  sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90, &qword_1B7A9C500, MEMORY[0x1E697FDF8]);
  sub_1B7A97B30();
  return sub_1B7957888(v67, &qword_1EBA45D80, &qword_1B7A9C4F0);
}

uint64_t sub_1B79791AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v41 = a4;
  v42 = a3;
  v7 = sub_1B7A96BF0();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A99670();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B7A97040();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x1E697BE30])
  {
    v20 = (a2 + *(type metadata accessor for ImpressionableViewModifier(0) + 44));
    v22 = *(v20 + 1);
    v44 = *v20;
    v21 = v44;
    v45 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0, &unk_1B7A9C580);
    sub_1B7A986D0();
    v23 = v43;
    v44 = v21;
    v45 = v22;
    sub_1B7A986D0();
    v44 = v21;
    v45 = v22;
    v43 = v43 & 0x100 | v23 & 1 | 0x8000;
    return sub_1B7A986E0();
  }

  else
  {
    v37 = a2;
    if (v19 == *MEMORY[0x1E697BE38])
    {
      v25 = v37 + *(type metadata accessor for ImpressionableViewModifier(0) + 44);
      v26 = *v25;
      v27 = *(v25 + 8);
      v44 = *v25;
      v45 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0, &unk_1B7A9C580);
      result = sub_1B7A986D0();
      v39 = v7;
      if (v43 < 0)
      {
        v28 = v43;
        v44 = v26;
        v45 = v27;
        v43 &= 0x101u;
        result = sub_1B7A986E0();
        if ((v28 & 0x100) != 0)
        {
          v29 = *v37;
          v30 = *(*v37 + 16);
          if (v30)
          {
            ObjectType = swift_getObjectType();
            v36 = *(v11 + 16);
            v37 = ObjectType;
            v32 = v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
            v33 = *(v11 + 72);
            v34 = (v11 + 8);
            v35 = (v38 + 8);
            do
            {
              v36(v13, v32, v10);
              sub_1B7A96BE0();
              sub_1B7A99700();
              (*v34)(v13, v10);
              result = (*v35)(v9, v39);
              v32 += v33;
              --v30;
            }

            while (v30);
          }
        }
      }
    }

    else
    {
      return (*(v15 + 8))(v18, v14);
    }
  }

  return result;
}

uint64_t sub_1B79795A8(uint64_t a1)
{
  sub_1B7957888(a1, &qword_1EBA45D18, &qword_1B7A9C320);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ImpressionableViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
  sub_1B7A986D0();
  v2 = sub_1B7A96C20();
  (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_1B79796CC(uint64_t a1, uint64_t a2)
{
  v12[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70, &unk_1B7A9C4E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = sub_1B7A96C20();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + *(type metadata accessor for ImpressionableViewModifier(0) + 28)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
    sub_1B7A986D0();
    sub_1B7A998B0();
    sub_1B7A998E0();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
  }
}

uint64_t sub_1B7979930(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a4;
  v70 = a3;
  v8 = sub_1B7A96BF0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7A99670();
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v62 - v16;
  v17 = sub_1B7A97880();
  v68 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ImpressionableViewModifier(0);
  if (a1)
  {
    v62 = v9;
    v63 = v12;
    v21 = a5;
    v67 = v20;
    v22 = a2 + *(v20 + 32);
    v23 = *(v22 + 1);
    v24 = v22[16];
    if (v22[17] == 1)
    {
      v25 = *v22;
      v26 = v22[16];
      sub_1B797DEF0(*v22, v23);
    }

    else
    {
      v40 = *v22;

      LODWORD(ObjectType) = sub_1B7A9AA10();
      v41 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B797D5A0(v40, v23, v24, 0);
      (*(v68 + 8))(v19, v17);
      v25 = v71;
      v23 = v72;
      v26 = v73;
    }

    v42 = v66;
    v43 = v8;
    v44 = v63;
    if (v23 && (v71 = v25, v72 = v23, v73 = v26 & 1, v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8, &qword_1B7AA0470), MEMORY[0x1B8CA9A40](&v74, v45), v46 = v74, , , (v46 & 1) == 0))
    {
      v59 = a2 + *(v67 + 44);
      v60 = *v59;
      v61 = *(v59 + 1);
      LOWORD(v71) = v60;
      v72 = v61;
      LOWORD(v74) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0, &unk_1B7A9C580);
      return sub_1B7A986E0();
    }

    else
    {
      v47 = a2 + *(v67 + 44);
      v48 = *v47;
      v49 = *(v47 + 1);
      LOWORD(v71) = v48;
      v72 = v49;
      LOWORD(v74) = 257;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0, &unk_1B7A9C580);
      sub_1B7A986E0();
      v50 = *a2;
      v67 = v43;
      v68 = v21;
      v51 = *(v50 + 16);
      result = v70;
      v52 = v64;
      if (v51)
      {
        ObjectType = swift_getObjectType();
        v55 = *(v52 + 16);
        v53 = v52 + 16;
        v54 = v55;
        v56 = v50 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
        v57 = *(v53 + 56);
        v58 = (v62 + 8);
        do
        {
          v54(v42, v56, v44);
          sub_1B7A96BE0();
          sub_1B7A99700();
          v42 = v66;
          (*(v53 - 8))(v66, v44);
          result = (*v58)(v11, v67);
          v56 += v57;
          --v51;
        }

        while (v51);
      }
    }
  }

  else
  {
    v27 = v9;
    v28 = a2 + *(v20 + 44);
    v29 = *v28;
    v30 = *(v28 + 1);
    LOWORD(v71) = v29;
    v72 = v30;
    LOWORD(v74) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0, &unk_1B7A9C580);
    sub_1B7A986E0();
    v31 = *a2;
    v67 = v8;
    v68 = a5;
    v32 = *(v31 + 16);
    result = v70;
    v34 = v64;
    if (v32)
    {
      v35 = swift_getObjectType();
      v37 = *(v34 + 16);
      v36 = v34 + 16;
      ObjectType = v37;
      v66 = v35;
      v38 = v31 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
      v39 = *(v36 + 56);
      do
      {
        ObjectType(v14, v38, v12);
        sub_1B7A96BE0();
        sub_1B7A99710();
        (*(v36 - 8))(v14, v12);
        result = (*(v27 + 8))(v11, v67);
        v38 += v39;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

uint64_t sub_1B7979EAC(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v36[1] = a3;
  v7 = sub_1B7A96BF0();
  v36[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A99670();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  v17 = a2 + *(type metadata accessor for ImpressionableViewModifier(0) + 44);
  v18 = *v17;
  v19 = *(v17 + 1);
  v39 = v7;
  if (a1)
  {
    v43 = v18;
    v44 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0, &unk_1B7A9C580);
    result = sub_1B7A986D0();
    if (v42 & 0x80000000) == 0 && (v42 & 0x100) == 0 && (v42)
    {
      v43 = v18;
      v44 = v19;
      v42 = 257;
      result = sub_1B7A986E0();
      v21 = *a2;
      v22 = *(v21 + 16);
      if (v22)
      {
        ObjectType = swift_getObjectType();
        v37 = *(v11 + 16);
        v38 = ObjectType;
        v24 = v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v25 = *(v11 + 72);
        v26 = (v11 + 8);
        v27 = (v36[0] + 8);
        do
        {
          v37(v16, v24, v10);
          sub_1B7A96BE0();
          sub_1B7A99700();
          (*v26)(v16, v10);
          result = (*v27)(v9, v39);
          v24 += v25;
          --v22;
        }

        while (v22);
      }
    }
  }

  else
  {
    v43 = v18;
    v44 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0, &unk_1B7A9C580);
    sub_1B7A986D0();
    v43 = v18;
    v44 = v19;
    v42 &= 1u;
    result = sub_1B7A986E0();
    v28 = *a2;
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v10;
      v31 = swift_getObjectType();
      v32 = v11 + 16;
      v37 = *(v11 + 16);
      v38 = v31;
      v33 = v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v34 = *(v11 + 72);
      v35 = (v36[0] + 8);
      do
      {
        v37(v13, v33, v30);
        sub_1B7A96BE0();
        sub_1B7A99710();
        (*(v32 - 8))(v13, v30);
        result = (*v35)(v9, v39);
        v33 += v34;
        --v29;
      }

      while (v29);
    }
  }

  return result;
}

uint64_t sub_1B797A258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v26[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DC8, &qword_1B7A9C538);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE0, &qword_1B7A9C540);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D98, &qword_1B7A9C508);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  if (a1)
  {
    sub_1B7957820(v5, v26 - v16, &qword_1EBA45D60, &qword_1B7A9C4D0);
    v18 = &v17[*(v15 + 36)];
    *v18 = a2;
    *(v18 + 1) = a3;
    *(v18 + 2) = a1;
    sub_1B7957820(v17, v14, &qword_1EBA45D98, &qword_1B7A9C508);
    swift_storeEnumTagMultiPayload();
    sub_1B797D058();
    sub_1B797E12C(&qword_1EDC0EBC8, &qword_1EBA45DC8, &qword_1B7A9C538, sub_1B797D0E4);
    v19 = a1;

    sub_1B7A97B30();
    v20 = v17;
    v21 = &qword_1EBA45D98;
    v22 = &qword_1B7A9C508;
  }

  else
  {
    v23 = &v11[*(v9 + 36)];
    v24 = *(type metadata accessor for _OnScenePhaseChange(0) + 20);
    *&v23[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
    swift_storeEnumTagMultiPayload();
    *v23 = a2;
    *(v23 + 1) = a3;
    sub_1B7957820(v5, v11, &qword_1EBA45D60, &qword_1B7A9C4D0);
    sub_1B7957820(v11, v14, &qword_1EBA45DC8, &qword_1B7A9C538);
    swift_storeEnumTagMultiPayload();
    sub_1B797D058();
    sub_1B797E12C(&qword_1EDC0EBC8, &qword_1EBA45DC8, &qword_1B7A9C538, sub_1B797D0E4);

    sub_1B7A97B30();
    v20 = v11;
    v21 = &qword_1EBA45DC8;
    v22 = &qword_1B7A9C538;
  }

  return sub_1B7957888(v20, v21, v22);
}

uint64_t sub_1B797A588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v26[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E70, &unk_1B7AA2240);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E78, &qword_1B7A9C5E0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E80, &qword_1B7A9C5E8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  if (a1)
  {
    sub_1B7957820(v5, v26 - v16, &qword_1EBA45E88, &unk_1B7A9C5F0);
    v18 = &v17[*(v15 + 36)];
    *v18 = a2;
    *(v18 + 1) = a3;
    *(v18 + 2) = a1;
    sub_1B7957820(v17, v14, &qword_1EBA45E80, &qword_1B7A9C5E8);
    swift_storeEnumTagMultiPayload();
    sub_1B797E1E0();
    sub_1B797E12C(&qword_1EDC0EBB8, &qword_1EBA45E70, &unk_1B7AA2240, sub_1B797E26C);
    v19 = a1;

    sub_1B7A97B30();
    v20 = v17;
    v21 = &qword_1EBA45E80;
    v22 = &qword_1B7A9C5E8;
  }

  else
  {
    v23 = &v11[*(v9 + 36)];
    v24 = *(type metadata accessor for _OnScenePhaseChange(0) + 20);
    *&v23[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
    swift_storeEnumTagMultiPayload();
    *v23 = a2;
    *(v23 + 1) = a3;
    sub_1B7957820(v5, v11, &qword_1EBA45E88, &unk_1B7A9C5F0);
    sub_1B7957820(v11, v14, &qword_1EBA45E70, &unk_1B7AA2240);
    swift_storeEnumTagMultiPayload();
    sub_1B797E1E0();
    sub_1B797E12C(&qword_1EDC0EBB8, &qword_1EBA45E70, &unk_1B7AA2240, sub_1B797E26C);

    sub_1B7A97B30();
    v20 = v11;
    v21 = &qword_1EBA45E70;
    v22 = &unk_1B7AA2240;
  }

  return sub_1B7957888(v20, v21, v22);
}

uint64_t sub_1B797A8B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v26[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E10, &qword_1B7A9C5A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E18, &qword_1B7A9C5A8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E20, &qword_1B7A9C5B0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  if (a1)
  {
    sub_1B7957820(v5, v26 - v16, &qword_1EBA45E28, &qword_1B7A9C5B8);
    v18 = &v17[*(v15 + 36)];
    *v18 = a2;
    *(v18 + 1) = a3;
    *(v18 + 2) = a1;
    sub_1B7957820(v17, v14, &qword_1EBA45E20, &qword_1B7A9C5B0);
    swift_storeEnumTagMultiPayload();
    sub_1B797DF30();
    sub_1B797E12C(&qword_1EBA45E68, &qword_1EBA45E10, &qword_1B7A9C5A0, sub_1B797DFBC);
    v19 = a1;

    sub_1B7A97B30();
    v20 = v17;
    v21 = &qword_1EBA45E20;
    v22 = &qword_1B7A9C5B0;
  }

  else
  {
    v23 = &v11[*(v9 + 36)];
    v24 = *(type metadata accessor for _OnScenePhaseChange(0) + 20);
    *&v23[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
    swift_storeEnumTagMultiPayload();
    *v23 = a2;
    *(v23 + 1) = a3;
    sub_1B7957820(v5, v11, &qword_1EBA45E28, &qword_1B7A9C5B8);
    sub_1B7957820(v11, v14, &qword_1EBA45E10, &qword_1B7A9C5A0);
    swift_storeEnumTagMultiPayload();
    sub_1B797DF30();
    sub_1B797E12C(&qword_1EBA45E68, &qword_1EBA45E10, &qword_1B7A9C5A0, sub_1B797DFBC);

    sub_1B7A97B30();
    v20 = v11;
    v21 = &qword_1EBA45E10;
    v22 = &qword_1B7A9C5A0;
  }

  return sub_1B7957888(v20, v21, v22);
}

double sub_1B797ABFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v31[0] = a1;
  v3 = sub_1B7A97540();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A97BE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A97310();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, *&v31[0], v11, v13);
  sub_1B7A972E0();
  v17 = v16;
  v19 = v18;
  sub_1B7A97CB0();
  sub_1B7A97300();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E697E668], v3);
  sub_1B7A972D0();
  v30 = *(&v31[2] + 8);
  v31[0] = *(&v31[1] + 8);
  (*(v4 + 8))(v6, v3);
  (*(v12 + 8))(v15, v11);
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  v29 = v30;
  result = *v31;
  *(a2 + 48) = v31[0];
  *(a2 + 64) = v29;
  return result;
}

uint64_t sub_1B797AEBC(double *a1, uint64_t a2)
{
  v4 = sub_1B7A97880();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v32 = a1[1];
  v33 = v8;
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[8];
  v30 = a1[9];
  v31 = v13;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = *(a2 + 48);
  v14 = *(a2 + 40);
  v36 = v14;
  v15 = v37;

  if ((v15 & 1) == 0)
  {
    sub_1B7A9AA10();
    v16 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v36, &qword_1EBA45F40, &qword_1B7A9C770);
    (*(v5 + 8))(v7, v4);
    v14 = v35;
  }

  if (v14)
  {
    swift_getKeyPath();
    *&v35 = v14;
    sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
    sub_1B7A96CB0();

    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v20 = *(v14 + 40);
    v21 = *(v14 + 48);

    v23 = v30;
    v22 = v31;
    if ((v21 & 1) == 0)
    {
      v38.origin.x = v17;
      v38.origin.y = v18;
      v38.size.width = v19;
      v38.size.height = v20;
      v39.origin.x = v9;
      v39.origin.y = v10;
      v39.size.width = v11;
      v39.size.height = v12;
      *(&v22 - 2) = CGRectIntersection(v38, v39);
    }
  }

  else
  {
    v23 = v30;
    v22 = v31;
  }

  if (v22 / v33 >= v23 / v32)
  {
    v24 = v23 / v32;
  }

  else
  {
    v24 = v22 / v33;
  }

  v25 = *a2;
  v26 = *a2 < v24;
  v35 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F48, &qword_1B7A9C778);
  sub_1B7A986D0();
  v27 = *(v34 + 16);

  if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    v35 = *(a2 + 24);
    sub_1B7A986D0();
    *(v34 + 16) = v25 < v24;

    (*(a2 + 8))(v25 < v24);
  }
}

uint64_t sub_1B797B21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 40);
  v15 = *(v2 + 32);
  v8 = v15;
  v16 = v7;
  v17 = *(v2 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = *v2;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v10 = *(v2 + 40);
  *(v9 + 48) = v8;
  *(v9 + 56) = v10;
  *(v9 + 64) = *(v2 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F28, &qword_1B7A9C758);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F30, &qword_1B7A9C760) + 36));
  *v12 = sub_1B797ABFC;
  v12[1] = 0;
  v12[2] = sub_1B797EA94;
  v12[3] = v9;

  sub_1B7957820(&v15, v14, &qword_1EBA45F38, &qword_1B7A9C768);
  return sub_1B7957820(&v16, v14, &qword_1EBA45F40, &qword_1B7A9C770);
}

uint64_t sub_1B797B37C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B7A96C20();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1B797B3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B797EA9C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

__n128 sub_1B797B44C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
  sub_1B7A96CB0();

  v3 = *(v1 + 48);
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_1B797B4FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
  sub_1B7A96CB0();

  v4 = *(v3 + 48);
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1B797B5AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1B797B5EC(v3);
}

uint64_t sub_1B797B5EC(uint64_t result)
{
  v2 = result;
  if ((*(v1 + 48) & 1) == 0)
  {
    if (*(result + 32))
    {
      goto LABEL_7;
    }

    result = CGRectEqualToRect(*(v1 + 16), *result);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v3 = *(v2 + 16);
    *(v1 + 16) = *v2;
    *(v1 + 32) = v3;
    *(v1 + 48) = *(v2 + 32);
    return result;
  }

  if (*(result + 32))
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
  sub_1B7A96CA0();
}

uint64_t sub_1B797B730()
{
  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI21ListContainerGeometry___observationRegistrar;
  v2 = sub_1B7A96CF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B797B7CC@<X0>(double *a1@<X8>)
{
  v2 = sub_1B7A97BE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A97CB0();
  sub_1B7A97300();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_1B797B8D8(CGFloat *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CD0, &unk_1B7A9C2A0);
  sub_1B7A97000();
  v5 = v8;
  *&v9 = v1;
  *(&v9 + 1) = v2;
  *&v10 = v3;
  *(&v10 + 1) = v4;
  if ((*(v5 + 48) & 1) != 0 || (v11.origin.x = v1, v11.origin.y = v2, v11.size.width = v3, v11.size.height = v4, !CGRectEqualToRect(*(v5 + 16), v11)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
    sub_1B7A96CA0();
  }

  else
  {
    *(v5 + 16) = v9;
    *(v5 + 32) = v10;
    *(v5 + 48) = 0;
  }
}

uint64_t sub_1B797BAE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EC0, &qword_1B7A9C628);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1B797E54C(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListContainerGeometryModifier);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1B797E5B4(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ListContainerGeometryModifier);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45ED8, &qword_1B7A9C640);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 36)];
  *v12 = sub_1B797B7CC;
  v12[1] = 0;
  v12[2] = sub_1B797E61C;
  v12[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CD0, &unk_1B7A9C2A0);
  sub_1B7A97000();
  type metadata accessor for ListContainerGeometry(0);
  sub_1B797E68C();
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
  sub_1B7A98140();

  return sub_1B7957888(v8, &qword_1EBA45EC0, &qword_1B7A9C628);
}

uint64_t List.impressionListContainer()(uint64_t a1)
{
  v2 = type metadata accessor for ListContainerGeometryModifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListContainerGeometry(0);
  sub_1B7A96FF0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v4, a1, v2, WitnessTable);
  return sub_1B797C6D4(v4, type metadata accessor for ListContainerGeometryModifier);
}

uint64_t sub_1B797BEF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = v5;
  v21 = a5;
  v11 = sub_1B7A97880();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  sub_1B7957820(v10, &v20 - v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1B797E788(v17, v21, a3, a4);
  }

  sub_1B7A9AA10();
  v19 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1B797C0F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_1B7A97880();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1B7957820(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1B7A9AA10();
    v19 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1B797C31C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B7A97880();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B7957820(v2, v11, &qword_1EBA45E08, &unk_1B7AA71C0);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_1B7A9AA10();
    v10 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B797C4E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, void *)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_1B7A97880();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7957820(v8, v16, a1, a2);
  if (v17 == 1)
  {
    return a3(v16, a4);
  }

  sub_1B7A9AA10();
  v15 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B797C658@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ListContainerGeometry(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  result = sub_1B7A96CE0();
  *a1 = v2;
  return result;
}

uint64_t sub_1B797C6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B797C760(uint64_t a1)
{
  result = sub_1B7A96CF0();
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

uint64_t sub_1B797C7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B797C86C(uint64_t a1)
{
  sub_1B797CD54(319, &qword_1EBA45CE8, type metadata accessor for ListContainerGeometry, MEMORY[0x1E697DA80]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for ImpressionableViewModifier.ViewState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFF)
  {
    goto LABEL_17;
  }

  if (a2 + 49153 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49153 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49153;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49153;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49153;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFE | (*a1 >> 15) | (*a1 >> 1) & 0x3F00) ^ 0x3FFF;
  if (v6 >= 0x3FFE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for ImpressionableViewModifier.ViewState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49153 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49153 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFE)
  {
    v6 = ((a2 - 0x3FFF) >> 16) + 1;
    *result = a2 - 0x3FFF;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

void sub_1B797CB00(uint64_t a1)
{
  sub_1B797CD54(319, &qword_1EDC0FC78, MEMORY[0x1E69AB1E8], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B7A99A20();
    if (v2 <= 0x3F)
    {
      sub_1B797CE00(319, &qword_1EDC0FC70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B797CE50(319, &qword_1EDC10140, &qword_1EBA45D08, &unk_1B7A9C310);
        if (v4 <= 0x3F)
        {
          sub_1B797CD54(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1B797CE50(319, &qword_1EDC10A78, &qword_1EBA45D10, &unk_1B7AA0B40);
            if (v6 <= 0x3F)
            {
              sub_1B797CE00(319, &qword_1EDC0FCB8, &type metadata for ImpressionableViewModifier.ViewState, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1B797CD54(319, &qword_1EDC10128, MEMORY[0x1E69695A8], MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  sub_1B797CE50(319, &qword_1EDC10150, &qword_1EBA45D18, &qword_1B7A9C320);
                  if (v9 <= 0x3F)
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

void sub_1B797CD54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1B797CE00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B797CE50(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1B7A970E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1B797CEE8()
{
  result = qword_1EDC0EB98;
  if (!qword_1EDC0EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D58, &qword_1B7A9C4C8);
    sub_1B797CFA0();
    sub_1B797EC34(&qword_1EDC0F640, &qword_1EBA45D28, &qword_1B7A9C498, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB98);
  }

  return result;
}

unint64_t sub_1B797CFA0()
{
  result = qword_1EDC0EBA8;
  if (!qword_1EDC0EBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D68, &qword_1B7A9C4D8);
    sub_1B797D058();
    sub_1B797E12C(&qword_1EDC0EBC8, &qword_1EBA45DC8, &qword_1B7A9C538, sub_1B797D0E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBA8);
  }

  return result;
}

unint64_t sub_1B797D058()
{
  result = qword_1EDC0EBC0;
  if (!qword_1EDC0EBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D98, &qword_1B7A9C508);
    v3 = sub_1B797D0E4();
    sub_1B797D440(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBC0);
  }

  return result;
}

unint64_t sub_1B797D0E4()
{
  result = qword_1EDC0EBD8;
  if (!qword_1EDC0EBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D60, &qword_1B7A9C4D0);
    v3 = sub_1B797D170();
    sub_1B797D3EC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBD8);
  }

  return result;
}

unint64_t sub_1B797D170()
{
  result = qword_1EDC0EBE8;
  if (!qword_1EDC0EBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DA0, &qword_1B7A9C510);
    v3 = sub_1B797D1FC();
    sub_1B797D398(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBE8);
  }

  return result;
}

unint64_t sub_1B797D1FC()
{
  result = qword_1EDC0EBF8;
  if (!qword_1EDC0EBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DA8, &qword_1B7A9C518);
    sub_1B797D2B4();
    sub_1B797EC34(&qword_1EDC0FCC0, &qword_1EBA45DC0, &qword_1B7A9C530, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBF8);
  }

  return result;
}

unint64_t sub_1B797D2B4()
{
  result = qword_1EDC0EC10;
  if (!qword_1EDC0EC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DB0, &unk_1B7A9C520);
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90, &qword_1B7A9C500, MEMORY[0x1E697FDF8]);
    sub_1B797EC34(&qword_1EDC0EB28, &qword_1EBA45DB8, &qword_1B7AA8FA0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EC10);
  }

  return result;
}

unint64_t sub_1B797D398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC0EE90;
  if (!qword_1EDC0EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EE90);
  }

  return result;
}

unint64_t sub_1B797D3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC100C8;
  if (!qword_1EDC100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC100C8);
  }

  return result;
}

unint64_t sub_1B797D440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC108E0[0];
  if (!qword_1EDC108E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC108E0);
  }

  return result;
}

unint64_t sub_1B797D494()
{
  result = qword_1EDC0EB88;
  if (!qword_1EDC0EB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D80, &qword_1B7A9C4F0);
    sub_1B797CEE8();
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90, &qword_1B7A9C500, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB88);
  }

  return result;
}

unint64_t sub_1B797D54C()
{
  result = qword_1EDC108A0;
  if (!qword_1EDC108A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC108A0);
  }

  return result;
}

uint64_t sub_1B797D5A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1B797D5AC(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1B797D5AC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1B797D5F0(uint64_t a1)
{
  v3 = *(type metadata accessor for ImpressionableViewModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1B7A996F0() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1B79791AC(a1, v1 + v4, v7, v8, v9);
}

uint64_t objectdestroy_56Tm()
{
  v1 = type metadata accessor for ImpressionableViewModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_1B7A99A20();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  sub_1B797D5A0(*(v2 + v1[8]), *(v2 + v1[8] + 8), *(v2 + v1[8] + 16), *(v2 + v1[8] + 17));
  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A99900();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  j__swift_release(*(v2 + v1[10]));

  v7 = v2 + v1[12];
  v8 = sub_1B7A96C20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);

  v10(v2 + v1[13], v8);

  v11 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!(*(v9 + 48))(v2 + v11, 1, v8))
    {
      v10(v2 + v11, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B797D9CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ImpressionableViewModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for ImpressionableViewModifier(0);
  v17 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v18 = sub_1B7A996F0();
  v2 = *(v18 - 8);
  v14 = *(v2 + 80);
  v16 = (v17 + 16) & ~v17;
  v3 = v0 + v16;

  v4 = v1[5];
  v5 = sub_1B7A99A20();
  (*(*(v5 - 8) + 8))(v0 + v16 + v4, v5);
  sub_1B797D5A0(*(v3 + v1[8]), *(v3 + v1[8] + 8), *(v3 + v1[8] + 16), *(v3 + v1[8] + 17));
  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1B7A99900();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  j__swift_release(*(v3 + v1[10]));

  v8 = v3 + v1[12];
  v9 = sub_1B7A96C20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);

  v11(v3 + v1[13], v9);

  v12 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!(*(v10 + 48))(v3 + v12, 1, v9))
    {
      v11(v3 + v12, v9);
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + ((((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14), v18);

  return swift_deallocObject();
}

uint64_t sub_1B797DDF0(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ImpressionableViewModifier(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1B7A996F0() - 8);
  v8 = *(v2 + v6);
  v9 = *(v2 + v6 + 8);
  v10 = v2 + ((v6 + *(v7 + 80) + 16) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8, v9, v10);
}

uint64_t sub_1B797DEF0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_1B797DF30()
{
  result = qword_1EBA45E30;
  if (!qword_1EBA45E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E20, &qword_1B7A9C5B0);
    v3 = sub_1B797DFBC();
    sub_1B797D440(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45E30);
  }

  return result;
}

unint64_t sub_1B797DFBC()
{
  result = qword_1EBA45E38;
  if (!qword_1EBA45E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E28, &qword_1B7A9C5B8);
    v3 = sub_1B797E048();
    sub_1B797D3EC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45E38);
  }

  return result;
}

unint64_t sub_1B797E048()
{
  result = qword_1EBA45E40;
  if (!qword_1EBA45E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E48, &unk_1B7A9C5C0);
    sub_1B797EC34(&qword_1EBA45E50, &qword_1EBA45E58, &unk_1B7AA2F60, MEMORY[0x1E697FDF8]);
    sub_1B797EC34(&qword_1EDC0EB48, &qword_1EBA45E60, &unk_1B7A9C5D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45E40);
  }

  return result;
}

uint64_t sub_1B797E12C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1B797C7FC(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange, &unk_1B7AA0978);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B797E1E0()
{
  result = qword_1EDC0EBB0;
  if (!qword_1EDC0EBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E80, &qword_1B7A9C5E8);
    v3 = sub_1B797E26C();
    sub_1B797D440(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBB0);
  }

  return result;
}

unint64_t sub_1B797E26C()
{
  result = qword_1EDC0EBD0;
  if (!qword_1EDC0EBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E88, &unk_1B7A9C5F0);
    v3 = sub_1B797E2F8();
    sub_1B797D3EC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBD0);
  }

  return result;
}

unint64_t sub_1B797E2F8()
{
  result = qword_1EDC0EBE0;
  if (!qword_1EDC0EBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E90, &unk_1B7AA2220);
    sub_1B797E3B0();
    sub_1B797EC34(&qword_1EDC0FCE8, &qword_1EBA45EB8, &qword_1B7A9C620, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBE0);
  }

  return result;
}

unint64_t sub_1B797E3B0()
{
  result = qword_1EDC0EBF0;
  if (!qword_1EDC0EBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E98, &unk_1B7A9C600);
    sub_1B797E468();
    sub_1B797EC34(&qword_1EDC0FCC0, &qword_1EBA45DC0, &qword_1B7A9C530, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBF0);
  }

  return result;
}

unint64_t sub_1B797E468()
{
  result = qword_1EDC0EC08;
  if (!qword_1EDC0EC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EA0, &unk_1B7AA2230);
    sub_1B797EC34(&qword_1EDC0EB60, &qword_1EBA45EA8, &unk_1B7A9C610, MEMORY[0x1E697FDF8]);
    sub_1B797EC34(&qword_1EDC0FCD0, &qword_1EBA45EB0, &qword_1B7A9EF00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EC08);
  }

  return result;
}

uint64_t sub_1B797E54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B797E5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B797E61C(CGFloat *a1)
{
  type metadata accessor for ListContainerGeometryModifier(0);

  return sub_1B797B8D8(a1);
}

unint64_t sub_1B797E68C()
{
  result = qword_1EBA45EE0;
  if (!qword_1EBA45EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EC0, &qword_1B7A9C628);
    sub_1B797EC34(&qword_1EBA45EE8, &qword_1EBA45ED8, &qword_1B7A9C640, MEMORY[0x1E697FDF8]);
    sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8, &qword_1B7A9C648, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45EE0);
  }

  return result;
}

__n128 sub_1B797E770()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 48) = *(v2 + 32);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_1B797E788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1B797E7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC0FD98;
  if (!qword_1EDC0FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD98);
  }

  return result;
}

unint64_t sub_1B797E844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10088;
  if (!qword_1EDC10088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10088);
  }

  return result;
}

unint64_t sub_1B797E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10080;
  if (!qword_1EDC10080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10080);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B797E918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1B797E960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B797E9C0()
{
  result = qword_1EDC0EB78;
  if (!qword_1EDC0EB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F20, &qword_1B7A9C6C8);
    sub_1B797D494();
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90, &qword_1B7A9C500, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB78);
  }

  return result;
}

unint64_t sub_1B797EA9C()
{
  result = qword_1EDC100D0;
  if (!qword_1EDC100D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D18, &qword_1B7A9C320);
    sub_1B797C7FC(&qword_1EDC100D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC100D0);
  }

  return result;
}

unint64_t sub_1B797EB50()
{
  result = qword_1EDC0EC00;
  if (!qword_1EDC0EC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F30, &qword_1B7A9C760);
    sub_1B797EC34(&qword_1EDC0EB58, &qword_1EBA45F28, &qword_1B7A9C758, MEMORY[0x1E697FDF8]);
    sub_1B797EC34(&qword_1EDC0FCE8, &qword_1EBA45EB8, &qword_1B7A9C620, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EC00);
  }

  return result;
}

uint64_t sub_1B797EC34(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t ShelfPage.init(_:spacing:configuration:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for ShelfPage(0, a7, a8, a10);
  v18 = (a9 + v17[15]);
  type metadata accessor for ShelfContainerEnvironmentValues(0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1B7A96CE0();
  sub_1B7A986C0();
  *v18 = v25;
  v18[1] = v26;
  v20 = *(a7 - 8);
  (*(v20 + 16))(a9, a1, a7);
  v21 = a9 + v17[11];
  *v21 = a2;
  *(v21 + 8) = a3 & 1;
  *(a9 + v17[12]) = a4;
  v22 = (a9 + v17[13]);
  *v22 = a5;
  v22[1] = a6;
  result = (*(v20 + 8))(a1, a7);
  *(a9 + v17[14]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t type metadata accessor for ShelfContainerEnvironmentValues(uint64_t a1)
{
  result = qword_1EBA462C0;
  if (!qword_1EBA462C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfPage.init<A>(_:spacing:configuration:shelfContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v24 = a1;
  v25 = a9;
  v16 = *(a7 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a10;
  v20[5] = a11;
  v20[6] = a12;
  v20[7] = a5;
  v20[8] = a6;
  v29[0] = a7;
  v29[1] = a8;
  v29[2] = a10;
  v29[3] = a11;
  v29[4] = a12;
  v21 = type metadata accessor for _ShelfPageStaticContent(0, v29);
  WitnessTable = swift_getWitnessTable();
  ShelfPage.init(_:spacing:configuration:content:)(v19, v27, v26 & 1, v28, sub_1B797F2AC, v20, a7, v21, v25, WitnessTable);
  return (*(v16 + 8))(v24, a7);
}

uint64_t sub_1B797F048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v34 = a8;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a9;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v21 = type metadata accessor for _ShelfPageStaticContent(0, &v39);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v34 - v27;
  (*(v13 + 16))(v15, v35, a4, v26);
  (*(v13 + 32))(v24, v15, a4);
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = v34;
  v29 = &v24[*(type metadata accessor for _ShelfPageStaticContent(0, &v39) + 60)];
  v30 = v37;
  *v29 = v36;
  v29[1] = v30;
  swift_getWitnessTable();
  v31 = *(v22 + 16);
  v31(v28, v24, v21);
  v32 = *(v22 + 8);

  v32(v24, v21);
  v31(v38, v28, v21);
  return (v32)(v28, v21);
}

uint64_t _ShelfPageStaticContent.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  result = type metadata accessor for _ShelfPageStaticContent(0, v19);
  v18 = (a9 + *(result + 60));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t ShelfPage.init<A, B, C>(_:spacing:configuration:shelfTransaction:shelfWorking:shelfFailed:shelfContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v49 = a2;
  v50 = a4;
  v48 = a3;
  v46 = a1;
  v47 = a9;
  v41 = a10;
  v40 = a22;
  v38 = a21;
  v37 = a20;
  v36 = a19;
  v39 = a11;
  v22 = *(a12 - 8);
  v23 = MEMORY[0x1EEE9AC00](a1);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v23);
  v26 = swift_allocObject();
  *(v26 + 16) = a12;
  *(v26 + 24) = a13;
  *(v26 + 32) = a14;
  *(v26 + 40) = a15;
  *(v26 + 48) = a16;
  *(v26 + 56) = a17;
  v27 = v36;
  *(v26 + 64) = a18;
  *(v26 + 72) = v27;
  v28 = v37;
  v29 = v38;
  *(v26 + 80) = v37;
  *(v26 + 88) = v29;
  v30 = v40;
  v31 = v42;
  *(v26 + 96) = v40;
  *(v26 + 104) = v31;
  *(v26 + 112) = v43;
  *(v26 + 120) = v44;
  *(v26 + 128) = v45;
  *(v26 + 136) = v41;
  *(v26 + 152) = v39;
  v51[0] = a12;
  v51[1] = a13;
  v51[2] = a14;
  v51[3] = a15;
  v51[4] = a16;
  v51[5] = a17;
  v51[6] = a18;
  v51[7] = v27;
  v51[8] = v28;
  v51[9] = v29;
  v51[10] = v30;
  v32 = type metadata accessor for _ShelfPageContinuousContent(0, v51);
  WitnessTable = swift_getWitnessTable();
  ShelfPage.init(_:spacing:configuration:content:)(v25, v49, v48 & 1, v50, sub_1B797F92C, v26, a12, v32, v47, WitnessTable);
  return (*(v22 + 8))(v46, a12);
}

uint64_t sub_1B797F5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned int (*a10)(char *, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v63 = a6;
  v64 = a8;
  v66 = a5;
  v67 = a7;
  v65 = a3;
  v68 = a9;
  v53 = a20;
  v54 = a19;
  v55 = a18;
  v56 = a17;
  v57 = a16;
  v58 = a15;
  v59 = a14;
  v62 = a11;
  v23 = *(a10 - 1);
  v60 = a13;
  v61 = a12;
  MEMORY[0x1EEE9AC00](a16);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69[0] = a10;
  v69[1] = v26;
  v69[2] = v28;
  v69[3] = v27;
  v69[4] = v30;
  v69[5] = v29;
  v69[6] = v31;
  v69[7] = v32;
  v69[8] = v34;
  v69[9] = v33;
  v69[10] = v35;
  v36 = type metadata accessor for _ShelfPageContinuousContent(0, v69);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v53 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v53 - v42;
  (*(v23 + 16))(v25, a1, a10, v41);
  v44 = a2;

  v45 = a4;

  v46 = v63;

  v47 = v64;

  *(&v52 + 1) = v57;
  *&v52 = v58;
  *(&v51 + 1) = v61;
  *&v51 = v62;
  _ShelfPageContinuousContent.init(_:transaction:working:failed:content:)(v25, v44, v65, v45, v66, v46, v67, v47, v39, a10, v51, v60, v59, v52, v56, v55, v54, v53);
  swift_getWitnessTable();
  v48 = *(v37 + 16);
  v48(v43, v39, v36);
  v49 = *(v37 + 8);
  v49(v39, v36);
  v48(v68, v43, v36);
  return (v49)(v43, v36);
}

uint64_t _ShelfPageContinuousContent.init(_:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned int (*a10)(char *, uint64_t, uint64_t), __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v39 = *(a10 - 1);
  (*(v39 + 16))(a9, a1, a10);
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = a14;
  v45 = a15;
  v46 = a16;
  v47 = a17;
  v48 = a18;
  v21 = type metadata accessor for _ShelfPageContinuousContent(0, &v40);
  *(a9 + v21[27]) = a2;
  v22 = (a9 + v21[28]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a9 + v21[29]);
  *v23 = a5;
  v23[1] = a6;
  v24 = (a9 + v21[30]);
  *v24 = a7;
  v24[1] = a8;
  v25 = *(*(*(a13 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  sub_1B7997BD4(a1, AssociatedTypeWitness, a10, a16, v25, a18);
  swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, v27, v28, v29);
  sub_1B7A9A6E0();
  sub_1B7A986C0();

  result = (*(v39 + 8))(a1, a10);
  v31 = v41;
  v32 = (a9 + v21[31]);
  *v32 = v40;
  v32[1] = v31;
  return result;
}

uint64_t ShelfPage.init<A>(_:spacing:configuration:shelfTransaction:shelfContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32 = a7;
  v33 = a6;
  v37 = a4;
  v38 = a5;
  v35 = a3;
  v36 = a2;
  v34 = a9;
  v30 = *(a8 - 8);
  v31 = a1;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v29 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v16);
  v19 = swift_allocObject();
  v19[2] = a8;
  v19[3] = a10;
  v19[4] = a11;
  v19[5] = a12;
  v19[6] = a13;
  v19[7] = a14;
  v19[8] = a15;
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a10;
  v20[4] = a11;
  v20[5] = a12;
  v20[6] = a13;
  v20[7] = a14;
  v20[8] = a15;
  v23 = sub_1B7988414(v20, v21, v22);
  v26 = sub_1B7988468(v23, v24, v25);
  *&v28 = v20;
  *(&v28 + 1) = v33;
  ShelfPage.init<A, B, C>(_:spacing:configuration:shelfTransaction:shelfWorking:shelfFailed:shelfContent:)(v29, v36, v35 & 1, v37, v38, sub_1B79883C8, v19, sub_1B79883DC, v34, v28, v32, a8, a10, &type metadata for _IntentViewDefaultContinuousWorking, &type metadata for _IntentViewDefaultContinuousFailed, a11, a12, v23, v26, a13, a14, a15);
  return (*(v30 + 8))(v31, a8);
}

uint64_t sub_1B797FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShelfPageContext(0, a2, a4, a4);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  (*(v6 + 16))(&v11 - v8, a1, v5, v7);
  return (*(v6 + 8))(v9, v5);
}

uint64_t _IntentViewDefaultContinuousWorking.init<A>(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShelfPageContext(0, a2, a3, a4);
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t sub_1B797FF50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v12 = type metadata accessor for ShelfPageContext(0, a5, a6, a4);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v13 + 16))(&v19 - v15, a4, v12, v14);
  v17 = a1;

  result = (*(v13 + 8))(v16, v12);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  return result;
}

uint64_t _IntentViewDefaultContinuousFailed.init<A>(error:retry:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = type metadata accessor for ShelfPageContext(0, a5, a6, a4);
  result = (*(*(v12 - 8) + 8))(a4, v12);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  return result;
}

uint64_t sub_1B79800F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46438, &qword_1B7A9D0D0);
  sub_1B7A986D0();
  return v1;
}

uint64_t sub_1B7980148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = *(a2 + 56);

  *(a3 + v7) = a1;
  return result;
}

uint64_t ShelfPage.onScroll(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 16))(a4, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(a3 + 56);
  v11 = *(a4 + v10);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B798793C(0, v11[2] + 1, 1, v11);
    v11 = result;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_1B798793C((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1B79884D4;
  v15[5] = v9;
  *(a4 + v10) = v11;
  return result;
}

uint64_t ShelfPage.body.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = a1[3];
  *(v7 + 2) = a1[2];
  *(v7 + 3) = v8;
  *(v7 + 4) = a1[4];
  (*(v3 + 32))(&v7[v6], &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1B7A97020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F98, &unk_1B7A9C790);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EF8, &qword_1B7A9C648);
  sub_1B7A97590();
  sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98, &unk_1B7A9C790, MEMORY[0x1E697C968]);
  v35 = WitnessTable;
  v36 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8, &qword_1B7A9C648, MEMORY[0x1E69802E0]);
  v33 = v11;
  v34 = v12;
  v31 = swift_getWitnessTable();
  v32 = v11;
  swift_getWitnessTable();
  sub_1B7A97050();
  v13 = sub_1B7A97590();
  v14 = type metadata accessor for ShelfContainerEnvironmentValues(255);
  v29 = swift_getWitnessTable();
  v30 = v10;
  v15 = swift_getWitnessTable();
  v16 = sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  swift_getOpaqueTypeMetadata2();
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  swift_getOpaqueTypeConformance2();
  v23 = sub_1B7A973D0();
  v24 = v17;
  v18 = sub_1B7A973E0();
  swift_getWitnessTable();
  v19 = *(*(v18 - 8) + 16);
  v19(&v25, &v23, v18);

  v23 = v25;
  v24 = v26;
  v19(v22, &v23, v18);
}

uint64_t sub_1B7980740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v66 = a3;
  v67 = a2;
  v65 = a1;
  v68 = a6;
  v63 = a5;
  sub_1B7A97020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F98, &unk_1B7A9C790);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EF8, &qword_1B7A9C648);
  sub_1B7A97590();
  v7 = sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98, &unk_1B7A9C790, MEMORY[0x1E697C968]);
  v79 = WitnessTable;
  v80 = v9;
  v77 = swift_getWitnessTable();
  v78 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8, &qword_1B7A9C648, MEMORY[0x1E69802E0]);
  v75 = swift_getWitnessTable();
  v76 = v77;
  v64 = v7;
  v57 = swift_getWitnessTable();
  v10 = sub_1B7A97050();
  v59 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v56 = v49 - v11;
  v12 = sub_1B7A97590();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v58 = v49 - v13;
  v14 = type metadata accessor for ShelfContainerEnvironmentValues(255);
  v61 = v10;
  v52 = swift_getWitnessTable();
  v73 = v52;
  v74 = v9;
  v15 = swift_getWitnessTable();
  v16 = sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  v62 = v12;
  v69 = v12;
  v70 = v14;
  v55 = v14;
  v54 = v15;
  v71 = v15;
  v72 = v16;
  v53 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v50 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v51 = v49 - v21;
  sub_1B7A9A760();
  v49[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = v66;
  v23 = v63;
  type metadata accessor for ShelfPage(0, v66, a4, v63);
  v24 = v67;
  sub_1B79800F0();
  sub_1B7A972E0();
  sub_1B7980E74(v25, v26);

  sub_1B7A972C0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1B7A972E0();
  v36 = v35;
  v38 = v37;
  v39 = sub_1B7A97EC0();
  MEMORY[0x1EEE9AC00](v39);
  v49[-10] = v22;
  v49[-9] = a4;
  v49[-8] = v23;
  v49[-7] = v24;
  v49[-6] = v28;
  v49[-5] = v30;
  v49[-4] = v32;
  v49[-3] = v34;
  v49[-2] = v36;
  v49[-1] = v38;
  v40 = v56;
  sub_1B7A97060();
  v69 = 0xD000000000000023;
  v70 = 0x80000001B7AC4EF0;
  v41 = v58;
  v42 = v61;
  sub_1B7A981B0();
  (*(v59 + 8))(v40, v42);
  sub_1B79800F0();
  swift_checkMetadataState();
  v43 = v50;
  v44 = v62;
  sub_1B7A98140();

  (*(v60 + 8))(v41, v44);
  v45 = *(v18 + 16);
  v46 = v51;
  v45(v51, v43, OpaqueTypeMetadata2);
  v47 = *(v18 + 8);
  v47(v43, OpaqueTypeMetadata2);
  v45(v68, v46, OpaqueTypeMetadata2);
  v47(v46, OpaqueTypeMetadata2);
}

void sub_1B7980E74(double a1, double a2)
{
  if (*(v2 + 16) == a1)
  {
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
    sub_1B7A96CA0();
  }

  if (*(v2 + 24) == a2)
  {
    *(v2 + 24) = a2;
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
    sub_1B7A96CA0();
  }
}

uint64_t sub_1B7981068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v100 = a5;
  v101 = a2;
  v20 = type metadata accessor for ShelfPage(0, a2, a3, a4);
  v85 = *(v20 - 8);
  v83 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v80 - v21;
  v22 = a3;
  v23 = a4;
  v24 = sub_1B7A97020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F98, &unk_1B7A9C790);
  v25 = sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EF8, &qword_1B7A9C648);
  v26 = sub_1B7A97590();
  v88 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v87 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v80 - v29;
  v99 = v30;
  v98 = sub_1B7A97B40();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v80 - v31;
  v32 = sub_1B7A97BF0();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v92 = v24;
  v91 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v90 = &v80 - v34;
  v96 = v25;
  v93 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v82 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v81 = &v80 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v102 = &v80 - v40;
  sub_1B7A9A760();
  v94 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = sub_1B7A979A0();
  v89 = &v80;
  MEMORY[0x1EEE9AC00](v41);
  *(&v80 - 4) = v101;
  *(&v80 - 3) = v22;
  *(&v80 - 2) = v23;
  *(&v80 - 1) = a1;
  sub_1B7981D90();
  v42 = v90;
  v43 = v20;
  sub_1B7A97010();
  v117 = 0xD000000000000020;
  v118 = 0x80000001B7AC4EC0;
  v44 = v92;
  WitnessTable = swift_getWitnessTable();
  sub_1B7A981B0();
  (*(v91 + 8))(v42, v44);
  if (*(*(a1 + *(v20 + 56)) + 16))
  {
    v46 = v85;
    v47 = v84;
    (*(v85 + 16))(v84, a1, v43);
    v48 = (*(v46 + 80) + 88) & ~*(v46 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v101;
    *(v49 + 24) = v22;
    *(v49 + 32) = v23;
    *(v49 + 40) = a6;
    *(v49 + 48) = a7;
    *(v49 + 56) = a8;
    *(v49 + 64) = a9;
    *(v49 + 72) = a10;
    *(v49 + 80) = a11;
    (*(v46 + 32))(v49 + v48, v47, v43);
    type metadata accessor for CGRect(0);
    v50 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98, &unk_1B7A9C790, MEMORY[0x1E697C968]);
    v115 = WitnessTable;
    v116 = v50;
    v51 = v96;
    v52 = swift_getWitnessTable();
    sub_1B798B0CC(&qword_1EBA46428, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);
    v53 = v87;
    sub_1B7A98220();

    v54 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8, &qword_1B7A9C648, MEMORY[0x1E69802E0]);
    v113 = v52;
    v114 = v54;
    v55 = v99;
    v56 = swift_getWitnessTable();
    v57 = v88;
    v58 = *(v88 + 16);
    v101 = WitnessTable;
    v59 = v86;
    v58(v86, v53, v55);
    v60 = *(v57 + 8);
    v60(v53, v55);
    v58(v53, v59, v55);
    v61 = v95;
    sub_1B79B5878(v53, v55, v51, v56, v52);
    v60(v53, v55);
    v62 = v59;
    WitnessTable = v101;
    v60(v62, v55);
    (*(v93 + 8))(v102, v51);
  }

  else
  {
    v63 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98, &unk_1B7A9C790, MEMORY[0x1E697C968]);
    v105 = WitnessTable;
    v106 = v63;
    v64 = v96;
    v65 = swift_getWitnessTable();
    v66 = v93;
    v67 = *(v93 + 16);
    v68 = v81;
    v67(v81, v102, v64);
    v69 = v82;
    v67(v82, v68, v64);
    v70 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8, &qword_1B7A9C648, MEMORY[0x1E69802E0]);
    v103 = v65;
    v104 = v70;
    v71 = v99;
    v72 = swift_getWitnessTable();
    v61 = v95;
    sub_1B7959A28(v69, v71, v64, v72, v65);
    v73 = *(v66 + 8);
    v73(v69, v64);
    v73(v68, v64);
    v73(v102, v64);
  }

  v74 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98, &unk_1B7A9C790, MEMORY[0x1E697C968]);
  v111 = WitnessTable;
  v112 = v74;
  v75 = swift_getWitnessTable();
  v76 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8, &qword_1B7A9C648, MEMORY[0x1E69802E0]);
  v109 = v75;
  v110 = v76;
  v107 = swift_getWitnessTable();
  v108 = v75;
  v77 = v98;
  swift_getWitnessTable();
  v78 = v97;
  (*(v97 + 16))(v100, v61, v77);
  (*(v78 + 8))(v61, v77);
}

uint64_t sub_1B7981BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v20 = a5;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for ShelfPage(0, a2, a3, a4);
  (*(a1 + *(v15 + 52)))(a1);
  v16 = *(v9 + 16);
  v16(v14, v11, a3);
  v17 = *(v9 + 8);
  v17(v11, a3);
  v16(v20, v14, a3);
  v17(v14, a3);
}

uint64_t sub_1B7981D90()
{
  sub_1B7A97BF0();
  sub_1B798B0CC(&qword_1EBA46430, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1B7A9AFE0();
}

void sub_1B7981E10(uint64_t a1@<X8>)
{
  *a1 = sub_1B7981E40();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

double sub_1B7981E40()
{
  if (qword_1EBA45B20 != -1)
  {
    swift_once();
  }

  v0 = sub_1B7A97540();
  __swift_project_value_buffer(v0, qword_1EBA45F50);
  sub_1B7A972F0();
  x = v6.origin.x;
  y = v6.origin.y;
  width = v6.size.width;
  height = v6.size.height;
  if (CGRectGetMinX(v6) != 0.0)
  {
    x = -x;
  }

  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CGRectGetMinY(v7);
  return x;
}

uint64_t sub_1B7981EF8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v28 = *a1;
  v29 = a1[1];
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = *(a2 + *(type metadata accessor for ShelfPage(0, a3, a4, a5) + 56));
  v22 = *(v21 + 16);
  v24 = v28;
  v23 = v29;
  if (v22)
  {
    v25 = v21 + 40;
    do
    {
      v26 = *(v25 - 8);
      *v30 = a6;
      *&v30[1] = a7;
      *&v30[2] = a8;
      *&v30[3] = a9;
      *&v30[4] = a10;
      *&v30[5] = a11;
      v31 = v24;
      v32 = v23;

      v26(v30);

      v24 = v28;
      v23 = v29;
      v25 += 16;
      --v22;
    }

    while (v22);
  }
}

uint64_t sub_1B798205C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = *(a4 + 8);
  v10 = *(v54 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  v19 = *(v12 + 16);
  v52 = a5;
  v19(a5, a1, AssociatedTypeWitness, v16);
  v55 = a2;
  sub_1B7A9A920();
  v20 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = sub_1B7A9A440();
  v21 = *(v12 + 8);
  v21(v18, AssociatedTypeWitness);
  v50 = type metadata accessor for ShelfPageContext(0, a3, a4, v22);
  v48 = *(v50 + 36);
  v53 = v20;
  if (a2)
  {
    sub_1B7A9A410();
    v23 = sub_1B7A9A9E0();
    v45 = v24;
    v46 = v23;
    v51 = *(v10 + 8);
    v25 = swift_getAssociatedTypeWitness();
    v26 = *(v25 - 8);
    v27 = *(v26 + 16);
    v28 = v52;
    v47 = v14;
    v29 = v21;
    v30 = v48;
    v27(v52 + v48, v45, v25);
    v46(v56, 0);
    v29(v18, AssociatedTypeWitness);
    v31 = v28 + v30;
    v21 = v29;
    v14 = v47;
    v32 = v25;
    v20 = v53;
    (*(v26 + 56))(v31, 0, 1, v32);
  }

  else
  {
    v51 = *(v10 + 8);
    v33 = swift_getAssociatedTypeWitness();
    v28 = v52;
    (*(*(v33 - 8) + 56))(v52 + v48, 1, 1, v33);
  }

  sub_1B7A9A960();
  sub_1B7A9A410();
  v21(v14, AssociatedTypeWitness);
  v34 = v20;
  v35 = sub_1B7A9A450();
  v21(v18, AssociatedTypeWitness);
  if (v35)
  {
    v36 = *(v50 + 40);
    v37 = v55;
    sub_1B7A9A940();
    v54 = sub_1B7A9A9E0();
    v52 = v38;
    v39 = swift_getAssociatedTypeWitness();
    v40 = *(v39 - 8);
    (*(v40 + 16))(v28 + v36, v52, v39);
    (v54)(v56, 0);
    (*(*(a3 - 8) + 8))(v37, a3);
    v21(v53, AssociatedTypeWitness);
    v21(v18, AssociatedTypeWitness);
    return (*(v40 + 56))(v28 + v36, 0, 1, v39);
  }

  else
  {
    (*(*(a3 - 8) + 8))(v55, a3);
    v21(v34, AssociatedTypeWitness);
    v42 = *(v50 + 40);
    v43 = swift_getAssociatedTypeWitness();
    return (*(*(v43 - 8) + 56))(v28 + v42, 1, 1, v43);
  }
}

uint64_t ShelfPageContext.shelfOffset.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t ShelfPageContext.previousShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ShelfPageContext.nextShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_1B7982804(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1B7982834@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B7982860@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1B7982938@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B7982968@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B7A45BD4();

  *a2 = v3;
  return result;
}

uint64_t _ShelfPageStaticContent.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v43 = *(a1 - 1);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v8 = type metadata accessor for IndexedRandomAccessCollection(0, v5, v6, v7);
  MEMORY[0x1EEE9AC00](v8);
  v48 = v36 - v9;
  v10 = a1[6];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = a1[3];
  v40 = v8;
  WitnessTable = swift_getWitnessTable();
  v39 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = v8;
  v54 = AssociatedTypeWitness;
  v14 = v12;
  v36[2] = v12;
  v55 = v12;
  v56 = WitnessTable;
  v57 = AssociatedConformanceWitness;
  v15 = sub_1B7A988E0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v37 = v36 - v20;
  v21 = v41;
  RandomAccessCollection.indexed.getter(v5, v48);
  v22 = a1[5];
  *&v23 = v6;
  *(&v23 + 1) = v22;
  *&v24 = v5;
  *(&v24 + 1) = v14;
  v46 = v23;
  v47 = v24;
  v49 = v24;
  v50 = v23;
  v51 = v10;
  v36[1] = swift_getKeyPath();
  v25 = v42;
  v26 = v43;
  (*(v43 + 16))(v42, v21, a1);
  v27 = (*(v26 + 80) + 56) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 16) = v47;
  *(v28 + 32) = v29;
  *(v28 + 48) = v10;
  (*(v26 + 32))(v28 + v27, v25, a1);
  v30 = swift_allocObject();
  v31 = v46;
  *(v30 + 16) = v47;
  *(v30 + 32) = v31;
  *(v30 + 48) = v10;
  *(v30 + 56) = sub_1B79885A4;
  *(v30 + 64) = v28;
  sub_1B7A988B0();
  v52 = v22;
  swift_getWitnessTable();
  v32 = *(v16 + 16);
  v33 = v37;
  v32(v37, v18, v15);
  v34 = *(v16 + 8);
  v34(v18, v15);
  v32(v45, v33, v15);
  return (v34)(v33, v15);
}

uint64_t sub_1B7982E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v42 = a7;
  v43 = a1;
  v45 = a3;
  v46 = a2;
  v47 = a9;
  v44 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v35 - v15;
  v41 = type metadata accessor for ShelfPageContext(0, a4, a6, v17);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v35 - v18;
  v19 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v36 = &v35 - v24;
  sub_1B7A9A760();
  v35 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v48[0] = a4;
  v48[1] = a5;
  v48[2] = a6;
  v48[3] = v42;
  v48[4] = a8;
  v25 = type metadata accessor for _ShelfPageStaticContent(0, v48);
  v26 = a5;
  v27 = v45;
  v28 = *(v45 + *(v25 + 60));
  (*(v14 + 16))(v16, v43, AssociatedTypeWitness);
  v29 = v40;
  (*(v44 + 16))(v40, v27, a4);
  v30 = v37;
  sub_1B798205C(v16, v29, a4, a6, v37);
  v28(v46, v30);
  (*(v39 + 8))(v30, v41);
  v31 = *(v19 + 16);
  v32 = v36;
  v31(v36, v22, v26);
  v33 = *(v19 + 8);
  v33(v22, v26);
  v31(v47, v32, v26);
  v33(v32, v26);
}

uint64_t sub_1B7983280(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1B798334C(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v2, v3);
  sub_1B7A9A6E0();
  sub_1B7A98700();
  sub_1B7A986D0();
  return v5;
}

uint64_t sub_1B7983428(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v2, v3);
  sub_1B7A9A6E0();
  sub_1B7A98700();
  sub_1B7A986F0();
  return v5;
}

uint64_t _ShelfPageContinuousContent.body.getter@<X0>(uint64_t a1@<X0>, __int8 *a2@<X8>)
{
  v82 = a2;
  v80 = *(a1 - 8);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v58.i8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v4 + 16);
  v6.i64[0] = v5;
  v87 = v6;
  v7 = *(v4 + 48);
  v9 = type metadata accessor for IndexedRandomAccessCollection(0, v5, v7, v8);
  MEMORY[0x1EEE9AC00](v9);
  v86 = v58.i64 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v72 = *(a1 + 40);
  v104 = v72;
  v12.i64[0] = v7;
  v84 = *(a1 + 24);
  v103 = vextq_s8(v84, v84, 8uLL);
  v62 = vzip1q_s64(v87, v84);
  *&v13 = vdupq_laneq_s64(v84, 1).u64[0];
  *(&v13 + 1) = v72;
  v60 = v13;
  v83 = *(a1 + 56);
  v105 = vextq_s8(v83, v83, 8uLL);
  v59 = vzip1q_s64(v12, v83);
  v77 = vdupq_laneq_s64(v83, 1);
  v14 = *(a1 + 96);
  v87 = *(a1 + 72);
  v15 = v87.i64[1];
  swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  v102 = v16;
  v106 = v87.i64[0];
  v58 = vzip1q_s64(v77, v87);
  v65 = type metadata accessor for IntentResultView(255, &v102);
  v17 = type metadata accessor for _ContinuousIntentDispatchWorker(255, v11, v15, v14);
  WitnessTable = swift_getWitnessTable();
  v66 = type metadata accessor for _IntentDispatchViewModifier(255, v17, WitnessTable, v19);
  v67 = sub_1B7A97590();
  v71 = type metadata accessor for PageResourceMetricsViewModifier(255, v11, v15, v20);
  v21 = sub_1B7A97590();
  v69 = v21;
  v75 = v9;
  v74 = swift_getWitnessTable();
  v22 = *(a1 + 88);
  v102 = v9;
  v103.i64[0] = AssociatedTypeWitness;
  v103.i64[1] = v21;
  v104 = v74;
  v105.i64[0] = v22;
  v23 = v22;
  v63 = sub_1B7A988E0();
  AssociatedTypeWitness = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v58.i8[-v24];
  v27 = type metadata accessor for _PrefetchMediaArtworkAdapter(255, v16, v25, v26);
  v70 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FB0, &qword_1B7A9C7E0);
  v29 = sub_1B79886C8();
  v102 = v27;
  v103.i64[0] = v28;
  v103.i64[1] = &off_1F2F95408;
  v104 = v29;
  v76 = type metadata accessor for _PrefetchMediaArtworkViewModifier(255, &v102);
  v68 = sub_1B7A97590();
  v77.i64[0] = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v61 = v58.i64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v73 = &v58.i8[-v32];
  v33 = v85;
  RandomAccessCollection.indexed.getter(v5, v86);
  v89 = v60;
  v88 = v62;
  v91 = v58;
  v90 = v59;
  v92 = v87.i64[1];
  v34 = v23;
  v93 = v23;
  v94 = v14;
  v62.i64[0] = swift_getKeyPath();
  v35 = v80;
  v36 = v78;
  (*(v80 + 16))(v78, v33, a1);
  v37 = (*(v35 + 80) + 104) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v5;
  *(v38 + 24) = v84;
  v39 = v72;
  *(v38 + 40) = v72;
  *(v38 + 48) = v7;
  *(v38 + 56) = v83;
  *&v40 = v34;
  *(&v40 + 1) = v14;
  *(v38 + 88) = v40;
  *(v38 + 72) = v87;
  (*(v35 + 32))(v38 + v37, v36, a1);
  v41 = swift_allocObject();
  *(v41 + 16) = v5;
  *(v41 + 24) = v84;
  *(v41 + 40) = v39;
  *(v41 + 48) = v7;
  *(v41 + 56) = v83;
  *(v41 + 72) = v87;
  *(v41 + 88) = v34;
  *(v41 + 96) = v14;
  *(v41 + 104) = sub_1B7988744;
  *(v41 + 112) = v38;
  v42 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v100 = v42;
  v101 = v43;
  v44 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v98 = v44;
  v99 = v45;
  v57 = swift_getWitnessTable();
  v46 = v64;
  sub_1B7A988B0();
  v102 = sub_1B798334C(a1);
  v97 = v57;
  v47 = v63;
  v48 = swift_getWitnessTable();
  swift_getWitnessTable();
  v49 = v61;
  sub_1B79A1864(&v102, v47, v48, &off_1F2F95408, v61);

  (*(AssociatedTypeWitness + 8))(v46, v47);
  v50 = swift_getWitnessTable();
  v95 = v48;
  v96 = v50;
  v51 = v68;
  swift_getWitnessTable();
  v52 = v77.i64[0];
  v53 = *(v77.i64[0] + 16);
  v54 = v73;
  v53(v73, v49, v51);
  v55 = *(v52 + 8);
  v55(v49, v51);
  v53(v82, v54, v51);
  return (v55)(v54, v51);
}

uint64_t sub_1B7983E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v177 = a3;
  v157 = a2;
  v165 = a1;
  v158 = a9;
  v194 = a4;
  v195 = a5;
  v174 = a4;
  v196 = a6;
  v197 = a7;
  v198 = a8;
  v199 = a10;
  v184 = a8;
  v200 = a11;
  v201 = a12;
  v202 = a13;
  v203 = a14;
  v176 = a14;
  v204 = a15;
  v19 = type metadata accessor for _ShelfPageContinuousContent(0, &v194);
  v185 = *(v19 - 8);
  v186 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v171 = v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v140 = v135 - v22;
  v162 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v170 = v135 - v25;
  v168 = *(*(a8 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v164 = type metadata accessor for IntentResult(255, v27, v28, v29);
  v155 = sub_1B7A98870();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v172 = v135 - v30;
  v143 = v27;
  v194 = v27;
  v195 = a6;
  v183 = a6;
  v173 = a5;
  v196 = a5;
  v197 = a7;
  v182 = a7;
  v180 = a11;
  v198 = a11;
  v199 = a10;
  v178 = a10;
  v179 = a12;
  v200 = a12;
  v31 = type metadata accessor for IntentResultView(0, &v194);
  v148 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v144 = v135 - v32;
  v181 = a15;
  v33 = type metadata accessor for _ContinuousIntentDispatchWorker(255, AssociatedTypeWitness, a13, a15);
  WitnessTable = swift_getWitnessTable();
  v36 = type metadata accessor for _IntentDispatchViewModifier(255, v33, WitnessTable, v35);
  v150 = v31;
  v149 = v36;
  v37 = sub_1B7A97590();
  v142 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v141 = v135 - v38;
  v156 = AssociatedTypeWitness;
  v187 = a13;
  v40 = type metadata accessor for PageResourceMetricsViewModifier(255, AssociatedTypeWitness, a13, v39);
  v151 = v37;
  v146 = v40;
  v153 = sub_1B7A97590();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v145 = v135 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v147 = v135 - v43;
  v44 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = v135 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v48;
  v50 = swift_getAssociatedTypeWitness();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = v135 - v52;
  v54 = v49;
  v188 = type metadata accessor for ShelfPageContext(0, v49, v184, v55);
  v169 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v167 = v135 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v138 = v135 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v136 = v135 - v60;
  v175 = v61;
  MEMORY[0x1EEE9AC00](v62);
  v64 = v135 - v63;
  sub_1B7A9A760();
  v139 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v51 + 16))(v53, v165, v50);
  v65 = v177;
  (*(v44 + 16))(v47, v177, v54);
  v166 = v64;
  sub_1B798205C(v53, v47, v54, v184, v64);
  sub_1B7A9A920();
  v66 = sub_1B7A9A900();
  v137 = v66;
  (*(v51 + 8))(v53, v50);
  v67 = v186;
  v194 = sub_1B7983428(v186);
  v195 = v68;
  v196 = v69;
  v193 = v66;
  sub_1B7A9A6E0();
  v135[3] = sub_1B7A98870();
  v135[2] = swift_getWitnessTable();
  sub_1B7A98860();

  v70 = v185;
  v71 = *(v185 + 16);
  v165 = v185 + 16;
  v168 = v71;
  v71(v170, v65, v67);
  v72 = v169;
  v73 = *(v169 + 16);
  v163 = v169 + 16;
  v164 = v73;
  v74 = v136;
  v73(v136, v64, v188);
  v75 = *(v70 + 80);
  v76 = (v75 + 104) & ~v75;
  v77 = *(v72 + 80);
  v160 = v76;
  v78 = (v162 + v77 + v76) & ~v77;
  v79 = v65;
  v162 = v75 | v77;
  v80 = v78;
  v81 = swift_allocObject();
  v82 = v174;
  v83 = v173;
  v81[2] = v174;
  v81[3] = v83;
  v84 = v182;
  v81[4] = v183;
  v81[5] = v84;
  v85 = v184;
  v86 = v178;
  v81[6] = v184;
  v81[7] = v86;
  v87 = v179;
  v81[8] = v180;
  v81[9] = v87;
  v88 = v176;
  v81[10] = v187;
  v81[11] = v88;
  v81[12] = v181;
  v89 = *(v70 + 32);
  v185 = v70 + 32;
  v161 = v89;
  v90 = v81 + v76;
  v91 = v186;
  v89(v90, v170, v186);
  v170 = *(v72 + 32);
  v159 = v80;
  v92 = v188;
  (v170)(v81 + v80, v74, v188);
  v135[1] = v72 + 32;
  v93 = v140;
  v168(v140, v79, v91);
  v94 = v138;
  v95 = v166;
  v164(v138, v166, v92);
  v96 = swift_allocObject();
  v97 = v173;
  *(v96 + 2) = v82;
  *(v96 + 3) = v97;
  v98 = v182;
  *(v96 + 4) = v183;
  *(v96 + 5) = v98;
  v99 = v178;
  *(v96 + 6) = v85;
  *(v96 + 7) = v99;
  v100 = v179;
  *(v96 + 8) = v180;
  *(v96 + 9) = v100;
  v101 = v186;
  v102 = v176;
  *(v96 + 10) = v187;
  *(v96 + 11) = v102;
  v103 = v181;
  *(v96 + 12) = v181;
  v161(&v96[v160], v93, v101);
  v104 = v188;
  (v170)(&v96[v159], v94, v188);
  v168(v171, v177, v101);
  v164(v167, v95, v104);
  v105 = swift_allocObject();
  *(v105 + 2) = v174;
  *(v105 + 3) = v97;
  v106 = v183;
  v107 = v182;
  *(v105 + 4) = v183;
  *(v105 + 5) = v107;
  v108 = v178;
  *(v105 + 6) = v184;
  *(v105 + 7) = v108;
  v109 = v180;
  v110 = v179;
  *(v105 + 8) = v180;
  *(v105 + 9) = v110;
  v111 = v176;
  *(v105 + 10) = v187;
  *(v105 + 11) = v111;
  *(v105 + 12) = v103;
  v112 = v186;
  v161(&v105[v160], v171, v186);
  (v170)(&v105[v159], v167, v188);
  v134 = v110;
  *&v133 = v107;
  *(&v133 + 1) = v109;
  *&v132 = v106;
  *(&v132 + 1) = v97;
  v113 = v144;
  v114 = v172;
  IntentResultView.init(_:empty:success:failure:)(v172, sub_1B798A910, v81, sub_1B798AA58, v96, sub_1B798AEAC, v105, v143, v144, v132, v133, v108, v134);
  v194 = sub_1B7983428(v112);
  v195 = v115;
  v196 = v116;
  v193 = v137;
  v117 = v114;
  sub_1B7A98860();

  v118 = v150;
  v119 = swift_getWitnessTable();
  v120 = v141;
  View.dispatch<A>(_:into:)(v157, v117, v118, v156, v119, v187, v181, v141);
  (*(v154 + 8))(v117, v155);
  (*(v148 + 8))(v113, v118);
  swift_getWitnessTable();
  v121 = v145;
  v122 = v151;
  j___s7SwiftUI15ModifiedContentV011_JetEngine_aB0AA4ViewRzAD018_IntentDispatchingG8ModifierR_0eF010ShelfModel5_What_10ReturnTypeRP_rlE19pageResourceMetricsQryF();
  (*(v142 + 8))(v120, v122);
  (*(v169 + 8))(v166, v188);
  v123 = swift_getWitnessTable();
  v191 = v119;
  v192 = v123;
  v124 = swift_getWitnessTable();
  v125 = swift_getWitnessTable();
  v189 = v124;
  v190 = v125;
  v126 = v153;
  swift_getWitnessTable();
  v127 = v152;
  v128 = *(v152 + 16);
  v129 = v147;
  v128(v147, v121, v126);
  v130 = *(v127 + 8);
  v130(v121, v126);
  v128(v158, v129, v126);
  v130(v129, v126);
}

uint64_t sub_1B7984EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v28[-1] - v13;
  v28[0] = v15;
  v28[1] = v16;
  v28[2] = v17;
  v28[3] = v18;
  v28[4] = v19;
  v28[5] = v20;
  v29 = v21;
  v30 = v12;
  v31 = v22;
  v23 = type metadata accessor for _ShelfPageContinuousContent(0, v28);
  (*(a1 + *(v23 + 112)))(a2);
  v24 = *(v8 + 16);
  v24(v14, v10, a3);
  v25 = *(v8 + 8);
  v25(v10, a3);
  v24(a4, v14, a3);
  return (v25)(v14, a3);
}

uint64_t sub_1B798504C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v30[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v30[-1] - v15;
  v30[0] = v17;
  v30[1] = v18;
  v30[2] = v19;
  v30[3] = v20;
  v30[4] = v21;
  v31 = v22;
  v32 = v14;
  v33 = v24;
  v34 = v23;
  v25 = type metadata accessor for _ShelfPageContinuousContent(0, v30);
  (*(a2 + *(v25 + 120)))(a1, a3);
  v26 = *(v10 + 16);
  v26(v16, v12, a4);
  v27 = *(v10 + 8);
  v27(v12, a4);
  v26(a5, v16, a4);
  return (v27)(v16, a4);
}

uint64_t sub_1B79851DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, uint64_t a7)
{
  v29 = a6;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30[-1] - v17;
  v30[0] = v19;
  v30[1] = v20;
  v30[2] = v21;
  v30[3] = a7;
  v31 = v22;
  v32 = v23;
  v33 = v16;
  v34 = v24;
  v25 = type metadata accessor for _ShelfPageContinuousContent(0, v30);
  (*(a4 + *(v25 + 116)))(a1, a2, a3, a5);
  v26 = *(v12 + 16);
  v26(v18, v14, a7);
  v27 = *(v12 + 8);
  v27(v14, a7);
  v26(v29, v18, a7);
  return (v27)(v18, a7);
}

uint64_t sub_1B7985388(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t _ShelfPagePaginatedContent.init(content:footer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t _ShelfPagePaginatedContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = a1[3];
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = *v2;
  v21 = *(v2 + 16);
  v20 = *(v2 + 24);
  v36 = &v33 - v17;
  v37 = v20;
  v19(v16);
  v39 = *(a1[4] + 8);
  v35 = *(v12 + 16);
  v35(v18, v14, v11);
  v22 = *(v12 + 8);
  v40 = v12 + 8;
  v41 = v22;
  v23 = v22(v14, v11);
  v21(v23);
  v34 = a1[5];
  v24 = *(v4 + 16);
  v25 = v38;
  v24(v9, v6, v38);
  v26 = v4 + 8;
  v27 = *(v4 + 8);
  v37 = v26;
  v27(v6, v25);
  v28 = v36;
  v35(v14, v36, v11);
  v46[0] = v14;
  v29 = v9;
  v24(v6, v9, v25);
  v46[1] = v6;
  v45[0] = v11;
  v45[1] = v25;
  v30 = v25;
  v43 = v39;
  v44 = v34;
  sub_1B7959BAC(v46, 2uLL, v45);
  v27(v29, v25);
  v31 = v41;
  v41(v28, v11);
  v27(v6, v30);
  return v31(v14, v11);
}

uint64_t sub_1B7985758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntentResult(255, a2, a3, a4);
  sub_1B7A9A6E0();

  swift_getWitnessTable();
  v4 = sub_1B7A9A560();

  return v4;
}

double sub_1B7985810@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v10 = type metadata accessor for IntentResult(0, a1, v8, v9);
  IntentResult.data.getter(v10, v7, v11, v12);
  if ((*(*(a1 - 8) + 48))(v7, 1, a1) == 1)
  {
    (*(v5 + 8))(v7, v4);
LABEL_6:
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463A8, &qword_1B7A9D078);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (*(&v18 + 1))
  {
    sub_1B795C1E4(&v17, v20);
    v13 = v21;
    v14 = v22;
    v15 = __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_1B79859E4(v15, a1, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return result;
  }

LABEL_7:
  sub_1B7957888(&v17, &qword_1EBA463A0, &qword_1B7A9D070);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1B79859E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  sub_1B7A9AE10();
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_1B7985B10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntentResult(255, a3, a3, a4);
  v5 = sub_1B7A9A6E0();
  v6 = MEMORY[0x1E69E6328];
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CAB7E0](&v10, v5, WitnessTable);
  *(swift_allocObject() + 16) = a3;
  sub_1B7A9AC70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46380, &qword_1B7A9D058);
  swift_getWitnessTable();
  sub_1B7A9ADE0();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46388, &qword_1B7A9D060);
  sub_1B7A9AD40();
  swift_getWitnessTable();
  sub_1B7A9AD80();
  swift_getWitnessTable();
  sub_1B7A9AD40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46390, &qword_1B7A9D068);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46398, &qword_1EBA46390, &qword_1B7A9D068, v6);
  v8 = sub_1B7A9A5E0();

  return v8;
}

double sub_1B7985DC8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v10 = type metadata accessor for IntentResult(0, a1, v8, v9);
  IntentResult.data.getter(v10, v7, v11, v12);
  if ((*(*(a1 - 8) + 48))(v7, 1, a1) == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46380, &qword_1B7A9D058);
    if (swift_dynamicCast())
    {
      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1B7985F20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = sub_1B7985758(*v4, *(a1 + 16), a3, a4);
  *a2 = result;
  return result;
}

uint64_t sub_1B7985F64()
{
  v0 = sub_1B7A97540();
  __swift_allocate_value_buffer(v0, qword_1EBA45F50);
  v1 = __swift_project_value_buffer(v0, qword_1EBA45F50);
  sub_1B7A9AC20();
  return (*(*(v0 - 8) + 104))(v1, *MEMORY[0x1E697E660], v0);
}

uint64_t sub_1B798604C()
{
  v0 = sub_1B7A97540();
  __swift_allocate_value_buffer(v0, qword_1EBA45F68);
  v1 = __swift_project_value_buffer(v0, qword_1EBA45F68);
  sub_1B7A9AC20();
  return (*(*(v0 - 8) + 104))(v1, *MEMORY[0x1E697E660], v0);
}

uint64_t sub_1B7986134@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B7A97540();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

double sub_1B79861CC()
{
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  sub_1B7A96CB0();

  return *(v0 + 16);
}

double sub_1B798626C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  sub_1B7A96CB0();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_1B798633C(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
    sub_1B7A96CA0();
  }
}

double sub_1B7986454()
{
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  sub_1B7A96CB0();

  return *(v0 + 24);
}

double sub_1B79864F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  sub_1B7A96CB0();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_1B79865C4(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
    sub_1B7A96CA0();
  }
}

uint64_t sub_1B79866DC()
{
  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI31ShelfContainerEnvironmentValues___observationRegistrar;
  v2 = sub_1B7A96CF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double EnvironmentValues.shelfContainerSize.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues(0);
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v2 = *(v1 + 16);
  swift_getKeyPath();
  sub_1B7A96CB0();

  return v2;
}

uint64_t sub_1B79868A8(double a1, double a2)
{
  type metadata accessor for ShelfContainerEnvironmentValues(0);
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  if (sub_1B7A978B0())
  {
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    sub_1B7A96CE0();
    sub_1B7A978C0();
  }

  result = sub_1B7A978B0();
  if (result)
  {
    sub_1B7980E74(a1, a2);
  }

  return result;
}

double EnvironmentValues.shelfContainerWidth.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues(0);
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v2 = *(v1 + 16);

  return v2;
}

double EnvironmentValues.shelfContainerHeight.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues(0);
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v2 = *(v1 + 24);

  return v2;
}

uint64_t View.shelfContentMaxWidth(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t EnvironmentValues.shelfContentMaxWidth.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79888A8(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

void *sub_1B7986C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  sub_1B79888A8(a1, a2, a4);
  result = sub_1B7A97890();
  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1B7986D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B798B124(&qword_1EBA463B0, &qword_1EBA463B8, &qword_1B7A9D080, sub_1B798A714);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double EnvironmentValues.shelfContentPadding.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79888A8(a1, a2, a3);
  sub_1B7A97890();
  if ((v4 & 1) == 0)
  {
    type metadata accessor for ShelfContainerEnvironmentValues(0);
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
    if (sub_1B7A978B0())
    {
      swift_getKeyPath();
      sub_1B7A96CB0();

      swift_getKeyPath();
      sub_1B7A96CB0();
    }
  }

  return 0.0;
}

uint64_t View.shelfContentPrefersCompactLayouts(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B7986F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79888FC(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

uint64_t sub_1B7986FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B798A768();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.shelfContentPrefersCompactLayouts.getter()
{
  v0 = sub_1B7A97C90();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FC8, &unk_1B7AA0BE0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FD0, &unk_1B7A9C8B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25[-v14];
  sub_1B79888FC(v16, v17, v18);
  sub_1B7A97890();
  v19 = v26;
  if (v26 == 2)
  {
    sub_1B7A977F0();
    (*(v1 + 104))(v12, *MEMORY[0x1E697FF40], v0);
    (*(v1 + 56))(v12, 0, 1, v0);
    v20 = *(v4 + 48);
    sub_1B7988950(v15, v6);
    sub_1B7988950(v12, &v6[v20]);
    v21 = *(v1 + 48);
    if (v21(v6, 1, v0) == 1)
    {
      sub_1B7957888(v12, &qword_1EBA45FD0, &unk_1B7A9C8B0);
      sub_1B7957888(v15, &qword_1EBA45FD0, &unk_1B7A9C8B0);
      if (v21(&v6[v20], 1, v0) == 1)
      {
        sub_1B7957888(v6, &qword_1EBA45FD0, &unk_1B7A9C8B0);
        v19 = 0;
        return v19 & 1;
      }
    }

    else
    {
      sub_1B7988950(v6, v9);
      if (v21(&v6[v20], 1, v0) != 1)
      {
        (*(v1 + 32))(v3, &v6[v20], v0);
        sub_1B798B0CC(&qword_1EBA45FE0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
        v22 = sub_1B7A9A470();
        v23 = *(v1 + 8);
        v23(v3, v0);
        sub_1B7957888(v12, &qword_1EBA45FD0, &unk_1B7A9C8B0);
        sub_1B7957888(v15, &qword_1EBA45FD0, &unk_1B7A9C8B0);
        v23(v9, v0);
        sub_1B7957888(v6, &qword_1EBA45FD0, &unk_1B7A9C8B0);
        v19 = v22 ^ 1;
        return v19 & 1;
      }

      sub_1B7957888(v12, &qword_1EBA45FD0, &unk_1B7A9C8B0);
      sub_1B7957888(v15, &qword_1EBA45FD0, &unk_1B7A9C8B0);
      (*(v1 + 8))(v9, v0);
    }

    sub_1B7957888(v6, &qword_1EBA45FC8, &unk_1B7AA0BE0);
    v19 = 1;
  }

  return v19 & 1;
}

uint64_t ShelfGridVerticalLayoutLonelyItemSpan.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B79874DC()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7987524()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7987568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B798B124(&qword_1EBA46458, &qword_1EBA46460, &unk_1B7A9D160, sub_1B7988D24);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.verticalShelfGridLonelyItemSupport(_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  v5 = sub_1B7A97590();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  v9 = *a1;
  swift_getKeyPath();
  v13 = v9 != 2;
  sub_1B7A98150();

  swift_getKeyPath();
  v13 = v9;
  v10 = sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0, MEMORY[0x1E6980A18]);
  v12[1] = a3;
  v12[2] = v10;
  swift_getWitnessTable();
  sub_1B7A98150();

  return (*(v6 + 8))(v8, v5);
}

void *sub_1B79877BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B798A858(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

void *sub_1B7987858(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B798A804(x0_0, a2, a3);

  return sub_1B7A97890();
}

void *sub_1B79878A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B798A804(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

void *sub_1B798793C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46440, &qword_1B7A9D0D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46448, &unk_1B7A9D0E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7987A98(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46400, &qword_1B7A9D0B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408, &qword_1B7A9D0C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7987BE0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463D8, &qword_1B7A9D090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463E0, &qword_1B7A9D098);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7987D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46450, &qword_1B7A9D158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7987E34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463F0, &qword_1B7A9D0A8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B7987F68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

char *sub_1B7988144(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463F8, &qword_1B7A9D0B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

BOOL sub_1B7988250(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  sub_1B7A96CB0();

  v4 = *(a1 + 16);
  swift_getKeyPath();
  sub_1B7A96CB0();

  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1B7A96CB0();

  v5 = *(a1 + 24);
  swift_getKeyPath();
  sub_1B7A96CB0();

  return v5 == *(a2 + 24);
}

unint64_t sub_1B7988414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA45F88;
  if (!qword_1EBA45F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45F88);
  }

  return result;
}

unint64_t sub_1B7988468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA45F90;
  if (!qword_1EBA45F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45F90);
  }

  return result;
}

uint64_t sub_1B79884FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for ShelfPage(0, v5, v6, v7) - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_1B7980740(a1, v9, v5, v6, v7, a2);
}

uint64_t sub_1B79885A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v15[0] = v3[2];
  v7 = v15[0];
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v12 = *(type metadata accessor for _ShelfPageStaticContent(0, v15) - 8);
  v13 = v3 + ((*(v12 + 80) + 56) & ~*(v12 + 80));

  return sub_1B7982E80(a1, a2, v13, v7, v8, v9, v10, v11, a3);
}

unint64_t sub_1B79886C8()
{
  result = qword_1EBA45FB8;
  if (!qword_1EBA45FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FB0, &qword_1B7A9C7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FB8);
  }

  return result;
}

uint64_t sub_1B7988744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v15 = v3[3];
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[8];
  v9 = v3[9];
  v11 = v3[10];
  v10 = v3[11];
  v12 = v3[12];
  v20[0] = v3[2];
  v16 = v20[0];
  v20[1] = v15;
  v20[2] = v4;
  v20[3] = v5;
  v20[4] = v6;
  v20[5] = v7;
  v20[6] = v8;
  v20[7] = v9;
  v20[8] = v11;
  v20[9] = v10;
  v20[10] = v12;
  v13 = *(type metadata accessor for _ShelfPageContinuousContent(0, v20) - 8);
  return sub_1B7983E54(a1, a2, v3 + ((*(v13 + 80) + 104) & ~*(v13 + 80)), v16, v15, v4, v5, v6, a3, v7, v8, v9, v11, v10, v12);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1B79888A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA45FC0;
  if (!qword_1EBA45FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FC0);
  }

  return result;
}

unint64_t sub_1B79888FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA45FD8;
  if (!qword_1EBA45FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FD8);
  }

  return result;
}

uint64_t sub_1B7988950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FD0, &unk_1B7A9C8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7988A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA45FF8;
  if (!qword_1EBA45FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FF8);
  }

  return result;
}

unint64_t sub_1B7988AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46000;
  if (!qword_1EBA46000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46000);
  }

  return result;
}

unint64_t sub_1B7988B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46008;
  if (!qword_1EBA46008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46008);
  }

  return result;
}

unint64_t sub_1B7988B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46010;
  if (!qword_1EBA46010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46010);
  }

  return result;
}

uint64_t sub_1B7988BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7988C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B7988D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46018[0];
  if (!qword_1EBA46018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA46018);
  }

  return result;
}

void sub_1B7988D78(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B7989190();
    if (v2 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v3 <= 0x3F)
      {
        sub_1B79891E0(319);
        if (v4 <= 0x3F)
        {
          sub_1B7989244(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B7988E50(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1B7988FAC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 23] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1B7989190()
{
  if (!qword_1EBA460A0)
  {
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA460A0);
    }
  }
}

void sub_1B79891E0(uint64_t a1)
{
  if (!qword_1EBA460A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA460B0, qword_1B7A9CCB0);
    v1 = sub_1B7A9A6E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA460A8);
    }
  }
}

void sub_1B7989244(uint64_t a1)
{
  if (!qword_1EBA460B8[0])
  {
    type metadata accessor for ShelfContainerEnvironmentValues(255);
    v1 = sub_1B7A98700();
    if (!v2)
    {
      atomic_store(v1, qword_1EBA460B8);
    }
  }
}

uint64_t sub_1B798929C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1B7A9AB60();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7989370(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(v8 - 8) + 64);
  }

  else
  {
    v14 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = ((v14 + v13 + (v15 & ~v13)) & ~v13) + v14;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v23 = (*(v9 + 48))((a1 + v15) & ~v13);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_1B798962C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v10 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v10 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v18] = 0;
    }

    else if (v10)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 >= v13)
      {
        v28 = *(v8 + 56);

        v28(a1, a2, v9, AssociatedTypeWitness);
      }

      else
      {
        v24 = (&a1[v16] & ~v15);
        if (v13 >= a2)
        {
          v29 = *(v11 + 56);

          v29(v24, (a2 + 1));
        }

        else
        {
          if (v17 <= 3)
          {
            v25 = ~(-1 << (8 * v17));
          }

          else
          {
            v25 = -1;
          }

          if (v17)
          {
            v26 = v25 & (~v13 + a2);
            if (v17 <= 3)
            {
              v27 = v17;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v17);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v21 = ~v14 + a2;
  if (v18 >= 4)
  {
    bzero(a1, ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17);
    *a1 = v21;
    v22 = 1;
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_58:
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v10 > 1)
    {
LABEL_62:
      if (v10 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v10 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v10)
  {
    a1[v18] = v22;
  }
}

unint64_t sub_1B7989A28(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7989AB0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1B7989BEC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_1B7989DAC(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResult(255, AssociatedTypeWitness, v5, v6);
      sub_1B7A9A6E0();
      result = sub_1B7A98700();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B7989EF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1B798A05C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1B798A248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B798A284(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B798A2CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B798A32C(uint64_t a1)
{
  result = sub_1B7A96CF0();
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

uint64_t getEnumTagSinglePayload for ShelfGridVerticalLayoutLonelyItemSpan(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShelfGridVerticalLayoutLonelyItemSpan(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1B7A97590();
  sub_1B797EC34(a4, a2, a3, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B798A5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B798A630@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = v4;
  result = (*(v6 + 8))(&v8, v5, v6);
  *a2 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_1B798A714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA463C0;
  if (!qword_1EBA463C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA463C0);
  }

  return result;
}

unint64_t sub_1B798A768()
{
  result = qword_1EBA463C8;
  if (!qword_1EBA463C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA463D0, &qword_1B7A9D088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA463C8);
  }

  return result;
}

double sub_1B798A7E4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

double sub_1B798A7F4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

unint64_t sub_1B798A804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46418;
  if (!qword_1EBA46418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46418);
  }

  return result;
}

unint64_t sub_1B798A858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46420;
  if (!qword_1EBA46420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46420);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B798A910@<X0>(char *a1@<X8>)
{
  v17 = v1[4];
  v18 = v1[3];
  v3 = v1[6];
  v15 = v1[7];
  v16 = v1[5];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v20[0] = v1[2];
  v2 = v20[0];
  v20[1] = v18;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v3;
  v20[5] = v15;
  v20[6] = v4;
  v20[7] = v5;
  v20[8] = v6;
  v20[9] = v7;
  v20[10] = v8;
  v9 = *(type metadata accessor for _ShelfPageContinuousContent(0, v20) - 8);
  v10 = (*(v9 + 80) + 104) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v13 = *(type metadata accessor for ShelfPageContext(0, v2, v3, v12) - 8);
  return sub_1B7984EC8(v1 + v10, v1 + ((v11 + *(v13 + 80)) & ~*(v13 + 80)), v17, a1);
}

uint64_t sub_1B798AA58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v18 = v2[4];
  v19 = v2[3];
  v4 = v2[6];
  v16 = v2[7];
  v17 = v2[5];
  v6 = v2[8];
  v5 = v2[9];
  v8 = v2[10];
  v7 = v2[11];
  v9 = v2[12];
  v22[0] = v2[2];
  v3 = v22[0];
  v22[1] = v19;
  v22[2] = v18;
  v22[3] = v17;
  v22[4] = v4;
  v22[5] = v16;
  v22[6] = v6;
  v22[7] = v5;
  v22[8] = v8;
  v22[9] = v7;
  v22[10] = v9;
  v10 = *(type metadata accessor for _ShelfPageContinuousContent(0, v22) - 8);
  v11 = (*(v10 + 80) + 104) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  v14 = *(type metadata accessor for ShelfPageContext(0, v3, v4, v13) - 8);
  return sub_1B798504C(a1, v2 + v11, v2 + ((v12 + *(v14 + 80)) & ~*(v14 + 80)), v19, a2);
}

uint64_t objectdestroy_98Tm()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  v21[0] = *(v0 + 16);
  v20 = *&v21[0];
  v3 = *(v0 + 64);
  v19 = *(v0 + 48);
  v21[1] = v2;
  v21[2] = v19;
  v4 = *(v0 + 80);
  v21[3] = v3;
  v21[4] = v4;
  v22 = v1;
  v5 = *(type metadata accessor for _ShelfPageContinuousContent(0, v21) - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v9 = type metadata accessor for ShelfPageContext(0, v20, v19, v8);
  v10 = (v7 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  (*(*(v20 - 8) + 8))(v0 + v6, v20);

  v11 = v0 + v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v10, AssociatedTypeWitness);
  v13 = *(v9 + 36);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!v16(v11 + v13, 1, v14))
  {
    (*(v15 + 8))(v11 + v13, v14);
  }

  v17 = *(v9 + 40);
  if (!v16(v11 + v17, 1, v14))
  {
    (*(v15 + 8))(v11 + v17, v14);
  }

  return swift_deallocObject();
}

uint64_t sub_1B798AEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v20 = v4[4];
  v21 = v4[3];
  v6 = v4[6];
  v18 = v4[7];
  v19 = v4[5];
  v8 = v4[8];
  v7 = v4[9];
  v10 = v4[10];
  v9 = v4[11];
  v11 = v4[12];
  v26[0] = v4[2];
  v5 = v26[0];
  v26[1] = v21;
  v26[2] = v20;
  v26[3] = v19;
  v26[4] = v6;
  v26[5] = v18;
  v26[6] = v8;
  v26[7] = v7;
  v26[8] = v10;
  v26[9] = v9;
  v26[10] = v11;
  v12 = *(type metadata accessor for _ShelfPageContinuousContent(0, v26) - 8);
  v13 = (*(v12 + 80) + 104) & ~*(v12 + 80);
  v14 = v13 + *(v12 + 64);
  v16 = *(type metadata accessor for ShelfPageContext(0, v5, v6, v15) - 8);
  return sub_1B79851DC(a1, a2, a3, v4 + v13, v4 + ((v14 + *(v16 + 80)) & ~*(v16 + 80)), a4, v19);
}

uint64_t sub_1B798B020(__int128 *a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(type metadata accessor for ShelfPage(0, v3, v4, v5) - 8);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1 + ((*(v6 + 80) + 88) & ~*(v6 + 80));

  return sub_1B7981EF8(a1, v13, v3, v4, v5, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B798B0CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B798B124(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t MediaArtwork.BundleImageProtocol.Configuration.withAllowedBundles<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  *a4 = *v4;
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1B797D54C();

  v9 = sub_1B7A9A6F0();

  *a4 = v9;
  return result;
}

uint64_t MediaArtwork.BundleImageProtocol.Configuration.addingAllowedBundle(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  *a2 = *v3;

  v6 = a1;
  MEMORY[0x1B8CAB860]();
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7A9A660();
  }

  return sub_1B7A9A6B0();
}

uint64_t sub_1B798B374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v68 = sub_1B7A993E0();
  v3 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v62 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  v11 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource(0);
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v14 + 24);
  v16 = sub_1B7A98660();
  v66 = *(v16 - 8);
  v17 = *(v66 + 56);
  v70 = v66 + 56;
  v71 = v16;
  v69 = v17;
  (v17)(v13 + v15, 1, 1);
  v18 = *(v11 + 28);
  v19 = sub_1B7A98610();
  v67 = *(v19 - 8);
  v20 = *(v67 + 56);
  v73 = v19;
  v74 = v20;
  v75 = v67 + 56;
  (v20)(v13 + v18, 1, 1);
  v21 = sub_1B7A99030();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    v43 = sub_1B7A99050();
    (*(*(v43 - 8) + 8))(a1, v43);
    sub_1B7957888(v13 + v15, &qword_1EBA464A8, &qword_1B7A9D228);
    sub_1B7957888(v13 + v18, &qword_1EBA464B0, &qword_1B7A9D230);
    return (*(v76 + 56))(v77, 1, 1, v11);
  }

  v63 = v15;
  v64 = v18;
  v65 = v11;
  *v13 = sub_1B7A99030();
  v13[1] = v25;
  sub_1B7A99040();
  v26 = sub_1B7A993F0();
  v28 = v27;
  v29 = *(v3 + 8);
  v30 = v68;
  v29(v10, v68);
  v13[2] = v26;
  v13[3] = v28;
  v31 = v13;
  v32 = a1;
  sub_1B7A99040();
  v33 = sub_1B7A993F0();
  v35 = v34;
  v29(v7, v30);
  v36 = v76;
  v37 = v73;
  if (v35)
  {
    if (v33 == 0x6C616E696769726FLL && v35 == 0xE800000000000000 || (sub_1B7A9AE80() & 1) != 0)
    {

      v38 = v31;
      v39 = v63;
      sub_1B7957888(v31 + v63, &qword_1EBA464A8, &qword_1B7A9D228);
      v40 = MEMORY[0x1E6981688];
LABEL_9:
      v41 = v71;
      (*(v66 + 104))(v31 + v39, *v40, v71);
      v42 = 0;
      goto LABEL_17;
    }

    if (v33 == 0x6574616C706D6574 && v35 == 0xE800000000000000)
    {

LABEL_15:
      v38 = v31;
      v39 = v63;
      sub_1B7957888(v31 + v63, &qword_1EBA464A8, &qword_1B7A9D228);
      v40 = MEMORY[0x1E6981698];
      goto LABEL_9;
    }

    v45 = sub_1B7A9AE80();

    if (v45)
    {
      goto LABEL_15;
    }
  }

  v38 = v31;
  v39 = v63;
  sub_1B7957888(v31 + v63, &qword_1EBA464A8, &qword_1B7A9D228);
  v42 = 1;
  v41 = v71;
LABEL_17:
  v69(v38 + v39, v42, 1, v41);
  v46 = v72;
  sub_1B7A99040();
  v47 = sub_1B7A993F0();
  v49 = v48;
  v29(v46, v30);
  if (!v49)
  {
    v55 = sub_1B7A99050();
    (*(*(v55 - 8) + 8))(v32, v55);
    v50 = v77;
    goto LABEL_24;
  }

  v50 = v77;
  if ((v47 != 1701736302 || v49 != 0xE400000000000000) && (sub_1B7A9AE80() & 1) == 0)
  {
    if (v47 == 7827308 && v49 == 0xE300000000000000 || (sub_1B7A9AE80() & 1) != 0)
    {

      v57 = sub_1B7A99050();
      (*(*(v57 - 8) + 8))(v32, v57);
      v52 = v64;
      sub_1B7957888(v38 + v64, &qword_1EBA464B0, &qword_1B7A9D230);
      v53 = MEMORY[0x1E6981640];
      goto LABEL_22;
    }

    if (v47 == 0x6D756964656DLL && v49 == 0xE600000000000000 || (sub_1B7A9AE80() & 1) != 0)
    {

      v58 = sub_1B7A99050();
      (*(*(v58 - 8) + 8))(v32, v58);
      v52 = v64;
      sub_1B7957888(v38 + v64, &qword_1EBA464B0, &qword_1B7A9D230);
      v53 = MEMORY[0x1E6981658];
      goto LABEL_22;
    }

    if (v47 == 1751607656 && v49 == 0xE400000000000000)
    {

      v59 = sub_1B7A99050();
      (*(*(v59 - 8) + 8))(v32, v59);
LABEL_39:
      v52 = v64;
      sub_1B7957888(v38 + v64, &qword_1EBA464B0, &qword_1B7A9D230);
      v53 = MEMORY[0x1E6981648];
      goto LABEL_22;
    }

    v60 = sub_1B7A9AE80();

    v61 = sub_1B7A99050();
    (*(*(v61 - 8) + 8))(v32, v61);
    if (v60)
    {
      goto LABEL_39;
    }

LABEL_24:
    v52 = v64;
    sub_1B7957888(v38 + v64, &qword_1EBA464B0, &qword_1B7A9D230);
    v54 = 1;
    goto LABEL_25;
  }

  v51 = sub_1B7A99050();
  (*(*(v51 - 8) + 8))(v32, v51);
  v52 = v64;
  sub_1B7957888(v38 + v64, &qword_1EBA464B0, &qword_1B7A9D230);
  v53 = MEMORY[0x1E6981650];
LABEL_22:
  (*(v67 + 104))(v38 + v52, *v53, v37);
  v54 = 0;
LABEL_25:
  v56 = v65;
  v74(v38 + v52, v54, 1, v37);
  sub_1B798D484(v38, v50);
  (*(v36 + 56))(v50, 0, 1, v56);
  return sub_1B798D4E8(v38);
}

uint64_t sub_1B798BC80()
{
  v0 = sub_1B7A99080();
  __swift_allocate_value_buffer(v0, qword_1EBA46468);
  __swift_project_value_buffer(v0, qword_1EBA46468);
  return sub_1B7A99060();
}

id _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE19BundleImageProtocolV13ConfigurationVAHycfC_0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480, &unk_1B7A9D190);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7A9D170;
  result = [objc_opt_self() mainBundle];
  *(v2 + 32) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1B798BDD0(void *a1)
{
  v5 = sub_1B7A96C60();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A96C90();
  v100 = *(v7 - 8);
  v101 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7A96D70();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v96 = (&v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource(0);
  MEMORY[0x1EEE9AC00](v91);
  v95 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464B0, &qword_1B7A9D230);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v92 = &v82 - v14;
  v94 = sub_1B7A98610();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v87 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A8, &qword_1B7A9D228);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v86 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v82 - v19;
  v90 = sub_1B7A98660();
  v89 = *(v90 - 8);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v90);
  v85 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  *&v104 = *v1;
  v23 = v104 >> 62;
  v97 = a1;
  if (v22)
  {
    v24 = a1[2];
    v25 = v22;
LABEL_3:
    v102 = v24;
    v103 = v25;
    v84 = v2;
    v83 = v9;
    v82 = v10;
    v26 = v104;
    if (v23)
    {
      v27 = sub_1B7A9AD90();
    }

    else
    {
      v27 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27)
    {
      v28 = 0;
      v29 = v26 & 0xC000000000000001;
      v30 = v26 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v29)
        {
          v31 = MEMORY[0x1B8CABED0](v28, v26);
        }

        else
        {
          if (v28 >= *(v30 + 16))
          {
            goto LABEL_45;
          }

          v31 = *(v26 + 8 * v28 + 32);
        }

        v32 = v31;
        v33 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v34 = [v31 bundleIdentifier];
        if (v34)
        {
          v35 = v34;
          v9 = sub_1B7A9A4B0();
          v37 = v36;

          if (v9 == v102 && v37 == v103)
          {

LABEL_29:
            v43 = sub_1B7A9A480();
            v44 = [objc_opt_self() bundleWithIdentifier_];

            if (!v44)
            {
              break;
            }

            v45 = v97;

            v3 = v44;
            v9 = sub_1B7A985D0();
            v46 = v91;
            v47 = v45 + *(v91 + 24);
            v48 = v88;
            sub_1B7957820(v47, v88, &qword_1EBA464A8, &qword_1B7A9D228);
            v49 = v89;
            v50 = v90;
            if ((*(v89 + 48))(v48, 1, v90) == 1)
            {
              sub_1B7957888(v48, &qword_1EBA464A8, &qword_1B7A9D228);
            }

            else
            {
              v59 = v85;
              (*(v49 + 32))(v85, v48, v50);
              v60 = v86;
              (*(v49 + 16))(v86, v59, v50);
              (*(v49 + 56))(v60, 0, 1, v50);
              v61 = sub_1B7A98630();

              sub_1B7957888(v60, &qword_1EBA464A8, &qword_1B7A9D228);
              (*(v49 + 8))(v59, v50);
              v9 = v61;
            }

            a1 = v96;
            v22 = v95;
            v62 = v94;
            v63 = v93;
            v64 = v92;
            sub_1B7957820(v97 + *(v46 + 28), v92, &qword_1EBA464B0, &qword_1B7A9D230);
            if ((*(v63 + 48))(v64, 1, v62) == 1)
            {
              sub_1B7957888(v64, &qword_1EBA464B0, &qword_1B7A9D230);
            }

            else
            {
              v65 = v87;
              (*(v63 + 32))(v87, v64, v62);
              v66 = sub_1B7A98620();

              (*(v63 + 8))(v65, v62);
              v9 = v66;
            }

            if (qword_1EBA45B80 == -1)
            {
LABEL_41:
              v67 = sub_1B7A96DA0();
              __swift_project_value_buffer(v67, qword_1EBA507B8);
              sub_1B798D484(v97, v22);
              v68 = v103;

              sub_1B7A96D60();
              v69 = sub_1B7A96D90();
              v70 = sub_1B7A9AAA0();

              if (sub_1B7A9AB50())
              {
                v71 = swift_slowAlloc();
                LODWORD(v101) = v70;
                v72 = v71;
                v73 = swift_slowAlloc();
                *&v104 = v3;
                v74 = v73;
                v105 = v73;
                *v72 = 136315394;
                v75 = v22;
                v76 = *v22;
                v77 = v22[1];

                sub_1B798D4E8(v75);
                v78 = sub_1B79A6340(v76, v77, &v105);

                *(v72 + 4) = v78;
                *(v72 + 12) = 2080;
                v79 = sub_1B79A6340(v102, v68, &v105);

                *(v72 + 14) = v79;
                v80 = v96;
                v81 = sub_1B7A96D50();
                _os_signpost_emit_with_name_impl(&dword_1B7954000, v69, v101, v81, "Image.BundleImageLoad", "name=%s,bundleID=%s", v72, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1B8CACB70](v74, -1, -1);
                MEMORY[0x1B8CACB70](v72, -1, -1);

                (*(v82 + 8))(v80, v83);
              }

              else
              {

                (*(v82 + 8))(a1, v83);
                sub_1B798D4E8(v22);
              }

              return v9;
            }

LABEL_52:
            swift_once();
            goto LABEL_41;
          }

          v9 = sub_1B7A9AE80();

          v26 = v104;
          if (v9)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        ++v28;
      }

      while (v33 != v27);
    }

    goto LABEL_33;
  }

  if (v23)
  {
    if (!sub_1B7A9AD90())
    {
      goto LABEL_33;
    }
  }

  else if (!*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  if ((v104 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1B8CABED0](0, v20);
  }

  else
  {
    if (!*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_52;
    }

    v39 = *(v104 + 32);
  }

  v40 = v39;
  v41 = [v39 bundleIdentifier];

  if (v41)
  {
    v24 = sub_1B7A9A4B0();
    v25 = v42;

    goto LABEL_3;
  }

LABEL_33:
  if (qword_1EBA45B78 != -1)
  {
LABEL_46:
    swift_once();
  }

  v51 = sub_1B7A9A280();
  __swift_project_value_buffer(v51, qword_1EBA507A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
  sub_1B7A98D10();
  v52 = swift_allocObject();
  v104 = xmmword_1B7A9C180;
  *(v52 + 16) = xmmword_1B7A9C180;
  sub_1B7A98C40();
  sub_1B7A99E50();

  sub_1B7A96C50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464E0, &unk_1B7AA07D0);
  inited = swift_initStackObject();
  *(inited + 16) = v104;
  *(inited + 32) = sub_1B7A9A4B0();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v54;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x80000001B7AC4FA0;
  sub_1B798FF28(inited);
  swift_setDeallocating();
  sub_1B7957888(inited + 32, &qword_1EBA464E8, &unk_1B7A9D260);
  sub_1B798D42C(v55);
  v56 = v98;
  v57 = v101;
  sub_1B7A96AF0();
  sub_1B7A96C70();
  (*(v100 + 8))(v56, v57);
  swift_willThrow();
  return v9;
}

uint64_t MediaArtwork.BundleImageProtocol.match(_:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46488, &qword_1B7A9FC70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1B7A99050();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  if (qword_1EBA45B30 != -1)
  {
    swift_once();
  }

  v13 = sub_1B7A99080();
  __swift_project_value_buffer(v13, qword_1EBA46468);
  sub_1B7A99070();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B7957888(v5, &qword_1EBA46488, &qword_1B7A9FC70);
    v14 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource(0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_1B798B374(v9, a2);
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource(uint64_t a1)
{
  result = qword_1EBA464B8;
  if (!qword_1EBA464B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaArtwork.BundleImageProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46490, &qword_1B7A9D1A0);
  sub_1B798BDD0((a1 + *(v2 + 28)));
  return sub_1B7A98BE0();
}

uint64_t sub_1B798CDF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  v3 = v2;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1B798CE6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B798CDD4(a1, v4);
}

unint64_t sub_1B798CF1C()
{
  result = qword_1EBA46498;
  if (!qword_1EBA46498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA464A0, &qword_1B7AA4600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46498);
  }

  return result;
}

uint64_t sub_1B798CFA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46490, &qword_1B7A9D1A0);
  sub_1B798BDD0((a1 + *(v2 + 28)));
  return sub_1B7A98BE0();
}

uint64_t getEnumTagSinglePayload for JetStartUpCoordinator(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for JetStartUpCoordinator(uint64_t result, int a2, int a3)
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

void sub_1B798D160(uint64_t a1)
{
  sub_1B7958EAC();
  if (v1 <= 0x3F)
  {
    sub_1B798D244(319, &qword_1EBA464C8, MEMORY[0x1E69816A0]);
    if (v2 <= 0x3F)
    {
      sub_1B798D244(319, &qword_1EBA464D0, MEMORY[0x1E6981660]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B798D244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7A9AB60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B798D298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D338;

  return sub_1B798CDD4(a1, v4);
}

uint64_t sub_1B798D338()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B798D42C(double a1)
{
  result = qword_1EBA464F0;
  if (!qword_1EBA464F0)
  {
    sub_1B7A96C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA464F0);
  }

  return result;
}

uint64_t sub_1B798D484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B798D4E8(uint64_t a1)
{
  v2 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s18_JetEngine_SwiftUI16LocalizerRequestV14formattedCountyACSiFZ_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9C180;
  *(inited + 32) = 0x746E756F63;
  *(inited + 40) = 0xE500000000000000;
  sub_1B7A9AC20();
  v5 = sub_1B7990058(inited);
  swift_setDeallocating();
  sub_1B7990A08(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  a2[2] = v6;
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = sub_1B7991598;
  a2[1] = result;
  return result;
}

uint64_t _s18_JetEngine_SwiftUI16LocalizerRequestV8fileSize8forBytesACSd_tFZ_0@<X0>(void *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9C180;
  *(inited + 32) = 0x7365747962;
  *(inited + 40) = 0xE500000000000000;
  sub_1B7A9AC20();
  v5 = sub_1B7990058(inited);
  swift_setDeallocating();
  sub_1B7990A08(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  a1[2] = v6;
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = sub_1B7991548;
  a1[1] = result;
  return result;
}

uint64_t sub_1B798D784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v27 = a3;
  v28 = sub_1B7A99B70();
  v26 = *(v28 - 8);
  v29 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7A96BF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 32) = 1702125924;
  *(inited + 16) = xmmword_1B7A9D270;
  *(inited + 40) = 0xE400000000000000;
  (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_1B79907AC(&qword_1EBA46558, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v6;
  sub_1B7A9AC20();
  strcpy((inited + 88), "lookupStrategy");
  *(inited + 103) = -18;
  v30 = sub_1B7A99B60();
  sub_1B7A9AC20();
  v10 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528, &qword_1B7A9D2C8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v10;
  v12 = v27;
  v27[2] = v11;
  v13 = *(v7 + 32);
  v13(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = v26 + 32;
  v15 = *(v26 + 32);
  v16 = v25;
  v17 = v28;
  v15(v25, a2, v28);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = (v8 + *(v14 + 48) + v18) & ~*(v14 + 48);
  v20 = swift_allocObject();
  v13((v20 + v18), v24, v23);
  result = (v15)(v20 + v19, v16, v17);
  *v12 = sub_1B799145C;
  v12[1] = v20;
  return result;
}

uint64_t static LocalizerRequest.string(forKey:with:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v27 = a3;
  v28 = a2;
  v25 = a1;
  v26 = a5;
  v7 = sub_1B7A99B70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = *(v8 + 16);
  v15(&v25 - v13, a4, v7, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D280;
  *(inited + 32) = 7955819;
  *(inited + 40) = 0xE300000000000000;
  v29 = a1;
  v30 = v28;

  sub_1B7A9AC20();
  strcpy((inited + 88), "replacements");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v29 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46500, &qword_1B7A9D2B8);
  sub_1B798DEDC();
  sub_1B7A9AC20();
  strcpy((inited + 144), "lookupStrategy");
  *(inited + 159) = -18;
  (v15)(v10, v14, v7);
  sub_1B79907AC(&qword_1EBA46520, MEMORY[0x1E69AB390], MEMORY[0x1E69AB398]);
  sub_1B7A9AC20();
  v17 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528, &qword_1B7A9D2C8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v17;
  v19 = v26;
  v26[2] = v18;
  v20 = *(v8 + 32);
  v20(v10, v14, v7);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 2) = v25;
  *(v22 + 3) = v23;
  *(v22 + 4) = v27;
  v20(&v22[v21], v10, v7);
  *v19 = sub_1B7990190;
  v19[1] = v22;
}

unint64_t sub_1B798DEDC()
{
  result = qword_1EBA46508;
  if (!qword_1EBA46508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46500, &qword_1B7A9D2B8);
    sub_1B798DF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46508);
  }

  return result;
}

unint64_t sub_1B798DF60()
{
  result = qword_1EBA46510;
  if (!qword_1EBA46510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46518, &qword_1B7A9D2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46510);
  }

  return result;
}

uint64_t static LocalizerRequest.string(forKey:with:defaultValue:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v51 = a3;
  v52 = a2;
  v45 = a1;
  v53 = a6;
  v9 = sub_1B7A99B70();
  v54 = *(v9 - 8);
  v10 = v54;
  v49 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v46 = sub_1B7A99A50();
  v44 = *(v46 - 8);
  v48 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  (*(v20 + 16))(&v42 - v18, a4, v17);
  v21 = *(v10 + 16);
  v43 = v14;
  v21(v14, a5, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D290;
  *(inited + 32) = 7955819;
  *(inited + 40) = 0xE300000000000000;
  v55 = a1;
  v56 = v52;

  sub_1B7A9AC20();
  strcpy((inited + 88), "replacements");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v55 = v51;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46500, &qword_1B7A9D2B8);
  sub_1B798DEDC();
  sub_1B7A9AC20();
  strcpy((inited + 144), "defaultValue");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v55 = sub_1B7A99A40();
  v56 = v23;
  sub_1B7A9AC20();
  strcpy((inited + 200), "lookupStrategy");
  *(inited + 215) = -18;
  v24 = v50;
  v21(v50, v14, v9);
  sub_1B79907AC(&qword_1EBA46520, MEMORY[0x1E69AB390], MEMORY[0x1E69AB398]);
  v25 = v24;
  v26 = v9;
  v42 = v9;
  sub_1B7A9AC20();
  v27 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528, &qword_1B7A9D2C8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = v27;
  v53[2] = v28;
  v29 = v44 + 32;
  v44 = *(v44 + 32);
  v30 = v46;
  v31 = v47;
  (v44)(v47, v19, v46);
  v33 = *(v54 + 32);
  v54 += 32;
  v32 = v54;
  v33(v25, v43, v26);
  v34 = (*(v29 + 48) + 40) & ~*(v29 + 48);
  v35 = (v48 + *(v32 + 48) + v34) & ~*(v32 + 48);
  v36 = swift_allocObject();
  v37 = v44;
  v38 = v51;
  v39 = v52;
  *(v36 + 2) = v45;
  *(v36 + 3) = v39;
  *(v36 + 4) = v38;
  v37(&v36[v34], v31, v30);
  v33(&v36[v35], v50, v42);
  v40 = v53;
  *v53 = sub_1B799023C;
  v40[1] = v36;
}

id sub_1B798E568@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a5;
  v39 = a2;
  v40 = a4;
  v38 = a3;
  v46 = a11;
  v45 = a10;
  v42 = sub_1B7A99570();
  v17 = *(v42 - 8);
  v44 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v37[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v37[-v21];
  (*(v17 + 16))(&v37[-v21], a6, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D290;
  *(inited + 32) = a7;
  *(inited + 40) = a8;
  v48 = a1;
  sub_1B799034C();
  sub_1B79907AC(&qword_1EBA46540, sub_1B799034C, MEMORY[0x1E69E81B8]);
  v47 = a1;
  sub_1B7A9AC20();
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x80000001B7AC5090;
  v48 = a2;
  v38 &= 1u;
  LOBYTE(v49) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46548, &qword_1B7A9D540);
  sub_1B7990398();
  sub_1B7A9AC20();
  *(inited + 144) = 0xD000000000000015;
  *(inited + 152) = 0x80000001B7AC50B0;
  v24 = v40;
  v48 = v40;
  LOBYTE(a1) = v41 & 1;
  LOBYTE(v49) = v41 & 1;
  sub_1B7A9AC20();
  *(inited + 200) = 0x747865746E6F63;
  *(inited + 208) = 0xE700000000000000;
  v48 = sub_1B7A99560();
  v49 = v25;
  sub_1B7A9AC20();
  v26 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528, &qword_1B7A9D2C8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = v26;
  v28 = a9;
  a9[2] = v27;
  v29 = *(v17 + 32);
  v30 = v42;
  v31 = v43;
  v29(v43, v22, v42);
  v32 = (*(v17 + 80) + 49) & ~*(v17 + 80);
  v33 = swift_allocObject();
  v34 = v39;
  *(v33 + 16) = v47;
  *(v33 + 24) = v34;
  *(v33 + 32) = v38;
  *(v33 + 40) = v24;
  *(v33 + 48) = a1;
  v29((v33 + v32), v31, v30);
  v35 = v47;
  *v28 = v46;
  v28[1] = v33;

  return v35;
}

uint64_t static LocalizerRequest.string(withCount:forKey:with:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v29 = a4;
  v31 = a2;
  v32 = a1;
  v34 = a6;
  v10 = sub_1B7A99B70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  (*(v11 + 16))(&v28 - v15, a5, v10, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D290;
  *(inited + 32) = 0x746E756F63;
  *(inited + 40) = 0xE500000000000000;
  v35 = a1;
  sub_1B7A9AC20();
  *(inited + 88) = 7955819;
  *(inited + 96) = 0xE300000000000000;
  v35 = a2;
  v36 = a3;
  v30 = a3;

  sub_1B7A9AC20();
  strcpy((inited + 144), "replacements");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v18 = v29;
  v35 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46500, &qword_1B7A9D2B8);
  sub_1B798DEDC();
  sub_1B7A9AC20();
  strcpy((inited + 200), "lookupStrategy");
  *(inited + 215) = -18;
  v35 = sub_1B7A99B60();
  sub_1B7A9AC20();
  v19 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528, &qword_1B7A9D2C8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  v21 = v33;
  v22 = v34;
  v34[2] = v20;
  v23 = *(v11 + 32);
  v23(v21, v16, v10);
  v24 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = v31;
  *(v25 + 2) = v32;
  *(v25 + 3) = v26;
  *(v25 + 4) = v30;
  *(v25 + 5) = v18;
  v23(&v25[v24], v21, v10);
  *v22 = sub_1B79905E0;
  v22[1] = v25;
}

uint64_t static LocalizerRequest.string(withCount:forKey:with:defaultValue:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v49 = a4;
  v50 = a3;
  v42 = a2;
  v43 = a1;
  v52 = a7;
  v11 = sub_1B7A99B70();
  v44 = v11;
  v12 = *(v11 - 8);
  v48 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v45 = sub_1B7A99A50();
  v17 = *(v45 - 8);
  v46 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v51 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  (*(v17 + 16))(&v39 - v21, a5, v20);
  (*(v12 + 16))(v16, a6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D2A0;
  *(inited + 32) = 0x746E756F63;
  *(inited + 40) = 0xE500000000000000;
  v53 = a1;
  sub_1B7A9AC20();
  *(inited + 88) = 7955819;
  *(inited + 96) = 0xE300000000000000;
  v53 = a2;
  v54 = v50;

  sub_1B7A9AC20();
  strcpy((inited + 144), "replacements");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v53 = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46500, &qword_1B7A9D2B8);
  sub_1B798DEDC();
  sub_1B7A9AC20();
  strcpy((inited + 200), "defaultValue");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v53 = sub_1B7A99A40();
  v54 = v24;
  sub_1B7A9AC20();
  strcpy((inited + 256), "lookupStrategy");
  *(inited + 271) = -18;
  v53 = sub_1B7A99B60();
  sub_1B7A9AC20();
  v25 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528, &qword_1B7A9D2C8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v25;
  v52[2] = v26;
  v41 = *(v17 + 32);
  v27 = v45;
  v41(v51, v22, v45);
  v29 = v12 + 32;
  v28 = *(v12 + 32);
  v39 = v12 + 32;
  v40 = v28;
  v30 = v47;
  v31 = v44;
  v28(v47, v16, v44);
  v32 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v33 = (v46 + *(v29 + 48) + v32) & ~*(v29 + 48);
  v34 = swift_allocObject();
  v35 = v42;
  *(v34 + 2) = v43;
  *(v34 + 3) = v35;
  v36 = v49;
  *(v34 + 4) = v50;
  *(v34 + 5) = v36;
  v41(&v34[v32], v51, v27);
  v40(&v34[v33], v30, v31);
  v37 = v52;
  *v52 = sub_1B7990698;
  v37[1] = v34;
}

uint64_t static LocalizerRequest.formattedDate(format:date:withContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v42 = a4;
  v50 = a2;
  v44 = a1;
  v48 = a5;
  v7 = sub_1B7A99570();
  v45 = v7;
  v51 = *(v7 - 8);
  v8 = v51;
  v49 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = sub_1B7A96BF0();
  v43 = *(v13 - 8);
  v14 = v43;
  v46 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v21 = *(v14 + 16);
  v21(&v40 - v19, a3, v13, v18);
  (*(v8 + 16))(v12, v42, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D280;
  *(inited + 32) = 0x74616D726F66;
  *(inited + 40) = 0xE600000000000000;
  v52 = a1;
  v53 = v50;

  sub_1B7A9AC20();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  v23 = v13;
  (v21)(v16, v20, v13);
  sub_1B79907AC(&qword_1EBA46558, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v41 = v16;
  v40 = v13;
  sub_1B7A9AC20();
  *(inited + 144) = 0x747865746E6F63;
  *(inited + 152) = 0xE700000000000000;
  v24 = v12;
  v52 = sub_1B7A99560();
  v53 = v25;
  sub_1B7A9AC20();
  v26 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528, &qword_1B7A9D2C8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = v26;
  v28 = v48;
  v48[2] = v27;
  v30 = v43 + 32;
  v29 = *(v43 + 32);
  v29(v16, v20, v23);
  v32 = *(v51 + 32);
  v51 += 32;
  v31 = v51;
  v33 = v47;
  v34 = v45;
  v32(v47, v24, v45);
  v35 = (*(v30 + 48) + 32) & ~*(v30 + 48);
  v36 = (v46 + *(v31 + 48) + v35) & ~*(v31 + 48);
  v37 = swift_allocObject();
  v38 = v50;
  *(v37 + 16) = v44;
  *(v37 + 24) = v38;
  v29((v37 + v35), v41, v40);
  v32((v37 + v36), v33, v34);
  *v28 = sub_1B79907F4;
  v28[1] = v37;
}

uint64_t static LocalizerRequest.formattedDate(format:date:inSentence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v33 = a5;
  v30 = a4;
  v34 = a2;
  v31 = a1;
  v32 = a6;
  v8 = sub_1B7A96BF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(v9 + 16);
  v16(&v29 - v14, a3, v8, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D280;
  *(inited + 32) = 0x74616D726F66;
  *(inited + 40) = 0xE600000000000000;
  v35 = a1;
  v36 = v34;

  sub_1B7A9AC20();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  (v16)(v11, v15, v8);
  sub_1B79907AC(&qword_1EBA46558, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7A9AC20();
  *(inited + 144) = 0x65636E65746E6573;
  *(inited + 152) = 0xE800000000000000;
  v18 = v30;
  v35 = v30;
  v36 = v33;

  sub_1B7A9AC20();
  v19 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528, &qword_1B7A9D2C8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  v21 = v32;
  v32[2] = v20;
  v22 = *(v9 + 32);
  v22(v11, v15, v8);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v31;
  *(v24 + 24) = v25;
  v22((v24 + v23), v11, v8);
  v26 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v33;
  *v26 = v18;
  v26[1] = v27;
  *v21 = sub_1B79908F4;
  v21[1] = v24;
}

uint64_t static LocalizerRequest.relativeDate(_:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1B7A99B70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A96BF0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  return sub_1B798D784(v13, v9, a3);
}

uint64_t static LocalizerRequest.verbatim(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8, &qword_1B7A9D2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9C180;
  *(inited + 32) = 0x746E65746E6F63;
  *(inited + 40) = 0xE700000000000000;
  swift_bridgeObjectRetain_n();
  sub_1B7A9AC20();
  v8 = sub_1B7990058(inited);
  swift_setDeallocating();
  sub_1B7990A08(inited + 32);
  *a3 = sub_1B79909D8;
  a3[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v8;
  a3[2] = result;
  return result;
}

uint64_t static LocalizerRequest.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1B7990058(MEMORY[0x1E69E7CC0]);
  *a3 = a1;
  a3[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530, &unk_1B7A9D2D0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  a3[2] = v7;
}

uint64_t sub_1B798FCF0(uint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1B79913AC(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_1B79948B8(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1B7991408(&v24);
      return 0;
    }

    sub_1B79913AC(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x1B8CABE40](v23, &v24);
    sub_1B7991408(v23);
    result = sub_1B7991408(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
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

uint64_t _s18_JetEngine_SwiftUI16LocalizerRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  os_unfair_lock_lock((v3 + 24));
  v5 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  if (*(v4 + 16))
  {
    v6 = sub_1B798FCF0(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1B798FF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46588, &unk_1B7A9D370);
    v3 = sub_1B7A9ADC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7957820(v4, &v13, &qword_1EBA464E8, &unk_1B7A9D260);
      v5 = v13;
      v6 = v14;
      result = sub_1B79948B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B7957D54(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7990058(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465A0, &unk_1B7A9D390);
    v3 = sub_1B7A9ADC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7957820(v4, &v16, &qword_1EBA46528, &qword_1B7A9D2C8);
      v5 = v16;
      v6 = v17;
      result = sub_1B79948B8(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7990190(void *a1)
{
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A2F0();
}

uint64_t sub_1B799023C(void *a1)
{
  sub_1B7A99A50();
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A2E0();
}

unint64_t sub_1B799034C()
{
  result = qword_1EBA46538;
  if (!qword_1EBA46538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA46538);
  }

  return result;
}

unint64_t sub_1B7990398()
{
  result = qword_1EBA46550;
  if (!qword_1EBA46550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46548, &qword_1B7A9D540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46550);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_1B7A99570();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7990508(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1B7A99570() - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  return a2(v6, v7, v8, v9, v10, v2 + v5, v11, v12);
}

uint64_t sub_1B79905E0(void *a1)
{
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A310();
}

uint64_t sub_1B7990698(void *a1)
{
  sub_1B7A99A50();
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A300();
}

uint64_t sub_1B79907AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B79907F4(void *a1)
{
  sub_1B7A96BF0();
  sub_1B7A99570();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A2B0();
}

uint64_t sub_1B79908F4(void *a1)
{
  sub_1B7A96BF0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A2A0();
}

uint64_t sub_1B79909D8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1B7990A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528, &qword_1B7A9D2C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B7990A84(uint64_t *a1, int a2)
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

uint64_t sub_1B7990ACC(uint64_t result, int a2, int a3)
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

unint64_t sub_1B7990B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46590, &qword_1B7A9D380);
    v3 = sub_1B7A9ADC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7957820(v4, v15, &qword_1EBA46598, &qword_1B7A9D388);
      result = sub_1B7994ACC(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}