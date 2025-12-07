uint64_t sub_1C554243C(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 16) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1C5542604()
{
  result = sub_1C55965F4("com.apple.appleaccount", 22, 1);
  qword_1EC1693D8 = result;
  qword_1EC1693E0 = v1;
  return result;
}

uint64_t *sub_1C5542648()
{
  if (qword_1EC1693D0 != -1)
  {
    swift_once();
  }

  return &qword_1EC1693D8;
}

uint64_t sub_1C55426A8()
{
  v1 = *sub_1C5542648();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C55426E4()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC1693F0);
  __swift_project_value_buffer(v1, qword_1EC1693F0);
  sub_1C5542648();
  sub_1C5594CF4();
  sub_1C55965F4("AAUI", 4, 1);
  return sub_1C5594C64();
}

uint64_t sub_1C5542778()
{
  if (qword_1EC1693E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC1693F0);
}

uint64_t static AAUILogger.AAUI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5542778();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5542848()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC169410);
  __swift_project_value_buffer(v1, qword_1EC169410);
  sub_1C5542648();
  sub_1C5594CF4();
  sub_1C55965F4("ui.pps", 6, 1);
  return sub_1C5594C64();
}

uint64_t sub_1C55428DC()
{
  if (qword_1EC169408 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC169410);
}

uint64_t static AAUILogger.pps.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55428DC();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55429AC()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC169430);
  __swift_project_value_buffer(v1, qword_1EC169430);
  sub_1C5542648();
  sub_1C5594CF4();
  sub_1C55965F4("extensions", 10, 1);
  return sub_1C5594C64();
}

uint64_t sub_1C5542A40()
{
  if (qword_1EC169428 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC169430);
}

uint64_t static AAUILogger.extension.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5542A40();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5542B4C(uint64_t a1)
{
  sub_1C5594CF4();
  *v1 = a1;
}

uint64_t sub_1C5542B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v17 = a1;
  v13 = sub_1C5542F98;
  v26 = 0;
  v25 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E980, &qword_1C55B6C80);
  v11 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17, v2, v3, v4);
  v21 = &v11 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v11 - v11, v7, v8);
  v22 = &v11 - v12;
  v26 = &v11 - v12;
  v25 = v9;
  sub_1C5594CF4();
  v14 = &v23;
  v24 = v17;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E988, &qword_1C55B6C88);
  v16 = sub_1C5543DDC();
  sub_1C544B78C();
  sub_1C5596064();

  v20 = sub_1C5543EFC();
  sub_1C540EFD8(v21, v19, v22);
  sub_1C5543F84(v21);
  sub_1C5544010(v22, v21);
  sub_1C540EFD8(v21, v19, v18);
  sub_1C5543F84(v21);
  return sub_1C5543F84(v22);
}

uint64_t sub_1C5542D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v13 = a1;
  v15 = 0;
  v14 = sub_1C5542FA0;
  v32 = 0;
  v31 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E988, &qword_1C55B6C88);
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v11 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v2, v3, v4);
  v25 = &v11 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v11 - v11, v7, v8);
  v26 = &v11 - v12;
  v32 = &v11 - v12;
  v31 = v9;
  sub_1C5594CF4();
  v20 = &v30;
  v30 = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD48, &qword_1C55B6D60);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9A0, &qword_1C55B6C90);
  v18 = sub_1C5544128();
  v19 = sub_1C5543E74();
  sub_1C55441B0();
  sub_1C5596114();
  v24 = sub_1C5543DDC();
  sub_1C540EFD8(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);
  (*(v21 + 16))(v25, v26, v27);
  sub_1C540EFD8(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_1C5542FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = 0;
  bzero(v12, 0x111uLL);
  v5 = *a1;
  v13 = v5;
  MEMORY[0x1E69E5928](v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9C8, &qword_1C55B6D68);
  sub_1C5544238();
  sub_1C5412C88();
  sub_1C5596024();
  MEMORY[0x1E69E5920](v5);
  memcpy(__dst, v11, sizeof(__dst));
  memcpy(v10, __dst, 0x111uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9A0, &qword_1C55B6C90);
  sub_1C5543E74();
  sub_1C540EFD8(v10, v7, v12);
  sub_1C55442C0(v10);
  memcpy(v15, v12, 0x111uLL);
  sub_1C5544334(v15, v9);
  memcpy(v8, v15, 0x111uLL);
  sub_1C540EFD8(v8, v7, a2);
  sub_1C55442C0(v8);
  return sub_1C55442C0(v12);
}

void sub_1C5543144(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = v110;
  v96 = a1;
  v97 = a2;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v135[1] = a1;
  v133 = [a1 icon];
  if (v133)
  {
    v134 = v133;
  }

  else
  {
    sub_1C5418C84();
    v2 = sub_1C55965F4("creditcard.fill", 15, 1);
    v134 = sub_1C54FA360(v2, v3);
    if (v133)
    {
      sub_1C5401EF8(&v133);
    }
  }

  v94 = v134;
  if (v134)
  {
    v93 = v94;
    v88 = v94;
    v104 = v94;
    v4 = v94;
    v102 = sub_1C5595ED4();
    v82 = MEMORY[0x1E6981748];
    v83 = MEMORY[0x1E6981710];
    v87 = &v103;
    v78 = &v102;
    sub_1C540EFD8(&v102, MEMORY[0x1E6981748], &v103);
    sub_1C5410D10(&v102);
    v79 = v103;

    v100 = v79;
    v85 = &v101;
    v80 = &v100;
    sub_1C540EFD8(&v100, v82, &v101);
    sub_1C5410D10(&v100);
    v81 = v101;

    v98 = v81;
    v84 = &v98;
    sub_1C540F554(&v98, v82, &v99);
    sub_1C5410D10(&v98);
    v86 = v99;
    v89 = v99;

    v135[0] = v86;
    sub_1C5410D10(&v101);
    sub_1C5410D10(&v103);

    v92 = v89;
  }

  else
  {
    v131 = 0;
    sub_1C540F554(&v131, MEMORY[0x1E6981748], &v132);
    v90 = v132;
    v91 = v132;

    v135[0] = v90;
    v92 = v91;
  }

  v72 = v92;
  v64[3] = sub_1C5595434();
  v5 = v96;
  v64[4] = v64;
  MEMORY[0x1EEE9AC00](v64, v6, v7, v8);
  v64[1] = v63;
  v63[2] = v9;
  v64[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BEF0, &unk_1C55ADE00);
  sub_1C5413E98();
  v66 = 0;
  v67 = 1;
  sub_1C5596064();

  v10 = v95;
  v11 = v95[35];
  v95[85] = v95[36];
  v10[84] = v11;
  v12 = v10[37];
  v13 = v10[38];
  v14 = v10[39];
  v128 = v112[22];
  v10[88] = v14;
  v10[87] = v13;
  v10[86] = v12;
  v15 = v10[84];
  v10[30] = v10[85];
  v10[29] = v15;
  v16 = v10[86];
  v17 = v10[87];
  v18 = v10[88];
  v112[10] = v128;
  v10[33] = v18;
  v10[32] = v17;
  v10[31] = v16;
  v64[7] = sub_1C5596214();
  v64[6] = v19;
  v64[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF00, &unk_1C55B7B00);
  sub_1C5413F20();
  v65 = v112;
  sub_1C5595D24();
  sub_1C5413FA8(v65);
  v20 = v95;
  v95[90] = v113;
  v21 = v114;
  v22 = v115;
  v23 = v116;
  v20[94] = v117;
  v20[93] = v23;
  v20[92] = v22;
  v20[91] = v21;
  v24 = v118;
  v25 = v119;
  v26 = v120;
  v20[98] = v121;
  v20[97] = v26;
  v20[96] = v25;
  v20[95] = v24;
  v27 = v122;
  v28 = v123;
  v129 = v125;
  v20[101] = v124;
  v20[100] = v28;
  v20[99] = v27;
  v20[16] = v20[90];
  v29 = v20[91];
  v30 = v20[92];
  v31 = v20[93];
  v20[20] = v20[94];
  v20[19] = v31;
  v20[18] = v30;
  v20[17] = v29;
  v32 = v20[95];
  v33 = v20[96];
  v34 = v20[97];
  v20[24] = v20[98];
  v20[23] = v34;
  v20[22] = v33;
  v20[21] = v32;
  v35 = v20[99];
  v36 = v20[100];
  v37 = v20[101];
  v111[24] = v129;
  v20[27] = v37;
  v20[26] = v36;
  v20[25] = v35;
  v69 = sub_1C55957E4();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9D8, &qword_1C55B6D70);
  sub_1C55444A4();
  v70 = v111;
  sub_1C5595D84();
  sub_1C5413FA8(v70);
  v38 = v95;
  v39 = v95[53];
  v40 = v95[54];
  v41 = v95[55];
  v95[106] = v95[56];
  v38[105] = v41;
  v38[104] = v40;
  v38[103] = v39;
  v42 = v38[57];
  v43 = v38[58];
  v44 = v38[59];
  v38[110] = v38[60];
  v38[109] = v44;
  v38[108] = v43;
  v38[107] = v42;
  v45 = v38[61];
  v46 = v38[62];
  v47 = v38[63];
  v38[114] = v38[64];
  v38[113] = v47;
  v38[112] = v46;
  v38[111] = v45;
  v48 = v38[65];
  v49 = v38[66];
  v50 = v38[67];
  v130 = v126;
  v38[117] = v50;
  v38[116] = v49;
  v38[115] = v48;
  v51 = v38[103];
  v52 = v38[104];
  v53 = v38[105];
  v38[3] = v38[106];
  v38[2] = v53;
  v38[1] = v52;
  *v38 = v51;
  v54 = v38[107];
  v55 = v38[108];
  v56 = v38[109];
  v38[7] = v38[110];
  v38[6] = v56;
  v38[5] = v55;
  v38[4] = v54;
  v57 = v38[111];
  v58 = v38[112];
  v59 = v38[113];
  v38[11] = v38[114];
  v38[10] = v59;
  v38[9] = v58;
  v38[8] = v57;
  v60 = v38[115];
  v61 = v38[116];
  v62 = v38[117];
  v110[240] = v130;
  v38[14] = v62;
  v38[13] = v61;
  v38[12] = v60;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9E8, &qword_1C55B6D78);
  v74 = sub_1C5544548();
  v77 = v127;
  v71 = v110;
  sub_1C540EFD8(v110, v73, v127);
  sub_1C5413FA8(v71);
  v108 = v72;
  v76 = &v108;
  v109[0] = &v108;
  v75 = v107;
  sub_1C55445EC(v77, v107);
  v109[1] = v75;
  v106[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9F8, &unk_1C55B6D80);
  v106[1] = v73;
  v105[0] = sub_1C554472C();
  v105[1] = v74;
  sub_1C540F5A0(v109, 2uLL, v106, v105, v97);
  sub_1C5413FA8(v75);
  sub_1C5410D10(v76);
  sub_1C5413FA8(v77);
  sub_1C5410D10(v135);
}

uint64_t sub_1C554386C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v95, 0, sizeof(v95));
  memset(v73, 0, sizeof(v73));
  v96 = a1;
  v46 = [a1 title];
  if (v46)
  {
    v40 = sub_1C5596574();
    v41 = v3;
    *&v2 = MEMORY[0x1E69E5920](v46).n128_u64[0];
    v42 = v40;
    v43 = v41;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v91 = v42;
  v92 = v43;
  if (v43)
  {
    v93 = v91;
    v94 = v92;
  }

  else
  {
    v93 = sub_1C55965F4("", 0, 1, v2);
    v94 = v4;
  }

  v89 = v93;
  v90 = v94;
  sub_1C54141E8();
  v85 = sub_1C5595A04();
  v86 = v5;
  v87 = v6;
  v88 = v7;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  sub_1C55958E4();
  v81 = v85;
  v82 = v33;
  v83 = v34 & 1;
  v84 = v35;
  v77 = sub_1C55959C4();
  v78 = v8;
  v79 = v9;
  v80 = v10;
  v36 = v8;
  v37 = v9;
  v38 = v10;

  sub_1C5412EA0(v85, v33, v34 & 1);

  v74[0] = v77;
  v74[1] = v36;
  v75 = v37 & 1;
  v76 = v38;
  sub_1C540EFD8(v74, MEMORY[0x1E6981148], v95);
  sub_1C5414260(v74);
  v39 = [a1 subtitle];
  if (v39)
  {
    v29 = sub_1C5596574();
    v30 = v12;
    *&v11 = MEMORY[0x1E69E5920](v39).n128_u64[0];
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v69 = v31;
  v70 = v32;
  if (v32)
  {
    v71 = v69;
    v72 = v70;
  }

  else
  {
    v71 = sub_1C55965F4("", 0, 1, v11);
    v72 = v13;
  }

  v67 = v71;
  v68 = v72;
  v63 = sub_1C5595A04();
  v64 = v14;
  v65 = v15;
  v66 = v16;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  sub_1C5595914();
  v59 = v63;
  v60 = v21;
  v61 = v22 & 1;
  v62 = v23;
  v55 = sub_1C55959C4();
  v56 = v17;
  v57 = v18;
  v58 = v19;
  v24 = v17;
  v25 = v18;
  v26 = v19;

  sub_1C5412EA0(v63, v21, v22 & 1);

  v52[0] = v55;
  v52[1] = v24;
  v53 = v25 & 1;
  v54 = v26;
  v27 = MEMORY[0x1E6981148];
  v28 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v52, MEMORY[0x1E6981148], v73);
  sub_1C5414260(v52);
  sub_1C54142A8(v95, v50);
  v51[0] = v50;
  sub_1C54142A8(v73, v49);
  v51[1] = v49;
  v48[0] = v27;
  v48[1] = v27;
  v47[0] = v28;
  v47[1] = v28;
  sub_1C540F5A0(v51, 2uLL, v48, v47, a2);
  sub_1C5414260(v49);
  sub_1C5414260(v50);
  sub_1C5414260(v73);
  return sub_1C5414260(v95);
}

unint64_t sub_1C5543DDC()
{
  v2 = qword_1EC15E990;
  if (!qword_1EC15E990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E988, &qword_1C55B6C88);
    sub_1C5543E74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5543E74()
{
  v2 = qword_1EC15E998;
  if (!qword_1EC15E998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9A0, &qword_1C55B6C90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5543EFC()
{
  v2 = qword_1EC15E9A8;
  if (!qword_1EC15E9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E980, &qword_1C55B6C80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5543F84(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9B0, &qword_1C55B6C98) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E988, &qword_1C55B6C88);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C5544010(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9B0, &qword_1C55B6C98) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E988, &qword_1C55B6C88);
  (*(*(v2 - 8) + 16))(a2 + v4, a1 + v4);
  return a2;
}

unint64_t sub_1C5544128()
{
  v2 = qword_1EC15E9B8;
  if (!qword_1EC15E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD48, &qword_1C55B6D60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55441B0()
{
  v2 = qword_1EC15E9C0;
  if (!qword_1EC15E9C0)
  {
    type metadata accessor for AAUIWalletCardListItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5544238()
{
  v2 = qword_1EC15E9D0;
  if (!qword_1EC15E9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9C8, &qword_1C55B6D68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55442C0(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  sub_1C5412EA0(*(a1 + 88), *(a1 + 96), *(a1 + 104) & 1);

  return a1;
}

uint64_t sub_1C5544334(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  sub_1C54130AC(v4, v5, v6 & 1);
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6 & 1;
  v7 = *(a1 + 80);
  sub_1C5594CF4();
  *(a2 + 80) = v7;
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  sub_1C54130AC(v8, v9, v10 & 1);
  *(a2 + 88) = v8;
  *(a2 + 96) = v9;
  *(a2 + 104) = v10 & 1;
  v11 = *(a1 + 112);
  sub_1C5594CF4();
  *(a2 + 112) = v11;
  memcpy((a2 + 120), (a1 + 120), 0x70uLL);
  memcpy((a2 + 232), (a1 + 232), 0x29uLL);
  return a2;
}

unint64_t sub_1C55444A4()
{
  v2 = qword_1EC15E9E0;
  if (!qword_1EC15E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9D8, &qword_1C55B6D70);
    sub_1C5413F20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5544548()
{
  v2 = qword_1EC15E9F0;
  if (!qword_1EC15E9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9E8, &qword_1C55B6D78);
    sub_1C55444A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55445EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9 & 1;
  v10 = *(a1 + 80);
  sub_1C5594CF4();
  *(a2 + 80) = v10;
  memcpy((a2 + 88), (a1 + 88), 0x70uLL);
  memcpy((a2 + 200), (a1 + 200), 0x29uLL);
  return a2;
}

unint64_t sub_1C554472C()
{
  v2 = qword_1EC15EA00;
  if (!qword_1EC15EA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9F8, &unk_1C55B6D80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55447C0(uint64_t a1)
{
  type metadata accessor for BenefactorDetailsView.Coordinator();
  MEMORY[0x1E69E5928](a1, v1);
  return sub_1C5461820(a1);
}

id sub_1C5544844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C55449B4();
  MEMORY[0x1E69E5928](a3, v3);
  MEMORY[0x1E69E5928](a2, v4);
  v14 = sub_1C5461BF0(a3, a2);
  sub_1C5461EA0();
  v13 = sub_1C5404B48();
  v10 = [v13 viewModelForFlow:3 withContact:{a2, MEMORY[0x1E69E5928](a2, v5).n128_f64[0]}];
  MEMORY[0x1E69E5920](a2);
  sub_1C5461F04();
  MEMORY[0x1E69E5928](a2, v6);
  MEMORY[0x1E69E5928](v14, v7);
  v12 = sub_1C5461C38(a2, v10, v14);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v14);
  return v12;
}

unint64_t sub_1C55449B4()
{
  v2 = qword_1EC15EA08;
  if (!qword_1EC15EA08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15EA08);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5544A38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C55447C0(*v1);
  *a1 = result;
  return result;
}

void sub_1C5544AFC(uint64_t a1)
{
  sub_1C54F035C();
  sub_1C5595724();
  __break(1u);
}

unint64_t sub_1C5544B3C()
{
  v2 = qword_1EC15EA10;
  if (!qword_1EC15EA10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5544BCC()
{
  v2 = *v0;
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5544BF8()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_1C5544C30(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_1C5544C7C()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_1C5544CB4(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void *sub_1C5544D00@<X0>(uint64_t a1@<X8>)
{
  v8[2] = a1;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50);
  v8[0] = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v1, v2, v3);
  v4 = (v8 - v8[0]);
  v10 = (v8 - v8[0]);
  v11 = v5;
  v6 = type metadata accessor for SignOutUnsyncedDataAlert(0);
  sub_1C54367BC((v8[1] + *(v6 + 28)), v4);
  sub_1C5595004();
  return sub_1C5436890(v10);
}

uint64_t type metadata accessor for SignOutUnsyncedDataAlert(uint64_t a1)
{
  v2 = qword_1EC169660;
  if (!qword_1EC169660)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1C5544EAC(void *a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v2, v3, v4);
  v10 = (&v8 - v9);
  sub_1C54367BC(v5, (&v8 - v9));
  v6 = type metadata accessor for SignOutUnsyncedDataAlert(0);
  sub_1C5436BB4(v10, (v1 + *(v6 + 28)));
  return sub_1C5436890(v11);
}

uint64_t sub_1C5544F5C()
{
  type metadata accessor for SignOutUnsyncedDataAlert(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5544FF4(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for SignOutUnsyncedDataAlert(0) + 32));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v6);
}

void (*sub_1C55450B8(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL, 20625);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SignOutUnsyncedDataAlert(0) + 32));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C55451A4()
{
  type metadata accessor for SignOutUnsyncedDataAlert(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5545254()
{
  v2 = *(v0 + *(type metadata accessor for SignOutUnsyncedDataAlert(0) + 32));

  return v2 & 1;
}

uint64_t sub_1C55452A0(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SignOutUnsyncedDataAlert(0) + 32);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C55452FC@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v99 = 0;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA18, &qword_1C55B6F78);
  v82 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80 - 8, v80, v2, v3);
  v84 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = &v44 - v84;
  MEMORY[0x1EEE9AC00](&v44 - v84, v4, v5, v6);
  v83 = &v44 - v84;
  MEMORY[0x1EEE9AC00](v7, v8, v9, v10);
  v85 = &v44 - v84;
  v125 = &v44 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA20, &qword_1C55B6F80);
  v87 = *(v86 - 8);
  v88 = v87;
  v90 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86 - 8, v86, v11, v12);
  v92 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
  v89 = &v44 - v92;
  MEMORY[0x1EEE9AC00](&v44 - v92, v13, v14, v15);
  v91 = &v44 - v92;
  MEMORY[0x1EEE9AC00](v16, v17, v18, v19);
  v93 = &v44 - v92;
  v124 = &v44 - v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA28, &qword_1C55B6F88);
  v95 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94 - 8, v94, v20, v21);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v44 - v97;
  MEMORY[0x1EEE9AC00](&v44 - v97, v22, v23, v24);
  v98 = &v44 - v97;
  v123 = &v44 - v97;
  v122 = v1;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v55 = MEMORY[0x1E6981E70];
    v56 = MEMORY[0x1E6981E60];
    sub_1C544B78C();
    v74 = 1;
    sub_1C5596064();
    v108[2] = v110;
    v108[3] = v111;
    v109 = v112;
    v108[0] = sub_1C5545E50();
    v108[1] = v28;
    v64 = sub_1C55451A4();
    v65 = v29;
    v58 = v30;
    v63 = &v44;
    v57 = 24;
    MEMORY[0x1EEE9AC00](&v44, v29, v30, v31);
    v59 = v41;
    v62 = &v44;
    MEMORY[0x1EEE9AC00](&v44, v32, v33, v34);
    v60 = v41;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340, &qword_1C55B59C0);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA40, &qword_1C55B6FA0);
    v71 = sub_1C5518AB8();
    v72 = sub_1C54141E8();
    v75 = sub_1C5547FCC();
    v73 = MEMORY[0x1E6981138];
    v61 = v40;
    v43 = MEMORY[0x1E6981138];
    v42 = v75;
    v41[1] = v72;
    v41[0] = v71;
    v70 = MEMORY[0x1E6981148];
    v40[3] = MEMORY[0x1E6981148];
    v40[2] = v69;
    v68 = MEMORY[0x1E69E6158];
    v40[1] = MEMORY[0x1E69E6158];
    v40[0] = v67;
    v66 = v108;
    sub_1C5595D04();

    sub_1C5401ECC(v66);
    v100 = v67;
    v101 = v68;
    v102 = v69;
    v103 = v70;
    v104 = v71;
    v105 = v72;
    v106 = v75;
    v107 = v73;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v91, v86, v93);
    v77 = *(v88 + 8);
    v78 = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v77(v91, v86);
    v99 = v91;
    v54 = *(v88 + 16);
    v53 = v88 + 16;
    v54(v89, v93, v86);
    sub_1C540EFD8(v89, v86, v91);
    v77(v89, v86);
    v54(v89, v91, v86);
    v35 = sub_1C5548054();
    sub_1C540FD1C(v89, v86, v80, OpaqueTypeConformance2, v35, v96);
    v77(v89, v86);
    sub_1C536E350(v96, v98);
    v77(v91, v86);
    v77(v93, v86);
  }

  else
  {
    v51 = &v44;
    MEMORY[0x1EEE9AC00](&v44, v25, v26, v27);
    v48 = v41;
    v42 = v36;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA30, &unk_1C55B6F90);
    v50 = sub_1C5547E74();
    sub_1C544B78C();
    sub_1C5596064();
    v52 = sub_1C5548054();
    sub_1C540EFD8(v83, v80, v85);
    sub_1C536E1D0(v83);
    v121 = v83;
    sub_1C536E25C(v85, v81);
    sub_1C540EFD8(v81, v80, v83);
    sub_1C536E1D0(v81);
    sub_1C536E25C(v83, v81);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340, &qword_1C55B59C0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA40, &qword_1C55B6FA0);
    v46 = sub_1C5518AB8();
    v47 = sub_1C54141E8();
    v37 = sub_1C5547FCC();
    v113 = v44;
    v114 = MEMORY[0x1E69E6158];
    v115 = v45;
    v116 = MEMORY[0x1E6981148];
    v117 = v46;
    v118 = v47;
    v119 = v37;
    v120 = MEMORY[0x1E6981138];
    v38 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v81, v86, v80, v38, v52, v96);
    sub_1C536E1D0(v81);
    sub_1C536E350(v96, v98);
    sub_1C536E1D0(v83);
    sub_1C536E1D0(v85);
  }

  sub_1C536E4E8(v98, v96);
  sub_1C5548D38();
  sub_1C540EFD8(v96, v94, v79);
  sub_1C536E680(v96);
  return sub_1C536E680(v98);
}

