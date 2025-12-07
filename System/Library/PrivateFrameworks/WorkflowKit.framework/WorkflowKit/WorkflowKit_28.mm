id sub_1CA54710C()
{
  v161 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CA810;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("apple|script|hypertalk|event|OSA", 32);
  v6 = v5;
  v7 = sub_1CA94C438("apple|script|hypertalk|event|OSA", 32);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v169 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = v11;
  v12 = v153 - v169;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v168 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v171 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v166 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v153 - v166;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v167 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  *&v165 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v164 = xmmword_1CA9813C0;
  *(v23 + 16) = xmmword_1CA9813C0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v159 = v27;
  v160 = v26;
  v30 = v29;
  v163 = v153;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v153 - v169;
  sub_1CA948D98();
  v32 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v153 - v166;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v160, v159, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v167;
  *(v23 + 72) = @"DescriptionResult";
  v35 = @"DescriptionResult";
  v36 = sub_1CA94C438("The output from the script", 26);
  v159 = v37;
  v160 = v36;
  v158 = sub_1CA94C438("The output from the script", 26);
  v39 = v38;
  v163 = v153;
  MEMORY[0x1EEE9AC00](v158);
  v40 = v169;
  sub_1CA948D98();
  v41 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = v166;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 80) = sub_1CA2F9F14(v160, v159, v158, v39, 0, 0, v153 - v40, v153 - v42);
  *(v23 + 104) = v167;
  *(v23 + 112) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v45 = sub_1CA94C438("This action executes an AppleScript.", 36);
  v159 = v46;
  v160 = v45;
  v47 = sub_1CA94C438("This action executes an AppleScript.", 36);
  v49 = v48;
  v163 = v153;
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948D98();
  v50 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v160, v159, v47, v49, 0, 0, v153 - v40, v153 - v42);
  *(v23 + 144) = v167;
  *(v23 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v53 = sub_1CA94C1E8();
  v54 = v165;
  *(inited + 160) = sub_1CA6B3784(v53);
  *(inited + 184) = v54;
  *(inited + 192) = @"DisabledOnPlatforms";
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 224) = v55;
  v56 = v55;
  v163 = v55;
  *(inited + 200) = &unk_1F4A04010;
  v57 = @"DisabledOnPlatforms";
  *(inited + 232) = sub_1CA94C368();
  v58 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v58;
  *(inited + 272) = @"Input";
  v59 = v58;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v60 = swift_initStackObject();
  v165 = xmmword_1CA981350;
  *(v60 + 16) = xmmword_1CA981350;
  *(v60 + 32) = 0x656C7069746C754DLL;
  *(v60 + 40) = 0xE800000000000000;
  *(v60 + 48) = 1;
  *(v60 + 72) = v59;
  strcpy((v60 + 80), "ParameterKey");
  *(v60 + 93) = 0;
  *(v60 + 94) = -5120;
  *(v60 + 96) = 0x7475706E49;
  *(v60 + 104) = 0xE500000000000000;
  *(v60 + 120) = MEMORY[0x1E69E6158];
  *(v60 + 128) = 0x6465726975716552;
  *(v60 + 136) = 0xE800000000000000;
  *(v60 + 144) = 0;
  *(v60 + 168) = v59;
  *(v60 + 176) = 0x7365707954;
  *(v60 + 216) = v56;
  *(v60 + 184) = 0xE500000000000000;
  *(v60 + 192) = &unk_1F4A04040;
  v61 = @"Input";
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v160 = v63;
  *(inited + 280) = v62;
  *(inited + 304) = v63;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 320) = 0;
  *(inited + 344) = v59;
  *(inited + 352) = @"Name";
  v64 = @"InputPassthrough";
  v65 = @"Name";
  v66 = sub_1CA94C438("Run AppleScript (Action Name)", 29);
  v156 = v67;
  v157 = v66;
  v68 = sub_1CA94C438("Run AppleScript", 15);
  v155 = v69;
  v158 = v153;
  MEMORY[0x1EEE9AC00](v68);
  v70 = v153 - v169;
  sub_1CA948D98();
  v71 = v168;
  v72 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v166;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v157, v156, v68, v155, 0, 0, v70, v153 - v73);
  v75 = v167;
  *(inited + 384) = v167;
  *(inited + 392) = @"Output";
  v76 = swift_allocObject();
  *(v76 + 16) = v164;
  *(v76 + 32) = 0x656C7069746C754DLL;
  *(v76 + 40) = 0xE800000000000000;
  *(v76 + 48) = 1;
  *(v76 + 72) = MEMORY[0x1E69E6370];
  *(v76 + 80) = 0x614E74757074754FLL;
  *(v76 + 88) = 0xEA0000000000656DLL;
  v77 = @"Output";
  v78 = sub_1CA94C438("AppleScript Result (Default Output Name)", 40);
  v158 = v79;
  v159 = v78;
  v80 = sub_1CA94C438("AppleScript Result", 18);
  v157 = v81;
  *&v164 = v153;
  MEMORY[0x1EEE9AC00](v80);
  v82 = v153 - v169;
  sub_1CA948D98();
  v83 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 96) = sub_1CA2F9F14(v159, v158, v80, v157, 0, 0, v82, v153 - v73);
  *(v76 + 120) = v75;
  *(v76 + 128) = 0x7365707954;
  *(v76 + 168) = v163;
  *(v76 + 136) = 0xE500000000000000;
  *(v76 + 144) = &unk_1F4A04070;
  v85 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v160;
  *(inited + 432) = @"ParameterCollapsingBehavior";
  *(inited + 440) = 0x726576654ELL;
  *(inited + 448) = 0xE500000000000000;
  *(inited + 464) = v85;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v164 = swift_allocObject();
  *(v164 + 16) = xmmword_1CA981360;
  v163 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v86 = swift_allocObject();
  *(v86 + 16) = v165;
  *(v86 + 32) = @"Class";
  *(v86 + 40) = 0xD000000000000019;
  *(v86 + 48) = 0x80000001CA99B030;
  *(v86 + 64) = v85;
  *(v86 + 72) = @"Key";
  *(v86 + 80) = 0x7475706E49;
  *(v86 + 88) = 0xE500000000000000;
  *(v86 + 104) = v85;
  *(v86 + 112) = @"Label";
  v87 = @"Class";
  v88 = @"Key";
  v158 = v87;
  v160 = v88;
  v89 = @"ParameterCollapsingBehavior";
  v90 = @"Parameters";
  v91 = @"Label";
  v92 = sub_1CA94C438("Input (Input)", 13);
  v155 = v93;
  v156 = v92;
  v154 = sub_1CA94C438("Input", 5);
  v95 = v94;
  v157 = v153;
  MEMORY[0x1EEE9AC00](v154);
  v162 = inited;
  v96 = v169;
  sub_1CA948D98();
  v97 = v168;
  v98 = [v168 bundleURL];
  v153[1] = v153;
  MEMORY[0x1EEE9AC00](v98);
  v99 = v166;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 120) = sub_1CA2F9F14(v156, v155, v154, v95, 0, 0, v153 - v96, v153 - v99);
  v101 = v167;
  *(v86 + 144) = v167;
  *(v86 + 152) = @"Placeholder";
  v102 = @"Placeholder";
  v103 = sub_1CA94C438("Input (Input)", 13);
  v155 = v104;
  v156 = v103;
  v105 = sub_1CA94C438("Input", 5);
  v107 = v106;
  v157 = v153;
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948D98();
  v108 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v156, v155, v105, v107, 0, 0, v153 - v96, v153 - v99);
  *(v86 + 184) = v101;
  *(v86 + 160) = v110;
  _s3__C3KeyVMa_0(0);
  v157 = v111;
  v156 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v112 = sub_1CA94C1E8();
  v113 = sub_1CA2F864C(v112);
  *(v164 + 32) = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = v165;
  *(v114 + 32) = v158;
  *(v114 + 40) = 0xD00000000000001ALL;
  *(v114 + 48) = 0x80000001CA9CA970;
  *(v114 + 64) = MEMORY[0x1E69E6158];
  *(v114 + 72) = @"DefaultValue";
  v115 = @"DefaultValue";
  v116 = sub_1CA94C438("on run {input, parameters}\n    (* Your script goes here *)\n    return input\nend run", 83);
  v159 = v117;
  v118 = sub_1CA94C438("on run {input, parameters}\n    (* Your script goes here *)\n    return input\nend run", 83);
  v120 = v119;
  *&v165 = v153;
  MEMORY[0x1EEE9AC00](v118);
  v121 = v153 - v169;
  sub_1CA948D98();
  v122 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = v166;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v114 + 80) = sub_1CA2F9F14(v116, v159, v118, v120, 0, 0, v121, v153 - v123);
  v125 = v160;
  *(v114 + 104) = v167;
  *(v114 + 112) = v125;
  v126 = MEMORY[0x1E69E6158];
  *(v114 + 144) = MEMORY[0x1E69E6158];
  *(v114 + 120) = 0x747069726353;
  *(v114 + 128) = 0xE600000000000000;
  v127 = sub_1CA94C368();
  *(v114 + 184) = v126;
  *(v114 + 152) = v127;
  *(v114 + 160) = 0x726353656C707041;
  *(v114 + 168) = 0xEB00000000747069;
  v128 = sub_1CA94C1E8();
  v129 = sub_1CA2F864C(v128);
  v130 = v164;
  *(v164 + 40) = v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v132 = v162;
  v162[60] = v130;
  v132[63] = v131;
  v132[64] = @"ParameterSummary";
  v133 = @"ParameterSummary";
  v134 = sub_1CA94C438("Run AppleScript with ${Input} (Parameter Summary)", 49);
  v136 = v135;
  v137 = sub_1CA94C438("Run AppleScript with ${Input}", 29);
  v139 = v138;
  v167 = v153;
  MEMORY[0x1EEE9AC00](v137);
  v140 = v153 - v169;
  sub_1CA948D98();
  v141 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v134, v136, v137, v139, 0, 0, v140, v153 - v123);
  v144 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v145 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v146 = v162;
  v162[68] = v145;
  v146[65] = v144;
  v146[69] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1CA97EDF0;
  v172 = 2;
  v173 = 0;
  v148 = type metadata accessor for WFDeviceIdiomResource();
  v149 = objc_allocWithZone(v148);
  v150 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v172);
  *(v147 + 32) = v151;
  *(v147 + 88) = MEMORY[0x1E69E6158];
  *(v147 + 56) = v148;
  *(v147 + 64) = 0xD000000000000019;
  *(v147 + 72) = 0x80000001CA994500;
  v146[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v146[70] = v147;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA548500()
{
  v202 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000021;
  *(inited + 48) = 0x80000001CA9CAA60;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("device|airplay|playback|audio|route|set", 39);
  v6 = v5;
  v7 = sub_1CA94C438("device|airplay|playback|audio|route|set", 39);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v212 = v11;
  v213 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v191 - v213;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v210 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v211 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v209 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v191 - v209;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v208 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v206 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionNote";
  v21 = @"Description";
  v22 = @"DescriptionNote";
  v23 = sub_1CA94C438("When attempting to add a device that does not support groups, all other devices are removed as playback destinations first.", 123);
  v203 = v24;
  v204 = v23;
  v25 = sub_1CA94C438("When attempting to add a device that does not support groups, all other devices are removed as playback destinations first.", 123);
  v27 = v26;
  v205 = v191;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v191 - v213;
  sub_1CA948D98();
  v29 = v210;
  v30 = [v210 bundleURL];
  v207 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v209;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v204, v203, v25, v27, 0, 0, v28, v191 - v32);
  v34 = v208;
  *(v20 + 64) = v208;
  *(v20 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438("Changes the current playback destination. Use this action to route audio to AirPods, Bluetooth speakers, HomePod, or other AirPlay devices. Optionally, this action can add or remove devices from a group, so you can route audio to multiple devices at once.", 255);
  v203 = v37;
  v204 = v36;
  v38 = sub_1CA94C438("Changes the current playback destination. Use this action to route audio to AirPods, Bluetooth speakers, HomePod, or other AirPlay devices. Optionally, this action can add or remove devices from a group, so you can route audio to multiple devices at once.", 255);
  v40 = v39;
  v205 = v191;
  MEMORY[0x1EEE9AC00](v38);
  v41 = v191 - v213;
  sub_1CA948D98();
  v42 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v204, v203, v38, v40, 0, 0, v41, v191 - v32);
  *(v20 + 104) = v34;
  *(v20 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v45 = sub_1CA94C1E8();
  v46 = v206;
  v47 = sub_1CA6B3784(v45);
  v48 = v207;
  *(v207 + 15) = v47;
  *(v48 + 18) = v46;
  *(v48 + 19) = @"DisabledOnPlatforms";
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v206 = v49;
  *(v48 + 20) = &unk_1F4A040D0;
  *(v48 + 23) = v49;
  *(v48 + 24) = @"IconColor";
  *(v48 + 25) = 6579538;
  *(v48 + 26) = 0xE300000000000000;
  v50 = MEMORY[0x1E69E6158];
  *(v48 + 28) = MEMORY[0x1E69E6158];
  *(v48 + 29) = @"IconSymbol";
  strcpy(v48 + 240, "airplayaudio");
  v48[253] = 0;
  *(v48 + 127) = -5120;
  *(v48 + 33) = v50;
  *(v48 + 34) = @"Name";
  v51 = @"DisabledOnPlatforms";
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Name";
  v55 = sub_1CA94C438("Change Playback Destination (Action Name)", 41);
  v57 = v56;
  v58 = sub_1CA94C438("Change Playback Destination", 27);
  v60 = v59;
  v205 = v191;
  MEMORY[0x1EEE9AC00](v58);
  v61 = v191 - v213;
  sub_1CA948D98();
  v62 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = v191 - v209;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v48 + 35) = sub_1CA2F9F14(v55, v57, v58, v60, 0, 0, v61, v63);
  *(v48 + 38) = v208;
  *(v48 + 39) = @"Output";
  v65 = @"Output";
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v48 + 40) = v67;
  *(v48 + 43) = v68;
  *(v48 + 44) = @"Parameters";
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v205 = swift_allocObject();
  *(v205 + 1) = xmmword_1CA981360;
  v204 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_1CA981380;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000016;
  *(v69 + 48) = 0x80000001CA99C4A0;
  *(v69 + 64) = v66;
  *(v69 + 72) = @"DefaultValue";
  *(v69 + 80) = 7628115;
  *(v69 + 88) = 0xE300000000000000;
  *(v69 + 104) = v66;
  *(v69 + 112) = @"DisallowedVariableTypes";
  *(v69 + 120) = &unk_1F4A04140;
  *(v69 + 144) = v206;
  *(v69 + 152) = @"Items";
  v203 = swift_allocObject();
  v200 = xmmword_1CA981470;
  *&v203->data = xmmword_1CA981470;
  v70 = @"Class";
  v71 = @"DefaultValue";
  v72 = @"DisallowedVariableTypes";
  v196 = v70;
  v197 = v71;
  v199 = v72;
  v73 = @"Parameters";
  v74 = @"Items";
  v75 = sub_1CA94C438("Set (WFMediaRouteOperation)", 27);
  v193 = v76;
  v194 = v75;
  v77 = sub_1CA94C438("Set", 3);
  v192 = v78;
  v195 = v191;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v191 - v213;
  sub_1CA948D98();
  v80 = v210;
  v81 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v191 - v209;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v194, v193, v77, v192, 0, 0, v79, v82);
  v85 = v203;
  v203[1].isa = v84;
  v86 = sub_1CA94C438("Add (WFMediaRouteOperation)", 27);
  v193 = v87;
  v194 = v86;
  v192 = sub_1CA94C438("Add", 3);
  v89 = v88;
  v195 = v191;
  MEMORY[0x1EEE9AC00](v192);
  v90 = v213;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  v191[1] = v191;
  MEMORY[0x1EEE9AC00](v91);
  v92 = v209;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85[1].info = sub_1CA2F9F14(v194, v193, v192, v89, 0, 0, v191 - v90, v191 - v92);
  v94 = sub_1CA94C438("Remove (WFMediaRouteOperation)", 30);
  v193 = v95;
  v194 = v94;
  v96 = sub_1CA94C438("Remove", 6);
  v192 = v97;
  v195 = v191;
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948D98();
  v98 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v194, v193, v96, v192, 0, 0, v191 - v90, v191 - v92);
  v101 = v203;
  v203[1].data = v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v69 + 160) = v101;
  *(v69 + 184) = v102;
  *(v69 + 192) = @"Key";
  *(v69 + 200) = 0xD000000000000015;
  *(v69 + 208) = 0x80000001CA9CACF0;
  *(v69 + 224) = MEMORY[0x1E69E6158];
  *(v69 + 232) = @"Label";
  v103 = @"Key";
  v104 = @"Label";
  v195 = v103;
  v203 = v104;
  v105 = sub_1CA94C438("Operation (WFMediaRouteOperation)", 33);
  v107 = v106;
  v108 = sub_1CA94C438("Operation", 9);
  v110 = v109;
  v194 = v191;
  MEMORY[0x1EEE9AC00](v108);
  v111 = v191 - v213;
  sub_1CA948D98();
  v112 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  v113 = v191 - v209;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v105, v107, v108, v110, 0, 0, v111, v113);
  *(v69 + 264) = v208;
  *(v69 + 240) = v115;
  _s3__C3KeyVMa_0(0);
  v194 = v116;
  v193 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v117 = sub_1CA94C1E8();
  v118 = sub_1CA2F864C(v117);
  *(v205 + 4) = v118;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1CA981300;
  *(v119 + 32) = @"AlwaysShowsButton";
  *(v119 + 40) = 1;
  v120 = v196;
  *(v119 + 64) = MEMORY[0x1E69E6370];
  *(v119 + 72) = v120;
  *(v119 + 80) = 0xD00000000000001BLL;
  *(v119 + 88) = 0x80000001CA9A1EB0;
  v121 = MEMORY[0x1E69E6158];
  v122 = v197;
  *(v119 + 104) = MEMORY[0x1E69E6158];
  *(v119 + 112) = v122;
  *(v119 + 120) = 0x6C61636F4CLL;
  *(v119 + 128) = 0xE500000000000000;
  *(v119 + 144) = v121;
  *(v119 + 152) = @"Description";
  v123 = @"AlwaysShowsButton";
  v124 = @"Description";
  v125 = sub_1CA94C438("The device that is set, added, or removed as playback destination. (WFMediaRoute)", 81);
  v196 = v126;
  v197 = v125;
  v127 = sub_1CA94C438("The device that is set, added, or removed as playback destination.", 66);
  v129 = v128;
  v198 = v191;
  MEMORY[0x1EEE9AC00](v127);
  v130 = v191 - v213;
  sub_1CA948D98();
  v131 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = v209;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 160) = sub_1CA2F9F14(v197, v196, v127, v129, 0, 0, v130, v191 - v132);
  v134 = v199;
  *(v119 + 184) = v208;
  *(v119 + 192) = v134;
  *(v119 + 200) = &unk_1F4A04170;
  v135 = v195;
  *(v119 + 224) = v206;
  *(v119 + 232) = v135;
  strcpy((v119 + 240), "WFMediaRoute");
  *(v119 + 253) = 0;
  *(v119 + 254) = -5120;
  v136 = v203;
  *(v119 + 264) = MEMORY[0x1E69E6158];
  *(v119 + 272) = v136;
  v203 = sub_1CA94C438("Device (WFMediaRoute)", 21);
  v199 = v137;
  v138 = sub_1CA94C438("Device", 6);
  v140 = v139;
  v206 = v191;
  MEMORY[0x1EEE9AC00](v138);
  v141 = v213;
  sub_1CA948D98();
  v142 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v203, v199, v138, v140, 0, 0, v191 - v141, v191 - v132);
  *(v119 + 304) = v208;
  *(v119 + 280) = v144;
  v145 = sub_1CA94C368();
  *(v119 + 344) = MEMORY[0x1E69E6158];
  *(v119 + 312) = v145;
  strcpy((v119 + 320), "OutputDevice");
  *(v119 + 333) = 0;
  *(v119 + 334) = -5120;
  v146 = sub_1CA94C1E8();
  v147 = sub_1CA2F864C(v146);
  v148 = v205;
  *(v205 + 5) = v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v150 = v207;
  *(v207 + 45) = v148;
  *(v150 + 48) = v149;
  *(v150 + 49) = @"ParameterSummary";
  v206 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v208 = swift_allocObject();
  *(v208 + 16) = v200;
  v205 = "yback destination.";
  v151 = @"ParameterSummary";
  v203 = sub_1CA94C438("${WFMediaRouteOperation} ${WFMediaRoute} to playback destinations", 65);
  v201 = v152;
  v153 = sub_1CA94C438("${WFMediaRouteOperation} ${WFMediaRoute} to playback destinations", 65);
  v155 = v154;
  v204 = v191;
  MEMORY[0x1EEE9AC00](v153);
  sub_1CA948D98();
  v156 = v210;
  v157 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = v191 - v209;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v203, v201, v153, v155, 0, 0, v191 - v141, v158);
  v161 = objc_allocWithZone(WFActionParameterSummaryValue);
  v162 = sub_1CA65DD78(0xD000000000000027, v205 | 0x8000000000000000, v160);
  *(v208 + 32) = v162;
  v205 = "back destinations";
  v203 = sub_1CA94C438("${WFMediaRouteOperation} ${WFMediaRoute} from playback destinations", 67);
  v201 = v163;
  v164 = sub_1CA94C438("${WFMediaRouteOperation} ${WFMediaRoute} from playback destinations", 67);
  v166 = v165;
  v204 = v191;
  MEMORY[0x1EEE9AC00](v164);
  v167 = v191 - v213;
  sub_1CA948D98();
  v168 = [v156 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  v169 = v209;
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v171 = sub_1CA2F9F14(v203, v201, v164, v166, 0, 0, v167, v191 - v169);
  v172 = objc_allocWithZone(WFActionParameterSummaryValue);
  v173 = sub_1CA65DD78(0xD00000000000002ALL, v205 | 0x8000000000000000, v171);
  *(v208 + 40) = v173;
  v205 = "ayback destinations";
  v174 = sub_1CA94C438("${WFMediaRouteOperation} playback destination to ${WFMediaRoute}", 64);
  v176 = v175;
  v177 = sub_1CA94C438("${WFMediaRouteOperation} playback destination to ${WFMediaRoute}", 64);
  v179 = v178;
  v204 = v191;
  MEMORY[0x1EEE9AC00](v177);
  v180 = v191 - v213;
  sub_1CA948D98();
  v181 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v183 = sub_1CA2F9F14(v174, v176, v177, v179, 0, 0, v180, v191 - v169);
  v184 = objc_allocWithZone(WFActionParameterSummaryValue);
  v185 = sub_1CA65DD78(0xD000000000000027, v205 | 0x8000000000000000, v183);
  v186 = v208;
  *(v208 + 48) = v185;
  v187 = v206;
  v188 = sub_1CA65AF90(v186);
  v189 = v207;
  *(v207 + 53) = v187;
  *(v189 + 50) = v188;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA549B54()
{
  v105 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CAF80;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("emails|e-mails|address", 22);
  v6 = v5;
  v7 = sub_1CA94C438("emails|e-mails|address", 22);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = v11;
  v12 = &v100 - v110;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v109 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v107 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v108 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v100 - v108;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v106 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v104 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Passes the specified email addresses to the next action.", 56);
  v102 = v27;
  v28 = sub_1CA94C438("Passes the specified email addresses to the next action.", 56);
  v30 = v29;
  v103 = &v100;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v110;
  sub_1CA948D98();
  v32 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v100 - v108;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v102, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v106;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v104;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1851881795;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  strcpy((inited + 240), "envelope.fill");
  *(inited + 254) = -4864;
  *(inited + 264) = v38;
  *(inited + 272) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"LocallyProcessesData";
  v43 = @"Name";
  v44 = sub_1CA94C438("Email Address (Action Name)", 27);
  v46 = v45;
  v47 = sub_1CA94C438("Email Address", 13);
  v49 = v48;
  v104 = &v100;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v100 - v110;
  sub_1CA948D98();
  v51 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v100 - v108;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 344) = v106;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  *(v54 + 96) = 1;
  *(v54 + 120) = MEMORY[0x1E69E6370];
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Email Address (Default Output Name)", 35);
  v103 = v57;
  v58 = sub_1CA94C438("Email Address", 13);
  v60 = v59;
  v104 = &v100;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v100 - v110;
  sub_1CA948D98();
  v62 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v100 - v108;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v56, v103, v58, v60, 0, 0, v61, v63);
  *(v54 + 168) = v106;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 192) = &unk_1F4A041E0;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v66;
  *(inited + 384) = v67;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v104 = swift_allocObject();
  *(v104 + 1) = xmmword_1CA9813B0;
  v103 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1CA981370;
  *(v68 + 32) = @"AllowsMultipleValues";
  *(v68 + 40) = 1;
  *(v68 + 64) = MEMORY[0x1E69E6370];
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD00000000000001CLL;
  *(v68 + 88) = 0x80000001CA9CB060;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Key";
  strcpy((v68 + 120), "WFEmailAddress");
  *(v68 + 135) = -18;
  *(v68 + 144) = v65;
  *(v68 + 152) = @"Label";
  v69 = @"Parameters";
  v70 = @"AllowsMultipleValues";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v74 = sub_1CA94C438("Email Address (WFEmailAddress)", 30);
  v101 = v75;
  v76 = sub_1CA94C438("Email Address", 13);
  v78 = v77;
  v102 = &v100;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v100 - v110;
  sub_1CA948D98();
  v80 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v100 - v108;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 160) = sub_1CA2F9F14(v74, v101, v76, v78, 0, 0, v79, v81);
  *(v68 + 184) = v106;
  *(v68 + 192) = @"Placeholder";
  v83 = @"Placeholder";
  v84 = sub_1CA94C438("Type in an email address (WFEmailAddress)", 41);
  v101 = v85;
  v86 = sub_1CA94C438("Type in an email address", 24);
  v88 = v87;
  v102 = &v100;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v100 - v110;
  sub_1CA948D98();
  v90 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v100 - v108;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v84, v101, v86, v88, 0, 0, v89, v91);
  *(v68 + 224) = v106;
  *(v68 + 200) = v93;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v94 = sub_1CA94C1E8();
  v95 = sub_1CA2F864C(v94);
  v96 = v104;
  v104[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v96;
  *(inited + 424) = v97;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v98 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54A8A0()
{
  v212 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9CB100;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("make|save", 9);
  v6 = v5;
  v7 = sub_1CA94C438("make|save", 9);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v229 = v11;
  v230 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v207 - v230;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v228 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v225 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v226 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v207 - v226;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v227 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v223 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("The content to include in your new note", 39);
  v220 = v27;
  *&v221 = v26;
  v28 = sub_1CA94C438("The content to include in your new note", 39);
  v30 = v29;
  v222 = &v207;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v207 - v230;
  sub_1CA948D98();
  v32 = v228;
  v33 = [v228 bundleURL];
  v224 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v207 - v226;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v221, v220, v28, v30, 0, 0, v31, v35);
  v37 = v227;
  *(v23 + 64) = v227;
  *(v23 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438("Saves the input as a note in Evernote.", 38);
  v220 = v40;
  *&v221 = v39;
  v219 = sub_1CA94C438("Saves the input as a note in Evernote.", 38);
  v42 = v41;
  v222 = &v207;
  MEMORY[0x1EEE9AC00](v219);
  v43 = &v207 - v230;
  sub_1CA948D98();
  v44 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = v226;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v221, v220, v219, v42, 0, 0, v43, &v207 - v45);
  *(v23 + 104) = v37;
  *(v23 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v48 = sub_1CA94C1E8();
  v49 = v223;
  v50 = sub_1CA6B3784(v48);
  v51 = v224;
  v224[20] = v50;
  v51[23] = v49;
  v51[24] = @"Input";
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  v221 = xmmword_1CA981350;
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  *(v52 + 96) = 0x7475706E494657;
  *(v52 + 104) = 0xE700000000000000;
  *(v52 + 120) = MEMORY[0x1E69E6158];
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v217;
  *(v52 + 192) = &unk_1F4A04290;
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v223 = v56;
  v51[25] = v55;
  v51[28] = v56;
  v51[29] = @"Name";
  v57 = @"Name";
  v58 = sub_1CA94C438("Create New Note (Action Name)", 29);
  v218 = v59;
  v219 = v58;
  v60 = sub_1CA94C438("Create New Note", 15);
  v216 = v61;
  v220 = &v207;
  MEMORY[0x1EEE9AC00](v60);
  v62 = v230;
  sub_1CA948D98();
  v63 = v228;
  v64 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v219, v218, v60, v216, 0, 0, &v207 - v62, &v207 - v45);
  v67 = v224;
  v224[30] = v66;
  v67[33] = v227;
  v67[34] = @"Output";
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1CA9813C0;
  *(v68 + 32) = 0x656C7069746C754DLL;
  *(v68 + 40) = 0xE800000000000000;
  *(v68 + 48) = 0;
  *(v68 + 72) = MEMORY[0x1E69E6370];
  *(v68 + 80) = 0x614E74757074754FLL;
  *(v68 + 88) = 0xEA0000000000656DLL;
  v69 = @"Output";
  v70 = sub_1CA94C438("New Note (Default Output Name)", 30);
  v219 = v71;
  v220 = v70;
  v72 = sub_1CA94C438("New Note", 8);
  v218 = v73;
  v222 = &v207;
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948D98();
  v74 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 96) = sub_1CA2F9F14(v220, v219, v72, v218, 0, 0, &v207 - v62, &v207 - v45);
  *(v68 + 120) = v227;
  *(v68 + 128) = 0x7365707954;
  *(v68 + 168) = v217;
  *(v68 + 136) = 0xE500000000000000;
  *(v68 + 144) = &unk_1F4A042C0;
  v76 = MEMORY[0x1E69E6158];
  v77 = sub_1CA94C1E8();
  v78 = v224;
  v224[35] = v77;
  v78[38] = v223;
  v78[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_1CA981570;
  v222 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v79 = swift_allocObject();
  *(v79 + 16) = v221;
  *(v79 + 32) = @"Class";
  *(v79 + 40) = 0xD000000000000014;
  *(v79 + 48) = 0x80000001CA99B500;
  *(v79 + 64) = v76;
  *(v79 + 72) = @"Key";
  *(v79 + 80) = 0xD000000000000013;
  *(v79 + 88) = 0x80000001CA9CB1F0;
  *(v79 + 104) = v76;
  *(v79 + 112) = @"Label";
  v80 = @"Class";
  v81 = @"Key";
  v82 = @"Label";
  v83 = v80;
  v84 = v81;
  v85 = v82;
  v215 = v83;
  v214 = v84;
  v213 = v85;
  v86 = @"Parameters";
  v218 = sub_1CA94C438("Note Title (WFEvernoteNoteTitle)", 32);
  v216 = v87;
  v88 = sub_1CA94C438("Note Title", 10);
  v90 = v89;
  v219 = &v207;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v207 - v230;
  sub_1CA948D98();
  v92 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = v226;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 120) = sub_1CA2F9F14(v218, v216, v88, v90, 0, 0, v91, &v207 - v93);
  v95 = v227;
  *(v79 + 144) = v227;
  *(v79 + 152) = @"Placeholder";
  v216 = @"Placeholder";
  v218 = sub_1CA94C438("optional (WFEvernoteNoteTitle)", 30);
  v211 = v96;
  v210 = sub_1CA94C438("optional", 8);
  v98 = v97;
  v219 = &v207;
  MEMORY[0x1EEE9AC00](v210);
  v99 = &v207 - v230;
  sub_1CA948D98();
  v100 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v218, v211, v210, v98, 0, 0, v99, &v207 - v93);
  *(v79 + 184) = v95;
  *(v79 + 160) = v102;
  _s3__C3KeyVMa_0(0);
  v219 = v103;
  v218 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v104 = sub_1CA94C1E8();
  v105 = sub_1CA2F864C(v104);
  *(v223 + 32) = v105;
  v106 = swift_allocObject();
  *(v106 + 16) = v221;
  v107 = v215;
  *(v106 + 32) = v215;
  *(v106 + 40) = 0xD000000000000021;
  *(v106 + 48) = 0x80000001CA9C4280;
  *(v106 + 64) = MEMORY[0x1E69E6158];
  *(v106 + 72) = @"Description";
  v108 = @"Description";
  v215 = v107;
  v211 = v108;
  v109 = sub_1CA94C438("The notebook in which to save your new note (optional) (WFEvernoteNotebook)", 75);
  v208 = v110;
  v209 = v109;
  v111 = sub_1CA94C438("The notebook in which to save your new note (optional)", 54);
  v113 = v112;
  v210 = &v207;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v207 - v230;
  sub_1CA948D98();
  v115 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v207 - v226;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 80) = sub_1CA2F9F14(v209, v208, v111, v113, 0, 0, v114, v116);
  v118 = v227;
  v120 = v213;
  v119 = v214;
  *(v106 + 104) = v227;
  *(v106 + 112) = v119;
  *(v106 + 120) = 0xD000000000000012;
  *(v106 + 128) = 0x80000001CA9CB2F0;
  *(v106 + 144) = MEMORY[0x1E69E6158];
  *(v106 + 152) = v120;
  v214 = v119;
  v213 = v120;
  v121 = sub_1CA94C438("Notebook (WFEvernoteNotebook)", 29);
  v208 = v122;
  v209 = v121;
  v123 = sub_1CA94C438("Notebook", 8);
  v125 = v124;
  v210 = &v207;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v207 - v230;
  sub_1CA948D98();
  v127 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v207 - v226;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v209, v208, v123, v125, 0, 0, v126, v128);
  *(v106 + 184) = v118;
  *(v106 + 160) = v130;
  v131 = sub_1CA94C1E8();
  v132 = sub_1CA2F864C(v131);
  *(v223 + 40) = v132;
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1CA981370;
  *(v133 + 32) = v215;
  *(v133 + 40) = 0xD00000000000001FLL;
  *(v133 + 48) = 0x80000001CA9C4130;
  v134 = v211;
  *(v133 + 64) = MEMORY[0x1E69E6158];
  *(v133 + 72) = v134;
  v135 = sub_1CA94C438("A list of tags to apply to the new note (optional) (WFEvernoteTags)", 68);
  v209 = v136;
  v210 = v135;
  v137 = sub_1CA94C438("A list of tags to apply to the new note (optional)", 51);
  v139 = v138;
  v211 = &v207;
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v207 - v230;
  sub_1CA948D98();
  v141 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v207 - v226;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v133 + 80) = sub_1CA2F9F14(v210, v209, v137, v139, 0, 0, v140, v142);
  v144 = v214;
  *(v133 + 104) = v227;
  *(v133 + 112) = v144;
  strcpy((v133 + 120), "WFEvernoteTags");
  *(v133 + 135) = -18;
  v145 = v213;
  *(v133 + 144) = MEMORY[0x1E69E6158];
  *(v133 + 152) = v145;
  v146 = sub_1CA94C438("Tags (WFEvernoteTags)", 21);
  v209 = v147;
  v210 = v146;
  v148 = sub_1CA94C438("Tags", 4);
  v208 = v149;
  v211 = &v207;
  MEMORY[0x1EEE9AC00](v148);
  v150 = v230;
  sub_1CA948D98();
  v151 = v228;
  v152 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = v226;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v133 + 160) = sub_1CA2F9F14(v210, v209, v148, v208, 0, 0, &v207 - v150, &v207 - v153);
  v155 = v227;
  v156 = v216;
  *(v133 + 184) = v227;
  *(v133 + 192) = v156;
  v157 = sub_1CA94C438("optional (WFEvernoteTags)", 25);
  v209 = v158;
  v210 = v157;
  v159 = sub_1CA94C438("optional", 8);
  v208 = v160;
  v211 = &v207;
  MEMORY[0x1EEE9AC00](v159);
  sub_1CA948D98();
  v161 = [v151 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163 = sub_1CA2F9F14(v210, v209, v159, v208, 0, 0, &v207 - v150, &v207 - v153);
  *(v133 + 224) = v155;
  *(v133 + 200) = v163;
  v164 = sub_1CA94C1E8();
  v165 = sub_1CA2F864C(v164);
  *(v223 + 48) = v165;
  v166 = swift_allocObject();
  *(v166 + 16) = v221;
  *(v166 + 32) = v215;
  *(v166 + 40) = 0xD000000000000019;
  *(v166 + 48) = 0x80000001CA99B030;
  v167 = MEMORY[0x1E69E6158];
  v168 = v214;
  *(v166 + 64) = MEMORY[0x1E69E6158];
  *(v166 + 72) = v168;
  *(v166 + 80) = 0x7475706E494657;
  *(v166 + 88) = 0xE700000000000000;
  v169 = v213;
  *(v166 + 104) = v167;
  *(v166 + 112) = v169;
  v220 = sub_1CA94C438("Content (WFInput)", 17);
  v215 = v170;
  v171 = sub_1CA94C438("Content", 7);
  v214 = v172;
  *&v221 = &v207;
  MEMORY[0x1EEE9AC00](v171);
  v173 = &v207 - v230;
  sub_1CA948D98();
  v174 = v228;
  v175 = [v228 bundleURL];
  v213 = &v207;
  MEMORY[0x1EEE9AC00](v175);
  v176 = v226;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 120) = sub_1CA2F9F14(v220, v215, v171, v214, 0, 0, v173, &v207 - v176);
  v178 = v216;
  *(v166 + 144) = v227;
  *(v166 + 152) = v178;
  v220 = sub_1CA94C438("Content (WFInput)", 17);
  v216 = v179;
  v180 = sub_1CA94C438("Content", 7);
  v215 = v181;
  *&v221 = &v207;
  MEMORY[0x1EEE9AC00](v180);
  v182 = v230;
  sub_1CA948D98();
  v183 = [v174 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v185 = sub_1CA2F9F14(v220, v216, v180, v215, 0, 0, &v207 - v182, &v207 - v176);
  *(v166 + 184) = v227;
  *(v166 + 160) = v185;
  v186 = sub_1CA94C1E8();
  v187 = sub_1CA2F864C(v186);
  v188 = v223;
  *(v223 + 56) = v187;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v190 = v224;
  v224[40] = v188;
  v190[43] = v189;
  v190[44] = @"ParameterSummary";
  v191 = @"ParameterSummary";
  v192 = sub_1CA94C438("Create note with ${WFInput} named ${WFEvernoteNoteTitle} (Parameter Summary)", 76);
  v194 = v193;
  v195 = sub_1CA94C438("Create note with ${WFInput} named ${WFEvernoteNoteTitle}", 56);
  v197 = v196;
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948D98();
  v198 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v207 - v226;
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v201 = sub_1CA2F9F14(v192, v194, v195, v197, 0, 0, &v207 - v182, v199);
  v202 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v203 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v204 = v224;
  v224[45] = v202;
  v204[48] = v203;
  v204[49] = @"RequiredResources";
  v204[53] = v217;
  v204[50] = &unk_1F4A042F0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v205 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54C218()
{
  v88 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001FLL;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9CB4B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("url|webpage|safari|website|current|web", 38);
  v6 = v5;
  v7 = sub_1CA94C438("url|webpage|safari|website|current|web", 38);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v93 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = v11;
  v12 = &v85 - v93;
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
  v16 = &v85 - v92;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v90 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v87 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets the web page of the frontmost Safari window.", 49);
  v85 = v27;
  v28 = sub_1CA94C438("Gets the web page of the frontmost Safari window.", 49);
  v30 = v29;
  v86 = &v85;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v85 - v93;
  sub_1CA948D98();
  v32 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v85 - v92;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v85, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v90;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v87;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"LocallyProcessesData";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"LocallyProcessesData";
  v40 = @"Name";
  v41 = sub_1CA94C438("Get Current Web Page from Safari (Action Name)", 46);
  v86 = v42;
  v43 = sub_1CA94C438("Get Current Web Page from Safari", 32);
  v45 = v44;
  v87 = &v85;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v85 - v93;
  sub_1CA948D98();
  v47 = v89;
  v48 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v85 - v92;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v86, v43, v45, 0, 0, v46, v49);
  *(inited + 264) = v90;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA9813C0;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  *(v51 + 48) = 0;
  *(v51 + 72) = MEMORY[0x1E69E6370];
  *(v51 + 80) = 0x614E74757074754FLL;
  *(v51 + 88) = 0xEA0000000000656DLL;
  v52 = @"Output";
  v53 = sub_1CA94C438("Web Page (Default Output Name)", 30);
  v86 = v54;
  v55 = sub_1CA94C438("Web Page", 8);
  v57 = v56;
  v87 = &v85;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v85 - v93;
  sub_1CA948D98();
  v59 = [v47 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v85 - v92;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 96) = sub_1CA2F9F14(v53, v86, v55, v57, 0, 0, v58, v60);
  *(v51 + 120) = v90;
  *(v51 + 128) = 0x7365707954;
  *(v51 + 136) = 0xE500000000000000;
  *(v51 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 144) = &unk_1F4A04370;
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v62;
  *(inited + 304) = v63;
  *(inited + 312) = @"Parameters";
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 320) = MEMORY[0x1E69E7CC0];
  *(inited + 344) = v64;
  *(inited + 352) = @"ParameterSummary";
  v65 = @"Parameters";
  v66 = @"ParameterSummary";
  v67 = sub_1CA94C438("Get current web page from Safari (Parameter Summary)", 52);
  v69 = v68;
  v70 = sub_1CA94C438("Get current web page from Safari", 32);
  v72 = v71;
  v90 = &v85;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v85 - v93;
  sub_1CA948D98();
  v74 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v85 - v92;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v67, v69, v70, v72, 0, 0, v73, v75);
  v78 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v79 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v78;
  *(inited + 384) = v79;
  *(inited + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1CA9813B0;
  v95 = 2;
  v96 = 0;
  v81 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v82 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v95);
  *(v80 + 32) = v83;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 400) = v80;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54CCCC()
{
  v0 = sub_1CA949D18();
  v196 = *(v0 - 8);
  v197 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v195 = &v188 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v194 = &v188 - v3;
  v198 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9CB640;
  *(inited + 64) = v5;
  *(inited + 72) = @"ActionKeywords";
  v209 = inited;
  v6 = @"ActionClass";
  v7 = @"ActionKeywords";
  v8 = sub_1CA94C438("make|generate|gzip", 18);
  v10 = v9;
  v11 = sub_1CA94C438("make|generate|gzip", 18);
  v13 = v12;
  v14 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v213 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v214 = v15;
  v16 = &v188 - v213;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v208 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v211 = v19;
  v212 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v188 - v212;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v8, v10, v11, v13, 0, 0, v16, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v210 = v23;
  v24 = v209;
  v209[10] = v22;
  v24[13] = v23;
  v24[14] = @"Description";
  v207 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  v193 = xmmword_1CA97EDF0;
  *(v25 + 16) = xmmword_1CA97EDF0;
  *(v25 + 32) = @"DescriptionResult";
  v26 = @"Description";
  v27 = @"DescriptionResult";
  v205 = sub_1CA94C438("Archive", 7);
  *&v204 = v28;
  v29 = sub_1CA94C438("Archive", 7);
  v31 = v30;
  v206 = &v188;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v188 - v213;
  sub_1CA948D98();
  v33 = v208;
  v34 = [v208 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = v212;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v25 + 40) = sub_1CA2F9F14(v205, v204, v29, v31, 0, 0, v32, &v188 - v35);
  v37 = v210;
  *(v25 + 64) = v210;
  *(v25 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v205 = sub_1CA94C438("Makes an archive out of the files passed as input. Supports creating zip, tar.gz, tar.bz2, tar.xz, tar, gzip, cpio, or iso archives.", 132);
  *&v204 = v39;
  v40 = sub_1CA94C438("Makes an archive out of the files passed as input. Supports creating zip, tar.gz, tar.bz2, tar.xz, tar, gzip, cpio, or iso archives.", 132);
  v42 = v41;
  v206 = &v188;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v188 - v213;
  sub_1CA948D98();
  v44 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v205, v204, v40, v42, 0, 0, v43, &v188 - v35);
  *(v25 + 104) = v37;
  *(v25 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v47 = sub_1CA94C1E8();
  v48 = v207;
  v49 = sub_1CA6B3784(v47);
  v50 = v209;
  v209[15] = v49;
  v50[18] = v48;
  v50[19] = @"IconColor";
  v50[20] = 1953392980;
  v50[21] = 0xE400000000000000;
  v51 = MEMORY[0x1E69E6158];
  v50[23] = MEMORY[0x1E69E6158];
  v50[24] = @"IconSymbol";
  v50[25] = 0x7070697A2E636F64;
  v50[26] = 0xEA00000000007265;
  v50[28] = v51;
  v50[29] = @"IconSymbolColor";
  v50[30] = 1702194242;
  v50[31] = 0xE400000000000000;
  v50[33] = v51;
  v50[34] = @"Input";
  v52 = v51;
  v53 = v50;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  v204 = xmmword_1CA981350;
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  v55 = MEMORY[0x1E69E6370];
  *(v54 + 48) = 1;
  *(v54 + 72) = v55;
  strcpy((v54 + 80), "ParameterKey");
  *(v54 + 93) = 0;
  *(v54 + 94) = -5120;
  *(v54 + 96) = 0x7475706E494657;
  *(v54 + 104) = 0xE700000000000000;
  *(v54 + 120) = v52;
  *(v54 + 128) = 0x6465726975716552;
  *(v54 + 136) = 0xE800000000000000;
  *(v54 + 144) = 1;
  *(v54 + 168) = v55;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 216) = v206;
  *(v54 + 192) = &unk_1F4A043A0;
  v56 = @"IconColor";
  v57 = @"IconSymbol";
  v58 = @"IconSymbolColor";
  v59 = @"Input";
  v60 = sub_1CA94C1E8();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v207 = v61;
  v53[35] = v60;
  v53[38] = v61;
  v53[39] = @"Name";
  v62 = @"Name";
  v63 = sub_1CA94C438("Make Archive (Action Name)", 26);
  v201 = v64;
  v202 = v63;
  v65 = sub_1CA94C438("Make Archive", 12);
  v200 = v66;
  v203 = &v188;
  MEMORY[0x1EEE9AC00](v65);
  v67 = v213;
  sub_1CA948D98();
  v68 = v208;
  v69 = [v208 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = v212;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v202, v201, v65, v200, 0, 0, &v188 - v67, &v188 - v70);
  v73 = v209;
  v209[40] = v72;
  v73[43] = v210;
  v73[44] = @"Output";
  v74 = swift_allocObject();
  *(v74 + 16) = v204;
  *(v74 + 32) = 0x75736F6C63736944;
  *(v74 + 40) = 0xEF6C6576654C6572;
  *(v74 + 48) = 0x63696C627550;
  *(v74 + 56) = 0xE600000000000000;
  *(v74 + 72) = MEMORY[0x1E69E6158];
  *(v74 + 80) = 0x656C7069746C754DLL;
  *(v74 + 88) = 0xE800000000000000;
  *(v74 + 96) = 0;
  *(v74 + 120) = MEMORY[0x1E69E6370];
  *(v74 + 128) = 0x614E74757074754FLL;
  *(v74 + 136) = 0xEA0000000000656DLL;
  v75 = @"Output";
  v76 = sub_1CA94C438("Archive (Default Output Name)", 29);
  v203 = v77;
  *&v204 = v76;
  v78 = sub_1CA94C438("Archive", 7);
  v80 = v79;
  v205 = &v188;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v188 - v67;
  sub_1CA948D98();
  v82 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 144) = sub_1CA2F9F14(v204, v203, v78, v80, 0, 0, v81, &v188 - v70);
  *(v74 + 168) = v210;
  *(v74 + 176) = 0x7365707954;
  *(v74 + 216) = v206;
  *(v74 + 184) = 0xE500000000000000;
  *(v74 + 192) = &unk_1F4A043D0;
  v84 = MEMORY[0x1E69E6158];
  v85 = sub_1CA94C1E8();
  v86 = v209;
  v209[45] = v85;
  v86[48] = v207;
  v86[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_1CA981470;
  v207 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v87 = swift_allocObject();
  v192 = xmmword_1CA981370;
  *(v87 + 16) = xmmword_1CA981370;
  *(v87 + 32) = @"Class";
  *(v87 + 40) = 0xD000000000000014;
  *(v87 + 48) = 0x80000001CA99B500;
  *(v87 + 64) = v84;
  *(v87 + 72) = @"Key";
  *(v87 + 80) = 0x6D614E50495A4657;
  *(v87 + 88) = 0xE900000000000065;
  *(v87 + 104) = v84;
  *(v87 + 112) = @"Label";
  v88 = @"Class";
  v89 = @"Key";
  v90 = @"Label";
  v91 = v88;
  v92 = v89;
  v93 = v90;
  v202 = v91;
  v201 = v92;
  v200 = v93;
  v94 = @"Parameters";
  v203 = sub_1CA94C438("Archive Name (WFZIPName)", 24);
  v191 = v95;
  v96 = sub_1CA94C438("Archive Name", 12);
  v98 = v97;
  *&v204 = &v188;
  MEMORY[0x1EEE9AC00](v96);
  v99 = v213;
  sub_1CA948D98();
  v100 = [v208 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v188 - v212;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 120) = sub_1CA2F9F14(v203, v191, v96, v98, 0, 0, &v188 - v99, v101);
  *(v87 + 144) = v210;
  *(v87 + 152) = @"Placeholder";
  v191 = @"Placeholder";
  v203 = sub_1CA94C438("optional (WFZIPName)", 20);
  v190 = v103;
  v104 = sub_1CA94C438("optional", 8);
  v106 = v105;
  *&v204 = &v188;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v188 - v99;
  sub_1CA948D98();
  v108 = v208;
  v109 = [v208 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v188 - v212;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 160) = sub_1CA2F9F14(v203, v190, v104, v106, 0, 0, v107, v110);
  *(v87 + 184) = v210;
  *(v87 + 192) = @"TextAlignment";
  v112 = MEMORY[0x1E69E6158];
  *(v87 + 224) = MEMORY[0x1E69E6158];
  *(v87 + 200) = 0x7468676952;
  *(v87 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  *&v204 = v113;
  v203 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v114 = @"TextAlignment";
  v115 = sub_1CA94C1E8();
  v116 = sub_1CA2F864C(v115);
  v117 = v199;
  *(v199 + 32) = v116;
  v118 = swift_initStackObject();
  *(v118 + 16) = xmmword_1CA9813C0;
  *(v118 + 32) = v202;
  *(v118 + 40) = 0xD000000000000018;
  *(v118 + 48) = 0x80000001CA9CB7B0;
  v119 = v201;
  *(v118 + 64) = v112;
  *(v118 + 72) = v119;
  *(v118 + 80) = 0x7669686372414657;
  *(v118 + 88) = 0xEF74616D726F4665;
  v120 = v200;
  *(v118 + 104) = v112;
  *(v118 + 112) = v120;
  v121 = sub_1CA94C438("Format (WFArchiveFormat)", 24);
  v189 = v122;
  v123 = sub_1CA94C438("Format", 6);
  v125 = v124;
  v190 = &v188;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v188 - v213;
  sub_1CA948D98();
  v127 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v188 - v212;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v121, v189, v123, v125, 0, 0, v126, v128);
  *(v118 + 144) = v210;
  *(v118 + 120) = v130;
  v131 = sub_1CA94C1E8();
  *(v117 + 40) = sub_1CA2F864C(v131);
  v132 = swift_allocObject();
  *(v132 + 16) = v192;
  *(v132 + 32) = v202;
  *(v132 + 40) = 0xD000000000000019;
  *(v132 + 48) = 0x80000001CA99B030;
  v133 = MEMORY[0x1E69E6158];
  v134 = v201;
  *(v132 + 64) = MEMORY[0x1E69E6158];
  *(v132 + 72) = v134;
  *(v132 + 80) = 0x7475706E494657;
  *(v132 + 88) = 0xE700000000000000;
  v135 = v200;
  *(v132 + 104) = v133;
  *(v132 + 112) = v135;
  v136 = sub_1CA94C438("Input (WFInput)", 15);
  v201 = v137;
  v202 = v136;
  v138 = sub_1CA94C438("Input", 5);
  v200 = v139;
  v205 = &v188;
  MEMORY[0x1EEE9AC00](v138);
  v140 = v213;
  sub_1CA948D98();
  v141 = v208;
  v142 = [v208 bundleURL];
  *&v192 = &v188;
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v188 - v212;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 120) = sub_1CA2F9F14(v202, v201, v138, v200, 0, 0, &v188 - v140, v143);
  v145 = v210;
  v146 = v191;
  *(v132 + 144) = v210;
  *(v132 + 152) = v146;
  v147 = sub_1CA94C438("Input (WFInput)", 15);
  v201 = v148;
  v202 = v147;
  v200 = sub_1CA94C438("Input", 5);
  v150 = v149;
  v205 = &v188;
  MEMORY[0x1EEE9AC00](v200);
  sub_1CA948D98();
  v151 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = v212;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 160) = sub_1CA2F9F14(v202, v201, v200, v150, 0, 0, &v188 - v140, &v188 - v152);
  *(v132 + 184) = v145;
  *(v132 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v154 = swift_allocObject();
  *(v154 + 16) = v193;
  v155 = @"PreferredTypes";
  v156 = v194;
  sub_1CA949CA8();
  v157 = sub_1CA949C68();
  v159 = v158;
  v160 = *(v196 + 8);
  v161 = v156;
  v162 = v197;
  v160(v161, v197);
  *(v154 + 32) = v157;
  *(v154 + 40) = v159;
  v163 = v195;
  sub_1CA949CE8();
  v164 = sub_1CA949C68();
  v166 = v165;
  v160(v163, v162);
  *(v154 + 48) = v164;
  *(v154 + 56) = v166;
  *(v132 + 224) = v206;
  *(v132 + 200) = v154;
  v167 = sub_1CA94C1E8();
  v168 = sub_1CA2F864C(v167);
  v169 = v199;
  *(v199 + 48) = v168;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v171 = v209;
  v209[50] = v169;
  v171[53] = v170;
  v171[54] = @"ParameterSummary";
  v172 = @"ParameterSummary";
  v173 = sub_1CA94C438("Make ${WFArchiveFormat} archive from ${WFInput} (Parameter Summary)", 67);
  v175 = v174;
  v176 = sub_1CA94C438("Make ${WFArchiveFormat} archive from ${WFInput}", 47);
  v178 = v177;
  v210 = &v188;
  MEMORY[0x1EEE9AC00](v176);
  v179 = &v188 - v213;
  sub_1CA948D98();
  v180 = [v208 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182 = sub_1CA2F9F14(v173, v175, v176, v178, 0, 0, v179, &v188 - v152);
  v183 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v184 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v185 = v209;
  v209[55] = v183;
  v185[58] = v184;
  v185[59] = @"ResidentCompatible";
  v185[63] = MEMORY[0x1E69E6370];
  *(v185 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v186 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54E360()
{
  v219 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9CB880;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("add|prepend|save|evernote", 25);
  v6 = v5;
  v7 = sub_1CA94C438("add|prepend|save|evernote", 25);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v236 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v237 = v11;
  v12 = &v213 - v236;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v235 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v234 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v233 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v213 - v233;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v232 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v230 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("The content to add to your note", 31);
  v227 = v27;
  v228 = v26;
  v28 = sub_1CA94C438("The content to add to your note", 31);
  v226 = v29;
  v229 = &v213;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v213 - v236;
  sub_1CA948D98();
  v31 = v235;
  v32 = [v235 bundleURL];
  v231 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v233;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v228, v227, v28, v226, 0, 0, v30, &v213 - v34);
  v36 = v232;
  *(v23 + 64) = v232;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438("Finds a note using the specified criteria and appends the input to the note.", 76);
  v227 = v39;
  v228 = v38;
  v40 = sub_1CA94C438("Finds a note using the specified criteria and appends the input to the note.", 76);
  v42 = v41;
  v229 = &v213;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v213 - v236;
  sub_1CA948D98();
  v44 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v228, v227, v40, v42, 0, 0, v43, &v213 - v34);
  *(v23 + 104) = v36;
  *(v23 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v47 = sub_1CA94C1E8();
  v48 = v230;
  v49 = sub_1CA6B3784(v47);
  v50 = v231;
  v231[20] = v49;
  v50[23] = v48;
  v50[24] = @"Input";
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
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
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v225;
  *(v51 + 192) = &unk_1F4A04480;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v230 = v55;
  v50[25] = v54;
  v50[28] = v55;
  v50[29] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438("Append to Evernote (Action Name)", 32);
  v226 = v58;
  v227 = v57;
  v59 = sub_1CA94C438("Append to Evernote", 18);
  v61 = v60;
  v228 = &v213;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v213 - v236;
  sub_1CA948D98();
  v63 = v235;
  v64 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v233;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v227, v226, v59, v61, 0, 0, v62, &v213 - v65);
  v68 = v231;
  v69 = v232;
  v231[30] = v67;
  v68[33] = v69;
  v68[34] = @"Output";
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_1CA9813C0;
  *(v70 + 32) = 0x656C7069746C754DLL;
  *(v70 + 40) = 0xE800000000000000;
  *(v70 + 48) = 0;
  *(v70 + 72) = MEMORY[0x1E69E6370];
  *(v70 + 80) = 0x614E74757074754FLL;
  *(v70 + 88) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438("Note (Default Output Name)", 26);
  v227 = v73;
  v228 = v72;
  v74 = sub_1CA94C438("Note", 4);
  v226 = v75;
  v229 = &v213;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v213 - v236;
  sub_1CA948D98();
  v77 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 96) = sub_1CA2F9F14(v228, v227, v74, v226, 0, 0, v76, &v213 - v65);
  *(v70 + 120) = v69;
  *(v70 + 128) = 0x7365707954;
  *(v70 + 168) = v225;
  *(v70 + 136) = 0xE500000000000000;
  *(v70 + 144) = &unk_1F4A044B0;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v231;
  v231[35] = v80;
  v81[38] = v230;
  v81[39] = @"Parameters";
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_1CA981570;
  v229 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  *(v82 + 16) = v224;
  *(v82 + 32) = @"Class";
  *(v82 + 40) = 0xD000000000000019;
  *(v82 + 48) = 0x80000001CA99B030;
  *(v82 + 64) = v79;
  *(v82 + 72) = @"Key";
  *(v82 + 80) = 0x7475706E494657;
  *(v82 + 88) = 0xE700000000000000;
  *(v82 + 104) = v79;
  *(v82 + 112) = @"Label";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v83;
  v87 = v84;
  v88 = v85;
  v223 = v86;
  v221 = v87;
  v222 = v88;
  v89 = @"Parameters";
  v226 = sub_1CA94C438("Content (WFInput)", 17);
  v218 = v90;
  v91 = sub_1CA94C438("Content", 7);
  *&v217 = v92;
  v227 = &v213;
  MEMORY[0x1EEE9AC00](v91);
  v93 = v236;
  sub_1CA948D98();
  v94 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = v233;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v82 + 120) = sub_1CA2F9F14(v226, v218, v91, v217, 0, 0, &v213 - v93, &v213 - v95);
  v97 = v232;
  *(v82 + 144) = v232;
  *(v82 + 152) = @"Placeholder";
  v98 = @"Placeholder";
  v226 = sub_1CA94C438("Content (WFInput)", 17);
  v218 = v99;
  v100 = sub_1CA94C438("Content", 7);
  *&v217 = v101;
  v227 = &v213;
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948D98();
  v102 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v226, v218, v100, v217, 0, 0, &v213 - v93, &v213 - v95);
  *(v82 + 184) = v97;
  *(v82 + 160) = v104;
  _s3__C3KeyVMa_0(0);
  v227 = v105;
  v226 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v106 = sub_1CA94C1E8();
  v107 = sub_1CA2F864C(v106);
  *(v230 + 32) = v107;
  v108 = swift_allocObject();
  v217 = xmmword_1CA981370;
  *(v108 + 16) = xmmword_1CA981370;
  v109 = v223;
  *(v108 + 32) = v223;
  *(v108 + 40) = 0xD000000000000014;
  *(v108 + 48) = 0x80000001CA99B500;
  *(v108 + 64) = MEMORY[0x1E69E6158];
  *(v108 + 72) = @"Description";
  v110 = @"Description";
  v223 = v109;
  v218 = v110;
  v111 = sub_1CA94C438("The title (or part of the title) of the note to append to (WFEvernoteNotesTitleSearch)", 86);
  v214 = v112;
  v215 = v111;
  v113 = sub_1CA94C438("The title (or part of the title) of the note to append to", 57);
  v115 = v114;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948D98();
  v116 = v235;
  v117 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v213 - v233;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 80) = sub_1CA2F9F14(v215, v214, v113, v115, 0, 0, &v213 - v93, v118);
  v120 = v232;
  v121 = v221;
  v122 = v222;
  *(v108 + 104) = v232;
  *(v108 + 112) = v121;
  *(v108 + 120) = 0xD00000000000001ALL;
  *(v108 + 128) = 0x80000001CA9C40A0;
  *(v108 + 144) = MEMORY[0x1E69E6158];
  *(v108 + 152) = v122;
  v221 = v121;
  v222 = v122;
  v123 = sub_1CA94C438("Note Title (WFEvernoteNotesTitleSearch)", 39);
  v214 = v124;
  v215 = v123;
  v125 = sub_1CA94C438("Note Title", 10);
  v213 = v126;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v213 - v236;
  sub_1CA948D98();
  v128 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = v233;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 160) = sub_1CA2F9F14(v215, v214, v125, v213, 0, 0, v127, &v213 - v129);
  *(v108 + 184) = v120;
  *(v108 + 192) = @"TextAlignment";
  v131 = MEMORY[0x1E69E6158];
  *(v108 + 224) = MEMORY[0x1E69E6158];
  *(v108 + 200) = 0x7468676952;
  *(v108 + 208) = 0xE500000000000000;
  v132 = @"TextAlignment";
  v133 = sub_1CA94C1E8();
  v134 = sub_1CA2F864C(v133);
  *(v230 + 40) = v134;
  v135 = swift_allocObject();
  *(v135 + 16) = v217;
  *(v135 + 32) = v223;
  *(v135 + 40) = 0xD000000000000016;
  *(v135 + 48) = 0x80000001CA99C4A0;
  *(v135 + 64) = v131;
  *(v135 + 72) = @"DefaultValue";
  *(v135 + 80) = 0x646E65707041;
  *(v135 + 88) = 0xE600000000000000;
  *(v135 + 104) = v131;
  *(v135 + 112) = @"Items";
  v220 = swift_allocObject();
  *(v220 + 1) = xmmword_1CA981360;
  v136 = @"DefaultValue";
  v137 = @"Items";
  v138 = sub_1CA94C438("Append (WFEvernoteWriteMode)", 28);
  v215 = v139;
  v216 = v138;
  v140 = sub_1CA94C438("Append", 6);
  v214 = v141;
  *&v217 = &v213;
  MEMORY[0x1EEE9AC00](v140);
  v142 = &v213 - v236;
  sub_1CA948D98();
  v143 = v235;
  v144 = [v235 bundleURL];
  v213 = &v213;
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v216, v215, v140, v214, 0, 0, v142, &v213 - v129);
  v220[4] = v146;
  v147 = sub_1CA94C438("Prepend (WFEvernoteWriteMode)", 29);
  v215 = v148;
  v216 = v147;
  v214 = sub_1CA94C438("Prepend", 7);
  v150 = v149;
  *&v217 = &v213;
  MEMORY[0x1EEE9AC00](v214);
  v151 = v236;
  sub_1CA948D98();
  v152 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v216, v215, v214, v150, 0, 0, &v213 - v151, &v213 - v129);
  v155 = v220;
  v220[5] = v154;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v135 + 120) = v155;
  v157 = v221;
  *(v135 + 144) = v156;
  *(v135 + 152) = v157;
  *(v135 + 160) = 0xD000000000000013;
  *(v135 + 168) = 0x80000001CA9CBAC0;
  v158 = v222;
  *(v135 + 184) = MEMORY[0x1E69E6158];
  *(v135 + 192) = v158;
  *&v217 = sub_1CA94C438("Mode (WFEvernoteWriteMode)", 26);
  v160 = v159;
  v161 = sub_1CA94C438("Mode", 4);
  v163 = v162;
  v220 = &v213;
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948D98();
  v164 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v213 - v233;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v217, v160, v161, v163, 0, 0, &v213 - v151, v165);
  *(v135 + 224) = v232;
  *(v135 + 200) = v167;
  v168 = sub_1CA94C1E8();
  v169 = sub_1CA2F864C(v168);
  *(v230 + 48) = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = v224;
  *(v170 + 32) = v223;
  *(v170 + 40) = 0xD000000000000021;
  *(v170 + 48) = 0x80000001CA9C4280;
  v171 = v218;
  *(v170 + 64) = MEMORY[0x1E69E6158];
  *(v170 + 72) = v171;
  v172 = sub_1CA94C438("The notebook in which the note is located (optional) (WFEvernoteNotesNotebookName)", 82);
  v223 = v173;
  *&v224 = v172;
  v174 = sub_1CA94C438("The notebook in which the note is located (optional)", 52);
  v220 = v175;
  v228 = &v213;
  MEMORY[0x1EEE9AC00](v174);
  v176 = &v213 - v236;
  sub_1CA948D98();
  v177 = v235;
  v178 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  v179 = v233;
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 80) = sub_1CA2F9F14(v224, v223, v174, v220, 0, 0, v176, &v213 - v179);
  v181 = v221;
  *(v170 + 104) = v232;
  *(v170 + 112) = v181;
  *(v170 + 120) = 0xD00000000000001BLL;
  *(v170 + 128) = 0x80000001CA9C4350;
  v182 = v222;
  *(v170 + 144) = MEMORY[0x1E69E6158];
  *(v170 + 152) = v182;
  v183 = sub_1CA94C438("In Notebook (WFEvernoteNotesNotebookName)", 41);
  v223 = v184;
  *&v224 = v183;
  v222 = sub_1CA94C438("In Notebook", 11);
  v186 = v185;
  v228 = &v213;
  MEMORY[0x1EEE9AC00](v222);
  v187 = v236;
  sub_1CA948D98();
  v188 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v224, v223, v222, v186, 0, 0, &v213 - v187, &v213 - v179);
  *(v170 + 184) = v232;
  *(v170 + 160) = v190;
  v191 = sub_1CA94C1E8();
  v192 = sub_1CA2F864C(v191);
  v193 = v230;
  *(v230 + 56) = v192;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v195 = v231;
  v231[40] = v193;
  v195[43] = v194;
  v195[44] = @"ParameterSummary";
  v196 = @"ParameterSummary";
  v197 = sub_1CA94C438("${WFEvernoteWriteMode} ${WFInput} to the note ${WFEvernoteNotesTitleSearch} (Parameter Summary)", 95);
  v199 = v198;
  v200 = sub_1CA94C438("${WFEvernoteWriteMode} ${WFInput} to the note ${WFEvernoteNotesTitleSearch}", 75);
  v202 = v201;
  MEMORY[0x1EEE9AC00](v200);
  v203 = &v213 - v187;
  sub_1CA948D98();
  v204 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v204);
  v205 = &v213 - v233;
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v207 = sub_1CA2F9F14(v197, v199, v200, v202, 0, 0, v203, v205);
  v208 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v209 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v210 = v231;
  v231[45] = v208;
  v210[48] = v209;
  v210[49] = @"RequiredResources";
  v210[53] = v225;
  v210[50] = &unk_1F4A044E0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v211 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54FD28(void *a1)
{
  v1 = [a1 string];
  v2 = sub_1CA94C3A8();
  v4 = v3;

  v5 = objc_allocWithZone(WFUserVisibleString);
  return sub_1CA5920A8(v2, v4, 1, 0x656C626169726156, 0xED0000656D614E20);
}

