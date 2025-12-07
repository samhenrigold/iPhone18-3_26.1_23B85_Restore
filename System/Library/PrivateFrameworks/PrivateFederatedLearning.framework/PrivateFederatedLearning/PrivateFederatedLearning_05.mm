uint64_t sub_21A42BB08(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1728) = v1;

  if (v1)
  {
    v5 = sub_21A42D894;
  }

  else
  {
    *(v4 + 1736) = a1;
    v5 = sub_21A42BC30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A42BC30()
{
  v178 = v0;
  v1 = v0[200];
  v2 = v0[186];
  *(v2 + v1) = sub_21A402C48(0x6E776F446B736154, 0xEC00000064616F6CLL);
  v174 = v0[217];
  v173 = v0[216];
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v165 = sub_21A450F24();
  __swift_project_value_buffer(v165, qword_27CD28C90);
  sub_21A3F939C((v0 + 72), (v0 + 107));
  sub_21A3F939C((v0 + 107), (v0 + 102));
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v3 = sub_21A450F04();
  v4 = sub_21A451574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v177 = v6;
    *v5 = 136315138;
    v7 = v0[105];
    v8 = v0[106];
    __swift_project_boxed_opaque_existential_1(v0 + 102, v7);
    v9 = (*(v8 + 48))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
    v12 = sub_21A3E2554(v9, v11, &v177);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_21A3C2000, v3, v4, "Recipe %s is ready.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x21CEDB220](v6, -1, -1);
    MEMORY[0x21CEDB220](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
  }

  v13 = v0[204];
  v14 = v0[203];
  v15 = v0[75];
  v16 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v15);
  (*(v16 + 48))(v15, v16);
  v0[162] = v14;
  v0[163] = v13;
  v0[164] = 46;
  v17 = 0xE100000000000000;
  v0[165] = 0xE100000000000000;
  v18 = (sub_21A451644() + 16);
  if (*v18)
  {
    v19 = &v18[2 * *v18];
    v20 = *v19;
    v17 = v19[1];
  }

  else
  {
    v20 = 85;
  }

  v21 = v0[208];
  v22 = v0[207];

  if ((v22 != v20 || v21 != v17) && (sub_21A4519B4() & 1) == 0)
  {
  }

  v167 = v0[204];
  v166 = v0[203];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21A456280;
  *(v23 + 32) = 0x6E6967756C70;
  *(v23 + 40) = 0xE600000000000000;
  v24 = sub_21A451054();

  *(v23 + 48) = v24;
  *(v23 + 56) = 0x64496B736174;
  *(v23 + 64) = 0xE600000000000000;
  v25 = sub_21A451054();

  *(v23 + 72) = v25;
  *(v23 + 80) = 0x6E6F697461636F6CLL;
  *(v23 + 88) = 0xE800000000000000;
  v26 = 0xE100000000000000;
  *(v23 + 96) = sub_21A451054();
  *(v23 + 104) = 0x65736143657375;
  *(v23 + 112) = 0xE700000000000000;
  v27 = sub_21A451054();

  *(v23 + 120) = v27;
  *(v23 + 128) = 0x646F43726F727265;
  *(v23 + 136) = 0xE900000000000065;
  *(v23 + 144) = sub_21A4514E4();
  *(v23 + 152) = 0x6D6F44726F727265;
  *(v23 + 160) = 0xEB000000006E6961;
  *(v23 + 168) = sub_21A451054();
  v28 = sub_21A3E57A0(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = sub_21A451054();
  v0[30] = sub_21A3ED530;
  v0[31] = v29;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_21A432B2C;
  v0[29] = &block_descriptor_38;
  v31 = _Block_copy(v0 + 26);

  AnalyticsSendEventLazy();

  _Block_release(v31);

  v32 = v0[75];
  v33 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v32);
  (*(v33 + 48))(v32, v33);
  v0[168] = v166;
  v0[169] = v167;
  v0[170] = 46;
  v0[171] = 0xE100000000000000;
  v34 = (sub_21A451644() + 16);
  if (*v34)
  {
    v35 = &v34[2 * *v34];
    v36 = *v35;
    v26 = v35[1];
  }

  else
  {
    v36 = 85;
  }

  v37 = v0[208];
  v38 = v0[207];

  if (v38 == v36 && v37 == v26)
  {
    v168 = v0[207];
    v169 = v0[208];
  }

  else
  {
    v39 = sub_21A4519B4();
    v169 = v0[208];
    if ((v39 & 1) == 0)
    {
    }

    v168 = v0[207];
  }

  v40 = (v0[186] + v0[201]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21A456280;
  *(v41 + 32) = 0x6E6967756C70;
  *(v41 + 40) = 0xE600000000000000;
  v42 = sub_21A451054();

  *(v41 + 48) = v42;
  *(v41 + 56) = 0x64496B736174;
  *(v41 + 64) = 0xE600000000000000;
  v43 = sub_21A451054();

  *(v41 + 72) = v43;
  *(v41 + 80) = 0x6E6F697461636F6CLL;
  *(v41 + 88) = 0xE800000000000000;
  v44 = 0xE100000000000000;
  *(v41 + 96) = sub_21A451054();
  *(v41 + 104) = 0x65736143657375;
  *(v41 + 112) = 0xE700000000000000;
  v45 = sub_21A451054();

  *(v41 + 120) = v45;
  *(v41 + 128) = 0x646F43726F727265;
  *(v41 + 136) = 0xE900000000000065;
  *(v41 + 144) = sub_21A4514E4();
  *(v41 + 152) = 0x6D6F44726F727265;
  *(v41 + 160) = 0xEB000000006E6961;
  *(v41 + 168) = sub_21A451054();
  v46 = sub_21A3E57A0(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = sub_21A451054();
  v0[24] = sub_21A3ED530;
  v0[25] = v47;
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_21A432B2C;
  v0[23] = &block_descriptor_45;
  v49 = _Block_copy(v0 + 20);

  AnalyticsSendEventLazy();

  _Block_release(v49);

  v50 = v0[75];
  v51 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v50);
  (*(v51 + 48))(v50, v51);
  v52 = v40[3];
  v53 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v52);
  (*(v53 + 16))(v174, v168, v169, v52, v53);
  if (!v173)
  {
    v56 = v0[204];
    v0[172] = v0[203];
    v0[173] = v56;
    v0[156] = 46;
    v0[157] = 0xE100000000000000;
    v57 = (sub_21A451644() + 16);
    if (*v57)
    {
      v58 = &v57[2 * *v57];
      v59 = *v58;
      v44 = v58[1];
    }

    else
    {
      v59 = 85;
    }

    v107 = v0[208];
    v108 = v0[207];

    if (v108 == v59 && v107 == v44 || (sub_21A4519B4() & 1) != 0)
    {
      v80 = 0;
    }

    else
    {

      v80 = v0[207];
    }

    v173 = v0[196];
    v170 = v0[186];
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_21A456280;
    *(v111 + 32) = 0x6E6967756C70;
    *(v111 + 40) = 0xE600000000000000;
    v112 = sub_21A451054();

    *(v111 + 48) = v112;
    *(v111 + 56) = 0x64496B736174;
    *(v111 + 64) = 0xE600000000000000;
    v113 = sub_21A451054();

    *(v111 + 72) = v113;
    *(v111 + 80) = 0x6E6F697461636F6CLL;
    *(v111 + 88) = 0xE800000000000000;
    *(v111 + 96) = sub_21A451054();
    *(v111 + 104) = 0x65736143657375;
    *(v111 + 112) = 0xE700000000000000;
    v114 = sub_21A451054();

    *(v111 + 120) = v114;
    *(v111 + 128) = 0x646F43726F727265;
    *(v111 + 136) = 0xE900000000000065;
    *(v111 + 144) = sub_21A4514E4();
    *(v111 + 152) = 0x6D6F44726F727265;
    *(v111 + 160) = 0xEB000000006E6961;
    *(v111 + 168) = sub_21A451054();
    v115 = sub_21A3E57A0(v111);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v116 = swift_allocObject();
    *(v116 + 16) = v115;
    v79 = sub_21A451054();
    v0[12] = sub_21A3ED530;
    v0[13] = v116;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_21A432B2C;
    v0[11] = &block_descriptor_59;
    v117 = _Block_copy(v0 + 8);

    AnalyticsSendEventLazy();

    _Block_release(v117);

    v118 = *&v173[v170];
    v119 = __OFADD__(v118, 1);
    v120 = v118 + 1;
    if (!v119)
    {
      v121 = v0[210];
      *(v0[186] + v0[196]) = v120;
      sub_21A42FCBC(v121);
      goto LABEL_79;
    }

    __break(1u);
LABEL_88:
    swift_once();
    goto LABEL_39;
  }

  v54 = sub_21A450A74();
  [v54 code];

  v0[179] = v173;
  v55 = v173;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  }

  else
  {
    v60 = sub_21A450A74();
    v61 = [v60 domain];

    sub_21A451084();
  }

  v62 = v0[204];
  v0[138] = v0[203];
  v0[139] = v62;
  v0[174] = 46;
  v63 = 0xE100000000000000;
  v0[175] = 0xE100000000000000;
  v64 = (sub_21A451644() + 16);
  if (*v64)
  {
    v65 = &v64[2 * *v64];
    v66 = *v65;
    v63 = v65[1];
  }

  else
  {
    v66 = 85;
  }

  v67 = v0[208];
  v68 = v0[207];

  if ((v68 != v66 || v67 != v63) && (sub_21A4519B4() & 1) == 0)
  {
  }

  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_21A456280;
  *(v69 + 32) = 0x6E6967756C70;
  *(v69 + 40) = 0xE600000000000000;
  v70 = sub_21A451054();

  *(v69 + 48) = v70;
  *(v69 + 56) = 0x64496B736174;
  *(v69 + 64) = 0xE600000000000000;
  v71 = sub_21A451054();

  *(v69 + 72) = v71;
  *(v69 + 80) = 0x6E6F697461636F6CLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = sub_21A451054();
  *(v69 + 104) = 0x65736143657375;
  *(v69 + 112) = 0xE700000000000000;
  v72 = sub_21A451054();

  *(v69 + 120) = v72;
  *(v69 + 128) = 0x646F43726F727265;
  *(v69 + 136) = 0xE900000000000065;
  *(v69 + 144) = sub_21A4514E4();
  *(v69 + 152) = 0x6D6F44726F727265;
  *(v69 + 160) = 0xEB000000006E6961;
  v73 = sub_21A451054();

  *(v69 + 168) = v73;
  v74 = sub_21A3E57A0(v69);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  v76 = sub_21A451054();
  v0[18] = sub_21A3ED530;
  v0[19] = v75;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_21A432B2C;
  v0[17] = &block_descriptor_52;
  v77 = _Block_copy(v0 + 14);

  AnalyticsSendEventLazy();

  _Block_release(v77);

  swift_willThrow();

  v0[184] = v173;
  v78 = v173;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v94 = v0[210];
    v95 = v173;
LABEL_68:

    v139 = v94;
    goto LABEL_76;
  }

  v79 = *(v0 + 1136);
  v80 = v0[143];
  if (qword_27CD28170 != -1)
  {
    goto LABEL_88;
  }

LABEL_39:
  __swift_project_value_buffer(v165, qword_27CD28C90);
  v81 = v80;
  v82 = v80;
  v83 = sub_21A450F04();
  v84 = sub_21A451574();

  v175 = v79;
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v0[182] = v87;
    *v85 = 136315394;
    *(v85 + 4) = sub_21A3E2554(qword_21A458BA0[v175], 0xE100000000000000, v0 + 182);
    *(v85 + 12) = 2112;
    v88 = v80;
    v89 = _swift_stdlib_bridgeErrorToNSError();
    *(v85 + 14) = v89;
    *v86 = v89;
    _os_log_impl(&dword_21A3C2000, v83, v84, "Failed to download task with location: %s, error %@", v85, 0x16u);
    sub_21A3D3BF0(v86, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v86, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x21CEDB220](v87, -1, -1);
    MEMORY[0x21CEDB220](v85, -1, -1);
  }

  v90 = v0[75];
  v91 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v90);
  (*(v91 + 48))(v90, v91);
  v0[185] = v80;
  v92 = v80;
  if (swift_dynamicCast())
  {
    v93 = *(v0 + 1745);
  }

  else
  {
    v93 = 0;
  }

  sub_21A3EC940();
  v96 = swift_allocError();
  *v97 = v93;
  v98 = sub_21A450A74();
  [v98 code];

  v0[178] = v96;
  v99 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  v172 = v80;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 122);
  }

  else
  {
    v100 = sub_21A450A74();
    v101 = [v100 domain];

    sub_21A451084();
  }

  v102 = v0[204];
  v0[144] = v0[203];
  v0[145] = v102;
  v0[146] = 46;
  v103 = 0xE100000000000000;
  v0[147] = 0xE100000000000000;
  v104 = (sub_21A451644() + 16);
  if (*v104)
  {
    v105 = &v104[2 * *v104];
    v106 = *v105;
    v103 = v105[1];
  }

  else
  {
    v106 = 85;
  }

  v109 = v0[208];
  v110 = v0[207];

  if ((v110 != v106 || v109 != v103) && (sub_21A4519B4() & 1) == 0)
  {
  }

  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_21A456280;
  *(v122 + 32) = 0x6E6967756C70;
  *(v122 + 40) = 0xE600000000000000;
  v123 = sub_21A451054();

  *(v122 + 48) = v123;
  *(v122 + 56) = 0x64496B736174;
  *(v122 + 64) = 0xE600000000000000;
  v124 = sub_21A451054();

  *(v122 + 72) = v124;
  *(v122 + 80) = 0x6E6F697461636F6CLL;
  *(v122 + 88) = 0xE800000000000000;
  v125 = 0xE100000000000000;
  *(v122 + 96) = sub_21A451054();
  *(v122 + 104) = 0x65736143657375;
  *(v122 + 112) = 0xE700000000000000;
  v126 = sub_21A451054();

  *(v122 + 120) = v126;
  *(v122 + 128) = 0x646F43726F727265;
  *(v122 + 136) = 0xE900000000000065;
  *(v122 + 144) = sub_21A4514E4();
  *(v122 + 152) = 0x6D6F44726F727265;
  *(v122 + 160) = 0xEB000000006E6961;
  v127 = sub_21A451054();

  *(v122 + 168) = v127;
  v128 = sub_21A3E57A0(v122);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v129 = swift_allocObject();
  *(v129 + 16) = v128;
  v130 = sub_21A451054();
  v0[42] = sub_21A3ED530;
  v0[43] = v129;
  v0[38] = MEMORY[0x277D85DD0];
  v0[39] = 1107296256;
  v0[40] = sub_21A432B2C;
  v0[41] = &block_descriptor_24;
  v131 = _Block_copy(v0 + 38);

  AnalyticsSendEventLazy();

  _Block_release(v131);

  if (v175 != 5)
  {
    v94 = v0[210];

    v95 = v172;
    goto LABEL_68;
  }

  v132 = v0[204];
  v133 = v0[203];
  v134 = v0[75];
  v135 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v134);
  (*(v135 + 48))(v134, v135);
  v0[150] = v133;
  v0[151] = v132;
  v0[136] = 46;
  v0[137] = 0xE100000000000000;
  v136 = (sub_21A451644() + 16);
  if (*v136)
  {
    v137 = &v136[2 * *v136];
    v138 = *v137;
    v125 = v137[1];
  }

  else
  {
    v138 = 85;
  }

  v140 = v0[208];
  v141 = v0[207];

  if ((v141 != v138 || v140 != v125) && (sub_21A4519B4() & 1) == 0)
  {
  }

  aBlock = v0[210];
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_21A456280;
  *(v142 + 32) = 0x6E6967756C70;
  *(v142 + 40) = 0xE600000000000000;
  v143 = sub_21A451054();

  *(v142 + 48) = v143;
  *(v142 + 56) = 0x64496B736174;
  *(v142 + 64) = 0xE600000000000000;
  v144 = sub_21A451054();

  *(v142 + 72) = v144;
  *(v142 + 80) = 0x6E6F697461636F6CLL;
  *(v142 + 88) = 0xE800000000000000;
  *(v142 + 96) = sub_21A451054();
  *(v142 + 104) = 0x65736143657375;
  *(v142 + 112) = 0xE700000000000000;
  v145 = sub_21A451054();

  *(v142 + 120) = v145;
  *(v142 + 128) = 0x646F43726F727265;
  *(v142 + 136) = 0xE900000000000065;
  *(v142 + 144) = sub_21A4514E4();
  *(v142 + 152) = 0x6D6F44726F727265;
  *(v142 + 160) = 0xEB000000006E6961;
  *(v142 + 168) = sub_21A451054();
  v146 = sub_21A3E57A0(v142);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v147 = swift_allocObject();
  *(v147 + 16) = v146;
  v148 = sub_21A451054();
  v0[36] = sub_21A3ED530;
  v0[37] = v147;
  v0[32] = MEMORY[0x277D85DD0];
  v0[33] = 1107296256;
  v0[34] = sub_21A432B2C;
  v0[35] = &block_descriptor_31;
  v149 = _Block_copy(v0 + 32);

  AnalyticsSendEventLazy();

  _Block_release(v149);

  v139 = aBlock;
LABEL_76:
  sub_21A42FCBC(v139);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
    v174 = 0;
    goto LABEL_81;
  }

  v0[202] = 0;
  v150 = v0[197];
  v151 = v0[196];
  v152 = v0[186];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v153 = *(v152 + v150);
  if (*(v152 + v151) >= v153)
  {
    v174 = 0;
    if ((v153 & 0x8000000000000000) == 0)
    {
LABEL_79:
      __swift_destroy_boxed_opaque_existential_0(v0 + 72);
LABEL_81:
      __swift_destroy_boxed_opaque_existential_0(v0 + 97);
      __swift_destroy_boxed_opaque_existential_0(v0 + 67);
      v154 = v0[1];

      return v154(v174);
    }
  }

  v156 = v0[199];
  v157 = v0[186];
  v158 = &v157[v0[201]];
  v0[203] = *(v157 + 2);
  v0[204] = *(v157 + 3);
  v159 = v0[75];
  v160 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v159);
  v0[205] = (*(v160 + 48))(v159, v160);
  v0[206] = v161;
  v0[207] = *(v157 + 4);
  v0[208] = *(v157 + 5);
  v162 = *(v158 + 3);
  v163 = *(v158 + 4);
  __swift_project_boxed_opaque_existential_1(v158, v162);
  v176 = (*(v163 + 8) + **(v163 + 8));
  v164 = swift_task_alloc();
  v0[209] = v164;
  *v164 = v0;
  v164[1] = sub_21A4293BC;

  return v176(v0 + 183, v0 + 72, &v157[v156], v162, v163);
}

