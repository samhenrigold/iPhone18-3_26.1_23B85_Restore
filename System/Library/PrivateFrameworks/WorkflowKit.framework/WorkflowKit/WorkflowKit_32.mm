id sub_1CA5B0CC4()
{
  v116 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9D2270;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("episodes|podcast|show|library", 29);
  v6 = v5;
  v7 = sub_1CA94C438("episodes|podcast|show|library", 29);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = v11;
  v124 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v109 - v124;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v121 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v122 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v109 - v122;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v119 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v118 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Returns a list of episodes from a podcast show.", 47);
  v115 = v27;
  v28 = sub_1CA94C438("Returns a list of episodes from a podcast show.", 47);
  v30 = v29;
  *&v117 = &v109;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v109 - v124;
  sub_1CA948D98();
  v32 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v109 - v122;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v115, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v119;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v118;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v117 = xmmword_1CA981350;
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
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v118;
  *(v38 + 192) = &unk_1F4A082B8;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v115 = v42;
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438("Get Episodes of Podcast (Action Name)", 37);
  v111 = v45;
  v112 = v44;
  v46 = sub_1CA94C438("Get Episodes of Podcast", 23);
  v48 = v47;
  v113 = &v109;
  MEMORY[0x1EEE9AC00](v46);
  v49 = v124;
  sub_1CA948D98();
  v50 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v109 - v122;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v112, v111, v46, v48, 0, 0, &v109 - v49, v51);
  v53 = v119;
  *(inited + 264) = v119;
  *(inited + 272) = @"Output";
  v54 = swift_initStackObject();
  *(v54 + 16) = v117;
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
  v56 = sub_1CA94C438("Episodes (Default Output Name)", 30);
  v112 = v57;
  v113 = v56;
  v111 = sub_1CA94C438("Episodes", 8);
  v59 = v58;
  v114 = &v109;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v60 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v109 - v122;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v113, v112, v111, v59, 0, 0, &v109 - v49, v61);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 216) = v118;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 192) = &unk_1F4A082E8;
  v63 = MEMORY[0x1E69E6158];
  *(inited + 280) = sub_1CA94C1E8();
  *(inited + 304) = v115;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_allocObject();
  *(v64 + 16) = v117;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000018;
  *(v64 + 48) = 0x80000001CA9B0430;
  *(v64 + 64) = v63;
  *(v64 + 72) = @"Key";
  *(v64 + 80) = 0x7475706E494657;
  *(v64 + 88) = 0xE700000000000000;
  *(v64 + 104) = v63;
  *(v64 + 112) = @"Label";
  v65 = @"Parameters";
  v66 = @"Class";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438("Podcast (WFInput)", 17);
  v111 = v70;
  v112 = v69;
  v71 = sub_1CA94C438("Podcast", 7);
  v110 = v72;
  v113 = &v109;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v109 - v124;
  sub_1CA948D98();
  v74 = v123;
  v75 = [v123 bundleURL];
  v109 = &v109;
  MEMORY[0x1EEE9AC00](v75);
  *&v117 = inited;
  v76 = v122;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v112, v111, v71, v110, 0, 0, v73, &v109 - v76);
  v78 = v119;
  *(v64 + 144) = v119;
  *(v64 + 152) = @"Placeholder";
  v79 = @"Placeholder";
  v80 = sub_1CA94C438("Podcast (WFInput)", 17);
  v111 = v81;
  v112 = v80;
  v82 = sub_1CA94C438("Podcast", 7);
  v110 = v83;
  v113 = &v109;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v109 - v124;
  sub_1CA948D98();
  v85 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v112, v111, v82, v110, 0, 0, v84, &v109 - v76);
  *(v64 + 184) = v78;
  *(v64 + 160) = v87;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v88 = sub_1CA94C1E8();
  v89 = sub_1CA2F864C(v88);
  v90 = v115;
  *(v115 + 32) = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v92 = v117;
  *(v117 + 320) = v90;
  v92[43] = v91;
  v92[44] = @"ParameterSummary";
  v93 = @"ParameterSummary";
  v94 = sub_1CA94C438("Get episodes of ${WFInput} (Parameter Summary)", 46);
  v96 = v95;
  v97 = sub_1CA94C438("Get episodes of ${WFInput}", 26);
  v99 = v98;
  v119 = &v109;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v109 - v124;
  sub_1CA948D98();
  v101 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v109 - v122;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v92[45] = v105;
  v92[48] = v106;
  v92[49] = @"RequiredResources";
  v92[53] = v118;
  v92[50] = &unk_1F4A08318;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v107 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5B1BC8()
{
  v351 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9D23E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v370 = sub_1CA94C438("unix|shell|script|ssh|terminal|linux|mac", 40);
  v5 = v4;
  v6 = sub_1CA94C438("unix|shell|script|ssh|terminal|linux|mac", 40);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v374 = v10;
  v371 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v342 - v371;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v373 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v372 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v369 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v342 - v369;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v370, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v370 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v367 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v368 = xmmword_1CA9813C0;
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = @"DescriptionInput";
  v21 = @"Description";
  v22 = @"DescriptionInput";
  v23 = sub_1CA94C438("The input passed to the shell script (stdin)", 44);
  v365 = v24;
  v25 = sub_1CA94C438("The input passed to the shell script (stdin)", 44);
  v27 = v26;
  v366 = &v342;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v342 - v371;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  v363 = inited;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v342 - v369;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v23, v365, v25, v27, 0, 0, v28, v31);
  *(v20 + 64) = v370;
  *(v20 + 72) = @"DescriptionResult";
  v33 = @"DescriptionResult";
  v34 = sub_1CA94C438("The output from the shell script (stdout)", 41);
  v364 = v35;
  v365 = v34;
  v362 = sub_1CA94C438("The output from the shell script (stdout)", 41);
  v37 = v36;
  v366 = &v342;
  MEMORY[0x1EEE9AC00](v362);
  v38 = v371;
  sub_1CA948D98();
  v39 = v373;
  v40 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = v369;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 80) = sub_1CA2F9F14(v365, v364, v362, v37, 0, 0, &v342 - v38, &v342 - v41);
  *(v20 + 104) = v370;
  *(v20 + 112) = @"DescriptionSummary";
  v43 = @"DescriptionSummary";
  v44 = sub_1CA94C438("Runs a script on a remote computer over SSH.", 44);
  v364 = v45;
  v365 = v44;
  v46 = sub_1CA94C438("Runs a script on a remote computer over SSH.", 44);
  v48 = v47;
  v366 = &v342;
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948D98();
  v49 = [v39 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v365, v364, v46, v48, 0, 0, &v342 - v38, &v342 - v41);
  *(v20 + 144) = v370;
  *(v20 + 120) = v51;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v52 = sub_1CA94C1E8();
  v53 = v367;
  v54 = sub_1CA6B3784(v52);
  v55 = v363;
  v363[18] = v53;
  v55[15] = v54;
  v56 = v55;
  v55[19] = sub_1CA94C368();
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 160) = 1;
  v56[23] = v57;
  v56[24] = @"IconColor";
  v58 = v57;
  v56[25] = 0x6B63616C42;
  v56[26] = 0xE500000000000000;
  v59 = MEMORY[0x1E69E6158];
  v56[28] = MEMORY[0x1E69E6158];
  v56[29] = @"IconSymbol";
  strcpy(v56 + 240, "terminal.fill");
  *(v56 + 127) = -4864;
  v56[33] = v59;
  v56[34] = @"Input";
  v60 = v59;
  v61 = v56;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v360 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x656C7069746C754DLL;
  *(v62 + 40) = 0xE800000000000000;
  *(v62 + 48) = 0;
  *(v62 + 72) = v58;
  strcpy((v62 + 80), "ParameterKey");
  *(v62 + 93) = 0;
  *(v62 + 94) = -5120;
  *(v62 + 96) = 0x7475706E494657;
  *(v62 + 104) = 0xE700000000000000;
  *(v62 + 120) = v60;
  *(v62 + 128) = 0x6465726975716552;
  *(v62 + 136) = 0xE800000000000000;
  *(v62 + 144) = 0;
  *(v62 + 168) = v58;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 216) = v361;
  *(v62 + 192) = &unk_1F4A08368;
  v63 = @"IconColor";
  v64 = @"IconSymbol";
  v65 = @"Input";
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v367 = v67;
  v61[35] = v66;
  v61[38] = v67;
  v61[39] = @"Name";
  v68 = @"Name";
  v364 = sub_1CA94C438("Run Script Over SSH (Action Name)", 33);
  v362 = v69;
  v70 = sub_1CA94C438("Run Script Over SSH", 19);
  v72 = v71;
  v365 = &v342;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v342 - v371;
  sub_1CA948D98();
  v74 = v373;
  v75 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = v369;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v364, v362, v70, v72, 0, 0, v73, &v342 - v76);
  v79 = v363;
  v363[40] = v78;
  v80 = v370;
  v79[43] = v370;
  v79[44] = @"Output";
  v81 = swift_allocObject();
  *(v81 + 16) = v368;
  *(v81 + 32) = 0x656C7069746C754DLL;
  *(v81 + 40) = 0xE800000000000000;
  *(v81 + 48) = 0;
  *(v81 + 72) = MEMORY[0x1E69E6370];
  *(v81 + 80) = 0x614E74757074754FLL;
  *(v81 + 88) = 0xEA0000000000656DLL;
  v82 = @"Output";
  v83 = sub_1CA94C438("Shell Script Result (Default Output Name)", 41);
  v365 = v84;
  v366 = v83;
  v364 = sub_1CA94C438("Shell Script Result", 19);
  v86 = v85;
  *&v368 = &v342;
  MEMORY[0x1EEE9AC00](v364);
  v87 = &v342 - v371;
  sub_1CA948D98();
  v88 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 96) = sub_1CA2F9F14(v366, v365, v364, v86, 0, 0, v87, &v342 - v76);
  *(v81 + 120) = v80;
  *(v81 + 128) = 0x7365707954;
  *(v81 + 168) = v361;
  *(v81 + 136) = 0xE500000000000000;
  *(v81 + 144) = &unk_1F4A08398;
  v90 = MEMORY[0x1E69E6158];
  v91 = sub_1CA94C1E8();
  v92 = v363;
  v363[45] = v91;
  v92[48] = v367;
  v92[49] = @"ParameterCollapsingBehavior";
  v92[50] = 0x726576654ELL;
  v92[51] = 0xE500000000000000;
  v92[53] = v90;
  v92[54] = @"Parameters";
  v93 = v90;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v368 = swift_allocObject();
  *(v368 + 16) = xmmword_1CA985370;
  v367 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v94 = swift_allocObject();
  v353 = xmmword_1CA981300;
  *(v94 + 16) = xmmword_1CA981300;
  *(v94 + 32) = @"AutocapitalizationType";
  *(v94 + 40) = 1701736270;
  *(v94 + 48) = 0xE400000000000000;
  *(v94 + 64) = v93;
  *(v94 + 72) = @"Class";
  v362 = 0x80000001CA99B500;
  *(v94 + 80) = 0xD000000000000014;
  *(v94 + 88) = 0x80000001CA99B500;
  *(v94 + 104) = v93;
  *(v94 + 112) = @"DisableAutocorrection";
  *(v94 + 120) = 1;
  *(v94 + 144) = MEMORY[0x1E69E6370];
  *(v94 + 152) = @"Key";
  *(v94 + 160) = 0x7263534853534657;
  *(v94 + 168) = 0xEB00000000747069;
  *(v94 + 184) = v93;
  *(v94 + 192) = @"Label";
  v95 = @"AutocapitalizationType";
  v96 = @"Class";
  v97 = @"DisableAutocorrection";
  v98 = @"Key";
  v99 = @"Label";
  v100 = v95;
  v101 = v96;
  v102 = v97;
  v103 = v98;
  v104 = v99;
  v358 = v100;
  *&v354 = v101;
  v356 = v102;
  v352 = v103;
  v359 = v104;
  v105 = @"ParameterCollapsingBehavior";
  v106 = @"Parameters";
  v364 = sub_1CA94C438("Script (WFSSHScript)", 20);
  v357 = v107;
  *&v350 = sub_1CA94C438("Script", 6);
  v109 = v108;
  v365 = &v342;
  MEMORY[0x1EEE9AC00](v350);
  v110 = v371;
  sub_1CA948D98();
  v111 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = v369;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v94 + 200) = sub_1CA2F9F14(v364, v357, v350, v109, 0, 0, &v342 - v110, &v342 - v112);
  v114 = v370;
  *(v94 + 224) = v370;
  *(v94 + 232) = @"MonospaceFont";
  *(v94 + 240) = 1;
  v115 = MEMORY[0x1E69E6370];
  *(v94 + 264) = MEMORY[0x1E69E6370];
  *(v94 + 272) = @"Multiline";
  *(v94 + 280) = 1;
  *(v94 + 304) = v115;
  *(v94 + 312) = @"Placeholder";
  v357 = @"Placeholder";
  v116 = @"MonospaceFont";
  v117 = @"Multiline";
  v364 = sub_1CA94C438("Script (WFSSHScript)", 20);
  *&v350 = v118;
  v119 = sub_1CA94C438("Script", 6);
  v349 = v120;
  v365 = &v342;
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948D98();
  v121 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v364, v350, v119, v349, 0, 0, &v342 - v110, &v342 - v112);
  *(v94 + 344) = v114;
  *(v94 + 320) = v123;
  _s3__C3KeyVMa_0(0);
  v365 = v124;
  v364 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v125 = sub_1CA94C1E8();
  v126 = sub_1CA2F864C(v125);
  *(v368 + 32) = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_1CA9813E0;
  *(v127 + 32) = v358;
  *(v127 + 40) = 1701736270;
  *(v127 + 48) = 0xE400000000000000;
  v128 = MEMORY[0x1E69E6158];
  v129 = v354;
  *(v127 + 64) = MEMORY[0x1E69E6158];
  *(v127 + 72) = v129;
  *(v127 + 80) = 0xD000000000000014;
  *(v127 + 88) = v362;
  v130 = v356;
  *(v127 + 104) = v128;
  *(v127 + 112) = v130;
  *(v127 + 120) = 1;
  v131 = v352;
  *(v127 + 144) = MEMORY[0x1E69E6370];
  *(v127 + 152) = v131;
  *(v127 + 160) = 0x736F484853534657;
  *(v127 + 168) = 0xE900000000000074;
  *(v127 + 184) = v128;
  *(v127 + 192) = @"KeyboardType";
  *(v127 + 200) = 5001813;
  *(v127 + 208) = 0xE300000000000000;
  v132 = v359;
  *(v127 + 224) = v128;
  *(v127 + 232) = v132;
  v133 = @"KeyboardType";
  v348 = v129;
  *&v350 = v131;
  v352 = v132;
  v349 = v133;
  *&v354 = sub_1CA94C438("Host (WFSSHHost)", 16);
  v347 = v134;
  v135 = sub_1CA94C438("Host", 4);
  v346 = v136;
  v359 = &v342;
  MEMORY[0x1EEE9AC00](v135);
  v137 = v371;
  sub_1CA948D98();
  v138 = [v373 bundleURL];
  v345 = &v342;
  MEMORY[0x1EEE9AC00](v138);
  v139 = v112;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 240) = sub_1CA2F9F14(v354, v347, v135, v346, 0, 0, &v342 - v137, &v342 - v112);
  v141 = v370;
  v142 = v357;
  *(v127 + 264) = v370;
  *(v127 + 272) = v142;
  v357 = v142;
  *&v354 = sub_1CA94C438("192.168.1.100 (WFSSHHost)", 25);
  v347 = v143;
  v144 = sub_1CA94C438("192.168.1.100", 13);
  v146 = v145;
  v359 = &v342;
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948D98();
  v147 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 280) = sub_1CA2F9F14(v354, v347, v144, v146, 0, 0, &v342 - v137, &v342 - v139);
  *(v127 + 304) = v141;
  *(v127 + 312) = @"TextAlignment";
  *(v127 + 320) = 0x7468676952;
  *(v127 + 328) = 0xE500000000000000;
  v149 = MEMORY[0x1E69E6158];
  *(v127 + 344) = MEMORY[0x1E69E6158];
  *(v127 + 352) = @"TextContentType";
  *(v127 + 384) = v149;
  v150 = v149;
  *(v127 + 360) = 5001813;
  *(v127 + 368) = 0xE300000000000000;
  v151 = @"TextAlignment";
  v152 = @"TextContentType";
  v153 = v151;
  v154 = v152;
  v347 = v153;
  v359 = v154;
  v155 = sub_1CA94C1E8();
  v156 = sub_1CA2F864C(v155);
  *(v368 + 40) = v156;
  v157 = swift_allocObject();
  v354 = xmmword_1CA981400;
  *(v157 + 16) = xmmword_1CA981400;
  v158 = v348;
  *(v157 + 32) = v348;
  *(v157 + 40) = 0xD000000000000014;
  *(v157 + 48) = v362;
  *(v157 + 64) = v150;
  *(v157 + 72) = @"DefaultValue";
  *(v157 + 80) = 12850;
  *(v157 + 88) = 0xE200000000000000;
  v159 = v350;
  *(v157 + 104) = v150;
  *(v157 + 112) = v159;
  *(v157 + 120) = 0x726F504853534657;
  *(v157 + 128) = 0xE900000000000074;
  v160 = v349;
  *(v157 + 144) = v150;
  *(v157 + 152) = v160;
  *(v157 + 160) = 0x61507265626D754ELL;
  *(v157 + 168) = 0xE900000000000064;
  *(v157 + 184) = v150;
  v161 = v352;
  *(v157 + 192) = v352;
  v162 = @"DefaultValue";
  v346 = v158;
  v349 = v159;
  *&v350 = v161;
  v352 = v162;
  v163 = sub_1CA94C438("Port (WFSSHPort)", 16);
  v344 = v164;
  v345 = v163;
  v343 = sub_1CA94C438("Port", 4);
  v166 = v165;
  v348 = &v342;
  MEMORY[0x1EEE9AC00](v343);
  v167 = v371;
  sub_1CA948D98();
  v168 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  v169 = v369;
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v157 + 200) = sub_1CA2F9F14(v345, v344, v343, v166, 0, 0, &v342 - v167, &v342 - v169);
  v171 = v370;
  v172 = v357;
  *(v157 + 224) = v370;
  *(v157 + 232) = v172;
  v348 = v172;
  v173 = sub_1CA94C438("22 (WFSSHPort)", 14);
  v344 = v174;
  v345 = v173;
  v175 = sub_1CA94C438("22", 2);
  v177 = v176;
  v357 = &v342;
  MEMORY[0x1EEE9AC00](v175);
  sub_1CA948D98();
  v178 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v157 + 240) = sub_1CA2F9F14(v345, v344, v175, v177, 0, 0, &v342 - v167, &v342 - v169);
  v180 = v347;
  *(v157 + 264) = v171;
  *(v157 + 272) = v180;
  v181 = MEMORY[0x1E69E6158];
  *(v157 + 304) = MEMORY[0x1E69E6158];
  *(v157 + 280) = 0x7468676952;
  *(v157 + 288) = 0xE500000000000000;
  v357 = v180;
  v182 = sub_1CA94C1E8();
  v183 = sub_1CA2F864C(v182);
  *(v368 + 48) = v183;
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_1CA981420;
  *(v184 + 32) = v358;
  *(v184 + 40) = 1701736270;
  *(v184 + 48) = 0xE400000000000000;
  v185 = v346;
  *(v184 + 64) = v181;
  *(v184 + 72) = v185;
  *(v184 + 80) = 0xD000000000000014;
  *(v184 + 88) = v362;
  v186 = v356;
  *(v184 + 104) = v181;
  *(v184 + 112) = v186;
  *(v184 + 120) = 1;
  v187 = MEMORY[0x1E69E6370];
  *(v184 + 144) = MEMORY[0x1E69E6370];
  *(v184 + 152) = @"DoNotLocalizePlaceholder";
  *(v184 + 160) = 1;
  *(v184 + 184) = v187;
  *(v184 + 192) = @"DoNotLocalizeValues";
  *(v184 + 200) = 1;
  v188 = v349;
  v189 = v350;
  *(v184 + 224) = v187;
  *(v184 + 232) = v188;
  *(v184 + 240) = 0x6573554853534657;
  *(v184 + 248) = 0xE900000000000072;
  *(v184 + 264) = v181;
  *(v184 + 272) = v189;
  v347 = v185;
  v349 = v188;
  *&v350 = v189;
  v190 = @"DoNotLocalizePlaceholder";
  v191 = @"DoNotLocalizeValues";
  v356 = sub_1CA94C438("User (WFSSHUser)", 16);
  v346 = v192;
  v345 = sub_1CA94C438("User", 4);
  v194 = v193;
  v358 = &v342;
  MEMORY[0x1EEE9AC00](v345);
  v195 = v371;
  sub_1CA948D98();
  v196 = v373;
  v197 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  v198 = &v342 - v369;
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v184 + 280) = sub_1CA2F9F14(v356, v346, v345, v194, 0, 0, &v342 - v195, v198);
  v200 = v370;
  v201 = v348;
  *(v184 + 304) = v370;
  *(v184 + 312) = v201;
  v358 = v201;
  v202 = sub_1CA94C438("root (WFSSHUser)", 16);
  v348 = v203;
  v204 = sub_1CA94C438("root", 4);
  v206 = v205;
  v356 = &v342;
  MEMORY[0x1EEE9AC00](v204);
  v207 = &v342 - v195;
  sub_1CA948D98();
  v208 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v342 - v369;
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v184 + 320) = sub_1CA2F9F14(v202, v348, v204, v206, 0, 0, v207, v209);
  v211 = v357;
  *(v184 + 344) = v200;
  *(v184 + 352) = v211;
  *(v184 + 360) = 0x7468676952;
  *(v184 + 368) = 0xE500000000000000;
  v212 = MEMORY[0x1E69E6158];
  v213 = v359;
  *(v184 + 384) = MEMORY[0x1E69E6158];
  *(v184 + 392) = v213;
  *(v184 + 424) = v212;
  v214 = v212;
  *(v184 + 400) = 0x656D616E72657355;
  *(v184 + 408) = 0xE800000000000000;
  v215 = sub_1CA94C1E8();
  v216 = sub_1CA2F864C(v215);
  *(v368 + 56) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = v354;
  v218 = v347;
  *(v217 + 32) = v347;
  *(v217 + 40) = 0xD000000000000016;
  *(v217 + 48) = 0x80000001CA99C4A0;
  v219 = v352;
  *(v217 + 64) = v214;
  *(v217 + 72) = v219;
  *(v217 + 80) = 0x64726F7773736150;
  *(v217 + 88) = 0xE800000000000000;
  *(v217 + 104) = v214;
  *(v217 + 112) = @"DisallowedVariableTypes";
  *(v217 + 120) = &unk_1F4A083C8;
  *(v217 + 144) = v361;
  *(v217 + 152) = @"Items";
  v356 = swift_allocObject();
  *&v356->data = xmmword_1CA981360;
  v352 = v218;
  v220 = @"DisallowedVariableTypes";
  v221 = @"Items";
  *&v354 = sub_1CA94C438("Password (WFSSHAuthenticationType)", 34);
  v348 = v222;
  v223 = sub_1CA94C438("Password", 8);
  v347 = v224;
  v355 = &v342;
  MEMORY[0x1EEE9AC00](v223);
  v225 = v371;
  sub_1CA948D98();
  v226 = v373;
  v227 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v227);
  v228 = &v342 - v369;
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v230 = sub_1CA2F9F14(v354, v348, v223, v347, 0, 0, &v342 - v225, v228);
  v356[1].isa = v230;
  *&v354 = sub_1CA94C438("SSH Key (WFSSHAuthenticationType)", 33);
  v348 = v231;
  v232 = sub_1CA94C438("SSH Key", 7);
  v347 = v233;
  v355 = &v342;
  MEMORY[0x1EEE9AC00](v232);
  sub_1CA948D98();
  v234 = [v226 bundleURL];
  MEMORY[0x1EEE9AC00](v234);
  v235 = v369;
  sub_1CA948B68();

  v236 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v237 = sub_1CA2F9F14(v354, v348, v232, v347, 0, 0, &v342 - v225, &v342 - v235);
  v238 = v356;
  v356[1].info = v237;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v217 + 160) = v238;
  v240 = v349;
  v241 = v350;
  *(v217 + 184) = v239;
  *(v217 + 192) = v240;
  *(v217 + 200) = 0xD000000000000017;
  *(v217 + 208) = 0x80000001CA99A580;
  *(v217 + 224) = MEMORY[0x1E69E6158];
  *(v217 + 232) = v241;
  v348 = v240;
  v349 = v241;
  v355 = sub_1CA94C438("Authentication (WFSSHAuthenticationType)", 40);
  *&v354 = v242;
  v243 = sub_1CA94C438("Authentication", 14);
  v245 = v244;
  v356 = &v342;
  MEMORY[0x1EEE9AC00](v243);
  v246 = &v342 - v371;
  sub_1CA948D98();
  v247 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v247);
  sub_1CA948B68();

  v248 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v217 + 240) = sub_1CA2F9F14(v355, v354, v243, v245, 0, 0, v246, &v342 - v235);
  *(v217 + 264) = v370;
  *(v217 + 272) = @"RequiredResources";
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v249 = swift_allocObject();
  v350 = xmmword_1CA981310;
  *(v249 + 16) = xmmword_1CA981310;
  *&v354 = @"RequiredResources";
  v250 = MEMORY[0x1E69E6158];
  *(v249 + 32) = sub_1CA94C1E8();
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v217 + 304) = v355;
  *(v217 + 280) = v249;
  v251 = sub_1CA94C1E8();
  v252 = sub_1CA2F864C(v251);
  *(v368 + 64) = v252;
  v253 = swift_allocObject();
  *(v253 + 16) = v353;
  v254 = v352;
  *(v253 + 32) = v352;
  *(v253 + 40) = 0xD000000000000014;
  *(v253 + 48) = v362;
  v255 = v348;
  *(v253 + 64) = v250;
  *(v253 + 72) = v255;
  strcpy((v253 + 80), "WFSSHPassword");
  *(v253 + 94) = -4864;
  *(v253 + 104) = v250;
  v256 = v349;
  *(v253 + 112) = v349;
  v362 = v254;
  *&v353 = v255;
  v352 = v256;
  v257 = sub_1CA94C438("Password (WFSSHPassword)", 24);
  v347 = v258;
  v348 = v257;
  v259 = sub_1CA94C438("Password", 8);
  v346 = v260;
  v349 = &v342;
  MEMORY[0x1EEE9AC00](v259);
  v261 = v371;
  sub_1CA948D98();
  v262 = [v373 bundleURL];
  v345 = &v342;
  MEMORY[0x1EEE9AC00](v262);
  sub_1CA948B68();

  v263 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v253 + 120) = sub_1CA2F9F14(v348, v347, v259, v346, 0, 0, &v342 - v261, &v342 - v235);
  v264 = v370;
  v265 = v358;
  *(v253 + 144) = v370;
  *(v253 + 152) = v265;
  v266 = sub_1CA94C438("•••••••• (WFSSHPassword)", 40);
  v347 = v267;
  v348 = v266;
  v346 = sub_1CA94C438("••••••••", 24);
  v269 = v268;
  v349 = &v342;
  MEMORY[0x1EEE9AC00](v346);
  sub_1CA948D98();
  v270 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v270);
  sub_1CA948B68();

  v271 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v253 + 160) = sub_1CA2F9F14(v348, v347, v346, v269, 0, 0, &v342 - v261, &v342 - v235);
  v272 = v354;
  *(v253 + 184) = v264;
  *(v253 + 192) = v272;
  v273 = swift_allocObject();
  *(v273 + 16) = v350;
  v274 = MEMORY[0x1E69E6158];
  *(v273 + 32) = sub_1CA94C1E8();
  *(v253 + 200) = v273;
  *(v253 + 224) = v355;
  *(v253 + 232) = @"SecureTextInput";
  *(v253 + 240) = 1;
  v275 = v357;
  *(v253 + 264) = MEMORY[0x1E69E6370];
  *(v253 + 272) = v275;
  *(v253 + 280) = 0x7468676952;
  *(v253 + 288) = 0xE500000000000000;
  v276 = v359;
  *(v253 + 304) = v274;
  *(v253 + 312) = v276;
  *(v253 + 344) = v274;
  *(v253 + 320) = 0x64726F7773736150;
  *(v253 + 328) = 0xE800000000000000;
  v277 = @"SecureTextInput";
  v278 = sub_1CA94C1E8();
  v279 = sub_1CA2F864C(v278);
  *(v368 + 72) = v279;
  v280 = swift_allocObject();
  *(v280 + 16) = v360;
  *(v280 + 32) = v362;
  *(v280 + 40) = 0xD000000000000011;
  *(v280 + 48) = 0x80000001CA9D2700;
  v281 = v353;
  *(v280 + 64) = v274;
  *(v280 + 72) = v281;
  *(v280 + 80) = 0x79654B4853534657;
  *(v280 + 88) = 0xE800000000000000;
  v282 = v352;
  *(v280 + 104) = v274;
  *(v280 + 112) = v282;
  v283 = sub_1CA94C438("SSH Key (WFSSHKey)", 18);
  v285 = v284;
  v286 = sub_1CA94C438("SSH Key", 7);
  v288 = v287;
  v359 = &v342;
  MEMORY[0x1EEE9AC00](v286);
  v289 = &v342 - v371;
  sub_1CA948D98();
  v290 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v290);
  v291 = &v342 - v369;
  sub_1CA948B68();

  v292 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v280 + 120) = sub_1CA2F9F14(v283, v285, v286, v288, 0, 0, v289, v291);
  v293 = v354;
  *(v280 + 144) = v370;
  *(v280 + 152) = v293;
  v294 = swift_allocObject();
  *(v294 + 16) = xmmword_1CA97EDF0;
  v295 = MEMORY[0x1E69E6158];
  *(v294 + 32) = sub_1CA94C1E8();
  v296 = v295;
  *(v294 + 40) = sub_1CA94C1E8();
  *(v280 + 184) = v355;
  *(v280 + 160) = v294;
  v297 = sub_1CA94C1E8();
  v298 = sub_1CA2F864C(v297);
  *(v368 + 80) = v298;
  v299 = swift_allocObject();
  *(v299 + 16) = v360;
  *(v299 + 32) = v362;
  *(v299 + 40) = 0xD000000000000019;
  *(v299 + 48) = 0x80000001CA99B030;
  v300 = v353;
  *(v299 + 64) = v296;
  *(v299 + 72) = v300;
  *(v299 + 80) = 0x7475706E494657;
  *(v299 + 88) = 0xE700000000000000;
  v301 = v352;
  *(v299 + 104) = v296;
  *(v299 + 112) = v301;
  v362 = sub_1CA94C438("Input (WFInput)", 15);
  *&v360 = v302;
  v303 = sub_1CA94C438("Input", 5);
  v359 = v304;
  v366 = &v342;
  MEMORY[0x1EEE9AC00](v303);
  v305 = v371;
  sub_1CA948D98();
  v306 = v373;
  v307 = [v373 bundleURL];
  v357 = &v342;
  MEMORY[0x1EEE9AC00](v307);
  v308 = v369;
  sub_1CA948B68();

  v309 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v299 + 120) = sub_1CA2F9F14(v362, v360, v303, v359, 0, 0, &v342 - v305, &v342 - v308);
  v310 = v358;
  *(v299 + 144) = v370;
  *(v299 + 152) = v310;
  v362 = sub_1CA94C438("Choose Variable (WFInput)", 25);
  *&v360 = v311;
  v312 = sub_1CA94C438("Choose Variable", 15);
  v359 = v313;
  v366 = &v342;
  MEMORY[0x1EEE9AC00](v312);
  sub_1CA948D98();
  v314 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v314);
  sub_1CA948B68();

  v315 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v316 = sub_1CA2F9F14(v362, v360, v312, v359, 0, 0, &v342 - v305, &v342 - v308);
  *(v299 + 184) = v370;
  *(v299 + 160) = v316;
  v317 = sub_1CA94C1E8();
  v318 = sub_1CA2F864C(v317);
  v319 = v368;
  *(v368 + 88) = v318;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v321 = v363;
  v363[55] = v319;
  v321[58] = v320;
  v321[59] = @"ParameterSummary";
  v322 = @"ParameterSummary";
  v323 = sub_1CA94C438("Run script over SSH (Parameter Summary)", 39);
  v325 = v324;
  v326 = sub_1CA94C438("Run script over SSH", 19);
  v328 = v327;
  MEMORY[0x1EEE9AC00](v326);
  v329 = &v342 - v371;
  sub_1CA948D98();
  v330 = [v373 bundleURL];
  MEMORY[0x1EEE9AC00](v330);
  v331 = &v342 - v369;
  sub_1CA948B68();

  v332 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v333 = sub_1CA2F9F14(v323, v325, v326, v328, 0, 0, v329, v331);
  v334 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v335 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v336 = v363;
  v363[60] = v334;
  v336[63] = v335;
  v336[64] = @"RemoteExecuteOnPlatforms";
  v337 = v361;
  v336[68] = v361;
  v336[65] = &unk_1F4A08608;
  v336[69] = @"RequiredResources";
  v336[73] = v337;
  v336[70] = &unk_1F4A08638;
  v336[74] = @"ResidentCompatible";
  v336[78] = MEMORY[0x1E69E6370];
  *(v336 + 600) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v338 = @"RemoteExecuteOnPlatforms";
  v339 = @"RequiredResources";
  v340 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void LNEnumMetadata.toolkitDefinition(for:displayRepresentationConfig:localizationContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v146 = a2;
  v147 = a3;
  v124 = a1;
  v119 = sub_1CA94B058();
  OUTLINED_FUNCTION_1_0();
  v134 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  v12 = sub_1CA94B5D8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_6_0();
  v15 = v14 - v13;
  v16 = sub_1CA94B478();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v21 - v20);
  v22 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v148 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v26 - v25);
  v145 = sub_1CA94B728();
  OUTLINED_FUNCTION_1_0();
  v122 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_0();
  v144 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v143 = &v117 - v32;
  v142 = sub_1CA94B5A8();
  OUTLINED_FUNCTION_1_0();
  v149 = v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v152 = &v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v151 = &v117 - v37;
  v38 = sub_1CA94B488();
  MEMORY[0x1EEE9AC00](v38 - 8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v40 - v39);
  v140 = sub_1CA94B078();
  OUTLINED_FUNCTION_1_0();
  v150 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6_0();
  v141 = v44 - v43;
  v45 = sub_1CA5B5314(v5);
  v46 = MEMORY[0x1E69E7CC0];
  v127 = v5;
  v121 = a4;
  v120 = v15;
  v118 = v11;
  v125 = v16;
  v123 = v18;
  v128 = v22;
  if (v45)
  {
    v47 = v45;
    v48 = sub_1CA25B410(v45);
    if (v48)
    {
      v138 = v48;
      v139 = v47;
      v153 = v46;
      sub_1CA2B91A0(0, v48 & ~(v48 >> 63), 0);
      if (v138 < 0)
      {
LABEL_49:
        __break(1u);
        return;
      }

      v49 = 0;
      v46 = v153;
      v50 = v139;
      v137 = v139 & 0xC000000000000001;
      v130 = v139 & 0xFFFFFFFFFFFFFF8;
      v133 = *MEMORY[0x1E69DB240];
      v131 = (v150 + 104);
      v132 = v150 + 32;
      while (1)
      {
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        v135 = v46;
        if (v137)
        {
          v52 = MEMORY[0x1CCAA22D0](v49, v50);
        }

        else
        {
          if (v49 >= *(v130 + 16))
          {
            goto LABEL_47;
          }

          v52 = *(v50 + 8 * v49 + 32);
        }

        v53 = v52;
        v54 = [v52 name];
        sub_1CA94C3A8();

        v55 = [v53 version];
        sub_1CA94C3A8();

        v56 = v136;
        sub_1CA94B498();
        v136 = v56;
        if (v56)
        {

          return;
        }

        sub_1CA5B5384(v53);
        if (!v57)
        {
          v58 = sub_1CA949348();
          v59 = [v53 name];
          v60 = sub_1CA94C3A8();
          v62 = v61;

          if (*(v58 + 16) && (sub_1CA271BF8(v60, v62), (v63 & 1) != 0))
          {
            sub_1CA94C218();
          }

          else
          {

            sub_1CA94B548();
          }
        }

        v64 = v141;
        sub_1CA94B558();
        v65 = v140;
        (*v131)(v64, v133, v140);

        v46 = v135;
        v153 = v135;
        v67 = *(v135 + 16);
        v66 = *(v135 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1CA2B91A0(v66 > 1, v67 + 1, 1);
          v64 = v141;
          v46 = v153;
        }

        *(v46 + 16) = v67 + 1;
        (*(v150 + 32))(v46 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v67, v64, v65);
        ++v49;
        v50 = v139;
        if (v51 == v138)
        {

          v5 = v127;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }
  }

LABEL_22:
  v68 = [v5 cases];
  sub_1CA25B3D0(0, &unk_1EC4419C0, 0x1E69AC820);
  v69 = sub_1CA94C658();

  v150 = v69;
  v70 = sub_1CA25B410(v69);
  v71 = MEMORY[0x1E69E7CC0];
  v135 = v46;
  if (v70)
  {
    if (v70 < 1)
    {
      goto LABEL_48;
    }

    v72 = 0;
    v141 = v150 & 0xC000000000000001;
    v139 = v149 + 16;
    v140 = (v122 + 16);
    v137 = v149 + 32;
    v138 = v149 + 8;
    do
    {
      v73 = v70;
      if (v141)
      {
        v74 = MEMORY[0x1CCAA22D0](v72, v150);
      }

      else
      {
        v74 = *(v150 + 8 * v72 + 32);
      }

      v75 = v74;
      v76 = [v74 identifier];
      sub_1CA94C3A8();

      v77 = [v75 displayRepresentation];
      v78 = v144;
      (*v140)(v144, v146, v145);
      v79 = v147;
      v80 = v143;
      DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(v77, v78, v79, v143);
      v81 = sub_1CA94B458();
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
      v82 = v151;
      sub_1CA94B588();
      v83 = v142;
      (*v139)(v152, v82, v142);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E72D4();
        v71 = v88;
      }

      v84 = *(v71 + 16);
      if (v84 >= *(v71 + 24) >> 1)
      {
        sub_1CA2E72D4();
        v71 = v89;
      }

      ++v72;

      v85 = v149;
      (*(v149 + 8))(v151, v83);
      *(v71 + 16) = v84 + 1;
      (*(v85 + 32))(v71 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v84, v152, v83);
      v70 = v73;
      v86 = v73 == v72;
      v87 = v148;
    }

    while (!v86);
  }

  else
  {
    v87 = v148;
  }

  (*(v87 + 16))(v129, v124, v128);
  v90 = v123;
  v91 = v126;
  v92 = v125;
  (*(v123 + 104))(v126, *MEMORY[0x1E69DB3B8], v125);
  sub_1CA94C218();
  v93 = v127;
  sub_1CA26BB28(v127);
  v94 = v136;
  v95 = sub_1CA94B698();
  if (v94)
  {

    (*(v90 + 8))(v91, v92);
    (*(v87 + 8))(v129, v128);
  }

  else
  {
    v96 = v95;
    v136 = 0;

    v97 = *(v96 + 16);
    if (v97)
    {
      v153 = MEMORY[0x1E69E7CC0];
      sub_1CA2B9148(0, v97, 0);
      v98 = v153;
      v152 = sub_1CA94B6B8();
      v99 = *(v152 - 1);
      v100 = *(v99 + 16);
      v150 = v99 + 16;
      v151 = v100;
      v101 = *(v99 + 80);
      v145 = v96;
      v102 = v96 + ((v101 + 32) & ~v101);
      v149 = *(v99 + 72);
      LODWORD(v148) = *MEMORY[0x1E69DB220];
      v103 = (v134 + 104);
      v146 = v134 + 32;
      v104 = v119;
      v105 = v118;
      do
      {
        (v151)(v105, v102, v152);
        (*v103)(v105, v148, v104);
        v153 = v98;
        v107 = *(v98 + 16);
        v106 = *(v98 + 24);
        if (v107 >= v106 >> 1)
        {
          sub_1CA2B9148(v106 > 1, v107 + 1, 1);
          v104 = v119;
          v98 = v153;
        }

        *(v98 + 16) = v107 + 1;
        (*(v134 + 32))(v98 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v107, v105, v104);
        v102 += v149;
        --v97;
      }

      while (v97);

      v93 = v127;
    }

    else
    {
    }

    v108 = [v93 displayRepresentation];
    v109 = [v147 locale];
    v110 = sub_1CA948E58();
    OUTLINED_FUNCTION_1_0();
    v112 = v111;
    MEMORY[0x1EEE9AC00](v113);
    OUTLINED_FUNCTION_6_0();
    v116 = v115 - v114;
    sub_1CA948DA8();

    sub_1CA948D48();
    (*(v112 + 8))(v116, v110);
    sub_1CA94B5B8();
    sub_1CA94B468();
  }
}

