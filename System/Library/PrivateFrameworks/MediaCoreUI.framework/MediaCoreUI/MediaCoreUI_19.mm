uint64_t sub_1C5B1107C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a1;
  v59 = a5;
  v8 = type metadata accessor for SquareAssetArtworkBackground(0, a3, a4, a4);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v49 - v11;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v49 - v17;
  v20 = type metadata accessor for TallAssetArtworkBackground(0, a3, a4, v19);
  v50 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v49 = &v49 - v24;
  v25 = sub_1C5BC92D4();
  v57 = *(v25 - 8);
  v58 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v55 = a4;
  v56 = &v49 - v26;
  v28 = type metadata accessor for LockScreenArtworkBackground(0, a3, a4, v27);
  v29 = *(a2 + v28[11]);
  sub_1C59400B0(a2, v18, &qword_1EC191EB8, &qword_1C5BD71A0);
  (*(v12 + 16))(v15, a2 + v28[9], a3);
  if (v29 == 1)
  {
    v60 = *(a2 + v28[10]);
    sub_1C5BC86C4();
    sub_1C5B11638(v18, v15, &v60, a3, v55, v22, v30, v31);
    WitnessTable = swift_getWitnessTable();
    v33 = v49;
    sub_1C593EDC0(v22, v20, WitnessTable);
    v34 = *(v50 + 8);
    v34(v22, v20);
    sub_1C593EDC0(v33, v20, WitnessTable);
    v35 = swift_getWitnessTable();
    v36 = v56;
    sub_1C5950E54(v22, v20, v8, WitnessTable, v35);
    v34(v22, v20);
    v34(v33, v20);
  }

  else
  {
    sub_1C5BC86C4();
    v37 = v52;
    sub_1C5B117D0(v18, v15, a3, v55, v52, v38, v39);
    v40 = swift_getWitnessTable();
    v41 = v51;
    sub_1C593EDC0(v37, v8, v40);
    v42 = *(v53 + 8);
    v42(v37, v8);
    sub_1C593EDC0(v41, v8, v40);
    v43 = swift_getWitnessTable();
    v36 = v56;
    sub_1C5941738(v37, v20, v8, v43, v40);
    v42(v37, v8);
    v42(v41, v8);
  }

  v44 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v61 = v44;
  v62 = v45;
  v46 = v58;
  v47 = swift_getWitnessTable();
  sub_1C593EDC0(v36, v46, v47);
  return (*(v57 + 8))(v36, v46);
}

void *sub_1C5B11638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v14 = *a3;
  sub_1C5B10A44(a1, a6);
  v16 = type metadata accessor for TallAssetArtworkBackground(0, a4, a5, v15);
  (*(*(a4 - 8) + 32))(a6 + v16[9], a2, a4);
  *(a6 + v16[10]) = v14;
  v17 = (a6 + v16[11]);
  *v17 = a7;
  v17[1] = a8;
  sub_1C5B158B8(sub_1C5B11D34, 0, a4, a5, &unk_1F4526A88, sub_1C594CFC4);
  v18 = a6 + v16[13];
  *v18 = sub_1C5A765AC(0, 1);
  *(v18 + 8) = v19 & 1;
  *(v18 + 16) = v20;
  v21 = a6 + v16[14];
  v22 = sub_1C5B15934(0x100000000);
  *v21 = v22;
  *(v21 + 4) = BYTE4(v22) & 1;
  *(v21 + 8) = v23;
  v24 = a6 + v16[15];
  result = sub_1C5BCA684();
  *v24 = 1;
  *(v24 + 8) = v26;
  return result;
}

uint64_t sub_1C5B117D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = type metadata accessor for SquareAssetArtworkBackground(0, a3, a4, a4);
  sub_1C5B158B8(sub_1C5B159B4, 0, a3, a4, &unk_1F4526AB0, sub_1C5B1C6C4);
  v15 = a5 + v14[12];
  *v15 = sub_1C5A765AC(0, 1);
  *(v15 + 8) = v16 & 1;
  *(v15 + 16) = v17;
  v18 = a5 + v14[13];
  v19 = sub_1C5B15934(0x100000000);
  *v18 = v19;
  *(v18 + 4) = BYTE4(v19) & 1;
  *(v18 + 8) = v20;
  v21 = a5 + v14[14];
  sub_1C5BCA684();
  *v21 = 1;
  *(v21 + 8) = v24;
  sub_1C5B10A44(a1, a5);
  result = (*(*(a3 - 8) + 32))(a5 + v14[9], a2, a3);
  v23 = (a5 + v14[10]);
  *v23 = a6;
  v23[1] = a7;
  return result;
}

__n128 sub_1C5B11984@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198178, &qword_1C5BE9E58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  type metadata accessor for LockScreenMotionReplicatorLayer();
  v7 = swift_allocObject();
  v8 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v1 + 32);
  v9 = *v1;
  sub_1C5BC85C4();
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  (*(v4 + 32))(a1, v6, v3);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198180, &qword_1C5BE9E60) + 36);
  v11 = v14[6];
  *(v10 + 64) = v14[5];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[7];
  v12 = v14[2];
  *v10 = v14[1];
  *(v10 + 16) = v12;
  result = v14[4];
  *(v10 + 32) = v14[3];
  *(v10 + 48) = result;
  return result;
}

id sub_1C5B11BFC(char *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *&a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor];
  *&a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor] = v4;
  if (v4 != v5)
  {
    [a1 setNeedsLayout];
  }

  v6 = [objc_opt_self() playerLayerWithPlayer_];
  v7 = *&a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_originalContent];
  *&a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_originalContent] = v6;
  v8 = v6;

  sub_1C5ACC720();
  if (*(a2 + 25))
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(a2 + 24) & 1) == 0;
  if (*(a2 + 24))
  {
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirroringBehavior] = v11;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  return [a1 setInstanceCount_];
}

uint64_t sub_1C5B11D60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195888, qword_1C5BE9C60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F50, &qword_1C5BE1060);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  v8 = v14;
  swift_getKeyPath(byte_1C5BE9BC8);
  v14 = v8;
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v9 = *(v8 + 16);
  v10 = v9;

  if (v9)
  {
    swift_getKeyPath(byte_1C5BE9C90);
    sub_1C5BC7924();

    sub_1C5924F54(&qword_1EC195890, &unk_1EC199F50, &qword_1C5BE1060, MEMORY[0x1E6969F80]);
    v11 = sub_1C5BC8064();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957A0, qword_1C5BE0E48);
    sub_1C5BC7FD4();
    sub_1C5924F54(&qword_1EC195898, &qword_1EC195888, qword_1C5BE9C60, MEMORY[0x1E695C018]);
    v11 = sub_1C5BC8064();
    (*(v1 + 8))(v3, v0);
  }

  return v11;
}

uint64_t sub_1C5B12070()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D8, &unk_1C5BE9B98);
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v23 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1939C0, &qword_1C5BD8960);
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980E0, &qword_1C5BE9BA8);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980E8, &qword_1C5BE9BB0);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v23 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980F0, &unk_1C5BE9BB8);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v23 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  v13 = v32;
  swift_getKeyPath(byte_1C5BE9BC8);
  v32 = v13;
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v14 = *(v13 + 16);
  v15 = v14;

  if (v14)
  {
    swift_getKeyPath(byte_1C5BE9C00);
    sub_1C5BC7924();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980F8, &qword_1C5BE9C28);
    sub_1C5924F54(&qword_1EC1939E0, &qword_1EC1939C0, &qword_1C5BD8960, MEMORY[0x1E6969F80]);
    sub_1C5BC8084();
    (*(v26 + 8))(v5, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980B0, &qword_1C5BE9B80);
    sub_1C5BC7ED4();
    (*(v27 + 8))(v8, v6);
    v16 = sub_1C5924F54(&qword_1EC198100, &qword_1EC1980E8, &qword_1C5BE9BB0, MEMORY[0x1E695BD60]);
    v17 = sub_1C5924F54(&qword_1EC1980B8, &qword_1EC1980B0, &qword_1C5BE9B80, MEMORY[0x1E695BED8]);
    v18 = v30;
    MEMORY[0x1C694C340](v30, v16, v17);

    (*(v28 + 8))(v10, v18);
    sub_1C5924F54(&qword_1EC198108, &qword_1EC1980F0, &unk_1C5BE9BB8, MEMORY[0x1E695BD00]);
    v19 = v31;
    v20 = sub_1C5BC8064();
    (*(v29 + 8))(v12, v19);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198008, qword_1C5BE9A78);
    sub_1C5BC7FD4();
    sub_1C5924F54(&qword_1EC198110, &qword_1EC1980D8, &unk_1C5BE9B98, MEMORY[0x1E695C018]);
    v21 = v25;
    v20 = sub_1C5BC8064();
    (*(v24 + 8))(v2, v21);
  }

  return v20;
}

uint64_t sub_1C5B1268C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a2;
  v204 = a1;
  v217 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v216 = v2;
  v215 = v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 24);
  v5 = v3;
  v196 = v3;
  v211 = sub_1C5BC8AB4();
  v203 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v199 = v141 - v6;
  v213 = v4;
  v7 = sub_1C5BC8AB4();
  v266 = *(v5 + 32);
  v267 = MEMORY[0x1E697E070];
  v8 = v266;
  v218 = v266;
  WitnessTable = swift_getWitnessTable();
  v195 = v7;
  v10 = WitnessTable;
  v193 = WitnessTable;
  v206 = sub_1C5BC92A4();
  v210 = sub_1C5BC8AB4();
  v202 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v194 = v141 - v11;
  v197 = sub_1C5BCB804();
  v265 = v10;
  v208 = MEMORY[0x1E6982090];
  v198 = swift_getWitnessTable();
  v190 = sub_1C5BC92A4();
  v209 = sub_1C5BC8AB4();
  v200 = *(v209 - 1);
  MEMORY[0x1EEE9AC00](v209);
  v191 = v141 - v12;
  v212 = sub_1C5BC8AB4();
  v201 = *(v212 - 1);
  MEMORY[0x1EEE9AC00](v212);
  v192 = v141 - v13;
  v14 = sub_1C5BC8AB4();
  v15 = sub_1C5953670();
  v263 = v8;
  v264 = v15;
  v16 = swift_getWitnessTable();
  v259 = v14;
  v260 = v14;
  v261 = v16;
  v262 = v16;
  type metadata accessor for MotionView(255, &v259);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0, &qword_1C5BE1030);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090, &unk_1C5BE9B68);
  v17 = sub_1C5BC8AB4();
  v18 = type metadata accessor for MaterialMotionContentObserver(255);
  v19 = swift_getWitnessTable();
  v207 = MEMORY[0x1E6980A18];
  v20 = sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0, &qword_1C5BE1030, MEMORY[0x1E6980A18]);
  v257 = v19;
  v258 = v20;
  v255 = swift_getWitnessTable();
  v256 = MEMORY[0x1E697F568];
  v21 = swift_getWitnessTable();
  v189 = MEMORY[0x1E697EC18];
  v22 = sub_1C5924F54(&qword_1EC198098, &qword_1EC198090, &unk_1C5BE9B68, MEMORY[0x1E697EC18]);
  v253 = v21;
  v254 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  v259 = v17;
  v260 = v18;
  v261 = v23;
  v262 = v24;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860, &qword_1C5BE1040);
  sub_1C5BC8AB4();
  v25 = sub_1C5BCB804();
  v259 = v17;
  v260 = v18;
  v261 = v23;
  v262 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860, &qword_1C5BE1040, v207);
  v251 = OpaqueTypeConformance2;
  v252 = v27;
  v250 = swift_getWitnessTable();
  v174 = v25;
  v175 = swift_getWitnessTable();
  v188 = sub_1C5BC8BE4();
  v28 = sub_1C5BC8AB4();
  v185 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v171 = v141 - v29;
  v30 = sub_1C5BC8AB4();
  v187 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v184 = v141 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1980A0, &qword_1C5BE9B78);
  v32 = sub_1C5BC8AB4();
  v181 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v180 = v141 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910, &qword_1C5BDCCF0);
  v34 = sub_1C5BC8AB4();
  v177 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v173 = v141 - v35;
  v36 = sub_1C5BC8AB4();
  v176 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v172 = v141 - v37;
  v38 = sub_1C5BC8AB4();
  v186 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v182 = v141 - v39;
  v208 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60, &qword_1C5BE0D98);
  v170 = MEMORY[0x1E695BED8];
  v207 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60, &qword_1C5BE0D98, MEMORY[0x1E695BED8]);
  v248 = v218;
  v249 = MEMORY[0x1E697F568];
  v40 = swift_getWitnessTable();
  v141[1] = v40;
  v41 = swift_getWitnessTable();
  v246 = v40;
  v247 = v41;
  v42 = swift_getWitnessTable();
  v141[2] = v42;
  v43 = swift_getWitnessTable();
  v244 = v42;
  v245 = v43;
  v142 = swift_getWitnessTable();
  v242 = v142;
  v243 = MEMORY[0x1E697EBF8];
  v44 = swift_getWitnessTable();
  v143 = v44;
  v45 = v189;
  v46 = swift_getWitnessTable();
  v240 = v44;
  v241 = v46;
  v188 = v28;
  v144 = swift_getWitnessTable();
  v238 = v144;
  v239 = MEMORY[0x1E697E5D8];
  v190 = v30;
  v47 = swift_getWitnessTable();
  v48 = sub_1C5924F54(&qword_1EC1980A8, &qword_1EC1980A0, &qword_1C5BE9B78, v45);
  v148 = v47;
  v236 = v47;
  v237 = v48;
  v183 = v32;
  v49 = swift_getWitnessTable();
  v50 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910, &qword_1C5BDCCF0, MEMORY[0x1E697DDB0]);
  v146 = v49;
  v234 = v49;
  v235 = v50;
  v179 = v34;
  v145 = swift_getWitnessTable();
  v232 = v145;
  v233 = MEMORY[0x1E69802C0];
  v178 = v36;
  v147 = swift_getWitnessTable();
  v230 = v147;
  v231 = MEMORY[0x1E697E040];
  v51 = swift_getWitnessTable();
  v259 = v208;
  v260 = v38;
  v189 = v38;
  v261 = v207;
  v262 = v51;
  v149 = v51;
  v52 = sub_1C5BC8BB4();
  v158 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v156 = v141 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1980B0, &qword_1C5BE9B80);
  v55 = sub_1C5924F54(&qword_1EC1980B8, &qword_1EC1980B0, &qword_1C5BE9B80, v170);
  v56 = swift_getWitnessTable();
  v151 = v55;
  v152 = v54;
  v259 = v54;
  v260 = v52;
  v160 = v52;
  v261 = v55;
  v262 = v56;
  v150 = v56;
  v57 = sub_1C5BC8BB4();
  v163 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v206 = v141 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790, &qword_1C5BE0E40);
  v60 = swift_getWitnessTable();
  v61 = sub_1C5AE9478();
  v259 = v57;
  v260 = v59;
  v261 = v60;
  v262 = v61;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v169 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v167 = v141 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC198008, qword_1C5BE9A78);
  v166 = v57;
  v259 = v57;
  v260 = v59;
  v154 = v60;
  v155 = v59;
  v261 = v60;
  v262 = v61;
  v153 = v61;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = sub_1C5B1B970();
  v170 = OpaqueTypeMetadata2;
  v259 = OpaqueTypeMetadata2;
  v260 = v64;
  v164 = v64;
  v161 = v66;
  v162 = v65;
  v261 = v65;
  v262 = v66;
  v168 = swift_getOpaqueTypeMetadata2();
  v165 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v157 = v141 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v159 = v141 - v69;
  v70 = v214;
  v71 = v199;
  v72 = v213;
  v73 = v218;
  sub_1C5BC9D94();
  v225 = v72;
  v226 = v73;
  v74 = v73;
  v227 = v70;
  sub_1C5BCAA54();
  v75 = v194;
  v76 = v211;
  sub_1C5BC9CE4();
  (*(v203 + 8))(v71, v76);
  v222 = v72;
  v223 = v74;
  v224 = v70;
  sub_1C5BCAA54();
  v77 = v191;
  v78 = v210;
  sub_1C5BC9CE4();
  (*(v202 + 8))(v75, v78);
  sub_1C5BCAA34();
  v79 = v209;
  v80 = v192;
  v81 = v77;
  v82 = v171;
  sub_1C5BCA244();
  (*(v200 + 8))(v81, v79);
  sub_1C5BCAA34();
  v83 = v72;
  v219 = v72;
  v220 = v74;
  v221 = v70;
  v84 = v212;
  sub_1C5BCA2C4();
  (*(v201 + 8))(v80, v84);
  sub_1C5BC98A4();
  v85 = v70;
  v86 = v184;
  v87 = v188;
  sub_1C5BCA2F4();
  (*(v185 + 8))(v82, v87);
  sub_1C5BCAA54();
  sub_1C5B1BA10();
  v88 = v180;
  v89 = v190;
  sub_1C5BCA2C4();
  (*(v187 + 8))(v86, v89);
  v90 = v173;
  v91 = v183;
  sub_1C5BCA2A4();
  (*(v181 + 8))(v88, v91);
  v92 = v172;
  v93 = v179;
  sub_1C5BC9FC4();
  (*(v177 + 8))(v90, v93);
  sub_1C5BCAA54();
  v94 = v182;
  v95 = v178;
  sub_1C5BCA234();
  (*(v176 + 8))(v92, v95);
  v96 = v204;
  v97 = v85;
  v259 = sub_1C5B11D60();
  v98 = v217;
  v99 = *(v217 + 16);
  v210 = v217 + 16;
  v209 = v99;
  v100 = v215;
  (v99)(v215, v85, v96);
  v211 = *(v98 + 80);
  v101 = (v211 + 32) & ~v211;
  v102 = swift_allocObject();
  v103 = v218;
  *(v102 + 16) = v83;
  *(v102 + 24) = v103;
  v104 = *(v98 + 32);
  v217 = v98 + 32;
  v212 = v104;
  (v104)(v102 + v101, v100, v96);
  v105 = v156;
  v106 = v189;
  sub_1C5BCA3D4();

  (*(v186 + 8))(v94, v106);
  v259 = sub_1C5B12070();
  v107 = v215;
  v108 = v209;
  (v209)(v215, v97, v96);
  v109 = swift_allocObject();
  v110 = v218;
  *(v109 + 16) = v213;
  *(v109 + 24) = v110;
  (v212)(v109 + v101, v107, v96);
  v111 = v160;
  sub_1C5BCA3D4();

  (*(v158 + 8))(v105, v111);
  v112 = v214;
  v113 = v214 + *(v96 + 52);
  v114 = *v113;
  v115 = *(v113 + 8);
  v116 = *(v113 + 16);
  v259 = v114;
  LOBYTE(v260) = v115;
  v261 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  sub_1C5BCA694();
  v259 = v228;
  LOBYTE(v260) = v229;
  v117 = v215;
  v108(v215, v112, v96);
  v118 = swift_allocObject();
  v119 = v213;
  v120 = v218;
  *(v118 + 16) = v213;
  *(v118 + 24) = v120;
  (v212)(v118 + v101, v117, v96);
  v121 = v166;
  v122 = v167;
  v123 = v206;
  sub_1C5BCA344();

  (*(v163 + 8))(v123, v121);
  v124 = v214;
  v125 = (v214 + *(v96 + 56));
  v126 = *v125;
  v127 = *(v125 + 4);
  v128 = *(v125 + 1);
  LODWORD(v259) = v126;
  BYTE4(v259) = v127;
  v260 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0, &unk_1C5BE9B88);
  sub_1C5BCA694();
  LODWORD(v259) = v228;
  BYTE4(v259) = BYTE4(v228);
  (v209)(v117, v124, v96);
  v129 = swift_allocObject();
  v130 = v218;
  *(v129 + 16) = v119;
  *(v129 + 24) = v130;
  (v212)(v129 + v101, v117, v96);
  v131 = v157;
  v132 = v170;
  v133 = v164;
  v135 = v161;
  v134 = v162;
  sub_1C5BCA344();

  (*(v169 + 8))(v122, v132);
  v259 = v132;
  v260 = v133;
  v261 = v134;
  v262 = v135;
  v136 = swift_getOpaqueTypeConformance2();
  v137 = v159;
  v138 = v168;
  sub_1C593EDC0(v131, v168, v136);
  v139 = *(v165 + 8);
  v139(v131, v138);
  sub_1C593EDC0(v137, v138, v136);
  return (v139)(v137, v138);
}

uint64_t sub_1C5B13E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C5BC8AB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  type metadata accessor for TallAssetArtworkBackground(0, a2, a3, v12);
  sub_1C5BCABB4();
  MEMORY[0x1C694E080](a2, a3, 1.0, -2.0, v13, v14);
  v18[0] = a3;
  v18[1] = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v8, v5, WitnessTable);
  v16 = *(v6 + 8);
  v16(v8, v5);
  sub_1C593EDC0(v11, v5, WitnessTable);
  return (v16)(v11, v5);
}

uint64_t sub_1C5B13FFC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a4;
  v6 = sub_1C5BC8AB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  v13 = sub_1C5BCB804();
  v28[0] = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - v17;
  v29 = a3;
  type metadata accessor for TallAssetArtworkBackground(0, a2, a3, v19);
  if (sub_1C5BC8294())
  {
    sub_1C5BCABC4();
    v20 = v29;
    MEMORY[0x1C694E080](a2, v29, 1.0, -2.0, v21, v22);
    v30 = v20;
    v31 = MEMORY[0x1E697E070];
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(v9, v6, WitnessTable);
    v24 = *(v7 + 8);
    v24(v9, v6);
    sub_1C593EDC0(v12, v6, WitnessTable);
    v24(v12, v6);
    (*(v7 + 32))(v15, v9, v6);
    (*(v7 + 56))(v15, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
    v35 = v29;
    v36 = MEMORY[0x1E697E070];
    swift_getWitnessTable();
  }

  sub_1C5941600(v15, v18);
  v25 = *(v28[0] + 8);
  v25(v15, v13);
  v33 = v29;
  v34 = MEMORY[0x1E697E070];
  v32 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  sub_1C593EDC0(v18, v13, v26);
  return (v25)(v18, v13);
}

uint64_t sub_1C5B143C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a1;
  v129 = a4;
  v119 = a2;
  v5 = sub_1C5BC8AB4();
  v120 = a3;
  v150 = a3;
  v151 = sub_1C5953670();
  v146 = v5;
  v147 = v5;
  v118 = v5;
  WitnessTable = swift_getWitnessTable();
  v149 = WitnessTable;
  v107 = WitnessTable;
  v6 = type metadata accessor for MotionView(255, &v146);
  v115 = type metadata accessor for MCUINamespace(0, v6, v7, v8);
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v93 - v9;
  v106 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v93 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0, &qword_1C5BE1030);
  v12 = sub_1C5BC8AB4();
  v108 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v93 - v13;
  v14 = sub_1C5BC8AB4();
  v114 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v93 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090, &unk_1C5BE9B68);
  v16 = sub_1C5BC8AB4();
  v116 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v93 - v17;
  v18 = type metadata accessor for MaterialMotionContentObserver(255);
  v96 = v6;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0, &qword_1C5BE1030, MEMORY[0x1E6980A18]);
  v97 = v19;
  v144 = v19;
  v145 = v20;
  v109 = v12;
  v98 = swift_getWitnessTable();
  v142 = v98;
  v143 = MEMORY[0x1E697F568];
  v117 = v14;
  v21 = swift_getWitnessTable();
  v22 = sub_1C5924F54(&qword_1EC198098, &qword_1EC198090, &unk_1C5BE9B68, MEMORY[0x1E697EC18]);
  v99 = v21;
  v140 = v21;
  v141 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  v128 = v16;
  v146 = v16;
  v147 = v18;
  v130 = v18;
  v127 = v23;
  WitnessTable = v23;
  v149 = v24;
  v126 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v101 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v100 = &v93 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860, &qword_1C5BE1040);
  v102 = OpaqueTypeMetadata2;
  v27 = sub_1C5BC8AB4();
  v122 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v103 = &v93 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v93 - v33;
  v35 = type metadata accessor for MotionAsset(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v93 - v40;
  v125 = sub_1C5BCB804();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v131 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v123 = &v93 - v44;
  sub_1C59400B0(v121, v34, &qword_1EC191EB8, &qword_1C5BD71A0);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_1C5924EF4(v34, &qword_1EC191EB8, &qword_1C5BD71A0);
    (*(v122 + 56))(v131, 1, 1, v27);
    v45 = v128;
    v46 = v130;
    v146 = v128;
    v147 = v130;
    v47 = v127;
    v48 = v126;
    WitnessTable = v127;
    v149 = v126;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v50 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860, &qword_1C5BE1040, MEMORY[0x1E6980A18]);
    v138 = OpaqueTypeConformance2;
    v139 = v50;
    swift_getWitnessTable();
  }

  else
  {
    v95 = v41;
    sub_1C5A67D1C(v34, v41);
    v51 = sub_1C59C122C(v41, v38);
    MEMORY[0x1EEE9AC00](v51);
    v94 = v29;
    v52 = v119;
    v53 = v120;
    MEMORY[0x1EEE9AC00](v54);
    *(&v92 + 1) = v107;
    *&v92 = v118;
    v55 = v104;
    sub_1C59BDD68(v38, sub_1C5B1C6C8, sub_1C5B1BE7C, 0, 0, v118, v104, v92, v107);
    v56 = v110;
    v57 = v96;
    v58 = v97;
    View.mcui.getter(v96, v110);
    (*(v106 + 8))(v55, v57);
    LOBYTE(v146) = 1;
    v59 = v105;
    v60 = v115;
    v61 = MCUINamespace<A>.motionCacheDownload(policy:)(&v146, v115, v58);
    (*(v113 + 8))(v56, v60, v61);
    type metadata accessor for TallAssetArtworkBackground(0, v52, v53, v62);
    v118 = v27;
    v63 = v111;
    v64 = v109;
    sub_1C5BC9D94();
    (*(v108 + 8))(v59, v64);
    v65 = sub_1C5BCAA34();
    MEMORY[0x1EEE9AC00](v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198148, &qword_1C5BE9D60);
    sub_1C5B1BEA0();
    v66 = v112;
    v67 = v117;
    sub_1C5BCA2C4();
    v68 = v63;
    v69 = v118;
    (*(v114 + 8))(v68, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
    sub_1C5BC81A4();
    v70 = v100;
    v45 = v128;
    v71 = v130;
    v47 = v127;
    v48 = v126;
    sub_1C5BC9DE4();

    (*(v116 + 8))(v66, v45);
    swift_getKeyPath(asc_1C5BE9D68);
    v134 = 2;
    v146 = v45;
    v147 = v71;
    WitnessTable = v47;
    v149 = v48;
    v72 = swift_getOpaqueTypeConformance2();
    v73 = v94;
    v74 = v102;
    sub_1C5BC9DF4();

    (*(v101 + 8))(v70, v74);
    sub_1C59C1338(v95);
    v75 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860, &qword_1C5BE1040, MEMORY[0x1E6980A18]);
    v132 = v72;
    v133 = v75;
    v76 = swift_getWitnessTable();
    v77 = v103;
    v78 = v73;
    sub_1C593EDC0(v73, v69, v76);
    v79 = v122;
    v80 = *(v122 + 8);
    v80(v78, v69);
    sub_1C593EDC0(v77, v69, v76);
    v80(v77, v69);
    v81 = v131;
    v82 = v78;
    v46 = v130;
    (*(v79 + 32))(v131, v82, v69);
    (*(v79 + 56))(v81, 0, 1, v69);
  }

  v83 = v123;
  v84 = v131;
  sub_1C5941600(v131, v123);
  v85 = *(v124 + 8);
  v86 = v84;
  v87 = v125;
  v85(v86, v125);
  v146 = v45;
  v147 = v46;
  WitnessTable = v47;
  v149 = v48;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860, &qword_1C5BE1040, MEMORY[0x1E6980A18]);
  v136 = v88;
  v137 = v89;
  v135 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  sub_1C593EDC0(v83, v87, v90);
  return (v85)(v83, v87);
}