uint64_t WFVariableFieldParameter.userVisibleStrings(in:for:)(uint64_t a1)
{
  v1 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    sub_1CA949C58();
    v12 = sub_1CA949F68();
    v13 = sub_1CA94CC28();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1CA256000, v12, v13, "Incorrect parameter state class", v14, 2u);
      MEMORY[0x1CCAA4BF0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v1);
    if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
    {
      sub_1CA2E85F8();
      return v15;
    }

    return MEMORY[0x1E69E7CD0];
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813B0;
  swift_unknownObjectRetain();
  *(inited + 32) = sub_1CA54FD28(v8);
  if (!sub_1CA25B410(inited))
  {
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_1CA32E3CC();
    return MEMORY[0x1E69E7CD0];
  }

  sub_1CA2E85F8();
  v11 = v10;
  swift_unknownObjectRelease();
  return v11;
}

id WFVariableFieldParameter.rewrite(_:withStrings:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v14 = sub_1CA54FD28(v13);
    v15 = sub_1CA311D98(v14, a2);
    if (v16)
    {
      v17 = v15;
      sub_1CA550384();
      v18 = sub_1CA538038(v17);
      swift_unknownObjectRelease();

      return v18;
    }

    sub_1CA949C58();
    v23 = sub_1CA949F68();
    v24 = sub_1CA94CC28();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1CA256000, v23, v24, "Missing string", v25, 2u);
      MEMORY[0x1CCAA4BF0](v25, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v5 + 8))(v11, v3);
  }

  else
  {
    sub_1CA949C58();
    v20 = sub_1CA949F68();
    v21 = sub_1CA94CC28();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1CA256000, v20, v21, "Incorrect parameter state class", v22, 2u);
      MEMORY[0x1CCAA4BF0](v22, -1, -1);
    }

    (*(v5 + 8))(v9, v3);
  }

  return swift_unknownObjectRetain();
}