uint64_t sub_1CA5B5314(void *a1)
{
  v1 = [a1 assistantDefinedSchemas];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EC441778, 0x1E69AC6D0);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA5B5384(void *a1)
{
  v1 = [a1 domain];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

id sub_1CA5B541C()
{
  v26[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
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
  v9 = sub_1CA94C438("Filter Event Attendees (Action Name)", 36);
  v11 = v10;
  v12 = sub_1CA94C438("Filter Event Attendees", 22);
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

id sub_1CA5B57C8()
{
  v27[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  *(inited + 112) = @"Discoverable";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 0;
  *(inited + 144) = v6;
  *(inited + 152) = @"LocallyProcessesData";
  *(inited + 160) = 1;
  *(inited + 184) = v6;
  *(inited + 192) = @"Name";
  v7 = @"Discoverable";
  v8 = @"LocallyProcessesData";
  v9 = @"Name";
  v10 = sub_1CA94C438("Get Details of Shortcut (Action Name)", 37, v27[0]);
  v12 = v11;
  v13 = sub_1CA94C438("Get Details of Shortcut", 23);
  v15 = v14;
  v16 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v10, v12, v13, v15, 0, 0, v18, v22);
  *(inited + 224) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v24;
  v25 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v25;
  *(inited + 240) = 0xD000000000000015;
  *(inited + 248) = 0x80000001CA9D2880;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5B5B90()
{
  v324 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  v323 = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D28B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("transform|shrink|stretch|expand|rectangle|clip|canvas|photos", 60);
  v6 = v5;
  v7 = sub_1CA94C438("transform|shrink|stretch|expand|rectangle|clip|canvas|photos", 60);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v344 = v11;
  v341 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v315 - v341;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v343 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v342 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v340 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v315 - v340;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v339 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v338 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v330 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Crops images to a smaller rectangle.", 36);
  v25 = v24;
  v26 = sub_1CA94C438("Crops images to a smaller rectangle.", 36);
  v28 = v27;
  v337 = &v315;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v315 - v341;
  sub_1CA948D98();
  v30 = [v343 bundleURL];
  v336 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v315 - v340;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v339;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v338;
  v37 = sub_1CA6B3784(v35);
  v38 = v336;
  v336[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 1702194242;
  v38[21] = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 1886351971;
  v38[26] = 0xE400000000000000;
  v38[28] = v39;
  v38[29] = @"Input";
  v40 = v38;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v334 = xmmword_1CA981350;
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x7475706E494657;
  *(v41 + 104) = 0xE700000000000000;
  *(v41 + 120) = v39;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  v43 = v42;
  *(v41 + 184) = 0xE500000000000000;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v338;
  *(v41 + 192) = &unk_1F4A086F8;
  v44 = @"IconColor";
  v45 = @"IconSymbol";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v337 = v48;
  v40[30] = v47;
  v40[33] = v48;
  v40[34] = @"InputPassthrough";
  *(v40 + 280) = 0;
  v40[38] = v43;
  v40[39] = @"Name";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438("Crop Image (Action Name)", 24);
  *&v332 = v52;
  v53 = sub_1CA94C438("Crop Image", 10);
  v55 = v54;
  v333 = &v315;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v315 - v341;
  sub_1CA948D98();
  v57 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v315 - v340;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v51, v332, v53, v55, 0, 0, v56, v58);
  v61 = v336;
  v336[40] = v60;
  v62 = v339;
  v61[43] = v339;
  v61[44] = @"Output";
  v63 = swift_allocObject();
  *(v63 + 16) = v334;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 1;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v333 = sub_1CA94C438("Cropped Image (Default Output Name)", 35);
  *&v332 = v65;
  v66 = sub_1CA94C438("Cropped Image", 13);
  v68 = v67;
  v335 = &v315;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v315 - v341;
  sub_1CA948D98();
  v70 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v315 - v340;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v333, v332, v66, v68, 0, 0, v69, v71);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v338;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A08728;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v336;
  v336[45] = v74;
  v75[48] = v337;
  v75[49] = @"Parameters";
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v338 = swift_allocObject();
  v321 = xmmword_1CA981410;
  *(v338 + 16) = xmmword_1CA981410;
  v337 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_initStackObject();
  *(v76 + 16) = v334;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000019;
  *(v76 + 48) = 0x80000001CA99B030;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Key";
  *(v76 + 80) = 0x7475706E494657;
  *(v76 + 88) = 0xE700000000000000;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v329 = v80;
  v325 = v81;
  v326 = v82;
  v83 = @"Parameters";
  v333 = sub_1CA94C438("Image (WFInput)", 15);
  *&v332 = v84;
  v85 = sub_1CA94C438("Image", 5);
  v328 = v86;
  *&v334 = &v315;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v341;
  sub_1CA948D98();
  v88 = v343;
  v89 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v340;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v333, v332, v85, v328, 0, 0, &v315 - v87, &v315 - v90);
  v92 = v339;
  *(v76 + 144) = v339;
  *(v76 + 152) = @"Placeholder";
  v327 = @"Placeholder";
  v333 = sub_1CA94C438("Image (WFInput)", 15);
  *&v332 = v93;
  v94 = sub_1CA94C438("Image", 5);
  v96 = v95;
  *&v334 = &v315;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v315 - v87;
  sub_1CA948D98();
  v98 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v333, v332, v94, v96, 0, 0, v97, &v315 - v90);
  *(v76 + 184) = v92;
  *(v76 + 160) = v100;
  _s3__C3KeyVMa_0(0);
  *&v334 = v101;
  v333 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  *(v338 + 32) = v103;
  v104 = swift_allocObject();
  v328 = v104;
  v332 = xmmword_1CA981380;
  *(v104 + 16) = xmmword_1CA981380;
  v105 = v329;
  *(v104 + 32) = v329;
  *(v104 + 40) = 0xD000000000000016;
  *(v104 + 48) = 0x80000001CA99C4A0;
  v106 = MEMORY[0x1E69E6158];
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = @"DefaultValue";
  *(v104 + 80) = 0x7265746E6543;
  *(v104 + 88) = 0xE600000000000000;
  *(v104 + 104) = v106;
  *(v104 + 112) = @"Description";
  v107 = @"DefaultValue";
  v322 = v105;
  v329 = v107;
  v108 = @"Description";
  v319 = sub_1CA94C438("Where on the original image the crop should occur. (WFImageCropPosition)", 72);
  v110 = v109;
  v111 = sub_1CA94C438("Where on the original image the crop should occur.", 50);
  v113 = v112;
  v320 = &v315;
  MEMORY[0x1EEE9AC00](v111);
  v114 = v341;
  sub_1CA948D98();
  v115 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v315 - v340;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v319, v110, v111, v113, 0, 0, &v315 - v114, v116);
  v119 = v328;
  v328[15] = v118;
  *(v119 + 144) = v339;
  *(v119 + 152) = @"Items";
  v120 = swift_allocObject();
  *(v120 + 16) = v321;
  v121 = v120;
  v331 = v120;
  v122 = @"Items";
  v123 = sub_1CA94C438("Center (WFImageCropPosition)", 28);
  v319 = v124;
  v320 = v123;
  v125 = sub_1CA94C438("Center", 6);
  v318 = v126;
  *&v321 = &v315;
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v315 - v114;
  sub_1CA948D98();
  v128 = v343;
  v129 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v340;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 32) = sub_1CA2F9F14(v320, v319, v125, v318, 0, 0, v127, &v315 - v130);
  v132 = sub_1CA94C438("Top Left (WFImageCropPosition)", 30);
  v319 = v133;
  v320 = v132;
  v134 = sub_1CA94C438("Top Left", 8);
  v318 = v135;
  *&v321 = &v315;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v341;
  sub_1CA948D98();
  v137 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = v130;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v320, v319, v134, v318, 0, 0, &v315 - v136, &v315 - v130);
  v331[5] = v140;
  v141 = sub_1CA94C438("Top Right (WFImageCropPosition)", 31);
  v319 = v142;
  v320 = v141;
  v143 = sub_1CA94C438("Top Right", 9);
  v318 = v144;
  *&v321 = &v315;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v136;
  sub_1CA948D98();
  v146 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v320, v319, v143, v318, 0, 0, &v315 - v136, &v315 - v138);
  v149 = v331;
  v331[6] = v148;
  v150 = sub_1CA94C438("Bottom Left (WFImageCropPosition)", 33);
  v319 = v151;
  v320 = v150;
  v318 = sub_1CA94C438("Bottom Left", 11);
  v153 = v152;
  *&v321 = &v315;
  MEMORY[0x1EEE9AC00](v318);
  sub_1CA948D98();
  v154 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v149 + 56) = sub_1CA2F9F14(v320, v319, v318, v153, 0, 0, &v315 - v145, &v315 - v138);
  v156 = sub_1CA94C438("Bottom Right (WFImageCropPosition)", 34);
  v319 = v157;
  v320 = v156;
  v158 = sub_1CA94C438("Bottom Right", 12);
  v318 = v159;
  *&v321 = &v315;
  MEMORY[0x1EEE9AC00](v158);
  v160 = v341;
  sub_1CA948D98();
  v161 = v343;
  v162 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = v340;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v320, v319, v158, v318, 0, 0, &v315 - v160, &v315 - v163);
  v331[8] = v165;
  v166 = sub_1CA94C438("Custom (WFImageCropPosition)", 28);
  v319 = v167;
  v320 = v166;
  v168 = sub_1CA94C438("Custom", 6);
  v318 = v169;
  *&v321 = &v315;
  MEMORY[0x1EEE9AC00](v168);
  sub_1CA948D98();
  v170 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v172 = sub_1CA2F9F14(v320, v319, v168, v318, 0, 0, &v315 - v160, &v315 - v163);
  v173 = v331;
  v331[9] = v172;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v175 = v328;
  v328[20] = v173;
  v176 = v325;
  v177 = v326;
  v175[23] = v174;
  v175[24] = v176;
  v175[25] = 0xD000000000000013;
  v175[26] = 0x80000001CA99A5A0;
  v175[28] = MEMORY[0x1E69E6158];
  v175[29] = v177;
  *&v321 = v176;
  v326 = v177;
  v178 = sub_1CA94C438("Position (WFImageCropPosition)", 30);
  v325 = v179;
  v180 = sub_1CA94C438("Position", 8);
  v182 = v181;
  v331 = &v315;
  MEMORY[0x1EEE9AC00](v180);
  v183 = &v315 - v341;
  sub_1CA948D98();
  v184 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = &v315 - v340;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v178, v325, v180, v182, 0, 0, v183, v185);
  v175[33] = v339;
  v175[30] = v187;
  v188 = sub_1CA94C1E8();
  v189 = sub_1CA2F864C(v188);
  *(v338 + 40) = v189;
  v190 = swift_allocObject();
  *(v190 + 16) = v332;
  v331 = 0x80000001CA99C180;
  v191 = v322;
  *(v190 + 32) = v322;
  *(v190 + 40) = 0xD000000000000016;
  *(v190 + 48) = 0x80000001CA99C180;
  v192 = MEMORY[0x1E69E6158];
  v193 = v321;
  *(v190 + 64) = MEMORY[0x1E69E6158];
  *(v190 + 72) = v193;
  strcpy((v190 + 80), "WFImageCropX");
  *(v190 + 93) = 0;
  *(v190 + 94) = -5120;
  v194 = v326;
  *(v190 + 104) = v192;
  *(v190 + 112) = v194;
  v325 = v191;
  v322 = v193;
  v328 = v194;
  v195 = sub_1CA94C438("X Coordinate (WFImageCropX)", 27);
  v320 = v196;
  *&v321 = v195;
  v319 = sub_1CA94C438("X Coordinate", 12);
  v198 = v197;
  v326 = &v315;
  MEMORY[0x1EEE9AC00](v319);
  v199 = v341;
  sub_1CA948D98();
  v200 = v343;
  v201 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  v202 = v340;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v190 + 120) = sub_1CA2F9F14(v321, v320, v319, v198, 0, 0, &v315 - v199, &v315 - v202);
  v204 = v339;
  v205 = v327;
  *(v190 + 144) = v339;
  *(v190 + 152) = v205;
  v326 = v205;
  v206 = sub_1CA94C438("0 (WFImageCropX)", 16);
  v320 = v207;
  *&v321 = v206;
  v208 = sub_1CA94C438("0", 1);
  v319 = v209;
  v327 = &v315;
  MEMORY[0x1EEE9AC00](v208);
  sub_1CA948D98();
  v210 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v190 + 160) = sub_1CA2F9F14(v321, v320, v208, v319, 0, 0, &v315 - v199, &v315 - v202);
  *(v190 + 184) = v204;
  *(v190 + 192) = @"RequiredResources";
  *&v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v212 = swift_allocObject();
  *(v212 + 16) = v330;
  v320 = @"RequiredResources";
  v213 = MEMORY[0x1E69E6158];
  *(v212 + 32) = sub_1CA94C1E8();
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v319 = v214;
  *(v190 + 200) = v212;
  *(v190 + 224) = v214;
  *(v190 + 232) = @"TextAlignment";
  *(v190 + 264) = v213;
  *(v190 + 240) = 0x7468676952;
  *(v190 + 248) = 0xE500000000000000;
  v318 = @"TextAlignment";
  v215 = sub_1CA94C1E8();
  v216 = sub_1CA2F864C(v215);
  *(v338 + 48) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = v332;
  v218 = v325;
  *(v217 + 32) = v325;
  *(v217 + 40) = 0xD000000000000016;
  *(v217 + 48) = v331;
  v219 = v322;
  *(v217 + 64) = v213;
  *(v217 + 72) = v219;
  strcpy((v217 + 80), "WFImageCropY");
  *(v217 + 93) = 0;
  *(v217 + 94) = -5120;
  *(v217 + 104) = v213;
  v220 = v328;
  *(v217 + 112) = v328;
  v325 = v218;
  v327 = v219;
  v328 = v220;
  v221 = sub_1CA94C438("Y Coordinate (WFImageCropY)", 27);
  v316 = v222;
  v317 = v221;
  v223 = sub_1CA94C438("Y Coordinate", 12);
  v315 = v224;
  v322 = &v315;
  MEMORY[0x1EEE9AC00](v223);
  v225 = v341;
  sub_1CA948D98();
  v226 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v226);
  v227 = v340;
  sub_1CA948B68();

  v228 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v217 + 120) = sub_1CA2F9F14(v317, v316, v223, v315, 0, 0, &v315 - v225, &v315 - v227);
  v229 = v339;
  v230 = v326;
  *(v217 + 144) = v339;
  *(v217 + 152) = v230;
  v326 = v230;
  v231 = sub_1CA94C438("0 (WFImageCropY)", 16);
  v316 = v232;
  v317 = v231;
  v233 = sub_1CA94C438("0", 1);
  v235 = v234;
  v322 = &v315;
  MEMORY[0x1EEE9AC00](v233);
  sub_1CA948D98();
  v236 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v236);
  sub_1CA948B68();

  v237 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v217 + 160) = sub_1CA2F9F14(v317, v316, v233, v235, 0, 0, &v315 - v225, &v315 - v227);
  v238 = v320;
  *(v217 + 184) = v229;
  *(v217 + 192) = v238;
  v239 = swift_allocObject();
  *(v239 + 16) = v330;
  v240 = MEMORY[0x1E69E6158];
  *(v239 + 32) = sub_1CA94C1E8();
  *(v217 + 200) = v239;
  v241 = v318;
  *(v217 + 224) = v319;
  *(v217 + 232) = v241;
  *(v217 + 264) = v240;
  *(v217 + 240) = 0x7468676952;
  *(v217 + 248) = 0xE500000000000000;
  *&v330 = v241;
  v242 = sub_1CA94C1E8();
  v243 = sub_1CA2F864C(v242);
  *(v338 + 56) = v243;
  v244 = swift_allocObject();
  *(v244 + 16) = v332;
  *(v244 + 32) = v325;
  *(v244 + 40) = 0xD000000000000016;
  *(v244 + 48) = v331;
  v245 = v329;
  *(v244 + 64) = v240;
  *(v244 + 72) = v245;
  v246 = MEMORY[0x1E69E6530];
  *(v244 + 80) = 100;
  v247 = v327;
  *(v244 + 104) = v246;
  *(v244 + 112) = v247;
  *(v244 + 120) = 0xD000000000000010;
  *(v244 + 128) = 0x80000001CA9D2BD0;
  v248 = v328;
  *(v244 + 144) = v240;
  *(v244 + 152) = v248;
  v249 = sub_1CA94C438("Width (WFImageCropWidth)", 24);
  v320 = v250;
  *&v321 = v249;
  v251 = sub_1CA94C438("Width", 5);
  v319 = v252;
  v322 = &v315;
  MEMORY[0x1EEE9AC00](v251);
  v253 = v341;
  sub_1CA948D98();
  v254 = v343;
  v255 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v255);
  v256 = &v315 - v340;
  sub_1CA948B68();

  v257 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v244 + 160) = sub_1CA2F9F14(v321, v320, v251, v319, 0, 0, &v315 - v253, v256);
  v258 = v339;
  v259 = v326;
  *(v244 + 184) = v339;
  *(v244 + 192) = v259;
  v260 = sub_1CA94C438("100 (WFImageCropWidth)", 22);
  v320 = v261;
  *&v321 = v260;
  v262 = sub_1CA94C438("100", 3);
  v264 = v263;
  v322 = &v315;
  MEMORY[0x1EEE9AC00](v262);
  sub_1CA948D98();
  v265 = [v254 bundleURL];
  MEMORY[0x1EEE9AC00](v265);
  v266 = v340;
  sub_1CA948B68();

  v267 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v244 + 200) = sub_1CA2F9F14(v321, v320, v262, v264, 0, 0, &v315 - v253, &v315 - v266);
  v268 = v330;
  *(v244 + 224) = v258;
  *(v244 + 232) = v268;
  v269 = MEMORY[0x1E69E6158];
  *(v244 + 264) = MEMORY[0x1E69E6158];
  *(v244 + 240) = 0x7468676952;
  *(v244 + 248) = 0xE500000000000000;
  v270 = sub_1CA94C1E8();
  v271 = sub_1CA2F864C(v270);
  *(v338 + 64) = v271;
  v272 = swift_allocObject();
  *(v272 + 16) = v332;
  *(v272 + 32) = v325;
  *(v272 + 40) = 0xD000000000000016;
  *(v272 + 48) = v331;
  v273 = v329;
  *(v272 + 64) = v269;
  *(v272 + 72) = v273;
  *(v272 + 80) = 100;
  v274 = v327;
  *(v272 + 104) = MEMORY[0x1E69E6530];
  *(v272 + 112) = v274;
  *(v272 + 120) = v323;
  *(v272 + 128) = 0x80000001CA9D2C30;
  v275 = v328;
  *(v272 + 144) = v269;
  *(v272 + 152) = v275;
  v276 = sub_1CA94C438("Height (WFImageCropHeight)", 26);
  v331 = v277;
  *&v332 = v276;
  v278 = sub_1CA94C438("Height", 6);
  v329 = v279;
  v335 = &v315;
  MEMORY[0x1EEE9AC00](v278);
  v280 = &v315 - v341;
  sub_1CA948D98();
  v281 = v343;
  v282 = [v343 bundleURL];
  v328 = &v315;
  MEMORY[0x1EEE9AC00](v282);
  sub_1CA948B68();

  v283 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v272 + 160) = sub_1CA2F9F14(v332, v331, v278, v329, 0, 0, v280, &v315 - v266);
  v284 = v326;
  *(v272 + 184) = v339;
  *(v272 + 192) = v284;
  v285 = sub_1CA94C438("100 (WFImageCropHeight)", 23);
  v331 = v286;
  *&v332 = v285;
  v287 = sub_1CA94C438("100", 3);
  v329 = v288;
  v335 = &v315;
  MEMORY[0x1EEE9AC00](v287);
  v289 = v341;
  sub_1CA948D98();
  v290 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v290);
  sub_1CA948B68();

  v291 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v272 + 200) = sub_1CA2F9F14(v332, v331, v287, v329, 0, 0, &v315 - v289, &v315 - v266);
  v292 = v330;
  *(v272 + 224) = v339;
  *(v272 + 232) = v292;
  *(v272 + 264) = MEMORY[0x1E69E6158];
  *(v272 + 240) = 0x7468676952;
  *(v272 + 248) = 0xE500000000000000;
  v293 = sub_1CA94C1E8();
  v294 = sub_1CA2F864C(v293);
  v295 = v338;
  *(v338 + 72) = v294;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v297 = v336;
  v336[50] = v295;
  v297[53] = v296;
  v297[54] = @"ParameterSummary";
  v298 = @"ParameterSummary";
  v299 = sub_1CA94C438("Crop ${WFInput} (Parameter Summary)", 35);
  v301 = v300;
  v302 = sub_1CA94C438("Crop ${WFInput}", 15);
  v304 = v303;
  MEMORY[0x1EEE9AC00](v302);
  v305 = &v315 - v289;
  sub_1CA948D98();
  v306 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v306);
  v307 = &v315 - v340;
  sub_1CA948B68();

  v308 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v309 = sub_1CA2F9F14(v299, v301, v302, v304, 0, 0, v305, v307);
  v310 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v311 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v312 = v336;
  v336[55] = v310;
  v312[58] = v311;
  v312[59] = @"ResidentCompatible";
  v312[63] = MEMORY[0x1E69E6370];
  *(v312 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v313 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA5B8094(uint64_t a1)
{
  v12 = MEMORY[0x1E69E7CD0];
  v3 = [v1 actions];
  sub_1CA3A2F84();
  v4 = sub_1CA94C658();

  result = sub_1CA25B410(v4);
  if (result)
  {
    v6 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v7 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1CCAA22D0](v7, v4);
        }

        else
        {
          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        ++v7;
        v10 = [v8 userVisibleStringsForUseCase_];
        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        v11 = sub_1CA94C8F8();

        sub_1CA342840(v11);
      }

      while (v6 != v7);

      return v12;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1CA5B8260(uint64_t a1)
{
  v2 = [v1 actions];
  sub_1CA3A2F84();
  v3 = sub_1CA94C658();

  result = sub_1CA25B410(v3);
  if (result)
  {
    v5 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCAA22D0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v9 = sub_1CA94C1A8();
      [v8 rewriteWithStrings_];
    }

    while (v5 != v6);
  }
}

