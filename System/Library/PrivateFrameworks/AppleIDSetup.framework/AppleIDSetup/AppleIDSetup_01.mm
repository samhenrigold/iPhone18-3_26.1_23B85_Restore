uint64_t AuthenticationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6428, &unk_24075D920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240594C94();
  sub_24075AF74();
  LOBYTE(v11) = 0;
  type metadata accessor for IdMSAccount(0);
  sub_240594D3C(&qword_27E4B6438, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  sub_24075AB94();
  if (!v2)
  {
    v9 = type metadata accessor for AuthenticationModel(0);
    LOBYTE(v11) = *(v3 + v9[6]);
    v12 = 1;
    sub_240594CE8();
    sub_24075ABE4();
    LOBYTE(v11) = 2;
    type metadata accessor for AuthenticationModel.State(0);
    sub_240594D3C(&qword_27E4B6448, type metadata accessor for AuthenticationModel.State, &protocol conformance descriptor for AuthenticationModel.State);
    sub_24075ABE4();
    v11 = *(v3 + v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6450, &qword_24076F340);
    sub_2405B0778(&qword_27E4B6458, &qword_27E4B6450, &qword_24076F340, MEMORY[0x277D84F40]);
    sub_24075ABE4();
    LOBYTE(v11) = 4;
    sub_24075ABC4();
    *&v11 = *(v3 + v9[8]);
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6460, &qword_24075D930);
    sub_24059532C(&qword_27E4B6468, &qword_27E4B6470, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83948]);
    sub_24075ABE4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_240594C94()
{
  result = qword_27E4B6430;
  if (!qword_27E4B6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6430);
  }

  return result;
}

unint64_t sub_240594CE8()
{
  result = qword_27E4B6440;
  if (!qword_27E4B6440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6440);
  }

  return result;
}

uint64_t sub_240594D3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AuthenticationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6478, &qword_24075D938);
  v9 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v31 - v10;
  v12 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_240594C94();
  v13 = v39;
  sub_24075AF34();
  if (!v13)
  {
    v14 = v5;
    v15 = type metadata accessor for IdMSAccount(0);
    v48 = 0;
    sub_240594D3C(&qword_27E4B6480, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
    v16 = v38;
    sub_24075AAA4();
    v46 = 1;
    sub_2405952D8();
    sub_24075AAF4();
    v18 = v47;
    v45 = 2;
    sub_240594D3C(&qword_27E4B6490, type metadata accessor for AuthenticationModel.State, &protocol conformance descriptor for AuthenticationModel.State);
    sub_24075AAF4();
    v44 = 3;
    v19 = sub_24075AA74();
    v21 = v20;
    v39 = v19;
    v43 = 4;
    v35 = sub_24075AAD4();
    v36 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6460, &qword_24075D930);
    v42 = 5;
    sub_24059532C(&qword_27E4B6498, &qword_27E4B64A0, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83978]);
    sub_24075AAF4();
    v34 = v41;
    v22 = *(*(v15 - 8) + 56);
    v33 = v21;
    v23 = v37;
    v22(v37, 1, 1, v15);
    v24 = type metadata accessor for AuthenticationModel(0);
    v25 = (v23 + v24[5]);
    v25[3] = 0u;
    v25[4] = 0u;
    v25[1] = 0u;
    v25[2] = 0u;
    *v25 = 0u;
    v26 = v24[7];
    v32 = v24[8];
    v27 = (v23 + v26);
    (*(v9 + 8))(v11, v16);
    v28 = v24[9];
    v29 = (v23 + v24[11]);
    *v29 = 0;
    v29[1] = 0;
    sub_240590814(v8, v23);
    *(v23 + v24[6]) = v36;
    sub_2405AE39C(v14, v23 + v24[10], type metadata accessor for AuthenticationModel.State);
    v30 = v33;
    *v27 = v39;
    v27[1] = v30;
    *(v23 + v28) = v35 & 1;
    *(v23 + v32) = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

unint64_t sub_2405952D8()
{
  result = qword_27E4B6488;
  if (!qword_27E4B6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6488);
  }

  return result;
}

uint64_t sub_24059532C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B6460, &qword_24075D930);
    sub_240594D3C(a2, type metadata accessor for AIDAServiceType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static AuthenticationModel.State.== infix(_:_:)(char *a1, uint64_t a2)
{
  v197 = a1;
  *&v198 = a2;
  v187 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v2 = MEMORY[0x28223BE20](v187);
  v185 = &v180 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v181 = &v180 - v4;
  v5 = type metadata accessor for AuthenticationModel.State(0);
  v6 = MEMORY[0x28223BE20](v5);
  v183 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v182 = &v180 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v193 = &v180 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v184 = &v180 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v186 = &v180 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v188 = &v180 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v189 = &v180 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v180 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v180 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v180 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v180 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v192 = (&v180 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v190 = (&v180 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = (&v180 - v37);
  v39 = MEMORY[0x28223BE20](v36);
  v194 = &v180 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v191 = &v180 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v196 = &v180 - v44;
  MEMORY[0x28223BE20](v43);
  v195 = &v180 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64A8, &unk_24075D940);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v49 = &v180 - v48;
  v50 = &v180 + *(v47 + 56) - v48;
  sub_240594008(v197, &v180 - v48, type metadata accessor for AuthenticationModel.State);
  v51 = v198;
  *&v198 = v50;
  sub_240594008(v51, v50, type metadata accessor for AuthenticationModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v52 = v196;
      sub_240594008(v49, v196, type metadata accessor for AuthenticationModel.State);
      v134 = v198;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_30;
      }

      v54 = v49;
      v55 = v134;
      v56 = v185;
      goto LABEL_26;
    case 2u:
      v102 = v191;
      sub_240594008(v49, v191, type metadata accessor for AuthenticationModel.State);
      v103 = *(v102 + 80);
      v224 = *(v102 + 64);
      v225 = v103;
      v226 = *(v102 + 96);
      v104 = *(v102 + 16);
      v220 = *v102;
      v221 = v104;
      v105 = *(v102 + 48);
      v222 = *(v102 + 32);
      v223 = v105;
      v106 = v198;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    case 3u:
      v102 = v194;
      sub_240594008(v49, v194, type metadata accessor for AuthenticationModel.State);
      v118 = *(v102 + 80);
      v224 = *(v102 + 64);
      v225 = v118;
      v226 = *(v102 + 96);
      v119 = *(v102 + 16);
      v220 = *v102;
      v221 = v119;
      v120 = *(v102 + 48);
      v222 = *(v102 + 32);
      v223 = v120;
      v106 = v198;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
LABEL_16:
        v107 = v106[3];
        v108 = v106[5];
        v217 = v106[4];
        v218 = v108;
        v109 = v106[1];
        v213 = *v106;
        v214 = v109;
        v110 = v106[3];
        v112 = *v106;
        v111 = v106[1];
        v215 = v106[2];
        v216 = v110;
        v113 = *(v102 + 80);
        v210 = *(v102 + 64);
        v211 = v113;
        v114 = *(v102 + 16);
        v206 = *v102;
        v207 = v114;
        v115 = *(v102 + 48);
        v208 = *(v102 + 32);
        v209 = v115;
        v116 = v106[5];
        v203 = v217;
        v204 = v116;
        v199 = v112;
        v200 = v111;
        v219 = *(v106 + 96);
        v212 = *(v102 + 96);
        v205 = *(v106 + 96);
        v201 = v215;
        v202 = v107;
        v66 = _s12AppleIDSetup19AuthenticationModelV10BasicLoginV2eeoiySbAE_AEtFZ_0(&v206, &v199);
        sub_2405AE36C(&v213);
        sub_2405AE36C(&v220);
        goto LABEL_39;
      }

LABEL_21:
      sub_2405AE36C(&v220);
      goto LABEL_57;
    case 4u:
      sub_240594008(v49, v38, type metadata accessor for AuthenticationModel.State);
      v67 = v38[3];
      v222 = v38[2];
      v223 = v67;
      v224 = v38[4];
      v68 = v38[1];
      v220 = *v38;
      v221 = v68;
      v69 = v198;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_40;
      }

      v70 = v69[1];
      v72 = v69[2];
      v71 = v69[3];
      v215 = v72;
      v216 = v71;
      v73 = v69[3];
      v217 = v69[4];
      v74 = v69[1];
      v75 = *v69;
      v213 = *v69;
      v214 = v74;
      v76 = v38[3];
      v208 = v38[2];
      v209 = v76;
      v210 = v38[4];
      v78 = *v38;
      v77 = v38[1];
      goto LABEL_38;
    case 5u:
      v135 = v190;
      sub_240594008(v49, v190, type metadata accessor for AuthenticationModel.State);
      v136 = v135[3];
      v222 = v135[2];
      v223 = v136;
      v224 = v135[4];
      v137 = v135[1];
      v220 = *v135;
      v221 = v137;
      v138 = v198;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v139 = v138[1];
        v140 = v138[3];
        v215 = v138[2];
        v216 = v140;
        v141 = v138[3];
        v217 = v138[4];
        v142 = v138[1];
        v213 = *v138;
        v214 = v142;
        v143 = v135[3];
        v208 = v135[2];
        v209 = v143;
        v210 = v135[4];
        v144 = v135[1];
        v206 = *v135;
        v207 = v144;
        v201 = v215;
        v202 = v141;
        v203 = v138[4];
        v199 = v213;
        v200 = v139;
        v66 = sub_2405AD0D8(&v206, &v199);
        sub_2405AE33C(&v213);
        sub_2405AE33C(&v220);
        goto LABEL_39;
      }

      sub_2405AE33C(&v220);
      goto LABEL_57;
    case 6u:
      v149 = v192;
      sub_240594008(v49, v192, type metadata accessor for AuthenticationModel.State);
      v150 = v149[3];
      v222 = v149[2];
      v223 = v150;
      v224 = v149[4];
      v151 = v149[1];
      v220 = *v149;
      v221 = v151;
      v69 = v198;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_40:
        sub_2405AE30C(&v220);
        goto LABEL_57;
      }

      v70 = v69[1];
      v72 = v69[2];
      v152 = v69[3];
      v215 = v72;
      v216 = v152;
      v73 = v69[3];
      v217 = v69[4];
      v153 = v69[1];
      v75 = *v69;
      v213 = *v69;
      v214 = v153;
      v154 = v149[3];
      v208 = v149[2];
      v209 = v154;
      v210 = v149[4];
      v78 = *v149;
      v77 = v149[1];
LABEL_38:
      v206 = v78;
      v207 = v77;
      v201 = v72;
      v202 = v73;
      v203 = v69[4];
      v199 = v75;
      v200 = v70;
      v66 = sub_2405AD0D8(&v206, &v199);
      sub_2405AE30C(&v213);
      sub_2405AE30C(&v220);
LABEL_39:
      sub_240593D7C(v49, type metadata accessor for AuthenticationModel.State);
      return v66 & 1;
    case 7u:
      sub_240594008(v49, v31, type metadata accessor for AuthenticationModel.State);
      v122 = *v31;
      v121 = v31[1];
      v123 = v31[2];
      v124 = v31[3];
      v125 = v31[4];
      v126 = v198;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v127 = *v126;
        v128 = *(v126 + 8);
        v129 = v124;
        v195 = v124;
        v196 = v125;
        v130 = v125;
        v132 = *(v126 + 16);
        v131 = *(v126 + 24);
        v197 = v49;
        v133 = *(v126 + 32);
        *&v220 = v122;
        *(&v220 + 1) = v121;
        *&v221 = v123;
        *(&v221 + 1) = v129;
        *&v222 = v130;
        *&v213 = v127;
        *(&v213 + 1) = v128;
        *&v214 = v132;
        *(&v214 + 1) = v131;
        *&v215 = v133;
        v66 = _s12AppleIDSetup19AuthenticationModelV14ServerRedirectV2eeoiySbAE_AEtFZ_0(&v220, &v213);

        goto LABEL_46;
      }

      goto LABEL_56;
    case 8u:
      sub_240594008(v49, v28, type metadata accessor for AuthenticationModel.State);
      v163 = *v28;
      v162 = v28[1];
      v164 = v28[2];
      v124 = v28[3];
      v125 = v28[4];
      v165 = v198;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v166 = *v165;
        v167 = *(v165 + 8);
        v168 = v124;
        v195 = v124;
        v196 = v125;
        v169 = v125;
        v171 = *(v165 + 16);
        v170 = *(v165 + 24);
        v197 = v49;
        v172 = *(v165 + 32);
        *&v220 = v163;
        *(&v220 + 1) = v162;
        *&v221 = v164;
        *(&v221 + 1) = v168;
        *&v222 = v169;
        *&v213 = v166;
        *(&v213 + 1) = v167;
        *&v214 = v171;
        *(&v214 + 1) = v170;
        *&v215 = v172;
        v66 = _s12AppleIDSetup19AuthenticationModelV14ServerRedirectV2eeoiySbAE_AEtFZ_0(&v220, &v213);

LABEL_46:
        goto LABEL_47;
      }

LABEL_56:
      goto LABEL_57;
    case 9u:
      sub_240594008(v49, v25, type metadata accessor for AuthenticationModel.State);
      v93 = *v25;
      v92 = v25[1];
      v94 = v49;
      v96 = v25[2];
      v95 = v25[3];
      v97 = v198;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v197 = v94;
        v98 = *v97;
        v99 = *(v97 + 8);
        v100 = *(v97 + 16);
        v101 = *(v97 + 24);
        *&v220 = v93;
        *(&v220 + 1) = v92;
        *&v221 = v96;
        *(&v221 + 1) = v95;
        *&v213 = v98;
        *(&v213 + 1) = v99;
        *&v214 = v100;
        *(&v214 + 1) = v101;
        v66 = _s12AppleIDSetup19AuthenticationModelV14NativeRecoveryV2eeoiySbAE_AEtFZ_0(&v220, &v213);

        goto LABEL_43;
      }

      v49 = v94;
      goto LABEL_57;
    case 0xAu:
      sub_240594008(v49, v22, type metadata accessor for AuthenticationModel.State);
      v155 = *v22;
      v92 = v22[1];
      v156 = v49;
      v96 = v22[2];
      v95 = v22[3];
      v157 = v198;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        v49 = v156;
        goto LABEL_57;
      }

      v197 = v156;
      v158 = *v157;
      v159 = *(v157 + 8);
      v160 = *(v157 + 16);
      v161 = *(v157 + 24);
      *&v220 = v155;
      *(&v220 + 1) = v92;
      *&v221 = v96;
      *(&v221 + 1) = v95;
      *&v213 = v158;
      *(&v213 + 1) = v159;
      *&v214 = v160;
      *(&v214 + 1) = v161;
      v66 = _s12AppleIDSetup19AuthenticationModelV13FidoChallengeV2eeoiySbAE_AEtFZ_0(&v220, &v213);

LABEL_43:
LABEL_47:
      sub_240593D7C(v197, type metadata accessor for AuthenticationModel.State);
      return v66 & 1;
    case 0xBu:
      v57 = v189;
      sub_240594008(v49, v189, type metadata accessor for AuthenticationModel.State);
      v58 = *v57;
      v59 = *(v57 + 16);
      v60 = v198;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v61 = *(v57 + 24);
        v62 = *(v57 + 8);
        v63 = v49;
        v64 = *(v60 + 2);
        v65 = *(v60 + 24);
        *&v220 = v58;
        *(&v220 + 1) = v62;
        *&v221 = v59;
        BYTE8(v221) = v61;
        v198 = *v60;
        v213 = v198;
        *&v214 = v64;
        BYTE8(v214) = v65;
        v66 = _s12AppleIDSetup19AuthenticationModelV9KeepUsingV2eeoiySbAE_AEtFZ_0(&v220, &v213);

        sub_240593D7C(v63, type metadata accessor for AuthenticationModel.State);
        return v66 & 1;
      }

      goto LABEL_57;
    case 0xCu:
      v79 = v49;
      sub_240594008(v49, v188, type metadata accessor for AuthenticationModel.State);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v81 = swift_projectBox();
      v222 = *(v81 + 32);
      v223 = *(v81 + 48);
      v224 = *(v81 + 64);
      LOWORD(v225) = *(v81 + 80);
      v220 = *v81;
      v221 = *(v81 + 16);
      if (swift_getEnumCaseMultiPayload() != 12)
      {

        v49 = v79;
        goto LABEL_57;
      }

      v82 = *(v80 + 48);
      v83 = swift_projectBox();
      v84 = *(v83 + 16);
      v213 = *v83;
      v214 = v84;
      v86 = *(v83 + 48);
      v85 = *(v83 + 64);
      v87 = *(v83 + 32);
      LOWORD(v218) = *(v83 + 80);
      v216 = v86;
      v217 = v85;
      v215 = v87;
      v88 = v186;
      sub_240594008(v81 + v82, v186, type metadata accessor for AuthenticationModel.State);
      v89 = v83 + v82;
      v90 = v184;
      sub_240594008(v89, v184, type metadata accessor for AuthenticationModel.State);
      v208 = v222;
      v209 = v223;
      v210 = v224;
      LOWORD(v211) = v225;
      v206 = v220;
      v207 = v221;
      v201 = v215;
      v202 = v216;
      v203 = v217;
      LOWORD(v204) = v218;
      v199 = v213;
      v200 = v214;
      sub_2405AE2A4(&v213, v227);
      if (_s12AppleIDSetup19AuthenticationModelV5AlertV2eeoiySbAE_AEtFZ_0(&v206, &v199))
      {
        v66 = static AuthenticationModel.State.== infix(_:_:)(v88, v90);
        sub_2405AE2DC(&v213);
        sub_240593D7C(v90, type metadata accessor for AuthenticationModel.State);
        sub_240593D7C(v88, type metadata accessor for AuthenticationModel.State);

        v91 = v79;
        goto LABEL_35;
      }

      sub_2405AE2DC(&v213);
      sub_240593D7C(v90, type metadata accessor for AuthenticationModel.State);
      sub_240593D7C(v88, type metadata accessor for AuthenticationModel.State);

      sub_240593D7C(v79, type metadata accessor for AuthenticationModel.State);
      goto LABEL_58;
    case 0xDu:
      sub_240594008(v49, v193, type metadata accessor for AuthenticationModel.State);
      if (swift_getEnumCaseMultiPayload() != 13)
      {

        goto LABEL_57;
      }

      v145 = swift_projectBox();
      v146 = swift_projectBox();
      v147 = v182;
      sub_240594008(v145, v182, type metadata accessor for AuthenticationModel.State);
      v148 = v183;
      sub_240594008(v146, v183, type metadata accessor for AuthenticationModel.State);
      v66 = static AuthenticationModel.State.== infix(_:_:)(v147, v148);
      sub_240593D7C(v148, type metadata accessor for AuthenticationModel.State);
      sub_240593D7C(v147, type metadata accessor for AuthenticationModel.State);

      v91 = v49;
LABEL_35:
      sub_240593D7C(v91, type metadata accessor for AuthenticationModel.State);
      return v66 & 1;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_57;
      }

      goto LABEL_18;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_57;
      }

LABEL_18:
      v117 = v49;
      goto LABEL_19;
    default:
      v52 = v195;
      sub_240594008(v49, v195, type metadata accessor for AuthenticationModel.State);
      v53 = v198;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_30:
        sub_240593D7C(v52, type metadata accessor for AuthenticationModel.PreflightRepair);
LABEL_57:
        sub_2405B8A50(v49, &qword_27E4B64A8, &unk_24075D940);
        goto LABEL_58;
      }

      v54 = v49;
      v55 = v53;
      v56 = v181;
LABEL_26:
      sub_2405AE39C(v55, v56, type metadata accessor for AuthenticationModel.PreflightRepair);
      if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(v52, v56) & 1) == 0 || *(v52 + *(v187 + 20)) != *(v56 + *(v187 + 20)))
      {
        goto LABEL_28;
      }

      v174 = *(v187 + 24);
      v175 = *(v52 + v174);
      v176 = *(v56 + v174);
      if (!v175)
      {
        if (!v176)
        {
          sub_240593D7C(v56, type metadata accessor for AuthenticationModel.PreflightRepair);
          goto LABEL_67;
        }

        goto LABEL_28;
      }

      if (!v176)
      {
LABEL_28:
        sub_240593D7C(v56, type metadata accessor for AuthenticationModel.PreflightRepair);
LABEL_29:
        sub_240593D7C(v52, type metadata accessor for AuthenticationModel.PreflightRepair);
        sub_240593D7C(v54, type metadata accessor for AuthenticationModel.State);
LABEL_58:
        v66 = 0;
        return v66 & 1;
      }

      sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
      v177 = v176;
      v178 = v175;
      v179 = sub_24075A6D4();

      sub_240593D7C(v56, type metadata accessor for AuthenticationModel.PreflightRepair);
      if ((v179 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_67:
      sub_240593D7C(v52, type metadata accessor for AuthenticationModel.PreflightRepair);
      v117 = v54;
LABEL_19:
      sub_240593D7C(v117, type metadata accessor for AuthenticationModel.State);
      v66 = 1;
      return v66 & 1;
  }
}

uint64_t AuthenticationModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IdMSAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  sub_2405B044C(v2, &v18 - v9, &qword_27E4B6418, &unk_24075D910);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    sub_2405AE39C(v10, v7, type metadata accessor for IdMSAccount);
    sub_24075AE94();
    IdMSAccount.hash(into:)(a1);
    sub_240593D7C(v7, type metadata accessor for IdMSAccount);
  }

  v11 = type metadata accessor for AuthenticationModel(0);
  MEMORY[0x245CC6BA0](*(v2 + v11[6]));
  AuthenticationModel.State.hash(into:)(a1);
  if (*(v2 + v11[7] + 8))
  {
    sub_24075AE94();
    sub_24075A114();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  v12 = *(v2 + v11[8]);
  result = MEMORY[0x245CC6BA0](*(v12 + 16));
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = (v12 + 32);
    do
    {
      v16 = *v15++;
      sub_24075A0B4();
      v17 = v16;
      sub_24075A114();

      --v14;
    }

    while (v14);
  }

  return result;
}