unint64_t sub_1CA550384()
{
  result = qword_1EC4463E8;
  if (!qword_1EC4463E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4463E8);
  }

  return result;
}

id sub_1CA5503FC()
{
  v111 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  v4 = sub_1CA94C438("numeric|digits|detect|extract|scan", 34);
  v6 = v5;
  v7 = sub_1CA94C438("numeric|digits|detect|extract|scan", 34);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v116 = v11;
  v118 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v104 - v118;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v115 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v117 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v114 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v104 - v114;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v113 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x80000001CA993A80;
  *(inited + 184) = v21;
  *(inited + 192) = @"Description";
  *&v112 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Returns numbers from the previous action's output.", 50);
  v109 = v27;
  v28 = sub_1CA94C438("Returns numbers from the previous action's output.", 50);
  v30 = v29;
  v110 = &v104;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v104 - v118;
  sub_1CA948D98();
  v32 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v104 - v114;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v109, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v113;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v112;
  *(inited + 200) = sub_1CA6B3784(v36);
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 2036429383;
  *(inited + 248) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x7265626D756ELL;
  *(inited + 288) = 0xE600000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v112 = xmmword_1CA981350;
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
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v110;
  *(v39 + 192) = &unk_1F4A04560;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v109 = v46;
  *(inited + 320) = v45;
  *(inited + 344) = v46;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v41;
  *(inited + 392) = @"Name";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438("Get Numbers from Input (Action Name)", 36);
  v105 = v50;
  v106 = v49;
  v51 = sub_1CA94C438("Get Numbers from Input", 22);
  v104 = v52;
  v107 = &v104;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v104 - v118;
  sub_1CA948D98();
  v54 = v115;
  v55 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v114;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v106, v105, v51, v104, 0, 0, v53, &v104 - v56);
  v58 = v113;
  *(inited + 424) = v113;
  *(inited + 432) = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v112;
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
  v61 = sub_1CA94C438("Numbers (Default Output Name)", 29);
  v106 = v62;
  v107 = v61;
  v105 = sub_1CA94C438("Numbers", 7);
  v64 = v63;
  v108 = &v104;
  MEMORY[0x1EEE9AC00](v105);
  v65 = &v104 - v118;
  sub_1CA948D98();
  v66 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v107, v106, v105, v64, 0, 0, v65, &v104 - v56);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v110;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A04590;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 440) = sub_1CA94C1E8();
  *(inited + 464) = v109;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v110 = swift_allocObject();
  *(v110 + 1) = xmmword_1CA9813B0;
  v109 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = v112;
  *(v69 + 32) = @"AllowsDecimalNumbers";
  *(v69 + 40) = 1;
  *(v69 + 64) = MEMORY[0x1E69E6370];
  *(v69 + 72) = @"Class";
  *(v69 + 80) = 0xD000000000000016;
  *(v69 + 88) = 0x80000001CA99C180;
  *(v69 + 104) = v68;
  *(v69 + 112) = @"Key";
  *(v69 + 120) = 0x7475706E494657;
  *(v69 + 128) = 0xE700000000000000;
  *(v69 + 144) = v68;
  *(v69 + 152) = @"Label";
  v70 = @"Parameters";
  v71 = @"AllowsDecimalNumbers";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v75 = sub_1CA94C438("Input (WFInput)", 15);
  v108 = v76;
  v77 = sub_1CA94C438("Input", 5);
  v79 = v78;
  *&v112 = &v104;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v104 - v118;
  sub_1CA948D98();
  v81 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v104 - v114;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v75, v108, v77, v79, 0, 0, v80, v82);
  *(v69 + 184) = v113;
  *(v69 + 160) = v84;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v85 = sub_1CA94C1E8();
  v86 = sub_1CA2F864C(v85);
  v87 = v110;
  v110[4] = v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v87;
  *(inited + 504) = v88;
  *(inited + 512) = @"ParameterSummary";
  v89 = @"ParameterSummary";
  v90 = sub_1CA94C438("Get numbers from ${WFInput} (Parameter Summary)", 47);
  v92 = v91;
  v93 = sub_1CA94C438("Get numbers from ${WFInput}", 27);
  v95 = v94;
  v113 = &v104;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v104 - v118;
  sub_1CA948D98();
  v97 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v104 - v114;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v90, v92, v93, v95, 0, 0, v96, v98);
  v101 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v101;
  *(inited + 552) = @"ResidentCompatible";
  *(inited + 584) = MEMORY[0x1E69E6370];
  *(inited + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v102 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5512CC()
{
  v127 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9CBDB0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("URL|web|http", 12);
  v6 = v5;
  v7 = sub_1CA94C438("URL|web|http", 12);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v130 = v11;
  v134 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v120 - v134;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v132 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v131 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v133 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v120 - v133;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v129 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v128 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Retrieves the HTTP headers of the URL passed as input using a HEAD request.", 75);
  v125 = v24;
  v25 = sub_1CA94C438("Retrieves the HTTP headers of the URL passed as input using a HEAD request.", 75);
  v27 = v26;
  v126 = &v120;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v120 - v134;
  sub_1CA948D98();
  v29 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v120 - v133;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v125, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v129;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v128;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x6E65657247;
  *(inited + 168) = 0xE500000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x80000001CA9CBE30;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v124 = xmmword_1CA981350;
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
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v128;
  *(v37 + 192) = &unk_1F4A045C0;
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v126 = v44;
  *(inited + 240) = v43;
  *(inited + 264) = v44;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 0;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438("Get Headers of URL (Action Name)", 32);
  v122 = v48;
  v49 = sub_1CA94C438("Get Headers of URL", 18);
  v51 = v50;
  v123 = &v120;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v120 - v134;
  sub_1CA948D98();
  v53 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v120 - v133;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v47, v122, v49, v51, 0, 0, v52, v54);
  v56 = v129;
  *(inited + 344) = v129;
  *(inited + 352) = @"Output";
  v57 = swift_allocObject();
  *(v57 + 16) = v124;
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
  v59 = sub_1CA94C438("Headers of URL (Default Output Name)", 36);
  v123 = v60;
  *&v124 = v59;
  v61 = sub_1CA94C438("Headers of URL", 14);
  v63 = v62;
  v125 = &v120;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v120 - v134;
  sub_1CA948D98();
  v65 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v120 - v133;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v124, v123, v61, v63, 0, 0, v64, v66);
  *(v57 + 168) = v56;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v128;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F4A045F0;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *&v124 = @"Parameters";
  *(inited + 384) = v126;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v126 = swift_allocObject();
  *(v126 + 1) = xmmword_1CA9813B0;
  v125 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CA9813E0;
  *(v69 + 32) = @"AllowsMultipleValues";
  *(v69 + 40) = 0;
  v70 = MEMORY[0x1E69E6370];
  *(v69 + 64) = MEMORY[0x1E69E6370];
  *(v69 + 72) = @"AutocapitalizationType";
  *(v69 + 80) = 1701736270;
  *(v69 + 88) = 0xE400000000000000;
  *(v69 + 104) = v68;
  *(v69 + 112) = @"Class";
  *(v69 + 120) = 0xD000000000000014;
  *(v69 + 128) = 0x80000001CA99B500;
  *(v69 + 144) = v68;
  *(v69 + 152) = @"DisableAutocorrection";
  *(v69 + 160) = 1;
  *(v69 + 184) = v70;
  *(v69 + 192) = @"Key";
  *(v69 + 200) = 0x7475706E494657;
  *(v69 + 208) = 0xE700000000000000;
  *(v69 + 224) = v68;
  *(v69 + 232) = @"KeyboardType";
  *(v69 + 240) = 5001813;
  *(v69 + 248) = 0xE300000000000000;
  *(v69 + 264) = v68;
  *(v69 + 272) = @"Label";
  v71 = v124;
  v72 = @"AllowsMultipleValues";
  v73 = @"AutocapitalizationType";
  v74 = @"Class";
  v75 = @"DisableAutocorrection";
  v76 = @"Key";
  v77 = @"KeyboardType";
  v78 = @"Label";
  v79 = sub_1CA94C438("URL (WFInput)", 13);
  v122 = v80;
  v123 = v79;
  v81 = sub_1CA94C438("URL", 3);
  v121 = v82;
  *&v124 = &v120;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v120 - v134;
  sub_1CA948D98();
  v84 = v132;
  v85 = [v132 bundleURL];
  v120 = &v120;
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v120 - v133;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 280) = sub_1CA2F9F14(v123, v122, v81, v121, 0, 0, v83, v86);
  *(v69 + 304) = v129;
  *(v69 + 312) = @"Placeholder";
  v88 = @"Placeholder";
  v89 = sub_1CA94C438("URL (WFInput)", 13);
  v122 = v90;
  v123 = v89;
  v91 = sub_1CA94C438("URL", 3);
  v93 = v92;
  *&v124 = &v120;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v120 - v134;
  sub_1CA948D98();
  v95 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v120 - v133;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 320) = sub_1CA2F9F14(v123, v122, v91, v93, 0, 0, v94, v96);
  *(v69 + 344) = v129;
  *(v69 + 352) = @"TextContentType";
  *(v69 + 384) = MEMORY[0x1E69E6158];
  *(v69 + 360) = 5001813;
  *(v69 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v98 = @"TextContentType";
  v99 = sub_1CA94C1E8();
  v100 = sub_1CA2F864C(v99);
  v101 = v126;
  v126[4] = v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v101;
  *(inited + 424) = v102;
  *(inited + 432) = @"ParameterSummary";
  v103 = @"ParameterSummary";
  v104 = sub_1CA94C438("Get headers of ${WFInput} (Parameter Summary)", 45);
  v106 = v105;
  v107 = sub_1CA94C438("Get headers of ${WFInput}", 25);
  v109 = v108;
  v129 = &v120;
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v120 - v134;
  sub_1CA948D98();
  v111 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v120 - v133;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v104, v106, v107, v109, 0, 0, v110, v112);
  v115 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v116 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v115;
  *(inited + 464) = v116;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F4A04620;
  *(inited + 504) = v128;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v117 = @"RequiredResources";
  v118 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5522F4()
{
  v137 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A9740;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("camera|roll|picture|last", 24);
  v6 = v5;
  v7 = sub_1CA94C438("camera|roll|picture|last", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v145 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = v11;
  v12 = &v131 - v145;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v142 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v144 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v141 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v131 - v141;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v143 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v140 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets the most recent photos from the photo library.", 51);
  v138 = v27;
  v28 = sub_1CA94C438("Gets the most recent photos from the photo library.", 51);
  v30 = v29;
  v139 = &v131;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v131 - v145;
  sub_1CA948D98();
  v32 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v131 - v141;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v138, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v143;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v140;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v140 = v38;
  *(inited + 200) = &unk_1F4A04690;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v138 = sub_1CA94C438("Get Latest Photos (Action Name)", 31);
  v136 = v43;
  v44 = sub_1CA94C438("Get Latest Photos", 17);
  v46 = v45;
  v139 = &v131;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v131 - v145;
  sub_1CA948D98();
  v48 = v142;
  v49 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v141;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v138, v136, v44, v46, 0, 0, v47, &v131 - v50);
  *(inited + 304) = v143;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA9813C0;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  *(v52 + 48) = 1;
  *(v52 + 72) = MEMORY[0x1E69E6370];
  *(v52 + 80) = 0x614E74757074754FLL;
  *(v52 + 88) = 0xEA0000000000656DLL;
  v53 = @"Output";
  v138 = sub_1CA94C438("Latest Photos (Default Output Name)", 35);
  v136 = v54;
  v55 = sub_1CA94C438("Latest Photos", 13);
  v135 = v56;
  v139 = &v131;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v131 - v145;
  sub_1CA948D98();
  v58 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 96) = sub_1CA2F9F14(v138, v136, v55, v135, 0, 0, v57, &v131 - v50);
  *(v52 + 120) = v143;
  *(v52 + 128) = 0x7365707954;
  *(v52 + 168) = v140;
  *(v52 + 136) = 0xE500000000000000;
  *(v52 + 144) = &unk_1F4A046C0;
  v60 = MEMORY[0x1E69E6158];
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v61;
  *(inited + 344) = v62;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v139 = swift_allocObject();
  *(v139 + 1) = xmmword_1CA981360;
  v138 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1CA981370;
  *(v63 + 32) = @"Class";
  *(v63 + 40) = 0xD000000000000012;
  *(v63 + 48) = 0x80000001CA99B980;
  *(v63 + 64) = v60;
  *(v63 + 72) = @"DefaultValue";
  v64 = MEMORY[0x1E69E6530];
  *(v63 + 80) = 1;
  *(v63 + 104) = v64;
  *(v63 + 112) = @"Key";
  *(v63 + 120) = 0xD000000000000015;
  *(v63 + 128) = 0x80000001CA9A9870;
  *(v63 + 144) = v60;
  *(v63 + 152) = @"StepperDescription";
  v65 = @"Class";
  v66 = @"DefaultValue";
  v67 = @"Key";
  v135 = v65;
  v134 = v66;
  v133 = v67;
  v68 = @"Parameters";
  v69 = @"StepperDescription";
  v70 = sub_1CA94C438("Number of Photos (WFGetLatestPhotoCount)", 40);
  v131 = v71;
  v72 = sub_1CA94C438("Number of Photos", 16);
  v74 = v73;
  v132 = &v131;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v131 - v145;
  sub_1CA948D98();
  v76 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v131 - v141;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 160) = sub_1CA2F9F14(v70, v131, v72, v74, 0, 0, v75, v77);
  *(v63 + 184) = v143;
  *(v63 + 192) = @"StepperNoun";
  v79 = @"StepperNoun";
  v80 = sub_1CA94C438("%d Photos", v131);
  v131 = v81;
  v132 = v80;
  v82 = v81;
  v151 = 0;
  v152 = 0xE000000000000000;
  sub_1CA94D408();

  v151 = v80;
  v152 = v82;
  v149 = 10;
  v150 = 0xE100000000000000;
  v147 = 32;
  v148 = 0xE100000000000000;
  sub_1CA27BAF0();
  v151 = sub_1CA94D1B8();
  v152 = v83;
  v84 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v85 = v151;
  v86 = v152;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v131 - v145;
  sub_1CA948D98();
  v88 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v131 - v141;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v85, v86, v132, v131, 0, 0, v87, v89);
  *(v63 + 224) = v143;
  *(v63 + 200) = v91;
  _s3__C3KeyVMa_0(0);
  v132 = v92;
  v131 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v93 = sub_1CA94C1E8();
  v94 = sub_1CA2F864C(v93);
  v139[4] = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1CA981350;
  *(v95 + 32) = v135;
  *(v95 + 40) = 0xD000000000000011;
  *(v95 + 48) = 0x80000001CA99E620;
  v96 = MEMORY[0x1E69E6158];
  v97 = v134;
  *(v95 + 64) = MEMORY[0x1E69E6158];
  *(v95 + 72) = v97;
  *(v95 + 80) = 1;
  v98 = v133;
  *(v95 + 104) = MEMORY[0x1E69E6370];
  *(v95 + 112) = v98;
  *(v95 + 120) = 0xD000000000000029;
  *(v95 + 128) = 0x80000001CA9CC070;
  *(v95 + 144) = v96;
  *(v95 + 152) = @"Label";
  v99 = @"Label";
  v100 = sub_1CA94C438("Include Screenshots (WFGetLatestPhotosActionIncludeScreenshots)", 63);
  v135 = v101;
  v102 = sub_1CA94C438("Include Screenshots", 19);
  v104 = v103;
  v136 = &v131;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v131 - v145;
  sub_1CA948D98();
  v106 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v131 - v141;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v100, v135, v102, v104, 0, 0, v105, v107);
  *(v95 + 184) = v143;
  *(v95 + 160) = v109;
  v110 = sub_1CA94C1E8();
  v111 = sub_1CA2F864C(v110);
  v112 = v139;
  v139[5] = v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v112;
  *(inited + 384) = v113;
  *(inited + 392) = @"ParameterSummary";
  v114 = @"ParameterSummary";
  v115 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount} (Parameter Summary)", 59);
  v117 = v116;
  v118 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount}", 39);
  v120 = v119;
  v143 = &v131;
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v131 - v145;
  sub_1CA948D98();
  v122 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v131 - v141;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v115, v117, v118, v120, 0, 0, v121, v123);
  v126 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v127 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v126;
  *(inited + 424) = v127;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v140;
  *(inited + 440) = &unk_1F4A046F0;
  v128 = @"RequiredResources";
  v129 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v129;
  *(inited + 480) = 0x6F746F6850;
  *(inited + 488) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5533D8()
{
  v86 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9CC110;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("camera|roll|picture|photo|import|camera|sd|card|usb", 51);
  v6 = v5;
  v7 = sub_1CA94C438("camera|roll|picture|photo|import|camera|sd|card|usb", 51);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = v11;
  v12 = &v81 - v92;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v90 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v88 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v89 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v81 - v89;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v91 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v87 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets the most recent photo import from the Photos app.", 54);
  v84 = v27;
  v28 = sub_1CA94C438("Gets the most recent photo import from the Photos app.", 54);
  v30 = v29;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v81 - v92;
  sub_1CA948D98();
  v32 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v81 - v89;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v84, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v91;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v87;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v87 = v38;
  *(inited + 200) = &unk_1F4A04760;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438("Get Last Import (Action Name)", 29);
  v83 = v44;
  v84 = v43;
  v45 = sub_1CA94C438("Get Last Import", 15);
  v82 = v46;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v81 - v92;
  sub_1CA948D98();
  v48 = v90;
  v49 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v89;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v84, v83, v45, v82, 0, 0, v47, &v81 - v50);
  *(inited + 304) = v91;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA9813C0;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  *(v52 + 48) = 1;
  *(v52 + 72) = MEMORY[0x1E69E6370];
  *(v52 + 80) = 0x614E74757074754FLL;
  *(v52 + 88) = 0xEA0000000000656DLL;
  v53 = @"Output";
  v54 = sub_1CA94C438("Imported Photos (Default Output Name)", 37);
  v83 = v55;
  v84 = v54;
  v56 = sub_1CA94C438("Imported Photos", 15);
  v82 = v57;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v81 - v92;
  sub_1CA948D98();
  v59 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 96) = sub_1CA2F9F14(v84, v83, v56, v82, 0, 0, v58, &v81 - v50);
  *(v52 + 120) = v91;
  *(v52 + 128) = 0x7365707954;
  *(v52 + 168) = v87;
  *(v52 + 136) = 0xE500000000000000;
  *(v52 + 144) = &unk_1F4A04790;
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v61;
  *(inited + 344) = v62;
  *(inited + 352) = @"Parameters";
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = MEMORY[0x1E69E7CC0];
  *(inited + 384) = v63;
  *(inited + 392) = @"ParameterSummary";
  v64 = @"Parameters";
  v65 = @"ParameterSummary";
  v66 = sub_1CA94C438("Get last import (Parameter Summary)", 35);
  v68 = v67;
  v69 = sub_1CA94C438("Get last import", 15);
  v71 = v70;
  v91 = &v81;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v81 - v92;
  sub_1CA948D98();
  v73 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v81 - v89;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v66, v68, v69, v71, 0, 0, v72, v74);
  v77 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v78 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v77;
  *(inited + 424) = v78;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v87;
  *(inited + 440) = &unk_1F4A047C0;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v79 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA553E14(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_1CA94C218();
    sub_1CA368948(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1CA553F18(uint64_t a1, void *a2)
{
  v2 = a1;
  v14[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1CA94D2F8();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    sub_1CA94C948();
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
    v6 = v14[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    if (!*(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11))))))
    {
LABEL_18:
      sub_1CA28A224(v2);
      return;
    }

    while (1)
    {
      sub_1CA368D08(v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1CA94D358())
      {
        type metadata accessor for WFUserVisibleString();
        swift_dynamicCast();
        v12 = v5;
        v13 = v6;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1CA5540DC(uint64_t a1)
{
  v3 = [v1 variableString];
  v4 = [v3 userVisibleStringsForUseCase_];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C8F8();

  v6 = [v1 subtitle];
  v7 = [v6 userVisibleStringsForUseCase_];
  v8 = sub_1CA94C8F8();

  sub_1CA553F18(v8, v5);
}

void sub_1CA554258()
{
  sub_1CA25B3D0(0, &qword_1EC4463F0, off_1E836DF30);
  v1 = [v0 variableString];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v2 = OUTLINED_FUNCTION_0_53();
  v3 = [v1 rewrittenWithStrings_];

  v13 = v3;
  v4 = [v0 synonyms];
  sub_1CA25B3D0(0, &qword_1EC443808, off_1E836DF38);
  v5 = sub_1CA94C658();

  v6 = [v0 subtitle];
  v7 = OUTLINED_FUNCTION_0_53();
  v8 = [v6 rewrittenWithStrings_];

  v12 = v8;
  v9.variableString.super.isa = &v13;
  v9.variableString._stringsAndVariables = v5;
  WFChooseFromMenuItemParameterState.init(variableString:synonyms:subtitle:)(v11, v9, &v12, v10);
}

id sub_1CA554490()
{
  v220 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9CC2A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("watch|fitness", 13);
  v6 = v5;
  v7 = sub_1CA94C438("watch|fitness", 13);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v235 = v11;
  v236 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v209 - v236;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v233 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v234 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v232 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v209 - v232;
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
  v227 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v229 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v219 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Starts a workout on your Apple Watch.", 37);
  v28 = v27;
  v29 = sub_1CA94C438("Starts a workout on your Apple Watch.", 37);
  v31 = v30;
  v228 = &v209;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v209 - v236;
  sub_1CA948D98();
  v33 = [v233 bundleURL];
  v230 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v209 - v232;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v231;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v229;
  v40 = sub_1CA6B3784(v38);
  v41 = v230;
  v230[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconName";
  v41[25] = 0x74756F6B726F57;
  v41[26] = 0xE700000000000000;
  v42 = MEMORY[0x1E69E6158];
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"InputPassthrough";
  v41[33] = MEMORY[0x1E69E6370];
  *(v41 + 240) = 1;
  v43 = v41;
  v44 = @"IconName";
  v45 = @"InputPassthrough";
  v46 = sub_1CA94C368();
  v43[38] = v42;
  v43[34] = v46;
  v43[35] = 0xD000000000000029;
  v43[36] = 0x80000001CA9CC300;
  v47 = sub_1CA94C368();
  v226 = 0x80000001CA9CC330;
  *&v223 = 0xD000000000000014;
  v43[39] = v47;
  v43[40] = 0xD000000000000014;
  v43[41] = 0x80000001CA9CC330;
  v43[43] = v42;
  v43[44] = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438("Start Workout (Action Name)", 27);
  v51 = v50;
  v52 = sub_1CA94C438("Start Workout", 13);
  v54 = v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v209 - v236;
  sub_1CA948D98();
  v56 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v209 - v232;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  v60 = v230;
  v230[45] = v59;
  v60[48] = v231;
  v60[49] = @"Parameters";
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_1CA981570;
  v228 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_initStackObject();
  v215 = xmmword_1CA981380;
  *(v61 + 16) = xmmword_1CA981380;
  v218 = 0xD00000000000001ALL;
  *(v61 + 32) = @"Class";
  *(v61 + 40) = 0xD00000000000001ALL;
  *(v61 + 48) = 0x80000001CA99B690;
  v62 = MEMORY[0x1E69E6158];
  *(v61 + 64) = MEMORY[0x1E69E6158];
  *(v61 + 72) = @"DefaultValue";
  v63 = @"Class";
  v64 = @"DefaultValue";
  v65 = v63;
  v66 = v64;
  v222 = v65;
  v224 = v66;
  v67 = @"Parameters";
  *(v61 + 80) = sub_1CA94C1E8();
  *(v61 + 104) = v227;
  *(v61 + 112) = @"Hidden";
  *(v61 + 144) = MEMORY[0x1E69E6370];
  *(v61 + 120) = 1;
  v68 = @"Hidden";
  v69 = sub_1CA94C368();
  v70 = v223;
  *(v61 + 152) = v69;
  *(v61 + 160) = v70;
  *(v61 + 168) = v226;
  *(v61 + 184) = v62;
  *(v61 + 192) = @"Key";
  v217 = 0xD000000000000013;
  *(v61 + 200) = 0xD000000000000013;
  *(v61 + 208) = 0x80000001CA99B6D0;
  *(v61 + 224) = v62;
  *(v61 + 232) = @"Label";
  v71 = @"Key";
  v72 = @"Label";
  v73 = v71;
  v74 = v72;
  v213 = v73;
  *&v223 = v74;
  v75 = sub_1CA94C438("App (IntentAppDefinition)", 25);
  v77 = v76;
  v78 = sub_1CA94C438("App", 3);
  v80 = v79;
  v227 = &v209;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v209 - v236;
  sub_1CA948D98();
  v82 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v209 - v232;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v75, v77, v78, v80, 0, 0, v81, v83);
  *(v61 + 264) = v231;
  *(v61 + 240) = v85;
  _s3__C3KeyVMa_0(0);
  v227 = v86;
  v226 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v87 = sub_1CA94C1E8();
  v88 = sub_1CA2F864C(v87);
  *(v229 + 32) = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1CA981370;
  *(v89 + 32) = @"AllowsMultipleValues";
  *(v89 + 40) = 0;
  v90 = v222;
  *(v89 + 64) = MEMORY[0x1E69E6370];
  *(v89 + 72) = v90;
  v214 = 0xD000000000000023;
  *(v89 + 80) = 0xD000000000000023;
  *(v89 + 88) = 0x80000001CA9CC380;
  v91 = MEMORY[0x1E69E6158];
  v92 = v213;
  *(v89 + 104) = MEMORY[0x1E69E6158];
  *(v89 + 112) = v92;
  *(v89 + 120) = 0x4E74756F6B726F77;
  *(v89 + 128) = 0xEB00000000656D61;
  v93 = v223;
  *(v89 + 144) = v91;
  *(v89 + 152) = v93;
  v221 = v90;
  v222 = v92;
  *&v223 = v93;
  v94 = @"AllowsMultipleValues";
  v95 = sub_1CA94C438("Type (workoutName)", 18);
  v211 = v96;
  v212 = v95;
  v97 = sub_1CA94C438("Type", 4);
  v210 = v98;
  v213 = &v209;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v209 - v236;
  sub_1CA948D98();
  v100 = v233;
  v101 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = v232;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 160) = sub_1CA2F9F14(v212, v211, v97, v210, 0, 0, v99, &v209 - v102);
  v104 = v231;
  *(v89 + 184) = v231;
  *(v89 + 192) = @"Prompt";
  v105 = @"Prompt";
  v106 = sub_1CA94C438("What kind of workout? (workoutName)", 35);
  v211 = v107;
  v212 = v106;
  v108 = sub_1CA94C438("What kind of workout?", 21);
  v210 = v109;
  v213 = &v209;
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v209 - v236;
  sub_1CA948D98();
  v111 = [v100 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v212, v211, v108, v210, 0, 0, v110, &v209 - v102);
  *(v89 + 224) = v104;
  *(v89 + 200) = v113;
  v114 = sub_1CA94C1E8();
  v115 = sub_1CA2F864C(v114);
  *(v229 + 40) = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = v215;
  *(v116 + 32) = v221;
  *(v116 + 40) = 0xD000000000000011;
  *(v116 + 48) = 0x80000001CA99E620;
  v117 = MEMORY[0x1E69E6158];
  v118 = v224;
  *(v116 + 64) = MEMORY[0x1E69E6158];
  *(v116 + 72) = v118;
  *(v116 + 80) = 1;
  v119 = v222;
  *(v116 + 104) = MEMORY[0x1E69E6370];
  *(v116 + 112) = v119;
  *(v116 + 120) = 0x6E456E65704F7369;
  *(v116 + 128) = 0xEB00000000646564;
  v120 = v223;
  *(v116 + 144) = v117;
  *(v116 + 152) = v120;
  v121 = sub_1CA94C438("Open Goal (isOpenEnded)", 23);
  v123 = v122;
  v124 = sub_1CA94C438("Open Goal", 9);
  v126 = v125;
  *&v215 = &v209;
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v209 - v236;
  sub_1CA948D98();
  v128 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v209 - v232;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v121, v123, v124, v126, 0, 0, v127, v129);
  *(v116 + 184) = v231;
  *(v116 + 160) = v131;
  v132 = sub_1CA94C368();
  v133 = MEMORY[0x1E69E6158];
  *(v116 + 224) = MEMORY[0x1E69E6158];
  *(v116 + 192) = v132;
  *(v116 + 200) = 0x6E6F697461727544;
  *(v116 + 208) = 0xE800000000000000;
  v134 = sub_1CA94C368();
  *(v116 + 264) = v133;
  *(v116 + 232) = v134;
  *(v116 + 240) = 0x616F47206E65704FLL;
  *(v116 + 248) = 0xE90000000000006CLL;
  v135 = sub_1CA94C1E8();
  v136 = sub_1CA2F864C(v135);
  *(v229 + 48) = v136;
  v137 = swift_allocObject();
  v225 = xmmword_1CA981400;
  *(v137 + 16) = xmmword_1CA981400;
  v138 = v214;
  *(v137 + 32) = v221;
  *(v137 + 40) = v138;
  *(v137 + 48) = 0x80000001CA9CC450;
  v139 = v224;
  *(v137 + 64) = v133;
  *(v137 + 72) = v139;
  *(v137 + 80) = 13617;
  *(v137 + 88) = 0xE200000000000000;
  v140 = v222;
  *(v137 + 104) = v133;
  *(v137 + 112) = v140;
  *(v137 + 120) = 0x4774756F6B726F57;
  *(v137 + 128) = 0xEB000000006C616FLL;
  v141 = v223;
  *(v137 + 144) = v133;
  *(v137 + 152) = v141;
  v142 = sub_1CA94C438("Value (WorkoutGoal)", 19);
  v144 = v143;
  v145 = sub_1CA94C438("Value", 5);
  v147 = v146;
  v224 = &v209;
  MEMORY[0x1EEE9AC00](v145);
  v148 = &v209 - v236;
  sub_1CA948D98();
  v149 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v149);
  v150 = &v209 - v232;
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v137 + 160) = sub_1CA2F9F14(v142, v144, v145, v147, 0, 0, v148, v150);
  *(v137 + 184) = v231;
  *(v137 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v152 = swift_allocObject();
  *(v152 + 16) = v219;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v153 = swift_allocObject();
  v223 = xmmword_1CA9813C0;
  *(v153 + 16) = xmmword_1CA9813C0;
  strcpy((v153 + 32), "WFParameterKey");
  *(v153 + 47) = -18;
  *(v153 + 48) = 0x6E456E65704F7369;
  *(v153 + 56) = 0xEB00000000646564;
  v154 = MEMORY[0x1E69E6158];
  *(v153 + 72) = MEMORY[0x1E69E6158];
  *(v153 + 80) = 0xD000000000000010;
  *(v153 + 88) = 0x80000001CA993570;
  *(v153 + 96) = 0;
  *(v153 + 120) = MEMORY[0x1E69E6370];
  *(v153 + 128) = 0x72756F7365524657;
  *(v153 + 168) = v154;
  v155 = v154;
  *(v153 + 136) = 0xEF7373616C436563;
  *(v153 + 144) = 0xD00000000000001BLL;
  *(v153 + 152) = 0x80000001CA993590;
  v156 = @"RequiredResources";
  *(v152 + 32) = sub_1CA94C1E8();
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v137 + 200) = v152;
  *(v137 + 224) = v157;
  *(v137 + 232) = @"TextAlignment";
  *(v137 + 264) = v155;
  *(v137 + 240) = 0x7468676952;
  *(v137 + 248) = 0xE500000000000000;
  v158 = @"TextAlignment";
  v159 = sub_1CA94C368();
  *(v137 + 304) = v155;
  *(v137 + 272) = v159;
  *(v137 + 280) = 0x4E74756F6B726F77;
  *(v137 + 288) = 0xEB00000000656D61;
  v160 = sub_1CA94C1E8();
  v161 = sub_1CA2F864C(v160);
  v162 = v229;
  *(v229 + 56) = v161;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v164 = v230;
  v230[50] = v162;
  v164[53] = v163;
  v164[54] = @"ParameterSummary";
  v229 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_1CA981360;
  v228 = "WFWorkoutGoalKey";
  v165 = @"ParameterSummary";
  v166 = sub_1CA94C438("Start ${workoutName} for ${isOpenEnded} ${WorkoutGoal}", 54);
  v168 = v167;
  v169 = sub_1CA94C438("Start ${workoutName} for ${isOpenEnded} ${WorkoutGoal}", 54);
  v171 = v170;
  v227 = &v209;
  MEMORY[0x1EEE9AC00](v169);
  v172 = &v209 - v236;
  sub_1CA948D98();
  v173 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v209 - v232;
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176 = sub_1CA2F9F14(v166, v168, v169, v171, 0, 0, v172, v174);
  v177 = objc_allocWithZone(WFActionParameterSummaryValue);
  v178 = sub_1CA65DD78(0xD000000000000026, v228 | 0x8000000000000000, v176);
  *(v231 + 32) = v178;
  v228 = "nEnded} ${WorkoutGoal}";
  v179 = sub_1CA94C438("Start ${workoutName} with ${isOpenEnded}", 40);
  v181 = v180;
  v182 = sub_1CA94C438("Start ${workoutName} with ${isOpenEnded}", 40);
  v184 = v183;
  v227 = &v209;
  MEMORY[0x1EEE9AC00](v182);
  v185 = &v209 - v236;
  sub_1CA948D98();
  v186 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v209 - v232;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v179, v181, v182, v184, 0, 0, v185, v187);
  v190 = objc_allocWithZone(WFActionParameterSummaryValue);
  v191 = sub_1CA65DD78(v218, v228 | 0x8000000000000000, v189);
  v192 = v231;
  *(v231 + 40) = v191;
  v193 = v229;
  v194 = sub_1CA65AF90(v192);
  v195 = v230;
  v230[55] = v194;
  v195[58] = v193;
  v195[59] = @"RemoteExecuteOnPlatforms";
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v195[60] = &unk_1F4A04870;
  v195[63] = v196;
  v195[64] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v197 = swift_allocObject();
  *(v197 + 16) = v223;
  v198 = MEMORY[0x1E69E6158];
  *(v197 + 56) = MEMORY[0x1E69E6158];
  *(v197 + 32) = v217;
  *(v197 + 40) = 0x80000001CA99A9A0;
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_1CA97EDF0;
  *(v199 + 32) = 0x656372756F736552;
  *(v199 + 40) = 0xE900000000000073;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v200 = swift_allocObject();
  *(v200 + 16) = v225;
  v201 = @"RemoteExecuteOnPlatforms";
  v202 = @"RequiredResources";
  *(v200 + 32) = sub_1CA94C1E8();
  *(v200 + 40) = sub_1CA94C1E8();
  *(v200 + 48) = sub_1CA94C1E8();
  *(v200 + 56) = sub_1CA94C1E8();
  *(v200 + 64) = sub_1CA94C1E8();
  *(v200 + 72) = sub_1CA94C1E8();
  *(v200 + 80) = sub_1CA94C1E8();
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v199 + 48) = v200;
  *(v199 + 72) = v203;
  *(v199 + 80) = 0x72756F7365524657;
  *(v199 + 120) = v198;
  *(v199 + 88) = 0xEF7373616C436563;
  *(v199 + 96) = 0xD000000000000019;
  *(v199 + 104) = 0x80000001CA9CC580;
  v204 = sub_1CA94C1E8();
  *(v197 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v197 + 64) = v204;
  v237 = 2;
  v238 = 1;
  v205 = type metadata accessor for WFDeviceIdiomResource();
  v206 = objc_allocWithZone(v205);
  WFDeviceIdiomResource.init(requirement:)(&v237);
  *(v197 + 120) = v205;
  *(v197 + 96) = v207;
  v195[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v195[65] = v197;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA555E24()
{
  v0 = sub_1CA949D18();
  v206 = *(v0 - 8);
  v207 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v205 = &v193 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v204 = &v193 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v203 = &v193 - v5;
  v208 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9CC5E0;
  *(inited + 64) = v7;
  *(inited + 72) = @"ActionKeywords";
  v8 = @"ActionClass";
  v9 = @"ActionKeywords";
  v10 = sub_1CA94C438("add|new|photo|photos|picture|image|camera|roll", 46);
  v12 = v11;
  v13 = sub_1CA94C438("add|new|photo|photos|picture|image|camera|roll", 46);
  v15 = v14;
  v16 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v217 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v218 = v17;
  v18 = &v193 - v217;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v215 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v219 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v216 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v193 - v216;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v10, v12, v13, v15, 0, 0, v18, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v214 = v25;
  *(inited + 80) = v24;
  *(inited + 104) = v25;
  *(inited + 112) = @"AppDefinition";
  v26 = @"AppDefinition";
  v27 = sub_1CA94C1E8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v27;
  *(inited + 144) = v28;
  *(inited + 152) = @"Description";
  v212 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v29 = swift_initStackObject();
  v211 = xmmword_1CA9813C0;
  *(v29 + 16) = xmmword_1CA9813C0;
  *(v29 + 32) = @"DescriptionInput";
  v30 = @"Description";
  v31 = @"DescriptionInput";
  v32 = sub_1CA94C438("Photos, videos, or audio to include in the new album", 52);
  v209 = v33;
  v34 = sub_1CA94C438("Photos, videos, or audio to include in the new album", 52);
  v36 = v35;
  v210 = &v193;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v193 - v217;
  sub_1CA948D98();
  v38 = v215;
  v39 = [v215 bundleURL];
  v213 = inited;
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v193 - v216;
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v29 + 40) = sub_1CA2F9F14(v32, v209, v34, v36, 0, 0, v37, v40);
  *(v29 + 64) = v214;
  *(v29 + 72) = @"DescriptionResult";
  v42 = @"DescriptionResult";
  v209 = sub_1CA94C438("The items saved to the album", 28);
  v202 = v43;
  v44 = sub_1CA94C438("The items saved to the album", 28);
  v46 = v45;
  v210 = &v193;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v193 - v217;
  sub_1CA948D98();
  v48 = [v38 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v216;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v29 + 80) = sub_1CA2F9F14(v209, v202, v44, v46, 0, 0, v47, &v193 - v49);
  v51 = v214;
  *(v29 + 104) = v214;
  *(v29 + 112) = @"DescriptionSummary";
  v52 = @"DescriptionSummary";
  v209 = sub_1CA94C438("Creates a new album in the Photos app, including the specified photos and videos.", 81);
  v202 = v53;
  *&v201 = sub_1CA94C438("Creates a new album in the Photos app, including the specified photos and videos.", 81);
  v55 = v54;
  v210 = &v193;
  MEMORY[0x1EEE9AC00](v201);
  v56 = &v193 - v217;
  sub_1CA948D98();
  v57 = [v215 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v209, v202, v201, v55, 0, 0, v56, &v193 - v49);
  *(v29 + 144) = v51;
  *(v29 + 120) = v59;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v60 = sub_1CA94C1E8();
  v61 = v212;
  v62 = sub_1CA6B3784(v60);
  v63 = v213;
  v213[20] = v62;
  v63[23] = v61;
  v63[24] = @"DisabledOnPlatforms";
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v63[25] = &unk_1F4A04C60;
  v63[28] = v64;
  v63[29] = @"Input";
  v65 = v64;
  v212 = v64;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_1CA981350;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  v67 = MEMORY[0x1E69E6370];
  *(v66 + 48) = 1;
  *(v66 + 72) = v67;
  strcpy((v66 + 80), "ParameterKey");
  *(v66 + 93) = 0;
  *(v66 + 94) = -5120;
  *(v66 + 96) = 0x7475706E494657;
  *(v66 + 104) = 0xE700000000000000;
  *(v66 + 120) = MEMORY[0x1E69E6158];
  *(v66 + 128) = 0x6465726975716552;
  *(v66 + 136) = 0xE800000000000000;
  *(v66 + 144) = 1;
  *(v66 + 168) = v67;
  *(v66 + 176) = 0x7365707954;
  v68 = v67;
  *(v66 + 216) = v65;
  *(v66 + 184) = 0xE500000000000000;
  *(v66 + 192) = &unk_1F4A04C90;
  v69 = @"DisabledOnPlatforms";
  v70 = @"Input";
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v210 = v72;
  v63[30] = v71;
  v63[33] = v72;
  v63[34] = @"InputPassthrough";
  *(v63 + 280) = 0;
  v63[38] = v68;
  v63[39] = @"Name";
  v73 = @"InputPassthrough";
  v74 = @"Name";
  v75 = sub_1CA94C438("Create Photo Album (Action Name)", 32);
  v200 = v76;
  *&v201 = v75;
  v77 = sub_1CA94C438("Create Photo Album", 18);
  v79 = v78;
  v202 = &v193;
  MEMORY[0x1EEE9AC00](v77);
  v80 = v217;
  sub_1CA948D98();
  v81 = v215;
  v82 = [v215 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v193 - v216;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v201, v200, v77, v79, 0, 0, &v193 - v80, v83);
  v86 = v213;
  v87 = v214;
  v213[40] = v85;
  v86[43] = v87;
  v86[44] = @"Output";
  v88 = swift_allocObject();
  *(v88 + 16) = v211;
  *(v88 + 32) = 0x656C7069746C754DLL;
  *(v88 + 40) = 0xE800000000000000;
  *(v88 + 48) = 1;
  *(v88 + 72) = MEMORY[0x1E69E6370];
  *(v88 + 80) = 0x614E74757074754FLL;
  *(v88 + 88) = 0xEA0000000000656DLL;
  v89 = @"Output";
  v202 = sub_1CA94C438("Saved Photo Media (Default Output Name)", 39);
  *&v201 = v90;
  v91 = sub_1CA94C438("Saved Photo Media", 17);
  v93 = v92;
  v209 = &v193;
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948D98();
  v94 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v193 - v216;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 96) = sub_1CA2F9F14(v202, v201, v91, v93, 0, 0, &v193 - v80, v95);
  *(v88 + 120) = v87;
  *(v88 + 128) = 0x7365707954;
  *(v88 + 168) = v212;
  *(v88 + 136) = 0xE500000000000000;
  *(v88 + 144) = &unk_1F4A04CE0;
  v97 = MEMORY[0x1E69E6158];
  v98 = sub_1CA94C1E8();
  v99 = v213;
  v213[45] = v98;
  v99[48] = v210;
  v99[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v210 = swift_allocObject();
  *(v210 + 1) = xmmword_1CA981360;
  v209 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v100 = swift_allocObject();
  v201 = xmmword_1CA981370;
  *(v100 + 16) = xmmword_1CA981370;
  *(v100 + 32) = @"Class";
  *(v100 + 40) = 0xD000000000000014;
  *(v100 + 48) = 0x80000001CA99B500;
  *(v100 + 64) = v97;
  *(v100 + 72) = @"Description";
  v200 = @"Class";
  v101 = @"Parameters";
  v102 = @"Description";
  v103 = sub_1CA94C438("If there is already a photo album by this name, photos will be added to the existing album instead of creating a new one. (AlbumName)", 133);
  v198 = v104;
  v105 = sub_1CA94C438("If there is already a photo album by this name, photos will be added to the existing album instead of creating a new one.", 121);
  v107 = v106;
  v199 = &v193;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v193 - v217;
  sub_1CA948D98();
  v109 = v215;
  v110 = [v215 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v193 - v216;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 80) = sub_1CA2F9F14(v103, v198, v105, v107, 0, 0, v108, v111);
  *(v100 + 104) = v214;
  *(v100 + 112) = @"Key";
  *(v100 + 120) = 0x6D614E6D75626C41;
  *(v100 + 128) = 0xE900000000000065;
  *(v100 + 144) = MEMORY[0x1E69E6158];
  *(v100 + 152) = @"Label";
  v113 = @"Key";
  v114 = @"Label";
  v197 = v113;
  v196 = v114;
  v198 = sub_1CA94C438("Album Name (AlbumName)", 22);
  v195 = v115;
  v116 = sub_1CA94C438("Album Name", 10);
  v194 = v117;
  v199 = &v193;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v217;
  sub_1CA948D98();
  v119 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v193 - v216;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 160) = sub_1CA2F9F14(v198, v195, v116, v194, 0, 0, &v193 - v118, v120);
  v122 = v214;
  *(v100 + 184) = v214;
  *(v100 + 192) = @"Placeholder";
  v195 = @"Placeholder";
  v198 = sub_1CA94C438("Album Name (AlbumName)", 22);
  v194 = v123;
  v124 = sub_1CA94C438("Album Name", 10);
  v193 = v125;
  v199 = &v193;
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v193 - v118;
  sub_1CA948D98();
  v127 = v215;
  v128 = [v215 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = v216;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v198, v194, v124, v193, 0, 0, v126, &v193 - v129);
  *(v100 + 224) = v122;
  *(v100 + 200) = v131;
  _s3__C3KeyVMa_0(0);
  v199 = v132;
  v198 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v133 = sub_1CA94C1E8();
  v134 = sub_1CA2F864C(v133);
  v210[4] = v134;
  v135 = swift_allocObject();
  *(v135 + 16) = v201;
  *(v135 + 32) = v200;
  *(v135 + 40) = 0xD000000000000019;
  *(v135 + 48) = 0x80000001CA99B030;
  v136 = MEMORY[0x1E69E6158];
  v137 = v197;
  *(v135 + 64) = MEMORY[0x1E69E6158];
  *(v135 + 72) = v137;
  *(v135 + 80) = 0x7475706E494657;
  *(v135 + 88) = 0xE700000000000000;
  v138 = v196;
  *(v135 + 104) = v136;
  *(v135 + 112) = v138;
  v139 = sub_1CA94C438("Photos (WFInput)", 16);
  v200 = v140;
  *&v201 = v139;
  v141 = sub_1CA94C438("Photos", 6);
  v197 = v142;
  v202 = &v193;
  MEMORY[0x1EEE9AC00](v141);
  v143 = v217;
  sub_1CA948D98();
  v144 = [v127 bundleURL];
  v196 = &v193;
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 120) = sub_1CA2F9F14(v201, v200, v141, v197, 0, 0, &v193 - v143, &v193 - v129);
  v146 = v214;
  v147 = v195;
  *(v135 + 144) = v214;
  *(v135 + 152) = v147;
  v148 = sub_1CA94C438("Photos (WFInput)", 16);
  v200 = v149;
  *&v201 = v148;
  v150 = sub_1CA94C438("Photos", 6);
  v197 = v151;
  v202 = &v193;
  MEMORY[0x1EEE9AC00](v150);
  sub_1CA948D98();
  v152 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 160) = sub_1CA2F9F14(v201, v200, v150, v197, 0, 0, &v193 - v143, &v193 - v129);
  *(v135 + 184) = v146;
  *(v135 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v154 = swift_allocObject();
  *(v154 + 16) = v211;
  v155 = @"PreferredTypes";
  v156 = v203;
  sub_1CA949CB8();
  v157 = sub_1CA949C68();
  v159 = v158;
  v160 = *(v206 + 8);
  v161 = v156;
  v162 = v207;
  v160(v161, v207);
  *(v154 + 32) = v157;
  *(v154 + 40) = v159;
  v163 = v204;
  sub_1CA949CD8();
  v164 = sub_1CA949C68();
  v166 = v165;
  v160(v163, v162);
  *(v154 + 48) = v164;
  *(v154 + 56) = v166;
  v167 = v205;
  sub_1CA949CC8();
  v168 = sub_1CA949C68();
  v170 = v169;
  v160(v167, v162);
  *(v154 + 64) = v168;
  *(v154 + 72) = v170;
  *(v135 + 224) = v212;
  *(v135 + 200) = v154;
  v171 = sub_1CA94C1E8();
  v172 = sub_1CA2F864C(v171);
  v173 = v210;
  v210[5] = v172;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v175 = v213;
  v213[50] = v173;
  v175[53] = v174;
  v175[54] = @"ParameterSummary";
  v176 = @"ParameterSummary";
  v177 = sub_1CA94C438("Create photo album ${AlbumName} with ${WFInput} (Parameter Summary)", 67);
  v179 = v178;
  v180 = sub_1CA94C438("Create photo album ${AlbumName} with ${WFInput}", 47);
  v182 = v181;
  MEMORY[0x1EEE9AC00](v180);
  v183 = &v193 - v217;
  sub_1CA948D98();
  v184 = [v215 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = &v193 - v216;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v177, v179, v180, v182, 0, 0, v183, v185);
  v188 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v189 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v190 = v213;
  v213[55] = v188;
  v190[58] = v189;
  v190[59] = @"RequiredResources";
  v190[63] = v212;
  v190[60] = &unk_1F4A04D10;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v191 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA557514()
{
  v83 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001FLL;
  *(inited + 48) = 0x80000001CA9CC910;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  *&v82 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA981310;
  *(v2 + 32) = @"DescriptionSummary";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionSummary";
  v6 = sub_1CA94C438("Scans a QR code or barcode using the camera, and returns the text/URL that is found.", 84);
  v87 = v7;
  v8 = sub_1CA94C438("Scans a QR code or barcode using the camera, and returns the text/URL that is found.", 84);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v90 = v12;
  v13 = &v78 - v89;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v85 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v88 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v78 - v84;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v6, v87, v8, v10, 0, 0, v13, v17);
  v86 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 64) = v86;
  *(v2 + 40) = v19;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v20 = sub_1CA94C1E8();
  v21 = v82;
  *(inited + 80) = sub_1CA6B3784(v20);
  *(inited + 104) = v21;
  *(inited + 112) = @"DisabledOnPlatforms";
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v87 = v22;
  *(inited + 120) = &unk_1F4A04D40;
  *(inited + 144) = v22;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v23 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000001CA9CC990;
  *(inited + 224) = v23;
  *(inited + 232) = @"Name";
  v24 = @"DisabledOnPlatforms";
  v25 = @"IconColor";
  v26 = @"IconSymbol";
  v27 = @"Name";
  v28 = sub_1CA94C438("Scan QR or Barcode (Action Name)", 32);
  v80 = v29;
  v81 = v28;
  v30 = sub_1CA94C438("Scan QR or Barcode", 18);
  v32 = v31;
  *&v82 = &v78;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v78 - v89;
  sub_1CA948D98();
  v34 = v85;
  v35 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = v84;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v81, v80, v30, v32, 0, 0, v33, &v78 - v36);
  *(inited + 264) = v86;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v82 = xmmword_1CA9813C0;
  *(v38 + 16) = xmmword_1CA9813C0;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 0;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x614E74757074754FLL;
  *(v38 + 88) = 0xEA0000000000656DLL;
  v40 = @"Output";
  v41 = sub_1CA94C438("QR/Barcode (Default Output Name)", 32);
  v79 = v42;
  v80 = v41;
  v43 = sub_1CA94C438("QR/Barcode", 10);
  v45 = v44;
  v81 = &v78;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v78 - v89;
  sub_1CA948D98();
  v47 = [v34 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v38 + 96) = sub_1CA2F9F14(v80, v79, v43, v45, 0, 0, v46, &v78 - v36);
  v49 = v87;
  *(v38 + 120) = v86;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 168) = v49;
  *(v38 + 136) = 0xE500000000000000;
  *(v38 + 144) = &unk_1F4A04D70;
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v50;
  *(inited + 304) = v51;
  *(inited + 312) = @"ParameterSummary";
  v52 = @"ParameterSummary";
  v53 = sub_1CA94C438("Scan QR or barcode (Parameter Summary)", 38);
  v55 = v54;
  v56 = sub_1CA94C438("Scan QR or barcode", 18);
  v58 = v57;
  v86 = &v78;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v78 - v89;
  sub_1CA948D98();
  v60 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v78 - v84;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v53, v55, v56, v58, 0, 0, v59, v61);
  v64 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v65 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v66 = swift_allocObject();
  *(v66 + 16) = v82;
  v91 = 2;
  v92 = 1;
  v67 = type metadata accessor for WFDeviceIdiomResource();
  v68 = objc_allocWithZone(v67);
  v69 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v91);
  *(v66 + 32) = v70;
  *(v66 + 56) = v67;
  *(v66 + 64) = 0xD000000000000019;
  *(v66 + 72) = 0x80000001CA9932D0;
  v71 = MEMORY[0x1E69E6158];
  *(v66 + 120) = MEMORY[0x1E69E6158];
  *(v66 + 88) = v71;
  *(v66 + 96) = 0xD000000000000016;
  *(v66 + 104) = 0x80000001CA99A800;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = v66;
  *(inited + 384) = v72;
  *(inited + 392) = @"UserInterfaceClasses";
  v73 = @"UserInterfaceClasses";
  v74 = sub_1CA94C1E8();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 400) = v74;
  *(inited + 424) = v75;
  *(inited + 432) = @"UserInterfaces";
  *(inited + 464) = v87;
  *(inited + 440) = &unk_1F4A04E00;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v76 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA557F40()
{
  v29 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
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
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438("Get Details of iTunes Product (Action Name)", 43);
  v28 = v8;
  v9 = sub_1CA94C438("Get Details of iTunes Product", 29);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v7, v28, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v20;
  *(inited + 144) = v21;
  *(inited + 152) = @"Output";
  v22 = @"Output";
  v23 = MEMORY[0x1E69E6158];
  *(inited + 160) = sub_1CA94C1E8();
  *(inited + 184) = v5;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v24 = @"ResidentCompatible";
  v25 = sub_1CA94C368();
  *(inited + 264) = v23;
  *(inited + 232) = v25;
  *(inited + 240) = 0xD00000000000001ALL;
  *(inited + 248) = 0x80000001CA9945C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA5582F4()
{
  OUTLINED_FUNCTION_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1CA94ADC8();
  v0[4] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA5583B0()
{
  OUTLINED_FUNCTION_0();
  sub_1CA94A8B8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1CA558450;

  return sub_1CA2FD878();
}

uint64_t sub_1CA558450()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[5];
  v7 = v4[4];
  v8 = *v1;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  v2[9] = v10;
  v2[10] = v0;

  v11 = *(v6 + 8);
  v2[11] = v11;
  v2[12] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA5585C0(uint64_t a1)
{
  v19 = v1;
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 32);
  sub_1CA94A8B8();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == *MEMORY[0x1E69DB0B0] || v5 == *MEMORY[0x1E69DB0A0])
  {
LABEL_6:
    v7 = *(v1 + 72);
    (*(v1 + 88))(*(v1 + 48), *(v1 + 32));
    sub_1CA2FFC58();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_5();

    return v9();
  }

  if (v5 != *MEMORY[0x1E69DB098] && v5 != *MEMORY[0x1E69DB088])
  {
    if (v5 != *MEMORY[0x1E69DB0A8])
    {

      return sub_1CA94D7E8();
    }

    goto LABEL_6;
  }

  v12 = *(v1 + 72);
  (*(v1 + 88))(*(v1 + 48), *(v1 + 32));
  v13 = sub_1CA94A898();
  v18[3] = MEMORY[0x1E69E6158];
  v18[0] = v13;
  v18[1] = v14;
  v15 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v16 = sub_1CA320AB4(v18, v12);

  v17 = *(v1 + 8);

  return v17(v16);
}

