id sub_1CA3F7CDC()
{
  v311 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9B48D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v328 = inited;
  v327 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA97EDF0;
  *(v2 + 32) = @"DescriptionNote";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionNote";
  v329 = sub_1CA94C438("Lists use one-based indexing, so the first item is at index 1, the second is at index 2, etc.", 93);
  v7 = v6;
  v8 = sub_1CA94C438("Lists use one-based indexing, so the first item is at index 1, the second is at index 2, etc.", 93);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v332 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v333 = v12;
  v13 = &v307 - v332;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB9F690;
  v331 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v334 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v330 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v307 - v330;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v329, v7, v8, v10, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 40) = v20;
  *(v2 + 64) = v21;
  *(v2 + 72) = @"DescriptionSummary";
  v329 = v21;
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Returns one or more items from the list passed as input. You can get the first item, the last item, a random item, the item at a particular index, or items in a range of indexes.", 178);
  v325 = v24;
  v25 = sub_1CA94C438("Returns one or more items from the list passed as input. You can get the first item, the last item, a random item, the item at a particular index, or items in a range of indexes.", 178);
  v27 = v26;
  v326 = &v307;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v307 - v332;
  sub_1CA948D98();
  v29 = [v14 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v307 - v330;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v325, v25, v27, 0, 0, v28, v30);
  *(v2 + 104) = v21;
  *(v2 + 80) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v327;
  v35 = sub_1CA6B3784(v33);
  v36 = v328;
  v328[10] = v35;
  v36[13] = v34;
  v36[14] = @"IconColor";
  v36[15] = 0x65676E61724FLL;
  v36[16] = 0xE600000000000000;
  v37 = MEMORY[0x1E69E6158];
  v36[18] = MEMORY[0x1E69E6158];
  v36[19] = @"IconSymbol";
  v36[20] = 0x6C75622E7473696CLL;
  v36[21] = 0xEB0000000074656CLL;
  v36[23] = v37;
  v36[24] = @"Input";
  v38 = v37;
  v39 = v36;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v322 = xmmword_1CA981370;
  *(v40 + 16) = xmmword_1CA981370;
  *(v40 + 32) = 0xD00000000000001DLL;
  *(v40 + 40) = 0x80000001CA9A3ED0;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  *(v40 + 80) = 0x656C7069746C754DLL;
  *(v40 + 88) = 0xE800000000000000;
  *(v40 + 96) = 1;
  *(v40 + 120) = v41;
  strcpy((v40 + 128), "ParameterKey");
  *(v40 + 141) = 0;
  *(v40 + 142) = -5120;
  *(v40 + 144) = 0x7475706E494657;
  *(v40 + 152) = 0xE700000000000000;
  *(v40 + 168) = v38;
  *(v40 + 176) = 0x6465726975716552;
  *(v40 + 184) = 0xE800000000000000;
  *(v40 + 192) = 1;
  *(v40 + 216) = v41;
  *(v40 + 224) = 0x7365707954;
  *(v40 + 232) = 0xE500000000000000;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 264) = v323;
  *(v40 + 240) = &unk_1F49F9268;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v327 = v46;
  v39[25] = v45;
  v39[28] = v46;
  v39[29] = @"ActionKeywords";
  v47 = @"ActionKeywords";
  v324 = sub_1CA94C438("indices|index|subset|first|last|random", 38);
  *&v321 = v48;
  v49 = sub_1CA94C438("indices|index|subset|first|last|random", 38);
  v51 = v50;
  v325 = &v307;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v332;
  sub_1CA948D98();
  v53 = v331;
  v54 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v307 - v330;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v324, v321, v49, v51, 0, 0, &v307 - v52, v55);
  v58 = v328;
  v59 = v329;
  v328[30] = v57;
  v58[33] = v59;
  v58[34] = @"Name";
  v60 = @"Name";
  v324 = sub_1CA94C438("Get Item from List (Action Name)", 32);
  *&v321 = v61;
  v62 = sub_1CA94C438("Get Item from List", 18);
  v64 = v63;
  v325 = &v307;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v307 - v52;
  sub_1CA948D98();
  v66 = [v53 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v330;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v324, v321, v62, v64, 0, 0, v65, &v307 - v67);
  v70 = v328;
  v328[35] = v69;
  v70[38] = v59;
  v70[39] = @"Output";
  v71 = swift_allocObject();
  v309 = xmmword_1CA981350;
  *(v71 + 16) = xmmword_1CA981350;
  *(v71 + 32) = 0x75736F6C63736944;
  *(v71 + 40) = 0xEF6C6576654C6572;
  *(v71 + 48) = 0x63696C627550;
  *(v71 + 56) = 0xE600000000000000;
  *(v71 + 72) = MEMORY[0x1E69E6158];
  *(v71 + 80) = 0x656C7069746C754DLL;
  *(v71 + 88) = 0xE800000000000000;
  *(v71 + 96) = 1;
  *(v71 + 120) = MEMORY[0x1E69E6370];
  *(v71 + 128) = 0x614E74757074754FLL;
  *(v71 + 136) = 0xEA0000000000656DLL;
  v72 = @"Output";
  v73 = sub_1CA94C438("Item from List (Default Output Name)", 36);
  v325 = v74;
  v75 = sub_1CA94C438("Item from List", 14);
  v77 = v76;
  v326 = &v307;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v307 - v332;
  sub_1CA948D98();
  v79 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 144) = sub_1CA2F9F14(v73, v325, v75, v77, 0, 0, v78, &v307 - v67);
  *(v71 + 168) = v329;
  *(v71 + 176) = 0x7365707954;
  v81 = v323;
  *(v71 + 216) = v323;
  *(v71 + 184) = 0xE500000000000000;
  *(v71 + 192) = &unk_1F49F9298;
  v82 = MEMORY[0x1E69E6158];
  v83 = sub_1CA94C1E8();
  v84 = v328;
  v328[40] = v83;
  v84[43] = v327;
  v84[44] = @"Parameters";
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v327 = swift_allocObject();
  v321 = xmmword_1CA981560;
  *(v327 + 16) = xmmword_1CA981560;
  v326 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1CA981400;
  *(v85 + 32) = @"Class";
  *(v85 + 40) = 0xD000000000000016;
  *(v85 + 48) = 0x80000001CA99C4A0;
  *(v85 + 64) = v82;
  *(v85 + 72) = @"DefaultValue";
  *(v85 + 80) = 0x7449207473726946;
  *(v85 + 88) = 0xEA00000000006D65;
  *(v85 + 104) = v82;
  *(v85 + 112) = @"DisallowedVariableTypes";
  *(v85 + 120) = &unk_1F49F92C8;
  *(v85 + 144) = v81;
  *(v85 + 152) = @"ItemDisplayNames";
  v324 = swift_allocObject();
  *(v324 + 1) = v321;
  v319 = @"Class";
  v86 = @"Parameters";
  v87 = @"DefaultValue";
  v88 = @"DisallowedVariableTypes";
  v89 = @"ItemDisplayNames";
  v90 = sub_1CA94C438("First Item (WFItemSpecifier)", 28);
  v317 = v91;
  *&v318 = v90;
  v92 = sub_1CA94C438("First Item", 10);
  v316 = v93;
  v320 = &v307;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v307 - v332;
  sub_1CA948D98();
  v95 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = v330;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v318, v317, v92, v316, 0, 0, v94, &v307 - v96);
  v324[4] = v98;
  v99 = sub_1CA94C438("Last Item (WFItemSpecifier)", 27);
  v317 = v100;
  *&v318 = v99;
  v101 = sub_1CA94C438("Last Item", 9);
  v316 = v102;
  v320 = &v307;
  MEMORY[0x1EEE9AC00](v101);
  v103 = v332;
  sub_1CA948D98();
  v104 = v331;
  v105 = [v331 bundleURL];
  v315 = &v307;
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v318, v317, v101, v316, 0, 0, &v307 - v103, &v307 - v96);
  v108 = v324;
  v324[5] = v107;
  v109 = sub_1CA94C438("Random Item (WFItemSpecifier)", 29);
  v317 = v110;
  *&v318 = v109;
  v111 = sub_1CA94C438("Random Item", 11);
  v316 = v112;
  v320 = &v307;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v113 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v307 - v330;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 48) = sub_1CA2F9F14(v318, v317, v111, v316, 0, 0, &v307 - v103, v114);
  v116 = sub_1CA94C438("Item at Index (WFItemSpecifier)", 31);
  v317 = v117;
  *&v318 = v116;
  v118 = sub_1CA94C438("Item at Index", 13);
  v316 = v119;
  v320 = &v307;
  MEMORY[0x1EEE9AC00](v118);
  v120 = v332;
  sub_1CA948D98();
  v121 = v331;
  v122 = [v331 bundleURL];
  v315 = &v307;
  MEMORY[0x1EEE9AC00](v122);
  v123 = v330;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v318, v317, v118, v316, 0, 0, &v307 - v120, &v307 - v123);
  v324[7] = v125;
  v126 = sub_1CA94C438("Items in Range (WFItemSpecifier)", 32);
  v317 = v127;
  *&v318 = v126;
  v128 = sub_1CA94C438("Items in Range", 14);
  v316 = v129;
  v320 = &v307;
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948D98();
  v130 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v318, v317, v128, v316, 0, 0, &v307 - v120, &v307 - v123);
  v133 = v324;
  v324[8] = v132;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v85 + 160) = v133;
  *(v85 + 184) = v134;
  *(v85 + 192) = @"Items";
  *(v85 + 200) = &unk_1F49F92F8;
  *(v85 + 224) = v323;
  *(v85 + 232) = @"Key";
  *(v85 + 240) = 0x70536D6574494657;
  *(v85 + 248) = 0xEF72656966696365;
  *(v85 + 264) = MEMORY[0x1E69E6158];
  *(v85 + 272) = @"Label";
  v135 = @"Key";
  v136 = @"Label";
  v137 = v135;
  v138 = v136;
  v317 = v137;
  *&v318 = v138;
  v139 = @"Items";
  v140 = sub_1CA94C438("Get (WFItemSpecifier)", 21);
  v142 = v141;
  v143 = sub_1CA94C438("Get", 3);
  v145 = v144;
  v324 = &v307;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v307 - v332;
  sub_1CA948D98();
  v147 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v307 - v330;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v140, v142, v143, v145, 0, 0, v146, v148);
  *(v85 + 304) = v329;
  *(v85 + 280) = v150;
  _s3__C3KeyVMa_0(0);
  v324 = v151;
  v323 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v152 = sub_1CA94C1E8();
  v153 = sub_1CA2F864C(v152);
  *(v327 + 32) = v153;
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_1CA981380;
  v320 = 0x80000001CA99C180;
  v155 = v319;
  *(v154 + 32) = v319;
  *(v154 + 40) = 0xD000000000000016;
  *(v154 + 48) = 0x80000001CA99C180;
  v156 = MEMORY[0x1E69E6158];
  v157 = v317;
  v158 = v318;
  *(v154 + 64) = MEMORY[0x1E69E6158];
  *(v154 + 72) = v157;
  *(v154 + 80) = 0x6E496D6574494657;
  *(v154 + 88) = 0xEB00000000786564;
  *(v154 + 104) = v156;
  *(v154 + 112) = v158;
  v314 = v155;
  v313 = v157;
  v312 = v158;
  v159 = sub_1CA94C438("Index (WFItemIndex)", 19);
  v317 = v160;
  *&v318 = v159;
  v161 = sub_1CA94C438("Index", 5);
  v163 = v162;
  v319 = &v307;
  MEMORY[0x1EEE9AC00](v161);
  v164 = v332;
  sub_1CA948D98();
  v165 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = v330;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v154 + 120) = sub_1CA2F9F14(v318, v317, v161, v163, 0, 0, &v307 - v164, &v307 - v166);
  v168 = v329;
  *(v154 + 144) = v329;
  *(v154 + 152) = @"Placeholder";
  v308 = @"Placeholder";
  v169 = sub_1CA94C438("1 (WFItemIndex)", 15);
  v317 = v170;
  *&v318 = v169;
  v171 = sub_1CA94C438("1", 1);
  v316 = v172;
  v319 = &v307;
  MEMORY[0x1EEE9AC00](v171);
  sub_1CA948D98();
  v173 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v154 + 160) = sub_1CA2F9F14(v318, v317, v171, v316, 0, 0, &v307 - v164, &v307 - v166);
  *(v154 + 184) = v168;
  *(v154 + 192) = @"RequiredResources";
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v175 = swift_allocObject();
  v318 = xmmword_1CA981310;
  *(v175 + 16) = xmmword_1CA981310;
  v317 = @"RequiredResources";
  v176 = MEMORY[0x1E69E6158];
  *(v175 + 32) = sub_1CA94C1E8();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v316 = v177;
  *(v154 + 200) = v175;
  *(v154 + 224) = v177;
  *(v154 + 232) = @"TextAlignment";
  *(v154 + 264) = v176;
  *(v154 + 240) = 0x7468676952;
  *(v154 + 248) = 0xE500000000000000;
  v315 = @"TextAlignment";
  v178 = sub_1CA94C1E8();
  v179 = sub_1CA2F864C(v178);
  *(v327 + 40) = v179;
  v180 = swift_allocObject();
  *(v180 + 16) = v322;
  v182 = v313;
  v181 = v314;
  *(v180 + 32) = v314;
  *(v180 + 40) = 0xD000000000000016;
  *(v180 + 48) = v320;
  *(v180 + 64) = v176;
  *(v180 + 72) = v182;
  *(v180 + 80) = 0xD000000000000010;
  *(v180 + 88) = 0x80000001CA9B4C10;
  *(v180 + 104) = v176;
  v183 = v312;
  *(v180 + 112) = v312;
  v314 = v181;
  v313 = v182;
  v312 = v183;
  v184 = sub_1CA94C438("Start Index (WFItemRangeStart)", 30);
  v186 = v185;
  v187 = sub_1CA94C438("Start Index", 11);
  v189 = v188;
  v307 = &v307;
  MEMORY[0x1EEE9AC00](v187);
  v190 = &v307 - v332;
  sub_1CA948D98();
  v191 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v307 - v330;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v180 + 120) = sub_1CA2F9F14(v184, v186, v187, v189, 0, 0, v190, v192);
  v194 = v317;
  *(v180 + 144) = v329;
  *(v180 + 152) = v194;
  v195 = swift_allocObject();
  *(v195 + 16) = v318;
  v196 = MEMORY[0x1E69E6158];
  *(v195 + 32) = sub_1CA94C1E8();
  *(v180 + 160) = v195;
  v197 = v315;
  *(v180 + 184) = v316;
  *(v180 + 192) = v197;
  *(v180 + 224) = v196;
  *(v180 + 200) = 0x7468676952;
  *(v180 + 208) = 0xE500000000000000;
  v198 = sub_1CA94C1E8();
  v199 = sub_1CA2F864C(v198);
  *(v327 + 48) = v199;
  v200 = swift_allocObject();
  *(v200 + 16) = v322;
  *(v200 + 32) = v314;
  *(v200 + 40) = 0xD000000000000016;
  *(v200 + 48) = v320;
  v201 = v313;
  *(v200 + 64) = v196;
  *(v200 + 72) = v201;
  strcpy((v200 + 80), "WFItemRangeEnd");
  *(v200 + 95) = -18;
  v202 = v312;
  *(v200 + 104) = v196;
  *(v200 + 112) = v202;
  v203 = sub_1CA94C438("End Index (WFItemRangeEnd)", 26);
  v205 = v204;
  v206 = sub_1CA94C438("End Index", 9);
  v208 = v207;
  *&v322 = &v307;
  MEMORY[0x1EEE9AC00](v206);
  v209 = &v307 - v332;
  sub_1CA948D98();
  v210 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  v211 = &v307 - v330;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v200 + 120) = sub_1CA2F9F14(v203, v205, v206, v208, 0, 0, v209, v211);
  v213 = v317;
  *(v200 + 144) = v329;
  *(v200 + 152) = v213;
  v214 = swift_allocObject();
  *(v214 + 16) = v318;
  v215 = MEMORY[0x1E69E6158];
  *(v214 + 32) = sub_1CA94C1E8();
  *(v200 + 160) = v214;
  v216 = v315;
  *(v200 + 184) = v316;
  *(v200 + 192) = v216;
  *(v200 + 224) = v215;
  *(v200 + 200) = 0x7468676952;
  *(v200 + 208) = 0xE500000000000000;
  v217 = sub_1CA94C1E8();
  v218 = sub_1CA2F864C(v217);
  *(v327 + 56) = v218;
  v219 = swift_allocObject();
  *(v219 + 16) = v309;
  *(v219 + 32) = v314;
  *(v219 + 40) = 0xD000000000000019;
  *(v219 + 48) = 0x80000001CA99B030;
  v220 = v313;
  *(v219 + 64) = v215;
  *(v219 + 72) = v220;
  *(v219 + 80) = 0x7475706E494657;
  *(v219 + 88) = 0xE700000000000000;
  v221 = v312;
  *(v219 + 104) = v215;
  *(v219 + 112) = v221;
  *&v322 = sub_1CA94C438("List (WFInput)", 14);
  v320 = v222;
  v223 = sub_1CA94C438("List", 4);
  v319 = v224;
  v325 = &v307;
  MEMORY[0x1EEE9AC00](v223);
  v225 = &v307 - v332;
  sub_1CA948D98();
  v226 = v331;
  v227 = [v331 bundleURL];
  *&v318 = &v307;
  MEMORY[0x1EEE9AC00](v227);
  v228 = v330;
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v219 + 120) = sub_1CA2F9F14(v322, v320, v223, v319, 0, 0, v225, &v307 - v228);
  v230 = v329;
  v231 = v308;
  *(v219 + 144) = v329;
  *(v219 + 152) = v231;
  *&v322 = sub_1CA94C438("List (WFInput)", 14);
  v320 = v232;
  v233 = sub_1CA94C438("List", 4);
  v319 = v234;
  v325 = &v307;
  MEMORY[0x1EEE9AC00](v233);
  v235 = &v307 - v332;
  sub_1CA948D98();
  v236 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v236);
  sub_1CA948B68();

  v237 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v238 = sub_1CA2F9F14(v322, v320, v233, v319, 0, 0, v235, &v307 - v228);
  *(v219 + 184) = v230;
  *(v219 + 160) = v238;
  v239 = sub_1CA94C1E8();
  v240 = sub_1CA2F864C(v239);
  v241 = v327;
  *(v327 + 64) = v240;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v243 = v328;
  v328[45] = v241;
  v243[48] = v242;
  v243[49] = @"ParameterSummary";
  v327 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v329 = swift_allocObject();
  *(v329 + 16) = v321;
  v326 = "ndex";
  v244 = @"ParameterSummary";
  v245 = sub_1CA94C438("Get ${WFItemSpecifier} from ${WFInput}", 38);
  v323 = v246;
  v324 = v245;
  v247 = sub_1CA94C438("Get ${WFItemSpecifier} from ${WFInput}", 38);
  v249 = v248;
  v325 = &v307;
  MEMORY[0x1EEE9AC00](v247);
  v250 = v332;
  sub_1CA948D98();
  v251 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  v252 = v330;
  sub_1CA948B68();

  v253 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v254 = sub_1CA2F9F14(v324, v323, v247, v249, 0, 0, &v307 - v250, &v307 - v252);
  v255 = objc_allocWithZone(WFActionParameterSummaryValue);
  v256 = sub_1CA65DD78(0xD000000000000023, v326 | 0x8000000000000000, v254);
  v257 = v329;
  *(v329 + 32) = v256;
  v326 = "ifier} from ${WFInput}";
  v258 = sub_1CA94C438("Get ${WFItemSpecifier} ${WFItemIndex} from ${WFInput}", 53);
  v323 = v259;
  v324 = v258;
  v260 = sub_1CA94C438("Get ${WFItemSpecifier} ${WFItemIndex} from ${WFInput}", 53);
  v262 = v261;
  v325 = &v307;
  MEMORY[0x1EEE9AC00](v260);
  v263 = &v307 - v250;
  sub_1CA948D98();
  v264 = v331;
  v265 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v265);
  sub_1CA948B68();

  v266 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v267 = sub_1CA2F9F14(v324, v323, v260, v262, 0, 0, v263, &v307 - v252);
  v268 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v257 + 40) = sub_1CA65DD78(0xD000000000000032, v326 | 0x8000000000000000, v267);
  v326 = "ndex} from ${WFInput}";
  v269 = sub_1CA94C438("Get ${WFItemSpecifier} ${WFItemRangeStart} to ${WFItemRangeEnd} from ${WFInput}", 79);
  v323 = v270;
  v324 = v269;
  v271 = sub_1CA94C438("Get ${WFItemSpecifier} ${WFItemRangeStart} to ${WFItemRangeEnd} from ${WFInput}", 79);
  *&v322 = v272;
  v325 = &v307;
  MEMORY[0x1EEE9AC00](v271);
  v273 = v332;
  sub_1CA948D98();
  v274 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v274);
  v275 = &v307 - v330;
  sub_1CA948B68();

  v276 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v277 = sub_1CA2F9F14(v324, v323, v271, v322, 0, 0, &v307 - v273, v275);
  v278 = objc_allocWithZone(WFActionParameterSummaryValue);
  v279 = sub_1CA65DD78(0xD000000000000047, v326 | 0x8000000000000000, v277);
  *(v329 + 48) = v279;
  v326 = "WFItemRangeEnd} from ${WFInput}";
  v280 = sub_1CA94C438("Get ${WFItemSpecifier} from ${WFInput}", 38);
  v323 = v281;
  v324 = v280;
  v282 = sub_1CA94C438("Get ${WFItemSpecifier} from ${WFInput}", 38);
  *&v322 = v283;
  v325 = &v307;
  MEMORY[0x1EEE9AC00](v282);
  v284 = &v307 - v273;
  sub_1CA948D98();
  v285 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v285);
  v286 = v330;
  sub_1CA948B68();

  v287 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v288 = sub_1CA2F9F14(v324, v323, v282, v322, 0, 0, v284, &v307 - v286);
  v289 = objc_allocWithZone(WFActionParameterSummaryValue);
  v290 = sub_1CA65DD78(0xD000000000000022, v326 | 0x8000000000000000, v288);
  v291 = v329;
  *(v329 + 56) = v290;
  v326 = "Last Item),WFInput";
  v292 = sub_1CA94C438("Get ${WFItemSpecifier} from ${WFInput}", 38);
  v324 = v293;
  v294 = sub_1CA94C438("Get ${WFItemSpecifier} from ${WFInput}", 38);
  v296 = v295;
  v325 = &v307;
  MEMORY[0x1EEE9AC00](v294);
  v297 = &v307 - v332;
  sub_1CA948D98();
  v298 = [v331 bundleURL];
  MEMORY[0x1EEE9AC00](v298);
  sub_1CA948B68();

  v299 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v300 = sub_1CA2F9F14(v292, v324, v294, v296, 0, 0, v297, &v307 - v286);
  v301 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v291 + 64) = sub_1CA65DD78(0xD000000000000024, v326 | 0x8000000000000000, v300);
  v302 = v327;
  v303 = sub_1CA65AF90(v291);
  v304 = v328;
  v328[50] = v303;
  v304[53] = v302;
  v304[54] = @"ResidentCompatible";
  v304[58] = MEMORY[0x1E69E6370];
  *(v304 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v305 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

unint64_t sub_1CA3FA1E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445090, &unk_1CA9864F0);
    v2 = sub_1CA94D688();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_1CA94C218();
  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1CA2F6AB4(*(a1 + 48) + 40 * v10, __src);
    sub_1CA25B374(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1CA2F6AB4(__dst, v20);
    if (!swift_dynamicCast())
    {
      sub_1CA30F7DC(__dst, &qword_1EC445080, &qword_1CA9864E8);

      goto LABEL_22;
    }

    sub_1CA25B374(&__dst[40], v20);
    sub_1CA30F7DC(__dst, &qword_1EC445080, &qword_1CA9864E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    result = sub_1CA271BF8(v18, v19);
    v11 = result;
    if (v12)
    {
      v13 = (v2[6] + 16 * result);
      *v13 = v18;
      v13[1] = v19;

      *(v2[7] + 8 * v11) = v18;

      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v2[6] + 16 * result);
      *v14 = v18;
      v14[1] = v19;
      *(v2[7] + 8 * result) = v18;
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_26;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

LABEL_22:

  return 0;
}

unint64_t sub_1CA3FA4B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445078, &qword_1CA9864E0);
    v2 = sub_1CA94D688();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_1CA94C218();
  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1CA2F6AB4(*(a1 + 48) + 40 * v10, __src);
    sub_1CA25B374(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1CA2F6AB4(__dst, v20);
    if (!swift_dynamicCast())
    {
      sub_1CA30F7DC(__dst, &qword_1EC445080, &qword_1CA9864E8);

      goto LABEL_22;
    }

    sub_1CA25B374(&__dst[40], v20);
    sub_1CA30F7DC(__dst, &qword_1EC445080, &qword_1CA9864E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    result = sub_1CA271BF8(v18, v19);
    v11 = result;
    if (v12)
    {
      v13 = (v2[6] + 16 * result);
      *v13 = v18;
      v13[1] = v19;

      *(v2[7] + 8 * v11) = v18;
      result = swift_unknownObjectRelease();
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v2[6] + 16 * result);
      *v14 = v18;
      v14[1] = v19;
      *(v2[7] + 8 * result) = v18;
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_26;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_1CA3FA7A4(uint64_t a1, unint64_t a2)
{
  sub_1CA94D408();

  if (a2)
  {
    v4 = a2;
  }

  else
  {

    v4 = 0xE300000000000000;
    a1 = 7104878;
  }

  sub_1CA94C218();
  MEMORY[0x1CCAA1300](a1, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000027;
  *(inited + 56) = 0x80000001CA9B4F70;
  return sub_1CA94C1E8();
}

uint64_t WFContextualAction.actionRepresentation(takesInput:context:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = a1;
  return OUTLINED_FUNCTION_0_0();
}

void sub_1CA3FA95C()
{
  v2 = sub_1CA3F132C(*(v0 + 64), &selRef_wfActionIdentifier);
  if (!v1)
  {
    v29 = sub_1CA3FEE70();
    OUTLINED_FUNCTION_127(&_s15ConversionErrorON, v29);
    *v30 = v2;
    v30[1] = 0;
    swift_willThrow();
    goto LABEL_31;
  }

  v3 = v1;
  v4 = sub_1CA3FEEC4(*(v0 + 64));
  v88 = v3;
  v89 = v0;
  v87 = v2;
  if (!v4)
  {
    v8 = 0;
LABEL_26:
    v31 = [objc_opt_self() sharedRegistry];
    v32 = sub_1CA94C368();
    if (v8)
    {
      sub_1CA2F5880();

      v33 = sub_1CA94C1A8();
    }

    else
    {
      v33 = 0;
    }

    v34 = OUTLINED_FUNCTION_24_10();
    v36 = [v34 v35];

    sub_1CA25B3D0(0, &unk_1EC444FA8, off_1E836EBD0);
    if ([v36 isKindOfClass_])
    {
      v37 = sub_1CA3FEE70();
      v38 = OUTLINED_FUNCTION_127(&_s15ConversionErrorON, v37);
      OUTLINED_FUNCTION_30_9(v38, v39, v40, v41, v42, v43, v44, v45, v86, v87, v88);

      goto LABEL_31;
    }

    if ((*(v89 + 72) & 1) != 0 || [*(v89 + 64) selfPopulatesInput])
    {
      v48 = [v36 definition];
      if (v48)
      {
        v49 = v48;
        if ([v48 objectForKey_])
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v91 = 0u;
          v92 = 0u;
        }

        *(v89 + 16) = v91;
        *(v89 + 32) = v92;
        if (*(v89 + 40))
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FB8, &qword_1CA986308);
          if ((OUTLINED_FUNCTION_29_12(v50, v51, v52, v50) & 1) == 0)
          {
LABEL_45:

            goto LABEL_47;
          }

          sub_1CA311A58(*(v89 + 48), (v89 + 16), @"ParameterKey");

          if (*(v89 + 40))
          {
            if (OUTLINED_FUNCTION_29_12(v53, v54, v55, MEMORY[0x1E69E6158]))
            {
              v56 = [objc_allocWithZone(WFShortcutInputVariable) init];
              v57 = sub_1CA94C368();

              [v36 setParameterStateToVariable:v56 forKey:v57];
            }

            goto LABEL_45;
          }
        }

        sub_1CA30F7DC(v89 + 16, &unk_1EC444650, &unk_1CA981C70);
      }
    }

LABEL_47:
    v58 = sub_1CA3FEEC4(*(v89 + 64));
    if (v58)
    {
      v59 = v58;
      v90 = v36;
      v60 = sub_1CA25B410(v58);
      if (v60)
      {
        v61 = v60;
        v62 = 0;
        while (1)
        {
          if ((v59 & 0xC000000000000001) != 0)
          {
            v63 = MEMORY[0x1CCAA22D0](v62, v59);
          }

          else
          {
            if (v62 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_76;
            }

            v63 = *(v59 + 8 * v62 + 32);
          }

          v64 = v63;
          v65 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            break;
          }

          v66 = [v63 wfParameterKey];
          v67 = v66;
          v68 = v66;
          if (!v66)
          {
            sub_1CA94C3A8();
            v68 = sub_1CA94C368();

            sub_1CA94C3A8();
            v67 = sub_1CA94C368();
          }

          v69 = v66;
          if ([v64 isAskEachTime])
          {

            v70 = [v64 askEachTimeCollectionFilter];
            v71 = [objc_allocWithZone(WFAskEachTimeVariable) initWithCollectionFilter_];

            LOBYTE(v70) = [v90 setParameterStateToVariable:v71 forKey:v68];
            if ((v70 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {

            if ([v64 isActionInput])
            {
              v72 = [objc_allocWithZone(WFShortcutInputVariable) init];
              v73 = [v90 setParameterStateToVariable:v72 forKey:v67];

              if ((v73 & 1) == 0)
              {
LABEL_69:

                v76 = sub_1CA3FEE70();
                v77 = OUTLINED_FUNCTION_127(&_s15ConversionErrorON, v76);
                OUTLINED_FUNCTION_30_9(v77, v78, v79, v80, v81, v82, v83, v84, v86, v87, v88);

LABEL_31:
                OUTLINED_FUNCTION_5();
                OUTLINED_FUNCTION_202();

                __asm { BRAA            X1, X16 }
              }
            }

            else
            {
            }
          }

          ++v62;
          if (v65 == v61)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        return;
      }

LABEL_65:
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_202();

    __asm { BRAA            X2, X16 }
  }

  v5 = v4;
  v6 = sub_1CA25B410(v4);
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
LABEL_4:
  for (i = v7; ; ++i)
  {
    if (v6 == i)
    {

      goto LABEL_26;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCAA22D0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v10 = *(v5 + 8 * i + 32);
    }

    v11 = v10;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = [v10 wfParameterKey];
    v13 = sub_1CA94C3A8();
    v15 = v14;

    v16 = [v11 wfSerializedRepresentation];
    if (v16)
    {
      v19 = v16;
      HIDWORD(v86) = swift_isUniquelyReferenced_nonNull_native();
      *&v91 = v8;
      v20 = sub_1CA271BF8(v13, v15);
      if (__OFADD__(v8[2], (v21 & 1) == 0))
      {
        goto LABEL_77;
      }

      v22 = v20;
      LODWORD(v86) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      if (sub_1CA94D588())
      {
        v23 = sub_1CA271BF8(v13, v15);
        if ((v86 & 1) != (v24 & 1))
        {
          goto LABEL_72;
        }

        v22 = v23;
        if (v86)
        {
          goto LABEL_22;
        }

LABEL_18:
        v8[(v22 >> 6) + 8] |= 1 << v22;
        v25 = (v8[6] + 16 * v22);
        *v25 = v13;
        v25[1] = v15;
        *(v8[7] + 8 * v22) = v19;

        v26 = v8[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_78;
        }

        v8[2] = v28;
      }

      else
      {
        if ((v86 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_22:

        *(v8[7] + 8 * v22) = v19;
        swift_unknownObjectRelease();
      }

      goto LABEL_4;
    }

    sub_1CA271BF8(v13, v15);
    v18 = v17;

    if (v18)
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v91 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      sub_1CA94D588();

      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
      OUTLINED_FUNCTION_23();
      sub_1CA94D5A8();

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  OUTLINED_FUNCTION_202();

  sub_1CA94D878();
}

uint64_t sub_1CA3FB1DC(char a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1CA3FB2A0;

  return WFContextualAction.actionRepresentation(takesInput:context:)(a1);
}

uint64_t sub_1CA3FB2A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20_12();
  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  v8 = *(v3 + 32);
  if (v0)
  {
    sub_1CA948AC8();

    (v8)[2](v8, 0, v1);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v3 + 32), v1, 0);
    _Block_release(v8);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1CA3FB490(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1CA3FB524;

  return sub_1CA3FB448();
}

uint64_t sub_1CA3FB524()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_20_12();
  v3 = *v2;
  v4 = *v2;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  v6 = *(v3 + 16);
  if (v0)
  {
    sub_1CA948AC8();

    v7 = OUTLINED_FUNCTION_16_14();
    v8(v7, 0, v1);

    _Block_release(v6);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_16_14();
    v10(v9, v1, 0);
    _Block_release(v6);
  }

  v11 = *(v4 + 8);

  return v11();
}

uint64_t sub_1CA3FB69C()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(WFiTunesSessionManager) init];
  v0[20] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CA981310;
  v4 = [v1 playbackStoreId];
  v5 = [v4 stringValue];

  v6 = sub_1CA94C3A8();
  v8 = v7;

  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  v9 = sub_1CA94C648();
  v0[21] = v9;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA3FB88C;
  OUTLINED_FUNCTION_26_10();
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445058, &qword_1CA9864B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA3FBAC0;
  v0[13] = &block_descriptor_61;
  v0[14] = v10;
  [v2 lookupMediaWithIdentifiers:v9 countryCode:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA3FB88C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_1CA3FBA50;
  }

  else
  {
    v5 = sub_1CA3FB98C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA3FB98C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 144);

  if (sub_1CA25B410(v1))
  {
    sub_1CA275D70(0, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0](0, v1);
    }

    else
    {
      v2 = *(v1 + 32);
    }
  }

  v3 = OUTLINED_FUNCTION_5_23();

  return v4(v3);
}

uint64_t sub_1CA3FBA50()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA3FBAC0(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    sub_1CA25B3D0(0, &unk_1EC445060, off_1E836F608);
    sub_1CA94C658();

    return sub_1CA35FF84();
  }
}

uint64_t sub_1CA3FBB84()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 24) = [*(v0 + 16) mediaItemDescriptor];
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3FBC2C;

  return sub_1CA3FB67C();
}

