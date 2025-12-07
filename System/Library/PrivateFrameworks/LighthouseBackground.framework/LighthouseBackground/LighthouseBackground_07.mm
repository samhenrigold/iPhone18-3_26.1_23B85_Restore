uint64_t sub_1DF1F558C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF1F93DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF1F55C0(uint64_t a1)
{
  v2 = sub_1DF1F61C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1F55FC(uint64_t a1)
{
  v2 = sub_1DF1F61C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TaskRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EAD8, &qword_1DF238C40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - v5;
  v7 = *v1;
  v68 = v1[1];
  v69 = v7;
  v8 = *(v1 + 16);
  v9 = *(v1 + 17);
  v10 = v1[3];
  v66 = v1[4];
  v67 = v10;
  v75 = *(v1 + 40);
  LODWORD(v10) = *(v1 + 41);
  v64 = *(v1 + 42);
  v65 = v10;
  LODWORD(v10) = *(v1 + 43);
  v62 = *(v1 + 44);
  v63 = v10;
  LODWORD(v10) = *(v1 + 45);
  v60 = *(v1 + 46);
  v61 = v10;
  v58 = v1[6];
  v59 = *(v1 + 56);
  LODWORD(v10) = *(v1 + 57);
  v56 = *(v1 + 58);
  v57 = v10;
  LODWORD(v10) = *(v1 + 59);
  v54 = *(v1 + 60);
  v55 = v10;
  LODWORD(v10) = *(v1 + 61);
  v52 = *(v1 + 62);
  v53 = v10;
  LODWORD(v10) = *(v1 + 63);
  v50 = *(v1 + 64);
  v51 = v10;
  v49 = v1[9];
  v20[0] = *(v1 + 80);
  v20[1] = *(v1 + 81);
  v21 = v1[11];
  v22 = *(v1 + 96);
  v23 = v1[13];
  v24 = *(v1 + 112);
  v25 = *(v1 + 113);
  v26 = *(v1 + 114);
  v11 = v1[16];
  v27 = v1[15];
  v28 = v11;
  v29 = v1[17];
  v30 = *(v1 + 144);
  v12 = v1[20];
  v31 = v1[19];
  v32 = v12;
  v33 = v1[21];
  v34 = *(v1 + 176);
  v35 = *(v1 + 177);
  v36 = *(v1 + 178);
  v13 = v1[24];
  v37 = v1[23];
  v38 = v13;
  v39 = *(v1 + 200);
  v40 = *(v1 + 201);
  v41 = *(v1 + 202);
  v14 = v1[27];
  v42 = v1[26];
  v43 = v14;
  v44 = v1[28];
  LODWORD(v14) = *(v1 + 233);
  v45 = *(v1 + 232);
  v46 = v14;
  v15 = v1[31];
  v47 = v1[30];
  v48 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1F61C8();
  sub_1DF22B740();
  v71 = v69;
  v72 = v68;
  v73 = v8;
  v74 = v9;
  v76 = 0;
  sub_1DF1F621C();
  v16 = v70;
  sub_1DF22B560();
  if (v16)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = v61;
  v17 = v62;
  v71 = v67;
  v72 = v66;
  v73 = v75;
  v74 = v65;
  v76 = 1;
  sub_1DF1F6270();
  sub_1DF22B560();
  LOBYTE(v71) = 2;
  sub_1DF22B520();
  LOBYTE(v71) = 3;
  sub_1DF22B520();
  LOBYTE(v71) = v17;
  v76 = 4;
  sub_1DF1F62C4();
  sub_1DF22B560();
  LOBYTE(v71) = v18;
  v76 = 5;
  sub_1DF1F6318();
  sub_1DF22B560();
  LOBYTE(v71) = 6;
  sub_1DF22B520();
  LOBYTE(v71) = 7;
  sub_1DF22B530();
  LOBYTE(v71) = 8;
  sub_1DF22B520();
  LOBYTE(v71) = 9;
  sub_1DF22B520();
  LOBYTE(v71) = 10;
  v70 = v3;
  sub_1DF22B520();
  LOBYTE(v71) = 11;
  sub_1DF22B520();
  LOBYTE(v71) = 12;
  sub_1DF22B520();
  LOBYTE(v71) = 13;
  sub_1DF22B520();
  LOBYTE(v71) = 14;
  sub_1DF22B520();
  LOBYTE(v71) = 15;
  sub_1DF22B520();
  v71 = v49;
  v76 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EAE0, &unk_1DF238C48);
  sub_1DF1F83D4(&qword_1ECE0C078, sub_1DF1F636C, MEMORY[0x1E69E6300]);
  sub_1DF22B560();
  LOBYTE(v71) = 17;
  sub_1DF22B520();
  LOBYTE(v71) = 18;
  sub_1DF22B520();
  LOBYTE(v71) = 19;
  sub_1DF22B570();
  LOBYTE(v71) = 20;
  sub_1DF22B570();
  LOBYTE(v71) = 21;
  sub_1DF22B520();
  LOBYTE(v71) = 22;
  sub_1DF22B520();
  LOBYTE(v71) = 23;
  sub_1DF22B510();
  LOBYTE(v71) = 24;
  sub_1DF22B550();
  LOBYTE(v71) = 25;
  sub_1DF22B510();
  LOBYTE(v71) = 26;
  sub_1DF22B530();
  LOBYTE(v71) = 27;
  sub_1DF22B520();
  LOBYTE(v71) = 28;
  sub_1DF22B520();
  v71 = v37;
  v76 = 29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  sub_1DF15FAB4(&qword_1ECE0C068, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1DF22B560();
  v71 = v38;
  v76 = 30;
  sub_1DF22B560();
  LOBYTE(v71) = 31;
  sub_1DF22B520();
  LOBYTE(v71) = 32;
  sub_1DF22B520();
  LOBYTE(v71) = 33;
  sub_1DF22B520();
  v71 = v42;
  v76 = 34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EAE8, &qword_1DF238C58);
  sub_1DF1F63C0(&qword_1ECE0C088, sub_1DF1F6438, MEMORY[0x1E69E6300]);
  sub_1DF22B560();
  LOBYTE(v71) = 35;
  sub_1DF22B510();
  LOBYTE(v71) = 36;
  sub_1DF22B520();
  LOBYTE(v71) = v46;
  v76 = 37;
  sub_1DF1F648C();
  sub_1DF22B560();
  v71 = v47;
  v76 = 38;
  sub_1DF22B560();
  v71 = v48;
  v76 = 39;
  sub_1DF22B560();
  return (*(v4 + 8))(v6, v70);
}

unint64_t sub_1DF1F61C8()
{
  result = qword_1ECE0C6D0;
  if (!qword_1ECE0C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C6D0);
  }

  return result;
}

unint64_t sub_1DF1F621C()
{
  result = qword_1ECE0C338;
  if (!qword_1ECE0C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C338);
  }

  return result;
}

unint64_t sub_1DF1F6270()
{
  result = qword_1ECE0C258;
  if (!qword_1ECE0C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C258);
  }

  return result;
}

unint64_t sub_1DF1F62C4()
{
  result = qword_1ECE0C378;
  if (!qword_1ECE0C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C378);
  }

  return result;
}

unint64_t sub_1DF1F6318()
{
  result = qword_1ECE0C138;
  if (!qword_1ECE0C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C138);
  }

  return result;
}

unint64_t sub_1DF1F636C()
{
  result = qword_1ECE0C328;
  if (!qword_1ECE0C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C328);
  }

  return result;
}

uint64_t sub_1DF1F63C0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0EAE8, &qword_1DF238C58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF1F6438()
{
  result = qword_1ECE0C3A8;
  if (!qword_1ECE0C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C3A8);
  }

  return result;
}

unint64_t sub_1DF1F648C()
{
  result = qword_1ECE0C2A8;
  if (!qword_1ECE0C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C2A8);
  }

  return result;
}

uint64_t TaskRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EAF0, &unk_1DF238C60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - v7;
  v213 = 1;
  v210 = 1;
  v209 = 1;
  v205 = 1;
  v203 = 1;
  v200 = 1;
  v198 = 1;
  v9 = a1[3];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DF1F61C8();
  sub_1DF22B730();
  if (v2)
  {
    v214 = v2;
    v80 = 0;
    v81 = 0uLL;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v89 = 0;
    v90 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v99 = 0;
    v97 = 0;
    v98 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v96 = 4;
    v95 = 6;
    v69 = 2;
    v70 = 2;
    v68 = 2;
    v71 = 2;
    v72 = 2;
    v73 = 8;
    v74 = 2;
    v75 = 2;
    v76 = 2;
    v77 = 2;
    v78 = 2;
    v79 = 2;
    v101 = 2;
    v102 = 2;
    v103 = 2;
    v104 = 2;
    v105 = 2;
    v106 = 2;
    v13 = 2;
    v14 = 2;
    v15 = 2;
    v16 = 2;
  }

  else
  {
    LOBYTE(v107) = 0;
    sub_1DF1F8284();
    sub_1DF22B480();
    v66 = v125;
    v67 = v126;
    v213 = v127;
    LOBYTE(v107) = 1;
    sub_1DF1F82D8();
    sub_1DF22B480();
    v18 = *(&v125 + 1);
    v97 = v125;
    v19 = v126;
    v210 = v127;
    LOBYTE(v125) = 2;
    v20 = sub_1DF22B440();
    v99 = v19;
    v98 = v18;
    v65 = v20;
    LOBYTE(v125) = 3;
    v64 = sub_1DF22B440();
    LOBYTE(v107) = 4;
    sub_1DF1F832C();
    sub_1DF22B480();
    v96 = v125;
    LOBYTE(v107) = 5;
    sub_1DF1F8380();
    sub_1DF22B480();
    v21 = a2;
    v22 = v125;
    LOBYTE(v125) = 6;
    v23 = sub_1DF22B440();
    v95 = v22;
    v63 = v23;
    LOBYTE(v125) = 7;
    v94 = sub_1DF22B450();
    v209 = v24 & 1;
    LOBYTE(v125) = 8;
    v25 = sub_1DF22B440();
    v214 = 0;
    v62 = v25;
    LOBYTE(v125) = 9;
    v106 = sub_1DF22B440();
    v214 = 0;
    LOBYTE(v125) = 10;
    v105 = sub_1DF22B440();
    v214 = 0;
    LOBYTE(v125) = 11;
    v104 = sub_1DF22B440();
    v214 = 0;
    LOBYTE(v125) = 12;
    v103 = sub_1DF22B440();
    v214 = 0;
    LOBYTE(v125) = 13;
    v102 = sub_1DF22B440();
    v214 = 0;
    LOBYTE(v125) = 14;
    v101 = sub_1DF22B440();
    v214 = 0;
    LOBYTE(v125) = 15;
    v79 = sub_1DF22B440();
    v214 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EAE0, &unk_1DF238C48);
    LOBYTE(v107) = 16;
    sub_1DF1F83D4(&qword_1ECE0C070, sub_1DF1F844C, MEMORY[0x1E69E6330]);
    v26 = v214;
    sub_1DF22B480();
    v214 = v26;
    if (v26)
    {
      (*(v6 + 8))(v8, v5);
      v80 = 0;
      v81 = 0uLL;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v89 = 0;
      v90 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v85 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v69 = 2;
      v70 = 2;
      v68 = 2;
      v71 = 2;
      v72 = 2;
      v73 = 8;
      v74 = 2;
      v75 = 2;
      v76 = 2;
      v77 = 2;
      v78 = 2;
    }

    else
    {
      v93 = v125;
      LOBYTE(v125) = 17;
      v78 = sub_1DF22B440();
      v214 = 0;
      LOBYTE(v125) = 18;
      v77 = sub_1DF22B440();
      v214 = 0;
      LOBYTE(v125) = 19;
      v92 = sub_1DF22B490();
      v214 = 0;
      v205 = v27 & 1;
      LOBYTE(v125) = 20;
      v91 = sub_1DF22B490();
      v214 = 0;
      v203 = v28 & 1;
      LOBYTE(v125) = 21;
      v75 = sub_1DF22B440();
      v214 = 0;
      LOBYTE(v125) = 22;
      v74 = sub_1DF22B440();
      v214 = 0;
      LOBYTE(v125) = 23;
      v85 = sub_1DF22B430();
      v88 = v29;
      v214 = 0;
      LOBYTE(v125) = 24;
      v87 = sub_1DF22B470();
      v214 = 0;
      v200 = v30 & 1;
      LOBYTE(v125) = 25;
      v86 = sub_1DF22B430();
      v90 = v31;
      v214 = 0;
      LOBYTE(v125) = 26;
      v89 = sub_1DF22B450();
      v214 = 0;
      v198 = v32 & 1;
      LOBYTE(v125) = 27;
      v72 = sub_1DF22B440();
      v214 = 0;
      LOBYTE(v125) = 28;
      v71 = sub_1DF22B440();
      v214 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
      LOBYTE(v107) = 29;
      sub_1DF15FAB4(&qword_1ECE0C058, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      v33 = v214;
      sub_1DF22B480();
      v214 = v33;
      if (v33)
      {
        (*(v6 + 8))(v8, v5);
        v80 = 0;
        v81 = 0uLL;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v76 = 2;
        v73 = 8;
        v69 = 2;
        v70 = 2;
        v68 = 2;
      }

      else
      {
        v84 = v125;
        LOBYTE(v107) = 30;
        sub_1DF22B480();
        v214 = 0;
        v83 = v125;
        LOBYTE(v125) = 31;
        v68 = sub_1DF22B440();
        v214 = 0;
        LOBYTE(v125) = 32;
        v70 = sub_1DF22B440();
        v214 = 0;
        LOBYTE(v125) = 33;
        v69 = sub_1DF22B440();
        v214 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EAE8, &qword_1DF238C58);
        LOBYTE(v107) = 34;
        sub_1DF1F63C0(&qword_1ECE0C080, sub_1DF1F84A0, MEMORY[0x1E69E6330]);
        v34 = v214;
        sub_1DF22B480();
        v214 = v34;
        if (v34)
        {
          (*(v6 + 8))(v8, v5);
          v80 = 0;
          v81 = 0uLL;
          v82 = 0;
          v76 = 2;
        }

        else
        {
          *&v81 = v125;
          LOBYTE(v125) = 35;
          *(&v81 + 1) = sub_1DF22B430();
          v82 = v35;
          v214 = 0;
          LOBYTE(v125) = 36;
          v76 = sub_1DF22B440();
          v214 = 0;
          LOBYTE(v107) = 37;
          sub_1DF1F84F4();
          v36 = v214;
          sub_1DF22B480();
          v214 = v36;
          if (!v36)
          {
            v73 = v125;
            LOBYTE(v107) = 38;
            sub_1DF22B480();
            v214 = 0;
            v80 = v125;
            v123 = 39;
            sub_1DF22B480();
            v214 = 0;
            (*(v6 + 8))(v8, v5);
            v56 = v124;
            v107 = v66;
            LOBYTE(v108) = v67;
            v59 = v213;
            BYTE1(v108) = v213;
            *(&v108 + 2) = v211;
            WORD3(v108) = v212;
            *(&v108 + 1) = v97;
            *&v109 = v98;
            BYTE8(v109) = v99;
            v58 = v210;
            BYTE9(v109) = v210;
            BYTE10(v109) = v65;
            BYTE11(v109) = v64;
            BYTE12(v109) = v96;
            BYTE13(v109) = v95;
            BYTE14(v109) = v63;
            *&v110 = v94;
            v57 = v209;
            BYTE8(v110) = v209;
            BYTE9(v110) = v62;
            BYTE10(v110) = v106;
            BYTE11(v110) = v105;
            BYTE12(v110) = v104;
            BYTE13(v110) = v103;
            BYTE14(v110) = v102;
            HIBYTE(v110) = v101;
            LOBYTE(v111) = v79;
            *(&v111 + 1) = *v208;
            DWORD1(v111) = *&v208[3];
            *(&v111 + 1) = v93;
            LOBYTE(v112) = v78;
            BYTE1(v112) = v77;
            WORD3(v112) = v207;
            *(&v112 + 2) = v206;
            *(&v112 + 1) = v92;
            v61 = v205;
            LOBYTE(v113) = v205;
            DWORD1(v113) = *&v204[3];
            *(&v113 + 1) = *v204;
            *(&v113 + 1) = v91;
            v60 = v203;
            LOBYTE(v114) = v203;
            BYTE1(v114) = v75;
            BYTE2(v114) = v74;
            *(&v114 + 3) = v201;
            BYTE7(v114) = v202;
            *(&v114 + 1) = v85;
            *&v115 = v88;
            *(&v115 + 1) = v87;
            DWORD1(v116) = *&v199[3];
            *(&v116 + 1) = *v199;
            *(&v118 + 3) = v196;
            *(&v119 + 11) = v194;
            *(&v121 + 10) = v192;
            HIDWORD(v55) = v200;
            LOBYTE(v116) = v200;
            *(&v116 + 1) = v86;
            *&v117 = v90;
            *(&v117 + 1) = v89;
            BYTE7(v118) = v197;
            HIBYTE(v119) = v195;
            HIWORD(v121) = v193;
            v37 = v198;
            LOBYTE(v118) = v198;
            v39 = v71;
            v38 = v72;
            BYTE1(v118) = v72;
            BYTE2(v118) = v71;
            v40 = v84;
            *(&v118 + 1) = v84;
            *&v119 = v83;
            v41 = v69;
            BYTE8(v119) = v68;
            v42 = v70;
            BYTE9(v119) = v70;
            BYTE10(v119) = v69;
            v120 = v81;
            *&v121 = v82;
            BYTE8(v121) = v76;
            BYTE9(v121) = v73;
            *&v122 = v80;
            *(&v122 + 1) = v124;
            v43 = v66;
            v44 = v108;
            v45 = v110;
            v21[2] = v109;
            v21[3] = v45;
            *v21 = v43;
            v21[1] = v44;
            v46 = v111;
            v47 = v112;
            v48 = v114;
            v21[6] = v113;
            v21[7] = v48;
            v21[4] = v46;
            v21[5] = v47;
            v49 = v115;
            v50 = v116;
            v51 = v118;
            v21[10] = v117;
            v21[11] = v51;
            v21[8] = v49;
            v21[9] = v50;
            v52 = v119;
            v53 = v120;
            v54 = v122;
            v21[14] = v121;
            v21[15] = v54;
            v21[12] = v52;
            v21[13] = v53;
            sub_1DF1913C4(&v107, &v125);
            __swift_destroy_boxed_opaque_existential_1Tm(v100);
            v125 = v66;
            v126 = v67;
            v127 = v59;
            v130 = v97;
            v131 = v98;
            v132 = v99;
            v133 = v58;
            v134 = v65;
            v135 = v64;
            v136 = v96;
            v137 = v95;
            v138 = v63;
            v139 = v94;
            v140 = v57;
            v141 = v62;
            v142 = v106;
            v143 = v105;
            v144 = v104;
            v145 = v103;
            v146 = v102;
            v147 = v101;
            v148 = v79;
            v150 = v93;
            v151 = v78;
            v128 = v211;
            v129 = v212;
            *v149 = *v208;
            *&v149[3] = *&v208[3];
            v152 = v77;
            v153 = v206;
            v154 = v207;
            v155 = v92;
            v156 = v61;
            *v157 = *v204;
            *&v157[3] = *&v204[3];
            v158 = v91;
            v159 = v60;
            v160 = v75;
            v161 = v74;
            v163 = v202;
            v162 = v201;
            v164 = v85;
            v165 = v88;
            v166 = v87;
            v167 = BYTE4(v55);
            *&v168[3] = *&v199[3];
            *v168 = *v199;
            v169 = v86;
            v170 = v90;
            v171 = v89;
            v172 = v37;
            v173 = v38;
            v174 = v39;
            v176 = v197;
            v175 = v196;
            v177 = v40;
            v178 = v83;
            v179 = v68;
            v180 = v42;
            v181 = v41;
            v183 = v195;
            v182 = v194;
            v184 = v81;
            v185 = v82;
            v186 = v76;
            v187 = v73;
            v189 = v193;
            v188 = v192;
            v190 = v80;
            v191 = v56;
            return sub_1DF191420(&v125);
          }

          (*(v6 + 8))(v8, v5);
          v80 = 0;
        }

        v73 = 8;
      }
    }

    v10 = v67;
    v11 = *(&v66 + 1);
    v12 = v66;
    v15 = v64;
    v16 = v65;
    v13 = v62;
    v14 = v63;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  *&v125 = v12;
  *(&v125 + 1) = v11;
  v126 = v10;
  v130 = v97;
  v131 = v98;
  v132 = v99;
  v134 = v16;
  v135 = v15;
  v136 = v96;
  v137 = v95;
  v138 = v14;
  v139 = v94;
  v141 = v13;
  v142 = v106;
  v143 = v105;
  v144 = v104;
  v145 = v103;
  v127 = v213;
  v128 = v211;
  v129 = v212;
  v133 = v210;
  v140 = v209;
  v146 = v102;
  v147 = v101;
  v148 = v79;
  *v149 = *v208;
  *&v149[3] = *&v208[3];
  v150 = v93;
  v151 = v78;
  v152 = v77;
  v154 = v207;
  v153 = v206;
  v155 = v92;
  v156 = v205;
  *&v157[3] = *&v204[3];
  *v157 = *v204;
  v158 = v91;
  v159 = v203;
  v160 = v75;
  v161 = v74;
  v162 = v201;
  v163 = v202;
  v164 = v85;
  v165 = v88;
  v166 = v87;
  v167 = v200;
  *&v168[3] = *&v199[3];
  *v168 = *v199;
  v169 = v86;
  v170 = v90;
  v171 = v89;
  v172 = v198;
  v173 = v72;
  v174 = v71;
  v176 = v197;
  v175 = v196;
  v177 = v84;
  v178 = v83;
  v179 = v68;
  v180 = v70;
  v181 = v69;
  v183 = v195;
  v182 = v194;
  v184 = v81;
  v185 = v82;
  v186 = v76;
  v187 = v73;
  v189 = v193;
  v188 = v192;
  v190 = v80;
  v191 = 0;
  return sub_1DF191420(&v125);
}