uint64_t sub_1C5545E50()
{
  v65 = 0;
  v68 = sub_1C5548F08;
  v80 = 0;
  v79 = 0;
  v77 = 0;
  v70 = 0;
  v71 = 0;
  v55 = 0;
  v60 = sub_1C55949C4();
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v56 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v61 = &v21 - v56;
  v80 = v0;
  sub_1C5548EA4();
  v62 = sub_1C5404B48();
  v79 = v62;
  sub_1C55949B4();
  v4 = sub_1C55949A4();
  v5 = v57;
  v63 = v4;
  (*(v58 + 8))(v61, v60);
  [v62 setLocale_];
  MEMORY[0x1E69E5920](v63);
  v64 = *v5;
  sub_1C5594CF4();
  v78 = v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E820, &unk_1C55B69E0);
  v6 = sub_1C553F644();
  v69 = sub_1C546A654(v68, v65, v66, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v67);
  v52 = v69;
  sub_1C541439C(&v78);
  v77 = v52;
  sub_1C5594CF4();
  v50 = MEMORY[0x1E69E7CA0] + 8;
  v51 = sub_1C5596C64();
  v53 = sub_1C5596704();

  v54 = [v62 stringFromItems_];
  MEMORY[0x1E69E5920](v53);
  if (v54)
  {
    v49 = v54;
    v44 = v54;
    v45 = sub_1C5596574();
    v46 = v7;
    MEMORY[0x1E69E5920](v44);
    v47 = v45;
    v48 = v46;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v42 = v48;
  v43 = v47;
  if (v48)
  {
    v40 = v43;
    v41 = v42;
    v35 = v42;
    v36 = sub_1C54637B4(v43, v42);
    v37 = v8;

    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v73 = v38;
  v74 = v39;
  sub_1C5594CF4();
  if (v74)
  {
    v75 = v73;
    v76 = v74;
  }

  else
  {
    v72 = v52;
    v31 = sub_1C55965F4(", ", 2, 1);
    v32 = v9;
    sub_1C5548F5C();
    v33 = sub_1C55964A4();
    v34 = v10;

    v75 = v33;
    v76 = v34;
    if (v74)
    {
      sub_1C5401ECC(&v73);
    }
  }

  v22 = v75;
  v28 = v76;
  v70 = v75;
  v71 = v76;
  v11 = sub_1C55965F4("UNSYNCED_DATA_ALERT", 19, 1);
  v21 = v12;
  v26 = sub_1C54637B4(v11, v12);
  v27 = v13;

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0D0, &qword_1C55ADEE8);
  v25 = sub_1C5596E04();
  v23 = v14;
  sub_1C5594CF4();
  v23[3] = MEMORY[0x1E69E6158];
  v15 = sub_1C54E5644();
  v16 = v22;
  v17 = v23;
  v18 = v28;
  v23[4] = v15;
  *v17 = v16;
  v17[1] = v18;
  sub_1C540FCD8();
  v29 = sub_1C5596584();
  v30 = v19;

  MEMORY[0x1E69E5920](v62);
  return v29;
}

uint64_t sub_1C55464A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v88 = a1;
  v111 = 0;
  v110 = sub_1C5547100;
  v79 = sub_1C55496EC;
  v80 = sub_1C5549750;
  v131 = 0;
  v130 = 0;
  v128 = 0;
  v126 = 0;
  v101 = 0;
  v2 = type metadata accessor for SignOutUnsyncedDataAlert(0);
  v81 = *(v2 - 8);
  v82 = v81;
  v83 = *(v81 + 64);
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v85 = (v49 - v84);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA90, &unk_1C55B7078);
  v86 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v87 = v49 - v86;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  v116 = *(v118 - 8);
  v117 = v118 - 8;
  v89 = (v116[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88, v10, v11, v12);
  v90 = v49 - v89;
  v91 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v49 - v89, v15, v16);
  v92 = v49 - v91;
  v93 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v49 - v91, v19, v20);
  v94 = v49 - v93;
  v95 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v49 - v93, v23, v24);
  v96 = v49 - v95;
  v97 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v49 - v95, v27, v28);
  v121 = v49 - v97;
  v98 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = MEMORY[0x1EEE9AC00](v30, v49 - v97, v31, v32);
  v114 = v49 - v98;
  v131 = v49 - v98;
  v130 = v34;
  v100 = 1;
  v103 = sub_1C55965F4("Learn How to Keep This Data", 27, 1, v33);
  v107 = v35;
  v99 = sub_1C5439370();
  v106 = sub_1C5576C44();
  v102 = sub_1C55965F4("Primary button title on unsynced data alert when signing out.", 61, v100 & 1);
  v105 = v36;
  sub_1C54398B0();
  v104 = v37;
  v108 = sub_1C55947B4();
  v109 = v38;

  MEMORY[0x1E69E5920](v106);

  v112 = v129;
  v129[0] = v108;
  v129[1] = v109;
  v113 = sub_1C54141E8();
  sub_1C5596004();
  v115 = sub_1C547070C();
  sub_1C540EFD8(v121, v118, v114);
  v119 = v116[1];
  v120 = v116 + 1;
  v119(v121, v118);
  v128 = v121;
  v70 = 1;
  v62 = sub_1C55965F4("Continue Anyway", 15, 1);
  v66 = v39;
  v65 = sub_1C5576C44();
  v61 = sub_1C55965F4("Secondary button title on unsynced data alert when signing out.", 63, v70 & 1);
  v64 = v40;
  sub_1C54398B0();
  v63 = v41;
  v69 = 0;
  v67 = sub_1C55947B4();
  v68 = v42;

  MEMORY[0x1E69E5920](v65);

  v77 = v127;
  v127[0] = v67;
  v127[1] = v68;
  sub_1C5594F04();
  v71 = sub_1C5594F34();
  v43 = *(v71 - 8);
  v72 = *(v43 + 56);
  v73 = v43 + 56;
  v72(v87, 0, v70);
  sub_1C55493C8(v88, v85);
  v74 = *(v82 + 80);
  v75 = (v74 + 16) & ~v74;
  v76 = swift_allocObject();
  sub_1C5549590(v85, (v76 + v75));
  sub_1C5595FF4();
  sub_1C540EFD8(v96, v118, v121);
  v119(v96, v118);
  v126 = v96;
  v54 = 1;
  v49[2] = sub_1C55965F4("Cancel", 6, 1);
  v51 = v44;
  v50 = sub_1C5576C44();
  v49[1] = sub_1C55965F4("Cancel button title", 19, v54 & 1);
  v49[4] = v45;
  sub_1C54398B0();
  v49[3] = v46;
  v52 = sub_1C55947B4();
  v53 = v47;

  MEMORY[0x1E69E5920](v50);

  v57 = v125;
  v125[0] = v52;
  v125[1] = v53;
  sub_1C5594F14();
  (v72)(v87, 0, v54, v71);
  sub_1C55493C8(v88, v85);
  v55 = (v74 + 16) & ~v74;
  v56 = swift_allocObject();
  sub_1C5549590(v85, (v56 + v55));
  sub_1C5595FF4();
  sub_1C540EFD8(v94, v118, v96);
  v119(v94, v118);
  v59 = v116[2];
  v58 = v116 + 2;
  v59(v94, v114, v118);
  v60 = v124;
  v124[0] = v94;
  v59(v92, v121, v118);
  v124[1] = v92;
  v59(v90, v96, v118);
  v124[2] = v90;
  v123[0] = v118;
  v123[1] = v118;
  v123[2] = v118;
  v122[0] = v115;
  v122[1] = v115;
  v122[2] = v115;
  sub_1C540F5A0(v60, 3uLL, v123, v122, v78);
  v119(v90, v118);
  v119(v92, v118);
  v119(v94, v118);
  v119(v96, v118);
  v119(v121, v118);
  return (v119)(v114, v118);
}

uint64_t sub_1C5547100()
{
  v39 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD68, &unk_1C55B3FC0);
  v28 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0, v1, v2, v3);
  v36 = &v16 - v28;
  v38 = sub_1C55948B4();
  v34 = *(v38 - 8);
  v35 = v38 - 8;
  v29 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38, v4, v5, v6);
  v30 = &v16 - v29;
  v31 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](&v16 - v29, v8, v9, v10);
  v32 = &v16 - v31;
  v39 = &v16 - v31;
  v37 = 1;
  sub_1C55965F4("https://support.apple.com/108306?cid=mc-ols-icloud-article_108306-SigningOut-07092025", 85, 1, v11);
  v33 = v12;
  sub_1C55948A4();

  if ((*(v34 + 48))(v36, v37, v38) == 1)
  {
    return sub_1C54EA3A0(v36);
  }

  v14 = v30;
  (*(v34 + 32))(v32, v36, v38);
  v25 = [objc_opt_self() sharedApplication];
  (*(v34 + 16))(v14, v32, v38);
  v24 = sub_1C5594884();
  v27 = *(v34 + 8);
  v26 = v34 + 8;
  v27(v30, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D848, qword_1C55B43C0);
  v17 = 0;
  v18 = sub_1C5596E04();
  v19 = type metadata accessor for OpenExternalURLOptionsKey(v17);
  v21 = sub_1C54C4C30();
  v20 = MEMORY[0x1E69E7CA0] + 8;
  v22 = sub_1C5596454();
  v23 = sub_1C5596434();

  [v25 openURL:v24 options:v23 completionHandler:0];
  MEMORY[0x1E69E5920](v23);
  MEMORY[0x1E69E5920](v24);
  v15 = MEMORY[0x1E69E5920](v25);
  return (v27)(v32, v38, v15);
}

uint64_t sub_1C5547464(uint64_t a1)
{
  v3 = *(a1 + 8);

  v3(v1);
}

uint64_t sub_1C55474C0(uint64_t a1)
{
  v3 = *(a1 + 24);

  v3(v1);
}

uint64_t sub_1C554751C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0u;
  v22 = 0u;
  v23 = a1;
  v17 = sub_1C5547660();
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v14[0] = v17;
  v14[1] = v2;
  v15 = v3 & 1;
  v16 = v4;
  v10 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v14, MEMORY[0x1E6981148], &v21);
  sub_1C5414260(v14);
  v6 = v21;
  v7 = v22;
  v8 = *(&v22 + 1);
  sub_1C54130AC(v21, *(&v21 + 1), v22 & 1);
  sub_1C5594CF4();
  v11 = v6;
  v12 = v7 & 1;
  v13 = v8;
  sub_1C540EFD8(&v11, v10, a2);
  sub_1C5414260(&v11);
  return sub_1C5414260(&v21);
}

uint64_t sub_1C5547660()
{
  sub_1C5594CF4();
  v1 = sub_1C5596744();

  if (v1 == 1)
  {
    sub_1C55965F4("Data from this app not synced with iCloud will be permanently removed from this device and not available in iCloud. This action cannot be undone.", 145, 1);
  }

  else
  {
    sub_1C55965F4("Data from these apps not synced with iCloud will be permanently removed from this device and not available in iCloud. This action cannot be undone.", 147, 1);
  }

  sub_1C55953C4();
  sub_1C5439370();
  sub_1C5576C44();
  return sub_1C55959E4();
}

uint64_t sub_1C55478D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v26 = a1;
  v22 = 0;
  v21 = sub_1C5453B74;
  v29 = sub_1C55497B4;
  v31 = sub_1C5548E9C;
  v43 = MEMORY[0x1E697D0D0];
  v75 = 0;
  v74 = 0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA60, &qword_1C55B6FB0);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v18 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50, v3, v4, v5);
  v49 = &v18 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA30, &unk_1C55B6F90);
  v19 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v6, v7, v8);
  v54 = &v18 - v19;
  v20 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v19, v10, v11, v12);
  v55 = &v18 - v20;
  v75 = &v18 - v20;
  v74 = a1;
  v23 = MEMORY[0x1E6981E70];
  v24 = MEMORY[0x1E6981E60];
  sub_1C544B78C();
  v44 = 0;
  v45 = 1;
  sub_1C5596064();
  v25 = v69;
  v69[0] = v71;
  v69[1] = v72;
  v70 = v73 & 1;
  v13 = sub_1C5545E50();
  v34 = v68;
  v68[0] = v13;
  v68[1] = v14;
  v32 = sub_1C55451A4();
  v33 = v15;
  v28 = v16;
  v30 = &v58;
  v59 = v26;
  v27 = &v56;
  v57 = v26;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340, &qword_1C55B59C0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA40, &qword_1C55B6FA0);
  v39 = sub_1C5518AB8();
  v40 = sub_1C54141E8();
  v41 = sub_1C5547FCC();
  v36 = MEMORY[0x1E69E6158];
  v38 = MEMORY[0x1E6981148];
  v42 = MEMORY[0x1E6981138];
  sub_1C5595C14();

  sub_1C5401ECC(v34);
  v60 = v35;
  v61 = v36;
  v62 = v37;
  v63 = v38;
  v64 = v39;
  v65 = v40;
  v66 = v41;
  v67 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5411148(v50, OpaqueTypeConformance2);
  sub_1C5595D84();
  (*(v47 + 8))(v49, v50);
  v53 = sub_1C5547E74();
  sub_1C540EFD8(v54, v52, v55);
  sub_1C536ECEC(v54);
  sub_1C536ED54(v55, v54);
  sub_1C540EFD8(v54, v52, v51);
  sub_1C536ECEC(v54);
  return sub_1C536ECEC(v55);
}

unint64_t sub_1C5547E74()
{
  v2 = qword_1EC15EA38;
  if (!qword_1EC15EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA30, &unk_1C55B6F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340, &qword_1C55B59C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA40, &qword_1C55B6FA0);
    sub_1C5518AB8();
    sub_1C54141E8();
    sub_1C5547FCC();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5547FCC()
{
  v2 = qword_1EC15EA48;
  if (!qword_1EC15EA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA40, &qword_1C55B6FA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5548054()
{
  v2 = qword_1EC15EA50;
  if (!qword_1EC15EA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA18, &qword_1C55B6F78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55480DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v88 = a1;
  v111 = 0;
  v110 = sub_1C5547100;
  v79 = sub_1C55496EC;
  v80 = sub_1C5549750;
  v131 = 0;
  v130 = 0;
  v128 = 0;
  v126 = 0;
  v101 = 0;
  v2 = type metadata accessor for SignOutUnsyncedDataAlert(0);
  v81 = *(v2 - 8);
  v82 = v81;
  v83 = *(v81 + 64);
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v85 = (v49 - v84);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA90, &unk_1C55B7078);
  v86 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v87 = v49 - v86;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  v116 = *(v118 - 8);
  v117 = v118 - 8;
  v89 = (v116[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88, v10, v11, v12);
  v90 = v49 - v89;
  v91 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v49 - v89, v15, v16);
  v92 = v49 - v91;
  v93 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v49 - v91, v19, v20);
  v94 = v49 - v93;
  v95 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v49 - v93, v23, v24);
  v96 = v49 - v95;
  v97 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v49 - v95, v27, v28);
  v121 = v49 - v97;
  v98 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = MEMORY[0x1EEE9AC00](v30, v49 - v97, v31, v32);
  v114 = v49 - v98;
  v131 = v49 - v98;
  v130 = v34;
  v100 = 1;
  v103 = sub_1C55965F4("Learn How to Keep This Data", 27, 1, v33);
  v107 = v35;
  v99 = sub_1C5439370();
  v106 = sub_1C5576C44();
  v102 = sub_1C55965F4("Primary button title on unsynced data alert when signing out.", 61, v100 & 1);
  v105 = v36;
  sub_1C54398B0();
  v104 = v37;
  v108 = sub_1C55947B4();
  v109 = v38;

  MEMORY[0x1E69E5920](v106);

  v112 = v129;
  v129[0] = v108;
  v129[1] = v109;
  v113 = sub_1C54141E8();
  sub_1C5596004();
  v115 = sub_1C547070C();
  sub_1C540EFD8(v121, v118, v114);
  v119 = v116[1];
  v120 = v116 + 1;
  v119(v121, v118);
  v128 = v121;
  v70 = 1;
  v62 = sub_1C55965F4("Continue Anyway", 15, 1);
  v66 = v39;
  v65 = sub_1C5576C44();
  v61 = sub_1C55965F4("Secondary button title on unsynced data alert when signing out.", 63, v70 & 1);
  v64 = v40;
  sub_1C54398B0();
  v63 = v41;
  v69 = 0;
  v67 = sub_1C55947B4();
  v68 = v42;

  MEMORY[0x1E69E5920](v65);

  v77 = v127;
  v127[0] = v67;
  v127[1] = v68;
  sub_1C5594F04();
  v71 = sub_1C5594F34();
  v43 = *(v71 - 8);
  v72 = *(v43 + 56);
  v73 = v43 + 56;
  v72(v87, 0, v70);
  sub_1C55493C8(v88, v85);
  v74 = *(v82 + 80);
  v75 = (v74 + 16) & ~v74;
  v76 = swift_allocObject();
  sub_1C5549590(v85, (v76 + v75));
  sub_1C5595FF4();
  sub_1C540EFD8(v96, v118, v121);
  v119(v96, v118);
  v126 = v96;
  v54 = 1;
  v49[2] = sub_1C55965F4("Cancel", 6, 1);
  v51 = v44;
  v50 = sub_1C5576C44();
  v49[1] = sub_1C55965F4("Cancel button title", 19, v54 & 1);
  v49[4] = v45;
  sub_1C54398B0();
  v49[3] = v46;
  v52 = sub_1C55947B4();
  v53 = v47;

  MEMORY[0x1E69E5920](v50);

  v57 = v125;
  v125[0] = v52;
  v125[1] = v53;
  sub_1C5594F14();
  (v72)(v87, 0, v54, v71);
  sub_1C55493C8(v88, v85);
  v55 = (v74 + 16) & ~v74;
  v56 = swift_allocObject();
  sub_1C5549590(v85, (v56 + v55));
  sub_1C5595FF4();
  sub_1C540EFD8(v94, v118, v96);
  v119(v94, v118);
  v59 = v116[2];
  v58 = v116 + 2;
  v59(v94, v114, v118);
  v60 = v124;
  v124[0] = v94;
  v59(v92, v121, v118);
  v124[1] = v92;
  v59(v90, v96, v118);
  v124[2] = v90;
  v123[0] = v118;
  v123[1] = v118;
  v123[2] = v118;
  v122[0] = v115;
  v122[1] = v115;
  v122[2] = v115;
  sub_1C540F5A0(v60, 3uLL, v123, v122, v78);
  v119(v90, v118);
  v119(v92, v118);
  v119(v94, v118);
  v119(v96, v118);
  v119(v121, v118);
  return (v119)(v114, v118);
}