uint64_t sub_1CA3FBC2C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 40) = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v6 = sub_1CA3FBDC8;
  }

  else
  {

    v6 = sub_1CA3FBD38;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA3FBD38()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 40);
  if (v1)
  {
    [objc_msgSend(objc_allocWithZone(MEMORY[0x1E6996D40]) init)];
  }

  v2 = OUTLINED_FUNCTION_5_23();

  return v3(v2);
}

uint64_t sub_1CA3FBDC8()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA3FBE44(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1CA3FF7B8;

  return sub_1CA3FBB70();
}

id sub_1CA3FBEEC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v2 = [v0 eventIdentifier];
  if (!v2)
  {
    sub_1CA94C3A8();
    v2 = sub_1CA94C368();
  }

  v3 = [v1 eventWithIdentifier_];

  return v3;
}

uint64_t sub_1CA3FBFAC()
{
  OUTLINED_FUNCTION_0();
  v1 = [*(v0 + 16) eventDescriptor];
  if (v1)
  {
    v2 = sub_1CA3FBEEC();

    if (v2)
    {
      [objc_msgSend(objc_allocWithZone(MEMORY[0x1E6996D40]) init)];
    }
  }

  v3 = OUTLINED_FUNCTION_5_23();

  return v4(v3);
}

uint64_t sub_1CA3FC088(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1CA3FF7B8;

  return sub_1CA3FBF98();
}

uint64_t sub_1CA3FC16C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1CA3FF7B8;

  return sub_1CA3FC138();
}

uint64_t sub_1CA3FC230()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x1E6996D40]) init];
  v3 = [v1 destination];
  [v2 addObject_];

  v4 = OUTLINED_FUNCTION_5_23();

  return v5(v4);
}

double sub_1CA3FC2F4(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v7 = a1;
  v8 = OUTLINED_FUNCTION_23();

  return sub_1CA67052C(v8, v9);
}

uint64_t sub_1CA3FC360(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1CA3FC408;

  return sub_1CA3FC21C();
}

uint64_t sub_1CA3FC408()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20_12();
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  v7 = *(v3 + 24);
  if (v0)
  {
    sub_1CA948AC8();

    v8 = OUTLINED_FUNCTION_16_14();
    v9(v8, 0, v1);

    _Block_release(v7);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_16_14();
    v11(v10, v1, 0);
    _Block_release(v7);
  }

  OUTLINED_FUNCTION_9_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t WFPlayMusicContextualAction.actionRepresentation(takesInput:context:)(char a1, uint64_t a2)
{
  *(v3 + 176) = a2;
  *(v3 + 184) = v2;
  *(v3 + 200) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FC590()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 176);
  v2 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1CA3FC688;
  OUTLINED_FUNCTION_26_10();
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
  OUTLINED_FUNCTION_9_18(v4);
  OUTLINED_FUNCTION_12_14(COERCE_DOUBLE(1107296256));
  *(v0 - 48) = v5;
  *(v0 - 40) = &block_descriptor_8;
  *(v0 - 32) = v3;
  *(v0 + 8) = MEMORY[0x1E69E0C40];
  objc_msgSendSuper2(v0, sel__getActionRepresentationTakingInput_context_completionHandler_, v2, v1);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1CA3FC688()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_1CA3FC900;
  }

  else
  {
    v5 = sub_1CA3FC788;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA3FC788()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 168) = &unk_1F4B24F40;
  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_26_10();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v2 = [*(v0 + 184) intent];
    v3 = OUTLINED_FUNCTION_24_10();
    v5 = [v3 v4];

    if (v5 && (v6 = sub_1CA94C1C8(), v5, v7 = sub_1CA3FA4B8(v6), , v7))
    {
      v8 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
      v9 = sub_1CA94C1A8();
    }

    else
    {
      v10 = v1;
      v9 = 0;
    }

    v11 = OUTLINED_FUNCTION_24_10();
    v13 = [v11 v12];

    v1 = v13;
  }

  OUTLINED_FUNCTION_2_4();

  return v14(v1);
}

uint64_t sub_1CA3FC900()
{
  OUTLINED_FUNCTION_14();
  swift_willThrow();
  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA3FC9B0(char a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1CA3FF7B0;

  return WFPlayMusicContextualAction.actionRepresentation(takesInput:context:)(a1, a2);
}

uint64_t WFPlayPodcastEpisodeContextualAction.actionRepresentation(takesInput:context:)(char a1, uint64_t a2)
{
  *(v3 + 176) = a2;
  *(v3 + 184) = v2;
  *(v3 + 200) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FCA90()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 176);
  v2 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1CA3FCB88;
  OUTLINED_FUNCTION_26_10();
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
  OUTLINED_FUNCTION_9_18(v4);
  OUTLINED_FUNCTION_12_14(COERCE_DOUBLE(1107296256));
  *(v0 - 48) = v5;
  *(v0 - 40) = &block_descriptor_5;
  *(v0 - 32) = v3;
  *(v0 + 8) = MEMORY[0x1E69E0C48];
  objc_msgSendSuper2(v0, sel__getActionRepresentationTakingInput_context_completionHandler_, v2, v1);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1CA3FCB88()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_1CA3FF7B4;
  }

  else
  {
    v5 = sub_1CA3FF7C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA3FCCA8(char a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1CA3FF7B0;

  return WFPlayPodcastEpisodeContextualAction.actionRepresentation(takesInput:context:)(a1, a2);
}

id sub_1CA3FCD70(void *a1, uint64_t a2)
{
  v3 = sub_1CA94C368();
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_1CA94C3A8();
    v4 = sub_1CA94C368();
  }

  v5 = WFShortcutsActionIdentifierFromLinkAppAndActionIdentifier(v3, v4);

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1CA94C3A8();
  v8 = v7;

  v9 = [objc_opt_self() sharedProvider];
  v10 = sub_1CA94C1E8();
  v11 = objc_allocWithZone(WFActionRequest);
  v12 = sub_1CA3FEDD0(v6, v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CA9813B0;
  *(v13 + 32) = v12;
  sub_1CA25B3D0(0, &qword_1EC445070, off_1E836DD88);
  v14 = v12;
  v15 = sub_1CA94C648();

  [v9 createActionsForRequests_];

  v16 = [v14 result];
  if (!v16)
  {

    return 0;
  }

  v17 = v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    return 0;
  }

  v19 = v18;
  v20 = v17;
  v21 = [v19 metadata];
  v22 = WFLinkActionSerializedParametersForWFAction(v19, a1, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v23 = sub_1CA94C1C8();

  v24 = sub_1CA3FEF4C(v23, v19);
  return v24;
}

uint64_t WFLinkContextualAction.actionRepresentation(takesInput:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FD034()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  type metadata accessor for AutoShortcutsAppsDataSource(0);
  v0[4] = [v1 linkAction];
  v2 = [v1 appBundleIdentifier];
  sub_1CA94C3A8();
  v4 = v3;

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1CA3FD134;
  OUTLINED_FUNCTION_9_2();

  return sub_1CA52F05C();
}

uint64_t sub_1CA3FD134()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v5[7] = v0;

  if (v0)
  {
    v9 = sub_1CA3FD868;
  }

  else
  {
    v10 = v5[4];
    v5[8] = v3;

    v9 = sub_1CA3FD24C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1CA3FD24C()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
LABEL_11:
    v23 = sub_1CA3F132C(*(v0 + 24), &selRef_wfActionIdentifier);
    v25 = v24;
    v26 = sub_1CA3FEE70();
    OUTLINED_FUNCTION_127(&_s15ConversionErrorON, v26);
    *v27 = v23;
    v27[1] = v25;
    swift_willThrow();
LABEL_12:

    OUTLINED_FUNCTION_5();

    return v28();
  }

  v2 = v1;
  v3 = [v2 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);
  if (!v5)
  {

    goto LABEL_11;
  }

  sub_1CA275D70(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_48;
  }

  for (i = *(v4 + 32); ; i = MEMORY[0x1CCAA22D0](0, v4))
  {
    v7 = i;

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v61 = v7;
    if (v8)
    {
      v9 = v8;
      v10 = *(v0 + 16);
      if (v10)
      {
        v11 = v2;
        v12 = v0;
        v13 = objc_allocWithZone(MEMORY[0x1E69AD048]);
        v14 = v7;
        v15 = v10;
        v16 = [v13 init];
        v17 = [v15 preciseTimestamp];
        v18 = sub_1CA948CB8();
        OUTLINED_FUNCTION_1_0();
        v20 = v19;
        v21 = OUTLINED_FUNCTION_45();
        if (v17)
        {
          sub_1CA948C78();

          v17 = sub_1CA948C58();
          (*(v20 + 8))(v21, v18);
        }

        [v16 setPreciseTimestamp_];

        v22 = sub_1CA3FD8C8([v15 staccatoInteractionType]);
        [v16 setStaccatoInteractionType_];

        [v9 setLinkSystemContext_];
        v0 = v12;
        v2 = v11;
        v7 = v61;
      }

      else
      {
        v30 = v7;
      }

      v31 = *(v0 + 24);
      v32 = v7;
      sub_1CA3F132C(v31, &selRef_extensionBundleIdentifier);
      if (v33)
      {
        v34 = sub_1CA94C368();
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v0 + 24);
      [v9 setPreferredExtensionBundleIdentifier_];

      [v9 setUsesCompactUnlockService_];
      v36 = [v35 authenticationPolicy];
      if (v36 == 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2 * (v36 == 2);
      }

      [v9 setAuthenticationPolicy_];

      v7 = v61;
    }

    v38 = sub_1CA3FEEC4(*(v0 + 24));
    if (!v38)
    {
      break;
    }

    v4 = v38;
    v59 = v2;
    v60 = v0;
    v39 = sub_1CA25B410(v38);
    if (!v39)
    {
LABEL_41:

      v2 = v59;
      v7 = v61;
      break;
    }

    v40 = v39;
    v41 = 0;
    v0 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v0)
      {
        v42 = MEMORY[0x1CCAA22D0](v41, v4);
      }

      else
      {
        if (v41 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v42 = *(v4 + 8 * v41 + 32);
      }

      v1 = v42;
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v44 = [v42 wfParameterKey];
      v45 = v44;
      v46 = v44;
      if (!v44)
      {
        sub_1CA94C3A8();
        v46 = sub_1CA94C368();

        sub_1CA94C3A8();
        v2 = v47;
        v45 = sub_1CA94C368();
      }

      v48 = v44;
      if ([v1 isAskEachTime])
      {

        v49 = [v1 askEachTimeCollectionFilter];
        v50 = [objc_allocWithZone(WFAskEachTimeVariable) initWithCollectionFilter_];

        v2 = [v61 setParameterStateToVariable:v50 forKey:v46];
        if ((v2 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {

        if ([v1 isActionInput])
        {
          v2 = [objc_allocWithZone(WFShortcutInputVariable) init];
          v51 = [v61 setParameterStateToVariable:v2 forKey:v45];

          if ((v51 & 1) == 0)
          {
LABEL_45:
            v53 = *(v60 + 24);

            v54 = sub_1CA3F132C(v53, &selRef_wfActionIdentifier);
            v56 = v55;
            v57 = sub_1CA3FEE70();
            OUTLINED_FUNCTION_127(&_s15ConversionErrorON, v57);
            *v58 = v54;
            v58[1] = v56;
            swift_willThrow();

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      ++v41;
      if (v43 == v40)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  OUTLINED_FUNCTION_2_4();

  return v52(v7);
}

uint64_t sub_1CA3FD868()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_5();

  return v2();
}

id sub_1CA3FD8C8(void *a1)
{
  if (a1)
  {
    v2 = sub_1CA94C3A8();
    v4 = v3;
    if (v2 == sub_1CA94C3A8() && v4 == v5)
    {
      v23 = a1;
    }

    else
    {
      v7 = sub_1CA94D7F8();
      v8 = a1;

      if ((v7 & 1) == 0)
      {
        v9 = sub_1CA94C3A8();
        v11 = v10;
        if (v9 == sub_1CA94C3A8() && v11 == v12)
        {
        }

        else
        {
          v14 = sub_1CA94D7F8();

          if ((v14 & 1) == 0)
          {
            v15 = sub_1CA94C3A8();
            v17 = v16;
            if (v15 != sub_1CA94C3A8() || v17 != v18)
            {
              sub_1CA94D7F8();
            }

            v20 = MEMORY[0x1E69ACD08];
            goto LABEL_25;
          }
        }

        v20 = MEMORY[0x1E69ACCF8];
LABEL_25:
        v25 = *v20;

        return v25;
      }
    }

    v24 = *MEMORY[0x1E69ACCE8];

    return v24;
  }

  v21 = *MEMORY[0x1E69ACD08];

  return v21;
}

uint64_t sub_1CA3FDAE0(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1CA3FF7B0;

  return WFLinkContextualAction.actionRepresentation(takesInput:context:)(0, a2);
}

uint64_t WFAppIntentBasedTopHitContextualAction.actionRepresentation(takesInput:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FDBB8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v0[4] = sub_1CA25B3D0(0, &unk_1EC445040, off_1E836E670);
  v0[5] = [v1 linkAction];
  v2 = [v1 appBundleIdentifier];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  v0[6] = v3;
  v0[7] = v5;
  sub_1CA94C838();
  v0[8] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v7 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA3FDCB8, v7, v6);
}

uint64_t sub_1CA3FDCB8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[5];
  v2 = v0[6];

  v0[9] = sub_1CA3FCD70(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1CA3FDD4C, 0, 0);
}

uint64_t sub_1CA3FDD4C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v3 = objc_allocWithZone(MEMORY[0x1E69AD048]);
      v4 = v2;
      v5 = [v3 init];
      v6 = [v4 preciseTimestamp];
      v7 = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0();
      v9 = v8;
      v10 = OUTLINED_FUNCTION_45();
      if (v6)
      {
        sub_1CA948C78();

        v6 = sub_1CA948C58();
        (*(v9 + 8))(v10, v7);
      }

      [v5 setPreciseTimestamp_];

      v11 = sub_1CA3FD8C8([v4 staccatoInteractionType]);
      [v5 setStaccatoInteractionType_];

      v12 = OUTLINED_FUNCTION_24_10();
      [v12 v13];
    }

    v14 = *(v0 + 24);
    v15 = v1;
    sub_1CA3F132C(v14, &selRef_extensionBundleIdentifier);
    if (v16)
    {
      v17 = sub_1CA94C368();
    }

    else
    {
      v17 = 0;
    }

    v25 = *(v0 + 24);
    [v15 setPreferredExtensionBundleIdentifier_];

    v26 = [v25 authenticationPolicy];
    if (v26 == 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2 * (v26 == 2);
    }

    [v15 setAuthenticationPolicy_];

    OUTLINED_FUNCTION_2_4();

    return v28(v15);
  }

  else
  {
    v18 = sub_1CA3F132C(*(v0 + 24), &selRef_wfActionIdentifier);
    v20 = v19;
    v21 = sub_1CA3FEE70();
    OUTLINED_FUNCTION_127(&_s15ConversionErrorON, v21);
    *v22 = v18;
    v22[1] = v20;
    swift_willThrow();
    OUTLINED_FUNCTION_5();

    return v23();
  }
}

uint64_t sub_1CA3FE030(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1CA3FF7B0;

  return WFAppIntentBasedTopHitContextualAction.actionRepresentation(takesInput:context:)(0, a2);
}

uint64_t WFAutoShortcutContextualAction.actionRepresentation(takesInput:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA3FE108()
{
  v1 = *(v0 + 160);
  v2 = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  *(v0 + 168) = v2;
  v3 = [v1 bundleIdentifier];
  if (!v3)
  {
    sub_1CA94C3A8();
    v3 = sub_1CA94C368();
  }

  *(v0 + 176) = v3;
  v4 = [*(v0 + 160) phrase];
  v5 = [v4 basePhraseTemplate];

  if (!v5)
  {
    sub_1CA94C3A8();
    v5 = sub_1CA94C368();
  }

  *(v0 + 184) = v5;
  v6 = [*(v0 + 160) actionIdentifier];
  if (!v6)
  {
    sub_1CA94C3A8();
    v6 = sub_1CA94C368();
  }

  *(v0 + 192) = v6;
  v7 = [*(v0 + 160) phrase];
  v8 = [v7 parameterIdentifier];

  v9 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_45();
  if (v8)
  {
    sub_1CA948CF8();

    v8 = sub_1CA948CD8();
    (*(v11 + 8))(v12, v9);
  }

  *(v0 + 200) = v8;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1CA3FE404;
  v13 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454E0, &unk_1CA987600);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CA3FC964;
  *(v0 + 104) = &block_descriptor_12_0;
  *(v0 + 112) = v13;
  [v2 retrieveActionForBundleIdentifier:v3 basePhraseTemplate:v5 actionIdentifier:v6 parameterIdentifier:v8 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1CA3FE404()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  if (v4)
  {
    v5 = sub_1CA3FEABC;
  }

  else
  {
    v5 = sub_1CA3FE504;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA3FE504()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[27] = v0[18];

  type metadata accessor for AutoShortcutsAppsDataSource(0);
  v0[28] = [v5 phrase];
  v6 = [v5 bundleIdentifier];
  sub_1CA94C3A8();
  v8 = v7;

  v0[29] = v8;
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_1CA3FE630;

  return sub_1CA52F05C();
}

uint64_t sub_1CA3FE630()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_1();
  *v6 = v5;
  *(v8 + 248) = v7;
  *(v8 + 256) = v0;

  v9 = *(v2 + 224);

  if (v0)
  {
    v10 = sub_1CA3FEB50;
  }

  else
  {
    v10 = sub_1CA3FE770;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1CA3FE770()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = [*(v0 + 248) actions];
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v3 = sub_1CA94C658();

    if (sub_1CA25B410(v3))
    {
      sub_1CA275D70(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1CCAA22D0](0, v3);
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = v4;
      v6 = *(v0 + 152);

      if (v6)
      {
        v7 = *(v0 + 152);
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          v10 = objc_allocWithZone(MEMORY[0x1E69AD048]);
          v11 = v7;
          v33 = v5;
          v12 = [v10 init];
          v13 = [v11 preciseTimestamp];
          v14 = sub_1CA948CB8();
          OUTLINED_FUNCTION_1_0();
          v16 = v15;
          v17 = OUTLINED_FUNCTION_45();
          if (v13)
          {
            sub_1CA948C78();

            v13 = sub_1CA948C58();
            (*(v16 + 8))(v17, v14);
          }

          [v12 setPreciseTimestamp_];

          v18 = sub_1CA3FD8C8([v11 staccatoInteractionType]);
          [v12 setStaccatoInteractionType_];

          v19 = v33;
          v20 = v12;
          [v9 setLinkSystemContext_];
        }
      }

      v21 = *(v0 + 216);
      v22 = *(v0 + 168);

      OUTLINED_FUNCTION_2_4();

      return v23(v5);
    }
  }

  v25 = *(v0 + 216);
  v26 = *(v0 + 168);
  v27 = sub_1CA3F132C(*(v0 + 160), &selRef_wfActionIdentifier);
  v29 = v28;
  v30 = sub_1CA3FEE70();
  OUTLINED_FUNCTION_127(&_s15ConversionErrorON, v30);
  *v31 = v27;
  v31[1] = v29;
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v32();
}

uint64_t sub_1CA3FEABC(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[23];
  v3 = v1[24];
  v6 = v1[21];
  v5 = v1[22];
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA3FEB50()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t *sub_1CA3FEBB4(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

double sub_1CA3FEC84(void *a1, int a2, char a3, void *a4, void *aBlock, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = v9;
  *(v10 + 40) = a1;
  v11 = a4;
  v12 = a1;
  v13 = OUTLINED_FUNCTION_23();

  return sub_1CA67052C(v13, v14);
}

uint64_t sub_1CA3FED0C(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1CA3FF7B0;

  return WFAutoShortcutContextualAction.actionRepresentation(takesInput:context:)(0, a2);
}

id sub_1CA3FEDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CA94C368();

  if (a3)
  {
    v6 = sub_1CA94C1A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithActionIdentifier:v5 serializedParameters:v6];

  return v7;
}

unint64_t sub_1CA3FEE70()
{
  result = qword_1EC444FA0;
  if (!qword_1EC444FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444FA0);
  }

  return result;
}

uint64_t sub_1CA3FEEC4(void *a1)
{
  v1 = [a1 parameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EC445088, 0x1E69E0A48);
  v3 = sub_1CA94C658();

  return v3;
}

id sub_1CA3FEF4C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = sub_1CA94C1A8();

  v4 = [a2 copyWithSerializedParameters_];

  return v4;
}

