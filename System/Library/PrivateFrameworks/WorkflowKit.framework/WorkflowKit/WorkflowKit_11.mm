id sub_1CA382700()
{
  v0 = sub_1CA949D18();
  v323 = *(v0 - 8);
  v324 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v322 = v315 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  v334 = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9ABD30;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v345 = sub_1CA94C438("scale|transform|shrink|stretch|expand|width|height|photos", 57);
  v7 = v6;
  v8 = sub_1CA94C438("scale|transform|shrink|stretch|expand|width|height|photos", 57);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v347 = v12;
  v350 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v315 - v350;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB9F690;
  v348 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v346 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v349 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v315 - v349;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v345, v7, v8, v10, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v345 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v344 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA97EDF0;
  *(v22 + 32) = @"DescriptionNote";
  v23 = @"Description";
  v24 = @"DescriptionNote";
  v25 = sub_1CA94C438("If the width or height is not set, that dimension is automatically calculated to maintain the original image's aspect ratio.", 124);
  v340 = v26;
  *&v341 = v25;
  v27 = sub_1CA94C438("If the width or height is not set, that dimension is automatically calculated to maintain the original image's aspect ratio.", 124);
  v29 = v28;
  v343 = v315;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v315 - v350;
  sub_1CA948D98();
  v31 = [v14 bundleURL];
  v342 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v349;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 40) = sub_1CA2F9F14(v341, v340, v27, v29, 0, 0, v30, v315 - v33);
  v35 = v345;
  *(v22 + 64) = v345;
  *(v22 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438("Scales images to a particular width and height.", 47);
  v340 = v38;
  *&v341 = v37;
  v339 = sub_1CA94C438("Scales images to a particular width and height.", 47);
  v40 = v39;
  v343 = v315;
  MEMORY[0x1EEE9AC00](v339);
  v41 = v315 - v350;
  sub_1CA948D98();
  v42 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v341, v340, v339, v40, 0, 0, v41, v315 - v33);
  *(v22 + 104) = v35;
  *(v22 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v45 = sub_1CA94C1E8();
  v46 = v344;
  v47 = sub_1CA6B3784(v45);
  v48 = v342;
  v342[15] = v47;
  v48[18] = v46;
  v48[19] = @"IconColor";
  v48[20] = 1702194242;
  v48[21] = 0xE400000000000000;
  v49 = MEMORY[0x1E69E6158];
  v48[23] = MEMORY[0x1E69E6158];
  v48[24] = @"IconSymbol";
  v48[25] = 0xD00000000000003DLL;
  v48[26] = 0x80000001CA9ABE40;
  v48[28] = v49;
  v48[29] = @"Input";
  v50 = v48;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  v341 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  v52 = MEMORY[0x1E69E6370];
  *(v51 + 48) = 1;
  *(v51 + 72) = v52;
  strcpy((v51 + 80), "ParameterKey");
  *(v51 + 93) = 0;
  *(v51 + 94) = -5120;
  *(v51 + 96) = 0x6567616D494657;
  *(v51 + 104) = 0xE700000000000000;
  *(v51 + 120) = v49;
  *(v51 + 128) = 0x6465726975716552;
  *(v51 + 136) = 0xE800000000000000;
  *(v51 + 144) = 1;
  *(v51 + 168) = v52;
  *(v51 + 176) = 0x7365707954;
  v53 = v52;
  *(v51 + 184) = 0xE500000000000000;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v333;
  *(v51 + 192) = &unk_1F49F6C60;
  v54 = @"IconColor";
  v55 = @"IconSymbol";
  v56 = @"Input";
  v57 = sub_1CA94C1E8();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v344 = v58;
  v50[30] = v57;
  v50[33] = v58;
  v50[34] = @"InputPassthrough";
  *(v50 + 280) = 0;
  v50[38] = v53;
  v50[39] = @"Name";
  v59 = @"InputPassthrough";
  v60 = @"Name";
  v61 = sub_1CA94C438("Resize Image (Action Name)", 26);
  v63 = v62;
  v64 = sub_1CA94C438("Resize Image", 12);
  v66 = v65;
  v340 = v315;
  MEMORY[0x1EEE9AC00](v64);
  v67 = v315 - v350;
  sub_1CA948D98();
  v68 = v348;
  v69 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = v315 - v349;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v61, v63, v64, v66, 0, 0, v67, v70);
  v73 = v342;
  v342[40] = v72;
  v74 = v345;
  v73[43] = v345;
  v73[44] = @"Output";
  v75 = swift_allocObject();
  *(v75 + 16) = v341;
  *(v75 + 32) = 0x75736F6C63736944;
  *(v75 + 40) = 0xEF6C6576654C6572;
  *(v75 + 48) = 0x63696C627550;
  *(v75 + 56) = 0xE600000000000000;
  *(v75 + 72) = MEMORY[0x1E69E6158];
  *(v75 + 80) = 0x656C7069746C754DLL;
  *(v75 + 88) = 0xE800000000000000;
  *(v75 + 96) = 1;
  *(v75 + 120) = MEMORY[0x1E69E6370];
  *(v75 + 128) = 0x614E74757074754FLL;
  *(v75 + 136) = 0xEA0000000000656DLL;
  v76 = @"Output";
  v77 = sub_1CA94C438("Resized Image (Default Output Name)", 35);
  *&v341 = v78;
  v79 = sub_1CA94C438("Resized Image", 13);
  v81 = v80;
  v343 = v315;
  MEMORY[0x1EEE9AC00](v79);
  v82 = v315 - v350;
  sub_1CA948D98();
  v83 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = v315 - v349;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 144) = sub_1CA2F9F14(v77, v341, v79, v81, 0, 0, v82, v84);
  *(v75 + 168) = v74;
  *(v75 + 176) = 0x7365707954;
  *(v75 + 216) = v333;
  *(v75 + 184) = 0xE500000000000000;
  *(v75 + 192) = &unk_1F49F6C90;
  v86 = MEMORY[0x1E69E6158];
  v87 = sub_1CA94C1E8();
  v88 = v342;
  v342[45] = v87;
  v88[48] = v344;
  v88[49] = @"Parameters";
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v344 = swift_allocObject();
  *(v344 + 16) = xmmword_1CA981410;
  v343 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v89 = swift_allocObject();
  v332 = xmmword_1CA981370;
  *(v89 + 16) = xmmword_1CA981370;
  *(v89 + 32) = @"Class";
  *(v89 + 40) = 0xD000000000000016;
  *(v89 + 48) = 0x80000001CA99C4A0;
  *(v89 + 64) = v86;
  *(v89 + 72) = @"DefaultValue";
  *(v89 + 80) = 1702521171;
  *(v89 + 88) = 0xE400000000000000;
  *(v89 + 104) = v86;
  *(v89 + 112) = @"Items";
  v340 = swift_allocObject();
  v320 = xmmword_1CA981470;
  *(v340 + 1) = xmmword_1CA981470;
  v90 = @"Class";
  v91 = @"DefaultValue";
  v336 = v90;
  *&v338 = v91;
  v92 = @"Parameters";
  v93 = @"Items";
  v337 = sub_1CA94C438("Size (WFImageResizeKey)", 23);
  v335 = v94;
  v95 = sub_1CA94C438("Size", 4);
  *&v331 = v96;
  v339 = v315;
  MEMORY[0x1EEE9AC00](v95);
  v97 = v350;
  sub_1CA948D98();
  v98 = v348;
  v99 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v315 - v349;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v337, v335, v95, v331, 0, 0, v315 - v97, v100);
  v340[4] = v102;
  v337 = sub_1CA94C438("Percentage (WFImageResizeKey)", 29);
  v335 = v103;
  v104 = sub_1CA94C438("Percentage", 10);
  *&v331 = v105;
  v339 = v315;
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948D98();
  v106 = [v98 bundleURL];
  v330 = v315;
  MEMORY[0x1EEE9AC00](v106);
  v107 = v349;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v337, v335, v104, v331, 0, 0, v315 - v97, v315 - v107);
  v340[5] = v109;
  v337 = sub_1CA94C438("Longest Edge (WFImageResizeKey)", 31);
  v335 = v110;
  v111 = sub_1CA94C438("Longest Edge", 12);
  *&v331 = v112;
  v339 = v315;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v113 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v337, v335, v111, v331, 0, 0, v315 - v97, v315 - v107);
  v116 = v340;
  v340[6] = v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v89 + 120) = v116;
  *(v89 + 144) = v117;
  *(v89 + 152) = @"Key";
  *(v89 + 160) = 0xD000000000000010;
  *(v89 + 168) = 0x80000001CA994250;
  *(v89 + 184) = MEMORY[0x1E69E6158];
  *(v89 + 192) = @"Label";
  v118 = @"Key";
  v119 = @"Label";
  v120 = v118;
  v121 = v119;
  v330 = v120;
  v335 = v121;
  v122 = sub_1CA94C438("By (WFImageResizeKey)", 21);
  v124 = v123;
  v125 = sub_1CA94C438("By", 2);
  v127 = v126;
  v340 = v315;
  MEMORY[0x1EEE9AC00](v125);
  v128 = v315 - v350;
  sub_1CA948D98();
  v129 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v315 - v349;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v122, v124, v125, v127, 0, 0, v128, v130);
  *(v89 + 224) = v345;
  *(v89 + 200) = v132;
  _s3__C3KeyVMa_0(0);
  v340 = v133;
  v339 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v134 = sub_1CA94C1E8();
  v135 = sub_1CA2F864C(v134);
  *(v344 + 32) = v135;
  v136 = swift_allocObject();
  v331 = xmmword_1CA981380;
  *(v136 + 16) = xmmword_1CA981380;
  v337 = 0x80000001CA99C180;
  v137 = v336;
  *(v136 + 32) = v336;
  *(v136 + 40) = 0xD000000000000016;
  *(v136 + 48) = 0x80000001CA99C180;
  v138 = MEMORY[0x1E69E6158];
  v139 = v338;
  *(v136 + 64) = MEMORY[0x1E69E6158];
  *(v136 + 72) = v139;
  v140 = MEMORY[0x1E69E6530];
  *(v136 + 80) = 640;
  v141 = v330;
  *(v136 + 104) = v140;
  *(v136 + 112) = v141;
  *(v136 + 120) = 0xD000000000000012;
  *(v136 + 128) = 0x80000001CA9ABF90;
  v142 = v335;
  *(v136 + 144) = v138;
  *(v136 + 152) = v142;
  v328 = v137;
  v327 = v141;
  v330 = v142;
  v143 = sub_1CA94C438("Width (WFImageResizeWidth)", 26);
  v335 = v144;
  v336 = v143;
  v145 = sub_1CA94C438("Width", 5);
  v147 = v146;
  *&v338 = v315;
  MEMORY[0x1EEE9AC00](v145);
  v148 = v315 - v350;
  sub_1CA948D98();
  v149 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v149);
  v150 = v315 - v349;
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v136 + 160) = sub_1CA2F9F14(v336, v335, v145, v147, 0, 0, v148, v150);
  v152 = v345;
  *(v136 + 184) = v345;
  *(v136 + 192) = @"Placeholder";
  v329 = @"Placeholder";
  v153 = sub_1CA94C438("Auto Width (WFImageResizeWidth)", 31);
  v335 = v154;
  v336 = v153;
  v155 = sub_1CA94C438("Auto Width", 10);
  v157 = v156;
  *&v338 = v315;
  MEMORY[0x1EEE9AC00](v155);
  v158 = v315 - v350;
  sub_1CA948D98();
  v159 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = v315 - v349;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v136 + 200) = sub_1CA2F9F14(v336, v335, v155, v157, 0, 0, v158, v160);
  *(v136 + 224) = v152;
  *(v136 + 232) = @"RequiredResources";
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v162 = swift_allocObject();
  v338 = xmmword_1CA981310;
  *(v162 + 16) = xmmword_1CA981310;
  v326 = @"RequiredResources";
  v163 = MEMORY[0x1E69E6158];
  *(v162 + 32) = sub_1CA94C1E8();
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v136 + 264) = v335;
  *(v136 + 240) = v162;
  v164 = sub_1CA94C1E8();
  v165 = sub_1CA2F864C(v164);
  *(v344 + 40) = v165;
  v166 = swift_allocObject();
  *(v166 + 16) = v332;
  v168 = v327;
  v167 = v328;
  *(v166 + 32) = v328;
  *(v166 + 40) = 0xD000000000000016;
  *(v166 + 48) = v337;
  *(v166 + 64) = v163;
  *(v166 + 72) = v168;
  *(v166 + 80) = v334;
  *(v166 + 88) = 0x80000001CA9AC000;
  v169 = v330;
  *(v166 + 104) = v163;
  *(v166 + 112) = v169;
  v328 = v167;
  v318 = v168;
  v327 = v169;
  v319 = sub_1CA94C438("Height (WFImageResizeHeight)", 28);
  v317 = v170;
  v171 = sub_1CA94C438("Height", 6);
  v316 = v172;
  v330 = v315;
  MEMORY[0x1EEE9AC00](v171);
  v173 = v350;
  sub_1CA948D98();
  v174 = v348;
  v175 = [v348 bundleURL];
  v315[1] = v315;
  MEMORY[0x1EEE9AC00](v175);
  v176 = v349;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 120) = sub_1CA2F9F14(v319, v317, v171, v316, 0, 0, v315 - v173, v315 - v176);
  v178 = v345;
  v179 = v329;
  *(v166 + 144) = v345;
  *(v166 + 152) = v179;
  v319 = v179;
  v329 = sub_1CA94C438("Auto Height (WFImageResizeHeight)", 33);
  v317 = v180;
  v181 = sub_1CA94C438("Auto Height", 11);
  v316 = v182;
  v330 = v315;
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948D98();
  v183 = [v174 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 160) = sub_1CA2F9F14(v329, v317, v181, v316, 0, 0, v315 - v173, v315 - v176);
  *(v166 + 184) = v178;
  v185 = v326;
  *(v166 + 192) = v326;
  v186 = swift_allocObject();
  *(v186 + 16) = v338;
  v330 = v185;
  v187 = MEMORY[0x1E69E6158];
  *(v186 + 32) = sub_1CA94C1E8();
  *(v166 + 224) = v335;
  *(v166 + 200) = v186;
  v188 = sub_1CA94C1E8();
  v189 = sub_1CA2F864C(v188);
  *(v344 + 48) = v189;
  v190 = swift_allocObject();
  *(v190 + 16) = v331;
  v191 = v328;
  *(v190 + 32) = v328;
  *(v190 + 40) = 0xD000000000000016;
  *(v190 + 48) = v337;
  v192 = v318;
  *(v190 + 64) = v187;
  *(v190 + 72) = v192;
  *(v190 + 80) = 0xD000000000000017;
  *(v190 + 88) = 0x80000001CA9AC070;
  *(v190 + 104) = v187;
  v193 = v327;
  *(v190 + 112) = v327;
  v329 = v191;
  v328 = v192;
  v327 = v193;
  v194 = sub_1CA94C438("Percentage (WFImageResizePercentage)", 36);
  v317 = v195;
  v318 = v194;
  v196 = sub_1CA94C438("Percentage", 10);
  v316 = v197;
  v326 = v315;
  MEMORY[0x1EEE9AC00](v196);
  v198 = v350;
  sub_1CA948D98();
  v199 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v199);
  v200 = v315 - v349;
  sub_1CA948B68();

  v201 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v190 + 120) = sub_1CA2F9F14(v318, v317, v196, v316, 0, 0, v315 - v198, v200);
  v202 = v345;
  v203 = v319;
  *(v190 + 144) = v345;
  *(v190 + 152) = v203;
  v326 = v203;
  v204 = sub_1CA94C438("100 (WFImageResizePercentage)", 29);
  v317 = v205;
  v318 = v204;
  v206 = sub_1CA94C438("100", 3);
  v316 = v207;
  v319 = v315;
  MEMORY[0x1EEE9AC00](v206);
  v208 = v315 - v198;
  sub_1CA948D98();
  v209 = v348;
  v210 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  v211 = v315 - v349;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v190 + 160) = sub_1CA2F9F14(v318, v317, v206, v316, 0, 0, v208, v211);
  v213 = v330;
  *(v190 + 184) = v202;
  *(v190 + 192) = v213;
  v214 = swift_allocObject();
  *(v214 + 16) = v338;
  v215 = MEMORY[0x1E69E6158];
  *(v214 + 32) = sub_1CA94C1E8();
  *(v190 + 200) = v214;
  *(v190 + 224) = v335;
  *(v190 + 232) = @"TextAlignment";
  *(v190 + 264) = v215;
  *(v190 + 240) = 0x7468676952;
  *(v190 + 248) = 0xE500000000000000;
  v319 = @"TextAlignment";
  v216 = sub_1CA94C1E8();
  v217 = sub_1CA2F864C(v216);
  *(v344 + 56) = v217;
  v218 = swift_allocObject();
  *(v218 + 16) = v331;
  *(v218 + 32) = v329;
  *(v218 + 40) = 0xD000000000000016;
  *(v218 + 48) = v337;
  v219 = v328;
  *(v218 + 64) = v215;
  *(v218 + 72) = v219;
  *(v218 + 80) = v334;
  *(v218 + 88) = 0x80000001CA9AC0F0;
  v220 = v327;
  *(v218 + 104) = v215;
  *(v218 + 112) = v220;
  v334 = sub_1CA94C438("Longest Edge Size (WFImageResizeLength)", 39);
  *&v331 = v221;
  v222 = sub_1CA94C438("Longest Edge Size", 17);
  v318 = v223;
  v337 = v315;
  MEMORY[0x1EEE9AC00](v222);
  v224 = v315 - v350;
  sub_1CA948D98();
  v225 = [v209 bundleURL];
  MEMORY[0x1EEE9AC00](v225);
  v226 = v315 - v349;
  sub_1CA948B68();

  v227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v218 + 120) = sub_1CA2F9F14(v334, v331, v222, v318, 0, 0, v224, v226);
  v228 = v345;
  v229 = v326;
  *(v218 + 144) = v345;
  *(v218 + 152) = v229;
  v334 = sub_1CA94C438("640 (WFImageResizeLength)", 25);
  *&v331 = v230;
  v231 = sub_1CA94C438("640", 3);
  v318 = v232;
  v337 = v315;
  MEMORY[0x1EEE9AC00](v231);
  v233 = v315 - v350;
  sub_1CA948D98();
  v234 = [v209 bundleURL];
  MEMORY[0x1EEE9AC00](v234);
  v235 = v349;
  sub_1CA948B68();

  v236 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v218 + 160) = sub_1CA2F9F14(v334, v331, v231, v318, 0, 0, v233, v315 - v235);
  v237 = v330;
  *(v218 + 184) = v228;
  *(v218 + 192) = v237;
  v238 = swift_allocObject();
  *(v238 + 16) = v338;
  v239 = MEMORY[0x1E69E6158];
  *(v238 + 32) = sub_1CA94C1E8();
  *(v218 + 200) = v238;
  v240 = v319;
  *(v218 + 224) = v335;
  *(v218 + 232) = v240;
  *(v218 + 264) = v239;
  *(v218 + 240) = 0x7468676952;
  *(v218 + 248) = 0xE500000000000000;
  v241 = sub_1CA94C1E8();
  v242 = sub_1CA2F864C(v241);
  *(v344 + 64) = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = v332;
  *(v243 + 32) = v329;
  *(v243 + 40) = 0xD000000000000019;
  *(v243 + 48) = 0x80000001CA99B030;
  v244 = v328;
  *(v243 + 64) = v239;
  *(v243 + 72) = v244;
  *(v243 + 80) = 0x6567616D494657;
  *(v243 + 88) = 0xE700000000000000;
  v245 = v327;
  *(v243 + 104) = v239;
  *(v243 + 112) = v245;
  v246 = sub_1CA94C438("Image (WFImage)", 15);
  v336 = v247;
  v337 = v246;
  v248 = sub_1CA94C438("Image", 5);
  v335 = v249;
  *&v341 = v315;
  MEMORY[0x1EEE9AC00](v248);
  v250 = v350;
  sub_1CA948D98();
  v251 = v348;
  v252 = [v348 bundleURL];
  v334 = v315;
  MEMORY[0x1EEE9AC00](v252);
  sub_1CA948B68();

  v253 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v243 + 120) = sub_1CA2F9F14(v337, v336, v248, v335, 0, 0, v315 - v250, v315 - v235);
  v254 = v345;
  v255 = v326;
  *(v243 + 144) = v345;
  *(v243 + 152) = v255;
  v256 = sub_1CA94C438("Image (WFImage)", 15);
  v336 = v257;
  v337 = v256;
  v258 = sub_1CA94C438("Image", 5);
  v335 = v259;
  *&v341 = v315;
  MEMORY[0x1EEE9AC00](v258);
  sub_1CA948D98();
  v260 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v260);
  sub_1CA948B68();

  v261 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v243 + 160) = sub_1CA2F9F14(v337, v336, v258, v335, 0, 0, v315 - v250, v315 - v235);
  *(v243 + 184) = v254;
  *(v243 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v262 = swift_allocObject();
  *(v262 + 16) = v338;
  v263 = @"PreferredTypes";
  v264 = v322;
  sub_1CA949CB8();
  v265 = sub_1CA949C68();
  v267 = v266;
  (*(v323 + 8))(v264, v324);
  *(v262 + 32) = v265;
  *(v262 + 40) = v267;
  *(v243 + 224) = v333;
  *(v243 + 200) = v262;
  v268 = sub_1CA94C1E8();
  v269 = sub_1CA2F864C(v268);
  v270 = v344;
  *(v344 + 72) = v269;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v272 = v342;
  v342[50] = v270;
  v272[53] = v271;
  v272[54] = @"ParameterSummary";
  v344 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v345 = swift_allocObject();
  *(v345 + 16) = v320;
  v343 = "640 (WFImageResizeLength)";
  v273 = @"ParameterSummary";
  v274 = sub_1CA94C438("Resize ${WFImage} to ${WFImageResizeKey} ${WFImageResizeWidth} × ${WFImageResizeHeight}", 88);
  v339 = v275;
  v340 = v274;
  v276 = sub_1CA94C438("Resize ${WFImage} to ${WFImageResizeKey} ${WFImageResizeWidth} × ${WFImageResizeHeight}", 88);
  v278 = v277;
  *&v341 = v315;
  MEMORY[0x1EEE9AC00](v276);
  v279 = v315 - v350;
  sub_1CA948D98();
  v280 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v280);
  v281 = v349;
  sub_1CA948B68();

  v282 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v283 = sub_1CA2F9F14(v340, v339, v276, v278, 0, 0, v279, v315 - v281);
  v284 = objc_allocWithZone(WFActionParameterSummaryValue);
  v285 = sub_1CA65DD78(0xD00000000000003FLL, v343 | 0x8000000000000000, v283);
  *(v345 + 32) = v285;
  v343 = "\x97 ${WFImageResizeHeight}";
  v286 = sub_1CA94C438("Resize ${WFImage} to ${WFImageResizeKey} ${WFImageResizeLength}", 63);
  v339 = v287;
  v340 = v286;
  v288 = sub_1CA94C438("Resize ${WFImage} to ${WFImageResizeKey} ${WFImageResizeLength}", 63);
  v290 = v289;
  *&v341 = v315;
  MEMORY[0x1EEE9AC00](v288);
  v291 = v315 - v350;
  sub_1CA948D98();
  v292 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v292);
  sub_1CA948B68();

  v293 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v294 = sub_1CA2F9F14(v340, v339, v288, v290, 0, 0, v291, v315 - v281);
  v295 = objc_allocWithZone(WFActionParameterSummaryValue);
  v296 = sub_1CA65DD78(0xD00000000000002CLL, v343 | 0x8000000000000000, v294);
  v297 = v345;
  *(v345 + 40) = v296;
  v343 = "sizeKey} ${WFImageResizeLength}";
  v298 = sub_1CA94C438("Resize ${WFImage} by ${WFImageResizeKey} ${WFImageResizePercentage}%", 68);
  v300 = v299;
  v301 = sub_1CA94C438("Resize ${WFImage} by ${WFImageResizeKey} ${WFImageResizePercentage}%", 68);
  v303 = v302;
  *&v341 = v315;
  MEMORY[0x1EEE9AC00](v301);
  v304 = v315 - v350;
  sub_1CA948D98();
  v305 = [v348 bundleURL];
  MEMORY[0x1EEE9AC00](v305);
  v306 = v315 - v349;
  sub_1CA948B68();

  v307 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v308 = sub_1CA2F9F14(v298, v300, v301, v303, 0, 0, v304, v306);
  v309 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v297 + 48) = sub_1CA65DD78(0xD000000000000030, v343 | 0x8000000000000000, v308);
  v310 = v344;
  v311 = sub_1CA65AF90(v297);
  v312 = v342;
  v342[55] = v311;
  v312[58] = v310;
  v312[59] = @"ResidentCompatible";
  v312[63] = MEMORY[0x1E69E6370];
  *(v312 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v313 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA384D88()
{
  v214 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA985520;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFOpenInAction");
  *(inited + 55) = -18;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v221 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v230 = sub_1CA94C438("open|file|document|in|app|application|uidocumentinteractioncontroller", 69);
  v5 = v4;
  v6 = sub_1CA94C438("open|file|document|in|app|application|uidocumentinteractioncontroller", 69);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v232 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v233 = v10;
  v11 = &v203 - v232;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v231 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v234 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v235 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v203 - v235;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v230, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v230 = v19;
  v20 = v221;
  *(v221 + 80) = v18;
  *(v20 + 104) = v19;
  *(v20 + 112) = @"Description";
  v229 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v228 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438("Opens the input as a file in the specified app.", 47);
  v226 = v25;
  v26 = sub_1CA94C438("Opens the input as a file in the specified app.", 47);
  v28 = v27;
  v227 = &v203;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v203 - v232;
  sub_1CA948D98();
  v30 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v203 - v235;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v226, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v230;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v229;
  *(v20 + 120) = sub_1CA6B3784(v34);
  *(v20 + 144) = v35;
  *(v20 + 152) = @"IconColor";
  *(v20 + 160) = 1953392980;
  *(v20 + 168) = 0xE400000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(v20 + 184) = MEMORY[0x1E69E6158];
  *(v20 + 192) = @"IconSymbol";
  *(v20 + 200) = 0xD000000000000010;
  *(v20 + 208) = 0x80000001CA9AC3B0;
  *(v20 + 224) = v36;
  *(v20 + 232) = @"IconSymbolColor";
  *(v20 + 240) = 1702194242;
  *(v20 + 248) = 0xE400000000000000;
  *(v20 + 264) = v36;
  *(v20 + 272) = @"Input";
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v218 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 0;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E494657;
  *(v37 + 104) = 0xE700000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  v39 = v38;
  *(v37 + 184) = 0xE500000000000000;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v227;
  *(v37 + 192) = &unk_1F49F6EC0;
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"IconSymbolColor";
  v43 = @"Input";
  v44 = sub_1CA94C1E8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v20 + 280) = v44;
  *(v20 + 304) = v45;
  *(v20 + 312) = @"InputPassthrough";
  *(v20 + 320) = 1;
  *(v20 + 344) = v39;
  *(v20 + 352) = @"Name";
  v46 = @"InputPassthrough";
  v47 = @"Name";
  v48 = sub_1CA94C438("Open File (Action Name)", 23);
  v50 = v49;
  v51 = sub_1CA94C438("Open File", 9);
  v53 = v52;
  v229 = &v203;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v203 - v232;
  sub_1CA948D98();
  v55 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v203 - v235;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 360) = sub_1CA2F9F14(v48, v50, v51, v53, 0, 0, v54, v56);
  *(v20 + 384) = v230;
  *(v20 + 392) = @"ParameterCollapsingBehavior";
  *(v20 + 400) = 0x726576654ELL;
  *(v20 + 408) = 0xE500000000000000;
  v58 = MEMORY[0x1E69E6158];
  *(v20 + 424) = MEMORY[0x1E69E6158];
  *(v20 + 432) = @"Parameters";
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_1CA981570;
  v229 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_allocObject();
  *(v59 + 16) = v218;
  v213 = 0xD000000000000011;
  *(v59 + 32) = @"Class";
  *(v59 + 40) = 0xD000000000000011;
  *(v59 + 48) = 0x80000001CA99E620;
  *(v59 + 64) = v58;
  *(v59 + 72) = @"DefaultValue";
  *(v59 + 80) = 0;
  *(v59 + 104) = MEMORY[0x1E69E6370];
  *(v59 + 112) = @"Key";
  v219 = 0xD000000000000012;
  v220 = 0x80000001CA9AC400;
  *(v59 + 120) = 0xD000000000000012;
  *(v59 + 128) = 0x80000001CA9AC400;
  *(v59 + 144) = v58;
  *(v59 + 152) = @"Label";
  v60 = @"Class";
  v61 = @"Key";
  v62 = @"Label";
  v63 = v60;
  v64 = v61;
  v65 = v62;
  v215 = v63;
  v217 = v64;
  v216 = v65;
  v66 = @"ParameterCollapsingBehavior";
  v67 = @"Parameters";
  v68 = @"DefaultValue";
  v69 = sub_1CA94C438("Show Open In Menu (WFOpenInAskWhenRun)", 38);
  v225 = v70;
  v71 = sub_1CA94C438("Show Open In Menu", 17);
  v73 = v72;
  v226 = &v203;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v203 - v232;
  sub_1CA948D98();
  v75 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v203 - v235;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v69, v225, v71, v73, 0, 0, v74, v76);
  *(v59 + 184) = v230;
  *(v59 + 160) = v78;
  _s3__C3KeyVMa_0(0);
  v226 = v79;
  v225 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v80 = sub_1CA94C1E8();
  v81 = sub_1CA2F864C(v80);
  *(v223 + 32) = v81;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1CA981400;
  *(v82 + 32) = @"AppSearchType";
  *(v82 + 40) = 0x6E496E65704FLL;
  *(v82 + 48) = 0xE600000000000000;
  v83 = MEMORY[0x1E69E6158];
  v84 = v215;
  *(v82 + 64) = MEMORY[0x1E69E6158];
  *(v82 + 72) = v84;
  v204 = 0xD000000000000014;
  *(v82 + 80) = 0xD000000000000014;
  *(v82 + 88) = 0x80000001CA99B070;
  v86 = v216;
  v85 = v217;
  *(v82 + 104) = v83;
  *(v82 + 112) = v85;
  strcpy((v82 + 120), "WFSelectedApp");
  *(v82 + 134) = -4864;
  *(v82 + 144) = v83;
  *(v82 + 152) = v86;
  v215 = v84;
  v217 = v85;
  v216 = v86;
  v87 = @"AppSearchType";
  v88 = sub_1CA94C438("App (WFSelectedApp)", 19);
  v209 = v89;
  v210 = v88;
  v90 = sub_1CA94C438("App", 3);
  v208 = v91;
  *&v211 = &v203;
  MEMORY[0x1EEE9AC00](v90);
  v92 = v232;
  sub_1CA948D98();
  v93 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v203 - v235;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v82 + 160) = sub_1CA2F9F14(v210, v209, v90, v208, 0, 0, &v203 - v92, v94);
  v96 = v230;
  *(v82 + 184) = v230;
  *(v82 + 192) = @"Placeholder";
  v205 = @"Placeholder";
  v97 = sub_1CA94C438("Default App (WFSelectedApp)", 27);
  v209 = v98;
  v210 = v97;
  v99 = sub_1CA94C438("Default App", 11);
  v208 = v100;
  *&v211 = &v203;
  MEMORY[0x1EEE9AC00](v99);
  sub_1CA948D98();
  v101 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v203 - v235;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v82 + 200) = sub_1CA2F9F14(v210, v209, v99, v208, 0, 0, &v203 - v92, v102);
  *(v82 + 224) = v96;
  *(v82 + 232) = @"RequiredResources";
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v104 = swift_allocObject();
  *(v104 + 16) = v228;
  v105 = swift_allocObject();
  v211 = xmmword_1CA9813C0;
  *(v105 + 16) = xmmword_1CA9813C0;
  strcpy((v105 + 32), "WFParameterKey");
  *(v105 + 47) = -18;
  v106 = v220;
  *(v105 + 48) = v219;
  *(v105 + 56) = v106;
  v210 = 0x80000001CA993570;
  v107 = MEMORY[0x1E69E6158];
  *(v105 + 72) = MEMORY[0x1E69E6158];
  *(v105 + 80) = 0xD000000000000010;
  *(v105 + 88) = 0x80000001CA993570;
  *(v105 + 96) = 0;
  v108 = MEMORY[0x1E69E6370];
  *(v105 + 120) = MEMORY[0x1E69E6370];
  *(v105 + 128) = 0x72756F7365524657;
  *(v105 + 168) = v107;
  v208 = 0xD00000000000001BLL;
  v209 = 0x80000001CA993590;
  *(v105 + 136) = 0xEF7373616C436563;
  *(v105 + 144) = 0xD00000000000001BLL;
  *(v105 + 152) = 0x80000001CA993590;
  v109 = @"RequiredResources";
  *(v104 + 32) = sub_1CA94C1E8();
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v82 + 264) = v207;
  *(v82 + 240) = v104;
  v110 = v204;
  *(v82 + 272) = sub_1CA94C368();
  *(v82 + 304) = v108;
  *(v82 + 280) = 1;
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v113 = v223;
  *(v223 + 40) = v112;
  v114 = swift_allocObject();
  *(v114 + 16) = v218;
  *(v114 + 32) = v215;
  *(v114 + 40) = v110;
  *(v114 + 48) = 0x80000001CA99B500;
  *(v114 + 64) = v107;
  *(v114 + 72) = @"Hidden";
  *(v114 + 80) = 1;
  v115 = v217;
  *(v114 + 104) = v108;
  *(v114 + 112) = v115;
  *(v114 + 120) = 0x6D614E7070414657;
  *(v114 + 128) = 0xE900000000000065;
  v116 = v216;
  *(v114 + 144) = v107;
  *(v114 + 152) = v116;
  v117 = @"Hidden";
  v118 = sub_1CA94C438("App Name (WFAppName)", 20);
  v204 = v119;
  v120 = sub_1CA94C438("App Name", 8);
  v122 = v121;
  *&v218 = &v203;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v203 - v232;
  sub_1CA948D98();
  v124 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v203 - v235;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v118, v204, v120, v122, 0, 0, v123, v125);
  *(v114 + 184) = v230;
  *(v114 + 160) = v127;
  v128 = sub_1CA94C1E8();
  *(v113 + 48) = sub_1CA2F864C(v128);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1CA981370;
  *(v129 + 32) = v215;
  *(v129 + 40) = 0xD000000000000015;
  *(v129 + 48) = 0x80000001CA99B1E0;
  v130 = MEMORY[0x1E69E6158];
  *(v129 + 64) = MEMORY[0x1E69E6158];
  *(v129 + 72) = @"FilePickerSupportedTypes";
  *(v129 + 80) = &unk_1F49F6EF0;
  v131 = v217;
  *(v129 + 104) = v227;
  *(v129 + 112) = v131;
  *(v129 + 120) = 0x7475706E494657;
  *(v129 + 128) = 0xE700000000000000;
  v132 = v216;
  *(v129 + 144) = v130;
  *(v129 + 152) = v132;
  v133 = @"FilePickerSupportedTypes";
  v134 = sub_1CA94C438("File (WFInput)", 14);
  v217 = v135;
  *&v218 = v134;
  v136 = sub_1CA94C438("File", 4);
  v216 = v137;
  v224 = &v203;
  MEMORY[0x1EEE9AC00](v136);
  v138 = v232;
  sub_1CA948D98();
  v139 = v231;
  v140 = [v231 bundleURL];
  v215 = &v203;
  MEMORY[0x1EEE9AC00](v140);
  v141 = v221;
  v142 = &v203 - v235;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 160) = sub_1CA2F9F14(v218, v217, v136, v216, 0, 0, &v203 - v138, v142);
  v144 = v230;
  v145 = v205;
  *(v129 + 184) = v230;
  *(v129 + 192) = v145;
  v146 = sub_1CA94C438("File (WFInput)", 14);
  v217 = v147;
  *&v218 = v146;
  v148 = sub_1CA94C438("File", 4);
  v216 = v149;
  v224 = &v203;
  MEMORY[0x1EEE9AC00](v148);
  v150 = &v203 - v138;
  sub_1CA948D98();
  v151 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v203 - v235;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v218, v217, v148, v216, 0, 0, v150, v152);
  *(v129 + 224) = v144;
  *(v129 + 200) = v154;
  v155 = sub_1CA94C1E8();
  v156 = sub_1CA2F864C(v155);
  v157 = v223;
  *(v223 + 56) = v156;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(v141 + 440) = v157;
  *(v141 + 464) = v158;
  *(v141 + 472) = @"ParameterSummary";
  v229 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_1CA981360;
  v226 = "App Name (WFAppName)";
  v159 = @"ParameterSummary";
  v160 = sub_1CA94C438("Open ${WFInput} in ${WFSelectedApp}", 35);
  v162 = v161;
  v163 = sub_1CA94C438("Open ${WFInput} in ${WFSelectedApp}", 35);
  v165 = v164;
  v225 = &v203;
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v203 - v232;
  sub_1CA948D98();
  v167 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v203 - v235;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v170 = sub_1CA2F9F14(v160, v162, v163, v165, 0, 0, v166, v168);
  v171 = objc_allocWithZone(WFActionParameterSummaryValue);
  v172 = sub_1CA65DD78(0xD00000000000002BLL, v226 | 0x8000000000000000, v170);
  *(v230 + 32) = v172;
  v226 = "in ${WFSelectedApp}";
  v173 = sub_1CA94C438("Open ${WFInput}", 15);
  v175 = v174;
  v176 = sub_1CA94C438("Open ${WFInput}", 15);
  v178 = v177;
  v225 = &v203;
  MEMORY[0x1EEE9AC00](v176);
  v179 = &v203 - v232;
  sub_1CA948D98();
  v180 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v203 - v235;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v183 = sub_1CA2F9F14(v173, v175, v176, v178, 0, 0, v179, v181);
  v184 = objc_allocWithZone(WFActionParameterSummaryValue);
  v185 = sub_1CA65DD78(0xD00000000000001DLL, v226 | 0x8000000000000000, v183);
  v187 = v229;
  v186 = v230;
  *(v230 + 40) = v185;
  *(v141 + 480) = sub_1CA65AF90(v186);
  *(v141 + 504) = v187;
  *(v141 + 512) = @"RemoteExecuteOnPlatforms";
  *(v141 + 544) = v227;
  *(v141 + 520) = &unk_1F49F6F20;
  *(v141 + 552) = @"RequiredResources";
  v188 = swift_allocObject();
  *(v188 + 16) = v228;
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_1CA97EDF0;
  *(v189 + 32) = v213;
  *(v189 + 40) = 0x80000001CA99B240;
  v190 = swift_allocObject();
  *(v190 + 16) = v228;
  v191 = swift_allocObject();
  *(v191 + 16) = v211;
  strcpy((v191 + 32), "WFParameterKey");
  *(v191 + 47) = -18;
  v192 = v220;
  *(v191 + 48) = v219;
  *(v191 + 56) = v192;
  v193 = MEMORY[0x1E69E6158];
  *(v191 + 72) = MEMORY[0x1E69E6158];
  *(v191 + 80) = 0xD000000000000010;
  *(v191 + 88) = v210;
  *(v191 + 96) = 1;
  *(v191 + 120) = MEMORY[0x1E69E6370];
  *(v191 + 128) = 0x72756F7365524657;
  *(v191 + 168) = v193;
  *(v191 + 136) = 0xEF7373616C436563;
  v194 = v209;
  *(v191 + 144) = v208;
  *(v191 + 152) = v194;
  v195 = @"RemoteExecuteOnPlatforms";
  v196 = @"RequiredResources";
  *(v190 + 32) = sub_1CA94C1E8();
  *(v189 + 48) = v190;
  v197 = v207;
  *(v189 + 72) = v207;
  *(v189 + 80) = 0x72756F7365524657;
  *(v189 + 120) = v193;
  *(v189 + 88) = 0xEF7373616C436563;
  *(v189 + 96) = 0xD000000000000019;
  *(v189 + 104) = 0x80000001CA9932D0;
  *(v188 + 32) = sub_1CA94C1E8();
  *(v141 + 584) = v197;
  *(v141 + 560) = v188;
  *(v141 + 592) = @"RequiresUnlock";
  *(v141 + 624) = MEMORY[0x1E69E6370];
  *(v141 + 600) = 1;
  *(v141 + 632) = @"UserInterfaceClasses";
  v198 = @"RequiresUnlock";
  v199 = @"UserInterfaceClasses";
  v200 = sub_1CA94C1E8();
  *(v141 + 664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v141 + 640) = v200;
  *(v141 + 672) = @"UserInterfaces";
  *(v141 + 704) = v227;
  *(v141 + 680) = &unk_1F49F6FB0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v201 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA386750()
{
  v219 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9AC590;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("create|generate|dmg", 19);
  v6 = v5;
  v7 = sub_1CA94C438("create|generate|dmg", 19);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v234 = v11;
  v236 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v213 - v236;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v232 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v235 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v233 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v213 - v233;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v231 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v229 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438("Disk Image", 10);
  v226 = v27;
  v227 = v26;
  v225 = sub_1CA94C438("Disk Image", 10);
  v29 = v28;
  v228 = &v213;
  MEMORY[0x1EEE9AC00](v225);
  v30 = &v213 - v236;
  sub_1CA948D98();
  v31 = v232;
  v32 = [v232 bundleURL];
  v230 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v233;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v227, v226, v225, v29, 0, 0, v30, &v213 - v34);
  v36 = v231;
  *(v23 + 64) = v231;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438("Creates a new disk image (.dmg) file. The disk image will contain any files passed as input.", 92);
  v226 = v39;
  v227 = v38;
  v40 = sub_1CA94C438("Creates a new disk image (.dmg) file. The disk image will contain any files passed as input.", 92);
  v42 = v41;
  v228 = &v213;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v213 - v236;
  sub_1CA948D98();
  v44 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v227, v226, v40, v42, 0, 0, v43, &v213 - v34);
  *(v23 + 104) = v36;
  *(v23 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v47 = sub_1CA94C1E8();
  v48 = v229;
  v49 = sub_1CA6B3784(v47);
  v50 = v230;
  v230[20] = v49;
  v50[23] = v48;
  v50[24] = @"Input";
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  v224 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  v52 = MEMORY[0x1E69E6370];
  *(v51 + 48) = 1;
  *(v51 + 72) = v52;
  strcpy((v51 + 80), "ParameterKey");
  *(v51 + 93) = 0;
  *(v51 + 94) = -5120;
  *(v51 + 96) = 0x7475706E494657;
  *(v51 + 104) = 0xE700000000000000;
  *(v51 + 120) = MEMORY[0x1E69E6158];
  *(v51 + 128) = 0x6465726975716552;
  *(v51 + 136) = 0xE800000000000000;
  *(v51 + 144) = 1;
  *(v51 + 168) = v52;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v229;
  *(v51 + 192) = &unk_1F49F7030;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v228 = v55;
  v50[25] = v54;
  v50[28] = v55;
  v50[29] = @"Name";
  v56 = @"Name";
  v226 = sub_1CA94C438("Make Disk Image (Action Name)", 29);
  v58 = v57;
  v59 = sub_1CA94C438("Make Disk Image", 15);
  v61 = v60;
  v227 = &v213;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v213 - v236;
  sub_1CA948D98();
  v63 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v233;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v226, v58, v59, v61, 0, 0, v62, &v213 - v64);
  v67 = v230;
  v68 = v231;
  v230[30] = v66;
  v67[33] = v68;
  v67[34] = @"Output";
  v69 = swift_initStackObject();
  *(v69 + 16) = v224;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 0;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438("Disk Image (Default Output Name)", 32);
  v225 = v72;
  v226 = v71;
  v73 = sub_1CA94C438("Disk Image", 10);
  v75 = v74;
  v227 = &v213;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v213 - v236;
  sub_1CA948D98();
  v77 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v226, v225, v73, v75, 0, 0, v76, &v213 - v64);
  *(v69 + 168) = v68;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v229;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F49F7060;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v230;
  v230[35] = v80;
  v81[38] = v228;
  v81[39] = @"Parameters";
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_1CA981560;
  v229 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  *(v82 + 16) = v224;
  *(v82 + 32) = @"AllowsMultipleValues";
  *(v82 + 40) = 1;
  *(v82 + 64) = MEMORY[0x1E69E6370];
  *(v82 + 72) = @"Class";
  *(v82 + 80) = 0xD000000000000015;
  *(v82 + 88) = 0x80000001CA99B1E0;
  *(v82 + 104) = v79;
  *(v82 + 112) = @"Key";
  *(v82 + 120) = 0x7475706E494657;
  *(v82 + 128) = 0xE700000000000000;
  *(v82 + 144) = v79;
  *(v82 + 152) = @"Label";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v83;
  v87 = v84;
  v88 = v85;
  v221 = v86;
  v220 = v87;
  v222 = v88;
  v89 = @"Parameters";
  v90 = @"AllowsMultipleValues";
  v91 = sub_1CA94C438("Files (WFInput)", 15);
  v93 = v92;
  v94 = sub_1CA94C438("Files", 5);
  v96 = v95;
  v228 = &v213;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v213 - v236;
  sub_1CA948D98();
  v98 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v213 - v233;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v91, v93, v94, v96, 0, 0, v97, v99);
  *(v82 + 184) = v231;
  *(v82 + 160) = v101;
  _s3__C3KeyVMa_0(0);
  v228 = v102;
  v227 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v103 = sub_1CA94C1E8();
  v104 = sub_1CA2F864C(v103);
  *(v225 + 32) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1CA981370;
  v107 = v220;
  v106 = v221;
  *(v105 + 32) = v221;
  *(v105 + 40) = 0xD000000000000014;
  *(v105 + 48) = 0x80000001CA99B500;
  v108 = MEMORY[0x1E69E6158];
  *(v105 + 64) = MEMORY[0x1E69E6158];
  *(v105 + 72) = v107;
  *(v105 + 80) = 0x614E656D756C6F56;
  *(v105 + 88) = 0xEA0000000000656DLL;
  v109 = v222;
  *(v105 + 104) = v108;
  *(v105 + 112) = v109;
  v221 = v106;
  v216 = v107;
  v222 = v109;
  *&v217 = sub_1CA94C438("Volume Name (VolumeName)", 24);
  v215 = v110;
  v111 = sub_1CA94C438("Volume Name", 11);
  v214 = v112;
  v220 = &v213;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v236;
  sub_1CA948D98();
  v114 = v232;
  v115 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v213 - v233;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 120) = sub_1CA2F9F14(v217, v215, v111, v214, 0, 0, &v213 - v113, v116);
  v118 = v231;
  *(v105 + 144) = v231;
  *(v105 + 152) = @"Placeholder";
  v119 = @"Placeholder";
  *&v217 = sub_1CA94C438("optional (VolumeName)", 21);
  v215 = v120;
  v121 = sub_1CA94C438("optional", 8);
  v123 = v122;
  v220 = &v213;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v213 - v113;
  sub_1CA948D98();
  v125 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v213 - v233;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 160) = sub_1CA2F9F14(v217, v215, v121, v123, 0, 0, v124, v126);
  *(v105 + 184) = v118;
  *(v105 + 192) = @"TextAlignment";
  v128 = MEMORY[0x1E69E6158];
  *(v105 + 224) = MEMORY[0x1E69E6158];
  *(v105 + 200) = 0x7468676952;
  *(v105 + 208) = 0xE500000000000000;
  v129 = @"TextAlignment";
  v130 = sub_1CA94C1E8();
  v131 = sub_1CA2F864C(v130);
  *(v225 + 40) = v131;
  v132 = swift_allocObject();
  v217 = xmmword_1CA9813C0;
  *(v132 + 16) = xmmword_1CA9813C0;
  v215 = 0x80000001CA99E620;
  v133 = v221;
  *(v132 + 32) = v221;
  *(v132 + 40) = 0xD000000000000011;
  *(v132 + 48) = 0x80000001CA99E620;
  v134 = v216;
  *(v132 + 64) = v128;
  *(v132 + 72) = v134;
  strcpy((v132 + 80), "EncryptImage");
  *(v132 + 93) = 0;
  *(v132 + 94) = -5120;
  *(v132 + 104) = v128;
  v135 = v222;
  *(v132 + 112) = v222;
  v220 = v133;
  v221 = v134;
  v222 = v135;
  v136 = sub_1CA94C438("Encrypt (EncryptImage)", 22);
  v138 = v137;
  v139 = sub_1CA94C438("Encrypt", 7);
  v141 = v140;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v213 - v236;
  sub_1CA948D98();
  v143 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v213 - v233;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v136, v138, v139, v141, 0, 0, v142, v144);
  *(v132 + 144) = v231;
  *(v132 + 120) = v146;
  v147 = sub_1CA94C1E8();
  v148 = sub_1CA2F864C(v147);
  v149 = v225;
  *(v225 + 48) = v148;
  v150 = swift_allocObject();
  *(v150 + 16) = v224;
  *(v150 + 32) = v220;
  *(v150 + 40) = 0xD000000000000011;
  *(v150 + 48) = v215;
  v151 = MEMORY[0x1E69E6158];
  *(v150 + 64) = MEMORY[0x1E69E6158];
  *(v150 + 72) = @"DefaultValue";
  *(v150 + 80) = 0;
  v152 = v221;
  *(v150 + 104) = MEMORY[0x1E69E6370];
  *(v150 + 112) = v152;
  *(v150 + 120) = 0x69466F54657A6953;
  *(v150 + 128) = 0xE900000000000074;
  v153 = v222;
  *(v150 + 144) = v151;
  *(v150 + 152) = v153;
  *&v224 = @"DefaultValue";
  v154 = sub_1CA94C438("Size to Fit Contents (SizeToFit)", 32);
  v215 = v155;
  v156 = sub_1CA94C438("Size to Fit Contents", 20);
  v158 = v157;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v156);
  v159 = &v213 - v236;
  sub_1CA948D98();
  v160 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v213 - v233;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163 = sub_1CA2F9F14(v154, v215, v156, v158, 0, 0, v159, v161);
  *(v150 + 184) = v231;
  *(v150 + 160) = v163;
  v164 = sub_1CA94C1E8();
  *(v149 + 56) = sub_1CA2F864C(v164);
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_1CA981400;
  *(v165 + 32) = v220;
  *(v165 + 40) = 0xD00000000000001CLL;
  *(v165 + 48) = 0x80000001CA9AC750;
  v166 = MEMORY[0x1E69E6158];
  *(v165 + 64) = MEMORY[0x1E69E6158];
  *(v165 + 72) = @"DefaultUnit";
  *(v165 + 80) = 16967;
  *(v165 + 88) = 0xE200000000000000;
  v167 = v224;
  *(v165 + 104) = v166;
  *(v165 + 112) = v167;
  v168 = MEMORY[0x1E69E6530];
  *(v165 + 120) = 1;
  *(v165 + 144) = v168;
  *(v165 + 152) = v221;
  *(v165 + 160) = 0x7A69536567616D49;
  *(v165 + 168) = 0xE900000000000065;
  v169 = v222;
  *(v165 + 184) = v166;
  *(v165 + 192) = v169;
  v170 = @"DefaultUnit";
  v171 = sub_1CA94C438("Image Size (ImageSize)", 22);
  v173 = v172;
  v174 = sub_1CA94C438("Image Size", 10);
  v176 = v175;
  v226 = &v213;
  MEMORY[0x1EEE9AC00](v174);
  v177 = &v213 - v236;
  sub_1CA948D98();
  v178 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  v179 = &v213 - v233;
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v165 + 200) = sub_1CA2F9F14(v171, v173, v174, v176, 0, 0, v177, v179);
  *(v165 + 224) = v231;
  *(v165 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_1CA981310;
  v182 = swift_allocObject();
  *(v182 + 16) = v217;
  strcpy((v182 + 32), "WFParameterKey");
  *(v182 + 47) = -18;
  *(v182 + 48) = 0x69466F54657A6953;
  *(v182 + 56) = 0xE900000000000074;
  v183 = MEMORY[0x1E69E6158];
  *(v182 + 72) = MEMORY[0x1E69E6158];
  *(v182 + 80) = 0xD000000000000010;
  *(v182 + 88) = 0x80000001CA993570;
  *(v182 + 96) = 0;
  *(v182 + 120) = MEMORY[0x1E69E6370];
  *(v182 + 128) = 0x72756F7365524657;
  *(v182 + 168) = v183;
  *(v182 + 136) = 0xEF7373616C436563;
  *(v182 + 144) = 0xD00000000000001BLL;
  *(v182 + 152) = 0x80000001CA993590;
  v184 = @"RequiredResources";
  *(v181 + 32) = sub_1CA94C1E8();
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v165 + 240) = v181;
  *(v165 + 264) = v185;
  *(v165 + 272) = @"WFUnitType";
  *(v165 + 304) = v183;
  *(v165 + 280) = 0xD000000000000013;
  *(v165 + 288) = 0x80000001CA9AC790;
  v186 = @"WFUnitType";
  v187 = sub_1CA94C1E8();
  v188 = sub_1CA2F864C(v187);
  v189 = v225;
  *(v225 + 64) = v188;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v191 = v230;
  v230[40] = v189;
  v191[43] = v190;
  v191[44] = @"ParameterSummary";
  v192 = @"ParameterSummary";
  v193 = sub_1CA94C438("Make disk image with ${WFInput} (Parameter Summary)", 51);
  v195 = v194;
  v196 = sub_1CA94C438("Make disk image with ${WFInput}", 31);
  v198 = v197;
  MEMORY[0x1EEE9AC00](v196);
  v199 = &v213 - v236;
  sub_1CA948D98();
  v200 = [v232 bundleURL];
  MEMORY[0x1EEE9AC00](v200);
  v201 = &v213 - v233;
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v203 = sub_1CA2F9F14(v193, v195, v196, v198, 0, 0, v199, v201);
  v204 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v205 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v206 = v230;
  v230[45] = v204;
  v206[48] = v205;
  v206[49] = @"RequiredResources";
  v207 = v206;
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_1CA9813B0;
  v237 = 2;
  v238 = 0;
  v209 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v210 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v237);
  *(v208 + 32) = v211;
  v207[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v207[50] = v208;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3880DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppEnumContentItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CA388134(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFRemoteAppEnumContentItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1CA3881C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppEnumContentItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WFImagePlaygroundAvailabilityResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFImagePlaygroundAvailabilityResource.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_initWithDefinition_enableDistributedNotifications_, 0, 1);
  v6 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  sub_1CA30C708();

  return v8;
}