void sub_1C5B15318(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for TallAssetArtworkBackground(0, a2, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  swift_getKeyPath(byte_1C5BE9BC8);
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v8 = *(v17 + 16);
  v9 = v8;

  v10 = 0uLL;
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
    sub_1C5BCA694();
    if (v16 & 1) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0), sub_1C5BCA694(), (LOBYTE(v15)))
    {

      v8 = 0;
      v11 = 0;
      v12 = 0;
      v10 = 0uLL;
    }

    else
    {
      v14 = *(a1 + *(v7 + 44));
      v13 = sub_1C5BC8294();
      *&v10 = v14;
      *(&v10 + 1) = v14 / v15;
      v11 = v13 & 1;
      v12 = 0x4000000000000000;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
}

uint64_t sub_1C5B1550C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 16) & 1) == 0 && (*result != 0.0 || *(result + 8) != 0.0))
  {
    type metadata accessor for TallAssetArtworkBackground(0, a3, a4, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
    return sub_1C5BCA6A4();
  }

  return result;
}

uint64_t sub_1C5B155C0(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TallAssetArtworkBackground(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0, &unk_1C5BE9B88);
  return sub_1C5BCA6A4();
}

void *sub_1C5B15654(int *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0, &unk_1C5BE9B88);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA694();
  v1 = sub_1C5B157D0(v3, v4, v3 | (BYTE4(v3) << 32), (v3 & 1) == 0, 0.75) & 1;
  result = sub_1C5BCA694();
  if (v1 != v3)
  {
    return sub_1C5BCA6A4();
  }

  return result;
}

uint64_t sub_1C5B157D0(uint64_t a1, char a2, unint64_t a3, char a4, double a5)
{
  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    goto LABEL_9;
  }

  v5 = a5 * 0.03;
  if (a5 * 0.03 <= 0.0)
  {
    goto LABEL_6;
  }

  v6 = a5 - v5;
  v7 = v5 + a5;
  if (v6 > v7)
  {
    __break(1u);
LABEL_6:
    v7 = a5;
    v6 = a5;
  }

  if (v6 > *&a1 || v7 < *&a1)
  {
    v8 = a3 | ((HIDWORD(a3) & 1) << 32);
    v12 = a1;
    v10 = a4 & 1;
    v11 = 0;
    goto LABEL_14;
  }

LABEL_9:
  if ((a3 & 0x100000000) != 0 || floorf(*&a3) <= 61.0)
  {
    return 0;
  }

  v8 = a3;
  v10 = a4 & 1;
  v11 = a2 & 1;
  v12 = a1;
LABEL_14:
  sub_1C5B195F8(v10, v12, v11, v8, a5);
  return 1;
}

uint64_t sub_1C5B158B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  type metadata accessor for MaterialMotionContentObserver(0);

  return sub_1C5BC8194();
}

uint64_t sub_1C5B15934(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198008, qword_1C5BE9A78);
  sub_1C5BCA684();
  return v2;
}

uint64_t sub_1C5B15984@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C5B159E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MaterialMotionContentObserver(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1C5BC7BA4();
  if (*(v2 + 16))
  {
    KeyPath = swift_getKeyPath(byte_1C5BE9BC8);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
    sub_1C5BC7B64();
  }

  if (*(v2 + 24))
  {
    v4 = swift_getKeyPath(byte_1C5BE9DA0);
    MEMORY[0x1EEE9AC00](v4);
    sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
    sub_1C5BC7B64();
  }

  return v2;
}

uint64_t sub_1C5B15BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195888, qword_1C5BE9C60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F50, &qword_1C5BE1060);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  v8 = v14;
  swift_getKeyPath(byte_1C5BE9BC8);
  v14 = v8;
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v9 = *(v8 + 16);
  v10 = v9;

  if (v9)
  {
    swift_getKeyPath(byte_1C5BE9C90);
    sub_1C5BC7924();

    sub_1C5924F54(&qword_1EC195890, &unk_1EC199F50, &qword_1C5BE1060, MEMORY[0x1E6969F80]);
    v11 = sub_1C5BC8064();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957A0, qword_1C5BE0E48);
    sub_1C5BC7FD4();
    sub_1C5924F54(&qword_1EC195898, &qword_1EC195888, qword_1C5BE9C60, MEMORY[0x1E695C018]);
    v11 = sub_1C5BC8064();
    (*(v1 + 8))(v3, v0);
  }

  return v11;
}

uint64_t sub_1C5B15EC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D8, &unk_1C5BE9B98);
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v23 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1939C0, &qword_1C5BD8960);
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980E0, &qword_1C5BE9BA8);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980E8, &qword_1C5BE9BB0);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v23 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980F0, &unk_1C5BE9BB8);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v23 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  v13 = v32;
  swift_getKeyPath(byte_1C5BE9BC8);
  v32 = v13;
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v14 = *(v13 + 16);
  v15 = v14;

  if (v14)
  {
    swift_getKeyPath(byte_1C5BE9C00);
    sub_1C5BC7924();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980F8, &qword_1C5BE9C28);
    sub_1C5924F54(&qword_1EC1939E0, &qword_1EC1939C0, &qword_1C5BD8960, MEMORY[0x1E6969F80]);
    sub_1C5BC8084();
    (*(v26 + 8))(v5, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980B0, &qword_1C5BE9B80);
    sub_1C5BC7ED4();
    (*(v27 + 8))(v8, v6);
    v16 = sub_1C5924F54(&qword_1EC198100, &qword_1EC1980E8, &qword_1C5BE9BB0, MEMORY[0x1E695BD60]);
    v17 = sub_1C5924F54(&qword_1EC1980B8, &qword_1EC1980B0, &qword_1C5BE9B80, MEMORY[0x1E695BED8]);
    v18 = v30;
    MEMORY[0x1C694C340](v30, v16, v17);

    (*(v28 + 8))(v10, v18);
    sub_1C5924F54(&qword_1EC198108, &qword_1EC1980F0, &unk_1C5BE9BB8, MEMORY[0x1E695BD00]);
    v19 = v31;
    v20 = sub_1C5BC8064();
    (*(v29 + 8))(v12, v19);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198008, qword_1C5BE9A78);
    sub_1C5BC7FD4();
    sub_1C5924F54(&qword_1EC198110, &qword_1EC1980D8, &unk_1C5BE9B98, MEMORY[0x1E695C018]);
    v21 = v25;
    v20 = sub_1C5BC8064();
    (*(v24 + 8))(v2, v21);
  }

  return v20;
}

uint64_t sub_1C5B164DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v196 = a2;
  v209 = *(a1 - 8);
  v207 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v195 = v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 16);
  v5 = v3;
  v190 = v3;
  v204 = sub_1C5BC8AB4();
  v194 = *(v204 - 1);
  MEMORY[0x1EEE9AC00](v204);
  v193 = v139 - v6;
  v208 = v4;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  v7 = sub_1C5BC8AB4();
  v258 = *(v5 + 24);
  v259 = MEMORY[0x1E697E070];
  v8 = v258;
  v211 = v258;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
  v256 = WitnessTable;
  v257 = v10;
  v11 = swift_getWitnessTable();
  v252 = v7;
  v253 = MEMORY[0x1E69E6370];
  v254 = v11;
  v255 = MEMORY[0x1E69E6380];
  v187 = sub_1C5BCA724();
  v188 = swift_getWitnessTable();
  v201 = sub_1C5BC92A4();
  v205 = sub_1C5BC8AB4();
  v189 = *(v205 - 1);
  MEMORY[0x1EEE9AC00](v205);
  v184 = v139 - v12;
  v206 = sub_1C5BC8AB4();
  v191 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v185 = v139 - v13;
  v197 = sub_1C5BC8AB4();
  v192 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v186 = v139 - v14;
  v15 = sub_1C5BC8AB4();
  v16 = sub_1C5953670();
  v250 = v8;
  v251 = v16;
  v17 = swift_getWitnessTable();
  v252 = v15;
  v253 = v15;
  v254 = v17;
  v255 = v17;
  type metadata accessor for MotionView(255, &v252);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0, &qword_1C5BE1030);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090, &unk_1C5BE9B68);
  v18 = sub_1C5BC8AB4();
  v19 = type metadata accessor for MaterialMotionContentObserver(255);
  v20 = swift_getWitnessTable();
  v203 = MEMORY[0x1E6980A18];
  v21 = sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0, &qword_1C5BE1030, MEMORY[0x1E6980A18]);
  v248 = v20;
  v249 = v21;
  v246 = swift_getWitnessTable();
  v247 = MEMORY[0x1E697F568];
  v22 = swift_getWitnessTable();
  v200 = MEMORY[0x1E697EC18];
  v23 = sub_1C5924F54(&qword_1EC198098, &qword_1EC198090, &unk_1C5BE9B68, MEMORY[0x1E697EC18]);
  v244 = v22;
  v245 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  v252 = v18;
  v253 = v19;
  v254 = v24;
  v255 = v25;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860, &qword_1C5BE1040);
  sub_1C5BC8AB4();
  v26 = sub_1C5BCB804();
  v252 = v18;
  v253 = v19;
  v254 = v24;
  v255 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860, &qword_1C5BE1040, v203);
  v242 = OpaqueTypeConformance2;
  v243 = v28;
  v241 = swift_getWitnessTable();
  v179 = v26;
  v180 = swift_getWitnessTable();
  v199 = sub_1C5BC8BE4();
  v203 = sub_1C5BC8AB4();
  v182 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v176 = v139 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198160, &qword_1C5BE9D98);
  v198 = sub_1C5BC8AB4();
  v181 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v175 = v139 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910, &qword_1C5BDCCF0);
  v31 = sub_1C5BC8AB4();
  v177 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v174 = v139 - v32;
  v145 = v31;
  v33 = sub_1C5BC8AB4();
  v178 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v172 = v139 - v34;
  v148 = v33;
  v35 = sub_1C5BC8AB4();
  v183 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v202 = v139 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60, &qword_1C5BE0D98);
  v156 = v37;
  v173 = MEMORY[0x1E695BED8];
  v38 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60, &qword_1C5BE0D98, MEMORY[0x1E695BED8]);
  v155 = v38;
  v239 = v211;
  v240 = MEMORY[0x1E697F568];
  v39 = swift_getWitnessTable();
  v139[1] = v39;
  v40 = swift_getWitnessTable();
  v237 = v39;
  v238 = v40;
  v140 = swift_getWitnessTable();
  v235 = v140;
  v236 = v40;
  v141 = swift_getWitnessTable();
  v233 = v141;
  v234 = MEMORY[0x1E697EBF8];
  v41 = swift_getWitnessTable();
  v142 = v41;
  v42 = v200;
  v43 = swift_getWitnessTable();
  v231 = v41;
  v232 = v43;
  v44 = swift_getWitnessTable();
  v146 = v44;
  v45 = sub_1C5924F54(&qword_1EC198168, &qword_1EC198160, &qword_1C5BE9D98, v42);
  v229 = v44;
  v230 = v45;
  v46 = swift_getWitnessTable();
  v143 = v46;
  v47 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910, &qword_1C5BDCCF0, MEMORY[0x1E697DDB0]);
  v227 = v46;
  v228 = v47;
  v144 = swift_getWitnessTable();
  v225 = v144;
  v226 = MEMORY[0x1E69802C0];
  v147 = swift_getWitnessTable();
  v223 = v147;
  v224 = MEMORY[0x1E697E040];
  v149 = v35;
  v150 = swift_getWitnessTable();
  v252 = v37;
  v253 = v35;
  v254 = v38;
  v255 = v150;
  v48 = sub_1C5BC8BB4();
  v157 = v48;
  v163 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v199 = v139 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1980B0, &qword_1C5BE9B80);
  v160 = v50;
  v51 = sub_1C5924F54(&qword_1EC1980B8, &qword_1EC1980B0, &qword_1C5BE9B80, v173);
  v159 = v51;
  v158 = swift_getWitnessTable();
  v252 = v50;
  v253 = v48;
  v254 = v51;
  v255 = v158;
  v52 = sub_1C5BC8BB4();
  v171 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v201 = v139 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790, &qword_1C5BE0E40);
  v55 = swift_getWitnessTable();
  v56 = sub_1C5AE9478();
  v252 = v52;
  v253 = v54;
  v57 = v52;
  v151 = v52;
  v152 = v56;
  v153 = v55;
  v154 = v54;
  v254 = v55;
  v255 = v56;
  v58 = v56;
  v168 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v167 = OpaqueTypeMetadata2;
  v173 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v200 = v139 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC198008, qword_1C5BE9A78);
  v166 = v61;
  v252 = v57;
  v253 = v54;
  v254 = v55;
  v255 = v58;
  v62 = swift_getOpaqueTypeConformance2();
  v165 = v62;
  v164 = sub_1C5B1B970();
  v252 = OpaqueTypeMetadata2;
  v253 = v61;
  v254 = v62;
  v255 = v164;
  v63 = swift_getOpaqueTypeMetadata2();
  v64 = *(v63 - 8);
  v169 = v63;
  v170 = v64;
  MEMORY[0x1EEE9AC00](v63);
  v161 = v139 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v162 = v139 - v67;
  v68 = v190;
  v69 = v210;
  v70 = v193;
  v71 = v208;
  v72 = v211;
  sub_1C5BC9D94();
  v218 = v71;
  v73 = v71;
  v219 = v72;
  v220 = v69;
  sub_1C5BCAA54();
  v74 = v184;
  v75 = v204;
  sub_1C5BC9CE4();
  (*(v194 + 8))(v70, v75);
  v215 = v73;
  v216 = v72;
  v76 = v210;
  v217 = v210;
  sub_1C5BCAA54();
  v77 = v185;
  v78 = v205;
  sub_1C5BC9CE4();
  (*(v189 + 8))(v74, v78);
  v79 = v68;
  v80 = v76;
  sub_1C5BCAA54();
  v81 = v206;
  v82 = v186;
  sub_1C5BCA244();
  (*(v191 + 8))(v77, v81);
  sub_1C5BCAA54();
  v212 = v208;
  v213 = v211;
  v214 = v76;
  v83 = v176;
  v84 = v197;
  sub_1C5BCA2C4();
  (*(v192 + 8))(v82, v84);
  sub_1C5BCAA54();
  sub_1C5B1C014();
  v85 = v175;
  v86 = v203;
  sub_1C5BCA2C4();
  (*(v182 + 8))(v83, v86);
  v87 = v174;
  v88 = v198;
  sub_1C5BCA2A4();
  (*(v181 + 8))(v85, v88);
  v89 = v172;
  v90 = v145;
  sub_1C5BC9FC4();
  (*(v177 + 8))(v87, v90);
  sub_1C5BCAA54();
  v91 = v148;
  sub_1C5BCA234();
  (*(v178 + 8))(v89, v91);
  v252 = sub_1C5B15BB0();
  v92 = v209;
  v204 = *(v209 + 16);
  v206 = v209 + 16;
  v93 = v195;
  (v204)(v195, v80, v79);
  v203 = *(v92 + 80);
  v94 = (v203 + 32) & ~v203;
  v95 = swift_allocObject();
  v96 = v208;
  v97 = v211;
  *(v95 + 16) = v208;
  *(v95 + 24) = v97;
  v98 = *(v92 + 32);
  v209 = v92 + 32;
  v205 = v98;
  (v98)(v95 + v94, v93, v79);
  v99 = v149;
  v100 = v202;
  sub_1C5BCA3D4();

  (*(v183 + 8))(v100, v99);
  v101 = v210;
  v252 = sub_1C5B15EC0();
  v102 = v79;
  v103 = v79;
  v104 = v204;
  (v204)(v93, v101, v102);
  v198 = v94;
  v105 = swift_allocObject();
  v106 = v96;
  v107 = v211;
  *(v105 + 16) = v96;
  *(v105 + 24) = v107;
  (v205)(v105 + v94, v93, v103);
  v108 = v157;
  v109 = v199;
  sub_1C5BCA3D4();

  (*(v163 + 8))(v109, v108);
  v110 = v210;
  v111 = v210 + *(v103 + 48);
  v112 = *v111;
  v113 = *(v111 + 8);
  v114 = *(v111 + 16);
  v252 = v112;
  LOBYTE(v253) = v113;
  v254 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  sub_1C5BCA694();
  v252 = v221;
  LOBYTE(v253) = v222;
  v115 = v93;
  v104(v93, v110, v103);
  v116 = v198;
  v117 = swift_allocObject();
  *(v117 + 16) = v106;
  v118 = v211;
  *(v117 + 24) = v211;
  v119 = v205;
  (v205)(v117 + v116, v115, v103);
  v120 = v201;
  v121 = v151;
  sub_1C5BCA344();

  (*(v171 + 8))(v120, v121);
  v122 = v210;
  v123 = (v210 + *(v103 + 52));
  v124 = *v123;
  v125 = *(v123 + 4);
  v126 = *(v123 + 1);
  LODWORD(v252) = v124;
  BYTE4(v252) = v125;
  v253 = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0, &unk_1C5BE9B88);
  sub_1C5BCA694();
  LODWORD(v252) = v221;
  BYTE4(v252) = BYTE4(v221);
  (v204)(v115, v122, v103);
  v127 = swift_allocObject();
  *(v127 + 16) = v208;
  *(v127 + 24) = v118;
  v119(v127 + v116, v115, v103);
  v128 = v161;
  v130 = v166;
  v129 = v167;
  v132 = v164;
  v131 = v165;
  v133 = v200;
  sub_1C5BCA344();

  (*(v173 + 8))(v133, v129);
  v252 = v129;
  v253 = v130;
  v254 = v131;
  v255 = v132;
  v134 = swift_getOpaqueTypeConformance2();
  v135 = v162;
  v136 = v169;
  sub_1C593EDC0(v128, v169, v134);
  v137 = *(v170 + 8);
  v137(v128, v136);
  sub_1C593EDC0(v135, v136, v134);
  return (v137)(v135, v136);
}

uint64_t sub_1C5B17BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double (*a4)(uint64_t)@<X3>, double (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v49 = a4;
  v63 = a6;
  v64 = a1;
  v8 = sub_1C5BC9014();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BC8AB4();
  v59 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v48 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  v16 = sub_1C5BC8AB4();
  v58 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v48 - v17;
  v71 = a3;
  v72 = MEMORY[0x1E697E070];
  v57 = v14;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
  v51 = WitnessTable;
  v69 = WitnessTable;
  v70 = v19;
  v20 = swift_getWitnessTable();
  v56 = v16;
  v65 = v16;
  v66 = MEMORY[0x1E69E6370];
  v53 = v20;
  v67 = v20;
  v68 = MEMORY[0x1E69E6380];
  v21 = sub_1C5BCA724();
  v54 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  v27 = a3;
  v29 = type metadata accessor for SquareAssetArtworkBackground(0, a2, a3, v28);
  v30 = v10;
  v31 = v64;
  v32 = (*(v10 + 16))(v13, v64 + *(v29 + 36), a2);
  if (*(v31 + *(v29 + 40) + 8) <= *(v31 + *(v29 + 40)))
  {
    v33.n128_u64[0] = v49(v32);
    v34.n128_u64[0] = v36.n128_u64[0];
    v35.n128_u64[0] = -1.5;
    v36.n128_u64[0] = 1.0;
  }

  else
  {
    v33.n128_u64[0] = v50(v32);
    v34.n128_u64[0] = v36.n128_u64[0];
    v35.n128_u64[0] = 1.0;
    v36.n128_u64[0] = -1.5;
  }

  v37 = v52;
  MEMORY[0x1C694E080](a2, v27, v35, v36, v33, v34);
  (*(v30 + 8))(v13, a2);
  v38 = v60;
  sub_1C5BC9004();
  v39 = sub_1C5B1C554(&qword_1EC196DD8, MEMORY[0x1E697F400], MEMORY[0x1E697F3F8]);
  v40 = v55;
  v41 = v57;
  v42 = v62;
  v43 = sub_1C5B1077C(v38, v57, v62, v51, v39);
  (*(v61 + 8))(v38, v42, v43);
  (*(v59 + 8))(v37, v41);
  LOBYTE(v65) = *(v64 + *(v29 + 40) + 8) <= *(v64 + *(v29 + 40));
  v44 = v56;
  sub_1C5BCA1C4();
  (*(v58 + 8))(v40, v44);
  v45 = swift_getWitnessTable();
  sub_1C593EDC0(v23, v21, v45);
  v46 = *(v54 + 8);
  v46(v23, v21);
  sub_1C593EDC0(v26, v21, v45);
  return (v46)(v26, v21);
}

uint64_t sub_1C5B181B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a1;
  v128 = a4;
  v107 = a2;
  v5 = sub_1C5BC8AB4();
  v118 = a3;
  v148 = a3;
  v149 = sub_1C5953670();
  v144 = v5;
  v145 = v5;
  v117 = v5;
  WitnessTable = swift_getWitnessTable();
  v147 = WitnessTable;
  v108 = WitnessTable;
  v6 = type metadata accessor for MotionView(255, &v144);
  v116 = type metadata accessor for MCUINamespace(0, v6, v7, v8);
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v110 = &v91 - v9;
  v104 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v91 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0, &qword_1C5BE1030);
  v12 = sub_1C5BC8AB4();
  v105 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v91 - v13;
  v14 = sub_1C5BC8AB4();
  v111 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v91 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090, &unk_1C5BE9B68);
  v16 = sub_1C5BC8AB4();
  v115 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v91 - v17;
  v18 = type metadata accessor for MaterialMotionContentObserver(255);
  v94 = v6;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0, &qword_1C5BE1030, MEMORY[0x1E6980A18]);
  v96 = v19;
  v142 = v19;
  v143 = v20;
  v106 = v12;
  v95 = swift_getWitnessTable();
  v140 = v95;
  v141 = MEMORY[0x1E697F568];
  v113 = v14;
  v21 = swift_getWitnessTable();
  v22 = sub_1C5924F54(&qword_1EC198098, &qword_1EC198090, &unk_1C5BE9B68, MEMORY[0x1E697EC18]);
  v97 = v21;
  v138 = v21;
  v139 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  v127 = v16;
  v144 = v16;
  v145 = v18;
  v129 = v18;
  v126 = v23;
  WitnessTable = v23;
  v147 = v24;
  v125 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v99 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v98 = &v91 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860, &qword_1C5BE1040);
  v100 = OpaqueTypeMetadata2;
  v27 = sub_1C5BC8AB4();
  v121 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v101 = &v91 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v91 - v33;
  v35 = type metadata accessor for MotionAsset(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v91 - v40;
  v124 = sub_1C5BCB804();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v120 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v122 = &v91 - v44;
  sub_1C59400B0(v119, v34, &qword_1EC191EB8, &qword_1C5BD71A0);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_1C5924EF4(v34, &qword_1EC191EB8, &qword_1C5BD71A0);
    v45 = v120;
    (*(v121 + 56))(v120, 1, 1, v27);
    v46 = v127;
    v47 = v129;
    v144 = v127;
    v145 = v129;
    v48 = v126;
    v49 = v125;
    WitnessTable = v126;
    v147 = v125;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v51 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860, &qword_1C5BE1040, MEMORY[0x1E6980A18]);
    v136 = OpaqueTypeConformance2;
    v137 = v51;
    swift_getWitnessTable();
  }

  else
  {
    v93 = v41;
    sub_1C5A67D1C(v34, v41);
    v52 = sub_1C59C122C(v41, v38);
    MEMORY[0x1EEE9AC00](v52);
    v92 = v29;
    v53 = v107;
    v54 = v118;
    MEMORY[0x1EEE9AC00](v55);
    *(&v90 + 1) = v108;
    *&v90 = v117;
    v56 = v102;
    sub_1C59BDD68(v38, sub_1C5B1C6CC, sub_1C5B1C4D0, 0, 0, v117, v102, v90, v108);
    v57 = v110;
    v58 = v94;
    v59 = v96;
    View.mcui.getter(v94, v110);
    (*(v104 + 8))(v56, v58);
    LOBYTE(v144) = 1;
    v60 = v103;
    v61 = v116;
    v62 = MCUINamespace<A>.motionCacheDownload(policy:)(&v144, v116, v59);
    (*(v114 + 8))(v57, v61, v62);
    v117 = v27;
    v63 = v109;
    v64 = v106;
    sub_1C5BC9D94();
    (*(v105 + 8))(v60, v64);
    v65 = sub_1C5BCAA54();
    MEMORY[0x1EEE9AC00](v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198148, &qword_1C5BE9D60);
    sub_1C5B1BEA0();
    v66 = v112;
    v67 = v113;
    sub_1C5BCA2C4();
    v68 = v63;
    v69 = v117;
    (*(v111 + 8))(v68, v67);
    type metadata accessor for SquareAssetArtworkBackground(0, v53, v54, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
    sub_1C5BC81A4();
    v71 = v98;
    v46 = v127;
    v72 = v129;
    v48 = v126;
    v49 = v125;
    sub_1C5BC9DE4();

    (*(v115 + 8))(v66, v46);
    swift_getKeyPath(asc_1C5BE9D68);
    v132 = 2;
    v144 = v46;
    v145 = v72;
    WitnessTable = v48;
    v147 = v49;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = v92;
    v75 = v100;
    sub_1C5BC9DF4();

    (*(v99 + 8))(v71, v75);
    sub_1C59C1338(v93);
    v76 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860, &qword_1C5BE1040, MEMORY[0x1E6980A18]);
    v130 = v73;
    v131 = v76;
    v77 = swift_getWitnessTable();
    v78 = v101;
    sub_1C593EDC0(v74, v69, v77);
    v79 = v121;
    v80 = *(v121 + 8);
    v80(v74, v69);
    sub_1C593EDC0(v78, v69, v77);
    v80(v78, v69);
    v45 = v120;
    v81 = v74;
    v47 = v129;
    (*(v79 + 32))(v120, v81, v69);
    (*(v79 + 56))(v45, 0, 1, v69);
  }

  v82 = v122;
  sub_1C5941600(v45, v122);
  v83 = *(v123 + 8);
  v84 = v45;
  v85 = v124;
  v83(v84, v124);
  v144 = v46;
  v145 = v47;
  WitnessTable = v48;
  v147 = v49;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860, &qword_1C5BE1040, MEMORY[0x1E6980A18]);
  v134 = v86;
  v135 = v87;
  v133 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  sub_1C593EDC0(v82, v85, v88);
  return (v83)(v82, v85);
}