unint64_t sub_1DF1F8284()
{
  result = qword_1ECE0C330;
  if (!qword_1ECE0C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C330);
  }

  return result;
}

unint64_t sub_1DF1F82D8()
{
  result = qword_1ECE0C250;
  if (!qword_1ECE0C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C250);
  }

  return result;
}

unint64_t sub_1DF1F832C()
{
  result = qword_1ECE0C368;
  if (!qword_1ECE0C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C368);
  }

  return result;
}

unint64_t sub_1DF1F8380()
{
  result = qword_1ECE0C128;
  if (!qword_1ECE0C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C128);
  }

  return result;
}

uint64_t sub_1DF1F83D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0EAE0, &unk_1DF238C48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF1F844C()
{
  result = qword_1ECE0C320;
  if (!qword_1ECE0C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C320);
  }

  return result;
}

unint64_t sub_1DF1F84A0()
{
  result = qword_1ECE0C3A0;
  if (!qword_1ECE0C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C3A0);
  }

  return result;
}

unint64_t sub_1DF1F84F4()
{
  result = qword_1ECE0C2A0;
  if (!qword_1ECE0C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C2A0);
  }

  return result;
}

uint64_t TaskRequest.description.getter()
{
  v1 = sub_1DF22B720();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[13];
  v41[12] = v0[12];
  v41[13] = v5;
  v6 = v0[15];
  v41[14] = v0[14];
  v41[15] = v6;
  v7 = v0[9];
  v41[8] = v0[8];
  v41[9] = v7;
  v8 = v0[11];
  v41[10] = v0[10];
  v41[11] = v8;
  v9 = v0[5];
  v41[4] = v0[4];
  v41[5] = v9;
  v10 = v0[7];
  v41[6] = v0[6];
  v41[7] = v10;
  v11 = v0[1];
  v41[0] = *v0;
  v41[1] = v11;
  v12 = v0[3];
  v41[2] = v0[2];
  v41[3] = v12;
  *(&v37 + 1) = &type metadata for TaskRequest;
  v13 = swift_allocObject();
  *&v36 = v13;
  v14 = v0[13];
  v13[13] = v0[12];
  v13[14] = v14;
  v15 = v0[15];
  v13[15] = v0[14];
  v13[16] = v15;
  v16 = v0[9];
  v13[9] = v0[8];
  v13[10] = v16;
  v17 = v0[11];
  v13[11] = v0[10];
  v13[12] = v17;
  v18 = v0[5];
  v13[5] = v0[4];
  v13[6] = v18;
  v19 = v0[7];
  v13[7] = v0[6];
  v13[8] = v19;
  v20 = v0[1];
  v13[1] = *v0;
  v13[2] = v20;
  v21 = v0[3];
  v13[3] = v0[2];
  v13[4] = v21;
  sub_1DF1913C4(v41, v39);
  sub_1DF22B700();
  v22 = sub_1DF22B710();
  (*(v2 + 8))(v4, v1);
  v33[1] = v22;
  sub_1DF22B3A0();
  sub_1DF22B410();
  if (*(&v40 + 1))
  {
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      v36 = v39[0];
      v37 = v39[1];
      v38 = v40;
      if (*(&v39[0] + 1))
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        MEMORY[0x1E12CF820](v36);
        MEMORY[0x1E12CF820](8250, 0xE200000000000000);
        sub_1DF22B3B0();
        v24 = v34;
        v25 = v35;
        sub_1DF1AACB4(&v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1DF174610(0, *(v23 + 2) + 1, 1, v23);
        }

        v27 = *(v23 + 2);
        v26 = *(v23 + 3);
        if (v27 >= v26 >> 1)
        {
          v23 = sub_1DF174610((v26 > 1), v27 + 1, 1, v23);
        }

        *(v23 + 2) = v27 + 1;
        v28 = &v23[16 * v27];
        *(v28 + 4) = v24;
        *(v28 + 5) = v25;
      }

      else
      {
        sub_1DF1AACB4(&v36);
      }

      sub_1DF22B410();
    }

    while (*(&v40 + 1));
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  strcpy(v39, "TaskRequest(");
  BYTE13(v39[0]) = 0;
  HIWORD(v39[0]) = -5120;
  *&v36 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  sub_1DF164BEC(&qword_1ECE0C060, &unk_1ECE0C7A0, &qword_1DF22CB50, MEMORY[0x1E69E6310]);
  v29 = sub_1DF22AC40();
  v31 = v30;

  MEMORY[0x1E12CF820](v29, v31);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return *&v39[0];
}

unint64_t sub_1DF1F8928()
{
  result = qword_1ECE0EAF8;
  if (!qword_1ECE0EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EAF8);
  }

  return result;
}

unint64_t sub_1DF1F89C4()
{
  result = qword_1ECE0EB10;
  if (!qword_1ECE0EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB10);
  }

  return result;
}

unint64_t sub_1DF1F8A60()
{
  result = qword_1ECE0EB28;
  if (!qword_1ECE0EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB28);
  }

  return result;
}

unint64_t sub_1DF1F8AFC()
{
  result = qword_1ECE0EB40;
  if (!qword_1ECE0EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB40);
  }

  return result;
}

unint64_t sub_1DF1F8B98()
{
  result = qword_1ECE0EB50;
  if (!qword_1ECE0EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnDemandTaskRequest(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OnDemandTaskRequest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1DF1F8D3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 256))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_1DF1F8D98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 256) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 256) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF1F8FC0()
{
  result = qword_1ECE0EB60;
  if (!qword_1ECE0EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB60);
  }

  return result;
}

unint64_t sub_1DF1F9018()
{
  result = qword_1ECE0EB68;
  if (!qword_1ECE0EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB68);
  }

  return result;
}

unint64_t sub_1DF1F9070()
{
  result = qword_1ECE0EB70;
  if (!qword_1ECE0EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB70);
  }

  return result;
}

unint64_t sub_1DF1F90C8()
{
  result = qword_1ECE0EB78;
  if (!qword_1ECE0EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB78);
  }

  return result;
}

unint64_t sub_1DF1F9120()
{
  result = qword_1ECE0C6C0;
  if (!qword_1ECE0C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C6C0);
  }

  return result;
}

unint64_t sub_1DF1F9178()
{
  result = qword_1ECE0C6C8;
  if (!qword_1ECE0C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C6C8);
  }

  return result;
}

unint64_t sub_1DF1F91D0()
{
  result = qword_1ECE0EB80;
  if (!qword_1ECE0EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB80);
  }

  return result;
}

unint64_t sub_1DF1F9228()
{
  result = qword_1ECE0EB88;
  if (!qword_1ECE0EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB88);
  }

  return result;
}

unint64_t sub_1DF1F9280()
{
  result = qword_1ECE0EB90;
  if (!qword_1ECE0EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB90);
  }

  return result;
}

unint64_t sub_1DF1F92D8()
{
  result = qword_1ECE0EB98;
  if (!qword_1ECE0EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EB98);
  }

  return result;
}

unint64_t sub_1DF1F9330()
{
  result = qword_1ECE0C340;
  if (!qword_1ECE0C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C340);
  }

  return result;
}

unint64_t sub_1DF1F9388()
{
  result = qword_1ECE0C348;
  if (!qword_1ECE0C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C348);
  }

  return result;
}

uint64_t sub_1DF1F93DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69746165706572 && a2 == 0xED00006B73615467;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23E210 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DF23E230 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DF23E250 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DF23E270 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DF23E290 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF23E2B0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74736E4974736F70 && a2 == 0xEB000000006C6C61 || (sub_1DF22B620() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001DF23E2D0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001DF23E300 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6572666552707061 && a2 == 0xEA00000000006873 || (sub_1DF22B620() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DF23E330 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DF23E350 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x70614E7265776F70 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DF23E380 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073 || (sub_1DF22B620() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6F6F62655279616DLL && a2 == 0xEF65636976654474 || (sub_1DF22B620() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DF23E3A0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DF23E3C0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DF23E3E0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DF23E400 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23E420 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065 || (sub_1DF22B620() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DF23E440 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DF23E460 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23E480 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6475427265776F70 && a2 == 0xED00006465746567 || (sub_1DF22B620() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6764754261746164 && a2 == 0xEC00000064657465 || (sub_1DF22B620() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DF23E4A0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DF23E4C0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF23E4E0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DF23E500 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DF23E520 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x6544746567726174 && a2 == 0xEC00000065636976 || (sub_1DF22B620() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x654465746F6D6572 && a2 == 0xEC00000065636976 || (sub_1DF22B620() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DF23E540 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23E560 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DF23E580 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963)
  {

    return 39;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 39;
    }

    else
    {
      return 40;
    }
  }
}

unint64_t sub_1DF1FA010()
{
  result = qword_1ECE0EBA0;
  if (!qword_1ECE0EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EBA0);
  }

  return result;
}

unint64_t sub_1DF1FA064()
{
  result = qword_1ECE0EBA8;
  if (!qword_1ECE0EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EBA8);
  }

  return result;
}

unint64_t sub_1DF1FA0B8()
{
  result = qword_1ECE0EBB0;
  if (!qword_1ECE0EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EBB0);
  }

  return result;
}

unint64_t sub_1DF1FA10C()
{
  result = qword_1ECE0C130;
  if (!qword_1ECE0C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C130);
  }

  return result;
}

unint64_t sub_1DF1FA160()
{
  result = qword_1ECE0C370;
  if (!qword_1ECE0C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C370);
  }

  return result;
}

uint64_t OSEligibilityRule.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DF1FA208()
{
  if (*v0)
  {
    return 0x79614D776F6C6C61;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1DF1FA244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79614D776F6C6C61 && a2 == 0xEA00000000006562)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF1FA324(uint64_t a1)
{
  v2 = sub_1DF1FA530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1FA360(uint64_t a1)
{
  v2 = sub_1DF1FA530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OSEligibilityRule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EBB8, &qword_1DF239A90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1FA530();
  sub_1DF22B740();
  v12 = 0;
  v7 = v9[1];
  sub_1DF22B580();
  if (!v7)
  {
    v11 = 1;
    sub_1DF22B520();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF1FA530()
{
  result = qword_1ECE0EBC0;
  if (!qword_1ECE0EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EBC0);
  }

  return result;
}

uint64_t OSEligibilityRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EBC8, &qword_1DF239A98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1FA530();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = 0;
  v9 = sub_1DF22B4A0();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_1DF22B440();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Bool __swiftcall satisifiesOSEligibilityRules(_:)(Swift::OpaquePointer a1)
{
  v1 = a1._rawValue + 48;
  v2 = *(a1._rawValue + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = v1 + 24;
    v5 = *(v1 - 2);
    v4 = *(v1 - 1);
    v6.value = *v1;

    v7._countAndFlagsBits = v5;
    v7._object = v4;
    LOBYTE(v5) = isEligibleForDomain(domainString:allowMaybe:)(v7, v6);

    v1 = v3;
  }

  while ((v5 & 1) != 0);
  return v2 == 0;
}

Swift::Bool __swiftcall isEligibleForDomain(domainString:allowMaybe:)(Swift::String domainString, Swift::Bool_optional allowMaybe)
{
  object = domainString._object;
  countAndFlagsBits = domainString._countAndFlagsBits;
  v12[3] = *MEMORY[0x1E69E9840];
  v12[1] = 0;
  v12[2] = 0;
  sub_1DF22ACF0();
  os_eligibility_domain_for_name();

  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v5 = domain_answer;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF22A8C0();
    __swift_project_value_buffer(v6, qword_1ED8E92C0);

    v7 = sub_1DF22A8A0();
    v8 = sub_1DF22B110();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1DF160728(countAndFlagsBits, object, v12);
      *(v9 + 12) = 1024;
      *(v9 + 14) = v5;
      _os_log_impl(&dword_1DF15A000, v7, v8, "Unable to determine eligibility for domain %s, status code: %d", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12D0B40](v10, -1, -1);
      MEMORY[0x1E12D0B40](v9, -1, -1);
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 0;
}

unint64_t sub_1DF1FAA48()
{
  result = qword_1ECE0EBD0;
  if (!qword_1ECE0EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EBD0);
  }

  return result;
}

unint64_t sub_1DF1FAAA0()
{
  result = qword_1ECE0EBD8;
  if (!qword_1ECE0EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EBD8);
  }

  return result;
}

unint64_t sub_1DF1FAAF8()
{
  result = qword_1ECE0EBE0;
  if (!qword_1ECE0EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EBE0);
  }

  return result;
}

uint64_t sub_1DF1FAB4C()
{
  sub_1DF22B300();
  MEMORY[0x1E12CF820](0xD000000000000023, 0x80000001DF23E5A0);
  v0 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v0);

  MEMORY[0x1E12CF820](0xD000000000000016, 0x80000001DF23E5D0);
  v1 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v1);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return 0;
}

uint64_t MLHostAnalytics.stateCountMap.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MLHostAnalytics.transitionStatsMap.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MLHostAnalytics.firstValidState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLHostAnalytics(0) + 24);

  return sub_1DF1FADA0(v3, a1);
}

uint64_t type metadata accessor for MLHostAnalytics(uint64_t a1)
{
  result = qword_1ECE0EC18;
  if (!qword_1ECE0EC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF1FADA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLHostAnalytics.firstValidState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLHostAnalytics(0) + 24);

  return sub_1DF1FAE54(a1, v3);
}

uint64_t sub_1DF1FAE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLHostAnalytics.latestValidState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLHostAnalytics(0) + 28);

  return sub_1DF1FADA0(v3, a1);
}

uint64_t MLHostAnalytics.latestValidState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLHostAnalytics(0) + 28);

  return sub_1DF1FAE54(a1, v3);
}

uint64_t MLHostAnalytics.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *(a1 + 1) = sub_1DF18FD18(v2);
  v3 = type metadata accessor for MLHostAnalytics(0);
  v4 = *(v3 + 24);
  v5 = type metadata accessor for LedgerState(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a1[v4], 1, 1, v5);
  v6 = &a1[*(v3 + 28)];

  return v8(v6, 1, 1, v5);
}

double sub_1DF1FB0E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (*(v3 + 16))
  {
    v4 = sub_1DF1752CC(0x676E696E6E7552, 0xE700000000000000, a1, a2);
    v6 = v5;

    result = -1.0;
    if (v6)
    {
      return *(*(v3 + 56) + 32 * v4 + 16);
    }
  }

  else
  {

    return -1.0;
  }

  return result;
}

