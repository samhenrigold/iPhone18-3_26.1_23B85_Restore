id sub_1CA330858()
{
  v141 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9A4390;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("timer|set|clock|watch", 21);
  v6 = v5;
  v7 = sub_1CA94C438("timer|set|clock|watch", 21);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v149 = v11;
  v150 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v133 - v150;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v148 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v146 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v147 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v133 - v147;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v145 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v144 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v143 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Starts a timer in the Clock app for the specified amount of time.", 65);
  v140 = v27;
  v28 = sub_1CA94C438("Starts a timer in the Clock app for the specified amount of time.", 65);
  v30 = v29;
  v142 = &v133;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v133 - v150;
  sub_1CA948D98();
  v32 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v133 - v147;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v140, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v145;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v143;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 224) = MEMORY[0x1E69E6370];
  v39 = v38;
  *(inited + 200) = 1;
  v40 = @"InputPassthrough";
  *(inited + 232) = sub_1CA94C368();
  *(inited + 240) = 0xD000000000000026;
  *(inited + 248) = 0x80000001CA9A4420;
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"LocallyProcessesData";
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438("Start Timer (Action Name)", 25);
  v45 = v44;
  v46 = sub_1CA94C438("Start Timer", 11);
  v48 = v47;
  v143 = &v133;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v133 - v150;
  sub_1CA948D98();
  v50 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v133 - v147;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  *(inited + 344) = v145;
  *(inited + 352) = @"Output";
  v53 = @"Output";
  v54 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  v55 = v144;
  *(inited + 384) = v144;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v143 = swift_allocObject();
  *(v143 + 1) = xmmword_1CA981360;
  v142 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA981380;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD00000000000001ALL;
  *(v56 + 48) = 0x80000001CA99B690;
  *(v56 + 64) = v54;
  *(v56 + 72) = @"DefaultValue";
  v137 = @"Class";
  v57 = @"Parameters";
  v58 = @"DefaultValue";
  *(v56 + 80) = sub_1CA94C1E8();
  *(v56 + 104) = v55;
  *(v56 + 112) = @"Hidden";
  *(v56 + 144) = MEMORY[0x1E69E6370];
  *(v56 + 120) = 1;
  v59 = @"Hidden";
  *(v56 + 152) = sub_1CA94C368();
  *(v56 + 160) = 0xD000000000000013;
  *(v56 + 168) = 0x80000001CA9A4480;
  *(v56 + 184) = v54;
  *(v56 + 192) = @"Key";
  *(v56 + 200) = 0xD000000000000013;
  *(v56 + 208) = 0x80000001CA99B6D0;
  *(v56 + 224) = v54;
  *(v56 + 232) = @"Label";
  v60 = @"Key";
  v61 = @"Label";
  v135 = v60;
  v136 = v61;
  v62 = sub_1CA94C438("App (IntentAppDefinition)", 25);
  v139 = v63;
  v64 = sub_1CA94C438("App", 3);
  v66 = v65;
  v140 = &v133;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v133 - v150;
  sub_1CA948D98();
  v68 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v133 - v147;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71 = sub_1CA2F9F14(v62, v139, v64, v66, 0, 0, v67, v69);
  *(v56 + 264) = v145;
  *(v56 + 240) = v71;
  _s3__C3KeyVMa_0(0);
  v140 = v72;
  v139 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v73 = sub_1CA94C1E8();
  v74 = sub_1CA2F864C(v73);
  v143[4] = v74;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1CA981300;
  *(v75 + 32) = v137;
  *(v75 + 40) = 0xD000000000000020;
  *(v75 + 48) = 0x80000001CA9A44A0;
  v76 = MEMORY[0x1E69E6158];
  *(v75 + 64) = MEMORY[0x1E69E6158];
  *(v75 + 72) = @"IntentSlotName";
  *(v75 + 80) = 0x6E6F697461727564;
  *(v75 + 88) = 0xE800000000000000;
  v77 = v135;
  *(v75 + 104) = v76;
  *(v75 + 112) = v77;
  *(v75 + 120) = 0x6974617275444657;
  *(v75 + 128) = 0xEA00000000006E6FLL;
  v78 = v136;
  *(v75 + 144) = v76;
  *(v75 + 152) = v78;
  v79 = @"IntentSlotName";
  v80 = sub_1CA94C438("Duration (WFDuration)", 21);
  v135 = v81;
  v136 = v80;
  v82 = sub_1CA94C438("Duration", 8);
  v134 = v83;
  v137 = &v133;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v133 - v150;
  sub_1CA948D98();
  v85 = v148;
  v86 = [v148 bundleURL];
  v133 = &v133;
  v138 = inited;
  MEMORY[0x1EEE9AC00](v86);
  v87 = v147;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 160) = sub_1CA2F9F14(v136, v135, v82, v134, 0, 0, v84, &v133 - v87);
  *(v75 + 184) = v145;
  *(v75 + 192) = @"Placeholder";
  v89 = @"Placeholder";
  v90 = sub_1CA94C438("5 (WFDuration)", 14);
  v135 = v91;
  v136 = v90;
  v92 = sub_1CA94C438("5", 1);
  v134 = v93;
  v137 = &v133;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v133 - v150;
  sub_1CA948D98();
  v95 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 200) = sub_1CA2F9F14(v136, v135, v92, v134, 0, 0, v94, &v133 - v87);
  v97 = v145;
  *(v75 + 224) = v145;
  *(v75 + 232) = @"PossibleUnits";
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v75 + 240) = &unk_1F49F4538;
  *(v75 + 264) = v98;
  *(v75 + 272) = @"Prompt";
  v99 = @"PossibleUnits";
  v100 = @"Prompt";
  v101 = sub_1CA94C438("For how long? (WFDuration)", 26);
  v136 = v102;
  v103 = sub_1CA94C438("For how long?", 13);
  v105 = v104;
  v137 = &v133;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v133 - v150;
  sub_1CA948D98();
  v107 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v133 - v147;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 280) = sub_1CA2F9F14(v101, v136, v103, v105, 0, 0, v106, v108);
  *(v75 + 304) = v97;
  *(v75 + 312) = @"TextAlignment";
  *(v75 + 344) = MEMORY[0x1E69E6158];
  *(v75 + 320) = 0x7468676952;
  *(v75 + 328) = 0xE500000000000000;
  v110 = @"TextAlignment";
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v113 = v143;
  v143[5] = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v115 = v138;
  *(v138 + 400) = v113;
  v115[53] = v114;
  v115[54] = @"ParameterSummary";
  v116 = @"ParameterSummary";
  v117 = sub_1CA94C438("Start timer for ${WFDuration} (Parameter Summary)", 49);
  v119 = v118;
  v120 = sub_1CA94C438("Start timer for ${WFDuration}", 29);
  v122 = v121;
  v145 = &v133;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v133 - v150;
  sub_1CA948D98();
  v124 = [v148 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v133 - v147;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  v128 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v129 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v115[55] = v128;
  v115[58] = v129;
  v115[59] = @"SessionConfiguration";
  v130 = @"SessionConfiguration";
  v131 = sub_1CA94C1E8();
  v115[63] = v144;
  v115[60] = v131;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA331900()
{
  v100 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9A45A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("dmg", 3);
  v6 = v5;
  v7 = sub_1CA94C438("dmg", 3);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v105 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = v11;
  v12 = v94 - v105;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v104 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v102 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v103 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v94 - v103;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v101 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v99 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("This action ejects a mounted disk or volume.", 44);
  *&v97 = v27;
  v28 = sub_1CA94C438("This action ejects a mounted disk or volume.", 44);
  v30 = v29;
  *&v98 = v94;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v94 - v105;
  sub_1CA948D98();
  v32 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v94 - v103;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v97, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v101;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v99;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v97 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
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
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v95;
  *(v38 + 192) = &unk_1F49F4628;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438("Eject Disk (Action Name)", 24);
  v46 = v45;
  v47 = sub_1CA94C438("Eject Disk", 10);
  v49 = v48;
  v99 = v94;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v94 - v105;
  sub_1CA948D98();
  v51 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v94 - v103;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 264) = v101;
  *(inited + 272) = @"Parameters";
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v96 = swift_allocObject();
  v98 = xmmword_1CA9813B0;
  *(v96 + 16) = xmmword_1CA9813B0;
  v94[1] = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v54 = swift_initStackObject();
  *(v54 + 16) = v97;
  *(v54 + 32) = @"Class";
  *(v54 + 40) = 0xD000000000000015;
  *(v54 + 48) = 0x80000001CA99B1E0;
  v55 = MEMORY[0x1E69E6158];
  *(v54 + 64) = MEMORY[0x1E69E6158];
  *(v54 + 72) = @"FilePickerSupportedTypes";
  *(v54 + 80) = &unk_1F49F4658;
  *(v54 + 104) = v95;
  *(v54 + 112) = @"Key";
  *(v54 + 120) = 0x7475706E494657;
  *(v54 + 128) = 0xE700000000000000;
  *(v54 + 144) = v55;
  *(v54 + 152) = @"Label";
  v56 = @"Parameters";
  v57 = @"Class";
  v58 = @"FilePickerSupportedTypes";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438("Disk (WFInput)", 14);
  v95 = v62;
  v63 = sub_1CA94C438("Disk", 4);
  v65 = v64;
  *&v97 = v94;
  MEMORY[0x1EEE9AC00](v63);
  v66 = v94 - v105;
  sub_1CA948D98();
  v67 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = v94 - v103;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v61, v95, v63, v65, 0, 0, v66, v68);
  *(v54 + 184) = v101;
  *(v54 + 160) = v70;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v71 = sub_1CA94C1E8();
  v72 = sub_1CA2F864C(v71);
  v73 = v96;
  *(v96 + 32) = v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v73;
  *(inited + 304) = v74;
  *(inited + 312) = @"ParameterSummary";
  v75 = @"ParameterSummary";
  v76 = sub_1CA94C438("Eject ${WFInput} (Parameter Summary)", 36);
  v78 = v77;
  v79 = sub_1CA94C438("Eject ${WFInput}", 16);
  v81 = v80;
  v101 = v94;
  MEMORY[0x1EEE9AC00](v79);
  v82 = v94 - v105;
  sub_1CA948D98();
  v83 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = v94 - v103;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v76, v78, v79, v81, 0, 0, v82, v84);
  v87 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v88 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v87;
  *(inited + 344) = v88;
  *(inited + 352) = @"RequiredResources";
  v89 = swift_allocObject();
  *(v89 + 16) = v98;
  v107 = 2;
  v108 = 0;
  v90 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v91 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v107);
  *(v89 + 32) = v92;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 360) = v89;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA332510()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = OUTLINED_FUNCTION_40();
  type metadata accessor for Key(v2);
  OUTLINED_FUNCTION_4_16();
  sub_1CA334FE4(v3, v4, &unk_1CA98050C);
  OUTLINED_FUNCTION_20_0();
  v5 = sub_1CA94C1A8();

  v6 = [v0 initWithDictionary_];

  return v6;
}

void *sub_1CA3325B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata);
  v2 = v1;
  return v1;
}

uint64_t sub_1CA3325E8()
{
  if (*(*(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier) + 16) != 1)
  {
    return 0;
  }

  v1 = sub_1CA94C218();
  v2 = sub_1CA2ECF24(v1);

  if (!v2)
  {
    return 0;
  }

  return v2;
}

void sub_1CA332664(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) properties];
  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  v2 = sub_1CA94C658();

  v3 = sub_1CA25B410(v2);
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCAA22D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v9 = sub_1CA52A3C0(v6);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E4EE0();
        v5 = v16;
      }

      v13 = *(v5 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v5 + 24) >> 1)
      {
        sub_1CA2E4EE0();
        v14 = v13 + 1;
        v5 = v17;
      }

      *(v5 + 16) = v14;
      v15 = (v5 + 24 * v13);
      v15[4] = v11;
      v15[5] = v12;
      v15[6] = v7;
      v4 = v8;
    }

    else
    {

      ++v4;
    }
  }

  sub_1CA5F0754(v5);
}

uint64_t sub_1CA33283C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
    sub_1CA94C218();
  }

  sub_1CA94C218();
  return v5;
}

void sub_1CA3328A4()
{
  v0 = sub_1CA332644();
  v1 = v0;
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1CA94C218();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v1 + 56) + ((v7 << 9) | (8 * v10)));
    v12 = sub_1CA52A3C0(v11);
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v12;
    v15 = v13;
    v16 = [v11 title];
    if (v16)
    {
      v17 = v16;
      v24 = [v16 wf_localizedString];

      v18 = sub_1CA94C3A8();
      v25 = v19;
      v26 = v18;

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

      *(v8 + 16) = v20 + 1;
      v21 = (v8 + 32 * v20);
      v21[4] = v14;
      v21[5] = v15;
      v21[6] = v26;
      v21[7] = v25;
    }

    else
    {

LABEL_12:
    }
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
      goto LABEL_9;
    }
  }

  sub_1CA5F077C(v8);
}

void WFTargetedEntityUpdaterAction.init(identifier:actionMetadata:entityMetadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_11_10();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  *(v22 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction____lazy_storage___propertyByIdentifier) = 0;
  *(v22 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction____lazy_storage____localizedNameForParameterKey) = 0;
  *(v22 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) = v32;
  v33 = v32;
  v34 = WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v31, v29, v27, v25, v24, v23, v21, a21);
  v35 = v34;

  if (v34)
  {
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA332FE4()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v56 = MEMORY[0x1E69E7CC0];
  v2 = [v0 metadata];
  v3 = [v2 wf_parameterDefinitions];

  v47 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);
  if (v5)
  {
    v6 = v5;
    if (v5 >= 1)
    {
      v7 = 0;
      v8 = v4 & 0xC000000000000001;
      v48 = OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata;
      v42 = xmmword_1CA97EDF0;
      v43 = v5;
      v44 = v4;
      v45 = v1;
      v49 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v8)
        {
          v9 = MEMORY[0x1CCAA22D0](v7, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v7 + 32);
        }

        v10 = v9;
        if ([v9 objectForKey_])
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v54 = v52;
        v55 = v53;
        if (*(&v53 + 1))
        {
          if (swift_dynamicCast())
          {
            v11 = v50 == 0x797469746E65 && v51 == 0xE600000000000000;
            if (!v11 && (sub_1CA94D7F8() & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1CA9813C0;
              *(inited + 32) = @"Key";
              *(inited + 40) = v50;
              *(inited + 48) = v51;
              v26 = MEMORY[0x1E69E6158];
              *(inited + 64) = MEMORY[0x1E69E6158];
              *(inited + 72) = @"Class";
              *(inited + 80) = 0xD000000000000014;
              *(inited + 88) = 0x80000001CA9A4680;
              *(inited + 104) = v26;
              *(inited + 112) = @"ParameterValueParameterDefinition";
              v27 = swift_initStackObject();
              *(v27 + 16) = v42;
              *(v27 + 32) = @"Key";
              *(v27 + 40) = 0x65756C6176;
              *(v27 + 48) = 0xE500000000000000;
              *(v27 + 64) = v26;
              *(v27 + 72) = @"Label";
              v28 = @"Key";
              v29 = @"Class";
              v30 = @"ParameterValueParameterDefinition";
              if ([v10 objectForKey_])
              {
                sub_1CA94D258();
                swift_unknownObjectRelease();
              }

              else
              {
                v52 = 0u;
                v53 = 0u;
              }

              v54 = v52;
              v55 = v53;
              if (*(&v53 + 1))
              {
                if (swift_dynamicCast())
                {
                  v31 = v51;
                  *(v27 + 104) = v26;
                  if (v51)
                  {
                    *(v27 + 80) = v50;
LABEL_36:
                    *(v27 + 88) = v31;
                    _s3__C3KeyVMa_0(0);
                    OUTLINED_FUNCTION_3_13();
                    sub_1CA334FE4(&qword_1EDB9F780, v38, &unk_1CA980550);
                    sub_1CA94C1E8();
                    v39 = sub_1CA94C1A8();

                    v40 = [v10 definitionByAddingEntriesInDictionary_];

                    *(inited + 144) = v47;
                    *(inited + 120) = v40;
                    v41 = sub_1CA94C1E8();
                    sub_1CA2F864C(v41);
                    MEMORY[0x1CCAA1490]();
                    OUTLINED_FUNCTION_10_7();
                    if (v24)
                    {
                      OUTLINED_FUNCTION_18_11();
                    }

                    OUTLINED_FUNCTION_20_0();
                    sub_1CA94C6E8();

                    v6 = v43;
                    v4 = v44;
                    v8 = v49;
                    v1 = v45;
                    goto LABEL_22;
                  }

                  v46 = (v27 + 80);
LABEL_33:
                  sub_1CA94C438("Value", 5);
                  if (qword_1EDB9F5F0 != -1)
                  {
                    OUTLINED_FUNCTION_0_17();
                    swift_once();
                  }

                  v32 = qword_1EDB9F690;
                  v33 = sub_1CA94C368();
                  v34 = sub_1CA94C368();

                  v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

                  v36 = sub_1CA94C3A8();
                  v31 = v37;

                  *v46 = v36;
                  goto LABEL_36;
                }
              }

              else
              {
                sub_1CA2C0A74(&v54);
              }

              v46 = (v27 + 80);
              *(v27 + 104) = v26;
              goto LABEL_33;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
            v12 = swift_initStackObject();
            *(v12 + 16) = xmmword_1CA981310;
            *(v12 + 32) = @"Label";
            v13 = *&v1[v48];
            v14 = @"Label";
            v15 = [v13 displayRepresentation];
            v16 = [v15 name];

            v17 = [v16 wf_localizedString];
            v18 = sub_1CA94C3A8();
            v20 = v19;

            *(v12 + 64) = MEMORY[0x1E69E6158];
            *(v12 + 40) = v18;
            *(v12 + 48) = v20;
            _s3__C3KeyVMa_0(0);
            OUTLINED_FUNCTION_3_13();
            sub_1CA334FE4(&qword_1EDB9F780, v21, &unk_1CA980550);
            sub_1CA94C1E8();
            v22 = sub_1CA94C1A8();

            v23 = [v10 definitionByAddingEntriesInDictionary_];

            MEMORY[0x1CCAA1490]();
            OUTLINED_FUNCTION_10_7();
            if (v24)
            {
              OUTLINED_FUNCTION_18_11();
            }

            OUTLINED_FUNCTION_20_0();
            sub_1CA94C6E8();

            v8 = v49;
          }

          else
          {
          }
        }

        else
        {

          sub_1CA2C0A74(&v54);
        }

LABEL_22:
        if (v6 == ++v7)
        {

          goto LABEL_41;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_41:
    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA3336E0()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1CA3325E8();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 title];
    if (v6)
    {
      v7 = v6;
      v8 = [v3 locale];
      v9 = sub_1CA948E58();
      OUTLINED_FUNCTION_1_0();
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_17_3();

      sub_1CA948D48();
      v11 = OUTLINED_FUNCTION_13_9();
      v12(v11, v9);
      v13 = sub_1CA94C368();

      v14 = [v7 localizedStringForLocaleIdentifier_];

      sub_1CA94C3A8();
      goto LABEL_8;
    }
  }

  v15 = sub_1CA94C438("Edit %@ (Entity Updater Action Name)", 36);
  v46 = v16;
  v47 = v15;
  v17 = sub_1CA94C438("Edit %@", 7);
  v43 = v18;
  v44 = &v42;
  v45 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v25 = [qword_1EDB9F690 bundleURL];
  v26 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v26 - 8);
  OUTLINED_FUNCTION_6_0();
  v29 = v28 - v27;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v47, v46, v17, v43, 0, 0, &v42 - v24, v29);
  v32 = [v3 localize_];

  sub_1CA94C3A8();
  v33 = [*(v1 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) displayRepresentation];
  v34 = [v33 name];

  v35 = [v3 locale];
  MEMORY[0x1EEE9AC00](v35);
  sub_1CA948DA8();

  sub_1CA948D48();
  (*(v20 + 8))(&v42 - v24, v45);
  OUTLINED_FUNCTION_20_0();
  v36 = sub_1CA94C368();

  v37 = [v34 localizedStringForLocaleIdentifier_];

  v38 = sub_1CA94C3A8();
  v40 = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1CA981310;
  *(v41 + 56) = MEMORY[0x1E69E6158];
  *(v41 + 64) = sub_1CA282DB4();
  *(v41 + 32) = v38;
  *(v41 + 40) = v40;
  sub_1CA94C378();

LABEL_8:
  OUTLINED_FUNCTION_36();
}

void sub_1CA333BF0()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = sub_1CA3325E8();
  if (!v3)
  {
    v15 = [*(v0 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) displayRepresentation];
    v16 = [v15 name];

    v17 = [v2 locale];
    OUTLINED_FUNCTION_40();
    v18 = sub_1CA948E58();
    v72 = v2;
    OUTLINED_FUNCTION_1_0();
    v20 = v19;
    v22 = *(v21 + 64);
    MEMORY[0x1EEE9AC00](v23);
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_1CA948DA8();

    sub_1CA948D48();
    v25 = *(v20 + 8);
    v74 = v20 + 8;
    v75 = v18;
    v73 = v25;
    v25(&v68 - v24, v18);
    v26 = sub_1CA94C368();

    v27 = [v16 localizedStringForLocaleIdentifier_];

    v28 = sub_1CA94C3A8();
    v70 = v29;
    v71 = v28;

    v30 = sub_1CA94C438("Edit %@ (Entity Updater Action Name)", 36);
    v69 = v31;
    v32 = sub_1CA94C438("Edit %@", 7);
    v34 = v33;
    MEMORY[0x1EEE9AC00](v32);
    v35 = &v68 - v24;
    sub_1CA948D98();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v36 = [qword_1EDB9F690 bundleURL];
    v37 = sub_1CA948BA8();
    MEMORY[0x1EEE9AC00](v37 - 8);
    OUTLINED_FUNCTION_6_0();
    v40 = v39 - v38;
    sub_1CA948B68();

    v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
    v42 = sub_1CA2F9F14(v30, v69, v32, v34, 0, 0, v35, v40);
    v43 = v72;
    v44 = [v72 localize_];

    sub_1CA94C3A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1CA981310;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = sub_1CA282DB4();
    v46 = v70;
    *(v45 + 32) = v71;
    *(v45 + 40) = v46;
    v47 = sub_1CA94C3C8();
    v49 = v48;

    v78 = v47;
    v79 = v49;
    v50 = sub_1CA33281C();
    v51 = sub_1CA3343AC(v50, sub_1CA2BC130);

    v52 = *(v51 + 16);
    if (!v52)
    {
LABEL_18:

      goto LABEL_19;
    }

    v71 = v51;
    v53 = (v51 + 40);
    while (1)
    {
      v55 = *(v53 - 1);
      v54 = *v53;
      sub_1CA94C218();
      v56 = sub_1CA332644();
      if (!*(v56 + 16))
      {
        break;
      }

      v57 = sub_1CA271BF8(v55, v54);
      v59 = v58;

      if ((v59 & 1) == 0)
      {
        goto LABEL_14;
      }

      v60 = *(*(v56 + 56) + 8 * v57);

      v61 = [v60 title];

      if (v61)
      {
        v62 = [v43 locale];
        MEMORY[0x1EEE9AC00](v62);
        sub_1CA948DA8();

        sub_1CA948D48();
        v73(&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v75);
        v63 = sub_1CA94C368();

        v64 = [v61 localizedStringForLocaleIdentifier_];

        v65 = sub_1CA94C3A8();
        v67 = v66;

        v76 = 0x20A280E2200ALL;
        v77 = 0xA600000000000000;
        MEMORY[0x1CCAA1300](v65, v67);

        MEMORY[0x1CCAA1300](v76, v77);
LABEL_14:
      }

      v53 += 2;
      if (!--v52)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_14;
  }

  v4 = v3;
  v5 = [v3 descriptionMetadata];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 descriptionText];

    v8 = [v2 locale];
    v9 = sub_1CA948E58();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_3();

    sub_1CA948D48();
    v11 = OUTLINED_FUNCTION_13_9();
    v12(v11, v9);
    v13 = sub_1CA94C368();

    v14 = [v7 localizedStringForLocaleIdentifier_];

    sub_1CA94C3A8();
  }

LABEL_19:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA3342DC(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1CA2E764C();
  OUTLINED_FUNCTION_8_6();
  sub_1CA2BAB3C();
  OUTLINED_FUNCTION_9_8();
  v4 = OUTLINED_FUNCTION_6_14();
  sub_1CA28A224(v4);
  if (v2 != v3)
  {
    __break(1u);
LABEL_4:
    v1 = MEMORY[0x1E69E7CC0];
  }

  v6[0] = v1;
  sub_1CA334EF0(v6);
  return v6[0];
}

uint64_t sub_1CA3343AC(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1CA2E764C();
  OUTLINED_FUNCTION_8_6();
  a2();
  OUTLINED_FUNCTION_9_8();
  v5 = OUTLINED_FUNCTION_6_14();
  sub_1CA28A224(v5);
  if (a2 != v3)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x1E69E7CC0];
  }

  v7[0] = v2;
  sub_1CA334EF0(v7);
  return v7[0];
}

uint64_t sub_1CA334484(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata) displayRepresentation];
  v4 = [v3 name];

  v5 = [a1 locale];
  OUTLINED_FUNCTION_40();
  v6 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  sub_1CA948DA8();

  sub_1CA948D48();
  (*(v8 + 8))(v12, v6);
  v13 = sub_1CA94C368();

  v14 = [v4 localizedStringForLocaleIdentifier_];

  v15 = sub_1CA94C3A8();
  return v15;
}

