uint64_t sub_22BAFE4BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BB05E50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BAFE4F0(uint64_t a1)
{
  v2 = sub_22BB04A40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAFE52C(uint64_t a1)
{
  v2 = sub_22BB04A40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.RequestParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3B0, &unk_22BB220D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB04A40();
  sub_22BB1FE2C();
  LOBYTE(v15) = 0;
  sub_22BB1FD2C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_22BB1FD0C();
    *&v15 = *(v3 + 24);
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BB04A94();
    sub_22BB1FCFC();
    *&v15 = *(v3 + 32);
    v17 = 3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3C0, &qword_22BB220E0);
    v10 = sub_22BB04E68(&qword_27D8DF3C8, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    v14[1] = v9;
    sub_22BB1FCFC();
    v14[0] = v10;
    *&v15 = *(v3 + 40);
    v17 = 4;
    sub_22BB1FD4C();
    *&v15 = *(v3 + 48);
    v17 = 5;
    sub_22BB1FD4C();
    LOBYTE(v15) = 6;
    sub_22BB1FD1C();
    LOBYTE(v15) = 7;
    sub_22BB1FD1C();
    LOBYTE(v15) = 8;
    sub_22BB1FD1C();
    v11 = *(v3 + 80);
    v15 = *(v3 + 64);
    v16 = v11;
    v17 = 9;
    sub_22BB04B48();
    sub_22BB1FD4C();
    LOBYTE(v15) = 10;
    sub_22BB1FD1C();
    LOBYTE(v15) = 11;
    sub_22BB1FCEC();
    LOBYTE(v15) = 12;
    sub_22BB1FD1C();
    LOBYTE(v15) = 13;
    sub_22BB1FD1C();
    LOBYTE(v15) = 14;
    sub_22BB1FD1C();
    v12 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
    LOBYTE(v15) = 15;
    sub_22BB1EC1C();
    sub_22BACFADC(&qword_27D8DF3D8, MEMORY[0x277D747A8], MEMORY[0x277D747B0]);
    sub_22BB1FCFC();
    LOBYTE(v15) = 16;
    sub_22BB1EC9C();
    sub_22BACFADC(&qword_27D8DF3E0, MEMORY[0x277D74870], MEMORY[0x277D74878]);
    sub_22BB1FD4C();
    LOBYTE(v15) = 17;
    sub_22BB1EC5C();
    sub_22BACFADC(&qword_27D8DF3E8, MEMORY[0x277D74800], MEMORY[0x277D74808]);
    sub_22BB1FD4C();
    LOBYTE(v15) = 18;
    sub_22BB1EC7C();
    sub_22BACFADC(&qword_27D8DF3F0, MEMORY[0x277D74850], MEMORY[0x277D74858]);
    sub_22BB1FD4C();
    *&v15 = *(v3 + v12[23]);
    v17 = 19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3F8, &qword_22BB220E8);
    sub_22BB04B9C();
    sub_22BB1FD4C();
    LOBYTE(v15) = 20;
    sub_22BB1FD4C();
    LOBYTE(v15) = 21;
    sub_22BB1FD4C();
    LOBYTE(v15) = 22;
    sub_22BB1FD4C();
    LOBYTE(v15) = 23;
    sub_22BB1FD1C();
    LOBYTE(v15) = 24;
    sub_22BB1FD4C();
    LOBYTE(v15) = 25;
    sub_22BB1FD1C();
    LOBYTE(v15) = 26;
    sub_22BB1FD1C();
    LOBYTE(v15) = 27;
    sub_22BB1F0BC();
    sub_22BACFADC(&qword_27D8DF410, MEMORY[0x277D748E8], MEMORY[0x277D748F0]);
    sub_22BB1FD4C();
    *&v15 = *(v3 + v12[32]);
    v17 = 28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF418, &qword_22BB220F0);
    sub_22BB04C50();
    sub_22BB1FD4C();
    *&v15 = *(v3 + v12[33]);
    v17 = 29;
    sub_22BB04D04();
    sub_22BB1FD4C();
    LOBYTE(v15) = 30;
    sub_22BB1EE9C();
    sub_22BACFADC(&qword_27D8DF438, MEMORY[0x277D74898], MEMORY[0x277D748A0]);
    sub_22BB1FD4C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t IntelligenceSupportAgent.RequestParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v99 = a2;
  v98 = sub_22BB1EE9C();
  v95 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22BB1F0BC();
  v80 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v96 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22BB1EC7C();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v93 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = v62 - v6;
  MEMORY[0x28223BE20](v7);
  v91 = v62 - v8;
  MEMORY[0x28223BE20](v9);
  v90 = v62 - v10;
  MEMORY[0x28223BE20](v11);
  v89 = v62 - v12;
  v86 = sub_22BB1EC5C();
  v81 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22BB1EC9C();
  v70 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF440, &qword_22BB220F8);
  v103 = *(v17 - 8);
  v104 = v17;
  MEMORY[0x28223BE20](v17);
  v107 = v62 - v18;
  v19 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  v20 = (v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v22 = 0x3FE8000000000000;
  *(v22 + 1) = 0;
  *(v22 + 3) = 0;
  v102 = v22 + 24;
  v22[16] = 1;
  v23 = MEMORY[0x277D84FA0];
  *(v22 + 4) = 0;
  *(v22 + 5) = v23;
  *(v22 + 6) = v23;
  v22[56] = sub_22BB1EDAC() & 1;
  v22[57] = sub_22BB1ED6C() & 1;
  v22[58] = sub_22BB1EDDC() & 1;
  *(v22 + 4) = xmmword_22BB22080;
  *(v22 + 5) = xmmword_22BB22090;
  v22[96] = sub_22BB1EE2C() & 1;
  *(v22 + 13) = sub_22BB1EDFC();
  v22[112] = 0;
  v22[113] = sub_22BB1ED4C() & 1;
  v22[114] = sub_22BB1EDBC() & 1;
  v22[115] = sub_22BB1EE1C() & 1;
  v24 = v20[21];
  sub_22BB1ECCC();
  v25 = sub_22BB1EC1C();
  v26 = *(*(v25 - 8) + 56);
  v67 = v24;
  v101 = v25;
  v26(&v22[v24], 0, 1);
  v71 = v20[22];
  sub_22BB1ECDC();
  v72 = v20[23];
  sub_22BB1ECEC();
  v73 = v20[24];
  sub_22BB1ECEC();
  v27 = v20[25];
  v28 = sub_22BB1EE0C();
  v76 = v27;
  v75 = v28;
  *&v22[v27] = v28;
  v77 = v20[26];
  sub_22BB1ECEC();
  v79 = v20[27];
  sub_22BB1ECEC();
  v82 = v20[28];
  sub_22BB1ECEC();
  v29 = v20[29];
  v30 = sub_22BB1EDCC();
  v83 = v29;
  v22[v29] = v30 & 1;
  v84 = v20[30];
  sub_22BB1ECEC();
  v31 = v20[31];
  v32 = sub_22BB1EDEC();
  v87 = v31;
  v22[v31] = v32 & 1;
  v33 = v20[32];
  v34 = sub_22BB1EE3C();
  v88 = v33;
  v22[v33] = v34 & 1;
  v35 = v20[33];
  sub_22BB1ECEC();
  v36 = v20[34];
  v37 = sub_22BB1ED7C();
  *&v22[v36] = v37;
  v38 = sub_22BB1ED3C() & 1;
  v39 = sub_22BB1ED2C();
  v40 = v38 | 2;
  if ((v39 & 1) == 0)
  {
    v40 = v38;
  }

  v41 = v20[35];
  *&v22[v41] = v40;
  v42 = v20[36];
  v106 = v22;
  sub_22BB1ECFC();
  __swift_project_boxed_opaque_existential_1(v108, v108[3]);
  sub_22BB04A40();
  v43 = v105;
  sub_22BB1FE1C();
  if (v43)
  {
    v61 = v108;
    v57 = v106;
  }

  else
  {
    v44 = v102;
    v63 = v35;
    v64 = v37;
    v65 = v36;
    v66 = v41;
    v105 = v42;
    v45 = v103;
    LOBYTE(v109) = 0;
    sub_22BB1FC9C();
    v47 = v106;
    *v106 = v48;
    LOBYTE(v109) = 1;
    *(v47 + 1) = sub_22BB1FC7C();
    v47[16] = v49 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    v111 = 2;
    v50 = sub_22BB04DB4();
    sub_22BB1FC6C();
    v62[1] = v50;
    *v44 = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3C0, &qword_22BB220E0);
    v111 = 3;
    sub_22BB04E68(&qword_27D8DF448, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_22BB1FC6C();
    *(v47 + 4) = v109;
    v111 = 4;
    sub_22BB1FCBC();
    *(v47 + 5) = v109;
    v111 = 5;
    sub_22BB1FCBC();
    *(v47 + 6) = v109;
    LOBYTE(v109) = 6;
    v47[56] = sub_22BB1FC8C() & 1;
    LOBYTE(v109) = 7;
    v47[57] = sub_22BB1FC8C() & 1;
    LOBYTE(v109) = 8;
    v47[58] = sub_22BB1FC8C() & 1;
    v111 = 9;
    sub_22BB04ED4();
    sub_22BB1FCBC();
    v51 = v110;
    v52 = v106;
    *(v106 + 4) = v109;
    *(v52 + 5) = v51;
    LOBYTE(v109) = 10;
    v106[96] = sub_22BB1FC8C() & 1;
    LOBYTE(v109) = 11;
    v53 = sub_22BB1FC5C();
    v54 = v106;
    *(v106 + 13) = v53;
    v54[112] = v55 & 1;
    LOBYTE(v109) = 12;
    v106[113] = sub_22BB1FC8C() & 1;
    LOBYTE(v109) = 13;
    v106[114] = sub_22BB1FC8C() & 1;
    LOBYTE(v109) = 14;
    v106[115] = sub_22BB1FC8C() & 1;
    LOBYTE(v109) = 15;
    sub_22BACFADC(&qword_27D8DF458, MEMORY[0x277D747A8], MEMORY[0x277D747C0]);
    sub_22BB1FC6C();
    sub_22BAC2A3C(v100, &v106[v67]);
    LOBYTE(v109) = 16;
    sub_22BACFADC(&qword_27D8DF460, MEMORY[0x277D74870], MEMORY[0x277D74888]);
    sub_22BB1FCBC();
    (*(v70 + 40))(&v106[v71], v74, v78);
    LOBYTE(v109) = 17;
    sub_22BACFADC(&qword_27D8DF468, MEMORY[0x277D74800], MEMORY[0x277D74818]);
    sub_22BB1FCBC();
    (*(v81 + 40))(&v106[v72], v85, v86);
    LOBYTE(v109) = 18;
    sub_22BACFADC(&qword_27D8DF470, MEMORY[0x277D74850], MEMORY[0x277D74868]);
    sub_22BB1FCBC();
    v56 = *(v68 + 40);
    v56(&v106[v73], v89, v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3F8, &qword_22BB220E8);
    v111 = 19;
    sub_22BB04F28();
    sub_22BB1FCBC();

    *&v106[v76] = v109;
    LOBYTE(v109) = 20;
    sub_22BB1FCBC();
    v56(&v106[v77], v90, v69);
    LOBYTE(v109) = 21;
    sub_22BB1FCBC();
    v56(&v106[v79], v91, v69);
    LOBYTE(v109) = 22;
    sub_22BB1FCBC();
    v56(&v106[v82], v92, v69);
    LOBYTE(v109) = 23;
    v106[v83] = sub_22BB1FC8C() & 1;
    LOBYTE(v109) = 24;
    sub_22BB1FCBC();
    v56(&v106[v84], v93, v69);
    LOBYTE(v109) = 25;
    v106[v87] = sub_22BB1FC8C() & 1;
    LOBYTE(v109) = 26;
    v106[v88] = sub_22BB1FC8C() & 1;
    LOBYTE(v109) = 27;
    sub_22BACFADC(&qword_27D8DF488, MEMORY[0x277D748E8], MEMORY[0x277D74900]);
    sub_22BB1FCBC();
    (*(v80 + 40))(&v106[v63], v96, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF418, &qword_22BB220F0);
    v111 = 28;
    sub_22BB04FDC();
    sub_22BB1FCBC();

    *&v106[v65] = v109;
    v111 = 29;
    sub_22BB05090();
    sub_22BB1FCBC();
    v57 = v106;
    *&v106[v66] = v109;
    LOBYTE(v109) = 30;
    sub_22BACFADC(&qword_27D8DF4A8, MEMORY[0x277D74898], MEMORY[0x277D748B0]);
    v58 = v104;
    v59 = v107;
    sub_22BB1FCBC();
    (*(v45 + 8))(v59, v58);
    v60 = v108;
    (*(v95 + 40))(v57 + v105, v97, v98);
    sub_22BB050E4(v57, v99);
    v61 = v60;
  }

  __swift_destroy_boxed_opaque_existential_0(v61);
  return sub_22BB04D58(v57);
}

uint64_t static IntelligenceSupportAgent.RequestParameters.debugPresets(verbose:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  IntelligenceSupportAgent.RequestParameters.init()(a2);
  v4 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76);
  v5 = sub_22BB1EC1C();
  result = (*(*(v5 - 8) + 48))(a2 + v4, 1, v5);
  if (result)
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_22BB1EBDC();
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  *(a2 + 57) = 0;
  *(a2 + 114) = 1;
  return result;
}

