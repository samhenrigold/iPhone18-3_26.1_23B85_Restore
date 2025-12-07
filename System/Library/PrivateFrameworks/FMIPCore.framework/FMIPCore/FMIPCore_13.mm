uint64_t FMIPItem.init(item:safeLocations:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v68 - v7;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v9 = MEMORY[0x28223BE20](updated);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v11;
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  memcpy(v86, a1 + 1, 0x120uLL);
  memcpy((a3 + 8), a1 + 1, 0x121uLL);
  v14 = *(a1 + 19);
  v80 = *(a1 + 20);
  v15 = v80;
  *(a3 + 304) = v14;
  *(a3 + 320) = v15;
  v16 = a1[42];
  v84 = a1[43];
  v17 = v84;
  *(a3 + 336) = v16;
  *(a3 + 344) = v17;
  v18 = a1[44];
  v83 = a1[45];
  v19 = v83;
  *(a3 + 352) = v18;
  *(a3 + 360) = v19;
  v20 = a1[46];
  v82 = a1[47];
  v21 = v82;
  *(a3 + 368) = v20;
  *(a3 + 376) = v21;
  v22 = type metadata accessor for FMIPItem(0);
  *(a3 + v22[21]) = *(a1 + v22[21]);
  *(a3 + v22[22]) = *(a1 + v22[22]);
  *(a3 + v22[25]) = *(a1 + v22[25]);
  v23 = a1[48];
  v79 = a1[49];
  v24 = v79;
  v25 = a1[50];
  *(a3 + 384) = v23;
  *(a3 + 392) = v24;
  *(a3 + 400) = v25;
  sub_24A67E964(a1 + v22[13], a3 + v22[13], &unk_27EF5E100, &unk_24A839DB0);
  v26 = v22[14];
  v28 = *(a1 + v26);
  v73 = *(a1 + v26 + 8);
  v27 = v73;
  v29 = (a3 + v26);
  *v29 = v28;
  v29[1] = v27;
  v30 = v22[15];
  v32 = *(a1 + v30);
  v72 = *(a1 + v30 + 8);
  v31 = v72;
  v33 = (a3 + v30);
  *v33 = v32;
  v33[1] = v31;
  v34 = v22[16];
  v35 = a1 + v34;
  v36 = *(a1 + v34);
  v77 = *(a1 + v34 + 8);
  v37 = v77;
  v78 = v36;
  v38 = *(a1 + v34 + 16);
  v75 = *(a1 + v34 + 24);
  v39 = v75;
  v76 = v38;
  v40 = a3 + v34;
  *v40 = v36;
  *(v40 + 8) = v37;
  *(v40 + 16) = v38;
  *(v40 + 24) = v39;
  v74 = v35[32];
  *(v40 + 32) = v74;
  sub_24A7A9180(a1 + v22[24], a3 + v22[24], type metadata accessor for FMIPProductType);
  v41 = v22[17];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 24);
  v45 = *(a1 + v41 + 32);
  v70 = *(a1 + v41 + 16);
  v44 = v70;
  v71 = v45;
  v46 = a3 + v41;
  *v46 = *v42;
  *(v46 + 16) = v44;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  v47 = v22[18];
  v48 = *(a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a3 + v47);
  *v50 = v48;
  v50[1] = v49;
  *(a3 + v22[19]) = *(a1 + v22[19]);
  v51 = v22[20];
  v52 = *(a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a3 + v51);
  *v54 = v52;
  v54[1] = v53;
  *(a3 + v22[23]) = a2;
  v55 = *a1;
  v69 = v13;
  swift_storeEnumTagMultiPayload();
  sub_24A7A9180(v13, v11, type metadata accessor for FMIPItemUpdateType);
  v56 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp;
  v57 = sub_24A82CA34();
  v58 = *(v57 - 8);
  v59 = v55 + v56;
  v60 = v81;
  (*(v58 + 16))(v81, v59, v57);
  (*(v58 + 56))(v60, 0, 1, v57);
  type metadata accessor for FMIPItemUpdateContext(0);
  v61 = swift_allocObject();

  sub_24A67E964(v86, &v85, &unk_27EF5E0D0, &qword_24A8319E0);
  v62 = v80;
  v63 = v79;

  v64 = v62;

  sub_24A76ED78(v78, v77, v76, v75);

  v65 = sub_24A7B3A90(v68, v60, v61, v55);

  sub_24A7A91E8(v69, type metadata accessor for FMIPItemUpdateType);
  *a3 = v65;
  v66 = *(a1 + v22[26]);
  result = sub_24A7A91E8(a1, type metadata accessor for FMIPItem);
  *(a3 + v22[26]) = v66;
  return result;
}

uint64_t FMIPItem.init(with:from:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v440 = a2;
  v442 = a3;
  v4 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v458 = &v438 - v5;
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v449 = &v438 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v438 - v10;
  v453 = type metadata accessor for FMIPItem(0);
  MEMORY[0x28223BE20](v453);
  v13 = &v438 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  sub_24A67DF6C(a1, v14);
  v457 = (*(v15 + 96))(v14, v15);
  if (!v457)
  {
    result = sub_24A82D934();
    __break(1u);
    return result;
  }

  sub_24A68808C(v492);
  memcpy(v13 + 8, v492, 0x120uLL);
  v16 = *(a1 + 3);
  v17 = *(a1 + 4);
  sub_24A67DF6C(a1, v16);
  v18 = (*(v17 + 40))(v16, v17);
  _s8FMIPCore21FMIPItemBatteryStatusO8rawValueACSgSi_tcfC_0(v18, v489);
  v19 = v489[0];
  if (LOBYTE(v489[0]) == 7)
  {
    v19 = 0;
  }

  v13[296] = v19;
  *(v13 + 40) = 0;
  *(v13 + 41) = 0;
  *(v13 + 39) = 0;
  v20 = *(a1 + 3);
  v21 = *(a1 + 4);
  sub_24A67DF6C(a1, v20);
  (*(v21 + 24))(v20, v21);
  v22 = v6;
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    sub_24A67F378(v11, &qword_27EF5D020, &qword_24A830E40);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = sub_24A82CA54();
    v24 = v25;
    (*(v7 + 8))(v11, v6);
  }

  v26 = v7;
  *(v13 + 42) = v23;
  *(v13 + 43) = v24;
  v27 = *(a1 + 3);
  v28 = *(a1 + 4);
  sub_24A67DF6C(a1, v27);
  v29 = v449;
  (*(v28 + 16))(v27, v28);
  v30 = sub_24A82CA54();
  v32 = v31;
  v33 = *(v26 + 8);
  v33(v29, v22);
  *(v13 + 44) = v30;
  *(v13 + 45) = v32;
  v34 = *(a1 + 3);
  v35 = *(a1 + 4);
  sub_24A67DF6C(a1, v34);
  (*(v35 + 48))(v34, v35);
  v36 = sub_24A82CA54();
  v38 = v37;
  v447 = v22;
  v445 = v33;
  v33(v29, v22);
  *(v13 + 46) = v36;
  *(v13 + 47) = v38;
  *(v13 + 49) = 0;
  *(v13 + 50) = 0;
  *(v13 + 48) = 0;
  v39 = *(a1 + 3);
  v40 = *(a1 + 4);
  sub_24A67DF6C(a1, v39);
  v41 = (*(v40 + 72))(v39, v40);
  v446 = v26 + 8;
  if (v41)
  {
    v42 = v458;
    FMIPItemLostModeMetadata.init(lostModeInfo:)(v41, v458);
    v43 = 0;
    v44 = v453;
  }

  else
  {
    v43 = 1;
    v44 = v453;
    v42 = v458;
  }

  v45 = type metadata accessor for FMIPItemLostModeMetadata(0);
  (*(*(v45 - 8) + 56))(v42, v43, 1, v45);
  sub_24A70B7FC(v42, &v13[v44[13]]);
  v46 = *(a1 + 3);
  v47 = *(a1 + 4);
  sub_24A67DF6C(a1, v46);
  v48 = (*(v47 + 88))(v46, v47);
  v49 = [v48 destination];

  v50 = sub_24A82CFC4();
  v52 = v51;

  v53 = &v13[v44[15]];
  *v53 = v50;
  v53[1] = v52;
  v54 = v457;
  v55 = [v54 roleEmoji];
  v56 = sub_24A82CFC4();
  v58 = v57;

  v59 = [v54 role];
  v60 = sub_24A82CFC4();
  v62 = v61;

  v63 = [v54 roleId];
  v441 = v54;

  v64 = &v13[v44[17]];
  *v64 = v63;
  *(v64 + 1) = v56;
  *(v64 + 2) = v58;
  *(v64 + 3) = v60;
  *(v64 + 4) = v62;
  v65 = *(a1 + 3);
  v66 = *(a1 + 4);
  sub_24A67DF6C(a1, v65);
  v68 = (*(v66 + 104))(v65, v66);
  if (!v67)
  {
    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v70 = [objc_opt_self() bundleForClass_];
    v437 = 0xE000000000000000;
    v68 = sub_24A82C6F4();
    v72 = v71;

    v67 = v72;
  }

  v73 = v447;
  v74 = v453;
  v75 = &v13[*(v453 + 72)];
  *v75 = v68;
  v75[1] = v67;
  v76 = *(a1 + 3);
  v77 = *(a1 + 4);
  sub_24A67DF6C(a1, v76);
  v78 = (*(v77 + 112))(v76, v77);
  v79 = &v13[v74[20]];
  *v79 = v78;
  v79[1] = v80;
  *&v13[v74[23]] = MEMORY[0x277D84F90];
  v81 = *(a1 + 3);
  v82 = *(a1 + 4);
  sub_24A67DF6C(a1, v81);
  v83 = (*(v82 + 128))(v81, v82);
  v458 = a1;
  v451 = v13;
  if (!v83 || (v84 = v83, v85 = [v83 layoutTemplate], v84, !v85))
  {
    v438 = 0;
LABEL_20:
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v121 = sub_24A82CDC4();
    sub_24A6797D0(v121, qword_281518F88);
    sub_24A698230(a1, v489);
    sub_24A698230(a1, v486);
    v122 = sub_24A82CD94();
    v123 = sub_24A82D504();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v457 = swift_slowAlloc();
      v483[0] = v457;
      *v124 = 136315394;
      v125 = v73;
      v126 = v490;
      v127 = v491;
      sub_24A67DF6C(v489, v490);
      v128 = v449;
      (*(v127 + 16))(v126, v127);
      sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v129 = sub_24A82DB84();
      v131 = v130;
      v132 = v128;
      v74 = v453;
      v445(v132, v125);
      sub_24A6876E8(v489);
      v133 = sub_24A68761C(v129, v131, v483);

      *(v124 + 4) = v133;
      *(v124 + 12) = 2048;
      v134 = v487;
      v135 = v488;
      sub_24A67DF6C(v486, v487);
      v136 = *(v135 + 64);
      v137 = v135;
      a1 = v458;
      v138 = v136(v134, v137);
      sub_24A6876E8(v486);
      *(v124 + 14) = v138;
      _os_log_impl(&dword_24A675000, v122, v123, "FMIPItem: No part info provided for beacon%s (part identifier: %ld)", v124, 0x16u);
      v139 = v457;
      sub_24A6876E8(v457);
      MEMORY[0x24C21E1D0](v139, -1, -1);
      MEMORY[0x24C21E1D0](v124, -1, -1);
    }

    else
    {
      sub_24A6876E8(v486);

      sub_24A6876E8(v489);
    }

    v140 = &v13[v74[16]];
    v140[32] = 0;
    *v140 = 0u;
    *(v140 + 1) = 0u;
    v141 = *(a1 + 3);
    v142 = *(a1 + 4);
    sub_24A67DF6C(a1, v141);
    v143 = (*(v142 + 8))(v141, v142);
    v144 = &v13[v74[14]];
    *v144 = v143;
    v144[1] = v145;
    goto LABEL_29;
  }

  sub_24A679170(0, &qword_27EF5EA00, 0x277D495F8);
  v86 = sub_24A82D244();

  MEMORY[0x28223BE20](v87);
  v437 = a1;
  v88 = sub_24A79F2A8(sub_24A7A8134, (&v438 - 4), v86);
  v438 = 0;

  if (!v88)
  {
    v13 = v451;
    goto LABEL_20;
  }

  v455 = v88;
  sub_24A7A3CB0(v455, v489);
  v89 = v489[0];
  v90 = v489[1];
  v91 = v489[2];
  v92 = v490;
  v93 = v491;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  LODWORD(i) = v93;
  v457 = v91;
  v94 = sub_24A82CDC4();
  sub_24A6797D0(v94, qword_281518F88);
  sub_24A698230(a1, v489);
  sub_24A698230(a1, v486);

  v95 = sub_24A82CD94();
  v96 = sub_24A82D504();

  v97 = v92;
  if (os_log_type_enabled(v95, v96))
  {
    v98 = swift_slowAlloc();
    v450 = swift_slowAlloc();
    v480[0] = v450;
    *v98 = 136315650;
    v99 = v73;
    v100 = v490;
    v452 = v89;
    v101 = v491;
    sub_24A67DF6C(v489, v490);
    v102 = *(v101 + 16);
    v103 = v449;
    v454 = v97;
    v102(v100, v101);
    sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v104 = sub_24A82DB84();
    v106 = v105;
    v445(v103, v99);
    sub_24A6876E8(v489);
    v107 = sub_24A68761C(v104, v106, v480);

    *(v98 + 4) = v107;
    *(v98 + 12) = 2048;
    v108 = v487;
    v109 = v488;
    sub_24A67DF6C(v486, v487);
    v110 = *(v109 + 64);
    v111 = v109;
    v89 = v452;
    v74 = v453;
    v112 = v110(v108, v111);
    sub_24A6876E8(v486);
    *(v98 + 14) = v112;
    *(v98 + 22) = 2080;
    v483[0] = v89;
    v483[1] = v90;
    v448 = v95;
    v113 = v457;
    v483[2] = v457;
    v484 = v454;
    LOBYTE(v99) = v96;
    v114 = i;
    LOBYTE(v485) = i;
    v115 = FMIPPartInfo.debugDescription.getter();
    v117 = sub_24A68761C(v115, v116, v480);
    v97 = v454;

    *(v98 + 24) = v117;
    v118 = v448;
    _os_log_impl(&dword_24A675000, v448, v99, "FMIPItem: Part info for %s (part identifier: %ld) is %s", v98, 0x20u);
    v119 = v450;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v119, -1, -1);
    v120 = v98;
    a1 = v458;
    MEMORY[0x24C21E1D0](v120, -1, -1);

    v13 = v451;
  }

  else
  {
    sub_24A6876E8(v486);

    sub_24A6876E8(v489);
    v13 = v451;
    v113 = v457;
    v114 = i;
  }

  v146 = &v13[v74[16]];
  *v146 = v89;
  *(v146 + 1) = v90;
  *(v146 + 2) = v113;
  *(v146 + 3) = v97;
  v146[32] = v114;
  v147 = &v13[v74[14]];
  *v147 = v89;
  v147[1] = v90;

