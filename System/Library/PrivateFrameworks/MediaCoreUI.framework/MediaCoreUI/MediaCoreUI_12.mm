unint64_t sub_1C5A68170()
{
  result = qword_1EC1954F0;
  if (!qword_1EC1954F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1954F8, &qword_1C5BDFAC0);
    sub_1C5A11814(&qword_1EC193A00, &qword_1EC1939E8, 0x1E69880B0, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1954F0);
  }

  return result;
}

uint64_t sub_1C5A6822C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C592A748;

  return sub_1C5A6548C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C5A68300(uint64_t a1)
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
  v11[1] = sub_1C592A748;

  return sub_1C5A65628(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C5A683EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5A644C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1C5A684AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592ABD4;

  return sub_1C5A65168();
}

uint64_t sub_1C5A68560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C592A748;

  return sub_1C5A651F8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C5A68634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C5A64B08(a1, v4, v5, v6);
}

uint64_t sub_1C5A686E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C5A6476C(a1, v4, v5, v7, v6);
}

uint64_t sub_1C5A687A8(uint64_t a1)
{
  v4 = *(sub_1C5BC7A24() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C592A748;

  return sub_1C5A64294(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1C5A688A0()
{
  result = qword_1EC195530;
  if (!qword_1EC195530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193588, &qword_1C5BD80B8);
    sub_1C5A11814(&qword_1EC195538, &qword_1EC195470, 0x1E6988100, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195530);
  }

  return result;
}

unint64_t sub_1C5A68964()
{
  result = qword_1EC195558;
  if (!qword_1EC195558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195558);
  }

  return result;
}

uint64_t sub_1C5A689C0@<X0>(uint64_t a4@<X8>)
{
  _s17TransportControlsCMa();
  sub_1C5950DFC(&qword_1EDA4A620, v5, _s17TransportControlsCMa, &unk_1C5BDFD58);
  *a4 = sub_1C5BC88C4();
  *(a4 + 8) = v6;
  _s27TransportInteractionMonitorCMa(0);
  sub_1C5950DFC(&qword_1EDA4A348, 255, _s27TransportInteractionMonitorCMa, &unk_1C5BE4D6C);
  *(a4 + 16) = sub_1C5BC8324();
  *(a4 + 24) = v7 & 1;
  *(a4 + 32) = sub_1C5BC8C84();
  *(a4 + 40) = v8;
  result = swift_getKeyPath(a0_5);
  *(a4 + 48) = result;
  *(a4 + 121) = 0;
  return result;
}

uint64_t sub_1C5A68ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v4 = sub_1C5BC89B4();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v104 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BC89D4();
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v101 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NowPlayingTransportButtonStyle(0);
  MEMORY[0x1EEE9AC00](v8);
  v87 = (v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C0, &unk_1C5BE01B0);
  v10 = *(a1 + 16);
  v96 = *(a1 + 24);
  v97 = v10;
  _s21CenterTransportButtonVMa(255, v10, v96, v11);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  v12 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v83 = v12;
  v13 = sub_1C5BCA714();
  v98 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v95 = v75 - v14;
  v15 = swift_getWitnessTable();
  v16 = sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle, &unk_1C5BE0690);
  *&v115 = v13;
  *(&v115 + 1) = v8;
  *&v116 = v15;
  *(&v116 + 1) = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v89 = v75 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8, &qword_1C5BE1570);
  v94 = OpaqueTypeMetadata2;
  v19 = sub_1C5BC8AB4();
  v91 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v86 = v75 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955D0, &unk_1C5BE01C0);
  v21 = sub_1C5BC8AB4();
  v90 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v84 = v75 - v22;
  v99 = v13;
  v100 = v8;
  *&v115 = v13;
  *(&v115 + 1) = v8;
  v88 = v15;
  *&v116 = v15;
  *(&v116 + 1) = v16;
  v81 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x1E6980A18];
  v25 = sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8, &qword_1C5BE1570, MEMORY[0x1E6980A18]);
  v75[0] = OpaqueTypeConformance2;
  v113 = OpaqueTypeConformance2;
  v114 = v25;
  v93 = v19;
  v26 = swift_getWitnessTable();
  v27 = sub_1C5924F54(&qword_1EDA460E8, &qword_1EC1955D0, &unk_1C5BE01C0, v24);
  v75[1] = v26;
  v111 = v26;
  v112 = v27;
  v28 = swift_getWitnessTable();
  v85 = v21;
  *&v115 = v21;
  *(&v115 + 1) = v28;
  v78 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v79 = *(v29 - 8);
  v80 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v76 = v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v77 = v75 - v32;
  v33 = sub_1C5BC8F34();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v2[3];
  v38 = v2[5];
  v119 = v2[4];
  v120 = v38;
  v39 = v2[5];
  v121[0] = v2[6];
  *(v121 + 10) = *(v2 + 106);
  v40 = v2[1];
  v115 = *v2;
  v116 = v40;
  v41 = v2[3];
  v117 = v2[2];
  v118 = v41;
  *&v123[10] = *(v2 + 106);
  v42 = v2[6];
  v122[2] = v39;
  *v123 = v42;
  v122[0] = v37;
  v122[1] = v119;
  if (v123[25])
  {
    *(&v110[1] + 8) = *(v2 + 72);
    *(&v110[2] + 8) = *(v2 + 88);
    *(&v110[3] + 8) = *(v2 + 104);
    BYTE8(v110[4]) = *(v2 + 120);
    *(v110 + 8) = *(v2 + 56);
    *&v110[0] = v37;
  }

  else
  {
    sub_1C59400B0(v122, v110, &qword_1EC191B58, &qword_1C5BE53F0);
    sub_1C5BCB4E4();
    v43 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v122, &qword_1EC191B58, &qword_1C5BE53F0);
    (*(v34 + 8))(v36, v33);
  }

  v108[2] = v110[2];
  v109[0] = v110[3];
  *(v109 + 9) = *(&v110[3] + 9);
  v108[0] = v110[0];
  v108[1] = v110[1];
  v44 = sub_1C5A6C528(v108);
  v46 = v45;
  v47 = sub_1C5BC8FC4();
  MEMORY[0x1EEE9AC00](v47);
  v48 = v96;
  v75[-6] = v97;
  v75[-5] = v48;
  v75[-4] = &v115;
  *&v75[-3] = v44;
  v75[-2] = v46;
  v49 = v95;
  sub_1C5BCA704();
  KeyPath = swift_getKeyPath(byte_1C5BE0100);
  v51 = v87;
  *v87 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v52 = v100;
  v53 = v51 + *(v100 + 20);
  *v53 = swift_getKeyPath(byte_1C5BE0138);
  *(v53 + 8) = 0;
  v54 = v51 + *(v52 + 24);
  *v54 = swift_getKeyPath(byte_1C5BE0168);
  *(v54 + 8) = 0;
  *(v51 + *(v52 + 28)) = 0x3FF0000000000000;
  v55 = v89;
  v56 = v99;
  sub_1C5BC9DB4();
  sub_1C595391C(v51, type metadata accessor for NowPlayingTransportButtonStyle);
  (*(v98 + 8))(v49, v56);
  swift_getKeyPath("8\n\\&");
  v58 = v101;
  v57 = v102;
  v59 = v103;
  (*(v102 + 104))(v101, *MEMORY[0x1E697E7D0], v103);
  v60 = v86;
  v61 = v94;
  sub_1C5BC9DF4();

  (*(v57 + 8))(v58, v59);
  (*(v92 + 8))(v55, v61);
  swift_getKeyPath(byte_1C5BE0168);
  LOBYTE(v108[0]) = 1;
  v62 = v84;
  v63 = v93;
  sub_1C5BC9DF4();

  (*(v91 + 8))(v60, v63);
  v65 = v104;
  v64 = v105;
  v66 = v106;
  (*(v105 + 104))(v104, *MEMORY[0x1E697E6E8], v106);
  v67 = v76;
  v68 = v85;
  v69 = v78;
  sub_1C5BC9F44();
  (*(v64 + 8))(v65, v66);
  (*(v90 + 8))(v62, v68);
  *&v108[0] = v68;
  *(&v108[0] + 1) = v69;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v77;
  v72 = v80;
  sub_1C593EDC0(v67, v80, v70);
  v73 = *(v79 + 8);
  v73(v67, v72);
  sub_1C593EDC0(v71, v72, v70);
  return (v73)(v71, v72);
}

uint64_t sub_1C5A696A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v142 = a4;
  v133[1] = _s21CenterTransportButtonVMa(255, a2, a3, x3_0);
  v135 = sub_1C5BC8AB4();
  v136 = sub_1C5BC8AB4();
  v10 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v137 = v10;
  v161 = sub_1C5BC8AB4();
  v158 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v159 = v133 - v13;
  v153 = sub_1C5BC92E4();
  v148 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v147 = v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955D8, &qword_1C5BE0200);
  MEMORY[0x1EEE9AC00](v156);
  v146 = v133 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955E0, &qword_1C5BE0208);
  v151 = *(v16 - 8);
  v152 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v150 = v133 - v17;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955E8, &qword_1C5BE0210);
  v18 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v149 = v133 - v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955C0, &unk_1C5BE01B0);
  MEMORY[0x1EEE9AC00](v138);
  v140 = v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v141 = v133 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v139 = v133 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v133 - v26;
  v28 = *(a1 + 8);
  v30 = _s21TransportControlsViewVMa(0, a2, a3, v29);
  swift_beginAccess();
  v31 = *(v28 + 32);
  v155 = v27;
  v144 = a2;
  v145 = a3;
  v143 = v30;
  if (v31 == 255)
  {
    v66 = 1;
  }

  else
  {
    v154 = v18;
    v32 = *(v28 + 16);
    v33 = *(v28 + 24);
    *(&v193 + 1) = &type metadata for NowPlayingViewModel.LeadingTransportButtonConfiguration;
    LODWORD(v134) = v31;
    *&v194 = sub_1C5A6CAD0();
    *&v192 = v32;
    *(&v192 + 1) = v33;
    v34 = v33;
    v35 = v31 & 1;
    LOBYTE(v193) = v31 & 1;
    swift_beginAccess();
    v36 = *(v28 + 57);
    v37 = swift_allocObject();
    *(v37 + 16) = a2;
    *(v37 + 24) = a3;
    v38 = *(a1 + 80);
    *(v37 + 96) = *(a1 + 64);
    *(v37 + 112) = v38;
    *(v37 + 128) = *(a1 + 96);
    *(v37 + 138) = *(a1 + 106);
    v39 = *(a1 + 16);
    *(v37 + 32) = *a1;
    *(v37 + 48) = v39;
    v40 = *(a1 + 48);
    *(v37 + 64) = *(a1 + 32);
    *(v37 + 80) = v40;
    *(v37 + 160) = v32;
    *(v37 + 168) = v34;
    *(v37 + 176) = v35;
    v41 = swift_allocObject();
    *(v41 + 16) = a2;
    *(v41 + 24) = a3;
    v42 = *(a1 + 80);
    *(v41 + 96) = *(a1 + 64);
    *(v41 + 112) = v42;
    *(v41 + 128) = *(a1 + 96);
    *(v41 + 138) = *(a1 + 106);
    v43 = *(a1 + 16);
    *(v41 + 32) = *a1;
    *(v41 + 48) = v43;
    v44 = *(a1 + 48);
    *(v41 + 64) = *(a1 + 32);
    *(v41 + 80) = v44;
    v45 = swift_allocObject();
    *(v45 + 16) = a2;
    *(v45 + 24) = a3;
    v46 = *(a1 + 80);
    *(v45 + 96) = *(a1 + 64);
    *(v45 + 112) = v46;
    *(v45 + 128) = *(a1 + 96);
    *(v45 + 138) = *(a1 + 106);
    v47 = *(a1 + 16);
    *(v45 + 32) = *a1;
    *(v45 + 48) = v47;
    v48 = *(a1 + 48);
    *(v45 + 64) = *(a1 + 32);
    *(v45 + 80) = v48;
    BYTE8(v194) = v36;
    *&v195 = sub_1C5A6CBAC;
    *(&v195 + 1) = v37;
    *&v196 = sub_1C5A6CC20;
    *(&v196 + 1) = v41;
    *&v197 = sub_1C5A6CCC0;
    *(&v197 + 1) = v45;
    *&v198 = 0x3FF0000000000000;
    WORD4(v198) = 0;
    v49 = v143;
    v50 = *(*(v143 - 8) + 16);
    v50(&v181, a1, v143);
    v51 = v34;
    v52 = v34;
    LOBYTE(v34) = v134;
    sub_1C59525FC(v32, v52, v134);
    v50(&v181, a1, v49);
    sub_1C59525FC(v32, v51, v34);
    v50(&v181, a1, v49);
    v53 = sub_1C5BC9944();
    *&v199 = swift_getKeyPath("P\v\\&");
    *(&v199 + 1) = v53;
    if (qword_1EC190710 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195610, &qword_1C5BE0228);
    sub_1C5951214();
    v54 = v146;
    sub_1C5BC9D14();
    sub_1C5924EF4(&v192, &qword_1EC195610, &qword_1C5BE0228);
    v55 = v54 + *(v156 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195620, &qword_1C5BE0238);
    sub_1C5BC8BF4();
    *v55 = 0xC014000000000000;
    *(v55 + 8) = 0;
    v56 = v147;
    sub_1C5BC8C54();
    v134 = sub_1C5A6C8D4();
    v57 = sub_1C5950DFC(&qword_1EDA462E0, 255, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    v58 = v150;
    v59 = v153;
    sub_1C5BC9E04();
    (*(v148 + 8))(v56, v59);
    sub_1C5924EF4(v54, &qword_1EC1955D8, &qword_1C5BE0200);
    v60 = [objc_opt_self() mainBundle];
    v61 = sub_1C5949F2C();
    v63 = v62;

    *&v192 = v61;
    *(&v192 + 1) = v63;
    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](0xD000000000000022, 0x80000001C5BF93D0);
    *&v192 = v156;
    *(&v192 + 1) = v59;
    *&v193 = v134;
    *(&v193 + 1) = v57;
    swift_getOpaqueTypeConformance2();
    v64 = v149;
    v65 = v152;
    sub_1C5BCA164();

    (*(v151 + 8))(v58, v65);
    v27 = v155;
    sub_1C5984620(v64, v155);
    v66 = 0;
    v18 = v154;
  }

  v68 = *(v18 + 56);
  v67 = v18 + 56;
  v134 = v68;
  v68(v27, v66, 1, v157);

  v69 = sub_1C5BC8C84();
  v71 = v70;
  _s17TransportControlsCMa();
  sub_1C5950DFC(&qword_1EDA4A620, v72, _s17TransportControlsCMa, &unk_1C5BDFD58);
  v73 = sub_1C5BC88C4();
  v203 = xmmword_1C5BDFC50;
  v202[0] = v73;
  v202[1] = v74;
  v201[0] = v69;
  v201[1] = v71;
  *&v192 = v69;
  *(&v192 + 1) = v71;
  *&v193 = v73;
  *(&v193 + 1) = v74;
  v194 = xmmword_1C5BDFC50;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC9D94();
  v76 = sub_1C5BC8C94();
  (*(*(v76 - 8) + 8))(v201, v76);
  sub_1C5924EF4(v202, &qword_1EC1955F0, &unk_1C5BE0218);
  sub_1C5924EF4(&v203, &qword_1EC192880, &unk_1C5BD5D10);
  v169 = v181;
  v170 = v182;
  v171[0] = v183[0];
  *(v171 + 10) = *(v183 + 10);
  sub_1C5BCAA54();
  v179 = WitnessTable;
  v180 = MEMORY[0x1E697F568];
  v77 = v135;
  v78 = swift_getWitnessTable();
  sub_1C5BCA234();
  v189[0] = v169;
  v189[1] = v170;
  v190[0] = v171[0];
  *(v190 + 10) = *(v171 + 10);
  (*(*(v77 - 8) + 8))(v189, v77);
  v172 = v196;
  v173 = v197;
  v174 = v198;
  v169 = v192;
  v170 = v193;
  v171[0] = v194;
  v171[1] = v195;
  sub_1C5BC9884();
  v177 = v78;
  v178 = MEMORY[0x1E697E040];
  v79 = v136;
  v80 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v191[4] = v172;
  v191[5] = v173;
  v191[6] = v174;
  v191[0] = v169;
  v191[1] = v170;
  v191[2] = v171[0];
  v191[3] = v171[1];
  (*(*(v79 - 8) + 8))(v191, v79);
  v174 = v186;
  v175 = v187;
  v176[0] = v188[0];
  *(v176 + 9) = *(v188 + 9);
  v171[0] = v183[0];
  v171[1] = v183[1];
  v172 = v184;
  v173 = v185;
  v169 = v181;
  v170 = v182;
  v167 = v80;
  v168 = MEMORY[0x1E697E5D8];
  v81 = v137;
  v82 = swift_getWitnessTable();
  v83 = v160;
  sub_1C595BB1C(0xD000000000000023, 0x80000001C5BF9370, v81);
  v198 = v174;
  v199 = v175;
  v200[0] = v176[0];
  *(v200 + 9) = *(v176 + 9);
  v194 = v171[0];
  v195 = v171[1];
  v196 = v172;
  v197 = v173;
  v192 = v169;
  v193 = v170;
  (*(*(v81 - 8) + 8))(&v192, v81);
  v84 = sub_1C5950DFC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v165 = v82;
  v166 = v84;
  v85 = v161;
  v136 = swift_getWitnessTable();
  sub_1C593EDC0(v83, v85, v136);
  v86 = v158 + 8;
  v137 = *(v158 + 8);
  v137(v83, v85);
  v87 = *(a1 + 8);
  swift_beginAccess();
  v88 = *(v87 + 56);
  if (v88 == 255)
  {
    v122 = v139;
    v123 = 1;
  }

  else
  {
    v135 = v86;
    v154 = v67;
    v90 = *(v87 + 40);
    v89 = *(v87 + 48);
    *(&v182 + 1) = &type metadata for NowPlayingViewModel.TrailingTransportButtonConfiguration;
    *&v183[0] = sub_1C5973A34();
    *&v181 = v90;
    *(&v181 + 1) = v89;
    LOBYTE(v182) = v88 & 1;
    v91 = *(a1 + 8);
    swift_beginAccess();
    LOBYTE(v91) = *(v91 + 57);
    v92 = swift_allocObject();
    v93 = v144;
    v94 = v145;
    *(v92 + 16) = v144;
    *(v92 + 24) = v94;
    v95 = *(a1 + 80);
    *(v92 + 96) = *(a1 + 64);
    *(v92 + 112) = v95;
    *(v92 + 128) = *(a1 + 96);
    *(v92 + 138) = *(a1 + 106);
    v96 = *(a1 + 16);
    *(v92 + 32) = *a1;
    *(v92 + 48) = v96;
    v97 = *(a1 + 48);
    *(v92 + 64) = *(a1 + 32);
    *(v92 + 80) = v97;
    *(v92 + 160) = v90;
    *(v92 + 168) = v89;
    *(v92 + 176) = v88 & 1;
    v98 = swift_allocObject();
    *(v98 + 16) = v93;
    *(v98 + 24) = v94;
    v99 = *(a1 + 80);
    *(v98 + 96) = *(a1 + 64);
    *(v98 + 112) = v99;
    *(v98 + 128) = *(a1 + 96);
    *(v98 + 138) = *(a1 + 106);
    v100 = *(a1 + 16);
    *(v98 + 32) = *a1;
    *(v98 + 48) = v100;
    v101 = *(a1 + 48);
    *(v98 + 64) = *(a1 + 32);
    *(v98 + 80) = v101;
    v102 = swift_allocObject();
    *(v102 + 16) = v93;
    *(v102 + 24) = v94;
    v103 = *(a1 + 80);
    *(v102 + 96) = *(a1 + 64);
    *(v102 + 112) = v103;
    *(v102 + 128) = *(a1 + 96);
    *(v102 + 138) = *(a1 + 106);
    v104 = *(a1 + 16);
    *(v102 + 32) = *a1;
    *(v102 + 48) = v104;
    v105 = *(a1 + 48);
    *(v102 + 64) = *(a1 + 32);
    *(v102 + 80) = v105;
    BYTE8(v183[0]) = v91;
    *&v183[1] = sub_1C5A6CA54;
    *(&v183[1] + 1) = v92;
    *&v184 = sub_1C5A6CA88;
    *(&v184 + 1) = v98;
    *&v185 = sub_1C5A6CAAC;
    *(&v185 + 1) = v102;
    *&v186 = 0x3FF0000000000000;
    WORD4(v186) = 0;
    v106 = v143;
    v107 = *(*(v143 - 8) + 16);
    v107(&v169, a1, v143);
    v107(&v169, a1, v106);
    sub_1C59525FC(v90, v89, v88);
    v107(&v169, a1, v106);
    sub_1C59525FC(v90, v89, v88);
    v108 = sub_1C5BC9944();
    *&v187 = swift_getKeyPath("P\v\\&");
    *(&v187 + 1) = v108;
    if (qword_1EC190710 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195610, &qword_1C5BE0228);
    sub_1C5951214();
    v109 = v146;
    sub_1C5BC9D14();
    sub_1C5924EF4(&v181, &qword_1EC195610, &qword_1C5BE0228);
    v110 = v156;
    v111 = v109 + *(v156 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195620, &qword_1C5BE0238);
    sub_1C5BC8BF4();
    *v111 = 0xC014000000000000;
    *(v111 + 8) = 0;
    v112 = v147;
    sub_1C5BC8C54();
    v145 = sub_1C5A6C8D4();
    v113 = sub_1C5950DFC(&qword_1EDA462E0, 255, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    v114 = v150;
    v115 = v153;
    sub_1C5BC9E04();
    (*(v148 + 8))(v112, v115);
    sub_1C5924EF4(v109, &qword_1EC1955D8, &qword_1C5BE0200);
    v116 = [objc_opt_self() mainBundle];
    v117 = sub_1C5949F2C();
    v119 = v118;

    *&v181 = v117;
    *(&v181 + 1) = v119;
    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](0xD000000000000023, 0x80000001C5BF93A0);
    *&v181 = v110;
    *(&v181 + 1) = v115;
    *&v182 = v145;
    *(&v182 + 1) = v113;
    swift_getOpaqueTypeConformance2();
    v120 = v149;
    v121 = v152;
    sub_1C5BCA164();

    (*(v151 + 8))(v114, v121);
    v122 = v139;
    sub_1C5984620(v120, v139);
    v123 = 0;
  }

  v134(v122, v123, 1, v157);
  v124 = v155;
  v125 = v141;
  sub_1C59845A8(v155, v141);
  *&v181 = v125;
  v126 = v159;
  v128 = v160;
  v127 = v161;
  (*(v158 + 16))(v160, v159, v161);
  *(&v181 + 1) = v128;
  v129 = v140;
  sub_1C59845A8(v122, v140);
  *&v182 = v129;
  *&v169 = v138;
  *(&v169 + 1) = v127;
  *&v170 = v138;
  v162 = sub_1C5A6C700();
  v163 = v136;
  v164 = v162;
  sub_1C594226C(&v181, 3uLL, &v169);
  sub_1C5924EF4(v122, &qword_1EC1955C0, &unk_1C5BE01B0);
  v130 = v126;
  v131 = v137;
  v137(v130, v127);
  sub_1C5924EF4(v124, &qword_1EC1955C0, &unk_1C5BE01B0);
  sub_1C5924EF4(v129, &qword_1EC1955C0, &unk_1C5BE01B0);
  v131(v128, v127);
  return sub_1C5924EF4(v125, &qword_1EC1955C0, &unk_1C5BE01B0);
}

