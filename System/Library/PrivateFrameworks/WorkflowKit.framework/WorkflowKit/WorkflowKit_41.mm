id sub_1CA69F030()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9E0A60;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("content|item|class", 18);
  v6 = v5;
  v7 = sub_1CA94C438("content|item|class", 18);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v125 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v11;
  v12 = &v112 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v122 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v123 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v112 - v124;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  *&v120 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Returns the type of every item passed as input. For example, if a URL is passed, this action will return “URL”.", 115);
  v117 = v24;
  v25 = sub_1CA94C438("Returns the type of every item passed as input. For example, if a URL is passed, this action will return “URL”.", 115);
  v27 = v26;
  v118 = &v112;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v112 - v125;
  sub_1CA948D98();
  v29 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v112 - v124;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v117, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v121;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v120;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x80000001CA9ABBD0;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v120 = xmmword_1CA981350;
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
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v118;
  *(v37 + 192) = &unk_1F4A0C738;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v117 = v43;
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438("Get Type (Action Name)", 22);
  v113 = v46;
  v114 = v45;
  v47 = sub_1CA94C438("Get Type", 8);
  v49 = v48;
  v115 = &v112;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v112 - v125;
  sub_1CA948D98();
  v51 = v122;
  v52 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v112 - v124;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v114, v113, v47, v49, 0, 0, v50, v53);
  v55 = v121;
  *(inited + 304) = v121;
  *(inited + 312) = @"Output";
  v56 = swift_initStackObject();
  *(v56 + 16) = v120;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438("Type (Default Output Name)", 26);
  v114 = v59;
  v115 = v58;
  v113 = sub_1CA94C438("Type", 4);
  v61 = v60;
  v116 = &v112;
  MEMORY[0x1EEE9AC00](v113);
  v62 = &v112 - v125;
  sub_1CA948D98();
  v63 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v112 - v124;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v115, v114, v113, v61, 0, 0, v62, v64);
  *(v56 + 168) = v55;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 216) = v118;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F4A0C768;
  v66 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v117;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  *(v67 + 16) = v120;
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
  v72 = sub_1CA94C438("Item (WFInput)", 14);
  v114 = v73;
  v115 = v72;
  v74 = sub_1CA94C438("Item", 4);
  v113 = v75;
  v116 = &v112;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v125;
  sub_1CA948D98();
  v77 = v122;
  v78 = [v122 bundleURL];
  v112 = &v112;
  MEMORY[0x1EEE9AC00](v78);
  *&v120 = inited;
  v79 = v124;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v115, v114, v74, v113, 0, 0, &v112 - v76, &v112 - v79);
  v81 = v121;
  *(v67 + 144) = v121;
  *(v67 + 152) = @"Placeholder";
  v82 = @"Placeholder";
  v83 = sub_1CA94C438("Item (WFInput)", 14);
  v114 = v84;
  v115 = v83;
  v113 = sub_1CA94C438("Item", 4);
  v86 = v85;
  v116 = &v112;
  MEMORY[0x1EEE9AC00](v113);
  v87 = &v112 - v76;
  sub_1CA948D98();
  v88 = [v77 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v115, v114, v113, v86, 0, 0, v87, &v112 - v79);
  *(v67 + 184) = v81;
  *(v67 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = sub_1CA94C1E8();
  v92 = sub_1CA2F864C(v91);
  v93 = v118;
  v118[4] = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v95 = v120;
  *(v120 + 360) = v93;
  *(v95 + 384) = v94;
  *(v95 + 392) = @"ParameterSummary";
  v96 = @"ParameterSummary";
  v97 = sub_1CA94C438("Get type of ${WFInput} (Parameter Summary)", 42);
  v99 = v98;
  v100 = sub_1CA94C438("Get type of ${WFInput}", 22);
  v102 = v101;
  v121 = &v112;
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v112 - v125;
  sub_1CA948D98();
  v104 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v112 - v124;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v97, v99, v100, v102, 0, 0, v103, v105);
  v108 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v109 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v95 + 400) = v108;
  *(v95 + 424) = v109;
  *(v95 + 432) = @"ResidentCompatible";
  *(v95 + 464) = MEMORY[0x1E69E6370];
  *(v95 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v110 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA69FF3C()
{
  v0 = sub_1CA949D18();
  v121 = *(v0 - 8);
  v122 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v120 = v112 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFPrintAction");
  *(inited + 54) = -4864;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v125 = sub_1CA94C438("pdf|print|printer|airprint", 26);
  v7 = v6;
  v8 = sub_1CA94C438("pdf|print|printer|airprint", 26);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v129 = v12;
  v130 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v112 - v130;
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
  v128 = v16;
  v126 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v112 - v126;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v125, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v125 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v124 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v119 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438("Prints the input using AirPrint.", 32);
  v117 = v25;
  v26 = sub_1CA94C438("Prints the input using AirPrint.", 32);
  v28 = v27;
  v118 = v112;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v112 - v130;
  sub_1CA948D98();
  v30 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v112 - v126;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v117, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v125;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v124;
  *(inited + 120) = sub_1CA6B3784(v34);
  *(inited + 144) = v35;
  *(inited + 152) = @"DisabledOnPlatforms";
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A0C798;
  *(inited + 184) = v36;
  *(inited + 192) = @"IconColor";
  v124 = v36;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v37 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  strcpy((inited + 240), "printer.fill");
  *(inited + 253) = 0;
  *(inited + 254) = -5120;
  *(inited + 264) = v37;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
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
  *(v38 + 120) = v37;
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 216) = v36;
  *(v38 + 184) = 0xE500000000000000;
  *(v38 + 192) = &unk_1F4A0C7C8;
  v40 = @"DisabledOnPlatforms";
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"Input";
  v44 = sub_1CA94C1E8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v44;
  *(inited + 304) = v45;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 320) = 1;
  *(inited + 344) = v39;
  *(inited + 352) = @"Name";
  v46 = @"InputPassthrough";
  v47 = @"Name";
  v48 = sub_1CA94C438("Print (Action Name)", 19);
  v50 = v49;
  v51 = sub_1CA94C438("Print", 5);
  v53 = v52;
  v118 = v112;
  MEMORY[0x1EEE9AC00](v51);
  v54 = v112 - v130;
  sub_1CA948D98();
  v55 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v112 - v126;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v48, v50, v51, v53, 0, 0, v54, v56);
  *(inited + 384) = v125;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1CA981370;
  *(v58 + 32) = @"Class";
  *(v58 + 40) = 0xD000000000000019;
  *(v58 + 48) = 0x80000001CA99B030;
  v59 = MEMORY[0x1E69E6158];
  *(v58 + 64) = MEMORY[0x1E69E6158];
  *(v58 + 72) = @"Key";
  *(v58 + 80) = 0x7475706E494657;
  *(v58 + 88) = 0xE700000000000000;
  *(v58 + 104) = v59;
  *(v58 + 112) = @"Label";
  v60 = @"Parameters";
  v61 = @"Class";
  v62 = @"Key";
  v63 = @"Label";
  v64 = sub_1CA94C438("Input (WFInput)", 15);
  v114 = v65;
  v115 = v64;
  v113 = sub_1CA94C438("Input", 5);
  v67 = v66;
  v116 = v112;
  MEMORY[0x1EEE9AC00](v113);
  v68 = v112 - v130;
  sub_1CA948D98();
  v69 = v127;
  v70 = [v127 bundleURL];
  v112[1] = v112;
  MEMORY[0x1EEE9AC00](v70);
  v71 = v126;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 120) = sub_1CA2F9F14(v115, v114, v113, v67, 0, 0, v68, v112 - v71);
  v73 = v125;
  *(v58 + 144) = v125;
  *(v58 + 152) = @"Placeholder";
  v74 = @"Placeholder";
  v75 = sub_1CA94C438("Input (WFInput)", 15);
  v114 = v76;
  v115 = v75;
  v77 = sub_1CA94C438("Input", 5);
  v113 = v78;
  v116 = v112;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v112 - v130;
  sub_1CA948D98();
  v80 = [v69 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 160) = sub_1CA2F9F14(v115, v114, v77, v113, 0, 0, v79, v112 - v71);
  *(v58 + 184) = v73;
  *(v58 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v82 = swift_allocObject();
  *(v82 + 16) = v119;
  v83 = @"PreferredTypes";
  v84 = v120;
  sub_1CA949CA8();
  v85 = sub_1CA949C68();
  v87 = v86;
  (*(v121 + 8))(v84, v122);
  *(v82 + 32) = v85;
  *(v82 + 40) = v87;
  *(v58 + 224) = v124;
  *(v58 + 200) = v82;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v88 = sub_1CA94C1E8();
  v89 = sub_1CA2F864C(v88);
  v90 = v118;
  v118[4] = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v90;
  *(inited + 424) = v91;
  *(inited + 432) = @"ParameterSummary";
  v92 = @"ParameterSummary";
  v93 = sub_1CA94C438("Print ${WFInput} (Parameter Summary)", 36);
  v95 = v94;
  v96 = sub_1CA94C438("Print ${WFInput}", 16);
  v98 = v97;
  v125 = v112;
  MEMORY[0x1EEE9AC00](v96);
  v99 = v112 - v130;
  sub_1CA948D98();
  v100 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v112 - v126;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  v104 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v105 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v104;
  *(inited + 464) = v105;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F4A0C808;
  v106 = v124;
  *(inited + 504) = v124;
  *(inited + 512) = @"UserInterfaceClasses";
  v107 = @"RequiredResources";
  v108 = @"UserInterfaceClasses";
  v109 = sub_1CA94C1E8();
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 520) = v109;
  *(inited + 552) = @"UserInterfaces";
  *(inited + 584) = v106;
  *(inited + 560) = &unk_1F4A0C898;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v110 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6A0DDC()
{
  v144 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9E0C90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v147 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("safari|view|controller|open|website|preview|quick look", 54);
  v6 = v5;
  v7 = sub_1CA94C438("safari|view|controller|open|website|preview|quick look", 54);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v152 = v11;
  v153 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v134 - v153;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v149 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v150 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v134 - v151;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v148 = v19;
  v20 = v147;
  v147[10] = v18;
  v20[13] = v19;
  v20[14] = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v143 = v23;
  v20[15] = v22;
  v20[18] = v23;
  v20[19] = @"Description";
  v146 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438("Shows the web URL passed into the action in a Safari View Controller, allowing you to view the web page without switching apps.", 127);
  v142 = v28;
  v29 = sub_1CA94C438("Shows the web URL passed into the action in a Safari View Controller, allowing you to view the web page without switching apps.", 127);
  v31 = v30;
  v145 = &v134;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v134 - v153;
  sub_1CA948D98();
  v33 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v134 - v151;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v142, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v148;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v146;
  v20[20] = sub_1CA6B3784(v37);
  v20[23] = v38;
  v20[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 0;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x4C52554657;
  *(v39 + 104) = 0xE500000000000000;
  *(v39 + 120) = MEMORY[0x1E69E6158];
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v142;
  *(v39 + 192) = &unk_1F4A0C908;
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v20[25] = v43;
  v20[28] = v44;
  v20[29] = @"InputPassthrough";
  *(v20 + 240) = 1;
  v20[33] = v41;
  v20[34] = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438("Show Web View (Action Name)", 27);
  v49 = v48;
  v50 = sub_1CA94C438("Show Web View", 13);
  v52 = v51;
  v146 = &v134;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v134 - v153;
  sub_1CA948D98();
  v54 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v134 - v151;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20[35] = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  v20[38] = v148;
  v20[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v146 = swift_allocObject();
  *(v146 + 1) = xmmword_1CA981360;
  v145 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1CA981370;
  *(v57 + 32) = @"Class";
  *(v57 + 40) = 0xD000000000000011;
  *(v57 + 48) = 0x80000001CA99E620;
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"DefaultValue";
  *(v57 + 80) = 0;
  *(v57 + 104) = MEMORY[0x1E69E6370];
  *(v57 + 112) = @"Description";
  v140 = @"Class";
  v58 = @"Parameters";
  v59 = @"DefaultValue";
  v60 = @"Description";
  v61 = sub_1CA94C438("Enter Safari Reader mode if it’s available for the given web page. (WFEnterSafariReader)", 90);
  v137 = v62;
  v138 = v61;
  v63 = sub_1CA94C438("Enter Safari Reader mode if it’s available for the given web page.", 68);
  v65 = v64;
  v139 = &v134;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v134 - v153;
  sub_1CA948D98();
  v67 = v149;
  v68 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = v151;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 120) = sub_1CA2F9F14(v138, v137, v63, v65, 0, 0, v66, &v134 - v69);
  v71 = v148;
  *(v57 + 144) = v148;
  *(v57 + 152) = @"Key";
  *(v57 + 160) = 0xD000000000000013;
  *(v57 + 168) = 0x80000001CA9E0E50;
  *(v57 + 184) = MEMORY[0x1E69E6158];
  *(v57 + 192) = @"Label";
  v72 = @"Key";
  v73 = @"Label";
  v136 = v72;
  v137 = v73;
  v138 = sub_1CA94C438("Enter Safari Reader (WFEnterSafariReader)", 41);
  v135 = v74;
  v75 = sub_1CA94C438("Enter Safari Reader", 19);
  v77 = v76;
  v139 = &v134;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v134 - v153;
  sub_1CA948D98();
  v79 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v138, v135, v75, v77, 0, 0, v78, &v134 - v69);
  *(v57 + 224) = v71;
  *(v57 + 200) = v81;
  _s3__C3KeyVMa_0(0);
  v139 = v82;
  v138 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v83 = sub_1CA94C1E8();
  v84 = sub_1CA2F864C(v83);
  v146[4] = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1CA981300;
  *(v85 + 32) = @"AutocapitalizationType";
  *(v85 + 40) = 1701736270;
  *(v85 + 48) = 0xE400000000000000;
  v86 = MEMORY[0x1E69E6158];
  v87 = v140;
  *(v85 + 64) = MEMORY[0x1E69E6158];
  *(v85 + 72) = v87;
  *(v85 + 80) = 0xD000000000000014;
  *(v85 + 88) = 0x80000001CA99B500;
  *(v85 + 104) = v86;
  *(v85 + 112) = @"DisableAutocorrection";
  *(v85 + 120) = 1;
  v88 = v136;
  *(v85 + 144) = MEMORY[0x1E69E6370];
  *(v85 + 152) = v88;
  *(v85 + 160) = 0x4C52554657;
  *(v85 + 168) = 0xE500000000000000;
  *(v85 + 184) = v86;
  *(v85 + 192) = @"KeyboardType";
  *(v85 + 200) = 5001813;
  *(v85 + 208) = 0xE300000000000000;
  *(v85 + 224) = v86;
  *(v85 + 232) = v137;
  v89 = @"AutocapitalizationType";
  v90 = @"DisableAutocorrection";
  v91 = @"KeyboardType";
  v140 = sub_1CA94C438("URL (WFURL)", 11);
  v137 = v92;
  v136 = sub_1CA94C438("URL", 3);
  v94 = v93;
  v141 = &v134;
  MEMORY[0x1EEE9AC00](v136);
  v95 = &v134 - v153;
  sub_1CA948D98();
  v96 = v149;
  v97 = [v149 bundleURL];
  v135 = &v134;
  MEMORY[0x1EEE9AC00](v97);
  v98 = v147;
  v99 = &v134 - v151;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 240) = sub_1CA2F9F14(v140, v137, v136, v94, 0, 0, v95, v99);
  v101 = v148;
  *(v85 + 264) = v148;
  *(v85 + 272) = @"Placeholder";
  v102 = @"Placeholder";
  v140 = sub_1CA94C438("URL (WFURL)", 11);
  v137 = v103;
  v104 = sub_1CA94C438("URL", 3);
  v136 = v105;
  v141 = &v134;
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v134 - v153;
  sub_1CA948D98();
  v107 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v134 - v151;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 280) = sub_1CA2F9F14(v140, v137, v104, v136, 0, 0, v106, v108);
  *(v85 + 304) = v101;
  *(v85 + 312) = @"TextContentType";
  *(v85 + 344) = MEMORY[0x1E69E6158];
  *(v85 + 320) = 5001813;
  *(v85 + 328) = 0xE300000000000000;
  v110 = @"TextContentType";
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v113 = v146;
  v146[5] = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v98[40] = v113;
  v98[43] = v114;
  v98[44] = @"ParameterSummary";
  v115 = @"ParameterSummary";
  v116 = sub_1CA94C438("Show web view at ${WFURL} (Parameter Summary)", 45);
  v118 = v117;
  v119 = sub_1CA94C438("Show web view at ${WFURL}", 25);
  v121 = v120;
  v148 = &v134;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v134 - v153;
  sub_1CA948D98();
  v123 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v134 - v151;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  v127 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v128 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v98[45] = v127;
  v98[48] = v128;
  v98[49] = @"RequiredResources";
  v98[50] = &unk_1F4A0C948;
  v129 = v142;
  v98[53] = v142;
  v98[54] = @"UserInterfaceClasses";
  v130 = @"RequiredResources";
  v131 = @"UserInterfaceClasses";
  v98[55] = sub_1CA94C1E8();
  v98[58] = v143;
  v98[59] = @"UserInterfaces";
  v98[63] = v129;
  v98[60] = &unk_1F4A0C9F8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v132 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6A1F00()
{
  v157 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9E0F20;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("Location|Maps|Two|Places", 24);
  v6 = v5;
  v7 = sub_1CA94C438("Location|Maps|Two|Places", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v167 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  *&v168 = v11;
  v12 = &v145 - v167;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v166 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v164 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v165 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v145 - v165;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v163 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  *&v161 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v162 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets the halfway point between two locations.", 45);
  v159 = v27;
  v28 = sub_1CA94C438("Gets the halfway point between two locations.", 45);
  v30 = v29;
  v160 = &v145;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v145 - v167;
  sub_1CA948D98();
  v32 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v145 - v165;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v159, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v163;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v161;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD00000000000001CLL;
  *(inited + 248) = 0x80000001CA9E0F90;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 0x6E65657247;
  *(inited + 288) = 0xE500000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  *(inited + 344) = v39;
  *(inited + 352) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"IconSymbolColor";
  v43 = @"LocallyProcessesData";
  v44 = @"Name";
  v45 = sub_1CA94C438("Get Halfway Point (Action Name)", 31);
  v47 = v46;
  v48 = sub_1CA94C438("Get Halfway Point", 17);
  v50 = v49;
  *&v161 = &v145;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v145 - v167;
  sub_1CA948D98();
  v52 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v145 - v165;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 384) = v163;
  *(inited + 392) = @"Output";
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  v161 = xmmword_1CA9813C0;
  *(v55 + 16) = xmmword_1CA9813C0;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x614E74757074754FLL;
  *(v55 + 88) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438("Halfway Point (Default Output Name)", 35);
  v158 = v58;
  v59 = sub_1CA94C438("Halfway Point", 13);
  v61 = v60;
  v159 = &v145;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v145 - v167;
  sub_1CA948D98();
  v63 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v145 - v165;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 96) = sub_1CA2F9F14(v57, v158, v59, v61, 0, 0, v62, v64);
  *(v55 + 120) = v163;
  *(v55 + 128) = 0x7365707954;
  *(v55 + 136) = 0xE500000000000000;
  *(v55 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v55 + 144) = &unk_1F4A0CA78;
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 400) = v67;
  *(inited + 424) = v68;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v159 = swift_allocObject();
  *(v159 + 1) = xmmword_1CA981360;
  v158 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  v153 = xmmword_1CA981350;
  *(v69 + 16) = xmmword_1CA981350;
  v70 = @"Parameters";
  *(v69 + 32) = sub_1CA94C368();
  *(v69 + 40) = 1;
  *(v69 + 64) = MEMORY[0x1E69E6370];
  *(v69 + 72) = @"Class";
  v151 = 0xD000000000000013;
  v152 = 0x80000001CA99B730;
  *(v69 + 80) = 0xD000000000000013;
  *(v69 + 88) = 0x80000001CA99B730;
  *(v69 + 104) = v66;
  *(v69 + 112) = @"Key";
  v155 = 0xD00000000000001ELL;
  v156 = 0x80000001CA9E1030;
  *(v69 + 120) = 0xD00000000000001ELL;
  *(v69 + 128) = 0x80000001CA9E1030;
  *(v69 + 144) = v66;
  *(v69 + 152) = @"Label";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v149 = v71;
  v148 = v72;
  v150 = v73;
  v74 = sub_1CA94C438("First Location (WFGetHalfwayPointFirstLocation)", 47);
  v146 = v75;
  v76 = sub_1CA94C438("First Location", 14);
  v78 = v77;
  v147 = &v145;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v145 - v167;
  sub_1CA948D98();
  v80 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v145 - v165;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v74, v146, v76, v78, 0, 0, v79, v81);
  *(v69 + 184) = v163;
  *(v69 + 160) = v83;
  _s3__C3KeyVMa_0(0);
  v147 = v84;
  v146 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v85 = sub_1CA94C1E8();
  v86 = sub_1CA2F864C(v85);
  v159[4] = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = v153;
  *(v87 + 32) = sub_1CA94C368();
  *(v87 + 40) = 1;
  v88 = v149;
  *(v87 + 64) = MEMORY[0x1E69E6370];
  *(v87 + 72) = v88;
  v89 = v152;
  *(v87 + 80) = v151;
  *(v87 + 88) = v89;
  v90 = MEMORY[0x1E69E6158];
  v91 = v148;
  *(v87 + 104) = MEMORY[0x1E69E6158];
  *(v87 + 112) = v91;
  v154 = 0x80000001CA9E1090;
  *&v153 = 0xD00000000000001FLL;
  *(v87 + 120) = 0xD00000000000001FLL;
  *(v87 + 128) = 0x80000001CA9E1090;
  v92 = v150;
  *(v87 + 144) = v90;
  *(v87 + 152) = v92;
  v93 = sub_1CA94C438("Second Location (WFGetHalfwayPointSecondLocation)", 49);
  v151 = v94;
  v95 = sub_1CA94C438("Second Location", 15);
  v97 = v96;
  v152 = &v145;
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v145 - v167;
  sub_1CA948D98();
  v99 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v145 - v165;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v93, v151, v95, v97, 0, 0, v98, v100);
  *(v87 + 184) = v163;
  *(v87 + 160) = v102;
  v103 = sub_1CA94C1E8();
  v104 = sub_1CA2F864C(v103);
  v105 = v159;
  v159[5] = v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v105;
  *(inited + 464) = v106;
  *(inited + 472) = @"ParameterSummary";
  v107 = @"ParameterSummary";
  v108 = sub_1CA94C438("Get halfway point between ${WFGetHalfwayPointFirstLocation} and ${WFGetHalfwayPointSecondLocation} (Parameter Summary)", 118);
  v110 = v109;
  v111 = sub_1CA94C438("Get halfway point between ${WFGetHalfwayPointFirstLocation} and ${WFGetHalfwayPointSecondLocation}", 98);
  v113 = v112;
  v163 = &v145;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v145 - v167;
  sub_1CA948D98();
  v115 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v145 - v165;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v108, v110, v111, v113, 0, 0, v114, v116);
  v119 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v120 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v119;
  *(inited + 504) = v120;
  *(inited + 512) = @"RequiredResources";
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v167 = swift_allocObject();
  v168 = xmmword_1CA97EDF0;
  *(v167 + 16) = xmmword_1CA97EDF0;
  v121 = swift_initStackObject();
  *(v121 + 16) = v168;
  v165 = 0xD000000000000011;
  v166 = 0x80000001CA99B240;
  *(v121 + 32) = 0xD000000000000011;
  *(v121 + 40) = 0x80000001CA99B240;
  v122 = swift_allocObject();
  *(v122 + 16) = v162;
  v123 = swift_allocObject();
  *(v123 + 16) = v161;
  strcpy((v123 + 32), "WFParameterKey");
  *(v123 + 47) = -18;
  v124 = v154;
  *(v123 + 48) = v153;
  *(v123 + 56) = v124;
  v163 = 0x80000001CA993570;
  v125 = MEMORY[0x1E69E6158];
  *(v123 + 72) = MEMORY[0x1E69E6158];
  *(v123 + 80) = 0xD000000000000010;
  *(v123 + 88) = 0x80000001CA993570;
  v126 = @"RequiredResources";
  v127 = v125;
  v128 = sub_1CA94C1E8();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v123 + 96) = v128;
  *(v123 + 120) = v129;
  *(v123 + 128) = 0x72756F7365524657;
  v158 = 0x80000001CA993590;
  v159 = v129;
  *(v123 + 168) = v127;
  v154 = 0xD00000000000001BLL;
  *(v123 + 136) = 0xEF7373616C436563;
  *(v123 + 144) = 0xD00000000000001BLL;
  *(v123 + 152) = 0x80000001CA993590;
  *(v122 + 32) = sub_1CA94C1E8();
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v121 + 48) = v122;
  *(v121 + 72) = v130;
  *(v121 + 80) = 0x72756F7365524657;
  *&v153 = 0x80000001CA994040;
  v131 = MEMORY[0x1E69E6158];
  *(v121 + 120) = MEMORY[0x1E69E6158];
  v152 = 0xD000000000000018;
  *(v121 + 88) = 0xEF7373616C436563;
  *(v121 + 96) = 0xD000000000000018;
  *(v121 + 104) = 0x80000001CA994040;
  v132 = v131;
  *(v167 + 32) = sub_1CA94C1E8();
  v133 = swift_allocObject();
  *(v133 + 16) = v168;
  v134 = v166;
  *(v133 + 32) = v165;
  *(v133 + 40) = v134;
  v135 = swift_allocObject();
  *(v135 + 16) = v162;
  v136 = swift_allocObject();
  *(v136 + 16) = v161;
  strcpy((v136 + 32), "WFParameterKey");
  *(v136 + 47) = -18;
  v137 = v156;
  *(v136 + 48) = v155;
  *(v136 + 56) = v137;
  *(v136 + 72) = v132;
  *(v136 + 80) = 0xD000000000000010;
  *(v136 + 88) = v163;
  *(v136 + 96) = sub_1CA94C1E8();
  *(v136 + 120) = v159;
  *(v136 + 128) = 0x72756F7365524657;
  *(v136 + 168) = v132;
  v138 = v154;
  *(v136 + 136) = 0xEF7373616C436563;
  *(v136 + 144) = v138;
  *(v136 + 152) = v158;
  *(v135 + 32) = sub_1CA94C1E8();
  *(v133 + 48) = v135;
  *(v133 + 72) = v130;
  *(v133 + 80) = 0x72756F7365524657;
  *(v133 + 120) = v132;
  v140 = v152;
  v139 = v153;
  *(v133 + 88) = 0xEF7373616C436563;
  *(v133 + 96) = v140;
  *(v133 + 104) = v139;
  v141 = sub_1CA94C1E8();
  v142 = v167;
  *(v167 + 40) = v141;
  *(inited + 544) = v130;
  *(inited + 520) = v142;
  *(inited + 552) = @"ResidentCompatible";
  *(inited + 584) = MEMORY[0x1E69E6370];
  *(inited + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v143 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6A3220(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1CA94AD98();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA6A32E0, 0, 0);
}