id sub_1CA334620(void *a1)
{
  v2 = sub_1CA3325E8();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 descriptionMetadata];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 categoryName];

    if (v6)
    {
      v7 = [v6 title];

      v8 = [a1 locale];
      OUTLINED_FUNCTION_40();
      v9 = sub_1CA948E58();
      OUTLINED_FUNCTION_1_0();
      v11 = v10;
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_6_0();
      v15 = v14 - v13;
      sub_1CA948DA8();

      sub_1CA948D48();
      (*(v11 + 8))(v15, v9);
      v16 = sub_1CA94C368();

      v17 = [v7 localizedStringForLocaleIdentifier_];

      v6 = sub_1CA94C3A8();
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

id sub_1CA33481C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1CA94C368();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1CA3348B0(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  if (!a1)
  {
    v3 = [v1 fullyQualifiedLinkActionIdentifier];
    v4 = [v3 bundleIdentifier];

    if (!v4)
    {
      sub_1CA94C3A8();
      v4 = sub_1CA94C368();
    }

    v5 = WFISEligibleForSettingsUpdaterAction(*&v1[OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata], v4);

    if (v5)
    {
      return 0;
    }

    v6 = *&v1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier];
    OUTLINED_FUNCTION_5_5();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v12 = 0;
    while (v9)
    {
      v13 = v12;
LABEL_15:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      if (([*(*(v6 + 56) + ((v13 << 9) | (8 * v14))) visibleForUse_] & 1) == 0)
      {
        v2 = 0;
LABEL_18:

        return v2;
      }
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        v2 = 1;
        goto LABEL_18;
      }

      v9 = *(v6 + 64 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

void sub_1CA334AF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_72();
  v23 = v22;
  v24 = [v22 fullyQualifiedLinkActionIdentifier];
  v25 = [v24 bundleIdentifier];

  if (!v25)
  {
    sub_1CA94C3A8();
    v25 = sub_1CA94C368();
  }

  v26 = WFISEligibleForSettingsUpdaterAction(*&v23[OBJC_IVAR____TtC11WorkflowKit29WFTargetedEntityUpdaterAction__entityMetadata], v25);

  if (v26)
  {
LABEL_13:
    OUTLINED_FUNCTION_70_2();
  }

  else
  {
    v27 = *&v23[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier] + 64;
    OUTLINED_FUNCTION_5_5();
    v30 = v29 & v28;
    v32 = (v31 + 63) >> 6;
    v47 = v23;
    v48 = v33;
    swift_bridgeObjectRetain_n();
    v34 = 0;
    while (v30)
    {
      v35 = v34;
LABEL_11:
      v36 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v37 = *(*(v48 + 56) + ((v35 << 9) | (8 * v36)));
      v38 = [v37 identifier];
      v39 = sub_1CA94C3A8();
      v41 = v40;

      v42 = [v47 fullyQualifiedLinkActionIdentifier];
      v43 = [v42 bundleIdentifier];

      v44 = sub_1CA94C3A8();
      v45 = objc_allocWithZone(MEMORY[0x1E69AC860]);
      v46 = sub_1CA334F5C(v39, v41, v44);
      LOBYTE(v39) = [objc_opt_self() approvedForPublicDrawerToDisplayActionIdentifier_];

      if ((v39 & 1) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        goto LABEL_12;
      }

      v30 = *(v27 + 8 * v35);
      ++v34;
      if (v30)
      {
        v34 = v35;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1CA334E10()
{
}

id WFTargetedEntityUpdaterAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTargetedEntityUpdaterAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA334EF0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6277D4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA335060(v6);
  *a1 = v2;
  return result;
}

id sub_1CA334F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CA94C368();

  v5 = sub_1CA94C368();

  v6 = [v3 initWithActionIdentifier:v4 bundleIdentifier:v5];

  return v6;
}

uint64_t sub_1CA334FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA335060(uint64_t *a1)
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
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA33521C(v7, v8, a1, v4);
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
    return sub_1CA335154(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA335154(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1CA94D7F8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA33521C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1CA94D7F8();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1CA94D7F8()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1CA94D7F8() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E49C0(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1CA2E49C0(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1CA335850((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1CA335724(&v92, *result, a3);
LABEL_102:
}

uint64_t sub_1CA335724(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CA627610();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1CA335850((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1CA335850(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1CA26E4B4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1CA94D7F8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1CA26E4B4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1CA94D7F8() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

id sub_1CA335A38()
{
  v112 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A4960;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("export|song|music|itunes|library", 32);
  v6 = v5;
  v7 = sub_1CA94C438("export|song|music|itunes|library", 32);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v118 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = v11;
  v12 = &v106 - v118;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v117 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v115 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v106 - v116;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v114 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v111 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v113 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Prompts to select music from your local music library.", 54);
  v109 = v27;
  v28 = sub_1CA94C438("Prompts to select music from your local music library.", 54);
  v30 = v29;
  v110 = &v106;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v106 - v118;
  sub_1CA948D98();
  v32 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v106 - v116;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v109, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v114;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v113;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v113 = v38;
  *(inited + 200) = &unk_1F49F46C8;
  *(inited + 224) = v38;
  *(inited + 232) = @"InputPassthrough";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 0;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"InputPassthrough";
  v42 = @"Name";
  v43 = sub_1CA94C438("Select Music (Action Name)", 26);
  v45 = v44;
  v46 = sub_1CA94C438("Select Music", 12);
  v48 = v47;
  v110 = &v106;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v106 - v118;
  sub_1CA948D98();
  v50 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v106 - v116;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  *(inited + 304) = v114;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x1E69E6158];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  *(v53 + 96) = 1;
  *(v53 + 120) = MEMORY[0x1E69E6370];
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v54 = @"Output";
  v55 = sub_1CA94C438("Music (Default Output Name)", 27);
  v109 = v56;
  v57 = sub_1CA94C438("Music", 5);
  v59 = v58;
  v110 = &v106;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v106 - v118;
  sub_1CA948D98();
  v61 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v106 - v116;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 144) = sub_1CA2F9F14(v55, v109, v57, v59, 0, 0, v60, v62);
  v64 = v113;
  *(v53 + 168) = v114;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 216) = v64;
  *(v53 + 184) = 0xE500000000000000;
  *(v53 + 192) = &unk_1F49F46F8;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v66;
  *(inited + 344) = v67;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v110 = swift_allocObject();
  *(v110 + 1) = xmmword_1CA9813B0;
  v109 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1CA9813C0;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000011;
  *(v68 + 48) = 0x80000001CA99E620;
  *(v68 + 64) = v65;
  *(v68 + 72) = @"Key";
  *(v68 + 80) = 0xD000000000000020;
  *(v68 + 88) = 0x80000001CA9A4A40;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Label";
  v69 = @"Parameters";
  v70 = @"Class";
  v71 = @"Key";
  v72 = @"Label";
  v73 = sub_1CA94C438("Select Multiple Songs (WFExportSongActionSelectMultiple)", 56);
  v107 = v74;
  v75 = sub_1CA94C438("Select Multiple Songs", 21);
  v77 = v76;
  v108 = &v106;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v106 - v118;
  sub_1CA948D98();
  v79 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v106 - v116;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v73, v107, v75, v77, 0, 0, v78, v80);
  *(v68 + 144) = v114;
  *(v68 + 120) = v82;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v83 = sub_1CA94C1E8();
  v84 = sub_1CA2F864C(v83);
  v85 = v110;
  v110[4] = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v85;
  *(inited + 384) = v86;
  *(inited + 392) = @"ParameterSummary";
  v87 = @"ParameterSummary";
  v88 = sub_1CA94C438("Select music (Parameter Summary)", 32);
  v90 = v89;
  v91 = sub_1CA94C438("Select music", 12);
  v93 = v92;
  v114 = &v106;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v106 - v118;
  sub_1CA948D98();
  v95 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v106 - v116;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v88, v90, v91, v93, 0, 0, v94, v96);
  v99 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v100 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v99;
  *(inited + 424) = v100;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F49F4728;
  v101 = v113;
  *(inited + 464) = v113;
  *(inited + 472) = @"UserInterfaceClasses";
  v102 = @"RequiredResources";
  v103 = @"UserInterfaceClasses";
  *(inited + 480) = sub_1CA94C1E8();
  *(inited + 504) = v111;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v101;
  *(inited + 520) = &unk_1F49F47C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v104 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3367B0()
{
  v152 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9A4B10;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("file|document|filepicker|rename|folder|move", 43);
  v6 = v5;
  v7 = sub_1CA94C438("file|document|filepicker|rename|folder|move", 43);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v163 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v164 = v11;
  v12 = &v143 - v163;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v162 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v160 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v161 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v143 - v161;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v159 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  *&v157 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v158 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Renames the specified file.", 27);
  v155 = v27;
  v28 = sub_1CA94C438("Renames the specified file.", 27);
  v30 = v29;
  v156 = &v143;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v143 - v163;
  sub_1CA948D98();
  v32 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v143 - v161;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v155, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v159;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v157;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  v151 = 0xD000000000000011;
  *(inited + 240) = 0xD000000000000011;
  *(inited + 248) = 0x80000001CA9A4B80;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v39 = v38;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v157 = xmmword_1CA9813C0;
  *(v40 + 16) = xmmword_1CA9813C0;
  strcpy((v40 + 32), "ParameterKey");
  *(v40 + 45) = 0;
  *(v40 + 46) = -5120;
  *(v40 + 48) = 0x656C69464657;
  *(v40 + 56) = 0xE600000000000000;
  *(v40 + 72) = v39;
  *(v40 + 80) = 0x6465726975716552;
  *(v40 + 88) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 96) = 1;
  *(v40 + 120) = v41;
  *(v40 + 128) = 0x7365707954;
  *(v40 + 136) = 0xE500000000000000;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 168) = v155;
  *(v40 + 144) = &unk_1F49F4838;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"IconSymbolColor";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v154 = v47;
  *(inited + 320) = v46;
  *(inited + 344) = v47;
  *(inited + 352) = @"Name";
  v48 = @"Name";
  v150 = sub_1CA94C438("Rename File (Action Name)", 25);
  v50 = v49;
  v51 = sub_1CA94C438("Rename File", 11);
  v53 = v52;
  v153 = &v143;
  MEMORY[0x1EEE9AC00](v51);
  v54 = v163;
  sub_1CA948D98();
  v55 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v143 - v161;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v150, v50, v51, v53, 0, 0, &v143 - v54, v56);
  v58 = v159;
  *(inited + 384) = v159;
  *(inited + 392) = @"Output";
  v59 = swift_initStackObject();
  *(v59 + 16) = v157;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x614E74757074754FLL;
  *(v59 + 88) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438("File (Default Output Name)", 26);
  v149 = v62;
  v150 = v61;
  v63 = sub_1CA94C438("File", 4);
  v65 = v64;
  v153 = &v143;
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948D98();
  v66 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v143 - v161;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 96) = sub_1CA2F9F14(v150, v149, v63, v65, 0, 0, &v143 - v54, v67);
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x7365707954;
  v69 = v155;
  *(v59 + 168) = v155;
  *(v59 + 136) = 0xE500000000000000;
  *(v59 + 144) = &unk_1F49F4868;
  v70 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v154;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_1CA981360;
  v153 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v71 = swift_allocObject();
  v147 = xmmword_1CA981350;
  *(v71 + 16) = xmmword_1CA981350;
  *(v71 + 32) = @"Class";
  *(v71 + 40) = 0xD000000000000015;
  *(v71 + 48) = 0x80000001CA99B1E0;
  *(v71 + 64) = v70;
  *(v71 + 72) = @"FilePickerSupportedTypes";
  *(v71 + 80) = &unk_1F49F4898;
  *(v71 + 104) = v69;
  *(v71 + 112) = @"Key";
  *(v71 + 120) = 0x656C69464657;
  *(v71 + 128) = 0xE600000000000000;
  *(v71 + 144) = v70;
  *(v71 + 152) = @"Label";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v145 = v72;
  v144 = v73;
  v146 = v74;
  v75 = @"Parameters";
  v76 = @"FilePickerSupportedTypes";
  v77 = sub_1CA94C438("File (WFFile)", 13);
  v149 = v78;
  v79 = sub_1CA94C438("File", 4);
  v81 = v80;
  v150 = &v143;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v143 - v163;
  sub_1CA948D98();
  v83 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v143 - v161;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v77, v149, v79, v81, 0, 0, v82, v84);
  *(v71 + 184) = v159;
  *(v71 + 160) = v86;
  _s3__C3KeyVMa_0(0);
  v150 = v87;
  v149 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v88 = sub_1CA94C1E8();
  v89 = sub_1CA2F864C(v88);
  *(v154 + 32) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = v147;
  *(v90 + 32) = v145;
  *(v90 + 40) = 0xD000000000000014;
  *(v90 + 48) = 0x80000001CA99B500;
  v91 = MEMORY[0x1E69E6158];
  v92 = v144;
  *(v90 + 64) = MEMORY[0x1E69E6158];
  *(v90 + 72) = v92;
  strcpy((v90 + 80), "WFNewFilename");
  *(v90 + 94) = -4864;
  v93 = v146;
  *(v90 + 104) = v91;
  *(v90 + 112) = v93;
  v94 = sub_1CA94C438("Name (WFNewFilename)", 20);
  v145 = v95;
  v146 = v94;
  v96 = sub_1CA94C438("Name", 4);
  v144 = v97;
  *&v147 = &v143;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v143 - v163;
  sub_1CA948D98();
  v99 = v162;
  v100 = [v162 bundleURL];
  v143 = &v143;
  MEMORY[0x1EEE9AC00](v100);
  v148 = inited;
  v101 = v161;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 120) = sub_1CA2F9F14(v146, v145, v96, v144, 0, 0, v98, &v143 - v101);
  v103 = v159;
  *(v90 + 144) = v159;
  *(v90 + 152) = @"Placeholder";
  v104 = @"Placeholder";
  v105 = sub_1CA94C438("Name (WFNewFilename)", 20);
  v145 = v106;
  v146 = v105;
  v107 = sub_1CA94C438("Name", 4);
  v109 = v108;
  *&v147 = &v143;
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v143 - v163;
  sub_1CA948D98();
  v111 = [v99 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v146, v145, v107, v109, 0, 0, v110, &v143 - v101);
  *(v90 + 184) = v103;
  *(v90 + 160) = v113;
  v114 = sub_1CA94C1E8();
  v115 = sub_1CA2F864C(v114);
  v116 = v154;
  *(v154 + 40) = v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v118 = v148;
  *(v148 + 440) = v116;
  v118[58] = v117;
  v118[59] = @"ParameterSummary";
  v119 = @"ParameterSummary";
  v120 = sub_1CA94C438("Rename ${WFFile} to ${WFNewFilename} (Parameter Summary)", 56);
  v122 = v121;
  v123 = sub_1CA94C438("Rename ${WFFile} to ${WFNewFilename}", 36);
  v125 = v124;
  v159 = &v143;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v143 - v163;
  sub_1CA948D98();
  v127 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v143 - v161;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v120, v122, v123, v125, 0, 0, v126, v128);
  v131 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v132 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v118[60] = v131;
  v118[63] = v132;
  v118[64] = @"RemoteExecuteOnPlatforms";
  v118[68] = v155;
  v118[65] = &unk_1F49F48C8;
  v118[69] = @"RequiredResources";
  v133 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v134 = swift_allocObject();
  *(v134 + 16) = v158;
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_1CA97EDF0;
  *(v135 + 32) = v151;
  *(v135 + 40) = 0x80000001CA99B240;
  v136 = swift_allocObject();
  *(v136 + 16) = v158;
  v137 = swift_allocObject();
  *(v137 + 16) = v157;
  strcpy((v137 + 32), "WFParameterKey");
  *(v137 + 47) = -18;
  *(v137 + 48) = 0xD000000000000010;
  *(v137 + 56) = 0x80000001CA99B260;
  v138 = MEMORY[0x1E69E6158];
  *(v137 + 72) = MEMORY[0x1E69E6158];
  *(v137 + 80) = 0xD000000000000010;
  *(v137 + 88) = 0x80000001CA993570;
  *(v137 + 96) = 1;
  *(v137 + 120) = MEMORY[0x1E69E6370];
  *(v137 + 128) = 0x72756F7365524657;
  *(v137 + 168) = v138;
  *(v137 + 136) = 0xEF7373616C436563;
  *(v137 + 144) = 0xD00000000000001BLL;
  *(v137 + 152) = 0x80000001CA993590;
  v139 = @"RemoteExecuteOnPlatforms";
  v140 = @"RequiredResources";
  *(v136 + 32) = sub_1CA94C1E8();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v135 + 48) = v136;
  *(v135 + 72) = v141;
  *(v135 + 80) = 0x72756F7365524657;
  *(v135 + 120) = v138;
  *(v135 + 88) = 0xEF7373616C436563;
  *(v135 + 96) = 0xD000000000000019;
  *(v135 + 104) = 0x80000001CA9932D0;
  *(v134 + 32) = sub_1CA94C1E8();
  v133[73] = v141;
  v133[70] = v134;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA337AF0()
{
  v180 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v184 = xmmword_1CA9813E0;
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  v179 = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A4CA0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v190 = inited;
  v192 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  v181 = xmmword_1CA981310;
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438("Imports the photos passed as input into Lightroom.", 50);
  v11 = v10;
  v12 = sub_1CA94C438("Imports the photos passed as input into Lightroom.", 50);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v196 = v16;
  v198 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v171 - v198;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v195 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v197 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v194 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v171 - v194;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v193 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v193;
  *(v6 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v24 = sub_1CA94C1E8();
  v25 = v192;
  v26 = sub_1CA6B3784(v24);
  v27 = v190;
  v190[15] = v26;
  v27[18] = v25;
  v27[19] = @"Input";
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v28 = swift_initStackObject();
  v186 = xmmword_1CA981350;
  *(v28 + 16) = xmmword_1CA981350;
  *(v28 + 32) = 0x656C7069746C754DLL;
  *(v28 + 40) = 0xE800000000000000;
  v29 = MEMORY[0x1E69E6370];
  *(v28 + 48) = 1;
  *(v28 + 72) = v29;
  strcpy((v28 + 80), "ParameterKey");
  *(v28 + 93) = 0;
  *(v28 + 94) = -5120;
  *(v28 + 96) = 0x7475706E494657;
  *(v28 + 104) = 0xE700000000000000;
  v30 = MEMORY[0x1E69E6158];
  *(v28 + 120) = MEMORY[0x1E69E6158];
  *(v28 + 128) = 0x6465726975716552;
  *(v28 + 136) = 0xE800000000000000;
  *(v28 + 144) = 1;
  *(v28 + 168) = v29;
  *(v28 + 176) = 0x7365707954;
  v31 = v29;
  *(v28 + 184) = 0xE500000000000000;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v28 + 216) = v183;
  *(v28 + 192) = &unk_1F49F4978;
  v32 = @"Input";
  v33 = sub_1CA94C1E8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v27[20] = v33;
  v27[23] = v34;
  v27[24] = @"InputPassthrough";
  v27[28] = v31;
  *(v27 + 200) = 1;
  v35 = @"InputPassthrough";
  v27[29] = sub_1CA94C368();
  strcpy(v27 + 240, "THImportIntent");
  *(v27 + 255) = -18;
  v27[33] = v30;
  v27[34] = @"Name";
  v36 = @"Name";
  v37 = sub_1CA94C438("Import to Lightroom (Action Name)", 33);
  v39 = v38;
  v40 = sub_1CA94C438("Import to Lightroom", 19);
  v42 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v171 - v198;
  sub_1CA948D98();
  v44 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v171 - v194;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v37, v39, v40, v42, 0, 0, v43, v45);
  v48 = v190;
  v190[35] = v47;
  v48[38] = v193;
  v48[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_1CA981570;
  v191 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v49 = swift_initStackObject();
  *(v49 + 16) = v186;
  *(v49 + 32) = @"Class";
  *(v49 + 40) = 0xD000000000000011;
  *(v49 + 48) = 0x80000001CA99E620;
  v50 = MEMORY[0x1E69E6158];
  *(v49 + 64) = MEMORY[0x1E69E6158];
  *(v49 + 72) = @"DefaultValue";
  *(v49 + 80) = 0;
  *(v49 + 104) = MEMORY[0x1E69E6370];
  *(v49 + 112) = @"Key";
  *(v49 + 120) = 0x657250796C707061;
  *(v49 + 128) = 0xEB00000000746573;
  *(v49 + 144) = v50;
  *(v49 + 152) = @"Label";
  v51 = @"Class";
  v52 = @"Key";
  v53 = @"Label";
  v54 = v51;
  v55 = v52;
  v56 = v53;
  v57 = @"DefaultValue";
  v177 = v54;
  v178 = v55;
  v182 = v56;
  v176 = v57;
  v58 = @"Parameters";
  v59 = sub_1CA94C438("Apply Preset (applyPreset)", 26);
  v61 = v60;
  v62 = sub_1CA94C438("Apply Preset", 12);
  v64 = v63;
  v188 = &v171;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v171 - v198;
  sub_1CA948D98();
  v66 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v171 - v194;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v59, v61, v62, v64, 0, 0, v65, v67);
  *(v49 + 184) = v193;
  *(v49 + 160) = v69;
  _s3__C3KeyVMa_0(0);
  v188 = v70;
  v187 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v71 = sub_1CA94C1E8();
  v72 = sub_1CA2F864C(v71);
  *(v192 + 32) = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = v184;
  *(v73 + 32) = @"AlwaysShowsButton";
  *(v73 + 40) = 1;
  v74 = MEMORY[0x1E69E6370];
  v75 = v177;
  *(v73 + 64) = MEMORY[0x1E69E6370];
  *(v73 + 72) = v75;
  *(v73 + 80) = 0xD000000000000016;
  *(v73 + 88) = 0x80000001CA99C4A0;
  v76 = MEMORY[0x1E69E6158];
  v77 = v176;
  *(v73 + 104) = MEMORY[0x1E69E6158];
  *(v73 + 112) = v77;
  *(v73 + 120) = 0x726F6C6F43;
  *(v73 + 128) = 0xE500000000000000;
  *(v73 + 144) = v76;
  *(v73 + 152) = @"DisallowedVariableTypes";
  v78 = v76;
  *(v73 + 160) = &unk_1F49F49A8;
  v79 = v183;
  *(v73 + 184) = v183;
  *(v73 + 192) = @"DoNotLocalizeValues";
  *(v73 + 200) = 1;
  *(v73 + 224) = v74;
  *(v73 + 232) = @"Items";
  *(v73 + 240) = &unk_1F49F49D8;
  v80 = v178;
  *(v73 + 264) = v79;
  *(v73 + 272) = v80;
  *(v73 + 280) = 0x7247746573657270;
  *(v73 + 288) = 0xEB0000000070756FLL;
  v81 = v182;
  *(v73 + 304) = v78;
  *(v73 + 312) = v81;
  v82 = @"AlwaysShowsButton";
  v83 = @"DoNotLocalizeValues";
  *&v184 = v75;
  v183 = v80;
  v182 = v81;
  v172 = v82;
  v174 = v83;
  v84 = @"DisallowedVariableTypes";
  v85 = @"Items";
  v86 = sub_1CA94C438("Preset Group (presetGroup)", 26);
  v88 = v87;
  v89 = sub_1CA94C438("Preset Group", 12);
  v91 = v90;
  v178 = &v171;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v171 - v198;
  sub_1CA948D98();
  v93 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v171 - v194;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 320) = sub_1CA2F9F14(v86, v88, v89, v91, 0, 0, v92, v94);
  *(v73 + 344) = v193;
  *(v73 + 352) = @"RequiredResources";
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v96 = swift_allocObject();
  *(v96 + 16) = v181;
  v97 = swift_allocObject();
  v181 = xmmword_1CA9813C0;
  *(v97 + 16) = xmmword_1CA9813C0;
  strcpy((v97 + 32), "WFParameterKey");
  *(v97 + 47) = -18;
  *(v97 + 48) = 0x657250796C707061;
  *(v97 + 56) = 0xEB00000000746573;
  v175 = 0xD000000000000010;
  v176 = 0x80000001CA993570;
  v98 = MEMORY[0x1E69E6158];
  *(v97 + 72) = MEMORY[0x1E69E6158];
  *(v97 + 80) = 0xD000000000000010;
  *(v97 + 88) = 0x80000001CA993570;
  *(v97 + 96) = 1;
  v99 = MEMORY[0x1E69E6370];
  *(v97 + 120) = MEMORY[0x1E69E6370];
  *(v97 + 128) = 0x72756F7365524657;
  v173 = 0x80000001CA993590;
  *(v97 + 168) = v98;
  *(v97 + 136) = 0xEF7373616C436563;
  *(v97 + 144) = 0xD00000000000001BLL;
  *(v97 + 152) = 0x80000001CA993590;
  v171 = @"RequiredResources";
  *(v96 + 32) = sub_1CA94C1E8();
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v73 + 384) = v178;
  *(v73 + 360) = v96;
  v100 = sub_1CA94C1E8();
  v101 = sub_1CA2F864C(v100);
  *(v192 + 40) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1CA981400;
  *(v102 + 32) = v172;
  *(v102 + 40) = 1;
  v103 = v184;
  *(v102 + 64) = v99;
  *(v102 + 72) = v103;
  *(v102 + 80) = 0xD000000000000020;
  *(v102 + 88) = 0x80000001CA9A4DB0;
  v104 = v174;
  *(v102 + 104) = v98;
  *(v102 + 112) = v104;
  *(v102 + 120) = 1;
  v105 = v183;
  *(v102 + 144) = v99;
  *(v102 + 152) = v105;
  *(v102 + 160) = 0x746573657270;
  *(v102 + 168) = 0xE600000000000000;
  v106 = v182;
  *(v102 + 184) = v98;
  *(v102 + 192) = v106;
  v107 = sub_1CA94C438("Preset (preset)", 15);
  v109 = v108;
  v110 = sub_1CA94C438("Preset", 6);
  v112 = v111;
  v174 = &v171;
  MEMORY[0x1EEE9AC00](v110);
  v113 = &v171 - v198;
  sub_1CA948D98();
  v114 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v171 - v194;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v107, v109, v110, v112, 0, 0, v113, v115);
  *(v102 + 224) = v193;
  *(v102 + 200) = v117;
  *(v102 + 232) = sub_1CA94C368();
  *(v102 + 240) = 0x7247746573657270;
  *(v102 + 248) = 0xEB0000000070756FLL;
  v118 = MEMORY[0x1E69E6158];
  v119 = v171;
  *(v102 + 264) = MEMORY[0x1E69E6158];
  *(v102 + 272) = v119;
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_1CA97EDF0;
  v121 = swift_allocObject();
  *(v121 + 16) = v181;
  strcpy((v121 + 32), "WFParameterKey");
  *(v121 + 47) = -18;
  *(v121 + 48) = 0x657250796C707061;
  *(v121 + 56) = 0xEB00000000746573;
  v123 = v175;
  v122 = v176;
  *(v121 + 72) = v118;
  *(v121 + 80) = v123;
  *(v121 + 88) = v122;
  *(v121 + 96) = 1;
  *(v121 + 120) = MEMORY[0x1E69E6370];
  *(v121 + 128) = 0x72756F7365524657;
  *(v121 + 168) = v118;
  *(v121 + 136) = 0xEF7373616C436563;
  v124 = v173;
  *(v121 + 144) = 0xD00000000000001BLL;
  *(v121 + 152) = v124;
  *(v120 + 32) = sub_1CA94C1E8();
  v125 = swift_allocObject();
  *(v125 + 16) = v181;
  strcpy((v125 + 32), "WFParameterKey");
  *(v125 + 47) = -18;
  *(v125 + 48) = 0x7247746573657270;
  *(v125 + 56) = 0xEB0000000070756FLL;
  *(v125 + 72) = v118;
  *(v125 + 80) = 0xD000000000000013;
  *(v125 + 88) = 0x80000001CA9939F0;
  *(v125 + 96) = 16191;
  *(v125 + 104) = 0xE200000000000000;
  *(v125 + 120) = v118;
  *(v125 + 128) = 0x72756F7365524657;
  *(v125 + 168) = v118;
  *(v125 + 136) = 0xEF7373616C436563;
  *(v125 + 144) = 0xD00000000000001BLL;
  *(v125 + 152) = v124;
  *(v120 + 40) = sub_1CA94C1E8();
  *(v102 + 304) = v178;
  *(v102 + 280) = v120;
  v126 = sub_1CA94C1E8();
  v127 = sub_1CA2F864C(v126);
  *(v192 + 48) = v127;
  v128 = swift_allocObject();
  *(v128 + 16) = v186;
  v129 = v179;
  *(v128 + 32) = v184;
  *(v128 + 40) = v129;
  *(v128 + 48) = 0x80000001CA99B030;
  v130 = v183;
  *(v128 + 64) = v118;
  *(v128 + 72) = v130;
  *(v128 + 80) = 0x7475706E494657;
  *(v128 + 88) = 0xE700000000000000;
  v131 = v182;
  *(v128 + 104) = v118;
  *(v128 + 112) = v131;
  v132 = sub_1CA94C438("Photos (WFInput)", 16);
  v185 = v133;
  *&v186 = v132;
  v134 = sub_1CA94C438("Photos", 6);
  *&v184 = v135;
  v189 = &v171;
  MEMORY[0x1EEE9AC00](v134);
  v136 = &v171 - v198;
  sub_1CA948D98();
  v137 = v195;
  v138 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = v194;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v128 + 120) = sub_1CA2F9F14(v186, v185, v134, v184, 0, 0, v136, &v171 - v139);
  v141 = v193;
  *(v128 + 144) = v193;
  *(v128 + 152) = @"Placeholder";
  v142 = @"Placeholder";
  v143 = sub_1CA94C438("Photos (WFInput)", 16);
  v185 = v144;
  *&v186 = v143;
  v145 = sub_1CA94C438("Photos", 6);
  v147 = v146;
  v189 = &v171;
  MEMORY[0x1EEE9AC00](v145);
  v148 = &v171 - v198;
  sub_1CA948D98();
  v149 = [v137 bundleURL];
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v186, v185, v145, v147, 0, 0, v148, &v171 - v139);
  *(v128 + 184) = v141;
  *(v128 + 160) = v151;
  v152 = sub_1CA94C1E8();
  v153 = sub_1CA2F864C(v152);
  v154 = v192;
  *(v192 + 56) = v153;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v156 = v190;
  v190[40] = v154;
  v156[43] = v155;
  v156[44] = @"ParameterSummary";
  v157 = @"ParameterSummary";
  v158 = sub_1CA94C438("Import ${WFInput} to Lightroom (Parameter Summary)", 50);
  v160 = v159;
  v161 = sub_1CA94C438("Import ${WFInput} to Lightroom", 30);
  v163 = v162;
  v193 = &v171;
  MEMORY[0x1EEE9AC00](v161);
  v164 = &v171 - v198;
  sub_1CA948D98();
  v165 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = &v171 - v194;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v158, v160, v161, v163, 0, 0, v164, v166);
  v169 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v156[48] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v156[45] = v169;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id WFDictionaryParameterKeyValuePair.init(key:value:identity:)(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_1CA948D28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  sub_1CA339294(a3, &v17 - v11);
  if (__swift_getEnumTagSinglePayload(v12, 1, v6) == 1)
  {
    sub_1CA339304(v12);
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v5 value:a2];

    sub_1CA339304(a3);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v15 = sub_1CA948CD8();
    v13 = [v14 initWithKey:v5 value:a2 identity:v15];

    sub_1CA339304(a3);
    (*(v7 + 8))(v9, v6);
  }

  return v13;
}

uint64_t sub_1CA339294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA339304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WFDictionaryParameterKeyValuePair.key.getter@<X0>(void *a1@<X8>)
{
  result = [v1 key];
  *a1 = result;
  return result;
}

