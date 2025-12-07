unint64_t sub_1B06FF3FC()
{
  v2 = qword_1EB6E1910;
  if (!qword_1EB6E1910)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1910);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF478()
{
  v2 = qword_1EB6E1918;
  if (!qword_1EB6E1918)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1918);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF4F4()
{
  v2 = qword_1EB6E1920;
  if (!qword_1EB6E1920)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF570()
{
  v2 = qword_1EB6E1928;
  if (!qword_1EB6E1928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1928);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF5EC()
{
  v2 = qword_1EB6E1930;
  if (!qword_1EB6E1930)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06FF668()
{
  v2 = qword_1EB6E1938;
  if (!qword_1EB6E1938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1938);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06FF7A8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v32 = a1;
  v33 = a2;
  v31 = a3;
  v29 = a4;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v44 = 0;
  v23 = sub_1B0E43108();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v14[-v26];
  v44 = &v14[-v26];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1968, &qword_1B0E9A0C8);
  v28 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v14[-v28];
  v30 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v14[-v30];
  v41 = v4;
  v42 = v5;
  v40 = v6;
  v39 = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B06BC2F4(v31, v34);
  v8 = v33;
  v9 = v35;
  v10 = v34;
  v11 = *(v36 + 48);
  *v35 = v32;
  v9[1] = v8;
  sub_1B06BC984(v10, v9 + v11);
  v37 = v35[1];
  v38 = *(v36 + 48);
  if (v37)
  {
    v22 = v37;
    v20 = v37;
    if ((*(v24 + 48))(v35 + v38, 1, v23) == 1)
    {
      v43 = 1;

      v21 = 1;
    }

    else
    {
      (*(v24 + 16))(v27, v35 + v38, v23);
      sub_1B0E43048();
      if (v12 >= 60.0)
      {
        v17 = *(v24 + 8);
        v16 = v24 + 8;
        v17(v27, v23);
        v43 = 2;
        v17(v35 + v38, v23);

        v21 = 2;
      }

      else
      {
        v44 = v27;
        v43 = 1;
        v19 = *(v24 + 8);
        v18 = v24 + 8;
        v19();
        (v19)(v35 + v38, v23);

        v21 = 1;
      }
    }
  }

  else
  {
    v43 = 0;
    sub_1B06B97A8(v35 + v38);
    v21 = 0;
  }

  v15 = v21;
  (*(v24 + 8))(v29, v23);
  sub_1B06B97A8(v31);

  return v15;
}

uint64_t sub_1B06FFBDC(uint64_t a1)
{
  v166 = a1;
  v136 = sub_1B039BBE8;
  v137 = sub_1B0394C30;
  v138 = sub_1B0394C24;
  v139 = sub_1B039BA2C;
  v140 = sub_1B039BA88;
  v141 = sub_1B039BB94;
  v142 = sub_1B0394C24;
  v143 = sub_1B039BBA0;
  v144 = sub_1B039BC08;
  v145 = sub_1B0398F5C;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0399178;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B039BA94;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B0399178;
  v154 = sub_1B0398F5C;
  v155 = sub_1B0398F5C;
  v156 = sub_1B03991EC;
  v182 = 0;
  v181 = 0;
  v157 = 0;
  v173 = 0;
  v174 = 0;
  v158 = 0;
  v159 = _s6LoggerVMa(0);
  v160 = (*(*(v159 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v161 = &v59 - v160;
  v162 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v163 = &v59 - v162;
  v164 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v165 = &v59 - v164;
  v167 = sub_1B0E439A8();
  v168 = *(v167 - 8);
  v169 = v167 - 8;
  v170 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v59 - v170;
  v182 = v5;
  v181 = v6;
  MEMORY[0x1E69E5928](v6);
  v180 = [v172 preferredAuthScheme];
  if (v180)
  {
    v133 = &v180;
    v134 = v180;
    MEMORY[0x1E69E5928](v180);
    sub_1B06D4E94(v133);
    MEMORY[0x1E69E5920](v172);
    v135 = [v134 name];
    if (v135)
    {
      v132 = v135;
      v127 = v135;
      v128 = sub_1B0E44AD8();
      v129 = v7;
      MEMORY[0x1E69E5920](v127);
      v130 = v128;
      v131 = v129;
    }

    else
    {
      v130 = 0;
      v131 = 0;
    }

    v124 = v131;
    v123 = v130;
    MEMORY[0x1E69E5920](v134);
    v125 = v123;
    v126 = v124;
  }

  else
  {
    sub_1B06D4E94(&v180);
    MEMORY[0x1E69E5920](v172);
    v125 = 0;
    v126 = 0;
  }

  v121 = v126;
  v122 = v125;
  if (v126)
  {
    v119 = v122;
    v120 = v121;
    v116 = v121;
    v113 = v122;
    v173 = v122;
    v174 = v121;
    v115 = MEMORY[0x1E69E6158];
    v112 = sub_1B0E46A48();
    v114 = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = v114;
    v10 = v116;
    *v114 = v113;
    v9[1] = v10;
    sub_1B0394964();
    v117 = sub_1B0E45438();

    return v117;
  }

  else
  {
    (*(v168 + 16))(v171, v166, v167);
    sub_1B0394784(v166, v165);
    sub_1B0394784(v165, v163);
    sub_1B03F4FD0(v165, v161);
    v11 = (v163 + *(v159 + 20));
    v81 = *v11;
    v82 = *(v11 + 1);
    sub_1B039480C(v163);
    v80 = 24;
    v92 = 7;
    v12 = swift_allocObject();
    v13 = v82;
    v85 = v12;
    *(v12 + 16) = v81;
    *(v12 + 20) = v13;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v14 = swift_allocObject();
    v15 = v82;
    v83 = v14;
    *(v14 + 16) = v81;
    *(v14 + 20) = v15;

    v91 = 32;
    v16 = swift_allocObject();
    v17 = v83;
    v93 = v16;
    *(v16 + 16) = v136;
    *(v16 + 24) = v17;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v161);
    v110 = sub_1B0E43988();
    v111 = sub_1B0E458E8();
    v89 = 17;
    v95 = swift_allocObject();
    v87 = 16;
    *(v95 + 16) = 16;
    v96 = swift_allocObject();
    v90 = 4;
    *(v96 + 16) = 4;
    v18 = swift_allocObject();
    v84 = v18;
    *(v18 + 16) = v137;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v84;
    v97 = v19;
    *(v19 + 16) = v138;
    *(v19 + 24) = v20;
    v98 = swift_allocObject();
    *(v98 + 16) = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = 1;
    v21 = swift_allocObject();
    v22 = v85;
    v86 = v21;
    *(v21 + 16) = v139;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v86;
    v100 = v23;
    *(v23 + 16) = v140;
    *(v23 + 24) = v24;
    v101 = swift_allocObject();
    *(v101 + 16) = v87;
    v102 = swift_allocObject();
    *(v102 + 16) = v90;
    v25 = swift_allocObject();
    v88 = v25;
    *(v25 + 16) = v141;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v88;
    v103 = v26;
    *(v26 + 16) = v142;
    *(v26 + 24) = v27;
    v104 = swift_allocObject();
    *(v104 + 16) = 0;
    v105 = swift_allocObject();
    *(v105 + 16) = v90;
    v28 = swift_allocObject();
    v29 = v93;
    v94 = v28;
    *(v28 + 16) = v143;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v94;
    v107 = v30;
    *(v30 + 16) = v144;
    *(v30 + 24) = v31;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v106 = sub_1B0E46A48();
    v108 = v32;

    v33 = v95;
    v34 = v108;
    *v108 = v145;
    v34[1] = v33;

    v35 = v96;
    v36 = v108;
    v108[2] = v146;
    v36[3] = v35;

    v37 = v97;
    v38 = v108;
    v108[4] = v147;
    v38[5] = v37;

    v39 = v98;
    v40 = v108;
    v108[6] = v148;
    v40[7] = v39;

    v41 = v99;
    v42 = v108;
    v108[8] = v149;
    v42[9] = v41;

    v43 = v100;
    v44 = v108;
    v108[10] = v150;
    v44[11] = v43;

    v45 = v101;
    v46 = v108;
    v108[12] = v151;
    v46[13] = v45;

    v47 = v102;
    v48 = v108;
    v108[14] = v152;
    v48[15] = v47;

    v49 = v103;
    v50 = v108;
    v108[16] = v153;
    v50[17] = v49;

    v51 = v104;
    v52 = v108;
    v108[18] = v154;
    v52[19] = v51;

    v53 = v105;
    v54 = v108;
    v108[20] = v155;
    v54[21] = v53;

    v55 = v107;
    v56 = v108;
    v108[22] = v156;
    v56[23] = v55;
    sub_1B0394964();

    if (os_log_type_enabled(v110, v111))
    {
      v57 = v157;
      v73 = sub_1B0E45D78();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v72 = 0;
      v74 = sub_1B03949A8(0, v71, v71);
      v75 = sub_1B03949A8(v72, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v76 = &v179;
      v179 = v73;
      v77 = &v178;
      v178 = v74;
      v78 = &v177;
      v177 = v75;
      sub_1B0394A48(0, &v179);
      sub_1B0394A48(4, v76);
      v175 = v145;
      v176 = v95;
      sub_1B03949FC(&v175, v76, v77, v78);
      v79 = v57;
      if (v57)
      {

        __break(1u);
      }

      else
      {
        v175 = v146;
        v176 = v96;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v70 = 0;
        v175 = v147;
        v176 = v97;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v69 = 0;
        v175 = v148;
        v176 = v98;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v68 = 0;
        v175 = v149;
        v176 = v99;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v67 = 0;
        v175 = v150;
        v176 = v100;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v66 = 0;
        v175 = v151;
        v176 = v101;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v65 = 0;
        v175 = v152;
        v176 = v102;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v64 = 0;
        v175 = v153;
        v176 = v103;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v63 = 0;
        v175 = v154;
        v176 = v104;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v62 = 0;
        v175 = v155;
        v176 = v105;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        v61 = 0;
        v175 = v156;
        v176 = v107;
        sub_1B03949FC(&v175, &v179, &v178, &v177);
        _os_log_impl(&dword_1B0389000, v110, v111, "[%.*hhx-%.*X] Credentials: No auth schemes for account.", v73, 0x17u);
        v60 = 0;
        sub_1B03998A8(v74, 0, v71);
        sub_1B03998A8(v75, v60, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v110);
    (*(v168 + 8))(v171, v167);
    v59 = MEMORY[0x1E69E6158];
    sub_1B0E46A48();
    return sub_1B0E45438();
  }
}

void sub_1B0701190(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v265 = a1;
  v266 = a2;
  v267 = a3;
  v216 = sub_1B039BBE8;
  v217 = sub_1B0394C30;
  v218 = sub_1B0394C24;
  v219 = sub_1B039BA2C;
  v220 = sub_1B039BA88;
  v221 = sub_1B039BB94;
  v222 = sub_1B0394C24;
  v223 = sub_1B039BBA0;
  v224 = sub_1B039BC08;
  v225 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v227 = sub_1B0399178;
  v228 = sub_1B0398F5C;
  v229 = sub_1B0398F5C;
  v230 = sub_1B039BA94;
  v231 = sub_1B0398F5C;
  v232 = sub_1B0398F5C;
  v233 = sub_1B0399178;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B03991EC;
  v237 = sub_1B039BBE8;
  v238 = sub_1B0394C24;
  v239 = sub_1B039BA2C;
  v240 = sub_1B039BA88;
  v241 = sub_1B0394C24;
  v242 = sub_1B039BBA0;
  v243 = sub_1B039BC08;
  v244 = sub_1B0398F5C;
  v245 = sub_1B0398F5C;
  v246 = sub_1B0399178;
  v247 = sub_1B0398F5C;
  v248 = sub_1B0398F5C;
  v249 = sub_1B039BA94;
  v250 = sub_1B0398F5C;
  v251 = sub_1B0398F5C;
  v252 = sub_1B0399178;
  v253 = sub_1B0398F5C;
  v254 = sub_1B0398F5C;
  v255 = sub_1B03991EC;
  v296 = 0;
  v297 = 0;
  v295 = 0;
  v294 = 0;
  v256 = 0;
  v286 = 0;
  v257 = 0;
  v258 = _s6LoggerVMa(0);
  v259 = (*(*(v258 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v260 = &v106[-v259];
  v261 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v262 = &v106[-v261];
  v263 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v264 = &v106[-v263];
  v268 = sub_1B0E439A8();
  v269 = *(v268 - 8);
  v270 = v268 - 8;
  v272 = *(v269 + 64);
  v271 = (v272 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v267);
  v273 = &v106[-v271];
  v274 = (v272 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v275 = &v106[-v274];
  v296 = v9;
  v297 = v10;
  v295 = v11;
  v294 = v3;
  v276 = v298;
  sub_1B0702DB4(v11, v298);
  memcpy(v299, v276, sizeof(v299));
  v277 = v299[7] & 0x3000000000000000;
  v278 = v299[9] & 0x3000000000000000;
  if ((v299[5] & 0x3000000000000000) == 0x3000000000000000 && v277 == 0x3000000000000000 && v278 == 0x3000000000000000)
  {
    (*(v269 + 16))(v273, v267, v268);
    sub_1B0394784(v267, v264);
    sub_1B0394784(v264, v262);
    sub_1B03F4FD0(v264, v260);
    v59 = &v262[*(v258 + 20)];
    v128 = *v59;
    v129 = *(v59 + 1);
    sub_1B039480C(v262);
    v127 = 24;
    v139 = 7;
    v60 = swift_allocObject();
    v61 = v129;
    v132 = v60;
    *(v60 + 16) = v128;
    *(v60 + 20) = v61;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v62 = swift_allocObject();
    v63 = v129;
    v130 = v62;
    *(v62 + 16) = v128;
    *(v62 + 20) = v63;

    v138 = 32;
    v64 = swift_allocObject();
    v65 = v130;
    v140 = v64;
    *(v64 + 16) = v237;
    *(v64 + 24) = v65;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v260);
    v157 = sub_1B0E43988();
    v158 = sub_1B0E458E8();
    v136 = 17;
    v142 = swift_allocObject();
    v134 = 16;
    *(v142 + 16) = 16;
    v143 = swift_allocObject();
    v137 = 4;
    *(v143 + 16) = 4;
    v66 = swift_allocObject();
    v131 = v66;
    *(v66 + 16) = v217;
    *(v66 + 24) = 0;
    v67 = swift_allocObject();
    v68 = v131;
    v144 = v67;
    *(v67 + 16) = v238;
    *(v67 + 24) = v68;
    v145 = swift_allocObject();
    *(v145 + 16) = 0;
    v146 = swift_allocObject();
    *(v146 + 16) = 1;
    v69 = swift_allocObject();
    v70 = v132;
    v133 = v69;
    *(v69 + 16) = v239;
    *(v69 + 24) = v70;
    v71 = swift_allocObject();
    v72 = v133;
    v147 = v71;
    *(v71 + 16) = v240;
    *(v71 + 24) = v72;
    v148 = swift_allocObject();
    *(v148 + 16) = v134;
    v149 = swift_allocObject();
    *(v149 + 16) = v137;
    v73 = swift_allocObject();
    v135 = v73;
    *(v73 + 16) = v221;
    *(v73 + 24) = 0;
    v74 = swift_allocObject();
    v75 = v135;
    v150 = v74;
    *(v74 + 16) = v241;
    *(v74 + 24) = v75;
    v151 = swift_allocObject();
    *(v151 + 16) = 0;
    v152 = swift_allocObject();
    *(v152 + 16) = v137;
    v76 = swift_allocObject();
    v77 = v140;
    v141 = v76;
    *(v76 + 16) = v242;
    *(v76 + 24) = v77;
    v78 = swift_allocObject();
    v79 = v141;
    v154 = v78;
    *(v78 + 16) = v243;
    *(v78 + 24) = v79;
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v153 = sub_1B0E46A48();
    v155 = v80;

    v81 = v142;
    v82 = v155;
    *v155 = v244;
    v82[1] = v81;

    v83 = v143;
    v84 = v155;
    v155[2] = v245;
    v84[3] = v83;

    v85 = v144;
    v86 = v155;
    v155[4] = v246;
    v86[5] = v85;

    v87 = v145;
    v88 = v155;
    v155[6] = v247;
    v88[7] = v87;

    v89 = v146;
    v90 = v155;
    v155[8] = v248;
    v90[9] = v89;

    v91 = v147;
    v92 = v155;
    v155[10] = v249;
    v92[11] = v91;

    v93 = v148;
    v94 = v155;
    v155[12] = v250;
    v94[13] = v93;

    v95 = v149;
    v96 = v155;
    v155[14] = v251;
    v96[15] = v95;

    v97 = v150;
    v98 = v155;
    v155[16] = v252;
    v98[17] = v97;

    v99 = v151;
    v100 = v155;
    v155[18] = v253;
    v100[19] = v99;

    v101 = v152;
    v102 = v155;
    v155[20] = v254;
    v102[21] = v101;

    v103 = v154;
    v104 = v155;
    v155[22] = v255;
    v104[23] = v103;
    sub_1B0394964();

    if (os_log_type_enabled(v157, v158))
    {
      v105 = v256;
      v120 = sub_1B0E45D78();
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v119 = 0;
      v121 = sub_1B03949A8(0, v118, v118);
      v122 = sub_1B03949A8(v119, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v123 = &v292;
      v292 = v120;
      v124 = &v291;
      v291 = v121;
      v125 = &v290;
      v290 = v122;
      sub_1B0394A48(0, &v292);
      sub_1B0394A48(4, v123);
      v288 = v244;
      v289 = v142;
      sub_1B03949FC(&v288, v123, v124, v125);
      v126 = v105;
      if (v105)
      {

        __break(1u);
      }

      else
      {
        v288 = v245;
        v289 = v143;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v117 = 0;
        v288 = v246;
        v289 = v144;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v116 = 0;
        v288 = v247;
        v289 = v145;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v115 = 0;
        v288 = v248;
        v289 = v146;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v114 = 0;
        v288 = v249;
        v289 = v147;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v113 = 0;
        v288 = v250;
        v289 = v148;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v112 = 0;
        v288 = v251;
        v289 = v149;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v111 = 0;
        v288 = v252;
        v289 = v150;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v110 = 0;
        v288 = v253;
        v289 = v151;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v109 = 0;
        v288 = v254;
        v289 = v152;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        v108 = 0;
        v288 = v255;
        v289 = v154;
        sub_1B03949FC(&v288, &v292, &v291, &v290);
        _os_log_impl(&dword_1B0389000, v157, v158, "[%.*hhx-%.*X] Credentials: Missing username/password.", v120, 0x17u);
        v107 = 0;
        sub_1B03998A8(v121, 0, v118);
        sub_1B03998A8(v122, v107, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v157);
    (*(v269 + 8))(v273, v268);
    memset(v293, 0, 40);
    v293[5] = 0x3000000000000000;
    v293[6] = 0;
    v293[7] = 0x1000000000000000;
    v293[8] = 0;
    v293[9] = 0x3000000000000000;
    memcpy(v301, v293, sizeof(v301));
    v265(v301);
  }

  else
  {
    v183 = v299;
    memcpy(v287, v299, sizeof(v287));
    v286 = v299;
    (*(v269 + 16))(v275, v267, v268);
    sub_1B0394784(v267, v264);
    sub_1B0394784(v264, v262);
    sub_1B03F4FD0(v264, v260);
    v12 = &v262[*(v258 + 20)];
    v185 = *v12;
    v186 = *(v12 + 1);
    sub_1B039480C(v262);
    v184 = 24;
    v196 = 7;
    v13 = swift_allocObject();
    v14 = v186;
    v189 = v13;
    *(v13 + 16) = v185;
    *(v13 + 20) = v14;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v15 = swift_allocObject();
    v16 = v186;
    v187 = v15;
    *(v15 + 16) = v185;
    *(v15 + 20) = v16;

    v195 = 32;
    v17 = swift_allocObject();
    v18 = v187;
    v197 = v17;
    *(v17 + 16) = v216;
    *(v17 + 24) = v18;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v260);
    v214 = sub_1B0E43988();
    v215 = sub_1B0E45908();
    v193 = 17;
    v199 = swift_allocObject();
    v191 = 16;
    *(v199 + 16) = 16;
    v200 = swift_allocObject();
    v194 = 4;
    *(v200 + 16) = 4;
    v19 = swift_allocObject();
    v188 = v19;
    *(v19 + 16) = v217;
    *(v19 + 24) = 0;
    v20 = swift_allocObject();
    v21 = v188;
    v201 = v20;
    *(v20 + 16) = v218;
    *(v20 + 24) = v21;
    v202 = swift_allocObject();
    *(v202 + 16) = 0;
    v203 = swift_allocObject();
    *(v203 + 16) = 1;
    v22 = swift_allocObject();
    v23 = v189;
    v190 = v22;
    *(v22 + 16) = v219;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v190;
    v204 = v24;
    *(v24 + 16) = v220;
    *(v24 + 24) = v25;
    v205 = swift_allocObject();
    *(v205 + 16) = v191;
    v206 = swift_allocObject();
    *(v206 + 16) = v194;
    v26 = swift_allocObject();
    v192 = v26;
    *(v26 + 16) = v221;
    *(v26 + 24) = 0;
    v27 = swift_allocObject();
    v28 = v192;
    v207 = v27;
    *(v27 + 16) = v222;
    *(v27 + 24) = v28;
    v208 = swift_allocObject();
    *(v208 + 16) = 0;
    v209 = swift_allocObject();
    *(v209 + 16) = v194;
    v29 = swift_allocObject();
    v30 = v197;
    v198 = v29;
    *(v29 + 16) = v223;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v198;
    v211 = v31;
    *(v31 + 16) = v224;
    *(v31 + 24) = v32;
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v210 = sub_1B0E46A48();
    v212 = v33;

    v34 = v199;
    v35 = v212;
    *v212 = v225;
    v35[1] = v34;

    v36 = v200;
    v37 = v212;
    v212[2] = v226;
    v37[3] = v36;

    v38 = v201;
    v39 = v212;
    v212[4] = v227;
    v39[5] = v38;

    v40 = v202;
    v41 = v212;
    v212[6] = v228;
    v41[7] = v40;

    v42 = v203;
    v43 = v212;
    v212[8] = v229;
    v43[9] = v42;

    v44 = v204;
    v45 = v212;
    v212[10] = v230;
    v45[11] = v44;

    v46 = v205;
    v47 = v212;
    v212[12] = v231;
    v47[13] = v46;

    v48 = v206;
    v49 = v212;
    v212[14] = v232;
    v49[15] = v48;

    v50 = v207;
    v51 = v212;
    v212[16] = v233;
    v51[17] = v50;

    v52 = v208;
    v53 = v212;
    v212[18] = v234;
    v53[19] = v52;

    v54 = v209;
    v55 = v212;
    v212[20] = v235;
    v55[21] = v54;

    v56 = v211;
    v57 = v212;
    v212[22] = v236;
    v57[23] = v56;
    sub_1B0394964();

    if (os_log_type_enabled(v214, v215))
    {
      v58 = v256;
      v176 = sub_1B0E45D78();
      v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v175 = 0;
      v177 = sub_1B03949A8(0, v174, v174);
      v178 = sub_1B03949A8(v175, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v179 = &v283;
      v283 = v176;
      v180 = &v282;
      v282 = v177;
      v181 = &v281;
      v281 = v178;
      sub_1B0394A48(0, &v283);
      sub_1B0394A48(4, v179);
      v279 = v225;
      v280 = v199;
      sub_1B03949FC(&v279, v179, v180, v181);
      v182 = v58;
      if (v58)
      {

        __break(1u);
      }

      else
      {
        v279 = v226;
        v280 = v200;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v173 = 0;
        v279 = v227;
        v280 = v201;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v172 = 0;
        v279 = v228;
        v280 = v202;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v171 = 0;
        v279 = v229;
        v280 = v203;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v170 = 0;
        v279 = v230;
        v280 = v204;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v169 = 0;
        v279 = v231;
        v280 = v205;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v168 = 0;
        v279 = v232;
        v280 = v206;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v167 = 0;
        v279 = v233;
        v280 = v207;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v166 = 0;
        v279 = v234;
        v280 = v208;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v165 = 0;
        v279 = v235;
        v280 = v209;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        v164 = 0;
        v279 = v236;
        v280 = v211;
        sub_1B03949FC(&v279, &v283, &v282, &v281);
        _os_log_impl(&dword_1B0389000, v214, v215, "[%.*hhx-%.*X] Credentials: Adding Apple Token auth.", v176, 0x17u);
        v163 = 0;
        sub_1B03998A8(v177, 0, v174);
        sub_1B03998A8(v178, v163, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v214);
    (*(v269 + 8))(v275, v268);
    v162 = v287;
    sub_1B069506C(v287, v284);
    v161 = v285;
    v159 = 80;
    memcpy(v285, v162, sizeof(v285));
    v160 = __dst;
    memcpy(__dst, v285, sizeof(__dst));
    v265(__dst);
    sub_1B070B568(v161);
    sub_1B070BB30(v162);
  }
}

void *sub_1B0702DB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v252 = a2;
  v288 = a1;
  v253 = sub_1B039BBE8;
  v254 = sub_1B0394C30;
  v255 = sub_1B0394C24;
  v256 = sub_1B039BA2C;
  v257 = sub_1B039BA88;
  v258 = sub_1B039BB94;
  v259 = sub_1B0394C24;
  v260 = sub_1B039BBA0;
  v261 = sub_1B039BC08;
  v262 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0399178;
  v265 = sub_1B0398F5C;
  v266 = sub_1B0398F5C;
  v267 = sub_1B039BA94;
  v268 = sub_1B0398F5C;
  v269 = sub_1B0398F5C;
  v270 = sub_1B0399178;
  v271 = sub_1B0398F5C;
  v272 = sub_1B0398F5C;
  v273 = sub_1B03991EC;
  v326 = *MEMORY[0x1E69E9840];
  v303 = 0;
  v302 = 0;
  v274 = 0;
  v298 = 0;
  v320 = 0;
  v321 = 0;
  v318 = 0;
  v319 = 0;
  v296 = 0;
  v313 = 0;
  v314 = 0;
  v309 = 0;
  v310 = 0;
  v304 = 0;
  v305 = 0;
  v282 = 0;
  v275 = _s6LoggerVMa(0);
  v276 = (*(*(v275 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v277 = &v72 - v276;
  v278 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v279 = &v72 - v278;
  v280 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v281 = &v72 - v280;
  v283 = sub_1B0E439A8();
  v284 = *(v283 - 8);
  v285 = v283 - 8;
  v286 = (*(v284 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v282);
  v287 = &v72 - v286;
  v289 = sub_1B0E44B68();
  v290 = *(v289 - 8);
  v291 = v289 - 8;
  v292 = (*(v290 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v294);
  v293 = &v72 - v292;
  v303 = v6;
  v302 = v7;
  MEMORY[0x1E69E5928](v7);
  objc_opt_self();
  v295 = swift_dynamicCastObjCClass();
  if (v295)
  {
    v251 = v295;
  }

  else
  {
    MEMORY[0x1E69E5920](v294);
    v251 = 0;
  }

  v250 = v251;
  if (v251)
  {
    v249 = v250;
    v246 = v250;
    v298 = v250;
    v8 = [v250 personID];
    v247 = v8;
    if (v8)
    {
      v245 = v247;
      v240 = v247;
      v241 = sub_1B0E44AD8();
      v242 = v9;
      MEMORY[0x1E69E5920](v240);
      v243 = v241;
      v244 = v242;
    }

    else
    {
      v243 = 0;
      v244 = 0;
    }

    v238 = v244;
    v239 = v243;
    if (v244)
    {
      v236 = v239;
      v237 = v238;
      v231 = v238;
      v230 = v239;
      sub_1B0E44B48();
      sub_1B0394868();
      v232 = sub_1B0E44AE8();
      v233 = v10;
      (*(v290 + 8))(v293, v289);

      v234 = v232;
      v235 = v233;
    }

    else
    {
      v234 = 0;
      v235 = 0xF000000000000000;
    }

    v228 = v235;
    v229 = v234;
    if ((v235 & 0xF000000000000000) == 0xF000000000000000)
    {
      MEMORY[0x1E69E5920](v246);
      v248 = v274;
    }

    else
    {
      v226 = v229;
      v227 = v228;
      v223 = v228;
      v224 = v229;
      v320 = v229;
      v321 = v228;
      v11 = [v246 authToken];
      v225 = v11;
      if (v11)
      {
        v222 = v225;
        v217 = v225;
        v218 = sub_1B0E44AD8();
        v219 = v12;
        MEMORY[0x1E69E5920](v217);
        v220 = v218;
        v221 = v219;
      }

      else
      {
        v220 = 0;
        v221 = 0;
      }

      v215 = v221;
      v216 = v220;
      if (v221)
      {
        v213 = v216;
        v214 = v215;
        v208 = v215;
        v207 = v216;
        sub_1B0E44B48();
        sub_1B0394868();
        v209 = sub_1B0E44AE8();
        v210 = v13;
        (*(v290 + 8))(v293, v289);

        v211 = v209;
        v212 = v210;
      }

      else
      {
        v211 = 0;
        v212 = 0xF000000000000000;
      }

      v205 = v212;
      v206 = v211;
      if ((v212 & 0xF000000000000000) == 0xF000000000000000)
      {
        sub_1B0391D50(v224, v223);
        MEMORY[0x1E69E5920](v246);
        v248 = v274;
      }

      else
      {
        v203 = v206;
        v204 = v205;
        v199 = v205;
        v200 = v206;
        v318 = v206;
        v319 = v205;
        v317 = 0;
        v297 = 0;
        v202 = [v246 anisetteDataWithError_];
        v201 = v297;
        MEMORY[0x1E69E5928](v297);
        v14 = v317;
        v317 = v201;
        MEMORY[0x1E69E5920](v14);
        if (v202)
        {
          v198 = v202;
          v196 = v202;
          v197 = v274;
        }

        else
        {
          v72 = v317;
          v73 = sub_1B0E42CD8();
          MEMORY[0x1E69E5920](v72);
          swift_willThrow();
          v74 = 0;

          v196 = 0;
          v197 = v74;
        }

        v194 = v197;
        v195 = v196;
        if (v196)
        {
          v193 = v195;
          v191 = v195;
          v296 = v195;
          v15 = [v195 machineID];
          v192 = v15;
          if (v15)
          {
            v190 = v192;
            v185 = v192;
            v186 = sub_1B0E44AD8();
            v187 = v16;
            MEMORY[0x1E69E5920](v185);
            v188 = v186;
            v189 = v187;
          }

          else
          {
            v188 = 0;
            v189 = 0;
          }

          v315 = v188;
          v316 = v189;
          if (v189)
          {
            v178 = &v315;
            v179 = v315;
            v180 = v316;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03B1198(v178);
            sub_1B0E44B48();
            sub_1B0394868();
            v181 = sub_1B0E44AE8();
            v182 = v17;
            (*(v290 + 8))(v293, v289);

            v183 = v181;
            v184 = v182;
          }

          else
          {
            sub_1B03B1198(&v315);
            v183 = 0;
            v184 = 0xF000000000000000;
          }

          v176 = v184;
          v177 = v183;
          if ((v184 & 0xF000000000000000) == 0xF000000000000000)
          {
            MEMORY[0x1E69E5920](v191);
            sub_1B0391D50(v200, v199);
            sub_1B0391D50(v224, v223);
            MEMORY[0x1E69E5920](v246);
            v248 = v194;
          }

          else
          {
            v174 = v177;
            v175 = v176;
            v171 = v176;
            v172 = v177;
            v313 = v177;
            v314 = v176;
            v18 = [v191 oneTimePassword];
            v173 = v18;
            if (v18)
            {
              v170 = v173;
              v165 = v173;
              v166 = sub_1B0E44AD8();
              v167 = v19;
              MEMORY[0x1E69E5920](v165);
              v168 = v166;
              v169 = v167;
            }

            else
            {
              v168 = 0;
              v169 = 0;
            }

            v311 = v168;
            v312 = v169;
            if (v169)
            {
              v158 = &v311;
              v159 = v311;
              v160 = v312;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B03B1198(v158);
              sub_1B0E44B48();
              sub_1B0394868();
              v161 = sub_1B0E44AE8();
              v162 = v20;
              (*(v290 + 8))(v293, v289);

              v163 = v161;
              v164 = v162;
            }

            else
            {
              sub_1B03B1198(&v311);
              v163 = 0;
              v164 = 0xF000000000000000;
            }

            v156 = v164;
            v157 = v163;
            if ((v164 & 0xF000000000000000) == 0xF000000000000000)
            {
              sub_1B0391D50(v172, v171);
              MEMORY[0x1E69E5920](v191);
              sub_1B0391D50(v200, v199);
              sub_1B0391D50(v224, v223);
              MEMORY[0x1E69E5920](v246);
              v248 = v194;
            }

            else
            {
              v154 = v157;
              v155 = v156;
              v151 = v156;
              v152 = v157;
              v309 = v157;
              v310 = v156;
              v21 = [v246 clientInfo];
              v153 = v21;
              if (v21)
              {
                v150 = v153;
                v145 = v153;
                v146 = sub_1B0E44AD8();
                v147 = v22;
                MEMORY[0x1E69E5920](v145);
                v148 = v146;
                v149 = v147;
              }

              else
              {
                v148 = 0;
                v149 = 0;
              }

              v143 = v149;
              v144 = v148;
              if (v149)
              {
                v141 = v144;
                v142 = v143;
                v136 = v143;
                v135 = v144;
                sub_1B0E44B48();
                sub_1B0394868();
                v137 = sub_1B0E44AE8();
                v138 = v23;
                (*(v290 + 8))(v293, v289);

                v139 = v137;
                v140 = v138;
              }

              else
              {
                v139 = 0;
                v140 = 0xF000000000000000;
              }

              v133 = v140;
              v134 = v139;
              if ((v140 & 0xF000000000000000) != 0xF000000000000000)
              {
                v131 = v134;
                v132 = v133;
                v304 = v134;
                v305 = v133;
                v306[0] = v224;
                v306[1] = v223;
                v306[2] = v200;
                v306[3] = v199;
                v306[4] = v172;
                v306[5] = v171;
                v306[6] = v152;
                v306[7] = v151;
                v306[8] = v134;
                v306[9] = v133;
                v128 = v307;
                v130 = 80;
                memcpy(v307, v306, sizeof(v307));
                v307[5] &= 0xCFFFFFFFFFFFFFFFLL;
                v307[7] = v307[7] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
                v307[9] &= 0xCFFFFFFFFFFFFFFFLL;
                v129 = v308;
                memcpy(v308, v307, sizeof(v308));
                MEMORY[0x1E69E5920](v191);
                MEMORY[0x1E69E5920](v246);
                memcpy(__dst, v129, v130);
                return memcpy(v252, __dst, 0x50uLL);
              }

              sub_1B0391D50(v152, v151);
              sub_1B0391D50(v172, v171);
              MEMORY[0x1E69E5920](v191);
              sub_1B0391D50(v200, v199);
              sub_1B0391D50(v224, v223);
              MEMORY[0x1E69E5920](v246);
              v248 = v194;
            }
          }
        }

        else
        {
          sub_1B0391D50(v200, v199);
          sub_1B0391D50(v224, v223);
          MEMORY[0x1E69E5920](v246);
          v248 = v194;
        }
      }
    }
  }

  else
  {
    v248 = v274;
  }

  v95 = v248;
  (*(v284 + 16))(v287, v288, v283);
  sub_1B0394784(v288, v281);
  sub_1B0394784(v281, v279);
  sub_1B03F4FD0(v281, v277);
  v24 = (v279 + *(v275 + 20));
  v97 = *v24;
  v98 = *(v24 + 1);
  sub_1B039480C(v279);
  v96 = 24;
  v108 = 7;
  v25 = swift_allocObject();
  v26 = v98;
  v101 = v25;
  *(v25 + 16) = v97;
  *(v25 + 20) = v26;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v27 = swift_allocObject();
  v28 = v98;
  v99 = v27;
  *(v27 + 16) = v97;
  *(v27 + 20) = v28;

  v107 = 32;
  v29 = swift_allocObject();
  v30 = v99;
  v109 = v29;
  *(v29 + 16) = v253;
  *(v29 + 24) = v30;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v277);
  v126 = sub_1B0E43988();
  v127 = sub_1B0E458E8();
  v105 = 17;
  v111 = swift_allocObject();
  v103 = 16;
  *(v111 + 16) = 16;
  v112 = swift_allocObject();
  v106 = 4;
  *(v112 + 16) = 4;
  v31 = swift_allocObject();
  v100 = v31;
  *(v31 + 16) = v254;
  *(v31 + 24) = 0;
  v32 = swift_allocObject();
  v33 = v100;
  v113 = v32;
  *(v32 + 16) = v255;
  *(v32 + 24) = v33;
  v114 = swift_allocObject();
  *(v114 + 16) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = 1;
  v34 = swift_allocObject();
  v35 = v101;
  v102 = v34;
  *(v34 + 16) = v256;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v102;
  v116 = v36;
  *(v36 + 16) = v257;
  *(v36 + 24) = v37;
  v117 = swift_allocObject();
  *(v117 + 16) = v103;
  v118 = swift_allocObject();
  *(v118 + 16) = v106;
  v38 = swift_allocObject();
  v104 = v38;
  *(v38 + 16) = v258;
  *(v38 + 24) = 0;
  v39 = swift_allocObject();
  v40 = v104;
  v119 = v39;
  *(v39 + 16) = v259;
  *(v39 + 24) = v40;
  v120 = swift_allocObject();
  *(v120 + 16) = 0;
  v121 = swift_allocObject();
  *(v121 + 16) = v106;
  v41 = swift_allocObject();
  v42 = v109;
  v110 = v41;
  *(v41 + 16) = v260;
  *(v41 + 24) = v42;
  v43 = swift_allocObject();
  v44 = v110;
  v123 = v43;
  *(v43 + 16) = v261;
  *(v43 + 24) = v44;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v122 = sub_1B0E46A48();
  v124 = v45;

  v46 = v111;
  v47 = v124;
  *v124 = v262;
  v47[1] = v46;

  v48 = v112;
  v49 = v124;
  v124[2] = v263;
  v49[3] = v48;

  v50 = v113;
  v51 = v124;
  v124[4] = v264;
  v51[5] = v50;

  v52 = v114;
  v53 = v124;
  v124[6] = v265;
  v53[7] = v52;

  v54 = v115;
  v55 = v124;
  v124[8] = v266;
  v55[9] = v54;

  v56 = v116;
  v57 = v124;
  v124[10] = v267;
  v57[11] = v56;

  v58 = v117;
  v59 = v124;
  v124[12] = v268;
  v59[13] = v58;

  v60 = v118;
  v61 = v124;
  v124[14] = v269;
  v61[15] = v60;

  v62 = v119;
  v63 = v124;
  v124[16] = v270;
  v63[17] = v62;

  v64 = v120;
  v65 = v124;
  v124[18] = v271;
  v65[19] = v64;

  v66 = v121;
  v67 = v124;
  v124[20] = v272;
  v67[21] = v66;

  v68 = v123;
  v69 = v124;
  v124[22] = v273;
  v69[23] = v68;
  sub_1B0394964();

  if (os_log_type_enabled(v126, v127))
  {
    v70 = v95;
    v88 = sub_1B0E45D78();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v87 = 0;
    v89 = sub_1B03949A8(0, v86, v86);
    v90 = sub_1B03949A8(v87, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v91 = &v301;
    v301 = v88;
    v92 = &v323;
    v323 = v89;
    v93 = &v322;
    v322 = v90;
    sub_1B0394A48(0, &v301);
    sub_1B0394A48(4, v91);
    v299 = v262;
    v300 = v111;
    sub_1B03949FC(&v299, v91, v92, v93);
    v94 = v70;
    if (v70)
    {

      __break(1u);
    }

    else
    {
      v299 = v263;
      v300 = v112;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v85 = 0;
      v299 = v264;
      v300 = v113;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v84 = 0;
      v299 = v265;
      v300 = v114;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v83 = 0;
      v299 = v266;
      v300 = v115;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v82 = 0;
      v299 = v267;
      v300 = v116;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v81 = 0;
      v299 = v268;
      v300 = v117;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v80 = 0;
      v299 = v269;
      v300 = v118;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v79 = 0;
      v299 = v270;
      v300 = v119;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v78 = 0;
      v299 = v271;
      v300 = v120;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v77 = 0;
      v299 = v272;
      v300 = v121;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      v76 = 0;
      v299 = v273;
      v300 = v123;
      sub_1B03949FC(&v299, &v301, &v323, &v322);
      _os_log_impl(&dword_1B0389000, v126, v127, "[%.*hhx-%.*X] Credentials: Missing details for using Apple Token auth.", v88, 0x17u);
      v75 = 0;
      sub_1B03998A8(v89, 0, v86);
      sub_1B03998A8(v90, v75, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v126);
  (*(v284 + 8))(v287, v283);
  memset(__src, 0, 40);
  __src[5] = 0x3000000000000000;
  __src[6] = 0;
  __src[7] = 0x3000000000000000;
  __src[8] = 0;
  __src[9] = 0x3000000000000000;
  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(v252, __dst, 0x50uLL);
}

uint64_t sub_1B0704918(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6)
{
  v158 = a1;
  v164 = a2;
  v154 = a3;
  v155 = a4;
  v156 = a5;
  v157 = a6;
  v124 = sub_1B039BBE8;
  v125 = sub_1B0394C30;
  v126 = sub_1B0394C24;
  v127 = sub_1B039BA2C;
  v128 = sub_1B039BA88;
  v129 = sub_1B039BB94;
  v130 = sub_1B0394C24;
  v131 = sub_1B039BBA0;
  v132 = sub_1B039BC08;
  v133 = sub_1B0398F5C;
  v134 = sub_1B0398F5C;
  v135 = sub_1B0399178;
  v136 = sub_1B0398F5C;
  v137 = sub_1B0398F5C;
  v138 = sub_1B039BA94;
  v139 = sub_1B0398F5C;
  v140 = sub_1B0398F5C;
  v141 = sub_1B0399178;
  v142 = sub_1B0398F5C;
  v143 = sub_1B0398F5C;
  v144 = sub_1B03991EC;
  v179 = 0;
  v180 = 0;
  v178 = 0;
  v177 = 0;
  v175 = 0;
  v176 = 0;
  v145 = 0;
  v165 = 0;
  v166 = 0;
  v146 = 0;
  v147 = _s6LoggerVMa(0);
  v148 = (*(*(v147 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v149 = &v64 - v148;
  v150 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v151 = &v64 - v150;
  v152 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v153 = &v64 - v152;
  v159 = sub_1B0E439A8();
  v160 = *(v159 - 8);
  v161 = v159 - 8;
  v162 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v158);
  v163 = &v64 - v162;
  v179 = v10;
  v180 = v11;
  v178 = v12;
  v177 = v13;
  v175 = v14;
  v176 = v15;
  sub_1B070E18C(v10, v11);
  if ((v164 & 0xF000000000000000) == 0xF000000000000000)
  {
    (*(v160 + 16))(v163, v155, v159);
    sub_1B0394784(v155, v153);
    sub_1B0394784(v153, v151);
    sub_1B03F4FD0(v153, v149);
    v17 = (v151 + *(v147 + 20));
    v86 = *v17;
    v87 = *(v17 + 1);
    sub_1B039480C(v151);
    v85 = 24;
    v97 = 7;
    v18 = swift_allocObject();
    v19 = v87;
    v90 = v18;
    *(v18 + 16) = v86;
    *(v18 + 20) = v19;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v20 = swift_allocObject();
    v21 = v87;
    v88 = v20;
    *(v20 + 16) = v86;
    *(v20 + 20) = v21;

    v96 = 32;
    v22 = swift_allocObject();
    v23 = v88;
    v98 = v22;
    *(v22 + 16) = v124;
    *(v22 + 24) = v23;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v149);
    v115 = sub_1B0E43988();
    v116 = sub_1B0E458E8();
    v94 = 17;
    v100 = swift_allocObject();
    v92 = 16;
    *(v100 + 16) = 16;
    v101 = swift_allocObject();
    v95 = 4;
    *(v101 + 16) = 4;
    v24 = swift_allocObject();
    v89 = v24;
    *(v24 + 16) = v125;
    *(v24 + 24) = 0;
    v25 = swift_allocObject();
    v26 = v89;
    v102 = v25;
    *(v25 + 16) = v126;
    *(v25 + 24) = v26;
    v103 = swift_allocObject();
    *(v103 + 16) = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = 1;
    v27 = swift_allocObject();
    v28 = v90;
    v91 = v27;
    *(v27 + 16) = v127;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v91;
    v105 = v29;
    *(v29 + 16) = v128;
    *(v29 + 24) = v30;
    v106 = swift_allocObject();
    *(v106 + 16) = v92;
    v107 = swift_allocObject();
    *(v107 + 16) = v95;
    v31 = swift_allocObject();
    v93 = v31;
    *(v31 + 16) = v129;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v93;
    v108 = v32;
    *(v32 + 16) = v130;
    *(v32 + 24) = v33;
    v109 = swift_allocObject();
    *(v109 + 16) = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v95;
    v34 = swift_allocObject();
    v35 = v98;
    v99 = v34;
    *(v34 + 16) = v131;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v99;
    v112 = v36;
    *(v36 + 16) = v132;
    *(v36 + 24) = v37;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v111 = sub_1B0E46A48();
    v113 = v38;

    v39 = v100;
    v40 = v113;
    *v113 = v133;
    v40[1] = v39;

    v41 = v101;
    v42 = v113;
    v113[2] = v134;
    v42[3] = v41;

    v43 = v102;
    v44 = v113;
    v113[4] = v135;
    v44[5] = v43;

    v45 = v103;
    v46 = v113;
    v113[6] = v136;
    v46[7] = v45;

    v47 = v104;
    v48 = v113;
    v113[8] = v137;
    v48[9] = v47;

    v49 = v105;
    v50 = v113;
    v113[10] = v138;
    v50[11] = v49;

    v51 = v106;
    v52 = v113;
    v113[12] = v139;
    v52[13] = v51;

    v53 = v107;
    v54 = v113;
    v113[14] = v140;
    v54[15] = v53;

    v55 = v108;
    v56 = v113;
    v113[16] = v141;
    v56[17] = v55;

    v57 = v109;
    v58 = v113;
    v113[18] = v142;
    v58[19] = v57;

    v59 = v110;
    v60 = v113;
    v113[20] = v143;
    v60[21] = v59;

    v61 = v112;
    v62 = v113;
    v113[22] = v144;
    v62[23] = v61;
    sub_1B0394964();

    if (os_log_type_enabled(v115, v116))
    {
      v63 = v145;
      v78 = sub_1B0E45D78();
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v77 = 0;
      v79 = sub_1B03949A8(0, v76, v76);
      v80 = sub_1B03949A8(v77, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v81 = &v173;
      v173 = v78;
      v82 = &v172;
      v172 = v79;
      v83 = &v171;
      v171 = v80;
      sub_1B0394A48(0, &v173);
      sub_1B0394A48(4, v81);
      v169 = v133;
      v170 = v100;
      sub_1B03949FC(&v169, v81, v82, v83);
      v84 = v63;
      if (v63)
      {

        __break(1u);
      }

      else
      {
        v169 = v134;
        v170 = v101;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v75 = 0;
        v169 = v135;
        v170 = v102;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v74 = 0;
        v169 = v136;
        v170 = v103;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v73 = 0;
        v169 = v137;
        v170 = v104;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v72 = 0;
        v169 = v138;
        v170 = v105;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v71 = 0;
        v169 = v139;
        v170 = v106;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v70 = 0;
        v169 = v140;
        v170 = v107;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v69 = 0;
        v169 = v141;
        v170 = v108;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v68 = 0;
        v169 = v142;
        v170 = v109;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v67 = 0;
        v169 = v143;
        v170 = v110;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        v66 = 0;
        v169 = v144;
        v170 = v112;
        sub_1B03949FC(&v169, &v173, &v172, &v171);
        _os_log_impl(&dword_1B0389000, v115, v116, "[%.*hhx-%.*X] Credentials: Unable to get Apple Token 2.", v78, 0x17u);
        v65 = 0;
        sub_1B03998A8(v79, 0, v76);
        sub_1B03998A8(v80, v65, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v115);
    (*(v160 + 8))(v163, v159);

    memset(v174, 0, 40);
    v174[5] = 0x3000000000000000;
    v174[6] = 0;
    v174[7] = 0x1000000000000000;
    v174[8] = 0;
    v174[9] = 0x3000000000000000;
    v64 = v182;
    memcpy(v182, v174, sizeof(v182));
    v156(v182);
  }

  else
  {
    v122 = v158;
    v123 = v164;
    v121 = v164;
    v120 = v158;
    v165 = v158;
    v166 = v164;

    sub_1B03B2000(v120, v121);
    v167[0] = v120;
    v167[1] = v121;
    v167[5] &= 0xCFFFFFFFFFFFFFFFLL;
    v167[7] &= 0xCFFFFFFFFFFFFFFFLL;
    v167[9] = v167[9] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
    v119 = v168;
    v117 = 80;
    memcpy(v168, v167, sizeof(v168));
    v118 = __dst;
    memcpy(__dst, v168, sizeof(__dst));
    v156(__dst);
    sub_1B070B568(v119);

    return sub_1B0391D50(v120, v121);
  }
}

uint64_t sub_1B0705908(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    v6 = sub_1B0E42F38();
    v7 = v3;
    MEMORY[0x1E69E5920](a2);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v11(v8, v9);

  sub_1B070E144(v8, v9);
}

void sub_1B0705A4C(uint64_t a1@<X8>)
{
  v19 = a1;
  v31 = 0;
  v20 = sub_1B0E43108();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v3 - v23;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v3 - v25;
  v31 = v1;
  MEMORY[0x1E69E5928](v1);
  v28 = [v27 oauth2Token];
  if (v28)
  {
    v18 = v28;
    v13 = v28;
    v14 = sub_1B0E44AD8();
    v15 = v2;
    MEMORY[0x1E69E5920](v13);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v12 = v17;
  v11 = v16;
  MEMORY[0x1E69E5920](v27);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30[0] = v11;
  v30[1] = v12;
  v29[0] = v11;
  v29[1] = v12;
  v10 = v12 != 0;
  v9 = v10;
  sub_1B03B1198(v29);
  if (v9)
  {
    v8 = [v27 credentialExpiryDate];
    if (v8)
    {
      v7 = v8;
      v6 = v8;
      sub_1B0E430D8();
      (*(v21 + 32))(v26, v24, v20);
      (*(v21 + 56))(v26, 0, 1, v20);
      MEMORY[0x1E69E5920](v6);
    }

    else
    {
      (*(v21 + 56))(v26, 1, 1, v20);
    }

    v4 = *(v21 + 48);
    v5 = v21 + 48;
    if (v4(v26, 1, v20) == 1)
    {
      sub_1B0E43038();
      if (v4(v26, 1, v20) != 1)
      {
        sub_1B06B97A8(v26);
      }
    }

    else
    {
      (*(v21 + 32))(v19, v26, v20);
    }

    sub_1B03B1198(v30);
  }

  else
  {
    sub_1B0E43038();
    sub_1B03B1198(v30);
  }
}

uint64_t sub_1B0705E38(double a1)
{
  v2 = -a1;
  if (((COERCE_UNSIGNED_INT64(-a1) >> 52) & 0x7FF) == 0x7FF)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 <= -9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 >= 9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return v2;
}

uint64_t sub_1B0705FD4(double a1)
{
  if (((*&a1 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (a1 <= -9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (a1 >= 9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return a1;
}

uint64_t sub_1B070616C(uint64_t a1)
{
  v10 = a1;
  v23 = 0;
  v22 = 0;
  v11 = sub_1B0E43108();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v15 = v6 - v14;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v17 = v6 - v16;
  v23 = v4;
  v22 = v1;
  v19 = sub_1B06F3D18(v4);
  v18 = &v21;
  v21 = 2;
  sub_1B06F6420();
  v20 = sub_1B0E45528();

  if (v20)
  {
    sub_1B0705A4C(v17);
    sub_1B0E43088();
    sub_1B070BB90();
    v8 = sub_1B0E44958();
    v7 = *(v12 + 8);
    v6[1] = v12 + 8;
    v7(v15, v11);
    v7(v17, v11);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B0706354(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v411 = a1;
  v400 = a2;
  v396 = a3;
  v397 = a4;
  v398 = a5;
  v399 = a6;
  v323 = sub_1B039BBE8;
  v324 = sub_1B0394C30;
  v325 = sub_1B0394C24;
  v326 = sub_1B039BA2C;
  v327 = sub_1B039BA88;
  v328 = sub_1B039BB94;
  v329 = sub_1B0394C24;
  v330 = sub_1B039BBA0;
  v331 = sub_1B039BC08;
  v332 = sub_1B070B2F4;
  v333 = sub_1B070B324;
  v334 = sub_1B0398F5C;
  v335 = sub_1B0398F5C;
  v336 = sub_1B0399178;
  v337 = sub_1B0398F5C;
  v338 = sub_1B0398F5C;
  v339 = sub_1B039BA94;
  v340 = sub_1B0398F5C;
  v341 = sub_1B0398F5C;
  v342 = sub_1B0399178;
  v343 = sub_1B0398F5C;
  v344 = sub_1B0398F5C;
  v345 = sub_1B03991EC;
  v346 = sub_1B0398F5C;
  v347 = sub_1B0398F5C;
  v348 = sub_1B070B4B4;
  v349 = sub_1B039BBE8;
  v350 = sub_1B0394C24;
  v351 = sub_1B039BA2C;
  v352 = sub_1B039BA88;
  v353 = sub_1B0394C24;
  v354 = sub_1B039BBA0;
  v355 = sub_1B039BC08;
  v356 = sub_1B0398F5C;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0399178;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0398F5C;
  v361 = sub_1B039BA94;
  v362 = sub_1B0398F5C;
  v363 = sub_1B0398F5C;
  v364 = sub_1B0399178;
  v365 = sub_1B0398F5C;
  v366 = sub_1B0398F5C;
  v367 = sub_1B03991EC;
  v368 = sub_1B039BBE8;
  v369 = sub_1B0394C24;
  v370 = sub_1B039BA2C;
  v371 = sub_1B039BA88;
  v372 = sub_1B0394C24;
  v373 = sub_1B039BBA0;
  v374 = sub_1B039BC08;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0398F5C;
  v377 = sub_1B0399178;
  v378 = sub_1B0398F5C;
  v379 = sub_1B0398F5C;
  v380 = sub_1B039BA94;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0398F5C;
  v383 = sub_1B0399178;
  v384 = sub_1B0398F5C;
  v385 = sub_1B0398F5C;
  v386 = sub_1B03991EC;
  v433 = 0;
  v432 = 0;
  v431 = 0;
  v429 = 0;
  v430 = 0;
  v428 = 0;
  v427 = 0;
  v387 = 0;
  v388 = 0;
  v389 = _s6LoggerVMa(0);
  v390 = (*(*(v389 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v391 = v171 - v390;
  v392 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v393 = v171 - v392;
  v394 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v395 = v171 - v394;
  v401 = sub_1B0E439A8();
  v402 = *(v401 - 8);
  v403 = v401 - 8;
  v407 = *(v402 + 64);
  v404 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v400);
  v405 = v171 - v404;
  v406 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v408 = v171 - v406;
  v409 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v410 = v171 - v409;
  v433 = v12;
  v432 = v13;
  v431 = v14;
  v429 = v15;
  v430 = v16;
  v428 = v17;
  MEMORY[0x1E69E5928](v13);
  if (v411)
  {
    if (v411 == 1)
    {
      if (v400)
      {
        v270 = v400;
        v112 = v405;
        v184 = v400;
        MEMORY[0x1E69E5928](v400);
        v427 = v184;
        (*(v402 + 16))(v112, v396, v401);
        sub_1B0394784(v396, v395);
        sub_1B0394784(v395, v393);
        sub_1B03F4FD0(v395, v391);
        v113 = (v393 + *(v389 + 20));
        v180 = *v113;
        v181 = *(v113 + 1);
        sub_1B039480C(v393);
        v183 = 24;
        v195 = 7;
        v114 = swift_allocObject();
        v115 = v181;
        v186 = v114;
        *(v114 + 16) = v180;
        *(v114 + 20) = v115;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v116 = swift_allocObject();
        v117 = v181;
        v182 = v116;
        *(v116 + 16) = v180;
        *(v116 + 20) = v117;

        v194 = 32;
        v118 = swift_allocObject();
        v119 = v182;
        v191 = v118;
        *(v118 + 16) = v323;
        *(v118 + 24) = v119;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v391);
        MEMORY[0x1E69E5928](v184);
        v196 = swift_allocObject();
        *(v196 + 16) = v184;
        v216 = sub_1B0E43988();
        v217 = sub_1B0E458E8();
        v193 = 17;
        v198 = swift_allocObject();
        v188 = 16;
        *(v198 + 16) = 16;
        v199 = swift_allocObject();
        v190 = 4;
        *(v199 + 16) = 4;
        v120 = swift_allocObject();
        v185 = v120;
        *(v120 + 16) = v324;
        *(v120 + 24) = 0;
        v121 = swift_allocObject();
        v122 = v185;
        v200 = v121;
        *(v121 + 16) = v325;
        *(v121 + 24) = v122;
        v201 = swift_allocObject();
        *(v201 + 16) = 0;
        v202 = swift_allocObject();
        *(v202 + 16) = 1;
        v123 = swift_allocObject();
        v124 = v186;
        v187 = v123;
        *(v123 + 16) = v326;
        *(v123 + 24) = v124;
        v125 = swift_allocObject();
        v126 = v187;
        v203 = v125;
        *(v125 + 16) = v327;
        *(v125 + 24) = v126;
        v204 = swift_allocObject();
        *(v204 + 16) = v188;
        v205 = swift_allocObject();
        *(v205 + 16) = v190;
        v127 = swift_allocObject();
        v189 = v127;
        *(v127 + 16) = v328;
        *(v127 + 24) = 0;
        v128 = swift_allocObject();
        v129 = v189;
        v206 = v128;
        *(v128 + 16) = v329;
        *(v128 + 24) = v129;
        v207 = swift_allocObject();
        *(v207 + 16) = 0;
        v208 = swift_allocObject();
        *(v208 + 16) = v190;
        v130 = swift_allocObject();
        v131 = v191;
        v192 = v130;
        *(v130 + 16) = v330;
        *(v130 + 24) = v131;
        v132 = swift_allocObject();
        v133 = v192;
        v209 = v132;
        *(v132 + 16) = v331;
        *(v132 + 24) = v133;
        v210 = swift_allocObject();
        *(v210 + 16) = 64;
        v211 = swift_allocObject();
        *(v211 + 16) = 8;
        v134 = swift_allocObject();
        v135 = v196;
        v197 = v134;
        *(v134 + 16) = v332;
        *(v134 + 24) = v135;
        v136 = swift_allocObject();
        v137 = v197;
        v213 = v136;
        *(v136 + 16) = v333;
        *(v136 + 24) = v137;
        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v212 = sub_1B0E46A48();
        v214 = v138;

        v139 = v198;
        v140 = v214;
        *v214 = v334;
        v140[1] = v139;

        v141 = v199;
        v142 = v214;
        v214[2] = v335;
        v142[3] = v141;

        v143 = v200;
        v144 = v214;
        v214[4] = v336;
        v144[5] = v143;

        v145 = v201;
        v146 = v214;
        v214[6] = v337;
        v146[7] = v145;

        v147 = v202;
        v148 = v214;
        v214[8] = v338;
        v148[9] = v147;

        v149 = v203;
        v150 = v214;
        v214[10] = v339;
        v150[11] = v149;

        v151 = v204;
        v152 = v214;
        v214[12] = v340;
        v152[13] = v151;

        v153 = v205;
        v154 = v214;
        v214[14] = v341;
        v154[15] = v153;

        v155 = v206;
        v156 = v214;
        v214[16] = v342;
        v156[17] = v155;

        v157 = v207;
        v158 = v214;
        v214[18] = v343;
        v158[19] = v157;

        v159 = v208;
        v160 = v214;
        v214[20] = v344;
        v160[21] = v159;

        v161 = v209;
        v162 = v214;
        v214[22] = v345;
        v162[23] = v161;

        v163 = v210;
        v164 = v214;
        v214[24] = v346;
        v164[25] = v163;

        v165 = v211;
        v166 = v214;
        v214[26] = v347;
        v166[27] = v165;

        v167 = v213;
        v168 = v214;
        v214[28] = v348;
        v168[29] = v167;
        sub_1B0394964();

        if (os_log_type_enabled(v216, v217))
        {
          v169 = v387;
          v173 = sub_1B0E45D78();
          v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v174 = sub_1B03949A8(1, v172, v172);
          v175 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v176 = &v426;
          v426 = v173;
          v177 = &v425;
          v425 = v174;
          v178 = &v424;
          v424 = v175;
          sub_1B0394A48(2, &v426);
          sub_1B0394A48(5, v176);
          v422 = v334;
          v423 = v198;
          sub_1B03949FC(&v422, v176, v177, v178);
          v179 = v169;
          if (v169)
          {

            __break(1u);
          }

          else
          {
            v422 = v335;
            v423 = v199;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[13] = 0;
            v422 = v336;
            v423 = v200;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[12] = 0;
            v422 = v337;
            v423 = v201;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[11] = 0;
            v422 = v338;
            v423 = v202;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[10] = 0;
            v422 = v339;
            v423 = v203;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[9] = 0;
            v422 = v340;
            v423 = v204;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[8] = 0;
            v422 = v341;
            v423 = v205;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[7] = 0;
            v422 = v342;
            v423 = v206;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[6] = 0;
            v422 = v343;
            v423 = v207;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[5] = 0;
            v422 = v344;
            v423 = v208;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[4] = 0;
            v422 = v345;
            v423 = v209;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[3] = 0;
            v422 = v346;
            v423 = v210;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[2] = 0;
            v422 = v347;
            v423 = v211;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            v171[1] = 0;
            v422 = v348;
            v423 = v213;
            sub_1B03949FC(&v422, &v426, &v425, &v424);
            _os_log_impl(&dword_1B0389000, v216, v217, "[%.*hhx-%.*X] Credentials: Failed to renew credentials: %@", v173, 0x21u);
            sub_1B03998A8(v174, 1, v172);
            sub_1B03998A8(v175, 0, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v216);
        (*(v402 + 8))(v405, v401);
        MEMORY[0x1E69E5920](v184);
        MEMORY[0x1E69E5920](v400);
      }

      else
      {
        (*(v402 + 16))(v408, v396, v401);
        sub_1B0394784(v396, v395);
        sub_1B0394784(v395, v393);
        sub_1B03F4FD0(v395, v391);
        v65 = (v393 + *(v389 + 20));
        v239 = *v65;
        v240 = *(v65 + 1);
        sub_1B039480C(v393);
        v238 = 24;
        v250 = 7;
        v66 = swift_allocObject();
        v67 = v240;
        v243 = v66;
        *(v66 + 16) = v239;
        *(v66 + 20) = v67;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v68 = swift_allocObject();
        v69 = v240;
        v241 = v68;
        *(v68 + 16) = v239;
        *(v68 + 20) = v69;

        v249 = 32;
        v70 = swift_allocObject();
        v71 = v241;
        v251 = v70;
        *(v70 + 16) = v349;
        *(v70 + 24) = v71;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v391);
        v268 = sub_1B0E43988();
        v269 = sub_1B0E458E8();
        v247 = 17;
        v253 = swift_allocObject();
        v245 = 16;
        *(v253 + 16) = 16;
        v254 = swift_allocObject();
        v248 = 4;
        *(v254 + 16) = 4;
        v72 = swift_allocObject();
        v242 = v72;
        *(v72 + 16) = v324;
        *(v72 + 24) = 0;
        v73 = swift_allocObject();
        v74 = v242;
        v255 = v73;
        *(v73 + 16) = v350;
        *(v73 + 24) = v74;
        v256 = swift_allocObject();
        *(v256 + 16) = 0;
        v257 = swift_allocObject();
        *(v257 + 16) = 1;
        v75 = swift_allocObject();
        v76 = v243;
        v244 = v75;
        *(v75 + 16) = v351;
        *(v75 + 24) = v76;
        v77 = swift_allocObject();
        v78 = v244;
        v258 = v77;
        *(v77 + 16) = v352;
        *(v77 + 24) = v78;
        v259 = swift_allocObject();
        *(v259 + 16) = v245;
        v260 = swift_allocObject();
        *(v260 + 16) = v248;
        v79 = swift_allocObject();
        v246 = v79;
        *(v79 + 16) = v328;
        *(v79 + 24) = 0;
        v80 = swift_allocObject();
        v81 = v246;
        v261 = v80;
        *(v80 + 16) = v353;
        *(v80 + 24) = v81;
        v262 = swift_allocObject();
        *(v262 + 16) = 0;
        v263 = swift_allocObject();
        *(v263 + 16) = v248;
        v82 = swift_allocObject();
        v83 = v251;
        v252 = v82;
        *(v82 + 16) = v354;
        *(v82 + 24) = v83;
        v84 = swift_allocObject();
        v85 = v252;
        v265 = v84;
        *(v84 + 16) = v355;
        *(v84 + 24) = v85;
        v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v264 = sub_1B0E46A48();
        v266 = v86;

        v87 = v253;
        v88 = v266;
        *v266 = v356;
        v88[1] = v87;

        v89 = v254;
        v90 = v266;
        v266[2] = v357;
        v90[3] = v89;

        v91 = v255;
        v92 = v266;
        v266[4] = v358;
        v92[5] = v91;

        v93 = v256;
        v94 = v266;
        v266[6] = v359;
        v94[7] = v93;

        v95 = v257;
        v96 = v266;
        v266[8] = v360;
        v96[9] = v95;

        v97 = v258;
        v98 = v266;
        v266[10] = v361;
        v98[11] = v97;

        v99 = v259;
        v100 = v266;
        v266[12] = v362;
        v100[13] = v99;

        v101 = v260;
        v102 = v266;
        v266[14] = v363;
        v102[15] = v101;

        v103 = v261;
        v104 = v266;
        v266[16] = v364;
        v104[17] = v103;

        v105 = v262;
        v106 = v266;
        v266[18] = v365;
        v106[19] = v105;

        v107 = v263;
        v108 = v266;
        v266[20] = v366;
        v108[21] = v107;

        v109 = v265;
        v110 = v266;
        v266[22] = v367;
        v110[23] = v109;
        sub_1B0394964();

        if (os_log_type_enabled(v268, v269))
        {
          v111 = v387;
          v231 = sub_1B0E45D78();
          v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v230 = 0;
          v232 = sub_1B03949A8(0, v229, v229);
          v233 = sub_1B03949A8(v230, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v234 = &v421;
          v421 = v231;
          v235 = &v420;
          v420 = v232;
          v236 = &v419;
          v419 = v233;
          sub_1B0394A48(0, &v421);
          sub_1B0394A48(4, v234);
          v417 = v356;
          v418 = v253;
          sub_1B03949FC(&v417, v234, v235, v236);
          v237 = v111;
          if (v111)
          {

            __break(1u);
          }

          else
          {
            v417 = v357;
            v418 = v254;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v228 = 0;
            v417 = v358;
            v418 = v255;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v227 = 0;
            v417 = v359;
            v418 = v256;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v226 = 0;
            v417 = v360;
            v418 = v257;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v225 = 0;
            v417 = v361;
            v418 = v258;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v224 = 0;
            v417 = v362;
            v418 = v259;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v223 = 0;
            v417 = v363;
            v418 = v260;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v222 = 0;
            v417 = v364;
            v418 = v261;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v221 = 0;
            v417 = v365;
            v418 = v262;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v220 = 0;
            v417 = v366;
            v418 = v263;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            v219 = 0;
            v417 = v367;
            v418 = v265;
            sub_1B03949FC(&v417, &v421, &v420, &v419);
            _os_log_impl(&dword_1B0389000, v268, v269, "[%.*hhx-%.*X] Credentials: Failed to renew credentials.", v231, 0x17u);
            v218 = 0;
            sub_1B03998A8(v232, 0, v229);
            sub_1B03998A8(v233, v218, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v268);
        (*(v402 + 8))(v408, v401);
        MEMORY[0x1E69E5920](v400);
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v400);
    }
  }

  else
  {
    (*(v402 + 16))(v410, v396, v401);
    sub_1B0394784(v396, v395);
    sub_1B0394784(v395, v393);
    sub_1B03F4FD0(v395, v391);
    v18 = (v393 + *(v389 + 20));
    v292 = *v18;
    v293 = *(v18 + 1);
    sub_1B039480C(v393);
    v291 = 24;
    v303 = 7;
    v19 = swift_allocObject();
    v20 = v293;
    v296 = v19;
    *(v19 + 16) = v292;
    *(v19 + 20) = v20;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = swift_allocObject();
    v22 = v293;
    v294 = v21;
    *(v21 + 16) = v292;
    *(v21 + 20) = v22;

    v302 = 32;
    v23 = swift_allocObject();
    v24 = v294;
    v304 = v23;
    *(v23 + 16) = v368;
    *(v23 + 24) = v24;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v391);
    v321 = sub_1B0E43988();
    v322 = sub_1B0E45908();
    v300 = 17;
    v306 = swift_allocObject();
    v298 = 16;
    *(v306 + 16) = 16;
    v307 = swift_allocObject();
    v301 = 4;
    *(v307 + 16) = 4;
    v25 = swift_allocObject();
    v295 = v25;
    *(v25 + 16) = v324;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v295;
    v308 = v26;
    *(v26 + 16) = v369;
    *(v26 + 24) = v27;
    v309 = swift_allocObject();
    *(v309 + 16) = 0;
    v310 = swift_allocObject();
    *(v310 + 16) = 1;
    v28 = swift_allocObject();
    v29 = v296;
    v297 = v28;
    *(v28 + 16) = v370;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v297;
    v311 = v30;
    *(v30 + 16) = v371;
    *(v30 + 24) = v31;
    v312 = swift_allocObject();
    *(v312 + 16) = v298;
    v313 = swift_allocObject();
    *(v313 + 16) = v301;
    v32 = swift_allocObject();
    v299 = v32;
    *(v32 + 16) = v328;
    *(v32 + 24) = 0;
    v33 = swift_allocObject();
    v34 = v299;
    v314 = v33;
    *(v33 + 16) = v372;
    *(v33 + 24) = v34;
    v315 = swift_allocObject();
    *(v315 + 16) = 0;
    v316 = swift_allocObject();
    *(v316 + 16) = v301;
    v35 = swift_allocObject();
    v36 = v304;
    v305 = v35;
    *(v35 + 16) = v373;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v305;
    v318 = v37;
    *(v37 + 16) = v374;
    *(v37 + 24) = v38;
    v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v317 = sub_1B0E46A48();
    v319 = v39;

    v40 = v306;
    v41 = v319;
    *v319 = v375;
    v41[1] = v40;

    v42 = v307;
    v43 = v319;
    v319[2] = v376;
    v43[3] = v42;

    v44 = v308;
    v45 = v319;
    v319[4] = v377;
    v45[5] = v44;

    v46 = v309;
    v47 = v319;
    v319[6] = v378;
    v47[7] = v46;

    v48 = v310;
    v49 = v319;
    v319[8] = v379;
    v49[9] = v48;

    v50 = v311;
    v51 = v319;
    v319[10] = v380;
    v51[11] = v50;

    v52 = v312;
    v53 = v319;
    v319[12] = v381;
    v53[13] = v52;

    v54 = v313;
    v55 = v319;
    v319[14] = v382;
    v55[15] = v54;

    v56 = v314;
    v57 = v319;
    v319[16] = v383;
    v57[17] = v56;

    v58 = v315;
    v59 = v319;
    v319[18] = v384;
    v59[19] = v58;

    v60 = v316;
    v61 = v319;
    v319[20] = v385;
    v61[21] = v60;

    v62 = v318;
    v63 = v319;
    v319[22] = v386;
    v63[23] = v62;
    sub_1B0394964();

    if (os_log_type_enabled(v321, v322))
    {
      v64 = v387;
      v284 = sub_1B0E45D78();
      v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v283 = 0;
      v285 = sub_1B03949A8(0, v282, v282);
      v286 = sub_1B03949A8(v283, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v287 = &v416;
      v416 = v284;
      v288 = &v415;
      v415 = v285;
      v289 = &v414;
      v414 = v286;
      sub_1B0394A48(0, &v416);
      sub_1B0394A48(4, v287);
      v412 = v375;
      v413 = v306;
      sub_1B03949FC(&v412, v287, v288, v289);
      v290 = v64;
      if (v64)
      {

        __break(1u);
      }

      else
      {
        v412 = v376;
        v413 = v307;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v281 = 0;
        v412 = v377;
        v413 = v308;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v280 = 0;
        v412 = v378;
        v413 = v309;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v279 = 0;
        v412 = v379;
        v413 = v310;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v278 = 0;
        v412 = v380;
        v413 = v311;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v277 = 0;
        v412 = v381;
        v413 = v312;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v276 = 0;
        v412 = v382;
        v413 = v313;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v275 = 0;
        v412 = v383;
        v413 = v314;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v274 = 0;
        v412 = v384;
        v413 = v315;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v273 = 0;
        v412 = v385;
        v413 = v316;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        v272 = 0;
        v412 = v386;
        v413 = v318;
        sub_1B03949FC(&v412, &v416, &v415, &v414);
        _os_log_impl(&dword_1B0389000, v321, v322, "[%.*hhx-%.*X] Credentials: Did renew OAuth credentials.", v284, 0x17u);
        v271 = 0;
        sub_1B03998A8(v285, 0, v282);
        sub_1B03998A8(v286, v271, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v321);
    (*(v402 + 8))(v410, v401);
    MEMORY[0x1E69E5920](v400);
  }

  v171[0] = v434;
  sub_1B0708E54(v396, v434);
  v397(v171[0]);
  sub_1B070B568(v171[0]);
}

void *sub_1B0708E54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v240 = a2;
  v290 = a1;
  v241 = sub_1B039BBE8;
  v242 = sub_1B0394C30;
  v243 = sub_1B0394C24;
  v244 = sub_1B039BA2C;
  v245 = sub_1B039BA88;
  v246 = sub_1B039BB94;
  v247 = sub_1B0394C24;
  v248 = sub_1B039BBA0;
  v249 = sub_1B039BC08;
  v250 = sub_1B0398F5C;
  v251 = sub_1B0398F5C;
  v252 = sub_1B0399178;
  v253 = sub_1B0398F5C;
  v254 = sub_1B0398F5C;
  v255 = sub_1B039BA94;
  v256 = sub_1B0398F5C;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0399178;
  v259 = sub_1B0398F5C;
  v260 = sub_1B0398F5C;
  v261 = sub_1B03991EC;
  v262 = sub_1B039BBE8;
  v263 = sub_1B0394C24;
  v264 = sub_1B039BA2C;
  v265 = sub_1B039BA88;
  v266 = sub_1B0394C24;
  v267 = sub_1B039BBA0;
  v268 = sub_1B039BC08;
  v269 = sub_1B0398F5C;
  v270 = sub_1B0398F5C;
  v271 = sub_1B0399178;
  v272 = sub_1B0398F5C;
  v273 = sub_1B0398F5C;
  v274 = sub_1B039BA94;
  v275 = sub_1B0398F5C;
  v276 = sub_1B0398F5C;
  v277 = sub_1B0399178;
  v278 = sub_1B0398F5C;
  v279 = sub_1B0398F5C;
  v280 = sub_1B03991EC;
  v320 = 0;
  v319 = 0;
  v281 = 0;
  v310 = 0;
  v311 = 0;
  v308 = 0;
  v309 = 0;
  v282 = 0;
  v283 = _s6LoggerVMa(0);
  v284 = (*(*(v283 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v285 = &v108 - v284;
  v286 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v287 = &v108 - v286;
  v288 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v289 = &v108 - v288;
  v291 = sub_1B0E439A8();
  v292 = *(v291 - 8);
  v293 = v291 - 8;
  v295 = *(v292 + 64);
  v294 = (v295 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v299);
  v296 = &v108 - v294;
  v297 = (v295 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v298 = &v108 - v297;
  v320 = v7;
  v319 = v8;
  MEMORY[0x1E69E5928](v8);
  v300 = [v299 username];
  if (v300)
  {
    v239 = v300;
    v234 = v300;
    v235 = sub_1B0E44AD8();
    v236 = v9;
    MEMORY[0x1E69E5920](v234);
    v237 = v235;
    v238 = v236;
  }

  else
  {
    v237 = 0;
    v238 = 0;
  }

  v232 = v238;
  v233 = v237;
  if (v238)
  {
    v230 = v233;
    v231 = v232;
    v227 = v232;
    v228 = v233;
    v310 = v233;
    v311 = v232;
    MEMORY[0x1E69E5920](v299);
    MEMORY[0x1E69E5928](v299);
    v10 = [v299 oauth2Token];
    v229 = v10;
    if (v10)
    {
      v226 = v229;
      v221 = v229;
      v222 = sub_1B0E44AD8();
      v223 = v11;
      MEMORY[0x1E69E5920](v221);
      v224 = v222;
      v225 = v223;
    }

    else
    {
      v224 = 0;
      v225 = 0;
    }

    v219 = v225;
    v220 = v224;
    if (v225)
    {
      v217 = v220;
      v218 = v219;
      v12 = v298;
      v183 = v219;
      v184 = v220;
      v308 = v220;
      v309 = v219;
      MEMORY[0x1E69E5920](v299);
      (*(v292 + 16))(v12, v290, v291);
      sub_1B0394784(v290, v289);
      sub_1B0394784(v289, v287);
      sub_1B03F4FD0(v289, v285);
      v13 = (v287 + *(v283 + 20));
      v186 = *v13;
      v187 = *(v13 + 1);
      sub_1B039480C(v287);
      v185 = 24;
      v197 = 7;
      v14 = swift_allocObject();
      v15 = v187;
      v190 = v14;
      *(v14 + 16) = v186;
      *(v14 + 20) = v15;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v16 = swift_allocObject();
      v17 = v187;
      v188 = v16;
      *(v16 + 16) = v186;
      *(v16 + 20) = v17;

      v196 = 32;
      v18 = swift_allocObject();
      v19 = v188;
      v198 = v18;
      *(v18 + 16) = v241;
      *(v18 + 24) = v19;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v285);
      v215 = sub_1B0E43988();
      v216 = sub_1B0E45908();
      v194 = 17;
      v200 = swift_allocObject();
      v192 = 16;
      *(v200 + 16) = 16;
      v201 = swift_allocObject();
      v195 = 4;
      *(v201 + 16) = 4;
      v20 = swift_allocObject();
      v189 = v20;
      *(v20 + 16) = v242;
      *(v20 + 24) = 0;
      v21 = swift_allocObject();
      v22 = v189;
      v202 = v21;
      *(v21 + 16) = v243;
      *(v21 + 24) = v22;
      v203 = swift_allocObject();
      *(v203 + 16) = 0;
      v204 = swift_allocObject();
      *(v204 + 16) = 1;
      v23 = swift_allocObject();
      v24 = v190;
      v191 = v23;
      *(v23 + 16) = v244;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v191;
      v205 = v25;
      *(v25 + 16) = v245;
      *(v25 + 24) = v26;
      v206 = swift_allocObject();
      *(v206 + 16) = v192;
      v207 = swift_allocObject();
      *(v207 + 16) = v195;
      v27 = swift_allocObject();
      v193 = v27;
      *(v27 + 16) = v246;
      *(v27 + 24) = 0;
      v28 = swift_allocObject();
      v29 = v193;
      v208 = v28;
      *(v28 + 16) = v247;
      *(v28 + 24) = v29;
      v209 = swift_allocObject();
      *(v209 + 16) = 0;
      v210 = swift_allocObject();
      *(v210 + 16) = v195;
      v30 = swift_allocObject();
      v31 = v198;
      v199 = v30;
      *(v30 + 16) = v248;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v199;
      v212 = v32;
      *(v32 + 16) = v249;
      *(v32 + 24) = v33;
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v211 = sub_1B0E46A48();
      v213 = v34;

      v35 = v200;
      v36 = v213;
      *v213 = v250;
      v36[1] = v35;

      v37 = v201;
      v38 = v213;
      v213[2] = v251;
      v38[3] = v37;

      v39 = v202;
      v40 = v213;
      v213[4] = v252;
      v40[5] = v39;

      v41 = v203;
      v42 = v213;
      v213[6] = v253;
      v42[7] = v41;

      v43 = v204;
      v44 = v213;
      v213[8] = v254;
      v44[9] = v43;

      v45 = v205;
      v46 = v213;
      v213[10] = v255;
      v46[11] = v45;

      v47 = v206;
      v48 = v213;
      v213[12] = v256;
      v48[13] = v47;

      v49 = v207;
      v50 = v213;
      v213[14] = v257;
      v50[15] = v49;

      v51 = v208;
      v52 = v213;
      v213[16] = v258;
      v52[17] = v51;

      v53 = v209;
      v54 = v213;
      v213[18] = v259;
      v54[19] = v53;

      v55 = v210;
      v56 = v213;
      v213[20] = v260;
      v56[21] = v55;

      v57 = v212;
      v58 = v213;
      v213[22] = v261;
      v58[23] = v57;
      sub_1B0394964();

      if (os_log_type_enabled(v215, v216))
      {
        v59 = v281;
        v176 = sub_1B0E45D78();
        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v175 = 0;
        v177 = sub_1B03949A8(0, v174, v174);
        v178 = sub_1B03949A8(v175, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v179 = &v305;
        v305 = v176;
        v180 = &v304;
        v304 = v177;
        v181 = &v303;
        v303 = v178;
        sub_1B0394A48(0, &v305);
        sub_1B0394A48(4, v179);
        v301 = v250;
        v302 = v200;
        sub_1B03949FC(&v301, v179, v180, v181);
        v182 = v59;
        if (v59)
        {

          __break(1u);
        }

        else
        {
          v301 = v251;
          v302 = v201;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v173 = 0;
          v301 = v252;
          v302 = v202;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v172 = 0;
          v301 = v253;
          v302 = v203;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v171 = 0;
          v301 = v254;
          v302 = v204;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v170 = 0;
          v301 = v255;
          v302 = v205;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v169 = 0;
          v301 = v256;
          v302 = v206;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v168 = 0;
          v301 = v257;
          v302 = v207;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v167 = 0;
          v301 = v258;
          v302 = v208;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v166 = 0;
          v301 = v259;
          v302 = v209;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v165 = 0;
          v301 = v260;
          v302 = v210;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          v164 = 0;
          v301 = v261;
          v302 = v212;
          sub_1B03949FC(&v301, &v305, &v304, &v303);
          _os_log_impl(&dword_1B0389000, v215, v216, "[%.*hhx-%.*X] Credentials: Adding oAuth Token.", v176, 0x17u);
          v163 = 0;
          sub_1B03998A8(v177, 0, v174);
          sub_1B03998A8(v178, v163, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v215);
      (*(v292 + 8))(v298, v291);
      v306[0] = v228;
      v306[1] = v227;
      v306[2] = v184;
      v306[3] = v183;
      v306[5] &= 0xCFFFFFFFFFFFFFFFLL;
      v306[7] = v306[7] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v306[9] = v306[9] & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
      v161 = v307;
      v162 = 80;
      memcpy(v307, v306, sizeof(v307));
      memcpy(__dst, v307, sizeof(__dst));
      return memcpy(v240, __dst, 0x50uLL);
    }

    MEMORY[0x1E69E5920](v299);
  }

  else
  {
    MEMORY[0x1E69E5920](v299);
  }

  (*(v292 + 16))(v296, v290, v291);
  sub_1B0394784(v290, v289);
  sub_1B0394784(v289, v287);
  sub_1B03F4FD0(v289, v285);
  v60 = (v287 + *(v283 + 20));
  v130 = *v60;
  v131 = *(v60 + 1);
  sub_1B039480C(v287);
  v129 = 24;
  v141 = 7;
  v61 = swift_allocObject();
  v62 = v131;
  v134 = v61;
  *(v61 + 16) = v130;
  *(v61 + 20) = v62;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v63 = swift_allocObject();
  v64 = v131;
  v132 = v63;
  *(v63 + 16) = v130;
  *(v63 + 20) = v64;

  v140 = 32;
  v65 = swift_allocObject();
  v66 = v132;
  v142 = v65;
  *(v65 + 16) = v262;
  *(v65 + 24) = v66;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v285);
  v159 = sub_1B0E43988();
  v160 = sub_1B0E458E8();
  v138 = 17;
  v144 = swift_allocObject();
  v136 = 16;
  *(v144 + 16) = 16;
  v145 = swift_allocObject();
  v139 = 4;
  *(v145 + 16) = 4;
  v67 = swift_allocObject();
  v133 = v67;
  *(v67 + 16) = v242;
  *(v67 + 24) = 0;
  v68 = swift_allocObject();
  v69 = v133;
  v146 = v68;
  *(v68 + 16) = v263;
  *(v68 + 24) = v69;
  v147 = swift_allocObject();
  *(v147 + 16) = 0;
  v148 = swift_allocObject();
  *(v148 + 16) = 1;
  v70 = swift_allocObject();
  v71 = v134;
  v135 = v70;
  *(v70 + 16) = v264;
  *(v70 + 24) = v71;
  v72 = swift_allocObject();
  v73 = v135;
  v149 = v72;
  *(v72 + 16) = v265;
  *(v72 + 24) = v73;
  v150 = swift_allocObject();
  *(v150 + 16) = v136;
  v151 = swift_allocObject();
  *(v151 + 16) = v139;
  v74 = swift_allocObject();
  v137 = v74;
  *(v74 + 16) = v246;
  *(v74 + 24) = 0;
  v75 = swift_allocObject();
  v76 = v137;
  v152 = v75;
  *(v75 + 16) = v266;
  *(v75 + 24) = v76;
  v153 = swift_allocObject();
  *(v153 + 16) = 0;
  v154 = swift_allocObject();
  *(v154 + 16) = v139;
  v77 = swift_allocObject();
  v78 = v142;
  v143 = v77;
  *(v77 + 16) = v267;
  *(v77 + 24) = v78;
  v79 = swift_allocObject();
  v80 = v143;
  v156 = v79;
  *(v79 + 16) = v268;
  *(v79 + 24) = v80;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v155 = sub_1B0E46A48();
  v157 = v81;

  v82 = v144;
  v83 = v157;
  *v157 = v269;
  v83[1] = v82;

  v84 = v145;
  v85 = v157;
  v157[2] = v270;
  v85[3] = v84;

  v86 = v146;
  v87 = v157;
  v157[4] = v271;
  v87[5] = v86;

  v88 = v147;
  v89 = v157;
  v157[6] = v272;
  v89[7] = v88;

  v90 = v148;
  v91 = v157;
  v157[8] = v273;
  v91[9] = v90;

  v92 = v149;
  v93 = v157;
  v157[10] = v274;
  v93[11] = v92;

  v94 = v150;
  v95 = v157;
  v157[12] = v275;
  v95[13] = v94;

  v96 = v151;
  v97 = v157;
  v157[14] = v276;
  v97[15] = v96;

  v98 = v152;
  v99 = v157;
  v157[16] = v277;
  v99[17] = v98;

  v100 = v153;
  v101 = v157;
  v157[18] = v278;
  v101[19] = v100;

  v102 = v154;
  v103 = v157;
  v157[20] = v279;
  v103[21] = v102;

  v104 = v156;
  v105 = v157;
  v157[22] = v280;
  v105[23] = v104;
  sub_1B0394964();

  if (os_log_type_enabled(v159, v160))
  {
    v106 = v281;
    v122 = sub_1B0E45D78();
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v121 = 0;
    v123 = sub_1B03949A8(0, v120, v120);
    v124 = sub_1B03949A8(v121, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v125 = &v316;
    v316 = v122;
    v126 = &v315;
    v315 = v123;
    v127 = &v314;
    v314 = v124;
    sub_1B0394A48(0, &v316);
    sub_1B0394A48(4, v125);
    v312 = v269;
    v313 = v144;
    sub_1B03949FC(&v312, v125, v126, v127);
    v128 = v106;
    if (v106)
    {

      __break(1u);
    }

    else
    {
      v312 = v270;
      v313 = v145;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v119 = 0;
      v312 = v271;
      v313 = v146;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v118 = 0;
      v312 = v272;
      v313 = v147;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v117 = 0;
      v312 = v273;
      v313 = v148;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v116 = 0;
      v312 = v274;
      v313 = v149;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v115 = 0;
      v312 = v275;
      v313 = v150;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v114 = 0;
      v312 = v276;
      v313 = v151;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v113 = 0;
      v312 = v277;
      v313 = v152;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v112 = 0;
      v312 = v278;
      v313 = v153;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v111 = 0;
      v312 = v279;
      v313 = v154;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      v110 = 0;
      v312 = v280;
      v313 = v156;
      sub_1B03949FC(&v312, &v316, &v315, &v314);
      _os_log_impl(&dword_1B0389000, v159, v160, "[%.*hhx-%.*X] Credentials: Missing details for using oAuth Token.", v122, 0x17u);
      v109 = 0;
      sub_1B03998A8(v123, 0, v120);
      sub_1B03998A8(v124, v109, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v159);
  (*(v292 + 8))(v296, v291);
  memset(__src, 0, 40);
  __src[5] = 0x3000000000000000;
  __src[6] = 0;
  __src[7] = 0x1000000000000000;
  __src[8] = 0;
  __src[9] = 0x3000000000000000;
  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(v240, __dst, 0x50uLL);
}

uint64_t sub_1B070AC10()
{
  v2 = 0;
  v3 = 0;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  v3 = 0;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B070AD2C(void *a1, NSObject *a2, uint64_t a3)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v11, __dst, sizeof(v11));
  v9[10] = a2;
  v9[11] = a3;

  sub_1B070E1D4(a1, v9);
  v8 = a1;
  sub_1B03E1B3C(sub_1B070E38C, v7, a3, &unk_1F26A9368, MEMORY[0x1E69E7CA8] + 8);
  sub_1B070B568(a1);

  return sub_1B070AE3C(a2);
}

uint64_t sub_1B070AE3C(NSObject *a1)
{
  MEMORY[0x1E69E5928](a1);
  dispatch_group_leave(a1);
  return MEMORY[0x1E69E5920](a1);
}

void sub_1B070AE94(uint64_t a1, const void *a2)
{
  v5[11] = a1;
  v5[10] = a2;
  memcpy(__dst, a2, sizeof(__dst));
  if ((__dst[5] & 0x3000000000000000) != 0x3000000000000000 || (__dst[7] & 0x3000000000000000) != 0x3000000000000000 || (__dst[9] & 0x3000000000000000) != 0x3000000000000000)
  {
    if ((__dst[5] & 0x3000000000000000) == 0x3000000000000000 && (__dst[7] & 0x3000000000000000) == 0x1000000000000000 && (__dst[9] & 0x3000000000000000) == 0x3000000000000000)
    {
      *(a1 + 8) = 1;
    }

    else
    {
      memcpy(v7, __dst, sizeof(v7));
      sub_1B069506C(v7, v5);
      sub_1B069506C(v7, v4);
      memcpy(v3, v7, sizeof(v3));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1440, &qword_1B0E99410);
      sub_1B0E452E8();
      sub_1B070BB30(v7);
    }
  }
}

uint64_t sub_1B070B030(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, __n128))
{

  sub_1B03E1B3C(sub_1B070B150, 0, a2, &unk_1F26A9368, &unk_1F26A9368);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  (a3)(v6, v7 & 1);
}

uint64_t sub_1B070B188(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1B0E45C58();
      v1 = sub_1B0E45278();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0E45C58();
    return v2;
  }

  return result;
}

void *sub_1B070B280(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B070B330(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v9 = a4(a1, a2, a3);
  v8 = *a1;
  MEMORY[0x1E69E5928](v9);
  sub_1B0E45E48();
  if (v9)
  {
    MEMORY[0x1E69E5920](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x1E69E5920](v9);
  }

  MEMORY[0x1E69E5928](v9);
  *v5 = v9;
  result = MEMORY[0x1E69E5920](v9);
  *a2 = v5 + 1;
  return result;
}

uint64_t block_copy_helper_781(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t *sub_1B070B568(uint64_t *a1)
{
  v3 = a1[5];
  v4 = a1[7];
  v5 = a1[9];
  if (((v3 & 0x3000000000000000) != 0x3000000000000000 || (v4 & 0x3000000000000000) != 0x3000000000000000 || (v5 & 0x3000000000000000) != 0x3000000000000000) && ((v3 & 0x3000000000000000) != 0x3000000000000000 || (v4 & 0x3000000000000000) != 0x1000000000000000 || (v5 & 0x3000000000000000) != 0x3000000000000000))
  {
    sub_1B070B688(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  }

  return a1;
}

uint64_t sub_1B070B688(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = (a10 >> 59) & 6;
  if (((a8 & 0x2000000000000000) != 0) | v10)
  {
    switch((((a8 & 0x2000000000000000) != 0) | v10))
    {
      case 1u:
        sub_1B0391D50(result, a2);
        sub_1B0391D50(a3, a4);
        sub_1B0391D50(a5, a6);
        sub_1B0391D50(a7, a8 & 0xDFFFFFFFFFFFFFFFLL);
        return sub_1B0391D50(a9, a10 & 0xCFFFFFFFFFFFFFFFLL);
      case 2u:
        return sub_1B0391D50(result, a2);
      case 3u:
    }
  }

  else
  {
    sub_1B0391D50(result, a2);
    return sub_1B0391D50(a3, a4);
  }

  return result;
}

unint64_t sub_1B070B7CC()
{
  v2 = qword_1EB6DA398;
  if (!qword_1EB6DA398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1958, &qword_1B0E9A0B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA398);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B070B85C(uint64_t a1, uint64_t a2)
{
  v11 = *(_s6LoggerVMa(0) - 8);
  v3 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v4 = (v3 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v2 + v4);
  v6 = *(v2 + v4 + 8);
  v7 = *(v2 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B0706354(a1, a2, v2 + v3, v5, v6, v7);
}

uint64_t block_copy_helper_1209(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B070B994(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *(_s6LoggerVMa(0) - 8);
  v4 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v5 = v3 + ((v4 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1B0704918(a1, a2, a3, v3 + v4, v6, v7);
}

uint64_t block_copy_helper_1462(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1544(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B070BB90()
{
  v2 = qword_1EB6DED00;
  if (!qword_1EB6DED00)
  {
    sub_1B0E43108();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070BC10()
{
  v2 = qword_1EB6E1970;
  if (!qword_1EB6E1970)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1970);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s17CredentialsHelperCMa(uint64_t a1)
{
  v2 = qword_1EB6DBE00;
  if (!qword_1EB6DBE00)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B070BD1C(uint64_t a1)
{
  updated = _s6LoggerVMa(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B070BE44(unsigned int *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7C && *(a1 + 5))
    {
      v5 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 | (*(a1 + 4) << 32)) & 0xFFFFFFFFFFLL) >> 33) & 0x7F;
      v3 = 127 - (((4 * v2) | (v2 >> 5)) & 0x7F);
      if (v3 >= 0x7C)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t sub_1B070BF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 4) = 0;
    if (a3 > 0x7C)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 > 0x7C)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((~(a2 - 1) & 0x7F) >> 2) | (32 * (~(a2 - 1) & 0x7F)));
    }
  }

  return result;
}

unint64_t sub_1B070C178(unsigned int *a1)
{
  if (((((*a1 | (*(a1 + 4) << 32)) & 0xFFFFFFFFFFLL) >> 38) & 3) == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return (((*a1 | (*(a1 + 4) << 32)) & 0xFFFFFFFFFFLL) >> 38) & 3;
  }
}

unsigned int *sub_1B070C1A8(unsigned int *result)
{
  v1 = (*result | (*(result + 4) << 32)) & 0x3FFFFFFFFFLL;
  *result = *result;
  *(result + 4) = BYTE4(v1);
  return result;
}

unsigned int *sub_1B070C1CC(unsigned int *result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = ((a2 & 3) << 38) | (*result | (*(result + 4) << 32)) & 0x1FFFFFFFFLL;
    *result = *result;
    *(result + 4) = BYTE4(v2);
  }

  else
  {
    *result = a2 - 3;
    *(result + 4) = -64;
  }

  return result;
}

uint64_t sub_1B070C27C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B070C3E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B070C5F4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B070C75C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B070C988(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 5))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B070CA9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    if (a3)
    {
      *(result + 5) = 1;
    }
  }

  else if (a3)
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t sub_1B070CCF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFD && *(a1 + 5))
    {
      v5 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 4) - 2;
      if (v2 < 0)
      {
        v2 = -1;
      }

      v3 = v2 - 1;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B070CE28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 4) = 0;
    if (a3 > 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 > 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B070D1C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 9))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
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

void *sub_1B070D30C(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 9;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(void *a1)
{
  if ((HIBYTE(a1[1]) >> 6) < 3u)
  {
    return HIBYTE(a1[1]) >> 6;
  }

  else
  {
    return *a1 + 3;
  }
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence11CredentialsO(void *a1)
{
  if ((((a1[7] & 0x2000000000000000) != 0) | (a1[9] >> 59) & 6) < 4u)
  {
    return ((a1[7] & 0x2000000000000000) != 0) | ((a1[9] >> 59) & 6);
  }

  else
  {
    return *a1 + 4;
  }
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence11CredentialsO7MessageE12AsyncBuilderV6ResultO(uint64_t a1)
{
  v1 = (*(a1 + 56) >> 58) & 0xC;
  v2 = ~(((v1 | *(a1 + 79) & 0x30u) >> 3) | (8 * ((*(a1 + 40) >> 60) & 3 | v1))) & 0x3F;
  if (v2 >= 0x3B)
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B070D65C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3A && *(a1 + 80))
    {
      v6 = *a1 + 57;
    }

    else
    {
      v2 = (*(a1 + 56) >> 58) & 0xC;
      v3 = ~(((v2 | *(a1 + 79) & 0x30u) >> 3) | (8 * ((*(a1 + 40) >> 60) & 3 | v2))) & 0x3F;
      if (v3 >= 0x3B)
      {
        v3 = -1;
      }

      v4 = v3 - 2;
      if (v4 < 0)
      {
        v4 = -1;
      }

      v6 = v4;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_1B070D78C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *result = a2 - 58;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x39)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x39)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      v3 = ((~(a2 + 1) & 0x3F) >> 3) | (8 * (~(a2 + 1) & 0x3F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 60) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

unint64_t sub_1B070DA34()
{
  v2 = qword_1EB6E1980;
  if (!qword_1EB6E1980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1988, qword_1B0E9A868);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DAD4()
{
  v2 = qword_1EB6E1990;
  if (!qword_1EB6E1990)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DB68()
{
  v2 = qword_1EB6E1998;
  if (!qword_1EB6E1998)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DBFC()
{
  v2 = qword_1EB6E19A0;
  if (!qword_1EB6E19A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DC90()
{
  v2 = qword_1EB6E19A8;
  if (!qword_1EB6E19A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DD24()
{
  v2 = qword_1EB6E19B0;
  if (!qword_1EB6E19B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DDB8()
{
  v2 = qword_1EB6E19B8;
  if (!qword_1EB6E19B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DE4C()
{
  v2 = qword_1EB6E19C0;
  if (!qword_1EB6E19C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DEE0()
{
  v2 = qword_1EB6E19C8;
  if (!qword_1EB6E19C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070DF74()
{
  v2 = qword_1EB6E19D0;
  if (!qword_1EB6E19D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070E008()
{
  v2 = qword_1EB6DBC90;
  if (!qword_1EB6DBC90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B070E084()
{
  v2 = qword_1EB6E19D8;
  if (!qword_1EB6E19D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E19D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B070E0FC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

uint64_t sub_1B070E144(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1B0391D50(result, a2);
  }

  return result;
}

uint64_t sub_1B070E18C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1B03B2000(result, a2);
  }

  return result;
}

void *sub_1B070E1D4(uint64_t *a1, void *a2)
{
  v14 = a1[5];
  v15 = a1[7];
  v16 = a1[9];
  if ((v14 & 0x3000000000000000) == 0x3000000000000000 && (v15 & 0x3000000000000000) == 0x3000000000000000 && (v16 & 0x3000000000000000) == 0x3000000000000000 || (v14 & 0x3000000000000000) == 0x3000000000000000 && (v15 & 0x3000000000000000) == 0x1000000000000000 && (v16 & 0x3000000000000000) == 0x3000000000000000)
  {
    memcpy(a2, a1, 0x50uLL);
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = a1[2];
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    v11 = a1[8];
    v12 = a1[9];
    sub_1B0695144(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
    a2[5] = v8;
    a2[6] = v9;
    a2[7] = v10;
    a2[8] = v11;
    a2[9] = v12;
  }

  return a2;
}

unint64_t sub_1B070E3B4()
{
  v2 = qword_1EB6DAF00;
  if (!qword_1EB6DAF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E19E0, &qword_1B0E9ABD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_2393(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_2399(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B070E528()
{
  v1 = *(sub_1B0E42A08() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1B06E80A4(v2, v3);
}

uint64_t block_copy_helper_2405(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B070E634()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6E19E8);
  __swift_project_value_buffer(v1, qword_1EB6E19E8);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B070E6D8()
{
  if (qword_1EB6E0B38 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6E19E8);
}

uint64_t sub_1B070E744@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7Message17DiskSpaceObserver_volume;
  v2 = sub_1B0E42E68();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B070E7B0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B070E818(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B070E8A0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
  swift_beginAccess();
  v3 = *v2;
  sub_1B070E90C(*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B070E90C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B070E940(uint64_t a1, uint64_t a2)
{
  sub_1B070E90C(a1);
  v6 = (v2 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1B04197E4(v3, v4);
  swift_endAccess();
  return sub_1B04197E4(a1, a2);
}

uint64_t sub_1B070E9C4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B070EA3C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = v3 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue;
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return swift_endAccess();
}

uint64_t sub_1B070EB1C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v68 = a1;
  v77 = a2;
  v64 = a3;
  v65 = a4;
  v75 = sub_1B070F4D0;
  v52 = sub_1B070FB1C;
  v53 = sub_1B070FDB8;
  v114 = 0;
  v113 = 0;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  v97 = 0;
  v66 = 0;
  v54 = sub_1B0E44288();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v58 = v27 - v57;
  v59 = sub_1B0E44238();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v63 = v27 - v62;
  v72 = sub_1B0E42E68();
  v69 = *(v72 - 8);
  v70 = v72 - 8;
  v67 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v77);
  v71 = v27 - v67;
  v114 = v68;
  v113 = v5;
  v111 = v6;
  v112 = v7;
  v110 = v4;
  *(v4 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source) = v8;
  v9 = (v4 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
  *v9 = 0;
  v9[1] = 0;
  v10 = v4 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  MEMORY[0x1E69E5928](v5);
  v11 = v68;
  v12 = v69;
  v13 = v72;
  v14 = v71;
  *(v4 + 16) = v77;
  (*(v12 + 16))(v14, v11, v13);
  (*(v69 + 32))(v4 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_volume, v71, v72);
  v76 = swift_allocObject();

  v74 = v73;
  swift_weakInit();

  v107 = v75;
  v108 = v76;
  aBlock = MEMORY[0x1E69E9820];
  v103 = 1107296256;
  v104 = 0;
  v105 = sub_1B070FA14;
  v106 = &block_descriptor_2;
  v78 = _Block_copy(&aBlock);

  v79 = MFCreateDiskSpaceObserverSource(v77, v78);
  _Block_release(v78);
  if (v79)
  {
    v51 = v79;
    v50 = v79;
    v49 = &v80;
    sub_1B0E45FE8();
    sub_1B0392800(v49, v100);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v100, 0, sizeof(v100));
    v101 = 0;
  }

  if (v101)
  {
    v46 = v109;
    sub_1B0392800(v100, v109);
    v27[0] = v99;
    sub_1B039AEC8(v46, v99);
    v27[1] = 0;
    v36 = sub_1B0421E38();
    v34 = 7;
    swift_dynamicCast();
    v45 = v98;
    v97 = v98;
    v27[4] = sub_1B0E44458();
    v27[2] = sub_1B0E46A48();
    sub_1B0E44228();
    sub_1B0394964();
    v27[3] = v15;
    sub_1B039B924();
    sub_1B0E46028();
    v30 = &unk_1F26AA248;
    v31 = 24;
    v28 = swift_allocObject();
    v27[5] = v28 + 16;

    v27[6] = v73;
    swift_weakInit();

    v95 = v52;
    v96 = v28;
    v90 = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v91 = 1107296256;
    v92 = 0;
    v93 = sub_1B038C908;
    v94 = &block_descriptor_4;
    _Block_copy(&v90);
    v29 = sub_1B0E44438();

    sub_1B0E45A88();

    v38 = swift_allocObject();
    v32 = v38 + 16;

    v33 = v73;
    swift_weakInit();

    MEMORY[0x1E69E5928](v77);

    v16 = swift_allocObject();
    v17 = v53;
    v18 = v35;
    v19 = v16;
    v20 = v38;
    *(v19 + 16) = v77;
    *(v19 + 24) = v20;
    v88 = v17;
    v89 = v19;
    v83 = MEMORY[0x1E69E9820];
    v84 = v18;
    v85 = 0;
    v86 = sub_1B038C908;
    v87 = &block_descriptor_11;
    v37 = _Block_copy(&v83);
    sub_1B06D284C(v36);
    sub_1B06D2870(v36);
    sub_1B0E45A78();
    (*(v60 + 8))(v63, v59);
    (*(v55 + 8))(v58, v54);
    _Block_release(v37);

    MEMORY[0x1E69E5928](v45);
    v39 = (v73 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
    v40 = &v82;
    v41 = 33;
    v42 = 0;
    swift_beginAccess();
    v21 = *v39;
    *v39 = v45;
    MEMORY[0x1E69E5920](v21);
    swift_endAccess();

    v43 = (v73 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
    v44 = &v81;
    swift_beginAccess();
    v22 = v43;
    v23 = v65;
    v24 = *v43;
    v25 = v43[1];
    *v43 = v64;
    v22[1] = v23;
    sub_1B04197E4(v24, v25);
    swift_endAccess();
    MEMORY[0x1E69E5920](v45);
    __swift_destroy_boxed_opaque_existential_0(v46);
    v47 = v73;

    MEMORY[0x1E69E5920](v77);
    (*(v69 + 8))(v68, v72);
    return v47;
  }

  else
  {
    sub_1B041C0EC(v100);

    MEMORY[0x1E69E5920](v77);
    (*(v69 + 8))(v68, v72);
    return 0;
  }
}

uint64_t sub_1B070F418(char a1, uint64_t a2)
{
  v4 = a1;
  v3[4] = a2 + 16;
  swift_beginAccess();
  v3[0] = swift_weakLoadStrong();
  if (v3[0])
  {

    sub_1B0391AD4(v3);
    swift_endAccess();
    sub_1B070F4D8();
  }

  else
  {
    sub_1B0391AD4(v3);
    return swift_endAccess();
  }
}

uint64_t sub_1B070F4D8()
{
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v27 = 0;
  v28 = sub_1B0E42E68();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v32 = &v7 - v31;
  v37 = sub_1B0E44468();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v33 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v38 = (&v7 - v33);
  v53 = v0;

  v34 = *(v0 + 16);
  MEMORY[0x1E69E5928](v34);
  v1 = v35;
  *v38 = v34;
  (*(v1 + 104))();
  v39 = sub_1B0E44488();
  (*(v35 + 8))(v38, v37);
  result = v39;
  if (v39)
  {

    (*(v29 + 16))(v32, v26 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_volume, v28);
    result = sub_1B0710F18(v32);
    v24 = result;
    v25 = v3;
    if ((v4 & 1) == 0)
    {
      v22 = v24;
      v23 = v25;
      v18 = v25;
      v17 = v24;
      v51 = v24;
      v52 = v25;
      v15 = v26 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue;
      v16 = v50;
      swift_beginAccess();
      v19 = *v15;
      v20 = *(v15 + 8);
      v21 = *(v15 + 16);
      result = swift_endAccess();
      v44 = v17;
      v45 = v18;
      v46 = 0;
      v47 = v19;
      v48 = v20;
      v49 = v21 & 1;
      v40 = v17;
      v41 = v18;
      v42 = 0;
      if (v21)
      {
        v14 = 0;
      }

      else
      {
        result = sub_1B0710E64(v40, v41, v47, v48);
        v14 = result;
      }

      if ((v14 & 1) == 0)
      {
        v10 = (v26 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_lastValue);
        v11 = &v43;
        v12 = 0;
        swift_beginAccess();
        v5 = v18;
        v6 = v10;
        *v10 = v17;
        v6[1] = v5;
        *(v6 + 16) = 0;
        swift_endAccess();
        v13 = v26 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update;
        swift_beginAccess();
        if (*v13)
        {
          v8 = *v13;
          v9 = *(v13 + 8);

          swift_endAccess();
          v8(v17, v18);
        }

        else
        {
          return swift_endAccess();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B070FA14(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

uint64_t sub_1B070FA6C(uint64_t a1)
{
  v2[4] = a1 + 16;
  swift_beginAccess();
  v2[0] = swift_weakLoadStrong();
  if (v2[0])
  {

    sub_1B0391AD4(v2);
    swift_endAccess();
    sub_1B070F4D8();
  }

  else
  {
    sub_1B0391AD4(v2);
    return swift_endAccess();
  }
}

uint64_t sub_1B070FB88(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v14 = a2;
  v25 = 0;
  v24 = 0;
  v19 = sub_1B0E44468();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v15 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&p_Strong - v15);
  v25 = v2;
  v24 = v3 + 16;
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5928](v16);
  v4 = v17;
  *v20 = v16;
  (*(v4 + 104))();
  v21 = sub_1B0E44488();
  (*(v17 + 8))(v20, v19);
  result = v21;
  if (v21)
  {
    MEMORY[0x1E69E5920](v16);
    v13 = v14 + 16;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      p_Strong = &Strong;
      v12 = Strong;

      sub_1B0391AD4(p_Strong);
      swift_endAccess();
      v10 = (v12 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update);
      v11 = &v22;
      swift_beginAccess();
      v6 = v10;
      v7 = *v10;
      v8 = v10[1];
      *v10 = 0;
      v6[1] = 0;
      sub_1B04197E4(v7, v8);
      swift_endAccess();
    }

    else
    {
      sub_1B0391AD4(&Strong);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B070FE28()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  result = swift_endAccess();
  if (v3)
  {
    MEMORY[0x1E69E5928](v3);
    MFCreateDiskSpaceObserverActivate(v3);
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E5920](v3);
  }

  return result;
}

uint64_t sub_1B070FEF0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  result = swift_endAccess();
  if (v3)
  {
    MEMORY[0x1E69E5928](v3);
    MFCreateDiskSpaceObserverCancel(v3);
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E5920](v3);
  }

  return result;
}

uint64_t sub_1B070FFB8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v3 = OBJC_IVAR____TtC7Message17DiskSpaceObserver_volume;
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_1B06D4E94((v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_source));
  sub_1B0713798((v0 + OBJC_IVAR____TtC7Message17DiskSpaceObserver_update));
  return v4;
}

uint64_t sub_1B07100CC(char *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v60 = a1;
  v80 = a2;
  v78 = a3;
  v79 = a4;
  v5 = v4;
  v6 = v60;
  v61 = v5;
  v62 = sub_1B0713540;
  v63 = sub_1B039BCF8;
  v64 = sub_1B0398F5C;
  v65 = sub_1B0398F5C;
  v66 = sub_1B039BCEC;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v104 = 0;
  v81 = 0;
  v67 = sub_1B0E439A8();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v71 = v30 - v70;
  v72 = sub_1B0E42BE8();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v94 = v30 - v75;
  v76 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v77 = v30 - v76;
  v82 = sub_1B0E42E68();
  v84 = *(v82 - 8);
  v83 = v82 - 8;
  v85 = v84;
  v86 = *(v84 + 64);
  v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v88 = v30 - v87;
  v89 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v90 = v30 - v89;
  v108 = v30 - v89;
  v106 = v6;
  v105 = v9;
  v103 = v10;
  v104 = v11;
  v92 = type metadata accessor for URLResourceKey(v12);
  v91 = sub_1B0E46A48();
  sub_1B06BD0C8(MEMORY[0x1E695DEB0], v13);
  sub_1B0394964();
  v93 = v14;
  sub_1B0694CF0();
  v95 = sub_1B0E45438();
  sub_1B0E42D38();
  v96 = 0;
  v97 = 0;

  sub_1B0E42BD8();
  (*(v73 + 8))(v94, v72);
  v59 = v96;
  v58 = v96;
  if ((*(v84 + 48))(v77, 1, v82) == 1)
  {
    v15 = v71;
    sub_1B06E3800(v77);
    v16 = sub_1B070E6D8();
    (*(v68 + 16))(v15, v16, v67);
    v43 = v85;
    (*(v84 + 16))(v88, v60, v82);
    v44 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v47 = 7;
    v48 = swift_allocObject();
    (*(v84 + 32))(v48 + v44, v88, v82);
    v56 = sub_1B0E43988();
    v57 = sub_1B0E458E8();
    v45 = 17;
    v50 = swift_allocObject();
    *(v50 + 16) = 32;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v46 = 32;
    v17 = swift_allocObject();
    v18 = v48;
    v49 = v17;
    *(v17 + 16) = v62;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v49;
    v53 = v19;
    *(v19 + 16) = v63;
    *(v19 + 24) = v20;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v52 = sub_1B0E46A48();
    v54 = v21;

    v22 = v50;
    v23 = v54;
    *v54 = v64;
    v23[1] = v22;

    v24 = v51;
    v25 = v54;
    v54[2] = v65;
    v25[3] = v24;

    v26 = v53;
    v27 = v54;
    v54[4] = v66;
    v27[5] = v26;
    sub_1B0394964();

    if (os_log_type_enabled(v56, v57))
    {
      v28 = v58;
      v32 = sub_1B0E45D78();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v33 = sub_1B03949A8(0, v31, v31);
      v34 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v35 = &v102;
      v102 = v32;
      v36 = &v101;
      v101 = v33;
      v37 = &v100;
      v100 = v34;
      sub_1B0394A48(2, &v102);
      sub_1B0394A48(1, v35);
      v98 = v64;
      v99 = v50;
      sub_1B03949FC(&v98, v35, v36, v37);
      v38 = v28;
      if (v28)
      {

        __break(1u);
      }

      else
      {
        v98 = v65;
        v99 = v51;
        sub_1B03949FC(&v98, &v102, &v101, &v100);
        v30[2] = 0;
        v98 = v66;
        v99 = v53;
        sub_1B03949FC(&v98, &v102, &v101, &v100);
        _os_log_impl(&dword_1B0389000, v56, v57, "Unable to get volume for path %s", v32, 0xCu);
        sub_1B03998A8(v33, 0, v31);
        sub_1B03998A8(v34, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v56);
    (*(v68 + 8))(v71, v67);
    goto LABEL_11;
  }

  (*(v84 + 32))(v90, v77, v82);
  (*(v84 + 16))(v88, v90, v82);
  MEMORY[0x1E69E5928](v80);

  v42 = sub_1B070EAB8(v88, v80, v78, v79);
  if (!v42)
  {

    (*(v84 + 8))(v90, v82);
LABEL_11:

    MEMORY[0x1E69E5920](v80);
    (*(v84 + 8))(v60, v82);
    return 0;
  }

  v107 = v42;
  v40 = *(v84 + 8);
  v39 = v84 + 8;
  v40(v90, v82);

  MEMORY[0x1E69E5920](v80);
  v40(v60, v82);

  return v42;
}

uint64_t sub_1B0710F18(uint64_t a1)
{
  v142 = a1;
  v143 = sub_1B0713540;
  v144 = sub_1B039BCF8;
  v145 = sub_1B03FB774;
  v146 = sub_1B03B0DF8;
  v147 = sub_1B03FB774;
  v148 = sub_1B06BCD8C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B0398F5C;
  v151 = sub_1B039BCEC;
  v152 = sub_1B0398F5C;
  v153 = sub_1B0398F5C;
  v154 = sub_1B0399260;
  v155 = sub_1B0398F5C;
  v156 = sub_1B0398F5C;
  v157 = sub_1B03992D4;
  v158 = sub_1B0713540;
  v159 = sub_1B039BCF8;
  v160 = sub_1B0398F5C;
  v161 = sub_1B0398F5C;
  v162 = sub_1B039BCEC;
  v163 = sub_1B0713540;
  v164 = sub_1B039BCF8;
  v165 = sub_1B07135E4;
  v166 = sub_1B070B324;
  v167 = sub_1B0398F5C;
  v168 = sub_1B0398F5C;
  v169 = sub_1B039BCEC;
  v170 = sub_1B0398F5C;
  v171 = sub_1B0398F5C;
  v172 = sub_1B070B4B4;
  v223 = 0;
  v221 = 0;
  v222 = 0;
  v220 = 0;
  v219[6] = 0;
  v214 = 0;
  v213 = 0;
  v202 = 0;
  v189 = 0;
  v173 = sub_1B0E42E68();
  v175 = *(v173 - 8);
  v174 = v173 - 8;
  v176 = v175;
  v177 = *(v175 + 64);
  v178 = (v177 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v179 = v62 - v178;
  v180 = sub_1B0E439A8();
  v181 = *(v180 - 8);
  v182 = v180 - 8;
  v183 = (*(v181 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v189);
  v184 = v62 - v183;
  v185 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v186 = v62 - v185;
  v187 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v188 = v62 - v187;
  v190 = sub_1B0E42BE8();
  v191 = *(v190 - 8);
  v192 = v190 - 8;
  v193 = (*(v191 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v189);
  v198 = v62 - v193;
  v223 = v62 - v193;
  v220 = a1;
  v196 = type metadata accessor for URLResourceKey(v6);
  v195 = sub_1B0E46A48();
  v194 = v7;
  sub_1B06BD0C8(MEMORY[0x1E695DD60], v7);
  sub_1B06BD0C8(MEMORY[0x1E695DD58], v194 + 1);
  sub_1B0394964();
  v197 = v8;
  sub_1B0694CF0();
  v199 = sub_1B0E45438();
  sub_1B0E42D38();
  v200 = 0;
  v201 = 0;

  v141 = sub_1B0E42BB8();
  if (v9 & 1) != 0 || (v140 = v141, v138 = v141, v214 = v141, v139 = sub_1B0E42BC8(), (v10))
  {
    v47 = v186;
    v48 = sub_1B070E6D8();
    (*(v181 + 16))(v47, v48, v180);
    v71 = v176;
    (*(v175 + 16))(v179, v142, v173);
    v72 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v75 = 7;
    v76 = swift_allocObject();
    (*(v175 + 32))(v76 + v72, v179, v173);
    v84 = sub_1B0E43988();
    v85 = sub_1B0E458E8();
    v73 = 17;
    v78 = swift_allocObject();
    *(v78 + 16) = 34;
    v79 = swift_allocObject();
    *(v79 + 16) = 8;
    v74 = 32;
    v49 = swift_allocObject();
    v50 = v76;
    v77 = v49;
    *(v49 + 16) = v158;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v77;
    v81 = v51;
    *(v51 + 16) = v159;
    *(v51 + 24) = v52;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v80 = sub_1B0E46A48();
    v82 = v53;

    v54 = v78;
    v55 = v82;
    *v82 = v160;
    v55[1] = v54;

    v56 = v79;
    v57 = v82;
    v82[2] = v161;
    v57[3] = v56;

    v58 = v81;
    v59 = v82;
    v82[4] = v162;
    v59[5] = v58;
    sub_1B0394964();

    if (os_log_type_enabled(v84, v85))
    {
      v60 = v200;
      v64 = sub_1B0E45D78();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v65 = sub_1B03949A8(0, v63, v63);
      v66 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v67 = v219;
      v219[0] = v64;
      v68 = &v218;
      v218 = v65;
      v69 = &v217;
      v217 = v66;
      sub_1B0394A48(2, v219);
      sub_1B0394A48(1, v67);
      v215 = v160;
      v216 = v78;
      sub_1B03949FC(&v215, v67, v68, v69);
      v70 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v215 = v161;
        v216 = v79;
        sub_1B03949FC(&v215, v219, &v218, &v217);
        v62[39] = 0;
        v215 = v162;
        v216 = v81;
        sub_1B03949FC(&v215, v219, &v218, &v217);
        _os_log_impl(&dword_1B0389000, v84, v85, "Unable to get resource values for volume '%{public}s'.", v64, 0xCu);
        sub_1B03998A8(v65, 0, v63);
        sub_1B03998A8(v66, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v84);
    (*(v181 + 8))(v186, v180);
    (*(v191 + 8))(v198, v190);
    goto LABEL_22;
  }

  v137 = v139;
  v136 = v137;
  v213 = v137;
  if (v138 < 0 || (v204 = v136, v203 = 0x7FFFFFFFFFFFFFFFLL, sub_1B0E46B78(), v206 = v205, v207 = 0, v135 = v205, v134 = v205, v133 = v205, v202 = v205, v205 < 0))
  {
    v13 = v188;
    v14 = sub_1B070E6D8();
    (*(v181 + 16))(v13, v14, v180);
    v101 = v176;
    (*(v175 + 16))(v179, v142, v173);
    v102 = (*(v101 + 80) + 16) & ~*(v101 + 80);
    v111 = 7;
    v104 = swift_allocObject();
    (*(v175 + 32))(v104 + v102, v179, v173);
    v103 = 24;
    v106 = swift_allocObject();
    *(v106 + 16) = v138;
    v112 = swift_allocObject();
    *(v112 + 16) = v136;
    v126 = sub_1B0E43988();
    v127 = sub_1B0E458E8();
    v108 = 17;
    v114 = swift_allocObject();
    *(v114 + 16) = 34;
    v115 = swift_allocObject();
    v109 = 8;
    *(v115 + 16) = 8;
    v110 = 32;
    v15 = swift_allocObject();
    v16 = v104;
    v105 = v15;
    *(v15 + 16) = v143;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v105;
    v116 = v17;
    *(v17 + 16) = v144;
    *(v17 + 24) = v18;
    v117 = swift_allocObject();
    *(v117 + 16) = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = v109;
    v19 = swift_allocObject();
    v20 = v106;
    v107 = v19;
    *(v19 + 16) = v145;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v107;
    v119 = v21;
    *(v21 + 16) = v146;
    *(v21 + 24) = v22;
    v120 = swift_allocObject();
    *(v120 + 16) = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v109;
    v23 = swift_allocObject();
    v24 = v112;
    v113 = v23;
    *(v23 + 16) = v147;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v113;
    v123 = v25;
    *(v25 + 16) = v148;
    *(v25 + 24) = v26;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v122 = sub_1B0E46A48();
    v124 = v27;

    v28 = v114;
    v29 = v124;
    *v124 = v149;
    v29[1] = v28;

    v30 = v115;
    v31 = v124;
    v124[2] = v150;
    v31[3] = v30;

    v32 = v116;
    v33 = v124;
    v124[4] = v151;
    v33[5] = v32;

    v34 = v117;
    v35 = v124;
    v124[6] = v152;
    v35[7] = v34;

    v36 = v118;
    v37 = v124;
    v124[8] = v153;
    v37[9] = v36;

    v38 = v119;
    v39 = v124;
    v124[10] = v154;
    v39[11] = v38;

    v40 = v120;
    v41 = v124;
    v124[12] = v155;
    v41[13] = v40;

    v42 = v121;
    v43 = v124;
    v124[14] = v156;
    v43[15] = v42;

    v44 = v123;
    v45 = v124;
    v124[16] = v157;
    v45[17] = v44;
    sub_1B0394964();

    if (os_log_type_enabled(v126, v127))
    {
      v46 = v200;
      v94 = sub_1B0E45D78();
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v95 = sub_1B03949A8(0, v93, v93);
      v96 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v97 = &v212;
      v212 = v94;
      v98 = &v211;
      v211 = v95;
      v99 = &v210;
      v210 = v96;
      sub_1B0394A48(2, &v212);
      sub_1B0394A48(3, v97);
      v208 = v149;
      v209 = v114;
      sub_1B03949FC(&v208, v97, v98, v99);
      v100 = v46;
      if (v46)
      {

        __break(1u);
      }

      else
      {
        v208 = v150;
        v209 = v115;
        sub_1B03949FC(&v208, &v212, &v211, &v210);
        v92 = 0;
        v208 = v151;
        v209 = v116;
        sub_1B03949FC(&v208, &v212, &v211, &v210);
        v91 = 0;
        v208 = v152;
        v209 = v117;
        sub_1B03949FC(&v208, &v212, &v211, &v210);
        v90 = 0;
        v208 = v153;
        v209 = v118;
        sub_1B03949FC(&v208, &v212, &v211, &v210);
        v89 = 0;
        v208 = v154;
        v209 = v119;
        sub_1B03949FC(&v208, &v212, &v211, &v210);
        v88 = 0;
        v208 = v155;
        v209 = v120;
        sub_1B03949FC(&v208, &v212, &v211, &v210);
        v87 = 0;
        v208 = v156;
        v209 = v121;
        sub_1B03949FC(&v208, &v212, &v211, &v210);
        v86 = 0;
        v208 = v157;
        v209 = v123;
        sub_1B03949FC(&v208, &v212, &v211, &v210);
        _os_log_impl(&dword_1B0389000, v126, v127, "Resource values for volume '%{public}s'. are out of bounds: %ld %lld.", v94, 0x20u);
        sub_1B03998A8(v95, 0, v93);
        sub_1B03998A8(v96, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v126);
    (*(v181 + 8))(v188, v180);
    (*(v191 + 8))(v198, v190);
LABEL_22:
    (*(v175 + 8))(v142, v173);
    v130 = 0;
    v131 = 0;
    v132 = 1;
    return v130;
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v128 = v11;
  v129 = v12;
  v221 = v11;
  v222 = v12;
  (*(v191 + 8))(v198, v190);
  (*(v175 + 8))(v142, v173);
  v130 = v128;
  v131 = v129;
  v132 = 0;
  return v130;
}

uint64_t sub_1B0713540()
{
  sub_1B0E42E68();

  return sub_1B0710E30();
}

uint64_t sub_1B07135A4(void *a1)
{
  v1 = a1;
  v4 = sub_1B0E42CC8();

  return v4;
}

uint64_t type metadata accessor for DiskSpaceObserver(uint64_t a1)
{
  v2 = qword_1EB6DEE70;
  if (!qword_1EB6DEE70)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B071367C(uint64_t a1)
{
  updated = sub_1B0E42E68();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

void *sub_1B0713798(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t sub_1B071381C(uint64_t a1, int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v2 = a1;
  *(v2 + 8) = a2;
}

unint64_t sub_1B0713910()
{
  v2 = qword_1EB6E1A00;
  if (!qword_1EB6E1A00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1A00);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B071398C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = a2;
  v11 = a5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = static MailboxName.== infix(_:_:)(a1, v10, a4, v11);

  if (v14)
  {
    sub_1B0714E4C();
    return (sub_1B0E45ED8() & 1) != 0 && sub_1B06E5FB4(a3 & 1, a6 & 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0713C1C(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1B0713C30(unint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v5 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v6 = v5;
  sub_1B0713BE8();
  sub_1B0713BFC();
  PCG32Random.init(state:inc:)();
  *(&v6 + 1) = v1;
  v7 = __PAIR128__(a1, v2);
  sub_1B039E440(&v6);
  return v5;
}

uint64_t sub_1B0713D6C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
  sub_1B0714054();
  sub_1B0E44FB8();

  sub_1B039E440(v11);
  v9 = v12;
  if (v11[1])
  {

    return v9 & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1B0713EEC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = static MailboxName.== infix(_:_:)(v9, v10, a2, a3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v8)
  {
    sub_1B0714E4C();
    v5 = sub_1B0E45ED8();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1B0714054()
{
  v2 = qword_1EB6DB1A8;
  if (!qword_1EB6DB1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1A8);
    return WitnessTable;
  }

  return v2;
}

void sub_1B07140DC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v18 = a7;
  v16 = a1;
  v17 = a2;
  v15 = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v19 = sub_1B0714378;
  v30 = 0;
  v31 = 0;
  v28 = 0u;
  v29 = 0u;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v14 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v23 = v13 - v14;
  v30 = v7;
  v31 = v8;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  *&v29 = v11;
  *(&v29 + 1) = v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = v15;
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = &v24;
  v25 = v16;
  v26 = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
  sub_1B0714054();
  sub_1B0E44FD8();

  sub_1B039E440(&v27);
}

uint64_t sub_1B0714294(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v17 = a1;
  v10 = *a2;
  v7 = *(a2 + 8);
  v6 = *(a2 + 12);
  v16 = a2;
  v14 = a3;
  v15 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = static MailboxName.== infix(_:_:)(v10, v7, a3, a4);

  result = v11;
  if (v11)
  {
    v12 = v6;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v13, &v12, v5);
  }

  return result;
}

uint64_t sub_1B07143A4(uint64_t a1, int a2, int a3, char a4)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v27 = 0;
  v40 = a1;
  v41 = a2;
  v39 = a3;
  v38 = a4 & 1;
  v37 = v4;
  v24 = *v4;
  v21 = v4[1];
  v22 = v4[2];
  v23 = v4[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = sub_1B0713CDC(a1, a2, a3, v24, v21, v22, v23);

  result = v25;
  if (!v25)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0713B20();
    v34 = v6;
    v35 = v7;
    v36 = v8;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v31 = v6;
    v32 = v7;
    v33 = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = sub_1B0E452A8();

    if (v16 < *(v17 + 24))
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
      sub_1B0E452E8();
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = sub_1B0E452A8();

      if (v12 < 0)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v28 = 0;
      v29 = v12;
      sub_1B039A4F8();
      sub_1B0714728();
      sub_1B0E46588();
      v27 = v30;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
      v11 = sub_1B0E45398();
      *v9 = v13;
      *(v9 + 8) = v14;
      *(v9 + 16) = v15;

      v11(v26, 0, v10);
    }
  }

  return result;
}

unint64_t sub_1B0714728()
{
  v2 = qword_1EB6DEC88;
  if (!qword_1EB6DEC88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEC88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07147A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
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

uint64_t sub_1B07148E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_1B0714AD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B0714BF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B0714DD0()
{
  v2 = qword_1EB6E1A10;
  if (!qword_1EB6E1A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0714E4C()
{
  v2 = qword_1EB6DE1C0;
  if (!qword_1EB6DE1C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0714EC4(uint64_t a1)
{
  v9 = a1;
  v11 = 0;
  v4[1] = 0;
  v5 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = v4 - v5;
  v6 = (*(*(sub_1B0E45948() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = v4 - v6;
  v11 = v1;
  sub_1B06BB524(v1, v2);
  sub_1B0714FF8(v7, v8);
  v10 = sub_1B0E45958();
  MEMORY[0x1E69E5928](v10);
  v12 = v10;
  sub_1B06BB840(v9);
  MEMORY[0x1E69E5920](v12);
  return v10;
}

uint64_t sub_1B0714FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v95 = a1;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v73 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v29 - v73;
  v75 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v29 - v73);
  v76 = &v29 - v75;
  v119 = &v29 - v75;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  v77 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v78 = (&v29 - v77);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A18, &unk_1B0E9AD98);
  v79 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v29 - v79;
  v81 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v29 - v79);
  v82 = (&v29 - v81);
  v83 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v29 - v83;
  v118 = &v29 - v83;
  v85 = 0;
  v86 = sub_1B0E45918();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v85);
  v90 = &v29 - v89;
  v91 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v29 - v91;
  v93 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v29 - v93;
  v117 = &v29 - v93;
  v96 = sub_1B0E45948();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v95);
  v100 = &v29 - v99;
  v101 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v102 = &v29 - v101;
  v116 = &v29 - v101;
  v115 = v16;
  v103 = *v16;
  if (v103)
  {
    switch(v103)
    {
      case 1:
        (*(v87 + 104))(v92, *MEMORY[0x1E699A638], v86, v15);
        break;
      case 2:
        (*(v87 + 104))(v92, *MEMORY[0x1E699A640], v86, v15);
        break;
      case 3:
        (*(v87 + 104))(v92, *MEMORY[0x1E699A650], v86, v15);
        break;
      case 4:
        (*(v87 + 104))(v92, *MEMORY[0x1E699A658], v86, v15);
        break;
      default:
        (*(v87 + 104))(v92, *MEMORY[0x1E699A630], v86, v15);
        break;
    }
  }

  else
  {
    (*(v87 + 104))(v92, *MEMORY[0x1E699A648], v86, v15);
  }

  (*(v87 + 32))(v94, v92, v86);
  v70 = 0;
  v17 = type metadata accessor for ConnectionStatus.Error(0);
  sub_1B07161B4((v95 + *(v17 + 20)), v78);
  v71 = type metadata accessor for ConnectionStatus.Error.Details(v70);
  if ((*(*(v71 - 8) + 48))(v78, 1) == 1)
  {
    v18 = sub_1B0E45938();
    (*(*(v18 - 8) + 56))(v82, 1);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v41 = *v78;
        v48 = v78[1];
        v42 = v78[2];
        v47 = v78[3];
        v109 = v41;
        v110 = v48;
        v107 = v42;
        v108 = v47;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = v42;
        v20 = v82;
        v21 = v47;
        v22 = v48;
        *v82 = v41;
        v20[1] = v22;
        v20[2] = v19;
        v20[3] = v21;
        v43 = *MEMORY[0x1E699A680];
        v46 = sub_1B0E45938();
        v44 = *(v46 - 8);
        v45 = v46 - 8;
        (*(v44 + 104))(v82, v43);
        (*(v44 + 56))(v82, 0, 1, v46);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v35 = *v78;
          v40 = v78[1];
          v111 = v35;
          v112 = v40;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v23 = v35;
          v24 = v82;
          v25 = v40;
          *v82 = 0;
          v24[1] = 0;
          v24[2] = v23;
          v24[3] = v25;
          v36 = *MEMORY[0x1E699A680];
          v39 = sub_1B0E45938();
          v37 = *(v39 - 8);
          v38 = v39 - 8;
          (*(v37 + 104))(v82, v36);
          (*(v37 + 56))(v82, 0, 1, v39);
        }

        else
        {
          v29 = *v78;
          v34 = v78[1];
          v113 = v29;
          v114 = v34;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v26 = v82;
          v27 = v34;
          *v82 = v29;
          v26[1] = v27;
          v26[2] = 0;
          v26[3] = 0;
          v30 = *MEMORY[0x1E699A680];
          v33 = sub_1B0E45938();
          v31 = *(v33 - 8);
          v32 = v33 - 8;
          (*(v31 + 104))(v82, v30);
          (*(v31 + 56))(v82, 0, 1, v33);
        }
      }
    }

    else
    {
      v65 = sub_1B0E441D8();
      v66 = *(v65 - 8);
      v67 = v65 - 8;
      v68 = (*(v66 + 88))(v78);
      if (v68 == *MEMORY[0x1E6977D68])
      {
        (*(v66 + 96))(v78, v65);
        v104 = *v78;
        *v82 = v104;
        v61 = *MEMORY[0x1E699A678];
        v64 = sub_1B0E45938();
        v62 = *(v64 - 8);
        v63 = v64 - 8;
        (*(v62 + 104))(v82, v61);
        (*(v62 + 56))(v82, 0, 1, v64);
      }

      else if (v68 == *MEMORY[0x1E6977D58])
      {
        (*(v66 + 96))(v78, v65);
        v105 = *v78;
        *v82 = v105;
        v57 = *MEMORY[0x1E699A660];
        v60 = sub_1B0E45938();
        v58 = *(v60 - 8);
        v59 = v60 - 8;
        (*(v58 + 104))(v82, v57);
        (*(v58 + 56))(v82, 0, 1, v60);
      }

      else if (v68 == *MEMORY[0x1E6977D60])
      {
        (*(v66 + 96))(v78, v65);
        v106 = *v78;
        *v82 = v106;
        v53 = *MEMORY[0x1E699A668];
        v56 = sub_1B0E45938();
        v54 = *(v56 - 8);
        v55 = v56 - 8;
        (*(v54 + 104))(v82, v53);
        (*(v54 + 56))(v82, 0, 1, v56);
      }

      else
      {
        v49 = *MEMORY[0x1E699A670];
        v52 = sub_1B0E45938();
        v50 = *(v52 - 8);
        v51 = v52 - 8;
        (*(v50 + 104))(v82, v49);
        (*(v50 + 56))(v82, 0, 1, v52);
        (*(v66 + 8))(v78, v65);
      }
    }
  }

  sub_1B0716400(v82, v84);
  ConnectionStatus.Error.backedOffUntil.getter(v76);
  (*(v87 + 16))(v90, v94, v86);
  sub_1B0716528(v84, v80);
  sub_1B06BC2F4(v76, v74);
  sub_1B0E45928();
  (*(v97 + 32))(v102, v100, v96);
  sub_1B06B97A8(v76);
  sub_1B0716650(v84);
  (*(v87 + 8))(v94, v86);
  (*(v97 + 16))(v72, v102, v96);
  sub_1B06BB840(v95);
  return (*(v97 + 8))(v102, v96);
}

void *sub_1B07161B4(void *a1, void *a2)
{
  v12 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        *a2 = *a1;
        v7 = a1[1];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[1] = v7;
        a2[2] = a1[2];
        v8 = a1[3];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[3] = v8;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        *a2 = *a1;
        if (EnumCaseMultiPayload == 2)
        {
          v6 = a1[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[1] = v6;
        }

        else
        {
          v5 = a1[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[1] = v5;
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v2 = sub_1B0E441D8();
      (*(*(v2 - 8) + 16))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    (*(v13 + 56))(a2, 0, 1, v12);
  }

  return a2;
}

void *sub_1B0716400(const void *a1, void *a2)
{
  v6 = sub_1B0E45938();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A18, &unk_1B0E9AD98);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1B0716528(const void *a1, void *a2)
{
  v6 = sub_1B0E45938();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A18, &unk_1B0E9AD98);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B0716650(uint64_t a1)
{
  v3 = sub_1B0E45938();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B07166F8()
{
  v5 = 0;
  v6 = v0;
  sub_1B07167A8();
  v5 = sub_1B0E44588();
  v4 = &v5;
  BodyStructure.enumerateParts(_:)(sub_1B07169A4, v3);
  v2 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(&v5);
  return v2;
}

unint64_t sub_1B07167A8()
{
  v2 = qword_1EB6DE670;
  if (!qword_1EB6DE670)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE670);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0716820(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  sub_1B07169CC(a2, v8);
  memcpy(__dst, a2, 0xB1uLL);
  if (sub_1B0717014(__dst) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    memcpy(v14, v3, sizeof(v14));
    return sub_1B0717020(v14);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    memcpy(v13, v5, sizeof(v13));
    memcpy(v15, &v13[1], sizeof(v15));
    sub_1B0717138(v15, v7);
    v16 = v15[9];
    sub_1B0717224();
    if (!v16)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
      sub_1B0E454D8();
    }

    return sub_1B071728C(v13);
  }
}

uint64_t sub_1B07169CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = a1[11];
  v15 = a1[12];
  v16 = a1[13];
  v17 = a1[14];
  v18 = a1[15];
  v19 = a1[16];
  v20 = a1[17];
  v21 = a1[18];
  v22 = a1[19];
  v23 = a1[20];
  v24 = a1[21];
  v25 = *(a1 + 176);
  sub_1B0716BB8(*a1, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  result = a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = v15;
  *(a2 + 104) = v16;
  *(a2 + 112) = v17;
  *(a2 + 120) = v18;
  *(a2 + 128) = v19;
  *(a2 + 136) = v20;
  *(a2 + 144) = v21;
  *(a2 + 152) = v22;
  *(a2 + 160) = v23;
  *(a2 + 168) = v24;
  *(a2 + 176) = v25 & 1;
  return result;
}

double sub_1B0716BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0716F5C(a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0716D54(a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

double sub_1B0716D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0716DEC(a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

double sub_1B0716DEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 != 1)
  {
    sub_1B0716E6C(result, a2);
    return sub_1B0716EC4(a6, a7, a8, a9);
  }

  return v9;
}

uint64_t sub_1B0716E6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

double sub_1B0716EC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0716F14(a2, a3, a4);
  }

  return v4;
}

double sub_1B0716F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

double sub_1B0716F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    return sub_1B0716DEC(a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

void *sub_1B0717020(void *a1)
{

  if (a1[4])
  {

    if (a1[7] != 1)
    {
      if (a1[7])
      {
      }

      if (a1[11])
      {

        if (a1[14])
        {
        }
      }
    }
  }

  return a1;
}

void *sub_1B0717138(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  a2[3] = a1[3];
  v6 = a1[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[4] = v6;
  a2[5] = a1[5];
  v7 = a1[6];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[6] = v7;
  a2[7] = a1[7];
  v9 = a1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[8] = v9;
  a2[9] = a1[9];
  return result;
}

void sub_1B0717224()
{
}

void *sub_1B071728C(void *a1)
{

  if (a1[12] != 1)
  {

    if (a1[14] != 1)
    {
      if (a1[14])
      {
      }

      if (a1[18])
      {

        if (a1[21])
        {
        }
      }
    }
  }

  return a1;
}

uint64_t sub_1B07173D0()
{
  v11 = [objc_opt_self() processInfo];
  inLowPowerMode = [v11 isLowPowerModeEnabled];
  v5 = [objc_opt_self() 0x1FA92D2E8];
  isPluggedIn = [v5 isPluggedIn];
  MEMORY[0x1E69E5920](v5);
  LODWORD(v16) = 0;
  BYTE4(v16) = 1;
  v8 = Environment.Power.init(inLowPowerMode:isPluggedIn:batteryPercentage:)(inLowPowerMode, isPluggedIn, v16);
  v9 = [objc_opt_self() 0x1FA92D2E8];
  v10 = sub_1B07176A0();
  MEMORY[0x1E69E5920](v9);
  v12 = EFProtectedDataAvailable() ^ 1;
  [v11 thermalState];
  v13 = [objc_opt_self() defaultInstance];
  if (v13)
  {
    v4 = v13;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 26;
    LODWORD(v3) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  [v4 unreconciledMessageCount];
  MEMORY[0x1E69E5920](v4);
  v15 = Environment.init(power:appState:isLocked:thermalState:availableFileSystemSpace:unreconciledMessageCount:)(v8, v10, v12);
  MEMORY[0x1E69E5920](v11);
  LOWORD(v14) = v15;
  BYTE2(v14) = BYTE2(v15);
  return v14;
}

uint64_t sub_1B0717708()
{
  LOWORD(v2) = *(v0 + 16);
  BYTE2(v2) = *(v0 + 18);
  return v2;
}

BOOL sub_1B0717754(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = *(a1 + 16);
  BYTE2(v4) = *(a1 + 18);
  LOWORD(v3) = *(a2 + 16);
  BYTE2(v3) = *(a2 + 18);
  return static Environment.__derived_struct_equals(_:_:)(v4, *(a1 + 24), *(a1 + 32), *(a1 + 40), v3, *(a2 + 24), *(a2 + 32), *(a2 + 40));
}

id sub_1B07178A8()
{
  result = sub_1B07178C8();
  qword_1EB6DBAA0 = result;
  return result;
}

id sub_1B07178C8()
{
  _s27ContentProtectionObservableCMa();
  v1 = sub_1B0717918();
  sub_1B0717940();
  return v1;
}

uint64_t sub_1B0717940()
{
  v11 = sub_1B0718144;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v13 = 0;
  v17 = sub_1B0E44238();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v6 - v6;
  v21 = sub_1B0E44288();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v7 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v20 = &v6 - v7;
  v34 = v0;
  MEMORY[0x1E69E5928](v0);
  v9 = v0;
  p_cb = &OBJC_PROTOCOL___EFObserver.cb;
  v8 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_queue);
  MEMORY[0x1E69E5928](v8);
  EFRegisterContentProtectionObserver();
  MEMORY[0x1E69E5920](v8);
  swift_unknownObjectRelease();
  ObservedState = EFContentProtectionGetObservedState();
  v33 = ObservedState;
  v24 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer);
  MEMORY[0x1E69E5928](v24);
  v32 = v24;
  v23 = *(v0 + *(p_cb + 326));
  MEMORY[0x1E69E5928](v23);
  MEMORY[0x1E69E5928](v24);
  v1 = swift_allocObject();
  v2 = v11;
  v3 = v1;
  v4 = ObservedState;
  *(v3 + 16) = v24;
  *(v3 + 24) = v4;
  v30 = v2;
  v31 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = 0;
  v28 = sub_1B038C908;
  v29 = &block_descriptor_3;
  v22 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v13, v20, v16, v22);
  (*(v14 + 8))(v16, v17);
  (*(v18 + 8))(v20, v21);
  _Block_release(v22);

  MEMORY[0x1E69E5920](v23);
  return MEMORY[0x1E69E5920](v24);
}

uint64_t *sub_1B0717C58()
{
  if (qword_1EB6DBA90 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBAA0;
}

uint64_t sub_1B0717CB8()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0717D00()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observable);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0717D48()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *sub_1B0717D90()
{
  ObjectType = swift_getObjectType();
  v24 = 0;
  v23 = 0;
  v14 = 0;
  v6 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = &v6 - v6;
  v7 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v12 = &v6 - v7;
  v8 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v11 = &v6 - v8;
  v24 = v0;
  v15 = v0;
  sub_1B06CCC58();
  v9 = sub_1B0E44838();
  v10 = v1;
  sub_1B0E44278();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v13);
  *&v15[OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_queue] = sub_1B0E45A08();
  v16 = v24;
  v2 = [objc_opt_self() observableObserver];
  *&v16[OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer] = v2;
  v17 = *&v24[OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer];
  MEMORY[0x1E69E5928](v17);
  swift_getObjectType();
  v20 = [v17 replay_];
  MEMORY[0x1E69E5920](v17);
  v23 = v20;
  swift_getObjectType();
  v3 = [v20 connect];
  swift_unknownObjectRelease();
  v18 = v24;
  MEMORY[0x1E69E5928](v20);
  swift_getObjectType();
  v4 = ObjectType;
  *&v18[OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observable] = v20;
  v22.receiver = v24;
  v22.super_class = v4;
  v21 = objc_msgSendSuper2(&v22, sel_init);
  MEMORY[0x1E69E5928](v21);
  v24 = v21;
  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5920](v24);
  return v21;
}

uint64_t sub_1B07180C8(void *a1)
{
  swift_getObjectType();
  sub_1B039A494();
  sub_1B041A044();
  sub_1B041A060(v1);
  [a1 observerDidReceiveResult_];
  return swift_unknownObjectRelease();
}

id sub_1B0718150()
{
  ObjectType = swift_getObjectType();
  v4 = v0;
  MEMORY[0x1E69E5928](v0);
  EFUnregisterContentProtectionObserver();
  swift_unknownObjectRelease();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B071826C()
{
  result = sub_1B071828C();
  qword_1EB7381F0 = result;
  return result;
}

id sub_1B071828C()
{
  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AB8, &qword_1B0E9AE80);
  sub_1B0E46A48();
  v29 = v0;
  v16 = [objc_opt_self() 0x1FA92D2E8];
  v17 = [v16 lowPowerModeObservable];
  MEMORY[0x1E69E5920](v16);
  *v29 = v17;
  v18 = [objc_opt_self() 0x1FA92D2E8];
  v19 = [v18 pluggedInObservable];
  MEMORY[0x1E69E5920](v18);
  v29[1] = v19;
  v20 = [objc_opt_self() 0x1FA92D2E8];
  v21 = [v20 batteryLevelObservable];
  MEMORY[0x1E69E5920](v20);
  v29[2] = v21;
  v22 = [objc_opt_self() 0x1FA92D2E8];
  v23 = [v22 appIsVisibleObservable];
  MEMORY[0x1E69E5920](v22);
  v29[3] = v23;
  v1 = sub_1B0717C58();
  v24 = *v1;
  MEMORY[0x1E69E5928](*v1);
  v25 = *(v24 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observable);
  MEMORY[0x1E69E5928](v25);
  MEMORY[0x1E69E5920](v24);
  v29[4] = v25;
  v26 = [objc_opt_self() processInfo];
  v27 = [v26 mf_thermalStateObservable];
  MEMORY[0x1E69E5920](v26);
  v29[5] = v27;
  v28 = *sub_1B0718818();

  v30 = *(v28 + 16);
  MEMORY[0x1E69E5928](v30);

  v29[6] = v30;
  v31 = [objc_opt_self() defaultInstance];
  if (v31)
  {
    v14 = v31;
  }

  else
  {
    LOBYTE(v4) = 2;
    v5 = 129;
    LODWORD(v6) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  v13 = [v14 unreconciledMessageCountObservable];
  MEMORY[0x1E69E5920](v14);
  if (v13)
  {
    v12 = v13;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v29[7] = v12;
  sub_1B0394964();
  v7 = sub_1B0E451A8();

  v9 = [v15 combineLatest_];
  MEMORY[0x1E69E5920](v7);
  v37 = sub_1B0391370;
  v38 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = 0;
  v35 = sub_1B0391210;
  v36 = &block_descriptor_16_0;
  v8 = _Block_copy(&aBlock);
  v10 = [v9 map_];
  _Block_release(v8);
  MEMORY[0x1E69E5920](v9);
  v11 = [v10 replay];
  MEMORY[0x1E69E5920](v10);
  swift_getObjectType();
  v2 = [v11 connect];
  swift_unknownObjectRelease();
  swift_getObjectType();
  return v11;
}

uint64_t *sub_1B0718818()
{
  if (qword_1EB6DEE60 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DEE68;
}

uint64_t *sub_1B0718878()
{
  if (qword_1EB6DEEB8 != -1)
  {
    swift_once();
  }

  return &qword_1EB7381F0;
}

uint64_t sub_1B07188D8()
{
  v0 = sub_1B0718878();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1B0718910()
{
  result = sub_1B0718930();
  qword_1EB6DEE68 = result;
  return result;
}

uint64_t sub_1B0718930()
{
  _s10ObservableCMa();
  v1 = sub_1B0718980();
  sub_1B07189BC();
  return v1;
}

uint64_t sub_1B07189BC()
{
  v7 = sub_1B0719500;
  v20 = 0;
  v19 = 0;
  v8 = sub_1B0E44238();
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v3 - v9;
  v20 = v0;
  v11 = *(v0 + 24);

  if (v11)
  {
    v6 = v11;
    v5 = v11;
    v19 = v11;
    v4 = *(v11 + 16);
    MEMORY[0x1E69E5928](v4);
    v3[2] = sub_1B0E44458();
    v3[0] = sub_1B0E46A48();
    sub_1B0E44228();
    sub_1B0394964();
    v3[1] = v2;
    sub_1B039B924();
    sub_1B0E46028();

    v17 = v7;
    v18 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = 0;
    v15 = sub_1B038C908;
    v16 = &block_descriptor_3;
    _Block_copy(&aBlock);
    v3[3] = sub_1B0E44438();

    sub_1B0E459F8();

    MEMORY[0x1E69E5920](v4);
  }

  return result;
}

uint64_t sub_1B0718BB0()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_1B0718BDC()
{
  v47 = sub_1B0719524;
  v23 = sub_1B07193F8;
  v24 = *v0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v25 = 0;
  v51 = 0;
  v41 = 0;
  v26 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v38 = &v18 - v26;
  v27 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v18 - v27;
  v28 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v36 = &v18 - v28;
  v44 = sub_1B0E42E68();
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v29 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v18 - v29;
  v30 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v29);
  v45 = &v18 - v30;
  v62 = &v18 - v30;
  v61 = v0;
  v32 = NSHomeDirectory();
  sub_1B0E44AD8();
  v31 = v2;
  v33 = 1;
  sub_1B0E42D48();

  MEMORY[0x1E69E5920](v32);
  sub_1B06CCC58();
  v34 = sub_1B0E44838();
  v35 = v3;
  sub_1B0E44278();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v38);
  v4 = sub_1B0E45A08();
  v5 = v39;
  v46 = v4;
  v60 = v4;
  v49 = [objc_opt_self() observableObserver];
  MEMORY[0x1E69E5928](v49);
  v59 = v49;
  MEMORY[0x1E69E5928](v49);
  swift_getObjectType();
  v40 = [v49 replay];
  MEMORY[0x1E69E5920](v49);
  v58 = v40;
  swift_getObjectType();
  v6 = [v40 connect];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](v40);
  swift_getObjectType();
  v7 = v41;
  *(v5 + 16) = v40;
  type metadata accessor for DiskSpaceObserver(v7);
  (*(v42 + 16))(v48, v45, v44);
  MEMORY[0x1E69E5928](v46);
  MEMORY[0x1E69E5928](v49);
  v8 = swift_allocObject();
  v9 = v46;
  v10 = v47;
  v11 = v8;
  v12 = v48;
  *(v11 + 16) = v49;
  v50 = sub_1B07100CC(v12, v9, v10, v11);
  MEMORY[0x1E69E5920](v49);
  v57 = v50;
  v56 = v50;
  v22 = v50 == 0;
  if (v50)
  {
    goto LABEL_4;
  }

  v13 = v25;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v54 = v14;
  v55 = v15;
  v21 = v52;
  v52[0] = v14;
  v52[1] = v15;
  v16 = sub_1B071952C();
  sub_1B039C030(v21, v23, 0, &unk_1F26AA8E0, MEMORY[0x1E69E73E0], v16, v20, &v53);
  if (!v13)
  {
    v19 = v53;
    v51 = v53;
    v18 = v59;
    MEMORY[0x1E69E5928](v59);
    swift_getObjectType();
    MEMORY[0x1E69E5928](v19);
    [v18 observerDidReceiveResult_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v18);
    MEMORY[0x1E69E5920](v19);
LABEL_4:

    *(v39 + 24) = v50;

    MEMORY[0x1E69E5920](v40);
    MEMORY[0x1E69E5920](v59);
    MEMORY[0x1E69E5920](v46);
    (*(v42 + 8))(v45, v44);
    return v39;
  }

  MEMORY[0x1E69E5920](*(v39 + 16));
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1B07192E4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v10[2] = a1;
  v10[3] = a2;
  v10[1] = a3;
  v9[0] = a1;
  v9[1] = a2;
  v4 = sub_1B071952C();
  sub_1B039C030(v9, sub_1B07193F8, 0, &unk_1F26AA8E0, MEMORY[0x1E69E73E0], v4, v8, v10);
  v6 = v10[0];
  swift_getObjectType();
  MEMORY[0x1E69E5928](v6);
  [a3 observerDidReceiveResult_];
  swift_unknownObjectRelease();
  return MEMORY[0x1E69E5920](v6);
}

id sub_1B07193F8@<X0>(uint64_t *a3@<X8>)
{
  sub_1B071952C();
  v6 = sub_1B0E450C8();
  v4 = sub_1B0E450E8();
  result = sub_1B0719480(v6, v4);
  *a3 = result;
  return result;
}

unint64_t sub_1B071952C()
{
  v2 = qword_1EB6DED80;
  if (!qword_1EB6DED80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DED80);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0719590()
{
  v3 = *(v0 + 24);

  if (v3)
  {
    sub_1B070FEF0();
  }

  MEMORY[0x1E69E5920](*(v2 + 16));
  sub_1B0391AD4((v2 + 24));
  return v2;
}

uint64_t block_copy_helper_14_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0719748()
{
  v2 = *v0;

  return v2;
}

uint64_t _s17EventUpdateHelperVMa(uint64_t a1)
{
  v2 = qword_1EB6DBDF0;
  if (!qword_1EB6DBDF0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0719834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  updated = _s17EventUpdateHelperVMa(0);
  return sub_1B04158DC(a3, a4 + *(updated + 20));
}

uint64_t sub_1B0719880@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v22 = a1;
  v12[1] = a2;
  v5 = v4;
  v15 = v5;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v29 = a3;
  v12[2] = 0;
  v13 = (*(*(_s18MailboxPersistenceVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = v12 - v13;
  v14 = (*(*(_s17EventUpdateHelperVMa(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v23 = (v12 - v14);
  v28 = v12 - v14;
  v26 = v8;
  v27 = a2;
  v25 = v9;
  v10 = (v9 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder);
  v18 = *v10;
  v19 = v10[1];

  v16 = v15 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v17 = &v24;
  swift_beginAccess();
  sub_1B03F4D78(v16, v20);
  swift_endAccess();
  sub_1B0719834(v18, v19, v20, v23);
  v22(v23);
  return sub_1B0719A40(v23);
}

uint64_t sub_1B0719A40(uint64_t a1)
{

  v3 = *(_s17EventUpdateHelperVMa(0) + 20);
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))();
  v4 = _s18MailboxPersistenceVMa(0);
  MEMORY[0x1E69E5920](*(a1 + v3 + *(v4 + 20)));

  return a1;
}

uint64_t *sub_1B0719B38(uint64_t a1)
{
  v81 = a1;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v88 = 0;
  v84 = 0;
  v83 = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v17 - v64;
  v66 = sub_1B0E42E68();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (v67[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v17 - v69;
  v71 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v69);
  v72 = &v17 - v71;
  v73 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v71);
  v74 = &v17 - v73;
  v75 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v17 - v75;
  v77 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v17 - v77;
  v79 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v17 - v79;
  v99 = v8;
  v98 = v1;
  objc_opt_self();
  v82 = swift_dynamicCastObjCClass();
  if (v82)
  {
    v57 = v82;
    MEMORY[0x1E69E5928](v82);
    MEMORY[0x1E69E5928](v57);
    v9 = [v57 transferType];
    v60 = &v96;
    v96 = v9;
    v58 = &v95;
    v95 = 2;
    v59 = type metadata accessor for ECTransferMessageActionType(0);
    v61 = sub_1B071C014();
    if (sub_1B0E46AE8())
    {
      v83 = v57;
      v10 = sub_1B0394868();
      v55 = sub_1B071A9EC(v57, v10 & 1, v62);
      MEMORY[0x1E69E5920](v57);
      MEMORY[0x1E69E5920](v57);
      return v55;
    }

    MEMORY[0x1E69E5920](v57);
    MEMORY[0x1E69E5928](v57);
    v94 = [v57 transferType];
    v93 = 3;
    if (sub_1B0E46AE8())
    {
      v84 = v57;
      v11 = sub_1B0394868();
      v54 = sub_1B071B238(v57, v11 & 1, v62);
      MEMORY[0x1E69E5920](v57);
      MEMORY[0x1E69E5920](v57);
      return v54;
    }

    MEMORY[0x1E69E5920](v57);
    v92 = [v57 transferType];
    v91 = 0;
    v53 = sub_1B0E46AE8();
    MEMORY[0x1E69E5928](v57);
    if (v53)
    {
      v52 = 1;
    }

    else
    {
      v90 = [v57 transferType];
      v89 = 1;
      v52 = sub_1B0E46AE8();
    }

    v51 = v52;
    MEMORY[0x1E69E5920](v57);
    if (v51)
    {
      v88 = v57;
      v49 = [v57 itemsToDownload];
      v45 = sub_1B071C094();
      v48 = sub_1B0E451B8();
      v87 = v48;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
      v47 = sub_1B071C0F8();
      v50 = sub_1B0E45748();

      MEMORY[0x1E69E5920](v49);
      if (v50)
      {
        v43 = [v57 itemsToCopy];
        v42 = sub_1B0E451B8();
        v86 = v42;
        v44 = sub_1B0E45748();

        MEMORY[0x1E69E5920](v43);
        if ((v44 & 1) == 0)
        {
          MEMORY[0x1E69E5928](v57);
          v36 = [v57 mailboxURL];
          sub_1B0E42DE8();
          v37 = v67[4];
          v38 = v67 + 4;
          v37(v80, v74, v66);
          MEMORY[0x1E69E5920](v57);
          v39 = v67[7];
          v40 = v67 + 7;
          v39(v80, 0, 1, v66);
          v41 = [v57 destinationMailboxURL];
          if (v41)
          {
            v35 = v41;
            v34 = v41;
            sub_1B0E42DE8();
            v37(v78, v72, v66);
            v39(v78, 0, 1, v66);
            MEMORY[0x1E69E5920](v34);
          }

          else
          {
            v39(v78, 1, 1, v66);
          }

          v31 = &v65[*(v63 + 48)];
          sub_1B071C180(v80, v65);
          sub_1B071C180(v78, v31);
          v32 = v67[6];
          v33 = v67 + 6;
          if (v32(v65, 1, v66) == 1)
          {
            if (v32(v31, 1, v66) == 1)
            {
              sub_1B06E3800(v65);
              v30 = 1;
              goto LABEL_21;
            }
          }

          else
          {
            sub_1B071C180(v65, v76);
            if (v32(v31, 1, v66) != 1)
            {
              v37(v72, v76, v66);
              v37(v70, v31, v66);
              sub_1B071C3D4();
              v29 = sub_1B0E44A28();
              v28 = v67[1];
              v27 = v67 + 1;
              v28(v70, v66);
              v28(v72, v66);
              sub_1B06E3800(v65);
              v30 = v29;
              goto LABEL_21;
            }

            (v67[1])(v76, v66);
          }

          sub_1B071C2A8(v65);
          v30 = 0;
LABEL_21:
          v26 = v30;
          sub_1B06E3800(v78);
          sub_1B06E3800(v80);
          MEMORY[0x1E69E5920](v36);
          if (v26)
          {
            v12 = sub_1B0394868();
            v25 = sub_1B071A9EC(v57, v12 & 1, v62);
            MEMORY[0x1E69E5920](v57);
            return v25;
          }

          else
          {
            v13 = sub_1B0394868();
            v24 = sub_1B071B78C(v57, v13 & 1, v62);
            MEMORY[0x1E69E5920](v57);
            return v24;
          }
        }

        v22 = [v57 itemsToDelete];
        v21 = sub_1B0E451B8();
        v85 = v21;
        v23 = sub_1B0E45748();

        MEMORY[0x1E69E5920](v22);
        if ((v23 & 1) == 0)
        {
          v14 = sub_1B0394868();
          v20 = sub_1B071BD08(v57, v14 & 1, v62);
          MEMORY[0x1E69E5920](v57);
          return v20;
        }
      }

      MEMORY[0x1E69E5920](v57);
      return 0xF000000000000007;
    }

    MEMORY[0x1E69E5920](v57);
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    return 0xF000000000000007;
  }

  v17 = v19;
  MEMORY[0x1E69E5928](v19);
  v97 = v17;
  v15 = sub_1B0394868();
  v18 = sub_1B071BD08(v17, v15 & 1, v62);
  MEMORY[0x1E69E5920](v17);
  return v18;
}

uint64_t *sub_1B071A9EC(void *a1, int a2, uint64_t a3)
{
  v63 = a3;
  v65 = a2;
  v64 = a1;
  v55 = a2;
  v58 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v56 = 0;
  v75 = 0;
  v3 = _s18MailboxPersistenceVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v25 - v61;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v25 - v61;
  v66 = sub_1B0E42E68();
  v67 = *(v66 - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v25 - v71;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v72 = &v25 - v71;
  v83 = &v25 - v71;
  v82 = v8;
  v81 = v9;
  v80 = v10;
  v73 = [v8 destinationMailboxURL];
  if (v73)
  {
    v54 = v73;
    v53 = v73;
    sub_1B0E42DE8();
    (*(v68 + 32))(v62, v70, v66);
    (*(v68 + 56))(v62, 0, 1, v66);
  }

  else
  {
    (*(v68 + 56))(v62, 1, 1, v66);
  }

  if ((*(v68 + 48))(v62, 1, v66) == 1)
  {
    sub_1B06E3800(v62);
LABEL_14:
    v28 = 0xF000000000000007;
    v29 = v56;
    return v28;
  }

  v11 = v57;
  (*(v68 + 32))(v72, v62, v66);
  updated = _s17EventUpdateHelperVMa(0);
  sub_1B03F4D78(v63 + *(updated + 20), v11);
  (*(v68 + 16))(v60, v72, v66);
  (*(v68 + 56))(v60, 0, 1, v66);
  v52 = sub_1B07BF5C8(v60);
  v50 = v52;
  v51 = v13;
  sub_1B06E3800(v60);
  sub_1B03F4F08(v57);
  if (!v52)
  {
    (*(v68 + 8))(v72, v66);
    goto LABEL_14;
  }

  v48 = v50;
  v49 = v51;
  v14 = v56;
  v38 = v51;
  v39 = v50;
  v78 = v50;
  v79 = v51;
  v41 = [v64 itemsToCopy];
  v40 = v41;
  v42 = sub_1B071C094();
  v77 = sub_1B0E451B8();
  v15 = v64;
  v43 = &v25;
  MEMORY[0x1EEE9AC00](&v25);
  v44 = &v25 - 4;
  *(&v25 - 2) = v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071CBBC();
  v17 = sub_1B0E44F58();
  v46 = v14;
  v47 = v17;
  if (!v14)
  {
    v32 = v47;

    sub_1B039E440(&v77);
    v76 = v32;
    v33 = &v25;
    MEMORY[0x1EEE9AC00](&v25);
    v34 = &v25 - 4;
    *(&v25 - 2) = v18;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
    sub_1B071CD70();
    v19 = sub_1B0E44F58();
    v36 = 0;
    v37 = v19;
    v30 = v19;
    sub_1B039E440(&v76);
    v75 = v30;
    v74 = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD8, &unk_1B0E9AEB0);
    sub_1B071CDF8();
    if (sub_1B0E45748())
    {

      (*(v68 + 8))(v72, v66);
      v28 = 0xF000000000000007;
    }

    else
    {
      v26 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = v38;
      v21 = v26;
      *(v26 + 16) = v39;
      *(v21 + 24) = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = v55;
      v23 = v26;
      *(v26 + 32) = v30;
      *(v23 + 40) = v22 & 1;
      v27 = v23 | 0x7000000000000000;

      (*(v68 + 8))(v72, v66);
      v28 = v27;
    }

    v29 = v36;
    return v28;
  }

  __break(1u);
  result = v33;
  __break(1u);
  return result;
}

unint64_t sub_1B071B238(uint64_t a1, int a2, uint64_t a3)
{
  v48 = a1;
  v47 = a2;
  v46 = a3;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v58 = 0;
  v41 = 0;
  v3 = _s18MailboxPersistenceVMa(0);
  v39 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v31 - v39;
  v42 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v31 - v42;
  v44 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v31 - v44;
  v49 = sub_1B0E42E68();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v53 = &v31 - v52;
  v54 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v31 - v54;
  v64 = &v31 - v54;
  v63 = v9;
  v62 = v10 & 1;
  v61 = v11;
  v56 = [v9 sourceMailboxURL];
  if (v56)
  {
    v38 = v56;
    v37 = v56;
    sub_1B0E42DE8();
    (*(v50 + 32))(v45, v53, v49);
    (*(v50 + 56))(v45, 0, 1, v49);
    MEMORY[0x1E69E5920](v37);
  }

  else
  {
    (*(v50 + 56))(v45, 1, 1, v49);
  }

  if ((*(v50 + 48))(v45, 1, v49) == 1)
  {
    sub_1B06E3800(v45);
    return 0xF000000000000007;
  }

  v12 = v40;
  (*(v50 + 32))(v55, v45, v49);
  updated = _s17EventUpdateHelperVMa(0);
  sub_1B03F4D78(v46 + *(updated + 20), v12);
  (*(v50 + 16))(v43, v55, v49);
  (*(v50 + 56))(v43, 0, 1, v49);
  sub_1B07BF670(v43, &v59);
  sub_1B06E3800(v43);
  sub_1B03F4F08(v40);
  v36 = v59;
  if (v60)
  {
    (*(v50 + 8))(v55, v49);
    return 0xF000000000000007;
  }

  v35 = v36;
  v31 = v36;
  v58 = v36;
  v32 = swift_allocObject();
  v57 = v31;
  v21 = sub_1B0A22770(&v57, v14, v15, v16, v17, v18, v19, v20);
  v22 = v32;
  *(v32 + 16) = v21;
  *(v22 + 24) = v23;
  v24 = sub_1B0E46A48();
  v25 = v32;
  v26 = v50;
  v27 = v49;
  v28 = v24;
  v29 = v55;
  *(v32 + 32) = v28;
  *(v25 + 40) = 0;
  v33 = v25 | 0x8000000000000000;
  (*(v26 + 8))(v29, v27);
  return v33;
}

unint64_t sub_1B071B78C(uint64_t a1, int a2, uint64_t a3)
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v34 = 0;
  v3 = _s18MailboxPersistenceVMa(0);
  v32 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v20[-v32];
  v35 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v20[-v35];
  v37 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v20[-v37];
  v42 = sub_1B0E42E68();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v20[-v45];
  v47 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v20[-v47];
  v55 = &v20[-v47];
  v54 = v9;
  v53 = v10 & 1;
  v52 = v11;
  v49 = [v9 sourceMailboxURL];
  if (v49)
  {
    v31 = v49;
    v30 = v49;
    sub_1B0E42DE8();
    (*(v43 + 32))(v38, v46, v42);
    (*(v43 + 56))(v38, 0, 1, v42);
    MEMORY[0x1E69E5920](v30);
  }

  else
  {
    (*(v43 + 56))(v38, 1, 1, v42);
  }

  if ((*(v43 + 48))(v38, 1, v42) == 1)
  {
    sub_1B06E3800(v38);
    return 0xF000000000000007;
  }

  v12 = v33;
  (*(v43 + 32))(v48, v38, v42);
  updated = _s17EventUpdateHelperVMa(0);
  sub_1B03F4D78(v39 + *(updated + 20), v12);
  (*(v43 + 16))(v36, v48, v42);
  (*(v43 + 56))(v36, 0, 1, v42);
  v29 = sub_1B07BF5C8(v36);
  v28 = v14;
  sub_1B06E3800(v36);
  sub_1B03F4F08(v33);
  if (!v29)
  {
    (*(v43 + 8))(v48, v42);
    return 0xF000000000000007;
  }

  v26 = v29;
  v27 = v28;
  v21 = v28;
  v23 = v29;
  v50 = v29;
  v51 = v28;
  v22 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = v22;
  v16 = v21;
  *(v22 + 16) = v23;
  *(v15 + 24) = v16;
  v17 = sub_1B0E46A48();
  v18 = v22;
  *(v22 + 32) = v17;
  *(v18 + 40) = 0;
  v24 = v18 | 0x9000000000000000;

  (*(v43 + 8))(v48, v42);
  return v24;
}

unint64_t sub_1B071BD08(void *a1, int a2, uint64_t a3)
{
  v34 = a1;
  v30 = a2;
  v33 = a3;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v45 = 0;
  v31 = 0;
  v39 = sub_1B0E42E68();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v28 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v23 - v28;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v40 = &v23 - v29;
  v32 = (*(*(_s18MailboxPersistenceVMa(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v23 - v32;
  v42 = &v23 - v32;
  v50 = v5;
  v38 = 1;
  v49 = v6 & 1;
  v48 = v7;
  updated = _s17EventUpdateHelperVMa(v8);
  sub_1B03F4D78(v33 + *(updated + 20), v4);
  v41 = [v34 mailboxURL];
  sub_1B0E42DE8();
  (*(v36 + 32))(v40, v35, v39);
  (*(v36 + 56))(v40, 0, v38, v39);
  sub_1B07BF670(v40, &v46);
  sub_1B06E3800(v40);
  MEMORY[0x1E69E5920](v41);
  sub_1B03F4F08(v42);
  v43 = v46;
  if (v47)
  {
    return 0xF000000000000007;
  }

  v27 = v43;
  v24 = v43;
  v45 = v43;
  v25 = swift_allocObject();
  v44 = v24;
  v17 = sub_1B0A22770(&v44, v10, v11, v12, v13, v14, v15, v16);
  v18 = v25;
  *(v25 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = sub_1B0E46A48();
  v21 = v25;
  *(v25 + 32) = v20;
  *(v21 + 40) = 0;
  return v21 | 0x8000000000000000;
}

unint64_t sub_1B071C014()
{
  v2 = qword_1EB6DA7D0;
  if (!qword_1EB6DA7D0)
  {
    type metadata accessor for ECTransferMessageActionType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA7D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B071C094()
{
  v2 = qword_1EB6DA7E0;
  if (!qword_1EB6DA7E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA7E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B071C0F8()
{
  v2 = qword_1EB6DAED0;
  if (!qword_1EB6DAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAED0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B071C180(const void *a1, void *a2)
{
  v6 = sub_1B0E42E68();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B071C2A8(uint64_t a1)
{
  v4 = sub_1B0E42E68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_1B071C3D4()
{
  v2 = qword_1EB6DED30;
  if (!qword_1EB6DED30)
  {
    sub_1B0E42E68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B071C454(uint64_t a1)
{
  sub_1B071C540();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  sub_1B071CEA8();
  sub_1B0E44FD8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return v2;
}

uint64_t sub_1B071C540()
{
  v2 = 0;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

unint64_t sub_1B071C594(uint64_t a1, uint64_t *a2)
{
  result = sub_1B0719B38(*a2);
  if ((result & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1B071C644(result);
  }

  return result;
}

uint64_t sub_1B071C644(unint64_t a1)
{
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v25 = a1;
  if ((((a1 & 4) != 0) | (a1 >> 59) & 0x1E) == 0xE)
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v11 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = v9;
    v22 = v10;
    v20 = v11;
    v12 = *v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36B0, &qword_1B0E9AEC0);
    v1 = sub_1B071CF30();
    MEMORY[0x1B2727080](&v18, v13, v1);
    sub_1B039E440(&v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AE0, &qword_1B0E9AEC8);
    sub_1B0E465F8();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AE8, &unk_1B0E9AED0);
      sub_1B0E46608();
      if ((v16 & 0xF000000000000007) == 0xF000000000000007)
      {
        break;
      }

      if ((((v16 & 4) != 0) | (v16 >> 59) & 0x1E) == 0xE)
      {
        v7 = *((v16 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v8 = *((v16 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if ((v10 | (v10 << 32)) == (v8 | (v8 << 32)))
        {
          v6 = sub_1B04520BC(v9, v7);
        }

        else
        {
          v6 = 0;
        }

        if (v6)
        {

          v4 = swift_allocObject();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *(v4 + 16) = v9;
          *(v4 + 24) = v10;
          *(v4 + 32) = sub_1B0E45238();
          *(v4 + 40) = 0;
          v5 = sub_1B0E45398();
          *v2 = v4 | 0x7000000000000000;

          v5();

          sub_1B039E440(v19);
        }
      }

      else
      {
      }
    }

    sub_1B039E440(v19);
  }

  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36B0, &qword_1B0E9AEC0);
  return sub_1B0E452E8();
}

uint64_t sub_1B071CB08@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](v7);
  result = sub_1B0824FC8(a2, v7);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return result;
}

unint64_t sub_1B071CBBC()
{
  v2 = qword_1EB6DAEE0;
  if (!qword_1EB6DAEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B071CC44@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  v13 = a2;
  v7 = *a2;
  v8 = a2[1];

  v12[0] = v14;
  v12[1] = v6;
  v3 = sub_1B071D380();
  v9 = sub_1B092A8B0(v12, v7, v8, &unk_1F26C8EE0, v3);
  v11 = v4;

  result = v9;
  *a3 = v9;
  a3[1] = v11;
  return result;
}

unint64_t sub_1B071CD70()
{
  v2 = qword_1EB6DB140;
  if (!qword_1EB6DB140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B071CDF8()
{
  v2 = qword_1EB6DB348;
  if (!qword_1EB6DB348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1AD8, &unk_1B0E9AEB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB348);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B071CEA8()
{
  v2 = qword_1EB6DAF60;
  if (!qword_1EB6DAF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B071CF30()
{
  v2 = qword_1EB6DB338;
  if (!qword_1EB6DB338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E36B0, &qword_1B0E9AEC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB338);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B071D008(uint64_t a1)
{
  v3 = _s18MailboxPersistenceVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_1B071D0C4(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *(a3 + 16))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B071D114(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return *(a3 + 32 + a1);
  }

  result = sub_1B071D1A4(a1, a3);
  __break(1u);
  return result;
}

uint64_t sub_1B071D1A4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B0A5D9E4(82);
    v2 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v2);

    v3 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v3);

    v4 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v4);

    swift_getObjectType();
    v5 = sub_1B0E46FF8();
    MEMORY[0x1B2726E80](v5);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44C88();
    sub_1B0E465C8();
    __break(1u);
  }

  return v6;
}

unint64_t sub_1B071D380()
{
  v2 = qword_1EB6DBBE0;
  if (!qword_1EB6DBBE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B071D410(uint64_t a1, uint64_t a2)
{
  LODWORD(var10_4) = HIDWORD(a1);
  *(&var10_4 + 4) = a2;
  LOBYTE(v3) = BYTE4(a1);
  *(&v3 + 1) = *(&var10_4 + 1);
  return v3;
}

uint64_t sub_1B071D490(uint64_t result, char a2)
{
  *(v2 + 4) = result;
  *(v2 + 12) = a2 & 1;
  return result;
}

BOOL sub_1B071D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v9 = HIDWORD(a1);
  *&v9[4] = a2;
  v6[0] = BYTE4(a1);
  *&v6[1] = *&v9[1];
  *v8 = HIDWORD(a3);
  *&v8[4] = a4;
  v7[0] = BYTE4(a3);
  *&v7[1] = *&v8[1];
  sub_1B0714E4C();
  return (sub_1B0E45ED8() & 1) != 0 && (static Flags.__derived_struct_equals(_:_:)(*v6, v9[8] & 1, __SPAIR64__(*&v8[4], *v7), v8[8] & 1) & 1) != 0;
}

BOOL sub_1B071D658(void *a1, void *a2)
{
  *&v5 = *a1;
  *(&v5 + 5) = *(a1 + 5);
  *&v6 = *a2;
  *(&v6 + 5) = *(a2 + 5);
  LODWORD(v4) = *(&v5 + 5) >> 24;
  BYTE4(v4) = BYTE12(v5);
  LODWORD(v3) = *(&v6 + 5) >> 24;
  BYTE4(v3) = BYTE12(v6);
  return sub_1B071D4CC(v5, v4, v6, v3);
}

void *sub_1B071D75C(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v47 = a2;
  v64 = 0;
  v67 = sub_1B071E4DC;
  v44 = sub_1B071E5E4;
  v45 = sub_1B071E8EC;
  v46 = sub_1B071EFF8;
  v58 = *v2;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  v72 = 0u;
  v73 = 0u;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v50 = &v26 - v49;
  v51 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v26 - v51;
  v84 = &v26 - v51;
  v53 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v26 - v53;
  v55 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v26 - v55;
  v83 = &v26 - v55;
  v57 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v26 - v57;
  v82 = &v26 - v57;
  v81 = v11;
  v80 = v12;
  v79 = v2;
  sub_1B071DE90(v11, (&v26 - v57));
  v61 = sub_1B071DFC8(v62);
  v78 = v61;
  v60 = sub_1B071E140(v63, v61);
  v77 = v60;
  sub_1B071E2CC(v60);

  sub_1B03D09B8(v62);
  v76[1] = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B00, &unk_1B0E9AF50);
  v13 = sub_1B071E55C();
  v14 = v66;
  v68 = v13;
  result = sub_1B0E44FF8();
  v69 = v14;
  v70 = result;
  if (v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  v76[0] = v70;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  v17 = v69;
  v41 = v16;
  result = sub_1B0E44F58();
  v42 = v17;
  v43 = result;
  if (v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v38 = v43;
  sub_1B039E440(v76);
  v75 = v38;
  v37 = *(v59 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v37);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = sub_1B0E451A8();

  [v37 applySortedFlags_];
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v37);

  v74 = v63;
  v39 = sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v18 = v42;
  result = sub_1B0E44FD8();
  v40 = v18;
  if (v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *&v72 = sub_1B071E964(v56, v47);
  *(&v72 + 1) = v19;
  *&v73 = v20;
  *(&v73 + 1) = v21;
  v71 = v63;
  MessageIdentifierSet.init()();
  v22 = v40;
  result = sub_1B0E44FD8();
  v35 = v22;
  if (!v22)
  {
    v27 = sub_1B071F1B0(v52, v47);
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v34 = &v72;
    sub_1B07B56DC(v27, v23, v24, v25);

    v33 = *(v59 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
    MEMORY[0x1E69E5928](v33);
    v31 = v72;
    v32 = v73;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07B639C(v31, *(&v31 + 1), v32, *(&v32 + 1), v47);

    MEMORY[0x1E69E5920](v33);
    sub_1B03D09B8(v52);
    sub_1B071F9F0();
    return sub_1B03D09B8(v56);
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1B071DE90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v10 = 0;
  v9 = sub_1B071FA40;
  v16 = 0;
  v15 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v5 - v7;
  v16 = v3;
  v15 = v2;
  v14 = v3;
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B00, &unk_1B0E9AF50);
  sub_1B071E55C();
  return sub_1B0E44FD8();
}

uint64_t sub_1B071DFC8(uint64_t a1)
{
  v7 = 0;
  v9 = a1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B20, &qword_1B0E9AF60);
  sub_1B0E46A48();
  sub_1B071FB18();
  sub_1B043CF70();
  v7 = sub_1B0E445D8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v2 = sub_1B0721160();
  sub_1B0829BE8(a1, v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
  sub_1B0746680();
  sub_1B0E45018();
  v4 = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B039E440(&v7);
  return v4;
}

uint64_t sub_1B071E140(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v12 = 0;
  v17[3] = 0;
  v17[5] = a1;
  v17[4] = a2;
  v17[2] = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B00, &unk_1B0E9AF50);
  v11 = v13;
  v14 = sub_1B071E55C();
  v15 = 0;
  v16 = sub_1B0E44FF8();
  v17[0] = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = &v5;
  MEMORY[0x1EEE9AC00](&v5);
  v8 = v4;
  v4[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  v9 = sub_1B0E44F58();
  v6 = v9;

  sub_1B039E440(v17);
  return v6;
}

uint64_t sub_1B071E2CC(uint64_t a1)
{
  v9 = a1;
  v18 = 0;
  v17 = 0;
  v10 = sub_1B0E42E68();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v5 - v13;
  v18 = v2;
  v17 = v1;
  v16 = v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B40, &unk_1B0E9AF70);
  sub_1B0746730();
  result = sub_1B0E45748();
  if ((result & 1) == 0)
  {
    v4 = v14;
    v7 = *(v8 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
    MEMORY[0x1E69E5928](v7);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
    v6 = sub_1B0E451A8();

    (*(v11 + 16))(v4, v8 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v10);
    v5 = sub_1B0E42D58();
    (*(v11 + 8))(v14, v10);
    [v7 reflectSortedFlagChanges:v6 mailboxURL:v5];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
    return MEMORY[0x1E69E5920](v7);
  }

  return result;
}

BOOL sub_1B071E4DC(_DWORD *a1, _DWORD *a2)
{
  v9 = 0;
  v8 = 0;
  v2 = *a1;
  v9 = a1;
  v3 = *a2;
  v8 = a2;
  v7 = v2;
  v6 = v3;
  v4 = sub_1B041C1E8();
  return static MessageIdentifier.< infix(_:_:)(&v7, &v6, &type metadata for UID, v4);
}

unint64_t sub_1B071E55C()
{
  v2 = qword_1EB6DB368;
  if (!qword_1EB6DB368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B00, &unk_1B0E9AF50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB368);
    return WitnessTable;
  }

  return v2;
}

id sub_1B071E5E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  LODWORD(v4) = *a1;
  *(&v4 + 4) = *(a1 + 4);
  BYTE12(v4) = *(a1 + 12);
  result = sub_1B071E668(v4, *(&v4 + 1), *(a1 + 16));
  *a2 = result;
  return result;
}

id sub_1B071E668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = a3;
  v11 = a1;
  v12 = *(&v21 + 4);
  v13 = BYTE4(a2);
  v17 = a1;
  v18 = *(&v21 + 4);
  v19 = BYTE4(a2);
  v20 = a3;
  if (BYTE4(a1) == 2)
  {
    return 0;
  }

  v15 = *(&v21 + 4) & 0xFFFFFFFF01010101;
  v16 = BYTE4(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  v7 = sub_1B039A494();
  v14[0] = v11;
  v6 = sub_1B07467B8();
  v3 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v14, MEMORY[0x1E69E7668], &type metadata for UID, v6, v3);
  v9 = sub_1B074A93C(v14[1]);
  v8 = sub_1B071FB18();
  v4 = sub_1B074A9DC(v12 & 0xFFFFFFFF01010101, v13);
  return sub_1B074A97C(v9, v4, v7, v8);
}

BOOL sub_1B071E8EC(uint64_t a1, _DWORD *a2)
{
  v7 = 0;
  v8 = a1;
  v2 = *a2;
  v7 = a2;
  v5 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v6, &v5, v3);
}

uint64_t sub_1B071E964(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v52 = a1;
  v54 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v53 = 0;
  v71 = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v55 = v62;
  v57 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v59 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = &v24 - v59;
  v78 = &v24 - v59;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v24 - v59;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v24 - v59;
  v77 = &v24 - v59;
  v64 = sub_1B0E42E68();
  v65 = *(v64 - 8);
  v66 = v65;
  v67 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v68 = &v24 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v68;
  v75 = a1;
  v74 = v5;
  v73 = v6;
  if (MessageIdentifierSet.isEmpty.getter())
  {
    v37 = sub_1B07B681C();
    v38 = v20;
    v39 = v21;
    v40 = v22;
    v41 = v53;
    return v37;
  }

  v7 = v53;
  (*(v66 + 16))(v68, v61 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v64);
  v72 = v63;
  v46 = &v24;
  MEMORY[0x1EEE9AC00](&v24);
  v47 = &v24 - 4;
  *(&v24 - 2) = v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v49 = sub_1B074AC8C();
  sub_1B071CEA8();
  v9 = sub_1B0E44F58();
  v50 = v7;
  v51 = v9;
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v43 = v51;
  v71 = v51;
  v70 = v51;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B58, &unk_1B0E9AF80);
  v44 = v45;
  sub_1B074ACF0();
  if (sub_1B0E45748())
  {
    v25 = sub_1B07B681C();
    v26 = v17;
    v27 = v18;
    v28 = v19;

    (*(v66 + 8))(v68, v64);
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v50;
    return v37;
  }

  v10 = v50;
  v69 = v43;
  sub_1B041C1E8();
  MessageIdentifierSet.init()();

  sub_1B074AD9C();
  sub_1B0E44FD8();
  v42 = v10;
  if (!v10)
  {

    MessageIdentifierSet.intersection(_:)(v60, v56);
    if (MessageIdentifierSet.isEmpty.getter())
    {
      v29 = sub_1B07B681C();
      v30 = v14;
      v31 = v15;
      v32 = v16;
      sub_1B03D09B8(v56);
      sub_1B03D09B8(v60);

      (*(v66 + 8))(v68, v64);
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v40 = v32;
    }

    else
    {
      v33 = sub_1B07207E0(v56, v43);
      v34 = v11;
      v35 = v12;
      v36 = v13;
      sub_1B03D09B8(v56);
      sub_1B03D09B8(v60);

      (*(v66 + 8))(v68, v64);
      v37 = v33;
      v38 = v34;
      v39 = v35;
      v40 = v36;
    }

    v41 = v42;
    return v37;
  }

LABEL_13:

  __break(1u);
  return result;
}

uint64_t sub_1B071EFF8(uint64_t a1, int *a2)
{
  v13 = 0uLL;
  v14 = 0;
  v15 = a1;
  v7 = *a2;
  v2 = *(a2 + 1);
  v3 = *(a2 + 12);
  v4 = *(a2 + 2);
  LODWORD(v13) = v7;
  *(&v13 + 4) = v2;
  BYTE12(v13) = v3;
  v14 = v4;
  *v10 = v7;
  *&v10[4] = v2;
  v11 = v3;
  v12 = v4;
  result = sub_1B071F0D0(*v10);
  if (result)
  {
    v8 = v7;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v9, &v8, v6);
  }

  return result;
}