uint64_t sub_1C5A6AA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C59498C4(*(a1 + 32), *(a1 + 40), a2, *(a3 + 8));
  v5 = *(a3 + 248);
  swift_unknownObjectRetain();
  v5(0, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C59498C4(*(a1 + 32), *(a1 + 40), a2, *(a3 + 8));
  v7 = *(a3 + 248);
  swift_unknownObjectRetain();
  v7(a4, a2, a3);

  return swift_unknownObjectRelease();
}

double sub_1C5A6AB24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(__n128), uint64_t a9)
{
  v26 = a7;
  v27 = a8;
  v28 = a5;
  v25 = sub_1C5BC8F34();
  v14 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = *(a1 + 24);
  v33 = *(a1 + 16);
  v17 = v34;

  if ((v17 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    v24 = a4;
    v20 = v19;
    sub_1C5BC7C54();

    LOBYTE(a4) = v24;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v33, &qword_1EC195628, &unk_1C5BE0240);
    v18 = (*(v14 + 8))(v16, v25);
  }

  v31 = v26;
  v32 = (v27)(v18);
  v29[0] = a2;
  v29[1] = a3;
  v30 = a4 & 1;
  sub_1C5951550(a2, a3);

  sub_1C5BC7F34();

  __swift_destroy_boxed_opaque_existential_0(v29);
  MEMORY[0x1EEE9AC00](v21);
  *&v23[-32] = v28;
  *&v23[-24] = a6;
  *&v23[-16] = a1;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  return result;
}

uint64_t sub_1C5A6AD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C59498C4(*(a1 + 32), *(a1 + 40), a2, *(a3 + 8));
  v5 = *(a3 + 256);
  swift_unknownObjectRetain();
  v5(0, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C59498C4(*(a1 + 32), *(a1 + 40), a2, *(a3 + 8));
  v7 = *(a3 + 256);
  swift_unknownObjectRetain();
  v7(a4, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6AEA0()
{
  sub_1C5954684();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5A6AEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C59498C4(*(a1 + 16), *(a1 + 24), a2, *(a3 + 8));
  swift_unknownObjectRetain();
  sub_1C5B3E468(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6AF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_1C5BC92E4();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NowPlayingTransportButtonStyle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195680, &qword_1C5BE0750);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195688, &qword_1C5BE0758);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v39 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195690, &qword_1C5BE0760);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v39 - v17;
  v18 = *v3;
  v52 = v3[1];
  v53 = v18;
  v51 = v3[2];
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  v22 = v3[1];
  *(v19 + 32) = *v3;
  *(v19 + 48) = v22;
  *(v19 + 64) = v3[2];
  v47 = v20;
  v48 = v21;
  v49 = v3;
  v23 = sub_1C5BC8C94();
  (*(*(v23 - 8) + 16))(v50, &v53, v23);
  sub_1C59400B0(&v52, v50, &qword_1EC1955F0, &unk_1C5BE0218);
  sub_1C59400B0(&v51, v50, &qword_1EC192880, &unk_1C5BD5D10);
  sub_1C5A6D0A0();
  sub_1C5BCA6E4();
  *v10 = swift_getKeyPath(byte_1C5BE0100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v24 = v10 + v8[5];
  *v24 = swift_getKeyPath(byte_1C5BE0138);
  v24[8] = 0;
  v25 = v10 + v8[6];
  *v25 = swift_getKeyPath(byte_1C5BE0168);
  v25[8] = 0;
  *(v10 + v8[7]) = 0x3FED70A3D70A3D71;
  v26 = sub_1C5924F54(&unk_1EDA45FD0, &qword_1EC195680, &qword_1C5BE0750, MEMORY[0x1E697D680]);
  v27 = sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle, &unk_1C5BE0690);
  sub_1C5BC9DB4();
  sub_1C595391C(v10, type metadata accessor for NowPlayingTransportButtonStyle);
  (*(v12 + 8))(v14, v11);

  v28 = sub_1C595397C();
  v30 = v29;
  LOBYTE(v12) = v31;

  v50[0] = v11;
  v50[1] = v8;
  v50[2] = v26;
  v50[3] = v27;
  swift_getOpaqueTypeConformance2();
  v32 = v39;
  v33 = v41;
  sub_1C5BCA024();
  sub_1C5953BD8(v28, v30, v12 & 1);

  (*(v42 + 8))(v16, v33);
  v34 = &v32[*(v40 + 36)];
  v35 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195620, &qword_1C5BE0238);
  sub_1C5BC8BF4();
  *v34 = 0xC024000000000000;
  v34[8] = 0;
  v36 = v43;
  sub_1C5BC8C54();
  sub_1C5A6D0F4();
  sub_1C5950DFC(&qword_1EDA462E0, 255, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v37 = v44;
  sub_1C5BC9E04();
  (*(v45 + 8))(v36, v37);
  return sub_1C5924EF4(v35, &qword_1EC195690, &qword_1C5BE0760);
}

uint64_t sub_1C5A6B5C0(uint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = _s21CenterTransportButtonVMa(0, a2, a3, a4);
  sub_1C59498C4(*a1, a1[1], *(v7 + 16), *(*(v7 + 24) + 8));
  swift_unknownObjectRetain();
  sub_1C5B3E468(a2, a3);

  return swift_unknownObjectRelease();
}

double sub_1C5A6B638@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  _s21CenterTransportButtonVMa(0, a2, a3, a5);
  v7 = a1[3];
  swift_beginAccess();
  v8 = *(v7 + 33);
  v9 = *&aPlay_3[8 * v8];
  v10 = qword_1C5BE0B68[v8];
  v12 = a1[4];
  v11 = a1[5];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *a4 = 0xD000000000000018;
  *(a4 + 8) = 0x80000001C5BF9350;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = sub_1C5A6D8C8;
  *(a4 + 40) = v13;
  *(a4 + 48) = 0;

  return result;
}

uint64_t sub_1C5A6B768()
{
  v0 = sub_1C5BCA5D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90, &qword_1C5BD48D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for MiniPlayerTransportSpecs(0);
  __swift_allocate_value_buffer(v7, qword_1EDA482A8);
  v8 = __swift_project_value_buffer(v7, qword_1EDA482A8);
  sub_1C5BC9964();
  v9 = sub_1C5BC9954();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  v14 = sub_1C5BC99A4();
  sub_1C5924EF4(v6, &qword_1EC190F90, &qword_1C5BD48D0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69816C0], v0);
  sub_1C5BC9964();
  v10(v6, 1, 1, v9);
  v11 = sub_1C5BC99A4();
  sub_1C5924EF4(v6, &qword_1EC190F90, &qword_1C5BD48D0);
  *v8 = v14;
  result = (*(v1 + 32))(&v8[*(v7 + 20)], v3, v0);
  *&v8[*(v7 + 24)] = v11;
  return result;
}

uint64_t sub_1C5A6B9CC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 32);
  *(a1 + 16) = v5;
  return sub_1C59525FC(v3, v4, v5);
}

uint64_t sub_1C5A6BA64@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v5 = a3;
  if (*a2 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
    v5 = a3;
  }

  v7 = __swift_project_value_buffer(a1, v5);

  return sub_1C59534C8(v7, a5);
}

uint64_t sub_1C5A6BAD4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 56);
  *(a1 + 16) = v5;
  return sub_1C59525FC(v3, v4, v5);
}

uint64_t sub_1C5A6BB8C()
{
  sub_1C596EAC0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1C596EAC0(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t NowPlayingViewModel.TransportButtonAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](a1);
  return sub_1C5BCBF94();
}

unint64_t sub_1C5A6BC58()
{
  result = qword_1EC195568;
  if (!qword_1EC195568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195568);
  }

  return result;
}

void (*sub_1C5A6BCAC(uint64_t *a1))(void *a1)
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

void *sub_1C5A6BD34@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  result = sub_1C5BCA694();
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = sub_1C5AFB544;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1C5A6BDC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956F8, &unk_1C5BE0A48);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-v3];
  v5 = v0[3];
  v19 = v0[2];
  v20 = v5;
  v21 = v0[4];
  v6 = v0[1];
  v17 = *v0;
  v18 = v6;
  v7 = swift_allocObject();
  v8 = v0[3];
  v7[3] = v0[2];
  v7[4] = v8;
  v7[5] = v0[4];
  v9 = v0[1];
  v7[1] = *v0;
  v7[2] = v9;
  v15 = &v17;
  sub_1C5A6D778(&v17, v16);
  sub_1C5A6D7B0();
  sub_1C5BCA6E4();
  v10 = swift_allocObject();
  v11 = v20;
  v10[3] = v19;
  v10[4] = v11;
  v10[5] = v21;
  v12 = v18;
  v10[1] = v17;
  v10[2] = v12;
  sub_1C5A6D778(&v17, v16);
  sub_1C5924F54(&qword_1EC195708, &qword_1EC1956F8, &unk_1C5BE0A48, MEMORY[0x1E697D680]);
  sub_1C5BCA074();

  return (*(v2 + 8))(v4, v1);
}

double sub_1C5A6C004()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NowPlayingTransportButtonStyle(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v8 = sub_1C5942458(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v6) = v10[15];
  }

  result = 32.0;
  if (v6)
  {
    return 44.0;
  }

  return result;
}

uint64_t sub_1C5A6C170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A6CF18();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5A6C1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1C5A6C23C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
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

uint64_t sub_1C5A6C284(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5A6C2FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1C5A6C344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A6C3E0()
{
  result = qword_1EDA46588;
  if (!qword_1EDA46588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195578, &qword_1C5BE0058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195570, &qword_1C5BE0050);
    type metadata accessor for NowPlayingTransportButtonStyle(255);
    sub_1C5951914();
    sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle, &unk_1C5BE0690);
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EDA461F0, &qword_1EC1955B8, &unk_1C5BE01A0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46588);
  }

  return result;
}

double sub_1C5A6C528(uint64_t a1)
{
  if (*(a1 + 18))
  {
    return 68.0;
  }

  v2 = sub_1C5A0B298();
  result = 48.0;
  if (v2)
  {
    return 30.0;
  }

  return result;
}

unint64_t sub_1C5A6C5DC()
{
  result = qword_1EDA46580;
  if (!qword_1EDA46580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195588, &unk_1C5BE0068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195578, &qword_1C5BE0058);
    sub_1C5A6C3E0();
    swift_getOpaqueTypeConformance2();
    sub_1C5950DFC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46580);
  }

  return result;
}

unint64_t sub_1C5A6C700()
{
  result = qword_1EC1955F8;
  if (!qword_1EC1955F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C0, &unk_1C5BE01B0);
    sub_1C5A6C784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1955F8);
  }

  return result;
}

unint64_t sub_1C5A6C784()
{
  result = qword_1EC195600;
  if (!qword_1EC195600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955E8, &qword_1C5BE0210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955D8, &qword_1C5BE0200);
    sub_1C5BC92E4();
    sub_1C5A6C8D4();
    sub_1C5950DFC(&qword_1EDA462E0, 255, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    sub_1C5950DFC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195600);
  }

  return result;
}

unint64_t sub_1C5A6C8D4()
{
  result = qword_1EC195608;
  if (!qword_1EC195608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955D8, &qword_1C5BE0200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195610, &qword_1C5BE0228);
    sub_1C5951214();
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EDA461C0, &qword_1EC195620, &qword_1C5BE0238, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195608);
  }

  return result;
}

unint64_t sub_1C5A6C9C8()
{
  result = qword_1EDA46680;
  if (!qword_1EDA46680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195618, &qword_1C5BE0230);
    sub_1C59512CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46680);
  }

  return result;
}

unint64_t sub_1C5A6CAD0()
{
  result = qword_1EDA4A228;
  if (!qword_1EDA4A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A228);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{

  swift_unknownObjectRelease();
  sub_1C596AC80(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 153));
  sub_1C5950CE4(*(v0 + 160), *(v0 + 168));

  return swift_deallocObject();
}

uint64_t objectdestroy_58Tm()
{

  swift_unknownObjectRelease();
  sub_1C596AC80(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 153));

  return swift_deallocObject();
}

uint64_t sub_1C5A6CD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A6CDC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C5A6CE08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A6CE54()
{
  result = qword_1EDA46488;
  if (!qword_1EDA46488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195638, qword_1C5BE04E8);
    sub_1C5A6C5DC();
    sub_1C5950DFC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46488);
  }

  return result;
}

unint64_t sub_1C5A6CF18()
{
  result = qword_1EC195640;
  if (!qword_1EC195640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195640);
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  sub_1C5942458(*(v0 + 96), *(v0 + 104));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1C5A6D0A0()
{
  result = qword_1EDA4DAC0;
  if (!qword_1EDA4DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DAC0);
  }

  return result;
}

unint64_t sub_1C5A6D0F4()
{
  result = qword_1EC195698;
  if (!qword_1EC195698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195690, &qword_1C5BE0760);
    sub_1C5A6D1AC();
    sub_1C5924F54(&qword_1EDA461C0, &qword_1EC195620, &qword_1C5BE0238, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195698);
  }

  return result;
}

unint64_t sub_1C5A6D1AC()
{
  result = qword_1EC1956A0;
  if (!qword_1EC1956A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956A8, &qword_1C5BE0768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195680, &qword_1C5BE0750);
    type metadata accessor for NowPlayingTransportButtonStyle(255);
    sub_1C5924F54(&unk_1EDA45FD0, &qword_1EC195680, &qword_1C5BE0750, MEMORY[0x1E697D680]);
    sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle, &unk_1C5BE0690);
    swift_getOpaqueTypeConformance2();
    sub_1C5950DFC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1956A0);
  }

  return result;
}

unint64_t sub_1C5A6D330()
{
  result = qword_1EDA46670;
  if (!qword_1EDA46670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956B8, &qword_1C5BE07A8);
    sub_1C59514F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46670);
  }

  return result;
}

uint64_t sub_1C5A6D3BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C5A6D404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A6D458()
{
  result = qword_1EDA46578;
  if (!qword_1EDA46578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956C0, &qword_1C5BE0918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195648, &qword_1C5BE0718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195610, &qword_1C5BE0228);
    type metadata accessor for NowPlayingTransportButtonStyle(255);
    sub_1C5951214();
    sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle, &unk_1C5BE0690);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EDA461F0, &qword_1EC1955B8, &unk_1C5BE01A0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46578);
  }

  return result;
}

unint64_t sub_1C5A6D5E4()
{
  result = qword_1EDA46460;
  if (!qword_1EDA46460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195660, &qword_1C5BE0730);
    sub_1C5953D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46460);
  }

  return result;
}

unint64_t sub_1C5A6D670()
{
  result = qword_1EDA46018;
  if (!qword_1EDA46018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956D8, &qword_1C5BE0938);
    sub_1C5951418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46018);
  }

  return result;
}

uint64_t sub_1C5A6D710()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1C5A6D740()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1C5A6D7B0()
{
  result = qword_1EC195700;
  if (!qword_1EC195700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195700);
  }

  return result;
}