uint64_t sub_21A42D894()
{
  v1 = v0[216];
  v0[184] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = v0[210];
    v20 = v1;
LABEL_25:

    v51 = v19;
    goto LABEL_33;
  }

  v3 = *(v0 + 1136);
  v4 = v0[143];
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v5 = sub_21A450F24();
  __swift_project_value_buffer(v5, qword_27CD28C90);
  v6 = v4;
  v7 = v4;
  v8 = sub_21A450F04();
  v9 = sub_21A451574();

  v80 = v1;
  v81 = v3;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v0[182] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_21A3E2554(qword_21A458BA0[v81], 0xE100000000000000, v0 + 182);
    *(v10 + 12) = 2112;
    v13 = v4;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_21A3C2000, v8, v9, "Failed to download task with location: %s, error %@", v10, 0x16u);
    sub_21A3D3BF0(v11, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x21CEDB220](v12, -1, -1);
    MEMORY[0x21CEDB220](v10, -1, -1);
  }

  v15 = v0[75];
  v16 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v15);
  (*(v16 + 48))(v15, v16);
  v0[185] = v4;
  v17 = v4;
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 1745);
  }

  else
  {
    v18 = 0;
  }

  sub_21A3EC940();
  v21 = swift_allocError();
  *v22 = v18;
  v23 = sub_21A450A74();
  [v23 code];

  v0[178] = v21;
  v24 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  v77 = v21;
  v79 = v4;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 122);
  }

  else
  {
    v25 = sub_21A450A74();
    v26 = [v25 domain];

    sub_21A451084();
  }

  v27 = v0[204];
  v0[144] = v0[203];
  v0[145] = v27;
  v0[146] = 46;
  v28 = 0xE100000000000000;
  v0[147] = 0xE100000000000000;
  v29 = (sub_21A451644() + 16);
  if (*v29)
  {
    v30 = &v29[2 * *v29];
    v31 = *v30;
    v28 = v30[1];
  }

  else
  {
    v31 = 85;
  }

  v32 = v0[208];
  v33 = v0[207];

  if ((v33 != v31 || v32 != v28) && (sub_21A4519B4() & 1) == 0)
  {
  }

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_21A456280;
  *(v34 + 32) = 0x6E6967756C70;
  *(v34 + 40) = 0xE600000000000000;
  v35 = sub_21A451054();

  *(v34 + 48) = v35;
  *(v34 + 56) = 0x64496B736174;
  *(v34 + 64) = 0xE600000000000000;
  v36 = sub_21A451054();

  *(v34 + 72) = v36;
  *(v34 + 80) = 0x6E6F697461636F6CLL;
  *(v34 + 88) = 0xE800000000000000;
  v37 = 0xE100000000000000;
  *(v34 + 96) = sub_21A451054();
  *(v34 + 104) = 0x65736143657375;
  *(v34 + 112) = 0xE700000000000000;
  v38 = sub_21A451054();

  *(v34 + 120) = v38;
  *(v34 + 128) = 0x646F43726F727265;
  *(v34 + 136) = 0xE900000000000065;
  *(v34 + 144) = sub_21A4514E4();
  *(v34 + 152) = 0x6D6F44726F727265;
  *(v34 + 160) = 0xEB000000006E6961;
  v39 = sub_21A451054();

  *(v34 + 168) = v39;
  v40 = sub_21A3E57A0(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  v42 = sub_21A451054();
  v0[42] = sub_21A3ED530;
  v0[43] = v41;
  v0[38] = MEMORY[0x277D85DD0];
  v0[39] = 1107296256;
  v0[40] = sub_21A432B2C;
  v0[41] = &block_descriptor_24;
  v43 = _Block_copy(v0 + 38);

  AnalyticsSendEventLazy();

  _Block_release(v43);

  if (v81 != 5)
  {
    v19 = v0[210];

    v20 = v79;
    goto LABEL_25;
  }

  v44 = v0[204];
  v45 = v0[203];
  v46 = v0[75];
  v47 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v46);
  (*(v47 + 48))(v46, v47);
  v0[150] = v45;
  v0[151] = v44;
  v0[136] = 46;
  v0[137] = 0xE100000000000000;
  v48 = (sub_21A451644() + 16);
  if (*v48)
  {
    v49 = &v48[2 * *v48];
    v50 = *v49;
    v37 = v49[1];
  }

  else
  {
    v50 = 85;
  }

  v52 = v0[208];
  v53 = v0[207];

  if ((v53 != v50 || v52 != v37) && (sub_21A4519B4() & 1) == 0)
  {
  }

  v78 = v0[210];
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_21A456280;
  *(v54 + 32) = 0x6E6967756C70;
  *(v54 + 40) = 0xE600000000000000;
  v55 = sub_21A451054();

  *(v54 + 48) = v55;
  *(v54 + 56) = 0x64496B736174;
  *(v54 + 64) = 0xE600000000000000;
  v56 = sub_21A451054();

  *(v54 + 72) = v56;
  *(v54 + 80) = 0x6E6F697461636F6CLL;
  *(v54 + 88) = 0xE800000000000000;
  *(v54 + 96) = sub_21A451054();
  *(v54 + 104) = 0x65736143657375;
  *(v54 + 112) = 0xE700000000000000;
  v57 = sub_21A451054();

  *(v54 + 120) = v57;
  *(v54 + 128) = 0x646F43726F727265;
  *(v54 + 136) = 0xE900000000000065;
  *(v54 + 144) = sub_21A4514E4();
  *(v54 + 152) = 0x6D6F44726F727265;
  *(v54 + 160) = 0xEB000000006E6961;
  *(v54 + 168) = sub_21A451054();
  v58 = sub_21A3E57A0(v54);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  v60 = sub_21A451054();
  v0[36] = sub_21A3ED530;
  v0[37] = v59;
  v0[32] = MEMORY[0x277D85DD0];
  v0[33] = 1107296256;
  v0[34] = sub_21A432B2C;
  v0[35] = &block_descriptor_31;
  v61 = _Block_copy(v0 + 32);

  AnalyticsSendEventLazy();

  _Block_release(v61);

  v51 = v78;
LABEL_33:
  sub_21A42FCBC(v51);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
LABEL_37:
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
    v66 = v0[1];

    return v66(0);
  }

  v0[202] = 0;
  v62 = v0[197];
  v63 = v0[196];
  v64 = v0[186];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v65 = *(v64 + v62);
  if (*(v64 + v63) >= v65 && (v65 & 0x8000000000000000) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
    goto LABEL_37;
  }

  v68 = v0[199];
  v69 = v0[186];
  v70 = &v69[v0[201]];
  v0[203] = *(v69 + 2);
  v0[204] = *(v69 + 3);
  v71 = v0[75];
  v72 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v71);
  v0[205] = (*(v72 + 48))(v71, v72);
  v0[206] = v73;
  v0[207] = *(v69 + 4);
  v0[208] = *(v69 + 5);
  v74 = *(v70 + 3);
  v75 = *(v70 + 4);
  __swift_project_boxed_opaque_existential_1(v70, v74);
  v82 = (*(v75 + 8) + **(v75 + 8));
  v76 = swift_task_alloc();
  v0[209] = v76;
  *v76 = v0;
  v76[1] = sub_21A4293BC;

  return v82(v0 + 183, v0 + 72, &v69[v68], v74, v75);
}

unint64_t sub_21A42E500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455F00;
  strcpy((inited + 32), "PolicyDownload");
  *(inited + 47) = -18;
  v2 = MEMORY[0x277D839F8];
  *(inited + 48) = *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds);
  *(inited + 72) = v2;
  strcpy((inited + 80), "TaskDownload");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v3 = *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds);
  *(inited + 120) = v2;
  *(inited + 96) = v3;
  v4 = sub_21A3E4F6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_21A42E60C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_21A42E62C, 0, 0);
}

uint64_t sub_21A42E62C()
{
  v1 = v0[16];
  v2 = *(v1 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm);
  v0[17] = v2;
  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_21A4033E8(0x6F447963696C6F50, 0xEE0064616F6C6E77, isUniquelyReferenced_nonNull_native, Current);
  *(v2 + 16) = v13;
  swift_endAccess();
  v5 = v1[9];
  v6 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v5);
  v7 = v1[2];
  v8 = v1[3];
  v12 = (*(v6 + 8) + **(v6 + 8));
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_21A42E7FC;
  v10 = v0[15];

  return v12(v10, v7, v8, v5, v6);
}

uint64_t sub_21A42E7FC()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21A42E930, 0, 0);
  }
}

uint64_t sub_21A42E930()
{
  v19 = v0;
  v1 = v0[19];
  v2 = v0[15];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 24))(v3, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0[15]);
    v5 = v0[1];
  }

  else
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v6 = v0[15];
    v7 = sub_21A450F24();
    __swift_project_value_buffer(v7, qword_27CD28C90);
    sub_21A3F939C(v6, (v0 + 2));
    v8 = sub_21A450F04();
    v9 = sub_21A451574();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      sub_21A3F939C((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28BC8, &qword_21A458B88);
      v12 = sub_21A4510C4();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v15 = sub_21A3E2554(v12, v14, &v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_21A3C2000, v8, v9, "Policy downloaded %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x21CEDB220](v11, -1, -1);
      MEMORY[0x21CEDB220](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v16 = v0[16];
    *(v16 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds) = sub_21A402C48(0x6F447963696C6F50, 0xEE0064616F6C6E77);
    v5 = v0[1];
  }

  return v5();
}

uint64_t PFLTaskDiscovery.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  sub_21A3D3BF0(v0 + 88, &qword_27CD28B00, &qword_21A457FB8);

  sub_21A3D843C(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy));

  return v0;
}

uint64_t PFLTaskDiscovery.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  sub_21A3D3BF0(v0 + 88, &qword_27CD28B00, &qword_21A457FB8);

  sub_21A3D843C(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy));

  return swift_deallocClassInstance();
}

uint64_t sub_21A42ECCC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21A42ED60;

  return sub_21A427C24();
}

uint64_t sub_21A42ED60(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_21A42EE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_21A4513E4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[4] = v5;
  v4[5] = v7;

  return MEMORY[0x2822009F8](sub_21A42EF08, v5, v7);
}

uint64_t sub_21A42EF08()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_21A42EF9C;

  return sub_21A427C24();
}

uint64_t sub_21A42EF9C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_21A42F0C4, v4, v3);
}

uint64_t sub_21A42F0E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47[3] = a9;
  v47[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a7, a9);
  *(a8 + 88) = 0u;
  *(a8 + 104) = 0u;
  *(a8 + 120) = 0;
  *(a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries) = 0;
  v17 = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
  type metadata accessor for PerformanceMeasure();
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F98];
  *(a8 + v17) = v18;
  *(a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds) = 0;
  *(a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds) = 0;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  v41 = a3;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  v19 = type metadata accessor for PFLTaskPreferences(0);
  v20 = (a5 + *(v19 + 20));
  v21 = (v20 + *(type metadata accessor for PFLDecodableTaskParameters(0) + 48));
  v22 = *v21;
  v39 = v21[1];
  if (*(a5 + *(v19 + 24)) == 1)
  {
    v23 = v20[1];
    if (v23 == 6)
    {
      v23 = a5[1];
      if (v23 == 3)
      {
        v38 = *v21;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v23 = 4;
LABEL_10:
        *&v43 = v24;
        *(&v43 + 1) = v23;
        v44 = v25;
        v45 = v26;
        v27 = type metadata accessor for PFLCKTaskDownloader();
        swift_allocObject();

        sub_21A3ED4E4(v24, v23, v25, v26);
        v28 = sub_21A3E8C70(&v43, v38, v39, v41, a4, a6 & 1);
        v45 = v27;
        v46 = &off_282B40358;
        sub_21A3ED49C(v24, v23, v25, v26);
        goto LABEL_12;
      }

      v25 = a5[2];
      v26 = a5[3];
      v24 = *a5;
    }

    else
    {
      v25 = v20[2];
      v26 = v20[3];
      v24 = *v20;
    }
  }

  else
  {
    v24 = *a5;
    v23 = a5[1];
    v25 = a5[2];
    v26 = a5[3];
  }

  sub_21A3ED4E4(v24, v23, v25, v26);
  if (v23 < 6)
  {
    v38 = v22;
    goto LABEL_10;
  }

  v29 = type metadata accessor for PFLLocalTaskDownloader();
  v28 = swift_allocObject();
  v28[2] = v24;
  v28[3] = v23;
  v28[4] = v25;
  v28[5] = v26;
  v45 = v29;
  v46 = &off_282B40FF0;

  sub_21A3ED49C(v24, v23, v25, v26);
LABEL_12:
  *&v43 = v28;
  sub_21A3C50DC(&v43, a8 + 48);
  type metadata accessor for PopulationSegmentation();
  swift_initStackObject();
  sub_21A401DA8();
  *&v43 = 0x2D676553706F50;
  *(&v43 + 1) = 0xE700000000000000;
  sub_21A3ED2CC();
  v30 = sub_21A451654();
  MEMORY[0x21CED98B0](v30);

  v31 = sub_21A402528(v43, *(&v43 + 1));
  v33 = v32;

  if (v33)
  {
  }

  else
  {
    v34 = sub_21A3ECA44(100) + 1;
    if (v34 <= 100)
    {
      if (v34 < 91)
      {
        if (v34 <= 80)
        {
          v31 = 0x6E69617274;
        }

        else
        {
          v31 = 7102838;
        }

        if (v34 <= 80)
        {
          v33 = 0xE500000000000000;
        }

        else
        {
          v33 = 0xE300000000000000;
        }
      }

      else
      {
        v33 = 0xE400000000000000;
        v31 = 1953719668;
      }
    }

    else
    {
      v33 = 0xEB00000000646572;
      v31 = 0x6574736575716573;
    }

    *&v43 = 0x2D676553706F50;
    *(&v43 + 1) = 0xE700000000000000;
    v35 = sub_21A451654();
    MEMORY[0x21CED98B0](v35);

    sub_21A4023B0(v43, *(&v43 + 1), v31, v33);
  }

  *(a8 + 128) = v31;
  *(a8 + 136) = v33;
  sub_21A3D83D8(a5, a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences);
  sub_21A3F939C(v47, a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy);
  v36 = (*(a10 + 24))(a5, a9);
  sub_21A3D843C(a5);
  *(a8 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver) = v36;
  __swift_destroy_boxed_opaque_existential_0(v47);
  return a8;
}

uint64_t _s24PrivateFederatedLearning13PFLTaskSourceO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v23[0] = v3;
  v23[1] = v4;
  v23[2] = v5;
  v23[3] = v6;
  v23[4] = v7;
  v23[5] = v8;
  v23[6] = v9;
  v23[7] = v10;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        if (v8 != 3)
        {
          goto LABEL_26;
        }

        break;
      case 4:
        if (v8 != 4)
        {
          goto LABEL_26;
        }

        break;
      case 5:
        if (v8 != 5)
        {
          goto LABEL_26;
        }

        break;
      default:
LABEL_16:
        if (v8 >= 6)
        {
          if (v3 == v7 && v4 == v8 || (v11 = v7, v12 = v8, v13 = v9, v14 = v10, v15 = sub_21A4519B4(), v9 = v13, v10 = v14, v8 = v12, v16 = v15, v7 = v11, (v16 & 1) != 0))
          {
            if (v5 == v9 && v6 == v10)
            {
              sub_21A3ED4E4(v7, v8, v5, v6);
              v17 = 1;
            }

            else
            {
              v19 = v7;
              v20 = v8;
              v21 = v9;
              v22 = v10;
              v17 = sub_21A4519B4();
              sub_21A3ED4E4(v19, v20, v21, v22);
            }

            goto LABEL_27;
          }
        }

LABEL_26:
        sub_21A3ED4E4(v7, v8, v9, v10);
        v17 = 0;
LABEL_27:
        sub_21A3ED4E4(v3, v4, v5, v6);
        goto LABEL_28;
    }
  }

  else
  {
    if (!v4)
    {
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (v4 != 1)
    {
      if (v4 == 2)
      {
        if (v8 == 2)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v8 != 1)
    {
      goto LABEL_26;
    }
  }

LABEL_24:
  v17 = 1;
LABEL_28:
  sub_21A3D3BF0(v23, &qword_27CD28628, &unk_21A458B90);
  return v17 & 1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_21A42F864(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v20 = a5;
  v15 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PFLTaskDiscovery(0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a7, a9);
  return sub_21A42F0E8(a1, a2, a3, a4, v20, v21, v17, v18, a9, a10);
}

unint64_t sub_21A42F994()
{
  result = qword_27CD28A78;
  if (!qword_27CD28A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A78);
  }

  return result;
}

unint64_t sub_21A42F9E8()
{
  result = qword_27CD28A80;
  if (!qword_27CD28A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A80);
  }

  return result;
}

unint64_t sub_21A42FA3C()
{
  result = qword_27CD28A88;
  if (!qword_27CD28A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A88);
  }

  return result;
}

unint64_t sub_21A42FA90()
{
  result = qword_27CD28A90;
  if (!qword_27CD28A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A90);
  }

  return result;
}

unint64_t sub_21A42FAE4()
{
  result = qword_27CD28A98;
  if (!qword_27CD28A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A98);
  }

  return result;
}

unint64_t sub_21A42FB38()
{
  result = qword_27CD28AA0;
  if (!qword_27CD28AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28AA0);
  }

  return result;
}

unint64_t sub_21A42FB8C()
{
  result = qword_27CD28AA8;
  if (!qword_27CD28AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28AA8);
  }

  return result;
}

unint64_t sub_21A42FBE0()
{
  result = qword_27CD28AB0;
  if (!qword_27CD28AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28AB0);
  }

  return result;
}

uint64_t sub_21A42FC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28B00, &qword_21A457FB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21A42FCBC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_21A42FCCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28B00, &qword_21A457FB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A42FD40()
{
  result = qword_27CD28B08;
  if (!qword_27CD28B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B08);
  }

  return result;
}

unint64_t sub_21A42FD98()
{
  result = qword_27CD28B10;
  if (!qword_27CD28B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28B18, &qword_21A458098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B10);
  }

  return result;
}

unint64_t sub_21A42FE00()
{
  result = qword_27CD28B20;
  if (!qword_27CD28B20)
  {
    type metadata accessor for PFLTaskDiscovery(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B20);
  }

  return result;
}

uint64_t type metadata accessor for PFLTaskDiscovery(uint64_t a1)
{
  result = qword_27CD28B28;
  if (!qword_27CD28B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PFLTaskDiscoveryReachLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PFLTaskDiscoveryReachLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24PrivateFederatedLearning13PFLTaskSourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21A430024(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 32))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A43007C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_21A4300D0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of PFLTaskDownloader.downloadRecipeDescriptors(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21A3EC5D4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PFLTaskDownloader.downloadTask(rd:preference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A3F8C48;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PFLTaskDiscoveryPolicy.resolveTask(for:taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21A3EC5D4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_21A4305C8(uint64_t a1)
{
  result = type metadata accessor for PFLTaskPreferences(319);
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

uint64_t dispatch thunk of PFLTaskDiscovery.next()()
{
  v4 = (*(*v0 + 304) + **(*v0 + 304));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21A3F88EC;

  return v4();
}

uint64_t sub_21A430860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21A4308A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A430978()
{
  result = qword_27CD28B38;
  if (!qword_27CD28B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B38);
  }

  return result;
}

unint64_t sub_21A4309D0()
{
  result = qword_27CD28B40;
  if (!qword_27CD28B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B40);
  }

  return result;
}

unint64_t sub_21A430A28()
{
  result = qword_27CD28B48;
  if (!qword_27CD28B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B48);
  }

  return result;
}

unint64_t sub_21A430A80()
{
  result = qword_27CD28B50;
  if (!qword_27CD28B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B50);
  }

  return result;
}

unint64_t sub_21A430AD8()
{
  result = qword_27CD28B58;
  if (!qword_27CD28B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B58);
  }

  return result;
}

unint64_t sub_21A430B30()
{
  result = qword_27CD28B60;
  if (!qword_27CD28B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B60);
  }

  return result;
}

unint64_t sub_21A430B88()
{
  result = qword_27CD28B68;
  if (!qword_27CD28B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B68);
  }

  return result;
}

unint64_t sub_21A430BE0()
{
  result = qword_27CD28B70;
  if (!qword_27CD28B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B70);
  }

  return result;
}

unint64_t sub_21A430C38()
{
  result = qword_27CD28B78;
  if (!qword_27CD28B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B78);
  }

  return result;
}

unint64_t sub_21A430C90()
{
  result = qword_27CD28B80;
  if (!qword_27CD28B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B80);
  }

  return result;
}

unint64_t sub_21A430CE8()
{
  result = qword_27CD28B88;
  if (!qword_27CD28B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B88);
  }

  return result;
}

unint64_t sub_21A430D40()
{
  result = qword_27CD28B90;
  if (!qword_27CD28B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B90);
  }

  return result;
}

unint64_t sub_21A430D98()
{
  result = qword_27CD28B98;
  if (!qword_27CD28B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28B98);
  }

  return result;
}

unint64_t sub_21A430DF0()
{
  result = qword_27CD28BA0;
  if (!qword_27CD28BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BA0);
  }

  return result;
}

unint64_t sub_21A430E48()
{
  result = qword_27CD28BA8;
  if (!qword_27CD28BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BA8);
  }

  return result;
}

unint64_t sub_21A430EA0()
{
  result = qword_27CD28BB0;
  if (!qword_27CD28BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BB0);
  }

  return result;
}

unint64_t sub_21A430EF8()
{
  result = qword_27CD28BB8;
  if (!qword_27CD28BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BB8);
  }

  return result;
}

unint64_t sub_21A430F50()
{
  result = qword_27CD28BC0;
  if (!qword_27CD28BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28BC0);
  }

  return result;
}