uint64_t sub_1CA388364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1CA949F78();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_1CA9494F8();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443888, &unk_1CA981640);
  v4[11] = swift_task_alloc();
  v7 = sub_1CA949568();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_1CA949558();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = sub_1CA949478();
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v10 = sub_1CA9495A8();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA388634, 0, 0);
}

uint64_t sub_1CA388634()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  sub_1CA949488();
  (*(v2 + 104))(v1, *MEMORY[0x1E696E430], v3);
  sub_1CA949468();
  (*(v2 + 8))(v1, v3);
  sub_1CA949588();
  sub_1CA949548();
  (*(v5 + 8))(v4, v6);
  v0[24] = *MEMORY[0x1E69E1078];
  OUTLINED_FUNCTION_10();
  sub_1CA2AD9B4(v7, v8, MEMORY[0x1E69A1298]);
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_1_20(v9);

  return MEMORY[0x1EEE6D8C8](v10);
}

uint64_t sub_1CA3887A0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1CA388C84;
  }

  else
  {
    v2 = sub_1CA3888B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CA3888D0()
{
  v36 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 168);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    (*(v4 + 8))(v3, v5);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 64);
    (*(v10 + 32))(v8, v1, v2);
    sub_1CA949C58();
    (*(v10 + 16))(v9, v8, v2);
    v11 = sub_1CA949F68();
    v12 = sub_1CA94CC08();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
    if (v13)
    {
      v34 = *(v0 + 32);
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v20 = 136315138;
      sub_1CA2AD9B4(&unk_1EC4438A0, MEMORY[0x1E69A11A8], MEMORY[0x1E69A11C0]);
      v21 = sub_1CA94D798();
      v32 = v16;
      v23 = v22;
      v31 = v12;
      v24 = *(v15 + 8);
      v24(v14, v17);
      v25 = sub_1CA26B54C(v21, v23, &v35);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1CA256000, v11, v31, "ImagePlayground availability changed: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1CCAA4BF0](v33, -1, -1);
      MEMORY[0x1CCAA4BF0](v20, -1, -1);

      (*(v18 + 8))(v32, v34);
    }

    else
    {

      v24 = *(v15 + 8);
      v24(v14, v17);
      (*(v18 + 8))(v16, v19);
    }

    [*(v0 + 24) refreshAvailabilityWithNotification];
    v26 = OUTLINED_FUNCTION_3_3();
    (v24)(v26);
    OUTLINED_FUNCTION_10();
    sub_1CA2AD9B4(v27, v28, MEMORY[0x1E69A1298]);
    v29 = swift_task_alloc();
    *(v0 + 200) = v29;
    *v29 = v0;
    v30 = OUTLINED_FUNCTION_1_20(v29);

    return MEMORY[0x1EEE6D8C8](v30);
  }
}

uint64_t sub_1CA388C84()
{
  *(v0 + 16) = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1CA388D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CA3601B4;

  return sub_1CA388364(a1, v4, v5, v6);
}

uint64_t WFImagePlaygroundAvailabilityResource.name.getter()
{
  sub_1CA94C438("Image Playground", 16);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  OUTLINED_FUNCTION_3_3();
  v0 = sub_1CA94C368();
  OUTLINED_FUNCTION_3_3();
  v1 = sub_1CA94C368();

  v3 = OUTLINED_FUNCTION_2(v2, sel_localizedStringForKey_value_table_);

  v4 = sub_1CA94C3A8();
  return v4;
}

Swift::Void __swiftcall WFImagePlaygroundAvailabilityResource.refreshAvailability()()
{
  v1 = v0;
  sub_1CA949488();
  if (sub_1CA949458())
  {

    [v0 updateAvailability:1 withError:0];
  }

  else
  {
    v2 = sub_1CA94C3A8();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA97EDF0;
    *(inited + 32) = sub_1CA94C3A8();
    *(inited + 40) = v6;
    sub_1CA94C438("Image Playground Unavailable", 28);
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    v7 = qword_1EDB9F690;
    v8 = sub_1CA94C368();
    v9 = sub_1CA94C368();

    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    v11 = sub_1CA94C3A8();
    v13 = v12;

    v14 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v11;
    *(inited + 56) = v13;
    *(inited + 80) = sub_1CA94C3A8();
    *(inited + 88) = v15;
    sub_1CA94C438("Image Playground is not currently available.", 44);
    v16 = sub_1CA94C368();
    v17 = sub_1CA94C368();

    v18 = [v7 localizedStringForKey:v16 value:v17 table:0];

    v19 = sub_1CA94C3A8();
    v21 = v20;

    *(inited + 120) = v14;
    *(inited + 96) = v19;
    *(inited + 104) = v21;
    v22 = sub_1CA94C1E8();
    v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v24 = sub_1CA298568(v2, v4, 1, v22);
    v25 = sub_1CA948AC8();

    [v1 updateAvailability:0 withError:v25];
  }
}

uint64_t WFImagePlaygroundAvailabilityResource.localizedErrorReason(for:)(uint64_t a1)
{
  if (a1 == 1 || a1 == 4)
  {
    return 0;
  }

  sub_1CA94C438("Image Playground is not currently available.", 44);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  OUTLINED_FUNCTION_3_3();
  v3 = sub_1CA94C368();
  OUTLINED_FUNCTION_3_3();
  v4 = sub_1CA94C368();

  v6 = OUTLINED_FUNCTION_2(v5, sel_localizedStringForKey_value_table_);

  v2 = sub_1CA94C3A8();
  return v2;
}

id WFImagePlaygroundAvailabilityResource.__allocating_init(definition:enableDistributedNotifications:)(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = sub_1CA94C1A8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithDefinition:v4 enableDistributedNotifications:a2 & 1];

  return v5;
}

id WFImagePlaygroundAvailabilityResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFImagePlaygroundAvailabilityResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA3895FC()
{
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v450 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = sub_1CA94C1E8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000011;
  v449 = 0xD000000000000011;
  *(inited + 88) = 0x80000001CA9AC960;
  *(inited + 96) = sub_1CA94C1E8();
  v431 = v2;
  *(inited + 120) = v2;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v3 = sub_1CA94C438("Things (App Name)", 17);
  v5 = v4;
  v6 = sub_1CA94C438("Things", 6);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v464 = v10;
  v468 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v420 - v468;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v467 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v465 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v466 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v420 - v466;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v463 = v18;
  *(inited + 144) = v17;
  *(inited + 168) = v18;
  *(inited + 176) = 0x6D656863534C5255;
  *(inited + 184) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v435 = swift_allocObject();
  v460 = xmmword_1CA97EDF0;
  *(v435 + 16) = xmmword_1CA97EDF0;
  v19 = swift_initStackObject();
  v434 = v19;
  v448 = xmmword_1CA9813C0;
  *(v19 + 16) = xmmword_1CA9813C0;
  *(v19 + 32) = 0x736E6F69746341;
  *(v19 + 40) = 0xE700000000000000;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v433 = swift_allocObject();
  v451 = xmmword_1CA981310;
  *(v433 + 16) = xmmword_1CA981310;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA9813E0;
  strcpy((v20 + 32), "ActionKeywords");
  *(v20 + 47) = -18;
  v21 = sub_1CA94C438("todo|to-do|task", 15);
  v459 = v22;
  v23 = sub_1CA94C438("todo|to-do|task", 15);
  v25 = v24;
  v461 = &v420;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v420 - v468;
  sub_1CA948D98();
  v27 = v467;
  v28 = [v467 bundleURL];
  v432 = inited;
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v420 - v466;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v21, v459, v23, v25, 0, 0, v26, v29);
  v445 = v20;
  *(v20 + 48) = v31;
  *(v20 + 72) = v463;
  *(v20 + 80) = 0x7470697263736544;
  *(v20 + 88) = 0xEB000000006E6F69;
  v461 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v32 = swift_initStackObject();
  *(v32 + 16) = v460;
  *(v32 + 32) = @"DescriptionResult";
  v33 = @"DescriptionResult";
  v34 = sub_1CA94C438("The Things ID of the new to-do", 30);
  v458 = v35;
  v459 = v34;
  v36 = sub_1CA94C438("The Things ID of the new to-do", 30);
  v457 = v37;
  *&v460 = &v420;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v420 - v468;
  sub_1CA948D98();
  v39 = [v27 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  v40 = v466;
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v32 + 40) = sub_1CA2F9F14(v459, v458, v36, v457, 0, 0, v38, &v420 - v40);
  v42 = v463;
  *(v32 + 64) = v463;
  *(v32 + 72) = @"DescriptionSummary";
  v43 = @"DescriptionSummary";
  v44 = sub_1CA94C438("Adds a new to-do item to Things.", 32);
  v458 = v45;
  v459 = v44;
  v457 = sub_1CA94C438("Adds a new to-do item to Things.", 32);
  v47 = v46;
  *&v460 = &v420;
  MEMORY[0x1EEE9AC00](v457);
  v48 = &v420 - v468;
  sub_1CA948D98();
  v49 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v459, v458, v457, v47, 0, 0, v48, &v420 - v40);
  *(v32 + 104) = v42;
  *(v32 + 80) = v51;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v52 = sub_1CA94C1E8();
  v53 = v461;
  v54 = sub_1CA6B3784(v52);
  v55 = v445;
  *(v445 + 96) = v54;
  *(v55 + 120) = v53;
  strcpy((v55 + 128), "Discoverable");
  *(v55 + 141) = 0;
  *(v55 + 142) = -5120;
  v56 = MEMORY[0x1E69E6370];
  *(v55 + 144) = 0;
  *(v55 + 168) = v56;
  *(v55 + 176) = 0x74616D726F46;
  *(v55 + 184) = 0xE600000000000000;
  *(v55 + 192) = 0xD00000000000001CLL;
  *(v55 + 200) = 0x80000001CA9ACA00;
  v57 = MEMORY[0x1E69E6158];
  *(v55 + 216) = MEMORY[0x1E69E6158];
  *(v55 + 224) = 0x696669746E656449;
  v58 = v57;
  *(v55 + 232) = 0xEA00000000007265;
  *(v55 + 240) = 0x6B736174646461;
  *(v55 + 248) = 0xE700000000000000;
  *(v55 + 264) = v57;
  strcpy((v55 + 272), "InputMapping");
  *(v55 + 285) = 0;
  *(v55 + 286) = -5120;
  v461 = swift_allocObject();
  *(v461 + 1) = xmmword_1CA981420;
  v59 = swift_allocObject();
  v454 = xmmword_1CA981380;
  *(v59 + 16) = xmmword_1CA981380;
  strcpy((v59 + 32), "DestinationKey");
  *(v59 + 47) = -18;
  *(v59 + 48) = 1802723700;
  *(v59 + 56) = 0xE400000000000000;
  *(v59 + 72) = v58;
  *(v59 + 80) = 0x74616E6974736544;
  *(v59 + 88) = 0xEF657079546E6F69;
  *(v59 + 96) = 0x74736275534C5255;
  *(v59 + 104) = 0xEF6E6F6974757469;
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x73616C436D657449;
  v459 = 0xE900000000000073;
  v452 = 0x80000001CA993390;
  v453 = 0xD000000000000013;
  *(v59 + 136) = 0xE900000000000073;
  *(v59 + 144) = 0xD000000000000013;
  *(v59 + 152) = 0x80000001CA993390;
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x6574656D61726150;
  *(v59 + 184) = 0xEB00000000495572;
  *&v460 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v60 = swift_allocObject();
  *(v60 + 16) = v448;
  v447 = 0x80000001CA99B500;
  *(v60 + 32) = @"Class";
  *(v60 + 40) = 0xD000000000000014;
  *(v60 + 48) = 0x80000001CA99B500;
  *(v60 + 64) = v58;
  *(v60 + 72) = @"Label";
  v61 = @"Class";
  v62 = @"Label";
  v63 = v61;
  v64 = v62;
  v446 = v63;
  v444 = v64;
  v65 = sub_1CA94C438("Task (Parameter Label)", 22);
  v457 = v66;
  v67 = sub_1CA94C438("Task", 4);
  v69 = v68;
  v458 = &v420;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v420 - v468;
  sub_1CA948D98();
  v71 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v420 - v466;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 80) = sub_1CA2F9F14(v65, v457, v67, v69, 0, 0, v70, v72);
  *(v60 + 104) = v463;
  *(v60 + 112) = @"TextAlignment";
  v74 = MEMORY[0x1E69E6158];
  *(v60 + 144) = MEMORY[0x1E69E6158];
  *(v60 + 120) = 0x7468676952;
  *(v60 + 128) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v458 = v75;
  v457 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v443 = @"TextAlignment";
  v76 = sub_1CA94C1E8();
  v77 = v460;
  *(v59 + 192) = sub_1CA2F864C(v76);
  *(v59 + 216) = v77;
  *(v59 + 224) = 0x654B656372756F53;
  v456 = 0xE900000000000079;
  *(v59 + 232) = 0xE900000000000079;
  *(v59 + 240) = 0x615473676E696874;
  *(v59 + 248) = 0xEA00000000006B73;
  *(v59 + 264) = v74;
  *(v59 + 272) = 0x7954656372756F53;
  *(v59 + 312) = v74;
  *(v59 + 280) = 0xEA00000000006570;
  *(v59 + 288) = 0x6574656D61726150;
  *(v59 + 296) = 0xE900000000000072;
  v461[4] = sub_1CA94C1E8();
  v78 = swift_allocObject();
  *(v78 + 16) = v454;
  strcpy((v78 + 32), "DestinationKey");
  *(v78 + 47) = -18;
  *(v78 + 48) = 1953720684;
  *(v78 + 56) = 0xE400000000000000;
  *(v78 + 72) = v74;
  *(v78 + 80) = 0x74616E6974736544;
  *(v78 + 88) = 0xEF657079546E6F69;
  strcpy((v78 + 96), "URLQueryValue");
  *(v78 + 110) = -4864;
  *(v78 + 120) = v74;
  *(v78 + 128) = 0x73616C436D657449;
  v79 = v452;
  v80 = v453;
  *(v78 + 136) = v459;
  *(v78 + 144) = v80;
  *(v78 + 152) = v79;
  *(v78 + 168) = v74;
  *(v78 + 176) = 0x6574656D61726150;
  *(v78 + 184) = 0xEB00000000495572;
  v81 = swift_allocObject();
  *(v81 + 16) = v448;
  v82 = v446;
  *(v81 + 32) = v446;
  *(v81 + 40) = 0xD000000000000014;
  *(v81 + 48) = v447;
  v83 = v444;
  *(v81 + 64) = v74;
  *(v81 + 72) = v83;
  v442 = v82;
  v444 = v83;
  v84 = sub_1CA94C438("List (Parameter Label)", 22);
  v440 = v85;
  v86 = sub_1CA94C438("List", 4);
  v88 = v87;
  v446 = &v420;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v420 - v468;
  sub_1CA948D98();
  v90 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v420 - v466;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 80) = sub_1CA2F9F14(v84, v440, v86, v88, 0, 0, v89, v91);
  v93 = v443;
  *(v81 + 104) = v463;
  *(v81 + 112) = v93;
  v94 = MEMORY[0x1E69E6158];
  *(v81 + 144) = MEMORY[0x1E69E6158];
  *(v81 + 120) = 0x7468676952;
  *(v81 + 128) = 0xE500000000000000;
  v446 = v93;
  v95 = sub_1CA94C1E8();
  v96 = v460;
  *(v78 + 192) = sub_1CA2F864C(v95);
  *(v78 + 216) = v96;
  *(v78 + 224) = 0x654B656372756F53;
  *(v78 + 232) = v456;
  *(v78 + 240) = 0x694C73676E696874;
  *(v78 + 248) = 0xEA00000000007473;
  v97 = v94;
  *(v78 + 264) = v94;
  *(v78 + 272) = 0x7954656372756F53;
  *(v78 + 312) = v94;
  *(v78 + 280) = 0xEA00000000006570;
  *(v78 + 288) = 0x6574656D61726150;
  *(v78 + 296) = 0xE900000000000072;
  v461[5] = sub_1CA94C1E8();
  v98 = swift_allocObject();
  *(v98 + 16) = v454;
  strcpy((v98 + 32), "DestinationKey");
  *(v98 + 47) = -18;
  *(v98 + 48) = 0x676E6964616568;
  *(v98 + 56) = 0xE700000000000000;
  *(v98 + 72) = v94;
  *(v98 + 80) = 0x74616E6974736544;
  *(v98 + 88) = 0xEF657079546E6F69;
  strcpy((v98 + 96), "URLQueryValue");
  *(v98 + 110) = -4864;
  *(v98 + 120) = v94;
  *(v98 + 128) = 0x73616C436D657449;
  v99 = v452;
  v100 = v453;
  *(v98 + 136) = v459;
  *(v98 + 144) = v100;
  *(v98 + 152) = v99;
  *(v98 + 168) = v94;
  *(v98 + 176) = 0x6574656D61726150;
  *(v98 + 184) = 0xEB00000000495572;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1CA981370;
  v102 = v442;
  *(v101 + 32) = v442;
  *(v101 + 40) = 0xD000000000000014;
  *(v101 + 48) = v447;
  v103 = v444;
  *(v101 + 64) = v97;
  *(v101 + 72) = v103;
  v426 = v102;
  v438 = v103;
  v104 = sub_1CA94C438("Project Heading (Parameter Label)", 33);
  v442 = v105;
  v443 = v104;
  v106 = sub_1CA94C438("Project Heading", 15);
  v108 = v107;
  v444 = &v420;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v420 - v468;
  sub_1CA948D98();
  v110 = v467;
  v111 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v420 - v466;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 80) = sub_1CA2F9F14(v443, v442, v106, v108, 0, 0, v109, v112);
  v114 = v463;
  *(v101 + 104) = v463;
  *(v101 + 112) = @"Placeholder";
  v436 = @"Placeholder";
  v115 = sub_1CA94C438("optional (Parameter Placeholder)", 32);
  v442 = v116;
  v443 = v115;
  v117 = sub_1CA94C438("optional", 8);
  v440 = v118;
  v444 = &v420;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v420 - v468;
  sub_1CA948D98();
  v120 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v420 - v466;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 120) = sub_1CA2F9F14(v443, v442, v117, v440, 0, 0, v119, v121);
  *(v101 + 144) = v114;
  *(v101 + 152) = @"RequiredResources";
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v123 = swift_allocObject();
  *(v123 + 16) = v451;
  *&v430 = 0x80000001CA993590;
  v440 = @"RequiredResources";
  v124 = MEMORY[0x1E69E6158];
  *(v123 + 32) = sub_1CA94C1E8();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v443 = v125;
  *(v101 + 160) = v123;
  v126 = v446;
  *(v101 + 184) = v125;
  *(v101 + 192) = v126;
  *(v101 + 224) = v124;
  *(v101 + 200) = 0x7468676952;
  *(v101 + 208) = 0xE500000000000000;
  v427 = v126;
  v127 = sub_1CA94C1E8();
  v128 = v460;
  *(v98 + 192) = sub_1CA2F864C(v127);
  *(v98 + 216) = v128;
  *(v98 + 224) = 0x654B656372756F53;
  *(v98 + 232) = v456;
  *(v98 + 240) = 0xD000000000000014;
  *(v98 + 248) = 0x80000001CA9ACAD0;
  *(v98 + 264) = v124;
  *(v98 + 272) = 0x7954656372756F53;
  *(v98 + 312) = v124;
  *(v98 + 280) = 0xEA00000000006570;
  *(v98 + 288) = 0x6574656D61726150;
  *(v98 + 296) = 0xE900000000000072;
  v461[6] = sub_1CA94C1E8();
  v129 = swift_allocObject();
  v439 = xmmword_1CA981400;
  *(v129 + 16) = xmmword_1CA981400;
  v429 = 0x80000001CA9ACAF0;
  v130 = v453;
  *(v129 + 32) = v453;
  *(v129 + 40) = 0x80000001CA9ACAF0;
  *(v129 + 48) = 0xD00000000000001ALL;
  *(v129 + 56) = 0x80000001CA9ACB10;
  *(v129 + 72) = v124;
  strcpy((v129 + 80), "DestinationKey");
  *(v129 + 95) = -18;
  *(v129 + 96) = 1852139639;
  *(v129 + 104) = 0xE400000000000000;
  *(v129 + 120) = v124;
  *(v129 + 128) = 0x74616E6974736544;
  *(v129 + 136) = 0xEF657079546E6F69;
  strcpy((v129 + 144), "URLQueryValue");
  *(v129 + 158) = -4864;
  *(v129 + 168) = v124;
  *(v129 + 176) = 0x73616C436D657449;
  *(v129 + 184) = v459;
  *(v129 + 192) = v130;
  *(v129 + 200) = v452;
  *(v129 + 216) = v124;
  *(v129 + 224) = 0x6574656D61726150;
  *(v129 + 232) = 0xEB00000000495572;
  v131 = swift_allocObject();
  *(v131 + 16) = v450;
  v428 = 0xD000000000000016;
  v132 = v426;
  *(v131 + 32) = v426;
  *(v131 + 40) = 0xD000000000000016;
  *(v131 + 48) = 0x80000001CA99C4A0;
  *(v131 + 64) = v124;
  *(v131 + 72) = @"DisallowedVariableTypes";
  v133 = v131;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v442 = v134;
  v437 = v133;
  v133[2].data = &unk_1F49F71D0;
  v133[3].info = v134;
  v133[3].data = @"Items";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v446 = swift_allocObject();
  *&v446->data = xmmword_1CA981560;
  v426 = v132;
  v135 = @"DisallowedVariableTypes";
  v136 = @"Items";
  v137 = sub_1CA94C438("Today (thingsWhen)", 18);
  v423 = v138;
  v424 = v137;
  v139 = sub_1CA94C438("Today", 5);
  v422 = v140;
  v425 = &v420;
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v420 - v468;
  sub_1CA948D98();
  v142 = v467;
  v143 = [v467 bundleURL];
  v421 = &v420;
  MEMORY[0x1EEE9AC00](v143);
  v144 = v466;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v424, v423, v139, v422, 0, 0, v141, &v420 - v144);
  v446[1].isa = v146;
  v147 = sub_1CA94C438("Tomorrow (thingsWhen)", 21);
  v423 = v148;
  v424 = v147;
  v149 = sub_1CA94C438("Tomorrow", 8);
  v422 = v150;
  v425 = &v420;
  MEMORY[0x1EEE9AC00](v149);
  v151 = v468;
  sub_1CA948D98();
  v152 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v424, v423, v149, v422, 0, 0, &v420 - v151, &v420 - v144);
  v155 = v446;
  v446[1].info = v154;
  v156 = sub_1CA94C438("This Evening (thingsWhen)", 25);
  v423 = v157;
  v424 = v156;
  v158 = sub_1CA94C438("This Evening", 12);
  v422 = v159;
  v425 = &v420;
  MEMORY[0x1EEE9AC00](v158);
  sub_1CA948D98();
  v160 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v420 - v466;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v155[1].data = sub_1CA2F9F14(v424, v423, v158, v422, 0, 0, &v420 - v151, v161);
  v163 = sub_1CA94C438("Someday (thingsWhen)", 20);
  v423 = v164;
  v424 = v163;
  v165 = sub_1CA94C438("Someday", 7);
  v422 = v166;
  v425 = &v420;
  MEMORY[0x1EEE9AC00](v165);
  sub_1CA948D98();
  v167 = v467;
  v168 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  v169 = v466;
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v171 = sub_1CA2F9F14(v424, v423, v165, v422, 0, 0, &v420 - v151, &v420 - v169);
  v446[1].length = v171;
  v172 = sub_1CA94C438("On Date (thingsWhen)", 20);
  v423 = v173;
  v424 = v172;
  v174 = sub_1CA94C438("On Date", 7);
  v422 = v175;
  v425 = &v420;
  MEMORY[0x1EEE9AC00](v174);
  v176 = &v420 - v468;
  sub_1CA948D98();
  v177 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v179 = sub_1CA2F9F14(v424, v423, v174, v422, 0, 0, v176, &v420 - v169);
  v180 = v446;
  v446[2].isa = v179;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v183 = v437;
  v182 = v438;
  v437[3].length = v180;
  v183[4].data = v181;
  v183[4].length = v182;
  v425 = v182;
  v184 = sub_1CA94C438("When (Parameter Label)", 22);
  v438 = v185;
  v186 = sub_1CA94C438("When", 4);
  v188 = v187;
  v446 = &v420;
  MEMORY[0x1EEE9AC00](v186);
  v189 = &v420 - v468;
  sub_1CA948D98();
  v190 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v190);
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v192 = sub_1CA2F9F14(v184, v438, v186, v188, 0, 0, v189, &v420 - v169);
  v183[5].length = v463;
  v183[5].isa = v192;
  v193 = sub_1CA94C1E8();
  v194 = v460;
  *(v129 + 240) = sub_1CA2F864C(v193);
  *(v129 + 264) = v194;
  *(v129 + 272) = 0x654B656372756F53;
  *(v129 + 280) = v456;
  *(v129 + 288) = 0x685773676E696874;
  v446 = 0xEA00000000006E65;
  *(v129 + 296) = 0xEA00000000006E65;
  v195 = MEMORY[0x1E69E6158];
  *(v129 + 312) = MEMORY[0x1E69E6158];
  *(v129 + 320) = 0x7954656372756F53;
  *(v129 + 360) = v195;
  *(v129 + 328) = 0xEA00000000006570;
  *(v129 + 336) = 0x6574656D61726150;
  *(v129 + 344) = 0xE900000000000072;
  v196 = v195;
  v461[7] = sub_1CA94C1E8();
  v197 = swift_allocObject();
  *(v197 + 16) = v450;
  *(v197 + 32) = 0x73616C436D657449;
  v438 = 0x80000001CA993AC0;
  v198 = v449;
  *(v197 + 40) = v459;
  *(v197 + 48) = v198;
  *(v197 + 56) = 0x80000001CA993AC0;
  *(v197 + 72) = v196;
  *(v197 + 80) = 0x6574656D61726150;
  *(v197 + 88) = 0xEB00000000495572;
  v199 = swift_allocObject();
  *(v199 + 16) = v439;
  *(v199 + 64) = v196;
  v437 = 0x80000001CA9AB710;
  v200 = v426;
  *(v199 + 32) = v426;
  *(v199 + 40) = 0xD000000000000014;
  *(v199 + 48) = 0x80000001CA9AB710;
  v424 = v200;
  *(v199 + 72) = sub_1CA94C368();
  *(v199 + 80) = 1702125892;
  *(v199 + 88) = 0xE400000000000000;
  v201 = v425;
  *(v199 + 104) = v196;
  *(v199 + 112) = v201;
  v423 = v201;
  v425 = sub_1CA94C438("Date (Parameter Label)", 22);
  v422 = v202;
  v421 = sub_1CA94C438("Date", 4);
  v204 = v203;
  v426 = &v420;
  MEMORY[0x1EEE9AC00](v421);
  v205 = &v420 - v468;
  sub_1CA948D98();
  v206 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v420 - v466;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v199 + 120) = sub_1CA2F9F14(v425, v422, v421, v204, 0, 0, v205, v207);
  v209 = v463;
  v210 = v436;
  *(v199 + 144) = v463;
  *(v199 + 152) = v210;
  v426 = v210;
  v425 = sub_1CA94C438("In 3 days (Parameter Placeholder)", 33);
  v422 = v211;
  v212 = sub_1CA94C438("In 3 days", 9);
  v214 = v213;
  v436 = &v420;
  MEMORY[0x1EEE9AC00](v212);
  v215 = &v420 - v468;
  sub_1CA948D98();
  v216 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v420 - v466;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v199 + 160) = sub_1CA2F9F14(v425, v422, v212, v214, 0, 0, v215, v217);
  v219 = v440;
  *(v199 + 184) = v209;
  *(v199 + 192) = v219;
  v220 = swift_allocObject();
  *(v220 + 16) = v451;
  v221 = MEMORY[0x1E69E6158];
  *(v220 + 32) = sub_1CA94C1E8();
  *(v199 + 200) = v220;
  *(v199 + 224) = v443;
  *(v199 + 232) = @"ResultType";
  *(v199 + 240) = 0x676E69727453;
  *(v199 + 248) = 0xE600000000000000;
  v222 = v221;
  *(v199 + 264) = v221;
  v223 = v427;
  *(v199 + 304) = v222;
  v224 = v222;
  *(v199 + 272) = v223;
  *(v199 + 280) = 0x7468676952;
  *(v199 + 288) = 0xE500000000000000;
  v225 = @"ResultType";
  v425 = v223;
  v436 = v225;
  v226 = sub_1CA94C1E8();
  v227 = v460;
  *(v197 + 96) = sub_1CA2F864C(v226);
  *(v197 + 120) = v227;
  *(v197 + 128) = 0x654B656372756F53;
  *(v197 + 136) = v456;
  *(v197 + 144) = 0xD000000000000014;
  *(v197 + 152) = 0x80000001CA9ACC50;
  *(v197 + 168) = v224;
  *(v197 + 176) = 0x7954656372756F53;
  *(v197 + 216) = v224;
  *(v197 + 184) = 0xEA00000000006570;
  *(v197 + 192) = 0x6574656D61726150;
  *(v197 + 200) = 0xE900000000000072;
  v461[8] = sub_1CA94C1E8();
  v228 = swift_allocObject();
  *(v228 + 16) = v450;
  *(v228 + 32) = 0x73616C436D657449;
  v229 = v449;
  *(v228 + 40) = v459;
  *(v228 + 48) = v229;
  *(v228 + 56) = v438;
  *(v228 + 72) = v224;
  *(v228 + 80) = 0x6574656D61726150;
  *(v228 + 88) = 0xEB00000000495572;
  v230 = swift_allocObject();
  *(v230 + 16) = v439;
  *(v230 + 64) = v224;
  v231 = v424;
  *(v230 + 32) = v424;
  *(v230 + 40) = 0xD000000000000014;
  *(v230 + 48) = v437;
  *&v439 = v231;
  *(v230 + 72) = sub_1CA94C368();
  *(v230 + 80) = 1701669204;
  *(v230 + 88) = 0xE400000000000000;
  v232 = v423;
  *(v230 + 104) = v224;
  *(v230 + 112) = v232;
  v427 = v232;
  v233 = sub_1CA94C438("Reminder Time (Parameter Label)", 31);
  v422 = v234;
  v423 = v233;
  v235 = sub_1CA94C438("Reminder Time", 13);
  v421 = v236;
  v424 = &v420;
  MEMORY[0x1EEE9AC00](v235);
  v237 = v468;
  sub_1CA948D98();
  v238 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v238);
  v239 = &v420 - v466;
  sub_1CA948B68();

  v240 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v230 + 120) = sub_1CA2F9F14(v423, v422, v235, v421, 0, 0, &v420 - v237, v239);
  v241 = v463;
  v242 = v426;
  *(v230 + 144) = v463;
  *(v230 + 152) = v242;
  v426 = v242;
  v243 = sub_1CA94C438("3 PM (Parameter Placeholder)", 28);
  v422 = v244;
  v423 = v243;
  v245 = sub_1CA94C438("3 PM", 4);
  v247 = v246;
  v424 = &v420;
  MEMORY[0x1EEE9AC00](v245);
  v248 = &v420 - v237;
  sub_1CA948D98();
  v249 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v249);
  v250 = &v420 - v466;
  sub_1CA948B68();

  v251 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v230 + 160) = sub_1CA2F9F14(v423, v422, v245, v247, 0, 0, v248, v250);
  v252 = v440;
  *(v230 + 184) = v241;
  *(v230 + 192) = v252;
  v253 = swift_allocObject();
  *(v253 + 16) = v451;
  v254 = swift_allocObject();
  *(v254 + 16) = v448;
  strcpy((v254 + 32), "WFParameterKey");
  *(v254 + 47) = -18;
  *(v254 + 48) = 0x685773676E696874;
  *(v254 + 56) = v446;
  v255 = MEMORY[0x1E69E6158];
  v256 = v449;
  *(v254 + 72) = MEMORY[0x1E69E6158];
  *(v254 + 80) = v256;
  *(v254 + 88) = 0x80000001CA9A2F30;
  *(v254 + 96) = &unk_1F49F7280;
  *(v254 + 120) = v442;
  *(v254 + 128) = 0x72756F7365524657;
  *(v254 + 168) = v255;
  *(v254 + 136) = 0xEF7373616C436563;
  *(v254 + 144) = 0xD00000000000001BLL;
  *(v254 + 152) = v430;
  *(v253 + 32) = sub_1CA94C1E8();
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v446 = v257;
  *(v230 + 200) = v253;
  v258 = v436;
  *(v230 + 224) = v257;
  *(v230 + 232) = v258;
  *(v230 + 240) = 0x676E69727453;
  *(v230 + 248) = 0xE600000000000000;
  v259 = v425;
  *(v230 + 264) = v255;
  *(v230 + 272) = v259;
  *(v230 + 304) = v255;
  *(v230 + 280) = 0x7468676952;
  *(v230 + 288) = 0xE500000000000000;
  v440 = v259;
  v260 = sub_1CA94C1E8();
  v261 = v460;
  *(v228 + 96) = sub_1CA2F864C(v260);
  *(v228 + 120) = v261;
  *(v228 + 128) = 0x654B656372756F53;
  v262 = v428;
  *(v228 + 136) = v456;
  *(v228 + 144) = v262;
  *(v228 + 152) = 0x80000001CA9ACCD0;
  *(v228 + 168) = v255;
  *(v228 + 176) = 0x7954656372756F53;
  *(v228 + 216) = v255;
  *(v228 + 184) = 0xEA00000000006570;
  *(v228 + 192) = 0x6574656D61726150;
  *(v228 + 200) = 0xE900000000000072;
  v461[9] = sub_1CA94C1E8();
  v263 = swift_allocObject();
  v430 = xmmword_1CA981300;
  *(v263 + 16) = xmmword_1CA981300;
  v264 = v429;
  *(v263 + 32) = v453;
  *(v263 + 40) = v264;
  *(v263 + 48) = 0xD000000000000014;
  *(v263 + 56) = 0x80000001CA9ACCF0;
  *(v263 + 72) = v255;
  *(v263 + 80) = 0x6D726F4665746144;
  *(v263 + 88) = 0xEA00000000007461;
  *(v263 + 96) = 0x2D4D4D2D79797979;
  *(v263 + 104) = 0xEA00000000006464;
  *(v263 + 120) = v255;
  strcpy((v263 + 128), "DestinationKey");
  *(v263 + 143) = -18;
  *(v263 + 144) = 0x65746144657564;
  *(v263 + 152) = 0xE700000000000000;
  *(v263 + 168) = v255;
  *(v263 + 176) = 0x74616E6974736544;
  *(v263 + 184) = 0xEF657079546E6F69;
  strcpy((v263 + 192), "URLQueryValue");
  *(v263 + 206) = -4864;
  *(v263 + 216) = v255;
  *(v263 + 224) = 0x73616C436D657449;
  *(v263 + 232) = v459;
  *(v263 + 240) = v256;
  *(v263 + 248) = v438;
  *(v263 + 264) = v255;
  *(v263 + 272) = 0x6574656D61726150;
  *(v263 + 280) = 0xEB00000000495572;
  v265 = swift_allocObject();
  *(v265 + 16) = v454;
  *(v265 + 64) = v255;
  v266 = v439;
  *(v265 + 32) = v439;
  *(v265 + 40) = 0xD000000000000014;
  *(v265 + 48) = v437;
  *&v439 = v266;
  *(v265 + 72) = sub_1CA94C368();
  *(v265 + 80) = 1702125892;
  *(v265 + 88) = 0xE400000000000000;
  v267 = v427;
  *(v265 + 104) = v255;
  *(v265 + 112) = v267;
  v438 = v267;
  v437 = sub_1CA94C438("Deadline (Parameter Label)", 26);
  v429 = v268;
  v428 = sub_1CA94C438("Deadline", 8);
  v270 = v269;
  v441 = &v420;
  MEMORY[0x1EEE9AC00](v428);
  v271 = &v420 - v468;
  sub_1CA948D98();
  v272 = v467;
  v273 = [v467 bundleURL];
  v427 = &v420;
  MEMORY[0x1EEE9AC00](v273);
  v274 = v466;
  sub_1CA948B68();

  v275 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v265 + 120) = sub_1CA2F9F14(v437, v429, v428, v270, 0, 0, v271, &v420 - v274);
  v276 = v426;
  *(v265 + 144) = v463;
  *(v265 + 152) = v276;
  v441 = v276;
  v277 = sub_1CA94C438("May 23, 2018 (Parameter Placeholder)", 36);
  v428 = v278;
  v429 = v277;
  v279 = sub_1CA94C438("May 23, 2018", 12);
  v427 = v280;
  v437 = &v420;
  MEMORY[0x1EEE9AC00](v279);
  v281 = &v420 - v468;
  sub_1CA948D98();
  v282 = [v272 bundleURL];
  MEMORY[0x1EEE9AC00](v282);
  sub_1CA948B68();

  v283 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v265 + 160) = sub_1CA2F9F14(v429, v428, v279, v427, 0, 0, v281, &v420 - v274);
  v284 = v436;
  *(v265 + 184) = v463;
  *(v265 + 192) = v284;
  *(v265 + 200) = 0x676E69727453;
  *(v265 + 208) = 0xE600000000000000;
  v285 = MEMORY[0x1E69E6158];
  v286 = v440;
  *(v265 + 224) = MEMORY[0x1E69E6158];
  *(v265 + 232) = v286;
  *(v265 + 264) = v285;
  *(v265 + 240) = 0x7468676952;
  *(v265 + 248) = 0xE500000000000000;
  v287 = sub_1CA94C1E8();
  v288 = v460;
  *(v263 + 288) = sub_1CA2F864C(v287);
  *(v263 + 312) = v288;
  *(v263 + 320) = 0x654B656372756F53;
  *(v263 + 328) = v456;
  strcpy((v263 + 336), "thingsDueDate");
  *(v263 + 350) = -4864;
  *(v263 + 360) = v285;
  *(v263 + 368) = 0x7954656372756F53;
  *(v263 + 408) = v285;
  *(v263 + 376) = 0xEA00000000006570;
  *(v263 + 384) = 0x6574656D61726150;
  *(v263 + 392) = 0xE900000000000072;
  v461[10] = sub_1CA94C1E8();
  v289 = swift_allocObject();
  *(v289 + 16) = v454;
  strcpy((v289 + 32), "DestinationKey");
  *(v289 + 47) = -18;
  *(v289 + 48) = 1936154996;
  *(v289 + 56) = 0xE400000000000000;
  *(v289 + 72) = v285;
  *(v289 + 80) = 0x74616E6974736544;
  *(v289 + 88) = 0xEF657079546E6F69;
  strcpy((v289 + 96), "URLQueryValue");
  *(v289 + 110) = -4864;
  *(v289 + 120) = v285;
  *(v289 + 128) = 0x73616C436D657449;
  v290 = v452;
  v291 = v453;
  *(v289 + 136) = v459;
  *(v289 + 144) = v291;
  *(v289 + 152) = v290;
  *(v289 + 168) = v285;
  *(v289 + 176) = 0x6574656D61726150;
  *(v289 + 184) = 0xEB00000000495572;
  v292 = swift_allocObject();
  *(v292 + 16) = v454;
  *(v292 + 32) = @"AutocapitalizationType";
  *(v292 + 40) = 1701736270;
  *(v292 + 48) = 0xE400000000000000;
  v293 = v439;
  *(v292 + 64) = v285;
  *(v292 + 72) = v293;
  *(v292 + 80) = 0xD000000000000014;
  *(v292 + 88) = v447;
  *(v292 + 104) = v285;
  *(v292 + 112) = @"Description";
  v294 = @"Description";
  *&v439 = v293;
  v437 = v294;
  v295 = @"AutocapitalizationType";
  v296 = sub_1CA94C438("A comma-separated list of tags to add to the new to-do.", 55);
  v428 = v297;
  v429 = v296;
  v298 = sub_1CA94C438("A comma-separated list of tags to add to the new to-do.", 55);
  v427 = v299;
  v436 = &v420;
  MEMORY[0x1EEE9AC00](v298);
  v300 = v468;
  sub_1CA948D98();
  v301 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v301);
  v302 = v466;
  sub_1CA948B68();

  v303 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v292 + 120) = sub_1CA2F9F14(v429, v428, v298, v427, 0, 0, &v420 - v300, &v420 - v302);
  v304 = v438;
  *(v292 + 144) = v463;
  *(v292 + 152) = v304;
  v438 = v304;
  v305 = sub_1CA94C438("Tags (Parameter Label)", 22);
  v428 = v306;
  v429 = v305;
  v427 = sub_1CA94C438("Tags", 4);
  v308 = v307;
  v436 = &v420;
  MEMORY[0x1EEE9AC00](v427);
  v309 = &v420 - v300;
  sub_1CA948D98();
  v310 = v467;
  v311 = [v467 bundleURL];
  v426 = &v420;
  MEMORY[0x1EEE9AC00](v311);
  sub_1CA948B68();

  v312 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v292 + 160) = sub_1CA2F9F14(v429, v428, v427, v308, 0, 0, v309, &v420 - v302);
  v313 = v463;
  v314 = v441;
  *(v292 + 184) = v463;
  *(v292 + 192) = v314;
  v315 = sub_1CA94C438("optional, tags (Parameter Placeholder)", 38);
  v428 = v316;
  v429 = v315;
  v317 = sub_1CA94C438("optional, tags", 14);
  v427 = v318;
  v436 = &v420;
  MEMORY[0x1EEE9AC00](v317);
  v319 = &v420 - v468;
  sub_1CA948D98();
  v320 = [v310 bundleURL];
  MEMORY[0x1EEE9AC00](v320);
  v321 = &v420 - v466;
  sub_1CA948B68();

  v322 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v292 + 200) = sub_1CA2F9F14(v429, v428, v317, v427, 0, 0, v319, v321);
  v323 = v440;
  *(v292 + 224) = v313;
  *(v292 + 232) = v323;
  v324 = MEMORY[0x1E69E6158];
  *(v292 + 264) = MEMORY[0x1E69E6158];
  *(v292 + 240) = 0x7468676952;
  *(v292 + 248) = 0xE500000000000000;
  v325 = sub_1CA94C1E8();
  v326 = v460;
  *(v289 + 192) = sub_1CA2F864C(v325);
  *(v289 + 216) = v326;
  *(v289 + 224) = 0x654B656372756F53;
  *(v289 + 232) = v456;
  *(v289 + 240) = 0x615473676E696874;
  *(v289 + 248) = 0xEA00000000007367;
  *(v289 + 264) = v324;
  *(v289 + 272) = 0x7954656372756F53;
  *(v289 + 312) = v324;
  *(v289 + 280) = 0xEA00000000006570;
  *(v289 + 288) = 0x6574656D61726150;
  *(v289 + 296) = 0xE900000000000072;
  v461[11] = sub_1CA94C1E8();
  v327 = swift_allocObject();
  *(v327 + 16) = v430;
  strcpy((v327 + 32), "DestinationKey");
  *(v327 + 47) = -18;
  *(v327 + 48) = 0xD000000000000010;
  *(v327 + 56) = 0x80000001CA9ACE20;
  v440 = 0xD000000000000010;
  *(v327 + 72) = v324;
  *(v327 + 80) = 0x74616E6974736544;
  *(v327 + 88) = 0xEF657079546E6F69;
  strcpy((v327 + 96), "URLQueryValue");
  *(v327 + 110) = -4864;
  *(v327 + 120) = v324;
  *(v327 + 128) = 0x73616C436D657449;
  *(v327 + 136) = v459;
  *(v327 + 144) = 0xD000000000000014;
  *(v327 + 152) = 0x80000001CA993A60;
  *(v327 + 168) = v324;
  *(v327 + 176) = 0xD000000000000010;
  *(v327 + 184) = 0x80000001CA9A8C50;
  *(v327 + 192) = 1;
  *(v327 + 216) = MEMORY[0x1E69E6370];
  *(v327 + 224) = 0x6574656D61726150;
  *(v327 + 232) = 0xEB00000000495572;
  v328 = swift_allocObject();
  *(v328 + 16) = v448;
  v329 = v449;
  *(v328 + 32) = v439;
  *(v328 + 40) = v329;
  *(v328 + 48) = 0x80000001CA99E620;
  v330 = v437;
  *(v328 + 64) = v324;
  *(v328 + 72) = v330;
  *&v448 = sub_1CA94C438("Whether to show the to-do editor in Things, or return to Shortcuts immediately.", 79);
  v437 = v331;
  v436 = sub_1CA94C438("Whether to show the to-do editor in Things, or return to Shortcuts immediately.", 79);
  v333 = v332;
  v449 = &v420;
  MEMORY[0x1EEE9AC00](v436);
  v334 = &v420 - v468;
  sub_1CA948D98();
  v335 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v335);
  v336 = v466;
  sub_1CA948B68();

  v337 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v328 + 80) = sub_1CA2F9F14(v448, v437, v436, v333, 0, 0, v334, &v420 - v336);
  v338 = v463;
  v339 = v438;
  *(v328 + 104) = v463;
  *(v328 + 112) = v339;
  *&v448 = sub_1CA94C438("Edit in Things (Parameter Label)", 32);
  v437 = v340;
  v341 = sub_1CA94C438("Edit in Things", 14);
  v436 = v342;
  v449 = &v420;
  MEMORY[0x1EEE9AC00](v341);
  v343 = &v420 - v468;
  sub_1CA948D98();
  v344 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v344);
  sub_1CA948B68();

  v345 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v346 = sub_1CA2F9F14(v448, v437, v341, v436, 0, 0, v343, &v420 - v336);
  *(v328 + 144) = v338;
  *(v328 + 120) = v346;
  v347 = sub_1CA94C1E8();
  v348 = v460;
  *(v327 + 240) = sub_1CA2F864C(v347);
  *(v327 + 264) = v348;
  *(v327 + 272) = 0x654B656372756F53;
  *(v327 + 280) = v456;
  *(v327 + 288) = 0xD000000000000014;
  *(v327 + 296) = 0x80000001CA9ACEC0;
  v349 = MEMORY[0x1E69E6158];
  *(v327 + 312) = MEMORY[0x1E69E6158];
  *(v327 + 320) = 0x7954656372756F53;
  *(v327 + 328) = 0xEA00000000006570;
  *(v327 + 336) = 0x6574656D61726150;
  *(v327 + 344) = 0xE900000000000072;
  *(v327 + 360) = v349;
  strcpy((v327 + 368), "ValueMapping");
  *(v327 + 381) = 0;
  *(v327 + 382) = -5120;
  v350 = v349;
  v351 = sub_1CA94C1E8();
  *(v327 + 408) = v431;
  *(v327 + 384) = v351;
  v461[12] = sub_1CA94C1E8();
  v352 = swift_allocObject();
  *(v352 + 16) = v454;
  strcpy((v352 + 32), "DestinationKey");
  *(v352 + 47) = -18;
  *(v352 + 48) = 0x7365746F6ELL;
  *(v352 + 56) = 0xE500000000000000;
  *(v352 + 72) = v350;
  *(v352 + 80) = 0x74616E6974736544;
  *(v352 + 88) = 0xEF657079546E6F69;
  strcpy((v352 + 96), "URLQueryValue");
  *(v352 + 110) = -4864;
  *(v352 + 120) = v350;
  *(v352 + 128) = 0x73616C436D657449;
  v353 = v452;
  v354 = v453;
  *(v352 + 136) = v459;
  *(v352 + 144) = v354;
  *(v352 + 152) = v353;
  *(v352 + 168) = v350;
  *(v352 + 176) = 0x6574656D61726150;
  v355 = v350;
  *(v352 + 184) = 0xEB00000000495572;
  v356 = swift_allocObject();
  *(v356 + 16) = v450;
  *(v356 + 32) = v439;
  *(v356 + 40) = 0xD000000000000014;
  *(v356 + 48) = v447;
  v357 = v438;
  *(v356 + 64) = v355;
  *(v356 + 72) = v357;
  v459 = sub_1CA94C438("Notes (Parameter Label)", 23);
  v455 = v358;
  v359 = sub_1CA94C438("Notes", 5);
  *&v454 = v360;
  v462 = &v420;
  MEMORY[0x1EEE9AC00](v359);
  v361 = &v420 - v468;
  sub_1CA948D98();
  v362 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v362);
  v363 = &v420 - v466;
  sub_1CA948B68();

  v364 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v365 = sub_1CA2F9F14(v459, v455, v359, v454, 0, 0, v361, v363);
  v366 = v463;
  *(v356 + 80) = v365;
  *(v356 + 104) = v366;
  *(v356 + 112) = @"Multiline";
  *(v356 + 120) = 1;
  v367 = v441;
  *(v356 + 144) = MEMORY[0x1E69E6370];
  *(v356 + 152) = v367;
  v368 = @"Multiline";
  v459 = sub_1CA94C438("Notes (Parameter Placeholder)", 29);
  v455 = v369;
  v370 = sub_1CA94C438("Notes", 5);
  *&v454 = v371;
  v462 = &v420;
  MEMORY[0x1EEE9AC00](v370);
  v372 = &v420 - v468;
  sub_1CA948D98();
  v373 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v373);
  v374 = &v420 - v466;
  sub_1CA948B68();

  v375 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v376 = sub_1CA2F9F14(v459, v455, v370, v454, 0, 0, v372, v374);
  *(v356 + 184) = v366;
  *(v356 + 160) = v376;
  v377 = sub_1CA94C1E8();
  v378 = v460;
  *(v352 + 192) = sub_1CA2F864C(v377);
  *(v352 + 216) = v378;
  *(v352 + 224) = 0x654B656372756F53;
  *(v352 + 232) = v456;
  *(v352 + 240) = 0x6F4E73676E696874;
  *(v352 + 248) = 0xEA00000000006574;
  v379 = MEMORY[0x1E69E6158];
  *(v352 + 264) = MEMORY[0x1E69E6158];
  *(v352 + 272) = 0x7954656372756F53;
  *(v352 + 312) = v379;
  *(v352 + 280) = 0xEA00000000006570;
  *(v352 + 288) = 0x6574656D61726150;
  *(v352 + 296) = 0xE900000000000072;
  v380 = sub_1CA94C1E8();
  v381 = v461;
  v461[13] = v380;
  v382 = v445;
  *(v445 + 288) = v381;
  *(v382 + 312) = v446;
  *(v382 + 320) = 1701667150;
  *(v382 + 328) = 0xE400000000000000;
  v383 = sub_1CA94C438("Add Things To-Do (Action Name)", 30);
  v385 = v384;
  v386 = sub_1CA94C438("Add Things To-Do", 16);
  v388 = v387;
  v462 = &v420;
  MEMORY[0x1EEE9AC00](v386);
  v389 = &v420 - v468;
  sub_1CA948D98();
  v390 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v390);
  v391 = &v420 - v466;
  sub_1CA948B68();

  v392 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v393 = sub_1CA2F9F14(v383, v385, v386, v388, 0, 0, v389, v391);
  v394 = v463;
  *(v382 + 336) = v393;
  *(v382 + 360) = v394;
  strcpy((v382 + 368), "OutputMapping");
  *(v382 + 382) = -4864;
  v395 = swift_allocObject();
  *(v395 + 16) = v451;
  *(v395 + 32) = sub_1CA94C1E8();
  *(v382 + 384) = v395;
  v396 = v440;
  *(v382 + 408) = v443;
  *(v382 + 416) = v396;
  *(v382 + 424) = 0x80000001CA9A8F60;
  v397 = sub_1CA94C438("Add ${thingsTask} to ${thingsList} (Parameter Summary)", 54);
  v399 = v398;
  v400 = sub_1CA94C438("Add ${thingsTask} to ${thingsList}", 34);
  v402 = v401;
  v463 = &v420;
  MEMORY[0x1EEE9AC00](v400);
  v403 = &v420 - v468;
  sub_1CA948D98();
  v404 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v404);
  v405 = &v420 - v466;
  sub_1CA948B68();

  v406 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v407 = sub_1CA2F9F14(v397, v399, v400, v402, 0, 0, v403, v405);
  v408 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v382 + 456) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v382 + 432) = v408;
  v409 = MEMORY[0x1E69E6158];
  v410 = sub_1CA94C1E8();
  v411 = v433;
  *(v433 + 32) = v410;
  v412 = v434;
  *(v434 + 48) = v411;
  *(v412 + 72) = v446;
  strcpy((v412 + 80), "Capabilities");
  *(v412 + 93) = 0;
  *(v412 + 94) = -5120;
  *(v412 + 96) = &unk_1F49F73D0;
  *(v412 + 120) = v442;
  *(v412 + 128) = 0x656D65686353;
  *(v412 + 168) = v409;
  *(v412 + 136) = 0xE600000000000000;
  *(v412 + 144) = 0x73676E696874;
  *(v412 + 152) = 0xE600000000000000;
  v413 = sub_1CA94C1E8();
  v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v415 = v435;
  *(v435 + 32) = v413;
  v415[11] = v409;
  v415[7] = v414;
  v415[8] = 0xD000000000000017;
  v415[9] = 0x80000001CA9ACFD0;
  v416 = v415;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v418 = v432;
  *(v432 + 216) = v417;
  *(v418 + 192) = v416;
  return sub_1CA94C1E8();
}