LABEL_29:
  sub_24A698230(a1, v489);
  sub_24A6CFB24(v489, &v13[v74[24]]);
  v148 = *(a1 + 3);
  v149 = *(a1 + 4);
  sub_24A67DF6C(a1, v148);
  v150 = (*(v149 + 128))(v148, v149);
  if (v150)
  {
    v151 = v150;
    v152 = [v150 eligibleForPairing];

    v153 = v152 ^ 1;
  }

  else
  {
    v153 = 0;
  }

  v154 = v74[25];
  v439 = v153;
  v13[v154] = v153;
  v155 = *(a1 + 3);
  v156 = *(a1 + 4);
  sub_24A67DF6C(a1, v155);
  v13[v74[21]] = (*(v156 + 152))(v155, v156) & 1;
  v157 = *(a1 + 3);
  v158 = *(a1 + 4);
  sub_24A67DF6C(a1, v157);
  v13[v74[22]] = (*(v158 + 136))(v157, v158) == 76;
  sub_24A6BBA94(&qword_27EF5DD10, &unk_24A839DC0);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_24A839D90;
  v160 = *MEMORY[0x277D49798];
  *(v159 + 32) = *MEMORY[0x277D49798];
  v457 = (v159 + 32);
  v161 = *MEMORY[0x277D497D0];
  *(v159 + 40) = 16;
  *(v159 + 48) = v161;
  v162 = *MEMORY[0x277D497B0];
  *(v159 + 56) = 4;
  *(v159 + 64) = v162;
  v163 = *MEMORY[0x277D497B8];
  *(v159 + 72) = 2;
  *(v159 + 80) = v163;
  i = *MEMORY[0x277D497E0];
  v164 = i;
  *(v159 + 88) = 8;
  *(v159 + 96) = v164;
  v165 = *MEMORY[0x277D49790];
  *(v159 + 104) = 128;
  *(v159 + 112) = v165;
  v166 = *MEMORY[0x277D497A0];
  *(v159 + 120) = 256;
  *(v159 + 128) = v166;
  v167 = *MEMORY[0x277D49800];
  *(v159 + 136) = 64;
  *(v159 + 144) = v167;
  v168 = *MEMORY[0x277D497D8];
  *(v159 + 152) = 512;
  *(v159 + 160) = v168;
  *(v159 + 168) = 0x4000;
  v169 = v160;
  v170 = v161;
  v171 = v162;
  v172 = v163;
  v454 = v169;
  v448 = v170;
  v450 = v171;
  v444 = v172;
  v173 = i;
  v174 = v165;
  v175 = v166;
  v176 = v167;
  v177 = v168;
  v178 = sub_24A78A1B8(v159);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD18, &unk_24A8384D0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v179 = *MEMORY[0x277D497C0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v489[0] = v178;
  sub_24A784AB0(0x2000, v179, isUniquelyReferenced_nonNull_native);
  v181 = v489[0];
  v182 = *MEMORY[0x277D497E8];
  v183 = swift_isUniquelyReferenced_nonNull_native();
  v489[0] = v181;
  sub_24A784AB0(32, v182, v183);
  v184 = v489[0];
  v185 = *MEMORY[0x277D497F0];
  v186 = swift_isUniquelyReferenced_nonNull_native();
  v489[0] = v184;
  sub_24A784AB0(1024, v185, v186);
  v187 = (v489[0] + 64);
  v188 = 1 << *(v489[0] + 32);
  v189 = -1;
  if (v188 < 64)
  {
    v189 = ~(-1 << v188);
  }

  v190 = v189 & *(v489[0] + 64);
  v191 = (v188 + 63) >> 6;
  v457 = v489[0];

  v192 = 0;
  v452 = MEMORY[0x277D84F90];
  for (i = v187; v190; *&v204[8 * v203 + 32] = v201)
  {
LABEL_39:
    while (1)
    {
      v194 = __clz(__rbit64(v190));
      v190 &= v190 - 1;
      v195 = (v192 << 9) | (8 * v194);
      v196 = *(v457[6] + v195);
      v455 = *(v457[7] + v195);
      v197 = *(v458 + 3);
      v166 = *(v458 + 4);
      sub_24A67DF6C(v458, v197);
      v171 = v166 + 10;
      v198 = v166[10];
      v199 = v196;
      if (*(v198(v197, v166) + 16))
      {
        sub_24A77EE90(v199);
        if (v200)
        {
          break;
        }
      }

      v187 = i;
      if (!v190)
      {
        goto LABEL_35;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v452 = sub_24A78018C(0, *(v452 + 2) + 1, 1, v452);
    }

    v201 = v455;
    v187 = i;
    v203 = *(v452 + 2);
    v202 = *(v452 + 3);
    if (v203 >= v202 >> 1)
    {
      v452 = sub_24A78018C((v202 > 1), v203 + 1, 1, v452);
    }

    v204 = v452;
    *(v452 + 2) = v203 + 1;
  }

  while (1)
  {
LABEL_35:
    v193 = v192 + 1;
    if (__OFADD__(v192, 1))
    {
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    if (v193 >= v191)
    {
      break;
    }

    v190 = *(v187 + v193);
    v192 = v192 + 1;
    if (v190)
    {
      v192 = v193;
      goto LABEL_39;
    }
  }

  v490 = &type metadata for KoreaFeatureFlag;
  v491 = sub_24A6AF8B0();
  v205 = sub_24A82C4D4();
  sub_24A6876E8(v489);
  if (v205)
  {
    v206 = 0;
  }

  else
  {
    v206 = sub_24A82C4B4();
  }

  v207 = v458;
  v208 = sub_24A82C514();
  v490 = v208;
  v491 = sub_24A678A1C(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v209 = sub_24A697E3C(v489);
  (*(*(v208 - 8) + 104))(v209, *MEMORY[0x277D089E8], v208);
  LOBYTE(v208) = sub_24A82C4D4();
  sub_24A6876E8(v489);
  if (v208 & 1) == 0 || (v206)
  {
    goto LABEL_64;
  }

  v210 = *(v207 + 3);
  v211 = *(v207 + 4);
  sub_24A67DF6C(v207, v210);
  if (!*((*(v211 + 80))(v210, v211) + 16))
  {

    goto LABEL_64;
  }

  sub_24A77EE90(*MEMORY[0x277D497A8]);
  v213 = v212;

  if ((v213 & 1) == 0)
  {
LABEL_64:
    v222 = v452;
    goto LABEL_65;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v214 = v452;
  }

  else
  {
    v214 = sub_24A78018C(0, *(v452 + 2) + 1, 1, v452);
  }

  v216 = *(v214 + 2);
  v215 = *(v214 + 3);
  v217 = v214;
  v218 = v215 >> 1;
  v219 = v216 + 1;
  if (v215 >> 1 <= v216)
  {
    v217 = sub_24A78018C((v215 > 1), v216 + 1, 1, v214);
    v215 = *(v217 + 3);
    v218 = v215 >> 1;
  }

  *(v217 + 2) = v219;
  *&v217[8 * v216 + 32] = 2048;
  v220 = v216 + 2;
  if (v218 < v220)
  {
    v221 = sub_24A78018C((v215 > 1), v220, 1, v217);
  }

  else
  {
    v221 = v217;
  }

  *(v221 + 2) = v220;
  *&v221[8 * v219 + 32] = 4096;
  v222 = v221;
LABEL_65:
  v223 = v222;
  v224 = *(v222 + 2);
  v452 = v223;
  v225 = 0;
  if (v224)
  {
    v226 = (v223 + 32);
    do
    {
      v228 = *v226++;
      v227 = v228;
      if ((v228 & ~v225) == 0)
      {
        v227 = 0;
      }

      v225 |= v227;
      --v224;
    }

    while (v224);
  }

  v229 = *(v207 + 3);
  v230 = *(v207 + 4);
  sub_24A67DF6C(v207, v229);
  v231 = (*(v230 + 168))(v229, v230);
  v232 = v225 & 0xFFFFFFFFFFFFFFEFLL;
  if (v231)
  {
    v232 = v225;
  }

  *(v451 + 38) = v232;
  sub_24A6BBA94(&qword_27EF5DD00, &unk_24A839DD0);
  v233 = swift_allocObject();
  *(v233 + 16) = xmmword_24A835E80;
  *(v233 + 32) = v448;
  *(v233 + 40) = xmmword_24A835E90;
  *(v233 + 56) = v450;
  *(v233 + 64) = xmmword_24A835EA0;
  *(v233 + 80) = v454;
  *(v233 + 88) = xmmword_24A835EB0;
  *(v233 + 104) = v444;
  v234 = MEMORY[0x277D497C8];
  *(v233 + 112) = xmmword_24A835EC0;
  v235 = *v234;
  *(v233 + 128) = v235;
  *(v233 + 136) = xmmword_24A835ED0;
  v236 = v235;
  v237 = sub_24A78A0C0(v233);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD08, &unk_24A8384E0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v171 = (v237 + 64);
  v238 = 1 << *(v237 + 32);
  v239 = -1;
  if (v238 < 64)
  {
    v239 = ~(-1 << v238);
  }

  v240 = v239 & *(v237 + 64);
  v166 = ((v238 + 63) >> 6);
  i = v237;

  v241 = 0;
  v443 = MEMORY[0x277D84F90];
  v454 = (v237 + 64);
  while (v240)
  {
LABEL_81:
    v243 = __clz(__rbit64(v240)) | (v241 << 6);
    v244 = *(*(i + 6) + 8 * v243);
    v240 &= v240 - 1;
    v245 = *(i + 7) + 16 * v243;
    v247 = *v245;
    v246 = *(v245 + 8);
    v455 = v247;
    v450 = v246;
    v248 = *(v207 + 3);
    v249 = *(v207 + 4);
    sub_24A67DF6C(v207, v248);
    v192 = (v249 + 80);
    v250 = *(v249 + 80);
    v251 = v244;
    v252 = v250(v248, v249);
    if (*(v252 + 16) && (v253 = sub_24A77EE90(v251), (v254 & 1) != 0))
    {
      v255 = *(*(v252 + 56) + 8 * v253);

      v256 = [v255 state];

      v171 = v454;
      v207 = v458;
      if (v256 == v455)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v443 = sub_24A780178(0, *(v443 + 2) + 1, 1, v443);
        }

        v257 = v450;
        v259 = *(v443 + 2);
        v258 = *(v443 + 3);
        if (v259 >= v258 >> 1)
        {
          v443 = sub_24A780178((v258 > 1), v259 + 1, 1, v443);
        }

        v260 = v443;
        *(v443 + 2) = v259 + 1;
        *&v260[8 * v259 + 32] = v257;
      }
    }

    else
    {

      v207 = v458;
      v171 = v454;
    }
  }

  while (1)
  {
    v242 = v241 + 1;
    if (__OFADD__(v241, 1))
    {
      goto LABEL_210;
    }

    if (v242 >= v166)
    {
      break;
    }

    v240 = *(v171 + v242);
    ++v241;
    if (v240)
    {
      v241 = v242;
      goto LABEL_81;
    }
  }

  v489[0] = &unk_285DBD728;
  sub_24A77E918(v443);
  v166 = v489[0];
  v261 = *(v207 + 3);
  v262 = *(v207 + 4);
  sub_24A67DF6C(v207, v261);
  v263 = (*(v262 + 80))(v261, v262);
  if (*(v263 + 16) && (v264 = sub_24A77EE90(v448), (v265 & 1) != 0))
  {
    v266 = *(*(v263 + 56) + 8 * v264);

    v267 = [v266 state];
  }

  else
  {

    v267 = -1;
  }

  if (qword_27EF5CBA0 != -1)
  {
    swift_once();
  }

  v171 = sub_24A82CDC4();
  v268 = sub_24A6797D0(v171, qword_27EF78C58);
  sub_24A698230(v458, v489);
  v269 = sub_24A82CD94();
  v270 = sub_24A82D504();
  if (!os_log_type_enabled(v269, v270))
  {

    sub_24A6876E8(v489);
    if (v267 <= 1)
    {
      goto LABEL_131;
    }

    goto LABEL_102;
  }

  v271 = swift_slowAlloc();
  v272 = swift_slowAlloc();
  v486[0] = v272;
  *v271 = 136446723;
  v455 = v268;
  i = v171;
  LODWORD(v454) = v270;
  v450 = v272;
  if (v267 > 1)
  {
    switch(v267)
    {
      case 2:
        v273 = 0xE500000000000000;
        v274 = 0x656C64692ELL;
        break;
      case 3:
        v273 = 0xE600000000000000;
        v274 = 0x726F7272652ELL;
        break;
      case 4:
        v273 = 0xE700000000000000;
        v274 = 0x6465756575712ELL;
        break;
      default:
        goto LABEL_127;
    }
  }

  else if (v267 == -1)
  {
    v273 = 0xE800000000000000;
    v274 = 0x6E776F6E6B6E752ELL;
  }

  else if (v267)
  {
    if (v267 == 1)
    {
      v273 = 0xE800000000000000;
      v274 = 0x676E69646E65702ELL;
      goto LABEL_130;
    }

LABEL_127:
    v273 = 0xEF65756C61565F64;
    v274 = 0x656C646E61686E55;
  }

  else
  {
    v273 = 0xE800000000000000;
    v274 = 0x676E696E6E75722ELL;
  }

LABEL_130:
  v293 = sub_24A68761C(v274, v273, v486);

  *(v271 + 4) = v293;
  *(v271 + 12) = 2160;
  *(v271 + 14) = 1752392040;
  *(v271 + 22) = 2081;
  v294 = v490;
  v295 = v491;
  sub_24A67DF6C(v489, v490);
  v296 = v449;
  (*(v295 + 16))(v294, v295);
  sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v297 = v447;
  v298 = sub_24A82DB84();
  v300 = v299;
  v445(v296, v297);
  sub_24A6876E8(v489);
  v301 = sub_24A68761C(v298, v300, v486);

  *(v271 + 24) = v301;
  _os_log_impl(&dword_24A675000, v269, v454, "FMIPItem reported taskInfo PlaySound %{public}s for %{private,mask.hash}s.", v271, 0x20u);
  v302 = v450;
  swift_arrayDestroy();
  MEMORY[0x24C21E1D0](v302, -1, -1);
  MEMORY[0x24C21E1D0](v271, -1, -1);

  v171 = i;
  if (v267 > 1)
  {
LABEL_102:
    if (v267 == 2)
    {
      goto LABEL_139;
    }

    if (v267 != 3)
    {
      if (v267 != 4)
      {
        goto LABEL_139;
      }

      v275 = swift_isUniquelyReferenced_nonNull_native();
      v276 = v458;
      if ((v275 & 1) == 0)
      {
        v166 = sub_24A780178(0, v166[2] + 1, 1, v166);
      }

      v278 = v166[2];
      v277 = v166[3];
      if (v278 >= v277 >> 1)
      {
        v166 = sub_24A780178((v277 > 1), v278 + 1, 1, v166);
      }

      v166[2] = v278 + 1;
      v279 = &v166[v278];
      v280 = 2048;
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = sub_24A780178(0, v166[2] + 1, 1, v166);
    }

    v276 = v458;
    v282 = v166[2];
    v281 = v166[3];
    if (v282 >= v281 >> 1)
    {
      v166 = sub_24A780178((v281 > 1), v282 + 1, 1, v166);
    }

    v166[2] = v282 + 1;
    v166[v282 + 4] = 4096;
    v283 = *(v276 + 3);
    v284 = *(v276 + 4);
    sub_24A67DF6C(v276, v283);
    v285 = (*(v284 + 80))(v283, v284);
    if (!*(v285 + 16) || (v286 = sub_24A77EE90(v448), (v287 & 1) == 0))
    {

      goto LABEL_147;
    }

    v288 = *(*(v285 + 56) + 8 * v286);

    v192 = [v288 error];

    if (!v192)
    {
      goto LABEL_139;
    }

    swift_getErrorValue();
    v289 = sub_24A774394(v461, v462);
    v291 = v290;
    if (v289 == sub_24A82CFC4() && v291 == v292)
    {

      goto LABEL_212;
    }

LABEL_211:
    v420 = sub_24A82DC04();

    if (v420)
    {
LABEL_212:
      swift_getErrorValue();
      if (sub_24A774234(v459, v460) == 19)
      {
        sub_24A698230(v458, v489);
        v421 = sub_24A82CD94();
        v422 = sub_24A82D504();
        if (os_log_type_enabled(v421, v422))
        {
          v423 = swift_slowAlloc();
          v455 = swift_slowAlloc();
          v486[0] = v455;
          *v423 = 141558275;
          *(v423 + 4) = 1752392040;
          *(v423 + 12) = 2081;
          v424 = v490;
          v425 = v491;
          sub_24A67DF6C(v489, v490);
          v426 = *(v425 + 16);
          i = v171;
          v427 = v449;
          LODWORD(v454) = v422;
          v428 = v447;
          v426(v424, v425);
          sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v429 = sub_24A82DB84();
          v431 = v430;
          v432 = v427;
          v171 = i;
          v445(v432, v428);
          sub_24A6876E8(v489);
          v433 = sub_24A68761C(v429, v431, v486);

          *(v423 + 14) = v433;

          _os_log_impl(&dword_24A675000, v421, v454, "Link created on older OS version for %{private,mask.hash}s.", v423, 0x16u);
          v434 = v455;
          sub_24A6876E8(v455);
          MEMORY[0x24C21E1D0](v434, -1, -1);
          MEMORY[0x24C21E1D0](v423, -1, -1);
        }

        else
        {

          sub_24A6876E8(v489);
        }

        v436 = v166[2];
        v435 = v166[3];
        if (v436 >= v435 >> 1)
        {
          v166 = sub_24A780178((v435 > 1), v436 + 1, 1, v166);
        }

        v166[2] = v436 + 1;
        v166[v436 + 4] = 0x10000;
        goto LABEL_140;
      }
    }

LABEL_140:
    v276 = v458;
    goto LABEL_147;
  }

LABEL_131:
  if (v267 == -1)
  {
    goto LABEL_139;
  }

  if (v267)
  {
    if (v267 == 1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v166 = sub_24A780178(0, v166[2] + 1, 1, v166);
      }

      v276 = v458;
      v304 = v166[2];
      v303 = v166[3];
      if (v304 >= v303 >> 1)
      {
        v166 = sub_24A780178((v303 > 1), v304 + 1, 1, v166);
      }

      v166[2] = v304 + 1;
      v279 = &v166[v304];
      v280 = 4;
      goto LABEL_146;
    }

LABEL_139:

    goto LABEL_140;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v166 = sub_24A780178(0, v166[2] + 1, 1, v166);
  }

  v276 = v458;
  v306 = v166[2];
  v305 = v166[3];
  if (v306 >= v305 >> 1)
  {
    v166 = sub_24A780178((v305 > 1), v306 + 1, 1, v166);
  }

  v166[2] = v306 + 1;
  v279 = &v166[v306];
  v280 = 2;
LABEL_146:
  v279[4] = v280;
LABEL_147:
  v307 = *(v276 + 3);
  v308 = *(v276 + 4);
  sub_24A67DF6C(v276, v307);
  v309 = (*(v308 + 80))(v307, v308);
  if (*(v309 + 16) && (v310 = sub_24A77EE90(*MEMORY[0x277D49788]), (v311 & 1) != 0))
  {
    v312 = *(*(v309 + 56) + 8 * v310);

    v313 = [v312 state];

    if (v313)
    {
      if (v313 == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v166 = sub_24A780178(0, v166[2] + 1, 1, v166);
        }

        v315 = v166[2];
        v314 = v166[3];
        if (v315 >= v314 >> 1)
        {
          v166 = sub_24A780178((v314 > 1), v315 + 1, 1, v166);
        }

        v166[2] = v315 + 1;
        v316 = &v166[v315];
        v317 = 1024;
        goto LABEL_162;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v166 = sub_24A780178(0, v166[2] + 1, 1, v166);
      }

      v319 = v166[2];
      v318 = v166[3];
      if (v319 >= v318 >> 1)
      {
        v166 = sub_24A780178((v318 > 1), v319 + 1, 1, v166);
      }

      v166[2] = v319 + 1;
      v316 = &v166[v319];
      v317 = 512;
LABEL_162:
      v316[4] = v317;
    }
  }

  else
  {
  }

  v320 = *(v276 + 3);
  v321 = *(v276 + 4);
  sub_24A67DF6C(v276, v320);
  v322 = (*(v321 + 176))(v320, v321);
  if (!(v439 & 1 | ((v322 & 1) == 0)))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = sub_24A780178(0, v166[2] + 1, 1, v166);
    }

    v324 = v166[2];
    v323 = v166[3];
    if (v324 >= v323 >> 1)
    {
      v166 = sub_24A780178((v323 > 1), v324 + 1, 1, v166);
    }

    v166[2] = v324 + 1;
    v166[v324 + 4] = 64;
  }

  v325 = *(v276 + 3);
  v326 = *(v276 + 4);
  sub_24A67DF6C(v276, v325);
  v327 = (*(v326 + 72))(v325, v326);
  if (v327)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = sub_24A780178(0, v166[2] + 1, 1, v166);
    }

    v329 = v166[2];
    v328 = v166[3];
    v330 = v329 + 1;
    if (v329 >= v328 >> 1)
    {
      v166 = sub_24A780178((v328 > 1), v329 + 1, 1, v166);
    }

    v166[2] = v330;
    v166[v329 + 4] = 8;
LABEL_176:
    v331 = 0;
    v332 = 4;
    do
    {
      v333 = v166[v332];
      if ((v333 & ~v331) == 0)
      {
        v333 = 0;
      }

      v331 |= v333;
      ++v332;
      --v330;
    }

    while (v330);
  }

  else
  {
    v330 = v166[2];
    if (v330)
    {
      goto LABEL_176;
    }

    v331 = 0;
  }

  v334 = v453;
  v335 = v451;
  *&v451[*(v453 + 76)] = v331;
  *v335 = v440;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  sub_24A6797D0(v171, qword_281518F88);
  sub_24A698230(v276, v489);
  sub_24A698230(v276, v486);
  sub_24A698230(v276, v483);
  sub_24A698230(v276, v480);
  sub_24A698230(v276, v477);
  sub_24A698230(v276, v474);
  sub_24A698230(v276, v471);
  sub_24A698230(v276, v468);
  sub_24A698230(v276, v465);
  v336 = sub_24A82CD94();
  v337 = sub_24A82D504();
  if (os_log_type_enabled(v336, v337))
  {
    v338 = swift_slowAlloc();
    v339 = swift_slowAlloc();
    v464 = v339;
    *v338 = 136317186;
    v340 = v490;
    v341 = v491;
    sub_24A67DF6C(v489, v490);
    v342 = (*(v341 + 8))(v340, v341);
    v344 = v343;
    sub_24A6876E8(v489);
    v345 = sub_24A68761C(v342, v344, &v464);

    *(v338 + 4) = v345;
    *(v338 + 12) = 2080;
    v346 = v487;
    v347 = v488;
    sub_24A67DF6C(v486, v487);
    v348 = (*(v347 + 80))(v346, v347);
    if (*(v348 + 16) && (v349 = sub_24A77EE90(v448), (v350 & 1) != 0))
    {
      v351 = *(*(v348 + 56) + 8 * v349);
      v352 = v351;
    }

    else
    {
      v351 = 0;
    }

    v463 = v351;
    sub_24A6BBA94(&qword_27EF5DD38, &qword_24A839DE0);
    v353 = sub_24A82D024();
    v355 = v354;
    sub_24A6876E8(v486);
    v356 = sub_24A68761C(v353, v355, &v464);

    *(v338 + 14) = v356;
    *(v338 + 22) = 2080;
    v357 = v484;
    v358 = v485;
    sub_24A67DF6C(v483, v484);
    v359 = (*(v358 + 8))(v357, v358);
    v361 = v360;
    sub_24A6876E8(v483);
    v362 = sub_24A68761C(v359, v361, &v464);

    *(v338 + 24) = v362;
    *(v338 + 32) = 2080;
    v363 = v481;
    v364 = v482;
    sub_24A67DF6C(v480, v481);
    v365 = (*(v364 + 80))(v363, v364);
    if (*(v365 + 16) && (v366 = sub_24A77EE90(*MEMORY[0x277D497F8]), (v367 & 1) != 0))
    {
      v368 = *(*(v365 + 56) + 8 * v366);
      v369 = v368;
    }

    else
    {
      v368 = 0;
    }

    v463 = v368;
    v370 = sub_24A82D024();
    v372 = v371;
    sub_24A6876E8(v480);
    v373 = sub_24A68761C(v370, v372, &v464);

    *(v338 + 34) = v373;
    *(v338 + 42) = 2080;
    v374 = v478;
    v375 = v479;
    sub_24A67DF6C(v477, v478);
    v376 = (*(v375 + 8))(v374, v375);
    v378 = v377;
    sub_24A6876E8(v477);
    v379 = sub_24A68761C(v376, v378, &v464);

    *(v338 + 44) = v379;
    *(v338 + 52) = 2080;
    v380 = v475;
    v381 = v476;
    sub_24A67DF6C(v474, v475);
    v382 = (*(v381 + 80))(v380, v381);
    if (*(v382 + 16) && (v383 = sub_24A77EE90(v444), (v384 & 1) != 0))
    {
      v385 = *(*(v382 + 56) + 8 * v383);
      v386 = v385;
    }

    else
    {
      v385 = 0;
    }

    v463 = v385;
    v387 = sub_24A82D024();
    v389 = v388;
    sub_24A6876E8(v474);
    v390 = sub_24A68761C(v387, v389, &v464);

    *(v338 + 54) = v390;
    *(v338 + 62) = 2080;
    v391 = v472;
    v392 = v473;
    sub_24A67DF6C(v471, v472);
    v393 = (*(v392 + 176))(v391, v392);
    if (v393)
    {
      v394 = 0;
    }

    else
    {
      v394 = 7630702;
    }

    if (v393)
    {
      v395 = 0xE000000000000000;
    }

    else
    {
      v395 = 0xE300000000000000;
    }

    sub_24A6876E8(v471);
    v396 = sub_24A68761C(v394, v395, &v464);

    *(v338 + 64) = v396;
    *(v338 + 72) = 2080;
    v397 = v469;
    v398 = v470;
    sub_24A67DF6C(v468, v469);
    v399 = (*(v398 + 8))(v397, v398);
    v401 = v400;
    sub_24A6876E8(v468);
    v402 = sub_24A68761C(v399, v401, &v464);

    *(v338 + 74) = v402;
    *(v338 + 82) = 2080;
    v403 = v466;
    v404 = v467;
    sub_24A67DF6C(v465, v466);
    v405 = v449;
    (*(v404 + 16))(v403, v404);
    v406 = sub_24A82CA54();
    v408 = v407;
    v445(v405, v447);
    sub_24A6876E8(v465);
    v409 = sub_24A68761C(v406, v408, &v464);

    *(v338 + 84) = v409;
    _os_log_impl(&dword_24A675000, v336, v337, "FMIPItem: %s taskInfo -> play sound %s\nFMIPItem: %s taskInfo -> stop sound %s\nFMIPItem: %s taskInfo -> notify when found active %s\n☎︎ FMIPItem: beacon is %s connected, '%s': %s", v338, 0x5Cu);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v339, -1, -1);
    MEMORY[0x24C21E1D0](v338, -1, -1);

    v276 = v458;
    v334 = v453;
  }

  else
  {

    sub_24A6876E8(v489);
    sub_24A6876E8(v486);
    sub_24A6876E8(v483);
    sub_24A6876E8(v480);
    sub_24A6876E8(v477);
    sub_24A6876E8(v474);
    sub_24A6876E8(v471);
    sub_24A6876E8(v468);
    sub_24A6876E8(v465);
  }

  v410 = *(v276 + 3);
  v411 = *(v276 + 4);
  sub_24A67DF6C(v276, v410);
  v412 = (*(v411 + 128))(v410, v411);
  v413 = v441;
  if (v412)
  {
    v414 = v412;
    [v412 rangeDistanceInMeters];
    v416 = v415;

    v417 = 20.0;
    if (v416 != 0.0)
    {
      v417 = v416;
    }
  }

  else
  {

    v417 = 20.0;
  }

  v418 = v451;
  *&v451[*(v334 + 104)] = v417;
  sub_24A6A23F8(v418, v442, type metadata accessor for FMIPItem);
  return sub_24A6876E8(v276);
}