uint64_t static IntelligenceSupportAgent.RequestParameters.debugCustomParsed(arguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntelligenceSupportAgent.RequestParameters.init()(v7);
  v8 = *(v5 + 84);
  v9 = sub_22BB1EC1C();
  if (!(*(*(v9 - 8) + 48))(&v7[v8], 1, v9))
  {
    sub_22BB1EBDC();
  }

  result = sub_22BB05148(v7, a2);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      sub_22BB002A4(v13, v14);

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

void sub_22BB002A4(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF520, &unk_22BB227C0);
  MEMORY[0x28223BE20](v5 - 8);
  v214 = &v202 - v6;
  v213 = sub_22BB1F31C();
  v211 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v212 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1EC7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v208 = &v202 - v13;
  MEMORY[0x28223BE20](v14);
  v207 = &v202 - v15;
  MEMORY[0x28223BE20](v16);
  v209 = &v202 - v17;
  MEMORY[0x28223BE20](v18);
  v210 = &v202 - v19;
  v20 = sub_22BB1EBEC();
  v215 = *(v20 - 8);
  v216 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BB1EC1C();
  v217 = *(v23 - 8);
  v218 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222[0] = 61;
  v222[1] = 0xE100000000000000;
  v221 = v222;

  v27 = sub_22BB02FE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_22BB06EC0, v220, a1, a2, v26);
  v28 = v27;
  v29 = v27[2];
  if (!v29)
  {
    goto LABEL_9;
  }

  v206 = 0;
  v203 = v11;
  v204 = v8;
  v205 = v9;
  v219 = v2;
  v30 = v27[6];
  v31 = v27[7];

  v32 = sub_22BB1FA3C();
  v34 = v33;

  if (v29 > v28[2])
  {
    __break(1u);
  }

  else
  {
    v35 = &v28[4 * v29];
    v36 = *v35;
    v31 = v35[1];
    v29 = v35[2];
    v30 = v35[3];

    v28 = v36;

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "timeout");
    v225[1] = 0xE700000000000000;
    sub_22BB068B4();
    if (sub_22BB1FA6C())
    {

      v37 = sub_22BB1F83C();
      if ((v38 & 1) == 0)
      {
        v47 = v37;

        *v219 = v47;
        return;
      }
    }

    v222[0] = v32;
    v222[1] = v34;
    v225[0] = 0x746567726174;
    v225[1] = 0xE600000000000000;
    if (sub_22BB1FA6C())
    {
      v222[0] = v32;
      v222[1] = v34;
      v225[0] = 7368801;
      v225[1] = 0xE300000000000000;
      if (sub_22BB1FA6C() & 1) != 0 || (v222[0] = v32, v222[1] = v34, v225[0] = 0x656C646E7562, v225[1] = 0xE600000000000000, (sub_22BB1FA6C()))
      {

        v222[0] = v36;
        v222[1] = v31;
        v223 = v29;
        v224 = v30;
        v225[0] = 44;
        v225[1] = 0xE100000000000000;
        sub_22BB0697C();
        v39 = sub_22BB1FA5C();

        v40 = sub_22BB1DCC8(v39);

        v41 = v219;

        *(v41 + 32) = v40;
        return;
      }
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "exclude");
    v225[1] = 0xE700000000000000;
    if (sub_22BB1FA6C())
    {
      v222[0] = v32;
      v222[1] = v34;
      v225[0] = 7368801;
      v225[1] = 0xE300000000000000;
      if (sub_22BB1FA6C() & 1) != 0 || (v222[0] = v32, v222[1] = v34, v225[0] = 0x656C646E7562, v225[1] = 0xE600000000000000, (sub_22BB1FA6C()))
      {

        v222[0] = v36;
        v222[1] = v31;
        v223 = v29;
        v224 = v30;
        v225[0] = 44;
        v225[1] = 0xE100000000000000;
        sub_22BB0697C();
        v42 = sub_22BB1FA5C();

        v43 = sub_22BB1DCC8(v42);

        v44 = v219;

        *(v44 + 48) = v43;
        return;
      }
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "management");
    BYTE3(v225[1]) = 0;
    HIDWORD(v225[1]) = -369098752;
    if (sub_22BB1FA6C())
    {

      v45 = sub_22BB1FA2C();

      v46 = [v45 BOOLValue];

      *(v219 + 56) = v46;
      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    v225[0] = 0x656E757270;
    v225[1] = 0xE500000000000000;
    if (sub_22BB1FA6C())
    {

      v48 = sub_22BB1FA2C();

      v49 = [v48 BOOLValue];

      *(v219 + 57) = v49;
      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "windowfraction");
    HIBYTE(v225[1]) = -18;
    if (sub_22BB1FA6C())
    {

      v50 = sub_22BB1F83C();
      if ((v51 & 1) == 0)
      {
        v60 = v50;

        MEMORY[0x28223BE20](v61);
        *(&v202 - 2) = v60;
        MEMORY[0x28223BE20](v62);
        *(&v202 - 2) = v60;
        sub_22BB1EAEC();
        *(v219 + 64) = v60;
        return;
      }
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "windowarea");
    BYTE3(v225[1]) = 0;
    HIDWORD(v225[1]) = -369098752;
    if (sub_22BB1FA6C())
    {

      v52 = sub_22BB1F83C();
      if ((v53 & 1) == 0)
      {
        v63 = v52;

        MEMORY[0x28223BE20](v64);
        *(&v202 - 2) = v63;
        MEMORY[0x28223BE20](v65);
        *(&v202 - 2) = v63;
        sub_22BB1EAEC();
        *(v219 + 72) = v63;
        return;
      }
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "fraction");
    BYTE1(v225[1]) = 0;
    WORD1(v225[1]) = 0;
    HIDWORD(v225[1]) = -402653184;
    if (sub_22BB1FA6C())
    {

      v54 = sub_22BB1F83C();
      if ((v55 & 1) == 0)
      {
        v68 = v54;

        MEMORY[0x28223BE20](v69);
        *(&v202 - 2) = v68;
        MEMORY[0x28223BE20](v70);
        *(&v202 - 2) = v68;
        sub_22BB1EAEC();
        *(v219 + 80) = v68;
        return;
      }
    }

    v222[0] = v32;
    v222[1] = v34;
    v225[0] = 1634038369;
    v225[1] = 0xE400000000000000;
    if (sub_22BB1FA6C())
    {

      v56 = sub_22BB1F83C();
      if ((v57 & 1) == 0)
      {
        v71 = v56;

        MEMORY[0x28223BE20](v72);
        *(&v202 - 2) = v71;
        MEMORY[0x28223BE20](v73);
        *(&v202 - 2) = v71;
        sub_22BB1EAEC();
        *(v219 + 88) = v71;
        return;
      }
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "visible");
    v225[1] = 0xE700000000000000;
    if (sub_22BB1FA6C())
    {

      v58 = sub_22BB1FA2C();

      v59 = [v58 BOOLValue];

      *(v219 + 58) = v59;
      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "selected");
    BYTE1(v225[1]) = 0;
    WORD1(v225[1]) = 0;
    HIDWORD(v225[1]) = -402653184;
    if (sub_22BB1FA6C())
    {

      v66 = sub_22BB1FA2C();

      v67 = [v66 BOOLValue];

      *(v219 + 96) = v67;
      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    v225[0] = 0xD000000000000010;
    v225[1] = 0x800000022BB27CB0;
    if (sub_22BB1FA6C())
    {

      if ((v31 ^ v36) >> 14)
      {
        v74 = sub_22BB04250(v36, v31, v29, v30, 10);
        if ((v75 & 0x100) != 0)
        {
          v74 = sub_22BB03844(v36, v31, v29, v30, 10);
        }

        v76 = v74;
        v77 = v75;

        if (v77)
        {
          v78 = 0;
        }

        else
        {
          v78 = v76;
        }
      }

      else
      {

        v78 = 0;
        v77 = 1;
      }

      v79 = v219;
      *(v219 + 104) = v78;
      *(v79 + 112) = v77 & 1;
      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "geometry");
    BYTE1(v225[1]) = 0;
    WORD1(v225[1]) = 0;
    HIDWORD(v225[1]) = -402653184;
    if (sub_22BB1FA6C())
    {

      v80 = sub_22BB1FA2C();

      v81 = [v80 BOOLValue];

      *(v219 + 113) = v81;
      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "customtype");
    BYTE3(v225[1]) = 0;
    HIDWORD(v225[1]) = -369098752;
    if (sub_22BB1FA6C() & 1) != 0 || (v222[0] = v32, v222[1] = v34, strcpy(v225, "typename"), BYTE1(v225[1]) = 0, WORD1(v225[1]) = 0, HIDWORD(v225[1]) = -402653184, (sub_22BB1FA6C()))
    {

      v82 = sub_22BB1FA2C();

      v83 = [v82 BOOLValue];

      *(v219 + 114) = v83;
      return;
    }
  }

  v222[0] = v32;
  v222[1] = v34;
  strcpy(v225, "accessibility");
  HIWORD(v225[1]) = -4864;
  if (sub_22BB1FA6C())
  {

    v84 = sub_22BB1FA2C();

    v85 = [v84 BOOLValue];

    *(v219 + 115) = v85;
    return;
  }

  v222[0] = v32;
  v222[1] = v34;
  strcpy(v225, "appintents");
  BYTE3(v225[1]) = 0;
  HIDWORD(v225[1]) = -369098752;
  if (sub_22BB1FA6C() & 1) != 0 || (v222[0] = v32, v222[1] = v34, strcpy(v225, "appentities"), HIDWORD(v225[1]) = -352321536, (sub_22BB1FA6C()))
  {

    v86 = sub_22BB1FA2C();
    v87 = [v86 BOOLValue];

    if (v87 & 1) != 0 || (v222[0] = v28, v222[1] = v31, v223 = v29, v224 = v30, v225[0] = 1954047348, v225[1] = 0xE400000000000000, sub_22BB0697C(), (sub_22BB1FA6C()) || (v222[0] = v28, v222[1] = v31, v223 = v29, v224 = v30, strcpy(v225, "complete"), BYTE1(v225[1]) = 0, WORD1(v225[1]) = 0, HIDWORD(v225[1]) = -402653184, (sub_22BB1FA6C()))
    {
      sub_22BB1EC0C();
      v222[0] = v28;
      v222[1] = v31;
      v223 = v29;
      v224 = v30;
      strcpy(v225, "complete");
      BYTE1(v225[1]) = 0;
      WORD1(v225[1]) = 0;
      HIDWORD(v225[1]) = -402653184;
      sub_22BB0697C();
      v88 = sub_22BB1FA6C();

      v89 = MEMORY[0x277D74790];
      if ((v88 & 1) == 0)
      {
        v89 = MEMORY[0x277D74788];
      }

      (*(v215 + 104))(v22, *v89, v216);
      sub_22BB1EBBC();
      sub_22BB1EBDC();
      v90 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76);
      v91 = v219;
      sub_22BAC81E8(v219 + v90, &qword_27D8DF3A0, &qword_22BB220B8);
      v93 = v217;
      v92 = v218;
      (*(v217 + 32))(v91 + v90, v25, v218);
      (*(v93 + 56))(v91 + v90, 0, 1, v92);
    }

    else
    {

      v105 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76);
      v106 = v219;
      sub_22BAC81E8(v219 + v105, &qword_27D8DF3A0, &qword_22BB220B8);
      (*(v217 + 56))(v106 + v105, 1, 1, v218);
    }

    return;
  }

  v222[0] = v32;
  v222[1] = v34;
  strcpy(v225, "useractivit");
  HIDWORD(v225[1]) = -352321536;
  if (sub_22BB1FA6C())
  {

    v94 = sub_22BB1FA3C();
    v96 = v95;

    v222[0] = v94;
    v222[1] = v96;
    v225[0] = 7105633;
    v225[1] = 0xE300000000000000;
    if ((sub_22BB1FA6C() & 1) == 0)
    {
      v222[0] = v94;
      v222[1] = v96;
      strcpy(v225, "current");
      v225[1] = 0xE700000000000000;
      v107 = sub_22BB1FA6C();

      v108 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 84);
      v109 = sub_22BB1EC5C();
      v110 = *(v109 - 8);
      (*(v110 + 8))(v219 + v108, v109);
      if (v107)
      {
        v111 = MEMORY[0x277D747D8];
      }

      else
      {
        v111 = MEMORY[0x277D747F0];
      }

      (*(v110 + 104))(v219 + v108, *v111, v109);
      return;
    }

    v97 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 84);
    v98 = sub_22BB1EC5C();
    v99 = *(v98 - 8);
    v100 = v219;
    (*(v99 + 8))(v219 + v97, v98);
    v101 = MEMORY[0x277D747E0];
    goto LABEL_88;
  }

  v222[0] = v32;
  v222[1] = v34;
  strcpy(v225, "windowcontent");
  HIWORD(v225[1]) = -4864;
  if (sub_22BB1FA6C())
  {

    v102 = sub_22BB1FA3C();
    v104 = v103;

    v222[0] = v102;
    v222[1] = v104;
    v225[0] = 1869903201;
    v225[1] = 0xE400000000000000;
    if (sub_22BB1FA6C())
    {

      v97 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 124);
      v98 = sub_22BB1F0BC();
      v99 = *(v98 - 8);
      v100 = v219;
      (*(v99 + 8))(v219 + v97, v98);
      v101 = MEMORY[0x277D748D8];
    }

    else
    {
      v222[0] = v102;
      v222[1] = v104;
      v225[0] = 0x656C62616E65;
      v225[1] = 0xE600000000000000;
      if (sub_22BB1FA6C())
      {
      }

      else
      {
        v116 = sub_22BB1F66C();

        v117 = [v116 BOOLValue];

        if (!v117)
        {
          v97 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 124);
          v98 = sub_22BB1F0BC();
          v99 = *(v98 - 8);
          v100 = v219;
          (*(v99 + 8))(v219 + v97, v98);
          v101 = MEMORY[0x277D748D0];
          goto LABEL_88;
        }
      }

      v97 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 124);
      v98 = sub_22BB1F0BC();
      v99 = *(v98 - 8);
      v100 = v219;
      (*(v99 + 8))(v219 + v97, v98);
      v101 = MEMORY[0x277D748B8];
    }

LABEL_88:
    (*(v99 + 104))(v100 + v97, *v101, v98);
    return;
  }

  v222[0] = v32;
  v222[1] = v34;
  strcpy(v225, "downscale");
  WORD1(v225[1]) = 0;
  HIDWORD(v225[1]) = -385875968;
  if (sub_22BB1FA6C())
  {

    v112 = sub_22BB1FA2C();

    v113 = [v112 BOOLValue];

    v114 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 108);
LABEL_77:
    *(v219 + v114) = v113;
    return;
  }

  v222[0] = v32;
  v222[1] = v34;
  strcpy(v225, "assistantui");
  HIDWORD(v225[1]) = -352321536;
  if (sub_22BB1FA6C())
  {

    v115 = sub_22BB1FA2C();

    v113 = [v115 BOOLValue];

    v114 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 116);
    goto LABEL_77;
  }

  v222[0] = v32;
  v222[1] = v34;
  v225[0] = sub_22BB1F6BC();
  v225[1] = v118;
  v119 = sub_22BB1FA6C();

  if (v119)
  {

    v120 = sub_22BB1FA3C();
    v122 = v121;

    v222[0] = v120;
    v222[1] = v122;
    v225[0] = 28526;
    v225[1] = 0xE200000000000000;
    if ((sub_22BB1FA6C() & 1) == 0)
    {
      v222[0] = v120;
      v222[1] = v122;
      strcpy(v225, "collect");
      v225[1] = 0xE700000000000000;
      if (sub_22BB1FA6C())
      {
        v222[0] = v120;
        v222[1] = v122;
        v225[0] = 1701603686;
        v225[1] = 0xE400000000000000;
        if (sub_22BB1FA6C())
        {
          v222[0] = v120;
          v222[1] = v122;
          v225[0] = 1886217588;
          v225[1] = 0xE400000000000000;
          v123 = sub_22BB1FA6C();

          if (v123)
          {
            v124 = MEMORY[0x277D74838];
          }

          else
          {
            v124 = MEMORY[0x277D74830];
          }

          (*(v205 + 104))(v210, *v124, v204);
        }

        else
        {

          (*(v205 + 104))(v210, *MEMORY[0x277D74848], v204);
        }

        v167 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
        (*(v205 + 40))(v219 + *(v167 + 104), v210, v204);
        return;
      }
    }

    v130 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 104);
    goto LABEL_128;
  }

  v222[0] = v32;
  v222[1] = v34;
  strcpy(v225, "imagemedia");
  BYTE3(v225[1]) = 0;
  HIDWORD(v225[1]) = -369098752;
  if (sub_22BB1FA6C())
  {

    v125 = sub_22BB1FA3C();
    v127 = v126;

    v222[0] = v125;
    v222[1] = v127;
    v225[0] = 28526;
    v225[1] = 0xE200000000000000;
    if ((sub_22BB1FA6C() & 1) == 0)
    {
      v222[0] = v125;
      v222[1] = v127;
      strcpy(v225, "collect");
      v225[1] = 0xE700000000000000;
      if (sub_22BB1FA6C())
      {
        v222[0] = v125;
        v222[1] = v127;
        v225[0] = 1701603686;
        v225[1] = 0xE400000000000000;
        if (sub_22BB1FA6C())
        {
          v222[0] = v125;
          v222[1] = v127;
          v225[0] = 1886217588;
          v225[1] = 0xE400000000000000;
          v128 = sub_22BB1FA6C();

          if (v128)
          {
            v129 = MEMORY[0x277D74838];
          }

          else
          {
            v129 = MEMORY[0x277D74830];
          }

          (*(v205 + 104))(v209, *v129, v204);
        }

        else
        {

          (*(v205 + 104))(v209, *MEMORY[0x277D74848], v204);
        }

        v177 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
        v178 = *(v205 + 40);
        v179 = v219 + *(v177 + 100);
        v180 = &v229;
        goto LABEL_164;
      }
    }

    v130 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 100);