id sub_1CA38D414()
{
  v26[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438("Get Details of Event Attendees (Action Name)", 44);
  v11 = v10;
  v12 = sub_1CA94C438("Get Details of Event Attendees", 30);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  *(inited + 184) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v23;
  v24 = sub_1CA94C368();
  *(inited + 224) = v1;
  *(inited + 192) = v24;
  *(inited + 200) = 0xD00000000000001ALL;
  *(inited + 208) = 0x80000001CA9AD050;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA38D7C0()
{
  v31 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v30 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438("Get Details of Calendar Events (Action Name)", 44);
  v11 = v10;
  v12 = sub_1CA94C438("Get Details of Calendar Events", 30);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v23;
  *(inited + 184) = v24;
  *(inited + 192) = @"Output";
  v25 = @"Output";
  v26 = MEMORY[0x1E69E6158];
  *(inited + 200) = sub_1CA94C1E8();
  *(inited + 224) = v30;
  *(inited + 232) = @"ResidentCompatible";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v27 = @"ResidentCompatible";
  v28 = sub_1CA94C368();
  *(inited + 304) = v26;
  *(inited + 272) = v28;
  *(inited + 280) = 0xD00000000000001ALL;
  *(inited + 288) = 0x80000001CA9938C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA38DBD0()
{
  v174 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9AD0E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("action|workflow|shortcuts", 25);
  v6 = v5;
  v7 = sub_1CA94C438("action|workflow|shortcuts", 25);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v183 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v184 = v11;
  v12 = &v165 - v183;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v180 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v181 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v182 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v165 - v182;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v179 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v177 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA9813C0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("The input to pass to the shortcut.", 34);
  v175 = v27;
  v28 = sub_1CA94C438("The input to pass to the shortcut.", 34);
  v30 = v29;
  v176 = &v165;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v165 - v183;
  sub_1CA948D98();
  v32 = v180;
  v33 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v178 = inited;
  v34 = &v165 - v182;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v26, v175, v28, v30, 0, 0, v31, v34);
  *(v23 + 64) = v179;
  *(v23 + 72) = @"DescriptionResult";
  v36 = @"DescriptionResult";
  v175 = sub_1CA94C438("The shortcut's result", 21);
  *&v173 = v37;
  v38 = sub_1CA94C438("The shortcut's result", 21);
  v40 = v39;
  v176 = &v165;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v165 - v183;
  sub_1CA948D98();
  v42 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  v43 = v182;
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 80) = sub_1CA2F9F14(v175, v173, v38, v40, 0, 0, v41, &v165 - v43);
  v45 = v179;
  *(v23 + 104) = v179;
  *(v23 + 112) = @"DescriptionSummary";
  v46 = @"DescriptionSummary";
  v175 = sub_1CA94C438("Runs a shortcut from your shortcut.", 35);
  *&v173 = v47;
  v172 = sub_1CA94C438("Runs a shortcut from your shortcut.", 35);
  v49 = v48;
  v176 = &v165;
  MEMORY[0x1EEE9AC00](v172);
  v50 = &v165 - v183;
  sub_1CA948D98();
  v51 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v175, v173, v172, v49, 0, 0, v50, &v165 - v43);
  *(v23 + 144) = v45;
  *(v23 + 120) = v53;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v54 = sub_1CA94C1E8();
  v55 = v177;
  v56 = sub_1CA6B3784(v54);
  v57 = v178;
  v178[20] = v56;
  v57[23] = v55;
  v57[24] = @"Input";
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  v173 = xmmword_1CA981350;
  *(v58 + 16) = xmmword_1CA981350;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 48) = 1;
  *(v58 + 72) = v59;
  strcpy((v58 + 80), "ParameterKey");
  *(v58 + 93) = 0;
  *(v58 + 94) = -5120;
  *(v58 + 96) = 0x7475706E494657;
  *(v58 + 104) = 0xE700000000000000;
  *(v58 + 120) = MEMORY[0x1E69E6158];
  *(v58 + 128) = 0x6465726975716552;
  *(v58 + 136) = 0xE800000000000000;
  *(v58 + 144) = 1;
  *(v58 + 168) = v59;
  *(v58 + 176) = 0x7365707954;
  *(v58 + 184) = 0xE500000000000000;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 216) = v177;
  *(v58 + 192) = &unk_1F49F7500;
  v60 = @"Input";
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v176 = v62;
  v57[25] = v61;
  v57[28] = v62;
  v57[29] = @"Name";
  v63 = @"Name";
  v64 = sub_1CA94C438("Run Shortcut (Action Name)", 26);
  v171 = v65;
  v66 = sub_1CA94C438("Run Shortcut", 12);
  v68 = v67;
  v172 = &v165;
  MEMORY[0x1EEE9AC00](v66);
  v69 = v183;
  sub_1CA948D98();
  v70 = v180;
  v71 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v165 - v182;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v64, v171, v66, v68, 0, 0, &v165 - v69, v72);
  v75 = v178;
  v76 = v179;
  v178[30] = v74;
  v75[33] = v76;
  v75[34] = @"Output";
  v77 = swift_allocObject();
  *(v77 + 16) = v173;
  *(v77 + 32) = 0x75736F6C63736944;
  *(v77 + 40) = 0xEF6C6576654C6572;
  *(v77 + 48) = 0x63696C627550;
  *(v77 + 56) = 0xE600000000000000;
  *(v77 + 72) = MEMORY[0x1E69E6158];
  *(v77 + 80) = 0x656C7069746C754DLL;
  *(v77 + 88) = 0xE800000000000000;
  *(v77 + 96) = 1;
  *(v77 + 120) = MEMORY[0x1E69E6370];
  *(v77 + 128) = 0x614E74757074754FLL;
  *(v77 + 136) = 0xEA0000000000656DLL;
  v78 = @"Output";
  v79 = sub_1CA94C438("Shortcut Result (Default Output Name)", 37);
  v172 = v80;
  *&v173 = v79;
  v81 = sub_1CA94C438("Shortcut Result", 15);
  v83 = v82;
  v175 = &v165;
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948D98();
  v84 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v165 - v182;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 144) = sub_1CA2F9F14(v173, v172, v81, v83, 0, 0, &v165 - v69, v85);
  *(v77 + 168) = v76;
  *(v77 + 176) = 0x7365707954;
  *(v77 + 216) = v177;
  *(v77 + 184) = 0xE500000000000000;
  *(v77 + 192) = &unk_1F49F7530;
  v87 = MEMORY[0x1E69E6158];
  v88 = sub_1CA94C1E8();
  v89 = v178;
  v178[35] = v88;
  v89[38] = v176;
  v89[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v176 = swift_allocObject();
  *(v176 + 1) = xmmword_1CA981360;
  v175 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CA981370;
  *(v90 + 32) = @"Class";
  *(v90 + 40) = 0xD000000000000019;
  *(v90 + 48) = 0x80000001CA9AD210;
  *(v90 + 64) = v87;
  *(v90 + 72) = @"Key";
  *(v90 + 80) = 0x6C666B726F574657;
  *(v90 + 88) = 0xEA0000000000776FLL;
  *(v90 + 104) = v87;
  *(v90 + 112) = @"Label";
  v91 = @"Class";
  v92 = @"Key";
  v93 = @"Label";
  v172 = v91;
  v171 = v92;
  v170 = v93;
  v94 = @"Parameters";
  v95 = sub_1CA94C438("Shortcut (WFWorkflow)", 21);
  v167 = v96;
  v168 = v95;
  v97 = sub_1CA94C438("Shortcut", 8);
  v99 = v98;
  v169 = &v165;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v165 - v183;
  sub_1CA948D98();
  v101 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v165 - v182;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 120) = sub_1CA2F9F14(v168, v167, v97, v99, 0, 0, v100, v102);
  v104 = v179;
  *(v90 + 144) = v179;
  *(v90 + 152) = @"LegacyKey";
  strcpy((v90 + 160), "WFWorkflowName");
  *(v90 + 175) = -18;
  *(v90 + 184) = MEMORY[0x1E69E6158];
  *(v90 + 192) = @"Placeholder";
  v167 = @"Placeholder";
  v105 = @"LegacyKey";
  v168 = sub_1CA94C438("Shortcut (WFWorkflow)", 21);
  v166 = v106;
  v107 = sub_1CA94C438("Shortcut", 8);
  v109 = v108;
  v169 = &v165;
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v165 - v183;
  sub_1CA948D98();
  v111 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v165 - v182;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v168, v166, v107, v109, 0, 0, v110, v112);
  *(v90 + 224) = v104;
  *(v90 + 200) = v114;
  _s3__C3KeyVMa_0(0);
  v169 = v115;
  v168 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v116 = sub_1CA94C1E8();
  v117 = sub_1CA2F864C(v116);
  v176[4] = v117;
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1CA981380;
  *(v118 + 32) = v172;
  *(v118 + 40) = 0xD000000000000019;
  *(v118 + 48) = 0x80000001CA99B030;
  v119 = MEMORY[0x1E69E6158];
  v120 = v171;
  *(v118 + 64) = MEMORY[0x1E69E6158];
  *(v118 + 72) = v120;
  *(v118 + 80) = 0x7475706E494657;
  *(v118 + 88) = 0xE700000000000000;
  v121 = v170;
  *(v118 + 104) = v119;
  *(v118 + 112) = v121;
  v122 = sub_1CA94C438("Input (WFInput)", 15);
  v171 = v123;
  v172 = v122;
  v124 = sub_1CA94C438("Input", 5);
  v170 = v125;
  *&v173 = &v165;
  MEMORY[0x1EEE9AC00](v124);
  v126 = v183;
  sub_1CA948D98();
  v127 = v180;
  v128 = [v180 bundleURL];
  v166 = &v165;
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v165 - v182;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v118 + 120) = sub_1CA2F9F14(v172, v171, v124, v170, 0, 0, &v165 - v126, v129);
  v131 = v167;
  *(v118 + 144) = v179;
  *(v118 + 152) = v131;
  v132 = sub_1CA94C438("Choose Variable (WFInput)", 25);
  v171 = v133;
  v172 = v132;
  v134 = sub_1CA94C438("Choose Variable", 15);
  v136 = v135;
  *&v173 = &v165;
  MEMORY[0x1EEE9AC00](v134);
  v137 = &v165 - v126;
  sub_1CA948D98();
  v138 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = v182;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v118 + 160) = sub_1CA2F9F14(v172, v171, v134, v136, 0, 0, v137, &v165 - v139);
  *(v118 + 184) = v179;
  *(v118 + 192) = @"Optional";
  *(v118 + 200) = 1;
  v141 = MEMORY[0x1E69E6370];
  *(v118 + 224) = MEMORY[0x1E69E6370];
  *(v118 + 232) = @"ProcessIntoContentItems";
  *(v118 + 264) = v141;
  *(v118 + 240) = 1;
  v142 = @"Optional";
  v143 = @"ProcessIntoContentItems";
  v144 = sub_1CA94C1E8();
  v145 = sub_1CA2F864C(v144);
  v146 = v176;
  v176[5] = v145;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v148 = v178;
  v178[40] = v146;
  v148[43] = v147;
  v148[44] = @"ParameterSummary";
  v149 = @"ParameterSummary";
  v150 = sub_1CA94C438("Run ${WFWorkflow} (Parameter Summary)", 37);
  v152 = v151;
  v153 = sub_1CA94C438("Run ${WFWorkflow}", 17);
  v155 = v154;
  MEMORY[0x1EEE9AC00](v153);
  v156 = &v165 - v183;
  sub_1CA948D98();
  v157 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v150, v152, v153, v155, 0, 0, v156, &v165 - v139);
  v160 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v161 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v162 = v178;
  v178[45] = v160;
  v162[48] = v161;
  v162[49] = @"RequiredResources";
  v162[53] = v177;
  v162[50] = &unk_1F49F7560;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v163 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA38F070()
{
  v171 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9A14D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("upload|ftp|sftp|webdav|amazon|s3|transmit|panic", 47);
  v6 = v5;
  v7 = sub_1CA94C438("upload|ftp|sftp|webdav|amazon|s3|transmit|panic", 47);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v187 = v11;
  v188 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v157 - v188;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v186 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v185 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v183 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v157 - v183;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v184 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v20 = swift_initStackObject();
  v179 = xmmword_1CA981350;
  *(v20 + 16) = xmmword_1CA981350;
  *(v20 + 32) = 0xD00000000000001DLL;
  *(v20 + 40) = 0x80000001CA99DA80;
  v21 = MEMORY[0x1E69E6370];
  *(v20 + 48) = 1;
  v168 = 0x80000001CA993290;
  v169 = 0xD000000000000010;
  *(v20 + 72) = v21;
  *(v20 + 80) = 0xD000000000000010;
  v176 = 0xD000000000000016;
  *(v20 + 88) = 0x80000001CA993290;
  *(v20 + 96) = 0xD000000000000016;
  *(v20 + 104) = 0x80000001CA9AD320;
  v22 = MEMORY[0x1E69E6158];
  *(v20 + 120) = MEMORY[0x1E69E6158];
  *(v20 + 128) = 1701667150;
  *(v20 + 136) = 0xE400000000000000;
  *(v20 + 144) = 0x74696D736E617254;
  *(v20 + 152) = 0xE800000000000000;
  *(v20 + 168) = v22;
  strcpy((v20 + 176), "TeamIdentifier");
  *(v20 + 216) = v22;
  *(v20 + 191) = -18;
  *(v20 + 192) = 0x3838344346384556;
  *(v20 + 200) = 0xEA00000000003555;
  v23 = @"AppDefinition";
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"Discontinued";
  v26 = v25;
  v170 = v25;
  *(inited + 160) = 1;
  *(inited + 184) = v21;
  *(inited + 192) = @"Input";
  v27 = swift_initStackObject();
  v182 = xmmword_1CA9813C0;
  *(v27 + 16) = xmmword_1CA9813C0;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  *(v27 + 48) = 1;
  *(v27 + 72) = v21;
  *(v27 + 80) = 0x6465726975716552;
  *(v27 + 88) = 0xE800000000000000;
  *(v27 + 96) = 1;
  *(v27 + 120) = v21;
  *(v27 + 128) = 0x7365707954;
  *(v27 + 136) = 0xE500000000000000;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v27 + 168) = v165;
  *(v27 + 144) = &unk_1F49F75A0;
  v28 = @"Discontinued";
  v29 = @"Input";
  v30 = MEMORY[0x1E69E6158];
  v31 = sub_1CA94C1E8();
  *(inited + 224) = v26;
  *(inited + 200) = v31;
  v166 = 0xE900000000000065;
  *(inited + 232) = sub_1CA94C368();
  strcpy((inited + 240), "ContentItems");
  *(inited + 253) = 0;
  *(inited + 254) = -5120;
  *(inited + 264) = v30;
  *(inited + 272) = @"Name";
  v32 = @"Name";
  v33 = sub_1CA94C438("Save with Transmit (Action Name)", 32);
  v35 = v34;
  v36 = sub_1CA94C438("Save with Transmit", 18);
  v38 = v37;
  v178 = inited;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v157 - v188;
  sub_1CA948D98();
  v40 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v157 - v183;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v33, v35, v36, v38, 0, 0, v39, v41);
  v44 = v178;
  v178[35] = v43;
  v44[38] = v184;
  v44[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_1CA981470;
  v180 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CA981370;
  v46 = v176;
  *(v45 + 32) = @"Class";
  *(v45 + 40) = v46;
  *(v45 + 48) = 0x80000001CA99C4A0;
  v47 = MEMORY[0x1E69E6158];
  *(v45 + 64) = MEMORY[0x1E69E6158];
  *(v45 + 72) = @"DefaultValue";
  *(v45 + 80) = 0x65746F6D6552;
  *(v45 + 88) = 0xE600000000000000;
  *(v45 + 104) = v47;
  *(v45 + 112) = @"Items";
  v175 = swift_allocObject();
  *(v175 + 1) = xmmword_1CA981360;
  v176 = @"Class";
  v48 = @"Parameters";
  v49 = @"DefaultValue";
  v50 = @"Items";
  v51 = sub_1CA94C438("Local (TransmitSaveTo)", 22);
  v172 = v52;
  v173 = v51;
  v53 = sub_1CA94C438("Local", 5);
  v164 = v54;
  v174 = &v157;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v157 - v188;
  sub_1CA948D98();
  v56 = v186;
  v57 = [v186 bundleURL];
  v163 = &v157;
  MEMORY[0x1EEE9AC00](v57);
  v58 = v183;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v173, v172, v53, v164, 0, 0, v55, &v157 - v58);
  v61 = v175;
  v175[4] = v60;
  v62 = sub_1CA94C438("Remote (TransmitSaveTo)", 23);
  v172 = v63;
  v173 = v62;
  v64 = sub_1CA94C438("Remote", 6);
  v164 = v65;
  v174 = &v157;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v157 - v188;
  sub_1CA948D98();
  v67 = [v56 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61[5] = sub_1CA2F9F14(v173, v172, v64, v164, 0, 0, v66, &v157 - v58);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v45 + 120) = v61;
  *(v45 + 144) = v69;
  *(v45 + 152) = @"Key";
  strcpy((v45 + 160), "TransmitSaveTo");
  *(v45 + 175) = -18;
  *(v45 + 184) = MEMORY[0x1E69E6158];
  *(v45 + 192) = @"Label";
  v70 = @"Key";
  v71 = @"Label";
  v72 = v70;
  v73 = v71;
  v172 = v72;
  v173 = v73;
  v74 = sub_1CA94C438("Save To (TransmitSaveTo)", 24);
  v76 = v75;
  v77 = sub_1CA94C438("Save To", 7);
  v79 = v78;
  v175 = &v157;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v157 - v188;
  sub_1CA948D98();
  v81 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v157 - v183;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v74, v76, v77, v79, 0, 0, v80, v82);
  *(v45 + 224) = v184;
  *(v45 + 200) = v84;
  _s3__C3KeyVMa_0(0);
  v175 = v85;
  v174 = sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v86 = sub_1CA94C1E8();
  v87 = sub_1CA2F864C(v86);
  *(v181 + 32) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1CA981380;
  v162 = 0x80000001CA99B500;
  *(v88 + 32) = v176;
  *(v88 + 40) = 0xD000000000000014;
  *(v88 + 48) = 0x80000001CA99B500;
  v89 = MEMORY[0x1E69E6158];
  v90 = v172;
  *(v88 + 64) = MEMORY[0x1E69E6158];
  *(v88 + 72) = v90;
  v164 = 0x80000001CA9AD400;
  *(v88 + 80) = 0xD000000000000014;
  *(v88 + 88) = 0x80000001CA9AD400;
  v91 = v173;
  *(v88 + 104) = v89;
  *(v88 + 112) = v91;
  v92 = sub_1CA94C438("Favorite Name (TransmitFavoriteName)", 36);
  v160 = v93;
  v161 = v92;
  v94 = sub_1CA94C438("Favorite Name", 13);
  v96 = v95;
  v163 = &v157;
  MEMORY[0x1EEE9AC00](v94);
  v97 = v188;
  sub_1CA948D98();
  v98 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v157 - v183;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 120) = sub_1CA2F9F14(v161, v160, v94, v96, 0, 0, &v157 - v97, v99);
  v101 = v184;
  *(v88 + 144) = v184;
  *(v88 + 152) = @"Placeholder";
  v163 = @"Placeholder";
  v102 = sub_1CA94C438("optional (TransmitFavoriteName)", 31);
  v159 = v103;
  v160 = v102;
  v158 = sub_1CA94C438("optional", 8);
  v105 = v104;
  v161 = &v157;
  MEMORY[0x1EEE9AC00](v158);
  sub_1CA948D98();
  v106 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v183;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 160) = sub_1CA2F9F14(v160, v159, v158, v105, 0, 0, &v157 - v97, &v157 - v107);
  *(v88 + 184) = v101;
  *(v88 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1CA981310;
  v110 = @"RequiredResources";
  v111 = MEMORY[0x1E69E6158];
  *(v109 + 32) = sub_1CA94C1E8();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v88 + 200) = v109;
  *(v88 + 224) = v112;
  *(v88 + 232) = @"TextAlignment";
  *(v88 + 264) = v111;
  *(v88 + 240) = 0x7468676952;
  *(v88 + 248) = 0xE500000000000000;
  v161 = @"TextAlignment";
  v113 = sub_1CA94C1E8();
  v114 = sub_1CA2F864C(v113);
  *(v181 + 40) = v114;
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1CA981300;
  *(v115 + 32) = @"AutocapitalizationType";
  *(v115 + 40) = 1701736270;
  *(v115 + 48) = 0xE400000000000000;
  v116 = v176;
  *(v115 + 64) = v111;
  *(v115 + 72) = v116;
  *(v115 + 80) = 0xD000000000000014;
  *(v115 + 88) = v162;
  *(v115 + 104) = v111;
  *(v115 + 112) = @"DisableAutocorrection";
  *(v115 + 120) = 1;
  v117 = v172;
  *(v115 + 144) = MEMORY[0x1E69E6370];
  *(v115 + 152) = v117;
  strcpy((v115 + 160), "TransmitPath");
  *(v115 + 173) = 0;
  *(v115 + 174) = -5120;
  *(v115 + 184) = v111;
  *(v115 + 192) = @"KeyboardType";
  *(v115 + 200) = 0x6372616553626557;
  *(v115 + 208) = 0xE900000000000068;
  v118 = v173;
  *(v115 + 224) = v111;
  *(v115 + 232) = v118;
  v119 = @"AutocapitalizationType";
  v120 = @"DisableAutocorrection";
  v121 = @"KeyboardType";
  v176 = sub_1CA94C438("Path (TransmitPath)", 19);
  v173 = v122;
  v123 = sub_1CA94C438("Path", 4);
  v172 = v124;
  v177 = &v157;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v157 - v188;
  sub_1CA948D98();
  v126 = v186;
  v127 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = v107;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v115 + 240) = sub_1CA2F9F14(v176, v173, v123, v172, 0, 0, v125, &v157 - v107);
  v130 = v163;
  *(v115 + 264) = v184;
  *(v115 + 272) = v130;
  v176 = sub_1CA94C438("optional (TransmitPath)", 23);
  v173 = v131;
  v132 = sub_1CA94C438("optional", 8);
  v172 = v133;
  v177 = &v157;
  MEMORY[0x1EEE9AC00](v132);
  v134 = &v157 - v188;
  sub_1CA948D98();
  v135 = [v126 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v115 + 280) = sub_1CA2F9F14(v176, v173, v132, v172, 0, 0, v134, &v157 - v128);
  v137 = v161;
  *(v115 + 304) = v184;
  *(v115 + 312) = v137;
  v138 = MEMORY[0x1E69E6158];
  *(v115 + 344) = MEMORY[0x1E69E6158];
  *(v115 + 320) = 0x7468676952;
  *(v115 + 328) = 0xE500000000000000;
  v139 = sub_1CA94C1E8();
  v140 = sub_1CA2F864C(v139);
  v141 = v181;
  *(v181 + 48) = v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v143 = v178;
  v178[40] = v141;
  v143[43] = v142;
  v143[44] = @"RequiredResources";
  v144 = v165;
  v143[48] = v165;
  v143[45] = &unk_1F49F7650;
  v145 = @"RequiredResources";
  v143[49] = sub_1CA94C368();
  v146 = swift_allocObject();
  *(v146 + 16) = v179;
  v147 = v168;
  *(v146 + 32) = v169;
  *(v146 + 40) = v147;
  *(v146 + 48) = 0xD00000000000001CLL;
  *(v146 + 56) = 0x80000001CA9AD2D0;
  *(v146 + 72) = v138;
  *(v146 + 80) = 0xD000000000000012;
  *(v146 + 88) = 0x80000001CA99DDA0;
  *(v146 + 96) = &unk_1F49F7680;
  *(v146 + 120) = v144;
  *(v146 + 128) = 0x7079547475706E49;
  *(v146 + 136) = v166;
  strcpy((v146 + 144), "ContentItems");
  *(v146 + 157) = 0;
  *(v146 + 158) = -5120;
  *(v146 + 168) = v138;
  *(v146 + 176) = 0x6F666E4972657355;
  *(v146 + 184) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v148 = swift_allocObject();
  *(v148 + 16) = v182;
  v149 = swift_allocObject();
  *(v149 + 16) = v179;
  strcpy((v149 + 32), "DestinationKey");
  *(v149 + 47) = -18;
  *(v149 + 48) = 0xD000000000000020;
  *(v149 + 56) = 0x80000001CA9AD4C0;
  *(v149 + 72) = v138;
  *(v149 + 80) = 0x73616C436D657449;
  *(v149 + 88) = 0xE900000000000073;
  *(v149 + 96) = 0x676E69727453534ELL;
  *(v149 + 104) = 0xE800000000000000;
  *(v149 + 120) = v138;
  strcpy((v149 + 128), "ParameterKey");
  *(v149 + 141) = 0;
  *(v149 + 142) = -5120;
  strcpy((v149 + 144), "TransmitSaveTo");
  *(v149 + 159) = -18;
  *(v149 + 168) = v138;
  strcpy((v149 + 176), "ValueMapping");
  *(v149 + 189) = 0;
  *(v149 + 190) = -5120;
  v150 = v138;
  v151 = sub_1CA94C1E8();
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v149 + 216) = v188;
  *(v149 + 192) = v151;
  *(v148 + 32) = sub_1CA94C1E8();
  v152 = swift_allocObject();
  *(v152 + 16) = v182;
  strcpy((v152 + 32), "DestinationKey");
  *(v152 + 47) = -18;
  *(v152 + 48) = 0xD000000000000026;
  *(v152 + 56) = 0x80000001CA9AD4F0;
  *(v152 + 72) = v150;
  *(v152 + 80) = 0x73616C436D657449;
  *(v152 + 88) = 0xE900000000000073;
  *(v152 + 96) = 0x676E69727453534ELL;
  *(v152 + 104) = 0xE800000000000000;
  *(v152 + 120) = v150;
  strcpy((v152 + 128), "ParameterKey");
  *(v152 + 168) = v150;
  *(v152 + 141) = 0;
  *(v152 + 142) = -5120;
  *(v152 + 144) = 0xD000000000000014;
  *(v152 + 152) = v164;
  *(v148 + 40) = sub_1CA94C1E8();
  v153 = swift_allocObject();
  *(v153 + 16) = v182;
  strcpy((v153 + 32), "DestinationKey");
  *(v153 + 47) = -18;
  *(v153 + 48) = 0xD00000000000001ELL;
  *(v153 + 56) = 0x80000001CA9AD520;
  *(v153 + 72) = v150;
  *(v153 + 80) = 0x73616C436D657449;
  *(v153 + 88) = 0xE900000000000073;
  *(v153 + 96) = 0x676E69727453534ELL;
  *(v153 + 104) = 0xE800000000000000;
  *(v153 + 120) = v150;
  strcpy((v153 + 128), "ParameterKey");
  *(v153 + 168) = v150;
  *(v153 + 141) = 0;
  *(v153 + 142) = -5120;
  strcpy((v153 + 144), "TransmitPath");
  *(v153 + 157) = 0;
  *(v153 + 158) = -5120;
  *(v148 + 48) = sub_1CA94C1E8();
  *(v146 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v146 + 192) = v148;
  v143[50] = sub_1CA94C1E8();
  v143[53] = v170;
  v143[54] = @"UserInterfaceClasses";
  v154 = @"UserInterfaceClasses";
  v155 = sub_1CA94C1E8();
  v143[58] = v188;
  v143[55] = v155;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA390824(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CA8, &qword_1CA982130);
  OUTLINED_FUNCTION_18_0(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CB0, &qword_1CA982138);
  OUTLINED_FUNCTION_1_0();
  v41 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_63();
  (*(v15 + 16))(v18, v42, v13);
  sub_1CA25C3BC(&qword_1EC441C78, &qword_1EC443C30, &qword_1CA9820D0, MEMORY[0x1E6995150]);
  sub_1CA94C598();
  sub_1CA25C3BC(&qword_1EC441C88, &qword_1EC443CB0, &qword_1CA982138, MEMORY[0x1E6995120]);
  v21 = v5;
  v22 = (v5 + 32);
  v23 = (v21 + 8);
  v42 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1CA94D148();
    if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
    {
      v31 = OUTLINED_FUNCTION_20_8();
      v32(v31);
      return v42;
    }

    (*v22)(v8, v12, v3);
    v43(&v45, v8);
    if (v2)
    {
      break;
    }

    (*v23)(v8, v3);
    v24 = v46;
    if (v46)
    {
      v40 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA26DADC();
        v42 = v29;
      }

      v25 = *(v42 + 16);
      v26 = v25 + 1;
      if (v25 >= *(v42 + 24) >> 1)
      {
        v38 = *(v42 + 16);
        v39 = v25 + 1;
        sub_1CA26DADC();
        v25 = v38;
        v26 = v39;
        v42 = v30;
      }

      v27 = v42;
      *(v42 + 16) = v26;
      v28 = v27 + 16 * v25;
      *(v28 + 32) = v40;
      *(v28 + 40) = v24;
    }
  }

  (*v23)(v8, v3);
  v34 = OUTLINED_FUNCTION_20_8();
  v35(v34);
  v33 = v42;

  return v33;
}