void sub_1C5B190FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for SquareAssetArtworkBackground(0, a2, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  swift_getKeyPath(byte_1C5BE9BC8);
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v8 = *(v17 + 16);
  v9 = v8;

  v10 = 0.0;
  if (!v8)
  {
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  sub_1C5BCA694();
  if (v16 & 1) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0), sub_1C5BCA694(), (LOBYTE(v15)))
  {

    v8 = 0;
LABEL_5:
    v11 = 0;
    v12 = 0;
    v13 = 0.0;
    goto LABEL_6;
  }

  v14 = (a1 + *(v7 + 40));
  v10 = *v14;
  v13 = v14[1];
  if (v13 <= *v14)
  {
    v10 = v15 * v13;
    v11 = 257;
  }

  else
  {
    v11 = 1;
    v13 = v10 / v15;
  }

  v12 = 0x3FF8000000000000;
LABEL_6:
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v13;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
}

uint64_t sub_1C5B192E4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath(byte_1C5BE9CE0);
  result = swift_getKeyPath(byte_1C5BE9D20);
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1C5B19330(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 16) & 1) == 0 && (*result != 0.0 || *(result + 8) != 0.0))
  {
    type metadata accessor for SquareAssetArtworkBackground(0, a3, a4, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
    return sub_1C5BCA6A4();
  }

  return result;
}

uint64_t sub_1C5B193E4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SquareAssetArtworkBackground(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0, &unk_1C5BE9B88);
  return sub_1C5BCA6A4();
}

void *sub_1C5B19478(int *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0, &unk_1C5BE9B88);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA694();
  v1 = sub_1C5B157D0(v3, v4, v3 | (BYTE4(v3) << 32), (v3 & 1) == 0, 1.0) & 1;
  result = sub_1C5BCA694();
  if (v1 != v3)
  {
    return sub_1C5BCA6A4();
  }

  return result;
}

void sub_1C5B195F8(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  if (a1)
  {
    if (qword_1EC190890 != -1)
    {
      swift_once();
    }

    v6 = sub_1C5BC7D64();
    __swift_project_value_buffer(v6, qword_1EC1A6D60);
    oslog = sub_1C5BC7D44();
    v7 = sub_1C5BCB4F4();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 134218498;
      *(v8 + 4) = a5;
      *(v8 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790, &qword_1C5BE0E40);
      v10 = sub_1C5BCAEA4();
      v12 = sub_1C592ADA8(v10, v11, &v17);

      *(v8 + 14) = v12;
      *(v8 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198008, qword_1C5BE9A78);
      v13 = sub_1C5BCAEA4();
      v15 = sub_1C592ADA8(v13, v14, &v17);

      *(v8 + 24) = v15;
      _os_log_impl(&dword_1C5922000, oslog, v7, "Not showing video asset. Expected aspect ratio: %f. Current aspect ratio: %s, current frame rate: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v9, -1, -1);
      MEMORY[0x1C69510F0](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C5B19820(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    v18 = a2;
    v3 = [v2 tracks];
    sub_1C5B1BE30();
    v4 = sub_1C5BCB054();

    if (v4 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C5BCB984())
    {

      if (!i)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C694FD20](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 assetTrack];

        if (v10)
        {
          v11 = [v10 mediaType];
          v12 = sub_1C5BCAE74();
          v14 = v13;
          if (v12 == sub_1C5BCAE74() && v14 == v15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_23;
          }

          v17 = sub_1C5BCBDE4();

          if (v17)
          {
            swift_bridgeObjectRelease_n();
            goto LABEL_23;
          }
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_19:
    swift_bridgeObjectRelease_n();
    v10 = 0;
LABEL_23:
    a2 = v18;
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
}

void sub_1C5B19A40(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198118, &qword_1C5BE9C30);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *a1;
  if (*a1)
  {
    *(swift_allocObject() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198128, &unk_1C5BE9C38);
    swift_allocObject();
    v9 = v8;
    v11 = sub_1C5BC7FE4();
    sub_1C5924F54(&qword_1EC198130, &qword_1EC198128, &unk_1C5BE9C38, MEMORY[0x1E695C038]);
    v10 = sub_1C5BC8064();
  }

  else
  {
    v12 = 0;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198008, qword_1C5BE9A78);
    sub_1C5BC7FC4();
    sub_1C5924F54(&qword_1EC198120, &qword_1EC198118, &qword_1C5BE9C30, MEMORY[0x1E695C008]);
    v10 = sub_1C5BC8064();
    (*(v5 + 8))(v7, v4);
  }

  *a2 = v10;
}

double sub_1C5B19C58(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1C5BCB214();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1C5BCB1E4();

  v11 = a3;
  v12 = sub_1C5BCB1D4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = sub_1C5B1BD14;
  v13[5] = v9;
  v13[6] = v11;
  sub_1C5AD0FB8(0, 0, v8, &unk_1C5BE9C50, v13);

  return result;
}

uint64_t sub_1C5B19DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_1C5BCB1E4();
  v6[6] = sub_1C5BCB1D4();
  v8 = sub_1C5BCB194();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C5B19E68, v8, v7);
}

uint64_t sub_1C5B19E68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198138, &qword_1C5BE9C58);
  v1 = sub_1C5BC7BC4();
  v0[9] = v1;
  v2 = sub_1C5BCB1D4();
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1C5B19F54;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE68140](v0 + 12, v1, v2, v4);
}