void *sub_1CA5B840C(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v51 = MEMORY[0x1E69E7CC8];
  v45 = *(a1 + 16);
  v46 = a1;
  v3 = (a1 + 72);
  v43 = xmmword_1CA981310;
  while (1)
  {
    if (v45 == v1)
    {

      return v2;
    }

    if (v1 >= *(v46 + 16))
    {
      break;
    }

    v4 = *(v3 - 4);
    v47 = v1;
    v48 = *(v3 - 5);
    v5 = *(v3 - 2);
    v49 = *(v3 - 3);
    v6 = *(v3 - 1);
    v7 = *v3;
    v8 = v6;
    sub_1CA94C218();
    v9 = v8;
    sub_1CA94C218();
    sub_1CA94C218();
    v17 = sub_1CA3211F0(v6);
    v18 = v2[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v2[3] < v20)
    {
      sub_1CA5C3C18(v20, 1, v11, v12, v13, v14, v15, v16, v38, v39, *v40, v40[4], v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
      v2 = v51;
      v22 = sub_1CA3211F0(v6);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v17 = v22;
    }

    if (v21)
    {

      v24 = v2[7];
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      v42 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CA278A8C();
        v25 = v35;
        *(v24 + 8 * v17) = v35;
      }

      v27 = *(v25 + 16);
      v28 = v27 + 1;
      if (v27 >= *(v25 + 24) >> 1)
      {
        v39 = v27 + 1;
        sub_1CA278A8C();
        v28 = v27 + 1;
        v25 = v36;
        *(v42 + 8 * v17) = v36;
      }

      *(v25 + 16) = v28;
      v29 = (v25 + 48 * v27);
      v30 = v47;
      v29[4] = v48;
      v29[5] = v4;
      v29[6] = v49;
      v29[7] = v5;
      v29[8] = v6;
      v29[9] = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
      v31 = swift_allocObject();
      *(v31 + 16) = v43;
      *(v31 + 32) = v48;
      *(v31 + 40) = v4;
      *(v31 + 48) = v49;
      *(v31 + 56) = v5;
      *(v31 + 64) = v6;
      *(v31 + 72) = v7;
      v2[(v17 >> 6) + 8] |= 1 << v17;
      *(v2[6] + 8 * v17) = v6;
      *(v2[7] + 8 * v17) = v31;
      v32 = v2[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_20;
      }

      v2[2] = v34;
      v30 = v47;
    }

    v3 += 6;
    v1 = v30 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B80, qword_1CA98CC50);
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

id sub_1CA5B88D0()
{
  OUTLINED_FUNCTION_11();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_116();
  v1 = sub_1CA94C368();

  v2 = [v0 initWithSystemImageNamed_];

  return v2;
}

uint64_t sub_1CA5B893C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1CA6278E0();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1CA5BD72C(v6);
  return sub_1CA94D4E8();
}

uint64_t sub_1CA5B89B8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC446B78, 0x1E69ACD98);
    sub_1CA94C658();

    return sub_1CA35FF84();
  }
}