void sub_1CA390C0C(void (*result)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A58, &qword_1CA988490) - 8);
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    result(&v19, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {

      return;
    }

    v10 = v19;
    ++v6;
    if (v19 != 6)
    {
      v11 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E6404(0, *(v18 + 16) + 1, 1, v18);
        v11 = v16;
      }

      v12 = v11;
      v13 = *(v11 + 16);
      v18 = v12;
      v14 = *(v12 + 24);
      v15 = v13 + 1;
      if (v13 >= v14 >> 1)
      {
        sub_1CA2E6404(v14 > 1, v13 + 1, 1, v18);
        v15 = v13 + 1;
        v18 = v17;
      }

      *(v18 + 16) = v15;
      *(v18 + v13 + 32) = v10;
      v6 = v9;
    }
  }
}

void Library.collections.getter()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v76 = v2;
  v77 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v6 = v5 - v4;
  v7 = type metadata accessor for LibraryModel.CategoryCollection(0);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v90 = v10 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC8, &unk_1CA982150);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CB8, &qword_1CA982140);
  OUTLINED_FUNCTION_18_0(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_63();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC0, &qword_1CA982148);
  OUTLINED_FUNCTION_1_0();
  v69 = v16;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  OUTLINED_FUNCTION_1_0();
  v72 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_1();
  v87 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_1();
  v83 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v67 - v32;
  v34 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_27_2(v0 + OBJC_IVAR___WFLibrary_capsule, &v92);
  OUTLINED_FUNCTION_22_6();
  v86 = v0;
  v81 = v35;
  v82 = v34;
  v80 = v36;
  v36(v33, v0 + v34, v26);
  swift_getKeyPath();
  sub_1CA94BF48();

  v37 = *(v28 + 8);
  v84 = v28 + 8;
  v85 = v26;
  v79 = v37;
  v37(v33, v26);
  v71 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  v38 = *(v72 + 16);
  v67 = v25;
  v38(v87, v25, v19);
  sub_1CA25C3BC(&qword_1EC441C98, &qword_1EC443C40, &qword_1CA9844E0, MEMORY[0x1E69950E0]);
  v39 = v70;
  v68 = v19;
  sub_1CA94C598();
  v87 = sub_1CA25C3BC(&qword_1EC441CA8, &qword_1EC443CC0, &qword_1CA982148, MEMORY[0x1E69950C0]);
  v75 = *MEMORY[0x1E69E1098];
  v74 = (v77 + 8);
  *&v40 = 136446210;
  v73 = v40;
  v77 = v6;
  v78 = v1;
  while (1)
  {
    sub_1CA94D148();
    if (__swift_getEnumTagSinglePayload(v1, 1, v39) == 1)
    {
      break;
    }

    v41 = v6;
    sub_1CA393EE4(v1, v13, &qword_1EC443CC8, &unk_1CA982150);
    v42 = v39;
    v43 = v85;
    v44 = v83;
    v80(v83, v86 + v82, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
    type metadata accessor for LibraryModel(0);
    sub_1CA34137C();
    sub_1CA94BEC8();
    v79(v44, v43);
    OUTLINED_FUNCTION_116();
    v45 = sub_1CA94C368();
    v46 = WFWorkflowTypeForCollectionIdentifier(v45);

    if (v46)
    {
      v47 = WFHumanReadableNameForWorkflowType();
      if (!v47)
      {
        __break(1u);
        return;
      }

      v48 = v47;
      v49 = sub_1CA94C3A8();
      v51 = v50;

      v52 = objc_allocWithZone(MEMORY[0x1E69E0DD0]);
      sub_1CA94C218();
      v53 = OUTLINED_FUNCTION_116();
      v55 = sub_1CA27E214(v53, v54, 0, v49, v51, 0, 0);

      OUTLINED_FUNCTION_0_21();
      sub_1CA393E8C(v90, v56);
      v57 = sub_1CA27080C(v13, &qword_1EC443CC8, &unk_1CA982150);
      v6 = v77;
      v1 = v78;
      v39 = v42;
      if (v55)
      {
        MEMORY[0x1CCAA1490](v57);
        OUTLINED_FUNCTION_8_8();
        if (v58)
        {
          OUTLINED_FUNCTION_11_3();
        }

        OUTLINED_FUNCTION_116();
        sub_1CA94C6E8();
        v71 = v93;
      }
    }

    else
    {
      v6 = v41;
      sub_1CA949C58();
      sub_1CA94C218();
      v59 = sub_1CA949F68();
      v60 = sub_1CA94CC28();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v91 = v62;
        *v61 = v73;
        v63 = OUTLINED_FUNCTION_116();
        *(v61 + 4) = sub_1CA26B54C(v63, v64, v65);
        _os_log_impl(&dword_1CA256000, v59, v60, "Can't map collection identifier to workflow type. Identifier: %{public}s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        v6 = v77;
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();
      }

      (*v74)(v6, v76);
      v39 = v42;
      v1 = v78;
      OUTLINED_FUNCTION_0_21();
      sub_1CA393E8C(v90, v66);
      sub_1CA27080C(v13, &qword_1EC443CC8, &unk_1CA982150);
    }
  }

  (*(v69 + 8))(v89, v88);
  (*(v72 + 8))(v67, v68);
  v93 = v71;
  if (qword_1EC442C58 != -1)
  {
    OUTLINED_FUNCTION_3_19(&qword_1EC442C58);
  }

  qword_1EC442C60;
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_8_8();
  if (v58)
  {
    OUTLINED_FUNCTION_11_3();
  }

  OUTLINED_FUNCTION_116();
  sub_1CA94C6E8();
  OUTLINED_FUNCTION_36();
}

void sub_1CA391640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = WFGetBuiltInCollectionIdentifiers(0);
  v12 = sub_1CA94C8F8();

  LOBYTE(v11) = sub_1CA27AF18(a2, a3, v12);

  if (v11)
  {
    sub_1CA2D4310();
    sub_1CA27080C(v10, &qword_1EC443C90, &qword_1CA982120);
    sub_1CA2CB068();
  }

  else
  {
    sub_1CA2CA09C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v13);
    sub_1CA27080C(v7, &qword_1EC443BE8, &qword_1CA982098);
    if (EnumTagSinglePayload != 1)
    {
      sub_1CA2CE3AC();
    }
  }
}

uint64_t sub_1CA3918C0()
{
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_17_5(v0, v1, v0, v2, v3, v4, v5, v6, v8);
  return swift_endAccess();
}

void sub_1CA39194C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  if (sub_1CA94C3A8() == a2 && v8 == a3)
  {

    goto LABEL_9;
  }

  v10 = sub_1CA94D7F8();

  if (v10)
  {
LABEL_9:
    sub_1CA2D9AF4();
    swift_allocError();
    *v13 = xmmword_1CA9855C0;
    *(v13 + 16) = 2;
    swift_willThrow();
    return;
  }

  v11 = WFGetBuiltInCollectionIdentifiers(0);
  v12 = sub_1CA94C8F8();

  LOBYTE(v11) = sub_1CA27AF18(a2, a3, v12);

  if (v11)
  {
    sub_1CA2D4310();
    sub_1CA27080C(v7, &qword_1EC443C90, &qword_1CA982120);
    sub_1CA2CBCD0();
  }

  else
  {
    sub_1CA2CE8CC();
  }
}

uint64_t sub_1CA391B44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1CA94C3A8();
  v10 = v9;
  v11 = sub_1CA94C3A8();
  v13 = v12;
  v14 = a1;
  a6(v8, v10, v11, v13);

  return 1;
}

uint64_t sub_1CA391C50()
{
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_17_5(v0, v1, v0, v2, v3, v4, v5, v6, v8);
  return swift_endAccess();
}

uint64_t sub_1CA391CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v30 = a8;
  v31 = a7;
  v33 = a6;
  v32 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  OUTLINED_FUNCTION_18_0(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = WFGetBuiltInCollectionIdentifiers(0);
  v20 = sub_1CA94C8F8();

  v21 = OUTLINED_FUNCTION_136_0();
  LOBYTE(v19) = sub_1CA27AF18(v21, v22, v20);

  if (v19)
  {
    OUTLINED_FUNCTION_136_0();
    sub_1CA2D4310();
    sub_1CA27080C(v18, &qword_1EC443C90, &qword_1CA982120);
    return v31(a4, v32, v33, a2, a3);
  }

  else
  {
    v24 = a4;
    v25 = v32;
    v26 = v33;
    OUTLINED_FUNCTION_136_0();
    sub_1CA2CA09C();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v27);
    result = sub_1CA27080C(v14, &qword_1EC443BE8, &qword_1CA982098);
    if (EnumTagSinglePayload != 1)
    {
      return v30(v24, v25, v26, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CA391F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_1CA94C3A8();
  v12 = v11;
  v13 = sub_1CA94C3A8();
  v15 = v14;
  v16 = a1;
  a7(v10, v12, a4, v13, v15);

  return 1;
}

uint64_t Library.collectionsAndFoldersContaining(shortcut:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CA94C368();
  v4 = [v2 collectionsContainingShortcut_];

  sub_1CA27E37C();
  v5 = sub_1CA94C658();

  v6 = sub_1CA94C368();
  v7 = [v2 folderContainingShortcut_];

  if (v7)
  {
    MEMORY[0x1CCAA1490]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    OUTLINED_FUNCTION_187();
    sub_1CA94C6E8();
  }

  return v5;
}

uint64_t Library.collectionAndFolderIdentifiersContaining(shortcut:)(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CA94C368();
  v31[0] = 0;
  v3 = [v1 collectionsAndFoldersContainingShortcut:v2 error:v31];

  v4 = v31[0];
  if (v3)
  {
    sub_1CA27E37C();
    v5 = sub_1CA94C658();
    v6 = v4;

    v7 = sub_1CA25B410(v5);
    if (v7)
    {
      v12 = v7;
      v31[0] = MEMORY[0x1E69E7CC0];
      sub_1CA271524(0, v7 & ~(v7 >> 63), 0, v8, v9, v10, v11);
      if (v12 < 0)
      {
        __break(1u);
      }

      v13 = 0;
      v14 = v31[0];
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = OUTLINED_FUNCTION_136_0();
          v16 = MEMORY[0x1CCAA22D0](v15);
        }

        else
        {
          v16 = *(v5 + 8 * v13 + 32);
        }

        v17 = v16;
        v18 = [v16 identifier];
        v19 = sub_1CA94C3A8();
        v21 = v20;

        v31[0] = v14;
        v27 = v14[2];
        v26 = v14[3];
        if (v27 >= v26 >> 1)
        {
          sub_1CA271524(v26 > 1, v27 + 1, 1, v22, v23, v24, v25);
          v14 = v31[0];
        }

        ++v13;
        v14[2] = v27 + 1;
        v28 = &v14[2 * v27];
        v28[4] = v19;
        v28[5] = v21;
      }

      while (v12 != v13);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    return sub_1CA2E2E2C(v14);
  }

  else
  {
    v29 = v31[0];
    sub_1CA948AD8();

    return swift_willThrow();
  }
}

uint64_t Library.shortcuts(inCategoryWithIdentifier:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5 - 8];
  v7 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_27_2(v0 + OBJC_IVAR___WFLibrary_capsule, v14);
  (*(v3 + 16))(v6, v0 + v7, v1);
  OUTLINED_FUNCTION_116();
  sub_1CA2D7330();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_187();
  v11(v10);
  return v9;
}

void Library.collectionsContaining(shortcut:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v133 = v24;
  v134 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C38, &qword_1CA9820D8);
  OUTLINED_FUNCTION_18_0(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v116 - v28;
  v30 = type metadata accessor for LibraryModel.CategoryCollection(0);
  v31 = OUTLINED_FUNCTION_18_0(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  v118 = &v116 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_1_0();
  v139 = v36;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v116 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CB8, &qword_1CA982140);
  v41 = OUTLINED_FUNCTION_18_0(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_3_1();
  v132 = v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v116 - v44);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  OUTLINED_FUNCTION_1_0();
  v136 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v48);
  v144 = &v116 - v49;
  v125 = type metadata accessor for LibraryModel(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_6_0();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v56 = v55;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v116 - v59;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC0, &qword_1CA982148);
  OUTLINED_FUNCTION_1_0();
  v116 = v61;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v62);
  v137 = &v116 - v63;
  v148 = MEMORY[0x1E69E7CC0];
  v64 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_27_2(v23 + OBJC_IVAR___WFLibrary_capsule, &v147);
  v65 = *(v56 + 16);
  v142 = v64;
  v143 = v23;
  v140 = v65;
  v141 = v56 + 16;
  v65(v60, v23 + v64, v54);
  sub_1CA94BFD8();
  v66 = *(v56 + 8);
  v121 = v60;
  v130 = v56 + 8;
  v66(v60, v54);
  v67 = v136;
  OUTLINED_FUNCTION_22_6();
  v68 = v144;
  v69 = v131;
  v70(v144, v53, v131);
  sub_1CA393E8C(v53, type metadata accessor for LibraryModel);
  sub_1CA94BC58();
  v71 = *(v67 + 8);
  v136 = v67 + 8;
  v123 = v71;
  v71(v68, v69);
  v144 = 0;
  v122 = (v139 + 4);
  ++v139;
  v117 = MEMORY[0x1E69E7CC0];
  v129 = v29;
  v128 = v35;
  v126 = v45;
  v124 = v39;
  while (1)
  {
    v72 = v132;
    sub_1CA94BC68();
    sub_1CA393EE4(v72, v45, &qword_1EC443CB8, &qword_1CA982140);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC8, &unk_1CA982150);
    if (__swift_getEnumTagSinglePayload(v45, 1, v73) == 1)
    {
      break;
    }

    v75 = *v45;
    v74 = v45[1];
    (*v122)(v39, v45 + *(v73 + 48), v35);
    v76 = OUTLINED_FUNCTION_21_8(&a11);
    v77(v76);
    swift_getKeyPath();
    v78 = v35;
    v79 = v54;
    v80 = v127;
    v81 = v79;
    sub_1CA94BF48();

    v138 = v75;
    v145 = v75;
    v146 = v74;
    sub_1CA94C218();
    v82 = v131;
    sub_1CA94BC98();
    v123(v80, v82);

    if (__swift_getEnumTagSinglePayload(v29, 1, v78) == 1)
    {
      sub_1CA27080C(v29, &qword_1EC443C38, &qword_1CA9820D8);
      v83 = MEMORY[0x1E69E7CC0];
      v84 = v144;
    }

    else
    {
      sub_1CA34137C();
      v85 = v119;
      sub_1CA94BEC8();
      (*v139)(v29, v78);
      v86 = v118;
      v87 = sub_1CA393F44(v85, v118);
      MEMORY[0x1EEE9AC00](v87);
      OUTLINED_FUNCTION_98();
      *(v88 - 16) = v66;
      v84 = v144;
      v83 = sub_1CA390824(sub_1CA2D9C98, v89);
      OUTLINED_FUNCTION_0_21();
      sub_1CA393E8C(v86, v90);
    }

    v54 = v81;
    v91 = (v66)(v66, v81);
    v145 = v133;
    v146 = v134;
    MEMORY[0x1EEE9AC00](v91);
    OUTLINED_FUNCTION_98();
    *(v92 - 16) = &v145;
    v94 = sub_1CA2BFD14(sub_1CA36DB00, v93, v83);

    v39 = v124;
    v144 = v84;
    if (v94)
    {
      v95 = OUTLINED_FUNCTION_21_8(&v149);
      v96(v95);
      sub_1CA34137C();
      v97 = v120;
      v35 = v128;
      sub_1CA94BEC8();
      v66(v66, v81);
      LibraryModel.CategoryCollection.workflowCollection(id:)();
      v99 = v98;

      OUTLINED_FUNCTION_0_21();
      sub_1CA393E8C(v97, v100);
      v45 = v126;
      if (v99)
      {
        v105 = v99;
        MEMORY[0x1CCAA1490]();
        v29 = v129;
        if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        sub_1CA94C6E8();

        v106 = OUTLINED_FUNCTION_15_6();
        v107(v106, v35);
        v117 = v148;
      }

      else
      {
        v101 = OUTLINED_FUNCTION_15_6();
        v102(v101, v35);
        v29 = v129;
      }
    }

    else
    {
      v103 = OUTLINED_FUNCTION_15_6();
      v35 = v128;
      v104(v103, v128);

      v29 = v129;
      v45 = v126;
    }
  }

  (*(v116 + 8))(v137, v135);
  v140(v121, v143 + v142, v54);
  sub_1CA94C3A8();
  sub_1CA2D776C();
  v109 = v108;

  v110 = OUTLINED_FUNCTION_187();
  v111 = (v66)(v110);
  v145 = v133;
  v146 = v134;
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_98();
  *(v112 - 16) = &v145;
  v114 = sub_1CA2BFD14(sub_1CA2E9370, v113, v109);

  if (v114)
  {
    if (qword_1EC442C58 != -1)
    {
      OUTLINED_FUNCTION_3_19(&qword_1EC442C58);
    }

    qword_1EC442C60;
    MEMORY[0x1CCAA1490]();
    OUTLINED_FUNCTION_8_8();
    if (v115)
    {
      OUTLINED_FUNCTION_11_3();
    }

    OUTLINED_FUNCTION_116();
    sub_1CA94C6E8();
  }

  OUTLINED_FUNCTION_36();
}