unint64_t sub_1DF1FB180()
{
  v1 = 0x756F436574617473;
  v2 = 0x6C61567473726966;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1DF1FB218@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF1FC020(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF1FB240(uint64_t a1)
{
  v2 = sub_1DF1FBBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1FB27C(uint64_t a1)
{
  v2 = sub_1DF1FBBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MLHostAnalytics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EBE8, &qword_1DF239C48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1FBBE4();
  sub_1DF22B740();
  v12 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
  sub_1DF1960A8(&qword_1ECE0D310, MEMORY[0x1E69E6160], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  sub_1DF22B5C0();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    sub_1DF196118(&qword_1ECE0D320, sub_1DF17C3E4, sub_1DF196054, MEMORY[0x1E69E5E38]);
    sub_1DF22B5C0();
    type metadata accessor for MLHostAnalytics(0);
    LOBYTE(v12) = 2;
    type metadata accessor for LedgerState(0);
    sub_1DF1FBDA4(&qword_1ECE0CE10, type metadata accessor for LedgerState, &protocol conformance descriptor for LedgerState);
    sub_1DF22B560();
    LOBYTE(v12) = 3;
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MLHostAnalytics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v26 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EBF8, &qword_1DF239C60);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v26 - v7;
  v9 = type metadata accessor for MLHostAnalytics(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1E69E7CC0];
  v32 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *v12 = v32;
  v31 = sub_1DF18FD18(v13);
  v12[1] = v31;
  v14 = *(v10 + 32);
  v15 = type metadata accessor for LedgerState(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v12 + v14, 1, 1, v15);
  v17 = *(v10 + 36);
  v37 = v12;
  v16(v12 + v17, 1, 1, v15);
  v18 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1DF1FBBE4();
  v19 = v36;
  sub_1DF22B730();
  if (v19)
  {
    v20 = v37;
  }

  else
  {
    v21 = v33;
    v36 = v15;
    v27 = v17;
    v28 = v14;
    v22 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
    v39 = 0;
    sub_1DF1960A8(&qword_1ECE0D338, MEMORY[0x1E69E6190], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    v23 = v35;
    sub_1DF22B4E0();

    v20 = v37;
    *v37 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    v39 = 1;
    sub_1DF196118(&qword_1ECE0D340, sub_1DF17C390, sub_1DF1961A8, MEMORY[0x1E69E5E58]);
    sub_1DF22B4E0();

    *(v20 + 8) = v40;
    LOBYTE(v40) = 2;
    sub_1DF1FBDA4(&qword_1ECE0CE08, type metadata accessor for LedgerState, &protocol conformance descriptor for LedgerState);
    sub_1DF22B480();
    sub_1DF1FAE54(v22, v20 + v28);
    LOBYTE(v40) = 3;
    v25 = v30;
    sub_1DF22B480();
    (*(v21 + 8))(v8, v23);
    sub_1DF1FAE54(v25, v20 + v27);
    sub_1DF1FBC94(v20, v29);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return sub_1DF1FBC38(v20);
}

uint64_t sub_1DF1FBAC8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *(a2 + 1) = sub_1DF18FD18(v4);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for LedgerState(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v7 = &a2[*(a1 + 28)];

  return v9(v7, 1, 1, v6);
}

unint64_t sub_1DF1FBBE4()
{
  result = qword_1ECE0EBF0;
  if (!qword_1ECE0EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EBF0);
  }

  return result;
}

uint64_t sub_1DF1FBC38(uint64_t a1)
{
  v2 = type metadata accessor for MLHostAnalytics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF1FBC94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHostAnalytics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF1FBCF8(void *a1)
{
  a1[1] = sub_1DF1FBDA4(&qword_1ECE0EC00, type metadata accessor for MLHostAnalytics, &protocol conformance descriptor for MLHostAnalytics);
  a1[2] = sub_1DF1FBDA4(&qword_1ECE0EC08, type metadata accessor for MLHostAnalytics, &protocol conformance descriptor for MLHostAnalytics);
  result = sub_1DF1FBDA4(&qword_1ECE0EC10, type metadata accessor for MLHostAnalytics, &protocol conformance descriptor for MLHostAnalytics);
  a1[3] = result;
  return result;
}

uint64_t sub_1DF1FBDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DF1FBE14(uint64_t a1)
{
  sub_1DF196748();
  if (v1 <= 0x3F)
  {
    sub_1DF1967A8(319);
    if (v2 <= 0x3F)
    {
      sub_1DF1FBEB0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DF1FBEB0(uint64_t a1)
{
  if (!qword_1ECE0D398)
  {
    type metadata accessor for LedgerState(255);
    v1 = sub_1DF22B1A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE0D398);
    }
  }
}

unint64_t sub_1DF1FBF1C()
{
  result = qword_1ECE0EC28;
  if (!qword_1ECE0EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EC28);
  }

  return result;
}

unint64_t sub_1DF1FBF74()
{
  result = qword_1ECE0EC30;
  if (!qword_1ECE0EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EC30);
  }

  return result;
}

unint64_t sub_1DF1FBFCC()
{
  result = qword_1ECE0EC38;
  if (!qword_1ECE0EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EC38);
  }

  return result;
}

uint64_t sub_1DF1FC020(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F436574617473 && a2 == 0xED000070614D746ELL;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF23D960 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61567473726966 && a2 == 0xEF65746174536469 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23D980 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF22B620();

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

uint64_t EnvelopeMessage.init(message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = (*(a3 + 40))(a2, a3);
  a4[1] = v8;
  v10 = type metadata accessor for EnvelopeMessage(0, a2, a3, v9);
  v11 = *(*(a2 - 8) + 32);
  v12 = a4 + *(v10 + 36);

  return v11(v12, a1, a2);
}

uint64_t sub_1DF1FC784@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1DF1FC7B4(uint64_t a1)
{
  v2 = sub_1DF1FC940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1FC7F0(uint64_t a1)
{
  v2 = sub_1DF1FC940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmptyMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EC40, &qword_1DF239E50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1FC940();
  sub_1DF22B740();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DF1FC940()
{
  result = qword_1ECE0EC48;
  if (!qword_1ECE0EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EC48);
  }

  return result;
}

uint64_t sub_1DF1FCA30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EC40, &qword_1DF239E50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1FC940();
  sub_1DF22B740();
  return (*(v3 + 8))(v5, v2);
}

uint64_t EnvelopeMessage.messageType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DF1FCC0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426567617373656DLL && a2 == 0xEB0000000079646FLL)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DF1FCD18(char a1)
{
  sub_1DF22B6C0();
  MEMORY[0x1E12D01A0](a1 & 1);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF1FCD60(char a1)
{
  if (a1)
  {
    return 0x426567617373656DLL;
  }

  else
  {
    return 0x546567617373656DLL;
  }
}

uint64_t sub_1DF1FCDDC(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF1FCCF0(v3, *v1);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF1FCE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1FCC0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1FCE64@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1DF20019C();
  *a2 = result;
  return result;
}

uint64_t sub_1DF1FCE90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DF1FCEE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t EnvelopeMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13[0] = *(a2 + 24);
  v13[1] = v6;
  type metadata accessor for EnvelopeMessage.CodingKeys(255, v6, v13[0], a4);
  swift_getWitnessTable();
  v7 = sub_1DF22B5E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF22B740();
  v15 = 0;
  v11 = v13[3];
  sub_1DF22B580();
  if (!v11)
  {
    v14 = 1;
    sub_1DF22B5C0();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t EnvelopeMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v28 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EnvelopeMessage.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v33 = sub_1DF22B500();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v25 - v11;
  v32 = a3;
  v14 = type metadata accessor for EnvelopeMessage(0, a2, a3, v13);
  v27 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v25 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v34;
  sub_1DF22B730();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v34 = a1;
  v26 = v14;
  v18 = v30;
  v19 = v31;
  v36 = 0;
  v20 = v16;
  *v16 = sub_1DF22B4A0();
  v16[1] = v21;
  v25 = v21;
  v35 = 1;
  sub_1DF22B4E0();
  (*(v18 + 8))(v12, v33);
  v22 = v26;
  (*(v28 + 32))(v16 + *(v26 + 36), v19, a2);
  v23 = v27;
  (*(v27 + 16))(v29, v20, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return (*(v23 + 8))(v20, v22);
}

uint64_t ReceivedMessageHandler.block.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DF1FD4F4@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a2;
  v33 = a1;
  v37 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v35 = a3;
  v17 = type metadata accessor for EnvelopeMessage(0, a3, a4, v16);
  v36 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - v21;
  swift_getWitnessTable();
  sub_1DF22A9A0();
  (*(v36 + 32))(v22, v20, v17);
  v33(&v22[*(v17 + 36)]);
  v23 = v34;
  v24 = *(v34 + 16);
  v24(v13, v15, AssociatedTypeWitness);
  if (swift_dynamicCast())
  {
    (*(v23 + 8))(v15, AssociatedTypeWitness);
    result = (*(v36 + 8))(v22, v17);
    v26 = v37;
    *(v37 + 32) = 0;
    *v26 = 0u;
    v26[1] = 0u;
  }

  else
  {
    v24(v10, v15, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = type metadata accessor for EnvelopeMessage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v28);
    v30 = v37;
    *(v37 + 24) = v29;
    v30[4] = swift_getWitnessTable();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    EnvelopeMessage.init(message:)(v10, AssociatedTypeWitness, AssociatedConformanceWitness, boxed_opaque_existential_1);
    (*(v23 + 8))(v15, AssociatedTypeWitness);
    return (*(v36 + 8))(v22, v17);
  }

  return result;
}

void *sub_1DF1FD9C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *a7 = a6;
  a7[1] = result;
  return result;
}

uint64_t sub_1DF1FDA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v11 = type metadata accessor for EnvelopeMessage(0, a5, a6, v10);
  v6[13] = v11;
  v6[14] = *(v11 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1FDB9C, 0, 0);
}

uint64_t sub_1DF1FDB9C()
{
  swift_getWitnessTable();
  sub_1DF22A9A0();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[4];
  (*(v0[14] + 32))(v1, v0[15], v2);
  v4 = *(v2 + 36);
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1DF1FDEAC;
  v6 = v0[12];

  return v8(v6, v1 + v4);
}

uint64_t sub_1DF1FDEAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF1FDFA8, 0, 0);
}