LABEL_128:
    v163 = v205;
    v164 = v219;
    v165 = v204;
    (*(v205 + 8))(v219 + v130, v204);
    v166 = MEMORY[0x277D74820];
    goto LABEL_129;
  }

  v222[0] = v32;
  v222[1] = v34;
  strcpy(v225, "imagecontent");
  BYTE5(v225[1]) = 0;
  HIWORD(v225[1]) = -5120;
  if (sub_22BB1FA6C())
  {

    v131 = sub_22BB1FA3C();
    v133 = v132;

    v222[0] = v131;
    v222[1] = v133;
    v225[0] = 28526;
    v225[1] = 0xE200000000000000;
    if ((sub_22BB1FA6C() & 1) == 0)
    {
      v222[0] = v131;
      v222[1] = v133;
      strcpy(v225, "collect");
      v225[1] = 0xE700000000000000;
      if (sub_22BB1FA6C())
      {
        v222[0] = v131;
        v222[1] = v133;
        v225[0] = 1701603686;
        v225[1] = 0xE400000000000000;
        if (sub_22BB1FA6C())
        {
          v222[0] = v131;
          v222[1] = v133;
          v225[0] = 1886217588;
          v225[1] = 0xE400000000000000;
          v134 = sub_22BB1FA6C();

          if (v134)
          {
            v135 = MEMORY[0x277D74838];
          }

          else
          {
            v135 = MEMORY[0x277D74830];
          }

          (*(v205 + 104))(v207, *v135, v204);
        }

        else
        {

          (*(v205 + 104))(v207, *MEMORY[0x277D74848], v204);
        }

        v188 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
        v178 = *(v205 + 40);
        v179 = v219 + *(v188 + 96);
        v180 = &v227;
        goto LABEL_164;
      }
    }

    v130 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 96);
    goto LABEL_128;
  }

  v222[0] = v32;
  v222[1] = v34;
  strcpy(v225, "document");
  BYTE1(v225[1]) = 0;
  WORD1(v225[1]) = 0;
  HIDWORD(v225[1]) = -402653184;
  if ((sub_22BB1FA6C() & 1) == 0 || (v222[0] = v32, v222[1] = v34, v225[0] = 1701869940, v225[1] = 0xE400000000000000, (sub_22BB1FA6C() & 1) == 0))
  {
    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "document");
    BYTE1(v225[1]) = 0;
    WORD1(v225[1]) = 0;
    HIDWORD(v225[1]) = -402653184;
    if (sub_22BB1FA6C())
    {

      v150 = sub_22BB1FA3C();
      v152 = v151;

      v222[0] = v150;
      v222[1] = v152;
      v225[0] = 28526;
      v225[1] = 0xE200000000000000;
      if ((sub_22BB1FA6C() & 1) == 0)
      {
        v222[0] = v150;
        v222[1] = v152;
        strcpy(v225, "collect");
        v225[1] = 0xE700000000000000;
        if (sub_22BB1FA6C())
        {
          v222[0] = v150;
          v222[1] = v152;
          v225[0] = 1701603686;
          v225[1] = 0xE400000000000000;
          if (sub_22BB1FA6C())
          {
            v222[0] = v150;
            v222[1] = v152;
            v225[0] = 1886217588;
            v225[1] = 0xE400000000000000;
            v153 = sub_22BB1FA6C();

            if (v153)
            {
              v154 = MEMORY[0x277D74838];
            }

            else
            {
              v154 = MEMORY[0x277D74830];
            }

            (*(v205 + 104))(v208, *v154, v204);
          }

          else
          {

            (*(v205 + 104))(v208, *MEMORY[0x277D74848], v204);
          }

          v193 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
          v178 = *(v205 + 40);
          v179 = v219 + *(v193 + 88);
          v180 = &v228;
          goto LABEL_164;
        }
      }

      v130 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 88);
      goto LABEL_128;
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "components");
    BYTE3(v225[1]) = 0;
    HIDWORD(v225[1]) = -369098752;
    if (sub_22BB1FA6C())
    {

      v155 = sub_22BB1FA3C();
      v157 = v156;

      v222[0] = v155;
      v222[1] = v157;
      v225[0] = 44;
      v225[1] = 0xE100000000000000;
      v158 = sub_22BB1FA5C();

      v159 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
      v160 = *(v159 + 132);
      *(v219 + v160) = 0;
      strcpy(v222, "elements");
      BYTE1(v222[1]) = 0;
      WORD1(v222[1]) = 0;
      HIDWORD(v222[1]) = -402653184;
      MEMORY[0x28223BE20](v159);
      *(&v202 - 2) = v222;
      v161 = sub_22BAF9210(sub_22BB06EC0, (&v202 - 4), v158);
      if (v161)
      {
        *(v219 + v160) = 1;
        v162 = 3;
      }

      else
      {
        v162 = 2;
      }

      strcpy(v222, "commands");
      BYTE1(v222[1]) = 0;
      WORD1(v222[1]) = 0;
      HIDWORD(v222[1]) = -402653184;
      MEMORY[0x28223BE20](v161);
      *(&v202 - 2) = v222;
      v183 = sub_22BAF9210(sub_22BB06EC0, (&v202 - 4), v158);

      if (v183)
      {
        *(v219 + v160) = v162;
      }

      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    strcpy(v225, "commandoptions");
    HIBYTE(v225[1]) = -18;
    if (sub_22BB1FA6C())
    {

      v168 = sub_22BB1FA3C();
      v170 = v169;

      v222[0] = v168;
      v222[1] = v170;
      v225[0] = 44;
      v225[1] = 0xE100000000000000;
      v171 = sub_22BB1FA5C();

      strcpy(v222, "nonperformable");
      HIBYTE(v222[1]) = -18;
      MEMORY[0x28223BE20](v172);
      *(&v202 - 2) = v222;
      v173 = sub_22BAF9210(sub_22BB06908, (&v202 - 4), v171);
      if (v173 & 1) != 0 || (strcpy(v222, "disabled"), BYTE1(v222[1]) = 0, WORD1(v222[1]) = 0, HIDWORD(v222[1]) = -402653184, MEMORY[0x28223BE20](v173), *(&v202 - 2) = v222, v174 = sub_22BAF9210(sub_22BB06EC0, (&v202 - 4), v171), (v174))
      {
        type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
        v174 = sub_22BB1EE7C();
      }

      strcpy(v222, "untitled");
      BYTE1(v222[1]) = 0;
      WORD1(v222[1]) = 0;
      HIDWORD(v222[1]) = -402653184;
      MEMORY[0x28223BE20](v174);
      *(&v202 - 2) = v222;
      v175 = sub_22BAF9210(sub_22BB06EC0, (&v202 - 4), v171);
      if (v175)
      {
        type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
        v175 = sub_22BB1EE5C();
      }

      v222[0] = 0x646568636163;
      v222[1] = 0xE600000000000000;
      MEMORY[0x28223BE20](v175);
      *(&v202 - 2) = v222;
      v176 = sub_22BAF9210(sub_22BB06EC0, (&v202 - 4), v171);

      if (v176)
      {
        type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
        sub_22BB1EE6C();
      }

      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    v225[0] = sub_22BB1F6BC();
    v225[1] = v184;
    v185 = sub_22BB1FA6C();

    if (v185)
    {

      v186 = sub_22BB1FA2C();

      v187 = [v186 BOOLValue];

      if (!v187)
      {
        return;
      }

      v164 = v219;

      *(v164 + 24) = MEMORY[0x277D84FA0];
      v130 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 112);
      v163 = v205;
      v165 = v204;
      (*(v205 + 8))(v164 + v130, v204);
      v166 = MEMORY[0x277D74848];
LABEL_129:
      (*(v163 + 104))(v164 + v130, *v166, v165);
      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    v225[0] = sub_22BB1F6BC();
    v225[1] = v189;
    v190 = sub_22BB1FA6C();

    if (v190)
    {

      v191 = sub_22BB1FA2C();

      v192 = [v191 BOOLValue];

      if (v192)
      {
        *(v219 + *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 120)) = 1;
      }

      return;
    }

    v222[0] = v32;
    v222[1] = v34;
    v225[0] = sub_22BB1F6BC();
    v225[1] = v194;
    v195 = sub_22BB1FA6C();

    if (v195)
    {
      v196 = sub_22BB1FA3C();
      v198 = v197;

      v222[0] = v196;
      v222[1] = v198;
      v225[0] = 28526;
      v225[1] = 0xE200000000000000;
      if ((sub_22BB1FA6C() & 1) != 0 || (v222[0] = v196, v222[1] = v198, strcpy(v225, "collect"), v225[1] = 0xE700000000000000, (sub_22BB1FA6C() & 1) == 0))
      {

        v130 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 112);
        goto LABEL_128;
      }

      v222[0] = v196;
      v222[1] = v198;
      v225[0] = 1701603686;
      v225[1] = 0xE400000000000000;
      if (sub_22BB1FA6C())
      {
        v222[0] = v196;
        v222[1] = v198;
        v225[0] = 1886217588;
        v225[1] = 0xE400000000000000;
        v199 = sub_22BB1FA6C();

        if (v199)
        {
          v200 = MEMORY[0x277D74838];
        }

        else
        {
          v200 = MEMORY[0x277D74830];
        }

        (*(v205 + 104))(v203, *v200, v204);
        goto LABEL_177;
      }

LABEL_174:

      (*(v205 + 104))(v203, *MEMORY[0x277D74848], v204);
LABEL_177:
      v201 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
      v178 = *(v205 + 40);
      v179 = v219 + *(v201 + 112);
      v180 = &v226;
LABEL_164:
      v178(v179, *(v180 - 32), v204);
      return;
    }

LABEL_9:

    return;
  }

  v136 = sub_22BB1FA3C();
  v138 = v137;

  v222[0] = v136;
  v222[1] = v138;
  v225[0] = 44;
  v225[1] = 0xE100000000000000;
  v139 = sub_22BB1FA5C();

  v140 = *(v139 + 16);
  if (v140)
  {
    v141 = 0;
    v142 = (v211 + 48);
    v143 = (v211 + 32);
    v144 = v139 + 40;
    v145 = MEMORY[0x277D84F90];
    while (v141 < *(v139 + 16))
    {

      v146 = v214;
      sub_22BB1F32C();
      if ((*v142)(v146, 1, v213) == 1)
      {
        sub_22BAC81E8(v214, &qword_27D8DF520, &unk_22BB227C0);
      }

      else
      {
        v147 = *v143;
        (*v143)(v212, v214, v213);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_22BAF6218(0, *(v145 + 2) + 1, 1, v145);
        }

        v149 = *(v145 + 2);
        v148 = *(v145 + 3);
        if (v149 >= v148 >> 1)
        {
          v145 = sub_22BAF6218((v148 > 1), v149 + 1, 1, v145);
        }

        *(v145 + 2) = v149 + 1;
        v147(&v145[((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v149], v212, v213);
      }

      ++v141;
      v144 += 16;
      if (v140 == v141)
      {
        goto LABEL_147;
      }
    }

    __break(1u);
    goto LABEL_174;
  }

  v145 = MEMORY[0x277D84F90];
LABEL_147:

  v181 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 92);
  v182 = v219;

  *(v182 + v181) = v145;
}

uint64_t sub_22BB02D84()
{
  v0 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  __swift_allocate_value_buffer(v0, qword_281424E90);
  v1 = __swift_project_value_buffer(v0, qword_281424E90);
  return IntelligenceSupportAgent.RequestParameters.init()(v1);
}

uint64_t sub_22BB02DD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22BB033C8(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22BB033C8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22BAEEDE4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22BB02ED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_22BAC8968(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22BABDE24(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22BAC8968((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_22BB02FE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22BB1F79C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22BAF6240(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22BAF6240((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22BB1F77C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22BB1F6FC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22BB1F6FC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22BB1F79C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22BAF6240(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22BB1F79C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22BAF6240(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22BAF6240((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22BB1F6FC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_22BB033A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BB03490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22BB033C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BB035D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22BB033E8(void *a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF300, &qword_22BB21FD8, MEMORY[0x277D746F8]);
  *v3 = result;
  return result;
}

void *sub_22BB0342C(void *a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF560, &qword_22BB227E8, MEMORY[0x277D74708]);
  *v3 = result;
  return result;
}

void *sub_22BB03470(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BB03710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22BB03490(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF550, &qword_22BB227E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A8, &unk_22BB220C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22BB035D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF510, &qword_22BB227B8);
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

void *sub_22BB03710(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF570, &qword_22BB22808);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF578, &unk_22BB22810);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_22BB03844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_22BB069D0();

  result = sub_22BB1F78C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22BB03DDC(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22BB1FBBC();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22BB03DDC(uint64_t a1, unint64_t a2)
{
  v2 = sub_22BB1F79C();
  v6 = sub_22BB03E5C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22BB03E5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22BB1FA4C();
    if (!v9 || (v10 = v9, v11 = sub_22BABFC38(v9, 0), v12 = sub_22BB03FB4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22BB1F6DC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22BB1F6DC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22BB1FBBC();
LABEL_4:

  return sub_22BB1F6DC();
}

unint64_t sub_22BB03FB4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22BB041D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22BB1F75C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22BB1FBBC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22BB041D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22BB1F72C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_22BB041D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22BB1F76C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23189D160](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22BB04250(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22BB1FBBC();
  }

  result = sub_22BB06A24(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_22BB04358()
{
  result = qword_27D8DF390;
  if (!qword_27D8DF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF390);
  }

  return result;
}

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C17RequestParametersV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1EC1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF540, &unk_22BB227D0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v15 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_25;
    }
  }

  v16 = *(a1 + 24);
  v17 = *(a2 + 24);
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = v12;

    sub_22BAF92BC(v16, v17);
    v20 = v19;

    v12 = v18;
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v17)
  {
    goto LABEL_25;
  }

  v21 = *(a1 + 32);
  v22 = *(a2 + 32);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    v23 = v12;

    v24 = sub_22BAF966C(v21, v22);

    if ((v24 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v23 = v12;
    if (v22)
    {
      goto LABEL_25;
    }
  }

  sub_22BAF92BC(*(a1 + 40), *(a2 + 40));
  if ((v25 & 1) == 0 || (sub_22BAF966C(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56) || *(a1 + 57) != *(a2 + 57) || *(a1 + 58) != *(a2 + 58) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))))) & 1) == 0 || *(a1 + 96) != *(a2 + 96))
  {
    goto LABEL_25;
  }

  v28 = *(a2 + 112);
  if (*(a1 + 112))
  {
    if (!*(a2 + 112))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(a1 + 104) != *(a2 + 104))
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_25;
    }
  }

  if (*(a1 + 113) != *(a2 + 113) || *(a1 + 114) != *(a2 + 114) || *(a1 + 115) != *(a2 + 115))
  {
    goto LABEL_25;
  }

  v35 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  v29 = v35[19];
  v30 = *(v23 + 48);
  sub_22BAD6B34(a1 + v29, v14, &qword_27D8DF3A0, &qword_22BB220B8);
  v36 = v30;
  sub_22BAD6B34(a2 + v29, &v14[v30], &qword_27D8DF3A0, &qword_22BB220B8);
  v31 = *(v5 + 48);
  if (v31(v14, 1, v4) != 1)
  {
    sub_22BAD6B34(v14, v10, &qword_27D8DF3A0, &qword_22BB220B8);
    if (v31(&v14[v36], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v36], v4);
      sub_22BACFADC(&qword_27D8DF548, MEMORY[0x277D747A8], MEMORY[0x277D747B8]);
      v32 = sub_22BB1F65C();
      v33 = *(v5 + 8);
      v33(v7, v4);
      v33(v10, v4);
      sub_22BAC81E8(v14, &qword_27D8DF3A0, &qword_22BB220B8);
      if ((v32 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_43;
    }

    (*(v5 + 8))(v10, v4);
LABEL_41:
    sub_22BAC81E8(v14, &qword_27D8DF540, &unk_22BB227D0);
    goto LABEL_25;
  }

  if (v31(&v14[v36], 1, v4) != 1)
  {
    goto LABEL_41;
  }

  sub_22BAC81E8(v14, &qword_27D8DF3A0, &qword_22BB220B8);
LABEL_43:
  if (MEMORY[0x23189C6B0](a1 + v35[20], a2 + v35[20]) & 1) != 0 && (sub_22BB1EC4C() & 1) != 0 && (sub_22BB1EC4C() & 1) != 0 && (sub_22BAF9C1C(*(a1 + v35[23]), *(a2 + v35[23]), MEMORY[0x277D85578], &qword_27D8DF518, MEMORY[0x277D85578], MEMORY[0x277D85590]) & 1) != 0 && (sub_22BB1EC4C() & 1) != 0 && (sub_22BB1EC4C() & 1) != 0 && (sub_22BB1EC4C() & 1) != 0 && *(a1 + v35[27]) == *(a2 + v35[27]) && (sub_22BB1EC4C() & 1) != 0 && *(a1 + v35[29]) == *(a2 + v35[29]) && *(a1 + v35[30]) == *(a2 + v35[30]) && (sub_22BB1EC4C())
  {
    sub_22BAF9824(*(a1 + v35[32]), *(a2 + v35[32]));
    if ((v34 & 1) != 0 && *(a1 + v35[33]) == *(a2 + v35[33]))
    {
      v26 = sub_22BB1EE8C();
      return v26 & 1;
    }
  }

LABEL_25:
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_22BB04A40()
{
  result = qword_27D8DF3B8;
  if (!qword_27D8DF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF3B8);
  }

  return result;
}

unint64_t sub_22BB04A94()
{
  result = qword_27D8DF1C8;
  if (!qword_27D8DF1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BACFADC(&qword_27D8DF158, MEMORY[0x277D74708], MEMORY[0x277D74710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1C8);
  }

  return result;
}

unint64_t sub_22BB04B48()
{
  result = qword_27D8DF3D0;
  if (!qword_27D8DF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF3D0);
  }

  return result;
}

unint64_t sub_22BB04B9C()
{
  result = qword_27D8DF400;
  if (!qword_27D8DF400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF3F8, &qword_22BB220E8);
    sub_22BACFADC(&qword_27D8DF408, MEMORY[0x277D85578], MEMORY[0x277D85580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF400);
  }

  return result;
}

unint64_t sub_22BB04C50()
{
  result = qword_27D8DF420;
  if (!qword_27D8DF420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF418, &qword_22BB220F0);
    sub_22BACFADC(&qword_27D8DF428, MEMORY[0x277D74500], MEMORY[0x277D74508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF420);
  }

  return result;
}

unint64_t sub_22BB04D04()
{
  result = qword_27D8DF430;
  if (!qword_27D8DF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF430);
  }

  return result;
}

uint64_t sub_22BB04D58(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BB04DB4()
{
  result = qword_27D8DF1F0;
  if (!qword_27D8DF1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BACFADC(&qword_27D8DF148, MEMORY[0x277D74708], MEMORY[0x277D74738]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1F0);
  }

  return result;
}

uint64_t sub_22BB04E68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF3C0, &qword_22BB220E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BB04ED4()
{
  result = qword_27D8DF450;
  if (!qword_27D8DF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF450);
  }

  return result;
}

unint64_t sub_22BB04F28()
{
  result = qword_27D8DF478;
  if (!qword_27D8DF478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF3F8, &qword_22BB220E8);
    sub_22BACFADC(&qword_27D8DF480, MEMORY[0x277D85578], MEMORY[0x277D85598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF478);
  }

  return result;
}

unint64_t sub_22BB04FDC()
{
  result = qword_27D8DF490;
  if (!qword_27D8DF490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF418, &qword_22BB220F0);
    sub_22BACFADC(&qword_27D8DF498, MEMORY[0x277D74500], MEMORY[0x277D74530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF490);
  }

  return result;
}

unint64_t sub_22BB05090()
{
  result = qword_27D8DF4A0;
  if (!qword_27D8DF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4A0);
  }

  return result;
}

uint64_t sub_22BB050E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB05148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22BB051E8()
{
  result = qword_27D8DF4C8;
  if (!qword_27D8DF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4C8);
  }

  return result;
}

unint64_t sub_22BB05240()
{
  result = qword_27D8DF4D0;
  if (!qword_27D8DF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4D0);
  }

  return result;
}