uint64_t sub_1C5B19F54()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1C5B1A140;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1C5B1A0C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C5B1A0C4()
{

  (*(v0 + 16))(*(v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5B1A140()
{

  (*(v0 + 16))(0x100000000);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5B1A1BC()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6D60);
  __swift_project_value_buffer(v0, qword_1EC1A6D60);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5B1A23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for LockScreenArtworkBackground(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5B1107C(a1, v9, v6, v7, a3);
}

void sub_1C5B1A34C(uint64_t a1)
{
  sub_1C5B1B094(319, &qword_1EC195428, type metadata accessor for MotionAsset, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5B1A41C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1C5BC7A24() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v8 + v10 + 1;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v14 = v11 + (v13 & ~v10) + 2;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      v22 = (a1 + v13) & ~v10;
      if (v9 < 0xFE)
      {
        v24 = *(v22 + v11);
        if (v24 >= 2)
        {
          return v24 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v23 = *(*(*(a3 + 16) - 8) + 48);

        return v23(v22);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

void sub_1C5B1A618(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1C5BC7A24() - 8) + 64);
  v9 = 8;
  v10 = *(*(a4 + 16) - 8);
  if (v8 > 8)
  {
    v9 = v8;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v10 + 84);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v12;
  }

  v16 = v9 + v13 + 1;
  v17 = v14 + (v16 & ~v13) + 2;
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v14 + (v16 & ~v13) != -2)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v24 = &a1[v16] & ~v13;
  if (v12 < 0xFE)
  {
    *(v24 + v14) = a2 + 1;
  }

  else
  {
    v25 = *(v11 + 56);

    v25(v24, a2);
  }
}

void sub_1C5B1A8A4(uint64_t a1)
{
  sub_1C5B1B094(319, &qword_1EC195428, type metadata accessor for MotionAsset, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1C5B1B094(319, &qword_1EC195788, type metadata accessor for MaterialMotionContentObserver, MEMORY[0x1E697DA80]);
        if (v4 <= 0x3F)
        {
          sub_1C5A7B478(319, &qword_1EDA45FF0, &qword_1EC195790, &qword_1C5BE0E40);
          if (v5 <= 0x3F)
          {
            sub_1C5A7B478(319, &qword_1EC198000, qword_1EC198008, qword_1C5BE9A78);
            if (v6 <= 0x3F)
            {
              sub_1C59B5DEC();
              if (v7 <= 0x3F)
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

uint64_t sub_1C5B1AA34(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1C5BC7A24() - 8) + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v8 + 84);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  if (v13 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v10 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v9 + v14 + 1;
  v18 = *(v8 + 64) + 7;
  v19 = *(v12 + 80) & 0xF8 | 7;
  v20 = *(*(v11 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v21 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + ((v19 + ((v18 + (v17 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v19) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v16 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v16 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  v30 = (a1 + v17) & ~v14;
  if (v10 >= v15)
  {
    v33 = *(v8 + 48);

    return v33(v30, v10, v7);
  }

  else
  {
    v31 = (((v18 + v30) & 0xFFFFFFFFFFFFFFF8) + v19 + 16) & ~v19;
    if (v13 < 0x7FFFFFFE)
    {
      v34 = *((v20 + v31) & 0xFFFFFFFFFFFFFFF8);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      if ((v34 + 1) >= 2)
      {
        return v34;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v32 = *(v12 + 48);

      return v32(v31);
    }
  }
}

void sub_1C5B1AD2C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1C5BC7A24() - 8) + 64);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (v8 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v10 + 84);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  v14 = v10;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (v16 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = *(v15 + 84);
  }

  if (v12 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v12;
  }

  v21 = v11 + v17 + 1;
  v22 = v18 + 7;
  v23 = *(v15 + 80) & 0xF8 | 7;
  v24 = (v23 + ((v18 + 7 + (v21 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23;
  v25 = *(*(v13 - 8) + 64) + 7;
  v26 = v25 & 0xFFFFFFF8;
  v27 = (((((v25 & 0xFFFFFFFFFFFFFFF8) + v24 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v30 = 0;
    v31 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((((((v25 & 0xFFFFFFF8) + v24 + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v28 = a3 - v20 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = a2 - v20;
    if (a2 <= v20)
    {
LABEL_23:
      if (v30 > 1)
      {
        if (v30 != 2)
        {
          *(a1 + v27) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *(a1 + v27) = 0;
      }

      else if (v30)
      {
        *(a1 + v27) = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        v34 = (a1 + v21) & ~v17;
        if (v12 >= v19)
        {
          v37 = *(v14 + 56);

          v37(v34, a2, v12, v9);
        }

        else
        {
          v35 = ((((v22 + v34) & 0xFFFFFFFFFFFFFFF8) + v23 + 16) & ~v23);
          if (v19 >= a2)
          {
            if (v16 < 0x7FFFFFFE)
            {
              v40 = ((v35 + v25) & 0xFFFFFFFFFFFFFFF8);
              if (a2 > 0x7FFFFFFE)
              {
                *v40 = 0;
                *v40 = a2 - 0x7FFFFFFF;
              }

              else
              {
                *v40 = a2;
              }
            }

            else
            {
              v38 = *(v15 + 56);
              v39 = (((v22 + v34) & 0xFFFFFFFFFFFFFFF8) + v23 + 16) & ~v23;

              v38(v39, a2);
            }
          }

          else if (v26 != -8)
          {
            v36 = ~v19 + a2;
            bzero(((((v22 + v34) & 0xFFFFFFFFFFFFFFF8) + v23 + 16) & ~v23), (v26 + 8));
            *v35 = v36;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  if (v27)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31;
  }

  if (v27)
  {
    v33 = ~v20 + a2;
    bzero(a1, v27);
    *a1 = v33;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      *(a1 + v27) = v32;
    }

    else
    {
      *(a1 + v27) = v32;
    }
  }

  else if (v30)
  {
    *(a1 + v27) = v32;
  }
}

void sub_1C5B1B094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5B1B0F8(uint64_t a1)
{
  sub_1C5B1B094(319, &qword_1EC195428, type metadata accessor for MotionAsset, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1C5B1B094(319, &qword_1EC195788, type metadata accessor for MaterialMotionContentObserver, MEMORY[0x1E697DA80]);
        if (v4 <= 0x3F)
        {
          sub_1C5A7B478(319, &qword_1EDA45FF0, &qword_1EC195790, &qword_1C5BE0E40);
          if (v5 <= 0x3F)
          {
            sub_1C5A7B478(319, &qword_1EC198000, qword_1EC198008, qword_1C5BE9A78);
            if (v6 <= 0x3F)
            {
              sub_1C59B5DEC();
              if (v7 <= 0x3F)
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

uint64_t sub_1C5B1B290(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1C5BC7A24() - 8) + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v8 + 84);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  if (v13 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (v10 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v9 + v14 + 1;
  v19 = *(v12 + 80) & 0xF8 | 7;
  v20 = *(*(v11 - 8) + 64) + 7;
  if (v17 >= a2)
  {
    goto LABEL_33;
  }

  v21 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + ((v19 + (((v18 & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v19) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v17 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v17 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  v30 = (a1 + v18) & ~v14;
  if (v10 >= v16)
  {
    v33 = *(v8 + 48);

    return v33(v30, v10, v7);
  }

  else
  {
    v31 = (((v30 + v15) & 0xFFFFFFFFFFFFFFF8) + v19 + 24) & ~v19;
    if (v13 < 0x7FFFFFFE)
    {
      v34 = *((v20 + v31) & 0xFFFFFFFFFFFFFFF8);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      if ((v34 + 1) >= 2)
      {
        return v34;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v32 = *(v12 + 48);

      return v32(v31);
    }
  }
}

void sub_1C5B1B584(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1C5BC7A24() - 8) + 64);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (v8 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v10 + 84);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  v14 = v10;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (v16 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = *(v15 + 84);
  }

  if (v12 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v12;
  }

  v21 = v11 + v17 + 1;
  v22 = *(v15 + 80) & 0xF8 | 7;
  v23 = *(*(v13 - 8) + 64) + 7;
  v24 = v23 & 0xFFFFFFF8;
  v25 = (((((v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v28 = 0;
    v29 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((((((v23 & 0xFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a3 - v20 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v20;
    if (a2 <= v20)
    {
LABEL_23:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *(a1 + v25) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *(a1 + v25) = 0;
      }

      else if (v28)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        v32 = (a1 + v21) & ~v17;
        if (v12 >= v19)
        {
          v35 = *(v14 + 56);

          v35(v32, a2, v12, v9);
        }

        else
        {
          v33 = ((((v32 + v18) & 0xFFFFFFFFFFFFFFF8) + v22 + 24) & ~v22);
          if (v19 >= a2)
          {
            if (v16 < 0x7FFFFFFE)
            {
              v38 = ((v33 + v23) & 0xFFFFFFFFFFFFFFF8);
              if (a2 > 0x7FFFFFFE)
              {
                *v38 = 0;
                *v38 = a2 - 0x7FFFFFFF;
              }

              else
              {
                *v38 = a2;
              }
            }

            else
            {
              v36 = *(v15 + 56);
              v37 = (((v32 + v18) & 0xFFFFFFFFFFFFFFF8) + v22 + 24) & ~v22;

              v36(v37, a2);
            }
          }

          else if (v24 != -8)
          {
            v34 = ~v19 + a2;
            bzero(((((v32 + v18) & 0xFFFFFFFFFFFFFFF8) + v22 + 24) & ~v22), (v24 + 8));
            *v33 = v34;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  if ((((((v23 & 0xFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 1;
  }

  if ((((((v23 & 0xFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v31 = ~v20 + a2;
    bzero(a1, (((((v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v30;
    }

    else
    {
      *(a1 + v25) = v30;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v30;
  }
}

unint64_t sub_1C5B1B970()
{
  result = qword_1EC1980C0;
  if (!qword_1EC1980C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC198008, qword_1C5BE9A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1980C0);
  }

  return result;
}

unint64_t sub_1C5B1BA10()
{
  result = qword_1EC1980C8;
  if (!qword_1EC1980C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1980C8);
  }

  return result;
}

uint64_t objectdestroy_21Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for TallAssetArtworkBackground(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = (v4 + v7);
  v9 = type metadata accessor for MotionAsset(0);
  if (!(*(*(v9 - 8) + 48))(v4 + v7, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v10 = sub_1C5BC7A24();
      (*(*(v10 - 8) + 8))(v4 + v7, v10);
    }
  }

  (*(*(v5 - 8) + 8))(v8 + *(v6 + 36), v5);
  v11 = v8 + *(v6 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195748, &qword_1C5BE0D90);

  return swift_deallocObject();
}

uint64_t sub_1C5B1BD14(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = BYTE4(a1);
  v4 = a1;
  v6 = BYTE5(a1) & 1;
  return v2(&v4);
}

uint64_t sub_1C5B1BD68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C592ABD4;

  return sub_1C5B19DC8(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1C5B1BE30()
{
  result = qword_1EC198140;
  if (!qword_1EC198140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC198140);
  }

  return result;
}

unint64_t sub_1C5B1BEA0()
{
  result = qword_1EC198150;
  if (!qword_1EC198150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198148, &qword_1C5BE9D60);
    sub_1C5B1BF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198150);
  }

  return result;
}

unint64_t sub_1C5B1BF24()
{
  result = qword_1EC198158;
  if (!qword_1EC198158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198158);
  }

  return result;
}

unint64_t sub_1C5B1C014()
{
  result = qword_1EC198170;
  if (!qword_1EC198170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198170);
  }

  return result;
}

uint64_t sub_1C5B1C094(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

uint64_t sub_1C5B1C168(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

uint64_t objectdestroy_66Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for SquareAssetArtworkBackground(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = (v4 + v7);
  v9 = type metadata accessor for MotionAsset(0);
  if (!(*(*(v9 - 8) + 48))(v4 + v7, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v10 = sub_1C5BC7A24();
      (*(*(v10 - 8) + 8))(v4 + v7, v10);
    }
  }

  (*(*(v5 - 8) + 8))(v8 + *(v6 + 36), v5);
  v11 = v8 + *(v6 + 44);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195748, &qword_1C5BE0D90);

  return swift_deallocObject();
}

uint64_t sub_1C5B1C554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C5B1C5D0()
{
  result = qword_1EC198188;
  if (!qword_1EC198188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198180, &qword_1C5BE9E60);
    sub_1C5924F54(&qword_1EC198190, &qword_1EC198178, &qword_1C5BE9E58, MEMORY[0x1E697E030]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198188);
  }

  return result;
}

uint64_t ParallaxHeader.init(parallaxBackground:content:fixedBackground:)@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for ParallaxContext(0);
  sub_1C5ACB060();
  *a6 = sub_1C5BC8324();
  *(a6 + 8) = v14 & 1;
  v30 = a4;
  v31 = a5;
  v32 = a7;
  v33 = a8;
  v34 = a9;
  v15 = type metadata accessor for ParallaxHeader(0, &v30);
  v16 = (a6 + v15[20]);
  v35 = 0;
  sub_1C5BCA684();
  v17 = v31;
  *v16 = v30;
  v16[1] = v17;
  v18 = (a6 + v15[21]);
  v35 = 0x3FF0000000000000;
  sub_1C5BCA684();
  v19 = v31;
  *v18 = v30;
  v18[1] = v19;
  v20 = (a6 + v15[22]);
  v35 = 0;
  sub_1C5BCA684();
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v22 = a6 + v15[23];
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790, &qword_1C5BE0E40);
  v23 = sub_1C5BCA684();
  v24 = v31;
  v25 = v32;
  *v22 = v30;
  *(v22 + 8) = v24 & 1;
  *(v22 + 16) = v25;
  v26 = a1(v23);
  v27 = a2(v26);
  return a3(v27);
}

uint64_t ParallaxHeader.init<>(parallaxBackground:)@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for ParallaxContext(0);
  sub_1C5ACB060();
  *a4 = sub_1C5BC8324();
  *(a4 + 8) = v8 & 1;
  v21 = a2;
  v22 = MEMORY[0x1E6981E70];
  v23 = MEMORY[0x1E6981E70];
  v24 = a3;
  v25 = MEMORY[0x1E6981E60];
  v26 = MEMORY[0x1E6981E60];
  v9 = type metadata accessor for ParallaxHeader(0, &v21);
  v10 = (a4 + v9[20]);
  v27 = 0;
  sub_1C5BCA684();
  v11 = v22;
  *v10 = v21;
  v10[1] = v11;
  v12 = (a4 + v9[21]);
  v27 = 0x3FF0000000000000;
  sub_1C5BCA684();
  v13 = v22;
  *v12 = v21;
  v12[1] = v13;
  v14 = (a4 + v9[22]);
  v27 = 0;
  sub_1C5BCA684();
  v15 = v22;
  *v14 = v21;
  v14[1] = v15;
  v16 = a4 + v9[23];
  v27 = 0;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790, &qword_1C5BE0E40);
  v17 = sub_1C5BCA684();
  v18 = v22;
  v19 = v23;
  *v16 = v21;
  *(v16 + 8) = v18 & 1;
  *(v16 + 16) = v19;
  return a1(v17);
}

uint64_t sub_1C5B1CA4C()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_1C5B1CB8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA694();
  return v2;
}

double sub_1C5B1CC4C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710, &qword_1C5BD2F70);
  sub_1C5BCA694();
  return v2;
}

uint64_t sub_1C5B1CD6C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  sub_1C5BCA694();
  return v2;
}

uint64_t sub_1C5B1CDD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  sub_1C5BCA6B4();
  return v2;
}

void sub_1C5B1CE48(uint64_t a1)
{
  v2 = sub_1C5B1CC4C(a1) + 50.0;
  v3 = sub_1C5B1CA4C();
  swift_getKeyPath(byte_1C5BEA2D0);
  sub_1C5ACB060();
  sub_1C5BC7B74();

  v4 = *(v3 + 48);

  v5 = sub_1C5B1CB8C(a1) - v4 - v2;
  if (v5 > 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = sub_1C5B1CB8C(a1) + 0.0 - v4;
  if (v7 > 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  if (v6 > v8)
  {
    __break(1u);
  }
}

void sub_1C5B1CF40(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(v6 + 72), v3, v4);
  LODWORD(v3) = swift_dynamicCast();
  sub_1C5B1CE48(a1);
  if (v3)
  {
    if (v8 < 0.0)
    {
      __break(1u);
    }
  }
}

uint64_t ParallaxHeader.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v139 = *(a1 - 1);
  *&v147 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v137 = v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v146 = *(v4 + 16);
  v153 = sub_1C5BC8AB4();
  v142 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v134 = v104 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1941D8, &qword_1C5BDA530);
  v152 = sub_1C5BC8AB4();
  v141 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v136 = v104 - v6;
  v154 = sub_1C5BC8AB4();
  v143 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v135 = v104 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198198, &qword_1C5BE9E68);
  v149 = sub_1C5BC8AB4();
  v144 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v138 = v104 - v8;
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A0, &qword_1C5BE9E70);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A8, &unk_1C5BE9E78);
  v130 = sub_1C5BC8AB4();
  v9 = a1[7];
  v132 = a1[4];
  v133 = v9;
  v148 = sub_1C5BC8BE4();
  v129 = sub_1C5BC8AB4();
  v10 = a1[3];
  v151 = a1;
  v131 = v10;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0, &qword_1C5BDA520);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B0, &qword_1C5BE9E88);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B8, &unk_1C5BE9E90);
  sub_1C5BC8AB4();
  v104[0] = a1[5];
  v212 = v104[0];
  v213 = MEMORY[0x1E697E270];
  v11 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v211 = MEMORY[0x1E697E070];
  v12 = swift_getWitnessTable();
  v13 = sub_1C5924F54(&qword_1EC1981C0, &qword_1EC1981A0, &qword_1C5BE9E70, MEMORY[0x1E697DDB0]);
  v208 = v12;
  v209 = v13;
  v14 = swift_getWitnessTable();
  v15 = MEMORY[0x1E6980758];
  v16 = sub_1C5924F54(&qword_1EC1981C8, &qword_1EC1981A8, &unk_1C5BE9E78, MEMORY[0x1E6980758]);
  v206 = v14;
  v207 = v16;
  v17 = swift_getWitnessTable();
  v18 = MEMORY[0x1E697EC18];
  v19 = swift_getWitnessTable();
  v204 = v17;
  v205 = v19;
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v202 = v20;
  v203 = v21;
  v200 = swift_getWitnessTable();
  v201 = MEMORY[0x1E69802C0];
  v22 = swift_getWitnessTable();
  v23 = sub_1C5924F54(&qword_1EC1981D0, &qword_1EC1981B0, &qword_1C5BE9E88, v15);
  v198 = v22;
  v199 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1C5924F54(&qword_1EC1981D8, &qword_1EC1981B8, &unk_1C5BE9E90, v15);
  v196 = v24;
  v197 = v25;
  swift_getWitnessTable();
  sub_1C5BC8874();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943A0, &qword_1C5BDAD28);
  v26 = sub_1C5BC8AB4();
  v123 = MEMORY[0x1E697E378];
  v27 = swift_getWitnessTable();
  v28 = sub_1C5924F54(&qword_1EDA46118, &qword_1EC1943A0, &qword_1C5BDAD28, MEMORY[0x1E6980A18]);
  v194 = v27;
  v195 = v28;
  v127 = v26;
  v128 = swift_getWitnessTable();
  sub_1C5BC8BE4();
  v29 = sub_1C5BC8AB4();
  v130 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v121 = v104 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981E0, &unk_1C5BE9EA0);
  v114 = v29;
  v31 = sub_1C5BC8AB4();
  v129 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v120 = v104 - v32;
  v33 = v104[0];
  v192 = v104[0];
  v193 = MEMORY[0x1E697F568];
  v34 = swift_getWitnessTable();
  v104[1] = v34;
  v35 = sub_1C5924F54(&qword_1EC1941D0, &qword_1EC1941D8, &qword_1C5BDA530, MEMORY[0x1E6980620]);
  v190 = v34;
  v191 = v35;
  v36 = swift_getWitnessTable();
  v104[2] = v36;
  v37 = sub_1C5953670();
  v188 = v36;
  v189 = v37;
  v38 = swift_getWitnessTable();
  v106 = v38;
  v39 = sub_1C5924F54(&qword_1EC1981E8, &qword_1EC198198, &qword_1C5BE9E68, v18);
  v186 = v38;
  v187 = v39;
  v40 = swift_getWitnessTable();
  v109 = v40;
  v41 = swift_getWitnessTable();
  v184 = v40;
  v185 = v41;
  v150 = v11;
  v42 = swift_getWitnessTable();
  v111 = v42;
  v43 = sub_1C5924F54(&qword_1EC1981F0, &qword_1EC1981E0, &unk_1C5BE9EA0, v15);
  v182 = v42;
  v183 = v43;
  v113 = v31;
  v112 = swift_getWitnessTable();
  v169 = v31;
  v170 = v112;
  v115 = MEMORY[0x1E697D010];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v116 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v107 = v104 - v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700, &unk_1C5BE3D70);
  v105 = sub_1C5BC8AB4();
  v117 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v108 = v104 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8, &unk_1C5BE9EB0);
  v119 = sub_1C5BC8AB4();
  v125 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v148 = v104 - v46;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196078, &qword_1C5BE2B78);
  v124 = sub_1C5BC8AB4();
  v126 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v118 = v104 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v122 = v104 - v49;
  v50 = v151;
  v51 = v140;
  v52 = v134;
  v53 = v146;
  sub_1C5BC9ED4();
  v54 = v139;
  v55 = v137;
  (*(v139 + 16))(v137, v51, v50);
  v56 = v54;
  v57 = (*(v54 + 80) + 64) & ~*(v54 + 80);
  v58 = swift_allocObject();
  *&v59 = v53;
  *(&v59 + 1) = v131;
  *&v60 = v132;
  *(&v60 + 1) = v33;
  v146 = v60;
  v147 = v59;
  *(v58 + 16) = v59;
  *(v58 + 32) = v60;
  v61 = v50;
  v62 = v50[6];
  v63 = v133;
  *(v58 + 48) = v62;
  *(v58 + 56) = v63;
  (*(v56 + 32))(v58 + v57, v55, v61);
  sub_1C5B1E3E8();
  sub_1C59AEC40();
  v64 = v136;
  v65 = v153;
  sub_1C5BCA084();

  (*(v142 + 8))(v52, v65);
  v66 = v135;
  v67 = v152;
  sub_1C5BCA254();
  (*(v141 + 8))(v64, v67);
  v160 = v147;
  v161 = v146;
  v162 = v62;
  v163 = v63;
  v164 = v51;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198200, &qword_1C5BE9EC0);
  sub_1C5924F54(&qword_1EC198208, &qword_1EC198200, &qword_1C5BE9EC0, v123);
  v68 = v138;
  v69 = v154;
  sub_1C5BCA2C4();
  (*(v143 + 8))(v66, v69);
  v155 = v147;
  v156 = v146;
  v157 = v62;
  v158 = v63;
  v159 = v51;
  sub_1C5BCAA54();
  v70 = v121;
  v71 = v149;
  sub_1C5BCA2C4();
  (*(v144 + 8))(v68, v71);
  LOBYTE(v169) = 1;
  sub_1C5B1EEA8();
  v72 = v120;
  v73 = v114;
  sub_1C5BC9D44();
  (*(v130 + 8))(v70, v73);
  sub_1C5BC8554();
  v74 = v107;
  v76 = v112;
  v75 = v113;
  sub_1C5BC9FD4();
  (*(v129 + 8))(v72, v75);
  *&v214 = sub_1C5BCA484();
  v169 = v75;
  v170 = v76;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = v108;
  v79 = OpaqueTypeMetadata2;
  sub_1C5BCA004();

  (*(v116 + 8))(v74, v79);
  v80 = MEMORY[0x1E697FDC0];
  v81 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700, &unk_1C5BE3D70, MEMORY[0x1E697FDC0]);
  v214 = 0u;
  v215 = 0u;
  v216 = 0;
  v180 = OpaqueTypeConformance2;
  v181 = v81;
  v82 = v105;
  v83 = swift_getWitnessTable();
  sub_1C5BC9EE4();
  (*(v117 + 8))(v78, v82);
  v84 = sub_1C5B1CDD8(v151);
  v86 = v85;
  v88 = v87;
  LOBYTE(v78) = v89;
  v178 = 0;
  v179 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198218, &qword_1C5BE9EC8);
  sub_1C5BCA854();
  v90 = v169;
  v91 = v170;
  v92 = v171;
  v218 = v78 & 1;
  v217 = v172;
  v169 = v84;
  v170 = v86;
  v171 = v88;
  v172 = v78 & 1;
  *v173 = v178;
  *&v173[3] = *(&v178 + 3);
  v174 = v90;
  v175 = v91;
  v176 = v92;
  v177 = v217;
  sub_1C5BCAA54();
  v93 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8, &unk_1C5BE9EB0, v80);
  v167 = v83;
  v168 = v93;
  v94 = v119;
  v95 = swift_getWitnessTable();
  sub_1C5AA1E4C();
  v96 = v118;
  v97 = v148;
  sub_1C5BC9D04();

  (*(v125 + 8))(v97, v94);
  v98 = sub_1C5924F54(&qword_1EC1963C8, &qword_1EC196078, &qword_1C5BE2B78, MEMORY[0x1E697F940]);
  v165 = v95;
  v166 = v98;
  v99 = v124;
  v100 = swift_getWitnessTable();
  v101 = v122;
  sub_1C593EDC0(v96, v99, v100);
  v102 = *(v126 + 8);
  v102(v96, v99);
  sub_1C593EDC0(v101, v99, v100);
  return (v102)(v101, v99);
}

uint64_t sub_1C5B1E324(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12 = v1[2];
  v3 = v12;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  type metadata accessor for ParallaxHeader(0, &v12);
  v9 = *a1;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v10 = type metadata accessor for ParallaxHeader(0, &v12);
  return sub_1C5B1CD0C(v10, v9);
}

unint64_t sub_1C5B1E3E8()
{
  result = qword_1EC1981F8;
  if (!qword_1EC1981F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1981F8);
  }

  return result;
}

uint64_t sub_1C5B1E43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)(uint64_t a1)@<X8>)
{
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v13 = type metadata accessor for ParallaxHeader(0, v27);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  (*(v14 + 16))(&v23 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v20 = v25;
  *(v19 + 6) = v24;
  *(v19 + 7) = v20;
  result = (*(v14 + 32))(&v19[v18], v17, v13);
  v22 = v26;
  *v26 = sub_1C5B21838;
  v22[1] = v19;
  return result;
}

uint64_t sub_1C5B1E5C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a6;
  v26 = a7;
  v28 = a8;
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v13 = type metadata accessor for ParallaxHeader(0, v30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v27 = sub_1C5BCA484();
  v30[0] = v27;
  sub_1C5BC86C4();
  v29 = v17;
  (*(v14 + 16))(v16, a1, v13);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v20 = v26;
  *(v19 + 6) = v25;
  *(v19 + 7) = v20;
  (*(v14 + 32))(&v19[v18], v16, v13);
  sub_1C59AEC40();
  v21 = v28;
  sub_1C5BCA334();

  v22 = sub_1C5B1CB8C(v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1982F0, &unk_1C5BEA300);
  *(v21 + *(result + 36)) = v22;
  return result;
}

double sub_1C5B1E7C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a7;
  v46 = a3;
  v50 = a4;
  v51 = a8;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  v81 = a4;
  v82 = a5;
  v48 = a5;
  v83 = a6;
  v84 = a7;
  v13 = type metadata accessor for ParallaxHeader(0, &v80);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  (*(v14 + 16))(&v44 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = v50;
  *(v19 + 5) = a5;
  v20 = v45;
  *(v19 + 6) = a6;
  *(v19 + 7) = v20;
  (*(v14 + 32))(&v19[v18], v17, v13);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A0, &qword_1C5BE9E70);
  v47 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A8, &unk_1C5BE9E78);
  v49 = sub_1C5BC8AB4();
  v50 = sub_1C5BC8BE4();
  v45 = sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0, &qword_1C5BDA520);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B0, &qword_1C5BE9E88);
  v46 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B8, &unk_1C5BE9E90);
  sub_1C5BC8AB4();
  v75 = v48;
  v76 = MEMORY[0x1E697E270];
  WitnessTable = swift_getWitnessTable();
  v74 = MEMORY[0x1E697E070];
  v21 = swift_getWitnessTable();
  v22 = sub_1C5924F54(&qword_1EC1981C0, &qword_1EC1981A0, &qword_1C5BE9E70, MEMORY[0x1E697DDB0]);
  v71 = v21;
  v72 = v22;
  v23 = swift_getWitnessTable();
  v24 = MEMORY[0x1E6980758];
  v25 = sub_1C5924F54(&qword_1EC1981C8, &qword_1EC1981A8, &unk_1C5BE9E78, MEMORY[0x1E6980758]);
  v69 = v23;
  v70 = v25;
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v67 = v26;
  v68 = v27;
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v65 = v28;
  v66 = v29;
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x1E69802C0];
  v30 = swift_getWitnessTable();
  v31 = sub_1C5924F54(&qword_1EC1981D0, &qword_1EC1981B0, &qword_1C5BE9E88, v24);
  v61 = v30;
  v62 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_1C5924F54(&qword_1EC1981D8, &qword_1EC1981B8, &unk_1C5BE9E90, v24);
  v59 = v32;
  v60 = v33;
  swift_getWitnessTable();
  *&v80 = sub_1C5BC8864();
  *(&v80 + 1) = v34;
  v35 = sub_1C5BC8874();
  v36 = swift_getWitnessTable();
  View.mcui.getter(v35, &v54);

  v58 = v54;
  v57 = 3;
  v39 = type metadata accessor for MCUINamespace(0, v35, v37, v38);
  MCUINamespace<A>.motionCollection(policy:)(&v57, v39, v36);

  v54 = v77;
  v55 = v78;
  v56 = v79;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943A0, &qword_1C5BDAD28);
  v40 = sub_1C5BC8AB4();
  v41 = sub_1C5924F54(&qword_1EDA46118, &qword_1EC1943A0, &qword_1C5BDAD28, MEMORY[0x1E6980A18]);
  v52 = v36;
  v53 = v41;
  v42 = swift_getWitnessTable();
  sub_1C593EDC0(&v54, v40, v42);

  v77 = v80;
  v78 = v81;
  v79 = v82;
  sub_1C593EDC0(&v77, v40, v42);

  return result;
}

unint64_t sub_1C5B1EEA8()
{
  result = qword_1EC198210;
  if (!qword_1EC198210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198210);
  }

  return result;
}

uint64_t sub_1C5B1EF48@<X0>(uint64_t a1@<X1>, double a2@<X2>, double a3@<X3>, double a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v152 = a6;
  v151 = a5;
  v146 = a8;
  v148 = a2;
  v12 = sub_1C5BC8AB4();
  v118 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v112 - v13;
  v15 = sub_1C5BC8AB4();
  v121 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v112 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A0, &qword_1C5BE9E70);
  v115 = v15;
  v17 = sub_1C5BC8AB4();
  v128 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v125 = &v112 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A8, &unk_1C5BE9E78);
  v117 = v17;
  v19 = sub_1C5BC8AB4();
  v137 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v112 - v20;
  v149 = a4;
  v150 = a7;
  v21 = sub_1C5BC8BE4();
  v139 = v19;
  v141 = v21;
  v22 = sub_1C5BC8AB4();
  v144 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v143 = &v112 - v23;
  v24 = a3;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0, &qword_1C5BDA520);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v25 = sub_1C5BCA7D4();
  WitnessTable = swift_getWitnessTable();
  v124 = v25;
  v120 = WitnessTable;
  v27 = sub_1C5BC8BE4();
  v145 = v22;
  v123 = v27;
  v28 = sub_1C5BC8AB4();
  v127 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v122 = &v112 - v29;
  v129 = v30;
  v31 = sub_1C5BC8AB4();
  v130 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v126 = &v112 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B0, &qword_1C5BE9E88);
  v131 = v31;
  v33 = sub_1C5BC8AB4();
  v136 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v132 = &v112 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B8, &unk_1C5BE9E90);
  v138 = v33;
  v142 = sub_1C5BC8AB4();
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v133 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v134 = &v112 - v37;
  v38 = sub_1C5BC9314();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC9484();
  sub_1C5BC86D4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  (*(v39 + 8))(v41, v38);
  v177.origin.x = v43;
  v177.origin.y = v45;
  v177.size.width = v47;
  v177.size.height = v49;
  MinY = 0.0;
  if (CGRectGetMinX(v177) >= 0.0)
  {
    v178.origin.x = v43;
    v178.origin.y = v45;
    v178.size.width = v47;
    v178.size.height = v49;
    MinY = CGRectGetMinY(v178);
  }

  v171 = v148;
  v172 = v24;
  v147 = v24;
  v51 = v151;
  v173 = v149;
  v174 = v151;
  v175 = v152;
  v176 = v150;
  v52 = type metadata accessor for ParallaxHeader(0, &v171);
  v53 = sub_1C5B1CB8C(v52);
  v54 = (MinY + v53) / v53;
  if (MinY <= 0.0)
  {
    v54 = 1.0;
  }

  if (v53 == 0.0)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = v54;
  }

  sub_1C5B1FF2C(v52);
  v57 = v56;
  v116 = v52;
  sub_1C5BCA264();
  sub_1C5BCABC4();
  v169 = v51;
  v170 = MEMORY[0x1E697E270];
  v58 = MEMORY[0x1E697E858];
  v59 = swift_getWitnessTable();
  v60 = v119;
  sub_1C5BC9E54();
  (*(v118 + 8))(v14, v12);
  v61 = COERCE_DOUBLE(sub_1C5B1CD6C(v52));
  if (v62)
  {
    v63 = 1.79769313e308;
  }

  else
  {
    v63 = v61;
  }

  sub_1C5BCABC4();
  v171 = v63;
  v172 = v55;
  v173 = v55;
  v174 = v64;
  v175 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1982D0, &qword_1C5BEA2C8);
  v167 = v59;
  v168 = MEMORY[0x1E697E070];
  v66 = v115;
  v67 = swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1982D8, &qword_1EC1982D0, &qword_1C5BEA2C8, MEMORY[0x1E697DD10]);
  v68 = v125;
  sub_1C5BCA3A4();
  (*(v121 + 8))(v60, v66);
  v171 = MinY;
  v69 = sub_1C5924F54(&qword_1EC1981C0, &qword_1EC1981A0, &qword_1C5BE9E70, MEMORY[0x1E697DDB0]);
  v165 = v67;
  v166 = v69;
  v114 = v58;
  v70 = v117;
  v71 = swift_getWitnessTable();
  sub_1C5B1E3E8();
  v72 = v135;
  sub_1C5BC9D44();
  (*(v128 + 8))(v68, v70);
  v73 = sub_1C5BCAA44();
  v121 = v74;
  v75 = v150;
  v113 = a1;
  v125 = &v112;
  MEMORY[0x1EEE9AC00](v73);
  v76 = v148;
  v77 = *&v147;
  *(&v112 - 8) = v148;
  *(&v112 - 7) = v77;
  v78 = v149;
  *(&v112 - 6) = v149;
  *(&v112 - 5) = v51;
  v79 = v152;
  *(&v112 - 4) = v152;
  *(&v112 - 3) = v75;
  *(&v112 - 2) = v80;
  v128 = MEMORY[0x1E6980758];
  v81 = sub_1C5924F54(&qword_1EC1981C8, &qword_1EC1981A8, &unk_1C5BE9E78, MEMORY[0x1E6980758]);
  v163 = v71;
  v164 = v81;
  v82 = v139;
  v83 = swift_getWitnessTable();
  v84 = v143;
  sub_1C5BCA2C4();
  v85 = (*(v137 + 8))(v72, v82);
  v139 = &v112;
  MEMORY[0x1EEE9AC00](v85);
  v86 = *&v147;
  *(&v112 - 8) = v76;
  *(&v112 - 7) = v86;
  v87 = v151;
  *(&v112 - 6) = v78;
  *(&v112 - 5) = v87;
  *(&v112 - 4) = v79;
  *(&v112 - 3) = v75;
  *(&v112 - 2) = v113;
  *(&v112 - 1) = v57;
  sub_1C5BCAA54();
  v88 = swift_getWitnessTable();
  v161 = v83;
  v162 = v88;
  v89 = v145;
  v90 = swift_getWitnessTable();
  v91 = v122;
  sub_1C5BCA2C4();
  (*(v144 + 8))(v84, v89);
  v92 = swift_getWitnessTable();
  v159 = v90;
  v160 = v92;
  v93 = v129;
  v94 = swift_getWitnessTable();
  v95 = v126;
  sub_1C5BC9FC4();
  (*(v127 + 8))(v91, v93);
  v171 = v57;
  v157 = v94;
  v158 = MEMORY[0x1E69802C0];
  v96 = v131;
  v97 = swift_getWitnessTable();
  sub_1C5B21694();
  v98 = v132;
  sub_1C5BC9D44();
  (*(v130 + 8))(v95, v96);
  sub_1C5B1CF40(v116);
  v171 = v99;
  v172 = v100;
  v101 = v128;
  v102 = sub_1C5924F54(&qword_1EC1981D0, &qword_1EC1981B0, &qword_1C5BE9E88, v128);
  v155 = v97;
  v156 = v102;
  v103 = v138;
  v104 = swift_getWitnessTable();
  sub_1C5B216E8();
  v105 = v133;
  sub_1C5BC9D44();
  (*(v136 + 8))(v98, v103);
  v106 = sub_1C5924F54(&qword_1EC1981D8, &qword_1EC1981B8, &unk_1C5BE9E90, v101);
  v153 = v104;
  v154 = v106;
  v107 = v142;
  v108 = swift_getWitnessTable();
  v109 = v134;
  sub_1C593EDC0(v105, v107, v108);
  v110 = *(v140 + 8);
  v110(v105, v107);
  sub_1C593EDC0(v109, v107, v108);
  return (v110)(v109, v107);
}

void sub_1C5B1FF2C(uint64_t a1)
{
  if (sub_1C5B1CB8C(a1) != 0.0)
  {
    sub_1C5B1CE48(a1);
    sub_1C5B1CE48(a1);
  }
}

uint64_t sub_1C5B1FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v19 = type metadata accessor for ParallaxHeader(0, v21);
  sub_1C593EDC0(a1 + *(v19 + 76), a4, a7);
  sub_1C593EDC0(v12, a4, a7);
  return (*(v10 + 8))(v12, a4);
}

uint64_t sub_1C5B200E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v27 = a8;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0, &qword_1C5BDA520);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v14 = sub_1C5BCA7D4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  sub_1C5BC9134();
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = a1;
  v35 = a9;
  sub_1C5BCA7C4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v17, v14, WitnessTable);
  v22 = *(v15 + 8);
  v22(v17, v14);
  sub_1C593EDC0(v20, v14, WitnessTable);
  return (v22)(v20, v14);
}

uint64_t sub_1C5B20340@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a7;
  v46 = a5;
  v45 = a4;
  v44 = a2;
  v51 = a8;
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v65 = a6;
  v66 = a7;
  v12 = type metadata accessor for ParallaxHeader(0, &v61);
  v13 = *(v12 - 8);
  v42 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v39 - v14;
  v15 = sub_1C5BC8AB4();
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v39 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0, &qword_1C5BDA520);
  v17 = sub_1C5BC8AB4();
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v39 - v23;
  v24 = a6;
  sub_1C5BCA2B4();
  v25 = v41;
  (*(v13 + 16))(v41, a1, v12);
  v26 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v44;
  *(v27 + 3) = a3;
  v28 = v46;
  *(v27 + 4) = v45;
  *(v27 + 5) = v28;
  v29 = v47;
  *(v27 + 6) = v24;
  *(v27 + 7) = v29;
  (*(v13 + 32))(&v27[v26], v25, v12);
  v59 = v24;
  v60 = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  sub_1C59AEC40();
  v31 = v40;
  sub_1C5BC9FE4();

  (*(v48 + 8))(v31, v15);
  v32 = sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0, &qword_1C5BDA520, MEMORY[0x1E69802E0]);
  v57 = WitnessTable;
  v58 = v32;
  v33 = swift_getWitnessTable();
  v34 = v43;
  sub_1C593EDC0(v21, v17, v33);
  v35 = v49;
  v36 = *(v49 + 8);
  v36(v21, v17);
  v55 = 0;
  v56 = 0;
  v61 = &v55;
  v37 = v50;
  (*(v35 + 16))(v50, v34, v17);
  v62 = v37;
  v54[0] = MEMORY[0x1E6981840];
  v54[1] = v17;
  v52 = MEMORY[0x1E6981838];
  v53 = v33;
  sub_1C594226C(&v61, 2uLL, v54);
  v36(v34, v17);
  return (v36)(v37, v17);
}

void sub_1C5B20898(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  v10[5] = a8;
  v9 = type metadata accessor for ParallaxHeader(0, v10);
  if (v8 != sub_1C5B1CC4C(v9))
  {
    sub_1C5B1CCAC(v9, v8);
  }
}

void sub_1C5B20904(void *a1)
{
  sub_1C5B2104C(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1C5B210A4();
          if (v5 <= 0x3F)
          {
            sub_1C5B210F4(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5B209FC(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a3[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  if (v10 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v16;
  v19 = *(*(v7 - 8) + 64) + 7;
  if (v17 < a2)
  {
    v20 = ((((((((v19 + ((v18 + ((v14 + v15 + ((v13 + 9) & ~v13)) & ~v15)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
    v21 = a2 - v17;
    v22 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_32;
      }

      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_32;
      }
    }

    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    v37 = v17 + (v29 | v28);
    return (v37 + 1);
  }

LABEL_32:
  v30 = (a1 + v13 + 9) & ~v13;
  if (v6 != v17)
  {
    v32 = (v30 + v14 + v15) & ~v15;
    if (v9 == v17)
    {
      v33 = *(v8 + 48);
      v34 = *(v8 + 84);
      v35 = a3[3];

      return v33(v32, v34, v35);
    }

    v32 = (v18 + v32) & ~v16;
    if (v12 == v17)
    {
      v33 = *(v11 + 48);
      v34 = *(v11 + 84);
      v35 = a3[4];

      return v33(v32, v34, v35);
    }

    v36 = *(((v19 + v32) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    v37 = v36 - 1;
    if (v37 < 0)
    {
      v37 = -1;
    }

    return (v37 + 1);
  }

  v31 = *(v5 + 48);

  return v31(v30);
}

unsigned int *sub_1C5B20CE8(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(a4[4] - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v10 <= v12)
  {
    v19 = *(v11 + 84);
  }

  else
  {
    v19 = v10;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = v16 + v17;
  v21 = ((((((((v18 + 7 + ((v16 + v17 + ((v14 + v15 + ((v13 + 9) & ~v13)) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_21;
    }

LABEL_26:
    if (v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v21)
    {
      v27 = ~v19 + a2;
      v28 = result;
      bzero(result, v21);
      result = v28;
      *v28 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(result + v21) = v26;
      }

      else
      {
        *(result + v21) = v26;
      }
    }

    else if (v24)
    {
      *(result + v21) = v26;
    }

    return result;
  }

  v22 = a3 - v19;
  if (v21)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 < 2)
  {
    v24 = 0;
  }

  v25 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(result + v21) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *(result + v21) = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_36;
  }

  *(result + v21) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  result = ((result + v13 + 9) & ~v13);
  if (v6 == v19)
  {
    v29 = *(v5 + 56);

    return v29(result);
  }

  v30 = (result + v14 + v15) & ~v15;
  if (v9 == v19)
  {
    v31 = *(v8 + 56);

    return v31(v30);
  }

  else
  {
    result = ((v20 + v30) & ~v17);
    if (v12 == v19)
    {
      v29 = *(v11 + 56);

      return v29(result);
    }

    v32 = ((result + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v32 = a2 - 0x7FFFFFFF;
      v32[1] = 0;
    }

    else
    {
      v32[1] = a2;
    }
  }

  return result;
}

void sub_1C5B2104C(uint64_t a1)
{
  if (!qword_1EC1982A0)
  {
    type metadata accessor for ParallaxContext(255);
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1982A0);
    }
  }
}

void sub_1C5B210A4()
{
  if (!qword_1EDA45FF8)
  {
    v0 = sub_1C5BCA6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA45FF8);
    }
  }
}

void sub_1C5B210F4(uint64_t a1)
{
  if (!qword_1EDA45FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790, &qword_1C5BE0E40);
    v1 = sub_1C5BCA6C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA45FF0);
    }
  }
}

double sub_1C5B211B8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1C5BC9B14();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMinY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetHeight(v16);
  sub_1C5BC9B04();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_1C5B2129C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5B21324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B215FC();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5B21388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B215FC();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5B213EC(uint64_t a1)
{
  v2 = sub_1C5B215FC();

  return MEMORY[0x1EEDE4410](a1, v2);
}

char *sub_1C5B21438(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void *sub_1C5B21488(double *a1, void *(*a2)(double *__return_ptr))
{
  v4 = *a1;
  v5 = a2(&v10);
  v6 = v4 + v10;
  v7 = a1[1];
  result = (a2)(&v10, v5);
  v9 = v7 + v11;
  if (v6 > v7 + v11)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
    a1[1] = v9;
  }

  return result;
}

unint64_t sub_1C5B21550()
{
  result = qword_1EC1982B8;
  if (!qword_1EC1982B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982B8);
  }

  return result;
}

unint64_t sub_1C5B215A8()
{
  result = qword_1EC1982C0;
  if (!qword_1EC1982C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982C0);
  }

  return result;
}

unint64_t sub_1C5B215FC()
{
  result = qword_1EC1982C8;
  if (!qword_1EC1982C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982C8);
  }

  return result;
}

unint64_t sub_1C5B21694()
{
  result = qword_1EC1982E0;
  if (!qword_1EC1982E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982E0);
  }

  return result;
}

unint64_t sub_1C5B216E8()
{
  result = qword_1EC1982E8;
  if (!qword_1EC1982E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982E8);
  }

  return result;
}

void sub_1C5B21774(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v8;
  v9 = *(type metadata accessor for ParallaxHeader(0, v11) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  sub_1C5B20898(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C5B21850(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v14[0] = v2[2];
  v4 = v14[0];
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v10 = *(type metadata accessor for ParallaxHeader(0, v14) - 8);
  v11 = v2 + ((*(v10 + 80) + 64) & ~*(v10 + 80));

  return a2(a1, v11, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C5B21930(uint64_t a1, double *a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v13 = v2[2];
  v4 = v13;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  type metadata accessor for ParallaxHeader(0, &v13);
  v10 = *a2;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v11 = type metadata accessor for ParallaxHeader(0, &v13);
  return sub_1C5B1CBEC(v11, v10);
}

double sub_1C5B21A00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for NowPlayingRouteObserver(0);
    sub_1C59315F8(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  return result;
}

uint64_t sub_1C5B21AB4()
{
  swift_getKeyPath(aP_12);
  swift_getKeyPath(a0_1);
  sub_1C5BC8034();

  return v1;
}

double sub_1C5B21B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = a3;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C596C0AC;
    aBlock[3] = a4;
    v9 = _Block_copy(aBlock);

    [v7 getActiveRouteWithCompletion_];
    _Block_release(v9);
  }

  return result;
}

uint64_t sub_1C5B21C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1C5BCB1E4();
  v5[8] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B21CD0, v7, v6);
}

uint64_t sub_1C5B21CD0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[7];
    if (v1)
    {
      v2 = v0[7];
    }

    else
    {
      v2 = [objc_opt_self() systemRoute];
    }

    swift_getKeyPath(aP_12);
    swift_getKeyPath(a0_1);
    v3 = v1;
    sub_1C5BC8034();

    v4 = v0[5];
    swift_getKeyPath(aP_12);
    swift_getKeyPath(a0_1);
    v0[5] = v2;

    v5 = v2;
    sub_1C5BC8044();
    sub_1C596C294(v4);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C5B21E50()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver__route;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198300, &unk_1C5BEA3C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1C5B21F20()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = v0;
  result = [v2 endpointObject];
  if (result)
  {
    v5 = result;
    v6 = [result outputDevices];

    if (v6)
    {
      sub_1C592535C(0, &qword_1EC198308, 0x1E69B09A8);
      v7 = sub_1C5BCB054();

      v13 = v3;
      if (v7 >> 62)
      {
LABEL_26:
        v8 = sub_1C5BCB984();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = 0;
      while (v8 != v9)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C694FD20](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v3 = v10;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (([v10 isLocalDevice] & 1) == 0 || objc_msgSend(v3, sel_deviceType) == 3)
        {

          v12 = 1;
          goto LABEL_22;
        }

        v11 = [v3 deviceSubtype];

        ++v9;
        if (v11 == 14)
        {

          v12 = 1;
          goto LABEL_21;
        }
      }

      v12 = 0;
LABEL_21:
      v3 = v13;
    }

    else
    {
      v12 = 0;
    }

LABEL_22:

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B22190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592ABD4;

  return sub_1C5B21C38(a1, v4, v5, v7, v6);
}

uint64_t sub_1C5B2225C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1C59AD990(MEMORY[0x1E69E7CC0]);
  *(v4 + 24) = 0u;
  *(v4 + 16) = v9;
  *(v4 + 40) = 0u;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;

  v10 = sub_1C5BCAE44();

  v11 = sub_1C5BCAE44();

  v12 = PPSCreateTelemetryIdentifier();

  if (v12)
  {
    v13 = MEMORY[0x1E69E6B70];
  }

  else
  {
    v13 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v12;
  v15[3] = v13;
  swift_beginAccess();
  sub_1C59AB3E0(v15, v4 + 24);
  swift_endAccess();
  return v4;
}

void sub_1C5B22370(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1C59AB370((v1 + 3), v22);
  if (v22[3])
  {
    if (swift_dynamicCast())
    {
      if (qword_1EC1908A8 != -1)
      {
        swift_once();
      }

      v4 = sub_1C5BC7D64();
      __swift_project_value_buffer(v4, qword_1EC198320);

      v5 = sub_1C5BC7D44();
      v6 = sub_1C5BCB4C4();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v22[0] = v8;
        *v7 = 136446722;
        v9 = v2[9];
        v10 = v2[10];

        v11 = sub_1C592ADA8(v9, v10, v22);

        *(v7 + 4) = v11;
        *(v7 + 12) = 2082;
        v13 = v2[7];
        v12 = v2[8];

        v14 = sub_1C592ADA8(v13, v12, v22);

        *(v7 + 14) = v14;
        *(v7 + 22) = 2082;
        v15 = sub_1C5BCACC4();
        v17 = sub_1C592ADA8(v15, v16, v22);

        *(v7 + 24) = v17;
        _os_log_impl(&dword_1C5922000, v5, v6, "Will report subsystem=%{public}s category=%{public}s payload=%{public}s", v7, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v8, -1, -1);
        MEMORY[0x1C69510F0](v7, -1, -1);
      }

      sub_1C5A0F590(a1);
      v18 = sub_1C5BCACA4();

      PPSSendTelemetry();
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C592BE5C(v22);
  }

  if (qword_1EC1908A8 != -1)
  {
    swift_once();
  }

  v19 = sub_1C5BC7D64();
  __swift_project_value_buffer(v19, qword_1EC198320);
  v18 = sub_1C5BC7D44();
  v20 = sub_1C5BCB4D4();
  if (os_log_type_enabled(v18, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C5922000, v18, v20, "Telemetry identifier for power log is not available. Reporting is not possible.", v21, 2u);
    MEMORY[0x1C69510F0](v21, -1, -1);
  }

LABEL_13:
}

uint64_t sub_1C5B226B8()
{

  sub_1C592BE5C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B2272C()
{
  type metadata accessor for PowerLogReporter();
  v0 = swift_allocObject();
  result = sub_1C5B2225C(0x61447265646E6552, 0xEA00000000006174, 0xD000000000000013, 0x80000001C5BFBE60);
  qword_1EC198310 = v0;
  return result;
}

uint64_t sub_1C5B22798(double a1, double a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5B227B8, 0, 0);
}

uint64_t sub_1C5B227B8()
{
  if (qword_1EC190898 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A10, &unk_1C5BF5580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001C5BFBE60;
  v4 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v2;
  *(inited + 72) = v4;
  strcpy((inited + 80), "TimestampValue");
  *(inited + 95) = -18;
  *(inited + 120) = v4;
  *(inited + 96) = v1;
  v5 = sub_1C59AD990(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A8, &qword_1C5BD4E10);
  swift_arrayDestroy();
  sub_1C5B22370(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C5B2292C()
{
  type metadata accessor for PowerLogReporter();
  v0 = swift_allocObject();
  result = sub_1C5B2225C(0x61447265646E6552, 0xEA00000000006174, 0xD000000000000016, 0x80000001C5BFBE40);
  qword_1EC198318 = v0;
  return result;
}

uint64_t sub_1C5B22998(double a1, double a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5B229B8, 0, 0);
}

uint64_t sub_1C5B229B8()
{
  if (qword_1EC1908A0 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A10, &unk_1C5BF5580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000001C5BFBE40;
  v4 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v2;
  *(inited + 72) = v4;
  strcpy((inited + 80), "TimestampValue");
  *(inited + 95) = -18;
  *(inited + 120) = v4;
  *(inited + 96) = v1;
  v5 = sub_1C59AD990(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A8, &qword_1C5BD4E10);
  swift_arrayDestroy();
  sub_1C5B22370(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C5B22B2C()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC198320);
  __swift_project_value_buffer(v0, qword_1EC198320);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5B22BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s11ContentViewVMa_0(0, a1, a2, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1C5B22D0C(a1, a2, v9);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_1C593EDC0(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_1C5B22D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v6;
  _s5QueueCMa();
  sub_1C5B2D644(qword_1EDA4A0C0, _s5QueueCMa, &unk_1C5BE4338);
  *(a3 + 16) = sub_1C5BC8C84();
  *(a3 + 24) = v7;
  _s17TransportControlsCMa();
  sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
  *(a3 + 32) = sub_1C5BC8C84();
  *(a3 + 40) = v8;
  *(a3 + 48) = swift_getKeyPath(byte_1C5BEA548);
  *(a3 + 121) = 0;
  *(a3 + 128) = swift_getKeyPath(asc_1C5BEA588);
  *(a3 + 136) = 0;
  *(a3 + 144) = swift_getKeyPath(asc_1C5BEA5C8);
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  v10 = _s11ContentViewVMa_0(0, a1, a2, v9);
  v11 = *(v10 + 56);
  *(a3 + v11) = swift_getKeyPath(asc_1C5BEA5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v12 = *(v10 + 60);
  *(a3 + v12) = swift_getKeyPath("\u061C[&");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5B22ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v126 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s20ContentAndHeaderViewVMa(255, v3, v4, a3);
  _s28ControlsAndFooterButtonsViewVMa(255, v3, v4, v5);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198340, &qword_1C5BEA6D8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v113 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1C5BCA7D4();
  v114 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v112 = &v101 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220, &unk_1C5BEA6E0);
  v115 = v6;
  v8 = sub_1C5BC8AB4();
  v119 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v118 = (&v101 - v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0, &unk_1C5BD9450);
  v120 = v8;
  v125 = sub_1C5BC8AB4();
  v122 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v101 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198348, &qword_1C5BEA6F0);
  MEMORY[0x1EEE9AC00](v102);
  v108 = (&v101 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198350, &qword_1C5BEA6F8);
  v109 = *(v14 - 8);
  v110 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v101 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198358, &unk_1C5BEA700);
  MEMORY[0x1EEE9AC00](v116);
  v121 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v117 = &v101 - v18;
  v19 = sub_1C5BC8F34();
  v128 = *(v19 - 8);
  v129 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v127 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v4;
  v135 = v3;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0, &qword_1C5BD6C00);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130, &qword_1C5BEA710);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v103 = sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = MEMORY[0x1E6980A18];
  v23 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0, &qword_1C5BD6C00, MEMORY[0x1E6980A18]);
  v160 = AssociatedConformanceWitness;
  v161 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130, &qword_1C5BEA710, v22);
  v158 = v24;
  v159 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
  v156 = v26;
  v157 = v27;
  v154 = swift_getWitnessTable();
  v155 = MEMORY[0x1E6980A30];
  v153 = swift_getWitnessTable();
  swift_getWitnessTable();
  v105 = sub_1C5BC92A4();
  v28 = sub_1C5BC8AB4();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v101 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B40, &unk_1C5BE6D30);
  v32 = sub_1C5BC8AB4();
  v106 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v130 = &v101 - v33;
  sub_1C5BC97C4();
  v133 = sub_1C5BC8AB4();
  v131 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v104 = &v101 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v136 = &v101 - v38;
  v145 = sub_1C5BCA484();
  v137 = v135;
  v138 = v134;
  v39 = v107;
  v139 = v107;
  sub_1C5BCAA54();
  sub_1C5BC9CE4();

  v145 = 0x746E65746E6F63;
  v146 = 0xE700000000000000;
  v40 = v39;
  v41 = *(v39 + 128);
  v42 = v40;
  LODWORD(v103) = *(v40 + 136);
  if ((v103 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v43 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v44 = v127;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v45 = sub_1C5942458(v41, 0);
    (*(v128 + 8))(v44, v129, v45);
  }

  sub_1C5BC9664();
  sub_1C5BCABD4();
  v46 = swift_getWitnessTable();
  v151 = MEMORY[0x1E6981580];
  v152 = v46;
  v47 = swift_getWitnessTable();
  sub_1C59B7328();
  sub_1C5BCA114();

  (*(v29 + 8))(v31, v28);
  v48 = v42;
  v50 = *(v42 + 144);
  v49 = *(v42 + 152);
  if (*(v42 + 160) != 1)
  {

    sub_1C5BCB4E4();
    v51 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v52 = v127;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v53 = sub_1C596AC58(v50, v49, 0);
    (*(v128 + 8))(v52, v129, v53);
    if (!v146)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v145 = *(v42 + 144);
  v146 = v49;

  if (v49)
  {
LABEL_7:
  }

LABEL_8:
  v54 = v41;
  v55 = sub_1C5924F54(&qword_1EC191B60, &qword_1EC191B40, &unk_1C5BE6D30, MEMORY[0x1E697FF90]);
  v149 = v47;
  v150 = v55;
  v56 = swift_getWitnessTable();
  v57 = v104;
  v58 = v130;
  sub_1C5BCA094();
  v106[1](v58, v32);
  v59 = sub_1C5B2D644(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v147 = v56;
  v148 = v59;
  v60 = v133;
  v61 = swift_getWitnessTable();
  sub_1C593EDC0(v57, v60, v61);
  v62 = (v131 + 8);
  v63 = *(v131 + 8);
  (v63)(v57, v60);
  v64 = *(v48 + 32);
  if (v64)
  {
    swift_beginAccess();
    v65 = *(v64 + 58);
    v66 = v117;
    v67 = v110;
    v130 = v62;
    v105 = v61;
    v106 = v63;
    if (v65)
    {
      v68 = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath("\u061C[&");
      *v108 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
      swift_storeEnumTagMultiPayload();
      if ((v103 & 1) == 0)
      {

        sub_1C5BCB4E4();
        v70 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v71 = v127;
        sub_1C5BC8F24();
        swift_getAtKeyPath();
        v72 = sub_1C5942458(v54, 0);
        (*(v128 + 8))(v71, v129, v72);
        v54 = v144[7];
      }

      v73 = sub_1C5BC9664();
      sub_1C5BCABD4();
      v74 = v108;
      v75 = v108 + *(v102 + 36);
      *v75 = 0x736C6F72746E6F63;
      *(v75 + 1) = 0xE800000000000000;
      *(v75 + 2) = v54;
      *(v75 + 6) = v73;
      *(v75 + 4) = v76;
      *(v75 + 5) = v77;
      v75[48] = 0;
      sub_1C5B2CC28();
      v78 = v101;
      sub_1C5BCA094();
      sub_1C5924EF4(v74, &qword_1EC198348, &qword_1C5BEA6F0);
      v79 = (v78 + *(v67 + 36));
      *v79 = sub_1C592899C;
      v79[1] = 0;
      sub_1C5B2CD10(v78, v66);
      v68 = 0;
    }

    v80 = (*(v109 + 56))(v66, v68, 1, v67);
    MEMORY[0x1EEE9AC00](v80);
    v81 = v134;
    *(&v101 - 4) = v135;
    *(&v101 - 3) = v81;
    *(&v101 - 2) = v48;
    sub_1C5BC9134();
    v82 = v112;
    sub_1C5BCA7C4();
    v83 = v115;
    v84 = swift_getWitnessTable();
    v85 = v118;
    sub_1C5B7B220(v118, 50.0, v83, v84);
    (*(v114 + 8))(v82, v83);
    sub_1C5BCAAA4();
    swift_beginAccess();
    LOBYTE(v144[0]) = *(v64 + 58);
    v86 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220, &unk_1C5BEA6E0, MEMORY[0x1E697FDC0]);
    v144[5] = v84;
    v144[6] = v86;
    v87 = v120;
    v88 = swift_getWitnessTable();
    v89 = v66;
    v90 = v124;
    sub_1C5BCA384();

    (*(v119 + 8))(v85, v87);
    v91 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
    v144[3] = v88;
    v144[4] = v91;
    v92 = v125;
    v134 = swift_getWitnessTable();
    v93 = v123;
    sub_1C593EDC0(v90, v92, v134);
    v94 = v122;
    v135 = *(v122 + 8);
    (v135)(v90, v92);
    v95 = v132;
    v96 = v133;
    (*(v131 + 16))(v132, v136, v133);
    v144[0] = v95;
    v97 = v121;
    sub_1C59400B0(v89, v121, &qword_1EC198358, &unk_1C5BEA700);
    v144[1] = v97;
    (*(v94 + 16))(v90, v93, v92);
    v144[2] = v90;
    v143[0] = v96;
    v143[1] = v116;
    v143[2] = v92;
    v140 = v105;
    v141 = sub_1C5B2D3A0(&qword_1EC198368, &qword_1EC198358, &unk_1C5BEA700, sub_1C5B2CD8C);
    v142 = v134;
    sub_1C594226C(v144, 3uLL, v143);
    v98 = v135;
    (v135)(v93, v92);
    sub_1C5924EF4(v89, &qword_1EC198358, &unk_1C5BEA700);
    v99 = v106;
    (v106)(v136, v96);
    (v98)(v90, v92);
    sub_1C5924EF4(v97, &qword_1EC198358, &unk_1C5BEA700);
    return (v99)(v132, v96);
  }

  else
  {
    _s17TransportControlsCMa();
    sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B24130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v135 = a4;
  v123 = sub_1C5BC90F4();
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v116 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v9;
  v10 = sub_1C5BC8284();
  v127 = *(v10 - 8);
  v128 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = a2;
  v139 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v112 = &v109 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0, &qword_1C5BD6C00);
  v129 = AssociatedTypeWitness;
  v14 = sub_1C5BC8AB4();
  v115 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v136 = &v109 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130, &qword_1C5BEA710);
  v142 = v14;
  v16 = sub_1C5BC8AB4();
  v119 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v109 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  v141 = v16;
  v18 = sub_1C5BC8AB4();
  v124 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v109 - v19;
  v140 = v20;
  v21 = sub_1C5BC8AB4();
  v130 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v125 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v109 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v120 = &v109 - v26;
  v27 = sub_1C5BC8F34();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C5BCB804();
  v132 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v131 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v109 - v34;
  v36 = *(a1 + 144);
  v37 = *(a1 + 152);
  v137 = a1;
  v38 = *(a1 + 160);
  v133 = v21;
  if (v38 == 1)
  {
    v183 = v36;
    v184 = v37;
  }

  else
  {

    sub_1C5BCB4E4();
    v39 = v35;
    v40 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v35 = v39;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v41 = sub_1C596AC58(v36, v37, 0);
    (*(v28 + 8))(v30, v27, v41);
    v37 = v184;
  }

  v134 = v31;
  v42 = MEMORY[0x1E6980A30];
  if (v37)
  {
    v109 = v28;
    v110 = v27;
    v111 = v35;
    v43 = v183;
    v45 = v137;
    v44 = v138;
    v46 = v139;
    sub_1C59498C4(*v137, v137[1], v138, *(v139 + 8));
    v47 = *(v46 + 320);
    swift_unknownObjectRetain();
    v47(&v158, v44, v46);
    swift_unknownObjectRelease();
    v154 = v158;
    v152 = v43;
    v153 = v37;
    v48 = sub_1C5A36B84();
    v49 = v129;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *&v162 = &type metadata for NowPlayingHostedContentID;
    *(&v162 + 1) = v49;
    *&v163 = v48;
    *(&v163 + 1) = AssociatedConformanceWitness;
    v51 = type metadata accessor for ContentLookup(0, &v162);
    v52 = v112;
    sub_1C5A1EAEC(&v152, v51);

    swift_getKeyPath("Л[&");
    *(v165 + 10) = *(v45 + 106);
    v53 = *(v45 + 6);
    v164 = *(v45 + 5);
    v165[0] = v53;
    v54 = *(v45 + 4);
    v162 = *(v45 + 3);
    v163 = v54;
    if (BYTE9(v165[1]))
    {
      v55 = *(v45 + 6);
      v160 = *(v45 + 5);
      v161[0] = v55;
      *(v161 + 9) = *(v45 + 105);
      v56 = *(v45 + 4);
      v158 = *(v45 + 3);
      v159 = v56;
    }

    else
    {

      sub_1C5BCB4E4();
      v67 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v162, &unk_1EC194DE0, &qword_1C5BDCD20);
      (*(v109 + 8))(v30, v110);
    }

    v156 = v160;
    v157[0] = v161[0];
    *(v157 + 9) = *(v161 + 9);
    v154 = v158;
    v155 = v159;
    DeviceMetrics.padding.getter(&v152);
    v151 = v153;
    v137 = AssociatedConformanceWitness;
    sub_1C5BC9DF4();

    (*(v113 + 8))(v52, v49);
    _s11ContentViewVMa_0(0, v138, v139, v68);
    v69 = v114;
    sub_1C594C704(v114);
    v70 = v121;
    v71 = v116;
    v72 = v123;
    (*(v121 + 104))(v116, *MEMORY[0x1E697F600], v123);
    v73 = sub_1C5BC8274();
    v74 = *(v70 + 8);
    v74(v71, v72);
    v74(v69, v72);
    v75 = v142;
    if (v73)
    {
      v77 = v126;
      v76 = v127;
      v78 = v128;
      (*(v127 + 104))(v126, *MEMORY[0x1E697DBA8], v128);
    }

    else
    {
      v77 = v126;
      sub_1C59421E4(v126);
      v76 = v127;
      v78 = v128;
    }

    v79 = MEMORY[0x1E6980A18];
    v80 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0, &qword_1C5BD6C00, MEMORY[0x1E6980A18]);
    v149 = v137;
    v150 = v80;
    WitnessTable = swift_getWitnessTable();
    v82 = v117;
    v83 = v136;
    sub_1C5BC9DC4();
    (*(v76 + 8))(v77, v78);
    (*(v115 + 8))(v83, v75);
    sub_1C5A399B8();
    v84 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130, &qword_1C5BEA710, v79);
    v147 = WitnessTable;
    v148 = v84;
    v85 = v141;
    v86 = swift_getWitnessTable();
    v87 = v122;
    sub_1C5BC9D74();

    (*(v119 + 8))(v82, v85);
    sub_1C5BC98B4();
    sub_1C5BC8AC4();
    v88 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
    v145 = v86;
    v146 = v88;
    v89 = v140;
    v90 = swift_getWitnessTable();
    v91 = v118;
    sub_1C5BC9F84();
    (*(v124 + 8))(v87, v89);
    v143 = v90;
    v42 = MEMORY[0x1E6980A30];
    v144 = MEMORY[0x1E6980A30];
    v92 = v133;
    v93 = swift_getWitnessTable();
    v94 = v120;
    sub_1C593EDC0(v91, v92, v93);
    v95 = v130;
    v96 = *(v130 + 8);
    v96(v91, v92);
    v97 = v125;
    sub_1C593EDC0(v94, v92, v93);
    v96(v94, v92);
    v98 = v131;
    (*(v95 + 32))(v131, v97, v92);
    (*(v95 + 56))(v98, 0, 1, v92);
    v35 = v111;
    sub_1C5941600(v98, v111);
    v65 = *(v132 + 8);
    v66 = v98;
  }

  else
  {
    v57 = v131;
    (*(v130 + 56))(v131, 1, 1, v133);
    v58 = swift_getAssociatedConformanceWitness();
    v59 = MEMORY[0x1E6980A18];
    v60 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0, &qword_1C5BD6C00, MEMORY[0x1E6980A18]);
    v137 = v58;
    v181 = v58;
    v182 = v60;
    v61 = swift_getWitnessTable();
    v62 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130, &qword_1C5BEA710, v59);
    v179 = v61;
    v180 = v62;
    v63 = swift_getWitnessTable();
    v64 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
    v177 = v63;
    v178 = v64;
    v175 = swift_getWitnessTable();
    v176 = v42;
    swift_getWitnessTable();
    sub_1C5941600(v57, v35);
    v65 = *(v132 + 8);
    v66 = v57;
  }

  v99 = v42;
  v100 = v134;
  v65(v66, v134);
  v101 = MEMORY[0x1E6980A18];
  v102 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0, &qword_1C5BD6C00, MEMORY[0x1E6980A18]);
  v173 = v137;
  v174 = v102;
  v103 = swift_getWitnessTable();
  v104 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130, &qword_1C5BEA710, v101);
  v171 = v103;
  v172 = v104;
  v105 = swift_getWitnessTable();
  v106 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
  v169 = v105;
  v170 = v106;
  v167 = swift_getWitnessTable();
  v168 = v99;
  v166 = swift_getWitnessTable();
  v107 = swift_getWitnessTable();
  sub_1C593EDC0(v35, v100, v107);
  return (v65)(v35, v100);
}

double MCUINamespace<A>.nowPlayingHorizontalPadding.getter()
{
  sub_1C5B25094();
  sub_1C5BC8F44();
  return v1;
}

unint64_t sub_1C5B25094()
{
  result = qword_1EC198338;
  if (!qword_1EC198338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198338);
  }

  return result;
}

double sub_1C5B250E8@<D0>(double *a1@<X8>)
{
  sub_1C5B25094();
  sub_1C5BC8F44();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C5B251C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v40 = a1;
  v53 = a4;
  v7 = _s28ControlsAndFooterButtonsViewVMa(0, a2, a3, a5);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = sub_1C5BC8AB4();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198340, &qword_1C5BEA6D8);
  v13 = sub_1C5BC8AB4();
  v43 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v39 - v14;
  v44 = v15;
  v52 = sub_1C5BC8AB4();
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v39 - v20;
  sub_1C5B2598C(&v78);
  v22 = _s20ContentAndHeaderViewVMa(0, a2, a3, v21);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v78, v22, WitnessTable);
  v98[6] = v84;
  v98[7] = v85;
  v98[8] = v86;
  v99 = v87;
  v98[2] = v80;
  v98[3] = v81;
  v98[4] = v82;
  v98[5] = v83;
  v98[0] = v78;
  v98[1] = v79;
  v45 = *(v22 - 8);
  v49 = *(v45 + 8);
  v50 = v45 + 8;
  v49(v98, v22);
  sub_1C5B25A50(a2, a3, v9);
  sub_1C5BC98A4();
  v23 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  (*(v39 + 8))(v9, v7);
  v55 = a2;
  v56 = a3;
  v24 = v40;
  v57 = v40;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198388, &qword_1C5BEA720);
  v76 = v23;
  v77 = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  sub_1C5B2CE50();
  sub_1C5BC9CE4();
  (*(v41 + 8))(v12, v10);
  if (*(v24 + 32))
  {
    swift_beginAccess();
    sub_1C5BCAA54();
    v26 = sub_1C5924F54(qword_1EC1983C8, &qword_1EC198340, &qword_1C5BEA6D8, MEMORY[0x1E697F940]);
    v71[4] = v25;
    v71[5] = v26;
    v27 = v44;
    v28 = swift_getWitnessTable();
    v29 = v42;
    v30 = v54;
    sub_1C5BCA234();
    (*(v43 + 8))(v30, v27);
    v71[2] = v28;
    v71[3] = MEMORY[0x1E697E040];
    v31 = v52;
    v32 = swift_getWitnessTable();
    v33 = v48;
    sub_1C593EDC0(v29, v31, v32);
    v34 = v47;
    v35 = *(v47 + 8);
    v35(v29, v31);
    v72[6] = v94;
    v72[7] = v95;
    v72[8] = v96;
    v72[2] = v90;
    v72[3] = v91;
    v72[4] = v92;
    v72[5] = v93;
    v72[0] = v88;
    v72[1] = v89;
    v67 = v94;
    v68 = v95;
    v69 = v96;
    v63 = v90;
    v64 = v91;
    v65 = v92;
    v66 = v93;
    v73 = v97;
    v70 = v97;
    v61 = v88;
    v62 = v89;
    v71[0] = &v61;
    v36 = v51;
    (*(v34 + 16))(v51, v33, v31);
    v71[1] = v36;
    (*(v45 + 16))(&v78, v72, v22);
    v60[0] = v22;
    v60[1] = v31;
    v58 = WitnessTable;
    v59 = v32;
    sub_1C594226C(v71, 2uLL, v60);
    v35(v33, v31);
    v74[6] = v94;
    v74[7] = v95;
    v74[8] = v96;
    v75 = v97;
    v74[2] = v90;
    v74[3] = v91;
    v74[4] = v92;
    v74[5] = v93;
    v74[0] = v88;
    v74[1] = v89;
    v37 = v49;
    v49(v74, v22);
    v35(v36, v31);
    v84 = v67;
    v85 = v68;
    v86 = v69;
    v87 = v70;
    v80 = v63;
    v81 = v64;
    v82 = v65;
    v83 = v66;
    v78 = v61;
    v79 = v62;
    return v37(&v78, v22);
  }

  else
  {
    _s17TransportControlsCMa();
    sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B2598C@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v4;
  _s5QueueCMa();
  sub_1C5B2D644(qword_1EDA4A0C0, _s5QueueCMa, &unk_1C5BE4338);
  *(a3 + 16) = sub_1C5BC8C84();
  *(a3 + 24) = v5;
  *(a3 + 32) = swift_getKeyPath(byte_1C5BEA548);
  *(a3 + 105) = 0;
  *(a3 + 112) = swift_getKeyPath(asc_1C5BEA588);
  *(a3 + 120) = 0;
  result = swift_getKeyPath(asc_1C5BEA5C8);
  *(a3 + 128) = result;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  return result;
}

uint64_t sub_1C5B25A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath(byte_1C5BEA548);
  *(a3 + 73) = 0;
  v7 = _s28ControlsAndFooterButtonsViewVMa(0, a1, a2, v6);
  v8 = *(v7 + 36);
  *(a3 + v8) = swift_getKeyPath("\u061C[&");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v9 = (a3 + *(v7 + 40));
  _s17TransportControlsCMa();
  sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
  result = sub_1C5BC8C84();
  *v9 = result;
  v9[1] = v11;
  return result;
}

uint64_t sub_1C5B25B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCA484();
  v9 = *(a1 + 128);
  if (*(a1 + 136) == 1)
  {
    v27 = *(a1 + 128);
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v11 = sub_1C5942458(v9, 0);
    (*(v5 + 8))(v7, v4, v11);
    v9 = v27;
  }

  v12 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v14 = v13;
  v16 = v15;
  v17 = sub_1C5BC8AC4();
  v18 = sub_1C5BC9894();
  *&v21 = v8;
  *(&v21 + 1) = 0x736C6F72746E6F63;
  *&v22 = 0xE800000000000000;
  *(&v22 + 1) = v9;
  LODWORD(v23) = v12;
  *(&v23 + 1) = v14;
  *v24 = v16;
  v24[8] = 1;
  *&v24[16] = v17;
  v24[24] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1983B0, &qword_1C5BEA730);
  sub_1C5B2CFBC();
  sub_1C5BCA094();
  v25[2] = v23;
  v26[0] = *v24;
  *(v26 + 9) = *&v24[9];
  v25[0] = v21;
  v25[1] = v22;
  sub_1C5924EF4(v25, &qword_1EC1983B0, &qword_1C5BEA730);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198388, &qword_1C5BEA720);
  v20 = (a2 + *(result + 36));
  *v20 = sub_1C592899C;
  v20[1] = 0;
  return result;
}

uint64_t sub_1C5B25DB8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v102 = v2;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  _s18HoveringHeaderViewVMa(255, v4, v5, v6);
  sub_1C5BCB804();
  v8 = _s18DefaultContentViewVMa_0(255, v4, v5, v7);
  v10 = _s29MatchedGeometrySourceModifierVMa(255, v4, v5, v9);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v11 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v91 = v11;
  v12 = sub_1C5BCA7D4();
  v92 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v88 - v13;
  v100 = v14;
  v15 = sub_1C5BC8AB4();
  v95 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v88 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198450, &qword_1C5BEA9C0);
  v108 = v8;
  v19 = sub_1C5BC8AB4();
  _s10HeaderViewVMa(255, v4, v5, v20);
  v21 = sub_1C5BCB804();
  v148[53] = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v94 = v21;
  v23 = sub_1C5BC8BE4();
  v107 = v19;
  v103 = v23;
  v104 = sub_1C5BC8AB4();
  v101 = v10;
  v24 = sub_1C5BC8AB4();
  v99 = v15;
  v105 = v24;
  v25 = sub_1C5BC92D4();
  v97 = *(v25 - 8);
  v98 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v106 = &v88 - v26;
  v27 = *(v1 + 112);
  v149[6] = *(v1 + 96);
  v149[7] = v27;
  v149[8] = *(v1 + 128);
  v28 = *(v1 + 48);
  v149[2] = *(v1 + 32);
  v149[3] = v28;
  v29 = *(v1 + 80);
  v149[4] = *(v1 + 64);
  v149[5] = v29;
  v30 = *(v1 + 16);
  v149[0] = *v1;
  v150 = *(v1 + 144);
  v149[1] = v30;
  v148[3] = &type metadata for Features;
  v148[4] = sub_1C5A2E158();
  v31 = swift_allocObject();
  v148[0] = v31;
  *(v31 + 16) = "MediaCoreUI";
  *(v31 + 24) = 11;
  *(v31 + 32) = 2;
  *(v31 + 40) = "HoveringChapterPicker";
  *(v31 + 48) = 21;
  *(v31 + 56) = 2;
  v32 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(v148);
  if (v32)
  {
    MEMORY[0x1EEE9AC00](v33);
    *(&v88 - 4) = v4;
    *(&v88 - 3) = v5;
    *(&v88 - 2) = v149;
    sub_1C5BC9134();
    v34 = v89;
    sub_1C5BCA7C4();
    v35 = v100;
    v36 = swift_getWitnessTable();
    v37 = v93;
    sub_1C5A45C68(v35, v36);
    (*(v92 + 8))(v34, v35);
    v38 = sub_1C5B09990();
    v115 = v36;
    v116 = v38;
    v39 = v99;
    v40 = swift_getWitnessTable();
    v41 = v96;
    sub_1C593EDC0(v37, v39, v40);
    v42 = *(v95 + 8);
    v42(v37, v39);
    sub_1C593EDC0(v41, v39, v40);
    v43 = swift_getWitnessTable();
    v44 = sub_1C5924F54(&qword_1EC198498, &qword_1EC198450, &qword_1C5BEA9C0, MEMORY[0x1E697EC18]);
    v113 = v43;
    v114 = v44;
    v45 = swift_getWitnessTable();
    v46 = swift_getWitnessTable();
    v111 = v45;
    v112 = v46;
    v47 = swift_getWitnessTable();
    v48 = swift_getWitnessTable();
    v109 = v47;
    v110 = v48;
    v49 = v105;
    v50 = swift_getWitnessTable();
    sub_1C5950E54(v37, v39, v49, v40, v50);
    v42(v37, v39);
    v42(v96, v39);
  }

  else
  {
    sub_1C59498C4(*&v149[0], *(&v149[0] + 1), v4, *(v5 + 8));
    v96 = v22;
    v51 = *(v5 + 224);
    swift_unknownObjectRetain();
    v52 = v51(v4, v5);
    swift_unknownObjectRelease();
    sub_1C5B27524(v52, v147);
    v53 = sub_1C5BCAA34();
    v91 = v54;
    v92 = v53;
    v93 = &v88;
    MEMORY[0x1EEE9AC00](v53);
    *(&v88 - 4) = v4;
    *(&v88 - 3) = v5;
    *(&v88 - 2) = v149;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198458, &qword_1C5BEA9C8);
    v55 = v108;
    v95 = swift_getWitnessTable();
    sub_1C5B2D3A0(&qword_1EC198460, &qword_1EC198458, &qword_1C5BEA9C8, sub_1C5B2D41C);
    sub_1C5BCA2C4();
    v138[4] = *&v147[64];
    v138[5] = *&v147[80];
    v138[6] = *&v147[96];
    v139 = *&v147[112];
    v138[0] = *v147;
    v138[1] = *&v147[16];
    v138[2] = *&v147[32];
    v138[3] = *&v147[48];
    (*(*(v55 - 8) + 8))(v138, v55);
    memcpy(v146, v148, 0x118uLL);
    v56 = sub_1C5BCAA34();
    MEMORY[0x1EEE9AC00](v56);
    *(&v88 - 4) = v4;
    *(&v88 - 3) = v5;
    *(&v88 - 2) = v149;
    v57 = sub_1C5924F54(&qword_1EC198498, &qword_1EC198450, &qword_1C5BEA9C0, MEMORY[0x1E697EC18]);
    v135 = v95;
    v136 = v57;
    v58 = v107;
    v59 = swift_getWitnessTable();
    sub_1C5BCA2C4();
    memcpy(v140, v146, sizeof(v140));
    (*(*(v58 - 8) + 8))(v140, v58);
    memcpy(v146, v147, 0x198uLL);
    KeyPath = swift_getKeyPath(asc_1C5BEA588);
    v145[0] = KeyPath;
    LOBYTE(v145[1]) = 0;
    v61 = swift_getWitnessTable();
    v133 = v59;
    v134 = v61;
    v62 = v104;
    v63 = swift_getWitnessTable();
    MEMORY[0x1C694E550](v148, v145, v62, v101, v63);
    sub_1C5942458(KeyPath, 0);
    memcpy(v141, v146, sizeof(v141));
    (*(*(v62 - 8) + 8))(v141, v62);
    memcpy(v147, v148, sizeof(v147));
    v64 = swift_getWitnessTable();
    v131 = v63;
    v132 = v64;
    v65 = v105;
    v66 = swift_getWitnessTable();
    sub_1C593EDC0(v147, v65, v66);
    memcpy(v142, v147, 0x1A1uLL);
    v67 = *(v65 - 8);
    v68 = *(v67 + 8);
    v68(v142, v65);
    memcpy(v143, v137, 0x1A1uLL);
    memcpy(v148, v137, 0x1A1uLL);
    sub_1C593EDC0(v148, v65, v66);
    memcpy(v144, v148, 0x1A1uLL);
    v69 = *(v67 + 16);
    v69(v147, v143, v65);
    v68(v144, v65);
    memcpy(v145, v130, 0x1A1uLL);
    memcpy(v129, v130, 0x1A1uLL);
    v69(v148, v145, v65);
    v70 = swift_getWitnessTable();
    v71 = sub_1C5B09990();
    v127 = v70;
    v128 = v71;
    v72 = v99;
    v73 = swift_getWitnessTable();
    sub_1C5941738(v129, v72, v65, v73, v66);
    memcpy(v146, v129, 0x1A1uLL);
    v68(v146, v65);
    memcpy(v147, v130, sizeof(v147));
    v68(v147, v65);
    memcpy(v148, v137, 0x1A1uLL);
    v68(v148, v65);
  }

  v74 = swift_getWitnessTable();
  v75 = sub_1C5B09990();
  v125 = v74;
  v126 = v75;
  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v78 = sub_1C5924F54(&qword_1EC198498, &qword_1EC198450, &qword_1C5BEA9C0, MEMORY[0x1E697EC18]);
  v123 = v77;
  v124 = v78;
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v121 = v79;
  v122 = v80;
  v81 = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  v119 = v81;
  v120 = v82;
  v83 = swift_getWitnessTable();
  v117 = v76;
  v118 = v83;
  v84 = v98;
  v85 = swift_getWitnessTable();
  v86 = v106;
  sub_1C593EDC0(v106, v84, v85);
  return (*(v97 + 8))(v86, v84);
}

uint64_t sub_1C5B26C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a5;
  v59 = a2;
  v7 = _s18HoveringHeaderViewVMa(0, a2, a3, a4);
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v51 - v10;
  v11 = sub_1C5BC8F34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C5BCB804();
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v51 - v17;
  v109 = *(a1 + 128);
  v53 = a1;
  v110 = *(a1 + 144);
  if (v110 != 1)
  {
    sub_1C59400B0(&v109, &v100, qword_1EC1984A0, &qword_1C5BEA9F8);
    sub_1C5BCB4E4();
    v26 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v109, qword_1EC1984A0, &qword_1C5BEA9F8);
    (*(v12 + 8))(v14, v11);
    if (*(&v91 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v55[7](v61, 1, 1, v7);
    swift_getWitnessTable();
    v22 = a3;
    goto LABEL_6;
  }

  v18 = *(&v109 + 1);
  v91 = v109;
  sub_1C59400B0(&v109, &v100, qword_1EC1984A0, &qword_1C5BEA9F8);
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_3:

  v19 = v52;
  sub_1C5A3D91C(v59, a3, v52);
  WitnessTable = swift_getWitnessTable();
  v21 = v54;
  sub_1C593EDC0(v19, v7, WitnessTable);
  v22 = a3;
  v23 = v55;
  v24 = v55[1];
  (v24)(v19, v7);
  sub_1C593EDC0(v21, v7, WitnessTable);
  (v24)(v21, v7);
  v25 = v61;
  (v23[4])(v61, v19, v7);
  v23[7](v25, 0, 1, v7);
LABEL_6:
  v27 = v57;
  v28 = v61;
  sub_1C5941600(v61, v57);
  v29 = v56;
  v30 = *(v56 + 8);
  v54 = (v56 + 8);
  v55 = v30;
  (v30)(v28, v60);
  v31 = v59;
  sub_1C59498C4(*v53, v53[1], v59, *(v22 + 8));
  v53 = v7;
  v32 = *(v22 + 224);
  swift_unknownObjectRetain();
  v33 = v32(v31, v22);
  swift_unknownObjectRelease();
  sub_1C5B27524(v33, &v91);
  KeyPath = swift_getKeyPath(asc_1C5BEA588);
  *&v89[0] = KeyPath;
  BYTE8(v89[0]) = 0;
  v36 = _s18DefaultContentViewVMa_0(0, v31, v22, v35);
  v38 = _s29MatchedGeometrySourceModifierVMa(0, v31, v22, v37);
  v39 = swift_getWitnessTable();
  MEMORY[0x1C694E550](&v100, v89, v36, v38, v39);
  sub_1C5942458(KeyPath, 0);
  v85[4] = v95;
  v85[5] = v96;
  v85[6] = v97;
  v86 = v98;
  v85[0] = v91;
  v85[1] = v92;
  v85[2] = v93;
  v85[3] = v94;
  (*(*(v36 - 8) + 8))(v85, v36);
  v97 = v106;
  v98 = v107;
  v99 = v108;
  v93 = v102;
  v94 = v103;
  v95 = v104;
  v96 = v105;
  v91 = v100;
  v92 = v101;
  v40 = sub_1C5BC8AB4();
  v41 = swift_getWitnessTable();
  v75[2] = v39;
  v75[3] = v41;
  v59 = swift_getWitnessTable();
  sub_1C593EDC0(&v91, v40, v59);
  v87[6] = v97;
  v87[7] = v98;
  v88 = v99;
  v87[2] = v93;
  v87[3] = v94;
  v87[4] = v95;
  v87[5] = v96;
  v87[0] = v91;
  v87[1] = v92;
  v42 = *(v40 - 8);
  v43 = *(v42 + 8);
  v43(v87, v40);
  v44 = v60;
  v45 = v61;
  (*(v29 + 16))(v61, v27, v60);
  v89[6] = v82;
  v89[7] = v83;
  v89[2] = v78;
  v89[3] = v79;
  v89[4] = v80;
  v89[5] = v81;
  v89[0] = v76;
  v89[1] = v77;
  v72 = v82;
  v73 = v83;
  v68 = v78;
  v69 = v79;
  v70 = v80;
  v71 = v81;
  v90 = v84;
  v74 = v84;
  v66 = v76;
  v67 = v77;
  v75[0] = v45;
  v75[1] = &v66;
  v46 = v45;
  (*(v42 + 16))(&v100, v89, v40);
  v65[0] = v44;
  v65[1] = v40;
  v62 = swift_getWitnessTable();
  v47 = v44;
  v63 = swift_getWitnessTable();
  v64 = v59;
  sub_1C594226C(v75, 2uLL, v65);
  v97 = v82;
  v98 = v83;
  v99 = v84;
  v93 = v78;
  v94 = v79;
  v95 = v80;
  v96 = v81;
  v91 = v76;
  v92 = v77;
  v43(&v91, v40);
  v48 = v44;
  v49 = v55;
  (v55)(v27, v48);
  v106 = v72;
  v107 = v73;
  v108 = v74;
  v102 = v68;
  v103 = v69;
  v104 = v70;
  v105 = v71;
  v100 = v66;
  v101 = v67;
  v43(&v100, v40);
  return (v49)(v46, v47);
}

void sub_1C5B27524(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = swift_getKeyPath(byte_1C5BEA548);
  *(a2 + 81) = 0;
  *(a2 + 88) = swift_getKeyPath(asc_1C5BEA5C8);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  MEMORY[0x1C694C860](v3, 0.0, -130.0);
  if (qword_1EC1905C8 != -1)
  {
    swift_once();
  }

  sub_1C5BC8664();

  sub_1C5BC8644();

  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  MEMORY[0x1C694C860](v4, 0.0, -300.0);
  if (qword_1EDA45F90 != -1)
  {
    swift_once();
  }

  sub_1C5BC8664();

  sub_1C5BC8644();

  v5 = sub_1C5BC85F4();

  *(a2 + 112) = v5;
}

void sub_1C5B277B4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1C5BC9014();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v47 - v7;
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(a1 + 128);
  v81 = *(a1 + 144);
  v12 = v80;
  if (v81 != 1)
  {
    sub_1C59400B0(&v80, &v67, qword_1EC1984A0, &qword_1C5BEA9F8);
    sub_1C5BCB4E4();
    v14 = v9;
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v9 = v14;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v80, qword_1EC1984A0, &qword_1C5BEA9F8);
    (*(v14 + 8))(v11, v8);
    v13 = *(&v75 + 1);
    v12 = v75;
    if (*(&v75 + 1))
    {
      goto LABEL_3;
    }

LABEL_7:

    goto LABEL_14;
  }

  v13 = *(&v80 + 1);
  v75 = v80;
  sub_1C59400B0(&v80, &v67, qword_1EC1984A0, &qword_1C5BEA9F8);
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v12 == 0x6575657571 && v13 == 0xE500000000000000)
  {

    goto LABEL_9;
  }

  v16 = sub_1C5BCBDE4();

  if ((v16 & 1) == 0)
  {
LABEL_14:
    sub_1C5B2D628(&v67);
LABEL_20:
    v43 = v73;
    a2[6] = v72;
    a2[7] = v43;
    a2[8] = v74;
    v44 = v70[0];
    a2[2] = v69;
    a2[3] = v44;
    v45 = v71;
    a2[4] = v70[1];
    a2[5] = v45;
    v46 = v68;
    *a2 = v67;
    a2[1] = v46;
    return;
  }