void Library.collection(workflowType:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = WFWorkflowCollectionIdentifierForWorkflowType(v2);
  if (v10)
  {
    v11 = v10;
    [v0 collectionWithIdentifier_];
  }

  else
  {
    sub_1CA949C58();
    v12 = v2;
    v13 = sub_1CA949F68();
    v14 = sub_1CA94CC18();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136446210;
      v17 = sub_1CA94C3A8();
      v19 = sub_1CA26B54C(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1CA256000, v13, v14, "Can't map workflow type to a collection. workflowType: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_36();
}

void Library.collection(identifier:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  OUTLINED_FUNCTION_52();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  if (sub_1CA94C3A8() == v3 && v10 == v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_187();
    v12 = sub_1CA94D7F8();

    if ((v12 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v13);
      *&v17[-16] = v3;
      *&v17[-8] = v1;
      OUTLINED_FUNCTION_16_0();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
      sub_1CA94BFF8();
      swift_endAccess();
      sub_1CA393FDC(v9, v7);
      v14 = type metadata accessor for LibraryModel.CategoryCollection(0);
      if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
      {
        sub_1CA27080C(v9, &qword_1EC443C90, &qword_1CA982120);
        sub_1CA27080C(v7, &qword_1EC443C90, &qword_1CA982120);
      }

      else
      {
        OUTLINED_FUNCTION_187();
        LibraryModel.CategoryCollection.workflowCollection(id:)();
        sub_1CA27080C(v9, &qword_1EC443C90, &qword_1CA982120);
        OUTLINED_FUNCTION_0_21();
        sub_1CA393E8C(v7, v16);
      }

      goto LABEL_12;
    }
  }

  if (qword_1EC442C58 != -1)
  {
    OUTLINED_FUNCTION_3_19(&qword_1EC442C58);
  }

  v15 = qword_1EC442C60;
LABEL_12:
  OUTLINED_FUNCTION_36();
}

NSNumber_optional __swiftcall Library.indexOfShortcut(identifier:inCollectionWithIdentifier:)(Swift::String identifier, Swift::String inCollectionWithIdentifier)
{
  OUTLINED_FUNCTION_37_0();
  v5 = v4;
  v7 = v6;
  v34 = v8;
  v35 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_63();
  v17 = WFGetBuiltInCollectionIdentifiers(0);
  v18 = sub_1CA94C8F8();

  v19 = OUTLINED_FUNCTION_187();
  LOBYTE(v17) = sub_1CA27AF18(v19, v20, v18);

  if (v17)
  {
    v33[3] = v5;
    v33[1] = v33;
    MEMORY[0x1EEE9AC00](v21);
    v22 = v35;
    v33[-2] = v34;
    v33[-1] = v22;
    v33[2] = v7;
    v23 = OBJC_IVAR___WFLibrary_capsule;
    OUTLINED_FUNCTION_16_0();
    swift_beginAccess();
    sub_1CA94BFF8();
    sub_1CA27080C(v3, &qword_1EC443C90, &qword_1CA982120);
    swift_endAccess();
    OUTLINED_FUNCTION_22_6();
    v24(v15, v2 + v23, v10);
    sub_1CA2D9214();
  }

  else
  {
    v27 = OBJC_IVAR___WFLibrary_capsule;
    OUTLINED_FUNCTION_27_2(v2 + OBJC_IVAR___WFLibrary_capsule, &v36);
    OUTLINED_FUNCTION_22_6();
    v28(v15, v2 + v27, v10);
    sub_1CA2D7EC0();
  }

  v29 = v25;
  v30 = v26;
  (*(v12 + 8))(v15, v10);
  if ((v30 & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  OUTLINED_FUNCTION_36();
  result.value.super.super.isa = v31;
  result.is_nil = v32;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Library.setShortcutOrdering(_:forCollectionIdentifier:)(Swift::OpaquePointer _, Swift::String forCollectionIdentifier)
{
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94BFF8();
  swift_endAccess();
}

void sub_1CA393A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = WFGetBuiltInCollectionIdentifiers(0);
  v14 = sub_1CA94C8F8();

  LOBYTE(v13) = sub_1CA27AF18(a2, a3, v14);

  if (v13)
  {
    sub_1CA2D4310();
    sub_1CA27080C(v12, &qword_1EC443C90, &qword_1CA982120);
    sub_1CA2CCCCC(a4, a2, a3, v15, v16, v17, v18, v19, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    sub_1CA2CA09C();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v20);
    sub_1CA27080C(v9, &qword_1EC443BE8, &qword_1CA982098);
    if (EnumTagSinglePayload == 1)
    {
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1CA94D408();

      v25 = 0xD000000000000023;
      v26 = 0x80000001CA9AD570;
      MEMORY[0x1CCAA1300](a2, a3);
      v22 = v25;
      v23 = v26;
      sub_1CA2D9AF4();
      swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v23;
      *(v24 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      sub_1CA2CEAC4();
    }
  }
}

uint64_t sub_1CA393E8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA393EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1CA393F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryModel.CategoryCollection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA393FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA3940B8()
{
  v426 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9AD5B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("blog", 4);
  v6 = v5;
  v7 = sub_1CA94C438("blog", 4);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v458 = v11;
  v459 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v415 - v459;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v455 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v457 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v456 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v415 - v456;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v454 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v425 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v453 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v442 = xmmword_1CA97EDF0;
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438("The URL of the new post", 23);
  v450 = v27;
  *&v451 = v26;
  v28 = sub_1CA94C438("The URL of the new post", 23);
  v30 = v29;
  v452 = v415;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v415 - v459;
  sub_1CA948D98();
  v32 = [v455 bundleURL];
  v446 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v456;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v451, v450, v28, v30, 0, 0, v31, v415 - v34);
  v36 = v454;
  *(v23 + 64) = v454;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438("Posts the content passed into the action to Tumblr.", 51);
  v450 = v39;
  *&v451 = v38;
  v449 = sub_1CA94C438("Posts the content passed into the action to Tumblr.", 51);
  v41 = v40;
  v452 = v415;
  MEMORY[0x1EEE9AC00](v449);
  v42 = v415 - v459;
  sub_1CA948D98();
  v43 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v451, v450, v449, v41, 0, 0, v42, v415 - v34);
  *(v23 + 104) = v36;
  *(v23 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v46 = sub_1CA94C1E8();
  v47 = v453;
  v48 = sub_1CA6B3784(v46);
  v49 = v446;
  v446[20] = v48;
  v49[23] = v47;
  v49[24] = @"Input";
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v433 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 1;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x7475706E494657;
  *(v50 + 104) = 0xE700000000000000;
  *(v50 + 120) = MEMORY[0x1E69E6158];
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v441;
  *(v50 + 192) = &unk_1F49F77D0;
  v52 = @"Input";
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v434 = v54;
  v49[25] = v53;
  v49[28] = v54;
  v49[29] = @"Name";
  v55 = @"Name";
  v56 = sub_1CA94C438("Post to Tumblr (Action Name)", 28);
  v58 = v57;
  v59 = sub_1CA94C438("Post to Tumblr", 14);
  v61 = v60;
  v453 = v415;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v415 - v459;
  sub_1CA948D98();
  v63 = v455;
  v64 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v415 - v456;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v56, v58, v59, v61, 0, 0, v62, v65);
  v68 = v454;
  v69 = v446;
  v446[30] = v67;
  v69[33] = v68;
  v69[34] = @"Output";
  v70 = swift_allocObject();
  *(v70 + 16) = v433;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x1E69E6158];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 0;
  *(v70 + 120) = MEMORY[0x1E69E6370];
  *(v70 + 128) = 0x614E74757074754FLL;
  *&v445 = 0xEA0000000000656DLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438("Tumblr Post URL (Default Output Name)", 37);
  v452 = v73;
  v74 = sub_1CA94C438("Tumblr Post URL", 15);
  v76 = v75;
  v453 = v415;
  MEMORY[0x1EEE9AC00](v74);
  v77 = v415 - v459;
  sub_1CA948D98();
  v78 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = v415 - v456;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 144) = sub_1CA2F9F14(v72, v452, v74, v76, 0, 0, v77, v79);
  *(v70 + 168) = v68;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v441;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_1F49F7830;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = v446;
  v446[35] = v82;
  v83[38] = v434;
  v83[39] = @"Parameters";
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v453 = swift_allocObject();
  *(v453 + 1) = xmmword_1CA983CF0;
  v452 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_allocObject();
  *(v84 + 16) = v433;
  v424 = 0xD000000000000019;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000019;
  *(v84 + 48) = 0x80000001CA99B030;
  *(v84 + 64) = v81;
  *(v84 + 72) = @"Key";
  *(v84 + 80) = 0x7475706E494657;
  *(v84 + 88) = 0xE700000000000000;
  *(v84 + 104) = v81;
  *(v84 + 112) = @"Label";
  v85 = @"Class";
  v86 = @"Key";
  v87 = @"Label";
  v88 = v85;
  v89 = v86;
  v90 = v87;
  v443 = v88;
  v440 = v89;
  v444 = v90;
  v91 = @"Parameters";
  v92 = sub_1CA94C438("Content (WFInput)", 17);
  v448 = v93;
  v449 = v92;
  v94 = sub_1CA94C438("Content", 7);
  v439 = v95;
  *&v451 = v415;
  MEMORY[0x1EEE9AC00](v94);
  v96 = v459;
  sub_1CA948D98();
  v97 = v455;
  v98 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = v415 - v456;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 120) = sub_1CA2F9F14(v449, v448, v94, v439, 0, 0, v415 - v96, v99);
  v101 = v454;
  *(v84 + 144) = v454;
  *(v84 + 152) = @"Placeholder";
  v431 = @"Placeholder";
  v102 = sub_1CA94C438("Content (WFInput)", 17);
  v448 = v103;
  v449 = v102;
  v104 = sub_1CA94C438("Content", 7);
  v439 = v105;
  *&v451 = v415;
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948D98();
  v106 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v415 - v456;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v449, v448, v104, v439, 0, 0, v415 - v96, v107);
  *(v84 + 184) = v101;
  *(v84 + 160) = v109;
  _s3__C3KeyVMa_0(0);
  v449 = v110;
  v448 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v453[4] = v112;
  v113 = swift_initStackObject();
  v451 = xmmword_1CA9813C0;
  *(v113 + 16) = xmmword_1CA9813C0;
  v435 = 0xD00000000000001DLL;
  v114 = v443;
  v115 = v444;
  *(v113 + 32) = v443;
  *(v113 + 40) = 0xD00000000000001DLL;
  *(v113 + 48) = 0x80000001CA9AD6A0;
  v116 = MEMORY[0x1E69E6158];
  v117 = v440;
  *(v113 + 64) = MEMORY[0x1E69E6158];
  *(v113 + 72) = v117;
  strcpy((v113 + 80), "WFComposeInApp");
  *(v113 + 95) = -18;
  *(v113 + 104) = v116;
  *(v113 + 112) = v115;
  v439 = v114;
  v443 = v117;
  v444 = v115;
  v118 = sub_1CA94C438("Compose In Tumblr (WFComposeInApp)", 34);
  v120 = v119;
  v121 = sub_1CA94C438("Compose In Tumblr", 17);
  v123 = v122;
  v440 = v415;
  MEMORY[0x1EEE9AC00](v121);
  v124 = v415 - v459;
  sub_1CA948D98();
  v125 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = v415 - v456;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v118, v120, v121, v123, 0, 0, v124, v126);
  *(v113 + 144) = v454;
  *(v113 + 120) = v128;
  v129 = sub_1CA94C1E8();
  v130 = sub_1CA2F864C(v129);
  v453[5] = v130;
  v131 = swift_allocObject();
  v432 = xmmword_1CA981370;
  *(v131 + 16) = xmmword_1CA981370;
  v132 = v439;
  *(v131 + 32) = v439;
  *(v131 + 40) = 0xD00000000000001BLL;
  *(v131 + 48) = 0x80000001CA9AD710;
  *(v131 + 64) = MEMORY[0x1E69E6158];
  *(v131 + 72) = @"Description";
  v430 = v132;
  v133 = @"Description";
  v134 = sub_1CA94C438("The name of the blog to post to. (WFBlogName)", 45);
  v438 = v135;
  v439 = v134;
  v136 = sub_1CA94C438("The name of the blog to post to.", 32);
  v436 = v137;
  v440 = v415;
  MEMORY[0x1EEE9AC00](v136);
  v138 = v415 - v459;
  sub_1CA948D98();
  v139 = v455;
  v140 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = v456;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 80) = sub_1CA2F9F14(v439, v438, v136, v436, 0, 0, v138, v415 - v141);
  v143 = v454;
  v144 = v443;
  v145 = v444;
  *(v131 + 104) = v454;
  *(v131 + 112) = v144;
  *(v131 + 120) = 0x614E676F6C424657;
  *(v131 + 128) = v445;
  *(v131 + 144) = MEMORY[0x1E69E6158];
  *(v131 + 152) = v145;
  v429 = v144;
  v428 = v145;
  v146 = sub_1CA94C438("Blog (WFBlogName)", 17);
  v443 = v147;
  v444 = v146;
  v148 = sub_1CA94C438("Blog", 4);
  v440 = v149;
  *&v445 = v415;
  MEMORY[0x1EEE9AC00](v148);
  v150 = v415 - v459;
  sub_1CA948D98();
  v151 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 160) = sub_1CA2F9F14(v444, v443, v148, v440, 0, 0, v150, v415 - v141);
  *(v131 + 184) = v143;
  *(v131 + 192) = @"RequiredResources";
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v153 = swift_allocObject();
  v445 = xmmword_1CA981310;
  *(v153 + 16) = xmmword_1CA981310;
  v154 = swift_allocObject();
  *(v154 + 16) = v451;
  strcpy((v154 + 32), "WFParameterKey");
  *(v154 + 47) = -18;
  strcpy((v154 + 48), "WFComposeInApp");
  *(v154 + 63) = -18;
  v438 = 0x80000001CA993570;
  v440 = 0xD000000000000010;
  v155 = MEMORY[0x1E69E6158];
  *(v154 + 72) = MEMORY[0x1E69E6158];
  *(v154 + 80) = 0xD000000000000010;
  *(v154 + 88) = 0x80000001CA993570;
  *(v154 + 96) = 0;
  *(v154 + 120) = MEMORY[0x1E69E6370];
  *(v154 + 128) = 0x72756F7365524657;
  v443 = 0x80000001CA993590;
  *(v154 + 168) = v155;
  *(v154 + 136) = 0xEF7373616C436563;
  *(v154 + 144) = 0xD00000000000001BLL;
  *(v154 + 152) = 0x80000001CA993590;
  v436 = @"RequiredResources";
  *(v153 + 32) = sub_1CA94C1E8();
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v131 + 224) = v444;
  *(v131 + 200) = v153;
  v156 = sub_1CA94C1E8();
  v157 = sub_1CA2F864C(v156);
  v453[6] = v157;
  v158 = swift_allocObject();
  *(v158 + 16) = v451;
  v160 = v429;
  v159 = v430;
  v161 = v435;
  *(v158 + 32) = v430;
  *(v158 + 40) = v161;
  *(v158 + 48) = 0x80000001CA99FB10;
  *(v158 + 64) = v155;
  *(v158 + 72) = v160;
  *(v158 + 80) = 0x795474736F504657;
  *(v158 + 88) = 0xEA00000000006570;
  v162 = v428;
  *(v158 + 104) = v155;
  *(v158 + 112) = v162;
  v430 = v159;
  v429 = v160;
  v435 = v162;
  v163 = sub_1CA94C438("Type (WFPostType)", 17);
  v165 = v164;
  v166 = sub_1CA94C438("Type", 4);
  v168 = v167;
  v428 = v415;
  MEMORY[0x1EEE9AC00](v166);
  v169 = v415 - v459;
  sub_1CA948D98();
  v170 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v415 - v456;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v163, v165, v166, v168, 0, 0, v169, v171);
  *(v158 + 144) = v454;
  *(v158 + 120) = v173;
  v174 = sub_1CA94C1E8();
  v175 = sub_1CA2F864C(v174);
  v453[7] = v175;
  v176 = swift_allocObject();
  v422 = xmmword_1CA981380;
  *(v176 + 16) = xmmword_1CA981380;
  v423 = 0xD000000000000016;
  v177 = v430;
  *(v176 + 32) = v430;
  *(v176 + 40) = 0xD000000000000016;
  *(v176 + 48) = 0x80000001CA99C4A0;
  v178 = MEMORY[0x1E69E6158];
  *(v176 + 64) = MEMORY[0x1E69E6158];
  *(v176 + 72) = @"DefaultValue";
  *(v176 + 80) = 0x776F4E2074736F50;
  *(v176 + 88) = 0xE800000000000000;
  *(v176 + 104) = v178;
  *(v176 + 112) = @"Items";
  v437 = swift_allocObject();
  *&v437->data = xmmword_1CA981570;
  v430 = v177;
  v179 = @"DefaultValue";
  v180 = @"Items";
  v427 = sub_1CA94C438("Post Now (WFPostState)", 22);
  v421 = v181;
  v182 = sub_1CA94C438("Post Now", 8);
  v420 = v183;
  v428 = v415;
  MEMORY[0x1EEE9AC00](v182);
  v184 = v459;
  sub_1CA948D98();
  v185 = v455;
  v186 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = v415 - v456;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v427, v421, v182, v420, 0, 0, v415 - v184, v187);
  v190 = v437;
  v437[1].isa = v189;
  v427 = sub_1CA94C438("Add to Queue (WFPostState)", 26);
  v421 = v191;
  v192 = sub_1CA94C438("Add to Queue", 12);
  v420 = v193;
  v428 = v415;
  MEMORY[0x1EEE9AC00](v192);
  sub_1CA948D98();
  v194 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = v456;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190[1].info = sub_1CA2F9F14(v427, v421, v192, v420, 0, 0, v415 - v184, v415 - v195);
  v427 = sub_1CA94C438("Save as Draft (WFPostState)", 27);
  v421 = v197;
  v198 = sub_1CA94C438("Save as Draft", 13);
  v420 = v199;
  v428 = v415;
  MEMORY[0x1EEE9AC00](v198);
  v200 = v415 - v459;
  sub_1CA948D98();
  v201 = v455;
  v202 = [v455 bundleURL];
  v419 = v415;
  MEMORY[0x1EEE9AC00](v202);
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v204 = sub_1CA2F9F14(v427, v421, v198, v420, 0, 0, v200, v415 - v195);
  v437[1].data = v204;
  v427 = sub_1CA94C438("Post Privately (WFPostState)", 28);
  v421 = v205;
  v206 = sub_1CA94C438("Post Privately", 14);
  v420 = v207;
  v428 = v415;
  MEMORY[0x1EEE9AC00](v206);
  v208 = v459;
  sub_1CA948D98();
  v209 = [v201 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v211 = sub_1CA2F9F14(v427, v421, v206, v420, 0, 0, v415 - v208, v415 - v195);
  v212 = v437;
  v437[1].length = v211;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v176 + 120) = v212;
  v214 = v429;
  *(v176 + 144) = v213;
  *(v176 + 152) = v214;
  *(v176 + 160) = 0x745374736F504657;
  *(v176 + 168) = 0xEB00000000657461;
  v215 = v435;
  *(v176 + 184) = MEMORY[0x1E69E6158];
  *(v176 + 192) = v215;
  v429 = v214;
  v437 = v215;
  v216 = sub_1CA94C438("Post Status (WFPostState)", 25);
  v428 = v217;
  v218 = sub_1CA94C438("Post Status", 11);
  v220 = v219;
  v435 = v415;
  MEMORY[0x1EEE9AC00](v218);
  sub_1CA948D98();
  v221 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v221);
  v222 = v415 - v456;
  sub_1CA948B68();

  v223 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v224 = sub_1CA2F9F14(v216, v428, v218, v220, 0, 0, v415 - v208, v222);
  v225 = v436;
  *(v176 + 200) = v224;
  *(v176 + 224) = v454;
  *(v176 + 232) = v225;
  v226 = swift_allocObject();
  *(v226 + 16) = v445;
  v227 = swift_allocObject();
  *(v227 + 16) = v451;
  strcpy((v227 + 32), "WFParameterKey");
  *(v227 + 47) = -18;
  strcpy((v227 + 48), "WFComposeInApp");
  *(v227 + 63) = -18;
  v228 = MEMORY[0x1E69E6158];
  v229 = v440;
  *(v227 + 72) = MEMORY[0x1E69E6158];
  *(v227 + 80) = v229;
  *(v227 + 88) = v438;
  *(v227 + 96) = 0;
  *(v227 + 120) = MEMORY[0x1E69E6370];
  *(v227 + 128) = 0x72756F7365524657;
  *(v227 + 168) = v228;
  *(v227 + 136) = 0xEF7373616C436563;
  *(v227 + 144) = 0xD00000000000001BLL;
  *(v227 + 152) = v443;
  v421 = v225;
  *(v226 + 32) = sub_1CA94C1E8();
  *(v176 + 264) = v444;
  *(v176 + 240) = v226;
  v230 = sub_1CA94C1E8();
  v231 = sub_1CA2F864C(v230);
  v453[8] = v231;
  v232 = swift_allocObject();
  *(v232 + 16) = v432;
  v234 = v429;
  v233 = v430;
  *(v232 + 32) = v430;
  *(v232 + 40) = 0xD000000000000014;
  v435 = 0x80000001CA99B500;
  v436 = 0xD000000000000014;
  *(v232 + 48) = 0x80000001CA99B500;
  *(v232 + 64) = v228;
  *(v232 + 72) = v234;
  *(v232 + 80) = 0x695474736F504657;
  *(v232 + 88) = 0xEB00000000656C74;
  v235 = v437;
  *(v232 + 104) = v228;
  *(v232 + 112) = v235;
  v428 = v233;
  v427 = v234;
  v429 = v235;
  v430 = sub_1CA94C438("Title (WFPostTitle)", 19);
  v420 = v236;
  v237 = sub_1CA94C438("Title", 5);
  v419 = v238;
  v437 = v415;
  MEMORY[0x1EEE9AC00](v237);
  v239 = v459;
  sub_1CA948D98();
  v240 = [v455 bundleURL];
  v418 = v415;
  MEMORY[0x1EEE9AC00](v240);
  v241 = v456;
  sub_1CA948B68();

  v242 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v232 + 120) = sub_1CA2F9F14(v430, v420, v237, v419, 0, 0, v415 - v239, v415 - v241);
  v243 = v454;
  v244 = v431;
  *(v232 + 144) = v454;
  *(v232 + 152) = v244;
  v430 = v244;
  v431 = sub_1CA94C438("optional (WFPostTitle)", 22);
  v420 = v245;
  v246 = sub_1CA94C438("optional", 8);
  v419 = v247;
  v437 = v415;
  MEMORY[0x1EEE9AC00](v246);
  v248 = v415 - v239;
  sub_1CA948D98();
  v249 = v455;
  v250 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v250);
  sub_1CA948B68();

  v251 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v232 + 160) = sub_1CA2F9F14(v431, v420, v246, v419, 0, 0, v248, v415 - v241);
  v252 = v421;
  *(v232 + 184) = v243;
  *(v232 + 192) = v252;
  v253 = swift_allocObject();
  *(v253 + 16) = v445;
  v254 = swift_allocObject();
  *(v254 + 16) = v451;
  strcpy((v254 + 32), "WFParameterKey");
  *(v254 + 47) = -18;
  *(v254 + 48) = 0x795474736F504657;
  *(v254 + 56) = 0xEA00000000006570;
  v431 = 0x80000001CA9A2F30;
  v437 = 0xD000000000000011;
  v255 = MEMORY[0x1E69E6158];
  *(v254 + 72) = MEMORY[0x1E69E6158];
  *(v254 + 80) = 0xD000000000000011;
  *(v254 + 88) = 0x80000001CA9A2F30;
  *(v254 + 96) = &unk_1F49F7860;
  *(v254 + 120) = v441;
  *(v254 + 128) = 0x72756F7365524657;
  *(v254 + 168) = v255;
  *(v254 + 136) = 0xEF7373616C436563;
  *(v254 + 144) = 0xD00000000000001BLL;
  *(v254 + 152) = v443;
  v420 = v252;
  *(v253 + 32) = sub_1CA94C1E8();
  *(v232 + 224) = v444;
  *(v232 + 200) = v253;
  v256 = sub_1CA94C1E8();
  v257 = sub_1CA2F864C(v256);
  v453[9] = v257;
  v258 = swift_allocObject();
  *(v258 + 16) = v432;
  v260 = v427;
  v259 = v428;
  v261 = v435;
  v262 = v436;
  *(v258 + 32) = v428;
  *(v258 + 40) = v262;
  *(v258 + 48) = v261;
  *(v258 + 64) = v255;
  *(v258 + 72) = v260;
  strcpy((v258 + 80), "WFPostSource");
  *(v258 + 93) = 0;
  *(v258 + 94) = -5120;
  v263 = v429;
  *(v258 + 104) = v255;
  *(v258 + 112) = v263;
  v428 = v259;
  v427 = v260;
  v429 = v263;
  v264 = sub_1CA94C438("Source (WFPostSource)", 21);
  v418 = v265;
  v419 = v264;
  v266 = sub_1CA94C438("Source", 6);
  v417 = v267;
  v421 = v415;
  MEMORY[0x1EEE9AC00](v266);
  v268 = v415 - v459;
  sub_1CA948D98();
  v269 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v269);
  v270 = v456;
  sub_1CA948B68();

  v271 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v258 + 120) = sub_1CA2F9F14(v419, v418, v266, v417, 0, 0, v268, v415 - v270);
  v272 = v454;
  v273 = v430;
  *(v258 + 144) = v454;
  *(v258 + 152) = v273;
  v419 = v273;
  v421 = sub_1CA94C438("optional (WFPostSource)", 23);
  v418 = v274;
  v275 = sub_1CA94C438("optional", 8);
  v417 = v276;
  v430 = v415;
  MEMORY[0x1EEE9AC00](v275);
  v277 = v415 - v459;
  sub_1CA948D98();
  v278 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v278);
  sub_1CA948B68();

  v279 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v258 + 160) = sub_1CA2F9F14(v421, v418, v275, v417, 0, 0, v277, v415 - v270);
  *(v258 + 184) = v272;
  v280 = v420;
  *(v258 + 192) = v420;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v281 = swift_allocObject();
  *(v281 + 16) = v445;
  v430 = v280;
  v282 = MEMORY[0x1E69E6158];
  *(v281 + 32) = sub_1CA94C1E8();
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v258 + 224) = v420;
  *(v258 + 200) = v281;
  v283 = sub_1CA94C1E8();
  v284 = sub_1CA2F864C(v283);
  v453[10] = v284;
  v285 = swift_allocObject();
  *(v285 + 16) = v432;
  v287 = v427;
  v286 = v428;
  v288 = v435;
  v289 = v436;
  *(v285 + 32) = v428;
  *(v285 + 40) = v289;
  *(v285 + 48) = v288;
  *(v285 + 64) = v282;
  *(v285 + 72) = v287;
  strcpy((v285 + 80), "WFPostCaption");
  *(v285 + 94) = -4864;
  *(v285 + 104) = v282;
  v290 = v429;
  *(v285 + 112) = v429;
  v428 = v286;
  v427 = v287;
  v429 = v290;
  v291 = sub_1CA94C438("Caption (WFPostCaption)", 23);
  v417 = v292;
  v418 = v291;
  v293 = sub_1CA94C438("Caption", 7);
  v416 = v294;
  *&v432 = v415;
  MEMORY[0x1EEE9AC00](v293);
  v295 = v459;
  sub_1CA948D98();
  v296 = v455;
  v297 = [v455 bundleURL];
  v415[1] = v415;
  MEMORY[0x1EEE9AC00](v297);
  sub_1CA948B68();

  v298 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v285 + 120) = sub_1CA2F9F14(v418, v417, v293, v416, 0, 0, v415 - v295, v415 - v270);
  v299 = v419;
  *(v285 + 144) = v454;
  *(v285 + 152) = v299;
  *&v432 = v299;
  v300 = sub_1CA94C438("optional (WFPostCaption)", 24);
  v417 = v301;
  v418 = v300;
  v302 = sub_1CA94C438("optional", 8);
  v416 = v303;
  v419 = v415;
  MEMORY[0x1EEE9AC00](v302);
  sub_1CA948D98();
  v304 = [v296 bundleURL];
  MEMORY[0x1EEE9AC00](v304);
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v285 + 160) = sub_1CA2F9F14(v418, v417, v302, v416, 0, 0, v415 - v295, v415 - v270);
  v306 = v430;
  *(v285 + 184) = v454;
  *(v285 + 192) = v306;
  v307 = swift_allocObject();
  *(v307 + 16) = v442;
  v308 = swift_allocObject();
  *(v308 + 16) = v451;
  strcpy((v308 + 32), "WFParameterKey");
  *(v308 + 47) = -18;
  *(v308 + 48) = 0x795474736F504657;
  *(v308 + 56) = 0xEA00000000006570;
  v309 = MEMORY[0x1E69E6158];
  v310 = v437;
  *(v308 + 72) = MEMORY[0x1E69E6158];
  *(v308 + 80) = v310;
  *(v308 + 88) = v431;
  *(v308 + 96) = &unk_1F49F7930;
  *(v308 + 120) = v441;
  *(v308 + 128) = 0x72756F7365524657;
  *(v308 + 168) = v309;
  *(v308 + 136) = 0xEF7373616C436563;
  *(v308 + 144) = 0xD00000000000001BLL;
  v311 = v443;
  *(v308 + 152) = v443;
  *(v307 + 32) = sub_1CA94C1E8();
  v312 = swift_allocObject();
  *(v312 + 16) = v451;
  strcpy((v312 + 32), "WFParameterKey");
  *(v312 + 47) = -18;
  strcpy((v312 + 48), "WFComposeInApp");
  *(v312 + 63) = -18;
  v313 = MEMORY[0x1E69E6158];
  v314 = v440;
  *(v312 + 72) = MEMORY[0x1E69E6158];
  *(v312 + 80) = v314;
  *(v312 + 88) = v438;
  *(v312 + 96) = 0;
  *(v312 + 120) = MEMORY[0x1E69E6370];
  *(v312 + 128) = 0x72756F7365524657;
  *(v312 + 168) = v313;
  *(v312 + 136) = 0xEF7373616C436563;
  *(v312 + 144) = 0xD00000000000001BLL;
  *(v312 + 152) = v311;
  v315 = v313;
  *(v307 + 40) = sub_1CA94C1E8();
  *(v285 + 224) = v444;
  *(v285 + 200) = v307;
  v316 = sub_1CA94C1E8();
  v317 = sub_1CA2F864C(v316);
  v453[11] = v317;
  v318 = swift_allocObject();
  *(v318 + 16) = v433;
  v319 = v435;
  v320 = v436;
  *(v318 + 32) = v428;
  *(v318 + 40) = v320;
  *(v318 + 48) = v319;
  v321 = v427;
  *(v318 + 64) = v315;
  *(v318 + 72) = v321;
  *(v318 + 80) = 0x615474736F504657;
  *(v318 + 88) = 0xEA00000000007367;
  v322 = v429;
  *(v318 + 104) = v315;
  *(v318 + 112) = v322;
  v323 = sub_1CA94C438("Tags (WFPostTags)", 17);
  v418 = v324;
  v419 = v323;
  v325 = sub_1CA94C438("Tags", 4);
  v417 = v326;
  *&v433 = v415;
  MEMORY[0x1EEE9AC00](v325);
  v327 = v459;
  sub_1CA948D98();
  v328 = v455;
  v329 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v329);
  v330 = v415 - v456;
  sub_1CA948B68();

  v331 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v318 + 120) = sub_1CA2F9F14(v419, v418, v325, v417, 0, 0, v415 - v327, v330);
  v332 = v454;
  v333 = v432;
  *(v318 + 144) = v454;
  *(v318 + 152) = v333;
  v334 = sub_1CA94C438("shortcuts, apple (WFPostTags)", 29);
  v418 = v335;
  v419 = v334;
  v336 = sub_1CA94C438("shortcuts, apple", 16);
  v417 = v337;
  *&v433 = v415;
  MEMORY[0x1EEE9AC00](v336);
  sub_1CA948D98();
  v338 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v338);
  v339 = v415 - v456;
  sub_1CA948B68();

  v340 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v341 = sub_1CA2F9F14(v419, v418, v336, v417, 0, 0, v415 - v327, v339);
  *(v318 + 184) = v332;
  *(v318 + 160) = v341;
  v342 = sub_1CA94C1E8();
  v343 = sub_1CA2F864C(v342);
  v453[12] = v343;
  v344 = swift_allocObject();
  *(v344 + 16) = v422;
  v345 = v435;
  v346 = v436;
  *(v344 + 32) = v428;
  *(v344 + 40) = v346;
  *(v344 + 48) = v345;
  v347 = MEMORY[0x1E69E6158];
  v348 = v427;
  *(v344 + 64) = MEMORY[0x1E69E6158];
  *(v344 + 72) = v348;
  *(v344 + 80) = v437;
  *(v344 + 88) = 0x80000001CA9AD9D0;
  v349 = v429;
  *(v344 + 104) = v347;
  *(v344 + 112) = v349;
  v350 = sub_1CA94C438("Description (WFPostDescription)", 31);
  v435 = v351;
  v436 = v350;
  v352 = sub_1CA94C438("Description", 11);
  *&v433 = v353;
  v450 = v415;
  MEMORY[0x1EEE9AC00](v352);
  v354 = v459;
  sub_1CA948D98();
  v355 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v355);
  v356 = v456;
  sub_1CA948B68();

  v357 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v344 + 120) = sub_1CA2F9F14(v436, v435, v352, v433, 0, 0, v415 - v354, v415 - v356);
  v358 = v454;
  *(v344 + 144) = v454;
  *(v344 + 152) = @"Multiline";
  *(v344 + 160) = 1;
  v359 = v432;
  *(v344 + 184) = MEMORY[0x1E69E6370];
  *(v344 + 192) = v359;
  v360 = @"Multiline";
  v361 = sub_1CA94C438("Description (WFPostDescription)", 31);
  v435 = v362;
  v436 = v361;
  v363 = sub_1CA94C438("Description", 11);
  v365 = v364;
  v450 = v415;
  MEMORY[0x1EEE9AC00](v363);
  v366 = v415 - v354;
  sub_1CA948D98();
  v367 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v367);
  sub_1CA948B68();

  v368 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v344 + 200) = sub_1CA2F9F14(v436, v435, v363, v365, 0, 0, v366, v415 - v356);
  v369 = v430;
  *(v344 + 224) = v358;
  *(v344 + 232) = v369;
  v370 = swift_allocObject();
  *(v370 + 16) = v445;
  *(v370 + 32) = sub_1CA94C1E8();
  *(v344 + 264) = v420;
  *(v344 + 240) = v370;
  v371 = sub_1CA94C1E8();
  v372 = sub_1CA2F864C(v371);
  v373 = v453;
  v453[13] = v372;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v375 = v446;
  v446[40] = v373;
  v375[43] = v374;
  v375[44] = @"ParameterSummary";
  v376 = @"ParameterSummary";
  v377 = sub_1CA94C438("Post ${WFInput} (Parameter Summary)", 35);
  v379 = v378;
  v380 = sub_1CA94C438("Post ${WFInput}", 15);
  v382 = v381;
  MEMORY[0x1EEE9AC00](v380);
  v383 = v415 - v459;
  sub_1CA948D98();
  v384 = [v455 bundleURL];
  MEMORY[0x1EEE9AC00](v384);
  v385 = v415 - v456;
  sub_1CA948B68();

  v386 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v387 = sub_1CA2F9F14(v377, v379, v380, v382, 0, 0, v383, v385);
  v388 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v389 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v390 = v446;
  v446[45] = v388;
  v390[48] = v389;
  v390[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v391 = swift_allocObject();
  *(v391 + 16) = v451;
  v392 = swift_allocObject();
  *(v392 + 16) = v442;
  v459 = 0x80000001CA99B240;
  *(v392 + 32) = v437;
  *(v392 + 40) = 0x80000001CA99B240;
  v393 = swift_allocObject();
  *(v393 + 16) = v445;
  v394 = swift_allocObject();
  *(v394 + 16) = v451;
  strcpy((v394 + 32), "WFParameterKey");
  *(v394 + 47) = -18;
  strcpy((v394 + 48), "WFComposeInApp");
  *(v394 + 63) = -18;
  v395 = MEMORY[0x1E69E6158];
  v396 = v440;
  *(v394 + 72) = MEMORY[0x1E69E6158];
  *(v394 + 80) = v396;
  *(v394 + 88) = v438;
  *(v394 + 96) = 0;
  *(v394 + 120) = MEMORY[0x1E69E6370];
  *(v394 + 128) = 0x72756F7365524657;
  *(v394 + 168) = v395;
  *(v394 + 136) = 0xEF7373616C436563;
  *(v394 + 144) = 0xD00000000000001BLL;
  *(v394 + 152) = v443;
  v397 = @"RequiredResources";
  *(v393 + 32) = sub_1CA94C1E8();
  *(v392 + 48) = v393;
  *(v392 + 72) = v444;
  *(v392 + 80) = 0x72756F7365524657;
  *(v392 + 120) = v395;
  v398 = v423;
  *(v392 + 88) = 0xEF7373616C436563;
  *(v392 + 96) = v398;
  *(v392 + 104) = 0x80000001CA9ADA60;
  v399 = sub_1CA94C1E8();
  *(v391 + 56) = v434;
  *(v391 + 32) = v399;
  v400 = swift_allocObject();
  *(v400 + 16) = v442;
  v401 = v437;
  v402 = v459;
  *(v400 + 32) = v437;
  *(v400 + 40) = v402;
  v403 = swift_allocObject();
  *(v403 + 16) = v442;
  v404 = swift_allocObject();
  *(v404 + 16) = v451;
  strcpy((v404 + 32), "WFParameterKey");
  *(v404 + 47) = -18;
  *(v404 + 48) = 0x795474736F504657;
  *(v404 + 56) = 0xEA00000000006570;
  *(v404 + 72) = v395;
  *(v404 + 80) = v401;
  *(v404 + 88) = v431;
  *(v404 + 96) = &unk_1F49F7A00;
  *(v404 + 120) = v441;
  *(v404 + 128) = 0x72756F7365524657;
  *(v404 + 168) = v395;
  *(v404 + 136) = 0xEF7373616C436563;
  *(v404 + 144) = 0xD00000000000001BLL;
  v405 = v443;
  *(v404 + 152) = v443;
  *(v403 + 32) = sub_1CA94C1E8();
  v406 = swift_allocObject();
  *(v406 + 16) = v451;
  strcpy((v406 + 32), "WFParameterKey");
  *(v406 + 47) = -18;
  strcpy((v406 + 48), "WFComposeInApp");
  *(v406 + 63) = -18;
  v407 = v440;
  *(v406 + 72) = v395;
  *(v406 + 80) = v407;
  *(v406 + 88) = v438;
  *(v406 + 96) = 1;
  *(v406 + 120) = MEMORY[0x1E69E6370];
  *(v406 + 128) = 0x72756F7365524657;
  *(v406 + 168) = v395;
  *(v406 + 136) = 0xEF7373616C436563;
  *(v406 + 144) = 0xD00000000000001BLL;
  *(v406 + 152) = v405;
  *(v403 + 40) = sub_1CA94C1E8();
  *(v400 + 48) = v403;
  *(v400 + 72) = v444;
  *(v400 + 80) = 0x72756F7365524657;
  *(v400 + 120) = v395;
  v408 = v424;
  *(v400 + 88) = 0xEF7373616C436563;
  *(v400 + 96) = v408;
  *(v400 + 104) = 0x80000001CA9932D0;
  *(v391 + 64) = sub_1CA94C1E8();
  *(v391 + 120) = v395;
  *(v391 + 88) = v434;
  *(v391 + 96) = 0xD00000000000001CLL;
  *(v391 + 104) = 0x80000001CA993620;
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v410 = v446;
  v446[53] = v409;
  v410[50] = v391;
  v410[54] = sub_1CA94C368();
  v410[55] = sub_1CA94C1E8();
  v411 = v425;
  v410[58] = v425;
  v410[59] = @"UserInterfaceClasses";
  v412 = @"UserInterfaceClasses";
  v413 = sub_1CA94C1E8();
  v410[63] = v411;
  v410[60] = v413;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3975F4()
{
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  strcpy((inited + 32), "DocumentTypes");
  *(inited + 46) = -4864;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 48) = &unk_1F49F7AF0;
  *(inited + 72) = v1;
  strcpy((inited + 80), "ExportedTypes");
  *(inited + 94) = -4864;
  *(inited + 96) = &unk_1F49F7B20;
  *(inited + 120) = v1;
  *(inited + 128) = 0xD000000000000010;
  v296 = 0xD000000000000010;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 136) = 0x80000001CA9A8AF0;
  *(inited + 144) = 0x3531363331333934;
  *(inited + 152) = 0xE900000000000034;
  *(inited + 168) = v2;
  *(inited + 176) = 1701667150;
  *(inited + 184) = 0xE400000000000000;
  v3 = sub_1CA94C438("Clear (App Name)", 16);
  v5 = v4;
  v6 = sub_1CA94C438("Clear", 5);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v303 = v10;
  v305 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v253 - v305;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v301 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v302 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v304 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v253 - v304;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v300 = v18;
  *(inited + 192) = v17;
  *(inited + 216) = v18;
  *(inited + 224) = 0x6D656863534C5255;
  *(inited + 232) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v276 = swift_allocObject();
  v289 = xmmword_1CA97EDF0;
  *(v276 + 16) = xmmword_1CA97EDF0;
  v19 = swift_initStackObject();
  v275 = v19;
  *(v19 + 16) = v289;
  *(v19 + 32) = 0x736E6F69746341;
  *(v19 + 40) = 0xE700000000000000;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v286 = swift_allocObject();
  *(v286 + 16) = v289;
  v20 = swift_initStackObject();
  v269 = xmmword_1CA9813E0;
  *(v20 + 16) = xmmword_1CA9813E0;
  strcpy((v20 + 32), "ActionKeywords");
  *(v20 + 47) = -18;
  v21 = sub_1CA94C438("task|create|todo|to-do|clear", 28);
  v23 = v22;
  v24 = sub_1CA94C438("task|create|todo|to-do|clear", 28);
  v26 = v25;
  *&v298 = &v253;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v253 - v305;
  sub_1CA948D98();
  v28 = [v301 bundleURL];
  v274 = inited;
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v253 - v304;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 48) = sub_1CA2F9F14(v21, v23, v24, v26, 0, 0, v27, v29);
  *(v20 + 72) = v300;
  strcpy((v20 + 80), "CreationDate");
  *(v20 + 93) = 0;
  *(v20 + 94) = -5120;
  v268 = sub_1CA948CB8();
  *(v20 + 120) = v268;
  __swift_allocate_boxed_opaque_existential_1((v20 + 96));
  sub_1CA948C28();
  *(v20 + 128) = 0x7470697263736544;
  *(v20 + 136) = 0xEB000000006E6F69;
  v281 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1CA981310;
  *(v31 + 32) = @"DescriptionSummary";
  v273 = @"DescriptionSummary";
  v32 = sub_1CA94C438("Adds a new task to a given list in Clear.", 41);
  v297 = v33;
  v34 = sub_1CA94C438("Adds a new task to a given list in Clear.", 41);
  v36 = v35;
  *&v298 = &v253;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v253 - v305;
  sub_1CA948D98();
  v38 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v253 - v304;
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v32, v297, v34, v36, 0, 0, v37, v39);
  *(v31 + 64) = v300;
  *(v31 + 40) = v41;
  type metadata accessor for DescriptionKey(0);
  v272 = v42;
  v271 = sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v281;
  v45 = sub_1CA6B3784(v43);
  v254 = v20;
  *(v20 + 144) = v45;
  *(v20 + 168) = v44;
  *(v20 + 176) = 0x74616D726F46;
  *(v20 + 184) = 0xE600000000000000;
  *(v20 + 192) = 0xD000000000000016;
  *(v20 + 200) = 0x80000001CA9ADB10;
  v46 = MEMORY[0x1E69E6158];
  *(v20 + 216) = MEMORY[0x1E69E6158];
  *(v20 + 224) = 0x696669746E656449;
  v47 = v46;
  v270 = 0xEA00000000007265;
  *(v20 + 232) = 0xEA00000000007265;
  *(v20 + 240) = 0x6174657461657263;
  *(v20 + 248) = 0xEA00000000006B73;
  *(v20 + 264) = v46;
  strcpy((v20 + 272), "InputMapping");
  *(v20 + 285) = 0;
  *(v20 + 286) = -5120;
  v287 = swift_allocObject();
  v298 = xmmword_1CA9813C0;
  *(v287 + 1) = xmmword_1CA9813C0;
  v48 = swift_allocObject();
  v288 = xmmword_1CA981380;
  *(v48 + 16) = xmmword_1CA981380;
  strcpy((v48 + 32), "DestinationKey");
  *(v48 + 47) = -18;
  *(v48 + 48) = 0x656D614E6B736174;
  *(v48 + 56) = 0xE800000000000000;
  v49 = v47;
  *(v48 + 72) = v47;
  *(v48 + 80) = 0x74616E6974736544;
  *(v48 + 88) = 0xEF657079546E6F69;
  strcpy((v48 + 96), "URLQueryValue");
  *(v48 + 110) = -4864;
  *(v48 + 120) = v47;
  *(v48 + 128) = 0x73616C436D657449;
  v292 = 0xE900000000000073;
  v284 = 0x80000001CA993390;
  *(v48 + 136) = 0xE900000000000073;
  *(v48 + 144) = 0xD000000000000013;
  *(v48 + 152) = 0x80000001CA993390;
  *(v48 + 168) = v47;
  *(v48 + 176) = 0x6574656D61726150;
  *(v48 + 184) = 0xEB00000000495572;
  v297 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v50 = swift_allocObject();
  *(v50 + 16) = v298;
  v282 = 0xD000000000000014;
  v283 = 0x80000001CA99B500;
  *(v50 + 32) = @"Class";
  *(v50 + 40) = 0xD000000000000014;
  *(v50 + 48) = 0x80000001CA99B500;
  *(v50 + 64) = v47;
  *(v50 + 72) = @"Label";
  v51 = @"Class";
  v52 = @"Label";
  v53 = v51;
  v54 = v52;
  v291 = v53;
  v279 = v54;
  v55 = sub_1CA94C438("Task Name (Parameter Label)", 27);
  v293 = v56;
  v294 = v55;
  v57 = sub_1CA94C438("Task Name", 9);
  v59 = v58;
  v295 = &v253;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v253 - v305;
  sub_1CA948D98();
  v61 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v253 - v304;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v50 + 80) = sub_1CA2F9F14(v294, v293, v57, v59, 0, 0, v60, v62);
  *(v50 + 104) = v300;
  *(v50 + 112) = @"TextAlignment";
  *(v50 + 144) = v49;
  *(v50 + 120) = 0x7468676952;
  *(v50 + 128) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v295 = v64;
  v294 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v280 = @"TextAlignment";
  v65 = sub_1CA94C1E8();
  v66 = v297;
  *(v48 + 192) = sub_1CA2F864C(v65);
  *(v48 + 216) = v66;
  *(v48 + 224) = 0x654B656372756F53;
  v293 = 0xE900000000000079;
  *(v48 + 232) = 0xE900000000000079;
  strcpy((v48 + 240), "ClearTaskName");
  *(v48 + 254) = -4864;
  *(v48 + 264) = v49;
  *(v48 + 272) = 0x7954656372756F53;
  *(v48 + 312) = v49;
  *(v48 + 280) = 0xEA00000000006570;
  *(v48 + 288) = 0x6574656D61726150;
  *(v48 + 296) = 0xE900000000000072;
  v287[4] = sub_1CA94C1E8();
  v67 = swift_allocObject();
  *(v67 + 16) = v288;
  strcpy((v67 + 32), "DestinationKey");
  *(v67 + 47) = -18;
  *(v67 + 48) = 0x656D614E7473696CLL;
  *(v67 + 56) = 0xE800000000000000;
  *(v67 + 72) = v49;
  *(v67 + 80) = 0x74616E6974736544;
  *(v67 + 88) = 0xEF657079546E6F69;
  strcpy((v67 + 96), "URLQueryValue");
  *(v67 + 110) = -4864;
  *(v67 + 120) = v49;
  *(v67 + 128) = 0x73616C436D657449;
  *(v67 + 136) = v292;
  *(v67 + 144) = 0xD000000000000013;
  *(v67 + 152) = v284;
  *(v67 + 168) = v49;
  *(v67 + 176) = 0x6574656D61726150;
  *(v67 + 184) = 0xEB00000000495572;
  v68 = swift_allocObject();
  *(v68 + 16) = v298;
  v69 = v291;
  v71 = v282;
  v70 = v283;
  *(v68 + 32) = v291;
  *(v68 + 40) = v71;
  *(v68 + 48) = v70;
  v72 = v279;
  *(v68 + 64) = v49;
  *(v68 + 72) = v72;
  v291 = v69;
  v279 = v72;
  v277 = sub_1CA94C438("List (Parameter Label)", 22);
  *&v266 = v73;
  v74 = sub_1CA94C438("List", 4);
  v76 = v75;
  v278 = &v253;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v253 - v305;
  sub_1CA948D98();
  v78 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v253 - v304;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 80) = sub_1CA2F9F14(v277, v266, v74, v76, 0, 0, v77, v79);
  v81 = v280;
  *(v68 + 104) = v300;
  *(v68 + 112) = v81;
  *(v68 + 144) = v49;
  *(v68 + 120) = 0x7468676952;
  *(v68 + 128) = 0xE500000000000000;
  v82 = sub_1CA94C1E8();
  v83 = v297;
  *(v67 + 192) = sub_1CA2F864C(v82);
  *(v67 + 216) = v83;
  *(v67 + 224) = 0x654B656372756F53;
  *(v67 + 232) = v293;
  strcpy((v67 + 240), "ClearListName");
  *(v67 + 254) = -4864;
  *(v67 + 264) = v49;
  *(v67 + 272) = 0x7954656372756F53;
  *(v67 + 312) = v49;
  *(v67 + 280) = 0xEA00000000006570;
  *(v67 + 288) = 0x6574656D61726150;
  *(v67 + 296) = 0xE900000000000072;
  v287[5] = sub_1CA94C1E8();
  v84 = swift_allocObject();
  v266 = xmmword_1CA981400;
  *(v84 + 16) = xmmword_1CA981400;
  strcpy((v84 + 32), "DestinationKey");
  *(v84 + 47) = -18;
  strcpy((v84 + 48), "taskPosition");
  *(v84 + 61) = 0;
  *(v84 + 62) = -5120;
  *(v84 + 72) = v49;
  *(v84 + 80) = 0x74616E6974736544;
  *(v84 + 88) = 0xEF657079546E6F69;
  strcpy((v84 + 96), "URLQueryValue");
  *(v84 + 110) = -4864;
  *(v84 + 120) = v49;
  *(v84 + 128) = 0x73616C436D657449;
  v265 = 0x80000001CA993A80;
  *(v84 + 136) = v292;
  *(v84 + 144) = 0xD000000000000013;
  *(v84 + 152) = 0x80000001CA993A80;
  v264 = 0x80000001CA9A8C50;
  v85 = v296;
  *(v84 + 168) = v49;
  *(v84 + 176) = v85;
  v86 = MEMORY[0x1E69E6530];
  *(v84 + 184) = 0x80000001CA9A8C50;
  *(v84 + 192) = 1;
  *(v84 + 216) = v86;
  *(v84 + 224) = 0x6574656D61726150;
  *(v84 + 232) = 0xEB00000000495572;
  v87 = swift_allocObject();
  *(v87 + 16) = v298;
  v88 = v291;
  *(v87 + 32) = v291;
  *(v87 + 40) = 0xD000000000000012;
  v262 = 0x80000001CA99B980;
  v263 = 0xD000000000000012;
  *(v87 + 48) = 0x80000001CA99B980;
  v89 = v279;
  *(v87 + 64) = v49;
  *(v87 + 72) = v89;
  v278 = v88;
  v277 = v89;
  v291 = sub_1CA94C438("Position (Position)", 19);
  v279 = v90;
  v91 = sub_1CA94C438("Position", 8);
  v260 = v92;
  v261 = v91;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v253 - v305;
  sub_1CA948D98();
  v94 = v301;
  v95 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = v304;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 80) = sub_1CA2F9F14(v291, v279, v261, v260, 0, 0, v93, &v253 - v96);
  v98 = v300;
  *(v87 + 104) = v300;
  *(v87 + 112) = @"StepperPrefix";
  v261 = @"StepperPrefix";
  v279 = sub_1CA94C438("Position (Position-Prefix)", 26);
  v260 = v99;
  v100 = sub_1CA94C438("Position", 8);
  v258 = v101;
  v259 = v100;
  v291 = &v253;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v253 - v305;
  sub_1CA948D98();
  v103 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v279, v260, v259, v258, 0, 0, v102, &v253 - v96);
  *(v87 + 144) = v98;
  *(v87 + 120) = v105;
  v106 = sub_1CA94C1E8();
  v107 = v297;
  *(v84 + 240) = sub_1CA2F864C(v106);
  *(v84 + 264) = v107;
  *(v84 + 272) = 0x654B656372756F53;
  v291 = 0xD000000000000011;
  *(v84 + 280) = v293;
  *(v84 + 288) = 0xD000000000000011;
  *(v84 + 296) = 0x80000001CA9ADBA0;
  v108 = MEMORY[0x1E69E6158];
  *(v84 + 312) = MEMORY[0x1E69E6158];
  *(v84 + 320) = 0x7954656372756F53;
  *(v84 + 360) = v108;
  *(v84 + 328) = 0xEA00000000006570;
  *(v84 + 336) = 0x6574656D61726150;
  *(v84 + 344) = 0xE900000000000072;
  v109 = sub_1CA94C1E8();
  v110 = v287;
  v287[6] = v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v279 = v111;
  v112 = v254;
  v254[36] = v110;
  v112[39] = v111;
  v112[40] = 1701667150;
  v112[41] = 0xE400000000000000;
  v113 = sub_1CA94C438("Add Clear Task (Action Name)", 28);
  v259 = v114;
  v260 = v113;
  v115 = sub_1CA94C438("Add Clear Task", 14);
  v258 = v116;
  v287 = &v253;
  MEMORY[0x1EEE9AC00](v115);
  v117 = v305;
  sub_1CA948D98();
  v118 = [v301 bundleURL];
  *&v257 = &v253;
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v253 - v304;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112[42] = sub_1CA2F9F14(v260, v259, v115, v258, 0, 0, &v253 - v117, v119);
  v287 = 0x80000001CA9A8F60;
  v121 = v296;
  v112[45] = v300;
  v112[46] = v121;
  v112[47] = 0x80000001CA9A8F60;
  v122 = sub_1CA94C438("Add ${ClearTaskName} to ${ClearListName} (Parameter Summary)", 60);
  v258 = v123;
  v259 = v122;
  v124 = sub_1CA94C438("Add ${ClearTaskName} to ${ClearListName}", 40);
  *&v257 = v125;
  v260 = &v253;
  MEMORY[0x1EEE9AC00](v124);
  sub_1CA948D98();
  v126 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v253 - v304;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v259, v258, v124, v257, 0, 0, &v253 - v117, v127);
  v130 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v131 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v112[48] = v130;
  v259 = 0x80000001CA99B240;
  v260 = v131;
  v132 = v291;
  v112[51] = v131;
  v112[52] = v132;
  v112[53] = 0x80000001CA99B240;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v133 = swift_allocObject();
  v257 = xmmword_1CA9813B0;
  *(v133 + 16) = xmmword_1CA9813B0;
  v306 = 2;
  v307 = 1;
  v256 = type metadata accessor for WFDeviceIdiomResource();
  v134 = objc_allocWithZone(v256);
  WFDeviceIdiomResource.init(requirement:)(&v306);
  *(v133 + 32) = v135;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v112[57] = v255;
  v112[54] = v133;
  *(v286 + 32) = sub_1CA94C1E8();
  v136 = swift_allocObject();
  *(v136 + 16) = v269;
  strcpy((v136 + 32), "ActionKeywords");
  *(v136 + 47) = -18;
  v254 = sub_1CA94C438("task|create|todo|to-do|clear", 28);
  v138 = v137;
  v139 = sub_1CA94C438("task|create|todo|to-do|clear", 28);
  v141 = v140;
  *&v269 = &v253;
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v253 - v305;
  sub_1CA948D98();
  v143 = v301;
  v144 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v253 - v304;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v136 + 48) = sub_1CA2F9F14(v254, v138, v139, v141, 0, 0, v142, v145);
  *(v136 + 72) = v300;
  strcpy((v136 + 80), "CreationDate");
  *(v136 + 93) = 0;
  *(v136 + 94) = -5120;
  *(v136 + 120) = v268;
  __swift_allocate_boxed_opaque_existential_1((v136 + 96));
  sub_1CA948C28();
  *(v136 + 128) = 0x7470697263736544;
  *(v136 + 136) = 0xEB000000006E6F69;
  v147 = swift_allocObject();
  *(v147 + 16) = v289;
  *(v147 + 32) = @"DescriptionInput";
  v148 = @"DescriptionInput";
  v149 = sub_1CA94C438("Tasks to include in the new list", 32);
  v268 = v150;
  *&v269 = v149;
  v151 = sub_1CA94C438("Tasks to include in the new list", 32);
  v267 = v152;
  *&v289 = &v253;
  MEMORY[0x1EEE9AC00](v151);
  v153 = &v253 - v305;
  sub_1CA948D98();
  v154 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v253 - v304;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v147 + 40) = sub_1CA2F9F14(v269, v268, v151, v267, 0, 0, v153, v155);
  v157 = v300;
  v158 = v273;
  *(v147 + 64) = v300;
  *(v147 + 72) = v158;
  v273 = sub_1CA94C438("Adds a new list to Clear.", 25);
  *&v269 = v159;
  v160 = sub_1CA94C438("Adds a new list to Clear.", 25);
  v162 = v161;
  *&v289 = &v253;
  MEMORY[0x1EEE9AC00](v160);
  v163 = &v253 - v305;
  sub_1CA948D98();
  v164 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v253 - v304;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v273, v269, v160, v162, 0, 0, v163, v165);
  *(v147 + 104) = v157;
  *(v147 + 80) = v167;
  v168 = sub_1CA94C1E8();
  v169 = v281;
  *(v136 + 144) = sub_1CA6B3784(v168);
  *(v136 + 168) = v169;
  *(v136 + 176) = 0x74616D726F46;
  *(v136 + 184) = 0xE600000000000000;
  *(v136 + 192) = 0xD000000000000026;
  *(v136 + 200) = 0x80000001CA9ADCB0;
  v170 = MEMORY[0x1E69E6158];
  *(v136 + 216) = MEMORY[0x1E69E6158];
  *(v136 + 224) = 0x696669746E656449;
  *(v136 + 232) = v270;
  *(v136 + 240) = 0x696C657461657263;
  *(v136 + 248) = 0xEA00000000007473;
  *(v136 + 264) = v170;
  strcpy((v136 + 272), "InputMapping");
  *(v136 + 285) = 0;
  *(v136 + 286) = -5120;
  v171 = swift_allocObject();
  *(v171 + 16) = v298;
  v172 = v171;
  *&v289 = v171;
  v173 = swift_allocObject();
  *(v173 + 16) = v288;
  *(v173 + 32) = 0xD000000000000013;
  *(v173 + 40) = 0x80000001CA9ACAF0;
  *(v173 + 48) = 0xD000000000000025;
  *(v173 + 56) = 0x80000001CA9ADCE0;
  *(v173 + 72) = v170;
  strcpy((v173 + 80), "DestinationKey");
  *(v173 + 95) = -18;
  *(v173 + 96) = 0x736B736174;
  *(v173 + 104) = 0xE500000000000000;
  *(v173 + 120) = v170;
  *(v173 + 128) = 0x74616E6974736544;
  *(v173 + 136) = 0xEF657079546E6F69;
  *(v173 + 144) = 0x74736275534C5255;
  *(v173 + 152) = 0xEF6E6F6974757469;
  v174 = v291;
  *(v173 + 168) = v170;
  *(v173 + 176) = v174;
  *(v173 + 184) = 0x80000001CA9ADD10;
  *(v173 + 192) = 11311;
  *(v173 + 200) = 0xE200000000000000;
  *(v173 + 216) = v170;
  strcpy((v173 + 224), "InputRequired");
  *(v173 + 238) = -4864;
  v175 = MEMORY[0x1E69E6370];
  *(v173 + 240) = 0;
  *(v173 + 264) = v175;
  *(v173 + 272) = 0x7954656372756F53;
  *(v173 + 312) = v170;
  *(v173 + 280) = 0xEA00000000006570;
  *(v173 + 288) = 0x7475706E49;
  *(v173 + 296) = 0xE500000000000000;
  *(v172 + 32) = sub_1CA94C1E8();
  v176 = swift_allocObject();
  *(v176 + 16) = v288;
  strcpy((v176 + 32), "DestinationKey");
  *(v176 + 47) = -18;
  *(v176 + 48) = 0x656D614E7473696CLL;
  *(v176 + 56) = 0xE800000000000000;
  *(v176 + 72) = v170;
  *(v176 + 80) = 0x74616E6974736544;
  *(v176 + 88) = 0xEF657079546E6F69;
  strcpy((v176 + 96), "URLQueryValue");
  *(v176 + 110) = -4864;
  *(v176 + 120) = v170;
  *(v176 + 128) = 0x73616C436D657449;
  *(v176 + 136) = v292;
  *(v176 + 144) = 0xD000000000000013;
  *(v176 + 152) = v284;
  *(v176 + 168) = v170;
  *(v176 + 176) = 0x6574656D61726150;
  *(v176 + 184) = 0xEB00000000495572;
  v177 = swift_allocObject();
  *(v177 + 16) = v298;
  v179 = v282;
  v178 = v283;
  *(v177 + 32) = v278;
  *(v177 + 40) = v179;
  *(v177 + 48) = v178;
  v180 = v277;
  *(v177 + 64) = v170;
  *(v177 + 72) = v180;
  v181 = sub_1CA94C438("Name (Parameter Label)", 22);
  v284 = v182;
  v285 = v181;
  v183 = sub_1CA94C438("Name", 4);
  v185 = v184;
  *&v288 = &v253;
  MEMORY[0x1EEE9AC00](v183);
  v186 = &v253 - v305;
  sub_1CA948D98();
  v187 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v253 - v304;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v177 + 80) = sub_1CA2F9F14(v285, v284, v183, v185, 0, 0, v186, v188);
  v190 = v280;
  *(v177 + 104) = v300;
  *(v177 + 112) = v190;
  v191 = MEMORY[0x1E69E6158];
  *(v177 + 144) = MEMORY[0x1E69E6158];
  *(v177 + 120) = 0x7468676952;
  *(v177 + 128) = 0xE500000000000000;
  v192 = sub_1CA94C1E8();
  v193 = v297;
  *(v176 + 192) = sub_1CA2F864C(v192);
  *(v176 + 216) = v193;
  *(v176 + 224) = 0x654B656372756F53;
  *(v176 + 232) = v293;
  strcpy((v176 + 240), "ClearListName");
  *(v176 + 254) = -4864;
  *(v176 + 264) = v191;
  *(v176 + 272) = 0x7954656372756F53;
  *(v176 + 312) = v191;
  *(v176 + 280) = 0xEA00000000006570;
  *(v176 + 288) = 0x6574656D61726150;
  *(v176 + 296) = 0xE900000000000072;
  *(v289 + 40) = sub_1CA94C1E8();
  v194 = swift_allocObject();
  *(v194 + 16) = v266;
  strcpy((v194 + 32), "DestinationKey");
  *(v194 + 47) = -18;
  strcpy((v194 + 48), "listPosition");
  *(v194 + 61) = 0;
  *(v194 + 62) = -5120;
  *(v194 + 72) = v191;
  *(v194 + 80) = 0x74616E6974736544;
  *(v194 + 88) = 0xEF657079546E6F69;
  strcpy((v194 + 96), "URLQueryValue");
  *(v194 + 110) = -4864;
  *(v194 + 120) = v191;
  *(v194 + 128) = 0x73616C436D657449;
  *(v194 + 136) = v292;
  *(v194 + 144) = 0xD000000000000013;
  *(v194 + 152) = v265;
  v195 = v296;
  *(v194 + 168) = v191;
  *(v194 + 176) = v195;
  *(v194 + 184) = v264;
  *(v194 + 192) = 1;
  *(v194 + 216) = MEMORY[0x1E69E6530];
  *(v194 + 224) = 0x6574656D61726150;
  *(v194 + 232) = 0xEB00000000495572;
  v196 = swift_allocObject();
  *(v196 + 16) = v298;
  v197 = v262;
  v198 = v263;
  *(v196 + 32) = v278;
  *(v196 + 40) = v198;
  *(v196 + 48) = v197;
  v199 = v277;
  *(v196 + 64) = v191;
  *(v196 + 72) = v199;
  *&v298 = sub_1CA94C438("List Position (Position)", 24);
  v292 = v200;
  v290 = sub_1CA94C438("List Position", 13);
  *&v288 = v201;
  v299 = &v253;
  MEMORY[0x1EEE9AC00](v290);
  v202 = &v253 - v305;
  sub_1CA948D98();
  v203 = v301;
  v204 = [v301 bundleURL];
  v285 = &v253;
  MEMORY[0x1EEE9AC00](v204);
  v205 = v304;
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v196 + 80) = sub_1CA2F9F14(v298, v292, v290, v288, 0, 0, v202, &v253 - v205);
  v207 = v261;
  *(v196 + 104) = v300;
  *(v196 + 112) = v207;
  *&v298 = sub_1CA94C438("Position (Position-Prefix)", 26);
  v292 = v208;
  v290 = sub_1CA94C438("Position", 8);
  *&v288 = v209;
  v299 = &v253;
  MEMORY[0x1EEE9AC00](v290);
  v210 = &v253 - v305;
  sub_1CA948D98();
  v211 = [v203 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v213 = sub_1CA2F9F14(v298, v292, v290, v288, 0, 0, v210, &v253 - v205);
  *(v196 + 144) = v300;
  *(v196 + 120) = v213;
  v214 = sub_1CA94C1E8();
  v215 = v297;
  *(v194 + 240) = sub_1CA2F864C(v214);
  *(v194 + 264) = v215;
  *(v194 + 272) = 0x654B656372756F53;
  v216 = v291;
  *(v194 + 280) = v293;
  *(v194 + 288) = v216;
  *(v194 + 296) = 0x80000001CA9ADD80;
  v217 = MEMORY[0x1E69E6158];
  *(v194 + 312) = MEMORY[0x1E69E6158];
  *(v194 + 320) = 0x7954656372756F53;
  *(v194 + 360) = v217;
  *(v194 + 328) = 0xEA00000000006570;
  *(v194 + 336) = 0x6574656D61726150;
  *(v194 + 344) = 0xE900000000000072;
  v218 = sub_1CA94C1E8();
  v219 = v289;
  *(v289 + 48) = v218;
  *(v136 + 288) = v219;
  *(v136 + 312) = v279;
  *(v136 + 320) = 1701667150;
  *(v136 + 328) = 0xE400000000000000;
  v220 = sub_1CA94C438("Add Clear List (Action Name)", 28);
  v297 = v221;
  *&v298 = v220;
  v222 = sub_1CA94C438("Add Clear List", 14);
  v295 = v223;
  v299 = &v253;
  MEMORY[0x1EEE9AC00](v222);
  v224 = v305;
  sub_1CA948D98();
  v225 = v301;
  v226 = [v301 bundleURL];
  MEMORY[0x1EEE9AC00](v226);
  v227 = &v253 - v304;
  sub_1CA948B68();

  v228 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v136 + 336) = sub_1CA2F9F14(v298, v297, v222, v295, 0, 0, &v253 - v224, v227);
  v229 = v296;
  *(v136 + 360) = v300;
  *(v136 + 368) = v229;
  *(v136 + 376) = v287;
  v299 = sub_1CA94C438("Add list ${ClearListName} (Parameter Summary)", 45);
  *&v298 = v230;
  v231 = sub_1CA94C438("Add list ${ClearListName}", 25);
  v297 = v232;
  v300 = &v253;
  MEMORY[0x1EEE9AC00](v231);
  sub_1CA948D98();
  v233 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v253 - v304;
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v236 = sub_1CA2F9F14(v299, v298, v231, v297, 0, 0, &v253 - v224, v234);
  v237 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v136 + 384) = v237;
  v238 = v291;
  *(v136 + 408) = v260;
  *(v136 + 416) = v238;
  *(v136 + 424) = v259;
  v239 = swift_allocObject();
  *(v239 + 16) = v257;
  v306 = 2;
  v307 = 1;
  v240 = objc_allocWithZone(v256);
  WFDeviceIdiomResource.init(requirement:)(&v306);
  *(v239 + 32) = v241;
  *(v136 + 456) = v255;
  *(v136 + 432) = v239;
  v242 = MEMORY[0x1E69E6158];
  v243 = sub_1CA94C1E8();
  v244 = v286;
  *(v286 + 40) = v243;
  v245 = v275;
  v275[6] = v244;
  v245[9] = v279;
  v245[10] = 0x656D65686353;
  v245[15] = v242;
  v245[11] = 0xE600000000000000;
  v245[12] = 0x7070617261656C63;
  v245[13] = 0xE800000000000000;
  v246 = sub_1CA94C1E8();
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v248 = v276;
  *(v276 + 32) = v246;
  v248[11] = v242;
  v248[7] = v247;
  v248[8] = 0x7070617261656C63;
  v248[9] = 0xEB00000000617865;
  v249 = v248;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v251 = v274;
  *(v274 + 264) = v250;
  *(v251 + 240) = v249;
  return sub_1CA94C1E8();
}