unint64_t _s8FMIPCore21FMIPItemBatteryStatusO8rawValueACSgSi_tcfC_0@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t FMIPPartInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPPartInfo.symbol.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_24A7A3CB0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 partName];
  v5 = sub_24A82CFC4();
  v7 = v6;

  v8 = [a1 partSymbol];
  if (v8)
  {
    v9 = v8;
    v10 = sub_24A82CFC4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [a1 partType];
  v14 = sub_24A82CFC4();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  FMIPPartType.init(rawValue:)(v17);

  v18 = v19;
  if (v19 == 5)
  {
    v18 = 4;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v18;
}

FMIPCore::FMIPPartType_optional __swiftcall FMIPPartType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPPartInfo.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);

  sub_24A82D854();

  MEMORY[0x24C21C9E0](v1, v2);
  MEMORY[0x24C21C9E0](0x3A6C6F626D795320, 0xE900000000000020);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x21656E6F6E21;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  MEMORY[0x24C21C9E0](v6, v7);

  MEMORY[0x24C21C9E0](0x203A6570795420, 0xE700000000000000);
  v8 = 0x6475427466656CLL;
  v9 = 0xE800000000000000;
  v10 = 0x6475427468676972;
  if (v5 != 3)
  {
    v10 = 0x636972656E6567;
    v9 = 0xE700000000000000;
  }

  if (v5 == 2)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v8 = v10;
  }

  v11 = 0xEA0000000000656ELL;
  v12 = 0x6F6C61646E617473;
  if (v5)
  {
    v12 = 1702060387;
    v11 = 0xE400000000000000;
  }

  if (v5 <= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v5 <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  MEMORY[0x24C21C9E0](v13, v14);

  return 0x203A656D614ELL;
}

uint64_t FMIPPartType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F6C61646E617473;
  v3 = 0x6475427466656CLL;
  v4 = 0x6475427468676972;
  if (v1 != 3)
  {
    v4 = 0x636972656E6567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1702060387;
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

uint64_t sub_24A7A4054()
{
  v1 = 0x6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_24A7A409C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A7A8F70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A7A40C4(uint64_t a1)
{
  v2 = sub_24A7A81B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7A4100(uint64_t a1)
{
  v2 = sub_24A7A81B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPPartInfo.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5EA08, &qword_24A839DE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v7;
  v12 = *(v1 + 32);
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7A81B8();
  sub_24A82DD84();
  v16 = 0;
  v8 = v11[3];
  sub_24A82DB04();
  if (!v8)
  {
    v10 = v12;
    v15 = 1;
    sub_24A82DAD4();
    v14 = v10;
    v13 = 2;
    sub_24A7A820C();
    sub_24A82DB44();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FMIPPartInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5EA20, &qword_24A839DF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7A81B8();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v23 = 0;
  v9 = sub_24A82DA44();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  v17 = sub_24A82DA04();
  v18 = v12;
  v20 = 2;
  sub_24A7A8260();
  sub_24A82DA84();
  (*(v6 + 8))(v8, v5);
  v13 = v21;
  v14 = v18;
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;

  sub_24A6876E8(a1);
}

uint64_t sub_24A7A461C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7A46FC(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7A47C8(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7A48B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656ELL;
  v4 = 0x6F6C61646E617473;
  v5 = 0xE700000000000000;
  v6 = 0x6475427466656CLL;
  v7 = 0xE800000000000000;
  v8 = 0x6475427468676972;
  if (v2 != 3)
  {
    v8 = 0x636972656E6567;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1702060387;
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

uint64_t FMIPItem.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x120uLL);
  memcpy(a1, (v1 + 8), 0x120uLL);
  return sub_24A67E964(__dst, v4, &unk_27EF5E0D0, &qword_24A8319E0);
}

id FMIPItem.crowdSourcedLocation.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 312);
  v2 = *(v1 + 320);
  *(a1 + 8) = v2;
  return v2;
}

uint64_t FMIPItem.groupIdentifier.getter()
{
  v1 = *(v0 + 336);

  return v1;
}

uint64_t FMIPItem.identifier.getter()
{
  v1 = *(v0 + 352);

  return v1;
}

uint64_t FMIPItem.productIdentifier.getter()
{
  v1 = *(v0 + 368);

  return v1;
}

id FMIPItem.location.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 384);
  v2 = *(v1 + 392);
  *(a1 + 8) = v2;
  return v2;
}

uint64_t FMIPItem.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPItem(0) + 56));

  return v1;
}

uint64_t FMIPItem.owner.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPItem(0) + 60));

  return v1;
}

double FMIPItem.partInfo.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPItem(0) + 64);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_24A76ED78(v4, v5, v6, v7);
}

double FMIPItem.role.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPItem(0) + 68);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return result;
}

uint64_t FMIPItem.serialNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPItem(0) + 72));

  return v1;
}

uint64_t FMIPItem.state.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FMIPItem(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t FMIPItem.systemVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPItem(0) + 80));

  return v1;
}

double FMIPItem.safeLocations.getter()
{
  type metadata accessor for FMIPItem(0);

  return result;
}

unint64_t sub_24A7A4F18(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      result = 0x5379726574746162;
      break;
    case 2:
      result = 0x696C696261706163;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x65644970756F7267;
      break;
    case 5:
      result = 0x696669746E656469;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x655079627261656ELL;
      break;
    case 11:
      result = 0x72656E776FLL;
      break;
    case 12:
      result = 0x6F666E4974726170;
      break;
    case 13:
      result = 1701605234;
      break;
    case 14:
      result = 0x754E6C6169726573;
      break;
    case 15:
      result = 0x736572616873;
      break;
    case 16:
      result = 0x65566D6574737973;
      break;
    case 17:
      result = 0x61636F4C65666173;
      break;
    case 18:
      result = 0x6E656E6F706D6F63;
      break;
    case 19:
      result = 0x54746375646F7270;
      break;
    case 20:
      v3 = 9;
      goto LABEL_17;
    case 21:
    case 24:
      v3 = 5;
LABEL_17:
      result = v3 | 0xD000000000000010;
      break;
    case 22:
      result = 0x49656C7070417369;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A7A51F4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A7A4F18(*a1);
  v5 = v4;
  if (v3 == sub_24A7A4F18(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7A527C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A7A4F18(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7A52E0(uint64_t a1)
{
  sub_24A7A4F18(*v1);
  sub_24A82D094();
}

uint64_t sub_24A7A5334(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A7A4F18(v2);
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A7A5394@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A7A9084(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A7A53C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A7A4F18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A7A53F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7A9084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7A542C(uint64_t a1)
{
  v2 = sub_24A7A82B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7A5468(uint64_t a1)
{
  v2 = sub_24A7A82B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FMIPItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v104 = sub_24A82CA34();
  v99 = *(v104 - 8);
  v3 = MEMORY[0x28223BE20](v104);
  v102 = &v92[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v98 = &v92[-v5];
  v6 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v103 = &v92[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v101 = &v92[-v9];
  updated = type metadata accessor for FMIPItemUpdateType(0);
  MEMORY[0x28223BE20](updated);
  v100 = &v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v105);
  v106 = &v92[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v92[-v13];
  v15 = sub_24A6BBA94(&qword_27EF5EA30, &qword_24A839DF8);
  v16 = *(v15 - 8);
  v107 = v15;
  v108 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v92[-v17];
  v19 = type metadata accessor for FMIPItem(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v92[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7A82B4();
  v22 = v112;
  sub_24A82DD64();
  if (v22)
  {
    sub_24A6876E8(a1);
    return;
  }

  v94 = v19;
  v95 = a1;
  v112 = v21;
  v109[295] = 0;
  sub_24A684C3C();
  v23 = v107;
  sub_24A82DA84();
  memcpy(v109, v110, 0x120uLL);
  nullsub_1();
  memcpy(v111, v109, 0x120uLL);
  v24 = v112;
  memcpy(v112 + 1, v111, 0x120uLL);
  v109[0] = 1;
  sub_24A7A834C();
  sub_24A82DA84();
  *(v24 + 296) = v110[0];
  v109[0] = 2;
  sub_24A70B3A4();
  sub_24A82DA84();
  *(v24 + 304) = *&v110[0];
  v109[0] = 3;
  sub_24A687EF0();
  sub_24A82DA84();
  v25 = *(&v110[0] + 1);
  v26 = *&v110[1];
  v27 = 256;
  if (!BYTE1(v110[0]))
  {
    v27 = 0;
  }

  v28 = v27 | LOBYTE(v110[0]);
  v29 = 0x10000;
  if (!BYTE2(v110[0]))
  {
    v29 = 0;
  }

  *(v24 + 312) = v28 | v29 | (BYTE3(v110[0]) << 24);
  *(v24 + 320) = v25;
  *(v24 + 328) = v26;
  LOBYTE(v110[0]) = 4;
  *(v24 + 336) = sub_24A82DA44();
  *(v24 + 344) = v30;
  LOBYTE(v110[0]) = 5;
  *(v24 + 352) = sub_24A82DA44();
  *(v24 + 360) = v31;
  LOBYTE(v110[0]) = 6;
  *(v24 + 368) = sub_24A82DA44();
  *(v24 + 376) = v37;
  v109[0] = 7;
  sub_24A82DA84();
  v38 = *(&v110[0] + 1);
  v39 = *&v110[1];
  v40 = 256;
  if (!BYTE1(v110[0]))
  {
    v40 = 0;
  }

  v41 = v40 | LOBYTE(v110[0]);
  v42 = 0x10000;
  if (!BYTE2(v110[0]))
  {
    v42 = 0;
  }

  *(v24 + 384) = v41 | v42 | (BYTE3(v110[0]) << 24);
  *(v24 + 392) = v38;
  *(v24 + 400) = v39;
  v43 = type metadata accessor for FMIPItemLostModeMetadata(0);
  LOBYTE(v110[0]) = 8;
  sub_24A678A1C(&qword_27EF5DC40, type metadata accessor for FMIPItemLostModeMetadata, &protocol conformance descriptor for FMIPItemLostModeMetadata);
  sub_24A82DA84();
  (*(*(v43 - 8) + 56))(v14, 0, 1, v43);
  v44 = v94;
  sub_24A70B7FC(v14, v24 + v94[13]);
  LOBYTE(v110[0]) = 9;
  v45 = sub_24A82DA44();
  v93 = 1;
  v46 = (v24 + v44[14]);
  *v46 = v45;
  v46[1] = v47;
  LOBYTE(v110[0]) = 11;
  v48 = sub_24A82DA44();
  v49 = (v24 + v44[15]);
  *v49 = v48;
  v49[1] = v50;
  sub_24A6BBA94(&qword_27EF5E9F8, &qword_24A839DA8);
  v109[0] = 12;
  sub_24A7A83A0();
  sub_24A82DA84();
  v51 = v110[2];
  v52 = v24 + v44[16];
  v53 = v110[1];
  *v52 = v110[0];
  *(v52 + 16) = v53;
  *(v52 + 32) = v51;
  v109[0] = 13;
  sub_24A7A8478();
  sub_24A82DA84();
  v54 = *&v110[2];
  v55 = v24 + v44[17];
  v56 = v110[1];
  *v55 = v110[0];
  *(v55 + 16) = v56;
  *(v55 + 32) = v54;
  LOBYTE(v110[0]) = 14;
  v57 = sub_24A82DA44();
  v58 = v94;
  v59 = v112;
  v60 = (v112 + v94[18]);
  *v60 = v57;
  v60[1] = v61;
  *(v59 + v58[19]) = 0;
  LOBYTE(v110[0]) = 16;
  v62 = sub_24A82DA44();
  v63 = (v112 + v94[20]);
  *v63 = v62;
  v63[1] = v64;
  LOBYTE(v110[0]) = 19;
  sub_24A678A1C(&qword_27EF5E550, type metadata accessor for FMIPProductType, &protocol conformance descriptor for FMIPProductType);
  v65 = v23;
  v66 = v18;
  sub_24A82DA84();
  sub_24A6A23F8(v106, v112 + v94[24], type metadata accessor for FMIPProductType);
  LOBYTE(v110[0]) = 20;
  *(v112 + v94[25]) = sub_24A82DA54() & 1;
  LOBYTE(v110[0]) = 21;
  *(v112 + v94[21]) = sub_24A82DA54() & 1;
  LOBYTE(v110[0]) = 22;
  *(v112 + v94[22]) = sub_24A82DA54() & 1;
  sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
  v109[0] = 17;
  sub_24A7A84CC();
  sub_24A82DA84();
  v105 = 0;
  *(v112 + v94[23]) = *&v110[0];
  v67 = v100;
  swift_storeEnumTagMultiPayload();
  v68 = v99;
  v69 = v101;
  v70 = v104;
  (*(v99 + 56))(v101, 1, 1, v104);
  type metadata accessor for FMIPItemUpdateContext(0);
  v71 = swift_allocObject();
  sub_24A7A9180(v67, v71 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
  v72 = v98;
  sub_24A82CA24();
  v73 = *(v68 + 32);
  v106 = v71;
  v74 = v71 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
  v75 = v73;
  v73(v74, v72, v70);
  v76 = v69;
  v77 = v103;
  sub_24A67E964(v76, v103, &qword_27EF5E0E0, &qword_24A836D90);
  v78 = *(v68 + 48);
  if (v78(v77, 1, v70) == 1)
  {
    sub_24A82CA24();
    sub_24A67F378(v101, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A7A91E8(v100, type metadata accessor for FMIPItemUpdateType);
    if (v78(v103, 1, v104) != 1)
    {
      sub_24A67F378(v103, &qword_27EF5E0E0, &qword_24A836D90);
    }
  }

  else
  {
    sub_24A67F378(v101, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A7A91E8(v100, type metadata accessor for FMIPItemUpdateType);
    v75(v102, v103, v104);
  }

  v79 = v106;
  v75((v106 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp), v102, v104);
  *v112 = v79;
  LOBYTE(v110[0]) = 24;
  v80 = v105;
  sub_24A82DA64();
  if (!v80)
  {
    *(v112 + v94[26]) = v81;
    v82 = FMIPItem.debugDescription.getter();
    v84 = v83;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v85 = sub_24A82CDC4();
    sub_24A6797D0(v85, qword_281518F88);

    v86 = sub_24A82CD94();
    v87 = sub_24A82D4C4();

    LODWORD(v106) = v87;
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v110[0] = v89;
      *v88 = 136315138;
      v90 = sub_24A68761C(v82, v84, v110);

      *(v88 + 4) = v90;
      _os_log_impl(&dword_24A675000, v86, v106, "FMIPItem: Initialized: %s", v88, 0xCu);
      sub_24A6876E8(v89);
      MEMORY[0x24C21E1D0](v89, -1, -1);
      MEMORY[0x24C21E1D0](v88, -1, -1);
    }

    else
    {
    }

    (*(v108 + 8))(v66, v65);
    v91 = v112;
    sub_24A7A9180(v112, v96, type metadata accessor for FMIPItem);
    sub_24A6876E8(v95);
    v35 = type metadata accessor for FMIPItem;
    v36 = v91;
    goto LABEL_19;
  }

  (*(v108 + 8))(v66, v65);
  sub_24A6876E8(v95);

  LODWORD(v106) = 1;
  LODWORD(v108) = 1;
  LODWORD(v107) = 1;
  memcpy(v111, v112 + 1, 0x120uLL);
  sub_24A67F378(v111, &unk_27EF5E0D0, &qword_24A8319E0);

  v33 = v112;

  v34 = v94;
  sub_24A67F378(v33 + v94[13], &unk_27EF5E100, &unk_24A839DB0);
  if (v93)
  {
  }

  v32 = v112;
  sub_24A7A8308(*(v112 + v34[16]), *(v112 + v34[16] + 8), *(v112 + v34[16] + 16), *(v112 + v34[16] + 24));

  if (v106)
  {

    if (v108)
    {
LABEL_11:

      if (v107)
      {
        goto LABEL_18;
      }

      return;
    }
  }

  else if (v108)
  {
    goto LABEL_11;
  }

  if (v107)
  {
LABEL_18:
    v35 = type metadata accessor for FMIPProductType;
    v36 = v32 + v34[24];
LABEL_19:
    sub_24A7A91E8(v36, v35);
  }
}

uint64_t FMIPItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5EA60, &qword_24A839E08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7A82B4();
  sub_24A82DD84();
  memcpy(v28, (v3 + 8), 0x120uLL);
  memcpy(v27, (v3 + 8), sizeof(v27));
  v30 = 0;
  sub_24A67E964(v28, v26, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6CCD3C();
  sub_24A82DB44();
  memcpy(v26, v27, sizeof(v26));
  sub_24A67F378(v26, &unk_27EF5E0D0, &qword_24A8319E0);
  if (!v2)
  {
    v23[0] = 1;
    sub_24A82DB34();
    v23[0] = 2;
    sub_24A82DB34();
    *v23 = *(v3 + 312);
    *&v23[8] = *(v3 + 320);
    v29 = 3;
    v9 = *&v23[8];
    sub_24A6BBA94(&qword_27EF5EA68, &qword_24A839E10);
    sub_24A7A8550();
    sub_24A82DB44();

    *v23 = *(v3 + 336);
    v29 = 4;
    sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
    sub_24A6CCEB0();
    sub_24A82DB44();
    v23[0] = 5;
    sub_24A82DB04();
    v23[0] = 6;
    sub_24A82DB04();
    v22 = type metadata accessor for FMIPItem(0);
    v23[0] = 21;
    sub_24A82DB14();
    v23[0] = 22;
    sub_24A82DB14();
    v23[0] = 20;
    sub_24A82DB14();
    *v23 = *(v3 + 384);
    *&v23[8] = *(v3 + 392);
    v29 = 7;
    v11 = *&v23[8];
    sub_24A82DB44();

    v23[0] = 8;
    sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    sub_24A714F34();
    sub_24A82DB44();
    v23[0] = 9;
    sub_24A82DB04();
    v23[0] = 11;
    sub_24A82DB04();
    v12 = v3 + v22[16];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    *v23 = *v12;
    *&v23[8] = v13;
    *&v23[16] = v14;
    v24 = v15;
    LOBYTE(v25) = v16;
    v29 = 12;
    sub_24A76ED78(*v23, v13, v14, v15);
    sub_24A6BBA94(&qword_27EF5E9F8, &qword_24A839DA8);
    sub_24A7A85D4();
    sub_24A82DB44();
    sub_24A7A8308(*v23, *&v23[8], *&v23[16], v24);
    v23[0] = 19;
    type metadata accessor for FMIPProductType(0);
    sub_24A678A1C(&qword_27EF5E588, type metadata accessor for FMIPProductType, &protocol conformance descriptor for FMIPProductType);
    sub_24A82DB44();
    v17 = v3 + v22[17];
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    v20 = *(v17 + 32);
    *v23 = *v17;
    *&v23[16] = v19;
    v24 = v18;
    v25 = v20;
    v29 = 13;
    sub_24A7A86AC();

    sub_24A82DB44();

    v23[0] = 14;
    sub_24A82DB04();
    v23[0] = 16;
    sub_24A82DB04();
    *v23 = *(v3 + v22[23]);
    v29 = 17;
    sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
    sub_24A7A8700();
    sub_24A82DB44();
    v23[0] = 24;
    sub_24A82DB24();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMIPItem.hashValue.getter()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A7A7034()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A7A7080(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t SPBeaconTaskState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x656C64692ELL;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x6465756575712ELL;
      }

      return 0x656C646E61686E55;
    }

    return 0x726F7272652ELL;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 0x676E69646E65702ELL;
      }

      return 0x656C646E61686E55;
    }

    return 0x676E696E6E75722ELL;
  }
}

uint64_t sub_24A7A71A0()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      return 0x656C64692ELL;
    }

    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return 0x6465756575712ELL;
      }

      return 0x656C646E61686E55;
    }

    return 0x726F7272652ELL;
  }

  else
  {
    if (v1 == -1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (v1)
    {
      if (v1 == 1)
      {
        return 0x676E69646E65702ELL;
      }

      return 0x656C646E61686E55;
    }

    return 0x676E696E6E75722ELL;
  }
}

uint64_t sub_24A7A7284(void (*a1)(uint64_t))
{
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  sub_24A678A1C(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v7 = sub_24A82DB84();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t _s8FMIPCore12FMIPPartInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      v9 = v2 == v6 && v3 == v5;
      if (v9 || (sub_24A82DC04() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_13:

  return sub_24A7D5E68(v4, v7);
}

BOOL _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemLostModeMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v90[-v9];
  v11 = sub_24A6BBA94(&qword_27EF5DDC0, &unk_24A83A9D0);
  MEMORY[0x28223BE20](v11);
  v13 = &v90[-v12];
  memcpy(v103, (a1 + 8), sizeof(v103));
  memcpy(v104, (a2 + 8), sizeof(v104));
  memcpy(v102, (a1 + 8), 0x120uLL);
  memcpy(&v102[36], (a2 + 8), 0x120uLL);
  memcpy(v105, (a1 + 8), 0x120uLL);
  if (sub_24A6921A8(v105) == 1)
  {
    memcpy(v100, &v102[36], 0x120uLL);
    if (sub_24A6921A8(v100) == 1)
    {
      v94 = v5;
      v95 = v13;
      memcpy(v101, v102, sizeof(v101));
      sub_24A67E964(v103, v99, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67E964(v104, v99, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67F378(v101, &unk_27EF5E0D0, &qword_24A8319E0);
      goto LABEL_10;
    }

    sub_24A67E964(v103, v101, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v104, v101, &unk_27EF5E0D0, &qword_24A8319E0);
LABEL_7:
    memcpy(v100, v102, sizeof(v100));
    v14 = &qword_27EF5D280;
    v15 = &unk_24A831EC0;
    v16 = v100;
LABEL_8:
    sub_24A67F378(v16, v14, v15);
    return 0;
  }

  memcpy(v101, v102, sizeof(v101));
  memcpy(v99, v102, sizeof(v99));
  memcpy(v100, &v102[36], 0x120uLL);
  if (sub_24A6921A8(v100) == 1)
  {
    memcpy(v98, v102, sizeof(v98));
    sub_24A67E964(v103, v97, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v104, v97, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v101, v97, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A6CD854(v98);
    goto LABEL_7;
  }

  v94 = v5;
  v95 = v13;
  memcpy(v98, &v102[36], sizeof(v98));
  v17 = _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(v99, v98);
  memcpy(v96, v98, sizeof(v96));
  sub_24A67E964(v103, v97, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67E964(v104, v97, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67E964(v101, v97, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6CD854(v96);
  memcpy(v97, v99, sizeof(v97));
  sub_24A6CD854(v97);
  memcpy(v98, v102, sizeof(v98));
  sub_24A67F378(v98, &unk_27EF5E0D0, &qword_24A8319E0);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (*(a1 + 296) != *(a2 + 296) || *(a1 + 304) != *(a2 + 304))
  {
    return 0;
  }

  v18 = *(a1 + 320);
  v19 = *(a2 + 320);
  if (v18)
  {
    v20 = *(a2 + 312);
    v21 = *(a2 + 328);
    v22 = *(a1 + 328);
    v102[0] = *(a1 + 312);
    *&v102[1] = v18;
    v102[2] = v22;
    if (!v19)
    {
LABEL_38:
      v28 = v18;
      v27 = 0;
      goto LABEL_39;
    }

    LOWORD(v100[0]) = v20 & 0x101;
    BYTE2(v100[0]) = BYTE2(v20) & 1;
    BYTE3(v100[0]) = BYTE3(v20);
    *&v100[1] = v19;
    v100[2] = v21;
    v23 = v18;
    v24 = v19;
    v25 = v23;
    v26 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v102, v100);

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
LABEL_17:
    v27 = v19;
    v28 = 0;
LABEL_39:

    return 0;
  }

  v29 = *(a1 + 344);
  v30 = *(a2 + 344);
  if (v29)
  {
    if (!v30 || (*(a1 + 336) != *(a2 + 336) || v29 != v30) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  if ((*(a1 + 352) != *(a2 + 352) || *(a1 + 360) != *(a2 + 360)) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 368) != *(a2 + 368) || *(a1 + 376) != *(a2 + 376)) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v31 = type metadata accessor for FMIPItem(0);
  if (*(a1 + v31[21]) != *(a2 + v31[21]) || *(a1 + v31[22]) != *(a2 + v31[22]) || *(a1 + v31[25]) != *(a2 + v31[25]))
  {
    return 0;
  }

  v18 = *(a1 + 392);
  v19 = *(a2 + 392);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_42;
    }

    goto LABEL_17;
  }

  v32 = *(a2 + 384);
  v33 = *(a2 + 400);
  v34 = *(a1 + 400);
  v102[0] = *(a1 + 384);
  *&v102[1] = v18;
  v102[2] = v34;
  if (!v19)
  {
    goto LABEL_38;
  }

  LOWORD(v100[0]) = v32 & 0x101;
  BYTE2(v100[0]) = BYTE2(v32) & 1;
  BYTE3(v100[0]) = BYTE3(v32);
  *&v100[1] = v19;
  v100[2] = v33;
  v35 = v31;
  v36 = v18;
  v37 = v19;
  v38 = v36;
  v39 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v102, v100);

  v31 = v35;
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v93 = v31;
  v41 = v31[13];
  v42 = *(v11 + 48);
  v43 = v95;
  sub_24A67E964(a1 + v41, v95, &unk_27EF5E100, &unk_24A839DB0);
  v44 = a2 + v41;
  v45 = v42;
  sub_24A67E964(v44, v43 + v42, &unk_27EF5E100, &unk_24A839DB0);
  v46 = *(v94 + 48);
  if (v46(v43, 1, v4) == 1)
  {
    if (v46(v43 + v45, 1, v4) == 1)
    {
LABEL_44:
      sub_24A67F378(v43, &unk_27EF5E100, &unk_24A839DB0);
      goto LABEL_45;
    }

    goto LABEL_57;
  }

  sub_24A67E964(v43, v10, &unk_27EF5E100, &unk_24A839DB0);
  if (v46(v43 + v45, 1, v4) == 1)
  {
    sub_24A7A91E8(v10, type metadata accessor for FMIPItemLostModeMetadata);
LABEL_57:
    v14 = &qword_27EF5DDC0;
    v15 = &unk_24A83A9D0;
LABEL_69:
    v16 = v43;
    goto LABEL_8;
  }

  sub_24A6A23F8(v43 + v45, v7, type metadata accessor for FMIPItemLostModeMetadata);
  if ((*v10 != *v7 || v10[1] != v7[1]) && (sub_24A82DC04() & 1) == 0 || (v10[2] != v7[2] || v10[3] != v7[3]) && (sub_24A82DC04() & 1) == 0 || (sub_24A82C9E4() & 1) == 0)
  {
    sub_24A7A91E8(v7, type metadata accessor for FMIPItemLostModeMetadata);
    sub_24A7A91E8(v10, type metadata accessor for FMIPItemLostModeMetadata);
    v14 = &unk_27EF5E100;
    v15 = &unk_24A839DB0;
    goto LABEL_69;
  }

  v67 = *(v4 + 28);
  v68 = *(v10 + v67);
  v69 = *(v10 + v67 + 8);
  v70 = (v7 + v67);
  if (v68 == *v70 && v69 == v70[1])
  {
    sub_24A7A91E8(v7, type metadata accessor for FMIPItemLostModeMetadata);
    sub_24A7A91E8(v10, type metadata accessor for FMIPItemLostModeMetadata);
    goto LABEL_44;
  }

  v73 = sub_24A82DC04();
  sub_24A7A91E8(v7, type metadata accessor for FMIPItemLostModeMetadata);
  sub_24A7A91E8(v10, type metadata accessor for FMIPItemLostModeMetadata);
  sub_24A67F378(v43, &unk_27EF5E100, &unk_24A839DB0);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v47 = v93[14];
  v48 = *(a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  if ((v48 != *v50 || v49 != v50[1]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v51 = v93[15];
  v52 = *(a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  if ((v52 != *v54 || v53 != v54[1]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v55 = v93[16];
  v56 = *(a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = *(a1 + v55 + 24);
  v92 = *(a1 + v55 + 16);
  v94 = v58;
  LODWORD(v95) = *(a1 + v55 + 32);
  v59 = a2 + v55;
  v60 = *v59;
  v61 = *(v59 + 8);
  v62 = *(v59 + 16);
  v63 = *(v59 + 24);
  v91 = *(v59 + 32);
  if (v57)
  {
    *&v102[0] = v56;
    *&v102[1] = v57;
    *&v102[2] = v92;
    *&v102[3] = v94;
    LOBYTE(v102[4]) = v95;
    if (v61)
    {
      *&v100[0] = v60;
      *&v100[1] = v61;
      *&v100[2] = v62;
      *&v100[3] = v63;
      LOBYTE(v100[4]) = v91;
      sub_24A76ED78(v56, v57, v92, v94);
      sub_24A76ED78(v60, v61, v62, v63);
      v64 = v92;
      v65 = v94;
      sub_24A76ED78(v56, v57, v92, v94);
      v66 = _s8FMIPCore12FMIPPartInfoV2eeoiySbAC_ACtFZ_0(v102, v100);

      sub_24A7A8308(v56, v57, v64, v65);
      if (v66)
      {
        goto LABEL_77;
      }

      return 0;
    }

    v71 = v92;
    v72 = v94;
    sub_24A76ED78(v56, v57, v92, v94);
    sub_24A76ED78(v60, 0, v62, v63);
    sub_24A76ED78(v56, v57, v71, v72);

LABEL_73:
    sub_24A7A8308(v56, v57, v92, v94);
    sub_24A7A8308(v60, v61, v62, v63);
    return 0;
  }

  sub_24A76ED78(v56, 0, v92, v94);
  if (v61)
  {
    sub_24A76ED78(v60, v61, v62, v63);
    goto LABEL_73;
  }

  sub_24A76ED78(v60, 0, v62, v63);
  sub_24A7A8308(v56, 0, v92, v94);
LABEL_77:
  if (!_s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(a1 + v93[24], a2 + v93[24]))
  {
    return 0;
  }

  v74 = v93[17];
  v75 = (a1 + v74);
  v76 = *(a1 + v74);
  v77 = (a2 + v74);
  if (v76 != *v77)
  {
    return 0;
  }

  v78 = v75[1];
  v79 = v75[2];
  v80 = v77[1];
  v81 = v77[2];
  if ((v75[3] != v77[3] || v75[4] != v77[4]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if ((v78 != v80 || v79 != v81) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  v82 = v93[18];
  v83 = *(a1 + v82);
  v84 = *(a1 + v82 + 8);
  v85 = (a2 + v82);
  if ((v83 != *v85 || v84 != v85[1]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v93[19]) != *(a2 + v93[19]))
  {
    return 0;
  }

  v86 = v93[20];
  v87 = *(a1 + v86);
  v88 = *(a1 + v86 + 8);
  v89 = (a2 + v86);
  if ((v87 != *v89 || v88 != v89[1]) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if ((sub_24A6A428C(*(a1 + v93[23]), *(a2 + v93[23])) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + v93[26]) == *(a2 + v93[26]);
}

BOOL sub_24A7A8134(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 partIdentifier];
  v4 = v2[3];
  v5 = v2[4];
  sub_24A67DF6C(v2, v4);
  return (*(v5 + 64))(v4, v5) == v3;
}

unint64_t sub_24A7A81B8()
{
  result = qword_27EF5EA10;
  if (!qword_27EF5EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA10);
  }

  return result;
}

unint64_t sub_24A7A820C()
{
  result = qword_27EF5EA18;
  if (!qword_27EF5EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA18);
  }

  return result;
}

unint64_t sub_24A7A8260()
{
  result = qword_27EF5EA28;
  if (!qword_27EF5EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA28);
  }

  return result;
}

unint64_t sub_24A7A82B4()
{
  result = qword_27EF5EA38;
  if (!qword_27EF5EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA38);
  }

  return result;
}

void sub_24A7A8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_24A7A834C()
{
  result = qword_27EF5EA40;
  if (!qword_27EF5EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA40);
  }

  return result;
}

unint64_t sub_24A7A83A0()
{
  result = qword_27EF5EA48;
  if (!qword_27EF5EA48)
  {
    sub_24A6CCDC0(&qword_27EF5E9F8, &qword_24A839DA8);
    sub_24A7A8424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA48);
  }

  return result;
}

unint64_t sub_24A7A8424()
{
  result = qword_27EF5EA50;
  if (!qword_27EF5EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA50);
  }

  return result;
}

unint64_t sub_24A7A8478()
{
  result = qword_27EF5EA58;
  if (!qword_27EF5EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA58);
  }

  return result;
}

unint64_t sub_24A7A84CC()
{
  result = qword_27EF5DFF8;
  if (!qword_27EF5DFF8)
  {
    sub_24A6CCDC0(&qword_27EF5DFF0, &qword_24A839E00);
    sub_24A689824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DFF8);
  }

  return result;
}

unint64_t sub_24A7A8550()
{
  result = qword_2815144B8;
  if (!qword_2815144B8)
  {
    sub_24A6CCDC0(&qword_27EF5EA68, &qword_24A839E10);
    sub_24A6CCE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144B8);
  }

  return result;
}

unint64_t sub_24A7A85D4()
{
  result = qword_27EF5EA70;
  if (!qword_27EF5EA70)
  {
    sub_24A6CCDC0(&qword_27EF5E9F8, &qword_24A839DA8);
    sub_24A7A8658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA70);
  }

  return result;
}

unint64_t sub_24A7A8658()
{
  result = qword_27EF5EA78;
  if (!qword_27EF5EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA78);
  }

  return result;
}

unint64_t sub_24A7A86AC()
{
  result = qword_27EF5EA80;
  if (!qword_27EF5EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA80);
  }

  return result;
}

unint64_t sub_24A7A8700()
{
  result = qword_27EF5E060;
  if (!qword_27EF5E060)
  {
    sub_24A6CCDC0(&qword_27EF5DFF0, &qword_24A839E00);
    sub_24A76EA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E060);
  }

  return result;
}

unint64_t sub_24A7A8788()
{
  result = qword_27EF5EA88;
  if (!qword_27EF5EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA88);
  }

  return result;
}

unint64_t sub_24A7A87E0()
{
  result = qword_27EF5EA90;
  if (!qword_27EF5EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA90);
  }

  return result;
}

unint64_t sub_24A7A8834()
{
  result = qword_27EF5EA98;
  if (!qword_27EF5EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EA98);
  }

  return result;
}

unint64_t sub_24A7A888C()
{
  result = qword_27EF5EAA0;
  if (!qword_27EF5EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAA0);
  }

  return result;
}

unint64_t sub_24A7A88E4()
{
  result = qword_27EF5EAA8;
  if (!qword_27EF5EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAA8);
  }

  return result;
}

unint64_t sub_24A7A893C()
{
  result = qword_27EF5EAB0;
  if (!qword_27EF5EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAB0);
  }

  return result;
}

unint64_t sub_24A7A8990()
{
  result = qword_27EF5EAB8;
  if (!qword_27EF5EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAB8);
  }

  return result;
}

unint64_t sub_24A7A89E8()
{
  result = qword_27EF5EAC0;
  if (!qword_27EF5EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAC0);
  }

  return result;
}