uint64_t sub_1CA6A32E0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69DAFD0])
  {
    v5 = v0[5];
    (*(v0[4] + 96))(v5, v0[3]);
    if (*v5 != 22)
    {
      v6 = sub_1CA94CEA8();
      if (v6)
      {
        v7 = v6;
        v8 = [objc_opt_self() linkValueTypeFromWorkflowUnitType_];

LABEL_25:

        v11 = v0[1];

        return v11(v8);
      }
    }

    v10 = [objc_opt_self() unsupportedMeasurementValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB048])
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69AC8D8]) init];
LABEL_24:
    v8 = v9;
    goto LABEL_25;
  }

  if (v4 == *MEMORY[0x1E69DB030])
  {
    v10 = [objc_opt_self() BOOLValueType];
LABEL_23:
    v9 = v10;
    goto LABEL_24;
  }

  if (v4 == *MEMORY[0x1E69DB020])
  {
    v10 = [objc_opt_self() intValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB050] || v4 == *MEMORY[0x1E69DB068])
  {
    v10 = [objc_opt_self() doubleValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB060])
  {
    v10 = [objc_opt_self() stringValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB038])
  {
    v10 = [objc_opt_self() dateValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFF0])
  {
    v10 = [objc_opt_self() dateComponentsValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB028])
  {
    v10 = [objc_opt_self() URLValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFC0])
  {
    sub_1CA2FFC58();
    swift_allocError();
    v14 = 1;
LABEL_30:
    *v13 = v14;
    swift_willThrow();
    goto LABEL_31;
  }

  if (v4 == *MEMORY[0x1E69DB008])
  {
    v10 = [objc_opt_self() attributedStringValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFE8])
  {
    v10 = [objc_opt_self() currencyAmountValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFE0])
  {
    v10 = [objc_opt_self() paymentMethodValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB080])
  {
    v10 = [objc_opt_self() placemarkValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB058])
  {
    v10 = [objc_opt_self() personValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB040])
  {
LABEL_45:
    v10 = [objc_opt_self() fileValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB018])
  {
    v10 = [objc_opt_self() applicationValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB000])
  {
    goto LABEL_49;
  }

  if (v4 == *MEMORY[0x1E69DAFF8])
  {
    v10 = [objc_opt_self() recurrenceRuleType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFC8])
  {
    goto LABEL_45;
  }

  if (v4 == *MEMORY[0x1E69DB078])
  {
LABEL_49:
    sub_1CA2FFC58();
    swift_allocError();
    v14 = 2;
    goto LABEL_30;
  }

  if (v4 == *MEMORY[0x1E69DAFD8])
  {
    sub_1CA6A3970();
    v9 = sub_1CA94CDA8();
    goto LABEL_24;
  }

  if (v4 == *MEMORY[0x1E69DB070])
  {
    sub_1CA6A3970();
    v9 = sub_1CA94CDC8();
    goto LABEL_24;
  }

  if (v4 == *MEMORY[0x1E69DB010])
  {
    sub_1CA6A3970();
    v9 = sub_1CA94CDB8();
    goto LABEL_24;
  }

  v17 = v0[4];
  v16 = v0[5];
  v18 = v0[3];
  sub_1CA2FFC58();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();
  (*(v17 + 8))(v16, v18);
LABEL_31:

  v15 = v0[1];

  return v15();
}

unint64_t sub_1CA6A3970()
{
  result = qword_1EC444698;
  if (!qword_1EC444698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC444698);
  }

  return result;
}

uint64_t sub_1CA6A39B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1CA437724;

  return sub_1CA6A3220(a2);
}

id sub_1CA6A3A80()
{
  v110 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9E1200;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("banish|demolish|remove|peace|byebye", 35);
  v6 = v5;
  v7 = sub_1CA94C438("banish|demolish|remove|peace|byebye", 35);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v114 = v11;
  v116 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v102 - v116;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v113 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v112 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v115 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v102 - v115;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v111 = v19;
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
  v109 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"DeletesInput";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438("Deletes the notes passed as input from Evernote.", 48);
  v107 = v28;
  v29 = sub_1CA94C438("Deletes the notes passed as input from Evernote.", 48);
  v31 = v30;
  v108 = &v102;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v102 - v116;
  sub_1CA948D98();
  v33 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v102 - v115;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v107, v29, v31, 0, 0, v32, v34);
  *(v23 + 64) = v111;
  *(v23 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v109;
  *(inited + 240) = sub_1CA6B3784(v37);
  *(inited + 264) = v38;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v106 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  *(v39 + 48) = 1;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 72) = MEMORY[0x1E69E6370];
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = MEMORY[0x1E69E6158];
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  *(v39 + 184) = 0xE500000000000000;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v109;
  *(v39 + 192) = &unk_1F4A0CB98;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v42;
  *(inited + 304) = v43;
  *(inited + 312) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438("Delete Notes (Action Name)", 26);
  v47 = v46;
  v48 = sub_1CA94C438("Delete Notes", 12);
  v50 = v49;
  v108 = &v102;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v102 - v116;
  sub_1CA948D98();
  v52 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v102 - v115;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 344) = v111;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v108 = swift_allocObject();
  *(v108 + 1) = xmmword_1CA9813B0;
  v107 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  *(v55 + 16) = v106;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000019;
  *(v55 + 48) = 0x80000001CA99B030;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 64) = MEMORY[0x1E69E6158];
  *(v55 + 72) = @"Key";
  *(v55 + 80) = 0x7475706E494657;
  *(v55 + 88) = 0xE700000000000000;
  *(v55 + 104) = v56;
  *(v55 + 112) = @"Label";
  v57 = @"Parameters";
  v58 = @"Class";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438("Notes (WFInput)", 15);
  v104 = v62;
  v105 = v61;
  v63 = sub_1CA94C438("Notes", 5);
  v103 = v64;
  *&v106 = &v102;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v102 - v116;
  sub_1CA948D98();
  v66 = v113;
  v67 = [v113 bundleURL];
  v102 = &v102;
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v102 - v115;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 120) = sub_1CA2F9F14(v105, v104, v63, v103, 0, 0, v65, v68);
  v70 = v111;
  *(v55 + 144) = v111;
  *(v55 + 152) = @"Placeholder";
  v71 = @"Placeholder";
  v72 = sub_1CA94C438("Notes (WFInput)", 15);
  v104 = v73;
  v105 = v72;
  v103 = sub_1CA94C438("Notes", 5);
  v75 = v74;
  *&v106 = &v102;
  MEMORY[0x1EEE9AC00](v103);
  v76 = &v102 - v116;
  sub_1CA948D98();
  v77 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v102 - v115;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v105, v104, v103, v75, 0, 0, v76, v78);
  *(v55 + 184) = v70;
  *(v55 + 160) = v80;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v81 = sub_1CA94C1E8();
  v82 = sub_1CA2F864C(v81);
  v83 = v108;
  v108[4] = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v83;
  *(inited + 384) = v84;
  *(inited + 392) = @"ParameterSummary";
  v85 = @"ParameterSummary";
  v86 = sub_1CA94C438("Delete ${WFInput} (Parameter Summary)", 37);
  v88 = v87;
  v89 = sub_1CA94C438("Delete ${WFInput}", 17);
  v91 = v90;
  v111 = &v102;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v102 - v116;
  sub_1CA948D98();
  v93 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v102 - v115;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v86, v88, v89, v91, 0, 0, v92, v94);
  v97 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v98 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v97;
  *(inited + 424) = v98;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v109;
  *(inited + 440) = &unk_1F4A0CBC8;
  v99 = @"RequiredResources";
  v100 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v100;
  *(inited + 480) = 0xD000000000000015;
  *(inited + 488) = 0x80000001CA9E12D0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6A4820()
{
  v1 = *(v0 + OBJC_IVAR___WFUserVisibleString_content);
  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA6A48CC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___WFUserVisibleString_content);
  *v3 = a1;
  v3[1] = a2;
}

BOOL sub_1CA6A491C()
{
  v1 = [v0 content];
  v2 = sub_1CA94C3A8();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 == 0;
}

id sub_1CA6A49F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (v5 + OBJC_IVAR___WFUserVisibleString_content);
  *v6 = a1;
  v6[1] = a2;
  v7 = (v5 + OBJC_IVAR___WFUserVisibleString_comment);
  *v7 = a4;
  v7[1] = a5;
  *(v5 + OBJC_IVAR___WFUserVisibleString_kind) = a3;
  v9.super_class = WFUserVisibleString;
  return objc_msgSendSuper2(&v9, sel_init);
}