uint64_t TypedValue.ID.variable.getter()
{
  v2 = sub_1CA94AC58();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_90();
    v7 = sub_1CA399E74(v4, v5, v6);
    if (v7)
    {
      v0 = v7;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1CA399EE4();
      swift_allocError();
      *v9 = v3;
      swift_willThrow();
    }
  }

  return v0;
}

id sub_1CA399E74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSerializedRepresentation:a1 variableProvider:a2 parameter:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v4;
}

unint64_t sub_1CA399EE4()
{
  result = qword_1EC444A68;
  if (!qword_1EC444A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444A68);
  }

  return result;
}

void DisplayRepresentation.init(from:with:displayRepresentationConfig:)(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v64 - v15);
  v17 = OUTLINED_FUNCTION_47_4(v14, sel_localizedLabelForPossibleState_);
  if (v17)
  {
    v18 = v17;
    v19 = sub_1CA94C3A8();
    v68 = v20;
    v69 = v19;

    v22 = OUTLINED_FUNCTION_47_4(v21, sel_localizedSubtitleLabelForPossibleState_);
    if (v22)
    {
      v23 = v22;
      v24 = sub_1CA94C3A8();
      v67 = v25;
    }

    else
    {
      v24 = 0;
      v67 = 0;
    }

    v32 = OUTLINED_FUNCTION_47_4(v22, sel_accessoryImageForPossibleState_);
    if (v32)
    {
      v33 = v32;
      DisplayRepresentationConfiguration.image(from:)(v32, v16);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_47_4(0, sel_accessoryIconForPossibleState_);
      if (v34)
      {
        v35 = v34;
        objc_opt_self();
        v36 = swift_dynamicCastObjCClass();
        if (v36)
        {
          v37 = v36;
          v66 = v24;
          v38 = [v36 symbolName];
          v39 = sub_1CA94C3A8();
          v64 = v40;
          v65 = v39;

          v41 = [v37 symbolColors];
          sub_1CA25B3D0(0, &unk_1EC441710, 0x1E69E09E0);
          v42 = sub_1CA94C658();

          if (sub_1CA25B410(v42))
          {
            sub_1CA275D70(0, (v42 & 0xC000000000000001) == 0, v42);
            if ((v42 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x1CCAA22D0](0, v42);
            }

            else
            {
              v43 = *(v42 + 32);
            }

            v44 = v43;
          }

          else
          {

            v44 = 0;
          }

          MEMORY[0x1CCAA01E0](v65, v64, v44, 0);

          v49 = *MEMORY[0x1E69DB390];
          v50 = sub_1CA94B318();
          OUTLINED_FUNCTION_52();
          (*(v51 + 104))(v16, v49, v50);
          OUTLINED_FUNCTION_89();
          __swift_storeEnumTagSinglePayload(v52, v53, v54, v50);
          goto LABEL_20;
        }
      }

      sub_1CA94B318();
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    }

LABEL_20:
    sub_1CA2D9D20(v16, v12, &unk_1EC444A78, &qword_1CA985618);
    sub_1CA94B2E8();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
    sub_1CA94B358();

    sub_1CA94B728();
    OUTLINED_FUNCTION_52();
    (*(v59 + 8))(a3);
    sub_1CA27080C(v16, &unk_1EC444A78, &qword_1CA985618);
    sub_1CA94B458();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    OUTLINED_FUNCTION_36();
    return;
  }

  sub_1CA94B728();
  OUTLINED_FUNCTION_52();
  (*(v26 + 8))(a3);

  sub_1CA94B458();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_36();

  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

void DisplayRepresentationConfiguration.image(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1CA94B6E8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A88, &unk_1CA985620);
  v15 = OUTLINED_FUNCTION_18_0(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v18 = sub_1CA94B3A8();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  v24 = (v23 - v22);
  v25 = a1;
  sub_1CA94B398();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
  {
    v45 = *(v20 + 32);
    v45(v24, v17, v18);
    v45(a2, v24, v18);
    v46 = sub_1CA94B318();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_14_0();
    v47();
LABEL_9:
    OUTLINED_FUNCTION_89();
    v44 = v46;
    goto LABEL_10;
  }

  v63 = a2;
  sub_1CA27080C(v17, &qword_1EC444A88, &unk_1CA985620);
  sub_1CA94B6C8();
  v26 = *(v6 + 104);
  v26(v10, *MEMORY[0x1E69DB4B8], v4);
  OUTLINED_FUNCTION_105();
  v27 = sub_1CA94B6D8();
  v28 = *(v6 + 8);
  v28(v10, v4);
  v28(v13, v4);
  if (v27)
  {
    v60 = v26;
    v29 = sub_1CA948BA8();
    v62 = &v57;
    OUTLINED_FUNCTION_1_0();
    v59 = v30;
    MEMORY[0x1EEE9AC00](v31);
    OUTLINED_FUNCTION_6_0();
    v58 = (v33 - v32);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
    v61 = &v57;
    v35 = OUTLINED_FUNCTION_18_0(v34);
    MEMORY[0x1EEE9AC00](v35);
    v37 = &v57 - v36;
    sub_1CA39E320(v25, &v57 - v36);
    if (__swift_getEnumTagSinglePayload(v37, 1, v29) != 1)
    {
      v48 = v58;
      v49 = *(v59 + 32);
      v49(v58, v37, v29);
      v49(v63, v48, v29);
      v50 = sub_1CA94B318();
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_14_0();
      v51();
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v50);
      goto LABEL_11;
    }

    sub_1CA27080C(v37, &qword_1EC444A90, &qword_1CA9827C0);
    v26 = v60;
  }

  sub_1CA94B6C8();
  v26(v10, *MEMORY[0x1E69DB4B0], v4);
  OUTLINED_FUNCTION_105();
  v38 = sub_1CA94B6D8();
  v28(v10, v4);
  v28(v13, v4);
  if (v38)
  {
    v39 = sub_1CA39F2B4(v25);
    if (v40 >> 60 != 15)
    {
      v55 = v63;
      *v63 = v39;
      v55[1] = v40;
      v46 = sub_1CA94B318();
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_14_0();
      v56();
      goto LABEL_9;
    }
  }

  sub_1CA94B318();
  OUTLINED_FUNCTION_46();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
LABEL_11:
  OUTLINED_FUNCTION_36();
}

uint64_t DisplayRepresentation.init(from:thumbnailSize:displayRepresentationConfig:)()
{
  OUTLINED_FUNCTION_0();
  v0[8] = v1;
  v0[6] = v2;
  v0[7] = v3;
  v0[4] = v4;
  v0[5] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v6);
  v0[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  OUTLINED_FUNCTION_18_0(v7);
  v0[10] = OUTLINED_FUNCTION_13_5();
  v0[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A98, &unk_1CA988BE0);
  OUTLINED_FUNCTION_18_0(v8);
  v0[12] = OUTLINED_FUNCTION_13_5();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AA0, &qword_1CA985640);
  OUTLINED_FUNCTION_18_0(v9);
  v0[16] = OUTLINED_FUNCTION_13_5();
  v0[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A70, &qword_1CA985648);
  OUTLINED_FUNCTION_18_0(v10);
  v0[18] = OUTLINED_FUNCTION_13_5();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AB0, &unk_1CA985650);
  OUTLINED_FUNCTION_18_0(v11);
  v0[22] = OUTLINED_FUNCTION_13_5();
  v0[23] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AB8, &qword_1CA988BF0);
  OUTLINED_FUNCTION_18_0(v12);
  v0[24] = OUTLINED_FUNCTION_13_5();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA39B0F0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA39B6F8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA39BBCC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA39BCB0()
{
  v1 = v0[10];
  sub_1CA2D9CD4(v0[11], v1, &unk_1EC444A78, &qword_1CA985618);
  v2 = sub_1CA94B318();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
    v4 = 1;
  }

  else
  {
    (*(*(v2 - 8) + 32))(v0[13], v0[10], v2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_14_0();
    v5();
    v4 = 0;
  }

  v22 = v0[28];
  v23 = v0[29];
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[13];
  v19 = v0[12];
  v21 = v0[8];
  v20 = v0[5];
  __swift_storeEnumTagSinglePayload(v11, v4, 1, v3);
  sub_1CA2D9CD4(v11, v10, &qword_1EC444A98, &unk_1CA988BE0);
  sub_1CA2D9D20(v6, v7, &qword_1EC444AB8, &qword_1CA988BF0);
  sub_1CA2D9D20(v8, v9, &unk_1EC445A70, &qword_1CA985648);
  sub_1CA2D9D20(v10, v19, &qword_1EC444A98, &unk_1CA988BE0);
  sub_1CA94B2E8();
  v12 = OUTLINED_FUNCTION_0_22();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_1CA94B348();
  sub_1CA39F318(v22, v23);

  sub_1CA94B728();
  OUTLINED_FUNCTION_52();
  (*(v16 + 8))(v21);
  sub_1CA27080C(v10, &qword_1EC444A98, &unk_1CA988BE0);
  sub_1CA27080C(v8, &unk_1EC445A70, &qword_1CA985648);
  sub_1CA27080C(v6, &qword_1EC444AB8, &qword_1CA988BF0);

  OUTLINED_FUNCTION_3_6();

  return v17();
}

uint64_t WFContentItem.asyncDisplaySubtitle()()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1CA39C0EC;

  return WFContentItem.asyncListSubtitle()();
}