LABEL_9:
  v79 = *(a1 + 120);
  v17 = *(a1 + 112);
  v78 = v17;
  if ((v79 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v18 = v9;
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v9 = v18;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v78, &qword_1EC191B48, &qword_1C5BE98A0);
    (*(v18 + 8))(v11, v8);
    v17 = v67;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    swift_beginAccess();
    v21 = *(v20 + 32);
    v48 = v9;
    v52 = v17;
    if (v21)
    {
      swift_beginAccess();
      v51 = *(v20 + 24) < 1;
    }

    else
    {
      v51 = 0;
    }

    v50 = sub_1C5BC9664();
    sub_1C5BCABD4();
    v23 = v22;
    v25 = v24;
    v49 = sub_1C5BC9884();
    *(v77 + 10) = *(a1 + 90);
    v26 = *(a1 + 48);
    v76[0] = *(a1 + 32);
    v76[1] = v26;
    v27 = *(a1 + 80);
    v76[2] = *(a1 + 64);
    v77[0] = v27;
    if (BYTE9(v77[1]))
    {
      *(&v65[1] + 8) = *(a1 + 56);
      *(&v65[2] + 8) = *(a1 + 72);
      *(&v65[3] + 8) = *(a1 + 88);
      BYTE8(v65[4]) = *(a1 + 104);
      *(v65 + 8) = *(a1 + 40);
      *&v65[0] = *&v76[0];
    }

    else
    {
      sub_1C59400B0(v76, &v67, &qword_1EC191B58, &qword_1C5BE53F0);
      sub_1C5BCB4E4();
      v28 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v76, &qword_1EC191B58, &qword_1C5BE53F0);
      (*(v48 + 8))(v11, v8);
    }

    v68 = v65[1];
    v69 = v65[2];
    v70[0] = v65[3];
    *(v70 + 9) = *(&v65[3] + 9);
    v67 = v65[0];
    DeviceMetrics.padding.getter(&v57);
    sub_1C5BC8174();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v66 = 0;
    v37 = sub_1C5BC8AC4();
    v38 = sub_1C5BC9894();
    v39 = v54;
    sub_1C5BC9004();
    v41 = v55;
    v40 = v56;
    (*(v55 + 16))(v53, v39, v56);
    sub_1C5B2D644(&qword_1EC196DD8, MEMORY[0x1E697F400], MEMORY[0x1E697F3F8]);
    v42 = sub_1C5BC8674();
    (*(v41 + 8))(v39, v40);
    *&v57 = 0x49676E6979616C70;
    *(&v57 + 1) = 0xEB000000006D6574;
    *&v58 = v52;
    DWORD2(v58) = v50;
    *&v59 = v23;
    *(&v59 + 1) = v25;
    LOBYTE(v60) = v51;
    BYTE8(v60) = v49;
    *&v61 = v30;
    *(&v61 + 1) = v32;
    *&v62 = v34;
    *(&v62 + 1) = v36;
    LOBYTE(v63[0]) = 0;
    *(v63 + 8) = xmmword_1C5BE1450;
    *(&v63[1] + 1) = v37;
    LOBYTE(v64) = v38;
    *(&v64 + 1) = v42;
    CGSizeMake();
    v72 = v63[0];
    v73 = v63[1];
    v74 = v64;
    v69 = v59;
    v70[0] = v60;
    v70[1] = v61;
    v71 = v62;
    v67 = v57;
    v68 = v58;
    goto LABEL_20;
  }

  _s5QueueCMa();
  sub_1C5B2D644(qword_1EDA4A0C0, _s5QueueCMa, &unk_1C5BE4338);
  sub_1C5BC8C74();
  __break(1u);
}

