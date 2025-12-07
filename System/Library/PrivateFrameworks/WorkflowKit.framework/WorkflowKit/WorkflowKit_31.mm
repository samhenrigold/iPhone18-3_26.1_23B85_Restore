id sub_1CA5970CC()
{
  v159 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9D0760;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("decimal|math|generate|generator", 31);
  v7 = v6;
  v8 = sub_1CA94C438("decimal|math|generate|generator", 31);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v164 = v12;
  v168 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v145 - v168;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v166 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v167 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v165 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v145 - v165;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v163 = v20;
  *(v2 + 80) = v19;
  *(v2 + 104) = v20;
  *(v2 + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v2 + 120) = v22;
  *(v2 + 144) = v23;
  *(v2 + 152) = @"Description";
  v161 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438("Passes a random number between the given minimum and maximum to the next action. The minimum and maximum numbers are included as possible results.", 146);
  v158 = v28;
  v29 = sub_1CA94C438("Passes a random number between the given minimum and maximum to the next action. The minimum and maximum numbers are included as possible results.", 146);
  v31 = v30;
  v160 = &v145;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v145 - v168;
  sub_1CA948D98();
  v33 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v145 - v165;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v158, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v163;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v161;
  v39 = sub_1CA6B3784(v37);
  v162 = v2;
  *(v2 + 160) = v39;
  *(v2 + 184) = v38;
  *(v2 + 192) = @"IconColor";
  *(v2 + 200) = 2036429383;
  *(v2 + 208) = 0xE400000000000000;
  v40 = MEMORY[0x1E69E6158];
  *(v2 + 224) = MEMORY[0x1E69E6158];
  *(v2 + 232) = @"IconSymbol";
  *(v2 + 240) = 0x7265626D756ELL;
  *(v2 + 248) = 0xE600000000000000;
  *(v2 + 264) = v40;
  *(v2 + 272) = @"LocallyProcessesData";
  v41 = MEMORY[0x1E69E6370];
  *(v2 + 280) = 1;
  *(v2 + 304) = v41;
  *(v2 + 312) = @"Name";
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"LocallyProcessesData";
  v45 = @"Name";
  v46 = sub_1CA94C438("Random Number (Action Name)", 27);
  v48 = v47;
  v49 = sub_1CA94C438("Random Number", 13);
  v51 = v50;
  v161 = &v145;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v145 - v168;
  sub_1CA948D98();
  v53 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v145 - v165;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v57 = v162;
  v162[40] = v56;
  v57[43] = v163;
  v57[44] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA981350;
  *(v58 + 32) = 0x75736F6C63736944;
  *(v58 + 40) = 0xEF6C6576654C6572;
  *(v58 + 48) = 0x63696C627550;
  *(v58 + 56) = 0xE600000000000000;
  *(v58 + 72) = MEMORY[0x1E69E6158];
  *(v58 + 80) = 0x656C7069746C754DLL;
  *(v58 + 88) = 0xE800000000000000;
  *(v58 + 96) = 0;
  *(v58 + 120) = MEMORY[0x1E69E6370];
  *(v58 + 128) = 0x614E74757074754FLL;
  *(v58 + 136) = 0xEA0000000000656DLL;
  v59 = @"Output";
  v60 = sub_1CA94C438("Random Number (Default Output Name)", 35);
  v160 = v61;
  v62 = sub_1CA94C438("Random Number", 13);
  v64 = v63;
  v161 = &v145;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v168;
  sub_1CA948D98();
  v66 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v145 - v165;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 144) = sub_1CA2F9F14(v60, v160, v62, v64, 0, 0, &v145 - v65, v67);
  *(v58 + 168) = v163;
  *(v58 + 176) = 0x7365707954;
  *(v58 + 184) = 0xE500000000000000;
  *(v58 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 192) = &unk_1F4A07918;
  v69 = MEMORY[0x1E69E6158];
  v70 = sub_1CA94C1E8();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v72 = v162;
  v162[45] = v70;
  v72[48] = v71;
  v72[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v161 = swift_allocObject();
  *(v161 + 1) = xmmword_1CA981360;
  v160 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  v157 = xmmword_1CA981380;
  *(v73 + 16) = xmmword_1CA981380;
  *(v73 + 32) = @"AllowsDecimalNumbers";
  *(v73 + 40) = 1;
  *(v73 + 64) = MEMORY[0x1E69E6370];
  *(v73 + 72) = @"Class";
  v155 = 0xD000000000000016;
  v156 = 0x80000001CA99C180;
  *(v73 + 80) = 0xD000000000000016;
  *(v73 + 88) = 0x80000001CA99C180;
  *(v73 + 104) = v69;
  *(v73 + 112) = @"Key";
  *(v73 + 120) = 0xD000000000000015;
  *(v73 + 128) = 0x80000001CA9D08A0;
  *(v73 + 144) = v69;
  *(v73 + 152) = @"Label";
  v74 = @"AllowsDecimalNumbers";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v153 = v74;
  v152 = v75;
  v151 = v76;
  v154 = v77;
  v78 = @"Parameters";
  v79 = sub_1CA94C438("Minimum (WFRandomNumberMinimum)", 31);
  v148 = v80;
  v149 = v79;
  v81 = sub_1CA94C438("Minimum", 7);
  v147 = v82;
  v150 = &v145;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v145 - v65;
  sub_1CA948D98();
  v84 = v166;
  v85 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = v165;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 160) = sub_1CA2F9F14(v149, v148, v81, v147, 0, 0, v83, &v145 - v86);
  v88 = v163;
  *(v73 + 184) = v163;
  *(v73 + 192) = @"Placeholder";
  v150 = @"Placeholder";
  v89 = sub_1CA94C438("Minimum (WFRandomNumberMinimum)", 31);
  v147 = v90;
  v148 = v89;
  v91 = sub_1CA94C438("Minimum", 7);
  v146 = v92;
  v149 = &v145;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v145 - v168;
  sub_1CA948D98();
  v94 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 200) = sub_1CA2F9F14(v148, v147, v91, v146, 0, 0, v93, &v145 - v86);
  *(v73 + 224) = v88;
  *(v73 + 232) = @"TextAlignment";
  v96 = MEMORY[0x1E69E6158];
  *(v73 + 264) = MEMORY[0x1E69E6158];
  *(v73 + 240) = 0x7468676952;
  *(v73 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v149 = v97;
  v148 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v147 = @"TextAlignment";
  v98 = sub_1CA94C1E8();
  v99 = sub_1CA2F864C(v98);
  v161[4] = v99;
  v100 = swift_allocObject();
  *(v100 + 16) = v157;
  *(v100 + 32) = v153;
  *(v100 + 40) = 1;
  v101 = v152;
  *(v100 + 64) = MEMORY[0x1E69E6370];
  *(v100 + 72) = v101;
  v102 = v156;
  *(v100 + 80) = v155;
  *(v100 + 88) = v102;
  v103 = v151;
  *(v100 + 104) = v96;
  *(v100 + 112) = v103;
  *(v100 + 120) = 0xD000000000000015;
  *(v100 + 128) = 0x80000001CA9D08E0;
  v104 = v154;
  *(v100 + 144) = v96;
  *(v100 + 152) = v104;
  v105 = sub_1CA94C438("Maximum (WFRandomNumberMaximum)", 31);
  v156 = v106;
  *&v157 = v105;
  v155 = sub_1CA94C438("Maximum", 7);
  v108 = v107;
  v158 = &v145;
  MEMORY[0x1EEE9AC00](v155);
  v109 = v168;
  sub_1CA948D98();
  v110 = v166;
  v111 = [v166 bundleURL];
  v154 = &v145;
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v145 - v165;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 160) = sub_1CA2F9F14(v157, v156, v155, v108, 0, 0, &v145 - v109, v112);
  v114 = v163;
  v115 = v150;
  *(v100 + 184) = v163;
  *(v100 + 192) = v115;
  v116 = sub_1CA94C438("Maximum (WFRandomNumberMaximum)", 31);
  v156 = v117;
  *&v157 = v116;
  v155 = sub_1CA94C438("Maximum", 7);
  v119 = v118;
  v158 = &v145;
  MEMORY[0x1EEE9AC00](v155);
  sub_1CA948D98();
  v120 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = v165;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 200) = sub_1CA2F9F14(v157, v156, v155, v119, 0, 0, &v145 - v109, &v145 - v121);
  v123 = v147;
  *(v100 + 224) = v114;
  *(v100 + 232) = v123;
  *(v100 + 264) = MEMORY[0x1E69E6158];
  *(v100 + 240) = 0x7468676952;
  *(v100 + 248) = 0xE500000000000000;
  v124 = sub_1CA94C1E8();
  v125 = sub_1CA2F864C(v124);
  v126 = v161;
  v161[5] = v125;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v128 = v162;
  v162[50] = v126;
  v128[53] = v127;
  v128[54] = @"ParameterSummary";
  v129 = @"ParameterSummary";
  v130 = sub_1CA94C438("Random number between ${WFRandomNumberMinimum} and ${WFRandomNumberMaximum} (Parameter Summary)", 95);
  v132 = v131;
  v133 = sub_1CA94C438("Random number between ${WFRandomNumberMinimum} and ${WFRandomNumberMaximum}", 75);
  v135 = v134;
  v163 = &v145;
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v145 - v168;
  sub_1CA948D98();
  v137 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139 = sub_1CA2F9F14(v130, v132, v133, v135, 0, 0, v136, &v145 - v121);
  v140 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v141 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v142 = v162;
  v162[55] = v140;
  v142[58] = v141;
  v142[59] = @"ResidentCompatible";
  v142[63] = MEMORY[0x1E69E6370];
  *(v142 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v143 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5982C0()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("find|search|detect|scan|e-mail|emails", 37);
  v6 = v5;
  v7 = sub_1CA94C438("find|search|detect|scan|e-mail|emails", 37);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v125 = v11;
  v123 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v114 - v123;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v126 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v127 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v114 - v127;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v122 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000019;
  *(inited + 168) = 0x80000001CA99A500;
  *(inited + 184) = v21;
  *(inited + 192) = @"Description";
  *&v121 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Returns any email addresses found in the output from the previous action.", 73);
  v118 = v27;
  v28 = sub_1CA94C438("Returns any email addresses found in the output from the previous action.", 73);
  v30 = v29;
  v119 = v114;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v114 - v123;
  sub_1CA948D98();
  v32 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v114 - v127;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v118, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v122;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v121;
  *(inited + 200) = sub_1CA6B3784(v36);
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 1851881795;
  *(inited + 248) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = 0x80000001CA9D0A30;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v121 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v119;
  *(v39 + 192) = &unk_1F4A07988;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v118 = v46;
  *(inited + 320) = v45;
  *(inited + 344) = v46;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v41;
  *(inited + 392) = @"Name";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438("Get Email Addresses from Input (Action Name)", 44);
  v115 = v50;
  v51 = sub_1CA94C438("Get Email Addresses from Input", 30);
  v53 = v52;
  v116 = v114;
  MEMORY[0x1EEE9AC00](v51);
  v54 = v123;
  sub_1CA948D98();
  v55 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v114 - v127;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v49, v115, v51, v53, 0, 0, v114 - v54, v56);
  v58 = v122;
  *(inited + 424) = v122;
  *(inited + 432) = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v121;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438("Email Addresses (Default Output Name)", 37);
  v115 = v62;
  v116 = v61;
  v63 = sub_1CA94C438("Email Addresses", 15);
  v65 = v64;
  v117 = v114;
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948D98();
  v66 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v114 - v127;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v116, v115, v63, v65, 0, 0, v114 - v54, v67);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v119;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A079B8;
  v69 = MEMORY[0x1E69E6158];
  *(inited + 440) = sub_1CA94C1E8();
  *(inited + 464) = v118;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 1) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = v121;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000014;
  *(v70 + 48) = 0x80000001CA99B500;
  *(v70 + 64) = v69;
  *(v70 + 72) = @"Key";
  *(v70 + 80) = 0x7475706E494657;
  *(v70 + 88) = 0xE700000000000000;
  *(v70 + 104) = v69;
  *(v70 + 112) = @"Label";
  v71 = @"Parameters";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v75 = sub_1CA94C438("Input (WFInput)", 15);
  v116 = v76;
  v117 = v75;
  v77 = sub_1CA94C438("Input", 5);
  v115 = v78;
  *&v121 = v114;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v123;
  sub_1CA948D98();
  v80 = v124;
  v81 = [v124 bundleURL];
  v114[1] = v114;
  MEMORY[0x1EEE9AC00](v81);
  v82 = v114 - v127;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 120) = sub_1CA2F9F14(v117, v116, v77, v115, 0, 0, v114 - v79, v82);
  v84 = v122;
  *(v70 + 144) = v122;
  *(v70 + 152) = @"Placeholder";
  v85 = @"Placeholder";
  v86 = sub_1CA94C438("Input (WFInput)", 15);
  v116 = v87;
  v117 = v86;
  v115 = sub_1CA94C438("Input", 5);
  v89 = v88;
  *&v121 = v114;
  MEMORY[0x1EEE9AC00](v115);
  v90 = v114 - v79;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = v114 - v127;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v117, v116, v115, v89, 0, 0, v90, v92);
  *(v70 + 184) = v84;
  *(v70 + 160) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v95 = sub_1CA94C1E8();
  v96 = sub_1CA2F864C(v95);
  v97 = v119;
  v119[4] = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v97;
  *(inited + 504) = v98;
  *(inited + 512) = @"ParameterSummary";
  v99 = @"ParameterSummary";
  v100 = sub_1CA94C438("Get email addresses from ${WFInput} (Parameter Summary)", 55);
  v102 = v101;
  v103 = sub_1CA94C438("Get email addresses from ${WFInput}", 35);
  v105 = v104;
  v122 = v114;
  MEMORY[0x1EEE9AC00](v103);
  v106 = v114 - v123;
  sub_1CA948D98();
  v107 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = v114 - v127;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  v111 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v111;
  *(inited + 552) = @"ResidentCompatible";
  *(inited + 584) = MEMORY[0x1E69E6370];
  *(inited + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v112 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA599280()
{
  v239 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  v247 = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CDEE0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("app|song|music|movie|ebook|audiobook|tv|album|store|search", 58);
  v6 = v5;
  v7 = sub_1CA94C438("app|song|music|movie|ebook|audiobook|tv|album|store|search", 58);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v254 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v255 = v11;
  v12 = &v235 - v254;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v251 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v253 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v252 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v235 - v252;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v250 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v249 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Searches the iTunes Store, returning the items that match the specified search terms. You can get more details about the results using the Get Details of iTunes Product action.", 176);
  v28 = v27;
  v29 = sub_1CA94C438("Searches the iTunes Store, returning the items that match the specified search terms. You can get more details about the results using the Get Details of iTunes Product action.", 176);
  v31 = v30;
  v246 = &v235;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v235 - v254;
  sub_1CA948D98();
  v33 = [v251 bundleURL];
  v248 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v235 - v252;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v250;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v249;
  v40 = sub_1CA6B3784(v38);
  v41 = v248;
  v248[20] = v40;
  v41[23] = v39;
  v41[24] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 200) = 0;
  v41[28] = v42;
  v41[29] = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438("Find iTunes Store Items (Action Name)", 37);
  v47 = v46;
  v48 = sub_1CA94C438("Find iTunes Store Items", 23);
  v50 = v49;
  v249 = &v235;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v235 - v254;
  sub_1CA948D98();
  v52 = v251;
  v53 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v235 - v252;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v54);
  v57 = v248;
  v248[30] = v56;
  v58 = v250;
  v57[33] = v250;
  v57[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438("iTunes Products (Default Output Name)", 37);
  v246 = v62;
  v63 = sub_1CA94C438("iTunes Products", 15);
  v65 = v64;
  v249 = &v235;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v235 - v254;
  sub_1CA948D98();
  v67 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v235 - v252;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v61, v246, v63, v65, 0, 0, v66, v68);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v238;
  *(v59 + 192) = &unk_1F4A07A28;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v248;
  v248[35] = v71;
  v73[38] = v72;
  v73[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v244 = swift_allocObject();
  *(v244 + 16) = xmmword_1CA981410;
  v249 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981370;
  v75 = v247;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = v75;
  *(v74 + 48) = 0x80000001CA99B500;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"Key";
  strcpy((v74 + 80), "WFSearchTerm");
  *(v74 + 93) = 0;
  *(v74 + 94) = -5120;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Label";
  v76 = @"Class";
  v77 = @"Key";
  v78 = @"Label";
  v79 = v76;
  v80 = v77;
  v81 = v78;
  v240 = v79;
  v237 = v80;
  v241 = v81;
  v82 = @"Parameters";
  v246 = sub_1CA94C438("Search (WFSearchTerm)", 21);
  *&v243 = v83;
  v84 = sub_1CA94C438("Search", 6);
  v242 = v85;
  v247 = &v235;
  MEMORY[0x1EEE9AC00](v84);
  v86 = v254;
  sub_1CA948D98();
  v87 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v252;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v246, v243, v84, v242, 0, 0, &v235 - v86, &v235 - v88);
  v90 = v250;
  *(v74 + 144) = v250;
  *(v74 + 152) = @"Placeholder";
  v91 = @"Placeholder";
  v246 = sub_1CA94C438("Media (WFSearchTerm)", 20);
  *&v243 = v92;
  v242 = sub_1CA94C438("Media", 5);
  v94 = v93;
  v247 = &v235;
  MEMORY[0x1EEE9AC00](v242);
  v95 = &v235 - v86;
  sub_1CA948D98();
  v96 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 160) = sub_1CA2F9F14(v246, v243, v242, v94, 0, 0, v95, &v235 - v88);
  *(v74 + 184) = v90;
  *(v74 + 192) = @"TextAlignment";
  v98 = MEMORY[0x1E69E6158];
  *(v74 + 224) = MEMORY[0x1E69E6158];
  *(v74 + 200) = 0x7468676952;
  *(v74 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v247 = v99;
  v246 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v100 = @"TextAlignment";
  v101 = sub_1CA94C1E8();
  v102 = sub_1CA2F864C(v101);
  *(v244 + 32) = v102;
  v103 = swift_allocObject();
  v243 = xmmword_1CA9813C0;
  *(v103 + 16) = xmmword_1CA9813C0;
  v242 = 0x80000001CA99FB10;
  v104 = v240;
  v105 = v241;
  *(v103 + 32) = v240;
  *(v103 + 40) = 0xD00000000000001DLL;
  *(v103 + 48) = 0x80000001CA99FB10;
  v106 = v237;
  *(v103 + 64) = v98;
  *(v103 + 72) = v106;
  *(v103 + 80) = 0x54616964654D4657;
  *(v103 + 88) = 0xEB00000000657079;
  *(v103 + 104) = v98;
  *(v103 + 112) = v105;
  v240 = v104;
  v237 = v106;
  v241 = v105;
  v107 = sub_1CA94C438("Category (WFMediaType)", 22);
  v235 = v108;
  v109 = sub_1CA94C438("Category", 8);
  v111 = v110;
  v236 = &v235;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v254;
  sub_1CA948D98();
  v113 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v235 - v252;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v107, v235, v109, v111, 0, 0, &v235 - v112, v114);
  *(v103 + 144) = v250;
  *(v103 + 120) = v116;
  v117 = sub_1CA94C1E8();
  v118 = sub_1CA2F864C(v117);
  *(v244 + 40) = v118;
  v119 = swift_allocObject();
  *(v119 + 16) = v243;
  v120 = v240;
  *(v119 + 32) = v240;
  *(v119 + 40) = 0xD00000000000001DLL;
  v121 = v241;
  *(v119 + 48) = v242;
  v122 = MEMORY[0x1E69E6158];
  v123 = v237;
  *(v119 + 64) = MEMORY[0x1E69E6158];
  *(v119 + 72) = v123;
  *(v119 + 80) = 0x6269727474414657;
  *(v119 + 88) = 0xEB00000000657475;
  *(v119 + 104) = v122;
  *(v119 + 112) = v121;
  v240 = v120;
  v237 = v123;
  v241 = v121;
  v124 = sub_1CA94C438("Search By (WFAttribute)", 23);
  v235 = v125;
  v126 = sub_1CA94C438("Search By", 9);
  v128 = v127;
  v236 = &v235;
  MEMORY[0x1EEE9AC00](v126);
  v129 = &v235 - v112;
  sub_1CA948D98();
  v130 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v235 - v252;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v124, v235, v126, v128, 0, 0, v129, v131);
  *(v119 + 144) = v250;
  *(v119 + 120) = v133;
  v134 = sub_1CA94C1E8();
  v135 = sub_1CA2F864C(v134);
  *(v244 + 48) = v135;
  v136 = swift_allocObject();
  *(v136 + 16) = v243;
  v137 = v240;
  *(v136 + 32) = v240;
  *(v136 + 40) = 0xD00000000000001DLL;
  *(v136 + 48) = v242;
  v138 = MEMORY[0x1E69E6158];
  v139 = v237;
  *(v136 + 64) = MEMORY[0x1E69E6158];
  *(v136 + 72) = v139;
  *(v136 + 80) = 0x797469746E454657;
  *(v136 + 88) = 0xE800000000000000;
  v140 = v241;
  *(v136 + 104) = v138;
  *(v136 + 112) = v140;
  v240 = v137;
  v242 = v139;
  v141 = sub_1CA94C438("Results (WFEntity)", 18);
  v236 = v142;
  v143 = sub_1CA94C438("Results", 7);
  v145 = v144;
  v237 = &v235;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v235 - v254;
  sub_1CA948D98();
  v147 = v251;
  v148 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = &v235 - v252;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v141, v236, v143, v145, 0, 0, v146, v149);
  *(v136 + 144) = v250;
  *(v136 + 120) = v151;
  v152 = sub_1CA94C1E8();
  v153 = sub_1CA2F864C(v152);
  v154 = v244;
  *(v244 + 56) = v153;
  v155 = swift_allocObject();
  *(v155 + 16) = v243;
  *(v155 + 32) = v240;
  *(v155 + 40) = 0xD000000000000023;
  *(v155 + 48) = 0x80000001CA9CE0E0;
  v156 = MEMORY[0x1E69E6158];
  v157 = v242;
  *(v155 + 64) = MEMORY[0x1E69E6158];
  *(v155 + 72) = v157;
  *(v155 + 80) = 0x72746E756F434657;
  *(v155 + 88) = 0xE900000000000079;
  v158 = v241;
  *(v155 + 104) = v156;
  *(v155 + 112) = v158;
  v159 = sub_1CA94C438("Region (WFCountry)", 18);
  v241 = v160;
  v161 = sub_1CA94C438("Region", 6);
  v163 = v162;
  *&v243 = &v235;
  MEMORY[0x1EEE9AC00](v161);
  v164 = &v235 - v254;
  sub_1CA948D98();
  v165 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = &v235 - v252;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v159, v241, v161, v163, 0, 0, v164, v166);
  *(v155 + 144) = v250;
  *(v155 + 120) = v168;
  v169 = sub_1CA94C1E8();
  *(v154 + 64) = sub_1CA2F864C(v169);
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1CA981300;
  *(v170 + 32) = v240;
  *(v170 + 40) = 0xD000000000000012;
  *(v170 + 48) = 0x80000001CA99B980;
  v171 = MEMORY[0x1E69E6158];
  *(v170 + 64) = MEMORY[0x1E69E6158];
  *(v170 + 72) = @"DefaultValue";
  v172 = MEMORY[0x1E69E6530];
  *(v170 + 80) = 25;
  v173 = v242;
  *(v170 + 104) = v172;
  *(v170 + 112) = v173;
  *(v170 + 120) = 0x694C6D6574494657;
  *(v170 + 128) = 0xEB0000000074696DLL;
  *(v170 + 144) = v171;
  *(v170 + 152) = @"MaximumValue";
  *(v170 + 160) = 100;
  *(v170 + 184) = v172;
  *(v170 + 192) = @"MinimumValue";
  *(v170 + 200) = 1;
  *(v170 + 224) = v172;
  *(v170 + 232) = @"StepperPrefix";
  v174 = @"DefaultValue";
  v175 = @"MaximumValue";
  v176 = @"MinimumValue";
  v177 = @"StepperPrefix";
  v178 = sub_1CA94C438("Get (WFItemLimit)", 17);
  v242 = v179;
  *&v243 = v178;
  v180 = sub_1CA94C438("Get", 3);
  v241 = v181;
  v245 = &v235;
  MEMORY[0x1EEE9AC00](v180);
  v182 = &v235 - v254;
  sub_1CA948D98();
  v183 = v251;
  v184 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = v252;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 240) = sub_1CA2F9F14(v243, v242, v180, v241, 0, 0, v182, &v235 - v185);
  v187 = v250;
  *(v170 + 264) = v250;
  *(v170 + 272) = @"StepperDescription";
  v188 = @"StepperDescription";
  v189 = sub_1CA94C438("Number of Items (WFItemLimit)", 29);
  v242 = v190;
  *&v243 = v189;
  v191 = sub_1CA94C438("Number of Items", 15);
  v241 = v192;
  v245 = &v235;
  MEMORY[0x1EEE9AC00](v191);
  v193 = &v235 - v254;
  sub_1CA948D98();
  v194 = [v183 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 280) = sub_1CA2F9F14(v243, v242, v191, v241, 0, 0, v193, &v235 - v185);
  *(v170 + 304) = v187;
  *(v170 + 312) = @"StepperNoun";
  v196 = @"StepperNoun";
  v197 = sub_1CA94C438("%d Items", v235);
  v245 = v197;
  v199 = v198;
  *&v243 = v198;
  v260 = 0;
  v261 = 0xE000000000000000;
  sub_1CA94D408();

  v260 = v197;
  v261 = v199;
  v258 = 10;
  v259 = 0xE100000000000000;
  v256 = 32;
  v257 = 0xE100000000000000;
  sub_1CA27BAF0();
  v260 = sub_1CA94D1B8();
  v261 = v200;
  v201 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v202 = v260;
  v203 = v261;
  MEMORY[0x1EEE9AC00](v201);
  v204 = &v235 - v254;
  sub_1CA948D98();
  v205 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  v206 = &v235 - v252;
  sub_1CA948B68();

  v207 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v208 = sub_1CA2F9F14(v202, v203, v245, v243, 0, 0, v204, v206);
  *(v170 + 344) = v250;
  *(v170 + 320) = v208;
  v209 = sub_1CA94C1E8();
  v210 = sub_1CA2F864C(v209);
  v211 = v244;
  *(v244 + 72) = v210;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v213 = v248;
  v248[40] = v211;
  v213[43] = v212;
  v213[44] = @"ParameterSummary";
  v214 = @"ParameterSummary";
  v215 = sub_1CA94C438("Find ${WFSearchTerm} on the iTunes Store (Parameter Summary)", 60);
  v217 = v216;
  v218 = sub_1CA94C438("Find ${WFSearchTerm} on the iTunes Store", 40);
  v220 = v219;
  MEMORY[0x1EEE9AC00](v218);
  v221 = &v235 - v254;
  sub_1CA948D98();
  v222 = [v251 bundleURL];
  MEMORY[0x1EEE9AC00](v222);
  v223 = &v235 - v252;
  sub_1CA948B68();

  v224 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v225 = sub_1CA2F9F14(v215, v217, v218, v220, 0, 0, v221, v223);
  v226 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v227 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v228 = v248;
  v248[45] = v226;
  v228[48] = v227;
  v228[49] = @"RequiredResources";
  v228[50] = &unk_1F4A07A58;
  v228[53] = v238;
  v228[54] = @"ResidentCompatible";
  v229 = MEMORY[0x1E69E6370];
  v228[58] = MEMORY[0x1E69E6370];
  *(v228 + 440) = 1;
  v230 = v228;
  v231 = @"RequiredResources";
  v232 = @"ResidentCompatible";
  v230[59] = sub_1CA94C368();
  v230[60] = 0x73656E755469;
  v230[61] = 0xE600000000000000;
  v230[63] = MEMORY[0x1E69E6158];
  v230[64] = @"SuggestedAsInitialAction";
  v230[68] = v229;
  *(v230 + 520) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v233 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA59AD30()
{
  v58 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("screen|display|backlight", 24);
  v6 = v5;
  v7 = sub_1CA94C438("screen|display|backlight", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = v11;
  v12 = &v47 - v56;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v55 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v53 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v47 - v54;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v52 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  *(inited + 184) = v21;
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "sun.max.fill");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 224) = v21;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v24 = @"IconColor";
  v25 = @"IconSymbol";
  v26 = @"InputPassthrough";
  v27 = sub_1CA94C368();
  *(inited + 304) = v21;
  *(inited + 272) = v27;
  *(inited + 280) = 0xD000000000000055;
  *(inited + 288) = 0x80000001CA9D0D90;
  *(inited + 312) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1CA981310;
  *(v28 + 32) = 0x65756C6176;
  *(v28 + 40) = 0xE500000000000000;
  v51 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1CA981350;
  *(v29 + 32) = @"Description";
  v30 = @"Description";
  v31 = sub_1CA94C438("Brightness Parameter Description (WFHandleCustomIntentAction is.workflow.actions.setbrightness)", 95);
  v48 = v32;
  v49 = v31;
  v33 = sub_1CA94C438("If you set the brightness using a variable, use a number between 0 and 1 (for example, pass 0.5 for half brightness).", 117);
  v35 = v34;
  v50 = &v47;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v47 - v56;
  sub_1CA948D98();
  v37 = [v55 bundleURL];
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v47 - v54;
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v29 + 40) = sub_1CA2F9F14(v49, v48, v33, v35, 0, 0, v36, v38);
  *(v29 + 64) = v52;
  *(v29 + 72) = @"Key";
  strcpy((v29 + 80), "WFBrightness");
  *(v29 + 93) = 0;
  *(v29 + 94) = -5120;
  v40 = MEMORY[0x1E69E6158];
  *(v29 + 104) = MEMORY[0x1E69E6158];
  *(v29 + 112) = @"MaximumIconName";
  *(v29 + 120) = 0xD000000000000014;
  *(v29 + 128) = 0x80000001CA9D0ED0;
  *(v29 + 144) = v40;
  *(v29 + 152) = @"MinimumIconName";
  *(v29 + 184) = v40;
  *(v29 + 160) = 0xD000000000000013;
  *(v29 + 168) = 0x80000001CA9D0EF0;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v41 = @"Key";
  v42 = @"MaximumIconName";
  v43 = @"MinimumIconName";
  v44 = sub_1CA94C1E8();
  *(v28 + 48) = sub_1CA2F864C(v44);
  v45 = sub_1CA94C1E8();
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 320) = v45;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA59B45C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = OUTLINED_FUNCTION_116();
  if (v4(v3))
  {
    sub_1CA94C438("is exactly", 10);
    OUTLINED_FUNCTION_1_2();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v5 = OUTLINED_FUNCTION_116();
  if (v6(v5))
  {
    sub_1CA94C438("is on", 5);
    OUTLINED_FUNCTION_1_2();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v7 = OUTLINED_FUNCTION_116();
  if ((v8(v7) & 1) == 0)
  {
    v10 = WFDefaultLocalizedLabelForContentOperator();
    if (v10)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_1CA94C438("contains", 8);
  OUTLINED_FUNCTION_1_2();
  if (qword_1EDB9F5F0 != -1)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

LABEL_9:
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_7_24();
  v9 = OUTLINED_FUNCTION_18_18();
  v10 = OUTLINED_FUNCTION_4_36(v9, sel_localizedStringForKey_value_table_);

LABEL_10:
  sub_1CA94C3A8();

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA59B62C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA59B678()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_13_30(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_13_2(v5);

  return v8(v7);
}

uint64_t sub_1CA59B768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2AD81C;

  return sub_1CA59B678();
}

uint64_t sub_1CA59B824()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_13_30(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_13_2(v5);

  return v8(v7);
}

uint64_t sub_1CA59B914()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12(v3 & 1);
  }
}