uint64_t sub_1CA5587D4()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA558838()
{
  OUTLINED_FUNCTION_0();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_1CA94B5A8();
  v0[11] = v4;
  OUTLINED_FUNCTION_12(v4);
  v0[12] = v5;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v6 = sub_1CA94ADC8();
  v0[17] = v6;
  OUTLINED_FUNCTION_12(v6);
  v0[18] = v7;
  v0[19] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA558990()
{
  OUTLINED_FUNCTION_6();
  v1 = [*(v0 + 72) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  *(v0 + 160) = sub_1CA55DB30();
  v2 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 168) = [v2 valueType];
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_1CA558B14;

  return sub_1CA2FF3B4();
}

uint64_t sub_1CA558B14()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA558C38()
{
  v1 = v0[9];
  v0[6] = sub_1CA94C3A8();
  v0[7] = v2;
  v0[24] = v2;
  v3 = [v1 displayRepresentation];
  v0[25] = v3;
  if (v3)
  {
    v4 = swift_task_alloc();
    v0[26] = v4;
    *v4 = v0;
    v4[1] = sub_1CA559020;

    return sub_1CA3BC4F4();
  }

  else
  {
    v6 = v0[15];
    v7 = v0[10];
    v25 = sub_1CA94B458();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v25);
    result = type metadata accessor for LinkValueTransformContext(0);
    v8 = *(v7 + *(result + 32));
    if (v8)
    {
      v9 = 0;
      v10 = v0[12];
      v11 = *(v8 + 16);
      v12 = (v10 + 8);
      while (v11 != v9)
      {
        if (v9 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v10 + 16))(v0[14], v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9, v0[11]);
        v13 = sub_1CA94B598();
        v15 = v14;
        if (v13 == sub_1CA94C3A8() && v15 == v16)
        {

LABEL_17:
          v20 = v0[13];
          v21 = v0[11];
          (*(v0[12] + 32))(v20, v0[14], v21);
          sub_1CA94B578();
          (*v12)(v20, v21);
          v19 = v25;
          goto LABEL_18;
        }

        v18 = sub_1CA94D7F8();

        if (v18)
        {
          goto LABEL_17;
        }

        result = (*v12)(v0[14], v0[11]);
        ++v9;
      }
    }

    v19 = v25;
    __swift_storeEnumTagSinglePayload(v0[16], 1, 1, v25);
LABEL_18:
    v22 = v0[15];
    if (__swift_getEnumTagSinglePayload(v22, 1, v19) != 1)
    {
      sub_1CA30A3DC(v22);
    }

    v23 = v0[20];
    sub_1CA94A8A8();

    OUTLINED_FUNCTION_5();

    return v24();
  }
}