uint64_t sub_1C5B27EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(a1 + 128);
  v61 = *(a1 + 144);
  v11 = v60;
  if (v61 == 1)
  {
    v12 = *(&v60 + 1);
    v59 = v60;
    sub_1C59400B0(&v60, &v53, qword_1EC1984A0, &qword_1C5BEA9F8);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1C59400B0(&v60, &v53, qword_1EC1984A0, &qword_1C5BEA9F8);
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    v36 = v11;
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = v14;
    sub_1C5BC7C54();

    a3 = v17;
    a2 = v16;
    a1 = v15;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v60, qword_1EC1984A0, &qword_1C5BEA9F8);
    (*(v8 + 8))(v10, v7);
    v12 = *(&v59 + 1);
    v11 = v59;
    if (!*(&v59 + 1))
    {
LABEL_7:
      *&v52[0] = 1;
      _s10HeaderViewVMa(0, a2, a3, v13);
      memset(v52 + 8, 0, 98);
      swift_getWitnessTable();
      sub_1C5941600(v52, &v53);
LABEL_15:
      v50 = v57;
      v51[0] = v58[0];
      *(v51 + 10) = *(v58 + 10);
      v46 = v53;
      v47 = v54;
      v48 = v55;
      v49 = v56;
      _s10HeaderViewVMa(255, a2, a3, v21);
      v32 = sub_1C5BCB804();
      WitnessTable = swift_getWitnessTable();
      v33 = swift_getWitnessTable();
      sub_1C593EDC0(&v46, v32, v33);
      v52[4] = v50;
      v52[5] = v51[0];
      *(&v52[5] + 10) = *(v51 + 10);
      v52[0] = v46;
      v52[1] = v47;
      v52[2] = v48;
      v52[3] = v49;
      return (*(*(v32 - 8) + 8))(v52, v32);
    }
  }

  *(&v54 + 1) = &type metadata for Features;
  *&v55 = sub_1C5A2E158();
  v19 = swift_allocObject();
  *&v53 = v19;
  *(v19 + 16) = "MediaCoreUI";
  *(v19 + 24) = 11;
  *(v19 + 32) = 2;
  *(v19 + 40) = "HoveringChapterPicker";
  *(v19 + 48) = 21;
  *(v19 + 56) = 2;
  v20 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v53);
  if (v20)
  {

    goto LABEL_7;
  }

  if (v11 == 0x6575657571 && v12 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_1C5BCBDE4();

    v23 = 0;
    if ((v22 & 1) == 0)
    {
LABEL_14:
      sub_1C59B5F20(v23 & 1, &v53);
      v26 = _s10HeaderViewVMa(0, a2, a3, v25);
      v36 = a2;
      v27 = v26;
      v28 = swift_getWitnessTable();
      sub_1C593EDC0(&v53, v27, v28);
      v41[4] = v57;
      v42[0] = v58[0];
      *(v42 + 10) = *(v58 + 10);
      v41[0] = v53;
      v41[1] = v54;
      v41[2] = v55;
      v41[3] = v56;
      v29 = a3;
      v30 = *(*(v27 - 8) + 8);
      v30(v41, v27);
      v57 = v52[4];
      v58[0] = v52[5];
      *(v58 + 10) = *(&v52[5] + 10);
      v53 = v52[0];
      v54 = v52[1];
      v55 = v52[2];
      v56 = v52[3];
      sub_1C593EDC0(&v53, v27, v28);
      v43[3] = v56;
      v43[4] = v57;
      v44[0] = v58[0];
      *(v44 + 10) = *(v58 + 10);
      v43[0] = v53;
      v43[1] = v54;
      v43[2] = v55;
      v30(v43, v27);
      a3 = v29;
      v57 = v39[6];
      v58[0] = v40[0];
      *(v58 + 10) = *(v40 + 10);
      v53 = v39[2];
      v54 = v39[3];
      v55 = v39[4];
      v56 = v39[5];
      sub_1C5941600(&v53, v38);
      v50 = v57;
      v51[0] = v58[0];
      *(v51 + 10) = *(v58 + 10);
      v46 = v53;
      v47 = v54;
      v48 = v55;
      v49 = v56;
      a2 = v36;
      v31 = sub_1C5BCB804();
      (*(*(v31 - 8) + 8))(&v46, v31);
      v57 = v38[4];
      v58[0] = v39[0];
      *(v58 + 10) = *(v39 + 10);
      v53 = v38[0];
      v54 = v38[1];
      v55 = v38[2];
      v56 = v38[3];
      goto LABEL_15;
    }
  }

  v24 = *(a1 + 16);
  if (v24)
  {
    swift_beginAccess();
    v23 = *(v24 + 32) ^ 1;
    goto LABEL_14;
  }

  _s5QueueCMa();
  sub_1C5B2D644(qword_1EDA4A0C0, _s5QueueCMa, &unk_1C5BE4338);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5B2855C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[2] = a1;
  v23[3] = a6;
  _s29MatchedGeometrySourceModifierVMa(255, a4, a5, a4);
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198528, &qword_1C5BEAC70);
  v10 = sub_1C5BC8AB4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v23[6] = a4;
  v23[7] = a5;
  v23[8] = a2;
  v24 = a3 & 1;
  sub_1C5BCAA54();
  v23[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198530, &qword_1C5BEAC78);
  WitnessTable = swift_getWitnessTable();
  sub_1C5B2CF08(&qword_1EC198538, &qword_1EC198530, &qword_1C5BEAC78, sub_1C5B2CFEC);
  sub_1C5BC9CE4();
  v19 = sub_1C5924F54(&qword_1EC198540, &qword_1EC198528, &qword_1C5BEAC70, MEMORY[0x1E697F940]);
  v25 = WitnessTable;
  v26 = v19;
  v20 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, v20);
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_1C593EDC0(v16, v10, v20);
  return (v21)(v16, v10);
}