unint64_t sub_1C5548D38()
{
  v2 = qword_1EC15EA70;
  if (!qword_1EC15EA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA28, &qword_1C55B6F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340, &qword_1C55B59C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EA40, &qword_1C55B6FA0);
    sub_1C5518AB8();
    sub_1C54141E8();
    sub_1C5547FCC();
    swift_getOpaqueTypeConformance2();
    sub_1C5548054();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5548EA4()
{
  v2 = qword_1EC15EA78;
  if (!qword_1EC15EA78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15EA78);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5548F08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C54637B4(*a1, a1[1]);
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_1C5548F5C()
{
  v2 = qword_1EC15EA80;
  if (!qword_1EC15EA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E820, &unk_1C55B69E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EA80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5548FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const void *a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  v13 = type metadata accessor for SignOutUnsyncedDataAlert(0);
  sub_1C5549080(a6, a8 + *(v13 + 28));
  v15 = *(v13 + 32);
  result = sub_1C5409594(a7 & 1);
  v9 = a8 + v15;
  *v9 = result & 1;
  *(v9 + 1) = v10;
  return result;
}

void *sub_1C5549080(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1C55491F0(uint64_t a1)
{
  v6 = sub_1C5549334(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_1C54AE1F0();
    if (v2 <= 0x3F)
    {
      v6 = sub_1C543D8C0(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_1C5433F94(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_1C5549334(uint64_t a1)
{
  v5 = qword_1EC15EA88;
  if (!qword_1EC15EA88)
  {
    v4 = sub_1C5596764();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15EA88);
      return v2;
    }
  }

  return v5;
}

void *sub_1C55493C8(void *a1, void *a2)
{
  v8 = *a1;
  sub_1C5594CF4();
  *a2 = v8;
  v9 = a1[1];
  v10 = a1[2];

  a2[1] = v9;
  a2[2] = v10;
  v11 = a1[3];
  v13 = a1[4];

  a2[3] = v11;
  a2[4] = v13;
  v14 = type metadata accessor for SignOutUnsyncedDataAlert(0);
  v15 = *(v14 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v7 = *(a1 + v15);

    *(a2 + v15) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(v14 + 32);
  v5 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  result = a2;
  *(v5 + 1) = v6;
  return result;
}

__n128 sub_1C5549590(void *a1, void *a2)
{
  *a2 = *a1;
  v2 = a1[2];
  a2[1] = a1[1];
  a2[2] = v2;
  v3 = a1[4];
  a2[3] = a1[3];
  a2[4] = v3;
  v7 = type metadata accessor for SignOutUnsyncedDataAlert(0);
  v8 = *(v7 + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5595104();
    (*(*(v4 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v8, a1 + v8, *(*(v10 - 8) + 64));
  }

  result = *(a1 + *(v7 + 32));
  *(a2 + *(v7 + 32)) = result;
  return result;
}

uint64_t sub_1C55496EC()
{
  v1 = *(type metadata accessor for SignOutUnsyncedDataAlert(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C5547464(v2);
}

uint64_t sub_1C5549750()
{
  v1 = *(type metadata accessor for SignOutUnsyncedDataAlert(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C55474C0(v2);
}

id static AsyncIconImageBridge.hostingController(icon:size:)(uint64_t a1, double a2, double a3)
{
  v45 = a1;
  v38 = a2;
  v39 = a3;
  v41 = sub_1C554A774;
  v32 = "Fatal error";
  v33 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v34 = "AppleAccountUI/AsyncIconImageBridge.swift";
  v61 = 0;
  v60 = 0;
  v58 = 0.0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v53 = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA98, &qword_1C55B7100);
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v35 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v4, v5, v6);
  v50 = &v28 - v35;
  v36 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v8, &v28 - v35, v9, v10);
  v48 = &v28 - v36;
  v61 = &v28 - v36;
  v60 = v12;
  v58 = v11;
  v59 = v13;
  v57 = v3;
  sub_1C5549C00();
  v37 = *MEMORY[0x1E69A8A80];
  MEMORY[0x1E69E5928](v37, v14);
  v40 = sub_1C5549C64(v37);
  v56 = v40;
  v54 = v38;
  v55 = v39;
  [v40 setSize_];
  MEMORY[0x1E69E5928](v45, v15);
  MEMORY[0x1E69E5928](v40, v16);
  MEMORY[0x1E69E5928](v45, v17);
  MEMORY[0x1E69E5928](v40, v18);
  v19 = swift_allocObject();
  v20 = v39;
  v21 = v45;
  v22 = v19;
  v23 = v40;
  v42 = v22;
  v22[2] = v38;
  v22[3] = v20;
  *(v22 + 4) = v21;
  *(v22 + 5) = v23;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAA8, &unk_1C55B7108);
  v44 = sub_1C554A79C();
  sub_1C554A788();
  sub_1C5594C44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAC8, qword_1C55B7120);
  (*(v46 + 16))(v50, v48, v49);
  v51 = sub_1C5595484();
  v53 = v51;
  *&v25 = MEMORY[0x1E69E5928](v51, v24).n128_u64[0];
  v52 = [v51 view];
  MEMORY[0x1E69E5920](v51);
  if (v52)
  {
    v31 = v52;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v30 = v31;
  v29 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor_];
  MEMORY[0x1E69E5920](v29);
  v26 = MEMORY[0x1E69E5920](v30);
  (*(v46 + 8))(v48, v49, v26);
  MEMORY[0x1E69E5920](v40);
  return v51;
}

unint64_t sub_1C5549C00()
{
  v2 = qword_1EC15EAA0;
  if (!qword_1EC15EAA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15EAA0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1C5549C64(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() imageDescriptorNamed_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t *sub_1C5549CC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v107 = a4;
  v119 = a1;
  v117 = a5;
  v118 = a6;
  v120 = a2;
  v121 = a3;
  v108 = "Fatal error";
  v109 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v110 = "AppleAccountUI/AsyncIconImageBridge.swift";
  v198 = 0;
  v196 = 0.0;
  v197 = 0;
  v195 = 0;
  v194 = 0;
  memset(__b, 0, 0x39uLL);
  v191 = 0;
  v192 = 0;
  v190 = 0;
  v188 = 0;
  v181 = 0;
  v182 = 0;
  v173 = 0;
  v172 = 0;
  v170 = 0;
  v164 = 0;
  v111 = 0;
  v112 = sub_1C5595F04();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v6, v7, v8);
  v116 = &v26 - v115;
  v124 = sub_1C5594C34();
  v122 = *(v124 - 8);
  v123 = v124 - 8;
  v10 = MEMORY[0x1EEE9AC00](v124, v119, v124, v9);
  v125 = (&v26 - v11);
  v198 = v12;
  v196 = v10;
  v197 = v13;
  v195 = v120;
  v194 = v121;
  (*(v122 + 16))();
  if ((*(v122 + 88))(v125, v124) == *MEMORY[0x1E69E3A28])
  {
    (*(v122 + 96))(v125, v124);
    v104 = *v125;
    v164 = v104;
    v72 = sub_1C54127B4();
    v73 = v15;
    v74 = v16;
    v75 = v17;
    sub_1C54127C8(v116);
    v76 = sub_1C5595F44();
    (*(v113 + 8))(v116, v112);
    v79 = v152;
    v152[0] = v76;
    v77 = MEMORY[0x1E6981748];
    v78 = MEMORY[0x1E6981710];
    sub_1C5410F68();
    sub_1C5595D14();
    sub_1C5410D10(v79);
    v80 = v146;
    v146[0] = v152[1];
    v146[1] = v152[2];
    v94 = 1;
    v147 = v153 & 1;
    v148 = v154;
    v149 = v155 & 1;
    v150 = v156;
    v151 = v157;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBF0, &unk_1C55B47A0);
    v99 = sub_1C546FB60();
    v103 = v158;
    sub_1C540EFD8(v80, v97, v158);
    sub_1C5410D10(v80);
    v81 = v158[0];
    v82 = v158[1];
    v83 = v159;
    v84 = v160;
    v85 = v161;
    v86 = v162;
    v87 = v163;

    v88 = v134;
    v134[0] = v81;
    v134[1] = v82;
    v135 = v83 & 1 & v94;
    v136 = v84;
    v137 = v85 & 1 & v94;
    v138 = v86;
    v139 = v87;
    v102 = v140;
    sub_1C540EFD8(v134, v97, v140);
    sub_1C5410D10(v88);
    v89 = v140[0];
    v90 = v140[1];
    v91 = v141;
    v92 = v142;
    v93 = v143;
    v95 = v144;
    v96 = v145;

    v100 = v127;
    v127[0] = v89;
    v127[1] = v90;
    v128 = v91 & 1 & v94;
    v129 = v92;
    v130 = v93 & 1 & v94;
    v131 = v95;
    v132 = v96;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAC0, &qword_1C55B7118);
    v18 = sub_1C554A844();
    v101 = v133;
    sub_1C540FD1C(v100, v97, v98, v99, v18, v133);
    sub_1C5410D10(v100);
    v105 = v165;
    v106 = 57;
    memcpy(v165, v101, 0x39uLL);
    sub_1C554AAC0(v165, &v126);
    memcpy(__b, v105, v106);
    sub_1C5410D10(v102);
    sub_1C5410D10(v103);

    memcpy(__dst, v105, v106);
  }

  else
  {
    *&v19 = MEMORY[0x1E69E5928](v121, v14).n128_u64[0];
    v71 = [v120 imageForDescriptor_];
    swift_unknownObjectRelease();
    if (v71)
    {
      v70 = v71;
      v55 = v71;
      v173 = v71;
      v21 = [v71 CGImage];
      v56 = v21;
      if (v21)
      {
        v54 = v56;
      }

      else
      {
        sub_1C5596C94();
        __break(1u);
      }

      v42 = v54;
      [v55 scale];
      v41 = v22;
      sub_1C542ABC0();
      v23 = sub_1C5595EE4();
      v43 = &v171;
      v171 = v23;
      v51 = &v172;
      v47 = MEMORY[0x1E6981748];
      v48 = MEMORY[0x1E6981710];
      sub_1C540EFD8(&v171, MEMORY[0x1E6981748], &v172);
      sub_1C5410D10(v43);
      v44 = v172;

      v45 = &v169;
      v169 = v44;
      v50 = &v170;
      sub_1C540EFD8(&v169, v47, &v170);
      sub_1C5410D10(v45);
      v46 = v170;

      v49 = &v166;
      v166 = v46;
      sub_1C540FD1C(&v166, v47, v47, v48, v48, &v167);
      sub_1C5410D10(v49);
      v53 = v167;
      v52 = v168;

      v191 = v53;
      v192 = v52 & 1;
      sub_1C5410D10(v50);
      sub_1C5410D10(v51);
      MEMORY[0x1E69E5920](v55);
      v68 = v53;
      v69 = v52;
    }

    else
    {
      sub_1C55965F4("questionmark.square.dashed", 26, 1);
      v20 = sub_1C5595EF4();
      v57 = &v189;
      v189 = v20;
      v65 = &v190;
      v61 = MEMORY[0x1E6981748];
      v62 = MEMORY[0x1E6981710];
      sub_1C540EFD8(&v189, MEMORY[0x1E6981748], &v190);
      sub_1C5410D10(v57);
      v58 = v190;

      v59 = &v187;
      v187 = v58;
      v64 = &v188;
      sub_1C540EFD8(&v187, v61, &v188);
      sub_1C5410D10(v59);
      v60 = v188;

      v63 = &v184;
      v184 = v60;
      sub_1C54108A0(&v184, v61, v61, v62, v62, &v185);
      sub_1C5410D10(v63);
      v67 = v185;
      v66 = v186;

      v191 = v67;
      v192 = v66 & 1;
      sub_1C5410D10(v64);
      sub_1C5410D10(v65);
      v68 = v67;
      v69 = v66;
    }

    v29 = &v179;
    v179 = v68;
    v32 = 1;
    v180 = v69 & 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAC0, &qword_1C55B7118);
    v35 = sub_1C554A844();
    v38 = &v181;
    sub_1C540EFD8(v29, v34, &v181);
    sub_1C5410D10(v29);
    v30 = v181;
    v31 = v182;

    v36 = &v176;
    v176 = v30;
    v177 = v31 & 1 & v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBF0, &unk_1C55B47A0);
    v24 = sub_1C546FB60();
    v37 = v178;
    sub_1C54108A0(v36, v33, v34, v24, v35, v178);
    sub_1C5410D10(v36);
    v39 = v183;
    v40 = 57;
    memcpy(v183, v37, 0x39uLL);
    sub_1C554AAC0(v183, &v175);
    memcpy(__b, v39, v40);
    sub_1C5410D10(v38);
    sub_1C5410D10(&v191);
    (*(v122 + 8))(v125, v124);
    memcpy(__dst, v39, v40);
  }

  v28 = v174;
  memcpy(v174, __dst, 0x39uLL);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAA8, &unk_1C55B7108);
  sub_1C554A79C();
  sub_1C540EFD8(v28, v27, v107);
  sub_1C554ABB8(v28);
  result = __b;
  sub_1C554ABB8(__b);
  return result;
}

unint64_t sub_1C554A79C()
{
  v2 = qword_1EC15EAB0;
  if (!qword_1EC15EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAA8, &unk_1C55B7108);
    sub_1C546FB60();
    sub_1C554A844();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554A844()
{
  v2 = qword_1EC15EAB8;
  if (!qword_1EC15EAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAC0, &qword_1C55B7118);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EAB8);
    return WitnessTable;
  }

  return v2;
}

id AsyncIconImageBridge.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for AsyncIconImageBridge();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id AsyncIconImageBridge.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncIconImageBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C554AAC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *(a1 + 56);
  sub_1C554AB78();
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10 & 1;
  return result;
}

uint64_t sub_1C554AC48()
{
  v4[0] = *(v0 + 8);
  v4[1] = *(v0 + 24);
  sub_1C5409F74(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595F84();
  sub_1C5409FBC(v4);
  return v2;
}

void sub_1C554ACEC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  sub_1C5409F74(&v7, v6);
  sub_1C5409F74(&v7, v5);
  v4[0] = v7;
  v4[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595F94();
  sub_1C5409FBC(v4);
  sub_1C5409FBC(&v7);
}

void sub_1C554ADC4(uint64_t a1@<X8>)
{
  v9[0] = *(v1 + 8);
  v9[1] = *(v1 + 24);
  sub_1C5409F74(v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595FA4();
  sub_1C5409FBC(v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7 & 1;
}

uint64_t sub_1C554AEA0()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_1C554AF18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3 & 1;
  *(v4 + 32) = a4;
}

uint64_t sub_1C554AFA0@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v117 = sub_1C554C258;
  v136 = MEMORY[0x1E697CF10];
  v142 = MEMORY[0x1E697D368];
  v153 = MEMORY[0x1E697D600];
  v83 = sub_1C5411614;
  v84 = sub_1C554D870;
  v85 = MEMORY[0x1E697D340];
  v201 = 0;
  __n = 40;
  v170 = 0;
  memset(&v200[5], 0, 0x28uLL);
  memcpy(__dst, __src, sizeof(__dst));
  v101 = __dst[0];
  v111 = __dst[1];
  v112 = __dst[2];
  v113 = LOBYTE(__dst[3]);
  v102 = __dst[4];
  v171 = 0;
  v150 = sub_1C5595584();
  v143 = *(v150 - 8);
  v144 = v150 - 8;
  v87 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v145 = &v62 - v87;
  v128 = sub_1C55955D4();
  v119 = *(v128 - 8);
  v120 = v128 - 8;
  v88 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v128, v4, v5, v6);
  v127 = &v62 - v88;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAD0, &qword_1C55B71A0);
  v121 = *(v124 - 8);
  v122 = v124 - 8;
  v89 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v124, v7, v8, v9);
  v123 = &v62 - v89;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAD8, &qword_1C55B71A8);
  v131 = *(v134 - 8);
  v132 = v134 - 8;
  v90 = (*(v131 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v134, v10, v11, v12);
  v133 = &v62 - v90;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAE0, &qword_1C55B71B0);
  v137 = *(v140 - 8);
  v138 = v140 - 8;
  v91 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v140, v13, v14, v15);
  v139 = &v62 - v91;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAE8, &qword_1C55B71B8);
  v146 = *(v149 - 8);
  v147 = v149 - 8;
  v92 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v149, v16, v17, v18);
  v148 = &v62 - v92;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAF0, &qword_1C55B71C0);
  v157 = *(v160 - 8);
  v158 = v160 - 8;
  v93 = (*(v157 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v160, v19, v20, v21);
  v159 = &v62 - v93;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAF8, &qword_1C55B71C8);
  v94 = (*(*(v161 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v161, v22, v23, v24);
  v166 = &v62 - v94;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB00, &qword_1C55B71D0);
  v95 = (*(*(v168 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v168, v25, v26, v27);
  v175 = &v62 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB08, &qword_1C55B71D8);
  v97 = (*(*(v96 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96, v28, v29, v30);
  v169 = &v62 - v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB10, &qword_1C55B71E0);
  v99 = (*(*(v98 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98, v31, v32, v33);
  v100 = &v62 - v99;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB18, &qword_1C55B71E8);
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v109 = *(v104 + 64);
  v106 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](__src, v34, v35, v36);
  v107 = &v62 - v106;
  v108 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37, &v62 - v106, v38, v39);
  v110 = &v62 - v108;
  MEMORY[0x1EEE9AC00](v40, &v62 - v108, v41, v42);
  v114 = &v62 - v43;
  v201 = &v62 - v43;
  v200[5] = v44;
  v200[6] = v111;
  v200[7] = v112;
  v167 = 1;
  v181 = 1;
  LOBYTE(v200[8]) = v113 & 1;
  v200[9] = v45;
  sub_1C554C1F0(v46, v200);
  v115 = v182;
  v182[2] = __src;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB20, &qword_1C55B71F0);
  sub_1C554C260();
  sub_1C5595964();
  sub_1C554C4D4(__src);
  v118 = sub_1C55957A4();
  sub_1C55955C4();
  v125 = sub_1C554C50C();
  MEMORY[0x1C6946710](v118, 0x3FB999999999999ALL, v170, v127, v124);
  v130 = *(v119 + 8);
  v129 = v119 + 8;
  v130(v127, v128);
  (*(v121 + 8))(v123, v124);
  v126 = sub_1C5595804();
  sub_1C55955C4();
  v199[9] = v124;
  v199[10] = v125;
  v154 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1C6946710](v126, v171, v170, v127, v134);
  v130(v127, v128);
  (*(v131 + 8))(v133, v134);
  v199[7] = v134;
  v199[8] = OpaqueTypeConformance2;
  v141 = swift_getOpaqueTypeConformance2();
  sub_1C5595C94();
  (*(v137 + 8))(v139, v140);
  sub_1C5595574();
  v199[5] = v140;
  v199[6] = v141;
  v151 = swift_getOpaqueTypeConformance2();
  v152 = MEMORY[0x1E697C750];
  sub_1C5595E24();
  (*(v143 + 8))(v145, v150);
  (*(v146 + 8))(v148, v149);
  v199[1] = v149;
  v199[2] = v150;
  v199[3] = v151;
  v199[4] = v152;
  v155 = swift_getOpaqueTypeConformance2();
  v156 = sub_1C5411080();
  sub_1C5411148(v160, v155);
  sub_1C5595BB4();
  (*(v157 + 8))(v159, v160);
  v47 = sub_1C5595E74();
  v165 = v199;
  v199[0] = v47;
  v163 = sub_1C554D3E0();
  v162 = MEMORY[0x1E69815C0];
  v164 = MEMORY[0x1E6981568];
  sub_1C5410CE8(v161, MEMORY[0x1E69815C0]);
  sub_1C5595A74();
  sub_1C5410D10(v165);
  sub_1C536F188(v166);
  v172 = sub_1C554D5CC();
  v48 = sub_1C5410F68();
  v173 = &v54;
  v54 = 0;
  v55 = v167;
  v56 = 0x7FF0000000000000;
  v57 = 0;
  v58 = v48;
  v59 = v49;
  v60 = v168;
  v61 = v172;
  sub_1C5595D24();
  v50 = __src;
  sub_1C536F1F0(v175);
  v51 = *(v50 + 8);
  v177 = &v205;
  v205 = v51;
  v206 = *(v50 + 24);
  sub_1C5409F74(&v205, &v195);
  v193 = v205;
  v194 = v206;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595F84();
  v178 = v190;
  v179 = v191;
  v180 = v192;
  sub_1C5409FBC(v177);
  v196 = v178;
  v197 = v179;
  if (v180 & 1 & v181)
  {
    v80 = 0;
    v81 = 1;
  }

  else
  {
    v80 = v196;
    v81 = 0;
  }

  v74 = v81;
  v75 = v80;
  v52 = *(__src + 8);
  v76 = &v203;
  v203 = v52;
  v204 = *(__src + 24);
  sub_1C5409F74(&v203, v187);
  v185 = v203;
  v186 = v204;
  sub_1C5595F84();
  v77 = v183[5];
  v78 = v183[6];
  v79 = v184;
  sub_1C5409FBC(v76);
  v187[4] = v77;
  v188 = v78;
  v189 = v79 & 1;
  if (v79)
  {
    v72 = 0;
    v73 = 1;
  }

  else
  {
    v72 = v188;
    v73 = 0;
  }

  v63 = v73;
  v62 = v72;
  v64 = sub_1C554D674();
  sub_1C5410F68();
  sub_1C5595D14();
  sub_1C536F1F0(v169);
  v66 = type metadata accessor for CGSize(0);
  sub_1C554C1F0(__src, v183);
  v65 = swift_allocObject();
  memcpy((v65 + 16), __src, 0x28uLL);
  v67 = sub_1C554D878();
  v68 = sub_1C5411860();
  v60 = v68;
  sub_1C5595C64();

  sub_1C536F1F0(v100);
  v182[4] = v98;
  v182[5] = v66;
  v182[6] = v67;
  v182[7] = v68;
  v69 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v110, v103, v114);
  v71 = *(v104 + 8);
  v70 = v104 + 8;
  v71(v110, v103);
  (*(v104 + 16))(v107, v114, v103);
  sub_1C540EFD8(v107, v103, v82);
  v71(v107, v103);
  return (v71)(v114, v103);
}

uint64_t sub_1C554BE6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v30 = a1;
  v29 = sub_1C554DE24;
  v45 = 0;
  v18[1] = 40;
  memset(&v44[5], 0, 0x28uLL);
  memcpy(__dst, v30, sizeof(__dst));
  v20 = __dst[0];
  v24 = __dst[1];
  v25 = __dst[2];
  v26 = LOBYTE(__dst[3]);
  v21 = __dst[4];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB38, &qword_1C55B71F8);
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v19 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34, v2, v3, v4);
  v35 = v18 - v19;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB20, &qword_1C55B71F0);
  v23 = *(*(v37 - 8) + 64);
  v22 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30, v5, v6, v7);
  v39 = v18 - v22;
  MEMORY[0x1EEE9AC00](v8, v18 - v22, v9, v10);
  v40 = v18 - v11;
  v45 = v18 - v11;
  v44[5] = v12;
  v44[6] = v24;
  v44[7] = v25;
  LOBYTE(v44[8]) = v26 & 1;
  v44[9] = v13;
  sub_1C554C1F0(v14, v44);
  v27 = &v41;
  v42 = v30;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB48, &qword_1C55B7200);
  sub_1C554C3B4();
  sub_1C5596164();
  sub_1C554C4D4(v30);
  v15 = [objc_opt_self() systemGroupedBackgroundColor];
  v16 = sub_1C5595E44();
  v31 = &v43;
  v43 = v16;
  sub_1C554C308();
  sub_1C5595BF4();
  sub_1C5410D10(v31);
  (*(v32 + 8))(v35, v34);
  v38 = sub_1C554C260();
  sub_1C540EFD8(v39, v37, v40);
  sub_1C554DE2C(v39);
  sub_1C554DEBC(v40, v39);
  sub_1C540EFD8(v39, v37, v36);
  sub_1C554DE2C(v39);
  return sub_1C554DE2C(v40);
}

uint64_t sub_1C554C1F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1C5594CF4();
  *a2 = v4;
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = *(a1 + 24);
  v6 = a1[4];

  result = a2;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1C554C260()
{
  v2 = qword_1EC15EB28;
  if (!qword_1EC15EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB20, &qword_1C55B71F0);
    sub_1C554C308();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554C308()
{
  v2 = qword_1EC15EB30;
  if (!qword_1EC15EB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB38, &qword_1C55B71F8);
    sub_1C554C3B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554C3B4()
{
  v2 = qword_1EC15EB40;
  if (!qword_1EC15EB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB48, &qword_1C55B7200);
    sub_1C554C44C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554C44C()
{
  v2 = qword_1EC15EB50;
  if (!qword_1EC15EB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB58, &qword_1C55B7208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554C50C()
{
  v2 = qword_1EC15EB60;
  if (!qword_1EC15EB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAD0, &qword_1C55B71A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C554C594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v13 = a1;
  v15 = sub_1C554DF6C;
  v34 = 0;
  v33 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB48, &qword_1C55B7200);
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v11 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v2, v3, v4);
  v25 = &v11 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v11 - v11, v7, v8);
  v26 = &v11 - v12;
  v34 = &v11 - v12;
  v33 = v9;
  v35 = *v9;
  sub_1C540955C(&v35, &v32);
  v20 = &v31;
  v31 = v35;
  KeyPath = swift_getKeyPath();
  sub_1C554C1F0(v13, v30);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v13, 0x28uLL);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E820, &unk_1C55B69E0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB58, &qword_1C55B7208);
  v19 = sub_1C554DF74();
  sub_1C554C44C();
  sub_1C5596104();
  v24 = sub_1C554C3B4();
  sub_1C540EFD8(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);
  (*(v21 + 16))(v25, v26, v27);
  sub_1C540EFD8(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_1C554C860@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v16 = 0;
  memset(&v14[16], 0, 0x28uLL);
  memset(v14, 0, 0x80uLL);
  memcpy(__dst, a2, sizeof(__dst));
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v14[16] = __dst[0];
  v14[17] = __dst[1];
  v14[18] = __dst[2];
  LOBYTE(v14[19]) = __dst[3] & 1;
  v14[20] = __dst[4];
  sub_1C554C1F0(a2, v12);
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB98, &unk_1C55B7370);
  sub_1C554E00C();
  sub_1C5412C88();
  sub_1C5596024();
  sub_1C554C4D4(a2);

  memcpy(v18, v13, sizeof(v18));
  memcpy(v11, v18, sizeof(v11));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB58, &qword_1C55B7208);
  sub_1C554C44C();
  sub_1C540EFD8(v11, v8, v14);
  sub_1C554E094(v11);
  memcpy(v19, v14, sizeof(v19));
  sub_1C554E0E4(v19, v10);
  memcpy(v9, v19, sizeof(v9));
  sub_1C540EFD8(v9, v8, a3);
  sub_1C554E094(v9);
  return sub_1C554E094(v14);
}

void sub_1C554CA98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[1] = v101;
  v66 = a4;
  v44 = a2;
  v43 = a3;
  v113 = 0;
  v111 = 0;
  v112 = 0;
  v70 = v101;
  memset(v101, 0, sizeof(v101));
  v31 = sub_1C5595F04();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v24 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v43, v5, v6);
  v32 = v23 - v24;
  v113 = a1;
  v111 = v7;
  v112 = v8;
  sub_1C554CFD8(v7, v8);
  v33 = sub_1C5595ED4();
  v25 = sub_1C54127B4();
  v26 = v9;
  v27 = v10;
  v28 = v11;
  sub_1C54127C8(v32);
  v34 = sub_1C5595F44();
  (*(v29 + 8))(v32, v31);

  v35 = v106;
  v106[0] = v34;
  sub_1C5595B14();
  sub_1C5410D10(v35);
  v38 = v103;
  v103[0] = v106[1];
  v103[1] = v106[2];
  v59 = 1;
  v104 = v107 & 1;
  v105 = v108;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8, &unk_1C55ADDF0);
  v37 = sub_1C5413D10();
  sub_1C5410F68();
  v39 = &v109;
  sub_1C5595D14();
  sub_1C5410D10(v38);
  v40 = __dst;
  v41 = 72;
  memcpy(__dst, v39, sizeof(__dst));
  v42 = v102;
  memcpy(v102, __dst, sizeof(v102));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEC8, &qword_1C55B7380);
  v64 = sub_1C5413C6C();
  v71 = v110;
  sub_1C540EFD8(v42, v62, v110);
  sub_1C5410D10(v42);
  v12 = sub_1C54637B4(v44, v43);
  v45 = v100;
  v100[0] = v12;
  v100[1] = v13;
  sub_1C54141E8();
  v96 = sub_1C5595A04();
  v97 = v14;
  v98 = v15;
  v99 = v16;
  v47 = v96;
  v48 = v14;
  v49 = v15;
  v50 = v16;
  v46 = sub_1C5595824();
  v92 = v47;
  v93 = v48;
  v94 = v49 & 1 & v59;
  v95 = v50;
  v88 = sub_1C55959C4();
  v89 = v17;
  v90 = v18;
  v91 = v19;
  v52 = v88;
  v53 = v17;
  v54 = v18;
  v55 = v19;

  sub_1C5412EA0(v47, v48, v49 & 1);

  v51 = sub_1C5595EA4();
  v84 = v52;
  v85 = v53;
  v86 = v54 & 1 & v59;
  v87 = v55;
  v80 = sub_1C5595984();
  v81 = v20;
  v82 = v21;
  v83 = v22;
  v56 = v80;
  v57 = v20;
  v58 = v21;
  v60 = v22;

  sub_1C5412EA0(v52, v53, v54 & 1);

  v61 = v77;
  v77[0] = v56;
  v77[1] = v57;
  v78 = v58 & 1 & v59;
  v79 = v60;
  v63 = MEMORY[0x1E6981148];
  v65 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v77, MEMORY[0x1E6981148], v70);
  sub_1C5414260(v61);
  v69 = v75;
  sub_1C554E1BC(v71, v75);
  v67 = v76;
  v76[0] = v69;
  v68 = v74;
  sub_1C54142A8(v70, v74);
  v76[1] = v68;
  v73[0] = v62;
  v73[1] = v63;
  v72[0] = v64;
  v72[1] = v65;
  sub_1C540F5A0(v67, 2uLL, v73, v72, v66);
  sub_1C5414260(v68);
  sub_1C5410D10(v69);
  sub_1C5414260(v70);
  sub_1C5410D10(v71);
}