BOOL WFUserVisibleString.isEqual(_:)(uint64_t a1)
{
  sub_1CA33C7B4(a1, v19);
  if (v20)
  {
    type metadata accessor for WFUserVisibleString();
    if (swift_dynamicCast())
    {
      v2 = [v1 content];
      v3 = sub_1CA94C3A8();
      v5 = v4;

      v6 = [v18 content];
      v7 = sub_1CA94C3A8();
      v9 = v8;

      if (v3 == v7 && v5 == v9)
      {
      }

      else
      {
        v11 = sub_1CA94D7F8();

        if ((v11 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v12 = *&v1[OBJC_IVAR___WFUserVisibleString_comment + 8];
      v13 = *&v18[OBJC_IVAR___WFUserVisibleString_comment + 8];
      if (v12)
      {
        if (!v13)
        {
          goto LABEL_20;
        }

        v14 = *&v1[OBJC_IVAR___WFUserVisibleString_comment] == *&v18[OBJC_IVAR___WFUserVisibleString_comment] && v12 == v13;
        if (!v14 && (sub_1CA94D7F8() & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (v13)
      {
LABEL_20:

        return 0;
      }

      v15 = [v1 kind];
      v16 = [v18 kind];

      return v15 == v16;
    }
  }

  else
  {
    sub_1CA2C0A74(v19);
  }

  return 0;
}

unint64_t type metadata accessor for WFUserVisibleString()
{
  result = qword_1EC447FD0;
  if (!qword_1EC447FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC447FD0);
  }

  return result;
}

uint64_t WFUserVisibleString.hash.getter()
{
  v1 = [v0 content];
  v2 = sub_1CA94C3A8();
  v4 = v3;

  v5 = MEMORY[0x1CCAA13A0](v2, v4);

  result = [v0 kind];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
    return v5 ^ sub_1CA94D0B8() ^ v7;
  }

  return result;
}

uint64_t sub_1CA6A4E4C()
{
  v1 = [v0 kind];
  if (v1)
  {
    if (v1 == 2)
    {
      v2 = 0x80000001CA9E13F0;
      v3 = 0xD000000000000020;
    }

    else
    {
      if (v1 != 1)
      {
        type metadata accessor for WFUserStringKind(0);
        result = sub_1CA94D838();
        __break(1u);
        return result;
      }

      v3 = 0xD000000000000019;
      v2 = 0x80000001CA9E1420;
    }
  }

  else
  {
    v2 = 0xEA00000000007478;
    v3 = 0x65742065736F7250;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CA981310;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  v5 = &v0[OBJC_IVAR___WFUserVisibleString_comment];
  v6 = *&v0[OBJC_IVAR___WFUserVisibleString_comment + 8];
  if (v6)
  {
    v7 = *v5;
    sub_1CA94C218();
    sub_1CA26DADC();
    v8[2] = 2;
    v8[6] = v7;
    v8[7] = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v9 = sub_1CA94C308();

  return v9;
}

id sub_1CA6A4FFC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1CA94C368();

  return v5;
}

uint64_t WFUserVisibleString.debugDescription.getter()
{
  v1 = v0;
  sub_1CA94D408();
  MEMORY[0x1CCAA1300](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_1CA94DA18();
  MEMORY[0x1CCAA1300](v2);

  v3 = MEMORY[0x1CCAA1300](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_0_71(v3, v4, MEMORY[0x1E69E6878], v5);
  MEMORY[0x1CCAA1300](0x6E65746E6F63202CLL, 0xEB00000000203A74);
  v6 = [v0 content];
  v7 = sub_1CA94C3A8();
  v9 = v8;

  MEMORY[0x1CCAA1300](v7, v9);

  MEMORY[0x1CCAA1300](0x203A646E696B202CLL, 0xE800000000000000);
  [v1 kind];
  type metadata accessor for WFUserStringKind(0);
  OUTLINED_FUNCTION_0_71(v10, v11, v10, v12);
  MEMORY[0x1CCAA1300](62, 0xE100000000000000);
  return 0;
}

id WFUserVisibleString.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1CA6A52AC(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*(a2 + 16), *(result + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_1CA2E6984();
    v4 = v2;
    sub_1CA94C218();
    sub_1CA2B80DC();
    v3 = sub_1CA94C218();
    sub_1CA2B80B0(v3);
    return v4;
  }

  return result;
}

unint64_t sub_1CA6A5334(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_1CA94C218();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1CA6A53A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    _s17ControlFlowBranchVMa(0);
    return sub_1CA94C218();
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_1CA6A5448(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438E8, &qword_1CA9819D8);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v186 = v169 - v11;
  v12 = _s17ControlFlowBranchVMa(0);
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_45_0();
  v198 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23);
  v199 = v169 - v25;
  if (!*(a3 + 16))
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v189 = *(a3 + 16);
  v178 = v24;
  v170 = *(v14 + 80);
  v200 = (v170 + 32) & ~v170;
  v188 = (a3 + v200);
  v175 = *(a3 + v200);
  v26 = [v175 parameterStateForKey_];
  v27 = MEMORY[0x1E69E7CC0];
  v173 = a2;
  v172 = a1;
  v171 = a4;
  if (v26)
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = [v28 values];
      sub_1CA6A6AEC();
      v190 = sub_1CA94C658();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v190 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v190 = MEMORY[0x1E69E7CC0];
  }

  v30 = sub_1CA948D28();
  v174 = sub_1CA277284();
  v31 = sub_1CA94C1E8();
  v205 = v27;
  v206 = v31;
  v32 = sub_1CA6A53A0(1uLL, v189, a3);
  v184 = v35;
  v195 = v12;
  v201 = v14;
  *&v202 = v30;
  v36 = v199;
  if (v33 == (v34 >> 1))
  {
    swift_unknownObjectRelease();
    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v169[1] = v32;
  v38 = (v34 >> 1);
  v37 = MEMORY[0x1E69E7CC0];
  v27 = &qword_1EC443BC8;
  v182 = v30 - 8;
  v181 = (v34 >> 1);
  do
  {
    if (v33 >= v38)
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
      goto LABEL_111;
    }

    v194 = v31;
    v196 = v37;
    v193 = v14[9];
    v192 = v33;
    v39 = sub_1CA36D71C(v184 + v193 * v33, v36);
    v40 = v202;
    v191 = *(v202 - 8);
    v41 = (*(v191 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v39);
    v42 = *(v12 + 24);
    v12 = &qword_1CA9834A0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, &qword_1CA9834A0);
    v44 = OUTLINED_FUNCTION_18_0(v43);
    MEMORY[0x1EEE9AC00](v44);
    v45 = v27;
    v47 = v169 - v46;
    v48 = v199 + v42;
    v36 = v199;
    sub_1CA339294(v48, v169 - v46);
    if (__swift_getEnumTagSinglePayload(v47, 1, v40) == 1)
    {
      sub_1CA532E30(v47, v45, &qword_1CA9834A0);
      sub_1CA36D71C(v36, v185);
      v37 = v196;
      v27 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E6984();
        v37 = v75;
      }

      v31 = v194;
      v38 = v181;
      v50 = *(v37 + 16);
      v49 = *(v37 + 24);
      v14 = v201;
      if (v50 >= v49 >> 1)
      {
        OUTLINED_FUNCTION_18(v49);
        sub_1CA2E6984();
        v37 = v76;
      }

      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_0_72();
      sub_1CA285D74(v36, v51);
      *(v37 + 16) = v50 + 1;
      sub_1CA2BBF40(v185, v37 + v200 + v50 * v193);
      v205 = v37;
    }

    else
    {
      v180 = v169;
      v52 = v191;
      v53 = (*(v191 + 32))(v169 - v41, v47, v40);
      v179 = v169;
      MEMORY[0x1EEE9AC00](v53);
      v54 = v169 - v41;
      v55 = v52[2];
      v194 = (v169 - v41);
      v55(v169 - v41, v169 - v41, v40);
      sub_1CA36D71C(v36, v183);
      swift_isUniquelyReferenced_nonNull_native();
      v56 = v206;
      v204 = v206;
      sub_1CA320F94();
      if (__OFADD__(v56[2], (v58 & 1) == 0))
      {
        goto LABEL_104;
      }

      v12 = v57;
      v59 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FD8, &qword_1CA991DE8);
      if (sub_1CA94D588())
      {
        sub_1CA320F94();
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_113;
        }

        v12 = v60;
      }

      v31 = v204;
      if (v59)
      {
        v62 = OUTLINED_FUNCTION_4_56();
        sub_1CA6A6A88(v62, v63);
        v64 = v52[1];
        v65 = v202;
        v64(v54, v202);
        v64(v194, v65);
        OUTLINED_FUNCTION_0_72();
        v36 = v199;
        sub_1CA285D74(v199, v66);
      }

      else
      {
        v204[(v12 >> 6) + 8] |= 1 << v12;
        v67 = v202;
        v55((v31[6] + v52[9] * v12), v54, v202);
        v68 = OUTLINED_FUNCTION_4_56();
        sub_1CA2BBF40(v68, v69);
        v70 = v52[1];
        v70(v54, v67);
        v70(v194, v67);
        OUTLINED_FUNCTION_0_72();
        v36 = v199;
        sub_1CA285D74(v199, v71);
        v72 = v31[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          goto LABEL_107;
        }

        v31[2] = v74;
      }

      v206 = v31;
      OUTLINED_FUNCTION_91_4();
      v37 = v196;
      v14 = v201;
      v38 = v181;
      v27 = &qword_1EC443BC8;
    }

    v33 = (v192 + 1);
  }

  while (v38 != (v192 + 1));
  swift_unknownObjectRelease();
LABEL_28:
  v77 = sub_1CA25B410(v190);
  v78 = MEMORY[0x1E69E7CC0];
  if (!v77)
  {
LABEL_64:

    v122 = sub_1CA94C218();
    v123 = sub_1CA6A52AC(v122, v37);

    v204 = MEMORY[0x1E69E7CC0];
    v124 = *(v123 + 16);
    if (v124)
    {
      v125 = 0;
      v193 = v123;
      v126 = v123 + v200;
      v127 = v14[9];
      *&v202 = v200 - 2 * v127;
      v201 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_6_50();
      *(v128 - 256) = v31;
      v196 = v37;
      v198 = v126;
      v199 = v124;
      while (2)
      {
        v129 = v126 + v127 * v125++;
        sub_1CA36D71C(v129, v27);
        v130 = 0;
        v131 = v188;
        v132 = v202;
        while (1)
        {
          if (v189 == v130)
          {
            goto LABEL_91;
          }

          if (*v131 == *v27)
          {
            break;
          }

          ++v130;
          v132 += v127;
          v131 = (v131 + v127);
        }

        v133 = v130 - 2;
        v134 = *(v78 + 16);
        if (v130 >= 2 && v133 < v134)
        {
          v27 = *(v27 + *(v12 + 28));
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA42B304();
            v78 = v156;
          }

          if (v133 >= *(v78 + 16))
          {
            goto LABEL_105;
          }

          v143 = *(v12 + 28);
          v144 = v78 + v132;
          v145 = *(v78 + v132 + v143);
          v146 = *(v145 + 16);
          v147 = v27[2];
          v12 = v146 + v147;
          if (__OFADD__(v146, v147))
          {
            goto LABEL_106;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v144 + v143) = v145;
          if (!isUniquelyReferenced_nonNull_native || v12 > *(v145 + 24) >> 1)
          {
            sub_1CA2E6A4C();
            *(v144 + v143) = v149;
          }

          goto LABEL_90;
        }

        if (v134)
        {
          v27 = *(v27 + *(v12 + 28));
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA42B304();
            v78 = v157;
          }

          if (v134 > *(v78 + 16))
          {
            goto LABEL_108;
          }

          v136 = v78 + v200 + (v134 - 1) * v127;
          v137 = *(v12 + 28);
          v138 = *(v136 + v137);
          v139 = v27[2];
          v140 = *(v138 + 16);
          v12 = v140 + v139;
          if (__OFADD__(v140, v139))
          {
            goto LABEL_109;
          }

          v141 = swift_isUniquelyReferenced_nonNull_native();
          *(v136 + v137) = v138;
          if (!v141 || v12 > *(v138 + 24) >> 1)
          {
            sub_1CA2E6A4C();
            *(v136 + v137) = v142;
          }

LABEL_90:
          sub_1CA6B0018();
          OUTLINED_FUNCTION_91_4();
          OUTLINED_FUNCTION_6_50();
          v126 = v198;
          v124 = v199;
          goto LABEL_91;
        }

        v27 = *(v27 + *(v12 + 28));
        v151 = v201;
        v152 = v201[2];
        v153 = v27[2];
        if (__OFADD__(v152, v153))
        {
          goto LABEL_110;
        }

        sub_1CA94C218();
        v154 = swift_isUniquelyReferenced_nonNull_native();
        v204 = v151;
        v197 = v153;
        if (!v154 || v152 + v153 > v151[3] >> 1)
        {
          sub_1CA2E6A4C();
          v151 = v155;
          v204 = v155;
        }

        v126 = v198;
        sub_1CA6B0018();
        v201 = v151;
        v204 = v151;
        OUTLINED_FUNCTION_6_50();
        v124 = v199;
LABEL_91:
        OUTLINED_FUNCTION_0_72();
        sub_1CA285D74(v27, v150);
        if (v125 != v124)
        {
          continue;
        }

        break;
      }

      v158 = v201;
    }

    else
    {

      v158 = MEMORY[0x1E69E7CC0];
    }

    v159 = v200;
    v160 = swift_allocObject();
    v202 = xmmword_1CA981310;
    *(v160 + 16) = xmmword_1CA981310;
    sub_1CA36D71C(v188, v160 + v159);
    v203 = v160;
    v161 = v171;
    v162 = v173;
    sub_1CA94C218();
    sub_1CA2B80B0(v78);
    v163 = v203;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    inited = swift_initStackObject();
    *(inited + 16) = v202;
    *(inited + 32) = v172;
    *(inited + 40) = v162;
    *(inited + 48) = v163;
    *(inited + 56) = v161;
    *(inited + 64) = 1;
    v165 = v158[2];
    sub_1CA94C218();
    v166 = swift_isUniquelyReferenced_nonNull_native();
    v204 = v158;
    if (!v166 || v165 >= v158[3] >> 1)
    {
      sub_1CA2E6A4C();
      v158 = v167;
      v204 = v167;
    }

    sub_1CA6B0018();

    return v158;
  }

  if (v77 >= 1)
  {
    v27 = 0;
    v193 = v190 & 0xC000000000000001;
    v192 = (v202 - 8);
    v194 = v77;
    while (1)
    {
      v79 = v193 ? MEMORY[0x1CCAA22D0](v27, v190) : *(v190 + 8 * v27 + 32);
      v80 = v79;
      v81 = [v79 identity];
      v196 = v169;
      v82 = *v192;
      MEMORY[0x1EEE9AC00](v81);
      v84 = v169 - v83;
      sub_1CA948CF8();

      swift_beginAccess();
      sub_1CA320F94();
      v199 = v78;
      if (v86)
      {
        v87 = v85;
        swift_isUniquelyReferenced_nonNull_native();
        v203 = v206;
        v12 = v206[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FD8, &qword_1CA991DE8);
        OUTLINED_FUNCTION_91_4();
        sub_1CA94D588();
        v31 = v203;
        (*(v82 + 8))(v203[6] + *(v82 + 72) * v87, v202);
        v88 = v187;
        sub_1CA2BBF40(v31[7] + v201[9] * v87, v187);
        sub_1CA94D5A8();
        v89 = 0;
        v206 = v31;
      }

      else
      {
        v89 = 1;
        v88 = v187;
      }

      v90 = v186;
      __swift_storeEnumTagSinglePayload(v88, v89, 1, v12);
      swift_endAccess();
      if (__swift_getEnumTagSinglePayload(v88, 1, v12) != 1)
      {
        break;
      }

      sub_1CA532E30(v88, &qword_1EC4438E8, &qword_1CA9819D8);
      v91 = *(v37 + 16);
      if (v91)
      {
        swift_beginAccess();
        sub_1CA36D71C(v37 + v200, v90);
        if (!swift_isUniquelyReferenced_nonNull_native() || (v91 - 1) > *(v37 + 24) >> 1)
        {
          sub_1CA2E6984();
          v37 = v92;
        }

        v93 = v37 + v200;
        OUTLINED_FUNCTION_0_72();
        sub_1CA285D74(v93, v94);
        v95 = v201[9];
        if (v95 > 0 || v93 >= v93 + v95 + (*(v37 + 16) - 1) * v95)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v95)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v97 = v31;
        --*(v37 + 16);
        v205 = v37;
        swift_endAccess();
        goto LABEL_53;
      }

      v97 = v31;
      v100 = 1;
LABEL_54:
      __swift_storeEnumTagSinglePayload(v90, v100, 1, v12);
      v101 = v202;
      (*(v82 + 8))(v84, v202);
      if (__swift_getEnumTagSinglePayload(v90, 1, v12) == 1)
      {
        sub_1CA532E30(v90, &qword_1EC4438E8, &qword_1CA9819D8);
        v102 = [v175 createAccompanyingActionWithMode_];
        v103 = v197;
        __swift_storeEnumTagSinglePayload(v197 + *(v12 + 24), 1, 1, v101);
        *v103 = v102;
        *(v103 + 8) = 0;
        *(v103 + *(v12 + 28)) = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v104 = v176;
        sub_1CA2BBF40(v90, v176);
        v103 = v197;
        sub_1CA2BBF40(v104, v197);
      }

      v14 = v201;
      v31 = v97;
      v105 = *v103;
      objc_opt_self();
      v106 = swift_dynamicCastObjCClass();
      v78 = v199;
      if (v106)
      {
        v107 = v106;
        v108 = v105;
        v109 = v31;
        v110 = WFTitleForParameterValue(v80);
        [v107 setItemTitle_];

        v31 = v109;
      }

      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
      v112 = OUTLINED_FUNCTION_18_0(v111);
      MEMORY[0x1EEE9AC00](v112);
      v114 = v169 - v113;
      v115 = [v80 identity];
      sub_1CA948CF8();

      __swift_storeEnumTagSinglePayload(v114, 0, 1, v202);
      v116 = v197;
      sub_1CA6A6A18(v114, v197 + *(v12 + 24));
      sub_1CA36D71C(v116, v198);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E6984();
        v78 = v120;
      }

      v118 = *(v78 + 16);
      v117 = *(v78 + 24);
      if (v118 >= v117 >> 1)
      {
        OUTLINED_FUNCTION_18(v117);
        sub_1CA2E6984();
        v78 = v121;
      }

      v27 = (v27 + 1);

      *(v78 + 16) = v118 + 1;
      sub_1CA2BBF40(v198, v78 + v200 + v14[9] * v118);
      OUTLINED_FUNCTION_0_72();
      sub_1CA285D74(v116, v119);
      if (v194 == v27)
      {
        goto LABEL_64;
      }
    }

    v97 = v31;
    v98 = v88;
    v99 = v177;
    sub_1CA2BBF40(v98, v177);
    sub_1CA2BBF40(v99, v90);