uint64_t sub_1C5B28814(uint64_t a1, char a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCA484();
  if (a2)
  {
    v20 = a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v10 = sub_1C5942458(a1, 0);
    (*(v5 + 8))(v7, v4, v10);
    a1 = v20;
  }

  v11 = sub_1C5BC9664();
  sub_1C5BCABD4();
  *&v15 = v8;
  *(&v15 + 1) = 0x746E65746E6F63;
  *&v16 = 0xE700000000000000;
  *(&v16 + 1) = a1;
  *v17 = v11;
  *&v17[8] = v12;
  *&v17[16] = v13;
  v17[24] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1983C0, &qword_1C5BEA738);
  sub_1C5B2CFEC();
  sub_1C5BCA094();
  v18[0] = v15;
  v18[1] = v16;
  v19[0] = *v17;
  *(v19 + 9) = *&v17[9];
  return sub_1C5924EF4(v18, &qword_1EC1983C0, &qword_1C5BEA738);
}

uint64_t sub_1C5B28A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v28 = a1;
  v29 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  _s21FullScreenArtworkViewVMa(255, v4, v5, a3);
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v26 = v5;
  _s33DefaultMetadataAndContextMenuViewVMa(255, v4, v5, v6);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s10BannerViewVMa(255, v4, v5, v7);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  v25[1] = swift_getWitnessTable();
  v8 = sub_1C5BCA7D4();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = sub_1C5BC8AB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  v18 = v3[5];
  v47 = v3[4];
  v48 = v18;
  v49 = v3[6];
  v50 = *(v3 + 14);
  v19 = v3[1];
  v43 = *v3;
  v44 = v19;
  v20 = v3[3];
  v45 = v3[2];
  v46 = v20;
  v30 = v4;
  v31 = v26;
  v32 = &v43;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  sub_1C5BC98B4();
  v39 = v47;
  v40 = v48;
  v41 = v49;
  v42 = v50;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  sub_1C5B2A63C();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  (*(v27 + 8))(v10, v8);
  v33 = WitnessTable;
  v34 = MEMORY[0x1E697E5D8];
  v22 = swift_getWitnessTable();
  sub_1C593EDC0(v14, v11, v22);
  v23 = *(v12 + 8);
  v23(v14, v11);
  sub_1C593EDC0(v17, v11, v22);
  return (v23)(v17, v11);
}

uint64_t sub_1C5B28E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a4;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s21FullScreenArtworkViewVMa(255, a2, a3, v11);
  sub_1C5BC97C4();
  v111 = sub_1C5BC8AB4();
  v107 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v94 - v17;
  v96 = *a1;

  v109 = a2;
  v105 = a3;
  *&v198 = sub_1C5B4BFA0(v18);
  v102 = v19;
  v103 = v7;
  *(&v198 + 1) = v19;
  v242 = *(a1 + 11);
  v97 = a1;
  v243 = *(a1 + 104);
  v20 = *(&v242 + 1);
  v21 = v242;
  v106 = v243;
  v104 = *(&v242 + 1);
  if (v243 != 1)
  {
    sub_1C59400B0(&v242, &v206, qword_1EC1984A0, &qword_1C5BEA9F8);
    sub_1C5BCB4E4();
    v22 = v8;
    v23 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v242, qword_1EC1984A0, &qword_1C5BEA9F8);
    v8 = v22;
    (*(v22 + 8))(v10, v7);
    if (!*(&v190 + 1))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v190 = v242;
  sub_1C59400B0(&v242, &v206, qword_1EC1984A0, &qword_1C5BEA9F8);
  if (v20)
  {
LABEL_5:
  }

LABEL_6:
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA094();

  v25 = sub_1C5B2D644(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v227 = WitnessTable;
  v228 = v25;
  v26 = v111;
  v98 = swift_getWitnessTable();
  sub_1C593EDC0(v15, v26, v98);
  v99 = *(v107 + 8);
  v100 = v107 + 8;
  v99(v15, v26);
  v27 = v8;
  if (v106)
  {
    v225 = v21;
    v28 = v104;
    v226 = v104;
    sub_1C59400B0(&v242, &v206, qword_1EC1984A0, &qword_1C5BEA9F8);
    v29 = v28;
  }

  else
  {
    sub_1C59400B0(&v242, &v206, qword_1EC1984A0, &qword_1C5BEA9F8);
    sub_1C5BCB4E4();
    v30 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v242, qword_1EC1984A0, &qword_1C5BEA9F8);
    (*(v27 + 8))(v10, v103);
    v29 = v226;
  }

  v31 = v105;
  v102 = v27;
  v32 = MEMORY[0x1E697E5D8];
  if (v29)
  {

    _s33DefaultMetadataAndContextMenuViewVMa(255, v109, v31, v33);
    sub_1C5BC8AB4();
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    memset(v209, 0, sizeof(v209));
    *&v210 = 0;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
    sub_1C5BC8AB4();
    v114 = swift_getWitnessTable();
    v115 = v32;
    v34 = swift_getWitnessTable();
    v35 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
    v112 = v34;
    v113 = v35;
    swift_getWitnessTable();
    sub_1C5941600(&v206, &v219);
  }

  else
  {
    v95 = v21;
    sub_1C5B46508(&v147);
    v232 = v147;
    *&v233 = v148;
    BYTE8(v233) = BYTE8(v148);
    sub_1C5BC9884();
    v36 = *(v97 + 1);
    *&v241[10] = *(v97 + 66);
    v37 = *(v97 + 3);
    v240[0] = v36;
    v240[1] = v37;
    v38 = *(v97 + 7);
    v240[2] = *(v97 + 5);
    *v241 = v38;
    if (v241[25])
    {
      v39 = *(v97 + 1);
      *(&v189[1] + 8) = *(v97 + 2);
      v40 = *(v97 + 4);
      *(&v189[2] + 8) = *(v97 + 3);
      *(&v189[3] + 8) = v40;
      BYTE8(v189[4]) = *(v97 + 80);
      *(v189 + 8) = v39;
      *&v189[0] = v36;
    }

    else
    {
      sub_1C59400B0(v240, &v206, &qword_1EC191B58, &qword_1C5BE53F0);
      sub_1C5BCB4E4();
      v41 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v31 = v105;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v240, &qword_1EC191B58, &qword_1C5BE53F0);
      (*(v102 + 8))(v10, v103);
    }

    v208 = v189[2];
    v209[0] = v189[3];
    *(v209 + 9) = *(&v189[3] + 9);
    v207 = v189[1];
    v206 = v189[0];
    DeviceMetrics.padding.getter(&v198);
    _s33DefaultMetadataAndContextMenuViewVMa(0, v109, v31, v42);
    v43 = swift_getWitnessTable();
    sub_1C5BCA2F4();
    v44 = v233;
    v45 = BYTE8(v233);
    swift_unknownObjectRelease();
    sub_1C5942458(v44, v45);
    v208 = v132;
    v209[0] = v133[0];
    *(v209 + 9) = *(v133 + 9);
    v207 = v131;
    v206 = v130;
    v46 = sub_1C5BC8AB4();
    v217 = v43;
    v218 = MEMORY[0x1E697E5D8];
    v47 = swift_getWitnessTable();
    sub_1C5BC9D74();
    v187 = v208;
    v188[0] = v209[0];
    *(v188 + 9) = *(v209 + 9);
    v186 = v207;
    v185 = v206;
    (*(*(v46 - 8) + 8))(&v185, v46);
    v192 = v200;
    v193 = v201;
    v194 = v202;
    *&v195 = v203;
    v190 = v198;
    v191 = v199;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
    v31 = v105;
    v48 = sub_1C5BC8AB4();
    v49 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
    v215 = v47;
    v216 = v49;
    v50 = swift_getWitnessTable();
    sub_1C593EDC0(&v190, v48, v50);
    v171 = v193;
    v172 = v194;
    *&v173 = v195;
    v168 = v190;
    v169 = v191;
    v170 = v192;
    v51 = *(*(v48 - 8) + 8);
    v51(&v168, v48);
    v192 = v208;
    v193 = v209[0];
    v194 = v209[1];
    *&v195 = v210;
    v190 = v206;
    v191 = v207;
    sub_1C593EDC0(&v190, v48, v50);
    v178 = v192;
    v179 = v193;
    v180 = v194;
    *&v181 = v195;
    v176 = v190;
    v177 = v191;
    v51(&v176, v48);
    v137 = v162;
    v138 = v163;
    v139 = v164;
    *&v140 = v165;
    v135 = v160;
    v136 = v161;
    sub_1C5941600(&v135, &v152);
    v192 = v137;
    v193 = v138;
    v194 = v139;
    *&v195 = v140;
    v190 = v135;
    v191 = v136;
    v52 = sub_1C5BCB804();
    (*(*(v52 - 8) + 8))(&v190, v52);
    v221 = v154;
    v222 = v155;
    v223 = v156;
    v224 = v157;
    v219 = v152;
    v220 = v153;
    v21 = v95;
  }

  v53 = v104;
  v54 = v102;
  if (v106)
  {
    v213 = v21;
    v214 = v104;
    sub_1C59400B0(&v242, &v206, qword_1EC1984A0, &qword_1C5BEA9F8);
  }

  else
  {
    sub_1C59400B0(&v242, &v206, qword_1EC1984A0, &qword_1C5BEA9F8);
    sub_1C5BCB4E4();
    v55 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v242, qword_1EC1984A0, &qword_1C5BEA9F8);
    (*(v54 + 8))(v10, v103);
    v53 = v214;
  }

  if (v53)
  {

    sub_1C5B2D890(&v198);
    v196 = v204;
    v197[0] = v205[0];
    *(v197 + 9) = *(v205 + 9);
    v192 = v200;
    v193 = v201;
    v195 = v203;
    v194 = v202;
    v191 = v199;
    v190 = v198;
    v56 = v109;
    _s10BannerViewVMa(255, v109, v31, v57);
    sub_1C5BC8AB4();
    sub_1C5BC8AB4();
    v118 = swift_getWitnessTable();
    v58 = MEMORY[0x1E697E5D8];
    v119 = MEMORY[0x1E697E5D8];
    v116 = swift_getWitnessTable();
    v117 = v58;
    swift_getWitnessTable();
    sub_1C5941600(&v190, &v206);
  }

  else
  {

    v59 = v109;
    sub_1C5B304C8(&v229);
    v239 = v231;
    v237 = v230;
    v238 = BYTE8(v230);
    v236 = v229;
    v206 = v229;
    v207 = v230;
    v208 = v231;
    sub_1C5BC98A4();
    _s10BannerViewVMa(0, v59, v31, v60);
    v61 = swift_getWitnessTable();
    sub_1C5BCA2F4();
    sub_1C5924EF4(&v236, &unk_1EC197E30, &unk_1C5BEAC60);
    sub_1C5924EF4(&v237, &qword_1EC194400, &unk_1C5BE94E0);
    v62 = sub_1C5BC8C94();
    (*(*(v62 - 8) + 8))(&v239, v62);
    v187 = v189[2];
    v188[0] = v189[3];
    v188[1] = v189[4];
    *(&v188[1] + 9) = *(&v189[4] + 9);
    v185 = v189[0];
    v186 = v189[1];
    sub_1C5BC9884();
    v63 = *(v97 + 1);
    *(v235 + 10) = *(v97 + 66);
    v64 = *(v97 + 3);
    v232 = v63;
    v233 = v64;
    v65 = *(v97 + 7);
    v234 = *(v97 + 5);
    v235[0] = v65;
    if (BYTE9(v235[1]))
    {
      v66 = *(v97 + 1);
      *(&v184[1] + 8) = *(v97 + 2);
      v67 = *(v97 + 4);
      *(&v184[2] + 8) = *(v97 + 3);
      *(&v184[3] + 8) = v67;
      BYTE8(v184[4]) = *(v97 + 80);
      *(v184 + 8) = v66;
      *&v184[0] = v232;
    }

    else
    {
      sub_1C59400B0(&v232, &v206, &qword_1EC191B58, &qword_1C5BE53F0);
      sub_1C5BCB4E4();
      v68 = v10;
      v69 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v232, &qword_1EC191B58, &qword_1C5BE53F0);
      (*(v102 + 8))(v68, v103);
    }

    v208 = v184[2];
    v209[0] = v184[3];
    *(v209 + 9) = *(&v184[3] + 9);
    v207 = v184[1];
    v206 = v184[0];
    DeviceMetrics.padding.getter(&v198);
    v70 = sub_1C5BC8AB4();
    v145 = v61;
    v71 = MEMORY[0x1E697E5D8];
    v146 = MEMORY[0x1E697E5D8];
    v72 = swift_getWitnessTable();
    sub_1C5BCA2F4();
    v149 = v187;
    v150 = v188[0];
    v151[0] = v188[1];
    *(v151 + 9) = *(&v188[1] + 9);
    v147 = v185;
    v148 = v186;
    (*(*(v70 - 8) + 8))(&v147, v70);
    v211 = v196;
    v212[0] = v197[0];
    *(v212 + 9) = *(v197 + 9);
    v208 = v192;
    v209[0] = v193;
    v210 = v195;
    v209[1] = v194;
    v207 = v191;
    v206 = v190;
    v73 = sub_1C5BC8AB4();
    v143 = v72;
    v144 = v71;
    v74 = swift_getWitnessTable();
    sub_1C593EDC0(&v206, v73, v74);
    v158 = v211;
    v159[0] = v212[0];
    *(v159 + 9) = *(v212 + 9);
    v154 = v208;
    v155 = v209[0];
    v156 = v209[1];
    v157 = v210;
    v152 = v206;
    v153 = v207;
    v75 = *(*(v73 - 8) + 8);
    v75(&v152, v73);
    v211 = v204;
    v212[0] = v205[0];
    *(v212 + 9) = *(v205 + 9);
    v208 = v200;
    v209[0] = v201;
    v210 = v203;
    v209[1] = v202;
    v207 = v199;
    v206 = v198;
    sub_1C593EDC0(&v206, v73, v74);
    v166 = v211;
    v167[0] = v212[0];
    *(v167 + 9) = *(v212 + 9);
    v162 = v208;
    v163 = v209[0];
    v164 = v209[1];
    v165 = v210;
    v160 = v206;
    v161 = v207;
    v75(&v160, v73);
    v174 = v141;
    v175[0] = v142[0];
    *(v175 + 9) = *(v142 + 9);
    v171 = v138;
    v173 = v140;
    v172 = v139;
    v169 = v136;
    v170 = v137;
    v168 = v135;
    CGSizeMake();
    v211 = v174;
    v212[0] = v175[0];
    *(v212 + 9) = *(v175 + 9);
    v208 = v170;
    v209[0] = v171;
    v210 = v173;
    v209[1] = v172;
    v207 = v169;
    v206 = v168;
    sub_1C5941600(&v206, &v130);
    v182 = v211;
    v183[0] = v212[0];
    *(v183 + 9) = *(v212 + 9);
    v178 = v208;
    v179 = v209[0];
    v181 = v210;
    v180 = v209[1];
    v177 = v207;
    v176 = v206;
    v76 = sub_1C5BCB804();
    (*(*(v76 - 8) + 8))(&v176, v76);
    v211 = v133[3];
    v212[0] = v134[0];
    *(v212 + 9) = *(v134 + 9);
    v208 = v132;
    v209[0] = v133[0];
    v210 = v133[2];
    v209[1] = v133[1];
    v207 = v131;
    v206 = v130;
    v31 = v105;
    v56 = v109;
  }

  v77 = v108;
  v78 = v111;
  (*(v107 + 16))();
  v171 = v222;
  v172 = v223;
  *&v173 = v224;
  v168 = v219;
  v169 = v220;
  v170 = v221;
  *&v160 = v77;
  *(&v160 + 1) = &v168;
  v196 = v211;
  v197[0] = v212[0];
  *(v197 + 9) = *(v212 + 9);
  v192 = v208;
  v193 = v209[0];
  v195 = v210;
  v194 = v209[1];
  v191 = v207;
  v190 = v206;
  *&v161 = &v190;
  _s33DefaultMetadataAndContextMenuViewVMa(255, v56, v31, v79);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  v107 = sub_1C5BC8AB4();
  v80 = sub_1C5BCB804();
  v81 = v31;
  v82 = *(v80 - 8);
  (*(v82 + 16))(&v198, &v219, v80);
  _s10BannerViewVMa(255, v56, v81, v83);
  sub_1C5BC8AB4();
  v109 = sub_1C5BC8AB4();
  v84 = sub_1C5BCB804();
  v85 = *(v84 - 8);
  (*(v85 + 16))(&v198, &v206, v84);
  *&v152 = v78;
  *(&v152 + 1) = v80;
  *&v153 = v84;
  *&v135 = v98;
  v128 = swift_getWitnessTable();
  v86 = MEMORY[0x1E697E5D8];
  v129 = MEMORY[0x1E697E5D8];
  v87 = swift_getWitnessTable();
  v88 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
  v126 = v87;
  v127 = v88;
  v125 = swift_getWitnessTable();
  *(&v135 + 1) = swift_getWitnessTable();
  v123 = swift_getWitnessTable();
  v124 = v86;
  v121 = swift_getWitnessTable();
  v122 = v86;
  v120 = swift_getWitnessTable();
  *&v136 = swift_getWitnessTable();
  sub_1C594226C(&v160, 3uLL, &v152);
  v89 = *(v85 + 8);
  v89(&v206, v84);
  v90 = *(v82 + 8);
  v90(&v219, v80);
  v91 = v111;
  v92 = v99;
  v99(v110, v111);
  v204 = v196;
  v205[0] = v197[0];
  *(v205 + 9) = *(v197 + 9);
  v200 = v192;
  v201 = v193;
  v203 = v195;
  v202 = v194;
  v199 = v191;
  v198 = v190;
  v89(&v198, v84);
  v178 = v170;
  v179 = v171;
  v180 = v172;
  *&v181 = v173;
  v176 = v168;
  v177 = v169;
  v90(&v176, v80);
  return v92(v108, v91);
}

void sub_1C5B2A63C()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16[10] = *(v0 + 66);
  v5 = *(v0 + 24);
  v6 = *(v0 + 56);
  v15[2] = *(v0 + 40);
  *v16 = v6;
  v15[0] = *(v0 + 8);
  v15[1] = v5;
  if (v16[25])
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 56);
    v13 = *(v0 + 40);
    v14[0] = v8;
    *(v14 + 9) = *(v0 + 65);
    v11 = *(v0 + 8);
    v12 = v7;
    if (!BYTE1(v7))
    {
      return;
    }

    goto LABEL_3;
  }

  sub_1C5BCB4E4();
  v10 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();
  sub_1C5924EF4(v15, &unk_1EC194DE0, &qword_1C5BDCD20);
  (*(v2 + 8))(v4, v1);
  if (BYTE1(v12))
  {
LABEL_3:
    v9 = [objc_opt_self() currentTraitCollection];
    [v9 displayScale];
  }
}