unint64_t sub_21A430FA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A4518A4();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:forwardToMLHost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[47] = a8;
  v8[48] = v10;
  v8[45] = a6;
  v8[46] = a7;
  v8[43] = a4;
  v8[44] = a5;
  v8[41] = a2;
  v8[42] = a3;
  v8[40] = a1;
  return MEMORY[0x2822009F8](sub_21A431080, 0, 0);
}

uint64_t sub_21A431080()
{
  v1 = v0[48];
  v2 = sub_21A450A74();
  [v2 code];

  v0[39] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  }

  else
  {
    v4 = sub_21A450A74();
    v5 = [v4 domain];

    sub_21A451084();
  }

  v6 = v0[43];
  v0[35] = v0[42];
  v0[36] = v6;
  v7 = 0xE100000000000000;
  v0[37] = 46;
  v0[38] = 0xE100000000000000;
  sub_21A3ED2CC();
  v8 = sub_21A451644();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 16 + 16 * v9);
    v11 = *v10;
    v7 = v10[1];
  }

  else
  {
    v11 = 85;
  }

  v12 = v0[46];
  v13 = v0[47];

  if ((v11 != v12 || v7 != v13) && (sub_21A4519B4() & 1) == 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v15 = sub_21A451054();

  *(inited + 48) = v15;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_21A451054();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v16 = sub_21A451054();

  *(inited + 120) = v16;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v17 = sub_21A451054();

  *(inited + 168) = v17;
  v18 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = sub_21A451054();
  v0[28] = sub_21A433C6C;
  v0[29] = v19;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_21A432B2C;
  v0[27] = &block_descriptor_2;
  v21 = _Block_copy(v0 + 24);

  AnalyticsSendEventLazy();

  _Block_release(v21);

  v22 = v0[1];

  return v22();
}

uint64_t static PFLTelemetry.sendPFLPluginLocation<A>(location:plugin:taskId:useCase:force:forwardToMLHost:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 656) = v15;
  *(v8 + 632) = v14;
  *(v8 + 624) = a8;
  *(v8 + 616) = a7;
  *(v8 + 608) = a6;
  *(v8 + 600) = a5;
  *(v8 + 592) = a4;
  *(v8 + 584) = a3;
  *(v8 + 576) = a2;
  v12 = (v16 + *v16);
  v10 = swift_task_alloc();
  *(v8 + 640) = v10;
  *v10 = v8;
  v10[1] = sub_21A4315F4;

  return v12(a1);
}

{
  *(v8 + 656) = v13;
  *(v8 + 648) = v12;
  *(v8 + 664) = v11;
  *(v8 + 640) = v10;
  *(v8 + 632) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  return MEMORY[0x2822009F8](sub_21A431F80, 0, 0);
}

uint64_t sub_21A4315F4()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_21A431AB0;
  }

  else
  {
    v2 = sub_21A431708;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A431708()
{
  if (*(v0 + 656) == 1)
  {
    v1 = v0[75];
    v0[67] = v0[74];
    v0[68] = v1;
    v0[69] = 46;
    v2 = 0xE100000000000000;
    v0[70] = 0xE100000000000000;
    sub_21A3ED2CC();
    v3 = sub_21A451644();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 16 + 16 * v4);
      v6 = *v5;
      v2 = v5[1];
    }

    else
    {
      v6 = 85;
    }

    v7 = v0[79];
    v8 = v0[78];

    if ((v6 != v8 || v2 != v7) && (sub_21A4519B4() & 1) == 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v10 = sub_21A451054();

    *(inited + 48) = v10;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v11 = sub_21A451054();

    *(inited + 120) = v11;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v12 = sub_21A3E57A0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
    swift_arrayDestroy();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = sub_21A451054();
    v0[56] = sub_21A433D0C;
    v0[57] = v13;
    v0[52] = MEMORY[0x277D85DD0];
    v0[53] = 1107296256;
    v0[54] = sub_21A432B2C;
    v0[55] = &block_descriptor_16_0;
    v15 = _Block_copy(v0 + 52);

    AnalyticsSendEventLazy();

    _Block_release(v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_21A431AB0()
{
  v1 = v0[81];
  v2 = sub_21A450A74();
  [v2 code];

  v0[71] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 58);
  }

  else
  {
    v4 = sub_21A450A74();
    v5 = [v4 domain];

    sub_21A451084();
  }

  v6 = v0[75];
  v0[63] = v0[74];
  v0[64] = v6;
  v0[65] = 46;
  v7 = 0xE100000000000000;
  v0[66] = 0xE100000000000000;
  sub_21A3ED2CC();
  v8 = sub_21A451644();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 16 + 16 * v9);
    v11 = *v10;
    v7 = v10[1];
  }

  else
  {
    v11 = 85;
  }

  v12 = v0[79];
  v13 = v0[78];

  if ((v11 != v13 || v7 != v12) && (sub_21A4519B4() & 1) == 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v15 = sub_21A451054();

  *(inited + 48) = v15;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_21A451054();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v16 = sub_21A451054();

  *(inited + 120) = v16;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v17 = sub_21A451054();

  *(inited + 168) = v17;
  v18 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = sub_21A451054();
  v0[50] = sub_21A433D0C;
  v0[51] = v19;
  v0[46] = MEMORY[0x277D85DD0];
  v0[47] = 1107296256;
  v0[48] = sub_21A432B2C;
  v0[49] = &block_descriptor_7;
  v21 = _Block_copy(v0 + 46);

  AnalyticsSendEventLazy();

  _Block_release(v21);

  swift_willThrow();
  v22 = v0[1];

  return v22();
}

uint64_t sub_21A431F80()
{
  (*(v0 + 648))();
  if (*(v0 + 664) == 1)
  {
    v1 = *(v0 + 608);
    *(v0 + 536) = *(v0 + 600);
    *(v0 + 544) = v1;
    *(v0 + 552) = 46;
    v2 = 0xE100000000000000;
    *(v0 + 560) = 0xE100000000000000;
    sub_21A3ED2CC();
    v3 = sub_21A451644();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 16 + 16 * v4);
      v6 = *v5;
      v2 = v5[1];
    }

    else
    {
      v6 = 85;
    }

    v7 = *(v0 + 640);
    v8 = *(v0 + 632);

    if ((v6 != v8 || v2 != v7) && (sub_21A4519B4() & 1) == 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v10 = sub_21A451054();

    *(inited + 48) = v10;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v11 = sub_21A451054();

    *(inited + 120) = v11;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v12 = sub_21A3E57A0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
    swift_arrayDestroy();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = sub_21A451054();
    *(v0 + 448) = sub_21A433D0C;
    *(v0 + 456) = v13;
    *(v0 + 416) = MEMORY[0x277D85DD0];
    *(v0 + 424) = 1107296256;
    *(v0 + 432) = sub_21A432B2C;
    *(v0 + 440) = &block_descriptor_31_0;
    v15 = _Block_copy((v0 + 416));

    AnalyticsSendEventLazy();

    _Block_release(v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t static PFLTelemetry.sendPFLPluginReachTelemetryLazy(location:plugin:taskId:useCase:errorCode:errorDomain:forwardToMLHost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = v11;
  *(v8 + 336) = v10;
  *(v8 + 320) = a7;
  *(v8 + 328) = a8;
  *(v8 + 304) = a5;
  *(v8 + 312) = a6;
  *(v8 + 288) = a3;
  *(v8 + 296) = a4;
  *(v8 + 272) = a1;
  *(v8 + 280) = a2;
  return MEMORY[0x2822009F8](sub_21A43278C, 0, 0);
}

uint64_t sub_21A43278C()
{
  v0[30] = v0[36];
  v0[31] = v0[37];
  v0[32] = 46;
  v1 = 0xE100000000000000;
  v0[33] = 0xE100000000000000;
  sub_21A3ED2CC();
  v2 = sub_21A451644();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 16 + 16 * v3);
    v5 = *v4;
    v1 = v4[1];
  }

  else
  {
    v5 = 85;
  }

  v7 = v0[40];
  v6 = v0[41];

  v8 = v5 == v7 && v1 == v6;
  if (!v8 && (sub_21A4519B4() & 1) == 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v10 = sub_21A451054();

  *(inited + 48) = v10;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_21A451054();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v11 = sub_21A451054();

  *(inited + 120) = v11;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  *(inited + 168) = sub_21A451054();
  v12 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_21A451054();
  v0[28] = sub_21A433D0C;
  v0[29] = v13;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_21A432B2C;
  v0[27] = &block_descriptor_38_0;
  v15 = _Block_copy(v0 + 24);

  v16 = AnalyticsSendEventLazy();

  _Block_release(v15);

  v17 = v0[1];

  return v17(v16);
}

id sub_21A432B2C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_21A433C9C();
    v4 = sub_21A450F54();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t static PFLTelemetry.sendPFLPluginLocation(location:plugin:taskId:useCase:error:force:forwardToMLHost:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 656) = v13;
  *(v8 + 648) = v12;
  *(v8 + 664) = v11;
  *(v8 + 640) = v10;
  *(v8 + 632) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  return MEMORY[0x2822009F8](sub_21A432C14, 0, 0);
}

{
  *(v8 + 656) = v14;
  *(v8 + 640) = v13;
  *(v8 + 632) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  v11 = (v15 + *v15);
  v9 = swift_task_alloc();
  *(v8 + 648) = v9;
  *v9 = v8;
  v9[1] = sub_21A433458;

  return v11();
}

uint64_t sub_21A432C14()
{
  v1 = (*(v0 + 648))();
  if (v1)
  {
    if (*(v0 + 664) != 1)
    {
      goto LABEL_25;
    }

    v44 = v1;
    v2 = *(v0 + 600);
    *(v0 + 536) = *(v0 + 592);
    *(v0 + 544) = v2;
    *(v0 + 552) = 46;
    v3 = 0xE100000000000000;
    *(v0 + 560) = 0xE100000000000000;
    sub_21A3ED2CC();
    v4 = sub_21A451644();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 16 + 16 * v5);
      v7 = *v6;
      v3 = v6[1];
    }

    else
    {
      v7 = 85;
    }

    aBlock = (v0 + 416);
    v30 = *(v0 + 632);
    v31 = *(v0 + 624);

    if ((v7 != v31 || v3 != v30) && (sub_21A4519B4() & 1) == 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v32 = sub_21A451054();

    *(inited + 48) = v32;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v33 = sub_21A451054();

    *(inited + 120) = v33;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v41 = 440;
    v42 = &block_descriptor_52_0;
    v25 = 432;
    v26 = 428;
    v27 = 424;
    v28 = 456;
    v29 = 448;
  }

  else
  {
    v44 = v1;
    v8 = *(v0 + 640);
    v9 = sub_21A450A74();
    [v9 code];

    *(v0 + 568) = v8;
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    }

    else
    {
      v11 = sub_21A450A74();
      v12 = [v11 domain];

      sub_21A451084();
    }

    v13 = *(v0 + 600);
    *(v0 + 504) = *(v0 + 592);
    *(v0 + 512) = v13;
    *(v0 + 520) = 46;
    v14 = 0xE100000000000000;
    *(v0 + 528) = 0xE100000000000000;
    sub_21A3ED2CC();
    v15 = sub_21A451644();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 16 + 16 * v16);
      v18 = *v17;
      v14 = v17[1];
    }

    else
    {
      v18 = 85;
    }

    aBlock = (v0 + 368);
    v19 = *(v0 + 632);
    v20 = *(v0 + 624);

    if ((v18 != v20 || v14 != v19) && (sub_21A4519B4() & 1) == 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v22 = sub_21A451054();

    *(inited + 48) = v22;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v23 = sub_21A451054();

    *(inited + 120) = v23;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    v24 = sub_21A451054();

    *(inited + 168) = v24;
    v41 = 392;
    v42 = &block_descriptor_45_0;
    v25 = 384;
    v26 = 380;
    v27 = 376;
    v28 = 408;
    v29 = 400;
  }

  v34 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v36 = sub_21A451054();
  *(v0 + v29) = sub_21A433D0C;
  *(v0 + v28) = v35;
  *aBlock = MEMORY[0x277D85DD0];
  *(v0 + v27) = 1107296256;
  *(v0 + v26) = 0;
  *(v0 + v25) = sub_21A432B2C;
  *(v0 + v41) = v42;
  v37 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v37);

  v1 = v44;
LABEL_25:
  v38 = *(v0 + 8);
  v39 = v1 & 1;

  return v38(v39);
}

uint64_t sub_21A433458(char a1)
{
  *(*v1 + 657) = a1;

  return MEMORY[0x2822009F8](sub_21A433558, 0, 0);
}

uint64_t sub_21A433558()
{
  if (*(v0 + 657))
  {
    if (*(v0 + 656) != 1)
    {
      goto LABEL_25;
    }

    v1 = *(v0 + 600);
    *(v0 + 536) = *(v0 + 592);
    *(v0 + 544) = v1;
    *(v0 + 552) = 46;
    v2 = 0xE100000000000000;
    *(v0 + 560) = 0xE100000000000000;
    sub_21A3ED2CC();
    v3 = sub_21A451644();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 16 + 16 * v4);
      v6 = *v5;
      v2 = v5[1];
    }

    else
    {
      v6 = 85;
    }

    aBlock = (v0 + 416);
    v29 = *(v0 + 632);
    v30 = *(v0 + 624);

    if ((v6 != v30 || v2 != v29) && (sub_21A4519B4() & 1) == 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v31 = sub_21A451054();

    *(inited + 48) = v31;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v32 = sub_21A451054();

    *(inited + 120) = v32;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v40 = 440;
    v41 = &block_descriptor_67;
    v24 = 432;
    v25 = 428;
    v26 = 424;
    v27 = 456;
    v28 = 448;
  }

  else
  {
    v7 = *(v0 + 640);
    v8 = sub_21A450A74();
    [v8 code];

    *(v0 + 568) = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    }

    else
    {
      v10 = sub_21A450A74();
      v11 = [v10 domain];

      sub_21A451084();
    }

    v12 = *(v0 + 600);
    *(v0 + 504) = *(v0 + 592);
    *(v0 + 512) = v12;
    *(v0 + 520) = 46;
    v13 = 0xE100000000000000;
    *(v0 + 528) = 0xE100000000000000;
    sub_21A3ED2CC();
    v14 = sub_21A451644();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 16 + 16 * v15);
      v17 = *v16;
      v13 = v16[1];
    }

    else
    {
      v17 = 85;
    }

    aBlock = (v0 + 368);
    v18 = *(v0 + 632);
    v19 = *(v0 + 624);

    if ((v17 != v19 || v13 != v18) && (sub_21A4519B4() & 1) == 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v21 = sub_21A451054();

    *(inited + 48) = v21;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v22 = sub_21A451054();

    *(inited + 120) = v22;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    v23 = sub_21A451054();

    *(inited + 168) = v23;
    v40 = 392;
    v41 = &block_descriptor_59_0;
    v24 = 384;
    v25 = 380;
    v26 = 376;
    v27 = 408;
    v28 = 400;
  }

  v33 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  v35 = sub_21A451054();
  *(v0 + v28) = sub_21A433D0C;
  *(v0 + v27) = v34;
  *aBlock = MEMORY[0x277D85DD0];
  *(v0 + v26) = 1107296256;
  *(v0 + v25) = 0;
  *(v0 + v24) = sub_21A432B2C;
  *(v0 + v40) = v41;
  v36 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v36);

LABEL_25:
  v37 = *(v0 + 8);
  v38 = *(v0 + 657);

  return v37(v38);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21A433C9C()
{
  result = qword_27CD28BD0;
  if (!qword_27CD28BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD28BD0);
  }

  return result;
}

uint64_t sub_21A433D34()
{
  v37 = sub_21A450AB4();
  v0 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21A450D44();
  v3 = *(v35 - 1);
  MEMORY[0x28223BE20](v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A450BE4();
  v38 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  sub_21A450B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21A455F00;
  *(v12 + 32) = 0x617474612D6C6670;
  *(v12 + 40) = 0xEF73746E656D6863;
  sub_21A450D34();
  v13 = sub_21A450D24();
  v15 = v14;
  (*(v3 + 8))(v5, v35);
  *(v12 + 48) = v13;
  *(v12 + 56) = v15;
  v17 = v36;
  v16 = v37;
  (*(v0 + 104))(v2, *MEMORY[0x277CC91C0], v37);
  sub_21A3ED2CC();
  sub_21A450BB4();

  (*(v0 + 8))(v2, v16);
  v18 = v38;
  v35 = *(v38 + 8);
  v35(v9, v6);
  v19 = OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl;
  v20 = *(v18 + 32);
  v21 = v11;
  v37 = v6;
  v20(v17 + OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl, v11, v6);
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v22 = sub_21A450F24();
  __swift_project_value_buffer(v22, qword_27CD28C90);

  v23 = sub_21A450F04();
  v24 = sub_21A451574();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    v27 = v37;
    v28 = v21;
    (*(v38 + 16))(v21, v17 + v19, v37);
    v29 = sub_21A450B84();
    v31 = v30;
    v35(v28, v27);
    v32 = sub_21A3E2554(v29, v31, &v39);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_21A3C2000, v23, v24, "Task path: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x21CEDB220](v26, -1, -1);
    MEMORY[0x21CEDB220](v25, -1, -1);
  }

  return v17;
}