id sub_1C554CFD8(uint64_t a1, uint64_t a2)
{
  v40 = 0;
  v36 = 0;
  v41 = a1;
  v42 = a2;
  sub_1C5594CF4();
  sub_1C5594CF4();
  v21 = sub_1C5596554();
  MEMORY[0x1E69E5928](v21, v2);

  MEMORY[0x1E69E5920](v21);
  v39 = v21;
  v22 = [objc_opt_self() sharedManager];
  v23 = [v22 appBundleIdentifierForDataclass_];
  MEMORY[0x1E69E5920](v22);
  v24 = sub_1C5596574();
  v25 = v3;
  v37 = v24;
  v38 = v3;
  MEMORY[0x1E69E5920](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB88, qword_1C55B7220);
  sub_1C5596E04();
  v29 = v4;
  v26 = *MEMORY[0x1E6959690];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6959690], v4);
  *v29 = sub_1C545C2A0(v26, v5);
  v29[1] = v6;
  *&v7 = MEMORY[0x1E69E5920](v26).n128_u64[0];
  v29[2] = sub_1C55965F4("com.apple.graphic-icon.passwords", v7);
  v29[3] = v8;
  v27 = *MEMORY[0x1E6959650];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6959650], v8);
  v29[4] = sub_1C545C2A0(v27, v9);
  v29[5] = v10;
  *&v11 = MEMORY[0x1E69E5920](v27).n128_u64[0];
  v29[6] = sub_1C55965F4("com.apple.graphic-icon.avp-setup", 32, 1, v11);
  v29[7] = v12;
  v28 = *MEMORY[0x1E6959600];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6959600], v12);
  v29[8] = sub_1C545C2A0(v28, v13);
  v29[9] = v14;
  *&v15 = MEMORY[0x1E69E5920](v28).n128_u64[0];
  v29[10] = sub_1C55965F4("com.apple.graphic-icon.icloud-backup", 36, 1, v15);
  v29[11] = v16;
  sub_1C540FCD8();
  v36 = sub_1C5596454();
  sub_1C5594CF4();
  v34[0] = a1;
  v34[1] = a2;
  sub_1C5596464();
  sub_1C5401ECC(v34);
  v32 = v34[2];
  v33 = v35;
  if (v35)
  {
    sub_1C5418C84();
    v19 = sub_1C554D91C(v32, v33);

    MEMORY[0x1E69E5920](v21);
    return v19;
  }

  else
  {
    sub_1C5418C84();
    v18 = sub_1C540F46C(v24, v25);

    MEMORY[0x1E69E5920](v21);
    return v18;
  }
}

unint64_t sub_1C554D3E0()
{
  v2 = qword_1EC15EB68;
  if (!qword_1EC15EB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAF8, &qword_1C55B71C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAE8, &qword_1C55B71B8);
    sub_1C5595584();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAE0, &qword_1C55B71B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAD8, &qword_1C55B71A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EAD0, &qword_1C55B71A0);
    sub_1C554C50C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554D5CC()
{
  v2 = qword_1EC15EB70;
  if (!qword_1EC15EB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB00, &qword_1C55B71D0);
    sub_1C554D3E0();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554D674()
{
  v2 = qword_1EC15EB78;
  if (!qword_1EC15EB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB08, &qword_1C55B71D8);
    sub_1C554D5CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB78);
    return WitnessTable;
  }

  return v2;
}

void sub_1C554D718(uint64_t *result, double *a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0;
  v3 = result[1];
  v12 = *result;
  v13 = v3;
  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  v9 = a3;
  if (v10 != 0.0 || v5 != 0.0)
  {
    v14 = *(a3 + 8);
    v15 = *(a3 + 24);
    sub_1C5409F74(&v14, v8);
    sub_1C5409F74(&v14, v7);
    v6[0] = v14;
    v6[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
    sub_1C5595F94();
    sub_1C5409FBC(v6);
    sub_1C5409FBC(&v14);
  }
}

unint64_t sub_1C554D878()
{
  v2 = qword_1EC15EB80;
  if (!qword_1EC15EB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB10, &qword_1C55B71E0);
    sub_1C554D674();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB80);
    return WitnessTable;
  }

  return v2;
}

id sub_1C554D91C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C5596554();
  v4 = [swift_getObjCClassFromMetadata() imageForDataclassWithType_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

uint64_t sub_1C554D990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v11 = sub_1C5409E40(0, 0, 1);
  v6 = v2;
  v7 = v3;
  v9 = v4;

  __b[1] = v11;
  __b[2] = v6;
  LOBYTE(__b[3]) = v7 & 1;
  __b[4] = v9;
  sub_1C5594CF4();
  sub_1C5594CF4();
  __b[0] = a1;

  sub_1C554C4D4(__b);
  result = a1;
  *a2 = a1;
  *(a2 + 8) = v11;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1C554DB24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C554DC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C554DE2C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB38, &qword_1C55B71F8);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB20, &qword_1C55B71F0);

  return a1;
}

uint64_t sub_1C554DEBC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB38, &qword_1C55B71F8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB20, &qword_1C55B71F0) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

unint64_t sub_1C554DF74()
{
  v2 = qword_1EC15EB90;
  if (!qword_1EC15EB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E820, &unk_1C55B69E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C554E00C()
{
  v2 = qword_1EC15EBA0;
  if (!qword_1EC15EBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB98, &unk_1C55B7370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EBA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C554E094(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 96), *(a1 + 104), *(a1 + 112) & 1);

  return a1;
}

uint64_t sub_1C554E0E4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x30uLL);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  sub_1C54130AC(v4, v5, v6 & 1);
  *(a2 + 96) = v4;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6 & 1;
  v9 = *(a1 + 120);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 120) = v9;
  return result;
}

uint64_t sub_1C554E1BC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  memcpy((a2 + 24), a1 + 3, 0x30uLL);
  return a2;
}

uint64_t sub_1C554E224(char a1)
{
  if (a1)
  {
    sub_1C55965F4("Custom Name", 11, 1);
  }

  else
  {
    sub_1C55965F4("Full Name", 9, 1);
  }

  sub_1C55953C4();
  sub_1C5439370();
  sub_1C5576C44();
  return sub_1C55959E4();
}

uint64_t sub_1C554E3F8(uint64_t a1, uint64_t a2)
{
  sub_1C5596E04();
  *v2 = "fullName";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  *(v2 + 24) = "customName";
  *(v2 + 32) = 10;
  *(v2 + 40) = 2;
  sub_1C540FCD8();
  v6 = sub_1C5596D64();

  if (!v6)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v6 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

void sub_1C554E52C()
{
  sub_1C5596E04();
  *v0 = 0;
  v0[1] = 1;
  sub_1C540FCD8();
}

uint64_t sub_1C554E57C(char a1)
{
  if (a1)
  {
    return sub_1C55965F4("customName", 10, 1);
  }

  else
  {
    return sub_1C55965F4("fullName", 8, 1);
  }
}

uint64_t sub_1C554E724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C554E3F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C554E75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C554E57C(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C554E7F0()
{
  v2 = qword_1EC15EBA8;
  if (!qword_1EC15EBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C5C8, &qword_1C55AEE68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EBA8);
    return WitnessTable;
  }

  return v2;
}

id sub_1C554E8F0(uint64_t a1, void *a2)
{
  v10 = a1;
  v9 = a2;
  *&v2 = MEMORY[0x1E69E5928](a2, a2).n128_u64[0];
  if (a2)
  {
    v4 = [a2 navigationController];
    MEMORY[0x1E69E5920](a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return v7;
  }

  sub_1C54F02F8();
  return sub_1C5404B48();
}

uint64_t sub_1C554EA10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C554E88C();
  *a1 = result;
  return result;
}

unint64_t sub_1C554EA88()
{
  v2 = qword_1EC15EBB0;
  if (!qword_1EC15EBB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EBB0);
    return WitnessTable;
  }

  return v2;
}

void sub_1C554EB4C(uint64_t a1)
{
  sub_1C554EA88();
  sub_1C5595724();
  __break(1u);
}

uint64_t sub_1C554EB8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C554ECD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C554EF14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C554EEB0();
  *a1 = result;
  return result;
}

unint64_t sub_1C554EF8C()
{
  v2 = qword_1EC15EBB8;
  if (!qword_1EC15EBB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EBB8);
    return WitnessTable;
  }

  return v2;
}

void sub_1C554F050(uint64_t a1)
{
  sub_1C554EF8C();
  sub_1C5595724();
  __break(1u);
}

id sub_1C554F0A4(void *a1)
{
  v42 = a1;
  v52 = 0;
  v64 = 0;
  v63 = 0;
  v60 = 0;
  v41 = 0;
  v49 = sub_1C5594C74();
  v43 = v49;
  v44 = *(v49 - 8);
  v48 = v44;
  v45 = v44;
  v46 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42, v49, v1, v2);
  v3 = &v19 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v3;
  v64 = v4;
  v63 = v5;
  v6 = sub_1C54B05F8();
  (*(v48 + 16))(v3, v6, v49);
  v54 = sub_1C5594C54();
  v50 = v54;
  v53 = sub_1C5596974();
  v51 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v55 = sub_1C5596E04();
  if (os_log_type_enabled(v54, v53))
  {
    v7 = v41;
    v32 = sub_1C5596A74();
    v28 = v32;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v30 = 0;
    v33 = sub_1C5419DC0(0, v29, v29);
    v31 = v33;
    v34 = sub_1C5419DC0(v30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v59 = v32;
    v58 = v33;
    v57 = v34;
    v35 = 0;
    v36 = &v59;
    sub_1C5419E14(0, &v59);
    sub_1C5419E14(v35, v36);
    v56 = v55;
    v37 = &v19;
    MEMORY[0x1EEE9AC00](&v19, v8, v9, v10);
    v38 = &v19 - 6;
    *(&v19 - 4) = v11;
    *(&v19 - 3) = &v58;
    *(&v19 - 2) = &v57;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v40 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v50, v51, "Creating LegacyContactsView.", v28, 2u);
      v26 = 0;
      sub_1C5419E74(v31, 0, v29);
      sub_1C5419E74(v34, v26, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v27 = v40;
    }
  }

  else
  {

    v27 = v41;
  }

  (*(v45 + 8))(v47, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBC0, qword_1C55B77D8);
  v12 = v42;
  memset(v61, 0, sizeof(v61));
  v20 = type metadata accessor for LegacyContactsViewModel(0);
  v13 = sub_1C54F56B4();
  v21 = v62;
  sub_1C54768EC(v42, v61, v20, v13, v62);
  v25 = sub_1C5595484();
  v60 = v25;
  v14 = v25;
  v15 = sub_1C55965F4("LEGACY_CONTACTS_VIEW_NAVIGATION_TITLE", 37, 1);
  v22 = v16;
  sub_1C54637B4(v15, v16);
  v23 = v17;
  v24 = sub_1C5596554();

  [v25 setTitle_];

  return v25;
}

void *sub_1C554F6C8(void *a1)
{
  v43 = a1;
  v53 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v38 = 0;
  v39 = sub_1C5594994();
  v40 = *(v39 - 8);
  v41 = v40;
  MEMORY[0x1EEE9AC00](0, v39, v1, v2);
  v42 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C5594C74();
  v44 = v50;
  v45 = *(v50 - 8);
  v49 = v45;
  v46 = v45;
  v47 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43, v50, v4, v5);
  v6 = &v19 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v6;
  v64 = v7;
  v63 = v8;
  v9 = sub_1C54B05F8();
  (*(v49 + 16))(v6, v9, v50);
  v55 = sub_1C5594C54();
  v51 = v55;
  v54 = sub_1C5596974();
  v52 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v56 = sub_1C5596E04();
  if (os_log_type_enabled(v55, v54))
  {
    v10 = v38;
    v29 = sub_1C5596A74();
    v25 = v29;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v27 = 0;
    v30 = sub_1C5419DC0(0, v26, v26);
    v28 = v30;
    v31 = sub_1C5419DC0(v27, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v60 = v29;
    v59 = v30;
    v58 = v31;
    v32 = 0;
    v33 = &v60;
    sub_1C5419E14(0, &v60);
    sub_1C5419E14(v32, v33);
    v57 = v56;
    v34 = &v19;
    MEMORY[0x1EEE9AC00](&v19, v11, v12, v13);
    v35 = (&v19 - 6);
    *(&v19 - 4) = v14;
    *(&v19 - 3) = &v59;
    *(&v19 - 2) = &v58;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v37 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v51, v52, "Creating LegacyContactsViewModel.", v25, 2u);
      v23 = 0;
      sub_1C5419E74(v28, 0, v26);
      sub_1C5419E74(v31, v23, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v24 = v37;
    }
  }

  else
  {

    v24 = v38;
  }

  (*(v46 + 8))(v48, v44);
  sub_1C5594984();
  v21 = sub_1C5594944();
  v22 = v15;
  v61 = v21;
  v62 = v15;
  (*(v41 + 8))(v42, v39);
  v20 = 0;
  type metadata accessor for LegacyContactsViewModel(0);
  v16 = v43;
  v19 = sub_1C54F51C8();
  v17 = sub_1C542ABC0();
  return sub_1C54F51F4(v43, v19, v20, v20, v17 & 1, v21, v22);
}

void *sub_1C554FC94(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v47 = a2;
  v46 = a1;
  v57 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v40 = 0;
  v41 = sub_1C5594994();
  v42 = *(v41 - 8);
  v43 = v42;
  MEMORY[0x1EEE9AC00](0, v41, v3, v4);
  v44 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C5594C74();
  v48 = v54;
  v49 = *(v54 - 8);
  v53 = v49;
  v50 = v49;
  v51 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46, v47, v45, v54);
  v6 = &v21 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v6;
  v70 = v7;
  v68 = v8;
  v69 = v9;
  v67 = v10;
  v11 = sub_1C54B05F8();
  (*(v53 + 16))(v6, v11, v54);
  v59 = sub_1C5594C54();
  v55 = v59;
  v58 = sub_1C5596974();
  v56 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v60 = sub_1C5596E04();
  if (os_log_type_enabled(v59, v58))
  {
    v12 = v40;
    v31 = sub_1C5596A74();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v29 = 0;
    v32 = sub_1C5419DC0(0, v28, v28);
    v30 = v32;
    v33 = sub_1C5419DC0(v29, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v64 = v31;
    v63 = v32;
    v62 = v33;
    v34 = 0;
    v35 = &v64;
    sub_1C5419E14(0, &v64);
    sub_1C5419E14(v34, v35);
    v61 = v60;
    v36 = &v21;
    MEMORY[0x1EEE9AC00](&v21, v13, v14, v15);
    v37 = (&v21 - 6);
    *(&v21 - 4) = v16;
    *(&v21 - 3) = &v63;
    *(&v21 - 2) = &v62;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v39 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v55, v56, "Creating LegacyContactsViewModel.", v27, 2u);
      v25 = 0;
      sub_1C5419E74(v30, 0, v28);
      sub_1C5419E74(v33, v25, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  (*(v50 + 8))(v52, v48);
  sub_1C5594984();
  v23 = sub_1C5594944();
  v24 = v17;
  v65 = v23;
  v66 = v17;
  (*(v43 + 8))(v44, v41);
  v22 = 0;
  type metadata accessor for LegacyContactsViewModel(0);
  v18 = v46;
  v21 = sub_1C54F51C8();
  v19 = sub_1C542ABC0();
  return sub_1C54F51F4(v46, v21, v22, v22, v19 & 1, v23, v24);
}

id LegacyContactsViewFactory.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for LegacyContactsViewFactory();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id LegacyContactsViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyContactsViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C555042C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595F84();

  return v5;
}

uint64_t sub_1C55504FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;

  v12[0] = a4;
  v12[1] = a5;
  v13 = a6 & 1;
  v14 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595F94();
  sub_1C5409FBC(v12);
}

uint64_t sub_1C55505F4@<X0>(uint64_t a5@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595FA4();

  *a5 = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11 & 1;
  return result;
}

uint64_t sub_1C5550790(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
}

uint64_t sub_1C5550818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v87 = &v210;
  v88 = a5;
  v117 = 0;
  v119 = sub_1C55516CC;
  v138 = MEMORY[0x1E697CF10];
  v149 = MEMORY[0x1E697D600];
  v161 = MEMORY[0x1E697D368];
  v89 = sub_1C5411614;
  v90 = sub_1C5552210;
  v91 = MEMORY[0x1E697D340];
  v212 = 0;
  v210 = 0u;
  v211 = 0u;
  v213 = a1;
  v214 = a2;
  v215 = a3;
  v216 = a4;
  *&v173 = a1;
  *(&v173 + 1) = a2;
  v174 = a3;
  v176 = a4;
  v166 = 0;
  v146 = sub_1C5595584();
  v139 = *(v146 - 8);
  v140 = v146 - 8;
  v92 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v5, v6, v7);
  v141 = v65 - v92;
  v130 = sub_1C55955D4();
  v121 = *(v130 - 8);
  v122 = v130 - 8;
  v93 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v130, v8, v9, v10);
  v129 = v65 - v93;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBC8, &qword_1C55B7820);
  v123 = *(v126 - 8);
  v124 = v126 - 8;
  v94 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v126, v11, v12, v13);
  v125 = v65 - v94;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBD0, &qword_1C55B7828);
  v133 = *(v136 - 8);
  v134 = v136 - 8;
  v95 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v136, v14, v15, v16);
  v135 = v65 - v95;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBD8, &qword_1C55B7830);
  v142 = *(v145 - 8);
  v143 = v145 - 8;
  v96 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v145, v17, v18, v19);
  v144 = v65 - v96;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBE0, &qword_1C55B7838);
  v154 = *(v156 - 8);
  v155 = v156 - 8;
  v97 = (*(v154 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v156, v20, v21, v22);
  v157 = v65 - v97;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBE8, &qword_1C55B7840);
  v98 = (*(*(v159 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v159, v23, v24, v25);
  v158 = v65 - v98;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBF0, &qword_1C55B7848);
  v169 = *(v172 - 8);
  v170 = v172 - 8;
  v99 = (*(v169 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v172, v26, v27, v28);
  v171 = v65 - v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBF8, &qword_1C55B7850);
  v101 = (*(*(v100 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100, v29, v30, v31);
  v164 = v65 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC00, &qword_1C55B7858);
  v103 = (*(*(v102 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v102, v32, v33, v34);
  v104 = v65 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC08, &qword_1C55B7860);
  v106 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105, v35, v36, v37);
  v107 = v65 - v106;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC10, &qword_1C55B7868);
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v114 = *(v109 + 64);
  v111 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v108, v38, v39, v40);
  v112 = v65 - v111;
  v113 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65 - v111, v41, v42, v43);
  v115 = v65 - v113;
  MEMORY[0x1EEE9AC00](v65 - v113, v44, v45, v46);
  v116 = v65 - v47;
  v212 = v65 - v47;
  v210 = v173;
  v163 = 1;
  v180 = 1;
  LOBYTE(v211) = v174 & 1;
  *(&v211 + 1) = v48;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC18, &qword_1C55B7870);
  sub_1C5551924();
  sub_1C5595964();
  v120 = sub_1C55957A4();
  sub_1C55955C4();
  v127 = sub_1C5551AF4();
  v165 = 0;
  MEMORY[0x1C6946710](v120, 0x3FB999999999999ALL);
  v132 = *(v121 + 8);
  v131 = v121 + 8;
  v132(v129, v130);
  (*(v123 + 8))(v125, v126);
  v128 = sub_1C5595804();
  sub_1C55955C4();
  v209[3] = v126;
  v209[4] = v127;
  v162 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1C6946710](v128, v166, v165, v129, v136);
  v132(v129, v130);
  (*(v133 + 8))(v135, v136);
  sub_1C5595574();
  v209[1] = v136;
  v209[2] = OpaqueTypeConformance2;
  v147 = swift_getOpaqueTypeConformance2();
  v148 = MEMORY[0x1E697C750];
  sub_1C5595E24();
  (*(v139 + 8))(v141, v146);
  (*(v142 + 8))(v144, v145);
  v49 = sub_1C5595E74();
  v153 = v209;
  v209[0] = v49;
  v205 = v145;
  v206 = v146;
  v207 = v147;
  v208 = v148;
  v151 = swift_getOpaqueTypeConformance2();
  v150 = MEMORY[0x1E69815C0];
  v152 = MEMORY[0x1E6981568];
  sub_1C5410CE8(v156, MEMORY[0x1E69815C0]);
  sub_1C5595A74();
  sub_1C5410D10(v153);
  (*(v154 + 8))(v157, v156);
  v160 = sub_1C5551D48();
  sub_1C5595C94();
  sub_1C536F3A8(v158);
  v203 = v159;
  v204 = v160;
  v167 = swift_getOpaqueTypeConformance2();
  v50 = sub_1C5410F68();
  v168 = &v57;
  v57 = 0;
  v58 = v163;
  v59 = 0x7FF0000000000000;
  v60 = 0;
  v61 = v50;
  v62 = v51;
  v63 = v172;
  v64 = v167;
  sub_1C5595D24();
  (*(v169 + 8))(v171, v172);

  v197 = v173;
  v198 = v174 & 1 & v180;
  v199 = v176;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
  sub_1C5595F84();
  v177 = v194;
  v178 = v195;
  v179 = v196;

  v200 = v177;
  v201 = v178;
  if (v179 & 1 & v180)
  {
    v85 = 0;
    v86 = 1;
  }

  else
  {
    v85 = v200;
    v86 = 0;
  }

  v79 = v86;
  v80 = v85;

  v188 = v173;
  v84 = 1;
  v189 = v174 & 1;
  v190 = v176;
  sub_1C5595F84();
  v81 = v185;
  v82 = v186;
  v83 = v187;

  v191 = v81;
  v192 = v82;
  if (v83 & 1 & v84)
  {
    v77 = 0;
    v78 = 1;
  }

  else
  {
    v77 = v192;
    v78 = 0;
  }

  v66 = v78;
  v65[1] = v77;
  v67 = sub_1C5551EEC();
  sub_1C5410F68();
  sub_1C5595D14();
  sub_1C536F438(v164);
  v68 = sub_1C5551FE0();
  v69 = sub_1C5411080();
  sub_1C5411148(v102, v68);
  sub_1C5595BB4();
  sub_1C536F438(v104);
  v71 = type metadata accessor for CGSize(0);

  v52 = swift_allocObject();
  v53 = *(&v173 + 1);
  v54 = v174;
  v55 = v176;
  v70 = v52;
  *(v52 + 16) = v173;
  *(v52 + 24) = v53;
  *(v52 + 32) = v54 & 1;
  *(v52 + 40) = v55;
  v72 = sub_1C5552254();
  v73 = sub_1C5411860();
  v63 = v73;
  sub_1C5595C64();

  sub_1C536F438(v107);
  v181 = v105;
  v182 = v71;
  v183 = v72;
  v184 = v73;
  v74 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v115, v108, v116);
  v76 = *(v109 + 8);
  v75 = v109 + 8;
  v76(v115, v108);
  (*(v109 + 16))(v112, v116, v108);
  sub_1C540EFD8(v112, v108, v88);
  v76(v112, v108);
  return (v76)(v116, v108);
}

uint64_t sub_1C55516CC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v18 = 0;
  v19 = sub_1C5551B7C;
  v31 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC30, &qword_1C55B7878);
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v15 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v1, v2, v3);
  v24 = &v14 - v15;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC18, &qword_1C55B7870);
  v16 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v4, v5, v6);
  v28 = &v14 - v16;
  v17 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v16, v8, v9, v10);
  v29 = &v14 - v17;
  v31 = &v14 - v17;
  sub_1C5551A78();
  sub_1C5596164();
  v11 = [objc_opt_self() systemGroupedBackgroundColor];
  v12 = sub_1C5595E44();
  v20 = &v30;
  v30 = v12;
  sub_1C55519CC();
  sub_1C5595BF4();
  sub_1C5410D10(v20);
  (*(v21 + 8))(v24, v23);
  v27 = sub_1C5551924();
  sub_1C540EFD8(v28, v26, v29);
  sub_1C5553304(v28);
  sub_1C5553394(v29, v28);
  sub_1C540EFD8(v28, v26, v25);
  sub_1C5553304(v28);
  return sub_1C5553304(v29);
}