unint64_t sub_240596830(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0x6867696C66657270;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 7369331;
      break;
    case 4:
      result = 0x676F4C6369736162;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6146646E6F636573;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6552726576726573;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x655265766974616ELL;
      break;
    case 12:
      result = 0x6C6168436F646966;
      break;
    case 13:
      result = 0x6E6973557065656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_240596A00(uint64_t a1)
{
  v2 = sub_2405AE74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596A3C(uint64_t a1)
{
  v2 = sub_2405AE74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596A80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B69D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_240596AB4(uint64_t a1)
{
  v2 = sub_2405AE404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596AF0(uint64_t a1)
{
  v2 = sub_2405AE404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596B2C(uint64_t a1)
{
  v2 = sub_2405AE6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596B68(uint64_t a1)
{
  v2 = sub_2405AE6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596BA4(uint64_t a1)
{
  v2 = sub_2405AE7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596BE0(uint64_t a1)
{
  v2 = sub_2405AE7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596C1C(uint64_t a1)
{
  v2 = sub_2405AE650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596C58(uint64_t a1)
{
  v2 = sub_2405AE650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596C94(uint64_t a1)
{
  v2 = sub_2405AE554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596CD0(uint64_t a1)
{
  v2 = sub_2405AE554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596D0C(uint64_t a1)
{
  v2 = sub_2405AE4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596D48(uint64_t a1)
{
  v2 = sub_2405AE4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596D84(uint64_t a1)
{
  v2 = sub_2405AE89C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596DC0(uint64_t a1)
{
  v2 = sub_2405AE89C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596DFC(uint64_t a1)
{
  v2 = sub_2405AE458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596E38(uint64_t a1)
{
  v2 = sub_2405AE458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596E74(uint64_t a1)
{
  v2 = sub_2405AE500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596EB0(uint64_t a1)
{
  v2 = sub_2405AE500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596EEC(uint64_t a1)
{
  v2 = sub_2405AE848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596F28(uint64_t a1)
{
  v2 = sub_2405AE848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596F64(uint64_t a1)
{
  v2 = sub_2405AE5FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596FA0(uint64_t a1)
{
  v2 = sub_2405AE5FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596FDC(uint64_t a1)
{
  v2 = sub_2405AE6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240597018(uint64_t a1)
{
  v2 = sub_2405AE6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240597054(uint64_t a1)
{
  v2 = sub_2405AE5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240597090(uint64_t a1)
{
  v2 = sub_2405AE5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405970CC(uint64_t a1)
{
  v2 = sub_2405AE7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240597108(uint64_t a1)
{
  v2 = sub_2405AE7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.BindableState.Substate.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B8, &qword_24075D950);
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  v80 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64C0, &qword_24075D958);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64C8, &qword_24075D960);
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64D0, &qword_24075D968);
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x28223BE20](v10);
  v71 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64D8, &qword_24075D970);
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64E0, &qword_24075D978);
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v65 = &v44 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64E8, &qword_24075D980);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v44 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64F0, &qword_24075D988);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v44 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64F8, &qword_24075D990);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v44 - v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6500, &qword_24075D998);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v44 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6508, &qword_24075D9A0);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v44 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6510, &qword_24075D9A8);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - v21;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6518, &qword_24075D9B0);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6520, &qword_24075D9B8);
  v44 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6528, &qword_24075D9C0);
  v27 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v29 = &v44 - v28;
  v30 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405AE404();
  v83 = v29;
  sub_24075AF74();
  v31 = (v27 + 8);
  switch(v30)
  {
    case 1:
      v86 = 1;
      sub_2405AE848();
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      (*(v45 + 8))(v23, v46);
      return (*v31)(v32, v33);
    case 2:
      v87 = 2;
      sub_2405AE7F4();
      v38 = v47;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      (*(v48 + 8))(v38, v49);
      return (*v31)(v32, v33);
    case 3:
      v88 = 3;
      sub_2405AE7A0();
      v39 = v50;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      (*(v51 + 8))(v39, v52);
      return (*v31)(v32, v33);
    case 4:
      v89 = 4;
      sub_2405AE74C();
      v37 = v53;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      (*(v54 + 8))(v37, v55);
      return (*v31)(v32, v33);
    case 5:
      v90 = 5;
      sub_2405AE6F8();
      v41 = v56;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      (*(v57 + 8))(v41, v58);
      return (*v31)(v32, v33);
    case 6:
      v91 = 6;
      sub_2405AE6A4();
      v42 = v59;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      (*(v60 + 8))(v42, v61);
      return (*v31)(v32, v33);
    case 7:
      v92 = 7;
      sub_2405AE650();
      v40 = v62;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      (*(v63 + 8))(v40, v64);
      return (*v31)(v32, v33);
    case 8:
      v93 = 8;
      sub_2405AE5FC();
      v34 = v65;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      v36 = v66;
      v35 = v67;
      goto LABEL_16;
    case 9:
      v94 = 9;
      sub_2405AE5A8();
      v34 = v68;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      v36 = v69;
      v35 = v70;
      goto LABEL_16;
    case 10:
      v95 = 10;
      sub_2405AE554();
      v34 = v71;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      v36 = v72;
      v35 = v73;
      goto LABEL_16;
    case 11:
      v96 = 11;
      sub_2405AE500();
      v34 = v74;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      v36 = v75;
      v35 = v76;
      goto LABEL_16;
    case 12:
      v97 = 12;
      sub_2405AE4AC();
      v34 = v77;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      v36 = v78;
      v35 = v79;
      goto LABEL_16;
    case 13:
      v98 = 13;
      sub_2405AE458();
      v34 = v80;
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      v36 = v81;
      v35 = v82;
LABEL_16:
      (*(v36 + 8))(v34, v35);
      break;
    default:
      v85 = 0;
      sub_2405AE89C();
      v32 = v83;
      v33 = v84;
      sub_24075AB54();
      (*(v44 + 8))(v26, v24);
      break;
  }

  return (*v31)(v32, v33);
}

uint64_t AuthenticationModel.BindableState.Substate.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v108 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65A8, &qword_24075D9C8);
  v94 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65B0, &qword_24075D9D0);
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = v64 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65B8, &qword_24075D9D8);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v101 = v64 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65C0, &qword_24075D9E0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v100 = v64 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65C8, &qword_24075D9E8);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v99 = v64 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65D0, &qword_24075D9F0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v98 = v64 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65D8, &qword_24075D9F8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v97 = v64 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65E0, &qword_24075DA00);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v106 = v64 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65E8, &qword_24075DA08);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v105 = v64 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65F0, &qword_24075DA10);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v104 = v64 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65F8, &qword_24075DA18);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v96 = v64 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6600, &qword_24075DA20);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v95 = v64 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6608, &qword_24075DA28);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v17 = v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6610, &qword_24075DA30);
  v69 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6618, &qword_24075DA38);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v64 - v23;
  v25 = a1[3];
  v109 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_2405AE404();
  v26 = v110;
  sub_24075AF34();
  if (v26)
  {
LABEL_35:
    v62 = v109;
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v66 = v20;
  v65 = v18;
  v67 = v17;
  v28 = v104;
  v27 = v105;
  v29 = v106;
  v68 = 0;
  v31 = v107;
  v30 = v108;
  v110 = v22;
  v32 = sub_24075AB34();
  if (*(v32 + 16) != 1 || (v33 = *(v32 + 32), v33 == 14))
  {
    v36 = sub_24075A8C4();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v38 = &type metadata for AuthenticationModel.BindableState.Substate;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v110 + 8))(v24, v21);
LABEL_34:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v64[1] = v32;
  switch(v33)
  {
    case 1:
      v112 = 1;
      sub_2405AE848();
      v52 = v67;
      v53 = v68;
      sub_24075AA54();
      if (v53)
      {
        goto LABEL_33;
      }

      (*(v70 + 8))(v52, v71);
      goto LABEL_38;
    case 2:
      v113 = 2;
      sub_2405AE7F4();
      v46 = v95;
      v47 = v68;
      sub_24075AA54();
      if (v47)
      {
        goto LABEL_33;
      }

      (*(v72 + 8))(v46, v73);
      goto LABEL_38;
    case 3:
      v114 = 3;
      sub_2405AE7A0();
      v48 = v96;
      v49 = v68;
      sub_24075AA54();
      if (v49)
      {
        goto LABEL_33;
      }

      (*(v74 + 8))(v48, v75);
      goto LABEL_38;
    case 4:
      v115 = 4;
      sub_2405AE74C();
      v41 = v68;
      sub_24075AA54();
      if (v41)
      {
        goto LABEL_33;
      }

      (*(v76 + 8))(v28, v77);
      goto LABEL_38;
    case 5:
      v116 = 5;
      sub_2405AE6F8();
      v54 = v68;
      sub_24075AA54();
      if (v54)
      {
        goto LABEL_33;
      }

      (*(v78 + 8))(v27, v79);
      goto LABEL_38;
    case 6:
      v117 = 6;
      sub_2405AE6A4();
      v57 = v68;
      sub_24075AA54();
      if (v57)
      {
        goto LABEL_33;
      }

      (*(v80 + 8))(v29, v81);
      goto LABEL_38;
    case 7:
      v118 = 7;
      sub_2405AE650();
      v50 = v97;
      v51 = v68;
      sub_24075AA54();
      if (v51)
      {
        goto LABEL_33;
      }

      (*(v82 + 8))(v50, v83);
      goto LABEL_38;
    case 8:
      v119 = 8;
      sub_2405AE5FC();
      v60 = v98;
      v61 = v68;
      sub_24075AA54();
      if (v61)
      {
        goto LABEL_33;
      }

      (*(v84 + 8))(v60, v85);
      goto LABEL_38;
    case 9:
      v120 = 9;
      sub_2405AE5A8();
      v44 = v99;
      v45 = v68;
      sub_24075AA54();
      if (v45)
      {
        goto LABEL_33;
      }

      (*(v86 + 8))(v44, v87);
      goto LABEL_38;
    case 10:
      v121 = 10;
      sub_2405AE554();
      v58 = v100;
      v59 = v68;
      sub_24075AA54();
      if (v59)
      {
        goto LABEL_33;
      }

      (*(v88 + 8))(v58, v89);
      goto LABEL_38;
    case 11:
      v122 = 11;
      sub_2405AE500();
      v39 = v101;
      v40 = v68;
      sub_24075AA54();
      if (v40)
      {
        goto LABEL_33;
      }

      (*(v90 + 8))(v39, v91);
      goto LABEL_38;
    case 12:
      v123 = 12;
      sub_2405AE4AC();
      v42 = v102;
      v43 = v68;
      sub_24075AA54();
      if (v43)
      {
        goto LABEL_33;
      }

      (*(v92 + 8))(v42, v93);
      goto LABEL_38;
    case 13:
      v124 = 13;
      sub_2405AE458();
      v55 = v103;
      v56 = v68;
      sub_24075AA54();
      if (v56)
      {
        goto LABEL_33;
      }

      (*(v94 + 8))(v55, v31);
      goto LABEL_38;
    default:
      v111 = 0;
      sub_2405AE89C();
      v34 = v66;
      v35 = v68;
      sub_24075AA54();
      if (v35)
      {
LABEL_33:
        (*(v110 + 8))(v24, v21);
        goto LABEL_34;
      }

      (*(v69 + 8))(v34, v65);
LABEL_38:
      (*(v110 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v62 = v109;
      *v30 = v33;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_240598D78()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 21;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240598DAC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240598DE0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240598E14()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240598E48()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240598E7C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240598EB0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240598EE4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240598F18()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240598F4C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AuthenticationModel.PreflightRepair.init(account:success:error:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v9 = *(v8 + 24);
  *(a4 + v9) = 0;
  sub_2405AE39C(a1, a4, type metadata accessor for IdMSAccount);
  *(a4 + *(v8 + 20)) = a2;

  *(a4 + v9) = a3;
}

uint64_t AuthenticationModel.BasicLogin.init(username:password:shouldShowPasswordField:supportsSplitAccounts:isSplitAccountSetup:authenticationContext:currentServices:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a3;
  v17 = a3[1];
  *(a9 + 33) = 514;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = -1;
  *a9 = a1;
  *(a9 + 8) = a2;

  *(a9 + 16) = v16;
  *(a9 + 24) = v17;
  *(a9 + 32) = a4;
  *(a9 + 35) = a5;
  *(a9 + 36) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t AuthenticationModel.BindableState.basicLogin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 24);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 48);
  v13 = *(v3 + 32);
  v8 = v13;
  v14 = v7;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  *(a1 + 16) = v9;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  *(a1 + 96) = v6;
  return sub_2405AE958(v12, v11);
}

__n128 AuthenticationModel.BindableState.basicLogin.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 24);
  v4 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v4;
  v11 = *(v3 + 96);
  v5 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v5;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v6;
  sub_2405AE36C(v10);
  v7 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  result = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = result;
  return result;
}

uint64_t AuthenticationModel.BindableState.secondFactor.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 28));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_2405AE9EC(v10, &v9);
}

__n128 AuthenticationModel.BindableState.secondFactor.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 28));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2405AE30C(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

__n128 _s12AppleIDSetup19AuthenticationModelV12SecondFactorV10codeLength21authenticationContext9errorInfoAESi_So023AKAppleIDAuthenticationJ0CAC05ErrorL0VSgtcfC_0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 72) = 0;
  *a4 = a2;
  *(a4 + 8) = a1;
  sub_2405AE990(0, 1, 0, 0, 0);
  result = *a3;
  v8 = *(a3 + 16);
  *(a4 + 32) = *a3;
  *(a4 + 48) = v8;
  *(a4 + 64) = v6;
  return result;
}

uint64_t AuthenticationModel.BindableState.secondFactorAlert.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 32));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_2405AEA24(v10, &v9);
}

__n128 AuthenticationModel.BindableState.secondFactorAlert.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 32));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2405AE33C(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t AuthenticationModel.ServerRedirect.init(authenticationContext:configuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  *a3 = result;
  a3[1] = a2;
  return result;
}

id AuthenticationModel.BindableState.serverRedirect.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v13 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v13;
  a1[4] = v7;
  v8 = v7;
  v9 = v4;
  v10 = v5;
  v11 = v6;

  return v13;
}

__n128 AuthenticationModel.BindableState.serverRedirect.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 36);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);

  result = *a1;
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v10;
  *(v4 + 32) = v3;
  return result;
}

id AuthenticationModel.BindableState.nativeRecovery.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v12 = v6;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  v8 = v7;
  v9 = v4;
  v10 = v5;

  return v12;
}

__n128 AuthenticationModel.BindableState.nativeRecovery.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 40);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);

  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

id AuthenticationModel.BindableState.fidoChallenge.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v12 = v6;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  v8 = v7;
  v9 = v4;
  v10 = v5;

  return v12;
}

__n128 AuthenticationModel.BindableState.fidoChallenge.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);

  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

uint64_t AuthenticationModel.KeepUsing.init(authenticationContext:username:keepUsing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t AuthenticationModel.BindableState.keepUsing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 48));
  v4 = *(v3 + 2);
  v5 = *(v3 + 24);
  v6 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = v6;
}

__n128 AuthenticationModel.BindableState.keepUsing.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 48);
  v5 = *v4;

  result = v7;
  *v4 = v7;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

__n128 AuthenticationModel.Alert.init(title:message:isPresented:error:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a6 + 32);
  v10 = *(a6 + 40);
  v11 = *(a6 + 48);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 81) = a5;
  sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
  result = *a6;
  v13 = *(a6 + 16);
  *(a7 + 32) = *a6;
  *(a7 + 48) = v13;
  *(a7 + 64) = v9;
  *(a7 + 72) = v10;
  *(a7 + 80) = v11;
  return result;
}

uint64_t AuthenticationModel.BindableState.alert.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 52);
  v4 = *(v3 + 64);
  v7 = *(v3 + 16);
  v6 = *(v3 + 32);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v4;
  v15 = *(v3 + 80);
  v8 = v15;
  v12[1] = v7;
  v12[2] = v6;
  v12[0] = *v3;
  v9 = v12[0];
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 64) = v4;
  *(a1 + 80) = v8;
  *a1 = v9;
  *(a1 + 16) = v7;
  return sub_2405AE2A4(v12, v11);
}

__n128 AuthenticationModel.BindableState.alert.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 52);
  v4 = *(v3 + 64);
  v9[3] = *(v3 + 48);
  v9[4] = v4;
  v10 = *(v3 + 80);
  v5 = *(v3 + 32);
  v9[1] = *(v3 + 16);
  v9[2] = v5;
  v9[0] = *v3;
  sub_2405AE2DC(v9);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