uint64_t objectdestroy_161Tm()
{

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5A6D8D0@<X0>(void (*a1)(char *, uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v168 = a4;
  v170 = a2;
  v162 = a5;
  v163 = a1;
  v166 = sub_1C5BC8354();
  v169 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  type metadata accessor for PPTRunnerModifier(255, a3, a4, v10);
  swift_getWitnessTable();
  v11 = sub_1C5BC9394();
  WitnessTable = swift_getWitnessTable();
  v171 = v11;
  v172 = WitnessTable;
  v13 = MEMORY[0x1E697D560];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v140 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v124 - v15;
  v171 = v11;
  v172 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v171 = OpaqueTypeMetadata2;
  v172 = OpaqueTypeConformance2;
  v18 = OpaqueTypeMetadata2;
  v125 = OpaqueTypeMetadata2;
  v19 = OpaqueTypeConformance2;
  v126 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v144 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v124 - v21;
  v171 = v18;
  v172 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v171 = v20;
  v172 = v22;
  v128 = v20;
  v23 = v22;
  v129 = v22;
  v24 = v13;
  v25 = swift_getOpaqueTypeMetadata2();
  v149 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v127 = &v124 - v26;
  v171 = v20;
  v172 = v23;
  v27 = swift_getOpaqueTypeConformance2();
  v171 = v25;
  v172 = v27;
  v28 = v25;
  v130 = v25;
  v29 = v27;
  v131 = v27;
  v30 = swift_getOpaqueTypeMetadata2();
  v151 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v124 - v31;
  v171 = v28;
  v172 = v29;
  v32 = v24;
  v33 = swift_getOpaqueTypeConformance2();
  v171 = v30;
  v172 = v33;
  v34 = v30;
  v133 = v30;
  v35 = v33;
  v134 = v33;
  v36 = swift_getOpaqueTypeMetadata2();
  v152 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v132 = &v124 - v37;
  v171 = v34;
  v172 = v35;
  v38 = v32;
  v39 = swift_getOpaqueTypeConformance2();
  v171 = v36;
  v172 = v39;
  v40 = v36;
  v137 = v36;
  v41 = v39;
  v138 = v39;
  v42 = swift_getOpaqueTypeMetadata2();
  v154 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v136 = &v124 - v43;
  v171 = v40;
  v172 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v171 = v42;
  v172 = v44;
  v45 = v42;
  v141 = v42;
  v46 = v44;
  v142 = v44;
  v47 = swift_getOpaqueTypeMetadata2();
  v157 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v139 = &v124 - v48;
  v171 = v45;
  v172 = v46;
  v49 = v38;
  v50 = swift_getOpaqueTypeConformance2();
  v171 = v47;
  v172 = v50;
  v51 = v47;
  v145 = v47;
  v52 = v50;
  v146 = v50;
  v53 = swift_getOpaqueTypeMetadata2();
  v160 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v143 = &v124 - v54;
  v171 = v51;
  v172 = v52;
  v55 = swift_getOpaqueTypeConformance2();
  v171 = v53;
  v172 = v55;
  v56 = v53;
  v147 = v53;
  v57 = v55;
  v148 = v55;
  v58 = swift_getOpaqueTypeMetadata2();
  v156 = v58;
  v161 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v165 = &v124 - v59;
  v171 = v56;
  v172 = v57;
  v135 = v49;
  v155 = swift_getOpaqueTypeConformance2();
  v171 = v58;
  v172 = v155;
  v60 = swift_getOpaqueTypeMetadata2();
  v61 = *(v60 - 8);
  v158 = v60;
  v159 = v61;
  MEMORY[0x1EEE9AC00](v60);
  v150 = &v124 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v153 = &v124 - v64;
  sub_1C5BC8364();
  v65 = swift_allocObject();
  v66 = v9;
  v167 = v9;
  v65[2] = v9;
  v67 = v168;
  v65[3] = v168;
  v68 = v170;
  v65[4] = v170;
  v69 = v68;
  swift_unknownObjectRetain();
  swift_checkMetadataState();
  sub_1C5BCA274();

  v70 = v169 + 8;
  v71 = *(v169 + 8);
  v72 = v166;
  (v71)(v8, v166);
  v163 = v71;
  sub_1C5BC8364();
  v73 = swift_allocObject();
  v73[2] = v66;
  v73[3] = v67;
  v73[4] = v69;
  swift_unknownObjectRetain();
  v74 = v124;
  v75 = v125;
  sub_1C5BCA274();

  v76 = v72;
  v169 = v70;
  (v71)(v8, v72);
  (*(v140 + 8))(v16, v75);
  sub_1C5BC8364();
  v77 = swift_allocObject();
  v78 = v167;
  v77[2] = v167;
  v77[3] = v67;
  v79 = v170;
  v77[4] = v170;
  v80 = v79;
  swift_unknownObjectRetain();
  v81 = v127;
  v82 = v128;
  v83 = v74;
  sub_1C5BCA274();

  v84 = v8;
  v85 = v8;
  v86 = v76;
  v87 = v163;
  (v163)(v85, v76);
  (*(v144 + 8))(v83, v82);
  sub_1C5BC8364();
  v88 = swift_allocObject();
  v89 = v168;
  v88[2] = v78;
  v88[3] = v89;
  v88[4] = v80;
  swift_unknownObjectRetain();
  v90 = v130;
  sub_1C5BCA274();

  (v87)(v84, v86);
  (*(v149 + 8))(v81, v90);
  sub_1C5BC8364();
  v91 = swift_allocObject();
  v91[2] = v78;
  v91[3] = v89;
  v91[4] = v170;
  swift_unknownObjectRetain();
  v92 = v132;
  v93 = v133;
  v94 = v164;
  sub_1C5BCA274();

  v95 = v86;
  v96 = v163;
  (v163)(v84, v86);
  (*(v151 + 8))(v94, v93);
  sub_1C5BC8364();
  v97 = swift_allocObject();
  v98 = v167;
  v97[2] = v167;
  v97[3] = v89;
  v97[4] = v170;
  swift_unknownObjectRetain();
  v99 = v136;
  v100 = v137;
  sub_1C5BCA274();

  (v96)(v84, v95);
  (*(v152 + 8))(v92, v100);
  sub_1C5BC8364();
  v101 = swift_allocObject();
  v101[2] = v98;
  v102 = v168;
  v101[3] = v168;
  v101[4] = v170;
  swift_unknownObjectRetain();
  v103 = v139;
  v104 = v141;
  sub_1C5BCA274();

  v105 = v166;
  (v96)(v84, v166);
  (*(v154 + 8))(v99, v104);
  sub_1C5BC8364();
  v106 = swift_allocObject();
  v106[2] = v167;
  v106[3] = v102;
  v106[4] = v170;
  swift_unknownObjectRetain();
  v107 = v143;
  v108 = v145;
  sub_1C5BCA274();

  (v96)(v84, v105);
  (*(v157 + 8))(v103, v108);
  sub_1C5BC8364();
  v109 = swift_allocObject();
  v110 = v167;
  v109[2] = v167;
  v109[3] = v102;
  v111 = v170;
  v109[4] = v170;
  swift_unknownObjectRetain();
  v112 = v147;
  sub_1C5BCA274();

  (v96)(v84, v105);
  (*(v160 + 8))(v107, v112);
  sub_1C5BC8364();
  v113 = swift_allocObject();
  v114 = v168;
  v113[2] = v110;
  v113[3] = v114;
  v113[4] = v111;
  swift_unknownObjectRetain();
  v115 = v150;
  v117 = v155;
  v116 = v156;
  v118 = v165;
  sub_1C5BCA274();

  (v96)(v84, v166);
  (*(v161 + 8))(v118, v116);
  v171 = v116;
  v172 = v117;
  v119 = swift_getOpaqueTypeConformance2();
  v120 = v153;
  v121 = v158;
  sub_1C593EDC0(v115, v158, v119);
  v122 = *(v159 + 8);
  v122(v115, v121);
  sub_1C593EDC0(v120, v121, v119);
  return (v122)(v120, v121);
}

void sub_1C5A6EA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*((*(a4 + 224))(a3, a4) + 112))
  {
    v8[0] = 0;
    v8[1] = 0;

    sub_1C5A37C44(v8, 0);

    sub_1C5A6EAC0(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }
}

double sub_1C5A6EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5BC8384();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  sub_1C5BC8374();
  v15 = sub_1C5BCB214();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a2, v8);
  sub_1C5BCB1E4();
  swift_unknownObjectRetain();
  v16 = sub_1C5BCB1D4();
  v17 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  *(v18 + 6) = a1;
  (*(v9 + 32))(&v18[v17], v11, v8);
  sub_1C59D2F9C(0, 0, v14, &unk_1C5BE0D48, v18);

  return result;
}

uint64_t sub_1C5A6ECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v34 = a5;
  v35 = a3;
  v36 = a2;
  v37 = a4;
  v31 = a1;
  v41 = sub_1C5BCAC14();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAC44();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C5BC8384();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = sub_1C5BCAC64();
  v33 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  sub_1C5929CA0();
  v30 = sub_1C5BCB5A4();
  sub_1C5BCAC54();
  sub_1C5BCAC84();
  v32 = *(v15 + 8);
  v32(v17, v14);
  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v11);
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v36;
  v24 = v37;
  *(v22 + 2) = v35;
  *(v22 + 3) = v24;
  *(v22 + 4) = v23;
  (*(v12 + 32))(&v22[v21], &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = v38;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = v39;
  v25 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5A755E4(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  sub_1C5A3437C();
  v26 = v40;
  v27 = v41;
  sub_1C5BCB8F4();
  v28 = v30;
  MEMORY[0x1C694F7C0](v20, v10, v26, v25);
  _Block_release(v25);

  (*(v44 + 8))(v26, v27);
  (*(v42 + 8))(v10, v43);
  return (v32)(v20, v33);
}

void sub_1C5A6F144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*((*(a4 + 224))(a3, a4) + 112))
  {
    v8 = xmmword_1C5BE0B80;

    sub_1C5A37C44(&v8, 0);

    sub_1C5A6EAC0(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5A6F208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_1C5BCB1E4();
  v7[7] = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C5A6F2A8, v9, v8);
}

uint64_t sub_1C5A6F2A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v9 = *(v1 + 32);
  v3 = sub_1C5BCB1D4();
  *(v1 + 80) = v3;
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_1C5A6F3C8;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, v3, v6, 0x6E6F632879646F62, 0xEE00293A746E6574, sub_1C5A75D04, v4, v7);
}

uint64_t sub_1C5A6F3C8()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C5A6F528, v3, v2);
}

uint64_t sub_1C5A6F528()
{

  sub_1C5BC8344();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A6F590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730, &qword_1C5BE7280);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_1C5BCB214();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a3;
  *(v17 + 5) = a4;
  *(v17 + 6) = a2;
  (*(v9 + 32))(&v17[v16], v11, v8);
  swift_unknownObjectRetain();
  sub_1C5B77CE4(0, 0, v14, &unk_1C5BE0D38, v17);

  return sub_1C5929C38(v14);
}

uint64_t sub_1C5A6F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = sub_1C5BCBB74();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A6F8E8, 0, 0);
}

uint64_t sub_1C5A6F8E8(__n128 a1)
{
  sub_1C5BCBEB4();
  v2 = swift_task_alloc();
  *(v1 + 224) = v2;
  *v2 = v1;
  v2[1] = sub_1C5A6F9B4;

  return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C5A6F9B4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v2[29] = v0;

  v6 = *(v4 + 8);
  v2[30] = v6;
  v2[31] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1C5A6FBE4;
  }

  else
  {
    v7 = sub_1C5A6FB38;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C5A6FB38()
{
  v1 = v0[17];
  v0[32] = *(v1 + 224);
  v0[33] = 0;
  v0[34] = (v1 + 224) & 0xFFFFFFFFFFFFLL | 0x3906000000000000;
  v0[35] = sub_1C5BCB1E4();
  v0[36] = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A6FC8C, v3, v2);
}

uint64_t sub_1C5A6FBE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A6FC8C()
{
  v1 = v0[32];
  v3 = v0[16];
  v2 = v0[17];

  v0[37] = v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1C5A6FD24, 0, 0);
}

uint64_t sub_1C5A6FD24(uint64_t a1)
{
  *(v1 + 304) = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A6FDB0, v3, v2);
}

uint64_t sub_1C5A6FDB0()
{
  v1 = *(v0 + 296);

  if (*(v1 + 112))
  {
    *(v0 + 64) = xmmword_1C5BE0B80;

    sub_1C5A37C44((v0 + 64), 1);

    v2 = sub_1C5A6FE64;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5A6FE64(__n128 a1)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  sub_1C5BCBEB4();
  *(v1 + 80) = xmmword_1C5BE0B90;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
  v5 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *(v1 + 312) = v5;
  sub_1C5BCBE94();
  *(v1 + 320) = sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C5BCBB94();
  v6 = *(v4 + 8);
  *(v1 + 328) = v6;
  *(v1 + 336) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = swift_task_alloc();
  *(v1 + 344) = v7;
  *v7 = v1;
  v7[1] = sub_1C5A70024;
  v9 = *(v1 + 176);
  v8 = *(v1 + 184);

  return MEMORY[0x1EEE6DE58](v9, v1 + 16, v8, v5);
}

uint64_t sub_1C5A70024()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    (*(v2 + 328))(*(v2 + 176), *(v2 + 144));
    v3 = sub_1C5A70678;
  }

  else
  {
    v4 = *(v2 + 240);
    v5 = *(v2 + 208);
    v6 = *(v2 + 184);
    (*(v2 + 328))(*(v2 + 176), *(v2 + 144));
    v4(v5, v6);
    v3 = sub_1C5A7017C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C5A7017C(uint64_t a1)
{
  *(v1 + 360) = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A70208, v3, v2);
}

uint64_t sub_1C5A70208()
{
  v1 = v0[32];
  v3 = v0[16];
  v2 = v0[17];

  v0[46] = v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1C5A702A0, 0, 0);
}

uint64_t sub_1C5A702A0(uint64_t a1)
{
  *(v1 + 376) = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A7032C, v3, v2);
}

uint64_t sub_1C5A7032C()
{
  v7 = v0;
  v1 = *(v0 + 368);

  if (*(v1 + 112))
  {
    v6[0] = 0;
    v6[1] = 0;

    sub_1C5A37C44(v6, 1);

    v2 = sub_1C5A703D4;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5A703D4(__n128 a1)
{
  v9 = *(v1 + 328);
  v2 = *(v1 + 168);
  v3 = *(v1 + 144);
  sub_1C5BCBEB4();
  *(v1 + 96) = xmmword_1C5BE0B90;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 1;
  sub_1C5BCBE94();
  sub_1C5BCBB94();
  v9(v2, v3);
  v4 = swift_task_alloc();
  *(v1 + 384) = v4;
  *v4 = v1;
  v4[1] = sub_1C5A7051C;
  v5 = *(v1 + 312);
  v6 = *(v1 + 184);
  v7 = *(v1 + 160);

  return MEMORY[0x1EEE6DE58](v7, v1 + 40, v6, v5);
}

uint64_t sub_1C5A7051C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    (*(v2 + 328))(*(v2 + 160), *(v2 + 144));
    v3 = sub_1C5A708A0;
  }

  else
  {
    v4 = *(v2 + 240);
    v5 = *(v2 + 200);
    v6 = *(v2 + 184);
    (*(v2 + 328))(*(v2 + 160), *(v2 + 144));
    v4(v5, v6);
    v3 = sub_1C5A70730;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C5A70678()
{
  (*(v0 + 240))(*(v0 + 208), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A70730()
{
  if (v0[33] == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730, &qword_1C5BE7280);
    sub_1C5BCB1B4();

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = (v0[17] + 224) & 0xFFFFFFFFFFFFLL | 0x3906000000000000;
    ++v0[33];
    v0[34] = v3;
    v0[35] = sub_1C5BCB1E4();
    v0[36] = sub_1C5BCB1D4();
    v5 = sub_1C5BCB194();

    return MEMORY[0x1EEE6DFA0](sub_1C5A6FC8C, v5, v4);
  }
}

uint64_t sub_1C5A708A0()
{
  (*(v0 + 240))(*(v0 + 200), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A70958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1C5BCBB74();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[18] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[19] = v11;
  v7[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A70AB8, v11, v10);
}

uint64_t sub_1C5A70AB8(__n128 a1)
{
  *(v1 + 168) = 0;
  sub_1C5BCBEB4();
  *(v1 + 40) = xmmword_1C5BE0BA0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A70B3C, 0, 0);
}

uint64_t sub_1C5A70B3C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C5BCBE94();
  sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C5BCBB94();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A70CC0;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A70CC0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    v3 = sub_1C5A70F90;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = sub_1C5A70E20;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A70E20()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  if (v1 == 9)
  {

    sub_1C5BC8344();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 168);
    sub_1C5BCBEB4();
    *(v0 + 40) = xmmword_1C5BE0BA0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A70B3C, 0, 0);
  }
}

uint64_t sub_1C5A70F90()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1C5A71004, v1, v2);
}

uint64_t sub_1C5A71004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A7108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1C5BCBB74();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[18] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[19] = v11;
  v7[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A711EC, v11, v10);
}

uint64_t sub_1C5A711EC(__n128 a1)
{
  *(v1 + 168) = 0;
  sub_1C5BCBEB4();
  *(v1 + 40) = xmmword_1C5BE0BB0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A71270, 0, 0);
}

uint64_t sub_1C5A71270()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C5BCBE94();
  sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C5BCBB94();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A713F4;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A713F4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    v3 = sub_1C5A716C4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = sub_1C5A71554;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A71554()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  if (v1 == 9)
  {

    sub_1C5BC8344();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 168);
    sub_1C5BCBEB4();
    *(v0 + 40) = xmmword_1C5BE0BB0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A71270, 0, 0);
  }
}

uint64_t sub_1C5A716C4()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1C5A761AC, v1, v2);
}

void sub_1C5A71738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, char *, uint64_t, char *))
{
  v27 = a6;
  v28 = a7;
  v26[1] = a5;
  v26[0] = sub_1C5BC8384();
  v11 = *(v26[0] - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v26[0]);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v26 - v16;
  v18 = a3;
  if (*((*(a4 + 224))(a3, a4, v15) + 112))
  {
    v29[0] = 0;
    v29[1] = 0;

    sub_1C5A37C44(v29, 0);

    LOBYTE(v29[0]) = 1;
    NowPlayingController.transition(to:animated:)(v29, 0, a3, a4);
    sub_1C5BC8374();
    v19 = sub_1C5BCB214();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = a2;
    v21 = v26[0];
    (*(v11 + 16))(v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v26[0]);
    sub_1C5BCB1E4();
    swift_unknownObjectRetain();
    v22 = sub_1C5BCB1D4();
    v23 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 2) = v22;
    *(v24 + 3) = v25;
    *(v24 + 4) = v18;
    *(v24 + 5) = a4;
    *(v24 + 6) = a1;
    (*(v11 + 32))(&v24[v23], v13, v21);
    v28(0, 0, v17, v27, v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5A719D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_1C5BCBB84();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[13] = sub_1C5BCB1D4();
  v10 = sub_1C5BCB194();
  v7[14] = v10;
  v7[15] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C5A71AE0, v10, v9);
}

uint64_t sub_1C5A71AE0(__n128 a1)
{
  *(v1 + 128) = 0;
  sub_1C5BCBEB4();
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  v2[1] = sub_1C5A71BB0;

  return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C5A71BB0()
{
  v2 = *v1;
  v2[18] = v0;

  v3 = v2[12];
  v4 = v2[9];
  v5 = v2[8];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = v2[14];
    v10 = v2[15];
    v11 = sub_1C5A72008;
  }

  else
  {
    v2[19] = v7;
    v2[20] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = v2[14];
    v10 = v2[15];
    v11 = sub_1C5A71D30;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1C5A71D30()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v2 + 224);
  v0[21] = v3;
  v0[22] = (v2 + 224) & 0xFFFFFFFFFFFFLL | 0x3906000000000000;
  result = v3(v1);
  if (*(result + 112))
  {
    *(v0 + 1) = xmmword_1C5BE0B80;

    sub_1C5A37C44(v0 + 2, 1);

    sub_1C5BCBEB4();
    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_1C5A71E78;

    return sub_1C59D9270(300000000000000000, 0, 0, 0, 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A71E78()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  (*(v2 + 152))(*(v2 + 88), *(v2 + 64));
  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1C5A72360;
  }

  else
  {
    v5 = sub_1C5A72090;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5A72008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A72090()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v1;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  sub_1C5BCBEB4();
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_1C5A721D0;

  return sub_1C59D9270(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C5A721D0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  (*(v2 + 152))(*(v2 + 80), *(v2 + 64));
  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1C5A7258C;
  }

  else
  {
    v5 = sub_1C5A723E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5A72360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A723E8()
{
  v6 = v0;
  result = (*(v0 + 168))(*(v0 + 48), *(v0 + 56));
  if (*(result + 112))
  {
    v2 = *(v0 + 128);
    v5[0] = 0;
    v5[1] = 0;

    sub_1C5A37C44(v5, 1);

    if (v2 == 2)
    {

      sub_1C5BC8344();

      v3 = *(v0 + 8);

      return v3();
    }

    else
    {
      ++*(v0 + 128);
      sub_1C5BCBEB4();
      v4 = swift_task_alloc();
      *(v0 + 136) = v4;
      *v4 = v0;
      v4[1] = sub_1C5A71BB0;

      return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A7258C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A72614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1C5BCBB74();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[18] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[19] = v11;
  v7[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A72774, v11, v10);
}

uint64_t sub_1C5A72774(__n128 a1)
{
  *(v1 + 168) = 0;
  sub_1C5BCBEB4();
  *(v1 + 40) = xmmword_1C5BE0BA0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A727F8, 0, 0);
}

uint64_t sub_1C5A727F8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C5BCBE94();
  sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C5BCBB94();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A7297C;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A7297C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    v3 = sub_1C5A716C4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = sub_1C5A72ADC;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A72ADC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  if (v1 == 9)
  {

    sub_1C5BC8344();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 168);
    sub_1C5BCBEB4();
    *(v0 + 40) = xmmword_1C5BE0BA0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A727F8, 0, 0);
  }
}

void sub_1C5A72C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[2] = a5;
  v25 = a6;
  v10 = sub_1C5BC8384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24[1] = v12;
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v24 - v16;
  v18 = a3;
  if (*((*(a4 + 224))(a3, a4, v15) + 112))
  {
    v26 = xmmword_1C5BE0B80;

    sub_1C5A37C44(&v26, 0);

    LOBYTE(v26) = 1;
    NowPlayingController.transition(to:animated:)(&v26, 0, a3, a4);
    sub_1C5BC8374();
    v19 = sub_1C5BCB214();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    (*(v11 + 16))(v13, a2, v10);
    sub_1C5BCB1E4();
    swift_unknownObjectRetain();
    v20 = sub_1C5BCB1D4();
    v21 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    *(v22 + 2) = v20;
    *(v22 + 3) = v23;
    *(v22 + 4) = v18;
    *(v22 + 5) = a4;
    *(v22 + 6) = a1;
    (*(v11 + 32))(&v22[v21], v13, v10);
    sub_1C59D2F9C(0, 0, v17, v25, v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5A72EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1C5BCBB74();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[18] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[19] = v11;
  v7[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A73044, v11, v10);
}

uint64_t sub_1C5A73044(__n128 a1)
{
  *(v1 + 168) = 0;
  sub_1C5BCBEB4();
  *(v1 + 40) = xmmword_1C5BE0BB0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A730C8, 0, 0);
}

uint64_t sub_1C5A730C8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C5BCBE94();
  sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C5BCBB94();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A7324C;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A7324C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    v3 = sub_1C5A716C4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = sub_1C5A733AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A733AC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  if (v1 == 9)
  {

    sub_1C5BC8344();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 168);
    sub_1C5BCBEB4();
    *(v0 + 40) = xmmword_1C5BE0BB0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A730C8, 0, 0);
  }
}