unint64_t sub_1C5551924()
{
  v2 = qword_1EC15EC20;
  if (!qword_1EC15EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC18, &qword_1C55B7870);
    sub_1C55519CC();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55519CC()
{
  v2 = qword_1EC15EC28;
  if (!qword_1EC15EC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC30, &qword_1C55B7878);
    sub_1C5551A78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5551A78()
{
  v2 = qword_1EC169E00[0];
  if (!qword_1EC169E00[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC169E00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5551AF4()
{
  v2 = qword_1EC15EC38;
  if (!qword_1EC15EC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBC8, &qword_1C55B7820);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC38);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C5551B7C@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  sub_1C55965F4("exclamationmark.shield", 22, 1);
  v8 = sub_1C5595F14();
  v1 = sub_1C55965F4("SIGN_OUT_REMAIN_CELL_TITLE", 26, 1);
  v9 = sub_1C54637B4(v1, v2);
  v10 = v3;

  v4 = sub_1C55965F4("SIGN_OUT_REMAIN_SUBTITLE", 24, 1);
  v11 = sub_1C54637B4(v4, v5);
  v12 = v6;

  sub_1C540EFC0(v8, v9, v10, v11, v12, v22);
  memcpy(__dst, v22, sizeof(__dst));
  sub_1C5551A78();
  sub_1C540EFD8(__dst, &unk_1F447EC60, __b);
  sub_1C5412D34(__dst);
  v13 = __b[0];
  v14 = __b[1];
  v15 = __b[2];
  v16 = __b[3];
  v17 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  v19[3] = v16;
  v19[4] = v17;
  sub_1C540EFD8(v19, &unk_1F447EC60, a1);
  sub_1C5412D34(v19);
  result = __b;
  sub_1C5412D34(__b);
  return result;
}

unint64_t sub_1C5551D48()
{
  v2 = qword_1EC15EC40;
  if (!qword_1EC15EC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBE8, &qword_1C55B7840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBD8, &qword_1C55B7830);
    sub_1C5595584();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBD0, &qword_1C55B7828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBC8, &qword_1C55B7820);
    sub_1C5551AF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5551EEC()
{
  v2 = qword_1EC15EC48;
  if (!qword_1EC15EC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBF8, &qword_1C55B7850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EBE8, &qword_1C55B7840);
    sub_1C5551D48();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5551FE0()
{
  v2 = qword_1EC15EC50;
  if (!qword_1EC15EC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC00, &qword_1C55B7858);
    sub_1C5551EEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC50);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1C5552084(uint64_t *result, double *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v20 = 0;
  v21 = 0;
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0u;
  v17 = 0u;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v6 = result[1];
  v20 = *result;
  v21 = v6;
  v12 = a2[1];
  v18 = *a2;
  v19 = v12;
  *&v16 = a3;
  *(&v16 + 1) = a4;
  LOBYTE(v17) = a5 & 1;
  *(&v17 + 1) = a6;
  if (v18 != 0.0 || v12 != 0.0)
  {

    v13[0] = a3;
    v13[1] = a4;
    v14 = a5 & 1;
    v15 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60, &unk_1C55ADA80);
    sub_1C5595F94();
    sub_1C5409FBC(v13);
  }

  return result;
}

unint64_t sub_1C5552254()
{
  v2 = qword_1EC15EC58;
  if (!qword_1EC15EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC08, &qword_1C55B7860);
    sub_1C5551FE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55522F8()
{
  v7 = 0u;
  v8 = 0u;
  *&v4 = sub_1C5409E40(0, 0, 1);
  *(&v4 + 1) = v0;
  v5 = v1;
  v6 = v2;

  v7 = v4;
  LOBYTE(v8) = v5 & 1;
  *(&v8 + 1) = v6;
  sub_1C5409FBC(&v7);
  return v4;
}

uint64_t sub_1C5552434@<X0>(uint64_t a1@<X8>)
{
  memset(&v11[25], 0, 0x28uLL);
  memset(v11, 0, 0xC8uLL);
  memcpy(__dst, v1, sizeof(__dst));
  v11[25] = __dst[0];
  v11[26] = __dst[1];
  v11[27] = __dst[2];
  v11[28] = __dst[3];
  v11[29] = __dst[4];
  sub_1C5595354();
  sub_1C5412728(v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC60, &qword_1C55B7880);
  sub_1C5552B00();
  sub_1C5596024();
  sub_1C5412D34(v3);
  memcpy(v13, v10, sizeof(v13));
  memcpy(v8, v13, sizeof(v8));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC70, qword_1C55B7888);
  sub_1C5552B88();
  sub_1C540EFD8(v8, v5, v11);
  sub_1C5552C10(v8);
  memcpy(v14, v11, sizeof(v14));
  sub_1C5552C9C(v14, v7);
  memcpy(v6, v14, sizeof(v6));
  sub_1C540EFD8(v6, v5, a1);
  sub_1C5552C10(v6);
  return sub_1C5552C10(v11);
}

uint64_t *sub_1C555260C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  __src = a1;
  v46 = sub_1C5413E90;
  __n = 40;
  __c = 0;
  memset(&v85[11], 0, 0x28uLL);
  v63 = v74;
  v53 = 88;
  memset(v74, 0, sizeof(v74));
  memcpy(v86, __src, sizeof(v86));
  v15 = v86[0];
  v17 = v86[1];
  v18 = v86[2];
  v19 = v86[3];
  v16 = v86[4];
  v44 = 0;
  v26 = sub_1C5595F04();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  MEMORY[0x1EEE9AC00](__src, v2, v3, v4);
  v27 = &v13 - v5;
  v85[11] = v6;
  v85[12] = v17;
  v85[13] = v18;
  v85[14] = v19;
  v85[15] = v7;
  v28 = *v8;

  v20 = sub_1C54127B4();
  v21 = v9;
  v22 = v10;
  v23 = v11;
  sub_1C54127C8(v27);
  v29 = sub_1C5595F44();
  (*(v24 + 8))(v27, v26);

  v30 = v80;
  v80[0] = v29;
  sub_1C5595B14();
  sub_1C5410D10(v30);
  v34 = v77;
  v77[0] = v80[1];
  v77[1] = v80[2];
  v45 = 1;
  v78 = v81 & 1;
  v79 = v82;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8, &unk_1C55ADDF0);
  v33 = sub_1C5413D10();
  sub_1C5410F68();
  v35 = &v83;
  sub_1C5595D14();
  sub_1C5410D10(v34);
  v36 = v87;
  v37 = 72;
  memcpy(v87, v35, sizeof(v87));
  v40 = v76;
  memcpy(v76, v87, sizeof(v76));
  v39 = sub_1C5595E54();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEC8, &qword_1C55B7380);
  sub_1C5413C6C();
  v41 = &v84;
  sub_1C5595B94();

  sub_1C5410D10(v40);
  v42 = __dst;
  memcpy(__dst, v41, v53);
  v43 = v75;
  memcpy(v75, v42, v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEB8, &unk_1C55ADDE0);
  v57 = sub_1C5413BC4();
  v64 = v85;
  sub_1C540EFD8(v43, v55, v85);
  sub_1C5553224(v43);
  v49 = sub_1C5595434();
  sub_1C5412728(__src, v72);
  v47 = v65;
  v65[2] = __src;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BEF0, &unk_1C55ADE00);
  sub_1C5413E98();
  v51 = &v73;
  sub_1C5596064();
  sub_1C5412D34(__src);
  v52 = v89;
  memcpy(v89, v51, v53);
  v54 = v71;
  memcpy(v71, v52, v53);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF00, &unk_1C55B7B00);
  v58 = sub_1C5413F20();
  sub_1C540EFD8(v54, v56, v63);
  sub_1C5413FA8(v54);
  v62 = v69;
  sub_1C5553268(v64, v69);
  v60 = v70;
  v70[0] = v62;
  v61 = v68;
  sub_1C54140E0(v63, v68);
  v70[1] = v61;
  v67[0] = v55;
  v67[1] = v56;
  v66[0] = v57;
  v66[1] = v58;
  sub_1C540F5A0(v60, 2uLL, v67, v66, v59);
  sub_1C5413FA8(v61);
  sub_1C5553224(v62);
  sub_1C5413FA8(v63);
  result = v64;
  sub_1C5553224(v64);
  return result;
}

unint64_t sub_1C5552B00()
{
  v2 = qword_1EC15EC68;
  if (!qword_1EC15EC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC60, &qword_1C55B7880);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5552B88()
{
  v2 = qword_1EC15EC78;
  if (!qword_1EC15EC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC70, qword_1C55B7888);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EC78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5552C10(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 136), *(a1 + 144), *(a1 + 152) & 1);

  sub_1C5412EA0(*(a1 + 168), *(a1 + 176), *(a1 + 184) & 1);

  return a1;
}

uint64_t sub_1C5552C9C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x30uLL);
  v4 = *(a1 + 96);

  *(a2 + 96) = v4;
  v5 = *(a1 + 104);

  *(a2 + 104) = v5;
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  sub_1C54130AC(v6, v7, v8 & 1);
  *(a2 + 136) = v6;
  *(a2 + 144) = v7;
  *(a2 + 152) = v8 & 1;
  v9 = *(a1 + 160);
  sub_1C5594CF4();
  *(a2 + 160) = v9;
  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  v12 = *(a1 + 184);
  sub_1C54130AC(v10, v11, v12 & 1);
  *(a2 + 168) = v10;
  *(a2 + 176) = v11;
  *(a2 + 184) = v12 & 1;
  v15 = *(a1 + 192);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 192) = v15;
  return result;
}

uint64_t sub_1C5552EA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 32))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v4 = *(a1 + 24);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C5552FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
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

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C5553224(void *a1)
{
}

uint64_t sub_1C5553268(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  memcpy((a2 + 24), a1 + 3, 0x30uLL);
  v5 = a1[9];

  *(a2 + 72) = v5;
  v7 = a1[10];

  result = a2;
  *(a2 + 80) = v7;
  return result;
}

uint64_t sub_1C5553304(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC30, &qword_1C55B7878);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC18, &qword_1C55B7870);

  return a1;
}

uint64_t sub_1C5553394(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC30, &qword_1C55B7878);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC18, &qword_1C55B7870) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1C5553450@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v38 = MEMORY[0x1E6981198];
  v43 = sub_1C5553AE8;
  v40 = sub_1C5553EAC;
  v70 = 0;
  v36 = 40;
  memset(&v69[5], 0, 0x28uLL);
  memcpy(__dst, v56, sizeof(__dst));
  v29 = __dst[0];
  v33 = __dst[1];
  v34 = LOBYTE(__dst[2]);
  v35 = __dst[3];
  v30 = __dst[4];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC80, &qword_1C55B7B20);
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v26 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v1, v2, v3);
  v52 = &v25 - v26;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC88, &qword_1C55B7B28);
  v27 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53, v4, v5, v6);
  v55 = &v25 - v27;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC90, &qword_1C55B7B30);
  v28 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v7, v8, v9);
  v59 = &v25 - v28;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC98, &qword_1C55B7B38);
  v32 = *(*(v61 - 8) + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56, v10, v11, v12);
  v63 = &v25 - v31;
  MEMORY[0x1EEE9AC00](v13, &v25 - v31, v14, v15);
  v64 = &v25 - v16;
  v70 = &v25 - v16;
  v69[5] = v17;
  v69[6] = v33;
  LOBYTE(v69[7]) = v34;
  v69[8] = v35;
  v69[9] = v18;
  sub_1C5470FB4(v19, v69);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v56, v36);
  sub_1C5470FB4(v56, v68);
  v41 = &v65;
  v66 = v56;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ECA0, &qword_1C55B7B40);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ECA8, &qword_1C55B7B48);
  v20 = sub_1C5553EB4();
  v67[1] = v37;
  v67[2] = v20;
  swift_getOpaqueTypeConformance2();
  sub_1C5595FD4();
  sub_1C5470F7C(v56);
  v22 = sub_1C5553FB8(*(v56 + 16) & 1, v21);
  v48 = v67;
  v67[0] = v22;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ECB8, &qword_1C55B7B50);
  v45 = sub_1C555400C();
  v46 = sub_1C5554094();
  v47 = sub_1C55056A4(v51);
  sub_1C5595A84();
  sub_1C5410D10(v48);
  (*(v49 + 8))(v52, v51);
  v54 = sub_1C5554134();
  sub_1C544B7B0();
  sub_1C5595B34();
  sub_1C536F5D8(v55);
  v58 = sub_1C5554264(*(v56 + 16) & 1, v23);
  sub_1C55542B4();
  sub_1C5595B94();

  sub_1C536F668(v59);
  v62 = sub_1C555435C();
  sub_1C540EFD8(v63, v61, v64);
  sub_1C536F774(v63);
  sub_1C536F8BC(v64, v63);
  sub_1C540EFD8(v63, v61, v60);
  sub_1C536F774(v63);
  return sub_1C536F774(v64);
}

uint64_t sub_1C5553AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v20 = a1;
  v35 = MEMORY[0x1E6981198];
  v59 = 0;
  v58 = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ECA0, &qword_1C55B7B40);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v17 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, v2, v3, v4);
  v40 = &v17 - v17;
  v18 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v17 - v17, v7, v8);
  v41 = &v17 - v18;
  v59 = &v17 - v18;
  v58 = v9;
  v60 = *v9;
  sub_1C5402BDC(&v60, &v56);
  v19 = &v55;
  v55 = v60;
  sub_1C54141E8();
  v51 = sub_1C5595A04();
  v52 = v10;
  v53 = v11;
  v54 = v12;
  v26 = v48;
  v48[0] = v51;
  v48[1] = v10;
  v21 = 1;
  v25 = 1;
  v49 = v11 & 1;
  v50 = v12;
  v13 = sub_1C5553F54();
  v24 = sub_1C54AFEF4(v13, v14 & 1);
  v22 = MEMORY[0x1E6981148];
  v23 = MEMORY[0x1E6981138];
  sub_1C5410F68();
  v27 = &v57;
  v31 = 0;
  sub_1C5595D24();
  sub_1C5414260(v26);
  v28 = __dst;
  v29 = 144;
  memcpy(__dst, v27, sizeof(__dst));
  v32 = v47;
  memcpy(v47, __dst, sizeof(v47));
  sub_1C5595884();
  v30 = v15;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ECA8, &qword_1C55B7B48);
  v34 = sub_1C5553EB4();
  sub_1C5595A94();
  sub_1C5414260(v32);
  v45 = v33;
  v46 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v40, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v40, v42);
  (*(v36 + 16))(v40, v41, v42);
  sub_1C540EFD8(v40, v42, v38);
  v44(v40, v42);
  return (v44)(v41, v42);
}

unint64_t sub_1C5553EB4()
{
  v2 = qword_1EC15ECB0;
  if (!qword_1EC15ECB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ECA8, &qword_1C55B7B48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5553FB8(char a1, __n128 a2)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return sub_1C5595E54();
  }
}

unint64_t sub_1C555400C()
{
  v2 = qword_1EC15ECC0;
  if (!qword_1EC15ECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC80, &qword_1C55B7B20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5554094()
{
  v2 = qword_1EC15ECC8;
  if (!qword_1EC15ECC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ECB8, &qword_1C55B7B50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5554134()
{
  v2 = qword_1EC15ECD0;
  if (!qword_1EC15ECD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC88, &qword_1C55B7B28);
    sub_1C555400C();
    sub_1C55541DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55541DC()
{
  v2 = qword_1EC15ECD8;
  if (!qword_1EC15ECD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ECE0, &qword_1C55B7B58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5554264(uint64_t a1, __n128 a2)
{
  if (a1)
  {
    return sub_1C5595E54();
  }

  else
  {
    return sub_1C5595E84();
  }
}

unint64_t sub_1C55542B4()
{
  v2 = qword_1EC15ECE8;
  if (!qword_1EC15ECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC90, &qword_1C55B7B30);
    sub_1C5554134();
    sub_1C54EC138();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C555435C()
{
  v2 = qword_1EC15ECF0;
  if (!qword_1EC15ECF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC98, &qword_1C55B7B38);
    sub_1C55542B4();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5554404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memset(__b, 0, sizeof(__b));
  sub_1C5594CF4();
  sub_1C5594CF4();
  __b[0] = a1;
  __b[1] = a2;
  LOBYTE(__b[2]) = a3 & 1;

  __b[3] = a4;
  __b[4] = a5;

  sub_1C5470F7C(__b);
  result = a1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

unint64_t sub_1C55545DC()
{
  v2 = qword_1EC15ECF8;
  if (!qword_1EC15ECF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ECF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55546D8()
{
  v2 = qword_1EC15ED00;
  if (!qword_1EC15ED00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5554754(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C555486C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C5554A7C()
{
  v2 = *v0;

  return v2;
}

void *sub_1C5554AB4@<X0>(uint64_t a1@<X8>)
{
  v8[2] = a1;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50);
  v8[0] = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v1, v2, v3);
  v4 = (v8 - v8[0]);
  v10 = (v8 - v8[0]);
  v11 = v5;
  v6 = type metadata accessor for SignInDataclassActionConfirmationAlert(0);
  sub_1C54367BC((v8[1] + *(v6 + 20)), v4);
  sub_1C5595004();
  return sub_1C5436890(v10);
}

uint64_t type metadata accessor for SignInDataclassActionConfirmationAlert(uint64_t a1)
{
  v2 = qword_1EC16A130;
  if (!qword_1EC16A130)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1C5554C60(void *a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v2, v3, v4);
  v10 = (&v8 - v9);
  sub_1C54367BC(v5, (&v8 - v9));
  v6 = type metadata accessor for SignInDataclassActionConfirmationAlert(0);
  sub_1C5436BB4(v10, (v1 + *(v6 + 20)));
  return sub_1C5436890(v11);
}

uint64_t sub_1C5554D10()
{
  type metadata accessor for SignInDataclassActionConfirmationAlert(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5554DA8(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for SignInDataclassActionConfirmationAlert(0) + 24));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v6);
}

void (*sub_1C5554E6C(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL, 4871);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SignInDataclassActionConfirmationAlert(0) + 24));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C5554F58()
{
  type metadata accessor for SignInDataclassActionConfirmationAlert(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5555008()
{
  v2 = *(v0 + *(type metadata accessor for SignInDataclassActionConfirmationAlert(0) + 24));

  return v2 & 1;
}

uint64_t sub_1C5555054(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SignInDataclassActionConfirmationAlert(0) + 24);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C55550B0@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v100 = 0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED08, &qword_1C55B7D48);
  v83 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81 - 8, v81, v2, v3);
  v85 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = &v43 - v85;
  MEMORY[0x1EEE9AC00](&v43 - v85, v4, v5, v6);
  v84 = &v43 - v85;
  MEMORY[0x1EEE9AC00](v7, v8, v9, v10);
  v86 = &v43 - v85;
  v126 = &v43 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED10, &qword_1C55B7D50);
  v88 = *(v87 - 8);
  v89 = v88;
  v91 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87 - 8, v87, v11, v12);
  v93 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  v90 = &v43 - v93;
  MEMORY[0x1EEE9AC00](&v43 - v93, v13, v14, v15);
  v92 = &v43 - v93;
  MEMORY[0x1EEE9AC00](v16, v17, v18, v19);
  v94 = &v43 - v93;
  v125 = &v43 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED18, &qword_1C55B7D58);
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95 - 8, v95, v20, v21);
  v98 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = &v43 - v98;
  MEMORY[0x1EEE9AC00](&v43 - v98, v22, v23, v24);
  v99 = &v43 - v98;
  v124 = &v43 - v98;
  v123 = v1;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v55 = MEMORY[0x1E6981E70];
    v56 = MEMORY[0x1E6981E60];
    sub_1C544B78C();
    v75 = 1;
    v62 = 0;
    sub_1C5596064();
    v109[2] = v111;
    v109[3] = v112;
    v110 = v113;
    v28 = sub_1C55965F4("SIGN_IN_DATACLASS_MERGE_ALERT_TITLE", 35, v75);
    v57 = v29;
    v58 = sub_1C54637B4(v28, v29);
    v59 = v30;

    v109[0] = v58;
    v109[1] = v59;
    v65 = sub_1C5554F58();
    v66 = v31;
    v60 = v32;
    v64 = &v43;
    MEMORY[0x1EEE9AC00](&v43, v31, v32, v33);
    v61 = v40;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340, &qword_1C55B59C0);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED30, &qword_1C55B7D70);
    v72 = sub_1C5518AB8();
    v73 = sub_1C54141E8();
    v76 = sub_1C5556DA0();
    v74 = MEMORY[0x1E6981138];
    v63 = v39;
    v42 = MEMORY[0x1E6981138];
    v41 = v76;
    v40[1] = v73;
    v40[0] = v72;
    v71 = MEMORY[0x1E6981148];
    v39[3] = MEMORY[0x1E6981148];
    v39[2] = v70;
    v69 = MEMORY[0x1E69E6158];
    v39[1] = MEMORY[0x1E69E6158];
    v39[0] = v68;
    v67 = v109;
    sub_1C5595D04();

    sub_1C5401ECC(v67);
    v101 = v68;
    v102 = v69;
    v103 = v70;
    v104 = v71;
    v105 = v72;
    v106 = v73;
    v107 = v76;
    v108 = v74;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v92, v87, v94);
    v78 = *(v89 + 8);
    v79 = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78(v92, v87);
    v100 = v92;
    v54 = *(v89 + 16);
    v53 = v89 + 16;
    v54(v90, v94, v87);
    sub_1C540EFD8(v90, v87, v92);
    v78(v90, v87);
    v54(v90, v92, v87);
    v34 = sub_1C5556E28();
    sub_1C540FD1C(v90, v87, v81, OpaqueTypeConformance2, v34, v97);
    v78(v90, v87);
    sub_1C536FC70(v97, v99);
    v78(v92, v87);
    v78(v94, v87);
  }

  else
  {
    v51 = &v43;
    MEMORY[0x1EEE9AC00](&v43, v25, v26, v27);
    v48 = v40;
    v41 = v35;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED20, &unk_1C55B7D60);
    v50 = sub_1C5556C48();
    sub_1C544B78C();
    sub_1C5596064();
    v52 = sub_1C5556E28();
    sub_1C540EFD8(v84, v81, v86);
    sub_1C536FAF0(v84);
    v122 = v84;
    sub_1C536FB7C(v86, v82);
    sub_1C540EFD8(v82, v81, v84);
    sub_1C536FAF0(v82);
    sub_1C536FB7C(v84, v82);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340, &qword_1C55B59C0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED30, &qword_1C55B7D70);
    v46 = sub_1C5518AB8();
    v47 = sub_1C54141E8();
    v36 = sub_1C5556DA0();
    v114 = v44;
    v115 = MEMORY[0x1E69E6158];
    v116 = v45;
    v117 = MEMORY[0x1E6981148];
    v118 = v46;
    v119 = v47;
    v120 = v36;
    v121 = MEMORY[0x1E6981138];
    v37 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v82, v87, v81, v37, v52, v97);
    sub_1C536FAF0(v82);
    sub_1C536FC70(v97, v99);
    sub_1C536FAF0(v84);
    sub_1C536FAF0(v86);
  }

  sub_1C536FE08(v99, v97);
  sub_1C5557758();
  sub_1C540EFD8(v97, v95, v80);
  sub_1C536FFA0(v97);
  return sub_1C536FFA0(v99);
}

uint64_t sub_1C5555C08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v57 = a1;
  v80 = 0;
  v79 = nullsub_1;
  v50 = sub_1C5557DB0;
  v98 = 0;
  v97 = 0;
  v95 = 0;
  v73 = 0;
  v2 = type metadata accessor for SignInDataclassActionConfirmationAlert(0);
  v51 = *(v2 - 8);
  v52 = v51;
  v53 = *(v51 + 64);
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v55 = (v37 - v54);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA90, &unk_1C55B7078);
  v56 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v78 = v37 - v56;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  v85 = *(v87 - 8);
  v86 = v87 - 8;
  v58 = (v85[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v10, v11, v12);
  v59 = v37 - v58;
  v60 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v37 - v58, v15, v16);
  v61 = v37 - v60;
  v62 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v37 - v60, v19, v20);
  v90 = v37 - v62;
  v63 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x1EEE9AC00](v22, v37 - v62, v23, v24);
  v83 = v37 - v63;
  v98 = v37 - v63;
  v97 = v26;
  v74 = 1;
  v66 = sub_1C55965F4("Cancel", 6, 1, v25);
  v70 = v27;
  v64 = sub_1C5439370();
  v69 = sub_1C5576C44();
  v65 = sub_1C55965F4("Cancel button title", 19, v74 & 1);
  v68 = v28;
  sub_1C54398B0();
  v67 = v29;
  v71 = sub_1C55947B4();
  v72 = v30;

  MEMORY[0x1E69E5920](v69);

  v81 = v96;
  v96[0] = v71;
  v96[1] = v72;
  sub_1C5594F14();
  v75 = sub_1C5594F34();
  v31 = *(v75 - 8);
  v76 = *(v31 + 56);
  v77 = v31 + 56;
  v76(v78, 0, v74);
  v82 = sub_1C54141E8();
  sub_1C5595FF4();
  v84 = sub_1C547070C();
  sub_1C540EFD8(v90, v87, v83);
  v88 = v85[1];
  v89 = v85 + 1;
  v88(v90, v87);
  v95 = v90;
  v42 = 1;
  v37[1] = sub_1C55965F4("Continue Anyway and Merge", 25, 1);
  v39 = v32;
  v38 = sub_1C5576C44();
  v37[0] = sub_1C55965F4("Secondary button title on alert to merge local data.", 52, v42 & 1);
  v37[3] = v33;
  sub_1C54398B0();
  v37[2] = v34;
  v40 = sub_1C55947B4();
  v41 = v35;

  MEMORY[0x1E69E5920](v38);

  v45 = v94;
  v94[0] = v40;
  v94[1] = v41;
  sub_1C5594F04();
  (v76)(v78, 0, v42, v75);
  sub_1C5557AEC(v57, v55);
  v43 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v44 = swift_allocObject();
  sub_1C5557C6C(v55, (v44 + v43));
  sub_1C5595FF4();
  sub_1C540EFD8(v61, v87, v90);
  v88(v61, v87);
  v47 = v85[2];
  v46 = v85 + 2;
  v47(v61, v83, v87);
  v48 = v93;
  v93[0] = v61;
  v47(v59, v90, v87);
  v93[1] = v59;
  v92[0] = v87;
  v92[1] = v87;
  v91[0] = v84;
  v91[1] = v84;
  sub_1C540F5A0(v48, 2uLL, v92, v91, v49);
  v88(v59, v87);
  v88(v61, v87);
  v88(v90, v87);
  return (v88)(v83, v87);
}