uint64_t sub_1CA3FEFD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA3FF028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1CA3FF08C()
{
  result = qword_1EC445050;
  if (!qword_1EC445050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445050);
  }

  return result;
}

uint64_t sub_1CA3FF0E0()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF170()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF200()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF290()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF320()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CA3FF3B0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_1CA3FF440()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_1CA3FF4D0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_1CA3FF560()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t objectdestroy_38Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA3FF630()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA3FF708()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_9_2();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

id sub_1CA3FF7C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFRemoteAppEntityContentItem();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1CA3FF81C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFRemoteAppEntityContentItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1CA3FF8A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFRemoteAppEntityContentItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1CA3FF934()
{
  v146 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9B5030;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v149 = inited;
  v148 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438("Gets the contents of a folder in Instapaper. Requires Instapaper Premium.", 73);
  v150 = v10;
  v11 = sub_1CA94C438("Gets the contents of a folder in Instapaper. Requires Instapaper Premium.", 73);
  v13 = v12;
  v14 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v152 = v15;
  v155 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v137 - v155;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v153 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v151 = v19;
  v154 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v137 - v154;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v9, v150, v11, v13, 0, 0, v16, v20);
  v150 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v150;
  *(v6 + 40) = v22;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v23 = sub_1CA94C1E8();
  v24 = v148;
  v25 = sub_1CA6B3784(v23);
  v26 = v149;
  v149[15] = v25;
  v26[18] = v24;
  v26[19] = @"Name";
  v27 = @"Name";
  v28 = sub_1CA94C438("Get Instapaper Bookmarks (Action Name)", 38);
  v30 = v29;
  v31 = sub_1CA94C438("Get Instapaper Bookmarks", 24);
  v33 = v32;
  v148 = &v137;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v137 - v155;
  sub_1CA948D98();
  v35 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v137 - v154;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26[20] = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  v26[23] = v150;
  v26[24] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA9813C0;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x614E74757074754FLL;
  *(v38 + 88) = 0xEA0000000000656DLL;
  v40 = @"Output";
  v41 = sub_1CA94C438("Instapaper Bookmarks (Default Output Name)", 42);
  v147 = v42;
  v43 = sub_1CA94C438("Instapaper Bookmarks", 20);
  v45 = v44;
  v148 = &v137;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v137 - v155;
  sub_1CA948D98();
  v47 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v137 - v154;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v38 + 96) = sub_1CA2F9F14(v41, v147, v43, v45, 0, 0, v46, v48);
  *(v38 + 120) = v150;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 136) = 0xE500000000000000;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 168) = v145;
  *(v38 + 144) = &unk_1F49F9568;
  v50 = MEMORY[0x1E69E6158];
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[25] = v51;
  v26[28] = v52;
  v26[29] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v148 = swift_allocObject();
  *(v148 + 1) = xmmword_1CA981360;
  v147 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v53 = swift_initStackObject();
  v141 = xmmword_1CA981380;
  *(v53 + 16) = xmmword_1CA981380;
  *(v53 + 32) = @"AlwaysShowsButton";
  *(v53 + 40) = 1;
  *(v53 + 64) = MEMORY[0x1E69E6370];
  *(v53 + 72) = @"Class";
  *(v53 + 80) = 0xD00000000000001DLL;
  *(v53 + 88) = 0x80000001CA99FB10;
  *(v53 + 104) = v50;
  *(v53 + 112) = @"Description";
  v140 = @"Class";
  v54 = @"Parameters";
  v55 = @"AlwaysShowsButton";
  v56 = @"Description";
  v143 = sub_1CA94C438("The folder to get bookmarks from. Leaving this empty will get items from Instapaper's Home folder. (WFInstapaperFolder)", 119);
  v139 = v57;
  v58 = sub_1CA94C438("The folder to get bookmarks from. Leaving this empty will get items from Instapaper's Home folder.", 98);
  v138 = v59;
  v144 = &v137;
  MEMORY[0x1EEE9AC00](v58);
  v60 = v155;
  sub_1CA948D98();
  v61 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v137 - v154;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 120) = sub_1CA2F9F14(v143, v139, v58, v138, 0, 0, &v137 - v60, v62);
  v64 = v150;
  *(v53 + 144) = v150;
  *(v53 + 152) = @"Key";
  *(v53 + 160) = 0xD000000000000012;
  *(v53 + 168) = 0x80000001CA9B5230;
  *(v53 + 184) = MEMORY[0x1E69E6158];
  *(v53 + 192) = @"Label";
  v139 = @"Key";
  v65 = @"Label";
  v143 = sub_1CA94C438("Folder (WFInstapaperFolder)", 27);
  v138 = v66;
  v67 = sub_1CA94C438("Folder", 6);
  v137 = v68;
  v144 = &v137;
  MEMORY[0x1EEE9AC00](v67);
  sub_1CA948D98();
  v69 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v137 - v154;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v143, v138, v67, v137, 0, 0, &v137 - v60, v70);
  *(v53 + 224) = v64;
  *(v53 + 200) = v72;
  v73 = sub_1CA94C368();
  v74 = MEMORY[0x1E69E6158];
  *(v53 + 264) = MEMORY[0x1E69E6158];
  *(v53 + 232) = v73;
  *(v53 + 240) = 1701736270;
  *(v53 + 248) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  v144 = v75;
  v143 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v76 = sub_1CA94C1E8();
  v77 = sub_1CA2F864C(v76);
  v148[4] = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = v141;
  *(v78 + 32) = v140;
  *(v78 + 40) = 0xD000000000000012;
  *(v78 + 48) = 0x80000001CA99B980;
  *(v78 + 80) = 5;
  v79 = MEMORY[0x1E69E6530];
  *(v78 + 64) = v74;
  *(v78 + 72) = @"DefaultValue";
  v80 = v139;
  *(v78 + 104) = v79;
  *(v78 + 112) = v80;
  *(v78 + 120) = 0x616D6B6F6F424657;
  *(v78 + 128) = 0xEF746E756F436B72;
  *(v78 + 144) = v74;
  *(v78 + 152) = @"StepperDescription";
  v81 = @"DefaultValue";
  v82 = @"StepperDescription";
  v83 = sub_1CA94C438("Number of Bookmarks (WFBookmarkCount)", 37);
  v85 = v84;
  v86 = sub_1CA94C438("Number of Bookmarks", 19);
  v88 = v87;
  v142 = &v137;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v137 - v155;
  sub_1CA948D98();
  v90 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v137 - v154;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 160) = sub_1CA2F9F14(v83, v85, v86, v88, 0, 0, v89, v91);
  *(v78 + 184) = v150;
  *(v78 + 192) = @"StepperNoun";
  v93 = @"StepperNoun";
  v94 = sub_1CA94C438("%d Bookmarks", v137);
  v142 = v94;
  v96 = v95;
  *&v141 = v95;
  v160 = 0;
  v161 = 0xE000000000000000;
  sub_1CA94D408();

  v160 = v94;
  v161 = v96;
  v158 = 10;
  v159 = 0xE100000000000000;
  v156 = 32;
  v157 = 0xE100000000000000;
  sub_1CA27BAF0();
  v160 = sub_1CA94D1B8();
  v161 = v97;
  v98 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v140 = &v137;
  v99 = v160;
  v139 = v161;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v137 - v155;
  sub_1CA948D98();
  v101 = v153;
  v102 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v154;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 200) = sub_1CA2F9F14(v99, v139, v142, v141, 0, 0, v100, &v137 - v103);
  *(v78 + 224) = v150;
  *(v78 + 232) = @"StepperPrefix";
  v105 = @"StepperPrefix";
  v106 = sub_1CA94C438("Get (WFBookmarkCount)", 21);
  *&v141 = v107;
  v108 = sub_1CA94C438("Get", 3);
  v110 = v109;
  v142 = &v137;
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v137 - v155;
  sub_1CA948D98();
  v112 = [v101 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v106, v141, v108, v110, 0, 0, v111, &v137 - v103);
  *(v78 + 264) = v150;
  *(v78 + 240) = v114;
  v115 = sub_1CA94C1E8();
  v116 = sub_1CA2F864C(v115);
  v117 = v148;
  v148[5] = v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v119 = v149;
  v149[30] = v117;
  v119[33] = v118;
  v119[34] = @"ParameterSummary";
  v120 = @"ParameterSummary";
  v121 = sub_1CA94C438("Get ${WFBookmarkCount} from ${WFInstapaperFolder} (Parameter Summary)", 69);
  v123 = v122;
  v124 = sub_1CA94C438("Get ${WFBookmarkCount} from ${WFInstapaperFolder}", 49);
  v126 = v125;
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v137 - v155;
  sub_1CA948D98();
  v128 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v137 - v154;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v121, v123, v124, v126, 0, 0, v127, v129);
  v132 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v133 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v134 = v149;
  v149[35] = v132;
  v134[38] = v133;
  v134[39] = @"RequiredResources";
  v134[43] = v145;
  v134[40] = &unk_1F49F9598;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v135 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void *LibraryModel.FolderCollection.workflowCollection(id:)()
{
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
  sub_1CA94B858();
  type metadata accessor for LibraryModel.FolderCollection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
  result = sub_1CA94B858();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v4 >> 16))
  {
    v1 = objc_allocWithZone(MEMORY[0x1E69E0DD0]);
    v2 = OUTLINED_FUNCTION_116();
    return sub_1CA27E214(v2, v3, 1, v4, v5, v4, 0);
  }

  __break(1u);
  return result;
}

void LibraryModel.CategoryCollection.workflowCollection(id:)()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_69();
  v1 = sub_1CA94C368();
  v2 = WFWorkflowTypeForCollectionIdentifier(v1);

  if (!v2)
  {
    sub_1CA949C58();
    sub_1CA94C218();
    v10 = sub_1CA949F68();
    v11 = sub_1CA94CC28();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v12 = 136446210;
      v13 = OUTLINED_FUNCTION_69();
      *(v12 + 4) = sub_1CA26B54C(v13, v14, v15);
      _os_log_impl(&dword_1CA256000, v10, v11, "Can't map collection identifier to workflow type. Identifier: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    v16 = OUTLINED_FUNCTION_3_3();
    v17(v16);
    goto LABEL_7;
  }

  v3 = WFHumanReadableNameForWorkflowType();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1CA94C3A8();
    v7 = v6;

    objc_allocWithZone(MEMORY[0x1E69E0DD0]);
    sub_1CA94C218();
    v8 = OUTLINED_FUNCTION_69();
    sub_1CA27E214(v8, v9, 0, v5, v7, 0, 0);

LABEL_7:
    OUTLINED_FUNCTION_36();
    return;
  }

  __break(1u);
}

uint64_t static LibraryError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v35 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1CA94D7F8();
      v37 = OUTLINED_FUNCTION_69();
      sub_1CA405144(v37, v38, 0);
      v39 = OUTLINED_FUNCTION_3_3();
      sub_1CA405144(v39, v40, 0);
      v41 = OUTLINED_FUNCTION_3_3();
      sub_1CA40515C(v41, v42, 0);
      v18 = OUTLINED_FUNCTION_69();
      v20 = 0;
      goto LABEL_24;
    }

    sub_1CA405144(v35, v2, 0);
    v55 = OUTLINED_FUNCTION_3_3();
    sub_1CA405144(v55, v56, 0);
    v57 = OUTLINED_FUNCTION_3_3();
    sub_1CA40515C(v57, v58, 0);
    v34 = OUTLINED_FUNCTION_3_3();
    v60 = 0;
LABEL_83:
    sub_1CA40515C(v34, v59, v60);
    return 1;
  }

  if (v4 != 1)
  {
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_10;
        }

        v75 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v75, v76, 2u);
        v29 = 1;
        v52 = 1;
        v53 = 0;
        v54 = 2;
        goto LABEL_26;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_10;
        }

        v67 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v67, v68, 2u);
        v34 = 2;
        break;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_10;
        }

        v71 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v71, v72, 2u);
        v34 = 3;
        break;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_10;
        }

        v63 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v63, v64, 2u);
        v34 = 4;
        break;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_10;
        }

        v79 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v79, v80, 2u);
        v34 = 5;
        break;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_10;
        }

        v83 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v83, v84, 2u);
        v34 = 6;
        break;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_10;
        }

        v32 = OUTLINED_FUNCTION_3_3();
        sub_1CA40515C(v32, v33, 2u);
        v34 = 0;
        break;
    }

    v59 = 0;
    v60 = 2;
    goto LABEL_83;
  }

  if (v7 != 1)
  {
LABEL_10:
    v21 = OUTLINED_FUNCTION_69();
    sub_1CA405144(v21, v22, v7);
    v23 = OUTLINED_FUNCTION_3_3();
    sub_1CA405144(v23, v24, v4);
    v25 = OUTLINED_FUNCTION_3_3();
    sub_1CA40515C(v25, v26, v4);
    v27 = OUTLINED_FUNCTION_69();
    sub_1CA40515C(v27, v28, v7);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    v29 = 1;
    v43 = OUTLINED_FUNCTION_10_13();
    sub_1CA405144(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_10_13();
    sub_1CA405144(v46, v47, v48);
    v49 = OUTLINED_FUNCTION_10_13();
    sub_1CA40515C(v49, v50, v51);
    v52 = OUTLINED_FUNCTION_10_13();
LABEL_26:
    sub_1CA40515C(v52, v53, v54);
    return v29;
  }

  OUTLINED_FUNCTION_3_3();
  v9 = sub_1CA94D7F8();
  v10 = OUTLINED_FUNCTION_69();
  sub_1CA405144(v10, v11, 1u);
  v12 = OUTLINED_FUNCTION_10_13();
  sub_1CA405144(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_10_13();
  sub_1CA40515C(v15, v16, v17);
  v18 = OUTLINED_FUNCTION_69();
  v20 = 1;
LABEL_24:
  sub_1CA40515C(v18, v19, v20);
  return v9 & 1;
}

id sub_1CA4010FC(char a1, char a2)
{
  v2[OBJC_IVAR___WFLibraryMergeResult_hasDeltaFromOther] = a1;
  v2[OBJC_IVAR___WFLibraryMergeResult_hasDeltaFromOriginal] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LibraryMergeResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1CA401224()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450F8, &unk_1CA9867E0);
  swift_allocObject();
  result = sub_1CA94B788();
  qword_1EC445098 = result;
  return result;
}

uint64_t static Library.setSharedContextURL(_:)()
{
  sub_1CA94C128();
  OUTLINED_FUNCTION_40();
  sub_1CA948BA8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_0();
  v1 = OUTLINED_FUNCTION_116();
  v2(v1);
  return sub_1CA94C0E8();
}

void Library.init(identifier:data:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v28 = v7;
  v8 = sub_1CA94C168();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v25[7] = v11 - v10;
  type metadata accessor for LibraryModel(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v25[4] = v14;
  v25[5] = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v26 = v16;
  v27 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  sub_1CA25CF98(v4, v2);
  OUTLINED_FUNCTION_1_27();
  sub_1CA25C5E8(v20, v21, &protocol conformance descriptor for LibraryModel);
  OUTLINED_FUNCTION_14_17();
  v25[6] = v22;
  sub_1CA94BF58();
  (*(v26 + 32))(&v0[OBJC_IVAR___WFLibrary_capsule], v19, v27);
  v23 = &v0[OBJC_IVAR___WFLibrary_identifier];
  *v23 = v28;
  *(v23 + 1) = v6;
  v24 = type metadata accessor for Library(0);
  v29.receiver = v0;
  v29.super_class = v24;
  objc_msgSendSuper2(&v29, sel_init);
  sub_1CA266F2C(v4, v2);
  OUTLINED_FUNCTION_36();
}

void Library.__allocating_init(identifier:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_116();
  Library.init(identifier:)();
}

void Library.init(identifier:)()
{
  OUTLINED_FUNCTION_37_0();
  v32 = v0;
  v33 = v1;
  v34 = v2;
  v3 = sub_1CA94C168();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v5 = type metadata accessor for LibraryModel(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = OUTLINED_FUNCTION_177();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_9_11();
  sub_1CA25C3BC(v17, &qword_1EC443BA0, &unk_1CA9844D0, v18);
  OUTLINED_FUNCTION_8_7();
  sub_1CA25C3BC(v19, &qword_1EC443BA0, &unk_1CA9844D0, v20);
  sub_1CA94BC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_76();
  sub_1CA25C3BC(v21, &unk_1EC443950, &unk_1CA982580, v22);
  OUTLINED_FUNCTION_75();
  sub_1CA25C3BC(v23, &unk_1EC443950, &unk_1CA982580, v24);
  OUTLINED_FUNCTION_177();
  sub_1CA94BDC8();
  *(v9 + *(v5 + 24)) = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_1_27();
  sub_1CA25C5E8(v25, v26, &protocol conformance descriptor for LibraryModel);
  sub_1CA94C038();
  v27 = v32;
  (*(v11 + 32))(&v32[OBJC_IVAR___WFLibrary_capsule], v14, v31);
  v28 = &v27[OBJC_IVAR___WFLibrary_identifier];
  v29 = v34;
  *v28 = v33;
  *(v28 + 1) = v29;
  v30 = type metadata accessor for Library(0);
  v35.receiver = v27;
  v35.super_class = v30;
  objc_msgSendSuper2(&v35, sel_init);
  OUTLINED_FUNCTION_36();
}

id sub_1CA401C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR___WFLibrary_identifier];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = OBJC_IVAR___WFLibrary_capsule;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a3, v7);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for Library(0);
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a3, v7);
  return v9;
}