id sub_1CA5B8A60(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAutoShortcut:a1 phrase:a2 entityInfo:a3];

  return v6;
}

uint64_t WFExecutableAppShortcut.name.getter()
{
  v1 = [v0 entityInfo];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 triggerPhrase];
    v4 = sub_1CA94C3A8();

    v12 = v4;
    MEMORY[0x1CCAA1300](58, 0xE100000000000000);
    v5 = [v2 name];
    v6 = sub_1CA94C3A8();
    v8 = v7;

    MEMORY[0x1CCAA1300](v6, v8);

    return v12;
  }

  else
  {
    v10 = [v0 triggerPhrase];
    v9 = sub_1CA94C3A8();
  }

  return v9;
}

id WFExecutableAppShortcut.entryColor.getter()
{
  v1 = [v0 underlyingAutoShortcut];
  [v1 shortcutTileColor];

  v2 = WFWorkflowPaletteColorForLNShortcutTileColor();
  v3 = [objc_opt_self() colorWithPaletteColor_];

  return v3;
}

uint64_t sub_1CA5B8C60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA5B8CB8();
  *a1 = result;
  return result;
}

uint64_t sub_1CA5B8CB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA5B8D2C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1CA94A0A8();
}

uint64_t sub_1CA5B8D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B70, &unk_1CA98CC40);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1CA5B8EE0(v4);
}

uint64_t sub_1CA5B8E6C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  sub_1CA94A078();
  return swift_endAccess();
}

uint64_t sub_1CA5B8EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B70, &unk_1CA98CC40);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_134_0();
  v6 = OUTLINED_FUNCTION_106();
  v7(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  sub_1CA94A088();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

id AutoShortcutsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutoShortcutsDataSource.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for AutoShortcutsDataSource(0));
  v1 = AutoShortcutsDataSource.init(expandsEntity:)(1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

id AutoShortcutsDataSource.init(expandsEntity:)(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_0();
  v9 = OBJC_IVAR____TtC11WorkflowKit23AutoShortcutsDataSource__collections;
  v17 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446350, &qword_1CA98C930);
  sub_1CA94A068();
  (*(v7 + 32))(&v3[v9], v2, v5);
  v3[OBJC_IVAR____TtC11WorkflowKit23AutoShortcutsDataSource_expandsEntity] = v4;
  type metadata accessor for ExecutableAppShortcutsLoader();
  v10 = swift_allocObject();
  ExecutableAppShortcutsLoader.init(expandsEntity:)(v4);
  *&v3[OBJC_IVAR____TtC11WorkflowKit23AutoShortcutsDataSource_loader] = v10;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for AutoShortcutsDataSource(0);
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:sel_appShortcutsChanged name:*MEMORY[0x1E69ACB40] object:0];

  return v13;
}

uint64_t ExecutableAppShortcutsLoader.__allocating_init(expandsEntity:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  ExecutableAppShortcutsLoader.init(expandsEntity:)(v1);
  return v2;
}

void sub_1CA5B9340(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  sub_1CA949C58();
  sub_1CA94C218();
  v13 = sub_1CA949F68();
  v14 = sub_1CA94CC38();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_29_0();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1CA26B54C(a1, a2, &v18);
    _os_log_impl(&dword_1CA256000, v13, v14, "Reloading App Shortcuts with reason: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v3 = v2;
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  (*(v8 + 8))(v12, v6);
  sub_1CA5B9BE4();
  if (!v3)
  {
    sub_1CA5B8D2C(v17);
  }
}

void sub_1CA5B9518()
{
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  sub_1CA5B9340(0xD000000000000022, 0x80000001CA9D2D40);
}

uint64_t sub_1CA5B9724(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5B9738()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 32) = OBJC_IVAR____TtC11WorkflowKit23AutoShortcutsDataSource_loader;
  sub_1CA94C838();
  *(v0 + 40) = sub_1CA94C828();
  v2 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA5B97D4, v2, v1);
}

uint64_t sub_1CA5B97D4()
{
  OUTLINED_FUNCTION_0();

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1CA5B9874;

  return sub_1CA5BAC58();
}

uint64_t sub_1CA5B9874()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v3 = *v2;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  OUTLINED_FUNCTION_2_4();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

id AutoShortcutsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoShortcutsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA5B9A2C()
{
  OUTLINED_FUNCTION_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_1(v1);

  return sub_1CA5B9724(v3);
}

uint64_t sub_1CA5B9AB0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AutoShortcutsDataSource(0);
  result = sub_1CA949FE8();
  *a2 = result;
  return result;
}

uint64_t ExecutableAppShortcutsLoader.Error.hashValue.getter()
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t ExecutableAppShortcutsLoader.init(expandsEntity:)(char a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  *(v1 + 16) = a1;
  return v1;
}

void sub_1CA5B9BE4()
{
  v129[4] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  v2 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  sub_1CA948DE8();
  sub_1CA948D48();
  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_70();
  v9 = sub_1CA94C368();

  v129[0] = 0;
  v10 = [v1 autoShortcutsForLocaleIdentifier:v9 error:v129];

  v11 = v129[0];
  if (!v10)
  {
    v98 = v129[0];
    sub_1CA948AD8();

    swift_willThrow();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454A8, &unk_1CA98E820);
  v12 = sub_1CA94C1C8();
  v13 = v11;

  v101 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v100 = (v14 + 63) >> 6;
  v112 = v12;
  sub_1CA94C218();
  v17 = 0;
  while (v16)
  {
    v18 = v16;
LABEL_11:
    v16 = (v18 - 1) & v18;
    if (v112[2])
    {
      v20 = (v112[6] + ((v17 << 10) | (16 * __clz(__rbit64(v18)))));
      v21 = *v20;
      v22 = v20[1];
      v106 = v17;
      sub_1CA94C218();
      v23 = sub_1CA271BF8(v21, v22);
      v25 = v24;

      v17 = v106;
      if (v25)
      {
        i = *(v112[7] + 8 * v23);
        if (i >> 62)
        {
          v97 = sub_1CA94D328();
          v17 = v106;
          v27 = v97;
          if (v97)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v27 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27)
          {
LABEL_15:
            v99 = v16;
            swift_retain_n();
            sub_1CA94C218();
            v28 = 0;
            v29 = MEMORY[0x1E69E7CC0];
            while (v27 != v28)
            {
              if ((i & 0xC000000000000001) != 0)
              {
                v30 = MEMORY[0x1CCAA22D0](v28, i);
              }

              else
              {
                if (v28 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_112;
                }

                v30 = *(i + 8 * v28 + 32);
              }

              v31 = v30;
              if (__OFADD__(v28, 1))
              {
                goto LABEL_111;
              }

              v32 = sub_1CA5BBCEC(v30);

              v33 = *(v32 + 16);
              v34 = *(v29 + 16);
              if (__OFADD__(v34, v33))
              {
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
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v34 + v33 > *(v29 + 24) >> 1)
              {
                sub_1CA278A8C();
                v29 = v35;
              }

              if (*(v32 + 16))
              {
                if ((*(v29 + 24) >> 1) - *(v29 + 16) < v33)
                {
                  goto LABEL_116;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
                swift_arrayInitWithCopy();

                if (v33)
                {
                  v36 = *(v29 + 16);
                  v37 = __OFADD__(v36, v33);
                  v38 = v36 + v33;
                  if (v37)
                  {
                    goto LABEL_117;
                  }

                  *(v29 + 16) = v38;
                }
              }

              else
              {

                if (v33)
                {
                  goto LABEL_114;
                }
              }

              ++v28;
            }

            v39 = 0;
            v40 = *(v29 + 16);
            v121 = v40;
            v123 = MEMORY[0x1E69E7CC0];
LABEL_34:
            v41 = 48 * v39;
            while (v40 != v39)
            {
              if (v39 >= *(v29 + 16))
              {
                goto LABEL_115;
              }

              v42 = *(v29 + v41 + 32);
              i = *(v29 + v41 + 40);
              v44 = *(v29 + v41 + 48);
              v43 = *(v29 + v41 + 56);
              v46 = *(v29 + v41 + 64);
              v45 = *(v29 + v41 + 72);
              if (v45 >> 62)
              {
                v47 = sub_1CA94D328();
                v40 = v121;
              }

              else
              {
                v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              ++v39;
              v41 += 48;
              if (v47)
              {
                v48 = v46;
                sub_1CA94C218();
                sub_1CA94C218();
                sub_1CA94C218();
                v49 = v123;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v129[0] = v123;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1CA2B9128(0, v123[2] + 1, 1);
                  v49 = v129[0];
                }

                v52 = v49[2];
                v51 = v49[3];
                v53 = v52 + 1;
                v40 = v121;
                if (v52 >= v51 >> 1)
                {
                  v55 = OUTLINED_FUNCTION_64(v51);
                  v124 = v56;
                  v119 = v57;
                  sub_1CA2B9128(v55, v56, 1);
                  v40 = v121;
                  v53 = v124;
                  v52 = v119;
                  v49 = v129[0];
                }

                v49[2] = v53;
                v123 = v49;
                v54 = &v49[6 * v52];
                v54[4] = v42;
                v54[5] = i;
                v54[6] = v44;
                v54[7] = v43;
                v54[8] = v46;
                v54[9] = v45;
                goto LABEL_34;
              }
            }

            v58 = sub_1CA5B840C(v123);
            v59 = sub_1CA94C218();
            v129[0] = sub_1CA42AFF8(v59);
            sub_1CA5B893C(v129);
            if (v107)
            {

              __break(1u);
              return;
            }

            v60 = v129[0];
            v61 = *(v129[0] + 2);
            if (v61)
            {
              v127 = MEMORY[0x1E69E7CC0];
              v104 = *(v129[0] + 2);
              sub_1CA2B9128(0, v61, 0);
              v62 = 0;
              v63 = v127;
              v105 = v60 + 32;
              v103 = v58;
              v102 = v60;
              while (1)
              {
                if (v62 >= *(v60 + 2))
                {
                  goto LABEL_118;
                }

                v111 = v63;
                v114 = v62;
                v64 = *&v105[8 * v62];
                v108 = v64;
                v113 = v64;
                v65 = sub_1CA311E84(v64, v58);
                if (!v65)
                {
                  goto LABEL_120;
                }

                v66 = v65;
                v118 = v65[2];
                if (!v118)
                {
                  goto LABEL_119;
                }

                v115 = v114 + 1;
                v117 = v65 + 4;
                v109 = v65[7];
                v110 = v65[6];
                sub_1CA94C218();
                v67 = 0;
                v68 = MEMORY[0x1E69E7CC0];
                v116 = v66;
                while (v67 != v118)
                {
                  if (v67 >= v66[2])
                  {
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
                    goto LABEL_113;
                  }

                  v69 = v117[6 * v67 + 5];
                  i = v69 >> 62;
                  if (v69 >> 62)
                  {
                    v70 = sub_1CA94D328();
                  }

                  else
                  {
                    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v71 = v68 >> 62;
                  if (v68 >> 62)
                  {
                    v72 = sub_1CA94D328();
                  }

                  else
                  {
                    v72 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v122 = v70;
                  v37 = __OFADD__(v72, v70);
                  v73 = v72 + v70;
                  if (v37)
                  {
                    goto LABEL_105;
                  }

                  sub_1CA94C218();
                  v125 = v67;
                  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
                  {
                    if (v71)
                    {
LABEL_66:
                      sub_1CA94D328();
                    }

LABEL_67:
                    v68 = sub_1CA94D488();
                    v74 = v68 & 0xFFFFFFFFFFFFFF8;
                    goto LABEL_68;
                  }

                  if (v71)
                  {
                    goto LABEL_66;
                  }

                  v74 = v68 & 0xFFFFFFFFFFFFFF8;
                  if (v73 > *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_67;
                  }

LABEL_68:
                  v75 = *(v74 + 16);
                  v76 = *(v74 + 24);
                  if (i)
                  {
                    v64 = sub_1CA94D328();
                  }

                  else
                  {
                    v64 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v126 = v125 + 1;
                  if (v64)
                  {
                    if (((v76 >> 1) - v75) < v122)
                    {
                      goto LABEL_107;
                    }

                    v77 = v74 + 8 * v75 + 32;
                    if (i)
                    {
                      if (v64 < 1)
                      {
                        goto LABEL_109;
                      }

                      sub_1CA5BE5E4();
                      for (i = 0; i != v64; ++i)
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445A0, &qword_1CA983900);
                        v78 = sub_1CA276BDC(v129, i, v69);
                        v80 = *v79;
                        v78(v129, 0);
                        *(v77 + 8 * i) = v80;
                      }
                    }

                    else
                    {
                      v64 = v69 & 0xFFFFFFFFFFFFFF8;
                      sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
                      swift_arrayInitWithCopy();
                    }

                    v66 = v116;
                    v67 = v126;
                    if (v122 > 0)
                    {
                      v81 = *(v74 + 16);
                      v37 = __OFADD__(v81, v122);
                      v82 = v81 + v122;
                      if (v37)
                      {
                        goto LABEL_108;
                      }

                      *(v74 + 16) = v82;
                    }
                  }

                  else
                  {

                    v67 = v126;
                    v66 = v116;
                    if (v122 > 0)
                    {
                      goto LABEL_106;
                    }
                  }
                }

                v120 = v68;

                if (v113)
                {
                  v83 = [v108 name];
                  sub_1CA94C3A8();
                  OUTLINED_FUNCTION_27_19();

                  v58 = v103;
                  v60 = v102;
                  v84 = v104;
                  v85 = v110;
                  v63 = v111;
                  v86 = v109;
                }

                else
                {
                  v58 = v103;
                  v60 = v102;
                  if (qword_1EDB9F960 != -1)
                  {
                    OUTLINED_FUNCTION_1_11();
                    swift_once();
                  }

                  v87 = OUTLINED_FUNCTION_70();
                  sub_1CA2786EC(v87, v88);
                  if (v89)
                  {
                    OUTLINED_FUNCTION_27_19();
                  }

                  else
                  {
                    sub_1CA94C218();
                    v64 = v110;
                    i = v109;
                  }

                  v84 = v104;
                  v63 = v111;
                  v85 = v110;
                  v86 = v109;
                }

                v128 = v63;
                v91 = *(v63 + 16);
                v90 = *(v63 + 24);
                if (v91 >= v90 >> 1)
                {
                  v94 = OUTLINED_FUNCTION_64(v90);
                  sub_1CA2B9128(v94, v91 + 1, 1);
                  v86 = v109;
                  v85 = v110;
                  v84 = v104;
                  v63 = v128;
                }

                *(v63 + 16) = v91 + 1;
                v92 = (v63 + 48 * v91);
                v92[4] = v64;
                v92[5] = i;
                v92[6] = v85;
                v92[7] = v86;
                v92[8] = v113;
                v92[9] = v120;
                v93 = v115 == v84;
                v62 = v115;
                if (v93)
                {
                  v95 = v63;

                  v96 = v95;
                  goto LABEL_99;
                }
              }
            }

            v96 = MEMORY[0x1E69E7CC0];
LABEL_99:
            sub_1CA2B88B4(v96);
            v17 = v106;
            v16 = v99;
          }
        }
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_110;
    }

    if (v19 >= v100)
    {
      break;
    }

    v18 = *(v101 + 8 * v19);
    ++v17;
    if (v18)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1CA5BA6F8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5BA710(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v31 = *(v20[21] + 24);
  v21 = sub_1CA94C368();
  v20[22] = v21;
  v22 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  v25 = swift_task_alloc();
  sub_1CA948DE8();
  sub_1CA948D48();
  (*(v24 + 8))(v25, v22);
  v26 = sub_1CA94C368();
  v20[23] = v26;

  v20[2] = v20;
  v20[7] = v20 + 18;
  v20[3] = sub_1CA5BA8F0;
  v27 = swift_continuation_init();
  v20[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B38, &qword_1CA98C958);
  v20[10] = MEMORY[0x1E69E9820];
  v20[11] = 1107296256;
  v20[12] = sub_1CA5B89B8;
  v20[13] = &block_descriptor_26;
  v20[14] = v27;
  [v31 autoShortcutsForBundleIdentifier:v21 localeIdentifier:v26 completion:v20 + 10];
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DEC8](v28);
}

uint64_t sub_1CA5BA8F0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_1CA5BABE8;
  }

  else
  {
    v5 = sub_1CA5BA9F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1CA5BA9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = *(v12 + 176);
  v14 = *(v12 + 144);

  v15 = sub_1CA25B410(v14);
  if (v15)
  {
    v16 = v15;
    a9 = v14 & 0xC000000000000001;
    swift_retain_n();
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v16 == v17)
      {

        goto LABEL_21;
      }

      if (a9)
      {
        v19 = MEMORY[0x1CCAA22D0](v17, v14);
      }

      else
      {
        if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = v19;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = sub_1CA5BBCEC(v19);

      v22 = *(v21 + 16);
      v23 = *(v18 + 16);
      if (__OFADD__(v23, v22))
      {
        goto LABEL_26;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v18 + 24) >> 1)
      {
        sub_1CA278A8C();
        v18 = v24;
      }

      if (*(v21 + 16))
      {
        if ((*(v18 + 24) >> 1) - *(v18 + 16) < v22)
        {
          goto LABEL_28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
        swift_arrayInitWithCopy();

        if (v22)
        {
          v25 = *(v18 + 16);
          v26 = __OFADD__(v25, v22);
          v27 = v25 + v22;
          if (v26)
          {
            goto LABEL_29;
          }

          *(v18 + 16) = v27;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_27;
        }
      }

      ++v17;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_21:

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_23_0();

    v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }
}

uint64_t sub_1CA5BABE8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA5BAC58()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  *(v0 + 160) = v1;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_1CA5BAD20;

  return sub_1CA5BB7D0(v2);
}

uint64_t sub_1CA5BAD20()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA5BAE88, 0, 0);
  }
}

uint64_t sub_1CA5BAE88()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 160);
  v2 = [*(v0 + 176) identifier];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  v6 = [v1 phrase];
  v7 = [v6 bundleIdentifier];

  v8 = sub_1CA94C3A8();
  v9 = objc_allocWithZone(MEMORY[0x1E69AC860]);
  v10 = sub_1CA334F5C(v3, v5, v8);
  *(v0 + 184) = v10;
  v11 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) initWithOptions_];
  *(v0 + 192) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CA9813B0;
  *(v12 + 32) = v10;
  sub_1CA25B3D0(0, &qword_1EC446320, 0x1E69AC860);
  v13 = v10;
  OUTLINED_FUNCTION_70();
  v14 = sub_1CA94C648();

  *(v0 + 144) = 0;
  v15 = [v11 actionsWithFullyQualifiedIdentifiers:v14 error:v0 + 144];

  v16 = *(v0 + 144);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446328, qword_1CA98C970);
    sub_1CA94C1C8();
    v17 = v16;

    v18 = [v13 bundleIdentifier];
    sub_1CA94C3A8();

    v19 = sub_1CA323E30();

    if (v19)
    {
      v20 = [v13 actionIdentifier];
      sub_1CA94C3A8();

      v21 = sub_1CA323E2C();
      *(v0 + 200) = v21;

      if (v21)
      {
        v22 = *(v0 + 176);
        sub_1CA25B3D0(0, &qword_1EC4454E8, 0x1E69E0B98);
        v23 = sub_1CA5BB768(v13, v22, v21);
        *(v0 + 208) = v23;
        v24 = [objc_opt_self() defaultDatabase];
        *(v0 + 216) = v24;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 152;
        *(v0 + 24) = sub_1CA5BB364;
        v25 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1CA320A2C;
        *(v0 + 104) = &block_descriptor_9_0;
        *(v0 + 112) = v25;
        [v23 createWorkflowWithEnvironment:0 database:v24 completionHandler:v0 + 80];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }

    v26 = *(v0 + 176);
    sub_1CA5BE660();
    swift_allocError();
    v27 = v11;
    v11 = v26;
  }

  else
  {
    v28 = *(v0 + 176);
    v29 = v16;
    sub_1CA948AD8();

    v27 = v13;
    v13 = v28;
  }

  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v30();
}

uint64_t sub_1CA5BB364()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 224) = v4;
  if (v4)
  {
    v5 = sub_1CA5BB6A4;
  }

  else
  {
    v5 = sub_1CA5BB494;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA5BB494()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 152);

  v2 = [v1 actions];
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
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);

    OUTLINED_FUNCTION_2_4();

    return v10(v5);
  }

  else
  {
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v0 + 176);

    sub_1CA5BE660();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_5();

    return v17();
  }
}

uint64_t sub_1CA5BB6A4()
{
  OUTLINED_FUNCTION_39_1();
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v7();
}

id sub_1CA5BB768(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:a1 action:a2 metadata:a3];

  return v6;
}

uint64_t sub_1CA5BB7D0(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5BB7E4()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v1 = v0;
  v2 = *(v0 + 152);
  v3 = *(*(v0 + 160) + 24);
  v4 = [v2 underlyingAutoShortcut];
  v5 = [v4 bundleIdentifier];

  if (!v5)
  {
    sub_1CA94C3A8();
    sub_1CA94C368();
    OUTLINED_FUNCTION_11();
  }

  *(v1 + 168) = v5;
  v6 = [*(v1 + 152) phrase];
  v7 = [v6 basePhraseTemplate];

  if (!v7)
  {
    sub_1CA94C3A8();
    v7 = sub_1CA94C368();
  }

  *(v1 + 176) = v7;
  v8 = [*(v1 + 152) underlyingAutoShortcut];
  v9 = [v8 actionIdentifier];

  if (!v9)
  {
    sub_1CA94C3A8();
    v9 = sub_1CA94C368();
  }

  *(v1 + 184) = v9;
  v10 = [*(v1 + 152) phrase];
  v11 = [v10 parameterIdentifier];

  v12 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v15 = swift_task_alloc();
  if (v11)
  {
    sub_1CA948CF8();

    v11 = sub_1CA948CD8();
    (*(v14 + 8))(v15, v12);
  }

  *(v1 + 192) = v11;

  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_1CA5BBAE4;
  v16 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454E0, &unk_1CA987600);
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1CA3FC964;
  *(v1 + 104) = &block_descriptor_33;
  *(v1 + 112) = v16;
  [v3 retrieveActionForBundleIdentifier:v5 basePhraseTemplate:v7 actionIdentifier:v9 parameterIdentifier:v11 completion:v1 + 80];
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DEC8](v17);
}