uint64_t AuthenticationModel.BindableState.isAlertPresented.setter(char a1)
{
  result = type metadata accessor for AuthenticationModel.BindableState(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t AuthenticationModel.BindableState.isLoading.setter(char a1)
{
  result = type metadata accessor for AuthenticationModel.BindableState(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_240599DBC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7472656C61;
    v7 = 0xD000000000000010;
    if (a1 != 10)
    {
      v7 = 0x6E6964616F4C7369;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x655265766974616ELL;
    v9 = 0x6C6168436F646966;
    if (a1 != 7)
    {
      v9 = 0x6E6973557065656BLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6574617473627573;
    v2 = 0x6146646E6F636573;
    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0x6552726576726573;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6867696C66657270;
    if (a1 != 1)
    {
      v4 = 0x676F4C6369736162;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_240599F8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B6E6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_240599FC0(uint64_t a1)
{
  v2 = sub_2405AF590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240599FFC(uint64_t a1)
{
  v2 = sub_2405AF590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.BindableState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6628, &qword_24075DA48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405AF590();
  sub_24075AF74();
  LOBYTE(v129[0]) = *v3;
  LOBYTE(v122) = 0;
  sub_2405AF5E4();
  sub_24075ABE4();
  if (!v2)
  {
    v9 = type metadata accessor for AuthenticationModel.BindableState(0);
    v131[0] = 1;
    type metadata accessor for AuthenticationModel.PreflightRepair(0);
    sub_240594D3C(&qword_27E4B6640, type metadata accessor for AuthenticationModel.PreflightRepair, &protocol conformance descriptor for AuthenticationModel.PreflightRepair);
    sub_24075ABE4();
    v10 = &v3[v9[6]];
    v11 = *(v10 + 3);
    v12 = *(v10 + 4);
    v129[5] = *(v10 + 5);
    v13 = *(v10 + 1);
    v129[0] = *v10;
    v129[1] = v13;
    v14 = *(v10 + 2);
    v16 = *v10;
    v15 = *(v10 + 1);
    v17 = v14;
    v129[3] = *(v10 + 3);
    v129[4] = v12;
    v129[2] = v14;
    v18 = *(v10 + 5);
    v126 = v12;
    v127 = v18;
    v122 = v16;
    v123 = v15;
    v130 = v10[96];
    v128 = v10[96];
    v124 = v17;
    v125 = v11;
    v121 = 2;
    sub_2405AE958(v129, v119);
    sub_2405AF638();
    sub_24075ABE4();
    v119[4] = v126;
    v119[5] = v127;
    v120 = v128;
    v119[0] = v122;
    v119[1] = v123;
    v119[2] = v124;
    v119[3] = v125;
    sub_2405AE36C(v119);
    v19 = &v3[v9[7]];
    v20 = v19[2];
    v21 = *v19;
    v115 = v19[1];
    v116 = v20;
    v22 = v19[2];
    v23 = v19[4];
    v117 = v19[3];
    v118 = v23;
    v24 = *v19;
    v111 = v22;
    v112 = v117;
    v113 = v19[4];
    v114 = v24;
    v109 = v21;
    v110 = v115;
    v108 = 3;
    sub_2405AE9EC(&v114, &v86);
    sub_2405AF68C();
    sub_24075ABE4();
    v103[2] = v111;
    v103[3] = v112;
    v103[4] = v113;
    v103[0] = v109;
    v103[1] = v110;
    sub_2405AE30C(v103);
    v25 = &v3[v9[8]];
    v26 = v25[1];
    v27 = v25[3];
    v105 = v25[2];
    v106 = v27;
    v28 = v25[3];
    v107 = v25[4];
    v29 = v25[1];
    v104[0] = *v25;
    v104[1] = v29;
    v100 = v105;
    v101 = v28;
    v102 = v25[4];
    v98 = v104[0];
    v99 = v26;
    v97 = 4;
    sub_2405AEA24(v104, &v86);
    sub_2405AF6E0();
    sub_24075ABE4();
    v96[2] = v100;
    v96[3] = v101;
    v96[4] = v102;
    v96[0] = v98;
    v96[1] = v99;
    sub_2405AE33C(v96);
    v30 = &v3[v9[9]];
    v31 = *v30;
    v33 = *(v30 + 2);
    v32 = *(v30 + 3);
    v73 = *(v30 + 1);
    v74 = v33;
    v34 = *(v30 + 4);
    *&v75 = v32;
    *(&v75 + 1) = v34;
    *&v86 = v31;
    *(&v86 + 1) = v73;
    *&v87 = v33;
    *(&v87 + 1) = v32;
    *&v88 = v34;
    LOBYTE(v80) = 5;
    v132 = sub_2405AF734();
    v35 = v31;
    v36 = v73;
    v37 = v74;
    v38 = v75;
    v39 = *(&v75 + 1);
    sub_24075ABE4();
    v40 = *(&v86 + 1);
    v75 = v87;
    v132 = v88;

    v41 = &v3[v9[10]];
    v43 = *v41;
    v42 = *(v41 + 1);
    v45 = *(v41 + 2);
    v44 = *(v41 + 3);
    v74 = v42;
    *&v75 = v45;
    *(&v75 + 1) = v44;
    *&v86 = v43;
    *(&v86 + 1) = v42;
    *&v87 = v45;
    *(&v87 + 1) = v44;
    LOBYTE(v80) = 6;
    v132 = sub_2405AF788();
    v46 = v43;
    v47 = v74;
    v48 = v75;
    v49 = *(&v75 + 1);
    sub_24075ABE4();
    v50 = *(&v86 + 1);
    v132 = *(&v87 + 1);
    *(&v75 + 1) = v87;

    v51 = &v3[v9[11]];
    v53 = *v51;
    v52 = *(v51 + 1);
    v55 = *(v51 + 2);
    v54 = *(v51 + 3);
    v74 = v52;
    *&v75 = v55;
    *(&v75 + 1) = v54;
    *&v86 = v53;
    *(&v86 + 1) = v52;
    *&v87 = v55;
    *(&v87 + 1) = v54;
    LOBYTE(v80) = 7;
    v132 = sub_2405AF7DC();
    v56 = v53;
    v57 = v74;
    v58 = v75;
    v59 = *(&v75 + 1);
    sub_24075ABE4();
    v61 = *(&v86 + 1);
    v132 = *(&v87 + 1);
    *(&v75 + 1) = v87;

    v62 = &v3[v9[12]];
    v63 = *(v62 + 2);
    v64 = v62[24];
    v93 = *v62;
    v94 = v63;
    v95 = v64;
    v92 = 8;
    *(&v75 + 1) = v93;
    v132 = sub_2405AF830();
    v65 = *(&v75 + 1);

    sub_24075ABE4();
    v66 = v93;

    v67 = &v3[v9[13]];
    v68 = *(v67 + 3);
    v69 = *(v67 + 1);
    v88 = *(v67 + 2);
    v89 = v68;
    v70 = *(v67 + 3);
    v90 = *(v67 + 4);
    v71 = *(v67 + 1);
    v86 = *v67;
    v87 = v71;
    v82 = v88;
    v83 = v70;
    v84 = *(v67 + 4);
    v91 = *(v67 + 40);
    v85 = *(v67 + 40);
    v80 = v86;
    v81 = v69;
    v79 = 9;
    sub_2405AE2A4(&v86, v77);
    sub_2405AF884();
    sub_24075ABE4();
    v77[2] = v82;
    v77[3] = v83;
    v77[4] = v84;
    v78 = v85;
    v77[0] = v80;
    v77[1] = v81;
    sub_2405AE2DC(v77);
    v76 = 10;
    sub_24075ABC4();
    v76 = 11;
    sub_24075ABC4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AuthenticationModel.BindableState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x245CC6BA0](*v1);
  v4 = type metadata accessor for AuthenticationModel.BindableState(0);
  v5 = &v1[v4[5]];
  IdMSAccount.hash(into:)(a1);
  v6 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  sub_24075AE94();
  v7 = *&v5[*(v6 + 24)];
  sub_24075AE94();
  if (v7)
  {
    v8 = v7;
    sub_24075A6E4();
  }

  AuthenticationModel.BasicLogin.hash(into:)(a1);
  AuthenticationModel.SecondFactor.hash(into:)(a1);
  AuthenticationModel.SecondFactor.hash(into:)(a1);
  AuthenticationModel.ServerRedirect.hash(into:)(a1);
  AuthenticationModel.FidoChallenge.hash(into:)(a1);
  AuthenticationModel.FidoChallenge.hash(into:)(a1);
  v9 = &v2[v4[12]];
  v10 = *v9;
  v11 = v9[24];
  if (*v9)
  {
    sub_24075AE94();
    v12 = v10;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075A114();
  if (v11 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  v13 = &v2[v4[13]];
  v14 = *(v13 + 4);
  v15 = *(v13 + 5);
  v16 = *(v13 + 6);
  v17 = *(v13 + 7);
  v19 = *(v13 + 8);
  v18 = *(v13 + 9);
  v20 = v13[80];
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  if (v20 != 255)
  {
    sub_2405AF8D8(v14, v15, v16, v17, v19, v18, v20);
    SetupError.hash(into:)(a1);
    sub_2405AEA70(v14, v15, v16, v17, v19, v18, v20);
  }

  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t AuthenticationModel.BindableState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a1;
  v129 = a2;
  *&v149 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  MEMORY[0x28223BE20](v149);
  v130 = &v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6688, &unk_24075DA50);
  v131 = *(v3 - 8);
  v132 = v3;
  MEMORY[0x28223BE20](v3);
  v146 = &v129 - v4;
  v147 = sub_2407595E4();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = (&v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  MEMORY[0x28223BE20](v6 - 8);
  *&v137 = &v129 - v7;
  v8 = sub_240759634();
  v133 = *(v8 - 1);
  v134 = v8;
  MEMORY[0x28223BE20](v8);
  v135 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_240759454();
  *&v138 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v136 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AuthenticationModel.BindableState(0);
  v140 = MEMORY[0x28223BE20](v11);
  v13 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v13[v140[5]];
  if (qword_27E4B5F10 != -1)
  {
    swift_once();
  }

  v214 = xmmword_27E4B8D90;
  v215 = xmmword_27E4B8DA0;
  v216 = xmmword_27E4B8DB0;
  v217 = xmmword_27E4B8DC0;
  v213 = xmmword_27E4B8D80;
  v15 = type metadata accessor for IdMSAccount(0);
  sub_2405AF99C(&v213, &v206);
  sub_240759594();
  sub_2405AF9F8(v218);
  v16 = (v14 + v15[8]);
  v150 = xmmword_24075D8C0;
  *v16 = xmmword_24075D8C0;
  v17 = v14 + v15[9];
  *v17 = 0;
  v17[8] = 1;
  v18 = v214;
  v19 = v216;
  v14[2] = v215;
  v14[3] = v19;
  v14[4] = v217;
  *v14 = v213;
  v14[1] = v18;
  v20 = (v14 + v15[6]);
  v21 = v218[7];
  v20[6] = v218[6];
  v20[7] = v21;
  v22 = v218[9];
  v20[8] = v218[8];
  v20[9] = v22;
  v23 = v218[3];
  v20[2] = v218[2];
  v20[3] = v23;
  v24 = v218[5];
  v20[4] = v218[4];
  v20[5] = v24;
  v25 = v218[1];
  *v20 = v218[0];
  v20[1] = v25;
  *(v14 + v15[7]) = MEMORY[0x277D84FA0];
  sub_2405AFA1C(*v16, v16[1]);
  *v16 = v150;
  *v17 = 0;
  v17[8] = 0;
  v26 = v149;
  v27 = *(v149 + 24);
  *(v14 + v27) = 0;
  *(v14 + *(v26 + 20)) = 0;

  v219 = v14;
  *(v14 + v27) = 0;
  v28 = v140;
  v29 = v13;
  v30 = &v13[v140[6]];
  v31 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 33) = 514;
  *(v30 + 5) = 0;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0u;
  *(v30 + 11) = 0;
  v30[96] = -1;
  *v30 = 0;
  *(v30 + 1) = 0;

  *(v30 + 35) = 0;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v30[32] = 0;

  v32 = MEMORY[0x277D84F90];
  *(v30 + 5) = v31;
  *(v30 + 6) = v32;

  *(v30 + 7) = 0;
  v33 = &v13[v28[7]];
  v34 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  v33[24] = 1;
  v150 = xmmword_24075D8E0;
  *(v33 + 2) = xmmword_24075D8E0;
  *(v33 + 3) = 0u;
  *(v33 + 4) = 0u;
  *(v33 + 1) = 6;
  *(v33 + 2) = 0;
  *v33 = v34;
  sub_2405AE990(*(v33 + 4), *(v33 + 5), 0, *(v33 + 7), *(v33 + 8));
  *(v33 + 2) = v150;
  *(v33 + 7) = 0;
  *(v33 + 8) = 0;
  *(v33 + 6) = 0;
  v143 = v33;
  v35 = &v13[v28[8]];
  v36 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  *(v35 + 1) = 6;
  *(v35 + 2) = 0;
  v35[24] = 1;
  *(v35 + 2) = v150;
  *(v35 + 3) = 0u;
  *(v35 + 4) = 0u;
  *v35 = v36;
  sub_2405AE990(*(v35 + 4), *(v35 + 5), 0, *(v35 + 7), *(v35 + 8));
  *(v35 + 2) = v150;
  *(v35 + 7) = 0;
  *(v35 + 8) = 0;
  *(v35 + 6) = 0;
  v142 = v35;
  v37 = &v29[v28[9]];
  *&v150 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  (*(v133 + 56))(v137, 1, 1, v134);
  (*(v145 + 13))(v144, *MEMORY[0x277CC91D8], v147);
  sub_240759624();
  v38 = v136;
  sub_240759414();
  v39 = objc_allocWithZone(MEMORY[0x277CF02D8]);
  v40 = sub_2407593F4();
  v41 = [v39 initWithRequest:v40 requestType:0];

  (*(v138 + 8))(v38, v141);
  *(v37 + 4) = 0;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *v37 = v150;

  *&v150 = v37;
  *(v37 + 1) = v41;
  v42 = &v29[v28[10]];
  *v42 = 0u;
  v42[1] = 0u;
  v147 = v42;
  v43 = &v29[v28[11]];
  *v43 = 0u;
  v43[1] = 0u;
  v145 = v43;
  v44 = &v29[v28[12]];
  *v44 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  *(v44 + 1) = 0;
  *(v44 + 2) = 0xE000000000000000;
  v144 = v44;
  v44[24] = 2;
  v45 = &v29[v28[13]];
  *(v45 + 48) = 0u;
  *(v45 + 64) = 0u;
  *(v45 + 32) = 0u;
  *(v45 + 80) = 511;
  *v45 = 0;
  *(v45 + 8) = 0xE000000000000000;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0xE000000000000000;
  sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
  *(v45 + 48) = 0u;
  *(v45 + 64) = 0u;
  *(v45 + 32) = 0u;
  v141 = v45;
  *(v45 + 80) = -1;
  v46 = v148;
  __swift_project_boxed_opaque_existential_1(v148, v148[3]);
  sub_2405AF590();
  v47 = v139;
  sub_24075AF34();
  if (v47)
  {
    *&v149 = v47;
LABEL_5:
    v49 = v142;
    v48 = v143;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_240593D7C(v219, type metadata accessor for AuthenticationModel.PreflightRepair);
    v51 = *(v30 + 5);
    v210 = *(v30 + 4);
    v211 = v51;
    v212 = v30[96];
    v52 = *(v30 + 1);
    v206 = *v30;
    v207 = v52;
    v53 = *(v30 + 3);
    v208 = *(v30 + 2);
    v209 = v53;
    sub_2405AE36C(&v206);
    v54 = *(v48 + 3);
    v163 = *(v48 + 2);
    v164 = v54;
    v165 = *(v48 + 4);
    v55 = *(v48 + 1);
    v161 = *v48;
    v162 = v55;
    sub_2405AE30C(&v161);
    v56 = *(v49 + 3);
    v193 = *(v49 + 2);
    v194 = v56;
    v195 = *(v49 + 4);
    v57 = *(v49 + 1);
    v191 = *v49;
    v192 = v57;
    sub_2405AE33C(&v191);
    v58 = *(v150 + 8);
    v59 = *(v150 + 16);
    v60 = *(v150 + 24);
    v61 = *(v150 + 32);

    v62 = *(v147 + 8);
    v63 = *(v147 + 16);
    v64 = *(v147 + 24);

    v65 = *(v145 + 1);
    v66 = *(v145 + 2);
    v67 = *(v145 + 3);

    v68 = *v144;

    v69 = *(v141 + 48);
    v200 = *(v141 + 32);
    v201 = v69;
    v202 = *(v141 + 64);
    LOWORD(v203) = *(v141 + 80);
    v70 = *(v141 + 16);
    v198 = *v141;
    v199 = v70;
    return sub_2405AE2DC(&v198);
  }

  v139 = v29;
  LOBYTE(v198) = 0;
  sub_2405AFA60();
  sub_24075AAF4();
  v49 = v142;
  v48 = v143;
  *v139 = v206;
  LOBYTE(v206) = 1;
  sub_240594D3C(&qword_27E4B66A0, type metadata accessor for AuthenticationModel.PreflightRepair, &protocol conformance descriptor for AuthenticationModel.PreflightRepair);
  v50 = v130;
  sub_24075AAF4();
  sub_2405AE8F0(v50, v219, type metadata accessor for AuthenticationModel.PreflightRepair);
  v205 = 2;
  sub_2405AFAB4();
  sub_24075AAF4();
  v195 = v210;
  v196 = v211;
  v197 = v212;
  v191 = v206;
  v192 = v207;
  v193 = v208;
  v194 = v209;
  v72 = *(v30 + 1);
  v198 = *v30;
  v199 = v72;
  v73 = *(v30 + 2);
  v74 = *(v30 + 3);
  v75 = *(v30 + 4);
  v76 = *(v30 + 5);
  v204 = v30[96];
  v202 = v75;
  v203 = v76;
  v200 = v73;
  v201 = v74;
  sub_2405AE36C(&v198);
  v77 = v196;
  *(v30 + 4) = v195;
  *(v30 + 5) = v77;
  v30[96] = v197;
  v78 = v192;
  *v30 = v191;
  *(v30 + 1) = v78;
  v79 = v194;
  *(v30 + 2) = v193;
  *(v30 + 3) = v79;
  v185 = 3;
  sub_2405AFB08();
  sub_24075AAF4();
  v181 = v188;
  v182 = v189;
  v179 = v186;
  v180 = v187;
  v80 = *(v48 + 2);
  v81 = *(v48 + 3);
  v82 = *v48;
  v184[1] = *(v48 + 1);
  v184[2] = v80;
  v83 = *(v48 + 4);
  v184[3] = v81;
  v184[4] = v83;
  v183 = v190;
  v184[0] = v82;
  sub_2405AE30C(v184);
  v84 = v182;
  *(v48 + 2) = v181;
  *(v48 + 3) = v84;
  *(v48 + 4) = v183;
  v85 = v180;
  *v48 = v179;
  *(v48 + 1) = v85;
  v173 = 4;
  sub_2405AFB5C();
  sub_24075AAF4();
  v169 = v176;
  v170 = v177;
  v167 = v174;
  v168 = v175;
  v86 = *(v49 + 2);
  v87 = *(v49 + 3);
  v88 = *v49;
  v172[1] = *(v49 + 1);
  v172[2] = v86;
  v89 = *(v49 + 4);
  v172[3] = v87;
  v172[4] = v89;
  v171 = v178;
  v172[0] = v88;
  sub_2405AE33C(v172);
  v90 = v170;
  *(v49 + 2) = v169;
  *(v49 + 3) = v90;
  *(v49 + 4) = v171;
  v91 = v168;
  *v49 = v167;
  *(v49 + 1) = v91;
  LOBYTE(v158[0]) = 5;
  sub_2405AFBB0();
  sub_24075AAF4();
  *&v149 = v163;
  v92 = v150;
  v93 = *v150;
  v94 = *(v150 + 8);
  v95 = *(v150 + 24);
  v134 = *(v150 + 16);
  v135 = v95;
  v136 = *(v150 + 32);
  v137 = v162;
  v138 = v161;

  v96 = v137;
  *v92 = v138;
  *(v92 + 16) = v96;
  *(v92 + 32) = v149;
  LOBYTE(v158[0]) = 6;
  sub_2405AFC04();
  sub_24075AAF4();
  v97 = v147;
  v98 = *v147;
  v99 = *(v147 + 16);
  v100 = *(v147 + 24);
  v136 = *(v147 + 8);
  *&v137 = v99;
  v149 = v161;
  v138 = v162;

  v101 = v138;
  *v97 = v149;
  v97[1] = v101;
  LOBYTE(v158[0]) = 7;
  sub_2405AFC58();
  sub_24075AAF4();
  *&v149 = 0;
  v102 = v145;
  v103 = *v145;
  v104 = *(v145 + 1);
  v106 = *(v145 + 2);
  v105 = *(v145 + 3);
  v137 = v162;
  v138 = v161;

  v107 = v132;
  v108 = v146;
  v109 = v137;
  *v102 = v138;
  v102[1] = v109;
  LOBYTE(v158[0]) = 8;
  sub_2405AFCAC();
  v110 = v149;
  sub_24075AAF4();
  *&v149 = v110;
  if (v110)
  {
    (*(v131 + 8))(v108, v107);
    v46 = v148;
    goto LABEL_7;
  }

  v138 = v161;
  v111 = v162;
  v112 = BYTE8(v162);
  v113 = v144;
  v114 = *v144;

  *v113 = v138;
  v113[2] = v111;
  *(v113 + 24) = v112;
  v160 = 9;
  sub_2405AFD00();
  v115 = v149;
  sub_24075AAF4();
  *&v149 = v115;
  if (v115 || (v154 = v163, v155 = v164, v156 = v165, v157 = v166, v152 = v161, v153 = v162, v116 = v141, v117 = *(v141 + 48), v158[2] = *(v141 + 32), v158[3] = v117, v158[4] = *(v141 + 64), v159 = *(v141 + 80), v118 = *(v141 + 16), v158[0] = *v141, v158[1] = v118, sub_2405AE2DC(v158), v119 = v155, *(v116 + 32) = v154, *(v116 + 48) = v119, *(v116 + 64) = v156, *(v116 + 80) = v157, v120 = v153, *v116 = v152, *(v116 + 16) = v120, v151 = 10, v121 = v149, v122 = sub_24075AAD4(), (*&v149 = v121) != 0) || (v139[v140[14]] = v122 & 1, v151 = 11, v123 = v149, v124 = sub_24075AAD4(), (*&v149 = v123) != 0))
  {
    (*(v131 + 8))(v146, v132);
    v46 = v148;
    goto LABEL_5;
  }

  v125 = v124;
  v126 = v140[15];
  (*(v131 + 8))(v146, v132);
  v127 = v125 & 1;
  v128 = v139;
  v139[v126] = v127;
  sub_240594008(v128, v129, type metadata accessor for AuthenticationModel.BindableState);
  __swift_destroy_boxed_opaque_existential_1(v148);
  return sub_240593D7C(v128, type metadata accessor for AuthenticationModel.BindableState);
}

double sub_24059BBA4@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = -1;
  *a1 = 0;
  *(a1 + 8) = 0;

  *&result = 514;
  *(a1 + 33) = 514;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a1 + 40) = v2;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_24059BC20@<X0>(void *a1@<X8>)
{
  v19 = sub_2407595E4();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_240759634();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_240759454();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  (*(v9 + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x277CC91D8], v19);
  sub_240759624();
  sub_240759414();
  v14 = objc_allocWithZone(MEMORY[0x277CF02D8]);
  v15 = sub_2407593F4();
  v16 = [v14 initWithRequest:v15 requestType:0];

  result = (*(v11 + 8))(v13, v10);
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *a1 = v18;
  a1[1] = v16;
  return result;
}

unint64_t sub_24059BF78(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0x6867696C66657270;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 7369331;
      break;
    case 4:
      result = 0x676F4C6369736162;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6146646E6F636573;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6552726576726573;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x655265766974616ELL;
      break;
    case 12:
      result = 0x6C6168436F646966;
      break;
    case 13:
      result = 0x6E6973557065656BLL;
      break;
    case 14:
      result = 0x7472656C61;
      break;
    case 15:
      result = 0x676E6964616F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24059C164(uint64_t a1)
{
  v2 = sub_2405AFDFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C1A0(uint64_t a1)
{
  v2 = sub_2405AFDFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C1F0(uint64_t a1)
{
  v2 = sub_2405B0144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C22C(uint64_t a1)
{
  v2 = sub_2405B0144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B7270(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24059C2A4(uint64_t a1)
{
  v2 = sub_2405AFD54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C2E0(uint64_t a1)
{
  v2 = sub_2405AFD54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C31C(uint64_t a1)
{
  v2 = sub_2405B00F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C358(uint64_t a1)
{
  v2 = sub_2405B00F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C394(uint64_t a1)
{
  v2 = sub_2405B01EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C3D0(uint64_t a1)
{
  v2 = sub_2405B01EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C40C(uint64_t a1)
{
  v2 = sub_2405AFFF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C448(uint64_t a1)
{
  v2 = sub_2405AFFF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C484(uint64_t a1)
{
  v2 = sub_2405AFF4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C4C0(uint64_t a1)
{
  v2 = sub_2405AFF4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C4FC(uint64_t a1)
{
  v2 = sub_2405AFEA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C538(uint64_t a1)
{
  v2 = sub_2405AFEA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C574(uint64_t a1)
{
  v2 = sub_2405B0294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C5B0(uint64_t a1)
{
  v2 = sub_2405B0294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C5EC(uint64_t a1)
{
  v2 = sub_2405AFE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C628(uint64_t a1)
{
  v2 = sub_2405AFE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C664(uint64_t a1)
{
  v2 = sub_2405AFDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C6A0(uint64_t a1)
{
  v2 = sub_2405AFDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C6DC(uint64_t a1)
{
  v2 = sub_2405AFEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C718(uint64_t a1)
{
  v2 = sub_2405AFEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C754(uint64_t a1)
{
  v2 = sub_2405B0240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C790(uint64_t a1)
{
  v2 = sub_2405B0240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C7CC(uint64_t a1)
{
  v2 = sub_2405B0048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C808(uint64_t a1)
{
  v2 = sub_2405B0048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C844(uint64_t a1)
{
  v2 = sub_2405B009C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C880(uint64_t a1)
{
  v2 = sub_2405B009C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C8BC(uint64_t a1)
{
  v2 = sub_2405AFFA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C8F8(uint64_t a1)
{
  v2 = sub_2405AFFA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C934(uint64_t a1)
{
  v2 = sub_2405B0198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C970(uint64_t a1)
{
  v2 = sub_2405B0198();

  return MEMORY[0x2821FE720](a1, v2);
}

void AuthenticationModel.State.encode(to:)(void *a1)
{
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B66E8, &qword_24075DA60);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v117 - v2;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B66F0, &qword_24075DA68);
  v165 = *(v166 - 1);
  MEMORY[0x28223BE20](v166);
  v164 = &v117 - v3;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B66F8, &qword_24075DA70);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v117 - v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6700, &qword_24075DA78);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v117 - v5;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6708, &qword_24075DA80);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v117 - v6;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6710, &qword_24075DA88);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v117 - v7;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6718, &qword_24075DA90);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145 = &v117 - v8;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6720, &qword_24075DA98);
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = &v117 - v9;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6728, &qword_24075DAA0);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v117 - v10;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6730, &qword_24075DAA8);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v136 = &v117 - v11;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6738, &qword_24075DAB0);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v134 = &v117 - v12;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6740, &qword_24075DAB8);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v117 - v13;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6748, &qword_24075DAC0);
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v124 = &v117 - v14;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6750, &qword_24075DAC8);
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v125 = &v117 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6758, &qword_24075DAD0);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v117 - v16;
  v167 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v17 = MEMORY[0x28223BE20](v167);
  v120 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v119 = &v117 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6760, &qword_24075DAD8);
  v118 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v117 - v21;
  v23 = type metadata accessor for AuthenticationModel.State(0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v127 = &v117 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v117 - v29;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6768, &qword_24075DAE0);
  v170[0] = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v32 = &v117 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405AFD54();
  v169 = v32;
  sub_24075AF74();
  sub_240594008(v168, v30, type metadata accessor for AuthenticationModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v33 = v120;
      sub_2405AE39C(v30, v120, type metadata accessor for AuthenticationModel.PreflightRepair);
      LOBYTE(v179) = 2;
      sub_2405B01EC();
      v34 = v125;
      v35 = v171;
      v36 = v169;
      sub_24075AB54();
      sub_240594D3C(&qword_27E4B6640, type metadata accessor for AuthenticationModel.PreflightRepair, &protocol conformance descriptor for AuthenticationModel.PreflightRepair);
      v37 = v130;
      sub_24075ABE4();
      v38 = &v160;
      goto LABEL_16;
    case 2u:
      v77 = *(v30 + 5);
      v183 = *(v30 + 4);
      v184 = v77;
      v185 = v30[96];
      v78 = *(v30 + 1);
      v179 = *v30;
      v180 = v78;
      v79 = *(v30 + 3);
      v181 = *(v30 + 2);
      v182 = v79;
      LOBYTE(v172) = 4;
      sub_2405B0144();
      v80 = v131;
      v81 = v171;
      v82 = v169;
      sub_24075AB54();
      v176 = v183;
      v177 = v184;
      v178 = v185;
      v172 = v179;
      v173 = v180;
      v175 = v182;
      v174 = v181;
      sub_2405AF638();
      v83 = v133;
      sub_24075ABE4();
      v84 = &v164;
      goto LABEL_13;
    case 3u:
      v86 = *(v30 + 5);
      v183 = *(v30 + 4);
      v184 = v86;
      v185 = v30[96];
      v87 = *(v30 + 1);
      v179 = *v30;
      v180 = v87;
      v88 = *(v30 + 3);
      v181 = *(v30 + 2);
      v182 = v88;
      LOBYTE(v172) = 5;
      sub_2405B00F0();
      v80 = v134;
      v81 = v171;
      v82 = v169;
      sub_24075AB54();
      v176 = v183;
      v177 = v184;
      v178 = v185;
      v172 = v179;
      v173 = v180;
      v175 = v182;
      v174 = v181;
      sub_2405AF638();
      v83 = v137;
      sub_24075ABE4();
      v84 = &v167;
LABEL_13:
      (*(*(v84 - 32) + 1))(v80, v83);
      (*(v170[0] + 8))(v82, v81);
      sub_2405AE36C(&v179);
      return;
    case 4u:
      v49 = *(v30 + 3);
      v181 = *(v30 + 2);
      v182 = v49;
      v183 = *(v30 + 4);
      v50 = *(v30 + 1);
      v179 = *v30;
      v180 = v50;
      LOBYTE(v172) = 6;
      sub_2405B009C();
      v51 = v136;
      v52 = v171;
      v53 = v169;
      sub_24075AB54();
      v174 = v181;
      v175 = v182;
      v176 = v183;
      v173 = v180;
      v172 = v179;
      sub_2405AF68C();
      v54 = v139;
      sub_24075ABE4();
      v55 = v170;
      goto LABEL_20;
    case 5u:
      v98 = *(v30 + 3);
      v181 = *(v30 + 2);
      v182 = v98;
      v183 = *(v30 + 4);
      v99 = *(v30 + 1);
      v179 = *v30;
      v180 = v99;
      LOBYTE(v172) = 7;
      sub_2405B0048();
      v100 = v140;
      v101 = v171;
      v102 = v169;
      sub_24075AB54();
      v174 = v181;
      v175 = v182;
      v176 = v183;
      v173 = v180;
      v172 = v179;
      sub_2405AF6E0();
      v103 = v142;
      sub_24075ABE4();
      (*(v141 + 8))(v100, v103);
      (*(v170[0] + 8))(v102, v101);
      sub_2405AE33C(&v179);
      return;
    case 6u:
      v109 = *(v30 + 3);
      v181 = *(v30 + 2);
      v182 = v109;
      v183 = *(v30 + 4);
      v110 = *(v30 + 1);
      v179 = *v30;
      v180 = v110;
      LOBYTE(v172) = 8;
      sub_2405AFFF4();
      v51 = v143;
      v52 = v171;
      v53 = v169;
      sub_24075AB54();
      v174 = v181;
      v175 = v182;
      v176 = v183;
      v173 = v180;
      v172 = v179;
      sub_2405AF68C();
      v54 = v146;
      sub_24075ABE4();
      v55 = &v173 + 8;
LABEL_20:
      (*(*(v55 - 32) + 8))(v51, v54);
      (*(v170[0] + 8))(v53, v52);
      sub_2405AE30C(&v179);
      return;
    case 7u:
      v90 = *v30;
      v89 = *(v30 + 1);
      v92 = *(v30 + 2);
      v91 = *(v30 + 3);
      v93 = *(v30 + 4);
      LOBYTE(v179) = 9;
      sub_2405AFFA0();
      v94 = v145;
      v95 = v169;
      sub_24075AB54();
      v164 = v90;
      *&v179 = v90;
      *(&v179 + 1) = v89;
      v165 = v89;
      v166 = v92;
      *&v180 = v92;
      *(&v180 + 1) = v91;
      v167 = v91;
      v168 = v93;
      *&v181 = v93;
      sub_2405AF734();
      v96 = v148;
      sub_24075ABE4();
      v97 = &v175;
      goto LABEL_24;
    case 8u:
      v113 = *v30;
      v112 = *(v30 + 1);
      v115 = *(v30 + 2);
      v114 = *(v30 + 3);
      v116 = *(v30 + 4);
      LOBYTE(v179) = 10;
      sub_2405AFF4C();
      v94 = v149;
      v95 = v169;
      sub_24075AB54();
      v164 = v113;
      *&v179 = v113;
      *(&v179 + 1) = v112;
      v165 = v112;
      v166 = v115;
      *&v180 = v115;
      *(&v180 + 1) = v114;
      v167 = v114;
      v168 = v116;
      *&v181 = v116;
      sub_2405AF734();
      v96 = v151;
      sub_24075ABE4();
      v97 = &v176 + 8;
LABEL_24:
      (*(*(v97 - 32) + 8))(v94, v96);
      (*(v170[0] + 8))(v95, v171);

      goto LABEL_25;
    case 9u:
      v69 = *v30;
      v68 = *(v30 + 1);
      v71 = *(v30 + 2);
      v70 = *(v30 + 3);
      LOBYTE(v179) = 11;
      sub_2405AFEF8();
      v72 = v152;
      v73 = v171;
      v74 = v169;
      sub_24075AB54();
      *&v179 = v69;
      *(&v179 + 1) = v68;
      *&v180 = v71;
      *(&v180 + 1) = v70;
      v168 = v70;
      sub_2405AF788();
      v75 = v154;
      sub_24075ABE4();
      v76 = &v178;
      goto LABEL_22;
    case 0xAu:
      v69 = *v30;
      v68 = *(v30 + 1);
      v71 = *(v30 + 2);
      v111 = *(v30 + 3);
      LOBYTE(v179) = 12;
      sub_2405AFEA4();
      v72 = v155;
      v73 = v171;
      v74 = v169;
      sub_24075AB54();
      *&v179 = v69;
      *(&v179 + 1) = v68;
      *&v180 = v71;
      *(&v180 + 1) = v111;
      v168 = v111;
      sub_2405AF7DC();
      v75 = v157;
      sub_24075ABE4();
      v76 = &v179 + 8;
LABEL_22:
      (*(*(v76 - 32) + 8))(v72, v75);
      (*(v170[0] + 8))(v74, v73);

LABEL_25:
      return;
    case 0xBu:
      v41 = *v30;
      v42 = *(v30 + 1);
      v43 = *(v30 + 2);
      v44 = v30[24];
      LOBYTE(v179) = 13;
      sub_2405AFE50();
      v45 = v158;
      v46 = v171;
      v47 = v169;
      sub_24075AB54();
      *&v179 = v41;
      *(&v179 + 1) = v42;
      *&v180 = v43;
      BYTE8(v180) = v44;
      sub_2405AF830();
      v48 = v160;
      sub_24075ABE4();
      (*(v159 + 8))(v45, v48);
      (*(v170[0] + 8))(v47, v46);

      return;
    case 0xCu:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v57 = swift_projectBox();
      v58 = *(v57 + 32);
      v59 = *(v57 + 48);
      v60 = *(v57 + 64);
      LOWORD(v184) = *(v57 + 80);
      v182 = v59;
      v183 = v60;
      v61 = *(v57 + 16);
      v179 = *v57;
      v180 = v61;
      v181 = v58;
      v62 = v127;
      sub_240594008(v57 + *(v56 + 48), v127, type metadata accessor for AuthenticationModel.State);
      v186 = 14;
      sub_2405AE2A4(&v179, &v172);
      sub_2405AFDFC();
      v63 = v164;
      v64 = v171;
      v65 = v169;
      sub_24075AB54();
      v174 = v181;
      v175 = v182;
      v176 = v183;
      LOWORD(v177) = v184;
      v172 = v179;
      v173 = v180;
      v186 = 0;
      sub_2405AF884();
      v66 = v166;
      v67 = v170[1];
      sub_24075ABE4();
      if (v67)
      {
        (*(v165 + 1))(v63, v66);
        sub_240593D7C(v62, type metadata accessor for AuthenticationModel.State);
        (*(v170[0] + 8))(v65, v64);
        sub_2405AE2DC(&v179);
      }

      else
      {
        LOBYTE(v172) = 1;
        sub_240594D3C(&qword_27E4B6448, type metadata accessor for AuthenticationModel.State, &protocol conformance descriptor for AuthenticationModel.State);
        sub_24075ABE4();
        sub_2405AE2DC(&v179);
        (*(v165 + 1))(v63, v66);
        sub_240593D7C(v62, type metadata accessor for AuthenticationModel.State);
        (*(v170[0] + 8))(v65, v64);
      }

      goto LABEL_27;
    case 0xDu:
      v104 = swift_projectBox();
      sub_240594008(v104, v26, type metadata accessor for AuthenticationModel.State);
      LOBYTE(v179) = 15;
      sub_2405AFDA8();
      v105 = v161;
      v106 = v171;
      v107 = v169;
      sub_24075AB54();
      sub_240594D3C(&qword_27E4B6448, type metadata accessor for AuthenticationModel.State, &protocol conformance descriptor for AuthenticationModel.State);
      v108 = v163;
      sub_24075ABE4();
      (*(v162 + 8))(v105, v108);
      sub_240593D7C(v26, type metadata accessor for AuthenticationModel.State);
      (*(v170[0] + 8))(v107, v106);
LABEL_27:

      return;
    case 0xEu:
      LOBYTE(v179) = 0;
      sub_2405B0294();
      v39 = v171;
      v40 = v169;
      sub_24075AB54();
      (*(v118 + 8))(v22, v20);
      goto LABEL_11;
    case 0xFu:
      LOBYTE(v179) = 3;
      sub_2405B0198();
      v85 = v124;
      v39 = v171;
      v40 = v169;
      sub_24075AB54();
      (*(v126 + 8))(v85, v129);
LABEL_11:
      (*(v170[0] + 8))(v40, v39);
      break;
    default:
      v33 = v119;
      sub_2405AE39C(v30, v119, type metadata accessor for AuthenticationModel.PreflightRepair);
      LOBYTE(v179) = 1;
      sub_2405B0240();
      v34 = v121;
      v35 = v171;
      v36 = v169;
      sub_24075AB54();
      sub_240594D3C(&qword_27E4B6640, type metadata accessor for AuthenticationModel.PreflightRepair, &protocol conformance descriptor for AuthenticationModel.PreflightRepair);
      v37 = v123;
      sub_24075ABE4();
      v38 = &v154;
LABEL_16:
      (*(*(v38 - 32) + 8))(v34, v37);
      sub_240593D7C(v33, type metadata accessor for AuthenticationModel.PreflightRepair);
      (*(v170[0] + 8))(v36, v35);
      break;
  }
}

void AuthenticationModel.State.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v74[-v8];
  v10 = type metadata accessor for AuthenticationModel.State(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v74[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v74[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v74[-v17];
  sub_240594008(v2, &v74[-v17], type metadata accessor for AuthenticationModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2405AE39C(v18, v7, type metadata accessor for AuthenticationModel.PreflightRepair);
      MEMORY[0x245CC6BA0](2);
      IdMSAccount.hash(into:)(a1);
      sub_24075AE94();
      v66 = *&v7[*(v4 + 24)];
      sub_24075AE94();
      if (v66)
      {
        v67 = v66;
        sub_24075A6E4();
      }

      v73 = v7;
      goto LABEL_35;
    case 2u:
      v53 = *(v18 + 5);
      v96 = *(v18 + 4);
      v97 = v53;
      v98 = v18[96];
      v54 = *(v18 + 1);
      v92 = *v18;
      v93 = v54;
      v55 = *(v18 + 3);
      v94 = *(v18 + 2);
      v95 = v55;
      v56 = 4;
      goto LABEL_15;
    case 3u:
      v57 = *(v18 + 5);
      v96 = *(v18 + 4);
      v97 = v57;
      v98 = v18[96];
      v58 = *(v18 + 1);
      v92 = *v18;
      v93 = v58;
      v59 = *(v18 + 3);
      v94 = *(v18 + 2);
      v95 = v59;
      v56 = 5;
LABEL_15:
      MEMORY[0x245CC6BA0](v56);
      v89 = v96;
      v90 = v97;
      v91 = v98;
      v85 = v92;
      v86 = v93;
      v88 = v95;
      v87 = v94;
      AuthenticationModel.BasicLogin.hash(into:)(a1);
      sub_2405AE36C(&v92);
      return;
    case 4u:
      v25 = *(v18 + 3);
      v94 = *(v18 + 2);
      v95 = v25;
      v96 = *(v18 + 4);
      v26 = *(v18 + 1);
      v92 = *v18;
      v93 = v26;
      v27 = 6;
      goto LABEL_22;
    case 5u:
      v68 = *(v18 + 3);
      v94 = *(v18 + 2);
      v95 = v68;
      v96 = *(v18 + 4);
      v69 = *(v18 + 1);
      v92 = *v18;
      v93 = v69;
      MEMORY[0x245CC6BA0](7);
      v87 = v94;
      v88 = v95;
      v89 = v96;
      v86 = v93;
      v85 = v92;
      AuthenticationModel.SecondFactor.hash(into:)(a1);
      sub_2405AE33C(&v92);
      return;
    case 6u:
      v71 = *(v18 + 3);
      v94 = *(v18 + 2);
      v95 = v71;
      v96 = *(v18 + 4);
      v72 = *(v18 + 1);
      v92 = *v18;
      v93 = v72;
      v27 = 8;
LABEL_22:
      MEMORY[0x245CC6BA0](v27);
      v87 = v94;
      v88 = v95;
      v89 = v96;
      v86 = v93;
      v85 = v92;
      AuthenticationModel.SecondFactor.hash(into:)(a1);
      sub_2405AE30C(&v92);
      return;
    case 7u:
      v60 = *v18;
      v61 = *(v18 + 1);
      v62 = *(v18 + 2);
      v63 = *(v18 + 3);
      v64 = *(v18 + 4);
      v65 = 9;
      goto LABEL_26;
    case 8u:
      v60 = *v18;
      v61 = *(v18 + 1);
      v62 = *(v18 + 2);
      v63 = *(v18 + 3);
      v64 = *(v18 + 4);
      v65 = 10;
LABEL_26:
      MEMORY[0x245CC6BA0](v65);
      *&v92 = v60;
      *(&v92 + 1) = v61;
      *&v93 = v62;
      *(&v93 + 1) = v63;
      *&v94 = v64;
      AuthenticationModel.ServerRedirect.hash(into:)(a1);

      return;
    case 9u:
      v48 = *v18;
      v49 = *(v18 + 1);
      v50 = *(v18 + 2);
      v51 = *(v18 + 3);
      v52 = 11;
      goto LABEL_24;
    case 0xAu:
      v48 = *v18;
      v49 = *(v18 + 1);
      v50 = *(v18 + 2);
      v51 = *(v18 + 3);
      v52 = 12;
LABEL_24:
      MEMORY[0x245CC6BA0](v52);
      *&v92 = v48;
      *(&v92 + 1) = v49;
      *&v93 = v50;
      *(&v93 + 1) = v51;
      AuthenticationModel.FidoChallenge.hash(into:)(a1);

      return;
    case 0xBu:
      v22 = *v18;
      v23 = v18[24];
      MEMORY[0x245CC6BA0](13);
      sub_24075AE94();
      if (v22)
      {
        v24 = v22;
        sub_24075A6E4();
      }

      sub_24075A114();
      if (v23 != 2)
      {
        sub_24075AE94();
      }

      sub_24075AE94();

      return;
    case 0xCu:
      v28 = *v18;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v84 = v28;
      v30 = swift_projectBox();
      v31 = *(v30 + 8);
      v83 = *v30;
      v32 = *(v30 + 24);
      v82 = *(v30 + 16);
      v33 = *(v30 + 32);
      v77 = *(v30 + 40);
      v34 = *(v30 + 48);
      v76 = *(v30 + 56);
      v36 = *(v30 + 64);
      v35 = *(v30 + 72);
      v75 = *(v30 + 80);
      v78 = *(v30 + 81);
      sub_240594008(v30 + *(v29 + 48), v16, type metadata accessor for AuthenticationModel.State);
      MEMORY[0x245CC6BA0](14);

      v37 = v33;
      v38 = v33;
      v39 = v77;
      v80 = v34;
      v40 = v34;
      v41 = v76;
      v81 = v36;
      v42 = v36;
      v43 = v75;
      v79 = v35;
      sub_2405B02E8(v38, v77, v40, v76, v42, v35, v75);
      v83 = v31;
      sub_24075A114();
      v82 = v32;
      sub_24075A114();
      if (v43 == 255)
      {
        sub_24075AE94();
        v44 = v37;
        v45 = v80;
        v46 = v81;
        v47 = v79;
      }

      else
      {
        v44 = v37;
        *&v92 = v37;
        *(&v92 + 1) = v39;
        v45 = v80;
        *&v93 = v80;
        *(&v93 + 1) = v41;
        v46 = v81;
        v47 = v79;
        *&v94 = v81;
        *(&v94 + 1) = v79;
        LOBYTE(v95) = v43;
        sub_24075AE94();
        sub_2405AF8D8(v44, v39, v45, v41, v46, v47, v43);
        SetupError.hash(into:)(a1);
        sub_2405AEA70(v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95);
      }

      sub_24075AE94();
      AuthenticationModel.State.hash(into:)(a1);

      sub_2405AEA5C(v44, v39, v45, v41, v46, v47, v43);
      sub_240593D7C(v16, type metadata accessor for AuthenticationModel.State);
      goto LABEL_32;
    case 0xDu:
      v70 = swift_projectBox();
      sub_240594008(v70, v13, type metadata accessor for AuthenticationModel.State);
      MEMORY[0x245CC6BA0](15);
      AuthenticationModel.State.hash(into:)(a1);
      sub_240593D7C(v13, type metadata accessor for AuthenticationModel.State);
LABEL_32:

      return;
    case 0xEu:
      v21 = 0;
      goto LABEL_13;
    case 0xFu:
      v21 = 3;
LABEL_13:
      MEMORY[0x245CC6BA0](v21);
      break;
    default:
      sub_2405AE39C(v18, v9, type metadata accessor for AuthenticationModel.PreflightRepair);
      MEMORY[0x245CC6BA0](1);
      IdMSAccount.hash(into:)(a1);
      sub_24075AE94();
      v19 = *&v9[*(v4 + 24)];
      sub_24075AE94();
      if (v19)
      {
        v20 = v19;
        sub_24075A6E4();
      }

      v73 = v9;
LABEL_35:
      sub_240593D7C(v73, type metadata accessor for AuthenticationModel.PreflightRepair);
      break;
  }
}

uint64_t sub_24059ED7C(uint64_t (*a1)(void *))
{
  sub_24075AE64();
  a1(v3);
  return sub_24075AED4();
}

uint64_t AuthenticationModel.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v203 = a2;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B67F8, &qword_24075DAE8);
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v201 = v146 - v3;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6800, &qword_24075DAF0);
  v205 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v202 = v146 - v4;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6808, &qword_24075DAF8);
  v204 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v200 = v146 - v5;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6810, &qword_24075DB00);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v199 = v146 - v6;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6818, &qword_24075DB08);
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v198 = v146 - v7;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6820, &qword_24075DB10);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v197 = v146 - v8;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6828, &qword_24075DB18);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v196 = v146 - v9;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6830, &qword_24075DB20);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v195 = v146 - v10;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6838, &qword_24075DB28);
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v194 = v146 - v11;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6840, &qword_24075DB30);
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v193 = v146 - v12;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6848, &qword_24075DB38);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v192 = v146 - v13;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6850, &qword_24075DB40);
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v191 = v146 - v14;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6858, &qword_24075DB48);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v190 = v146 - v15;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6860, &qword_24075DB50);
  v167 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v189 = v146 - v16;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6868, &qword_24075DB58);
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v209 = v146 - v17;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6870, &qword_24075DB60);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v207 = v146 - v18;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6878, &qword_24075DB68);
  v211 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v20 = v146 - v19;
  v206 = type metadata accessor for AuthenticationModel.State(0);
  v21 = MEMORY[0x28223BE20](v206);
  v159 = (v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v158 = (v146 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v157 = (v146 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v156 = (v146 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v154 = (v146 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v155 = v146 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v153 = v146 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v152 = v146 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = v146 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = v146 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = v146 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = v146 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = (v146 - v49);
  v51 = a1[3];
  v213 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v51);
  sub_2405AFD54();
  v212 = v20;
  v52 = v214;
  sub_24075AF34();
  v214 = v52;
  if (v52)
  {
LABEL_53:
    v74 = v213;
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v149 = v48;
  v150 = v45;
  v147 = v42;
  v148 = v39;
  v53 = v207;
  v55 = v209;
  v54 = v210;
  v151 = v50;
  v56 = v208;
  v57 = sub_24075AB34();
  if (*(v57 + 16) != 1 || (v58 = *(v57 + 32), v58 == 16))
  {
    v64 = sub_24075A8C4();
    v65 = swift_allocError();
    v66 = v56;
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v68 = v206;
    v69 = v212;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v64 - 8) + 104))(v68, *MEMORY[0x277D84160], v64);
    v214 = v65;
    swift_willThrow();
    (*(v211 + 8))(v69, v66);
LABEL_52:
    swift_unknownObjectRelease();
    goto LABEL_53;
  }

  v146[1] = v57;
  v59 = v212;
  v60 = v205;
  v61 = v204;
  switch(v58)
  {
    case 1:
      LOBYTE(v215) = 1;
      sub_2405B0240();
      v115 = v214;
      sub_24075AA54();
      v214 = v115;
      if (v115)
      {
        goto LABEL_51;
      }

      type metadata accessor for AuthenticationModel.PreflightRepair(0);
      sub_240594D3C(&qword_27E4B66A0, type metadata accessor for AuthenticationModel.PreflightRepair, &protocol conformance descriptor for AuthenticationModel.PreflightRepair);
      v116 = v149;
      v117 = v164;
      v118 = v214;
      sub_24075AAF4();
      (*(v163 + 8))(v55, v117);
      (*(v211 + 8))(v59, v56);
      swift_unknownObjectRelease();
      v74 = v213;
      v214 = v118;
      if (!v118)
      {
        v119 = v213;
        swift_storeEnumTagMultiPayload();
        v63 = v151;
        sub_2405AE39C(v116, v151, type metadata accessor for AuthenticationModel.State);
        goto LABEL_67;
      }

      return __swift_destroy_boxed_opaque_existential_1(v74);
    case 2:
      LOBYTE(v215) = 2;
      sub_2405B01EC();
      v99 = v189;
      v100 = v214;
      sub_24075AA54();
      v214 = v100;
      if (v100)
      {
        goto LABEL_51;
      }

      type metadata accessor for AuthenticationModel.PreflightRepair(0);
      sub_240594D3C(&qword_27E4B66A0, type metadata accessor for AuthenticationModel.PreflightRepair, &protocol conformance descriptor for AuthenticationModel.PreflightRepair);
      v101 = v150;
      v102 = v162;
      v103 = v214;
      sub_24075AAF4();
      v214 = v103;
      if (v103)
      {
        (*(v167 + 8))(v99, v102);
        goto LABEL_51;
      }

      (*(v167 + 8))(v99, v102);
      (*(v211 + 8))(v59, v56);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v138 = v101;
      goto LABEL_64;
    case 3:
      LOBYTE(v215) = 3;
      sub_2405B0198();
      v109 = v190;
      v110 = v214;
      sub_24075AA54();
      v214 = v110;
      if (v110)
      {
        goto LABEL_51;
      }

      (*(v165 + 8))(v109, v166);
      (*(v211 + 8))(v59, v56);
      swift_unknownObjectRelease();
      v63 = v151;
      goto LABEL_65;
    case 4:
      LOBYTE(v215) = 4;
      sub_2405B0144();
      v83 = v191;
      v84 = v214;
      sub_24075AA54();
      v214 = v84;
      if (v84)
      {
        goto LABEL_51;
      }

      sub_2405AFAB4();
      v85 = v169;
      v86 = v214;
      sub_24075AAF4();
      v87 = (v168 + 8);
      v88 = (v211 + 8);
      v214 = v86;
      if (v86)
      {
        goto LABEL_56;
      }

      (*v87)(v83, v85);
      (*v88)(v59, v56);
      swift_unknownObjectRelease();
      v89 = v220;
      v82 = v147;
      *(v147 + 4) = v219;
      v82[5] = v89;
      *(v82 + 96) = v221;
      v90 = v216;
      *v82 = v215;
      v82[1] = v90;
      v91 = v218;
      v82[2] = v217;
      v82[3] = v91;
      goto LABEL_63;
    case 5:
      LOBYTE(v215) = 5;
      sub_2405B00F0();
      v83 = v192;
      v120 = v214;
      sub_24075AA54();
      v214 = v120;
      if (v120)
      {
        goto LABEL_51;
      }

      sub_2405AFAB4();
      v85 = v171;
      v121 = v214;
      sub_24075AAF4();
      v87 = (v170 + 8);
      v88 = (v211 + 8);
      v214 = v121;
      if (v121)
      {
        goto LABEL_56;
      }

      (*v87)(v83, v85);
      (*v88)(v59, v56);
      swift_unknownObjectRelease();
      v122 = v220;
      v82 = v148;
      *(v148 + 4) = v219;
      v82[5] = v122;
      *(v82 + 96) = v221;
      v123 = v216;
      *v82 = v215;
      v82[1] = v123;
      v124 = v218;
      v82[2] = v217;
      v82[3] = v124;
      goto LABEL_63;
    case 6:
      LOBYTE(v215) = 6;
      sub_2405B009C();
      v83 = v193;
      v129 = v214;
      sub_24075AA54();
      v214 = v129;
      if (v129)
      {
        goto LABEL_51;
      }

      sub_2405AFB08();
      v85 = v173;
      v130 = v214;
      sub_24075AAF4();
      v87 = (v172 + 8);
      v88 = (v211 + 8);
      v214 = v130;
      if (v130)
      {
        goto LABEL_56;
      }

      (*v87)(v83, v85);
      (*v88)(v59, v56);
      swift_unknownObjectRelease();
      v131 = v218;
      v82 = v152;
      *(v152 + 2) = v217;
      v82[3] = v131;
      v82[4] = v219;
      v132 = v216;
      *v82 = v215;
      v82[1] = v132;
      goto LABEL_63;
    case 7:
      LOBYTE(v215) = 7;
      sub_2405B0048();
      v83 = v194;
      v111 = v214;
      sub_24075AA54();
      v214 = v111;
      if (v111)
      {
        goto LABEL_51;
      }

      sub_2405AFB5C();
      v85 = v175;
      v112 = v214;
      sub_24075AAF4();
      v87 = (v174 + 8);
      v88 = (v211 + 8);
      v214 = v112;
      if (v112)
      {
        goto LABEL_56;
      }

      (*v87)(v83, v85);
      (*v88)(v59, v56);
      swift_unknownObjectRelease();
      v113 = v218;
      v82 = v153;
      *(v153 + 2) = v217;
      v82[3] = v113;
      v82[4] = v219;
      v114 = v216;
      *v82 = v215;
      v82[1] = v114;
      goto LABEL_63;
    case 8:
      LOBYTE(v215) = 8;
      sub_2405AFFF4();
      v83 = v195;
      v135 = v214;
      sub_24075AA54();
      v214 = v135;
      if (v135)
      {
        goto LABEL_51;
      }

      sub_2405AFB08();
      v85 = v177;
      v137 = v214;
      sub_24075AAF4();
      v87 = (v176 + 8);
      v88 = (v211 + 8);
      v214 = v137;
      if (v137)
      {
LABEL_56:
        (*v87)(v83, v85);
        (*v88)(v59, v56);
        goto LABEL_52;
      }

      (*v87)(v83, v85);
      (*v88)(v59, v56);
      swift_unknownObjectRelease();
      v144 = v218;
      v82 = v155;
      *(v155 + 2) = v217;
      v82[3] = v144;
      v82[4] = v219;
      v145 = v216;
      *v82 = v215;
      v82[1] = v145;
      goto LABEL_63;
    case 9:
      LOBYTE(v215) = 9;
      sub_2405AFFA0();
      v75 = v196;
      v95 = v214;
      sub_24075AA54();
      v214 = v95;
      if (v95)
      {
        goto LABEL_51;
      }

      sub_2405AFBB0();
      v77 = v179;
      v96 = v214;
      sub_24075AAF4();
      v79 = v211;
      v214 = v96;
      v80 = &v210;
      if (v96)
      {
        goto LABEL_48;
      }

      (*(v178 + 8))(v75, v77);
      (*(v79 + 8))(v59, v56);
      swift_unknownObjectRelease();
      v97 = v217;
      v98 = v216;
      v82 = v154;
      *v154 = v215;
      v82[1] = v98;
      *(v82 + 4) = v97;
      goto LABEL_63;
    case 10:
      LOBYTE(v215) = 10;
      sub_2405AFF4C();
      v75 = v197;
      v133 = v214;
      sub_24075AA54();
      v214 = v133;
      if (v133)
      {
        goto LABEL_51;
      }

      sub_2405AFBB0();
      v77 = v181;
      v134 = v214;
      sub_24075AAF4();
      v79 = v211;
      v214 = v134;
      v80 = &v212;
      if (v134)
      {
        goto LABEL_48;
      }

      (*(v180 + 8))(v75, v77);
      (*(v79 + 8))(v59, v56);
      swift_unknownObjectRelease();
      v142 = v217;
      v143 = v216;
      v82 = v156;
      *v156 = v215;
      v82[1] = v143;
      *(v82 + 4) = v142;
      goto LABEL_63;
    case 11:
      LOBYTE(v215) = 11;
      sub_2405AFEF8();
      v75 = v198;
      v76 = v214;
      sub_24075AA54();
      v214 = v76;
      if (v76)
      {
        goto LABEL_51;
      }

      sub_2405AFC04();
      v77 = v183;
      v78 = v214;
      sub_24075AAF4();
      v79 = v211;
      v214 = v78;
      v80 = &v214;
      if (v78)
      {
        goto LABEL_48;
      }

      (*(v182 + 8))(v75, v77);
      (*(v79 + 8))(v59, v56);
      swift_unknownObjectRelease();
      v81 = v216;
      v82 = v157;
      *v157 = v215;
      v82[1] = v81;
      goto LABEL_63;
    case 12:
      LOBYTE(v215) = 12;
      sub_2405AFEA4();
      v75 = v199;
      v92 = v214;
      sub_24075AA54();
      v214 = v92;
      if (v92)
      {
        goto LABEL_51;
      }

      sub_2405AFC58();
      v77 = v185;
      v93 = v214;
      sub_24075AAF4();
      v79 = v211;
      v214 = v93;
      v80 = &v215 + 1;
      if (!v93)
      {
        (*(v184 + 8))(v75, v77);
        (*(v79 + 8))(v59, v56);
        swift_unknownObjectRelease();
        v94 = v216;
        v82 = v158;
        *v158 = v215;
        v82[1] = v94;
        goto LABEL_63;
      }

LABEL_48:
      (*(*(v80 - 32) + 8))(v75, v77);
      goto LABEL_49;
    case 13:
      LOBYTE(v215) = 13;
      sub_2405AFE50();
      v125 = v200;
      v126 = v214;
      sub_24075AA54();
      v214 = v126;
      if (v126)
      {
        goto LABEL_51;
      }

      sub_2405AFCAC();
      v127 = v186;
      v128 = v214;
      sub_24075AAF4();
      v79 = v211;
      v214 = v128;
      if (!v128)
      {
        (*(v61 + 8))(v125, v127);
        (*(v79 + 8))(v59, v56);
        swift_unknownObjectRelease();
        v140 = v216;
        v141 = BYTE8(v216);
        v82 = v159;
        *v159 = v215;
        *(v82 + 2) = v140;
        *(v82 + 24) = v141;
LABEL_63:
        swift_storeEnumTagMultiPayload();
        v138 = v82;
LABEL_64:
        v63 = v151;
        sub_2405AE39C(v138, v151, type metadata accessor for AuthenticationModel.State);
        goto LABEL_66;
      }

      (*(v61 + 8))(v125, v127);
LABEL_49:
      (*(v79 + 8))(v59, v56);
      goto LABEL_52;
    case 14:
      LOBYTE(v215) = 14;
      sub_2405AFDFC();
      v70 = v202;
      v71 = v214;
      sub_24075AA54();
      v214 = v71;
      if (v71)
      {
        goto LABEL_51;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v72 = swift_allocBox();
      LOBYTE(v215) = 0;
      sub_2405AFD00();
      v73 = v214;
      sub_24075AAF4();
      if (v73)
      {
        (*(v60 + 8))(v70, v54);
        (*(v211 + 8))(v59, v56);
        swift_unknownObjectRelease();
        swift_deallocBox();
        v74 = v213;
        v214 = v73;
        return __swift_destroy_boxed_opaque_existential_1(v74);
      }

      v222 = 1;
      sub_240594D3C(&qword_27E4B6490, type metadata accessor for AuthenticationModel.State, &protocol conformance descriptor for AuthenticationModel.State);
      sub_24075AAF4();
      v214 = 0;
      (*(v205 + 8))(v70, v54);
      (*(v211 + 8))(v59, v56);
      swift_unknownObjectRelease();
      v63 = v151;
      *v151 = v72;
      goto LABEL_65;
    case 15:
      LOBYTE(v215) = 15;
      sub_2405AFDA8();
      v104 = v201;
      v105 = v214;
      sub_24075AA54();
      v214 = v105;
      if (v105)
      {
        goto LABEL_51;
      }

      v106 = swift_allocBox();
      sub_240594D3C(&qword_27E4B6490, type metadata accessor for AuthenticationModel.State, &protocol conformance descriptor for AuthenticationModel.State);
      v107 = v188;
      v108 = v214;
      sub_24075AAF4();
      v214 = v108;
      if (v108)
      {
        (*(v187 + 8))(v104, v107);
        (*(v211 + 8))(v59, v56);
        swift_unknownObjectRelease();
        swift_deallocBox();
        goto LABEL_53;
      }

      (*(v187 + 8))(v104, v107);
      (*(v211 + 8))(v59, v56);
      swift_unknownObjectRelease();
      v139 = v151;
      *v151 = v106;
      v63 = v139;
      goto LABEL_65;
    default:
      LOBYTE(v215) = 0;
      sub_2405B0294();
      v62 = v214;
      sub_24075AA54();
      v214 = v62;
      if (v62)
      {
LABEL_51:
        (*(v211 + 8))(v59, v56);
        goto LABEL_52;
      }

      (*(v160 + 8))(v53, v161);
      (*(v211 + 8))(v59, v56);
      swift_unknownObjectRelease();
      v63 = v151;
LABEL_65:
      swift_storeEnumTagMultiPayload();
LABEL_66:
      v119 = v213;
LABEL_67:
      sub_2405AE39C(v63, v203, type metadata accessor for AuthenticationModel.State);
      v74 = v119;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_2405A0E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_24075AE64();
  a3(v5);
  return sub_24075AED4();
}

uint64_t sub_2405A0E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_24075AE64();
  a4(v6);
  return sub_24075AED4();
}

uint64_t sub_2405A0EB4()
{
  v1 = 0x6C616E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6465726975716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t sub_2405A0F0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B7798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405A0F34(uint64_t a1)
{
  v2 = sub_2405B02FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A0F70(uint64_t a1)
{
  v2 = sub_2405B02FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A0FAC(uint64_t a1)
{
  v2 = sub_2405B03F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A0FE8(uint64_t a1)
{
  v2 = sub_2405B03F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A1024(uint64_t a1)
{
  v2 = sub_2405B03A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A1060(uint64_t a1)
{
  v2 = sub_2405B03A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A109C(uint64_t a1)
{
  v2 = sub_2405B0350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A10D8(uint64_t a1)
{
  v2 = sub_2405B0350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.UserInteraction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6880, &qword_24075DB70);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6888, &qword_24075DB78);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6890, &qword_24075DB80);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6898, &qword_24075DB88);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B02FC();
  sub_24075AF74();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_2405B03A4();
      v9 = v21;
      sub_24075AB54();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_2405B0350();
      v9 = v24;
      sub_24075AB54();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2405B03F8();
    sub_24075AB54();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t AuthenticationModel.UserInteraction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68C0, &qword_24075DB90);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68C8, &qword_24075DB98);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68D0, &qword_24075DBA0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68D8, &qword_24075DBA8);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B02FC();
  v13 = v43;
  sub_24075AF34();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_24075AB34();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_2405B03A4();
          v27 = v34;
          sub_24075AA54();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_2405B0350();
          v31 = v34;
          sub_24075AA54();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_2405B03F8();
        v29 = v34;
        sub_24075AA54();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_24075A8C4();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
  *v23 = &type metadata for AuthenticationModel.UserInteraction;
  sub_24075AA64();
  sub_24075A8A4();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

BOOL AuthenticationModel.isLoading.getter()
{
  v1 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AuthenticationModel(0);
  sub_240594008(v0 + *(v4 + 40), v3, type metadata accessor for AuthenticationModel.State);
  v5 = swift_getEnumCaseMultiPayload() == 13;
  sub_240593D7C(v3, type metadata accessor for AuthenticationModel.State);
  return v5;
}

double AuthenticationModel.alertModel.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AuthenticationModel(0);
  sub_240594008(v1 + *(v9 + 40), v8, type metadata accessor for AuthenticationModel.State);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v10 = swift_projectBox();
    sub_2405B044C(v10, v5, &qword_27E4B64B0, &qword_240774850);
    v11 = *(v5 + 3);
    v18 = *(v5 + 2);
    v19 = v11;
    v20 = *(v5 + 4);
    v21 = *(v5 + 40);
    v12 = *(v5 + 1);
    v16 = *v5;
    v17 = v12;
    sub_240593D7C(&v5[*(v3 + 48)], type metadata accessor for AuthenticationModel.State);

    v13 = v19;
    *(a1 + 32) = v18;
    *(a1 + 48) = v13;
    *(a1 + 64) = v20;
    *(a1 + 80) = v21;
    result = *&v16;
    v15 = v17;
    *a1 = v16;
    *(a1 + 16) = v15;
  }

  else
  {
    sub_240593D7C(v8, type metadata accessor for AuthenticationModel.State);
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 81) = 0;
    sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
    result = 0.0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 80) = -1;
  }

  return result;
}

uint64_t AuthenticationModel.isAlertPresented.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - v2;
  v4 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AuthenticationModel(0);
  sub_240594008(v0 + *(v7 + 40), v6, type metadata accessor for AuthenticationModel.State);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v8 = swift_projectBox();
    sub_2405B044C(v8, v3, &qword_27E4B64B0, &qword_240774850);
    v10 = *v3;
    v9 = *(v3 + 1);
    v11 = *(v3 + 2);
    v12 = *(v3 + 3);
    v13 = *(v3 + 3);
    v22 = *(v3 + 2);
    v23 = v13;
    v15 = *(v3 + 8);
    v14 = *(v3 + 9);
    v16 = v3[81];
    v17 = *(v1 + 48);
    v18 = v3[80];
    sub_240593D7C(&v3[v17], type metadata accessor for AuthenticationModel.State);

    v19 = v22;
    v20 = v23;
  }

  else
  {
    sub_240593D7C(v6, type metadata accessor for AuthenticationModel.State);
    v18 = -1;
    sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
    v14 = 0;
    v15 = 0;
    v11 = 0;
    v10 = 0;
    v16 = 0;
    v19 = 0uLL;
    v12 = 0xE000000000000000;
    v20 = 0uLL;
    v9 = 0xE000000000000000;
  }

  v24[0] = v10;
  v24[1] = v9;
  v24[2] = v11;
  v24[3] = v12;
  v25 = v19;
  v26 = v20;
  v27 = v15;
  v28 = v14;
  v29 = v18;
  v30 = v16;
  sub_2405AE2DC(v24);
  return v30;
}

uint64_t AuthenticationModel.isAlertPresented.setter(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for AuthenticationModel.State(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240594008(v1 + v12, v9, type metadata accessor for AuthenticationModel.State);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    return sub_240593D7C(v9, type metadata accessor for AuthenticationModel.State);
  }

  v13 = swift_projectBox();
  sub_2405B044C(v13, v5, &qword_27E4B64B0, &qword_240774850);
  v14 = *(v5 + 3);
  v27 = *(v5 + 2);
  v28 = v14;
  v29 = *(v5 + 4);
  v30 = v5[80];
  v15 = *(v5 + 1);
  v25 = *v5;
  v26 = v15;
  sub_2405AE39C(&v5[*(v3 + 48)], v11, type metadata accessor for AuthenticationModel.State);

  v16 = a1 & 1;
  v17 = swift_allocBox();
  v18 = *(v3 + 48);
  v19 = v26;
  *v20 = v25;
  *(v20 + 16) = v19;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  *(v20 + 80) = v30;
  *(v20 + 48) = v22;
  *(v20 + 64) = v23;
  *(v20 + 32) = v21;
  *(v20 + 81) = v16;
  sub_2405AE39C(v11, v20 + v18, type metadata accessor for AuthenticationModel.State);
  sub_240593D7C(v1 + v12, type metadata accessor for AuthenticationModel.State);
  *(v1 + v12) = v17;
  return swift_storeEnumTagMultiPayload();
}

uint64_t (*AuthenticationModel.isAlertPresented.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = AuthenticationModel.isAlertPresented.getter() & 1;
  return sub_2405A2210;
}

uint64_t sub_2405A2238()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4B6400);
  v1 = __swift_project_value_buffer(v0, qword_27E4B6400);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B8518);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AuthenticationModel.BasicLogin.username.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AuthenticationModel.BasicLogin.username.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuthenticationModel.BasicLogin.password.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t AuthenticationModel.BasicLogin.password.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void *AuthenticationModel.BasicLogin.authenticationContext.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t AuthenticationModel.BasicLogin.currentServices.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void *AuthenticationModel.BasicLogin.error.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.BasicLogin.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405A261C;
}

id AuthenticationModel.BasicLogin.userSubmission.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 96);
  *(a1 + 32) = v6;
  return sub_2405B04B4(v2, v3, v4, v5, v6);
}

__n128 AuthenticationModel.BasicLogin.userSubmission.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_2405B0544(*(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v5;
  *(v1 + 96) = v3;
  return result;
}

void sub_2405A26A4(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      if (v3)
      {
        v11 = *v1;
      }

      else
      {
        v11 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
      }

      v24 = qword_27E4B5E90;
      v25 = v3;
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = sub_240759AE4();
      __swift_project_value_buffer(v26, qword_27E4B6400);
      v27 = v11;
      v28 = sub_240759AC4();
      v29 = sub_24075A5E4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v27;
        v27;
        _os_log_impl(&dword_240579000, v28, v29, "Failed to submit username and password: %@", v30, 0xCu);
        sub_2405B8A50(v31, &qword_27E4B92A0, &qword_240762400);
        MEMORY[0x245CC76B0](v31, -1, -1);
        MEMORY[0x245CC76B0](v30, -1, -1);
      }
    }

    else
    {
      if (!(*(v1 + 16) | v4 | v3 | *(v1 + 24)))
      {
        if (qword_27E4B5E90 != -1)
        {
          swift_once();
        }

        v32 = sub_240759AE4();
        __swift_project_value_buffer(v32, qword_27E4B6400);
        v33 = sub_240759AC4();
        v34 = sub_24075A5C4();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_240579000, v33, v34, "User submitted empty response", v35, 2u);
          MEMORY[0x245CC76B0](v35, -1, -1);
        }

        v3 = 0;
        v4 = 0;
        goto LABEL_34;
      }

      if (qword_27E4B5E90 != -1)
      {
        swift_once();
      }

      v19 = sub_240759AE4();
      __swift_project_value_buffer(v19, qword_27E4B6400);
      v20 = sub_240759AC4();
      v21 = sub_24075A5C4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_240579000, v20, v21, "Client decided to skip basic login, means they are cancelling", v22, 2u);
        MEMORY[0x245CC76B0](v22, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      *v23 = 3;
      *(v23 + 8) = 0u;
      *(v23 + 24) = 0u;
      *(v23 + 40) = 0;
      *(v23 + 48) = 6;
    }

    swift_willThrow();
    return;
  }

  v36 = *(v1 + 16);
  if (*(v1 + 32))
  {
    v12 = qword_27E4B5E90;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_240759AE4();
    __swift_project_value_buffer(v13, qword_27E4B6400);

    v14 = sub_240759AC4();
    v15 = sub_24075A5C4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2405BBA7C(v3, v4, &v37);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2405BBA7C(0x657463616465723CLL, 0xEA00000000003E64, &v37);
      _os_log_impl(&dword_240579000, v14, v15, "User submitted username: %s and password: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    v18 = v36;
    goto LABEL_35;
  }

  v5 = qword_27E4B5E90;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B6400);

  v7 = sub_240759AC4();
  v8 = sub_24075A5C4();
  sub_2405B0558(v3, v4, v36, *(&v36 + 1), 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2405BBA7C(v3, v4, &v37);
    _os_log_impl(&dword_240579000, v7, v8, "User submitted only username: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

LABEL_34:
  v18 = 0uLL;
LABEL_35:
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v18;
  *(a1 + 32) = 0;
}

unint64_t sub_2405A2CD8()
{
  v1 = *v0;
  v2 = 0x72657355796C6E6FLL;
  v3 = 0x6572756C696166;
  v4 = 0x7974706D65;
  if (v1 != 3)
  {
    v4 = 0x64657070696B73;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2405A2D7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B78AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405A2DA4(uint64_t a1)
{
  v2 = sub_2405B05D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A2DE0(uint64_t a1)
{
  v2 = sub_2405B05D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A2E1C(uint64_t a1)
{
  v2 = sub_2405B067C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A2E58(uint64_t a1)
{
  v2 = sub_2405B067C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A2E94(uint64_t a1)
{
  v2 = sub_2405B06D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A2ED0(uint64_t a1)
{
  v2 = sub_2405B06D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A2F0C()
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](0);
  return sub_24075AED4();
}

uint64_t sub_2405A2F50(uint64_t a1)
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](0);
  return sub_24075AED4();
}

uint64_t sub_2405A2F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24075ACF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2405A3010(uint64_t a1)
{
  v2 = sub_2405B07D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A304C(uint64_t a1)
{
  v2 = sub_2405B07D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A3088(uint64_t a1)
{
  v2 = sub_2405B0628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A30C4(uint64_t a1)
{
  v2 = sub_2405B0628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A3100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_2405A31CC(uint64_t a1)
{
  v2 = sub_2405B0724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A3208(uint64_t a1)
{
  v2 = sub_2405B0724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.BasicLogin.Submission.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68E0, &qword_24075DBB0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68E8, &qword_24075DBB8);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68F0, &qword_24075DBC0);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68F8, &qword_24075DBC8);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6900, &qword_24075DBD0);
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6908, &qword_24075DBD8);
  v46 = *(v15 - 8);
  v47 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = *v1;
  *&v45 = v1[1];
  *(&v45 + 1) = v18;
  v19 = v1[3];
  *&v44 = v1[2];
  *(&v44 + 1) = v19;
  v20 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B05D4();
  sub_24075AF74();
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      LOBYTE(v49) = 2;
      sub_2405B06D0();
      v22 = v39;
      v23 = v47;
      sub_24075AB54();
      *&v49 = *(&v45 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
      sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
      v24 = v41;
      sub_24075ABE4();
      (*(v40 + 8))(v22, v24);
      return (*(v46 + 8))(v17, v23);
    }

    v21 = v47;
    if ((v44 | v45) == 0)
    {
      LOBYTE(v49) = 3;
      sub_2405B067C();
      v29 = v32;
      sub_24075AB54();
      v31 = v33;
      v30 = v34;
    }

    else
    {
      LOBYTE(v49) = 4;
      sub_2405B0628();
      v29 = v35;
      sub_24075AB54();
      v31 = v36;
      v30 = v37;
    }

    (*(v31 + 8))(v29, v30);
    return (*(v46 + 8))(v17, v21);
  }

  if (!v20)
  {
    LOBYTE(v49) = 0;
    sub_2405B07D8();
    v21 = v47;
    sub_24075AB54();
    sub_24075ABB4();
    (*(v38 + 8))(v14, v12);
    return (*(v46 + 8))(v17, v21);
  }

  LOBYTE(v49) = 1;
  sub_2405B0724();
  v26 = v47;
  sub_24075AB54();
  LOBYTE(v49) = 0;
  v27 = v43;
  v28 = v48;
  sub_24075ABB4();
  if (!v28)
  {
    v49 = v44;
    v50 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6938, &qword_24075DBE8);
    sub_2405B0778(&qword_27E4B6940, &qword_27E4B6938, &qword_24075DBE8, &protocol conformance descriptor for <A> RedactedValue<A>);
    sub_24075ABE4();
  }

  (*(v42 + 8))(v11, v27);
  return (*(v46 + 8))(v17, v26);
}

void AuthenticationModel.BasicLogin.Submission.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      MEMORY[0x245CC6BA0](2);
      if (v2)
      {
        sub_24075AE94();
        v6 = v2;
        sub_24075A6E4();

        sub_2405B0558(v2, v3, v5, v4, 2);
      }

      else
      {
        sub_24075AE94();
      }
    }

    else
    {
      if (v5 | v3 | v2 | v4)
      {
        v7 = 4;
      }

      else
      {
        v7 = 3;
      }

      MEMORY[0x245CC6BA0](v7);
    }
  }

  else
  {
    if (*(v1 + 32))
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075A114();
    }

    else
    {
      MEMORY[0x245CC6BA0](0);
    }

    sub_24075A114();
  }
}

uint64_t AuthenticationModel.BasicLogin.Submission.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_24075AE64();
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      MEMORY[0x245CC6BA0](2);
      sub_24075AE94();
      if (v1)
      {
        v6 = v1;
        sub_24075A6E4();
        sub_2405B0558(v1, v2, v4, v3, 2);
      }
    }

    else
    {
      if (v4 | v2 | v1 | v3)
      {
        v7 = 4;
      }

      else
      {
        v7 = 3;
      }

      MEMORY[0x245CC6BA0](v7);
    }
  }

  else
  {
    if (v5)
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075A114();
    }

    else
    {
      MEMORY[0x245CC6BA0](0);
    }

    sub_24075A114();
  }

  return sub_24075AED4();
}