uint64_t sub_1CA59BA54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA4E349C;

  return sub_1CA59B824();
}

uint64_t sub_1CA59BB10(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = OUTLINED_FUNCTION_116();
  if (v4(v3))
  {
    sub_1CA94C438("is not exactly", 14);
    OUTLINED_FUNCTION_1_2();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v5 = OUTLINED_FUNCTION_116();
  if (v6(v5))
  {
    sub_1CA94C438("is not on", 9);
    OUTLINED_FUNCTION_1_2();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v7 = OUTLINED_FUNCTION_116();
  if ((v8(v7) & 1) == 0)
  {
    v10 = WFDefaultLocalizedLabelForContentOperator();
    if (v10)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_1CA94C438("does not contain", 16);
  OUTLINED_FUNCTION_1_2();
  if (qword_1EDB9F5F0 != -1)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

LABEL_9:
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_7_24();
  v9 = OUTLINED_FUNCTION_18_18();
  v10 = OUTLINED_FUNCTION_4_36(v9, sel_localizedStringForKey_value_table_);

LABEL_10:
  sub_1CA94C3A8();

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA59BCF0()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_13_30(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_13_2(v5);

  return v8(v7);
}

uint64_t sub_1CA59BDE0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1CA59BEFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2AD9FC;

  return sub_1CA59BCF0();
}

uint64_t sub_1CA59BFB8()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_13_30(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_13_2(v5);

  return v8(v7);
}

uint64_t sub_1CA59C0A8()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12((v3 & 1) == 0);
  }
}

uint64_t sub_1CA59C1D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA4E42D0;

  return sub_1CA59BFB8();
}

uint64_t sub_1CA59C28C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA59C2C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA59C338(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1CA59C474(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v17 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v17))
      {
        v12 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v12 = v18;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        *(a1 + v8) = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *(a1 + v8) = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *(a1 + v8) = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v16 = (v13 >> v9) + 1;
      if (v8)
      {
        v19 = v13 & ~(-1 << v9);
        v20 = OUTLINED_FUNCTION_23();
        bzero(v20, v21);
        if (v8 == 3)
        {
          *a1 = v19;
          *(a1 + 2) = BYTE2(v19);
        }

        else if (v8 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      v14 = OUTLINED_FUNCTION_23();
      bzero(v14, v15);
      *a1 = v13;
      v16 = 1;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v8) = v16;
        break;
      case 2:
        *(a1 + v8) = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *(a1 + v8) = v16;
        break;
      default:
        return;
    }
  }
}

id sub_1CA59C6D8()
{
  v132 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9D0F70;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v139 = inited;
  v6 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1CA981310;
  *(v7 + 32) = @"DescriptionSummary";
  v8 = @"Description";
  v9 = @"DescriptionSummary";
  v10 = sub_1CA94C438("Adds the input to Instapaper.", 29);
  v135 = v11;
  v12 = sub_1CA94C438("Adds the input to Instapaper.", 29);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v140 = v16;
  v141 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v123 - v141;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v136 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v137 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v138 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v123 - v138;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v10, v135, v12, v14, 0, 0, v17, v21);
  v135 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v7 + 64) = v135;
  *(v7 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v24 = sub_1CA94C1E8();
  v25 = sub_1CA6B3784(v24);
  v26 = v139;
  v139[15] = v25;
  v26[18] = v6;
  v26[19] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1CA981350;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 48) = 1;
  *(v27 + 72) = v28;
  strcpy((v27 + 80), "ParameterKey");
  *(v27 + 93) = 0;
  *(v27 + 94) = -5120;
  *(v27 + 96) = 0x557475706E494657;
  *(v27 + 104) = 0xEA00000000004C52;
  *(v27 + 120) = MEMORY[0x1E69E6158];
  *(v27 + 128) = 0x6465726975716552;
  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = 1;
  *(v27 + 168) = v28;
  *(v27 + 176) = 0x7365707954;
  v29 = v28;
  *(v27 + 184) = 0xE500000000000000;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v27 + 216) = v131;
  *(v27 + 192) = &unk_1F4A07B48;
  v30 = @"Input";
  v31 = sub_1CA94C1E8();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[20] = v31;
  v26[23] = v32;
  v26[24] = @"InputPassthrough";
  *(v26 + 200) = 1;
  v26[28] = v29;
  v26[29] = @"Name";
  v33 = @"InputPassthrough";
  v34 = @"Name";
  v35 = sub_1CA94C438("Add to Instapaper (Action Name)", 31);
  v37 = v36;
  v38 = sub_1CA94C438("Add to Instapaper", 17);
  v40 = v39;
  v134 = &v123;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v123 - v141;
  sub_1CA948D98();
  v42 = v136;
  v43 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v123 - v138;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v35, v37, v38, v40, 0, 0, v41, v44);
  v47 = v139;
  v139[30] = v46;
  v47[33] = v135;
  v47[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v134 = swift_allocObject();
  *(v134 + 1) = xmmword_1CA981360;
  v133 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1CA981380;
  *(v48 + 32) = @"AlwaysShowsButton";
  *(v48 + 40) = 1;
  *(v48 + 64) = MEMORY[0x1E69E6370];
  *(v48 + 72) = @"Class";
  *(v48 + 80) = 0xD00000000000001DLL;
  *(v48 + 88) = 0x80000001CA99FB10;
  *(v48 + 104) = MEMORY[0x1E69E6158];
  *(v48 + 112) = @"Description";
  v129 = @"Class";
  v49 = @"Parameters";
  v50 = @"AlwaysShowsButton";
  v51 = @"Description";
  v52 = sub_1CA94C438("This action will save your input to the specified folder. Leaving this empty will save the input to Instapaper's Home folder. (WFInstapaperFolder)", 146);
  v126 = v53;
  v127 = v52;
  v54 = sub_1CA94C438("This action will save your input to the specified folder. Leaving this empty will save the input to Instapaper's Home folder.", 125);
  v125 = v55;
  v128 = &v123;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v123 - v141;
  sub_1CA948D98();
  v57 = [v42 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v138;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v48 + 120) = sub_1CA2F9F14(v127, v126, v54, v125, 0, 0, v56, &v123 - v58);
  v60 = v135;
  *(v48 + 144) = v135;
  *(v48 + 152) = @"Key";
  *(v48 + 160) = 0xD000000000000012;
  *(v48 + 168) = 0x80000001CA9B5230;
  *(v48 + 184) = MEMORY[0x1E69E6158];
  *(v48 + 192) = @"Label";
  v61 = @"Key";
  v62 = @"Label";
  v125 = v61;
  v126 = v62;
  v127 = sub_1CA94C438("Folder (WFInstapaperFolder)", 27);
  v124 = v63;
  v64 = sub_1CA94C438("Folder", 6);
  v66 = v65;
  v128 = &v123;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v123 - v141;
  sub_1CA948D98();
  v68 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v127, v124, v64, v66, 0, 0, v67, &v123 - v58);
  *(v48 + 224) = v60;
  *(v48 + 200) = v70;
  v71 = sub_1CA94C368();
  v72 = MEMORY[0x1E69E6158];
  *(v48 + 264) = MEMORY[0x1E69E6158];
  *(v48 + 232) = v71;
  *(v48 + 240) = 1701736270;
  *(v48 + 248) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  v128 = v73;
  v127 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v74 = sub_1CA94C1E8();
  v75 = sub_1CA2F864C(v74);
  v134[4] = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1CA981300;
  *(v76 + 32) = @"AutocapitalizationType";
  *(v76 + 40) = 1701736270;
  *(v76 + 48) = 0xE400000000000000;
  v77 = v129;
  *(v76 + 64) = v72;
  *(v76 + 72) = v77;
  *(v76 + 80) = 0xD000000000000014;
  *(v76 + 88) = 0x80000001CA99B500;
  *(v76 + 104) = v72;
  *(v76 + 112) = @"DisableAutocorrection";
  *(v76 + 120) = 1;
  v78 = v125;
  *(v76 + 144) = MEMORY[0x1E69E6370];
  *(v76 + 152) = v78;
  *(v76 + 160) = 0x557475706E494657;
  *(v76 + 168) = 0xEA00000000004C52;
  *(v76 + 184) = v72;
  *(v76 + 192) = @"KeyboardType";
  *(v76 + 200) = 5001813;
  *(v76 + 208) = 0xE300000000000000;
  v79 = v126;
  *(v76 + 224) = v72;
  *(v76 + 232) = v79;
  v80 = @"AutocapitalizationType";
  v81 = @"DisableAutocorrection";
  v82 = @"KeyboardType";
  v129 = sub_1CA94C438("URL (WFInputURL)", 16);
  v126 = v83;
  v125 = sub_1CA94C438("URL", 3);
  v85 = v84;
  v130 = &v123;
  MEMORY[0x1EEE9AC00](v125);
  v86 = v141;
  sub_1CA948D98();
  v87 = v136;
  v88 = [v136 bundleURL];
  v124 = &v123;
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v123 - v138;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 240) = sub_1CA2F9F14(v129, v126, v125, v85, 0, 0, &v123 - v86, v89);
  v91 = v135;
  *(v76 + 264) = v135;
  *(v76 + 272) = @"Placeholder";
  v92 = @"Placeholder";
  v129 = sub_1CA94C438("URL (WFInputURL)", 16);
  v126 = v93;
  v94 = sub_1CA94C438("URL", 3);
  v96 = v95;
  v130 = &v123;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v123 - v86;
  sub_1CA948D98();
  v98 = [v87 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = v138;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 280) = sub_1CA2F9F14(v129, v126, v94, v96, 0, 0, v97, &v123 - v99);
  *(v76 + 304) = v91;
  *(v76 + 312) = @"TextContentType";
  *(v76 + 344) = MEMORY[0x1E69E6158];
  *(v76 + 320) = 5001813;
  *(v76 + 328) = 0xE300000000000000;
  v101 = @"TextContentType";
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  v104 = v134;
  v134[5] = v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v106 = v139;
  v139[35] = v104;
  v106[38] = v105;
  v106[39] = @"ParameterSummary";
  v107 = @"ParameterSummary";
  v108 = sub_1CA94C438("Add ${WFInputURL} (Parameter Summary)", 37);
  v110 = v109;
  v111 = sub_1CA94C438("Add ${WFInputURL}", 17);
  v113 = v112;
  v135 = &v123;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v123 - v141;
  sub_1CA948D98();
  v115 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v108, v110, v111, v113, 0, 0, v114, &v123 - v99);
  v118 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v119 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v120 = v139;
  v139[40] = v118;
  v120[43] = v119;
  v120[44] = @"RequiredResources";
  v120[48] = v131;
  v120[45] = &unk_1F4A07B78;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v121 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t AggregatedEntry.init<A>(entry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = (*(v7 + 16))(v9 - v8, a1, a2);
  if (OUTLINED_FUNCTION_14_25(v11, v12, v13, &type metadata for AggregatedEntry))
  {
    v14 = OUTLINED_FUNCTION_7_36();
    v3(v14);
    v15 = v26;
    v16 = v27;
LABEL_7:
    result = (v3)(v10, a2);
    *a3 = v15;
    *(a3 + 8) = v16;
    return result;
  }

  v17 = sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
  if (OUTLINED_FUNCTION_14_25(v17, v18, v19, v17))
  {
    v20 = OUTLINED_FUNCTION_7_36();
    v3(v20);
    v16 = 0;
    v15 = v26;
    goto LABEL_7;
  }

  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
  if (OUTLINED_FUNCTION_14_25(v21, v22, v23, v21))
  {
    v24 = OUTLINED_FUNCTION_7_36();
    v3(v24);
    v15 = v26;
    v16 = 1;
    goto LABEL_7;
  }

  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

uint64_t sub_1CA59D874(uint64_t *a1, char *a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6278AC();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1CA94C218();
  sub_1CA5A2154(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1CA59D910()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v6 = *v0;
  v7 = v6;
  sub_1CA5A3E5C(&v7, &v5);
  MEMORY[0x1CCAA1300](58, 0xE100000000000000);
  MEMORY[0x1CCAA1300](v1, v2);
  MEMORY[0x1CCAA1300](58, 0xE100000000000000);
  sub_1CA5A3264();
  v5 = sub_1CA94C778();
  v3 = sub_1CA94D798();
  MEMORY[0x1CCAA1300](v3);

  return v6;
}

id AggregatedEntry.namedQueryInfo.getter()
{
  OUTLINED_FUNCTION_30_17();
  if (v1)
  {
    return [*v0 namedQueryInfo];
  }

  else
  {
    return 0;
  }
}

__n128 TopHitBadge.init(id:icon:position:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  result = *a1;
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = v4;
  return result;
}

CGPoint __swiftcall TopHitBadge.Position.centerPoint(for:in:)(CGSize a1, CGSize in)
{
  v3 = a1.height * 0.5;
  v4 = in.width - a1.width * 0.5;
  v5 = in.height - v3;
  switch(*v2)
  {
    case 1:
      v6 = v4 + 1.0;
      v7 = v3 + -1.0;
      break;
    case 2:
      v6 = v3 + -1.0;
      v8 = 1.0;
      goto LABEL_5;
    case 3:
      v8 = 1.0;
      v6 = v4 + 1.0;
LABEL_5:
      v7 = v5 + v8;
      break;
    default:
      v6 = v3 + -1.0;
      v7 = v3 + -1.0;
      break;
  }

  result.y = v7;
  result.x = v6;
  return result;
}

uint64_t TopHitBadge.Position.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t TopHitIconMask.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t AggregatedEntry.name.getter()
{
  if (*(v0 + 8))
  {
    return WFExecutableAppShortcut.name.getter();
  }

  v2 = [*v0 name];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  return OUTLINED_FUNCTION_52_0();
}

void AggregatedEntry.iconMask.getter(BOOL *a1@<X8>)
{
  OUTLINED_FUNCTION_30_17();
  if (v3)
  {
    v4 = [*v1 entityInfo];
    v5 = v4;
    if (v4)
    {
    }

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

uint64_t AggregatedEntry.asEntry<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = sub_1CA94D098();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_1();
  v50 = v8;
  OUTLINED_FUNCTION_31_2();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v46 - v16;
  OUTLINED_FUNCTION_31_2();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_1();
  v48 = v22;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  v26 = *(v2 + 8);
  v52 = *v2;
  v53 = v26;
  v27 = v52;
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_27_18(v20, 0);
    v28 = *(v21 + 32);
    v28(v25, v20, a1);
    v29 = a2;
    v30 = v25;
LABEL_9:
    v28(v29, v30, a1);
    v43 = 0;
    return OUTLINED_FUNCTION_27_18(a2, v43);
  }

  v47 = a2;
  OUTLINED_FUNCTION_27_18(v20, 1);
  v31 = *(v6 + 8);
  v31(v20, v51);
  v32 = (v6 + 32);
  v52 = v27;
  if (v26)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
    v33 = v27;
    v34 = swift_dynamicCast();
    OUTLINED_FUNCTION_27_18(v12, v34 ^ 1u);
    v35 = *v32;
    v36 = v49;
    v37 = v49;
    v38 = v12;
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
    v39 = v27;
    v40 = swift_dynamicCast();
    OUTLINED_FUNCTION_27_18(v15, v40 ^ 1u);
    v35 = *v32;
    v37 = v49;
    v38 = v15;
    v36 = v49;
  }

  v41 = v51;
  v35(v37, v38, v51);
  v42 = v50;
  v35(v50, v36, v41);
  if (__swift_getEnumTagSinglePayload(v42, 1, a1) != 1)
  {
    v28 = *(v21 + 32);
    v44 = v48;
    v28(v48, v42, a1);
    a2 = v47;
    v29 = v47;
    v30 = v44;
    goto LABEL_9;
  }

  v31(v42, v41);
  v43 = 1;
  a2 = v47;
  return OUTLINED_FUNCTION_27_18(a2, v43);
}

uint64_t static AggregatedEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
  v5 = v3;
  v6 = v2;
  v7 = sub_1CA94CFD8();

  return v7 & 1;
}

uint64_t AggregatedEntry.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  sub_1CA94CFE8();
  return sub_1CA94D968();
}

uint64_t sub_1CA59E19C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_1CA94D918();
  AggregatedEntry.hash(into:)(v4);
  return sub_1CA94D968();
}

uint64_t sub_1CA59E1EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA59E244();
  *a1 = result;
  return result;
}

uint64_t sub_1CA59E244()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA59E2B8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1CA94A0A8();
}

uint64_t sub_1CA59E328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A58, &qword_1CA98C7A8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1CA59E470(v4);
}

uint64_t sub_1CA59E3FC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446978, &qword_1CA98C2F0);
  sub_1CA94A078();
  return swift_endAccess();
}

uint64_t sub_1CA59E470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A58, &qword_1CA98C7A8);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v10 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446978, &qword_1CA98C2F0);
  sub_1CA94A088();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_20_0();
  return v8(v7);
}

uint64_t AggregatedRunnableDataSource.__allocating_init(dataSources:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_87();
  AggregatedRunnableDataSource.init(dataSources:)(v1);
  return v0;
}

uint64_t AggregatedRunnableDataSource.init(dataSources:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446978, &qword_1CA98C2F0);
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource__collections;
  v10 = MEMORY[0x1E69E7CC0];
  v18[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446980, &qword_1CA98C2F8);
  sub_1CA94A068();
  (*(v5 + 32))(v1 + v9, v8, v3);
  *(v1 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_cancellables) = v10;
  *(v1 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_dataSources) = a1;
  v11 = *(a1 + 16);
  result = sub_1CA94C218();
  v13 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    if (v11 == v13)
    {

      sub_1CA59F5A8();
      return v1;
    }

    if (v13 >= *(a1 + 16))
    {
      break;
    }

    ++v13;
    v15 = *i;
    ObjectType = swift_getObjectType();
    v17 = swift_unknownObjectRetain();
    sub_1CA59E768(v17, ObjectType, v15);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

double sub_1CA59E768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1CA949FD8();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;
  swift_getAssociatedConformanceWitness();

  sub_1CA94A108();

  (*(v7 + 8))(v10, AssociatedTypeWitness);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A78, &qword_1CA98C7C0);
  sub_1CA5A3EC4();
  sub_1CA949F98();
  swift_endAccess();

  return result;
}

double sub_1CA59E96C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CA59F5A8();
  }

  return result;
}