void sub_21A4341BC(void (*a1)(void, void, void))
{
  v2 = v1;
  v153 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v150 = (&v135 - v4);
  v149 = sub_21A450AA4();
  v148 = *(v149 - 1);
  MEMORY[0x28223BE20](v149);
  v152 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A450BE4();
  v151 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v135 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v135 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v135 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v135 - v19;
  v21 = sub_21A3EC940();
  v22 = swift_allocError();
  *v23 = 39;

  v24 = v156;
  sub_21A3FA748(v22, v2);
  v156 = v24;
  if (v24)
  {

    return;
  }

  v138 = v18;
  v142 = v9;
  v139 = v12;
  v137 = v15;
  v145 = v21;
  v146 = v20;
  v147 = v6;

  v25 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v26 = sub_21A450B34();
  v27 = [v25 initWithURL_];

  if (!v27)
  {
    swift_allocError();
    *v65 = 36;
    swift_willThrow();
    return;
  }

  v28 = v27;
  [v28 open];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "extractPKZip");
  *(inited + 16) = xmmword_21A455F00;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v30 = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 72) = v30;
  *(inited + 80) = 0x7274537475706E69;
  *(inited + 88) = 0xEB000000006D6165;
  *(inited + 120) = sub_21A435628();
  *(inited + 96) = v28;
  v143 = v28;
  sub_21A3E4F6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  v31 = sub_21A450F54();

  BOMCopierNew();
  v32 = v151;
  isa = v151[2].isa;
  v136 = OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl;
  v141 = v2;
  v34 = v146;
  v35 = v147;
  v36 = v151 + 2;
  v144 = isa;
  (isa)(v146, v2 + OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl, v147);
  v37 = sub_21A450B34();
  v38 = v32[1].isa;
  v38(v34, v35);
  [v37 fileSystemRepresentation];
  v39 = v37;
  v140 = v31;
  v40 = BOMCopierCopyWithOptions();
  v41 = v143;
  BOMCopierFree();
  [v41 close];
  if (v40)
  {
    LODWORD(v152) = v40;
    v156 = v32 + 1;

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v42 = sub_21A450F24();
    __swift_project_value_buffer(v42, qword_27CD28C90);
    v43 = v142;
    v44 = v147;
    v144(v142, v153, v147);
    v45 = v141;

    v46 = sub_21A450F04();
    v47 = sub_21A451584();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v153 = v36;
      v49 = v48;
      v151 = swift_slowAlloc();
      v154[0] = v151;
      *v49 = 136315650;
      sub_21A435674();
      v150 = v46;
      v50 = sub_21A451974();
      v51 = v43;
      v52 = v45;
      v54 = v53;
      v38(v51, v44);
      v55 = sub_21A3E2554(v50, v54, v154);
      LOBYTE(v54) = v47;
      v56 = v140;

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v57 = v52 + v136;
      v58 = v146;
      v144(v146, v57, v44);
      v59 = sub_21A451974();
      v61 = v60;
      v38(v58, v44);
      v62 = sub_21A3E2554(v59, v61, v154);
      v41 = v143;

      *(v49 + 14) = v62;
      *(v49 + 22) = 1024;
      *(v49 + 24) = v152;
      v63 = v150;
      _os_log_impl(&dword_21A3C2000, v150, v54, "Failed to unzip %s to %s with error: %d", v49, 0x1Cu);
      v64 = v151;
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v64, -1, -1);
      MEMORY[0x21CEDB220](v49, -1, -1);
    }

    else
    {

      v38(v43, v44);
      v56 = v140;
    }

    swift_allocError();
    *v96 = 37;
    swift_willThrow();
  }

  else
  {
    v66 = [v41 streamError];

    v135 = v38;
    if (v66)
    {

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v67 = sub_21A450F24();
      __swift_project_value_buffer(v67, qword_27CD28C90);
      v68 = v139;
      v69 = v147;
      v70 = v144;
      v144(v139, v153, v147);
      v71 = v141;

      v72 = v41;
      v73 = sub_21A450F04();
      v74 = sub_21A451584();

      LODWORD(v156) = v74;
      if (os_log_type_enabled(v73, v74))
      {
        v151 = v73;
        v75 = swift_slowAlloc();
        v153 = v36;
        v76 = v75;
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v154[0] = v150;
        *v76 = 136315650;
        sub_21A435674();
        v152 = v72;
        v77 = sub_21A451974();
        v79 = v78;
        v80 = v68;
        v81 = v71;
        v82 = v135;
        v135(v80, v69);
        v83 = sub_21A3E2554(v77, v79, v154);

        *(v76 + 4) = v83;
        *(v76 + 12) = 2080;
        v84 = v81 + v136;
        v85 = v146;
        v70(v146, v84, v69);
        v86 = sub_21A451974();
        v88 = v87;
        v82(v85, v69);
        v89 = sub_21A3E2554(v86, v88, v154);
        v72 = v152;

        *(v76 + 14) = v89;
        *(v76 + 22) = 2112;
        v90 = [v72 streamError];

        if (!v90)
        {
          __break(1u);
          return;
        }

        v91 = _swift_stdlib_bridgeErrorToNSError();
        *(v76 + 24) = v91;
        v92 = v149;
        *v149 = v91;
        v93 = v151;
        _os_log_impl(&dword_21A3C2000, v151, v156, "Failed to unzip %s to %s with stream error: %@", v76, 0x20u);
        sub_21A3D3BF0(v92, &qword_27CD28608, &qword_21A456570);
        MEMORY[0x21CEDB220](v92, -1, -1);
        v94 = v150;
        swift_arrayDestroy();
        MEMORY[0x21CEDB220](v94, -1, -1);
        MEMORY[0x21CEDB220](v76, -1, -1);

        v95 = v140;
      }

      else
      {

        v135(v68, v69);
        v95 = v140;
      }

      swift_allocError();
      *v119 = 38;
      swift_willThrow();

      return;
    }

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v97 = sub_21A450F24();
    __swift_project_value_buffer(v97, qword_27CD28C90);
    v98 = v138;
    v99 = v153;
    v100 = v147;
    v153 = v36;
    v144(v138, v99, v147);
    v101 = v141;

    v102 = sub_21A450F04();
    v103 = sub_21A451574();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v154[0] = v145;
      *v104 = 136315394;
      sub_21A435674();
      v142 = v102;
      v105 = sub_21A451974();
      v106 = v38;
      LODWORD(v139) = v103;
      v108 = v107;
      v38(v98, v147);
      v109 = sub_21A3E2554(v105, v108, v154);

      *(v104 + 4) = v109;
      *(v104 + 12) = 2080;
      v110 = v136;
      v111 = v146;
      v144(v146, v101 + v136, v147);
      v112 = sub_21A451974();
      v114 = v113;
      v106(v111, v147);
      v115 = sub_21A3E2554(v112, v114, v154);
      v41 = v143;

      *(v104 + 14) = v115;
      v116 = v142;
      _os_log_impl(&dword_21A3C2000, v142, v139, "Successfully unziped %s to %s ", v104, 0x16u);
      v117 = v145;
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v117, -1, -1);
      v118 = v104;
      v100 = v147;
      MEMORY[0x21CEDB220](v118, -1, -1);
    }

    else
    {

      v38(v98, v100);
      v111 = v146;
      v110 = v136;
    }

    v120 = [objc_opt_self() defaultManager];
    v144(v111, v101 + v110, v100);
    v121 = sub_21A451554();

    v135(v111, v100);
    v122 = v151;
    if (v121)
    {
      v123 = v152;
      sub_21A451544();
      sub_21A450A94();
      if (v155)
      {
        v124 = v122 + 7;
        v125 = v122 + 4;
        v126 = MEMORY[0x277D84F90];
        do
        {
          v127 = v125;
          v128 = v150;
          while (1)
          {
            v129 = swift_dynamicCast();
            v130 = v124->isa;
            v131 = v128;
            if (v129)
            {
              break;
            }

            v130(v128, 1, 1, v100);
            sub_21A3D3BF0(v128, &qword_27CD287D8, &qword_21A456BD0);
            sub_21A450A94();
            if (!v155)
            {
              v123 = v152;
              goto LABEL_39;
            }
          }

          v130(v128, 0, 1, v100);
          v125 = v127;
          v153 = v127->isa;
          v153(v137, v131, v100);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_21A408668(0, v126[2] + 1, 1, v126);
          }

          v123 = v152;
          v133 = v126[2];
          v132 = v126[3];
          if (v133 >= v132 >> 1)
          {
            v126 = sub_21A408668((v132 > 1), v133 + 1, 1, v126);
          }

          v126[2] = v133 + 1;
          v134 = v126 + ((LOBYTE(v151[10].isa) + 32) & ~LOBYTE(v151[10].isa)) + v151[9].isa * v133;
          v100 = v147;
          (v153)(v134);
          sub_21A450A94();
        }

        while (v155);
      }

LABEL_39:
      (*(v148 + 8))(v123, v149);
    }

    else
    {
    }
  }
}

id sub_21A4352F4(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21A450BE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl, v2);
  v7 = sub_21A450B34();
  (*(v3 + 8))(v5, v2);
  v10[0] = 0;
  LOBYTE(v2) = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:v10];

  if (v2)
  {
    return v10[0];
  }

  v9 = v10[0];
  sub_21A450A84();

  return swift_willThrow();
}

uint64_t sub_21A4354A8()
{
  v1 = OBJC_IVAR____TtC24PrivateFederatedLearning14PFLTaskStorage_baseUrl;
  v2 = sub_21A450BE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PFLTaskStorage(uint64_t a1)
{
  result = qword_27CD28BD8;
  if (!qword_27CD28BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A435598(uint64_t a1)
{
  result = sub_21A450BE4();
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

unint64_t sub_21A435628()
{
  result = qword_27CD28BE8;
  if (!qword_27CD28BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD28BE8);
  }

  return result;
}

unint64_t sub_21A435674()
{
  result = qword_27CD28CC0;
  if (!qword_27CD28CC0)
  {
    sub_21A450BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28CC0);
  }

  return result;
}

uint64_t sub_21A4356CC()
{
  v50[1] = *MEMORY[0x277D85DE8];
  v0 = sub_21A450AB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A450BE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  sub_21A450B24();
  (*(v1 + 104))(v3, *MEMORY[0x277CC91C0], v0);
  sub_21A3ED2CC();
  sub_21A450BB4();
  (*(v1 + 8))(v3, v0);
  v11 = *(v5 + 8);
  v11(v8, v4);
  v12 = sub_21A450B84();
  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v49 = v12;
  v17 = sub_21A451054();
  v18 = [v16 fileExistsAtPath_];

  if (v18)
  {
    v19 = [v15 defaultManager];
    v20 = sub_21A450B34();
    v50[0] = 0;
    v21 = [v19 removeItemAtURL:v20 error:v50];

    if (v21)
    {
      v22 = qword_27CD28170;
      v23 = v50[0];
      v24 = v11;
      if (v22 != -1)
      {
        swift_once();
      }

      v25 = sub_21A450F24();
      __swift_project_value_buffer(v25, qword_27CD28C90);

      v26 = sub_21A450F04();
      v27 = sub_21A451574();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v50[0] = v29;
        *v28 = 136315138;
        v30 = sub_21A3E2554(v49, v14, v50);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_21A3C2000, v26, v27, "Removed %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x21CEDB220](v29, -1, -1);
        MEMORY[0x21CEDB220](v28, -1, -1);
      }

      else
      {
      }

      return v24(v10, v4);
    }

    else
    {
      v32 = v50[0];
      v33 = sub_21A450A84();

      swift_willThrow();
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v34 = sub_21A450F24();
      __swift_project_value_buffer(v34, qword_27CD28C90);

      v35 = v33;
      v36 = sub_21A450F04();
      v37 = sub_21A451584();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v48 = v11;
        v39 = v38;
        v40 = swift_slowAlloc();
        v47 = v36;
        v41 = v40;
        v42 = swift_slowAlloc();
        v50[0] = v42;
        *v39 = 136315394;
        v43 = sub_21A3E2554(v49, v14, v50);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2112;
        v44 = v33;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 14) = v45;
        *v41 = v45;
        v46 = v47;
        _os_log_impl(&dword_21A3C2000, v47, v37, "Failed to remove %s: %@", v39, 0x16u);
        sub_21A3D3BF0(v41, &qword_27CD28608, &qword_21A456570);
        MEMORY[0x21CEDB220](v41, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x21CEDB220](v42, -1, -1);
        MEMORY[0x21CEDB220](v39, -1, -1);

        return v48(v10, v4);
      }

      else
      {

        return (v11)(v10, v4);
      }
    }
  }

  else
  {
    v11(v10, v4);
  }
}

uint64_t sub_21A435CF8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21A450AB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_21A450BE4();
  v9 = *(v33 - 8);
  v10 = MEMORY[0x28223BE20](v33);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = type metadata accessor for PFLDecodableTaskParameters(0);
  v17 = a2;
  v18 = v16;
  if (v17)
  {
    v32 = v16;
    sub_21A450AF4();
    v34 = 0x6574656D61726170;
    v35 = 0xEF6E6F736A2E7372;
    (*(v6 + 104))(v8, *MEMORY[0x277CC91D0], v5);
    sub_21A3ED2CC();
    sub_21A450BC4();
    (*(v6 + 8))(v8, v5);
    v24 = sub_21A450C04();
    v26 = v25;
    sub_21A450974();
    swift_allocObject();
    sub_21A450964();
    sub_21A438428();
    v27 = v32;
    sub_21A450954();

    sub_21A3E759C(v24, v26);
    v28 = *(v9 + 8);
    v29 = v33;
    v28(v13, v33);
    v28(v15, v29);
    return (*(*(v27 - 8) + 56))(a3, 0, 1, v27);
  }

  else
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v19 = sub_21A450F24();
    __swift_project_value_buffer(v19, qword_27CD28C90);
    v20 = sub_21A450F04();
    v21 = sub_21A451574();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21A3C2000, v20, v21, "No task folder", v22, 2u);
      MEMORY[0x21CEDB220](v22, -1, -1);
    }

    v23 = *(*(v18 - 8) + 56);

    return v23(a3, 1, 1, v18);
  }
}

uint64_t static PFLTaskPreferences.loadTaskPreferences(preferredTaskSource:from:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28BF0, &qword_21A458C70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for PFLDecodableTaskParameters(0);
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v34 = v16;
  sub_21A435CF8(a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21A3D3BF0(v9, &qword_27CD28BF0, &qword_21A458C70);
    v18 = type metadata accessor for PFLTaskPreferences(0);
    v19 = a4 + *(v18 + 20);
    v20 = v14;
    v21 = v14;
    v22 = v15;
    v23 = v15;
    v24 = v34;
    sub_21A3ED4E4(v21, v23, v34, v17);
    sub_21A450CF4();
    sub_21A450CB4();
    v25 = sub_21A3E4F6C(MEMORY[0x277D84F90]);
    v33 = xmmword_21A458C60;
    *v19 = xmmword_21A458C60;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    v26 = &v19[v10[12]];
    sub_21A437FDC(0, 6uLL, 0, 0);
    *v19 = v33;
    *(v19 + 3) = 0;
    *(v19 + 4) = 0;
    *(v19 + 2) = 0;
    *v26 = 0;
    *(v26 + 1) = 0;
    v19[40] = 0;
    v19[v10[10]] = 0;
    v19[v10[11]] = 0;
    *(v19 + 6) = 0x3FF0000000000000;
    *&v19[v10[13]] = v25;
    v27 = *(v18 + 24);
    result = os_variant_has_internal_content();
    has_internal_content = result;
  }

  else
  {
    sub_21A437FEC(v9, v13);
    v30 = type metadata accessor for PFLTaskPreferences(0);
    sub_21A438050(v13, a4 + *(v30 + 20));
    v27 = *(v30 + 24);
    v20 = v14;
    v31 = v14;
    v22 = v15;
    v32 = v15;
    v24 = v34;
    sub_21A3ED4E4(v31, v32, v34, v17);
    has_internal_content = os_variant_has_internal_content();
    result = sub_21A4380B4(v13);
  }

  *(a4 + v27) = has_internal_content;
  *a4 = v20;
  a4[1] = v22;
  a4[2] = v24;
  a4[3] = v17;
  return result;
}

uint64_t sub_21A436818(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PFLTaskPreferences.privacyBudgetPrefix.getter()
{
  v1 = v0 + *(type metadata accessor for PFLTaskPreferences(0) + 20);
  v2 = *(v1 + *(type metadata accessor for PFLDecodableTaskParameters(0) + 48));

  return v2;
}

void PFLTaskPreferences.taskSource.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PFLTaskPreferences(0);
  if (*(v1 + *(v3 + 24)))
  {
    v4 = (v1 + *(v3 + 20));
    v5 = v4[1];
    if (v5 == 6)
    {
      v5 = v1[1];
      if (v5 == 3)
      {
        *a1 = xmmword_21A4562A0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        return;
      }

      v7 = v1[2];
      v8 = v1[3];
      v6 = *v1;
    }

    else
    {
      v7 = v4[2];
      v8 = v4[3];
      v6 = *v4;
    }
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    v7 = v1[2];
    v8 = v1[3];
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;

  sub_21A3ED4E4(v6, v5, v7, v8);
}

_OWORD *sub_21A436948(char a1)
{
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28C50, &qword_21A458D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28C30, &qword_21A458D10);
  sub_21A4385B4();
  sub_21A451914();
  if (v1)
  {
    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
  result = sub_21A451854();
  v2 = result;
  v4 = 0;
  v26 = result;
  v27 = *&v28[0];
  v5 = 1 << *(*&v28[0] + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = *&v28[0] + 64;
  v8 = v6 & *(*&v28[0] + 64);
  v9 = (v5 + 63) >> 6;
  v25 = result + 4;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = v10 | (v4 << 6);
      v14 = 16 * v13;
      v15 = (*(v27 + 48) + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = 32 * v13;
      sub_21A438694(*(v27 + 56) + 32 * v13, v28);
      v19 = (v13 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v20 = 1 << v13;
      v2 = v26;
      *(v25 + v19) |= v20;
      v21 = (v26[6] + v14);
      *v21 = v16;
      v21[1] = v17;
      result = sub_21A3D3B38(v28, (v26[7] + v18));
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v26[2] = v24;

      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {

        return v2;
      }

      v12 = *(v7 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A436B40@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A451BA4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    if (sub_21A451A14())
    {
      v5 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      *(&v12 + 1) = sub_21A43894C();
      *&v11 = v5;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v6 = sub_21A4519F4();
      *(&v12 + 1) = MEMORY[0x277D83B88];
      *&v11 = v6;
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
    v7 = v12;
    *a2 = v11;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21A437164(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x756F735F6B736174;
    v7 = 0xD000000000000019;
    if (a1 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000015;
    }

    if (a1)
    {
      v6 = 0xD000000000000011;
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
    v1 = 0x656D69745F646E65;
    v2 = 0x617261506B736174;
    if (a1 == 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x69745F7472617473;
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

uint64_t sub_21A4372F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21A437164(*a1);
  v5 = v4;
  if (v3 == sub_21A437164(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A4519B4();
  }

  return v8 & 1;
}

uint64_t sub_21A437378()
{
  v1 = *v0;
  sub_21A451B04();
  sub_21A437164(v1);
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A4373DC(uint64_t a1)
{
  sub_21A437164(*v1);
  sub_21A451144();
}

uint64_t sub_21A437430(uint64_t a1)
{
  v2 = *v1;
  sub_21A451B04();
  sub_21A437164(v2);
  sub_21A451144();

  return sub_21A451B24();
}

unint64_t sub_21A437490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21A43887C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21A4374C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A437164(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21A437508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A43887C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A43753C(uint64_t a1)
{
  v2 = sub_21A438480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A437578(uint64_t a1)
{
  v2 = sub_21A438480();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21A4375B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_21A450D14();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  MEMORY[0x28223BE20](v3);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A4510B4();
  v58 = *(v6 - 8);
  *&v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28C30, &qword_21A458D10);
  v64 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for PFLDecodableTaskParameters(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v65 = xmmword_21A458C60;
  *v17 = xmmword_21A458C60;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21A438480();
  v19 = v66;
  sub_21A451BB4();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(v67);
    sub_21A437FDC(*v17, *(v17 + 1), *(v17 + 2), *(v17 + 3));
  }

  else
  {
    v55 = v15;
    v56 = v8;
    v66 = v12;
    v57 = &v17[*(v12 + 48)];
    LOBYTE(v69) = 10;
    v20 = v9;
    v21 = v11;
    sub_21A4518E4();
    v22 = v56;
    sub_21A4510A4();
    v23 = sub_21A451094();
    v25 = v24;

    (*(v58 + 8))(v22, v59);
    if (v25 >> 60 == 15)
    {
      v26 = v20;
      v68 = 0;
      sub_21A4384D4();
      sub_21A451914();
      v59 = v70;
      v65 = v69;
      v27 = v66;
      sub_21A437FDC(*v17, *(v17 + 1), *(v17 + 2), *(v17 + 3));
      v28 = v59;
      *v17 = v65;
      *(v17 + 1) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28470, &qword_21A458CC0);
      v68 = 1;
      sub_21A438528();
      sub_21A451914();
      *(v17 + 4) = v69;
      LOBYTE(v69) = 2;
      v29 = sub_21A4518E4();
      v30 = v57;
      *v57 = v29;
      v30[1] = v31;
      LOBYTE(v69) = 3;
      v17[40] = sub_21A4518F4() & 1;
      LOBYTE(v69) = 4;
      v17[v27[10]] = sub_21A4518F4() & 1;
      LOBYTE(v69) = 5;
      v17[v27[11]] = sub_21A4518F4() & 1;
      LOBYTE(v69) = 6;
      sub_21A451904();
      *(v17 + 6) = v32;
      LOBYTE(v69) = 7;
      sub_21A451904();
      sub_21A450CD4();
      LOBYTE(v69) = 8;
      sub_21A451904();
      v33 = v64;
      sub_21A450CD4();
      v34 = sub_21A436948(9);
      v35 = v63;
      (*(v33 + 8))(v21, v26);
      v36 = v27 + 13;
    }

    else
    {
      sub_21A450974();
      swift_allocObject();
      sub_21A450964();
      sub_21A438428();
      v37 = v55;
      sub_21A450954();
      (*(v64 + 8))(v21, v20);

      sub_21A3ECC34(v23, v25);
      v38 = v37;
      v39 = *v37;
      v41 = *(v38 + 8);
      v40 = *(v38 + 16);
      v42 = *(v38 + 24);
      v44 = *v17;
      v43 = *(v17 + 1);
      v45 = *(v17 + 2);
      v64 = *(v17 + 3);
      *&v65 = v45;
      sub_21A4385A4(v39, v41, v40, v42);
      v46 = v43;
      v47 = v66;
      sub_21A437FDC(v44, v46, v65, v64);
      *v17 = v39;
      *(v17 + 1) = v41;
      *(v17 + 2) = v40;
      *(v17 + 3) = v42;
      *(v17 + 4) = *(v38 + 32);
      v48 = (v38 + v47[12]);
      v49 = *v48;
      v50 = v48[1];
      v51 = v57;
      *v57 = v49;
      v51[1] = v50;
      v17[40] = *(v38 + 40);
      v17[v47[10]] = *(v38 + v47[10]);
      v17[v47[11]] = *(v38 + v47[11]);
      *(v17 + 6) = *(v38 + 48);
      v52 = v61;
      v53 = *(v62 + 16);
      v53(&v17[v47[8]], v38 + v47[8], v61);
      v53(&v17[v47[9]], v38 + v47[9], v52);
      v54 = v47[13];
      v36 = v47 + 13;
      v34 = *(v38 + v54);

      sub_21A4380B4(v38);
      v35 = v63;
    }

    *&v17[*v36] = v34;
    sub_21A438050(v17, v35);
    __swift_destroy_boxed_opaque_existential_0(v67);
    sub_21A4380B4(v17);
  }
}

uint64_t PFLTaskPreferences.customParameters.getter()
{
  type metadata accessor for PFLTaskPreferences(0);
  type metadata accessor for PFLDecodableTaskParameters(0);
}

uint64_t PFLTaskPreferences.decodeCustomParameters<A>()(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  type metadata accessor for PFLTaskPreferences(0);
  type metadata accessor for PFLDecodableTaskParameters(0);
  v3 = sub_21A450F54();
  v11[0] = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v11];

  v5 = v11[0];
  if (v4)
  {
    v6 = sub_21A450C64();
    v8 = v7;

    sub_21A450974();
    swift_allocObject();
    sub_21A450964();
    sub_21A450954();

    return sub_21A3E759C(v6, v8);
  }

  else
  {
    v10 = v5;
    sub_21A450A84();

    return swift_willThrow();
  }
}

void sub_21A437FDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 6)
  {
    sub_21A3ED49C(a1, a2, a3, a4);
  }
}

uint64_t sub_21A437FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFLDecodableTaskParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A438050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFLDecodableTaskParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A4380B4(uint64_t a1)
{
  v2 = type metadata accessor for PFLDecodableTaskParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A438138(uint64_t a1)
{
  result = type metadata accessor for PFLDecodableTaskParameters(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21A4381E4(uint64_t a1)
{
  sub_21A438350(319, &qword_27CD28C08, &type metadata for PFLTaskSource);
  if (v1 <= 0x3F)
  {
    sub_21A4382EC(319);
    if (v2 <= 0x3F)
    {
      sub_21A450D14();
      if (v3 <= 0x3F)
      {
        sub_21A438350(319, &qword_27CD28C18, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_21A43839C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A4382EC(uint64_t a1)
{
  if (!qword_27CD28C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28470, &qword_21A458CC0);
    v1 = sub_21A4515F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD28C10);
    }
  }
}

void sub_21A438350(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21A4515F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A43839C()
{
  if (!qword_27CD28C20)
  {
    v0 = sub_21A450F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD28C20);
    }
  }
}

unint64_t sub_21A438400(uint64_t a1)
{
  result = sub_21A438428();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21A438428()
{
  result = qword_27CD28C28;
  if (!qword_27CD28C28)
  {
    type metadata accessor for PFLDecodableTaskParameters(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C28);
  }

  return result;
}

unint64_t sub_21A438480()
{
  result = qword_27CD28C38;
  if (!qword_27CD28C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C38);
  }

  return result;
}

unint64_t sub_21A4384D4()
{
  result = qword_27CD28C40;
  if (!qword_27CD28C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C40);
  }

  return result;
}

unint64_t sub_21A438528()
{
  result = qword_27CD28C48;
  if (!qword_27CD28C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28470, &qword_21A458CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C48);
  }

  return result;
}

void sub_21A4385A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 6)
  {
    sub_21A3ED4E4(a1, a2, a3, a4);
  }
}

unint64_t sub_21A4385B4()
{
  result = qword_27CD28C58;
  if (!qword_27CD28C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28C50, &qword_21A458D18);
    sub_21A438640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C58);
  }

  return result;
}

unint64_t sub_21A438640()
{
  result = qword_27CD28C60;
  if (!qword_27CD28C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C60);
  }

  return result;
}

uint64_t sub_21A4386CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21A438714(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_21A438778()
{
  result = qword_27CD28C68;
  if (!qword_27CD28C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C68);
  }

  return result;
}

unint64_t sub_21A4387D0()
{
  result = qword_27CD28C70;
  if (!qword_27CD28C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C70);
  }

  return result;
}

unint64_t sub_21A438828()
{
  result = qword_27CD28C78;
  if (!qword_27CD28C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C78);
  }

  return result;
}

unint64_t sub_21A43887C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A4518A4();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21A4388C8()
{
  result = qword_27CD28C88;
  if (!qword_27CD28C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD28C80, &unk_21A458ED0);
    sub_21A438640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28C88);
  }

  return result;
}

unint64_t sub_21A43894C()
{
  result = qword_27CD28A18;
  if (!qword_27CD28A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD28A18);
  }

  return result;
}