unint64_t sub_22BB05294()
{
  result = qword_281424EB0;
  if (!qword_281424EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281424EB0);
  }

  return result;
}

unint64_t sub_22BB052EC()
{
  result = qword_281424EA8;
  if (!qword_281424EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281424EA8);
  }

  return result;
}

void sub_22BB05368(uint64_t a1)
{
  sub_22BB0575C(319, &unk_281424090, MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    sub_22BB0561C(319, &qword_281424110, &qword_27D8DF1C0, &qword_22BB21AE8);
    if (v2 <= 0x3F)
    {
      sub_22BB0561C(319, &qword_281424100, &qword_27D8DF3C0, &qword_22BB220E0);
      if (v3 <= 0x3F)
      {
        sub_22BB05670(319);
        if (v4 <= 0x3F)
        {
          sub_22BB05704();
          if (v5 <= 0x3F)
          {
            sub_22BB0575C(319, &qword_2814240F8, MEMORY[0x277D83B88]);
            if (v6 <= 0x3F)
            {
              sub_22BB057A8(319, &qword_2814250A8, MEMORY[0x277D747A8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_22BB1EC9C();
                if (v8 <= 0x3F)
                {
                  sub_22BB1EC5C();
                  if (v9 <= 0x3F)
                  {
                    sub_22BB1EC7C();
                    if (v10 <= 0x3F)
                    {
                      sub_22BB057A8(319, &unk_281424158, MEMORY[0x277D85578], MEMORY[0x277D83940]);
                      if (v11 <= 0x3F)
                      {
                        sub_22BB1F0BC();
                        if (v12 <= 0x3F)
                        {
                          sub_22BB0580C(319);
                          if (v13 <= 0x3F)
                          {
                            sub_22BB1EE9C();
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
}

void sub_22BB0561C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22BB1FA1C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22BB05670(uint64_t a1)
{
  if (!qword_281424118)
  {
    sub_22BB1EADC();
    sub_22BACFADC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
    v1 = sub_22BB1F88C();
    if (!v2)
    {
      atomic_store(v1, &qword_281424118);
    }
  }
}

void sub_22BB05704()
{
  if (!qword_281424108)
  {
    v0 = sub_22BB1F88C();
    if (!v1)
    {
      atomic_store(v0, &qword_281424108);
    }
  }
}

void sub_22BB0575C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22BB1FA1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22BB057A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BB0580C(uint64_t a1)
{
  if (!qword_281424120)
  {
    sub_22BB1E67C();
    sub_22BACFADC(&qword_281425110, MEMORY[0x277D74500], MEMORY[0x277D74518]);
    v1 = sub_22BB1F88C();
    if (!v2)
    {
      atomic_store(v1, &qword_281424120);
    }
  }
}

uint64_t sub_22BB058A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BB058C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t _s14descr283F6AF29O17RequestParametersV10ComponentsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr283F6AF29O17RequestParametersV10ComponentsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s14descr283F6AF29O17RequestParametersV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr283F6AF29O17RequestParametersV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BB05AC4()
{
  result = qword_27D8DF4D8;
  if (!qword_27D8DF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4D8);
  }

  return result;
}

unint64_t sub_22BB05B1C()
{
  result = qword_27D8DF4E0;
  if (!qword_27D8DF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4E0);
  }

  return result;
}

unint64_t sub_22BB05B74()
{
  result = qword_27D8DF4E8;
  if (!qword_27D8DF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4E8);
  }

  return result;
}

unint64_t sub_22BB05BCC()
{
  result = qword_27D8DF4F0;
  if (!qword_27D8DF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4F0);
  }

  return result;
}

unint64_t sub_22BB05C24()
{
  result = qword_27D8DF4F8;
  if (!qword_27D8DF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF4F8);
  }

  return result;
}

unint64_t sub_22BB05C7C()
{
  result = qword_27D8DF500;
  if (!qword_27D8DF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF500);
  }

  return result;
}

uint64_t sub_22BB05CD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000022BB27960 == a2;
  if (v3 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022BB27980 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697463617266 && a2 == 0xEF656C6269736956 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973695661657261 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_22BB1FD9C();

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

uint64_t sub_22BB05E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F656D6974 && a2 == 0xE700000000000000;
  if (v4 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696C646165645FLL && a2 == 0xE900000000000065 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB279A0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022BB279C0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB279E0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022BB27A00 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022BB27A20 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022BB27A40 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022BB27A60 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB27A80 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x800000022BB27AA0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022BB27AD0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x476564756C636E69 && a2 == 0xEF797274656D6F65 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022BB27AF0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022BB27B10 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022BB27B30 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6974704F74786574 && a2 == 0xEB00000000736E6FLL || (sub_22BB1FD9C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEE00736569746976 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEF746E65746E6F43 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022BB27B50 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6E6F436567616D69 && a2 == 0xEC000000746E6574 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022BB27B70 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB27B90 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022BB27BB0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB27BD0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022BB27BF0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022BB27C10 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000023 && 0x800000022BB27C40 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BB27C70 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BB27C90 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x4F646E616D6D6F63 && a2 == 0xEE00736E6F697470)
  {

    return 30;
  }

  else
  {
    v6 = sub_22BB1FD9C();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
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

unint64_t sub_22BB068B4()
{
  result = qword_27D8DF528;
  if (!qword_27D8DF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF528);
  }

  return result;
}

uint64_t sub_22BB06924(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22BB1FD9C() & 1;
  }
}

unint64_t sub_22BB0697C()
{
  result = qword_27D8DF530;
  if (!qword_27D8DF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF530);
  }

  return result;
}

unint64_t sub_22BB069D0()
{
  result = qword_27D8DF538;
  if (!qword_27D8DF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF538);
  }

  return result;
}

uint64_t sub_22BB06A24(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22BB041D4(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22BB1F74C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22BB041D4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22BB041D4(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_22BB1F74C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_22BB06EF4(uint64_t a1, void *a2, void *a3)
{
  v36 = a2;
  v37 = a3;
  v4 = sub_22BB1F52C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22BB1F56C();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F5BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = _s17AsyncProviderTaskVMa(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v35 = &v34 - v19;
  sub_22BB1F0DC();
  v38 = a1;
  sub_22BAC8A94(v10, 0xD000000000000017, 0x800000022BB27DC0, v13);
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_22BAC81E8(v13, &qword_27D8DF048, &unk_22BB216E0);
  }

  v21 = v35;
  sub_22BACDEBC(v13, v35);
  sub_22BAC9EBC(v21, v17);
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_22BACDEBC(v17, v25 + v22);
  v26 = (v25 + v23);
  v28 = v36;
  v27 = v37;
  *v26 = v36;
  v26[1] = v27;
  *(v25 + v24) = v38;
  aBlock[4] = sub_22BB074EC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAC37D4;
  aBlock[3] = &block_descriptor_3;
  v29 = _Block_copy(aBlock);
  v30 = v28;
  v27;

  v31 = v39;
  sub_22BB1F54C();
  v45 = MEMORY[0x277D84F90];
  sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC836C(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
  v32 = v41;
  v33 = v44;
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v31, v32, v29);
  _Block_release(v29);
  (*(v43 + 8))(v32, v33);
  (*(v40 + 8))(v31, v42);
  sub_22BAC9F20(v21);
}

void sub_22BB07434(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = sub_22BB07588(a4, a2, a3);
  if (qword_281424D70 != -1)
  {
    v4 = swift_once();
  }

  v5 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](v4);
  os_unfair_lock_lock((v5 + 40));
  sub_22BACB55C((v5 + 16));
  os_unfair_lock_unlock((v5 + 40));
}

void sub_22BB074EC()
{
  v1 = *(_s17AsyncProviderTaskVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + v4);

  sub_22BB07434(v0 + v2, v6, v7, v8);
}

uint64_t sub_22BB07588(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21[-v6];
  v8 = sub_22BB1EA5C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [a2 connectedIdentities];
  sub_22BAC83C0(0, &qword_2814240C0, 0x277D0ACF0);
  sub_22BB0787C();
  v14 = sub_22BB1F84C();

  v15 = a2;
  v16 = a3;
  sub_22BB07FDC(v14, v15);

  sub_22BB1EA4C();
  sub_22BB1EA0C();
  sub_22BB1F0FC();
  v17 = sub_22BB1F2EC();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  sub_22BB1EA3C();
  if (qword_281424D70 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF300, &qword_22BB21FD8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22BB20A70;
  (*(v9 + 16))(v19 + v18, v12, v8);
  sub_22BAE6F48(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_22BB0787C()
{
  result = qword_27D8DF580;
  if (!qword_27D8DF580)
  {
    sub_22BAC83C0(255, &qword_2814240C0, 0x277D0ACF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF580);
  }

  return result;
}

void sub_22BB078E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_22BB1F21C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF588, &unk_22BB22BE0);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v35 - v7;
  v35 = sub_22BB1E82C();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BB1E80C();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 isMainDisplay];
  v17 = MEMORY[0x277D74608];
  if (v16 && ![a1 isExternal])
  {
    v17 = MEMORY[0x277D74600];
  }

  v18 = [a1 hardwareIdentifier];
  if (v18)
  {
    v19 = v18;
    sub_22BB1F68C();
  }

  v20 = [a1 isCarDisplay];
  v21 = MEMORY[0x277D745F0];
  if (!v20)
  {
    v21 = MEMORY[0x277D745F8];
  }

  (*(v12 + 104))(v15, *v21, v11);
  (*(v8 + 104))(v10, *v17, v35);
  [a1 bounds];
  v46 = v22;
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = 0;
  [a1 pointScale];
  sub_22BB1E87C();
  sub_22BB1F1EC();
  v26 = [a1 name];
  sub_22BB1F68C();

  v27 = [a1 hardwareIdentifier];
  if (v27)
  {
    v28 = v27;
    sub_22BB1F68C();
  }

  [a1 pointScale];
  [a1 bounds];
  v29 = *(MEMORY[0x277CD9DE8] + 80);
  v42 = *(MEMORY[0x277CD9DE8] + 64);
  v43 = v29;
  v30 = *(MEMORY[0x277CD9DE8] + 112);
  v44 = *(MEMORY[0x277CD9DE8] + 96);
  v45 = v30;
  v31 = *(MEMORY[0x277CD9DE8] + 16);
  v38 = *MEMORY[0x277CD9DE8];
  v39 = v31;
  v32 = *(MEMORY[0x277CD9DE8] + 48);
  v40 = *(MEMORY[0x277CD9DE8] + 32);
  v41 = v32;
  v33 = v36;
  sub_22BB1F23C();
  v34 = sub_22BB1F2AC();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  sub_22BB1E85C();
}

id sub_22BB07D64()
{
  v0 = sub_22BB1F8EC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_22BB1F90C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F56C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  sub_22BAC3744(&unk_2814240D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC836C(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  sub_22BB1F93C();
  return [objc_allocWithZone(MEMORY[0x277D0AD38]) init];
}

void *sub_22BB07FDC(uint64_t a1, void *a2)
{
  v65 = a2;
  v61 = sub_22BB1E93C();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22BB1E88C();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5D0, qword_22BB22830);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = sub_22BB1E96C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v46 - v15;
  v51 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22BB1FACC();
    sub_22BAC83C0(0, &qword_2814240C0, 0x277D0ACF0);
    sub_22BB0787C();
    result = sub_22BB1F87C();
    a1 = v68;
    v17 = v69;
    v18 = v70;
    v19 = v71;
    v20 = v72;
  }

  else
  {
    v21 = -1 << *(a1 + 32);
    v17 = a1 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(a1 + 56);

    v19 = 0;
  }

  v50 = v18;
  v56 = (v6 + 16);
  v55 = *MEMORY[0x277D74668];
  v54 = (v4 + 104);
  v53 = (v6 + 8);
  v63 = (v12 + 48);
  v64 = (v12 + 56);
  v47 = v12;
  v48 = (v12 + 32);
  v24 = (v18 + 64) >> 6;
  v52 = MEMORY[0x277D84F90];
  v57 = v11;
  v62 = v24;
LABEL_8:
  for (i = v19; a1 < 0; v20 = v66)
  {
    v29 = sub_22BB1FAFC();
    if (!v29)
    {
      goto LABEL_28;
    }

    v67 = v29;
    sub_22BAC83C0(0, &qword_2814240C0, 0x277D0ACF0);
    swift_dynamicCast();
    v28 = v73;
    v19 = i;
    v66 = v20;
    if (!v73)
    {
      goto LABEL_28;
    }

LABEL_17:
    v30 = [v65 configurationForIdentity_];
    if (v30)
    {
      v31 = v30;
      v32 = v10;
      v33 = v58;
      sub_22BB078E4(v31, v58);
      [v31 bounds];
      v34 = v60;
      v35 = v17;
      v36 = a1;
      v37 = v59;
      (*v56)(v60, v33, v59);
      (*v54)(v34, v55, v61);
      sub_22BB1E6BC();

      v38 = v33;
      v10 = v32;
      v11 = v57;
      v39 = v37;
      a1 = v36;
      v17 = v35;
      v24 = v62;
      (*v53)(v38, v39);
      (*v64)(v10, 0, 1, v11);
    }

    else
    {
      (*v64)(v10, 1, 1, v11);
    }

    if ((*v63)(v10, 1, v11) != 1)
    {
      v40 = v17;
      v41 = *v48;
      v42 = v46;
      (*v48)(v46, v10, v11);
      v41(v49, v42, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_22BAD34A8(0, v52[2] + 1, 1, v52);
      }

      v44 = v52[2];
      v43 = v52[3];
      v17 = v40;
      if (v44 >= v43 >> 1)
      {
        v52 = sub_22BAD34A8((v43 > 1), v44 + 1, 1, v52);
      }

      v24 = v62;
      v45 = v52;
      v52[2] = v44 + 1;
      result = (v41)(v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v44, v49, v11);
      v20 = v66;
      goto LABEL_8;
    }

    result = sub_22BAC81E8(v10, &unk_27D8DF5D0, qword_22BB22830);
    i = v19;
  }

  v26 = i;
  v27 = v20;
  v19 = i;
  if (v20)
  {
LABEL_13:
    v66 = (v27 - 1) & v27;
    v28 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v27)))));
    if (v28)
    {
      goto LABEL_17;
    }

LABEL_28:
    sub_22BB086F8(a1);
    return v52;
  }

  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_28;
    }

    v27 = *(v17 + 8 * v19);
    ++v26;
    if (v27)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22BB08700(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1F45C();
  MEMORY[0x28223BE20](v4);
  v5 = mach_continuous_time();
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v7 = sub_22BB095B4(a1, a2, 0);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  aBlock[4] = sub_22BB09B8C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BB08CEC;
  aBlock[3] = &block_descriptor_27_0;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  [v10 getDeviceManagementPolicyWithCompletionHandler_];

  _Block_release(v9);
}

uint64_t sub_22BB08A68(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a3;
  v4 = sub_22BB1F35C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F3AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_22BB1F38C();
  sub_22BB1F38C();
  sub_22BB1F39C();
  v15 = a2;
  sub_22BB1F33C();
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_22BACDF8C();
  sub_22BACCE68();
  sub_22BAD381C(v17, v18);
  v19 = sub_22BB1F39C();
  v20 = sub_22BB1F9BC();
  if (sub_22BB1FA0C())
  {
    v21 = swift_slowAlloc();
    v26 = v4;
    v22 = v21;
    *v21 = 134217984;
    *(v21 + 4) = v27;
    v23 = sub_22BB1F34C();
    _os_signpost_emit_with_name_impl(&dword_22BABB000, v19, v20, v23, "PrewarmManagementPolicy", "%{public, signpost.description:begin_time}llu", v22, 0xCu);
    v24 = v22;
    v4 = v26;
    MEMORY[0x23189DF20](v24, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return (v16)(v14, v8);
}

uint64_t sub_22BB08CEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_22BB08D40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{

  v6 = sub_22BB1A2A0(&v8, a1, a2);

  *a3 = v6 & 1;
  return result;
}

void sub_22BB08DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_state);
  os_unfair_lock_lock(v2 + 16);
  sub_22BB097BC(&v2[4]);
  os_unfair_lock_unlock(v2 + 16);
  if (qword_281424D70 != -1)
  {
    v3 = swift_once();
  }

  v4 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](v3);
  os_unfair_lock_lock((v4 + 40));
  sub_22BACB55C((v4 + 16));
  os_unfair_lock_unlock((v4 + 40));
}

unint64_t sub_22BB08E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  *(a1 + 16) = mach_continuous_time();
  *(a1 + 24) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 32);
  result = sub_22BB0EF34(v4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_22BB08F1C()
{
  v0 = sub_22BB1F8EC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_22BB1F90C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F56C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  sub_22BAC3744(&unk_2814240D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC836C(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_281424348 = result;
  return result;
}

uint64_t sub_22BB0917C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F5BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF590, &qword_22BB22918);
  v12 = swift_allocObject();
  *(v12 + 64) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 1;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  v13 = MEMORY[0x277D84FA0];
  *(v12 + 48) = MEMORY[0x277D84F98];
  *(v12 + 56) = v13;
  *(v2 + v11) = v12;
  sub_22BB1F0CC();
  sub_22BB1F10C();
  sub_22BB1F5DC();
  v14 = sub_22BB1F11C();
  (*(*(v14 - 8) + 8))(a1, v14);
  (*(v5 + 8))(v7, v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_deadline, v10, v4);
  return v2;
}

uint64_t sub_22BB09358()
{
  v1 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_deadline;
  v2 = sub_22BB1F5BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManagementPolicyProvider(uint64_t a1)
{
  result = qword_281424320;
  if (!qword_281424320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB09458(uint64_t a1)
{
  result = sub_22BB1F5BC();
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

uint64_t getEnumTagSinglePayload for ManagementPolicyProvider.PolicyStatus(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

id sub_22BB095B4(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22BB1F66C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_22BB1E47C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_22BB096AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BB09714(uint64_t a1)
{
  _s17AsyncProviderTaskVMa(0);
  v3 = *(v1 + 16);

  sub_22BB08DB4(a1, v3);
}

uint64_t sub_22BB097DC()
{
  v0 = sub_22BB1F52C();
  v16 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BB1F56C();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BB1F53C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  (*(v7 + 104))(v9, *MEMORY[0x277D851C8], v6);
  v10 = sub_22BB1F94C();
  (*(v7 + 8))(v9, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000015;
  *(v11 + 24) = 0x800000022BB27EF0;
  aBlock[4] = sub_22BB09B84;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAC37D4;
  aBlock[3] = &block_descriptor_21_0;
  v12 = _Block_copy(aBlock);
  sub_22BB1F54C();
  v17 = MEMORY[0x277D84F90];
  sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC836C(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v5, v2, v12);
  _Block_release(v12);

  (*(v16 + 8))(v2, v0);
  (*(v3 + 8))(v5, v15);
}

uint64_t sub_22BB09BA8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF650, &qword_22BB22C38);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_22BB1EA5C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_22BAC81E8(a1, &unk_27D8DF650, &qword_22BB22C38);
    sub_22BB0E328(a2, v7);
    v13 = sub_22BB1E9DC();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_22BAC81E8(v7, &unk_27D8DF650, &qword_22BB22C38);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_22BB0E9D8(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_22BB1E9DC();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_22BB09DD4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5F0, &qword_22BB22BD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_22BB1E68C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_22BAC81E8(a1, &unk_27D8DF5F0, &qword_22BB22BD8);
    sub_22BB0E4C8(a2, v7, v13);
    v14 = sub_22BB1F2AC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22BAC81E8(v7, &unk_27D8DF5F0, &qword_22BB22BD8);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22BB0F1F0(v12, a2, isUniquelyReferenced_nonNull_native, v17);
    v18 = sub_22BB1F2AC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_22BB0A000(char *a1)
{
  v2 = v1;
  v4 = sub_22BB1EADC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v92 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF630, &qword_22BB22C18);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = &v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF650, &qword_22BB22C38);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v87 - v12;
  v109 = sub_22BB1E9DC();
  v95 = *(v109 - 1);
  MEMORY[0x28223BE20](v109);
  v88 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v107 = &v87 - v16;
  MEMORY[0x28223BE20](v17);
  v108 = &v87 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v87 - v20;
  v110 = sub_22BB1EA5C();
  v97 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v87 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v98 = &v87 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v87 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v87 - v32;
  v34 = sub_22BB1EFBC();
  v111 = v1;
  if ((v34 & 1) == 0)
  {
    sub_22BB1E97C();
    if ((*(v5 + 48))(v33, 1, v4) == 1)
    {
      sub_22BAC81E8(v33, &qword_27D8DEEA0, &qword_22BB20A30);
      v2 = v111;
    }

    else
    {
      v35 = sub_22BB1EA9C();
      v36 = v33;
      v38 = v37;
      (*(v5 + 8))(v36, v4);
      v2 = v111;
      if (v38)
      {
        sub_22BAC96C4(v35, v38, v111);
      }
    }
  }

  v91 = v30;
  v93 = v5;
  v94 = v4;
  v100 = *(v97 + 16);
  v101 = v97 + 16;
  v100(v27, a1, v110);
  v114 = MEMORY[0x277D84F90];
  sub_22BB1E9FC();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v87 - 4) = a1;
  *(&v87 - 3) = v2;
  *(&v87 - 2) = &v114;
  sub_22BB1F7FC();

  v99 = v27;
  sub_22BB1EA0C();
  v96 = v114;
  v40 = *(v114 + 16);
  v41 = v109;
  if (v40)
  {
    v105 = *(v95 + 16);
    v42 = (v96 + ((*(v95 + 80) + 32) & ~*(v95 + 80)));
    v43 = *(v95 + 72);
    v106 = v95 + 16;
    v44 = (v95 + 8);
    v103 = (v97 + 56);
    v104 = v43;
    v102 = (v97 + 48);
    do
    {
      v48 = v13;
      v49 = v105;
      v105(v21, v42, v41);
      v50 = v107;
      v49(v107, v21, v41);
      v51 = v41;
      v52 = v111;
      swift_beginAccess();
      v53 = v108;
      sub_22BACF13C(v108, v50);
      swift_endAccess();
      v54 = *v44;
      (*v44)(v53, v51);
      swift_beginAccess();
      v55 = *(v52 + 56);
      if (*(v55 + 16))
      {
        v56 = sub_22BB19424(v21);
        v13 = v48;
        if (v57)
        {
          v58 = *(v55 + 56) + *(v97 + 72) * v56;
          v59 = v110;
          v100(v48, v58, v110);
          v60 = 0;
        }

        else
        {
          v60 = 1;
          v59 = v110;
        }
      }

      else
      {
        v60 = 1;
        v59 = v110;
        v13 = v48;
      }

      (*v103)(v13, v60, 1, v59);
      swift_endAccess();
      if ((*v102)(v13, 1, v59) == 1)
      {
        sub_22BAC81E8(v13, &unk_27D8DF650, &qword_22BB22C38);
        v45 = v111;
        swift_beginAccess();
        v46 = v98;
        v100(v98, v99, v59);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = *(v45 + 48);
        *(v45 + 48) = 0x8000000000000000;
        sub_22BB0E9D8(v46, v21, isUniquelyReferenced_nonNull_native);
        *(v45 + 48) = v112;
        swift_endAccess();
        v41 = v109;
        v54(v21, v109);
      }

      else
      {
        v41 = v109;
        v54(v21, v109);
        sub_22BAC81E8(v13, &unk_27D8DF650, &qword_22BB22C38);
      }

      v42 += v104;
      --v40;
    }

    while (v40);
  }

  v61 = v90;
  v62 = v99;
  sub_22BB1EA1C();
  v63 = v95;
  if ((*(v95 + 48))(v61, 1, v41) == 1)
  {
    sub_22BAC81E8(v61, &qword_27D8DF630, &qword_22BB22C18);
    v64 = v87;
    v100(v87, v62, v110);
    v65 = v111;
    swift_beginAccess();
    v66 = *(v65 + 16);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *(v65 + 16) = v66;
    v68 = v93;
    v69 = v92;
    v70 = v91;
    if ((v67 & 1) == 0)
    {
      v66 = sub_22BAF609C(0, v66[2] + 1, 1, v66);
      *(v65 + 16) = v66;
    }

    v72 = v66[2];
    v71 = v66[3];
    v73 = v94;
    if (v72 >= v71 >> 1)
    {
      v66 = sub_22BAF609C((v71 > 1), v72 + 1, 1, v66);
    }

    v66[2] = v72 + 1;
    (*(v97 + 32))(v66 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v72, v64, v110);
    *(v65 + 16) = v66;
    swift_endAccess();
  }

  else
  {
    v74 = v88;
    (*(v63 + 32))(v88, v61, v41);
    v107 = *(v63 + 16);
    v75 = v108;
    (v107)(v108, v74, v41);
    v109 = *(v97 + 56);
    v76 = v89;
    v77 = v110;
    (v109)(v89, 1, 1, v110);
    v65 = v111;
    swift_beginAccess();
    sub_22BB09BA8(v76, v75);
    swift_endAccess();
    (v107)(v75, v74, v41);
    v100(v76, v99, v77);
    (v109)(v76, 0, 1, v77);
    swift_beginAccess();
    sub_22BB09BA8(v76, v75);
    swift_endAccess();
    v78 = v74;
    v62 = v99;
    (*(v63 + 8))(v78, v41);
    v73 = v94;
    v68 = v93;
    v69 = v92;
    v70 = v91;
  }

  sub_22BB1E97C();
  if ((*(v68 + 48))(v70, 1, v73) == 1)
  {
    (*(v97 + 8))(v62, v110);
    sub_22BAC81E8(v70, &qword_27D8DEEA0, &qword_22BB20A30);
  }

  else
  {
    (*(v68 + 32))(v69, v70, v73);
    swift_beginAccess();
    v79 = *(v65 + 64);
    if (*(v79 + 16) && (v80 = sub_22BB1927C(v69), (v81 & 1) != 0))
    {
      v82 = *(*(v79 + 56) + 8 * v80);
      swift_endAccess();

      v83 = sub_22BB1E9EC();
      v113 = v82;
      sub_22BAE1D28(v83);
      v84 = v113;
    }

    else
    {
      swift_endAccess();
      v84 = sub_22BB1E9EC();
    }

    swift_beginAccess();
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v112 = *(v65 + 64);
    *(v65 + 64) = 0x8000000000000000;
    sub_22BB0E80C(v84, v69, v85);
    *(v65 + 64) = v112;
    swift_endAccess();
    (*(v68 + 8))(v69, v73);
    (*(v97 + 8))(v62, v110);
  }
}

void *sub_22BB0AC78()
{
  v143 = type metadata accessor for FragmentCollator.PendingRemoteDetails(0);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v131 = &v130 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v155 = &v130 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  MEMORY[0x28223BE20](v4 - 8);
  v134 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v130 - v7;
  v165 = sub_22BB1EADC();
  v9 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v130 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v154 = &v130 - v12;
  v174 = sub_22BB1E96C();
  v13 = *(v174 - 1);
  MEMORY[0x28223BE20](v174);
  v144 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BB1EA5C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v133 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v132 = &v130 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v130 - v21;
  MEMORY[0x28223BE20](v23);
  v148 = &v130 - v24;
  v25 = sub_22BB1E9DC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v137 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v135 = &v130 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v130 - v31;
  MEMORY[0x28223BE20](v33);
  v147 = &v130 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF618, &qword_22BB22C00);
  MEMORY[0x28223BE20](v35 - 8);
  v157 = &v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v156 = &v130 - v38;
  swift_beginAccess();
  v136 = v0;
  v39 = *(v0 + 48);
  v40 = v25;
  v41 = v39 + 64;
  v42 = 1 << *(v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v171 = v43 & *(v39 + 64);
  v138 = (v42 + 63) >> 6;
  v162 = (v26 + 16);
  v150 = v16 + 16;
  v169 = (v26 + 32);
  v166 = (v16 + 32);
  v145 = v13 + 16;
  v146 = v13;
  v44 = (v13 + 8);
  v159 = (v9 + 48);
  v141 = (v9 + 32);
  v140 = (v9 + 16);
  v45 = (v9 + 8);
  v46 = v165;
  v139 = v45;
  v151 = v16;
  v47 = (v16 + 8);
  v48 = v15;
  v49 = v8;
  v158 = v47;
  v152 = v26;
  v160 = (v26 + 8);
  v149 = v39;

  v51 = 0;
  v164 = MEMORY[0x277D84F90];
  v163 = v48;
  v172 = v32;
  v173 = v40;
  v167 = v22;
  v168 = v8;
  v153 = v41;
  while (1)
  {
    v52 = v171;
    if (!v171)
    {
      break;
    }

    v170 = v51;
    v53 = v51;
LABEL_16:
    v171 = (v52 - 1) & v52;
    v56 = __clz(__rbit64(v52)) | (v53 << 6);
    v57 = v149;
    v58 = v152;
    (*(v152 + 16))(v147, *(v149 + 48) + *(v152 + 72) * v56, v173);
    v59 = *(v57 + 56);
    v60 = v151;
    v61 = v148;
    (*(v151 + 16))(v148, v59 + *(v151 + 72) * v56, v48);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF620, &unk_22BB22C08);
    v63 = *(v62 + 48);
    v64 = v157;
    (*(v58 + 32))();
    v65 = &v64[v63];
    v48 = v163;
    (*(v60 + 32))(v65, v61, v163);
    (*(*(v62 - 8) + 56))(v64, 0, 1, v62);
    v22 = v167;
    v49 = v168;
    v46 = v165;
    v32 = v172;
LABEL_17:
    v66 = v64;
    v67 = v156;
    sub_22BAD7044(v66, v156, &qword_27D8DF618, &qword_22BB22C00);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF620, &unk_22BB22C08);
    if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
    {

      v92 = v136;
      swift_beginAccess();

      v94 = sub_22BACEEDC(v93);
      swift_beginAccess();
      if (*(*(v92 + 40) + 16) <= *(v94 + 16) >> 3)
      {
        v175 = v94;

        sub_22BB0F7AC(v97);

        v96 = v175;
      }

      else
      {

        v96 = sub_22BB0F9C8(v95, v94);
      }

      v98 = 0;
      v99 = 1 << *(v96 + 32);
      v100 = -1;
      if (v99 < 64)
      {
        v100 = ~(-1 << v99);
      }

      v101 = v100 & *(v96 + 56);
      v102 = (v99 + 63) >> 6;
      v174 = MEMORY[0x277D84F90];
      while (v101)
      {
LABEL_42:
        v104 = __clz(__rbit64(v101));
        v101 &= v101 - 1;
        v105 = v152;
        v106 = *(v152 + 16);
        v107 = v135;
        v108 = v173;
        v106(v135, *(v96 + 48) + *(v152 + 72) * (v104 | (v98 << 6)), v173);
        v109 = *(v105 + 32);
        v110 = v137;
        v109(v137, v107, v108);
        v111 = v136;
        swift_beginAccess();
        v112 = *(v111 + 56);
        if (*(v112 + 16) && (v113 = sub_22BB19424(v110), (v114 & 1) != 0))
        {
          v115 = *(v112 + 56);
          v116 = v151;
          v117 = v133;
          v118 = v163;
          (*(v151 + 16))(v133, v115 + *(v151 + 72) * v113, v163);
          v119 = v132;
          (*(v116 + 32))(v132, v117, v118);
          swift_endAccess();
          v120 = v134;
          sub_22BB1E97C();
          v121 = v120;
          if ((*v159)(v120, 1, v165) == 1)
          {
            (*v158)(v119, v118);
            (*v160)(v137, v173);
            result = sub_22BAC81E8(v120, &qword_27D8DEEA0, &qword_22BB20A30);
          }

          else
          {
            v122 = v130;
            v123 = v121;
            v124 = v165;
            (*v141)(v130, v123, v165);
            v125 = v131;
            v106(v131, v137, v173);
            v126 = v143;
            (*v140)(v125 + *(v143 + 20), v122, v124);
            *(v125 + *(v126 + 24)) = sub_22BB1E9FC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v174 = sub_22BAF60C4(0, v174[2] + 1, 1, v174);
            }

            v128 = v174[2];
            v127 = v174[3];
            if (v128 >= v127 >> 1)
            {
              v174 = sub_22BAF60C4((v127 > 1), v128 + 1, 1, v174);
            }

            (*v139)(v130, v165);
            (*v158)(v119, v163);
            (*v160)(v137, v173);
            v129 = v174;
            v174[2] = v128 + 1;
            result = sub_22BABE43C(v131, v129 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v128, type metadata accessor for FragmentCollator.PendingRemoteDetails);
          }
        }

        else
        {
          swift_endAccess();
          result = (*v160)(v110, v173);
        }
      }

      while (1)
      {
        v103 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_53;
        }

        if (v103 >= v102)
        {

          return v164;
        }

        v101 = *(v96 + 56 + 8 * v103);
        ++v98;
        if (v101)
        {
          v98 = v103;
          goto LABEL_42;
        }
      }
    }

    v69 = *(v68 + 48);
    (*v169)(v32, v67, v173);
    (*v166)(v22, v67 + v69, v48);
    v176 = MEMORY[0x277D84F90];
    v70 = sub_22BB1E9FC();
    v71 = *(v70 + 16);
    if (v71)
    {
      v72 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v161 = v70;
      v73 = v70 + v72;
      v74 = *(v146 + 72);
      v75 = *(v146 + 16);
      v76 = v174;
      v77 = v172;
      v78 = v144;
      do
      {
        v79 = v75(v78, v73, v76);
        MEMORY[0x28223BE20](v79);
        *(&v130 - 2) = v77;
        *(&v130 - 1) = &v176;
        sub_22BB1E7CC();
        v76 = v174;
        (*v44)(v78, v174);
        v73 += v74;
        --v71;
      }

      while (v71);

      v46 = v165;
      v48 = v163;
      v22 = v167;
      v49 = v168;
    }

    else
    {
    }

    sub_22BB1E97C();
    v80 = (*v159)(v49, 1, v46);
    v81 = v173;
    v41 = v153;
    if (v80 == 1)
    {
      (*v158)(v22, v48);
      sub_22BAC81E8(v49, &qword_27D8DEEA0, &qword_22BB20A30);
    }

    else
    {
      v82 = v48;
      v83 = v154;
      (*v141)(v154, v49, v46);
      v84 = v46;
      v85 = v155;
      (*v162)(v155, v172, v81);
      v86 = v143;
      (*v140)(v85 + *(v143 + 20), v83, v84);
      *(v85 + *(v86 + 24)) = v176;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v164 = sub_22BAF60C4(0, v164[2] + 1, 1, v164);
      }

      v88 = v164[2];
      v87 = v164[3];
      v46 = v84;
      if (v88 >= v87 >> 1)
      {
        v164 = sub_22BAF60C4((v87 > 1), v88 + 1, 1, v164);
      }

      v22 = v167;
      (*v139)(v154, v84);
      (*v158)(v22, v82);
      v89 = v164;
      v164[2] = v88 + 1;
      v90 = v89 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v88;
      v48 = v82;
      sub_22BABE43C(v155, v90, type metadata accessor for FragmentCollator.PendingRemoteDetails);
      v49 = v168;
      v81 = v173;
    }

    v32 = v172;
    result = (*v160)(v172, v81);
    v51 = v170;
  }

  if (v138 <= v51 + 1)
  {
    v54 = v51 + 1;
  }

  else
  {
    v54 = v138;
  }

  v55 = v54 - 1;
  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= v138)
    {
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF620, &unk_22BB22C08);
      v64 = v157;
      (*(*(v91 - 8) + 56))(v157, 1, 1, v91);
      v170 = v55;
      v171 = 0;
      goto LABEL_17;
    }

    v52 = *(v41 + 8 * v53);
    ++v51;
    if (v52)
    {
      v170 = v53;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_22BB0BDCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF660, &unk_22BB22C70);
    v2 = sub_22BB1FC2C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22BABDE24(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22BAEEDE4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22BAEEDE4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22BAEEDE4(v31, v32);
    result = sub_22BB1FB0C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_22BAEEDE4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22BB0C094(uint64_t a1)
{
  v2 = sub_22BB1E93C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_22BB1E95C();
}

uint64_t sub_22BB0C15C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t, __n128)@<X1>, uint64_t a3@<X2>, size_t *a4@<X3>, char *a5@<X8>)
{
  v112 = a4;
  v133 = a3;
  v128 = a2;
  v136 = a5;
  v113 = sub_22BB1E9DC();
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22BB1E9AC();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v119 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF588, &unk_22BB22BE0);
  MEMORY[0x28223BE20](v8 - 8);
  v110 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v105 - v11;
  v12 = sub_22BB1F2AC();
  v121 = *(v12 - 8);
  v122 = v12;
  MEMORY[0x28223BE20](v12);
  v105 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v105 - v15;
  v16 = sub_22BB1EC7C();
  v131 = *(v16 - 8);
  v132 = v16;
  MEMORY[0x28223BE20](v16);
  v129 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v130 = &v105 - v19;
  v118 = sub_22BB1EADC();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v106 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  MEMORY[0x28223BE20](v21 - 8);
  v116 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v124 = &v105 - v24;
  v25 = sub_22BB1E88C();
  v126 = *(v25 - 8);
  v127 = v25;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22BB1E93C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v115 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v123 = &v105 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v105 - v33;
  v134 = sub_22BB1E91C();
  v35 = *(v134 - 1);
  v36 = MEMORY[0x28223BE20](v134);
  v38 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v28 + 16);
  v135 = a1;
  v39(v34, a1, v27, v36);
  v40 = *(v28 + 88);
  v41 = v40(v34, v27);
  if (v41 != *MEMORY[0x277D74670])
  {
    v134 = *(v28 + 8);
    v134(v34, v27);
    v55 = v123;
    (v39)(v123, v135, v27);
    v56 = v27;
    if (v40(v55, v27) == *MEMORY[0x277D74668])
    {
      v128 = v39;
      v134 = (v28 + 16);
      (*(v28 + 96))(v55, v27);
      (*(v126 + 32))(v125, v55, v127);
      v57 = v133;
      v58 = sub_22BB1F00C();
      v59 = v135;
      if (v58)
      {
        v60 = sub_22BB1E86C();
        if (v61 >> 60 != 15)
        {
          v62 = v60;
          v63 = v61;
          __swift_project_boxed_opaque_existential_1((v57 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider), *(v57 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider + 24));
          v64 = sub_22BB1E7FC();
          sub_22BAF0A40(v62, v63, v64, v65, v57);

          sub_22BB13DE8(v62, v63);
        }
      }

      v66 = v130;
      sub_22BB1EF7C();
      v68 = v131;
      v67 = v132;
      v69 = v129;
      (*(v131 + 104))(v129, *MEMORY[0x277D74820], v132);
      sub_22BADBCE0(&qword_281425098, MEMORY[0x277D74850], MEMORY[0x277D74860]);
      v70 = sub_22BB1F65C();
      v71 = *(v68 + 8);
      v71(v69, v67);
      v71(v66, v67);
      if (v70)
      {
        (*(v126 + 8))(v125, v127);
      }

      else
      {
        v95 = v110;
        v96 = v125;
        sub_22BB1E84C();
        v98 = v121;
        v97 = v122;
        if ((*(v121 + 48))(v95, 1, v122) == 1)
        {
          (*(v126 + 8))(v96, v127);
          sub_22BAC81E8(v95, &qword_27D8DF588, &unk_22BB22BE0);
        }

        else
        {
          v103 = v105;
          (*(v98 + 32))(v105, v95, v97);
          sub_22BB14290(v103, v57);
          (*(v98 + 8))(v103, v97);
          (*(v126 + 8))(v96, v127);
        }
      }
    }

    else
    {
      v134(v55, v27);
      v72 = v115;
      v59 = v135;
      (v39)(v115, v135, v56);
      if (v40(v72, v56) != *MEMORY[0x277D74658])
      {
        v134(v72, v56);
        return (v39)(v136, v59, v56);
      }

      v128 = v39;
      v134 = (v28 + 16);
      (*(v28 + 96))(v72, v56);
      v73 = v107;
      v74 = v108;
      (*(v107 + 32))(v119, v72, v108);
      v75 = v109;
      sub_22BB1E99C();
      v76 = v112;
      v77 = *v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v76 = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = sub_22BAF634C(0, v77[2] + 1, 1, v77);
        *v76 = v77;
      }

      v80 = v77[2];
      v79 = v77[3];
      if (v80 >= v79 >> 1)
      {
        *v76 = sub_22BAF634C((v79 > 1), v80 + 1, 1, v77);
      }

      (*(v73 + 8))(v119, v74);
      v81 = *v76;
      *(v81 + 16) = v80 + 1;
      (*(v111 + 32))(v81 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v80, v75, v113);
    }

    v39 = v128;
    return (v39)(v136, v59, v56);
  }

  LODWORD(v135) = v41;
  v42 = v27;
  (*(v28 + 96))(v34, v27);
  v127 = *(v35 + 32);
  v127(v38, v34, v134);
  sub_22BB1E97C();
  sub_22BB1E8DC();
  v43 = sub_22BB1E8AC();
  v45 = v133;
  v46 = v38;
  if (v44)
  {
    v47 = v43;
    v48 = v44;
    swift_beginAccess();
    sub_22BB1A2A0(v137, v47, v48);
    swift_endAccess();
  }

  v49 = sub_22BB1E8FC();
  v128 = v42;
  if ((v49 & 1) == 0)
  {
    goto LABEL_23;
  }

  v50 = v45;
  v51 = v116;
  sub_22BB1E8CC();
  v52 = v117;
  v53 = v118;
  if ((*(v117 + 48))(v51, 1, v118) == 1)
  {
    sub_22BAC81E8(v51, &qword_27D8DEEA0, &qword_22BB20A30);
    v54 = v50;
  }

  else
  {
    v82 = v106;
    (*(v52 + 32))(v106, v51, v53);
    if (sub_22BB1EA8C() & 1) != 0 || (sub_22BB1EACC())
    {
      (*(v52 + 8))(v82, v53);
      goto LABEL_23;
    }

    v104 = sub_22BB1EA7C();
    (*(v52 + 8))(v82, v53);
    v54 = v50;
    if (v104)
    {
      goto LABEL_23;
    }
  }

  *(v54 + 32) = 1;