unint64_t sub_24A7A8A40()
{
  result = qword_27EF5EAC8;
  if (!qword_27EF5EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAC8);
  }

  return result;
}

unint64_t sub_24A7A8A94()
{
  result = qword_27EF5EAD0;
  if (!qword_27EF5EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EAD0);
  }

  return result;
}

__n128 sub_24A7A8B18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A7A8B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24A7A8B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A7A8D64()
{
  result = qword_27EF5EB00;
  if (!qword_27EF5EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB00);
  }

  return result;
}

unint64_t sub_24A7A8DBC()
{
  result = qword_27EF5EB08;
  if (!qword_27EF5EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB08);
  }

  return result;
}

unint64_t sub_24A7A8E14()
{
  result = qword_27EF5EB10;
  if (!qword_27EF5EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB10);
  }

  return result;
}

unint64_t sub_24A7A8E6C()
{
  result = qword_27EF5EB18;
  if (!qword_27EF5EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB18);
  }

  return result;
}

unint64_t sub_24A7A8EC4()
{
  result = qword_27EF5EB20;
  if (!qword_27EF5EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB20);
  }

  return result;
}

unint64_t sub_24A7A8F1C()
{
  result = qword_27EF5EB28;
  if (!qword_27EF5EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB28);
  }

  return result;
}

uint64_t sub_24A7A8F70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24A7A9084(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82DC24();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A7A90D8()
{
  result = qword_27EF5EB30;
  if (!qword_27EF5EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB30);
  }

  return result;
}

unint64_t sub_24A7A912C()
{
  result = qword_27EF5EB38;
  if (!qword_27EF5EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB38);
  }

  return result;
}

uint64_t sub_24A7A9180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7A91E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FMIPHawkeyeProductInformation.init(beacon:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  sub_24A67DF6C(a1, v7);
  v9 = (*(v8 + 128))(v7, v8);
  if (v9)
  {
    v10 = v9;
    v50 = a2;
    v11 = a1[3];
    v12 = a1[4];
    sub_24A67DF6C(a1, v11);
    v13 = (*(v12 + 136))(v11, v12);
    v14 = a1[3];
    v15 = a1[4];
    sub_24A67DF6C(a1, v14);
    v16 = (*(v15 + 144))(v14, v15);
    v17 = a1[3];
    v18 = a1[4];
    sub_24A67DF6C(a1, v17);
    v19 = (*(v18 + 32))(v17, v18);
    v20 = sub_24A82CFC4();
    v22 = v21;
    if (v20 == sub_24A82CFC4() && v22 == v23)
    {
      v49 = 1;
    }

    else
    {
      v49 = sub_24A82DC04();
    }

    *v6 = v13;
    *(v6 + 1) = v16;
    v27 = [v10 modelName];
    v28 = sub_24A82CFC4();
    v30 = v29;

    *(v6 + 2) = v28;
    *(v6 + 3) = v30;
    v31 = [v10 manufacturerName];
    v32 = sub_24A82CFC4();
    v34 = v33;

    *(v6 + 4) = v32;
    *(v6 + 5) = v34;
    v35 = [v10 appBundleIdentifier];
    if (v35)
    {
      v36 = v35;
      v37 = sub_24A82CFC4();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    *(v6 + 6) = v37;
    *(v6 + 7) = v39;
    [v10 txPower];
    *(v6 + 8) = v40;
    v41 = [v10 defaultHeroIcon];
    sub_24A82C884();

    v42 = [v10 defaultHeroIcon2x];
    sub_24A82C884();

    v43 = [v10 defaultHeroIcon3x];
    sub_24A82C884();

    v44 = [v10 defaultListIcon];
    sub_24A82C884();

    v45 = [v10 defaultListIcon2x];
    sub_24A82C884();

    v46 = [v10 defaultListIcon3x];
    sub_24A82C884();

    LOWORD(v46) = [v10 capabilities];
    v6[72] = (v46 & 0x1000) != 0;
    v6[73] = v49 & 1;
    v47 = v50;
    sub_24A7AB624(v6, v50);
    (*(v51 + 56))(v47, 0, 1, v4);
    return sub_24A6876E8(a1);
  }

  else
  {
    sub_24A6876E8(a1);
    v25 = *(v51 + 56);

    return v25(a2, 1, 1, v4);
  }
}

{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 productInformation];
  if (v7)
  {
    v8 = v7;
    v44 = a2;
    SPUnknownBeacon.vendorId.getter();
    v10 = v9;
    SPUnknownBeacon.productId.getter();
    v12 = v11;
    v13 = [a1 type];
    v14 = sub_24A82CFC4();
    v16 = v15;
    if (v14 == sub_24A82CFC4() && v16 == v17)
    {
      v43 = 1;
    }

    else
    {
      v43 = sub_24A82DC04();
    }

    *v6 = v10;
    *(v6 + 1) = v12;
    v21 = [v8 modelName];
    v22 = sub_24A82CFC4();
    v24 = v23;

    *(v6 + 2) = v22;
    *(v6 + 3) = v24;
    v25 = [v8 manufacturerName];
    v26 = sub_24A82CFC4();
    v28 = v27;

    *(v6 + 4) = v26;
    *(v6 + 5) = v28;
    v29 = [v8 appBundleIdentifier];
    if (v29)
    {
      v30 = v29;
      v31 = sub_24A82CFC4();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    *(v6 + 6) = v31;
    *(v6 + 7) = v33;
    [v8 txPower];
    *(v6 + 8) = v34;
    v35 = [v8 defaultHeroIcon];
    sub_24A82C884();

    v36 = [v8 defaultHeroIcon2x];
    sub_24A82C884();

    v37 = [v8 defaultHeroIcon3x];
    sub_24A82C884();

    v38 = [v8 defaultListIcon];
    sub_24A82C884();

    v39 = [v8 defaultListIcon2x];
    sub_24A82C884();

    v40 = [v8 defaultListIcon3x];
    sub_24A82C884();

    LOWORD(v40) = [v8 capabilities];
    v6[72] = (v40 & 0x1000) != 0;
    v6[73] = v43 & 1;
    v41 = v44;
    sub_24A7AB624(v6, v44);
    return (*(v45 + 56))(v41, 0, 1, v4);
  }

  else
  {

    v19 = *(v45 + 56);

    return v19(a2, 1, 1, v4);
  }
}

void FMIPHawkeyeProductInformation.init(productInformation:vendorIdentifier:productIdentifier:requiresAdditionalConnectionTime:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3;
  v8 = [a1 modelName];
  v9 = sub_24A82CFC4();
  v11 = v10;

  *(a5 + 16) = v9;
  *(a5 + 24) = v11;
  v12 = [a1 manufacturerName];
  v13 = sub_24A82CFC4();
  v15 = v14;

  *(a5 + 32) = v13;
  *(a5 + 40) = v15;
  v16 = [a1 appBundleIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_24A82CFC4();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(a5 + 48) = v18;
  *(a5 + 56) = v20;
  [a1 txPower];
  *(a5 + 64) = v21;
  v22 = [a1 defaultHeroIcon];
  type metadata accessor for FMIPHawkeyeProductInformation(0);
  sub_24A82C884();

  v23 = [a1 defaultHeroIcon2x];
  sub_24A82C884();

  v24 = [a1 defaultHeroIcon3x];
  sub_24A82C884();

  v25 = [a1 defaultListIcon];
  sub_24A82C884();

  v26 = [a1 defaultListIcon2x];
  sub_24A82C884();

  v27 = [a1 defaultListIcon3x];
  sub_24A82C884();

  v28 = [a1 capabilities];
  *(a5 + 72) = (v28 & 0x1000) != 0;
  *(a5 + 73) = a4 & 1;
}

uint64_t FMIPHawkeyeProductInformation.modelName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPHawkeyeProductInformation.manufacturerName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FMIPHawkeyeProductInformation.appBundleIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FMIPHawkeyeProductInformation.identifier.getter()
{
  v2 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](95, 0xE100000000000000);
  v0 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v0);

  return v2;
}