uint64_t sub_1C5A7351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_1C5BCB1E4();
  v7[7] = sub_1C5BCB1D4();
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_1C5A7360C;
  v12.n128_u64[0] = 0;

  return (sub_1C59D04F0)(a4, a6, a6, a7, a7, v12);
}

uint64_t sub_1C5A7360C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v2;
  v3[1] = sub_1C5A7379C;
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[2];

  return sub_1C59D04F0(v6, v5, v5, v4, v4, 0.2);
}

uint64_t sub_1C5A7379C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v2;
  v3[1] = sub_1C5A7392C;
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[2];

  return sub_1C59D04F0(v6, v5, v5, v4, v4, 0.4);
}

uint64_t sub_1C5A7392C()
{

  v1 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A761B0, v1, v0);
}

double sub_1C5A73A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, char *, uint64_t, char *))
{
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v25 = a2;
  v26 = sub_1C5BC8384();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v30[0] = 1;
  v24 = a3;
  NowPlayingController.transition(to:animated:)(v30, 0, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195728, &qword_1C5BE0CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD21E0;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x80000001C5BF9570;
  *(inited + 48) = xmmword_1C5BE0BC0;
  *(inited + 64) = 0x2072657470616843;
  *(inited + 72) = 0xE900000000000032;
  *(inited + 80) = xmmword_1C5BE0BD0;
  *(inited + 96) = 0x2072657470616843;
  *(inited + 104) = 0xE900000000000033;
  *(inited + 112) = xmmword_1C5BE0BE0;
  (*(a4 + 224))(a3, a4);
  sub_1C596EBE0(inited, 0, 0, 0, 0);
  swift_setDeallocating();
  swift_arrayDestroy();

  v16 = v25;
  sub_1C5BC8374();
  v17 = sub_1C5BCB214();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = v26;
  (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v26);
  sub_1C5BCB1E4();
  swift_unknownObjectRetain();
  v19 = sub_1C5BCB1D4();
  v20 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v19;
  *(v21 + 3) = v22;
  *(v21 + 4) = v24;
  *(v21 + 5) = a4;
  *(v21 + 6) = a1;
  (*(v10 + 32))(&v21[v20], &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v29(0, 0, v14, v28, v21);

  return result;
}

uint64_t sub_1C5A73DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1C5BCBB84();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[9] = sub_1C5BCB1D4();
  v10 = sub_1C5BCB194();
  v7[10] = v10;
  v7[11] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C5A73EA8, v10, v9);
}

uint64_t sub_1C5A73EA8()
{
  (*(v0[5] + 232))(v0[4]);
  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1C5A73F98;

  return sub_1C59D9270(0xA055690D9DB80000, 1, 0, 0, 1);
}

uint64_t sub_1C5A73F98()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1C5A741A4;
  }

  else
  {
    v8 = sub_1C5A74130;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5A74130()
{

  sub_1C5BC8344();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A741A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A74238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A745A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_1C5BCBB74();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[25] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[26] = v11;
  v7[27] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A74720, v11, v10);
}

uint64_t sub_1C5A74720(__n128 a1)
{
  *(v1 + 224) = 0;
  sub_1C5BCBEB4();
  *(v1 + 64) = xmmword_1C5BE0B90;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A747A4, 0, 0);
}

uint64_t sub_1C5A747A4()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  v0[29] = v4;
  sub_1C5BCBE94();
  v0[30] = sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C5BCBB94();
  v5 = *(v3 + 8);
  v0[31] = v5;
  v0[32] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A74930;
  v8 = v0[20];
  v7 = v0[21];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A74930()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    (*(v2 + 248))(*(v2 + 160), *(v2 + 128));
    v3 = sub_1C5A74DAC;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 168);
    v8 = *(v2 + 176);
    (*(v2 + 248))(*(v2 + 160), *(v2 + 128));
    v9 = *(v8 + 8);
    *(v2 + 280) = v9;
    *(v2 + 288) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v4 = *(v2 + 208);
    v5 = *(v2 + 216);
    v3 = sub_1C5A74AA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A74AA0(__n128 a1)
{
  v6 = v1;
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v5 = 1;
  NowPlayingController.transition(to:animated:)(&v5, 1, v2, v3);
  sub_1C5BCBEB4();
  *(v1 + 80) = xmmword_1C5BE0B90;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A74B44, 0, 0);
}

uint64_t sub_1C5A74B44()
{
  v1 = v0[31];
  v2 = v0[19];
  v3 = v0[16];
  sub_1C5BCBE94();
  sub_1C5BCBB94();
  v1(v2, v3);
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1C5A74C48;
  v5 = v0[29];
  v6 = v0[21];
  v7 = v0[18];

  return MEMORY[0x1EEE6DE58](v7, v0 + 5, v6, v5);
}

uint64_t sub_1C5A74C48()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2 + 248))(*(v2 + 144), *(v2 + 128));
    v3 = sub_1C5A75014;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 280);
    v7 = *(v2 + 184);
    v8 = *(v2 + 168);
    (*(v2 + 248))(*(v2 + 144), *(v2 + 128));
    v6(v7, v8);
    v4 = *(v2 + 208);
    v5 = *(v2 + 216);
    v3 = sub_1C5A74EC8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A74DAC()
{
  (*(v0[22] + 8))(v0[24], v0[21]);
  v1 = v0[26];
  v2 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_1C5A74E20, v1, v2);
}

uint64_t sub_1C5A74E20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A74EC8(__n128 a1)
{
  v8 = v1;
  v2 = *(v1 + 224);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v7 = 0;
  NowPlayingController.transition(to:animated:)(&v7, 1, v3, v4);
  if (v2 == 2)
  {

    sub_1C5BC8344();

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    ++*(v1 + 224);
    sub_1C5BCBEB4();
    *(v1 + 64) = xmmword_1C5BE0B90;
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A747A4, 0, 0);
  }
}

uint64_t sub_1C5A75014()
{
  (*(v0 + 280))(*(v0 + 184), *(v0 + 168));
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1C5A75080, v1, v2);
}

uint64_t sub_1C5A75080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A75128(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A73DB0(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A7527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 2);
  v10 = *(v4 + 3);
  v11 = *(sub_1C5BC8384() - 8);
  return a4(*(v4 + 4), &v4[(*(v11 + 80) + 40) & ~*(v11 + 80)], v9, v10, a1, a2, a3);
}

uint64_t sub_1C5A75320(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A7351C(a1, v8, v9, v10, v1 + v7, v4, v5);
}

void sub_1C5A7544C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(sub_1C5BC8384() - 8);
  sub_1C5A72C4C(v2[4], v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80)), v5, v6, a1, a2);
}

uint64_t sub_1C5A754D8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A72EE4(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A755E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5A7564C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A72614(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A757A0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A719D0(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A758F4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A7108C(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A75A48(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A70958(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A75BF8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592ABD4;

  return sub_1C5A6F208(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A75D10(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730, &qword_1C5BE7280) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592ABD4;

  return sub_1C5A6F798(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A75E40(uint64_t (*a1)(uint64_t, char *, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = *(sub_1C5BC8384() - 8);
  v5 = v1[4];
  v6 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a1(v5, v6, v2, v3);
}

uint64_t objectdestroy_33Tm()
{
  v1 = sub_1C5BC8384();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C5A75FA0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A745A8(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t objectdestroy_30Tm()
{
  v1 = sub_1C5BC8384();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C5A761F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for MaterialMotionContentObserver(0);

  return sub_1C5BC8194();
}

uint64_t sub_1C5A76274()
{
  type metadata accessor for MaterialMotionContentObserver(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1C5BC7BA4();
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath(byte_1C5BE1068);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
    sub_1C5BC7B64();
  }

  if (*(v0 + 24))
  {
    v2 = swift_getKeyPath(byte_1C5BE11E8);
    MEMORY[0x1EEE9AC00](v2);
    sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
    sub_1C5BC7B64();
  }

  return v0;
}

double sub_1C5A76454(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 52));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C5BCB4E4();
  v10 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();
  v11 = sub_1C5950E44(v8, 0);
  (*(v4 + 8))(v6, v3, v11);
  return *&v12[1];
}

uint64_t sub_1C5A765AC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790, &qword_1C5BE0E40);
  sub_1C5BCA684();
  return v3;
}

uint64_t sub_1C5A76604(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  sub_1C5BCA694();
  return v2;
}

uint64_t NowPlayingArtworkBackground.init(videoURL:namespace:treatment:staticArt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13 = *a4;
  v14 = type metadata accessor for NowPlayingArtworkBackground(0, a6, a7, a4);
  sub_1C5A761F0(sub_1C5A76274, 0);
  v15 = a8 + v14[13];
  *v15 = swift_getKeyPath(byte_1C5BE0D50);
  *(v15 + 8) = 0;
  v16 = a8 + v14[14];
  *v16 = sub_1C5A765AC(0, 1);
  *(v16 + 8) = v17 & 1;
  *(v16 + 16) = v18;
  v19 = a8 + v14[16];
  *v19 = sub_1C5A76860(0, 0, 1);
  *(v19 + 8) = v20;
  *(v19 + 16) = v21 & 1;
  *(v19 + 24) = v22;
  v23 = sub_1C5A7A970(a1, a8);
  v24 = a8 + v14[9];
  *v24 = a2;
  *(v24 + 8) = a3 & 1;
  a5(v23);
  result = sub_1C5924EF4(a1, &qword_1EC195738, &unk_1C5BE0D80);
  *(a8 + v14[11]) = v13;
  *(a8 + v14[15]) = 0;
  v26 = a8 + v14[17];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  return result;
}

uint64_t sub_1C5A76860(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957A0, qword_1C5BE0E48);
  sub_1C5BCA684();
  return v4;
}

uint64_t NowPlayingArtworkBackground.init(videoURL:namespace:treatment:showsPlainMotion:maximumMotionSize:staticArt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a4;
  v20 = type metadata accessor for NowPlayingArtworkBackground(0, a12, a13, a4);
  sub_1C5A761F0(sub_1C5A76274, 0);
  v21 = a9 + v20[13];
  *v21 = swift_getKeyPath(byte_1C5BE0D50);
  *(v21 + 8) = 0;
  v22 = a9 + v20[14];
  *v22 = sub_1C5A765AC(0, 1);
  *(v22 + 8) = v23 & 1;
  *(v22 + 16) = v24;
  v25 = a9 + v20[16];
  *v25 = sub_1C5A76860(0, 0, 1);
  *(v25 + 8) = v26;
  *(v25 + 16) = v27 & 1;
  *(v25 + 24) = v28;
  v29 = sub_1C5A7A970(a1, a9);
  v30 = a9 + v20[9];
  *v30 = a2;
  *(v30 + 8) = a3 & 1;
  *(a9 + v20[11]) = v19;
  *(a9 + v20[15]) = a5;
  v31 = a9 + v20[17];
  *v31 = a6;
  *(v31 + 8) = a7;
  *(v31 + 16) = a8 & 1;
  a10(v29);
  return sub_1C5924EF4(a1, &qword_1EC195738, &unk_1C5BE0D80);
}

uint64_t sub_1C5A76A3C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957D0, &qword_1C5BE0FF0);
  sub_1C5BCA694();
  return v2;
}

__n128 sub_1C5A76AA8@<Q0>(__n128 *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957D0, &qword_1C5BE0FF0);
  sub_1C5BCA6B4();
  result = v5;
  *a2 = v4;
  a2[1] = v5;
  a2[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_1C5A76B28(uint64_t a1)
{
  v1 = COERCE_DOUBLE(sub_1C5A76A3C(a1));
  if ((v3 & 1) != 0 || ((v4 = v1, v2 >= v1) ? (v5 = v1) : (v5 = v2), v5 <= 0.0))
  {
    *&result = 0.0;
  }

  else
  {
    if (v1 <= v2)
    {
      v4 = v2;
    }

    *&result = v4 / v5;
  }

  return result;
}

double NowPlayingArtworkBackground.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v8 = v7 + *(v6 + 36);
  v36 = *v8;
  v35 = *(v8 + 8);
  (*(v3 + 16))(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v34 = v10;
  v11 = *(a1 + 24);
  *(v10 + 16) = *(a1 + 16);
  *(v10 + 24) = v11;
  (*(v3 + 32))(v10 + v9, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60, &qword_1C5BE0D98);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  v60 = v11;
  v61 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  v59 = MEMORY[0x1E697E270];
  v57 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195750, &qword_1C5BE0DA0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195758, &unk_1C5BE0DA8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910, &qword_1C5BDCCF0);
  sub_1C5BC8AB4();
  v12 = sub_1C5BC8AB4();
  v13 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60, &qword_1C5BE0D98, MEMORY[0x1E695BED8]);
  v14 = swift_getWitnessTable();
  v15 = MEMORY[0x1E697EC18];
  v16 = sub_1C5924F54(&qword_1EC195768, &qword_1EC195750, &qword_1C5BE0DA0, MEMORY[0x1E697EC18]);
  v55 = v14;
  v56 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_1C5924F54(&qword_1EC195770, &qword_1EC195758, &unk_1C5BE0DA8, v15);
  v53 = v17;
  v54 = v18;
  v51 = swift_getWitnessTable();
  v52 = MEMORY[0x1E697E040];
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910, &qword_1C5BDCCF0, MEMORY[0x1E697DDB0]);
  v49 = v19;
  v50 = v20;
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x1E69802C0];
  v21 = swift_getWitnessTable();
  *&v66 = v33;
  *(&v66 + 1) = v12;
  *&v67 = v13;
  *(&v67 + 1) = v21;
  sub_1C5BC8BB4();
  swift_getWitnessTable();
  sub_1C5BC8874();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195778, &qword_1C5BE0DB8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v22 = sub_1C5BC8AB4();
  v23 = swift_getWitnessTable();
  v24 = sub_1C5924F54(&qword_1EC195780, &qword_1EC195778, &qword_1C5BE0DB8, MEMORY[0x1E697F940]);
  v45 = v23;
  v46 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_1C5943498();
  v43 = v25;
  v44 = v26;
  v41 = swift_getWitnessTable();
  v42 = MEMORY[0x1E6980A30];
  v27 = swift_getWitnessTable();
  sub_1C5AFA434(v36, v35, sub_1C5A7A9E0, v34, &v66);
  v38 = v66;
  v39 = v67;
  v40 = v68;
  v29 = type metadata accessor for WithNamespace(0, v22, v27, v28);
  v30 = swift_getWitnessTable();
  sub_1C593EDC0(&v38, v29, v30);
  (*(*(v29 - 8) + 8))(&v66, v29);
  v38 = v62;
  LOBYTE(v39) = v63;
  *(&v39 + 1) = v64;
  v40 = v65;
  sub_1C593EDC0(&v38, v29, v30);

  return result;
}

uint64_t sub_1C5A77248@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v41 = a1;
  v42 = a4;
  v7 = type metadata accessor for NowPlayingArtworkBackground(0, a2, a3, a3);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  v12 = *(v8 + 16);
  v40 = v7;
  v12(&v37 - v10, a1, v7, v9);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v39 = v14;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v8 + 32))(v14 + v13, v11, v7);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60, &qword_1C5BE0D98);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  v67 = a3;
  v68 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  v66 = MEMORY[0x1E697E270];
  v64 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195750, &qword_1C5BE0DA0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195758, &unk_1C5BE0DA8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910, &qword_1C5BDCCF0);
  sub_1C5BC8AB4();
  v15 = sub_1C5BC8AB4();
  v16 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60, &qword_1C5BE0D98, MEMORY[0x1E695BED8]);
  v17 = swift_getWitnessTable();
  v18 = MEMORY[0x1E697EC18];
  v19 = sub_1C5924F54(&qword_1EC195768, &qword_1EC195750, &qword_1C5BE0DA0, MEMORY[0x1E697EC18]);
  v62 = v17;
  v63 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1C5924F54(&qword_1EC195770, &qword_1EC195758, &unk_1C5BE0DA8, v18);
  v60 = v20;
  v61 = v21;
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x1E697E040];
  v22 = swift_getWitnessTable();
  v23 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910, &qword_1C5BDCCF0, MEMORY[0x1E697DDB0]);
  v56 = v22;
  v57 = v23;
  v54 = swift_getWitnessTable();
  v55 = MEMORY[0x1E69802C0];
  v24 = swift_getWitnessTable();
  v84.n128_u64[0] = v38;
  v84.n128_u64[1] = v15;
  v85.n128_u64[0] = v16;
  v85.n128_u64[1] = v24;
  sub_1C5BC8BB4();
  swift_getWitnessTable();
  v69.n128_u64[0] = sub_1C5BC8864();
  v69.n128_u64[1] = v25;
  sub_1C5A76AA8(v73);
  v75 = v73[0].n128_u64[0];
  v80 = v73[0];
  v81 = v73[1];
  LOBYTE(v82) = v74;
  sub_1C5BCAA54();
  sub_1C5BC8874();
  v26 = swift_getWitnessTable();
  sub_1C5A7B578();
  sub_1C5BC9D04();
  sub_1C5A7B6C4(&v75);

  v71 = v86;
  v72[0] = v87;
  *&v72[1] = *&v88[0];
  v69 = v84;
  v70 = v85;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195778, &qword_1C5BE0DB8);
  v27 = sub_1C5BC8AB4();
  v28 = sub_1C5924F54(&qword_1EC195780, &qword_1EC195778, &qword_1C5BE0DB8, MEMORY[0x1E697F940]);
  v52 = v26;
  v53 = v28;
  v29 = swift_getWitnessTable();
  sub_1C5BCA1D4();
  v76[2] = v71;
  v76[3] = v72[0];
  v77 = *&v72[1];
  v76[0] = v69;
  v76[1] = v70;
  (*(*(v27 - 8) + 8))(v76, v27);
  v71 = v82;
  v72[0] = v83[0];
  *(v72 + 9) = *(v83 + 9);
  v69 = v80;
  v70 = v81;
  sub_1C5BC8AC4();
  sub_1C5BC9894();
  v30 = sub_1C5BC8AB4();
  v31 = sub_1C5943498();
  v50 = v29;
  v51 = v31;
  v32 = swift_getWitnessTable();
  sub_1C5BC9F84();
  v78[2] = v71;
  v79[0] = v72[0];
  *(v79 + 9) = *(v72 + 9);
  v78[0] = v69;
  v78[1] = v70;
  (*(*(v30 - 8) + 8))(v78, v30);
  v47 = v86;
  v48 = v87;
  v49[0] = v88[0];
  *(v49 + 9) = *(v88 + 9);
  v45 = v84;
  v46 = v85;
  v33 = sub_1C5BC8AB4();
  v43 = v32;
  v44 = MEMORY[0x1E6980A30];
  v34 = swift_getWitnessTable();
  sub_1C593EDC0(&v45, v33, v34);
  v82 = v47;
  v83[0] = v48;
  v83[1] = v49[0];
  *(&v83[1] + 9) = *(v49 + 9);
  v80 = v45;
  v81 = v46;
  v35 = *(*(v33 - 8) + 8);
  v35(&v80, v33);
  v47 = v71;
  v48 = v72[0];
  v49[0] = v72[1];
  *(v49 + 9) = *(&v72[1] + 9);
  v45 = v69;
  v46 = v70;
  sub_1C593EDC0(&v45, v33, v34);
  v86 = v47;
  v87 = v48;
  v88[0] = v49[0];
  *(v88 + 9) = *(v49 + 9);
  v84 = v45;
  v85 = v46;
  return (v35)(&v84, v33);
}