void sub_1CA59E9C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_1();
  v66 = v10;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v55 - v12;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v62 = *MEMORY[0x1E69E1128];
  sub_1CA949C58();
  sub_1CA94C218();
  v16 = sub_1CA949F68();
  v17 = sub_1CA94CC38();

  v18 = os_log_type_enabled(v16, v17);
  v63 = v6;
  v58 = v8;
  v65 = a1;
  if (v18)
  {
    OUTLINED_FUNCTION_29_0();
    v19 = a1;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v68 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1CA26B54C(v19, a2, &v68);
    _os_log_impl(&dword_1CA256000, v16, v17, "Reloading the runnable data sources with reason: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();

    v61 = *(v58 + 8);
  }

  else
  {

    v61 = *(v8 + 8);
  }

  v61(v15, v6);
  v23 = *(v57 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_dataSources);
  v24 = *(v23 + 16);
  if (!v24)
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_25:
    sub_1CA59EF94(v67);
    v49 = v48;

    sub_1CA59E2B8(v49);
    v50 = v56;
    sub_1CA949C58();

    v51 = sub_1CA949F68();
    v52 = sub_1CA94CC38();
    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_29_0();
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      v54 = *(sub_1CA59E244() + 16);

      *(v53 + 4) = v54;

      _os_log_impl(&dword_1CA256000, v51, v52, "Loaded %ld collections.", v53, 0xCu);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {
    }

    v61(v50, v63);
    return;
  }

  v64 = a2;
  v60 = v58 + 8;
  v25 = (v23 + 40);
  v67 = MEMORY[0x1E69E7CC0];
  *&v22 = 138412290;
  v59 = v22;
  while (1)
  {
    v27 = *(v25 - 1);
    v26 = *v25;
    ObjectType = swift_getObjectType();
    v29 = *(v26 + 40);
    swift_unknownObjectRetain();
    v29(v65, v64, ObjectType, v26);
    if (v3)
    {
      sub_1CA949C58();
      v30 = v3;
      v31 = sub_1CA949F68();
      v32 = sub_1CA94CC18();

      if (os_log_type_enabled(v31, v32))
      {
        OUTLINED_FUNCTION_29_0();
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = v59;
        v35 = v3;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v36;
        *v34 = v36;
        _os_log_impl(&dword_1CA256000, v31, v32, "Failed to reload aggregated entries due to: %@", v33, 0xCu);
        sub_1CA532E30(v34, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v61(v66, v63);
      v3 = 0;
      goto LABEL_22;
    }

    v37 = sub_1CA59F944(v27, ObjectType, v26);
    v38 = v37[2];
    v39 = *(v67 + 16);
    if (__OFADD__(v39, v38))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v67;
    if (!isUniquelyReferenced_nonNull_native || (v42 = *(v67 + 24) >> 1, v42 < v39 + v38))
    {
      sub_1CA2E7134();
      v41 = v43;
      v42 = *(v43 + 24) >> 1;
    }

    v44 = v37[2];
    v67 = v41;
    if (v44)
    {
      if (v42 - *(v41 + 16) < v38)
      {
        goto LABEL_31;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
      swift_arrayInitWithCopy();

      if (v38)
      {
        v45 = *(v67 + 16);
        v46 = __OFADD__(v45, v38);
        v47 = v45 + v38;
        if (v46)
        {
          goto LABEL_32;
        }

        *(v67 + 16) = v47;
      }
    }

    else
    {

      if (v38)
      {
        goto LABEL_30;
      }
    }

    swift_unknownObjectRelease();
LABEL_22:
    v25 += 2;
    if (!--v24)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1CA59EF94(uint64_t a1)
{
  v65 = sub_1CA949F78();
  v2 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v60 = v8;
  if (v9)
  {
    v68 = v2;
    v73 = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v9, 0, v3, v4, v5, v6);
    v10 = v73;
    v67 = a1;
    v11 = a1 + 72;
    do
    {
      v12 = *(v11 - 32);
      v13 = *(v11 - 24);
      v14 = *(v11 - 16);
      v15 = *(v11 - 8);
      v71 = *(v11 - 40);
      v72 = v12;
      v16 = v15;
      sub_1CA94C218();
      swift_bridgeObjectRetain_n();
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](58, 0xE100000000000000);
      MEMORY[0x1CCAA1300](v13, v14);
      MEMORY[0x1CCAA1300](58, 0xE100000000000000);
      sub_1CA5A3264();
      v70 = sub_1CA94C778();
      v17 = sub_1CA94D798();
      MEMORY[0x1CCAA1300](v17);

      v22 = v71;
      v23 = v72;
      v73 = v10;
      v25 = *(v10 + 16);
      v24 = *(v10 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1CA271524(v24 > 1, v25 + 1, 1, v18, v19, v20, v21);
        v10 = v73;
      }

      v11 += 48;
      *(v10 + 16) = v25 + 1;
      v26 = v10 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      --v9;
    }

    while (v9);
    v8 = v60;
    a1 = v67;
    v2 = v68;
  }

  sub_1CA94C218();
  sub_1CA94C218();
  v27 = a1;
  v28 = 0;
  v29 = sub_1CA5A0A6C(v10, v27);
  sub_1CA94C218();
  v71 = sub_1CA42AFCC(v29);
  sub_1CA59D874(&v71, v10);

  v30 = 0;
  v31 = v71;
  v66 = *(v71 + 16);
  v32 = *MEMORY[0x1E69E1128];
  v62 = (v2 + 8);
  v63 = v32;
  v58 = MEMORY[0x1E69E7CC0];
  *&v33 = 136315394;
  v59 = v33;
  v64 = v71;
LABEL_8:
  v34 = 48 * v30;
  while (1)
  {
    if (v66 == v30)
    {

      return;
    }

    if (v30 >= *(v31 + 16))
    {
      break;
    }

    v67 = v34;
    v68 = v30;
    v35 = *(v31 + v34 + 32);
    v36 = *(v31 + v34 + 40);
    v38 = *(v31 + v34 + 48);
    v37 = *(v31 + v34 + 56);
    v28 = *(v31 + v34 + 64);
    v39 = *(v31 + v34 + 72);
    v40 = *(v39 + 16);
    v41 = v28;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    if (v40)
    {
      v50 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CA2B9108(0, *(v50 + 16) + 1, 1);
        v50 = v73;
      }

      v52 = v68;
      v53 = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1CA2B9108(v54 > 1, v55 + 1, 1);
        v52 = v68;
        v53 = v73;
      }

      v30 = v52 + 1;
      *(v53 + 16) = v55 + 1;
      v58 = v53;
      v56 = (v53 + 48 * v55);
      v56[4] = v35;
      v56[5] = v36;
      v56[6] = v38;
      v56[7] = v37;
      v56[8] = v28;
      v56[9] = v39;
      v8 = v60;
      goto LABEL_8;
    }

    sub_1CA949C58();
    sub_1CA94C218();
    sub_1CA94C218();
    v28 = v41;
    sub_1CA94C218();
    v42 = sub_1CA949F68();
    v43 = sub_1CA94CC38();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v28;
      v28 = v45;
      v70 = v45;
      *v44 = v59;
      sub_1CA94C218();
      v46 = sub_1CA26B54C(v38, v37, &v70);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      v71 = v35;
      v72 = v36;
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](58, 0xE100000000000000);
      MEMORY[0x1CCAA1300](v38, v37);
      MEMORY[0x1CCAA1300](58, 0xE100000000000000);
      sub_1CA5A3264();
      v69 = sub_1CA94C778();
      v47 = sub_1CA94D798();
      MEMORY[0x1CCAA1300](v47);

      v48 = sub_1CA26B54C(v71, v72, &v70);

      *(v44 + 14) = v48;
      _os_log_impl(&dword_1CA256000, v42, v43, "Got an empty collection: %s - %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCAA4BF0](v28, -1, -1);
      v49 = v44;
      v8 = v60;
      MEMORY[0x1CCAA4BF0](v49, -1, -1);

      (*v62)(v8, v65);
    }

    else
    {

      (*v62)(v8, v65);
    }

    v34 = v67 + 48;
    v30 = v68 + 1;
    v31 = v64;
  }

  __break(1u);

  __break(1u);
}

void sub_1CA59F5A8()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_1();
  v39 = v6;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v36 = *MEMORY[0x1E69E1128];
  sub_1CA949C58();
  v10 = sub_1CA949F68();
  v11 = sub_1CA94CC38();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1CA256000, v10, v11, "Reloading the runnable collections", v12, 2u);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  v13 = *(v4 + 8);
  v40 = v4 + 8;
  v41 = v2;
  v37 = v13;
  v13(v9, v2);
  v14 = 0;
  v38 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_dataSources);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v18 = (v15 + 40);
  while (v16 != v14)
  {
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v19 = *v18;
    ObjectType = swift_getObjectType();
    v21 = swift_unknownObjectRetain();
    v22 = sub_1CA59F944(v21, ObjectType, v19);
    swift_unknownObjectRelease();
    v23 = v22[2];
    v24 = *(v17 + 16);
    if (__OFADD__(v24, v23))
    {
      goto LABEL_22;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v23 > *(v17 + 24) >> 1)
    {
      sub_1CA2E7134();
      v17 = v25;
    }

    if (v22[2])
    {
      if ((*(v17 + 24) >> 1) - *(v17 + 16) < v23)
      {
        goto LABEL_24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
      swift_arrayInitWithCopy();

      if (v23)
      {
        v26 = *(v17 + 16);
        v27 = __OFADD__(v26, v23);
        v28 = v26 + v23;
        if (v27)
        {
          goto LABEL_25;
        }

        *(v17 + 16) = v28;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_23;
      }
    }

    v18 += 2;
    ++v14;
  }

  sub_1CA59EF94(v17);
  v30 = v29;

  sub_1CA59E2B8(v30);
  v31 = v39;
  sub_1CA949C58();

  v32 = sub_1CA949F68();
  v33 = sub_1CA94CC38();
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_29_0();
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    v35 = *(sub_1CA59E244() + 16);

    *(v34 + 4) = v35;

    _os_log_impl(&dword_1CA256000, v32, v33, "Reloaded %ld collections.", v34, 0xCu);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  else
  {
  }

  v37(v31, v41);
}

uint64_t *sub_1CA59F944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = (*(a3 + 32))(a2, a3);
  v13[2] = a2;
  v13[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for RunnableCollection(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v8 = sub_1CA94C758();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
  WitnessTable = swift_getWitnessTable();
  sub_1CA3E4888(sub_1CA5A3DAC, v13, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  OUTLINED_FUNCTION_87();

  return &v14;
}

uint64_t sub_1CA59FA90@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v19 = *a1;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v17 = a2;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CA94C758();
  sub_1CA94C218();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1CA3E4888(sub_1CA5A3DCC, v16, v8, &type metadata for AggregatedEntry, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for RunnableCollection(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  sub_1CA5A3310();
  RunnableCollection.with<A>(_:)(v11, a4);
}

uint64_t sub_1CA59FC0C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a1, AssociatedTypeWitness);
  return AggregatedEntry.init<A>(entry:)(v8, AssociatedTypeWitness, a4);
}

uint64_t sub_1CA59FD08(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 25) = *(a1 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1CA59FD34, 0, 0);
}

uint64_t sub_1CA59FD34()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 48) = OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource_dataSources;
  sub_1CA94C838();
  *(v0 + 56) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v2 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA59FDCC, v2, v1);
}

uint64_t sub_1CA59FDCC()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[6];
  v2 = v0[4];

  v0[8] = *(v2 + v1);

  return MEMORY[0x1EEE6DFA0](sub_1CA59FE3C, 0, 0);
}

void sub_1CA59FE3C()
{
  OUTLINED_FUNCTION_39_1();
  v1 = v0[8];
  v2 = *(v1 + 16);
  v0[9] = v2;
  v0[10] = 0;
  if (!v2)
  {
    v5 = v0[5];
    sub_1CA5A1D0C();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_35_13(v6, v7);
    OUTLINED_FUNCTION_5();
    v8 = v5;
    OUTLINED_FUNCTION_26_18();

    __asm { BRAA            X0, X16 }
  }

  if (*(v1 + 16))
  {
    v0[11] = *(v1 + 32);
    swift_getObjectType();
    OUTLINED_FUNCTION_31_10();
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_6_40(v3);
    OUTLINED_FUNCTION_26_18();

    sub_1CA5A01D0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CA59FF60()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA5A0054, 0, 0);
}

uint64_t sub_1CA5A0054()
{
  OUTLINED_FUNCTION_39_1();
  v1 = v0[13];
  result = swift_unknownObjectRelease();
  if (v1)
  {
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_26_18();

    __asm { BRAA            X2, X16 }
  }

  v5 = v0[9];
  v6 = v0[10] + 1;
  v0[10] = v6;
  if (v6 == v5)
  {
    v7 = v0[5];
    sub_1CA5A1D0C();
    v8 = swift_allocError();
    OUTLINED_FUNCTION_35_13(v8, v9);
    OUTLINED_FUNCTION_5();
    v10 = v7;
    OUTLINED_FUNCTION_26_18();

    __asm { BRAA            X0, X16 }
  }

  v13 = v0[8];
  if (v6 >= *(v13 + 16))
  {
    __break(1u);
  }

  else
  {
    v0[11] = *(v13 + 16 * v6 + 32);
    swift_getObjectType();
    OUTLINED_FUNCTION_31_10();
    swift_unknownObjectRetain();
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_6_40(v14);
    OUTLINED_FUNCTION_26_18();

    return sub_1CA5A01D0();
  }

  return result;
}

uint64_t sub_1CA5A01D0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 16) = v5;
  v6 = sub_1CA949F78();
  *(v0 + 40) = v6;
  *(v0 + 48) = *(v6 - 8);
  *(v0 + 56) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 64) = AssociatedTypeWitness;
  v8 = sub_1CA94D098();
  *(v0 + 72) = v8;
  *(v0 + 80) = *(v8 - 8);
  *(v0 + 88) = swift_task_alloc();
  *(v0 + 96) = *(AssociatedTypeWitness - 8);
  v9 = swift_task_alloc();
  v10 = *v2;
  *(v0 + 104) = v9;
  *(v0 + 112) = v10;
  *(v0 + 160) = *(v2 + 8);
  sub_1CA94C838();
  *(v0 + 120) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v12 = sub_1CA94C7C8();
  *(v0 + 128) = v12;
  *(v0 + 136) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1CA5A03B8, v12, v11);
}

uint64_t sub_1CA5A03B8()
{
  OUTLINED_FUNCTION_59_0();
  v1 = v0[11];
  v2 = v0[8];
  AggregatedEntry.asEntry<A>()(v2, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[9];

    (*(v4 + 8))(v3, v5);

    OUTLINED_FUNCTION_2_4();

    return v6(0);
  }

  else
  {
    v13 = v0[4];
    (*(v0[12] + 32))(v0[13], v0[11], v0[8]);
    v12 = (*(v13 + 48) + **(v13 + 48));
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_1CA5A05AC;
    v9 = v0[13];
    v10 = v0[3];
    v11 = v0[4];

    return v12(v9, v10, v11);
  }
}

uint64_t sub_1CA5A05AC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  if (v0)
  {

    v9 = v5[16];
    v10 = v5[17];
    v11 = sub_1CA5A0768;
  }

  else
  {
    v5[19] = v3;
    v9 = v5[16];
    v10 = v5[17];
    v11 = sub_1CA5A06C4;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1CA5A06C4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 152);

  v2 = OUTLINED_FUNCTION_20_0();
  v3(v2);

  OUTLINED_FUNCTION_2_4();

  return v4(v1);
}

void sub_1CA5A0768()
{
  OUTLINED_FUNCTION_39_1();

  sub_1CA949C58();
  v1 = sub_1CA949F68();
  v2 = sub_1CA94CC18();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1CA256000, v1, v2, "Failed to create an action for top hit entry", v7, 2u);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  (*(v6 + 8))(v4, v5);
  v8 = OUTLINED_FUNCTION_20_0();
  v9(v8);

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_23_0();

  __asm { BRAA            X2, X16 }
}

uint64_t AggregatedRunnableDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit28AggregatedRunnableDataSource__collections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446978, &qword_1CA98C2F0);
  OUTLINED_FUNCTION_7_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t AggregatedRunnableDataSource.__deallocating_deinit()
{
  AggregatedRunnableDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA5A09A4()
{
  OUTLINED_FUNCTION_0();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA59FD08(v1);
}

uint64_t sub_1CA5A0A2C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AggregatedRunnableDataSource(0);
  result = sub_1CA949FE8();
  *a2 = result;
  return result;
}

uint64_t sub_1CA5A0A6C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A68, &qword_1CA98C7B0);
    v6 = sub_1CA94D688();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v9 = v6;
  sub_1CA5A1D78(a1, a2, 1, &v9);
  v7 = v9;
  if (v2)
  {
  }

  return v7;
}

uint64_t sub_1CA5A0B20()
{
  OUTLINED_FUNCTION_0();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  sub_1CA94C838();
  v0[34] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v8 = sub_1CA94C7C8();
  v0[35] = v8;
  v0[36] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CA5A0BB8, v8, v7);
}

uint64_t sub_1CA5A0BB8()
{
  OUTLINED_FUNCTION_59_0();
  v1 = v0[33];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1CA94C368();
  v0[37] = v3;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1CA5A0D0C;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4469A0, &qword_1CA98C318);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1CA5A16B8;
  v0[21] = &block_descriptor_24;
  v0[22] = v4;
  [ObjCClassFromMetadata disambiguationEntriesForCollection:v3 limit:v1 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA5A0D0C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 304) = v4;
  v5 = v3[36];
  v6 = v3[35];
  if (v4)
  {
    v7 = sub_1CA5A14C8;
  }

  else
  {
    v7 = sub_1CA5A0E30;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CA5A0E30()
{
  v1 = v0[26];
  v2 = v0[37];
  v0[39] = v1;

  v3 = MEMORY[0x1E69E7CC0];
  v0[26] = MEMORY[0x1E69E7CC0];
  v4 = sub_1CA25B410(v1);
  v0[40] = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = *MEMORY[0x1E69E0FB0];
      v0[42] = 0;
      v0[43] = v3;
      v0[41] = v5;
      v6 = v0[39];
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCAA22D0](0);
      }

      else
      {
        v7 = *(v6 + 32);
      }

      v11 = v7;
      v0[44] = v7;
      v0[10] = v0;
      v0[15] = v0 + 27;
      v12 = OUTLINED_FUNCTION_3_45();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
      OUTLINED_FUNCTION_1_43(v13);
      OUTLINED_FUNCTION_2_51(COERCE_DOUBLE(1107296256));
      v0[20] = v14;
      v0[21] = &block_descriptor_8;
      v0[22] = v12;
      OUTLINED_FUNCTION_25_16(v11, sel__getActionRepresentationTakingInput_context_completionHandler_);
      v4 = (v0 + 10);
    }

    return MEMORY[0x1EEE6DEC8](v4);
  }

  else
  {

    OUTLINED_FUNCTION_2_4();
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1CA5A0FDC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 112);
  v2[45] = v5;
  if (v5)
  {
    v6 = v2[44];

    v7 = v2[35];
    v8 = v2[36];
    v9 = sub_1CA5A1538;
  }

  else
  {
    v7 = v2[35];
    v8 = v2[36];
    v9 = sub_1CA5A10F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CA5A10F4()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 216);
  v2 = sub_1CA94C368();
  v3 = [v1 serializedParameterStateForKey_];

  v4 = *(v0 + 352);
  if (v3)
  {
    v42 = v1;
    v5 = (v0 + 208);
    v6 = [v4 icon];

    if (v6 && (v7 = [v6 wfIcon], v6, v7))
    {
    }

    else
    {
      v8 = sub_1CA5A30FC(*(v0 + 352), &selRef_associatedAppBundleIdentifier);
      if (v9)
      {
        v10 = v8;
        v11 = v9;
        sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
        v12 = v10;
        v13 = v11;
      }

      else
      {
        sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
        v12 = sub_1CA94C3A8();
      }

      v7 = sub_1CA409428(v12, v13);
    }

    v14 = *(v0 + 352);
    v15 = v7;
    v16 = [v14 uniqueIdentifier];

    v17 = sub_1CA94C3A8();
    v19 = v18;

    v20 = sub_1CA5A30FC(v14, &selRef_subtitle);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
    }

    else
    {
      v24 = [*(v0 + 352) title];
      v22 = sub_1CA94C3A8();
      v23 = v25;
    }

    objc_allocWithZone(MEMORY[0x1E69E09E8]);
    swift_unknownObjectRetain();
    v26 = sub_1CA5A1C54(v17, v19, v22, v23, v15, 0, v3);
    MEMORY[0x1CCAA1490]();
    if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    v27 = *(v0 + 352);
    sub_1CA94C6E8();

    swift_unknownObjectRelease();
  }

  else
  {

    v5 = (v0 + 344);
  }

  v28 = *v5;
  v29 = OUTLINED_FUNCTION_32_13();
  if (v30)
  {

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 336) = v29;
  *(v0 + 344) = v28;
  v33 = *(v0 + 312);
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x1CCAA22D0]();
  }

  else
  {
    v34 = *(v33 + 8 * v29 + 32);
  }

  v35 = v34;
  *(v0 + 352) = v34;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 216;
  v36 = OUTLINED_FUNCTION_3_45();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
  OUTLINED_FUNCTION_1_43(v37);
  OUTLINED_FUNCTION_2_51(COERCE_DOUBLE(1107296256));
  *(v0 + 160) = v38;
  *(v0 + 168) = &block_descriptor_8;
  *(v0 + 176) = v36;
  OUTLINED_FUNCTION_25_16(v35, sel__getActionRepresentationTakingInput_context_completionHandler_);
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1CA5A14C8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 296);

  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA5A1538(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[45];
  swift_willThrow();

  v4 = OUTLINED_FUNCTION_32_13();
  if (v5)
  {
    v6 = v1[43];

    OUTLINED_FUNCTION_2_4();

    return v7(v6);
  }

  else
  {
    v1[42] = v4;
    v9 = v1[39];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCAA22D0]();
    }

    else
    {
      v10 = *(v9 + 8 * v4 + 32);
    }

    v11 = v10;
    v1[44] = v10;
    v1[10] = v1;
    v1[15] = v1 + 27;
    v12 = OUTLINED_FUNCTION_3_45();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444FD0, &qword_1CA98C320);
    OUTLINED_FUNCTION_1_43(v13);
    OUTLINED_FUNCTION_2_51(COERCE_DOUBLE(1107296256));
    v1[20] = v14;
    v1[21] = &block_descriptor_8;
    v1[22] = v12;
    OUTLINED_FUNCTION_25_16(v11, sel__getActionRepresentationTakingInput_context_completionHandler_);

    return MEMORY[0x1EEE6DEC8](v1 + 10);
  }
}

uint64_t sub_1CA5A16B8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC446A60, 0x1E69E0DC0);
    sub_1CA94C658();

    return sub_1CA35FF84();
  }
}

uint64_t sub_1CA5A180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_1CA94C838();
  v6[8] = sub_1CA94C828();
  v8 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA5A18AC, v8, v7);
}

uint64_t sub_1CA5A18AC()
{
  OUTLINED_FUNCTION_59_0();
  v1 = v0[7];
  v2 = v0[6];

  v0[9] = _Block_copy(v2);
  swift_getObjCClassMetadata();
  sub_1CA94C3A8();
  v0[10] = v3;
  sub_1CA94C3A8();
  v0[11] = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1CA5A19BC;
  OUTLINED_FUNCTION_52_0();

  return sub_1CA5A0B20();
}

uint64_t sub_1CA5A19BC(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  v9 = *(v8 + 56);
  v10 = *v2;
  OUTLINED_FUNCTION_13();
  *v11 = v10;

  if (v3)
  {
    v12 = sub_1CA948AC8();

    v13 = v12;
  }

  else if (a1)
  {
    sub_1CA25B3D0(0, &qword_1EC446A50, 0x1E69E09E8);
    v14 = sub_1CA94C648();

    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(v6 + 72);
  v16 = OUTLINED_FUNCTION_52_0();
  v17(v16);

  _Block_release(v15);
  OUTLINED_FUNCTION_5();

  return v18();
}

id RuntimeRunnableDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RuntimeRunnableDataSource.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuntimeRunnableDataSource();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RuntimeRunnableDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuntimeRunnableDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA5A1C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v11 = sub_1CA94C368();

  v12 = sub_1CA94C368();

  v13 = [v7 initWithIdentifier:v11 name:v12 entryIcon:a5 accessoryIcon:a6 serializedParameterState:a7];

  swift_unknownObjectRelease();
  return v13;
}

unint64_t sub_1CA5A1D0C()
{
  result = qword_1EC446998;
  if (!qword_1EC446998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446998);
  }

  return result;
}