void sub_1CA401D50()
{
  OUTLINED_FUNCTION_37_0();
  v60 = v0;
  v3 = v2;
  v61 = v4;
  v65 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v62 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19();
  v64 = (v7 - v8);
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v59 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444100, &qword_1CA982730);
  OUTLINED_FUNCTION_1_0();
  v73 = v12;
  v74 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_27_4();
  v15 = type metadata accessor for LibraryModel.FolderCollection(v14);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v19 = v18 - v17;
  v20 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
  v72 = sub_1CA25B410(v3);
  if (v72)
  {
    v21 = 0;
    v71 = v3 & 0xC000000000000001;
    v67 = v3 & 0xFFFFFFFFFFFFFF8;
    v66 = v3 + 32;
    v22 = v20;
    v69 = v1;
    v70 = v3;
    v68 = v19;
    while (1)
    {
      if (v71)
      {
        v23 = MEMORY[0x1CCAA22D0](v21, v3);
      }

      else
      {
        if (v21 >= *(v67 + 16))
        {
          goto LABEL_29;
        }

        v23 = *(v66 + 8 * v21);
      }

      v78 = v23;
      v24 = __OFADD__(v21, 1);
      v25 = v21 + 1;
      if (v24)
      {
        break;
      }

      v76 = v25;
      v26 = OBJC_IVAR___WFLibraryCollection_workflowCollection;
      v27 = v78;
      v28 = [*&v78[OBJC_IVAR___WFLibraryCollection_workflowCollection] name];
      sub_1CA94C3A8();

      [*&v27[v26] glyphCharacter];
      LibraryModel.FolderCollection.init(name:glyphCharacter:)();
      v77 = v26;
      v29 = [*&v27[v26] identifier];
      v30 = sub_1CA94C3A8();
      v32 = v31;

      v33 = *(v74 + 48);
      *v1 = v30;
      v1[1] = v32;
      sub_1CA406768(v19, v1 + v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E5840();
        v22 = v48;
      }

      v34 = *(v22 + 16);
      if (v34 >= *(v22 + 24) >> 1)
      {
        sub_1CA2E5840();
        v22 = v49;
      }

      *(v22 + 16) = v34 + 1;
      sub_1CA379A04(v1, v22 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v34, &qword_1EC444100, &qword_1CA982730);
      v35 = *&v78[OBJC_IVAR___WFLibraryCollection_shortcutIdentifiers];
      v36 = *(v35 + 16);
      if (v36)
      {
        v75 = v22;
        v79 = v20;
        sub_1CA2B8EF4(0, v36, 0);
        v20 = v79;
        v37 = (v35 + 40);
        do
        {
          v39 = *(v37 - 1);
          v38 = *v37;
          v40 = *&v78[v77];
          sub_1CA94C218();
          v41 = [v40 identifier];
          v42 = sub_1CA94C3A8();
          v44 = v43;

          v79 = v20;
          v46 = *(v20 + 16);
          v45 = *(v20 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_1CA2B8EF4((v45 > 1), v46 + 1, 1);
            v20 = v79;
          }

          *(v20 + 16) = v46 + 1;
          v47 = (v20 + 32 * v46);
          v47[4] = v39;
          v47[5] = v38;
          v47[6] = v42;
          v47[7] = v44;
          v37 += 2;
          --v36;
        }

        while (v36);
        v1 = v69;
        v3 = v70;
        v22 = v75;
        v19 = v68;
      }

      sub_1CA2B7DD0(v20);

      sub_1CA4067C0(v19, type metadata accessor for LibraryModel.FolderCollection);
      v21 = v76;
      v20 = MEMORY[0x1E69E7CC0];
      if (v76 == v72)
      {
        v81 = v22;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v22 = v20;
LABEL_21:
    sub_1CA949C58();
    v50 = v61;
    sub_1CA94C218();
    v51 = sub_1CA949F68();
    v52 = sub_1CA94CC38();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134349568;
      *(v53 + 4) = *(v22 + 16);
      *(v53 + 12) = 2050;
      *(v53 + 14) = *(v50 + 16);

      *(v53 + 22) = 2050;
      OUTLINED_FUNCTION_14_17();
      swift_beginAccess();
      *(v53 + 24) = *(v80 + 16);
      _os_log_impl(&dword_1CA256000, v51, v52, "About to overwrite library. This should happen once per device, the first time OS 26 or later runs on the device.\n %{public}ld library folders \n %{public}ld root shortcuts \n %{public}ld shortcuts in folders.", v53, 0x20u);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {
    }

    v54 = *(v62 + 8);
    v55 = v54(v63, v65);
    MEMORY[0x1EEE9AC00](v55);
    *(&v59 - 4) = v50;
    *(&v59 - 3) = &v81;
    *(&v59 - 2) = &v80;
    OUTLINED_FUNCTION_16_0();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
    sub_1CA94BFF8();
    swift_endAccess();
    sub_1CA949C58();
    sub_1CA94C218();
    sub_1CA94C218();
    v56 = sub_1CA949F68();
    v57 = sub_1CA94CC38();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134349312;
      *(v58 + 4) = *(v50 + 16);

      *(v58 + 12) = 2050;
      *(v58 + 14) = sub_1CA25B410(v3);

      _os_log_impl(&dword_1CA256000, v56, v57, "Finished overwriting library with %{public}ld top-level shortcuts and %{public}ld folders.", v58, 0x16u);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {
    }

    v54(v64, v65);

    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1CA4024A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v7 = *a3;
  swift_beginAccess();
  v8 = *a4;
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA2CA42C(a2, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1CA4025E0()
{
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  Capsule<>.capsuleData(persistenceMode:)();
  swift_endAccess();
  return OUTLINED_FUNCTION_23();
}

id sub_1CA402728(char *a1)
{
  v99 = a1;
  sub_1CA94BC48();
  OUTLINED_FUNCTION_1_0();
  v90 = v4;
  v91 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v89 = v6 - v5;
  v98 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v88 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v97 = (v9 - v10);
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v80[-v12];
  sub_1CA94C198();
  OUTLINED_FUNCTION_1_0();
  v94 = v14;
  v95 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19();
  v93 = v15 - v16;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_97();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_19();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v80[-v26];
  v28 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v29 = *(v20 + 16);
  v85 = v28;
  v92 = v1;
  v30 = &v1[v28];
  v31 = v18;
  v29(v27, v30, v18);
  sub_1CA94C008();
  v32 = *(v20 + 8);
  v86 = v27;
  (v32)(v27, v31);
  v33 = OBJC_IVAR___WFLibrary_capsule;
  v34 = v99;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v82 = v33;
  v84 = v20 + 16;
  v83 = v29;
  v29(v24, &v34[v33], v31);
  v35 = v93;
  sub_1CA94C008();
  v87 = v20 + 8;
  (v32)(v24, v31);
  LOBYTE(v33) = sub_1CA94C188();
  v36 = v94[1];
  v37 = v35;
  v38 = v95;
  v36(v37, v95);
  v36(v2, v38);
  if (v33)
  {
    sub_1CA2D9AF4();
    swift_allocError();
    *v39 = xmmword_1CA986550;
    *(v39 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v94 = v32;
    v93 = *MEMORY[0x1E69E1098];
    sub_1CA949C58();
    v40 = v92;
    v41 = v34;
    v95 = v40;
    v42 = v41;
    v43 = sub_1CA949F68();
    v44 = sub_1CA94CC38();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134218752;
      v81 = v44;
      v46 = v95;
      v47 = [v95 folders];
      sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
      v48 = sub_1CA94C658();

      v49 = sub_1CA25B410(v48);

      *(v45 + 4) = v49;

      *(v45 + 12) = 2048;
      v50 = [v42 folders];
      v51 = sub_1CA94C658();

      v52 = sub_1CA25B410(v51);

      *(v45 + 14) = v52;

      *(v45 + 22) = 2048;
      v53 = [v46 shortcutIdentifiers];
      v54 = sub_1CA94C658();

      v55 = *(v54 + 16);

      *(v45 + 24) = v55;

      *(v45 + 32) = 2048;
      v56 = [v42 shortcutIdentifiers];
      v57 = sub_1CA94C658();

      v58 = *(v57 + 16);

      *(v45 + 34) = v58;

      _os_log_impl(&dword_1CA256000, v43, v81, "Merging libraries: %ld/%ld folders, %ld/%ld shortcuts", v45, 0x2Au);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {

      v59 = v95;
      v43 = v42;
    }

    v60 = v88;
    v61 = v89;

    v62 = *(v60 + 8);
    v62(v96, v98);
    v63 = v86;
    v83(v86, &v99[v82], v31);
    OUTLINED_FUNCTION_16_0();
    swift_beginAccess();
    type metadata accessor for LibraryModel(0);
    OUTLINED_FUNCTION_1_27();
    sub_1CA25C5E8(v64, v65, &protocol conformance descriptor for LibraryModel);
    sub_1CA94BFE8();
    (v94)(v63, v31);
    swift_endAccess();
    sub_1CA949C58();
    v66 = v95;
    v67 = sub_1CA949F68();
    v68 = sub_1CA94CC38();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134218240;
      v70 = [v66 folders];
      sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
      v71 = sub_1CA94C658();

      v72 = sub_1CA25B410(v71);

      *(v69 + 4) = v72;

      *(v69 + 12) = 2048;
      v73 = [v66 shortcutIdentifiers];
      v74 = sub_1CA94C658();

      v75 = *(v74 + 16);

      *(v69 + 14) = v75;

      _os_log_impl(&dword_1CA256000, v67, v68, "Merged libraries, now %ld folders, %ld shortcuts", v69, 0x16u);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {

      v67 = v66;
    }

    v62(v97, v98);
    v76 = sub_1CA94BC28();
    v77 = sub_1CA94BC38();
    v78 = objc_allocWithZone(type metadata accessor for LibraryMergeResult());
    v38 = sub_1CA4010FC(v76 & 1, v77 & 1);
    (*(v90 + 8))(v61, v91);
  }

  return v38;
}

void sub_1CA403074()
{
  OUTLINED_FUNCTION_37_0();
  v35 = v2;
  sub_1CA94C198();
  OUTLINED_FUNCTION_1_0();
  v33 = v4;
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v19 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v20 = *(v13 + 16);
  v31 = v19;
  v32 = v0;
  v20(v1, v0 + v19, v11);
  v21 = OBJC_IVAR___WFLibrary_capsule;
  v22 = v35;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v29 = v21;
  v30 = v20;
  v20(v17, v22 + v21, v11);
  sub_1CA94C008();
  sub_1CA94C008();
  LOBYTE(v21) = sub_1CA94C188();
  v23 = *(v33 + 8);
  v24 = v7;
  v25 = v34;
  v23(v24, v34);
  v23(v10, v25);
  v26 = *(v13 + 8);
  v26(v17, v11);
  v26(v1, v11);
  if ((v21 & 1) == 0)
  {
    v27 = v30;
    v30(v1, v32 + v31, v11);
    v27(v17, v35 + v29, v11);
    sub_1CA94C018();
    v26(v17, v11);
    v26(v1, v11);
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA403398()
{
  OUTLINED_FUNCTION_37_0();
  v28 = v1;
  sub_1CA94C198();
  OUTLINED_FUNCTION_1_0();
  v30 = v3;
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19();
  v29 = (v4 - v5);
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v19 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v20 = *(v11 + 16);
  v20(v18, v0 + v19, v9);
  v21 = OBJC_IVAR___WFLibrary_capsule;
  v22 = v28;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v20(v15, v22 + v21, v9);
  sub_1CA94C008();
  v23 = v29;
  sub_1CA94C008();
  sub_1CA94C188();
  v24 = *(v30 + 8);
  v25 = v23;
  v26 = v31;
  v24(v25, v31);
  v24(v8, v26);
  v27 = *(v11 + 8);
  v27(v15, v9);
  v27(v18, v9);
  OUTLINED_FUNCTION_36();
}

uint64_t Library.Replica.id.getter()
{
  sub_1CA948D28();
  OUTLINED_FUNCTION_52();
  v0 = OUTLINED_FUNCTION_23();

  return v1(v0);
}

void sub_1CA4036DC()
{
  OUTLINED_FUNCTION_37_0();
  v104 = type metadata accessor for Library.Replica(0);
  OUTLINED_FUNCTION_1_0();
  v103 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v107 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_4();
  v113 = sub_1CA94D998();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_97();
  v18 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  (*(v9 + 16))(v1, v0 + v18, v7);
  *(&v124 + 1) = sub_1CA94C198();
  __swift_allocate_boxed_opaque_existential_1(&v123);
  sub_1CA94C008();
  v19 = OUTLINED_FUNCTION_116();
  v20(v19);
  sub_1CA94D988();
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69E61B0];
  *(&v124 + 1) = MEMORY[0x1E69E6158];
  v125 = MEMORY[0x1E69E61B0];
  *&v123 = 0x6C616E6966;
  *(&v123 + 1) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450C8, &unk_1CA986568);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 56) = v21;
  *(v23 + 64) = v22;
  *(v23 + 32) = 1852138867;
  *(v23 + 40) = 0xE400000000000000;
  sub_1CA94D978();

  __swift_destroy_boxed_opaque_existential_0(&v123);
  if (v120)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450D0, &qword_1CA986578);
    if (swift_dynamicCast())
    {
      v101 = v2;
      v24 = *(v123 + 64);
      v106 = v123 + 64;
      v109 = v123;
      v25 = 1 << *(v123 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v12;
      v28 = v26 & v24;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450D8, &qword_1CA986580);
      v100[1] = v100;
      v30 = OUTLINED_FUNCTION_18_0(v29);
      v112 = *(v31 + 64);
      v32 = MEMORY[0x1EEE9AC00](v30);
      v111 = v33;
      v34 = v100 - v33;
      v35 = 0;
      v105 = (v25 + 63) >> 6;
      v102 = v27;
      v110 = (v27 + 8);
      v108 = MEMORY[0x1E69E7CC0];
      v116 = v100 - v33;
      v115 = v16;
      while (1)
      {
        while (1)
        {
          MEMORY[0x1EEE9AC00](v32);
          v36 = v100 - v111;
          if (!v28)
          {
            while (1)
            {
              v37 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                break;
              }

              if (v37 >= v105)
              {
                v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450E0, &unk_1CA986588);
                __swift_storeEnumTagSinglePayload(v36, 1, 1, v84);
                v28 = 0;
                goto LABEL_13;
              }

              v28 = *(v106 + 8 * v37);
              ++v35;
              if (v28)
              {
                v118 = v100;
                v35 = v37;
                goto LABEL_12;
              }
            }

            __break(1u);

            __break(1u);
            return;
          }

          v118 = v100;
          v37 = v35;
LABEL_12:
          v38 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v39 = v38 | (v37 << 6);
          v40 = v109;
          sub_1CA2F6AB4(*(v109 + 48) + 40 * v39, &v123);
          v41 = sub_1CA9491F8();
          v42 = *(v41 - 8);
          MEMORY[0x1EEE9AC00](v41);
          v44 = v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v42 + 16))(v44, *(v40 + 56) + *(v45 + 72) * v39, v41);
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450E0, &unk_1CA986588);
          v47 = *(v46 + 48);
          v48 = v124;
          *v36 = v123;
          *(v36 + 1) = v48;
          *(v36 + 4) = v125;
          (*(v42 + 32))(&v36[v47], v44, v41);
          __swift_storeEnumTagSinglePayload(v36, 0, 1, v46);
          v34 = v116;
          v16 = v115;
LABEL_13:
          sub_1CA379A04(v36, v34, &qword_1EC4450D8, &qword_1CA986580);
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4450E0, &unk_1CA986588);
          if (__swift_getEnumTagSinglePayload(v34, 1, v49) == 1)
          {

            v12 = v102;
            v2 = v101;
            v99 = v108;
            goto LABEL_30;
          }

          v50 = sub_1CA9491F8();
          v118 = v100;
          OUTLINED_FUNCTION_1_0();
          v22 = v51;
          MEMORY[0x1EEE9AC00](v52);
          OUTLINED_FUNCTION_6_0();
          v55 = v54 - v53;
          v56 = *(v49 + 48);
          v57 = *(v34 + 1);
          v123 = *v34;
          v124 = v57;
          v125 = *(v34 + 4);
          (v22)[4](v55, &v34[v56], v50);
          sub_1CA94D398();
          sub_1CA94D988();
          v58 = v16;
          v59 = sub_1CA948D28();
          v117 = v100;
          OUTLINED_FUNCTION_1_0();
          v114 = v60;
          MEMORY[0x1EEE9AC00](v61);
          OUTLINED_FUNCTION_6_0();
          v16 = v63 - v62;
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
          OUTLINED_FUNCTION_18_0(v64);
          OUTLINED_FUNCTION_29();
          MEMORY[0x1EEE9AC00](v65);
          v67 = v100 - v66;
          v120 = MEMORY[0x1E69E6158];
          v121 = MEMORY[0x1E69E61B0];
          v119[0] = 1684632949;
          v119[1] = 0xE400000000000000;
          sub_1CA94D978();
          __swift_destroy_boxed_opaque_existential_0(v119);
          if (v122[3])
          {
            break;
          }

          (*v110)(v58, v113);
          v73 = OUTLINED_FUNCTION_12_15();
          v74(v73);
          sub_1CA323ADC(&v123);
          sub_1CA27080C(v122, &unk_1EC444650, &unk_1CA981C70);
          __swift_storeEnumTagSinglePayload(v67, 1, 1, v59);
          v16 = v58;
LABEL_18:
          v32 = sub_1CA27080C(v67, &qword_1EC443BC8, &qword_1CA9834A0);
          v34 = v116;
        }

        v68 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v67, v68 ^ 1u, 1, v59);
        if (__swift_getEnumTagSinglePayload(v67, 1, v59) == 1)
        {
          v69 = OUTLINED_FUNCTION_9_19();
          v70(v69);
          v71 = OUTLINED_FUNCTION_12_15();
          v72(v71);
          sub_1CA323ADC(&v123);
          goto LABEL_18;
        }

        v75 = v114;
        (*(v114 + 32))(v16, v67, v59);
        v76 = sub_1CA404268();
        if (v77)
        {
          v78 = OUTLINED_FUNCTION_177();
          v79(v78);
          v80 = OUTLINED_FUNCTION_9_19();
          v81(v80);
          v82 = OUTLINED_FUNCTION_12_15();
          v83(v82);
          v32 = sub_1CA323ADC(&v123);
          v34 = v116;
        }

        else
        {
          v85 = v76;
          v86 = v107;
          (*(v75 + 16))(v107, v16, v59);
          v87 = sub_1CA949138();
          v88 = v104;
          *(v86 + *(v104 + 20)) = v85;
          *(v86 + *(v88 + 24)) = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA2E593C();
            v108 = v97;
          }

          v89 = *(v108 + 16);
          v34 = v116;
          if (v89 >= *(v108 + 24) >> 1)
          {
            sub_1CA2E593C();
            v108 = v98;
          }

          v90 = OUTLINED_FUNCTION_177();
          v91(v90);
          v92 = OUTLINED_FUNCTION_9_19();
          v93(v92);
          v94 = OUTLINED_FUNCTION_12_15();
          v95(v94);
          sub_1CA323ADC(&v123);
          v96 = v108;
          *(v108 + 16) = v89 + 1;
          v32 = sub_1CA4051D8(v107, v96 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v89);
        }
      }
    }
  }

  else
  {
    sub_1CA27080C(v119, &unk_1EC444650, &unk_1CA981C70);
  }

  v99 = MEMORY[0x1E69E7CC0];
LABEL_30:
  *&v123 = v99;
  sub_1CA94C218();
  sub_1CA40509C(&v123);
  (*(v12 + 8))(v2, v113);

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA404268()
{
  v16 = *MEMORY[0x1E69E9840];
  v15[0] = sub_1CA948D08();
  v15[1] = v0;
  v1 = sub_1CA4066EC(v15, &v16);
  if (v1[2] < 7uLL)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    sub_1CA42B264();
    v2 = v14;
    goto LABEL_4;
  }

  v2 = v1;
  if ((*(v1 + 38) & 0xF0) == 0x70)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  v3 = 0;
  v4 = v2[2];
  do
  {
    if (v3 >= v4)
    {
      __break(1u);
      goto LABEL_18;
    }

    *(v2 + v3 + 32) ^= byte_1F49F95D8[v3 + 32];
    ++v3;
  }

  while (v3 != 16);
  if ((*(v2 + 38) & 0xF0) != 0x70)
  {

    *&result = 0.0;
    return result;
  }

LABEL_8:
  sub_1CA6A6B30();
  v8 = (v7 >> 1) - v6;
  if (v7 >> 1 == v6)
  {

    swift_unknownObjectRelease();
    v9 = 0.0;
  }

  else
  {
    if ((v7 >> 1) <= v6)
    {
      __break(1u);
    }

    v10 = 0;
    v11 = (v5 + v6);
    do
    {
      v12 = *v11++;
      v10 = v12 | (v10 << 8);
      --v8;
    }

    while (v8);

    swift_unknownObjectRelease();
    v9 = v10;
  }

  *&result = v9 / 1000.0;
  return result;
}

void sub_1CA404404()
{
  OUTLINED_FUNCTION_37_0();
  v29 = v0;
  v31 = v1;
  v32 = v2;
  v34[1] = *MEMORY[0x1E69E9840];
  v30 = sub_1CA94CD38();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  sub_1CA94CD08();
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v10 = sub_1CA94B7D8();
  v11 = OUTLINED_FUNCTION_18_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v12 = sub_1CA94B7B8();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v17 - v16;
  sub_1CA25B3D0(0, &qword_1EDB9FAD0, 0x1E69E9610);
  (*(v14 + 104))(v18, *MEMORY[0x1E69E7F98], v12);
  sub_1CA94CD88();
  (*(v14 + 8))(v18, v12);
  sub_1CA94B7C8();
  v33[0] = MEMORY[0x1E69E7CC0];
  sub_1CA25C5E8(&qword_1EC441A08, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4461C0, qword_1CA98A910);
  sub_1CA25C3BC(&unk_1EC441AF0, &unk_1EC4461C0, qword_1CA98A910, MEMORY[0x1E69E6328]);
  sub_1CA94D2A8();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v30);
  v19 = sub_1CA94CD78();
  v34[0] = 0;
  if (qword_1EC442D30 != -1)
  {
    swift_once();
  }

  sub_1CA94CD18();
  v20 = swift_allocObject();
  v20[2] = v31;
  v20[3] = v32;
  v20[4] = v34;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1CA40561C;
  *(v21 + 24) = v20;
  v33[4] = sub_1CA40564C;
  v33[5] = v21;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  v33[2] = sub_1CA4048AC;
  v33[3] = &block_descriptor_9;
  v22 = _Block_copy(v33);

  v23 = OUTLINED_FUNCTION_3_3();
  dispatch_sync(v23, v24);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  v25 = v34[0];
  v26 = *v29;
  *v29 = v34[0];
  v27 = v25;

  v28 = v34[0];

  OUTLINED_FUNCTION_36();
}