id sub_1CA3393DC()
{
  v142 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A4E80;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("title", 5);
  v6 = v5;
  v7 = sub_1CA94C438("title", 5);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v149 = v11;
  v147 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v133 - v147;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v146 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v150 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v133 - v151;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v148 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v145 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Returns the name of every item passed as input. Depending on the input, this could be a file name, the title of a website, the title of a calendar event, etc.", 158);
  *&v143 = v24;
  v25 = sub_1CA94C438("Returns the name of every item passed as input. Depending on the input, this could be a file name, the title of a website, the title of a calendar event, etc.", 158);
  v27 = v26;
  v144 = &v133;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v133 - v147;
  sub_1CA948D98();
  v29 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v133 - v151;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v143, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v148;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v145;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "textformat.alt");
  *(inited + 215) = -18;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v143 = xmmword_1CA981350;
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
  *(v37 + 184) = 0xE500000000000000;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v145;
  *(v37 + 192) = &unk_1F49F4A68;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v144 = v43;
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438("Get Name (Action Name)", 22);
  v138 = v46;
  v139 = v45;
  v47 = sub_1CA94C438("Get Name", 8);
  v137 = v48;
  v140 = &v133;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v147;
  sub_1CA948D98();
  v50 = v146;
  v51 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v133 - v151;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v139, v138, v47, v137, 0, 0, &v133 - v49, v52);
  v54 = v148;
  *(inited + 304) = v148;
  *(inited + 312) = @"Output";
  v55 = swift_initStackObject();
  *(v55 + 16) = v143;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x656C7069746C754DLL;
  *(v55 + 88) = 0xE800000000000000;
  *(v55 + 96) = 1;
  *(v55 + 120) = MEMORY[0x1E69E6370];
  *(v55 + 128) = 0x614E74757074754FLL;
  *(v55 + 136) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438("Name (Default Output Name)", 26);
  v139 = v58;
  v140 = v57;
  v59 = sub_1CA94C438("Name", 4);
  v138 = v60;
  v141 = &v133;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v133 - v49;
  sub_1CA948D98();
  v62 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v133 - v151;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v140, v139, v59, v138, 0, 0, v61, v63);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v145;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F49F4A98;
  v65 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v144;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_1CA981360;
  v144 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = v143;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000019;
  *(v66 + 48) = 0x80000001CA99B030;
  *(v66 + 64) = v65;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0x7475706E494657;
  *(v66 + 88) = 0xE700000000000000;
  *(v66 + 104) = v65;
  *(v66 + 112) = @"Label";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v138 = v67;
  v140 = v68;
  v141 = v69;
  v70 = @"Parameters";
  v71 = sub_1CA94C438("Item (WFInput)", 14);
  v135 = v72;
  v136 = v71;
  v134 = sub_1CA94C438("Item", 4);
  v74 = v73;
  v137 = &v133;
  MEMORY[0x1EEE9AC00](v134);
  v75 = v147;
  sub_1CA948D98();
  v76 = v146;
  v77 = [v146 bundleURL];
  v133 = &v133;
  *&v143 = inited;
  MEMORY[0x1EEE9AC00](v77);
  v78 = v151;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 120) = sub_1CA2F9F14(v136, v135, v134, v74, 0, 0, &v133 - v75, &v133 - v78);
  *(v66 + 144) = v148;
  *(v66 + 152) = @"Placeholder";
  v80 = @"Placeholder";
  v81 = sub_1CA94C438("Item (WFInput)", 14);
  v135 = v82;
  v136 = v81;
  v83 = sub_1CA94C438("Item", 4);
  v134 = v84;
  v137 = &v133;
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948D98();
  v85 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v136, v135, v83, v134, 0, 0, &v133 - v75, &v133 - v78);
  *(v66 + 184) = v148;
  *(v66 + 160) = v87;
  _s3__C3KeyVMa_0(0);
  v137 = v88;
  v136 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v89 = sub_1CA94C1E8();
  v90 = sub_1CA2F864C(v89);
  *(v145 + 32) = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1CA981370;
  *(v91 + 32) = v138;
  *(v91 + 40) = 0xD000000000000011;
  *(v91 + 48) = 0x80000001CA99E620;
  *(v91 + 64) = MEMORY[0x1E69E6158];
  *(v91 + 72) = @"DefaultValue";
  *(v91 + 80) = 1;
  *(v91 + 104) = MEMORY[0x1E69E6370];
  *(v91 + 112) = @"Description";
  v92 = @"DefaultValue";
  v93 = @"Description";
  v138 = sub_1CA94C438("If this option is enabled, and a URL is passed in, this action will fetch the title of the corresponding web page. (GetWebPageTitle)", 132);
  v135 = v94;
  v95 = sub_1CA94C438("If this option is enabled, and a URL is passed in, this action will fetch the title of the corresponding web page.", 114);
  v134 = v96;
  v139 = &v133;
  MEMORY[0x1EEE9AC00](v95);
  v97 = v147;
  sub_1CA948D98();
  v98 = v146;
  v99 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v133 - v151;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v91 + 120) = sub_1CA2F9F14(v138, v135, v95, v134, 0, 0, &v133 - v97, v100);
  v102 = v140;
  *(v91 + 144) = v148;
  *(v91 + 152) = v102;
  *(v91 + 160) = 0x6150626557746547;
  *(v91 + 168) = 0xEF656C7469546567;
  v103 = v141;
  *(v91 + 184) = MEMORY[0x1E69E6158];
  *(v91 + 192) = v103;
  v104 = sub_1CA94C438("Get Web Page Title (GetWebPageTitle)", 36);
  v139 = v105;
  v140 = v104;
  v106 = sub_1CA94C438("Get Web Page Title", 18);
  v138 = v107;
  v141 = &v133;
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948D98();
  v108 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v133 - v151;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v140, v139, v106, v138, 0, 0, &v133 - v97, v109);
  *(v91 + 224) = v148;
  *(v91 + 200) = v111;
  v112 = sub_1CA94C1E8();
  v113 = sub_1CA2F864C(v112);
  v114 = v145;
  *(v145 + 40) = v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v116 = v143;
  *(v143 + 360) = v114;
  *(v116 + 384) = v115;
  *(v116 + 392) = @"ParameterSummary";
  v117 = @"ParameterSummary";
  v118 = sub_1CA94C438("Get name of ${WFInput} (Parameter Summary)", 42);
  v120 = v119;
  v121 = sub_1CA94C438("Get name of ${WFInput}", 22);
  v123 = v122;
  v148 = &v133;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v133 - v147;
  sub_1CA948D98();
  v125 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v133 - v151;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v118, v120, v121, v123, 0, 0, v124, v126);
  v129 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v130 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v116 + 400) = v129;
  *(v116 + 424) = v130;
  *(v116 + 432) = @"ResidentCompatible";
  *(v116 + 464) = MEMORY[0x1E69E6370];
  *(v116 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v131 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id WFLinkContentItemFilterAction.propertyQuery.getter()
{
  sub_1CA949F78();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_18();
  v6 = sub_1CA94C3A8();
  v8 = sub_1CA33A8B4(v6, v7, &unk_1EC445A50, &unk_1CA989900);

  if (v8)
  {
    v9 = [v1 queryMetadata];
    v10 = [v1 identifier];
    v11 = sub_1CA94C3A8();
    v13 = v12;

    v14 = TableTemplateValue<>.propertyQuery(metadata:actionIdentifier:)(v9, v11, v13);

    return v14;
  }

  else
  {
    sub_1CA949C58();
    v16 = sub_1CA949F68();
    v17 = sub_1CA94CC18();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      OUTLINED_FUNCTION_3_14(&dword_1CA256000, v19, v20, "Unable to find processed table template value for content item filter");
      MEMORY[0x1CCAA4BF0](v18, -1, -1);
    }

    (*(v4 + 8))(v2, v0);
    sub_1CA25B3D0(0, &qword_1EC444668, 0x1E69AC770);
    return sub_1CA33A808(MEMORY[0x1E69E7CC0]);
  }
}

id sub_1CA33A808(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EC444678, 0x1E69AC760);
  v1 = sub_1CA94C648();

  v2 = [swift_getObjCClassFromMetadata() andComparisons_];

  return v2;
}

uint64_t sub_1CA33A8B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = [v4 parameterValueForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

  if (v8)
  {
    sub_1CA94D258();
    v9 = swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (OUTLINED_FUNCTION_2_18(v9))
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1CA2C0A74(v14);
    return 0;
  }
}

uint64_t sub_1CA33A988(uint64_t a1)
{
  v2 = sub_1CA94C368();
  sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
  v3 = [v1 parameterValueForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_1CA94D258();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (OUTLINED_FUNCTION_2_18(v4))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1CA2C0A74(v9);
    return 0;
  }
}

uint64_t WFLinkContentItemFilterAction.spotlightQuery.getter()
{
  sub_1CA949F78();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_18();
  v6 = sub_1CA94C3A8();
  v8 = sub_1CA33A8B4(v6, v7, &unk_1EC445A50, &unk_1CA989900);

  if (v8)
  {
    v9 = [v1 identifier];
    v10 = sub_1CA94C3A8();
    v12 = v11;

    v13 = [v1 entityMetadata];
    v14 = TableTemplateValue<>.spotlightQuery(actionIdentifier:metadata:)(v10, v12, v13);

    sub_1CA440D44();
    v16 = v15;
  }

  else
  {
    sub_1CA949C58();
    v17 = sub_1CA949F68();
    v18 = sub_1CA94CC18();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      OUTLINED_FUNCTION_3_14(&dword_1CA256000, v20, v21, "Unable to find processed table template value for content item filter");
      MEMORY[0x1CCAA4BF0](v19, -1, -1);
    }

    (*(v4 + 8))(v2, v0);
    return 0;
  }

  return v16;
}

id sub_1CA33ACE0()
{
  v28[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A51B0;
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
  v7 = sub_1CA94C438("Edit Reminder (Action Name)", 27, v28[0]);
  v9 = v8;
  v10 = sub_1CA94C438("Edit Reminder", 13);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"RequiredResources";
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4B08;
  *(inited + 184) = v23;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v24 = @"RequiredResources";
  v25 = @"ResidentCompatible";
  v26 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v26;
  *(inited + 240) = 0xD000000000000015;
  *(inited + 248) = 0x80000001CA993900;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA33B0C4()
{
  v78 = sub_1CA94B4D8();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v68 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v80 = sub_1CA94C438("wireless|accessories|accessory|turn|tethering|cellular|internet|sharing|data|3g|4g|5g", 85);
  v6 = v5;
  v7 = sub_1CA94C438("wireless|accessories|accessory|turn|tethering|cellular|internet|sharing|data|3g|4g|5g", 85);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = v11;
  v75 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v68 - v75;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v72 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v81 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  *&v82 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v68 - v82;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v80, v6, v7, v9, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v73 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v80 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionNote";
  v25 = @"Description";
  v26 = @"DescriptionNote";
  v27 = sub_1CA94C438("When turning Personal Hotspot on, this action will make the hotspot discoverable for only a short period of time, in order to preserve battery life.", 148);
  v69 = v28;
  v70 = v27;
  v68 = sub_1CA94C438("When turning Personal Hotspot on, this action will make the hotspot discoverable for only a short period of time, in order to preserve battery life.", 148);
  v30 = v29;
  v71 = &v68;
  MEMORY[0x1EEE9AC00](v68);
  v31 = v75;
  sub_1CA948D98();
  v32 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v68 - v82;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v70, v69, v68, v30, 0, 0, &v68 - v31, v33);
  v35 = v73;
  *(v24 + 64) = v73;
  *(v24 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438("Sets the device's Personal Hotspot to on or off.", 48);
  v69 = v38;
  v70 = v37;
  v39 = sub_1CA94C438("Sets the device's Personal Hotspot to on or off.", 48);
  v41 = v40;
  v71 = &v68;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v68 - v31;
  sub_1CA948D98();
  v43 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v68 - v82;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v70, v69, v39, v41, 0, 0, v42, v44);
  *(v24 + 104) = v35;
  *(v24 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v47 = sub_1CA94C1E8();
  v48 = v80;
  *(inited + 160) = sub_1CA6B3784(v47);
  *(inited + 184) = v48;
  *(inited + 192) = @"DisabledOnPlatforms";
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F49F4B78;
  *(inited + 224) = v49;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v50 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x6C616E6F73726570;
  *(inited + 288) = 0xEF746F7073746F68;
  *(inited + 304) = v50;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  v51 = @"DisabledOnPlatforms";
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"InputPassthrough";
  v55 = sub_1CA94C368();
  *(inited + 384) = v50;
  *(inited + 352) = v55;
  *(inited + 360) = 0xD00000000000005ALL;
  *(inited + 368) = 0x80000001CA9A5350;
  *(inited + 392) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v56 = swift_initStackObject();
  v82 = xmmword_1CA981310;
  *(v56 + 16) = xmmword_1CA981310;
  *(v56 + 32) = 0x6574617473;
  *(v56 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_initStackObject();
  *(v57 + 16) = v82;
  *(v57 + 64) = v50;
  *(v57 + 32) = @"Key";
  *(v57 + 40) = 0x65756C61566E4FLL;
  *(v57 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v58 = @"Key";
  v59 = sub_1CA94C1E8();
  *(v56 + 48) = sub_1CA2F864C(v59);
  v60 = sub_1CA94C1E8();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 400) = v60;
  *(inited + 424) = v61;
  *(inited + 432) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1CA9813B0;
  v63 = v77;
  (*(v76 + 104))(v77, *MEMORY[0x1E69DB3E0], v78);
  v64 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource(0));
  v65 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v63);
  *(v62 + 32) = v66;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  *(inited + 440) = v62;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static ActionAvailabilityRequestResolver.isActionAvailable(for:)()
{
  v1 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v36 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA949AA8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_16(v10, v34[0]);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_15();
  v15 = *(v0 + 16);
  v16 = OUTLINED_FUNCTION_3_15();
  v15(v16);
  v17 = OUTLINED_FUNCTION_4_17();
  v19 = v18(v17);
  if (v19 == *MEMORY[0x1E69E0700])
  {
    v20 = WFWritingToolsAvailabilityResource;
LABEL_5:
    v21 = v14;
    goto LABEL_6;
  }

  if (v19 == *MEMORY[0x1E69E0720])
  {
    v20 = WFLLMActionAvailabilityResource;
    goto LABEL_5;
  }

  v21 = v14;
  if (v19 == *MEMORY[0x1E69E0708])
  {
    v20 = type metadata accessor for WFPhotosMemoryCreationAvailabilityResource();
  }

  else if (v19 == *MEMORY[0x1E69E0710])
  {
    v20 = type metadata accessor for WFImagePlaygroundAvailabilityResource();
  }

  else
  {
    if (v19 != *MEMORY[0x1E69E0718])
    {
      result = sub_1CA94D7E8();
      __break(1u);
      return result;
    }

    v20 = type metadata accessor for WFVisualIntelligenceCameraAvailabilityResource();
  }

LABEL_6:
  v22 = [objc_allocWithZone(v20) init];
  v35 = [v22 isAvailable];

  v23 = v5;
  sub_1CA949C58();
  v24 = OUTLINED_FUNCTION_3_15();
  v15(v24);
  v25 = sub_1CA949F68();
  v26 = sub_1CA94CC38();
  if (os_log_type_enabled(v25, v26))
  {
    swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_7_11();
    v37 = v27;
    *v1 = 136315394;
    (v15)(v34[2], v21, v6);
    v28 = sub_1CA94C408();
    v30 = v29;
    (*(v8 + 8))(v21, v6);
    v31 = sub_1CA26B54C(v28, v30, &v37);

    *(v1 + 4) = v31;
    *(v1 + 12) = 1024;
    v32 = v35;
    *(v1 + 14) = v35;
    _os_log_impl(&dword_1CA256000, v25, v26, "Resolved action availability request %s %{BOOL}d", v1, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    (*(v36 + 8))(v23, v34[1]);
    return v32;
  }

  else
  {

    (*(v8 + 8))(v21, v6);
    (*(v36 + 8))(v5, v1);
    return v35;
  }
}

uint64_t static ActionAvailabilityRequestResolver.isActionAvailable(for:)(uint64_t a1)
{
  v3 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CA94B018();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_16(v13, v41[0]);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v41 - v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_15();
  v18 = OUTLINED_FUNCTION_3_15();
  v20 = v19;
  (v19)(v18);
  v21 = OUTLINED_FUNCTION_4_17();
  v23 = v22(v21);
  v24 = *MEMORY[0x1E69DB1F8];
  v41[3] = v11;
  if (v23 == v24)
  {
    v42 = 1;
  }

  else
  {
    if (v23 == *MEMORY[0x1E69DB1D8])
    {
      v1 = v8;
      v8 = v17;
      v25 = WFWritingToolsAvailabilityResource;
    }

    else if (v23 == *MEMORY[0x1E69DB1D0])
    {
      v1 = v8;
      v8 = v17;
      v25 = WFLLMActionAvailabilityResource;
    }

    else if (v23 == *MEMORY[0x1E69DB1E0])
    {
      OUTLINED_FUNCTION_2_19();
      v25 = type metadata accessor for WFPhotosMemoryCreationAvailabilityResource();
    }

    else if (v23 == *MEMORY[0x1E69DB1E8])
    {
      OUTLINED_FUNCTION_2_19();
      v25 = type metadata accessor for WFImagePlaygroundAvailabilityResource();
    }

    else
    {
      if (v23 != *MEMORY[0x1E69DB1F0])
      {
        result = sub_1CA94D7E8();
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_2_19();
      v25 = type metadata accessor for WFVisualIntelligenceCameraAvailabilityResource();
    }

    v26 = [objc_allocWithZone(v25) init];
    v42 = [v26 isAvailable];

    v17 = v8;
    v8 = v1;
  }

  sub_1CA949C58();
  v20(v17, a1, v9);
  v27 = sub_1CA949F68();
  v28 = sub_1CA94CC38();
  if (os_log_type_enabled(v27, v28))
  {
    swift_slowAlloc();
    v29 = OUTLINED_FUNCTION_7_11();
    v41[0] = v5;
    v30 = v29;
    v43 = v29;
    *v3 = 136315394;
    v20(v41[2], v17, v9);
    v31 = sub_1CA94C408();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_5_16();
    v35(v34);
    v36 = sub_1CA26B54C(v31, v33, &v43);

    *(v3 + 4) = v36;
    *(v3 + 12) = 1024;
    v37 = v42;
    *(v3 + 14) = v42;
    _os_log_impl(&dword_1CA256000, v27, v28, "Resolved action availability request %s %{BOOL}d", v3, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    (*(v41[0] + 8))(v8, v41[1]);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_5_16();
    v39(v38);
    (*(v5 + 8))(v8, v3);
    return v42;
  }

  return v37;
}

id sub_1CA33C2F0(void *a1)
{
  sub_1CA948898();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444690, &unk_1CA983A20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  if (!a1)
  {
    OUTLINED_FUNCTION_1_17(v17 - v9);
    goto LABEL_5;
  }

  v11 = [a1 value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v12 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v10, v12 ^ 1u, 1, v1);
  OUTLINED_FUNCTION_41(v10);
  if (v13)
  {
LABEL_5:
    sub_1CA30F7DC(v10, &qword_1EC444690, &unk_1CA983A20);
    return 0;
  }

  (*(v4 + 32))(v7, v10, v1);
  v14 = sub_1CA948878();
  v15 = [objc_allocWithZone(WFDateIntervalParameterState) initWithValue_];

  (*(v4 + 8))(v7, v1);
  return v15;
}

id sub_1CA33C540(uint64_t a1)
{
  sub_1CA948898();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444690, &unk_1CA983A20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - v10;
  sub_1CA33C7B4(a1, v21);
  if (!v22)
  {
    sub_1CA30F7DC(v21, &unk_1EC444650, &unk_1CA981C70);
    OUTLINED_FUNCTION_1_17(v11);
    goto LABEL_5;
  }

  v12 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v11, v12 ^ 1u, 1, v1);
  OUTLINED_FUNCTION_41(v11);
  if (v13)
  {
LABEL_5:
    sub_1CA30F7DC(v11, &qword_1EC444690, &unk_1CA983A20);
    return 0;
  }

  (*(v4 + 32))(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v1);
  v14 = sub_1CA94CC88();
  MEMORY[0x1EEE9AC00](v14);
  v15 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v15, v8, v1);
  v16 = MEMORY[0x1CCAA1AA0](v15);
  v22 = v14;
  v21[0] = v16;
  sub_1CA25B3D0(0, &qword_1EC444698, 0x1E69AC750);
  v17 = sub_1CA94CDA8();
  v18 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v19 = sub_1CA320AB4(v21, v17);
  (*(v4 + 8))(v8, v1);
  return v19;
}

uint64_t sub_1CA33C7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444650, &unk_1CA981C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA33C8BC(uint64_t a1)
{
  sub_1CA948898();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - v10;
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    return 0;
  }

  v13 = [v12 value];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444690, &unk_1CA983A20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v27 - v16;
  OUTLINED_FUNCTION_1_17(v27 - v16);
  sub_1CA33CD10();
  sub_1CA94D6D8();

  OUTLINED_FUNCTION_41(v17);
  if (v18)
  {
    return 0;
  }

  v20 = *(v4 + 32);
  v20(v11, v17, v1);
  v20(v9, v11, v1);
  v21 = sub_1CA94CC88();
  MEMORY[0x1EEE9AC00](v21);
  v22 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v22, v9, v1);
  v23 = MEMORY[0x1CCAA1AA0](v22);
  v27[3] = v21;
  v27[0] = v23;
  sub_1CA25B3D0(0, &qword_1EC444698, 0x1E69AC750);
  v24 = sub_1CA94CDA8();
  v25 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v26 = sub_1CA320AB4(v27, v24);
  (*(v4 + 8))(v9, v1);
  return v26;
}

id WFLinkActionDateIntervalParameterDefinition.__allocating_init(valueType:parameterMetadata:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithValueType:a1 parameterMetadata:a2];

  return v5;
}

id WFLinkActionDateIntervalParameterDefinition.init(valueType:parameterMetadata:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFLinkActionDateIntervalParameterDefinition();
  v5 = objc_msgSendSuper2(&v7, sel_initWithValueType_parameterMetadata_, a1, a2);

  return v5;
}

id WFLinkActionDateIntervalParameterDefinition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFLinkActionDateIntervalParameterDefinition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CA33CD10()
{
  result = qword_1EC4446A0;
  if (!qword_1EC4446A0)
  {
    sub_1CA948898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4446A0);
  }

  return result;
}