uint64_t sub_1CA5A1D78(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v4 = a2;
  v5 = 0;
  v6 = 0;
  v60 = (a1 + 40);
  while (1)
  {
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
LABEL_28:
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = *(v4 + 16);
    if (v6 == v8)
    {
      goto LABEL_28;
    }

    if (v6 >= v8)
    {
      goto LABEL_30;
    }

    v10 = *(v60 - 1);
    v9 = *v60;
    v11 = *(v4 + v5 + 64);
    v12 = *(v4 + v5 + 72);
    v13 = *(v4 + v5 + 56);
    v52 = *(v4 + v5 + 48);
    v14 = *(v4 + v5 + 32);
    v15 = *(v4 + v5 + 40);
    sub_1CA94C218();
    v56 = v15;
    sub_1CA94C218();
    sub_1CA94C218();
    v16 = v11;
    sub_1CA94C218();
    if (!v9)
    {
      goto LABEL_28;
    }

    v54 = v6;
    v55 = v5;
    v17 = *a4;
    v19 = sub_1CA271BF8(v10, v9);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_31;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if ((a3 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A70, &qword_1CA98C7B8);
        sub_1CA94D598();
      }
    }

    else
    {
      sub_1CA5C397C(v22, a3 & 1);
      v24 = sub_1CA271BF8(v10, v9);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_37;
      }

      v19 = v24;
    }

    v26 = *a4;
    if (v23)
    {
      v27 = (v26[7] + 48 * v19);
      v28 = v27[5];
      v29 = *(v12 + 16);
      v30 = *(v28 + 16);
      if (__OFADD__(v30, v29))
      {
        goto LABEL_32;
      }

      v58 = v16;
      v53 = *a4;
      v31 = v27[1];
      v49 = *v27;
      v32 = v27[3];
      v47 = v27[2];
      v46 = v27[4];
      v33 = v46;
      swift_bridgeObjectRetain_n();
      sub_1CA94C218();
      v48 = v31;
      sub_1CA94C218();
      sub_1CA94C218();
      if (!swift_isUniquelyReferenced_nonNull_native() || (v34 = v28, v30 + v29 > *(v28 + 24) >> 1))
      {
        sub_1CA27AC48();
        v34 = v35;
      }

      if (*(v12 + 16))
      {
        if ((*(v34 + 24) >> 1) - *(v34 + 16) < v29)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v29)
        {
          v36 = *(v34 + 16);
          v37 = __OFADD__(v36, v29);
          v38 = v36 + v29;
          if (v37)
          {
            goto LABEL_36;
          }

          *(v34 + 16) = v38;
        }
      }

      else
      {

        if (v29)
        {
          goto LABEL_34;
        }
      }

      v43 = (v53[7] + 48 * v19);
      v44 = v43[4];
      *v43 = v49;
      v43[1] = v48;
      v43[2] = v47;
      v43[3] = v32;
      v43[4] = v46;
      v43[5] = v34;
    }

    else
    {
      v26[(v19 >> 6) + 8] |= 1 << v19;
      v39 = (v26[6] + 16 * v19);
      *v39 = v10;
      v39[1] = v9;
      v40 = (v26[7] + 48 * v19);
      *v40 = v14;
      v40[1] = v56;
      v40[2] = v52;
      v40[3] = v13;
      v40[4] = v11;
      v40[5] = v12;
      v41 = v26[2];
      v37 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v37)
      {
        goto LABEL_33;
      }

      v26[2] = v42;
    }

    v60 += 2;
    v5 = v55 + 48;
    v6 = v54 + 1;
    a3 = 1;
    v4 = a2;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA5A2154(uint64_t *a1, char *a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1CA94D778();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
        v8 = sub_1CA94C6C8();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1CA94C218();
      sub_1CA5A244C(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1CA5A229C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1CA5A229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
  }

  v37 = *a4;
  v7 = v37 + 48 * a3 - 48;
  v8 = a1 - a3;
  while (2)
  {
    v32 = v7;
    v33 = a3;
    v31 = v8;
    do
    {
      v9 = *(v7 + 48);
      v10 = *(v7 + 80);
      v36[1] = *(v7 + 64);
      v36[2] = v10;
      v36[0] = v9;
      v11 = *v7;
      v12 = *(v7 + 32);
      v35[1] = *(v7 + 16);
      v35[2] = v12;
      v35[0] = v11;
      sub_1CA5A3DEC(v36, v34);
      sub_1CA5A3DEC(v35, v34);
      v13 = sub_1CA59D910();
      v15 = sub_1CA58A568(v13, v14, a5);
      v17 = v16;

      v18 = sub_1CA59D910();
      v20 = sub_1CA58A568(v18, v19, a5);
      v22 = v21;

      sub_1CA532E30(v35, &unk_1EC443F70, &qword_1CA981A80);
      result = sub_1CA532E30(v36, &unk_1EC443F70, &qword_1CA981A80);
      if ((v22 & 1) == 0 && v17 & 1 | (v15 >= v20))
      {
        break;
      }

      if (!v37)
      {
        __break(1u);
        return result;
      }

      v24 = *(v7 + 48);
      v23 = *(v7 + 64);
      v25 = *(v7 + 16);
      v26 = *(v7 + 32);
      *(v7 + 48) = *v7;
      *(v7 + 64) = v25;
      v27 = *(v7 + 80);
      v28 = *(v7 + 88);
      *(v7 + 80) = v26;
      *v7 = v24;
      *(v7 + 16) = v23;
      *(v7 + 32) = v27;
      *(v7 + 40) = v28;
      v7 -= 48;
    }

    while (!__CFADD__(v8++, 1));
    a3 = v33 + 1;
    v7 = v32 + 48;
    v8 = v31 - 1;
    if (v33 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1CA5A244C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v7 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v162 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v136 = v9 + 16;
      v137 = *(v9 + 2);
      for (i = v9; ; v9 = i)
      {
        if (v137 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v138 = *a3;
        if (!*a3)
        {
          goto LABEL_141;
        }

        v139 = &v9[16 * v137];
        v140 = *v139;
        v141 = v136;
        v142 = &v136[16 * v137];
        v143 = *(v142 + 1);
        v144 = v138 + 48 * *v139;
        v145 = v138 + 48 * *v142;
        v172 = (v138 + 48 * v143);
        sub_1CA94C218();
        sub_1CA5A2D90(v144, v145, v172, v162, a5);
        if (v164)
        {
          break;
        }

        if (v143 < v140)
        {
          goto LABEL_129;
        }

        if (v137 - 2 >= *v141)
        {
          goto LABEL_130;
        }

        v136 = v141;
        *v139 = v140;
        *(v139 + 1) = v143;
        v146 = *v141 - v137;
        if (*v141 < v137)
        {
          goto LABEL_131;
        }

        v137 = *v141 - 1;
        sub_1CA627628(v142 + 16, v146, v142);
        *v141 = v137;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_138:
    v9 = sub_1CA627610();
    goto LABEL_103;
  }

  v148 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v172 = a5;
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if ((v8 + 1) < v7)
    {
      v162 = v7;
      v12 = *a3;
      v13 = (*a3 + 48 * v11);
      v15 = v13[1];
      v14 = v13[2];
      v171[0] = *v13;
      v171[1] = v15;
      v171[2] = v14;
      v16 = (v12 + 48 * v10);
      v17 = *v16;
      v18 = v16[2];
      v170[1] = v16[1];
      v170[2] = v18;
      v170[0] = v17;
      sub_1CA5A3DEC(v171, v165);
      sub_1CA5A3DEC(v170, v165);
      v19 = sub_1CA59D910();
      v158 = sub_1CA58A568(v19, v20, a5);
      v22 = v21;

      v23 = sub_1CA59D910();
      v25 = sub_1CA58A568(v23, v24, a5);
      v27 = v26;

      sub_1CA532E30(v170, &unk_1EC443F70, &qword_1CA981A80);
      sub_1CA532E30(v171, &unk_1EC443F70, &qword_1CA981A80);
      v153 = v9;
      if (v27)
      {
        v28 = 1;
      }

      else
      {
        v28 = (v158 < v25) & ~v22;
      }

      v11 = v10 + 2;
      v149 = v10;
      v159 = 48 * v10;
      v29 = (v12 + 48 * v10 + 96);
      v30 = v162;
      while (v11 < v30)
      {
        a5 = v11;
        v31 = *v29;
        v32 = v29[2];
        v169[1] = v29[1];
        v169[2] = v32;
        v169[0] = v31;
        v33 = *(v29 - 3);
        v34 = *(v29 - 1);
        v168[1] = *(v29 - 2);
        v168[2] = v34;
        v168[0] = v33;
        sub_1CA5A3DEC(v169, v165);
        sub_1CA5A3DEC(v168, v165);
        v35 = sub_1CA59D910();
        v36 = v172;
        v38 = sub_1CA58A568(v35, v37, v172);
        v40 = v39;

        v41 = sub_1CA59D910();
        v43 = sub_1CA58A568(v41, v42, v36);
        v45 = v44;

        sub_1CA532E30(v168, &unk_1EC443F70, &qword_1CA981A80);
        sub_1CA532E30(v169, &unk_1EC443F70, &qword_1CA981A80);
        if (v45)
        {
          v11 = a5;
          v30 = v162;
          if (!v28)
          {
            goto LABEL_26;
          }
        }

        else if (v40)
        {
          v11 = a5;
          v30 = v162;
          if (v28)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v46 = v38 >= v43;
          v11 = a5;
          v30 = v162;
          if (((v28 ^ v46) & 1) == 0)
          {
            break;
          }
        }

        ++v11;
        v29 += 3;
      }

      if (v28)
      {
LABEL_18:
        v10 = v149;
        if (v11 < v149)
        {
          goto LABEL_137;
        }

        if (v149 >= v11)
        {
          v9 = v153;
          a5 = v172;
        }

        else
        {
          v47 = 48 * v11 - 24;
          v48 = v159 + 40;
          v49 = v11;
          v50 = v149;
          v9 = v153;
          a5 = v172;
          do
          {
            if (v50 != --v49)
            {
              v51 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v52 = (v51 + v48);
              v53 = *(v51 + v48 - 40);
              v54 = v51 + v47;
              v55 = *(v52 - 3);
              v56 = *(v52 - 1);
              v57 = *v52;
              v58 = *(v54 + 8);
              v59 = *(v54 - 8);
              *(v52 - 5) = *(v54 - 24);
              *(v52 - 3) = v59;
              *(v52 - 1) = v58;
              *(v54 - 24) = v53;
              *(v54 - 8) = v55;
              *(v54 + 8) = v56;
              *(v54 + 16) = v57;
            }

            ++v50;
            v47 -= 48;
            v48 += 48;
          }

          while (v50 < v49);
        }
      }

      else
      {
LABEL_26:
        v9 = v153;
        a5 = v172;
        v10 = v149;
      }
    }

    v60 = a3[1];
    if (v11 < v60)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_134;
      }

      if (v11 - v10 < v148)
      {
        break;
      }
    }

LABEL_47:
    if (v11 < v10)
    {
      goto LABEL_133;
    }

    v162 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E49C0(0, *(v9 + 2) + 1, 1, v9);
      v9 = v134;
    }

    v87 = *(v9 + 2);
    v86 = *(v9 + 3);
    v88 = v87 + 1;
    if (v87 >= v86 >> 1)
    {
      sub_1CA2E49C0(v86 > 1, v87 + 1, 1, v9);
      v9 = v135;
    }

    *(v9 + 2) = v88;
    v89 = v9 + 32;
    v90 = &v9[16 * v87 + 32];
    *v90 = v10;
    *(v90 + 1) = v11;
    v161 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v87)
    {
      v157 = v9 + 32;
      while (1)
      {
        v91 = v88 - 1;
        v92 = &v89[16 * v88 - 16];
        v93 = &v9[16 * v88];
        if (v88 >= 4)
        {
          break;
        }

        if (v88 == 3)
        {
          v94 = *(v9 + 4);
          v95 = *(v9 + 5);
          v104 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          v97 = v104;
LABEL_68:
          if (v97)
          {
            goto LABEL_120;
          }

          v109 = *v93;
          v108 = *(v93 + 1);
          v110 = __OFSUB__(v108, v109);
          v111 = v108 - v109;
          v112 = v110;
          if (v110)
          {
            goto LABEL_123;
          }

          v113 = *(v92 + 1);
          v114 = v113 - *v92;
          if (__OFSUB__(v113, *v92))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v111, v114))
          {
            goto LABEL_128;
          }

          if (v111 + v114 >= v96)
          {
            if (v96 < v114)
            {
              v91 = v88 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v88 < 2)
        {
          goto LABEL_122;
        }

        v116 = *v93;
        v115 = *(v93 + 1);
        v104 = __OFSUB__(v115, v116);
        v111 = v115 - v116;
        v112 = v104;
LABEL_83:
        if (v112)
        {
          goto LABEL_125;
        }

        v118 = *v92;
        v117 = *(v92 + 1);
        v104 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v104)
        {
          goto LABEL_127;
        }

        if (v119 < v111)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v91 - 1 >= v88)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v123 = *a3;
        if (!*a3)
        {
          goto LABEL_140;
        }

        v124 = v9;
        v125 = &v89[16 * v91 - 16];
        v126 = *v125;
        v127 = v91;
        v128 = &v89[16 * v91];
        v129 = *(v128 + 1);
        v130 = v123 + 48 * *v125;
        v131 = v123 + 48 * *v128;
        v132 = (v123 + 48 * v129);
        sub_1CA94C218();
        sub_1CA5A2D90(v130, v131, v132, v161, a5);
        if (v164)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v129 < v126)
        {
          goto LABEL_115;
        }

        v9 = v124;
        v133 = *(v124 + 2);
        if (v127 > v133)
        {
          goto LABEL_116;
        }

        *v125 = v126;
        *(v125 + 1) = v129;
        if (v127 >= v133)
        {
          goto LABEL_117;
        }

        v88 = v133 - 1;
        sub_1CA627628(v128 + 16, v133 - 1 - v127, v128);
        *(v124 + 2) = v133 - 1;
        v89 = v157;
        if (v133 <= 2)
        {
          goto LABEL_97;
        }
      }

      v98 = &v89[16 * v88];
      v99 = *(v98 - 8);
      v100 = *(v98 - 7);
      v104 = __OFSUB__(v100, v99);
      v101 = v100 - v99;
      if (v104)
      {
        goto LABEL_118;
      }

      v103 = *(v98 - 6);
      v102 = *(v98 - 5);
      v104 = __OFSUB__(v102, v103);
      v96 = v102 - v103;
      v97 = v104;
      if (v104)
      {
        goto LABEL_119;
      }

      v105 = *(v93 + 1);
      v106 = v105 - *v93;
      if (__OFSUB__(v105, *v93))
      {
        goto LABEL_121;
      }

      v104 = __OFADD__(v96, v106);
      v107 = v96 + v106;
      if (v104)
      {
        goto LABEL_124;
      }

      if (v107 >= v101)
      {
        v121 = *v92;
        v120 = *(v92 + 1);
        v104 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v104)
        {
          goto LABEL_132;
        }

        if (v96 < v122)
        {
          v91 = v88 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v8 = v162;
    v7 = a3[1];
    if (v162 >= v7)
    {
      goto LABEL_101;
    }
  }

  v61 = v10 + v148;
  if (__OFADD__(v10, v148))
  {
    goto LABEL_135;
  }

  if (v61 >= v60)
  {
    v61 = a3[1];
  }

  if (v61 < v10)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v11 == v61)
  {
    goto LABEL_47;
  }

  v152 = v61;
  v154 = v9;
  v62 = *a3;
  v63 = *a3 + 48 * v11 - 48;
  v150 = v10;
  v64 = v10 - v11;
LABEL_37:
  v160 = v63;
  v162 = v11;
  v156 = v64;
  while (1)
  {
    v65 = *(v63 + 48);
    v66 = *(v63 + 80);
    v167[1] = *(v63 + 64);
    v167[2] = v66;
    v167[0] = v65;
    v67 = *v63;
    v68 = *(v63 + 32);
    v166[1] = *(v63 + 16);
    v166[2] = v68;
    v166[0] = v67;
    sub_1CA5A3DEC(v167, v165);
    sub_1CA5A3DEC(v166, v165);
    v69 = sub_1CA59D910();
    v71 = sub_1CA58A568(v69, v70, a5);
    v73 = v72;

    v74 = sub_1CA59D910();
    v76 = sub_1CA58A568(v74, v75, a5);
    v78 = v77;

    sub_1CA532E30(v166, &unk_1EC443F70, &qword_1CA981A80);
    sub_1CA532E30(v167, &unk_1EC443F70, &qword_1CA981A80);
    if ((v78 & 1) == 0 && v73 & 1 | (v71 >= v76))
    {
      a5 = v172;
LABEL_45:
      ++v11;
      v63 = v160 + 48;
      v64 = v156 - 1;
      if (v162 + 1 == v152)
      {
        v11 = v152;
        v9 = v154;
        v10 = v150;
        goto LABEL_47;
      }

      goto LABEL_37;
    }

    if (!v62)
    {
      break;
    }

    v80 = *(v63 + 48);
    v79 = *(v63 + 64);
    v81 = *(v63 + 16);
    v82 = *(v63 + 32);
    *(v63 + 48) = *v63;
    *(v63 + 64) = v81;
    v83 = *(v63 + 80);
    v84 = *(v63 + 88);
    *(v63 + 80) = v82;
    *v63 = v80;
    *(v63 + 16) = v79;
    *(v63 + 32) = v83;
    *(v63 + 40) = v84;
    v63 -= 48;
    v85 = __CFADD__(v64++, 1);
    a5 = v172;
    if (v85)
    {
      goto LABEL_45;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_140:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_141:

  __break(1u);
LABEL_142:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_143:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_144:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1CA5A2D90(unint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5)
{
  v69 = a5;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 48;
  v10 = &a3[-a2] / 48;
  if (v9 < v10)
  {
    sub_1CA278E60(a1);
    v11 = &a4[48 * v9];
    v60 = v6;
    for (i = v11; ; v11 = i)
    {
      v12 = v8;
      if (a4 >= v11 || v7 >= v6)
      {
        goto LABEL_29;
      }

      v14 = *v7;
      v15 = *(v7 + 2);
      v67 = *(v7 + 1);
      v68 = v15;
      v66 = v14;
      v16 = *a4;
      v17 = *(a4 + 2);
      v64 = *(a4 + 1);
      v65 = v17;
      v63 = v16;
      sub_1CA5A3DEC(&v66, v62);
      sub_1CA5A3DEC(&v63, v62);
      v18 = sub_1CA59D910();
      v19 = v69;
      v21 = sub_1CA58A568(v18, v20, v69);
      v23 = v22;

      v24 = sub_1CA59D910();
      v26 = sub_1CA58A568(v24, v25, v19);
      LOBYTE(v19) = v27;

      sub_1CA532E30(&v63, &unk_1EC443F70, &qword_1CA981A80);
      sub_1CA532E30(&v66, &unk_1EC443F70, &qword_1CA981A80);
      if ((v19 & 1) != 0 || !(v23 & 1 | (v21 >= v26)))
      {
        break;
      }

      v28 = a4;
      v29 = v12;
      v30 = v12 == a4;
      a4 += 48;
      if (!v30)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 = (v29 + 48);
      v6 = v60;
    }

    v28 = v7;
    v29 = v12;
    v30 = v12 == v7;
    v7 += 48;
    if (v30)
    {
      goto LABEL_14;
    }

LABEL_13:
    v31 = *v28;
    v32 = *(v28 + 2);
    *(v29 + 1) = *(v28 + 1);
    *(v29 + 2) = v32;
    *v29 = v31;
    goto LABEL_14;
  }

  sub_1CA278E60(a2);
  v11 = &a4[48 * v10];
  v58 = v8;
  v59 = a4;
LABEL_16:
  v12 = v7;
  v61 = v7 - 48;
  v33 = v6 - 48;
  while (v11 > a4 && v12 > v8)
  {
    v35 = v33;
    v36 = *(v11 - 3);
    v37 = v11;
    v38 = *(v11 - 1);
    v67 = *(v11 - 2);
    v68 = v38;
    v39 = *(v61 + 1);
    v63 = *v61;
    v64 = v39;
    v65 = *(v61 + 2);
    v66 = v36;
    sub_1CA5A3DEC(&v66, v62);
    sub_1CA5A3DEC(&v63, v62);
    v40 = sub_1CA59D910();
    v41 = v69;
    v43 = sub_1CA58A568(v40, v42, v69);
    v45 = v44;

    v46 = sub_1CA59D910();
    v48 = sub_1CA58A568(v46, v47, v41);
    LOBYTE(v41) = v49;

    sub_1CA532E30(&v63, &unk_1EC443F70, &qword_1CA981A80);
    sub_1CA532E30(&v66, &unk_1EC443F70, &qword_1CA981A80);
    if ((v41 & 1) != 0 || !(v45 & 1 | (v43 >= v48)))
    {
      v6 = v35;
      v30 = v35 + 48 == v12;
      v8 = v58;
      a4 = v59;
      v11 = v37;
      v7 = v61;
      if (!v30)
      {
        v52 = *v61;
        v53 = *(v61 + 2);
        *(v6 + 1) = *(v61 + 1);
        *(v6 + 2) = v53;
        *v6 = v52;
      }

      goto LABEL_16;
    }

    v11 = v37 - 48;
    if (v37 != v35 + 48)
    {
      v50 = *v11;
      v51 = *(v37 - 1);
      *(v35 + 1) = *(v37 - 2);
      *(v35 + 2) = v51;
      *v35 = v50;
    }

    v33 = v35 - 48;
    v8 = v58;
    a4 = v59;
  }

LABEL_29:
  v54 = (v11 - a4) / 48;
  if (v12 != a4 || v12 >= &a4[48 * v54])
  {
    memmove(v12, a4, 48 * v54);
  }

  return 1;
}

uint64_t sub_1CA5A30FC(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();
  }

  return OUTLINED_FUNCTION_52_0();
}

unint64_t sub_1CA5A3188()
{
  result = qword_1EC4469A8;
  if (!qword_1EC4469A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469A8);
  }

  return result;
}

unint64_t sub_1CA5A31E0()
{
  result = qword_1EC4469B0;
  if (!qword_1EC4469B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469B0);
  }

  return result;
}

unint64_t sub_1CA5A3234(uint64_t a1)
{
  *(a1 + 8) = sub_1CA5A3264();
  result = sub_1CA5A32B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CA5A3264()
{
  result = qword_1EC4469B8;
  if (!qword_1EC4469B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469B8);
  }

  return result;
}

unint64_t sub_1CA5A32B8()
{
  result = qword_1EC4469C0;
  if (!qword_1EC4469C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469C0);
  }

  return result;
}

unint64_t sub_1CA5A3310()
{
  result = qword_1EC4469C8;
  if (!qword_1EC4469C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469C8);
  }

  return result;
}

unint64_t sub_1CA5A3364(uint64_t a1)
{
  result = sub_1CA5A338C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5A338C()
{
  result = qword_1EC4469D0;
  if (!qword_1EC4469D0)
  {
    type metadata accessor for AggregatedRunnableDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4469D0);
  }

  return result;
}

uint64_t type metadata accessor for AggregatedRunnableDataSource(uint64_t a1)
{
  result = qword_1EC4469D8;
  if (!qword_1EC4469D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA5A3430(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1CA5A3470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TopHitBadge.Position(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TopHitIconMask(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1CA5A3680(uint64_t a1)
{
  sub_1CA5A3AFC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AggregatedRunnableDataSource.action(for:)()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v7 = (*(*v0 + 216) + **(*v0 + 216));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_15_20(v4);

  return v7(v2);
}

uint64_t dispatch thunk of AggregatedRunnableDataSource.action<A>(for:in:)()
{
  OUTLINED_FUNCTION_59_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v13 = (*(*v0 + 224) + **(*v0 + 224));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_20(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_15_20(v10);

  return v13(v8, v6, v4, v2);
}

uint64_t sub_1CA5A3A14()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  OUTLINED_FUNCTION_2_4();

  return v5(v2);
}

void sub_1CA5A3AFC(uint64_t a1)
{
  if (!qword_1EC4469E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446980, &qword_1CA98C2F8);
    v1 = sub_1CA94A0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC4469E8);
    }
  }
}

uint64_t dispatch thunk of RuntimeRunnableDataSource.loadEntries(for:parameterKey:collectionIdentifier:limit:)()
{
  OUTLINED_FUNCTION_39_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v18 = (v13 + *v13);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_20(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_15_20(v15);

  return v18(v12, v10, v8, v6, v4, v2);
}

uint64_t sub_1CA5A3CE4()
{
  OUTLINED_FUNCTION_59_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_1CA2DF78C;
  v3 = OUTLINED_FUNCTION_20_0();

  return v4(v3);
}

uint64_t sub_1CA5A3DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA5A3EC4()
{
  result = qword_1EC446A80;
  if (!qword_1EC446A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446A78, &qword_1CA98C7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446A80);
  }

  return result;
}

uint64_t sub_1CA5A3F30(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v3);
  v2[8] = OUTLINED_FUNCTION_45();
  v4 = sub_1CA94AC08();
  v2[9] = v4;
  OUTLINED_FUNCTION_12(v4);
  v2[10] = v5;
  v2[11] = OUTLINED_FUNCTION_45();
  v6 = sub_1CA94AB28();
  v2[12] = v6;
  OUTLINED_FUNCTION_12(v6);
  v2[13] = v7;
  v2[14] = OUTLINED_FUNCTION_13_5();
  v2[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A80, &qword_1CA988BF8);
  v2[16] = v8;
  OUTLINED_FUNCTION_12(v8);
  v2[17] = v9;
  v2[18] = OUTLINED_FUNCTION_45();
  v10 = sub_1CA94AB68();
  v2[19] = v10;
  OUTLINED_FUNCTION_12(v10);
  v2[20] = v11;
  v2[21] = OUTLINED_FUNCTION_45();
  v12 = sub_1CA94ABA8();
  v2[22] = v12;
  OUTLINED_FUNCTION_12(v12);
  v2[23] = v13;
  v2[24] = OUTLINED_FUNCTION_45();
  v14 = sub_1CA94B008();
  v2[25] = v14;
  OUTLINED_FUNCTION_12(v14);
  v2[26] = v15;
  v2[27] = OUTLINED_FUNCTION_13_5();
  v2[28] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  OUTLINED_FUNCTION_18_0(v16);
  v2[29] = OUTLINED_FUNCTION_45();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A88, &qword_1CA98C7D0);
  OUTLINED_FUNCTION_18_0(v17);
  v2[30] = OUTLINED_FUNCTION_45();
  v18 = sub_1CA94AFF8();
  v2[31] = v18;
  OUTLINED_FUNCTION_12(v18);
  v2[32] = v19;
  v2[33] = OUTLINED_FUNCTION_13_5();
  v2[34] = swift_task_alloc();
  v20 = sub_1CA94AB58();
  v2[35] = v20;
  OUTLINED_FUNCTION_12(v20);
  v2[36] = v21;
  v2[37] = OUTLINED_FUNCTION_45();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446A90, &qword_1CA98C7D8);
  v2[38] = v22;
  OUTLINED_FUNCTION_18_0(v22);
  v2[39] = OUTLINED_FUNCTION_45();
  v23 = type metadata accessor for ParameterStateValueTransformContext(0);
  v2[40] = v23;
  OUTLINED_FUNCTION_18_0(v23);
  v2[41] = OUTLINED_FUNCTION_13_5();
  v2[42] = swift_task_alloc();
  v24 = sub_1CA94AC18();
  v2[43] = v24;
  OUTLINED_FUNCTION_12(v24);
  v2[44] = v25;
  v2[45] = OUTLINED_FUNCTION_13_5();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v26 = sub_1CA949F78();
  v2[61] = v26;
  OUTLINED_FUNCTION_12(v26);
  v2[62] = v27;
  v2[63] = OUTLINED_FUNCTION_13_5();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5A446C, 0, 0);
}