uint64_t sub_21A4389FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21A450F24();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_21A450F14();
}

uint64_t sub_21A438A98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_21A450F24();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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

uint64_t Buffer.__allocating_init(desc:bufferType:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = swift_allocObject();
  Buffer.init(desc:bufferType:)(a1, a2);
  return v4;
}

uint64_t Buffer.__allocating_init(from:size:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Buffer.init(from:size:)(a1, a2);
  return v4;
}

uint64_t sub_21A438C54@<X0>(_BYTE *a2@<X8>)
{
  type = e5rt_buffer_object_get_type();
  result = sub_21A3DCF54(type);
  if (!v2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t BufferType.hashValue.getter()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

uint64_t Buffer.init(desc:bufferType:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = e5rt_tensor_desc_alloc_buffer_object();
  sub_21A3DCF54(v4);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  type metadata accessor for Buffer();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t Buffer.init(from:size:)(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v4 = e5rt_buffer_object_create_from_data_pointer();
  sub_21A3DCF54(v4);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v6 = 6;
    swift_willThrow();
  }

  type metadata accessor for Buffer();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t Buffer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Buffer.init(from:)(a1);
  return v2;
}

uint64_t Buffer.init(from:)(uint64_t *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = sub_21A439AE8(a1);
  if (!v2)
  {
    if (!v4)
    {
      sub_21A3DCAA4();
      swift_allocError();
      v8 = 24;
LABEL_7:
      *v7 = v8;
      swift_willThrow();
      type metadata accessor for Buffer();
      swift_deallocPartialClassInstance();
      return v1;
    }

    v5 = *a1;
    v6 = a1[1] >> 62;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_13;
      }

      v9 = v5 + 16;
      v5 = *(v5 + 16);
      if (!__OFSUB__(*(v9 + 8), v5))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v6)
    {
LABEL_13:
      v12 = 0;
      v10 = e5rt_buffer_object_create_from_data_pointer();
      sub_21A3DCF54(v10);
      sub_21A3DCAF8();
      swift_allocError();
      v8 = 6;
      goto LABEL_7;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      __break(1u);
    }

    goto LABEL_13;
  }

  type metadata accessor for Buffer();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t Buffer.__allocating_init(from:bufferType:)(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = swift_allocObject();
  Buffer.init(from:bufferType:)(a1, a2);
  return v4;
}

uint64_t Buffer.init(from:bufferType:)(uint64_t *a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[1] >> 62;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_9;
    }

    v6 = v4 + 16;
    v4 = *(v4 + 16);
    if (!__OFSUB__(*(v6 + 8), v4))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v4), v4))
  {
    __break(1u);
    __break(1u);
  }

LABEL_9:
  v10 = 0;
  v7 = e5rt_buffer_object_alloc();
  sub_21A3DCF54(v7);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v8 = 6;
    swift_willThrow();
  }

  type metadata accessor for Buffer();
  swift_deallocPartialClassInstance();
  return v2;
}

void *sub_21A439640(uint64_t a1, unint64_t a2)
{
  sub_21A3DCAA4();
  result = swift_allocError();
  *v6 = 23;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v8) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v8 = v8;
LABEL_10:
  if (v8 < *(v2 + 32))
  {
    return swift_willThrow();
  }

  return sub_21A450CA4();
}

uint64_t sub_21A439714()
{
  v1 = sub_21A450C24();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v6 + 104))(v3, *MEMORY[0x277CC92A8]);
  return sub_21A439E78(v5, v4, v3);
}

uint64_t sub_21A4397E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A450C24();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  (*(v9 + 104))(v6, *MEMORY[0x277CC92A8]);
  v10 = sub_21A439E78(v8, v7, v6);
  v12 = v11;
  v13 = Data.toArray<A>()(v10, v11, a2);
  sub_21A3E759C(v10, v12);
  return v13;
}

id sub_21A4398E4()
{
  if (*(v0 + 40))
  {
    sub_21A3DCAA4();
    swift_allocError();
    v3 = 41;
LABEL_3:
    *v2 = v3;
    return swift_willThrow();
  }

  iosurface = e5rt_buffer_object_get_iosurface();
  result = sub_21A3DCF54(iosurface);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    v3 = 6;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_21A4399E4()
{
  if (*(v0 + 40) != 2)
  {
    sub_21A3DCAA4();
    swift_allocError();
    v5 = 41;
LABEL_5:
    *v4 = v5;
    swift_willThrow();
    return v0;
  }

  v2 = v1;
  mtlbuffer = e5rt_buffer_object_get_mtlbuffer();
  v0 = 0;
  swift_unknownObjectRetain();
  sub_21A3DCF54(mtlbuffer);
  if (!v2)
  {
    sub_21A3DCAF8();
    swift_allocError();
    v5 = 6;
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t *sub_21A439AE8(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return &v17;
    }

    sub_21A3E759C(v3, v2);
    v17 = v3;
    v18 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_21A458F20;
    sub_21A3E759C(0, 0xC000000000000000);
    sub_21A450BF4();
    v7 = v18;
    v8 = *(v17 + 16);
    result = sub_21A4509F4();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    v10 = result;
    v11 = sub_21A450A24();
    if (__OFSUB__(v8, v11))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v5 = (v10 + v8 - v11);
    sub_21A450A14();
    *a1 = v17;
    a1[1] = v7 | 0x8000000000000000;
    return v5;
  }

  if (!v4)
  {
    sub_21A3E759C(v3, v2);
    LOWORD(v18) = v2;
    BYTE2(v18) = BYTE2(v2);
    BYTE3(v18) = BYTE3(v2);
    BYTE4(v18) = BYTE4(v2);
    BYTE5(v18) = BYTE5(v2);
    v5 = &v17;
    v6 = v18 | ((WORD2(v18) | (BYTE6(v2) << 16)) << 32);
LABEL_19:
    *a1 = v3;
    a1[1] = v6;
    return v5;
  }

  v12 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_21A3E759C(v3, v2);
  *a1 = xmmword_21A458F20;
  sub_21A3E759C(0, 0xC000000000000000);
  v13 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v13 < v3)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_21A4509F4() && __OFSUB__(v3, sub_21A450A24()))
    {
LABEL_25:
      __break(1u);
    }

    sub_21A450A44();
    swift_allocObject();
    v14 = sub_21A4509D4();

    v12 = v14;
  }

  if (v13 < v3)
  {
    goto LABEL_22;
  }

  result = sub_21A4509F4();
  if (result)
  {
    v15 = result;
    v16 = sub_21A450A24();
    if (!__OFSUB__(v3, v16))
    {
      v5 = (v15 + v3 - v16);
      sub_21A450A14();

      v6 = v12 | 0x4000000000000000;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21A439D94(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_21A450C34();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_21A4509F4();
  if (v3)
  {
    result = sub_21A450A24();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_21A450A14();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_21A3DBEF8(v3, v7);

  return v8;
}

uint64_t sub_21A439E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A450C24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A450C14();
  if (a2)
  {
    sub_21A450A44();
    swift_allocObject();

    v10 = sub_21A4509D4();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = sub_21A450A34();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_21A439D94(v10, a2);
  }

  else
  {
    v13 = sub_21A450C14();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

unint64_t sub_21A43A0D8()
{
  result = qword_27CD28CA8;
  if (!qword_27CD28CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28CA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BufferType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BufferType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void MPSContext.init()(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD7850]) init];
  if (MTLCreateSystemDefaultDevice())
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      v5 = objc_allocWithZone(MEMORY[0x277CD6CF8]);
      swift_unknownObjectRetain();
      v6 = [v5 init];
      [v6 setDisableIOFencing_];
      [v6 setEnableLowLatencySignalSharedEvent_];
      [v6 setEnableLowLatencyWaitSharedEvent_];
      [v6 setCommitsWithQoS_];
      [v4 newCommandQueueWithDescriptor_];
      swift_unknownObjectRelease();
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        v8 = v7;

        if ([v8 setBackgroundGPUPriority_])
        {
          *a1 = v4;
          a1[1] = v8;
          a1[2] = v2;
        }

        else
        {
          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v19 = sub_21A450F24();
          __swift_project_value_buffer(v19, qword_27CD28C90);
          v20 = sub_21A450F04();
          v21 = sub_21A451584();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&dword_21A3C2000, v20, v21, "Failed to set background GPU priority", v22, 2u);
            MEMORY[0x21CEDB220](v22, -1, -1);
          }

          sub_21A3DCAA4();
          swift_allocError();
          *v23 = 42;
          swift_willThrow();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v14 = sub_21A450F24();
        __swift_project_value_buffer(v14, qword_27CD28C90);
        v15 = sub_21A450F04();
        v16 = sub_21A451584();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_21A3C2000, v15, v16, "Failed to make command queue", v17, 2u);
          MEMORY[0x21CEDB220](v17, -1, -1);
        }

        sub_21A3DCAA4();
        swift_allocError();
        *v18 = 39;
        swift_willThrow();

        swift_unknownObjectRelease();
      }

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v9 = sub_21A450F24();
  __swift_project_value_buffer(v9, qword_27CD28C90);
  v10 = sub_21A450F04();
  v11 = sub_21A451584();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21A3C2000, v10, v11, "Failed to create Metal device", v12, 2u);
    MEMORY[0x21CEDB220](v12, -1, -1);
  }

  sub_21A3DCAA4();
  swift_allocError();
  *v13 = 39;
  swift_willThrow();
}

uint64_t sub_21A43A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v6 = sub_21A450AA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v31 = a3;
  v32 = a4;
  v11 = sub_21A451054();
  v12 = [v10 enumeratorAtPath_];

  if (!v12)
  {
    goto LABEL_17;
  }

  v27 = v7;
  v28 = v6;
  v26 = v12;
  sub_21A451544();
  sub_21A450A94();
  if (!v34)
  {
LABEL_16:
    (*(v27 + 8))(v9, v28);

LABEL_17:
    return 0;
  }

  while (1)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v13 = sub_21A451054();
    v14 = sub_21A451054();
    v15 = [v13 stringByAppendingPathComponent_];

    v16 = v15;
    if (!v15)
    {
      sub_21A451084();
      v16 = sub_21A451054();
    }

    v17 = sub_21A451084();
    LOBYTE(v33) = 0;
    v18 = [v10 fileExistsAtPath:v16 isDirectory:&v33];

    if (v18)
    {
      if (v33 == 1)
      {
        break;
      }
    }

LABEL_5:

LABEL_6:
    sub_21A450A94();
    if (!v34)
    {
      goto LABEL_16;
    }
  }

  v19 = sub_21A451054();

  v20 = [v19 lastPathComponent];

  v21 = sub_21A451084();
  v23 = v22;

  if (v21 != v30 || v23 != v29)
  {
    v24 = sub_21A4519B4();

    if (v24)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

LABEL_20:
  (*(v27 + 8))(v9, v28);

  return v17;
}