uint64_t AuthenticationModel.BasicLogin.Submission.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6950, &qword_24075DBF0);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v73 = &v58 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6958, &qword_24075DBF8);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v72 = &v58 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6960, &qword_24075DC00);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v58 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6968, &qword_24075DC08);
  v68 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6970, &qword_24075DC10);
  v61 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6978, &qword_24075DC18);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - v13;
  v15 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2405B05D4();
  v16 = v74;
  sub_24075AF34();
  if (!v16)
  {
    v59 = 0;
    v60 = v12;
    v18 = v72;
    v17 = v73;
    v74 = v11;
    v19 = sub_24075AB34();
    v20 = *(v19 + 16);
    if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 5) : (v22 = 1), v22))
    {
      v23 = sub_24075A8C4();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v25 = &type metadata for AuthenticationModel.BasicLogin.Submission;
      v26 = v74;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      v27 = v14;
      v28 = v60;
    }

    else
    {
      if (*(v19 + 32) <= 1u)
      {
        if (*(v19 + 32))
        {
          LOBYTE(v76) = 1;
          sub_2405B0724();
          v47 = v7;
          v48 = v74;
          v49 = v59;
          sub_24075AA54();
          if (!v49)
          {
            LOBYTE(v76) = 0;
            v50 = v62;
            v51 = sub_24075AAC4();
            v36 = v55;
            v73 = v51;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6938, &qword_24075DBE8);
            v78 = 1;
            sub_2405B082C();
            sub_24075AAF4();
            (*(v68 + 8))(v47, v50);
            (*(v60 + 8))(v14, v48);
            swift_unknownObjectRelease();
            v37 = v76;
            v38 = v77;
            v39 = 1;
            v35 = v73;
            goto LABEL_29;
          }

          (*(v60 + 8))(v14, v48);
        }

        else
        {
          LOBYTE(v76) = 0;
          sub_2405B07D8();
          v40 = v74;
          v41 = v59;
          sub_24075AA54();
          if (!v41)
          {
            v52 = v8;
            v53 = sub_24075AAC4();
            v54 = v60;
            v36 = v56;
            v57 = v53;
            (*(v61 + 8))(v10, v52);
            (*(v54 + 8))(v14, v74);
            swift_unknownObjectRelease();
            v35 = v57;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            goto LABEL_29;
          }

          (*(v60 + 8))(v14, v40);
        }

LABEL_10:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v75);
      }

      if (v21 != 2)
      {
        v70 = v19;
        v30 = v60;
        v31 = v74;
        if (v21 == 3)
        {
          LOBYTE(v76) = 3;
          sub_2405B067C();
          v32 = v14;
          v33 = v59;
          sub_24075AA54();
          v34 = v71;
          if (!v33)
          {
            (*(v64 + 8))(v18, v66);
            (*(v30 + 8))(v32, v31);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 3;
LABEL_30:
            *v34 = v35;
            *(v34 + 8) = v36;
            *(v34 + 16) = v37;
            *(v34 + 24) = v38;
            *(v34 + 32) = v39;
            return __swift_destroy_boxed_opaque_existential_1(v75);
          }
        }

        else
        {
          LOBYTE(v76) = 4;
          sub_2405B0628();
          v32 = v14;
          v46 = v59;
          sub_24075AA54();
          v34 = v71;
          if (!v46)
          {
            (*(v63 + 8))(v17, v65);
            (*(v30 + 8))(v32, v31);
            swift_unknownObjectRelease();
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 3;
            v35 = 1;
            goto LABEL_30;
          }
        }

        (*(v30 + 8))(v32, v31);
        goto LABEL_10;
      }

      LOBYTE(v76) = 2;
      sub_2405B06D0();
      v26 = v74;
      v42 = v59;
      sub_24075AA54();
      v27 = v14;
      v28 = v60;
      if (!v42)
      {
        v43 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
        v44 = v70;
        sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
        v45 = v69;
        sub_24075AAF4();
        (*(v67 + 8))(v44, v45);
        (*(v28 + 8))(v43, v26);
        swift_unknownObjectRelease();
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v35 = v76;
        v39 = 2;
LABEL_29:
        v34 = v71;
        goto LABEL_30;
      }
    }

    (*(v28 + 8))(v27, v26);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_2405A45A8()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_24075AE64();
  AuthenticationModel.BasicLogin.Submission.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_2405A4600(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_24075AE64();
  AuthenticationModel.BasicLogin.Submission.hash(into:)(v5);
  return sub_24075AED4();
}