uint64_t sub_1CA5BBAE4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_1CA5BBC64;
  }

  else
  {
    v5 = sub_1CA5BBBE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA5BBBE8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);

  OUTLINED_FUNCTION_2_4();

  return v5(v4);
}

uint64_t sub_1CA5BBC64(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[22];
  v3 = v1[23];
  v5 = v1[21];
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA5BBCEC(void *a1)
{
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  if ([objc_opt_self() isAppShortcutDenyListed:a1 inEnvironment:1])
  {
    sub_1CA949C58();
    v3 = a1;
    v4 = sub_1CA949F68();
    v5 = sub_1CA94CC08();

    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_29_0();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v52 = v7;
      *v6 = 136315138;
      v8 = [v3 actionIdentifier];
      v9 = sub_1CA94C3A8();
      v11 = v10;

      v12 = sub_1CA26B54C(v9, v11, &v52);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_1CA256000, v4, v5, "Skipping app shortcut %s because it is denylisted.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    v13 = OUTLINED_FUNCTION_106();
    v14(v13);
    return MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1CA2746C8(a1);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v20 = [a1 bundleIdentifier];
    v18 = sub_1CA94C3A8();
    v19 = v21;
  }

  v22 = sub_1CA5BC1E0(a1);
  v24 = v23;
  if (!sub_1CA25B410(v23))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1CA981310;
    if (qword_1EDB9F960 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v51 = v18;
  sub_1CA278368(v24);
  v22 = sub_1CA5B8698(v22);
  v25 = sub_1CA94C218();
  v52 = sub_1CA42AFF8(v25);
  sub_1CA5B893C(&v52);

  v18 = 0;
  v26 = v52;
  v27 = v52[2];
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v27 == v18)
    {

      return v15;
    }

    if (v18 >= *(v26 + 16))
    {
      break;
    }

    if (!*(v22 + 16))
    {
      goto LABEL_17;
    }

    v28 = *(v26 + 8 * v18 + 32);
    v29 = v28;
    v30 = sub_1CA3211F0(v28);
    if (v31)
    {
      v32 = *(*(v22 + 56) + 8 * v30);
      if (v32 >> 62)
      {
        if (!sub_1CA94D328())
        {
          goto LABEL_16;
        }
      }

      else if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      if (v28)
      {
        sub_1CA94C218();
        v33 = [v29 name];
        v34 = sub_1CA94C3A8();
        v49 = v35;
        v50 = v34;
      }

      else
      {
        v36 = qword_1EDB9F960;
        sub_1CA94C218();
        if (v36 != -1)
        {
          OUTLINED_FUNCTION_1_11();
          swift_once();
        }

        v37 = sub_1CA2786EC(v51, v19);
        if (v38)
        {
          v49 = v38;
          v50 = v37;
        }

        else
        {
          sub_1CA94C218();
          v49 = v19;
          v50 = v51;
        }
      }

      sub_1CA94C218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA278A8C();
        v15 = v42;
      }

      v40 = *(v15 + 16);
      v39 = *(v15 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_64(v39);
        sub_1CA278A8C();
        v15 = v43;
      }

      ++v18;
      *(v15 + 16) = v40 + 1;
      v41 = (v15 + 48 * v40);
      v41[4] = v50;
      v41[5] = v49;
      v41[6] = v51;
      v41[7] = v19;
      v41[8] = v28;
      v41[9] = v32;
    }

    else
    {
LABEL_16:

LABEL_17:
      ++v18;
    }
  }

  __break(1u);
LABEL_38:
  OUTLINED_FUNCTION_1_11();
  swift_once();
LABEL_33:
  v44 = OUTLINED_FUNCTION_106();
  v46 = sub_1CA2786EC(v44, v45);
  if (!v47)
  {
    sub_1CA94C218();
    v46 = OUTLINED_FUNCTION_106();
  }

  *(v15 + 32) = v46;
  *(v15 + 40) = v47;
  *(v15 + 48) = v18;
  *(v15 + 56) = v19;
  *(v15 + 64) = 0;
  *(v15 + 72) = v22;
  return v15;
}

uint64_t *sub_1CA5BC1E0(void *a1)
{
  v192[4] = *MEMORY[0x1E69E9840];
  v178 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v176 = &v166 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v166 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v166 - v13;
  if ([objc_opt_self() isAppShortcutDenyListed:a1 inEnvironment:1])
  {
    sub_1CA949C58();
    v15 = a1;
    v16 = sub_1CA949F68();
    v17 = sub_1CA94CC08();

    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_29_0();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v192[0] = v19;
      *v18 = 136315138;
      v20 = [v15 actionIdentifier];
      v21 = v3;
      v22 = sub_1CA94C3A8();
      v24 = v23;

      v25 = sub_1CA26B54C(v22, v24, v192);

      *(v18 + 4) = v25;
      OUTLINED_FUNCTION_33_13(&dword_1CA256000, v26, v27, "Skipping app shortcut %s because it is denylisted.");
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();

      (*(v21 + 8))(v12, v178);
    }

    else
    {

      (*(v3 + 8))(v12, v178);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v174 = v3;
  v175 = v14;
  v173 = v7;
  v28 = MEMORY[0x1E69E7CC0];
  v190 = MEMORY[0x1E69E7CC0];
  v191 = MEMORY[0x1E69E7CC0];
  v179 = a1;
  v29 = WFPrimaryPhrasesForAutoShortcut();
  sub_1CA25B3D0(0, &qword_1EDB9F6D0, 0x1E69ACDA8);
  v30 = sub_1CA94C658();

  v31 = sub_1CA25B410(v30);
  v32 = 0;
  v184 = v30 & 0xC000000000000001;
  v185 = v30;
  v180 = (v30 & 0xFFFFFFFFFFFFFF8);
  v181 = v31;
  while (v31 != v32)
  {
    if (v184)
    {
      v33 = MEMORY[0x1CCAA22D0](v32, v185);
    }

    else
    {
      if (v32 >= v180[2])
      {
        goto LABEL_85;
      }

      v33 = *(v185 + 8 * v32 + 32);
    }

    v34 = v33;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    v188 = v28;
    v35 = sub_1CA948D28();
    v187 = &v166;
    OUTLINED_FUNCTION_1_0();
    v183 = v36;
    MEMORY[0x1EEE9AC00](v37);
    OUTLINED_FUNCTION_6_0();
    v182 = (v39 - v38);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    v186 = &v166;
    v41 = *(*(v40 - 8) + 64);
    v42 = MEMORY[0x1EEE9AC00](v40 - 8);
    v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
    v44 = &v166 - v43;
    MEMORY[0x1EEE9AC00](v42);
    v45 = v34;
    v46 = [v45 parameterIdentifier];
    if (MEMORY[0x1EEE9AC00](v46))
    {
      sub_1CA948CF8();

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    __swift_storeEnumTagSinglePayload(&v166 - v43, v47, 1, v35);
    sub_1CA276D6C(&v166 - v43, &v166 - v43);
    sub_1CA276D6C(&v166 - v43, &v166 - v43);

    if (__swift_getEnumTagSinglePayload(&v166 - v43, 1, v35) == 1)
    {
      sub_1CA532E30(&v166 - v43, &qword_1EC443BC8, &qword_1CA9834A0);
      v31 = v181;
      v28 = v188;
    }

    else
    {
      v49 = v182;
      v48 = v183;
      v50 = v183[4];
      v50(v182, v44, v35);
      v28 = v188;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v181;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA2E5E9C();
        v28 = v54;
      }

      v53 = *(v28 + 16);
      v52 = *(v28 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_64(v52);
        sub_1CA2E5E9C();
        v28 = v55;
      }

      *(v28 + 16) = v53 + 1;
      v50((v28 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v48[9] * v53), v49, v35);
    }

    ++v32;
  }

  v56 = MEMORY[0x1E69E10B0];
  if (*(v28 + 16))
  {
    v57 = *(v177 + 24);
    sub_1CA948D28();
    v58 = sub_1CA94C648();

    v192[0] = 0;
    v59 = [v57 propertiesForIdentifiers:v58 error:v192];

    v60 = v192[0];
    if (!v59)
    {
      v156 = v192[0];

      v157 = sub_1CA948AD8();

      swift_willThrow();
      sub_1CA949C58();
      v158 = v157;
      v159 = sub_1CA949F68();
      LOBYTE(v156) = sub_1CA94CC18();

      if (os_log_type_enabled(v159, v156))
      {
        OUTLINED_FUNCTION_29_0();
        v160 = swift_slowAlloc();
        v161 = OUTLINED_FUNCTION_35_14();
        *v160 = 138412290;
        v162 = v157;
        v163 = _swift_stdlib_bridgeErrorToNSError();
        *(v160 + 4) = v163;
        *v161 = v163;
        OUTLINED_FUNCTION_33_13(&dword_1CA256000, v164, v165, "Error grabbing App Shortcut parameters: %@");
        sub_1CA532E30(v161, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
      }

      else
      {
      }

      (*(v174 + 8))(v176, v178);
      return MEMORY[0x1E69E7CC0];
    }

    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA277284();
    OUTLINED_FUNCTION_116();
    v61 = sub_1CA94C1C8();
    v62 = v60;
  }

  else
  {

    sub_1CA948D28();
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA277284();
    v61 = sub_1CA94C1E8();
  }

  v64 = v179;
  if (v31)
  {
    if (v31 < 1)
    {
      goto LABEL_86;
    }

    v65 = 0;
    v169 = 0;
    v174 += 8;
    v172 = *v56;
    *&v63 = 138412290;
    v170 = v63;
    v177 = MEMORY[0x1E69E7CC0];
    v186 = MEMORY[0x1E69E7CC0];
    v176 = v61;
    while (1)
    {
      if (v184)
      {
        v66 = MEMORY[0x1CCAA22D0](v65, v185);
      }

      else
      {
        v66 = *(v185 + 8 * v65 + 32);
      }

      v67 = v66;
      v68 = sub_1CA948D28();
      OUTLINED_FUNCTION_1_0();
      MEMORY[0x1EEE9AC00](v69);
      OUTLINED_FUNCTION_6_0();
      v70 = [v67 parameterIdentifier];
      if (!v70)
      {
        sub_1CA5BE580(v64);
        if (v99)
        {

          v100 = [v64 systemImageName];
          v101 = sub_1CA94C3A8();
          v102 = v64;
          v104 = v103;

          v105 = HIBYTE(v104) & 0xF;
          if ((v104 & 0x2000000000000000) == 0)
          {
            v105 = v101 & 0xFFFFFFFFFFFFLL;
          }

          if (v105)
          {
            sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
            v106 = v102;
            v107 = v67;
            v108 = OUTLINED_FUNCTION_116();
            v110 = sub_1CA5B8A60(v108, v109, 0);
            MEMORY[0x1CCAA1490]();
            v111 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v191 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v111 >> 1)
            {
              OUTLINED_FUNCTION_64(v111);
              sub_1CA94C698();
            }

            sub_1CA94C6E8();

            v186 = v191;
            v64 = v179;
          }

          else
          {

            v64 = v102;
          }
        }

        else
        {
        }

        goto LABEL_71;
      }

      v71 = v70;
      sub_1CA948CF8();

      if (*(v61 + 16) && (sub_1CA320F94(), (v73 & 1) != 0))
      {
        v188 = v68;
        v74 = *(*(v61 + 56) + 8 * v72);
        v75 = [v74 value];
        if (v75)
        {
          v76 = v75;
          v187 = v74;
          v77 = [v75 displayRepresentation];

          if (v77)
          {
            v182 = &v166;
            v183 = [v77 image];
            if (v183 || (sub_1CA25B3D0(0, &unk_1EDB9F6C0, 0x1E69AC870), v78 = [v64 systemImageName], sub_1CA94C3A8(), v78, (v183 = sub_1CA5B88D0()) != 0))
            {
              v79 = sub_1CA948E58();
              v180 = &v166;
              OUTLINED_FUNCTION_1_0();
              v81 = v80;
              MEMORY[0x1EEE9AC00](v82);
              OUTLINED_FUNCTION_6_0();
              v85 = v84 - v83;
              sub_1CA948DE8();
              v86 = sub_1CA948D48();
              (*(v81 + 8))(v85, v79);
              v87 = v86;
              v88 = [v77 title];
              v89 = sub_1CA94C368();
              v90 = [v88 localizedStringForLocaleIdentifier_];

              v177 = sub_1CA94C3A8();
              v92 = v91;

              v180 = v77;
              v93 = [v77 subtitle];
              if (v93)
              {
                sub_1CA94C368();
                OUTLINED_FUNCTION_11();

                v94 = [v93 localizedStringForLocaleIdentifier_];

                v95 = sub_1CA94C3A8();
                v93 = v96;
              }

              else
              {

                v95 = 0;
              }

              v116 = v187;
              v117 = v183;
              v118 = [v183 contextualActionIcon];
              v119 = v179;
              if (v118)
              {
                v183 = v118;
                v120 = [v116 value];
                if (v120)
                {
                  v121 = v120;
                  v171 = v95;
                  v122 = [v120 value];

                  sub_1CA94D258();
                  swift_unknownObjectRelease();
                  sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
                  if (swift_dynamicCast())
                  {
                    v168 = v93;
                    v123 = v189;
                    v124 = [objc_opt_self() defaultDatabase];
                    v167 = v123;
                    v125 = [v123 identifier];
                    v95 = [v125 instanceIdentifier];

                    if (!v95)
                    {
                      sub_1CA94C3A8();
                      v95 = sub_1CA94C368();
                    }

                    v192[0] = 0;
                    v93 = [v124 badgeTypeForEntityIdentifier:v95 error:v192];

                    if (v93)
                    {
                      v126 = v192[0];
                      v127 = [v93 unsignedIntegerValue];

                      v119 = v179;
                      OUTLINED_FUNCTION_28_9();
                    }

                    else
                    {
                      v146 = v192[0];
                      OUTLINED_FUNCTION_11();
                      v147 = sub_1CA948AD8();

                      swift_willThrow();
                      OUTLINED_FUNCTION_34_15();
                      v148 = v147;
                      v149 = sub_1CA949F68();
                      v95 = sub_1CA94CC18();

                      if (os_log_type_enabled(v149, v95))
                      {
                        OUTLINED_FUNCTION_29_0();
                        v150 = swift_slowAlloc();
                        v169 = v149;
                        v151 = v150;
                        v93 = OUTLINED_FUNCTION_35_14();
                        *v151 = v170;
                        v152 = v147;
                        v153 = _swift_stdlib_bridgeErrorToNSError();
                        *(v151 + 4) = v153;
                        *v93 = v153;
                        v154 = v95;
                        v95 = v169;
                        _os_log_impl(&dword_1CA256000, v169, v154, "Unable to get App Shortcut badge value: %@", v151, 0xCu);
                        sub_1CA532E30(v93, &qword_1EC444AE0, &qword_1CA985B70);
                        OUTLINED_FUNCTION_154();
                        MEMORY[0x1CCAA4BF0]();
                        OUTLINED_FUNCTION_154();
                        MEMORY[0x1CCAA4BF0]();
                      }

                      else
                      {
                      }

                      v119 = v179;
                      OUTLINED_FUNCTION_28_9();
                      (*v174)(v173);
                      v127 = 0;
                      v169 = 0;
                    }

LABEL_67:
                    v135 = objc_allocWithZone(MEMORY[0x1E69E09B8]);
                    v134 = sub_1CA5FAC18(v177, v92, v95, v93, v183, v127);
                    v136 = v134;
LABEL_68:
                    sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
                    v137 = v119;
                    v138 = v67;
                    v139 = OUTLINED_FUNCTION_106();
                    sub_1CA5B8A60(v139, v140, v134);
                    MEMORY[0x1CCAA1490]();
                    v141 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18);
                    if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v141 >> 1)
                    {
                      OUTLINED_FUNCTION_64(v141);
                      sub_1CA94C698();
                    }

                    sub_1CA94C6E8();
                    v177 = v190;

                    v142 = OUTLINED_FUNCTION_6_41();
                    v143(v142);
                    v31 = v181;
                    v64 = v179;
                    v61 = v176;
                    goto LABEL_71;
                  }

                  v95 = v171;
                }

                v127 = 0;
                goto LABEL_67;
              }

              OUTLINED_FUNCTION_34_15();
              v128 = v117;
              v129 = sub_1CA949F68();
              v130 = sub_1CA94CC18();

              if (os_log_type_enabled(v129, v130))
              {
                OUTLINED_FUNCTION_29_0();
                v131 = swift_slowAlloc();
                v132 = OUTLINED_FUNCTION_35_14();
                *v131 = v170;
                *(v131 + 4) = v128;
                *v132 = v128;
                v133 = v128;
                _os_log_impl(&dword_1CA256000, v129, v130, "App Shortcut has image representation, unable to extract data: %@", v131, 0xCu);
                sub_1CA532E30(v132, &qword_1EC444AE0, &qword_1CA985B70);
                OUTLINED_FUNCTION_154();
                MEMORY[0x1CCAA4BF0]();
                v119 = v179;
                OUTLINED_FUNCTION_154();
                MEMORY[0x1CCAA4BF0]();
              }

              (*v174)(v175, v178);
              v134 = 0;
              goto LABEL_68;
            }

            v144 = OUTLINED_FUNCTION_6_41();
            v145(v144);

            v31 = v181;
            v61 = v176;
          }

          else
          {
            v114 = OUTLINED_FUNCTION_6_41();
            v115(v114);
          }
        }

        else
        {
          v112 = OUTLINED_FUNCTION_6_41();
          v113(v112);
        }
      }

      else
      {

        v97 = OUTLINED_FUNCTION_70();
        v98(v97);
      }

LABEL_71:
      if (v31 == ++v65)
      {

        return v186;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t ExecutableAppShortcutsLoader.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1CA5BD534()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2F6BEC;

  return sub_1CA5BAC58();
}

uint64_t sub_1CA5BD638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA5BD664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA5BD664()
{
  v1 = [v0 id];
  v2 = sub_1CA94C3A8();

  return v2;
}

uint64_t type metadata accessor for AutoShortcutsDataSource(uint64_t a1)
{
  result = qword_1EC446B60;
  if (!qword_1EC446B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA5BD72C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CA94D778();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B80, qword_1CA98CC50);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA5BD9A0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CA5BD830(0, v2, 1, a1);
  }
}

void sub_1CA5BD830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31 = a2;
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    while (2)
    {
      v34 = a3;
      v7 = *(v4 + 8 * a3);
      v32 = v6;
      v33 = v5;
      do
      {
        v8 = *v5;
        if (*v5)
        {
          if (!v7)
          {
            break;
          }

          v9 = v7;
          v10 = v8;
          v11 = v9;
          v12 = v10;
          v13 = [v11 name];
          sub_1CA94C3A8();

          v14 = [v12 name];
          v15 = sub_1CA94C3A8();

          v16 = sub_1CA27BAF0();
          v24 = OUTLINED_FUNCTION_18_25(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31, v32, v33, v15);
          v27 = OUTLINED_FUNCTION_21_20(v24, MEMORY[0x1E69E6158], v25, v26);

          if (v27 == 1)
          {
            break;
          }
        }

        if (!v4)
        {
          __break(1u);
          return;
        }

        v28 = *v5;
        v7 = *(v5 + 8);
        *v5 = v7;
        *(v5 + 8) = v28;
        v5 -= 8;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v34 + 1;
      v5 = v33 + 8;
      v6 = v32 - 1;
      if (v34 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1CA5BD9A0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v140 = a1;
  v150 = MEMORY[0x1E69E7CC0];
  v146 = a3;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a4;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v143 = a4;
    while (1)
    {
      v10 = v8++;
      if (v8 < v6)
      {
        v11 = *v146;
        v12 = *(*v146 + 8 * v10);
        v134 = v9;
        v136 = v5;
        v138 = v10;
        v147 = v6;
        if (v12)
        {
          v13 = *(v11 + 8 * v8);
          if (v13)
          {
            v14 = v13;
            v15 = v12;
            v16 = v14;
            v17 = v15;
            v18 = [v16 name];
            sub_1CA94C3A8();

            v19 = [v17 name];
            v9 = sub_1CA94C3A8();

            v20 = sub_1CA27BAF0();
            v28 = OUTLINED_FUNCTION_19_21(v20, v21, v22, v23, v24, v25, v26, v27, v134, v136, v10, v140, v141, v142, v143, v144, v146, v147, v9);
            v7 = OUTLINED_FUNCTION_21_20(v28, MEMORY[0x1E69E6158], v29, v30);

            v10 = v138;
            v6 = v147;
            v31 = v7 != 1;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 1;
        }

        v32 = (v11 + 8 * v10 + 16);
        v5 = v8;
        LODWORD(v144) = v31;
        while (1)
        {
          v33 = v5++;
          if (v5 >= v6)
          {
            break;
          }

          v34 = *(v32 - 1);
          if (v34)
          {
            if (*v32)
            {
              v35 = *v32;
              v36 = v34;
              v37 = v35;
              v38 = v36;
              v39 = [v37 name];
              sub_1CA94C3A8();
              v9 = v40;

              v41 = [v38 name];
              LOBYTE(v36) = sub_1CA94C3A8();

              v42 = sub_1CA27BAF0();
              v50 = OUTLINED_FUNCTION_19_21(v42, v43, v44, v45, v46, v47, v48, v49, v134, v136, v138, v140, v141, v142, v143, v144, v146, v147, v36);
              v7 = OUTLINED_FUNCTION_21_20(v50, MEMORY[0x1E69E6158], v51, v52);

              v31 = v144;
              v6 = v147;
              if (v144 == (v7 == 1))
              {
                break;
              }
            }

            else if (v31)
            {
              goto LABEL_20;
            }
          }

          else if (!v31)
          {
            v8 = v33 + 1;
            goto LABEL_30;
          }

          ++v32;
        }

        if (v31)
        {
LABEL_20:
          v8 = v33 + 1;
          v10 = v138;
          if (v33 + 1 < v138)
          {
            goto LABEL_125;
          }

          if (v138 >= v8)
          {
            OUTLINED_FUNCTION_22_19();
          }

          else
          {
            OUTLINED_FUNCTION_22_19();
            do
            {
              if (v53 != v33)
              {
                v54 = *v146;
                if (!*v146)
                {
                  goto LABEL_128;
                }

                v55 = *(v54 + 8 * v53);
                *(v54 + 8 * v53) = *(v54 + 8 * v33);
                *(v54 + 8 * v33) = v55;
              }

              v56 = ++v53 < v33--;
            }

            while (v56);
          }
        }

        else
        {
          v8 = v5;
LABEL_30:
          OUTLINED_FUNCTION_22_19();
          v10 = v138;
        }
      }

      v57 = v146[1];
      if (v8 < v57)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_122;
        }

        if (v8 - v10 < v7)
        {
          v58 = v10 + v7;
          if (__OFADD__(v10, v7))
          {
            goto LABEL_123;
          }

          if (v58 >= v57)
          {
            v58 = v146[1];
          }

          if (v58 < v10)
          {
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
            return;
          }

          if (v8 != v58)
          {
            v135 = v9;
            v137 = v5;
            v59 = *v146;
            v5 = *v146 + 8 * v8 - 8;
            v139 = v10;
            v60 = v10 - v8;
            v141 = v58;
            do
            {
              v148 = v8;
              v61 = *(v59 + 8 * v8);
              v142 = v60;
              v145 = v5;
              do
              {
                v62 = *v5;
                if (*v5)
                {
                  if (!v61)
                  {
                    break;
                  }

                  v63 = v61;
                  v64 = v62;
                  v65 = v63;
                  v66 = v64;
                  v67 = [v65 name];
                  sub_1CA94C3A8();

                  v68 = [v66 name];
                  LOBYTE(v64) = sub_1CA94C3A8();
                  v9 = v69;

                  v70 = sub_1CA27BAF0();
                  v78 = OUTLINED_FUNCTION_19_21(v70, v71, v72, v73, v74, v75, v76, v77, v135, v137, v139, v140, v141, v142, v143, v145, v146, v148, v64);
                  v7 = OUTLINED_FUNCTION_21_20(v78, MEMORY[0x1E69E6158], v79, v80);

                  if (v7 == 1)
                  {
                    break;
                  }
                }

                if (!v59)
                {
                  goto LABEL_126;
                }

                v81 = *v5;
                v61 = *(v5 + 8);
                *v5 = v61;
                *(v5 + 8) = v81;
                v5 -= 8;
              }

              while (!__CFADD__(v60++, 1));
              v8 = v148 + 1;
              v5 = v145 + 8;
              v60 = v142 - 1;
            }

            while (v148 + 1 != v141);
            v8 = v141;
            OUTLINED_FUNCTION_22_19();
            v10 = v139;
          }
        }
      }

      if (v8 < v10)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = OUTLINED_FUNCTION_21();
        sub_1CA2E49C0(v129, v130, v131, v9);
        v9 = v132;
      }

      v84 = v9[2];
      v83 = v9[3];
      v85 = v84 + 1;
      if (v84 >= v83 >> 1)
      {
        sub_1CA2E49C0(v83 > 1, v84 + 1, 1, v9);
        v9 = v133;
      }

      v9[2] = v85;
      v86 = v9 + 4;
      v87 = &v9[2 * v84 + 4];
      *v87 = v10;
      v87[1] = v8;
      v144 = *v140;
      if (!*v140)
      {
        goto LABEL_129;
      }

      if (v84)
      {
        v149 = v8;
        while (1)
        {
          v88 = v85 - 1;
          v89 = &v86[2 * v85 - 2];
          v90 = &v9[2 * v85];
          if (v85 >= 4)
          {
            break;
          }

          if (v85 == 3)
          {
            v91 = v9[4];
            v92 = v9[5];
            v101 = __OFSUB__(v92, v91);
            v93 = v92 - v91;
            v94 = v101;
LABEL_70:
            if (v94)
            {
              goto LABEL_111;
            }

            v106 = *v90;
            v105 = v90[1];
            v107 = __OFSUB__(v105, v106);
            v108 = v105 - v106;
            v109 = v107;
            if (v107)
            {
              goto LABEL_114;
            }

            v110 = v89[1];
            v111 = v110 - *v89;
            if (__OFSUB__(v110, *v89))
            {
              goto LABEL_117;
            }

            if (__OFADD__(v108, v111))
            {
              goto LABEL_119;
            }

            if (v108 + v111 >= v93)
            {
              if (v93 < v111)
              {
                v88 = v85 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v85 < 2)
          {
            goto LABEL_113;
          }

          v113 = *v90;
          v112 = v90[1];
          v101 = __OFSUB__(v112, v113);
          v108 = v112 - v113;
          v109 = v101;
LABEL_85:
          if (v109)
          {
            goto LABEL_116;
          }

          v115 = *v89;
          v114 = v89[1];
          v101 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v101)
          {
            goto LABEL_118;
          }

          if (v116 < v108)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v88 - 1 >= v85)
          {
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
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*v146)
          {
            goto LABEL_127;
          }

          v120 = v9;
          v121 = &v86[2 * v88 - 2];
          v122 = *v121;
          v123 = v86;
          v124 = v88;
          v125 = &v86[2 * v88];
          v126 = v125[1];
          sub_1CA5BE230((*v146 + 8 * *v121), (*v146 + 8 * *v125), (*v146 + 8 * v126), v144);
          if (v5)
          {
            v150 = v120;
            goto LABEL_104;
          }

          if (v126 < v122)
          {
            goto LABEL_106;
          }

          v127 = *(v120 + 16);
          if (v124 > v127)
          {
            goto LABEL_107;
          }

          *v121 = v122;
          v121[1] = v126;
          if (v124 >= v127)
          {
            goto LABEL_108;
          }

          v128 = v124;
          v85 = v127 - 1;
          memmove(v125, v125 + 2, 16 * (v127 - 1 - v128));
          v9 = v120;
          *(v120 + 16) = v127 - 1;
          v56 = v127 > 2;
          v5 = 0;
          v7 = v143;
          v8 = v149;
          v86 = v123;
          if (!v56)
          {
            goto LABEL_99;
          }
        }

        v95 = &v86[2 * v85];
        v96 = *(v95 - 8);
        v97 = *(v95 - 7);
        v101 = __OFSUB__(v97, v96);
        v98 = v97 - v96;
        if (v101)
        {
          goto LABEL_109;
        }

        v100 = *(v95 - 6);
        v99 = *(v95 - 5);
        v101 = __OFSUB__(v99, v100);
        v93 = v99 - v100;
        v94 = v101;
        if (v101)
        {
          goto LABEL_110;
        }

        v102 = v90[1];
        v103 = v102 - *v90;
        if (__OFSUB__(v102, *v90))
        {
          goto LABEL_112;
        }

        v101 = __OFADD__(v93, v103);
        v104 = v93 + v103;
        if (v101)
        {
          goto LABEL_115;
        }

        if (v104 >= v98)
        {
          v118 = *v89;
          v117 = v89[1];
          v101 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v101)
          {
            goto LABEL_120;
          }

          if (v93 < v119)
          {
            v88 = v85 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = v146[1];
      if (v8 >= v6)
      {
        v150 = v9;
        break;
      }
    }
  }

  if (!*v140)
  {
    goto LABEL_130;
  }

  sub_1CA5BE104(&v150, *v140, v146);
LABEL_104:
}

uint64_t sub_1CA5BE104(uint64_t *a1, char *a2, void *a3)
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
    sub_1CA5BE230((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
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

uint64_t sub_1CA5BE230(char *a1, id *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    v10 = OUTLINED_FUNCTION_106();
    sub_1CA27805C(v10, v11, v4);
    v12 = &v4[8 * v8];
    v73 = v12;
    while (1)
    {
      if (v4 >= v12 || v6 >= v5)
      {
        v36 = v7;
        goto LABEL_32;
      }

      v14 = *v4;
      if (!*v4)
      {
        break;
      }

      if (*v6)
      {
        v15 = *v6;
        v16 = v14;
        v17 = v15;
        v18 = v16;
        v19 = [v17 name];
        sub_1CA94C3A8();

        v20 = [v18 name];
        v21 = sub_1CA94C3A8();

        v22 = sub_1CA27BAF0();
        v30 = OUTLINED_FUNCTION_18_25(v22, v23, v24, v25, v26, v27, v28, v29, v65, v66, v68, v6, v21);
        v33 = OUTLINED_FUNCTION_21_20(v30, MEMORY[0x1E69E6158], v31, v32);
        v6 = v70;

        v12 = v73;
        if (v33 != 1)
        {
          break;
        }
      }

      v34 = v4;
      v35 = v7 == v4;
      v4 += 8;
      if (!v35)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 8;
    }

    v34 = v6;
    v35 = v7 == v6++;
    if (v35)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v7 = *v34;
    goto LABEL_15;
  }

  sub_1CA27805C(a2, a3 - a2, a4);
  v12 = &v4[8 * v9];
LABEL_17:
  v36 = v6--;
  --v5;
  v71 = v6;
  v67 = v36;
  while (v12 > v4 && v36 > v7)
  {
    v38 = *v6;
    if (!*v6 || (v40 = (v12 - 8), (v39 = *(v12 - 1)) != 0) && (v74 = v12, v41 = v39, v42 = v38, v43 = v41, v44 = v42, v45 = [v43 name], v69 = v5, v46 = v7, v47 = v4, sub_1CA94C3A8(), v45, v48 = objc_msgSend(v44, sel_name), v49 = sub_1CA94C3A8(), v48, v72 = v49, v4 = v47, v7 = v46, v5 = v69, v50 = sub_1CA27BAF0(), v58 = OUTLINED_FUNCTION_18_25(v50, v51, v52, v53, v54, v55, v56, v57, v65, v67, v69, v71, v72), v61 = OUTLINED_FUNCTION_21_20(v58, MEMORY[0x1E69E6158], v59, v60), v6 = v71, , , v43, v43, v44, v44, v36 = v67, v12 = v74, v61 != 1))
    {
      if (v5 + 1 != v36)
      {
        *v5 = *v6;
      }

      goto LABEL_17;
    }

    if (v12 != (v5 + 1))
    {
      *v5 = *v40;
    }

    --v5;
    v12 = v40;
  }

LABEL_32:
  v62 = (v12 - v4) / 8;
  if (v36 != v4 || v36 >= &v4[8 * v62])
  {
    memmove(v36, v4, 8 * v62);
  }

  return 1;
}

uint64_t sub_1CA5BE580(void *a1)
{
  v1 = [a1 localizedShortTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

unint64_t sub_1CA5BE5E4()
{
  result = qword_1EC4445A8;
  if (!qword_1EC4445A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4445A0, &qword_1CA983900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4445A8);
  }

  return result;
}

unint64_t sub_1CA5BE660()
{
  result = qword_1EC446B40;
  if (!qword_1EC446B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B40);
  }

  return result;
}

unint64_t sub_1CA5BE6B4(uint64_t a1)
{
  result = sub_1CA5BE6DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5BE6DC()
{
  result = qword_1EC446B50;
  if (!qword_1EC446B50)
  {
    type metadata accessor for AutoShortcutsDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B50);
  }

  return result;
}

unint64_t sub_1CA5BE738()
{
  result = qword_1EC446B58;
  if (!qword_1EC446B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B58);
  }

  return result;
}

void sub_1CA5BE798(uint64_t a1)
{
  sub_1CA27351C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AutoShortcutsDataSource.action(for:)()
{
  OUTLINED_FUNCTION_14();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_1(v3);

  return v7(v5);
}

uint64_t dispatch thunk of ExecutableAppShortcutsLoader.loadItemsForBundleIdentifier(_:)()
{
  v6 = (*(*v0 + 112) + **(*v0 + 112));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  v2[1] = sub_1CA2F6BE4;
  v4 = OUTLINED_FUNCTION_116();

  return v6(v4);
}

uint64_t dispatch thunk of ExecutableAppShortcutsLoader.action(for:)()
{
  OUTLINED_FUNCTION_14();
  v6 = (*(*v0 + 120) + **(*v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_1(v2);

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for ExecutableAppShortcutsLoader.Error(_BYTE *result, int a2, int a3)
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

uint64_t sub_1CA5BED90()
{
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);

  return sub_1CA94C1E8();
}

uint64_t sub_1CA5BEE00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2AD81C;

  return sub_1CA2E0FB4();
}

uint64_t sub_1CA5BEE8C()
{
  OUTLINED_FUNCTION_0();
  v1 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_15_20(v2);

  return MEMORY[0x1EEDF81A0](v1);
}

uint64_t sub_1CA5BEF38()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {
    v5 = OUTLINED_FUNCTION_44();

    return v6(v5);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1CA5BF060()
{
  if (*(v0 + 24))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = sub_1CA9490D8();
      OUTLINED_FUNCTION_1_0();
      v5 = v4;
      v6 = swift_task_alloc();
      sub_1CA9490B8();
      v7 = sub_1CA949078();
      (*(v5 + 8))(v6, v3);

      v8 = [v2 isTodayInCalendar_];
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  return v9(v8);
}

uint64_t sub_1CA5BF1B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D2984;

  return sub_1CA5BEE8C();
}

uint64_t sub_1CA5BF260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_5(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  OUTLINED_FUNCTION_15_20(v5);
  v6 = OUTLINED_FUNCTION_44_9();

  return v7(v6);
}

uint64_t sub_1CA5BF35C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
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

uint64_t sub_1CA5BF474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2AD9FC;

  return sub_1CA5BF260(a1, a2, a3, v8);
}

uint64_t sub_1CA5BF530()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_46_9(v1, v2, v3, v4, v5, v6);
  v7 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_15_20(v8);

  return MEMORY[0x1EEDF81A0](v7);
}

uint64_t sub_1CA5BF5DC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;

  if (v0)
  {
    v5 = OUTLINED_FUNCTION_44();

    return v6(v5);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1CA5BF704()
{
  OUTLINED_FUNCTION_0();
  if (v0[9])
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    v0[10] = v1;
    if (v1)
    {
      v2 = swift_task_alloc();
      v0[11] = v2;
      *v2 = v0;
      v2[1] = sub_1CA5BF7F8;
      v3 = OUTLINED_FUNCTION_73_0(v0[6]);

      return sub_1CA675E34(v3, v4, v5, v6);
    }

    OUTLINED_FUNCTION_47_12();
  }

  v8 = OUTLINED_FUNCTION_44();

  return v9(v8);
}

uint64_t sub_1CA5BF7F8()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v5 + 96) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA5BF914()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 104);
  WFDateComparisonResultForComparisonOperator(0x3E8uLL, *(v0 + 80), 0, 0, *(v0 + 40), v1);

  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_16_27();

  return v3(v2);
}