uint64_t sub_1CA558F84()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA559020()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *v4 = *v1;
  v3[27] = v0;

  v5 = v2[25];
  if (v0)
  {
    (*(v3[18] + 8))(v3[19], v3[17]);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA55916C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_1CA94B458();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  (*(*(v3 - 8) + 32))(v2, v1, v3);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = v0[20];
  sub_1CA94A8A8();

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA55928C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA559328()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA30A15C;

  return sub_1CA558838();
}

uint64_t sub_1CA5593D4()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA559470;

  return sub_1CA5582F4();
}

uint64_t sub_1CA559470()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

id sub_1CA5595A0()
{
  v148 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B0DB0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("calendar|delete", 15);
  v6 = v5;
  v7 = sub_1CA94C438("calendar|delete", 15);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v154 = v11;
  v156 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v138 - v156;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v153 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v152 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v155 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v138 - v155;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v151 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 152) = sub_1CA94C368();
  v22 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v22;
  *(inited + 192) = @"DeletesInput";
  *(inited + 200) = 1;
  *(inited + 224) = v22;
  *(inited + 232) = @"Description";
  v150 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionNote";
  v24 = @"DeletesInput";
  v25 = @"Description";
  v26 = @"DescriptionNote";
  v147 = sub_1CA94C438("This is a destructive and permanent action. You will be asked to confirm before events are removed.", 99);
  *&v146 = v27;
  v28 = sub_1CA94C438("This is a destructive and permanent action. You will be asked to confirm before events are removed.", 99);
  v145 = v29;
  v149 = &v138;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v138 - v156;
  sub_1CA948D98();
  v31 = v153;
  v32 = [v153 bundleURL];
  v144 = &v138;
  MEMORY[0x1EEE9AC00](v32);
  v33 = v155;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v147, v146, v28, v145, 0, 0, v30, &v138 - v33);
  v35 = v151;
  *(v23 + 64) = v151;
  *(v23 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v147 = sub_1CA94C438("Removes all events passed into the action from the calendars they are contained in.", 83);
  *&v146 = v37;
  v38 = sub_1CA94C438("Removes all events passed into the action from the calendars they are contained in.", 83);
  v145 = v39;
  v149 = &v138;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v138 - v156;
  sub_1CA948D98();
  v41 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v147, v146, v38, v145, 0, 0, v40, &v138 - v33);
  *(v23 + 104) = v35;
  *(v23 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v44 = sub_1CA94C1E8();
  v45 = v150;
  *(inited + 240) = sub_1CA6B3784(v44);
  *(inited + 264) = v45;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v46 = swift_initStackObject();
  v146 = xmmword_1CA981350;
  *(v46 + 16) = xmmword_1CA981350;
  *(v46 + 32) = 0x656C7069746C754DLL;
  *(v46 + 40) = 0xE800000000000000;
  *(v46 + 48) = 1;
  v47 = MEMORY[0x1E69E6370];
  *(v46 + 72) = MEMORY[0x1E69E6370];
  strcpy((v46 + 80), "ParameterKey");
  *(v46 + 93) = 0;
  *(v46 + 94) = -5120;
  strcpy((v46 + 96), "WFInputEvents");
  *(v46 + 110) = -4864;
  *(v46 + 120) = MEMORY[0x1E69E6158];
  *(v46 + 128) = 0x6465726975716552;
  *(v46 + 136) = 0xE800000000000000;
  *(v46 + 144) = 1;
  *(v46 + 168) = v47;
  *(v46 + 176) = 0x7365707954;
  v48 = v47;
  *(v46 + 184) = 0xE500000000000000;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v46 + 216) = v147;
  *(v46 + 192) = &unk_1F4A04EF0;
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v50;
  *(inited + 304) = v51;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 320) = 0;
  *(inited + 344) = v48;
  *(inited + 352) = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438("Remove Events (Action Name)", 27);
  v56 = v55;
  v57 = sub_1CA94C438("Remove Events", 13);
  v59 = v58;
  v150 = &v138;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v138 - v156;
  sub_1CA948D98();
  v61 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v138 - v155;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  *(inited + 384) = v151;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v150 = swift_allocObject();
  *(v150 + 1) = xmmword_1CA981360;
  v149 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1CA981370;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000011;
  *(v64 + 48) = 0x80000001CA99E620;
  *(v64 + 64) = MEMORY[0x1E69E6158];
  *(v64 + 72) = @"DefaultValue";
  *(v64 + 80) = 0;
  *(v64 + 104) = MEMORY[0x1E69E6370];
  *(v64 + 112) = @"Description";
  v144 = @"Class";
  v65 = @"Parameters";
  v66 = @"DefaultValue";
  v67 = @"Description";
  v68 = sub_1CA94C438("When enabled, any repeats of an event in the future are also removed. (WFCalendarIncludeFutureEvents)", 101);
  v141 = v69;
  v142 = v68;
  v70 = sub_1CA94C438("When enabled, any repeats of an event in the future are also removed.", 69);
  v140 = v71;
  v143 = &v138;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v138 - v156;
  sub_1CA948D98();
  v73 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v138 - v155;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v142, v141, v70, v140, 0, 0, v72, v74);
  v76 = v151;
  *(v64 + 144) = v151;
  *(v64 + 152) = @"Key";
  *(v64 + 160) = 0xD00000000000001DLL;
  *(v64 + 168) = 0x80000001CA9CCCB0;
  *(v64 + 184) = MEMORY[0x1E69E6158];
  *(v64 + 192) = @"Label";
  v77 = @"Key";
  v78 = @"Label";
  v141 = v77;
  v140 = v78;
  v142 = sub_1CA94C438("Include Future Events (WFCalendarIncludeFutureEvents)", 53);
  v139 = v79;
  v80 = sub_1CA94C438("Include Future Events", 21);
  v82 = v81;
  v143 = &v138;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v138 - v156;
  sub_1CA948D98();
  v84 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v138 - v155;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v142, v139, v80, v82, 0, 0, v83, v85);
  *(v64 + 224) = v76;
  *(v64 + 200) = v87;
  _s3__C3KeyVMa_0(0);
  v143 = v88;
  v142 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v89 = sub_1CA94C1E8();
  v90 = sub_1CA2F864C(v89);
  v150[4] = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = v146;
  *(v91 + 32) = v144;
  *(v91 + 40) = 0xD000000000000019;
  *(v91 + 48) = 0x80000001CA99B030;
  v92 = MEMORY[0x1E69E6158];
  v93 = v141;
  *(v91 + 64) = MEMORY[0x1E69E6158];
  *(v91 + 72) = v93;
  strcpy((v91 + 80), "WFInputEvents");
  *(v91 + 94) = -4864;
  v94 = v140;
  *(v91 + 104) = v92;
  *(v91 + 112) = v94;
  v95 = sub_1CA94C438("Events (WFInputEvents)", 22);
  v144 = v96;
  v145 = v95;
  v141 = sub_1CA94C438("Events", 6);
  v98 = v97;
  *&v146 = &v138;
  MEMORY[0x1EEE9AC00](v141);
  v99 = v156;
  sub_1CA948D98();
  v100 = v153;
  v101 = [v153 bundleURL];
  v140 = &v138;
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v138 - v155;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v91 + 120) = sub_1CA2F9F14(v145, v144, v141, v98, 0, 0, &v138 - v99, v102);
  v104 = v151;
  *(v91 + 144) = v151;
  *(v91 + 152) = @"Placeholder";
  v105 = @"Placeholder";
  v106 = sub_1CA94C438("Events (WFInputEvents)", 22);
  v144 = v107;
  v145 = v106;
  v141 = sub_1CA94C438("Events", 6);
  v109 = v108;
  *&v146 = &v138;
  MEMORY[0x1EEE9AC00](v141);
  v110 = &v138 - v99;
  sub_1CA948D98();
  v111 = [v100 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v138 - v155;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v145, v144, v141, v109, 0, 0, v110, v112);
  *(v91 + 184) = v104;
  *(v91 + 160) = v114;
  v115 = sub_1CA94C1E8();
  v116 = sub_1CA2F864C(v115);
  v117 = v150;
  v150[5] = v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v117;
  *(inited + 424) = v118;
  *(inited + 432) = @"ParameterSummary";
  v119 = @"ParameterSummary";
  v120 = sub_1CA94C438("Remove ${WFInputEvents} (Parameter Summary)", 43);
  v122 = v121;
  v123 = sub_1CA94C438("Remove ${WFInputEvents}", 23);
  v125 = v124;
  v151 = &v138;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v138 - v156;
  sub_1CA948D98();
  v127 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v138 - v155;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v120, v122, v123, v125, 0, 0, v126, v128);
  v131 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v132 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v131;
  *(inited + 464) = v132;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 480) = &unk_1F4A04F20;
  v133 = v147;
  *(inited + 504) = v147;
  *(inited + 512) = @"RequiredResources";
  *(inited + 544) = v133;
  *(inited + 520) = &unk_1F4A04F50;
  v134 = @"RemoteExecuteOnPlatforms";
  v135 = @"RequiredResources";
  *(inited + 552) = sub_1CA94C368();
  v136 = MEMORY[0x1E69E6158];
  *(inited + 584) = MEMORY[0x1E69E6158];
  *(inited + 560) = 0x746E657645;
  *(inited + 568) = 0xE500000000000000;
  *(inited + 592) = sub_1CA94C368();
  *(inited + 624) = v136;
  *(inited + 600) = 0xD00000000000001ALL;
  *(inited + 608) = 0x80000001CA9938C0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA55A7E0()
{
  v32[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
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
  v9 = sub_1CA94C438("Find Calendar Events (Action Name)", 34, v32[0]);
  v11 = v10;
  v12 = sub_1CA94C438("Find Calendar Events", 20);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v23;
  *(inited + 184) = v24;
  *(inited + 192) = @"RequiredResources";
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F4A04FD0;
  *(inited + 224) = v25;
  *(inited + 232) = @"SuggestedAsInitialAction";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 0;
  v26 = @"RequiredResources";
  v27 = @"SuggestedAsInitialAction";
  v28 = sub_1CA94C368();
  v29 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v28;
  *(inited + 280) = 0xD00000000000001ALL;
  *(inited + 288) = 0x80000001CA9938C0;
  v30 = sub_1CA94C368();
  *(inited + 344) = v29;
  *(inited + 312) = v30;
  *(inited + 320) = 0x7261646E656C6143;
  *(inited + 328) = 0xE800000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA55AC1C()
{
  v137 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9CCE10;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v140 = inited;
  v138 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v139 = sub_1CA94C438("Creates a new board in your Trello account.", 43);
  v141 = v9;
  v10 = sub_1CA94C438("Creates a new board in your Trello account.", 43);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v145 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = v14;
  v15 = &v124 - v145;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB9F690;
  v144 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v142 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v143 = v19;
  v20 = &v124 - v142;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v139, v141, v10, v12, 0, 0, v15, v20);
  v141 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v141;
  *(v6 + 40) = v22;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v23 = sub_1CA94C1E8();
  v24 = v138;
  v25 = sub_1CA6B3784(v23);
  v26 = v140;
  v140[15] = v25;
  v26[18] = v24;
  v26[19] = @"Name";
  v27 = @"Name";
  v28 = sub_1CA94C438("Create Trello Board (Action Name)", 33);
  v30 = v29;
  v31 = sub_1CA94C438("Create Trello Board", 19);
  v33 = v32;
  v139 = &v124;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v124 - v145;
  sub_1CA948D98();
  v35 = [v16 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v124 - v142;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26[20] = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  v26[23] = v141;
  v26[24] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA9813C0;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 0;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x614E74757074754FLL;
  *(v38 + 88) = 0xEA0000000000656DLL;
  v40 = @"Output";
  v41 = sub_1CA94C438("Trello Board (Default Output Name)", 34);
  v138 = v42;
  v43 = sub_1CA94C438("Trello Board", 12);
  v45 = v44;
  v139 = &v124;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v124 - v145;
  sub_1CA948D98();
  v47 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v124 - v142;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v38 + 96) = sub_1CA2F9F14(v41, v138, v43, v45, 0, 0, v46, v48);
  *(v38 + 120) = v141;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 136) = 0xE500000000000000;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 168) = v136;
  *(v38 + 144) = &unk_1F4A05090;
  v50 = MEMORY[0x1E69E6158];
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[25] = v51;
  v26[28] = v52;
  v26[29] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v139 = swift_allocObject();
  *(v139 + 1) = xmmword_1CA981360;
  v138 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v53 = swift_initStackObject();
  v134 = xmmword_1CA981370;
  *(v53 + 16) = xmmword_1CA981370;
  v133 = 0x80000001CA99B500;
  *(v53 + 32) = @"Class";
  *(v53 + 40) = 0xD000000000000014;
  *(v53 + 48) = 0x80000001CA99B500;
  *(v53 + 64) = v50;
  *(v53 + 72) = @"Key";
  strcpy((v53 + 80), "WFTrelloName");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  *(v53 + 104) = v50;
  *(v53 + 112) = @"Label";
  v54 = @"Class";
  v55 = @"Key";
  v56 = @"Label";
  v131 = v54;
  v130 = v55;
  v132 = v56;
  v57 = @"Parameters";
  v58 = sub_1CA94C438("Name (WFTrelloName)", 19);
  v127 = v59;
  v128 = v58;
  v60 = sub_1CA94C438("Name", 4);
  v62 = v61;
  v129 = &v124;
  MEMORY[0x1EEE9AC00](v60);
  v63 = v145;
  sub_1CA948D98();
  v64 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v142;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 120) = sub_1CA2F9F14(v128, v127, v60, v62, 0, 0, &v124 - v63, &v124 - v65);
  v67 = v141;
  *(v53 + 144) = v141;
  *(v53 + 152) = @"Placeholder";
  v129 = @"Placeholder";
  v68 = sub_1CA94C438("Shortcuts (WFTrelloName)", 24);
  v126 = v69;
  v127 = v68;
  v70 = sub_1CA94C438("Shortcuts", 9);
  v125 = v71;
  v128 = &v124;
  MEMORY[0x1EEE9AC00](v70);
  sub_1CA948D98();
  v72 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 160) = sub_1CA2F9F14(v127, v126, v70, v125, 0, 0, &v124 - v63, &v124 - v65);
  *(v53 + 184) = v67;
  *(v53 + 192) = @"TextAlignment";
  v74 = MEMORY[0x1E69E6158];
  *(v53 + 224) = MEMORY[0x1E69E6158];
  *(v53 + 200) = 0x7468676952;
  *(v53 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v128 = v75;
  v127 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v76 = @"TextAlignment";
  v77 = sub_1CA94C1E8();
  v78 = sub_1CA2F864C(v77);
  v139[4] = v78;
  v79 = swift_allocObject();
  *(v79 + 16) = v134;
  *(v79 + 32) = v131;
  *(v79 + 40) = 0xD000000000000014;
  *(v79 + 48) = v133;
  v80 = v130;
  *(v79 + 64) = v74;
  *(v79 + 72) = v80;
  *(v79 + 80) = 0xD000000000000013;
  *(v79 + 88) = 0x80000001CA9CCF00;
  v81 = v132;
  *(v79 + 104) = v74;
  *(v79 + 112) = v81;
  v82 = sub_1CA94C438("Description (WFTrelloDescription)", 33);
  v133 = v83;
  *&v134 = v82;
  v132 = sub_1CA94C438("Description", 11);
  v85 = v84;
  v135 = &v124;
  MEMORY[0x1EEE9AC00](v132);
  v86 = &v124 - v145;
  sub_1CA948D98();
  v87 = v144;
  v88 = [v144 bundleURL];
  v131 = &v124;
  MEMORY[0x1EEE9AC00](v88);
  v89 = v142;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 120) = sub_1CA2F9F14(v134, v133, v132, v85, 0, 0, v86, &v124 - v89);
  *(v79 + 144) = v141;
  *(v79 + 152) = @"Multiline";
  *(v79 + 160) = 1;
  v91 = v129;
  *(v79 + 184) = MEMORY[0x1E69E6370];
  *(v79 + 192) = v91;
  v92 = @"Multiline";
  v93 = sub_1CA94C438("Description (WFTrelloDescription)", 33);
  v133 = v94;
  *&v134 = v93;
  v95 = sub_1CA94C438("Description", 11);
  v97 = v96;
  v135 = &v124;
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v124 - v145;
  sub_1CA948D98();
  v99 = [v87 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v134, v133, v95, v97, 0, 0, v98, &v124 - v89);
  *(v79 + 224) = v141;
  *(v79 + 200) = v101;
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  v104 = v139;
  v139[5] = v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v106 = v140;
  v140[30] = v104;
  v106[33] = v105;
  v106[34] = @"ParameterSummary";
  v107 = @"ParameterSummary";
  v108 = sub_1CA94C438("Create the board ${WFTrelloName} (Parameter Summary)", 52);
  v110 = v109;
  v111 = sub_1CA94C438("Create the board ${WFTrelloName}", 32);
  v113 = v112;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v124 - v145;
  sub_1CA948D98();
  v115 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v124 - v142;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v108, v110, v111, v113, 0, 0, v114, v116);
  v119 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v120 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v121 = v140;
  v140[35] = v119;
  v121[38] = v120;
  v121[39] = @"RequiredResources";
  v121[43] = v136;
  v121[40] = &unk_1F4A050C0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v122 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA55BD6C(uint64_t a1)
{
  sub_1CA25B374(a1, v6);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447110, &qword_1CA98E7A0);
  if (swift_dynamicCast())
  {
    return v6[5];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4463F8, &qword_1CA98B468);
  sub_1CA55DADC(&qword_1EC446400, &qword_1EC4463F8, &qword_1CA98B468);
  swift_allocError();
  v5 = v4;
  sub_1CA25B374(a1, v4);
  *(v5 + 32) = v2;
  return swift_willThrow();
}