void sub_1CA404934()
{
  OUTLINED_FUNCTION_37_0();
  v1 = sub_1CA94C168();
  v2 = OUTLINED_FUNCTION_18_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v3 = type metadata accessor for LibraryModel(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = sub_1CA94C3A8();
  v25 = v12;
  v26 = v11;
  v13 = v0 + OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_9_11();
  sub_1CA25C3BC(v14, &qword_1EC443BA0, &unk_1CA9844D0, v15);
  OUTLINED_FUNCTION_8_7();
  sub_1CA25C3BC(v16, &qword_1EC443BA0, &unk_1CA9844D0, v17);
  sub_1CA94BC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_76();
  sub_1CA25C3BC(v18, &unk_1EC443950, &unk_1CA982580, v19);
  OUTLINED_FUNCTION_75();
  sub_1CA25C3BC(v20, &unk_1EC443950, &unk_1CA982580, v21);
  sub_1CA94BDC8();
  *(v7 + *(v3 + 24)) = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_1_27();
  sub_1CA25C5E8(v22, v23, &protocol conformance descriptor for LibraryModel);
  sub_1CA94C038();
  v27 = v13;
  sub_1CA94BFF8();
  swift_endAccess();
  objc_allocWithZone(type metadata accessor for Library(0));
  sub_1CA401C64(v26, v25, v10);
  OUTLINED_FUNCTION_36();
}

id sub_1CA404C90(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1CA404D64()
{
  sub_1CA94C3A8();
  v0 = objc_allocWithZone(MEMORY[0x1E69E0DD0]);
  v1 = OUTLINED_FUNCTION_23();
  result = sub_1CA27E214(v1, v2, 0, v3, v4, 0, 0);
  qword_1EC442C60 = result;
  return result;
}

id static LibraryModel.FolderCollection.rootWorkflowCollection.getter()
{
  if (qword_1EC442C58 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC442C60;

  return v1;
}

id LibraryCollection.__allocating_init(workflowCollection:shortcutIdentifiers:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_116();
  return LibraryCollection.init(workflowCollection:shortcutIdentifiers:)(v2, v3);
}

id LibraryCollection.init(workflowCollection:shortcutIdentifiers:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___WFLibraryCollection_workflowCollection] = a1;
  *&v2[OBJC_IVAR___WFLibraryCollection_shortcutIdentifiers] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LibraryCollection();
  return objc_msgSendSuper2(&v4, sel_init);
}

id LibraryCollection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1CA40509C(uint64_t *a1)
{
  v2 = *(type metadata accessor for Library.Replica(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6277EC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1CA40568C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1CA405144(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_1CA94C218();
  }

  return result;
}

uint64_t sub_1CA40515C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1CA4051D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Replica(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit12LibraryErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1CA4052AC(uint64_t a1)
{
  sub_1CA25C1DC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1CA405544(uint64_t a1)
{
  result = sub_1CA948D28();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA40568C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Library.Replica(0);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Library.Replica(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CA4059DC(v8, v9, a1, v4);
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
    return sub_1CA4057BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA4057BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Library.Replica(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v34 = v21;
      v35 = a3;
      v32 = v24;
      v33 = v23;
      do
      {
        sub_1CA406768(v24, v18);
        sub_1CA406768(v21, v14);
        v25 = *(v8 + 20);
        v26 = *&v18[v25];
        v27 = *&v14[v25];
        sub_1CA4067C0(v14, type metadata accessor for Library.Replica);
        result = sub_1CA4067C0(v18, type metadata accessor for Library.Replica);
        if (v26 >= v27)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_1CA4051D8(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1CA4051D8(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA4059DC(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v112 = a1;
  v8 = type metadata accessor for Library.Replica(0);
  v119 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v115 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v124 = &v108 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v108 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v108 - v17;
  v121 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_100:
    a3 = *v112;
    if (!*v112)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v102 = v21 + 16;
      v101 = *(v21 + 2);
      for (i = v21; v101 >= 2; v21 = i)
      {
        if (!*v121)
        {
          goto LABEL_138;
        }

        v103 = &v21[16 * v101];
        v104 = *v103;
        v105 = &v102[2 * v101];
        v106 = *(v105 + 1);
        sub_1CA406288(*v121 + *(v119 + 72) * *v103, *v121 + *(v119 + 72) * *v105, *v121 + *(v119 + 72) * v106, a3);
        if (v5)
        {
          break;
        }

        if (v106 < v104)
        {
          goto LABEL_126;
        }

        if (v101 - 2 >= *v102)
        {
          goto LABEL_127;
        }

        *v103 = v104;
        *(v103 + 1) = v106;
        v107 = *v102 - v101;
        if (*v102 < v101)
        {
          goto LABEL_128;
        }

        v101 = *v102 - 1;
        sub_1CA627628(v105 + 16, v107, v105);
        *v102 = v101;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v21 = sub_1CA627610();
    goto LABEL_102;
  }

  v125 = v16;
  v110 = a4;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v116 = &v108 - v17;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v20 + 1 < v19)
    {
      v24 = *v121;
      a3 = *(v119 + 72);
      i = v19;
      v123 = v20 + 1;
      v25 = v24 + a3 * v23;
      v26 = v24;
      sub_1CA406768(v25, v18);
      sub_1CA406768(v26 + a3 * v22, v15);
      v27 = *(v125 + 20);
      v28 = *&v18[v27];
      v29 = *&v15[v27];
      sub_1CA4067C0(v15, type metadata accessor for Library.Replica);
      sub_1CA4067C0(v18, type metadata accessor for Library.Replica);
      v30 = i;
      v111 = v22;
      v31 = v22 + 2;
      v120 = a3;
      v32 = v26 + a3 * (v22 + 2);
      while (1)
      {
        v33 = v31;
        if (++v123 >= v30)
        {
          break;
        }

        a3 = v28 < v29;
        sub_1CA406768(v32, v18);
        sub_1CA406768(v25, v15);
        v34 = *(v125 + 20);
        v35 = *&v18[v34];
        v36 = *&v15[v34];
        sub_1CA4067C0(v15, type metadata accessor for Library.Replica);
        sub_1CA4067C0(v18, type metadata accessor for Library.Replica);
        v30 = i;
        v32 += v120;
        v25 += v120;
        v31 = v33 + 1;
        if (v28 < v29 == v35 >= v36)
        {
          goto LABEL_9;
        }
      }

      v123 = v30;
LABEL_9:
      if (v28 < v29)
      {
        v23 = v123;
        if (v123 < v111)
        {
          goto LABEL_132;
        }

        if (v111 >= v123)
        {
          v22 = v111;
          goto LABEL_31;
        }

        i = v21;
        v109 = v5;
        if (v30 >= v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = v30;
        }

        v38 = v120 * (v37 - 1);
        v39 = v120 * v37;
        v40 = v111 * v120;
        v41 = v111;
        do
        {
          if (v41 != --v23)
          {
            a3 = *v121;
            if (!*v121)
            {
              goto LABEL_139;
            }

            sub_1CA4051D8(a3 + v40, v115);
            v42 = v40 < v38 || a3 + v40 >= a3 + v39;
            if (v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1CA4051D8(v115, a3 + v38);
          }

          ++v41;
          v38 -= v120;
          v39 -= v120;
          v40 += v120;
        }

        while (v41 < v23);
        v5 = v109;
        v21 = i;
      }

      v23 = v123;
      v22 = v111;
    }

LABEL_31:
    v43 = v121[1];
    if (v23 < v43)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < v110)
      {
        break;
      }
    }

LABEL_47:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CA2E49C0(0, *(v21 + 2) + 1, 1, v21);
      v21 = v99;
    }

    a3 = *(v21 + 2);
    v57 = *(v21 + 3);
    v58 = a3 + 1;
    if (a3 >= v57 >> 1)
    {
      sub_1CA2E49C0(v57 > 1, a3 + 1, 1, v21);
      v21 = v100;
    }

    *(v21 + 2) = v58;
    v59 = v21 + 32;
    v60 = &v21[16 * a3 + 32];
    v61 = v123;
    *v60 = v22;
    *(v60 + 1) = v61;
    v120 = *v112;
    if (!v120)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      i = v21;
      while (1)
      {
        v62 = v58 - 1;
        v63 = &v59[16 * v58 - 16];
        v64 = &v21[16 * v58];
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v65 = *(v21 + 4);
          v66 = *(v21 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_68:
          if (v68)
          {
            goto LABEL_117;
          }

          v80 = *v64;
          v79 = *(v64 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_120;
          }

          v84 = *(v63 + 1);
          v85 = v84 - *v63;
          if (__OFSUB__(v84, *v63))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v82, v85))
          {
            goto LABEL_125;
          }

          if (v82 + v85 >= v67)
          {
            if (v67 < v85)
            {
              v62 = v58 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v58 < 2)
        {
          goto LABEL_119;
        }

        v87 = *v64;
        v86 = *(v64 + 1);
        v75 = __OFSUB__(v86, v87);
        v82 = v86 - v87;
        v83 = v75;
LABEL_83:
        if (v83)
        {
          goto LABEL_122;
        }

        v89 = *v63;
        v88 = *(v63 + 1);
        v75 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v75)
        {
          goto LABEL_124;
        }

        if (v90 < v82)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v62 - 1 >= v58)
        {
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
          goto LABEL_134;
        }

        if (!*v121)
        {
          goto LABEL_137;
        }

        v94 = &v59[16 * v62 - 16];
        v95 = *v94;
        a3 = v62;
        v96 = &v59[16 * v62];
        v97 = *(v96 + 1);
        sub_1CA406288(*v121 + *(v119 + 72) * *v94, *v121 + *(v119 + 72) * *v96, *v121 + *(v119 + 72) * v97, v120);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v97 < v95)
        {
          goto LABEL_112;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_113;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        if (a3 >= v5)
        {
          goto LABEL_114;
        }

        v58 = v5 - 1;
        sub_1CA627628(v96 + 16, v5 - 1 - a3, v96);
        v21 = i;
        *(i + 16) = v5 - 1;
        v98 = v5 > 2;
        v5 = 0;
        v18 = v116;
        if (!v98)
        {
          goto LABEL_97;
        }
      }

      v69 = &v59[16 * v58];
      v70 = *(v69 - 8);
      v71 = *(v69 - 7);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_115;
      }

      v74 = *(v69 - 6);
      v73 = *(v69 - 5);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_116;
      }

      v76 = *(v64 + 1);
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_118;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_121;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = *(v63 + 1);
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_129;
        }

        if (v67 < v93)
        {
          v62 = v58 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v19 = v121[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_100;
    }
  }

  v44 = v22 + v110;
  if (__OFADD__(v22, v110))
  {
    goto LABEL_133;
  }

  if (v44 >= v43)
  {
    v44 = v121[1];
  }

  if (v44 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v44)
  {
    goto LABEL_47;
  }

  i = v21;
  v109 = v5;
  a3 = *v121;
  v45 = *(v119 + 72);
  v46 = *v121 + v45 * (v23 - 1);
  v47 = -v45;
  v111 = v22;
  v48 = v22 - v23;
  v113 = v45;
  v114 = v44;
  v49 = a3 + v23 * v45;
LABEL_40:
  v123 = v23;
  v117 = v49;
  v118 = v48;
  v120 = v46;
  v50 = v46;
  v51 = v125;
  while (1)
  {
    sub_1CA406768(v49, v18);
    sub_1CA406768(v50, v15);
    v52 = *(v51 + 20);
    v53 = *&v18[v52];
    v54 = *&v15[v52];
    sub_1CA4067C0(v15, type metadata accessor for Library.Replica);
    sub_1CA4067C0(v18, type metadata accessor for Library.Replica);
    if (v53 >= v54)
    {
LABEL_45:
      v23 = v123 + 1;
      v46 = v120 + v113;
      v48 = v118 - 1;
      v49 = v117 + v113;
      if (v123 + 1 == v114)
      {
        v23 = v114;
        v5 = v109;
        v21 = i;
        v22 = v111;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!a3)
    {
      break;
    }

    v55 = v124;
    sub_1CA4051D8(v49, v124);
    v51 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_1CA4051D8(v55, v50);
    v50 += v47;
    v49 += v47;
    v42 = __CFADD__(v48++, 1);
    if (v42)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_1CA406288(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for Library.Replica(0);
  v9 = MEMORY[0x1EEE9AC00](v53);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v47 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v56 = a1;
  v55 = a4;
  v20 = v18 / v16;
  v47[1] = v4;
  if ((a2 - a1) / v16 >= v18 / v16)
  {
    v50 = v11;
    sub_1CA43F148(a2, v18 / v16, a4);
    v28 = a4 + v20 * v16;
    v29 = -v16;
    v30 = v28;
    v31 = a3;
    v51 = -v16;
    v49 = a1;
LABEL_37:
    v52 = a2 + v29;
    v32 = v31;
    v47[0] = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v56 = a2;
        v54 = v30;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v30;
      v33 = a2;
      v34 = a4;
      v31 = v32 + v51;
      v35 = v28 + v51;
      v36 = v28;
      sub_1CA406768(v28 + v51, v14);
      v37 = v14;
      v38 = v50;
      sub_1CA406768(v52, v50);
      v39 = *(v53 + 20);
      v40 = *(v37 + v39);
      v41 = *(v38 + v39);
      v42 = v38;
      v14 = v37;
      sub_1CA4067C0(v42, type metadata accessor for Library.Replica);
      sub_1CA4067C0(v37, type metadata accessor for Library.Replica);
      if (v40 < v41)
      {
        v44 = v32 < v33 || v31 >= v33;
        a4 = v34;
        if (v44)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v48;
          a1 = v49;
          v29 = v51;
          v28 = v36;
        }

        else
        {
          a1 = v49;
          v30 = v48;
          v17 = v32 == v33;
          v29 = v51;
          v45 = v52;
          a2 = v52;
          v28 = v36;
          if (!v17)
          {
            v46 = v48;
            swift_arrayInitWithTakeBackToFront();
            v28 = v36;
            a2 = v45;
            v30 = v46;
          }
        }

        goto LABEL_37;
      }

      v43 = v32 < v36 || v31 >= v36;
      a4 = v34;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v31;
        v28 = v35;
        v30 = v35;
        a2 = v33;
        a1 = v49;
      }

      else
      {
        v30 = v35;
        v17 = v36 == v32;
        v32 = v31;
        v28 = v35;
        a2 = v33;
        a1 = v49;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v31;
          v28 = v35;
          v30 = v35;
        }
      }
    }

    v56 = a2;
    v54 = v47[0];
  }

  else
  {
    sub_1CA43F148(a1, (a2 - a1) / v16, a4);
    v21 = a4 + (a2 - a1) / v16 * v16;
    v54 = v21;
    while (a4 < v21 && a2 < a3)
    {
      sub_1CA406768(a2, v14);
      sub_1CA406768(a4, v11);
      v23 = *(v53 + 20);
      v24 = *&v14[v23];
      v25 = *&v11[v23];
      sub_1CA4067C0(v11, type metadata accessor for Library.Replica);
      sub_1CA4067C0(v14, type metadata accessor for Library.Replica);
      if (v24 >= v25)
      {
        if (a1 < a4 || a1 >= a4 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v55 = a4 + v16;
        a4 += v16;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      a1 += v16;
      v56 = a1;
    }
  }

LABEL_59:
  sub_1CA434FDC(&v56, &v55, &v54);
  return 1;
}

void *sub_1CA4066EC(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1CA26B874(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA406768(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v4(v3);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

uint64_t sub_1CA4067C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_1CA406854()
{
  v82 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9B55E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("select|email|address|e-mail|addressbook", 39);
  v6 = v5;
  v7 = sub_1CA94C438("select|email|address|e-mail|addressbook", 39);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v88 = v11;
  v12 = &v76 - v87;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v86 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v84 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v76 - v85;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v83 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 144) = v81;
  *(inited + 120) = v21;
  *(inited + 152) = sub_1CA94C368();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v80 = v22;
  *(inited + 160) = &unk_1F49F9648;
  *(inited + 184) = v22;
  *(inited + 192) = @"Description";
  v79 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Prompts to pick an email address from your contacts and passes the selection to the next action.", 96);
  v77 = v27;
  v28 = sub_1CA94C438("Prompts to pick an email address from your contacts and passes the selection to the next action.", 96);
  v30 = v29;
  v78 = &v76;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v76 - v87;
  sub_1CA948D98();
  v32 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v76 - v85;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v77, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v83;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v79;
  *(inited + 200) = sub_1CA6B3784(v36);
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 1851881795;
  *(inited + 248) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  strcpy((inited + 280), "envelope.fill");
  *(inited + 294) = -4864;
  *(inited + 304) = v38;
  *(inited + 312) = @"InputPassthrough";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 320) = 0;
  *(inited + 344) = v39;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v39;
  *(inited + 392) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"InputPassthrough";
  v43 = @"LocallyProcessesData";
  v44 = @"Name";
  v45 = sub_1CA94C438("Select Email Address (Action Name)", 34);
  v47 = v46;
  v48 = sub_1CA94C438("Select Email Address", 20);
  v50 = v49;
  v79 = &v76;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v76 - v87;
  sub_1CA948D98();
  v52 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v76 - v85;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 424) = v83;
  *(inited + 432) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1CA9813C0;
  *(v55 + 32) = 0x656C7069746C754DLL;
  *(v55 + 40) = 0xE800000000000000;
  *(v55 + 48) = 1;
  *(v55 + 72) = MEMORY[0x1E69E6370];
  *(v55 + 80) = 0x614E74757074754FLL;
  *(v55 + 88) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438("Email Addresses (Default Output Name)", 37);
  v78 = v58;
  v59 = sub_1CA94C438("Email Addresses", 15);
  v61 = v60;
  v79 = &v76;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v76 - v87;
  sub_1CA948D98();
  v63 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v76 - v85;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v57, v78, v59, v61, 0, 0, v62, v64);
  v67 = v80;
  *(v55 + 96) = v66;
  *(v55 + 120) = v83;
  *(v55 + 128) = 0x7365707954;
  *(v55 + 168) = v67;
  *(v55 + 136) = 0xE500000000000000;
  *(v55 + 144) = &unk_1F49F9678;
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 440) = v68;
  *(inited + 464) = v69;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F49F96A8;
  *(inited + 504) = v67;
  *(inited + 512) = @"SuggestedAsInitialAction";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 0;
  *(inited + 552) = @"UserInterfaceClasses";
  v70 = @"RequiredResources";
  v71 = @"SuggestedAsInitialAction";
  v72 = @"UserInterfaceClasses";
  v73 = sub_1CA94C1E8();
  *(inited + 584) = v81;
  *(inited + 560) = v73;
  *(inited + 592) = @"UserInterfaces";
  *(inited + 624) = v67;
  *(inited + 600) = &unk_1F49F9758;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v74 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA407254()
{
  v74 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9B5760;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("desktop|screensaver|flurry", 26);
  v6 = v5;
  v7 = sub_1CA94C438("desktop|screensaver|flurry", 26);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80 = v11;
  v12 = &v70 - v79;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v78 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v76 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v70 - v77;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v75 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000017;
  *(inited + 128) = 0x80000001CA9B57A0;
  v20 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1851881795;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = v20;
  *(inited + 192) = @"Description";
  v73 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"IconSymbol";
  v23 = @"IconColor";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Starts the screen saver selected in the Desktop & Screen Saver preference pane.", 79);
  v71 = v27;
  v28 = sub_1CA94C438("Starts the screen saver selected in the Desktop & Screen Saver preference pane.", 79);
  v30 = v29;
  v72 = &v70;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v70 - v79;
  sub_1CA948D98();
  v32 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v70 - v77;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v71, v28, v30, 0, 0, v31, v33);
  *(v21 + 64) = v75;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v73;
  *(inited + 200) = sub_1CA6B3784(v36);
  *(inited + 224) = v37;
  *(inited + 232) = @"Name";
  v38 = @"Name";
  v39 = sub_1CA94C438("Start Screen Saver (Action Name)", 32);
  v41 = v40;
  v42 = sub_1CA94C438("Start Screen Saver", 18);
  v44 = v43;
  v73 = &v70;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v70 - v79;
  sub_1CA948D98();
  v46 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v70 - v77;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  *(inited + 264) = v75;
  *(inited + 272) = @"Parameters";
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 280) = MEMORY[0x1E69E7CC0];
  *(inited + 304) = v49;
  *(inited + 312) = @"ParameterSummary";
  v50 = @"Parameters";
  v51 = @"ParameterSummary";
  v52 = sub_1CA94C438("Start screen saver (Parameter Summary)", 38);
  v54 = v53;
  v55 = sub_1CA94C438("Start screen saver", 18);
  v57 = v56;
  v75 = &v70;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v70 - v79;
  sub_1CA948D98();
  v59 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v70 - v77;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v62 = sub_1CA2F9F14(v52, v54, v55, v57, 0, 0, v58, v60);
  v63 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v64 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v63;
  *(inited + 344) = v64;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1CA9813B0;
  v81 = 2;
  v82 = 0;
  v66 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v67 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v81);
  *(v65 + 32) = v68;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 360) = v65;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t DrawerAction.associatedDonation.getter()
{
  type metadata accessor for DrawerAction(0);

  return swift_unknownObjectRetain();
}

uint64_t DrawerAction.attributionContainer.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_51_5();

  return sub_1CA407B48(v1 + v3, a1);
}

uint64_t sub_1CA407B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA407BB8()
{
  v1 = v0;
  v2 = sub_1CA94A4E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA94A288();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CA408490(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 32))(v9, v12, v6);
      v14 = [objc_opt_self() sharedRegistry];
      sub_1CA94A248();
      v15 = sub_1CA94C368();

      v16 = [v14 createActionWithIdentifier:v15 serializedParameters:0];

      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v3 + 32))(v5, v12, v2);
      v18 = [objc_opt_self() sharedRegistry];
      sub_1CA94A498();
      v19 = sub_1CA94C368();

      v16 = [v18 createActionWithIdentifier:v19 serializedParameters:0];

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    v17 = *v12;
    v16 = [*v12 copyForDuplicating];
  }

  return v16;
}

uint64_t static DrawerAction.debugActionIdentifiers.getter()
{
  if (qword_1EC442D40 != -1)
  {
    OUTLINED_FUNCTION_39_5(&qword_1EC442D40);
  }

  return sub_1CA94C218();
}

void DrawerAction.init(wfAction:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DrawerAction(0);
  v5 = v4[6];
  v6 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  *a2 = a1;
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_93();
  swift_storeEnumTagMultiPayload();
  v10 = a1;
  sub_1CA27080C(a2 + v5, &qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  *(a2 + v4[5]) = 0;
  v14 = [v10 identifier];
  v15 = sub_1CA94C3A8();
  v17 = v16;

  v18 = (a2 + v4[7]);
  *v18 = v15;
  v18[1] = v17;
}

void DrawerAction.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1CA408140(a1, MEMORY[0x1E69DA9F8], 1, MEMORY[0x1E69DA9E8], MEMORY[0x1E69DA9F0], a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  sub_1CA408140(a1, MEMORY[0x1E69DAAD0], 2, MEMORY[0x1E69DAAC0], MEMORY[0x1E69DAAC8], a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1CA40808C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CA408140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v30);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = OUTLINED_FUNCTION_53_6();
  v35 = type metadata accessor for DrawerAction(v34);
  v36 = v35[6];
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v27(0);
  OUTLINED_FUNCTION_27_1();
  v41 = OUTLINED_FUNCTION_23();
  v42(v41);
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_93();
  v43 = swift_storeEnumTagMultiPayload();
  v25(v43);
  v44 = sub_1CA40808C(v33, v29 + v36);
  *(v29 + v35[5]) = 0;
  v23(v44);
  OUTLINED_FUNCTION_59();
  v45 = OUTLINED_FUNCTION_35();
  v46(v45);
  v47 = (v29 + v35[7]);
  *v47 = v23;
  v47[1] = v25;
  OUTLINED_FUNCTION_36();
}

uint64_t DrawerAction.id.getter()
{
  OUTLINED_FUNCTION_20_13();
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

void DrawerAction.title.getter()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_4();
  sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v3 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for DrawerAction.DrawerActionStorage(v3);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_25();
  v5 = OUTLINED_FUNCTION_29_7();
  sub_1CA408490(v5, v6);
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = OUTLINED_FUNCTION_15_10();
      v9(v8);
      sub_1CA94A268();
      v10 = OUTLINED_FUNCTION_27_14();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_14_18();
      v15(v14);
      sub_1CA94A4B8();
      v10 = OUTLINED_FUNCTION_28_8();
    }

    v11(v10);
  }

  else
  {
    v12 = *v0;
    v13 = [*v0 localizedName];
    sub_1CA94C3A8();
  }

  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA408490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void DrawerAction.subtitle.getter()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_4();
  sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v3 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for DrawerAction.DrawerActionStorage(v3);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_25();
  v5 = OUTLINED_FUNCTION_29_7();
  sub_1CA408490(v5, v6);
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = OUTLINED_FUNCTION_15_10();
      v9(v8);
      sub_1CA94A218();
      v10 = OUTLINED_FUNCTION_27_14();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_14_18();
      v14(v13);
      sub_1CA94A478();
      v10 = OUTLINED_FUNCTION_28_8();
    }

    v11(v10);
  }

  else
  {
    v12 = *v0;
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    if (swift_dynamicCastObjCClass() || (v15 = [v12 localizedDescriptionSummary]) == 0)
    {
    }

    else
    {
      v16 = v15;
      sub_1CA94C3A8();
    }
  }

  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_36();
}