uint64_t sub_1C55564B0(void (**a1)(uint64_t))
{
  v3 = *a1;

  v3(v1);
}

uint64_t sub_1C555650C@<X0>(uint64_t a1@<X8>)
{
  v27 = 0u;
  v28 = 0u;
  v1 = sub_1C55965F4("SIGN_IN_DATACLASS_MERGE_ALERT_MESSAGE", 37, 1);
  v8 = sub_1C54637B4(v1, v2);
  v9 = v3;

  v25 = v8;
  v26 = v9;
  sub_1C54141E8();
  v21 = sub_1C5595A04();
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v18[0] = v21;
  v18[1] = v4;
  v19 = v5 & 1;
  v20 = v6;
  v14 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v18, MEMORY[0x1E6981148], &v27);
  sub_1C5414260(v18);
  v10 = v27;
  v11 = v28;
  v12 = *(&v28 + 1);
  sub_1C54130AC(v27, *(&v27 + 1), v28 & 1);
  sub_1C5594CF4();
  v15 = v10;
  v16 = v11 & 1;
  v17 = v12;
  sub_1C540EFD8(&v15, v14, a1);
  sub_1C5414260(&v15);
  return sub_1C5414260(&v27);
}

uint64_t sub_1C55566A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v30 = a1;
  v23 = 0;
  v22 = sub_1C5453B74;
  v32 = sub_1C5557E14;
  v34 = sub_1C555650C;
  v46 = MEMORY[0x1E697D0D0];
  v76 = 0;
  v75 = 0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED50, &qword_1C55B7D80);
  v50 = *(v53 - 8);
  v51 = v53 - 8;
  v19 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53, v3, v4, v5);
  v52 = &v19 - v19;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED20, &unk_1C55B7D60);
  v20 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55, v6, v7, v8);
  v57 = &v19 - v20;
  v21 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v19 - v20, v10, v11, v12);
  v58 = &v19 - v21;
  v76 = &v19 - v21;
  v75 = a1;
  v24 = MEMORY[0x1E6981E70];
  v25 = MEMORY[0x1E6981E60];
  sub_1C544B78C();
  v47 = 0;
  v48 = 1;
  sub_1C5596064();
  v29 = v70;
  v70[0] = v72;
  v70[1] = v73;
  v71 = v74 & 1;
  v13 = sub_1C55965F4("SIGN_IN_DATACLASS_MERGE_ALERT_TITLE", 35, v48 & 1);
  v26 = v14;
  v27 = sub_1C54637B4(v13, v14);
  v28 = v15;

  v37 = v69;
  v69[0] = v27;
  v69[1] = v28;
  v35 = sub_1C5554F58();
  v36 = v16;
  v31 = v17;
  v33 = &v59;
  v60 = v30;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340, &qword_1C55B59C0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED30, &qword_1C55B7D70);
  v42 = sub_1C5518AB8();
  v43 = sub_1C54141E8();
  v44 = sub_1C5556DA0();
  v39 = MEMORY[0x1E69E6158];
  v41 = MEMORY[0x1E6981148];
  v45 = MEMORY[0x1E6981138];
  sub_1C5595C14();

  sub_1C5401ECC(v37);
  v61 = v38;
  v62 = v39;
  v63 = v40;
  v64 = v41;
  v65 = v42;
  v66 = v43;
  v67 = v44;
  v68 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5411148(v53, OpaqueTypeConformance2);
  sub_1C5595D84();
  (*(v50 + 8))(v52, v53);
  v56 = sub_1C5556C48();
  sub_1C540EFD8(v57, v55, v58);
  sub_1C537045C(v57);
  sub_1C53704C4(v58, v57);
  sub_1C540EFD8(v57, v55, v54);
  sub_1C537045C(v57);
  return sub_1C537045C(v58);
}

unint64_t sub_1C5556C48()
{
  v2 = qword_1EC15ED28;
  if (!qword_1EC15ED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED20, &unk_1C55B7D60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340, &qword_1C55B59C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED30, &qword_1C55B7D70);
    sub_1C5518AB8();
    sub_1C54141E8();
    sub_1C5556DA0();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5556DA0()
{
  v2 = qword_1EC15ED38;
  if (!qword_1EC15ED38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED30, &qword_1C55B7D70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5556E28()
{
  v2 = qword_1EC15ED40;
  if (!qword_1EC15ED40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED08, &qword_1C55B7D48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5556EB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v57 = a1;
  v80 = 0;
  v79 = nullsub_1;
  v50 = sub_1C5557DB0;
  v98 = 0;
  v97 = 0;
  v95 = 0;
  v73 = 0;
  v2 = type metadata accessor for SignInDataclassActionConfirmationAlert(0);
  v51 = *(v2 - 8);
  v52 = v51;
  v53 = *(v51 + 64);
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v55 = (v37 - v54);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA90, &unk_1C55B7078);
  v56 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v78 = v37 - v56;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  v85 = *(v87 - 8);
  v86 = v87 - 8;
  v58 = (v85[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v10, v11, v12);
  v59 = v37 - v58;
  v60 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v37 - v58, v15, v16);
  v61 = v37 - v60;
  v62 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v37 - v60, v19, v20);
  v90 = v37 - v62;
  v63 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x1EEE9AC00](v22, v37 - v62, v23, v24);
  v83 = v37 - v63;
  v98 = v37 - v63;
  v97 = v26;
  v74 = 1;
  v66 = sub_1C55965F4("Cancel", 6, 1, v25);
  v70 = v27;
  v64 = sub_1C5439370();
  v69 = sub_1C5576C44();
  v65 = sub_1C55965F4("Cancel button title", 19, v74 & 1);
  v68 = v28;
  sub_1C54398B0();
  v67 = v29;
  v71 = sub_1C55947B4();
  v72 = v30;

  MEMORY[0x1E69E5920](v69);

  v81 = v96;
  v96[0] = v71;
  v96[1] = v72;
  sub_1C5594F14();
  v75 = sub_1C5594F34();
  v31 = *(v75 - 8);
  v76 = *(v31 + 56);
  v77 = v31 + 56;
  v76(v78, 0, v74);
  v82 = sub_1C54141E8();
  sub_1C5595FF4();
  v84 = sub_1C547070C();
  sub_1C540EFD8(v90, v87, v83);
  v88 = v85[1];
  v89 = v85 + 1;
  v88(v90, v87);
  v95 = v90;
  v42 = 1;
  v37[1] = sub_1C55965F4("Continue Anyway and Merge", 25, 1);
  v39 = v32;
  v38 = sub_1C5576C44();
  v37[0] = sub_1C55965F4("Secondary button title on alert to merge local data.", 52, v42 & 1);
  v37[3] = v33;
  sub_1C54398B0();
  v37[2] = v34;
  v40 = sub_1C55947B4();
  v41 = v35;

  MEMORY[0x1E69E5920](v38);

  v45 = v94;
  v94[0] = v40;
  v94[1] = v41;
  sub_1C5594F04();
  (v76)(v78, 0, v42, v75);
  sub_1C5557AEC(v57, v55);
  v43 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v44 = swift_allocObject();
  sub_1C5557C6C(v55, (v44 + v43));
  sub_1C5595FF4();
  sub_1C540EFD8(v61, v87, v90);
  v88(v61, v87);
  v47 = v85[2];
  v46 = v85 + 2;
  v47(v61, v83, v87);
  v48 = v93;
  v93[0] = v61;
  v47(v59, v90, v87);
  v93[1] = v59;
  v92[0] = v87;
  v92[1] = v87;
  v91[0] = v84;
  v91[1] = v84;
  sub_1C540F5A0(v48, 2uLL, v92, v91, v49);
  v88(v59, v87);
  v88(v61, v87);
  v88(v90, v87);
  return (v88)(v83, v87);
}

unint64_t sub_1C5557758()
{
  v2 = qword_1EC15ED60;
  if (!qword_1EC15ED60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED18, &qword_1C55B7D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340, &qword_1C55B59C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15ED30, &qword_1C55B7D70);
    sub_1C5518AB8();
    sub_1C54141E8();
    sub_1C5556DA0();
    swift_getOpaqueTypeConformance2();
    sub_1C5556E28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15ED60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55578BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v10 = type metadata accessor for SignInDataclassActionConfirmationAlert(0);
  sub_1C5549080(a3, a5 + *(v10 + 20));
  v12 = *(v10 + 24);
  result = sub_1C5409594(a4 & 1);
  v6 = a5 + v12;
  *v6 = result & 1;
  *(v6 + 1) = v7;
  return result;
}

unint64_t sub_1C55579E8(uint64_t a1)
{
  v5 = sub_1C54AE1F0();
  if (v1 <= 0x3F)
  {
    v5 = sub_1C543D8C0(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_1C5433F94(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

void *sub_1C5557AEC(void *a1, void *a2)
{
  v8 = *a1;
  v10 = a1[1];

  *a2 = v8;
  a2[1] = v10;
  v11 = type metadata accessor for SignInDataclassActionConfirmationAlert(0);
  v12 = *(v11 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v7 = *(a1 + v12);

    *(a2 + v12) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(v11 + 24);
  v5 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  result = a2;
  *(v5 + 1) = v6;
  return result;
}

__n128 sub_1C5557C6C(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  v6 = type metadata accessor for SignInDataclassActionConfirmationAlert(0);
  v7 = *(v6 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1C5595104();
    (*(*(v3 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v7, a1 + v7, *(*(v9 - 8) + 64));
  }

  result = *(a1 + *(v6 + 24));
  *(a2 + *(v6 + 24)) = result;
  return result;
}

uint64_t sub_1C5557DB0()
{
  v1 = *(type metadata accessor for SignInDataclassActionConfirmationAlert(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C55564B0(v2);
}

char *SignOutOrEraseOfferModel.init()()
{
  v68 = 0;
  v0 = OBJC_IVAR___AAUISignOutOrEraseOfferModel_title;
  *OBJC_IVAR___AAUISignOutOrEraseOfferModel_title = 0;
  *(v0 + 8) = 0;
  v1 = &v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_detailText];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_primaryButton];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryButton];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentViewLayout] = 2;
  *&v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_image] = 0;
  v4 = &v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_imageName];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentView] = 0;
  *&v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryView] = 0;
  v5 = &v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkTitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v68[OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkURL];
  *v6 = 0;
  *(v6 + 1) = 0;
  v67.receiver = v68;
  v67.super_class = type metadata accessor for SignOutOrEraseOfferModel();
  v66 = objc_msgSendSuper2(&v67, sel_init);
  MEMORY[0x1E69E5928](v66, v7);
  v68 = v66;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v63 = v68;
    sub_1C5418C84();
    v62 = sub_1C55965F4("device_badge_person_gradient", 28, 1);
    v61 = v8;
    sub_1C5439370();
    v9 = sub_1C5576C44();
    v65 = sub_1C55584D0(v62, v61, v9);
    v64 = &v63[OBJC_IVAR___AAUISignOutOrEraseOfferModel_image];
    swift_beginAccess();
    v10 = *v64;
    *v64 = v65;
  }

  else
  {
    v58 = v68;
    sub_1C5418C84();
    v57 = sub_1C55965F4("iphone_badge_person", 19, 1);
    v56 = v11;
    sub_1C5439370();
    v12 = sub_1C5576C44();
    v60 = sub_1C55584D0(v57, v56, v12);
    v59 = &v58[OBJC_IVAR___AAUISignOutOrEraseOfferModel_image];
    swift_beginAccess();
    v10 = *v59;
    *v59 = v60;
  }

  MEMORY[0x1E69E5920](v10);
  swift_endAccess();
  v32 = v68;
  v13 = sub_1C55965F4("ERASE_AFTER_SIGNING_OUT_TITLE", 29, 1);
  v33 = sub_1C54637B4(v13, v14);
  v35 = v15;

  v34 = &v32[OBJC_IVAR___AAUISignOutOrEraseOfferModel_title];
  swift_beginAccess();
  *v34 = v33;
  v34[1] = v35;

  swift_endAccess();
  v36 = v68;
  v16 = sub_1C55965F4("SIGN_OUT_OFFER_DETAIL_TEXT", 26, 1);
  v37 = sub_1C54637B4(v16, v17);
  v39 = v18;

  v38 = &v36[OBJC_IVAR___AAUISignOutOrEraseOfferModel_detailText];
  swift_beginAccess();
  *v38 = v37;
  v38[1] = v39;

  swift_endAccess();
  v40 = v68;
  v19 = sub_1C55965F4("ERASE_ALL_CONTENTS_AND_SETTINGS_BUTTON", 38, 1);
  v41 = sub_1C54637B4(v19, v20);
  v43 = v21;

  v42 = &v40[OBJC_IVAR___AAUISignOutOrEraseOfferModel_primaryButton];
  swift_beginAccess();
  *v42 = v41;
  v42[1] = v43;

  swift_endAccess();
  v44 = v68;
  v22 = sub_1C55965F4("SIGN_OUT_WITHOUT_ERASING_BUTTON", 31, 1);
  v45 = sub_1C54637B4(v22, v23);
  v47 = v24;

  v46 = &v44[OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryButton];
  swift_beginAccess();
  *v46 = v45;
  v46[1] = v47;

  swift_endAccess();
  v48 = v68;
  v25 = sub_1C55965F4("SIGN_OUT_HELP_LINK", 18, 1);
  v49 = sub_1C54637B4(v25, v26);
  v51 = v27;

  v50 = &v48[OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkTitle];
  swift_beginAccess();
  *v50 = v49;
  v50[1] = v51;

  swift_endAccess();
  v52 = v68;
  v28 = sub_1C55965F4("SIGN_OUT_OFFER_HELP_LINK", 24, 1);
  v53 = sub_1C54637B4(v28, v29);
  v55 = v30;

  v54 = &v52[OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkURL];
  swift_beginAccess();
  *v54 = v53;
  v54[1] = v55;

  swift_endAccess();
  MEMORY[0x1E69E5920](v68);
  return v66;
}

id sub_1C55584D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C5596554();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v6);
  return v4;
}

uint64_t sub_1C5558694()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55587DC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5558878@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555891C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xB0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5558B08()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5558C50(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5558CEC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xC0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5558D90(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xC8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5558F7C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55590C4(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5559160@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xD8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5559204(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xE0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C55593F0()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5559538(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C55595D4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xF0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5559678(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xF8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C55597F8()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55598B4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1C5559920@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x108))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C55599C8(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x110))(v5, v2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C5559B44()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_image);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5559C1C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_image);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5559CB4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x120))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5559D5C(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x128))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5559F44()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555A08C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555A128@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x138))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555A1D4(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x140))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555A36C()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C555A444(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_contentView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C555A4DC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x150))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C555A584(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x158))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555A710()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C555A7E8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_secondaryView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C555A880@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x168))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C555A928(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x170))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555AB10()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555AC58(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555ACF4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x180))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555ADA0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x188))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555AF94()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkURL);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555B0DC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferModel_helpLinkURL);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555B178@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x198))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555B224(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

id SignOutOrEraseOfferModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutOrEraseOfferModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C555BF30()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_hostingController);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C555BFA0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_hostingController);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *SignOutRemainInformationModel.init(account:isEraseAllowed:)(uint64_t a1, unsigned int a2)
{
  v114 = a1;
  v127 = a2;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v131 = 0;
  v120 = 0;
  v115 = sub_1C5595774();
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v127, v3, v4);
  v117 = &v60 - v116;
  v149 = v5;
  v121 = 1;
  v148 = v6 & 1;
  v150 = v2;
  *&v2[OBJC_IVAR___AAUISignOutRemainInformationModel_hostingController] = v7;
  v8 = &v150[OBJC_IVAR___AAUISignOutRemainInformationModel_title];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v150[OBJC_IVAR___AAUISignOutRemainInformationModel_detailText];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v150[OBJC_IVAR___AAUISignOutRemainInformationModel_primaryButton];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v150[OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryButton];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v150[OBJC_IVAR___AAUISignOutRemainInformationModel_contentViewLayout] = 2;
  v122 = &qword_1EC15E000;
  *&v150[OBJC_IVAR___AAUISignOutRemainInformationModel_image] = v7;
  v12 = &v150[OBJC_IVAR___AAUISignOutRemainInformationModel_imageName];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v150[OBJC_IVAR___AAUISignOutRemainInformationModel_contentView] = v7;
  *&v150[OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryView] = v7;
  v13 = &v150[OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkTitle];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v150[OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkURL];
  *v14 = 0;
  *(v14 + 1) = 0;
  v118 = v150;
  v15 = type metadata accessor for SignOutRemainInformationModel();
  v147.receiver = v118;
  v147.super_class = v15;
  v119 = objc_msgSendSuper2(&v147, sel_init);
  MEMORY[0x1E69E5928](v119, v16);
  v150 = v119;
  v123 = v119;
  sub_1C5418C84();
  v17 = sub_1C55965F4("apps.iphone", 11, v121 & 1);
  v125 = sub_1C54FA360(v17, v18);
  v124 = &v123[v122[448]];
  v126 = &v146;
  swift_beginAccess();
  v19 = *v124;
  *v124 = v125;
  MEMORY[0x1E69E5920](v19);
  swift_endAccess();
  v128 = v150;
  if (v127)
  {
    v20 = sub_1C55965F4("SIGN_OUT_BUT_DONT_ERASE", 23, 1);
    v109 = v21;
    v110 = sub_1C54637B4(v20, v21);
    v111 = v22;

    v112 = v110;
    v113 = v111;
  }

  else
  {
    v23 = sub_1C55965F4("SIGN_OUT", 8, 1);
    v106 = v24;
    v107 = sub_1C54637B4(v23, v24);
    v108 = v25;

    v112 = v107;
    v113 = v108;
  }

  v63 = v113;
  v61 = v112;
  v62 = &v128[OBJC_IVAR___AAUISignOutRemainInformationModel_title];
  v64 = &v145;
  v101 = 33;
  v102 = 0;
  swift_beginAccess();
  v26 = v62;
  v27 = v63;
  *v62 = v61;
  v26[1] = v27;

  swift_endAccess();
  v66 = v150;
  v89 = 1;
  v28 = sub_1C55965F4("SIGN_OUT_REMAIN_INFORMATION_DETAIL_TEXT", 39, 1);
  v65 = v29;
  v67 = sub_1C54637B4(v28, v29);
  v69 = v30;

  v68 = &v66[OBJC_IVAR___AAUISignOutRemainInformationModel_detailText];
  v70 = &v144;
  swift_beginAccess();
  v31 = v68;
  v32 = v69;
  *v68 = v67;
  v31[1] = v32;

  swift_endAccess();
  v72 = v150;
  v33 = sub_1C55965F4("CONTINUE", 8, v89 & 1);
  v71 = v34;
  v73 = sub_1C54637B4(v33, v34);
  v75 = v35;

  v74 = &v72[OBJC_IVAR___AAUISignOutRemainInformationModel_primaryButton];
  v76 = &v143;
  swift_beginAccess();
  v36 = v74;
  v37 = v75;
  *v74 = v73;
  v36[1] = v37;

  swift_endAccess();
  v78 = v150;
  v38 = sub_1C55965F4("CANCEL", 6, v89 & 1);
  v77 = v39;
  v79 = sub_1C54637B4(v38, v39);
  v81 = v40;

  v80 = &v78[OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryButton];
  v82 = &v142;
  swift_beginAccess();
  v41 = v80;
  v42 = v81;
  *v80 = v79;
  v41[1] = v42;

  swift_endAccess();
  v84 = v150;
  v43 = sub_1C55965F4("SIGN_OUT_LEARN_MORE", 19, v89 & 1);
  v83 = v44;
  v85 = sub_1C54637B4(v43, v44);
  v87 = v45;

  v86 = &v84[OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkTitle];
  v88 = &v141;
  swift_beginAccess();
  v46 = v86;
  v47 = v87;
  *v86 = v85;
  v46[1] = v47;

  swift_endAccess();
  v91 = v150;
  v48 = sub_1C55965F4("SIGN_OUT_OFFER_HELP_LINK", 24, v89 & 1);
  v90 = v49;
  v92 = sub_1C54637B4(v48, v49);
  v94 = v50;

  v93 = &v91[OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkURL];
  v95 = &v140;
  swift_beginAccess();
  v51 = v93;
  v52 = v94;
  *v93 = v92;
  v51[1] = v52;

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EE38, qword_1C55B7EB0);
  v136 = sub_1C55522F8();
  v137 = v53;
  v138 = v54;
  v139 = v55;
  v132 = v136;
  v133 = v53;
  v134 = v54 & 1;
  v135 = v55;
  v105 = sub_1C5595484();
  v131 = v105;
  v96 = sub_1C5596E04();
  sub_1C5595764();
  sub_1C540FCD8();
  v97 = v56;
  sub_1C555C910();
  sub_1C5596B04();
  sub_1C5595474();
  v98 = &v150[OBJC_IVAR___AAUISignOutRemainInformationModel_contentViewLayout];
  v99 = &v130;
  swift_beginAccess();
  *v98 = 3;
  swift_endAccess();
  v100 = v150;
  MEMORY[0x1E69E5928](v105, v57);
  v103 = &v100[OBJC_IVAR___AAUISignOutRemainInformationModel_hostingController];
  v104 = &v129;
  swift_beginAccess();
  v58 = *v103;
  *v103 = v105;
  MEMORY[0x1E69E5920](v58);
  swift_endAccess();
  MEMORY[0x1E69E5920](v105);
  MEMORY[0x1E69E5920](v114);
  MEMORY[0x1E69E5920](v150);
  return v119;
}

unint64_t sub_1C555C910()
{
  v2 = qword_1EC15EE40;
  if (!qword_1EC15EE40)
  {
    sub_1C5595774();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EE40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C555CA58()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555CBA0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555CC3C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xD0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555CCE0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555CECC()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555D014(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555D0B0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xE8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555D154(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xF0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555D340()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555D488(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555D524@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x100))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555D5D0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x108))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555D7C4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555D90C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555D9A8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x118))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555DA54(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x120))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555DBDC()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555DC98(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___AAUISignOutRemainInformationModel_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1C555DD04@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x130))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C555DDAC(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x138))(v5, v2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C555DF28()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_image);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C555E000(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_image);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C555E098@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x148))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C555E140(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x150))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555E328()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555E470(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555E50C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x160))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555E5B8(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x168))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555E750()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_contentView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C555E828(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_contentView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C555E8C0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x178))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C555E968(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555EAF4()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C555EBCC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_secondaryView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C555EC64@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x190))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C555ED0C(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x198))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555EEF4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555F03C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555F0D8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1A8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555F184(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1B0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C555F378()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkURL);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C555F4C0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainInformationModel_helpLinkURL);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C555F55C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C555F608(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1C8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

id SignOutRemainInformationModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutRemainInformationModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5560430()
{
  v3 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_hostingController);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C55604A0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_hostingController);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