uint64_t sub_1CA5BF99C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3884;

  return sub_1CA5BF530();
}

uint64_t sub_1CA5BFA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_5(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  OUTLINED_FUNCTION_15_20(v5);
  v6 = OUTLINED_FUNCTION_44_9();

  return v7(v6);
}

uint64_t sub_1CA5BFB70()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
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

uint64_t sub_1CA5BFC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2AD9FC;

  return sub_1CA5BFA74(a1, a2, a3, v8);
}

uint64_t sub_1CA5BFD44()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_46_9(v1, v2, v3, v4, v5, v6);
  v7 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_15_20(v8);

  return MEMORY[0x1EEDF81A0](v7);
}

uint64_t sub_1CA5BFDF0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;

  if (v0)
  {
    v5 = OUTLINED_FUNCTION_44();

    return v6(v5);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1CA5BFF18()
{
  OUTLINED_FUNCTION_0();
  if (v0[9])
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    v0[10] = v1;
    if (v1)
    {
      v2 = swift_task_alloc();
      v0[11] = v2;
      *v2 = v0;
      v2[1] = sub_1CA5C000C;
      v3 = OUTLINED_FUNCTION_73_0(v0[6]);

      return sub_1CA675E34(v3, v4, v5, v6);
    }

    OUTLINED_FUNCTION_47_12();
  }

  v8 = OUTLINED_FUNCTION_44();

  return v9(v8);
}

uint64_t sub_1CA5C000C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v5 + 96) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA5C0128()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 104);
  WFDateComparisonResultForComparisonOperator(0x3E9uLL, *(v0 + 80), 0, 0, *(v0 + 40), v1);

  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_16_27();

  return v3(v2);
}

uint64_t sub_1CA5C01B0()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease_n();
  v0 = OUTLINED_FUNCTION_44();

  return v1(v0);
}

void sub_1CA5C0210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_108();
  a23 = v26;
  a24 = v27;
  a10 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446CA8, &qword_1CA98D448);
  OUTLINED_FUNCTION_1_0();
  v47 = v32;
  v48 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_5();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446CB0, &qword_1CA98D450);
  OUTLINED_FUNCTION_1_0();
  v35 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_63();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446CB8, &qword_1CA98D458);
  OUTLINED_FUNCTION_1_0();
  v39 = v38;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v46 - v41;
  OUTLINED_FUNCTION_63_9(v30);
  v43 = sub_1CA5C4AB4();
  OUTLINED_FUNCTION_59_6(&type metadata for DateFilterComparison.CodingKeys, v44, v43);
  v45 = (v39 + 8);
  if (a10)
  {
    OUTLINED_FUNCTION_50_7();
    sub_1CA5C4B08();
    OUTLINED_FUNCTION_17_12(&type metadata for DateFilterComparison.GreaterThanCodingKeys, &a14);
    (*(v47 + 8))(v24, v48);
  }

  else
  {
    a13 = 0;
    sub_1CA5C4B5C();
    OUTLINED_FUNCTION_17_12(&type metadata for DateFilterComparison.LessThanCodingKeys, &a13);
    (*(v35 + 8))(v25, v46);
  }

  (*v45)(v42, v37);
  OUTLINED_FUNCTION_107();
}

void sub_1CA5C0448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_108();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C78, &qword_1CA98D430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C80, &qword_1CA98D438);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_63();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C88, &qword_1CA98D440);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_5();
  v31 = v27[4];
  OUTLINED_FUNCTION_63_9(v27);
  v32 = sub_1CA5C4AB4();
  OUTLINED_FUNCTION_49_7(&type metadata for DateFilterComparison.CodingKeys, v33, v32);
  if (!v23)
  {
    OUTLINED_FUNCTION_48_5();
    sub_1CA4E42C8();
    if (v35 != v34 >> 1)
    {
      OUTLINED_FUNCTION_37_11();
      if (v41 == v42)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_57_8(v36, v37, v38, v39, v40);
      sub_1CA4E42C4();
      OUTLINED_FUNCTION_61_8();
      if (!v31)
      {
        if (v27)
        {
          OUTLINED_FUNCTION_50_7();
          sub_1CA5C4B08();
          OUTLINED_FUNCTION_20_25(&type metadata for DateFilterComparison.GreaterThanCodingKeys, &a13);
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_52_10();
        }

        else
        {
          a12 = 0;
          sub_1CA5C4B5C();
          OUTLINED_FUNCTION_20_25(&type metadata for DateFilterComparison.LessThanCodingKeys, &a12);
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_51_8();
        }

        v49(v48);
        v50 = OUTLINED_FUNCTION_10_29();
        v51(v50);
        __swift_destroy_boxed_opaque_existential_0(v23);
        goto LABEL_10;
      }
    }

    v43 = sub_1CA94D4A8();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D88, &qword_1CA989470);
    *v45 = &type metadata for DateFilterComparison;
    sub_1CA94D708();
    OUTLINED_FUNCTION_41_12();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_53_11();
    v47(v46);
    v27 = v23;
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_10:
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA5C080C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D3884;

  return sub_1CA5BFD44();
}

uint64_t sub_1CA5C08E8(uint64_t a1)
{
  v2 = sub_1CA5C4AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C0924(uint64_t a1)
{
  v2 = sub_1CA5C4AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C0960(uint64_t a1)
{
  v2 = sub_1CA5C4B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C099C(uint64_t a1)
{
  v2 = sub_1CA5C4B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C09D8(uint64_t a1)
{
  v2 = sub_1CA5C4B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C0A14(uint64_t a1)
{
  v2 = sub_1CA5C4B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C0AB4()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA5C0AC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_27_20(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_22_20(v3);

  return sub_1CA2BCF74(v4, v5);
}

uint64_t sub_1CA5C0B58()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 112) = v0;

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

uint64_t sub_1CA5C0C88()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C0D40;

  return sub_1CA5C0AC8();
}

uint64_t sub_1CA5C0D40()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1CA5C0E24(uint64_t a1)
{
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  v4 = v1[3];
  v18 = v1[2];
  v19 = v4;
  sub_1CA43FE30(a1, v13);
  *(&v14 + 1) = 0x65756C6176;
  *&v15 = 0xE500000000000000;
  v5 = sub_1CA2BC3E0(v13);
  sub_1CA43FEEC(v13);
  v6 = v1[5];
  v13[0] = v1[4];
  v13[1] = v6;
  v7 = v1[7];
  v14 = v1[6];
  v15 = v7;
  sub_1CA43FE30(a1, v10);
  v11 = 0x61765F726568746FLL;
  v12 = 0xEB0000000065756CLL;
  v8 = sub_1CA2BC3E0(v10);
  sub_1CA43FEEC(v10);
  return sub_1CA5C0F00(v8, v5);
}

uint64_t sub_1CA5C0F00(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1CA5C4008(a1, sub_1CA5C43A8, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1CA5C0F88()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  v4 = *v3;
  v5 = v3[1];
  *(v1 + 208) = *v3;
  *(v1 + 216) = v5;
  v6 = *(v3 + 16);
  v7 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  v8 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v8;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  *(v1 + 160) = v6;
  v9 = swift_task_alloc();
  *(v1 + 224) = v9;
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_22_20(v9);

  return sub_1CA2BCF74(v10, v11);
}

uint64_t sub_1CA5C1048()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5C1140()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = v3[7];
  v6 = v3[4];
  v5 = v3[5];
  *(v0 + 112) = v3[6];
  *(v0 + 128) = v4;
  *(v0 + 168) = v1;
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  *(v0 + 176) = v2;
  *(v0 + 184) = 1;
  sub_1CA94C218();
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 240) = v8;
  *v8 = v0;
  v8[1] = sub_1CA5C1214;
  v9 = OUTLINED_FUNCTION_73_0(*(v0 + 192));

  return sub_1CA2BCF74(v9, v0 + 168);
}

uint64_t sub_1CA5C1214()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v6 = *(v2 + 176);

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v5 + 8);

    return v10();
  }
}