uint64_t sub_1CA39C0EC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  OUTLINED_FUNCTION_42_4(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 56) = v7;

  v9 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA39C1C8()
{
  OUTLINED_FUNCTION_0();
  if (*(v0 + 56))
  {
    sub_1CA94B3D8();
    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  sub_1CA94B418();
  v2 = OUTLINED_FUNCTION_24_1();
  __swift_storeEnumTagSinglePayload(v2, v1, 1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t WFContentItem.asyncDisplayAltText()()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1CA39C2E4;

  return WFContentItem.asyncListAltText()();
}

uint64_t sub_1CA39C2E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  OUTLINED_FUNCTION_42_4(v3, v4);
  v5 = *v0;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 56) = v7;

  v9 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA39C3C0()
{
  OUTLINED_FUNCTION_0();
  if (*(v0 + 56))
  {
    sub_1CA94B3D8();
    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  sub_1CA94B3C8();
  v2 = OUTLINED_FUNCTION_24_1();
  __swift_storeEnumTagSinglePayload(v2, v1, 1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t WFContentItem.asyncDisplayImage(with:displayRepresentationConfig:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1CA39C4F8;

  return WFContentItem.asyncListThumbnail(with:)(a3, a4);
}

uint64_t sub_1CA39C4F8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA39C5E0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 40);
  if (v1)
  {
    DisplayRepresentationConfiguration.image(from:)(*(v0 + 40), *(v0 + 16));
  }

  else
  {
    sub_1CA94B318();
    v2 = OUTLINED_FUNCTION_0_22();
    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

void DisplayRepresentation.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CA94B728();
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  _sSo13WFContentItemC11WorkflowKitE27TypedValueResolutionContextV7default34displayRepresentationConfigurationAE04ToolD007DisplaykL0V_tFZfA__0();
  v9 = [objc_opt_self() defaultContext];
  DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(a1, v8, v9, a2);
}

void DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v142 = a3;
  v136 = a1;
  v126 = a4;
  v137 = sub_1CA94B6E8();
  OUTLINED_FUNCTION_1_0();
  v129 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v128 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  v133 = (&v121 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  v14 = OUTLINED_FUNCTION_18_0(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v134 = &v121 - v16;
  sub_1CA949EE8();
  OUTLINED_FUNCTION_1_0();
  v140 = v18;
  v141 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19();
  v138 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v121 - v22;
  v139 = sub_1CA949F08();
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v121 - v28;
  v125 = sub_1CA949B18();
  OUTLINED_FUNCTION_1_0();
  v124 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_0();
  v135 = v33 - v32;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4441A0, &off_1CA9827D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  *(inited + 32) = sub_1CA2F0CCC;
  *(inited + 40) = v34;
  *(inited + 48) = sub_1CA2F1550;
  *(inited + 56) = v35;
  *(inited + 64) = sub_1CA2F0C74;
  *(inited + 72) = 0;
  sub_1CA949AD8();
  sub_1CA949EF8();
  sub_1CA949EC8();
  v37 = sub_1CA949EF8();
  v38 = sub_1CA94CE18();
  v39 = sub_1CA94D078();
  v132 = a2;
  if (v39)
  {
    LODWORD(v123) = v38;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = 0;
    v143 = v41;
    v144 = 0;
    *v40 = 258;
    v145 = v40 + 2;
    while (v42 != 48)
    {
      v43 = *(inited + v42 + 32);

      v43(&v145, &v144, &v143);

      v42 += 16;
    }

    v44 = sub_1CA949ED8();
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v37, v123, v44, "resolveDisplayRepresentation", "%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1CCAA4BF0](v41, -1, -1);
    MEMORY[0x1CCAA4BF0](v40, -1, -1);
  }

  else
  {
  }

  v46 = v140;
  v45 = v141;
  (v140[2])(v138, v23, v141);
  sub_1CA949F48();
  swift_allocObject();
  sub_1CA949F38();
  v47 = v139;
  (*(v25 + 16))(v127, v29, v139);
  sub_1CA949B28();
  (v46[1])(v23, v45);
  (*(v25 + 8))(v29, v47);
  v48 = v136;
  v49 = [v136 title];
  v50 = &selRef_isInputParameter;
  v51 = v142;
  v52 = [v142 locale];
  v53 = sub_1CA948E58();
  v140 = &v121;
  OUTLINED_FUNCTION_1_0();
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v122 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v59 = &v121 - v122;
  sub_1CA948DA8();

  sub_1CA948D48();
  v141 = *(v55 + 8);
  v141(v59, v53);
  v60 = sub_1CA94C368();

  v61 = [v49 localizedStringForLocaleIdentifier_];

  v127 = sub_1CA94C3A8();
  v123 = v62;

  v63 = [v48 subtitle];
  v139 = v53;
  v140 = v57;
  v138 = v55 + 8;
  if (v63)
  {
    v64 = v63;
    v65 = [v51 locale];
    v121 = &v121;
    MEMORY[0x1EEE9AC00](v65);
    v66 = &v121 - v122;
    sub_1CA948DA8();

    sub_1CA948D48();
    v141(v66, v53);
    v67 = sub_1CA94C368();

    v68 = [v64 &selRef:v67 messageCameFromPairedDevice:? + 6];

    v69 = sub_1CA94C3A8();
    v121 = v70;
  }

  else
  {
    v69 = 0;
    v121 = 0;
  }

  v71 = v133;
  v72 = v134;
  v73 = v136;
  v74 = [v136 snippetPluginModel];
  v75 = v132;
  if (v74)
  {
    v76 = v74;
    sub_1CA39D8D4();

    v77 = 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = sub_1CA94B2E8();
  __swift_storeEnumTagSinglePayload(v72, v77, 1, v78);
  v79 = v128;
  sub_1CA94B6C8();
  v80 = (*(v129 + 88))(v79, v137);
  v81 = v80 == *MEMORY[0x1E69DB4C0];
  v122 = v69;
  if (v81)
  {
    goto LABEL_23;
  }

  v81 = v80 == *MEMORY[0x1E69DB4B0] || v80 == *MEMORY[0x1E69DB4B8];
  if (!v81)
  {
    goto LABEL_39;
  }

  v82 = [v73 image];
  if (!v82)
  {
LABEL_23:
    sub_1CA94B318();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  }

  else
  {
    v83 = v82;
    v84 = [v82 wf_image];
    DisplayRepresentationConfiguration.image(from:)(v84, v71);

    v72 = v134;
  }

  v89 = v130;
  sub_1CA2D9D20(v71, v131, &unk_1EC444A78, &qword_1CA985618);
  sub_1CA2D9D20(v72, v89, &qword_1EC444A70, &qword_1CA985610);
  v90 = sub_1CA39F244(v73);
  v91 = MEMORY[0x1E69E7CC0];
  if (!v90)
  {
    goto LABEL_36;
  }

  v92 = v90;
  v93 = sub_1CA25B410(v90);
  if (!v93)
  {

    v71 = v133;
LABEL_36:
    v118 = v136;
LABEL_37:
    sub_1CA94B358();
    sub_1CA27080C(v71, &unk_1EC444A78, &qword_1CA985618);
    sub_1CA27080C(v72, &qword_1EC444A70, &qword_1CA985610);
    v119 = v135;
    sub_1CA39D560();

    (*(v124 + 8))(v119, v125);
    sub_1CA94B728();
    OUTLINED_FUNCTION_52();
    (*(v120 + 8))(v75);
    OUTLINED_FUNCTION_36();
    return;
  }

  v98 = v93;
  v145 = v91;
  sub_1CA271524(0, v93 & ~(v93 >> 63), 0, v94, v95, v96, v97);
  if ((v98 & 0x8000000000000000) == 0)
  {
    v99 = 0;
    v100 = v145;
    v137 = v92 & 0xC000000000000001;
    v101 = v140;
    do
    {
      if (v137)
      {
        v102 = MEMORY[0x1CCAA22D0](v99, v92);
      }

      else
      {
        v102 = *(v92 + 8 * v99 + 32);
      }

      v103 = v102;
      v104 = v50;
      v105 = [v51 v50[255]];
      MEMORY[0x1EEE9AC00](v105);
      sub_1CA948DA8();

      sub_1CA948D48();
      v141(&v121 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0), v139);
      v106 = sub_1CA94C368();

      v107 = [v103 localizedStringForLocaleIdentifier_];

      v108 = sub_1CA94C3A8();
      v110 = v109;

      v145 = v100;
      v116 = *(v100 + 2);
      v115 = *(v100 + 3);
      if (v116 >= v115 >> 1)
      {
        sub_1CA271524(v115 > 1, v116 + 1, 1, v111, v112, v113, v114);
        v100 = v145;
      }

      ++v99;
      *(v100 + 2) = v116 + 1;
      v117 = &v100[16 * v116];
      *(v117 + 4) = v108;
      *(v117 + 5) = v110;
      v51 = v142;
      v50 = v104;
      v101 = v140;
    }

    while (v98 != v99);

    v75 = v132;
    v118 = v136;
    v71 = v133;
    v72 = v134;
    goto LABEL_37;
  }

  __break(1u);
LABEL_39:
  sub_1CA94D7E8();
  __break(1u);
}

uint64_t DisplayRepresentation.init(from:displayRepresentationConfig:)(void *a1, uint64_t a2)
{
  v4 = sub_1CA94B728();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  if (a1)
  {
    (*(v6 + 16))(v9 - v8, a2, v4);
    v10 = objc_opt_self();
    v11 = a1;
    v12 = [v10 defaultContext];
    v13 = OUTLINED_FUNCTION_105();
    DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(v13, v14, v15, v16);

    v17 = OUTLINED_FUNCTION_52_0();
    v18(v17);
    sub_1CA94B458();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_89();
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_52_0();
    v25(v24);
    sub_1CA94B458();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_46();

    return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

uint64_t sub_1CA39D560()
{
  v26 = sub_1CA949F18();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1CA949EE8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA949F08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA949AC8();
  v27 = sub_1CA949AF8();
  v10 = v9;
  sub_1CA949B08();
  v11 = sub_1CA949EF8();
  sub_1CA949F28();
  v25 = sub_1CA94CE08();
  result = sub_1CA94D078();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v5);
  }

  v21 = v11;
  v22 = v6;
  v23 = v2;
  v24 = v1;
  if ((v10 & 1) == 0)
  {
    v14 = v28;
    v13 = v29;
    v15 = v27;
    if (v27)
    {
      v16 = v26;
LABEL_9:

      sub_1CA949F58();

      v17 = (*(v13 + 88))(v14, v16);
      v11 = v21;
      if (v17 == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v14, v16);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1CA949ED8();
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v11, v25, v20, v15, v18, v19, 2u);
      MEMORY[0x1CCAA4BF0](v19, -1, -1);
      v2 = v23;
      v1 = v24;
      v6 = v22;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  v14 = v28;
  v13 = v29;
  if (HIDWORD(v27))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    v16 = v26;
    if (v27 >> 16 <= 0x10)
    {
      v15 = &v30;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1CA39D8D4()
{
  v1 = [v0 pluginModelData];
  sub_1CA948C08();

  v2 = [v0 bundleIdentifier];
  sub_1CA94C3A8();

  OUTLINED_FUNCTION_105();

  JUMPOUT(0x1CCAA0150);
}

uint64_t sub_1CA39D990()
{
  OUTLINED_FUNCTION_0();
  if ([*(v0 + 96) getListSubtitle_])
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_41_5();

    return v5(v4);
  }
}

uint64_t sub_1CA39DA2C()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v2 = OUTLINED_FUNCTION_38_4();
  sub_1CA39DDCC(v2, v1, &unk_1F4A0F278, sub_1CA39F57C, &block_descriptor_25_0, &selRef_getListSubtitle_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA39DAE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1CA94C3A8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t sub_1CA39DB78()
{
  OUTLINED_FUNCTION_0();
  if ([*(v0 + 96) getListAltText_])
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_41_5();

    return v5(v4);
  }
}

uint64_t sub_1CA39DC14()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v2 = OUTLINED_FUNCTION_38_4();
  sub_1CA39DDCC(v2, v1, &unk_1F4A0F228, sub_1CA39F3B4, &block_descriptor_19, &selRef_getListAltText_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA39DCD0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(*v0 + 8);

  return v4(v2, v3);
}

void sub_1CA39DDCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v13[4] = a4;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1CA39DAE8;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  [a2 *a6];
  _Block_release(v12);
}

uint64_t sub_1CA39DE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 64) + 40);
  *v3 = a1;
  v3[1] = a2;
  sub_1CA94C218();

  return swift_continuation_resume();
}

uint64_t WFContentItem.asyncListThumbnail(with:)(double a1, double a2)
{
  *(v3 + 104) = v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA39DF04()
{
  OUTLINED_FUNCTION_0();
  if ([*(v0 + 104) getListThumbnail:0 forSize:{*(v0 + 88), *(v0 + 96)}])
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4(0);
  }
}

uint64_t sub_1CA39DFAC()
{
  v1 = *(v0 + 13);
  v3 = v0[11];
  v2 = v0[12];
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 10;
  v4 = OUTLINED_FUNCTION_38_4();
  sub_1CA39E13C(v4, v1, v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA39E054()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 80);
  v3 = *(*v0 + 8);

  return v3(v2);
}

void sub_1CA39E13C(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v10[4] = sub_1CA39F33C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CA39E274;
  v10[3] = &block_descriptor_4;
  v9 = _Block_copy(v10);

  [a2 getListThumbnail:v9 forSize:{a3, a4}];
  _Block_release(v9);
}

uint64_t sub_1CA39E220(void *a1, uint64_t a2, uint64_t a3)
{
  **(*(a3 + 64) + 40) = a1;
  v3 = a1;

  return swift_continuation_resume();
}

uint64_t sub_1CA39E274(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for WFContentItemListThumbnailOption(0);
    sub_1CA39F35C();
    v3 = sub_1CA94C1C8();
  }

  v6 = a2;
  v5(a2, v3);
}

uint64_t sub_1CA39E320@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v94 = a2;
  v3 = sub_1CA949F78();
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v87 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v87 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v87 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v87 - v16;
  v18 = sub_1CA948BA8();
  v19 = *(v18 - 8);
  v95 = v18;
  v96 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v87 - v21;
  v23 = [a1 URL];
  if (v23)
  {
    v24 = v23;
    v91 = v6;
    sub_1CA948B68();

    MEMORY[0x1EEE9AC00](v25);
    v26 = v87 - v21;
    v27 = objc_opt_self();
    sub_1CA948B38();
    v28 = sub_1CA94C368();

    v29 = [v27 createSharedTemporaryFileWithFilename_];

    MEMORY[0x1EEE9AC00](v30);
    v31 = v87 - v21;
    if (v29)
    {
      v90 = v87;
      sub_1CA948B68();

      v33 = v95;
      v32 = v96;
      (*(v96 + 32))(v26, v31, v95);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
      MEMORY[0x1EEE9AC00](v34 - 8);
      v36 = v87 - v35;
      v37 = [objc_opt_self() defaultManager];
      sub_1CA94CBD8();
      sub_1CA27080C(v36, &qword_1EC444A90, &qword_1CA9827C0);

      v72 = v94;
      sub_1CA39EFD4(v94);
      v84 = *(v32 + 8);
      v84(v26, v33);
      v84(v22, v33);
      return __swift_storeEnumTagSinglePayload(v72, 0, 1, v33);
    }

    v58 = sub_1CA949C58();
    MEMORY[0x1EEE9AC00](v58);
    v59 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = v95;
    v60 = v96;
    (*(v96 + 16))(v59, v22, v95);
    v62 = sub_1CA949F68();
    v63 = sub_1CA94CC18();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v91 = v87;
      v65 = v64;
      v90 = swift_slowAlloc();
      v97[0] = v90;
      *v65 = 136315138;
      sub_1CA39F3D0();
      v66 = sub_1CA94D798();
      v68 = v67;
      v69 = *(v60 + 8);
      v69(v59, v95);
      v70 = sub_1CA26B54C(v66, v68, v97);
      v61 = v95;

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1CA256000, v62, v63, "DisplayRepresentationConfiguration: Unable to create temporary file for: %s", v65, 0xCu);
      v71 = v90;
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x1CCAA4BF0](v71, -1, -1);
      MEMORY[0x1CCAA4BF0](v65, -1, -1);

      (*(v92 + 8))(v17, v93);
      v69(v22, v61);
    }

    else
    {

      v83 = *(v60 + 8);
      v83(v59, v61);
      (*(v92 + 8))(v17, v93);
      v83(v22, v61);
    }

    v78 = v94;
    v79 = v61;
    return __swift_storeEnumTagSinglePayload(v78, 1, 1, v79);
  }

  v87[1] = v15;
  v88 = v12;
  v91 = v87;
  MEMORY[0x1EEE9AC00](0);
  v89 = v87 - v21;
  v90 = objc_opt_self();
  v38 = sub_1CA948D28();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = v87 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D18();
  v42 = sub_1CA948CC8();
  v44 = v43;
  (*(v39 + 8))(v41, v38);
  v97[0] = v42;
  v97[1] = v44;
  MEMORY[0x1CCAA1300](1735290926, 0xE400000000000000);
  v45 = sub_1CA94C368();

  v46 = [v90 createSharedTemporaryFileWithFilename_];

  MEMORY[0x1EEE9AC00](v47);
  v48 = v87 - v21;
  if (!v46)
  {
    sub_1CA949C58();
    v73 = sub_1CA949F68();
    v74 = sub_1CA94CC18();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v95;
    if (v75)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1CA256000, v73, v74, "DisplayRepresentationConfiguration: Unable to create temporary file for image", v77, 2u);
      MEMORY[0x1CCAA4BF0](v77, -1, -1);
    }

    (*(v92 + 8))(v9, v93);
    v78 = v94;
    v79 = v76;
    return __swift_storeEnumTagSinglePayload(v78, 1, 1, v79);
  }

  sub_1CA948B68();

  v49 = v95;
  v50 = *(v96 + 32);
  v51 = v89;
  v50(v89, v48, v95);
  v52 = sub_1CA39F2B4(a1);
  if (v53 >> 60 == 15)
  {
    v54 = v51;
    sub_1CA949C58();
    v55 = sub_1CA949F68();
    v56 = sub_1CA94CC18();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1CA256000, v55, v56, "DisplayRepresentationConfiguration: Unable to create PNG representation for image", v57, 2u);
      MEMORY[0x1CCAA4BF0](v57, -1, -1);
    }

    (*(v92 + 8))(v88, v93);
    (*(v96 + 8))(v54, v49);
    return __swift_storeEnumTagSinglePayload(v94, 1, 1, v49);
  }

  else
  {
    v80 = v52;
    v81 = v53;
    v82 = sub_1CA948C18();
    v90 = v87;
    MEMORY[0x1EEE9AC00](v82);
    sub_1CA39EFD4(v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v96 + 8))(v51, v49);
    sub_1CA39F318(v80, v81);
    v86 = v94;
    v50(v94, v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v49);
    return __swift_storeEnumTagSinglePayload(v86, 0, 1, v49);
  }
}

size_t sub_1CA39EFD4@<X0>(uint64_t a1@<X8>)
{
  sub_1CA948B88();
  sub_1CA94C418();

  v3 = sandbox_extension_issue_file();

  if (v3)
  {
    result = strlen(v3);
    v5 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v6 = sub_1CA948BC8();
      MEMORY[0x1EEE9AC00](v6);
      v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 104))(v8, *MEMORY[0x1E6969008]);
      v10 = MEMORY[0x1CCA9DA30](v3, v5, v8);
      v12 = v11;
      v13 = sub_1CA948B48();
      v14 = sub_1CA948BF8();
      MEMORY[0x1CCAA3300](v13, v14);
      sub_1CA266F2C(v10, v12);

      v15 = sub_1CA948BA8();
      return (*(*(v15 - 8) + 16))(a1, v1, v15);
    }
  }

  else
  {
    sub_1CA39F41C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CA39F1F4()
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t sub_1CA39F244(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EC441780, 0x1E69AC9E0);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA39F2B4(void *a1)
{
  v1 = [a1 PNGRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA948C08();

  return v3;
}

uint64_t sub_1CA39F318(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CA266F2C(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CA39F35C()
{
  result = qword_1EC4436A0;
  if (!qword_1EC4436A0)
  {
    type metadata accessor for WFContentItemListThumbnailOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4436A0);
  }

  return result;
}

unint64_t sub_1CA39F3D0()
{
  result = qword_1EC444AE8;
  if (!qword_1EC444AE8)
  {
    sub_1CA948BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444AE8);
  }

  return result;
}

unint64_t sub_1CA39F41C()
{
  result = qword_1EC444AF0;
  if (!qword_1EC444AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444AF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SandboxExtensionError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1CA39F520()
{
  result = qword_1EC444AF8;
  if (!qword_1EC444AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444AF8);
  }

  return result;
}

id OUTLINED_FUNCTION_47_4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id sub_1CA39F5D8()
{
  v87 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9ADEA0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("style|mode|dark|appearance", 26);
  v6 = v5;
  v7 = sub_1CA94C438("style|mode|dark|appearance", 26);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v90 = v11;
  v93 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v81 - v93;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v89 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v91 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v92 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v81 - v92;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v88 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v86 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v85 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"FocusFilterDescription";
  v21 = @"Description";
  v22 = @"FocusFilterDescription";
  v23 = sub_1CA94C438("Set appearance to either light or dark when this Focus turns on.", 64);
  v83 = v24;
  v25 = sub_1CA94C438("Set appearance to either light or dark when this Focus turns on.", 64);
  v27 = v26;
  v84 = &v81;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v81 - v93;
  sub_1CA948D98();
  v29 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v81 - v92;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v83, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v88;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v86;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"DisabledOnPlatforms";
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F7B50;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 264) = v36;
  v37 = v36;
  *(inited + 240) = 0x6E61726165707061;
  *(inited + 248) = 0xEA00000000006563;
  v38 = @"DisabledOnPlatforms";
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = sub_1CA94C368();
  *(inited + 304) = v37;
  *(inited + 272) = v41;
  *(inited + 280) = 0xD000000000000055;
  *(inited + 288) = 0x80000001CA9ADF30;
  *(inited + 312) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v42 = swift_initStackObject();
  v86 = v42;
  *(v42 + 16) = v85;
  *(v42 + 32) = 0x656C797473;
  *(v42 + 40) = 0xE500000000000000;
  *&v85 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1CA9813C0;
  *(v43 + 32) = @"Label";
  v44 = @"Label";
  v45 = sub_1CA94C438("Appearance (Parameter Label)", 28);
  v82 = v46;
  v83 = v45;
  v47 = sub_1CA94C438("Appearance", 10);
  v81 = v48;
  v84 = &v81;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v81 - v93;
  sub_1CA948D98();
  v50 = v89;
  v51 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v81 - v92;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 40) = sub_1CA2F9F14(v83, v82, v47, v81, 0, 0, v49, v52);
  v54 = v88;
  *(v43 + 64) = v88;
  *(v43 + 72) = @"Placeholder";
  v55 = @"Placeholder";
  v56 = sub_1CA94C438("Light / Dark Style (Parameter Placeholder)", 42);
  v82 = v57;
  v83 = v56;
  v81 = sub_1CA94C438("Style", 5);
  v59 = v58;
  v84 = &v81;
  MEMORY[0x1EEE9AC00](v81);
  v60 = &v81 - v93;
  sub_1CA948D98();
  v61 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v81 - v92;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 80) = sub_1CA2F9F14(v83, v82, v81, v59, 0, 0, v60, v62);
  *(v43 + 104) = v54;
  *(v43 + 112) = @"Prompt";
  v64 = @"Prompt";
  v65 = sub_1CA94C438("Style (WFSetAppearanceAction)", 29);
  v83 = v66;
  v67 = sub_1CA94C438("Style", 5);
  v69 = v68;
  v84 = &v81;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v81 - v93;
  sub_1CA948D98();
  v71 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v81 - v92;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v65, v83, v67, v69, 0, 0, v70, v72);
  *(v43 + 144) = v88;
  *(v43 + 120) = v74;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v75 = sub_1CA94C1E8();
  v76 = sub_1CA2F864C(v75);
  *(v86 + 48) = v76;
  v77 = sub_1CA94C1E8();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 320) = v77;
  *(inited + 344) = v78;
  *(inited + 352) = @"ResidentCompatible";
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 360) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v79 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3A0078()
{
  v241 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9AE020;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("finding|matching|searching|regular|expression|regexp", 52);
  v6 = v5;
  v7 = sub_1CA94C438("finding|matching|searching|regular|expression|regexp", 52);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v257 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v258 = v11;
  v12 = &v234 - v257;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v259 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v260 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v261 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v234 - v261;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v256 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v255 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Replaces all occurrences of the given text with other text.", 59);
  v252 = v24;
  v25 = sub_1CA94C438("Replaces all occurrences of the given text with other text.", 59);
  v27 = v26;
  v254 = &v234;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v234 - v257;
  sub_1CA948D98();
  v29 = inited;
  v30 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v234 - v261;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v23, v252, v25, v27, 0, 0, v28, v31);
  *(v20 + 64) = v256;
  *(v20 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v255;
  *(v29 + 120) = sub_1CA6B3784(v34);
  *(v29 + 144) = v35;
  *(v29 + 152) = @"IconName";
  *(v29 + 160) = 1954047316;
  *(v29 + 168) = 0xE400000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(v29 + 184) = MEMORY[0x1E69E6158];
  *(v29 + 192) = @"Input";
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v249 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E494657;
  *(v37 + 104) = 0xE700000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  v39 = v38;
  *(v37 + 184) = 0xE500000000000000;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v255;
  *(v37 + 192) = &unk_1F49F7B80;
  v40 = @"IconName";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v253 = v29;
  v254 = v43;
  *(v29 + 200) = v42;
  *(v29 + 224) = v43;
  *(v29 + 232) = @"InputPassthrough";
  *(v29 + 240) = 0;
  *(v29 + 264) = v39;
  *(v29 + 272) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v250 = sub_1CA94C438("Replace Text (Action Name)", 26);
  v248 = v46;
  v47 = sub_1CA94C438("Replace Text", 12);
  v247 = v48;
  v251 = &v234;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v257;
  sub_1CA948D98();
  v50 = v259;
  v51 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v261;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v250, v248, v47, v247, 0, 0, &v234 - v49, &v234 - v52);
  v55 = v253;
  v253[35] = v54;
  v56 = v256;
  v55[38] = v256;
  v55[39] = @"Output";
  v57 = swift_initStackObject();
  *(v57 + 16) = v249;
  *(v57 + 32) = 0x75736F6C63736944;
  *(v57 + 40) = 0xEF6C6576654C6572;
  *(v57 + 48) = 0x63696C627550;
  *(v57 + 56) = 0xE600000000000000;
  *(v57 + 72) = MEMORY[0x1E69E6158];
  *(v57 + 80) = 0x656C7069746C754DLL;
  *(v57 + 88) = 0xE800000000000000;
  *(v57 + 96) = 1;
  *(v57 + 120) = MEMORY[0x1E69E6370];
  *(v57 + 128) = 0x614E74757074754FLL;
  *(v57 + 136) = 0xEA0000000000656DLL;
  v58 = @"Output";
  v59 = sub_1CA94C438("Updated Text (Default Output Name)", 34);
  v250 = v60;
  v251 = v59;
  v248 = sub_1CA94C438("Updated Text", 12);
  v62 = v61;
  v252 = &v234;
  MEMORY[0x1EEE9AC00](v248);
  sub_1CA948D98();
  v63 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v251, v250, v248, v62, 0, 0, &v234 - v49, &v234 - v52);
  *(v57 + 168) = v56;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v255;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F49F7BB0;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = v253;
  v253[40] = v66;
  v67[43] = v254;
  v67[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_1CA981560;
  v254 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  v245 = xmmword_1CA981380;
  *(v68 + 16) = xmmword_1CA981380;
  v248 = 0x80000001CA99B500;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000014;
  *(v68 + 48) = 0x80000001CA99B500;
  *(v68 + 64) = v65;
  *(v68 + 72) = @"Description";
  v69 = @"Class";
  v70 = @"Description";
  v71 = v69;
  v72 = v70;
  v244 = v71;
  v243 = v72;
  v73 = @"Parameters";
  v74 = sub_1CA94C438("The text to be replaced. (WFReplaceTextFind)", 44);
  v250 = v75;
  v76 = sub_1CA94C438("The text to be replaced.", 24);
  v78 = v77;
  v251 = &v234;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v234 - v257;
  sub_1CA948D98();
  v80 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v234 - v261;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 80) = sub_1CA2F9F14(v74, v250, v76, v78, 0, 0, v79, v81);
  *(v68 + 104) = v256;
  *(v68 + 112) = @"Key";
  v246 = 0xD000000000000011;
  *(v68 + 120) = 0xD000000000000011;
  *(v68 + 128) = 0x80000001CA9AE180;
  *(v68 + 144) = MEMORY[0x1E69E6158];
  *(v68 + 152) = @"Label";
  v83 = @"Key";
  v84 = @"Label";
  v85 = v83;
  v86 = v84;
  *&v240 = v85;
  v242 = v86;
  v250 = sub_1CA94C438("Find Text (WFReplaceTextFind)", 29);
  v247 = v87;
  v88 = sub_1CA94C438("Find Text", 9);
  v90 = v89;
  v251 = &v234;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v234 - v257;
  sub_1CA948D98();
  v92 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v234 - v261;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 160) = sub_1CA2F9F14(v250, v247, v88, v90, 0, 0, v91, v93);
  v95 = v256;
  *(v68 + 184) = v256;
  *(v68 + 192) = @"Multiline";
  *(v68 + 200) = 1;
  *(v68 + 224) = MEMORY[0x1E69E6370];
  *(v68 + 232) = @"Placeholder";
  v96 = @"Multiline";
  v97 = @"Placeholder";
  v247 = v96;
  v239 = v97;
  v250 = sub_1CA94C438("Hello (WFReplaceTextFind)", 25);
  v238 = v98;
  v99 = sub_1CA94C438("Hello", 5);
  v101 = v100;
  v251 = &v234;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v234 - v257;
  sub_1CA948D98();
  v103 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v234 - v261;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v250, v238, v99, v101, 0, 0, v102, v104);
  *(v68 + 264) = v95;
  *(v68 + 240) = v106;
  _s3__C3KeyVMa_0(0);
  v251 = v107;
  v250 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v108 = sub_1CA94C1E8();
  v109 = sub_1CA2F864C(v108);
  *(v255 + 32) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v245;
  v112 = v243;
  v111 = v244;
  *(v110 + 32) = v244;
  *(v110 + 40) = 0xD000000000000014;
  *(v110 + 48) = v248;
  *(v110 + 64) = MEMORY[0x1E69E6158];
  *(v110 + 72) = v112;
  v244 = v111;
  *&v245 = v112;
  v113 = sub_1CA94C438("The text to replace all occurrences of Find Text. (WFReplaceTextReplace)", 72);
  v238 = v114;
  v115 = sub_1CA94C438("The text to replace all occurrences of Find Text.", 49);
  v117 = v116;
  v243 = &v234;
  MEMORY[0x1EEE9AC00](v115);
  v118 = v257;
  sub_1CA948D98();
  v119 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v234 - v261;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v113, v238, v115, v117, 0, 0, &v234 - v118, v120);
  v123 = v242;
  *(v110 + 80) = v122;
  v124 = v240;
  *(v110 + 104) = v256;
  *(v110 + 112) = v124;
  *(v110 + 120) = 0xD000000000000014;
  *(v110 + 128) = 0x80000001CA9AE270;
  *(v110 + 144) = MEMORY[0x1E69E6158];
  *(v110 + 152) = v123;
  v243 = v124;
  v242 = v123;
  v125 = sub_1CA94C438("Replace With (WFReplaceTextReplace)", 35);
  v237 = v126;
  v238 = v125;
  v127 = sub_1CA94C438("Replace With", 12);
  v236 = v128;
  *&v240 = &v234;
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v234 - v118;
  sub_1CA948D98();
  v130 = v259;
  v131 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v234 - v261;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 160) = sub_1CA2F9F14(v238, v237, v127, v236, 0, 0, v129, v132);
  v134 = v256;
  v135 = v247;
  *(v110 + 184) = v256;
  *(v110 + 192) = v135;
  *(v110 + 200) = 1;
  v136 = v239;
  *(v110 + 224) = MEMORY[0x1E69E6370];
  *(v110 + 232) = v136;
  v137 = sub_1CA94C438("World (WFReplaceTextReplace)", 28);
  v238 = v138;
  v239 = v137;
  v139 = sub_1CA94C438("World", 5);
  v237 = v140;
  *&v240 = &v234;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v257;
  sub_1CA948D98();
  v142 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v234 - v261;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v239, v238, v139, v237, 0, 0, &v234 - v141, v143);
  *(v110 + 264) = v134;
  *(v110 + 240) = v145;
  v146 = sub_1CA94C1E8();
  v147 = sub_1CA2F864C(v146);
  *(v255 + 40) = v147;
  v148 = swift_allocObject();
  v240 = xmmword_1CA981370;
  *(v148 + 16) = xmmword_1CA981370;
  v239 = 0x80000001CA99E620;
  v149 = v244;
  v150 = v246;
  *(v148 + 32) = v244;
  *(v148 + 40) = v150;
  *(v148 + 48) = 0x80000001CA99E620;
  *(v148 + 64) = MEMORY[0x1E69E6158];
  *(v148 + 72) = @"DefaultValue";
  *(v148 + 80) = 1;
  v151 = v245;
  *(v148 + 104) = MEMORY[0x1E69E6370];
  *(v148 + 112) = v151;
  v152 = @"DefaultValue";
  v244 = v149;
  v238 = v152;
  v153 = sub_1CA94C438("When disabled, the capitalization of letters is ignored. (WFReplaceTextCaseSensitive)", 85);
  v235 = v154;
  v236 = v153;
  v155 = sub_1CA94C438("When disabled, the capitalization of letters is ignored.", 56);
  v157 = v156;
  v237 = &v234;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v234 - v141;
  sub_1CA948D98();
  v159 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = v261;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v148 + 120) = sub_1CA2F9F14(v236, v235, v155, v157, 0, 0, v158, &v234 - v160);
  v162 = v256;
  v164 = v242;
  v163 = v243;
  *(v148 + 144) = v256;
  *(v148 + 152) = v163;
  *(v148 + 160) = 0xD00000000000001ALL;
  *(v148 + 168) = 0x80000001CA9AE3A0;
  *(v148 + 184) = MEMORY[0x1E69E6158];
  *(v148 + 192) = v164;
  v243 = v163;
  v242 = v164;
  v165 = sub_1CA94C438("Case Sensitive (WFReplaceTextCaseSensitive)", 43);
  v235 = v166;
  v236 = v165;
  v167 = sub_1CA94C438("Case Sensitive", 14);
  v169 = v168;
  v237 = &v234;
  MEMORY[0x1EEE9AC00](v167);
  v170 = &v234 - v257;
  sub_1CA948D98();
  v171 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v236, v235, v167, v169, 0, 0, v170, &v234 - v160);
  *(v148 + 224) = v162;
  *(v148 + 200) = v173;
  v174 = sub_1CA94C1E8();
  v175 = sub_1CA2F864C(v174);
  *(v255 + 48) = v175;
  v176 = swift_allocObject();
  *(v176 + 16) = v240;
  v177 = v246;
  *(v176 + 32) = v244;
  *(v176 + 40) = v177;
  *(v176 + 48) = v239;
  v178 = v238;
  *(v176 + 64) = MEMORY[0x1E69E6158];
  *(v176 + 72) = v178;
  *(v176 + 80) = 0;
  v179 = v245;
  *(v176 + 104) = MEMORY[0x1E69E6370];
  *(v176 + 112) = v179;
  *&v245 = sub_1CA94C438("When enabled, Find Text is treated as a regular expression. (WFReplaceTextRegularExpression)", 92);
  *&v240 = v180;
  v181 = sub_1CA94C438("When enabled, Find Text is treated as a regular expression.", 59);
  v239 = v182;
  v246 = &v234;
  MEMORY[0x1EEE9AC00](v181);
  v183 = v257;
  sub_1CA948D98();
  v184 = v259;
  v185 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v185);
  v186 = v261;
  sub_1CA948B68();

  v187 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 120) = sub_1CA2F9F14(v245, v240, v181, v239, 0, 0, &v234 - v183, &v234 - v186);
  v188 = v243;
  *(v176 + 144) = v256;
  *(v176 + 152) = v188;
  *(v176 + 160) = 0xD00000000000001ELL;
  *(v176 + 168) = 0x80000001CA9AE4A0;
  v189 = v242;
  *(v176 + 184) = MEMORY[0x1E69E6158];
  *(v176 + 192) = v189;
  *&v245 = sub_1CA94C438("Regular Expression (WFReplaceTextRegularExpression)", 51);
  *&v240 = v190;
  v191 = sub_1CA94C438("Regular Expression", 18);
  v239 = v192;
  v246 = &v234;
  MEMORY[0x1EEE9AC00](v191);
  sub_1CA948D98();
  v193 = [v184 bundleURL];
  MEMORY[0x1EEE9AC00](v193);
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v195 = sub_1CA2F9F14(v245, v240, v191, v239, 0, 0, &v234 - v183, &v234 - v186);
  *(v176 + 224) = v256;
  *(v176 + 200) = v195;
  v196 = sub_1CA94C1E8();
  v197 = sub_1CA2F864C(v196);
  *(v255 + 56) = v197;
  v198 = swift_allocObject();
  *(v198 + 16) = v249;
  v199 = v243;
  *(v198 + 32) = v244;
  *(v198 + 40) = 0xD000000000000014;
  *(v198 + 48) = v248;
  v200 = MEMORY[0x1E69E6158];
  *(v198 + 64) = MEMORY[0x1E69E6158];
  *(v198 + 72) = v199;
  *(v198 + 80) = 0x7475706E494657;
  *(v198 + 88) = 0xE700000000000000;
  v201 = v242;
  *(v198 + 104) = v200;
  *(v198 + 112) = v201;
  v202 = sub_1CA94C438("Text (WFInput)", 14);
  *&v249 = v203;
  v204 = sub_1CA94C438("Text", 4);
  v206 = v205;
  v252 = &v234;
  MEMORY[0x1EEE9AC00](v204);
  v207 = &v234 - v257;
  sub_1CA948D98();
  v208 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v234 - v261;
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v198 + 120) = sub_1CA2F9F14(v202, v249, v204, v206, 0, 0, v207, v209);
  v211 = v247;
  *(v198 + 144) = v256;
  *(v198 + 152) = v211;
  *(v198 + 184) = MEMORY[0x1E69E6370];
  *(v198 + 160) = 1;
  v212 = sub_1CA94C1E8();
  v213 = sub_1CA2F864C(v212);
  v214 = v255;
  *(v255 + 64) = v213;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v216 = v253;
  v253[45] = v214;
  v216[48] = v215;
  v216[49] = @"ParameterSummary";
  v217 = @"ParameterSummary";
  v218 = sub_1CA94C438("Replace ${WFReplaceTextFind} with ${WFReplaceTextReplace} in ${WFInput} (Parameter Summary)", 91);
  v220 = v219;
  v221 = sub_1CA94C438("Replace ${WFReplaceTextFind} with ${WFReplaceTextReplace} in ${WFInput}", 71);
  v223 = v222;
  MEMORY[0x1EEE9AC00](v221);
  v224 = &v234 - v257;
  sub_1CA948D98();
  v225 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v225);
  v226 = &v234 - v261;
  sub_1CA948B68();

  v227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v228 = sub_1CA2F9F14(v218, v220, v221, v223, 0, 0, v224, v226);
  v229 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v230 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v231 = v253;
  v253[50] = v229;
  v231[53] = v230;
  v231[54] = @"ResidentCompatible";
  v231[58] = MEMORY[0x1E69E6370];
  *(v231 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v232 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}