void DrawerAction.description.getter()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_4();
  sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v3 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for DrawerAction.DrawerActionStorage(v3);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_25();
  v5 = OUTLINED_FUNCTION_29_7();
  sub_1CA408490(v5, v6);
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = OUTLINED_FUNCTION_15_10();
      v9(v8);
      sub_1CA94A218();
      v10 = OUTLINED_FUNCTION_27_14();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_14_18();
      v16(v15);
      sub_1CA94A478();
      v10 = OUTLINED_FUNCTION_28_8();
    }

    v11(v10);
  }

  else
  {
    v12 = *v0;
    v13 = [*v0 localizedDescriptionSummary];
    if (v13)
    {
      v14 = v13;
      sub_1CA94C3A8();
    }
  }

  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_36();
}

void DrawerAction.icon.getter()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA94A4E8();
  OUTLINED_FUNCTION_1_0();
  v87 = v3;
  v88 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v86 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_1();
  v81 = v8;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_48_0();
  v84 = v10;
  OUTLINED_FUNCTION_25_0();
  v89 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  v83 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_1();
  v80 = v13;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_48_0();
  v82 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445110, &dword_1CA9834B8);
  v17 = OUTLINED_FUNCTION_18_0(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v91 = sub_1CA94A648();
  OUTLINED_FUNCTION_1_0();
  v85 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_19();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_1_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_0();
  v36 = v35 - v34;
  v37 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for DrawerAction.DrawerActionStorage(v37);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1_4();
  v90 = v0;
  sub_1CA408490(v0, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = v32;
      v41 = OUTLINED_FUNCTION_134();
      v42(v41);
      sub_1CA94A188();
      v43 = v91;
      OUTLINED_FUNCTION_49(v23, 1, v91);
      if (v44)
      {
        sub_1CA27080C(v23, &qword_1EC445110, &dword_1CA9834B8);
        v48 = v90;
      }

      else
      {
        OUTLINED_FUNCTION_74();
        v47(v1, v23, v43);
        v48 = v90;
        sub_1CA408F70();
        if ((v49 & 1) == 0)
        {
          sub_1CA94A638();
          v69 = OUTLINED_FUNCTION_130();
          v70(v69);
          goto LABEL_23;
        }

        v50 = OUTLINED_FUNCTION_130();
        v51(v50);
      }

      OUTLINED_FUNCTION_51_5();
      v53 = v84;
      sub_1CA407B48(v48 + v52, v84);
      v54 = v89;
      OUTLINED_FUNCTION_49(v53, 1, v89);
      if (!v44)
      {
        v60 = v82;
        v59 = v83;
        v61 = OUTLINED_FUNCTION_82();
        v62(v61);
        sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
        v63 = sub_1CA94B0F8();
        sub_1CA40B50C(v63, v64, &selRef_initWithBundleIdentifier_);
        (*(v59 + 8))(v60, v54);
LABEL_23:
        (*(v40 + 8))(v36, v30);
        goto LABEL_26;
      }

      (*(v40 + 8))(v36, v30);
      goto LABEL_21;
    }

    (*(v87 + 32))(v86, v0, v88);
    sub_1CA94A428();
    v46 = v91;
    OUTLINED_FUNCTION_49(v20, 1, v91);
    if (v44)
    {
      sub_1CA27080C(v20, &qword_1EC445110, &dword_1CA9834B8);
      v55 = v90;
    }

    else
    {
      (*(v85 + 32))(v28, v20, v46);
      v55 = v90;
      sub_1CA408F70();
      if ((v56 & 1) == 0)
      {
        sub_1CA94A638();
        v71 = OUTLINED_FUNCTION_106();
        v72(v71);
        goto LABEL_25;
      }

      v57 = OUTLINED_FUNCTION_106();
      v58(v57);
    }

    if (!sub_1CA409434())
    {
      v65 = type metadata accessor for DrawerAction(0);
      v53 = v81;
      sub_1CA407B48(v55 + *(v65 + 24), v81);
      v66 = v89;
      OUTLINED_FUNCTION_49(v53, 1, v89);
      if (v44)
      {
        v67 = OUTLINED_FUNCTION_116_0();
        v68(v67);
LABEL_21:
        sub_1CA27080C(v53, &qword_1EC4445D0, &qword_1CA983080);
        goto LABEL_26;
      }

      v73 = v83;
      OUTLINED_FUNCTION_74();
      v74 = v80;
      v75(v80, v53, v66);
      sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
      v76 = sub_1CA94B0F8();
      sub_1CA40B50C(v76, v77, &selRef_initWithBundleIdentifier_);
      (*(v73 + 8))(v74, v66);
    }

LABEL_25:
    v78 = OUTLINED_FUNCTION_116_0();
    v79(v78);
    goto LABEL_26;
  }

  v45 = *v0;
  [*v0 icon];

LABEL_26:
  OUTLINED_FUNCTION_36();
}

void sub_1CA408F70()
{
  OUTLINED_FUNCTION_37_0();
  v59 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  v61 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_1();
  v54 = v4;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_48_0();
  v60 = v6;
  OUTLINED_FUNCTION_25_0();
  sub_1CA94A4E8();
  OUTLINED_FUNCTION_1_0();
  v56 = v8;
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62_3();
  v9 = sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  v55 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v17 = OUTLINED_FUNCTION_18_0(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_1();
  v58 = v18;
  OUTLINED_FUNCTION_31_2();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v54 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v54 - v26;
  sub_1CA408490(v0, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v55;
      (*(v55 + 32))(v0, v15, v9);
      sub_1CA94A228();
      (*(v29 + 8))(v0, v9);
    }

    else
    {
      (*(v56 + 32))(v1, v15, v57);
      sub_1CA94A488();
      v37 = OUTLINED_FUNCTION_106();
      v38(v37);
    }

    v36 = v60;
    v35 = v61;
    v31 = v59;
  }

  else
  {
    OUTLINED_FUNCTION_12_16();
    sub_1CA40F000(v15, v30);
    OUTLINED_FUNCTION_46();
    v31 = v59;
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v59);
    v36 = v60;
    v35 = v61;
  }

  sub_1CA40F450(v25, v27);
  OUTLINED_FUNCTION_51_5();
  sub_1CA407B48(v0 + v39, v22);
  OUTLINED_FUNCTION_49(v22, 1, v31);
  if (v45)
  {
    v40 = OUTLINED_FUNCTION_82();
    sub_1CA27080C(v40, v41, &qword_1CA983080);
    v42 = v22;
LABEL_13:
    sub_1CA27080C(v42, &qword_1EC4445D0, &qword_1CA983080);
    goto LABEL_14;
  }

  v43 = *(v35 + 32);
  v43(v36, v22, v31);
  v44 = v58;
  sub_1CA407B48(v27, v58);
  OUTLINED_FUNCTION_49(v44, 1, v31);
  if (v45)
  {
    v46 = OUTLINED_FUNCTION_130();
    v47(v46);
    v48 = OUTLINED_FUNCTION_82();
    sub_1CA27080C(v48, v49, &qword_1CA983080);
    v42 = v44;
    goto LABEL_13;
  }

  v50 = v54;
  v51 = OUTLINED_FUNCTION_204();
  (v43)(v51);
  sub_1CA40EFB8(qword_1EC445170, MEMORY[0x1E69DB328], MEMORY[0x1E69DB330]);
  sub_1CA94C358();
  v52 = *(v35 + 8);
  v52(v50, v31);
  v53 = OUTLINED_FUNCTION_130();
  (v52)(v53);
  sub_1CA27080C(v27, &qword_1EC4445D0, &qword_1CA983080);
LABEL_14:
  OUTLINED_FUNCTION_36();
}

id sub_1CA409434()
{
  v0 = sub_1CA94A498();
  v2 = v1;
  if (sub_1CA94C3A8() == v0 && v3 == v2)
  {

LABEL_8:

    v6 = objc_opt_self();
    goto LABEL_9;
  }

  v5 = sub_1CA94D7F8();

  if (v5)
  {
    goto LABEL_8;
  }

  if (v0 == 0xD00000000000002DLL && 0x80000001CA9B5950 == v2)
  {
  }

  else
  {
    v12 = sub_1CA94D7F8();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = objc_opt_self();
LABEL_9:
  v7 = sub_1CA94C368();
  v8 = [v6 workflowKitImageNamed_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];
  return v9;
}

void DrawerAction.needsInternalBadge.getter()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA94A4E8();
  OUTLINED_FUNCTION_1_0();
  v43 = v4;
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_25();
  v5 = sub_1CA94A3B8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  v42 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_71();
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  v21 = v20 - v19;
  if (VCIsInternalBuild())
  {
    v41 = v5;
    v22 = v7;
    if (qword_1EC442D40 != -1)
    {
      OUTLINED_FUNCTION_39_5(&qword_1EC442D40);
    }

    v23 = qword_1EC445100;
    OUTLINED_FUNCTION_20_13();
    if (!sub_1CA27AF18(*v24, v24[1], v23))
    {
      sub_1CA408490(v0, v21);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          (*(v42 + 32))(v2, v21, v15);
          sub_1CA94A208();
          sub_1CA94A398();
          OUTLINED_FUNCTION_34_9();
          sub_1CA40EFB8(v26, v27, MEMORY[0x1E69DAA68]);
          v28 = v41;
          sub_1CA94D268();
          v29 = *(v22 + 8);
          v29(v11, v28);
          v30 = OUTLINED_FUNCTION_29_7();
          (v29)(v30);
          v31 = OUTLINED_FUNCTION_204();
        }

        else
        {
          v36 = v43;
          v35 = v44;
          (*(v43 + 32))(v1, v21, v44);
          sub_1CA94A468();
          sub_1CA94A398();
          OUTLINED_FUNCTION_34_9();
          sub_1CA40EFB8(v37, v38, MEMORY[0x1E69DAA68]);
          v39 = v41;
          sub_1CA94D268();
          v40 = *(v22 + 8);
          v40(v11, v39);
          v40(v14, v39);
          v33 = *(v36 + 8);
          v31 = v1;
          v32 = v35;
        }

        v33(v31, v32);
      }

      else
      {
        OUTLINED_FUNCTION_12_16();
        sub_1CA40F000(v21, v34);
      }
    }
  }

  OUTLINED_FUNCTION_36();
}

void DrawerAction.debugVisibilityInfo.getter()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA94A4E8();
  OUTLINED_FUNCTION_1_0();
  v19 = v4;
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62_3();
  v5 = sub_1CA94A3B8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_18_1();
  sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v10 = OUTLINED_FUNCTION_53_6();
  type metadata accessor for DrawerAction.DrawerActionStorage(v10);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_71();
  v12 = OUTLINED_FUNCTION_35();
  sub_1CA408490(v12, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = OUTLINED_FUNCTION_38_7();
      v16(v15);
      sub_1CA94A208();
      sub_1CA94A388();
      OUTLINED_FUNCTION_58_2();
      (*(v7 + 8))(v1, v5);
      v17 = OUTLINED_FUNCTION_194_0();
    }

    else
    {
      (*(v19 + 32))(v0, v2, v20);
      sub_1CA94A468();
      sub_1CA94A388();
      OUTLINED_FUNCTION_58_2();
      (*(v7 + 8))(v1, v5);
      v17 = OUTLINED_FUNCTION_106();
    }

    v18(v17);
  }

  else
  {
    sub_1CA40F000(v2, type metadata accessor for DrawerAction.DrawerActionStorage);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_36();
}

void DrawerAction.iconColor.getter()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_1_0();
  v48 = v3;
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v47 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445110, &dword_1CA9834B8);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  OUTLINED_FUNCTION_53_6();
  v50 = sub_1CA94A648();
  OUTLINED_FUNCTION_1_0();
  v45 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_0();
  v28 = v27 - v26;
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1_4();
  v46 = v1;
  sub_1CA408490(v1, v0);
  OUTLINED_FUNCTION_52_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v36 = *v0;
    [*v0 iconColor];

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v48 + 32))(v47, v0, v49);
    sub_1CA94A428();
    v37 = v50;
    OUTLINED_FUNCTION_49(v10, 1, v50);
    if (!v34)
    {
      v42 = v45;
      (*(v45 + 32))(v18, v10, v37);
      sub_1CA40A00C(v18);
      (*(v42 + 8))(v18, v37);
      v43 = OUTLINED_FUNCTION_130();
      v44(v43);
      goto LABEL_11;
    }

    v38 = OUTLINED_FUNCTION_130();
    v39(v38);
    v35 = v10;
LABEL_10:
    sub_1CA27080C(v35, &qword_1EC445110, &dword_1CA9834B8);
    goto LABEL_11;
  }

  v31 = OUTLINED_FUNCTION_23();
  v32(v31);
  sub_1CA94A188();
  v33 = v50;
  OUTLINED_FUNCTION_49(v13, 1, v50);
  if (v34)
  {
    (*(v24 + 8))(v28, v22);
    v35 = v13;
    goto LABEL_10;
  }

  v40 = v45;
  OUTLINED_FUNCTION_74();
  v41(v21, v13, v33);
  sub_1CA40A00C(v21);
  (*(v40 + 8))(v21, v33);
  (*(v24 + 8))(v28, v22);
LABEL_11:
  OUTLINED_FUNCTION_36();
}

id sub_1CA40A00C(uint64_t a1)
{
  v2 = sub_1CA94A508();
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA94A648();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CA94A518();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  (*(v6 + 16))(v8, a1, v5);
  if ((*(v6 + 88))(v8, v5) != *MEMORY[0x1E69DABE0])
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  (*(v6 + 96))(v8, v5);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445158, &qword_1CA986AA8);
  (*(v10 + 32))(v15, &v8[*(v16 + 48)], v9);
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 88))(v13, v9);
  if (v17 != *MEMORY[0x1E69DAAE8])
  {
    if (v17 == *MEMORY[0x1E69DAAF0])
    {
      (*(v10 + 96))(v13, v9);
      v24 = v28;
      (*(v28 + 32))(v4, v13, v2);
      sub_1CA25B3D0(0, &unk_1EC441710, 0x1E69E09E0);
      v25 = sub_1CA94A4F8();
      v21 = sub_1CA40A4AC(v25);
      (*(v24 + 8))(v4, v2);
      (*(v10 + 8))(v15, v9);
      return v21;
    }

    v26 = *(v10 + 8);
    v26(v15, v9);
    v26(v13, v9);
    return 0;
  }

  (*(v10 + 96))(v13, v9);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445168, &unk_1CA986AB0) + 48);
  v19 = v28;
  (*(v28 + 32))(v4, v13, v2);
  sub_1CA25B3D0(0, &unk_1EC441710, 0x1E69E09E0);
  v20 = sub_1CA94A4F8();
  v21 = sub_1CA40A4AC(v20);
  v22 = *(v19 + 8);
  v22(v4, v2);
  (*(v10 + 8))(v15, v9);
  v22(&v13[v18], v2);
  return v21;
}

id sub_1CA40A4AC(uint64_t a1)
{
  v1 = sub_1CA94C368();

  v2 = [swift_getObjCClassFromMetadata() colorForName_];

  return v2;
}

void DrawerAction.searchKeywords.getter()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v3 = sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v7 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for DrawerAction.DrawerActionStorage(v7);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_25();
  v9 = OUTLINED_FUNCTION_29_7();
  sub_1CA408490(v9, v10);
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = OUTLINED_FUNCTION_15_10();
      v13(v12);
      sub_1CA94A1D8();
      (*(v5 + 8))(v0, v3);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_14_18();
      v17(v16);
      sub_1CA94A448();
      v18 = OUTLINED_FUNCTION_3_3();
      v19(v18);
    }
  }

  else
  {
    v14 = *v1;
    v15 = [*v1 localizedKeywords];
    sub_1CA94C658();
  }

  OUTLINED_FUNCTION_36();
}

void DrawerAction.toolType.getter()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v4 = sub_1CA94A4E8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v8 = sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_25();
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v15 = v14 - v13;
  sub_1CA408490(v0, v14 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = OUTLINED_FUNCTION_126();
      v18(v17);
      sub_1CA94A278();
      (*(v10 + 8))(v1, v8);
    }

    else
    {
      (*(v6 + 32))(v0, v15, v4);
      sub_1CA94A4D8();
      v21 = OUTLINED_FUNCTION_52_0();
      v22(v21);
    }
  }

  else
  {
    sub_1CA40F000(v15, type metadata accessor for DrawerAction.DrawerActionStorage);
    v19 = *MEMORY[0x1E69DAA48];
    sub_1CA94A378();
    OUTLINED_FUNCTION_52();
    (*(v20 + 104))(v3, v19);
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA40A918()
{
  OUTLINED_FUNCTION_37_0();
  v2 = sub_1CA94A4E8();
  OUTLINED_FUNCTION_1_0();
  v38 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445148, &qword_1CA986A98);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  v15 = OUTLINED_FUNCTION_53_6();
  type metadata accessor for DrawerAction.DrawerActionStorage(v15);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_71();
  v17 = OUTLINED_FUNCTION_35();
  sub_1CA408490(v17, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = OUTLINED_FUNCTION_38_7();
      v21(v20);
      v22 = sub_1CA94A178();
      sub_1CA2ECF84(v22, v0);

      v23 = sub_1CA94A668();
      OUTLINED_FUNCTION_49(v0, 1, v23);
      if (!v24)
      {
        sub_1CA94A658();
        OUTLINED_FUNCTION_58_2();
        v33 = OUTLINED_FUNCTION_194_0();
        v34(v33);
        v35 = OUTLINED_FUNCTION_130();
LABEL_13:
        v37(v35, v36);
        goto LABEL_15;
      }

      v25 = OUTLINED_FUNCTION_194_0();
      v26(v25);
      v27 = v0;
    }

    else
    {
      (*(v38 + 32))(v7, v1, v2);
      v31 = sub_1CA94A418();
      sub_1CA2ECF84(v31, v12);

      v32 = sub_1CA94A668();
      OUTLINED_FUNCTION_49(v12, 1, v32);
      if (!v24)
      {
        sub_1CA94A658();
        OUTLINED_FUNCTION_58_2();
        (*(v38 + 8))(v7, v2);
        v37 = *(*(v32 - 8) + 8);
        v35 = v12;
        v36 = v32;
        goto LABEL_13;
      }

      (*(v38 + 8))(v7, v2);
      v27 = v12;
    }

    sub_1CA27080C(v27, &qword_1EC445148, &qword_1CA986A98);
  }

  else
  {
    v28 = *v1;
    v29 = [*v1 localizedCategory];
    if (v29)
    {
      v30 = v29;
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_58_2();
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_36();
}

Swift::Void __swiftcall DrawerAction.setAttributionContainer(bundleID:)(Swift::String bundleID)
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  sub_1CA40AE90();
  v14 = v13;
  v15 = 0;
  v23 = *(v13 + 16);
  while (1)
  {
    if (v23 == v15)
    {

      goto LABEL_13;
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_68_0();
    (*(v8 + 16))(v12, v14 + v16 + *(v8 + 72) * v15, v6);
    if (sub_1CA94B0F8() == v5 && v17 == v3)
    {

LABEL_12:

      v22 = *(type metadata accessor for DrawerAction(0) + 24);
      sub_1CA27080C(v1 + v22, &qword_1EC4445D0, &qword_1CA983080);
      (*(v8 + 32))(v1 + v22, v12, v6);
      __swift_storeEnumTagSinglePayload(v1 + v22, 0, 1, v6);
LABEL_13:
      OUTLINED_FUNCTION_36();
      return;
    }

    v19 = sub_1CA94D7F8();

    if (v19)
    {
      goto LABEL_12;
    }

    v20 = OUTLINED_FUNCTION_69();
    v21(v20);
    ++v15;
  }

  __break(1u);
}

void sub_1CA40AE90()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v0;
  sub_1CA94A4E8();
  OUTLINED_FUNCTION_1_0();
  v74 = v4;
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v78 = v6 - v5;
  OUTLINED_FUNCTION_25_0();
  v79 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  v77 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_1();
  v73 = v9;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48_0();
  v72 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_19();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v71 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_1_0();
  v76 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  v29 = v28 - v27;
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_0();
  v33 = v32 - v31;
  v34 = OUTLINED_FUNCTION_126();
  sub_1CA408490(v34, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v76;
      OUTLINED_FUNCTION_74();
      v38(v29, v33, v24);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445150, &qword_1CA986AA0);
      v40 = OUTLINED_FUNCTION_63_4(v39);
      *(v40 + 16) = xmmword_1CA981310;
      OUTLINED_FUNCTION_51_5();
      sub_1CA407B48(v2 + v41, v40 + v13);
      sub_1CA407B48(v40 + v13, v1);
      sub_1CA40F450(v1, v23);
      v42 = v79;
      OUTLINED_FUNCTION_49(v23, 1, v79);
      if (v43)
      {
        sub_1CA27080C(v23, &qword_1EC4445D0, &qword_1CA983080);
        v53 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v51 = v77;
        v52 = *(v77 + 32);
        v52(v72, v23, v42);
        v53 = MEMORY[0x1E69E7CC0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_1CA2E5A04();
          v53 = v67;
        }

        v56 = *(v53 + 16);
        v55 = *(v53 + 24);
        if (v56 >= v55 >> 1)
        {
          OUTLINED_FUNCTION_18(v55);
          sub_1CA2E5A04();
          v53 = v68;
        }

        *(v53 + 16) = v56 + 1;
        OUTLINED_FUNCTION_68_0();
        v52((v53 + v57 + *(v51 + 72) * v56), v72, v42);
        v37 = v76;
      }

      swift_setDeallocating();
      sub_1CA32E278();
      v58 = sub_1CA94A258();
      v80 = v53;
      sub_1CA2B7E74(v58);
      (*(v37 + 8))(v29, v24);
    }

    else
    {
      v46 = v74;
      v45 = v75;
      (*(v74 + 32))(v78, v33, v75);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445150, &qword_1CA986AA0);
      v48 = OUTLINED_FUNCTION_63_4(v47);
      *(v48 + 16) = xmmword_1CA981310;
      OUTLINED_FUNCTION_51_5();
      sub_1CA407B48(v2 + v49, v48 + v13);
      sub_1CA407B48(v48 + v13, v20);
      sub_1CA40F450(v20, v16);
      v50 = v79;
      OUTLINED_FUNCTION_49(v16, 1, v79);
      if (v43)
      {
        sub_1CA27080C(v16, &qword_1EC4445D0, &qword_1CA983080);
        v60 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v59 = *(v77 + 32);
        v59(v73, v16, v50);
        v60 = MEMORY[0x1E69E7CC0];
        v61 = swift_isUniquelyReferenced_nonNull_native();
        if ((v61 & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_1CA2E5A04();
          v60 = v69;
        }

        v62 = *(v60 + 16);
        if (v62 >= *(v60 + 24) >> 1)
        {
          sub_1CA2E5A04();
          v60 = v70;
        }

        *(v60 + 16) = v62 + 1;
        OUTLINED_FUNCTION_68_0();
        v59(v60 + v63 + *(v64 + 72) * v62, v73, v50);
      }

      swift_setDeallocating();
      sub_1CA32E278();
      v65 = v78;
      v66 = sub_1CA94A4A8();
      v80 = v60;
      sub_1CA2B7E74(v66);
      (*(v46 + 8))(v65, v45);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_16();
    sub_1CA40F000(v33, v44);
  }

  OUTLINED_FUNCTION_36();
}