id SignOutRemovedInformationModel.init(account:isFindMyEnabled:walletCardListStore:theftAndLossDisclaimerLabel:)(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = v151;
  v106 = a5;
  v105 = a4;
  v147 = a3;
  v107 = a2;
  v104 = a1;
  v100 = a2;
  v142 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v101 = 0;
  v152 = 0;
  v150 = 0;
  v102 = sub_1C5595774();
  MEMORY[0x1EEE9AC00](0, v102, v6, v7);
  v103 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1C5594C74();
  v109 = *(v108 - 8);
  v110 = v109;
  v111 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v142, v107, v147, v105);
  v112 = &v64 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v9;
  v165 = v10;
  v164 = v11;
  v162 = v12;
  v163 = v13;
  v167 = v5;
  *&v5[OBJC_IVAR___SignOutRemovedInformationModel_hostingController] = v14;
  v117 = &qword_1EC15E000;
  v15 = &v167[OBJC_IVAR___SignOutRemovedInformationModel_title];
  *v15 = v14;
  *(v15 + 1) = v14;
  v124 = &qword_1EC15E000;
  v16 = &v167[OBJC_IVAR___SignOutRemovedInformationModel_detailText];
  *v16 = v14;
  *(v16 + 1) = v14;
  v131 = &qword_1EC15E000;
  v17 = &v167[OBJC_IVAR___SignOutRemovedInformationModel_primaryButton];
  *v17 = v14;
  *(v17 + 1) = v14;
  v139 = &qword_1EC15E000;
  v18 = &v167[OBJC_IVAR___SignOutRemovedInformationModel_secondaryButton];
  *v18 = v14;
  *(v18 + 1) = v14;
  *&v167[OBJC_IVAR___SignOutRemovedInformationModel_contentViewLayout] = 2;
  *&v167[OBJC_IVAR___SignOutRemovedInformationModel_image] = v14;
  v19 = &v167[OBJC_IVAR___SignOutRemovedInformationModel_imageName];
  *v19 = v14;
  *(v19 + 1) = v14;
  *&v167[OBJC_IVAR___SignOutRemovedInformationModel_contentView] = v14;
  *&v167[OBJC_IVAR___SignOutRemovedInformationModel_secondaryView] = v14;
  v20 = &v167[OBJC_IVAR___SignOutRemovedInformationModel_helpLinkTitle];
  *v20 = v14;
  *(v20 + 1) = v14;
  v21 = &v167[OBJC_IVAR___SignOutRemovedInformationModel_helpLinkURL];
  *v21 = v14;
  *(v21 + 1) = v14;
  v113 = v167;
  v22 = type metadata accessor for SignOutRemovedInformationModel();
  v161.receiver = v113;
  v161.super_class = v22;
  v115 = objc_msgSendSuper2(&v161, sel_init);
  v114 = v115;
  v23 = v115;
  v167 = v115;
  v118 = v115;
  v137 = 1;
  v24 = sub_1C55965F4("SIGN_OUT_REMOVED_TITLE", 22);
  v116 = v25;
  v119 = sub_1C54637B4(v24, v25);
  v121 = v26;

  v120 = &v118[v117[459]];
  v141 = 33;
  v122 = &v160;
  swift_beginAccess();
  v27 = v120;
  v28 = v121;
  *v120 = v119;
  v27[1] = v28;

  swift_endAccess();
  v125 = v167;
  v29 = sub_1C55965F4("SIGN_OUT_REMOVED_DETAIL_TEXT", 28, v137);
  v123 = v30;
  v126 = sub_1C54637B4(v29, v30);
  v128 = v31;

  v127 = &v125[v124[460]];
  v129 = &v159;
  swift_beginAccess();
  v32 = v127;
  v33 = v128;
  *v127 = v126;
  v32[1] = v33;

  swift_endAccess();
  v132 = v167;
  v34 = sub_1C55965F4("CONTINUE", 8, v137);
  v130 = v35;
  v133 = sub_1C54637B4(v34, v35);
  v135 = v36;

  v134 = &v132[v131[461]];
  v136 = &v158;
  swift_beginAccess();
  v37 = v134;
  v38 = v135;
  *v134 = v133;
  v37[1] = v38;

  swift_endAccess();
  v140 = v167;
  v39 = sub_1C55965F4("CANCEL", 6, v137);
  v138 = v40;
  v143 = sub_1C54637B4(v39, v40);
  v145 = v41;

  v144 = &v140[v139[462]];
  v146 = &v157;
  swift_beginAccess();
  v42 = v144;
  v43 = v145;
  *v144 = v143;
  v42[1] = v43;

  swift_endAccess();
  swift_unknownObjectRetain();
  if (v147)
  {
    v98 = v147;
    v91 = v147;
    v152 = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEB0, &qword_1C55B7F08);
    v46 = v104;
    swift_unknownObjectRetain();
    sub_1C5594CF4();
    sub_1C54119C4(v104, v100 & 1, v91, v105, v106, v168);
    v47 = v99;
    v48 = v99[23];
    v151[1] = v99[24];
    v151[0] = v48;
    v49 = v99[25];
    v50 = v99[26];
    v51 = v99[27];
    v99[5] = v99[28];
    v151[4] = v51;
    v151[3] = v50;
    v151[2] = v49;
    v52 = v47[29];
    v53 = v47[30];
    v54 = v47[31];
    v47[9] = v47[32];
    v47[8] = v54;
    v47[7] = v53;
    v47[6] = v52;
    v90 = sub_1C5595484();
    v150 = v90;
    v81 = sub_1C5596E04();
    sub_1C5595764();
    sub_1C540FCD8();
    v82 = v55;
    sub_1C555C910();
    sub_1C5596B04();
    sub_1C5595474();
    v83 = &v167[OBJC_IVAR___SignOutRemovedInformationModel_contentViewLayout];
    v86 = 33;
    v84 = &v149;
    v87 = 0;
    swift_beginAccess();
    *v83 = 3;
    swift_endAccess();
    v85 = v167;
    v56 = v90;
    v88 = &v85[OBJC_IVAR___SignOutRemovedInformationModel_hostingController];
    v89 = &v148;
    swift_beginAccess();
    v57 = *v88;
    *v88 = v90;

    swift_endAccess();
    swift_unknownObjectRelease();
    v92 = v101;
  }

  else
  {
    v44 = v112;
    v45 = sub_1C54B0910();
    (*(v110 + 16))(v44, v45, v108);
    v96 = sub_1C5594C54();
    v93 = v96;
    v95 = sub_1C5596954();
    v94 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v97 = sub_1C5596E04();
    if (os_log_type_enabled(v96, v95))
    {
      v58 = v101;
      v72 = sub_1C5596A74();
      v68 = v72;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v70 = 0;
      v73 = sub_1C5419DC0(0, v69, v69);
      v71 = v73;
      v74 = sub_1C5419DC0(v70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v156 = v72;
      v155 = v73;
      v154 = v74;
      v75 = 0;
      v76 = &v156;
      sub_1C5419E14(0, &v156);
      sub_1C5419E14(v75, v76);
      v153 = v97;
      v77 = &v64;
      MEMORY[0x1EEE9AC00](&v64, v59, v60, v61);
      v78 = &v64 - 6;
      *(&v64 - 4) = v62;
      *(&v64 - 3) = &v155;
      *(&v64 - 2) = &v154;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v80 = v58;
      if (v58)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v93, v94, "WalletCardListStore is nil. Not displaying Sign Out Removed Information view.", v68, 2u);
        v66 = 0;
        sub_1C5419E74(v71, 0, v69);
        sub_1C5419E74(v74, v66, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v67 = v80;
      }
    }

    else
    {

      v67 = v101;
    }

    v65 = v67;

    (*(v110 + 8))(v112, v108);
    v92 = v65;
  }

  swift_unknownObjectRelease();

  return v114;
}

uint64_t sub_1C55610B4()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55611FC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5561298@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xD0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C556133C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5561528()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5561670(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C556170C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xE8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C55617B0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xF0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C556199C()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5561AE4(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5561B80@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x100))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5561C2C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x108))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5561E20()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5561F68(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5562004@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x118))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C55620B0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x120))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5562238()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55622F4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___SignOutRemovedInformationModel_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1C5562360@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x130))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5562408(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x138))(v5, v2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C5562584()
{
  v3 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_image);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C556265C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_image);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C55626F4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x148))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C556279C(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x150))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5562984()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5562ACC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5562B68@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x160))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5562C14(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x168))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5562DAC()
{
  v3 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_contentView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5562E84(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_contentView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5562F1C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x178))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5562FC4(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5563150()
{
  v3 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_secondaryView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5563228(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_secondaryView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C55632C0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x190))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5563368(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x198))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5563550()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5563698(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5563734@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1A8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C55637E0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1B0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C55639D4()
{
  v2 = (v0 + OBJC_IVAR___SignOutRemovedInformationModel_helpLinkURL);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5563B1C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___SignOutRemovedInformationModel_helpLinkURL);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5563BB8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5563C64(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1C8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

id SignOutRemovedInformationModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutRemovedInformationModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall RemoteUIController.registerAppleAccountAvatarPickerView()()
{
  sub_1C5564AFC();
  sub_1C55965F4("AppleAccountAvatarPickerView", 28, 1);
  sub_1C55969D4();
}

unint64_t sub_1C5564AFC()
{
  v2 = qword_1EC15EEB8;
  if (!qword_1EC15EEB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EEB8);
    return WitnessTable;
  }

  return v2;
}

double sub_1C5564B74(uint64_t a1)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a1, v2);
  RemoteUIController.registerAppleAccountAvatarPickerView()();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

Swift::Void __swiftcall RemoteUIController.registerSIWASharingTipView()()
{
  sub_1C5564C3C();
  sub_1C55965F4("siwaSharingTip", 14, 1);
  sub_1C55969D4();
}

unint64_t sub_1C5564C3C()
{
  v2 = qword_1EC15EEC0;
  if (!qword_1EC15EEC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EEC0);
    return WitnessTable;
  }

  return v2;
}

double sub_1C5564CB4(uint64_t a1)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a1, v2);
  RemoteUIController.registerSIWASharingTipView()();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

Swift::Void __swiftcall RemoteUIController.addAccountUserInfo(account:)(ACAccount account)
{
  v4 = sub_1C55969C4();
  MEMORY[0x1E69E5928](account.super.isa, v1);
  RUIDecodingUserInfo.account.setter(account.super.isa, v2);
  MEMORY[0x1E69E5920](v4);
}

double sub_1C5564D7C(uint64_t a1, uint64_t a2, ACAccount a3)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3.super.isa, v4);
  MEMORY[0x1E69E5928](a1, v5);
  RemoteUIController.addAccountUserInfo(account:)(a3);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3.super.isa).n128_u64[0];
  return result;
}

uint64_t sub_1C5564DFC(uint64_t a1)
{

  sub_1C5595F74();

  return v2;
}

uint64_t sub_1C5564E68()
{
  v4 = v0;
  v5 = *v0;
  sub_1C545D998(&v5, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEC8, &qword_1C55B7F50);
  sub_1C5595F84();
  sub_1C5436F54(&v5);
  return v2;
}

uint64_t sub_1C5564EEC(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v8 = *v1;
  sub_1C545D998(&v8, &v5);
  sub_1C545D998(&v8, &v4);
  v3 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEC8, &qword_1C55B7F50);
  sub_1C5595F94();
  sub_1C5436F54(&v3);
  sub_1C5436F54(&v8);
}

void (*sub_1C5564FAC(uint64_t **a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x90uLL, 59161);
  *a1 = v3;
  *v3 = *v1;
  sub_1C545D998(v3, v3 + 2);
  *(v3 + 2) = *v3;
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEC8, &qword_1C55B7F50);
  sub_1C5595F84();
  return sub_1C5565078;
}

void sub_1C5565078(uint64_t **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[14];

    sub_1C545D998(v4, v4 + 6);
    *(v4 + 4) = *v4;
    v4[15] = v2;
    sub_1C5595F94();
    sub_1C5436F54(v4 + 8);
    sub_1C5410D10(v4 + 14);
  }

  else
  {
    v3 = v4[14];
    sub_1C545D998(v4, v4 + 10);
    *(v4 + 6) = *v4;
    v4[16] = v3;
    sub_1C5595F94();
    sub_1C5436F54(v4 + 12);
  }

  sub_1C5436F54(v4);
  free(v4);
}

uint64_t sub_1C55651B8()
{
  v4 = v0;
  v5 = *v0;
  sub_1C545D998(&v5, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEC8, &qword_1C55B7F50);
  sub_1C5595FA4();
  sub_1C5436F54(&v5);
  return v2;
}

uint64_t sub_1C5565254()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1C5565294(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  sub_1C5595F74();

  return v3;
}

uint64_t sub_1C5565328()
{
  v4 = v0;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  sub_1C55653C8(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED0, &unk_1C55B7F58);
  sub_1C5595F84();
  sub_1C5565428(&v5);
  return v2;
}

void *sub_1C55653C8(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1C5594CF4();
  a2[1] = v4;
  v6 = a1[2];

  result = a2;
  a2[2] = v6;
  return result;
}

uint64_t sub_1C5565460(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v8 = v2;
  v11 = *(v2 + 16);
  v12 = *(v2 + 32);
  sub_1C55653C8(&v11, v7);
  sub_1C55653C8(&v11, v6);
  v4 = v11;
  v5 = v12;
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED0, &unk_1C55B7F58);
  sub_1C5595F94();
  sub_1C5565428(&v4);
  sub_1C5565428(&v11);
}

void (*sub_1C5565544(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xE0uLL, 26935);
  *a1 = v3;
  *v3 = *(v1 + 16);
  v3[2] = *(v1 + 32);
  sub_1C55653C8(v3, v3 + 3);
  *(v3 + 3) = *v3;
  v3[8] = v3[2];
  v3[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED0, &unk_1C55B7F58);
  sub_1C5595F84();
  return sub_1C5565620;
}

void sub_1C5565620(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v2 = *(v6 + 168);
    v3 = *(v6 + 176);
    sub_1C5594CF4();
    sub_1C55653C8(v6, (v6 + 72));
    *(v6 + 96) = *v6;
    *(v6 + 112) = *(v6 + 16);
    *(v6 + 184) = v2;
    *(v6 + 192) = v3;
    sub_1C5595F94();
    sub_1C5565428(v6 + 96);
    sub_1C5401ECC(v6 + 168);
  }

  else
  {
    v4 = *(v6 + 168);
    v5 = *(v6 + 176);
    sub_1C55653C8(v6, (v6 + 120));
    *(v6 + 144) = *v6;
    *(v6 + 160) = *(v6 + 16);
    *(v6 + 200) = v4;
    *(v6 + 208) = v5;
    sub_1C5595F94();
    sub_1C5565428(v6 + 144);
  }

  sub_1C5565428(v6);
  free(v6);
}

uint64_t sub_1C556575C()
{
  v4 = v0;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  sub_1C55653C8(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED0, &unk_1C55B7F58);
  sub_1C5595FA4();
  sub_1C5565428(&v5);
  return v2;
}

uint64_t sub_1C5565814()
{
  v2 = *(v0 + 16);
  sub_1C5594CF4();

  return v2;
}

uint64_t sub_1C5565860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5594CF4();

  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
}

uint64_t sub_1C55658D8(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F0, &qword_1C55AE570);
  sub_1C5595F74();

  return v3;
}

uint64_t sub_1C5565980()
{
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  sub_1C55653C8(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8, &unk_1C55B7F68);
  sub_1C5595F84();
  sub_1C5565428(&v4);
  return v2;
}

uint64_t sub_1C5565A14(uint64_t a1, uint64_t a2)
{
  v8 = *(v2 + 40);
  v9 = *(v2 + 56);
  sub_1C55653C8(&v8, v7);
  sub_1C55653C8(&v8, v6);
  v4 = v8;
  v5 = v9;
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8, &unk_1C55B7F68);
  sub_1C5595F94();
  sub_1C5565428(&v4);
  sub_1C5565428(&v8);
}

uint64_t sub_1C5565ADC()
{
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  sub_1C55653C8(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8, &unk_1C55B7F68);
  sub_1C5595FA4();
  sub_1C5565428(&v4);
  return v2;
}

uint64_t sub_1C5565B88()
{
  v2 = *(v0 + 40);
  sub_1C5594CF4();

  return v2;
}

uint64_t sub_1C5565BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5594CF4();

  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
}

uint64_t sub_1C5565C4C()
{
  v4 = v0;
  v5 = *(v0 + 64);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  sub_1C5373718(&v5);
  return v2 & 1;
}

void sub_1C5565CD4(char a1)
{
  v6 = a1 & 1;
  v5 = v1;
  v7 = *(v1 + 64);
  sub_1C5409664(&v7, v4);
  sub_1C5409664(&v7, v3);
  v2 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(&v2);
  sub_1C5373718(&v7);
}

void (*sub_1C5565D8C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL, 29929);
  *a1 = v3;
  *v3 = *(v1 + 64);
  sub_1C5409664(v3, (v3 + 1));
  v3[2] = *v3;
  *(v3 + 14) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C545D34C;
}

uint64_t sub_1C5565E58()
{
  v4 = v0;
  v5 = *(v0 + 64);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  sub_1C5373718(&v5);
  return v2;
}

uint64_t sub_1C5565EF8()
{
  v2 = *(v0 + 64);

  return v2 & 1;
}

uint64_t sub_1C5565F34(char a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1C5565F80()
{
  v4 = v0;
  v5 = *(v0 + 80);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  sub_1C5373718(&v5);
  return v2 & 1;
}

void sub_1C5566008(char a1)
{
  v6 = a1 & 1;
  v5 = v1;
  v7 = *(v1 + 80);
  sub_1C5409664(&v7, v4);
  sub_1C5409664(&v7, v3);
  v2 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(&v2);
  sub_1C5373718(&v7);
}

void (*sub_1C55660C0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL, 4744);
  *a1 = v3;
  *v3 = *(v1 + 80);
  sub_1C5409664(v3, (v3 + 1));
  v3[2] = *v3;
  *(v3 + 14) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C545D34C;
}

uint64_t sub_1C556618C()
{
  v4 = v0;
  v5 = *(v0 + 80);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  sub_1C5373718(&v5);
  return v2;
}

uint64_t sub_1C556622C()
{
  v2 = *(v0 + 80);

  return v2 & 1;
}

uint64_t sub_1C5566268(char a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_1C55662B4()
{
  v4 = *(v0 + 96);
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  sub_1C5373718(&v4);
  return v2 & 1;
}

void sub_1C5566330(char a1)
{
  v5 = *(v1 + 96);
  sub_1C5409664(&v5, v4);
  sub_1C5409664(&v5, v3);
  v2 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(&v2);
  sub_1C5373718(&v5);
}

uint64_t sub_1C55663CC()
{
  v4 = *(v0 + 96);
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  sub_1C5373718(&v4);
  return v2;
}

uint64_t sub_1C5566460()
{
  v2 = *(v0 + 96);

  return v2 & 1;
}

uint64_t sub_1C556649C(char a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_1C55664E8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  sub_1C5522CD8();
  sub_1C5595F74();
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C5566570()
{
  v4 = *(v0 + 112);
  sub_1C550606C(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0, &qword_1C55B7F78);
  sub_1C5595F84();
  sub_1C55060CC(&v4);
  return v2;
}

double sub_1C55665E8(uint64_t a1)
{
  v8 = *(v1 + 112);
  sub_1C550606C(&v8, &v7);
  sub_1C550606C(&v8, &v6);
  v5 = v8;
  MEMORY[0x1E69E5928](a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0, &qword_1C55B7F78);
  sub_1C5595F94();
  sub_1C55060CC(&v5);
  sub_1C55060CC(&v8);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55666A4()
{
  v4 = *(v0 + 112);
  sub_1C550606C(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0, &qword_1C55B7F78);
  sub_1C5595FA4();
  sub_1C55060CC(&v4);
  return v2;
}

uint64_t sub_1C5566734(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 112);
  MEMORY[0x1E69E5928](v4, a2);

  return v4;
}

uint64_t sub_1C556677C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);

  v3 = *(v2 + 112);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  MEMORY[0x1E69E5920](v3);

  MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C55667FC(uint64_t a1)
{

  type metadata accessor for AppleAccountHeaderViewModel(0);
  sub_1C5595F74();

  return v2;
}

uint64_t sub_1C5566874()
{
  v4 = *(v0 + 128);
  sub_1C545D998(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE8, &qword_1C55B7F80);
  sub_1C5595F84();
  sub_1C5436F54(&v4);
  return v2;
}

uint64_t sub_1C55668EC(uint64_t a1)
{
  v6 = *(v1 + 128);
  sub_1C545D998(&v6, &v5);
  sub_1C545D998(&v6, &v4);
  v3 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE8, &qword_1C55B7F80);
  sub_1C5595F94();
  sub_1C5436F54(&v3);
  sub_1C5436F54(&v6);
}

uint64_t sub_1C5566998()
{
  v4 = *(v0 + 128);
  sub_1C545D998(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE8, &qword_1C55B7F80);
  sub_1C5595FA4();
  sub_1C5436F54(&v4);
  return v2;
}

uint64_t sub_1C5566A28()
{
  v2 = *(v0 + 128);

  return v2;
}

uint64_t sub_1C5566A68(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t sub_1C5566AD0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 144);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t sub_1C5566B10(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 160);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

void *sub_1C5566B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v48 = a1;
  v47 = a2;
  v46 = a3 & 1;
  v45 = a4 & 1;
  v44 = a5 & 1;
  v43 = a6;
  sub_1C55965F4("person.crop.circle.fill", 23, 1);
  v7 = sub_1C5595EF4();
  __b[0] = sub_1C5564DFC(v7);
  __b[1] = v8;
  v9 = sub_1C55965F4("");
  __b[2] = sub_1C5565294(v9, v10);
  __b[3] = v11;
  __b[4] = v12;
  __b[5] = sub_1C55658D8(0, 0);
  __b[6] = v13;
  __b[7] = v14;
  LOBYTE(__b[8]) = sub_1C5409594(1) & 1;
  __b[9] = v15;
  LOBYTE(__b[10]) = sub_1C5409594(0) & 1;
  __b[11] = v16;
  LOBYTE(__b[12]) = sub_1C5409594(0) & 1;
  __b[13] = v17;
  MEMORY[0x1E69E5928](a2, v17);
  __b[18] = a2;
  LOBYTE(__b[19]) = a5 & 1;
  MEMORY[0x1E69E5928](a1, a2);
  __b[20] = a1;
  sub_1C5522CD8();
  MEMORY[0x1E69E5928](a1, v18);
  v40 = sub_1C5566ED4(a1);
  sub_1C5595F74();
  __b[14] = v41;
  __b[15] = v42;
  v37 = a3;
  sub_1C5595F74();
  LOBYTE(__b[8]) = v38;
  __b[9] = v39;

  v34 = a4;
  sub_1C5595F74();
  LOBYTE(__b[10]) = v35;
  __b[11] = v36;

  v32 = a6;
  MEMORY[0x1E69E5928](a2, v19);
  if (a6)
  {
    v33 = v32;
  }

  else
  {
    type metadata accessor for AppleAccountHeaderViewModel(0);
    MEMORY[0x1E69E5928](a2, v20);
    v33 = sub_1C550CA38(a2);
  }

  MEMORY[0x1E69E5920](a2);
  __b[16] = sub_1C55667FC(v33);
  __b[17] = v21;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1C55271EC(__dst, v30);

  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  sub_1C545EC80(__b);
  return memcpy(a7, __dst, 0xA8uLL);
}

uint64_t sub_1C5566F14@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v24 = v1;
  v20 = sub_1C55687A0;
  v40 = 0;
  __src[0] = v41;
  __src[1] = 168;
  memcpy(v41, v1, sizeof(v41));
  memcpy(__dst, v41, sizeof(__dst));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEF0, &qword_1C55B7F88);
  v17 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28, v2, v3, v4);
  v31 = __src - v17;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEF8, &qword_1C55B7F90);
  v18 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33, v5, v6, v7);
  v35 = __src - v18;
  v19 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](__src - v18, v9, v10, v11);
  v36 = __src - v19;
  v40 = __src - v19;
  v23 = sub_1C5595424();
  sub_1C55271EC(v24, &v39);
  v21 = v37;
  v37[2] = v24;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF00, &qword_1C55B7F98);
  sub_1C55687A8();
  sub_1C5596064();
  sub_1C545EC80(v24);
  v12 = sub_1C55965F4("UPDATE_CONTACT_PHOTO_ACCESSIBILITY_HINT", 39, 1);
  v25 = v13;
  v26 = sub_1C54637B4(v12, v13);
  v27 = v14;

  v30 = v38;
  v38[0] = v26;
  v38[1] = v27;
  v29 = sub_1C5568830();
  sub_1C54141E8();
  sub_1C5595BE4();
  sub_1C5401ECC(v30);
  sub_1C53706F0(v31);
  v34 = sub_1C55688B8();
  sub_1C540EFD8(v35, v33, v36);
  sub_1C5370988(v35);
  sub_1C5370C64(v36, v35);
  sub_1C540EFD8(v35, v33, v32);
  sub_1C5370988(v35);
  return sub_1C5370988(v36);
}