unint64_t AuthenticationModel.BasicLogin.description.getter()
{
  v1 = *(v0 + 24);
  sub_24075A864();

  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v2, v3);

  MEMORY[0x245CC5E60](0x70696B537369202CLL, 0xED0000203A646570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6988, &qword_24075DC20);
  v4 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v4);

  return 0xD00000000000001ALL;
}

unint64_t AuthenticationModel.BasicLogin.debugDescription.getter()
{
  v1 = *(v0 + 24);

  sub_24075A864();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6450, &qword_24076F340);
  v2 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v2);

  MEMORY[0x245CC5E60](0x736150736168202CLL, 0xEF203A64726F7773);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v3, v4);

  MEMORY[0x245CC5E60](0x70696B537369202CLL, 0xED0000203A646570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6988, &qword_24075DC20);
  v5 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v5);

  return 0xD000000000000010;
}

unint64_t sub_2405A48DC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656D616E72657375;
    v7 = 0xD000000000000017;
    v8 = 0x6C65636E61437369;
    if (a1 != 3)
    {
      v8 = 0x657070696B537369;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x64726F7773736170;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x53746E6572727563;
    v2 = 0x726F727265;
    if (a1 != 9)
    {
      v2 = 0x6D62755372657375;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0xD000000000000015;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2405A4A70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B7A64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405A4AA4(uint64_t a1)
{
  v2 = sub_2405B08A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A4AE0(uint64_t a1)
{
  v2 = sub_2405B08A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.BasicLogin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6990, &qword_24075DC28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = *(v1 + 24);
  v35 = *(v1 + 16);
  v36 = v7;
  v43 = *(v1 + 32);
  v8 = *(v1 + 33);
  v33 = *(v1 + 34);
  v34 = v8;
  v9 = *(v1 + 35);
  v31 = *(v1 + 36);
  v32 = v9;
  v10 = *(v1 + 40);
  v29 = *(v1 + 48);
  v30 = v10;
  v11 = *(v1 + 56);
  v13 = *(v1 + 72);
  v12 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = v13;
  v27 = v12;
  v28 = v11;
  v26 = *(v1 + 88);
  v14 = *(v1 + 96);
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_2405B08A8();
  sub_24075AF74();
  LOBYTE(v38) = 0;
  v19 = v37;
  sub_24075AB64();
  if (!v19)
  {
    LODWORD(v37) = v14;
    v38 = v35;
    v39 = v36;
    v44 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6938, &qword_24075DBE8);
    sub_2405B0778(&qword_27E4B6940, &qword_27E4B6938, &qword_24075DBE8, &protocol conformance descriptor for <A> RedactedValue<A>);
    sub_24075AB94();

    LOBYTE(v38) = 2;
    sub_24075ABC4();
    LOBYTE(v38) = 3;
    sub_24075AB74();
    LOBYTE(v38) = 4;
    sub_24075AB74();
    LOBYTE(v38) = 5;
    sub_24075ABC4();
    LOBYTE(v38) = 6;
    sub_24075ABC4();
    v38 = v30;
    v44 = 7;
    v20 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    v38 = v29;
    v44 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6460, &qword_24075D930);
    sub_24059532C(&qword_27E4B6468, &qword_27E4B6470, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83948]);
    sub_24075ABE4();
    v38 = v28;
    v44 = 9;
    v21 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    v38 = v24;
    v39 = v25;
    v40 = v27;
    v41 = v26;
    v42 = v37;
    v44 = 10;
    sub_2405B04B4(v24, v25, v27, v26, v37);
    sub_2405B08FC();
    sub_24075AB94();
    sub_2405B0544(v38, v39, v40, v41, v42);
  }

  return (*(v4 + 8))(v6, v18);
}