uint64_t sub_1C5A77ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a2;
  v101 = a1;
  v96 = a5;
  v86 = a3;
  v99 = a4;
  v92 = type metadata accessor for NowPlayingArtworkBackground(0, a3, a4, a4);
  v94 = *(v92 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v93 = v63 - v6;
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  v129 = a4;
  v130 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  v128 = MEMORY[0x1E697E270];
  v126 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v80 = sub_1C5BCAB74();
  v79 = swift_getWitnessTable();
  v98 = sub_1C5BCA7D4();
  v85 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v77 = v63 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195750, &qword_1C5BE0DA0);
  v97 = sub_1C5BC8AB4();
  v88 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v78 = v63 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195758, &unk_1C5BE0DA8);
  v9 = sub_1C5BC8AB4();
  v90 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v82 = v63 - v10;
  v67 = v9;
  v11 = sub_1C5BC8AB4();
  v89 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v84 = v63 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910, &qword_1C5BDCCF0);
  v68 = v11;
  v13 = sub_1C5BC8AB4();
  v87 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v83 = v63 - v14;
  v65 = v13;
  v15 = sub_1C5BC8AB4();
  v91 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60, &qword_1C5BE0D98);
  v74 = v17;
  v18 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60, &qword_1C5BE0D98, MEMORY[0x1E695BED8]);
  v73 = v18;
  v19 = swift_getWitnessTable();
  v63[1] = v19;
  v20 = MEMORY[0x1E697EC18];
  v21 = sub_1C5924F54(&qword_1EC195768, &qword_1EC195750, &qword_1C5BE0DA0, MEMORY[0x1E697EC18]);
  v124 = v19;
  v125 = v21;
  v22 = swift_getWitnessTable();
  v63[2] = v22;
  v23 = sub_1C5924F54(&qword_1EC195770, &qword_1EC195758, &unk_1C5BE0DA8, v20);
  v122 = v22;
  v123 = v23;
  v66 = swift_getWitnessTable();
  v120 = v66;
  v121 = MEMORY[0x1E697E040];
  v24 = swift_getWitnessTable();
  v63[3] = v24;
  v25 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910, &qword_1C5BDCCF0, MEMORY[0x1E697DDB0]);
  v118 = v24;
  v119 = v25;
  v64 = swift_getWitnessTable();
  v116 = v64;
  v117 = MEMORY[0x1E69802C0];
  v71 = v15;
  v72 = swift_getWitnessTable();
  v112 = v17;
  v113 = v15;
  v114 = v18;
  v115 = v72;
  v26 = sub_1C5BC8BB4();
  v27 = *(v26 - 8);
  v75 = v26;
  v76 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v69 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v70 = v63 - v30;
  v31 = v86;
  v33 = v99;
  v32 = v100;
  v109 = v86;
  v110 = v99;
  v111 = v100;
  sub_1C5BC9134();
  v34 = v77;
  sub_1C5BCA7C4();
  sub_1C5BCAA34();
  v105 = v31;
  v106 = v33;
  v107 = v32;
  v108 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957D8, &qword_1C5BE0FF8);
  sub_1C5A7BB7C(&qword_1EC1957E0, &qword_1EC1957D8, &qword_1C5BE0FF8, sub_1C5A7B730);
  v35 = v78;
  v36 = v98;
  sub_1C5BCA2C4();
  (*(v85 + 8))(v34, v36);
  v102 = v31;
  v103 = v33;
  v37 = v31;
  v38 = v100;
  v104 = v100;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195868, &qword_1C5BE1048);
  sub_1C5A7BB7C(&qword_1EC195870, &qword_1EC195868, &qword_1C5BE1048, sub_1C5A7BBF8);
  v39 = v82;
  v40 = v97;
  sub_1C5BCA2C4();
  (*(v88 + 8))(v35, v40);
  sub_1C5BC86C4();
  sub_1C5BC86C4();
  v41 = v92;
  v42 = v38;
  sub_1C5A76B28(v92);
  sub_1C5BCAA34();
  v43 = v84;
  v44 = v67;
  sub_1C5BCA234();
  (*(v90 + 8))(v39, v44);
  v45 = v83;
  v46 = v68;
  sub_1C5BCA2A4();
  (*(v89 + 8))(v43, v46);
  v47 = v81;
  v48 = v65;
  sub_1C5BC9FC4();
  (*(v87 + 8))(v45, v48);
  v49 = v42;
  v112 = sub_1C5A79C78();
  v51 = v93;
  v50 = v94;
  (*(v94 + 16))(v93, v49, v41);
  v52 = v50;
  v53 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v54 = swift_allocObject();
  v55 = v99;
  *(v54 + 16) = v37;
  *(v54 + 24) = v55;
  (*(v52 + 32))(v54 + v53, v51, v41);
  v56 = v69;
  v57 = v71;
  sub_1C5BCA3D4();

  (*(v91 + 8))(v47, v57);
  v58 = v75;
  v59 = swift_getWitnessTable();
  v60 = v70;
  sub_1C593EDC0(v56, v58, v59);
  v61 = *(v76 + 8);
  v61(v56, v58);
  sub_1C593EDC0(v60, v58, v59);
  return (v61)(v60, v58);
}

uint64_t sub_1C5A786CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = sub_1C5BC8AB4();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v26 = v25 - v8;
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v9 = sub_1C5BCB804();
  v37[9] = a3;
  v37[10] = MEMORY[0x1E697E070];
  v25[2] = MEMORY[0x1E697E858];
  v37[7] = swift_getWitnessTable();
  v37[8] = MEMORY[0x1E697E270];
  v37[6] = swift_getWitnessTable();
  v25[1] = v9;
  v25[3] = swift_getWitnessTable();
  v25[4] = sub_1C5BC92A4();
  v10 = sub_1C5BC8AB4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  type metadata accessor for NowPlayingArtworkBackground(0, a2, a3, v17);
  v18 = a1;
  v19 = v26;
  sub_1C5BC9D94();
  v29 = a2;
  v30 = a3;
  v31 = v18;
  sub_1C5BCAA54();
  v37[4] = a3;
  v37[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC9CE4();
  (*(v27 + 8))(v19, v7);
  v21 = swift_getWitnessTable();
  v37[2] = WitnessTable;
  v37[3] = v21;
  v22 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, v22);
  v23 = *(v11 + 8);
  v23(v13, v10);
  (*(v11 + 16))(v13, v16, v10);
  v35 = 0;
  v36 = 1;
  v37[0] = v13;
  v37[1] = &v35;
  v34[0] = v10;
  v34[1] = MEMORY[0x1E6981840];
  v32 = v22;
  v33 = MEMORY[0x1E6981838];
  sub_1C594226C(v37, 2uLL, v34);
  v23(v16, v10);
  return (v23)(v13, v10);
}

uint64_t sub_1C5A78B00@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v6 = sub_1C5BC8AB4();
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v40 - v7;
  v49 = v8;
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v40 - v14;
  v15 = sub_1C5BCB804();
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v40 - v19;
  v48 = a3;
  v21 = type metadata accessor for NowPlayingArtworkBackground(0, a2, a3, v20);
  v22 = sub_1C5BC8294();
  v23 = MEMORY[0x1E697E070];
  if (v22)
  {
    v41 = v15;
    v24 = v43;
    sub_1C5BCABC4();
    v25 = v42;
    v26 = a2;
    v27 = v48;
    MEMORY[0x1C694E080](v26, v48, 1.0, -2.0, v28, v29);
    sub_1C5A76454(v21);
    v52 = v27;
    v53 = MEMORY[0x1E697E070];
    v30 = v49;
    WitnessTable = swift_getWitnessTable();
    sub_1C5BCA264();
    (*(v24 + 8))(v25, v30);
    v15 = v41;
    v50 = WitnessTable;
    v32 = MEMORY[0x1E697E270];
    v51 = MEMORY[0x1E697E270];
    v33 = swift_getWitnessTable();
    v34 = v44;
    sub_1C593EDC0(v12, v9, v33);
    v35 = *(v10 + 8);
    v35(v12, v9);
    sub_1C593EDC0(v34, v9, v33);
    v35(v34, v9);
    (*(v10 + 32))(v17, v12, v9);
    (*(v10 + 56))(v17, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v17, 1, 1, v9);
    v61 = v48;
    v62 = v23;
    v59 = swift_getWitnessTable();
    v32 = MEMORY[0x1E697E270];
    v60 = MEMORY[0x1E697E270];
    swift_getWitnessTable();
  }

  v36 = v45;
  sub_1C5941600(v17, v45);
  v37 = *(v46 + 8);
  v37(v17, v15);
  v57 = v48;
  v58 = MEMORY[0x1E697E070];
  v55 = swift_getWitnessTable();
  v56 = v32;
  v54 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  sub_1C593EDC0(v36, v15, v38);
  return (v37)(v36, v15);
}

uint64_t sub_1C5A7902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a4;
  v73 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A8, &qword_1C5BE1180);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v58 - v9;
  v59 = type metadata accessor for MotionAsset(0);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195840, &qword_1C5BE1028);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v58 - v13);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195830, &qword_1C5BE1020);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v58 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195820, &qword_1C5BE1018);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v58 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195810, &qword_1C5BE1010);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v58 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957F8, &qword_1C5BE1008);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958B0, &qword_1C5BE1188);
  v71 = *(v19 - 8);
  v72 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957F0, &qword_1C5BE1000);
  v75 = *(v21 - 8);
  v76 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v58 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738, &unk_1C5BE0D80);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v58 - v24;
  v26 = sub_1C5BC7A24();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5A7A970(a1, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1C5924EF4(v25, &qword_1EC195738, &unk_1C5BE0D80);
    v29 = 1;
    v30 = v76;
  }

  else
  {
    v58 = a5;
    v31 = v74;
    (*(v27 + 32))(v74, v25, v26);
    (*(v27 + 16))(v11, v31, v26);
    swift_storeEnumTagMultiPayload();
    v32 = v12[17];
    if (qword_1EDA4B350 != -1)
    {
      swift_once();
    }

    *(v14 + v32) = off_1EDA4B358;
    sub_1C59C122C(v11, v14 + v12[14]);

    v33 = sub_1C5BCA484();
    sub_1C59C1338(v11);
    *v14 = v33;
    *(v14 + v12[15]) = 0;
    *(v14 + v12[16]) = 0;
    v59 = a3;
    v35 = type metadata accessor for NowPlayingArtworkBackground(0, a3, v77, v34);
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v36 = v61;
    sub_1C59E7D34(v14, v61, &qword_1EC195840, &qword_1C5BE1028);
    v37 = (v36 + *(v60 + 36));
    v38 = v79;
    *v37 = v78;
    v37[1] = v38;
    v37[2] = v80;
    v39 = v70;
    sub_1C59E7D34(v36, v70, &qword_1EC195830, &qword_1C5BE1020);
    KeyPath = swift_getKeyPath(byte_1C5BE1190);
    v41 = v39;
    v42 = v63;
    sub_1C59E7D34(v41, v63, &qword_1EC195830, &qword_1C5BE1020);
    v43 = v65;
    v44 = v42 + *(v64 + 36);
    *v44 = KeyPath;
    *(v44 + 8) = 1;
    LOBYTE(v33) = *(a1 + *(v35 + 44));
    sub_1C59E7D34(v42, v43, &qword_1EC195820, &qword_1C5BE1018);
    v45 = v43 + *(v62 + 36);
    *v45 = 0;
    *(v45 + 8) = 1;
    *(v45 + 9) = v33;
    v46 = sub_1C5BCAA34();
    v48 = v47;
    v49 = v69;
    v50 = &v69[*(v68 + 36)];
    sub_1C5A798F8(v59, v77, v50);
    v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195850, &qword_1C5BE1038) + 36));
    *v51 = v46;
    v51[1] = v48;
    sub_1C59E7D34(v43, v49, &qword_1EC195810, &qword_1C5BE1010);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
    sub_1C5BC81A4();
    type metadata accessor for MaterialMotionContentObserver(0);
    sub_1C5A7B874();
    sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
    v52 = v67;
    sub_1C5BC9DE4();

    sub_1C5924EF4(v49, &qword_1EC1957F8, &qword_1C5BE1008);
    (*(v27 + 8))(v74, v26);
    v53 = swift_getKeyPath(byte_1C5BE11B8);
    v54 = v66;
    (*(v71 + 32))(v66, v52, v72);
    v30 = v76;
    v55 = &v54[*(v76 + 36)];
    *v55 = v53;
    v55[8] = 1;
    v56 = v54;
    a5 = v58;
    sub_1C59857BC(v56, v58);
    v29 = 0;
  }

  return (*(v75 + 56))(a5, v29, 1, v30);
}

uint64_t sub_1C5A798F8@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958B8, &qword_1C5BE11E0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v12 = type metadata accessor for NowPlayingArtworkBackground(0, a2, a3, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  v13 = *&v22[0];
  swift_getKeyPath(byte_1C5BE1068);
  *&v22[0] = v13;
  sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v14 = *(v13 + 16);
  v15 = v14;

  if (v14)
  {
    if (sub_1C5BC8294())
    {
      sub_1C5A76604(v12);
      if ((v16 & 1) == 0)
      {
        type metadata accessor for NowPlayingArtworkMotionReplicatorLayer();
        *(swift_allocObject() + 16) = v15;
        v19 = v15;
        sub_1C5BC85C4();
        sub_1C5BC86C4();
        sub_1C5BC86C4();
        sub_1C5BCAA54();
        sub_1C5BC85D4();

        v20 = &v10[*(v7 + 36)];
        v21 = v22[1];
        *v20 = v22[0];
        *(v20 + 1) = v21;
        *(v20 + 2) = v22[2];
        sub_1C59E7D34(v10, a4, &qword_1EC1958B8, &qword_1C5BE11E0);
        v17 = 0;
        return (*(v8 + 56))(a4, v17, 1, v7);
      }
    }
  }

  v17 = 1;
  return (*(v8 + 56))(a4, v17, 1, v7);
}

uint64_t sub_1C5A79C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a1 + *(type metadata accessor for NowPlayingArtworkBackground(0, a2, a3, a4) + 60)))
  {
    KeyPath = 0;
    result = 0;
    v8 = 255;
  }

  else
  {
    KeyPath = swift_getKeyPath(aP_23);
    result = swift_getKeyPath(byte_1C5BE1140);
    v8 = 0;
  }

  *a5 = KeyPath;
  *(a5 + 8) = v8;
  *(a5 + 16) = result;
  *(a5 + 24) = 0;
  return result;
}

uint64_t sub_1C5A79C78()
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
  swift_getKeyPath(byte_1C5BE1068);
  v14 = v8;
  sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v9 = *(v8 + 16);
  v10 = v9;

  if (v9)
  {
    swift_getKeyPath(byte_1C5BE10B0);
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

uint64_t sub_1C5A79F88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 16) & 1) == 0)
  {
    v4 = *(result + 8);
    if (*result != 0.0 || v4 != 0.0)
    {
      *&v5 = *result / v4;
      v6 = type metadata accessor for NowPlayingArtworkBackground(0, a3, a4, a4);
      return sub_1C5A76670(v5, 0, v6);
    }
  }

  return result;
}

id sub_1C5A7A004()
{
  v1 = v0[1];
  v2 = *(v0 + 32);
  v15 = *v0;
  v16 = v1;
  v17 = *(v0 + 1);
  v18 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957C0, &unk_1C5BE0FE0);
  sub_1C5BCA834();
  v3 = v12;
  v4 = v13;
  v5 = v14;
  v6 = type metadata accessor for WindowSizeReaderViewController();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController__windowSize];
  *v8 = v11;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v8[32] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1C5A7A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A7B5CC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C5A7A134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A7B5CC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C5A7A198(uint64_t a1)
{
  sub_1C5A7B5CC();
  sub_1C5BC9784();
  __break(1u);
}

id sub_1C5A7A21C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WindowSizeReaderViewController();
  objc_msgSendSuper2(&v6, sel_viewIsAppearing_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5)
    {
      [v5 bounds];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957C0, &unk_1C5BE0FE0);
    return sub_1C5BCA824();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A7A384(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1C5BCAC14();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C5BCAC44();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WindowSizeReaderViewController();
  v22.receiver = v4;
  v22.super_class = v14;
  objc_msgSendSuper2(&v22, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  sub_1C5929CA0();
  v15 = sub_1C5BCB5A4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C5A7B620;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_11;
  v17 = _Block_copy(aBlock);

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5A7BB28(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v13, v10, v17);
  _Block_release(v17);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1C5A7A6A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 view];

      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = [v5 window];

      if (v6)
      {
        [v6 bounds];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957C0, &unk_1C5BE0FE0);
    sub_1C5BCA824();
  }
}

id sub_1C5A7A8C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindowSizeReaderViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5A7A970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738, &unk_1C5BE0D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A7A9E0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for NowPlayingArtworkBackground(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1C5A77248(v7, v4, v5, a2);
}