uint64_t sub_1CA55BE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CA25B374(a1, v12);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446408, &qword_1CA98B470);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    return (*(*(v7 - 8) + 32))(a2, v6, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    sub_1CA55DA74(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446410, &qword_1CA98B478);
    v9 = sub_1CA55DADC(&qword_1EC446418, &qword_1EC446410, &qword_1CA98B478);
    OUTLINED_FUNCTION_1_39(v9);
    v11 = v10;
    sub_1CA25B374(a1, v10);
    *(v11 + 32) = v7;
    return swift_willThrow();
  }
}

uint64_t sub_1CA55C37C(uint64_t a1)
{
  sub_1CA25B374(a1, v9);
  v2 = MEMORY[0x1E69E6158];
  if (OUTLINED_FUNCTION_21_18(&v8, v3))
  {
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4464A0, &qword_1CA98B4B8);
  v5 = sub_1CA55DADC(&qword_1EC4464A8, &qword_1EC4464A0, &qword_1CA98B4B8);
  OUTLINED_FUNCTION_1_39(v5);
  v7 = v6;
  sub_1CA25B374(a1, v6);
  *(v7 + 32) = v2;
  return swift_willThrow();
}

uint64_t sub_1CA55C5B0(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  sub_1CA25B374(a1, v14);
  a2(0);
  if (OUTLINED_FUNCTION_21_18(&v13, v9))
  {
    return v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1CA55DADC(a5, a3, a4);
  v11 = swift_allocError();
  OUTLINED_FUNCTION_2_46(v11, v12);
  return OUTLINED_FUNCTION_11_27();
}

uint64_t sub_1CA55C74C()
{
  OUTLINED_FUNCTION_0();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_1CA94AC88();
  v0[5] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[6] = v4;
  v0[7] = swift_task_alloc();
  v5 = sub_1CA94ADC8();
  v0[8] = v5;
  OUTLINED_FUNCTION_12(v5);
  v0[9] = v6;
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA55C850()
{
  OUTLINED_FUNCTION_0();
  sub_1CA94A868();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1CA55C8F0;

  return sub_1CA2FD878();
}

uint64_t sub_1CA55C8F0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = *v1;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  *(v11 + 96) = v10;
  *(v11 + 104) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA55CA4C()
{
  OUTLINED_FUNCTION_14();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  result = sub_1CA94A878();
  v0[14] = result;
  v3 = *(result + 16);
  v0[16] = 0;
  v0[17] = v1;
  v0[15] = v3;
  if (v3)
  {
    if (*(result + 16))
    {
      (*(v0[6] + 16))(v0[7], result + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)), v0[5]);
      v4 = swift_task_alloc();
      v0[18] = v4;
      *v4 = v0;
      OUTLINED_FUNCTION_5_34(v4);

      return TypedValueTransformer.transform(input:with:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = v0[12];

    v6 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    sub_1CA55D9F0(MEMORY[0x1E69E7CC0], v5);

    v7 = OUTLINED_FUNCTION_1_3();

    return v8(v7);
  }

  return result;
}

uint64_t sub_1CA55CBA0()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA55CC08()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA55CD20()
{
  MEMORY[0x1CCAA1490](*(v0 + 152));
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  v1 = *(v0 + 152);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_1CA94C6E8();

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 16);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128) + 1;
  *(v0 + 128) = v7;
  *(v0 + 136) = v5;
  result = *(v0 + 112);
  if (v7 == v6)
  {
    v9 = *(v0 + 96);

    v10 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    sub_1CA55D9F0(v5, v9);

    v11 = OUTLINED_FUNCTION_1_3();

    return v12(v11);
  }

  else if (v7 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(*(v0 + 48) + 16))(*(v0 + 56), result + ((*(*(v0 + 48) + 80) + 32) & ~*(*(v0 + 48) + 80)) + *(*(v0 + 48) + 72) * v7, *(v0 + 40));
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_5_34(v13);

    return TypedValueTransformer.transform(input:with:)();
  }

  return result;
}

uint64_t sub_1CA55CEF4()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA55CF8C()
{
  OUTLINED_FUNCTION_0();
  v0[7] = v1;
  v0[8] = v2;
  v0[6] = v3;
  v4 = sub_1CA94AD08();
  v0[9] = v4;
  OUTLINED_FUNCTION_12(v4);
  v0[10] = v5;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v6 = sub_1CA94AC88();
  v0[13] = v6;
  OUTLINED_FUNCTION_12(v6);
  v0[14] = v7;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA55D0AC()
{
  v1 = [*(v0 + 56) valueType];
  *(v0 + 136) = v1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 144) = v2;
  if (!v2)
  {

    sub_1CA2FFC58();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_5();
    goto LABEL_4;
  }

  [*(v0 + 56) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v3 = sub_1CA55BD6C(v0 + 16);
  *(v0 + 152) = v3;
  v7 = v3;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  result = sub_1CA25B410(v7);
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + 160) = result;
  *(v0 + 168) = v9;
  v10 = *(v0 + 152);
  if (!result)
  {
    v14 = *(v0 + 144);

    v15 = [v14 memberValueType];
    type metadata accessor for LinkValueTransformContext(0);
    sub_1CA94B0F8();
    sub_1CA94CB68();
    v16 = *(v0 + 136);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);

    (*(v19 + 16))(v18, v17, v20);
    sub_1CA94A848();

    (*(v19 + 8))(v17, v20);

    OUTLINED_FUNCTION_5();
LABEL_4:
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1CCAA22D0](0);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(v10 + 32);
  }

  *(v0 + 176) = v11;
  *(v0 + 184) = 1;
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_4_42(v12);
  OUTLINED_FUNCTION_24();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA55D3D8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

id sub_1CA55D4E8()
{
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 128), *(v0 + 104));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CA2E4D50();
    v2 = v23;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_1CA2E4D50();
    v2 = v24;
  }

  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);

  (*(v7 + 8))(v4, v6);
  *(v2 + 16) = v3 + 1;
  result = (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, v5, v6);
  v9 = *(v0 + 200);
  v10 = *(v0 + 184);
  *(v0 + 168) = v2;
  v11 = *(v0 + 152);
  if (v10 == *(v0 + 160))
  {
    v12 = *(v0 + 144);

    v13 = [v12 memberValueType];
    type metadata accessor for LinkValueTransformContext(0);
    sub_1CA94B0F8();
    sub_1CA94CB68();
    v14 = *(v0 + 136);
    if (v9)
    {
    }

    else
    {
      v18 = *(v0 + 88);
      v17 = *(v0 + 96);
      v20 = *(v0 + 72);
      v19 = *(v0 + 80);

      (*(v19 + 16))(v18, v17, v20);
      sub_1CA94A848();

      (*(v19 + 8))(v17, v20);
    }

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1CCAA22D0](v10);
  }

  else
  {
    if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      __break(1u);
      return result;
    }

    result = *(v11 + 8 * v10 + 32);
  }

  *(v0 + 176) = result;
  *(v0 + 184) = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = swift_task_alloc();
  *(v0 + 192) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_4_42(v15);
  OUTLINED_FUNCTION_24();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA55D818()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA55D8A8()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2DF78C;

  return sub_1CA55CF8C();
}

uint64_t sub_1CA55D954()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA2FFB5C;

  return sub_1CA55C74C();
}

id sub_1CA55D9F0(uint64_t a1, void *a2)
{
  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v4 = sub_1CA94C648();

  v5 = [v2 initWithValues:v4 memberValueType:a2];

  return v5;
}

uint64_t sub_1CA55DA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446408, &qword_1CA98B470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA55DADC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContainerDefinition.Origin.init(from:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_1CA94B178();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69DB310];
  if (v3 == 1)
  {
    v6 = MEMORY[0x1E69DB300];
  }

  if (v3 == 3)
  {
    v6 = MEMORY[0x1E69DB308];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

BOOL sub_1CA55DBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA949F78();
  MEMORY[0x1EEE9AC00](v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1CA94C218();
  v6 = sub_1CA275C94(a1, a2, 0);
  v7 = [v6 applicationState];
  v8 = [v7 isInstalled];

  return (v8 & 1) != 0;
}

uint64_t WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_1CA94B6B8();
  v7[9] = v8;
  OUTLINED_FUNCTION_12(v8);
  v7[10] = v9;
  v7[11] = OUTLINED_FUNCTION_13_5();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v10 = sub_1CA94B058();
  v7[14] = v10;
  OUTLINED_FUNCTION_12(v10);
  v7[15] = v11;
  v7[16] = OUTLINED_FUNCTION_13_5();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v12 = sub_1CA94B178();
  v7[19] = v12;
  OUTLINED_FUNCTION_12(v12);
  v7[20] = v13;
  v7[21] = OUTLINED_FUNCTION_13_5();
  v7[22] = swift_task_alloc();
  v14 = sub_1CA94A378();
  v7[23] = v14;
  OUTLINED_FUNCTION_12(v14);
  v7[24] = v15;
  v7[25] = swift_task_alloc();
  v16 = sub_1CA949F78();
  v7[26] = v16;
  OUTLINED_FUNCTION_12(v16);
  v7[27] = v17;
  v7[28] = OUTLINED_FUNCTION_13_5();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA55E168, 0, 0);
}

uint64_t sub_1CA55E168()
{
  v199 = v0;
  v3 = v0;
  v4 = [*(v0 + 64) identifier];
  v5 = sub_1CA94C3A8();
  v7 = v6;

  if (qword_1EC442D90 != -1)
  {
    OUTLINED_FUNCTION_5_35(&qword_1EC442D90);
  }

  v8 = sub_1CA27AF18(v5, v7, qword_1EC446530);

  if (v8)
  {
    v9 = *(v0 + 64);
    sub_1CA949C58();
    v10 = v9;
    v11 = sub_1CA949F68();
    sub_1CA94CBF8();

    v12 = OUTLINED_FUNCTION_65();
    v13 = *(v3 + 280);
    v14 = *(v3 + 208);
    v15 = *(v3 + 216);
    if (v12)
    {
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      v16 = OUTLINED_FUNCTION_9_27(4.8149e-34);
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v17, v18, v19, v20, v21, v22, v23, v24, v180, v181, log, v184, v186, v188, v190, v192, v194);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v16;
      v27 = "Discarding action %s from Spotlight index due to presence in deny list.";
LABEL_34:
      OUTLINED_FUNCTION_20_20(&dword_1CA256000, v25, v26, v27);
      __swift_destroy_boxed_opaque_existential_0(v2);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v15 + 8))(v195, v14);
LABEL_68:
      v197 = 0;
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v29 = *(v0 + 16);
  v28 = *(v0 + 24);
  v30 = sub_1CA94C3A8();
  v32 = *(v0 + 40);
  if (v30 != v29 || v31 != v28)
  {
    v34 = sub_1CA94D7F8();

    if ((v34 & 1) == 0 || !v32)
    {
      goto LABEL_16;
    }

LABEL_14:
    v35 = *(v3 + 40);
    if ((sub_1CA94C528() & 1) == 0)
    {
      v36 = *(v3 + 32);
      sub_1CA25B3D0(0, &qword_1EC441980, 0x1E69635F8);
      if (!sub_1CA55DBDC(v36, v35))
      {
        v59 = *(v3 + 64);
        sub_1CA949C58();
        v60 = v59;
        v11 = sub_1CA949F68();
        sub_1CA94CBF8();

        v61 = OUTLINED_FUNCTION_65();
        v13 = *(v3 + 272);
        v14 = *(v3 + 208);
        v15 = *(v3 + 216);
        if (v61)
        {
          OUTLINED_FUNCTION_8_24();
          OUTLINED_FUNCTION_3_41();
          OUTLINED_FUNCTION_10_24();
          v62 = OUTLINED_FUNCTION_9_27(4.8149e-34);
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_6_36(v63, v64, v65, v66, v67, v68, v69, v70, v180, v181, log, v184, v186, v188, v190, v192, v194);
          OUTLINED_FUNCTION_7_31();
          *(v1 + 4) = v62;
          v27 = "Discarding action %s from Spotlight index because the corresponding attributed app is not installed.";
          goto LABEL_34;
        }

LABEL_67:

        (*(v15 + 8))(v13, v14);
        goto LABEL_68;
      }
    }

    goto LABEL_16;
  }

  if (v32)
  {
    goto LABEL_14;
  }

LABEL_16:
  v38 = *(v3 + 192);
  v37 = *(v3 + 200);
  v39 = *(v3 + 184);
  (*(v38 + 104))(v37, *MEMORY[0x1E69DAA40], v39);
  OUTLINED_FUNCTION_134();
  v40 = sub_1CA2BFB90();
  (*(v38 + 8))(v37, v39);
  if (v40)
  {
    v41 = *(v3 + 16);
    v42 = *(v3 + 24);
    sub_1CA25B3D0(0, &qword_1EC445D20, 0x1E6963620);
    sub_1CA94C218();
    v43 = sub_1CA55F98C(v41, v42, 1);
    v44 = *(v3 + 176);
    v45 = *(v3 + 152);
    v46 = *(v3 + 160);
    v1 = *(v3 + 64);
    v47 = [v43 developerType];
    v49 = *(v46 + 104);
    v2 = v46 + 104;
    v48 = v49;
    v50 = *MEMORY[0x1E69DB300];
    v51 = *MEMORY[0x1E69DB310];
    if (v47 == 1)
    {
      v51 = *MEMORY[0x1E69DB300];
    }

    if (v47 == 3)
    {
      v52 = *MEMORY[0x1E69DB308];
    }

    else
    {
      v52 = v51;
    }

    v48(v44, v52, v45);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v54 = *(v3 + 160);
      v53 = *(v3 + 168);
      v1 = *(v3 + 152);
      v2 = *(v3 + 64);
      v48(v53, v50, v1);
      sub_1CA55FAE8(&qword_1EC446538, MEMORY[0x1E69DB318], MEMORY[0x1E69DB320]);
      v55 = v2;
      v56 = sub_1CA94C358();
      v57 = *(v54 + 8);
      v57(v53, v1);
      v58 = *(v3 + 64);
      if ((v56 & 1) == 0)
      {
        sub_1CA949C58();
        v127 = v58;
        v128 = sub_1CA949F68();
        v129 = sub_1CA94CBF8();

        v193 = v129;
        v130 = os_log_type_enabled(v128, v129);
        v196 = *(v3 + 264);
        v132 = *(v3 + 208);
        v131 = *(v3 + 216);
        v133 = *(v3 + 176);
        v134 = *(v3 + 152);
        v135 = *(v3 + 64);
        if (v130)
        {
          loga = v128;
          v136 = swift_slowAlloc();
          v191 = v133;
          v137 = swift_slowAlloc();
          v198 = v137;
          *v136 = 136315138;
          v187 = v135;
          v189 = v134;
          v138 = [v135 identifier];
          v139 = sub_1CA94C3A8();
          v185 = v132;
          v141 = v140;

          v142 = sub_1CA26B54C(v139, v141, &v198);

          *(v136 + 4) = v142;
          _os_log_impl(&dword_1CA256000, loga, v193, "Discarding action %s from Spotlight index because it is a custom SiriKit intent from a non-system app.", v136, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v137);
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_26();

          (*(v131 + 8))(v196, v185);
          v144 = v189;
          v143 = v191;
        }

        else
        {

          (*(v131 + 8))(v196, v132);
          v143 = OUTLINED_FUNCTION_69_0();
        }

        v57(v143, v144);
        goto LABEL_68;
      }

      v57(*(v3 + 176), *(v3 + 152));
    }

    else
    {

      v71 = OUTLINED_FUNCTION_52_0();
      v72(v71);
    }
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v73 = *(v3 + 64);
    sub_1CA949C58();
    v74 = v73;
    v11 = sub_1CA949F68();
    sub_1CA94CBF8();

    v75 = OUTLINED_FUNCTION_65();
    v13 = *(v3 + 256);
    v14 = *(v3 + 208);
    v15 = *(v3 + 216);
    if (v75)
    {
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      v76 = OUTLINED_FUNCTION_9_27(4.8149e-34);
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v77, v78, v79, v80, v81, v82, v83, v84, v180, v181, log, v184, v186, v188, v190, v192, v194);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v76;
      v27 = "Discarding action %s from Spotlight index because it is an interchange action.";
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v85 = *(v3 + 64);
    sub_1CA949C58();
    v86 = v85;
    v11 = sub_1CA949F68();
    sub_1CA94CBF8();

    v87 = OUTLINED_FUNCTION_65();
    v13 = *(v3 + 248);
    v14 = *(v3 + 208);
    v15 = *(v3 + 216);
    if (v87)
    {
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      v88 = OUTLINED_FUNCTION_9_27(4.8149e-34);
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v89, v90, v91, v92, v93, v94, v95, v96, v180, v181, log, v184, v186, v188, v190, v192, v194);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v88;
      v27 = "Discarding action %s from Spotlight index because it is an Find/Filter action.";
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  v97 = *(*(v3 + 56) + 16);
  *(v3 + 288) = v97;
  if (!v97)
  {
    v100 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v145 = *(v100 + 16);
    if (v145)
    {
      v1 = 0;
      v2 = *(v3 + 80);
      while (v145 != v1)
      {
        if (v1 >= *(v100 + 16))
        {
          __break(1u);
          return MEMORY[0x1EEE4B148]();
        }

        v146 = *(v3 + 88);
        v147 = *(v3 + 72);
        OUTLINED_FUNCTION_4_43();
        (*(v2 + 16))(v146, v148 + *(v2 + 72) * v1++, v147);
        v149 = sub_1CA94B678();
        v150 = OUTLINED_FUNCTION_52_0();
        v151(v150);
        if (v149)
        {
          goto LABEL_59;
        }
      }

      v165 = *(v3 + 64);

      sub_1CA949C58();
      v166 = v165;
      v11 = sub_1CA949F68();
      sub_1CA94CBF8();

      v167 = OUTLINED_FUNCTION_65();
      v13 = *(v3 + 232);
      v14 = *(v3 + 208);
      v15 = *(v3 + 216);
      if (!v167)
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      *v1 = 136315138;
      v168 = [v2 + 16 identifier];
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v169, v170, v171, v172, v173, v174, v175, v176, v180, v181, log, v184, v186, v188, v190, v192, v194);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v168;
      v27 = "Discarding action %s from Spotlight index because it does not satisfy any platform annotations";
      goto LABEL_34;
    }

LABEL_59:
    v152 = *(v3 + 64);

    if ([v152 defaultParameterSummaryContainsRequiredParameters])
    {
      v197 = 1;
LABEL_69:
      OUTLINED_FUNCTION_19_19();

      v177 = *(v3 + 8);

      return v177(v197);
    }

    v153 = *(v3 + 64);
    sub_1CA949C58();
    v154 = v153;
    v11 = sub_1CA949F68();
    sub_1CA94CBF8();

    v155 = OUTLINED_FUNCTION_65();
    v15 = *(v3 + 216);
    v13 = *(v3 + 224);
    v14 = *(v3 + 208);
    if (v155)
    {
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      v156 = OUTLINED_FUNCTION_9_27(4.8149e-34);
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v157, v158, v159, v160, v161, v162, v163, v164, v180, v181, log, v184, v186, v188, v190, v192, v194);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v156;
      v27 = "Discarding action %s from Spotlight index because its parameter summary does not contain all required parameters";
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  v98 = 0;
  v99 = *(v3 + 120);
  *(v3 + 360) = *(v99 + 80);
  *(v3 + 364) = *MEMORY[0x1E69DB220];
  *(v3 + 368) = *MEMORY[0x1E69DB218];
  *(v3 + 372) = *MEMORY[0x1E69DB208];
  *(v3 + 296) = *(v99 + 72);
  *(v3 + 304) = *(v99 + 16);
  v100 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v3 + 312) = v98;
    *(v3 + 320) = v100;
    v101 = *(v3 + 304);
    v1 = *(v3 + 364);
    v102 = *(v3 + 144);
    v103 = *(v3 + 120);
    OUTLINED_FUNCTION_17_15();
    *(v3 + 328) = (v103 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v101(v102);
    v104 = OUTLINED_FUNCTION_134();
    v101(v104);
    v2 = v103 + 88;
    v105 = OUTLINED_FUNCTION_69_0();
    v107 = v106(v105);
    if (v107 == v1)
    {
      v108 = *(v3 + 80);
      (*(*(v3 + 120) + 96))(*(v3 + 136), *(v3 + 112));
      v109 = *(v108 + 32);
      v110 = OUTLINED_FUNCTION_134();
      v109(v110);
      v111 = OUTLINED_FUNCTION_34_12();
      v112(v111);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_16_24();
        v100 = v125;
      }

      v113 = *(v100 + 16);
      v192 = v109;
      v194 = v100;
      if (v113 >= *(v100 + 24) >> 1)
      {
        v114 = v113 + 1;
        sub_1CA2E5C14();
        v194 = v126;
      }

      else
      {
        v114 = v113 + 1;
      }

      v1 = *(v3 + 96);
      v2 = *(v3 + 72);
      v115 = *(v3 + 80);
      (*(v115 + 8))(*(v3 + 104), v2);
      v116 = OUTLINED_FUNCTION_69_0();
      v117(v116);
      *(v194 + 16) = v114;
      v100 = v194;
      OUTLINED_FUNCTION_4_43();
      v192(v118 + *(v115 + 72) * v113, v1, v2);
      goto LABEL_48;
    }

    v119 = *(v3 + 372);
    v120 = *(v3 + 368);
    v121 = *(v3 + 120);
    v122 = *(v121 + 8);
    *(v3 + 336) = v122;
    *(v3 + 344) = (v121 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v107 == v120 || v107 == v119)
    {
      break;
    }

    (v122)(*(v3 + 144), *(v3 + 112));
    v124 = OUTLINED_FUNCTION_52_0();
    v122(v124);
LABEL_48:
    v98 = *(v3 + 312) + 1;
    if (v98 == *(v3 + 288))
    {
      goto LABEL_54;
    }
  }

  (v122)(*(v3 + 136), *(v3 + 112));
  v179 = swift_task_alloc();
  *(v3 + 352) = v179;
  *v179 = v3;
  OUTLINED_FUNCTION_2_47(v179);

  return MEMORY[0x1EEE4B148]();
}

uint64_t sub_1CA55EFE8(char a1)
{
  *(*v1 + 376) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1CA55F0E8, 0, 0);
}