uint64_t sub_1CA5A446C()
{
  v419 = v0;
  v1 = v0;
  v2 = v0[60];
  v3 = v0[44];
  v5 = v1[42];
  v4 = v1[43];
  v7 = v1[6];
  v6 = v1[7];
  [*v6 singleStateClass];
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1CA949C58();
  v411 = *(v3 + 16);
  v411(v2, v7, v4);
  sub_1CA5A6D68(v6, v5);
  v8 = sub_1CA949F68();
  v9 = sub_1CA94CC38();
  if (os_log_type_enabled(v8, v9))
  {
    v399 = v1[61];
    v401 = v1[65];
    v10 = v1[60];
    v12 = v1[43];
    v11 = v1[44];
    v395 = v1[42];
    v397 = v1[62];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v418[0] = swift_slowAlloc();
    *v13 = 136315650;
    v15 = sub_1CA94ABC8();
    v17 = v16;
    v410 = *(v11 + 8);
    v410(v10, v12);
    v18 = sub_1CA26B54C(v15, v17, v418);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v19 = ObjCClassMetadata;
    v1[5] = ObjCClassMetadata;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B18, &unk_1CA98C7E0);
    v20 = sub_1CA94C408();
    v22 = sub_1CA26B54C(v20, v21, v418);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2112;
    v23 = *v395;
    sub_1CA5A6DCC(v395);
    *(v13 + 24) = v23;
    *v14 = v23;
    _os_log_impl(&dword_1CA256000, v8, v9, "Transforming %s into a parameter state: %s for parameter: %@", v13, 0x20u);
    sub_1CA30F7DC(v14, &qword_1EC444AE0, &qword_1CA985B70);
    OUTLINED_FUNCTION_26();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v24 = *(v397 + 8);
    v24(v401, v399);
  }

  else
  {
    v25 = v1[62];
    v26 = v1[60];
    v27 = v1[43];
    v28 = v1[44];
    v29 = v1[42];

    sub_1CA5A6DCC(v29);
    v410 = *(v28 + 8);
    v410(v26, v27);
    v24 = *(v25 + 8);
    v30 = OUTLINED_FUNCTION_3_3();
    (v24)(v30);
    v19 = ObjCClassMetadata;
  }

  v31 = v1[39];
  v32 = *(v1[38] + 48);
  v33 = v411;
  v411(v31, v1[6], v1[43]);
  *(v31 + v32) = v19;
  v34 = OUTLINED_FUNCTION_23();
  v36 = v35(v34);
  if (v36 == *MEMORY[0x1E69DADC0])
  {
    v409 = v24;
    v37 = OUTLINED_FUNCTION_0_58();
    (v411)(v37);
    v38 = OUTLINED_FUNCTION_2_52();
    v39(v38);
    v40 = sub_1CA25B3D0(0, &qword_1EC446B10, off_1E836DEC8);
    if (OUTLINED_FUNCTION_11_30(v40))
    {
      v41 = [objc_allocWithZone(WFBooleanSubstitutableState) initWithBoolValue_];
LABEL_7:
      isa = v41;
LABEL_27:
      v410(v1[39], v1[43]);

      v66 = v1[1];

      return v66(isa);
    }

    goto LABEL_102;
  }

  if (v36 == *MEMORY[0x1E69DADB0])
  {
    v42 = v1[58];
    v43 = OUTLINED_FUNCTION_0_58();
    (v411)(v43);
    v44 = OUTLINED_FUNCTION_2_52();
    v45(v44);
    v46 = *v42;
    v47 = sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
    if (OUTLINED_FUNCTION_11_30(v47))
    {
      v48 = sub_1CA94C988();
LABEL_17:
      v57 = v48;
      isa = [objc_allocWithZone(WFNumberSubstitutableState) initWithNumber_];

      goto LABEL_27;
    }

    v409 = v24;
    v58 = sub_1CA25B3D0(0, &qword_1EC446B08, off_1E836EC18);
    if (OUTLINED_FUNCTION_11_30(v58))
    {
      v1[4] = v46;
      sub_1CA94D798();
LABEL_25:
      v63 = sub_1CA94C368();

      v64 = WFNumberStringSubstitutableState;
      goto LABEL_26;
    }

    goto LABEL_102;
  }

  if (v36 == *MEMORY[0x1E69DADE0])
  {
    v49 = OUTLINED_FUNCTION_0_58();
    (v411)(v49);
    v50 = OUTLINED_FUNCTION_2_52();
    v51(v50);
    v52 = sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
    if (OUTLINED_FUNCTION_11_30(v52))
    {
      v48 = sub_1CA94C8B8();
      goto LABEL_17;
    }

    v409 = v24;
    v65 = sub_1CA25B3D0(0, &qword_1EC446B08, off_1E836EC18);
    if (OUTLINED_FUNCTION_11_30(v65))
    {
      v1[2] = 0;
      v1[3] = 0xE000000000000000;
      sub_1CA94C8D8();
      goto LABEL_25;
    }

LABEL_102:
    v262 = v1[45];
    v263 = v1[43];
    v264 = v1[6];
    sub_1CA949C58();
    v33(v262, v264, v263);
    v265 = sub_1CA949F68();
    v266 = sub_1CA94CC18();
    v267 = os_log_type_enabled(v265, v266);
    v268 = v1[63];
    v269 = v1[61];
    if (v267)
    {
      v270 = swift_slowAlloc();
      v271 = swift_slowAlloc();
      v418[0] = v271;
      *v270 = 136315138;
      v412 = v268;
      v272 = v1;
      v273 = sub_1CA94ABC8();
      v405 = v269;
      v275 = v274;
      v276 = OUTLINED_FUNCTION_20_24();
      v277(v276);
      v278 = v273;
      v1 = v272;
      v279 = sub_1CA26B54C(v278, v275, v418);

      *(v270 + 4) = v279;
      _os_log_impl(&dword_1CA256000, v265, v266, "Failed to convert %s into parameter state - unsupported parameter state type", v270, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v271);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v280 = v412;
      v281 = v405;
    }

    else
    {

      v282 = OUTLINED_FUNCTION_20_24();
      v283(v282);
      v280 = v268;
      v281 = v269;
    }

    v409(v280, v281);
    v284 = v1[39];
    v285 = sub_1CA3DBA78();
    OUTLINED_FUNCTION_127(&type metadata for ParameterStateToTypedValueError, v285);
    *v286 = 1;
    swift_willThrow();
    sub_1CA30F7DC(v284, &unk_1EC446A90, &qword_1CA98C7D8);
    goto LABEL_106;
  }

  if (v36 == *MEMORY[0x1E69DADF8])
  {
    v409 = v24;
    v53 = OUTLINED_FUNCTION_0_58();
    (v411)(v53);
    v54 = OUTLINED_FUNCTION_2_52();
    v55(v54);
    v56 = sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
    if (OUTLINED_FUNCTION_11_30(v56))
    {
      v48 = sub_1CA94D048();
      goto LABEL_17;
    }

    v74 = sub_1CA25B3D0(0, &qword_1EC446B08, off_1E836EC18);
    if (OUTLINED_FUNCTION_11_30(v74))
    {
      sub_1CA94D028();
      goto LABEL_25;
    }

    goto LABEL_102;
  }

  if (v36 == *MEMORY[0x1E69DADF0])
  {
    v59 = OUTLINED_FUNCTION_0_58();
    (v411)(v59);
    v60 = OUTLINED_FUNCTION_2_52();
    v61(v60);
    v62 = sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
    if (OUTLINED_FUNCTION_11_30(v62))
    {
      OUTLINED_FUNCTION_23();
      v63 = sub_1CA94C368();

      v64 = WFStringSubstitutableState;
LABEL_26:
      isa = [objc_allocWithZone(v64) initWithValue_];

      goto LABEL_27;
    }

    v100 = sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    if (OUTLINED_FUNCTION_12_27(v100))
    {
      sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
      v101 = OUTLINED_FUNCTION_23();
      v418[0] = sub_1CA538038(v101);
      v102.variableString.super.isa = v418;
      v41 = WFVariableStringParameterState.init(variableString:)(v102);
      goto LABEL_7;
    }

    v409 = v24;
    v120 = sub_1CA25B3D0(0, &unk_1EC446AD0, 0x1E6996D10);
    if (OUTLINED_FUNCTION_12_27(v120))
    {
      v121 = v1[54];
      v122 = v1[43];
      v123 = v1[41];
      v124 = v1[6];
      v125 = v1[7];
      v126 = OUTLINED_FUNCTION_23();
      v127 = sub_1CA5A6E28(v126);
      sub_1CA949C58();
      v411(v121, v124, v122);
      sub_1CA5A6D68(v125, v123);
      v128 = v127;
      v129 = sub_1CA949F68();
      v130 = sub_1CA94CC38();
      isa = v128;

      v131 = os_log_type_enabled(v129, v130);
      v132 = v1[64];
      v133 = v1[61];
      v406 = v1;
      v134 = v1[41];
      if (v131)
      {
        v135 = swift_slowAlloc();
        v404 = v132;
        v136 = swift_slowAlloc();
        v418[0] = swift_slowAlloc();
        *v135 = 136315650;
        v402 = v133;
        v137 = sub_1CA94ABC8();
        v139 = v138;
        v140 = OUTLINED_FUNCTION_18_24();
        v141(v140);
        v142 = sub_1CA26B54C(v137, v139, v418);

        *(v135 + 4) = v142;
        *(v135 + 12) = 2080;
        v143 = v128;
        v144 = [(objc_class *)v143 description];
        v145 = sub_1CA94C3A8();
        v147 = v146;

        isa = v143;
        v148 = sub_1CA26B54C(v145, v147, v418);

        *(v135 + 14) = v148;
        *(v135 + 22) = 2112;
        v149 = *v134;
        sub_1CA5A6DCC(v134);
        *(v135 + 24) = v149;
        *v136 = v149;
        _os_log_impl(&dword_1CA256000, v129, v130, "Transformed %s into a parameter state: %s for parameter: %@", v135, 0x20u);
        sub_1CA30F7DC(v136, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_26();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();

        v150 = v404;
        v151 = v402;
      }

      else
      {

        sub_1CA5A6DCC(v134);
        v208 = OUTLINED_FUNCTION_18_24();
        v209(v208);
        v150 = v132;
        v151 = v133;
      }

      v409(v150, v151);
      goto LABEL_86;
    }

LABEL_71:
    v33 = v411;
    goto LABEL_102;
  }

  if (v36 == *MEMORY[0x1E69DADC8])
  {
    v68 = OUTLINED_FUNCTION_0_58();
    (v411)(v68);
    v69 = OUTLINED_FUNCTION_2_52();
    v70(v69);
    v71 = sub_1CA25B3D0(0, &qword_1EC446AE8, off_1E836E218);
    if (OUTLINED_FUNCTION_11_30(v71))
    {
      sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_4_45();
      v72();
      v73 = sub_1CA948C58();
      isa = [objc_allocWithZone(WFDateSubstitutableState) initWithValue_];
LABEL_48:

      v118 = OUTLINED_FUNCTION_116();
      v119(v118);
LABEL_56:

      goto LABEL_27;
    }

    v114 = sub_1CA25B3D0(0, &unk_1EC446AF0, off_1E836E1F0);
    v115 = OUTLINED_FUNCTION_11_30(v114);
    sub_1CA948CB8();
    OUTLINED_FUNCTION_14_26();
    if (v115)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_4_45();
      v116();
      v117 = [objc_allocWithZone(WFDateFieldParameterState) init];
      v73 = sub_1CA948C58();
      isa = v117;
      [(objc_class *)v117 setPreprocessedDate:v73];
      goto LABEL_48;
    }

LABEL_57:
    v409 = v24;
    v163 = OUTLINED_FUNCTION_3_3();
    v164(v163);
    goto LABEL_102;
  }

  if (v36 == *MEMORY[0x1E69DAD80])
  {
    v75 = OUTLINED_FUNCTION_0_58();
    (v411)(v75);
    v76 = OUTLINED_FUNCTION_2_52();
    v77(v76);
    v78 = sub_1CA25B3D0(0, &qword_1EC446AE8, off_1E836E218);
    v406 = v1;
    if (OUTLINED_FUNCTION_11_30(v78))
    {
      v79 = sub_1CA9488E8();
      OUTLINED_FUNCTION_1_0();
      v81 = v80;
      v82 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_74();
      v83();
      v84 = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0();
      v86 = v85;
      v87 = OUTLINED_FUNCTION_45();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
      OUTLINED_FUNCTION_18_0(v88);
      v89 = OUTLINED_FUNCTION_13_5();
      v90 = swift_task_alloc();
      sub_1CA9488D8();
      OUTLINED_FUNCTION_5_38(v90);
      if (v91)
      {
        v415 = v87;
        v92 = v79;
        v93 = sub_1CA9490D8();
        OUTLINED_FUNCTION_1_0();
        v94 = v81;
        v95 = v86;
        v97 = v96;
        v98 = OUTLINED_FUNCTION_45();
        sub_1CA9490B8();
        sub_1CA949098();
        v99 = v93;
        v79 = v92;
        v87 = v415;
        (*(v97 + 8))(v98, v99);
        v86 = v95;
        v81 = v94;

        OUTLINED_FUNCTION_5_38(v90);
        if (!v91)
        {
          sub_1CA30F7DC(v90, &qword_1EC4466D0, &qword_1CA991AA0);
        }
      }

      else
      {
        (*(v86 + 32))(v89, v90, v84);
        OUTLINED_FUNCTION_22_18();
      }

      OUTLINED_FUNCTION_5_38(v89);
      if (!v91)
      {
        v190 = OUTLINED_FUNCTION_116();
        v191(v190);

        v192 = sub_1CA948C58();
        isa = [objc_allocWithZone(WFDateSubstitutableState) initWithValue_];

        (*(v86 + 8))(v87, v84);
        (*(v81 + 8))(v82, v79);

LABEL_85:

LABEL_86:
        v1 = v406;
        goto LABEL_27;
      }

      v1 = v406;
      v185 = v406[43];
      v186 = v406[39];
      sub_1CA30F7DC(v89, &qword_1EC4466D0, &qword_1CA991AA0);

      v187 = sub_1CA3DBA78();
      v188 = OUTLINED_FUNCTION_127(&type metadata for ParameterStateToTypedValueError, v187);
      OUTLINED_FUNCTION_7_37(v188, v189);
      (*(v81 + 8))(v82, v79);
    }

    else
    {
      v165 = sub_1CA25B3D0(0, &unk_1EC446AF0, off_1E836E1F0);
      v166 = OUTLINED_FUNCTION_11_30(v165);
      v167 = sub_1CA9488E8();
      v168 = v1;
      v169 = *(v167 - 8);
      v170 = v168[52];
      if (!v166)
      {
        v409 = v24;
        (*(*(v167 - 8) + 8))(v170, v167);
        v1 = v406;
        goto LABEL_102;
      }

      v171 = OUTLINED_FUNCTION_45();
      (*(v169 + 32))(v171, v170, v167);
      v172 = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0();
      v174 = v173;
      v175 = OUTLINED_FUNCTION_45();
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
      OUTLINED_FUNCTION_18_0(v176);
      v177 = OUTLINED_FUNCTION_13_5();
      v178 = swift_task_alloc();
      sub_1CA9488D8();
      OUTLINED_FUNCTION_5_38(v178);
      if (v91)
      {
        v179 = sub_1CA9490D8();
        OUTLINED_FUNCTION_1_0();
        v416 = v167;
        v180 = v174;
        v181 = v175;
        v183 = v182;
        v184 = OUTLINED_FUNCTION_45();
        sub_1CA9490B8();
        sub_1CA949098();
        (*(v183 + 8))(v184, v179);
        v175 = v181;
        v174 = v180;
        v167 = v416;

        OUTLINED_FUNCTION_5_38(v178);
        if (!v91)
        {
          sub_1CA30F7DC(v178, &qword_1EC4466D0, &qword_1CA991AA0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_74();
        v221(v177, v178, v172);
        OUTLINED_FUNCTION_22_18();
      }

      OUTLINED_FUNCTION_5_38(v177);
      if (!v91)
      {
        OUTLINED_FUNCTION_74();
        v227 = OUTLINED_FUNCTION_116();
        v228(v227);

        v229 = [objc_allocWithZone(WFDateFieldParameterState) init];
        v230 = sub_1CA948C58();
        isa = v229;
        [(objc_class *)v229 setPreprocessedDate:v230];

        (*(v174 + 8))(v175, v172);
        (*(v169 + 8))(v171, v167);

        goto LABEL_85;
      }

      v185 = v406[43];
      v186 = v406[39];
      sub_1CA30F7DC(v177, &qword_1EC4466D0, &qword_1CA991AA0);

      v222 = sub_1CA3DBA78();
      v223 = OUTLINED_FUNCTION_127(&type metadata for ParameterStateToTypedValueError, v222);
      OUTLINED_FUNCTION_7_37(v223, v224);
      (*(v169 + 8))(v171, v167);
      v1 = v406;
    }

    v225 = v186;
    goto LABEL_83;
  }

  if (v36 == *MEMORY[0x1E69DADB8])
  {
    v103 = OUTLINED_FUNCTION_0_58();
    (v411)(v103);
    v104 = OUTLINED_FUNCTION_2_52();
    v105(v104);
    v106 = sub_1CA25B3D0(0, &qword_1EC4463D0, off_1E836F458);
    v107 = OUTLINED_FUNCTION_12_27(v106);
    sub_1CA948BA8();
    OUTLINED_FUNCTION_14_26();
    v109 = v108;
    if (!v107)
    {
      goto LABEL_57;
    }

    v110 = OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_45();
    v111();
    v112 = sub_1CA948B28();
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
    v113 = v112;
LABEL_55:
    v418[0] = sub_1CA538038(v113);
    v162.variableString.super.isa = v418;
    v421 = WFVariableStringParameterState.init(variableString:)(v162);
    isa = v421.super.isa;
    (*(v109 + 8))(v110, v31, v421._userInputInsertionIndex, v421._variable);
    goto LABEL_56;
  }

  if (v36 == *MEMORY[0x1E69DAD98])
  {
    v152 = OUTLINED_FUNCTION_0_58();
    (v411)(v152);
    v153 = OUTLINED_FUNCTION_2_52();
    v154(v153);
    v155 = sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    v156 = OUTLINED_FUNCTION_12_27(v155);
    sub_1CA948978();
    OUTLINED_FUNCTION_14_26();
    v109 = v157;
    if (!v156)
    {
      goto LABEL_57;
    }

    v110 = swift_task_alloc();
    OUTLINED_FUNCTION_4_45();
    v158();
    sub_1CA25B3D0(0, &qword_1EC446AE0, 0x1E696AAB0);
    swift_task_alloc();
    (*(v109 + 16))();
    v159 = sub_1CA94CDE8();

    v160 = [v159 string];

    v161 = sub_1CA94C3A8();
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
    v113 = v161;
    goto LABEL_55;
  }

  if (v36 == *MEMORY[0x1E69DAE10])
  {
    v193 = OUTLINED_FUNCTION_0_58();
    (v411)(v193);
    v194 = OUTLINED_FUNCTION_2_52();
    v195(v194);
    v196 = sub_1CA25B3D0(0, &qword_1EC446AC8, off_1E836EB50);
    v197 = OUTLINED_FUNCTION_11_30(v196);
    v198 = v1[48];
    if (v197)
    {
      (*(v1[23] + 32))(v1[24], v198, v1[22]);
      sub_1CA94AB88();
      v199 = OUTLINED_FUNCTION_20_0();
      v201 = v200(v199);
      if (v201 == *MEMORY[0x1E69DAD48])
      {
        (*(v1[20] + 96))(v1[21], v1[19]);
        OUTLINED_FUNCTION_74();
        v202 = OUTLINED_FUNCTION_23();
        v203(v202);
        v204 = sub_1CA94AD18();
        v205 = [objc_allocWithZone(WFLocationValue) initWithPlacemark_];

        v206 = OUTLINED_FUNCTION_20_0();
        v207(v206);
      }

      else
      {
        if (v201 != *MEMORY[0x1E69DAD40])
        {
          v413 = v1[43];
          v313 = v1[39];
          v315 = v1[23];
          v314 = v1[24];
          v317 = v1[21];
          v316 = v1[22];
          v318 = v1;
          v319 = v1[20];
          v320 = v318[19];
          v321 = sub_1CA3DBA78();
          v322 = OUTLINED_FUNCTION_127(&type metadata for ParameterStateToTypedValueError, v321);
          OUTLINED_FUNCTION_7_37(v322, v323);
          (*(v315 + 8))(v314, v316);
          (*(v319 + 8))(v317, v320);
          v1 = v318;
          v225 = v313;
          v226 = v413;
          goto LABEL_84;
        }

        v205 = [objc_opt_self() currentLocation];
      }

      v250 = v1[23];
      v249 = v1[24];
      v251 = v1[22];
      isa = [objc_allocWithZone(WFLocationParameterState) initWithValue_];
      goto LABEL_133;
    }

    v409 = v24;
    v247 = v1[22];
    v248 = v1[23];
LABEL_101:
    (*(v248 + 8))(v198, v247);
    goto LABEL_102;
  }

  if (v36 == *MEMORY[0x1E69DADE8])
  {
    v210 = OUTLINED_FUNCTION_0_58();
    (v411)(v210);
    v211 = OUTLINED_FUNCTION_2_52();
    v212(v211);
    v213 = sub_1CA25B3D0(0, &unk_1EC446AD0, 0x1E6996D10);
    v214 = OUTLINED_FUNCTION_11_30(v213);
    v198 = v1[49];
    if (v214)
    {
      v215 = v1[40];
      v216 = v1[29];
      v217 = v1[7];
      (*(v1[36] + 32))(v1[37], v198, v1[35]);
      sub_1CA5A7354(v217 + *(v215 + 20), v216);
      v218 = sub_1CA94AD08();
      if (__swift_getEnumTagSinglePayload(v216, 1, v218) == 1)
      {
        v219 = v1[30];
        v220 = v1[31];
        sub_1CA30F7DC(v1[29], &unk_1EC445A40, &unk_1CA983150);
        __swift_storeEnumTagSinglePayload(v219, 1, 1, v220);
LABEL_125:
        v326 = v1[31];
        v327 = v1[30];
        (*(v1[32] + 104))(v1[34], *MEMORY[0x1E69DB1B0], v326);
        if (__swift_getEnumTagSinglePayload(v327, 1, v326) != 1)
        {
          sub_1CA30F7DC(v1[30], &qword_1EC446A88, &qword_1CA98C7D0);
        }
      }

      else
      {
        v288 = v1[32];
        v407 = v1;
        v289 = v1[26];
        v290 = sub_1CA94ACF8();
        v291 = OUTLINED_FUNCTION_116();
        v292(v291);
        v293 = v290 + 56;
        v294 = -1;
        v295 = -1 << *(v290 + 32);
        if (-v295 < 64)
        {
          v294 = ~(-1 << -v295);
        }

        v296 = v294 & *(v290 + 56);
        v297 = (63 - v295) >> 6;
        v403 = *MEMORY[0x1E69DB150];
        v396 = v288;
        v398 = (v288 + 32);
        v417 = v290;
        result = sub_1CA94C218();
        v298 = 0;
        v400 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v299 = v298;
          if (!v296)
          {
            break;
          }

LABEL_116:
          v301 = v407[27];
          v300 = v407[28];
          v302 = v407[25];
          v303 = __clz(__rbit64(v296));
          v296 &= v296 - 1;
          (*(v289 + 16))(v300, *(v417 + 48) + *(v289 + 72) * (v303 | (v298 << 6)), v302);
          (*(v289 + 32))(v301, v300, v302);
          if ((*(v289 + 88))(v301, v302) == v403)
          {
            v304 = v407[33];
            v305 = v407[31];
            v306 = v407[27];
            (*(v289 + 96))(v306, v407[25]);
            v307 = *v398;
            (*v398)(v304, v306, v305);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA2E4C88();
              v400 = v311;
            }

            v308 = *(v400 + 16);
            if (v308 >= *(v400 + 24) >> 1)
            {
              sub_1CA2E4C88();
              v400 = v312;
            }

            v309 = v407[33];
            v310 = v407[31];
            *(v400 + 16) = v308 + 1;
            result = (v307)(v400 + ((*(v396 + 80) + 32) & ~*(v396 + 80)) + *(v396 + 72) * v308, v309, v310);
          }

          else
          {
            result = (*(v289 + 8))(v407[27], v407[25]);
          }
        }

        while (1)
        {
          v298 = v299 + 1;
          if (__OFADD__(v299, 1))
          {
            __break(1u);
            return result;
          }

          if (v298 >= v297)
          {
            break;
          }

          v296 = *(v293 + 8 * v298);
          ++v299;
          if (v296)
          {
            goto LABEL_116;
          }
        }

        v1 = v407;
        v325 = v407[30];
        v324 = v407[31];

        sub_1CA2ECDD8(v400, v325);

        if (__swift_getEnumTagSinglePayload(v325, 1, v324) == 1)
        {
          goto LABEL_125;
        }

        (*v398)(v407[34], v407[30], v407[31]);
      }

      v348 = sub_1CA94AB48();
      v349 = [v348 personHandle];

      if (!v349)
      {
        v360 = v1[34];
        v361 = v1[31];
        v362 = v1[32];
        v363 = sub_1CA94AB48();
        v364 = [objc_opt_self() contactWithPerson_];

        isa = [objc_allocWithZone(MEMORY[0x1E6996D10]) initWithContact_];
        (*(v362 + 8))(v360, v361);
        v347 = OUTLINED_FUNCTION_3_3();
LABEL_142:
        v346(v347, v365);
        goto LABEL_27;
      }

      v350 = v1[36];
      v351 = v1[32];
      v352 = sub_1CA5A6E9C(v1[34], v349);
      v353 = (v351 + 8);
      v354 = (v350 + 8);
      v355 = v1[37];
      v356 = v1[34];
      v251 = v1[35];
      v357 = v1[31];
      if (v352)
      {
        v358 = sub_1CA94AB48();
        v359 = [objc_opt_self() contactWithPerson_];

        isa = [objc_allocWithZone(MEMORY[0x1E6996D10]) initWithContact_];
      }

      else
      {
        v366 = objc_opt_self();
        v367 = sub_1CA94AB48();
        v368 = [v366 cnContactWithINPerson_];

        isa = [objc_allocWithZone(MEMORY[0x1E6996D10]) initWithContact_];
      }

      (*v353)(v356, v357);
      v346 = *v354;
      v347 = v355;
LABEL_141:
      v365 = v251;
      goto LABEL_142;
    }

    v409 = v24;
    v247 = v1[35];
    v248 = v1[36];
    goto LABEL_101;
  }

  if (v36 != *MEMORY[0x1E69DADD0])
  {
    v409 = v24;
    if (v36 != *MEMORY[0x1E69DAE08])
    {
      goto LABEL_102;
    }

    v252 = OUTLINED_FUNCTION_0_58();
    (v411)(v252);
    v253 = OUTLINED_FUNCTION_2_52();
    v254(v253);
    v255 = sub_1CA25B3D0(0, &qword_1EC446AA0, off_1E836F588);
    v256 = OUTLINED_FUNCTION_11_30(v255);
    v257 = v1[46];
    if (v256)
    {
      v258 = v1[8];
      (*(v1[10] + 32))(v1[11], v257, v1[9]);
      sub_1CA94ABF8();
      v259 = sub_1CA94B458();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v258, 1, v259);
      v261 = v1[8];
      if (EnumTagSinglePayload == 1)
      {
        sub_1CA30F7DC(v1[8], &qword_1EC4468C0, &qword_1CA988C00);
      }

      else
      {
        sub_1CA94B378();
        (*(*(v259 - 8) + 8))(v261, v259);
      }

      v378 = v1[10];
      v379 = v1[11];
      v380 = v1[9];
      v381 = sub_1CA94A9C8();
      v383 = v382;
      v384 = objc_allocWithZone(WFWorkflowParameterStateDescriptor);
      v385 = OUTLINED_FUNCTION_20_0();
      v387 = sub_1CA5A71F0(v385, v386, v381, v383, 0);
      isa = [objc_allocWithZone(WFWorkflowParameterState) initWithValue_];

      (*(v378 + 8))(v379, v380);
      goto LABEL_27;
    }

    v376 = v1[9];
    v377 = v1[10];
    goto LABEL_148;
  }

  v231 = OUTLINED_FUNCTION_0_58();
  (v411)(v231);
  v232 = OUTLINED_FUNCTION_2_52();
  v233(v232);
  v234 = sub_1CA25B3D0(0, &qword_1EC446AA8, off_1E836E370);
  if (!OUTLINED_FUNCTION_11_30(v234))
  {
    v409 = v24;
    v328 = sub_1CA25B3D0(0, &qword_1EC446AB0, off_1E836E7F8);
    v329 = OUTLINED_FUNCTION_11_30(v328);
    v257 = v1[47];
    if (v329)
    {
      v250 = v1[13];
      v249 = v1[14];
      v251 = v1[12];
      OUTLINED_FUNCTION_74();
      v330(v249);
      v331 = sub_1CA94AB18();
      v418[3] = sub_1CA25B3D0(0, &qword_1EC441738, 0x1E696E840);
      v418[0] = v331;
      v332 = [objc_opt_self() fileValueType];
      v333 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
      v205 = sub_1CA320AB4(v418, v332);
      v235 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:v205 indentationLevel:0];
      v334 = [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];
LABEL_132:
      isa = v334;

LABEL_133:
      v346 = *(v250 + 8);
      v347 = v249;
      goto LABEL_141;
    }

    v376 = v1[12];
    v377 = v1[13];