uint64_t sub_1CA5C1378()
{
  memcpy((v1 + 16), v0, 0x80uLL);
  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C1430;

  return sub_1CA5C0F88();
}

uint64_t sub_1CA5C1430()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1CA5C1514()
{
  OUTLINED_FUNCTION_0();
  *(v1 + 144) = v0;
  *(v1 + 152) = *v2;
  v3 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v4 = swift_task_alloc();
  *(v1 + 168) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_15_20(v4);

  return MEMORY[0x1EEDF81A0](v3);
}

uint64_t sub_1CA5C15D0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;

  if (v0)
  {
    v5 = OUTLINED_FUNCTION_44();

    return v6(v5);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1CA5C16F8()
{
  OUTLINED_FUNCTION_0();
  if (*(v0 + 176))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    *(v0 + 184) = v1;
    if (v1)
    {
      v2 = *(v0 + 144);
      v3 = v2[3];
      v5 = *v2;
      v4 = v2[1];
      *(v0 + 48) = v2[2];
      *(v0 + 64) = v3;
      *(v0 + 16) = v5;
      *(v0 + 32) = v4;
      v6 = swift_task_alloc();
      *(v0 + 192) = v6;
      *v6 = v0;
      v6[1] = sub_1CA5C17FC;
      v7 = OUTLINED_FUNCTION_73_0(*(v0 + 152));

      return sub_1CA2BCAE8(v7, v8);
    }

    OUTLINED_FUNCTION_47_12();
  }

  v10 = OUTLINED_FUNCTION_44();

  return v11(v10);
}

uint64_t sub_1CA5C17FC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v4;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA5C18FC()
{
  OUTLINED_FUNCTION_0();
  if (*(v0 + 200))
  {
    v1 = *(v0 + 144);
    v2 = v1[7];
    v4 = v1[4];
    v3 = v1[5];
    *(v0 + 112) = v1[6];
    *(v0 + 128) = v2;
    *(v0 + 80) = v4;
    *(v0 + 96) = v3;
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    *v5 = v0;
    v5[1] = sub_1CA5C19E4;
    v6 = OUTLINED_FUNCTION_73_0(*(v0 + 152));

    return sub_1CA2BCAE8(v6, v7);
  }

  else
  {
    swift_unknownObjectRelease_n();
    v9 = OUTLINED_FUNCTION_44();

    return v10(v9);
  }
}

uint64_t sub_1CA5C19E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v4;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA5C1AE4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  if (v1)
  {
    WFDateComparisonResultForComparisonOperator(0x3EBuLL, *(v0 + 184), *(v0 + 200), *(v0 + 224), *(v0 + 40), 0);
  }

  swift_unknownObjectRelease_n();
  v3 = OUTLINED_FUNCTION_16_27();

  return v4(v3);
}

uint64_t sub_1CA5C1B88()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease_n();
  v0 = OUTLINED_FUNCTION_44();

  return v1(v0);
}

uint64_t sub_1CA5C1BE8()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_47_12();
  v1 = OUTLINED_FUNCTION_44();

  return v2(v1);
}

uint64_t sub_1CA5C1C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1CA5C1D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_108();
  a23 = v26;
  a24 = v27;
  a10 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C60, &qword_1CA98D418);
  OUTLINED_FUNCTION_1_0();
  v47 = v32;
  v48 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_5();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C68, &qword_1CA98D420);
  OUTLINED_FUNCTION_1_0();
  v35 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_63();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C70, &qword_1CA98D428);
  OUTLINED_FUNCTION_1_0();
  v39 = v38;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v46 - v41;
  OUTLINED_FUNCTION_63_9(v30);
  v43 = sub_1CA5C49B8();
  OUTLINED_FUNCTION_59_6(&type metadata for RowTemplateDateOrderedComparison.CodingKeys, v44, v43);
  v45 = (v39 + 8);
  if (a10)
  {
    OUTLINED_FUNCTION_50_7();
    sub_1CA5C4A0C();
    OUTLINED_FUNCTION_17_12(&type metadata for RowTemplateDateOrderedComparison.GreaterThanCodingKeys, &a14);
    (*(v47 + 8))(v24, v48);
  }

  else
  {
    a13 = 0;
    sub_1CA5C4A60();
    OUTLINED_FUNCTION_17_12(&type metadata for RowTemplateDateOrderedComparison.LessThanCodingKeys, &a13);
    (*(v35 + 8))(v25, v46);
  }

  (*v45)(v42, v37);
  OUTLINED_FUNCTION_107();
}

void sub_1CA5C1F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_108();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C30, &qword_1CA98D3F8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C38, &qword_1CA98D400);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_63();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C40, &unk_1CA98D408);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_5();
  v31 = v27[4];
  OUTLINED_FUNCTION_63_9(v27);
  v32 = sub_1CA5C49B8();
  OUTLINED_FUNCTION_49_7(&type metadata for RowTemplateDateOrderedComparison.CodingKeys, v33, v32);
  if (!v23)
  {
    OUTLINED_FUNCTION_48_5();
    sub_1CA4E42C8();
    if (v35 != v34 >> 1)
    {
      OUTLINED_FUNCTION_37_11();
      if (v41 == v42)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_57_8(v36, v37, v38, v39, v40);
      sub_1CA4E42C4();
      OUTLINED_FUNCTION_61_8();
      if (!v31)
      {
        if (v27)
        {
          OUTLINED_FUNCTION_50_7();
          sub_1CA5C4A0C();
          OUTLINED_FUNCTION_20_25(&type metadata for RowTemplateDateOrderedComparison.GreaterThanCodingKeys, &a13);
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_52_10();
        }

        else
        {
          a12 = 0;
          sub_1CA5C4A60();
          OUTLINED_FUNCTION_20_25(&type metadata for RowTemplateDateOrderedComparison.LessThanCodingKeys, &a12);
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_51_8();
        }

        v49(v48);
        v50 = OUTLINED_FUNCTION_10_29();
        v51(v50);
        __swift_destroy_boxed_opaque_existential_0(v23);
        goto LABEL_10;
      }
    }

    v43 = sub_1CA94D4A8();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D88, &qword_1CA989470);
    *v45 = &type metadata for RowTemplateDateOrderedComparison;
    sub_1CA94D708();
    OUTLINED_FUNCTION_41_12();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_53_11();
    v47(v46);
    v27 = v23;
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_10:
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA5C2314()
{
  memcpy((v1 + 16), v0, 0x80uLL);
  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C23CC;

  return sub_1CA5C1514();
}

uint64_t sub_1CA5C23CC()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1CA5C24C0(uint64_t a1)
{
  v2 = sub_1CA5C49B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C24FC(uint64_t a1)
{
  v2 = sub_1CA5C49B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C2538(uint64_t a1)
{
  v2 = sub_1CA5C4A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C2574(uint64_t a1)
{
  v2 = sub_1CA5C4A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C25B0(uint64_t a1)
{
  v2 = sub_1CA5C4A60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C25EC(uint64_t a1)
{
  v2 = sub_1CA5C4A60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C2628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CA94D918();
  a4(v8, v6);
  return sub_1CA94D968();
}

uint64_t sub_1CA5C26C0()
{
  if (*v0)
  {
    sub_1CA94C438("is after", 8);
  }

  else
  {
    sub_1CA94C438("is before", 9);
  }

  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB9F690;
  v2 = sub_1CA94C368();
  v3 = sub_1CA94C368();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_1CA94C3A8();
  return v5;
}

uint64_t sub_1CA5C27BC@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v4 = *(v1 + 56);
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1CA5C3564(v7, &v6);
}

uint64_t sub_1CA5C2804()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_27_20(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_22_20(v3);

  return sub_1CA2BCF74(v4, v5);
}

uint64_t sub_1CA5C2894()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 112) = v0;

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

uint64_t sub_1CA5C29AC()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C51AC;

  return sub_1CA5C2804();
}

uint64_t sub_1CA5C2A64()
{
  OUTLINED_FUNCTION_0();
  *(v1 + 80) = v0;
  *(v1 + 88) = *v2;
  v3 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v4 = swift_task_alloc();
  *(v1 + 104) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_15_20(v4);

  return MEMORY[0x1EEDF81A0](v3);
}

uint64_t sub_1CA5C2B20()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v4;

  if (v0)
  {
    v5 = OUTLINED_FUNCTION_44();

    return v6(v5);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1CA5C2C48()
{
  OUTLINED_FUNCTION_0();
  if (*(v0 + 112))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    *(v0 + 120) = v1;
    if (v1)
    {
      v2 = *(v0 + 80);
      v3 = *(v2 + 24);
      v4 = *(v2 + 56);
      v5 = *(v2 + 8);
      *(v0 + 48) = *(v2 + 40);
      *(v0 + 64) = v4;
      *(v0 + 16) = v5;
      *(v0 + 32) = v3;
      v6 = swift_task_alloc();
      *(v0 + 128) = v6;
      *v6 = v0;
      v6[1] = sub_1CA5C2D54;
      v7 = OUTLINED_FUNCTION_73_0(*(v0 + 88));

      return sub_1CA2BCAE8(v7, v8);
    }

    OUTLINED_FUNCTION_47_12();
  }

  v10 = OUTLINED_FUNCTION_44();

  return v11(v10);
}

uint64_t sub_1CA5C2D54()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA5C2E54()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 136);
  if (v1)
  {
    if (**(v0 + 80))
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    WFDateComparisonResultForComparisonOperator(v2, *(v0 + 120), *(v0 + 136), 0, *(v0 + 40), 0);
  }

  OUTLINED_FUNCTION_47_12();
  v3 = OUTLINED_FUNCTION_16_27();

  return v4(v3);
}

uint64_t sub_1CA5C2EF8()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease_n();
  v0 = OUTLINED_FUNCTION_44();

  return v1(v0);
}

uint64_t sub_1CA5C2F58()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C3010;

  return sub_1CA5C2A64();
}

uint64_t sub_1CA5C3010()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

unint64_t sub_1CA5C3104()
{
  result = qword_1EC446B88;
  if (!qword_1EC446B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B88);
  }

  return result;
}

unint64_t sub_1CA5C3158(uint64_t a1)
{
  result = sub_1CA5C3180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3180()
{
  result = qword_1EC446B90;
  if (!qword_1EC446B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B90);
  }

  return result;
}

unint64_t sub_1CA5C31D4()
{
  result = qword_1EC446B98;
  if (!qword_1EC446B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B98);
  }

  return result;
}

unint64_t sub_1CA5C3228(uint64_t a1)
{
  result = sub_1CA5C3250();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3250()
{
  result = qword_1EC446BA0;
  if (!qword_1EC446BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BA0);
  }

  return result;
}

unint64_t sub_1CA5C32A4()
{
  result = qword_1EC446BA8;
  if (!qword_1EC446BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BA8);
  }

  return result;
}

unint64_t sub_1CA5C32F8(uint64_t a1)
{
  result = sub_1CA5C3320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3320()
{
  result = qword_1EC446BB0;
  if (!qword_1EC446BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BB0);
  }

  return result;
}

uint64_t sub_1CA5C3374(uint64_t a1)
{
  result = sub_1CA276B98(&qword_1EC446BB8, &qword_1EC4473D0, &qword_1CA98CDD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA5C33C8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA5C3404(uint64_t a1)
{
  result = sub_1CA276B98(&qword_1EC446BC0, &qword_1EC4473E0, &unk_1CA98F870);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA5C3458(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3494()
{
  result = qword_1EC446BC8;
  if (!qword_1EC446BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BC8);
  }

  return result;
}

unint64_t sub_1CA5C34E8(uint64_t a1)
{
  result = sub_1CA5C3510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3510()
{
  result = qword_1EC446BD0;
  if (!qword_1EC446BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BD0);
  }

  return result;
}

void sub_1CA5C35E8()
{
  OUTLINED_FUNCTION_38_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446BF8, &qword_1CA98D010);
  v28 = v1;
  v3 = sub_1CA94D678();
  if (!*(v2 + 16))
  {
LABEL_29:

    *v0 = v3;
    return;
  }

  v27 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_0_59();
  v8 = v7 & v6;
  OUTLINED_FUNCTION_56_8();
  if (!v8)
  {
LABEL_4:
    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v9;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_1_41();
        v8 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v28)
    {
      OUTLINED_FUNCTION_15_21();
      if (v25 != v26)
      {
        OUTLINED_FUNCTION_14_27(v24);
      }

      else
      {
        OUTLINED_FUNCTION_17_18(v24);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_55_7();
LABEL_9:
    OUTLINED_FUNCTION_54_6();
    v14 = (v13 + 16 * v12);
    v15 = v14[1];
    v29 = *v14;
    if ((v28 & 1) == 0)
    {
      sub_1CA94C218();
      sub_1CA94C218();
    }

    sub_1CA94D918();
    sub_1CA94C458();
    sub_1CA94D968();
    OUTLINED_FUNCTION_5_39();
    OUTLINED_FUNCTION_34_0();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_33_14(v20);
    v23 = (v22 + 16 * v21);
    *v23 = v29;
    v23[1] = v15;
    OUTLINED_FUNCTION_23_16();
    v2 = v27;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    if (v17 == v19)
    {
      v17 = 0;
    }

    if (*(v3 + 64 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1CA5C37D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_13_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  v40 = OUTLINED_FUNCTION_25_17();
  if (!v35[2])
  {
LABEL_29:

    *v34 = v40;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v63 = v35;
  v41 = 0;
  v42 = v35;
  OUTLINED_FUNCTION_0_59();
  v45 = v44 & v43;
  OUTLINED_FUNCTION_56_8();
  v46 = v40 + 64;
  if (!v45)
  {
LABEL_4:
    v47 = v41;
    while (1)
    {
      v41 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v41 >= v34)
      {
        break;
      }

      ++v47;
      if (v42[v41])
      {
        OUTLINED_FUNCTION_1_41();
        v45 = v49 & v48;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_15_21();
      if (v61 != v62)
      {
        OUTLINED_FUNCTION_14_27(v60);
      }

      else
      {
        OUTLINED_FUNCTION_17_18(v60);
      }

      v35[2] = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_58_5();
LABEL_9:
    OUTLINED_FUNCTION_36_12();
    if ((v50 & 1) == 0)
    {
      sub_1CA94C218();
      v51 = v35;
    }

    OUTLINED_FUNCTION_64_7();
    sub_1CA94C458();
    sub_1CA94D968();
    OUTLINED_FUNCTION_5_39();
    OUTLINED_FUNCTION_34_0();
    if (v52)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    OUTLINED_FUNCTION_2_11();
    *(v46 + v56) |= v57;
    v59 = (*(v40 + 48) + 16 * v58);
    *v59 = v36;
    v59[1] = v37;
    *(*(v40 + 56) + 8 * v58) = v35;
    OUTLINED_FUNCTION_23_16();
    v35 = v63;
    if (!v45)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v52)
    {
      if (v54)
      {
        break;
      }
    }

    if (v53 == v55)
    {
      v53 = 0;
    }

    if (*(v46 + 8 * v53) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1CA5C397C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A68, &qword_1CA98C7B0);
  v48 = v4;
  v6 = sub_1CA94D678();
  if (!v5[2])
  {
LABEL_29:

LABEL_30:
    *v3 = v6;
    return;
  }

  v45 = v2;
  v46 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_0_59();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  v15 = 48;
  v47 = v6;
  if (!v11)
  {
LABEL_4:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v17;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_1_41();
        v49 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_15_21();
    v3 = v45;
    if (v43 != v44)
    {
      OUTLINED_FUNCTION_14_27(v42);
    }

    else
    {
      OUTLINED_FUNCTION_17_18(v42);
    }

    v5[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v11));
    v49 = (v11 - 1) & v11;
LABEL_9:
    v20 = v16 | (v7 << 6);
    v21 = (v5[6] + 16 * v20);
    v22 = v21[1];
    v52 = *v21;
    v23 = v5[7] + v20 * v15;
    v24 = *(v23 + 8);
    v25 = *(v23 + 24);
    v50 = *(v23 + 16);
    v51 = *v23;
    v26 = *(v23 + 40);
    if ((v48 & 1) == 0)
    {
      v27 = *(v23 + 32);
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
    }

    v28 = v26;
    v29 = v25;
    v30 = v24;
    v31 = v22;
    v6 = v47;
    sub_1CA94D918();
    sub_1CA94C458();
    sub_1CA94D968();
    OUTLINED_FUNCTION_34_0();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    OUTLINED_FUNCTION_2_11();
    *(v14 + v36) |= v37;
    v39 = (v47[6] + 16 * v38);
    *v39 = v52;
    v39[1] = v31;
    v15 = 48;
    v40 = (v47[7] + 48 * v38);
    *v40 = v51;
    v40[1] = v30;
    v40[2] = v50;
    v40[3] = v29;
    v40[4] = v41;
    v40[5] = v28;
    ++v47[2];
    v5 = v46;
    v11 = v49;
    if (!v49)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    if (*(v14 + 8 * v33) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1CA5C3C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_13_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  v38 = OUTLINED_FUNCTION_25_17();
  if (!v35[2])
  {
LABEL_31:

LABEL_32:
    *v34 = v38;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v65 = v34;
  v39 = 0;
  OUTLINED_FUNCTION_0_59();
  v42 = v41 & v40;
  v44 = (v43 + 63) >> 6;
  v45 = v38 + 64;
  if ((v41 & v40) == 0)
  {
LABEL_4:
    v47 = v39;
    while (1)
    {
      v39 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v39 >= v44)
      {
        break;
      }

      ++v47;
      if (v35[v39])
      {
        OUTLINED_FUNCTION_1_41();
        v42 = v49 & v48;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v34 = v65;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_15_21();
    v34 = v65;
    if (v63 != v64)
    {
      OUTLINED_FUNCTION_14_27(v62);
    }

    else
    {
      OUTLINED_FUNCTION_17_18(v62);
    }

    v35[2] = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v46 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_9:
    v50 = v46 | (v39 << 6);
    v51 = *(v35[6] + 8 * v50);
    v52 = *(v35[7] + 8 * v50);
    if ((a12 & 1) == 0)
    {
      v53 = v51;
      sub_1CA94C218();
    }

    OUTLINED_FUNCTION_64_7();
    sub_1CA94D938();
    if (v51)
    {
      v54 = v51;
      sub_1CA94CFE8();
    }

    sub_1CA94D968();
    OUTLINED_FUNCTION_5_39();
    OUTLINED_FUNCTION_34_0();
    if (v55)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_23:
    OUTLINED_FUNCTION_2_11();
    *(v45 + v59) |= v60;
    *(*(v38 + 48) + 8 * v61) = v51;
    *(*(v38 + 56) + 8 * v61) = v52;
    OUTLINED_FUNCTION_23_16();
    if (!v42)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v55)
    {
      if (v57)
      {
        break;
      }
    }

    if (v56 == v58)
    {
      v56 = 0;
    }

    if (*(v45 + 8 * v56) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1CA5C3E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_13_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446BE0, &qword_1CA98FFF0);
  v38 = OUTLINED_FUNCTION_25_17();
  if (!*(v35 + 16))
  {
LABEL_29:

    *v34 = v38;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v60 = v35;
  v39 = 0;
  v40 = v35;
  OUTLINED_FUNCTION_0_59();
  v43 = v42 & v41;
  OUTLINED_FUNCTION_56_8();
  v44 = v38 + 64;
  if (!v43)
  {
LABEL_4:
    v45 = v39;
    while (1)
    {
      v39 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v39 >= v34)
      {
        break;
      }

      ++v45;
      if (*(v40 + 8 * v39))
      {
        OUTLINED_FUNCTION_1_41();
        v43 = v47 & v46;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_15_21();
      if (v58 != v59)
      {
        OUTLINED_FUNCTION_14_27(v57);
      }

      else
      {
        OUTLINED_FUNCTION_17_18(v57);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_58_5();
LABEL_9:
    OUTLINED_FUNCTION_36_12();
    if ((v48 & 1) == 0)
    {
      sub_1CA94C218();
    }

    OUTLINED_FUNCTION_64_7();
    sub_1CA94C458();
    sub_1CA94D968();
    OUTLINED_FUNCTION_5_39();
    OUTLINED_FUNCTION_34_0();
    if (v49)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    OUTLINED_FUNCTION_2_11();
    *(v44 + v53) |= v54;
    v56 = (*(v38 + 48) + 16 * v55);
    *v56 = v36;
    v56[1] = v37;
    *(*(v38 + 56) + 8 * v55) = v35;
    OUTLINED_FUNCTION_23_16();
    v35 = v60;
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v49)
    {
      if (v51)
      {
        break;
      }
    }

    if (v50 == v52)
    {
      v50 = 0;
    }

    if (*(v44 + 8 * v50) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1CA5C3FA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1CA986F60;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1CA5C4008(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v67 = a5;
  v7 = a1;
  sub_1CA5C436C(a1, a2, a3, &v59);
  v8 = v60;
  v9 = v62;
  v10 = v63;
  v49 = v64;
  v50 = v59;
  v51 = v65;
  v44 = v61;
  v11 = (v61 + 64) >> 6;
  v46 = v7;
  sub_1CA94C218();
  v45 = a3;

  v48 = v8;
  if (v10)
  {
    while (1)
    {
      HIDWORD(v52) = a4;
      v12 = v9;
LABEL_8:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v50 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v50 + 56) + 8 * v14);
      v56 = *v15;
      v57 = v16;
      v58 = v17;
      sub_1CA94C218();
      v18 = v17;
      v49(&v53, &v56);

      v19 = v53;
      v20 = v54;
      v21 = v55;
      v22 = *v67;
      v28 = sub_1CA271BF8(v53, v54);
      v29 = v22[2];
      v30 = (v23 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        break;
      }

      v32 = v23;
      if (v22[3] >= v31)
      {
        if ((v52 & 0x100000000) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444388, &qword_1CA9833C0);
          sub_1CA94D598();
        }
      }

      else
      {
        sub_1CA5C37D4(v31, BYTE4(v52) & 1, &unk_1EC446BD8, &unk_1CA98CFD8, v24, v25, v26, v27, v43, v44, v45, SBYTE4(v45), SHIWORD(v45), v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
        v33 = sub_1CA271BF8(v19, v20);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_24;
        }

        v28 = v33;
      }

      v10 &= v10 - 1;
      v35 = *v67;
      if (v32)
      {
        v36 = *(v35[7] + 8 * v28);

        v37 = v35[7];
        v38 = *(v37 + 8 * v28);
        *(v37 + 8 * v28) = v36;
      }

      else
      {
        v35[(v28 >> 6) + 8] |= 1 << v28;
        v39 = (v35[6] + 16 * v28);
        *v39 = v19;
        v39[1] = v20;
        *(v35[7] + 8 * v28) = v21;
        v40 = v35[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_23;
        }

        v35[2] = v42;
      }

      a4 = 1;
      v9 = v12;
      v8 = v48;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_1CA28A224(v50);

        return;
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        HIDWORD(v52) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1CA94D878();
  __break(1u);
}

uint64_t sub_1CA5C42D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  sub_1CA94C218();
  sub_1CA94C218();
  return a2;
}

uint64_t sub_1CA5C4320(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;
  sub_1CA94C218();
  v6 = a4;
  return a2;
}

uint64_t sub_1CA5C436C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1CA5C43A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA5C4320(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1CA5C4414(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_1CA5C4550(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
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
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
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
        *&a1[v8] = 0;
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
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA5C478C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1CA5C47CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA5C483C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1CA5C487C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CA5C490C()
{
  result = qword_1EC446C20;
  if (!qword_1EC446C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C20);
  }

  return result;
}

unint64_t sub_1CA5C4964()
{
  result = qword_1EC446C28;
  if (!qword_1EC446C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C28);
  }

  return result;
}

unint64_t sub_1CA5C49B8()
{
  result = qword_1EC446C48;
  if (!qword_1EC446C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C48);
  }

  return result;
}

unint64_t sub_1CA5C4A0C()
{
  result = qword_1EC446C50;
  if (!qword_1EC446C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C50);
  }

  return result;
}

unint64_t sub_1CA5C4A60()
{
  result = qword_1EC446C58;
  if (!qword_1EC446C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C58);
  }

  return result;
}

unint64_t sub_1CA5C4AB4()
{
  result = qword_1EC446C90;
  if (!qword_1EC446C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C90);
  }

  return result;
}

unint64_t sub_1CA5C4B08()
{
  result = qword_1EC446C98;
  if (!qword_1EC446C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C98);
  }

  return result;
}

unint64_t sub_1CA5C4B5C()
{
  result = qword_1EC446CA0;
  if (!qword_1EC446CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CA0);
  }

  return result;
}

_BYTE *sub_1CA5C4BE0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA5C4CE0()
{
  result = qword_1EC446CC0;
  if (!qword_1EC446CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CC0);
  }

  return result;
}

unint64_t sub_1CA5C4D38()
{
  result = qword_1EC446CC8;
  if (!qword_1EC446CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CC8);
  }

  return result;
}

unint64_t sub_1CA5C4D90()
{
  result = qword_1EC446CD0;
  if (!qword_1EC446CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CD0);
  }

  return result;
}

unint64_t sub_1CA5C4DE8()
{
  result = qword_1EC446CD8;
  if (!qword_1EC446CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CD8);
  }

  return result;
}

unint64_t sub_1CA5C4E40()
{
  result = qword_1EC446CE0;
  if (!qword_1EC446CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CE0);
  }

  return result;
}

unint64_t sub_1CA5C4E98()
{
  result = qword_1EC446CE8;
  if (!qword_1EC446CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CE8);
  }

  return result;
}

unint64_t sub_1CA5C4EF0()
{
  result = qword_1EC446CF0;
  if (!qword_1EC446CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CF0);
  }

  return result;
}

unint64_t sub_1CA5C4F48()
{
  result = qword_1EC446CF8;
  if (!qword_1EC446CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CF8);
  }

  return result;
}

unint64_t sub_1CA5C4FA0()
{
  result = qword_1EC446D00;
  if (!qword_1EC446D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D00);
  }

  return result;
}