uint64_t sub_1CA55F0E8()
{
  v104 = v0;
  if (*(v0 + 376))
  {
    (*(v0 + 336))(*(v0 + 144), *(v0 + 112));
    v1 = *(v0 + 320);
    while (1)
    {
      v2 = *(v0 + 312) + 1;
      if (v2 == *(v0 + 288))
      {
        break;
      }

      *(v0 + 312) = v2;
      *(v0 + 320) = v1;
      v3 = *(v0 + 304);
      v4 = *(v0 + 364);
      v5 = *(v0 + 144);
      v6 = *(v0 + 120);
      OUTLINED_FUNCTION_17_15();
      *(v0 + 328) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v3(v5);
      v7 = OUTLINED_FUNCTION_134();
      v3(v7);
      v8 = OUTLINED_FUNCTION_69_0();
      v10 = v9(v8);
      if (v10 == v4)
      {
        (*(*(v0 + 120) + 96))(*(v0 + 136), *(v0 + 112));
        v17 = OUTLINED_FUNCTION_134();
        v99 = v18;
        (v18)(v17);
        v19 = OUTLINED_FUNCTION_34_12();
        v20(v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_16_24();
          v1 = v28;
        }

        v21 = *(v1 + 16);
        if (v21 >= *(v1 + 24) >> 1)
        {
          sub_1CA2E5C14();
          v1 = v29;
        }

        v22 = *(v0 + 96);
        v24 = *(v0 + 72);
        v23 = *(v0 + 80);
        (*(v23 + 8))(*(v0 + 104), v24);
        v25 = OUTLINED_FUNCTION_69_0();
        v26(v25);
        *(v1 + 16) = v21 + 1;
        OUTLINED_FUNCTION_4_43();
        v99(v27 + *(v23 + 72) * v21, v22, v24);
      }

      else
      {
        v11 = *(v0 + 372);
        v12 = *(v0 + 368);
        v13 = *(v0 + 120);
        v14 = *(v13 + 8);
        *(v0 + 336) = v14;
        *(v0 + 344) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v10 == v12 || v10 == v11)
        {
          (v14)(*(v0 + 136), *(v0 + 112));
          v67 = swift_task_alloc();
          *(v0 + 352) = v67;
          *v67 = v0;
          OUTLINED_FUNCTION_2_47(v67);

          return MEMORY[0x1EEE4B148]();
        }

        (v14)(*(v0 + 144), *(v0 + 112));
        v16 = OUTLINED_FUNCTION_52_0();
        v14(v16);
      }
    }

    v57 = *(v1 + 16);
    if (v57)
    {
      v58 = 0;
      v59 = *(v0 + 80);
      while (v57 != v58)
      {
        if (v58 >= *(v1 + 16))
        {
          __break(1u);
          return MEMORY[0x1EEE4B148]();
        }

        v60 = *(v0 + 88);
        v61 = *(v0 + 72);
        OUTLINED_FUNCTION_4_43();
        (*(v59 + 16))(v60, v62 + *(v59 + 72) * v58++, v61);
        v63 = sub_1CA94B678();
        v64 = OUTLINED_FUNCTION_52_0();
        v65(v64);
        if (v63)
        {
          goto LABEL_22;
        }
      }

      v85 = *(v0 + 64);

      sub_1CA949C58();
      v86 = v85;
      v70 = sub_1CA949F68();
      sub_1CA94CBF8();

      v87 = OUTLINED_FUNCTION_65();
      v73 = *(v0 + 232);
      v74 = *(v0 + 208);
      v72 = *(v0 + 216);
      if (!v87)
      {
        goto LABEL_33;
      }

      v88 = *(v0 + 64);
      swift_slowAlloc();
      v102 = v73;
      v76 = OUTLINED_FUNCTION_3_41();
      v103 = v76;
      *v73 = 136315138;
      v89 = [v88 identifier];
      v90 = sub_1CA94C3A8();
      v92 = v91;

      v93 = sub_1CA26B54C(v90, v92, &v103);

      *(v73 + 4) = v93;
      v84 = "Discarding action %s from Spotlight index because it does not satisfy any platform annotations";
      goto LABEL_32;
    }

LABEL_22:
    v66 = *(v0 + 64);

    if ([v66 defaultParameterSummaryContainsRequiredParameters])
    {
      v101 = 1;
      goto LABEL_35;
    }

    v68 = *(v0 + 64);
    sub_1CA949C58();
    v69 = v68;
    v70 = sub_1CA949F68();
    sub_1CA94CBF8();

    v71 = OUTLINED_FUNCTION_65();
    v72 = *(v0 + 216);
    v73 = *(v0 + 224);
    v74 = *(v0 + 208);
    if (v71)
    {
      v75 = *(v0 + 64);
      swift_slowAlloc();
      v102 = v73;
      v76 = OUTLINED_FUNCTION_3_41();
      v103 = v76;
      *v73 = 136315138;
      v77 = [v75 identifier];
      v78 = sub_1CA94C3A8();
      v80 = v79;

      v81 = sub_1CA26B54C(v78, v80, &v103);

      *(v73 + 4) = v81;
      v84 = "Discarding action %s from Spotlight index because its parameter summary does not contain all required parameters";
LABEL_32:
      OUTLINED_FUNCTION_20_20(&dword_1CA256000, v82, v83, v84);
      __swift_destroy_boxed_opaque_existential_0(v76);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v72 + 8))(v102, v74);
      goto LABEL_34;
    }

LABEL_33:

    (*(v72 + 8))(v73, v74);
  }

  else
  {
    v30 = *(v0 + 304);
    v31 = *(v0 + 144);
    v32 = *(v0 + 128);
    v33 = *(v0 + 112);
    v34 = *(v0 + 64);

    sub_1CA949C58();
    v30(v32, v31, v33);
    v35 = v34;
    v36 = sub_1CA949F68();
    v37 = sub_1CA94CBF8();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 336);
    v40 = *(v0 + 240);
    v41 = *(v0 + 216);
    v100 = *(v0 + 208);
    v42 = *(v0 + 144);
    v43 = *(v0 + 128);
    v44 = *(v0 + 112);
    if (v38)
    {
      v45 = *(v0 + 64);
      v98 = *(v0 + 240);
      v46 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v46 = 136315394;
      v47 = [v45 identifier];
      v96 = v37;
      v48 = v39;
      v49 = sub_1CA94C3A8();
      v97 = v42;
      v51 = v50;

      v52 = sub_1CA26B54C(v49, v51, &v103);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      sub_1CA55FAE8(&qword_1EC441CF8, MEMORY[0x1E69DB228], MEMORY[0x1E69DB230]);
      v53 = sub_1CA94D798();
      v55 = v54;
      v48(v43, v44);
      v56 = sub_1CA26B54C(v53, v55, &v103);

      *(v46 + 14) = v56;
      _os_log_impl(&dword_1CA256000, v36, v96, "Discarding action %s from Spotlight index because a runtime requirement is not satisfied: %s", v46, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v41 + 8))(v98, v100);
      v48(v97, v44);
    }

    else
    {

      v39(v43, v44);
      (*(v41 + 8))(v40, v100);
      v39(v42, v44);
    }
  }

LABEL_34:
  v101 = 0;
LABEL_35:
  OUTLINED_FUNCTION_19_19();

  v94 = *(v0 + 8);

  return v94(v101);
}

id sub_1CA55F98C(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1CA94C368();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1CA55FA74()
{
  result = sub_1CA2E2E2C(&unk_1F4A05100);
  qword_1EC446530 = result;
  return result;
}

uint64_t static SpotlightDenyList.actionIdentifiers.getter()
{
  if (qword_1EC442D90 != -1)
  {
    OUTLINED_FUNCTION_5_35(&qword_1EC442D90);
  }

  return sub_1CA94C218();
}

uint64_t sub_1CA55FAE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for SpotlightDenyList(_BYTE *result, int a2, int a3)
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

id sub_1CA55FC10()
{
  v66 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x666F646E61484657;
  *(inited + 48) = 0xEF6E6F6974634166;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v68 = sub_1CA94C438("apple|watch|send|phone|transfer|switch|handoff|continuity|workflow", 66);
  v5 = v4;
  v6 = sub_1CA94C438("apple|watch|send|phone|transfer|switch|handoff|continuity|workflow", 66);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v10;
  v11 = &v62 - v71;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v70 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = v14;
  v69 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v62 - v69;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v68, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v68 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"Description";
  v65 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Switches into the Shortcuts app and continues to the next action.", 65);
  v63 = v23;
  v24 = sub_1CA94C438("Switches into the Shortcuts app and continues to the next action.", 65);
  v26 = v25;
  v64 = &v62;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v62 - v71;
  sub_1CA948D98();
  v28 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v62 - v69;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v22, v63, v24, v26, 0, 0, v27, v29);
  *(v19 + 64) = v68;
  *(v19 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v65;
  *(inited + 120) = sub_1CA6B3784(v32);
  *(inited + 144) = v33;
  *(inited + 152) = @"Discontinued";
  v34 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v34;
  *(inited + 192) = @"IconName";
  *(inited + 200) = 0xD000000000000013;
  *(inited + 208) = 0x80000001CA9CCFF0;
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v34;
  *(inited + 272) = @"Name";
  v35 = @"Discontinued";
  v36 = @"IconName";
  v37 = @"InputPassthrough";
  v38 = @"Name";
  v39 = sub_1CA94C438("Continue in Shortcuts App (Action Name)", 39);
  v64 = v40;
  v41 = sub_1CA94C438("Continue in Shortcuts App", 25);
  v43 = v42;
  v65 = &v62;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v62 - v71;
  sub_1CA948D98();
  v45 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  v46 = v69;
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v39, v64, v41, v43, 0, 0, v44, &v62 - v46);
  *(inited + 304) = v68;
  *(inited + 312) = @"ParameterSummary";
  v48 = @"ParameterSummary";
  v49 = sub_1CA94C438("Continue in Shortcuts app (Parameter Summary)", 45);
  v65 = v50;
  v51 = sub_1CA94C438("Continue in Shortcuts app", 25);
  v53 = v52;
  v68 = &v62;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v62 - v71;
  sub_1CA948D98();
  v55 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v49, v65, v51, v53, 0, 0, v54, &v62 - v46);
  v58 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v59 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v58;
  *(inited + 344) = v59;
  *(inited + 352) = @"RequiredResources";
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 360) = &unk_1F4A066D0;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v60 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56040C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1CA94C648();

  v3 = [v1 initWithArray_];

  return v3;
}

id sub_1CA560484(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11WorkflowKit16WFRemoteAppValue_value] = a1;
  v4 = OBJC_IVAR____TtC11WorkflowKit16WFRemoteAppValue_sourceContainer;
  v5 = sub_1CA94B1C8();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v2[v4], a2, v5);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for WFRemoteAppValue(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a2, v5);
  return v7;
}

uint64_t type metadata accessor for WFRemoteAppValue(uint64_t a1)
{
  result = qword_1EC446548;
  if (!qword_1EC446548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA56068C(uint64_t a1)
{
  result = sub_1CA94B1C8();
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

id sub_1CA56072C()
{
  sub_1CA25B3D0(0, &unk_1EC444900, 0x1E695DFB8);
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F8, &unk_1CA987A00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA981310;
  *(v1 + 32) = type metadata accessor for WFRemoteAppValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v2 = sub_1CA94C648();

  v3 = [v0 typesWithClasses_];

  sub_1CA25B3D0(0, &qword_1EC444818, 0x1E6996ED0);
  v4 = sub_1CA94C658();

  sub_1CA3612C4(v4);
  v6 = v5;

  return sub_1CA56040C(v6);
}

id sub_1CA560880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppValueContentItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CA5608D8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFRemoteAppValueContentItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1CA560980(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1CA560A10()
{
  v136 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9CD180;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("server|connect|internet|smb", 27);
  v6 = v5;
  v7 = sub_1CA94C438("server|connect|internet|smb", 27);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v142 = v11;
  v143 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v127 - v143;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v141 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v140 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v139 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v127 - v139;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v138 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v135 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v133 = sub_1CA94C438("Mounted volume", 14);
  *&v132 = v26;
  v27 = sub_1CA94C438("Mounted volume", 14);
  v131 = v28;
  *&v134 = v127;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v127 - v143;
  sub_1CA948D98();
  v30 = v141;
  v31 = [v141 bundleURL];
  v137 = inited;
  MEMORY[0x1EEE9AC00](v31);
  v32 = v139;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v133, v132, v27, v131, 0, 0, v29, v127 - v32);
  *(v23 + 64) = v138;
  *(v23 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v133 = sub_1CA94C438("Connects your computer to the specified file servers on the network. For example, you can connect to SMB/CIFS, NFS, FTP (read-only), or WebDAV servers.", 151);
  *&v132 = v35;
  v36 = sub_1CA94C438("Connects your computer to the specified file servers on the network. For example, you can connect to SMB/CIFS, NFS, FTP (read-only), or WebDAV servers.", 151);
  v38 = v37;
  *&v134 = v127;
  MEMORY[0x1EEE9AC00](v36);
  v39 = v127 - v143;
  sub_1CA948D98();
  v40 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v133, v132, v36, v38, 0, 0, v39, v127 - v32);
  *(v23 + 104) = v138;
  *(v23 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v135;
  v45 = sub_1CA6B3784(v43);
  v46 = v137;
  v137[20] = v45;
  v46[23] = v44;
  v46[24] = @"Input";
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  v132 = xmmword_1CA981350;
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 48) = 1;
  *(v47 + 72) = v48;
  strcpy((v47 + 80), "ParameterKey");
  *(v47 + 93) = 0;
  *(v47 + 94) = -5120;
  *(v47 + 96) = 0x7475706E494657;
  *(v47 + 104) = 0xE700000000000000;
  *(v47 + 120) = MEMORY[0x1E69E6158];
  *(v47 + 128) = 0x6465726975716552;
  *(v47 + 136) = 0xE800000000000000;
  *(v47 + 144) = 1;
  *(v47 + 168) = v48;
  *(v47 + 176) = 0x7365707954;
  *(v47 + 184) = 0xE500000000000000;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 216) = v135;
  *(v47 + 192) = &unk_1F4A06740;
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *&v134 = v51;
  v46[25] = v50;
  v46[28] = v51;
  v46[29] = @"Name";
  v52 = @"Name";
  v130 = sub_1CA94C438("Connect to Servers (Action Name)", 32);
  v54 = v53;
  v55 = sub_1CA94C438("Connect to Servers", 18);
  v57 = v56;
  v131 = v127;
  MEMORY[0x1EEE9AC00](v55);
  v58 = v143;
  sub_1CA948D98();
  v59 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = v127 - v139;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v62 = sub_1CA2F9F14(v130, v54, v55, v57, 0, 0, v127 - v58, v60);
  v63 = v137;
  v64 = v138;
  v137[30] = v62;
  v63[33] = v64;
  v63[34] = @"Output";
  v65 = swift_initStackObject();
  *(v65 + 16) = v132;
  *(v65 + 32) = 0x75736F6C63736944;
  *(v65 + 40) = 0xEF6C6576654C6572;
  *(v65 + 48) = 0x63696C627550;
  *(v65 + 56) = 0xE600000000000000;
  *(v65 + 72) = MEMORY[0x1E69E6158];
  *(v65 + 80) = 0x656C7069746C754DLL;
  *(v65 + 88) = 0xE800000000000000;
  *(v65 + 96) = 1;
  *(v65 + 120) = MEMORY[0x1E69E6370];
  *(v65 + 128) = 0x614E74757074754FLL;
  *(v65 + 136) = 0xEA0000000000656DLL;
  v66 = @"Output";
  v67 = sub_1CA94C438("Connected Server (Default Output Name)", 38);
  v131 = v68;
  *&v132 = v67;
  v69 = sub_1CA94C438("Connected Server", 16);
  v130 = v70;
  v133 = v127;
  MEMORY[0x1EEE9AC00](v69);
  sub_1CA948D98();
  v71 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = v127 - v139;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 144) = sub_1CA2F9F14(v132, v131, v69, v130, 0, 0, v127 - v58, v72);
  *(v65 + 168) = v64;
  *(v65 + 176) = 0x7365707954;
  *(v65 + 216) = v135;
  *(v65 + 184) = 0xE500000000000000;
  *(v65 + 192) = &unk_1F4A06770;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = v137;
  v137[35] = v75;
  v76[38] = v134;
  v76[39] = @"Parameters";
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v133 = swift_allocObject();
  v134 = xmmword_1CA9813B0;
  *(v133 + 1) = xmmword_1CA9813B0;
  *&v132 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1CA981420;
  *(v77 + 32) = @"AllowsMultipleValues";
  *(v77 + 40) = 1;
  v78 = MEMORY[0x1E69E6370];
  *(v77 + 64) = MEMORY[0x1E69E6370];
  *(v77 + 72) = @"AutocapitalizationType";
  *(v77 + 80) = 1701736270;
  *(v77 + 88) = 0xE400000000000000;
  *(v77 + 104) = v74;
  *(v77 + 112) = @"Class";
  *(v77 + 120) = 0xD000000000000014;
  *(v77 + 128) = 0x80000001CA99B500;
  *(v77 + 144) = v74;
  *(v77 + 152) = @"DisableAutocorrection";
  *(v77 + 160) = 1;
  *(v77 + 184) = v78;
  *(v77 + 192) = @"Key";
  *(v77 + 200) = 0x7475706E494657;
  *(v77 + 208) = 0xE700000000000000;
  *(v77 + 224) = v74;
  *(v77 + 232) = @"KeyboardType";
  *(v77 + 240) = 5001813;
  *(v77 + 248) = 0xE300000000000000;
  *(v77 + 264) = v74;
  *(v77 + 272) = @"Label";
  v79 = @"Parameters";
  v80 = @"AllowsMultipleValues";
  v81 = @"AutocapitalizationType";
  v82 = @"Class";
  v83 = @"DisableAutocorrection";
  v84 = @"Key";
  v85 = @"KeyboardType";
  v86 = @"Label";
  v87 = sub_1CA94C438("smb://computer.local (WFInput)", 30);
  v129 = v88;
  v130 = v87;
  v89 = sub_1CA94C438("smb://computer.local", 20);
  v128 = v90;
  v131 = v127;
  MEMORY[0x1EEE9AC00](v89);
  v91 = v127 - v143;
  sub_1CA948D98();
  v92 = v141;
  v93 = [v141 bundleURL];
  v127[1] = v127;
  MEMORY[0x1EEE9AC00](v93);
  v94 = v139;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 280) = sub_1CA2F9F14(v130, v129, v89, v128, 0, 0, v91, v127 - v94);
  v96 = v138;
  *(v77 + 304) = v138;
  *(v77 + 312) = @"Placeholder";
  v97 = @"Placeholder";
  v98 = sub_1CA94C438("smb://computer.local (WFInput)", 30);
  v129 = v99;
  v130 = v98;
  v100 = sub_1CA94C438("smb://computer.local", 20);
  v128 = v101;
  v131 = v127;
  MEMORY[0x1EEE9AC00](v100);
  v102 = v127 - v143;
  sub_1CA948D98();
  v103 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 320) = sub_1CA2F9F14(v130, v129, v100, v128, 0, 0, v102, v127 - v94);
  *(v77 + 344) = v96;
  *(v77 + 352) = @"Prompt";
  v105 = @"Prompt";
  v106 = sub_1CA94C438("What server do you want to connect to? (WFInput)", 48);
  v108 = v107;
  v109 = sub_1CA94C438("What server do you want to connect to?", 38);
  v111 = v110;
  v131 = v127;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v127 - v143;
  sub_1CA948D98();
  v113 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v127 - v139;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 360) = sub_1CA2F9F14(v106, v108, v109, v111, 0, 0, v112, v114);
  *(v77 + 384) = v138;
  *(v77 + 392) = @"TextContentType";
  *(v77 + 424) = MEMORY[0x1E69E6158];
  *(v77 + 400) = 5001813;
  *(v77 + 408) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v116 = @"TextContentType";
  v117 = sub_1CA94C1E8();
  v118 = sub_1CA2F864C(v117);
  v119 = v133;
  v133[4] = v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v121 = v137;
  v137[40] = v119;
  v121[43] = v120;
  v121[44] = @"RequiredResources";
  v122 = swift_allocObject();
  *(v122 + 16) = v134;
  v144 = 2;
  v145 = 0;
  v123 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v124 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v144);
  *(v122 + 32) = v125;
  v121[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v121[45] = v122;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFEncodedTypedValue.resolve(to:withVariableSource:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for ContentGraphRepresentationContext(0);
  v3[6] = swift_task_alloc();
  v4 = sub_1CA94AC88();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA561BBC, 0, 0);
}