LABEL_148:
    (*(v377 + 8))(v257, v376);
    goto LABEL_71;
  }

  (*(v1[13] + 32))(v1[15], v1[47], v1[12]);
  v235 = sub_1CA94AB18();
  v236 = sub_1CA5A72F0(v235);
  if (v237 >> 60 == 15)
  {
    v238 = sub_1CA948BA8();
    OUTLINED_FUNCTION_1_0();
    v240 = v239;
    v241 = swift_task_alloc();
    v242 = [v235 fileURL];
    if (!v242)
    {
      v185 = v1[43];
      v388 = v1[39];
      v389 = v1[15];
      v390 = v1[12];
      v391 = v1[13];

      v392 = sub_1CA3DBA78();
      v393 = OUTLINED_FUNCTION_127(&type metadata for ParameterStateToTypedValueError, v392);
      OUTLINED_FUNCTION_7_37(v393, v394);

      (*(v391 + 8))(v389, v390);
      v225 = v388;
      goto LABEL_83;
    }

    v243 = v242;
    sub_1CA948B68();

    sub_1CA25B3D0(0, &qword_1EC446AC0, off_1E836E3A0);
    v244 = swift_task_alloc();
    (*(v240 + 16))(v244, v241, v238);
    v205 = sub_1CA457B0C(v244);
    v245 = OUTLINED_FUNCTION_20_0();
    v246(v245);
  }

  else
  {
    sub_1CA39F318(v236, v237);
    sub_1CA5A72F0(v235);
    v335 = [v235 filename];
    v336 = sub_1CA94C3A8();
    v338 = v337;

    v339 = [v235 filename];
    v340 = sub_1CA94C3A8();
    v342 = v341;

    v343 = objc_allocWithZone(WFFileValue);
    v344 = OUTLINED_FUNCTION_3_3();
    v205 = sub_1CA5A7104(v344, v345, v336, v338, v340, v342);
  }

  if (v205)
  {
    v249 = v1[15];
    v251 = v1[12];
    v250 = v1[13];
    v334 = [objc_allocWithZone(WFFileParameterState) initWithValue_];
    goto LABEL_132;
  }

  v185 = v1[43];
  v369 = v1[39];
  v370 = v1[15];
  v371 = v1[12];
  v372 = v1[13];
  v373 = sub_1CA3DBA78();
  v374 = OUTLINED_FUNCTION_127(&type metadata for ParameterStateToTypedValueError, v373);
  OUTLINED_FUNCTION_7_37(v374, v375);

  (*(v372 + 8))(v370, v371);
  v225 = v369;
LABEL_83:
  v226 = v185;
LABEL_84:
  v410(v225, v226);
LABEL_106:

  v287 = v1[1];

  return v287();
}

uint64_t sub_1CA5A6D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterStateValueTransformContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA5A6DCC(uint64_t a1)
{
  v2 = type metadata accessor for ParameterStateValueTransformContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA5A6E28(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1CA94C368();

  v3 = [v1 initWithHandleString_];

  return v3;
}

uint64_t sub_1CA5A6E9C(uint64_t a1, void *a2)
{
  v4 = sub_1CA94AFF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E69DB1B0])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x1E69DB1A8])
  {
    sub_1CA5A728C(a2);
    if (v10)
    {
      v11 = 2;
LABEL_9:

      return [a2 type] == v11;
    }

    return 0;
  }

  if (v8 == *MEMORY[0x1E69DB1A0])
  {
    sub_1CA5A728C(a2);
    if (v12)
    {
      v11 = 1;
      goto LABEL_9;
    }

    return 0;
  }

  if (v8 != *MEMORY[0x1E69DB198])
  {
    result = sub_1CA94D7E8();
    __break(1u);
    return result;
  }

  sub_1CA5A728C(a2);
  if (!v13)
  {
    return 0;
  }

  result = [a2 type];
  if (result != 1)
  {
    v11 = 2;
    return [a2 type] == v11;
  }

  return result;
}

uint64_t sub_1CA5A7068(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1CA437724;
  v3 = OUTLINED_FUNCTION_23();

  return sub_1CA5A3F30(v3, v4);
}

id sub_1CA5A7104(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = sub_1CA948BF8();
  sub_1CA39F318(a1, a2);
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = sub_1CA94C368();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = sub_1CA94C368();

LABEL_8:
  v14 = [v6 initWithBookmarkData:v9 filename:v10 displayName:v11];

  return v14;
}

id sub_1CA5A71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1CA94C368();

  if (a4)
  {
    v9 = sub_1CA94C368();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithWorkflowName:v8 workflowIdentifier:v9 isSelf:a5 & 1];

  return v10;
}

uint64_t sub_1CA5A728C(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA5A72F0(void *a1)
{
  v1 = [a1 _bookmarkData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA948C08();

  return v3;
}

uint64_t sub_1CA5A7354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.identifier.getter()
{
  v1 = *v0;
  sub_1CA94C218();
  return v1;
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.init(identifier:syncHash:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94D408();
  MEMORY[0x1CCAA1300](0xD000000000000026, 0x80000001CA9D1290);
  MEMORY[0x1CCAA1300](v1, v2);
  MEMORY[0x1CCAA1300](0x6148636E7973202CLL, 0xEC000000203A6873);
  v3 = sub_1CA94D798();
  MEMORY[0x1CCAA1300](v3);

  MEMORY[0x1CCAA1300](41, 0xE100000000000000);
  return 0;
}

BOOL static WFDatabase.SpotlightSyncableWorkflow.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1CA94D7F8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1CA94C458();
  return MEMORY[0x1CCAA27B0](v2);
}

uint64_t WFDatabase.SpotlightSyncableWorkflow.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1CA94D918();
  sub_1CA94C458();
  MEMORY[0x1CCAA27B0](v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA5A75F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[72] = *v1;
  v5 = v2;
  sub_1CA94D918();
  WFDatabase.SpotlightSyncableWorkflow.hash(into:)(v4);
  return sub_1CA94D968();
}

void sub_1CA5A769C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() fetchRequest];
  sub_1CA25B3D0(0, &qword_1EC446B28, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CA981360;
  *(v5 + 32) = [a1 visiblePredicate];
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CA981310;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1CA282DB4();
  strcpy((v6 + 32), "showInSearch");
  *(v6 + 45) = 0;
  *(v6 + 46) = -5120;
  *(v5 + 40) = sub_1CA94CBA8();
  v8 = sub_1CA5A7B70(v5);
  [v4 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CA97EDF0;
  *(v9 + 32) = 0x776F6C666B726F77;
  *(v9 + 40) = 0xEA00000000004449;
  *(v9 + 88) = v7;
  *(v9 + 56) = v7;
  *(v9 + 64) = 0xD000000000000011;
  *(v9 + 72) = 0x80000001CA9D12F0;
  v10 = sub_1CA94C648();

  [v4 setPropertiesToFetch_];

  v35[0] = 0;
  v11 = [v4 execute_];
  v12 = v35[0];
  if (v11)
  {
    v13 = v11;
    v33 = a2;
    sub_1CA25B3D0(0, &unk_1EC441990, off_1E836E138);
    v14 = sub_1CA94C658();
    v15 = v12;

    v16 = sub_1CA25B410(v14);
    v17 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    while (v16 != v17)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCAA22D0](v17, v14);
      }

      else
      {
        if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v18 = *(v14 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v21 = sub_1CA68ED04(v18);
      if (v22)
      {
        v23 = v21;
        v24 = v22;
        v25 = [v19 spotlightSyncHash];

        v32 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E71F4(0, *(v34 + 16) + 1, 1, v34);
          v34 = v29;
        }

        v27 = *(v34 + 16);
        v26 = *(v34 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1CA2E71F4(v26 > 1, v27 + 1, 1, v34);
          v34 = v30;
        }

        *(v34 + 16) = v27 + 1;
        v28 = (v34 + 24 * v27);
        v28[4] = v23;
        v28[5] = v24;
        v28[6] = v32;
        v17 = v20;
      }

      else
      {

        ++v17;
      }
    }

    *v33 = v34;
  }

  else
  {
    v31 = v35[0];
    sub_1CA948AD8();

    swift_willThrow();
  }
}

unint64_t sub_1CA5A7B0C()
{
  result = qword_1EC446B20;
  if (!qword_1EC446B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B20);
  }

  return result;
}

id sub_1CA5A7B70(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  v1 = sub_1CA94C648();

  v2 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];

  return v2;
}