LABEL_53:
    v100 = 0;
    goto LABEL_54;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA6A6714(uint64_t a1)
{
  v2 = v1;
  v4 = _s6LayoutVMa(0);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  sub_1CA285AF8(&v31 - v10);
  v12 = *(v11 + 1);
  sub_1CA94C218();
  OUTLINED_FUNCTION_2_64();
  sub_1CA285D74(v11, v13);
  v14 = sub_1CA311D00(a1, v12);
  LOBYTE(a1) = v15;

  if (a1)
  {
    return result;
  }

  v17 = sub_1CA9492B8();
  v31 = &v31;
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v31 - v23;
  sub_1CA285AF8(v8);
  v25 = *(v8 + 24);
  sub_1CA94C218();
  OUTLINED_FUNCTION_2_64();
  v27 = sub_1CA285D74(v8, v26);
  result = MEMORY[0x1EEE9AC00](v27);
  v28 = &v31 - v23;
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v14 >= *(v25 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  (*(v19 + 16))(&v31 - v23, v25 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v14, v17);

  sub_1CA949298();
  v29 = *(v19 + 8);
  v29(v28, v17);
  v32 = *(v2 + OBJC_IVAR___WFWorkflowActionTree_root);
  sub_1CA94C218();
  sub_1CA6A78A8();
  if (v36 == 1)
  {
    v30 = v34;
    if (v35)
    {
    }

    else
    {
      sub_1CA6A5448(v33[0], v33[1], v33[2], v34);
      sub_1CA6A81E8();

      sub_1CA6A81A0(v32);
    }
  }

  else if (v36 != 255)
  {
    sub_1CA532E30(v33, &unk_1EC448130, &unk_1CA992000);
  }

  return (v29)(v24, v17);
}

uint64_t sub_1CA6A6A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA6A6A88(uint64_t a1, uint64_t a2)
{
  v4 = _s17ControlFlowBranchVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA6A6AEC()
{
  result = qword_1EC4448E8;
  if (!qword_1EC4448E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4448E8);
  }

  return result;
}

BOOL sub_1CA6A6B34()
{
  sub_1CA9492B8();
  sub_1CA286854(&unk_1EC4480F0, MEMORY[0x1EEE78BB0]);
  OUTLINED_FUNCTION_20_0();
  sub_1CA94C9F8();
  OUTLINED_FUNCTION_20_0();
  sub_1CA94CA58();
  return v2 == v1;
}

void sub_1CA6A6BB0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B234();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1CA26E4B4((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_1CA6A6C38()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1;
  v3 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B2EC();
    v3 = v12;
  }

  v4 = *(v3 + 16);
  if (v4 <= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = _s10ScopeStackV5EntryOMa(0);
    OUTLINED_FUNCTION_12(v5);
    v8 = *(v7 + 72);
    v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v8 * v2;
    v10 = OUTLINED_FUNCTION_187();
    sub_1CA289DE0(v10, v11);
    sub_1CA43F2D8(v9 + v8, v4 - 1 - v2, v9);
    *(v3 + 16) = v4 - 1;
    *v0 = v3;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6A6D28(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B31C();
    v5 = v12;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 - 1;
    v8 = v6 - 1 - a1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 32);
    v13 = *(v9 + 16);
    sub_1CA440438((v9 + 40), v8, v9);
    *(v5 + 16) = v7;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
  }
}

void sub_1CA6A6DD0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B334();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1CA440434((v3 + 8 * a1 + 40), v4 - 1 - a1, (v3 + 8 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_1CA6A6E4C()
{
  OUTLINED_FUNCTION_37_0();
  v38 = v1;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_40();
  _s17ControlFlowBranchVMa(v4);
  OUTLINED_FUNCTION_1_0();
  v39 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v40 = v8 - v7;
  v9 = sub_1CA9492C8();
  v10 = sub_1CA9492B8();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_66_7(&qword_1EC4480E8);
  sub_1CA949288();
  if (sub_1CA6A6B34())
  {
    goto LABEL_10;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9 >= *(v3 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v3 + 40 * v9;
  v18 = *(v15 + 32);
  v16 = v15 + 32;
  v17 = v18;
  if (*(v16 + 32) != 1)
  {
LABEL_10:
    v30 = OUTLINED_FUNCTION_130();
    v31(v30);
LABEL_12:
    OUTLINED_FUNCTION_36();
    return;
  }

  v34[0] = v17;
  v20 = *(v16 + 16);
  v19 = *(v16 + 24);
  v36 = *(v16 + 8);
  sub_1CA94C218();
  sub_1CA94C218();
  v35 = v19;
  v37 = sub_1CA9492C8();
  v34[1] = v34;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_108_6();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_36_15();
  sub_1CA6A9170(1);
  sub_1CA949288();
  if (v37 >= *(v20 + 16))
  {

    v32 = *(v12 + 8);
    v32(v0, v10);
    v33 = OUTLINED_FUNCTION_130();
    (v32)(v33);
    goto LABEL_12;
  }

  v23 = v35;
  v22 = v36;
  if ((v37 & 0x8000000000000000) == 0)
  {
    v24 = v40;
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_9_41();
    sub_1CA285A0C(v25, v24);
    if (!sub_1CA6A6B34())
    {
      v26 = v38;
      sub_1CA6A6E4C();
      sub_1CA363EF0(v34[0], v22, v20, v23, v37, v26);
    }

    v27 = *(v12 + 8);
    v27(v0, v10);
    v28 = OUTLINED_FUNCTION_130();
    (v27)(v28);
    OUTLINED_FUNCTION_2_65();
    sub_1CA285DC8(v24, v29);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1CA6A71A4(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = 0;
  v63 = a1 + 32;
  v53 = *(a1 + 16);
  while (1)
  {
    v4 = v1;
    v5 = v63 + 40 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    if ((*(v5 + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_58_9();
      sub_1CA36DA2C(v24, v25, v26, v27, v28);
      v29 = v7;
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_2();
      if (v30)
      {
        OUTLINED_FUNCTION_11_3();
      }

      OUTLINED_FUNCTION_116();
      sub_1CA94C6E8();
      OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_58_9();
      sub_1CA36D780(v31, v32, v33, v34, v35);
      v1 = v65;
      goto LABEL_35;
    }

    sub_1CA94C218();
    sub_1CA94C218();
    v10 = v8;
    sub_1CA6A86E0(v10, v11, v9, v10, v12, v13, v14, v15, v53, v54, v55, v56, v57, v58, v59, v8, v9, v62, v63, v64[0]);
    v17 = v16;
    v18 = v16 >> 62;
    v19 = v16 >> 62 ? sub_1CA94D328() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1 = v4;
    v20 = v4 >> 62;
    v62 = v6;
    result = v20 ? sub_1CA94D328() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = result + v19;
    if (__OFADD__(result, v19))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v59 = v7;
    if (result)
    {
      if (!v20)
      {
        v23 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v22 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_17:
      sub_1CA94D328();
      OUTLINED_FUNCTION_94_3();
      goto LABEL_18;
    }

    if (v20)
    {
      goto LABEL_17;
    }

LABEL_18:
    result = sub_1CA94D488();
    v1 = result;
    v23 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v36 = *(v23 + 16);
    v37 = (*(v23 + 24) >> 1) - v36;
    v38 = v23 + 8 * v36;
    v58 = v23;
    if (v18)
    {
      v40 = sub_1CA94D328();
      if (!v40)
      {
LABEL_33:

        result = v59;
        v47 = v60;
        v49 = v61;
        v48 = v62;
        if (v19 > 0)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      }

      v41 = v40;
      result = sub_1CA94D328();
      if (v37 < result)
      {
        goto LABEL_43;
      }

      if (v41 < 1)
      {
        goto LABEL_45;
      }

      v54 = result;
      v55 = v19;
      v56 = v1;
      v57 = v3;
      v42 = (v38 + 32);
      OUTLINED_FUNCTION_3_61();
      sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, &unk_1CA991E10);
        v43 = sub_1CA276BDC(v64, 0, v17);
        v45 = *v44;
        v43(v64, 0);
        *v42 = v45;
        OUTLINED_FUNCTION_113_5();
      }

      while (v41 != v46);
      v2 = v53;
      v39 = v54;
      v1 = v56;
      v19 = v55;
    }

    else
    {
      v39 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_33;
      }

      if (v37 < v39)
      {
        goto LABEL_44;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      swift_arrayInitWithCopy();
    }

    result = v59;
    v47 = v60;
    v49 = v61;
    v48 = v62;
    if (v39 < v19)
    {
      goto LABEL_41;
    }

    if (v39 > 0)
    {
      v50 = *(v58 + 16);
      v51 = __OFADD__(v50, v39);
      v52 = v50 + v39;
      if (v51)
      {
        goto LABEL_42;
      }

      *(v58 + 16) = v52;
    }

LABEL_34:
    sub_1CA36D780(result, v48, v49, v47, 1);
    v65 = v1;
LABEL_35:
    if (++v3 == v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1CA6A751C(uint64_t a1)
{
  if (sub_1CA9491A8())
  {
    return a1;
  }

  v2 = sub_1CA949148();
  if (v3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v2 >= a1)
  {
    v16 = sub_1CA949148();
    if ((v17 & 1) == 0)
    {
      return v16;
    }

    __break(1u);
  }

  else
  {
    v4 = sub_1CA949128();
    if (v5)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v4 > a1)
    {
      sub_1CA9491B8();
      OUTLINED_FUNCTION_52();
      MEMORY[0x1EEE9AC00](v6);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_134_0();
      sub_1CA9491D8();
      sub_1CA286854(&qword_1EC4481C8, MEMORY[0x1EEE78B00]);
      v7 = sub_1CA94C5A8();
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v8 + 1;
        v10 = (v7 + 48);
        while (v9 != 2)
        {
          if (!--v9)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v11 = *(v10 - 1);
          v12 = v11 - 1;
          if (__OFSUB__(v11, 1))
          {
            goto LABEL_26;
          }

          v14 = *v10;
          v10 += 2;
          v13 = v14;
          if (v12 < a1 && v13 > a1)
          {

            if (__OFSUB__(a1, v12))
            {
              goto LABEL_28;
            }

            if (!__OFSUB__(v13, a1))
            {
              if (a1 - v12 >= v13 - a1)
              {
                return v13;
              }

              else
              {
                return v12;
              }
            }

            goto LABEL_29;
          }
        }

        goto LABEL_33;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  v16 = sub_1CA949128();
  if ((v18 & 1) == 0)
  {
    return v16;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  OUTLINED_FUNCTION_72_7();
  OUTLINED_FUNCTION_71_7();
  result = OUTLINED_FUNCTION_98_6(v20, v21, v22, 56, v23, v24);
  __break(1u);
  return result;
}

void sub_1CA6A76C0()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = _s17ControlFlowBranchVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_91_7();
  v24 = *(v2 + 16);
  v5 = 0;
  if (v24)
  {
    v6 = 0;
    v23 = *(v4 + 28);
    v22 = v0;
    while (1)
    {
      OUTLINED_FUNCTION_9_41();
      sub_1CA285A0C(v7, v0);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v25 = v6 + 1;
      v26 = v5 + 1;
      v8 = *(v0 + v23);
      sub_1CA94C218();
      OUTLINED_FUNCTION_2_65();
      sub_1CA285DC8(v0, v9);
      v10 = 0;
      v11 = (v8 + 64);
      v12 = -*(v8 + 16);
      v13 = -1;
      while (v12 + v13 != -1)
      {
        if (++v13 >= *(v8 + 16))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if (*v11 == 1)
        {
          v15 = *(v11 - 2);
          v14 = *(v11 - 1);
          v17 = *(v11 - 4);
          v16 = *(v11 - 3);
          sub_1CA94C218();
          sub_1CA94C218();
          v18 = v14;
          sub_1CA6A76C0();
          v20 = v19;
          sub_1CA36D780(v17, v16, v15, v14, 1);
        }

        else
        {
          v20 = 1;
        }

        v11 += 40;
        v21 = __OFADD__(v10, v20);
        v10 += v20;
        if (v21)
        {
          goto LABEL_18;
        }
      }

      v5 = v26 + v10;
      if (__OFADD__(v26, v10))
      {
        goto LABEL_20;
      }

      v6 = v25;
      v0 = v22;
      if (v25 == v24)
      {
        goto LABEL_15;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_15:
    if (!__OFADD__(v5, 1))
    {
      OUTLINED_FUNCTION_36();
      return;
    }
  }

  __break(1u);
}

void sub_1CA6A78A8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  LODWORD(v106) = v2;
  v4 = v3;
  _s17ControlFlowBranchVMa(0);
  OUTLINED_FUNCTION_1_0();
  v102 = v5;
  v103 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v104 = v8 - v7;
  v107 = sub_1CA9492C8();
  v9 = sub_1CA9492B8();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v92 - v16;
  MEMORY[0x1EEE9AC00](v15);
  sub_1CA6A9170(1);
  OUTLINED_FUNCTION_66_7(&qword_1EC4480E8);
  sub_1CA949288();
  v18 = sub_1CA6A6B34();
  if (!v18)
  {
    v105 = v0;
    MEMORY[0x1EEE9AC00](v18);
    v19 = v92 - v16;
    sub_1CA949278();
    OUTLINED_FUNCTION_97_4();
    v20 = sub_1CA949268();
    v21 = v11 + 1;
    v101 = v11[1];
    v101(v19, v9);
    v1 = v105;
    if ((v20 & 1) == 0)
    {
      v100 = v9;
      if ((v107 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v107 < *(*v105 + 16))
      {
        v25 = *v105 + 40 * v107;
        v27 = *(v25 + 32);
        v26 = v25 + 32;
        v11 = v27;
        if (*(v26 + 32) != 1)
        {
          v101(v17, v100);
          v21 = 0;
          OUTLINED_FUNCTION_76_8();
          v24 = 0;
          LOBYTE(v13) = -1;
          goto LABEL_48;
        }

        v93 = 5 * v107;
        v9 = *(v26 + 16);
        v28 = *(v26 + 8);
        v98 = *(v26 + 24);
        v99 = v28;
        sub_1CA36DA2C(v11, v28, v9, v98, 1);
        sub_1CA94C218();
        v29 = sub_1CA9492C8();
        v92[1] = v92;
        v30 = MEMORY[0x1EEE9AC00](v29);
        v97 = v11;
        v11 = (v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
        MEMORY[0x1EEE9AC00](v30);
        OUTLINED_FUNCTION_100_3();
        v31 = v9;
        sub_1CA949288();
        v19 = v9[2];

        v95 = v11;
        v96 = v21;
        v94 = v4;
        if (v29 >= v19)
        {
          v21 = 0;
          OUTLINED_FUNCTION_76_8();
          v32 = 0;
          LOBYTE(v13) = -1;
          v35 = v105;
          goto LABEL_45;
        }

        v32 = v29;
        v33 = sub_1CA6A6B34();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v105;
        if (!v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_55;
          }

          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          return;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_53;
        }

        while (1)
        {
          v36 = v31[2];
          if (v32 < v36)
          {
            break;
          }

          __break(1u);
LABEL_55:
          sub_1CA42B304();
          v31 = v91;
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_56;
          }

LABEL_22:
          if (v32 >= v31[2])
          {
            goto LABEL_57;
          }

          OUTLINED_FUNCTION_47();
          sub_1CA6A78A8();
          v21 = v108;
          v19 = v109;
          v11 = v110;
          v9 = v111;
          v32 = v112;
          LOBYTE(v13) = v113;
LABEL_45:
          v77 = *v35;
          sub_1CA94C218();
          v104 = v77;
          v78 = swift_isUniquelyReferenced_nonNull_native();
          v106 = v32;
          v103 = v31;
          if ((v78 & 1) == 0)
          {
LABEL_51:
            sub_1CA42B31C();
            v104 = v89;
          }

          v32 = v96;
          v35 = v100;
          v79 = v101;
          v101(v95, v100);
          v79(v17, v35);
          v80 = v104;
          v4 = v94;
          if (v107 < *(v104 + 16))
          {
            v81 = v104 + 8 * v93;
            v82 = *(v81 + 32);
            v83 = *(v81 + 40);
            v84 = *(v81 + 48);
            v85 = *(v81 + 56);
            v86 = *(v81 + 64);
            v87 = v98;
            v88 = v99;
            *(v81 + 32) = v97;
            *(v81 + 40) = v88;
            *(v81 + 48) = v103;
            *(v81 + 56) = v87;
            *(v81 + 64) = 1;
            sub_1CA36D780(v82, v83, v84, v85, v86);

            *v105 = v80;
            v24 = v106;
            goto LABEL_48;
          }

          __break(1u);
LABEL_53:
          sub_1CA42B304();
          v31 = v90;
        }

        v37 = v36 - 1;
        OUTLINED_FUNCTION_47();
        v39 = v31 + v38;
        v40 = v31;
        v42 = *(v41 + 72);
        v92[0] = v39;
        v43 = &v39[v42 * v32];
        OUTLINED_FUNCTION_20_33();
        sub_1CA289DE0(v43, v104);
        sub_1CA43F2F0(v43 + v42, v37 - v32, v43);
        v103 = v40;
        v40[2] = v37;
        if ((v106 & 1) == 0)
        {
LABEL_28:
          v9 = v98;
          if (!v37)
          {
            goto LABEL_58;
          }

          v52 = *v92[0];
          objc_opt_self();
          OUTLINED_FUNCTION_5_3();
          v53 = swift_dynamicCastObjCClass();
          v31 = v103;
          if (v53 && v32)
          {
            v54 = v53;
            sub_1CA94C218();
            v55 = v9;
            sub_1CA94C218();
            v56 = v52;
            if ([v54 parameterStateForKey_])
            {
              objc_opt_self();
              v57 = swift_dynamicCastObjCClass();
              if (v57)
              {
                v58 = v57;
                v102 = v56;
                swift_unknownObjectRetain();
                v59 = [v58 values];
                sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
                v60 = sub_1CA94C658();

                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v60 < 0 || (v60 & 0x4000000000000000) != 0)
                {
                  v60 = sub_1CA436664();
                }

                v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v62 = v61 - v32;
                if (v61 < v32)
                {
                  goto LABEL_60;
                }

                v63 = v32;
                v64 = v61 - 1;
                v65 = *((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v63 + 0x18);
                v106 = v63;
                sub_1CA440434(((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v63 + 32), v62, ((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v63 + 24));
                *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) = v64;

                v66 = [v58 identity];
                swift_unknownObjectRelease();
                v67 = sub_1CA948D28();
                v68 = OUTLINED_FUNCTION_18_0(v67);
                MEMORY[0x1EEE9AC00](v68);
                OUTLINED_FUNCTION_6_0();
                v71 = v70 - v69;
                sub_1CA948CF8();

                v72 = objc_allocWithZone(WFChooseFromMenuArrayParameterState);
                v73 = sub_1CA6ACA3C(v60, v71);
                v74 = @"WFMenuItems";
                [v54 setParameterState:v73 forKey:v74];

                swift_unknownObjectRelease();
                v35 = v105;
                v32 = v106;
                v21 = v97;
                v9 = v98;
                v31 = v103;
                v19 = v99;
                goto LABEL_44;
              }

              swift_unknownObjectRelease();
              v31 = v103;
            }

            else
            {
            }

            v19 = v99;
          }

          else
          {
            v19 = v99;
            sub_1CA94C218();
            v75 = v9;
            sub_1CA94C218();
          }

          v21 = v97;
LABEL_44:
          OUTLINED_FUNCTION_2_65();
          sub_1CA285DC8(v104, v76);
          LOBYTE(v13) = 1;
          v11 = v31;
          goto LABEL_45;
        }

        if (!v32)
        {
          goto LABEL_59;
        }

        v44 = v92[0] + v42 * (v32 - 1);
        if (*(v44 + 8))
        {
          if (v37 <= v32)
          {
            v51 = *(v104 + v102[7]);
            sub_1CA94C218();
            v46 = v107 + 1;
            v47 = v107 + 1;
            v50 = v51;
            goto LABEL_27;
          }

          v45 = *(v104 + v102[7]);
          sub_1CA94C218();
          v35 = v105;
          v46 = 0;
          v47 = 0;
        }

        else
        {
          v48 = v102[7];
          v45 = *(v104 + v48);
          v49 = *(*(v44 + v48) + 16);
          sub_1CA94C218();
          v46 = v49;
          v47 = v49;
        }

        v50 = v45;
LABEL_27:
        sub_1CA4FC7D4(v46, v47, v50);
        v37 = v103[2];
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  v19 = v1;
  sub_1CA6AC73C(v107, v106 & 1, &v108);
  v22 = v11[1];
  ++v11;
  v22(v17, v9);
  v21 = v108;
  if (v112)
  {
    v11 = v110;
    v23 = v111;
    v19 = v109;
    sub_1CA94C218();
    sub_1CA94C218();
    v9 = v23;
    sub_1CA6B2B9C(&v108);
    v24 = 0;
    LOBYTE(v13) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_76_8();
    v24 = 0;
    LOBYTE(v13) = 0;
  }

LABEL_48:
  *v4 = v21;
  *(v4 + 8) = v19;
  *(v4 + 16) = v11;
  *(v4 + 24) = v9;
  *(v4 + 32) = v24;
  *(v4 + 40) = v13;
  OUTLINED_FUNCTION_36();
}

void sub_1CA6A81A0(uint64_t a1)
{
  sub_1CA6A9210();
  *(v1 + OBJC_IVAR___WFWorkflowActionTree_root) = a1;

  sub_1CA6A9318();
}

void sub_1CA6A81E8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1CA9492C8();
  v5 = sub_1CA9492B8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1CA6A9170(1);
  OUTLINED_FUNCTION_66_7(&qword_1EC4480E8);
  sub_1CA949288();
  if (sub_1CA6A6B34() || (v12 = *v0, v13 = *(*v0 + 16), v4 == v13))
  {
    sub_1CA94C218();
    sub_1CA4FC7D4(v4, v4, v3);
    v14 = OUTLINED_FUNCTION_69();
    v15(v14);
LABEL_20:
    OUTLINED_FUNCTION_36();
    return;
  }

  if (v4 >= v13)
  {
    __break(1u);
    goto LABEL_23;
  }

  v60 = v3;
  v62 = v0;
  v57 = v12;
  v55 = 5 * v4;
  v16 = v12 + 40 * v4;
  v18 = *(v16 + 32);
  v17 = v16 + 32;
  v56 = v18;
  if (*(v17 + 32) == 1)
  {
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    v58 = *(v17 + 8);
    sub_1CA94C218();
    sub_1CA94C218();
    v54 = v19;
    v53 = v19;
    v61 = sub_1CA9492C8();
    v59 = &v53;
    MEMORY[0x1EEE9AC00](v61);
    OUTLINED_FUNCTION_108_6();
    MEMORY[0x1EEE9AC00](v21);
    sub_1CA6A9170(1);
    sub_1CA949288();
    if (!sub_1CA6A6B34())
    {
      v22 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = v62;
      v9 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (!v61)
    {
      v42 = v60;
      sub_1CA94C218();
      sub_1CA4FC7D4(v4, v4, v42);

      v43 = *(v7 + 8);
      v43(v3, v5);
      v44 = OUTLINED_FUNCTION_69();
      (v43)(v44);

      goto LABEL_20;
    }

    v22 = v61 - 1;
    if (__OFSUB__(v61, 1))
    {
      goto LABEL_28;
    }

    v9 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_29;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      while (v22 < *(v9 + 16))
      {
        v23 = _s17ControlFlowBranchVMa(0);
        v24 = OUTLINED_FUNCTION_12(v23);
        v27 = *(*(v9 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v26 + 72) * v22 + *(v24 + 36)) + 16);
        v28 = v60;
        sub_1CA94C218();
        sub_1CA4FC7D4(v27, v27, v28);
        v1 = v62;
        v29 = v57;
        while (1)
        {
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_23:
            sub_1CA42B31C();
            v29 = v45;
          }

          v32 = *(v7 + 8);
          v7 += 8;
          v22 = v32;
          v32(v3, v5);
          v33 = OUTLINED_FUNCTION_69();
          (v32)(v33);
          if (v4 < *(v29 + 16))
          {
            v34 = v29 + 8 * v55;
            v35 = *(v34 + 32);
            v36 = *(v34 + 40);
            v37 = *(v34 + 48);
            v38 = *(v34 + 56);
            v39 = *(v34 + 64);
            v40 = v58;
            *(v34 + 32) = v56;
            *(v34 + 40) = v40;
            v41 = v54;
            *(v34 + 48) = v9;
            *(v34 + 56) = v41;
            *(v34 + 64) = 1;
            sub_1CA36D780(v35, v36, v37, v38, v39);

            *v1 = v29;
            goto LABEL_20;
          }

          __break(1u);
LABEL_25:
          sub_1CA42B304();
          v9 = v46;
LABEL_14:
          v29 = v57;
          if ((v22 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v22 >= *(v9 + 16))
          {
            goto LABEL_27;
          }

          v31 = _s17ControlFlowBranchVMa(0);
          OUTLINED_FUNCTION_12(v31);
          sub_1CA6A81E8();
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        sub_1CA42B304();
        v9 = v47;
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_72_7();
  v53 = 560;
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_98_6(v48, v49, v50, 48, v51, v52);
  __break(1u);
}

void sub_1CA6A86E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  v124 = v21;
  v23 = v22;
  v131 = _s17ControlFlowBranchVMa(0);
  OUTLINED_FUNCTION_1_0();
  v126 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448048, &qword_1CA991E00);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v27);
  v125 = (&v124 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448050, &qword_1CA991E08);
  v30 = OUTLINED_FUNCTION_18_0(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_19();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v132 = &v124 - v35;
  v148 = MEMORY[0x1E69E7CC0];
  v133 = *(v23 + 16);
  v127 = v23;
  sub_1CA94C218();
  v36 = 0;
  v130 = v20;
  v128 = v26;
  v129 = v33;
  while (1)
  {
    if (v36 == v133)
    {
      v37 = 1;
      v134 = v133;
      goto LABEL_7;
    }

    if (v36 >= v133)
    {
      goto LABEL_89;
    }

    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_47();
    v39 = v125;
    *v125 = v40;
    OUTLINED_FUNCTION_9_41();
    sub_1CA285A0C(v42, v39 + v41);
    sub_1CA2D9CD4(v39, v33, &qword_1EC448048, &qword_1CA991E00);
    v37 = 0;
    v134 = v38;
LABEL_7:
    v43 = v132;
    __swift_storeEnumTagSinglePayload(v33, v37, 1, v26);
    v44 = OUTLINED_FUNCTION_130();
    sub_1CA2D9CD4(v44, v45, &qword_1EC448050, &qword_1CA991E08);
    if (__swift_getEnumTagSinglePayload(v43, 1, v26) == 1)
    {

      v124;
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_2();
      if (v48)
      {
        goto LABEL_95;
      }

      goto LABEL_80;
    }

    OUTLINED_FUNCTION_20_33();
    sub_1CA289DE0(v43 + v46, v20);
    v47 = *v20;
    MEMORY[0x1CCAA1490]();
    OUTLINED_FUNCTION_23_2();
    if (v48)
    {
      OUTLINED_FUNCTION_11_3();
    }

    OUTLINED_FUNCTION_116();
    sub_1CA94C6E8();
    v135 = v148;
    v49 = *(v20 + *(v131 + 28));
    v147 = MEMORY[0x1E69E7CC0];
    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = MEMORY[0x1E69E7CC0];
      v52 = 0;
      v53 = v49 + 32;
      v140 = v49 + 32;
      v141 = v50;
      while (1)
      {
        v54 = v53 + 40 * v52;
        v56 = *v54;
        v55 = *(v54 + 8);
        v57 = *(v54 + 16);
        v58 = *(v54 + 24);
        if ((*(v54 + 32) & 1) == 0)
        {
          sub_1CA36DA2C(v56, v55, v57, v58, 0);
          v75 = v56;
          MEMORY[0x1CCAA1490]();
          if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            OUTLINED_FUNCTION_127_5();
          }

          sub_1CA94C6E8();
          sub_1CA36D780(v56, v55, v57, v58, 0);
          v51 = v147;
          goto LABEL_44;
        }

        v146 = *v54;
        sub_1CA94C218();
        sub_1CA94C218();
        v59 = v58;
        sub_1CA6A86E0(v59, v60, v57, v59, v61, v62, v63, v64, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
        v66 = v65;
        v67 = v65 >> 62;
        if (v65 >> 62)
        {
          v68 = OUTLINED_FUNCTION_130_4();
        }

        else
        {
          v68 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v69 = v51 >> 62;
        if (v51 >> 62)
        {
          v70 = OUTLINED_FUNCTION_131_6();
        }

        else
        {
          v70 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v145 = v68;
        v71 = __OFADD__(v70, v68);
        v72 = v70 + v68;
        if (v71)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v144 = v52;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          break;
        }

        if (v69)
        {
          goto LABEL_26;
        }

LABEL_27:
        OUTLINED_FUNCTION_75_8();
        v51 = sub_1CA94D488();
        v74 = v51 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v142 = v57;
        v143 = v55;
        OUTLINED_FUNCTION_109_5();
        v78 = v77 - v76;
        v79 = v74 + 8 * v76;
        if (v67)
        {
          v81 = sub_1CA94D328();
          if (!v81)
          {
LABEL_42:

            v52 = v144;
            v53 = v140;
            v50 = v141;
            v92 = v146;
            v94 = v142;
            v93 = v143;
            if (v145 > 0)
            {
              goto LABEL_82;
            }

            goto LABEL_43;
          }

          v82 = v81;
          v83 = sub_1CA94D328();
          if (v78 < v83)
          {
            goto LABEL_84;
          }

          if (v82 < 1)
          {
            goto LABEL_86;
          }

          v136 = v83;
          v137 = v74;
          v138 = v58;
          v139 = v51;
          v84 = (v79 + 32);
          OUTLINED_FUNCTION_3_61();
          sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, &unk_1CA991E10);
            v85 = OUTLINED_FUNCTION_77_11();
            v87 = sub_1CA276BDC(v85, v86, v66);
            v89 = *v88;
            v90 = OUTLINED_FUNCTION_122_3();
            v87(v90);
            *v84 = v89;
            OUTLINED_FUNCTION_113_5();
          }

          while (v82 != v91);
          v58 = v138;
          v51 = v139;
          v80 = v136;
          v74 = v137;
        }

        else
        {
          v80 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v80)
          {
            goto LABEL_42;
          }

          if (v78 < v80)
          {
            goto LABEL_85;
          }

          sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
          swift_arrayInitWithCopy();
        }

        v52 = v144;
        v53 = v140;
        v50 = v141;
        v92 = v146;
        v94 = v142;
        v93 = v143;
        if (v80 < v145)
        {
          goto LABEL_82;
        }

        if (v80 > 0)
        {
          v95 = *(v74 + 16);
          v71 = __OFADD__(v95, v80);
          v96 = v95 + v80;
          if (v71)
          {
            goto LABEL_83;
          }

          *(v74 + 16) = v96;
        }

LABEL_43:
        sub_1CA36D780(v92, v93, v94, v58, 1);
        v147 = v51;
LABEL_44:
        if (++v52 == v50)
        {
          goto LABEL_49;
        }
      }

      if (!v69)
      {
        v74 = v51 & 0xFFFFFFFFFFFFFF8;
        if (v72 <= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_26:
      OUTLINED_FUNCTION_131_6();
      OUTLINED_FUNCTION_94_3();
      goto LABEL_27;
    }

    v51 = MEMORY[0x1E69E7CC0];
LABEL_49:
    v97 = v51 >> 62;
    if (v51 >> 62)
    {
      v98 = OUTLINED_FUNCTION_131_6();
    }

    else
    {
      v98 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v99 = v135 >> 62;
    if (v135 >> 62)
    {
      v100 = sub_1CA94D328();
    }

    else
    {
      v100 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v101 = v100 + v98;
    if (__OFADD__(v100, v98))
    {
      goto LABEL_87;
    }

    v102 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v139 = v51;
    if (v102)
    {
      if (!v99)
      {
        v103 = v135 & 0xFFFFFFFFFFFFFF8;
        if (v101 <= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

LABEL_59:
      sub_1CA94D328();
      OUTLINED_FUNCTION_94_3();
      goto LABEL_60;
    }

    if (v99)
    {
      goto LABEL_59;
    }

LABEL_60:
    v135 = sub_1CA94D488();
    v103 = v135 & 0xFFFFFFFFFFFFFF8;
LABEL_61:
    OUTLINED_FUNCTION_109_5();
    v106 = v105 - v104;
    v107 = v103 + 8 * v104;
    if (v97)
    {
      v109 = sub_1CA94D328();
      if (!v109)
      {
LABEL_75:

        v20 = v130;
        v33 = v129;
        v120 = v135;
        if (v98 > 0)
        {
          goto LABEL_88;
        }

        goto LABEL_76;
      }

      v110 = v109;
      v111 = sub_1CA94D328();
      if (v106 < v111)
      {
        goto LABEL_93;
      }

      if (v110 < 1)
      {
        goto LABEL_94;
      }

      v144 = v111;
      v145 = v103;
      v146 = v98;
      OUTLINED_FUNCTION_3_61();
      sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
      v112 = v139;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, &unk_1CA991E10);
        v113 = OUTLINED_FUNCTION_77_11();
        v115 = sub_1CA276BDC(v113, v114, v112);
        v117 = *v116;
        v118 = OUTLINED_FUNCTION_122_3();
        v115(v118);
        *(v107 + 32) = v117;
        OUTLINED_FUNCTION_113_5();
      }

      while (v110 != v119);
      v103 = v145;
      v98 = v146;
      v108 = v144;
    }

    else
    {
      v108 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v108)
      {
        goto LABEL_75;
      }

      if (v106 < v108)
      {
        goto LABEL_92;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      swift_arrayInitWithCopy();
    }

    v20 = v130;
    v33 = v129;
    v120 = v135;
    if (v108 < v98)
    {
      goto LABEL_88;
    }

    if (v108 > 0)
    {
      v121 = *(v103 + 16);
      v71 = __OFADD__(v121, v108);
      v122 = v121 + v108;
      if (v71)
      {
        goto LABEL_91;
      }

      *(v103 + 16) = v122;
    }

LABEL_76:
    v148 = v120;
    OUTLINED_FUNCTION_2_65();
    sub_1CA285DC8(v20, v123);
    v26 = v128;
    v36 = v134;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  OUTLINED_FUNCTION_11_3();
LABEL_80:
  OUTLINED_FUNCTION_116();
  sub_1CA94C6E8();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA6A8FB4(uint64_t (*a1)(void))
{
  v2 = OBJC_IVAR___WFWorkflowActionTree_batchUpdateState;
  *(v1 + OBJC_IVAR___WFWorkflowActionTree_batchUpdateState) = 1;
  result = a1();
  if (*(v1 + v2) == 2)
  {
    result = sub_1CA6A9448();
  }

  *(v1 + v2) = 0;
  return result;
}

uint64_t sub_1CA6A9010(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1CA94D328();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v4 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1CA6B0E9C(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_1CA94D328() / 8 >= v4)
  {
    goto LABEL_14;
  }

  v6 = sub_1CA94D328();
  a2 = sub_1CA6AD050(v5, v6, &unk_1EC448110, &unk_1CA984360, &qword_1EDB9F5D0, off_1E836DCF8);
LABEL_11:

  return sub_1CA6B12D8(a1, a2);
}

char *sub_1CA6A911C(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1CA6B10BC(a1);
    return a2;
  }

  else
  {

    return sub_1CA6B18F0(a1, a2);
  }
}

uint64_t sub_1CA6A9170(uint64_t a1)
{
  sub_1CA9492B8();
  sub_1CA286854(&unk_1EC4480F0, MEMORY[0x1EEE78BB0]);
  result = sub_1CA94CA58();
  if (v3 >= a1)
  {
    return sub_1CA94CB18();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA6A9210()
{
  v1 = [*(v0 + OBJC_IVAR___WFWorkflowActionTree_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444858, &unk_1CA992010);
  v2 = sub_1CA94C658();

  result = sub_1CA25B410(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCAA22D0](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v6 actionTreeWillChangeActions_];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1CA6A9318()
{
  v1 = v0;
  swift_getObjectType();
  v2 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1CA94C218();
  sub_1CA2881E0(v5, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448008, &unk_1CA991DF0);
  v6 = swift_allocObject();
  sub_1CA289DE0(v4, v6 + *(*v6 + 88));
  *(v1 + OBJC_IVAR___WFWorkflowActionTree__layout) = v6;

  if (*(v1 + OBJC_IVAR___WFWorkflowActionTree_batchUpdateState))
  {
    *(v1 + OBJC_IVAR___WFWorkflowActionTree_batchUpdateState) = 2;
  }

  else
  {
    sub_1CA6A9448();
  }
}

uint64_t sub_1CA6A9448()
{
  v1 = v0;
  v2 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CA285AF8(v4);
  v5 = *v4;
  sub_1CA94C218();
  sub_1CA285DC8(v4, _s6LayoutVMa);
  sub_1CA289E38(v5);
  sub_1CA6AC3E0(v6);
  v7 = *&v1[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
  sub_1CA28CFEC(v1);
  sub_1CA285AF8(v4);
  v8 = *v4;
  sub_1CA94C218();
  sub_1CA285DC8(v4, _s6LayoutVMa);
  sub_1CA635D24(v8);
  v9 = [*&v1[OBJC_IVAR___WFWorkflowActionTree_observers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444858, &unk_1CA992010);
  v10 = sub_1CA94C658();

  result = sub_1CA25B410(v10);
  if (result)
  {
    v12 = result;
    if (result < 1)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    for (i = 0; i != v12; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCAA22D0](i, v10);
      }

      else
      {
        v14 = *(v10 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v14 actionTreeDidChangeActions_];
      swift_unknownObjectRelease();
    }
  }

  if (![v1 notifyVariablesOfChanges] || (v15 = *(v7 + 72), (result = sub_1CA25B410(v15)) == 0))
  {
LABEL_19:
    v21 = [*(v7 + 16) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481A0, &qword_1CA992020);
    v22 = sub_1CA94C658();

    result = sub_1CA25B410(v22);
    if (!result)
    {
    }

    v23 = result;
    if (result >= 1)
    {
      for (j = 0; j != v23; ++j)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1CCAA22D0](j, v22);
        }

        else
        {
          v25 = *(v22 + 8 * j + 32);
          swift_unknownObjectRetain();
        }

        [v25 availableVariablesDidChange];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_28;
  }

  v16 = result;
  if (result >= 1)
  {
    sub_1CA94C218();
    for (k = 0; k != v16; ++k)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCAA22D0](k, v15);
      }

      else
      {
        v18 = *(v15 + 8 * k + 32);
      }

      v19 = v18;
      v20 = [v18 variableProvider];
      if (v20)
      {
        [v19 variableProviderDidInvalidateOutputDetails_];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t WFWorkflowActionTree.notifyVariablesOfChanges.getter()
{
  v1 = OBJC_IVAR___WFWorkflowActionTree_notifyVariablesOfChanges;
  swift_beginAccess();
  return *(v0 + v1);
}

void __swiftcall WFWorkflowActionTree.init()(WFWorkflowActionTree *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id WFWorkflowActionTree.init()()
{
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v1 = sub_1CA94C648();
  v2 = [v0 initWithActions_];

  return v2;
}

void __swiftcall WFWorkflowActionTree.init(actions:)(WFWorkflowActionTree *__return_ptr retstr, Swift::OpaquePointer actions)
{
  OUTLINED_FUNCTION_158();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C648();

  [v2 initWithActions_];
}

void __swiftcall WFWorkflowActionTree.init(actionTree:)(WFWorkflowActionTree *__return_ptr retstr, WFWorkflowActionTree *actionTree)
{
  OUTLINED_FUNCTION_158();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithActionTree_];
}

void WFWorkflowActionTree.init(actionTree:)()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v0;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  v6 = OBJC_IVAR___WFWorkflowActionTree_observers;
  *&v2[v6] = [objc_opt_self() weakObjectsHashTable];
  v2[OBJC_IVAR___WFWorkflowActionTree_batchUpdateState] = 0;
  v2[OBJC_IVAR___WFWorkflowActionTree_notifyVariablesOfChanges] = 0;
  *&v2[OBJC_IVAR___WFWorkflowActionTree_root] = *&v4[OBJC_IVAR___WFWorkflowActionTree_root];
  sub_1CA285AF8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448008, &unk_1CA991DF0);
  v7 = swift_allocObject();
  sub_1CA289DE0(v1, v7 + *(*v7 + 88));
  *&v2[OBJC_IVAR___WFWorkflowActionTree__layout] = v7;
  _s14ActionObserverCMa();
  v8 = *&v4[OBJC_IVAR___WFWorkflowActionTree_actionObserver];
  sub_1CA94C218();
  *&v2[OBJC_IVAR___WFWorkflowActionTree_actionObserver] = sub_1CA6A9BE4(v8);
  _s14ConnectorStateCMa();
  swift_allocObject();
  OUTLINED_FUNCTION_34_5();

  *&v2[OBJC_IVAR___WFWorkflowActionTree_connectorState] = sub_1CA635CB8(v9);
  _s20VariableAvailabilityCMa();
  swift_allocObject();
  OUTLINED_FUNCTION_34_5();

  *&v2[OBJC_IVAR___WFWorkflowActionTree_variableAvailability] = sub_1CA3652EC(v10);
  v11.receiver = v2;
  v11.super_class = WFWorkflowActionTree;
  objc_msgSendSuper2(&v11, sel_init);

  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_129_4();
  OUTLINED_FUNCTION_76_0();
}

void WFWorkflowActionTree.actions.setter()
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_171();
  sub_1CA286ACC(v1, 1);
  OUTLINED_FUNCTION_171();

  sub_1CA6A81A0(v0);
}

void sub_1CA6A9D44(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v4 = sub_1CA94C658();

  *a2 = v4;
}

void sub_1CA6A9DB8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C648();
  [v2 setActions_];
}

void __swiftcall WFWorkflowActionTree.action(at:)(WFAction *__return_ptr retstr, Swift::Int at)
{
  v4 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_99_5(v5);
  v6 = *v2;
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v2, v7);
  sub_1CA275D70(at, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v9 = OUTLINED_FUNCTION_23();
    MEMORY[0x1CCAA22D0](v9);
  }

  else
  {
    v8 = *(v6 + 8 * at + 32);
  }

  OUTLINED_FUNCTION_158();
}

Swift::Int __swiftcall WFWorkflowActionTree.index(of:)(WFAction *of)
{
  v2 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_99_5(v3);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v1, v4);
  v5 = OUTLINED_FUNCTION_23();
  v7 = sub_1CA311D00(v5, v6);
  v9 = v8;

  if (v9)
  {
    return sub_1CA948778();
  }

  return v7;
}

Swift::Int __swiftcall WFWorkflowActionTree.indentationLevelOfAction(at:)(Swift::Int at)
{
  v3 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_99_5(v4);
  v5 = *(v1 + 16);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  result = sub_1CA285DC8(v1, v6);
  if (at < 0)
  {
    __break(1u);
  }

  else if (*(v5 + 16) > at)
  {
    v8 = *(v5 + 8 * at + 32);

    return v8;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall WFWorkflowActionTree.validIndexForInsertingAction(at:)(Swift::Int at)
{
  v2 = _s6LayoutVMa(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  sub_1CA285AF8(v1);
  v4 = *(v3 + 48);
  v5 = sub_1CA9491F8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  (*(v7 + 16))(v10 - v9, v1 + v4, v5);
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v1, v12);
  v13 = OUTLINED_FUNCTION_20_0();
  v14 = sub_1CA6A751C(v13);
  (*(v7 + 8))(v11, v5);
  return v14;
}

Swift::Void __swiftcall WFWorkflowActionTree.insertActions(_:at:)(Swift::OpaquePointer _, Swift::Int at)
{
  OUTLINED_FUNCTION_37_0();
  v4 = v2;
  v27 = v5;
  OUTLINED_FUNCTION_34_5();
  swift_getObjectType();
  v6 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = (v8 - v7);
  v10 = sub_1CA25B410(v3);
  for (i = 0; v10 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1CCAA22D0](i);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v12 = *(v3 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v14 = [v4 indexOfAction_];
    if (v14 != sub_1CA948778())
    {
      goto LABEL_19;
    }
  }

  sub_1CA285AF8(v9);
  v15 = *v9;
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v9, v16);
  if (v27 < 0)
  {
    goto LABEL_16;
  }

  if (sub_1CA25B418(v15) < v27)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = sub_1CA25B410(v3);
  v18 = sub_1CA25B410(v15);
  v19 = v18 + v17;
  if (!__OFADD__(v18, v17))
  {
    sub_1CA94C218();
    sub_1CA277E18(v19, 1);
    sub_1CA6B0270(v27, v27, v17, v3);
    sub_1CA286ACC(v15, 1);
    v21 = v20;

    sub_1CA6A81A0(v21);
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  OUTLINED_FUNCTION_72_7();
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_98_6(v22, v23, v24, 57, v25, v26);
  __break(1u);
}

Swift::Bool __swiftcall WFWorkflowActionTree.removeAction(at:)(Swift::Int at)
{
  v3 = *&v1[OBJC_IVAR___WFWorkflowActionTree_actionObserver];
  v4 = OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_shouldIgnoreUpdates;
  *(v3 + OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_shouldIgnoreUpdates) = 1;
  v5 = v1;
  sub_1CA6AA54C(v5, at, &v7);
  *(v3 + v4) = 0;

  return v7;
}

uint64_t sub_1CA6AA54C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CA9492B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA285AF8(v8);
  v13 = *(v8 + 3);
  sub_1CA94C218();
  result = sub_1CA285DC8(v8, _s6LayoutVMa);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v13 + 16) > a2)
  {
    (*(v10 + 16))(v12, v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, v9);

    v17 = *(a1 + OBJC_IVAR___WFWorkflowActionTree_root);
    sub_1CA94C218();
    sub_1CA6A78A8();
    v15 = v18[40];
    sub_1CA6A81A0(v17);
    (*(v10 + 8))(v12, v9);
    result = sub_1CA27080C(v18, &unk_1EC448130, &unk_1CA992000);
    *a3 = v15 != 255;
    return result;
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall WFWorkflowActionTree.actions(groupedWith:)(WFAction *groupedWith)
{
  OUTLINED_FUNCTION_77_1();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36_15();
  sub_1CA285AF8(v7);
  v8 = *(v2 + 8);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v2, v9);
  v10 = sub_1CA311D00(v4, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    sub_1CA285AF8(v1);
    v13 = *(v1 + 32);
    sub_1CA94C218();
    OUTLINED_FUNCTION_0_73();
    sub_1CA285DC8(v1, v14);
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *(v13 + 16))
    {
      v15 = v13 + 48 * v10;
      v16 = *(v15 + 48);
      v17 = *(v15 + 56);
      v18 = *(v15 + 64);
      v19 = *(v15 + 72);
      v20 = OUTLINED_FUNCTION_97_4();
      sub_1CA36D94C(v20, v21, v16, v17, v18, v19);

      if (!v19)
      {
        v24 = OUTLINED_FUNCTION_97_4();
        sub_1CA36D9BC(v24, v25, v16, v17, v18, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1CA9813B0;
        *(v26 + 32) = v4;
        v27 = v4;
        goto LABEL_8;
      }

      sub_1CA6AA9B8();
      v23 = v22;

      if (!(v23 >> 62))
      {
        sub_1CA94C218();
        sub_1CA94D808();
        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);

        goto LABEL_8;
      }

LABEL_11:
      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      sub_1CA94C218();
      sub_1CA94D608();
      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_8:
  OUTLINED_FUNCTION_76_0();
  result.value._rawValue = v28;
  result.is_nil = v29;
  return result;
}

void sub_1CA6AA9B8()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1;
  v4 = v3;
  v5 = _s17ControlFlowBranchVMa(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_91_7();
  v12 = MEMORY[0x1E69E7CC0];
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v6 + 72);
    do
    {
      sub_1CA285A0C(v8, v0);
      *v0;
      v10 = sub_1CA285DC8(v0, _s17ControlFlowBranchVMa);
      MEMORY[0x1CCAA1490](v10);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_127_5();
      }

      sub_1CA94C6E8();
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  v2;
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_23_2();
  if (v11)
  {
    OUTLINED_FUNCTION_11_3();
  }

  OUTLINED_FUNCTION_116();
  sub_1CA94C6E8();
  OUTLINED_FUNCTION_76_0();
}

Swift::OpaquePointer_optional __swiftcall WFWorkflowActionTree.actions(nestedInside:)(WFAction *nestedInside)
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  v139 = _s17ControlFlowBranchVMa(0);
  OUTLINED_FUNCTION_1_0();
  v137 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448048, &qword_1CA991E00);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v11);
  v133 = (&v129 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448050, &qword_1CA991E08);
  v14 = OUTLINED_FUNCTION_18_0(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19();
  v141 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v138 = (&v129 - v18);
  v19 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_36_15();
  sub_1CA285AF8(v21);
  v22 = *(v2 + 8);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v2, v23);
  v24 = sub_1CA311D00(v4, v22);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    sub_1CA285AF8(v1);
    v27 = *(v1 + 32);
    sub_1CA94C218();
    OUTLINED_FUNCTION_0_73();
    sub_1CA285DC8(v1, v28);
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_109;
    }

    if (v24 >= *(v27 + 16))
    {
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
      goto LABEL_115;
    }

    v29 = v27 + 48 * v24;
    v1 = *(v29 + 32);
    v30 = *(v29 + 48);
    v31 = *(v29 + 56);
    v32 = *(v29 + 64);
    v33 = *(v29 + 72);
    v131 = *(v29 + 40);
    v136 = v30;
    v130 = v31;
    sub_1CA36D94C(v1, v131, v30, v31, v32, v33);

    if (v33)
    {
      if (v33 == 1)
      {
        if (v32)
        {
          v1 = v136;
          if ((v32 & 0x8000000000000000) == 0)
          {
            if (v32 < *(v136 + 16))
            {
              OUTLINED_FUNCTION_47();
              v34 = sub_1CA94C218();
              sub_1CA6A71A4(v34);
              OUTLINED_FUNCTION_158();

LABEL_97:

              goto LABEL_98;
            }

            goto LABEL_116;
          }

LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v35 = MEMORY[0x1E69E7CC0];
        v156 = MEMORY[0x1E69E7CC0];
        v132 = *(v136 + 16);
        sub_1CA94C218();
        v36 = 0;
        v142 = v35;
        v37 = v141;
        v135 = v9;
        v134 = v10;
        while (1)
        {
          if (v36 == v132)
          {
            v38 = 1;
            v140 = v132;
          }

          else
          {
            if ((v36 & 0x8000000000000000) != 0)
            {
              goto LABEL_107;
            }

            if (v36 >= *(v136 + 16))
            {
LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
              goto LABEL_110;
            }

            v39 = v36 + 1;
            OUTLINED_FUNCTION_47();
            v40 = v133;
            *v133 = v41;
            OUTLINED_FUNCTION_9_41();
            sub_1CA285A0C(v43, v40 + v42);
            sub_1CA2D9CD4(v40, v141, &qword_1EC448048, &qword_1CA991E00);
            v38 = 0;
            v140 = v39;
            v37 = v141;
          }

          __swift_storeEnumTagSinglePayload(v37, v38, 1, v10);
          v44 = v37;
          v45 = v138;
          sub_1CA2D9CD4(v44, v138, &qword_1EC448050, &qword_1CA991E08);
          if (__swift_getEnumTagSinglePayload(v45, 1, v10) == 1)
          {

            v1 = v130;
            MEMORY[0x1CCAA1490]();
            if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_96:
              OUTLINED_FUNCTION_20_0();
              sub_1CA94C6E8();

              goto LABEL_97;
            }

LABEL_117:
            sub_1CA94C698();
            goto LABEL_96;
          }

          v46 = *v45;
          OUTLINED_FUNCTION_20_33();
          sub_1CA289DE0(v48 + v47, v9);
          if (v46)
          {
            v49 = *v9;
            MEMORY[0x1CCAA1490]();
            OUTLINED_FUNCTION_23_2();
            if (v50)
            {
              OUTLINED_FUNCTION_11_3();
            }

            OUTLINED_FUNCTION_116();
            sub_1CA94C6E8();
            v142 = v156;
          }

          v51 = *(v9 + *(v139 + 28));
          v155 = MEMORY[0x1E69E7CC0];
          v52 = *(v51 + 16);
          if (v52)
          {
            v10 = MEMORY[0x1E69E7CC0];
            v53 = 0;
            v54 = v51 + 32;
            v147 = v51 + 32;
            v148 = v52;
            while (1)
            {
              v55 = v54 + 40 * v53;
              v57 = *v55;
              v56 = *(v55 + 8);
              v9 = *(v55 + 16);
              v58 = *(v55 + 24);
              if ((*(v55 + 32) & 1) == 0)
              {
                OUTLINED_FUNCTION_58_9();
                sub_1CA36DA2C(v73, v74, v75, v76, v77);
                v78 = v57;
                MEMORY[0x1CCAA1490]();
                OUTLINED_FUNCTION_23_2();
                if (v50)
                {
                  OUTLINED_FUNCTION_11_3();
                }

                OUTLINED_FUNCTION_116();
                sub_1CA94C6E8();
                OUTLINED_FUNCTION_58_9();
                sub_1CA36D780(v79, v80, v81, v82, v83);
                v10 = v155;
                goto LABEL_57;
              }

              v149 = *v55;
              v153 = v56;
              sub_1CA94C218();
              sub_1CA94C218();
              v151 = v58;
              v59 = v58;
              v152 = v9;
              sub_1CA6A86E0(v59, v60, v9, v59, v61, v62, v63, v64, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
              v66 = v65;
              v67 = v65 >> 62;
              if (v65 >> 62)
              {
                v68 = OUTLINED_FUNCTION_131_6();
              }

              else
              {
                v68 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v69 = v10 >> 62;
              if (v10 >> 62)
              {
                v70 = OUTLINED_FUNCTION_130_4();
              }

              else
              {
                v70 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v1 = v70 + v68;
              if (__OFADD__(v70, v68))
              {
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
LABEL_103:
                __break(1u);
LABEL_104:
                __break(1u);
LABEL_105:
                __break(1u);
LABEL_106:
                __break(1u);
LABEL_107:
                __break(1u);
                goto LABEL_108;
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              v150 = v53;
              if (isUniquelyReferenced_nonNull_bridgeObject)
              {
                break;
              }

              if (v69)
              {
                goto LABEL_39;
              }

LABEL_40:
              OUTLINED_FUNCTION_75_8();
              v10 = sub_1CA94D488();
              v72 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_41:
              OUTLINED_FUNCTION_109_5();
              v86 = v85 - v84;
              v87 = v72 + 8 * v84;
              if (v67)
              {
                v89 = sub_1CA94D328();
                if (!v89)
                {
LABEL_55:

                  v54 = v147;
                  v52 = v148;
                  v53 = v150;
                  v96 = v151;
                  v98 = v152;
                  v97 = v153;
                  if (v68 > 0)
                  {
                    goto LABEL_100;
                  }

                  goto LABEL_56;
                }

                v1 = v89;
                v90 = sub_1CA94D328();
                if (v86 < v90)
                {
                  goto LABEL_102;
                }

                if (v1 < 1)
                {
                  goto LABEL_104;
                }

                v143 = v90;
                v144 = v72;
                v145 = v68;
                v146 = v10;
                v9 = (v87 + 32);
                OUTLINED_FUNCTION_3_61();
                sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
                for (i = 0; i != v1; ++i)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, &unk_1CA991E10);
                  v92 = sub_1CA276BDC(&v154, i, v66);
                  v94 = *v93;
                  v95 = OUTLINED_FUNCTION_122_3();
                  v92(v95);
                  v9[i] = v94;
                }

                v68 = v145;
                v10 = v146;
                v88 = v143;
                v72 = v144;
              }

              else
              {
                v1 = v66 & 0xFFFFFFFFFFFFFF8;
                v88 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v88)
                {
                  goto LABEL_55;
                }

                if (v86 < v88)
                {
                  goto LABEL_103;
                }

                sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
                swift_arrayInitWithCopy();
              }

              v54 = v147;
              v52 = v148;
              v53 = v150;
              v96 = v151;
              v98 = v152;
              v97 = v153;
              if (v88 < v68)
              {
                goto LABEL_100;
              }

              if (v88 > 0)
              {
                v99 = *(v72 + 16);
                v100 = __OFADD__(v99, v88);
                v101 = v99 + v88;
                if (v100)
                {
                  goto LABEL_101;
                }

                *(v72 + 16) = v101;
              }

LABEL_56:
              sub_1CA36D780(v149, v97, v98, v96, 1);
              v155 = v10;
LABEL_57:
              if (++v53 == v52)
              {
                goto LABEL_62;
              }
            }

            if (!v69)
            {
              v72 = v10 & 0xFFFFFFFFFFFFFF8;
              if (v1 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_41;
              }

              goto LABEL_40;
            }

LABEL_39:
            OUTLINED_FUNCTION_130_4();
            OUTLINED_FUNCTION_94_3();
            goto LABEL_40;
          }

          v10 = MEMORY[0x1E69E7CC0];
LABEL_62:
          v146 = v10;
          if (v10 >> 62)
          {
            v102 = OUTLINED_FUNCTION_130_4();
          }

          else
          {
            v102 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          OUTLINED_FUNCTION_117_5();
          v103 = v142;
          v104 = v142 >> 62;
          if (v142 >> 62)
          {
            v105 = sub_1CA94D328();
          }

          else
          {
            v105 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v1 = v105 + v102;
          if (__OFADD__(v105, v102))
          {
            goto LABEL_105;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            break;
          }

          if (v104)
          {
            goto LABEL_72;
          }

LABEL_73:
          OUTLINED_FUNCTION_75_8();
          v142 = sub_1CA94D488();
          v106 = v142 & 0xFFFFFFFFFFFFFF8;
LABEL_74:
          OUTLINED_FUNCTION_109_5();
          v109 = v108 - v107;
          v110 = v106 + 8 * v107;
          if (v10 >> 62)
          {
            if (v146 < 0)
            {
              v1 = v146;
            }

            else
            {
              v1 = v146 & 0xFFFFFFFFFFFFFF8;
            }

            v112 = sub_1CA94D328();
            if (!v112)
            {
LABEL_91:

              v37 = v141;
              if (v102 > 0)
              {
                goto LABEL_106;
              }

              goto LABEL_92;
            }

            v113 = v112;
            v114 = sub_1CA94D328();
            if (v109 < v114)
            {
              goto LABEL_113;
            }

            if (v113 < 1)
            {
              goto LABEL_114;
            }

            v111 = v114;
            v152 = v106;
            v153 = v102;
            v10 = v110 + 32;
            OUTLINED_FUNCTION_3_61();
            v115 = sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
            v116 = &unk_1CA991E10;
            v1 = v115;
            v117 = v146;
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, v116);
              v118 = OUTLINED_FUNCTION_77_11();
              v120 = sub_1CA276BDC(v118, v119, v117);
              v9 = *v121;
              v122 = OUTLINED_FUNCTION_122_3();
              v120(v122);
              *v10 = v9;
              OUTLINED_FUNCTION_113_5();
            }

            while (v113 != v123);
            OUTLINED_FUNCTION_117_5();
            v106 = v152;
            v102 = v153;
          }

          else
          {
            v111 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v111)
            {
              goto LABEL_91;
            }

            if (v109 < v111)
            {
              goto LABEL_112;
            }

            sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
            swift_arrayInitWithCopy();
          }

          v37 = v141;
          if (v111 < v102)
          {
            goto LABEL_106;
          }

          if (v111 > 0)
          {
            v124 = *(v106 + 16);
            v100 = __OFADD__(v124, v111);
            v125 = v124 + v111;
            if (v100)
            {
              goto LABEL_111;
            }

            *(v106 + 16) = v125;
          }

LABEL_92:
          v156 = v142;
          OUTLINED_FUNCTION_2_65();
          sub_1CA285DC8(v9, v126);
          v36 = v140;
        }

        if (!v104)
        {
          v106 = v103 & 0xFFFFFFFFFFFFFF8;
          if (v1 <= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

LABEL_72:
        sub_1CA94D328();
        OUTLINED_FUNCTION_94_3();
        goto LABEL_73;
      }
    }

    else
    {
      sub_1CA36D9BC(v1, v131, v136, v130, v32, 0);
    }
  }

LABEL_98:
  OUTLINED_FUNCTION_36();
  result.value._rawValue = v127;
  result.is_nil = v128;
  return result;
}

id sub_1CA6AB604(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v6 = a3;
  v7 = a1;
  v8 = OUTLINED_FUNCTION_171();
  v9 = a4(v8);

  if (v9)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v10 = sub_1CA94C648();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

Swift::OpaquePointer_optional __swiftcall WFWorkflowActionTree.actions(inControlFlowBranch:)(WFAction *inControlFlowBranch)
{
  OUTLINED_FUNCTION_77_1();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36_15();
  sub_1CA285AF8(v9);
  v10 = *(v1 + 8);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v1, v11);
  v12 = sub_1CA311D00(v3, v10);
  v14 = v13;

  if (v14)
  {
    goto LABEL_11;
  }

  sub_1CA285AF8(v7);
  v15 = *(v7 + 32);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  v17 = sub_1CA285DC8(v7, v16);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 >= *(v15 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v15 + 48 * v12;
  v21 = *(v19 + 48);
  v20 = *(v19 + 56);
  v22 = *(v19 + 64);
  v23 = *(v19 + 72);
  v24 = OUTLINED_FUNCTION_86_5();
  sub_1CA36D94C(v24, v25, v26, v27, v28, v23);

  if (!v23)
  {
    v31 = OUTLINED_FUNCTION_86_5();
    sub_1CA36D9BC(v31, v32, v33, v34, v35, 0);
    goto LABEL_11;
  }

  if (v23 != 1)
  {

    goto LABEL_11;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (v22 >= *(v21 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = _s17ControlFlowBranchVMa(0);
  OUTLINED_FUNCTION_12(v29);
  v30 = sub_1CA94C218();
  sub_1CA6A71A4(v30);

LABEL_11:
  OUTLINED_FUNCTION_76_0();
LABEL_16:
  result.value._rawValue = v17;
  result.is_nil = v18;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WFWorkflowActionTree.actions(inside:)(WFAction_optional *inside)
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  if (v4)
  {
    sub_1CA285AF8(&v51 - v7);
    v9 = *(v8 + 1);
    sub_1CA94C218();
    v10 = v4;
    OUTLINED_FUNCTION_0_73();
    sub_1CA285DC8(v8, v11);
    v12 = sub_1CA311D00(v10, v9);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      sub_1CA285AF8(v2);
      v15 = *(v2 + 32);
      sub_1CA94C218();
      OUTLINED_FUNCTION_0_73();
      v17 = sub_1CA285DC8(v2, v16);
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v12 >= *(v15 + 16))
      {
        goto LABEL_33;
      }

      v19 = v15 + 48 * v12;
      v20 = *(v19 + 48);
      v21 = *(v19 + 56);
      v22 = *(v19 + 64);
      v23 = *(v19 + 72);
      v24 = OUTLINED_FUNCTION_87_6();
      sub_1CA36D94C(v24, v25, v26, v27, v28, v23);

      if (v23)
      {
        if (v23 == 1)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          if (v22 >= *(v20 + 16))
          {
            goto LABEL_35;
          }

          v29 = _s17ControlFlowBranchVMa(0);
          v30 = OUTLINED_FUNCTION_12(v29);
          v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
          v34 = *(v20 + v32 + *(v33 + 72) * v22 + *(v30 + 36));
          v35 = *(v34 + 16);
          if (v35)
          {
            v52 = MEMORY[0x1E69E7CC0];
            sub_1CA94C218();
            v17 = sub_1CA94D508();
            v51 = v34;
            v36 = (v34 + 64);
            do
            {
              if (*v36)
              {
                v37 = *(v36 - 2);
                if (!*(v37 + 16))
                {
                  goto LABEL_31;
                }

                v38 = *(v37 + v32);
              }

              else
              {
                v38 = *(v36 - 4);
              }

              v38;
              sub_1CA94D4D8();
              sub_1CA94D518();
              sub_1CA94D528();
              v17 = sub_1CA94D4E8();
              v36 += 40;
              --v35;
            }

            while (v35);

LABEL_24:
          }

          else
          {
          }
        }

        else
        {
        }

        goto LABEL_27;
      }

      v46 = OUTLINED_FUNCTION_87_6();
      sub_1CA36D9BC(v46, v47, v48, v49, v50, 0);
    }

LABEL_27:
    OUTLINED_FUNCTION_36();
    goto LABEL_36;
  }

  v39 = *(v1 + OBJC_IVAR___WFWorkflowActionTree_root);
  v40 = *(v39 + 16);
  if (!v40)
  {
    goto LABEL_27;
  }

  v52 = MEMORY[0x1E69E7CC0];
  sub_1CA94C218();
  v17 = sub_1CA94D508();
  v41 = (v39 + 64);
  while (1)
  {
    if ((*v41 & 1) == 0)
    {
      v45 = *(v41 - 4);
      goto LABEL_23;
    }

    v42 = *(v41 - 2);
    if (!*(v42 + 16))
    {
      break;
    }

    v43 = _s17ControlFlowBranchVMa(0);
    OUTLINED_FUNCTION_18_0(v43);
    v45 = *(v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)));
LABEL_23:
    v45;
    sub_1CA94D4D8();
    sub_1CA94D518();
    OUTLINED_FUNCTION_187();
    sub_1CA94D528();
    v17 = sub_1CA94D4E8();
    v41 += 40;
    if (!--v40)
    {
      goto LABEL_24;
    }
  }

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
  result.value._rawValue = v17;
  result.is_nil = v18;
  return result;
}

Swift::Bool __swiftcall WFWorkflowActionTree.actionIsConnectedToPreviousAction(_:)(WFAction *a1)
{
  sub_1CA636144();

  v1 = OUTLINED_FUNCTION_23();
  v3 = sub_1CA2B5D28(v1, v2);

  return v3 & 1;
}

id sub_1CA6ABDBC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_20_0();
  v5 = sub_1CA94C368();

  return v5;
}

uint64_t sub_1CA6ABE30(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR___WFWorkflowActionTree_root);
  sub_1CA94C218();
  sub_1CA6B2E48(0, 0xE000000000000000, v2, v3);

  return OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA6ABF90()
{
  v0 = sub_1CA6ABF20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1CA6ABFE4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions;
  sub_1CA94C218();
  v5 = sub_1CA94C218();
  v6 = sub_1CA6A9010(v5, a1);

  v7 = *(v2 + v4);
  sub_1CA94C218();
  v39 = sub_1CA6A9010(a1, v7);
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    sub_1CA28D4F8();
    sub_1CA94C948();
    v9 = v41;
    v8 = v42;
    v10 = v43;
    v11 = v44;
    v12 = v45;
  }

  else
  {
    v13 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v6 + 56);
    sub_1CA94C218();
    v11 = 0;
    v9 = v6;
  }

  v37 = v10;
  v16 = (v10 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_18:
      sub_1CA2BC138(v9);

      v23 = v39;
      if ((v39 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1CA94D2F8();
        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        sub_1CA28D4F8();
        sub_1CA94C948();
        v23 = v46;
        v24 = v47;
        v25 = v48;
        v26 = v49;
        v27 = v50;
      }

      else
      {
        v28 = -1 << *(v39 + 32);
        v24 = v39 + 56;
        v25 = ~v28;
        v29 = -v28;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v27 = v30 & *(v39 + 56);
        sub_1CA94C218();
        v26 = 0;
      }

      v38 = v25;
      v31 = (v25 + 64) >> 6;
      if (v23 < 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v32 = v26;
        v33 = v27;
        v34 = v26;
        if (!v27)
        {
          break;
        }

LABEL_29:
        v35 = (v33 - 1) & v33;
        v36 = *(*(v23 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));
        if (!v36)
        {
LABEL_35:
          sub_1CA2BC138(v23);

          return;
        }

        while (1)
        {
          [v36 addEventObserver_];

          v26 = v34;
          v27 = v35;
          if ((v23 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          if (sub_1CA94D358())
          {
            sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
            swift_dynamicCast();
            v36 = v40;
            v34 = v26;
            v35 = v27;
            if (v40)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_37;
        }

        if (v34 >= v31)
        {
          goto LABEL_35;
        }

        v33 = *(v24 + 8 * v34);
        ++v32;
        if (v33)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      [v21 removeEventObserver_];

      v11 = v19;
      v12 = v20;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v22 = sub_1CA94D358();
      if (v22)
      {
        v40 = v22;
        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        swift_dynamicCast();
        v21 = v46;
        v19 = v11;
        v20 = v12;
        if (v46)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_18;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1CA6AC3E0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions);
  *(v1 + OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions) = a1;
  sub_1CA6ABFE4(v2);
}

id sub_1CA6AC428()
{
  if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
  {
    sub_1CA2E90A8(MEMORY[0x1E69E7CC0], v1, v2, v3, v4, v5, v6, v7, v10.receiver, v10.super_class);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions] = v8;

  v10.receiver = v0;
  v10.super_class = _s14ActionObserverCMa();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

double sub_1CA6AC510()
{
  OUTLINED_FUNCTION_77_1();
  if ((*(v0 + OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_shouldIgnoreUpdates) & 1) != 0 || (v4 = v3, v5 = v2, v6 = v1, (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    OUTLINED_FUNCTION_76_0();
    return result;
  }

  v8 = Strong;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v6;
    if (![v10 mode])
    {
      if (sub_1CA94C3A8() == v5 && v12 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_116();
        v14 = sub_1CA94D7F8();

        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      sub_1CA6A6714(v10);
    }

LABEL_14:
  }

  v16 = OUTLINED_FUNCTION_69();
  sub_1CA365554(v16, v17, v4, v8);

  v18 = OUTLINED_FUNCTION_69();
  sub_1CA635D60(v18, v19, v4);

  OUTLINED_FUNCTION_76_0();

  return result;
}

void sub_1CA6AC73C(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = _s17ControlFlowBranchVMa(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA6A6D28(a1, &v37);
  if ((v39 & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(&v38 + 1);
  v12 = v38;
  if ((a2 & 1) == 0)
  {
    v36[0] = v37;
    sub_1CA94C218();
    sub_1CA94C218();
    v26 = v11;
    sub_1CA36D8A0(v36);
    v40 = v12;
LABEL_20:
    sub_1CA27080C(&v40, &unk_1EC448100, &qword_1CA991FF8);

LABEL_21:
    v28 = v38;
    *a3 = v37;
    *(a3 + 16) = v28;
    *(a3 + 32) = v39;
    return;
  }

  v35 = v37;
  v40 = v38;
  v13 = *(v38 + 16);
  if (!v13)
  {
    v25 = *(&v37 + 1);
    sub_1CA94C218();
    sub_1CA94C218();
    v27 = v11;
    v17 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1CA4FC7D4(a1, a1, v17);
    *&v36[0] = v35;
    *(&v36[0] + 1) = v25;
    sub_1CA36D8A0(v36);
    goto LABEL_20;
  }

  v30 = *(&v37 + 1);
  v31 = a1;
  v32 = v3;
  v33 = *(&v38 + 1);
  v34 = a3;
  v14 = *(v7 + 28);
  v15 = v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  sub_1CA6B2BCC(&v37, v36);
  sub_1CA2D9D20(&v40, v36, &unk_1EC448100, &qword_1CA991FF8);
  v16 = *(v8 + 72);
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1CA285A0C(v15, v10);
    v18 = *&v10[v14];
    sub_1CA94C218();
    sub_1CA285DC8(v10, _s17ControlFlowBranchVMa);
    v19 = *(v18 + 16);
    v20 = *(v17 + 16);
    if (__OFADD__(v20, v19))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > *(v17 + 24) >> 1)
    {
      sub_1CA2E6A4C();
      v17 = v21;
    }

    if (*(v18 + 16))
    {
      if ((*(v17 + 24) >> 1) - *(v17 + 16) < v19)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v22 = *(v17 + 16);
        v23 = __OFADD__(v22, v19);
        v24 = v22 + v19;
        if (v23)
        {
          goto LABEL_25;
        }

        *(v17 + 16) = v24;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_23;
      }
    }

    v15 += v16;
    if (!--v13)
    {
      sub_1CA27080C(&v40, &unk_1EC448100, &qword_1CA991FF8);
      v11 = v33;
      a3 = v34;
      a1 = v31;
      v25 = v30;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_1CA6ACA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
  v5 = sub_1CA94C648();

  v6 = sub_1CA948CD8();
  v7 = [v3 initWithValues:v5 identity:v6];

  v8 = sub_1CA948D28();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

void sub_1CA6ACE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71_0();
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443E60, &qword_1CA9824D0);
    OUTLINED_FUNCTION_171();
    v25 = sub_1CA94D3D8();
    v33 = v25;
    sub_1CA94D2F8();
    while (1)
    {
      if (!sub_1CA94D358())
      {

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_84_4();
      sub_1CA949FB8();
      swift_dynamicCast();
      if (*(v25 + 24) <= *(v25 + 16))
      {
        sub_1CA6AE07C();
      }

      v25 = v33;
      OUTLINED_FUNCTION_19_27();
      sub_1CA6B2C04(&unk_1EC4448B0, v26);
      sub_1CA94C288();
      OUTLINED_FUNCTION_56_10();
      if (((-1 << v27) & ~v28) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_35_17();
LABEL_14:
      OUTLINED_FUNCTION_29_18(v29);
      *(*(v33 + 48) + 8 * v32) = a11;
      OUTLINED_FUNCTION_42_10();
    }

    OUTLINED_FUNCTION_120_6();
    while (1)
    {
      OUTLINED_FUNCTION_119_4();
      if (v31)
      {
        if (v30)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_53_14();
      if (!v31)
      {
        OUTLINED_FUNCTION_34_18();
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_17:
    OUTLINED_FUNCTION_73();
  }
}

void sub_1CA6AD1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_10_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444910, &qword_1CA982708);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v33)
  {
LABEL_23:

    *v30 = v32;
    OUTLINED_FUNCTION_64_10();
    return;
  }

  v34 = 0;
  OUTLINED_FUNCTION_8_36();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  if ((v36 & v35) == 0)
  {
LABEL_4:
    v41 = v34;
    while (1)
    {
      v34 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v34 >= v39)
      {
        break;
      }

      ++v41;
      if (*(v31 + 8 * v34))
      {
        OUTLINED_FUNCTION_1_41();
        v37 = v43 & v42;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v52 != v53)
    {
      OUTLINED_FUNCTION_26_23(v51);
    }

    else
    {
      v54 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v54, v55, v31);
    }

    *(v31 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_32_18();
LABEL_9:
    v44 = (*(v31 + 48) + 16 * (v40 | (v34 << 6)));
    v45 = *v44;
    v46 = v44[1];
    sub_1CA94D918();
    sub_1CA94C458();
    sub_1CA94D968();
    OUTLINED_FUNCTION_13_38();
    OUTLINED_FUNCTION_34_0();
    if (v47)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_17:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_67_9();
    v50 = (*(v32 + 48) + 16 * v49);
    *v50 = v45;
    v50[1] = v46;
    OUTLINED_FUNCTION_23_16();
    if (!v37)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v47)
    {
      if (v48)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_68_11();
    if (!v47)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1CA6AD350()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v0;
  OUTLINED_FUNCTION_40();
  v37 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v36 = v7 - v6;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444168, &qword_1CA982790);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v9)
  {
LABEL_28:

    *v2 = v1;
    OUTLINED_FUNCTION_36();
    return;
  }

  v33 = v8;
  v10 = 0;
  v11 = (v8 + 56);
  v12 = 1 << *(v8 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v8 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = v1 + 56;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      ++v18;
      if (v11[v10])
      {
        OUTLINED_FUNCTION_1_41();
        v14 = v20 & v19;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v29 != v30)
    {
      *v11 = -1 << v28;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v31, v32, v11);
    }

    v2 = v0;
    *(v8 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_103_4();
LABEL_12:
    v34 = *(v4 + 72);
    v35 = *(v4 + 32);
    v35(v36, *(v8 + 48) + v34 * (v17 | (v10 << 6)), v37);
    sub_1CA6B2C04(&qword_1EC441D00, MEMORY[0x1E69DB0B8]);
    sub_1CA94C288();
    OUTLINED_FUNCTION_13_38();
    OUTLINED_FUNCTION_34_0();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_22:
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_57_12();
    *(v16 + v25) = v26;
    v35(*(v1 + 48) + v27 * v34, v36, v37);
    OUTLINED_FUNCTION_23_16();
    v8 = v33;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v16 + 8 * v22) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1CA6AD608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_10_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448E0, &unk_1CA982760);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v35)
  {
LABEL_31:

    *v32 = v34;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v59 = v33;
  v36 = 0;
  v37 = v33;
  OUTLINED_FUNCTION_8_36();
  v40 = v39 & v38;
  OUTLINED_FUNCTION_70_13();
  if (!v40)
  {
LABEL_4:
    v42 = v36;
    while (1)
    {
      v36 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v36 >= v32)
      {
        break;
      }

      OUTLINED_FUNCTION_95_7();
      if (v43)
      {
        OUTLINED_FUNCTION_1_41();
        v40 = v45 & v44;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v55 != v56)
    {
      OUTLINED_FUNCTION_26_23(v54);
    }

    else
    {
      v57 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v57, v58, v37);
    }

    OUTLINED_FUNCTION_118_5();
    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_121_4();
LABEL_9:
    v46 = *(*(v33 + 48) + 8 * (v41 | (v36 << 6)));
    sub_1CA94D918();
    v47 = *(v46 + 24);
    switch(*(v46 + 40))
    {
      case 1:
        MEMORY[0x1CCAA2780](1);
        sub_1CA94CFE8();
        break;
      case 2:
        v49 = 2;
        goto LABEL_14;
      case 3:
        v49 = 3;
LABEL_14:
        MEMORY[0x1CCAA2780](v49);
        sub_1CA94CFE8();
        v48 = v47;
        goto LABEL_15;
      case 4:
        v48 = 4;
LABEL_15:
        MEMORY[0x1CCAA2780](v48);
        break;
      default:
        MEMORY[0x1CCAA2780](0);
        sub_1CA94CFE8();
        sub_1CA94C458();
        break;
    }

    sub_1CA94D968();
    OUTLINED_FUNCTION_13_38();
    OUTLINED_FUNCTION_34_0();
    if (v50)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_25:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_54_9();
    *(v53 + 8 * v52) = v46;
    OUTLINED_FUNCTION_23_16();
    v33 = v59;
    if (!v40)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v50)
    {
      if (v51)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_104_6();
    OUTLINED_FUNCTION_38_14();
    if (!v50)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1CA6AD804()
{
  OUTLINED_FUNCTION_10_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444898, &unk_1CA984350);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_51_10();
  if (!v3)
  {
LABEL_28:

    *v0 = v1;
    return;
  }

  v4 = 0;
  v6 = (v2 + 56);
  v5 = *(v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v0 = (v8 & v5);
  v9 = v1 + 56;
  if ((v8 & v5) == 0)
  {
LABEL_7:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= ((v7 + 63) >> 6))
      {
        break;
      }

      ++v11;
      if (v6[v4])
      {
        OUTLINED_FUNCTION_1_41();
        v0 = (v13 & v12);
        goto LABEL_12;
      }
    }

    if (v7 >= 64)
    {
      sub_1CA5C3FA4(0, (v7 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v7;
    }

    OUTLINED_FUNCTION_118_5();
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_33_17();
LABEL_12:
    v14 = *(*(v2 + 48) + 8 * (v10 | (v4 << 6)));
    sub_1CA94D908();
    OUTLINED_FUNCTION_44_10();
    if (((-1 << v16) & ~*(v9 + 8 * v15)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_22:
    OUTLINED_FUNCTION_2_11();
    *(v9 + v21) |= v22;
    *(*(v1 + 48) + 8 * v23) = v14;
    OUTLINED_FUNCTION_69_10();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v20)
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

    if (*(v9 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1CA6AD9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_88_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444860, &unk_1CA984330);
  OUTLINED_FUNCTION_97_4();
  v35 = sub_1CA94D3C8();
  if (!*(v33 + 16))
  {
LABEL_23:

    *v32 = v35;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v60 = v33;
  v36 = 0;
  v37 = v33;
  OUTLINED_FUNCTION_8_36();
  v40 = v39 & v38;
  OUTLINED_FUNCTION_70_13();
  if (!v40)
  {
LABEL_4:
    v43 = v36;
    while (1)
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v36 >= v32)
      {
        break;
      }

      OUTLINED_FUNCTION_95_7();
      if (v44)
      {
        OUTLINED_FUNCTION_1_41();
        v40 = v46 & v45;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_25_4();
    if (v57 >= 64)
    {
      v58 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v58, v59, v37);
    }

    else
    {
      OUTLINED_FUNCTION_26_23(v57);
    }

    *(v33 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_55_7();
LABEL_9:
    v47 = (*(v33 + 48) + (v41 | (v36 << 6)) * v42);
    v48 = *v47;
    v49 = v47[1];
    v50 = v47[2];
    sub_1CA94D918();
    MEMORY[0x1CCAA2780](v48);
    sub_1CA94C458();
    sub_1CA94D968();
    OUTLINED_FUNCTION_13_38();
    OUTLINED_FUNCTION_34_0();
    if (v51)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_17:
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_57_12();
    *(v34 + v53) = v54;
    v56 = (*(v35 + 48) + 24 * v55);
    *v56 = v48;
    v56[1] = v49;
    v56[2] = v50;
    OUTLINED_FUNCTION_23_16();
    v33 = v60;
    if (!v40)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v51)
    {
      if (v52)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_104_6();
    OUTLINED_FUNCTION_38_14();
    if (!v51)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1CA6ADB50()
{
  OUTLINED_FUNCTION_10_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481D0, &unk_1CA984390);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v5)
  {
LABEL_23:

    *v0 = v2;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_114_3();
  v0 = (v8 & v7);
  v10 = (v9 + 63) >> 6;
  v11 = v2 + 56;
  if ((v8 & v7) == 0)
  {
LABEL_4:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v6 >= v10)
      {
        break;
      }

      ++v13;
      if (*(v3 + 8 * v6))
      {
        OUTLINED_FUNCTION_1_41();
        v0 = (v15 & v14);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v24 != v25)
    {
      OUTLINED_FUNCTION_26_23(v23);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v26, v27, v3);
    }

    OUTLINED_FUNCTION_118_5();
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_33_17();
LABEL_9:
    memcpy(__dst, (*(v1 + 48) + 112 * (v12 | (v6 << 6))), sizeof(__dst));
    sub_1CA94D918();
    sub_1CA368780();
    sub_1CA94D968();
    OUTLINED_FUNCTION_44_10();
    if (((v4 << v17) & ~*(v11 + 8 * v16)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_17:
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_57_12();
    *(v11 + v20) = v21;
    memcpy((*(v2 + 48) + 112 * v22), __dst, 0x70uLL);
    OUTLINED_FUNCTION_23_16();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v19)
    {
      if (v18)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_38_14();
    if (!v19)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1CA6ADCF8()
{
  OUTLINED_FUNCTION_88_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4448D0, &unk_1CA992050);
  OUTLINED_FUNCTION_97_4();
  v2 = sub_1CA94D3C8();
  if (!*(v1 + 16))
  {
LABEL_26:

    *v0 = v2;
    return;
  }

  v28 = v1;
  v3 = 0;
  v4 = v1;
  OUTLINED_FUNCTION_8_36();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_70_13();
  if (!v7)
  {
LABEL_4:
    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v3 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_95_7();
      if (v10)
      {
        OUTLINED_FUNCTION_1_41();
        v7 = v12 & v11;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_25_4();
    if (v25 >= 64)
    {
      v26 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v26, v27, v4);
    }

    else
    {
      OUTLINED_FUNCTION_26_23(v25);
    }

    *(v1 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_55_7();
LABEL_9:
    v13 = *(v1 + 48) + 32 * (v8 | (v3 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    sub_1CA94D918();
    v30 = v15;
    sub_1CA94C458();
    v29 = v16;
    sub_1CA94D948();
    MEMORY[0x1CCAA2780](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        v19 += 8;
        OUTLINED_FUNCTION_126_5();
        --v18;
      }

      while (v18);
    }

    sub_1CA94D968();
    OUTLINED_FUNCTION_13_38();
    OUTLINED_FUNCTION_34_0();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_20:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_54_9();
    v24 = v23 + 32 * v22;
    *v24 = v14;
    *(v24 + 8) = v30;
    *(v24 + 16) = v29;
    *(v24 + 24) = v17;
    OUTLINED_FUNCTION_23_16();
    v1 = v28;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v20)
    {
      if (v21)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_104_6();
    OUTLINED_FUNCTION_38_14();
    if (!v20)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_20;
    }
  }

LABEL_28:
  __break(1u);
}

void sub_1CA6ADEF0()
{
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_10_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C8, &unk_1CA984370);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v4)
  {
LABEL_28:

    *v0 = v2;
    OUTLINED_FUNCTION_64_10();
    return;
  }

  v31 = v0;
  v5 = 0;
  OUTLINED_FUNCTION_15_27();
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v11 = v2 + 56;
  if ((v8 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      ++v13;
      if (*(v3 + 8 * v5))
      {
        OUTLINED_FUNCTION_1_41();
        v9 = v15 & v14;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v27 != v28)
    {
      OUTLINED_FUNCTION_26_23(v26);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v29, v30, v3);
    }

    v0 = v31;
    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_33_17();
LABEL_12:
    v16 = *(*(v1 + 48) + 2 * (v12 | (v5 << 6)));
    sub_1CA94D918();
    sub_1CA94D948();
    sub_1CA94D968();
    OUTLINED_FUNCTION_44_10();
    if (((-1 << v18) & ~*(v11 + 8 * v17)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_22:
    OUTLINED_FUNCTION_2_11();
    *(v11 + v23) |= v24;
    *(*(v2 + 48) + 2 * v25) = v16;
    OUTLINED_FUNCTION_23_16();
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v22)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    if (*(v11 + 8 * v19) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1CA6AE07C()
{
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_10_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443E60, &qword_1CA9824D0);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v3)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_73();
    return;
  }

  v26 = v1;
  v4 = 0;
  v5 = v1;
  OUTLINED_FUNCTION_8_36();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v0 = (v2 + 56);
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v10)
      {
        break;
      }

      OUTLINED_FUNCTION_95_7();
      if (v13)
      {
        OUTLINED_FUNCTION_1_41();
        v8 = v15 & v14;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v22 != v23)
    {
      OUTLINED_FUNCTION_26_23(v21);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v24, v25, v5);
    }

    OUTLINED_FUNCTION_118_5();
    goto LABEL_23;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_9:
    v16 = *(*(v1 + 48) + 8 * (v11 | (v4 << 6)));
    sub_1CA949FB8();
    OUTLINED_FUNCTION_19_27();
    sub_1CA6B2C04(&unk_1EC4448B0, v17);
    sub_1CA94C288();
    OUTLINED_FUNCTION_13_38();
    OUTLINED_FUNCTION_34_0();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_17:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_67_9();
    *(*(v2 + 48) + 8 * v20) = v16;
    OUTLINED_FUNCTION_23_16();
    v1 = v26;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_68_11();
    if (!v18)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1CA6AE254()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_10_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_61_11();
  if (!v7)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_36();
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_114_3();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v15;
      if (*(v3 + 8 * v8))
      {
        OUTLINED_FUNCTION_1_41();
        v11 = v17 & v16;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_17_21();
    if (v26 != v27)
    {
      OUTLINED_FUNCTION_26_23(v25);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_23_21();
      sub_1CA5C3FA4(v28, v29, v3);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_25_21();
LABEL_9:
    v18 = *(*(v1 + 48) + 8 * (v14 | (v8 << 6)));
    sub_1CA94CFC8();
    OUTLINED_FUNCTION_44_10();
    if (((v4 << v20) & ~*(v2 + 56 + 8 * v19)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_17:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_54_9();
    *(v24 + 8 * v23) = v18;
    OUTLINED_FUNCTION_23_16();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v22)
    {
      if (v21)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_38_14();
    if (!v22)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1CA6AE398(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  sub_1CA36417C(v8, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v4 = sub_1CA94D968();
  OUTLINED_FUNCTION_39_13(v4);
  sub_1CA94D2D8();
  OUTLINED_FUNCTION_48_10();
  *(a2 + 56 + v5) |= v6;
  *(*(a2 + 48) + 8 * v7) = a1;
  OUTLINED_FUNCTION_42_10();
}

void sub_1CA6AE420(uint64_t a1, uint64_t a2)
{
  sub_1CA949FB8();
  OUTLINED_FUNCTION_19_27();
  sub_1CA6B2C04(v4, v5);
  v6 = sub_1CA94C288();
  OUTLINED_FUNCTION_39_13(v6);
  sub_1CA94D2D8();
  OUTLINED_FUNCTION_48_10();
  *(a2 + 56 + v7) |= v8;
  *(*(a2 + 48) + 8 * v9) = a1;
  OUTLINED_FUNCTION_42_10();
}

void sub_1CA6AE4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA94CFC8();
  OUTLINED_FUNCTION_39_13(v4);
  sub_1CA94D2D8();
  OUTLINED_FUNCTION_48_10();
  *(a2 + 56 + v5) |= v6;
  *(*(a2 + 48) + 8 * v7) = a1;
  OUTLINED_FUNCTION_42_10();
}

void sub_1CA6AE534()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444910, &qword_1CA982708);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_49_11();
    while (v2)
    {
      OUTLINED_FUNCTION_25_21();
LABEL_15:
      OUTLINED_FUNCTION_124_6();
      v16 = (v15 + 16 * v14);
      v17 = v16[1];
      v18 = (v0[6] + 16 * v14);
      *v18 = *v16;
      v18[1] = v17;
      sub_1CA94C218();
    }

    v10 = v9;
    while (1)
    {
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v9 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_125_5();
      if (v11)
      {
        OUTLINED_FUNCTION_1_41();
        v2 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AE654()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444898, &unk_1CA984350);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    OUTLINED_FUNCTION_46_13();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_97_6();
LABEL_15:
        *(v0[6] + 8 * v13) = *(*(v1 + 48) + 8 * v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        OUTLINED_FUNCTION_96_8();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_1CA6AE708()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444860, &unk_1CA984330);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_49_11();
    while (v2)
    {
      OUTLINED_FUNCTION_25_21();
LABEL_15:
      OUTLINED_FUNCTION_124_6();
      v14 *= 3;
      v16 = (v15 + 8 * v14);
      v17 = v16[1];
      v18 = v16[2];
      v19 = (v0[6] + 8 * v14);
      *v19 = *v16;
      v19[1] = v17;
      v19[2] = v18;
      sub_1CA94C218();
    }

    v10 = v9;
    while (1)
    {
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v9 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_125_5();
      if (v11)
      {
        OUTLINED_FUNCTION_1_41();
        v2 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AE7E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481D0, &unk_1CA984390);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    v9 = 0;
    v0[2] = v1[2];
    OUTLINED_FUNCTION_25_4();
    v11 = -1;
    v12 = v1[7];
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v13 = v11 & v12;
    v14 = (v10 + 63) >> 6;
    if ((v11 & v12) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_103_4();
LABEL_17:
        v19 = v1[6];
        v20 = 112 * (v15 | (v9 << 6));
        memcpy(__dst, (v19 + v20), 0x70uLL);
        memmove((v0[6] + v20), (v19 + v20), 0x70uLL);
        sub_1CA2D9D20(__dst, v21, &qword_1EC4440C0, &qword_1CA983470);
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      ++v16;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_1_41();
        v13 = v18 & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v0 = v0;
  }
}

void sub_1CA6AE930()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4448D0, &unk_1CA992050);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_4_57();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_121_4();
LABEL_15:
        v19 = v15 | (v9 << 6);
        v20 = *(v1 + 48) + 32 * v19;
        v21 = *(v20 + 8);
        v22 = *(v20 + 16);
        v23 = *(v20 + 24);
        v24 = v0[6] + 32 * v19;
        *v24 = *v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
        sub_1CA94C218();
        sub_1CA94C218();
      }

      while (v12);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_1_41();
        v12 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AEA28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C8, &unk_1CA984370);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_55();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_79_7(v4, v5);
    }

    OUTLINED_FUNCTION_46_13();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_97_6();
LABEL_15:
        *(v0[6] + 2 * v13) = *(*(v1 + 48) + 2 * v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        OUTLINED_FUNCTION_96_8();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_1CA6AEAF0()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_55();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_79_7(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_49_11();
    while (v2)
    {
      OUTLINED_FUNCTION_25_21();
LABEL_15:
      OUTLINED_FUNCTION_124_6();
      *(v0[6] + 8 * v16) = *(v17 + 8 * v16);
    }

    v12 = v11;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_125_5();
      if (v13)
      {
        OUTLINED_FUNCTION_1_41();
        v2 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AEBD0()
{
  OUTLINED_FUNCTION_77_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_47_15();
  OUTLINED_FUNCTION_51_10();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_55();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_79_7(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_49_11();
    for (; v2; v19 = v18)
    {
      OUTLINED_FUNCTION_25_21();
LABEL_15:
      OUTLINED_FUNCTION_124_6();
      v18 = *(v17 + 8 * v16);
      *(v0[6] + 8 * v16) = v18;
    }

    v12 = v11;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_125_5();
      if (v13)
      {
        OUTLINED_FUNCTION_1_41();
        v2 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6AEC88()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v13 = *v0;
  v14 = sub_1CA94D3B8();
  if (v13[2])
  {
    v30 = v5;
    OUTLINED_FUNCTION_25_4();
    v17 = (v16 + 63) >> 6;
    if (v14 != v13 || v15 >= &v13[v17 + 7])
    {
      memmove(v15, v13 + 7, 8 * v17);
    }

    v19 = 0;
    *(v14 + 16) = v13[2];
    OUTLINED_FUNCTION_25_4();
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v13[7];
    v23 = (v20 + 63) >> 6;
    v31 = v9 + 32;
    v32 = v9 + 16;
    while (v22)
    {
      OUTLINED_FUNCTION_32_18();
LABEL_17:
      v28 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, v13[6] + v28, v7);
      (*(v9 + 32))(*(v14 + 48) + v28, v12, v7);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v5 = v30;
        goto LABEL_21;
      }

      ++v25;
      if (v13[v19 + 7])
      {
        OUTLINED_FUNCTION_1_41();
        v22 = v27 & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v14;
    OUTLINED_FUNCTION_36();
  }
}

void *sub_1CA6AEE88(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1CA42B198(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1CA6AEF44(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1CA94D908();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CA6AE654();
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_1CA6AF710(v7);
  *v2 = v12;
  return v8;
}

void sub_1CA6AF018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_65_7();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = *v30;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v37);
  sub_1CA94C458();
  v39 = sub_1CA94D968();
  v40 = v38 + 56;
  v41 = -1 << *(v38 + 32);
  v42 = v39 & ~v41;
  if ((*(v38 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
  {
    v43 = ~v41;
    v44 = *(v38 + 48);
    while (1)
    {
      v45 = (v44 + 24 * v42);
      if (*v45 == v37)
      {
        v46 = v45[1] == v35 && v45[2] == v33;
        if (v46 || (sub_1CA94D7F8() & 1) != 0)
        {
          break;
        }
      }

      v42 = (v42 + 1) & v43;
      if (((*(v40 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CA6AE708();
    }

    sub_1CA6AF888(v42);
    *v31 = v48;
  }

LABEL_14:
  OUTLINED_FUNCTION_64_10();
}

uint64_t sub_1CA6AF174(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v10 = sub_1CA94CFC8();
    v11 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = sub_1CA94CFD8();

      if (v14)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v18 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CA6AEBD0();
          v16 = v18;
        }

        v9 = *(*(v16 + 48) + 8 * v12);
        sub_1CA6AFA74(v12);
        *v2 = v18;
        return v9;
      }

      v10 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1CA94C218();
  v6 = a1;
  v7 = sub_1CA94D368();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  sub_1CA6AF59C(v5, v6);
  v9 = v8;

  return v9;
}

uint64_t sub_1CA6AF304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1CA9494C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
  v25 = a1;
  v9 = sub_1CA94C288();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_1CA6B2C04(&qword_1EC441D98, MEMORY[0x1E69A1168]);
    v13 = sub_1CA94C358();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CA6AEC88();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_1CA6AFC08(v11);
  v14 = 0;
  *v16 = v26;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
}

void sub_1CA6AF59C(uint64_t a1, uint64_t a2)
{

  v2 = sub_1CA94D328();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1CA6AD050(v3, v2, &unk_1EC448110, &unk_1CA984360, &qword_1EDB9F5D0, off_1E836DCF8);

  v5 = sub_1CA94CFC8();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      break;
    }

    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v8 = *(*(v4 + 48) + 8 * v7);
    v9 = sub_1CA94CFD8();

    if (v9)
    {

      sub_1CA6AFA74(v7);
      if (sub_1CA94CFD8())
      {
        *v10 = v4;
        return;
      }

      __break(1u);
      break;
    }

    v5 = v7 + 1;
  }

  __break(1u);
}

void sub_1CA6AF710(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CA94D2C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1CA94D908() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }
}

void sub_1CA6AF888(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CA94D2C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = v4;
        v11 = *(*(v3 + 48) + 24 * v6);
        sub_1CA94D918();
        MEMORY[0x1CCAA2780](v11);
        sub_1CA94C218();
        sub_1CA94C458();
        v12 = sub_1CA94D968();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_9:
            v15 = *(v3 + 48);
            v16 = v15 + 24 * v2;
            v17 = (v15 + 24 * v6);
            v18 = v2 != v6 || v16 >= v17 + 24;
            v4 = v10;
            if (v18)
            {
              v19 = *v17;
              *(v16 + 16) = *(v17 + 2);
              *v16 = v19;
              v2 = v6;
            }

            goto LABEL_21;
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_9;
        }

        v4 = v10;
LABEL_21:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }
}

void sub_1CA6AFA74(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CA94D2C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1CA94CFC8();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_1CA6AFC08(int64_t a1)
{
  v3 = sub_1CA9494C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1CA94D2C8();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v36 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v35 = v14;
      v15 = *(v13 + 56);
      v37 = v13;
      v38 = v15;
      v16 = v11;
      v17 = (v13 - 8);
      v18 = v7;
      while (1)
      {
        v19 = v8;
        v20 = v38 * v10;
        v21 = v16;
        v35(v6, *(v18 + 48) + v38 * v10, v3);
        v22 = v18;
        sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
        v23 = sub_1CA94C288();
        (*v17)(v6, v3);
        v16 = v21;
        v24 = v23 & v21;
        if (a1 >= v36)
        {
          if (v24 < v36 || a1 < v24)
          {
LABEL_20:
            v18 = v22;
            goto LABEL_24;
          }
        }

        else if (v24 < v36 && a1 < v24)
        {
          goto LABEL_20;
        }

        v18 = v22;
        v26 = *(v22 + 48);
        v27 = v38 * a1;
        v28 = v26 + v38 * a1;
        v29 = v26 + v20 + v38;
        if (v38 * a1 < v20 || v28 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v16 = v21;
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v27 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v16;
        v8 = v19;
        if (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v7;
LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v7;
  }

  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

void sub_1CA6AFF14()
{
  OUTLINED_FUNCTION_37_0();
  v6 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = *v0;
  v12 = (v11 + 32 + 16 * v1);
  swift_arrayDestroy();
  v13 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, v10))
  {
    goto LABEL_16;
  }

  sub_1CA26E4B4((v11 + 32 + 16 * v10), v14 - v10, &v12[2 * v9]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (v9 < 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    *v12 = v8;
    v12[1] = v7;
    if (v12 + 2 < &v12[2 * v9])
    {
      sub_1CA94C218();
      __break(1u);
    }

    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA6B0018()
{
  OUTLINED_FUNCTION_77_1();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = v9 + 32 + 40 * v1;
  swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  if (__OFSUB__(v13, v8))
  {
    goto LABEL_15;
  }

  sub_1CA440438((v9 + 32 + 40 * v8), v13 - v8, (v10 + 40 * v7));
  v14 = *(v9 + 16);
  v11 = __OFADD__(v14, v12);
  v15 = v14 + v12;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (v7 >= 1)
  {
    if (*(v6 + 16) == v7)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  OUTLINED_FUNCTION_76_0();
}

void sub_1CA6B0108(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_1CA94D328();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1CA440434((v8 + 8 * v6), &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_1CA94D328();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1CA6B0270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    goto LABEL_6;
  }

LABEL_23:
  v15 = sub_1CA94D328();
LABEL_6:
  if (__OFSUB__(v15, v7))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1CA6B2C64(v4, sub_1CA6B2C48);
  }

  sub_1CA440434(&v9[v7], v15 - v7, (v6 + 8 * v8));
  if (v10)
  {
    v13 = sub_1CA94D328();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_25;
  }

  v5[2] = v13 + v11;
LABEL_12:
  if (v8 < 1)
  {
  }

  result = MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA6B043C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CA6B04B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_65_7();
  v34 = v33;
  if (!v32)
  {
LABEL_5:

    goto LABEL_6;
  }

  v35 = v32;
  if (*(v33 + 16) == v32)
  {
LABEL_6:
    OUTLINED_FUNCTION_64_10();
    return;
  }

  OUTLINED_FUNCTION_105_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444910, &qword_1CA982708);
  OUTLINED_FUNCTION_171();
  v36 = sub_1CA94D3E8();
  v37 = v36;
  if (v30 < 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = *v31;
  }

  v39 = 0;
  v40 = v36 + 56;
  v57 = v34;
  while (v38)
  {
    OUTLINED_FUNCTION_33_17();
LABEL_16:
    v45 = (*(v34 + 48) + 16 * (v41 | (v39 << 6)));
    v46 = *v45;
    v47 = v45[1];
    sub_1CA94D918();
    sub_1CA94C218();
    sub_1CA94C458();
    sub_1CA94D968();
    OUTLINED_FUNCTION_13_38();
    OUTLINED_FUNCTION_34_0();
    if (v48)
    {
      OUTLINED_FUNCTION_5_2();
      while (1)
      {
        OUTLINED_FUNCTION_35_15();
        if (v48)
        {
          if (v50)
          {
            goto LABEL_30;
          }
        }

        if (v49 == v51)
        {
          v49 = 0;
        }

        if (*(v40 + 8 * v49) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_6_4();
LABEL_26:
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_57_12();
    *(v40 + v52) = v53;
    v55 = (*(v37 + 48) + 16 * v54);
    *v55 = v46;
    v55[1] = v47;
    OUTLINED_FUNCTION_74_8();
    if (__OFSUB__(v35--, 1))
    {
      goto LABEL_31;
    }

    v34 = v57;
    if (!v35)
    {
      goto LABEL_5;
    }
  }

  v42 = v39;
  while (1)
  {
    v39 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v39 >= v30)
    {
      goto LABEL_5;
    }

    ++v42;
    if (v31[v39])
    {
      OUTLINED_FUNCTION_1_41();
      v38 = v44 & v43;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}