void sub_1C5A7AAC0(uint64_t a1)
{
  sub_1C5A7B4CC(319, &unk_1EDA4E028, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C5953F60(319, &qword_1EDA45F80, MEMORY[0x1E6981EA0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1C5A7B4CC(319, &qword_1EC195788, type metadata accessor for MaterialMotionContentObserver, MEMORY[0x1E697DA80]);
        if (v4 <= 0x3F)
        {
          sub_1C5953F60(319, &qword_1EC193518, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1C5A7B478(319, &qword_1EDA45FF0, &qword_1EC195790, &qword_1C5BE0E40);
            if (v6 <= 0x3F)
            {
              sub_1C5A7B478(319, &qword_1EC195798, &qword_1EC1957A0, qword_1C5BE0E48);
              if (v7 <= 0x3F)
              {
                sub_1C5A7B4CC(319, &qword_1EC1957A8, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
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

uint64_t sub_1C5A7ACF0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C5BC7A24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v36 = *(a3 + 16);
  v37 = v6;
  v10 = *(v36 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v7 + 64);
  v17 = *(v10 + 80);
  if (v15 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  if (!v8)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v14 + 80) & 0xF8 | 7;
  v20 = *(v10 + 64) + 1;
  v21 = *(*(v13 - 8) + 64) + 7;
  if (v18 < a2)
  {
    v22 = (((v21 & 0xFFFFFFFFFFFFFFF8) + ((v20 + v19 + ((v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17)) & ~v19) + 95) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v22 <= 3)
    {
      v23 = ((a2 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v23 = 2;
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
        v26 = *&a1[v22];
        if (*&a1[v22])
        {
          goto LABEL_30;
        }
      }

      else
      {
        v26 = *&a1[v22];
        if (v26)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v25)
    {
      v26 = a1[v22];
      if (a1[v22])
      {
LABEL_30:
        v27 = (v26 - 1) << (8 * v22);
        if (v22 <= 3)
        {
          v28 = *a1;
        }

        else
        {
          v27 = 0;
          v28 = *a1;
        }

        return v18 + (v28 | v27) + 1;
      }
    }
  }

  if (v9 == v18)
  {
    if (v8 >= 2)
    {
      v32 = (*(v7 + 48))(a1, v8, v37);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = ((&a1[v16 + 7] & 0xFFFFFFFFFFFFFFF8) + v17 + 9) & ~v17;
  if (v11 == v18)
  {
    v31 = *(v10 + 48);

    return v31(v30, v11, v36);
  }

  else
  {
    v33 = (v20 + v30 + v19) & ~v19;
    if (v15 < 0x7FFFFFFE)
    {
      v35 = *((v21 + v33) & 0xFFFFFFFFFFFFFFF8);
      if (v35 >= 0xFFFFFFFF)
      {
        LODWORD(v35) = -1;
      }

      if ((v35 + 1) >= 2)
      {
        return v35;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v34 = *(v14 + 48);

      return v34(v33);
    }
  }
}

void sub_1C5A7B084(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = sub_1C5BC7A24();
  v7 = *(v6 - 8);
  v41 = v7;
  v42 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v40 = *(a4 + 16);
  v10 = *(v40 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  v14 = 0;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = *(v10 + 80);
  if (v16 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = *(v15 + 84);
  }

  if (v12 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v12;
  }

  if (v8)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  v21 = *(v15 + 80) & 0xF8 | 7;
  v22 = *(v10 + 64) + 1;
  v23 = *(*(v13 - 8) + 64) + 7;
  v24 = v23 & 0xFFFFFFF8;
  v25 = (((v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + v21 + ((v17 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17)) & ~v21) + 95) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v19 < a3)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v19 + 255) >> 8) + 1;
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
      v14 = v27;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v19 >= a2)
  {
    v30 = a1;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *&a1[v25] = 0;
        if (!a2)
        {
          return;
        }

LABEL_46:
        if (v9 == v19)
        {
          v31 = v42;
          v32 = *(v41 + 56);
          v33 = a2 + 1;
          v34 = v8;
        }

        else
        {
          v30 = (((&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8) + v17 + 9) & ~v17);
          if (v11 != v19)
          {
            v35 = (&v30[v22 + v21] & ~v21);
            if (v18 >= a2)
            {
              if (v16 < 0x7FFFFFFE)
              {
                v39 = ((v35 + v23) & 0xFFFFFFFFFFFFFFF8);
                if (a2 > 0x7FFFFFFE)
                {
                  *v39 = 0;
                  *v39 = a2 - 0x7FFFFFFF;
                }

                else
                {
                  *v39 = a2;
                }
              }

              else
              {
                v37 = *(v15 + 56);
                v38 = &v30[v22 + v21] & ~v21;

                v37(v38, a2);
              }
            }

            else if (v24 != -8)
            {
              v36 = ~v18 + a2;
              bzero((&v30[v22 + v21] & ~v21), (v24 + 8));
              *v35 = v36;
            }

            return;
          }

          v32 = *(v10 + 56);
          v33 = a2;
          v34 = v11;
          v31 = v40;
        }

        v32(v30, v33, v34, v31);
        return;
      }

      *&a1[v25] = 0;
    }

    else if (v14)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  v28 = ~v19 + a2;
  bzero(a1, (((v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + v21 + ((v17 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17)) & ~v21) + 95) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v25 <= 3)
  {
    v29 = (v28 >> 8) + 1;
  }

  else
  {
    v29 = 1;
  }

  if (v25 <= 3)
  {
    *a1 = v28;
    if (v14 > 1)
    {
LABEL_34:
      if (v14 == 2)
      {
        *&a1[v25] = v29;
      }

      else
      {
        *&a1[v25] = v29;
      }

      return;
    }
  }

  else
  {
    *a1 = v28;
    if (v14 > 1)
    {
      goto LABEL_34;
    }
  }

  if (v14)
  {
    a1[v25] = v29;
  }
}

void sub_1C5A7B478(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C5BCA6C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5A7B4CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C5A7B578()
{
  result = qword_1EC1957B8;
  if (!qword_1EC1957B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1957B8);
  }

  return result;
}

unint64_t sub_1C5A7B5CC()
{
  result = qword_1EC1957C8;
  if (!qword_1EC1957C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1957C8);
  }

  return result;
}

uint64_t sub_1C5A7B628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for NowPlayingArtworkBackground(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5A77ADC(a1, v9, v6, v7, a3);
}

unint64_t sub_1C5A7B730()
{
  result = qword_1EC1957E8;
  if (!qword_1EC1957E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1957F0, &qword_1C5BE1000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1957F8, &qword_1C5BE1008);
    type metadata accessor for MaterialMotionContentObserver(255);
    sub_1C5A7B874();
    sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EC195858, &qword_1EC195860, &qword_1C5BE1040, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1957E8);
  }

  return result;
}

unint64_t sub_1C5A7B874()
{
  result = qword_1EC195800;
  if (!qword_1EC195800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1957F8, &qword_1C5BE1008);
    sub_1C5A7B92C();
    sub_1C5924F54(&qword_1EC195848, &qword_1EC195850, &qword_1C5BE1038, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195800);
  }

  return result;
}

unint64_t sub_1C5A7B92C()
{
  result = qword_1EC195808;
  if (!qword_1EC195808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195810, &qword_1C5BE1010);
    sub_1C5A7B9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195808);
  }

  return result;
}

unint64_t sub_1C5A7B9B8()
{
  result = qword_1EC195818;
  if (!qword_1EC195818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195820, &qword_1C5BE1018);
    sub_1C5A7BA70();
    sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0, &qword_1C5BE1030, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195818);
  }

  return result;
}

unint64_t sub_1C5A7BA70()
{
  result = qword_1EC195828;
  if (!qword_1EC195828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195830, &qword_1C5BE1020);
    sub_1C5924F54(&qword_1EC195838, &qword_1EC195840, &qword_1C5BE1028, &protocol conformance descriptor for MotionView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195828);
  }

  return result;
}

uint64_t sub_1C5A7BB28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5A7BB7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1C5A7BBF8()
{
  result = qword_1EC195878;
  if (!qword_1EC195878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195878);
  }

  return result;
}

uint64_t sub_1C5A7BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for NowPlayingArtworkBackground(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5A79F88(a1, v9, v6, v7);
}

uint64_t PresentedViewState.isPresented.getter()
{
  v4 = *(*v0 + 80);
  v1 = v4;
  swift_getKeyPath(byte_1C5BE1210, &v4);
  v3 = v1;
  swift_getKeyPath(byte_1C5BE1248, &v3);
  sub_1C5BC8034();

  return v5;
}

uint64_t sub_1C5A7BDD0@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PresentedViewState.isPresented.setter(char a1)
{
  v6 = *(*v1 + 80);
  v3 = v6;
  swift_getKeyPath(byte_1C5BE1210, &v6);
  v5 = v3;
  swift_getKeyPath(byte_1C5BE1248, &v5);
  v7 = a1;

  return sub_1C5BC8044();
}

uint64_t (*PresentedViewState.isPresented.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = *(v5 + 80);
  KeyPath = swift_getKeyPath(byte_1C5BE1210, v4, v6);
  v3[4] = KeyPath;
  *&v8 = MEMORY[0x1EEE9AC00](KeyPath).n128_u64[0];
  v3[5] = swift_getKeyPath(byte_1C5BE1248, v8, v6);
  v3[6] = sub_1C5BC8024();
  return sub_1C5A7BFCC;
}

void sub_1C5A7BFCC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t PresentedViewState.$isPresented.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  sub_1C5BC8004();
  return swift_endAccess();
}

uint64_t sub_1C5A7C0A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8, &qword_1C5BE1270);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return PresentedViewState.$isPresented.setter(v5);
}

uint64_t PresentedViewState.$isPresented.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8, &qword_1C5BE1270);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  sub_1C5BC8014();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PresentedViewState.$isPresented.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8, &qword_1C5BE1270);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  PresentedViewState.$isPresented.getter();
  return sub_1C5A7C3C8;
}

void sub_1C5A7C3C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PresentedViewState.$isPresented.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PresentedViewState.$isPresented.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PresentedViewState.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_1C5BCB804();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PresentedViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  PresentedViewState.init()();
  return v0;
}

uint64_t *PresentedViewState.init()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  v6 = qword_1EDA4B330;
  v7 = *(v1 + 80);
  v9[15] = 0;
  sub_1C5BC7FF4();
  (*(v3 + 32))(v0 + v6, v5, v2);
  (*(*(v7 - 8) + 56))(v0 + *(*v0 + 96), 1, 1, v7);
  return v0;
}

void PresentedViewState.present(_:animated:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_1C5BCB804();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = *(v5 - 8);
  (*(v11 + 16))(&v13 - v9, a1, v5, v8);
  (*(v11 + 56))(v10, 0, 1, v5);
  v12 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v12, v10, v6);
  swift_endAccess();
  if (a2)
  {
    sub_1C5BCAB14();
    sub_1C5BC87F4();
  }

  else
  {
    PresentedViewState.isPresented.setter(1);
  }
}

uint64_t *PresentedViewState.deinit()
{
  v1 = qword_1EDA4B330;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0, &qword_1C5BEAEA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = sub_1C5BCB804();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PresentedViewState.__deallocating_deinit()
{
  PresentedViewState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A7C9E8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t View.viewPresenting<A, B>(_:modifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[0] = a6;
  v20[1] = a7;
  v11 = *a1;
  v12 = sub_1C5BC8AB4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  MEMORY[0x1C694E550](a2, a3, a4, a5, v14);
  type metadata accessor for PresentedViewState(0, *(v11 + 80), v17, v18);
  v20[2] = a5;
  v20[3] = v20[0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC9FF4();
  return (*(v13 + 8))(v16, v12);
}

void sub_1C5A7CBE4(uint64_t a1)
{
  sub_1C5924EA4();
  if (v1 <= 0x3F)
  {
    sub_1C5BCB804();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_1C5A7CDD8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DisableDragView.DisableDragUIView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_1C5A7CE34()
{
  sub_1C5A0594C();

  return sub_1C5BC8F44();
}

uint64_t VideoGravity.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

double MCUINamespace<A>.videoGravity(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath(asc_1C5BE1320);
  sub_1C5BC9DF4();

  return result;
}

uint64_t sub_1C5A7CF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A7D0EC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.videoGravity(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MCUINamespace(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-v9];
  LOBYTE(a1) = *a1;
  View.mcui.getter(a2, &v13[-v9]);
  v14 = a1;
  v11 = MCUINamespace<A>.videoGravity(_:)(&v14, v7, a3);
  return (*(v8 + 8))(v10, v7, v11);
}

unint64_t sub_1C5A7D0EC()
{
  result = qword_1EC1958D0;
  if (!qword_1EC1958D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1958D0);
  }

  return result;
}

unint64_t sub_1C5A7D150()
{
  result = qword_1EDA461A0;
  if (!qword_1EDA461A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1958D8, &qword_1C5BE13D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA461A0);
  }

  return result;
}

uint64_t sub_1C5A7D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_1C5BC8534();
  return (*(v14 + 8))(a1, a4);
}

void sub_1C5A7D31C(void (*a1)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v12[1] = MEMORY[0x1E69E7CC0];
    sub_1C5BCBB44();
    for (i = (a3 + 48); ; i += 3)
    {
      v9 = *(i - 1);
      v10 = *i;
      v11[0] = *(i - 2);
      v11[1] = v9;
      v11[2] = v10;

      (a1)(v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1C5BCBB24();
      sub_1C5BCBB54();
      sub_1C5BCBB64();
      sub_1C5BCBB34();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1C5A7D428(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
    return;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1C5B8F068(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v19;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v7 < v5)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

      v17 = a3 + v7;
      a1(&v18, &v17);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v18;
      v19 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C5B8F068((v13 > 1), v14 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v14 + 1;
      *(v8 + 8 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v7)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
}

void sub_1C5A7D660(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6988158]) init];
  [v5 setStyle_];

  *a3 = v5;
}

uint64_t sub_1C5A7D6C8()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A6B28 = result;
  unk_1EC1A6B30 = v4;
  return result;
}

uint64_t sub_1C5A7D808()
{
  swift_getKeyPath(a0_6);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  v1 = *(v0 + 24);

  return v1;
}

double sub_1C5A7D8B8@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a0_6);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C5AA3F20;
  a2[1] = v6;

  return result;
}

double sub_1C5A7D990(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath(a0_6);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);

  sub_1C5BC7B64();

  return result;
}

uint64_t sub_1C5A7DAAC()
{
  v1 = 0x2D2D3A2D2DLL;
  v2 = *(v0 + 16);
  v3 = *(*(v2 + 72) + 80);
  swift_getKeyPath(asc_1C5BE28E0);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if ((*(v3 + 32) & 1) == 0)
  {
    v4 = *(v3 + 24);
    swift_getKeyPath(byte_1C5BE27E0);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
    sub_1C5BC7B74();

    if ((*(v0 + 57) & 1) == 0)
    {
      if (qword_1EC190720 != -1)
      {
        swift_once();
      }

      v5 = qword_1EC1A6B20;
      v6 = *(v2 + 72);
      swift_getKeyPath(asc_1C5BE2908);
      sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
      sub_1C5BC7B74();

      v7 = [v5 stringFromSeconds_];
      v1 = sub_1C5BCAE74();
    }
  }

  return v1;
}

void sub_1C5A7DCE0(uint64_t a1)
{
  swift_getKeyPath(byte_1C5BE2838);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  if (*(v1 + 40) != a1)
  {
    v3 = *MEMORY[0x1E69DD888];
    swift_getKeyPath(byte_1C5BE2838);
    sub_1C5BC7B74();

    sub_1C5A7DE00(*(v1 + 40));
    v4 = sub_1C5BCAE44();

    UIAccessibilityPostNotification(v3, v4);
  }
}

uint64_t sub_1C5A7DE00(uint64_t a1)
{
  v2 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (qword_1EC190760 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BA0 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (qword_1EC190768 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BA8 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (qword_1EC190770 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BB0 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
LABEL_15:
      v4 = qword_1EDA5DD00;
      sub_1C5BC7B14();
      return sub_1C5BCAE94();
    }

LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  if (qword_1EC190778 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BB8 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_1C5A7E1D8()
{
  swift_getKeyPath(byte_1C5BE2838);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  return *(v0 + 40);
}

void sub_1C5A7E278(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2838);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  *a2 = *(v3 + 40);
}

double sub_1C5A7E320(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {

    sub_1C5A7DCE0(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2838);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
    sub_1C5BC7B64();
  }

  return result;
}

double sub_1C5A7E450(char *a1, __n128 a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(v2 + 16);
  v6 = *(v5 + 72);
  v7 = *(v6 + 96);
  *(v6 + 96) = a2.n128_u64[0];
  a2.n128_u64[0] = v7;
  sub_1C5A89794(a2);
  v8 = *(*(v5 + 72) + 80);
  swift_getKeyPath(byte_1C5BE2948);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  sub_1C5A83BDC(v9);

  swift_getKeyPath(a0_6, v8);
  v12 = v3;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  v10 = *(v3 + 24);
  v12 = *(*(v5 + 72) + 96);
  v13 = v4;

  v10(&v12);

  return result;
}

double sub_1C5A7E5D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961F0, &unk_1C5BE2E40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196200, &qword_1C5BE2E50);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  swift_beginAccess();
  *(v2 + 48) = MEMORY[0x1E69E7CD0];

  if (a1)
  {
    v40 = v5;
    v41 = *(a1 + 24);
    sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);

    v39 = v4;
    v16 = sub_1C5BCB5A4();
    v38 = v7;
    v17 = v16;
    v42 = v16;
    v36 = sub_1C5BCB594();
    v18 = *(v36 - 8);
    v35 = *(v18 + 56);
    v37 = v18 + 56;
    v35(v10, 1, 1, v36);
    v31 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195A28, &unk_1C5BE1640);
    v32 = v11;
    sub_1C5924F54(&qword_1EC196220, &qword_1EC195A28, &unk_1C5BE1640, MEMORY[0x1E695BFB0]);
    v34 = sub_1C5A11814(&qword_1EDA4E630, &qword_1EDA4E620, 0x1E69E9610, MEMORY[0x1E69E8028]);
    sub_1C5BC80D4();
    sub_1C5924EF4(v10, &unk_1EC199F20, &qword_1C5BD88C0);

    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v21 = v31;
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v19;
    v33 = MEMORY[0x1E695BE98];
    sub_1C5924F54(&qword_1EC196228, &qword_1EC196200, &qword_1C5BE2E50, MEMORY[0x1E695BE98]);
    v23 = v32;
    sub_1C5BC8114();

    (*(v12 + 8))(v14, v23);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    v41 = *(v21 + 16);

    v24 = sub_1C5BCB5A4();
    v42 = v24;
    v35(v10, 1, 1, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195A20, &qword_1C5BE1638);
    sub_1C5924F54(&unk_1EC196208, &qword_1EC195A20, &qword_1C5BE1638, MEMORY[0x1E695BF88]);
    v25 = v38;
    sub_1C5BC80D4();
    sub_1C5924EF4(v10, &unk_1EC199F20, &qword_1C5BD88C0);

    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v26;
    sub_1C5924F54(&qword_1EC196218, &unk_1EC1961F0, &unk_1C5BE2E40, v33);
    v29 = v39;
    sub_1C5BC8114();

    (*(v40 + 8))(v25, v29);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();
  }

  return result;
}

void sub_1C5A7EBF0(double *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v9, v4);

  v10 = sub_1C5BC7D44();
  v11 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 134218242;
    *(v12 + 4) = v8;
    *(v12 + 12) = 2082;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v26 = v13;
      v15 = sub_1C5BCAEA4();
      v17 = v16;
      v13 = v26;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_1C592ADA8(v15, v17, v28);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_1C5922000, v10, v11, "ScrubberViewModel seeking to time %f requested by proxy %{public}s", v12, 0x16u);
    v19 = __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1C69510F0](v13, -1, -1, v19);
    MEMORY[0x1C69510F0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v22 = *(v20 + 16);
    v23 = *(v22 + 72);
    v21.n128_u64[0] = *(v23 + 96);
    *(v23 + 96) = v8;
    sub_1C5A89794(v21);
    v24 = *(*(v22 + 72) + 80);
    swift_getKeyPath(byte_1C5BE2948);
    v27 = v24;
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
    sub_1C5BC7B74();

    sub_1C5A83BDC(v25);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C5A82F70(v8);
  }
}

void sub_1C5A7EF88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C5BC7D64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  v16 = *a1;
  v15 = a1[1];
  if (v15 >> 62)
  {
    if (v15 >> 62 == 1)
    {
      v17 = *(a1 + 2);
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
      (*(v6 + 16))(v11, v18, v5);

      v19 = sub_1C5BC7D44();
      v20 = sub_1C5BCB4F4();

      if (os_log_type_enabled(v19, v20))
      {
        v56 = a3;
        v21 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v57 = v54;
        *v21 = 136446466;
        v55 = v16;
        v58 = v16;
        v59 = v15 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78, &qword_1C5BD3CF0);
        v22 = sub_1C5BCAEA4();
        v24 = sub_1C592ADA8(v22, v23, &v57);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2082;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v58 = Strong;
          v26 = sub_1C5BCAEA4();
          v28 = v27;
        }

        else
        {
          v26 = 7104878;
          v28 = 0xE300000000000000;
        }

        v45 = sub_1C592ADA8(v26, v28, &v57);

        *(v21 + 14) = v45;
        _os_log_impl(&dword_1C5922000, v19, v20, "ScrubberViewModel showing section delimiters for %{public}s seconds requested by proxy %{public}s", v21, 0x16u);
        v46 = v54;
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v46, -1, -1);
        MEMORY[0x1C69510F0](v21, -1, -1);

        (*(v6 + 8))(v11, v5);
        v16 = v55;
      }

      else
      {

        (*(v6 + 8))(v11, v5);
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_1C5A843D0(v16, v15 & 1, v17);
LABEL_41:
      }
    }

    else
    {
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v38 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
      (*(v6 + 16))(v8, v38, v5);

      v39 = sub_1C5BC7D44();
      v40 = sub_1C5BCB4F4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v58 = v42;
        *v41 = 136315394;
        v55 = v16;
        v56 = a3;
        if (v16)
        {
          if (v16 == 1)
          {
            v43 = 0x676E696B63617274;
          }

          else
          {
            v43 = 0x6172656C65636564;
          }

          if (v16 == 1)
          {
            v44 = 0xE800000000000000;
          }

          else
          {
            v44 = 0xEC000000676E6974;
          }
        }

        else
        {
          v44 = 0xE400000000000000;
          v43 = 1701602409;
        }

        v49 = sub_1C592ADA8(v43, v44, &v58);

        *(v41 + 4) = v49;
        *(v41 + 12) = 2082;
        swift_beginAccess();
        v50 = swift_weakLoadStrong();
        if (v50)
        {
          v57 = v50;
          v16 = sub_1C5BCAEA4();
          v52 = v51;
        }

        else
        {
          v16 = 7104878;
          v52 = 0xE300000000000000;
        }

        v53 = sub_1C592ADA8(v16, v52, &v58);

        *(v41 + 14) = v53;
        _os_log_impl(&dword_1C5922000, v39, v40, "ScrubberViewModel scrubState changed to %s requested by proxy %{public}s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v42, -1, -1);
        MEMORY[0x1C69510F0](v41, -1, -1);

        (*(v6 + 8))(v8, v5);
        LOBYTE(v16) = v55;
      }

      else
      {

        (*(v6 + 8))(v8, v5);
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        LOBYTE(v57) = v16;
        sub_1C5A820C8(&v57);
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
    (*(v6 + 16))(v14, v29, v5);

    v30 = sub_1C5BC7D44();
    v31 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v30, v31))
    {
      v56 = a3;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v32 = 134218242;
      v55 = v16;
      *(v32 + 4) = v16;
      *(v32 + 12) = 2082;
      swift_beginAccess();
      v34 = swift_weakLoadStrong();
      if (v34)
      {
        v57 = v34;
        v35 = sub_1C5BCAEA4();
        v37 = v36;
      }

      else
      {
        v35 = 7104878;
        v37 = 0xE300000000000000;
      }

      v47 = sub_1C592ADA8(v35, v37, &v58);

      *(v32 + 14) = v47;
      _os_log_impl(&dword_1C5922000, v30, v31, "ScrubberViewModel notifying jumped by %f requested by proxy %{public}s", v32, 0x16u);
      v48 = __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1C69510F0](v33, -1, -1, v48);
      MEMORY[0x1C69510F0](v32, -1, -1);

      (*(v6 + 8))(v14, v5);
      v16 = v55;
    }

    else
    {

      (*(v6 + 8))(v14, v5);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1C5A86138(*&v16);
      goto LABEL_41;
    }
  }
}