uint64_t sub_1C5B2A8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_1C5BC8F34();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  v67 = a1;
  v6 = *(a1 + 16);
  v7 = *(v5 + 24);
  _s15TimeControlViewVMa(255, v6, v7, v8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  _s12ControlsViewVMa(255, v6, v7, v9);
  v69 = v6;
  v92 = v7;
  _s13FooterButtonsVMa(255, v6, v7, v10);
  swift_getTupleTypeMetadata3();
  v11 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v66[1] = v11;
  v68 = WitnessTable;
  v13 = sub_1C5BCA7D4();
  v14 = sub_1C5BC8AB4();
  v15 = sub_1C5BC8AB4();
  sub_1C5BC9414();
  v16 = sub_1C5BC8AB4();
  v71 = v13;
  v17 = swift_getWitnessTable();
  v18 = MEMORY[0x1E697E5D8];
  v70 = v17;
  v120 = v17;
  v121 = MEMORY[0x1E697E5D8];
  v75 = v14;
  v74 = swift_getWitnessTable();
  v118 = v74;
  v119 = v18;
  v19 = swift_getWitnessTable();
  v88 = MEMORY[0x1E697FEC8];
  v116 = swift_getWitnessTable();
  v117 = MEMORY[0x1E697E270];
  v20 = swift_getWitnessTable();
  *&v111[0] = v15;
  *(&v111[0] + 1) = v16;
  *&v111[1] = v19;
  *(&v111[1] + 1) = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v91 = v66 - v22;
  sub_1C5BC9414();
  v23 = sub_1C5BC8AB4();
  v85 = v16;
  v86 = v15;
  *&v111[0] = v15;
  *(&v111[0] + 1) = v16;
  v80 = v19;
  *&v111[1] = v19;
  v24 = v66[0];
  v76 = v20;
  *(&v111[1] + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = swift_getWitnessTable();
  v115 = MEMORY[0x1E697E5C0];
  v26 = swift_getWitnessTable();
  v87 = OpaqueTypeMetadata2;
  v88 = OpaqueTypeConformance2;
  *&v111[0] = OpaqueTypeMetadata2;
  v84 = v23;
  *(&v111[0] + 1) = v23;
  *&v111[1] = OpaqueTypeConformance2;
  *(&v111[1] + 1) = v26;
  v81 = swift_getOpaqueTypeMetadata2();
  v72 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v73 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v82 = v66 - v29;
  v30 = *(v24 + *(v67 + 40));
  if (v30)
  {
    v31 = swift_beginAccess();
    LODWORD(v67) = *(v30 + 58);
    MEMORY[0x1EEE9AC00](v31);
    v32 = v69;
    v66[-4] = v69;
    v66[-3] = v92;
    v66[-2] = v24;
    v34 = v33;
    LOBYTE(v66[-1]) = v33;
    sub_1C5BC9134();
    swift_checkMetadataState();
    sub_1C5BCA7C4();
    memcpy(v108, v109, sizeof(v108));
    sub_1C5BC9884();
    *&v113[10] = *(v24 + 58);
    v35 = v24[3];
    v112[2] = v24[2];
    *v113 = v35;
    v36 = v24[1];
    v112[0] = *v24;
    v112[1] = v36;
    v83 = v26;
    if (v113[25])
    {
      v37 = v24[3];
      v106 = v24[2];
      v107[0] = v37;
      *(v107 + 9) = *(v24 + 57);
      v38 = *v24;
      v105 = v24[1];
      v104 = v38;
    }

    else
    {

      sub_1C5BCB4E4();
      v39 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v40 = v77;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v112, &unk_1EC194DE0, &qword_1C5BDCD20);
      (*(v78 + 8))(v40, v79);
    }

    v111[2] = v106;
    v111[3] = v107[0];
    *(&v111[3] + 9) = *(v107 + 9);
    v111[1] = v105;
    v111[0] = v104;
    DeviceMetrics.padding.getter(v95);
    v41 = swift_checkMetadataState();
    sub_1C5BCA2F4();
    memcpy(v101, v108, 0x13AuLL);
    (*(*(v41 - 8) + 8))(v101, v41);
    memcpy(v100, v110, sizeof(v100));
    sub_1C5BC98B4();
    *(v103 + 10) = *(v24 + 58);
    v42 = v24[3];
    v102[2] = v24[2];
    v103[0] = v42;
    v43 = *v24;
    v102[1] = v24[1];
    v102[0] = v43;
    v44 = v32;
    if (BYTE9(v103[1]))
    {
      v45 = v24[3];
      v98 = v24[2];
      v99[0] = v45;
      *(v99 + 9) = *(v24 + 57);
      v46 = *v24;
      v97 = v24[1];
      v96 = v46;
    }

    else
    {

      sub_1C5BCB4E4();
      v47 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v48 = v77;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v102, &unk_1EC194DE0, &qword_1C5BDCD20);
      (*(v78 + 8))(v48, v79);
    }

    v49 = v92;
    v95[2] = v98;
    v95[3] = v99[0];
    *(&v95[3] + 9) = *(v99 + 9);
    v95[0] = v96;
    v95[1] = v97;
    DeviceMetrics.padding.getter(v93);
    v50 = swift_checkMetadataState();
    sub_1C5BCA2F4();
    memcpy(v94, v100, 0x169uLL);
    (*(*(v50 - 8) + 8))(v94, v50);
    memcpy(v93, v111, 0x199uLL);
    v51 = sub_1C5BCAAA4();
    MEMORY[0x1EEE9AC00](v51);
    v66[-4] = v44;
    v66[-3] = v49;
    LOBYTE(v66[-2]) = v34;
    v52 = swift_checkMetadataState();
    swift_checkMetadataState();
    sub_1C5BCA374();

    memcpy(v95, v93, 0x199uLL);
    (*(*(v52 - 8) + 8))(v95, v52);
    v53 = v72;
    v54 = sub_1C5BCAAA4();
    MEMORY[0x1EEE9AC00](v54);
    v66[-4] = v44;
    v66[-3] = v49;
    LOBYTE(v66[-2]) = v34;
    v55 = swift_checkMetadataState();
    v56 = v73;
    v58 = v87;
    v57 = v88;
    v59 = v83;
    v60 = v91;
    sub_1C5BCA374();

    (*(v89 + 8))(v60, v58);
    v93[0] = v58;
    v93[1] = v55;
    v93[2] = v57;
    v93[3] = v59;
    v61 = swift_getOpaqueTypeConformance2();
    v63 = v81;
    v62 = v82;
    sub_1C593EDC0(v56, v81, v61);
    v64 = *(v53 + 8);
    v64(v56, v63);
    sub_1C593EDC0(v62, v63, v61);
    return (v64)(v62, v63);
  }

  else
  {
    _s17TransportControlsCMa();
    sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B2B46C@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v9 = sub_1C5BC8F34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGSizeMake();
  LODWORD(v37) = sub_1C5BC98B4();
  *&v118[10] = *(a1 + 58);
  v13 = a1[3];
  v117[2] = a1[2];
  *v118 = v13;
  v14 = a1[1];
  v117[0] = *a1;
  v117[1] = v14;
  if (v118[25])
  {
    v15 = a1[3];
    v103 = a1[2];
    v104[0] = v15;
    *(v104 + 9) = *(a1 + 57);
    v16 = *a1;
    v102 = a1[1];
    v101 = v16;
  }

  else
  {

    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    v36 = v9;
    v18 = v17;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v117, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v10 + 8))(v12, v36);
  }

  v93 = v103;
  v94[0] = v104[0];
  *(v94 + 9) = *(v104 + 9);
  v92 = v102;
  v91 = v101;
  sub_1C5B3F240();
  _s15TimeControlViewVMa(0, a3, a4, v19);
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v97 = v105;
  v98 = v106;
  v99 = v107;
  v100 = v108;
  sub_1C5BC8AB4();
  v75 = WitnessTable;
  v76 = MEMORY[0x1E697E5D8];
  v21 = swift_getWitnessTable();
  sub_1C5BCA264();
  v91 = v109;
  v92 = v110;
  v93 = v111;
  v94[0] = v112;
  v22 = sub_1C5BC8AB4();
  v36 = v22;
  v73 = v21;
  v74 = MEMORY[0x1E697E270];
  v37 = swift_getWitnessTable();
  sub_1C593EDC0(&v91, v22, v37);
  sub_1C5ACE3D0(a2 & 1, &v91);
  v24 = _s12ControlsViewVMa(0, a3, a4, v23);
  v34 = swift_getWitnessTable();
  sub_1C593EDC0(&v91, v24, v34);
  v77[4] = v94[1];
  v77[5] = v95[0];
  v77[6] = v95[1];
  v78 = v96;
  v77[0] = v91;
  v77[1] = v92;
  v77[2] = v93;
  v77[3] = v94[0];
  v25 = *(v24 - 8);
  v35 = *(v25 + 8);
  v35(v77, v24);
  sub_1C5B30EA8(&v91);
  v27 = _s13FooterButtonsVMa(0, a3, a4, v26);
  v28 = swift_getWitnessTable();
  sub_1C593EDC0(&v91, v27, v28);
  v79[4] = v94[1];
  v80[0] = v95[0];
  *(v80 + 10) = *(v95 + 10);
  v79[0] = v91;
  v79[1] = v92;
  v79[2] = v93;
  v79[3] = v94[0];
  v29 = *(v27 - 8);
  v30 = *(v29 + 8);
  v30(v79, v27);
  v57[0] = v113;
  v57[1] = v114;
  v57[2] = v115;
  v57[3] = v116;
  v81[4] = v69;
  v81[5] = v70;
  v81[6] = v71;
  v81[0] = v65;
  v81[1] = v66;
  v81[2] = v67;
  v81[3] = v68;
  v51 = v67;
  v52 = v68;
  v49 = v65;
  v50 = v66;
  v54 = v70;
  v55 = v71;
  v53 = v69;
  v83[1] = v60;
  v83[0] = v59;
  *(v84 + 10) = *(v64 + 10);
  v84[0] = v64[0];
  v83[4] = v63;
  v83[2] = v61;
  v83[3] = v62;
  v82 = v72;
  v56 = v72;
  v58[0] = v57;
  v58[1] = &v49;
  v43 = v59;
  v44 = v60;
  *(v48 + 10) = *(v64 + 10);
  v47 = v63;
  v48[0] = v64[0];
  v45 = v61;
  v46 = v62;
  v58[2] = &v43;
  (*(v25 + 16))(&v91, v81, v24);
  (*(v29 + 16))(&v91, v83, v27);
  v42[0] = v36;
  v42[1] = v24;
  v42[2] = v27;
  v39 = v37;
  v40 = v34;
  v41 = v28;
  sub_1C594226C(v58, 3uLL, v42);
  v85[4] = v63;
  v86[0] = v64[0];
  *(v86 + 10) = *(v64 + 10);
  v85[0] = v59;
  v85[1] = v60;
  v85[3] = v62;
  v85[2] = v61;
  v30(v85, v27);
  v87[4] = v69;
  v87[5] = v70;
  v87[6] = v71;
  v88 = v72;
  v87[0] = v65;
  v87[1] = v66;
  v87[2] = v67;
  v87[3] = v68;
  v31 = v35;
  v35(v87, v24);
  v89[4] = v47;
  v90[0] = v48[0];
  *(v90 + 10) = *(v48 + 10);
  v89[0] = v43;
  v89[1] = v44;
  v89[3] = v46;
  v89[2] = v45;
  v30(v89, v27);
  v94[1] = v53;
  v95[0] = v54;
  v95[1] = v55;
  v96 = v56;
  v91 = v49;
  v92 = v50;
  v93 = v51;
  v94[0] = v52;
  return v31(&v91, v24);
}

uint64_t sub_1C5B2BBF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  _s15TimeControlViewVMa(255, a3, a4, a4);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  _s12ControlsViewVMa(255, a3, a4, v6);
  _s13FooterButtonsVMa(255, a3, a4, v7);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC9414();
  v8 = sub_1C5BC8AB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA264();
  v19[0] = WitnessTable;
  v19[1] = MEMORY[0x1E697E270];
  v16 = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, v16);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_1C593EDC0(v14, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_1C5B2BEB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  _s15TimeControlViewVMa(255, a3, a4, a4);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  _s12ControlsViewVMa(255, a3, a4, v6);
  _s13FooterButtonsVMa(255, a3, a4, v7);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  v8 = sub_1C5BC8AB4();
  sub_1C5BC9414();
  v9 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x1E697E5D8];
  v24[10] = WitnessTable;
  v24[11] = MEMORY[0x1E697E5D8];
  v24[8] = swift_getWitnessTable();
  v24[9] = v11;
  v12 = swift_getWitnessTable();
  v24[6] = swift_getWitnessTable();
  v24[7] = MEMORY[0x1E697E270];
  v24[2] = v8;
  v24[3] = v9;
  v24[4] = v12;
  v24[5] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC9414();
  v13 = sub_1C5BC8AB4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  v20 = swift_getWitnessTable();
  sub_1C5BCA2B4();
  v24[0] = v20;
  v24[1] = MEMORY[0x1E697E5C0];
  v21 = swift_getWitnessTable();
  sub_1C593EDC0(v16, v13, v21);
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_1C593EDC0(v19, v13, v21);
  return (v22)(v19, v13);
}

uint64_t (*MCUINamespace<A>.nowPlayingHorizontalPadding.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_1C5B25094();
  sub_1C5BC8F44();
  return sub_1C5B2C2B4;
}

double EnvironmentValues.nowPlayingHorizontalPadding.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v6 - v2;
  v4 = sub_1C5BC8F34();
  (*(*(v4 - 8) + 16))(v3, v0, v4);
  sub_1C5B25094();
  sub_1C5BC8F44();
  sub_1C5924EF4(v3, &qword_1EC191938, &qword_1C5BD3470);
  return *&v6[1];
}

double sub_1C5B2C3DC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1C5BC8F34();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_1C5B25094();
  sub_1C5BC8F44();
  sub_1C5924EF4(v6, &qword_1EC191938, &qword_1C5BD3470);
  result = v10;
  *a2 = v10;
  return result;
}

uint64_t sub_1C5B2C4E0(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = *a1;
  v8 = sub_1C5BC8F34();
  v9 = *(*(v8 - 8) + 32);
  v9(v6, a2, v8);
  v11[1] = v7;
  sub_1C5B25094();
  sub_1C5BC8F54();
  return (v9)(a2, v6, v8);
}

uint64_t EnvironmentValues.nowPlayingHorizontalPadding.setter(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = sub_1C5BC8F34();
  v8 = *(*(v7 - 8) + 32);
  v8(v6, v2, v7);
  *&v10[1] = a1;
  sub_1C5B25094();
  sub_1C5BC8F54();
  return (v8)(v2, v6, v7);
}

void (*EnvironmentValues.nowPlayingHorizontalPadding.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938, &qword_1C5BD3470) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[5] = v7;
  v9 = sub_1C5BC8F34();
  v5[6] = v9;
  v10 = *(v9 - 8);
  v5[7] = v10;
  (*(v10 + 16))(v8, v1, v9);
  v5[8] = sub_1C5B25094();
  sub_1C5BC8F44();
  sub_1C5924EF4(v8, &qword_1EC191938, &qword_1C5BD3470);
  *v5 = v5[1];
  return sub_1C5B2C85C;
}

void sub_1C5B2C85C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *((*a1)[7] + 32);
  v5((*a1)[5], (*a1)[4], (*a1)[6]);
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[4];
  v9 = 3;
  if (a2)
  {
    v9 = 2;
  }

  v3[v9] = v4;
  sub_1C5BC8F54();
  v5(v8, v6, v7);
  free(v6);

  free(v3);
}

void sub_1C5B2C9A8(uint64_t a1)
{
  sub_1C5BC8C94();
  if (v1 <= 0x3F)
  {
    sub_1C5AB422C(319);
    if (v2 <= 0x3F)
    {
      sub_1C5A1A4F8(319);
      if (v3 <= 0x3F)
      {
        sub_1C5933828(319, &qword_1EDA467C8, &type metadata for DeviceMetrics);
        if (v4 <= 0x3F)
        {
          sub_1C5933828(319, &qword_1EDA46730, MEMORY[0x1E6981EA0]);
          if (v5 <= 0x3F)
          {
            sub_1C5B2CB44(319);
            if (v6 <= 0x3F)
            {
              sub_1C592EF38(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
              if (v7 <= 0x3F)
              {
                sub_1C592EF38(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
                if (v8 <= 0x3F)
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

void sub_1C5B2CB44(uint64_t a1)
{
  if (!qword_1EDA46780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194468, &unk_1C5BDBCD0);
    v1 = sub_1C5BC8304();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA46780);
    }
  }
}

unint64_t sub_1C5B2CC28()
{
  result = qword_1EC198360;
  if (!qword_1EC198360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198348, &qword_1C5BEA6F0);
    sub_1C5B2D644(&qword_1EC194AA8, type metadata accessor for NowPlayingContrastSensitiveBackdrop, &unk_1C5BE63C4);
    sub_1C5924F54(&qword_1EC191B60, &qword_1EC191B40, &unk_1C5BE6D30, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198360);
  }

  return result;
}

uint64_t sub_1C5B2CD10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198350, &qword_1C5BEA6F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5B2CD8C()
{
  result = qword_1EC198370;
  if (!qword_1EC198370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198350, &qword_1C5BEA6F8);
    sub_1C5B2CF08(&qword_1EC198378, &qword_1EC198380, &qword_1C5BEA718, sub_1C5B2CC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198370);
  }

  return result;
}

unint64_t sub_1C5B2CE50()
{
  result = qword_1EC198390;
  if (!qword_1EC198390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198388, &qword_1C5BEA720);
    sub_1C5B2CF08(&qword_1EC198398, &qword_1EC1983A0, &qword_1C5BEA728, sub_1C5B2CFBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198390);
  }

  return result;
}

uint64_t sub_1C5B2CF08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1C5B2D644(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5B2CFEC()
{
  result = qword_1EC1983B8;
  if (!qword_1EC1983B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1983C0, &qword_1C5BEA738);
    sub_1C5924F54(&qword_1EC191B60, &qword_1EC191B40, &unk_1C5BE6D30, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1983B8);
  }

  return result;
}

void sub_1C5B2D0A4(uint64_t a1)
{
  sub_1C5933828(319, &qword_1EDA467C8, &type metadata for DeviceMetrics);
  if (v1 <= 0x3F)
  {
    sub_1C592EF38(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_1C5A1A4F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5B2D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1C5B2D204(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
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

uint64_t sub_1C5B2D260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C5B2D3A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1C5B2D41C()
{
  result = qword_1EC198468;
  if (!qword_1EC198468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198470, &qword_1C5BEA9D0);
    sub_1C5B2D500(&qword_1EC198478, &qword_1EC198480, &qword_1C5BEA9D8, sub_1C5B2D584);
    sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198468);
  }

  return result;
}

uint64_t sub_1C5B2D500(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1C5B2D584()
{
  result = qword_1EC198488;
  if (!qword_1EC198488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198490, &unk_1C5BEA9E0);
    sub_1C5AD49A0();
    sub_1C5A25B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198488);
  }

  return result;
}

double sub_1C5B2D628(_OWORD *a1)
{
  result = 0.0;
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

uint64_t sub_1C5B2D644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5B2D6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B2D6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1C5B2D758(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1C5B2D7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C5B2D890(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1C5B2D8BC()
{
  type metadata accessor for MotionEnabledState(0);
  v0 = swift_allocObject();
  result = sub_1C5B2DC80();
  off_1EDA4B358 = v0;
  return result;
}

double static MotionEnabledState.shared.getter()
{
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_1C5B2D958()
{
  swift_getKeyPath(a0_12);
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
  sub_1C5BC7B74();

  swift_beginAccess();

  return result;
}

double sub_1C5B2DA10@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a0_12);
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
  sub_1C5BC7B74();

  swift_beginAccess();
  *a2 = *(v3 + 24);

  return result;
}

double sub_1C5B2DAD0(uint64_t a1)
{
  swift_beginAccess();

  sub_1C5A49D7C(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a0_12);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
    sub_1C5BC7B64();
  }

  return result;
}

void sub_1C5B2DC18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_1C5B2DC80()
{
  v1 = v0;
  v91 = sub_1C5BCB5F4();
  v96 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v81 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440, &unk_1C5BDFC40);
  v97 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v82 = &v71 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198548, &qword_1C5BEAE50);
  v80 = *(v84 - 1);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v71 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198550, &unk_1C5BEAE58);
  v86 = *(v87 - 1);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v71 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8, &qword_1C5BE1270);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v71 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198558, &unk_1C5BEF350);
  v77 = *(v78 - 1);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v95 = &v71 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198560, &qword_1C5BEAE68);
  v72 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198568, &qword_1C5BEAE70);
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v71 - v13;
  if (qword_1EDA4EE00 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDA5DE70;
  *(v0 + 16) = qword_1EDA5DE70;
  *(v0 + 24) = MEMORY[0x1E69E7CD0];
  v100 = v0 + 24;
  *(v0 + 32) = 0;
  v16 = OBJC_IVAR____TtC11MediaCoreUI18MotionEnabledState___observationRegistrar;
  v17 = v15;
  v83 = v16;
  sub_1C5BC7BA4();
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C5BC7D64();
  __swift_project_value_buffer(v18, qword_1EDA5DB60);
  swift_retain_n();
  v19 = sub_1C5BC7D44();
  v20 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v99 = v12;
    v23 = v22;
    v105 = v22;
    *v21 = 67109378;
    swift_getKeyPath(byte_1C5BEAC90);
    v101 = v1;
    sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
    sub_1C5BC7B74();

    v24 = *(v1 + 33);

    *(v21 + 4) = v24;

    *(v21 + 8) = 2082;
    v25 = sub_1C5B2FB28();
    v27 = sub_1C592ADA8(v25, v26, &v105);

    *(v21 + 10) = v27;
    _os_log_impl(&dword_1C5922000, v19, v20, "isMotionEnabled was initialized to %{BOOL}d by default. attributesDescription=(%{public}s)", v21, 0x12u);
    v28 = __swift_destroy_boxed_opaque_existential_0(v23);
    v12 = v99;
    MEMORY[0x1C69510F0](v23, -1, -1, v28);
    MEMORY[0x1C69510F0](v21, -1, -1);
  }

  else
  {
  }

  sub_1C5B2F6D0();
  v29 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath(byte_1C5BEAE78);
  sub_1C5BC7924();

  v98 = sub_1C5929CA0();
  v30 = sub_1C5BCB5A4();
  v105 = v30;
  v99 = sub_1C5BCB594();
  v31 = *(v99 - 8);
  v93 = *(v31 + 56);
  v32 = v31 + 56;
  v33 = v95;
  v93(v95, 1, 1, v99);
  v94 = v32;
  sub_1C5924F54(&qword_1EDA45D78, &qword_1EC198560, &qword_1C5BEAE68, MEMORY[0x1E6969F80]);
  v89 = sub_1C5B30464(&qword_1EDA4E630, sub_1C5929CA0, MEMORY[0x1E69E8028]);
  v34 = v90;
  sub_1C5BC80D4();
  sub_1C5924EF4(v33, &unk_1EC199F20, &qword_1C5BD88C0);

  (*(v72 + 8))(v11, v34);
  swift_allocObject();
  swift_weakInit();
  v90 = MEMORY[0x1E695BE98];
  sub_1C5924F54(&qword_1EDA468C0, &qword_1EC198568, &qword_1C5BEAE70, MEMORY[0x1E695BE98]);

  sub_1C5BC8114();

  (*(v88 + 8))(v14, v12);
  swift_getKeyPath(a0_12);
  v105 = v1;
  v35 = sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState, &protocol conformance descriptor for MotionEnabledState);
  sub_1C5BC7B74();

  v105 = v1;
  swift_getKeyPath(a0_12);
  v88 = v35;
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B84();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  v36 = v73;
  sub_1C5BC8004();
  swift_endAccess();
  v37 = sub_1C5BCB5A4();
  v105 = v37;
  v38 = v93;
  v93(v33, 1, 1, v99);
  v72 = MEMORY[0x1E695C068];
  sub_1C5924F54(&qword_1EDA4E6C0, &qword_1EC1958C8, &qword_1C5BE1270, MEMORY[0x1E695C068]);
  v39 = v76;
  v40 = v75;
  sub_1C5BC80D4();
  sub_1C5924EF4(v33, &unk_1EC199F20, &qword_1C5BD88C0);

  (*(v74 + 8))(v36, v40);
  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&qword_1EDA4E6C8, &qword_1EC198558, &unk_1C5BEF350, v90);
  v41 = v78;
  sub_1C5BC8114();

  (*(v77 + 8))(v39, v41);
  swift_getKeyPath(a0_12);
  v105 = v1;
  sub_1C5BC7B74();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B84();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1998E0, &qword_1C5BEAEA8);
  v42 = v79;
  sub_1C5BC8004();
  swift_endAccess();
  v43 = sub_1C5BCB5A4();
  v105 = v43;
  v44 = v95;
  v38(v95, 1, 1, v99);
  sub_1C5924F54(&qword_1EDA46858, &qword_1EC198548, &qword_1C5BEAE50, v72);
  v45 = v85;
  v46 = v84;
  sub_1C5BC80D4();
  sub_1C5924EF4(v44, &unk_1EC199F20, &qword_1C5BD88C0);

  (v80)[1](v42, v46);
  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&qword_1EDA468D8, &qword_1EC198550, &unk_1C5BEAE58, v90);
  v47 = v87;
  sub_1C5BC8114();

  (*(v86 + 8))(v45, v47);
  swift_getKeyPath(a0_12);
  v105 = v1;
  sub_1C5BC7B74();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B84();

  v102 = *MEMORY[0x1E696A7D8];
  v48 = v102;
  v79 = sub_1C5BCB624();
  v49 = *MEMORY[0x1E69DD918];
  v103 = v79;
  v104 = v49;
  v50 = objc_opt_self();
  v87 = v50;
  v80 = v49;
  v78 = v48;
  v51 = [v50 defaultCenter];
  v52 = v81;
  sub_1C5BCB604();

  v53 = sub_1C5BCB5A4();
  v105 = v53;
  v54 = v95;
  v93(v95, 1, 1, v99);
  v86 = sub_1C5B30464(&unk_1EDA4E0E0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v55 = v82;
  v56 = v91;
  sub_1C5BC80D4();
  sub_1C5924EF4(v54, &unk_1EC199F20, &qword_1C5BD88C0);

  v57 = *(v96 + 8);
  v96 += 8;
  v85 = v57;
  (v57)(v52, v56);
  swift_allocObject();
  swift_weakInit();
  v90 = sub_1C5924F54(&qword_1EDA4E1B8, &qword_1EC19A440, &unk_1C5BDFC40, v90);
  v58 = v92;
  sub_1C5BC8114();

  v59 = *(v97 + 8);
  v97 += 8;
  v84 = v59;
  (v59)(v55, v58);
  swift_getKeyPath(a0_12);
  v105 = v1;
  sub_1C5BC7B74();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B84();

  v79 = v79;
  v60 = [v87 defaultCenter];
  sub_1C5BCB604();

  v61 = sub_1C5BCB5A4();
  v105 = v61;
  v62 = v95;
  v93(v95, 1, 1, v99);
  v63 = v91;
  sub_1C5BC80D4();
  sub_1C5924EF4(v62, &unk_1EC199F20, &qword_1C5BD88C0);

  (v85)(v52, v63);
  swift_allocObject();
  swift_weakInit();
  v64 = v92;
  sub_1C5BC8114();

  (v84)(v55, v64);
  swift_getKeyPath(a0_12);
  v105 = v1;
  sub_1C5BC7B74();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B84();

  v65 = v80;
  v66 = [v87 defaultCenter];
  sub_1C5BCB604();

  v67 = sub_1C5BCB5A4();
  v105 = v67;
  v93(v62, 1, 1, v99);
  v68 = v91;
  sub_1C5BC80D4();
  sub_1C5924EF4(v62, &unk_1EC199F20, &qword_1C5BD88C0);

  (v85)(v52, v68);
  swift_allocObject();
  swift_weakInit();
  v69 = v92;
  sub_1C5BC8114();

  (v84)(v55, v69);
  swift_getKeyPath(a0_12);
  v105 = v1;
  sub_1C5BC7B74();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v105 = v1;
  swift_getKeyPath(a0_12);
  sub_1C5BC7B84();

  type metadata accessor for Name(0);
  swift_arrayDestroy();
  return v1;
}