LABEL_23:
  v83 = v130;
  sub_22BB1EF9C();
  v85 = v131;
  v84 = v132;
  v86 = v46;
  v87 = v129;
  (*(v131 + 104))(v129, *MEMORY[0x277D74820], v132);
  sub_22BADBCE0(&qword_281425098, MEMORY[0x277D74850], MEMORY[0x277D74860]);
  v88 = sub_22BB1F65C();
  v89 = *(v85 + 8);
  v90 = v87;
  v91 = v86;
  v89(v90, v84);
  v89(v83, v84);
  if ((v88 & 1) == 0)
  {
    v92 = v120;
    sub_22BB1E8EC();
    v94 = v121;
    v93 = v122;
    if ((*(v121 + 48))(v92, 1, v122) == 1)
    {
      sub_22BAC81E8(v92, &qword_27D8DF588, &unk_22BB22BE0);
    }

    else
    {
      v99 = v114;
      (*(v94 + 32))(v114, v92, v93);
      sub_22BB14290(v99, v133);
      v100 = v99;
      v91 = v86;
      (*(v94 + 8))(v100, v93);
    }
  }

  v101 = v136;
  v127(v136, v91, v134);
  return (*(v28 + 104))(v101, v135, v128);
}

uint64_t sub_22BB0D008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v27 = a4;
  v28 = a3;
  v26 = a2;
  v5 = sub_22BB1E9DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1E93C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BB1E9AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_22BB1E94C();
  if ((*(v10 + 88))(v12, v9) != *MEMORY[0x277D74658])
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v10 + 96))(v12, v9);
  (*(v14 + 32))(v16, v12, v13);
  sub_22BB1E99C();
  v17 = sub_22BB1E9CC();
  (*(v6 + 8))(v8, v5);
  if ((v17 & 1) == 0)
  {
    return (*(v14 + 8))(v16, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2D0, &unk_22BB227F0);
  v18 = sub_22BB1E96C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22BB20A70;
  (*(v19 + 16))(v21 + v20, v25, v18);
  v22 = sub_22BB1E75C();
  v29 = v21;
  sub_22BAE1E48(v22);
  (*(v14 + 8))(v16, v13);
  *v27 = v29;
}