WorkflowKit::DrawerAction::DescriptionItem __swiftcall DrawerAction.DescriptionItem.init(title:description:)(Swift::String_optional title, Swift::String description)
{
  v3 = v2;
  *v2 = title;
  sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
  v4 = OUTLINED_FUNCTION_3_3();
  v7 = sub_1CA40B50C(v4, v5, v6);
  v3[1].value._countAndFlagsBits = v7;
  result.description.super.isa = v9;
  result.title.value._object = v8;
  result.title.value._countAndFlagsBits = v7;
  return result;
}

id sub_1CA40B50C(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_69();
  sub_1CA94C368();
  OUTLINED_FUNCTION_77_0();
  v6 = [v5 *a3];

  return v6;
}

WorkflowKit::DrawerAction::DescriptionItem __swiftcall DrawerAction.DescriptionItem.init(title:description:)(Swift::String_optional title, NSAttributedString description)
{
  *v2 = title;
  *(v2 + 16) = description;
  result.title = title;
  result.description = description;
  return result;
}

void DrawerAction.descriptionItems.getter()
{
  OUTLINED_FUNCTION_37_0();
  v552 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_19_0(v4);
  v514 = type metadata accessor for DrawerAction(v5);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_44_0(v8 - v7);
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CC0, &unk_1CA9867F0);
  OUTLINED_FUNCTION_1_0();
  v535 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v11);
  v549 = sub_1CA94A408();
  OUTLINED_FUNCTION_1_0();
  v546 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454B0, &unk_1CA983070);
  OUTLINED_FUNCTION_18_0(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v18);
  v553 = sub_1CA94A4E8();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_44_0(v23 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445130, &unk_1CA986800);
  OUTLINED_FUNCTION_18_0(v24);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0(v26);
  v531 = sub_1CA94B4B8();
  OUTLINED_FUNCTION_1_0();
  v520 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v30 - v29);
  v541 = sub_1CA94AEA8();
  OUTLINED_FUNCTION_1_0();
  v519 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_19_0(v34);
  v532 = sub_1CA94B6B8();
  OUTLINED_FUNCTION_1_0();
  v518 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v38 - v37);
  v525 = sub_1CA94B018();
  OUTLINED_FUNCTION_1_0();
  v517 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_19_0(v42);
  v542 = sub_1CA94B058();
  OUTLINED_FUNCTION_1_0();
  v551 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v46 - v45);
  v536 = sub_1CA94B258();
  OUTLINED_FUNCTION_1_0();
  v538 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_44_0(v50 - v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444418, &qword_1CA9834B0);
  OUTLINED_FUNCTION_18_0(v51);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_1();
  v529 = sub_1CA94A368();
  OUTLINED_FUNCTION_1_0();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9();
  v59 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v510 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v510 - v62;
  OUTLINED_FUNCTION_53_6();
  v64 = sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  v527 = v65;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_19();
  v69 = v67 - v68;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_48_0();
  v73 = OUTLINED_FUNCTION_19_0(v72);
  type metadata accessor for DrawerAction.DrawerActionStorage(v73);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_1_4();
  v530 = v0;
  v75 = OUTLINED_FUNCTION_134();
  sub_1CA408490(v75, v76);
  OUTLINED_FUNCTION_35();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v86 = *v0;
    v87 = sub_1CA40F058(*v0, &selRef_localizedDescriptionSummary);
    v89 = v87;
    if (v88)
    {
      v89 = String.ifNotEmpty.getter(v87, v88);
      v91 = v90;
    }

    else
    {
      v91 = 0;
    }

    v301 = sub_1CA40F058(v86, &selRef_localizedDiscontinuedDescription);
    v303 = v301;
    v543 = v86;
    if (v302)
    {
      v303 = String.ifNotEmpty.getter(v301, v302);
      v305 = v304;
    }

    else
    {
      v305 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A50, &qword_1CA986840);
    inited = swift_initStackObject();
    v107 = 0;
    *(inited + 16) = xmmword_1CA97EDF0;
    *(inited + 32) = v89;
    *(inited + 40) = v91;
    v127 = inited + 40;
    *(inited + 48) = v303;
    *(inited + 56) = v305;
    v307 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v308 = (v127 + 16 * v107);
    while (++v107 != 3)
    {
      v309 = v308 + 2;
      v310 = *v308;
      v308 += 2;
      if (v310)
      {
        v311 = *(v309 - 3);
        sub_1CA94C218();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_1CA26DADC();
          v307 = v314;
        }

        v305 = *(v307 + 16);
        v312 = *(v307 + 24);
        if (v305 >= v312 >> 1)
        {
          OUTLINED_FUNCTION_93_3(v312);
          sub_1CA26DADC();
          v307 = v315;
        }

        *(v307 + 16) = v305 + 1;
        v313 = v307 + 16 * v305;
        *(v313 + 32) = v311;
        *(v313 + 40) = v310;
        goto LABEL_124;
      }
    }

    swift_setDeallocating();
    sub_1CA32E2E4();
    v554 = v307;
    v316 = &qword_1EC443E20;
    v317 = &qword_1CA986220;
    v318 = OUTLINED_FUNCTION_73_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v318, v319);
    v320 = OUTLINED_FUNCTION_35_7(&qword_1EC441B20);
    OUTLINED_FUNCTION_75_2(v320);
    OUTLINED_FUNCTION_78_2();
    v321 = OUTLINED_FUNCTION_73_4();
    String.ifNotEmpty.getter(v321, v322);
    OUTLINED_FUNCTION_5_0();

    if (v307)
    {
      v323 = OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_76_3(v323, v324);
      OUTLINED_FUNCTION_14_2();
      v325 = &qword_1EC443E20;
      sub_1CA2E5ACC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_81_2();
      v118 = v543;
      if (v125)
      {
        v462 = OUTLINED_FUNCTION_18(v326);
        sub_1CA2E5ACC(v462, v463, v464, v305);
        v305 = v465;
      }

      OUTLINED_FUNCTION_16_15();
    }

    else
    {
      v305 = MEMORY[0x1E69E7CC0];
      v118 = v543;
    }

    v327 = sub_1CA40F058(v118, &selRef_localizedDescriptionAttributionMarkdownString);
    if (v328)
    {
      v316 = v328;
      v317 = String.ifNotEmpty.getter(v327, v328);
      v330 = v329;

      if (v330)
      {
        v331 = OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_76_3(v331, v332);
        OUTLINED_FUNCTION_14_2();
        v333 = v316;
        if ((OUTLINED_FUNCTION_97_3() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_18();
          v305 = v486;
        }

        v335 = *(v305 + 16);
        v334 = *(v305 + 24);
        v316 = (v335 + 1);
        if (v335 >= v334 >> 1)
        {
          v487 = OUTLINED_FUNCTION_18(v334);
          sub_1CA2E5ACC(v487, v488, v489, v305);
          v305 = v490;
        }

        OUTLINED_FUNCTION_16_15();
      }
    }

    v132 = [v118 parameters];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    OUTLINED_FUNCTION_93();
    v336 = sub_1CA94C658();

    v337 = sub_1CA25B410(v336);
    if (!v337)
    {
LABEL_165:

      OUTLINED_FUNCTION_89_1();
      sub_1CA40F058(v107, v383);
      if (v384)
      {
      }

      else
      {
        v428 = sub_1CA40F058(v107, &selRef_localizedDescriptionInput);
        if (v429)
        {
          v336 = v429;
          String.ifNotEmpty.getter(v428, v429);
          OUTLINED_FUNCTION_69_1();

          if (v316)
          {
            v107 = v305;
            sub_1CA94C438("Input", 5);
            OUTLINED_FUNCTION_70_0();
            if (qword_1EDB9F5F0 != -1)
            {
              OUTLINED_FUNCTION_0_17();
              swift_once();
            }

            OUTLINED_FUNCTION_69();
            v305 = sub_1CA94C368();
            OUTLINED_FUNCTION_69();
            sub_1CA94C368();
            v430 = OUTLINED_FUNCTION_77_0();
            v431 = OUTLINED_FUNCTION_26_11(v430, sel_localizedStringForKey_value_table_);

            sub_1CA94C3A8();
            OUTLINED_FUNCTION_59();

            sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
            v432 = OUTLINED_FUNCTION_23();
            v316 = v433;
            sub_1CA40B50C(v432, v434, v435);
            if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_18();
              v305 = v505;
            }

            OUTLINED_FUNCTION_89_1();
            OUTLINED_FUNCTION_19_9();
            if (v125)
            {
              v506 = OUTLINED_FUNCTION_18(v436);
              sub_1CA2E5ACC(v506, v507, v508, v305);
              v305 = v509;
            }

            OUTLINED_FUNCTION_11_17();
          }
        }
      }

      v385 = sub_1CA40F058(v107, &selRef_localizedDescriptionResult);
      if (v386)
      {
        String.ifNotEmpty.getter(v385, v386);
        OUTLINED_FUNCTION_1_2();

        if (v336)
        {
          v387 = OUTLINED_FUNCTION_52_0();
          v389 = OUTLINED_FUNCTION_76_3(v387, v388);

          sub_1CA94C438("Result", 6);
          v316 = v390;
          if (qword_1EDB9F5F0 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          OUTLINED_FUNCTION_134();
          v391 = sub_1CA94C368();
          OUTLINED_FUNCTION_134();
          v392 = sub_1CA94C368();

          v394 = OUTLINED_FUNCTION_96(v393, sel_localizedStringForKey_value_table_);

          sub_1CA94C3A8();
          OUTLINED_FUNCTION_1_2();

          v395 = v389;
          if ((OUTLINED_FUNCTION_97_3() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_18();
            v305 = v491;
          }

          v397 = *(v305 + 16);
          v396 = *(v305 + 24);
          v317 = (v397 + 1);
          if (v397 >= v396 >> 1)
          {
            v492 = OUTLINED_FUNCTION_22_11(v396);
            sub_1CA2E5ACC(v492, v493, v494, v305);
            v305 = v495;
          }

          OUTLINED_FUNCTION_72_2();
        }
      }

      v398 = sub_1CA40F058(v107, &selRef_localizedDescriptionNote);
      if (v399)
      {
        String.ifNotEmpty.getter(v398, v399);
        OUTLINED_FUNCTION_69_1();

        if (v316)
        {
          v107 = v305;
          sub_1CA94C438("Note", 4);
          OUTLINED_FUNCTION_70_0();
          if (qword_1EDB9F5F0 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          OUTLINED_FUNCTION_69();
          v305 = sub_1CA94C368();
          OUTLINED_FUNCTION_69();
          sub_1CA94C368();
          v400 = OUTLINED_FUNCTION_77_0();
          v401 = OUTLINED_FUNCTION_26_11(v400, sel_localizedStringForKey_value_table_);

          sub_1CA94C3A8();
          OUTLINED_FUNCTION_59();

          sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
          v402 = OUTLINED_FUNCTION_23();
          v316 = v403;
          sub_1CA40B50C(v402, v404, v405);
          if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_18();
            v305 = v496;
          }

          OUTLINED_FUNCTION_89_1();
          OUTLINED_FUNCTION_19_9();
          if (v125)
          {
            v497 = OUTLINED_FUNCTION_18(v406);
            sub_1CA2E5ACC(v497, v498, v499, v305);
            v305 = v500;
          }

          OUTLINED_FUNCTION_11_17();
        }
      }

      v407 = sub_1CA40F058(v107, &selRef_localizedDescriptionRequires);
      if (v408 && (String.ifNotEmpty.getter(v407, v408), OUTLINED_FUNCTION_69_1(), , v316))
      {
        v409 = v305;
        sub_1CA94C438("Requires", 8);
        OUTLINED_FUNCTION_70_0();
        if (qword_1EDB9F5F0 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        OUTLINED_FUNCTION_69();
        v410 = sub_1CA94C368();
        OUTLINED_FUNCTION_69();
        sub_1CA94C368();
        v411 = OUTLINED_FUNCTION_77_0();
        v412 = OUTLINED_FUNCTION_26_11(v411, sel_localizedStringForKey_value_table_);

        sub_1CA94C3A8();
        OUTLINED_FUNCTION_59();

        sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
        v413 = OUTLINED_FUNCTION_23();
        sub_1CA40B50C(v413, v414, v415);
        if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_18();
          v410 = v501;
        }

        OUTLINED_FUNCTION_89_1();
        OUTLINED_FUNCTION_19_9();
        if (v125)
        {
          v502 = OUTLINED_FUNCTION_18(v416);
          sub_1CA2E5ACC(v502, v503, v504, v410);
        }

        OUTLINED_FUNCTION_11_17();
      }

      else
      {
      }

      goto LABEL_196;
    }

    v317 = v337;
    if (v337 < 1)
    {
      __break(1u);
LABEL_210:
      OUTLINED_FUNCTION_7_18();
      v102 = v466;
      goto LABEL_30;
    }

    v107 = 0;
    v338 = v336 & 0xC000000000000001;
    v339 = &selRef_possibleContentClassesForVariableNamed_;
    v340 = &selRef_possibleContentClassesForVariableNamed_;
    v546 = v336;
    v545 = v337;
    v544 = (v336 & 0xC000000000000001);
    while (1)
    {
      if (v338)
      {
        v341 = MEMORY[0x1CCAA22D0](v107, v336);
      }

      else
      {
        v341 = *(v336 + 8 * v107 + 32);
      }

      v342 = v341;
      v343 = [v341 v339[502]];
      v316 = [v343 v340[510]];

      if (v316)
      {
        v344 = sub_1CA40F058(v342, &selRef_localizedDescription);
        if (v345)
        {
          v346 = v344;
          v347 = v345;
          OUTLINED_FUNCTION_85_3();
          if (v348)
          {
            v553 = v305;
            v349 = sub_1CA948968();
            v550 = &v510;
            OUTLINED_FUNCTION_1_0();
            v551 = v350;
            v352 = *(v351 + 64);
            MEMORY[0x1EEE9AC00](v353);
            v549 = (v352 + 15) & 0xFFFFFFFFFFFFFFF0;
            v354 = &v510 - v549;
            sub_1CA948948();
            v548 = &v510;
            OUTLINED_FUNCTION_1_0();
            MEMORY[0x1EEE9AC00](v355);
            OUTLINED_FUNCTION_6_0();
            (*(v356 + 104))(v358 - v357, *MEMORY[0x1E6968740]);
            sub_1CA948938();
            OUTLINED_FUNCTION_1_0();
            MEMORY[0x1EEE9AC00](v359);
            OUTLINED_FUNCTION_3_25();
            (*(v360 + 104))(v305, *MEMORY[0x1E6968738]);
            sub_1CA948958();
            v361 = OUTLINED_FUNCTION_25_0();
            v305 = sub_1CA25B3D0(v361, &qword_1EC446AE0, 0x1E696AAB0);
            v547 = &v510;
            MEMORY[0x1EEE9AC00](v305);
            v362 = v551[2];
            v363 = &v510 - v549;
            v548 = v354;
            v549 = v349;
            v362(v363, v354, v349);
            v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
            OUTLINED_FUNCTION_18_0(v364);
            OUTLINED_FUNCTION_29();
            MEMORY[0x1EEE9AC00](v365);
            OUTLINED_FUNCTION_18_1();
            sub_1CA948BA8();
            OUTLINED_FUNCTION_46();
            __swift_storeEnumTagSinglePayload(v366, v367, v368, v369);
            sub_1CA94C218();
            v316 = v305;
            v370 = v552;
            v371 = sub_1CA94CDD8();
            if (v370)
            {

              OUTLINED_FUNCTION_100();
              sub_1CA94C218();
              v316 = v305;
              v372 = sub_1CA40B50C(v346, v347, &selRef_initWithString_);
              v552 = 0;
            }

            else
            {
              v372 = v371;
              v552 = 0;
              OUTLINED_FUNCTION_100();
            }

            (v551[1])(v548, v549);

            OUTLINED_FUNCTION_100();
            v373 = [v342 localizedLabel];
            sub_1CA94C3A8();
            OUTLINED_FUNCTION_69_1();

            v374 = v372;
            v339 = &selRef_possibleContentClassesForVariableNamed_;
            if ((OUTLINED_FUNCTION_98_3() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_18();
              v305 = v378;
            }

            v340 = &selRef_possibleContentClassesForVariableNamed_;
            v376 = *(v305 + 16);
            v375 = *(v305 + 24);
            if (v376 >= v375 >> 1)
            {
              v379 = OUTLINED_FUNCTION_93_3(v375);
              sub_1CA2E5ACC(v379, v380, v381, v305);
              v305 = v382;
            }

            *(v305 + 16) = v376 + 1;
            v377 = (v305 + 24 * v376);
            v377[4] = v349;
            v377[5] = v316;
            v377[6] = v374;
            v336 = v546;
            v317 = v545;
            v338 = v544;
            goto LABEL_164;
          }
        }

        v339 = &selRef_possibleContentClassesForVariableNamed_;
        v340 = &selRef_possibleContentClassesForVariableNamed_;
      }

      else
      {
      }

LABEL_164:
      if (v317 == ++v107)
      {
        goto LABEL_165;
      }
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_74();
    v92 = v550;
    v93 = v553;
    v94(v550, v0, v553);
    sub_1CA94A828();
    v95 = v552;
    v96 = sub_1CA94A7D8();
    if (v95)
    {

      (*(v20 + 8))(v92, v93);
    }

    else
    {
      v551 = v20;
      v511 = v64;
      v417 = v516;
      v552 = v96;
      sub_1CA94A3E8();
      swift_getKeyPath();
      v418 = swift_allocObject();
      *(v418 + 16) = sub_1CA94A498();
      *(v418 + 24) = v419;
      v420 = v533;
      *v533 = v418;
      v421 = v535;
      v422 = v544;
      v535[13](v420, *MEMORY[0x1E69DA9C0], v544);
      sub_1CA40EFB8(&qword_1EC441D50, MEMORY[0x1E69DAAB8], MEMORY[0x1E69DAAB0]);
      sub_1CA25C3BC(&qword_1EDB9F7C0, &unk_1EC444CC0, &unk_1CA9867F0, MEMORY[0x1E69DA9C8]);
      sub_1CA94A838();

      (v421[1])(v420, v422);
      v548 = *(v546 + 1);
      (v548)(v417, v549);
      v423 = sub_1CA948E58();
      v546 = &v510;
      OUTLINED_FUNCTION_1_0();
      v425 = v424;
      MEMORY[0x1EEE9AC00](v426);
      OUTLINED_FUNCTION_3_25();
      sub_1CA948D98();
      v427 = v545;
      sub_1CA94A6E8();
      (*(v425 + 8))(v421 + 1, v423);
      v437 = OUTLINED_FUNCTION_61_4();
      v438(v437);
      OUTLINED_FUNCTION_100();
      v439 = v511;
      OUTLINED_FUNCTION_49(v427, 1, v511);
      if (v244)
      {
        sub_1CA27080C(v427, &qword_1EC4454B0, &unk_1CA983070);

        v440 = OUTLINED_FUNCTION_68_4();
        v441(v440);
      }

      else
      {
        v442 = v527;
        v443 = v512;
        (*(v527 + 32))(v512, v427, v439);
        v444 = *(v442 + 16);
        v444(v69, v443, v439);
        v445 = v514;
        v446 = *(v514 + 24);
        sub_1CA94B1C8();
        v447 = v515;
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v448, v449, v450, v451);
        v444(v447, v69, v439);
        swift_storeEnumTagMultiPayload();
        v452 = v513;
        sub_1CA94A228();
        sub_1CA40808C(v452, v447 + v446);
        *(v447 + *(v445 + 20)) = 0;
        sub_1CA94A248();
        OUTLINED_FUNCTION_1_2();
        v453 = *(v442 + 8);
        v453(v69, v439);
        v454 = (v447 + *(v445 + 28));
        *v454 = v69;
        v454[1] = v452;
        DrawerAction.descriptionItems.getter();

        v455 = OUTLINED_FUNCTION_106();
        (v453)(v455);
        v456 = OUTLINED_FUNCTION_68_4();
        v457(v456);
        sub_1CA40F000(v447, type metadata accessor for DrawerAction);
      }
    }

    goto LABEL_196;
  }

  v78 = v537;
  v79 = OUTLINED_FUNCTION_23();
  v80(v79);
  sub_1CA94A1B8();
  sub_1CA94A348();
  OUTLINED_FUNCTION_69_1();
  v81 = *(v54 + 8);
  v515 = (v54 + 8);
  v516 = v81;
  v81(v63, v529);
  if (v63)
  {
    v82 = OUTLINED_FUNCTION_23();
    v78 = String.ifNotEmpty.getter(v82, v83);
    v85 = v84;
  }

  else
  {
    v85 = 0;
  }

  v511 = v64;
  OUTLINED_FUNCTION_67_3();
  sub_1CA94A168();
  v97 = sub_1CA94A5F8();
  OUTLINED_FUNCTION_49(v1, 1, v97);
  if (v244)
  {
    sub_1CA27080C(v1, &qword_1EC444418, &qword_1CA9834B0);
    v100 = 0;
    v102 = 0;
  }

  else
  {
    sub_1CA94A5E8();
    OUTLINED_FUNCTION_58_2();
    (*(*(v97 - 8) + 8))(v1, v97);
    v98 = OUTLINED_FUNCTION_35();
    v100 = String.ifNotEmpty.getter(v98, v99);
    v102 = v101;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A50, &qword_1CA986840);
  v103 = swift_initStackObject();
  v104 = 0;
  *(v103 + 16) = xmmword_1CA97EDF0;
  *(v103 + 32) = v78;
  *(v103 + 40) = v85;
  v105 = v103 + 40;
  *(v103 + 48) = v100;
  *(v103 + 56) = v102;
  v106 = MEMORY[0x1E69E7CC0];
  v107 = v536;
LABEL_14:
  v108 = (v105 + 16 * v104);
  while (++v104 != 3)
  {
    v109 = v108 + 2;
    v110 = *v108;
    v108 += 2;
    if (v110)
    {
      v111 = *(v109 - 3);
      sub_1CA94C218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA26DADC();
        v106 = v114;
      }

      v102 = v106[2];
      v112 = v106[3];
      if (v102 >= v112 >> 1)
      {
        OUTLINED_FUNCTION_22_11(v112);
        sub_1CA26DADC();
        v106 = v115;
      }

      v106[2] = v102 + 1;
      v113 = &v106[2 * v102];
      v113[4] = v111;
      v113[5] = v110;
      goto LABEL_14;
    }
  }

  swift_setDeallocating();
  sub_1CA32E2E4();
  v554 = v106;
  v116 = OUTLINED_FUNCTION_73_4();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(v116, v117);
  v119 = OUTLINED_FUNCTION_35_7(&qword_1EC441B20);
  OUTLINED_FUNCTION_75_2(v119);
  OUTLINED_FUNCTION_78_2();
  v120 = OUTLINED_FUNCTION_73_4();
  String.ifNotEmpty.getter(v120, v121);
  OUTLINED_FUNCTION_5_0();

  if (v106)
  {
    v122 = OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_76_3(v122, v123);
    OUTLINED_FUNCTION_14_2();
    v106 = &qword_1EC443E20;
    sub_1CA2E5ACC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_81_2();
    v118 = v516;
    if (v125)
    {
      v458 = OUTLINED_FUNCTION_18(v124);
      sub_1CA2E5ACC(v458, v459, v460, v102);
      v102 = v461;
    }

    OUTLINED_FUNCTION_16_15();
  }

  else
  {
    v102 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_87_2();
  }

  OUTLINED_FUNCTION_67_3();
  sub_1CA94A1B8();
  sub_1CA94A308();
  OUTLINED_FUNCTION_5_0();
  v126 = v61;
  v127 = v529;
  v61 = v515;
  (v118)(v126, v529);
  if (!v106)
  {
    goto LABEL_33;
  }

  v128 = OUTLINED_FUNCTION_3_3();
  String.ifNotEmpty.getter(v128, v129);
  OUTLINED_FUNCTION_78_2();
  if (!&qword_1CA986220)
  {
    goto LABEL_33;
  }

  v130 = OUTLINED_FUNCTION_73_4();
  v132 = OUTLINED_FUNCTION_76_3(v130, v131);

  v133 = v132;
  if ((OUTLINED_FUNCTION_97_3() & 1) == 0)
  {
    goto LABEL_210;
  }

LABEL_30:
  v134 = *(v102 + 24);
  if (*(v102 + 16) >= v134 >> 1)
  {
    v467 = OUTLINED_FUNCTION_18(v134);
    sub_1CA2E5ACC(v467, v468, v469, v102);
    v102 = v470;
  }

  OUTLINED_FUNCTION_16_15();
LABEL_33:
  v135 = *(sub_1CA94A1A8() + 16);
  v136 = v538;
  if (v135)
  {
    v136 = v538 + 2;
    v137 = v538[2];
    OUTLINED_FUNCTION_68_0();
    v514 = v138;
    v140 = v138 + v139;
    v141 = v136[7];
    v549 = (v136 - 1);
    v142 = v548;
    v538 = v136;
    v535 = v137;
    v533 = v141;
    do
    {
      (v137)(v142, v140, v107);
      sub_1CA94B1F8();
      if (v143)
      {
        v118 = v143;
        OUTLINED_FUNCTION_85_3();
        if (v144)
        {
          v553 = v102;
          v145 = sub_1CA948968();
          v547 = &v510;
          OUTLINED_FUNCTION_1_0();
          v550 = v146;
          v148 = *(v147 + 64);
          MEMORY[0x1EEE9AC00](v149);
          v546 = ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
          v150 = (&v510 - v546);
          OUTLINED_FUNCTION_53_6();
          sub_1CA948948();
          v545 = &v510;
          OUTLINED_FUNCTION_1_0();
          MEMORY[0x1EEE9AC00](v151);
          OUTLINED_FUNCTION_6_0();
          (*(v152 + 104))(v154 - v153, *MEMORY[0x1E6968740]);
          sub_1CA948938();
          OUTLINED_FUNCTION_1_0();
          MEMORY[0x1EEE9AC00](v155);
          OUTLINED_FUNCTION_3_25();
          (*(v156 + 104))(v102, *MEMORY[0x1E6968738]);
          sub_1CA948958();
          v157 = OUTLINED_FUNCTION_25_0();
          v102 = sub_1CA25B3D0(v157, &qword_1EC446AE0, 0x1E696AAB0);
          v544 = &v510;
          MEMORY[0x1EEE9AC00](v102);
          v158 = v550[2];
          v159 = (&v510 - v546);
          v545 = v150;
          v546 = v145;
          v158(v159, v150, v145);
          v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
          OUTLINED_FUNCTION_18_0(v160);
          OUTLINED_FUNCTION_29();
          MEMORY[0x1EEE9AC00](v161);
          OUTLINED_FUNCTION_62_3();
          sub_1CA948BA8();
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v162, v163, v164, v165);
          sub_1CA94C218();
          OUTLINED_FUNCTION_116_0();
          v166 = v552;
          v167 = sub_1CA94CDD8();
          if (v166)
          {

            OUTLINED_FUNCTION_100();
            v168 = OUTLINED_FUNCTION_116_0();
            v170 = sub_1CA40B50C(v168, v169, &selRef_initWithString_);
            v171 = OUTLINED_FUNCTION_47_7();
            v172(v171);
            v552 = 0;
          }

          else
          {
            v170 = v167;
            v552 = 0;
            v176 = OUTLINED_FUNCTION_47_7();
            v177(v176);

            OUTLINED_FUNCTION_100();
          }

          OUTLINED_FUNCTION_100();
          v142 = v548;
          v178 = v548;
          sub_1CA94B238();
          OUTLINED_FUNCTION_69_1();
          v118 = v170;
          v179 = OUTLINED_FUNCTION_98_3();
          v107 = v536;
          if ((v179 & 1) == 0)
          {
            OUTLINED_FUNCTION_7_18();
            v102 = v185;
          }

          v181 = *(v102 + 16);
          v180 = *(v102 + 24);
          if (v181 >= v180 >> 1)
          {
            v186 = OUTLINED_FUNCTION_22_11(v180);
            sub_1CA2E5ACC(v186, v187, v188, v102);
            v102 = v189;
          }

          OUTLINED_FUNCTION_38_1();
          v182 = OUTLINED_FUNCTION_204();
          v183(v182);
          *(v102 + 16) = v181 + 1;
          v184 = (v102 + 24 * v181);
          v184[4] = v145;
          v184[5] = v178;
          v184[6] = v118;
          v136 = v538;
          v137 = v535;
          v141 = v533;
        }

        else
        {

          OUTLINED_FUNCTION_38_1();
          v142 = v548;
          v174 = OUTLINED_FUNCTION_204();
          v175(v174);
        }
      }

      else
      {
        OUTLINED_FUNCTION_38_1();
        v173(v142, v107);
      }

      v140 += v141;
      --v135;
    }

    while (v135);

    v127 = v529;
    v61 = v515;
    OUTLINED_FUNCTION_87_2();
  }

  else
  {
  }

  v190 = v521;
  OUTLINED_FUNCTION_67_3();
  sub_1CA94A1B8();
  sub_1CA94A328();
  OUTLINED_FUNCTION_5_0();
  (v118)(v190, v127);
  v191 = v542;
  if (v136)
  {
    v192 = OUTLINED_FUNCTION_3_3();
    String.ifNotEmpty.getter(v192, v193);
    OUTLINED_FUNCTION_1_2();

    if (v190)
    {
      v194 = OUTLINED_FUNCTION_52_0();
      v136 = OUTLINED_FUNCTION_76_3(v194, v195);

      sub_1CA94C438("Result", 6);
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      OUTLINED_FUNCTION_134();
      v196 = sub_1CA94C368();
      OUTLINED_FUNCTION_134();
      v190 = sub_1CA94C368();

      v198 = OUTLINED_FUNCTION_96(v197, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_1_2();

      v199 = v136;
      if ((OUTLINED_FUNCTION_97_3() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_18();
        v102 = v471;
      }

      v118 = *(v102 + 16);
      v200 = *(v102 + 24);
      if (v118 >= v200 >> 1)
      {
        v472 = OUTLINED_FUNCTION_22_11(v200);
        sub_1CA2E5ACC(v472, v473, v474, v102);
        v102 = v475;
      }

      OUTLINED_FUNCTION_72_2();
      OUTLINED_FUNCTION_87_2();
    }
  }

  v201 = v522;
  OUTLINED_FUNCTION_67_3();
  sub_1CA94A1B8();
  sub_1CA94A318();
  v202 = OUTLINED_FUNCTION_92_2();
  (v118)(v202);
  if (v190)
  {
    String.ifNotEmpty.getter(v136, v190);
    OUTLINED_FUNCTION_69_1();

    if (v201)
    {
      sub_1CA94C438("Note", 4);
      OUTLINED_FUNCTION_70_0();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      OUTLINED_FUNCTION_69();
      v102 = sub_1CA94C368();
      OUTLINED_FUNCTION_69();
      sub_1CA94C368();
      v203 = OUTLINED_FUNCTION_77_0();
      v118 = OUTLINED_FUNCTION_26_11(v203, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_59();

      sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
      v204 = OUTLINED_FUNCTION_23();
      sub_1CA40B50C(v204, v205, v206);
      if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_18();
        v102 = v476;
      }

      OUTLINED_FUNCTION_19_9();
      if (v125)
      {
        v477 = OUTLINED_FUNCTION_18(v207);
        sub_1CA2E5ACC(v477, v478, v479, v102);
        v102 = v480;
      }

      OUTLINED_FUNCTION_11_17();
      OUTLINED_FUNCTION_87_2();
    }
  }

  v208 = v523;
  OUTLINED_FUNCTION_67_3();
  sub_1CA94A1B8();
  sub_1CA94A358();
  v209 = OUTLINED_FUNCTION_92_2();
  (v118)(v209);
  if (v190)
  {
    String.ifNotEmpty.getter(v136, v190);
    OUTLINED_FUNCTION_69_1();

    OUTLINED_FUNCTION_91_3();
    if (v208)
    {
      sub_1CA94C438("Requires", 8);
      OUTLINED_FUNCTION_70_0();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      OUTLINED_FUNCTION_69();
      v102 = sub_1CA94C368();
      OUTLINED_FUNCTION_69();
      sub_1CA94C368();
      v210 = OUTLINED_FUNCTION_77_0();
      v211 = OUTLINED_FUNCTION_26_11(v210, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_59();

      sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
      v212 = OUTLINED_FUNCTION_23();
      sub_1CA40B50C(v212, v213, v214);
      if ((OUTLINED_FUNCTION_46_6() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_18();
        v102 = v481;
      }

      OUTLINED_FUNCTION_19_9();
      if (v125)
      {
        v482 = OUTLINED_FUNCTION_18(v215);
        sub_1CA2E5ACC(v482, v483, v484, v102);
        v102 = v485;
      }

      OUTLINED_FUNCTION_11_17();
    }
  }

  else
  {
    OUTLINED_FUNCTION_91_3();
  }

  v216 = *(sub_1CA94A1C8() + 16);
  v217 = v532;
  v218 = v543;
  if (v216)
  {
    v552 = v551[2];
    OUTLINED_FUNCTION_68_0();
    v516 = v219;
    v221 = v219 + v220;
    v550 = (v222 + 9);
    v533 = (v222 - 1);
    v547 = (v222 + 10);
    v523 = v517 + 4;
    v522 = v517 + 2;
    v521 = v517 + 11;
    ++v517;
    v546 = (v518 + 32);
    v551 = v222;
    v549 = v222[7];
    v545 = (v519 + 104);
    v544 = (v519 + 8);
    LODWORD(v548) = *MEMORY[0x1E69DB220];
    v538 = (v518 + 8);
    v519 = v520 + 32;
    LODWORD(v536) = *MEMORY[0x1E69DB218];
    v520 += 8;
    LODWORD(v530) = *MEMORY[0x1E69DB208];
    LODWORD(v529) = *MEMORY[0x1E69DB200];
    LODWORD(v518) = *MEMORY[0x1E69DB1F8];
    LODWORD(v535) = *MEMORY[0x1E69DB0E0];
    v223 = v534;
    while (1)
    {
      v552(v218, v221, v191);
      v224 = OUTLINED_FUNCTION_21_12();
      v225(v224);
      OUTLINED_FUNCTION_64_4();
      if (v244)
      {
        break;
      }

      OUTLINED_FUNCTION_64_4();
      if (!v244)
      {
        OUTLINED_FUNCTION_64_4();
        if (!v244)
        {
          OUTLINED_FUNCTION_64_4();
          if (v244)
          {
            v553 = v102;
            v245 = OUTLINED_FUNCTION_21_12();
            v246(v245);
            OUTLINED_FUNCTION_38_1();
            v247 = v524;
            v248 = OUTLINED_FUNCTION_82();
            v249 = v525;
            v250(v248);
            OUTLINED_FUNCTION_38_1();
            v251(v61, v247, v249);
            OUTLINED_FUNCTION_38_1();
            v252(v61, v249);
            OUTLINED_FUNCTION_64_4();
            if (v244)
            {
              sub_1CA94C438("This action requires your device to be unlocked.", 48);
              OUTLINED_FUNCTION_5_0();
              if (qword_1EDB9F5F0 != -1)
              {
                OUTLINED_FUNCTION_0_17();
                swift_once();
              }

              OUTLINED_FUNCTION_3_3();
              v102 = sub_1CA94C368();
              OUTLINED_FUNCTION_3_3();
              sub_1CA94C368();
              v253 = OUTLINED_FUNCTION_14_2();
              v254 = OUTLINED_FUNCTION_95_3(v253, sel_localizedStringForKey_value_table_);

              v255 = sub_1CA94C3A8();
              v257 = v256;

              sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
              v258 = OUTLINED_FUNCTION_84_0();
              v260 = sub_1CA40B50C(v258, v259, &selRef_initWithString_);
              if ((OUTLINED_FUNCTION_98_3() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_18();
                v102 = v291;
              }

              OUTLINED_FUNCTION_19_9();
              if (v125)
              {
                v292 = OUTLINED_FUNCTION_18(v261);
                sub_1CA2E5ACC(v292, v293, v294, v102);
                v102 = v295;
              }

              OUTLINED_FUNCTION_38_1();
              v262();
              *(v102 + 16) = v255;
              v263 = (v102 + 24 * v257);
              v263[4] = 0;
              v263[5] = 0;
              v263[6] = v260;
              v223 = v534;
LABEL_114:
              v218 = v543;
              goto LABEL_115;
            }

            v290 = *v517;
            (*v517)(v247, v249);
            v290(v61, v249);
LABEL_104:
            v218 = v543;
            v102 = v553;
            goto LABEL_115;
          }
        }
      }

      v264 = OUTLINED_FUNCTION_21_12();
      v265(v264);
LABEL_115:
      v221 += v549;
      if (!--v216)
      {
        goto LABEL_118;
      }
    }

    v553 = v102;
    v226 = OUTLINED_FUNCTION_21_12();
    v227(v226);
    OUTLINED_FUNCTION_38_1();
    v228 = OUTLINED_FUNCTION_3_3();
    v229(v228);
    v230 = v539;
    v231 = v223;
    sub_1CA94B6A8();
    OUTLINED_FUNCTION_38_1();
    v232 = v217;
    v233 = v540;
    v234 = v541;
    v235(v540, v535, v541);
    v236 = sub_1CA94AE98();
    v61 = v544;
    v237 = *v544;
    (*v544)(v233, v234);
    v237(v230, v234);
    if (v236)
    {
      v238 = [objc_opt_self() currentDevice];
      v239 = [v238 hasPairedAndSetUpWatch];

      OUTLINED_FUNCTION_91_3();
      if (v239)
      {
        v240 = v528;
        v223 = v534;
        sub_1CA94B688();
        v241 = v531;
        OUTLINED_FUNCTION_49(v240, 1, v531);
        v217 = v532;
        v191 = v542;
        v102 = v553;
        if (v244)
        {
          OUTLINED_FUNCTION_38_1();
          v242 = OUTLINED_FUNCTION_52_0();
          v243(v242);
          sub_1CA27080C(v240, &qword_1EC445130, &unk_1CA986800);
        }

        else
        {
          OUTLINED_FUNCTION_38_1();
          v268 = v526;
          v269(v526, v240, v241);
          v270 = sub_1CA94B4A8();
          if (v270)
          {
            sub_1CA94C438("This action can't be run on Apple Watch.", 40);
            OUTLINED_FUNCTION_5_0();
            if (qword_1EDB9F5F0 != -1)
            {
              OUTLINED_FUNCTION_0_17();
              swift_once();
            }

            OUTLINED_FUNCTION_3_3();
            v271 = sub_1CA94C368();
            OUTLINED_FUNCTION_3_3();
            sub_1CA94C368();
            v272 = OUTLINED_FUNCTION_14_2();
            v273 = OUTLINED_FUNCTION_95_3(v272, sel_localizedStringForKey_value_table_);

            v274 = sub_1CA94C3A8();
            v276 = v275;

            sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
            v277 = OUTLINED_FUNCTION_84_0();
            v279 = sub_1CA40B50C(v277, v278, &selRef_initWithString_);
            if ((OUTLINED_FUNCTION_98_3() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_18();
              v271 = v296;
            }

            OUTLINED_FUNCTION_19_9();
            if (v125)
            {
              v297 = OUTLINED_FUNCTION_18(v280);
              sub_1CA2E5ACC(v297, v298, v299, v271);
              v281 = v300;
            }

            else
            {
              v281 = v271;
            }

            OUTLINED_FUNCTION_38_1();
            v282();
            OUTLINED_FUNCTION_38_1();
            v283 = v534;
            v284(v534, v217);
            v281[2] = v274;
            v223 = v283;
            v102 = v281;
            v285 = &v281[3 * v276];
            v285[4] = 0;
            v285[5] = 0;
            v285[6] = v279;
          }

          else
          {
            OUTLINED_FUNCTION_38_1();
            v286 = OUTLINED_FUNCTION_3_3();
            v287(v286);
            OUTLINED_FUNCTION_38_1();
            v223 = v534;
            v288 = OUTLINED_FUNCTION_52_0();
            v289(v288);
          }
        }

        goto LABEL_114;
      }

      OUTLINED_FUNCTION_38_1();
      v223 = v534;
      v217 = v532;
      v267(v534, v532);
    }

    else
    {
      OUTLINED_FUNCTION_38_1();
      v266(v231, v232);
      v217 = v232;
      v223 = v231;
      OUTLINED_FUNCTION_91_3();
    }

    v191 = v542;
    goto LABEL_104;
  }

LABEL_118:

  (*(v527 + 8))(v537, v511);
LABEL_196:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA40E248(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA948968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = sub_1CA948948();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6968740]);
  v9 = sub_1CA948938();
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 104))(&v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6968738]);
  sub_1CA948958();
  v12 = sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
  MEMORY[0x1EEE9AC00](v12);
  (*(v3 + 16))(&v19[-v5], &v19[-v5], v2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19[-v14];
  v16 = sub_1CA948BA8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  sub_1CA94C218();
  v17 = sub_1CA94CDD8();
  (*(v3 + 8))(&v19[-v5], v2);
  return v17;
}

void DrawerAction.itemForInserting(homeID:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_71();
  v8 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v10 = sub_1CA407BB8();
  if (v10)
  {
    OUTLINED_FUNCTION_51_5();
    sub_1CA407B48(v0 + v11, v1);
    OUTLINED_FUNCTION_49(v1, 1, v8);
    if (v12)
    {
      sub_1CA27080C(v1, &qword_1EC4445D0, &qword_1CA983080);
    }

    else
    {
      v13 = OUTLINED_FUNCTION_38_7();
      v14(v13);
      sub_1CA94B0F8();
      v15 = sub_1CA94C368();

      v16 = [v10 actionForAppIdentifier_];

      v17 = OUTLINED_FUNCTION_194_0();
      v18(v17);
      if (v16)
      {

        v10 = v16;
      }
    }

    if (v3)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        v19 = sub_1CA94C368();
        v20 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

        v21 = v20;
        v22 = sub_1CA94C368();
        [v10 setParameterState:v21 forKey:v22];
      }
    }
  }

  *v5 = v10;
  OUTLINED_FUNCTION_36();
}