void AuthenticationModel.BasicLogin.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 33);
  v4 = *(v1 + 34);
  v22 = *(v1 + 40);
  v23 = *(v1 + 48);
  v24 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = *(v1 + 72);
  v20 = *(v1 + 80);
  v21 = *(v1 + 88);
  v5 = *(v1 + 96);
  if (*(v1 + 8))
  {
    sub_24075AE94();
    sub_24075A114();
    if (v2)
    {
LABEL_3:
      sub_24075AE94();
      sub_24075A114();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24075AE94();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_24075AE94();
LABEL_6:
  sub_24075AE94();
  if (v3 != 2)
  {
    sub_24075AE94();
  }

  v6 = v5;
  sub_24075AE94();
  if (v4 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  sub_24075AE94();
  sub_24075AE94();
  if (v22)
  {
    v7 = v22;
    sub_24075A6E4();
  }

  MEMORY[0x245CC6BA0](*(v23 + 16));
  v8 = *(v23 + 16);
  if (v8)
  {
    v9 = (v23 + 32);
    do
    {
      v10 = *v9++;
      sub_24075A0B4();
      v11 = v10;
      sub_24075A114();

      --v8;
    }

    while (v8);
  }

  if (v24)
  {
    sub_24075AE94();
    v12 = v24;
    sub_24075A6E4();

    if (v6 == 255)
    {
LABEL_17:
      sub_24075AE94();
      return;
    }
  }

  else
  {
    sub_24075AE94();
    if (v6 == 255)
    {
      goto LABEL_17;
    }
  }

  sub_24075AE94();
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x245CC6BA0](2);
      sub_24075AE94();
      if (v18)
      {
        sub_2405B04C8(v18, v19, v20, v21, 2);
        sub_24075A6E4();
        v13 = v18;
      }

      else
      {
        v13 = 0;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = 2;
    }

    else
    {
      if (v20 | v19 | v18 | v21)
      {
        MEMORY[0x245CC6BA0](4);
        v13 = 1;
      }

      else
      {
        MEMORY[0x245CC6BA0](3);
        v13 = 0;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 3;
    }
  }

  else if (v6)
  {
    MEMORY[0x245CC6BA0](1);
    sub_2405B04C8(v18, v19, v20, v21, 1);
    sub_24075A114();
    sub_24075A114();
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = 1;
  }

  else
  {
    MEMORY[0x245CC6BA0](0);
    sub_2405B04C8(v18, v19, v20, v21, 0);
    sub_24075A114();
    v13 = v18;
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = 0;
  }

  sub_2405B0544(v13, v14, v15, v16, v17);
}

uint64_t AuthenticationModel.BasicLogin.hashValue.getter()
{
  sub_24075AE64();
  AuthenticationModel.BasicLogin.hash(into:)(v1);
  return sub_24075AED4();
}

void AuthenticationModel.BasicLogin.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69B8, &qword_24075DC38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B08A8();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_2405B0544(0, 0, 0, 0, 255);
  }

  else
  {
    LOBYTE(v49) = 0;
    v9 = sub_24075AA74();
    v11 = v10;
    v41 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6938, &qword_24075DBE8);
    LOBYTE(v42) = 1;
    sub_2405B082C();
    sub_24075AAA4();
    v12 = v49;
    v40 = v50;

    LOBYTE(v49) = 2;
    v13 = sub_24075AAD4();
    LOBYTE(v49) = 3;
    v71 = sub_24075AA84();
    LOBYTE(v49) = 4;
    v14 = sub_24075AA84();
    v39 = v13;
    v15 = v14;
    LOBYTE(v49) = 5;
    v37 = sub_24075AAD4();
    v38 = v15;
    LOBYTE(v49) = 6;
    LODWORD(v36) = sub_24075AAD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    LOBYTE(v42) = 7;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v35 = a2;
    v16 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6460, &qword_24075D930);
    LOBYTE(v42) = 8;
    sub_24059532C(&qword_27E4B6498, &qword_27E4B64A0, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83978]);
    sub_24075AAF4();
    v33 = v12;
    v34 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    LOBYTE(v42) = 9;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v17 = v49;
    v72 = 10;
    sub_2405B0950();
    sub_24075AAA4();
    v18 = v39 & 1;
    v32 = v39 & 1;
    v37 &= 1u;
    v39 = v36 & 1;
    (*(v6 + 8))(v8, v5);
    v19 = v66;
    v20 = v67;
    v36 = v66;
    v21 = v68;
    v31 = v69;
    v30 = v70;
    sub_2405B0544(0, 0, 0, 0, 255);
    *&v42 = v41;
    *(&v42 + 1) = v11;
    *&v43 = v33;
    *(&v43 + 1) = v40;
    LOBYTE(v44) = v18;
    BYTE1(v44) = v71;
    BYTE2(v44) = v38;
    BYTE3(v44) = v37;
    BYTE4(v44) = v39;
    *(&v44 + 1) = v16;
    *&v45 = v34;
    *(&v45 + 1) = v17;
    *&v46 = v19;
    *(&v46 + 1) = v20;
    v22 = v31;
    *&v47 = v21;
    *(&v47 + 1) = v31;
    LOBYTE(v19) = v30;
    v48 = v30;
    v23 = v43;
    v24 = v35;
    *v35 = v42;
    v24[1] = v23;
    v25 = v44;
    v26 = v45;
    v27 = v46;
    v28 = v47;
    *(v24 + 96) = v19;
    v24[4] = v27;
    v24[5] = v28;
    v24[2] = v25;
    v24[3] = v26;
    sub_2405AE958(&v42, &v49);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v49 = v41;
    v50 = v11;
    v51 = v33;
    v52 = v40;
    v53 = v32;
    v54 = v71;
    v55 = v38;
    v56 = v37;
    v57 = v39;
    v58 = v16;
    v59 = v34;
    v60 = v17;
    v61 = v36;
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v65 = v19;
    sub_2405AE36C(&v49);
  }
}