id sub_1CA33CDB4()
{
  v0 = sub_1CA949D18();
  v122 = *(v0 - 8);
  v123 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v121 = v113 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFShareAction");
  *(inited + 54) = -4864;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v128 = sub_1CA94C438("share|file|document|send", 24);
  v7 = v6;
  v8 = sub_1CA94C438("share|file|document|send", 24);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v130 = v12;
  v131 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v113 - v131;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v127 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v129 = v16;
  v126 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v113 - v126;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v128, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v128 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v125 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v120 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438("Prompts to share the specified content.", 39);
  v118 = v25;
  v26 = sub_1CA94C438("Prompts to share the specified content.", 39);
  v28 = v27;
  v119 = v113;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v113 - v131;
  sub_1CA948D98();
  v30 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v113 - v126;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v118, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v128;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v125;
  *(inited + 120) = sub_1CA6B3784(v34);
  *(inited + 144) = v35;
  *(inited + 152) = @"DisabledOnPlatforms";
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4BB8;
  *(inited + 184) = v36;
  *(inited + 192) = @"IconColor";
  v125 = v36;
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v37 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000013;
  *(inited + 248) = 0x80000001CA99AFE0;
  *(inited + 264) = v37;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v37;
  *(inited + 312) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = v37;
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 216) = v36;
  *(v38 + 184) = 0xE500000000000000;
  *(v38 + 192) = &unk_1F49F4BE8;
  v40 = @"DisabledOnPlatforms";
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"IconSymbolColor";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v45;
  *(inited + 344) = v46;
  *(inited + 352) = @"InputPassthrough";
  *(inited + 360) = 1;
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 392) = @"Name";
  v47 = @"InputPassthrough";
  v48 = @"Name";
  v49 = sub_1CA94C438("Share (Action Name)", 19);
  v51 = v50;
  v52 = sub_1CA94C438("Share", 5);
  v54 = v53;
  v119 = v113;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v113 - v131;
  sub_1CA948D98();
  v56 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v113 - v126;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  *(inited + 424) = v128;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 1) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CA981370;
  *(v59 + 32) = @"Class";
  *(v59 + 40) = 0xD000000000000019;
  *(v59 + 48) = 0x80000001CA99B030;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 64) = MEMORY[0x1E69E6158];
  *(v59 + 72) = @"Key";
  *(v59 + 80) = 0x7475706E494657;
  *(v59 + 88) = 0xE700000000000000;
  *(v59 + 104) = v60;
  *(v59 + 112) = @"Label";
  v61 = @"Parameters";
  v62 = @"Class";
  v63 = @"Key";
  v64 = @"Label";
  v65 = sub_1CA94C438("Content (WFInput)", 17);
  v115 = v66;
  v116 = v65;
  v67 = sub_1CA94C438("Content", 7);
  v114 = v68;
  v117 = v113;
  MEMORY[0x1EEE9AC00](v67);
  v69 = v113 - v131;
  sub_1CA948D98();
  v70 = v127;
  v71 = [v127 bundleURL];
  v113[1] = v113;
  MEMORY[0x1EEE9AC00](v71);
  v72 = v126;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 120) = sub_1CA2F9F14(v116, v115, v67, v114, 0, 0, v69, v113 - v72);
  *(v59 + 144) = v128;
  *(v59 + 152) = @"Placeholder";
  v74 = @"Placeholder";
  v75 = sub_1CA94C438("Input (WFInput)", 15);
  v115 = v76;
  v116 = v75;
  v77 = sub_1CA94C438("Input", 5);
  v79 = v78;
  v117 = v113;
  MEMORY[0x1EEE9AC00](v77);
  v80 = v113 - v131;
  sub_1CA948D98();
  v81 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 160) = sub_1CA2F9F14(v116, v115, v77, v79, 0, 0, v80, v113 - v72);
  *(v59 + 184) = v128;
  *(v59 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v83 = swift_allocObject();
  *(v83 + 16) = v120;
  v84 = @"PreferredTypes";
  v85 = v121;
  sub_1CA949CA8();
  v86 = sub_1CA949C68();
  v88 = v87;
  (*(v122 + 8))(v85, v123);
  *(v83 + 32) = v86;
  *(v83 + 40) = v88;
  *(v59 + 224) = v125;
  *(v59 + 200) = v83;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v89 = sub_1CA94C1E8();
  v90 = sub_1CA2F864C(v89);
  v91 = v119;
  v119[4] = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v91;
  *(inited + 464) = v92;
  *(inited + 472) = @"ParameterSummary";
  v93 = @"ParameterSummary";
  v94 = sub_1CA94C438("Share ${WFInput} (Parameter Summary)", 36);
  v96 = v95;
  v97 = sub_1CA94C438("Share ${WFInput}", 16);
  v99 = v98;
  v128 = v113;
  MEMORY[0x1EEE9AC00](v97);
  v100 = v113 - v131;
  sub_1CA948D98();
  v101 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = v113 - v126;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v105;
  *(inited + 504) = v106;
  *(inited + 512) = @"RequiredResources";
  v107 = v125;
  *(inited + 544) = v125;
  *(inited + 520) = &unk_1F49F4C18;
  *(inited + 552) = @"UserInterfaceClasses";
  v108 = @"RequiredResources";
  v109 = @"UserInterfaceClasses";
  v110 = sub_1CA94C1E8();
  *(inited + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 560) = v110;
  *(inited + 592) = @"UserInterfaces";
  *(inited + 624) = v107;
  *(inited + 600) = &unk_1F49F4CA8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v111 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA33DC8C()
{
  v251 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9A5520;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("text|pdf|ocr|string|scan", 24);
  v6 = v5;
  v7 = sub_1CA94C438("text|pdf|ocr|string|scan", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v265 = v11;
  v268 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v242 - v268;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v267 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v269 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v266 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v242 - v266;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v264 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v262 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Gets text from the provided PDF file.", 37);
  v25 = v24;
  v26 = sub_1CA94C438("Gets text from the provided PDF file.", 37);
  v28 = v27;
  v261 = &v242;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v242 - v268;
  sub_1CA948D98();
  v30 = [v267 bundleURL];
  v263 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v242 - v266;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v264;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v262;
  v37 = sub_1CA6B3784(v35);
  v38 = v263;
  v263[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconName";
  v38[20] = 1954047316;
  v38[21] = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"Input";
  v40 = v39;
  v41 = v38;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v42 = swift_initStackObject();
  v257 = xmmword_1CA981350;
  *(v42 + 16) = xmmword_1CA981350;
  *(v42 + 32) = 0x656C7069746C754DLL;
  *(v42 + 40) = 0xE800000000000000;
  v43 = MEMORY[0x1E69E6370];
  *(v42 + 48) = 0;
  *(v42 + 72) = v43;
  strcpy((v42 + 80), "ParameterKey");
  *(v42 + 93) = 0;
  *(v42 + 94) = -5120;
  *(v42 + 96) = 0x7475706E494657;
  *(v42 + 104) = 0xE700000000000000;
  *(v42 + 120) = v40;
  *(v42 + 128) = 0x6465726975716552;
  *(v42 + 136) = 0xE800000000000000;
  *(v42 + 144) = 1;
  *(v42 + 168) = v43;
  *(v42 + 176) = 0x7365707954;
  *(v42 + 184) = 0xE500000000000000;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v42 + 216) = v256;
  *(v42 + 192) = &unk_1F49F4CE8;
  v44 = @"IconName";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v262 = v47;
  v41[25] = v46;
  v41[28] = v47;
  v41[29] = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438("Get Text from PDF (Action Name)", 31);
  v258 = v50;
  v259 = v49;
  v51 = sub_1CA94C438("Get Text from PDF", 17);
  v255 = v52;
  v260 = &v242;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v242 - v268;
  sub_1CA948D98();
  v54 = v267;
  v55 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v266;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v58 = sub_1CA2F9F14(v259, v258, v51, v255, 0, 0, v53, &v242 - v56);
  v59 = v263;
  v60 = v264;
  v263[30] = v58;
  v59[33] = v60;
  v59[34] = @"Output";
  v61 = swift_initStackObject();
  *(v61 + 16) = v257;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x63696C627550;
  *(v61 + 56) = 0xE600000000000000;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  *(v61 + 96) = 1;
  *(v61 + 120) = MEMORY[0x1E69E6370];
  *(v61 + 128) = 0x614E74757074754FLL;
  *(v61 + 136) = 0xEA0000000000656DLL;
  v62 = @"Output";
  v63 = sub_1CA94C438("Text (Default Output Name)", 26);
  v259 = v64;
  v260 = v63;
  v258 = sub_1CA94C438("Text", 4);
  v66 = v65;
  v261 = &v242;
  MEMORY[0x1EEE9AC00](v258);
  v67 = &v242 - v268;
  sub_1CA948D98();
  v68 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 144) = sub_1CA2F9F14(v260, v259, v258, v66, 0, 0, v67, &v242 - v56);
  *(v61 + 168) = v60;
  *(v61 + 176) = 0x7365707954;
  v70 = v256;
  *(v61 + 216) = v256;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 192) = &unk_1F49F4D18;
  v71 = MEMORY[0x1E69E6158];
  v72 = sub_1CA94C1E8();
  v73 = v263;
  v263[35] = v72;
  v73[38] = v262;
  v73[39] = @"Parameters";
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_1CA981560;
  v261 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  v250 = xmmword_1CA981370;
  *(v74 + 16) = xmmword_1CA981370;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000015;
  *(v74 + 48) = 0x80000001CA99B1E0;
  *(v74 + 64) = v71;
  *(v74 + 72) = @"FilePickerSupportedTypes";
  *(v74 + 80) = &unk_1F49F4D58;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Key";
  *(v74 + 120) = 0x7475706E494657;
  *(v74 + 128) = 0xE700000000000000;
  *(v74 + 144) = v71;
  *(v74 + 152) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v249 = v78;
  v253 = v79;
  v254 = v80;
  v81 = @"Parameters";
  v82 = @"FilePickerSupportedTypes";
  v258 = sub_1CA94C438("PDF (WFInput)", 13);
  v252 = v83;
  v84 = sub_1CA94C438("PDF", 3);
  v86 = v85;
  v259 = &v242;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v242 - v268;
  sub_1CA948D98();
  v88 = v267;
  v89 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v242 - v266;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 160) = sub_1CA2F9F14(v258, v252, v84, v86, 0, 0, v87, v90);
  v92 = v264;
  *(v74 + 184) = v264;
  *(v74 + 192) = @"Placeholder";
  v252 = @"Placeholder";
  v258 = sub_1CA94C438("Document (WFInput)", 18);
  v248 = v93;
  v94 = sub_1CA94C438("Document", 8);
  v247 = v95;
  v259 = &v242;
  MEMORY[0x1EEE9AC00](v94);
  v96 = v268;
  sub_1CA948D98();
  v97 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v266;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v258, v248, v94, v247, 0, 0, &v242 - v96, &v242 - v98);
  *(v74 + 224) = v92;
  *(v74 + 200) = v100;
  _s3__C3KeyVMa_0(0);
  v259 = v101;
  v258 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  *(v262 + 32) = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1CA981380;
  v105 = v249;
  *(v104 + 32) = v249;
  *(v104 + 40) = 0xD000000000000016;
  *(v104 + 48) = 0x80000001CA99C4A0;
  v106 = MEMORY[0x1E69E6158];
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = @"DefaultValue";
  *(v104 + 80) = 1954047316;
  *(v104 + 88) = 0xE400000000000000;
  *(v104 + 104) = v106;
  *(v104 + 112) = @"Items";
  v255 = swift_allocObject();
  *&v255->data = xmmword_1CA981360;
  v107 = @"DefaultValue";
  v248 = v105;
  v249 = v107;
  v108 = @"Items";
  v109 = sub_1CA94C438("Text (WFGetTextFromPDFTextType)", 31);
  v245 = v110;
  v246 = v109;
  v111 = sub_1CA94C438("Text", 4);
  v244 = v112;
  v247 = &v242;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v113 = [v267 bundleURL];
  v243 = &v242;
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v246, v245, v111, v244, 0, 0, &v242 - v96, &v242 - v98);
  v255[1].isa = v115;
  v116 = sub_1CA94C438("Rich Text (WFGetTextFromPDFTextType)", 36);
  v245 = v117;
  v246 = v116;
  v118 = sub_1CA94C438("Rich Text", 9);
  v244 = v119;
  v247 = &v242;
  MEMORY[0x1EEE9AC00](v118);
  sub_1CA948D98();
  v120 = v267;
  v121 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v246, v245, v118, v244, 0, 0, &v242 - v96, &v242 - v98);
  v124 = v255;
  v255[1].info = v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v104 + 120) = v124;
  v126 = v253;
  v127 = v254;
  *(v104 + 144) = v125;
  *(v104 + 152) = v126;
  *(v104 + 160) = 0xD000000000000018;
  *(v104 + 168) = 0x80000001CA9A5620;
  *(v104 + 184) = MEMORY[0x1E69E6158];
  *(v104 + 192) = v127;
  v245 = v126;
  v255 = v127;
  v253 = sub_1CA94C438("Type (WFGetTextFromPDFTextType)", 31);
  v247 = v128;
  v129 = sub_1CA94C438("Type", 4);
  v246 = v130;
  v254 = &v242;
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v242 - v268;
  sub_1CA948D98();
  v132 = v120;
  v133 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  v134 = v266;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v104 + 200) = sub_1CA2F9F14(v253, v247, v129, v246, 0, 0, v131, &v242 - v134);
  v136 = v264;
  v137 = v252;
  *(v104 + 224) = v264;
  *(v104 + 232) = v137;
  v252 = v137;
  v253 = sub_1CA94C438("Type (WFGetTextFromPDFTextType)", 31);
  v247 = v138;
  v139 = sub_1CA94C438("Type", 4);
  v246 = v140;
  v254 = &v242;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v268;
  sub_1CA948D98();
  v142 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v253, v247, v139, v246, 0, 0, &v242 - v141, &v242 - v134);
  *(v104 + 264) = v136;
  *(v104 + 240) = v144;
  v145 = sub_1CA94C1E8();
  v146 = sub_1CA2F864C(v145);
  *(v262 + 40) = v146;
  v147 = swift_allocObject();
  *(v147 + 16) = v257;
  v247 = 0x80000001CA99B500;
  v148 = v248;
  *(v147 + 32) = v248;
  *(v147 + 40) = 0xD000000000000014;
  *(v147 + 48) = 0x80000001CA99B500;
  v149 = MEMORY[0x1E69E6158];
  v150 = v245;
  *(v147 + 64) = MEMORY[0x1E69E6158];
  *(v147 + 72) = v150;
  v246 = 0xD00000000000001ALL;
  *(v147 + 80) = 0xD00000000000001ALL;
  *(v147 + 88) = 0x80000001CA9A5670;
  v151 = v255;
  *(v147 + 104) = v149;
  *(v147 + 112) = v151;
  v253 = v148;
  v254 = v150;
  v255 = v151;
  v152 = sub_1CA94C438("Page Header Text (WFGetTextFromPDFPageHeader)", 45);
  v244 = v153;
  v245 = v152;
  v154 = sub_1CA94C438("Page Header Text", 16);
  v243 = v155;
  v248 = &v242;
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948D98();
  v156 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = v266;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v147 + 120) = sub_1CA2F9F14(v245, v244, v154, v243, 0, 0, &v242 - v141, &v242 - v157);
  v159 = v264;
  v160 = v252;
  *(v147 + 144) = v264;
  *(v147 + 152) = v160;
  v252 = v160;
  v161 = sub_1CA94C438("Page Header (WFGetTextFromPDFPageHeader)", 40);
  v244 = v162;
  v245 = v161;
  v163 = sub_1CA94C438("Page Header", 11);
  v243 = v164;
  v248 = &v242;
  MEMORY[0x1EEE9AC00](v163);
  v165 = &v242 - v268;
  sub_1CA948D98();
  v166 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v245, v244, v163, v243, 0, 0, v165, &v242 - v157);
  *(v147 + 184) = v159;
  *(v147 + 160) = v168;
  v169 = sub_1CA94C1E8();
  v170 = sub_1CA2F864C(v169);
  *(v262 + 48) = v170;
  v171 = swift_allocObject();
  *(v171 + 16) = v257;
  *(v171 + 32) = v253;
  *(v171 + 40) = 0xD000000000000014;
  v172 = v246;
  *(v171 + 48) = v247;
  v173 = MEMORY[0x1E69E6158];
  v174 = v254;
  *(v171 + 64) = MEMORY[0x1E69E6158];
  *(v171 + 72) = v174;
  *(v171 + 80) = v172;
  *(v171 + 88) = 0x80000001CA9A5720;
  v175 = v255;
  *(v171 + 104) = v173;
  *(v171 + 112) = v175;
  v176 = sub_1CA94C438("Page Footer Text (WFGetTextFromPDFPageFooter)", 45);
  v247 = v177;
  v248 = v176;
  v178 = sub_1CA94C438("Page Footer Text", 16);
  v246 = v179;
  *&v257 = &v242;
  MEMORY[0x1EEE9AC00](v178);
  v180 = v268;
  sub_1CA948D98();
  v181 = [v267 bundleURL];
  v245 = &v242;
  MEMORY[0x1EEE9AC00](v181);
  v182 = v266;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v171 + 120) = sub_1CA2F9F14(v248, v247, v178, v246, 0, 0, &v242 - v180, &v242 - v182);
  v184 = v252;
  *(v171 + 144) = v264;
  *(v171 + 152) = v184;
  v185 = sub_1CA94C438("Page Footer (WFGetTextFromPDFPageFooter)", 40);
  v247 = v186;
  v248 = v185;
  v187 = sub_1CA94C438("Page Footer", 11);
  v246 = v188;
  *&v257 = &v242;
  MEMORY[0x1EEE9AC00](v187);
  v189 = &v242 - v180;
  sub_1CA948D98();
  v190 = v267;
  v191 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v193 = sub_1CA2F9F14(v248, v247, v187, v246, 0, 0, v189, &v242 - v182);
  *(v171 + 184) = v264;
  *(v171 + 160) = v193;
  v194 = sub_1CA94C1E8();
  v195 = sub_1CA2F864C(v194);
  *(v262 + 56) = v195;
  v196 = swift_allocObject();
  *(v196 + 16) = v250;
  *(v196 + 32) = v253;
  *(v196 + 40) = 0xD000000000000011;
  *(v196 + 48) = 0x80000001CA99E620;
  v197 = MEMORY[0x1E69E6158];
  v198 = v249;
  *(v196 + 64) = MEMORY[0x1E69E6158];
  *(v196 + 72) = v198;
  *(v196 + 80) = 1;
  v199 = v254;
  *(v196 + 104) = MEMORY[0x1E69E6370];
  *(v196 + 112) = v199;
  strcpy((v196 + 120), "WFCombinePages");
  *(v196 + 135) = -18;
  v200 = v255;
  *(v196 + 144) = v197;
  *(v196 + 152) = v200;
  *&v257 = sub_1CA94C438("Combine Pages (WFCombinePages)", 30);
  v255 = v201;
  v202 = sub_1CA94C438("Combine Pages", 13);
  v254 = v203;
  v260 = &v242;
  MEMORY[0x1EEE9AC00](v202);
  v204 = v268;
  sub_1CA948D98();
  v205 = v190;
  v206 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v242 - v266;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v196 + 160) = sub_1CA2F9F14(v257, v255, v202, v254, 0, 0, &v242 - v204, v207);
  v209 = v264;
  v210 = v252;
  *(v196 + 184) = v264;
  *(v196 + 192) = v210;
  *&v257 = sub_1CA94C438("Combine Pages (WFCombinePages)", 30);
  v255 = v211;
  v212 = sub_1CA94C438("Combine Pages", 13);
  v214 = v213;
  v260 = &v242;
  MEMORY[0x1EEE9AC00](v212);
  v215 = &v242 - v204;
  sub_1CA948D98();
  v216 = [v205 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v242 - v266;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v219 = sub_1CA2F9F14(v257, v255, v212, v214, 0, 0, v215, v217);
  *(v196 + 224) = v209;
  *(v196 + 200) = v219;
  v220 = sub_1CA94C1E8();
  v221 = sub_1CA2F864C(v220);
  v222 = v262;
  *(v262 + 64) = v221;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v224 = v263;
  v263[40] = v222;
  v224[43] = v223;
  v224[44] = @"ParameterSummary";
  v225 = @"ParameterSummary";
  v226 = sub_1CA94C438("Get ${WFGetTextFromPDFTextType} from PDF ${WFInput} (Parameter Summary)", 71);
  v228 = v227;
  v229 = sub_1CA94C438("Get ${WFGetTextFromPDFTextType} from PDF ${WFInput}", 51);
  v231 = v230;
  MEMORY[0x1EEE9AC00](v229);
  v232 = &v242 - v268;
  sub_1CA948D98();
  v233 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v242 - v266;
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v236 = sub_1CA2F9F14(v226, v228, v229, v231, 0, 0, v232, v234);
  v237 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v238 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v239 = v263;
  v263[45] = v237;
  v239[48] = v238;
  v239[49] = @"RemoteExecuteOnPlatforms";
  v239[53] = v256;
  v239[50] = &unk_1F49F4D88;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v240 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA33F944(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CA33FB20()
{
  v1 = v0;
  v3 = v0[5];
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](8250, 0xE200000000000000);
  MEMORY[0x1CCAA1300](v1[7], v1[8]);
  MEMORY[0x1CCAA1300](10272, 0xE200000000000000);
  MEMORY[0x1CCAA1300](v1[3], v1[4]);
  MEMORY[0x1CCAA1300](41, 0xE100000000000000);
  return v3;
}

void sub_1CA33FBA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    v8 = sub_1CA25B410(v2);
    v9 = v8 & ~(v8 >> 63);
    v46 = a1;
    v47 = v2;
    if (v8)
    {
      v49 = MEMORY[0x1E69E7CC0];
      sub_1CA271524(0, v9, 0, v4, v5, v6, v7);
      if (v8 < 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      v10 = 0;
      v11 = v2 & 0xC000000000000001;
      do
      {
        if (v11)
        {
          MEMORY[0x1CCAA22D0](v10, v2);
        }

        else
        {
        }

        v12 = sub_1CA33FB20();
        MEMORY[0x1CCAA1300](v12);

        MEMORY[0x1CCAA1300](0x22203E2D2022, 0xE600000000000000);
        v13 = sub_1CA33FB20();
        MEMORY[0x1CCAA1300](v13);

        MEMORY[0x1CCAA1300](34, 0xE100000000000000);

        v19 = *(v49 + 16);
        v18 = *(v49 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1CA271524(v18 > 1, v19 + 1, 1, v14, v15, v16, v17);
        }

        ++v10;
        *(v49 + 16) = v19 + 1;
        v20 = v49 + 16 * v19;
        *(v20 + 32) = 34;
        *(v20 + 40) = 0xE100000000000000;
        v2 = v47;
      }

      while (v8 != v10);
      v9 = v8 & ~(v8 >> 63);
      a1 = v46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    sub_1CA26E4D4();
    OUTLINED_FUNCTION_4_18();
    v21 = sub_1CA94C308();
    v23 = v22;

    MEMORY[0x1CCAA1300](v21, v23);

    MEMORY[0x1CCAA1300](10, 0xE100000000000000);
    if (!v8)
    {
LABEL_23:
      OUTLINED_FUNCTION_4_18();
      v41 = sub_1CA94C308();
      v43 = v42;

      MEMORY[0x1CCAA1300](v41, v43);

      v44 = v50[0];
      v45 = v50[1];
      if (!a1)
      {
        sub_1CA94D408();

        strcpy(v50, "digraph R {\n");
        BYTE5(v50[1]) = 0;
        HIWORD(v50[1]) = -5120;
        MEMORY[0x1CCAA1300](v44, v45);

        MEMORY[0x1CCAA1300](32010, 0xE200000000000000);
      }

      return;
    }

    v48 = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v9, 0, v24, v25, v26, v27);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v28 = a1 + 1;
      if (a1 != -1)
      {
        v29 = 0;
        v30 = v2 & 0xC000000000000001;
        do
        {
          if (v30)
          {
            MEMORY[0x1CCAA22D0](v29, v2);
          }

          else
          {
          }

          v31 = sub_1CA33FBA0(v28);
          v33 = v32;

          v39 = *(v48 + 16);
          v38 = *(v48 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1CA271524(v38 > 1, v39 + 1, 1, v34, v35, v36, v37);
          }

          ++v29;
          *(v48 + 16) = v39 + 1;
          v40 = v48 + 16 * v39;
          *(v40 + 32) = v31;
          *(v40 + 40) = v33;
          v2 = v47;
        }

        while (v8 != v29);
        a1 = v46;
        goto LABEL_23;
      }

LABEL_28:
      __break(1u);
      return;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }
}

uint64_t LibraryDebugNode.deinit()
{

  return v0;
}

uint64_t LibraryDebugNode.__deallocating_deinit()
{
  LibraryDebugNode.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1CA33FFB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v21 - v4;
  v5 = sub_1CA94C168();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  sub_1CA94BE28();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_1CA94BE88();
    v19 = sub_1CA94C138();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 8))(v15, v12);
    return v19;
  }

  sub_1CA27080C(v11, &qword_1EC443BB0, &qword_1CA982060);
  sub_1CA94BE38();
  v16 = v24;
  if (__swift_getEnumTagSinglePayload(v2, 1, v24) != 1)
  {
    v18 = v22;
    v17 = v23;
    (*(v23 + 32))(v22, v2, v16);
    sub_1CA94BE88();
    v19 = sub_1CA94C138();
    (*(v6 + 8))(v8, v5);
    (*(v17 + 8))(v18, v16);
    return v19;
  }

  sub_1CA27080C(v2, &off_1EC443BD0, &unk_1CA983B10);
  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

uint64_t sub_1CA3403D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  sub_1CA94BE28();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  sub_1CA27080C(v5, &qword_1EC443BB0, &qword_1CA982060);
  if (EnumTagSinglePayload != 1)
  {
    return 0x74756374726F6853;
  }

  sub_1CA94BE38();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  v9 = __swift_getEnumTagSinglePayload(v2, 1, v8);
  sub_1CA27080C(v2, &off_1EC443BD0, &unk_1CA983B10);
  if (v9 != 1)
  {
    return 0x7265646C6F46;
  }

  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

uint64_t sub_1CA3405E0(uint64_t a1)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v34 - v4;
  v5 = type metadata accessor for LibraryModel.FolderCollection(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - v8;
  v9 = sub_1CA94C168();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB0, &qword_1CA982060);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC0, &unk_1CA983B20);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  sub_1CA94BE28();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_1CA94BE88();
    v26 = CRKeyPath.recoveredStringIdentifier.getter();
    v28 = v27;
    (*(v10 + 8))(v12, v9);
    if (!v28)
    {
      v26 = 0x474E495353494D3CLL;
    }

    (*(v17 + 8))(v19, v16);
    return v26;
  }

  v35 = v12;
  v36 = v9;
  sub_1CA27080C(v15, &qword_1EC443BB0, &qword_1CA982060);
  v20 = v38;
  sub_1CA94BE38();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
  {
    type metadata accessor for LibraryModel(0);
    sub_1CA34137C();
    v22 = v37;
    sub_1CA94BEC8();
    v23 = *(*(v21 - 8) + 8);
    v23(v20, v21);
    v24 = v41;
    sub_1CA3413D4(v22, v41);
    v44 = 0;
    v45 = 0xE000000000000000;
    v25 = v40;
    sub_1CA94BE38();
    if (__swift_getEnumTagSinglePayload(v25, 1, v21) == 1)
    {
      sub_1CA27080C(v25, &off_1EC443BD0, &unk_1CA983B10);
    }

    else
    {
      v29 = v35;
      sub_1CA94BE88();
      v30 = CRKeyPath.recoveredStringIdentifier.getter();
      v32 = v31;
      (*(v10 + 8))(v29, v36);
      v23(v25, v21);
      if (v32)
      {
LABEL_10:
        MEMORY[0x1CCAA1300](v30, v32);

        MEMORY[0x1CCAA1300](572534048, 0xE400000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
        sub_1CA94B858();
        MEMORY[0x1CCAA1300](v42, v43);

        MEMORY[0x1CCAA1300](34, 0xE100000000000000);
        v26 = v44;
        sub_1CA26F860(v24, type metadata accessor for LibraryModel.FolderCollection);
        return v26;
      }
    }

    v30 = 0x474E495353494D3CLL;

    v32 = 0xEC0000003E444920;
    goto LABEL_10;
  }

  sub_1CA27080C(v20, &off_1EC443BD0, &unk_1CA983B10);
  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

void *sub_1CA340BC4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v23 = sub_1CA33FFB0();
  v9 = v8;
  v10 = sub_1CA3403D8();
  v12 = v11;
  v13 = sub_1CA3405E0(a2);
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_52();
  (*(v17 + 16))(v7, v2, v16);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  v18 = sub_1CA94BDB8();
  sub_1CA27080C(v7, &qword_1EC443BB8, &unk_1CA983A70);
  v25 = a1;
  v26 = a2;
  v19 = sub_1CA33F944(sub_1CA341338, v24, v18);

  type metadata accessor for LibraryDebugNode();
  result = swift_allocObject();
  result[4] = v9;
  result[5] = v10;
  result[6] = v12;
  result[7] = v13;
  result[8] = v15;
  v21 = v23;
  result[2] = v19;
  result[3] = v21;
  return result;
}

void *Library.debugNode.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - v3;
  v5 = type metadata accessor for LibraryModel(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA8, &unk_1CA983A80);
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = OBJC_IVAR___WFLibrary_capsule;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v20, v9);
  sub_1CA94BFD8();
  (*(v11 + 8))(v14, v9);
  v21 = v31;
  (*(v16 + 16))(v19, &v8[*(v6 + 28)], v31);
  sub_1CA26F860(v8, type metadata accessor for LibraryModel);
  v22 = sub_1CA94C3A8();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v25);
  v26 = sub_1CA94BDB8();
  sub_1CA27080C(v4, &qword_1EC443BB8, &unk_1CA983A70);
  v33 = v19;
  v34 = v1;
  v27 = sub_1CA33F944(sub_1CA341208, v32, v26);

  type metadata accessor for LibraryDebugNode();
  v28 = swift_allocObject();
  v28[4] = v24;
  v28[5] = 1953460050;
  v28[6] = 0xE400000000000000;
  v28[7] = 1953460050;
  v28[8] = 0xE400000000000000;
  v28[2] = v27;
  v28[3] = v22;
  (*(v16 + 8))(v19, v21);
  return v28;
}

uint64_t sub_1CA3410BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR___WFLibrary_capsule;
  swift_beginAccess();
  (*(v7 + 16))(v9, a2 + v10, v6);
  v11 = sub_1CA340BC4(a1, v9);
  result = (*(v7 + 8))(v9, v6);
  *a3 = v11;
  return result;
}

uint64_t Library.dotRepresentation.getter()
{
  if (Library.debugNode.getter())
  {
    sub_1CA33FBA0(0);
  }

  return OUTLINED_FUNCTION_23();
}

void *sub_1CA341338@<X0>(void *a1@<X8>)
{
  result = sub_1CA340BC4(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

unint64_t sub_1CA34137C()
{
  result = qword_1EC442AA8;
  if (!qword_1EC442AA8)
  {
    type metadata accessor for LibraryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442AA8);
  }

  return result;
}

uint64_t sub_1CA3413D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryModel.FolderCollection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1CA34146C()
{
  v42 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9A5970;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("rotation|rotate", 15);
  v6 = v5;
  v7 = sub_1CA94C438("rotation|rotate", 15);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"DisabledOnPlatforms";
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4DF8;
  *(inited + 184) = v24;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 6579538;
  *(inited + 208) = 0xE300000000000000;
  *(inited + 224) = v21;
  *(inited + 232) = @"IconSymbol";
  strcpy((inited + 240), "lock.rotation");
  *(inited + 254) = -4864;
  *(inited + 264) = v21;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v25 = @"DisabledOnPlatforms";
  v26 = @"IconColor";
  v27 = @"IconSymbol";
  v28 = @"InputPassthrough";
  v29 = sub_1CA94C368();
  *(inited + 344) = v21;
  *(inited + 312) = v29;
  *(inited + 320) = 0xD00000000000005ALL;
  *(inited + 328) = 0x80000001CA9A59A0;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v30 = swift_initStackObject();
  v41 = xmmword_1CA981310;
  *(v30 + 16) = xmmword_1CA981310;
  *(v30 + 32) = 0x6574617473;
  *(v30 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v31 = swift_initStackObject();
  *(v31 + 16) = v41;
  *(v31 + 64) = v21;
  *(v31 + 32) = @"Key";
  *(v31 + 40) = 0x65756C61566E4FLL;
  *(v31 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v32 = @"Key";
  v33 = sub_1CA94C1E8();
  *(v30 + 48) = sub_1CA2F864C(v33);
  v34 = sub_1CA94C1E8();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v34;
  *(inited + 384) = v35;
  *(inited + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CA9813B0;
  v43 = 2;
  v44 = 1;
  v37 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v38 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v43);
  *(v36 + 32) = v39;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 400) = v36;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA341AD4()
{
  v109 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  v4 = sub_1CA94C438("post|stream|share|with|icloud|photo|sharing", 43);
  v6 = v5;
  v7 = sub_1CA94C438("post|stream|share|with|icloud|photo|sharing", 43);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v113 = v11;
  v115 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v97 - v115;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v112 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v114 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v97 - v111;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v110 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v107 = 0x80000001CA993290;
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v108 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"DisabledOnPlatforms";
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4E68;
  *(inited + 184) = v24;
  *(inited + 192) = @"Input";
  v25 = v24;
  v105 = v24;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v26 = swift_initStackObject();
  v101 = xmmword_1CA981350;
  *(v26 + 16) = xmmword_1CA981350;
  *(v26 + 32) = 0x656C7069746C754DLL;
  *(v26 + 40) = 0xE800000000000000;
  v27 = MEMORY[0x1E69E6370];
  *(v26 + 48) = 1;
  *(v26 + 72) = v27;
  strcpy((v26 + 80), "ParameterKey");
  *(v26 + 93) = 0;
  *(v26 + 94) = -5120;
  *(v26 + 96) = 0x706E496567616D49;
  *(v26 + 104) = 0xEA00000000007475;
  *(v26 + 120) = v21;
  *(v26 + 128) = 0x6465726975716552;
  *(v26 + 136) = 0xE800000000000000;
  *(v26 + 144) = 1;
  *(v26 + 168) = v27;
  *(v26 + 176) = 0x7365707954;
  *(v26 + 216) = v25;
  *(v26 + 184) = 0xE500000000000000;
  *(v26 + 192) = &unk_1F49F4E98;
  v28 = @"DisabledOnPlatforms";
  v29 = @"Input";
  v30 = sub_1CA94C1E8();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v104 = v31;
  *(inited + 200) = v30;
  *(inited + 224) = v31;
  *(inited + 232) = @"Name";
  v32 = @"Name";
  v33 = sub_1CA94C438("Post to Shared Album (Action Name)", 34);
  v35 = v34;
  v36 = sub_1CA94C438("Post to Shared Album", 20);
  v38 = v37;
  v103 = &v97;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v97 - v115;
  sub_1CA948D98();
  v40 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v97 - v111;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v33, v35, v36, v38, 0, 0, v39, v41);
  *(inited + 264) = v110;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v103 = swift_allocObject();
  *(v103 + 1) = xmmword_1CA9813B0;
  v102 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v43 = swift_initStackObject();
  *(v43 + 16) = v101;
  *(v43 + 32) = @"Class";
  *(v43 + 40) = 0xD000000000000019;
  *(v43 + 48) = 0x80000001CA99B030;
  v44 = MEMORY[0x1E69E6158];
  *(v43 + 64) = MEMORY[0x1E69E6158];
  *(v43 + 72) = @"Key";
  *(v43 + 80) = 0x706E496567616D49;
  *(v43 + 88) = 0xEA00000000007475;
  *(v43 + 104) = v44;
  *(v43 + 112) = @"Label";
  v45 = @"Parameters";
  v46 = @"Class";
  v47 = @"Key";
  v48 = @"Label";
  v49 = sub_1CA94C438("Images (ImageInput)", 19);
  v99 = v50;
  v100 = v49;
  v51 = sub_1CA94C438("Images", 6);
  v98 = v52;
  *&v101 = &v97;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v97 - v115;
  sub_1CA948D98();
  v54 = v112;
  v55 = [v112 bundleURL];
  v97 = &v97;
  MEMORY[0x1EEE9AC00](v55);
  v56 = v111;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 120) = sub_1CA2F9F14(v100, v99, v51, v98, 0, 0, v53, &v97 - v56);
  v58 = v110;
  *(v43 + 144) = v110;
  *(v43 + 152) = @"Placeholder";
  v59 = @"Placeholder";
  v60 = sub_1CA94C438("Images (ImageInput)", 19);
  v99 = v61;
  v100 = v60;
  v62 = sub_1CA94C438("Images", 6);
  v98 = v63;
  *&v101 = &v97;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v97 - v115;
  sub_1CA948D98();
  v65 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v100, v99, v62, v98, 0, 0, v64, &v97 - v56);
  *(v43 + 184) = v58;
  *(v43 + 160) = v67;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v68 = sub_1CA94C1E8();
  v69 = sub_1CA2F864C(v68);
  v70 = v103;
  v103[4] = v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v70;
  *(inited + 304) = v71;
  *(inited + 312) = @"ParameterSummary";
  v72 = @"ParameterSummary";
  v73 = sub_1CA94C438("Post ${ImageInput} to Shared Album (Parameter Summary)", 54);
  v75 = v74;
  v76 = sub_1CA94C438("Post ${ImageInput} to Shared Album", 34);
  v78 = v77;
  v110 = &v97;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v97 - v115;
  sub_1CA948D98();
  v80 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v97 - v111;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v73, v75, v76, v78, 0, 0, v79, v81);
  v84 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v85 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v84;
  *(inited + 344) = v85;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1CA97EDF0;
  v87 = MEMORY[0x1E69E6158];
  *(v86 + 56) = MEMORY[0x1E69E6158];
  *(v86 + 32) = 0xD000000000000019;
  *(v86 + 40) = 0x80000001CA9932D0;
  v116 = 2;
  v117 = 1;
  v88 = type metadata accessor for WFDeviceIdiomResource();
  v89 = objc_allocWithZone(v88);
  v90 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v116);
  *(v86 + 88) = v88;
  *(v86 + 64) = v91;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = v86;
  *(inited + 392) = sub_1CA94C368();
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1CA9813C0;
  v93 = v107;
  *(v92 + 32) = 0xD000000000000010;
  *(v92 + 40) = v93;
  *(v92 + 48) = 0xD00000000000002CLL;
  *(v92 + 56) = 0x80000001CA996C20;
  *(v92 + 72) = v87;
  *(v92 + 80) = 0x7079547475706E49;
  *(v92 + 88) = 0xE900000000000065;
  *(v92 + 96) = 0x73657079544C53;
  *(v92 + 104) = 0xE700000000000000;
  *(v92 + 120) = v87;
  *(v92 + 128) = 0x73657079544C53;
  *(v92 + 168) = v105;
  *(v92 + 136) = 0xE700000000000000;
  *(v92 + 144) = &unk_1F49F4ED8;
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v104;
  *(inited + 432) = @"UserInterfaceClasses";
  v94 = @"UserInterfaceClasses";
  v95 = sub_1CA94C1E8();
  *(inited + 464) = v108;
  *(inited + 440) = v95;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA342798(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;
    sub_1CA94C218();
    sub_1CA368948(&v7, v6, v5);

    v4 += 2;
  }
}