void SPUnknownBeacon.vendorId.getter()
{
  v1 = sub_24A82C4A4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = [v0 metadata];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 productData];

    v5 = sub_24A82C904();
    v7 = v6;

    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
LABEL_13:
        sub_24A82C924();
        sub_24A82C494();
        sub_24A7AB688();
        sub_24A82D924();
        sub_24A67E0F0(v5, v7);
        return;
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      v11 = __OFSUB__(v9, v10);
      v12 = v9 - v10;
      if (!v11)
      {
LABEL_11:
        if (v12 < -1)
        {
          __break(1u);
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v8)
    {
      goto LABEL_13;
    }

    LODWORD(v12) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      return;
    }

    v12 = v12;
    goto LABEL_11;
  }
}

void SPUnknownBeacon.productId.getter()
{
  v1 = sub_24A82C4A4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = [v0 metadata];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 productData];

    v5 = sub_24A82C904();
    v7 = v6;

    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
LABEL_12:
        sub_24A82C924();
        sub_24A82C494();
        sub_24A7AB688();
        sub_24A82D924();
        sub_24A67E0F0(v5, v7);
        return;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      v9 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        v10 = v9 / 2;
        goto LABEL_10;
      }

      __break(1u);
    }

    else
    {
      if (!v8)
      {
        v9 = BYTE6(v7);
        v10 = BYTE6(v7) >> 1;
        goto LABEL_10;
      }

      v13 = HIDWORD(v5) - v5;
      if (!__OFSUB__(HIDWORD(v5), v5))
      {
        v9 = v13;
        v10 = (v13 + (v13 >> 31)) >> 1;
LABEL_10:
        if (v9 < v10)
        {
          __break(1u);
        }

        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_24A7AA210(char a1)
{
  result = 0x6D614E6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x50616E6E65746E61;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0x48746C7561666564;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x4C746C7561666564;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_24A7AA3B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A7ABDE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A7AA3EC(uint64_t a1)
{
  v2 = sub_24A7AB8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7AA428(uint64_t a1)
{
  v2 = sub_24A7AB8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPHawkeyeProductInformation.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5EB48, &qword_24A83AA00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7AB8B4();
  sub_24A82DD84();
  v8[31] = 0;
  sub_24A82DB34();
  if (!v1)
  {
    v8[30] = 1;
    sub_24A82DB34();
    v8[29] = 2;
    sub_24A82DB04();
    v8[28] = 3;
    sub_24A82DB04();
    v8[27] = 4;
    sub_24A82DAD4();
    v8[26] = 5;
    sub_24A82DB24();
    v8[25] = 6;
    sub_24A82DB14();
    v8[24] = 7;
    sub_24A82DB14();
    type metadata accessor for FMIPHawkeyeProductInformation(0);
    v8[15] = 8;
    sub_24A82C8B4();
    sub_24A7ABA60(&qword_27EF5EB58, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24A82DB44();
    v8[14] = 9;
    sub_24A82DB44();
    v8[13] = 10;
    sub_24A82DB44();
    v8[12] = 11;
    sub_24A82DB44();
    v8[11] = 12;
    sub_24A82DB44();
    v8[10] = 13;
    sub_24A82DB44();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FMIPHawkeyeProductInformation.hash(into:)(uint64_t a1)
{
  MEMORY[0x24C21D5E0](*v1);
  MEMORY[0x24C21D5E0](*(v1 + 8));
  sub_24A82D094();
  sub_24A82D094();
  if (*(v1 + 56))
  {
    sub_24A82DCE4();
    sub_24A82D094();
  }

  else
  {
    sub_24A82DCE4();
  }

  v2 = *(v1 + 64);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x24C21D610](*&v2);
  sub_24A82DCE4();
  sub_24A82DCE4();
  type metadata accessor for FMIPHawkeyeProductInformation(0);
  sub_24A82C8B4();
  sub_24A7ABA60(&qword_27EF5CCD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24A82CF64();
  sub_24A82CF64();
  sub_24A82CF64();
  sub_24A82CF64();
  sub_24A82CF64();
  return sub_24A82CF64();
}

uint64_t FMIPHawkeyeProductInformation.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPHawkeyeProductInformation.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t FMIPHawkeyeProductInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_24A82C8B4();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v51 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v51 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v62 = sub_24A6BBA94(&qword_27EF5EB60, &qword_24A83AA08);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v19 = &v51 - v18;
  v20 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v64 = a1;
  sub_24A67DF6C(a1, v23);
  sub_24A7AB8B4();
  v63 = v19;
  v24 = v65;
  sub_24A82DD64();
  if (v24)
  {
    v65 = v24;
    return sub_24A6876E8(v64);
  }

  v25 = v17;
  v53 = v12;
  v54 = v20;
  v27 = v60;
  v26 = v61;
  v79 = 0;
  v28 = v62;
  *v22 = sub_24A82DA74();
  v78 = 1;
  *(v22 + 1) = sub_24A82DA74();
  v77 = 2;
  *(v22 + 2) = sub_24A82DA44();
  *(v22 + 3) = v30;
  v76 = 3;
  *(v22 + 4) = sub_24A82DA44();
  *(v22 + 5) = v31;
  v75 = 4;
  v52 = 0;
  *(v22 + 6) = sub_24A82DA04();
  *(v22 + 7) = v32;
  v74 = 5;
  sub_24A82DA64();
  *(v22 + 8) = v33;
  v73 = 6;
  v22[72] = sub_24A82DA54() & 1;
  v72 = 7;
  v43 = sub_24A82DA54();
  v65 = 0;
  v22[73] = v43 & 1;
  v71 = 8;
  sub_24A7ABA60(&qword_27EF5EB68, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v44 = v65;
  sub_24A82DA84();
  v65 = v44;
  if (v44)
  {
    (*(v27 + 8))(v63, v28);
    v34 = 0;
    v35 = 0;
    LODWORD(v63) = 0;
    v36 = 0;
  }

  else
  {
    v45 = *(v58 + 32);
    v45(&v22[v54[12]], v25, v59);
    v70 = 9;
    v46 = v65;
    sub_24A82DA84();
    v65 = v46;
    if (v46)
    {
      (*(v27 + 8))(v63, v62);
      v35 = 0;
      LODWORD(v63) = 0;
      v36 = 0;
      v34 = 1;
    }

    else
    {
      v45(&v22[v54[13]], v15, v59);
      v69 = 10;
      v47 = v65;
      sub_24A82DA84();
      v65 = v47;
      if (v47)
      {
        (*(v27 + 8))(v63, v62);
        LODWORD(v63) = 0;
        v36 = 0;
        v34 = 1;
        v35 = 1;
      }

      else
      {
        v45(&v22[v54[14]], v53, v59);
        v68 = 11;
        v48 = v65;
        sub_24A82DA84();
        v65 = v48;
        if (v48)
        {
          (*(v27 + 8))(v63, v62);
          v36 = 0;
          v34 = 1;
          v35 = 1;
          LODWORD(v63) = 1;
        }

        else
        {
          v45(&v22[v54[15]], v57, v59);
          v67 = 12;
          v49 = v65;
          sub_24A82DA84();
          v65 = v49;
          if (!v49)
          {
            v45(&v22[v54[16]], v26, v59);
            v66 = 13;
            v50 = v65;
            sub_24A82DA84();
            v65 = v50;
            if (!v50)
            {
              (*(v27 + 8))(v63, v62);
              v45(&v22[v54[17]], v56, v59);
              sub_24A7AB908(v22, v55);
              sub_24A6876E8(v64);
              return sub_24A715F34(v22);
            }

            (*(v27 + 8))(v63, v62);
            sub_24A6876E8(v64);

            v42 = 1;
            LODWORD(v64) = 1;
            LODWORD(v63) = 1;
            LOBYTE(v35) = 1;
            v39 = v58;
            v38 = v59;
            goto LABEL_13;
          }

          (*(v27 + 8))(v63, v62);
          v34 = 1;
          v35 = 1;
          LODWORD(v63) = 1;
          v36 = 1;
        }
      }
    }
  }

  v37 = v52;
  sub_24A6876E8(v64);

  v39 = v58;
  v38 = v59;
  if (!v37)
  {
  }

  if (v34)
  {
    LODWORD(v64) = v36;
    v42 = 0;
LABEL_13:
    v41 = v54;
    v40 = *(v39 + 8);
    result = v40(&v22[v54[12]], v38);
    if (v35)
    {
      result = v40(&v22[v41[13]], v38);
      if (v63)
      {
        LOBYTE(v36) = v64;
        goto LABEL_16;
      }

      v36 = v64;
LABEL_25:
      if (v36)
      {
        v40 = *(v39 + 8);
        result = v40(&v22[v41[15]], v38);
        if (v42)
        {
          return v40(&v22[v41[16]], v38);
        }

        return result;
      }

      goto LABEL_28;
    }

    v36 = v64;
LABEL_20:
    v41 = v54;
    if (v63)
    {
      v40 = *(v39 + 8);
      result = v40(&v22[v54[14]], v38);
      if ((v36 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_22:
      result = v40(&v22[v41[15]], v38);
      if (v42)
      {
        return v40(&v22[v41[16]], v38);
      }

      return result;
    }

    goto LABEL_25;
  }

  if (!v35)
  {
    v42 = 0;
    goto LABEL_20;
  }

  v40 = *(v39 + 8);
  v41 = v54;
  result = v40(&v22[v54[13]], v38);
  v42 = 0;
  if ((v63 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  result = v40(&v22[v41[14]], v38);
  if (v36)
  {
    goto LABEL_22;
  }

LABEL_28:
  if (v42)
  {
    v40 = *(v39 + 8);
    return v40(&v22[v41[16]], v38);
  }

  return result;
}

uint64_t sub_24A7AB3E8()
{
  sub_24A82DCC4();
  FMIPHawkeyeProductInformation.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7AB42C(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPHawkeyeProductInformation.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t FMIPHawkeyeProductInformation.AssetScale.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPHawkeyeProductInformation.AssetType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPHawkeyeProductInformation.assetURL(for:scale:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v8 = sub_24A82C8B4();
  v9 = *(*(v8 - 8) + 16);
  v10 = 60;
  if (v5)
  {
    v10 = 48;
  }

  v11 = v3 + *(v7 + 4 * v6 + v10);

  return v9(a3, v11, v8);
}

uint64_t sub_24A7AB624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A7AB688()
{
  result = qword_27EF5EB40;
  if (!qword_27EF5EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB40);
  }

  return result;
}

uint64_t _s8FMIPCore29FMIPHawkeyeProductInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  v3 = a2;
  v4 = a1;
  if (!v2)
  {
    v5 = sub_24A82DC04();
    a2 = v3;
    v6 = v5;
    a1 = v4;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v7 = sub_24A82DC04();
    a2 = v3;
    v8 = v7;
    a1 = v4;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v9 != v10)
    {
      v11 = sub_24A82DC04();
      a2 = v3;
      v12 = v11;
      a1 = v4;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  if (*(a1 + 73) != *(a2 + 73))
  {
    return 0;
  }

  type metadata accessor for FMIPHawkeyeProductInformation(0);
  if ((sub_24A82C874() & 1) == 0 || (sub_24A82C874() & 1) == 0 || (sub_24A82C874() & 1) == 0 || (sub_24A82C874() & 1) == 0 || (sub_24A82C874() & 1) == 0)
  {
    return 0;
  }

  return sub_24A82C874();
}

unint64_t sub_24A7AB8B4()
{
  result = qword_27EF5EB50;
  if (!qword_27EF5EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB50);
  }

  return result;
}

uint64_t sub_24A7AB908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7AB96C(void *a1)
{
  a1[2] = sub_24A7ABA60(&qword_27EF5D3C0, type metadata accessor for FMIPHawkeyeProductInformation, &protocol conformance descriptor for FMIPHawkeyeProductInformation);
  a1[3] = sub_24A7ABA60(&qword_27EF5D388, type metadata accessor for FMIPHawkeyeProductInformation, &protocol conformance descriptor for FMIPHawkeyeProductInformation);
  result = sub_24A7ABA60(&qword_27EF5EB70, type metadata accessor for FMIPHawkeyeProductInformation, &protocol conformance descriptor for FMIPHawkeyeProductInformation);
  a1[4] = result;
  return result;
}

uint64_t sub_24A7ABA60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A7ABAAC()
{
  result = qword_27EF5EB80;
  if (!qword_27EF5EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB80);
  }

  return result;
}

unint64_t sub_24A7ABB04()
{
  result = qword_27EF5EB88;
  if (!qword_27EF5EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPHawkeyeProductInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPHawkeyeProductInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A7ABCE4()
{
  result = qword_27EF5EB90;
  if (!qword_27EF5EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB90);
  }

  return result;
}

unint64_t sub_24A7ABD3C()
{
  result = qword_27EF5EB98;
  if (!qword_27EF5EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EB98);
  }

  return result;
}

unint64_t sub_24A7ABD94()
{
  result = qword_27EF5EBA0;
  if (!qword_27EF5EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBA0);
  }

  return result;
}

uint64_t sub_24A7ABDE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000024A844E10 == a2;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A843C40 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A843550 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024A844E30 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50616E6E65746E61 && a2 == 0xEC0000007265776FLL || (sub_24A82DC04() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024A848830 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024A848850 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265 || (sub_24A82DC04() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A848880 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A8488A0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4C746C7561666564 && a2 == 0xEF6E6F6349747369 || (sub_24A82DC04() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A8488C0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A8488E0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t KoreaFeatureFlag.hashValue.getter()
{
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](0);
  return sub_24A82DD24();
}

unint64_t sub_24A7AC300()
{
  result = qword_27EF5EBA8;
  if (!qword_27EF5EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBA8);
  }

  return result;
}

uint64_t sub_24A7AC364()
{
  sub_24A82C574();
  swift_allocObject();
  result = sub_24A82C564();
  qword_27EF5EBB0 = result;
  return result;
}

uint64_t static FMIPDemoContent.load(from:)(uint64_t a1)
{
  result = sub_24A82C8C4();
  if (!v1)
  {
    v4 = v3;
    v5 = result;
    if (qword_27EF5CC00 != -1)
    {
      result = swift_once();
    }

    sub_24A7AC468(result, v3);
    sub_24A82C554();
    sub_24A67E0F0(v5, v4);
    return v6;
  }

  return result;
}

unint64_t sub_24A7AC468(uint64_t a1, uint64_t a2)
{
  result = qword_27EF5EBB8;
  if (!qword_27EF5EBB8)
  {
    type metadata accessor for FMIPDemoContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBB8);
  }

  return result;
}

uint64_t sub_24A7AC4E0()
{
  if (*v0)
  {
    return 0x73656369766564;
  }

  else
  {
    return 0x654D796C696D6166;
  }
}

uint64_t sub_24A7AC528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D796C696D6166 && a2 == 0xED0000737265626DLL;
  if (v6 || (sub_24A82DC04() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();

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

uint64_t sub_24A7AC60C(uint64_t a1)
{
  v2 = sub_24A7AC9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7AC648(uint64_t a1)
{
  v2 = sub_24A7AC9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPDemoContent.deinit()
{

  return v0;
}

uint64_t FMIPDemoContent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FMIPDemoContent.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FMIPDemoContent.init(from:)(a1);
  return v2;
}

uint64_t FMIPDemoContent.init(from:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5EBC0, &qword_24A83AE28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7AC9D4();
  sub_24A82DD64();
  if (v2)
  {
    type metadata accessor for FMIPDemoContent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24A6BBA94(&qword_27EF5EBD0, &qword_24A83AE30);
    v10 = 0;
    sub_24A7ACA7C(&qword_27EF5EBD8, &qword_27EF5EBD0, &qword_24A83AE30, sub_24A7ACA28);
    sub_24A82DA84();
    *(v1 + 16) = v11;
    sub_24A6BBA94(&qword_27EF5EBE8, &qword_24A83AE38);
    v10 = 1;
    sub_24A7ACA7C(&qword_27EF5EBF0, &qword_27EF5EBE8, &qword_24A83AE38, sub_24A7ACAF8);
    sub_24A82DA84();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v11;
  }

  sub_24A6876E8(a1);
  return v1;
}

unint64_t sub_24A7AC9D4()
{
  result = qword_27EF5EBC8;
  if (!qword_27EF5EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBC8);
  }

  return result;
}

unint64_t sub_24A7ACA28()
{
  result = qword_27EF5EBE0;
  if (!qword_27EF5EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBE0);
  }

  return result;
}

uint64_t sub_24A7ACA7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A7ACAF8()
{
  result = qword_27EF5EBF8;
  if (!qword_27EF5EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EBF8);
  }

  return result;
}

uint64_t sub_24A7ACB4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMIPDemoContent();
  v5 = swift_allocObject();
  result = FMIPDemoContent.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24A7ACBF8()
{
  result = qword_27EF5EC00;
  if (!qword_27EF5EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC00);
  }

  return result;
}

unint64_t sub_24A7ACC50()
{
  result = qword_27EF5EC08;
  if (!qword_27EF5EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC08);
  }

  return result;
}

unint64_t sub_24A7ACCA8()
{
  result = qword_27EF5EC10;
  if (!qword_27EF5EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC10);
  }

  return result;
}

char sub_24A7ACCFC@<W0>(char *a1@<X8>)
{
  v3 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + 56);
  if (!v7 || !*(v7 + 16))
  {
    goto LABEL_7;
  }

  v8 = type metadata accessor for FMIPDevice(0);
  sub_24A77B054(v7 + *(v8 + 124) + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), v6);
  v9 = type metadata accessor for FMIPEraseMetadata(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    result = sub_24A77B0C4(v6);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = *v6;
  sub_24A77B12C(v6);
  result = FMIPActionStatus.init(rawValue:)(qword_24A83AFE8[v10]).value;
  v11 = v13;
  if (v13 == 12)
  {
    v11 = 2;
    goto LABEL_8;
  }

  if (v13 == 18)
  {
    goto LABEL_7;
  }

LABEL_8:
  *a1 = v11;
  return result;
}

unint64_t sub_24A7ACEB4(void *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPCancelEraseResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t type metadata accessor for FMIPSiriBaseRequest(uint64_t a1)
{
  result = qword_281515030;
  if (!qword_281515030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7AD14C()
{
  v10[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  swift_beginAccess();

  v1 = sub_24A82CED4();

  v2 = [v0 isValidJSONObject_];

  if (v2)
  {

    v3 = sub_24A82CED4();

    v10[0] = 0;
    v4 = [v0 dataWithJSONObject:v3 options:0 error:v10];

    v5 = v10[0];
    if (v4)
    {
      v6 = sub_24A82C904();

      return v6;
    }

    v8 = v5;
    v9 = sub_24A82C7F4();

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_24A7AD2E4()
{
  v1 = qword_281515058;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = sub_24A6A2D48(0x6F43746E65696C63, 0xED0000747865746ELL);
  if ((v4 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_24A67E168(*(v2 + 56) + 32 * v3, v9);

  sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
    v5 = MEMORY[0x277D84F98];
    v9[3] = v6;
    v9[0] = MEMORY[0x277D84F98];
    swift_beginAccess();
    sub_24A6A61DC(v9, 0x6F43746E65696C63, 0xED0000747865746ELL);
    swift_endAccess();
    return v5;
  }

  return v8;
}

uint64_t sub_24A7AD434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v7 = sub_24A82CB44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v4 + qword_281515048);
  *v11 = 0xD000000000000017;
  v11[1] = 0x800000024A8489C0;
  v12 = MEMORY[0x277D84F98];
  *(v4 + qword_281515058) = MEMORY[0x277D84F98];
  *(v4 + qword_281515050) = v12;
  v13 = (v4 + qword_281515040);
  *v13 = 0;
  v13[1] = 0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  v56 = sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v53 = v10;
    v18 = v8;
    v19 = a2;
    v20 = v7;
    v21 = a1;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPSiriBaseRequest: initialized", v17, 2u);
    v23 = v22;
    a1 = v21;
    v7 = v20;
    a2 = v19;
    v8 = v18;
    v10 = v53;
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  v24 = v55;
  *v13 = v54;
  v13[1] = v24;

  v25 = v11[1];
  v57[0] = *v11;
  v57[1] = v25;

  MEMORY[0x24C21C9E0](a1, a2);

  v26 = sub_24A82CB64();
  (*(v8 + 104))(v10, *MEMORY[0x277D07D00], v7);
  swift_retain_n();
  sub_24A82CB54();
  sub_24A7ADA5C();
  sub_24A7ADD1C();
  v27 = sub_24A82CD94();
  v28 = sub_24A82D4D4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v57[0] = v30;
    *v29 = 136315138;
    swift_beginAccess();

    v31 = sub_24A82CF04();
    v33 = v32;

    v34 = sub_24A68761C(v31, v33, v57);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_24A675000, v27, v28, "FMIP Siri Request Headers: %s", v29, 0xCu);
    sub_24A6876E8(v30);
    MEMORY[0x24C21E1D0](v30, -1, -1);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  v35 = sub_24A82CD94();
  v36 = sub_24A82D4D4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v57[0] = v38;
    *v37 = 136315138;
    sub_24A7AD2E4();
    v39 = sub_24A82CF04();
    v41 = v40;

    v42 = sub_24A68761C(v39, v41, v57);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_24A675000, v35, v36, "FMIP Siri Request ClientContext: %s", v37, 0xCu);
    sub_24A6876E8(v38);
    MEMORY[0x24C21E1D0](v38, -1, -1);
    MEMORY[0x24C21E1D0](v37, -1, -1);
  }

  v43 = sub_24A82CD94();
  v44 = sub_24A82D4D4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v58 = v46;
    *v45 = 136315138;
    swift_beginAccess();

    v47 = sub_24A82CF04();
    v49 = v48;

    v50 = sub_24A68761C(v47, v49, &v58);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_24A675000, v43, v44, "FMIP Siri Request Body: %s", v45, 0xCu);
    sub_24A6876E8(v46);
    MEMORY[0x24C21E1D0](v46, -1, -1);
    MEMORY[0x24C21E1D0](v45, -1, -1);
  }

  return v26;
}

uint64_t sub_24A7ADA5C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = v2;
  sub_24A82D854();

  strcpy(v15, "FMIPCore/1.0 ");
  HIWORD(v15[1]) = -4864;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24A7AE61C;
  *(v6 + 24) = v3;

  sub_24A6BBA94(&qword_27EF5EC18, qword_24A83B158);
  v7 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v7);

  MEMORY[0x24C21C9E0](47, 0xE100000000000000);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24A7AE640;
  *(v8 + 24) = v4;
  v16 = sub_24A7AE698;
  v17 = v8;

  v9 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v9);

  v10 = v15[0];
  v11 = v15[1];
  v12 = qword_281515050;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v1 + v12);
  *(v1 + v12) = 0x8000000000000000;
  sub_24A6A2BC0(v10, v11, 0x6567412D72657355, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  *(v1 + v12) = v16;
  swift_endAccess();
}

uint64_t sub_24A7ADCBC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_24A82CFC4();

  return v4;
}

void sub_24A7ADD1C()
{
  v1 = v0;
  v39 = sub_24A82CA34();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CA24();
  v4 = [objc_opt_self() sharedInstance];
  v46 = MEMORY[0x277D83B88];
  *&v44 = 1;
  v5 = sub_24A7AD2E4();
  sub_24A6A50DC(&v44, &v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v5;
  sub_24A6A4F8C(&v42, 0xD000000000000011, 0x800000024A8459C0, isUniquelyReferenced_nonNull_native);
  v7 = v41;
  v8 = sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
  v43 = v8;
  *&v42 = v7;
  swift_beginAccess();
  sub_24A6A61DC(&v42, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  sub_24A82C934();
  v46 = MEMORY[0x277D839F8];
  *&v44 = v9 * 1000.0;
  v10 = sub_24A7AD2E4();
  sub_24A6A50DC(&v44, &v42);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v10;
  sub_24A6A4F8C(&v42, 0x6D617473656D6974, 0xE900000000000070, v11);
  v43 = v8;
  *&v42 = v41;
  swift_beginAccess();
  sub_24A6A61DC(&v42, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  v38 = v4;
  v12 = [v4 deviceUDID];
  if (v12)
  {
    v13 = sub_24A82CFC4();
    v15 = v14;

    v16 = MEMORY[0x277D837D0];
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v45 = 0;
  }

  v17 = MEMORY[0x277D837D0];
  *&v44 = v13;
  *(&v44 + 1) = v15;
  v46 = v16;
  v18 = sub_24A7AD2E4();
  v40 = v18;
  if (v12)
  {
    v19 = v18;
    sub_24A6A50DC(&v44, &v42);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v19;
    sub_24A6A4F8C(&v42, 1684628597, 0xE400000000000000, v20);
    v21 = v41;
  }

  else
  {
    sub_24A6F6C40(&v44);
    sub_24A7C3F0C(1684628597, 0xE400000000000000, &v42);
    sub_24A6F6C40(&v42);
    v21 = v40;
  }

  v43 = v8;
  *&v42 = v21;
  swift_beginAccess();
  sub_24A6A61DC(&v42, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  v22 = [objc_opt_self() processInfo];
  v23 = [v22 processName];

  v24 = sub_24A82CFC4();
  v26 = v25;

  v46 = v17;
  *&v44 = v24;
  *(&v44 + 1) = v26;
  v27 = sub_24A7AD2E4();
  sub_24A6A50DC(&v44, &v42);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v27;
  sub_24A6A4F8C(&v42, 0x656372756F73, 0xE600000000000000, v28);
  v43 = v8;
  *&v42 = v41;
  swift_beginAccess();
  sub_24A6A61DC(&v42, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  v29 = sub_24A7AE59C();
  v46 = MEMORY[0x277D83B88];
  *&v44 = v29;
  v30 = sub_24A7AD2E4();
  sub_24A6A50DC(&v44, &v42);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v30;
  sub_24A6A4F8C(&v42, 0x74536B636F6C6E75, 0xEB00000000657461, v31);
  v43 = v8;
  *&v42 = v41;
  swift_beginAccess();
  sub_24A6A61DC(&v42, 0x6F43746E65696C63, 0xED0000747865746ELL);
  swift_endAccess();
  v32 = *(v1 + qword_281515040 + 8);
  if (v32)
  {
    v33 = *(v1 + qword_281515040);
    v46 = v17;
    *&v44 = v33;
    *(&v44 + 1) = v32;

    v34 = sub_24A7AD2E4();
    sub_24A6A50DC(&v44, &v42);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v34;
    sub_24A6A4F8C(&v42, 0x6B6F545350416176, 0xEA00000000006E65, v35);
    v43 = v8;
    *&v42 = v41;
    swift_beginAccess();
    sub_24A6A61DC(&v42, 0x6F43746E65696C63, 0xED0000747865746ELL);
    swift_endAccess();

    (*(v37 + 8))(v3, v39);
  }

  else
  {
    (*(v37 + 8))(v3, v39);
  }
}

uint64_t sub_24A7AE358()
{
}

uint64_t sub_24A7AE3C0()
{
  sub_24A82CB74();

  return swift_deallocClassInstance();
}

double sub_24A7AE488()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24A7AE4D4(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_281515050;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_24A7AE59C()
{
  v0 = MKBGetDeviceLockState();
  if (v0 > 1)
  {
    if (v0 == 3)
    {
      return 5;
    }

    if (v0 == 2)
    {
      return 4;
    }

    return 0;
  }

  if (!v0)
  {
    return 3;
  }

  if (v0 != 1)
  {
    return 0;
  }

  if (MKBDeviceUnlockedSinceBoot())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_24A7AE668@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_24A7AE728(uint64_t a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A7731FC(a1);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*(a1 + 24))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (*(a1 + 40))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *(a1 + 32);
  }

  if (*(a1 + 56))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *(a1 + 48);
  }

  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_24A82CA24();
  v12 = sub_24A82C994();
  (*(v3 + 8))(v5, v2);
  v13 = [v11 initWithCoordinate:v12 altitude:v6 horizontalAccuracy:v7 verticalAccuracy:v8 timestamp:{v9, v10}];

  return v13;
}

uint64_t sub_24A7AE89C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_24A7AE8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_24A7AE970(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5EC30, &qword_24A83B238);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7AF1BC();
  sub_24A82DD84();
  v8[15] = 0;
  sub_24A82DB24();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24A82DB24();
  v8[13] = 2;
  sub_24A82DAE4();
  v8[12] = 3;
  sub_24A82DAE4();
  v8[11] = 4;
  sub_24A82DAE4();
  v8[10] = 5;
  sub_24A82DAD4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24A7AEB7C()
{
  v1 = 0x656475746974616CLL;
  v2 = *v0;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000010;
  if (v2 != 4)
  {
    v4 = 0x6C6562616CLL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64757469676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6564757469746C61;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A7AEC38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A7AED3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A7AEC60(uint64_t a1)
{
  v2 = sub_24A7AF1BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7AEC9C(uint64_t a1)
{
  v2 = sub_24A7AF1BC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A7AECD8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A7AEF44(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_24A7AED3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A843B30 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A843BA0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24A7AEF44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5EC20, &qword_24A83B230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7AF1BC();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v37 = 0;
  sub_24A82DA64();
  v10 = v9;
  v36 = 1;
  sub_24A82DA64();
  v12 = v11;
  v35 = 2;
  v13 = sub_24A82DA24();
  v31 = v14 & 1;
  v34 = 3;
  v15 = sub_24A82DA24();
  v30 = v16 & 1;
  v33 = 4;
  v28 = sub_24A82DA24();
  v29 = v17 & 1;
  v32 = 5;
  v18 = sub_24A82DA04();
  v20 = v19;
  v21 = *(v6 + 8);
  v27 = v18;
  v21(v8, v5);
  v22 = v31;
  v23 = v30;
  v24 = v29;
  result = sub_24A6876E8(a1);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v22;
  *(a2 + 32) = v15;
  *(a2 + 40) = v23;
  v26 = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v24;
  *(a2 + 64) = v26;
  *(a2 + 72) = v20;
  return result;
}

unint64_t sub_24A7AF1BC()
{
  result = qword_27EF5EC28;
  if (!qword_27EF5EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC28);
  }

  return result;
}

unint64_t sub_24A7AF224()
{
  result = qword_27EF5EC38;
  if (!qword_27EF5EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC38);
  }

  return result;
}

unint64_t sub_24A7AF27C()
{
  result = qword_27EF5EC40;
  if (!qword_27EF5EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC40);
  }

  return result;
}

unint64_t sub_24A7AF2D4()
{
  result = qword_27EF5EC48;
  if (!qword_27EF5EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC48);
  }

  return result;
}

FMIPCore::FMIPAnalyticsActionType_optional __swiftcall FMIPAnalyticsActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPAnalyticsActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E756F5379616C70;
  v3 = 0x6F69736963657270;
  v4 = 0x6F4C656C62616E65;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F69746365726964;
  if (v1 != 1)
  {
    v5 = 0x74696D69786F7270;
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

uint64_t sub_24A7AF478(uint64_t a1)
{
  sub_24A82D094();
}

void sub_24A7AF5A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x6E756F5379616C70;
  v5 = 0x6F69736963657270;
  v6 = 0xEE0065646F4D7473;
  v7 = 0x6F4C656C62616E65;
  if (v2 != 4)
  {
    v7 = 0xD000000000000015;
    v6 = 0x800000024A843D50;
  }

  if (v2 == 3)
  {
    v6 = 0xED0000646E69466ELL;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x6F69746365726964;
  v9 = 0xED0000646E694679;
  if (v2 == 1)
  {
    v9 = 0xEA0000000000736ELL;
  }

  else
  {
    v8 = 0x74696D69786F7270;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

FMIPCore::FMIPAnalyticsOwnerContext_optional __swiftcall FMIPAnalyticsOwnerContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPAnalyticsOwnerContext.rawValue.getter()
{
  v1 = 0x72656E776FLL;
  v2 = 29813;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0x646572616873;
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

uint64_t sub_24A7AF74C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7AF7F4(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7AF888(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7AF938(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x72656E776FLL;
  v4 = 0xE200000000000000;
  v5 = 29813;
  if (*v1 != 2)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x646572616873;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FMIPAnalyticsProductType.init(device:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FMIPItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for FMIPDevice(0);
  sub_24A7AFC38(a1 + *(v11 + 128), v10);
  v12 = type metadata accessor for FMIPItemGroup(0);
  if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
  {
    sub_24A67F378(v10, &unk_27EF5E0B0, &qword_24A8338B0);
LABEL_9:
    v19 = *(a1 + *(v11 + 132));
    result = sub_24A6900AC(a1, type metadata accessor for FMIPDevice);
    if (v19)
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }

LABEL_12:
    *a2 = v18;
  }

  else
  {
    v13 = *(v10 + 5);

    result = sub_24A6900AC(v10, type metadata accessor for FMIPItemGroup);
    v15 = 0;
    v16 = *(v13 + 16);
    while (1)
    {
      if (v16 == v15)
      {

        goto LABEL_9;
      }

      if (v15 >= *(v13 + 16))
      {
        break;
      }

      sub_24A69F19C(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15++, v7, type metadata accessor for FMIPItem);
      v17 = v7[*(v4 + 84)];
      result = sub_24A6900AC(v7, type metadata accessor for FMIPItem);
      if (v17 == 1)
      {

        result = sub_24A6900AC(a1, type metadata accessor for FMIPDevice);
        v18 = 1;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A7AFC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPAnalyticsProductType.init(item:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItem(0);
  if (*(a1 + *(v7 + 84)) == 1)
  {
    result = sub_24A6900AC(a1, type metadata accessor for FMIPItem);
    v9 = 1;
  }

  else
  {
    sub_24A69F19C(a1 + *(v7 + 96), v6, type metadata accessor for FMIPProductType);
    sub_24A6900AC(a1, type metadata accessor for FMIPItem);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      result = sub_24A67F378(v6, &qword_27EF5D360, &unk_24A836200);
      v9 = 2;
    }

    else
    {
      result = sub_24A6900AC(v6, type metadata accessor for FMIPProductType);
      v9 = 0;
    }
  }

  *a2 = v9;
  return result;
}

uint64_t FMIPAnalyticsProductType.init(unknownItem:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPUnknownItem(0);
  if (*(a1 + *(v7 + 64)) == 1)
  {
    result = sub_24A6900AC(a1, type metadata accessor for FMIPUnknownItem);
    v9 = 1;
  }

  else
  {
    sub_24A69F19C(a1 + *(v7 + 36), v6, type metadata accessor for FMIPProductType);
    sub_24A6900AC(a1, type metadata accessor for FMIPUnknownItem);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      result = sub_24A67F378(v6, &qword_27EF5D360, &unk_24A836200);
      v9 = 3;
    }

    else
    {
      result = sub_24A6900AC(v6, type metadata accessor for FMIPProductType);
      v9 = 0;
    }
  }

  *a2 = v9;
  return result;
}

FMIPCore::FMIPAnalyticsProductType_optional __swiftcall FMIPAnalyticsProductType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPAnalyticsProductType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676154726961;
  v3 = 0x726F737365636361;
  v4 = 0x656369766564;
  if (v1 != 3)
  {
    v4 = 0x6E6F73726570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73646F50726961;
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

uint64_t sub_24A7B0044()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7B0120(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7B01E8(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7B02CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x676154726961;
  v5 = 0xE900000000000079;
  v6 = 0x726F737365636361;
  v7 = 0x656369766564;
  if (v2 != 3)
  {
    v7 = 0x6E6F73726570;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x73646F50726961;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

FMIPCore::FMIPActionEvent __swiftcall FMIPActionEvent.init(type:ownerContext:productType:)(FMIPCore::FMIPAnalyticsActionType type, FMIPCore::FMIPAnalyticsOwnerContext ownerContext, FMIPCore::FMIPAnalyticsProductType productType)
{
  v4 = *ownerContext;
  v5 = *productType;
  *v3 = *type;
  v3[1] = v4;
  v3[2] = v5;
  result.type = type;
  return result;
}

Swift::Void __swiftcall FMIPManager.enqueue(actionEvent:)(FMIPCore::FMIPActionEvent actionEvent)
{
  v1 = *(*&actionEvent.type + 2);
  v2 = **&actionEvent.type;
  v3 = v1;
  _s8FMIPCore13FMIPAnalyticsV25sendItemDeviceActionEvent5eventyAA010FMIPActionG0V_tFZ_0(&v2);
}

void sub_24A7B0460(int a1)
{
  v1 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v3 = sub_24A82CF94();

  v4 = [v2 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v4, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = sub_24A82CF94();

  v8 = [v6 initWithString_];

  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v8, 0x6E6F4372656E776FLL, 0xEC00000074786574, v9);
  v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v11 = sub_24A82CF94();

  v12 = [v10 initWithString_];

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v12, 0xD000000000000011, 0x800000024A848A00, v13);
  v14 = v1;
  v15 = sub_24A82CF94();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  aBlock[4] = sub_24A6AEBB4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6AEADC;
  aBlock[3] = &unk_285DC9C10;
  v17 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);

  if (sub_24A82C4C4())
  {
    v18 = sub_24A82CF94();

    v19 = sub_24A82CF94();

    v20 = objc_opt_self();
    v21 = sub_24A82CF94();

    [v20 captureFindMyUserActionType:v18 ownerContext:v19 productType:v21];
  }
}

uint64_t _s8FMIPCore13FMIPAnalyticsV25sendItemDeviceActionEvent5eventyAA010FMIPActionG0V_tFZ_0(char *a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CE54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  v13[16] = v10;
  v13[17] = v11;
  v13[18] = v12;
  aBlock[4] = sub_24A7B0FEC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC9BC0;
  v14 = _Block_copy(aBlock);
  sub_24A82CE24();
  v16[1] = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v5, v14);
  _Block_release(v14);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

unint64_t sub_24A7B0D98()
{
  result = qword_27EF5EC50;
  if (!qword_27EF5EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC50);
  }

  return result;
}

unint64_t sub_24A7B0DF0()
{
  result = qword_27EF5EC58;
  if (!qword_27EF5EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC58);
  }

  return result;
}

unint64_t sub_24A7B0E48()
{
  result = qword_27EF5EC60;
  if (!qword_27EF5EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC60);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMIPActionEvent(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMIPActionEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776963;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776963;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 4;
  v6 = v4 - 4;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPActionEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t FMIPUnknownItemProductMetadata.init(metadata:disableURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  if (a1)
  {
    v9 = [a1 title];
    if (v9)
    {
      v10 = v9;
      v11 = sub_24A82CFC4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    *a3 = v11;
    *(a3 + 8) = v13;
    v15 = [a1 moreDescription];
    v16 = sub_24A82D244();

    *(a3 + 16) = v16;
    [a1 percentageX];
    *(a3 + 24) = v17;
    *(a3 + 32) = 0;
    [a1 percentageY];
    *(a3 + 40) = v18;
    *(a3 + 48) = 0;
    v19 = [a1 image];
    sub_24A82C884();

    v20 = sub_24A82C8B4();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = MEMORY[0x277D84F90];
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = 0;
    *(a3 + 48) = 1;
    v14 = sub_24A82C8B4();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  v21 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  sub_24A696DA0(v8, a3 + *(v21 + 32));
  sub_24A696E10(a2, a3 + *(v21 + 36));
  v22 = FMIPUnknownItemProductMetadata.debugDescription.getter();
  v24 = v23;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v25 = sub_24A82CDC4();
  sub_24A6797D0(v25, qword_281518F88);

  v26 = sub_24A82CD94();
  v27 = sub_24A82D4C4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v28 = 136315138;
    v30 = sub_24A68761C(v22, v24, &v33);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_24A675000, v26, v27, "FMIPUnknownItemUTMetadata: initialized %s", v28, 0xCu);
    sub_24A6876E8(v29);
    MEMORY[0x24C21E1D0](v29, -1, -1);
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  else
  {
  }

  return sub_24A67F378(a2, &unk_27EF5CCB8, &qword_24A82FDB0);
}

uint64_t FMIPUnknownItemProductMetadata.debugDescription.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - v2;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD00000000000001ELL, 0x800000024A83B600);
  MEMORY[0x24C21C9E0](0x203A656C74697420, 0xE800000000000000);
  v4 = v0[1];
  v15 = *v0;
  v16 = v4;

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v5 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v5);

  MEMORY[0x24C21C9E0](0x7069726373656420, 0xEE00203A6E6F6974);
  v6 = MEMORY[0x24C21CB60](v0[2], MEMORY[0x277D837D0]);
  MEMORY[0x24C21C9E0](v6);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A848A60);
  v7 = *(v0 + 32);
  v15 = v0[3];
  LOBYTE(v16) = v7;
  sub_24A6BBA94(&qword_27EF5EC68, &qword_24A83B648);
  v8 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v8);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A848A80);
  v9 = *(v0 + 48);
  v15 = v0[5];
  LOBYTE(v16) = v9;
  v10 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v10);

  MEMORY[0x24C21C9E0](0x203A6567616D6920, 0xE800000000000000);
  v11 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  sub_24A696E10(v0 + *(v11 + 32), v3);
  v12 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v12);

  MEMORY[0x24C21C9E0](0x656C626173696420, 0xED0000203A4C5255);
  sub_24A696E10(v0 + *(v11 + 36), v3);
  v13 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v13);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return v17;
}

uint64_t FMIPUnknownItemProductMetadata.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPUnknownItemProductMetadata.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPUnknownItemProductMetadata(0) + 32);

  return sub_24A696E10(v3, a1);
}

uint64_t FMIPUnknownItemProductMetadata.disableURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPUnknownItemProductMetadata(0) + 36);

  return sub_24A696E10(v3, a1);
}

uint64_t sub_24A7B1728(uint64_t a1)
{
  sub_24A82D094();
}

unint64_t sub_24A7B1828@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A7B32AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A7B1858(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0x800000024A843DE0;
  v6 = 0xE500000000000000;
  v7 = 0x6567616D69;
  if (v2 != 4)
  {
    v7 = 0x55656C6261736964;
    v6 = 0xEA00000000004C52;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x800000024A843DA0;
  v9 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v9 = 0xD000000000000010;
    v8 = 0x800000024A843DC0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_24A7B1920()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6567616D69;
  if (v1 != 4)
  {
    v3 = 0x55656C6261736964;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD00000000000001BLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_24A7B19E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7B32AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7B1A0C(uint64_t a1)
{
  v2 = sub_24A7B2988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7B1A48(uint64_t a1)
{
  v2 = sub_24A7B2988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPUnknownItemProductMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_24A82C8B4();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  v9 = sub_24A6BBA94(&qword_27EF5EC70, &unk_24A83B650);
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v59 = a1;
  sub_24A67DF6C(a1, v15);
  sub_24A7B2988();
  v16 = v58;
  sub_24A82DD64();
  if (!v16)
  {
    v52 = v14;
    v53 = v6;
    v58 = v8;
    v18 = v56;
    v17 = v57;
    LOBYTE(v61) = 0;
    v50 = sub_24A82DA44();
    v51 = v19;
    sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
    v60 = 1;
    sub_24A7029A8(&qword_27EF5DB30, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_24A82DA84();
    v20 = v61;
    LOBYTE(v61) = 2;
    sub_24A82DA64();
    v49 = v20;
    v22 = v21;
    LOBYTE(v61) = 3;
    sub_24A82DA64();
    v24 = v23;
    LOBYTE(v61) = 4;
    v25 = sub_24A7B32F8(&qword_27EF5EB68, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v26 = v55;
    v48 = v25;
    sub_24A82DA84();
    LOBYTE(v61) = 5;
    sub_24A82DA84();
    v47 = v12;
    v48 = v9;
    v28 = v52;
    v29 = v51;
    *v52 = v50;
    *(v28 + 8) = v29;
    *(v28 + 16) = v49;
    *(v28 + 24) = v22;
    *(v28 + 32) = 0;
    *(v28 + 40) = v24;
    *(v28 + 48) = 0;
    v30 = v54;
    v31 = *(v54 + 16);
    v50 = *(v12 + 32);
    v51 = v31;
    v31(v28 + v50, v58, v26);
    v32 = *(v30 + 56);
    v32(v28 + v50, 0, 1, v26);
    v50 = *(v47 + 36);
    v51(v28 + v50, v53, v26);
    v32(v28 + v50, 0, 1, v26);
    v51 = FMIPUnknownItemProductMetadata.debugDescription.getter();
    v34 = v33;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v35 = sub_24A82CDC4();
    sub_24A6797D0(v35, qword_281518F88);

    v36 = sub_24A82CD94();
    v37 = sub_24A82D4C4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v39 = v61;
      *v38 = 136315138;
      v40 = v37;
      v41 = sub_24A68761C(v51, v34, &v61);

      *(v38 + 4) = v41;
      _os_log_impl(&dword_24A675000, v36, v40, "FMIPUnknownItemUTMetadata: initialized %s", v38, 0xCu);
      sub_24A6876E8(v39);
      v42 = v39;
      v43 = v57;
      MEMORY[0x24C21E1D0](v42, -1, -1);
      v44 = v38;
      v28 = v52;
      MEMORY[0x24C21E1D0](v44, -1, -1);
    }

    else
    {
      v43 = v17;
    }

    v45 = *(v54 + 8);
    v46 = v55;
    v45(v53, v55);
    v45(v58, v46);
    (*(v18 + 8))(v11, v48);
    sub_24A7B29DC(v28, v43);
  }

  return sub_24A6876E8(v59);
}

uint64_t FMIPUnknownItemProductMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5EC80, &qword_24A83B660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7B2988();
  sub_24A82DD84();
  v12 = *v3;
  v13 = 0;
  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  sub_24A7B2A40(&qword_281512BD0, &qword_27EF5D248, &unk_24A834970);
  sub_24A82DB44();
  if (!v2)
  {
    *&v12 = *(v3 + 2);
    v13 = 1;
    sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
    sub_24A7029A8(&qword_27EF5DB50, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24A82DB44();
    v9 = *(v3 + 32);
    *&v12 = *(v3 + 3);
    BYTE8(v12) = v9;
    v13 = 2;
    sub_24A6BBA94(&qword_27EF5EC68, &qword_24A83B648);
    sub_24A7B2A40(&qword_27EF5EC88, &qword_27EF5EC68, &qword_24A83B648);
    sub_24A82DB44();
    v10 = *(v3 + 48);
    *&v12 = *(v3 + 5);
    BYTE8(v12) = v10;
    v13 = 3;
    sub_24A82DB44();
    type metadata accessor for FMIPUnknownItemProductMetadata(0);
    LOBYTE(v12) = 4;
    sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
    sub_24A7B2AA8();
    sub_24A82DB44();
    LOBYTE(v12) = 5;
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMIPUnknownItemProductMetadata.hash(into:)(uint64_t a1)
{
  v2 = sub_24A82C8B4();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  if (*(v1 + 8))
  {
    sub_24A82DCE4();
    sub_24A82D094();
  }

  else
  {
    sub_24A82DCE4();
  }

  v10 = *(v1 + 16);
  MEMORY[0x24C21D5E0](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 40;
    do
    {

      sub_24A82D094();

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  if (*(v1 + 32))
  {
    sub_24A82DCE4();
  }

  else
  {
    v13 = *(v1 + 24);
    sub_24A82DCE4();
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x24C21D610](v14);
  }

  v15 = v29;
  if (*(v1 + 48) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    v16 = *(v1 + 40);
    sub_24A82DCE4();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x24C21D610](v17);
  }

  v18 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  sub_24A696E10(v1 + *(v18 + 32), v9);
  v19 = *(v15 + 48);
  if (v19(v9, 1, v2) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    v20 = *(v15 + 32);
    v27 = v7;
    v21 = v28;
    v20(v28, v9, v2);
    sub_24A82DCE4();
    sub_24A7B32F8(&qword_27EF5CCD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24A82CF64();
    v22 = v21;
    v7 = v27;
    (*(v15 + 8))(v22, v2);
  }

  sub_24A696E10(v1 + *(v18 + 36), v7);
  if (v19(v7, 1, v2) == 1)
  {
    return sub_24A82DCE4();
  }

  v25 = v28;
  v24 = v29;
  (*(v29 + 32))(v28, v7, v2);
  sub_24A82DCE4();
  sub_24A7B32F8(&qword_27EF5CCD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24A82CF64();
  return (*(v24 + 8))(v25, v2);
}

uint64_t FMIPUnknownItemProductMetadata.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPUnknownItemProductMetadata.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7B2904()
{
  sub_24A82DCC4();
  FMIPUnknownItemProductMetadata.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7B2948(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPUnknownItemProductMetadata.hash(into:)(v2);
  return sub_24A82DD24();
}

unint64_t sub_24A7B2988()
{
  result = qword_27EF5EC78;
  if (!qword_27EF5EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC78);
  }

  return result;
}

uint64_t sub_24A7B29DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7B2A40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A7B2AA8()
{
  result = qword_27EF5EC90;
  if (!qword_27EF5EC90)
  {
    sub_24A6CCDC0(&unk_27EF5CCB8, &qword_24A82FDB0);
    sub_24A7B32F8(&qword_27EF5EB58, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5EC90);
  }

  return result;
}

uint64_t _s8FMIPCore30FMIPUnknownItemProductMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82C8B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v35[-v12];
  v14 = sub_24A6BBA94(&qword_27EF5D040, &unk_24A830E50);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v35[-v18];
  v20 = *(a1 + 8);
  v21 = *(a2 + 8);
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v21)
  {
    goto LABEL_35;
  }

  if ((sub_24A7D8798(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_35;
  }

  v22 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_35;
    }
  }

  v23 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_35;
    }
  }

  v38 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  v40 = *(v38 + 32);
  v41 = v5;
  v24 = *(v14 + 48);
  sub_24A696E10(a1 + v40, v19);
  v39 = v24;
  sub_24A696E10(a2 + v40, &v24[v19]);
  v25 = v41 + 48;
  v40 = *(v41 + 48);
  if ((v40)(v19, 1, v4) == 1)
  {
    v26 = v40;
    if ((v40)(&v39[v19], 1, v4) == 1)
    {
      sub_24A67F378(v19, &unk_27EF5CCB8, &qword_24A82FDB0);
      goto LABEL_28;
    }

LABEL_26:
    v27 = v19;
LABEL_34:
    sub_24A67F378(v27, &qword_27EF5D040, &unk_24A830E50);
    goto LABEL_35;
  }

  sub_24A696E10(v19, v13);
  v37 = v25;
  if ((v40)(&v39[v19], 1, v4) == 1)
  {
    (*(v41 + 8))(v13, v4);
    goto LABEL_26;
  }

  v28 = v41;
  (*(v41 + 32))(v7, &v39[v19], v4);
  sub_24A7B32F8(&qword_27EF5D048, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v36 = sub_24A82CF84();
  v39 = *(v28 + 8);
  (v39)(v7, v4);
  (v39)(v13, v4);
  sub_24A67F378(v19, &unk_27EF5CCB8, &qword_24A82FDB0);
  v26 = v40;
  if ((v36 & 1) == 0)
  {
LABEL_35:
    v31 = 0;
    return v31 & 1;
  }

LABEL_28:
  v29 = *(v38 + 36);
  v30 = *(v14 + 48);
  sub_24A696E10(a1 + v29, v17);
  sub_24A696E10(a2 + v29, &v17[v30]);
  if (v26(v17, 1, v4) != 1)
  {
    sub_24A696E10(v17, v11);
    if (v26(&v17[v30], 1, v4) != 1)
    {
      v33 = v41;
      (*(v41 + 32))(v7, &v17[v30], v4);
      sub_24A7B32F8(&qword_27EF5D048, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v31 = sub_24A82CF84();
      v34 = *(v33 + 8);
      v34(v7, v4);
      v34(v11, v4);
      sub_24A67F378(v17, &unk_27EF5CCB8, &qword_24A82FDB0);
      return v31 & 1;
    }

    (*(v41 + 8))(v11, v4);
    goto LABEL_33;
  }

  if (v26(&v17[v30], 1, v4) != 1)
  {
LABEL_33:
    v27 = v17;
    goto LABEL_34;
  }

  sub_24A67F378(v17, &unk_27EF5CCB8, &qword_24A82FDB0);
  v31 = 1;
  return v31 & 1;
}

unint64_t sub_24A7B31A8()
{
  result = qword_27EF5ECC0;
  if (!qword_27EF5ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ECC0);
  }

  return result;
}

unint64_t sub_24A7B3200()
{
  result = qword_27EF5ECC8;
  if (!qword_27EF5ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ECC8);
  }

  return result;
}

unint64_t sub_24A7B3258()
{
  result = qword_27EF5ECD0;
  if (!qword_27EF5ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5ECD0);
  }

  return result;
}

unint64_t sub_24A7B32AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A7B32F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FMIPItemUpdateType.description.getter()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FMIPItemUpdateType(0);
  MEMORY[0x28223BE20](updated);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A7B360C(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        return 0x6E6F697461636F6CLL;
      }

      else
      {
        return 0x6568636163;
      }
    }

    else
    {
      v10 = *(sub_24A6BBA94(&qword_27EF5ECD8, &qword_24A83B8C0) + 48);
      (*(v2 + 32))(v4, v7, v1);
      v14[0] = 0x28206E6F6D6564;
      v14[1] = 0xE700000000000000;
      v11 = sub_24A82CA54();
      MEMORY[0x24C21C9E0](v11);

      MEMORY[0x24C21C9E0](41, 0xE100000000000000);
      v12 = v14[0];
      (*(v2 + 8))(v4, v1);
      v13 = sub_24A82CA34();
      (*(*(v13 - 8) + 8))(&v7[v10], v13);
      return v12;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0x6E6569736E617274;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x676E6972696170;
  }

  else
  {
    return 0x2073736572646461;
  }
}

uint64_t sub_24A7B360C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FMIPItemUpdateType(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24A7B36A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_24A82CA34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24A7B3714(uint64_t a1)
{
  sub_24A82C9D4();
  MEMORY[0x24C21C9E0](91, 0xE100000000000000);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](8285, 0xE200000000000000);
  updated = FMIPItemUpdateType.description.getter();
  MEMORY[0x24C21C9E0](updated);

  return 0;
}

uint64_t FMIPItemUpdateContext.deinit()
{
  sub_24A7B3864(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type);
  v1 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
  v2 = sub_24A82CA34();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v2);
  return v0;
}

uint64_t sub_24A7B3864(uint64_t a1)
{
  updated = type metadata accessor for FMIPItemUpdateType(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t FMIPItemUpdateContext.__deallocating_deinit()
{
  sub_24A7B3864(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type);
  v1 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
  v2 = sub_24A82CA34();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7B399C(uint64_t a1)
{
  sub_24A82C9D4();
  MEMORY[0x24C21C9E0](91, 0xE100000000000000);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](8285, 0xE200000000000000);
  updated = FMIPItemUpdateType.description.getter();
  MEMORY[0x24C21C9E0](updated);

  return 0;
}

uint64_t sub_24A7B3A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_24A82CA34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_24A7B360C(a1, a3 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type);
  v15 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
  v16 = *(v12 + 16);
  v22 = a4;
  v23 = a3;
  v16(a3 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, a4 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v11);
  v17 = a2;
  sub_24A79D06C(a2, v10);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    v16(v14, v22 + v15, v11);
    sub_24A793F90(v17);
    sub_24A7B3864(v24);
    if (v18(v10, 1, v11) != 1)
    {
      sub_24A793F90(v10);
    }
  }

  else
  {
    sub_24A793F90(v17);
    sub_24A7B3864(v24);
    (*(v12 + 32))(v14, v10, v11);
  }

  v19 = v23;
  (*(v12 + 32))(v23 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v14, v11);
  return v19;
}

uint64_t sub_24A7B3CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24A7B3D20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24A7B3D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v62 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v67 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v60 = &v48 - v10;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v11 = 0;
    v50 = a1;
    v12 = *(a1 + 56);
    v48 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = a2 + 56;
    v65 = v62 + 16;
    v56 = v62 + 32;
    v18 = (v62 + 8);
    v49 = v16;
    v55 = a2;
    v54 = a2 + 56;
    if (v15)
    {
      while (2)
      {
        v19 = __clz(__rbit64(v15));
        v51 = (v15 - 1) & v15;
LABEL_13:
        v52 = v11;
        v22 = *(*(v50 + 48) + 8 * (v19 | (v11 << 6)));
        sub_24A82DCC4();

        sub_24A713504(v68, v22);
        v23 = sub_24A82DD24();
        v24 = -1 << *(a2 + 32);
        v25 = v23 & ~v24;
        if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
LABEL_40:

          return;
        }

        v26 = ~v24;
        v64 = v22 + 56;
        v66 = v22;
        v53 = ~v24;
        while (1)
        {
          v27 = *(*(a2 + 48) + 8 * v25);
          if (v27 == v22)
          {
            break;
          }

          if (*(v27 + 16) == *(v22 + 16))
          {
            v28 = *(v27 + 56);
            v58 = v27 + 56;
            v59 = v25;
            v29 = 1 << *(v27 + 32);
            if (v29 < 64)
            {
              v30 = ~(-1 << v29);
            }

            else
            {
              v30 = -1;
            }

            v31 = v30 & v28;
            v57 = (v29 + 63) >> 6;

            v33 = 0;
            v63 = v32;
            if (!v31)
            {
LABEL_24:
              v35 = v33;
              while (1)
              {
                v33 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  break;
                }

                if (v33 >= v57)
                {

                  a2 = v55;
                  v17 = v54;
                  goto LABEL_37;
                }

                v36 = *(v58 + 8 * v33);
                ++v35;
                if (v36)
                {
                  v34 = __clz(__rbit64(v36));
                  v61 = (v36 - 1) & v36;
                  goto LABEL_29;
                }
              }

              __break(1u);
              goto LABEL_43;
            }

            while (1)
            {
              v34 = __clz(__rbit64(v31));
              v61 = (v31 - 1) & v31;
LABEL_29:
              v37 = v62;
              v38 = *(v62 + 72);
              v39 = *(v62 + 16);
              v40 = v60;
              v39(v60, *(v32 + 48) + v38 * (v34 | (v33 << 6)), v4);
              (*(v37 + 32))(v67, v40, v4);
              v41 = v66;
              sub_24A7B8564(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
              v42 = sub_24A82CF54();
              v43 = -1 << *(v41 + 32);
              v44 = v42 & ~v43;
              if (((*(v64 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                break;
              }

              v45 = ~v43;
              while (1)
              {
                v39(v7, *(v66 + 48) + v44 * v38, v4);
                sub_24A7B8564(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                v46 = sub_24A82CF84();
                v47 = *v18;
                (*v18)(v7, v4);
                if (v46)
                {
                  break;
                }

                v44 = (v44 + 1) & v45;
                if (((*(v64 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              v47(v67, v4);
              v32 = v63;
              v31 = v61;
              if (!v61)
              {
                goto LABEL_24;
              }
            }

LABEL_15:

            (*v18)(v67, v4);
            a2 = v55;
            v17 = v54;
            v22 = v66;
            v25 = v59;
            v26 = v53;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

LABEL_37:

        v11 = v52;
        v16 = v49;
        v15 = v51;
        if (v51)
        {
          continue;
        }

        break;
      }
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        return;
      }

      v21 = *(v48 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v51 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

LABEL_43:
    __break(1u);
  }
}

uint64_t sub_24A7B4308(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82C8B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v66 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5D040, &unk_24A830E50);
  MEMORY[0x28223BE20](v11);
  v82 = &v66 - v12;
  v13 = type metadata accessor for FMIPBeaconShare(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - v18;
  result = MEMORY[0x28223BE20](v17);
  v23 = &v66 - v22;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v78 = v11;
  v79 = v10;
  v24 = 0;
  v25 = a1 + 56;
  v26 = 1 << *(a1 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(a1 + 56);
  v29 = (v26 + 63) >> 6;
  v30 = a2 + 56;
  v80 = v4;
  v81 = (v5 + 48);
  v31 = (v5 + 32);
  v77 = (v5 + 8);
  if (!v28)
  {
    goto LABEL_8;
  }

  do
  {
    v74 = v31;
    v68 = v29;
    v69 = v25;
    v75 = v7;
    v32 = __clz(__rbit64(v28));
    v67 = (v28 - 1) & v28;
LABEL_13:
    v72 = a1;
    v35 = *(a1 + 48);
    v71 = v21;
    v36 = *(v21 + 72);
    v37 = v23;
    sub_24A7B85AC(v35 + v36 * (v32 | (v24 << 6)), v23, type metadata accessor for FMIPBeaconShare);
    v70 = v37;
    sub_24A7B8614(v37, v19, type metadata accessor for FMIPBeaconShare);
    sub_24A82DCC4();
    FMIPBeaconShare.hash(into:)(v84);
    v38 = sub_24A82DD24();
    v39 = -1 << *(a2 + 32);
    v40 = v38 & ~v39;
    if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
LABEL_49:
      sub_24A7B867C(v19, type metadata accessor for FMIPBeaconShare);
      return 0;
    }

    v41 = ~v39;
    while (1)
    {
      sub_24A7B85AC(*(a2 + 48) + v40 * v36, v16, type metadata accessor for FMIPBeaconShare);
      if ((sub_24A82CA74() & 1) == 0 || (sub_24A82CA74() & 1) == 0)
      {
        goto LABEL_17;
      }

      v42 = v13[6];
      v43 = *&v16[v42];
      v44 = *&v16[v42 + 8];
      v45 = &v19[v42];
      v46 = v43 == *v45 && v44 == *(v45 + 1);
      if (!v46 && (sub_24A82DC04() & 1) == 0)
      {
        goto LABEL_17;
      }

      v47 = v13[7];
      v48 = *&v16[v47];
      v49 = *&v16[v47 + 8];
      v50 = &v19[v47];
      v51 = v48 == *v50 && v49 == *(v50 + 1);
      if (!v51 && (sub_24A82DC04() & 1) == 0)
      {
        goto LABEL_17;
      }

      v52 = v13[8];
      v53 = *&v16[v52];
      v83 = *&v19[v52];
      v54 = v83;
      v84[0] = v53;
      sub_24A6BB350(v53);
      sub_24A6BB350(v54);
      LOBYTE(v54) = static FMIPBeaconShareState.== infix(_:_:)(v84, &v83);
      sub_24A6BB5A4(v83);
      sub_24A6BB5A4(v84[0]);
      if ((v54 & 1) == 0 || (sub_24A82C9E4() & 1) == 0 || (sub_24A82C9E4() & 1) == 0)
      {
        goto LABEL_17;
      }

      v73 = v13[11];
      v76 = *(v78 + 48);
      v55 = v82;
      sub_24A67E964(&v16[v73], v82, &unk_27EF5CCB8, &qword_24A82FDB0);
      sub_24A67E964(&v19[v73], v76 + v55, &unk_27EF5CCB8, &qword_24A82FDB0);
      v56 = v55;
      v57 = v80;
      v73 = *v81;
      if ((v73)(v56, 1, v80) == 1)
      {
        if ((v73)(v76 + v82, 1, v57) != 1)
        {
          goto LABEL_16;
        }

        sub_24A67F378(v82, &unk_27EF5CCB8, &qword_24A82FDB0);
      }

      else
      {
        v58 = v82;
        sub_24A67E964(v82, v79, &unk_27EF5CCB8, &qword_24A82FDB0);
        v59 = v76 + v58;
        v60 = v80;
        if ((v73)(v59, 1, v80) == 1)
        {
          (*v77)(v79, v60);
LABEL_16:
          sub_24A67F378(v82, &qword_27EF5D040, &unk_24A830E50);
          goto LABEL_17;
        }

        (*v74)(v75, v76 + v82, v60);
        sub_24A7B8564(&qword_27EF5D048, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        LODWORD(v73) = sub_24A82CF84();
        v76 = *v77;
        v76(v75, v60);
        v76(v79, v60);
        sub_24A67F378(v82, &unk_27EF5CCB8, &qword_24A82FDB0);
        if ((v73 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v61 = v13[12];
      v62 = &v16[v61];
      v63 = v16[v61 + 8];
      v64 = &v19[v61];
      v65 = v19[v61 + 8];
      if ((v63 & 1) == 0)
      {
        break;
      }

      if (v65)
      {
        goto LABEL_44;
      }

LABEL_17:
      sub_24A7B867C(v16, type metadata accessor for FMIPBeaconShare);
      v40 = (v40 + 1) & v41;
      if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_17;
    }

LABEL_44:
    if (v16[v13[13]] != v19[v13[13]] || v16[v13[14]] != v19[v13[14]])
    {
      goto LABEL_17;
    }

    sub_24A7B867C(v16, type metadata accessor for FMIPBeaconShare);
    result = sub_24A7B867C(v19, type metadata accessor for FMIPBeaconShare);
    a1 = v72;
    v31 = v74;
    v7 = v75;
    v21 = v71;
    v23 = v70;
    v25 = v69;
    v29 = v68;
    v28 = v67;
  }

  while (v67);
LABEL_8:
  v33 = v24;
  while (1)
  {
    v24 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v24 >= v29)
    {
      return 1;
    }

    v34 = *(v25 + 8 * v24);
    ++v33;
    if (v34)
    {
      v74 = v31;
      v68 = v29;
      v69 = v25;
      v75 = v7;
      v32 = __clz(__rbit64(v34));
      v67 = (v34 - 1) & v34;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B4B08(uint64_t result, uint64_t a2)
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
  v5 = *(result + 56);
  v28 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v29 = v9;
  v30 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_24A82DCC4();
    v31 = v12;
    sub_24A82D094();

    v16 = sub_24A82DD24();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v22 = 0xE400000000000000;
        v21 = 1702060387;
        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = 0x6F6C61646E617473;
        }

        else
        {
          v21 = 1702131053;
        }

        if (v20 == 3)
        {
          v22 = 0xEA0000000000656ELL;
        }

        else
        {
          v22 = 0xE400000000000000;
        }

        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_24:
      v23 = 0x6F6C61646E617473;
      if (v15 != 3)
      {
        v23 = 1702131053;
      }

      v24 = 0xEA0000000000656ELL;
      if (v15 != 3)
      {
        v24 = 0xE400000000000000;
      }

      if (v15 == 2)
      {
        v25 = 1702060387;
      }

      else
      {
        v25 = v23;
      }

      if (v15 == 2)
      {
        v26 = 0xE400000000000000;
      }

      else
      {
        v26 = v24;
      }

      if (v21 == v25)
      {
        goto LABEL_49;
      }

LABEL_50:
      v27 = sub_24A82DC04();

      if (v27)
      {
        goto LABEL_54;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18))
    {
      v21 = 0x7468676972;
    }

    else
    {
      v21 = 1952867692;
    }

    if (*(*(a2 + 48) + v18))
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    if (v15 > 1)
    {
      goto LABEL_24;
    }

LABEL_43:
    if (!v15)
    {
      v26 = 0xE400000000000000;
      if (v21 == 1952867692)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v26 = 0xE500000000000000;
    if (v21 != 0x7468676972)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v22 != v26)
    {
      goto LABEL_50;
    }

LABEL_54:
    v9 = v29;
    v3 = v30;
    v8 = v31;
  }

  while (v31);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v28 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B4E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  result = MEMORY[0x28223BE20](v8);
  v14 = &v31 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v32 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  v33 = v20;
  v34 = &v31 - v12;
  v35 = v13;
  v36 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v37 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(v13 + 72);
      sub_24A7B85AC(*(a1 + 48) + v25 * (v22 | (v15 << 6)), v14, type metadata accessor for FMIPItem);
      sub_24A7B8614(v14, v10, type metadata accessor for FMIPItem);
      sub_24A82DCC4();
      sub_24A82D094();
      v26 = sub_24A82DD24();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      while (1)
      {
        sub_24A7B85AC(*(a2 + 48) + v28 * v25, v7, type metadata accessor for FMIPItem);
        v30 = _s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(v7, v10);
        sub_24A7B867C(v7, type metadata accessor for FMIPItem);
        if (v30)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_24A7B867C(v10, type metadata accessor for FMIPItem);
      v13 = v35;
      a1 = v36;
      v20 = v33;
      v14 = v34;
      v19 = v37;
      if (!v37)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_24A7B867C(v10, type metadata accessor for FMIPItem);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v32 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v37 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B5170(uint64_t result, uint64_t a2)
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
  v5 = *(result + 56);
  v28 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v29 = v9;
  v30 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_24A82DCC4();
    sub_24A82D094();

    v16 = sub_24A82DD24();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v31 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 1)
      {
        if (*(*(a2 + 48) + v18))
        {
          v21 = 1702060387;
        }

        else
        {
          v21 = 0x6F6C61646E617473;
        }

        if (*(*(a2 + 48) + v18))
        {
          v22 = 0xE400000000000000;
        }

        else
        {
          v22 = 0xEA0000000000656ELL;
        }

        if (v15 > 1)
        {
LABEL_24:
          v23 = 0x6475427468676972;
          if (v15 != 3)
          {
            v23 = 0x636972656E6567;
          }

          v24 = 0xE800000000000000;
          if (v15 != 3)
          {
            v24 = 0xE700000000000000;
          }

          if (v15 == 2)
          {
            v25 = 0x6475427466656CLL;
          }

          else
          {
            v25 = v23;
          }

          if (v15 == 2)
          {
            v26 = 0xE700000000000000;
          }

          else
          {
            v26 = v24;
          }

          goto LABEL_43;
        }
      }

      else if (v20 == 2)
      {
        v22 = 0xE700000000000000;
        v21 = 0x6475427466656CLL;
        if (v15 > 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = 0x6475427468676972;
        }

        else
        {
          v21 = 0x636972656E6567;
        }

        if (v20 == 3)
        {
          v22 = 0xE800000000000000;
        }

        else
        {
          v22 = 0xE700000000000000;
        }

        if (v15 > 1)
        {
          goto LABEL_24;
        }
      }

      v25 = 0x6F6C61646E617473;
      v26 = 0xEA0000000000656ELL;
      if (v15)
      {
        v26 = 0xE400000000000000;
        v25 = 1702060387;
      }

LABEL_43:
      if (v21 == v25 && v22 == v26)
      {
        break;
      }

      v27 = sub_24A82DC04();

      if (v27)
      {
        goto LABEL_51;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_51:
    v9 = v29;
    v3 = v30;
    v8 = v31;
  }

  while (v31);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v28 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7B54FC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  if ((sub_24A69F944(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_24A69FCF4(v5, v4);
  if (v6)
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A7B5578(char a1)
{
  v18 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D49808];
  if (a1)
  {
    sub_24A6BBA94(&qword_27EF5E658, &qword_24A838C60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8343E0;
    v4 = *MEMORY[0x277D49818];
    v5 = *MEMORY[0x277D49830];
    *(inited + 32) = *MEMORY[0x277D49818];
    *(inited + 40) = v5;
    v6 = *v2;
    v7 = *MEMORY[0x277D49820];
    *(inited + 48) = *v2;
    *(inited + 56) = v7;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    sub_24A77ECDC(inited);
  }

  if ((a1 & 2) != 0)
  {
    sub_24A6BBA94(&qword_27EF5E658, &qword_24A838C60);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_24A8356C0;
    v13 = *v2;
    v14 = *MEMORY[0x277D49810];
    *(v12 + 32) = *v2;
    *(v12 + 40) = v14;
    v15 = v13;
    v16 = v14;
    sub_24A77ECDC(v12);
  }

  return v18;
}

uint64_t sub_24A7B569C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24A7E0238(a1);

  *a2 = v3;
  return result;
}

void *sub_24A7B56DC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D49680]) init];
  [v1 setSubscribe_];
  [v1 setReportDeviceEvents_];
  v2 = MEMORY[0x277D49858];
  if (!*v0)
  {
    v2 = MEMORY[0x277D49860];
  }

  v3 = *v2;
  [v1 setCachePolicy_];

  v4 = *(v0 + 16);
  sub_24A7B5578(*(v0 + 8));
  type metadata accessor for SPBeaconType(0);
  v5 = sub_24A82D224();

  [v1 setSearchTypes_];

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = sub_24A74DDB4(*(v4 + 16), 0);
    v8 = *(sub_24A82CAA4() - 8);
    v9 = sub_24A74E600(v58, &v7[(*(v8 + 80) + 32) & ~*(v8 + 80)], v6, v4);
    v10 = v58[0];

    sub_24A6BAFBC(v10);
    if (v9 != v6)
    {
      __break(1u);
    }
  }

  sub_24A82CAA4();
  v11 = sub_24A82D224();

  [v1 setSearchIdentifiers_];

  sub_24A6BBA94(&qword_27EF5E650, &qword_24A838C58);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24A83B990;
  v13 = *MEMORY[0x277D49700];
  v14 = *MEMORY[0x277D49708];
  *(v12 + 32) = *MEMORY[0x277D49700];
  *(v12 + 40) = v14;
  v15 = *MEMORY[0x277D49728];
  v16 = *MEMORY[0x277D49730];
  *(v12 + 48) = *MEMORY[0x277D49728];
  *(v12 + 56) = v16;
  v17 = *MEMORY[0x277D49738];
  v18 = *MEMORY[0x277D49740];
  *(v12 + 64) = *MEMORY[0x277D49738];
  *(v12 + 72) = v18;
  v57 = v1;
  v19 = *MEMORY[0x277D49748];
  v53 = *MEMORY[0x277D49750];
  v20 = *MEMORY[0x277D49750];
  *(v12 + 80) = *MEMORY[0x277D49748];
  *(v12 + 88) = v20;
  v51 = *MEMORY[0x277D49758];
  v55 = *MEMORY[0x277D49768];
  v21 = *MEMORY[0x277D49768];
  *(v12 + 96) = *MEMORY[0x277D49758];
  *(v12 + 104) = v21;
  v22 = *MEMORY[0x277D49770];
  v54 = *MEMORY[0x277D49710];
  v23 = *MEMORY[0x277D49710];
  *(v12 + 112) = *MEMORY[0x277D49770];
  *(v12 + 120) = v23;
  v52 = *MEMORY[0x277D49718];
  v56 = *MEMORY[0x277D49720];
  v24 = *MEMORY[0x277D49720];
  *(v12 + 128) = *MEMORY[0x277D49718];
  *(v12 + 136) = v24;
  type metadata accessor for SPBeaconLocationSource(0);
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v57;
  v33 = v53;
  v34 = v51;
  v35 = v55;
  v36 = v22;
  v37 = v54;
  v38 = v52;
  v39 = v56;
  v40 = sub_24A82D224();

  [v57 setSearchLocationSources_];

  v41 = sub_24A82C514();
  v58[3] = v41;
  v58[4] = sub_24A7B8564(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v42 = sub_24A697E3C(v58);
  (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D08A10], v41);
  LOBYTE(v41) = sub_24A82C4D4();
  sub_24A6876E8(v58);
  if (v41)
  {
    v43 = *MEMORY[0x277D49760];
    v44 = [v57 searchLocationSources];
    v45 = sub_24A82D244();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_24A780930(0, v45[2] + 1, 1, v45);
    }

    v47 = v45[2];
    v46 = v45[3];
    if (v47 >= v46 >> 1)
    {
      v45 = sub_24A780930((v46 > 1), v47 + 1, 1, v45);
    }

    v45[2] = v47 + 1;
    v45[v47 + 4] = v43;
    v48 = sub_24A82D224();

    v32 = v57;
    [v57 setSearchLocationSources_];
  }

  sub_24A679170(0, &qword_27EF5ED10, 0x277D49678);
  sub_24A7B8564(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v49 = sub_24A82CED4();
  [v32 setLastOnlineLocationInfo_];

  return v32;
}

uint64_t sub_24A7B5C68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1))
  {
    v3 = *(a1 + 3);
    v4 = a1[32];
    v5 = *(a2 + 3);
    v6 = a2[32];
    if (sub_24A69F944(*(a1 + 2), *(a2 + 2)))
    {
      sub_24A69FCF4(v3, v5);
      if ((v7 & 1) != 0 && ((v4 ^ v6) & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_24A7B5CFC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = *(a1 + 64);
      v47 = a1 + 64;
      v6 = 1 << *(a1 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & v5;
      v46 = (v6 + 63) >> 6;
      if ((v7 & v5) != 0)
      {
        goto LABEL_9;
      }

LABEL_10:
      v13 = v4;
      do
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          return;
        }

        if (v4 >= v46)
        {
          return;
        }

        v14 = *(v47 + 8 * v4);
        ++v13;
      }

      while (!v14);
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      while (1)
      {
        v15 = v11 | (v4 << 6);
        v16 = (*(v3 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = (*(v3 + 56) + 24 * v15);
        v20 = *v19;
        v52 = v19[1];
        v51 = v19[2];
        v21 = v19[3];
        v22 = *(v19 + 1);
        v23 = *(v19 + 2);

        v24 = v22;
        if (!v18)
        {
          break;
        }

        v25 = v24;
        v50 = v12;
        v26 = sub_24A6A2D48(v17, v18);
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          goto LABEL_88;
        }

        v49 = v21;
        v29 = v2;
        v30 = (*(v2 + 56) + 24 * v26);
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        v34 = v30[3];
        v35 = v25;
        v36 = *(v30 + 1);
        v37 = *(v30 + 2);
        sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
        v38 = v36;
        v25 = v35;
        v39 = v38;
        if (sub_24A82D5E4() & 1) == 0 || v37 != v23 || ((v31 ^ v20) & 1) != 0 || ((v52 ^ v32) & 1) != 0 || ((v51 ^ v33))
        {

LABEL_88:
          return;
        }

        v40 = 0xE700000000000000;
        v41 = 0x6E776F6E6B6E75;
        v42 = 0x6E776F6E6B6E75;
        v2 = v29;
        switch(v34)
        {
          case 1:
            v42 = 0x756F7364776F7263;
            v40 = 0xEC00000064656372;
            break;
          case 2:
            v40 = 0xE300000000000000;
            v42 = 5460039;
            break;
          case 3:
            v40 = 0xE400000000000000;
            v42 = 1768319319;
            break;
          case 4:
            v42 = 0x61636F4C65666173;
            v40 = 0xEC0000006E6F6974;
            break;
          case 5:
            v42 = 0xD000000000000012;
            v40 = 0x800000024A8439F0;
            break;
          case 6:
            v40 = 0xE800000000000000;
            v42 = 0x656D69746C616572;
            break;
          case 7:
            v42 = 0x6F4C646572696170;
            v40 = 0xEE006E6F69746163;
            break;
          case 8:
            v42 = 0x6E6E6F437473616CLL;
            v43 = 1702126437;
            goto LABEL_41;
          case 9:
            v42 = 0xD000000000000019;
            v40 = 0x800000024A843A30;
            break;
          case 10:
            v42 = 0xD000000000000010;
            v40 = 0x800000024A843A50;
            break;
          case 11:
            v40 = 0xE900000000000072;
            v42 = 0x656E774F7261656ELL;
            break;
          case 12:
            v42 = 0xD000000000000018;
            v40 = 0x800000024A843A70;
            break;
          case 13:
            v42 = 0x786F725072656570;
            v40 = 0xEB00000000646569;
            break;
          case 14:
            v42 = 0x6C627550666C6573;
            v43 = 1701344105;
LABEL_41:
            v40 = v43 | 0xED00006400000000;
            break;
          case 15:
            v42 = 0xD000000000000014;
            v40 = 0x800000024A843AB0;
            break;
          case 16:
            v40 = 0xE600000000000000;
            v42 = 0x646568636163;
            break;
          case 17:
            v42 = 0x6552746E65746E69;
            v40 = 0xEE0065736E6F7073;
            break;
          case 18:
            v42 = 0xD000000000000014;
            v40 = 0x800000024A843AE0;
            break;
          case 19:
            v42 = 0xD000000000000013;
            v40 = 0x800000024A843B00;
            break;
          default:
            break;
        }

        v44 = 0xE700000000000000;
        v3 = a1;
        switch(v49)
        {
          case 1:
            v44 = 0xEC00000064656372;
            if (v42 == 0x756F7364776F7263)
            {
              goto LABEL_80;
            }

            goto LABEL_7;
          case 2:
            v44 = 0xE300000000000000;
            if (v42 != 5460039)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 3:
            v44 = 0xE400000000000000;
            if (v42 != 1768319319)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 4:
            v44 = 0xEC0000006E6F6974;
            if (v42 != 0x61636F4C65666173)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 5:
            v44 = 0x800000024A8439F0;
            if (v42 != 0xD000000000000012)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 6:
            v44 = 0xE800000000000000;
            if (v42 != 0x656D69746C616572)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 7:
            v44 = 0xEE006E6F69746163;
            if (v42 != 0x6F4C646572696170)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 8:
            v41 = 0x6E6E6F437473616CLL;
            v45 = 1702126437;
            goto LABEL_78;
          case 9:
            v44 = 0x800000024A843A30;
            if (v42 != 0xD000000000000019)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 10:
            v44 = 0x800000024A843A50;
            if (v42 != 0xD000000000000010)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 11:
            v44 = 0xE900000000000072;
            if (v42 != 0x656E774F7261656ELL)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 12:
            v44 = 0x800000024A843A70;
            if (v42 != 0xD000000000000018)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 13:
            v44 = 0xEB00000000646569;
            if (v42 != 0x786F725072656570)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 14:
            v41 = 0x6C627550666C6573;
            v45 = 1701344105;
LABEL_78:
            v44 = v45 | 0xED00006400000000;
            goto LABEL_79;
          case 15:
            v44 = 0x800000024A843AB0;
            if (v42 != 0xD000000000000014)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 16:
            v44 = 0xE600000000000000;
            if (v42 != 0x646568636163)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 17:
            v44 = 0xEE0065736E6F7073;
            if (v42 != 0x6552746E65746E69)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 18:
            v44 = 0x800000024A843AE0;
            if (v42 != 0xD000000000000014)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          case 19:
            v44 = 0x800000024A843B00;
            if (v42 != 0xD000000000000013)
            {
              goto LABEL_7;
            }

            goto LABEL_80;
          default:
LABEL_79:
            if (v42 != v41)
            {
              goto LABEL_7;
            }

LABEL_80:
            if (v40 == v44)
            {

              v8 = v50;
              if (!v50)
              {
                goto LABEL_10;
              }
            }

            else
            {
LABEL_7:
              v9 = v25;
              v10 = sub_24A82DC04();

              v8 = v50;
              if ((v10 & 1) == 0)
              {
                return;
              }

              if (!v50)
              {
                goto LABEL_10;
              }
            }

LABEL_9:
            v11 = __clz(__rbit64(v8));
            v12 = (v8 - 1) & v8;
            break;
        }
      }
    }
  }
}