uint64_t sub_2405A5C6C()
{
  sub_24075AE64();
  AuthenticationModel.BasicLogin.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2405A5CB0(uint64_t a1)
{
  sub_24075AE64();
  AuthenticationModel.BasicLogin.hash(into:)(v2);
  return sub_24075AED4();
}

id AuthenticationModel.SecondFactor.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AuthenticationModel.SecondFactor.collectedCode.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void *AuthenticationModel.SecondFactor.error.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.SecondFactor.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t sub_2405A5E48(uint64_t a1)
{
  v2 = sub_2405B09F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A5E84(uint64_t a1)
{
  v2 = sub_2405B09F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void AuthenticationModel.SecondFactor.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69E8, &qword_24075DC48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B09F4();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_2405AE990(0, 1, 0, 0, 0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    LOBYTE(v30) = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v29 = v35;
    LOBYTE(v35) = 1;
    v9 = sub_24075AAE4();
    LOBYTE(v35) = 2;
    v10 = sub_24075AA94();
    v46 = v11 & 1;
    LOBYTE(v30) = 3;
    sub_2405B0A9C();
    sub_24075AAA4();
    v24 = v10;
    v26 = v9;
    v28 = v6;
    v25 = a2;
    v13 = v35;
    v12 = v36;
    v14 = v37;
    v27 = v38;
    v15 = v39;
    sub_2405AE990(0, 1, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v47 = 4;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    (*(v28 + 8))(v8, v5);
    v28 = v45;
    v16 = v29;
    *&v30 = v29;
    *(&v30 + 1) = v26;
    v17 = v24;
    *&v31 = v24;
    v23 = v46;
    BYTE8(v31) = v46;
    *&v32 = v13;
    *(&v32 + 1) = v12;
    v18 = v27;
    *&v33 = v14;
    *(&v33 + 1) = v27;
    *&v34 = v15;
    *(&v34 + 1) = v45;
    v19 = v33;
    v20 = v25;
    v25[2] = v32;
    v20[3] = v19;
    v21 = v31;
    *v20 = v30;
    v20[1] = v21;
    v20[4] = v34;
    sub_2405AE9EC(&v30, &v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v35 = v16;
    v36 = v26;
    v37 = v17;
    LOBYTE(v38) = v23;
    v39 = v13;
    v40 = v12;
    v41 = v14;
    v42 = v18;
    v43 = v15;
    v44 = v28;
    sub_2405AE30C(&v35);
  }
}

void _s12AppleIDSetup19AuthenticationModelV12SecondFactorV9errorInfoAC05ErrorH0VSgvg_0(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_2405B09A4(v2, v3, v4, v5, v6);
}

__n128 _s12AppleIDSetup19AuthenticationModelV12SecondFactorV9errorInfoAC05ErrorH0VSgvs_0(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_2405AE990(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

void (*AuthenticationModel.SecondFactorAlert.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t sub_2405A652C(uint64_t a1)
{
  v2 = sub_2405B0AF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A6568(uint64_t a1)
{
  v2 = sub_2405B0AF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A65E8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v12 = *v5;
  v11 = *(v5 + 8);
  v30 = *(v5 + 16);
  v31 = v11;
  v39 = *(v5 + 24);
  v13 = *(v5 + 32);
  v28 = *(v5 + 40);
  v29 = v13;
  v14 = *(v5 + 56);
  v25 = *(v5 + 48);
  v26 = v14;
  v15 = *(v5 + 72);
  v27 = *(v5 + 64);
  v24 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v16 = v12;
  sub_24075AF74();
  v34 = v12;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
  v17 = v32;
  sub_24075ABE4();
  if (v17)
  {

    return (*(v33 + 8))(v10, v8);
  }

  else
  {
    v19 = v29;
    v20 = v28;
    v21 = v33;

    LOBYTE(v34) = 1;
    sub_24075ABD4();
    LOBYTE(v34) = 2;
    sub_24075AB84();
    v34 = v19;
    v35 = v20;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    v40 = 3;
    sub_2405B09A4(v19, v20, v25, v26, v27);
    sub_2405B0A48();
    sub_24075AB94();
    sub_2405AE990(v34, v35, v36, v37, v38);
    v34 = v24;
    v40 = 4;
    v22 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    return (*(v21 + 8))(v10, v8);
  }
}

void _s12AppleIDSetup19AuthenticationModelV12SecondFactorV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v11 = *(v1 + 40);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  if (*v1)
  {
    sub_24075AE94();
    v9 = v4;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  MEMORY[0x245CC6BA0](v3);
  sub_24075AE94();
  if (!v6)
  {
    MEMORY[0x245CC6BA0](v5);
  }

  if (v11 != 1)
  {
    sub_24075AE94();
    v10 = v7;

    AuthenticationModel.ErrorInfo.hash(into:)(a1);

    if (v8)
    {
      goto LABEL_8;
    }

LABEL_12:
    sub_24075AE94();
    return;
  }

  sub_24075AE94();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_24075AE94();
  v12 = v8;
  sub_24075A6E4();
}

uint64_t sub_2405A6AFC(uint64_t (*a1)(void *))
{
  sub_24075AE64();
  a1(v3);
  return sub_24075AED4();
}

void AuthenticationModel.SecondFactorAlert.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A08, &qword_24075DC58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0AF0();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_2405AE990(0, 1, 0, 0, 0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    LOBYTE(v30) = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v29 = v35;
    LOBYTE(v35) = 1;
    v9 = sub_24075AAE4();
    LOBYTE(v35) = 2;
    v10 = sub_24075AA94();
    v46 = v11 & 1;
    LOBYTE(v30) = 3;
    sub_2405B0A9C();
    sub_24075AAA4();
    v24 = v10;
    v26 = v9;
    v28 = v6;
    v25 = a2;
    v13 = v35;
    v12 = v36;
    v14 = v37;
    v27 = v38;
    v15 = v39;
    sub_2405AE990(0, 1, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v47 = 4;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    (*(v28 + 8))(v8, v5);
    v28 = v45;
    v16 = v29;
    *&v30 = v29;
    *(&v30 + 1) = v26;
    v17 = v24;
    *&v31 = v24;
    v23 = v46;
    BYTE8(v31) = v46;
    *&v32 = v13;
    *(&v32 + 1) = v12;
    v18 = v27;
    *&v33 = v14;
    *(&v33 + 1) = v27;
    *&v34 = v15;
    *(&v34 + 1) = v45;
    v19 = v33;
    v20 = v25;
    v25[2] = v32;
    v20[3] = v19;
    v21 = v31;
    *v20 = v30;
    v20[1] = v21;
    v20[4] = v34;
    sub_2405AEA24(&v30, &v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v35 = v16;
    v36 = v26;
    v37 = v17;
    LOBYTE(v38) = v23;
    v39 = v13;
    v40 = v12;
    v41 = v14;
    v42 = v18;
    v43 = v15;
    v44 = v28;
    sub_2405AE33C(&v35);
  }
}

uint64_t sub_2405A7020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_24075AE64();
  a3(v5);
  return sub_24075AED4();
}

uint64_t sub_2405A7080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_24075AE64();
  a4(v6);
  return sub_24075AED4();
}

uint64_t AuthenticationModel.ErrorInfo.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AuthenticationModel.ErrorInfo.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void (*AuthenticationModel.ErrorInfo.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t AuthenticationModel.ErrorInfo.init(title:message:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_2405A71AC()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_2405A7200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B7FD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405A7228(uint64_t a1)
{
  v2 = sub_2405B0B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A7264(uint64_t a1)
{
  v2 = sub_2405B0B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.ErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A10, &qword_24075DC60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v14 = v1[3];
  v15 = v7;
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0B44();
  sub_24075AF74();
  v20 = 0;
  v8 = v16;
  sub_24075AB64();
  if (!v8)
  {
    v10 = v13;
    v19 = 1;
    sub_24075AB64();
    v17 = v10;
    v18 = 2;
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();
  }

  return (*(v4 + 8))(v6, v3);
}

void AuthenticationModel.ErrorInfo.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  if (v1[1])
  {
    sub_24075AE94();
    sub_24075A114();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_24075AE94();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_24075AE94();
    return;
  }

  sub_24075AE94();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_24075AE94();
  v4 = v3;
  sub_24075A6E4();
}

uint64_t AuthenticationModel.ErrorInfo.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_24075AE64();
  AuthenticationModel.ErrorInfo.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t AuthenticationModel.ErrorInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A20, &qword_24075DC68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0B44();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_24075AA74();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  v17 = sub_24075AA74();
  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
  v21 = 2;
  sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075AAF4();
  (*(v6 + 8))(v8, v5);
  v13 = v20;
  *a2 = v19;
  a2[1] = v11;
  v14 = v18;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v13;
  v15 = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2405A7914()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_24075AE64();
  AuthenticationModel.ErrorInfo.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_2405A796C(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_24075AE64();
  AuthenticationModel.ErrorInfo.hash(into:)(v5);
  return sub_24075AED4();
}

id AuthenticationModel.ServerRedirect.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AuthenticationModel.ServerRedirect.configuration.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *AuthenticationModel.ServerRedirect.finalURLResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.ServerRedirect.finalURLResponse.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

void *AuthenticationModel.ServerRedirect.error.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.ServerRedirect.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

void *AuthenticationModel.ServerRedirect.additionalOptions.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

unint64_t sub_2405A7C10()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  v3 = 0x726F727265;
  if (v1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_2405A7CBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B80E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405A7CE4(uint64_t a1)
{
  v2 = sub_2405B0B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A7D20(uint64_t a1)
{
  v2 = sub_2405B0B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.ServerRedirect.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A28, &qword_24075DC70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = v8;
  v20 = *(v1 + 32);
  v21 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0B98();
  v11 = v9;
  sub_24075AF74();
  v25 = v9;
  v12 = v4;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075ABE4();
  if (!v2)
  {
    v13 = v22;

    v25 = v23;
    v24 = 1;
    v14 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A38, &qword_24075DC78);
    sub_240590128(&qword_27E4B6A40, &qword_27E4B6A38, &qword_24075DC78, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    v25 = v13;
    v24 = 2;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A48, &qword_24075DC80);
    sub_240590128(&qword_27E4B6A50, &qword_27E4B6A48, &qword_24075DC80, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    v25 = v21;
    v24 = 3;
    v17 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    v25 = v20;
    v24 = 4;
    v18 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A58, &qword_24075DC88);
    sub_240590128(&qword_27E4B6A60, &qword_27E4B6A58, &qword_24075DC88, &protocol conformance descriptor for _objcCodableDictionary<A>);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v7, v12);
}

void AuthenticationModel.ServerRedirect.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (*v1)
  {
    sub_24075AE94();
    v7 = v3;
    sub_24075A6E4();

    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24075AE94();
    if (v2)
    {
LABEL_3:
      sub_24075AE94();
      v8 = v2;
      sub_24075A6E4();

      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_24075AE94();
  if (v5)
  {
LABEL_4:
    sub_24075AE94();
    v9 = v5;
    sub_24075A6E4();

    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_13:
    sub_24075AE94();
    return;
  }

LABEL_11:
  sub_24075AE94();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_24075AE94();
  v10 = v4;
  sub_24075A6E4();

  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_6:
  sub_24075AE94();
  v11 = v6;
  sub_24075A6E4();
}

uint64_t AuthenticationModel.ServerRedirect.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_24075AE64();
  AuthenticationModel.ServerRedirect.hash(into:)(v4);
  return sub_24075AED4();
}

void AuthenticationModel.ServerRedirect.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A68, &qword_24075DC90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0B98();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    v23 = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v22 = a2;
    v9 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A38, &qword_24075DC78);
    v23 = 1;
    sub_240590128(&qword_27E4B6A70, &qword_27E4B6A38, &qword_24075DC78, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v10 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A48, &qword_24075DC80);
    v23 = 2;
    sub_240590128(&qword_27E4B6A78, &qword_27E4B6A48, &qword_24075DC80, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v11 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v23 = 3;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v21 = v6;
    v12 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A58, &qword_24075DC88);
    v23 = 4;
    sub_240590128(&qword_27E4B6A80, &qword_27E4B6A58, &qword_24075DC88, &protocol conformance descriptor for _objcCodableDictionary<A>);
    sub_24075AAF4();
    (*(v21 + 8))(v8, v5);
    v13 = v24;
    v14 = v22;
    *v22 = v9;
    v14[1] = v10;
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = v13;
    v15 = v13;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2405A8810()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_24075AE64();
  AuthenticationModel.ServerRedirect.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_2405A8868(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_24075AE64();
  AuthenticationModel.ServerRedirect.hash(into:)(v5);
  return sub_24075AED4();
}

void (*AuthenticationModel.NativeRecovery.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

unint64_t sub_2405A894C()
{
  v1 = 0x747865746E6F63;
  v2 = 0x726F727265;
  if (*v0 != 2)
  {
    v2 = 0x657265766F636572;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_2405A89D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B82A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405A89FC(uint64_t a1)
{
  v2 = sub_2405B0BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A8A38(uint64_t a1)
{
  v2 = sub_2405B0BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.NativeRecovery.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A88, &qword_24075DC98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v19 = *(v1 + 16);
  v20 = v8;
  v18 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0BEC();
  v11 = v9;
  sub_24075AF74();
  v22 = v9;
  v12 = v4;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075ABE4();
  if (!v2)
  {
    v13 = v19;

    v22 = v20;
    v21 = 1;
    v14 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A98, &qword_24075DCA0);
    sub_240590128(&qword_27E4B6AA0, &qword_27E4B6A98, &qword_24075DCA0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    v22 = v13;
    v21 = 2;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    v22 = v18;
    v21 = 3;
    v17 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A58, &qword_24075DC88);
    sub_240590128(&qword_27E4B6A60, &qword_27E4B6A58, &qword_24075DC88, &protocol conformance descriptor for _objcCodableDictionary<A>);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v7, v12);
}

uint64_t AuthenticationModel.NativeRecovery.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24075AE64();
  AuthenticationModel.FidoChallenge.hash(into:)(v3);
  return sub_24075AED4();
}

void AuthenticationModel.NativeRecovery.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AA8, &qword_24075DCA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0BEC();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    v19 = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v18 = a2;
    v9 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A98, &qword_24075DCA0);
    v19 = 1;
    sub_240590128(&qword_27E4B6AB0, &qword_27E4B6A98, &qword_24075DCA0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v10 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v19 = 2;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v11 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A58, &qword_24075DC88);
    v19 = 3;
    sub_240590128(&qword_27E4B6A80, &qword_27E4B6A58, &qword_24075DC88, &protocol conformance descriptor for _objcCodableDictionary<A>);
    sub_24075AAF4();
    (*(v6 + 8))(v8, v5);
    v12 = v20;
    v13 = v18;
    *v18 = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    v14 = v12;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2405A924C()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24075AE64();
  AuthenticationModel.FidoChallenge.hash(into:)(v3);
  return sub_24075AED4();
}

uint64_t sub_2405A9298(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_24075AE64();
  AuthenticationModel.FidoChallenge.hash(into:)(v4);
  return sub_24075AED4();
}

id AuthenticationModel.FidoChallenge.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AuthenticationModel.FidoChallenge.context.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *AuthenticationModel.FidoChallenge.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.FidoChallenge.response.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

void *AuthenticationModel.FidoChallenge.error.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.FidoChallenge.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

unint64_t sub_2405A94C0()
{
  v1 = 0x747865746E6F63;
  v2 = 0x65736E6F70736572;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_2405A953C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B841C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405A9564(uint64_t a1)
{
  v2 = sub_2405B0C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A95A0(uint64_t a1)
{
  v2 = sub_2405B0C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.FidoChallenge.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AB8, &qword_24075DCB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v19 = *(v1 + 16);
  v20 = v8;
  v18 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0C40();
  v11 = v9;
  sub_24075AF74();
  v22 = v9;
  v12 = v4;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075ABE4();
  if (!v2)
  {
    v13 = v19;

    v22 = v20;
    v21 = 1;
    v14 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AC8, &qword_24075DCB8);
    sub_240590128(&qword_27E4B6AD0, &qword_27E4B6AC8, &qword_24075DCB8, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    v22 = v13;
    v21 = 2;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AD8, &qword_24075DCC0);
    sub_240590128(&qword_27E4B6AE0, &qword_27E4B6AD8, &qword_24075DCC0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();

    v22 = v18;
    v21 = 3;
    v17 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v7, v12);
}

void sub_2405A9944(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (*v1)
  {
    sub_24075AE94();
    v6 = v3;
    sub_24075A6E4();

    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24075AE94();
    if (v2)
    {
LABEL_3:
      sub_24075AE94();
      v7 = v2;
      sub_24075A6E4();

      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_24075AE94();
      if (v4)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_24075AE94();
      return;
    }
  }

  sub_24075AE94();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_24075AE94();
  v8 = v5;
  sub_24075A6E4();

  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_24075AE94();
  v9 = v4;
  sub_24075A6E4();
}

uint64_t AuthenticationModel.FidoChallenge.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24075AE64();
  AuthenticationModel.FidoChallenge.hash(into:)(v3);
  return sub_24075AED4();
}

void AuthenticationModel.FidoChallenge.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AE8, &qword_24075DCC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0C40();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    v19 = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v18 = a2;
    v9 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AC8, &qword_24075DCB8);
    v19 = 1;
    sub_240590128(&qword_27E4B6AF0, &qword_27E4B6AC8, &qword_24075DCB8, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v10 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AD8, &qword_24075DCC0);
    v19 = 2;
    sub_240590128(&qword_27E4B6AF8, &qword_27E4B6AD8, &qword_24075DCC0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v11 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v19 = 3;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    (*(v6 + 8))(v8, v5);
    v12 = v20;
    v13 = v18;
    *v18 = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    v14 = v12;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

id AuthenticationModel.KeepUsing.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AuthenticationModel.KeepUsing.username.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_2405A9F7C()
{
  v1 = 0x656D616E72657375;
  if (*v0 != 1)
  {
    v1 = 0x6E6973557065656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2405A9FE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B8588(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405AA008(uint64_t a1)
{
  v2 = sub_2405B0C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405AA044(uint64_t a1)
{
  v2 = sub_2405B0C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.KeepUsing.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B00, &qword_24075DCD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = v8;
  v12[1] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0C94();
  v10 = v9;
  sub_24075AF74();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075ABE4();

  if (!v2)
  {
    v16 = 1;
    sub_24075ABB4();
    v15 = 2;
    sub_24075AB74();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AuthenticationModel.KeepUsing.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  if (*v1)
  {
    sub_24075AE94();
    v4 = v2;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075A114();
  if (v3 != 2)
  {
    sub_24075AE94();
  }

  return sub_24075AE94();
}

uint64_t AuthenticationModel.KeepUsing.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_24075AE64();
  sub_24075AE94();
  if (v1)
  {
    v3 = v1;
    sub_24075A6E4();
  }

  sub_24075A114();
  if (v2 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  return sub_24075AED4();
}

void AuthenticationModel.KeepUsing.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B10, &qword_24075DCD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0C94();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    v19 = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v9 = v20;
    v18 = 1;
    v10 = sub_24075AAC4();
    v12 = v11;
    v16 = v10;
    v17 = 2;
    v13 = sub_24075AA84();
    (*(v6 + 8))(v8, v5);
    v14 = v16;
    *a2 = v9;
    *(a2 + 8) = v14;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    v15 = v9;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2405AA6D4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  AuthenticationModel.KeepUsing.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_2405AA734(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_24075AE64();
  AuthenticationModel.KeepUsing.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t AuthenticationModel.PreflightRepair.success.setter(char a1)
{
  result = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void *AuthenticationModel.PreflightRepair.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for AuthenticationModel.PreflightRepair(0) + 24));
  v2 = v1;
  return v1;
}

void sub_2405AA890(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AuthenticationModel.PreflightRepair(0) + 24);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void AuthenticationModel.PreflightRepair.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthenticationModel.PreflightRepair(0) + 24);

  *(v1 + v3) = a1;
}

void (*AuthenticationModel.PreflightRepair.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AuthenticationModel.PreflightRepair(0);
  *(v3 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t sub_2405AA99C()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_2405AA9F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B86B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405AAA1C(uint64_t a1)
{
  v2 = sub_2405B0CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405AAA58(uint64_t a1)
{
  v2 = sub_2405B0CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.PreflightRepair.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B18, &qword_24075DCE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0CE8();
  sub_24075AF74();
  v15 = 0;
  type metadata accessor for IdMSAccount(0);
  sub_240594D3C(&qword_27E4B6438, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  sub_24075ABE4();
  if (!v2)
  {
    v9 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
    v14 = 1;
    sub_24075ABC4();
    v13 = *(v3 + *(v9 + 24));
    v12[15] = 2;
    v10 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();
  }

  return (*(v6 + 8))(v8, v5);
}

void AuthenticationModel.PreflightRepair.hash(into:)(uint64_t a1)
{
  IdMSAccount.hash(into:)(a1);
  v2 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  sub_24075AE94();
  v3 = *(v1 + *(v2 + 24));
  if (v3)
  {
    sub_24075AE94();
    v4 = v3;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }
}

uint64_t AuthenticationModel.PreflightRepair.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v5);
  v1 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  sub_24075AE94();
  v2 = *(v0 + *(v1 + 24));
  sub_24075AE94();
  if (v2)
  {
    v3 = v2;
    sub_24075A6E4();
  }

  return sub_24075AED4();
}

void AuthenticationModel.PreflightRepair.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for IdMSAccount(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B28, &qword_24075DCE8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v10 + 24);
  *&v12[v21] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0CE8();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v18;
    v25 = 0;
    sub_240594D3C(&qword_27E4B6480, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
    v14 = v19;
    sub_24075AAF4();
    sub_2405AE39C(v20, v12, type metadata accessor for IdMSAccount);
    v24 = 1;
    v12[*(v9 + 20)] = sub_24075AAD4() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v23 = 2;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    (*(v13 + 8))(v8, v14);
    v16 = v21;
    v15 = v22;

    *&v12[v16] = v15;
    sub_240594008(v12, v17, type metadata accessor for AuthenticationModel.PreflightRepair);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_240593D7C(v12, type metadata accessor for AuthenticationModel.PreflightRepair);
  }
}

uint64_t sub_2405AB244(uint64_t a1)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v6);
  sub_24075AE94();
  v3 = *(v1 + *(a1 + 24));
  sub_24075AE94();
  if (v3)
  {
    v4 = v3;
    sub_24075A6E4();
  }

  return sub_24075AED4();
}

void sub_2405AB2E0(uint64_t a1, uint64_t a2)
{
  IdMSAccount.hash(into:)(a1);
  sub_24075AE94();
  v4 = *(v2 + *(a2 + 24));
  if (v4)
  {
    sub_24075AE94();
    v5 = v4;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }
}

uint64_t sub_2405AB390(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v7);
  sub_24075AE94();
  v4 = *(v2 + *(a2 + 24));
  sub_24075AE94();
  if (v4)
  {
    v5 = v4;
    sub_24075A6E4();
  }

  return sub_24075AED4();
}

uint64_t AuthenticationModel.Alert.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AuthenticationModel.Alert.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuthenticationModel.Alert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AuthenticationModel.Alert.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AuthenticationModel.Alert.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 80);
  *(a1 + 48) = v8;
  return sub_2405B02E8(v2, v3, v4, v5, v6, v7, v8);
}

__n128 AuthenticationModel.Alert.error.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_2405AEA5C(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v7;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  return result;
}

uint64_t sub_2405AB608()
{
  v1 = 0x656C746974;
  v2 = 0x726F727265;
  if (*v0 != 2)
  {
    v2 = 0x6E65736572507369;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_2405AB684@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B87C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405AB6AC(uint64_t a1)
{
  v2 = sub_2405B0D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405AB6E8(uint64_t a1)
{
  v2 = sub_2405B0D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.Alert.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B30, &qword_24075DCF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = *(v1 + 16);
  v24 = *(v1 + 24);
  v25 = v7;
  v8 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = v8;
  v9 = *(v1 + 48);
  v20 = *(v1 + 56);
  v21 = v9;
  v10 = *(v1 + 64);
  v18 = *(v1 + 72);
  v19 = v10;
  v34 = *(v1 + 80);
  v17[3] = *(v1 + 81);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0D3C();
  sub_24075AF74();
  LOBYTE(v27) = 0;
  v11 = v26;
  sub_24075ABB4();
  if (!v11)
  {
    v12 = v20;
    v13 = v21;
    v15 = v22;
    v14 = v23;
    LOBYTE(v27) = 1;
    sub_24075ABB4();
    v27 = v14;
    v28 = v15;
    v29 = v13;
    v30 = v12;
    v31 = v19;
    v32 = v18;
    v33 = v34;
    v35 = 2;
    sub_2405B02E8(v14, v15, v13, v12, v19, v18, v34);
    sub_2405B0D90();
    sub_24075AB94();
    sub_2405AEA5C(v27, v28, v29, v30, v31, v32, v33);
    LOBYTE(v27) = 3;
    sub_24075ABC4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AuthenticationModel.Alert.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v10 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  if (v8 != 255)
  {
    sub_2405AF8D8(v10, v3, v4, v5, v6, v7, v8);
    SetupError.hash(into:)(a1);
    sub_2405AEA70(v10, v3, v4, v5, v6, v7, v8);
  }

  return sub_24075AE94();
}

uint64_t AuthenticationModel.Alert.hashValue.getter()
{
  v7 = *(v0 + 40);
  v8 = *(v0 + 32);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  if (v5 != 255)
  {
    sub_2405AF8D8(v8, v7, v1, v2, v3, v4, v5);
    SetupError.hash(into:)(v9);
    sub_2405AEA70(v8, v7, v1, v2, v3, v4, v5);
  }

  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t AuthenticationModel.Alert.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B48, &qword_24075DCF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0D3C();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
  }

  else
  {
    LOBYTE(v36) = 0;
    v9 = sub_24075AAC4();
    v28 = v10;
    LOBYTE(v36) = 1;
    *&v24 = sub_24075AAC4();
    *(&v24 + 1) = v11;
    LOBYTE(v30) = 2;
    sub_2405B0DE4();
    sub_24075AAA4();
    v26 = v36;
    v27 = v37;
    v29 = *(&v38 + 1);
    v25 = v38;
    v44 = v39;
    sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
    v45 = 3;
    v12 = sub_24075AAD4();
    (*(v6 + 8))(v8, v5);
    v13 = v12 & 1;
    v23 = v12 & 1;
    *&v30 = v9;
    *(&v30 + 1) = v28;
    v31 = v24;
    v15 = *(&v26 + 1);
    v14 = v26;
    v32 = v26;
    v17 = *(&v27 + 1);
    v16 = v27;
    v33 = v27;
    v18 = v25;
    *&v34 = v25;
    *(&v34 + 1) = v29;
    LOBYTE(v35) = v44;
    HIBYTE(v35) = v13;
    v19 = v27;
    *(a2 + 32) = v26;
    *(a2 + 48) = v19;
    *(a2 + 64) = v34;
    *(a2 + 80) = v35;
    v20 = v31;
    *a2 = v30;
    *(a2 + 16) = v20;
    sub_2405AE2A4(&v30, &v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v36 = v9;
    *(&v36 + 1) = v28;
    v37 = v24;
    v38 = __PAIR128__(v15, v14);
    v39 = __PAIR128__(v17, v16);
    v40 = v18;
    v41 = v29;
    v42 = v44;
    v43 = v23;
    return sub_2405AE2DC(&v36);
  }
}

uint64_t sub_2405AC09C()
{
  sub_24075AE64();
  AuthenticationModel.Alert.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2405AC0E0(uint64_t a1)
{
  sub_24075AE64();
  AuthenticationModel.Alert.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t AuthenticationModel.description.getter()
{
  v1 = v0;
  *&v28[0] = 0;
  *(&v28[0] + 1) = 0xE000000000000000;
  sub_24075A864();
  MEMORY[0x245CC5E60](0x7461747320202020, 0xEB00000000203A65);
  v2 = type metadata accessor for AuthenticationModel(0);
  type metadata accessor for AuthenticationModel.State(0);
  sub_24075A994();
  MEMORY[0x245CC5E60](0x6361202020200A0ALL, 0xEF203A746E756F63);
  type metadata accessor for IdMSAccount(0);
  sub_240594D3C(&qword_27E4B6B58, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD000000000000019, 0x8000000240786160);
  v3 = (v0 + v2[5]);
  v4 = v3[1];
  v5 = v3[3];
  v25 = v3[2];
  v26 = v5;
  v6 = v3[3];
  v27 = v3[4];
  v7 = v3[1];
  v24[0] = *v3;
  v24[1] = v7;
  v21 = v25;
  v22 = v6;
  v23 = v3[4];
  v19 = v24[0];
  v20 = v4;
  sub_2405B044C(v24, v28, &qword_27E4B6420, &qword_240768F00);
  sub_2405B0E38();
  sub_24075ACD4();
  v28[2] = v21;
  v28[3] = v22;
  v28[4] = v23;
  v28[0] = v19;
  v28[1] = v20;
  sub_2405B8A50(v28, &qword_27E4B6420, &qword_240768F00);
  MEMORY[0x245CC5E60](0xD000000000000016, 0x8000000240786180);
  sub_24075A994();
  MEMORY[0x245CC5E60](0x6D6469202020200ALL, 0xEF203A6174614473);
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD000000000000016, 0x80000002407861A0);
  v8 = *(v0 + v2[8]);
  type metadata accessor for AIDAServiceType(0);
  v10 = MEMORY[0x245CC5FF0](v8, v9);
  MEMORY[0x245CC5E60](v10);

  MEMORY[0x245CC5E60](0xD00000000000001CLL, 0x80000002407861C0);
  if (*(v1 + v2[9]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v1 + v2[9]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v11, v12);

  MEMORY[0x245CC5E60](0xD000000000000016, 0x80000002407861E0);
  v13 = (v1 + v2[11]);
  v14 = *v13;
  v15 = v13[1];
  if (*v13)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
  }

  sub_24057B5BC(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B68, &qword_24075DD00);
  v17 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v17);

  return 0;
}

unint64_t sub_2405AC514(uint64_t a1, uint64_t a2)
{
  v2 = sub_24075AA34();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t _s12AppleIDSetup19AuthenticationModelV10BasicLoginV10SubmissionO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v45[0] = v3;
  v45[1] = v2;
  v45[2] = v5;
  v45[3] = v4;
  v46 = v6;
  v47 = v7;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v11 == 1)
      {
        if (v3 == v7 && v2 == v8 || (v16 = v7, v17 = v9, v18 = v10, v19 = sub_24075ACF4(), v9 = v17, v10 = v18, v20 = v19, v7 = v16, (v20 & 1) != 0))
        {
          if (v5 == v9 && v4 == v10)
          {
            sub_2405B04C8(v7, v8, v5, v4, 1);
            sub_2405B04C8(v3, v2, v5, v4, 1);
            goto LABEL_30;
          }

          v36 = v7;
          v37 = v9;
          v38 = v10;
          v30 = sub_24075ACF4();
          sub_2405B04C8(v36, v8, v37, v38, 1);
          v31 = v3;
          v32 = v2;
          v33 = v5;
          v34 = v4;
          v35 = 1;
          goto LABEL_33;
        }

        sub_2405B04C8(v16, v8, v17, v18, 1);
        v21 = v3;
        v22 = v2;
        v23 = v5;
        v24 = v4;
        v25 = 1;
        goto LABEL_28;
      }
    }

    else if (!v11)
    {
      if (v3 == v7 && v2 == v8)
      {
        sub_2405B04C8(v3, v2, v9, v10, 0);
        sub_2405B04C8(v3, v2, v5, v4, 0);
LABEL_30:
        sub_2405B8A50(v45, &qword_27E4B7170, &qword_240762408);
        return 1;
      }

      v27 = v7;
      v28 = v9;
      v29 = v10;
      v30 = sub_24075ACF4();
      sub_2405B04C8(v27, v8, v28, v29, 0);
      v31 = v3;
      v32 = v2;
      v33 = v5;
      v34 = v4;
      v35 = 0;
LABEL_33:
      sub_2405B04C8(v31, v32, v33, v34, v35);
      sub_2405B8A50(v45, &qword_27E4B7170, &qword_240762408);
      return v30 & 1;
    }

    goto LABEL_27;
  }

  if (v6 != 2)
  {
    if (v5 | v2 | v3 | v4)
    {
      if (v11 == 3 && v7 == 1 && !(v9 | v8 | v10))
      {
        goto LABEL_30;
      }
    }

    else if (v11 == 3 && !(v9 | v8 | v7 | v10))
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v11 != 2)
  {
LABEL_27:
    sub_2405B04C8(v7, v8, v9, v10, v11);
    v21 = v3;
    v22 = v2;
    v23 = v5;
    v24 = v4;
    v25 = v6;
LABEL_28:
    sub_2405B04C8(v21, v22, v23, v24, v25);
    sub_2405B8A50(v45, &qword_27E4B7170, &qword_240762408);
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      v43 = v9;
      v44 = v10;
      sub_2405B04C8(0, v8, v9, v10, 2);
      sub_2405B04C8(0, v8, v43, v44, 2);
      v21 = v3;
      v22 = v2;
      v23 = v5;
      v24 = v4;
      v25 = 2;
      goto LABEL_28;
    }

    v12 = v7;
    v13 = v9;
    v14 = v10;
    sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
    sub_2405B04C8(v12, v8, v13, v14, 2);
    sub_2405B04C8(v3, v2, v5, v4, 2);
    sub_2405B04C8(v12, v8, v13, v14, 2);
    sub_2405B04C8(v3, v2, v5, v4, 2);
    v15 = sub_24075A6D4();
    sub_2405B8A50(v45, &qword_27E4B7170, &qword_240762408);
    sub_2405B0558(v3, v2, v5, v4, 2);
    sub_2405B0558(v12, v8, v13, v14, 2);
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v39 = v10;
    v40 = v9;
    v41 = v7;
    v42 = v7;
    sub_2405B04C8(v41, v8, v40, v39, 2);
    sub_2405B04C8(0, v2, v5, v4, 2);
    sub_2405B8A50(v45, &qword_27E4B7170, &qword_240762408);
    if (v41)
    {
      sub_2405B0558(v41, v8, v40, v39, 2);
      return 0;
    }
  }

  return 1;
}

BOOL _s12AppleIDSetup19AuthenticationModelV10BasicLoginV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v7 = *(a1 + 34);
  v8 = *(a1 + 35);
  v9 = *(a1 + 36);
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[9];
  v86 = a1[8];
  v87 = a1[10];
  v14 = a1[11];
  v88 = *(a1 + 96);
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 33);
  v20 = *(a2 + 34);
  v21 = *(a2 + 35);
  v22 = *(a2 + 36);
  v24 = *(a2 + 40);
  v23 = *(a2 + 48);
  v25 = *(a2 + 56);
  v84 = *(a2 + 64);
  v26 = *(a2 + 72);
  v85 = *(a2 + 80);
  v83 = *(a2 + 88);
  v27 = *(a2 + 96);
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    v82 = a1[2];
    if (*a1 != *a2 || v3 != v15)
    {
      v60 = *(a2 + 56);
      v62 = *(a2 + 96);
      v64 = *(a2 + 34);
      v57 = *(a1 + 33);
      v80 = *(a2 + 33);
      v28 = a1[11];
      v76 = *(a2 + 40);
      v78 = a1[5];
      v72 = *(a1 + 35);
      v74 = *(a1 + 36);
      v68 = *(a2 + 36);
      v70 = *(a1 + 34);
      v66 = *(a2 + 35);
      v29 = a1[6];
      v30 = *(a2 + 72);
      v31 = a1[7];
      v32 = *(a2 + 48);
      v33 = sub_24075ACF4();
      v6 = v57;
      v23 = v32;
      v12 = v31;
      v25 = v60;
      v26 = v30;
      v11 = v29;
      v27 = v62;
      v20 = v64;
      v21 = v66;
      v22 = v68;
      v7 = v70;
      v8 = v72;
      v9 = v74;
      v24 = v76;
      v10 = v78;
      v14 = v28;
      v19 = v80;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v82 = a1[2];
    if (v15)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v17)
    {
      return 0;
    }

    v81 = v19;
    v34 = v6;
    v65 = v20;
    v67 = v21;
    v69 = v22;
    v71 = v7;
    v73 = v8;
    v75 = v9;
    v77 = v24;
    v79 = v10;
    v35 = v23;
    v56 = v13;
    v58 = v26;
    v36 = v11;
    v59 = v14;
    v61 = v12;
    v63 = v27;
    if (v82 == v16 && v4 == v17)
    {
    }

    else
    {
      v37 = sub_24075ACF4();

      if ((v37 & 1) == 0)
      {

        return 0;
      }
    }

    v11 = v36;
    if (v5 != v18)
    {
      return 0;
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v81 = v19;
    v34 = v6;
    v65 = v20;
    v67 = v21;
    v69 = v22;
    v71 = v7;
    v73 = v8;
    v75 = v9;
    v77 = v24;
    v79 = v10;
    v35 = v23;
    v56 = v13;
    v58 = v26;
    v59 = v14;
    v61 = v12;
    v63 = v27;

    if (v5 != v18)
    {
      return 0;
    }
  }

  if (v34 == 2)
  {
    v39 = v77;
    v38 = v79;
    if (v81 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v81 == 2)
    {
      return result;
    }

    v39 = v77;
    v38 = v79;
    if ((v81 ^ v34))
    {
      return result;
    }
  }

  if (v71 == 2)
  {
    result = 0;
    if (v65 != 2 || ((v73 ^ v67) & 1) != 0 || ((v75 ^ v69) & 1) != 0)
    {
      return result;
    }

    goto LABEL_35;
  }

  result = 0;
  if (v65 != 2 && ((v65 ^ v71) & 1) == 0 && ((v73 ^ v67) & 1) == 0 && ((v75 ^ v69) & 1) == 0)
  {
LABEL_35:
    if (v38)
    {
      if (!v39)
      {
        return 0;
      }

      v41 = v38;
      v42 = v39;
      sub_240590794(0, &qword_27E4B7178, 0x277CF0170);
      v43 = v42;
      v44 = v11;
      v45 = v43;
      v46 = v41;
      v47 = sub_24075A6D4();

      v11 = v44;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v39)
    {
      return 0;
    }

    if (sub_2406E44F0(v11, v35))
    {
      if (v61)
      {
        if (!v25)
        {
          return 0;
        }

        sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
        v48 = v25;
        v49 = v61;
        v50 = sub_24075A6D4();

        if ((v50 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v25)
      {
        return 0;
      }

      if (v88 == 255)
      {
        v52 = v56;
        sub_2405B04B4(v86, v56, v87, v59, 255);
        v53 = v63;
        if (v63 == 255)
        {
          sub_2405B04B4(v84, v58, v85, v83, 255);
          sub_2405B0544(v86, v56, v87, v59, 255);
          return 1;
        }

        v54 = v58;
        sub_2405B04B4(v84, v58, v85, v83, v63);
        v55 = v59;
      }

      else
      {
        v94 = v86;
        v95 = v56;
        v96 = v87;
        v97 = v59;
        v98 = v88;
        if (v63 != 255)
        {
          v89 = v84;
          v90 = v58;
          v91 = v85;
          v92 = v83;
          v93 = v63;
          sub_2405B04B4(v86, v56, v87, v59, v88);
          sub_2405B04B4(v84, v58, v85, v83, v63);
          sub_2405B04B4(v86, v56, v87, v59, v88);
          v51 = _s12AppleIDSetup19AuthenticationModelV10BasicLoginV10SubmissionO2eeoiySbAG_AGtFZ_0(&v94, &v89);
          sub_2405B0558(v89, v90, v91, v92, v93);
          sub_2405B0558(v94, v95, v96, v97, v98);
          sub_2405B0544(v86, v56, v87, v59, v88);
          return (v51 & 1) != 0;
        }

        v53 = -1;
        v52 = v56;
        sub_2405B04B4(v86, v56, v87, v59, v88);
        v54 = v58;
        sub_2405B04B4(v84, v58, v85, v83, 255);
        sub_2405B04B4(v86, v56, v87, v59, v88);
        sub_2405B0558(v86, v56, v87, v59, v88);
        v55 = v59;
      }

      sub_2405B0544(v86, v52, v87, v55, v88);
      sub_2405B0544(v84, v54, v85, v83, v53);
    }

    return 0;
  }

  return result;
}

uint64_t _s12AppleIDSetup19AuthenticationModelV9ErrorInfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v8 || v5 != v9) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v10)
    {
      sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
      v12 = v10;
      v13 = v6;
      v14 = sub_24075A6D4();

      if (v14)
      {
        return 1;
      }
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL sub_2405AD0D8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  v17 = *(a2 + 64);
  if (*a1)
  {
    if (!v12)
    {
      return 0;
    }

    v42 = *(a1 + 16);
    v43 = *(a2 + 40);
    v50 = *(a2 + 32);
    v51 = *(a2 + 48);
    v52 = *(a2 + 56);
    v48 = *(a1 + 72);
    v49 = *(a2 + 72);
    v44 = *(a1 + 40);
    v45 = *(a1 + 32);
    v46 = *(a1 + 48);
    v47 = *(a1 + 56);
    v18 = *(a1 + 64);
    sub_240590794(0, &qword_27E4B7178, 0x277CF0170);
    v19 = v12;
    v20 = v2;
    v21 = sub_24075A6D4();

    result = 0;
    if ((v21 & 1) == 0)
    {
      return result;
    }

    v11 = v18;
    v8 = v46;
    v9 = v47;
    v7 = v44;
    v6 = v45;
    v4 = v42;
    v16 = v43;
    if (v3 != v13)
    {
      return result;
    }

LABEL_8:
    if (v5)
    {
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v4 == v14)
      {
        v23 = v15;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        return 0;
      }
    }

    v24 = v17;
    if (v7 == 1)
    {
      v25 = 1;
      v26 = v8;
      v27 = v6;
      v28 = v16;
      sub_2405B09A4(v6, 1, v8, v9, v11);
      if (v28 == 1)
      {
        sub_2405B09A4(v50, 1, v51, v52, v24);
        sub_2405AE990(v27, 1, v26, v9, v11);
LABEL_25:
        if (v48)
        {
          if (!v49)
          {
            return 0;
          }

          sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
          v39 = v49;
          v40 = v48;
          v41 = sub_24075A6D4();

          return (v41 & 1) != 0;
        }

        return !v49;
      }

      v30 = v50;
      v29 = v51;
      v31 = v52;
      sub_2405B09A4(v50, v28, v51, v52, v24);
    }

    else
    {
      v55[0] = v6;
      v55[1] = v7;
      v55[2] = v8;
      v55[3] = v9;
      v56 = v11;
      if (v16 != 1)
      {
        v53[0] = v50;
        v53[1] = v16;
        v53[2] = v51;
        v53[3] = v52;
        v54 = v17;
        v32 = v8;
        v33 = v6;
        v34 = v7;
        v35 = v16;
        sub_2405B09A4(v6, v7, v8, v9, v11);
        sub_2405B09A4(v50, v35, v51, v52, v17);
        sub_2405B09A4(v33, v34, v32, v9, v11);
        v36 = _s12AppleIDSetup19AuthenticationModelV9ErrorInfoV2eeoiySbAE_AEtFZ_0(v55, v53);
        v37 = v54;

        v38 = v56;

        sub_2405AE990(v33, v34, v32, v9, v11);
        if ((v36 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_25;
      }

      v26 = v8;
      v27 = v6;
      v25 = v7;
      v28 = 1;
      sub_2405B09A4(v6, v7, v8, v9, v11);
      v30 = v50;
      v29 = v51;
      v31 = v52;
      sub_2405B09A4(v50, 1, v51, v52, v24);
      sub_2405B09A4(v27, v25, v26, v9, v11);
    }

    sub_2405AE990(v27, v25, v26, v9, v11);
    sub_2405AE990(v30, v28, v29, v31, v24);
    return 0;
  }

  v50 = *(a2 + 32);
  v51 = *(a2 + 48);
  v52 = *(a2 + 56);
  v49 = *(a2 + 72);
  result = 0;
  if (!v12)
  {
    v48 = v10;
    if (v3 == v13)
    {
      goto LABEL_8;
    }
  }

  return result;
}