uint64_t sub_1DF1FDFA8()
{
  v1 = *(v0[9] + 16);
  (v1)(v0[11], v0[12], v0[8]);
  v2 = swift_dynamicCast();
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  if (v2)
  {
    v7 = v0[2];
    (*(v0[9] + 8))(v0[12], v0[8]);
    (*(v5 + 8))(v3, v4);
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  else
  {
    v8 = v0[9];
    v16 = v0[10];
    v17 = v0[13];
    v18 = v0[16];
    v9 = v0[8];
    v10 = v0[2];
    v1();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10[3] = type metadata accessor for EnvelopeMessage(0, v9, AssociatedConformanceWitness, v12);
    v10[4] = swift_getWitnessTable();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    EnvelopeMessage.init(message:)(v16, v9, AssociatedConformanceWitness, boxed_opaque_existential_1);
    (*(v8 + 8))(v6, v9);
    (*(v5 + 8))(v18, v17);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DF1FE1A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DF1F22C0;

  return sub_1DF1FDA24(a1, a2, v9, v8, v6, v7);
}

uint64_t RemoteHandler.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF22A840();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteHandler.init(session:handoffQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RemoteHandler(0);
  v7 = v6[7];
  v8 = MEMORY[0x1E69E7CC0];
  *(a3 + v7) = sub_1DF190558(MEMORY[0x1E69E7CC0]);
  v9 = v6[8];
  *(a3 + v9) = sub_1DF19056C(v8);
  *(a3 + v6[9]) = v8;
  result = sub_1DF22A830();
  *(a3 + v6[5]) = a1;
  *(a3 + v6[6]) = a2;
  return result;
}

uint64_t type metadata accessor for RemoteHandler(uint64_t a1)
{
  result = qword_1ECE0C620;
  if (!qword_1ECE0C620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double RemoteHandler.handleIncomingRequest(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1DF22A9B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EC50, &unk_1DF239E68);
  sub_1DF1FF6CC();
  sub_1DF22A9A0();
  v34 = v7;
  v35 = a2;
  v9 = v37;
  v10 = type metadata accessor for RemoteHandler(0);
  v11 = *(v2 + *(v10 + 28));
  if (*(v11 + 16) && (v12 = sub_1DF175254(v36, v37), (v13 & 1) != 0))
  {
    v14 = v12;

    v15 = *(*(v11 + 56) + 16 * v14);

    v15(a1);
  }

  else
  {
    v17 = *(v3 + *(v10 + 32));
    if (*(v17 + 16) && (v18 = sub_1DF175254(v36, v37), (v19 & 1) != 0))
    {
      v20 = v18;

      v21 = v34;
      v22 = *(v34 + 16);
      v33 = *(*(v17 + 56) + 16 * v20);
      v22(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v33;
      (*(v21 + 32))(v24 + v23, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      swift_retain_n();
      sub_1DF22A980();
    }

    else
    {
      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v25 = sub_1DF22A8C0();
      __swift_project_value_buffer(v25, qword_1ED8E92C0);

      v26 = sub_1DF22A8A0();
      v27 = sub_1DF22B110();

      v28 = v35;
      if (os_log_type_enabled(v26, v27))
      {
        v29 = v36;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v36 = v31;
        *v30 = 136315138;
        v32 = sub_1DF160728(v29, v9, &v36);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_1DF15A000, v26, v27, "No handler found for message type: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x1E12D0B40](v31, -1, -1);
        MEMORY[0x1E12D0B40](v30, -1, -1);
      }

      else
      {
      }

      *(v28 + 32) = 0;
      result = 0.0;
      *v28 = 0u;
      *(v28 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1DF1FE89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF22A9B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_1DF22AFC0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_1DF21DC44(0, 0, v11, &unk_1DF23A440, v14);
}

uint64_t sub_1DF1FEA88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 104) = v8;
  *v8 = v6;
  v8[1] = sub_1DF1FEB8C;

  return v10(v6 + 56, a6);
}

uint64_t sub_1DF1FEB8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF1FEC88, 0, 0);
}

uint64_t sub_1DF1FEC88()
{
  if (*(v0 + 80))
  {
    sub_1DF18A0B8((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1DF22A990();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    sub_1DF16184C(v0 + 56, &qword_1ECE0EE60, &qword_1DF23A448);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RemoteHandler.handleCancellation(error:)(NSObject *a1)
{
  v2 = v1;
  v4 = sub_1DF22A970();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8E7530 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = sub_1DF22A8C0();
    __swift_project_value_buffer(v8, qword_1ED8E92C0);
    v9 = *(v5 + 16);
    v9(v7, a1, v4);
    a1 = sub_1DF22A8A0();
    v10 = sub_1DF22B110();
    if (os_log_type_enabled(a1, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v2;
      v13 = v12;
      *v11 = 138412290;
      sub_1DF1FF794();
      swift_allocError();
      v9(v14, v7, v4);
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v7, v4);
      *(v11 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1DF15A000, a1, v10, "Connection cancelled: %@", v11, 0xCu);
      sub_1DF16184C(v13, &qword_1ECE0C7E8, &qword_1DF230550);
      v17 = v13;
      v2 = v25;
      MEMORY[0x1E12D0B40](v17, -1, -1);
      MEMORY[0x1E12D0B40](v11, -1, -1);
    }

    else
    {

      v18 = *(v5 + 8);
      v5 += 8;
      v18(v7, v4);
    }

    result = type metadata accessor for RemoteHandler(0);
    v20 = *(v2 + *(result + 36));
    v4 = *(v20 + 16);
    if (!v4)
    {
      break;
    }

    v7 = 0;
    v21 = (v20 + 40);
    while (v7 < *(v20 + 16))
    {
      ++v7;
      v22 = *(v21 - 1);
      a1 = *v21;

      v22(v23);

      v21 += 2;
      if (v4 == v7)
      {
        return result;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  return result;
}

uint64_t RemoteHandler.onCancellation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(type metadata accessor for RemoteHandler(0) + 36);
  v7 = *(v2 + v6);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF17499C(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_1DF17499C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1DF1FF7EC;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return result;
}

uint64_t RemoteHandler.handle<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = (*(a5 + 40))(a4, a5);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a2;
  v14[5] = a3;
  v15 = *(type metadata accessor for RemoteHandler(0) + 28);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + v15);
  sub_1DF1A7FC4(sub_1DF1FD998, v14, v11, v13, isUniquelyReferenced_nonNull_native);

  *(v6 + v15) = v18;
  return result;
}

uint64_t RemoteHandler.handleAsync<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = (*(a5 + 40))(a4, a5);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a2;
  v14[5] = a3;
  v15 = *(type metadata accessor for RemoteHandler(0) + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + v15);
  sub_1DF1A7FEC(&unk_1DF239E60, v14, v11, v13, isUniquelyReferenced_nonNull_native);

  *(v6 + v15) = v18;
  return result;
}

uint64_t RemoteHandler.sendNoReply<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for RemoteHandler(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v20[2] = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EnvelopeMessage(0, a2, a3, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v20 - v17);
  v20[1] = v8;
  v20[3] = v4;
  (*(v11 + 16))(v13, a1, a2);
  EnvelopeMessage.init(message:)(v13, a2, a3, v18);
  swift_getWitnessTable();
  sub_1DF22A940();
  return (*(v16 + 8))(v18, v15);
}

unint64_t sub_1DF1FF6CC()
{
  result = qword_1ECE0C588;
  if (!qword_1ECE0C588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0EC50, &unk_1DF239E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C588);
  }

  return result;
}

uint64_t sub_1DF1FF730()
{
  v1 = *(sub_1DF22A9B0() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DF1FE89C(v2, v3, v4);
}

unint64_t sub_1DF1FF794()
{
  result = qword_1ECE0C0E0;
  if (!qword_1ECE0C0E0)
  {
    sub_1DF22A970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C0E0);
  }

  return result;
}

uint64_t sub_1DF1FF814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteHandler(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF1FF878(uint64_t a1)
{
  v2 = type metadata accessor for RemoteHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DF1FF8D4(uint64_t a1)
{
  *(a1 + 8) = sub_1DF1FF904();
  result = sub_1DF1FF958();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF1FF904()
{
  result = qword_1ECE0C690;
  if (!qword_1ECE0C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C690);
  }

  return result;
}

unint64_t sub_1DF1FF958()
{
  result = qword_1ECE0C698;
  if (!qword_1ECE0C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C698);
  }

  return result;
}

uint64_t sub_1DF1FF9D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF1FFA58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DF1FFBDC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_1DF1FFE74(uint64_t a1)
{
  sub_1DF22A840();
  if (v1 <= 0x3F)
  {
    sub_1DF22A960();
    if (v2 <= 0x3F)
    {
      sub_1DF1FFF78();
      if (v3 <= 0x3F)
      {
        sub_1DF1FFFC4(319, &qword_1ECE0C0D8, &type metadata for ReceivedMessageHandler);
        if (v4 <= 0x3F)
        {
          sub_1DF1FFFC4(319, &qword_1ECE0C0D0, &type metadata for ReceivedMessageHandlerAsync);
          if (v5 <= 0x3F)
          {
            sub_1DF20001C(319);
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

unint64_t sub_1DF1FFF78()
{
  result = qword_1ED8E6BF8;
  if (!qword_1ED8E6BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8E6BF8);
  }

  return result;
}

void sub_1DF1FFFC4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DF22ABE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DF20001C(uint64_t a1)
{
  if (!qword_1ECE0C048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0EC58, &qword_1DF23A070);
    v1 = sub_1DF22AF50();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE0C048);
    }
  }
}

unint64_t sub_1DF2000F0()
{
  result = qword_1ECE0EC60;
  if (!qword_1ECE0EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EC60);
  }

  return result;
}

unint64_t sub_1DF200148()
{
  result = qword_1ECE0EC68;
  if (!qword_1ECE0EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EC68);
  }

  return result;
}

uint64_t sub_1DF2001A4(uint64_t a1)
{
  v4 = *(sub_1DF22A9B0() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF1F0740;

  return sub_1DF1FEA88(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *sub_1DF200348()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v107 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v105 = &v97 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v106 = *(v111 - 8);
  v4 = MEMORY[0x1EEE9AC00](v111);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v110 = (&v97 - v7);
  v104 = type metadata accessor for LedgerState(0);
  MEMORY[0x1EEE9AC00](v104);
  v9 = (&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = 0x72476D6F74737543;
  v114 = 0xEB00000000687061;
  v112[0] = &type metadata for CustomTelemetryStates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EEE8, &qword_1DF23A8A0);
  v10 = sub_1DF22ACE0();
  MEMORY[0x1E12CF820](v10);

  v11 = v113;
  v12 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D350, &qword_1DF2300E8);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v13[4] = sub_1DF18FE5C(MEMORY[0x1E69E7CC0]);
  v13[2] = v11;
  v13[3] = v12;
  v103 = v13;
  v15 = sub_1DF18FE5C(v14);
  swift_beginAccess();
  v108 = v13 + 4;
  v13[4] = v15;

  v112[0] = v14;
  sub_1DF160D74(0, 5, 0);
  v16 = 0;
  v17 = v112[0];
  while (1)
  {
    v18 = byte_1F5A46DA8[v16 + 32];
    if (v18 <= 1)
    {
      if (byte_1F5A46DA8[v16 + 32])
      {
        v20 = 0xE400000000000000;
        v19 = 1684107116;
      }

      else
      {
        v20 = 0xE500000000000000;
        v19 = 0x7472617473;
      }
    }

    else
    {
      v19 = 0x64616F6C7075;
      if (v18 == 2)
      {
        v20 = 0xE700000000000000;
        v19 = 0x737365636F7270;
      }

      else if (v18 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE800000000000000;
        v19 = 0x64656873696E6966;
      }
    }

    v21 = v111;
    v113 = v19;
    v114 = v20;
    v22 = sub_1DF22ADC0();
    v24 = v23;
    sub_1DF22A740();
    *v9 = v22;
    v9[1] = v24;
    v25 = v110;
    sub_1DF20A0C4(v9, v110, type metadata accessor for LedgerState);
    *(v25 + *(v21 + 52)) = MEMORY[0x1E69E7CC0];
    v26 = v108;
    swift_beginAccess();
    sub_1DF17A710(v25, v6, &qword_1ECE0CD60, &qword_1DF22FFC0);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = *v26;
    v28 = v115;
    *v26 = 0x8000000000000000;
    v30 = sub_1DF175254(v22, v24);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DF17605C();
      }
    }

    else
    {
      sub_1DF1A5DF0(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_1DF175254(v22, v24);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_100;
      }

      v30 = v35;
    }

    v37 = v115;
    if (v34)
    {
      v38 = v115[7];
      v109 = *(v106 + 72);
      sub_1DF1936EC(v6, v38 + v109 * v30, &qword_1ECE0CD60, &qword_1DF22FFC0);
    }

    else
    {
      v115[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v37[6] + 16 * v30);
      *v39 = v22;
      v39[1] = v24;
      v40 = v37[7];
      v109 = *(v106 + 72);
      sub_1DF17A710(v6, v40 + v109 * v30, &qword_1ECE0CD60, &qword_1DF22FFC0);
      v41 = v37[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_99;
      }

      v37[2] = v43;
    }

    *v108 = v37;
    swift_endAccess();
    sub_1DF20A194(v9, type metadata accessor for LedgerState);
    v112[0] = v17;
    v45 = v17[2];
    v44 = v17[3];
    v46 = v45 + 1;
    v47 = v105;
    if (v45 >= v44 >> 1)
    {
      sub_1DF160D74((v44 > 1), v45 + 1, 1);
      v17 = v112[0];
    }

    ++v16;
    v17[2] = v46;
    if (v16 == 5)
    {

      v48 = 0;
      v110 = (v106 + 56);
      v104 = (v106 + 48);
      v49 = v108;
      while (1)
      {
        v50 = 0;
        v51 = *(&unk_1F5A46DD0 + v48 + 32);
        v106 = v48 + 1;
        do
        {
          if (v51 <= 1)
          {
            if (v51)
            {
              v53 = 0xE400000000000000;
              v52 = 1684107116;
            }

            else
            {
              v53 = 0xE500000000000000;
              v52 = 0x7472617473;
            }
          }

          else if (v51 == 2)
          {
            v53 = 0xE700000000000000;
            v52 = 0x737365636F7270;
          }

          else
          {
            if (v51 == 3)
            {
              v52 = 0x64616F6C7075;
            }

            else
            {
              v52 = 0x64656873696E6966;
            }

            if (v51 == 3)
            {
              v53 = 0xE600000000000000;
            }

            else
            {
              v53 = 0xE800000000000000;
            }
          }

          v54 = byte_1F5A46DF8[v50++ + 32];
          if (v54 == 3)
          {
            v55 = 0x64616F6C7075;
          }

          else
          {
            v55 = 0x64656873696E6966;
          }

          if (v54 == 3)
          {
            v56 = 0xE600000000000000;
          }

          else
          {
            v56 = 0xE800000000000000;
          }

          if (v54 == 2)
          {
            v55 = 0x737365636F7270;
            v56 = 0xE700000000000000;
          }

          v57 = 0x7472617473;
          if (v54)
          {
            v57 = 1684107116;
          }

          v58 = 0xE500000000000000;
          if (v54)
          {
            v58 = 0xE400000000000000;
          }

          if (v54 <= 1)
          {
            v59 = v57;
          }

          else
          {
            v59 = v55;
          }

          if (v54 <= 1)
          {
            v60 = v58;
          }

          else
          {
            v60 = v56;
          }

          if (v52 == v59 && v53 == v60)
          {

            continue;
          }

          v61 = sub_1DF22B620();

          if ((v61 & 1) == 0)
          {
            if (v51 <= 1)
            {
              if (v51)
              {
                v63 = 0xE400000000000000;
                v62 = 1684107116;
              }

              else
              {
                v63 = 0xE500000000000000;
                v62 = 0x7472617473;
              }
            }

            else
            {
              v62 = 0x64616F6C7075;
              if (v51 == 2)
              {
                v63 = 0xE700000000000000;
                v62 = 0x737365636F7270;
              }

              else if (v51 == 3)
              {
                v63 = 0xE600000000000000;
              }

              else
              {
                v63 = 0xE800000000000000;
                v62 = 0x64656873696E6966;
              }
            }

            v113 = v62;
            v114 = v63;
            v64 = sub_1DF22ADC0();
            v66 = v65;
            if (v54 <= 1)
            {
              if (v54)
              {
                v67 = 0xE400000000000000;
                v68 = 1684107116;
              }

              else
              {
                v67 = 0xE500000000000000;
                v68 = 0x7472617473;
              }
            }

            else if (v54 == 2)
            {
              v67 = 0xE700000000000000;
              v68 = 0x737365636F7270;
            }

            else if (v54 == 3)
            {
              v67 = 0xE600000000000000;
              v68 = 0x64616F6C7075;
            }

            else
            {
              v67 = 0xE800000000000000;
              v68 = 0x64656873696E6966;
            }

            v113 = v68;
            v114 = v67;
            v69 = sub_1DF22ADC0();
            v71 = v70;
            v72 = *v49;
            if (!*(*v49 + 16))
            {

LABEL_88:

              (*v110)(v47, 1, 1, v111);
              sub_1DF16184C(v47, &qword_1ECE0CD70, &qword_1DF2300E0);
              continue;
            }

            v73 = v69;

            v74 = sub_1DF175254(v64, v66);
            if ((v75 & 1) == 0)
            {

              goto LABEL_88;
            }

            sub_1DF17A6A8(*(v72 + 56) + v109 * v74, v47, &qword_1ECE0CD60, &qword_1DF22FFC0);

            v76 = *v110;
            (*v110)(v47, 0, 1, v111);
            sub_1DF16184C(v47, &qword_1ECE0CD70, &qword_1DF2300E0);
            v77 = *v49;
            if (!*(*v49 + 16))
            {

LABEL_91:

              v86 = v107;
              v76(v107, 1, 1, v111);
              sub_1DF16184C(v86, &qword_1ECE0CD70, &qword_1DF2300E0);
              continue;
            }

            v78 = sub_1DF175254(v73, v71);
            if ((v79 & 1) == 0)
            {

              goto LABEL_91;
            }

            v80 = v107;
            sub_1DF17A6A8(*(v77 + 56) + v78 * v109, v107, &qword_1ECE0CD60, &qword_1DF22FFC0);

            v81 = v111;
            v76(v80, 0, 1, v111);
            sub_1DF16184C(v80, &qword_1ECE0CD70, &qword_1DF2300E0);
            v82 = sub_1DF1623A4(&v113);
            v83 = sub_1DF193214(v112, v64, v66);
            v85 = v84;
            if ((*v104)(v84, 1, v81))
            {

              (v83)(v112, 0);

              (v82)(&v113, 0);
              v47 = v105;
              v49 = v108;
            }

            else
            {
              v101 = v83;
              v87 = *(v81 + 52);
              v88 = *(v85 + v87);

              v89 = swift_isUniquelyReferenced_nonNull_native();
              v100 = v85;
              *(v85 + v87) = v88;
              v47 = v105;
              v102 = v82;
              v99 = v87;
              if ((v89 & 1) == 0)
              {
                v88 = sub_1DF174730(0, *(v88 + 2) + 1, 1, v88);
                *(v100 + v87) = v88;
              }

              v49 = v108;
              v91 = *(v88 + 2);
              v90 = *(v88 + 3);
              v92 = v91 + 1;
              if (v91 >= v90 >> 1)
              {
                v98 = v91 + 1;
                v94 = sub_1DF174730((v90 > 1), v91 + 1, 1, v88);
                v92 = v98;
                v88 = v94;
                *(v100 + v99) = v94;
              }

              *(v88 + 2) = v92;
              v93 = &v88[32 * v91];
              *(v93 + 4) = v64;
              *(v93 + 5) = v66;
              *(v93 + 6) = v73;
              *(v93 + 7) = v71;
              (v101)(v112, 0);

              (v102)(&v113, 0);
            }
          }
        }

        while (v50 != 5);
        v48 = v106;
        if (v106 == 5)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D358, &unk_1DF2300F0);
          swift_allocObject();
          v95 = sub_1DF196494(v103);

          return v95;
        }
      }
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t CustomRegex.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DF22B420();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DF201070()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF2010E4(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF201138@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DF22B420();

  *a2 = v3 != 0;
  return result;
}

LighthouseBackground::LatencyRegex_optional __swiftcall LatencyRegex.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LatencyRegex.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4E5E5B4E283D3F28;
  v3 = 0x5B2A5D435E5B4428;
  if (v1 != 5)
  {
    v3 = 0x462A5D465E5B4628;
  }

  v4 = 692343336;
  if (v1 != 3)
  {
    v4 = 0x432A5D435E5B4428;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 692277800;
  if (v1 != 1)
  {
    v5 = 692474408;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF201308(uint64_t a1)
{
  sub_1DF22AD20();
}

void sub_1DF201438(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000029294E2A5DLL;
  v4 = 0x4E5E5B4E283D3F28;
  v5 = 0xEC000000295D4643;
  v6 = 0x5B2A5D435E5B4428;
  if (v2 != 5)
  {
    v6 = 0x462A5D465E5B4628;
    v5 = 0xE900000000000029;
  }

  v7 = 692343336;
  v8 = 0xE400000000000000;
  if (v2 != 3)
  {
    v7 = 0x432A5D435E5B4428;
    v8 = 0xE900000000000029;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 692277800;
  if (v2 != 1)
  {
    v9 = 692474408;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

LighthouseBackground::PushRegex_optional __swiftcall PushRegex.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PushRegex.rawValue.getter()
{
  v1 = 0x2947495428;
  if (*v0 != 1)
  {
    v1 = 0x295A53495428;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x29525053495428;
  }
}

uint64_t sub_1DF2015D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x2947495428;
  if (v2 != 1)
  {
    v4 = 0x295A53495428;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x29525053495428;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x2947495428;
  if (*a2 != 1)
  {
    v8 = 0x295A53495428;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x29525053495428;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF2016C8()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF201764(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF2017EC(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF201890(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x2947495428;
  if (v2 != 1)
  {
    v5 = 0x295A53495428;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x29525053495428;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DF2018E8()
{
  result = sub_1DF1927A4(&unk_1F5A47BA0);
  qword_1ECE0EE68 = result;
  return result;
}

double registeredEventPassSet.getter()
{
  if (qword_1ECE0C770 != -1)
  {
    swift_once();
  }

  return result;
}

Swift::String __swiftcall taskEventsToStringSequence(taskEvents:)(Swift::OpaquePointer taskEvents)
{
  v2 = type metadata accessor for LedgerState(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(taskEvents._rawValue + 2);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DF160D10(0, v6, 0);
    v7 = v23;
    v8 = taskEvents._rawValue + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1DF20A0C4(v8, v5, type metadata accessor for LedgerState);

      v10 = sub_1DF22B420();

      if (v10 <= 4)
      {
        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v11 = 0xE100000000000000;
            v12 = 83;
          }

          else
          {
            v11 = 0xE100000000000000;
            if (v10 == 3)
            {
              v12 = 71;
            }

            else
            {
              v12 = 80;
            }
          }

          goto LABEL_27;
        }

        if (v10)
        {
          if (v10 != 1)
          {
LABEL_26:
            v12 = 0;
            v11 = 0xE000000000000000;
            goto LABEL_27;
          }

          v11 = 0xE100000000000000;
          v12 = 73;
        }

        else
        {
          v11 = 0xE100000000000000;
          v12 = 84;
        }
      }

      else
      {
        if (v10 <= 7)
        {
          if (v10 == 5)
          {
            v11 = 0xE100000000000000;
            v12 = 90;
          }

          else
          {
            v11 = 0xE100000000000000;
            if (v10 == 6)
            {
              v12 = 78;
            }

            else
            {
              v12 = 82;
            }
          }

          goto LABEL_27;
        }

        switch(v10)
        {
          case 8:
            v11 = 0xE100000000000000;
            v12 = 68;
            break;
          case 9:
            v11 = 0xE100000000000000;
            v12 = 67;
            break;
          case 10:
            v11 = 0xE100000000000000;
            v12 = 70;
            break;
          default:
            goto LABEL_26;
        }
      }

LABEL_27:
      sub_1DF20A194(v5, type metadata accessor for LedgerState);
      v23 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DF160D10((v13 > 1), v14 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  sub_1DF164BEC(&qword_1ECE0C060, &unk_1ECE0C7A0, &qword_1DF22CB50, MEMORY[0x1E69E6310]);
  v16 = sub_1DF22AC40();
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

Swift::String __swiftcall customEventsToStringSequence(customEvents:)(Swift::OpaquePointer customEvents)
{
  v2 = type metadata accessor for LedgerState(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(customEvents._rawValue + 2);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DF160D10(0, v6, 0);
    v7 = v23;
    v8 = customEvents._rawValue + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1DF20A0C4(v8, v5, type metadata accessor for LedgerState);

      v10 = sub_1DF22B420();

      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 != 1)
          {
LABEL_14:
            v12 = 0;
            v11 = 0xE000000000000000;
            goto LABEL_15;
          }

          v11 = 0xE100000000000000;
          v12 = 76;
        }

        else
        {
          v11 = 0xE100000000000000;
          v12 = 83;
        }
      }

      else
      {
        switch(v10)
        {
          case 2:
            v11 = 0xE100000000000000;
            v12 = 80;
            break;
          case 3:
            v11 = 0xE100000000000000;
            v12 = 85;
            break;
          case 4:
            v11 = 0xE100000000000000;
            v12 = 70;
            break;
          default:
            goto LABEL_14;
        }
      }

LABEL_15:
      sub_1DF20A194(v5, type metadata accessor for LedgerState);
      v23 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DF160D10((v13 > 1), v14 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  sub_1DF164BEC(&qword_1ECE0C060, &unk_1ECE0C7A0, &qword_1DF22CB50, MEMORY[0x1E69E6310]);
  v16 = sub_1DF22AC40();
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

LighthouseBackground::CustomTelemetryStates_optional __swiftcall CustomTelemetryStates.init(raw:)(Swift::String raw)
{
  v2 = v1;
  result.value = CustomTelemetryStates.init(rawValue:)(raw).value;
  *v2 = v4;
  return result;
}

uint64_t TelemetryBucketRange.telemetryStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TelemetryBucketRange(0) + 24);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TelemetryBucketRange.telemetryStartDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TelemetryBucketRange(0) + 24);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TelemetryBucketRange.telemetryEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TelemetryBucketRange(0) + 28);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TelemetryBucketRange.telemetryEndDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TelemetryBucketRange(0) + 28);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void TelemetryBucketRange.init(from:)(double *a1@<X8>, double a2@<D0>)
{
  v4 = sub_1DF22A800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF22A7D0();
  sub_1DF22A730();
  (*(v5 + 8))(v7, v4);
  type metadata accessor for TelemetryBucketRange(0);
  sub_1DF22A720();
  sub_1DF22A730();
  *(a1 + 1) = v8;
  sub_1DF22A760();
  sub_1DF22A730();
  if (v9 >= a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = a2;
  }

  if (a2 != 0.0)
  {
    v9 = v10;
  }

  *a1 = v9;
}

uint64_t TelemetryConfig.contextId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

LighthouseBackground::TelemetryConfig __swiftcall TelemetryConfig.init(bucketInterval:contextId:deviceTelemetry:pushTelemetry:)(LighthouseBackground::BucketInterval bucketInterval, Swift::String contextId, Swift::Bool deviceTelemetry, Swift::Bool pushTelemetry)
{
  *v4 = *bucketInterval;
  *(v4 + 8) = contextId;
  *(v4 + 24) = deviceTelemetry;
  *(v4 + 25) = pushTelemetry;
  result.contextId = contextId;
  result.deviceTelemetry = deviceTelemetry;
  result.bucketInterval = bucketInterval;
  return result;
}

LighthouseBackground::CustomTelemetryStates_optional __swiftcall CustomTelemetryStates.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static CustomTelemetryStates.fromCharacter(char:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (result == 83 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 0;
  }

  else if (v4 == 76 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 1;
  }

  else if (v4 == 80 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 2;
  }

  else if (v4 == 85 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
    if (v4 != 70 || a2 != 0xE100000000000000)
    {
      result = sub_1DF22B620();
      if (result)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }
    }
  }

  *a3 = v6;
  return result;
}

uint64_t CustomTelemetryStates.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0x737365636F7270;
  v4 = 0x64616F6C7075;
  if (v1 != 3)
  {
    v4 = 0x64656873696E6966;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684107116;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF20265C()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF202730(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF2027F0(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF2028CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE700000000000000;
  v6 = 0x737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x64616F6C7075;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107116;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t processTaskTelemetry(telemetryConfig:telemetryRange:allEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  type metadata accessor for TelemetryBucketRange(0);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *(type metadata accessor for DeviceTelemetry(0) - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D4A8, &unk_1DF23A460);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v5 = sub_1DF22A800();
  *(v3 + 152) = v5;
  *(v3 + 160) = *(v5 - 8);
  *(v3 + 168) = swift_task_alloc();
  v6 = swift_task_alloc();
  *(v3 + 232) = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *(v3 + 176) = v6;
  *(v3 + 184) = v7;
  *(v3 + 192) = v8;
  *(v3 + 233) = *(a1 + 24);
  *(v3 + 234) = *(a1 + 25);

  return MEMORY[0x1EEE6DFA0](sub_1DF202BA0, 0, 0);
}

uint64_t sub_1DF202BA0(__n128 a1)
{
  v134 = v1;
  v2 = *(v1 + 32);
  v3 = *v2;
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v118 = (v1 + 16);
  *(v1 + 24) = v4;
  v106 = (v1 + 24);
  v5 = v2[1];
  v6 = v3;
  if (v5 > v3)
  {
    v7 = 0;
    v8 = *(v1 + 160);
    v116 = (v8 + 32);
    v117 = (v8 + 16);
    v125 = (v8 + 8);
    v119 = *(v1 + 104);
    v115 = *(v1 + 80);
    v107 = *(v1 + 56);
    v114 = v1;
    while (!__OFADD__(v7, 1))
    {
      if (sub_1DF22B020())
      {

        v124 = 0.0;
        v131 = 0;
        v126 = 0;
        v129 = 0;
        goto LABEL_36;
      }

      sub_1DF22A720();
      sub_1DF22A760();
      sub_1DF1792F4(&qword_1ECE0C720, MEMORY[0x1E6969548]);
      if ((sub_1DF22AC60() & 1) == 0)
      {
        goto LABEL_44;
      }

      v127 = v4;
      v122 = v7 + 1;
      v120 = v7;
      v14 = *(v1 + 176);
      v16 = *(v1 + 144);
      v15 = *(v1 + 152);
      v18 = *(v1 + 88);
      v17 = *(v1 + 96);
      v19 = *v117;
      (*v117)(v17, *(v1 + 168), v15);
      v19(v17 + *(v115 + 48), v14, v15);
      sub_1DF17A6A8(v17, v18, &qword_1ECE0D4A8, &unk_1DF23A460);
      v20 = *(v115 + 48);
      v21 = *v116;
      (*v116)(v16, v18, v15);
      v22 = *v125;
      (*v125)(v18 + v20, v15);
      sub_1DF17A710(v17, v18, &qword_1ECE0D4A8, &unk_1DF23A460);
      v21(v16 + *(v119 + 36), v18 + *(v115 + 48), v15);
      v121 = v22;
      v22(v18, v15);
      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v23 = *(v114 + 136);
      v24 = *(v114 + 144);
      v25 = *(v114 + 128);
      v26 = sub_1DF22A8C0();
      __swift_project_value_buffer(v26, qword_1ED8E92C0);
      sub_1DF17A6A8(v24, v23, &qword_1ECE0EF40, &qword_1DF23AAB0);
      sub_1DF17A6A8(v24, v25, &qword_1ECE0EF40, &qword_1DF23AAB0);
      v27 = sub_1DF22A8A0();
      v28 = sub_1DF22B0F0();
      v1 = v114;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = *(v114 + 136);
        v109 = *(v114 + 128);
        v30 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v133[0] = v111;
        *v30 = 136315394;
        sub_1DF1792F4(&qword_1ECE0EE70, MEMORY[0x1E6969570]);
        v31 = sub_1DF22B600();
        v33 = v32;
        sub_1DF16184C(v29, &qword_1ECE0EF40, &qword_1DF23AAB0);
        v34 = sub_1DF160728(v31, v33, v133);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        v35 = sub_1DF22B600();
        v37 = v36;
        sub_1DF16184C(v109, &qword_1ECE0EF40, &qword_1DF23AAB0);
        v38 = sub_1DF160728(v35, v37, v133);

        *(v30 + 14) = v38;
        _os_log_impl(&dword_1DF15A000, v27, v28, "Processing task telemetry for bucket from %s to %s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D0B40](v111, -1, -1);
        MEMORY[0x1E12D0B40](v30, -1, -1);
      }

      else
      {
        v39 = *(v114 + 128);
        v40 = *(v114 + 136);

        sub_1DF16184C(v39, &qword_1ECE0EF40, &qword_1DF23AAB0);
        sub_1DF16184C(v40, &qword_1ECE0EF40, &qword_1DF23AAB0);
      }

      v41 = *(v114 + 184);
      v42 = *(v114 + 192);
      v43 = *(v114 + 232);
      v44 = *(v114 + 144);
      v45 = *(v114 + 40);
      v46 = swift_task_alloc();
      *(v46 + 16) = v44;

      v47 = sub_1DF1A0DE8(sub_1DF209460, v46, v45);

      LOBYTE(v133[0]) = v43;
      v48 = processEvents(bucketEvents:bucketRange:contextId:bucketInterval:)(v47, v44, v41, v42, v133);
      v50 = v49;

      v51 = sub_1DF22A8A0();
      v52 = sub_1DF22B100();
      if (os_log_type_enabled(v51, v52))
      {
        v123 = v52;
        v112 = v48;
        v53 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v132 = v110;
        *v53 = 134218242;
        *(v53 + 4) = *(v50 + 16);

        *(v53 + 12) = 2080;
        v54 = *(v50 + 16);
        if (v54)
        {
          v55 = sub_1DF1751D0(*(v50 + 16), 0);
          v56 = sub_1DF17A7EC();
          v57 = v133[0];
          v108 = v56;
          swift_bridgeObjectRetain_n();
          sub_1DF178EDC(v57);
          if (v108 != v54)
          {
            goto LABEL_45;
          }
        }

        else
        {

          v55 = MEMORY[0x1E69E7CC0];
        }

        v133[0] = v55;
        sub_1DF209480(v133);

        v58 = MEMORY[0x1E12CF970](v133[0], MEMORY[0x1E69E6158]);
        v60 = v59;

        v61 = sub_1DF160728(v58, v60, &v132);

        *(v53 + 14) = v61;
        _os_log_impl(&dword_1DF15A000, v51, v123, "Processed %ld tasks in bucket. Task names: %s", v53, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v110);
        MEMORY[0x1E12D0B40](v110, -1, -1);
        MEMORY[0x1E12D0B40](v53, -1, -1);

        v4 = v127;
        v48 = v112;
      }

      else
      {

        v4 = v127;
      }

      v62 = *(v114 + 233);
      sub_1DF1743C8(v48);
      sub_1DF22A730();
      v6 = v63;
      if (v62 == 1)
      {
        v64 = *(v114 + 144);
        v65 = *(v114 + 112);
        sub_1DF17A6A8(v64, *(v114 + 120), &qword_1ECE0EF40, &qword_1DF23AAB0);
        sub_1DF17A6A8(v64, v65, &qword_1ECE0EF40, &qword_1DF23AAB0);
        v66 = sub_1DF22A8A0();
        v67 = sub_1DF22B0F0();
        if (os_log_type_enabled(v66, v67))
        {
          v130 = v67;
          v68 = *(v114 + 120);
          v113 = *(v114 + 112);
          v69 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v133[0] = v128;
          *v69 = 136315394;
          sub_1DF1792F4(&qword_1ECE0EE70, MEMORY[0x1E6969570]);
          v70 = v50;
          v71 = sub_1DF22B600();
          v73 = v72;
          sub_1DF16184C(v68, &qword_1ECE0EF40, &qword_1DF23AAB0);
          v74 = v71;
          v50 = v70;
          v75 = sub_1DF160728(v74, v73, v133);

          *(v69 + 4) = v75;
          *(v69 + 12) = 2080;
          v76 = sub_1DF22B600();
          v78 = v77;
          sub_1DF16184C(v113, &qword_1ECE0EF40, &qword_1DF23AAB0);
          v79 = sub_1DF160728(v76, v78, v133);

          *(v69 + 14) = v79;
          _os_log_impl(&dword_1DF15A000, v66, v130, "Processing device telemetry for bucket from %s to %s", v69, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12D0B40](v128, -1, -1);
          MEMORY[0x1E12D0B40](v69, -1, -1);
        }

        else
        {
          v80 = *(v114 + 112);
          v81 = *(v114 + 120);

          sub_1DF16184C(v80, &qword_1ECE0EF40, &qword_1DF23AAB0);
          sub_1DF16184C(v81, &qword_1ECE0EF40, &qword_1DF23AAB0);
        }

        v82 = *(v114 + 64);
        v83 = *(v114 + 72);
        processAnalytics(taskAnalyticsMap:bucketRange:contextId:)(v50, *(v114 + 144), *(v114 + 184), *(v114 + 192), v83);

        sub_1DF20A0C4(v83, v82, type metadata accessor for DeviceTelemetry);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1DF174C5C(0, v4[2] + 1, 1, v4);
        }

        v85 = v4[2];
        v84 = v4[3];
        if (v85 >= v84 >> 1)
        {
          v86 = sub_1DF174C5C((v84 > 1), v85 + 1, 1, v4);
        }

        else
        {
          v86 = v4;
        }

        v88 = *(v114 + 168);
        v87 = *(v114 + 176);
        v89 = *(v114 + 152);
        v90 = *(v114 + 64);
        sub_1DF20A194(*(v114 + 72), type metadata accessor for DeviceTelemetry);
        v121(v88, v89);
        v121(v87, v89);
        v4 = v86;
        v86[2] = v85 + 1;
        sub_1DF20A12C(v90, v86 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v85, type metadata accessor for DeviceTelemetry);
        v12 = v122;
      }

      else
      {
        v9 = *(v114 + 168);
        v10 = *(v114 + 176);
        v11 = *(v114 + 152);

        v121(v9, v11);
        v121(v10, v11);
        v12 = v122;
      }

      v13 = v3 + v12 * 86400.0;
      sub_1DF16184C(*(v114 + 144), &qword_1ECE0EF40, &qword_1DF23AAB0);
      v7 = v120 + 1;
      if (v5 <= v13)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_30:
  *(v1 + 208) = v4;
  *(v1 + 200) = v6;
  if (*(v1 + 234) == 1)
  {
    if (qword_1ED8E7530 == -1)
    {
LABEL_32:
      v91 = *(v1 + 48);
      v92 = *(v1 + 32);
      v93 = sub_1DF22A8C0();
      __swift_project_value_buffer(v93, qword_1ED8E92C0);
      sub_1DF20A0C4(v92, v91, type metadata accessor for TelemetryBucketRange);
      v94 = sub_1DF22A8A0();
      v95 = sub_1DF22B0F0();
      v96 = os_log_type_enabled(v94, v95);
      v97 = *(v1 + 48);
      if (v96)
      {
        v98 = swift_slowAlloc();
        *v98 = 134217984;
        v99 = *(v97 + 8);
        sub_1DF20A194(v97, type metadata accessor for TelemetryBucketRange);
        *(v98 + 4) = v99;
        _os_log_impl(&dword_1DF15A000, v94, v95, "Processing push telemetry with cutoff: %f", v98, 0xCu);
        MEMORY[0x1E12D0B40](v98, -1, -1);
      }

      else
      {

        sub_1DF20A194(v97, type metadata accessor for TelemetryBucketRange);
      }

      v102 = swift_task_alloc();
      *(v1 + 216) = v102;
      *v102 = v1;
      v102[1] = sub_1DF2039E8;
      v104 = *(v1 + 184);
      v103 = *(v1 + 192);
      v105 = *(v1 + 40);

      return processPushTelemetry(contextId:cutoff:allEvents:)(v104, v103, v105, v3);
    }

LABEL_46:
    swift_once();
    goto LABEL_32;
  }

  v131 = *v118;
  v126 = *v106;
  v129 = v4;
  v124 = v6;
LABEL_36:

  v100 = *(v1 + 8);

  return v100(*&v124, v131, v129, v126);
}

uint64_t sub_1DF2039E8(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF203AE8, 0, 0);
}

uint64_t sub_1DF203AE8()
{
  v1 = v0[28];
  if (v1)
  {
    sub_1DF174518(v1);
    v6 = v0[25];
    v7 = v0[26];
    v4 = v0[3];
    v5 = v0[2];
  }

  else
  {

    v5 = 0;
    v6 = 0;
    v7 = 0;
    v4 = 0;
  }

  v2 = v0[1];

  return v2(v6, v5, v7, v4);
}

uint64_t sub_1DF203C2C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TaskStatusEvent(0);
  sub_1DF22A800();
  sub_1DF1792F4(&qword_1ECE0C720, MEMORY[0x1E6969548]);
  if (sub_1DF22AC50())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  if (sub_1DF22AC50())
  {
    return 0;
  }

  if (qword_1ECE0C770 != -1)
  {
    swift_once();
  }

  return sub_1DF1E6A4C(*(a1 + *(v3 + 28)), qword_1ECE0EE68) & 1;
}

unint64_t *processEvents(bucketEvents:bucketRange:contextId:bucketInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v173 = a4;
  v172 = a3;
  v181 = a2;
  v198 = sub_1DF22A800();
  v7 = *(v198 - 8);
  v8 = MEMORY[0x1EEE9AC00](v198);
  v161 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v186 = &v157 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  MEMORY[0x1EEE9AC00](v157);
  v187 = &v157 - v11;
  v171 = type metadata accessor for TaskTelemetry(0);
  v170 = *(v171 - 8);
  v12 = MEMORY[0x1EEE9AC00](v171);
  v185 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v184 = (&v157 - v14);
  v178 = type metadata accessor for MLHostAnalytics(0);
  v15 = MEMORY[0x1EEE9AC00](v178);
  v177 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v190 = (&v157 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EE78, &qword_1DF23A478);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v183 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v180 = &v157 - v21;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v159 = *(v179 - 8);
  v22 = MEMORY[0x1EEE9AC00](v179);
  v176 = (&v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v175 = &v157 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v174 = &v157 - v26;
  v199 = type metadata accessor for LedgerState(0);
  v197 = *(v199 - 8);
  v27 = MEMORY[0x1EEE9AC00](v199);
  v160 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v157 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v200 = (&v157 - v32);
  v33 = type metadata accessor for TaskStatusEvent(0);
  v34 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = *a5;
  Task = getTaskGraph()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D4B8, &qword_1DF230900);
  swift_allocObject();
  v182 = sub_1DF196C80(Task);

  v38 = MEMORY[0x1E69E7CC0];
  v189 = sub_1DF190694(MEMORY[0x1E69E7CC0]);
  v202 = sub_1DF190160(v38);
  v188 = sub_1DF190894(v38);
  v39 = *(a1 + 16);
  if (v39)
  {
    v201 = 0;
    v40 = v33[5];
    v195 = &v36[v33[6]];
    v196 = v40;
    v41 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v194 = v33[7];
    v191 = *(v34 + 72);
    v168 = 0x80000001DF23D040;
    v167 = 0x80000001DF23D020;
    v166 = 0x80000001DF23D000;
    v165 = 0x80000001DF23CFE0;
    v193 = v7 + 2;
    v192 = v7;
    while (1)
    {
      sub_1DF20A0C4(v41, v36, type metadata accessor for TaskStatusEvent);
      v42 = v36[v194];
      if (v42 <= 4)
      {
        if (v36[v194] <= 1u)
        {
          if (!v36[v194])
          {
            v43 = 0x616572436B736154;
            goto LABEL_17;
          }

          v43 = 0x656365526B736154;
          v44 = 0xEC00000064657669;
        }

        else if (v42 == 2)
        {
          v43 = 0xD00000000000001ALL;
          v44 = v165;
        }

        else
        {
          v43 = 0xD000000000000014;
          if (v42 == 3)
          {
            v44 = v166;
          }

          else
          {
            v44 = v167;
          }
        }
      }

      else if (v36[v194] > 7u)
      {
        if (v42 == 8)
        {
          v44 = 0xE800000000000000;
          v43 = 0x6465727265666544;
        }

        else if (v42 == 9)
        {
          v43 = 0x6574656C706D6F43;
          v44 = 0xE900000000000064;
        }

        else
        {
          v44 = 0xE600000000000000;
          v43 = 0x64656C696146;
        }
      }

      else if (v42 == 5)
      {
        v43 = 0xD00000000000001BLL;
        v44 = v168;
      }

      else
      {
        if (v42 == 6)
        {
          v43 = 0x7261745320746F4ELL;
LABEL_17:
          v44 = 0xEB00000000646574;
          goto LABEL_25;
        }

        v44 = 0xE700000000000000;
        v43 = 0x676E696E6E7552;
      }

LABEL_25:
      v45 = *v195;
      v46 = v195[1];
      v47 = v200;
      (*v193)(v200 + *(v199 + 20), &v36[v196], v198);

      sub_1DF20A194(v36, type metadata accessor for TaskStatusEvent);
      sub_1DF15EAC4(v201, 0);
      *v47 = v43;
      v47[1] = v44;
      v48 = v202;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v204 = v48;
      v51 = sub_1DF175254(v45, v46);
      v52 = v48[2];
      v53 = (v50 & 1) == 0;
      v54 = v52 + v53;
      if (__OFADD__(v52, v53))
      {
        goto LABEL_105;
      }

      v55 = v50;
      if (v48[3] >= v54)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v50 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1DF1761EC();
          v48 = v204;
          if ((v55 & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_1DF1A60B8(v54, isUniquelyReferenced_nonNull_native);
        v56 = v204;
        v57 = sub_1DF175254(v45, v46);
        if ((v55 & 1) != (v58 & 1))
        {
          goto LABEL_108;
        }

        v51 = v57;
        v48 = v56;
        if ((v55 & 1) == 0)
        {
LABEL_29:
          v48[(v51 >> 6) + 8] |= 1 << v51;
          v59 = (v48[6] + 16 * v51);
          *v59 = v45;
          v59[1] = v46;
          *(v48[7] + 8 * v51) = MEMORY[0x1E69E7CC0];
          v60 = v48[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_106;
          }

          v48[2] = v62;
          goto LABEL_34;
        }
      }

LABEL_34:
      v202 = v48;
      v63 = v48[7];
      v64 = *(v63 + 8 * v51);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *(v63 + 8 * v51) = v64;
      v7 = v192;
      if ((v65 & 1) == 0)
      {
        v64 = sub_1DF17483C(0, v64[2] + 1, 1, v64);
        *(v63 + 8 * v51) = v64;
      }

      v67 = v64[2];
      v66 = v64[3];
      if (v67 >= v66 >> 1)
      {
        v64 = sub_1DF17483C((v66 > 1), v67 + 1, 1, v64);
        *(v63 + 8 * v51) = v64;
      }

      v64[2] = v67 + 1;
      sub_1DF20A12C(v200, v64 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v67, type metadata accessor for LedgerState);
      v41 += v191;
      v201 = sub_1DF20A650;
      if (!--v39)
      {
        goto LABEL_43;
      }
    }
  }

  v201 = 0;
LABEL_43:
  v68 = v202 + 64;
  v69 = 1 << *(v202 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v202 + 64);
  v72 = qword_1ECE0F348;
  v191 = *(*v182 + 112);
  swift_beginAccess();
  v168 = v72;
  swift_beginAccess();
  v73 = 0;
  v74 = (v69 + 63) >> 6;
  v167 = (v159 + 56);
  v166 = (v159 + 48);
  v158 = (v197 + 56);
  v165 = (v197 + 48);
  v162 = (v7 + 2);
  v200 = MEMORY[0x1E69E7CC0];
  v192 = v7 + 4;
  v75 = v183;
  v76 = v180;
  v77 = v179;
  v164 = v68;
  v163 = v74;
  while (v71)
  {
    v78 = v202;
LABEL_53:
    v80 = __clz(__rbit64(v71)) | (v73 << 6);
    v81 = *(v78 + 56);
    v82 = (*(v78 + 48) + 16 * v80);
    v84 = *v82;
    v83 = v82[1];
    v85._rawValue = *(v81 + 8 * v80);
    v86 = *(v189 + 16);
    v195 = v83;
    v196 = v84;
    if (v86)
    {
      v87 = v189;
      v88 = v83;

      v89 = sub_1DF175254(v84, v88);
      if (v90)
      {
        v91 = v159;
        sub_1DF17A6A8(*(v87 + 56) + *(v159 + 72) * v89, v76, &qword_1ECE0CCF8, &qword_1DF22FF80);
        (*(v91 + 56))(v76, 0, 1, v77);
      }

      else
      {
        (*v167)(v76, 1, 1, v77);
      }

      v75 = v183;
    }

    else
    {
      (*v167)(v76, 1, 1, v77);
    }

    sub_1DF17A710(v76, v75, &qword_1ECE0EE78, &qword_1DF23A478);
    if ((*v166)(v75, 1, v77) == 1)
    {
      v92 = v174;
      (*v158)(v174, 1, 1, v199);
      sub_1DF16184C(v75, &qword_1ECE0EE78, &qword_1DF23A478);
    }

    else
    {
      v92 = v174;
      sub_1DF17A710(v75, v174, &qword_1ECE0CCF8, &qword_1DF22FF80);
    }

    v93 = v182;
    sub_1DF1A42BC(v92);
    sub_1DF16184C(v92, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v94 = *(v85._rawValue + 2);
    if (v94)
    {
      v95 = v85._rawValue + ((*(v197 + 80) + 32) & ~*(v197 + 80));
      v96 = *(v197 + 72);
      v97 = *(v85._rawValue + 2);
      do
      {
        sub_1DF20A0C4(v95, v31, type metadata accessor for LedgerState);
        sub_1DF1A4C38(v31);
        sub_1DF20A194(v31, type metadata accessor for LedgerState);
        v95 += v96;
        --v97;
      }

      while (v97);
    }

    v194 = v94;
    v98 = v190;
    sub_1DF20A0C4(&v93[v191], v190, type metadata accessor for MLHostAnalytics);
    v99 = v175;
    sub_1DF17A6A8(&v93[v168], v175, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v100 = v189;
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v203 = v100;
    v102 = v99;
    v103 = v195;
    v104 = v196;
    sub_1DF1A8338(v102, v196, v195, v101);
    v189 = v203;
    v105 = v98;
    v106 = v177;
    sub_1DF20A0C4(v105, v177, type metadata accessor for MLHostAnalytics);
    v107 = v188;
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v203 = v107;
    sub_1DF1A81CC(v106, v104, v103, v108);
    v188 = v203;
    v109 = taskEventsToStringSequence(taskEvents:)(v85);
    v110._countAndFlagsBits = 692277800;
    v110._object = 0xE400000000000000;
    v111 = getRangeFromRegex(regex:stringRepresentation:)(v110, v109);
    v112 = -1.0;
    v113 = -1.0;
    if (v111)
    {
      v113 = getLatencyFromRange(matchIndices:events:)(v111, v85);
    }

    v114._countAndFlagsBits = 0x4E5E5B4E283D3F28;
    v114._object = 0xED000029294E2A5DLL;
    v115 = getRangeFromRegex(regex:stringRepresentation:)(v114, v109);
    if (v115)
    {
      v112 = getLatencyFromRange(matchIndices:events:)(v115, v85);
    }

    v116._countAndFlagsBits = 692277800;
    v116._object = 0xE400000000000000;
    v117 = getRangeFromRegex(regex:stringRepresentation:)(v116, v109);
    v118 = -1.0;
    v119 = -1.0;
    v120 = v194;
    if (v117)
    {
      v119 = getLatencyFromRange(matchIndices:events:)(v117, v85);
    }

    v121._countAndFlagsBits = 692474408;
    v121._object = 0xE400000000000000;
    v122 = getRangeFromRegex(regex:stringRepresentation:)(v121, v109);
    if (v122)
    {
      v118 = getLatencyFromRange(matchIndices:events:)(v122, v85);
    }

    v123._countAndFlagsBits = 692343336;
    v123._object = 0xE400000000000000;
    v124 = getRangeFromRegex(regex:stringRepresentation:)(v123, v109);
    v125 = -1.0;
    v126 = -1.0;
    if (v124)
    {
      v126 = getLatencyFromRange(matchIndices:events:)(v124, v85);
    }

    v127._object = 0xE900000000000029;
    v127._countAndFlagsBits = 0x432A5D435E5B4428;
    v128 = getRangeFromRegex(regex:stringRepresentation:)(v127, v109);

    if (v128)
    {
      v125 = getLatencyFromRange(matchIndices:events:)(v128, v85);
    }

    sub_1DF17A6A8(v181, v187, &qword_1ECE0EF40, &qword_1DF23AAB0);
    v129 = v176;
    sub_1DF17A6A8(v190 + *(v178 + 28), v176, &qword_1ECE0CCF8, &qword_1DF22FF80);
    if ((*v165)(v129, 1, v199) == 1)
    {
      sub_1DF16184C(v129, &qword_1ECE0CCF8, &qword_1DF22FF80);
      v130 = 0xE300000000000000;
      v131 = 4271950;
    }

    else
    {
      v131 = *v129;
      v130 = v129[1];

      sub_1DF20A194(v129, type metadata accessor for LedgerState);
    }

    v193 = v130;
    if (v120)
    {
      if (v120 > *(v85._rawValue + 2))
      {
        goto LABEL_107;
      }

      v132 = v160;
      sub_1DF20A0C4(v85._rawValue + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * (v120 - 1), v160, type metadata accessor for LedgerState);

      v133 = v198;
      v134 = v161;
      (*v162)(v161, v132 + *(v199 + 20), v198);
      sub_1DF20A194(v132, type metadata accessor for LedgerState);
      (*v192)(v186, v134, v133);
    }

    else
    {

      (*v162)(v186, v181 + *(v157 + 36), v198);
    }

    v135 = *v190;
    if (*(*v190 + 16))
    {
      v136 = sub_1DF175254(0x6574656C706D6F43, 0xE900000000000064);
      if (v137)
      {
        v138 = *(*(v135 + 56) + 8 * v136);
        if (*(v135 + 16))
        {
          goto LABEL_87;
        }
      }

      else
      {
        v138 = 0;
        if (*(v135 + 16))
        {
LABEL_87:
          v139 = sub_1DF175254(0x64656C696146, 0xE600000000000000);
          if (v140)
          {
            v141 = *(*(v135 + 56) + 8 * v139);
            if (!*(v135 + 16))
            {
              goto LABEL_96;
            }
          }

          else
          {
            v141 = 0;
            if (!*(v135 + 16))
            {
LABEL_96:
              v142 = v131;
              goto LABEL_97;
            }
          }

          v143 = sub_1DF175254(0x6465727265666544, 0xE800000000000000);
          if (v144)
          {
            v142 = v131;
            v145 = *(*(v135 + 56) + 8 * v143);
            goto LABEL_98;
          }

          goto LABEL_96;
        }
      }

      v142 = v131;
      v141 = 0;
    }

    else
    {
      v142 = v131;
      v141 = 0;
      v138 = 0;
    }

LABEL_97:
    v145 = 0;
LABEL_98:
    v146 = v184;
    v147 = v173;
    *v184 = v172;
    v146[1] = v147;
    v148 = v171;
    sub_1DF17A710(v187, v146 + *(v171 + 20), &qword_1ECE0EF40, &qword_1DF23AAB0);
    v149 = (v146 + v148[7]);
    v150 = v195;
    *v149 = v196;
    v149[1] = v150;
    v151 = (v146 + v148[8]);
    v152 = v193;
    *v151 = v142;
    v151[1] = v152;
    (*v192)(v146 + v148[9], v186, v198);
    *(v146 + v148[10]) = v138;
    *(v146 + v148[11]) = v141;
    *(v146 + v148[12]) = v145;
    *(v146 + v148[13]) = v113;
    *(v146 + v148[14]) = v112;
    *(v146 + v148[15]) = v119;
    *(v146 + v148[16]) = v118;
    *(v146 + v148[17]) = v126;
    *(v146 + v148[6]) = v169;
    *(v146 + v148[18]) = v125;
    sub_1DF20A0C4(v146, v185, type metadata accessor for TaskTelemetry);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v200 = sub_1DF174AE4(0, v200[2] + 1, 1, v200);
    }

    v75 = v183;
    v76 = v180;
    v77 = v179;
    v68 = v164;
    v154 = v200[2];
    v153 = v200[3];
    if (v154 >= v153 >> 1)
    {
      v200 = sub_1DF174AE4((v153 > 1), v154 + 1, 1, v200);
    }

    v71 &= v71 - 1;
    sub_1DF20A194(v184, type metadata accessor for TaskTelemetry);
    v155 = v200;
    v200[2] = v154 + 1;
    sub_1DF20A12C(v185, v155 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v154, type metadata accessor for TaskTelemetry);
    sub_1DF20A194(v190, type metadata accessor for MLHostAnalytics);
    v74 = v163;
  }

  v78 = v202;
  while (1)
  {
    v79 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v79 >= v74)
    {

      sub_1DF15EAC4(v201, 0);
      return v200;
    }

    v71 = *(v68 + 8 * v79);
    ++v73;
    if (v71)
    {
      v73 = v79;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

void processAnalytics(taskAnalyticsMap:bucketRange:contextId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v71 = a5;
  v72 = a4;
  v69 = a2;
  v70 = a3;
  v6 = type metadata accessor for MLHostAnalytics(0);
  v74 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v67 - v15;
  v68 = *(a1 + 16);
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v22;
LABEL_8:
      sub_1DF20A0C4(*(a1 + 56) + *(v74 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v16, type metadata accessor for MLHostAnalytics);
      v25 = *v16;
      v26 = *(*v16 + 16);
      if (v26)
      {
        v27 = sub_1DF175254(0x676E696E6E7552, 0xE700000000000000);
        v26 = (v28 & 1) != 0 && *(*(v25 + 56) + 8 * v27) > 0;
      }

      v29 = __OFADD__(v23, v26);
      v23 += v26;
      if (v29)
      {
        break;
      }

      v20 &= v20 - 1;
      sub_1DF20A194(v16, type metadata accessor for MLHostAnalytics);
      v22 = v24;
      if (!v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      if (v24 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v24);
      ++v22;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    v30 = 1 << *(a1 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(a1 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    for (i = 0; v32; v34 = v36)
    {
      v36 = v34;
LABEL_22:
      sub_1DF20A0C4(*(a1 + 56) + *(v74 + 72) * (__clz(__rbit64(v32)) | (v36 << 6)), v14, type metadata accessor for MLHostAnalytics);
      v37 = *v14;
      v38 = *(*v14 + 16);
      if (v38)
      {
        v39 = sub_1DF175254(0x6465727265666544, 0xE800000000000000);
        v38 = (v40 & 1) != 0 && *(*(v37 + 56) + 8 * v39) > 0;
      }

      v29 = __OFADD__(i, v38);
      i += v38;
      if (v29)
      {
        goto LABEL_63;
      }

      v32 &= v32 - 1;
      sub_1DF20A194(v14, type metadata accessor for MLHostAnalytics);
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v33)
      {

        v41 = 1 << *(a1 + 32);
        v42 = -1;
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        v43 = v42 & *(a1 + 64);
        v44 = (v41 + 63) >> 6;

        v45 = 0;
        for (j = 0; v43; v45 = v47)
        {
          v47 = v45;
LABEL_36:
          sub_1DF20A0C4(*(a1 + 56) + *(v74 + 72) * (__clz(__rbit64(v43)) | (v47 << 6)), v11, type metadata accessor for MLHostAnalytics);
          v48 = *v11;
          v49 = *(*v11 + 16);
          if (v49)
          {
            v50 = sub_1DF175254(0x64656C696146, 0xE600000000000000);
            v49 = (v51 & 1) != 0 && *(*(v48 + 56) + 8 * v50) > 0;
          }

          v29 = __OFADD__(j, v49);
          j += v49;
          if (v29)
          {
            goto LABEL_64;
          }

          v43 &= v43 - 1;
          sub_1DF20A194(v11, type metadata accessor for MLHostAnalytics);
        }

        while (1)
        {
          v47 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_60;
          }

          if (v47 >= v44)
          {

            v52 = 1 << *(a1 + 32);
            v53 = -1;
            if (v52 < 64)
            {
              v53 = ~(-1 << v52);
            }

            v54 = v53 & *(a1 + 64);
            v55 = (v52 + 63) >> 6;

            v56 = 0;
            for (k = 0; v54; v56 = v58)
            {
              v58 = v56;
LABEL_50:
              v59 = v73;
              sub_1DF20A0C4(*(a1 + 56) + *(v74 + 72) * (__clz(__rbit64(v54)) | (v58 << 6)), v73, type metadata accessor for MLHostAnalytics);
              v60 = *v59;
              v61 = *(v60 + 16);
              if (v61)
              {
                v62 = sub_1DF175254(0x6574656C706D6F43, 0xE900000000000064);
                v61 = (v63 & 1) != 0 && *(*(v60 + 56) + 8 * v62) > 0;
              }

              v29 = __OFADD__(k, v61);
              k += v61;
              if (v29)
              {
                goto LABEL_65;
              }

              v54 &= v54 - 1;
              sub_1DF20A194(v73, type metadata accessor for MLHostAnalytics);
            }

            while (1)
            {
              v58 = v56 + 1;
              if (__OFADD__(v56, 1))
              {
                goto LABEL_61;
              }

              if (v58 >= v55)
              {

                v64 = type metadata accessor for DeviceTelemetry(0);
                v65 = v71;
                sub_1DF17A6A8(v69, v71 + v64[5], &qword_1ECE0EF40, &qword_1DF23AAB0);
                v66 = v72;
                *v65 = v70;
                v65[1] = v66;
                *(v65 + v64[6]) = v68;
                *(v65 + v64[7]) = v23;
                *(v65 + v64[8]) = i;
                *(v65 + v64[9]) = j;
                *(v65 + v64[10]) = k;

                return;
              }

              v54 = *(v17 + 8 * v58);
              ++v56;
              if (v54)
              {
                goto LABEL_50;
              }
            }
          }

          v43 = *(v17 + 8 * v47);
          ++v45;
          if (v43)
          {
            goto LABEL_36;
          }
        }
      }

      v32 = *(v17 + 8 * v36);
      ++v34;
      if (v32)
      {
        goto LABEL_22;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t processPushTelemetry(contextId:cutoff:allEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  *(v4 + 48) = swift_task_alloc();
  v5 = type metadata accessor for TaskStatusEvent(0);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF205AA4, 0, 0);
}

uint64_t sub_1DF205AA4()
{
  v101 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  countAndFlagsBits = MEMORY[0x1E69E7CC0];
  v85 = v2;
  if (v2)
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v4 + 72);
    v89 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v91 = v5;
    v7 = v1 + v89;
    do
    {
      v8 = *(v0 + 104);
      v9 = *(v0 + 48);
      sub_1DF20A0C4(v7, v8, type metadata accessor for TaskStatusEvent);
      sub_1DF17A6A8(v8 + *(v5 + 32), v9, &qword_1ECE0CF50, &unk_1DF23A480);
      v10 = type metadata accessor for PushMetadata(0);
      LODWORD(v8) = (*(*(v10 - 8) + 48))(v9, 1, v10);
      sub_1DF16184C(v9, &qword_1ECE0CF50, &unk_1DF23A480);
      v11 = *(v0 + 104);
      if (v8 == 1)
      {
        sub_1DF20A194(v11, type metadata accessor for TaskStatusEvent);
      }

      else
      {
        sub_1DF20A12C(v11, *(v0 + 96), type metadata accessor for TaskStatusEvent);
        v100.value.contextId._countAndFlagsBits = countAndFlagsBits;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DF160D94(0, *(countAndFlagsBits + 16) + 1, 1);
          countAndFlagsBits = v100.value.contextId._countAndFlagsBits;
        }

        v13 = *(countAndFlagsBits + 16);
        v12 = *(countAndFlagsBits + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1DF160D94((v12 > 1), v13 + 1, 1);
          countAndFlagsBits = v100.value.contextId._countAndFlagsBits;
        }

        v14 = *(v0 + 96);
        *(countAndFlagsBits + 16) = v13 + 1;
        sub_1DF20A12C(v14, countAndFlagsBits + v89 + v13 * v6, type metadata accessor for TaskStatusEvent);
        v5 = v91;
      }

      v7 += v6;
      --v2;
    }

    while (v2);
  }

  v15 = *(countAndFlagsBits + 16);
  if (v15)
  {
    v16 = *(v0 + 64);
    v92 = *(v0 + 56);
    v100.value.contextId._countAndFlagsBits = MEMORY[0x1E69E7CC0];
    sub_1DF160D10(0, v15, 0);
    v17 = v100.value.contextId._countAndFlagsBits;
    v18 = countAndFlagsBits + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v16 + 72);
    do
    {
      v20 = *(v0 + 88);
      sub_1DF20A0C4(v18, v20, type metadata accessor for TaskStatusEvent);
      v21 = (v20 + *(v92 + 24));
      v23 = *v21;
      v22 = v21[1];

      sub_1DF20A194(v20, type metadata accessor for TaskStatusEvent);
      v100.value.contextId._countAndFlagsBits = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1DF160D10((v24 > 1), v25 + 1, 1);
        v17 = v100.value.contextId._countAndFlagsBits;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v27 = sub_1DF1925DC(v17);

  v28 = sub_1DF190A68(MEMORY[0x1E69E7CC0]);
  v29 = v28;
  v30 = v85;
  if (v85)
  {
    v31 = 0;
    v32 = 0;
    v33 = *(v0 + 64);
    v86 = *(v0 + 56);
    v87 = v28;
    v84 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v90 = *(v0 + 40) + v84;
    v93 = *(v33 + 72);
    v34 = v27 + 56;
    while (1)
    {
      v35 = *(v0 + 80);
      sub_1DF20A0C4(v90 + v32 * v93, v35, type metadata accessor for TaskStatusEvent);
      if (*(v27 + 16))
      {
        v36 = (v35 + *(v86 + 24));
        v38 = *v36;
        v37 = v36[1];
        sub_1DF22B6C0();
        sub_1DF22AD20();
        v39 = sub_1DF22B6F0();
        v40 = -1 << *(v27 + 32);
        v41 = v39 & ~v40;
        if ((*(v34 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
        {
          break;
        }
      }

LABEL_20:
      sub_1DF20A194(*(v0 + 80), type metadata accessor for TaskStatusEvent);
LABEL_21:
      if (++v32 == v30)
      {

        v29 = v87;
        goto LABEL_49;
      }
    }

    v42 = ~v40;
    while (1)
    {
      v43 = (*(v27 + 48) + 16 * v41);
      v44 = *v43 == v38 && v43[1] == v37;
      if (v44 || (sub_1DF22B620() & 1) != 0)
      {
        break;
      }

      v41 = (v41 + 1) & v42;
      if (((*(v34 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_1DF20A0C4(*(v0 + 80), *(v0 + 72), type metadata accessor for TaskStatusEvent);

    sub_1DF15EAC4(v31, 0);
    v45 = v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100.value.contextId._countAndFlagsBits = v87;
    v48 = sub_1DF175254(v38, v37);
    v49 = *(v87 + 16);
    v50 = (v47 & 1) == 0;
    result = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_72;
    }

    v52 = v47;
    if (*(v87 + 24) < result)
    {
      sub_1DF1A73A0(result, isUniquelyReferenced_nonNull_native);
      v53 = sub_1DF175254(v38, v37);
      if ((v52 & 1) != (v54 & 1))
      {

        return sub_1DF22B660();
      }

      v48 = v53;
      v45 = v100.value.contextId._countAndFlagsBits;
      v30 = v85;
      if ((v52 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_39:

LABEL_42:
      v87 = v45;
      v55 = v45[7];
      v56 = *(v55 + 8 * v48);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *(v55 + 8 * v48) = v56;
      if ((v57 & 1) == 0)
      {
        v56 = sub_1DF174C34(0, v56[2] + 1, 1, v56);
        *(v55 + 8 * v48) = v56;
      }

      v59 = v56[2];
      v58 = v56[3];
      if (v59 >= v58 >> 1)
      {
        *(v55 + 8 * v48) = sub_1DF174C34((v58 > 1), v59 + 1, 1, v56);
      }

      v60 = *(v0 + 72);
      sub_1DF20A194(*(v0 + 80), type metadata accessor for TaskStatusEvent);
      v61 = *(v55 + 8 * v48);
      *(v61 + 16) = v59 + 1;
      sub_1DF20A12C(v60, v61 + v84 + v59 * v93, type metadata accessor for TaskStatusEvent);
      v31 = sub_1DF20A650;
      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v85;
      if (v47)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_1DF176E1C();
      v45 = v100.value.contextId._countAndFlagsBits;
      v30 = v85;
      if (v52)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    sub_1DF1A8614(v48, v38, v37, MEMORY[0x1E69E7CC0], v45);
    goto LABEL_42;
  }

  v31 = 0;
LABEL_49:
  v62 = 0;
  v88 = v29;
  v65 = *(v29 + 64);
  v64 = v29 + 64;
  v63 = v65;
  v66 = -1;
  v67 = -1 << *(v64 - 32);
  if (-v67 < 64)
  {
    v66 = ~(-1 << -v67);
  }

  v68 = v66 & v63;
  v69 = (63 - v67) >> 6;
  v94 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v70 = v62;
    if (!v68)
    {
      break;
    }

LABEL_56:
    v71 = __clz(__rbit64(v68)) | (v62 << 6);
    v72 = (*(v88 + 48) + 16 * v71);
    v74 = *v72;
    v73 = v72[1];
    v75._rawValue = *(*(v88 + 56) + 8 * v71);

    if (sub_1DF22B020())
    {

      sub_1DF15EAC4(v31, 0);
      v94 = 0;
LABEL_64:

      v83 = *(v0 + 8);

      return v83(v94);
    }

    v68 &= v68 - 1;
    v76._countAndFlagsBits = v74;
    v76._object = v73;
    processPushEvents(pushTaskEvents:taskName:contextId:cutoff:)(&v100, v75, v76, *(v0 + 16), *(v0 + 32));

    v78 = v100.value.contextId._countAndFlagsBits;
    object = v100.value.contextId._object;
    v97 = *&v100.value.countPushReceived;
    v98 = *&v100.value.pushErrorLatency;
    pushReceivedLatency = v100.value.pushReceivedLatency;
    taskName = v100.value.taskName;
    v96 = *&v100.value.countPushParameterError;
    if (v100.value.contextId._object)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DF174B0C(0, *(v94 + 16) + 1, 1, v94);
        v94 = result;
      }

      v80 = *(v94 + 16);
      v79 = *(v94 + 24);
      v81 = v80 + 1;
      if (v80 >= v79 >> 1)
      {
        result = sub_1DF174B0C((v79 > 1), v80 + 1, 1, v94);
        v81 = v80 + 1;
        v94 = result;
      }

      *(v94 + 16) = v81;
      v82 = v94 + 88 * v80;
      *(v82 + 32) = v78;
      *(v82 + 40) = object;
      *(v82 + 48) = taskName;
      *(v82 + 112) = pushReceivedLatency;
      *(v82 + 80) = v97;
      *(v82 + 96) = v98;
      *(v82 + 64) = v96;
    }
  }

  while (1)
  {
    v62 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v62 >= v69)
    {

      sub_1DF15EAC4(v31, 0);
      goto LABEL_64;
    }

    v68 = *(v64 + 8 * v62);
    ++v70;
    if (v68)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

void __swiftcall processPushEvents(pushTaskEvents:taskName:contextId:cutoff:)(LighthouseBackground::PushTelemetry_optional *__return_ptr retstr, Swift::OpaquePointer pushTaskEvents, Swift::String taskName, Swift::String contextId, Swift::Double cutoff)
{
  object = contextId._object;
  countAndFlagsBits = contextId._countAndFlagsBits;
  v131 = taskName._object;
  v126 = taskName._countAndFlagsBits;
  v127 = retstr;
  v153 = sub_1DF22A800();
  v7 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v148 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v145 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v123 - v15;
  v146 = type metadata accessor for PushMetadata(0);
  v128 = *(v146 - 8);
  v16 = MEMORY[0x1EEE9AC00](v146);
  v141 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v144 = (&v123 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v147 = &v123 - v20;
  v154 = type metadata accessor for TaskStatusEvent(0);
  v150 = *(v154 - 1);
  MEMORY[0x1EEE9AC00](v154);
  v22 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LedgerState(0);
  v151 = *(v23 - 8);
  v152 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(pushTaskEvents._rawValue + 2);
  v27._rawValue = MEMORY[0x1E69E7CC0];
  v142 = v12;
  v149 = v26;
  rawValue = pushTaskEvents._rawValue;
  v134 = v7;
  if (v26)
  {
    v155[0] = MEMORY[0x1E69E7CC0];
    sub_1DF160D30(0, v26, 0);
    v28 = pushTaskEvents._rawValue + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v27._rawValue = v155[0];
    v29 = v7;
    v30 = *(v150 + 72);
    v143 = 0x80000001DF23D040;
    v140 = 0x80000001DF23D020;
    v139 = 0x80000001DF23D000;
    v137 = 0x80000001DF23CFE0;
    v31 = (v29 + 16);
    do
    {
      sub_1DF20A0C4(v28, v22, type metadata accessor for TaskStatusEvent);
      v32 = v22[v154[7]];
      if (v32 <= 4)
      {
        if (v22[v154[7]] <= 1u)
        {
          if (v22[v154[7]])
          {
            v33 = 0x656365526B736154;
          }

          else
          {
            v33 = 0x616572436B736154;
          }

          if (v22[v154[7]])
          {
            v34 = 0xEC00000064657669;
          }

          else
          {
            v34 = 0xEB00000000646574;
          }
        }

        else if (v32 == 2)
        {
          v33 = 0xD00000000000001ALL;
          v34 = v137;
        }

        else
        {
          v33 = 0xD000000000000014;
          if (v32 == 3)
          {
            v34 = v139;
          }

          else
          {
            v34 = v140;
          }
        }
      }

      else if (v22[v154[7]] > 7u)
      {
        if (v32 == 8)
        {
          v34 = 0xE800000000000000;
          v33 = 0x6465727265666544;
        }

        else if (v32 == 9)
        {
          v34 = 0xE900000000000064;
          v33 = 0x6574656C706D6F43;
        }

        else
        {
          v34 = 0xE600000000000000;
          v33 = 0x64656C696146;
        }
      }

      else if (v32 == 5)
      {
        v33 = 0xD00000000000001BLL;
        v34 = v143;
      }

      else if (v32 == 6)
      {
        v33 = 0x7261745320746F4ELL;
        v34 = 0xEB00000000646574;
      }

      else
      {
        v34 = 0xE700000000000000;
        v33 = 0x676E696E6E7552;
      }

      (*v31)(v25 + *(v152 + 20), &v22[v154[5]], v153);
      sub_1DF20A194(v22, type metadata accessor for TaskStatusEvent);
      *v25 = v33;
      v25[1] = v34;
      v155[0] = v27._rawValue;
      v36 = *(v27._rawValue + 2);
      v35 = *(v27._rawValue + 3);
      if (v36 >= v35 >> 1)
      {
        sub_1DF160D30((v35 > 1), v36 + 1, 1);
        v27._rawValue = v155[0];
      }

      *(v27._rawValue + 2) = v36 + 1;
      sub_1DF20A12C(v25, v27._rawValue + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v36, type metadata accessor for LedgerState);
      v28 += v30;
      --v26;
    }

    while (v26);
    v26 = v149;
    pushTaskEvents._rawValue = rawValue;
    v7 = v134;
  }

  v37 = taskEventsToStringSequence(taskEvents:)(v27);

  v38._countAndFlagsBits = 0x29525053495428;
  v38._object = 0xE700000000000000;
  v132._rawValue = v37._countAndFlagsBits;
  v133 = v37._object;
  v39 = getRangeFromRegex(regex:stringRepresentation:)(v38, v37);
  v40 = v39 != 0;
  v41 = -1.0;
  v42 = v146;
  if (v39)
  {
    LODWORD(v124._rawValue) = 1;
    v43 = v39[2];
    v135._rawValue = v39;
    if (v43)
    {
      v137 = 0;
      v44 = pushTaskEvents._rawValue + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v143 = (v128 + 48);
      v140 = (v7 + 16);
      v139 = (v7 + 8);
      v45 = v39 + 5;
      v46 = 0.0;
      v47 = 1.0;
      v48 = v138;
      v136 = v44;
      while (1)
      {
        v49 = *(v45 - 1);
        if (v49 >= v149)
        {
          break;
        }

        v50 = *v45;
        sub_1DF17A6A8(&v44[*(v150 + 72) * v49 + v154[8]], v48, &qword_1ECE0CF50, &unk_1DF23A480);
        if ((*v143)(v48, 1, v42) == 1)
        {
          sub_1DF16184C(v48, &qword_1ECE0CF50, &unk_1DF23A480);
        }

        else
        {
          sub_1DF20A12C(v48, v147, type metadata accessor for PushMetadata);
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_93;
          }

          if (v50 >= *(v27._rawValue + 2))
          {
            goto LABEL_94;
          }

          v51 = v27._rawValue + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v52 = *(v151 + 72);
          v53 = v153;
          v54 = *v140;
          v55 = &v51[v52 * v50 + *(v152 + 20)];
          v56 = v148;
          (*v140)(v148, v55, v153);
          sub_1DF22A730();
          v58 = v57;
          v59 = *v139;
          (*v139)(v56, v53);
          if (v58 >= cutoff)
          {
            v42 = v146;
            if (v49 >= *(v27._rawValue + 2))
            {
              goto LABEL_99;
            }

            v60 = &v51[v52 * v49];
            v61 = v153;
            v62 = v148;
            v54(v148, &v60[*(v152 + 20)], v153);
            v63 = v147;
            sub_1DF22A750();
            v65 = v64;
            v59(v62, v61);
            sub_1DF20A194(v63, type metadata accessor for PushMetadata);
            if (__OFADD__(v137++, 1))
            {
              goto LABEL_100;
            }

            v67 = (v65 - v46) / v47;
            v47 = v47 + 1.0;
            v46 = v46 + v67;
          }

          else
          {
            sub_1DF20A194(v147, type metadata accessor for PushMetadata);
            v42 = v146;
          }

          v48 = v138;
          v44 = v136;
        }

        v45 += 2;
        if (!--v43)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
      goto LABEL_91;
    }

    v137 = 0;
    v46 = 0.0;
    v47 = 1.0;
LABEL_48:
    v69 = getLatencyFromRange(matchIndices:events:)(v135, v27);

    v68 = v46 + v69;
    v135._rawValue = v137;
    v143 = v137;
    v26 = v149;
    pushTaskEvents._rawValue = rawValue;
    v40 = v124._rawValue;
    v7 = v134;
  }

  else
  {
    v137 = 0;
    v135._rawValue = 0;
    v143 = 0;
    v47 = 1.0;
    v46 = 0.0;
    v68 = -1.0;
  }

  v70._countAndFlagsBits = 0x2947495428;
  v70._object = 0xE500000000000000;
  v71._countAndFlagsBits = v132._rawValue;
  v71._object = v133;
  v72 = getRangeFromRegex(regex:stringRepresentation:)(v70, v71);
  if (v72)
  {
    v73 = v150;
    v74 = v72[2];
    v124._rawValue = v72;
    if (v74)
    {
      v136 = 0;
      v147 = pushTaskEvents._rawValue + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v140 = (v128 + 48);
      v139 = (v134 + 16);
      v138 = (v134 + 8);
      v75 = v72 + 5;
      while (1)
      {
        v76 = *(v75 - 1);
        if (v76 >= v149)
        {
          break;
        }

        v77 = *v75;
        v78 = v145;
        sub_1DF17A6A8(v147 + *(v73 + 72) * v76 + v154[8], v145, &qword_1ECE0CF50, &unk_1DF23A480);
        if ((*v140)(v78, 1, v42) == 1)
        {
          sub_1DF16184C(v78, &qword_1ECE0CF50, &unk_1DF23A480);
        }

        else
        {
          sub_1DF20A12C(v78, v144, type metadata accessor for PushMetadata);
          if ((v77 & 0x8000000000000000) != 0)
          {
            goto LABEL_95;
          }

          if (v77 >= *(v27._rawValue + 2))
          {
            goto LABEL_96;
          }

          v79 = v27._rawValue + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v80 = *(v151 + 72);
          v81 = v153;
          v82 = *v139;
          v83 = &v79[v80 * v77 + *(v152 + 20)];
          v84 = v148;
          (*v139)(v148, v83, v153);
          sub_1DF22A730();
          v86 = v85;
          v87 = *v138;
          (*v138)(v84, v81);
          if (v86 >= cutoff)
          {
            v42 = v146;
            if (v76 >= *(v27._rawValue + 2))
            {
              goto LABEL_101;
            }

            v88 = &v79[v80 * v76];
            v89 = v153;
            v90 = v148;
            (v82)(v148, &v88[*(v152 + 20)], v153);
            v91 = v144;
            sub_1DF22A750();
            v93 = v92;
            v87(v90, v89);
            sub_1DF20A194(v91, type metadata accessor for PushMetadata);
            if (__OFADD__(v143, 1))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v136, 1))
            {
              goto LABEL_103;
            }

            ++v136;
            v46 = v46 + (v93 - v46) / v47;
            v47 = v47 + 1.0;
            v135._rawValue = v143 + 1;
            v143 = (v143 + 1);
          }

          else
          {
            sub_1DF20A194(v144, type metadata accessor for PushMetadata);
            v42 = v146;
          }

          v73 = v150;
        }

        v75 += 2;
        if (!--v74)
        {
          goto LABEL_67;
        }
      }

LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v136 = 0;
LABEL_67:
    v41 = getLatencyFromRange(matchIndices:events:)(v124, v27);

    v40 = 1;
    pushTaskEvents._rawValue = rawValue;
    v7 = v134;
    v26 = v149;
  }

  else
  {
    v136 = 0;
  }

  v94._countAndFlagsBits = 0x295A53495428;
  v94._object = 0xE600000000000000;
  v95._countAndFlagsBits = v132._rawValue;
  v95._object = v133;
  v96 = getRangeFromRegex(regex:stringRepresentation:)(v94, v95);

  if (!v96)
  {

    if ((v40 & 1) == 0)
    {
      v155[0] = countAndFlagsBits;
      v155[1] = object;
      v155[2] = v126;
      v155[3] = v131;
      v155[4] = 0;
      v155[5] = v137;
      v155[6] = v135._rawValue;
      v155[7] = v136;
      *&v155[8] = v41;
      *&v155[9] = v68;
      *&v155[10] = v46;
      sub_1DF20A070(v155);
      v122 = v127;
      v127->value.contextId = 0u;
      v122->value.taskName = 0u;
      *&v122->value.countPushParameterError = 0u;
      *&v122->value.countPushReceived = 0u;
      *&v122->value.pushErrorLatency = 0u;
      v122->value.pushReceivedLatency = 0.0;
      return;
    }

    v118 = 0;
    v119 = v136;
    v120 = v135._rawValue;
LABEL_88:
    v121 = v127;
    v127->value.contextId._countAndFlagsBits = countAndFlagsBits;
    v121->value.contextId._object = object;
    v121->value.taskName._countAndFlagsBits = v126;
    v121->value.taskName._object = v131;
    v121->value.countPushParameterError = v118;
    v121->value.countPushProcessed = v137;
    v121->value.countPushReceived = v120;
    v121->value.countPushRegistrationError = v119;
    v121->value.pushErrorLatency = v41;
    v121->value.pushFirstRunLatency = v68;
    v121->value.pushReceivedLatency = v46;
    return;
  }

  v97 = v96[2];
  v132._rawValue = v96;
  if (!v97)
  {
    v138 = 0;
LABEL_87:
    v41 = getLatencyFromRange(matchIndices:events:)(v132, v27);

    v119 = v136;
    v120 = v135._rawValue;
    v118 = v138;
    goto LABEL_88;
  }

  v138 = 0;
  v145 = pushTaskEvents._rawValue + ((*(v150 + 80) + 32) & ~*(v150 + 80));
  v144 = (v128 + 48);
  v140 = (v7 + 16);
  v139 = (v7 + 8);
  v98 = v96 + 5;
  v99 = v26;
  v100 = v142;
  while (1)
  {
    v101 = *(v98 - 1);
    if (v101 >= v99)
    {
      break;
    }

    v147 = v97;
    v102 = *v98;
    sub_1DF17A6A8(v145 + *(v150 + 72) * v101 + v154[8], v100, &qword_1ECE0CF50, &unk_1DF23A480);
    if ((*v144)(v100, 1, v42) == 1)
    {
      sub_1DF16184C(v100, &qword_1ECE0CF50, &unk_1DF23A480);
    }

    else
    {
      sub_1DF20A12C(v100, v141, type metadata accessor for PushMetadata);
      if ((v102 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v102 >= *(v27._rawValue + 2))
      {
        goto LABEL_98;
      }

      v103 = v27._rawValue + ((*(v151 + 80) + 32) & ~*(v151 + 80));
      v104 = *(v151 + 72);
      v105 = v153;
      v106 = *v140;
      v107 = &v103[v104 * v102 + *(v152 + 20)];
      v108 = v148;
      (*v140)(v148, v107, v153);
      sub_1DF22A730();
      v110 = v109;
      v111 = *v139;
      (*v139)(v108, v105);
      if (v110 >= cutoff)
      {
        if (v101 >= *(v27._rawValue + 2))
        {
          goto LABEL_104;
        }

        v112 = &v103[v104 * v101];
        v113 = v153;
        v114 = v148;
        v106(v148, &v112[*(v152 + 20)], v153);
        v42 = v146;
        v115 = v141;
        sub_1DF22A750();
        v117 = v116;
        v111(v114, v113);
        sub_1DF20A194(v115, type metadata accessor for PushMetadata);
        if (__OFADD__(v143, 1))
        {
          goto LABEL_105;
        }

        if (__OFADD__(v138, 1))
        {
          goto LABEL_106;
        }

        ++v138;
        v46 = v46 + (v117 - v46) / v47;
        v47 = v47 + 1.0;
        v135._rawValue = v143 + 1;
        v143 = (v143 + 1);
      }

      else
      {
        sub_1DF20A194(v141, type metadata accessor for PushMetadata);
        v42 = v146;
      }

      v99 = v149;
    }

    v98 += 2;
    v97 = v147 - 1;
    if (v147 == 1)
    {
      goto LABEL_87;
    }
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
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
}

unint64_t CustomEventAnalytics.coreAnalyticsDictionary.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v67 - v5;
  v73 = sub_1DF22A800();
  v7 = *(v73 - 8);
  v8 = MEMORY[0x1EEE9AC00](v73);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v67 - v10;
  v12 = sub_1DF19005C(MEMORY[0x1E69E7CC0]);
  v13 = *v0;
  v14 = *(*v0 + 16);
  v69 = v11;
  if (v14)
  {
    sub_1DF175254(0x7472617473, 0xE500000000000000);
  }

  v15 = sub_1DF22B090();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = v12;
  sub_1DF1A7B40(v15, 0x617453746E756F63, 0xEA00000000007472, isUniquelyReferenced_nonNull_native);
  v17 = v74;
  v18 = *(v13 + 16);
  v71 = v7;
  v72 = v6;
  if (v18)
  {
    sub_1DF175254(1684107116, 0xE400000000000000);
  }

  v19 = sub_1DF22B090();
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v17;
  sub_1DF1A7B40(v19, 0x616F4C746E756F63, 0xE900000000000064, v20);
  v21 = v74;
  if (*(v13 + 16))
  {
    sub_1DF175254(0x737365636F7270, 0xE700000000000000);
  }

  v22 = sub_1DF22B090();
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v21;
  sub_1DF1A7B40(v22, 0x6F7250746E756F63, 0xEC00000073736563, v23);
  v24 = v74;
  if (*(v13 + 16))
  {
    sub_1DF175254(0x64616F6C7075, 0xE600000000000000);
  }

  v25 = sub_1DF22B090();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v24;
  sub_1DF1A7B40(v25, 0x6C7055746E756F63, 0xEB0000000064616FLL, v26);
  v27 = v74;
  if (*(v13 + 16))
  {
    sub_1DF175254(0x64656873696E6966, 0xE800000000000000);
  }

  v28 = sub_1DF22B090();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v27;
  sub_1DF1A7B40(v28, 0x6E6946746E756F63, 0xED00006465687369, v29);
  v30 = v74;
  v31 = v0[1];
  if (*(v31 + 16))
  {
    sub_1DF1752CC(0x7472617473, 0xE500000000000000, 1684107116, 0xE400000000000000);
  }

  v32 = sub_1DF22B030();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v30;
  sub_1DF1A7B40(v32, 0x74614C7472617473, 0xEC00000079636E65, v33);
  v34 = v74;
  if (*(v31 + 16))
  {
    sub_1DF1752CC(1684107116, 0xE400000000000000, 0x737365636F7270, 0xE700000000000000);
  }

  v35 = sub_1DF22B030();
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v34;
  sub_1DF1A7B40(v35, 0x6574614C64616F6CLL, 0xEB0000000079636ELL, v36);
  v37 = v74;
  if (*(v31 + 16))
  {
    sub_1DF1752CC(0x737365636F7270, 0xE700000000000000, 0x64616F6C7075, 0xE600000000000000);
  }

  v38 = sub_1DF22B030();
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v37;
  sub_1DF1A7B40(v38, 0x4C737365636F7270, 0xEE0079636E657461, v39);
  v40 = v74;
  if (*(v31 + 16))
  {
    sub_1DF1752CC(0x64616F6C7075, 0xE600000000000000, 0x64656873696E6966, 0xE800000000000000);
  }

  v41 = sub_1DF22B030();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v40;
  sub_1DF1A7B40(v41, 0x614C64616F6C7075, 0xED000079636E6574, v42);
  v43 = v74;
  if (*(v31 + 16))
  {
    sub_1DF1752CC(0x7472617473, 0xE500000000000000, 0x64656873696E6966, 0xE800000000000000);
  }

  v44 = sub_1DF22B030();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v43;
  sub_1DF1A7B40(v44, 0x74614C6C61746F74, 0xEC00000079636E65, v45);
  v46 = v74;
  v47 = type metadata accessor for CustomEventAnalytics(0);
  v48 = v71;
  v49 = v72;

  v50 = sub_1DF22ACA0();

  v51 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v46;
  sub_1DF1A7B40(v50, 0x656D614E6B736174, 0xE800000000000000, v51);
  v52 = v74;
  sub_1DF17A6A8(v1 + *(v47 + 36), v49, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v53 = *(v48 + 48);
  v54 = v73;
  if (v53(v49, 1, v73) == 1)
  {
    sub_1DF16184C(v49, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  }

  else
  {
    v55 = *(v48 + 32);
    v56 = v69;
    v55(v69, v49, v54);
    v57 = v1 + *(v47 + 40);
    v58 = v70;
    sub_1DF17A6A8(v57, v70, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    if (v53(v58, 1, v54) == 1)
    {
      (*(v48 + 8))(v56, v54);
      sub_1DF16184C(v58, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    }

    else
    {
      v59 = v68;
      v55(v68, v58, v54);
      sub_1DF20803C(v56);
      v60 = sub_1DF22ACA0();

      v61 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v52;
      sub_1DF1A7B40(v60, 0x745374656B637562, 0xEB00000000747261, v61);
      v62 = v74;
      sub_1DF20803C(v59);
      v63 = sub_1DF22ACA0();

      v64 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v62;
      sub_1DF1A7B40(v63, 0x6E4574656B637562, 0xE900000000000064, v64);
      v52 = v74;
      v65 = *(v48 + 8);
      v65(v59, v54);
      v65(v56, v54);
    }
  }

  return v52;
}

void sub_1DF20803C(uint64_t a1)
{
  sub_1DF22A7A0();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    v3 = [v2 stringValue];

    sub_1DF22ACC0();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t processCustomTelemetry(customTelemetryEvents:bucketRange:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for CustomEventAnalytics(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for LedgerState(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for TaskCustomEvent(0);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF20830C, 0, 0);
}

unint64_t sub_1DF20830C()
{
  v1 = v0[5];
  v2 = sub_1DF190160(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 16);
  v115 = v0;
  v4 = 0;
  if (v3)
  {
    v6 = v0[17];
    v5 = v0[18];
    v105 = v0[14];
    v107 = v0[13];
    v109 = v0[16];
    v7 = v0[5] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v112 = *(v5 + 72);
    do
    {
      sub_1DF20A0C4(v7, v0[19], type metadata accessor for TaskCustomEvent);
      v8 = sub_1DF22B420();
      if (v8 <= 1)
      {
        if (!v8)
        {
          v116 = v7;
          v118 = v3;
          v120 = v4;
          v9 = v0;
          v10 = v2;
          v11 = 0xE500000000000000;
          v12 = 0x7472617473;
LABEL_16:
          v13 = v9[19];
          v14 = v9[16];
          v15 = *(v6 + 20);
          v16 = v6;
          v17 = (v13 + *(v6 + 24));
          v19 = *v17;
          v18 = v17[1];
          v20 = *(v107 + 20);
          v21 = sub_1DF22A800();
          (*(*(v21 - 8) + 16))(v14 + v20, v13 + v15, v21);
          *v14 = v12;
          *(v109 + 8) = v11;

          sub_1DF15EAC4(v120, 0);
          v2 = v10;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122 = v10;
          v24 = sub_1DF175254(v19, v18);
          v25 = *(v10 + 16);
          v26 = (v23 & 1) == 0;
          result = v25 + v26;
          if (__OFADD__(v25, v26))
          {
            goto LABEL_73;
          }

          v28 = v23;
          if (*(v10 + 24) >= result)
          {
            v0 = v115;
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v23 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            else
            {
              result = sub_1DF1761EC();
              v2 = v122;
              if ((v28 & 1) == 0)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            sub_1DF1A60B8(result, isUniquelyReferenced_nonNull_native);
            v2 = v10;
            result = sub_1DF175254(v19, v18);
            v0 = v115;
            if ((v28 & 1) != (v29 & 1))
            {
LABEL_68:

              return sub_1DF22B660();
            }

            v24 = result;
            if ((v28 & 1) == 0)
            {
LABEL_25:
              *(v2 + 8 * (v24 >> 6) + 64) |= 1 << v24;
              v30 = (*(v2 + 48) + 16 * v24);
              *v30 = v19;
              v30[1] = v18;
              *(*(v2 + 56) + 8 * v24) = MEMORY[0x1E69E7CC0];
              v31 = *(v2 + 16);
              v32 = __OFADD__(v31, 1);
              v33 = v31 + 1;
              if (v32)
              {
                goto LABEL_74;
              }

              *(v2 + 16) = v33;
              goto LABEL_27;
            }
          }

LABEL_27:
          v34 = *(v2 + 56);
          v35 = *(v34 + 8 * v24);
          v36 = swift_isUniquelyReferenced_nonNull_native();
          *(v34 + 8 * v24) = v35;
          v6 = v16;
          if ((v36 & 1) == 0)
          {
            v35 = sub_1DF17483C(0, v35[2] + 1, 1, v35);
            *(v34 + 8 * v24) = v35;
          }

          v7 = v116;
          v38 = v35[2];
          v37 = v35[3];
          if (v38 >= v37 >> 1)
          {
            *(v34 + 8 * v24) = sub_1DF17483C((v37 > 1), v38 + 1, 1, v35);
          }

          v39 = v0[16];
          sub_1DF20A194(v0[19], type metadata accessor for TaskCustomEvent);
          v40 = *(v34 + 8 * v24);
          *(v40 + 16) = v38 + 1;
          sub_1DF20A12C(v39, v40 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v38, type metadata accessor for LedgerState);
          v4 = sub_1DF20A650;
          v3 = v118;
          goto LABEL_4;
        }

        if (v8 == 1)
        {
          v116 = v7;
          v118 = v3;
          v120 = v4;
          v9 = v0;
          v10 = v2;
          v11 = 0xE400000000000000;
          v12 = 1684107116;
          goto LABEL_16;
        }
      }

      else
      {
        switch(v8)
        {
          case 2:
            v116 = v7;
            v118 = v3;
            v120 = v4;
            v9 = v0;
            v10 = v2;
            v11 = 0xE700000000000000;
            v12 = 0x737365636F7270;
            goto LABEL_16;
          case 3:
            v116 = v7;
            v118 = v3;
            v120 = v4;
            v9 = v0;
            v10 = v2;
            v11 = 0xE600000000000000;
            v12 = 0x64616F6C7075;
            goto LABEL_16;
          case 4:
            v116 = v7;
            v118 = v3;
            v120 = v4;
            v9 = v0;
            v10 = v2;
            v11 = 0xE800000000000000;
            v12 = 0x64656873696E6966;
            goto LABEL_16;
        }
      }

      sub_1DF20A194(v0[19], type metadata accessor for TaskCustomEvent);
LABEL_4:
      v7 += v112;
      --v3;
    }

    while (v3);
  }

  v121 = v4;
  v41 = v0[14];
  v104 = v0[11];
  v99 = v0[9];
  v119 = v0[8];
  v42 = sub_1DF200348();
  v43 = v42;
  v106 = v2 + 64;
  v44 = v0;
  v45 = -1 << *(v2 + 32);
  if (-v45 < 64)
  {
    v46 = ~(-1 << -v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & *(v2 + 64);
  v103 = *(*v42 + 112);
  result = swift_beginAccess();
  v48 = 0;
  v49 = 63 - v45;
  v50 = v44;
  v51 = v49 >> 6;
  v97 = v41;
  v102 = (v41 + 56);
  v52 = MEMORY[0x1E69E7CC0];
  v100 = v43;
  v101 = v2;
  v98 = v49 >> 6;
  v53 = v2 + 64;
  if (!v47)
  {
    goto LABEL_36;
  }

  do
  {
LABEL_40:
    v55 = __clz(__rbit64(v47)) | (v48 << 6);
    v56 = (*(v2 + 48) + 16 * v55);
    v58 = *v56;
    v57 = v56[1];
    v59._rawValue = *(*(v2 + 56) + 8 * v55);

    if (sub_1DF22B020())
    {

      sub_1DF15EAC4(v121, 0);
      v95 = 0;
LABEL_65:

      v96 = v50[1];

      return v96(v95);
    }

    v117 = v52;
    v60 = v50[12];
    (*v102)(v60, 1, 1, v50[13]);
    sub_1DF1A4724(v60);
    sub_1DF16184C(v60, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v61 = customEventsToStringSequence(customEvents:)(v59);
    v62._countAndFlagsBits = 0x462A5D465E5B5328;
    v62._object = 0xE900000000000029;
    v63 = getRangeFromRegex(regex:stringRepresentation:)(v62, v61);

    if (v63)
    {
      v64 = getLatencyFromRange(matchIndices:events:)(v63, v59);

      v65 = *(v59._rawValue + 2);
      if (!v65)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v64 = -1.0;
      v65 = *(v59._rawValue + 2);
      if (!v65)
      {
LABEL_47:

        goto LABEL_48;
      }
    }

    v110 = v58;
    v113 = v57;
    v66 = v59._rawValue + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v67 = *(v97 + 72);
    do
    {
      v68 = v50[15];
      sub_1DF20A0C4(v66, v68, type metadata accessor for LedgerState);
      sub_1DF1A4C64(v68);
      sub_1DF20A194(v68, type metadata accessor for LedgerState);
      v66 += v67;
      --v65;
    }

    while (v65);

    v58 = v110;
    v57 = v113;
LABEL_48:
    v69 = v50[11];
    sub_1DF20A0C4(&v43[v103], v69, type metadata accessor for CustomEventAnalytics);
    v70 = (v69 + v119[8]);

    *v70 = v58;
    v70[1] = v57;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v104 + 8);
    result = sub_1DF1752CC(0x7472617473, 0xE500000000000000, 0x64656873696E6966, 0xE800000000000000);
    v74 = v72[2];
    v75 = (v73 & 1) == 0;
    v32 = __OFADD__(v74, v75);
    v76 = v74 + v75;
    if (v32)
    {
      goto LABEL_75;
    }

    v77 = v73;
    if (v72[3] < v76)
    {
      sub_1DF1A60CC(v76, v71);
      result = sub_1DF1752CC(0x7472617473, 0xE500000000000000, 0x64656873696E6966, 0xE800000000000000);
      if ((v77 & 1) != (v78 & 1))
      {
        goto LABEL_68;
      }

LABEL_53:
      *(v104 + 8) = v72;
      if (v77)
      {
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    if (v71)
    {
      goto LABEL_53;
    }

    v80 = result;
    sub_1DF176200();
    result = v80;
    *(v104 + 8) = v72;
    if (v77)
    {
LABEL_54:
      v79 = result;

      result = v79;
      goto LABEL_58;
    }

LABEL_56:
    v72[(result >> 6) + 8] |= 1 << result;
    v81 = (v72[6] + 32 * result);
    *v81 = 0x7472617473;
    v81[1] = 0xE500000000000000;
    v81[2] = 0x64656873696E6966;
    v81[3] = 0xE800000000000000;
    v82 = (v72[7] + 32 * result);
    *v82 = 0x7FEFFFFFFFFFFFFFLL;
    v82[1] = 0;
    v82[2] = 0;
    v82[3] = 0;
    v83 = v72[2];
    v32 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v32)
    {
      goto LABEL_76;
    }

    v72[2] = v84;
LABEL_58:
    v85 = v50[11];
    v86 = v50[7];
    v111 = v50[6];
    v114 = v50[10];
    *(v72[7] + 32 * result + 16) = v64;
    sub_1DF22A720();
    v87 = sub_1DF22A800();
    v88 = *(v87 - 8);
    v108 = *(v88 + 56);
    v108(v86, 0, 1, v87);
    sub_1DF1936EC(v86, v85 + v119[9], &qword_1ECE0CDC0, &unk_1DF22D7C0);
    v89 = v119[10];
    sub_1DF16184C(v85 + v89, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    v90 = type metadata accessor for TelemetryBucketRange(0);
    (*(v88 + 16))(v85 + v89, v111 + *(v90 + 28), v87);
    v108(v85 + v89, 0, 1, v87);
    sub_1DF20A0C4(v85, v114, type metadata accessor for CustomEventAnalytics);
    v52 = v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_1DF174D94(0, v117[2] + 1, 1, v117);
    }

    v2 = v101;
    v92 = v52[2];
    v91 = v52[3];
    v50 = v115;
    if (v92 >= v91 >> 1)
    {
      v52 = sub_1DF174D94((v91 > 1), v92 + 1, 1, v52);
    }

    v47 &= v47 - 1;
    v93 = v115[10];
    v94 = v115[11];
    v52[2] = v92 + 1;
    sub_1DF20A12C(v93, v52 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v92, type metadata accessor for CustomEventAnalytics);
    result = sub_1DF20A194(v94, type metadata accessor for CustomEventAnalytics);
    v43 = v100;
    v51 = v98;
    v53 = v106;
  }

  while (v47);
LABEL_36:
  while (1)
  {
    v54 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v54 >= v51)
    {
      v95 = v52;

      sub_1DF15EAC4(v121, 0);
      goto LABEL_65;
    }

    v47 = *(v53 + 8 * v54);
    ++v48;
    if (v47)
    {
      v48 = v54;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

Swift::Double __swiftcall getLatencyFromRegex(regex:events:stringRepresentation:)(Swift::String regex, Swift::OpaquePointer events, Swift::String stringRepresentation)
{
  v4 = getRangeFromRegex(regex:stringRepresentation:)(regex, stringRepresentation);
  if (!v4)
  {
    return -1.0;
  }

  v5 = getLatencyFromRange(matchIndices:events:)(v4, events);

  return v5;
}

Swift::OpaquePointer_optional __swiftcall getRangeFromRegex(regex:stringRepresentation:)(Swift::String regex, Swift::String stringRepresentation)
{
  object = stringRepresentation._object;
  countAndFlagsBits = stringRepresentation._countAndFlagsBits;
  v4 = regex._object;
  v5 = regex._countAndFlagsBits;
  objc_allocWithZone(MEMORY[0x1E696AE70]);

  v7 = sub_1DF209338(v5, v4, 0);
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v8 = countAndFlagsBits;
  }

  v9 = 7;
  if (((object >> 60) & ((countAndFlagsBits & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v33 = 15;
  v34 = v9 | (v8 << 16);
  v31 = countAndFlagsBits;
  v32 = object;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EE80, &qword_1DF23A498);
  sub_1DF164BEC(&qword_1ECE0EE88, &qword_1ECE0EE80, &qword_1DF23A498, MEMORY[0x1E69E66D8]);
  sub_1DF17924C();
  v10 = sub_1DF22B190();
  v12 = v11;
  v13 = sub_1DF22ACA0();
  v14 = [v7 matchesInString:v13 options:0 range:{v10, v12}];

  sub_1DF20A1F4();
  v15 = sub_1DF22AE90();

  if (v15 >> 62)
  {
    goto LABEL_24;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_28:

LABEL_29:
    v18 = 0;
    goto LABEL_32;
  }

  while (2)
  {
    v30 = v7;
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1E12CFE10](v17, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      if ([v19 numberOfRanges] < 1)
      {

        goto LABEL_10;
      }

      v21 = [v20 rangeAtIndex_];
      v23 = &v21[v22];
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v7 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_23;
      }

      v24 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DF174AD0(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = sub_1DF174AD0((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      v27 = &v18[16 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = v7;
LABEL_10:
      if (v16 == ++v17)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    if (sub_1DF22B260() < 1)
    {
      goto LABEL_28;
    }

    v30 = v7;
    v28 = sub_1DF22B260();
    if (v28)
    {
      v16 = v28;
      if (v28 < 1)
      {
        __break(1u);
        goto LABEL_28;
      }

      continue;
    }

    break;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_31:

LABEL_32:
  v29 = v18;
  result.value._rawValue = v29;
  result.is_nil = v6;
  return result;
}

Swift::Double __swiftcall getLatencyFromRange(matchIndices:events:)(Swift::OpaquePointer matchIndices, Swift::OpaquePointer events)
{
  v2 = *(matchIndices._rawValue + 2);
  if (v2)
  {
    type metadata accessor for LedgerState(0);
    v6 = *(events._rawValue + 2);
    v7 = (matchIndices._rawValue + 40);
    v8 = 0.0;
    v9 = 1.0;
    while (*(v7 - 1) < v6 && *v7 < v6)
    {
      v7 += 2;
      sub_1DF22A750();
      result = (v11 - v8) / v9;
      v8 = v8 + result;
      v9 = v9 + 1.0;
      if (!--v2)
      {
        return v8;
      }
    }

    __break(1u);
  }

  else
  {
    return 0.0;
  }

  return result;
}

id sub_1DF209338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DF22ACA0();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1DF22A640();

    swift_willThrow();
  }

  return v6;
}

uint64_t type metadata accessor for TelemetryBucketRange(uint64_t a1)
{
  result = qword_1ECE0EED8;
  if (!qword_1ECE0EED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF209480(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF20A05C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DF2094EC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DF2094EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DF22B5F0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1DF22AEE0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DF2096B4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DF2095E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DF2095E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1DF22B620(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DF2096B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1DF209F44(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1DF209C90((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1DF22B620();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1DF22B620();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DF174C84(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1DF174C84((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1DF209C90((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DF209F44(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1DF209EB8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1DF22B620(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1DF209C90(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1DF22B620() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1DF22B620() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1DF209EB8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF209F44(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1DF209F58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD08, &qword_1DF22D708);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1DF20A0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF20A12C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF20A194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DF20A1F4()
{
  result = qword_1ECE0EE90;
  if (!qword_1ECE0EE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE0EE90);
  }

  return result;
}

unint64_t sub_1DF20A244()
{
  result = qword_1ECE0EE98;
  if (!qword_1ECE0EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EE98);
  }

  return result;
}

unint64_t sub_1DF20A29C()
{
  result = qword_1ECE0EEA0;
  if (!qword_1ECE0EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EEA0);
  }

  return result;
}

unint64_t sub_1DF20A2F4()
{
  result = qword_1ECE0EEA8;
  if (!qword_1ECE0EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EEA8);
  }

  return result;
}

unint64_t sub_1DF20A34C()
{
  result = qword_1ECE0EEB0;
  if (!qword_1ECE0EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EEB0);
  }

  return result;
}

unint64_t sub_1DF20A3A0(uint64_t a1)
{
  *(a1 + 8) = sub_1DF20A3D0();
  result = sub_1DF20A424();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF20A3D0()
{
  result = qword_1ECE0EEB8;
  if (!qword_1ECE0EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EEB8);
  }

  return result;
}

unint64_t sub_1DF20A424()
{
  result = qword_1ECE0EEC0;
  if (!qword_1ECE0EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EEC0);
  }

  return result;
}

uint64_t sub_1DF20A514(uint64_t a1)
{
  result = sub_1DF22A800();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1DF20A5A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1DF20A5EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CryptoUtils.getClientEncryptionKey(accessGroup:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD50, &unk_1DF22D750);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v72 - v7;
  v8 = sub_1DF22AB60();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1DF22AA70();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v83 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF22AAF0();
  v87 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v84 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF00, &qword_1DF23A948);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v72 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v91 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v72 - v24;
  v25 = sub_1DF22AA80();
  v88 = *(v25 - 8);
  v89 = v25;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v76 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v72 - v28;
  if (a2)
  {
    v30 = a1;
  }

  else
  {
    v30 = 0xD000000000000017;
  }

  v31 = v3;
  v75 = 0x80000001DF23E610;
  if (a2)
  {
    v32 = a2;
  }

  else
  {
    v32 = 0x80000001DF23E610;
  }

  swift_beginAccess();
  v33 = *(v3 + 16);
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = sub_1DF175254(v30, v32);
    if (v36)
    {
      v37 = *(v33 + 56);
      v39 = v88;
      v38 = v89;
      (*(v88 + 16))(v29, v37 + *(v88 + 72) * v35, v89);
      swift_endAccess();

      v40 = v90;
      (*(v39 + 32))(v90, v29, v38);
      return (*(v39 + 56))(v40, 0, 1, v38);
    }
  }

  swift_endAccess();
  v42 = v92;
  sub_1DF20B6E0(0xD000000000000022, 0x80000001DF23E630, v30, v32, v92);
  v43 = v32;
  v44 = v91;
  v85 = v43;
  sub_1DF20B6E0(0xD000000000000024, 0x80000001DF23E660, v30, v43, v91);
  sub_1DF20C614(v42, v21);
  v45 = v87;
  v46 = *(v87 + 48);
  if (v46(v21, 1, v11) == 1)
  {
    v18 = v21;
LABEL_14:

    sub_1DF16184C(v18, &qword_1ECE0EF00, &qword_1DF23A948);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v50 = sub_1DF22A8C0();
    __swift_project_value_buffer(v50, qword_1ED8E92C0);
    v51 = sub_1DF22A8A0();
    v52 = sub_1DF22B110();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1DF15A000, v51, v52, "Failed at creating client keys. Check logs for more information.", v53, 2u);
      MEMORY[0x1E12D0B40](v53, -1, -1);
    }

    sub_1DF16184C(v44, &qword_1ECE0EF00, &qword_1DF23A948);
    sub_1DF16184C(v92, &qword_1ECE0EF00, &qword_1DF23A948);
    return (*(v88 + 56))(v90, 1, 1, v89);
  }

  v73 = v30;
  v74 = v31;
  v47 = v45;
  v48 = *(v45 + 32);
  v49 = v86;
  v48(v86, v21, v11);
  sub_1DF20C614(v44, v18);
  if (v46(v18, 1, v11) == 1)
  {
    (*(v47 + 8))(v49, v11);
    v44 = v91;
    goto LABEL_14;
  }

  v54 = v11;
  v48(v84, v18, v11);
  v55 = v80;
  sub_1DF22AAB0();
  v56 = v83;
  sub_1DF22AAA0();
  (*(v81 + 8))(v55, v82);
  if (qword_1ECE0C758 != -1)
  {
    swift_once();
  }

  if (*algn_1ECE0D4E8)
  {
    v57 = qword_1ECE0D4E0;
  }

  else
  {
    v57 = 0;
  }

  if (*algn_1ECE0D4E8)
  {
    v58 = *algn_1ECE0D4E8;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  v95 = 0xD000000000000017;
  v59 = v75;
  v96 = v75;

  MEMORY[0x1E12CF820](v57, v58);

  v60 = v95;
  v61 = v96;
  sub_1DF22AB70();
  v95 = sub_1DF188EA4(v60, v61);
  v96 = v62;
  v93 = sub_1DF188EA4(0xD000000000000017, v59);
  v94 = v63;
  sub_1DF20CAFC(&qword_1ECE0D0B8, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1DF1EA5D4();
  v64 = v76;
  sub_1DF22AA60();
  sub_1DF1657C8(v93, v94);
  sub_1DF1657C8(v95, v96);
  v66 = v88;
  v65 = v89;
  v67 = v56;
  v68 = v79;
  (*(v88 + 16))(v79, v64, v89);
  v69 = *(v66 + 56);
  v69(v68, 0, 1, v65);
  swift_beginAccess();
  sub_1DF167628(v68, v73, v85);
  swift_endAccess();
  (*(v77 + 8))(v67, v78);
  v70 = *(v87 + 8);
  v70(v84, v54);
  v70(v86, v54);
  sub_1DF16184C(v91, &qword_1ECE0EF00, &qword_1DF23A948);
  sub_1DF16184C(v92, &qword_1ECE0EF00, &qword_1DF23A948);
  v71 = v90;
  (*(v66 + 32))(v90, v64, v65);
  return (v69)(v71, 0, 1, v65);
}