uint64_t sub_21A43AC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v153 = a1;
  v151 = a2;
  v152 = a3;
  v149 = a4;
  v158 = *MEMORY[0x277D85DE8];
  v4 = sub_21A450BE4();
  v150 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v141 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v141 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v141 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v141 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v141 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v141 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v141 - v26;
  v156 = 0;
  e5_bundle_path = e5rt_program_library_get_e5_bundle_path();
  v29 = v154;
  result = sub_21A3DCF54(e5_bundle_path);
  if (!v29)
  {
    v154 = v4;
    v144 = v7;
    v145 = v16;
    v143 = v10;
    v146 = v13;
    v147 = v19;
    v31 = v152;
    v148 = v25;
    if (!v156)
    {
      sub_21A3DCAF8();
      swift_allocError();
      *v65 = 6;
      return swift_willThrow();
    }

    v153 = 0;
    v32 = sub_21A4511C4();
    v34 = v33;
    v35 = v151;
    v36 = v31;
    sub_21A43A898(v151, v31, v32, v33);
    if (v37)
    {
      v141 = v32;
      v155 = 1;
      v38 = v27;
      sub_21A450AF4();

      v142 = objc_opt_self();
      v39 = [v142 defaultManager];
      sub_21A450B84();
      v40 = sub_21A451054();

      v41 = [v39 fileExistsAtPath:v40 isDirectory:&v155];

      if (v41)
      {

        v156 = v151;
        v157 = v31;

        MEMORY[0x21CED98B0](0x6172675F73706D5FLL, 0xEA00000000006870);
        v42 = v148;
        sub_21A450B44();

        v43 = [v142 defaultManager];
        sub_21A450B84();
        v44 = sub_21A451054();

        v45 = [v43 fileExistsAtPath:v44 isDirectory:&v155];

        v46 = v154;
        if (v45)
        {
          v47 = v147;
          sub_21A450B54();
          v48 = [v142 defaultManager];
          sub_21A450B94();
          v49 = sub_21A451054();

          v50 = [v48 fileExistsAtPath_];

          if (v50)
          {
            v51 = v150;
            v52 = v152;
            if (qword_27CD28170 != -1)
            {
              swift_once();
            }

            v53 = sub_21A450F24();
            __swift_project_value_buffer(v53, qword_27CD28C90);
            v54 = v145;
            (*(v51 + 16))(v145, v47, v46);

            v55 = v52;
            v56 = sub_21A450F04();
            v57 = sub_21A451574();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v146 = swift_slowAlloc();
              v156 = v146;
              *v58 = 136315394;
              *(v58 + 4) = sub_21A3E2554(v151, v55, &v156);
              *(v58 + 12) = 2080;
              sub_21A435674();
              v59 = sub_21A451974();
              v61 = v60;
              v152 = v38;
              v62 = *(v150 + 8);
              v62(v54, v154);
              v63 = sub_21A3E2554(v59, v61, &v156);
              v51 = v150;

              *(v58 + 14) = v63;
              _os_log_impl(&dword_21A3C2000, v56, v57, "Found mil file for %s at %s.", v58, 0x16u);
              v64 = v146;
              swift_arrayDestroy();
              MEMORY[0x21CEDB220](v64, -1, -1);
              MEMORY[0x21CEDB220](v58, -1, -1);

              v62(v148, v154);
              v62(v152, v154);
              v46 = v154;
            }

            else
            {

              v124 = *(v51 + 8);
              v124(v54, v46);
              v124(v148, v46);
              v124(v38, v46);
            }

            v125 = v149;
            (*(v51 + 32))(v149, v147, v46);
LABEL_44:
            v122 = *(v51 + 56);
            v121 = v125;
            v123 = 0;
            return v122(v121, v123, 1, v46);
          }

          v156 = 0;
          v157 = 0xE000000000000000;
          sub_21A451754();
          v101 = v152;

          v156 = v151;
          v157 = v101;
          MEMORY[0x21CED98B0](0xD00000000000001ALL, 0x800000021A45CE90);
          v102 = v146;
          sub_21A450B44();

          v103 = [v142 defaultManager];
          sub_21A450B84();
          v104 = sub_21A451054();

          v105 = [v103 &selRef_defaultCompilerProcessesCount + 1];

          v51 = v150;
          if (v105)
          {
            if (qword_27CD28170 != -1)
            {
              swift_once();
            }

            v106 = sub_21A450F24();
            __swift_project_value_buffer(v106, qword_27CD28C90);
            v107 = v143;
            (*(v51 + 16))(v143, v102, v46);
            v108 = v152;

            v109 = sub_21A450F04();
            v110 = sub_21A451574();

            if (os_log_type_enabled(v109, v110))
            {
              v111 = swift_slowAlloc();
              v145 = swift_slowAlloc();
              v156 = v145;
              *v111 = 136315394;
              *(v111 + 4) = sub_21A3E2554(v151, v108, &v156);
              *(v111 + 12) = 2080;
              sub_21A435674();
              v112 = sub_21A451974();
              v114 = v113;
              v115 = v107;
              v116 = *(v150 + 8);
              v116(v115, v154);
              v117 = sub_21A3E2554(v112, v114, &v156);
              v51 = v150;

              *(v111 + 14) = v117;
              _os_log_impl(&dword_21A3C2000, v109, v110, "Found mpspackage file for %s at %s.", v111, 0x16u);
              v118 = v145;
              swift_arrayDestroy();
              MEMORY[0x21CEDB220](v118, -1, -1);
              v119 = v111;
              v102 = v146;
              MEMORY[0x21CEDB220](v119, -1, -1);

              v116(v147, v154);
              v116(v148, v154);
              v116(v38, v154);
              v46 = v154;
            }

            else
            {

              v139 = *(v51 + 8);
              v139(v107, v46);
              v139(v147, v46);
              v139(v148, v46);
              v139(v38, v46);
            }

            v125 = v149;
            (*(v51 + 32))(v149, v102, v46);
            goto LABEL_44;
          }

          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v126 = sub_21A450F24();
          __swift_project_value_buffer(v126, qword_27CD28C90);
          v127 = v144;
          v128 = v148;
          (*(v51 + 16))(v144, v148, v46);
          v129 = v152;

          v130 = sub_21A450F04();
          v131 = sub_21A451584();

          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v156 = v145;
            *v132 = 136315394;
            *(v132 + 4) = sub_21A3E2554(v151, v129, &v156);
            *(v132 + 12) = 2080;
            sub_21A435674();
            LODWORD(v152) = v131;
            v133 = sub_21A451974();
            v135 = v134;
            v136 = *(v150 + 8);
            v136(v127, v154);
            v137 = sub_21A3E2554(v133, v135, &v156);
            v51 = v150;

            *(v132 + 14) = v137;
            _os_log_impl(&dword_21A3C2000, v130, v152, "Cannot find mil or mpsgraphpackage file for %s at %s.", v132, 0x16u);
            v138 = v145;
            swift_arrayDestroy();
            MEMORY[0x21CEDB220](v138, -1, -1);
            MEMORY[0x21CEDB220](v132, -1, -1);

            v136(v102, v154);
            v136(v147, v154);
            v136(v148, v154);
            v136(v38, v154);
            v46 = v154;
          }

          else
          {

            v140 = *(v51 + 8);
            v140(v127, v46);
            v140(v102, v46);
            v140(v147, v46);
            v140(v128, v46);
            v140(v38, v46);
          }

          v122 = *(v51 + 56);
          v121 = v149;
        }

        else
        {
          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v84 = sub_21A450F24();
          __swift_project_value_buffer(v84, qword_27CD28C90);
          v85 = v150;
          v86 = v22;
          (*(v150 + 16))(v22, v38, v46);
          v87 = v152;

          v88 = sub_21A450F04();
          v89 = sub_21A451584();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = v86;
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v93 = v87;
            v94 = v92;
            v156 = v92;
            *v91 = 136315394;
            *(v91 + 4) = sub_21A3E2554(v151, v93, &v156);
            *(v91 + 12) = 2080;
            sub_21A435674();
            v95 = sub_21A451974();
            v97 = v96;
            v152 = v38;
            v98 = *(v150 + 8);
            v98(v90, v154);
            v99 = sub_21A3E2554(v95, v97, &v156);
            v85 = v150;

            *(v91 + 14) = v99;
            _os_log_impl(&dword_21A3C2000, v88, v89, "Cannot find %s_mps_graph directory at %s.", v91, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CEDB220](v94, -1, -1);
            MEMORY[0x21CEDB220](v91, -1, -1);

            v98(v148, v154);
            v98(v152, v154);
            v46 = v154;
          }

          else
          {

            v120 = *(v85 + 8);
            v120(v86, v46);
            v120(v42, v46);
            v120(v38, v46);
          }

          v121 = v149;
          v122 = *(v85 + 56);
        }

        v123 = 1;
        return v122(v121, v123, 1, v46);
      }

      v76 = v154;
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v77 = sub_21A450F24();
      __swift_project_value_buffer(v77, qword_27CD28C90);
      v78 = v31;

      v79 = sub_21A450F04();
      v80 = sub_21A451584();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v156 = v82;
        *v81 = 136315394;
        *(v81 + 4) = sub_21A3E2554(v151, v78, &v156);
        *(v81 + 12) = 2080;
        v83 = sub_21A3E2554(v141, v34, &v156);

        *(v81 + 14) = v83;
        _os_log_impl(&dword_21A3C2000, v79, v80, "Cannot find %s directory at %s.", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEDB220](v82, -1, -1);
        MEMORY[0x21CEDB220](v81, -1, -1);
      }

      else
      {
      }

      v100 = v150;
      (*(v150 + 8))(v38, v76);
      return (*(v100 + 56))(v149, 1, 1, v76);
    }

    else
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v66 = sub_21A450F24();
      __swift_project_value_buffer(v66, qword_27CD28C90);

      v67 = sub_21A450F04();
      v68 = sub_21A451584();

      v69 = os_log_type_enabled(v67, v68);
      v70 = v150;
      if (v69)
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = v36;
        v74 = v72;
        v156 = v72;
        *v71 = 136315394;
        *(v71 + 4) = sub_21A3E2554(v35, v73, &v156);
        *(v71 + 12) = 2080;
        v75 = sub_21A3E2554(v32, v34, &v156);

        *(v71 + 14) = v75;
        _os_log_impl(&dword_21A3C2000, v67, v68, "Cannot locate function %s at %s.", v71, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEDB220](v74, -1, -1);
        MEMORY[0x21CEDB220](v71, -1, -1);
      }

      else
      {
      }

      return (*(v70 + 56))(v149, 1, 1, v154);
    }
  }

  return result;
}

id sub_21A43BE28(uint64_t a1)
{
  v2 = sub_21A450BE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CD7810]) init];
  [v6 setAllowedComputeDevices_];
  sub_21A450B94();
  v7 = sub_21A451234();

  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CD7848]) init];
    [v8 setCompilerOptions_];
    [v8 setCompilationDescriptor_];
    v9 = objc_allocWithZone(MEMORY[0x277CD7840]);
    v10 = sub_21A450B34();
    v11 = [v9 initWithMILProgramWithURL:v10 executableDescriptor:v8];
  }

  else
  {
    sub_21A450B94();
    v12 = sub_21A451234();

    if (v12)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CD7840]);
      v14 = sub_21A450B34();
      v11 = [v13 initWithMPSGraphPackageAtURL:v14 compilationDescriptor:v6];
    }

    else
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v15 = sub_21A450F24();
      __swift_project_value_buffer(v15, qword_27CD28C90);
      (*(v3 + 16))(v5, a1, v2);
      v16 = sub_21A450F04();
      v17 = sub_21A451574();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136315138;
        v20 = sub_21A450B94();
        v22 = v21;
        (*(v3 + 8))(v5, v2);
        v23 = sub_21A3E2554(v20, v22, &v26);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_21A3C2000, v16, v17, "Unsupported file format for MPS function: %s.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x21CEDB220](v19, -1, -1);
        MEMORY[0x21CEDB220](v18, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      return 0;
    }
  }

  return v11;
}

void E5MBackgroundMPSFunction.init(functionName:library:mpsContext:)(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v99 = a1;
  v100 = a3;
  v103 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v95 - v9;
  v98 = sub_21A450BE4();
  v11 = *(v98 - 8);
  v12 = MEMORY[0x28223BE20](v98);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v95 - v15;
  v17 = *a4;
  v16 = a4[1];
  v18 = a4[2];
  v19 = MEMORY[0x277D84F90];
  *(v6 + 144) = MEMORY[0x277D84F90];
  *(v6 + 152) = v19;
  *(v6 + 160) = v19;
  *(v6 + 168) = v19;
  *(v6 + 176) = sub_21A3E5AAC(v19);
  *(v6 + 184) = sub_21A3E5AAC(v19);
  if (v17)
  {
    *(v6 + 80) = v17;
    *(v6 + 88) = v16;
    *(v6 + 96) = v18;
  }

  else
  {
    MPSContext.init()(&v101);
    if (v5)
    {

LABEL_27:

      type metadata accessor for E5MBackgroundMPSFunction();
      swift_deallocPartialClassInstance();
      return;
    }

    v53 = v102;
    *(v6 + 80) = v101;
    *(v6 + 96) = v53;
  }

  v20 = v99;
  v21 = v100;
  v22 = v103;
  *&v101 = v99;
  *(&v101 + 1) = v103;

  MEMORY[0x21CED98B0](0x6172675F73706D5FLL, 0xEA00000000006870);
  v23 = *(&v101 + 1);
  *(v6 + 104) = v101;
  *(v6 + 112) = v23;
  sub_21A43AC0C(v21, v20, v22, v10);
  v24 = v11;
  if (v5)
  {

LABEL_21:

LABEL_22:
    v55 = 0;
    v56 = 0;
LABEL_23:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (v55)
    {
    }

    if (v56)
    {
    }

    goto LABEL_27;
  }

  v25 = v98;
  if ((*(v11 + 48))(v10, 1, v98) == 1)
  {
    sub_21A43F43C(v10);
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v26 = sub_21A450F24();
    __swift_project_value_buffer(v26, qword_27CD28C90);

    v27 = sub_21A450F04();
    v28 = sub_21A451584();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v99;
    if (v29)
    {
      v31 = v22;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v101 = v33;
      *v32 = 136315138;
      v34 = sub_21A3E2554(v30, v31, &v101);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_21A3C2000, v27, v28, "Failed to find mil or mpspackage path for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x21CEDB220](v33, -1, -1);
      MEMORY[0x21CEDB220](v32, -1, -1);
    }

    else
    {
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v54 = 43;
    swift_willThrow();
    goto LABEL_21;
  }

  v35 = v97;
  (*(v11 + 32))(v97, v10, v25);
  v36 = sub_21A43BE28(v35);
  if (!v36)
  {

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v57 = sub_21A450F24();
    __swift_project_value_buffer(v57, qword_27CD28C90);
    v58 = v98;
    (*(v11 + 16))(v14, v97, v98);
    v59 = sub_21A450F04();
    v60 = sub_21A451584();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v96 = v61;
      v103 = swift_slowAlloc();
      *&v101 = v103;
      *v61 = 136315138;
      sub_21A435674();
      LODWORD(v99) = v60;
      v62 = sub_21A451974();
      v64 = v63;
      v65 = *(v24 + 8);
      v65(v14, v58);
      v66 = sub_21A3E2554(v62, v64, &v101);

      v67 = v96;
      *(v96 + 4) = v66;
      v68 = v65;
      _os_log_impl(&dword_21A3C2000, v59, v99, "Failed to build MPSGraphExecutable for %s", v67, 0xCu);
      v69 = v103;
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x21CEDB220](v69, -1, -1);
      MEMORY[0x21CEDB220](v67, -1, -1);
    }

    else
    {

      v68 = *(v11 + 8);
      v68(v14, v58);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v70 = 43;
    swift_willThrow();

    v68(v97, v58);
    goto LABEL_22;
  }

  *(v6 + 120) = v36;
  v37 = v36;

  v38 = v37;
  v39 = sub_21A451054();

  v40 = [v38 getInputShapesForFunction_];

  if (!v40)
  {
LABEL_35:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v71 = sub_21A450F24();
    __swift_project_value_buffer(v71, qword_27CD28C90);

    v72 = sub_21A450F04();
    v73 = sub_21A451584();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v101 = v75;
      *v74 = 136315138;
      v76 = *(v6 + 104);
      v77 = *(v6 + 112);

      v78 = sub_21A3E2554(v76, v77, &v101);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_21A3C2000, v72, v73, "Failed to get input names or shape for %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x21CEDB220](v75, -1, -1);
      MEMORY[0x21CEDB220](v74, -1, -1);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v79 = 43;
    swift_willThrow();

    (*(v24 + 8))(v97, v98);
    v56 = 0;
    v55 = 1;
    goto LABEL_23;
  }

  v96 = sub_21A3ED284(0, &qword_27CD28CC8, 0x277CD7880);
  v41 = sub_21A4512E4();

  v42 = sub_21A451054();

  v43 = [v38 inputNamesForFunction_];

  if (!v43)
  {

    goto LABEL_35;
  }

  v44 = sub_21A4512E4();

  *(v6 + 144) = v44;

  v45 = sub_21A43F4A4(v44, v41);

  *(v6 + 128) = v45;

  v46 = sub_21A451054();

  v47 = [v38 getOutputShapesForFunction_];

  if (!v47)
  {
LABEL_41:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v80 = sub_21A450F24();
    __swift_project_value_buffer(v80, qword_27CD28C90);

    v81 = sub_21A450F04();
    v82 = sub_21A451584();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v101 = v84;
      *v83 = 136315138;
      v85 = *(v6 + 104);
      v86 = *(v6 + 112);

      v87 = sub_21A3E2554(v85, v86, &v101);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_21A3C2000, v81, v82, "Failed to get output names or shape for %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x21CEDB220](v84, -1, -1);
      MEMORY[0x21CEDB220](v83, -1, -1);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v88 = 43;
    swift_willThrow();

    (*(v24 + 8))(v97, v98);
    v55 = 1;
    v56 = 1;
    goto LABEL_23;
  }

  v48 = sub_21A4512E4();

  v49 = sub_21A451054();

  v50 = [v38 outputNamesForFunction_];

  if (!v50)
  {

    goto LABEL_41;
  }

  v51 = sub_21A4512E4();

  *(v6 + 152) = v51;

  v52 = sub_21A43F4A4(v51, v48);

  *(v6 + 136) = v52;

  v89 = BaseE5Function.init(functionName:library:lazyPrepareOpForEncode:)(v99, v103, v21, 1);

  v91 = MEMORY[0x21CEDA420](v90);
  sub_21A43CF24(v89, &v101);
  objc_autoreleasePoolPop(v91);
  v92 = v101;
  if (v101)
  {

    v94 = sub_21A43F4A4(v93, v92);

    (*(v11 + 8))(v97, v98);
    v89[17] = v94;
  }

  else
  {
    (*(v11 + 8))(v97, v98);
  }
}

void sub_21A43CF24(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CD7810]) init];
  [v6 setOptimizationLevel_];
  v7 = a1[18];
  v8 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v9 = v7[2];

  if (v9)
  {
    v10 = 0;
    v11 = v7 + 5;
    v26 = v6;
    v27 = a2;
    while (1)
    {
      a2 = v3;
      v6 = &v11[2 * v10];
      v12 = v10;
      while (1)
      {
        if (v12 >= v7[2])
        {
          __break(1u);
          goto LABEL_22;
        }

        v13 = a1[16];
        if (*(v13 + 16))
        {
          break;
        }

LABEL_4:
        ++v12;
        v6 += 2;
        if (v9 == v12)
        {
          v6 = v26;
          a2 = v27;
          goto LABEL_15;
        }
      }

      v14 = *(v6 - 1);
      v15 = *v6;

      v16 = sub_21A3DCA2C(v14, v15);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = *(*(v13 + 56) + 8 * v16);

      MEMORY[0x21CED99D0](v19);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21A451314();
      }

      v10 = v12 + 1;
      sub_21A451364();
      v8 = v28;
      v11 = v7 + 5;
      v20 = v9 - 1 == v12;
      v3 = a2;
      v6 = v26;
      a2 = v27;
      if (v20)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_4;
  }

LABEL_15:

  v7 = a1[15];
  sub_21A3ED284(0, &unk_27CD28CE0, 0x277CD7838);
  v21 = a1[10];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  a1 = [ObjCClassFromMetadata deviceWithMTLDevice_];
  swift_unknownObjectRelease();
  if (v8 >> 62)
  {
LABEL_22:
    sub_21A3ED284(0, &qword_27CD28CF8, 0x277CD7898);

    sub_21A451824();
  }

  else
  {

    sub_21A451A24();
    sub_21A3ED284(0, &qword_27CD28CF8, 0x277CD7898);
  }

  sub_21A3ED284(0, &qword_27CD28CF8, 0x277CD7898);
  v23 = sub_21A4512D4();

  v24 = [v7 getOutputTypesWithDevice:a1 inputTypes:v23 compilationDescriptor:v6];

  if (v24)
  {
    sub_21A3ED284(0, &qword_27CD28CC8, 0x277CD7880);
    v25 = sub_21A4512E4();
  }

  else
  {

    v25 = 0;
  }

  *a2 = v25;
}