void sub_1CA342840(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1CA94D2F8();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    sub_1CA94C948();
    v1 = v13[1];
    v2 = v13[2];
    v3 = v13[3];
    v4 = v13[4];
    v5 = v13[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    if (!*(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10))))))
    {
LABEL_18:
      sub_1CA28A224(v1);
      return;
    }

    while (1)
    {
      sub_1CA368D08(v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1CA94D358())
      {
        type metadata accessor for WFUserVisibleString();
        swift_dynamicCast();
        v11 = v4;
        v12 = v5;
        if (v13[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1CA342A00(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  OUTLINED_FUNCTION_5_5();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      sub_1CA94C218();
      sub_1CA368948(&v14, v12, v13);

      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_7;
    }
  }
}

void sub_1CA342AF0(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  OUTLINED_FUNCTION_5_5();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1CA369200(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_7;
    }
  }
}

void WFDictionaryParameter.userVisibleStrings(in:for:)(uint64_t a1, uint64_t a2)
{
  sub_1CA949F78();
  OUTLINED_FUNCTION_2_20();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 keyValuePairs];
    sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
    v11 = sub_1CA94C658();

    v12 = sub_1CA25B410(v11);
    if (v12)
    {
      v13 = v12;
      if (v12 < 1)
      {
        __break(1u);
      }

      else
      {
        v14 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1CCAA22D0](v14, v11);
          }

          else
          {
            v15 = *(v11 + 8 * v14 + 32);
          }

          v16 = v15;
          ++v14;
          sub_1CA342E28(a2);
          sub_1CA342840(v17);
        }

        while (v13 != v14);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CA949C58();
    v18 = sub_1CA949F68();
    v19 = sub_1CA94CC28();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1CA256000, v18, v19, "Incorrect parameter state class", v20, 2u);
      MEMORY[0x1CCAA4BF0](v20, -1, -1);
    }

    (*(v6 + 8))(v2, v3);
    if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
    {
      sub_1CA2E85F8();
    }
  }
}

void sub_1CA342E28(uint64_t a1)
{
  v3 = [v1 key];
  v4 = [v3 userVisibleStringsForUseCase_];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C8F8();

  v6 = [v1 value];
  sub_1CA575728();
  v8 = v7;

  sub_1CA553F18(v8, v5);
}

id WFDictionaryParameter.rewrite(_:withStrings:)(uint64_t a1, uint64_t a2)
{
  sub_1CA949F78();
  OUTLINED_FUNCTION_2_20();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 keyValuePairs];
    sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
    v11 = sub_1CA94C658();

    v12 = sub_1CA25B410(v11);
    if (v12)
    {
      v13 = v12;
      v23 = MEMORY[0x1E69E7CC0];
      result = sub_1CA94D508();
      if (v13 < 0)
      {
        __break(1u);
        return result;
      }

      v15 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1CCAA22D0](v15, v11);
        }

        else
        {
          v16 = *(v11 + 8 * v15 + 32);
        }

        v17 = v16;
        ++v15;
        sub_1CA343248(a2);

        sub_1CA94D4D8();
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      while (v13 != v15);

      v18 = v23;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1CA25B3D0(0, &qword_1EC4446B0, off_1E836E260);
    v22 = sub_1CA3433C0(v18);
    swift_unknownObjectRelease();
    return v22;
  }

  else
  {
    sub_1CA949C58();
    v19 = sub_1CA949F68();
    v20 = sub_1CA94CC28();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1CA256000, v19, v20, "Incorrect parameter state class", v21, 2u);
      MEMORY[0x1CCAA4BF0](v21, -1, -1);
    }

    (*(v6 + 8))(v2, v3);
    return swift_unknownObjectRetain();
  }
}

id sub_1CA343248(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
  v2 = [v1 key];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v3 = sub_1CA94C1A8();
  v4 = [v2 rewrittenWithStrings_];

  v13 = v4;
  v5 = [v1 value];
  v6 = sub_1CA575AFC();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  v10 = sub_1CA948D28();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  return WFDictionaryParameterKeyValuePair.init(key:value:identity:)(&v13, v6, v9);
}

id sub_1CA3433C0(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
  v2 = sub_1CA94C648();

  v3 = [v1 initWithKeyValuePairs_];

  return v3;
}

unint64_t sub_1CA3434EC()
{
  result = qword_1EC4463C0;
  if (!qword_1EC4463C0)
  {
    type metadata accessor for WFUserVisibleString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4463C0);
  }

  return result;
}

_OWORD *AppIntentShortcutsMetadata.__allocating_init(displayedAppDescriptor:category:discoverable:iconSymbol:additions:)(_OWORD *a1, void *a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v8 = a3;
  v11 = objc_allocWithZone(v5);
  return AppIntentShortcutsMetadata.init(displayedAppDescriptor:category:discoverable:iconSymbol:additions:)(a1, a2, v8, a4, a5);
}

_OWORD *AppIntentShortcutsMetadata.init(displayedAppDescriptor:category:discoverable:iconSymbol:additions:)(_OWORD *a1, void *a2, char a3, _OWORD *a4, uint64_t a5)
{
  v7 = OBJC_IVAR___WFAppIntentShortcutsMetadata_category;
  *&v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_category] = 0;
  v8 = OBJC_IVAR___WFAppIntentShortcutsMetadata_discoverable;
  v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_discoverable] = 2;
  v9 = &v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_iconSymbol];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *&v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor] = *a1;
  *&v5[v7] = a2;
  v5[v8] = a3;
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = a4[1];
  *v9 = *a4;
  *(v9 + 1) = v12;
  *(v9 + 2) = a4[2];
  v13 = a2;
  sub_1CA3436AC(v10, v11);
  *&v5[OBJC_IVAR___WFAppIntentShortcutsMetadata_additions] = a5;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for AppIntentShortcutsMetadata();
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

uint64_t sub_1CA3436AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.name.getter()
{
  v1 = *v0;
  sub_1CA94C218();
  return v1;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.backgroundColorName.getter()
{
  v1 = *(v0 + 16);
  sub_1CA94C218();
  return v1;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.backgroundColorName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.foregroundColorName.getter()
{
  v1 = *(v0 + 32);
  sub_1CA94C218();
  return v1;
}

uint64_t AppIntentShortcutsMetadata.IconSymbol.foregroundColorName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall AppIntentShortcutsMetadata.IconSymbol.init(_:backgroundColorName:foregroundColorName:)(WorkflowKit::AppIntentShortcutsMetadata::IconSymbol *__return_ptr retstr, Swift::String _, Swift::String backgroundColorName, Swift::String_optional foregroundColorName)
{
  retstr->name = _;
  retstr->backgroundColorName = backgroundColorName;
  retstr->foregroundColorName = foregroundColorName;
}

uint64_t sub_1CA3438C8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor);
  v3 = *(v1 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor + 8);
  v4 = v3;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor);
    if (v3 == 1)
    {
      sub_1CA94C218();
      v4 = a1;
    }
  }

  sub_1CA343954(v2, v3);
  return v4;
}

uint64_t sub_1CA343954(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_1CA94C218();
  }

  return result;
}

id AppIntentShortcutsMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AppIntentShortcutsMetadata.dictionaryRepresentation()()
{
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  v1 = sub_1CA94C1E8();
  v79 = v1;
  v3 = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      goto LABEL_6;
    }

    v4 = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_displayedAppDescriptor);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A38, &qword_1CA981B20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    *(inited + 32) = sub_1CA94C3A8();
    *(inited + 40) = v6;
    *(inited + 48) = v4;
    *(inited + 56) = v3;
    sub_1CA343954(v4, v3);
    v7 = @"LinkActionDisplayedAppDescriptor";
    sub_1CA94C1E8();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
    OUTLINED_FUNCTION_2_21(v77, v8);
  }

  else
  {
    OUTLINED_FUNCTION_2_21(v1, v2);
    v7 = @"LinkActionDisableDisplayedAppDescriptor";
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_19();
  sub_1CA3224DC(v9, v7, v10);

  OUTLINED_FUNCTION_3_16(v11, v12, v13, v14, v15, v16, v17, v18, v74, v75);
LABEL_6:
  v19 = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_category);
  if (v19)
  {
    v78 = sub_1CA344264();
    OUTLINED_FUNCTION_2_21(v78, v20);
    v21 = v19;
    v22 = @"Category";
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_19();
    sub_1CA3224DC(v23, v22, v24);

    OUTLINED_FUNCTION_3_16(v25, v26, v27, v28, v29, v30, v31, v32, v74, v75);
  }

  if (*(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_discoverable) != 2)
  {
    OUTLINED_FUNCTION_2_21(v1, v2);
    v33 = @"Discoverable";
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_19();
    sub_1CA3224DC(v34, v33, v35);

    OUTLINED_FUNCTION_3_16(v36, v37, v38, v39, v40, v41, v42, v43, v74, v75);
  }

  if (*(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_iconSymbol + 8))
  {
    v44 = *(v0 + OBJC_IVAR___WFAppIntentShortcutsMetadata_iconSymbol + 40);
    OUTLINED_FUNCTION_2_21(v1, v2);
    v45 = @"IconSymbol";
    sub_1CA94C218();
    v46 = OUTLINED_FUNCTION_1_18();
    sub_1CA344214(v46, v47);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_19();
    sub_1CA3224DC(v48, v45, v49);

    OUTLINED_FUNCTION_2_21(v50, v51);
    v52 = @"IconColor";
    sub_1CA94C218();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_19();
    sub_1CA3224DC(v53, v52, v54);

    OUTLINED_FUNCTION_3_16(v55, v56, v57, v58, v59, v60, v61, v62, v74, v75);
    if (v44)
    {
      sub_1CA94C218();
      v63 = OUTLINED_FUNCTION_1_18();
      v65 = sub_1CA3436AC(v63, v64);
      OUTLINED_FUNCTION_2_21(v65, v66);
      v67 = @"IconSymbolColor";
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_19();
      sub_1CA3224DC(v68, v67, v69);

      v79 = v76;
    }

    else
    {
      v70 = OUTLINED_FUNCTION_1_18();
      sub_1CA3436AC(v70, v71);
    }
  }

  v72 = sub_1CA94C218();
  sub_1CA343E90(v72, &v79);

  return v79;
}

uint64_t sub_1CA343E90(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  sub_1CA94C218();
  v8 = 0;
  v28 = v3;
  v29 = a2;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = *(*(a1 + 48) + 8 * v10);
      sub_1CA25B374(*(a1 + 56) + 32 * v10, &v37);
      v36 = v11;
      sub_1CA344510(&v36, &v34);
      v12 = v34;
      sub_1CA344510(&v36, &v32);
      v13 = v32;
      v14 = v11;

      sub_1CA2C0A20(&v33, v31);
      swift_isUniquelyReferenced_nonNull_native();
      v38 = *a2;
      v15 = v38;
      v16 = sub_1CA323E24();
      if (__OFADD__(v15[2], (v17 & 1) == 0))
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443E0, &qword_1CA983488);
      if (sub_1CA94D588())
      {
        v20 = sub_1CA323E24();
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_22;
        }

        v18 = v20;
      }

      v22 = v38;
      if (v19)
      {
        v23 = (v38[7] + 32 * v18);
        __swift_destroy_boxed_opaque_existential_0(v23);
        sub_1CA2C0A20(v31, v23);
      }

      else
      {
        v38[(v18 >> 6) + 8] |= 1 << v18;
        *(v22[6] + 8 * v18) = v12;
        sub_1CA2C0A20(v31, (v22[7] + 32 * v18));
        v24 = v22[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v22[2] = v26;
      }

      v6 &= v6 - 1;
      a2 = v29;
      *v29 = v22;
      __swift_destroy_boxed_opaque_existential_0(v35);
      sub_1CA344580(&v36);
      v3 = v28;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  type metadata accessor for Key(0);
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

id LinkMetadataRegistrationHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkMetadataRegistrationHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CA3441DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1CA344214(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1CA94C218();
    sub_1CA94C218();

    return sub_1CA94C218();
  }

  return result;
}

unint64_t sub_1CA344264()
{
  result = qword_1EDB9F6E0;
  if (!qword_1EDB9F6E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB9F6E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit26AppIntentShortcutsMetadataC09DisplayedC10DescriptorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA34436C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA3443C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1CA34441C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1CA344460(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1CA3444A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA3444FC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1CA344510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4446C8, &qword_1CA983CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA344580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4446C8, &qword_1CA983CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA3445EC()
{
  OUTLINED_FUNCTION_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1CA94ADC8();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA3446A4()
{
  OUTLINED_FUNCTION_0();
  sub_1CA94A8B8();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1CA344744;

  return sub_1CA2FD878();
}

uint64_t sub_1CA344744()
{
  OUTLINED_FUNCTION_14();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA3448A8()
{
  v11 = v0;
  v1 = v0[9];
  v2 = sub_1CA344A04();
  v3 = v0[8];
  if (v1)
  {

    OUTLINED_FUNCTION_5();

    return v4();
  }

  else
  {
    v6 = v2;
    v10[3] = sub_1CA34554C();
    v10[0] = v6;
    v7 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v8 = sub_1CA320AB4(v10, v3);

    v9 = v0[1];

    return v9(v8);
  }
}

uint64_t sub_1CA3449A8()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

id sub_1CA344A04()
{
  v0 = sub_1CA94AD88();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1CA94A8B8();
  v7 = OUTLINED_FUNCTION_204();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E69DB0B0] || v9 == *MEMORY[0x1E69DB0A0])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x1E69DB098])
  {
    v15 = OUTLINED_FUNCTION_204();
    v16(v15);
    sub_1CA94C218();
LABEL_11:

    sub_1CA94A898();
    v20 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    return sub_1CA320B2C();
  }

  if (v9 == *MEMORY[0x1E69DB088])
  {
    v17 = OUTLINED_FUNCTION_204();
    v18(v17);
    v19 = swift_projectBox();
    (*(v2 + 16))(v5, v19, v0);
    sub_1CA94AD78();
    (*(v2 + 8))(v5, v0);
    goto LABEL_11;
  }

  if (v9 == *MEMORY[0x1E69DB0A8])
  {
LABEL_6:
    v11 = OUTLINED_FUNCTION_204();
    v12(v11);
    sub_1CA2FFC58();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }

  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

uint64_t sub_1CA344CD4()
{
  OUTLINED_FUNCTION_0();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v0[11] = swift_task_alloc();
  v4 = sub_1CA94ADC8();
  v0[12] = v4;
  v0[13] = *(v4 - 8);
  v0[14] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA344DC8()
{
  OUTLINED_FUNCTION_14();
  v1 = [*(v0 + 72) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  *(v0 + 120) = sub_1CA55BCD4(v0 + 16);
  v2 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 128) = [v2 valueType];
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1CA344F24;

  return sub_1CA2FF3B4();
}

uint64_t sub_1CA344F24()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  *(*v1 + 144) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA345050()
{
  v3 = *(v0 + 72);
  v4 = [*(v0 + 120) instanceIdentifier];
  v5 = sub_1CA94C3A8();
  v7 = v6;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;

  *(v0 + 152) = v7;
  v8 = [v3 displayRepresentation];
  *(v0 + 160) = v8;
  if (v8)
  {
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1CA345244;
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);

    return (sub_1CA3BC4F4)(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    v13 = sub_1CA94B458();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v13);
    OUTLINED_FUNCTION_6_16();

    OUTLINED_FUNCTION_5();

    return v14();
  }
}

uint64_t sub_1CA3451D4()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA345244()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *v4 = *v1;
  v3[22] = v0;

  v5 = v2[20];
  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA345390()
{
  OUTLINED_FUNCTION_5_17();
  v2 = sub_1CA94B458();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
  OUTLINED_FUNCTION_6_16();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA345430()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA3454A0()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA30A15C;

  return sub_1CA344CD4();
}

unint64_t sub_1CA34554C()
{
  result = qword_1EC445B70;
  if (!qword_1EC445B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC445B70);
  }

  return result;
}

uint64_t sub_1CA345590()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA34562C;

  return sub_1CA3445EC();
}

uint64_t sub_1CA34562C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v7 = *(v5 + 8);

  return v7();
}

id sub_1CA345764()
{
  v116 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("date|time|detect|scan", 21);
  v6 = v5;
  v7 = sub_1CA94C438("date|time|detect|scan", 21);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = v11;
  v12 = v110 - v121;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v120 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v123 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v119 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v110 - v119;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v118;
  *(inited + 80) = v18;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000011;
  *(inited + 128) = 0x80000001CA993AC0;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  *&v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Returns any dates found in the output from the previous action.", 63);
  v114 = v23;
  v24 = sub_1CA94C438("Returns any dates found in the output from the previous action.", 63);
  v26 = v25;
  v115 = v110;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v110 - v121;
  sub_1CA948D98();
  v28 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = v110 - v119;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v22, v114, v24, v26, 0, 0, v27, v29);
  *(v19 + 64) = v118;
  *(v19 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v117;
  *(inited + 160) = sub_1CA6B3784(v32);
  *(inited + 184) = v33;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x7261646E656C6163;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v34;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 6579538;
  *(inited + 288) = 0xE300000000000000;
  *(inited + 304) = v34;
  *(inited + 312) = @"Input";
  v35 = v34;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v117 = xmmword_1CA981350;
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x7475706E494657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v115;
  *(v36 + 192) = &unk_1F49F4F48;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"IconSymbolColor";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v114 = v43;
  *(inited + 320) = v42;
  *(inited + 344) = v43;
  *(inited + 352) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438("Get Dates from Input (Action Name)", 34);
  v111 = v46;
  v47 = sub_1CA94C438("Get Dates from Input", 20);
  v49 = v48;
  v112 = v110;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v110 - v121;
  sub_1CA948D98();
  v51 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v110 - v119;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v45, v111, v47, v49, 0, 0, v50, v52);
  v54 = v118;
  *(inited + 384) = v118;
  *(inited + 392) = @"Output";
  v55 = swift_allocObject();
  *(v55 + 16) = v117;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x656C7069746C754DLL;
  *(v55 + 88) = 0xE800000000000000;
  *(v55 + 96) = 1;
  *(v55 + 120) = MEMORY[0x1E69E6370];
  *(v55 + 128) = 0x614E74757074754FLL;
  *(v55 + 136) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438("Dates (Default Output Name)", 27);
  v111 = v58;
  v112 = v57;
  v59 = sub_1CA94C438("Dates", 5);
  v61 = v60;
  v113 = v110;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v110 - v121;
  sub_1CA948D98();
  v63 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v110 - v119;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v112, v111, v59, v61, 0, 0, v62, v64);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v115;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F49F4F78;
  v66 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v114;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 1) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  *(v67 + 16) = v117;
  *(v67 + 32) = @"Class";
  *(v67 + 40) = 0xD000000000000019;
  *(v67 + 48) = 0x80000001CA99B030;
  *(v67 + 64) = v66;
  *(v67 + 72) = @"Key";
  *(v67 + 80) = 0x7475706E494657;
  *(v67 + 88) = 0xE700000000000000;
  *(v67 + 104) = v66;
  *(v67 + 112) = @"Label";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"Key";
  v71 = @"Label";
  v72 = sub_1CA94C438("Input (WFInput)", 15);
  v112 = v73;
  v113 = v72;
  v74 = sub_1CA94C438("Input", 5);
  v111 = v75;
  *&v117 = v110;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v121;
  sub_1CA948D98();
  v77 = v120;
  v78 = [v120 bundleURL];
  v110[1] = v110;
  MEMORY[0x1EEE9AC00](v78);
  v79 = v119;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v113, v112, v74, v111, 0, 0, v110 - v76, v110 - v79);
  v81 = v118;
  *(v67 + 144) = v118;
  *(v67 + 152) = @"Placeholder";
  v82 = @"Placeholder";
  v83 = sub_1CA94C438("Input (WFInput)", 15);
  v112 = v84;
  v113 = v83;
  v111 = sub_1CA94C438("Input", 5);
  v86 = v85;
  *&v117 = v110;
  MEMORY[0x1EEE9AC00](v111);
  v87 = v110 - v76;
  sub_1CA948D98();
  v88 = [v77 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v113, v112, v111, v86, 0, 0, v87, v110 - v79);
  *(v67 + 184) = v81;
  *(v67 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = sub_1CA94C1E8();
  v92 = sub_1CA2F864C(v91);
  v93 = v115;
  v115[4] = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v93;
  *(inited + 464) = v94;
  *(inited + 472) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438("Get dates from ${WFInput} (Parameter Summary)", 45);
  v98 = v97;
  v99 = sub_1CA94C438("Get dates from ${WFInput}", 25);
  v101 = v100;
  v118 = v110;
  MEMORY[0x1EEE9AC00](v99);
  v102 = v110 - v121;
  sub_1CA948D98();
  v103 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v110 - v79);
  v106 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v107 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v106;
  *(inited + 504) = v107;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v108 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void WFTextInputParameter.userVisibleStrings(in:for:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    v11 = [v10 variableString];
    v12 = [v11 userVisibleStringsForUseCase_];
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    sub_1CA94C8F8();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA949C58();
    v13 = sub_1CA949F68();
    v14 = sub_1CA94CC28();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1CA256000, v13, v14, "Incorrect parameter state class", v15, 2u);
      MEMORY[0x1CCAA4BF0](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v3);
    if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
    {
      sub_1CA2E85F8();
    }
  }
}

uint64_t WFTextInputParameter.rewrite(_:withStrings:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    sub_1CA346BF4();
    swift_unknownObjectRetain();
    v11 = [v10 variableString];
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    v12 = sub_1CA94C1A8();
    v13 = [v11 rewrittenWithStrings_];

    v21 = v13;
    v14.variableString.super.isa = &v21;
    v15 = WFVariableStringParameterState.init(variableString:)(v14);
    swift_unknownObjectRelease();
    return v15;
  }

  else
  {
    sub_1CA949C58();
    v16 = sub_1CA949F68();
    v17 = sub_1CA94CC28();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1CA256000, v16, v17, "Incorrect parameter state class", v18, 2u);
      MEMORY[0x1CCAA4BF0](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v3);
    swift_unknownObjectRetain();
  }

  return a1;
}

unint64_t sub_1CA346BF4()
{
  result = qword_1EC441788;
  if (!qword_1EC441788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC441788);
  }

  return result;
}