uint64_t sub_22BB0D394()
{

  sub_22BAD2FB8(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent16FragmentCollatorP33_6BE94AAF2C91BC919D389B27AF47AB7925FragmentResolutionContext_snapshotter, type metadata accessor for Snapshotter);

  return swift_deallocClassInstance();
}

uint64_t sub_22BB0D434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned int (**a5)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v20 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = swift_projectBox();
  swift_beginAccess();
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  swift_beginAccess();
  sub_22BAD6B34(v15, v14, &qword_27D8DF5E0, &qword_22BB22BC8);
  sub_22BADBCD0(v16, v17);
  sub_22BAD7C38(a1, a2, v16, v17, v14, a5, v20, a7);
  sub_22BADBD28(v16, v17);
  return sub_22BAC81E8(v14, &qword_27D8DF5E0, &qword_22BB22BC8);
}

uint64_t sub_22BB0D58C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BB1F5BC();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Snapshotter(0);
  MEMORY[0x28223BE20](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BB1F11C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84FA0];
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = v15;
  *(v3 + 32) = 0;
  *(v3 + 40) = v15;
  *(v3 + 48) = sub_22BAF6C50(v14);
  *(v3 + 56) = sub_22BAF6C50(v14);
  v16 = sub_22BAF6E70(v14);
  v17 = MEMORY[0x277D84F98];
  *(v3 + 64) = v16;
  *(v3 + 72) = v17;
  v30 = v11;
  v18 = *(v11 + 16);
  v18(v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_request, a1, v10);
  v35 = a2;
  sub_22BAD6B34(a2, &v36, &qword_27D8DF640, &qword_22BB22C28);
  if (v37)
  {
    sub_22BAD7560(&v36, &v38);
  }

  else
  {
    v39 = type metadata accessor for EmbeddedWindowVisibilityProvider(0);
    v40 = &off_283F6BA70;
    v18(v13, a1, v10);
    swift_allocObject();
    *&v38 = sub_22BAF03B8(v13);
    if (v37)
    {
      sub_22BAC81E8(&v36, &qword_27D8DF640, &qword_22BB22C28);
    }
  }

  sub_22BAD7560(&v38, v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider);
  v18(v13, a1, v10);
  type metadata accessor for ManagementPolicyProvider(0);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_managementPolicyProvider) = sub_22BB0917C(v13);
  v18(v13, a1, v10);
  v19 = a1;
  v20 = v31;
  v21 = *(v31 + 24);
  v22 = sub_22BAF6A30(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF648, &qword_22BB22C30);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = v22;
  *&v9[v21] = v23;
  v18(&v9[*(v20 + 20)], v13, v10);
  sub_22BB1F0CC();
  v24 = v32;
  sub_22BB1F10C();
  sub_22BB1F5DC();
  (*(v33 + 8))(v24, v34);
  v25 = *(v30 + 8);
  v25(v13, v10);
  sub_22BABE43C(v9, v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_snapshotter, type metadata accessor for Snapshotter);
  if (sub_22BB1EF1C())
  {
    v26 = sub_22BB07D64();
    v28 = v27;
    sub_22BB06EF4(v3, v26, v27);
  }

  else if (sub_22BB1F00C())
  {
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider), *(v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider + 24));
    sub_22BAF05A8();
  }

  sub_22BAC81E8(v35, &qword_27D8DF640, &qword_22BB22C28);
  v25(v19, v10);
  return v3;
}

char *sub_22BB0DA2C()
{

  v1 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_request;
  v2 = sub_22BB1F11C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider));

  sub_22BAD2FB8(v0 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_snapshotter, type metadata accessor for Snapshotter);
  return v0;
}

uint64_t sub_22BB0DB08()
{
  sub_22BB0DA2C();

  return swift_deallocClassInstance();
}