id sub_1CA5A7C28()
{
  v0 = sub_1CA949D18();
  v130 = *(v0 - 8);
  v131 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v129 = v121 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D1320;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v134 = sub_1CA94C438("extract|unarchive|unzip|contents|gzip", 37);
  v7 = v6;
  v8 = sub_1CA94C438("extract|unarchive|unzip|contents|gzip", 37);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v138 = v12;
  v139 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v121 - v139;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v136 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v137 = v16;
  v135 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v121 - v135;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v134, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v134 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v133 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v127 = sub_1CA94C438("Archive", 7);
  *&v126 = v24;
  v125 = sub_1CA94C438("Archive", 7);
  v26 = v25;
  v128 = v121;
  MEMORY[0x1EEE9AC00](v125);
  v27 = v121 - v139;
  sub_1CA948D98();
  v28 = v136;
  v29 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v135;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v127, v126, v125, v26, 0, 0, v27, v121 - v30);
  v32 = v134;
  *(v21 + 64) = v134;
  *(v21 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v127 = sub_1CA94C438("Extracts files from the archive passed as input. Many archive formats are supported, including zip, rar, tar.gz, tar.bz2, tar, gzip, cpio, cab, and iso archives.", 161);
  *&v126 = v34;
  v125 = sub_1CA94C438("Extracts files from the archive passed as input. Many archive formats are supported, including zip, rar, tar.gz, tar.bz2, tar, gzip, cpio, cab, and iso archives.", 161);
  v36 = v35;
  v128 = v121;
  MEMORY[0x1EEE9AC00](v125);
  v37 = v121 - v139;
  sub_1CA948D98();
  v38 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v40 = sub_1CA2F9F14(v127, v126, v125, v36, 0, 0, v37, v121 - v30);
  *(v21 + 104) = v32;
  *(v21 + 80) = v40;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v41 = sub_1CA94C1E8();
  v42 = v133;
  *(inited + 120) = sub_1CA6B3784(v41);
  *(inited + 144) = v42;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v43 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x7070697A2E636F64;
  *(inited + 208) = 0xEA00000000007265;
  *(inited + 224) = v43;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v43;
  *(inited + 272) = @"Input";
  v44 = v43;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v45 = swift_initStackObject();
  v126 = xmmword_1CA981350;
  *(v45 + 16) = xmmword_1CA981350;
  *(v45 + 32) = 0x656C7069746C754DLL;
  *(v45 + 40) = 0xE800000000000000;
  v46 = MEMORY[0x1E69E6370];
  *(v45 + 48) = 0;
  *(v45 + 72) = v46;
  strcpy((v45 + 80), "ParameterKey");
  *(v45 + 93) = 0;
  *(v45 + 94) = -5120;
  *(v45 + 96) = 0x7669686372414657;
  *(v45 + 104) = 0xE900000000000065;
  *(v45 + 120) = v44;
  *(v45 + 128) = 0x6465726975716552;
  *(v45 + 136) = 0xE800000000000000;
  *(v45 + 144) = 1;
  *(v45 + 168) = v46;
  *(v45 + 176) = 0x7365707954;
  *(v45 + 184) = 0xE500000000000000;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v45 + 216) = v133;
  *(v45 + 192) = &unk_1F4A07BC8;
  v47 = @"IconColor";
  v48 = @"IconSymbol";
  v49 = @"IconSymbolColor";
  v50 = @"Input";
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v128 = v52;
  *(inited + 280) = v51;
  *(inited + 304) = v52;
  *(inited + 312) = @"Name";
  v53 = @"Name";
  v54 = sub_1CA94C438("Extract Archive (Action Name)", 29);
  v123 = v55;
  v124 = v54;
  v56 = sub_1CA94C438("Extract Archive", 15);
  v58 = v57;
  v125 = v121;
  MEMORY[0x1EEE9AC00](v56);
  v59 = v139;
  sub_1CA948D98();
  v60 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = v121 - v135;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v124, v123, v56, v58, 0, 0, v121 - v59, v61);
  v63 = v134;
  *(inited + 344) = v134;
  *(inited + 352) = @"Output";
  v64 = swift_allocObject();
  *(v64 + 16) = v126;
  *(v64 + 32) = 0x75736F6C63736944;
  *(v64 + 40) = 0xEF6C6576654C6572;
  *(v64 + 48) = 0x63696C627550;
  *(v64 + 56) = 0xE600000000000000;
  *(v64 + 72) = MEMORY[0x1E69E6158];
  *(v64 + 80) = 0x656C7069746C754DLL;
  *(v64 + 88) = 0xE800000000000000;
  *(v64 + 96) = 1;
  *(v64 + 120) = MEMORY[0x1E69E6370];
  *(v64 + 128) = 0x614E74757074754FLL;
  *(v64 + 136) = 0xEA0000000000656DLL;
  v65 = @"Output";
  v66 = sub_1CA94C438("Files (Default Output Name)", 27);
  v125 = v67;
  *&v126 = v66;
  v68 = sub_1CA94C438("Files", 5);
  v124 = v69;
  v127 = v121;
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948D98();
  v70 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = v121 - v135;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 144) = sub_1CA2F9F14(v126, v125, v68, v124, 0, 0, v121 - v59, v71);
  *(v64 + 168) = v63;
  *(v64 + 176) = 0x7365707954;
  *(v64 + 216) = v133;
  *(v64 + 184) = 0xE500000000000000;
  *(v64 + 192) = &unk_1F4A07BF8;
  v73 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v128;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v128 = swift_allocObject();
  *(v128 + 1) = xmmword_1CA9813B0;
  v127 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981370;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000019;
  *(v74 + 48) = 0x80000001CA99B030;
  *(v74 + 64) = v73;
  *(v74 + 72) = @"Key";
  *(v74 + 80) = 0x7669686372414657;
  *(v74 + 88) = 0xE900000000000065;
  *(v74 + 104) = v73;
  *(v74 + 112) = @"Label";
  v75 = @"Parameters";
  v76 = @"Class";
  v77 = @"Key";
  v78 = @"Label";
  v79 = sub_1CA94C438("Archive (WFArchive)", 19);
  v123 = v80;
  v124 = v79;
  v81 = sub_1CA94C438("Archive", 7);
  v122 = v82;
  v125 = v121;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v121 - v139;
  sub_1CA948D98();
  v84 = v136;
  v85 = [v136 bundleURL];
  v121[1] = v121;
  *&v126 = inited;
  MEMORY[0x1EEE9AC00](v85);
  v86 = v135;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v124, v123, v81, v122, 0, 0, v83, v121 - v86);
  *(v74 + 144) = v134;
  *(v74 + 152) = @"Placeholder";
  v88 = @"Placeholder";
  v89 = sub_1CA94C438("Archive (WFArchive)", 19);
  v123 = v90;
  v124 = v89;
  v91 = sub_1CA94C438("Archive", 7);
  v122 = v92;
  v125 = v121;
  MEMORY[0x1EEE9AC00](v91);
  v93 = v121 - v139;
  sub_1CA948D98();
  v94 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 160) = sub_1CA2F9F14(v124, v123, v91, v122, 0, 0, v93, v121 - v86);
  *(v74 + 184) = v134;
  *(v74 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1CA981310;
  v97 = @"PreferredTypes";
  v98 = v129;
  sub_1CA949CF8();
  v99 = sub_1CA949C68();
  v101 = v100;
  (*(v130 + 8))(v98, v131);
  *(v96 + 32) = v99;
  *(v96 + 40) = v101;
  *(v74 + 224) = v133;
  *(v74 + 200) = v96;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  v104 = v128;
  v128[4] = v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v106 = v126;
  *(v126 + 400) = v104;
  v106[53] = v105;
  v106[54] = @"ParameterSummary";
  v107 = @"ParameterSummary";
  v108 = sub_1CA94C438("Extract ${WFArchive} (Parameter Summary)", 40);
  v110 = v109;
  v111 = sub_1CA94C438("Extract ${WFArchive}", 20);
  v113 = v112;
  v134 = v121;
  MEMORY[0x1EEE9AC00](v111);
  v114 = v121 - v139;
  sub_1CA948D98();
  v115 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = v121 - v135;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v108, v110, v111, v113, 0, 0, v114, v116);
  v119 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106[58] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v106[55] = v119;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5A8D48()
{
  v148 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9D1500;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v154 = sub_1CA94C438("device|airplay|playback|audio|route", 35);
  v5 = v4;
  v6 = sub_1CA94C438("device|airplay|playback|audio|route", 35);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v155 = v10;
  v157 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v135 - v157;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v152 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v156 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v153 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v135 - v153;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v154, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v154 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v151 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Hands off Music or Podcasts playback between two devices.", 57);
  v149 = v24;
  v25 = sub_1CA94C438("Hands off Music or Podcasts playback between two devices.", 57);
  v27 = v26;
  v150 = &v135;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v135 - v157;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v135 - v153;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v149, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v154;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v151;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"DisabledOnPlatforms";
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v151 = v35;
  *(inited + 160) = &unk_1F4A07C28;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 6579538;
  *(inited + 208) = 0xE300000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000016;
  *(inited + 248) = 0x80000001CA9D1590;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"DisabledOnPlatforms";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Name";
  v41 = sub_1CA94C438("Hand Off Playback (Action Name)", 31);
  v43 = v42;
  v44 = sub_1CA94C438("Hand Off Playback", 17);
  v46 = v45;
  v150 = &v135;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v135 - v157;
  sub_1CA948D98();
  v48 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v135 - v153;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v154;
  *(inited + 312) = @"Output";
  v51 = @"Output";
  v52 = MEMORY[0x1E69E6158];
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 320) = v53;
  *(inited + 344) = v54;
  *(inited + 352) = @"Parameters";
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v150 = swift_allocObject();
  *(v150 + 1) = xmmword_1CA981360;
  v149 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  v145 = xmmword_1CA981380;
  *(v55 + 16) = xmmword_1CA981380;
  v143 = 0xD00000000000001BLL;
  v144 = 0x80000001CA9A1EB0;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD00000000000001BLL;
  *(v55 + 48) = 0x80000001CA9A1EB0;
  *(v55 + 64) = v52;
  *(v55 + 72) = @"Description";
  v56 = @"Class";
  v57 = @"Description";
  v142 = v56;
  v141 = v57;
  v58 = @"Parameters";
  v59 = sub_1CA94C438("The device to hand off playback from. (WFSourceMediaRoute)", 58);
  v139 = v60;
  v61 = sub_1CA94C438("The device to hand off playback from.", 37);
  v63 = v62;
  v140 = &v135;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v135 - v157;
  sub_1CA948D98();
  v65 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v135 - v153;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 80) = sub_1CA2F9F14(v59, v139, v61, v63, 0, 0, v64, v66);
  *(v55 + 104) = v154;
  *(v55 + 112) = @"DisallowedVariableTypes";
  *(v55 + 120) = &unk_1F4A07C98;
  *(v55 + 144) = v151;
  *(v55 + 152) = @"Key";
  *(v55 + 160) = 0xD000000000000012;
  *(v55 + 168) = 0x80000001CA9D1660;
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Label";
  v68 = @"DisallowedVariableTypes";
  v69 = @"Key";
  v70 = @"Label";
  v139 = v68;
  v138 = v69;
  v140 = v70;
  v71 = sub_1CA94C438("Source (WFSourceMediaRoute)", 27);
  v136 = v72;
  v73 = sub_1CA94C438("Source", 6);
  v75 = v74;
  v137 = &v135;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v135 - v157;
  sub_1CA948D98();
  v77 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v135 - v153;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v71, v136, v73, v75, 0, 0, v76, v78);
  *(v55 + 224) = v154;
  *(v55 + 200) = v80;
  v81 = sub_1CA94C368();
  v82 = MEMORY[0x1E69E6158];
  *(v55 + 264) = MEMORY[0x1E69E6158];
  *(v55 + 232) = v81;
  *(v55 + 240) = 0x4566666F646E6148;
  *(v55 + 248) = 0xEF746E696F70646ELL;
  _s3__C3KeyVMa_0(0);
  v137 = v83;
  v136 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v84 = sub_1CA94C1E8();
  v85 = sub_1CA2F864C(v84);
  v150[4] = v85;
  v86 = swift_allocObject();
  *(v86 + 16) = v145;
  v87 = v143;
  *(v86 + 32) = v142;
  *(v86 + 40) = v87;
  *(v86 + 48) = v144;
  v88 = v141;
  *(v86 + 64) = v82;
  *(v86 + 72) = v88;
  v89 = sub_1CA94C438("The device to hand off playback to. (WFDestinationMediaRoute)", 61);
  v143 = v90;
  v144 = v89;
  v91 = sub_1CA94C438("The device to hand off playback to.", 35);
  v142 = v92;
  *&v145 = &v135;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v135 - v157;
  sub_1CA948D98();
  v94 = v152;
  v95 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v146 = inited;
  v96 = v153;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 80) = sub_1CA2F9F14(v144, v143, v91, v142, 0, 0, v93, &v135 - v96);
  v98 = v139;
  *(v86 + 104) = v154;
  *(v86 + 112) = v98;
  *(v86 + 120) = &unk_1F4A07CC8;
  v99 = v138;
  *(v86 + 144) = v151;
  *(v86 + 152) = v99;
  *(v86 + 160) = 0xD000000000000017;
  *(v86 + 168) = 0x80000001CA9D1720;
  v100 = v140;
  *(v86 + 184) = MEMORY[0x1E69E6158];
  *(v86 + 192) = v100;
  v101 = sub_1CA94C438("Destination (WFDestinationMediaRoute)", 37);
  v144 = v102;
  *&v145 = v101;
  v103 = sub_1CA94C438("Destination", 11);
  v105 = v104;
  v151 = &v135;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v135 - v157;
  sub_1CA948D98();
  v107 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v145, v144, v103, v105, 0, 0, v106, &v135 - v96);
  *(v86 + 224) = v154;
  *(v86 + 200) = v109;
  v110 = sub_1CA94C368();
  *(v86 + 264) = MEMORY[0x1E69E6158];
  *(v86 + 232) = v110;
  *(v86 + 240) = 0x4566666F646E6148;
  *(v86 + 248) = 0xEF746E696F70646ELL;
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v113 = v150;
  v150[5] = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v115 = v146;
  *(v146 + 360) = v113;
  v115[48] = v114;
  v115[49] = @"ParameterSummary";
  v116 = @"ParameterSummary";
  v117 = sub_1CA94C438("Hand off playback from ${WFSourceMediaRoute} to ${WFDestinationMediaRoute} (Parameter Summary)", 94);
  v119 = v118;
  v120 = sub_1CA94C438("Hand off playback from ${WFSourceMediaRoute} to ${WFDestinationMediaRoute}", 74);
  v122 = v121;
  v154 = &v135;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v135 - v157;
  sub_1CA948D98();
  v124 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v135 - v153;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  v128 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v129 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v115[50] = v128;
  v115[53] = v129;
  v115[54] = @"RequiredResources";
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1CA9813B0;
  v158 = 2;
  v159 = 1;
  v131 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v132 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v158);
  *(v130 + 32) = v133;
  v115[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v115[55] = v130;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5A9DB4()
{
  v91 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v90 = xmmword_1CA981300;
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9D1860;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("directory", 9);
  v6 = v5;
  v7 = sub_1CA94C438("directory", 9);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v96 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = v11;
  v12 = &v86 - v96;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v95 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v93 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v94 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v86 - v94;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v92 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v89 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Makes a new Dropbox folder.", 27);
  v87 = v24;
  v25 = sub_1CA94C438("Makes a new Dropbox folder.", 27);
  v27 = v26;
  v88 = &v86;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v86 - v96;
  sub_1CA948D98();
  v29 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v86 - v94;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v87, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v92;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v89;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 0x786F62706F7244;
  *(inited + 168) = 0xE700000000000000;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Name";
  v35 = @"IconName";
  v36 = @"Name";
  v37 = sub_1CA94C438("Create Dropbox Folder (Action Name)", 35);
  v39 = v38;
  v40 = sub_1CA94C438("Create Dropbox Folder", 21);
  v42 = v41;
  v89 = &v86;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v86 - v96;
  sub_1CA948D98();
  v44 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v86 - v94;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v37, v39, v40, v42, 0, 0, v43, v45);
  *(inited + 224) = v92;
  *(inited + 232) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v89 = swift_allocObject();
  *(v89 + 1) = xmmword_1CA9813B0;
  v88 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v47 = swift_initStackObject();
  *(v47 + 16) = v90;
  *(v47 + 32) = @"AutocapitalizationType";
  *(v47 + 40) = 1701736270;
  *(v47 + 48) = 0xE400000000000000;
  v48 = MEMORY[0x1E69E6158];
  *(v47 + 64) = MEMORY[0x1E69E6158];
  *(v47 + 72) = @"Class";
  *(v47 + 80) = 0xD000000000000014;
  *(v47 + 88) = 0x80000001CA99B500;
  *(v47 + 104) = v48;
  *(v47 + 112) = @"Description";
  v49 = @"Parameters";
  v50 = @"AutocapitalizationType";
  v51 = @"Class";
  v52 = @"Description";
  v53 = sub_1CA94C438("The path of the new folder. For example, if you want to create “Adventure” in an existing folder titled “Photos”, put “/Photos/Adventure/” (WFFilePath)", 163);
  v87 = v54;
  v55 = sub_1CA94C438("The path of the new folder. For example, if you want to create “Adventure” in an existing folder titled “Photos”, put “/Photos/Adventure/”", 150);
  v57 = v56;
  *&v90 = &v86;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v86 - v96;
  sub_1CA948D98();
  v59 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v86 - v94;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 120) = sub_1CA2F9F14(v53, v87, v55, v57, 0, 0, v58, v60);
  *(v47 + 144) = v92;
  *(v47 + 152) = @"DisableAutocorrection";
  v62 = MEMORY[0x1E69E6370];
  *(v47 + 160) = 1;
  *(v47 + 184) = v62;
  *(v47 + 192) = @"Key";
  *(v47 + 200) = 0x6150656C69464657;
  *(v47 + 208) = 0xEA00000000006874;
  v63 = MEMORY[0x1E69E6158];
  *(v47 + 224) = MEMORY[0x1E69E6158];
  *(v47 + 232) = @"KeyboardType";
  *(v47 + 240) = 0x6372616553626557;
  *(v47 + 248) = 0xE900000000000068;
  *(v47 + 264) = v63;
  *(v47 + 272) = @"Label";
  v64 = @"DisableAutocorrection";
  v65 = @"Key";
  v66 = @"KeyboardType";
  v67 = @"Label";
  v68 = sub_1CA94C438("Path (WFFilePath)", 17);
  v87 = v69;
  v70 = sub_1CA94C438("Path", 4);
  v72 = v71;
  *&v90 = &v86;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v86 - v96;
  sub_1CA948D98();
  v74 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v86 - v94;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 280) = sub_1CA2F9F14(v68, v87, v70, v72, 0, 0, v73, v75);
  *(v47 + 304) = v92;
  *(v47 + 312) = @"TextAlignment";
  *(v47 + 344) = MEMORY[0x1E69E6158];
  *(v47 + 320) = 1952867660;
  *(v47 + 328) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v77 = @"TextAlignment";
  v78 = sub_1CA94C1E8();
  v79 = sub_1CA2F864C(v78);
  v80 = v89;
  v89[4] = v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 240) = v80;
  *(inited + 264) = v81;
  *(inited + 272) = @"RequiredResources";
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 280) = &unk_1F4A07CF8;
  *(inited + 304) = v82;
  *(inited + 312) = @"SuggestedAsInitialAction";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v83 = @"RequiredResources";
  v84 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5AA8C8()
{
  v182 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9D1910;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("degrees|distance|pressure|measure|speed|weather", 47);
  v6 = v5;
  v7 = sub_1CA94C438("degrees|distance|pressure|measure|speed|weather", 47);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v197 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v198 = v11;
  v12 = &v177 - v197;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v196 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v194 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v195 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v177 - v195;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v193 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v191 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v181 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Converts the measurements passed into the action to the specified unit.", 71);
  *&v189 = v27;
  v28 = sub_1CA94C438("Converts the measurements passed into the action to the specified unit.", 71);
  v30 = v29;
  v190 = &v177;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v177 - v197;
  sub_1CA948D98();
  v32 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v177 - v195;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v189, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v193;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v191;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v189 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 0;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v187;
  *(v38 + 192) = &unk_1F4A07D78;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v191 = v42;
  v192 = inited;
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 0;
  *(inited + 264) = v39;
  *(inited + 272) = @"LocallyProcessesData";
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"LocallyProcessesData";
  v45 = @"Name";
  v46 = sub_1CA94C438("Convert Measurement (Action Name)", 33);
  v48 = v47;
  v49 = sub_1CA94C438("Convert Measurement", 19);
  v51 = v50;
  v188 = &v177;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v177 - v197;
  sub_1CA948D98();
  v53 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v177 - v195;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v57 = v192;
  v58 = v193;
  v192[40] = v56;
  v57[43] = v58;
  v57[44] = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v189;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 0;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v188 = sub_1CA94C438("Converted Measurement (Default Output Name)", 43);
  v186 = v61;
  v62 = sub_1CA94C438("Converted Measurement", 21);
  v64 = v63;
  v190 = &v177;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v177 - v197;
  sub_1CA948D98();
  v66 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v177 - v195;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v188, v186, v62, v64, 0, 0, v65, v67);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  v69 = v187;
  *(v59 + 216) = v187;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A07DA8;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = v192;
  v192[45] = v71;
  v72[48] = v191;
  v72[49] = @"Parameters";
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_1CA981470;
  v190 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1CA981370;
  v179 = 0xD000000000000019;
  *(v73 + 32) = @"Class";
  *(v73 + 40) = 0xD000000000000019;
  *(v73 + 48) = 0x80000001CA9B0C40;
  *(v73 + 64) = v70;
  *(v73 + 72) = @"DefaultValue";
  *(v73 + 80) = 0x6874676E654CLL;
  *(v73 + 88) = 0xE600000000000000;
  *(v73 + 104) = v70;
  *(v73 + 112) = @"DisallowedVariableTypes";
  *(v73 + 120) = &unk_1F4A07DD8;
  *(v73 + 144) = v69;
  *(v73 + 152) = @"Key";
  v178 = 0x80000001CA994540;
  *(v73 + 160) = 0xD000000000000015;
  *(v73 + 168) = 0x80000001CA994540;
  *(v73 + 184) = v70;
  *(v73 + 192) = @"Label";
  v74 = @"Class";
  v75 = @"Key";
  v76 = @"Label";
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v185 = v77;
  v184 = v78;
  v183 = v79;
  v80 = @"Parameters";
  v81 = @"DefaultValue";
  v82 = @"DisallowedVariableTypes";
  v83 = sub_1CA94C438("Type (WFMeasurementUnitType)", 28);
  v85 = v84;
  v86 = sub_1CA94C438("Type", 4);
  v88 = v87;
  v187 = &v177;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v177 - v197;
  sub_1CA948D98();
  v90 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v177 - v195;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v83, v85, v86, v88, 0, 0, v89, v91);
  *(v73 + 224) = v193;
  *(v73 + 200) = v93;
  _s3__C3KeyVMa_0(0);
  v187 = v94;
  v186 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v95 = sub_1CA94C1E8();
  v96 = sub_1CA2F864C(v95);
  *(v191 + 32) = v96;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA981380;
  *(v97 + 32) = @"AlwaysShowsButton";
  *(v97 + 40) = 1;
  v98 = v185;
  *(v97 + 64) = MEMORY[0x1E69E6370];
  *(v97 + 72) = v98;
  *(v97 + 80) = 0xD000000000000020;
  *(v97 + 88) = 0x80000001CA9D1A20;
  v99 = MEMORY[0x1E69E6158];
  v100 = v184;
  *(v97 + 104) = MEMORY[0x1E69E6158];
  *(v97 + 112) = v100;
  *(v97 + 120) = 0xD000000000000011;
  *(v97 + 128) = 0x80000001CA9B0C80;
  v101 = v183;
  *(v97 + 144) = v99;
  *(v97 + 152) = v101;
  v102 = @"AlwaysShowsButton";
  v103 = sub_1CA94C438("Unit (WFMeasurementUnit)", 24);
  v105 = v104;
  v106 = sub_1CA94C438("Unit", 4);
  v108 = v107;
  v177 = &v177;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v177 - v197;
  sub_1CA948D98();
  v110 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v177 - v195;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 160) = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  *(v97 + 184) = v193;
  *(v97 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v113 = swift_allocObject();
  *(v113 + 16) = v181;
  v114 = @"RequiredResources";
  v115 = MEMORY[0x1E69E6158];
  *(v113 + 32) = sub_1CA94C1E8();
  *(v97 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v97 + 200) = v113;
  v116 = sub_1CA94C368();
  *(v97 + 264) = v115;
  *(v97 + 232) = v116;
  *(v97 + 240) = 0xD000000000000015;
  *(v97 + 248) = v178;
  v117 = sub_1CA94C1E8();
  v118 = sub_1CA2F864C(v117);
  *(v191 + 40) = v118;
  v119 = swift_initStackObject();
  *(v119 + 16) = v189;
  v120 = v179;
  *(v119 + 32) = v185;
  *(v119 + 40) = v120;
  *(v119 + 48) = 0x80000001CA99B030;
  v121 = v184;
  *(v119 + 64) = v115;
  *(v119 + 72) = v121;
  *(v119 + 80) = 0x7475706E494657;
  *(v119 + 88) = 0xE700000000000000;
  v122 = v183;
  *(v119 + 104) = v115;
  *(v119 + 112) = v122;
  v188 = sub_1CA94C438("Measurement (WFInput)", 21);
  v185 = v123;
  v124 = sub_1CA94C438("Measurement", 11);
  v184 = v125;
  *&v189 = &v177;
  MEMORY[0x1EEE9AC00](v124);
  v126 = v197;
  sub_1CA948D98();
  v127 = v196;
  v128 = [v196 bundleURL];
  v183 = &v177;
  MEMORY[0x1EEE9AC00](v128);
  v129 = v195;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 120) = sub_1CA2F9F14(v188, v185, v124, v184, 0, 0, &v177 - v126, &v177 - v129);
  v131 = v193;
  *(v119 + 144) = v193;
  *(v119 + 152) = @"Placeholder";
  v132 = @"Placeholder";
  v188 = sub_1CA94C438("Measurement (WFInput)", 21);
  v185 = v133;
  v184 = sub_1CA94C438("Measurement", 11);
  v135 = v134;
  *&v189 = &v177;
  MEMORY[0x1EEE9AC00](v184);
  sub_1CA948D98();
  v136 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v188, v185, v184, v135, 0, 0, &v177 - v126, &v177 - v129);
  *(v119 + 184) = v131;
  *(v119 + 160) = v138;
  v139 = sub_1CA94C1E8();
  v140 = sub_1CA2F864C(v139);
  v141 = v191;
  *(v191 + 48) = v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v143 = v192;
  v192[50] = v141;
  v143[53] = v142;
  v143[54] = @"ParameterSummary";
  v191 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_1CA981360;
  v190 = "Measurement (WFInput)";
  v144 = @"ParameterSummary";
  v145 = sub_1CA94C438("Convert ${WFInput} into ${WFMeasurementUnitType}", 48);
  v147 = v146;
  v148 = sub_1CA94C438("Convert ${WFInput} into ${WFMeasurementUnitType}", 48);
  v150 = v149;
  *&v189 = &v177;
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v177 - v197;
  sub_1CA948D98();
  v152 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v177 - v195;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v155 = sub_1CA2F9F14(v145, v147, v148, v150, 0, 0, v151, v153);
  v156 = objc_allocWithZone(WFActionParameterSummaryValue);
  v157 = sub_1CA65DD78(0xD00000000000001DLL, v190 | 0x8000000000000000, v155);
  *(v193 + 32) = v157;
  v190 = "urementUnitType}";
  v158 = sub_1CA94C438("Convert ${WFInput} into ${WFMeasurementUnitType} in ${WFMeasurementUnit}", 72);
  v160 = v159;
  v161 = sub_1CA94C438("Convert ${WFInput} into ${WFMeasurementUnitType} in ${WFMeasurementUnit}", 72);
  v163 = v162;
  *&v189 = &v177;
  MEMORY[0x1EEE9AC00](v161);
  v164 = &v177 - v197;
  sub_1CA948D98();
  v165 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = &v177 - v195;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v158, v160, v161, v163, 0, 0, v164, v166);
  v169 = objc_allocWithZone(WFActionParameterSummaryValue);
  v170 = sub_1CA65DD78(0xD00000000000002FLL, v190 | 0x8000000000000000, v168);
  v171 = v193;
  *(v193 + 40) = v170;
  v172 = v191;
  v173 = sub_1CA65AF90(v171);
  v174 = v192;
  v192[55] = v173;
  v174[58] = v172;
  v174[59] = @"ResidentCompatible";
  v174[63] = MEMORY[0x1E69E6370];
  *(v174 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v175 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5ABE64()
{
  v125 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9D1BA0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v130 = sub_1CA94C438("maps|search|query|place|location|find", 37);
  v5 = v4;
  v6 = sub_1CA94C438("maps|search|query|place|location|find", 37);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v131 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v132 = v10;
  v11 = &v117 - v131;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v129 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v127 = v14;
  v128 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v117 - v128;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v130, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v130 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"Description";
  v124 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  v126 = xmmword_1CA981310;
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Passes the specified location to the next action.", 49);
  v122 = v23;
  v24 = sub_1CA94C438("Passes the specified location to the next action.", 49);
  v26 = v25;
  v123 = &v117;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v117 - v131;
  sub_1CA948D98();
  v28 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v117 - v128;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v22, v122, v24, v26, 0, 0, v27, v29);
  *(v19 + 64) = v130;
  *(v19 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v124;
  *(inited + 120) = sub_1CA6B3784(v32);
  *(inited + 144) = v33;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6E697070616DLL;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 224) = v34;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  *(inited + 264) = v34;
  *(inited + 272) = @"InputPassthrough";
  v35 = MEMORY[0x1E69E6370];
  *(inited + 280) = 0;
  *(inited + 304) = v35;
  *(inited + 312) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"IconSymbolColor";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438("Location (Action Name)", 22);
  v43 = v42;
  v44 = sub_1CA94C438("Location", 8);
  v46 = v45;
  v124 = &v117;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v117 - v131;
  sub_1CA948D98();
  v48 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v117 - v128;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 344) = v130;
  *(inited + 352) = @"Output";
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  v121 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x75736F6C63736944;
  *(v51 + 40) = 0xEF6C6576654C6572;
  *(v51 + 48) = 0x63696C627550;
  *(v51 + 56) = 0xE600000000000000;
  *(v51 + 72) = MEMORY[0x1E69E6158];
  *(v51 + 80) = 0x656C7069746C754DLL;
  *(v51 + 88) = 0xE800000000000000;
  *(v51 + 96) = 0;
  *(v51 + 120) = MEMORY[0x1E69E6370];
  *(v51 + 128) = 0x614E74757074754FLL;
  *(v51 + 136) = 0xEA0000000000656DLL;
  v52 = @"Output";
  v53 = sub_1CA94C438("Location (Default Output Name)", 30);
  v122 = v54;
  v55 = sub_1CA94C438("Location", 8);
  v57 = v56;
  v123 = &v117;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v117 - v131;
  sub_1CA948D98();
  v59 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v117 - v128;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 144) = sub_1CA2F9F14(v53, v122, v55, v57, 0, 0, v58, v60);
  *(v51 + 168) = v130;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  *(v51 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 192) = &unk_1F4A07E88;
  v62 = MEMORY[0x1E69E6158];
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v63;
  *(inited + 384) = v64;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v123 = swift_allocObject();
  *(v123 + 1) = xmmword_1CA9813B0;
  v122 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_allocObject();
  *(v65 + 16) = v121;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000013;
  *(v65 + 48) = 0x80000001CA99B730;
  *(v65 + 64) = v62;
  *(v65 + 72) = @"Key";
  *(v65 + 80) = 0x697461636F4C4657;
  *(v65 + 88) = 0xEA00000000006E6FLL;
  *(v65 + 104) = v62;
  *(v65 + 112) = @"Label";
  v66 = @"Parameters";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v70 = sub_1CA94C438("Location (WFLocation)", 21);
  v119 = v71;
  v120 = v70;
  v72 = sub_1CA94C438("Location", 8);
  v118 = v73;
  *&v121 = &v117;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v117 - v131;
  sub_1CA948D98();
  v75 = v129;
  v76 = [v129 bundleURL];
  v117 = &v117;
  MEMORY[0x1EEE9AC00](v76);
  v77 = v128;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 120) = sub_1CA2F9F14(v120, v119, v72, v118, 0, 0, v74, &v117 - v77);
  *(v65 + 144) = v130;
  *(v65 + 152) = @"Prompt";
  v79 = @"Prompt";
  v80 = sub_1CA94C438("What’s the location? (WFLocation)", 35);
  v119 = v81;
  v120 = v80;
  v82 = sub_1CA94C438("What’s the location?", 22);
  v118 = v83;
  *&v121 = &v117;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v117 - v131;
  sub_1CA948D98();
  v85 = [v75 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v120, v119, v82, v118, 0, 0, v84, &v117 - v77);
  *(v65 + 184) = v130;
  *(v65 + 160) = v87;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v88 = sub_1CA94C1E8();
  v89 = sub_1CA2F864C(v88);
  v90 = v123;
  v123[4] = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v90;
  *(inited + 424) = v91;
  *(inited + 432) = @"ParameterSummary";
  v92 = @"ParameterSummary";
  v93 = sub_1CA94C438("${WFLocation} (Parameter Summary)", 33);
  v95 = v94;
  v96 = sub_1CA94C438("${WFLocation}", 13);
  v98 = v97;
  v130 = &v117;
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v117 - v131;
  sub_1CA948D98();
  v100 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v117 - v128;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  v104 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v105 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v104;
  *(inited + 464) = v105;
  *(inited + 472) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v106 = swift_allocObject();
  *(v106 + 16) = v126;
  v107 = swift_initStackObject();
  *(v107 + 16) = xmmword_1CA97EDF0;
  *(v107 + 32) = 0xD000000000000011;
  *(v107 + 40) = 0x80000001CA99B240;
  v108 = swift_allocObject();
  *(v108 + 16) = v126;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1CA9813C0;
  strcpy((v109 + 32), "WFParameterKey");
  *(v109 + 47) = -18;
  *(v109 + 48) = 0x697461636F4C4657;
  *(v109 + 56) = 0xEA00000000006E6FLL;
  v110 = MEMORY[0x1E69E6158];
  *(v109 + 72) = MEMORY[0x1E69E6158];
  *(v109 + 80) = 0xD000000000000010;
  *(v109 + 88) = 0x80000001CA993570;
  v111 = @"RequiredResources";
  v112 = sub_1CA94C1E8();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v109 + 96) = v112;
  *(v109 + 120) = v113;
  *(v109 + 128) = 0x72756F7365524657;
  *(v109 + 168) = v110;
  *(v109 + 136) = 0xEF7373616C436563;
  *(v109 + 144) = 0xD00000000000001BLL;
  *(v109 + 152) = 0x80000001CA993590;
  *(v108 + 32) = sub_1CA94C1E8();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v107 + 48) = v108;
  *(v107 + 72) = v114;
  *(v107 + 80) = 0x72756F7365524657;
  *(v107 + 120) = v110;
  *(v107 + 88) = 0xEF7373616C436563;
  *(v107 + 96) = 0xD000000000000018;
  *(v107 + 104) = 0x80000001CA994040;
  *(v106 + 32) = sub_1CA94C1E8();
  *(inited + 480) = v106;
  *(inited + 504) = v114;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v115 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5ACEEC()
{
  v31 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1702194242;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000026;
  *(inited + 128) = 0x80000001CA9D1CB0;
  *(inited + 144) = v1;
  *(inited + 152) = @"Input";
  v2 = @"ActionClass";
  v3 = @"IconColor";
  v4 = @"IconSymbol";
  v5 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v6 = sub_1CA94C1E8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 160) = v6;
  *(inited + 184) = v7;
  *(inited + 192) = @"LocallyProcessesData";
  v8 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v8;
  *(inited + 232) = @"Name";
  v9 = @"LocallyProcessesData";
  v10 = @"Name";
  v11 = sub_1CA94C438("Filter Images (Action Name)", 27);
  v30 = v12;
  v13 = sub_1CA94C438("Filter Images", 13);
  v15 = v14;
  v16 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v11, v30, v13, v15, 0, 0, v18, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v24;
  *(inited + 264) = v25;
  *(inited + 272) = @"ResidentCompatible";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v26 = @"ResidentCompatible";
  v27 = sub_1CA94C368();
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v27;
  *(inited + 320) = 0xD000000000000012;
  *(inited + 328) = 0x80000001CA9933B0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA5AD2EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA5AD30C, 0, 0);
}