char *sub_1C55671E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v187 = v285;
  v269 = a1;
  v188 = a2;
  v227 = 0;
  v344 = 0;
  v343 = 0;
  v342 = 0;
  v301 = 0;
  v189 = 0u;
  memset(v300, 0, sizeof(v300));
  v292 = 0;
  memset(v291, 0, sizeof(v291));
  v275 = 0;
  v2 = *a1;
  v3 = *(a1 + 1);
  v347 = *(a1 + 2);
  v346 = v3;
  v345 = v2;
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v351 = *(a1 + 6);
  v350 = v6;
  v349 = v5;
  v348 = v4;
  v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v355 = a1[20];
  v354 = v9;
  v353 = v8;
  v352 = v7;
  v358 = v347;
  v357 = v346;
  v356 = v345;
  v362 = v351;
  v361 = v350;
  v360 = v349;
  v359 = v348;
  v366 = v355;
  v365 = v9;
  v364 = v8;
  v363 = v7;
  v190 = sub_1C5595414();
  v191 = *(v190 - 8);
  v192 = v191;
  MEMORY[0x1EEE9AC00](0, v10, v11, v12);
  v193 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1C5594FC4();
  v195 = *(v194 - 8);
  v196 = v195;
  MEMORY[0x1EEE9AC00](v227, v194, v14, v15);
  v197 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C55949C4();
  MEMORY[0x1EEE9AC00](v227, v17, v18, v19);
  v198 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C5596544();
  MEMORY[0x1EEE9AC00](v21 - 8, v22, v23, v24);
  v199 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  v201 = *(v200 - 8);
  v202 = v201;
  v203 = (*(v201 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v200 - 8, v200, v26, v27);
  v204 = &v154 - v203;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F070, &qword_1C55B8588);
  v206 = (*(*(v205 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v205 - 8, v205, v28, v29);
  v207 = &v154 - v206;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F078, &unk_1C55B8590);
  v209 = (*(*(v208 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v208 - 8, v30, v31, v32);
  v210 = &v154 - v209;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38, &qword_1C55B7FC0);
  v212 = *(v211 - 8);
  v213 = v212;
  v214 = (*(v212 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v211 - 8, v211, v33, v34);
  v215 = &v154 - v214;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40, &qword_1C55B7FC8);
  v217 = (*(*(v216 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v216 - 8, v216, v35, v36);
  v218 = &v154 - v217;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF30, &qword_1C55B7FB8);
  v220 = *(v219 - 8);
  v221 = v220;
  v223 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v219 - 8, v219, v37, v38);
  v225 = (v223 + 15) & 0xFFFFFFFFFFFFFFF0;
  v222 = &v154 - v225;
  MEMORY[0x1EEE9AC00](&v154 - v225, v39, v40, v41);
  v224 = &v154 - v225;
  MEMORY[0x1EEE9AC00](v42, v43, v44, v45);
  v226 = &v154 - v225;
  v344 = &v154 - v225;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF60, &qword_1C55B7FE8);
  v230 = *(*(v228 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227, v46, v47, v48);
  v232 = (v230 + 15) & 0xFFFFFFFFFFFFFFF0;
  v229 = &v154 - v232;
  MEMORY[0x1EEE9AC00](v49, &v154 - v232, v50, v51);
  v231 = &v154 - v232;
  MEMORY[0x1EEE9AC00](v52, v53, v54, v55);
  v233 = &v154 - v232;
  v343 = &v154 - v232;
  v247 = sub_1C5595F04();
  v234 = *(v247 - 8);
  v246 = v234;
  MEMORY[0x1EEE9AC00](v247 - 8, v56, v57, v58);
  v248 = &v154 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF20, &qword_1C55B7FA8);
  v235 = (*(*(v263 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v263 - 8, v60, v61, v62);
  v264 = &v154 - v235;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF50, &qword_1C55B7FD0);
  v236 = (*(*(v265 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v265 - 8, v63, v64, v65);
  v270 = &v154 - v236;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF58, &unk_1C55B7FD8);
  v237 = v272;
  v238 = *(*(v272 - 8) + 64);
  MEMORY[0x1EEE9AC00](v272 - 8, v66, v67, v68);
  v240 = (v238 + 15) & 0xFFFFFFFFFFFFFFF0;
  v274 = &v154 - v240;
  v239 = &v154 - v240;
  MEMORY[0x1EEE9AC00](v69, v70, v71, v72);
  v271 = &v154 - v240;
  v241 = (&v154 - v240);
  v342 = &v154 - v240;
  v249 = sub_1C5564E68();
  v242 = sub_1C54127B4();
  v243 = v73;
  v244 = v74;
  v245 = v75;
  sub_1C54127C8(v248);
  v250 = sub_1C5595F44();
  (*(v246 + 8))(v248, v247);

  v334[0] = v250;
  v251 = v334;
  sub_1C5595B14();
  sub_1C5410D10(v251);
  v331[0] = v334[1];
  v331[1] = v334[2];
  v332 = v335;
  v333 = v336;
  v330 = sub_1C5410CD0();
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8, &unk_1C55ADDF0);
  sub_1C5413D10();
  v253 = &v330;
  v254 = v331;
  sub_1C5595BA4();
  sub_1C5410D10(v253);
  sub_1C5410D10(v254);
  v326[0] = v337;
  v326[1] = v338;
  v327 = v339;
  v328 = v340;
  v329 = v341;
  v76 = sub_1C55965F4("CONTACT_PHOTO_ACCESSIBILITY_LABEL", 33, 1);
  v255 = v77;
  v256 = sub_1C54637B4(v76, v77);
  v257 = v78;

  v325[0] = v256;
  v325[1] = v257;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F080, &qword_1C55B85A0);
  v259 = sub_1C556F8D4();
  v260 = sub_1C54141E8();
  v261 = v325;
  v262 = v326;
  sub_1C5595C04();
  sub_1C5401ECC(v261);
  sub_1C556F97C(v262);
  v324 = sub_1C54E7400(*(v269 + 152)) & 1;
  v79 = sub_1C556F9B4();
  MEMORY[0x1C6946950](&v324, v263, &unk_1F447F048, v79);
  sub_1C556FA5C(v264);
  sub_1C5596014();
  v267 = sub_1C556FAF0();
  v268 = sub_1C546FC00();
  v266 = MEMORY[0x1E69817E8];
  v323 = sub_1C546EEB4();
  v322 = v323;
  sub_1C5595E04();
  sub_1C556FA5C(v270);
  v273 = sub_1C556FC14();
  sub_1C540EFD8(v274, v272, v271);
  sub_1C556FA5C(v274);
  if (sub_1C5565F80())
  {
    v184 = 1;
    sub_1C55965F4("CHANGE_PROFILE_PHOTO_BUTTON_TITLE", 33);
    sub_1C55964E4();
    v183 = 0;
    sub_1C5439370();
    v169 = sub_1C5576C44();
    sub_1C54982B4();
    v282[23] = v183;
    v282[24] = v183;
    v283 = 0;
    v284 = v184;
    v282[21] = sub_1C5596594();
    v282[22] = v80;
    sub_1C55271EC(v269, v282);
    v81 = swift_allocObject();
    v82 = v269;
    v170 = v81;
    v83 = *v269;
    v84 = *(v269 + 1);
    *(v81 + 48) = *(v269 + 2);
    *(v81 + 32) = v84;
    *(v81 + 16) = v83;
    v85 = *(v82 + 3);
    v86 = *(v82 + 4);
    v87 = *(v82 + 5);
    *(v81 + 112) = *(v82 + 6);
    *(v81 + 96) = v87;
    *(v81 + 80) = v86;
    *(v81 + 64) = v85;
    v88 = *(v82 + 7);
    v89 = *(v82 + 8);
    v90 = *(v82 + 9);
    *(v81 + 176) = v82[20];
    *(v81 + 160) = v90;
    *(v81 + 144) = v89;
    *(v81 + 128) = v88;
    sub_1C5596004();
    (*(v196 + 104))(v197, *MEMORY[0x1E697DC20], v194);
    sub_1C547070C();
    sub_1C5595AE4();
    (*(v196 + 8))(v197, v194);
    (*(v202 + 8))(v204, v200);
    v91 = [objc_opt_self() systemBlueColor];
    v171 = sub_1C5595E44();
    v172 = sub_1C5595E94();

    v281 = v172;
    v174 = sub_1C556FF28();
    v173 = MEMORY[0x1E69815C0];
    v175 = MEMORY[0x1E6981568];
    sub_1C5410CE8(v205, MEMORY[0x1E69815C0]);
    v176 = &v281;
    sub_1C5595A74();
    sub_1C5410D10(v176);
    sub_1C55704C0(v207);
    sub_1C5568A04();
    v177 = sub_1C556FE80();
    v178 = sub_1C556FFD0();
    sub_1C5595AC4();
    (*(v192 + 8))(v193, v190);
    sub_1C55705B4(v210);
    v277 = v208;
    v278 = v190;
    v279 = v177;
    v280 = v178;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C544B7B0();
    sub_1C5595B34();
    (*(v213 + 8))(v215, v211);
    v181 = sub_1C5596E04();
    v180 = v92;
    *v92 = sub_1C55957C4();
    v180[1] = sub_1C55957D4();
    sub_1C540FCD8();
    v182 = v93;
    sub_1C54DA7DC();
    sub_1C5596B04();
    v185 = v276;
    sub_1C556FD60();
    sub_1C5595D84();
    sub_1C5372950(v218);
    v186 = sub_1C556FCBC();
    sub_1C540EFD8(v224, v219, v226);
    sub_1C5372950(v224);
    v275 = v224;
    sub_1C5372A34(v226, v222);
    sub_1C540EFD8(v222, v219, v224);
    sub_1C5372950(v222);
    sub_1C5372A34(v224, v229);
    (*(v221 + 56))(v229, 0, 1, v219);
    sub_1C540F554(v229, v219, v231);
    sub_1C53722B8(v229);
    sub_1C53723F0(v231, v233);
    sub_1C5372950(v224);
    sub_1C5372950(v226);
  }

  else
  {
    (*(v221 + 56))(v229, 1, 1, v219);
    sub_1C556FCBC();
    sub_1C540F554(v229, v219, v231);
    sub_1C53722B8(v229);
    sub_1C53723F0(v231, v233);
  }

  if (sub_1C5565C4C())
  {
    v160 = sub_1C5595424();
    sub_1C55271EC(v269, v294);
    v161 = &v154;
    MEMORY[0x1EEE9AC00](&v154, v94, v95, v96);
    v158 = (&v154 - 4);
    *(&v154 - 2) = v97;
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C828, &unk_1C55B85B0);
    sub_1C54522C8();
    sub_1C5596064();
    sub_1C545EC80(v269);
    v98 = v187;
    v99 = *&v294[168];
    v187[63] = v295;
    v98[62] = v99;
    v100 = v296;
    v101 = v297;
    v302 = v299;
    v98[66] = v298;
    v98[65] = v101;
    v98[64] = v100;
    v102 = v98[62];
    v98[35] = v98[63];
    v98[34] = v102;
    v103 = v98[64];
    v104 = v98[65];
    v105 = v98[66];
    v293[10] = v302;
    v98[38] = v105;
    v98[37] = v104;
    v98[36] = v103;
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C830, &unk_1C55AFAF0);
    v165 = sub_1C5452350();
    v168 = v300;
    v162 = v293;
    sub_1C540EFD8(v293, v164, v300);
    sub_1C54523D8(v162);
    v106 = v187;
    v107 = v187[56];
    v187[69] = v187[57];
    v106[68] = v107;
    v108 = v106[58];
    v109 = v106[59];
    v110 = v106[60];
    v304 = v301;
    v106[72] = v110;
    v106[71] = v109;
    v106[70] = v108;
    sub_1C5452578(&v303, &v290);
    v111 = v164;
    v112 = v187;
    v113 = v187[68];
    v187[18] = v187[69];
    v112[17] = v113;
    v114 = v112[70];
    v115 = v112[71];
    v116 = v112[72];
    v289[10] = v304;
    v112[21] = v116;
    v112[20] = v115;
    v112[19] = v114;
    v167 = v291;
    v163 = v289;
    sub_1C540EFD8(v289, v111, v291);
    sub_1C54523D8(v163);
    v117 = v187;
    v118 = v187[28];
    v187[75] = v187[29];
    v117[74] = v118;
    v119 = v117[30];
    v120 = v117[31];
    v121 = v117[32];
    v306 = v292;
    v117[78] = v121;
    v117[77] = v120;
    v117[76] = v119;
    sub_1C5452578(&v305, &v286);
    v122 = v164;
    v123 = v187;
    v124 = v187[74];
    v187[81] = v187[75];
    v123[80] = v124;
    v125 = v123[76];
    v126 = v123[77];
    v127 = v123[78];
    v307 = v306;
    v123[84] = v127;
    v123[83] = v126;
    v123[82] = v125;
    v128 = v123[80];
    v123[1] = v123[81];
    *v123 = v128;
    v129 = v123[82];
    v130 = v123[83];
    v131 = v123[84];
    v285[10] = v307;
    v123[4] = v131;
    v123[3] = v130;
    v123[2] = v129;
    v166 = v285;
    sub_1C540F554(v285, v122, v287);
    sub_1C5570428(v166);
    v132 = v187;
    v133 = v167;
    v134 = v287[0];
    v187[87] = v287[1];
    v132[86] = v134;
    v135 = v287[2];
    v136 = v287[3];
    v308 = v288;
    v132[90] = v287[4];
    v132[89] = v136;
    v132[88] = v135;
    v137 = v132[86];
    v132[126] = v132[87];
    v132[125] = v137;
    v138 = v132[88];
    v139 = v132[89];
    v140 = v132[90];
    v321 = v308;
    v132[129] = v140;
    v132[128] = v139;
    v132[127] = v138;
    sub_1C54523D8(v133);
    sub_1C54523D8(v168);
  }

  else
  {
    v141 = v187;
    v156 = 0;
    memset(&v314[11], 0, 32);
    v315 = 0uLL;
    v316 = 0uLL;
    v317 = 0uLL;
    v318 = 0;
    v187[103] = 0u;
    v141[102] = 0u;
    v142 = v315;
    v143 = v316;
    v313[10] = v318;
    v141[106] = v317;
    v141[105] = v143;
    v141[104] = v142;
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C830, &unk_1C55AFAF0);
    sub_1C5452350();
    sub_1C540F554(v313, v157, v314);
    v144 = v187;
    v145 = v187[108];
    v187[120] = v187[109];
    v144[119] = v145;
    v146 = v144[110];
    v147 = v144[111];
    v148 = v144[112];
    v319 = v314[10];
    v144[123] = v148;
    v144[122] = v147;
    v144[121] = v146;
    v149 = v144[119];
    v144[126] = v144[120];
    v144[125] = v149;
    v150 = v144[121];
    v151 = v144[122];
    v152 = v144[123];
    v321 = v319;
    v144[129] = v152;
    v144[128] = v151;
    v144[127] = v150;
  }

  sub_1C5570050(v241, v239);
  v312[0] = v239;
  sub_1C537263C(v233, v231);
  v312[1] = v231;
  v155 = v320;
  v154 = v311;
  sub_1C557019C(v320, v311);
  v312[2] = v154;
  v310[0] = v237;
  v310[1] = v228;
  v310[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0D8, &qword_1C55B85A8);
  v309[0] = v273;
  v309[1] = sub_1C55702F8();
  v309[2] = sub_1C5570390();
  sub_1C540F5A0(v312, 3uLL, v310, v309, v188);
  sub_1C5570428(v154);
  sub_1C53722B8(v231);
  sub_1C556FA5C(v239);
  sub_1C5570428(v155);
  sub_1C53722B8(v233);
  return sub_1C556FA5C(v241);
}

unint64_t sub_1C55687A8()
{
  v2 = qword_1EC15EF08;
  if (!qword_1EC15EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF00, &qword_1C55B7F98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5568830()
{
  v2 = qword_1EC15EF10;
  if (!qword_1EC15EF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EEF0, &qword_1C55B7F88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EF10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55688B8()
{
  v2 = qword_1EC15EF48;
  if (!qword_1EC15EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EEF8, &qword_1C55B7F90);
    sub_1C5568830();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EF48);
    return WitnessTable;
  }

  return v2;
}

void sub_1C5568960(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 96);
  sub_1C5409664(&v5, v3);
  sub_1C5409664(&v5, v2);
  v1 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(&v1);
  sub_1C5373718(&v5);
}

uint64_t sub_1C5568A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v147, 0, sizeof(v147));
  v101 = 0;
  v102 = 0;
  v99 = 0u;
  v100 = 0u;
  v71 = 0u;
  v72 = 0u;
  v148 = a1;
  v145 = sub_1C5565328();
  v146 = v2;
  sub_1C54141E8();
  v141 = sub_1C5595A04();
  v142 = v3;
  v143 = v4;
  v144 = v5;
  v51 = v3;
  v52 = v4;
  v53 = v5;
  sub_1C5595834();
  v137 = v141;
  v138 = v51;
  v139 = v52 & 1;
  v140 = v53;
  v133 = sub_1C55959C4();
  v134 = v6;
  v135 = v7;
  v136 = v8;
  v55 = v6;
  v54 = v7;
  v56 = v8;

  sub_1C5412EA0(v141, v51, v52 & 1);

  v129 = v133;
  v130 = v55;
  v131 = v54 & 1;
  v132 = v56;
  v125 = sub_1C55959B4();
  v126 = v9;
  v127 = v10;
  v128 = v11;
  v57 = v9;
  v58 = v10;
  v59 = v11;
  sub_1C5412EA0(v133, v55, v54 & 1);

  v122[0] = v125;
  v122[1] = v57;
  v123 = v58 & 1;
  v124 = v59;
  sub_1C540EFD8(v122, MEMORY[0x1E6981148], v147);
  sub_1C5414260(v122);
  v149 = *(a1 + 40);
  v150 = *(a1 + 56);
  sub_1C55653C8(&v149, v117);
  v115 = v149;
  v116 = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8, &unk_1C55B7F68);
  sub_1C5595F84();
  sub_1C5565428(&v149);
  if (v114)
  {
    v101 = v113;
    v102 = v114;
    sub_1C5594CF4();
    v97 = v113;
    v98 = v114;
    v93 = sub_1C5595A04();
    v94 = v12;
    v95 = v13;
    v96 = v14;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    sub_1C5595824();
    v89 = v93;
    v90 = v22;
    v91 = v23 & 1;
    v92 = v24;
    v85 = sub_1C55959C4();
    v86 = v15;
    v87 = v16;
    v88 = v17;
    v25 = v15;
    v26 = v16;
    v27 = v17;

    sub_1C5412EA0(v93, v22, v23 & 1);

    v84 = sub_1C5410CD0();
    v80 = v85;
    v81 = v25;
    v82 = v26 & 1;
    v83 = v27;
    v76 = sub_1C5595994();
    v77 = v18;
    v78 = v19;
    v79 = v20;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    sub_1C5410D10(&v84);
    sub_1C5412EA0(v80, v25, v26 & 1);

    v73[0] = v76;
    v73[1] = v28;
    v74 = v29 & 1;
    v75 = v30;
    v37 = MEMORY[0x1E6981148];
    sub_1C540EFD8(v73, MEMORY[0x1E6981148], &v99);
    sub_1C5414260(v73);
    v31 = v99;
    v32 = v100;
    v33 = *(&v100 + 1);
    sub_1C54130AC(v99, *(&v99 + 1), v100 & 1);
    sub_1C5594CF4();
    v68 = v31;
    v69 = v32 & 1;
    v70 = v33;
    sub_1C540EFD8(&v68, v37, &v71);
    sub_1C5414260(&v68);
    v35 = v71;
    v34 = v72;
    v36 = *(&v72 + 1);
    sub_1C54130AC(v71, *(&v71 + 1), v72 & 1);
    sub_1C5594CF4();
    v61 = v35;
    v62 = v34 & 1;
    v63 = v36;
    sub_1C540F554(&v61, v37, &v64);
    sub_1C54366A4(&v61);
    v38 = v64;
    v39 = v65;
    v40 = v66;
    v41 = v67;
    sub_1C54365B4(v64, v65, v66, v67);
    v118 = v38;
    v119 = v39;
    v120 = v40;
    v121 = v41;
    sub_1C5414260(&v71);
    sub_1C5414260(&v99);

    v46 = v38;
    v47 = v39;
    v48 = v40;
    v49 = v41;
  }

  else
  {
    memset(v108, 0, sizeof(v108));
    sub_1C540F554(v108, MEMORY[0x1E6981148], &v109);
    v42 = v109;
    v43 = v110;
    v44 = v111;
    v45 = v112;
    sub_1C54365B4(v109, v110, v111, v112);
    v118 = v42;
    v119 = v43;
    v120 = v44;
    v121 = v45;
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = v45;
  }

  sub_1C54142A8(v147, v106);
  v107[0] = v106;
  v105[0] = v46;
  v105[1] = v47;
  v105[2] = v48;
  v105[3] = v49;
  v107[1] = v105;
  v104[0] = MEMORY[0x1E6981148];
  v104[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448, &qword_1C55AFCB0);
  v103[0] = MEMORY[0x1E6981138];
  v103[1] = sub_1C5436610();
  sub_1C540F5A0(v107, 2uLL, v104, v103, a2);
  sub_1C54366A4(v105);
  sub_1C5414260(v106);
  sub_1C54366A4(&v118);
  return sub_1C5414260(v147);
}

uint64_t sub_1C5569224@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v112 = sub_1C556A760;
  v77 = sub_1C556C13C;
  v78 = MEMORY[0x1E6981448];
  v79 = sub_1C556C83C;
  v80 = sub_1C556CC00;
  v126 = 0;
  __src = v127;
  __n = 168;
  memcpy(v127, v1, sizeof(v127));
  memcpy(__dst, v127, sizeof(__dst));
  v83 = sub_1C5596A04();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83, v2, v3, v4);
  v87 = &v42 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF68, &qword_1C55B7FF0);
  v89 = (*(*(v88 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88, v5, v6, v7);
  v111 = &v42 - v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF70, &qword_1C55B7FF8);
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90, v8, v9, v10);
  v94 = &v42 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF78, &qword_1C55B8000);
  v96 = (*(*(v95 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v95, v11, v12, v13);
  v97 = &v42 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF80, &qword_1C55B8008);
  v99 = (*(*(v98 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98, v14, v15, v16);
  v100 = &v42 - v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF88, &qword_1C55B8010);
  v102 = (*(*(v101 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v101, v17, v18, v19);
  v103 = &v42 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF90, &qword_1C55B8018);
  v105 = (*(*(v104 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v104, v20, v21, v22);
  v106 = &v42 - v105;
  v107 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v42 - v105, v24, v25, v26);
  v108 = &v42 - v107;
  v109 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v42 - v107, v28, v29, v30);
  v110 = &v42 - v109;
  v126 = &v42 - v109;
  sub_1C55271EC(v1, &v125);
  v113 = &v118;
  v119 = v1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF98, &qword_1C55B8020);
  v115 = sub_1C556BA00();
  sub_1C5410F68();
  sub_1C5596074();
  sub_1C545EC80(v1);
  v116 = v1[20];
  *&v32 = MEMORY[0x1E69E5928](v116, v31).n128_u64[0];
  v117 = [v116 imageData];
  if (v117)
  {
    v74 = v117;
    v69 = v117;
    v70 = sub_1C55948D4();
    v71 = v33;
    MEMORY[0x1E69E5920](v69);
    v72 = v70;
    v73 = v71;
  }

  else
  {
    v72 = 0;
    v73 = 0xF000000000000000;
  }

  v43 = v73;
  v42 = v72;
  MEMORY[0x1E69E5920](v116);
  v45 = v124;
  v124[0] = v42;
  v124[1] = v43;
  sub_1C55271EC(v76, &v123);
  v53 = 184;
  v54 = 7;
  v44 = swift_allocObject();
  v55 = 168;
  memcpy((v44 + 16), v76, 0xA8uLL);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFB8, &qword_1C55B8038);
  v49 = sub_1C556C144();
  v50 = sub_1C556C1CC();
  sub_1C543AE1C();
  sub_1C5595DE4();

  sub_1C556C2DC(v45);
  sub_1C537131C(v111);
  v47 = [objc_opt_self() defaultCenter];
  v46 = *sub_1C55415F0();
  MEMORY[0x1E69E5928](v46, v34);
  sub_1C5596A14();
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v47);
  sub_1C55271EC(v76, &v122);
  v52 = swift_allocObject();
  memcpy((v52 + 16), v76, v55);
  v121[21] = v88;
  v121[22] = v48;
  v121[23] = v49;
  v121[24] = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5443C8C();
  sub_1C5595E34();

  (*(v84 + 8))(v87, v83);
  (*(v91 + 8))(v94, v90);
  sub_1C55271EC(v76, v121);
  v56 = swift_allocObject();
  memcpy((v56 + 16), v76, v55);
  sub_1C556CC08();
  sub_1C5595DC4();
  sub_1C5411348(v80, v56);
  sub_1C53715C0(v97);
  v57 = *sub_1C545CFA4();
  v58 = *sub_1C545CFB8();
  v59 = *sub_1C545CFC4();
  sub_1C545CFD0();
  sub_1C5594F54();
  v60 = v35;
  v61 = v36;
  v62 = v37;
  v63 = v38;
  sub_1C556CC90();
  sub_1C5595D74();
  sub_1C53716A0(v100);
  v39 = [objc_opt_self() systemGroupedBackgroundColor];
  v40 = sub_1C5595E44();
  v67 = &v120;
  v120 = v40;
  v65 = sub_1C556CD34();
  v64 = MEMORY[0x1E69815C0];
  v66 = MEMORY[0x1E6981568];
  sub_1C5410CE8(v101, MEMORY[0x1E69815C0]);
  sub_1C5595A74();
  sub_1C5410D10(v67);
  sub_1C53716A0(v103);
  v68 = sub_1C556CDD8();
  sub_1C540EFD8(v108, v104, v110);
  sub_1C53717F8(v108);
  sub_1C5371974(v110, v106);
  sub_1C540EFD8(v106, v104, v75);
  sub_1C53717F8(v106);
  return sub_1C53717F8(v110);
}