uint64_t ScrubState.rawValue.getter()
{
  v1 = 0x676E696B63617274;
  if (*v0 != 1)
  {
    v1 = 0x6172656C65636564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_1C5A7F844()
{
  swift_getKeyPath(byte_1C5BE2D08);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  return *(v0 + 56);
}

void sub_1C5A7F8E4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2D08);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  *a2 = *(v3 + 56);
}

void sub_1C5A7F98C(char a1)
{
  if (*(v1 + 56) == (a1 & 1))
  {
    *(v1 + 56) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2D08);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A7FA9C()
{
  swift_getKeyPath(byte_1C5BE27E0);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  return *(v0 + 57);
}

void sub_1C5A7FB3C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE27E0);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  *a2 = *(v3 + 57);
}

void sub_1C5A7FBE4(char a1)
{
  if (*(v1 + 57) == (a1 & 1))
  {
    *(v1 + 57) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE27E0);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A7FCF4()
{
  swift_getKeyPath(byte_1C5BE2808);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  return *(v0 + 58);
}

void sub_1C5A7FD94(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2808);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  *a2 = *(v3 + 58);
}

void sub_1C5A7FE3C(char a1)
{
  if (*(v1 + 58) == (a1 & 1))
  {
    *(v1 + 58) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2808);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
    sub_1C5BC7B64();
  }
}

void sub_1C5A7FF4C(double *a1)
{
  v2 = v1;
  v44 = sub_1C5BC7D64();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v42 = v40 - v6;
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = v40 - v9;
  v11 = *a1;
  v12 = *(a1 + 2);
  v46 = *(a1 + 1);
  v47 = v12;
  v13 = a1[1];
  v45 = *(a1 + 16);
  swift_getKeyPath(byte_1C5BE2D08, v8);
  v14 = OBJC_IVAR____TtC11MediaCoreUI17ScrubberViewModel___observationRegistrar;
  v49 = v2;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  if (v11 == *(*&v2 + 56))
  {
    v41 = v13;
    v17 = v11 ^ 1;
    KeyPath = swift_getKeyPath(byte_1C5BE2D08);
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v40[-2] = v2;
    LOBYTE(v40[-1]) = v17;
    v49 = v2;
    v40[1] = v14;
    sub_1C5BC7B64();

    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v16 = v44;
    v19 = __swift_project_value_buffer(v44, qword_1EC1A6BC0);
    (*(v48 + 16))(v10, v19, v16);
    v20 = sub_1C5BC7D44();
    v21 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = v17;
      _os_log_impl(&dword_1C5922000, v20, v21, "ScrubberViewModel.isInteractionEnabled changed to %{BOOL}d", v22, 8u);
      MEMORY[0x1C69510F0](v22, -1, -1);
    }

    v15 = v48;
    (*(v48 + 8))(v10, v16);
    v13 = v41;
  }

  else
  {
    v15 = v48;
    v16 = v44;
  }

  swift_getKeyPath(byte_1C5BE27E0);
  v49 = v2;
  sub_1C5BC7B74();

  v23 = v46;
  if (v46 != *(*&v2 + 57))
  {
    v24 = swift_getKeyPath(byte_1C5BE27E0);
    MEMORY[0x1EEE9AC00](v24);
    *&v40[-2] = v2;
    LOBYTE(v40[-1]) = v23;
    v49 = v2;
    sub_1C5BC7B64();

    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v16, qword_1EC1A6BC0);
    v26 = v42;
    (*(v15 + 16))(v42, v25, v16);
    v27 = sub_1C5BC7D44();
    v28 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = v46;
      _os_log_impl(&dword_1C5922000, v27, v28, "ScrubberViewModel.showPlaceholderLabels changed to %{BOOL}d", v29, 8u);
      v30 = v29;
      v15 = v48;
      MEMORY[0x1C69510F0](v30, -1, -1);
    }

    (*(v15 + 8))(v26, v16);
  }

  swift_getKeyPath(byte_1C5BE2808);
  v49 = v2;
  sub_1C5BC7B74();

  v31 = v47;
  if (v47 != *(*&v2 + 58))
  {
    v32 = swift_getKeyPath(byte_1C5BE2808);
    MEMORY[0x1EEE9AC00](v32);
    *&v40[-2] = v2;
    LOBYTE(v40[-1]) = v31;
    v49 = v2;
    sub_1C5BC7B64();

    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v16, qword_1EC1A6BC0);
    v34 = v43;
    (*(v15 + 16))(v43, v33, v16);
    v35 = sub_1C5BC7D44();
    v36 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      *(v37 + 4) = v47;
      _os_log_impl(&dword_1C5922000, v35, v36, "ScrubberViewModel.showSpinner changed to %{BOOL}d", v37, 8u);
      MEMORY[0x1C69510F0](v37, -1, -1);
    }

    (*(v15 + 8))(v34, v16);
  }

  swift_getKeyPath(byte_1C5BE2DE8);
  v49 = v2;
  sub_1C5BC7B74();

  if (*(*&v2 + 72))
  {
    v38 = v45;
    if (v45)
    {
      return;
    }

LABEL_27:
    v49 = v13;
    v50 = v38;
    sub_1C5BC7F34();
    return;
  }

  v38 = v45;
  if (*(*&v2 + 64) == v13)
  {
    v39 = v45;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    goto LABEL_27;
  }
}

uint64_t sub_1C5A80680()
{
  v1 = sub_1C5BC7D64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EC1A6BC0);
  (*(v2 + 16))(v4, v5, v1);

  v6 = sub_1C5BC7D44();
  v7 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getKeyPath(byte_1C5BE2DE8);
    v17 = v0;
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
    sub_1C5BC7B74();

    v10 = *(v0 + 72);
    v17 = *(v0 + 64);
    v18 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78, &qword_1C5BD3CF0);
    v11 = sub_1C5BCAEA4();
    v13 = sub_1C592ADA8(v11, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C5922000, v6, v7, "ScrubberViewModel.availableDuration changed to %{public}s", v8, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1C69510F0](v9, -1, -1, v14);
    MEMORY[0x1C69510F0](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C5A80924()
{
  swift_getKeyPath(byte_1C5BE2DE8);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  return *(v0 + 64);
}

void sub_1C5A809C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2DE8);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  *(a2 + 8) = v4;
}

double sub_1C5A80A78(uint64_t a1, char a2)
{
  if (*(v2 + 72))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath(byte_1C5BE2DE8);
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
      sub_1C5BC7B64();

      return result;
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 64) != *&a1)
  {
    goto LABEL_9;
  }

  *(v2 + 64) = *&a1;
  *(v2 + 72) = a2 & 1;

  sub_1C5A80680();
  return result;
}

double sub_1C5A80BD4()
{
  swift_getKeyPath(byte_1C5BE2E18);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  return result;
}

double sub_1C5A80C78@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2E18);
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  *a2 = *(v3 + 80);

  return result;
}

double sub_1C5A80D24(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 80))
  {
    if (a1)
    {
      sub_1C5BC7F04();
      sub_1C5A9B150(&unk_1EC194D78, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);

      v4 = sub_1C5BCADB4();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath(byte_1C5BE2E18);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
    sub_1C5BC7B64();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 80) = a1;

  return result;
}

uint64_t sub_1C5A80ECC()
{
  v1 = v0;
  v2 = sub_1C5BCB7D4();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196290, &qword_1C5BE2EA8);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196298, &unk_1C5BE2EB0);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v23 = &v18 - v9;
  type metadata accessor for ScrubberInteractionViewModel(0);
  v10 = swift_allocObject();
  sub_1C5A877D8();
  *(v1 + 16) = v10;
  *(v1 + 24) = CGSizeMake;
  *(v1 + 32) = 0;
  if (qword_1EC190760 != -1)
  {
    swift_once();
  }

  v11 = MEMORY[0x1E69E7CD0];
  *(v1 + 40) = qword_1EC1A6BA0;
  *(v1 + 48) = v11;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1962A0, &qword_1C5BEC0E0);
  swift_allocObject();
  *(v1 + 88) = sub_1C5BC7F44();
  sub_1C5BC7BA4();
  v27 = *(v1 + 88);

  sub_1C5BCB7C4();
  v12 = [objc_opt_self() mainRunLoop];
  v26 = v12;
  sub_1C592535C(0, &unk_1EC1962A8, 0x1E695DFD0);
  sub_1C5924F54(&qword_1EDA46880, &qword_1EC1962A0, &qword_1C5BEC0E0, MEMORY[0x1E695BF88]);
  sub_1C5A11814(&qword_1EC1962B8, &unk_1EC1962A8, 0x1E695DFD0, MEMORY[0x1E696A010]);
  sub_1C5BC80E4();

  (*(v19 + 8))(v4, v20);

  sub_1C5924F54(&qword_1EC1962C0, &qword_1EC196290, &qword_1C5BE2EA8, MEMORY[0x1E695BE68]);
  sub_1C59BD6B8();
  v13 = v22;
  v14 = v23;
  sub_1C5BC80F4();
  (*(v21 + 8))(v7, v13);
  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&unk_1EC1962C8, &qword_1EC196298, &unk_1C5BE2EB0, MEMORY[0x1E695BD38]);
  v15 = v25;
  v16 = sub_1C5BC8114();

  (*(v24 + 8))(v14, v15);
  sub_1C5A80D24(v16);
  return v1;
}

double sub_1C5A81388(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C5A813FC(v2, v3);
  }

  return result;
}

uint64_t sub_1C5A813FC(uint64_t a1, int a2)
{
  v13 = a2;
  v4 = sub_1C5BC9704();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath(byte_1C5BE2DE8, v6);
  v14 = v2;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);
  sub_1C5BC7B74();

  if (*(v2 + 72) == 1)
  {
    sub_1C5A80A78(0, 0);
  }

  if (qword_1EC190790 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  v10 = swift_weakInit();
  MEMORY[0x1EEE9AC00](v10);
  *&v12[-32] = a1;
  v12[-24] = v13 & 1;
  *&v12[-16] = v9;
  swift_allocObject();
  swift_weakInit();

  sub_1C5BC96F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961E0, &qword_1C5BE2E10);
  sub_1C5BC87E4();
  (*(v5 + 8))(v8, v4);
}

void sub_1C5A816A0(uint64_t a1@<X0>, char a2@<W1>, char *a4@<X8>)
{
  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v6 = *(*(*(Strong + 16) + 72) + 80);
        swift_getKeyPath(asc_1C5BE28E0);
        sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
        sub_1C5BC7B74();

        v7 = *(v6 + 24);
        v8 = *(v6 + 32);
      }

      else
      {
        v7 = 0;
        v8 = 1;
      }

      v10 = v7;
      v11 = v8;
      goto LABEL_10;
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = a1;
      v11 = 0;
LABEL_10:
      sub_1C5A80A78(v10, v11);

      v12 = 0;
      goto LABEL_11;
    }
  }

  v12 = 1;
LABEL_11:
  *a4 = v12;
}

void sub_1C5A8182C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(*(*(Strong + 16) + 72) + 80);
    swift_getKeyPath(asc_1C5BE28E0);
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
    sub_1C5BC7B74();

    if (*(v3 + 32) & 1) != 0 || (v4 = *(v3 + 24), swift_getKeyPath(byte_1C5BE2DE8), sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC), sub_1C5BC7B74(), , (*(v2 + 72)) || v4 > *(v2 + 64))
    {
    }

    else
    {
      KeyPath = swift_getKeyPath(byte_1C5BE2DE8);
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5BC7B64();
    }
  }
}

uint64_t sub_1C5A81A34()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI17ScrubberViewModel___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A81AF8()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 80);
  swift_getKeyPath(asc_1C5BE28E0);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  if (*(v2 + 32))
  {
    return 0x2D2D3A2D2DLL;
  }

  if (qword_1EC190718 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC1A6B18;
  swift_getKeyPath(asc_1C5BE2908);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  v5 = [v4 stringFromSeconds_];
  v6 = sub_1C5BCAE74();

  return v6;
}

uint64_t sub_1C5A81C94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058, &qword_1C5BD7418);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  v12 = *(v1 + 16);
  sub_1C59400B0(a1, &v16[-v10], &unk_1EC193058, &qword_1C5BD7418);
  v13 = *(v12 + 72);
  sub_1C59400B0(v11, v8, &unk_1EC193058, &qword_1C5BD7418);
  v14 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate;
  swift_beginAccess();
  sub_1C59400B0(v13 + v14, v5, &unk_1EC193058, &qword_1C5BD7418);
  swift_beginAccess();
  sub_1C5AA3184(v8, v13 + v14);
  swift_endAccess();
  sub_1C5A89E90(v5);
  sub_1C5924EF4(a1, &unk_1EC193058, &qword_1C5BD7418);
  sub_1C5924EF4(v5, &unk_1EC193058, &qword_1C5BD7418);
  sub_1C5924EF4(v8, &unk_1EC193058, &qword_1C5BD7418);
  return sub_1C5924EF4(v11, &unk_1EC193058, &qword_1C5BD7418);
}

uint64_t sub_1C5A81E3C()
{
  swift_getKeyPath(asc_1C5BE2B18);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  return *(v0 + 16);
}

void sub_1C5A81EE0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1C5BE2B18);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v4;
}

double sub_1C5A81F90(uint64_t a1, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 16);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = *&a1;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath(asc_1C5BE2B18);
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B64();

  return result;
}

void sub_1C5A820C8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  v14 = v3;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  v4 = 0xE800000000000000;
  v5 = 0x676E696B63617274;
  if (*(v3 + 57) != 1)
  {
    v5 = 0x6172656C65636564;
    v4 = 0xEC000000676E6974;
  }

  if (*(v3 + 57))
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701602409;
  }

  if (*(v3 + 57))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v9 = 0x6172656C65636564;
    v8 = 0xEC000000676E6974;
  }

  if (v2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1701602409;
  }

  if (v2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v12 = sub_1C5BCBDE4();

    if ((v12 & 1) == 0)
    {
      v13 = v2;
      sub_1C5A88ABC(&v13);
      sub_1C5A8227C();
    }
  }
}

void sub_1C5A8227C()
{
  v1 = v0;
  v2 = sub_1C5BC9704();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 72);
  swift_getKeyPath(byte_1C5BE15A0, v4);
  v20 = v7;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  if (*(v7 + 57) && *(v7 + 57) == 1)
  {

    v8 = 1.05;
  }

  else
  {
    v9 = sub_1C5BCBDE4();

    if (v9)
    {
      v8 = 1.05;
    }

    else
    {
      v8 = 1.0;
    }
  }

  if (*(v0 + 64) == v8)
  {
    *(v0 + 64) = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath(a8_6);
    v19 = v6;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v18 - 2) = v0;
    *(&v18 - 1) = v8;
    v20 = v0;
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();

    v6 = v19;
  }

  swift_getKeyPath(byte_1C5BE15A0);
  v20 = v7;
  sub_1C5BC7B74();

  if (*(v7 + 57))
  {
    if (*(v7 + 57) == 1)
    {
      [*(v0 + 128) invalidate];
      swift_getKeyPath(byte_1C5BE2DC0);
      v20 = v0;
      sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
      sub_1C5BC7B74();

      if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8) & 1) == 0)
      {
        sub_1C5BC87F4();
      }

      swift_getKeyPath(byte_1C5BE2C78);
      v20 = v0;
      sub_1C5BC7B74();

      if ((*(v0 + 120) & 1) == 0)
      {
        v19 = v3;
        if (qword_1EC190788 != -1)
        {
          v11 = swift_once();
        }

        v18 = &v18;
        MEMORY[0x1EEE9AC00](v11);
        *(&v18 - 2) = v0;
        *(&v18 - 8) = 1;
        v12 = swift_allocObject();
        *(v12 + 16) = 1;
        *(v12 + 24) = v0;

        sub_1C5BC96F4();
        sub_1C5BC87E4();

        (*(v19 + 1))(v6, v2);
      }

      v13 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub);
      *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) = 0;
      sub_1C5A86C70(v13);
      swift_getKeyPath(byte_1C5BE2C78);
      v20 = v0;
      sub_1C5BC7B74();

      if ((*(v0 + 120) & 1) == 0)
      {
        if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating))
        {
          v14 = swift_getKeyPath(asc_1C5BE2D70);
          MEMORY[0x1EEE9AC00](v14);
          *(&v18 - 2) = v0;
          *(&v18 - 8) = 0;
          v20 = v0;
          sub_1C5BC7B64();
        }

        else
        {
          *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 0;
          sub_1C5A8672C(0);
        }
      }

      sub_1C5A87328();
      if (qword_1EC190780 != -1)
      {
        swift_once();
      }

      [*(v0 + 112) invalidate];
      v17 = *(v0 + 112);
      *(v0 + 112) = 0;

      sub_1C5BC87F4();
    }

    else
    {
      v15 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer;
      [*(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer) invalidate];
      v16 = *(v1 + v15);
      *(v1 + v15) = 0;
    }
  }

  else
  {
    sub_1C5A85760();
    sub_1C5A84974(3.5);
  }
}

void sub_1C5A82940(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  if (*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8) == 1)
  {
    v2 = *v1;
    *v1 = 0;
    *(v1 + 8) = 1;
    sub_1C5A85B30(v2, 1);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2DC0);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }
}

double sub_1C5A82A7C()
{
  swift_getKeyPath(byte_1C5BE2AA0);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  return *(v0 + 32);
}

__n128 sub_1C5A82B20@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2AA0);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  result = *(v3 + 32);
  v5 = *(v3 + 48);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1C5A82BC8(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *&v5.f64[0] = a1.n128_u64[0];
  *&v5.f64[1] = a2.n128_u64[0];
  *&v6.f64[0] = a3.n128_u64[0];
  *&v6.f64[1] = a4.n128_u64[0];
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 32), v5), vceqq_f64(*(v4 + 48), v6)))))
  {
    *(v4 + 32) = a1.n128_u64[0];
    *(v4 + 40) = a2.n128_u64[0];
    *(v4 + 48) = a3.n128_u64[0];
    *(v4 + 56) = a4.n128_u64[0];
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2AA0);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }
}

double sub_1C5A82D10()
{
  swift_getKeyPath(a8_6);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  return *(v0 + 64);
}

double sub_1C5A82DB0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a8_6);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  result = *(v3 + 64);
  *a2 = result;
  return result;
}

void sub_1C5A82E58(double a1)
{
  if (*(v1 + 64) == a1)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a8_6);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }
}

void sub_1C5A82F70(double a1)
{
  v2 = *(v1 + 72);
  if (*(v2 + 72) == a1)
  {
    *(v2 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2970);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
    sub_1C5BC7B64();
  }

  swift_getKeyPath(byte_1C5BE2948);
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  sub_1C5A83BDC(v4);
}

void sub_1C5A8311C(double *a1)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = *(a1 + 1);
  v11 = a1[2];
  swift_getKeyPath(asc_1C5BE2D98, v6);
  v12 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel___observationRegistrar;
  v37 = v2;
  v36 = sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v13 = *(v2 + 88);
  if (!v13)
  {
    if (!v9)
    {

      return;
    }

    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:

    goto LABEL_8;
  }

  v14 = *(v2 + 96);
  if (*(v2 + 80) == v10 && v13 == v9)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v24 = sub_1C5BCBDE4();
    swift_bridgeObjectRetain_n();
    if ((v24 & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }
  }

  swift_bridgeObjectRelease_n();
  if (v14 == v11)
  {
    return;
  }

LABEL_8:
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v8, v15, v4);

  v16 = sub_1C5BC7D44();
  v17 = sub_1C5BCB4F4();

  v18 = os_log_type_enabled(v16, v17);
  v35 = v12;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v19 = 136446210;
    swift_getKeyPath(asc_1C5BE2D98);
    v37 = v2;
    sub_1C5BC7B74();

    v20 = *(v2 + 88);
    if (v20)
    {
      v21 = *(v2 + 80);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1C5BCBA94();
      MEMORY[0x1C694F170](0x203A656C74697428, 0xE900000000000022);
      MEMORY[0x1C694F170](v21, v20);
      MEMORY[0x1C694F170](0x7472617473202C22, 0xEE00203A656D6954);
      sub_1C5BCB324();
      MEMORY[0x1C694F170](41, 0xE100000000000000);
      v22 = v37;
      v23 = v38;
    }

    else
    {
      v23 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_1C592ADA8(v22, v23, &v39);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_1C5922000, v16, v17, "ScrubberInteractionViewModel.currentSection changed to %{public}s", v19, 0xCu);
    v26 = v34;
    v27 = __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1C69510F0](v26, -1, -1, v27);
    MEMORY[0x1C69510F0](v19, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v28 = *(v2 + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  v37 = v28;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  if (*(v28 + 57))
  {
    v29 = sub_1C5BCBDE4();

    if ((v29 & 1) == 0)
    {
      if (*(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating))
      {
        KeyPath = swift_getKeyPath(asc_1C5BE2D70);
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v33 - 2) = v2;
        *(&v33 - 8) = 0;
        v37 = v2;
        sub_1C5BC7B64();
      }

      else
      {
        *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 0;
        sub_1C5A8672C(0);
      }

      v31 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub);
      *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) = 0;
      sub_1C5A86C70(v31);
    }
  }

  else
  {
  }

  swift_getKeyPath(byte_1C5BE15A0);
  v37 = v28;
  sub_1C5BC7B74();

  if (*(v28 + 57) && *(v28 + 57) == 1)
  {
  }

  else
  {
    v32 = sub_1C5BCBDE4();

    if ((v32 & 1) == 0)
    {
      return;
    }
  }

  sub_1C5A87328();
}