uint64_t DrawerAction.isFavorite.getter()
{
  OUTLINED_FUNCTION_20_13();
  v0 = sub_1CA94C368();
  IsFavorite = WFActionIsFavorite(v0);

  return IsFavorite;
}

void DrawerAction.isFavorite.setter(char a1)
{
  OUTLINED_FUNCTION_20_13();
  v2 = sub_1CA94C368();
  WFActionSetFavorite(v2, a1 & 1);
}

void (*DrawerAction.isFavorite.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_20_13();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 8) = v3;
  v4 = sub_1CA94C368();
  IsFavorite = WFActionIsFavorite(v4);

  *(a1 + 16) = IsFavorite;
  return sub_1CA40E8D4;
}

void sub_1CA40E8D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1CA94C368();
  WFActionSetFavorite(v2, v1);
}

uint64_t DrawerAction.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_20_13();

  return sub_1CA94C458();
}

uint64_t static DrawerAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DrawerAction(0) + 28);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1CA94D7F8();
}

uint64_t DrawerAction.hashValue.getter()
{
  sub_1CA94D918();
  OUTLINED_FUNCTION_20_13();
  sub_1CA94C458();
  return sub_1CA94D968();
}

uint64_t sub_1CA40EA50(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  sub_1CA94C458();
  return sub_1CA94D968();
}

uint64_t sub_1CA40EA9C@<X0>(uint64_t *a1@<X8>)
{
  result = DrawerAction.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DrawerActionSection.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DrawerActionSection.localizedTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DrawerActionSection.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DrawerActionSection.actions.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall DrawerActionSection.init(id:localizedTitle:bundleIdentifier:actions:)(WorkflowKit::DrawerActionSection *__return_ptr retstr, Swift::String id, Swift::String_optional localizedTitle, Swift::String_optional bundleIdentifier, Swift::OpaquePointer actions)
{
  retstr->id = id;
  retstr->localizedTitle = localizedTitle;
  retstr->bundleIdentifier = bundleIdentifier;
  retstr->actions = actions;
}

void static DrawerActionSection.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_37_0();
  v41 = v21;
  v22 = v19[2];
  v24 = v19[3];
  v23 = v19[4];
  v25 = v19[5];
  v27 = v20[2];
  v26 = v20[3];
  v29 = v20[4];
  v28 = v20[5];
  v30 = *v19 == *v20 && v19[1] == v20[1];
  if (!v30 && (sub_1CA94D7F8() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v24)
  {
    if (!v26)
    {
      goto LABEL_26;
    }

    if (v22 != v27 || v24 != v26)
    {
      OUTLINED_FUNCTION_204();
      if ((sub_1CA94D7F8() & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v26)
  {
    goto LABEL_26;
  }

  if (v25)
  {
    if (v28)
    {
      if (v23 == v29 && v25 == v28)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_69();
      if (sub_1CA94D7F8())
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    OUTLINED_FUNCTION_36();
    return;
  }

  if (v28)
  {
    goto LABEL_26;
  }

LABEL_22:
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_36();

  sub_1CA2B652C(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v18, v41);
}

void DrawerActionSection.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_1CA94C458();
  if (v2)
  {
    sub_1CA94D938();
    sub_1CA94C458();
    if (v3)
    {
LABEL_3:
      sub_1CA94D938();
      sub_1CA94C458();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1CA94D938();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_1CA94D938();
LABEL_6:

  sub_1CA2BB848();
}

uint64_t DrawerActionSection.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D938();
  if (v1)
  {
    sub_1CA94C458();
  }

  sub_1CA94D938();
  if (v2)
  {
    sub_1CA94C458();
  }

  sub_1CA2BB848();
  return sub_1CA94D968();
}

uint64_t sub_1CA40EF58(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  v6[9] = *v1;
  v6[10] = v2;
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  v9 = v3;
  sub_1CA94D918();
  DrawerActionSection.hash(into:)(v6);
  return sub_1CA94D968();
}

uint64_t sub_1CA40EFB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA40F000(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA40F058(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_69_1();
  }

  return OUTLINED_FUNCTION_23();
}

unint64_t sub_1CA40F0FC()
{
  result = qword_1EC445140;
  if (!qword_1EC445140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445140);
  }

  return result;
}

void sub_1CA40F178(uint64_t a1)
{
  type metadata accessor for DrawerAction.DrawerActionStorage(319);
  if (v1 <= 0x3F)
  {
    sub_1CA40F21C(319);
    if (v2 <= 0x3F)
    {
      sub_1CA40F280(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA40F21C(uint64_t a1)
{
  if (!qword_1EC441A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC445560, &qword_1CA9869A8);
    v1 = sub_1CA94D098();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441A20);
    }
  }
}

void sub_1CA40F280(uint64_t a1)
{
  if (!qword_1EC441CF0)
  {
    sub_1CA94B1C8();
    v1 = sub_1CA94D098();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441CF0);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1CA40F314(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}