id sub_1CA346C6C()
{
  v124 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9A5D80;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("extract|clipboard|copy|paste", 28);
  v6 = v5;
  v7 = sub_1CA94C438("extract|clipboard|copy|paste", 28);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v127 = v11;
  v131 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v116 - v131;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v130 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v128 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v129 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v116 - v129;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v126 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v125 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Extracts any RSS feed URLs from the given web URLs or web page.", 63);
  v122 = v24;
  v25 = sub_1CA94C438("Extracts any RSS feed URLs from the given web URLs or web page.", 63);
  v27 = v26;
  v123 = v116;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v116 - v131;
  sub_1CA948D98();
  v29 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v116 - v129;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v122, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v126;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v125;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x65676E61724FLL;
  *(inited + 168) = 0xE600000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000019;
  *(inited + 208) = 0x80000001CA9A5E00;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v121 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x734C52554657;
  *(v37 + 104) = 0xE600000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v125;
  *(v37 + 192) = &unk_1F49F4FA8;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v123 = v43;
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438("Get RSS Feeds from Page (Action Name)", 37);
  v118 = v46;
  v119 = v45;
  v47 = sub_1CA94C438("Get RSS Feeds from Page", 23);
  v49 = v48;
  v120 = v116;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v131;
  sub_1CA948D98();
  v51 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v116 - v129;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v119, v118, v47, v49, 0, 0, v116 - v50, v52);
  v54 = v126;
  *(inited + 304) = v126;
  *(inited + 312) = @"Output";
  v55 = swift_allocObject();
  *(v55 + 16) = v121;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x656C7069746C754DLL;
  *(v55 + 88) = 0xE800000000000000;
  *(v55 + 96) = 1;
  *(v55 + 120) = MEMORY[0x1E69E6370];
  *(v55 + 128) = 0x614E74757074754FLL;
  *(v55 + 136) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438("RSS Feeds from Page (Default Output Name)", 41);
  v120 = v58;
  *&v121 = v57;
  v59 = sub_1CA94C438("RSS Feeds from Page", 19);
  v119 = v60;
  v122 = v116;
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948D98();
  v61 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = v116 - v129;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v121, v120, v59, v119, 0, 0, v116 - v50, v62);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v125;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F49F4FE8;
  v64 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *&v121 = @"Parameters";
  *(inited + 344) = v123;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v123 = swift_allocObject();
  *(v123 + 1) = xmmword_1CA9813B0;
  v122 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1CA9813E0;
  *(v65 + 32) = @"AllowsMultipleValues";
  *(v65 + 40) = 0;
  v66 = MEMORY[0x1E69E6370];
  *(v65 + 64) = MEMORY[0x1E69E6370];
  *(v65 + 72) = @"AutocapitalizationType";
  *(v65 + 80) = 1701736270;
  *(v65 + 88) = 0xE400000000000000;
  *(v65 + 104) = v64;
  *(v65 + 112) = @"Class";
  *(v65 + 120) = 0xD000000000000014;
  *(v65 + 128) = 0x80000001CA99B500;
  *(v65 + 144) = v64;
  *(v65 + 152) = @"DisableAutocorrection";
  *(v65 + 160) = 1;
  *(v65 + 184) = v66;
  *(v65 + 192) = @"Key";
  *(v65 + 200) = 0x734C52554657;
  *(v65 + 208) = 0xE600000000000000;
  *(v65 + 224) = v64;
  *(v65 + 232) = @"KeyboardType";
  *(v65 + 240) = 5001813;
  *(v65 + 248) = 0xE300000000000000;
  *(v65 + 264) = v64;
  *(v65 + 272) = @"Label";
  v67 = v121;
  v68 = @"AllowsMultipleValues";
  v69 = @"AutocapitalizationType";
  v70 = @"Class";
  v71 = @"DisableAutocorrection";
  v72 = @"Key";
  v73 = @"KeyboardType";
  v74 = @"Label";
  v75 = sub_1CA94C438("Page (WFURLs)", 13);
  v118 = v76;
  v119 = v75;
  v77 = sub_1CA94C438("Page", 4);
  v117 = v78;
  v120 = v116;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v116 - v131;
  sub_1CA948D98();
  v80 = v130;
  v81 = [v130 bundleURL];
  v116[1] = v116;
  MEMORY[0x1EEE9AC00](v81);
  *&v121 = inited;
  v82 = v129;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 280) = sub_1CA2F9F14(v119, v118, v77, v117, 0, 0, v79, v116 - v82);
  *(v65 + 304) = v126;
  *(v65 + 312) = @"Placeholder";
  v84 = @"Placeholder";
  v85 = sub_1CA94C438("Page (WFURLs)", 13);
  v118 = v86;
  v119 = v85;
  v87 = sub_1CA94C438("Page", 4);
  v89 = v88;
  v120 = v116;
  MEMORY[0x1EEE9AC00](v87);
  v90 = v116 - v131;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 320) = sub_1CA2F9F14(v119, v118, v87, v89, 0, 0, v90, v116 - v82);
  *(v65 + 344) = v126;
  *(v65 + 352) = @"TextContentType";
  *(v65 + 384) = MEMORY[0x1E69E6158];
  *(v65 + 360) = 5001813;
  *(v65 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v93 = @"TextContentType";
  v94 = sub_1CA94C1E8();
  v95 = sub_1CA2F864C(v94);
  v96 = v123;
  v123[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v98 = v121;
  *(v121 + 360) = v96;
  *(v98 + 384) = v97;
  *(v98 + 392) = @"ParameterSummary";
  v99 = @"ParameterSummary";
  v100 = sub_1CA94C438("Get RSS feeds from ${WFURLs} (Parameter Summary)", 48);
  v102 = v101;
  v103 = sub_1CA94C438("Get RSS feeds from ${WFURLs}", 28);
  v105 = v104;
  v126 = v116;
  MEMORY[0x1EEE9AC00](v103);
  v106 = v116 - v131;
  sub_1CA948D98();
  v107 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = v116 - v129;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  v111 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v112 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v98 + 400) = v111;
  *(v98 + 424) = v112;
  *(v98 + 432) = @"RequiredResources";
  *(v98 + 440) = &unk_1F49F5018;
  *(v98 + 464) = v125;
  *(v98 + 472) = @"ResidentCompatible";
  *(v98 + 504) = MEMORY[0x1E69E6370];
  *(v98 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v113 = @"RequiredResources";
  v114 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA347C3C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  static WFActionDefinitionRegistry.register(_:_:)(0xD00000000000001FLL, 0x80000001CA995930, sub_1CA34FBBC, v1);
}

id sub_1CA347CC4(uint64_t a1)
{
  v324 = a1;
  v325 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A5F40;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("hairforce|caption|meme", 22);
  v7 = v6;
  v8 = sub_1CA94C438("hairforce|caption|meme", 22);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v329 = v12;
  v332 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v317 - v332;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v328 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v330 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v331 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v317 - v331;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v327 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v322 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v323 = xmmword_1CA9813C0;
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v24 = sub_1CA94C438("An image", 8);
  v319 = v25;
  v320 = v24;
  v26 = sub_1CA94C438("An image", 8);
  v28 = v27;
  v321 = &v317;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v317 - v332;
  sub_1CA948D98();
  v30 = v328;
  v31 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v326 = inited;
  v32 = &v317 - v331;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v320, v319, v26, v28, 0, 0, v29, v32);
  *(v21 + 64) = v327;
  *(v21 + 72) = @"DescriptionResult";
  v34 = @"DescriptionResult";
  v35 = sub_1CA94C438("An image with text", 18);
  v319 = v36;
  v320 = v35;
  v318 = sub_1CA94C438("An image with text", 18);
  v38 = v37;
  v321 = &v317;
  MEMORY[0x1EEE9AC00](v318);
  v39 = v332;
  sub_1CA948D98();
  v40 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = v331;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v320, v319, v318, v38, 0, 0, &v317 - v39, &v317 - v41);
  *(v21 + 104) = v327;
  *(v21 + 112) = @"DescriptionSummary";
  v43 = @"DescriptionSummary";
  v44 = sub_1CA94C438("Overlays text onto the image passed as input.", 45);
  v319 = v45;
  v320 = v44;
  v46 = sub_1CA94C438("Overlays text onto the image passed as input.", 45);
  v48 = v47;
  v321 = &v317;
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948D98();
  v49 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v320, v319, v46, v48, 0, 0, &v317 - v39, &v317 - v41);
  *(v21 + 144) = v327;
  *(v21 + 120) = v51;
  type metadata accessor for DescriptionKey(0);
  sub_1CA34FBC4(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v52 = sub_1CA94C1E8();
  v53 = v322;
  v54 = sub_1CA6B3784(v52);
  v55 = v326;
  *(v326 + 120) = v54;
  *(v55 + 144) = v53;
  *(v55 + 152) = @"IconName";
  *(v55 + 160) = 0x6567616D49;
  *(v55 + 168) = 0xE500000000000000;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Input";
  v57 = v56;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  *(v58 + 16) = v323;
  strcpy((v58 + 32), "ParameterKey");
  *(v58 + 45) = 0;
  *(v58 + 46) = -5120;
  *(v58 + 48) = 0x6567616D494657;
  *(v58 + 56) = 0xE700000000000000;
  *(v58 + 72) = v57;
  *(v58 + 80) = 0x6465726975716552;
  *(v58 + 88) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 96) = 1;
  *(v58 + 120) = v59;
  *(v58 + 128) = 0x7365707954;
  v60 = v59;
  *(v58 + 136) = 0xE500000000000000;
  *&v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 168) = v323;
  *(v58 + 144) = &unk_1F49F5BC8;
  v61 = @"IconName";
  v62 = @"Input";
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v322 = v64;
  *(v55 + 200) = v63;
  *(v55 + 224) = v64;
  *(v55 + 232) = @"InputPassthrough";
  *(v55 + 240) = 0;
  *(v55 + 264) = v60;
  *(v55 + 272) = @"Name";
  v65 = @"InputPassthrough";
  v66 = @"Name";
  v67 = sub_1CA94C438("Overlay Text (Action Name)", 26);
  v319 = v68;
  v69 = sub_1CA94C438("Overlay Text", 12);
  v71 = v70;
  v320 = &v317;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v317 - v332;
  sub_1CA948D98();
  v73 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v317 - v331;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 280) = sub_1CA2F9F14(v67, v319, v69, v71, 0, 0, v72, v74);
  *(v55 + 304) = v327;
  *(v55 + 312) = @"Output";
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_1CA981350;
  *(v76 + 32) = 0x75736F6C63736944;
  *(v76 + 40) = 0xEF6C6576654C6572;
  *(v76 + 48) = 0x63696C627550;
  *(v76 + 56) = 0xE600000000000000;
  *(v76 + 72) = MEMORY[0x1E69E6158];
  *(v76 + 80) = 0x656C7069746C754DLL;
  *(v76 + 88) = 0xE800000000000000;
  *(v76 + 96) = 0;
  *(v76 + 120) = MEMORY[0x1E69E6370];
  *(v76 + 128) = 0x614E74757074754FLL;
  *(v76 + 136) = 0xEA0000000000656DLL;
  v77 = @"Output";
  v78 = sub_1CA94C438("Image with Text (Default Output Name)", 37);
  v320 = v79;
  v80 = sub_1CA94C438("Image with Text", 15);
  v82 = v81;
  v321 = &v317;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v317 - v332;
  sub_1CA948D98();
  v84 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v317 - v331;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 144) = sub_1CA2F9F14(v78, v320, v80, v82, 0, 0, v83, v85);
  *(v76 + 168) = v327;
  *(v76 + 176) = 0x7365707954;
  *(v76 + 216) = v323;
  *(v76 + 184) = 0xE500000000000000;
  *(v76 + 192) = &unk_1F49F5BF8;
  *(v55 + 320) = sub_1CA94C1E8();
  *(v55 + 344) = v322;
  *(v55 + 352) = @"Parameters";
  v87 = @"Parameters";
  v88 = sub_1CA34A0CC();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(v55 + 360) = v88;
  *(v55 + 384) = v89;
  *(v55 + 392) = @"ParameterSummary";
  v324 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v327 = swift_allocObject();
  *(v327 + 16) = xmmword_1CA983CD0;
  *&v323 = "Name)";
  v90 = @"ParameterSummary";
  v321 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v92 = v91;
  v93 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v95 = v94;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v317 - v332;
  sub_1CA948D98();
  v97 = v328;
  v98 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v317 - v331;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v321, v92, v93, v95, 0, 0, v96, v99);
  v102 = objc_allocWithZone(WFActionParameterSummaryValue);
  v103 = sub_1CA65DD78(0xD000000000000043, v323 | 0x8000000000000000, v101);
  *(v327 + 32) = v103;
  *&v323 = "{WFPercentageTextOffset}";
  v104 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v320 = v105;
  v321 = v104;
  v106 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v108 = v107;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v106);
  v109 = v332;
  sub_1CA948D98();
  v110 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v317 - v331;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v321, v320, v106, v108, 0, 0, &v317 - v109, v111);
  v114 = objc_allocWithZone(WFActionParameterSummaryValue);
  v115 = sub_1CA65DD78(0xD000000000000039, v323 | 0x8000000000000000, v113);
  v116 = v327;
  *(v327 + 40) = v115;
  *&v323 = "{WFTextOffset} points";
  v117 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v320 = v118;
  v321 = v117;
  v119 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v319 = v120;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v317 - v109;
  sub_1CA948D98();
  v122 = v328;
  v123 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v331;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v321, v320, v119, v319, 0, 0, v121, &v317 - v124);
  v127 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v116 + 48) = sub_1CA65DD78(0xD000000000000041, v323 | 0x8000000000000000, v126);
  *&v323 = "centageTextOffset";
  v128 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v320 = v129;
  v321 = v128;
  v130 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v132 = v131;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v317 - v332;
  sub_1CA948D98();
  v134 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v321, v320, v130, v132, 0, 0, v133, &v317 - v124);
  v137 = objc_allocWithZone(WFActionParameterSummaryValue);
  v138 = sub_1CA65DD78(0xD000000000000037, v323 | 0x8000000000000000, v136);
  *(v327 + 56) = v138;
  *&v323 = "ttom Left),WFTextOffset";
  v139 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v320 = v140;
  v321 = v139;
  v319 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v142 = v141;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v319);
  v143 = v332;
  sub_1CA948D98();
  v144 = v328;
  v145 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v317 - v331;
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v321, v320, v319, v142, 0, 0, &v317 - v143, v146);
  v149 = objc_allocWithZone(WFActionParameterSummaryValue);
  v150 = sub_1CA65DD78(0xD000000000000042, v323 | 0x8000000000000000, v148);
  v151 = v327;
  *(v327 + 64) = v150;
  *&v323 = "rcentageTextOffset";
  v152 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v320 = v153;
  v321 = v152;
  v319 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v155 = v154;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v319);
  sub_1CA948D98();
  v156 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = v331;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v321, v320, v319, v155, 0, 0, &v317 - v143, &v317 - v157);
  v160 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v151 + 72) = sub_1CA65DD78(0xD000000000000038, v323 | 0x8000000000000000, v159);
  *&v323 = "ttom Right),WFTextOffset";
  v161 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition}", 52);
  v321 = v162;
  v163 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition}", 52);
  v165 = v164;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v317 - v332;
  sub_1CA948D98();
  v167 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v161, v321, v163, v165, 0, 0, v166, &v317 - v157);
  v170 = objc_allocWithZone(WFActionParameterSummaryValue);
  v171 = sub_1CA65DD78(0xD000000000000025, v323 | 0x8000000000000000, v169);
  v172 = v327;
  *(v327 + 80) = v171;
  *&v323 = "at ${WFTextPosition}";
  v173 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} ${WFPercentageTextX}, ${WFPercentageTextY}", 95);
  v320 = v174;
  v321 = v173;
  v175 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} ${WFPercentageTextX}, ${WFPercentageTextY}", 95);
  v177 = v176;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v175);
  v178 = v332;
  sub_1CA948D98();
  v179 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  v180 = &v317 - v331;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182 = sub_1CA2F9F14(v321, v320, v175, v177, 0, 0, &v317 - v178, v180);
  v183 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v172 + 88) = sub_1CA65DD78(0xD000000000000052, v323 | 0x8000000000000000, v182);
  *&v323 = "ageTextX}, ${WFPercentageTextY}";
  v184 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} ${WFTextX}, ${WFTextY}", 75);
  v320 = v185;
  v321 = v184;
  v186 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} ${WFTextX}, ${WFTextY}", 75);
  v188 = v187;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v186);
  v189 = &v317 - v178;
  sub_1CA948D98();
  v190 = v328;
  v191 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v317 - v331;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v321, v320, v186, v188, 0, 0, v189, v192);
  v195 = objc_allocWithZone(WFActionParameterSummaryValue);
  v196 = sub_1CA65DD78(0xD00000000000003ELL, v323 | 0x8000000000000000, v194);
  *(v327 + 96) = v196;
  *&v323 = "ion} ${WFTextX}, ${WFTextY}";
  v197 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v320 = v198;
  v321 = v197;
  v199 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v201 = v200;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v199);
  v202 = v332;
  sub_1CA948D98();
  v203 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v317 - v331;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v206 = sub_1CA2F9F14(v321, v320, v199, v201, 0, 0, &v317 - v202, v204);
  v207 = objc_allocWithZone(WFActionParameterSummaryValue);
  v208 = sub_1CA65DD78(0xD000000000000041, v323 | 0x8000000000000000, v206);
  *(v327 + 104) = v208;
  *&v323 = "centageTextOffset";
  v209 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v320 = v210;
  v321 = v209;
  v211 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v213 = v212;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948D98();
  v214 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v214);
  v215 = v331;
  sub_1CA948B68();

  v216 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v217 = sub_1CA2F9F14(v321, v320, v211, v213, 0, 0, &v317 - v202, &v317 - v215);
  v218 = objc_allocWithZone(WFActionParameterSummaryValue);
  v219 = sub_1CA65DD78(0xD000000000000037, v323 | 0x8000000000000000, v217);
  *(v327 + 112) = v219;
  *&v323 = "ddle Left),WFTextOffset";
  v220 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v320 = v221;
  v321 = v220;
  v222 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v224 = v223;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v222);
  v225 = &v317 - v332;
  sub_1CA948D98();
  v226 = v328;
  v227 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v227);
  sub_1CA948B68();

  v228 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v229 = sub_1CA2F9F14(v321, v320, v222, v224, 0, 0, v225, &v317 - v215);
  v230 = objc_allocWithZone(WFActionParameterSummaryValue);
  v231 = sub_1CA65DD78(0xD000000000000042, v323 | 0x8000000000000000, v229);
  *(v327 + 120) = v231;
  *&v323 = "rcentageTextOffset";
  v232 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v320 = v233;
  v321 = v232;
  v234 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v236 = v235;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v234);
  v237 = &v317 - v332;
  sub_1CA948D98();
  v238 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v238);
  sub_1CA948B68();

  v239 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v240 = sub_1CA2F9F14(v321, v320, v234, v236, 0, 0, v237, &v317 - v215);
  v241 = objc_allocWithZone(WFActionParameterSummaryValue);
  v242 = sub_1CA65DD78(0xD000000000000038, v323 | 0x8000000000000000, v240);
  v243 = v327;
  *(v327 + 128) = v242;
  *&v323 = "ddle Right),WFTextOffset";
  v244 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v320 = v245;
  v321 = v244;
  v246 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v248 = v247;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v246);
  v249 = &v317 - v332;
  sub_1CA948D98();
  v250 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v250);
  v251 = v331;
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v253 = sub_1CA2F9F14(v321, v320, v246, v248, 0, 0, v249, &v317 - v251);
  v254 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v243 + 136) = sub_1CA65DD78(0xD000000000000040, v323 | 0x8000000000000000, v253);
  *&v323 = "entageTextOffset";
  v255 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v321 = v256;
  v257 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v259 = v258;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v257);
  v260 = &v317 - v332;
  sub_1CA948D98();
  v261 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v261);
  sub_1CA948B68();

  v262 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v263 = sub_1CA2F9F14(v255, v321, v257, v259, 0, 0, v260, &v317 - v251);
  v264 = objc_allocWithZone(WFActionParameterSummaryValue);
  v265 = sub_1CA65DD78(0xD000000000000036, v323 | 0x8000000000000000, v263);
  v266 = v327;
  *(v327 + 144) = v265;
  *&v323 = "p Center),WFTextOffset";
  v267 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v320 = v268;
  v321 = v267;
  v269 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v271 = v270;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v269);
  v272 = &v317 - v332;
  sub_1CA948D98();
  v273 = v328;
  v274 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v274);
  v275 = &v317 - v331;
  sub_1CA948B68();

  v276 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v277 = sub_1CA2F9F14(v321, v320, v269, v271, 0, 0, v272, v275);
  v278 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v266 + 152) = sub_1CA65DD78(0xD00000000000003ELL, v323 | 0x8000000000000000, v277);
  *&v323 = "p Left),WFPercentageTextOffset";
  v279 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v320 = v280;
  v321 = v279;
  v319 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v282 = v281;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v319);
  v283 = v332;
  sub_1CA948D98();
  v284 = [v273 bundleURL];
  MEMORY[0x1EEE9AC00](v284);
  v285 = v331;
  sub_1CA948B68();

  v286 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v287 = sub_1CA2F9F14(v321, v320, v319, v282, 0, 0, &v317 - v283, &v317 - v285);
  v288 = objc_allocWithZone(WFActionParameterSummaryValue);
  v289 = sub_1CA65DD78(0xD000000000000034, v323 | 0x8000000000000000, v287);
  v290 = v327;
  *(v327 + 160) = v289;
  *&v323 = "p Left),WFTextOffset";
  v291 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v320 = v292;
  v321 = v291;
  v293 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFPercentageTextOffset}", 88);
  v319 = v294;
  v322 = &v317;
  MEMORY[0x1EEE9AC00](v293);
  sub_1CA948D98();
  v295 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v295);
  sub_1CA948B68();

  v296 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v297 = sub_1CA2F9F14(v321, v320, v293, v319, 0, 0, &v317 - v283, &v317 - v285);
  v298 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v290 + 168) = sub_1CA65DD78(0xD00000000000003FLL, v323 | 0x8000000000000000, v297);
  *&v323 = "p Right),WFPercentageTextOffset";
  v299 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v301 = v300;
  v302 = sub_1CA94C438("Overlay ${WFText} on ${WFImage} at ${WFTextPosition} offset by ${WFTextOffset} points", 85);
  v304 = v303;
  MEMORY[0x1EEE9AC00](v302);
  v305 = &v317 - v332;
  sub_1CA948D98();
  v306 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v306);
  v307 = &v317 - v331;
  sub_1CA948B68();

  v308 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v309 = sub_1CA2F9F14(v299, v301, v302, v304, 0, 0, v305, v307);
  v310 = objc_allocWithZone(WFActionParameterSummaryValue);
  v311 = sub_1CA65DD78(0xD000000000000035, v323 | 0x8000000000000000, v309);
  v312 = v327;
  *(v327 + 176) = v311;
  v313 = v324;
  v314 = sub_1CA65AF90(v312);
  v315 = v326;
  *(v326 + 424) = v313;
  *(v315 + 400) = v314;
  type metadata accessor for Key(0);
  sub_1CA34FBC4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA34A0CC()
{
  v787 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v804 = swift_allocObject();
  *(v804 + 16) = xmmword_1CA983CE0;
  v803 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v800 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  v792 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"AutocapitalizationType";
  *(inited + 40) = 0x7364726F57;
  *(inited + 48) = 0xE500000000000000;
  *(inited + 64) = v1;
  *(inited + 72) = @"Class";
  v793 = 0xD000000000000014;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CA99B500;
  *(inited + 104) = v1;
  *(inited + 112) = @"Key";
  *(inited + 120) = 0x747865544657;
  *(inited + 128) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"Label";
  v2 = @"AutocapitalizationType";
  v799 = @"Class";
  v798 = @"Key";
  v797 = @"Label";
  v3 = sub_1CA94C438("Text (WFText)", 13);
  v5 = v4;
  v6 = sub_1CA94C438("Text", 4);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v806 = v10;
  v810 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v764 - v810;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v808 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v807 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v809 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v764 - v809;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v11, v15);
  v805 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 184) = v805;
  *(inited + 160) = v17;
  _s3__C3KeyVMa_0(0);
  v802 = v18;
  v801 = sub_1CA34FBC4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v19 = sub_1CA94C1E8();
  v20 = sub_1CA2F864C(v19);
  *(v804 + 32) = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = v792;
  v23 = v798;
  v22 = v799;
  *(v21 + 32) = v799;
  *(v21 + 40) = 0xD000000000000019;
  *(v21 + 48) = 0x80000001CA99B030;
  v24 = MEMORY[0x1E69E6158];
  *(v21 + 64) = MEMORY[0x1E69E6158];
  *(v21 + 72) = v23;
  *(v21 + 80) = 0x6567616D494657;
  *(v21 + 88) = 0xE700000000000000;
  v25 = v797;
  *(v21 + 104) = v24;
  *(v21 + 112) = v25;
  v26 = v25;
  v791 = v22;
  v795 = v23;
  v797 = v26;
  v798 = sub_1CA94C438("Image (WFImage)", 15);
  *&v796 = v27;
  v28 = sub_1CA94C438("Image", 5);
  v30 = v29;
  v799 = &v764;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v764 - v810;
  sub_1CA948D98();
  v32 = v808;
  v33 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v764 - v809;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 120) = sub_1CA2F9F14(v798, v796, v28, v30, 0, 0, v31, v34);
  v36 = v805;
  *(v21 + 144) = v805;
  *(v21 + 152) = @"Placeholder";
  v798 = @"Placeholder";
  v37 = sub_1CA94C438("Image (WFImage)", 15);
  *&v796 = v38;
  v39 = sub_1CA94C438("Image", 5);
  v41 = v40;
  v799 = &v764;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v764 - v810;
  sub_1CA948D98();
  v43 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v764 - v809;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v37, v796, v39, v41, 0, 0, v42, v44);
  *(v21 + 184) = v36;
  *(v21 + 160) = v46;
  v47 = sub_1CA94C1E8();
  v48 = sub_1CA2F864C(v47);
  *(v804 + 40) = v48;
  v49 = swift_initStackObject();
  v796 = xmmword_1CA981380;
  *(v49 + 16) = xmmword_1CA981380;
  v781 = 0x80000001CA99C4A0;
  v50 = v791;
  *(v49 + 32) = v791;
  *(v49 + 40) = 0xD000000000000016;
  *(v49 + 48) = 0x80000001CA99C4A0;
  v51 = MEMORY[0x1E69E6158];
  *(v49 + 64) = MEMORY[0x1E69E6158];
  *(v49 + 72) = @"DefaultValue";
  *(v49 + 80) = 0x7265746E6543;
  *(v49 + 88) = 0xE600000000000000;
  *(v49 + 104) = v51;
  *(v49 + 112) = @"ItemIconNames";
  v52 = v49;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *&v794 = v52;
  v52[15] = &unk_1F49F5048;
  v52[18] = v53;
  v52[19] = @"Items";
  v799 = swift_allocObject();
  *(v799 + 1) = xmmword_1CA983CF0;
  v54 = v50;
  v55 = @"DefaultValue";
  v56 = @"Items";
  v57 = v54;
  v58 = v55;
  v59 = v56;
  v60 = @"ItemIconNames";
  v791 = v57;
  v783 = v58;
  v782 = v59;
  *&v789 = sub_1CA94C438("Top Left (WFTextPosition)", 25);
  *&v788 = v61;
  v62 = sub_1CA94C438("Top Left", 8);
  v64 = v63;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v810;
  sub_1CA948D98();
  v66 = v808;
  v67 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v764 - v809;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v789, v788, v62, v64, 0, 0, &v764 - v65, v68);
  v71 = v799;
  v799[4] = v70;
  *&v789 = sub_1CA94C438("Top Center (WFTextPosition)", 27);
  *&v788 = v72;
  v73 = sub_1CA94C438("Top Center", 10);
  v786 = v74;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v764 - v65;
  sub_1CA948D98();
  v76 = v66;
  v77 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = v809;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 40) = sub_1CA2F9F14(v789, v788, v73, v786, 0, 0, v75, &v764 - v78);
  *&v789 = sub_1CA94C438("Top Right (WFTextPosition)", 26);
  *&v788 = v80;
  v81 = sub_1CA94C438("Top Right", 9);
  v786 = v82;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v810;
  sub_1CA948D98();
  v84 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v789, v788, v81, v786, 0, 0, &v764 - v83, &v764 - v78);
  v799[6] = v86;
  *&v789 = sub_1CA94C438("Middle Left (WFTextPosition)", 28);
  *&v788 = v87;
  v88 = sub_1CA94C438("Middle Left", 11);
  v786 = v89;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948D98();
  v90 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = v809;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v789, v788, v88, v786, 0, 0, &v764 - v83, &v764 - v91);
  v94 = v799;
  v799[7] = v93;
  *&v789 = sub_1CA94C438("Center (WFTextPosition)", 23);
  *&v788 = v95;
  v96 = sub_1CA94C438("Center", 6);
  v786 = v97;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v96);
  v98 = v810;
  sub_1CA948D98();
  v99 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v94 + 64) = sub_1CA2F9F14(v789, v788, v96, v786, 0, 0, &v764 - v98, &v764 - v91);
  *&v789 = sub_1CA94C438("Middle Right (WFTextPosition)", 29);
  *&v788 = v101;
  v102 = sub_1CA94C438("Middle Right", 12);
  v786 = v103;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v764 - v98;
  sub_1CA948D98();
  v105 = v808;
  v106 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v789, v788, v102, v786, 0, 0, v104, &v764 - v91);
  v109 = v799;
  v799[9] = v108;
  *&v789 = sub_1CA94C438("Bottom Left (WFTextPosition)", 28);
  *&v788 = v110;
  v111 = sub_1CA94C438("Bottom Left", 11);
  v786 = v112;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v810;
  sub_1CA948D98();
  v114 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v109 + 80) = sub_1CA2F9F14(v789, v788, v111, v786, 0, 0, &v764 - v113, &v764 - v91);
  *&v789 = sub_1CA94C438("Bottom Center (WFTextPosition)", 30);
  *&v788 = v116;
  v117 = sub_1CA94C438("Bottom Center", 13);
  v786 = v118;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v764 - v113;
  sub_1CA948D98();
  v120 = v808;
  v121 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v789, v788, v117, v786, 0, 0, v119, &v764 - v91);
  v124 = v799;
  v799[11] = v123;
  *&v789 = sub_1CA94C438("Bottom Right (WFTextPosition)", 29);
  *&v788 = v125;
  v126 = sub_1CA94C438("Bottom Right", 12);
  v786 = v127;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v126);
  v128 = v810;
  sub_1CA948D98();
  v129 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v809;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v124 + 96) = sub_1CA2F9F14(v789, v788, v126, v786, 0, 0, &v764 - v128, &v764 - v130);
  *&v789 = sub_1CA94C438("Custom Position (WFTextPosition)", 32);
  *&v788 = v132;
  v133 = sub_1CA94C438("Custom Position", 15);
  v786 = v134;
  *&v790 = &v764;
  MEMORY[0x1EEE9AC00](v133);
  v135 = &v764 - v128;
  sub_1CA948D98();
  v136 = v808;
  v137 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139 = sub_1CA2F9F14(v789, v788, v133, v786, 0, 0, v135, &v764 - v130);
  v140 = v799;
  v799[13] = v139;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v780 = v141;
  v142 = v794;
  *(v794 + 160) = v140;
  v143 = v795;
  *(v142 + 184) = v141;
  *(v142 + 192) = v143;
  strcpy((v142 + 200), "WFTextPosition");
  *(v142 + 215) = -18;
  v144 = v797;
  *(v142 + 224) = MEMORY[0x1E69E6158];
  *(v142 + 232) = v144;
  *&v790 = v143;
  v799 = v144;
  v795 = sub_1CA94C438("Position (WFTextPosition)", 25);
  v146 = v145;
  v147 = sub_1CA94C438("Position", 8);
  v149 = v148;
  v797 = &v764;
  MEMORY[0x1EEE9AC00](v147);
  v150 = &v764 - v810;
  sub_1CA948D98();
  v151 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v764 - v809;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v795, v146, v147, v149, 0, 0, v150, v152);
  *(v142 + 264) = v805;
  *(v142 + 240) = v154;
  v155 = sub_1CA94C1E8();
  v156 = sub_1CA2F864C(v155);
  *(v804 + 48) = v156;
  v157 = swift_initStackObject();
  v794 = xmmword_1CA981300;
  *(v157 + 16) = xmmword_1CA981300;
  *(v157 + 32) = @"AllowsDecimalNumbers";
  v158 = MEMORY[0x1E69E6370];
  *(v157 + 40) = 1;
  v159 = v791;
  *(v157 + 64) = v158;
  *(v157 + 72) = v159;
  v795 = 0x80000001CA99C180;
  *(v157 + 80) = 0xD000000000000016;
  *(v157 + 88) = 0x80000001CA99C180;
  *(v157 + 104) = MEMORY[0x1E69E6158];
  *(v157 + 112) = @"Description";
  v160 = @"AllowsDecimalNumbers";
  v161 = @"Description";
  v162 = v160;
  v163 = v161;
  v784 = v159;
  v774 = v162;
  v775 = v163;
  v791 = sub_1CA94C438("The X Coordinate to start the text at, in points. 0 starts at the left of the image. (WFTextX)", 94);
  *&v789 = v164;
  v165 = sub_1CA94C438("The X Coordinate to start the text at, in points. 0 starts at the left of the image.", 84);
  *&v788 = v166;
  v797 = &v764;
  MEMORY[0x1EEE9AC00](v165);
  v167 = &v764 - v810;
  sub_1CA948D98();
  v168 = v808;
  v169 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  v170 = v809;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v157 + 120) = sub_1CA2F9F14(v791, v789, v165, v788, 0, 0, v167, &v764 - v170);
  v172 = v790;
  *(v157 + 144) = v805;
  *(v157 + 152) = v172;
  *(v157 + 160) = 0x58747865544657;
  *(v157 + 168) = 0xE700000000000000;
  v173 = v799;
  *(v157 + 184) = MEMORY[0x1E69E6158];
  *(v157 + 192) = v173;
  v776 = v172;
  v777 = v173;
  v797 = sub_1CA94C438("X Coordinate (WFTextX)", 22);
  v791 = v174;
  v175 = sub_1CA94C438("X Coordinate", 12);
  *&v790 = v176;
  v799 = &v764;
  MEMORY[0x1EEE9AC00](v175);
  v177 = v810;
  sub_1CA948D98();
  v178 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v157 + 200) = sub_1CA2F9F14(v797, v791, v175, v790, 0, 0, &v764 - v177, &v764 - v170);
  v180 = v805;
  v181 = v798;
  *(v157 + 224) = v805;
  *(v157 + 232) = v181;
  *&v788 = v181;
  v182 = sub_1CA94C438("0 (WFTextX)", 11);
  v797 = v183;
  v798 = v182;
  v184 = sub_1CA94C438("0", 1);
  v791 = v185;
  v799 = &v764;
  MEMORY[0x1EEE9AC00](v184);
  sub_1CA948D98();
  v186 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v764 - v809;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v157 + 240) = sub_1CA2F9F14(v798, v797, v184, v791, 0, 0, &v764 - v177, v187);
  *(v157 + 264) = v180;
  *(v157 + 272) = @"RequiredResources";
  v799 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v189 = swift_allocObject();
  v790 = xmmword_1CA97EDF0;
  *(v189 + 16) = xmmword_1CA97EDF0;
  v779 = 0x80000001CA9939F0;
  v785 = 0x80000001CA993570;
  v786 = 0x80000001CA993590;
  v773 = @"RequiredResources";
  v190 = MEMORY[0x1E69E6158];
  *(v189 + 32) = sub_1CA94C1E8();
  *(v189 + 40) = sub_1CA94C1E8();
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v798 = v191;
  *(v157 + 280) = v189;
  *(v157 + 304) = v191;
  *(v157 + 312) = @"TextAlignment";
  *(v157 + 344) = v190;
  *(v157 + 320) = 0x7468676952;
  *(v157 + 328) = 0xE500000000000000;
  v778 = @"TextAlignment";
  v192 = sub_1CA94C1E8();
  v193 = sub_1CA2F864C(v192);
  *(v804 + 56) = v193;
  v194 = swift_allocObject();
  v789 = xmmword_1CA981400;
  *(v194 + 16) = xmmword_1CA981400;
  v195 = v774;
  *(v194 + 32) = v774;
  *(v194 + 40) = 1;
  v196 = v784;
  *(v194 + 64) = MEMORY[0x1E69E6370];
  *(v194 + 72) = v196;
  v791 = 0x80000001CA9A0B80;
  v797 = 0xD000000000000011;
  *(v194 + 80) = 0xD000000000000011;
  *(v194 + 88) = 0x80000001CA9A0B80;
  v197 = v775;
  *(v194 + 104) = v190;
  *(v194 + 112) = v197;
  v772 = v196;
  v784 = v195;
  v775 = v197;
  v198 = sub_1CA94C438("The X Coordinate to start the text at, as a decimal proportion of the image size between 0 and 1. 0 starts at the left of the image. (WFPercentageTextX)", 152);
  v770 = v199;
  v771 = v198;
  v769 = sub_1CA94C438("The X Coordinate to start the text at, as a decimal proportion of the image size between 0 and 1. 0 starts at the left of the image.", 132);
  v201 = v200;
  v774 = &v764;
  MEMORY[0x1EEE9AC00](v769);
  v202 = v810;
  sub_1CA948D98();
  v203 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = v809;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v194 + 120) = sub_1CA2F9F14(v771, v770, v769, v201, 0, 0, &v764 - v202, &v764 - v204);
  v206 = v776;
  v207 = v777;
  *(v194 + 144) = v805;
  *(v194 + 152) = v206;
  *(v194 + 160) = v797;
  *(v194 + 168) = 0x80000001CA9A6B50;
  *(v194 + 184) = MEMORY[0x1E69E6158];
  *(v194 + 192) = v207;
  v774 = v206;
  v776 = v207;
  v208 = sub_1CA94C438("X Coordinate (WFPercentageTextX)", 32);
  v770 = v209;
  v771 = v208;
  v210 = sub_1CA94C438("X Coordinate", 12);
  v769 = v211;
  v777 = &v764;
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948D98();
  v212 = v808;
  v213 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  sub_1CA948B68();

  v214 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v194 + 200) = sub_1CA2F9F14(v771, v770, v210, v769, 0, 0, &v764 - v202, &v764 - v204);
  v215 = v805;
  v216 = v788;
  *(v194 + 224) = v805;
  *(v194 + 232) = v216;
  *&v788 = v216;
  v217 = sub_1CA94C438("0 (WFPercentageTextX)", 21);
  v770 = v218;
  v771 = v217;
  v219 = sub_1CA94C438("0", 1);
  v221 = v220;
  v777 = &v764;
  MEMORY[0x1EEE9AC00](v219);
  v222 = &v764 - v810;
  sub_1CA948D98();
  v223 = [v212 bundleURL];
  MEMORY[0x1EEE9AC00](v223);
  v224 = &v764 - v809;
  sub_1CA948B68();

  v225 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v194 + 240) = sub_1CA2F9F14(v771, v770, v219, v221, 0, 0, v222, v224);
  v226 = v773;
  *(v194 + 264) = v215;
  *(v194 + 272) = v226;
  v227 = swift_allocObject();
  *(v227 + 16) = v790;
  v773 = v226;
  v228 = MEMORY[0x1E69E6158];
  *(v227 + 32) = sub_1CA94C1E8();
  *(v227 + 40) = sub_1CA94C1E8();
  *(v194 + 304) = v798;
  *(v194 + 280) = v227;
  v229 = sub_1CA94C1E8();
  v230 = sub_1CA2F864C(v229);
  *(v804 + 64) = v230;
  v231 = swift_allocObject();
  *(v231 + 16) = v794;
  *(v231 + 32) = v784;
  *(v231 + 40) = 1;
  v232 = v772;
  *(v231 + 64) = MEMORY[0x1E69E6370];
  *(v231 + 72) = v232;
  *(v231 + 80) = 0xD000000000000016;
  *(v231 + 88) = v795;
  v233 = v775;
  *(v231 + 104) = v228;
  *(v231 + 112) = v233;
  v777 = v232;
  v775 = v233;
  v234 = sub_1CA94C438("The Y Coordinate to start the text at, in points. 0 starts at the top of the image. (WFTextY)", 93);
  v771 = v235;
  v236 = sub_1CA94C438("The Y Coordinate to start the text at, in points. 0 starts at the top of the image.", 83);
  v238 = v237;
  v772 = &v764;
  MEMORY[0x1EEE9AC00](v236);
  v239 = v810;
  sub_1CA948D98();
  v240 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v240);
  v241 = &v764 - v809;
  sub_1CA948B68();

  v242 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v231 + 120) = sub_1CA2F9F14(v234, v771, v236, v238, 0, 0, &v764 - v239, v241);
  v243 = v774;
  *(v231 + 144) = v805;
  *(v231 + 152) = v243;
  *(v231 + 160) = 0x59747865544657;
  *(v231 + 168) = 0xE700000000000000;
  v244 = v776;
  *(v231 + 184) = MEMORY[0x1E69E6158];
  *(v231 + 192) = v244;
  v774 = v243;
  v776 = v244;
  v245 = sub_1CA94C438("Y Coordinate (WFTextY)", 22);
  v770 = v246;
  v771 = v245;
  v247 = sub_1CA94C438("Y Coordinate", 12);
  v769 = v248;
  v772 = &v764;
  MEMORY[0x1EEE9AC00](v247);
  v249 = &v764 - v239;
  sub_1CA948D98();
  v250 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v250);
  v251 = v809;
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v231 + 200) = sub_1CA2F9F14(v771, v770, v247, v769, 0, 0, v249, &v764 - v251);
  v253 = v805;
  v254 = v788;
  *(v231 + 224) = v805;
  *(v231 + 232) = v254;
  v255 = sub_1CA94C438("0 (WFTextY)", 11);
  v770 = v256;
  v771 = v255;
  v257 = sub_1CA94C438("0", 1);
  v769 = v258;
  v772 = &v764;
  MEMORY[0x1EEE9AC00](v257);
  v259 = &v764 - v810;
  sub_1CA948D98();
  v260 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v260);
  sub_1CA948B68();

  v261 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v262 = sub_1CA2F9F14(v771, v770, v257, v769, 0, 0, v259, &v764 - v251);
  v263 = v773;
  *(v231 + 240) = v262;
  *(v231 + 264) = v253;
  *(v231 + 272) = v263;
  v264 = swift_allocObject();
  *(v264 + 16) = v790;
  v773 = v263;
  v265 = MEMORY[0x1E69E6158];
  *(v264 + 32) = sub_1CA94C1E8();
  *(v264 + 40) = sub_1CA94C1E8();
  *(v231 + 280) = v264;
  v266 = v778;
  *(v231 + 304) = v798;
  *(v231 + 312) = v266;
  *(v231 + 344) = v265;
  v267 = v265;
  *(v231 + 320) = 0x7468676952;
  *(v231 + 328) = 0xE500000000000000;
  v778 = v266;
  v268 = sub_1CA94C1E8();
  v269 = sub_1CA2F864C(v268);
  *(v804 + 72) = v269;
  v270 = swift_allocObject();
  *(v270 + 16) = v794;
  *(v270 + 32) = v784;
  *(v270 + 40) = 1;
  v271 = v777;
  *(v270 + 64) = MEMORY[0x1E69E6370];
  *(v270 + 72) = v271;
  v272 = v797;
  v273 = v791;
  *(v270 + 80) = v797;
  *(v270 + 88) = v273;
  v274 = v775;
  *(v270 + 104) = v267;
  *(v270 + 112) = v274;
  v772 = v271;
  v777 = v274;
  v784 = sub_1CA94C438("The Y Coordinate to start the text at, as a decimal proportion of the image size between 0 and 1. 0 starts at the top of the image. (WFPercentageTextY)", 151);
  v775 = v275;
  v276 = sub_1CA94C438("The Y Coordinate to start the text at, as a decimal proportion of the image size between 0 and 1. 0 starts at the top of the image.", 131);
  v278 = v277;
  *&v794 = &v764;
  MEMORY[0x1EEE9AC00](v276);
  v279 = &v764 - v810;
  sub_1CA948D98();
  v280 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v280);
  v281 = &v764 - v809;
  sub_1CA948B68();

  v282 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v270 + 120) = sub_1CA2F9F14(v784, v775, v276, v278, 0, 0, v279, v281);
  v283 = v774;
  *(v270 + 144) = v805;
  *(v270 + 152) = v283;
  *(v270 + 160) = v272;
  *(v270 + 168) = 0x80000001CA9A6DF0;
  v284 = v776;
  *(v270 + 184) = MEMORY[0x1E69E6158];
  *(v270 + 192) = v284;
  v784 = v283;
  *&v794 = v284;
  v285 = sub_1CA94C438("Y Coordinate (WFPercentageTextY)", 32);
  v774 = v286;
  v775 = v285;
  v287 = sub_1CA94C438("Y Coordinate", 12);
  v771 = v288;
  v776 = &v764;
  MEMORY[0x1EEE9AC00](v287);
  v289 = &v764 - v810;
  sub_1CA948D98();
  v290 = v808;
  v291 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v291);
  v292 = v809;
  sub_1CA948B68();

  v293 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v270 + 200) = sub_1CA2F9F14(v775, v774, v287, v771, 0, 0, v289, &v764 - v292);
  v294 = v805;
  v295 = v788;
  *(v270 + 224) = v805;
  *(v270 + 232) = v295;
  v296 = sub_1CA94C438("0 (WFPercentageTextY)", 21);
  v775 = v297;
  v776 = v296;
  v298 = sub_1CA94C438("0", 1);
  v774 = v299;
  *&v788 = &v764;
  MEMORY[0x1EEE9AC00](v298);
  v300 = &v764 - v810;
  sub_1CA948D98();
  v301 = [v290 bundleURL];
  MEMORY[0x1EEE9AC00](v301);
  sub_1CA948B68();

  v302 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v270 + 240) = sub_1CA2F9F14(v776, v775, v298, v774, 0, 0, v300, &v764 - v292);
  v303 = v773;
  *(v270 + 264) = v294;
  *(v270 + 272) = v303;
  v304 = swift_allocObject();
  *(v304 + 16) = v790;
  v774 = v303;
  v305 = MEMORY[0x1E69E6158];
  *(v304 + 32) = sub_1CA94C1E8();
  *(v304 + 40) = sub_1CA94C1E8();
  *(v270 + 280) = v304;
  v306 = v778;
  *(v270 + 304) = v798;
  *(v270 + 312) = v306;
  *(v270 + 344) = v305;
  *(v270 + 320) = 0x7468676952;
  *(v270 + 328) = 0xE500000000000000;
  *&v788 = v306;
  v307 = sub_1CA94C1E8();
  v308 = sub_1CA2F864C(v307);
  *(v804 + 80) = v308;
  v309 = swift_allocObject();
  *(v309 + 16) = v789;
  v310 = v772;
  *(v309 + 32) = v772;
  *(v309 + 40) = 0xD000000000000016;
  *(v309 + 48) = v795;
  v311 = v783;
  *(v309 + 64) = v305;
  *(v309 + 72) = v311;
  v312 = MEMORY[0x1E69E6530];
  *(v309 + 80) = 0;
  v313 = v777;
  *(v309 + 104) = v312;
  *(v309 + 112) = v313;
  v773 = v310;
  v783 = v311;
  v775 = v313;
  v314 = sub_1CA94C438("The amount of additional space between the text box and the nearest edges of the image, in points. For example, the nearest edges are the Left for Middle Left alignment, the Bottom and Right for Bottom Right alignment, and the Top for Top alignment. (WFTextOffset)", 264);
  v776 = v315;
  v777 = v314;
  v316 = sub_1CA94C438("The amount of additional space between the text box and the nearest edges of the image, in points. For example, the nearest edges are the Left for Middle Left alignment, the Bottom and Right for Bottom Right alignment, and the Top for Top alignment.", 249);
  v772 = v317;
  v778 = &v764;
  MEMORY[0x1EEE9AC00](v316);
  v318 = v810;
  sub_1CA948D98();
  v319 = v808;
  v320 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v320);
  v321 = &v764 - v809;
  sub_1CA948B68();

  v322 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v309 + 120) = sub_1CA2F9F14(v777, v776, v316, v772, 0, 0, &v764 - v318, v321);
  v323 = v805;
  v324 = v784;
  *(v309 + 144) = v805;
  *(v309 + 152) = v324;
  strcpy((v309 + 160), "WFTextOffset");
  *(v309 + 173) = 0;
  *(v309 + 174) = -5120;
  v325 = v794;
  *(v309 + 184) = MEMORY[0x1E69E6158];
  *(v309 + 192) = v325;
  v776 = v324;
  v784 = v325;
  v326 = sub_1CA94C438("Offset (WFTextOffset)", 21);
  v777 = v327;
  v778 = v326;
  v328 = sub_1CA94C438("Offset", 6);
  v330 = v329;
  *&v794 = &v764;
  MEMORY[0x1EEE9AC00](v328);
  v331 = &v764 - v318;
  sub_1CA948D98();
  v332 = [v319 bundleURL];
  MEMORY[0x1EEE9AC00](v332);
  v333 = &v764 - v809;
  sub_1CA948B68();

  v334 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v309 + 200) = sub_1CA2F9F14(v778, v777, v328, v330, 0, 0, v331, v333);
  v335 = v774;
  *(v309 + 224) = v323;
  *(v309 + 232) = v335;
  v336 = swift_allocObject();
  v794 = xmmword_1CA9813C0;
  *(v336 + 16) = xmmword_1CA9813C0;
  v774 = v335;
  v337 = MEMORY[0x1E69E6158];
  *(v336 + 32) = sub_1CA94C1E8();
  *(v336 + 40) = sub_1CA94C1E8();
  *(v336 + 48) = sub_1CA94C1E8();
  *(v309 + 240) = v336;
  v338 = v788;
  *(v309 + 264) = v798;
  *(v309 + 272) = v338;
  *(v309 + 304) = v337;
  *(v309 + 280) = 0x7468676952;
  *(v309 + 288) = 0xE500000000000000;
  v778 = v338;
  v339 = sub_1CA94C1E8();
  v340 = sub_1CA2F864C(v339);
  *(v804 + 88) = v340;
  v341 = swift_allocObject();
  *(v341 + 16) = v789;
  v342 = v773;
  v343 = v797;
  *(v341 + 32) = v773;
  *(v341 + 40) = v343;
  *(v341 + 48) = v791;
  v344 = v783;
  *(v341 + 64) = v337;
  *(v341 + 72) = v344;
  v345 = MEMORY[0x1E69E63B0];
  *(v341 + 80) = 0x3FB999999999999ALL;
  v346 = v775;
  *(v341 + 104) = v345;
  *(v341 + 112) = v346;
  v777 = v342;
  v783 = v344;
  *&v788 = v346;
  v347 = sub_1CA94C438("The amount of additional space between the text box and the nearest edges of the image, as a decimal proportion of the image size between 0 and 1. For example, the nearest edges are the Left for Middle Left alignment, the Bottom and Right for Bottom Right alignment, and the Top for Top alignment. (WFPercentageTextOffset)", 322);
  v772 = v348;
  v773 = v347;
  v349 = sub_1CA94C438("The amount of additional space between the text box and the nearest edges of the image, as a decimal proportion of the image size between 0 and 1. For example, the nearest edges are the Left for Middle Left alignment, the Bottom and Right for Bottom Right alignment, and the Top for Top alignment.", 297);
  v771 = v350;
  v775 = &v764;
  MEMORY[0x1EEE9AC00](v349);
  v351 = v810;
  sub_1CA948D98();
  v352 = v808;
  v353 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v353);
  v354 = &v764 - v809;
  sub_1CA948B68();

  v355 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v356 = sub_1CA2F9F14(v773, v772, v349, v771, 0, 0, &v764 - v351, v354);
  v357 = v776;
  *(v341 + 120) = v356;
  v358 = v805;
  *(v341 + 144) = v805;
  *(v341 + 152) = v357;
  *(v341 + 160) = 0xD000000000000016;
  *(v341 + 168) = 0x80000001CA9A7310;
  v359 = v784;
  *(v341 + 184) = MEMORY[0x1E69E6158];
  *(v341 + 192) = v359;
  v775 = v357;
  v776 = v359;
  v360 = sub_1CA94C438("Offset (WFPercentageTextOffset)", 31);
  v772 = v361;
  v773 = v360;
  v362 = sub_1CA94C438("Offset", 6);
  v364 = v363;
  v784 = &v764;
  MEMORY[0x1EEE9AC00](v362);
  v365 = &v764 - v351;
  sub_1CA948D98();
  v366 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v366);
  v367 = &v764 - v809;
  sub_1CA948B68();

  v368 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v341 + 200) = sub_1CA2F9F14(v773, v772, v362, v364, 0, 0, v365, v367);
  *(v341 + 224) = v358;
  v369 = v774;
  *(v341 + 232) = v774;
  v370 = swift_allocObject();
  *(v370 + 16) = v794;
  v784 = v369;
  v371 = MEMORY[0x1E69E6158];
  *(v370 + 32) = sub_1CA94C1E8();
  *(v370 + 40) = sub_1CA94C1E8();
  *(v370 + 48) = sub_1CA94C1E8();
  *(v341 + 240) = v370;
  v372 = v778;
  *(v341 + 264) = v798;
  *(v341 + 272) = v372;
  *(v341 + 304) = v371;
  *(v341 + 280) = 0x7468676952;
  *(v341 + 288) = 0xE500000000000000;
  v778 = v372;
  v373 = sub_1CA94C1E8();
  v374 = sub_1CA2F864C(v373);
  *(v804 + 96) = v374;
  v375 = swift_allocObject();
  *(v375 + 16) = v794;
  v377 = v776;
  v376 = v777;
  *(v375 + 32) = v777;
  *(v375 + 40) = 0xD000000000000015;
  *(v375 + 48) = 0x80000001CA9A7350;
  v378 = v775;
  *(v375 + 64) = v371;
  *(v375 + 72) = v378;
  *(v375 + 80) = 0x746E6F464657;
  *(v375 + 88) = 0xE600000000000000;
  *(v375 + 104) = v371;
  *(v375 + 112) = v377;
  v774 = v376;
  v777 = v378;
  v773 = v377;
  v379 = sub_1CA94C438("Font (WFFont)", 13);
  v775 = v380;
  v381 = sub_1CA94C438("Font", 4);
  v383 = v382;
  v776 = &v764;
  MEMORY[0x1EEE9AC00](v381);
  v384 = &v764 - v810;
  sub_1CA948D98();
  v385 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v385);
  v386 = &v764 - v809;
  sub_1CA948B68();

  v387 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v388 = sub_1CA2F9F14(v379, v775, v381, v383, 0, 0, v384, v386);
  *(v375 + 144) = v805;
  *(v375 + 120) = v388;
  v389 = sub_1CA94C1E8();
  v390 = sub_1CA2F864C(v389);
  *(v804 + 104) = v390;
  v391 = swift_allocObject();
  *(v391 + 16) = v789;
  v392 = v774;
  *(v391 + 32) = v774;
  *(v391 + 40) = 0xD000000000000016;
  *(v391 + 48) = v795;
  v393 = v783;
  *(v391 + 64) = MEMORY[0x1E69E6158];
  *(v391 + 72) = v393;
  *(v391 + 80) = 36;
  v394 = v788;
  *(v391 + 104) = MEMORY[0x1E69E6530];
  *(v391 + 112) = v394;
  v776 = v392;
  v775 = v393;
  v774 = v394;
  v783 = sub_1CA94C438("The size of the font, in points, to apply to the text. (WFFontSize)", 67);
  v772 = v395;
  v396 = sub_1CA94C438("The size of the font, in points, to apply to the text.", 54);
  v398 = v397;
  *&v788 = &v764;
  MEMORY[0x1EEE9AC00](v396);
  v399 = &v764 - v810;
  sub_1CA948D98();
  v400 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v400);
  v401 = v809;
  sub_1CA948B68();

  v402 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v391 + 120) = sub_1CA2F9F14(v783, v772, v396, v398, 0, 0, v399, &v764 - v401);
  v403 = v805;
  v404 = v777;
  *(v391 + 144) = v805;
  *(v391 + 152) = v404;
  *(v391 + 160) = 0x6953746E6F464657;
  *(v391 + 168) = 0xEA0000000000657ALL;
  v405 = v773;
  *(v391 + 184) = MEMORY[0x1E69E6158];
  *(v391 + 192) = v405;
  v777 = v404;
  v783 = v405;
  v406 = sub_1CA94C438("Font Size (WFFontSize)", 22);
  v772 = v407;
  v773 = v406;
  v408 = sub_1CA94C438("Font Size", 9);
  v410 = v409;
  *&v788 = &v764;
  MEMORY[0x1EEE9AC00](v408);
  v411 = &v764 - v810;
  sub_1CA948D98();
  v412 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v412);
  sub_1CA948B68();

  v413 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v391 + 200) = sub_1CA2F9F14(v773, v772, v408, v410, 0, 0, v411, &v764 - v401);
  *(v391 + 224) = v403;
  v414 = v784;
  *(v391 + 232) = v784;
  v415 = swift_allocObject();
  v788 = xmmword_1CA981310;
  *(v415 + 16) = xmmword_1CA981310;
  v772 = v414;
  v416 = MEMORY[0x1E69E6158];
  *(v415 + 32) = sub_1CA94C1E8();
  *(v391 + 240) = v415;
  v417 = v778;
  *(v391 + 264) = v798;
  *(v391 + 272) = v417;
  *(v391 + 304) = v416;
  *(v391 + 280) = 0x7468676952;
  *(v391 + 288) = 0xE500000000000000;
  v784 = v417;
  v418 = sub_1CA94C1E8();
  v419 = sub_1CA2F864C(v418);
  *(v804 + 112) = v419;
  v420 = swift_allocObject();
  *(v420 + 16) = v789;
  v422 = v775;
  v421 = v776;
  v423 = v797;
  *(v420 + 32) = v776;
  *(v420 + 40) = v423;
  *(v420 + 48) = v791;
  *(v420 + 64) = v416;
  *(v420 + 72) = v422;
  *(v420 + 80) = 0x3FB999999999999ALL;
  v424 = v774;
  *(v420 + 104) = MEMORY[0x1E69E63B0];
  *(v420 + 112) = v424;
  v778 = v421;
  v773 = v422;
  v776 = v424;
  v774 = sub_1CA94C438("The size of the font, as a decimal proportion of the image size between 0 and 1, to apply to the text. (WFPercentageFontSize)", 125);
  v771 = v425;
  v426 = sub_1CA94C438("The size of the font, as a decimal proportion of the image size between 0 and 1, to apply to the text.", 102);
  v428 = v427;
  v775 = &v764;
  MEMORY[0x1EEE9AC00](v426);
  v429 = &v764 - v810;
  sub_1CA948D98();
  v430 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v430);
  v431 = v809;
  sub_1CA948B68();

  v432 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v420 + 120) = sub_1CA2F9F14(v774, v771, v426, v428, 0, 0, v429, &v764 - v431);
  v433 = v805;
  v434 = v777;
  *(v420 + 144) = v805;
  *(v420 + 152) = v434;
  *(v420 + 160) = v793;
  *(v420 + 168) = 0x80000001CA9A7530;
  v435 = v783;
  *(v420 + 184) = MEMORY[0x1E69E6158];
  *(v420 + 192) = v435;
  v774 = v434;
  v775 = v435;
  v777 = sub_1CA94C438("Font Size (WFPercentageFontSize)", 32);
  v771 = v436;
  v437 = sub_1CA94C438("Font Size", 9);
  v439 = v438;
  v783 = &v764;
  MEMORY[0x1EEE9AC00](v437);
  v440 = &v764 - v810;
  sub_1CA948D98();
  v441 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v441);
  sub_1CA948B68();

  v442 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v420 + 200) = sub_1CA2F9F14(v777, v771, v437, v439, 0, 0, v440, &v764 - v431);
  v443 = v772;
  *(v420 + 224) = v433;
  *(v420 + 232) = v443;
  v444 = swift_allocObject();
  *(v444 + 16) = v788;
  v777 = v443;
  v445 = MEMORY[0x1E69E6158];
  *(v444 + 32) = sub_1CA94C1E8();
  *(v420 + 240) = v444;
  v446 = v784;
  *(v420 + 264) = v798;
  *(v420 + 272) = v446;
  *(v420 + 304) = v445;
  *(v420 + 280) = 0x7468676952;
  *(v420 + 288) = 0xE500000000000000;
  v783 = v446;
  v447 = sub_1CA94C1E8();
  v448 = sub_1CA2F864C(v447);
  *(v804 + 120) = v448;
  v449 = swift_allocObject();
  *(v449 + 16) = v796;
  v450 = v778;
  *(v449 + 32) = v778;
  *(v449 + 40) = 0xD000000000000016;
  *(v449 + 48) = v781;
  v451 = v773;
  *(v449 + 64) = v445;
  *(v449 + 72) = v451;
  *(v449 + 80) = 0x7265746E6543;
  *(v449 + 88) = 0xE600000000000000;
  v452 = v776;
  *(v449 + 104) = v445;
  *(v449 + 112) = v452;
  v772 = v450;
  v778 = v451;
  v776 = v452;
  v773 = sub_1CA94C438("The alignment to apply to the text. This will align to the edge of the bounding box created by the Maximum Width, if any. (WFTextAlignment)", 139);
  v771 = v453;
  v454 = sub_1CA94C438("The alignment to apply to the text. This will align to the edge of the bounding box created by the Maximum Width, if any.", 121);
  v456 = v455;
  v784 = &v764;
  MEMORY[0x1EEE9AC00](v454);
  v457 = v810;
  sub_1CA948D98();
  v458 = v808;
  v459 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v459);
  v460 = &v764 - v809;
  sub_1CA948B68();

  v461 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v449 + 120) = sub_1CA2F9F14(v773, v771, v454, v456, 0, 0, &v764 - v457, v460);
  v462 = v782;
  *(v449 + 144) = v805;
  *(v449 + 152) = v462;
  v784 = swift_allocObject();
  *(v784 + 1) = xmmword_1CA981470;
  v463 = sub_1CA94C438("Left (WFTextAlignment)", 22);
  v770 = v464;
  v771 = v463;
  v465 = sub_1CA94C438("Left", 4);
  v467 = v466;
  v773 = &v764;
  MEMORY[0x1EEE9AC00](v465);
  sub_1CA948D98();
  v468 = [v458 bundleURL];
  MEMORY[0x1EEE9AC00](v468);
  v469 = &v764 - v809;
  sub_1CA948B68();

  v470 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v471 = sub_1CA2F9F14(v771, v770, v465, v467, 0, 0, &v764 - v457, v469);
  v472 = v784;
  v784[4] = v471;
  v473 = sub_1CA94C438("Center (WFTextAlignment)", 24);
  v770 = v474;
  v771 = v473;
  v475 = sub_1CA94C438("Center", 6);
  v769 = v476;
  v773 = &v764;
  MEMORY[0x1EEE9AC00](v475);
  v477 = v810;
  sub_1CA948D98();
  v478 = v808;
  v479 = [v808 bundleURL];
  v768 = &v764;
  MEMORY[0x1EEE9AC00](v479);
  v480 = v809;
  sub_1CA948B68();

  v481 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v472 + 40) = sub_1CA2F9F14(v771, v770, v475, v769, 0, 0, &v764 - v477, &v764 - v480);
  v482 = sub_1CA94C438("Right (WFTextAlignment)", 23);
  v770 = v483;
  v771 = v482;
  v484 = sub_1CA94C438("Right", 5);
  v769 = v485;
  v773 = &v764;
  MEMORY[0x1EEE9AC00](v484);
  sub_1CA948D98();
  v486 = [v478 bundleURL];
  MEMORY[0x1EEE9AC00](v486);
  sub_1CA948B68();

  v487 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v488 = sub_1CA2F9F14(v771, v770, v484, v769, 0, 0, &v764 - v477, &v764 - v480);
  v489 = v774;
  v490 = v784;
  v784[6] = v488;
  *(v449 + 160) = v490;
  *(v449 + 184) = v780;
  *(v449 + 192) = v489;
  *(v449 + 200) = 0x6C41747865544657;
  *(v449 + 208) = 0xEF746E656D6E6769;
  v491 = v775;
  *(v449 + 224) = MEMORY[0x1E69E6158];
  *(v449 + 232) = v491;
  v774 = v489;
  v784 = v491;
  v773 = sub_1CA94C438("Text Alignment (WFTextAlignment)", 32);
  v771 = v492;
  v493 = sub_1CA94C438("Text Alignment", 14);
  v495 = v494;
  v775 = &v764;
  MEMORY[0x1EEE9AC00](v493);
  v496 = &v764 - v810;
  sub_1CA948D98();
  v497 = [v478 bundleURL];
  MEMORY[0x1EEE9AC00](v497);
  v498 = &v764 - v809;
  sub_1CA948B68();

  v499 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v500 = sub_1CA2F9F14(v773, v771, v493, v495, 0, 0, v496, v498);
  *(v449 + 264) = v805;
  *(v449 + 240) = v500;
  v501 = sub_1CA94C1E8();
  v502 = sub_1CA2F864C(v501);
  *(v804 + 128) = v502;
  v503 = swift_allocObject();
  *(v503 + 16) = v794;
  v773 = 0x80000001CA9A7720;
  v504 = v772;
  *(v503 + 32) = v772;
  *(v503 + 40) = 0xD000000000000016;
  *(v503 + 48) = 0x80000001CA9A7720;
  v505 = MEMORY[0x1E69E6158];
  v506 = v774;
  *(v503 + 64) = MEMORY[0x1E69E6158];
  *(v503 + 72) = v506;
  *(v503 + 80) = 0x6F43747865544657;
  *(v503 + 88) = 0xEB00000000726F6CLL;
  v507 = v784;
  *(v503 + 104) = v505;
  *(v503 + 112) = v507;
  v775 = v504;
  v772 = v506;
  v784 = v507;
  v508 = sub_1CA94C438("Font Color (WFTextColor)", 24);
  v771 = v509;
  v510 = sub_1CA94C438("Font Color", 10);
  v512 = v511;
  v774 = &v764;
  MEMORY[0x1EEE9AC00](v510);
  v513 = v810;
  sub_1CA948D98();
  v514 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v514);
  v515 = &v764 - v809;
  sub_1CA948B68();

  v516 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v517 = sub_1CA2F9F14(v508, v771, v510, v512, 0, 0, &v764 - v513, v515);
  *(v503 + 144) = v805;
  *(v503 + 120) = v517;
  v518 = sub_1CA94C1E8();
  v519 = sub_1CA2F864C(v518);
  *(v804 + 136) = v519;
  v520 = swift_allocObject();
  *(v520 + 16) = v796;
  v521 = v775;
  v522 = v776;
  *(v520 + 32) = v775;
  *(v520 + 40) = 0xD000000000000016;
  *(v520 + 48) = v795;
  v523 = v778;
  *(v520 + 64) = MEMORY[0x1E69E6158];
  *(v520 + 72) = v523;
  *(v520 + 80) = 0;
  *(v520 + 104) = MEMORY[0x1E69E6530];
  *(v520 + 112) = v522;
  v774 = v521;
  v775 = v523;
  v776 = v522;
  v524 = sub_1CA94C438("The amount of rotation, in degrees, to apply to the text. Starts from the center of the text bounds. Optional. (WFTextRotation)", 127);
  v770 = v525;
  v771 = v524;
  v526 = sub_1CA94C438("The amount of rotation, in degrees, to apply to the text. Starts from the center of the text bounds. Optional.", 110);
  v528 = v527;
  v778 = &v764;
  MEMORY[0x1EEE9AC00](v526);
  v529 = &v764 - v513;
  sub_1CA948D98();
  v530 = v808;
  v531 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v531);
  v532 = &v764 - v809;
  sub_1CA948B68();

  v533 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v520 + 120) = sub_1CA2F9F14(v771, v770, v526, v528, 0, 0, v529, v532);
  v534 = v805;
  v535 = v772;
  *(v520 + 144) = v805;
  *(v520 + 152) = v535;
  strcpy((v520 + 160), "WFTextRotation");
  *(v520 + 175) = -18;
  v536 = v784;
  *(v520 + 184) = MEMORY[0x1E69E6158];
  *(v520 + 192) = v536;
  v771 = v535;
  v772 = v536;
  v537 = sub_1CA94C438("Rotation (WFTextRotation)", 25);
  v778 = v538;
  v539 = sub_1CA94C438("Rotation", 8);
  v541 = v540;
  v784 = &v764;
  MEMORY[0x1EEE9AC00](v539);
  v542 = &v764 - v810;
  sub_1CA948D98();
  v543 = [v530 bundleURL];
  MEMORY[0x1EEE9AC00](v543);
  v544 = &v764 - v809;
  sub_1CA948B68();

  v545 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v546 = sub_1CA2F9F14(v537, v778, v539, v541, 0, 0, v542, v544);
  v547 = v783;
  *(v520 + 200) = v546;
  *(v520 + 224) = v534;
  *(v520 + 232) = v547;
  v548 = MEMORY[0x1E69E6158];
  *(v520 + 264) = MEMORY[0x1E69E6158];
  *(v520 + 240) = 0x7468676952;
  *(v520 + 248) = 0xE500000000000000;
  v778 = v547;
  v549 = sub_1CA94C1E8();
  v550 = sub_1CA2F864C(v549);
  *(v804 + 144) = v550;
  v551 = swift_allocObject();
  *(v551 + 16) = v792;
  v552 = v774;
  v553 = v775;
  v554 = v797;
  *(v551 + 32) = v774;
  *(v551 + 40) = v554;
  *(v551 + 48) = 0x80000001CA99E620;
  v555 = v548;
  *(v551 + 64) = v548;
  *(v551 + 72) = v553;
  *(v551 + 80) = 0;
  v556 = v771;
  v557 = v772;
  *(v551 + 104) = MEMORY[0x1E69E6370];
  *(v551 + 112) = v556;
  v784 = 0x80000001CA9A7890;
  *(v551 + 120) = v793;
  *(v551 + 128) = 0x80000001CA9A7890;
  *(v551 + 144) = v555;
  *(v551 + 152) = v557;
  v770 = v552;
  v774 = v556;
  v783 = v557;
  v775 = v553;
  v558 = sub_1CA94C438("Outline Text (WFTextOutlineEnabled)", 35);
  v560 = v559;
  v561 = sub_1CA94C438("Outline Text", 12);
  v563 = v562;
  v772 = &v764;
  MEMORY[0x1EEE9AC00](v561);
  v564 = &v764 - v810;
  sub_1CA948D98();
  v565 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v565);
  v566 = &v764 - v809;
  sub_1CA948B68();

  v567 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v568 = sub_1CA2F9F14(v558, v560, v561, v563, 0, 0, v564, v566);
  *(v551 + 184) = v805;
  *(v551 + 160) = v568;
  v569 = sub_1CA94C1E8();
  v570 = sub_1CA2F864C(v569);
  *(v804 + 152) = v570;
  v571 = swift_allocObject();
  *(v571 + 16) = v789;
  v572 = v770;
  *(v571 + 32) = v770;
  *(v571 + 40) = 0xD000000000000016;
  *(v571 + 48) = v795;
  v574 = v775;
  v573 = v776;
  *(v571 + 64) = MEMORY[0x1E69E6158];
  *(v571 + 72) = v574;
  *(v571 + 80) = 0;
  *(v571 + 104) = MEMORY[0x1E69E6530];
  *(v571 + 112) = v573;
  v772 = v572;
  v769 = v574;
  v768 = v573;
  v575 = sub_1CA94C438("The stroke width, in points, to apply to the text. Optional. (WFTextStrokeWidth)", 80);
  v775 = v576;
  v776 = v575;
  v577 = sub_1CA94C438("The stroke width, in points, to apply to the text. Optional.", 60);
  v771 = v578;
  *&v789 = &v764;
  MEMORY[0x1EEE9AC00](v577);
  v579 = v810;
  sub_1CA948D98();
  v580 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v580);
  v581 = v809;
  sub_1CA948B68();

  v582 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v571 + 120) = sub_1CA2F9F14(v776, v775, v577, v771, 0, 0, &v764 - v579, &v764 - v581);
  v583 = v774;
  *(v571 + 144) = v805;
  *(v571 + 152) = v583;
  *(v571 + 160) = v797;
  *(v571 + 168) = 0x80000001CA9A7990;
  v584 = v783;
  *(v571 + 184) = MEMORY[0x1E69E6158];
  *(v571 + 192) = v584;
  v770 = v583;
  v771 = v584;
  v783 = sub_1CA94C438("Stroke Width (WFTextStrokeWidth)", 32);
  v776 = v585;
  v586 = sub_1CA94C438("Stroke Width", 12);
  v775 = v587;
  *&v789 = &v764;
  MEMORY[0x1EEE9AC00](v586);
  sub_1CA948D98();
  v588 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v588);
  sub_1CA948B68();

  v589 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v571 + 200) = sub_1CA2F9F14(v783, v776, v586, v775, 0, 0, &v764 - v579, &v764 - v581);
  v590 = v777;
  *(v571 + 224) = v805;
  *(v571 + 232) = v590;
  v776 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v591 = swift_allocObject();
  *(v591 + 16) = v790;
  v783 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v592 = swift_allocObject();
  *(v592 + 16) = v792;
  strcpy((v592 + 32), "WFParameterKey");
  *(v592 + 47) = -18;
  strcpy((v592 + 48), "WFSizingMethod");
  *(v592 + 63) = -18;
  v767 = 0xD000000000000013;
  v593 = MEMORY[0x1E69E6158];
  *(v592 + 72) = MEMORY[0x1E69E6158];
  *(v592 + 80) = 0xD000000000000013;
  *(v592 + 88) = v779;
  *(v592 + 96) = 61;
  *(v592 + 104) = 0xE100000000000000;
  *(v592 + 120) = v593;
  *(v592 + 128) = 0xD000000000000010;
  v774 = 0xD000000000000010;
  v594 = v785;
  *(v592 + 136) = v785;
  *(v592 + 144) = 0x6574756C6F736241;
  *(v592 + 152) = 0xE800000000000000;
  *(v592 + 168) = v593;
  *(v592 + 176) = 0x72756F7365524657;
  *(v592 + 216) = v593;
  *(v592 + 184) = 0xEF7373616C436563;
  *(v592 + 192) = 0xD00000000000001BLL;
  *&v789 = 0xD00000000000001BLL;
  v595 = v786;
  *(v592 + 200) = v786;
  v765 = v590;
  *(v591 + 32) = sub_1CA94C1E8();
  v596 = swift_allocObject();
  *(v596 + 16) = v794;
  strcpy((v596 + 32), "WFParameterKey");
  *(v596 + 47) = -18;
  v597 = v784;
  *(v596 + 48) = v793;
  *(v596 + 56) = v597;
  *(v596 + 72) = v593;
  *(v596 + 80) = 0xD000000000000010;
  *(v596 + 88) = v594;
  *(v596 + 96) = 1;
  *(v596 + 120) = MEMORY[0x1E69E6370];
  *(v596 + 128) = 0x72756F7365524657;
  *(v596 + 168) = v593;
  *(v596 + 136) = 0xEF7373616C436563;
  *(v596 + 144) = 0xD00000000000001BLL;
  *(v596 + 152) = v595;
  *(v591 + 40) = sub_1CA94C1E8();
  v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v775 = v598;
  *(v571 + 240) = v591;
  v599 = v778;
  *(v571 + 264) = v598;
  *(v571 + 272) = v599;
  *(v571 + 304) = v593;
  *(v571 + 280) = 0x7468676952;
  *(v571 + 288) = 0xE500000000000000;
  v600 = sub_1CA94C1E8();
  v601 = sub_1CA2F864C(v600);
  *(v804 + 160) = v601;
  v602 = swift_allocObject();
  *(v602 + 16) = v796;
  v603 = v772;
  v604 = v797;
  *(v602 + 32) = v772;
  *(v602 + 40) = v604;
  *(v602 + 48) = v791;
  v606 = v768;
  v605 = v769;
  *(v602 + 64) = v593;
  *(v602 + 72) = v605;
  *(v602 + 80) = 0x3FB999999999999ALL;
  *(v602 + 104) = MEMORY[0x1E69E63B0];
  *(v602 + 112) = v606;
  v766 = v603;
  v777 = v605;
  v772 = v606;
  v768 = sub_1CA94C438("The stroke width, as a decimal proportion of the font size between 0 and 1, to apply to the text. Optional. (WFPercentageTextStrokeWidth)", 137);
  v764 = v607;
  v608 = sub_1CA94C438("The stroke width, as a decimal proportion of the font size between 0 and 1, to apply to the text. Optional.", 107);
  v610 = v609;
  v769 = &v764;
  MEMORY[0x1EEE9AC00](v608);
  v611 = v810;
  sub_1CA948D98();
  v612 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v612);
  v613 = &v764 - v809;
  sub_1CA948B68();

  v614 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v615 = sub_1CA2F9F14(v768, v764, v608, v610, 0, 0, &v764 - v611, v613);
  v616 = v770;
  *(v602 + 120) = v615;
  v617 = v805;
  *(v602 + 144) = v805;
  *(v602 + 152) = v616;
  *(v602 + 160) = v789;
  *(v602 + 168) = 0x80000001CA9A7AE0;
  v618 = v771;
  *(v602 + 184) = MEMORY[0x1E69E6158];
  *(v602 + 192) = v618;
  v770 = v616;
  v771 = v618;
  v619 = sub_1CA94C438("Stroke Width (WFPercentageTextStrokeWidth)", 42);
  v768 = v620;
  v621 = sub_1CA94C438("Stroke Width", 12);
  v623 = v622;
  v769 = &v764;
  MEMORY[0x1EEE9AC00](v621);
  sub_1CA948D98();
  v624 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v624);
  v625 = &v764 - v809;
  sub_1CA948B68();

  v626 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v602 + 200) = sub_1CA2F9F14(v619, v768, v621, v623, 0, 0, &v764 - v611, v625);
  v627 = v765;
  *(v602 + 224) = v617;
  *(v602 + 232) = v627;
  v628 = swift_allocObject();
  *(v628 + 16) = v790;
  v629 = swift_allocObject();
  *(v629 + 16) = v792;
  strcpy((v629 + 32), "WFParameterKey");
  *(v629 + 47) = -18;
  strcpy((v629 + 48), "WFSizingMethod");
  *(v629 + 63) = -18;
  v630 = MEMORY[0x1E69E6158];
  v631 = v767;
  *(v629 + 72) = MEMORY[0x1E69E6158];
  *(v629 + 80) = v631;
  *(v629 + 88) = v779;
  *(v629 + 96) = 61;
  *(v629 + 104) = 0xE100000000000000;
  v632 = v774;
  *(v629 + 120) = v630;
  *(v629 + 128) = v632;
  v633 = v785;
  *(v629 + 136) = v785;
  strcpy((v629 + 144), "Proportional");
  *(v629 + 157) = 0;
  *(v629 + 158) = -5120;
  *(v629 + 168) = v630;
  *(v629 + 176) = 0x72756F7365524657;
  *(v629 + 216) = v630;
  v634 = v789;
  *(v629 + 184) = 0xEF7373616C436563;
  *(v629 + 192) = v634;
  v635 = v786;
  *(v629 + 200) = v786;
  *&v790 = v627;
  v636 = MEMORY[0x1E69E6158];
  *(v628 + 32) = sub_1CA94C1E8();
  v637 = swift_allocObject();
  *(v637 + 16) = v794;
  strcpy((v637 + 32), "WFParameterKey");
  *(v637 + 47) = -18;
  v638 = v784;
  *(v637 + 48) = v793;
  *(v637 + 56) = v638;
  *(v637 + 72) = v636;
  *(v637 + 80) = v632;
  *(v637 + 88) = v633;
  *(v637 + 96) = 1;
  *(v637 + 120) = MEMORY[0x1E69E6370];
  *(v637 + 128) = 0x72756F7365524657;
  *(v637 + 168) = v636;
  *(v637 + 136) = 0xEF7373616C436563;
  *(v637 + 144) = v634;
  *(v637 + 152) = v635;
  v639 = v636;
  *(v628 + 40) = sub_1CA94C1E8();
  *(v602 + 264) = v775;
  *(v602 + 240) = v628;
  v640 = sub_1CA94C1E8();
  v641 = sub_1CA2F864C(v640);
  *(v804 + 168) = v641;
  v642 = swift_allocObject();
  *(v642 + 16) = v792;
  v643 = v766;
  *(v642 + 32) = v766;
  *(v642 + 40) = 0xD000000000000016;
  *(v642 + 48) = v773;
  v644 = v770;
  v645 = v771;
  *(v642 + 64) = v639;
  *(v642 + 72) = v644;
  *(v642 + 80) = v797;
  *(v642 + 88) = 0x80000001CA9A7B30;
  *(v642 + 104) = v639;
  *(v642 + 112) = v645;
  v769 = v643;
  v773 = v644;
  v779 = v645;
  v646 = sub_1CA94C438("Stroke Color (WFTextStrokeColor)", 32);
  v648 = v647;
  v649 = sub_1CA94C438("Stroke Color", 12);
  v651 = v650;
  *&v792 = &v764;
  MEMORY[0x1EEE9AC00](v649);
  v652 = &v764 - v810;
  sub_1CA948D98();
  v653 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v653);
  v654 = &v764 - v809;
  sub_1CA948B68();

  v655 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v642 + 120) = sub_1CA2F9F14(v646, v648, v649, v651, 0, 0, v652, v654);
  v656 = v790;
  *(v642 + 144) = v805;
  *(v642 + 152) = v656;
  v657 = swift_allocObject();
  *(v657 + 16) = v788;
  v658 = swift_allocObject();
  *(v658 + 16) = v794;
  strcpy((v658 + 32), "WFParameterKey");
  *(v658 + 47) = -18;
  v659 = v784;
  *(v658 + 48) = v793;
  *(v658 + 56) = v659;
  v660 = MEMORY[0x1E69E6158];
  v661 = v774;
  *(v658 + 72) = MEMORY[0x1E69E6158];
  *(v658 + 80) = v661;
  *(v658 + 88) = v785;
  *(v658 + 96) = 1;
  *(v658 + 120) = MEMORY[0x1E69E6370];
  *(v658 + 128) = 0x72756F7365524657;
  *(v658 + 168) = v660;
  *(v658 + 136) = 0xEF7373616C436563;
  v662 = v786;
  *(v658 + 144) = v789;
  *(v658 + 152) = v662;
  *&v792 = v656;
  *(v657 + 32) = sub_1CA94C1E8();
  *(v642 + 184) = v775;
  *(v642 + 160) = v657;
  v663 = sub_1CA94C1E8();
  v664 = sub_1CA2F864C(v663);
  *(v804 + 176) = v664;
  v665 = swift_allocObject();
  *(v665 + 16) = v796;
  v666 = v769;
  *(v665 + 32) = v769;
  *(v665 + 40) = 0xD000000000000016;
  *(v665 + 48) = v795;
  v667 = v772;
  *(v665 + 64) = v660;
  *(v665 + 72) = v667;
  *&v790 = v666;
  v793 = v667;
  *&v794 = sub_1CA94C438("The maximum width of the text, in points. If 0, the text will have a bounding box that is as wide as necessary, and may run off the edge of the image. Otherwise, the text will wrap within the bounds of the width. Optional. (WFTextBoxWidth)", 239);
  *&v789 = v668;
  v786 = sub_1CA94C438("The maximum width of the text, in points. If 0, the text will have a bounding box that is as wide as necessary, and may run off the edge of the image. Otherwise, the text will wrap within the bounds of the width. Optional.", 222);
  v670 = v669;
  v795 = &v764;
  MEMORY[0x1EEE9AC00](v786);
  v671 = &v764 - v810;
  sub_1CA948D98();
  v672 = v808;
  v673 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v673);
  v674 = v809;
  sub_1CA948B68();

  v675 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v665 + 80) = sub_1CA2F9F14(v794, v789, v786, v670, 0, 0, v671, &v764 - v674);
  v676 = v805;
  v677 = v773;
  *(v665 + 104) = v805;
  *(v665 + 112) = v677;
  strcpy((v665 + 120), "WFTextBoxWidth");
  *(v665 + 135) = -18;
  v678 = v779;
  *(v665 + 144) = MEMORY[0x1E69E6158];
  *(v665 + 152) = v678;
  v795 = v677;
  *&v794 = v678;
  v679 = sub_1CA94C438("Maximum Width (WFTextBoxWidth)", 30);
  v785 = v680;
  v786 = v679;
  v784 = sub_1CA94C438("Maximum Width", 13);
  v682 = v681;
  *&v789 = &v764;
  MEMORY[0x1EEE9AC00](v784);
  v683 = &v764 - v810;
  sub_1CA948D98();
  v684 = [v672 bundleURL];
  MEMORY[0x1EEE9AC00](v684);
  sub_1CA948B68();

  v685 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v665 + 160) = sub_1CA2F9F14(v786, v785, v784, v682, 0, 0, v683, &v764 - v674);
  v686 = v792;
  *(v665 + 184) = v676;
  *(v665 + 192) = v686;
  v687 = swift_allocObject();
  *(v687 + 16) = v788;
  v688 = MEMORY[0x1E69E6158];
  *(v687 + 32) = sub_1CA94C1E8();
  *(v665 + 200) = v687;
  v689 = v778;
  *(v665 + 224) = v798;
  *(v665 + 232) = v689;
  *(v665 + 264) = v688;
  *(v665 + 240) = 0x7468676952;
  *(v665 + 248) = 0xE500000000000000;
  v690 = sub_1CA94C1E8();
  v691 = sub_1CA2F864C(v690);
  *(v804 + 184) = v691;
  v692 = swift_allocObject();
  *(v692 + 16) = v796;
  v693 = v797;
  *(v692 + 32) = v790;
  *(v692 + 40) = v693;
  *(v692 + 48) = v791;
  v694 = v777;
  *(v692 + 64) = v688;
  *(v692 + 72) = v694;
  *(v692 + 80) = 0x3FE999999999999ALL;
  v695 = v793;
  *(v692 + 104) = MEMORY[0x1E69E63B0];
  *(v692 + 112) = v695;
  v791 = sub_1CA94C438("The maximum width of the text, as a decimal proportion of the image size between 0 and 1. If 0, the text will have a bounding box that is as wide as necessary, and may run off the edge of the image. Otherwise, the text will wrap within the bounds of the width. Optional. (WFPercentageTextBoxWidth)", 297);
  *&v789 = v696;
  v697 = sub_1CA94C438("The maximum width of the text, as a decimal proportion of the image size between 0 and 1. If 0, the text will have a bounding box that is as wide as necessary, and may run off the edge of the image. Otherwise, the text will wrap within the bounds of the width. Optional.", 270);
  v786 = v698;
  v797 = &v764;
  MEMORY[0x1EEE9AC00](v697);
  v699 = &v764 - v810;
  sub_1CA948D98();
  v700 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v700);
  v701 = v809;
  sub_1CA948B68();

  v702 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v692 + 120) = sub_1CA2F9F14(v791, v789, v697, v786, 0, 0, v699, &v764 - v701);
  v703 = v805;
  v704 = v795;
  *(v692 + 144) = v805;
  *(v692 + 152) = v704;
  *(v692 + 160) = 0xD000000000000018;
  *(v692 + 168) = 0x80000001CA9A7FC0;
  v705 = v794;
  *(v692 + 184) = MEMORY[0x1E69E6158];
  *(v692 + 192) = v705;
  v791 = sub_1CA94C438("Maximum Width (WFPercentageTextBoxWidth)", 40);
  *&v789 = v706;
  v707 = sub_1CA94C438("Maximum Width", 13);
  v786 = v708;
  v797 = &v764;
  MEMORY[0x1EEE9AC00](v707);
  v709 = &v764 - v810;
  sub_1CA948D98();
  v710 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v710);
  sub_1CA948B68();

  v711 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v692 + 200) = sub_1CA2F9F14(v791, v789, v707, v786, 0, 0, v709, &v764 - v701);
  v712 = v792;
  *(v692 + 224) = v703;
  *(v692 + 232) = v712;
  v713 = swift_allocObject();
  *(v713 + 16) = v788;
  v714 = MEMORY[0x1E69E6158];
  *(v713 + 32) = sub_1CA94C1E8();
  *(v692 + 264) = v798;
  *(v692 + 240) = v713;
  v715 = sub_1CA94C1E8();
  v716 = sub_1CA2F864C(v715);
  *(v804 + 192) = v716;
  v717 = swift_allocObject();
  *(v717 + 16) = v796;
  *(v717 + 32) = v790;
  *(v717 + 40) = 0xD000000000000016;
  *(v717 + 48) = v781;
  v718 = v777;
  *(v717 + 64) = v714;
  *(v717 + 72) = v718;
  strcpy((v717 + 80), "Proportional");
  *(v717 + 93) = 0;
  *(v717 + 94) = -5120;
  v719 = v793;
  *(v717 + 104) = v714;
  *(v717 + 112) = v719;
  v720 = sub_1CA94C438("The sizing method to use. Proportional sizing will cause all parameters to use a decimal proportion between 0 and 1. Absolute sizing will cause all parameters to use points. (WFSizingMethod)", 190);
  v799 = v721;
  v722 = sub_1CA94C438("The sizing method to use. Proportional sizing will cause all parameters to use a decimal proportion between 0 and 1. Absolute sizing will cause all parameters to use points.", 173);
  v724 = v723;
  v800 = &v764;
  MEMORY[0x1EEE9AC00](v722);
  v725 = v810;
  sub_1CA948D98();
  v726 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v726);
  v727 = &v764 - v809;
  sub_1CA948B68();

  v728 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v717 + 120) = sub_1CA2F9F14(v720, v799, v722, v724, 0, 0, &v764 - v725, v727);
  v729 = v782;
  *(v717 + 144) = v805;
  *(v717 + 152) = v729;
  v800 = swift_allocObject();
  *(v800 + 1) = xmmword_1CA981360;
  v730 = sub_1CA94C438("Proportional (WFSizingMethod)", 29);
  v797 = v731;
  v798 = v730;
  v732 = sub_1CA94C438("Proportional", 12);
  *&v796 = v733;
  v799 = &v764;
  MEMORY[0x1EEE9AC00](v732);
  sub_1CA948D98();
  v734 = v808;
  v735 = [v808 bundleURL];
  v793 = &v764;
  MEMORY[0x1EEE9AC00](v735);
  v736 = v809;
  sub_1CA948B68();

  v737 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v738 = sub_1CA2F9F14(v798, v797, v732, v796, 0, 0, &v764 - v725, &v764 - v736);
  v800[4] = v738;
  v739 = sub_1CA94C438("Absolute (WFSizingMethod)", 25);
  v797 = v740;
  v798 = v739;
  v741 = sub_1CA94C438("Absolute", 8);
  *&v796 = v742;
  v799 = &v764;
  MEMORY[0x1EEE9AC00](v741);
  v743 = v810;
  sub_1CA948D98();
  v744 = [v734 bundleURL];
  MEMORY[0x1EEE9AC00](v744);
  sub_1CA948B68();

  v745 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v746 = sub_1CA2F9F14(v798, v797, v741, v796, 0, 0, &v764 - v743, &v764 - v736);
  v747 = v800;
  v800[5] = v746;
  *(v717 + 160) = v747;
  v748 = v795;
  *(v717 + 184) = v780;
  *(v717 + 192) = v748;
  strcpy((v717 + 200), "WFSizingMethod");
  *(v717 + 215) = -18;
  v749 = v794;
  *(v717 + 224) = MEMORY[0x1E69E6158];
  *(v717 + 232) = v749;
  v750 = sub_1CA94C438("Sizing (WFSizingMethod)", 23);
  v752 = v751;
  v753 = sub_1CA94C438("Sizing", 6);
  v755 = v754;
  v800 = &v764;
  MEMORY[0x1EEE9AC00](v753);
  sub_1CA948D98();
  v756 = [v808 bundleURL];
  MEMORY[0x1EEE9AC00](v756);
  v757 = &v764 - v809;
  sub_1CA948B68();

  v758 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v759 = sub_1CA2F9F14(v750, v752, v753, v755, 0, 0, &v764 - v743, v757);
  *(v717 + 264) = v805;
  *(v717 + 240) = v759;
  v760 = sub_1CA94C1E8();
  v761 = sub_1CA2F864C(v760);
  v762 = v804;
  *(v804 + 200) = v761;
  return v762;
}