uint64_t ScrubberSection.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x203A656C74697428, 0xE900000000000022);
  MEMORY[0x1C694F170](v1, v2);
  MEMORY[0x1C694F170](0x7472617473202C22, 0xEE00203A656D6954);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](41, 0xE100000000000000);
  return 0;
}

double sub_1C5A83888@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(asc_1C5BE2D98);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  *a1 = *(v1 + 80);
  *(a1 + 8) = *(v1 + 88);

  return result;
}

double sub_1C5A83940@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1C5BE2D98);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  *a2 = *(v3 + 80);
  *(a2 + 8) = *(v3 + 88);

  return result;
}

double sub_1C5A839F8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];

  LOBYTE(v5) = sub_1C5AA226C(v5, v6, v7, v3, v2, v4);

  if (v5)
  {
    KeyPath = swift_getKeyPath(asc_1C5BE2D98);
    MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v1;
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }

  else
  {
    v11 = v1[10];
    v10 = *(v1 + 11);
    v1[10] = v3;
    v1[11] = v2;
    v1[12] = v4;
    v12 = v10;
    sub_1C5A8311C(&v11);
  }

  return result;
}

void sub_1C5A83B74(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[10];
  v5 = a1[11];
  v6 = a1[12];
  *(a1 + 10) = a2;
  *(a1 + 11) = a3;
  *(a1 + 12) = a4;

  v7[0] = v4;
  v7[1] = v5;
  v7[2] = v6;
  sub_1C5A8311C(v7);
}

void sub_1C5A83BDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = v2;

  v6 = (a1 + 24 * v4 + 24);
  v7 = v4 + 1;
  while (--v7)
  {
    v8 = v6 - 3;
    v9 = *v6;
    v10 = *(v5 + 72);
    swift_getKeyPath(byte_1C5BE2970);
    v21[0] = v10;
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);

    sub_1C5BC7B74();

    v11 = *(v10 + 72);

    v6 = v8;
    if (v9 <= v11)
    {
      v12 = v5;

      v13 = *(v8 + 1);
      v14 = *(v8 + 2);
      v15 = v8[3];

      goto LABEL_6;
    }
  }

  v12 = v5;

  v13 = 0;
  v14 = 0;
  v15 = 0.0;
LABEL_6:
  swift_getKeyPath(asc_1C5BE2D98);
  v21[0] = v12;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v16 = *(v12 + 88);
  if (!v16)
  {
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_12:

    goto LABEL_18;
  }

  v17 = *(v12 + 96);
  if (*(v12 + 80) == v13 && v16 == v14)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v18 = sub_1C5BCBDE4();
    swift_bridgeObjectRetain_n();
    if ((v18 & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_18;
    }
  }

  swift_bridgeObjectRelease_n();
  if (v17 == v15)
  {
LABEL_15:

    return;
  }

LABEL_18:
  v21[0] = v13;
  v21[1] = v14;
  *&v21[2] = v15;

  sub_1C5A839F8(v21);
  if (v14)
  {
    v19 = *MEMORY[0x1E69DD888];
    v20 = sub_1C5BCAE44();

    UIAccessibilityPostNotification(v19, v20);
  }
}

void sub_1C5A83EC4(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1C5BC7D64();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_1C5BE2A78, v5);
  v15 = v1;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  if (*(v1 + 104) != v2)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, qword_1EC1A6BC0);
    (*(v4 + 16))(v7, v8, v3);

    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v14 = v4;
      v12 = v11;
      *v11 = 67109120;
      swift_getKeyPath(byte_1C5BE2A78);
      v15 = v1;
      sub_1C5BC7B74();

      *(v12 + 1) = *(v1 + 104);

      _os_log_impl(&dword_1C5922000, v9, v10, "ScrubberInteractionViewModel.showSectionDelimiters changed to %{BOOL}d", v12, 8u);
      v13 = v12;
      v4 = v14;
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1C5A84154()
{
  swift_getKeyPath(byte_1C5BE2A78);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  return *(v0 + 104);
}

void sub_1C5A841F4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2A78);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  *a2 = *(v3 + 104);
}

void sub_1C5A8429C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 104);
  if (v3 == v2)
  {
    *(v1 + 104) = v2;

    sub_1C5A83EC4(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2A78);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }
}

void sub_1C5A843D0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_1C5BC7D64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = v28 - v14;
  v16 = *(v3 + 72);
  swift_getKeyPath(byte_1C5BE15A0, v13);
  v28[1] = v16;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  if (*(v16 + 57) && *(v16 + 57) == 1)
  {

LABEL_5:
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v8, qword_1EC1A6BC0);
    (*(v9 + 16))(v11, v18, v8);
    v19 = sub_1C5BC7D44();
    v20 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C5922000, v19, v20, "ScrubberInteractionViewModel ignoring request to show section delimiters because the scrubber is tracking.", v21, 2u);
      MEMORY[0x1C69510F0](v21, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    return;
  }

  v17 = sub_1C5BCBDE4();

  if (v17)
  {
    goto LABEL_5;
  }

  if (a2)
  {
    v22 = 3.5;
  }

  else
  {
    v22 = *&a1;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_1EC1A6BC0);
  (*(v9 + 16))(v15, v23, v8);
  v24 = sub_1C5BC7D44();
  v25 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = v22;
    *(v26 + 12) = 2048;
    *(v26 + 14) = a3;
    _os_log_impl(&dword_1C5922000, v24, v25, "ScrubberInteractionViewModel showing section delimiters for %f seconds with %f secs delay.", v26, 0x16u);
    MEMORY[0x1C69510F0](v26, -1, -1);
  }

  (*(v9 + 8))(v15, v8);
  if (qword_1EC190738 != -1)
  {
    swift_once();
  }

  sub_1C5BCAAB4();
  [*(v4 + 112) invalidate];
  v27 = *(v4 + 112);
  *(v4 + 112) = 0;

  sub_1C5BC87F4();

  sub_1C5A84974(v22 + a3);
}

void sub_1C5A8484C(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 1;
    sub_1C5A83EC4(1);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2A78);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }
}

void sub_1C5A84974(double a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v9[4] = sub_1C5AA38E0;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C5A07474;
  v9[3] = &block_descriptor_562;
  v6 = _Block_copy(v9);

  v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:a1];
  _Block_release(v6);
  v8 = *(v1 + 112);
  *(v1 + 112) = v7;
}

void sub_1C5A84AA4(double a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v12 = *(Strong + 72);
  swift_getKeyPath(byte_1C5BE15A0);
  v22[2] = v12;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead, &unk_1C5BE2600);
  sub_1C5BC7B74();

  if (*(v12 + 57) && *(v12 + 57) == 1)
  {

LABEL_7:
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
    (*(v5 + 16))(v7, v14, v4);
    v15 = sub_1C5BC7D44();
    v16 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C5922000, v15, v16, "ScrubberInteractionViewModel ignoring section delimiter dismissal because the scrubber is tracking.", v17, 2u);
      MEMORY[0x1C69510F0](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v13 = sub_1C5BCBDE4();

  if (v13)
  {

    goto LABEL_7;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v10, v18, v4);
  v19 = sub_1C5BC7D44();
  v20 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = a1;
    _os_log_impl(&dword_1C5922000, v19, v20, "ScrubberInteractionViewModel dismissing section delimiters because %f seconds elapsed.", v21, 0xCu);
    MEMORY[0x1C69510F0](v21, -1, -1);
  }

  (*(v5 + 8))(v10, v4);
  if (qword_1EC190730 != -1)
  {
    swift_once();
  }

  sub_1C5BC87F4();
}

void sub_1C5A84EF0(uint64_t a1)
{
  if (*(a1 + 104))
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2A78);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }

  else
  {
    *(a1 + 104) = 0;
    sub_1C5A83EC4(0);
  }
}

void sub_1C5A85010(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1C5BC7D64();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_1C5BE2C78, v5);
  v15 = v1;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  if (*(v1 + 120) != v2)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, qword_1EC1A6BC0);
    (*(v4 + 16))(v7, v8, v3);

    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v14 = v4;
      v12 = v11;
      *v11 = 67109120;
      swift_getKeyPath(byte_1C5BE2C78);
      v15 = v1;
      sub_1C5BC7B74();

      *(v12 + 1) = *(v1 + 120);

      _os_log_impl(&dword_1C5922000, v9, v10, "ScrubberInteractionViewModel.isTooltipPresented changed to %{BOOL}d", v12, 8u);
      v13 = v12;
      v4 = v14;
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1C5A852A0()
{
  swift_getKeyPath(byte_1C5BE2C78);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  return *(v0 + 120);
}

void sub_1C5A85340(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2C78);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  *a2 = *(v3 + 120);
}

void sub_1C5A853E8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 120);
  if (v3 == v2)
  {
    *(v1 + 120) = v2;

    sub_1C5A85010(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2C78);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }
}

void sub_1C5A8551C(uint64_t a1, char a2)
{
  v3 = *(a1 + 120);
  if (v3 == (a2 & 1))
  {
    *(a1 + 120) = a2 & 1;
    sub_1C5A85010(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2C78);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }
}

void sub_1C5A85640(char a1, uint64_t a2, __n128 a3)
{
  if ((a1 & 1) == 0)
  {
    if (*(a2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating))
    {
      KeyPath = swift_getKeyPath(asc_1C5BE2D70, a3.n128_f64[0]);
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
      sub_1C5BC7B64();
    }

    else
    {
      *(a2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 0;
      sub_1C5A8672C(0);
    }
  }
}

void sub_1C5A85760()
{
  [*(v0 + 128) invalidate];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1C5AA38D8;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C5A07474;
  v6[3] = &block_descriptor_549;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:1.0];
  _Block_release(v3);
  v5 = *(v0 + 128);
  *(v0 + 128) = v4;
}

double sub_1C5A85878(void *a1, uint64_t a2)
{
  v3 = sub_1C5BC9704();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_getKeyPath(byte_1C5BE2C78);
    v13[2] = v10;
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B74();

    if (*(v10 + 120))
    {
      if (qword_1EC190788 != -1)
      {
        v11 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v11);
      v13[-2] = v10;
      LOBYTE(v13[-1]) = 0;
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = v10;

      sub_1C5BC96F4();
      sub_1C5BC87E4();

      (*(v4 + 8))(v7, v3);
    }

    else
    {
    }
  }

  return result;
}

BOOL sub_1C5A85AF4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void sub_1C5A85B30(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C5BC7D64();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_1C5BE2DC0, v8);
  v25 = v2;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v11 = *&v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  if (*(*&v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && *v11 == *&a1)
  {
    return;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_1EC1A6BC0);
  (*(v7 + 16))(v10, v12, v6);

  v13 = sub_1C5BC7D44();
  v14 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v15 = 136446210;
    swift_getKeyPath(byte_1C5BE2DC0);
    v24 = v7;
    v25 = v3;
    HIDWORD(v22) = v14;
    sub_1C5BC7B74();

    v16 = *(v11 + 8);
    v25 = *v11;
    v26 = v16;
    v17 = sub_1C5BCAEA4();
    v19 = sub_1C592ADA8(v17, v18, &v27);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1C5922000, v13, BYTE4(v22), "ScrubberInteractionViewModel.tooltipSession changed to %{public}s", v15, 0xCu);
    v20 = v23;
    v21 = __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1C69510F0](v20, -1, -1, v21);
    MEMORY[0x1C69510F0](v15, -1, -1);

    (*(v24 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1C5A85E60()
{
  swift_getKeyPath(byte_1C5BE2DC0);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  return *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession);
}

void sub_1C5A85F10(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE2DC0);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v4 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession);
  *(a2 + 8) = v4;
}

double sub_1C5A85FCC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  v6 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession);
  v7 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8);
  if (v7)
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath(byte_1C5BE2DC0);
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
      sub_1C5BC7B64();

      return result;
    }
  }

  else if ((a2 & 1) != 0 || *&v6 != *&a1)
  {
    goto LABEL_9;
  }

  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;

  sub_1C5A85B30(v6, v7);
  return result;
}

void sub_1C5A86138(double a1)
{
  v2 = v1;
  v4 = sub_1C5BC9704();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BC7AC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  sub_1C5A85760();
  swift_getKeyPath(byte_1C5BE2DC0);
  v28 = v1;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v14 = &v1[OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession];
  v15 = 0;
  v16 = &qword_1EC194FB8[9];
  if ((v1[OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8] & 1) == 0)
  {
    sub_1C5BC7AB4();
    v17 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_latestJumpDate;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v2[v17], v6);
    sub_1C5BC7A74();
    v19 = v18;
    v20 = *(v7 + 8);
    v20(v9, v6);
    v13 = (v20)(v12, v6);
    if (v19 <= 3.0)
    {
      swift_getKeyPath(byte_1C5BE2DC0);
      v28 = v2;
      sub_1C5BC7B74();

      v16 = &qword_1EC194FB8[9];
      if ((v14[8] & 1) == 0)
      {
        v15 = *v14;
      }
    }

    else
    {
      v16 = qword_1EC194FB8 + 72;
    }
  }

  MEMORY[0x1EEE9AC00](v13);
  *(&v25 - 4) = v2;
  *(&v25 - 3) = v15;
  *(&v25 - 2) = a1;
  sub_1C5BC87F4();
  sub_1C5BC7AB4();
  v21 = v16[340];
  swift_beginAccess();
  (*(v7 + 40))(&v2[v21], v12, v6);
  swift_endAccess();
  swift_getKeyPath(byte_1C5BE2C78);
  v28 = v2;
  sub_1C5BC7B74();

  if ((v2[120] & 1) == 0)
  {
    if (qword_1EC190788 != -1)
    {
      v22 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v22);
    *(&v25 - 2) = v2;
    *(&v25 - 8) = 1;
    v23 = swift_allocObject();
    *(v23 + 16) = 1;
    *(v23 + 24) = v2;

    v24 = v25;
    sub_1C5BC96F4();
    sub_1C5BC87E4();

    (*(v26 + 8))(v24, v27);
  }
}

void sub_1C5A865E0(uint64_t a1, double a2, double a3)
{
  v3 = a2 + a3;
  v4 = a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  if ((*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8) & 1) != 0 || (v5 = *v4, v3 != *v4))
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2DC0);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }

  else
  {
    *v4 = v3;
    *(v4 + 8) = 0;
    sub_1C5A85B30(*&v5, 0);
  }
}

void sub_1C5A8672C(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = sub_1C5BC7D64();
  v16 = *(v5 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(asc_1C5BE2D70, v6);
  v17 = v1;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  v9 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating;
  if (*(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) != v4)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
    (*(v16 + 16))(v8, v10, v5);

    v11 = sub_1C5BC7D44();
    v12 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = a1 & 1;
      *(v13 + 8) = 1024;
      swift_getKeyPath(asc_1C5BE2D70);
      v17 = v2;
      v15 = v12;
      sub_1C5BC7B74();

      *(v13 + 10) = *(v2 + v9);

      _os_log_impl(&dword_1C5922000, v11, v15, "ScrubberInteractionViewModel.isMarqueeAnimating changed from %{BOOL}d to %{BOOL}d", v13, 0xEu);
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v8, v5);
  }
}

uint64_t sub_1C5A869DC()
{
  swift_getKeyPath(asc_1C5BE2D70);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  return *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
}

void sub_1C5A86A84(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1C5BE2D70);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  *a2 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
}

void sub_1C5A86B34(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = v2;

    sub_1C5A8672C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_1C5BE2D70);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B64();
  }
}

void sub_1C5A86C70(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = sub_1C5BC7D64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub;
  if (*(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) != v4)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
    (*(v6 + 16))(v8, v10, v5);

    v11 = sub_1C5BC7D44();
    v12 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = a1 & 1;
      *(v13 + 8) = 1024;
      *(v13 + 10) = *(v2 + v9);

      _os_log_impl(&dword_1C5922000, v11, v12, "ScrubberInteractionViewModel.hasPausedMidScrub changed from %{BOOL}d to %{BOOL}d", v13, 0xEu);
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    if (*(v2 + v9) == 1)
    {
      if (*(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) == 1)
      {
        *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 1;
        sub_1C5A8672C(1);
      }

      else
      {
        KeyPath = swift_getKeyPath(asc_1C5BE2D70);
        MEMORY[0x1EEE9AC00](KeyPath);
        v17[-2] = v2;
        LOBYTE(v17[-1]) = 1;
        v17[1] = v2;
        sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
        sub_1C5BC7B64();
      }

      v15 = *MEMORY[0x1E69DD888];
      sub_1C5A86FA4();
      v16 = sub_1C5BCAE44();

      UIAccessibilityPostNotification(v15, v16);
    }
  }
}

uint64_t sub_1C5A86FA4()
{
  v1 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C5BCAE14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C5A9D5E4();
  swift_getKeyPath(asc_1C5BE2D98);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  if (*(v0 + 88))
  {

    sub_1C5BCAE04();
    sub_1C5BCADF4();
    sub_1C5BCADE4();

    sub_1C5BCADF4();
    sub_1C5BCADE4();
    sub_1C5BCADF4();
    sub_1C5BCADE4();

    sub_1C5BCADF4();
    sub_1C5BCAE24();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1C5BCAE04();
  sub_1C5BCADF4();
  sub_1C5BCADE4();
  sub_1C5BCADF4();
  sub_1C5BCADE4();

  sub_1C5BCADF4();
  sub_1C5BCAE24();
  if (qword_1EDA4E5D0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v4 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  return sub_1C5BCAE94();
}

void sub_1C5A87328()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer;
  [*(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer) invalidate];
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;

  swift_getKeyPath(asc_1C5BE2D70);
  v12[0] = v0;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
  sub_1C5BC7B74();

  if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) & 1) == 0)
  {
    v4 = sub_1C5A878C0();
    if ((v4 & 0x100000000) == 0)
    {
      v5 = *&v4;
      v6 = *(*(v0 + 72) + 80);
      swift_getKeyPath(aX_9, v12[0]);
      v12[0] = v6;
      sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
      sub_1C5BC7B74();

      if ((*(v6 + 48) & 1) == 0)
      {
        *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_relativePointPositionAtLastTimerTick) = *(v6 + 40) * v5;
        v7 = objc_opt_self();
        v8 = swift_allocObject();
        swift_weakInit();
        v12[4] = sub_1C5AA3818;
        v12[5] = v8;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 1107296256;
        v12[2] = sub_1C5A07474;
        v12[3] = &block_descriptor_531;
        v9 = _Block_copy(v12);

        v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
        _Block_release(v9);
        v11 = *(v1 + v2);
        *(v1 + v2) = v10;
      }
    }
  }
}

void sub_1C5A8758C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1C5A878C0();
    if ((v4 & 0x100000000) == 0)
    {
      v5 = *&v4;
      v6 = *(*(v3 + 72) + 80);
      swift_getKeyPath(aX_9);
      sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
      sub_1C5BC7B74();

      if ((*(v6 + 48) & 1) == 0)
      {
        v7 = *(v6 + 40) * v5;
        v8 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_relativePointPositionAtLastTimerTick;
        v9 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub);
        *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) = vabdd_f64(v7, *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_relativePointPositionAtLastTimerTick)) < 5.0;
        sub_1C5A86C70(v9);
        *(v3 + v8) = v7;
      }
    }
  }
}

uint64_t sub_1C5A876CC()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_latestJumpDate;
  v2 = sub_1C5BC7AC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel___observationRegistrar;
  v4 = sub_1C5BC7BB4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A877D8()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 32) = *MEMORY[0x1E69DDCE0];
  *(v0 + 48) = v2;
  *(v0 + 64) = 0x3FF0000000000000;
  type metadata accessor for ScrubberPlayhead(0);
  v3 = swift_allocObject();
  sub_1C5A8A280(v4);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  sub_1C5BC7A64();
  v5 = v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_relativePointPositionAtLastTimerTick) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) = 0;
  sub_1C5BC7BA4();
  return v1;
}