uint64_t sub_22BB0DB88(uint64_t a1)
{
  result = sub_22BB1F11C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Snapshotter(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_22BB0DC94(uint64_t a1)
{
  result = type metadata accessor for Snapshotter(319);
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

uint64_t sub_22BB0DD78(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_22BB0DDD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
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

BOOL sub_22BB0DE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v45 = a2;
  v3 = sub_22BB1E93C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = sub_22BB1E91C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  sub_22BB1E94C();
  v15 = *(v4 + 88);
  v16 = v15(v8, v3);
  if (v16 != *MEMORY[0x277D74670])
  {
    goto LABEL_14;
  }

  v17 = v16;
  v18 = *(v4 + 96);
  v40 = v4 + 96;
  v41 = v15;
  v39 = v18;
  v18(v8, v3);
  v38 = *(v10 + 32);
  v38(v14, v8, v9);
  v19 = sub_22BB1E8AC();
  if (!v20)
  {
    (*(v10 + 8))(v14, v9);
    return 0;
  }

  v42 = v14;
  v43 = v9;
  v21 = v47;
  if (!*(v47 + 16))
  {

    goto LABEL_12;
  }

  v37 = sub_22BAD6B9C(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_12:
    (*(v10 + 8))(v42, v43);
    return 0;
  }

  v37 = *(*(v21 + 56) + 8 * v37);
  v8 = v46;
  sub_22BB1E94C();
  if (v41(v8, v3) != v17)
  {
    (*(v10 + 8))(v42, v43);
LABEL_14:
    (*(v4 + 8))(v8, v3);
    return 0;
  }

  v39(v8, v3);
  v24 = v43;
  v25 = v44;
  v38(v44, v8, v43);
  v26 = sub_22BB1E8AC();
  if (!v27)
  {
    v34 = *(v10 + 8);
    v34(v25, v24);
    v34(v42, v24);
    return 0;
  }

  if (*(v21 + 16))
  {
    v28 = sub_22BAD6B9C(v26, v27);
    v30 = v29;

    if (v30)
    {
      v31 = *(*(v21 + 56) + 8 * v28);
      v32 = *(v10 + 8);
      v32(v25, v24);
      v32(v42, v24);
      return v31 < v37;
    }
  }

  else
  {
  }

  v35 = *(v10 + 8);
  v35(v25, v24);
  v35(v42, v24);
  return 0;
}

unint64_t sub_22BB0E2A4()
{
  result = qword_27D8DF5A0;
  if (!qword_27D8DF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF5A0);
  }

  return result;
}

uint64_t sub_22BB0E2F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22BB0E328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_22BB19424(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22BAEB86C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22BB1E9DC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_22BB1EA5C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_22BAEAD50(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_22BB1EA5C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_22BB0E4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = v3;
  v6 = sub_22BB19350(a1, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22BAECC04();
      v10 = v23;
    }

    v11 = *(v10 + 48);
    v12 = sub_22BB1F2AC();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = *(v10 + 56);
    v14 = sub_22BB1E68C();
    v22 = *(v14 - 8);
    v15.n128_f64[0] = (*(v22 + 32))(a2, v13 + *(v22 + 72) * v8, v14);
    sub_22BAEB094(v8, v10, v15);
    *v4 = v10;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v14;
  }

  else
  {
    v20 = sub_22BB1E68C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22BB0E668(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = _s17AsyncProviderTaskVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_22BACDF20(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_22BAEB618();
      goto LABEL_7;
    }

    sub_22BAE8950(v16, a3 & 1);
    v21 = sub_22BACDF20(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22BABE3D4(a2, v10, _s17AsyncProviderTaskVMa);
      return sub_22BB0F41C(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_22BB0E80C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22BB1EADC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22BB1927C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22BAEB858();
      goto LABEL_7;
    }

    sub_22BAE8CD8(v17, a3 & 1);
    v22 = sub_22BB1927C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22BB0F4D0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_22BB0E9D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22BB1E9DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22BB19424(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22BAEB86C();
      goto LABEL_7;
    }

    sub_22BAE8CEC(v17, a3 & 1);
    v28 = sub_22BB19424(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22BB0F6AC(v14, v11, a1, v20, MEMORY[0x277D746D8], MEMORY[0x277D746F8]);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_22BB1EA5C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_22BB0EC04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22BAD6B9C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22BAE9578(v16, a4 & 1);
      result = sub_22BAD6B9C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22BAEBAE8();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_22BB0ED68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22BB1F2EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22BACB688(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22BAEC3A0();
      goto LABEL_7;
    }

    sub_22BAE9F74(v17, a3 & 1);
    v22 = sub_22BACB688(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22BB0F588(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_22BB0EF34(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22BAD6B9C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22BAEA350(v16, a4 & 1);
      result = sub_22BAD6B9C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22BAEC8F8();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

_OWORD *sub_22BB0F0A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22BAD6B9C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22BAECA60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22BAEA5F0(v16, a4 & 1);
    v11 = sub_22BAD6B9C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_22BB1FDBC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_22BAEEDE4(a1, v22);
  }

  else
  {
    sub_22BB0F640(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_22BB0F1F0(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v9 = sub_22BB1F2AC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_22BB19350(a2, v11);
  v18 = v14[2];
  v19 = (v15 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v15;
  v22 = v14[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_22BAECC04();
      goto LABEL_7;
    }

    sub_22BAEA8A8(v20, a3 & 1, v17);
    v32 = sub_22BB19350(a2, v31);
    if ((v21 & 1) == (v33 & 1))
    {
      v16 = v32;
      v23 = *v5;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v10 + 16))(v13, a2, v9);
      return sub_22BB0F6AC(v16, v13, a1, v23, MEMORY[0x277D74928], MEMORY[0x277D74538]);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v5;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = sub_22BB1E68C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 40);
  v28 = v25;
  v29 = v24 + *(v26 + 72) * v16;

  return v27(v29, a1, v28);
}

uint64_t sub_22BB0F41C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = _s17AsyncProviderTaskVMa(0);
  result = sub_22BABE43C(a2, v8 + *(*(v9 - 8) + 72) * a1, _s17AsyncProviderTaskVMa);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22BB0F4D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22BB1EADC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22BB0F588(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22BB1F2EC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_22BB0F640(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22BAEEDE4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22BB0F6AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

void sub_22BB0F7AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF630, &qword_22BB22C18);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_22BB1E9DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_22BAED268(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_22BAC81E8(v5, &qword_27D8DF630, &qword_22BB22C18);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22BB0F9C8(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF630, &qword_22BB22C18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v66 - v9);
  v11 = sub_22BB1E9DC();
  MEMORY[0x28223BE20](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_22BAC81E8(v30, &qword_27D8DF630, &qword_22BB22C18);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_22BADBCE0(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
    v32 = sub_22BB1F61C();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_22BADBCE0(&unk_2814250F0, MEMORY[0x277D746D8], MEMORY[0x277D746E8]);
    v36 = sub_22BB1F65C();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x28223BE20](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_22BAC81E8(v24, &qword_27D8DF630, &qword_22BB22C18);
        a2 = sub_22BB10900(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_22BB1F61C();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_22BB1F65C();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_22BB1F65C();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_22BB1042C(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x23189DF20](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_22BB086F8(v59);
  return a2;
}

void sub_22BB1042C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF630, &qword_22BB22C18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_22BB1E9DC();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_22BAC81E8(v11, &qword_27D8DF630, &qword_22BB22C18);
          v45 = v61;

          sub_22BB10900(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_22BADBCE0(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
        v35 = sub_22BB1F61C();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_22BADBCE0(&unk_2814250F0, MEMORY[0x277D746D8], MEMORY[0x277D746E8]);
        v43 = sub_22BB1F65C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22BB10900(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_22BB1E9DC();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF638, &qword_22BB22C20);
  result = sub_22BB1FB5C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_22BADBCE0(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
    result = sub_22BB1F61C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22BB10C28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22BB10CB4(v3);
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

uint64_t sub_22BB10CC8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_22BB1E96C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t *sub_22BB10DAC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_22BAD3980(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_22BB10E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB10EB0(uint64_t a1, char a2, uint64_t a3)
{
  if (sub_22BB1E8FC())
  {
    return 0;
  }

  if (*(a3 + 33))
  {
    return 0;
  }

  if (*(a3 + 90) != 1)
  {
    return 0;
  }

  v5 = sub_22BB1E8AC();
  if (!v6)
  {
    return 0;
  }

  v7 = *(a3 + 40);
  if (v7[2])
  {
    v8 = sub_22BAD6B9C(v5, v6);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v12 = v7[7];
    v13 = *(v12 + 8 * v8);
    if (v13)
    {
      return 0;
    }

    v14 = 0;
    v17 = v7[8];
    v16 = v7 + 8;
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v15;
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
      v22 = v14;
LABEL_19:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = *(v12 + ((v22 << 9) | (8 * v23))) == 0;
      v25 = __OFADD__(v13, v24);
      v13 += v24;
      if (v25)
      {
        __break(1u);
        return v13 == 1 || a2 == 1;
      }
    }

    while (1)
    {
      v22 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v22 >= v21)
      {
        return v13 == 1 || a2 == 1;
      }

      v20 = v16[v22];
      ++v14;
      if (v20)
      {
        v14 = v22;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

void sub_22BB10FF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v134 = a5;
  v146 = sub_22BB1E93C();
  v9 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v11 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v121 - v13;
  MEMORY[0x28223BE20](v15);
  v127 = (&v121 - v16);
  MEMORY[0x28223BE20](v17);
  v133 = &v121 - v18;
  v145 = sub_22BB1E91C();
  v139 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v125 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = &v121 - v21;
  MEMORY[0x28223BE20](v22);
  v126 = (&v121 - v23);
  MEMORY[0x28223BE20](v24);
  v135 = (&v121 - v25);
  v26 = sub_22BB1E96C();
  v140 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v144 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v142 = &v121 - v29;
  MEMORY[0x28223BE20](v30);
  v148 = &v121 - v31;
  MEMORY[0x28223BE20](v32);
  v147 = &v121 - v33;
  v143 = *(v34 + 72);
  if (!v143)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v143 == -1)
  {
    goto LABEL_104;
  }

  v35 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v143 == -1)
  {
    goto LABEL_105;
  }

  v36 = (a2 - a1) / v143;
  v151 = a1;
  v150 = a4;
  if (v36 >= v35 / v143)
  {
    v39 = v35 / v143 * v143;
    if (a4 < a2 || a2 + v39 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v39 < 1)
    {
      v80 = a4 + v39;
      goto LABEL_101;
    }

    v124 = v11;
    v78 = -v143;
    v135 = (v140 + 16);
    v143 = v9 + 88;
    LODWORD(v138) = *MEMORY[0x277D74670];
    v131 = (v9 + 8);
    v130 = (v9 + 96);
    v128 = (v139 + 32);
    v127 = (v139 + 8);
    v133 = (v140 + 8);
    v79 = a4 + v39;
    v136 = v14;
    v80 = a4 + v39;
    v141 = a4;
    v148 = v78;
    while (1)
    {
      v123 = v80;
      v81 = a2;
      a2 += v78;
      v139 = a2;
      v140 = v81;
      while (1)
      {
        if (v81 <= a1)
        {
          v151 = v81;
          v149 = v123;
          goto LABEL_102;
        }

        v132 = v80;
        v82 = *v135;
        v147 = (v79 + v78);
        v82(v142);
        v83 = v26;
        v84 = a2;
        v85 = v83;
        (v82)(v144, a2);
        sub_22BB1E94C();
        v86 = *v143;
        v87 = v146;
        v88 = (*v143)(v14, v146);
        if (v88 != v138)
        {
          (*v131)(v14, v87);
LABEL_77:
          v113 = 0;
          a2 = v84;
          v26 = v85;
          goto LABEL_81;
        }

        v89 = *v130;
        (*v130)(v14, v87);
        v90 = v137;
        v91 = v14;
        v92 = v145;
        v129 = *v128;
        (v129)(v137, v91, v145);
        v93 = sub_22BB1E8AC();
        if (!v94)
        {
          (*v127)(v90, v92);
          goto LABEL_77;
        }

        v126 = v89;
        if (*(v134 + 16))
        {
          v95 = sub_22BAD6B9C(v93, v94);
          v97 = v96;
          a2 = v139;

          v98 = v137;
          v26 = v85;
          if (v97)
          {
            v99 = *(*(v134 + 56) + 8 * v95);
            v100 = v124;
            sub_22BB1E94C();
            v101 = v146;
            v102 = v86(v100, v146);
            if (v102 == v138)
            {
              v126(v100, v101);
              v103 = v125;
              v104 = v145;
              (v129)();
              v105 = sub_22BB1E8AC();
              if (v106)
              {
                v107 = v134;
                if (*(v134 + 16))
                {
                  v126 = v99;
                  v122 = sub_22BAD6B9C(v105, v106);
                  LODWORD(v129) = v108;

                  v109 = *v127;
                  if (v129)
                  {
                    v110 = *(*(v107 + 56) + 8 * v122);
                    v111 = v103;
                    v112 = v145;
                    v109(v111, v145);
                    v109(v137, v112);
                    v113 = v110 < v126;
                    a2 = v139;
                    goto LABEL_81;
                  }

                  a2 = v139;
                }

                else
                {

                  v109 = *v127;
                }

                v119 = v145;
                v109(v103, v145);
                v109(v137, v119);
              }

              else
              {
                v118 = *v127;
                (*v127)(v103, v104);
                v118(v137, v104);
              }
            }

            else
            {
              (*v127)(v137, v145);
              (*v131)(v100, v101);
            }

            goto LABEL_80;
          }
        }

        else
        {
          a2 = v84;

          v98 = v137;
          v26 = v85;
        }

        (*v127)(v98, v145);
LABEL_80:
        v113 = 0;
LABEL_81:
        v114 = &v148[a3];
        v115 = *v133;
        (*v133)(v144, v26);
        v115(v142, v26);
        if (v113)
        {
          break;
        }

        v116 = v147;
        v80 = v147;
        if (a3 < v79 || v114 >= v79)
        {
          a3 = v114;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v117 = a3 == v79;
          a3 = v114;
          if (!v117)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v79 = v80;
        v81 = v140;
        v14 = v136;
        v78 = v148;
        if (v116 <= v141)
        {
          a2 = v140;
          goto LABEL_101;
        }
      }

      if (a3 < v140 || v114 >= v140)
      {
        a3 = v114;
        swift_arrayInitWithTakeFrontToBack();
        v120 = v141;
        v80 = v132;
      }

      else
      {
        v117 = a3 == v140;
        v120 = v141;
        a3 = v114;
        v80 = v132;
        if (!v117)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v14 = v136;
      v78 = v148;
      if (v79 <= v120)
      {
LABEL_101:
        v151 = a2;
        v149 = v80;
        goto LABEL_102;
      }
    }
  }

  v37 = v36 * v143;
  if (a4 < a1 || a1 + v37 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v38 = v133;
  }

  else
  {
    v38 = v133;
    if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v138 = a4 + v37;
  v149 = a4 + v37;
  if (v37 >= 1 && a2 < a3)
  {
    v137 = *(v140 + 16);
    v144 = (v9 + 88);
    LODWORD(v142) = *MEMORY[0x277D74670];
    v131 = (v9 + 96);
    v132 = (v9 + 8);
    v130 = (v139 + 32);
    v128 = (v139 + 8);
    v140 += 16;
    v136 = (v140 - 8);
    v129 = a3;
    while (1)
    {
      v41 = a3;
      v42 = a2;
      v43 = a2;
      v44 = v137;
      (v137)(v147, v42, v26);
      (v44)(v148, a4, v26);
      sub_22BB1E94C();
      v45 = *v144;
      v46 = v146;
      v47 = (*v144)(v38, v146);
      if (v47 != v142)
      {
        (*v132)(v38, v46);
        v74 = v143;
        a2 = v43;
        a3 = v41;
        goto LABEL_42;
      }

      v139 = v43;
      v48 = *v131;
      (*v131)(v38, v46);
      v49 = *v130;
      v50 = v135;
      v51 = v38;
      v52 = v145;
      (*v130)(v135, v51, v145);
      v53 = sub_22BB1E8AC();
      if (!v54)
      {
        (*v128)(v50, v52);
        goto LABEL_36;
      }

      v141 = a4;
      if (!*(v134 + 16))
      {

LABEL_38:
        (*v128)(v135, v145);
LABEL_39:
        a2 = v139;
        a4 = v141;
        goto LABEL_40;
      }

      v55 = sub_22BAD6B9C(v53, v54);
      v57 = v56;

      if ((v57 & 1) == 0)
      {
        goto LABEL_38;
      }

      v58 = *(*(v134 + 56) + 8 * v55);
      v59 = v127;
      sub_22BB1E94C();
      v60 = v146;
      v61 = v45(v59, v146);
      if (v61 != v142)
      {
        (*v128)(v135, v145);
        (*v132)(v59, v60);
        goto LABEL_39;
      }

      v48(v59, v60);
      v62 = v126;
      v63 = v145;
      (v49)(v126, v59, v145);
      v64 = sub_22BB1E8AC();
      a4 = v141;
      if (!v65)
      {
        v76 = *v128;
        (*v128)(v62, v63);
        v76(v135, v63);
LABEL_36:
        a2 = v139;
LABEL_40:
        a3 = v129;
        v38 = v133;
LABEL_41:
        v74 = v143;
LABEL_42:
        v75 = *v136;
        (*v136)(v148, v26);
        v75(v147, v26);
LABEL_43:
        if (a1 < a4 || a1 >= a4 + v74)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v150 = a4 + v74;
        a4 += v74;
        goto LABEL_49;
      }

      v66 = v134;
      a2 = v139;
      if (!*(v134 + 16))
      {
        break;
      }

      v125 = v58;
      v67 = sub_22BAD6B9C(v64, v65);
      v69 = v68;

      v70 = *v128;
      if ((v69 & 1) == 0)
      {
        a4 = v141;
        goto LABEL_56;
      }

      v71 = *(*(v66 + 56) + 8 * v67);
      v72 = v145;
      v70(v126, v145);
      v70(v135, v72);
      v73 = *v136;
      (*v136)(v148, v26);
      v73(v147, v26);
      a4 = v141;
      a3 = v129;
      v38 = v133;
      v74 = v143;
      if (v71 >= v125)
      {
        goto LABEL_43;
      }

      if (a1 < a2 || a1 >= a2 + v143)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v74;
LABEL_49:
      a1 += v74;
      v151 = a1;
      if (a4 >= v138 || a2 >= a3)
      {
        goto LABEL_102;
      }
    }

    v70 = *v128;
LABEL_56:
    v38 = v133;
    v77 = v145;
    v70(v126, v145);
    v70(v135, v77);
    a3 = v129;
    goto LABEL_41;
  }

LABEL_102:
  sub_22BB10CC8(&v151, &v150, &v149);
}

uint64_t sub_22BB11ED8(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_22BB10CB4(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_22BB1E96C() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;

      sub_22BB10FF8(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_22BB12098(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v215 = a4;
  v214 = a1;
  v7 = sub_22BB1E93C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v231 = &v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v210 - v11;
  MEMORY[0x28223BE20](v13);
  v212 = &v210 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v210 - v16;
  v256 = sub_22BB1E91C();
  v18 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v242 = &v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v245 = &v210 - v21;
  MEMORY[0x28223BE20](v22);
  v211 = &v210 - v23;
  MEMORY[0x28223BE20](v24);
  v221 = &v210 - v25;
  v255 = sub_22BB1E96C();
  MEMORY[0x28223BE20](v255);
  v218 = &v210 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v229 = &v210 - v28;
  MEMORY[0x28223BE20](v29);
  v254 = &v210 - v30;
  MEMORY[0x28223BE20](v31);
  v246 = &v210 - v32;
  MEMORY[0x28223BE20](v33);
  v235 = &v210 - v34;
  MEMORY[0x28223BE20](v35);
  v234 = &v210 - v36;
  MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v38);
  v257 = MEMORY[0x277D84F90];
  v230 = a3;
  v42 = a3[1];
  if (v42 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_135:
    v205 = *v214;
    if (!*v214)
    {
      goto LABEL_163;
    }

    v206 = v205;
    v207 = v237;
    sub_22BB11ED8(&v257, v206, v230, a5);

    v237 = v207;
LABEL_137:
    swift_bridgeObjectRelease_n();
  }

  v213 = &v210 - v39;
  v210 = v41;
  v239 = v40 + 16;
  v240 = (v40 + 8);
  v252 = (v8 + 88);
  v251 = *MEMORY[0x277D74670];
  v219 = (v8 + 8);
  v248 = (v18 + 32);
  v249 = (v8 + 96);
  v238 = (v18 + 8);
  v226 = v40;
  v233 = (v40 + 32);
  swift_bridgeObjectRetain_n();
  v43 = 0;
  v247 = MEMORY[0x277D84F90];
  v250 = a5;
  v44 = v215;
  v253 = v7;
  v241 = v12;
  v225 = v17;
  v45 = v255;
  while (1)
  {
    v216 = v43;
    if (v43 + 1 >= v42)
    {
      v96 = v43 + 1;
      goto LABEL_47;
    }

    v236 = v42;
    v46 = *v230;
    v47 = *(v226 + 72);
    v48 = *(v226 + 16);
    v244 = (*v230 + v47 * (v43 + 1));
    v48(v213);
    v243 = v47;
    v49 = v46 + v47 * v43;
    v50 = v210;
    v228 = v48;
    (v48)(v210, v49, v45);
    v51 = v213;
    v52 = v237;
    LODWORD(v232) = sub_22BB0DE34(v213, v50, a5);
    v237 = v52;
    if (v52)
    {
      v209 = *v240;
      (*v240)(v50, v45);
      (v209)(v51, v45);
      goto LABEL_137;
    }

    v224 = v46;
    v53 = *v240;
    (*v240)(v50, v45);
    v227 = v53;
    (v53)(v51, v45);
    v54 = v216 + 2;
    v55 = v243;
    v56 = v224 + v243 * (v216 + 2);
    do
    {
      if (v236 == v54)
      {
        v96 = v236;
        goto LABEL_33;
      }

      v59 = a5;
      v60 = v12;
      v61 = v228;
      v228(v234, v56, v45);
      v61(v235, v244, v45);
      v62 = v225;
      sub_22BB1E94C();
      v63 = *v252;
      v64 = (*v252)(v62, v7);
      if (v64 != v251)
      {
        (*v219)(v62, v7);
        v57 = 0;
        v12 = v60;
LABEL_9:
        a5 = v59;
        goto LABEL_10;
      }

      v65 = *v249;
      (*v249)(v62, v7);
      v66 = *v248;
      v67 = v221;
      v68 = v62;
      v69 = v256;
      (*v248)(v221, v68, v256);
      v70 = sub_22BB1E8AC();
      if (!v71)
      {
        (*v238)(v67, v69);
        v57 = 0;
        v7 = v253;
        v12 = v241;
        goto LABEL_9;
      }

      if (!*(v59 + 16))
      {

        v76 = v221;
LABEL_23:
        (*v238)(v76, v256);
        v57 = 0;
        a5 = v250;
        v7 = v253;
LABEL_24:
        v12 = v241;
        goto LABEL_10;
      }

      v72 = v66;
      v73 = sub_22BAD6B9C(v70, v71);
      v75 = v74;

      v76 = v221;
      if ((v75 & 1) == 0)
      {
        goto LABEL_23;
      }

      v77 = v221;
      a5 = v250;
      v224 = *(*(v250 + 56) + 8 * v73);
      v78 = v212;
      sub_22BB1E94C();
      v79 = v78;
      v80 = v78;
      v7 = v253;
      v81 = v63(v80, v253);
      if (v81 != v251)
      {
        (*v238)(v77, v256);
        (*v219)(v79, v7);
        v57 = 0;
        goto LABEL_24;
      }

      v65(v79, v7);
      v82 = v79;
      v83 = v211;
      v84 = v256;
      v72(v211, v82, v256);
      v85 = sub_22BB1E8AC();
      if (!v86)
      {
        v94 = *v238;
        (*v238)(v83, v84);
        v94(v77, v84);
        v57 = 0;
        goto LABEL_24;
      }

      if (*(a5 + 16))
      {
        v87 = a5;
        v88 = sub_22BAD6B9C(v85, v86);
        v90 = v89;

        v91 = *v238;
        v12 = v241;
        if (v90)
        {
          v92 = *(*(v87 + 56) + 8 * v88);
          v93 = v256;
          v91(v211, v256);
          v91(v221, v93);
          v57 = v92 < v224;
          a5 = v87;
          v7 = v253;
          goto LABEL_10;
        }

        a5 = v87;
        v7 = v253;
      }

      else
      {

        v91 = *v238;
        v12 = v241;
      }

      v95 = v256;
      v91(v211, v256);
      v91(v221, v95);
      v57 = 0;
LABEL_10:
      v45 = v255;
      v58 = v227;
      (v227)(v235, v255);
      v58(v234, v45);
      ++v54;
      v55 = v243;
      v56 += v243;
      v244 = &v243[v244];
    }

    while (((v232 ^ v57) & 1) == 0);
    v96 = v54 - 1;
LABEL_33:
    v44 = v215;
    v43 = v216;
    if (v232)
    {
      break;
    }

LABEL_47:
    v102 = v230[1];
    if (v96 >= v102)
    {
      goto LABEL_84;
    }

    if (__OFSUB__(v96, v43))
    {
      goto LABEL_155;
    }

    if (v96 - v43 >= v44)
    {
      goto LABEL_84;
    }

    if (__OFADD__(v43, v44))
    {
      goto LABEL_156;
    }

    if (v43 + v44 < v102)
    {
      v102 = v43 + v44;
    }

    if (v102 < v43)
    {
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    if (v96 == v102)
    {
      goto LABEL_84;
    }

    v220 = v102;
    v103 = *v230;
    v104 = *(v226 + 72);
    v232 = *(v226 + 16);
    v105 = v103 + v104 * (v96 - 1);
    v227 = -v104;
    v106 = (v43 - v96);
    v228 = v103;
    v217 = v104;
    v107 = (v103 + v96 * v104);
    while (2)
    {
      v236 = v96;
      v222 = v107;
      v223 = v106;
      v224 = v105;
      v109 = v105;
      while (1)
      {
        v243 = v107;
        v244 = v106;
        v110 = v232;
        v232(v246, v107, v45);
        v110(v254, v109, v45);
        sub_22BB1E94C();
        v111 = *v252;
        v112 = (*v252)(v12, v7);
        if (v112 != v251)
        {
          (*v219)(v12, v7);
LABEL_57:
          v45 = v255;
          v108 = *v240;
          (*v240)(v254, v255);
          (v108)(v246, v45);
          goto LABEL_58;
        }

        v113 = *v249;
        (*v249)(v12, v7);
        v114 = *v248;
        (*v248)(v245, v12, v256);
        v115 = sub_22BB1E8AC();
        if (!v116)
        {
          (*v238)(v245, v256);
          v7 = v253;
          goto LABEL_57;
        }

        v117 = v250;
        if (!*(v250 + 16))
        {

LABEL_75:
          (*v238)(v245, v256);
          goto LABEL_80;
        }

        v118 = sub_22BAD6B9C(v115, v116);
        v120 = v119;

        if ((v120 & 1) == 0)
        {
          goto LABEL_75;
        }

        v121 = *(*(v117 + 56) + 8 * v118);
        v122 = v231;
        sub_22BB1E94C();
        v123 = v122;
        v124 = v122;
        v7 = v253;
        v125 = v111(v124, v253);
        if (v125 != v251)
        {
          (*v238)(v245, v256);
          (*v219)(v123, v7);
LABEL_81:
          v12 = v241;
          goto LABEL_57;
        }

        v113(v123, v7);
        v126 = v256;
        v114(v242, v123, v256);
        v127 = sub_22BB1E8AC();
        if (!v128)
        {
          v143 = *v238;
          (*v238)(v242, v126);
          v143(v245, v126);
LABEL_80:
          v7 = v253;
          goto LABEL_81;
        }

        if (!*(v117 + 16))
        {

LABEL_79:
          v144 = *v238;
          v145 = v256;
          (*v238)(v242, v256);
          v144(v245, v145);
          goto LABEL_80;
        }

        v129 = sub_22BAD6B9C(v127, v128);
        v131 = v130;

        if ((v131 & 1) == 0)
        {
          goto LABEL_79;
        }

        v132 = *(*(v117 + 56) + 8 * v129);
        v133 = *v238;
        v134 = v256;
        (*v238)(v242, v256);
        v133(v245, v134);
        v135 = *v240;
        v136 = v255;
        (*v240)(v254, v255);
        (v135)(v246, v136);
        v7 = v253;
        if (v132 >= v121)
        {
          break;
        }

        v12 = v241;
        v137 = v244;
        if (!v228)
        {
          goto LABEL_159;
        }

        v138 = v253;
        v139 = *v233;
        v140 = v229;
        v141 = v243;
        v45 = v255;
        (*v233)(v229, v243, v255);
        swift_arrayInitWithTakeFrontToBack();
        v139(v109, v140, v45);
        v109 += v227;
        v107 = &v141[v227];
        v142 = __CFADD__(v137, 1);
        v106 = v137 + 1;
        v7 = v138;
        if (v142)
        {
          goto LABEL_58;
        }
      }

      v12 = v241;
      v45 = v255;
LABEL_58:
      v96 = v236 + 1;
      v105 = v224 + v217;
      v106 = v223 - 1;
      v107 = &v222[v217];
      if (v236 + 1 != v220)
      {
        continue;
      }

      break;
    }

    v43 = v216;
    v96 = v220;
    a5 = v250;
LABEL_84:
    if (v96 < v43)
    {
      goto LABEL_154;
    }

    v220 = v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v247 = sub_22BAF6114(0, *(v247 + 2) + 1, 1, v247);
    }

    v147 = *(v247 + 2);
    v146 = *(v247 + 3);
    v148 = v147 + 1;
    if (v147 >= v146 >> 1)
    {
      v247 = sub_22BAF6114((v146 > 1), v147 + 1, 1, v247);
    }

    v149 = v247;
    *(v247 + 2) = v148;
    v150 = v149 + 32;
    v151 = &v149[16 * v147 + 32];
    v152 = v220;
    *v151 = v216;
    *(v151 + 1) = v152;
    v257 = v149;
    v244 = *v214;
    if (!v244)
    {
      goto LABEL_162;
    }

    if (v147)
    {
      while (2)
      {
        v153 = v148 - 1;
        if (v148 >= 4)
        {
          v158 = &v150[16 * v148];
          v159 = *(v158 - 8);
          v160 = *(v158 - 7);
          v164 = __OFSUB__(v160, v159);
          v161 = v160 - v159;
          if (v164)
          {
            goto LABEL_143;
          }

          v163 = *(v158 - 6);
          v162 = *(v158 - 5);
          v164 = __OFSUB__(v162, v163);
          v156 = v162 - v163;
          v157 = v164;
          if (v164)
          {
            goto LABEL_144;
          }

          v165 = &v247[16 * v148];
          v167 = *v165;
          v166 = *(v165 + 1);
          v164 = __OFSUB__(v166, v167);
          v168 = v166 - v167;
          if (v164)
          {
            goto LABEL_146;
          }

          v164 = __OFADD__(v156, v168);
          v169 = v156 + v168;
          if (v164)
          {
            goto LABEL_149;
          }

          if (v169 >= v161)
          {
            v187 = &v150[16 * v153];
            v189 = *v187;
            v188 = *(v187 + 1);
            v164 = __OFSUB__(v188, v189);
            v190 = v188 - v189;
            if (v164)
            {
              goto LABEL_153;
            }

            if (v156 < v190)
            {
              v153 = v148 - 2;
            }
          }

          else
          {
LABEL_104:
            if (v157)
            {
              goto LABEL_145;
            }

            v170 = &v247[16 * v148];
            v172 = *v170;
            v171 = *(v170 + 1);
            v173 = __OFSUB__(v171, v172);
            v174 = v171 - v172;
            v175 = v173;
            if (v173)
            {
              goto LABEL_148;
            }

            v176 = &v150[16 * v153];
            v178 = *v176;
            v177 = *(v176 + 1);
            v164 = __OFSUB__(v177, v178);
            v179 = v177 - v178;
            if (v164)
            {
              goto LABEL_151;
            }

            if (__OFADD__(v174, v179))
            {
              goto LABEL_152;
            }

            if (v174 + v179 < v156)
            {
              goto LABEL_118;
            }

            if (v156 < v179)
            {
              v153 = v148 - 2;
            }
          }
        }

        else
        {
          if (v148 == 3)
          {
            v154 = *(v247 + 4);
            v155 = *(v247 + 5);
            v164 = __OFSUB__(v155, v154);
            v156 = v155 - v154;
            v157 = v164;
            goto LABEL_104;
          }

          v180 = &v247[16 * v148];
          v182 = *v180;
          v181 = *(v180 + 1);
          v164 = __OFSUB__(v181, v182);
          v174 = v181 - v182;
          v175 = v164;
LABEL_118:
          if (v175)
          {
            goto LABEL_147;
          }

          v183 = &v150[16 * v153];
          v185 = *v183;
          v184 = *(v183 + 1);
          v164 = __OFSUB__(v184, v185);
          v186 = v184 - v185;
          if (v164)
          {
            goto LABEL_150;
          }

          if (v186 < v174)
          {
            goto LABEL_3;
          }
        }

        if (v153 - 1 >= v148)
        {
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        v191 = *v230;
        if (!*v230)
        {
          goto LABEL_160;
        }

        v192 = &v150[16 * v153 - 16];
        v193 = *v192;
        v194 = &v150[16 * v153];
        v195 = *(v194 + 1);
        v196 = *(v226 + 72);
        v197 = v191 + v196 * *v192;
        v198 = v191 + v196 * *v194;
        v199 = v191 + v196 * v195;
        v200 = v250;

        v201 = v197;
        v202 = v237;
        sub_22BB10FF8(v201, v198, v199, v244, v200);

        v237 = v202;
        if (v202)
        {
          v257 = v247;
          goto LABEL_137;
        }

        if (v195 < v193)
        {
          goto LABEL_140;
        }

        v203 = *(v247 + 2);
        if (v153 > v203)
        {
          goto LABEL_141;
        }

        *v192 = v193;
        *(v192 + 1) = v195;
        if (v153 >= v203)
        {
          goto LABEL_142;
        }

        v148 = v203 - 1;
        memmove(&v150[16 * v153], v194 + 16, 16 * (v203 - 1 - v153));
        *(v247 + 2) = v203 - 1;
        v204 = v203 > 2;
        a5 = v250;
        v7 = v253;
        v12 = v241;
        v45 = v255;
        if (!v204)
        {
LABEL_3:
          v257 = v247;
          break;
        }

        continue;
      }
    }

    v42 = v230[1];
    v43 = v220;
    v44 = v215;
    if (v220 >= v42)
    {
      goto LABEL_135;
    }
  }

  if (v96 >= v216)
  {
    if (v216 < v96)
    {
      v97 = v55 * (v96 - 1);
      v98 = v96 * v55;
      v236 = v96;
      v99 = v216;
      v100 = v216 * v55;
      do
      {
        if (v99 != --v96)
        {
          v101 = *v230;
          if (!*v230)
          {
            goto LABEL_161;
          }

          v244 = *v233;
          (v244)(v218, v101 + v100, v255);
          if (v100 < v97 || v101 + v100 >= (v101 + v98))
          {
            v45 = v255;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v45 = v255;
            if (v100 != v97)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          (v244)(v101 + v97, v218, v45);
          v55 = v243;
        }

        ++v99;
        v97 -= v55;
        v98 -= v55;
        v100 += v55;
      }

      while (v99 < v96);
      v44 = v215;
      v7 = v253;
      v12 = v241;
      v96 = v236;
      v43 = v216;
    }

    goto LABEL_47;
  }

LABEL_158:
  __break(1u);
LABEL_159:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_162:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_163:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}