unint64_t sub_1CA5C4FF8()
{
  result = qword_1EC446D08;
  if (!qword_1EC446D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D08);
  }

  return result;
}

unint64_t sub_1CA5C5050()
{
  result = qword_1EC446D10;
  if (!qword_1EC446D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D10);
  }

  return result;
}

unint64_t sub_1CA5C50A8()
{
  result = qword_1EC446D18;
  if (!qword_1EC446D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D18);
  }

  return result;
}

unint64_t sub_1CA5C5100()
{
  result = qword_1EC446D20;
  if (!qword_1EC446D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D20);
  }

  return result;
}

unint64_t sub_1CA5C5158()
{
  result = qword_1EC446D28;
  if (!qword_1EC446D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_12()
{

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1CA5C5234(uint64_t a1, uint64_t a2)
{
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    v5 = [v4 variable];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 userVisibleStringsForUseCase_];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v8 = sub_1CA94C8F8();
      swift_unknownObjectRelease();

      return v8;
    }

    swift_unknownObjectRelease();
  }

  if (!(MEMORY[0x1E69E7CC0] >> 62) || !sub_1CA94D328())
  {
    return MEMORY[0x1E69E7CD0];
  }

  sub_1CA2E85F8();
  return v10;
}

uint64_t sub_1CA5C53E8(uint64_t a1, uint64_t a2)
{
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  swift_unknownObjectRetain();
  v5 = [v4 variable];
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_5:
    swift_unknownObjectRetain();
    return a1;
  }

  v6 = v5;
  swift_getObjectType();
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v8 = sub_1CA94C1A8();
  v9 = [v6 rewrittenWithStrings_];

  v10 = [v7 initWithVariable_];
  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_1CA5C55C4(uint64_t a1)
{
  v2 = sub_1CA62E6C4(a1, *v1, *(v1 + 8), *(v1 + 16));
  v3 = *(v1 + 40);
  v4 = objc_allocWithZone(type metadata accessor for MeasurementUnitPickerParameter());
  sub_1CA5C60A8(1953066613, 0xE400000000000000, v3);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1CA3225FC();
  return v2;
}

uint64_t sub_1CA5C5664(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = *a2;
  v5 = a2[1];
  v3[4] = *a2;
  v3[5] = v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_1CA5C5728;

  return sub_1CA62EC48(v4, v5, v6, v7);
}

uint64_t sub_1CA5C5728(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = a1;
    v11 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1CA5C585C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  [*(v0 + 16) setNumber_];

  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1CA5C5914;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_1CA5C5AB8(v7, v6, v4, v3);
}

uint64_t sub_1CA5C5914(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 72) = a1;
    v11 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1CA5C5A48()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  [*(v0 + 16) setMeasurementUnit_];

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA5C5AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA5C5ADC, 0, 0);
}

uint64_t sub_1CA5C5ADC()
{
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(v0[4], v0[5]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[2] + 56) + 8 * v1);
    v0[6] = v3;
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v4 = swift_task_alloc();
      v0[7] = v4;
      *v4 = v0;
      v4[1] = sub_1CA5C5CA0;
      v5 = v0[3];

      return sub_1CA32BD18(v5);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v8 = v3;
      *(v8 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v9();
    }
  }

  else
  {
    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_1CA5C5CA0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    v5 = sub_1CA2A630C;
  }

  else
  {
    v5 = sub_1CA5C5DA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA5C5DA8()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRelease();
LABEL_5:
    swift_unknownObjectRelease();
    v4 = *(v0 + 8);

    return v4(v3);
  }

  sub_1CA2A741C();
  swift_allocError();
  v7 = v6;
  *(v6 + 24) = swift_getObjectType();
  *v7 = v1;
  *(v7 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA5C5EF0(uint64_t a1, uint64_t *a2)
{
  v6 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = v2[2];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_1CA5C5FA8;

  return sub_1CA5C5664(a1, a2);
}

uint64_t sub_1CA5C5FA8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

id sub_1CA5C60A8(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11WorkflowKitP33_F3D70BA8F8258C8950438AAE8016123730MeasurementUnitPickerParameter_unitType] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v8;
  *(inited + 72) = @"HideClearButton";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 80) = 1;
  *(inited + 104) = v9;
  *(inited + 112) = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = a3;
  v12 = v3;
  v13 = @"Key";
  v14 = @"HideClearButton";
  v15 = @"DisallowedVariableTypes";
  v16 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA5C6850(&qword_1EC441A60, type metadata accessor for WFVariableType, &unk_1CA9804C8);
  v17 = sub_1CA94C8F8();

  sub_1CA3E4650(v17, v18, v19, v20, v21, v22, v23);
  v25 = v24;

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 120) = v25;
  _s3__C3KeyVMa_0(0);
  sub_1CA5C6850(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v26 = sub_1CA94C1E8();
  v27 = sub_1CA2F864C(v26);
  v30.receiver = v12;
  v30.super_class = type metadata accessor for MeasurementUnitPickerParameter();
  v28 = objc_msgSendSuper2(&v30, sel_initWithDefinition_, v27);

  return v28;
}

id sub_1CA5C6344()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  result = [v0 setUnitStyle_];
  qword_1EC446D30 = v0;
  return result;
}

uint64_t sub_1CA5C6394()
{
  v1 = [objc_opt_self() availableUnitsForUnitType_];
  sub_1CA25B3D0(0, &qword_1EC443828, 0x1E696AFD0);
  v2 = sub_1CA94C658();

  return v2;
}

uint64_t sub_1CA5C648C()
{
  v0 = sub_1CA5C6394();
  v1 = sub_1CA25B410(v0);
  if (v1)
  {
    v2 = v1;
    v9 = MEMORY[0x1E69E7CC0];
    result = sub_1CA94D508();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1CCAA22D0](v4, v0);
        }

        else
        {
          v5 = *(v0 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        v7 = [objc_allocWithZone(WFMeasurementUnitSubstitutableState) initWithValue_];
        v8 = WFVariableSubstitutableParameterStateUpcast(v7);

        sub_1CA94D4D8();
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      while (v2 != v4);

      return v9;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1CA5C65C4(void *a1)
{
  sub_1CA25B3D0(0, &unk_1EC446D40, off_1E836EB90);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (!WFVariableSubstitutableParameterStateDowncast(a1, ObjCClassFromMetadata))
  {
    return 0;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = [v3 value]) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  if (qword_1EC442DA8 != -1)
  {
    swift_once();
  }

  v6 = [qword_1EC446D30 stringFromUnit_];
  v7 = sub_1CA94C3A8();
  swift_unknownObjectRelease();

  return v7;
}

id sub_1CA5C67D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeasurementUnitPickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA5C6850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CA5C68DC()
{
  v199 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9D2E40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("pdf|page|convert", 16);
  v6 = v5;
  v7 = sub_1CA94C438("pdf|page|convert", 16);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v215 = v11;
  v216 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v194 - v216;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v211 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v214 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v212 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v194 - v212;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v213 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v209 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Creates images from the pages in the PDF passed into the action.", 64);
  v25 = v24;
  v26 = sub_1CA94C438("Creates images from the pages in the PDF passed into the action.", 64);
  v28 = v27;
  v208 = v194;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v194 - v216;
  sub_1CA948D98();
  v30 = [v211 bundleURL];
  v210 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v194 - v212;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v213;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v209;
  v37 = sub_1CA6B3784(v35);
  v38 = v210;
  v210[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 1702194242;
  v38[21] = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0xD000000000000015;
  v38[26] = 0x80000001CA99C0D0;
  v38[28] = v39;
  v38[29] = @"Input";
  v40 = v38;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v207 = xmmword_1CA981350;
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x7475706E494657;
  *(v41 + 104) = 0xE700000000000000;
  *(v41 + 120) = v39;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  v43 = v42;
  *(v41 + 184) = 0xE500000000000000;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v209;
  *(v41 + 192) = &unk_1F4A08858;
  v44 = @"IconColor";
  v45 = @"IconSymbol";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v208 = v48;
  v40[30] = v47;
  v40[33] = v48;
  v40[34] = @"InputPassthrough";
  *(v40 + 280) = 0;
  v40[38] = v43;
  v40[39] = @"Name";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438("Make Image from PDF Page (Action Name)", 38);
  v203 = v52;
  v204 = v51;
  v53 = sub_1CA94C438("Make Image from PDF Page", 24);
  v202 = v54;
  v205 = v194;
  MEMORY[0x1EEE9AC00](v53);
  v55 = v216;
  sub_1CA948D98();
  v56 = v211;
  v57 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v194 - v212;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v204, v203, v53, v202, 0, 0, v194 - v55, v58);
  v61 = v210;
  v210[40] = v60;
  v62 = v213;
  v61[43] = v213;
  v61[44] = @"Output";
  v63 = swift_initStackObject();
  *(v63 + 16) = v207;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 1;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("Image (Default Output Name)", 27);
  v204 = v66;
  v205 = v65;
  v67 = sub_1CA94C438("Image", 5);
  v69 = v68;
  v206 = v194;
  MEMORY[0x1EEE9AC00](v67);
  sub_1CA948D98();
  v70 = [v56 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = v194 - v212;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v205, v204, v67, v69, 0, 0, v194 - v55, v71);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v209;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A08888;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v210;
  v210[45] = v74;
  v75[48] = v208;
  v75[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_1CA981570;
  v208 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  *(v76 + 16) = v207;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000019;
  *(v76 + 48) = 0x80000001CA99B030;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Key";
  *(v76 + 80) = 0x7475706E494657;
  *(v76 + 88) = 0xE700000000000000;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v202 = v80;
  v201 = v81;
  v203 = v82;
  v83 = @"Parameters";
  v204 = sub_1CA94C438("PDF (WFInput)", 13);
  v200 = v84;
  v85 = sub_1CA94C438("PDF", 3);
  v198 = v86;
  v205 = v194;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v194 - v216;
  sub_1CA948D98();
  v88 = v211;
  v89 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v212;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v204, v200, v85, v198, 0, 0, v87, v194 - v90);
  v92 = v213;
  *(v76 + 144) = v213;
  *(v76 + 152) = @"Placeholder";
  v198 = @"Placeholder";
  v204 = sub_1CA94C438("PDF (WFInput)", 13);
  v200 = v93;
  v94 = sub_1CA94C438("PDF", 3);
  v197 = v95;
  v205 = v194;
  MEMORY[0x1EEE9AC00](v94);
  v96 = v194 - v216;
  sub_1CA948D98();
  v97 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v204, v200, v94, v197, 0, 0, v96, v194 - v90);
  *(v76 + 184) = v92;
  *(v76 + 160) = v99;
  _s3__C3KeyVMa_0(0);
  v205 = v100;
  v204 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v101 = sub_1CA94C1E8();
  v102 = sub_1CA2F864C(v101);
  *(v209 + 32) = v102;
  v103 = swift_allocObject();
  *(v103 + 16) = v207;
  v105 = v201;
  v104 = v202;
  *(v103 + 32) = v202;
  *(v103 + 40) = 0xD00000000000002ALL;
  *(v103 + 48) = 0x80000001CA9D2F30;
  v106 = MEMORY[0x1E69E6158];
  *(v103 + 64) = MEMORY[0x1E69E6158];
  *(v103 + 72) = v105;
  *(v103 + 80) = 0xD000000000000021;
  *(v103 + 88) = 0x80000001CA9D2F60;
  v107 = v203;
  *(v103 + 104) = v106;
  *(v103 + 112) = v107;
  v200 = v104;
  v201 = v105;
  v202 = v107;
  v108 = sub_1CA94C438("Image Format (WFMakeImageFromPDFPageImageFormat)", 48);
  v196 = v109;
  v197 = v108;
  v110 = sub_1CA94C438("Image Format", 12);
  v195 = v111;
  v203 = v194;
  MEMORY[0x1EEE9AC00](v110);
  v112 = v216;
  sub_1CA948D98();
  v113 = [v88 bundleURL];
  v194[1] = v194;
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 120) = sub_1CA2F9F14(v197, v196, v110, v195, 0, 0, v194 - v112, v194 - v90);
  v115 = v213;
  v116 = v198;
  *(v103 + 144) = v213;
  *(v103 + 152) = v116;
  v203 = v116;
  v117 = sub_1CA94C438("Image Format (WFMakeImageFromPDFPageImageFormat)", 48);
  v196 = v118;
  v197 = v117;
  v195 = sub_1CA94C438("Image Format", 12);
  v120 = v119;
  v198 = v194;
  MEMORY[0x1EEE9AC00](v195);
  v121 = v194 - v112;
  sub_1CA948D98();
  v122 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v197, v196, v195, v120, 0, 0, v121, v194 - v90);
  *(v103 + 184) = v115;
  *(v103 + 160) = v124;
  v125 = sub_1CA94C1E8();
  v126 = sub_1CA2F864C(v125);
  *(v209 + 40) = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = v207;
  *(v127 + 32) = v200;
  *(v127 + 40) = 0xD000000000000029;
  *(v127 + 48) = 0x80000001CA9D2FD0;
  v128 = MEMORY[0x1E69E6158];
  v129 = v201;
  *(v127 + 64) = MEMORY[0x1E69E6158];
  *(v127 + 72) = v129;
  *(v127 + 80) = 0xD000000000000020;
  *(v127 + 88) = 0x80000001CA9D3000;
  v130 = v202;
  *(v127 + 104) = v128;
  *(v127 + 112) = v130;
  v131 = sub_1CA94C438("Color (WFMakeImageFromPDFPageColorspace)", 40);
  v197 = v132;
  v198 = v131;
  v133 = sub_1CA94C438("Color", 5);
  v196 = v134;
  *&v207 = v194;
  MEMORY[0x1EEE9AC00](v133);
  v135 = v216;
  sub_1CA948D98();
  v136 = v211;
  v137 = [v211 bundleURL];
  v195 = v194;
  MEMORY[0x1EEE9AC00](v137);
  v138 = v212;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 120) = sub_1CA2F9F14(v198, v197, v133, v196, 0, 0, v194 - v135, v194 - v138);
  v140 = v213;
  v141 = v203;
  *(v127 + 144) = v213;
  *(v127 + 152) = v141;
  v142 = sub_1CA94C438("Color (WFMakeImageFromPDFPageColorspace)", 40);
  v197 = v143;
  v198 = v142;
  v144 = sub_1CA94C438("Color", 5);
  v146 = v145;
  *&v207 = v194;
  MEMORY[0x1EEE9AC00](v144);
  v147 = v194 - v135;
  sub_1CA948D98();
  v148 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v198, v197, v144, v146, 0, 0, v147, v194 - v138);
  *(v127 + 184) = v140;
  *(v127 + 160) = v150;
  v151 = sub_1CA94C1E8();
  v152 = sub_1CA2F864C(v151);
  *(v209 + 48) = v152;
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_1CA981400;
  *(v153 + 32) = @"AllowsDecimalNumbers";
  *(v153 + 40) = 0;
  v154 = v200;
  *(v153 + 64) = MEMORY[0x1E69E6370];
  *(v153 + 72) = v154;
  *(v153 + 80) = 0xD000000000000016;
  *(v153 + 88) = 0x80000001CA99C180;
  v155 = MEMORY[0x1E69E6158];
  *(v153 + 104) = MEMORY[0x1E69E6158];
  *(v153 + 112) = @"DefaultValue";
  *(v153 + 120) = 300;
  v156 = v201;
  *(v153 + 144) = MEMORY[0x1E69E6530];
  *(v153 + 152) = v156;
  *(v153 + 160) = 0xD000000000000020;
  *(v153 + 168) = 0x80000001CA9D3060;
  v157 = v202;
  *(v153 + 184) = v155;
  *(v153 + 192) = v157;
  v158 = @"AllowsDecimalNumbers";
  v159 = @"DefaultValue";
  v206 = sub_1CA94C438("Resolution (dots per inch) (WFMakeImageFromPDFPageResolution)", 61);
  v202 = v160;
  v161 = sub_1CA94C438("Resolution (dots per inch)", 26);
  v201 = v162;
  *&v207 = v194;
  MEMORY[0x1EEE9AC00](v161);
  v163 = v194 - v216;
  sub_1CA948D98();
  v164 = v211;
  v165 = [v211 bundleURL];
  v200 = v194;
  MEMORY[0x1EEE9AC00](v165);
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v153 + 200) = sub_1CA2F9F14(v206, v202, v161, v201, 0, 0, v163, v194 - v138);
  v167 = v203;
  *(v153 + 224) = v213;
  *(v153 + 232) = v167;
  v206 = sub_1CA94C438("300 (WFMakeImageFromPDFPageResolution)", 38);
  v203 = v168;
  v169 = sub_1CA94C438("300", 3);
  v202 = v170;
  *&v207 = v194;
  MEMORY[0x1EEE9AC00](v169);
  v171 = v194 - v216;
  sub_1CA948D98();
  v172 = [v164 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v153 + 240) = sub_1CA2F9F14(v206, v203, v169, v202, 0, 0, v171, v194 - v138);
  *(v153 + 264) = v213;
  *(v153 + 272) = @"TextAlignment";
  *(v153 + 304) = MEMORY[0x1E69E6158];
  *(v153 + 280) = 0x7468676952;
  *(v153 + 288) = 0xE500000000000000;
  v174 = @"TextAlignment";
  v175 = sub_1CA94C1E8();
  v176 = sub_1CA2F864C(v175);
  v177 = v209;
  *(v209 + 56) = v176;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v179 = v210;
  v210[50] = v177;
  v179[53] = v178;
  v179[54] = @"ParameterSummary";
  v180 = @"ParameterSummary";
  v181 = sub_1CA94C438("Make ${WFMakeImageFromPDFPageImageFormat} image from ${WFInput} (Parameter Summary)", 83);
  v183 = v182;
  v184 = sub_1CA94C438("Make ${WFMakeImageFromPDFPageImageFormat} image from ${WFInput}", 63);
  v186 = v185;
  v213 = v194;
  MEMORY[0x1EEE9AC00](v184);
  v187 = v194 - v216;
  sub_1CA948D98();
  v188 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = v194 - v212;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v191 = sub_1CA2F9F14(v181, v183, v184, v186, 0, 0, v187, v189);
  v192 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v179[58] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v179[55] = v192;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}