uint64_t sub_1CA5AD30C()
{
  [**(v0 + 24) singleStateClass];
  swift_getObjCClassMetadata();
  v1 = off_1E836F350;
  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  if (swift_dynamicCastMetatype() || (v1 = off_1E836E828, sub_1CA25B3D0(0, &unk_1EC447480, off_1E836E828), swift_dynamicCastMetatype()))
  {
    sub_1CA94A898();
    v2 = sub_1CA94C368();

    v3 = [objc_allocWithZone(*v1) initWithValue_];

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    sub_1CA3DBA78();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1CA5AD484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1CA437724;

  return sub_1CA5AD2EC(a2, a3);
}

void WFDatabase.performTransaction<A>(reason:_:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v7 = v6;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v26 = sub_1CA94D098();
  v12 = *(v26 - 8);
  v13 = MEMORY[0x1EEE9AC00](v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  __swift_storeEnumTagSinglePayload(&v25 - v16, 1, 1, a5);
  if (a2)
  {
    v18 = sub_1CA94C368();
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = v17;
  v19[4] = a3;
  v19[5] = a4;
  v20 = swift_allocObject();
  v20[2] = sub_1CA5AD9B4;
  v20[3] = v19;
  aBlock[4] = sub_1CA5AD9E8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA5ADA10;
  aBlock[3] = &block_descriptor_25;
  v21 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v7 performTransactionWithReason:v18 block:v21 error:aBlock];
  _Block_release(v21);

  v22 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v22)
  {
    swift_willThrow();
    (*(v12 + 8))(v17, v26);
  }

  else
  {
    v24 = v26;
    (*(v12 + 16))(v15, v17, v26);
    if (__swift_getEnumTagSinglePayload(v15, 1, a5) == 1)
    {
      __break(1u);
    }

    else
    {
      (*(*(a5 - 8) + 32))(v25, v15, a5);
      (*(v12 + 8))(v17, v24);
    }
  }
}

uint64_t sub_1CA5AD880(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = sub_1CA94D098();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  a3(v10);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, a5);
  return (*(v9 + 40))(a2, v12, v8);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA5ADA88()
{
  v152 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D1D20;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v160 = inited;
  v162 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  v159 = xmmword_1CA981310;
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v163 = sub_1CA94C438("Gets cards, lists, or boards in your Trello account.", 52);
  v164 = v9;
  v10 = sub_1CA94C438("Gets cards, lists, or boards in your Trello account.", 52);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v165 = v14;
  v168 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v147 - v168;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB9F690;
  v167 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v166 = v19;
  v169 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v147 - v169;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v163, v164, v10, v12, 0, 0, v15, v20);
  v164 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v164;
  *(v6 + 40) = v22;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v23 = sub_1CA94C1E8();
  v24 = v162;
  v25 = sub_1CA6B3784(v23);
  v26 = v160;
  v160[15] = v25;
  v26[18] = v24;
  v26[19] = @"Name";
  v27 = @"Name";
  v28 = sub_1CA94C438("Get Trello Items (Action Name)", 30);
  v30 = v29;
  v31 = sub_1CA94C438("Get Trello Items", 16);
  v33 = v32;
  v163 = &v147;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v147 - v168;
  sub_1CA948D98();
  v35 = [v16 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v147 - v169;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26[20] = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  v26[23] = v164;
  v26[24] = @"Output";
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v150 = xmmword_1CA9813C0;
  *(v38 + 16) = xmmword_1CA9813C0;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x614E74757074754FLL;
  *(v38 + 88) = 0xEA0000000000656DLL;
  v40 = @"Output";
  v41 = sub_1CA94C438("Trello Items (Default Output Name)", 34);
  v162 = v42;
  v43 = sub_1CA94C438("Trello Items", 12);
  v45 = v44;
  v163 = &v147;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v147 - v168;
  sub_1CA948D98();
  v47 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v147 - v169;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v50 = sub_1CA2F9F14(v41, v162, v43, v45, 0, 0, v46, v48);
  v51 = v164;
  *(v38 + 96) = v50;
  *(v38 + 120) = v51;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 136) = 0xE500000000000000;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 168) = v158;
  *(v38 + 144) = &unk_1F4A07FF8;
  v52 = MEMORY[0x1E69E6158];
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[25] = v53;
  v26[28] = v54;
  v26[29] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v163 = swift_allocObject();
  v156 = xmmword_1CA981470;
  *(v163 + 1) = xmmword_1CA981470;
  v162 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  v149 = xmmword_1CA981370;
  *(v55 + 16) = xmmword_1CA981370;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000016;
  *(v55 + 48) = 0x80000001CA99C4A0;
  *(v55 + 64) = v52;
  *(v55 + 72) = @"DefaultValue";
  *(v55 + 80) = 0x736472616F42;
  *(v55 + 88) = 0xE600000000000000;
  *(v55 + 104) = v52;
  *(v55 + 112) = @"Items";
  v161 = swift_allocObject();
  *(v161 + 1) = v156;
  *&v156 = @"Class";
  v56 = @"Parameters";
  v57 = @"DefaultValue";
  v58 = @"Items";
  v59 = sub_1CA94C438("Boards (WFTrelloItemType)", 25);
  v153 = v60;
  v154 = v59;
  v61 = sub_1CA94C438("Boards", 6);
  v148 = v62;
  v155 = &v147;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v168;
  sub_1CA948D98();
  v64 = v167;
  v65 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v147 - v169;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v154, v153, v61, v148, 0, 0, &v147 - v63, v66);
  v161[4] = v68;
  v69 = sub_1CA94C438("Lists (WFTrelloItemType)", 24);
  v153 = v70;
  v154 = v69;
  v71 = sub_1CA94C438("Lists", 5);
  v148 = v72;
  v155 = &v147;
  MEMORY[0x1EEE9AC00](v71);
  sub_1CA948D98();
  v73 = [v64 bundleURL];
  v147 = &v147;
  MEMORY[0x1EEE9AC00](v73);
  v74 = v169;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v154, v153, v71, v148, 0, 0, &v147 - v63, &v147 - v74);
  v161[5] = v76;
  v77 = sub_1CA94C438("Cards (WFTrelloItemType)", 24);
  v153 = v78;
  v154 = v77;
  v79 = sub_1CA94C438("Cards", 5);
  v148 = v80;
  v155 = &v147;
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948D98();
  v81 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v154, v153, v79, v148, 0, 0, &v147 - v63, &v147 - v74);
  v84 = v161;
  v161[6] = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v55 + 120) = v84;
  *(v55 + 144) = v85;
  *(v55 + 152) = @"Key";
  v148 = 0x80000001CA99A520;
  *(v55 + 160) = 0xD000000000000010;
  *(v55 + 168) = 0x80000001CA99A520;
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Label";
  v86 = @"Key";
  v87 = @"Label";
  v88 = v86;
  v89 = v87;
  v153 = v88;
  v154 = v89;
  v90 = sub_1CA94C438("Get (WFTrelloItemType)", 22);
  v92 = v91;
  v93 = sub_1CA94C438("Get", 3);
  v95 = v94;
  v161 = &v147;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v147 - v168;
  sub_1CA948D98();
  v97 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v147 - v169;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v90, v92, v93, v95, 0, 0, v96, v98);
  *(v55 + 224) = v164;
  *(v55 + 200) = v100;
  _s3__C3KeyVMa_0(0);
  v161 = v101;
  v155 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  v163[4] = v103;
  v104 = swift_initStackObject();
  *(v104 + 16) = xmmword_1CA981350;
  *(v104 + 32) = v156;
  *(v104 + 40) = 0xD00000000000001CLL;
  *(v104 + 48) = 0x80000001CA9A0130;
  v105 = MEMORY[0x1E69E6158];
  v106 = v153;
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = v106;
  strcpy((v104 + 80), "WFTrelloBoard");
  *(v104 + 94) = -4864;
  v107 = v154;
  *(v104 + 104) = v105;
  *(v104 + 112) = v107;
  v108 = sub_1CA94C438("Board (WFTrelloBoard)", 21);
  v110 = v109;
  v111 = sub_1CA94C438("Board", 5);
  v113 = v112;
  v147 = &v147;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v147 - v168;
  sub_1CA948D98();
  v115 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v147 - v169;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v104 + 120) = sub_1CA2F9F14(v108, v110, v111, v113, 0, 0, v114, v116);
  *(v104 + 144) = v164;
  *(v104 + 152) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v118 = swift_allocObject();
  *(v118 + 16) = v159;
  v119 = swift_allocObject();
  *(v119 + 16) = v150;
  strcpy((v119 + 32), "WFParameterKey");
  *(v119 + 47) = -18;
  v120 = v148;
  *(v119 + 48) = 0xD000000000000010;
  *(v119 + 56) = v120;
  v121 = MEMORY[0x1E69E6158];
  *(v119 + 72) = MEMORY[0x1E69E6158];
  *(v119 + 80) = 0xD000000000000011;
  *(v119 + 88) = 0x80000001CA9A2F30;
  *(v119 + 96) = &unk_1F4A08048;
  *(v119 + 120) = v158;
  *(v119 + 128) = 0x72756F7365524657;
  *(v119 + 168) = v121;
  *(v119 + 136) = 0xEF7373616C436563;
  *(v119 + 144) = 0xD00000000000001BLL;
  *(v119 + 152) = 0x80000001CA993590;
  v151 = @"RequiredResources";
  *(v118 + 32) = sub_1CA94C1E8();
  *(v104 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v104 + 160) = v118;
  v122 = sub_1CA94C1E8();
  v123 = sub_1CA2F864C(v122);
  v163[5] = v123;
  v124 = swift_allocObject();
  *(v124 + 16) = v149;
  *(v124 + 32) = sub_1CA94C368();
  strcpy((v124 + 40), "WFTrelloBoard");
  *(v124 + 54) = -4864;
  v125 = v156;
  *(v124 + 64) = v121;
  *(v124 + 72) = v125;
  *(v124 + 80) = 0xD00000000000001BLL;
  *(v124 + 88) = 0x80000001CA9D1E80;
  v126 = v153;
  *(v124 + 104) = v121;
  *(v124 + 112) = v126;
  strcpy((v124 + 120), "WFTrelloList");
  *(v124 + 133) = 0;
  *(v124 + 134) = -5120;
  v127 = v154;
  *(v124 + 144) = v121;
  *(v124 + 152) = v127;
  v128 = sub_1CA94C438("List (WFTrelloList)", 19);
  v130 = v129;
  v131 = sub_1CA94C438("List", 4);
  v133 = v132;
  v157 = &v147;
  MEMORY[0x1EEE9AC00](v131);
  v134 = &v147 - v168;
  sub_1CA948D98();
  v135 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v147 - v169;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v124 + 160) = sub_1CA2F9F14(v128, v130, v131, v133, 0, 0, v134, v136);
  v138 = v151;
  *(v124 + 184) = v164;
  *(v124 + 192) = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v139 = swift_allocObject();
  *(v139 + 16) = v159;
  *(v139 + 32) = sub_1CA94C1E8();
  *(v124 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v124 + 200) = v139;
  v140 = sub_1CA94C1E8();
  v141 = sub_1CA2F864C(v140);
  v142 = v163;
  v163[6] = v141;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v144 = v160;
  v160[30] = v142;
  v144[33] = v143;
  v144[34] = @"RequiredResources";
  v144[38] = v158;
  v144[35] = &unk_1F4A08108;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v145 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5AEDC4()
{
  v274 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000020;
  *(inited + 48) = 0x80000001CA9C79B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("calendar|event|events|next|upcoming", 35);
  v6 = v5;
  v7 = sub_1CA94C438("calendar|event|events|next|upcoming", 35);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v290 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v291 = v11;
  v12 = &v264 - v290;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v288 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v287 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v289 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v264 - v289;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v286 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v284 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v273 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets upcoming calendar events, ordered from nearest to farthest away in time.", 77);
  v28 = v27;
  v29 = sub_1CA94C438("Gets upcoming calendar events, ordered from nearest to farthest away in time.", 77);
  v31 = v30;
  v283 = &v264;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v264 - v290;
  sub_1CA948D98();
  v33 = [v288 bundleURL];
  v285 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v264 - v289;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v286;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v284;
  v40 = sub_1CA6B3784(v38);
  v41 = v285;
  v285[20] = v40;
  v41[23] = v39;
  v41[24] = @"LocallyProcessesData";
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 200) = 1;
  v41[28] = v42;
  v41[29] = @"Name";
  v43 = @"LocallyProcessesData";
  v44 = @"Name";
  v45 = sub_1CA94C438("Get Upcoming Events (Action Name)", 33);
  v282 = v46;
  v283 = v45;
  v47 = sub_1CA94C438("Get Upcoming Events", 19);
  v49 = v48;
  v284 = &v264;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v264 - v290;
  sub_1CA948D98();
  v51 = v288;
  v52 = [v288 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v289;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v283, v282, v47, v49, 0, 0, v50, &v264 - v53);
  v56 = v285;
  v285[30] = v55;
  v57 = v286;
  v56[33] = v286;
  v56[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA9813C0;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  *(v58 + 48) = 1;
  *(v58 + 72) = MEMORY[0x1E69E6370];
  *(v58 + 80) = 0x614E74757074754FLL;
  *(v58 + 88) = 0xEA0000000000656DLL;
  v59 = @"Output";
  v60 = sub_1CA94C438("Events (Default Output Name)", 28);
  v282 = v61;
  v283 = v60;
  v62 = sub_1CA94C438("Events", 6);
  v281 = v63;
  v284 = &v264;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v264 - v290;
  sub_1CA948D98();
  v65 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 96) = sub_1CA2F9F14(v283, v282, v62, v281, 0, 0, v64, &v264 - v53);
  *(v58 + 120) = v57;
  *(v58 + 128) = 0x7365707954;
  *(v58 + 136) = 0xE500000000000000;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 168) = v272;
  *(v58 + 144) = &unk_1F4A08188;
  v67 = MEMORY[0x1E69E6158];
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v70 = v285;
  v285[35] = v68;
  v70[38] = v69;
  v70[39] = @"Parameters";
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v284 = swift_allocObject();
  v270 = xmmword_1CA981570;
  *(v284 + 1) = xmmword_1CA981570;
  v283 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1CA981370;
  v72 = @"Parameters";
  *(v71 + 32) = sub_1CA94C368();
  *(v71 + 40) = 1;
  *(v71 + 64) = MEMORY[0x1E69E6370];
  *(v71 + 72) = @"Class";
  *(v71 + 80) = 0xD000000000000019;
  *(v71 + 88) = 0x80000001CA9D1FE0;
  *(v71 + 104) = v67;
  *(v71 + 112) = @"Key";
  *(v71 + 120) = 0xD000000000000019;
  *(v71 + 128) = 0x80000001CA9C7AD0;
  *(v71 + 144) = v67;
  *(v71 + 152) = @"Label";
  v73 = @"Class";
  v74 = @"Key";
  v75 = @"Label";
  v76 = v73;
  v77 = v74;
  v78 = v75;
  v275 = v76;
  v276 = v77;
  v278 = v78;
  v280 = sub_1CA94C438("Calendar (WFGetUpcomingItemCalendar)", 36);
  v80 = v79;
  v81 = sub_1CA94C438("Calendar", 8);
  v83 = v82;
  v281 = &v264;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v264 - v290;
  sub_1CA948D98();
  v85 = [v288 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v264 - v289;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 160) = sub_1CA2F9F14(v280, v80, v81, v83, 0, 0, v84, v86);
  v88 = v286;
  *(v71 + 184) = v286;
  *(v71 + 192) = @"Prompt";
  v277 = @"Prompt";
  v280 = sub_1CA94C438("On which calendar? (WFGetUpcomingItemCalendar)", 46);
  *&v271 = v89;
  v90 = sub_1CA94C438("On which calendar?", 18);
  v92 = v91;
  v281 = &v264;
  MEMORY[0x1EEE9AC00](v90);
  v93 = v290;
  sub_1CA948D98();
  v94 = [v288 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v264 - v289;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v280, v271, v90, v92, 0, 0, &v264 - v93, v95);
  *(v71 + 224) = v88;
  *(v71 + 200) = v97;
  _s3__C3KeyVMa_0(0);
  v281 = v98;
  v280 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v99 = sub_1CA94C1E8();
  v100 = sub_1CA2F864C(v99);
  v284[4] = v100;
  v101 = swift_allocObject();
  v271 = xmmword_1CA981400;
  *(v101 + 16) = xmmword_1CA981400;
  v102 = v275;
  v103 = v276;
  *(v101 + 32) = v275;
  *(v101 + 40) = 0xD000000000000012;
  *(v101 + 48) = 0x80000001CA99B980;
  v104 = MEMORY[0x1E69E6158];
  *(v101 + 64) = MEMORY[0x1E69E6158];
  *(v101 + 72) = @"DefaultValue";
  v105 = MEMORY[0x1E69E6530];
  *(v101 + 80) = 1;
  *(v101 + 104) = v105;
  *(v101 + 112) = v103;
  v269 = 0xD000000000000016;
  *(v101 + 120) = 0xD000000000000016;
  *(v101 + 128) = 0x80000001CA9C7B20;
  v106 = v277;
  *(v101 + 144) = v104;
  *(v101 + 152) = v106;
  v107 = @"DefaultValue";
  v275 = v102;
  v276 = v103;
  v268 = v107;
  v108 = sub_1CA94C438("How many events? (WFGetUpcomingItemCount)", 41);
  v265 = v109;
  v266 = v108;
  v110 = sub_1CA94C438("How many events?", 16);
  v264 = v111;
  v267 = &v264;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v264 - v93;
  sub_1CA948D98();
  v113 = v288;
  v114 = [v288 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = v289;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 160) = sub_1CA2F9F14(v266, v265, v110, v264, 0, 0, v112, &v264 - v115);
  v117 = v286;
  *(v101 + 184) = v286;
  *(v101 + 192) = @"StepperDescription";
  v118 = @"StepperDescription";
  v119 = sub_1CA94C438("Number of Events (WFGetUpcomingItemCount)", 41);
  v265 = v120;
  v266 = v119;
  v121 = sub_1CA94C438("Number of Events", 16);
  v264 = v122;
  v267 = &v264;
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v264 - v290;
  sub_1CA948D98();
  v124 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 200) = sub_1CA2F9F14(v266, v265, v121, v264, 0, 0, v123, &v264 - v115);
  *(v101 + 224) = v117;
  *(v101 + 232) = @"StepperNoun";
  v126 = @"StepperNoun";
  v127 = sub_1CA94C438("%d Events", v264);
  v266 = v128;
  v267 = v127;
  v129 = v128;
  v296 = 0;
  v297 = 0xE000000000000000;
  sub_1CA94D408();

  v296 = v127;
  v297 = v129;
  v294 = 10;
  v295 = 0xE100000000000000;
  v292 = 32;
  v293 = 0xE100000000000000;
  sub_1CA27BAF0();
  v296 = sub_1CA94D1B8();
  v297 = v130;
  v131 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v265 = &v264;
  v132 = v296;
  v264 = v297;
  MEMORY[0x1EEE9AC00](v131);
  v133 = v290;
  sub_1CA948D98();
  v134 = [v288 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v264 - v289;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 240) = sub_1CA2F9F14(v132, v264, v267, v266, 0, 0, &v264 - v133, v135);
  v137 = v286;
  *(v101 + 264) = v286;
  *(v101 + 272) = @"StepperPrefix";
  v138 = @"StepperPrefix";
  v139 = sub_1CA94C438("Get (WFGetUpcomingItemCount)", 28);
  v265 = v140;
  v266 = v139;
  v141 = sub_1CA94C438("Get", 3);
  v143 = v142;
  v267 = &v264;
  MEMORY[0x1EEE9AC00](v141);
  sub_1CA948D98();
  v144 = [v288 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v264 - v289;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v266, v265, v141, v143, 0, 0, &v264 - v133, v145);
  *(v101 + 304) = v137;
  *(v101 + 280) = v147;
  v148 = sub_1CA94C1E8();
  v149 = sub_1CA2F864C(v148);
  v284[5] = v149;
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_1CA981380;
  v151 = v269;
  *(v150 + 32) = v275;
  *(v150 + 40) = v151;
  *(v150 + 48) = 0x80000001CA99C4A0;
  v152 = MEMORY[0x1E69E6158];
  v153 = v268;
  *(v150 + 64) = MEMORY[0x1E69E6158];
  *(v150 + 72) = v153;
  *(v150 + 80) = 0x79614420796E41;
  *(v150 + 88) = 0xE700000000000000;
  *(v150 + 104) = v152;
  *(v150 + 112) = @"Items";
  v279 = swift_allocObject();
  *(v279 + 1) = v270;
  v154 = @"Items";
  v155 = sub_1CA94C438("Any Day (WFDateSpecifier)", 25);
  v268 = v156;
  v269 = v155;
  v157 = sub_1CA94C438("Any Day", 7);
  v267 = v158;
  *&v270 = &v264;
  MEMORY[0x1EEE9AC00](v157);
  v159 = v290;
  sub_1CA948D98();
  v160 = [v288 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = v289;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163 = sub_1CA2F9F14(v269, v268, v157, v267, 0, 0, &v264 - v159, &v264 - v161);
  v279[4] = v163;
  v164 = sub_1CA94C438("Today (WFDateSpecifier)", 23);
  v268 = v165;
  v269 = v164;
  v166 = sub_1CA94C438("Today", 5);
  v267 = v167;
  *&v270 = &v264;
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v264 - v159;
  sub_1CA948D98();
  v169 = v288;
  v170 = [v288 bundleURL];
  v266 = &v264;
  MEMORY[0x1EEE9AC00](v170);
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v172 = sub_1CA2F9F14(v269, v268, v166, v267, 0, 0, v168, &v264 - v161);
  v173 = v279;
  v279[5] = v172;
  v174 = sub_1CA94C438("Tomorrow (WFDateSpecifier)", 26);
  v268 = v175;
  v269 = v174;
  v176 = sub_1CA94C438("Tomorrow", 8);
  v267 = v177;
  *&v270 = &v264;
  MEMORY[0x1EEE9AC00](v176);
  v178 = v290;
  sub_1CA948D98();
  v179 = [v169 bundleURL];
  v266 = &v264;
  MEMORY[0x1EEE9AC00](v179);
  v180 = v289;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v173 + 48) = sub_1CA2F9F14(v269, v268, v176, v267, 0, 0, &v264 - v178, &v264 - v180);
  v182 = sub_1CA94C438("Specified Day (WFDateSpecifier)", 31);
  v268 = v183;
  v269 = v182;
  v267 = sub_1CA94C438("Specified Day", 13);
  v185 = v184;
  *&v270 = &v264;
  MEMORY[0x1EEE9AC00](v267);
  v186 = &v264 - v178;
  sub_1CA948D98();
  v187 = v288;
  v188 = [v288 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v269, v268, v267, v185, 0, 0, v186, &v264 - v180);
  v191 = v279;
  v279[7] = v190;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v150 + 120) = v191;
  v193 = v276;
  *(v150 + 144) = v192;
  *(v150 + 152) = v193;
  *(v150 + 160) = 0x7053657461444657;
  *(v150 + 168) = 0xEF72656966696365;
  v194 = v278;
  *(v150 + 184) = MEMORY[0x1E69E6158];
  *(v150 + 192) = v194;
  v195 = sub_1CA94C438("Day (WFDateSpecifier)", 21);
  v269 = v196;
  *&v270 = v195;
  v197 = sub_1CA94C438("Day", 3);
  v268 = v198;
  v279 = &v264;
  MEMORY[0x1EEE9AC00](v197);
  v199 = v290;
  sub_1CA948D98();
  v200 = v187;
  v201 = [v187 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  v202 = &v264 - v289;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v150 + 200) = sub_1CA2F9F14(v270, v269, v197, v268, 0, 0, &v264 - v199, v202);
  v204 = v286;
  v205 = v277;
  *(v150 + 224) = v286;
  *(v150 + 232) = v205;
  v277 = sub_1CA94C438("Date Range (WFDateSpecifier)", 28);
  *&v270 = v206;
  v207 = sub_1CA94C438("Date Range", 10);
  v269 = v208;
  v279 = &v264;
  MEMORY[0x1EEE9AC00](v207);
  sub_1CA948D98();
  v209 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  v210 = &v264 - v289;
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v212 = sub_1CA2F9F14(v277, v270, v207, v269, 0, 0, &v264 - v199, v210);
  *(v150 + 264) = v204;
  *(v150 + 240) = v212;
  v213 = sub_1CA94C1E8();
  v214 = sub_1CA2F864C(v213);
  v284[6] = v214;
  v215 = swift_allocObject();
  *(v215 + 16) = v271;
  v216 = MEMORY[0x1E69E6158];
  *(v215 + 64) = MEMORY[0x1E69E6158];
  *(v215 + 32) = v275;
  *(v215 + 40) = 0xD000000000000014;
  *(v215 + 48) = 0x80000001CA9AB710;
  *(v215 + 72) = sub_1CA94C368();
  *(v215 + 80) = 1702125892;
  *(v215 + 88) = 0xE400000000000000;
  v217 = v276;
  *(v215 + 104) = v216;
  *(v215 + 112) = v217;
  *(v215 + 120) = 0x6669636570534657;
  *(v215 + 128) = 0xEF65746144646569;
  v218 = v278;
  *(v215 + 144) = v216;
  *(v215 + 152) = v218;
  v219 = sub_1CA94C438("Specified Day (WFSpecifiedDate)", 31);
  v278 = v220;
  v279 = v219;
  v221 = sub_1CA94C438("Specified Day", 13);
  v277 = v222;
  v282 = &v264;
  MEMORY[0x1EEE9AC00](v221);
  v223 = &v264 - v290;
  sub_1CA948D98();
  v224 = v288;
  v225 = [v288 bundleURL];
  v276 = &v264;
  MEMORY[0x1EEE9AC00](v225);
  v226 = v289;
  sub_1CA948B68();

  v227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v215 + 160) = sub_1CA2F9F14(v279, v278, v221, v277, 0, 0, v223, &v264 - v226);
  *(v215 + 184) = v286;
  *(v215 + 192) = @"Placeholder";
  v228 = @"Placeholder";
  v229 = sub_1CA94C438("June 29, 2007 (WFSpecifiedDate)", 31);
  v278 = v230;
  v279 = v229;
  v231 = sub_1CA94C438("June 29, 2007", 13);
  v277 = v232;
  v282 = &v264;
  MEMORY[0x1EEE9AC00](v231);
  v233 = &v264 - v290;
  sub_1CA948D98();
  v234 = [v224 bundleURL];
  MEMORY[0x1EEE9AC00](v234);
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v215 + 200) = sub_1CA2F9F14(v279, v278, v231, v277, 0, 0, v233, &v264 - v226);
  *(v215 + 224) = v286;
  *(v215 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v236 = swift_allocObject();
  *(v236 + 16) = v273;
  v237 = @"RequiredResources";
  v238 = MEMORY[0x1E69E6158];
  *(v236 + 32) = sub_1CA94C1E8();
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v215 + 240) = v236;
  *(v215 + 264) = v239;
  *(v215 + 272) = @"TextAlignment";
  *(v215 + 304) = v238;
  *(v215 + 280) = 0x7468676952;
  *(v215 + 288) = 0xE500000000000000;
  v240 = @"TextAlignment";
  v241 = sub_1CA94C1E8();
  v242 = sub_1CA2F864C(v241);
  v243 = v284;
  v284[7] = v242;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v245 = v285;
  v285[40] = v243;
  v245[43] = v244;
  v245[44] = @"ParameterSummary";
  v246 = @"ParameterSummary";
  v247 = sub_1CA94C438("Get ${WFGetUpcomingItemCount} from ${WFGetUpcomingItemCalendar} (Parameter Summary)", 83);
  v249 = v248;
  v250 = sub_1CA94C438("Get ${WFGetUpcomingItemCount} from ${WFGetUpcomingItemCalendar}", 63);
  v252 = v251;
  MEMORY[0x1EEE9AC00](v250);
  v253 = &v264 - v290;
  sub_1CA948D98();
  v254 = [v288 bundleURL];
  MEMORY[0x1EEE9AC00](v254);
  v255 = &v264 - v289;
  sub_1CA948B68();

  v256 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v257 = sub_1CA2F9F14(v247, v249, v250, v252, 0, 0, v253, v255);
  v258 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v259 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v260 = v285;
  v285[45] = v258;
  v260[48] = v259;
  v260[49] = @"RequiredResources";
  v260[53] = v272;
  v260[50] = &unk_1F4A08238;
  v261 = @"RequiredResources";
  v262 = sub_1CA94C368();
  v260[58] = MEMORY[0x1E69E6530];
  v260[54] = v262;
  v260[55] = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}