char *sub_21A43D260(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v7 = v4;
  v60[4] = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    v19 = *(v4 + 56);
    if (*(v19 + 16))
    {

      v20 = sub_21A3DCA2C(a1, a2);
      if (v21)
      {
        v14 = *(*(v19 + 56) + 8 * v20);

        v22 = *(v7 + 136);
        if (*(v22 + 16))
        {

          v23 = sub_21A3DCA2C(a1, a2);
          if (v24)
          {
            v18 = *(*(v22 + 56) + 8 * v23);

            goto LABEL_12;
          }
        }

LABEL_22:
        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v34 = sub_21A450F24();
        __swift_project_value_buffer(v34, qword_27CD28C90);

        v35 = sub_21A450F04();
        v36 = sub_21A451584();

        if (os_log_type_enabled(v35, v36))
        {
          v6 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v60[0] = v37;
          *v6 = 136315138;
          *(v6 + 4) = sub_21A3E2554(a1, a2, v60);
          _os_log_impl(&dword_21A3C2000, v35, v36, "Unable to get mps shape for %s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x21CEDB220](v37, -1, -1);
          MEMORY[0x21CEDB220](v6, -1, -1);
        }

        sub_21A3DCAA4();
        swift_allocError();
        *v38 = 43;
        swift_willThrow();
        goto LABEL_27;
      }

      goto LABEL_15;
    }

LABEL_16:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v29 = sub_21A450F24();
    __swift_project_value_buffer(v29, qword_27CD28C90);

    v30 = sub_21A450F04();
    v31 = sub_21A451584();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v60[0] = v6;
      *v32 = 136315138;
      *(v32 + 4) = sub_21A3E2554(a1, a2, v60);
      _os_log_impl(&dword_21A3C2000, v30, v31, "io port not bounded for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x21CEDB220](v6, -1, -1);
      MEMORY[0x21CEDB220](v32, -1, -1);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v33 = 43;
    swift_willThrow();
    return v6;
  }

  swift_beginAccess();
  v11 = *(v4 + 48);
  if (!*(v11 + 16))
  {
    goto LABEL_16;
  }

  v12 = sub_21A3DCA2C(a1, a2);
  if ((v13 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  v15 = *(v7 + 128);
  if (!*(v15 + 16))
  {
    goto LABEL_22;
  }

  v16 = sub_21A3DCA2C(a1, a2);
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
LABEL_12:
  v25 = [v18 shape];
  if (v25)
  {
    v26 = v25;
    v59 = v18;
    v6 = sub_21A3ED284(0, &qword_27CD28450, 0x277CCABB0);
    v27 = sub_21A4512E4();

    sub_21A43F67C(v28, v27);
    if (v5)
    {
    }

    else
    {

      v45 = *(v14 + 32);
      if (*(v45 + 40))
      {
        if (*(v45 + 40) != 1)
        {

          mtlbuffer = e5rt_buffer_object_get_mtlbuffer();
          swift_unknownObjectRetain();
          sub_21A3DCF54(mtlbuffer);
          sub_21A3DCAF8();
          swift_allocError();
          *v57 = 6;
          swift_willThrow();

          return v6;
        }

        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v46 = sub_21A450F24();
        __swift_project_value_buffer(v46, qword_27CD28C90);
        v47 = sub_21A450F04();
        v48 = sub_21A451584();
        if (os_log_type_enabled(v47, v48))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_21A3C2000, v47, v48, "Creating MLT buffer from HEAPALLOCATED buffer not supported.", v6, 2u);
          MEMORY[0x21CEDB220](v6, -1, -1);
        }

        sub_21A3DCAF8();
        swift_allocError();
        *v49 = 3;
        swift_willThrow();
      }

      else
      {

        if ([a4 metalDevice])
        {
          if (swift_dynamicCastObjCProtocolConditional())
          {
            if (*(v45 + 40))
            {

              sub_21A3DCAA4();
              swift_allocError();
              *v50 = 41;
              swift_willThrow();

              swift_unknownObjectRelease();

              return v6;
            }

            v60[0] = 0;
            iosurface = e5rt_buffer_object_get_iosurface();
            sub_21A3DCF54(iosurface);
            sub_21A3DCAF8();
            swift_allocError();
            *v58 = 6;
            swift_willThrow();

            swift_unknownObjectRelease();

            goto LABEL_27;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v52 = sub_21A450F24();
        __swift_project_value_buffer(v52, qword_27CD28C90);
        v53 = sub_21A450F04();
        v54 = sub_21A451584();
        if (os_log_type_enabled(v53, v54))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_21A3C2000, v53, v54, "Unsupported non-metal target", v6, 2u);
          MEMORY[0x21CEDB220](v6, -1, -1);
        }

        sub_21A3DCAA4();
        swift_allocError();
        *v55 = 43;
        swift_willThrow();
      }
    }

LABEL_27:

    return v6;
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v40 = sub_21A450F24();
  __swift_project_value_buffer(v40, qword_27CD28C90);

  v41 = sub_21A450F04();
  v6 = sub_21A451584();

  if (os_log_type_enabled(v41, v6))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v60[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_21A3E2554(a1, a2, v60);
    _os_log_impl(&dword_21A3C2000, v41, v6, "Unable to get mpsShape for %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x21CEDB220](v43, -1, -1);
    MEMORY[0x21CEDB220](v42, -1, -1);
  }

  sub_21A3DCAA4();
  swift_allocError();
  *v44 = 43;
  swift_willThrow();

  return v6;
}

uint64_t sub_21A43E030()
{
  v2 = v1;
  v3 = v0;
  sub_21A3ED284(0, &unk_27CD28CE0, 0x277CD7838);
  v4 = v0[10];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  v22 = [ObjCClassFromMetadata deviceWithMTLDevice_];
  swift_unknownObjectRelease();
  swift_beginAccess();
  v6 = MEMORY[0x277D84F90];
  v3[20] = MEMORY[0x277D84F90];

  swift_beginAccess();
  v3[21] = v6;

  v7 = v3[18];
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = (v7 + 40);
    while (v10 < *(v7 + 16))
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      sub_21A43D260(v12, v13, 1, v22);

      if (v2)
      {
        goto LABEL_15;
      }

      v14 = swift_beginAccess();
      MEMORY[0x21CED99D0](v14);
      if (*((v3[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21A451314();
      }

      ++v10;
      sub_21A451364();
      result = swift_endAccess();
      v11 += 2;
      if (v8 == v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_8:

  v15 = v3[19];
  v16 = *(v15 + 16);

  if (v16)
  {
    v17 = 0;
    v18 = (v15 + 40);
    while (v17 < *(v15 + 16))
    {
      v19 = *(v18 - 1);
      v20 = *v18;

      sub_21A43D260(v19, v20, 0, v22);
      if (v2)
      {
      }

      v21 = swift_beginAccess();
      MEMORY[0x21CED99D0](v21);
      if (*((v3[21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21A451314();
      }

      ++v17;
      sub_21A451364();
      result = swift_endAccess();
      v18 += 2;
      if (v16 == v17)
      {
        goto LABEL_15;
      }
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_15:
}

uint64_t sub_21A43E324()
{
  v1 = *(v0 + 120);
  [v1 setOptions_];
  v2 = [*(v0 + 88) commandBuffer];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD7208]) initWithCommandBuffer_];
    v4 = sub_21A451054();
    [v3 setLabel_];

    swift_beginAccess();
    sub_21A3ED284(0, &qword_27CD28CD8, 0x277CD7890);

    v5 = sub_21A4512D4();

    swift_beginAccess();

    v6 = sub_21A4512D4();

    [objc_msgSend(v3 rootCommandBuffer)];
    swift_unknownObjectRelease();
    [objc_msgSend(v3 rootCommandBuffer)];
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v8 = sub_21A450F24();
    __swift_project_value_buffer(v8, qword_27CD28C90);
    v9 = sub_21A450F04();
    v10 = sub_21A451584();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21A3C2000, v9, v10, "Failed to make MTL command buffer", v11, 2u);
      MEMORY[0x21CEDB220](v11, -1, -1);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v12 = 43;
    return swift_willThrow();
  }
}

uint64_t sub_21A43E5EC()
{
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v0 = sub_21A450F24();
  __swift_project_value_buffer(v0, qword_27CD28C90);
  v1 = sub_21A450F04();
  v2 = sub_21A451584();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21A3C2000, v1, v2, "Reshape not implemented for E5MBackgroundMPSFunction", v3, 2u);
    MEMORY[0x21CEDB220](v3, -1, -1);
  }

  sub_21A3DCAF8();
  swift_allocError();
  *v4 = 2;
  return swift_willThrow();
}

void sub_21A43E6F8(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x21CEDA420]();
  sub_21A43E778(v2, a1, &v5, &v6);
  objc_autoreleasePoolPop(v4);
}

void *sub_21A43E778@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v92 = *MEMORY[0x277D85DE8];
  result = sub_21A407184();
  if (v4)
  {
    v10 = v4;
LABEL_86:
    *a3 = v10;
    return result;
  }

  v79 = a3;
  v78 = a4;
  v81 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);

  swift_beginAccess();
  v14 = 0;
  v15 = (v11 + 63) >> 6;
  v82 = a1;
  v83 = a2;
LABEL_6:
  if (v13)
  {
    v16 = v13;
    goto LABEL_12;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v17 >= v15)
    {
      break;
    }

    v16 = *(v81 + 8 * v17);
    ++v14;
    if (v16)
    {
      v14 = v17;
LABEL_12:
      v13 = (v16 - 1) & v16;
      v18 = a1[6];
      if (!*(v18 + 16))
      {
        goto LABEL_6;
      }

      v85 = (v16 - 1) & v16;
      v19 = __clz(__rbit64(v16)) | (v14 << 6);
      v20 = *(a2 + 48);
      v21 = (*(a2 + 56) + 16 * v19);
      v22 = *v21;
      v23 = v21[1];
      v24 = (v20 + 16 * v19);
      v25 = *v24;
      v26 = v24[1];

      sub_21A3E700C(v22, v23);

      v27 = sub_21A3DCA2C(v25, v26);
      v29 = v28;

      if (v29)
      {
        v84 = v22;
        v30 = *(*(v18 + 56) + 8 * v27);

        v80 = *(v30 + 32);
        sub_21A3DCAA4();
        v10 = swift_allocError();
        *v31 = 23;
        v32 = v23 >> 62;
        if ((v23 >> 62) > 1)
        {
          v33 = 0;
          if (v32 == 2)
          {
            v35 = *(v22 + 16);
            v34 = *(v22 + 24);
            v36 = __OFSUB__(v34, v35);
            v33 = v34 - v35;
            if (v36)
            {
              goto LABEL_108;
            }
          }
        }

        else if (v32)
        {
          LODWORD(v33) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_107;
          }

          v33 = v33;
        }

        else
        {
          v33 = BYTE6(v23);
        }

        v37 = *(v80 + 32);
        if (v33 < v37)
        {
          swift_willThrow();

          sub_21A3E759C(v22, v23);

          a3 = v79;
          goto LABEL_86;
        }

        if (v37 < 0)
        {
          goto LABEL_103;
        }

        if (v37)
        {
          v38 = v23;
          if (v32 > 1)
          {
            v39 = 0;
            if (v32 == 2)
            {
              v39 = *(v22 + 16);
            }
          }

          else if (v32)
          {
            v39 = v22;
          }

          else
          {
            v39 = 0;
          }

          v36 = __OFADD__(v39, v37);
          v40 = v39 + v37;
          if (v36)
          {
            goto LABEL_104;
          }

          v41 = v40 - v39;
          if (v40 < v39)
          {
            goto LABEL_105;
          }

          if (v40 == v39)
          {
            goto LABEL_37;
          }

          v42 = *(v80 + 24);
          if (v32 <= 1)
          {
            if (!v32)
            {
              if (v39 > BYTE6(v23) || v40 > BYTE6(v23))
              {
                goto LABEL_111;
              }

              v86 = v84;
              v87 = v23;
              v88 = BYTE2(v23);
              v89 = BYTE3(v23);
              v90 = BYTE4(v23);
              v91 = BYTE5(v23);
              if (v41 > 13)
              {
                v41 = 14;
                v13 = v85;
              }

              else
              {
                v13 = v85;
                if (v41 < 1)
                {
LABEL_81:
                  sub_21A3E759C(v84, v38);

                  goto LABEL_84;
                }
              }

              memcpy(v42, &v86 + v39, v41);
              v38 = v23;
              goto LABEL_81;
            }

            if (v84 >> 32 < v40 || v39 < v84 || v84 >> 32 < v39 || v40 < v84)
            {
              goto LABEL_112;
            }

            v51 = sub_21A4509F4();
            v13 = v85;
            if (v51)
            {
              v52 = v51;
              v53 = sub_21A450A24();
              if (__OFSUB__(v39, v53))
              {
                goto LABEL_115;
              }

              v54 = (v39 - v53 + v52);
              v55 = sub_21A450A14();
              if (v54)
              {
                if (v55 >= v41)
                {
                  v56 = v41;
                }

                else
                {
                  v56 = v55;
                }

                memmove(v42, v54, v56);
              }
            }

            else
            {
              sub_21A450A14();
            }

            sub_21A3E759C(v84, v23);

LABEL_84:

            a1 = v82;
            a2 = v83;
            goto LABEL_6;
          }

          if (v32 != 2)
          {
            sub_21A3E759C(v84, v23);

            v57 = v40 | v39;
            a1 = v82;
            a2 = v83;
            v13 = v85;
            if (v57)
            {
              goto LABEL_110;
            }

            goto LABEL_6;
          }

          if (v39 < *(v84 + 16))
          {
            goto LABEL_109;
          }

          if (*(v84 + 24) < v40)
          {
            goto LABEL_113;
          }

          v43 = sub_21A4509F4();
          if (v43)
          {
            v44 = sub_21A450A24();
            if (__OFSUB__(v39, v44))
            {
              goto LABEL_116;
            }

            v43 += v39 - v44;
          }

          v36 = __OFSUB__(v40, v39);
          v45 = v40 - v39;
          if (v36)
          {
            goto LABEL_114;
          }

          v46 = sub_21A450A14();
          if (v43)
          {
            if (v46 >= v45)
            {
              v47 = v45;
            }

            else
            {
              v47 = v46;
            }

            memmove(v42, v43, v47);
          }

          sub_21A3E759C(v84, v23);
        }

        else
        {
LABEL_37:
          sub_21A3E759C(v22, v23);
        }
      }

      else
      {
        sub_21A3E759C(v22, v23);
      }

      a1 = v82;
      a2 = v83;
      v13 = v85;
      goto LABEL_6;
    }
  }

  sub_21A43E030();
  sub_21A43E324();
  swift_beginAccess();
  v58 = MEMORY[0x277D84F90];
  a1[20] = MEMORY[0x277D84F90];

  swift_beginAccess();
  a1[21] = v58;

  swift_beginAccess();
  v59 = a1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28CF0, &unk_21A459110);
  result = sub_21A451854();
  v60 = result;
  v61 = 0;
  v62 = 1 << *(v59 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v59 + 64);
  v65 = (v62 + 63) >> 6;
  v66 = result + 8;
  if (v64)
  {
    goto LABEL_90;
  }

LABEL_91:
  v68 = v61;
  while (1)
  {
    v61 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      goto LABEL_102;
    }

    if (v61 >= v65)
    {
      break;
    }

    v69 = *(v59 + 64 + 8 * v61);
    ++v68;
    if (v69)
    {
      v67 = __clz(__rbit64(v69));
      v64 = (v69 - 1) & v69;
      while (2)
      {
        v70 = v67 | (v61 << 6);
        v71 = (*(v59 + 48) + 16 * v70);
        v73 = *v71;
        v72 = v71[1];
        v74 = *(*(*(v59 + 56) + 8 * v70) + 32);
        *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
        v75 = (v60[6] + 16 * v70);
        *v75 = v73;
        v75[1] = v72;
        *(v60[7] + 8 * v70) = v74;
        v76 = v60[2];
        v36 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (!v36)
        {
          v60[2] = v77;

          if (!v64)
          {
            goto LABEL_91;
          }

LABEL_90:
          v67 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
          continue;
        }

        break;
      }

LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
    }
  }

  *v78 = v60;
  return result;
}

uint64_t sub_21A43EF1C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void *E5MBackgroundMPSFunction.deinit()
{
  v0 = BaseE5Function.deinit();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t E5MBackgroundMPSFunction.__deallocating_deinit()
{
  E5MBackgroundMPSFunction.deinit();

  return swift_deallocClassInstance();
}

void sub_21A43F084(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v7 = *(a1 + 16);

  v35 = a2;

  if (!v7)
  {
LABEL_25:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v8 = 0;
  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a1 + 40);
  v32 = a2 & 0xC000000000000001;
  v33 = a2 >> 62;
  v31 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 >= v7)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      sub_21A451A94();
      __break(1u);
      goto LABEL_31;
    }

    v11 = *(v10 - 1);
    v12 = *v10;
    if (v33)
    {
      if (v8 == sub_21A451844())
      {
        goto LABEL_25;
      }
    }

    else if (v8 == *(v9 + 16))
    {
      goto LABEL_25;
    }

    if (v32)
    {

      v14 = MEMORY[0x21CED9EA0](v8, v35);
    }

    else
    {
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_28;
      }

      v13 = *(v35 + 8 * v8 + 32);

      v14 = v13;
    }

    v36 = v14;
    v15 = *a4;
    v17 = sub_21A3DCA2C(v11, v12);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_27;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (a3)
    {
      if (v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_21A3E4750();
      if (v21)
      {
        goto LABEL_23;
      }
    }

LABEL_16:
    v24 = *a4;
    *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v11;
    v25[1] = v12;
    *(v24[7] + 8 * v17) = v36;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_29;
    }

    ++v8;
    v24[2] = v28;
    v7 = *(a1 + 16);
    v10 += 2;
    a3 = 1;
    v9 = v31;
    if (v8 == v7)
    {
      goto LABEL_25;
    }
  }

  sub_21A3E3B34(v20, a3 & 1);
  v22 = sub_21A3DCA2C(v11, v12);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_30;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_23:
  v29 = swift_allocError();
  swift_willThrow();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_31:
  sub_21A451754();
  MEMORY[0x21CED98B0](0xD00000000000001BLL, 0x800000021A45CE30);
  sub_21A451804();
  MEMORY[0x21CED98B0](39, 0xE100000000000000);
  sub_21A451814();
  __break(1u);
}

uint64_t sub_21A43F43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A43F4A4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (a2 >> 62)
  {
    v5 = sub_21A451844();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D00, &qword_21A4561E8);
    v6 = sub_21A451874();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;

  sub_21A43F084(a1, a2, 1, &v8);
  return v8;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21A43F5A4(uint64_t *a1, int a2)
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

uint64_t sub_21A43F5EC(uint64_t result, int a2, int a3)
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

void sub_21A43F67C(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];

  isUniquelyReferenced_nonNull_bridgeObject = sub_21A409348();
  if (isUniquelyReferenced_nonNull_bridgeObject)
  {
    v9 = a1[4];
    if (v9 < 0)
    {
LABEL_68:
      __break(1u);
    }

    else
    {
      v38 = a2;
      a2 = 0x277CCA000uLL;
      v2 = &off_278253000;
      if (v9)
      {
        v3 = a1[3];
        v39 = -v9;
        v4 = 4;
        while (1)
        {
          a2 = v4 - 4;
          v10 = sub_21A40956C();
          if ((v4 - 4) >= *(v10 + 16))
          {
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          v11 = v2;
          v2 = *(v10 + 8 * v4);

          v12 = sub_21A440DA4();
          if (!v12)
          {
            goto LABEL_63;
          }

          if (v2 == 0x8000000000000000 && v12 == -1)
          {
            goto LABEL_66;
          }

          if (v2 % v12)
          {
            break;
          }

          v14 = a1[9];
          if (a2 >= *(v14 + 16))
          {
            goto LABEL_64;
          }

          v15 = *(v3 + 24);
          if (!v15)
          {
            goto LABEL_65;
          }

          v16 = *(v14 + 8 * v4);
          if (v16 == 0x8000000000000000 && v15 == -1)
          {
            goto LABEL_67;
          }

          a2 = 0x277CCA000uLL;
          v2 = v11;
          [objc_allocWithZone(MEMORY[0x277CCABB0]) (v11 + 3448)];
          MEMORY[0x21CED99D0]();
          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21A451314();
            a2 = 0x277CCA000;
          }

          sub_21A451364();
          if (v4 == 4)
          {
            [objc_allocWithZone(*(a2 + 2992)) (v11 + 3448)];
          }

          else
          {
            [objc_allocWithZone(*(a2 + 2992)) (v11 + 3448)];
          }

          MEMORY[0x21CED99D0]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21A451314();
            a2 = 0x277CCA000;
          }

          isUniquelyReferenced_nonNull_bridgeObject = sub_21A451364();
          v7 = v40;
          ++v4;
          if (v39 + v4 == 4)
          {
            goto LABEL_26;
          }
        }

        if (qword_27CD28170 != -1)
        {
          goto LABEL_81;
        }

        goto LABEL_42;
      }

LABEL_26:
      v39 = v38 & 0xC000000000000001;
      if ((v38 & 0xC000000000000001) == 0)
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_72;
        }

        v17 = *(v38 + 32);
LABEL_29:
        v3 = v17;
        v4 = &selRef_encodeToIndex_error_;
        v18 = [v17 integerValue];

        if ((v7 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x21CED9EA0](0, v7);
        }

        else
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v19 = *(v7 + 32);
        }

        v20 = v19;
        v4 = [v19 integerValue];

        v3 = v18 * v4;
        if ((v18 * v4) >> 64 == (v18 * v4) >> 63)
        {
          v3 = [objc_allocWithZone(*(a2 + 2992)) *(v2 + 3208)];
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (!isUniquelyReferenced_nonNull_bridgeObject || (v38 & 0x8000000000000000) != 0 || (v21 = v38, (v38 & 0x4000000000000000) != 0))
          {
            isUniquelyReferenced_nonNull_bridgeObject = sub_21A4131E4();
            v21 = isUniquelyReferenced_nonNull_bridgeObject;
          }

          v22 = v21 & 0xFFFFFFFFFFFFFF8;
          v4 = &selRef_encodeToIndex_error_;
          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x20);
            *((v21 & 0xFFFFFFFFFFFFFF8) + 0x20) = v3;

            v24 = a1[4];
            a1 = (v24 - 1);
            if (!__OFSUB__(v24, 1))
            {
              if (v39)
              {
                v25 = MEMORY[0x21CED9EA0](a1, v38);
              }

              else
              {
                if ((a1 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

                if (a1 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_84:
                  __break(1u);
LABEL_85:
                  __break(1u);
                  return;
                }

                v25 = *(v38 + 8 * a1 + 32);
              }

              v32 = v25;
              a2 = [v25 integerValue];

              if ((v7 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x21CED9EA0](0, v7);
                goto LABEL_52;
              }

              if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v33 = *(v7 + 32);
LABEL_52:
                v4 = v33;
                v3 = [v33 integerValue];

                if (v3)
                {
                  if (a2 == 0x8000000000000000 && v3 == -1)
                  {
LABEL_80:
                    __break(1u);
LABEL_81:
                    swift_once();
LABEL_42:
                    v26 = sub_21A450F24();
                    __swift_project_value_buffer(v26, qword_27CD28C90);
                    swift_retain_n();
                    v27 = sub_21A450F04();
                    v28 = sub_21A451584();
                    if (!os_log_type_enabled(v27, v28))
                    {

                      goto LABEL_61;
                    }

                    v29 = swift_slowAlloc();
                    *v29 = 134218240;
                    v30 = sub_21A40956C();
                    if (a2 < *(v30 + 16))
                    {
                      v31 = *(v30 + 8 * v4);

                      *(v29 + 4) = v31;

                      *(v29 + 12) = 2048;
                      *(v29 + 14) = *(v3 + 24);

                      _os_log_impl(&dword_21A3C2000, v27, v28, "Invalid stride=%ld, and componentSize= %ld.", v29, 0x16u);
                      MEMORY[0x21CEDB220](v29, -1, -1);

LABEL_61:
                      sub_21A3DCAA4();
                      swift_allocError();
                      *v36 = 43;
                      swift_willThrow();

                      return;
                    }

                    goto LABEL_85;
                  }

                  isUniquelyReferenced_nonNull_bridgeObject = [objc_allocWithZone(MEMORY[0x277CCABB0]) *(v2 + 3208)];
                  if ((v21 & 0x8000000000000000) == 0 && (v21 & 0x4000000000000000) == 0)
                  {
                    a2 = v21;
                    if ((a1 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_78;
                  }

LABEL_77:
                  v37 = isUniquelyReferenced_nonNull_bridgeObject;
                  a2 = sub_21A4131E4();
                  isUniquelyReferenced_nonNull_bridgeObject = v37;
                  v22 = a2 & 0xFFFFFFFFFFFFFF8;
                  if ((a1 & 0x8000000000000000) == 0)
                  {
LABEL_58:
                    if (a1 < *(v22 + 16))
                    {
                      v34 = v22 + 8 * a1;
                      v35 = *(v34 + 32);
                      *(v34 + 32) = isUniquelyReferenced_nonNull_bridgeObject;

                      return;
                    }

                    goto LABEL_79;
                  }

LABEL_78:
                  __break(1u);
LABEL_79:
                  __break(1u);
                  goto LABEL_80;
                }

LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

              goto LABEL_83;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }
    }

    v17 = MEMORY[0x21CED9EA0](0);
    goto LABEL_29;
  }
}

uint64_t sub_21A43FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    v3 = MEMORY[0x28223BE20](a1);
    v11[2] = v4;
    v11[3] = v3;
    v11[4] = v4;
    v11[5] = v5;
    v11[6] = v6;
    return sub_21A44004C(v7, v8, sub_21A440D4C, v11);
  }

  else
  {
    sub_21A3D3C88();
    swift_allocError();
    *v10 = 14;
    return swift_willThrow();
  }
}