uint64_t sub_1CA561BBC()
{
  v1 = v0[4];
  sub_1CA9489C8();
  swift_allocObject();
  sub_1CA9489B8();
  v2 = [v1 data];
  v3 = sub_1CA948C08();
  v5 = v4;

  sub_1CA381204();
  sub_1CA9489A8();
  sub_1CA266F2C(v3, v5);

  v6 = v0[6];
  v7 = *(v0[5] + 24);
  v8 = sub_1CA94B258();
  __swift_storeEnumTagSinglePayload(v6 + v7, 1, 1, v8);
  if (qword_1EC442008 != -1)
  {
    swift_once();
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = qword_1EC442010;
  v9[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
  v9[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
  *v9 = v11;
  v9[5] = 0;
  v9[6] = v10;

  swift_unknownObjectRetain();
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1CA561DF0;

  return TypedValue.resolve(to:in:)();
}

uint64_t sub_1CA561DF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v4 + 88) = v1;

  if (v1)
  {
    v7 = sub_1CA561FB0;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1CA561F10;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA561F10()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1CA56204C(v0[6]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[12];

  return v4(v5);
}

uint64_t sub_1CA561FB0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1CA56204C(v0[6]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CA56204C(uint64_t a1)
{
  v2 = type metadata accessor for ContentGraphRepresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1CA5620A8(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  swift_unknownObjectRetain();
  v10 = a1;

  return sub_1CA67052C(&unk_1CA98B590, v9);
}

uint64_t sub_1CA562140(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1CA562218;

  return WFEncodedTypedValue.resolve(to:withVariableSource:)(ObjCClassMetadata, a2);
}

uint64_t sub_1CA562218(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  swift_unknownObjectRelease();

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_1CA948AC8();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    v9[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1CA5623D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA2DBC14;

  return sub_1CA562140(v2, v3, v5, v4);
}

id sub_1CA5624C4()
{
  v200 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9CD440;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"IconName";
  *(inited + 120) = 0x6567616D49;
  *(inited + 128) = 0xE500000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"Input";
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v3 = swift_initStackObject();
  v205 = xmmword_1CA981350;
  *(v3 + 16) = xmmword_1CA981350;
  *(v3 + 32) = 0x656C7069746C754DLL;
  *(v3 + 40) = 0xE800000000000000;
  *(v3 + 48) = 1;
  *(v3 + 72) = v2;
  strcpy((v3 + 80), "ParameterKey");
  *(v3 + 93) = 0;
  *(v3 + 94) = -5120;
  *(v3 + 96) = 0x6567616D494657;
  *(v3 + 104) = 0xE700000000000000;
  *(v3 + 120) = v1;
  *(v3 + 128) = 0x6465726975716552;
  *(v3 + 136) = 0xE800000000000000;
  *(v3 + 144) = 1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0x7365707954;
  *(v3 + 184) = 0xE500000000000000;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v3 + 216) = v211;
  *(v3 + 192) = &unk_1F4A067A0;
  v4 = @"ActionClass";
  v5 = @"Discoverable";
  v6 = @"IconName";
  v7 = @"Input";
  v8 = sub_1CA94C1E8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 160) = v8;
  v210 = v9;
  *(inited + 184) = v9;
  *(inited + 192) = @"InputPassthrough";
  *(inited + 200) = 0;
  *(inited + 224) = v2;
  *(inited + 232) = @"Name";
  v206 = inited;
  v10 = @"InputPassthrough";
  v11 = @"Name";
  v12 = sub_1CA94C438("Convert Image (Action Name)", 27);
  v14 = v13;
  v15 = sub_1CA94C438("Convert Image", 13);
  v17 = v16;
  v18 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v216 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v217 = v19;
  v20 = v190 - v216;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v213 = qword_1EDB9F690;
  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v214 = v23;
  v215 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v190 - v215;
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v20, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v212 = v27;
  v28 = v206;
  v206[30] = v26;
  v28[33] = v27;
  v28[34] = @"Output";
  v29 = swift_initStackObject();
  *(v29 + 16) = v205;
  *(v29 + 32) = 0x75736F6C63736944;
  *(v29 + 40) = 0xEF6C6576654C6572;
  *(v29 + 48) = 0x63696C627550;
  *(v29 + 56) = 0xE600000000000000;
  *(v29 + 72) = MEMORY[0x1E69E6158];
  *(v29 + 80) = 0x656C7069746C754DLL;
  *(v29 + 88) = 0xE800000000000000;
  *(v29 + 96) = 1;
  *(v29 + 120) = MEMORY[0x1E69E6370];
  *(v29 + 128) = 0x614E74757074754FLL;
  *(v29 + 136) = 0xEA0000000000656DLL;
  v30 = @"Output";
  v31 = sub_1CA94C438("Converted Image (Default Output Name)", 37);
  v208 = v32;
  v33 = sub_1CA94C438("Converted Image", 15);
  v35 = v34;
  v209 = v190;
  MEMORY[0x1EEE9AC00](v33);
  v36 = v190 - v216;
  sub_1CA948D98();
  v37 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v37);
  v38 = v190 - v215;
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v29 + 144) = sub_1CA2F9F14(v31, v208, v33, v35, 0, 0, v36, v38);
  *(v29 + 168) = v212;
  *(v29 + 176) = 0x7365707954;
  *(v29 + 216) = v211;
  *(v29 + 184) = 0xE500000000000000;
  *(v29 + 192) = &unk_1F4A067D0;
  v40 = MEMORY[0x1E69E6158];
  v28[35] = sub_1CA94C1E8();
  v28[38] = v210;
  v28[39] = @"Parameters";
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v211 = swift_allocObject();
  v199 = xmmword_1CA981570;
  *(v211 + 16) = xmmword_1CA981570;
  v210 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA9813C0;
  *(v41 + 32) = @"Class";
  *(v41 + 40) = 0xD000000000000011;
  *(v41 + 48) = 0x80000001CA99E620;
  *(v41 + 64) = v40;
  *(v41 + 72) = @"Key";
  *(v41 + 80) = 0xD000000000000012;
  *(v41 + 88) = 0x80000001CA9CD460;
  *(v41 + 104) = v40;
  *(v41 + 112) = @"Label";
  v42 = @"Class";
  v43 = @"Key";
  v44 = @"Label";
  v45 = v42;
  v46 = v43;
  v47 = v44;
  v204 = v45;
  v198 = v46;
  v201 = v47;
  v48 = @"Parameters";
  v49 = sub_1CA94C438("Preserve Metadata (WFPreserveMetadata)", 38);
  v51 = v50;
  v52 = sub_1CA94C438("Preserve Metadata", 17);
  v54 = v53;
  v209 = v190;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v190 - v216;
  sub_1CA948D98();
  v56 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v190 - v215;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  *(v41 + 144) = v212;
  *(v41 + 120) = v59;
  _s3__C3KeyVMa_0(0);
  v209 = v60;
  v208 = sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v61 = sub_1CA94C1E8();
  v62 = sub_1CA2F864C(v61);
  *(v211 + 32) = v62;
  v63 = swift_allocObject();
  *(v63 + 16) = v205;
  v64 = v204;
  *(v63 + 32) = v204;
  *(v63 + 40) = 0xD000000000000019;
  *(v63 + 48) = 0x80000001CA99B030;
  v65 = MEMORY[0x1E69E6158];
  v66 = v198;
  *(v63 + 64) = MEMORY[0x1E69E6158];
  *(v63 + 72) = v66;
  *(v63 + 80) = 0x6567616D494657;
  *(v63 + 88) = 0xE700000000000000;
  v67 = v201;
  *(v63 + 104) = v65;
  *(v63 + 112) = v67;
  v202 = v64;
  v204 = v66;
  *&v205 = v67;
  v198 = sub_1CA94C438("Image (WFImage)", 15);
  *&v197 = v68;
  v69 = sub_1CA94C438("Image", 5);
  v196 = v70;
  v201 = v190;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v216;
  sub_1CA948D98();
  v72 = v213;
  v73 = [v213 bundleURL];
  v195 = v190;
  MEMORY[0x1EEE9AC00](v73);
  v74 = v215;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 120) = sub_1CA2F9F14(v198, v197, v69, v196, 0, 0, v190 - v71, v190 - v74);
  v76 = v212;
  *(v63 + 144) = v212;
  *(v63 + 152) = @"Placeholder";
  v77 = @"Placeholder";
  v198 = sub_1CA94C438("Image (WFImage)", 15);
  *&v197 = v78;
  v79 = sub_1CA94C438("Image", 5);
  v196 = v80;
  v201 = v190;
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948D98();
  v81 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v198, v197, v79, v196, 0, 0, v190 - v71, v190 - v74);
  *(v63 + 184) = v76;
  *(v63 + 160) = v83;
  v84 = sub_1CA94C1E8();
  v85 = sub_1CA2F864C(v84);
  *(v211 + 40) = v85;
  v86 = swift_allocObject();
  v197 = xmmword_1CA981370;
  *(v86 + 16) = xmmword_1CA981370;
  v196 = 0x80000001CA99C4A0;
  *(v86 + 32) = v202;
  *(v86 + 40) = 0xD000000000000016;
  *(v86 + 48) = 0x80000001CA99C4A0;
  v87 = MEMORY[0x1E69E6158];
  *(v86 + 64) = MEMORY[0x1E69E6158];
  *(v86 + 72) = @"DefaultValue";
  *(v86 + 80) = 1195724874;
  *(v86 + 88) = 0xE400000000000000;
  *(v86 + 104) = v87;
  *(v86 + 112) = @"Items";
  v201 = swift_allocObject();
  *&v201->data = xmmword_1CA981470;
  v88 = @"DefaultValue";
  v89 = @"Items";
  v194 = v88;
  v195 = v89;
  v90 = sub_1CA94C438("JPEG (WFFileFormat)", 19);
  v192 = v91;
  v193 = v90;
  v92 = sub_1CA94C438("JPEG", 4);
  v191 = v93;
  v198 = v190;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v190 - v216;
  sub_1CA948D98();
  v95 = v213;
  v96 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v190 - v215;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v193, v192, v92, v191, 0, 0, v94, v97);
  v100 = v201;
  v201[1].isa = v99;
  v101 = sub_1CA94C438("PNG (WFFileFormat)", 18);
  v192 = v102;
  v193 = v101;
  v103 = sub_1CA94C438("PNG", 3);
  v191 = v104;
  v198 = v190;
  MEMORY[0x1EEE9AC00](v103);
  v105 = v216;
  sub_1CA948D98();
  v106 = [v95 bundleURL];
  v190[1] = v190;
  MEMORY[0x1EEE9AC00](v106);
  v107 = v215;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 40) = sub_1CA2F9F14(v193, v192, v103, v191, 0, 0, v190 - v105, v190 - v107);
  v109 = sub_1CA94C438("HEIF (WFFileFormat)", 19);
  v192 = v110;
  v193 = v109;
  v111 = sub_1CA94C438("HEIF", 4);
  v191 = v112;
  v198 = v190;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v113 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v193, v192, v111, v191, 0, 0, v190 - v105, v190 - v107);
  v116 = v201;
  v201[1].data = v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v198 = v117;
  *(v86 + 120) = v116;
  v118 = v204;
  *(v86 + 144) = v117;
  *(v86 + 152) = v118;
  strcpy((v86 + 160), "WFFileFormat");
  *(v86 + 173) = 0;
  *(v86 + 174) = -5120;
  v119 = v205;
  *(v86 + 184) = MEMORY[0x1E69E6158];
  *(v86 + 192) = v119;
  v120 = sub_1CA94C438("File Format (WFFileFormat)", 26);
  v193 = v121;
  v122 = sub_1CA94C438("File Format", 11);
  v124 = v123;
  v201 = v190;
  MEMORY[0x1EEE9AC00](v122);
  v125 = v190 - v216;
  sub_1CA948D98();
  v126 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v190 - v215;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v120, v193, v122, v124, 0, 0, v125, v127);
  *(v86 + 224) = v212;
  *(v86 + 200) = v129;
  v130 = sub_1CA94C1E8();
  v131 = sub_1CA2F864C(v130);
  *(v211 + 48) = v131;
  v132 = swift_allocObject();
  *(v132 + 16) = v197;
  *(v132 + 32) = v202;
  *(v132 + 40) = 0xD000000000000016;
  *(v132 + 48) = v196;
  v133 = MEMORY[0x1E69E6158];
  v134 = v194;
  *(v132 + 64) = MEMORY[0x1E69E6158];
  *(v132 + 72) = v134;
  *(v132 + 80) = 0x6C6C616D53;
  *(v132 + 88) = 0xE500000000000000;
  v135 = v195;
  *(v132 + 104) = v133;
  *(v132 + 112) = v135;
  v207 = swift_allocObject();
  *(v207 + 1) = v199;
  v136 = sub_1CA94C438("Small (WFSize)", 14);
  v201 = v137;
  v202 = v136;
  v138 = sub_1CA94C438("Small", 5);
  *&v199 = v139;
  v203 = v190;
  MEMORY[0x1EEE9AC00](v138);
  v140 = v216;
  sub_1CA948D98();
  v141 = v213;
  v142 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = v190 - v215;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v202, v201, v138, v199, 0, 0, v190 - v140, v143);
  v207[4] = v145;
  v146 = sub_1CA94C438("Medium (WFSize)", 15);
  v201 = v147;
  v202 = v146;
  v148 = sub_1CA94C438("Medium", 6);
  *&v199 = v149;
  v203 = v190;
  MEMORY[0x1EEE9AC00](v148);
  sub_1CA948D98();
  v150 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v215;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v202, v201, v148, v199, 0, 0, v190 - v140, v190 - v151);
  v154 = v207;
  v207[5] = v153;
  v155 = sub_1CA94C438("Large (WFSize)", 14);
  v201 = v156;
  v202 = v155;
  v157 = sub_1CA94C438("Large", 5);
  *&v199 = v158;
  v203 = v190;
  MEMORY[0x1EEE9AC00](v157);
  v159 = v216;
  sub_1CA948D98();
  v160 = v213;
  v161 = [v213 bundleURL];
  *&v197 = v190;
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154[6] = sub_1CA2F9F14(v202, v201, v157, v199, 0, 0, v190 - v159, v190 - v151);
  v163 = sub_1CA94C438("Original (WFSize)", 17);
  v201 = v164;
  v202 = v163;
  v165 = sub_1CA94C438("Original", 8);
  v167 = v166;
  v203 = v190;
  MEMORY[0x1EEE9AC00](v165);
  sub_1CA948D98();
  v168 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v170 = sub_1CA2F9F14(v202, v201, v165, v167, 0, 0, v190 - v159, v190 - v151);
  v171 = v207;
  v207[7] = v170;
  *(v132 + 120) = v171;
  v172 = v204;
  *(v132 + 144) = v198;
  *(v132 + 152) = v172;
  *(v132 + 160) = 0x657A69534657;
  *(v132 + 168) = 0xE600000000000000;
  v173 = v205;
  *(v132 + 184) = MEMORY[0x1E69E6158];
  *(v132 + 192) = v173;
  v174 = sub_1CA94C438("Image Size (WFSize)", 19);
  *&v205 = v175;
  v176 = sub_1CA94C438("Image Size", 10);
  v178 = v177;
  v207 = v190;
  MEMORY[0x1EEE9AC00](v176);
  v179 = v190 - v216;
  sub_1CA948D98();
  v180 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = v190 - v215;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v183 = sub_1CA2F9F14(v174, v205, v176, v178, 0, 0, v179, v181);
  *(v132 + 224) = v212;
  *(v132 + 200) = v183;
  v184 = sub_1CA94C1E8();
  v185 = sub_1CA2F864C(v184);
  v186 = v211;
  *(v211 + 56) = v185;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v188 = v206;
  v206[43] = v187;
  v188[40] = v186;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA563C5C(uint64_t a1)
{
  v2 = sub_1CA94C368();
  v3 = [v1 parameterStateForKey_];

  if (v3)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1CA563CD8(uint64_t a1)
{
  v2 = sub_1CA94C368();
  v3 = [v1 parameterStateForKey_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446030, &unk_1CA989F80);
    OUTLINED_FUNCTION_93();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_1CA563D58(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6277D4();
    v3 = v5;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1CA567B0C(v8, v7);
  *a1 = v3;
}

id WFAppSettingUpdaterAction.init(identifier:actionMetadata:entityMetadataForParameterIdentifier:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  *(v9 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction____lazy_storage___sortedLocalizedNames) = 0;
  *(v9 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction____lazy_storage____localizedNameForEntityIdentifier) = 0;
  *(v9 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction____lazy_storage___sortedParameterIdentifiers) = 0;
  *(v9 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction_entityByEntityIdentifier) = a4;
  return WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(a1, a2, a3, a5, a6, a7, a8, a9);
}

uint64_t sub_1CA563F90()
{
  OUTLINED_FUNCTION_18_22();
  v1 = sub_1CA94C368();
  v2 = [v0 parameterStateForKey_];

  if (!v2)
  {
    return 0;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = [v3 value]) != 0 && (v5 = v4, OUTLINED_FUNCTION_25_14(), sub_1CA94C398(), v5, v8))
  {
    v6 = sub_1CA323E2C();
  }

  else
  {
    v6 = 0;
  }

  swift_unknownObjectRelease();
  return v6;
}

void sub_1CA56409C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction_entityByEntityIdentifier);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v24 = v1;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = *(*(v24 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
        v11 = [v10 identifier];
        v25 = sub_1CA94C3A8();
        v13 = v12;

        v14 = [v10 displayRepresentation];
        v15 = [v14 name];

        v16 = [v15 wf_localizedString];
        v17 = sub_1CA94C3A8();
        v19 = v18;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E4FA0();
          v8 = v22;
        }

        v20 = *(v8 + 16);
        if (v20 >= *(v8 + 24) >> 1)
        {
          sub_1CA2E4FA0();
          v8 = v23;
        }

        v5 &= v5 - 1;
        *(v8 + 16) = v20 + 1;
        v21 = (v8 + 32 * v20);
        v21[4] = v25;
        v21[5] = v13;
        v21[6] = v17;
        v21[7] = v19;
      }

      while (v5);
    }
  }

  sub_1CA5F077C(v8);
}

id sub_1CA5643A4()
{
  v1 = [v0 fullyQualifiedLinkActionIdentifier];
  v2 = [v1 bundleIdentifier];

  sub_1CA94C3A8();
  v4 = v3;

  v5 = objc_allocWithZone(MEMORY[0x1E696E720]);
  v6 = OUTLINED_FUNCTION_87();
  return sub_1CA5679E4(v6, v4);
}

id sub_1CA564470()
{
  sub_1CA697814(v89);
  if (v91)
  {
    if (v90 - 2 < 3)
    {
      sub_1CA94C438("${operator} ${entity}", 21);
      OUTLINED_FUNCTION_3_42();
      if (v1)
      {
        OUTLINED_FUNCTION_12_24();

        v10 = OUTLINED_FUNCTION_6_37(v2, v3, v4, v5, v6, v7, v8, v9, v74, v79);
        OUTLINED_FUNCTION_2_48(v10, v11, v12, v13, v14, v15, MEMORY[0x1E69E6158], v16, v75, v80, v84);
        v85 = v17;
        OUTLINED_FUNCTION_7_32();
        v18 = v85;
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }

LABEL_18:
      OUTLINED_FUNCTION_116();
      sub_1CA94C378();
      OUTLINED_FUNCTION_1_2();

      sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
      v19 = sub_1CA43AE20();
      sub_1CA30F7DC(v89, &qword_1EC445FA0, &unk_1CA98B5A0);
      return v19;
    }

    if (v90)
    {
      sub_1CA94C438("${operator} ${entity} ${value}", 30);
      OUTLINED_FUNCTION_3_42();
      if (!v37)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_24();

      v46 = OUTLINED_FUNCTION_6_37(v38, v39, v40, v41, v42, v43, v44, v45, v74, v79);
      OUTLINED_FUNCTION_2_48(v46, v47, v48, v49, v50, v51, MEMORY[0x1E69E6158], v52, v77, v82, v84);
      v87 = v53;
      OUTLINED_FUNCTION_7_32();
      v18 = v87;
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_17;
      }
    }

    else if (sub_1CA627C60() == 1)
    {
      sub_1CA94C438("Set ${entity} to ${value}", 25);
      OUTLINED_FUNCTION_3_42();
      if (!v20)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_24();

      v29 = OUTLINED_FUNCTION_6_37(v21, v22, v23, v24, v25, v26, v27, v28, v74, v79);
      OUTLINED_FUNCTION_2_48(v29, v30, v31, v32, v33, v34, MEMORY[0x1E69E6158], v35, v76, v81, v84);
      v86 = v36;
      OUTLINED_FUNCTION_7_32();
      v18 = v86;
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1CA94C438("${operator} ${entity} to ${value}", 33);
      OUTLINED_FUNCTION_3_42();
      if (!v54)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_24();

      v63 = OUTLINED_FUNCTION_6_37(v55, v56, v57, v58, v59, v60, v61, v62, v74, v79);
      OUTLINED_FUNCTION_2_48(v63, v64, v65, v66, v67, v68, MEMORY[0x1E69E6158], v69, v78, v83, v84);
      v88 = v70;
      OUTLINED_FUNCTION_7_32();
      v18 = v88;
      if (qword_1EDB9F5F0 == -1)
      {
LABEL_17:
        sub_1CA94C368();
        OUTLINED_FUNCTION_255();
        OUTLINED_FUNCTION_116();
        sub_1CA94C368();
        OUTLINED_FUNCTION_87();

        v72 = OUTLINED_FUNCTION_10_25(v71, sel_localizedStringForKey_value_table_);

        sub_1CA94C3A8();
        goto LABEL_18;
      }
    }

LABEL_20:
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_32_11();
    goto LABEL_17;
  }

  return 0;
}

void sub_1CA56485C()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  if (qword_1EDB9F960 != -1)
  {
    OUTLINED_FUNCTION_13_27(&qword_1EDB9F960);
  }

  v3 = [v0 fullyQualifiedLinkActionIdentifier];
  v4 = [v3 bundleIdentifier];

  v5 = sub_1CA94C3A8();
  v7 = v6;

  v8 = sub_1CA2786EC(v5, v7);
  v10 = v9;

  if (v10)
  {
    sub_1CA94C438("Changes the state of the selected %@ setting.", 45);
    sub_1CA94C438("Changes the state of the selected %@ setting.", 45, v11);
    v12 = sub_1CA948E58();
    v13 = OUTLINED_FUNCTION_18_0(v12);
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_1_40();
    sub_1CA948D98();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v14 = [qword_1EDB9F690 bundleURL];
    v15 = sub_1CA948BA8();
    v16 = OUTLINED_FUNCTION_18_0(v15);
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_31_9();

    v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
    v18 = OUTLINED_FUNCTION_14_23();
    v19 = [v2 localize_];

    sub_1CA94C3A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1CA981310;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1CA282DB4();
    *(v20 + 32) = v8;
    *(v20 + 40) = v10;
    sub_1CA94C3C8();
    OUTLINED_FUNCTION_69_1();
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA564B08()
{
  OUTLINED_FUNCTION_37_0();
  v1 = [v0 fullyQualifiedLinkActionIdentifier];
  v2 = [v1 bundleIdentifier];

  v3 = sub_1CA94C3A8();
  v5 = v4;

  if (v3 == sub_1CA94C3A8() && v5 == v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_23_14();
    v8 = sub_1CA94D7F8();

    if ((v8 & 1) == 0)
    {
      if (qword_1EDB9F960 != -1)
      {
        OUTLINED_FUNCTION_13_27(&qword_1EDB9F960);
      }

      v9 = [v0 fullyQualifiedLinkActionIdentifier];
      v10 = [v9 bundleIdentifier];

      v11 = sub_1CA94C3A8();
      v13 = v12;

      v14 = sub_1CA2786EC(v11, v13);
      v16 = v15;

      if (v16)
      {
        v35 = v14;
        sub_1CA94C438("Change %@ Settings", 18);
        sub_1CA94C438("Change %@ Settings", 18, v17);
        v18 = sub_1CA948E58();
        v19 = OUTLINED_FUNCTION_18_0(v18);
        MEMORY[0x1EEE9AC00](v19);
        OUTLINED_FUNCTION_1_40();
        sub_1CA948D98();
        if (qword_1EDB9F5F0 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v20 = [qword_1EDB9F690 bundleURL];
        v21 = sub_1CA948BA8();
        v22 = OUTLINED_FUNCTION_18_0(v21);
        MEMORY[0x1EEE9AC00](v22);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_31_9();

        v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
        v24 = OUTLINED_FUNCTION_14_23();
        v25 = OUTLINED_FUNCTION_34_13(v24, sel_localize_);

        sub_1CA94C3A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1CA981310;
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = sub_1CA282DB4();
        *(v26 + 32) = v35;
        *(v26 + 40) = v16;
        sub_1CA94C3C8();
        OUTLINED_FUNCTION_69_1();

        goto LABEL_16;
      }
    }
  }

  sub_1CA94C438("Change Setting (App wide Unique Entity Updater Action Name)", 59);
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438("Change Setting", 14);
  v27 = OUTLINED_FUNCTION_58();
  v28 = OUTLINED_FUNCTION_18_0(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20_21();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v29 = [qword_1EDB9F690 bundleURL];
  v30 = sub_1CA948BA8();
  v31 = OUTLINED_FUNCTION_18_0(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_40();
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = OUTLINED_FUNCTION_9_1();
  v34 = OUTLINED_FUNCTION_34_13(v33, sel_localize_);

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_69_1();

LABEL_16:
  OUTLINED_FUNCTION_36();
}

void sub_1CA565038()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v91 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 64) = v3;
  *(inited + 72) = @"Class";
  type metadata accessor for SettingPickerParameter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = @"Key";
  v84 = @"Class";
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  v7 = sub_1CA94C3A8();
  v9 = v8;

  *(inited + 80) = v7;
  *(inited + 88) = v9;
  *(inited + 104) = v3;
  *(inited + 112) = @"HideClearButton";
  v10 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v10;
  *(inited + 152) = @"Placeholder";
  v11 = @"HideClearButton";
  v83 = @"Placeholder";
  sub_1CA94C438("Setting", 7);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v12 = qword_1EDB9F690;
  OUTLINED_FUNCTION_116();
  v13 = sub_1CA94C368();
  OUTLINED_FUNCTION_116();
  v14 = sub_1CA94C368();

  v85 = v12;
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = sub_1CA94C3A8();
  v18 = v17;

  *(inited + 160) = v16;
  *(inited + 168) = v18;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"DefaultValue";
  v19 = @"DefaultValue";
  v20 = sub_1CA94C218();
  v21 = sub_1CA334394(v20);

  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
  if (v21[2])
  {
    v23 = v21[4];
    v22 = v21[5];
    sub_1CA94C218();
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v24 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 200) = v23;
  *(inited + 208) = v22;
  *(inited + 232) = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  v25 = swift_getObjCClassFromMetadata();
  v26 = @"DisallowedVariableTypes";
  v27 = [v25 allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA567A6C(&qword_1EC441A60, type metadata accessor for WFVariableType, &unk_1CA9804C8);
  v28 = sub_1CA94C8F8();

  sub_1CA3E4650(v28, v29, v30, v31, v32, v33, v34);
  v36 = v35;

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 240) = v36;
  _s3__C3KeyVMa_0(0);
  sub_1CA567A6C(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v37 = sub_1CA94C1E8();
  sub_1CA2F864C(v37);
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_8_8();
  if (v38)
  {
    OUTLINED_FUNCTION_11_3();
  }

  OUTLINED_FUNCTION_116();
  sub_1CA94C6E8();
  v39 = [v1 metadata];
  v40 = [v39 wf_parameterDefinitions];

  v41 = sub_1CA94C658();
  v42 = sub_1CA25B410(v41);
  if (v42)
  {
    v43 = v42;
    if (v42 >= 1)
    {
      v81 = v24;
      v44 = 0;
      v45 = v41 & 0xC000000000000001;
      v77 = @"Label";
      v46 = &selRef_metaDataDeviceQueryOperation;
      v82 = v5;
      v79 = v42;
      v80 = v41;
      v78 = v41 & 0xC000000000000001;
      while (1)
      {
        if (v45)
        {
          v47 = MEMORY[0x1CCAA22D0](v44, v41);
        }

        else
        {
          v47 = *(v41 + 8 * v44 + 32);
        }

        v48 = v47;
        if ([v47 v46[180]])
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v88 = 0u;
          v89 = 0u;
        }

        v90[0] = v88;
        v90[1] = v89;
        if (*(&v89 + 1))
        {
          if (swift_dynamicCast())
          {
            v49 = swift_initStackObject();
            *(v49 + 16) = xmmword_1CA9813C0;
            *(v49 + 32) = v5;
            *(v49 + 40) = v86;
            *(v49 + 48) = v87;
            v50 = MEMORY[0x1E69E6158];
            *(v49 + 64) = MEMORY[0x1E69E6158];
            *(v49 + 72) = v84;
            *(v49 + 80) = 0xD000000000000014;
            *(v49 + 88) = 0x80000001CA9A4680;
            *(v49 + 104) = v50;
            *(v49 + 112) = @"ParameterValueParameterDefinition";
            v51 = swift_initStackObject();
            *(v51 + 16) = xmmword_1CA9813C0;
            *(v51 + 32) = v5;
            *(v51 + 40) = 0x65756C6176;
            *(v51 + 48) = 0xE500000000000000;
            *(v51 + 64) = v50;
            *(v51 + 72) = v77;
            v52 = v5;
            v53 = v84;
            sub_1CA94C218();
            v54 = @"ParameterValueParameterDefinition";
            v55 = v77;
            sub_1CA94C438("Value", 5);
            v56 = v50;
            v57 = sub_1CA94C368();
            v58 = sub_1CA94C368();

            v59 = [v85 localizedStringForKey:v57 value:v58 table:0];

            v60 = sub_1CA94C3A8();
            v62 = v61;

            *(v51 + 80) = v60;
            *(v51 + 88) = v62;
            *(v51 + 104) = v56;
            *(v51 + 112) = v83;
            v63 = v83;
            v64 = sub_1CA56407C();
            if (v64[2] && (v65 = sub_1CA271BF8(v86, v87), (v66 & 1) != 0))
            {
              v67 = (v64[7] + 16 * v65);
              v69 = *v67;
              v68 = v67[1];
              sub_1CA94C218();

              v70 = (v51 + 120);
              *(v51 + 144) = MEMORY[0x1E69E6158];
              if (v68)
              {
                *v70 = v69;
LABEL_27:
                v5 = v82;
                *(v51 + 128) = v68;
                OUTLINED_FUNCTION_23_14();
                sub_1CA94C1E8();
                OUTLINED_FUNCTION_23_14();
                sub_1CA94C1A8();
                OUTLINED_FUNCTION_87();

                v75 = [v48 definitionByAddingEntriesInDictionary_];

                *(v49 + 144) = v81;
                *(v49 + 120) = v75;
                OUTLINED_FUNCTION_23_14();
                v76 = sub_1CA94C1E8();
                sub_1CA2F864C(v76);
                MEMORY[0x1CCAA1490]();
                OUTLINED_FUNCTION_8_8();
                if (v38)
                {
                  OUTLINED_FUNCTION_11_3();
                }

                OUTLINED_FUNCTION_116();
                sub_1CA94C6E8();

                v43 = v79;
                v41 = v80;
                v45 = v78;
                v46 = &selRef_metaDataDeviceQueryOperation;
                goto LABEL_30;
              }
            }

            else
            {

              v70 = (v51 + 120);
              *(v51 + 144) = MEMORY[0x1E69E6158];
            }

            sub_1CA94C438("Value", 5);
            OUTLINED_FUNCTION_69_1();
            v71 = sub_1CA94C368();
            v72 = sub_1CA94C368();

            v64 = [v85 localizedStringForKey:v71 value:v72 table:0];

            v73 = sub_1CA94C3A8();
            v68 = v74;

            *v70 = v73;
            goto LABEL_27;
          }
        }

        else
        {

          sub_1CA30F7DC(v90, &unk_1EC444650, &unk_1CA981C70);
        }

LABEL_30:
        if (v43 == ++v44)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:

    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1CA5658B4(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for WFAppSettingUpdaterAction();
  objc_msgSendSuper2(&v4, sel_configureParameter_, a1);
  type metadata accessor for SettingPickerParameter();
  OUTLINED_FUNCTION_93();
  result = swift_dynamicCastClass();
  if (result)
  {
    *(result + OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource + 8) = &off_1F4A13628;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_1CA565990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = OUTLINED_FUNCTION_18_22();
  v9 = v8 == v6 && v7 == 0xE600000000000000;
  if (v9 || (sub_1CA94D7F8() & 1) != 0)
  {
    OUTLINED_FUNCTION_187();
    v10 = sub_1CA94C368();
    v11 = type metadata accessor for WFAppSettingUpdaterAction();
    v43.receiver = v4;
    v43.super_class = v11;
    v12 = objc_msgSendSuper2(&v43, sel_parameterStateForKey_, v10);

    if (v12 && (v13 = [v12 isEqual_], swift_unknownObjectRelease(), (v13 & 1) != 0))
    {
      return 0;
    }

    else
    {
      OUTLINED_FUNCTION_187();
      v15 = sub_1CA94C368();
      v36.receiver = v4;
      v36.super_class = v11;
      objc_msgSendSuper2(&v36, sel_setParameterState_forKey_, a1, v15);

      v16 = &v4[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
      swift_beginAccess();
      *(v16 + 1) = MEMORY[0x1E69E7CC0];

      WFEntityUpdatingAction.createTableRow()(&v37);
      v40 = v37;
      v41 = v38;
      v42 = *v39;
      v17 = *&v39[16];
      if (*&v39[16])
      {
        v18 = *&v39[24];
        swift_beginAccess();
        v34[0] = v37;
        v34[1] = v38;
        v35[0] = *v39;
        *(v35 + 12) = *&v39[12];
        sub_1CA2DBDB8(v34, v33);
        sub_1CA69ADC8();
        v19 = *(*(v16 + 1) + 16);
        sub_1CA69AF74(v19);
        v20 = *(v16 + 1);
        *(v20 + 16) = v19 + 1;
        v21 = v20 + (v19 << 6);
        v22 = v41;
        *(v21 + 32) = v40;
        *(v21 + 48) = v22;
        *(v21 + 64) = v42;
        *(v21 + 80) = v17;
        *(v21 + 88) = v18;
        *(v16 + 1) = v20;
        swift_endAccess();
        v24 = *v16;
        v23 = *(v16 + 1);
        LOBYTE(v19) = v16[16];
        v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446590, &qword_1CA98B5B0));
        v26 = v25 + *((*MEMORY[0x1E69E7D40] & *v25) + 0x60);
        *v26 = v24;
        *(v26 + 1) = v23;
        v26[16] = v19;
        sub_1CA94C218();
        v32.receiver = v25;
        v32.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477C0, &unk_1CA98B5B8);
        v27 = objc_msgSendSuper2(&v32, sel_init);
        v28 = sub_1CA94C368();
        v31.receiver = v4;
        v31.super_class = v11;
        v14 = objc_msgSendSuper2(&v31, sel_setParameterState_forKey_, v27, v28);
        sub_1CA30F7DC(&v37, &qword_1EC445FA0, &unk_1CA98B5A0);
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_187();
    v29 = sub_1CA94C368();
    v44.receiver = v4;
    v44.super_class = type metadata accessor for WFAppSettingUpdaterAction();
    v14 = objc_msgSendSuper2(&v44, sel_setParameterState_forKey_, a1, v29);
  }

  return v14;
}

uint64_t sub_1CA565D3C(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    if (!a1)
    {
      v3 = *(v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier);
      OUTLINED_FUNCTION_5_5();
      v6 = v5 & v4;
      v8 = (v7 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v9 = 0;
      while (v6)
      {
        v10 = v9;
LABEL_11:
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        if (([*(*(v3 + 56) + ((v10 << 9) | (8 * v11))) visibleForUse_] & 1) == 0)
        {
          v2 = 0;
LABEL_14:

          return v2;
        }
      }

      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v8)
        {
          v2 = 1;
          goto LABEL_14;
        }

        v6 = *(v3 + 64 + 8 * v10);
        ++v9;
        if (v6)
        {
          v9 = v10;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    result = sub_1CA94D5F8();
    __break(1u);
  }

  return result;
}