uint64_t sub_21A43FD8C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a3 < 0)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v7 = a3;
    if (a3)
    {
      v11 = result;
      do
      {
        v13 = *a4++;
        v12 = v13;
        if (v13)
        {
          v14 = v12 <= a6;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          result = v12 - 1;
          v15 = *a7;
          if ((*a7 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x21CED9EA0](result);
          }

          else
          {
            if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
            {
              __break(1u);
              goto LABEL_21;
            }

            v16 = *(v15 + 8 * result + 32);
          }

          v17 = *v11;
          swift_beginAccess();
          v18 = *(v16 + 40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v16 + 40) = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_21A407D80(0, *(v18 + 2) + 1, 1, v18);
            *(v16 + 40) = v18;
          }

          v21 = *(v18 + 2);
          v20 = *(v18 + 3);
          if (v21 >= v20 >> 1)
          {
            v18 = sub_21A407D80((v20 > 1), v21 + 1, 1, v18);
          }

          *(v18 + 2) = v21 + 1;
          *&v18[4 * v21 + 32] = v17;
          *(v16 + 40) = v18;
        }

        ++v11;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_21A43FF1C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v10, 0, 14);
      v6 = 0;
      return a3(v10, v6);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_21A44017C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v4)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_21A44017C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  v5 = a2 >> 40;
  BYTE4(v10[1]) = BYTE4(a2);
  v6 = BYTE6(a2);
  BYTE5(v10[1]) = v5;
  return a3(v10, v6);
}

uint64_t sub_21A44004C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v10, 0, 14);
      v6 = 0;
      return a3(v10, v6);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_21A440224(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v4)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_21A440224(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  v5 = a2 >> 40;
  BYTE4(v10[1]) = BYTE4(a2);
  v6 = (a2 >> 50) & 0x3F;
  BYTE5(v10[1]) = v5;
  return a3(v10, v6);
}

uint64_t sub_21A44017C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_21A4509F4();
  v8 = result;
  if (result)
  {
    result = sub_21A450A24();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_21A450A14();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a4(v8, v13);
}

uint64_t sub_21A440224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_21A4509F4();
  v8 = result;
  if (result)
  {
    result = sub_21A450A24();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_21A450A14();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 / 4;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return a4(v8, v14);
}

id sub_21A4402DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v73 = a4;
  v76 = a2;
  v75 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v67 - v6;
  v8 = sub_21A450AB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A450BE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a3 + 32);
  if (!*(v16 + 16))
  {
    goto LABEL_17;
  }

  v17 = sub_21A3DCA2C(0x6966697372617073, 0xEE006E6F69746163);
  if ((v18 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_21A3D3B94(*(v16 + 56) + 32 * v17, &v78);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_21A3D3C88();
    swift_allocError();
    v32 = 9;
LABEL_18:
    *v31 = v32;
    return swift_willThrow();
  }

  v19 = v77[0];
  if (!*(v77[0] + 2))
  {
    goto LABEL_19;
  }

  v20 = sub_21A3DCA2C(0x6B6E7568436D756ELL, 0xE900000000000073);
  if ((v21 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_21A3D3B94(v19[7] + 32 * v20, &v78);
  sub_21A3D3CDC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v72 = v77[0];
  v71 = [v77[0] integerValue];

  if (!v19[2])
  {
    goto LABEL_19;
  }

  v22 = sub_21A3DCA2C(0xD000000000000013, 0x800000021A45CF20);
  if ((v23 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_21A3D3B94(v19[7] + 32 * v22, &v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v72 = v77[0];
  if (!v19[2] || (v24 = sub_21A3DCA2C(0xD000000000000015, 0x800000021A45CF40), (v25 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_21A3D3B94(v19[7] + 32 * v24, &v78);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    sub_21A3D3C88();
    swift_allocError();
    v32 = 10;
    goto LABEL_18;
  }

  result = v77[0];
  v27 = v77[1];
  v28 = v76 >> 62;
  v29 = v72;
  if ((v76 >> 62) <= 1)
  {
    if (!v28)
    {
      v30 = BYTE6(v76);
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v28 != 2)
  {
    v30 = 0;
    goto LABEL_29;
  }

  v34 = *(v75 + 16);
  v33 = *(v75 + 24);
  v35 = __OFSUB__(v33, v34);
  v30 = v33 - v34;
  if (v35)
  {
    __break(1u);
LABEL_26:
    LODWORD(v30) = HIDWORD(v75) - v75;
    if (__OFSUB__(HIDWORD(v75), v75))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v30 = v30;
  }

LABEL_29:
  if (v30 >= 0)
  {
    v36 = v30;
  }

  else
  {
    v36 = v30 + 3;
  }

  if (v29 >> 62)
  {
    v69 = result;
    v70 = v27;
    v66 = sub_21A451844();
    v27 = v70;
    v37 = v66;
    result = v69;
  }

  else
  {
    v37 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v71 != v37 || v36 >> 2 < v71)
  {

    sub_21A3D3C88();
    swift_allocError();
    v32 = 11;
    goto LABEL_18;
  }

  v69 = v36 >> 2;
  v70 = v27;
  sub_21A441588(result, v27);
  v39 = v38;

  if (!v39)
  {

    sub_21A3D3C88();
    swift_allocError();
    v32 = 12;
    goto LABEL_18;
  }

  (*(v9 + 104))(v11, *MEMORY[0x277CC91D0], v8);
  (*(v13 + 56))(v7, 1, 1, v12);
  sub_21A450BA4();
  v40 = v74;
  v41 = sub_21A450C04();
  if (v40)
  {

    (*(v13 + 8))(v15, v12);
    sub_21A3D3C88();
    swift_allocError();
    v32 = 13;
    goto LABEL_18;
  }

  v67 = v41;
  v68 = v42;
  v70 = 0;
  result = (*(v13 + 8))(v15, v12);
  v77[0] = MEMORY[0x277D84F90];
  if (v71 < 0)
  {
    goto LABEL_57;
  }

  if (v71)
  {
    v74 = v72 & 0xC000000000000001;
    if ((v72 & 0xC000000000000001) != 0 || v71 <= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = 0;
      v44 = *v73;
      v45 = *(v73 + 8);
      v46 = *(v73 + 16);
      v79 = *(v73 + 32);
      v80 = v46;
      v73 = xmmword_21A456280;
      do
      {
        v47 = v43 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
        inited = swift_initStackObject();
        *(inited + 16) = v73;
        *(inited + 32) = 7104112;
        *(inited + 40) = 0xE300000000000000;
        *(inited + 48) = v44;
        *(inited + 56) = v45;
        *(inited + 64) = 0x73746C75736572;
        *(inited + 72) = 0xE700000000000000;
        v78 = v43 + 1;

        *(inited + 80) = sub_21A451974();
        *(inited + 88) = v49;
        v50 = v79;
        *(inited + 96) = v80;
        *(inited + 112) = v50;
        sub_21A440CC4(&v80, &v78);
        sub_21A440CC4(&v79, &v78);
        v51 = sub_21A40A794(inited);
        v53 = v52;
        swift_setDeallocating();
        swift_arrayDestroy();
        if (v74)
        {
          v54 = MEMORY[0x21CED9EA0](v43, v72);
        }

        else
        {
          v54 = *(v72 + 8 * v43 + 32);
        }

        v55 = v54;
        [v54 doubleValue];
        v57 = v56;

        type metadata accessor for PFLChunk();
        v58 = swift_allocObject();
        v58[2] = v51;
        v58[3] = v53;
        v58[4] = v57;
        v58[5] = MEMORY[0x277D84F90];

        MEMORY[0x21CED99D0](v59);
        if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21A451314();
        }

        sub_21A451364();

        v43 = v47;
      }

      while (v71 != v47);
      goto LABEL_52;
    }

LABEL_58:
    __break(1u);
    return result;
  }

LABEL_52:

  MEMORY[0x28223BE20](v60);
  v61 = v75;
  *(&v67 - 6) = v69;
  *(&v67 - 5) = v61;
  v62 = v71;
  *(&v67 - 4) = v76;
  *(&v67 - 3) = v62;
  *(&v67 - 2) = v77;
  v63 = v67;
  v64 = v68;
  v65 = v70;
  sub_21A43FF1C(v67, v68, sub_21A440D20, (&v67 - 8));
  if (v65)
  {
    sub_21A3E759C(v63, v64);
  }

  else
  {
    sub_21A3F67DC();
    sub_21A3E759C(v63, v64);
    return v77[0];
  }
}

uint64_t sub_21A440DA4()
{
  if (*(v0 + 32) != 1)
  {
    return *(v0 + 24);
  }

  component_size = e5rt_tensor_desc_dtype_get_component_size();
  sub_21A3DCF54(component_size);
  result = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t sub_21A440E40(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 32) = 0;
  return result;
}

uint64_t (*sub_21A440E4C(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_21A440DA4();
  return sub_21A440E94;
}

void *sub_21A440E94(void *result)
{
  v1 = result[1];
  *(v1 + 24) = *result;
  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_21A440EA4(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v3 = e5rt_tensor_desc_retain_dtype();
  sub_21A3DCF54(v3);
  if (!v2)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  type metadata accessor for TensorDescriptorDType();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_21A440F84@<X0>(char *a1@<X8>)
{
  component_dtype = e5rt_tensor_desc_dtype_get_component_dtype();
  result = sub_21A3DCF54(component_dtype);
  if (!v2)
  {
    result = sub_21A440DA4();
    if (result == 2)
    {
      *a1 = 1;
    }

    else if (*(v1 + 24) == 4)
    {
      *a1 = 2;
    }

    else
    {
      sub_21A3DCAF8();
      swift_allocError();
      *v6 = 2;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_21A4412B8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21A441364(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_21A4413C4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21A441410(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

void *PFLTask.__allocating_init(recipeId:recipe:attachments:taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PFLTask(0);
  v10 = swift_allocObject();
  v10[5] = a4;
  v10[6] = 0;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  sub_21A40BADC(a5, v10 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);
  v10[6] = 0;
  return v10;
}

uint64_t type metadata accessor for PFLTask(uint64_t a1)
{
  result = qword_27CD28D10;
  if (!qword_27CD28D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A441588(uint64_t a1, uint64_t a2)
{
  v14[1] = a1;
  v14[2] = a2;
  v3 = sub_21A450BE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(v2 + 40);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = (v4 + 8);
    while (v10 < *(v7 + 16))
    {
      (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v3);
      sub_21A450B84();
      v12 = sub_21A451234();

      if (v12)
      {

        v13 = sub_21A450B84();
        (*v11)(v6, v3);
        return v13;
      }

      ++v10;
      result = (*v11)(v6, v3);
      if (v8 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_21A441760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v11 = *(v5 + 32);

  Dictionary<>.parameter<A>(for:default:)(a1, a2, a3, v11, a4, a5);
}

uint64_t sub_21A4417EC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {

    v2 = sub_21A3DCA2C(0x6966697372617073, 0xEE006E6F69746163);
    if (v3)
    {
      sub_21A3D3B94(*(v1 + 56) + 32 * v2, v5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
      if (swift_dynamicCast())
      {

        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_21A4418CC(uint64_t a1)
{
  v2 = v1;
  v143 = *MEMORY[0x277D85DE8];
  v128 = sub_21A4510B4();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A450AB4();
  v6 = *(v5 - 8);
  v134 = v5;
  v135 = v6;
  MEMORY[0x28223BE20](v5);
  v133 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A450BE4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v129 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v130 = &v112 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v112 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v112 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v112 - v20;
  swift_beginAccess();

  v131 = sub_21A443CE4(v22);
  v24 = v23;

  if (!v24)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v45 = sub_21A450F24();
    __swift_project_value_buffer(v45, qword_27CD28C90);
    v46 = sub_21A450F04();
    v47 = sub_21A451574();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_21A3C2000, v46, v47, "Failed to compute common prefix path for task's attachments.", v48, 2u);
      MEMORY[0x21CEDB220](v48, -1, -1);
    }

    sub_21A3EC940();
    swift_allocError();
    *v49 = 53;
    return swift_willThrow();
  }

  v136 = v24;
  v123 = v16;
  v122 = objc_opt_self();
  v25 = [v122 defaultManager];
  v125 = a1;
  v26 = sub_21A450B34();
  v139 = 0;
  v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:&v139];

  v28 = v139;
  if (!v27)
  {
    v50 = v139;

    sub_21A450A84();

    return swift_willThrow();
  }

  v124 = v8;
  v29 = objc_opt_self();
  swift_beginAccess();

  v30 = v28;
  v31 = sub_21A450F54();

  v139 = 0;
  v32 = [v29 dataWithJSONObject:v31 options:4 error:&v139];

  v33 = v139;
  if (!v32)
  {
    v51 = v33;

    sub_21A450A84();

    return swift_willThrow();
  }

  v121 = v9;
  v34 = sub_21A450C64();
  v36 = v35;

  v139 = 0x6A2E657069636572;
  v140 = 0xEB000000006E6F73;
  v37 = v135;
  v38 = *(v135 + 104);
  v39 = v133;
  v119 = *MEMORY[0x277CC91D8];
  v40 = v134;
  v116 = v135 + 104;
  v118 = v38;
  v38(v133);
  v115 = sub_21A3ED2CC();
  sub_21A450BD4();
  v42 = *(v37 + 8);
  v41 = v37 + 8;
  v117 = v42;
  v42(v39, v40);
  v43 = v132;
  sub_21A450C74();
  v132 = v43;
  if (v43)
  {
    (*(v121 + 8))(v21, v124);
    sub_21A3E759C(v34, v36);
  }

  v113 = v34;
  v114 = v36;
  v52 = v121 + 8;
  v120 = *(v121 + 8);
  v120(v21, v124);
  swift_beginAccess();
  v53 = v2[3];
  v139 = v2[2];
  v140 = v53;
  v137 = 0xD000000000000013;
  v138 = 0x800000021A45BA80;
  v118(v39, v119, v40);

  sub_21A450BD4();
  v117(v39, v40);
  v54 = v126;
  sub_21A4510A4();
  v55 = v132;
  sub_21A451674();
  v56 = v55;
  if (v55)
  {
    sub_21A3E759C(v113, v114);

    (*(v127 + 8))(v54, v128);
    v120(v19, v124);
  }

  else
  {
    v132 = 0;
    v135 = v41;
    (*(v127 + 8))(v54, v128);
    v57 = v124;
    v120(v19, v124);

    v58 = v2[5];
    v59 = *(v58 + 2);

    v115 = v59;
    if (!v59)
    {
LABEL_27:
      sub_21A3E759C(v113, v114);
    }

    v128 = v52;
    v60 = 0;
    v61 = v121;
    v127 = v121 + 16;
    v62 = v123;
    v126 = v58;
    while (1)
    {
      if (v60 >= *(v58 + 2))
      {
        __break(1u);
        goto LABEL_36;
      }

      (*(v61 + 16))(v62, &v58[((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60], v57);
      v56 = sub_21A450B84();
      v19 = v63;
      if ((sub_21A451224() & 1) == 0)
      {
        break;
      }

      v64 = sub_21A451154();
      v65 = sub_21A443C34(v64, v56, v19);
      v67 = v66;
      v69 = v68;
      v71 = v70;

      v139 = v65;
      v140 = v67;
      v141 = v69;
      v142 = v71;
      v73 = v133;
      v72 = v134;
      v118(v133, v119, v134);
      sub_21A4442E4();
      v74 = v130;
      sub_21A450BC4();
      v117(v73, v72);

      v75 = v122;
      v76 = [v122 defaultManager];
      v77 = sub_21A450B34();
      v139 = 0;
      LODWORD(v73) = [v76 removeItemAtURL:v77 error:&v139];

      if (v73)
      {
        v78 = v139;
      }

      else
      {
        v79 = v139;
        v80 = sub_21A450A84();

        swift_willThrow();
        v132 = 0;
      }

      v81 = v124;
      v82 = [v75 defaultManager];
      v83 = v75;
      v84 = v129;
      sub_21A450B64();
      sub_21A450B84();
      v120(v84, v81);
      v85 = sub_21A451054();

      v139 = 0;
      v86 = [v82 createDirectoryAtPath:v85 withIntermediateDirectories:1 attributes:0 error:&v139];

      if (!v86)
      {
        v106 = v139;

        sub_21A450A84();

        swift_willThrow();
        sub_21A3E759C(v113, v114);
        v107 = v120;
        v120(v74, v81);
        return v107(v123, v81);
      }

      v87 = v139;
      v19 = [v83 byte_27825363B];
      v56 = v123;
      v88 = sub_21A450B34();
      v89 = sub_21A450B34();
      v139 = 0;
      v90 = [v19 copyItemAtURL:v88 toURL:v89 error:&v139];

      if (!v90)
      {
        v108 = v139;

        sub_21A450A84();

        swift_willThrow();
        sub_21A3E759C(v113, v114);
        v109 = v124;
        v110 = v120;
        v120(v74, v124);
        return v110(v56, v109);
      }

      ++v60;
      v91 = v139;
      v57 = v124;
      v92 = v120;
      v120(v74, v124);
      v92(v56, v57);
      v62 = v56;
      v61 = v121;
      v58 = v126;
      if (v115 == v60)
      {
        goto LABEL_27;
      }
    }

    if (qword_27CD28170 == -1)
    {
      goto LABEL_29;
    }

LABEL_36:
    swift_once();
LABEL_29:
    v93 = sub_21A450F24();
    __swift_project_value_buffer(v93, qword_27CD28C90);

    v94 = v136;

    v95 = sub_21A450F04();
    v96 = sub_21A451574();

    v97 = os_log_type_enabled(v95, v96);
    v98 = v131;
    if (v97)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v139 = v100;
      *v99 = 136315394;
      v101 = sub_21A3E2554(v56, v19, &v139);
      v102 = v94;
      v103 = v101;

      *(v99 + 4) = v103;
      *(v99 + 12) = 2080;
      v104 = sub_21A3E2554(v98, v102, &v139);

      *(v99 + 14) = v104;
      _os_log_impl(&dword_21A3C2000, v95, v96, "%s do not have common prefix of %s", v99, 0x16u);
      swift_arrayDestroy();
      v105 = v100;
      v62 = v123;
      MEMORY[0x21CEDB220](v105, -1, -1);
      MEMORY[0x21CEDB220](v99, -1, -1);
    }

    else
    {
    }

    sub_21A3EC940();
    swift_allocError();
    *v111 = 53;
    swift_willThrow();
    sub_21A3E759C(v113, v114);
    return (v120)(v62, v57);
  }
}