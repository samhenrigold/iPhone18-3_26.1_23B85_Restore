id sub_1CA3D8E48()
{
  v86 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6E6968746F4E4657;
  *(inited + 48) = 0xEF6E6F6974634167;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("nil|nothing|empty|discard|clear", 31);
  v6 = v5;
  v7 = sub_1CA94C438("nil|nothing|empty|discard|clear", 31);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = v11;
  v12 = &v81 - v91;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v88 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v90 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v81 - v87;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v89 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v85 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionResult";
  v21 = @"Description";
  v22 = @"DescriptionResult";
  v23 = sub_1CA94C438("Nothing", 7);
  v82 = v24;
  v83 = v23;
  v25 = sub_1CA94C438("Nothing", 7);
  v81 = v26;
  v84 = &v81;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v91;
  sub_1CA948D98();
  v28 = v88;
  v29 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v87;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v83, v82, v25, v81, 0, 0, v27, &v81 - v30);
  *(v20 + 64) = v89;
  *(v20 + 72) = @"DescriptionSummary";
  v32 = @"DescriptionSummary";
  v33 = sub_1CA94C438("This action does nothing and produces no output. It is useful to separate blocks of actions, or to explicitly pass an empty input to an action.", 143);
  v82 = v34;
  v83 = v33;
  v35 = sub_1CA94C438("This action does nothing and produces no output. It is useful to separate blocks of actions, or to explicitly pass an empty input to an action.", 143);
  v37 = v36;
  v84 = &v81;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v81 - v91;
  sub_1CA948D98();
  v39 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v83, v82, v35, v37, 0, 0, v38, &v81 - v30);
  *(v20 + 104) = v89;
  *(v20 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v42 = sub_1CA94C1E8();
  v43 = v85;
  *(inited + 120) = sub_1CA6B3784(v42);
  *(inited + 144) = v43;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x7261656C43;
  *(inited + 168) = 0xE500000000000000;
  v44 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "square.dashed");
  *(inited + 214) = -4864;
  *(inited + 224) = v44;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 0x6C6562614CLL;
  *(inited + 248) = 0xE500000000000000;
  *(inited + 264) = v44;
  *(inited + 272) = @"InputPassthrough";
  v45 = MEMORY[0x1E69E6370];
  *(inited + 280) = 0;
  *(inited + 304) = v45;
  *(inited + 312) = @"Name";
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"IconSymbolColor";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438("Nothing (Action Name)", 21);
  v53 = v52;
  v54 = sub_1CA94C438("Nothing", 7);
  v56 = v55;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v81 - v91;
  sub_1CA948D98();
  v58 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v81 - v87;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  *(inited + 344) = v89;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_1CA9813C0;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x63696C627550;
  *(v61 + 56) = 0xE600000000000000;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  *(v61 + 96) = 0;
  *(v61 + 120) = MEMORY[0x1E69E6370];
  *(v61 + 128) = 0x7365707954;
  *(v61 + 136) = 0xE500000000000000;
  *(v61 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v61 + 144) = &unk_1F49F89E0;
  v62 = @"Output";
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v63;
  *(inited + 384) = v64;
  *(inited + 392) = @"ParameterSummary";
  v65 = @"ParameterSummary";
  v66 = sub_1CA94C438("Nothing (Parameter Summary)", 27);
  v68 = v67;
  v69 = sub_1CA94C438("Nothing", 7);
  v71 = v70;
  v89 = &v81;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v81 - v91;
  sub_1CA948D98();
  v73 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v81 - v87;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v66, v68, v69, v71, 0, 0, v72, v74);
  v77 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v78 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v77;
  *(inited + 424) = v78;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v79 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3D98D4()
{
  v143 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9B1510;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("loop|while|for", 14);
  v7 = v6;
  v8 = sub_1CA94C438("loop|while|for", 14);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v147 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v148 = v12;
  v13 = &v136 - v147;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v146 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v150 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v149 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v136 - v149;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v144 = v20;
  v145 = v2;
  v2[10] = v19;
  v2[13] = v20;
  v2[14] = @"Description";
  v142 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v24 = sub_1CA94C438("A list of items", 15);
  v139 = v25;
  *&v140 = v24;
  v26 = sub_1CA94C438("A list of items", 15);
  v138 = v27;
  v141 = &v136;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v136 - v147;
  sub_1CA948D98();
  v29 = v146;
  v30 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v136 - v149;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v140, v139, v26, v138, 0, 0, v28, v31);
  *(v21 + 64) = v144;
  *(v21 + 72) = @"DescriptionResult";
  v33 = @"DescriptionResult";
  v34 = sub_1CA94C438("Every item passed to the “End Repeat” action", 48);
  v139 = v35;
  *&v140 = v34;
  v36 = sub_1CA94C438("Every item passed to the “End Repeat” action", 48);
  v38 = v37;
  v141 = &v136;
  MEMORY[0x1EEE9AC00](v36);
  v39 = v147;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = v149;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v140, v139, v36, v38, 0, 0, &v136 - v39, &v136 - v41);
  v43 = v144;
  *(v21 + 104) = v144;
  *(v21 + 112) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v45 = sub_1CA94C438("Takes a list of items as input, and runs the contained actions once for each item in the list.", 94);
  v139 = v46;
  *&v140 = v45;
  v47 = sub_1CA94C438("Takes a list of items as input, and runs the contained actions once for each item in the list.", 94);
  v49 = v48;
  v141 = &v136;
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948D98();
  v50 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v140, v139, v47, v49, 0, 0, &v136 - v39, &v136 - v41);
  *(v21 + 144) = v43;
  *(v21 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v53 = sub_1CA94C1E8();
  v54 = v142;
  v55 = sub_1CA6B3784(v53);
  v56 = v145;
  v145[15] = v55;
  v56[18] = v54;
  v56[19] = @"IconColor";
  v56[20] = 2036429383;
  v56[21] = 0xE400000000000000;
  v57 = MEMORY[0x1E69E6158];
  v56[23] = MEMORY[0x1E69E6158];
  v56[24] = @"IconSymbol";
  v56[25] = 0x746165706572;
  v56[26] = 0xE600000000000000;
  v56[28] = v57;
  v56[29] = @"Input";
  v58 = v56;
  *&v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981370;
  *(v59 + 32) = 0xD00000000000001DLL;
  *(v59 + 40) = 0x80000001CA9A3ED0;
  v60 = MEMORY[0x1E69E6370];
  *(v59 + 48) = 1;
  *(v59 + 72) = v60;
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = v60;
  strcpy((v59 + 128), "ParameterKey");
  *(v59 + 141) = 0;
  *(v59 + 142) = -5120;
  *(v59 + 144) = 0x7475706E494657;
  *(v59 + 152) = 0xE700000000000000;
  *(v59 + 168) = v57;
  *(v59 + 176) = 0x6465726975716552;
  *(v59 + 184) = 0xE800000000000000;
  *(v59 + 192) = 0;
  *(v59 + 216) = v60;
  *(v59 + 224) = 0x7365707954;
  *(v59 + 232) = 0xE500000000000000;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 264) = v142;
  *(v59 + 240) = &unk_1F49F8A10;
  v61 = @"IconColor";
  v62 = @"IconSymbol";
  v63 = @"Input";
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v141 = v65;
  v58[30] = v64;
  v58[33] = v65;
  v58[34] = @"Name";
  v66 = @"Name";
  v67 = sub_1CA94C438("Repeat with Each (Action Name)", 30);
  v137 = v68;
  v138 = v67;
  v69 = sub_1CA94C438("Repeat with Each", 16);
  v136 = v70;
  v139 = &v136;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v147;
  sub_1CA948D98();
  v72 = v146;
  v73 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = v149;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v138, v137, v69, v136, 0, 0, &v136 - v71, &v136 - v74);
  v78 = v144;
  v77 = v145;
  v145[35] = v76;
  v77[38] = v78;
  v77[39] = @"Output";
  v79 = swift_allocObject();
  v140 = xmmword_1CA981350;
  *(v79 + 16) = xmmword_1CA981350;
  *(v79 + 32) = 0x75736F6C63736944;
  *(v79 + 40) = 0xEF6C6576654C6572;
  *(v79 + 48) = 0x63696C627550;
  *(v79 + 56) = 0xE600000000000000;
  *(v79 + 72) = MEMORY[0x1E69E6158];
  *(v79 + 80) = 0x656C7069746C754DLL;
  *(v79 + 88) = 0xE800000000000000;
  *(v79 + 96) = 1;
  *(v79 + 120) = MEMORY[0x1E69E6370];
  *(v79 + 128) = 0x614E74757074754FLL;
  *(v79 + 136) = 0xEA0000000000656DLL;
  v80 = @"Output";
  v81 = sub_1CA94C438("Repeat with Each (Default Output Name)", 38);
  v137 = v82;
  v138 = v81;
  v136 = sub_1CA94C438("Repeat with Each", 16);
  v84 = v83;
  v139 = &v136;
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948D98();
  v85 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 144) = sub_1CA2F9F14(v138, v137, v136, v84, 0, 0, &v136 - v71, &v136 - v74);
  *(v79 + 168) = v78;
  *(v79 + 176) = 0x7365707954;
  *(v79 + 216) = v142;
  *(v79 + 184) = 0xE500000000000000;
  *(v79 + 192) = &unk_1F49F8A40;
  v87 = MEMORY[0x1E69E6158];
  v88 = sub_1CA94C1E8();
  v89 = v145;
  v145[40] = v88;
  v89[43] = v141;
  v89[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1CA9813B0;
  v141 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v90 = swift_allocObject();
  *(v90 + 16) = v140;
  *(v90 + 32) = @"Class";
  *(v90 + 40) = 0xD000000000000019;
  *(v90 + 48) = 0x80000001CA99B030;
  *(v90 + 64) = v87;
  *(v90 + 72) = @"Key";
  *(v90 + 80) = 0x7475706E494657;
  *(v90 + 88) = 0xE700000000000000;
  *(v90 + 104) = v87;
  *(v90 + 112) = @"Label";
  v91 = @"Parameters";
  v92 = @"Class";
  v93 = @"Key";
  v94 = @"Label";
  v95 = sub_1CA94C438("Items (WFInput)", 15);
  v138 = v96;
  v139 = v95;
  v97 = sub_1CA94C438("Items", 5);
  v137 = v98;
  *&v140 = &v136;
  MEMORY[0x1EEE9AC00](v97);
  v99 = v147;
  sub_1CA948D98();
  v100 = v146;
  v101 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v136 - v149;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 120) = sub_1CA2F9F14(v139, v138, v97, v137, 0, 0, &v136 - v99, v102);
  v104 = v144;
  *(v90 + 144) = v144;
  *(v90 + 152) = @"Placeholder";
  v105 = @"Placeholder";
  v106 = sub_1CA94C438("Items (WFInput)", 15);
  v138 = v107;
  v139 = v106;
  v137 = sub_1CA94C438("Items", 5);
  v109 = v108;
  *&v140 = &v136;
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948D98();
  v110 = [v100 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v136 - v149;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v139, v138, v137, v109, 0, 0, &v136 - v99, v111);
  *(v90 + 184) = v104;
  *(v90 + 160) = v113;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v114 = sub_1CA94C1E8();
  v115 = sub_1CA2F864C(v114);
  v116 = v142;
  *(v142 + 32) = v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v118 = v145;
  v145[45] = v116;
  v118[48] = v117;
  v118[49] = @"ParameterSummary";
  v119 = @"ParameterSummary";
  v120 = sub_1CA94C438("Repeat with each item in ${WFInput} (Parameter Summary)", 55);
  v122 = v121;
  v123 = sub_1CA94C438("Repeat with each item in ${WFInput}", 35);
  v125 = v124;
  v144 = &v136;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v136 - v147;
  sub_1CA948D98();
  v127 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v136 - v149;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v120, v122, v123, v125, 0, 0, v126, v128);
  v131 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v132 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v133 = v145;
  v145[50] = v131;
  v133[53] = v132;
  v133[54] = @"ResidentCompatible";
  v133[58] = MEMORY[0x1E69E6370];
  *(v133 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v134 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3DA9E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1CA94AC88();
  v2[4] = v3;
  OUTLINED_FUNCTION_12(v3);
  v2[5] = v4;
  v2[6] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94B1C8();
  v2[7] = v5;
  OUTLINED_FUNCTION_12(v5);
  v2[8] = v6;
  v2[9] = OUTLINED_FUNCTION_45();
  v2[10] = type metadata accessor for TypedValueConversionContext(0);
  v2[11] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94AD88();
  v2[12] = v7;
  OUTLINED_FUNCTION_12(v7);
  v2[13] = v8;
  v2[14] = OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  v2[15] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94ADC8();
  v2[16] = v9;
  OUTLINED_FUNCTION_12(v9);
  v2[17] = v10;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A60, &unk_1CA985F10);
  v2[21] = OUTLINED_FUNCTION_45();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DF0, &unk_1CA988BD0);
  v2[22] = v11;
  OUTLINED_FUNCTION_12(v11);
  v2[23] = v12;
  v2[24] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA3DAC78, 0, 0);
}

uint64_t sub_1CA3DAC78()
{
  v33 = v0;
  [**(v0 + 24) singleStateClass];
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1CA25B3D0(0, &qword_1EC446E10, off_1E836DFE0);
  if (swift_dynamicCastMetatype())
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    sub_1CA94A948();
    if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
    {
      sub_1CA30F7DC(*(v0 + 168), &unk_1EC445A60, &unk_1CA985F10);
LABEL_18:
      v28 = 2;
      goto LABEL_19;
    }

    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      goto LABEL_18;
    }

    v8 = [v7 codableAttribute];
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 176);
    if (!v8)
    {
      (*(v10 + 8))(*(v0 + 192), *(v0 + 176));
      goto LABEL_18;
    }

    v12 = v8;
    v13 = sub_1CA94AD18();
    v32[3] = sub_1CA25B3D0(0, &unk_1EC444E00, 0x1E696E910);
    v32[0] = v13;
    v14 = objc_allocWithZone(WFCodableAttributeBackedSubstitutableState);
    sub_1CA3DBC74(v32, v12, 0);
    (*(v10 + 8))(v9, v11);
LABEL_13:
    OUTLINED_FUNCTION_0_28();

    OUTLINED_FUNCTION_68();

    __asm { BRAA            X2, X16 }
  }

  sub_1CA25B3D0(0, &qword_1EC446AB0, off_1E836E7F8);
  if (!swift_dynamicCastMetatype())
  {
    v15 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for TypedValueRepresentableParameterState);
    if (!v15)
    {
      v28 = 1;
LABEL_19:
      sub_1CA3DBA78();
      swift_allocError();
      *v29 = v28;
      swift_willThrow();
      OUTLINED_FUNCTION_0_28();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_68();

      __asm { BRAA            X1, X16 }
    }

    v17 = v15;
    v18 = v16;
    v20 = *(v0 + 40);
    v19 = *(v0 + 48);
    v21 = *(v0 + 32);
    v22 = *(v0 + 16);
    v23 = sub_1CA94A9A8();
    v24 = swift_allocBox();
    (*(*(v23 - 8) + 16))(v25, v22, v23);
    *v19 = v24;
    (*(v20 + 104))(v19, *MEMORY[0x1E69DAE58], v21);
    (*(v18 + 24))(v19, v17, v18);
    (*(v20 + 8))(v19, v21);
    nullsub_1();
    goto LABEL_13;
  }

  sub_1CA94A8B8();
  type metadata accessor for ParameterStateValueTransformContext(0);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_1CA3DB13C;
  OUTLINED_FUNCTION_68();

  return sub_1CA4693D0();
}

uint64_t sub_1CA3DB13C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[17];
  v7 = v4[16];
  v8 = *v1;
  OUTLINED_FUNCTION_1();
  *v9 = v8;
  v2[26] = v0;

  v10 = *(v6 + 8);
  v2[27] = v10;
  v2[28] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  if (v0)
  {
    v11 = sub_1CA3DB9A4;
  }

  else
  {
    v11 = sub_1CA3DB2B8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1CA3DB2B8()
{
  v1 = v0[15];
  v2 = v0[16];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1CA30F7DC(v1, &qword_1EC444368, &unk_1CA988BC0);
    goto LABEL_10;
  }

  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  (*(v5 + 32))(v3, v1, v2);
  (*(v5 + 16))(v4, v3, v2);
  if ((*(v5 + 88))(v4, v2) != *MEMORY[0x1E69DB088])
  {
    v22 = v0[27];
    v23 = v0[18];
    v24 = v0[16];
    v22(v0[20], v24);
    v22(v23, v24);
LABEL_10:
    sub_1CA3DBA78();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_0_28();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  (*(v0[17] + 96))(v0[18], v0[16]);
  v12 = swift_projectBox();
  (*(v7 + 16))(v6, v12, v8);

  v13 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v13);
  (*(v10 + 8))(v9, v11);
  if (qword_1EC4420F0 != -1)
  {
    swift_once();
  }

  v15 = v0[10];
  v14 = v0[11];
  v16 = qword_1EC4420F8;
  v17 = (v14 + v15[5]);
  v17[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v17[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v17 = v16;
  v18 = objc_opt_self();

  *(v14 + v15[6]) = [v18 defaultContext];
  *(v14 + v15[7]) = 0;
  v19 = swift_task_alloc();
  v0[29] = v19;
  *v19 = v0;
  v19[1] = sub_1CA3DB614;
  OUTLINED_FUNCTION_24();

  return sub_1CA514FA4();
}

uint64_t sub_1CA3DB614(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v4 + 240) = v1;

  if (v1)
  {
    v8 = sub_1CA3DB894;
  }

  else
  {
    *(v4 + 248) = a1;
    v8 = sub_1CA3DB734;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

void sub_1CA3DB734()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:v1 indentationLevel:0];
  [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];

  sub_1CA3DBD00(v8);
  (*(v5 + 8))(v6, v7);
  v2(v3, v4);
  OUTLINED_FUNCTION_0_28();

  OUTLINED_FUNCTION_24();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1CA3DB894()
{
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  sub_1CA3DBD00(v0[11]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  OUTLINED_FUNCTION_0_28();

  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA3DB9A4()
{
  OUTLINED_FUNCTION_0_28();

  OUTLINED_FUNCTION_5();

  return v0();
}

unint64_t sub_1CA3DBA78()
{
  result = qword_1EC444DF8;
  if (!qword_1EC444DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444DF8);
  }

  return result;
}

uint64_t sub_1CA3DBACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1CA3DBB6C;

  return sub_1CA3DA9E4(a2, a3);
}

uint64_t sub_1CA3DBB6C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

id sub_1CA3DBC74(void *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = [v3 initWithValue:sub_1CA94D7D8() codableAttribute:a2 stringLocalizer:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1CA3DBD00(uint64_t a1)
{
  v2 = type metadata accessor for TypedValueConversionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA3DBD90()
{
  v239 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B16F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("venmo|money|send|pay|request|cash|currency|dollars", 50);
  v6 = v5;
  v7 = sub_1CA94C438("venmo|money|send|pay|request|cash|currency|dollars", 50);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v256 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v257 = v11;
  v12 = &v232 - v256;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v255 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v258 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v253 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v232 - v253;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v254 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v252 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Sends a payment to the specified people using a payment app on your device.", 75);
  v250 = v24;
  v25 = sub_1CA94C438("Sends a payment to the specified people using a payment app on your device.", 75);
  v27 = v26;
  v251 = &v232;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v232 - v256;
  sub_1CA948D98();
  v29 = inited;
  v30 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v232 - v253;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v23, v250, v25, v27, 0, 0, v28, v31);
  *(v20 + 64) = v254;
  *(v20 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v252;
  *(v29 + 120) = sub_1CA6B3784(v34);
  *(v29 + 144) = v35;
  *(v29 + 152) = @"InputPassthrough";
  *(v29 + 184) = MEMORY[0x1E69E6370];
  *(v29 + 160) = 1;
  v36 = @"InputPassthrough";
  v37 = sub_1CA94C368();
  v247 = v29;
  *(v29 + 192) = v37;
  *(v29 + 200) = 0xD000000000000029;
  *(v29 + 208) = 0x80000001CA9B17A0;
  *(v29 + 224) = MEMORY[0x1E69E6158];
  *(v29 + 232) = @"Name";
  v38 = @"Name";
  v39 = sub_1CA94C438("Send Payment (Action Name)", 26);
  v41 = v40;
  v42 = sub_1CA94C438("Send Payment", 12);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v232 - v256;
  sub_1CA948D98();
  v46 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v232 - v253;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v49 = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  v50 = v247;
  v247[30] = v49;
  v50[33] = v254;
  v50[34] = @"Parameters";
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v248 = swift_allocObject();
  *(v248 + 16) = xmmword_1CA981560;
  v252 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  v246 = xmmword_1CA981400;
  *(v51 + 16) = xmmword_1CA981400;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD00000000000001ALL;
  *(v51 + 48) = 0x80000001CA99B690;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DefaultValue";
  v53 = @"Class";
  v54 = @"DefaultValue";
  v245 = v53;
  v237 = v54;
  v55 = @"Parameters";
  v56 = sub_1CA94C1E8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v51 + 80) = v56;
  *(v51 + 104) = v57;
  *(v51 + 112) = @"DisallowedVariableTypes";
  *(v51 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 120) = &unk_1F49F8AB0;
  v58 = @"DisallowedVariableTypes";
  *(v51 + 152) = sub_1CA94C368();
  *(v51 + 160) = 0xD000000000000013;
  *(v51 + 168) = 0x80000001CA9B1800;
  *(v51 + 184) = v52;
  *(v51 + 192) = @"Key";
  *(v51 + 200) = 0xD000000000000013;
  *(v51 + 208) = 0x80000001CA99B6D0;
  *(v51 + 224) = v52;
  *(v51 + 232) = @"Label";
  v59 = @"Key";
  v60 = @"Label";
  v61 = v59;
  v62 = v60;
  v242 = v61;
  v244 = v62;
  v249 = sub_1CA94C438("App (IntentAppDefinition)", 25);
  v243 = v63;
  v64 = sub_1CA94C438("App", 3);
  v66 = v65;
  v250 = &v232;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v232 - v256;
  sub_1CA948D98();
  v68 = v255;
  v69 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = v253;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 240) = sub_1CA2F9F14(v249, v243, v64, v66, 0, 0, v67, &v232 - v70);
  v72 = v254;
  *(v51 + 264) = v254;
  *(v51 + 272) = @"Prompt";
  v243 = @"Prompt";
  v249 = sub_1CA94C438("Which app? (IntentAppDefinition)", 32);
  v241 = v73;
  v74 = sub_1CA94C438("Which app?", 10);
  v240 = v75;
  v250 = &v232;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v232 - v256;
  sub_1CA948D98();
  v77 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v249, v241, v74, v240, 0, 0, v76, &v232 - v70);
  *(v51 + 304) = v72;
  *(v51 + 280) = v79;
  _s3__C3KeyVMa_0(0);
  v250 = v80;
  v249 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v81 = sub_1CA94C1E8();
  v82 = sub_1CA2F864C(v81);
  *(v248 + 32) = v82;
  v83 = swift_allocObject();
  *(v83 + 16) = v246;
  *(v83 + 32) = @"AllowsMultipleValues";
  *(v83 + 40) = 1;
  v84 = v245;
  *(v83 + 64) = MEMORY[0x1E69E6370];
  *(v83 + 72) = v84;
  *(v83 + 80) = 0xD00000000000001DLL;
  *(v83 + 88) = 0x80000001CA99EEC0;
  v85 = MEMORY[0x1E69E6158];
  *(v83 + 104) = MEMORY[0x1E69E6158];
  *(v83 + 112) = @"IntentSlotName";
  *(v83 + 120) = 0x6565796170;
  *(v83 + 128) = 0xE500000000000000;
  v86 = v242;
  *(v83 + 144) = v85;
  *(v83 + 152) = v86;
  *(v83 + 160) = 0xD000000000000017;
  *(v83 + 168) = 0x80000001CA9B1820;
  v87 = v244;
  *(v83 + 184) = v85;
  *(v83 + 192) = v87;
  v88 = @"IntentSlotName";
  v240 = v84;
  v241 = v86;
  v242 = v87;
  v244 = v88;
  v89 = @"AllowsMultipleValues";
  v90 = sub_1CA94C438("Recipients (WFVenmoActionRecipients)", 36);
  v235 = v91;
  v236 = v90;
  v92 = sub_1CA94C438("Recipients", 10);
  v94 = v93;
  v245 = &v232;
  MEMORY[0x1EEE9AC00](v92);
  v95 = v256;
  sub_1CA948D98();
  v96 = v255;
  v97 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v232 - v253;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 200) = sub_1CA2F9F14(v236, v235, v92, v94, 0, 0, &v232 - v95, v98);
  *(v83 + 224) = v254;
  *(v83 + 232) = @"Placeholder";
  v245 = @"Placeholder";
  v100 = sub_1CA94C438("Phone or email (WFVenmoActionRecipients)", 40);
  v234 = v101;
  v235 = v100;
  v102 = sub_1CA94C438("Phone or email", 14);
  v233 = v103;
  v236 = &v232;
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v232 - v95;
  sub_1CA948D98();
  v105 = v96;
  v106 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v253;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 240) = sub_1CA2F9F14(v235, v234, v102, v233, 0, 0, v104, &v232 - v107);
  v109 = v254;
  v110 = v243;
  *(v83 + 264) = v254;
  *(v83 + 272) = v110;
  v243 = v110;
  v111 = sub_1CA94C438("Who do you want to send money to? (WFVenmoActionRecipients)", 59);
  v234 = v112;
  v235 = v111;
  v113 = sub_1CA94C438("Who do you want to send money to?", 33);
  v233 = v114;
  v236 = &v232;
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v232 - v256;
  sub_1CA948D98();
  v116 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v235, v234, v113, v233, 0, 0, v115, &v232 - v107);
  *(v83 + 304) = v109;
  *(v83 + 280) = v118;
  v119 = sub_1CA94C1E8();
  v120 = sub_1CA2F864C(v119);
  *(v248 + 40) = v120;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1CA981300;
  *(v121 + 32) = @"AllowsDecimalNumbers";
  *(v121 + 40) = 1;
  v122 = v240;
  *(v121 + 64) = MEMORY[0x1E69E6370];
  *(v121 + 72) = v122;
  *(v121 + 80) = 0xD000000000000020;
  *(v121 + 88) = 0x80000001CA9B1920;
  v123 = MEMORY[0x1E69E6158];
  v124 = v244;
  *(v121 + 104) = MEMORY[0x1E69E6158];
  *(v121 + 112) = v124;
  strcpy((v121 + 120), "currencyAmount");
  *(v121 + 135) = -18;
  v125 = v241;
  v126 = v242;
  *(v121 + 144) = v123;
  *(v121 + 152) = v125;
  *(v121 + 160) = 0xD000000000000013;
  *(v121 + 168) = 0x80000001CA9B1950;
  *(v121 + 184) = v123;
  *(v121 + 192) = v126;
  v240 = v122;
  v241 = v125;
  v242 = v126;
  v127 = @"AllowsDecimalNumbers";
  v128 = sub_1CA94C438("Amount (WFVenmoActionAmount)", 28);
  v234 = v129;
  v235 = v128;
  v130 = sub_1CA94C438("Amount", 6);
  v233 = v131;
  v236 = &v232;
  MEMORY[0x1EEE9AC00](v130);
  v132 = v256;
  sub_1CA948D98();
  v133 = v255;
  v134 = [v255 bundleURL];
  v232 = &v232;
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 200) = sub_1CA2F9F14(v235, v234, v130, v233, 0, 0, &v232 - v132, &v232 - v107);
  v136 = v245;
  *(v121 + 224) = v254;
  *(v121 + 232) = v136;
  v137 = sub_1CA94C438("7.00 (WFVenmoActionAmount)", 26);
  v234 = v138;
  v235 = v137;
  v139 = sub_1CA94C438("7.00", 4);
  v233 = v140;
  v236 = &v232;
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948D98();
  v141 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 240) = sub_1CA2F9F14(v235, v234, v139, v233, 0, 0, &v232 - v132, &v232 - v107);
  v143 = v254;
  v144 = v243;
  *(v121 + 264) = v254;
  *(v121 + 272) = v144;
  v145 = sub_1CA94C438("How much? (WFVenmoActionAmount)", 31);
  v234 = v146;
  v235 = v145;
  v147 = sub_1CA94C438("How much?", 9);
  v233 = v148;
  v236 = &v232;
  MEMORY[0x1EEE9AC00](v147);
  v149 = &v232 - v256;
  sub_1CA948D98();
  v150 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 280) = sub_1CA2F9F14(v235, v234, v147, v233, 0, 0, v149, &v232 - v107);
  *(v121 + 304) = v143;
  *(v121 + 312) = @"TextAlignment";
  v152 = MEMORY[0x1E69E6158];
  *(v121 + 344) = MEMORY[0x1E69E6158];
  *(v121 + 320) = 0x7468676952;
  *(v121 + 328) = 0xE500000000000000;
  v153 = @"TextAlignment";
  v154 = sub_1CA94C1E8();
  v155 = sub_1CA2F864C(v154);
  v156 = v248;
  *(v248 + 48) = v155;
  v157 = swift_initStackObject();
  *(v157 + 16) = xmmword_1CA981350;
  v236 = 0xD000000000000011;
  *(v157 + 32) = v240;
  *(v157 + 40) = 0xD000000000000011;
  *(v157 + 48) = 0x80000001CA99E620;
  v158 = v237;
  *(v157 + 64) = v152;
  *(v157 + 72) = v158;
  *(v157 + 80) = 0;
  v159 = v241;
  *(v157 + 104) = MEMORY[0x1E69E6370];
  *(v157 + 112) = v159;
  *(v157 + 120) = 0xD000000000000016;
  *(v157 + 128) = 0x80000001CA9B19F0;
  v160 = v242;
  *(v157 + 144) = v152;
  *(v157 + 152) = v160;
  v161 = sub_1CA94C438("Open in App (WFVenmoActionAppSwitch)", 36);
  v235 = v162;
  v163 = sub_1CA94C438("Open in App", 11);
  v165 = v164;
  v237 = &v232;
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v232 - v256;
  sub_1CA948D98();
  v167 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v232 - v253;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v170 = sub_1CA2F9F14(v161, v235, v163, v165, 0, 0, v166, v168);
  *(v157 + 184) = v254;
  *(v157 + 160) = v170;
  v171 = sub_1CA94C1E8();
  *(v156 + 56) = sub_1CA2F864C(v171);
  v172 = swift_allocObject();
  *(v172 + 16) = v246;
  *(v172 + 32) = v240;
  *(v172 + 40) = 0xD000000000000014;
  *(v172 + 48) = 0x80000001CA99B500;
  v173 = MEMORY[0x1E69E6158];
  v174 = v244;
  *(v172 + 64) = MEMORY[0x1E69E6158];
  *(v172 + 72) = v174;
  *(v172 + 80) = 1702129518;
  *(v172 + 88) = 0xE400000000000000;
  v175 = v241;
  *(v172 + 104) = v173;
  *(v172 + 112) = v175;
  *(v172 + 120) = v236;
  *(v172 + 128) = 0x80000001CA9B1A50;
  v176 = v242;
  *(v172 + 144) = v173;
  *(v172 + 152) = v176;
  v177 = sub_1CA94C438("Note (WFVenmoActionNote)", 24);
  *&v246 = v178;
  v179 = sub_1CA94C438("Note", 4);
  v181 = v180;
  v251 = &v232;
  MEMORY[0x1EEE9AC00](v179);
  v182 = &v232 - v256;
  sub_1CA948D98();
  v183 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v232 - v253;
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 160) = sub_1CA2F9F14(v177, v246, v179, v181, 0, 0, v182, v184);
  v186 = v254;
  *(v172 + 184) = v254;
  *(v172 + 192) = @"Multiline";
  *(v172 + 200) = 1;
  v187 = v245;
  *(v172 + 224) = MEMORY[0x1E69E6370];
  *(v172 + 232) = v187;
  v188 = @"Multiline";
  v189 = sub_1CA94C438("Note (WFVenmoActionNote)", 24);
  v245 = v190;
  *&v246 = v189;
  v191 = sub_1CA94C438("Note", 4);
  v244 = v192;
  v251 = &v232;
  MEMORY[0x1EEE9AC00](v191);
  v193 = v256;
  sub_1CA948D98();
  v194 = v255;
  v195 = [v255 bundleURL];
  v242 = &v232;
  MEMORY[0x1EEE9AC00](v195);
  v196 = v253;
  sub_1CA948B68();

  v197 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 240) = sub_1CA2F9F14(v246, v245, v191, v244, 0, 0, &v232 - v193, &v232 - v196);
  v198 = v243;
  *(v172 + 264) = v186;
  *(v172 + 272) = v198;
  v199 = sub_1CA94C438("Do you want to add a note? (WFVenmoActionNote)", 46);
  v245 = v200;
  *&v246 = v199;
  v201 = sub_1CA94C438("Do you want to add a note?", 26);
  v203 = v202;
  v251 = &v232;
  MEMORY[0x1EEE9AC00](v201);
  sub_1CA948D98();
  v204 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v204);
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v206 = sub_1CA2F9F14(v246, v245, v201, v203, 0, 0, &v232 - v193, &v232 - v196);
  *(v172 + 304) = v254;
  *(v172 + 280) = v206;
  v207 = sub_1CA94C1E8();
  v208 = sub_1CA2F864C(v207);
  v209 = v248;
  *(v248 + 64) = v208;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v211 = v247;
  v247[35] = v209;
  v211[38] = v210;
  v211[39] = @"ParameterSummary";
  v212 = @"ParameterSummary";
  v213 = sub_1CA94C438("Send ${WFVenmoActionAmount} to ${WFVenmoActionRecipients} (Parameter Summary)", 77);
  v215 = v214;
  v216 = sub_1CA94C438("Send ${WFVenmoActionAmount} to ${WFVenmoActionRecipients}", 57);
  v218 = v217;
  MEMORY[0x1EEE9AC00](v216);
  v219 = &v232 - v256;
  sub_1CA948D98();
  v220 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  v221 = &v232 - v253;
  sub_1CA948B68();

  v222 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v223 = sub_1CA2F9F14(v213, v215, v216, v218, 0, 0, v219, v221);
  v224 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v225 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v226 = v247;
  v247[40] = v224;
  v226[43] = v225;
  v226[44] = @"RequiredResources";
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_1CA9813B0;
  v259 = 2;
  v260 = 1;
  v228 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v229 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v259);
  *(v227 + 32) = v230;
  v226[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v226[45] = v227;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3DD8E4()
{
  v275 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x70416E65704F4657;
  *(inited + 48) = 0xEF6E6F6974634170;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("launch|run|switch", 17);
  v6 = v5;
  v7 = sub_1CA94C438("launch|run|switch", 17);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v287 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v288 = v11;
  v12 = &v269 - v287;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v289 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v290 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v286 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v269 - v286;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v284 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v285 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Opens the specified app.", 24);
  v25 = v24;
  v26 = sub_1CA94C438("Opens the specified app.", 24);
  v28 = v27;
  v282 = &v269;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v269 - v287;
  sub_1CA948D98();
  v30 = [v289 bundleURL];
  v283 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v269 - v286;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v284;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v285;
  v37 = sub_1CA6B3784(v35);
  v38 = v283;
  v283[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 0x6F6769646E49;
  v38[21] = 0xE600000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[28] = v39;
  v38[25] = 0xD000000000000010;
  v38[26] = 0x80000001CA9AC3B0;
  v40 = v38;
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v40[29] = sub_1CA94C368();
  v43 = MEMORY[0x1E69E6370];
  *(v40 + 240) = 1;
  v40[33] = v43;
  v40[34] = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438("Open App (Action Name)", 22);
  v47 = v46;
  v48 = sub_1CA94C438("Open App", 8);
  v50 = v49;
  v285 = &v269;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v269 - v287;
  sub_1CA948D98();
  v52 = v289;
  v53 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v269 - v286;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v54);
  v57 = v284;
  v58 = v283;
  v283[35] = v56;
  v58[38] = v57;
  v58[39] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  v273 = xmmword_1CA981350;
  *(v59 + 16) = xmmword_1CA981350;
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
  v61 = sub_1CA94C438("App (Default Output Name)", 25);
  v282 = v62;
  v63 = sub_1CA94C438("App", 3);
  v65 = v64;
  v285 = &v269;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v269 - v287;
  sub_1CA948D98();
  v67 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v269 - v286;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v61, v282, v63, v65, 0, 0, v66, v68);
  *(v59 + 168) = v57;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v274;
  *(v59 + 192) = &unk_1F49F8AF0;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v283;
  v283[40] = v71;
  v73[43] = v72;
  v73[44] = @"Parameters";
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v282 = swift_allocObject();
  *(v282 + 1) = xmmword_1CA981470;
  v281 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981370;
  *(v74 + 32) = @"AppSearchType";
  *(v74 + 40) = 0x7070416E65704FLL;
  *(v74 + 48) = 0xE700000000000000;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"Class";
  *(v74 + 80) = 0xD000000000000014;
  *(v74 + 88) = 0x80000001CA99B070;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Key";
  strcpy((v74 + 120), "WFSelectedApp");
  *(v74 + 134) = -4864;
  *(v74 + 144) = v70;
  *(v74 + 152) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v276 = v78;
  v279 = v79;
  v280 = v80;
  v81 = @"Parameters";
  v82 = @"AppSearchType";
  v83 = sub_1CA94C438("App (WFSelectedApp)", 19);
  v85 = v84;
  v86 = sub_1CA94C438("App", 3);
  v88 = v87;
  v278 = &v269;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v269 - v287;
  sub_1CA948D98();
  v90 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v269 - v286;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v83, v85, v86, v88, 0, 0, v89, v91);
  *(v74 + 184) = v284;
  *(v74 + 160) = v93;
  *(v74 + 192) = sub_1CA94C368();
  v94 = MEMORY[0x1E69E6370];
  *(v74 + 224) = MEMORY[0x1E69E6370];
  *(v74 + 200) = 1;
  _s3__C3KeyVMa_0(0);
  v278 = v95;
  v277 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v96 = sub_1CA94C1E8();
  v97 = sub_1CA2F864C(v96);
  v282[4] = v97;
  v98 = swift_initStackObject();
  *(v98 + 16) = v273;
  *(v98 + 32) = v276;
  *(v98 + 40) = 0xD000000000000014;
  *(v98 + 48) = 0x80000001CA99B500;
  v99 = MEMORY[0x1E69E6158];
  *(v98 + 64) = MEMORY[0x1E69E6158];
  *(v98 + 72) = @"Hidden";
  *(v98 + 80) = 1;
  v100 = v279;
  *(v98 + 104) = v94;
  *(v98 + 112) = v100;
  *(v98 + 120) = 0x6D614E7070414657;
  *(v98 + 128) = 0xE900000000000065;
  v101 = v280;
  *(v98 + 144) = v99;
  *(v98 + 152) = v101;
  v102 = @"Hidden";
  v103 = sub_1CA94C438("App Name (WFAppName)", 20);
  v105 = v104;
  v106 = sub_1CA94C438("App Name", 8);
  v108 = v107;
  *&v273 = &v269;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v269 - v287;
  sub_1CA948D98();
  v110 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v269 - v286;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  *(v98 + 184) = v284;
  *(v98 + 160) = v113;
  v114 = sub_1CA94C1E8();
  v115 = sub_1CA2F864C(v114);
  v282[5] = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1CA981380;
  *(v116 + 32) = v276;
  *(v116 + 40) = 0xD000000000000016;
  *(v116 + 48) = 0x80000001CA99C4A0;
  v117 = MEMORY[0x1E69E6158];
  *(v116 + 64) = MEMORY[0x1E69E6158];
  *(v116 + 72) = @"DefaultValue";
  *(v116 + 80) = 0x726353206C6C7546;
  *(v116 + 88) = 0xEB000000006E6565;
  *(v116 + 104) = v117;
  *(v116 + 112) = @"RequiredResources";
  v118 = v116;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1CA9813B0;
  v291 = 1;
  v292 = 0;
  v120 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v121 = @"DefaultValue";
  v122 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v291);
  *(v119 + 32) = v123;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *&v273 = v118;
  v118[15] = v119;
  v118[18] = v124;
  v118[19] = @"Items";
  v285 = swift_allocObject();
  *(v285 + 1) = xmmword_1CA9858B0;
  v125 = @"Items";
  v126 = sub_1CA94C438("Full Screen (WFWindowingFormat)", 31);
  v271 = v127;
  v272 = v126;
  v128 = sub_1CA94C438("Full Screen", 11);
  v270 = v129;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v128);
  v130 = v287;
  sub_1CA948D98();
  v131 = v289;
  v132 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v269 - v286;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v272, v271, v128, v270, 0, 0, &v269 - v130, v133);
  v136 = v285;
  v285[4] = v135;
  v137 = sub_1CA94C438("Left (WFWindowingFormat)", 24);
  v271 = v138;
  v272 = v137;
  v270 = sub_1CA94C438("Left", 4);
  v140 = v139;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v270);
  sub_1CA948D98();
  v141 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = v286;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136[5] = sub_1CA2F9F14(v272, v271, v270, v140, 0, 0, &v269 - v130, &v269 - v142);
  v144 = sub_1CA94C438("Right (WFWindowingFormat)", 25);
  v271 = v145;
  v272 = v144;
  v146 = sub_1CA94C438("Right", 5);
  v270 = v147;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v146);
  v148 = v287;
  sub_1CA948D98();
  v149 = v289;
  v150 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136[6] = sub_1CA2F9F14(v272, v271, v146, v270, 0, 0, &v269 - v148, &v269 - v142);
  v152 = sub_1CA94C438("Top (WFWindowingFormat)", 23);
  v271 = v153;
  v272 = v152;
  v270 = sub_1CA94C438("Top", 3);
  v155 = v154;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v270);
  sub_1CA948D98();
  v156 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = v286;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v272, v271, v270, v155, 0, 0, &v269 - v148, &v269 - v157);
  v160 = v285;
  v285[7] = v159;
  v161 = sub_1CA94C438("Bottom (WFWindowingFormat)", 26);
  v271 = v162;
  v272 = v161;
  v163 = sub_1CA94C438("Bottom", 6);
  v270 = v164;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v163);
  v165 = v287;
  sub_1CA948D98();
  v166 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160[8] = sub_1CA2F9F14(v272, v271, v163, v270, 0, 0, &v269 - v165, &v269 - v157);
  v168 = sub_1CA94C438("Top Leading (WFWindowingFormat)", 31);
  v271 = v169;
  v272 = v168;
  v170 = sub_1CA94C438("Top Leading", 11);
  v270 = v171;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v170);
  v172 = &v269 - v165;
  sub_1CA948D98();
  v173 = v289;
  v174 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  v175 = v157;
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v177 = sub_1CA2F9F14(v272, v271, v170, v270, 0, 0, v172, &v269 - v157);
  v178 = v285;
  v285[9] = v177;
  v179 = sub_1CA94C438("Top Trailing (WFWindowingFormat)", 32);
  v271 = v180;
  v272 = v179;
  v181 = sub_1CA94C438("Top Trailing", 12);
  v270 = v182;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v181);
  v183 = v287;
  sub_1CA948D98();
  v184 = [v173 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178[10] = sub_1CA2F9F14(v272, v271, v181, v270, 0, 0, &v269 - v183, &v269 - v175);
  v186 = sub_1CA94C438("Bottom Leading (WFWindowingFormat)", 34);
  v271 = v187;
  v272 = v186;
  v188 = sub_1CA94C438("Bottom Leading", 14);
  v270 = v189;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v188);
  v190 = &v269 - v183;
  sub_1CA948D98();
  v191 = v289;
  v192 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  v193 = v286;
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v195 = sub_1CA2F9F14(v272, v271, v188, v270, 0, 0, v190, &v269 - v193);
  v196 = v285;
  v285[11] = v195;
  v197 = sub_1CA94C438("Bottom Trailing (WFWindowingFormat)", 35);
  v271 = v198;
  v272 = v197;
  v199 = sub_1CA94C438("Bottom Trailing", 15);
  v270 = v200;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v199);
  v201 = v287;
  sub_1CA948D98();
  v202 = [v191 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196[12] = sub_1CA2F9F14(v272, v271, v199, v270, 0, 0, &v269 - v201, &v269 - v193);
  v204 = sub_1CA94C438("Left Third (WFWindowingFormat)", 30);
  v271 = v205;
  v272 = v204;
  v206 = sub_1CA94C438("Left Third", 10);
  v270 = v207;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v206);
  v208 = v201;
  v209 = &v269 - v201;
  sub_1CA948D98();
  v210 = v289;
  v211 = [v289 bundleURL];
  v269 = &v269;
  MEMORY[0x1EEE9AC00](v211);
  v212 = v286;
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v214 = sub_1CA2F9F14(v272, v271, v206, v270, 0, 0, v209, &v269 - v212);
  v215 = v285;
  v285[13] = v214;
  v216 = sub_1CA94C438("Middle Third (WFWindowingFormat)", 32);
  v271 = v217;
  v272 = v216;
  v218 = sub_1CA94C438("Middle Third", 12);
  v270 = v219;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v218);
  sub_1CA948D98();
  v220 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v215[14] = sub_1CA2F9F14(v272, v271, v218, v270, 0, 0, &v269 - v208, &v269 - v212);
  v222 = sub_1CA94C438("Right Third (WFWindowingFormat)", 31);
  v271 = v223;
  v272 = v222;
  v224 = sub_1CA94C438("Right Third", 11);
  v226 = v225;
  v276 = &v269;
  MEMORY[0x1EEE9AC00](v224);
  v227 = &v269 - v208;
  sub_1CA948D98();
  v228 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  v229 = v286;
  sub_1CA948B68();

  v230 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v231 = sub_1CA2F9F14(v272, v271, v224, v226, 0, 0, v227, &v269 - v229);
  v232 = v285;
  v285[15] = v231;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v234 = v273;
  *(v273 + 160) = v232;
  v235 = v279;
  v234[23] = v233;
  v234[24] = v235;
  v234[25] = 0xD000000000000011;
  v234[26] = 0x80000001CA9B1E30;
  v236 = v280;
  v234[28] = MEMORY[0x1E69E6158];
  v234[29] = v236;
  v237 = sub_1CA94C438("Window Location & Size (WFWindowingFormat)", 42);
  v279 = v238;
  v280 = v237;
  v239 = sub_1CA94C438("Window Location & Size", 22);
  v241 = v240;
  v285 = &v269;
  MEMORY[0x1EEE9AC00](v239);
  v242 = &v269 - v287;
  sub_1CA948D98();
  v243 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v243);
  sub_1CA948B68();

  v244 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v245 = sub_1CA2F9F14(v280, v279, v239, v241, 0, 0, v242, &v269 - v229);
  v234[33] = v284;
  v234[30] = v245;
  v246 = sub_1CA94C1E8();
  v247 = sub_1CA2F864C(v246);
  v248 = v282;
  v282[6] = v247;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v250 = v283;
  v283[45] = v248;
  v250[48] = v249;
  v250[49] = @"ParameterSummary";
  v251 = @"ParameterSummary";
  v252 = sub_1CA94C438("Open ${WFSelectedApp} (Parameter Summary)", 41);
  v254 = v253;
  v255 = sub_1CA94C438("Open ${WFSelectedApp}", 21);
  v257 = v256;
  MEMORY[0x1EEE9AC00](v255);
  v258 = &v269 - v287;
  sub_1CA948D98();
  v259 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v259);
  v260 = &v269 - v286;
  sub_1CA948B68();

  v261 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v262 = sub_1CA2F9F14(v252, v254, v255, v257, 0, 0, v258, v260);
  v263 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v264 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v265 = v283;
  v283[50] = v263;
  v265[53] = v264;
  v265[54] = @"RequiredResources";
  v265[55] = &unk_1F49F8B20;
  v265[58] = v274;
  v265[59] = @"RequiresUnlock";
  v265[63] = MEMORY[0x1E69E6370];
  *(v265 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v266 = @"RequiredResources";
  v267 = @"RequiresUnlock";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3DF73C()
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
  v9 = sub_1CA94C438("Find Reminders (Action Name)", 28, v32[0]);
  v11 = v10;
  v12 = sub_1CA94C438("Find Reminders", 14);
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
  *(inited + 200) = &unk_1F49F8B90;
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
  *(inited + 280) = 0xD000000000000015;
  *(inited + 288) = 0x80000001CA993900;
  v30 = sub_1CA94C368();
  *(inited + 344) = v29;
  *(inited + 312) = v30;
  *(inited + 320) = 1953720652;
  *(inited + 328) = 0xE400000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3DFB70()
{
  v630 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9B1F40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("quicktime|render|audio|transcode|metadata|artwork|id3|video", 59);
  v6 = v5;
  v7 = sub_1CA94C438("quicktime|render|audio|transcode|metadata|artwork|id3|video", 59);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v659 = v11;
  v657 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v615 - v657;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v658 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v660 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v661 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v615 - v661;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v656 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v656;
  *(inited + 80) = v18;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD00000000000001ALL;
  *(inited + 128) = 0x80000001CA9B1FA0;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  v655 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  v650 = xmmword_1CA981310;
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Re-encodes the media passed as input at the specified size, optionally converting to audio.", 91);
  v24 = v23;
  v25 = sub_1CA94C438("Re-encodes the media passed as input at the specified size, optionally converting to audio.", 91);
  v27 = v26;
  v654 = &v615;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v615 - v657;
  sub_1CA948D98();
  v29 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v641 = inited;
  v30 = &v615 - v661;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v22, v24, v25, v27, 0, 0, v28, v30);
  *(v19 + 64) = v656;
  *(v19 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v655;
  v35 = sub_1CA6B3784(v33);
  v36 = v641;
  v641[20] = v35;
  v36[23] = v34;
  v36[24] = @"IconColor";
  v36[25] = 1851881795;
  v36[26] = 0xE400000000000000;
  v37 = MEMORY[0x1E69E6158];
  v36[28] = MEMORY[0x1E69E6158];
  v36[29] = @"IconSymbol";
  v36[30] = 0x6D69746B63697571;
  v36[31] = 0xE900000000000065;
  v36[33] = v37;
  v36[34] = @"Input";
  v38 = v36;
  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v648 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x616964654D4657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v37;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v639 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v639;
  *(v39 + 192) = &unk_1F49F8BC0;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v655 = v46;
  v38[35] = v45;
  v38[38] = v46;
  v38[39] = @"InputPassthrough";
  *(v38 + 320) = 0;
  v38[43] = v41;
  v38[44] = @"Name";
  v47 = @"InputPassthrough";
  v48 = @"Name";
  v49 = sub_1CA94C438("Encode Media (Action Name)", 26);
  v51 = v50;
  v52 = sub_1CA94C438("Encode Media", 12);
  v54 = v53;
  v654 = &v615;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v615 - v657;
  sub_1CA948D98();
  v56 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v615 - v661;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  v60 = v641;
  v641[45] = v59;
  v61 = v656;
  v60[48] = v656;
  v60[49] = @"Output";
  v62 = swift_allocObject();
  *(v62 + 16) = v648;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x1E69E6158];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  *(v62 + 96) = 1;
  *(v62 + 120) = MEMORY[0x1E69E6370];
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v63 = @"Output";
  v64 = sub_1CA94C438("Encoded Media (Default Output Name)", 35);
  v653 = v65;
  v66 = sub_1CA94C438("Encoded Media", 13);
  v68 = v67;
  v654 = &v615;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v615 - v657;
  sub_1CA948D98();
  v70 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v615 - v661;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 144) = sub_1CA2F9F14(v64, v653, v66, v68, 0, 0, v69, v71);
  *(v62 + 168) = v61;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 216) = v639;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 192) = &unk_1F49F8BF0;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v641;
  v641[50] = v74;
  v75[53] = v655;
  v75[54] = @"Parameters";
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v655 = swift_allocObject();
  *(v655 + 16) = xmmword_1CA985F20;
  v654 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  *(v76 + 16) = v648;
  v628 = 0xD000000000000019;
  v629 = 0x80000001CA99B030;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000019;
  *(v76 + 48) = 0x80000001CA99B030;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Key";
  *(v76 + 80) = 0x616964654D4657;
  *(v76 + 88) = 0xE700000000000000;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v645 = v80;
  v646 = v81;
  v647 = v82;
  v83 = @"Parameters";
  v651 = sub_1CA94C438("Media (WFMedia)", 15);
  v644 = v84;
  v643 = sub_1CA94C438("Media", 5);
  v86 = v85;
  v652 = &v615;
  MEMORY[0x1EEE9AC00](v643);
  v87 = v657;
  sub_1CA948D98();
  v88 = v658;
  v89 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v615 - v661;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v651, v644, v643, v86, 0, 0, &v615 - v87, v90);
  v92 = v656;
  *(v76 + 144) = v656;
  *(v76 + 152) = @"Placeholder";
  v627 = @"Placeholder";
  v651 = sub_1CA94C438("Media (WFMedia)", 15);
  v644 = v93;
  v94 = sub_1CA94C438("Media", 5);
  v96 = v95;
  v652 = &v615;
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948D98();
  v97 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v615 - v661;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v651, v644, v94, v96, 0, 0, &v615 - v87, v98);
  *(v76 + 184) = v92;
  *(v76 + 160) = v100;
  _s3__C3KeyVMa_0(0);
  v652 = v101;
  v651 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  *(v655 + 32) = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = v648;
  v626 = 0x80000001CA99E620;
  v638 = 0xD000000000000011;
  v105 = v645;
  v106 = v646;
  *(v104 + 32) = v645;
  *(v104 + 40) = 0xD000000000000011;
  *(v104 + 48) = 0x80000001CA99E620;
  v107 = MEMORY[0x1E69E6158];
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = @"DefaultValue";
  *(v104 + 80) = 0;
  *(v104 + 104) = MEMORY[0x1E69E6370];
  *(v104 + 112) = v106;
  v634 = 0x80000001CA9B20A0;
  *(v104 + 120) = 0xD000000000000010;
  *(v104 + 128) = 0x80000001CA9B20A0;
  v108 = v647;
  *(v104 + 144) = v107;
  *(v104 + 152) = v108;
  v109 = @"DefaultValue";
  v645 = v105;
  v646 = v106;
  v647 = v108;
  v644 = v109;
  v110 = sub_1CA94C438("Audio Only (WFMediaAudioOnly)", 29);
  v112 = v111;
  v113 = sub_1CA94C438("Audio Only", 10);
  v115 = v114;
  *&v648 = &v615;
  MEMORY[0x1EEE9AC00](v113);
  v116 = &v615 - v657;
  sub_1CA948D98();
  v117 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v615 - v661;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120 = sub_1CA2F9F14(v110, v112, v113, v115, 0, 0, v116, v118);
  *(v104 + 184) = v656;
  *(v104 + 160) = v120;
  v121 = sub_1CA94C1E8();
  v122 = sub_1CA2F864C(v121);
  *(v655 + 40) = v122;
  v123 = swift_allocObject();
  v642 = xmmword_1CA981380;
  *(v123 + 16) = xmmword_1CA981380;
  v632 = 0x80000001CA99C4A0;
  v637 = 0xD000000000000016;
  v125 = v644;
  v124 = v645;
  *(v123 + 32) = v645;
  *(v123 + 40) = 0xD000000000000016;
  *(v123 + 48) = 0x80000001CA99C4A0;
  v126 = MEMORY[0x1E69E6158];
  *(v123 + 64) = MEMORY[0x1E69E6158];
  *(v123 + 72) = v125;
  *(v123 + 80) = 4273229;
  *(v123 + 88) = 0xE300000000000000;
  *(v123 + 104) = v126;
  *(v123 + 112) = @"Items";
  *&v648 = swift_allocObject();
  *(v648 + 16) = xmmword_1CA981360;
  v127 = @"Items";
  v633 = v124;
  v619 = v125;
  *&v631 = v127;
  v128 = sub_1CA94C438("M4A (WFMediaAudioFormat)", 24);
  v643 = v129;
  v644 = v128;
  v130 = sub_1CA94C438("M4A", 3);
  v640 = v131;
  v645 = &v615;
  MEMORY[0x1EEE9AC00](v130);
  v132 = v657;
  sub_1CA948D98();
  v133 = v658;
  v134 = [v658 bundleURL];
  v635 = &v615;
  MEMORY[0x1EEE9AC00](v134);
  v135 = v661;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v644, v643, v130, v640, 0, 0, &v615 - v132, &v615 - v135);
  *(v648 + 32) = v137;
  v138 = sub_1CA94C438("AIFF (WFMediaAudioFormat)", 25);
  v643 = v139;
  v644 = v138;
  v140 = sub_1CA94C438("AIFF", 4);
  v640 = v141;
  v645 = &v615;
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948D98();
  v142 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v644, v643, v140, v640, 0, 0, &v615 - v132, &v615 - v135);
  v145 = v648;
  *(v648 + 40) = v144;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v635 = v146;
  *(v123 + 120) = v145;
  v147 = v646;
  v148 = v647;
  *(v123 + 144) = v146;
  *(v123 + 152) = v147;
  v625 = 0xD000000000000012;
  *(v123 + 160) = 0xD000000000000012;
  *(v123 + 168) = 0x80000001CA9B2140;
  *(v123 + 184) = MEMORY[0x1E69E6158];
  *(v123 + 192) = v148;
  v623 = v147;
  v624 = v148;
  v149 = sub_1CA94C438("Format (WFMediaAudioFormat)", 27);
  v151 = v150;
  v152 = sub_1CA94C438("Format", 6);
  v154 = v153;
  *&v648 = &v615;
  MEMORY[0x1EEE9AC00](v152);
  v155 = &v615 - v657;
  sub_1CA948D98();
  v156 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v615 - v661;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 200) = sub_1CA2F9F14(v149, v151, v152, v154, 0, 0, v155, v157);
  *(v123 + 224) = v656;
  *(v123 + 232) = @"RequiredResources";
  v646 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v159 = swift_allocObject();
  *(v159 + 16) = v650;
  v160 = @"RequiredResources";
  v161 = swift_initStackObject();
  v648 = xmmword_1CA9813C0;
  *(v161 + 16) = xmmword_1CA9813C0;
  strcpy((v161 + 32), "WFParameterKey");
  *(v161 + 47) = -18;
  v162 = v634;
  *(v161 + 48) = 0xD000000000000010;
  *(v161 + 56) = v162;
  v643 = 0x80000001CA993570;
  v163 = MEMORY[0x1E69E6158];
  *(v161 + 72) = MEMORY[0x1E69E6158];
  *(v161 + 80) = 0xD000000000000010;
  *(v161 + 88) = 0x80000001CA993570;
  *(v161 + 96) = 1;
  *(v161 + 120) = MEMORY[0x1E69E6370];
  *(v161 + 128) = 0x72756F7365524657;
  v645 = 0x80000001CA993590;
  *(v161 + 168) = v163;
  v647 = 0xD00000000000001BLL;
  *(v161 + 136) = 0xEF7373616C436563;
  *(v161 + 144) = 0xD00000000000001BLL;
  *(v161 + 152) = 0x80000001CA993590;
  v621 = v160;
  *(v159 + 32) = sub_1CA94C1E8();
  v644 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v123 + 264) = v644;
  *(v123 + 240) = v159;
  v164 = sub_1CA94C1E8();
  v165 = sub_1CA2F864C(v164);
  *(v655 + 48) = v165;
  v166 = swift_allocObject();
  v620 = v166;
  *(v166 + 16) = v642;
  v167 = v633;
  v168 = v637;
  *(v166 + 32) = v633;
  *(v166 + 40) = v168;
  *(v166 + 48) = v632;
  v169 = v619;
  *(v166 + 64) = v163;
  *(v166 + 72) = v169;
  *(v166 + 80) = 0x6F72687473736150;
  *(v166 + 88) = 0xEB00000000686775;
  v170 = v631;
  *(v166 + 104) = v163;
  *(v166 + 112) = v170;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_1CA981720;
  v622 = v167;
  v633 = v169;
  v172 = sub_1CA94C438("640x480 (WFMediaSize)", 21);
  v617 = v173;
  v618 = v172;
  v174 = sub_1CA94C438("640x480", 7);
  v616 = v175;
  v619 = &v615;
  MEMORY[0x1EEE9AC00](v174);
  v176 = &v615 - v657;
  sub_1CA948D98();
  v177 = v658;
  v178 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  v179 = v661;
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v181 = sub_1CA2F9F14(v618, v617, v174, v616, 0, 0, v176, &v615 - v179);
  v640 = v171;
  *(v171 + 32) = v181;
  v182 = sub_1CA94C438("960x540 (WFMediaSize)", 21);
  v617 = v183;
  v618 = v182;
  v184 = sub_1CA94C438("960x540", 7);
  v616 = v185;
  v619 = &v615;
  MEMORY[0x1EEE9AC00](v184);
  v186 = v657;
  sub_1CA948D98();
  v187 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v171 + 40) = sub_1CA2F9F14(v618, v617, v184, v616, 0, 0, &v615 - v186, &v615 - v179);
  v189 = sub_1CA94C438("1280x720 (WFMediaSize)", 22);
  v617 = v190;
  v618 = v189;
  v191 = sub_1CA94C438("1280x720", 8);
  v193 = v192;
  v619 = &v615;
  MEMORY[0x1EEE9AC00](v191);
  sub_1CA948D98();
  v194 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = v661;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v618, v617, v191, v193, 0, 0, &v615 - v186, &v615 - v195);
  v198 = v640;
  v640[6] = v197;
  v199 = sub_1CA94C438("1920x1080 (WFMediaSize)", 23);
  v617 = v200;
  v618 = v199;
  v201 = sub_1CA94C438("1920x1080", 9);
  v616 = v202;
  v619 = &v615;
  MEMORY[0x1EEE9AC00](v201);
  v203 = v657;
  sub_1CA948D98();
  v204 = v658;
  v205 = [v658 bundleURL];
  v615 = &v615;
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v198 + 56) = sub_1CA2F9F14(v618, v617, v201, v616, 0, 0, &v615 - v203, &v615 - v195);
  v207 = sub_1CA94C438("3840x2160 (WFMediaSize)", 23);
  v617 = v208;
  v618 = v207;
  v616 = sub_1CA94C438("3840x2160", 9);
  v210 = v209;
  v619 = &v615;
  MEMORY[0x1EEE9AC00](v616);
  sub_1CA948D98();
  v211 = v204;
  v212 = [v204 bundleURL];
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v615 - v661;
  sub_1CA948B68();

  v214 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v215 = sub_1CA2F9F14(v618, v617, v616, v210, 0, 0, &v615 - v203, v213);
  v216 = v640;
  v640[8] = v215;
  v217 = sub_1CA94C438("HEVC 1920x1080 (WFMediaSize)", 28);
  v617 = v218;
  v618 = v217;
  v219 = sub_1CA94C438("HEVC 1920x1080", 14);
  v616 = v220;
  v619 = &v615;
  MEMORY[0x1EEE9AC00](v219);
  v221 = &v615 - v657;
  sub_1CA948D98();
  v222 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v222);
  v223 = v661;
  sub_1CA948B68();

  v224 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v216 + 72) = sub_1CA2F9F14(v618, v617, v219, v616, 0, 0, v221, &v615 - v223);
  v225 = sub_1CA94C438("HEVC 3840x2160 (WFMediaSize)", 28);
  v617 = v226;
  v618 = v225;
  v227 = sub_1CA94C438("HEVC 3840x2160", 14);
  v616 = v228;
  v619 = &v615;
  MEMORY[0x1EEE9AC00](v227);
  v229 = v657;
  sub_1CA948D98();
  v230 = v658;
  v231 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v231);
  sub_1CA948B68();

  v232 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v233 = sub_1CA2F9F14(v618, v617, v227, v616, 0, 0, &v615 - v229, &v615 - v223);
  v234 = v640;
  v640[10] = v233;
  v235 = sub_1CA94C438("ProRes 422 (WFMediaSize)", 24);
  v617 = v236;
  v618 = v235;
  v237 = sub_1CA94C438("ProRes 422", 10);
  v616 = v238;
  v619 = &v615;
  MEMORY[0x1EEE9AC00](v237);
  sub_1CA948D98();
  v239 = [v230 bundleURL];
  MEMORY[0x1EEE9AC00](v239);
  v240 = &v615 - v661;
  sub_1CA948B68();

  v241 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v234 + 88) = sub_1CA2F9F14(v618, v617, v237, v616, 0, 0, &v615 - v229, v240);
  v242 = sub_1CA94C438("Passthrough (WFMediaSize)", 25);
  v617 = v243;
  v618 = v242;
  v244 = sub_1CA94C438("Passthrough", 11);
  v246 = v245;
  v619 = &v615;
  MEMORY[0x1EEE9AC00](v244);
  v247 = v657;
  sub_1CA948D98();
  v248 = v658;
  v249 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v249);
  v250 = &v615 - v661;
  sub_1CA948B68();

  v251 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v252 = sub_1CA2F9F14(v618, v617, v244, v246, 0, 0, &v615 - v247, v250);
  v253 = v620;
  v254 = v640;
  v640[12] = v252;
  v253[15] = v254;
  v255 = v623;
  v256 = v624;
  v253[18] = v635;
  v253[19] = v255;
  v253[20] = 0x53616964654D4657;
  v253[21] = 0xEB00000000657A69;
  v253[23] = MEMORY[0x1E69E6158];
  v253[24] = v256;
  v623 = v255;
  v624 = v256;
  v257 = sub_1CA94C438("Size (WFMediaSize)", 18);
  v618 = v258;
  v619 = v257;
  v259 = sub_1CA94C438("Size", 4);
  v261 = v260;
  v640 = &v615;
  MEMORY[0x1EEE9AC00](v259);
  sub_1CA948D98();
  v262 = [v248 bundleURL];
  MEMORY[0x1EEE9AC00](v262);
  v263 = &v615 - v661;
  sub_1CA948B68();

  v264 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v253[25] = sub_1CA2F9F14(v619, v618, v259, v261, 0, 0, &v615 - v247, v263);
  v265 = v621;
  v253[28] = v656;
  v253[29] = v265;
  v266 = swift_allocObject();
  *(v266 + 16) = v650;
  v267 = swift_allocObject();
  *(v267 + 16) = v648;
  strcpy((v267 + 32), "WFParameterKey");
  *(v267 + 47) = -18;
  v268 = v634;
  *(v267 + 48) = 0xD000000000000010;
  *(v267 + 56) = v268;
  v269 = MEMORY[0x1E69E6158];
  *(v267 + 72) = MEMORY[0x1E69E6158];
  *(v267 + 80) = 0xD000000000000010;
  *(v267 + 88) = v643;
  *(v267 + 96) = 0;
  *(v267 + 120) = MEMORY[0x1E69E6370];
  *(v267 + 128) = 0x72756F7365524657;
  *(v267 + 168) = v269;
  *(v267 + 136) = 0xEF7373616C436563;
  v270 = v645;
  *(v267 + 144) = v647;
  *(v267 + 152) = v270;
  v634 = v265;
  *(v266 + 32) = sub_1CA94C1E8();
  v253[33] = v644;
  v253[30] = v266;
  v271 = sub_1CA94C1E8();
  v272 = sub_1CA2F864C(v271);
  *(v655 + 56) = v272;
  v273 = swift_allocObject();
  *(v273 + 16) = v642;
  v274 = v622;
  v275 = v637;
  *(v273 + 32) = v622;
  *(v273 + 40) = v275;
  v276 = v633;
  *(v273 + 48) = v632;
  *(v273 + 64) = v269;
  *(v273 + 72) = v276;
  *(v273 + 80) = 0x6C616D726F4ELL;
  *(v273 + 88) = 0xE600000000000000;
  v277 = v631;
  *(v273 + 104) = v269;
  *(v273 + 112) = v277;
  *(v273 + 120) = &unk_1F49F8C20;
  *(v273 + 144) = v639;
  *(v273 + 152) = @"ItemDisplayNames";
  v640 = swift_allocObject();
  *(v640 + 1) = xmmword_1CA981560;
  v636 = v274;
  v278 = @"ItemDisplayNames";
  *&v631 = sub_1CA94C438("0.5× (WFMediaSpeed)", 20);
  v622 = v279;
  v280 = sub_1CA94C438("0.5×", 5);
  v621 = v281;
  v632 = &v615;
  MEMORY[0x1EEE9AC00](v280);
  v282 = v657;
  sub_1CA948D98();
  v283 = v658;
  v284 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v284);
  v285 = &v615 - v661;
  sub_1CA948B68();

  v286 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v287 = sub_1CA2F9F14(v631, v622, v280, v621, 0, 0, &v615 - v282, v285);
  v640[4] = v287;
  *&v631 = sub_1CA94C438("Normal (WFMediaSpeed)", 21);
  v622 = v288;
  v621 = sub_1CA94C438("Normal", 6);
  v290 = v289;
  v632 = &v615;
  MEMORY[0x1EEE9AC00](v621);
  sub_1CA948D98();
  v291 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v291);
  v292 = v661;
  sub_1CA948B68();

  v293 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v294 = sub_1CA2F9F14(v631, v622, v621, v290, 0, 0, &v615 - v282, &v615 - v292);
  v640[5] = v294;
  *&v631 = sub_1CA94C438("1.5× (WFMediaSpeed)", 20);
  v622 = v295;
  v296 = sub_1CA94C438("1.5×", 5);
  v621 = v297;
  v632 = &v615;
  MEMORY[0x1EEE9AC00](v296);
  sub_1CA948D98();
  v298 = v658;
  v299 = [v658 bundleURL];
  v620 = &v615;
  MEMORY[0x1EEE9AC00](v299);
  sub_1CA948B68();

  v300 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v301 = sub_1CA2F9F14(v631, v622, v296, v621, 0, 0, &v615 - v282, &v615 - v292);
  v302 = v640;
  v640[6] = v301;
  *&v631 = sub_1CA94C438("2× (WFMediaSpeed)", 18);
  v622 = v303;
  v304 = sub_1CA94C438("2×", 3);
  v621 = v305;
  v632 = &v615;
  MEMORY[0x1EEE9AC00](v304);
  v306 = v657;
  sub_1CA948D98();
  v307 = [v298 bundleURL];
  v620 = &v615;
  MEMORY[0x1EEE9AC00](v307);
  v308 = v661;
  sub_1CA948B68();

  v309 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v302 + 56) = sub_1CA2F9F14(v631, v622, v304, v621, 0, 0, &v615 - v306, &v615 - v308);
  *&v631 = sub_1CA94C438("Custom (WFMediaSpeed)", 21);
  v622 = v310;
  v311 = sub_1CA94C438("Custom", 6);
  v621 = v312;
  v632 = &v615;
  MEMORY[0x1EEE9AC00](v311);
  v313 = &v615 - v306;
  sub_1CA948D98();
  v314 = v658;
  v315 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v315);
  sub_1CA948B68();

  v316 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v317 = sub_1CA2F9F14(v631, v622, v311, v621, 0, 0, v313, &v615 - v308);
  v318 = v640;
  v640[8] = v317;
  *(v273 + 160) = v318;
  v319 = v623;
  v320 = v624;
  *(v273 + 184) = v635;
  *(v273 + 192) = v319;
  strcpy((v273 + 200), "WFMediaSpeed");
  *(v273 + 213) = 0;
  *(v273 + 214) = -5120;
  *(v273 + 224) = MEMORY[0x1E69E6158];
  *(v273 + 232) = v320;
  v635 = v319;
  v640 = v320;
  *&v631 = sub_1CA94C438("Speed (WFMediaSpeed)", 20);
  v322 = v321;
  v323 = sub_1CA94C438("Speed", 5);
  v325 = v324;
  v632 = &v615;
  MEMORY[0x1EEE9AC00](v323);
  v326 = &v615 - v657;
  sub_1CA948D98();
  v327 = [v314 bundleURL];
  MEMORY[0x1EEE9AC00](v327);
  v328 = &v615 - v661;
  sub_1CA948B68();

  v329 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v330 = sub_1CA2F9F14(v631, v322, v323, v325, 0, 0, v326, v328);
  *(v273 + 264) = v656;
  *(v273 + 240) = v330;
  v331 = sub_1CA94C1E8();
  v332 = sub_1CA2F864C(v331);
  *(v655 + 64) = v332;
  v333 = swift_allocObject();
  v631 = xmmword_1CA981370;
  *(v333 + 16) = xmmword_1CA981370;
  v335 = v635;
  v334 = v636;
  v336 = v638;
  *(v333 + 32) = v636;
  *(v333 + 40) = v336;
  *(v333 + 48) = v626;
  v337 = MEMORY[0x1E69E6158];
  v338 = v633;
  *(v333 + 64) = MEMORY[0x1E69E6158];
  *(v333 + 72) = v338;
  *(v333 + 80) = 0;
  *(v333 + 104) = MEMORY[0x1E69E6370];
  *(v333 + 112) = v335;
  *(v333 + 120) = v647;
  *(v333 + 128) = 0x80000001CA9B23F0;
  v339 = v640;
  *(v333 + 144) = v337;
  *(v333 + 152) = v339;
  v633 = v334;
  v635 = v335;
  v636 = v339;
  v340 = sub_1CA94C438("Preserve Transparency (WFMediaPreserveTransparency)", 51);
  v342 = v341;
  v343 = sub_1CA94C438("Preserve Transparency", 21);
  v345 = v344;
  v640 = &v615;
  MEMORY[0x1EEE9AC00](v343);
  v346 = &v615 - v657;
  sub_1CA948D98();
  v347 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v347);
  v348 = &v615 - v661;
  sub_1CA948B68();

  v349 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v333 + 160) = sub_1CA2F9F14(v340, v342, v343, v345, 0, 0, v346, v348);
  v350 = v634;
  *(v333 + 184) = v656;
  *(v333 + 192) = v350;
  v351 = swift_allocObject();
  *(v351 + 16) = v650;
  v352 = swift_allocObject();
  *(v352 + 16) = v648;
  strcpy((v352 + 32), "WFParameterKey");
  *(v352 + 47) = -18;
  *(v352 + 48) = 0x53616964654D4657;
  *(v352 + 56) = 0xEB00000000657A69;
  v353 = MEMORY[0x1E69E6158];
  v354 = v638;
  *(v352 + 72) = MEMORY[0x1E69E6158];
  *(v352 + 80) = v354;
  *(v352 + 88) = 0x80000001CA9A2F30;
  *(v352 + 96) = &unk_1F49F8C90;
  *(v352 + 120) = v639;
  *(v352 + 128) = 0x72756F7365524657;
  *(v352 + 168) = v353;
  *(v352 + 136) = 0xEF7373616C436563;
  v355 = v645;
  *(v352 + 144) = v647;
  *(v352 + 152) = v355;
  v640 = v350;
  *(v351 + 32) = sub_1CA94C1E8();
  *(v333 + 224) = v644;
  *(v333 + 200) = v351;
  v356 = sub_1CA94C1E8();
  v357 = sub_1CA2F864C(v356);
  *(v655 + 72) = v357;
  v358 = swift_allocObject();
  *(v358 + 16) = xmmword_1CA981300;
  *(v358 + 32) = @"AllowsDecimalNumbers";
  *(v358 + 40) = 1;
  v359 = v633;
  *(v358 + 64) = MEMORY[0x1E69E6370];
  *(v358 + 72) = v359;
  *(v358 + 80) = v637;
  *(v358 + 88) = 0x80000001CA99C180;
  *(v358 + 104) = v353;
  *(v358 + 112) = @"Description";
  v639 = v359;
  v360 = @"AllowsDecimalNumbers";
  v361 = @"Description";
  v362 = sub_1CA94C438("A number greater than zero that indicates how fast or slow to encode the media. Values between 0.0 and 1.0 slow down the media. (WFMediaCustomSpeed)", 148);
  v633 = v363;
  v634 = v362;
  v364 = sub_1CA94C438("A number greater than zero that indicates how fast or slow to encode the media. Values between 0.0 and 1.0 slow down the media.", 127);
  v632 = v365;
  v637 = &v615;
  MEMORY[0x1EEE9AC00](v364);
  v366 = v657;
  sub_1CA948D98();
  v367 = v658;
  v368 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v368);
  v369 = &v615 - v661;
  sub_1CA948B68();

  v370 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v371 = sub_1CA2F9F14(v634, v633, v364, v632, 0, 0, &v615 - v366, v369);
  v372 = v636;
  *(v358 + 120) = v371;
  v373 = v635;
  *(v358 + 144) = v656;
  *(v358 + 152) = v373;
  *(v358 + 160) = v625;
  *(v358 + 168) = 0x80000001CA9B2590;
  *(v358 + 184) = MEMORY[0x1E69E6158];
  *(v358 + 192) = v372;
  v633 = v373;
  v634 = v372;
  v374 = sub_1CA94C438("Custom Speed (WFMediaCustomSpeed)", 33);
  v635 = v375;
  v636 = v374;
  v376 = sub_1CA94C438("Custom Speed", 12);
  v632 = v377;
  v637 = &v615;
  MEMORY[0x1EEE9AC00](v376);
  sub_1CA948D98();
  v378 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v378);
  v379 = v661;
  sub_1CA948B68();

  v380 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v358 + 200) = sub_1CA2F9F14(v636, v635, v376, v632, 0, 0, &v615 - v366, &v615 - v379);
  v381 = v656;
  v382 = v627;
  *(v358 + 224) = v656;
  *(v358 + 232) = v382;
  v637 = v382;
  v635 = sub_1CA94C438("1.0 (WFMediaCustomSpeed)", 24);
  v632 = v383;
  v384 = sub_1CA94C438("1.0", 3);
  v386 = v385;
  v636 = &v615;
  MEMORY[0x1EEE9AC00](v384);
  v387 = &v615 - v657;
  sub_1CA948D98();
  v388 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v388);
  sub_1CA948B68();

  v389 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v358 + 240) = sub_1CA2F9F14(v635, v632, v384, v386, 0, 0, v387, &v615 - v379);
  v390 = v640;
  *(v358 + 264) = v381;
  *(v358 + 272) = v390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v391 = swift_allocObject();
  *(v391 + 16) = v650;
  v635 = v390;
  v392 = MEMORY[0x1E69E6158];
  *(v391 + 32) = sub_1CA94C1E8();
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v358 + 280) = v391;
  *(v358 + 304) = v393;
  *(v358 + 312) = @"TextAlignment";
  *(v358 + 344) = v392;
  *(v358 + 320) = 0x7468676952;
  *(v358 + 328) = 0xE500000000000000;
  v636 = @"TextAlignment";
  v394 = sub_1CA94C1E8();
  v395 = sub_1CA2F864C(v394);
  *(v655 + 80) = v395;
  v396 = swift_allocObject();
  *(v396 + 16) = v648;
  v640 = 0xD000000000000014;
  v397 = v639;
  *(v396 + 32) = v639;
  *(v396 + 40) = 0xD000000000000014;
  *(v396 + 48) = 0x80000001CA9B2600;
  v398 = v633;
  *(v396 + 64) = v392;
  *(v396 + 72) = v398;
  *(v396 + 80) = 0x617461646174654DLL;
  *(v396 + 88) = 0xE800000000000000;
  *(v396 + 104) = v392;
  v399 = v634;
  *(v396 + 112) = v634;
  v632 = v397;
  v627 = v398;
  v634 = v399;
  v400 = sub_1CA94C438("Metadata (Metadata)", 19);
  v402 = v401;
  v403 = sub_1CA94C438("Metadata", 8);
  v405 = v404;
  v639 = &v615;
  MEMORY[0x1EEE9AC00](v403);
  v406 = &v615 - v657;
  sub_1CA948D98();
  v407 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v407);
  v408 = &v615 - v661;
  sub_1CA948B68();

  v409 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v410 = sub_1CA2F9F14(v400, v402, v403, v405, 0, 0, v406, v408);
  *(v396 + 144) = v656;
  *(v396 + 120) = v410;
  v411 = sub_1CA94C1E8();
  v412 = sub_1CA2F864C(v411);
  *(v655 + 88) = v412;
  v413 = swift_allocObject();
  *(v413 + 16) = v642;
  v639 = 0x80000001CA99B500;
  v414 = v632;
  v415 = v640;
  *(v413 + 32) = v632;
  *(v413 + 40) = v415;
  *(v413 + 48) = 0x80000001CA99B500;
  v416 = MEMORY[0x1E69E6158];
  v417 = v627;
  *(v413 + 64) = MEMORY[0x1E69E6158];
  *(v413 + 72) = v417;
  *(v413 + 80) = 0x61646174654D4657;
  *(v413 + 88) = 0xEF656C7469546174;
  v418 = v634;
  *(v413 + 104) = v416;
  *(v413 + 112) = v418;
  v633 = v414;
  v632 = v417;
  v634 = v418;
  v419 = sub_1CA94C438("Title (WFMetadataTitle)", 23);
  v625 = v420;
  v626 = v419;
  v624 = sub_1CA94C438("Title", 5);
  v422 = v421;
  v627 = &v615;
  MEMORY[0x1EEE9AC00](v624);
  v423 = v657;
  sub_1CA948D98();
  v424 = v658;
  v425 = [v658 bundleURL];
  v623 = &v615;
  MEMORY[0x1EEE9AC00](v425);
  v426 = &v615 - v661;
  sub_1CA948B68();

  v427 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v413 + 120) = sub_1CA2F9F14(v626, v625, v624, v422, 0, 0, &v615 - v423, v426);
  v428 = v656;
  v429 = v637;
  *(v413 + 144) = v656;
  *(v413 + 152) = v429;
  v637 = v429;
  v430 = sub_1CA94C438("My Great Track (WFMetadataTitle)", 32);
  v625 = v431;
  v626 = v430;
  v432 = sub_1CA94C438("My Great Track", 14);
  v434 = v433;
  v627 = &v615;
  MEMORY[0x1EEE9AC00](v432);
  v435 = &v615 - v423;
  sub_1CA948D98();
  v436 = [v424 bundleURL];
  MEMORY[0x1EEE9AC00](v436);
  v437 = &v615 - v661;
  sub_1CA948B68();

  v438 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v413 + 160) = sub_1CA2F9F14(v626, v625, v432, v434, 0, 0, v435, v437);
  v439 = v635;
  *(v413 + 184) = v428;
  *(v413 + 192) = v439;
  v440 = swift_allocObject();
  *(v440 + 16) = v650;
  v441 = swift_allocObject();
  *(v441 + 16) = v648;
  strcpy((v441 + 32), "WFParameterKey");
  *(v441 + 47) = -18;
  *(v441 + 48) = 0x617461646174654DLL;
  *(v441 + 56) = 0xE800000000000000;
  v442 = MEMORY[0x1E69E6158];
  *(v441 + 72) = MEMORY[0x1E69E6158];
  *(v441 + 80) = 0xD000000000000010;
  *(v441 + 88) = v643;
  *(v441 + 96) = 1;
  *(v441 + 120) = MEMORY[0x1E69E6370];
  *(v441 + 128) = 0x72756F7365524657;
  *(v441 + 168) = v442;
  *(v441 + 136) = 0xEF7373616C436563;
  v443 = v645;
  *(v441 + 144) = v647;
  *(v441 + 152) = v443;
  v627 = v439;
  *(v440 + 32) = sub_1CA94C1E8();
  *(v413 + 200) = v440;
  v444 = v636;
  *(v413 + 224) = v644;
  *(v413 + 232) = v444;
  *(v413 + 264) = v442;
  *(v413 + 240) = 0x7468676952;
  *(v413 + 248) = 0xE500000000000000;
  v636 = v444;
  v445 = sub_1CA94C1E8();
  v446 = sub_1CA2F864C(v445);
  *(v655 + 96) = v446;
  v447 = swift_allocObject();
  *(v447 + 16) = v642;
  v449 = v632;
  v448 = v633;
  v450 = v639;
  v451 = v640;
  *(v447 + 32) = v633;
  *(v447 + 40) = v451;
  *(v447 + 48) = v450;
  *(v447 + 64) = v442;
  *(v447 + 72) = v449;
  *(v447 + 80) = 0xD000000000000010;
  *(v447 + 88) = 0x80000001CA9B2690;
  v452 = v634;
  *(v447 + 104) = v442;
  *(v447 + 112) = v452;
  v633 = v448;
  v632 = v449;
  v635 = v452;
  v453 = sub_1CA94C438("Artist (WFMetadataArtist)", 25);
  v625 = v454;
  v626 = v453;
  v455 = sub_1CA94C438("Artist", 6);
  v624 = v456;
  v634 = &v615;
  MEMORY[0x1EEE9AC00](v455);
  v457 = v657;
  sub_1CA948D98();
  v458 = v658;
  v459 = [v658 bundleURL];
  v623 = &v615;
  MEMORY[0x1EEE9AC00](v459);
  v460 = v661;
  sub_1CA948B68();

  v461 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v447 + 120) = sub_1CA2F9F14(v626, v625, v455, v624, 0, 0, &v615 - v457, &v615 - v460);
  v462 = v656;
  v463 = v637;
  *(v447 + 144) = v656;
  *(v447 + 152) = v463;
  v637 = v463;
  v464 = sub_1CA94C438("Nicholas Fryingpan (WFMetadataArtist)", 37);
  v625 = v465;
  v626 = v464;
  v624 = sub_1CA94C438("Nicholas Fryingpan", 18);
  v467 = v466;
  v634 = &v615;
  MEMORY[0x1EEE9AC00](v624);
  sub_1CA948D98();
  v468 = [v458 bundleURL];
  MEMORY[0x1EEE9AC00](v468);
  sub_1CA948B68();

  v469 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v447 + 160) = sub_1CA2F9F14(v626, v625, v624, v467, 0, 0, &v615 - v457, &v615 - v460);
  v470 = v627;
  *(v447 + 184) = v462;
  *(v447 + 192) = v470;
  v471 = swift_allocObject();
  *(v471 + 16) = v650;
  v472 = swift_allocObject();
  *(v472 + 16) = v648;
  strcpy((v472 + 32), "WFParameterKey");
  *(v472 + 47) = -18;
  *(v472 + 48) = 0x617461646174654DLL;
  *(v472 + 56) = 0xE800000000000000;
  v473 = MEMORY[0x1E69E6158];
  *(v472 + 72) = MEMORY[0x1E69E6158];
  *(v472 + 80) = 0xD000000000000010;
  *(v472 + 88) = v643;
  *(v472 + 96) = 1;
  *(v472 + 120) = MEMORY[0x1E69E6370];
  *(v472 + 128) = 0x72756F7365524657;
  *(v472 + 168) = v473;
  *(v472 + 136) = 0xEF7373616C436563;
  v474 = v645;
  *(v472 + 144) = v647;
  *(v472 + 152) = v474;
  v626 = v470;
  *(v471 + 32) = sub_1CA94C1E8();
  *(v447 + 200) = v471;
  v475 = v636;
  *(v447 + 224) = v644;
  *(v447 + 232) = v475;
  *(v447 + 264) = v473;
  *(v447 + 240) = 0x7468676952;
  *(v447 + 248) = 0xE500000000000000;
  v636 = v475;
  v476 = sub_1CA94C1E8();
  v477 = sub_1CA2F864C(v476);
  *(v655 + 104) = v477;
  v478 = swift_allocObject();
  *(v478 + 16) = v642;
  v480 = v632;
  v479 = v633;
  v481 = v639;
  v482 = v640;
  *(v478 + 32) = v633;
  *(v478 + 40) = v482;
  *(v478 + 48) = v481;
  *(v478 + 64) = v473;
  *(v478 + 72) = v480;
  *(v478 + 80) = 0x61646174654D4657;
  *(v478 + 88) = 0xEF6D75626C416174;
  v483 = v635;
  *(v478 + 104) = v473;
  *(v478 + 112) = v483;
  v634 = v479;
  v627 = v480;
  v632 = v483;
  v633 = sub_1CA94C438("Album (WFMetadataAlbum)", 23);
  v625 = v484;
  v624 = sub_1CA94C438("Album", 5);
  v486 = v485;
  v635 = &v615;
  MEMORY[0x1EEE9AC00](v624);
  sub_1CA948D98();
  v487 = v658;
  v488 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v488);
  v489 = &v615 - v661;
  sub_1CA948B68();

  v490 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v478 + 120) = sub_1CA2F9F14(v633, v625, v624, v486, 0, 0, &v615 - v457, v489);
  v491 = v656;
  v492 = v637;
  *(v478 + 144) = v656;
  *(v478 + 152) = v492;
  v633 = v492;
  v635 = sub_1CA94C438("Abbey Road (WFMetadataAlbum)", 28);
  v625 = v493;
  v494 = sub_1CA94C438("Abbey Road", 10);
  v496 = v495;
  v637 = &v615;
  MEMORY[0x1EEE9AC00](v494);
  v497 = &v615 - v657;
  sub_1CA948D98();
  v498 = [v487 bundleURL];
  MEMORY[0x1EEE9AC00](v498);
  v499 = &v615 - v661;
  sub_1CA948B68();

  v500 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v478 + 160) = sub_1CA2F9F14(v635, v625, v494, v496, 0, 0, v497, v499);
  v501 = v626;
  *(v478 + 184) = v491;
  *(v478 + 192) = v501;
  v502 = swift_allocObject();
  *(v502 + 16) = v650;
  v503 = swift_allocObject();
  *(v503 + 16) = v648;
  strcpy((v503 + 32), "WFParameterKey");
  *(v503 + 47) = -18;
  *(v503 + 48) = 0x617461646174654DLL;
  *(v503 + 56) = 0xE800000000000000;
  v504 = MEMORY[0x1E69E6158];
  *(v503 + 72) = MEMORY[0x1E69E6158];
  *(v503 + 80) = 0xD000000000000010;
  *(v503 + 88) = v643;
  *(v503 + 96) = 1;
  *(v503 + 120) = MEMORY[0x1E69E6370];
  *(v503 + 128) = 0x72756F7365524657;
  *(v503 + 168) = v504;
  *(v503 + 136) = 0xEF7373616C436563;
  v505 = v645;
  *(v503 + 144) = v647;
  *(v503 + 152) = v505;
  v626 = v501;
  *(v502 + 32) = sub_1CA94C1E8();
  *(v478 + 200) = v502;
  v506 = v636;
  *(v478 + 224) = v644;
  *(v478 + 232) = v506;
  *(v478 + 264) = v504;
  *(v478 + 240) = 0x7468676952;
  *(v478 + 248) = 0xE500000000000000;
  v637 = v506;
  v507 = sub_1CA94C1E8();
  v508 = sub_1CA2F864C(v507);
  *(v655 + 112) = v508;
  v509 = swift_allocObject();
  *(v509 + 16) = v642;
  v510 = v634;
  v511 = v639;
  v512 = v640;
  *(v509 + 32) = v634;
  *(v509 + 40) = v512;
  *(v509 + 48) = v511;
  v513 = v627;
  *(v509 + 64) = v504;
  *(v509 + 72) = v513;
  *(v509 + 80) = 0x61646174654D4657;
  *(v509 + 88) = 0xEF65726E65476174;
  v514 = v632;
  *(v509 + 104) = v504;
  *(v509 + 112) = v514;
  v635 = v510;
  v634 = v513;
  v636 = v514;
  v627 = sub_1CA94C438("Genre (WFMetadataGenre)", 23);
  v625 = v515;
  v516 = sub_1CA94C438("Genre", 5);
  v624 = v517;
  v632 = &v615;
  MEMORY[0x1EEE9AC00](v516);
  v518 = v657;
  sub_1CA948D98();
  v519 = v658;
  v520 = [v658 bundleURL];
  v623 = &v615;
  MEMORY[0x1EEE9AC00](v520);
  v521 = v661;
  sub_1CA948B68();

  v522 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v509 + 120) = sub_1CA2F9F14(v627, v625, v516, v624, 0, 0, &v615 - v518, &v615 - v521);
  v523 = v656;
  v524 = v633;
  *(v509 + 144) = v656;
  *(v509 + 152) = v524;
  v633 = v524;
  v627 = sub_1CA94C438("Indie (WFMetadataGenre)", 23);
  v625 = v525;
  v624 = sub_1CA94C438("Indie", 5);
  v527 = v526;
  v632 = &v615;
  MEMORY[0x1EEE9AC00](v624);
  v528 = &v615 - v518;
  sub_1CA948D98();
  v529 = [v519 bundleURL];
  MEMORY[0x1EEE9AC00](v529);
  sub_1CA948B68();

  v530 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v509 + 160) = sub_1CA2F9F14(v627, v625, v624, v527, 0, 0, v528, &v615 - v521);
  v531 = v626;
  *(v509 + 184) = v523;
  *(v509 + 192) = v531;
  v532 = swift_allocObject();
  *(v532 + 16) = v650;
  v533 = swift_allocObject();
  *(v533 + 16) = v648;
  strcpy((v533 + 32), "WFParameterKey");
  *(v533 + 47) = -18;
  *(v533 + 48) = 0x617461646174654DLL;
  *(v533 + 56) = 0xE800000000000000;
  v534 = MEMORY[0x1E69E6158];
  *(v533 + 72) = MEMORY[0x1E69E6158];
  *(v533 + 80) = 0xD000000000000010;
  *(v533 + 88) = v643;
  *(v533 + 96) = 1;
  *(v533 + 120) = MEMORY[0x1E69E6370];
  *(v533 + 128) = 0x72756F7365524657;
  *(v533 + 168) = v534;
  *(v533 + 136) = 0xEF7373616C436563;
  v535 = v645;
  *(v533 + 144) = v647;
  *(v533 + 152) = v535;
  v632 = v531;
  *(v532 + 32) = sub_1CA94C1E8();
  *(v509 + 200) = v532;
  v536 = v637;
  *(v509 + 224) = v644;
  *(v509 + 232) = v536;
  *(v509 + 264) = v534;
  *(v509 + 240) = 0x7468676952;
  *(v509 + 248) = 0xE500000000000000;
  v537 = sub_1CA94C1E8();
  v538 = sub_1CA2F864C(v537);
  *(v655 + 120) = v538;
  v539 = swift_allocObject();
  *(v539 + 16) = v642;
  v540 = v639;
  v541 = v640;
  *(v539 + 32) = v635;
  *(v539 + 40) = v541;
  *(v539 + 48) = v540;
  v542 = v634;
  *(v539 + 64) = v534;
  *(v539 + 72) = v542;
  strcpy((v539 + 80), "WFMetadataYear");
  *(v539 + 95) = -18;
  v543 = v636;
  *(v539 + 104) = v534;
  *(v539 + 112) = v543;
  v544 = sub_1CA94C438("Year (WFMetadataYear)", 21);
  v639 = v545;
  v640 = v544;
  v546 = sub_1CA94C438("Year", 4);
  v627 = v547;
  *&v642 = &v615;
  MEMORY[0x1EEE9AC00](v546);
  v548 = v657;
  sub_1CA948D98();
  v549 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v549);
  v550 = v661;
  sub_1CA948B68();

  v551 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v539 + 120) = sub_1CA2F9F14(v640, v639, v546, v627, 0, 0, &v615 - v548, &v615 - v550);
  v552 = v656;
  v553 = v633;
  *(v539 + 144) = v656;
  *(v539 + 152) = v553;
  v554 = sub_1CA94C438("2001 (WFMetadataYear)", 21);
  v639 = v555;
  v640 = v554;
  v556 = sub_1CA94C438("2001", 4);
  v627 = v557;
  *&v642 = &v615;
  MEMORY[0x1EEE9AC00](v556);
  sub_1CA948D98();
  v558 = v658;
  v559 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v559);
  sub_1CA948B68();

  v560 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v539 + 160) = sub_1CA2F9F14(v640, v639, v556, v627, 0, 0, &v615 - v548, &v615 - v550);
  v561 = v632;
  *(v539 + 184) = v552;
  *(v539 + 192) = v561;
  v562 = swift_allocObject();
  *(v562 + 16) = v650;
  v563 = swift_allocObject();
  *(v563 + 16) = v648;
  strcpy((v563 + 32), "WFParameterKey");
  *(v563 + 47) = -18;
  *(v563 + 48) = 0x617461646174654DLL;
  *(v563 + 56) = 0xE800000000000000;
  v564 = MEMORY[0x1E69E6158];
  *(v563 + 72) = MEMORY[0x1E69E6158];
  *(v563 + 80) = 0xD000000000000010;
  *(v563 + 88) = v643;
  *(v563 + 96) = 1;
  *(v563 + 120) = MEMORY[0x1E69E6370];
  *(v563 + 128) = 0x72756F7365524657;
  *(v563 + 168) = v564;
  *(v563 + 136) = 0xEF7373616C436563;
  v565 = v645;
  *(v563 + 144) = v647;
  *(v563 + 152) = v565;
  v566 = v564;
  *(v562 + 32) = sub_1CA94C1E8();
  *(v539 + 200) = v562;
  v567 = v637;
  *(v539 + 224) = v644;
  *(v539 + 232) = v567;
  *(v539 + 264) = v566;
  *(v539 + 240) = 0x7468676952;
  *(v539 + 248) = 0xE500000000000000;
  v568 = sub_1CA94C1E8();
  v569 = sub_1CA2F864C(v568);
  *(v655 + 128) = v569;
  v570 = swift_allocObject();
  *(v570 + 16) = v631;
  v572 = v628;
  v571 = v629;
  *(v570 + 32) = v635;
  *(v570 + 40) = v572;
  *(v570 + 48) = v571;
  v573 = v634;
  *(v570 + 64) = v566;
  *(v570 + 72) = v573;
  *(v570 + 80) = v638;
  *(v570 + 88) = 0x80000001CA9B2800;
  v574 = v636;
  *(v570 + 104) = v566;
  *(v570 + 112) = v574;
  *&v642 = sub_1CA94C438("Artwork (WFMetadataArtwork)", 27);
  v640 = v575;
  v576 = sub_1CA94C438("Artwork", 7);
  v639 = v577;
  v653 = &v615;
  MEMORY[0x1EEE9AC00](v576);
  v578 = v657;
  sub_1CA948D98();
  v579 = [v558 bundleURL];
  v638 = &v615;
  MEMORY[0x1EEE9AC00](v579);
  v580 = v661;
  sub_1CA948B68();

  v581 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v570 + 120) = sub_1CA2F9F14(v642, v640, v576, v639, 0, 0, &v615 - v578, &v615 - v580);
  v582 = v633;
  *(v570 + 144) = v656;
  *(v570 + 152) = v582;
  *&v642 = sub_1CA94C438("Choose Variable (WFMetadataArtwork)", 35);
  v640 = v583;
  v584 = sub_1CA94C438("Choose Variable", 15);
  v639 = v585;
  v653 = &v615;
  MEMORY[0x1EEE9AC00](v584);
  v586 = v578;
  sub_1CA948D98();
  v587 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v587);
  sub_1CA948B68();

  v588 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v570 + 160) = sub_1CA2F9F14(v642, v640, v584, v639, 0, 0, &v615 - v578, &v615 - v580);
  v589 = v632;
  *(v570 + 184) = v656;
  *(v570 + 192) = v589;
  v590 = swift_allocObject();
  *(v590 + 16) = v650;
  v591 = swift_allocObject();
  *(v591 + 16) = v648;
  strcpy((v591 + 32), "WFParameterKey");
  *(v591 + 47) = -18;
  *(v591 + 48) = 0x617461646174654DLL;
  *(v591 + 56) = 0xE800000000000000;
  v592 = MEMORY[0x1E69E6158];
  *(v591 + 72) = MEMORY[0x1E69E6158];
  *(v591 + 80) = 0xD000000000000010;
  *(v591 + 88) = v643;
  *(v591 + 96) = 1;
  *(v591 + 120) = MEMORY[0x1E69E6370];
  *(v591 + 128) = 0x72756F7365524657;
  *(v591 + 168) = v592;
  *(v591 + 136) = 0xEF7373616C436563;
  v593 = v645;
  *(v591 + 144) = v647;
  *(v591 + 152) = v593;
  *(v590 + 32) = sub_1CA94C1E8();
  *(v570 + 224) = v644;
  *(v570 + 200) = v590;
  v594 = sub_1CA94C1E8();
  v595 = sub_1CA2F864C(v594);
  v596 = v655;
  *(v655 + 136) = v595;
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v598 = v641;
  v641[55] = v596;
  v598[58] = v597;
  v598[59] = @"ParameterSummary";
  v599 = @"ParameterSummary";
  v600 = sub_1CA94C438("Encode ${WFMedia} (Parameter Summary)", 37);
  v602 = v601;
  v603 = sub_1CA94C438("Encode ${WFMedia}", 17);
  v605 = v604;
  MEMORY[0x1EEE9AC00](v603);
  sub_1CA948D98();
  v606 = [v658 bundleURL];
  MEMORY[0x1EEE9AC00](v606);
  v607 = &v615 - v661;
  sub_1CA948B68();

  v608 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v609 = sub_1CA2F9F14(v600, v602, v603, v605, 0, 0, &v615 - v586, v607);
  v610 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v611 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v612 = v641;
  v641[60] = v610;
  v612[63] = v611;
  v612[64] = @"ResidentCompatible";
  v612[68] = MEMORY[0x1E69E6370];
  *(v612 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v613 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA3E4650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1CA2BE29C();
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v7;
    v35 = v8 + 56;
    v36 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v37 = v9;
        v19 = sub_1CA94C3A8();
        v21 = v20;
        v23 = *(v39 + 16);
        v22 = *(v39 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1CA271524(v22 > 1, v23 + 1, 1, v15, v16, v17, v18);
        }

        *(v39 + 16) = v23 + 1;
        v24 = v39 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v35;
        v8 = v36;
        v25 = 1 << *(v36 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v35 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v36 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_1CA2974B8(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_1CA2974B8(v11, v37, 0);
        }

LABEL_19:
        if (++v12 == v34)
        {
          return;
        }

        v10 = 0;
        v9 = *(v36 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
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
}

uint64_t sub_1CA3E4888(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v47 = a1;
  v48 = a2;
  OUTLINED_FUNCTION_4_12();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v49 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_12();
  v51 = v15;
  OUTLINED_FUNCTION_29();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v45 = v21 - v20;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_12();
  v39 = v23;
  v40 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v36 - v25;
  v27 = sub_1CA94CA28();
  if (!v27)
  {
    return sub_1CA94C6B8();
  }

  v50 = v27;
  v54 = sub_1CA94D548();
  v41 = sub_1CA94D558();
  sub_1CA94D4F8();
  result = sub_1CA94C9F8();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v36 = v11;
    v37 = a5;
    v29 = 0;
    v42 = (v51 + 16);
    v43 = v51 + 8;
    v44 = v8;
    while (!__OFADD__(v29, 1))
    {
      v51 = v29 + 1;
      v30 = sub_1CA94CB28();
      (*v42)(v19);
      v30(v53, 0);
      v31 = v52;
      v47(v19, v49);
      if (v31)
      {
        v34 = OUTLINED_FUNCTION_16_12();
        v35(v34);
        (*(v39 + 8))(v26, v40);

        return (*(v36 + 32))(v38, v49, v37);
      }

      v52 = 0;
      v32 = OUTLINED_FUNCTION_16_12();
      v33(v32);
      sub_1CA94D538();
      result = sub_1CA94CA68();
      ++v29;
      if (v51 == v50)
      {
        (*(v39 + 8))(v26, v40);
        return v54;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CA3E4C5C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25B410(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCAA22D0](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t (*sub_1CA3E4D48@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_1CA2C9578(v7, v9);
      v8 = v4(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_1CA27F268(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

id TableTemplateValue.__allocating_init(compoundType:rows:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = objc_allocWithZone(v1);
  return TableTemplateValue.init(compoundType:rows:)(v2, v0, v4, v5);
}

id TableTemplateValue.init(compoundType:rows:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  *(v4 + qword_1EC444E10) = a1;
  *(v4 + qword_1EC444E18) = a2;
  v7 = type metadata accessor for TableTemplateValue(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

id TableTemplateValue.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v5 = sub_1CA94CF78();
  if (!v5)
  {

    v8 = *(v4 + 80);
LABEL_6:
    type metadata accessor for TableTemplateValue(0, v8, *(v4 + 88), v13);
    OUTLINED_FUNCTION_93();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  v7 = sub_1CA94C978();
  v8 = *(v4 + 80);
  v9 = sub_1CA94CF88();
  if (!v9)
  {

    goto LABEL_6;
  }

  *(v2 + qword_1EC444E10) = v7;
  *(v2 + qword_1EC444E18) = v9;
  v11 = type metadata accessor for TableTemplateValue(0, v8, *(v4 + 88), v10);
  v15.receiver = v2;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_init);

  return v12;
}

void sub_1CA3E50D4(void *a1)
{
  v2 = sub_1CA94C988();
  v3 = sub_1CA94C368();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_1CA94C648();
  v5 = sub_1CA94C368();
  [a1 encodeObject:v4 forKey:v5];
}

void sub_1CA3E51E4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1CA3E50D4(v4);
}

id TableTemplateValue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TableTemplateValue.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TableTemplateValue(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t TableTemplateRowState.summaryFormatString.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  result = (*(a1 + 80))();
  if ((result & 1) != 0 || (v4 = OUTLINED_FUNCTION_69(), v6 = *(v5(v4) + 16), result = , !v6))
  {
    v12 = 9;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_69();
    TableTemplateRowState.activeOperator.getter(v7, v8, v9);
    if (v14)
    {
      sub_1CA27F268(&v13, v15);
      v10 = v16;
      v11 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v11 + 40))(v10, v11);
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }

    result = sub_1CA3E585C(&v13);
    v12 = 8;
  }

  *a2 = v12;
  return result;
}

void TableTemplateRowState.activeOperator.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_4_12();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  if ((*(v13 + 80))())
  {
    goto LABEL_2;
  }

  v14 = OUTLINED_FUNCTION_69();
  v16 = v15(v14);
  MEMORY[0x1EEE9AC00](v16);
  *(&v36 - 4) = a1;
  *(&v36 - 3) = a2;
  *(&v36 - 2) = v3;
  sub_1CA3E4D48(sub_1CA3E5E2C, v16, &v39);

  if (v40)
  {
    sub_1CA27F268(&v39, &v36);
    sub_1CA27F268(&v36, a3);
    return;
  }

  sub_1CA3E585C(&v39);
  (*(v8 + 16))(v12, v3, a1);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_2:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v17 = v38;
  if (v37 != 1)
  {
LABEL_13:

    goto LABEL_2;
  }

  if (!v36)
  {

    v28 = OUTLINED_FUNCTION_52_0();
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    *(a3 + 32) = OUTLINED_FUNCTION_4_27(&qword_1EC444E38);
    v30 = swift_allocObject();
    *a3 = v30;
    *(v30 + 16) = 0;
    goto LABEL_18;
  }

  if (v36 == 2)
  {

    v22 = OUTLINED_FUNCTION_52_0();
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    *(a3 + 32) = OUTLINED_FUNCTION_4_27(&qword_1EC444E38);
    v24 = swift_allocObject();
    *a3 = v24;
    *(v24 + 16) = 2;
LABEL_18:
    OUTLINED_FUNCTION_7_17();
    *(v31 + 24) = v32;
    *(v31 + 32) = v33;
    *(v31 + 40) = 1;
    return;
  }

  if (v36 != 99)
  {
    if (v36 == 4)
    {

      v18 = OUTLINED_FUNCTION_52_0();
      *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
      *(a3 + 32) = sub_1CA25C3BC(&unk_1EC444E48, &qword_1EC444E40, &qword_1CA98F950, &unk_1CA98C210);
      OUTLINED_FUNCTION_7_17();
      *a3 = v20;
      *(a3 + 8) = v21;
      *(a3 + 16) = 1;
      return;
    }

    goto LABEL_13;
  }

  if (v38)
  {
    v25 = [v38 isCaseInsensitive];
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
    OUTLINED_FUNCTION_3_22();
    *(a3 + 32) = sub_1CA25C3BC(v26, &qword_1EC444E20, &unk_1CA9917A0, v27);

    *a3 = 0xD000000000000019;
    *(a3 + 8) = 0x80000001CA9B28F0;
    *(a3 + 16) = 0;
    *(a3 + 17) = v25;
  }

  else
  {
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
    OUTLINED_FUNCTION_3_22();
    *(a3 + 32) = sub_1CA25C3BC(v34, &qword_1EC444E20, &unk_1CA9917A0, v35);

    *a3 = 0xD000000000000019;
    *(a3 + 8) = 0x80000001CA9B28F0;
    *(a3 + 16) = 0;
  }
}

uint64_t sub_1CA3E585C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4456B0, &unk_1CA985F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA3E58C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v44 = a3;
  v47 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v38 - v5;
  v6 = sub_1CA94D098();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v38 - v8;
  v46 = *(v6 - 8);
  v9 = v46;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v19);
  v20 = *(v18 + 24);
  v21 = v18;
  v22 = v44;
  v20(v17, v21);
  v24 = v42;
  v23 = AssociatedTypeWitness;
  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v25 ^ 1u, 1, v23);
  (*(v48 + 128))(v22);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v23);
  v26 = *(TupleTypeMetadata2 + 48);
  v47 = v9;
  v27 = v9;
  v28 = v23;
  v29 = *(v27 + 16);
  v29(v24, v16, v6);
  v29(v24 + v26, v14, v6);
  if (__swift_getEnumTagSinglePayload(v24, 1, v28) != 1)
  {
    v38 = v14;
    v29(v45, v24, v6);
    v32 = v28;
    if (__swift_getEnumTagSinglePayload(v24 + v26, 1, v28) != 1)
    {
      TupleTypeMetadata2 = v16;
      v33 = v41;
      v34 = v39;
      (*(v41 + 32))(v39, v24 + v26, v32);
      swift_getAssociatedConformanceWitness();
      v35 = v45;
      v31 = sub_1CA94C358();
      v36 = *(v33 + 8);
      v36(v34, v32);
      v30 = *(v46 + 8);
      v30(v38, v6);
      v36(v35, v32);
      v16 = TupleTypeMetadata2;
      v30(v24, v6);
      goto LABEL_8;
    }

    v30 = *(v46 + 8);
    v30(v38, v6);
    (*(v41 + 8))(v45, v28);
    goto LABEL_6;
  }

  v30 = *(v46 + 8);
  v30(v14, v6);
  if (__swift_getEnumTagSinglePayload(v24 + v26, 1, v28) != 1)
  {
LABEL_6:
    (*(v40 + 8))(v24, TupleTypeMetadata2);
    v31 = 0;
    goto LABEL_8;
  }

  v30(v24, v6);
  v31 = 1;
LABEL_8:
  v30(v16, v6);
  return v31 & 1;
}

void __swiftcall TableTemplateRowState.makeOperatorParameter(key:)(WFParameter *__return_ptr retstr, Swift::String key)
{
  v4 = v3;
  v5 = v2;
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_4_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  (*(v9 + 16))(v8 - v7);
  if (swift_dynamicCast())
  {
  }

  v10 = *(v4 + 152);
  sub_1CA94C218();
  v10(v5, v4);
  v11 = objc_allocWithZone(type metadata accessor for RowTemplateOperatorPickerParameter());
  sub_1CA3E7A10();
}

uint64_t TableTemplateParameterState.rows.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TableTemplateParameterState.containedVariables.getter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_14();
  sub_1CA94C758();
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444470, &unk_1CA983510);
  v1 = MEMORY[0x1E69E6328];
  swift_getWitnessTable();
  sub_1CA25C3BC(&qword_1EC444E58, &unk_1EC444470, &unk_1CA983510, v1);
  v2 = sub_1CA94C618();

  return v2;
}

uint64_t TableTemplateParameterState.init(compoundType:rows:requiresBoundedDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TableTemplateParameterState.init(serializedRepresentation:variableProvider:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v51 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - v14;
  OUTLINED_FUNCTION_4_12();
  v50 = v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v52 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v41 - v20;
  v58 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if ((OUTLINED_FUNCTION_14_15() & 1) == 0)
  {
    swift_unknownObjectRelease();

LABEL_24:
    result = swift_unknownObjectRelease();
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    return result;
  }

  v49 = a5;
  v54 = a2;
  v55 = a3;
  sub_1CA94C3A8();
  v22 = sub_1CA323E28();

  if (!v22)
  {
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  v58 = v22;
  v23 = OUTLINED_FUNCTION_14_15();
  v24 = v55;
  if ((v23 & 1) == 0)
  {
LABEL_21:
    swift_unknownObjectRelease();
LABEL_23:

    goto LABEL_24;
  }

  v25 = v57;
  v26 = sub_1CA323E28();

  if (!v26)
  {
    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v41[1] = v26;
  v41[0] = sub_1CA94C978();
  v58 = sub_1CA94C6B8();
  v27 = sub_1CA323E28();

  if (!v27)
  {
    goto LABEL_27;
  }

  v57 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v28 = v56;
  result = sub_1CA25B410(v56);
  if (!result)
  {

    goto LABEL_27;
  }

  if (result >= 1)
  {
    v30 = 0;
    v49 = *(v49 + 8);
    v47 = *(v49 + 48);
    v48 = v49 + 48;
    v45 = (v50 + 32);
    v46 = v28 & 0xC000000000000001;
    v43 = (v50 + 8);
    v44 = (v50 + 16);
    v42 = (v51 + 8);
    v50 = v28;
    v51 = v25;
    do
    {
      v31 = result;
      if (v46)
      {
        v32 = MEMORY[0x1CCAA22D0](v30, v28);
      }

      else
      {
        v32 = *(v28 + 8 * v30 + 32);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      v33 = v54;
      swift_unknownObjectRetain();
      v34 = v55;
      v35 = v55;
      v47(v32, v33, v34, a4, v49);
      if (__swift_getEnumTagSinglePayload(v15, 1, a4) == 1)
      {
        swift_unknownObjectRelease();
        (*v42)(v15, v53);
      }

      else
      {
        (*v45)(v21, v15, a4);
        (*v44)(v52, v21, a4);
        sub_1CA94C758();
        sub_1CA94C708();
        swift_unknownObjectRelease();
        (*v43)(v21, a4);
      }

      v28 = v50;
      ++v30;
      result = v31;
    }

    while (v31 != v30);

    v24 = v55;
LABEL_27:
    v36 = sub_1CA323E28();

    if (v36)
    {
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v38 = [v37 BOOLValue];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_33:
        v39 = v41[0];
        result = swift_unknownObjectRelease();
        v40 = v58;
        *a6 = v39;
        *(a6 + 8) = v40;
        *(a6 + 16) = v38;
        return result;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v38 = 0;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t TableTemplateParameterState.init(variable:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v27 = a4;
  sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v25 = v8;
  v26 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  OUTLINED_FUNCTION_4_12();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  v28 = sub_1CA94C6B8();
  v20 = *(a3 + 176);
  v21 = a1;
  v20();
  if (__swift_getEnumTagSinglePayload(v11, 1, a2) == 1)
  {

    result = (*(v25 + 8))(v11, v26);
  }

  else
  {
    (*(v13 + 32))(v19, v11, a2);
    (*(v13 + 16))(v17, v19, a2);
    sub_1CA94C758();
    sub_1CA94C708();

    result = (*(v13 + 8))(v19, a2);
  }

  v24 = v27;
  v23 = v28;
  *v27 = 0;
  v24[1] = v23;
  *(v24 + 16) = 0;
  return result;
}

Swift::Void __swiftcall TableTemplateParameterState.replace(variable:with:)(WFVariable_optional *variable, WFVariable_optional *with)
{
  v4 = v3;
  v13 = *(v3 + 8);
  v10 = *(v2 + 16);
  v11 = variable;
  v12 = with;
  v5 = sub_1CA94C758();
  sub_1CA94C218();
  OUTLINED_FUNCTION_2_0();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1CA3E4888(sub_1CA3E872C, &v9, v5, v10, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  swift_bridgeObjectRelease_n();
  *(v4 + 8) = v8;
}

id TableTemplateParameterState.variable.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  v15[1] = *(v1 + 8);
  sub_1CA94C758();
  OUTLINED_FUNCTION_2_0();
  swift_getWitnessTable();
  sub_1CA94CAD8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    (*(v6 + 8))(v9, v4);
    return 0;
  }

  v10 = (*(*(*(a1 + 24) + 8) + 32))(v3);
  (*(*(v3 - 8) + 8))(v9, v3);
  if (!sub_1CA25B410(v10))
  {

    return 0;
  }

  sub_1CA275D70(0, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v14 = OUTLINED_FUNCTION_13_14();
    v11 = MEMORY[0x1CCAA22D0](v14);
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = v11;

  return v12;
}

uint64_t TableTemplateParameterState.serializedRepresentation.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  OUTLINED_FUNCTION_18_15();
  v3 = sub_1CA94C1E8();
  v4 = sub_1CA94C988();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v3;
  sub_1CA32EA0C(v4, 0xD00000000000001DLL, 0x80000001CA9B2A90, isUniquelyReferenced_nonNull_native, &v18);

  v6 = v18;
  v7 = sub_1CA94C7A8();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v18 = v6;
  sub_1CA32EA0C(v7, 0xD00000000000001DLL, 0x80000001CA9B2A70, v8, &v18);

  v9 = v18;
  v18 = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_14();
  sub_1CA94C758();
  swift_getWitnessTable();
  sub_1CA94C5B8();

  v10 = sub_1CA94C648();

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v18 = v9;
  sub_1CA32EA0C(v10, 0xD000000000000020, 0x80000001CA9B2A40, v11, &v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444E68, &unk_1CA987B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v13;
  *(inited + 48) = sub_1CA94C368();
  *(inited + 56) = sub_1CA94C3A8();
  *(inited + 64) = v14;
  OUTLINED_FUNCTION_18_15();
  v15 = sub_1CA94C1A8();

  *(inited + 72) = v15;
  OUTLINED_FUNCTION_18_15();
  sub_1CA94C1E8();
  OUTLINED_FUNCTION_18_15();
  v16 = sub_1CA94C1A8();

  return v16;
}

uint64_t TableTemplateParameterState.process(context:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = *(a2 + 16);
  OUTLINED_FUNCTION_4_12();
  v3[9] = v4;
  v3[10] = *(v5 + 64);
  v6 = swift_task_alloc();
  v7 = *v2;
  v8 = v2[1];
  v3[11] = v6;
  v3[12] = v7;
  v3[13] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CA3E7068, 0, 0);
}

uint64_t sub_1CA3E7068()
{
  v1 = *(v0[7] + 24);
  v0[14] = v1;
  v0[15] = *(v1 + 8);
  v0[16] = swift_getAssociatedTypeWitness();
  v0[2] = sub_1CA94C6B8();
  sub_1CA94C218();
  v2 = sub_1CA94C668();
  v0[3] = v2;
  if (v2 == sub_1CA94C6F8())
  {
    v3 = OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_22_10(v3, v4, v5, &protocol requirements base descriptor for TableTemplateRowState);
    v6 = OUTLINED_FUNCTION_13_14();
    type metadata accessor for TableTemplateValue(v6, v7, v8, v9);
    TableTemplateValue.__allocating_init(compoundType:rows:)();

    v10 = OUTLINED_FUNCTION_1_3();

    return v11(v10);
  }

  else
  {
    v13 = sub_1CA94C6D8();
    sub_1CA94C688();
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_6_22();
      v17(v14, v15 + v16 * v2);
    }

    else
    {
      v29 = v0[10];
      result = sub_1CA94D468();
      if (v29 != 8)
      {
        __break(1u);
        return result;
      }

      v30 = result;
      v31 = v0[11];
      v32 = v0[8];
      v33 = v0[9];
      v0[4] = v30;
      (*(v33 + 16))(v31, v0 + 4, v32);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_17_6();
    v18 = sub_1CA94C738();
    OUTLINED_FUNCTION_9_16(v18, v19, v20, v21, v22, v23, v24, v25, v34, v35, v36);
    v26 = swift_task_alloc();
    v0[17] = v26;
    *v26 = v0;
    v27 = OUTLINED_FUNCTION_1_24(v26);

    return v28(v27);
  }
}

uint64_t sub_1CA3E72D0(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {

    v4 = OUTLINED_FUNCTION_52_0();
    v5(v4);

    v6 = sub_1CA3E7660;
  }

  else
  {
    (*(v3[9] + 8))(v3[11], v3[8]);
    v6 = sub_1CA3E7430;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA3E7430()
{
  v1 = v0[18];
  if (v1)
  {
    v0[5] = v1;
    sub_1CA94C758();
    sub_1CA94C708();
  }

  v2 = v0[3];
  if (v2 == sub_1CA94C6F8())
  {
    v3 = OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_22_10(v3, v4, v5, &protocol requirements base descriptor for TableTemplateRowState);
    v6 = OUTLINED_FUNCTION_13_14();
    type metadata accessor for TableTemplateValue(v6, v7, v8, v9);
    TableTemplateValue.__allocating_init(compoundType:rows:)();

    v10 = OUTLINED_FUNCTION_1_3();

    return v11(v10);
  }

  else
  {
    v13 = sub_1CA94C6D8();
    sub_1CA94C688();
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_6_22();
      v17(v14, v15 + v16 * v2);
    }

    else
    {
      v29 = v0[10];
      result = sub_1CA94D468();
      if (v29 != 8)
      {
        __break(1u);
        return result;
      }

      v30 = result;
      v31 = v0[11];
      v32 = v0[8];
      v33 = v0[9];
      v0[4] = v30;
      (*(v33 + 16))(v31, v0 + 4, v32);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_17_6();
    v18 = sub_1CA94C738();
    OUTLINED_FUNCTION_9_16(v18, v19, v20, v21, v22, v23, v24, v25, v34, v35, v36);
    v26 = swift_task_alloc();
    v0[17] = v26;
    *v26 = v0;
    v27 = OUTLINED_FUNCTION_1_24(v26);

    return v28(v27);
  }
}

uint64_t sub_1CA3E7660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static TableTemplateParameterState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (sub_1CA94C788())
  {
    return v4 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t TableTemplateParameterState.hash(into:)()
{
  OUTLINED_FUNCTION_49_0();
  MEMORY[0x1CCAA2780](*v0);
  sub_1CA94C768();
  return sub_1CA94D938();
}

uint64_t TableTemplateParameterState.hashValue.getter()
{
  sub_1CA94D918();
  TableTemplateParameterState.hash(into:)();
  return sub_1CA94D968();
}

uint64_t sub_1CA3E7804(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA3E78A8;

  return TableTemplateParameterState.process(context:)(a1, a2);
}

uint64_t sub_1CA3E78A8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1CA3E79C0(uint64_t a1)
{
  sub_1CA94D918();
  TableTemplateParameterState.hash(into:)();
  return sub_1CA94D968();
}

id sub_1CA3E7A10()
{
  OUTLINED_FUNCTION_49_0();
  *&v1[OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_operators] = v3;
  v1[OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_showLegacyComparisonAsValid] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = v2;
  *(inited + 48) = v0;
  *(inited + 64) = v6;
  *(inited + 72) = @"Label";
  v7 = v1;
  v8 = @"Key";
  v9 = @"Label";
  sub_1CA94C438("Condition", 9);
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDB9F690;
  OUTLINED_FUNCTION_69();
  v11 = sub_1CA94C368();
  OUTLINED_FUNCTION_69();
  v12 = sub_1CA94C368();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_1CA94C3A8();
  v16 = v15;

  *(inited + 80) = v14;
  *(inited + 88) = v16;
  *(inited + 104) = v6;
  *(inited + 112) = @"HideClearButton";
  v17 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v17;
  *(inited + 152) = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = @"HideClearButton";
  v20 = @"DisallowedVariableTypes";
  v21 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA3E8B40(&qword_1EC441A60, type metadata accessor for WFVariableType, &unk_1CA9804C8);
  OUTLINED_FUNCTION_52_0();
  v22 = sub_1CA94C8F8();

  sub_1CA3E4650(v22, v23, v24, v25, v26, v27, v28);
  v30 = v29;

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = v30;
  _s3__C3KeyVMa_0(0);
  sub_1CA3E8B40(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v31 = sub_1CA94C1E8();
  v32 = sub_1CA2F864C(v31);
  v35.receiver = v7;
  v35.super_class = type metadata accessor for RowTemplateOperatorPickerParameter();
  v33 = objc_msgSendSuper2(&v35, sel_initWithDefinition_, v32);

  return v33;
}

uint64_t sub_1CA3E7DD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_operators);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v4 = v1 + 32;
    do
    {
      sub_1CA2C9578(v4, v21);
      v5 = v22;
      v6 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v7 = *(v6 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v20 = AssociatedConformanceWitness;
      __swift_allocate_boxed_opaque_existential_1(v18);
      v7(v5, v6);
      v9 = AssociatedTypeWitness;
      v10 = v20;
      __swift_project_boxed_opaque_existential_1(v18, AssociatedTypeWitness);
      v11 = swift_getAssociatedTypeWitness();
      MEMORY[0x1EEE9AC00](v11);
      (*(AssociatedConformanceWitness + 32))(v9, v10);
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v12 = swift_dynamicCast();
      v13 = objc_allocWithZone(WFNumberSubstitutableState);
      if (v12)
      {
        v14 = v17;
      }

      else
      {
        v14 = 0;
      }

      v15 = [v13 initWithNumber_];

      __swift_destroy_boxed_opaque_existential_0(v18);
      v16 = WFVariableSubstitutableParameterStateUpcast(v15);

      __swift_destroy_boxed_opaque_existential_0(v21);
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v24;
  }

  return result;
}

id sub_1CA3E803C(void *a1)
{
  sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = WFVariableSubstitutableParameterStateDowncast(a1, ObjCClassFromMetadata);
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      result = [v5 number];
      if (result)
      {
        v23 = result;
        v7 = 0;
        v8 = *(v1 + OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_operators);
        v24 = *(v8 + 16);
        v9 = v8 + 32;
        while (v24 != v7)
        {
          if (v7 >= *(v8 + 16))
          {
            __break(1u);
            return result;
          }

          sub_1CA2C9578(v9, &v29);
          v10 = v30;
          v11 = v31;
          __swift_project_boxed_opaque_existential_1(&v29, v30);
          v12 = *(v11 + 24);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v28 = AssociatedConformanceWitness;
          __swift_allocate_boxed_opaque_existential_1(v26);
          v12(v10, v11);
          v14 = AssociatedTypeWitness;
          v15 = v28;
          __swift_project_boxed_opaque_existential_1(v26, AssociatedTypeWitness);
          v16 = swift_getAssociatedTypeWitness();
          MEMORY[0x1EEE9AC00](v16);
          (*(AssociatedConformanceWitness + 32))(v14, v15);
          sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v17 = v23;
            v18 = sub_1CA94CFD8();

            __swift_destroy_boxed_opaque_existential_0(v26);
            if (v18)
            {
              sub_1CA27F268(&v29, v32);
              sub_1CA27F268(v32, v33);
              v21 = v34;
              v22 = v35;
              __swift_project_boxed_opaque_existential_1(v33, v34);
              v4 = (*(v22 + 32))(v21, v22);

              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0(v33);
              return v4;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v26);
          }

          result = __swift_destroy_boxed_opaque_existential_0(&v29);
          v9 += 40;
          ++v7;
        }

        sub_1CA94C978();
        v19 = WFDefaultLocalizedLabelForContentOperator();
        if (v19)
        {
          v20 = v19;
          v4 = sub_1CA94C3A8();

          swift_unknownObjectRelease();
          return v4;
        }
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return v4;
}

id sub_1CA3E83DC()
{
  sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
  swift_getObjCClassFromMetadata();
  v0 = OUTLINED_FUNCTION_93();
  result = WFVariableSubstitutableParameterStateDowncast(v0, v1);
  if (result)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA3E84E0(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for RowTemplateOperatorPickerParameter();
  if (objc_msgSendSuper2(&v9, sel_parameterStateIsValid_, a1))
  {
    LOBYTE(v3) = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_showLegacyComparisonAsValid) == 1 && (v4 = sub_1CA3E83DC()) != 0)
  {
    v5 = v4;
    v6 = [v4 number];
    v3 = v6;
    if (v6)
    {
      v7 = [v6 integerValue];

      LOBYTE(v3) = sub_1CA6030C8(v7, &unk_1F49F8D60);
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

id sub_1CA3E8660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RowTemplateOperatorPickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WFContentOperator.description.getter(uint64_t a1)
{
  result = WFDefaultLocalizedLabelForContentOperator();
  if (result)
  {
    v2 = result;
    sub_1CA94C3A8();

    return OUTLINED_FUNCTION_52_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA3E8750(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA3E878C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA3E87E4(uint64_t a1)
{
  result = sub_1CA3E8B40(qword_1EC444E78, type metadata accessor for WFContentOperator, &unk_1CA9803FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA3E8A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA3E8AA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1CA3E8AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA3E8B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CA3E8BBC()
{
  v99 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9B2AD0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("ipod|track|music|itunes|next", 28);
  v6 = v5;
  v7 = sub_1CA94C438("ipod|track|music|itunes|next", 28);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v104 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = v11;
  v12 = &v93 - v104;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v103 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v101 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v102 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v93 - v102;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v100 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v98 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Skips to the next song in the current music queue.", 50);
  v96 = v24;
  v25 = sub_1CA94C438("Skips to the next song in the current music queue.", 50);
  v27 = v26;
  v97 = &v93;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v93 - v104;
  sub_1CA948D98();
  v29 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v93 - v102;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v96, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v100;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v98;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "forward.fill");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 224) = v35;
  *(inited + 232) = @"InputPassthrough";
  v36 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"IconColor";
  v38 = @"IconSymbol";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438("Skip Forward (Action Name)", 26);
  v43 = v42;
  v44 = sub_1CA94C438("Skip Forward", 12);
  v46 = v45;
  v98 = &v93;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v93 - v104;
  sub_1CA948D98();
  v48 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v93 - v102;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v100;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v97 = swift_allocObject();
  *(v97 + 1) = xmmword_1CA9813B0;
  v96 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981380;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD00000000000001BLL;
  *(v51 + 48) = 0x80000001CA9A1EB0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DefaultValue";
  *(v51 + 80) = 0x6C61636F4CLL;
  *(v51 + 88) = 0xE500000000000000;
  *(v51 + 104) = v52;
  *(v51 + 112) = @"DisallowedVariableTypes";
  v53 = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v98 = v54;
  *(v51 + 120) = &unk_1F49F8DA0;
  *(v51 + 144) = v54;
  *(v51 + 152) = @"Key";
  strcpy((v51 + 160), "WFMediaRoute");
  *(v51 + 173) = 0;
  *(v51 + 174) = -5120;
  *(v51 + 184) = v53;
  *(v51 + 192) = @"Label";
  v55 = @"Parameters";
  v56 = @"Class";
  v57 = @"DefaultValue";
  v58 = @"DisallowedVariableTypes";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438("Device (WFMediaRoute)", 21);
  v94 = v62;
  v63 = sub_1CA94C438("Device", 6);
  v65 = v64;
  v95 = &v93;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v93 - v104;
  sub_1CA948D98();
  v67 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v93 - v102;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v61, v94, v63, v65, 0, 0, v66, v68);
  *(v51 + 224) = v100;
  *(v51 + 200) = v70;
  v71 = sub_1CA94C368();
  *(v51 + 264) = MEMORY[0x1E69E6158];
  *(v51 + 232) = v71;
  *(v51 + 240) = 0x746E696F70646E45;
  *(v51 + 248) = 0xE800000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v72 = sub_1CA94C1E8();
  v73 = sub_1CA2F864C(v72);
  v74 = v97;
  v97[4] = v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v74;
  *(inited + 344) = v75;
  *(inited + 352) = @"ParameterSummary";
  v76 = @"ParameterSummary";
  v77 = sub_1CA94C438("Skip forward on ${WFMediaRoute} (Parameter Summary)", 51);
  v79 = v78;
  v80 = sub_1CA94C438("Skip forward on ${WFMediaRoute}", 31);
  v82 = v81;
  v100 = &v93;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v93 - v104;
  sub_1CA948D98();
  v84 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v93 - v102;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v77, v79, v80, v82, 0, 0, v83, v85);
  v88 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v89 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v88;
  *(inited + 384) = v89;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = v98;
  *(inited + 400) = &unk_1F49F8DD0;
  v90 = @"RequiredResources";
  v91 = sub_1CA94C368();
  *(inited + 464) = MEMORY[0x1E69E6158];
  *(inited + 432) = v91;
  *(inited + 440) = 0x64726177726F46;
  *(inited + 448) = 0xE700000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3E9848()
{
  v0 = OUTLINED_FUNCTION_23();
  sub_1CA3F0B98(v0, v1);
  return OUTLINED_FUNCTION_23();
}

id sub_1CA3E9880(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (v6 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_name);
  *v7 = a1;
  v7[1] = a2;
  *(v6 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_icon) = a3;
  *(v6 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_encryptedSchemaVersion) = a4;
  v8 = (v6 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_cloudKitMetadata);
  *v8 = a5;
  v8[1] = a6;
  v10.super_class = WFDatabaseLegacyFolderRecord;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1CA3E9B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1CA948BF8();
    v5 = OUTLINED_FUNCTION_23();
    sub_1CA39F318(v5, v6);
  }

  return v4;
}

uint64_t sub_1CA3E9B74()
{
  v0 = OUTLINED_FUNCTION_23();
  sub_1CA3F0B98(v0, v1);
  return OUTLINED_FUNCTION_23();
}

id sub_1CA3E9BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR___WFDatabaseLegacyOrderingRecord_shortcuts) = a1;
  *(v4 + OBJC_IVAR___WFDatabaseLegacyOrderingRecord_folders) = a2;
  v5 = (v4 + OBJC_IVAR___WFDatabaseLegacyOrderingRecord_cloudKitMetadata);
  *v5 = a3;
  v5[1] = a4;
  v7.super_class = WFDatabaseLegacyOrderingRecord;
  return objc_msgSendSuper2(&v7, sel_init);
}

id _sSo28WFDatabaseLegacyFolderRecordC11WorkflowKitEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t WFDatabase.allCollectionIdentifiersForSync()()
{
  v1 = WFGetBuiltInCollectionIdentifiers(1);
  v2 = sub_1CA94C8F8();

  v7 = v2;
  v5[2] = &v7;
  v6 = v0;
  sub_1CA3EA248(0x6C6C6F6320746567, 0xEF736E6F69746365, sub_1CA3EA22C, v5);
  v3 = sub_1CA3342DC(v7);

  return v3;
}

void sub_1CA3E9E54(int a1, id a2)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v2 = [a2 library];
  v3 = [v2 folders];

  sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);
  if (v5)
  {
    v10 = v5;
    v43[0] = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v5 & ~(v5 >> 63), 0, v6, v7, v8, v9);
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v11 = 0;
    v12 = v43[0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1CCAA22D0](v11, v4);
      }

      else
      {
        v13 = *(v4 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v14 identifier];
      v16 = sub_1CA94C3A8();
      v18 = v17;

      v43[0] = v12;
      v24 = v12[2];
      v23 = v12[3];
      if (v24 >= v23 >> 1)
      {
        sub_1CA271524(v23 > 1, v24 + 1, 1, v19, v20, v21, v22);
        v12 = v43[0];
      }

      ++v11;
      v12[2] = v24 + 1;
      v25 = &v12[2 * v24];
      v25[4] = v16;
      v25[5] = v18;
    }

    while (v10 != v11);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA342798(v12);
  v26 = [objc_opt_self() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E6158];
  *(v27 + 16) = xmmword_1CA981310;
  *(v27 + 56) = v28;
  *(v27 + 32) = 0x696669746E656469;
  *(v27 + 40) = 0xEA00000000007265;
  v29 = sub_1CA94C648();

  [v26 setPropertiesToFetch_];

  v43[0] = 0;
  v30 = [v26 execute_];
  v31 = v43[0];
  if (v30)
  {
    v32 = v30;
    sub_1CA25B3D0(0, &unk_1EC441930, off_1E836E0D8);
    v33 = sub_1CA94C658();
    v34 = v31;

    v35 = sub_1CA25B410(v33);
    if (!v35)
    {
LABEL_23:

      return;
    }

    v36 = v35;
    if (v35 >= 1)
    {
      for (i = 0; i != v36; ++i)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1CCAA22D0](i, v33);
        }

        else
        {
          v38 = *(v33 + 8 * i + 32);
        }

        v39 = v38;
        v40 = sub_1CA3F132C(v38, &selRef_identifier);
        if (v41)
        {
          sub_1CA368948(v43, v40, v41);
        }

        else
        {
        }
      }

      goto LABEL_23;
    }

LABEL_26:
    __break(1u);
  }

  v42 = v43[0];
  sub_1CA948AD8();

  swift_willThrow();
}

void sub_1CA3EA248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F18BC;
  *(v10 + 24) = v9;
  v18 = sub_1CA3F19F0;
  v19 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v16 = sub_1CA3F0F08;
  v17 = &block_descriptor_109;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v20, &aBlock);
    swift_dynamicCast();
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }
}

void sub_1CA3EA484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F1888;
  *(v10 + 24) = v9;
  v18 = sub_1CA3F19F0;
  v19 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v16 = sub_1CA3F0F08;
  v17 = &block_descriptor_99;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v20, &aBlock);
    type metadata accessor for WFDatabaseRecordSyncOperation(0);
    swift_dynamicCast();
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }
}

void sub_1CA3EA6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F1804;
  *(v10 + 24) = v9;
  v19 = sub_1CA3F19F0;
  v20 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v17 = sub_1CA3F0F08;
  v18 = &block_descriptor_89;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    v15 = sub_1CA2C0A20(&v21, &aBlock);
    type metadata accessor for WFDatabaseLegacyFolderRecord(v15);
    swift_dynamicCast();
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }
}

void sub_1CA3EA908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F17D4;
  *(v10 + 24) = v9;
  v19 = sub_1CA3F19F0;
  v20 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v17 = sub_1CA3F0F08;
  v18 = &block_descriptor_79;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    v15 = sub_1CA2C0A20(&v21, &aBlock);
    type metadata accessor for WFDatabaseLegacyOrderingRecord(v15);
    swift_dynamicCast();
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }
}

void sub_1CA3EAB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F1190;
  *(v10 + 24) = v9;
  v18 = sub_1CA3F19F0;
  v19 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v16 = sub_1CA3F0F08;
  v17 = &block_descriptor_46;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v20, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444F78, &unk_1CA986230);
    swift_dynamicCast();
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }
}

void sub_1CA3EAD98()
{
  OUTLINED_FUNCTION_16_13();
  v33 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_11_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  OUTLINED_FUNCTION_11_1();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CA3F1164;
  *(v5 + 24) = v4;
  v30 = sub_1CA3F19F0;
  v31 = v5;
  OUTLINED_FUNCTION_4_28();
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_0_29();
  v28 = v6;
  v29 = &block_descriptor_36;
  v7 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v15 = OUTLINED_FUNCTION_20_11(v8, sel_performOperationWithReason_block_error_, v9, v10, v11, v12, v13, v14, v25);
  _Block_release(v7);

  v16 = aBlock;
  v17 = OUTLINED_FUNCTION_14_16(v16, "");

  if (v17)
  {
    __break(1u);
  }

  if (v15)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v32, &aBlock);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444F70, &qword_1CA986228);
    OUTLINED_FUNCTION_21_11(v18, v19, v20, v18, v21, v22, v23, v24, v26, aBlock);
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }
}

void sub_1CA3EAF84()
{
  OUTLINED_FUNCTION_16_13();
  v33 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_11_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  OUTLINED_FUNCTION_11_1();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CA3F10E8;
  *(v5 + 24) = v4;
  v30 = sub_1CA3F19F0;
  v31 = v5;
  OUTLINED_FUNCTION_4_28();
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_0_29();
  v28 = v6;
  v29 = &block_descriptor_26;
  v7 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v15 = OUTLINED_FUNCTION_20_11(v8, sel_performOperationWithReason_block_error_, v9, v10, v11, v12, v13, v14, v25);
  _Block_release(v7);

  v16 = aBlock;
  v17 = OUTLINED_FUNCTION_14_16(v16, "");

  if (v17)
  {
    __break(1u);
  }

  if (v15)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v32, &aBlock);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    OUTLINED_FUNCTION_21_11(v18, v19, v20, v18, v21, v22, v23, v24, v26, aBlock);
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }
}

id WFDatabase.desiredFolderSyncOperation(forCollection:)(uint64_t a1, uint64_t a2)
{
  v5 = WFGetBuiltInCollectionIdentifiers(1);
  v6 = sub_1CA94C8F8();

  LOBYTE(v5) = sub_1CA27AF18(a1, a2, v6);

  if (v5)
  {
    type metadata accessor for WFDatabaseRecordSyncOperation(0);
    return sub_1CA3EB330(0);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = a2;
    sub_1CA3EA484(v9 + 12, v10 | 0x8000000000000000, sub_1CA3EB8D0, v11);
  }

  return result;
}

id sub_1CA3EB330(uint64_t a1)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_171();
  v4 = sub_1CA94C368();

  v5 = [v1 initWithOperationType:a1 reason:v4];

  return v5;
}

void sub_1CA3EB3A8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1CA3EB8EC(a2, a3);
  v7 = v6;
  if (v6 && [v6 tombstoned])
  {
    type metadata accessor for WFDatabaseRecordSyncOperation(0);
    v8 = sub_1CA3EB330(2);
LABEL_38:

    goto LABEL_39;
  }

  v9 = [a1 library];
  v10 = sub_1CA94C368();
  v44[0] = 0;
  v11 = [v9 folderWithIdentifier:v10 error:v44];

  if (!v11)
  {
    v22 = v44[0];
    sub_1CA948AD8();

    swift_willThrow();
    return;
  }

  if (!v7)
  {
    v23 = 0xD000000000000010;
    v24 = v44[0];
    sub_1CA26DADC();
    v26 = v25;
    v27 = v25[2];
    v28 = v27 + 1;
    v29 = "folder order changed";
    if (v27 >= v25[3] >> 1)
    {
      sub_1CA26DADC();
      v26 = v30;
    }

    goto LABEL_36;
  }

  v12 = v44[0];
  v13 = v7;
  v14 = [v11 name];
  v15 = sub_1CA94C3A8();
  v17 = v16;

  v18 = sub_1CA3F132C(v13, &selRef_temporarySyncFolderName);
  if (v19)
  {
    if (v15 == v18 && v19 == v17)
    {

LABEL_21:
      v26 = MEMORY[0x1E69E7CC0];
      goto LABEL_22;
    }

    v21 = sub_1CA94D7F8();

    if (v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  sub_1CA26DADC();
  v26 = v31;
  v32 = v31[2];
  if (v32 >= v31[3] >> 1)
  {
    sub_1CA26DADC();
    v26 = v39;
  }

  v26[2] = v32 + 1;
  v33 = &v26[2 * v32];
  strcpy(v33 + 32, "name changed");
  v33[45] = 0;
  *(v33 + 23) = -5120;
LABEL_22:
  v34 = [v11 glyphCharacter];
  if ([v13 temporarySyncFolderIcon] != v34)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA26DADC();
      v26 = v40;
    }

    v35 = v26[2];
    if (v35 >= v26[3] >> 1)
    {
      sub_1CA26DADC();
      v26 = v41;
    }

    v26[2] = v35 + 1;
    v36 = &v26[2 * v35];
    strcpy(v36 + 32, "icon changed");
    v36[45] = 0;
    *(v36 + 23) = -5120;
  }

  v37 = [v13 lastSyncedEncryptedSchemaVersion];
  if (v37 != [v13 wantedEncryptedSchemaVersion])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA26DADC();
      v26 = v42;
    }

    v27 = v26[2];
    v28 = v27 + 1;
    if (v27 >= v26[3] >> 1)
    {
      sub_1CA26DADC();
      v26 = v43;
    }

    v29 = "no sync metadata";
    v23 = 0xD000000000000020;
LABEL_36:
    v26[2] = v28;
    v38 = &v26[2 * v27];
    v38[4] = v23;
    v38[5] = v29 | 0x8000000000000000;
    goto LABEL_37;
  }

  if (v26[2])
  {
LABEL_37:
    type metadata accessor for WFDatabaseRecordSyncOperation(0);
    v44[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    sub_1CA26E4D4();
    sub_1CA94C308();

    v8 = sub_1CA3EB330(1);

    goto LABEL_38;
  }

  type metadata accessor for WFDatabaseRecordSyncOperation(0);
  v8 = sub_1CA3EB330(0);

LABEL_39:
  *a4 = v8;
}

uint64_t sub_1CA3EB8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  sub_1CA94C218();
  v6 = sub_1CA623D0C(a1, a2, 2);
  v7 = [v3 objectForDescriptor:v6 properties:0 createIfNecessary:0];

  if (v7)
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

uint64_t WFDatabase.desiredOrderingSyncOperation(forCollection:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  sub_1CA3EA484(0xD000000000000023, 0x80000001CA9B2CB0, sub_1CA3EBF28, v3);
  return result;
}

void sub_1CA3EBA6C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X8>)
{
  v9 = sub_1CA3EB8EC(a2, a3);
  v10 = WFGetBuiltInCollectionIdentifiers(1);
  v11 = sub_1CA94C8F8();

  LOBYTE(v10) = sub_1CA27AF18(a2, a3, v11);

  if (v10)
  {
    goto LABEL_6;
  }

  if (!v9)
  {
    v13 = [a1 library];
    v14 = sub_1CA94C368();
    v15 = [v13 hasFolderWithIdentifier_];

    if ((v15 & 1) == 0)
    {
      type metadata accessor for WFDatabaseRecordSyncOperation(0);
      *a4 = sub_1CA3EB330(0);
      return;
    }

LABEL_6:
    v16 = sub_1CA3EBF44(v9, a2, a3);
    if (v4)
    {

      return;
    }

    v17 = v16;
    if (v9)
    {
      v18 = sub_1CA3F13EC(v9, &selRef_deserializedLastRemoteShortcutOrdering);
    }

    else
    {
      v18 = 0;
    }

    v19 = [v17 shortcuts];
    v20 = sub_1CA94C658();

    if (v18)
    {
      v21 = sub_1CA2B6DAC(v18, v20);

      if (v21)
      {
        v22 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_1CA26DADC();
    v22 = v23;
    v24 = *(v23 + 16);
    if (v24 >= *(v23 + 24) >> 1)
    {
      sub_1CA26DADC();
      v22 = v35;
    }

    *(v22 + 16) = v24 + 1;
    v25 = v22 + 16 * v24;
    *(v25 + 32) = 0xD000000000000016;
    *(v25 + 40) = 0x80000001CA9B2FF0;
LABEL_18:
    if (sub_1CA94C3A8() == a2 && v26 == a3)
    {

      if (v9)
      {
LABEL_24:
        v29 = sub_1CA3F13EC(v9, &selRef_deserializedLastRemoteCollectionOrdering);
LABEL_27:
        v30 = sub_1CA3F14BC(v17, &selRef_folders);
        if (v29)
        {
          if (v30)
          {
            v31 = sub_1CA2B6DAC(v29, v30);

            if (v31)
            {
              goto LABEL_39;
            }

LABEL_34:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA26DADC();
              v22 = v36;
            }

            v32 = *(v22 + 16);
            if (v32 >= *(v22 + 24) >> 1)
            {
              sub_1CA26DADC();
              v22 = v37;
            }

            *(v22 + 16) = v32 + 1;
            v33 = v22 + 16 * v32;
            *(v33 + 32) = 0xD000000000000014;
            *(v33 + 40) = 0x80000001CA9B3010;
            goto LABEL_39;
          }

LABEL_33:

          goto LABEL_34;
        }

        if (v30)
        {
          goto LABEL_33;
        }

LABEL_39:
        if (*(v22 + 16))
        {
          type metadata accessor for WFDatabaseRecordSyncOperation(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
          sub_1CA26E4D4();
          sub_1CA94C308();

          v34 = 1;
        }

        else
        {

          type metadata accessor for WFDatabaseRecordSyncOperation(0);
          v34 = 0;
        }

        v12 = sub_1CA3EB330(v34);

        goto LABEL_43;
      }
    }

    else
    {
      v28 = sub_1CA94D7F8();

      if ((v28 & 1) == 0)
      {
        goto LABEL_39;
      }

      if (v9)
      {
        goto LABEL_24;
      }
    }

    v29 = 0;
    goto LABEL_27;
  }

  if (![v9 tombstoned])
  {
    goto LABEL_6;
  }

  type metadata accessor for WFDatabaseRecordSyncOperation(0);
  v12 = sub_1CA3EB330(2);
LABEL_43:

  *a4 = v12;
}

id sub_1CA3EBF44(void *a1, uint64_t a2, uint64_t a3)
{
  v75[1] = *MEMORY[0x1E69E9840];
  if (sub_1CA94C3A8() == a2 && v7 == a3)
  {
  }

  else
  {
    v9 = sub_1CA94D7F8();

    if ((v9 & 1) == 0)
    {
      v10 = WFGetBuiltInCollectionIdentifiers(0);
      v11 = sub_1CA94C8F8();

      LOBYTE(v10) = sub_1CA27AF18(a2, a3, v11);

      v12 = [v3 library];
      v13 = sub_1CA94C368();
      if (v10)
      {
        v14 = [v12 shortcutsInCategoryWithIdentifier_];

        v15 = sub_1CA94C658();
LABEL_31:

        if (a1)
        {
          v55 = sub_1CA3F1388(a1);
          v53 = v56;
        }

        else
        {
          v55 = 0;
          v53 = 0xF000000000000000;
        }

        objc_allocWithZone(WFDatabaseLegacyOrderingRecord);
        v59 = v15;
        v60 = 0;
        v61 = v55;
        return sub_1CA3F1250(v59, v60, v61, v53);
      }

      v75[0] = 0;
      v14 = [v12 shortcutsInFolderWithIdentifier:v13 error:v75];

      v19 = v75[0];
      if (v14)
      {
        v15 = sub_1CA94C658();
        v54 = v19;
        goto LABEL_31;
      }

LABEL_33:
      v57 = v19;
      sub_1CA948AD8();

      return swift_willThrow();
    }
  }

  v16 = [v3 library];
  v17 = sub_1CA94C368();
  v75[0] = 0;
  v18 = [v16 shortcutsInFolderWithIdentifier:v17 error:v75];

  v19 = v75[0];
  if (!v18)
  {
    goto LABEL_33;
  }

  v72 = a1;
  v20 = sub_1CA94C658();
  v21 = v19;

  v22 = [v3 library];
  v23 = [v22 folders];

  sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
  v24 = sub_1CA94C658();

  v25 = sub_1CA25B410(v24);
  v73 = v20;
  if (v25)
  {
    v30 = v25;
    v75[0] = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v25 & ~(v25 >> 63), 0, v26, v27, v28, v29);
    if (v30 < 0)
    {
      __break(1u);
    }

    v31 = 0;
    v32 = v75[0];
    v74 = v24 & 0xC000000000000001;
    v33 = v24;
    do
    {
      if (v74)
      {
        v34 = MEMORY[0x1CCAA22D0](v31, v24);
      }

      else
      {
        v34 = *(v24 + 8 * v31 + 32);
      }

      v35 = v34;
      v36 = [v35 identifier];
      v37 = sub_1CA94C3A8();
      v39 = v38;

      v75[0] = v32;
      v45 = *(v32 + 16);
      v44 = *(v32 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1CA271524(v44 > 1, v45 + 1, 1, v40, v41, v42, v43);
        v32 = v75[0];
      }

      ++v31;
      *(v32 + 16) = v45 + 1;
      v46 = v32 + 16 * v45;
      *(v46 + 32) = v37;
      *(v46 + 40) = v39;
      v24 = v33;
    }

    while (v30 != v31);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  if (v72)
  {
    v47 = v72;
    v48 = sub_1CA3F14BC(v47, &selRef_deserializedLastRemoteCollectionOrdering);
    if (v48)
    {
      v49 = v48;
      v50 = sub_1CA3F14BC(v47, &selRef_deserializedLastRemoteCollectionOrderingSubset);
      if (!v50)
      {

        goto LABEL_40;
      }

      v51 = v50;
      if (sub_1CA2B6DAC(v49, v50))
      {
      }

      else
      {
        if (sub_1CA2B6DAC(v32, v51) & 1) != 0 || (sub_1CA2B6DAC(v49, v32))
        {

          v32 = v49;
          goto LABEL_40;
        }

        sub_1CA25B3D0(0, &unk_1EC444900, 0x1E695DFB8);
        v63 = sub_1CA360FF0(v49);

        v64 = sub_1CA56040C(v63);
        v65 = sub_1CA360FF0(v32);

        v66 = sub_1CA56040C(v65);
        v67 = sub_1CA360FF0(v51);

        v68 = sub_1CA56040C(v67);
        v69 = [objc_opt_self() wf:v64 orderedSetByMergingOrderedSet:v66 withOrderedSet:v68 baseOrderedSet:?];
        v70 = [v69 array];
        v71 = sub_1CA94C658();

        v32 = sub_1CA3610E8(v71);
      }
    }

LABEL_40:
    v52 = sub_1CA3F1388(v47);
    v53 = v62;
    goto LABEL_41;
  }

  v52 = 0;
  v53 = 0xF000000000000000;
LABEL_41:
  objc_allocWithZone(WFDatabaseLegacyOrderingRecord);
  v59 = v73;
  v60 = v32;
  v61 = v52;
  return sub_1CA3F1250(v59, v60, v61, v53);
}

id sub_1CA3EC5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_9(a1, a2, a3);
  v6 = v5;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_171();
  v9 = v3(v8, v6);

  return v9;
}

void sub_1CA3EC65C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 library];
  v8 = sub_1CA94C368();
  v25[0] = 0;
  v9 = [v7 folderWithIdentifier:v8 error:v25];

  if (v9)
  {
    v10 = v25[0];
    if ([v9 isFolder])
    {
      v24 = a4;
      v11 = sub_1CA3EB8EC(a2, a3);
      v12 = [v9 name];
      v13 = sub_1CA94C3A8();
      v15 = v14;

      v16 = [v9 glyphCharacter];
      if (v11)
      {
        v17 = [v11 wantedEncryptedSchemaVersion];
        v18 = sub_1CA3F144C(v11);
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v17 = 0;
        v20 = 0xF000000000000000;
      }

      v22 = objc_allocWithZone(WFDatabaseLegacyFolderRecord);
      v23 = sub_1CA3F1198(v13, v15, v16, v17, v18, v20);

      *v24 = v23;
    }

    else
    {
      sub_1CA3F1834();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    v21 = v25[0];
    sub_1CA948AD8();

    swift_willThrow();
  }
}

void sub_1CA3EC908(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = WFGetBuiltInCollectionIdentifiers(1);
  v8 = sub_1CA94C8F8();

  LOBYTE(v7) = sub_1CA27AF18(a1, a2, v8);

  if (v7)
  {
    v9 = sub_1CA3ECA08(a1, a2);
  }

  else
  {
    v9 = sub_1CA3EB8EC(a1, a2);
  }

  v10 = v9;
  v11 = v9;
  v12 = sub_1CA3EBF44(v10, a1, a2);

  if (!v3)
  {
    *a3 = v12;
  }
}

id sub_1CA3ECA08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  sub_1CA94C218();
  v6 = sub_1CA623D0C(a1, a2, 2);
  result = [v3 objectForDescriptor:v6 properties:0 createIfNecessary:1];
  if (result)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClassUnconditional();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA3ECAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = OUTLINED_FUNCTION_15_9(a1, a2, a3);
  v9 = v8;
  v10 = v5;
  v11 = a5(v7, v9);

  return v11;
}

void sub_1CA3ECC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v16 = sub_1CA3ECA08(a2, a3);
  sub_1CA3F15B4(a4, a5, v16);
  [v16 setTemporarySyncFolderIcon_];
  [v16 setLastSyncedEncryptedSchemaVersion_];
  sub_1CA3F160C(a8, a9, v16);
  v17 = sub_1CA94C3A8();
  v19 = sub_1CA3EB8EC(v17, v18);

  if (v19)
  {
    sub_1CA3ECFB4(v19, v16);
    if (v9)
    {

      return;
    }

    sub_1CA3ED6F0(v19);
  }

  v20 = [a1 library];
  v21 = sub_1CA94C368();
  v40[0] = 0;
  v22 = [v20 folderWithIdentifier:v21 error:v40];

  if (!v22)
  {
    v31 = v40[0];
    v32 = sub_1CA948AD8();

    swift_willThrow();
    return;
  }

  v39 = a6;
  v23 = v40[0];
  v24 = [v22 name];
  v25 = sub_1CA94C3A8();
  v27 = v26;

  if (v25 == a4 && v27 == a5)
  {

    v30 = v39;
  }

  else
  {
    v29 = sub_1CA94D7F8();

    v30 = v39;
    if ((v29 & 1) == 0)
    {
LABEL_16:
      v33 = [a1 library];
      v34 = sub_1CA94C368();
      v35 = sub_1CA94C368();
      v40[0] = 0;
      v36 = [v33 updateFolderWithIdentifier:v34 newName:v35 newIcon:v30 error:v40];

      if (v36)
      {
        v37 = v40[0];

        [a1 libraryDidChange];
        [a1 addPendingUpdatedDescriptor_];
      }

      else
      {
        v38 = v40[0];
        sub_1CA948AD8();

        swift_willThrow();
      }

      goto LABEL_19;
    }
  }

  if ([v22 glyphCharacter] != v30)
  {
    goto LABEL_16;
  }

LABEL_19:
}

void *sub_1CA3ECFB4(void *a1, void *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  result = sub_1CA3F132C(a2, &selRef_identifier);
  if (!v6)
  {
    return result;
  }

  v7 = result;
  v8 = v6;
  v9 = [v2 library];
  v93 = v7;
  v10 = sub_1CA94C368();
  v11 = [v9 hasFolderWithIdentifier_];

  if (v11)
  {
  }

  v12 = sub_1CA3F132C(a2, &selRef_temporarySyncFolderName);
  if (!v13)
  {
  }

  v86 = v12;
  v88 = v13;
  v87 = [a2 temporarySyncFolderIcon];
  v14 = sub_1CA3F14BC(a2, &selRef_deserializedLastRemoteShortcutOrdering);
  if (!v14)
  {
  }

  v15 = v14;
  v16 = sub_1CA3F14BC(a1, &selRef_deserializedLastRemoteCollectionOrdering);
  if (!v16)
  {
  }

  v17 = v16;
  v85 = v15;
  v95 = v93;
  v96 = v8;
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v95;
  if (!sub_1CA2BFD14(sub_1CA36DB00, v82, v17))
  {
  }

  v92 = v17;
  v18 = [v2 library];
  v19 = [v18 folders];

  sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
  v20 = sub_1CA94C658();

  v21 = sub_1CA25B410(v20);
  v84 = v2;
  if (v21)
  {
    v26 = v21;
    v95 = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v21 & ~(v21 >> 63), 0, v22, v23, v24, v25);
    if (v26 < 0)
    {
      goto LABEL_54;
    }

    v27 = 0;
    v28 = v95;
    v89 = v20 & 0xC000000000000001;
    v90 = v26;
    v91 = v20;
    do
    {
      if (v89)
      {
        v29 = MEMORY[0x1CCAA22D0](v27, v20);
      }

      else
      {
        v29 = *(v20 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v30 identifier];
      v32 = sub_1CA94C3A8();
      v34 = v33;

      v95 = v28;
      v40 = v28[2];
      v39 = v28[3];
      if (v40 >= v39 >> 1)
      {
        sub_1CA271524(v39 > 1, v40 + 1, 1, v35, v36, v37, v38);
        v28 = v95;
      }

      ++v27;
      v28[2] = v40 + 1;
      v41 = &v28[2 * v40];
      v41[4] = v32;
      v41[5] = v34;
      v20 = v91;
    }

    while (v90 != v27);
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v42 = 0;
  v43 = v92;
  v44 = *(v92 + 16);
  v90 = v92 + 40;
  v91 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v45 = (v90 + 16 * v42);
  while (v44 != v42)
  {
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v47 = *(v45 - 1);
    v46 = *v45;
    v95 = v47;
    v96 = v46;
    MEMORY[0x1EEE9AC00](v43);
    v83 = &v95;
    sub_1CA94C218();
    if (sub_1CA2BFD14(sub_1CA36DB00, v82, v28))
    {
      goto LABEL_35;
    }

    if (v47 == v93 && v8 == v46)
    {
      v47 = v93;
LABEL_35:
      v49 = v91;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CA271524(0, *(v49 + 16) + 1, 1, v51, v52, v53, v54);
        v49 = v94;
      }

      v43 = v92;
      v56 = *(v49 + 16);
      v55 = *(v49 + 24);
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v91 = v56 + 1;
        sub_1CA271524(v55 > 1, v56 + 1, 1, v51, v52, v53, v54);
        v57 = v91;
        v43 = v92;
        v49 = v94;
      }

      ++v42;
      *(v49 + 16) = v57;
      v91 = v49;
      v58 = v49 + 16 * v56;
      *(v58 + 32) = v47;
      *(v58 + 40) = v46;
      goto LABEL_24;
    }

    if (sub_1CA94D7F8())
    {
      goto LABEL_35;
    }

    v45 += 2;
    ++v42;
    v43 = v92;
  }

  v59 = sub_1CA58A568(v93, v8, v91);
  v61 = v60;

  if (v61)
  {
    v62 = 0;
  }

  else
  {
    v62 = v59;
  }

  v63 = v84;
  v64 = [v84 library];
  v65 = sub_1CA94C368();

  v66 = v87;
  if ((v87 & 0x8000000000000000) != 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v87 >> 16)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v67 = v93;
  v68 = sub_1CA94C368();
  v95 = 0;
  v69 = [v64 insertFolderWithName:v65 icon:v66 identifier:v68 insertAt:v62 error:&v95];

  v70 = v95;
  if (v69)
  {

    v71 = [v63 library];
    v72 = sub_1CA94C648();

    v73 = sub_1CA94C368();
    v95 = 0;
    v74 = [v71 setShortcutOrdering:v72 forCollectionIdentifier:v73 error:&v95];

    v75 = v95;
    if (v74)
    {
      sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
      v76 = v75;
      v77 = sub_1CA623D0C(v67, v8, 2);
      [v63 addPendingInsertedDescriptor_];

      v78 = sub_1CA94C3A8();
      v80 = sub_1CA623D0C(v78, v79, 2);
      [v63 addPendingUpdatedDescriptor_];

      return [v63 libraryDidChange];
    }

    v81 = v95;
  }

  else
  {
    v81 = v70;
  }

  sub_1CA948AD8();

  return swift_willThrow();
}

void sub_1CA3ED6F0(void *a1)
{
  v3 = sub_1CA3F14BC(a1, &selRef_deserializedLastRemoteCollectionOrdering);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v52 = v5;
  v6 = [v1 library];
  v7 = [v6 folders];

  sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
  v8 = sub_1CA94C658();

  v9 = sub_1CA25B410(v8);
  v50 = a1;
  if (v9)
  {
    v14 = v9;
    v53[0] = v4;
    sub_1CA271524(0, v9 & ~(v9 >> 63), 0, v10, v11, v12, v13);
    if (v14 < 0)
    {
      goto LABEL_28;
    }

    v15 = 0;
    v16 = v53[0];
    v51 = v8 & 0xC000000000000001;
    v17 = v8;
    v18 = v14;
    do
    {
      if (v51)
      {
        v19 = MEMORY[0x1CCAA22D0](v15, v8);
      }

      else
      {
        v19 = *(v8 + 8 * v15 + 32);
      }

      v20 = v19;
      v21 = [v20 identifier];
      v22 = sub_1CA94C3A8();
      v24 = v23;

      v53[0] = v16;
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1CA271524(v29 > 1, v30 + 1, 1, v25, v26, v27, v28);
        v16 = v53[0];
      }

      ++v15;
      *(v16 + 16) = v30 + 1;
      v31 = v16 + 16 * v30;
      *(v31 + 32) = v22;
      *(v31 + 40) = v24;
      v8 = v17;
    }

    while (v18 != v15);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v33 = 0;
  v34 = *(v52 + 16);
  v35 = v52 + 40;
  v51 = MEMORY[0x1E69E7CC0];
  v49 = v52 + 40;
LABEL_16:
  for (i = (v35 + 16 * v33); ; i += 2)
  {
    if (v34 == v33)
    {

      sub_1CA3F1548(v51, v50);
      return;
    }

    if (v33 >= *(v52 + 16))
    {
      break;
    }

    v37 = *(i - 1);
    v38 = *i;
    v53[0] = v37;
    v53[1] = v38;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v48[2] = v53;
    sub_1CA94C218();
    if (sub_1CA2BFD14(sub_1CA36DB00, v48, v16))
    {
      v39 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CA271524(0, *(v51 + 16) + 1, 1, v40, v41, v42, v43);
        v51 = v54;
      }

      v45 = *(v51 + 16);
      v44 = *(v51 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1CA271524(v44 > 1, v45 + 1, 1, v40, v41, v42, v43);
        v51 = v54;
      }

      ++v33;
      v46 = v51;
      *(v51 + 16) = v45 + 1;
      v47 = v46 + 16 * v45;
      *(v47 + 32) = v37;
      *(v47 + 40) = v38;
      v35 = v49;
      goto LABEL_16;
    }

    ++v33;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1CA3EDA34()
{
  OUTLINED_FUNCTION_16_13();
  v19 = *MEMORY[0x1E69E9840];
  v18 = 1;
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_allocObject();
  v4[2] = &v18;
  v4[3] = v1;
  v4[4] = v0;
  OUTLINED_FUNCTION_11_1();
  v5 = swift_allocObject();
  v5[2] = sub_1CA3F17C8;
  v5[3] = v4;
  v17[4] = sub_1CA3F1A20;
  v17[5] = v5;
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_2_28();
  v17[2] = v6;
  v17[3] = &block_descriptor_69;
  v7 = _Block_copy(v17);

  OUTLINED_FUNCTION_19_8(v8, sel_performTransactionWithReason_block_error_, v9, v10, v11, v12, v13, v14, 0);
  _Block_release(v7);

  v15 = v17[0];
  v16 = OUTLINED_FUNCTION_13_15(v15, "");

  if (v16)
  {
    __break(1u);
  }

  if (v15)
  {
    swift_willThrow();
  }

  else if (v18)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1CA3EDBDC()
{
  OUTLINED_FUNCTION_16_13();
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_allocObject();
  v4[2] = v19;
  v4[3] = v1;
  v4[4] = v0;
  OUTLINED_FUNCTION_11_1();
  v5 = swift_allocObject();
  v5[2] = sub_1CA3F10D4;
  v5[3] = v4;
  v18[4] = sub_1CA3F10E0;
  v18[5] = v5;
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_2_28();
  v18[2] = v6;
  v18[3] = &block_descriptor_16;
  v7 = _Block_copy(v18);

  OUTLINED_FUNCTION_19_8(v8, sel_performTransactionWithReason_block_error_, v9, v10, v11, v12, v13, v14, 0);
  _Block_release(v7);

  v15 = v18[0];
  v16 = OUTLINED_FUNCTION_13_15(v15, "");

  if (v16)
  {
    __break(1u);
  }

  if (v15)
  {
    swift_willThrow();
    v17 = v19[0];
  }

  else if (v19[0])
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1CA3EDF0C(uint64_t *a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v213 = a7;
  v220[9] = *MEMORY[0x1E69E9840];
  v13 = sub_1CA949F78();
  v210 = *(v13 - 8);
  v211 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v209 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v199 - v16;
  v215 = a1;
  v214 = sub_1CA3ECA08(a2, a3);
  v18 = sub_1CA3F1388(v214);
  if (v19 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v20 = v19;
  v208 = a3;
  v207 = a2;
  v216 = a4;
  v217 = a5;
  v21 = v18;
  v22 = objc_opt_self();
  v23 = sub_1CA948BF8();
  v220[0] = 0;
  v24 = v20;
  v25 = [v22 recordFromSystemFieldsData:v23 error:v220];

  if (!v25)
  {
    v39 = v220[0];
    v40 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA39F318(v21, v24);
LABEL_14:
    v218 = 0;

    a4 = v216;
    a5 = v217;
    a2 = v207;
    a3 = v208;
LABEL_15:
    sub_1CA3F1664(a4, a5, v214);
    goto LABEL_16;
  }

  v206 = v24;
  v205 = v21;
  v26 = v220[0];
  v27 = sub_1CA948BF8();
  v220[0] = 0;
  v28 = [v22 recordFromSystemFieldsData:v27 error:v220];

  if (!v28)
  {
    v41 = v220[0];
    v40 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA39F318(v205, v206);

    goto LABEL_14;
  }

  v212 = a6;
  v29 = v220[0];
  v204 = v25;
  v30 = sub_1CA68ECF8(v25);
  v32 = v206;
  v203 = v28;
  if (!v31)
  {
    v202 = 1;
    a2 = v207;
LABEL_87:
    a3 = v208;
    goto LABEL_92;
  }

  v33 = v30;
  v34 = v31;
  v35 = sub_1CA68ECF8(v28);
  a2 = v207;
  if (!v36)
  {

    v202 = 1;
    goto LABEL_87;
  }

  v37 = v33 == v35 && v34 == v36;
  a3 = v208;
  if (v37)
  {
  }

  else
  {
    v38 = sub_1CA94D7F8();

    if ((v38 & 1) == 0)
    {
      v202 = 1;
      goto LABEL_92;
    }
  }

  sub_1CA949C58();
  sub_1CA94C218();
  v157 = sub_1CA949F68();
  v158 = sub_1CA94CBF8();

  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v220[0] = v160;
    *v159 = 136446210;
    *(v159 + 4) = sub_1CA26B54C(a2, a3, v220);
    _os_log_impl(&dword_1CA256000, v157, v158, "Local WFWorkflowCollectionRecord with identifier %{public}s has the same recordChangeTag as fetched ordering record, this is likely our own change, discarding it.", v159, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v160);
    MEMORY[0x1CCAA4BF0](v160, -1, -1);
    MEMORY[0x1CCAA4BF0](v159, -1, -1);
  }

  (*(v210 + 8))(v17, v211);
  v202 = 0;
LABEL_92:
  v161 = v204;
  v162 = sub_1CA948CB8();
  v208 = &v199;
  v201 = v162;
  v163 = *(v162 - 8);
  v164 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v165 = (v164 + 15) & 0xFFFFFFFFFFFFFFF0;
  v207 = &v199 - v165;
  v166 = [v161 modificationDate];
  if (!v166)
  {
    sub_1CA39F318(v205, v32);

LABEL_99:
    a6 = v212;
    goto LABEL_100;
  }

  v167 = v166;
  v168 = v207;
  sub_1CA948C78();

  MEMORY[0x1EEE9AC00](v169);
  v200 = &v199 - v165;
  v170 = v203;
  v171 = [v203 modificationDate];
  if (!v171)
  {
    (*(v163 + 8))(v168, v201);
    sub_1CA39F318(v205, v206);

    goto LABEL_99;
  }

  v172 = v171;
  v199 = &v199;
  v173 = v200;
  sub_1CA948C78();

  v174 = sub_1CA948C98();
  a6 = v212;
  if (v174 != -1)
  {
    v175 = v209;
    v176 = sub_1CA949C58();
    v215 = &v199;
    MEMORY[0x1EEE9AC00](v176);
    v177 = &v199 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
    v178 = *(v163 + 16);
    v179 = v173;
    v180 = v201;
    v181 = v178(v177, v179, v201);
    v213 = &v199;
    MEMORY[0x1EEE9AC00](v181);
    v178(v177, v168, v180);
    v182 = sub_1CA949F68();
    v183 = sub_1CA94CC28();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v220[0] = v212;
      *v184 = 136315394;
      sub_1CA3F177C();
      v202 = v183;
      v185 = sub_1CA94D798();
      v187 = v186;
      v188 = *(v163 + 8);
      v188(v177, v180);
      v189 = sub_1CA26B54C(v185, v187, v220);

      *(v184 + 4) = v189;
      *(v184 + 12) = 2080;
      v190 = sub_1CA94D798();
      v192 = v191;
      v188(v177, v180);
      v193 = sub_1CA26B54C(v190, v192, v220);

      *(v184 + 14) = v193;
      _os_log_impl(&dword_1CA256000, v182, v202, "Remote record modification date %s is not greater than local record modification date %s", v184, 0x16u);
      v194 = v212;
      swift_arrayDestroy();
      MEMORY[0x1CCAA4BF0](v194, -1, -1);
      MEMORY[0x1CCAA4BF0](v184, -1, -1);
      sub_1CA39F318(v205, v206);

      (*(v210 + 8))(v209, v211);
      v188(v200, v180);
      v188(v207, v180);
    }

    else
    {
      sub_1CA39F318(v205, v206);

      v198 = *(v163 + 8);
      v198(v177, v180);
      v198(v177, v180);
      (*(v210 + 8))(v175, v211);
      v198(v200, v180);
      v198(v207, v180);
    }

    sub_1CA3F1664(v216, v217, v214);
    goto LABEL_106;
  }

  sub_1CA39F318(v205, v206);

  v195 = *(v163 + 8);
  v196 = v173;
  v197 = v201;
  v195(v196, v201);
  v195(v168, v197);
LABEL_100:
  sub_1CA3F1664(v216, v217, v214);
  if ((v202 & 1) == 0)
  {
    goto LABEL_106;
  }

LABEL_16:
  if (sub_1CA94C3A8() == a2 && v42 == a3)
  {

    goto LABEL_25;
  }

  v44 = sub_1CA94D7F8();

  if (v44)
  {
LABEL_25:
    v211 = @"Root";
    v55 = v214;
    v56 = sub_1CA3F14BC(v214, &selRef_deserializedLastRemoteCollectionOrdering);
    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }

    v212 = a6;
    sub_1CA3F16BC(a6, v55);
    sub_1CA3F171C(v213, v55);
    v58 = sub_1CA94C218();
    v59 = sub_1CA2E2E2C(v58);
    v60 = *(v57 + 16);
    if (v60)
    {
      v61 = 0;
      v217 = v57 + 32;
      do
      {
        if (v61 >= *(v57 + 16))
        {
          goto LABEL_109;
        }

        v62 = (v217 + 16 * v61);
        v64 = *v62;
        v63 = v62[1];
        if (*(v59 + 16))
        {
          sub_1CA94D918();
          sub_1CA94C218();
          sub_1CA94C458();
          v65 = sub_1CA94D968();
          v66 = ~(-1 << *(v59 + 32));
          while (1)
          {
            v67 = v65 & v66;
            if (((*(v59 + 56 + (((v65 & v66) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v65 & v66)) & 1) == 0)
            {
              break;
            }

            v68 = (*(v59 + 48) + 16 * v67);
            if (*v68 != v64 || v68[1] != v63)
            {
              v70 = sub_1CA94D7F8();
              v65 = v67 + 1;
              if ((v70 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_42;
          }
        }

        else
        {
          sub_1CA94C218();
        }

        v71 = [v215 library];
        v72 = sub_1CA94C368();

        [v71 deleteFolderWithIdentifier_];

LABEL_42:
        ++v61;
      }

      while (v61 != v60);
    }

    v74 = v213;
    v73 = v214;
    v75 = v213[2];
    v76 = v218;
    v77 = v215;
    if (v75)
    {
      v78 = v213 + 5;
      for (i = v213[2]; i; --i)
      {
        v80 = *(v78 - 1);
        v81 = *v78;
        sub_1CA94C218();
        v82 = sub_1CA3EB8EC(v80, v81);

        if (v82)
        {
          sub_1CA3ECFB4(v73, v82);
          if (v76)
          {

            v132 = v82;
            goto LABEL_81;
          }
        }

        v78 += 2;
      }
    }

    v217 = v75;
    v83 = [v77 library];
    v84 = [v83 folders];

    sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
    v85 = sub_1CA94C658();

    v86 = sub_1CA25B410(v85);
    v218 = v76;
    if (v86)
    {
      v91 = v86;
      v220[0] = MEMORY[0x1E69E7CC0];
      sub_1CA271524(0, v86 & ~(v86 >> 63), 0, v87, v88, v89, v90);
      if (v91 < 0)
      {
        goto LABEL_110;
      }

      v92 = 0;
      v93 = v220[0];
      v216 = v85 & 0xC000000000000001;
      v94 = v85;
      v95 = v91;
      do
      {
        if (v216)
        {
          v96 = MEMORY[0x1CCAA22D0](v92, v85);
        }

        else
        {
          v96 = *(v85 + 8 * v92 + 32);
        }

        v97 = v96;
        v98 = [v97 identifier];
        v99 = sub_1CA94C3A8();
        v101 = v100;

        v220[0] = v93;
        v107 = v93[2];
        v106 = v93[3];
        if (v107 >= v106 >> 1)
        {
          sub_1CA271524(v106 > 1, v107 + 1, 1, v102, v103, v104, v105);
          v93 = v220[0];
        }

        ++v92;
        v93[2] = v107 + 1;
        v108 = &v93[2 * v107];
        v108[4] = v99;
        v108[5] = v101;
        v85 = v94;
      }

      while (v95 != v92);

      v74 = v213;
    }

    else
    {

      v93 = MEMORY[0x1E69E7CC0];
    }

    v110 = 0;
    v111 = v74 + 40;
    v112 = MEMORY[0x1E69E7CC0];
    v113 = v217;
    v216 = v111;
LABEL_61:
    v114 = (v111 + 16 * v110);
    for (j = v110; v113 != j; ++j)
    {
      if (j >= v113)
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
      }

      v110 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_108;
      }

      v117 = *(v114 - 1);
      v116 = *v114;
      v220[0] = v117;
      v220[1] = v116;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      *(&v199 - 2) = v220;
      sub_1CA94C218();
      v118 = v218;
      v119 = sub_1CA2BFD14(sub_1CA2E9370, (&v199 - 4), v93);
      v218 = v118;
      if (v119)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v219 = v112;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CA271524(0, *(v112 + 16) + 1, 1, v120, v121, v122, v123);
          v112 = v219;
        }

        v111 = v216;
        v125 = *(v112 + 16);
        v124 = *(v112 + 24);
        if (v125 >= v124 >> 1)
        {
          sub_1CA271524(v124 > 1, v125 + 1, 1, v120, v121, v122, v123);
          v112 = v219;
        }

        *(v112 + 16) = v125 + 1;
        v126 = v112 + 16 * v125;
        *(v126 + 32) = v117;
        *(v126 + 40) = v116;
        v113 = v217;
        goto LABEL_61;
      }

      v114 += 2;
      v113 = v217;
    }

    v127 = v215;
    v128 = [v215 library];
    v129 = sub_1CA94C648();

    v220[0] = 0;
    v130 = [v128 moveFolders:v129 toIndex:0 error:v220];

    v51 = v220[0];
    if ((v130 & 1) == 0)
    {
      goto LABEL_80;
    }

    v131 = v220[0];
    v132 = v214;
    sub_1CA3ED6F0(v214);
    v133 = [v127 library];
    v134 = sub_1CA94C648();
    v220[0] = 0;
    v135 = [v133 setShortcutOrdering:v134 forCollectionIdentifier:v211 error:v220];

    v136 = v220[0];
    if (v135)
    {
      sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
      v137 = sub_1CA94C3A8();
      v139 = v138;
      v140 = v136;
      v141 = sub_1CA623D0C(v137, v139, 2);
      [v127 addPendingUpdatedDescriptor_];

      [v127 libraryDidChange];
      goto LABEL_106;
    }

    v142 = v220[0];
    sub_1CA948AD8();

    swift_willThrow();
LABEL_81:

    return;
  }

  v45 = WFGetBuiltInCollectionIdentifiers(0);
  v46 = sub_1CA94C8F8();

  LOBYTE(v45) = sub_1CA27AF18(a2, a3, v46);

  sub_1CA3F16BC(a6, v214);
  v47 = [v215 library];
  if ((v45 & 1) == 0)
  {
    v143 = sub_1CA94C368();
    v144 = [v47 hasFolderWithIdentifier_];

    if (v144)
    {
      v145 = v215;
      v146 = [v215 &selRef_matchesURL_];
      v147 = sub_1CA94C648();
      v148 = sub_1CA94C368();
      v220[0] = 0;
      v149 = [v146 setShortcutOrdering:v147 forCollectionIdentifier:v148 error:v220];

      v51 = v220[0];
      if (v149)
      {
        sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
        sub_1CA94C218();
        v150 = v51;
        v151 = sub_1CA623D0C(a2, a3, 2);
        [v145 addPendingUpdatedDescriptor_];

        [v145 libraryDidChange];
        goto LABEL_106;
      }

      goto LABEL_80;
    }

    v153 = sub_1CA94C3A8();
    v155 = sub_1CA3EB8EC(v153, v154);

    if (!v155)
    {
      goto LABEL_106;
    }

    v132 = v214;
    v156 = v218;
    sub_1CA3ECFB4(v155, v214);
    if (!v156)
    {
      v218 = 0;
      sub_1CA3ED6F0(v155);

      goto LABEL_106;
    }

    goto LABEL_81;
  }

  v48 = sub_1CA94C648();
  v49 = sub_1CA94C368();
  v220[0] = 0;
  v50 = [v47 setShortcutOrdering:v48 forCollectionIdentifier:v49 error:v220];

  v51 = v220[0];
  if (!v50)
  {
LABEL_80:
    v152 = v51;
    sub_1CA948AD8();

    swift_willThrow();
    v132 = v214;
    goto LABEL_81;
  }

  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  sub_1CA94C218();
  v52 = v51;
  v53 = sub_1CA623D0C(a2, a3, 2);
  v54 = v215;
  [v215 addPendingUpdatedDescriptor_];

  [v54 libraryDidChange];
LABEL_106:
}

void sub_1CA3EF53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, SEL *a6)
{
  v8 = sub_1CA3ECA08(a2, a3);
  if (a5 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1CA948BF8();
  }

  [v8 *a6];
}

uint64_t sub_1CA3EF628(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void *, unint64_t, uint64_t, uint64_t))
{
  v8 = a3;
  if (a3)
  {
    v10 = a4;
    v11 = a1;
    v12 = v8;
    v8 = sub_1CA948C08();
    v14 = v13;
  }

  else
  {
    v15 = a4;
    v16 = a1;
    v14 = 0xF000000000000000;
  }

  v17 = sub_1CA94C3A8();
  v19 = v18;

  a6(v8, v14, v17, v19);

  sub_1CA39F318(v8, v14);
  return 1;
}

id sub_1CA3EF78C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA3EB8EC(a2, a3);
  if (v6)
  {
    v7 = v6;
    v8 = [a1 context];
    [v8 deleteObject_];
  }

  v9 = [a1 library];
  v10 = sub_1CA94C368();
  [v9 deleteFolderWithIdentifier_];

  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  sub_1CA94C218();
  v11 = sub_1CA623D0C(a2, a3, 2);
  [a1 addPendingDeletedDescriptor_];

  return [a1 libraryDidChange];
}

Swift::OpaquePointer_optional __swiftcall WFDatabase.lastRemoteShortcutOrdering(forCollection:)(Swift::String forCollection)
{
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_1_25();
  sub_1CA3EF9F0(0xD00000000000001CLL, v1, v2, v3);
  v5 = 0;
  result.value._rawValue = v5;
  result.is_nil = v4;
  return result;
}

void sub_1CA3EF9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = sub_1CA94C368();
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CA3F1510;
  *(v11 + 24) = v10;
  v19 = sub_1CA3F19F0;
  v20 = v11;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v17 = sub_1CA3F0F08;
  v18 = &block_descriptor_56;
  v12 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v13 = [v6 performOperationWithReason:v9 block:v12 error:&aBlock];
  _Block_release(v12);

  v14 = aBlock;
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  if (v13)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&aBlock, &v15);
    swift_dynamicCast();
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t sub_1CA3EFC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_11_1();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  OUTLINED_FUNCTION_11_1();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F108C;
  *(v10 + 24) = v9;
  v21 = sub_1CA3F1094;
  v22 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_0_29();
  v19 = v11;
  v20 = &block_descriptor_7;
  v12 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v13 = [v5 performOperationWithReason:v8 block:v12 error:&aBlock];
  _Block_release(v12);

  v14 = aBlock;
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  if (v13)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&aBlock, &v17);
    type metadata accessor for WFDatabaseRecordSyncOperation(0);
    swift_dynamicCast();

    return v16;
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall WFDatabase.lastRemoteFolderOrdering(forCollection:)(Swift::String forCollection)
{
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_1_25();
  sub_1CA3EF9F0(0xD00000000000001ALL, v1, v2, v3);
  v5 = 0;
  result.value._rawValue = v5;
  result.is_nil = v4;
  return result;
}

void *sub_1CA3EFEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  result = sub_1CA3EB8EC(a2, a3);
  if (result)
  {
    v8 = result;
    v9 = [result *a5];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1CA94C658();
    }

    else
    {

      v11 = 0;
    }

    *a4 = v11;
  }

  return result;
}

id sub_1CA3EFFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_9(a1, a2, a3);
  v6 = v5;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_171();
  v9 = v3(v8, v6);

  if (v9)
  {
    v10 = sub_1CA94C648();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

Swift::String __swiftcall WFDatabase.debugLegacyFolderSyncState()()
{
  v10 = MEMORY[0x1E69E7CC0];
  v8 = &v10;
  v6[2] = sub_1CA3F0AB8;
  v6[3] = &v7;
  sub_1CA3EAB48(0x6E79732064616572, 0xEF65746174732063, sub_1CA3F0AD4, v6);
  v9 = v10;
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v0 = sub_1CA94C308();
  v2 = v1;
  swift_bridgeObjectRelease_n();
  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void sub_1CA3F0154(void *a1, void *a2)
{
  v117 = *MEMORY[0x1E69E9840];
  v115 = 0;
  v103 = [objc_opt_self() fetchRequest];
  v3 = [v103 execute_];
  v4 = v115;
  if (!v3)
  {
    v101 = v115;
    sub_1CA948AD8();

    swift_willThrow();
    goto LABEL_58;
  }

  v5 = v3;
  sub_1CA25B3D0(0, &unk_1EC441930, off_1E836E0D8);
  v6 = sub_1CA94C658();
  v7 = v4;

  v110 = sub_1CA25B410(v6);
  if (!v110)
  {
LABEL_55:

    return;
  }

  v8 = 0;
  v109 = v6 & 0xC000000000000001;
  v104 = v6 + 32;
  v105 = v6 & 0xFFFFFFFFFFFFFF8;
  v106 = a1;
  v107 = v6;
  while (1)
  {
    if (v109)
    {
      v9 = MEMORY[0x1CCAA22D0](v8, v6);
    }

    else
    {
      if (v8 >= *(v105 + 16))
      {
        goto LABEL_60;
      }

      v9 = *(v104 + 8 * v8);
    }

    v10 = v9;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
    }

    v12 = sub_1CA3F132C(v9, &selRef_identifier);
    if (v13)
    {
      break;
    }

LABEL_52:
    if (v8 == v110)
    {
      goto LABEL_55;
    }
  }

  v14 = v12;
  v15 = v13;
  v16 = *a1;
  sub_1CA94C218();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CA26DADC();
    v16 = v92;
    *a1 = v92;
  }

  v18 = *(v16 + 16);
  if (v18 >= *(v16 + 24) >> 1)
  {
    sub_1CA26DADC();
    v16 = v93;
    *a1 = v93;
  }

  *(v16 + 16) = v18 + 1;
  v19 = v16 + 16 * v18;
  *(v19 + 32) = v14;
  *(v19 + 40) = v15;
  v20 = sub_1CA94C368();
  v115 = 0;
  v21 = [a2 orderingRecordForCollection:v20 error:&v115];

  v22 = v115;
  if (v21)
  {
    v113 = v10;
    v111 = v8;
    v115 = 0x74756374726F6873;
    v116 = 0xEB00000000203A73;
    v23 = v22;
    v112 = v21;
    v24 = [v21 shortcuts];
    sub_1CA94C658();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    sub_1CA26E4D4();
    v25 = sub_1CA94C308();
    v27 = v26;

    MEMORY[0x1CCAA1300](v25, v27);

    v28 = v115;
    v29 = v116;
    sub_1CA26DADC();
    v31 = v30;
    v32 = v30[2];
    if (v32 >= v30[3] >> 1)
    {
      sub_1CA26DADC();
      v31 = v94;
    }

    v31[2] = v32 + 1;
    v33 = &v31[2 * v32];
    v33[4] = v28;
    v33[5] = v29;
    v35 = v14 == sub_1CA94C3A8() && v15 == v34;
    v36 = v113;
    if (v35)
    {
    }

    else
    {
      v37 = sub_1CA94D7F8();

      if ((v37 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (sub_1CA3F14BC(v112, &selRef_folders))
    {
      v115 = 0x3A737265646C6F66;
      v116 = 0xE900000000000020;
      v38 = sub_1CA94C308();
      v40 = v39;

      MEMORY[0x1CCAA1300](v38, v40);

      v41 = v115;
      v42 = v116;
      v43 = v31[2];
      if (v43 >= v31[3] >> 1)
      {
        sub_1CA26DADC();
        v31 = v100;
      }

      v31[2] = v43 + 1;
      v44 = &v31[2 * v43];
      v44[4] = v41;
      v44[5] = v42;
    }

LABEL_29:
    if (sub_1CA3F14BC(v113, &selRef_deserializedLastRemoteCollectionOrdering))
    {
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1CA94D408();

      v115 = 0xD000000000000019;
      v116 = 0x80000001CA9B2FD0;
      v45 = sub_1CA94C308();
      v47 = v46;

      MEMORY[0x1CCAA1300](v45, v47);

      v48 = v115;
      v49 = v116;
      v50 = v31[2];
      if (v50 >= v31[3] >> 1)
      {
        sub_1CA26DADC();
        v31 = v97;
      }

      v31[2] = v50 + 1;
      v51 = &v31[2 * v50];
      v51[4] = v48;
      v51[5] = v49;
    }

    if (sub_1CA3F14BC(v113, &selRef_deserializedLastRemoteCollectionOrderingSubset))
    {
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1CA94D408();

      v115 = 0xD00000000000001FLL;
      v116 = 0x80000001CA9B2FB0;
      v52 = sub_1CA94C308();
      v54 = v53;

      MEMORY[0x1CCAA1300](v52, v54);

      v55 = v115;
      v56 = v116;
      v57 = v31[2];
      if (v57 >= v31[3] >> 1)
      {
        sub_1CA26DADC();
        v31 = v98;
      }

      v31[2] = v57 + 1;
      v58 = &v31[2 * v57];
      v58[4] = v55;
      v58[5] = v56;
    }

    if (sub_1CA3F14BC(v113, &selRef_deserializedLastRemoteShortcutOrdering))
    {
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1CA94D408();

      v115 = 0xD000000000000017;
      v116 = 0x80000001CA9B2F90;
      v63 = sub_1CA94C308();
      v65 = v64;

      MEMORY[0x1CCAA1300](v63, v65);

      v66 = v115;
      v67 = v116;
      v68 = v31[2];
      v69 = v68 + 1;
      if (v68 >= v31[3] >> 1)
      {
        sub_1CA26DADC();
        v31 = v99;
      }

      v31[2] = v69;
      v70 = &v31[2 * v68];
      v70[4] = v66;
      v70[5] = v67;
    }

    else
    {
      v69 = v31[2];
      if (!v69)
      {

        v71 = MEMORY[0x1E69E7CC0];
LABEL_47:
        v115 = v71;
        v84 = sub_1CA94C308();
        v86 = v85;

        v87 = *a1;
        v88 = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v87;
        if ((v88 & 1) == 0)
        {
          sub_1CA26DADC();
          v87 = v95;
          *a1 = v95;
        }

        v89 = *(v87 + 16);
        if (v89 >= *(v87 + 24) >> 1)
        {
          sub_1CA26DADC();
          *a1 = v96;
        }

        v90 = *a1;
        *(v90 + 16) = v89 + 1;
        v91 = v90 + 16 * v89;
        *(v91 + 32) = v84;
        *(v91 + 40) = v86;
        v6 = v107;
        v8 = v111;
        goto LABEL_52;
      }
    }

    v114 = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v69, 0, v59, v60, v61, v62);
    v71 = v114;
    v72 = v31 + 5;
    do
    {
      v73 = *(v72 - 1);
      v74 = *v72;
      v115 = 8224;
      v116 = 0xE200000000000000;
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](v73, v74);

      v80 = v115;
      v79 = v116;
      v82 = v114[2];
      v81 = v114[3];
      if (v82 >= v81 >> 1)
      {
        sub_1CA271524(v81 > 1, v82 + 1, 1, v75, v76, v77, v78);
      }

      v114[2] = v82 + 1;
      v83 = &v114[2 * v82];
      v83[4] = v80;
      v83[5] = v79;
      v72 += 2;
      --v69;
    }

    while (v69);

    a1 = v106;
    v36 = v113;
    goto LABEL_47;
  }

  v102 = v115;

  sub_1CA948AD8();

  swift_willThrow();
LABEL_58:
}

uint64_t sub_1CA3F0AD4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

void sub_1CA3F0B98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1CA25CF98(a1, a2);
  }
}

void *sub_1CA3F0BAC(uint64_t a1, _BYTE *a2, void *(*a3)(uint64_t *__return_ptr))
{
  result = a3(&v5);
  *a2 = 0;
  return result;
}

void sub_1CA3F0C38(uint64_t a1, void **a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = *a2;
  *a2 = v5;
}

uint64_t sub_1CA3F0D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_9_17(a1, a2, a3, a4);
  *(v4 + 24) = v7(v6);
  return v5();
}

uint64_t sub_1CA3F0E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_9_17(a1, a2, a3, a4);
  *(v4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  return v5();
}

id sub_1CA3F0F08(uint64_t a1, uint64_t a2)
{
  (*(a1 + 32))(v9, a2);
  v2 = v10;
  if (v10)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_1CA94D7D8();
    (*(v4 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1CCAA4BF0);
  }

  return result;
}

id sub_1CA3F1198(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = sub_1CA94C368();

  if (a6 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1CA948BF8();
    sub_1CA39F318(a5, a6);
  }

  v13 = [v6 initWithName:v11 icon:a3 encryptedSchemaVersion:a4 cloudKitMetadata:v12];

  return v13;
}

id sub_1CA3F1250(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1CA94C648();

  if (a2)
  {
    v9 = sub_1CA94C648();
  }

  else
  {
    v9 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1CA948BF8();
    sub_1CA39F318(a3, a4);
  }

  v11 = [v4 initWithShortcuts:v8 folders:v9 cloudKitMetadata:v10];

  return v11;
}

uint64_t sub_1CA3F132C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1CA94C3A8();
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA3F1388(void *a1)
{
  v1 = [a1 cloudKitOrderingRecordMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA948C08();

  return v3;
}

uint64_t sub_1CA3F13EC(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1CA94C658();

  return v4;
}

uint64_t sub_1CA3F144C(void *a1)
{
  v2 = [a1 cloudKitFolderRecordMetadata];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA948C08();

  return v3;
}

uint64_t sub_1CA3F14BC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1CA94C658();

  return v4;
}

uint64_t sub_1CA3F1510@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *(a1 + 24) = MEMORY[0x1E69E7CA8] + 8;
  return v2();
}

void sub_1CA3F1548(uint64_t a1, void *a2)
{
  v3 = sub_1CA94C648();

  [a2 setDeserializedLastRemoteCollectionOrderingSubset_];
}

void sub_1CA3F15B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();
  [a3 setTemporarySyncFolderName_];
}

void sub_1CA3F160C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA948BF8();
  [a3 setCloudKitFolderRecordMetadata_];
}

void sub_1CA3F1664(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA948BF8();
  [a3 setCloudKitOrderingRecordMetadata_];
}

void sub_1CA3F16BC(uint64_t a1, void *a2)
{
  v3 = sub_1CA94C648();
  [a2 setDeserializedLastRemoteShortcutOrdering_];
}

void sub_1CA3F171C(uint64_t a1, void *a2)
{
  v3 = sub_1CA94C648();
  [a2 setDeserializedLastRemoteCollectionOrdering_];
}

unint64_t sub_1CA3F177C()
{
  result = qword_1EC444F80;
  if (!qword_1EC444F80)
  {
    sub_1CA948CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444F80);
  }

  return result;
}

unint64_t sub_1CA3F1834()
{
  result = qword_1EC444F88;
  if (!qword_1EC444F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444F88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyFolderSyncError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA3F1974()
{
  result = qword_1EC444F90;
  if (!qword_1EC444F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444F90);
  }

  return result;
}

id sub_1CA3F1A58()
{
  v31 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v5 = sub_1CA94C368();
  *(inited + 144) = v1;
  *(inited + 112) = v5;
  *(inited + 120) = 0xD00000000000005DLL;
  *(inited + 128) = 0x80000001CA9B30E0;
  v6 = sub_1CA94C368();
  *(inited + 184) = v1;
  *(inited + 152) = v6;
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x80000001CA9B3140;
  *(inited + 192) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v7 = swift_initStackObject();
  v29 = xmmword_1CA981310;
  *(v7 + 16) = xmmword_1CA981310;
  strcpy((v7 + 32), "dateComponents");
  *(v7 + 47) = -18;
  v30 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v8 = swift_initStackObject();
  *(v8 + 16) = v29;
  *(v8 + 32) = @"Prompt";
  v9 = @"Prompt";
  v10 = sub_1CA94C438("Time Prompt (CreateAlarmIntentAction)", 37);
  v28 = v11;
  *&v29 = v10;
  v12 = sub_1CA94C438("For when?", 9);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v29, v28, v12, v14, 0, 0, v17, v21);
  *(v8 + 64) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v8 + 40) = v23;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v24 = sub_1CA94C1E8();
  *(v7 + 48) = sub_1CA2F864C(v24);
  v25 = sub_1CA94C1E8();
  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 200) = v25;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3F1F94()
{
  v800 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v797 = xmmword_1CA981420;
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9B31D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("create|add|calendar|task|todo|to-do", 35);
  v6 = v5;
  v7 = sub_1CA94C438("create|add|calendar|task|todo|to-do", 35);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v835 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v836 = v11;
  v12 = &v785 - v835;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v833 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v832 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v785 - v832;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v831 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v834 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v825 = xmmword_1CA97EDF0;
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438("The new reminder", 16);
  v829 = v27;
  v28 = sub_1CA94C438("The new reminder", 16);
  v30 = v29;
  v830 = &v785;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v785 - v835;
  sub_1CA948D98();
  v32 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v823 = inited;
  v33 = v832;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v829, v28, v30, 0, 0, v31, &v785 - v33);
  v36 = v831;
  *(v23 + 40) = v35;
  *(v23 + 64) = v36;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438("Creates a new reminder and adds it to the selected list of reminders.", 69);
  v828 = v39;
  v829 = v38;
  v40 = sub_1CA94C438("Creates a new reminder and adds it to the selected list of reminders.", 69);
  v42 = v41;
  v830 = &v785;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v785 - v835;
  sub_1CA948D98();
  v44 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v829, v828, v40, v42, 0, 0, v43, &v785 - v33);
  *(v23 + 104) = v36;
  *(v23 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v47 = sub_1CA94C1E8();
  v48 = v834;
  v49 = sub_1CA6B3784(v47);
  v50 = v823;
  v823[20] = v49;
  v50[23] = v48;
  v50[24] = @"InputPassthrough";
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 200) = 0;
  v50[28] = v51;
  v50[29] = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438("New Reminder (Action Name)", 26);
  v828 = v55;
  v829 = v54;
  v56 = sub_1CA94C438("New Reminder", 12);
  v58 = v57;
  v830 = &v785;
  MEMORY[0x1EEE9AC00](v56);
  v59 = v835;
  sub_1CA948D98();
  v834 = qword_1EDB9F690;
  v60 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = v832;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v829, v828, v56, v58, 0, 0, &v785 - v59, &v785 - v61);
  v64 = v831;
  v65 = v823;
  v823[30] = v63;
  v65[33] = v64;
  v65[34] = @"Output";
  v815 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v66 = swift_initStackObject();
  v824 = xmmword_1CA9813C0;
  *(v66 + 16) = xmmword_1CA9813C0;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  *(v66 + 48) = 0;
  *(v66 + 72) = MEMORY[0x1E69E6370];
  *(v66 + 80) = 0x614E74757074754FLL;
  *(v66 + 88) = 0xEA0000000000656DLL;
  v67 = @"Output";
  v68 = sub_1CA94C438("New Reminder (Default Output Name)", 34);
  v828 = v69;
  v829 = v68;
  v827 = sub_1CA94C438("New Reminder", 12);
  v71 = v70;
  v830 = &v785;
  MEMORY[0x1EEE9AC00](v827);
  sub_1CA948D98();
  v72 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 96) = sub_1CA2F9F14(v829, v828, v827, v71, 0, 0, &v785 - v59, &v785 - v61);
  *(v66 + 120) = v64;
  *(v66 + 128) = 0x7365707954;
  *(v66 + 136) = 0xE500000000000000;
  v807 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v66 + 168) = v807;
  *(v66 + 144) = &unk_1F49F8E80;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v799 = v76;
  v77 = v823;
  v823[35] = v75;
  v77[38] = v76;
  v77[39] = @"Parameters";
  v822 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v830 = swift_allocObject();
  *(v830 + 1) = xmmword_1CA9858F0;
  v829 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v828 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_initStackObject();
  v821 = xmmword_1CA981380;
  *(v78 + 16) = xmmword_1CA981380;
  v798 = 0x80000001CA99B500;
  v819 = 0xD000000000000014;
  *(v78 + 32) = @"Class";
  *(v78 + 40) = 0xD000000000000014;
  *(v78 + 48) = 0x80000001CA99B500;
  *(v78 + 64) = v74;
  *(v78 + 72) = @"Description";
  v79 = @"Parameters";
  v820 = @"Class";
  v817 = @"Description";
  v826 = sub_1CA94C438("The title of this reminder. (WFCalendarItemTitle)", 49);
  v818 = v80;
  v81 = sub_1CA94C438("The title of this reminder.", 27);
  v83 = v82;
  v827 = &v785;
  MEMORY[0x1EEE9AC00](v81);
  v84 = v835;
  sub_1CA948D98();
  v85 = v834;
  v86 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v785 - v832;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 80) = sub_1CA2F9F14(v826, v818, v81, v83, 0, 0, &v785 - v84, v87);
  *(v78 + 104) = v831;
  *(v78 + 112) = @"Key";
  v818 = 0xD000000000000013;
  *(v78 + 120) = 0xD000000000000013;
  *(v78 + 128) = 0x80000001CA9B3350;
  *(v78 + 144) = MEMORY[0x1E69E6158];
  *(v78 + 152) = @"Label";
  v813 = @"Key";
  *&v814 = @"Label";
  v826 = sub_1CA94C438("Reminder (WFCalendarItemTitle)", 30);
  v816 = v89;
  v90 = sub_1CA94C438("Reminder", 8);
  v812 = v91;
  v827 = &v785;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v785 - v84;
  sub_1CA948D98();
  v93 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v832;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 160) = sub_1CA2F9F14(v826, v816, v90, v812, 0, 0, v92, &v785 - v94);
  v96 = v831;
  *(v78 + 184) = v831;
  *(v78 + 192) = @"Prompt";
  v816 = @"Prompt";
  v826 = sub_1CA94C438("What would you like to be reminded about? (WFCalendarItemTitle)", 63);
  v812 = v97;
  *&v811 = sub_1CA94C438("What would you like to be reminded about?", 41);
  v99 = v98;
  v827 = &v785;
  MEMORY[0x1EEE9AC00](v811);
  v100 = &v785 - v835;
  sub_1CA948D98();
  v101 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 200) = sub_1CA2F9F14(v826, v812, v811, v99, 0, 0, v100, &v785 - v94);
  *(v78 + 224) = v96;
  *(v78 + 232) = @"TextAlignment";
  v103 = MEMORY[0x1E69E6158];
  *(v78 + 264) = MEMORY[0x1E69E6158];
  *(v78 + 240) = 0x7468676952;
  *(v78 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v827 = v104;
  v826 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v796 = @"TextAlignment";
  v105 = sub_1CA94C1E8();
  v106 = sub_1CA2F864C(v105);
  v830[4] = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1CA981300;
  v108 = v820;
  *(v107 + 32) = v820;
  *(v107 + 40) = 0xD00000000000001ELL;
  *(v107 + 48) = 0x80000001CA9B3400;
  v109 = v817;
  *(v107 + 64) = v103;
  *(v107 + 72) = v109;
  v806 = v108;
  v810 = v109;
  v817 = sub_1CA94C438("The list of reminders to add this reminder to. (WFCalendarDescriptor)", 69);
  v812 = v110;
  v111 = sub_1CA94C438("The list of reminders to add this reminder to.", 46);
  v113 = v112;
  v820 = &v785;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v785 - v835;
  sub_1CA948D98();
  v115 = v834;
  v116 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v785 - v832;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v817, v812, v111, v113, 0, 0, v114, v117);
  v120 = v819;
  *(v107 + 80) = v119;
  v121 = v831;
  v122 = v813;
  v123 = v814;
  *(v107 + 104) = v831;
  *(v107 + 112) = v122;
  *(v107 + 120) = v120;
  *(v107 + 128) = 0x80000001CA9B34A0;
  *(v107 + 144) = MEMORY[0x1E69E6158];
  *(v107 + 152) = v123;
  v817 = v122;
  v820 = v123;
  v124 = sub_1CA94C438("List (WFCalendarDescriptor)", 27);
  v812 = v125;
  v813 = v124;
  v126 = sub_1CA94C438("List", 4);
  *&v811 = v127;
  *&v814 = &v785;
  MEMORY[0x1EEE9AC00](v126);
  v128 = v835;
  sub_1CA948D98();
  v129 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v832;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 160) = sub_1CA2F9F14(v813, v812, v126, v811, 0, 0, &v785 - v128, &v785 - v130);
  *(v107 + 184) = v121;
  *(v107 + 192) = @"LegacyKey";
  *&v814 = 0xD000000000000016;
  *(v107 + 200) = 0xD000000000000016;
  *(v107 + 208) = 0x80000001CA9B34E0;
  v132 = v816;
  *(v107 + 224) = MEMORY[0x1E69E6158];
  *(v107 + 232) = v132;
  v808 = v132;
  v133 = @"LegacyKey";
  v134 = sub_1CA94C438("What List do you want to add to? (WFCalendarDescriptor)", 55);
  v812 = v135;
  v813 = v134;
  v136 = sub_1CA94C438("What List do you want to add to?", 32);
  v138 = v137;
  v816 = &v785;
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948D98();
  v139 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 240) = sub_1CA2F9F14(v813, v812, v136, v138, 0, 0, &v785 - v128, &v785 - v130);
  *(v107 + 264) = v831;
  *(v107 + 272) = @"Optional";
  *(v107 + 280) = 1;
  *(v107 + 304) = MEMORY[0x1E69E6370];
  *(v107 + 312) = @"RequiredResources";
  v813 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v141 = swift_allocObject();
  v811 = xmmword_1CA981310;
  *(v141 + 16) = xmmword_1CA981310;
  v816 = 0x80000001CA993590;
  v142 = @"Optional";
  v809 = @"RequiredResources";
  v143 = MEMORY[0x1E69E6158];
  *(v141 + 32) = sub_1CA94C1E8();
  v812 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v107 + 344) = v812;
  *(v107 + 320) = v141;
  v144 = sub_1CA94C1E8();
  v145 = sub_1CA2F864C(v144);
  v830[5] = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = v821;
  v805 = 0x80000001CA99C4A0;
  v147 = v806;
  v148 = v814;
  *(v146 + 32) = v806;
  *(v146 + 40) = v148;
  *(v146 + 48) = 0x80000001CA99C4A0;
  *(v146 + 64) = v143;
  *(v146 + 72) = @"DefaultValue";
  *(v146 + 80) = 0x7472656C41206F4ELL;
  *(v146 + 88) = 0xE800000000000000;
  *(v146 + 104) = v143;
  *(v146 + 112) = @"Items";
  v802 = swift_allocObject();
  *(v802 + 1) = xmmword_1CA981360;
  v803 = v147;
  v794 = @"DefaultValue";
  v804 = @"Items";
  *&v801 = sub_1CA94C438("No Alert (WFAlertEnabled)", 25);
  *&v795 = v149;
  v793 = sub_1CA94C438("No Alert", 8);
  v151 = v150;
  v806 = &v785;
  MEMORY[0x1EEE9AC00](v793);
  v152 = v835;
  sub_1CA948D98();
  v153 = v834;
  v154 = [v834 bundleURL];
  v792 = &v785;
  MEMORY[0x1EEE9AC00](v154);
  v155 = v832;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157 = sub_1CA2F9F14(v801, v795, v793, v151, 0, 0, &v785 - v152, &v785 - v155);
  v158 = v802;
  v802[4] = v157;
  *&v801 = sub_1CA94C438("Alert (WFAlertEnabled)", 22);
  *&v795 = v159;
  v160 = sub_1CA94C438("Alert", 5);
  v162 = v161;
  v806 = &v785;
  MEMORY[0x1EEE9AC00](v160);
  v163 = &v785 - v152;
  sub_1CA948D98();
  v164 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v158 + 40) = sub_1CA2F9F14(v801, v795, v160, v162, 0, 0, v163, &v785 - v155);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v806 = v166;
  *(v146 + 120) = v158;
  v167 = v817;
  *(v146 + 144) = v166;
  *(v146 + 152) = v167;
  strcpy((v146 + 160), "WFAlertEnabled");
  *(v146 + 175) = -18;
  v168 = v820;
  *(v146 + 184) = MEMORY[0x1E69E6158];
  *(v146 + 192) = v168;
  v793 = v167;
  v802 = v168;
  v817 = sub_1CA94C438("Alert (WFAlertEnabled)", 22);
  *&v801 = v169;
  *&v795 = sub_1CA94C438("Alert", 5);
  v171 = v170;
  v820 = &v785;
  MEMORY[0x1EEE9AC00](v795);
  v172 = &v785 - v835;
  sub_1CA948D98();
  v173 = v834;
  v174 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  v175 = v832;
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v146 + 200) = sub_1CA2F9F14(v817, v801, v795, v171, 0, 0, v172, &v785 - v175);
  v177 = v831;
  v178 = v808;
  *(v146 + 224) = v831;
  *(v146 + 232) = v178;
  v817 = v178;
  v808 = sub_1CA94C438("Should there be an alert? (WFAlertEnabled)", 42);
  *&v801 = v179;
  v180 = sub_1CA94C438("Should there be an alert?", 25);
  *&v795 = v181;
  v820 = &v785;
  MEMORY[0x1EEE9AC00](v180);
  v182 = v835;
  sub_1CA948D98();
  v183 = [v173 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v185 = sub_1CA2F9F14(v808, v801, v180, v795, 0, 0, &v785 - v182, &v785 - v175);
  *(v146 + 264) = v177;
  *(v146 + 240) = v185;
  v186 = sub_1CA94C1E8();
  v187 = sub_1CA2F864C(v186);
  v830[6] = v187;
  v188 = swift_allocObject();
  v801 = xmmword_1CA981400;
  *(v188 + 16) = xmmword_1CA981400;
  v190 = v803;
  v189 = v804;
  v191 = v814;
  *(v188 + 32) = v803;
  *(v188 + 40) = v191;
  *(v188 + 48) = v805;
  v192 = MEMORY[0x1E69E6158];
  v193 = v794;
  *(v188 + 64) = MEMORY[0x1E69E6158];
  *(v188 + 72) = v193;
  *(v188 + 80) = 0x656D6954207441;
  *(v188 + 88) = 0xE700000000000000;
  *(v188 + 104) = v192;
  *(v188 + 112) = v189;
  v820 = swift_allocObject();
  v795 = xmmword_1CA981570;
  *(v820 + 1) = xmmword_1CA981570;
  v194 = v193;
  v195 = v189;
  v808 = v190;
  v196 = v194;
  v794 = v195;
  v804 = v196;
  v197 = sub_1CA94C438("At Time (WFAlertCondition)", 26);
  v791 = v198;
  v792 = v197;
  v199 = sub_1CA94C438("At Time", 7);
  v790 = v200;
  v803 = &v785;
  MEMORY[0x1EEE9AC00](v199);
  sub_1CA948D98();
  v201 = v834;
  v202 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v785 - v832;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v205 = sub_1CA2F9F14(v792, v791, v199, v790, 0, 0, &v785 - v182, v203);
  v820[4] = v205;
  v206 = sub_1CA94C438("When I Arrive (WFAlertCondition)", 32);
  v791 = v207;
  v792 = v206;
  v208 = sub_1CA94C438("When I Arrive", 13);
  v790 = v209;
  v803 = &v785;
  MEMORY[0x1EEE9AC00](v208);
  v210 = v835;
  sub_1CA948D98();
  v211 = [v201 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  v212 = v832;
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v214 = sub_1CA2F9F14(v792, v791, v208, v790, 0, 0, &v785 - v210, &v785 - v212);
  v215 = v820;
  v820[5] = v214;
  v216 = sub_1CA94C438("When I Leave (WFAlertCondition)", 31);
  v791 = v217;
  v792 = v216;
  v218 = sub_1CA94C438("When I Leave", 12);
  v790 = v219;
  v803 = &v785;
  MEMORY[0x1EEE9AC00](v218);
  v220 = &v785 - v210;
  sub_1CA948D98();
  v221 = v834;
  v222 = [v834 bundleURL];
  v789 = &v785;
  MEMORY[0x1EEE9AC00](v222);
  sub_1CA948B68();

  v223 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v215[6] = sub_1CA2F9F14(v792, v791, v218, v790, 0, 0, v220, &v785 - v212);
  v224 = sub_1CA94C438("When Messaging (WFAlertCondition)", 33);
  v791 = v225;
  v792 = v224;
  v226 = sub_1CA94C438("When Messaging", 14);
  v790 = v227;
  v803 = &v785;
  MEMORY[0x1EEE9AC00](v226);
  v228 = &v785 - v835;
  sub_1CA948D98();
  v229 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v229);
  v230 = &v785 - v832;
  sub_1CA948B68();

  v231 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v232 = sub_1CA2F9F14(v792, v791, v226, v790, 0, 0, v228, v230);
  v233 = v820;
  v820[7] = v232;
  *(v188 + 120) = v233;
  v234 = v793;
  *(v188 + 144) = v806;
  *(v188 + 152) = v234;
  v803 = 0x80000001CA994630;
  *(v188 + 160) = 0xD000000000000010;
  *(v188 + 168) = 0x80000001CA994630;
  v235 = v802;
  *(v188 + 184) = MEMORY[0x1E69E6158];
  *(v188 + 192) = v235;
  v793 = v234;
  v802 = v235;
  v236 = sub_1CA94C438("Trigger (WFAlertCondition)", 26);
  v791 = v237;
  v792 = v236;
  v790 = sub_1CA94C438("Trigger", 7);
  v239 = v238;
  v820 = &v785;
  MEMORY[0x1EEE9AC00](v790);
  v240 = v835;
  sub_1CA948D98();
  v241 = v834;
  v242 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v242);
  v243 = v832;
  sub_1CA948B68();

  v244 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v188 + 200) = sub_1CA2F9F14(v792, v791, v790, v239, 0, 0, &v785 - v240, &v785 - v243);
  v245 = v831;
  v246 = v817;
  *(v188 + 224) = v831;
  *(v188 + 232) = v246;
  v820 = v246;
  v247 = sub_1CA94C438("When should you be reminded? (WFAlertCondition)", 47);
  v791 = v248;
  v792 = v247;
  v790 = sub_1CA94C438("When should you be reminded?", 28);
  v250 = v249;
  v817 = &v785;
  MEMORY[0x1EEE9AC00](v790);
  sub_1CA948D98();
  v251 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v188 + 240) = sub_1CA2F9F14(v792, v791, v790, v250, 0, 0, &v785 - v240, &v785 - v243);
  v253 = v809;
  *(v188 + 264) = v245;
  *(v188 + 272) = v253;
  v254 = swift_allocObject();
  *(v254 + 16) = v811;
  v817 = 0x80000001CA993570;
  v809 = v253;
  v255 = MEMORY[0x1E69E6158];
  *(v254 + 32) = sub_1CA94C1E8();
  *(v188 + 304) = v812;
  *(v188 + 280) = v254;
  v256 = sub_1CA94C1E8();
  v257 = sub_1CA2F864C(v256);
  v830[7] = v257;
  v258 = swift_allocObject();
  *(v258 + 16) = v821;
  v259 = v808;
  v260 = v818;
  *(v258 + 32) = v808;
  *(v258 + 40) = v260;
  *(v258 + 48) = 0x80000001CA99B730;
  v261 = v810;
  *(v258 + 64) = v255;
  *(v258 + 72) = v261;
  v789 = v259;
  v790 = v261;
  v808 = sub_1CA94C438("The location that triggers the alert. (WFAlertLocation)", 55);
  v263 = v262;
  v264 = sub_1CA94C438("The location that triggers the alert.", 37);
  v266 = v265;
  v810 = &v785;
  MEMORY[0x1EEE9AC00](v264);
  v267 = &v785 - v835;
  sub_1CA948D98();
  v268 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v268);
  v269 = &v785 - v832;
  sub_1CA948B68();

  v270 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v258 + 80) = sub_1CA2F9F14(v808, v263, v264, v266, 0, 0, v267, v269);
  v271 = v793;
  *(v258 + 104) = v831;
  *(v258 + 112) = v271;
  *(v258 + 120) = 0x4C7472656C414657;
  *(v258 + 128) = 0xEF6E6F697461636FLL;
  v272 = v802;
  *(v258 + 144) = MEMORY[0x1E69E6158];
  *(v258 + 152) = v272;
  v273 = v271;
  v274 = v272;
  v275 = v273;
  v276 = v274;
  v791 = v275;
  v792 = v276;
  v808 = sub_1CA94C438("Location (WFAlertLocation)", 26);
  v802 = v277;
  v278 = sub_1CA94C438("Location", 8);
  v793 = v279;
  v810 = &v785;
  MEMORY[0x1EEE9AC00](v278);
  v280 = v835;
  sub_1CA948D98();
  v281 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v281);
  v282 = v832;
  sub_1CA948B68();

  v283 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v258 + 160) = sub_1CA2F9F14(v808, v802, v278, v793, 0, 0, &v785 - v280, &v785 - v282);
  v284 = v820;
  *(v258 + 184) = v831;
  *(v258 + 192) = v284;
  v802 = v284;
  v810 = sub_1CA94C438("What’s the location? (WFAlertLocation)", 40);
  v808 = v285;
  v286 = sub_1CA94C438("What’s the location?", 22);
  v793 = v287;
  v820 = &v785;
  MEMORY[0x1EEE9AC00](v286);
  sub_1CA948D98();
  v288 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v288);
  sub_1CA948B68();

  v289 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v258 + 200) = sub_1CA2F9F14(v810, v808, v286, v793, 0, 0, &v785 - v280, &v785 - v282);
  v290 = v809;
  *(v258 + 224) = v831;
  *(v258 + 232) = v290;
  v810 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v291 = swift_allocObject();
  *(v291 + 16) = v825;
  v292 = swift_allocObject();
  *(v292 + 16) = v824;
  strcpy((v292 + 32), "WFParameterKey");
  *(v292 + 47) = -18;
  strcpy((v292 + 48), "WFAlertEnabled");
  *(v292 + 63) = -18;
  v293 = MEMORY[0x1E69E6158];
  *(v292 + 72) = MEMORY[0x1E69E6158];
  *(v292 + 80) = 0xD000000000000010;
  v294 = v816;
  *(v292 + 88) = v817;
  *(v292 + 96) = 0x7472656C41;
  *(v292 + 104) = 0xE500000000000000;
  *(v292 + 120) = v293;
  *(v292 + 128) = 0x72756F7365524657;
  *(v292 + 168) = v293;
  *(v292 + 136) = 0xEF7373616C436563;
  *(v292 + 144) = 0xD00000000000001BLL;
  v808 = 0xD00000000000001BLL;
  *(v292 + 152) = v294;
  v788 = v290;
  *(v291 + 32) = sub_1CA94C1E8();
  v295 = swift_allocObject();
  *(v295 + 16) = v824;
  strcpy((v295 + 32), "WFParameterKey");
  *(v295 + 47) = -18;
  *(v295 + 48) = 0xD000000000000010;
  *(v295 + 56) = v803;
  v793 = 0x80000001CA9A2F30;
  v820 = 0xD000000000000011;
  *(v295 + 72) = v293;
  *(v295 + 80) = 0xD000000000000011;
  *(v295 + 88) = 0x80000001CA9A2F30;
  *(v295 + 96) = &unk_1F49F8FB0;
  *(v295 + 120) = v807;
  *(v295 + 128) = 0x72756F7365524657;
  *(v295 + 168) = v293;
  *(v295 + 136) = 0xEF7373616C436563;
  *(v295 + 144) = 0xD00000000000001BLL;
  *(v295 + 152) = v294;
  *(v291 + 40) = sub_1CA94C1E8();
  v809 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v258 + 264) = v809;
  *(v258 + 240) = v291;
  v296 = sub_1CA94C1E8();
  v297 = sub_1CA2F864C(v296);
  v830[8] = v297;
  v298 = swift_allocObject();
  *(v298 + 16) = v801;
  *(v298 + 32) = @"AllowsMultipleValues";
  *(v298 + 40) = 0;
  v299 = v789;
  v300 = v790;
  *(v298 + 64) = MEMORY[0x1E69E6370];
  *(v298 + 72) = v299;
  *(v298 + 80) = 0xD000000000000017;
  *(v298 + 88) = 0x80000001CA9A37F0;
  *(v298 + 104) = v293;
  *(v298 + 112) = v300;
  v301 = v299;
  v302 = v300;
  v303 = v301;
  v304 = v302;
  v789 = v303;
  v790 = v304;
  v305 = @"AllowsMultipleValues";
  v306 = sub_1CA94C438("The reminder notification will be shown when chatting with this person in Messages. (WFAlertPerson)", 99);
  v786 = v307;
  v787 = v306;
  v308 = sub_1CA94C438("The reminder notification will be shown when chatting with this person in Messages.", 83);
  v310 = v309;
  *&v801 = &v785;
  MEMORY[0x1EEE9AC00](v308);
  v311 = v835;
  sub_1CA948D98();
  v312 = v834;
  v313 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v313);
  v314 = &v785 - v832;
  sub_1CA948B68();

  v315 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v298 + 120) = sub_1CA2F9F14(v787, v786, v308, v310, 0, 0, &v785 - v311, v314);
  v316 = v791;
  v317 = v792;
  *(v298 + 144) = v831;
  *(v298 + 152) = v316;
  strcpy((v298 + 160), "WFAlertPerson");
  *(v298 + 174) = -4864;
  *(v298 + 184) = MEMORY[0x1E69E6158];
  *(v298 + 192) = v317;
  v791 = v316;
  v792 = v317;
  v318 = sub_1CA94C438("Person (WFAlertPerson)", 22);
  v786 = v319;
  v787 = v318;
  v320 = sub_1CA94C438("Person", 6);
  v785 = v321;
  *&v801 = &v785;
  MEMORY[0x1EEE9AC00](v320);
  sub_1CA948D98();
  v322 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v322);
  v323 = v832;
  sub_1CA948B68();

  v324 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v298 + 200) = sub_1CA2F9F14(v787, v786, v320, v785, 0, 0, &v785 - v311, &v785 - v323);
  v325 = v831;
  v326 = v802;
  *(v298 + 224) = v831;
  *(v298 + 232) = v326;
  v327 = sub_1CA94C438("Who should you be messaging? (WFAlertPerson)", 44);
  v786 = v328;
  v787 = v327;
  v785 = sub_1CA94C438("Who should you be messaging?", 28);
  v330 = v329;
  *&v801 = &v785;
  MEMORY[0x1EEE9AC00](v785);
  v331 = &v785 - v835;
  sub_1CA948D98();
  v332 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v332);
  sub_1CA948B68();

  v333 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v298 + 240) = sub_1CA2F9F14(v787, v786, v785, v330, 0, 0, v331, &v785 - v323);
  *(v298 + 264) = v325;
  v334 = v788;
  *(v298 + 272) = v788;
  v335 = swift_allocObject();
  *(v335 + 16) = v825;
  *&v801 = v334;
  v336 = MEMORY[0x1E69E6158];
  *(v335 + 32) = sub_1CA94C1E8();
  *(v335 + 40) = sub_1CA94C1E8();
  *(v298 + 304) = v812;
  *(v298 + 280) = v335;
  v337 = sub_1CA94C1E8();
  v338 = sub_1CA2F864C(v337);
  v830[9] = v338;
  v339 = swift_allocObject();
  *(v339 + 16) = xmmword_1CA9813E0;
  v340 = v789;
  *(v339 + 32) = v789;
  *(v339 + 40) = 0xD00000000000001CLL;
  *(v339 + 48) = 0x80000001CA9AC750;
  *(v339 + 64) = v336;
  *(v339 + 72) = @"DefaultUnit";
  *(v339 + 80) = 29798;
  *(v339 + 88) = 0xE200000000000000;
  v341 = v804;
  *(v339 + 104) = v336;
  *(v339 + 112) = v341;
  *(v339 + 120) = 1000;
  v342 = v790;
  *(v339 + 144) = MEMORY[0x1E69E6530];
  *(v339 + 152) = v342;
  v788 = v340;
  v789 = v342;
  v343 = @"DefaultUnit";
  v344 = sub_1CA94C438("The distance from the provided location to consider arriving or leaving the location (WFAlertLocationRadius)", 112);
  v786 = v345;
  v787 = v344;
  v346 = sub_1CA94C438("The distance from the provided location to consider arriving or leaving the location", 88);
  v785 = v347;
  v790 = &v785;
  MEMORY[0x1EEE9AC00](v346);
  v348 = v835;
  sub_1CA948D98();
  v349 = v834;
  v350 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v350);
  v351 = v832;
  sub_1CA948B68();

  v352 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v353 = sub_1CA2F9F14(v787, v786, v346, v785, 0, 0, &v785 - v348, &v785 - v351);
  v354 = v791;
  *(v339 + 160) = v353;
  v355 = v831;
  *(v339 + 184) = v831;
  *(v339 + 192) = v354;
  *(v339 + 200) = 0xD000000000000015;
  *(v339 + 208) = 0x80000001CA9B3A50;
  v356 = v792;
  *(v339 + 224) = MEMORY[0x1E69E6158];
  *(v339 + 232) = v356;
  v790 = v354;
  v791 = v356;
  v357 = sub_1CA94C438("Radius (WFAlertLocationRadius)", 30);
  v786 = v358;
  v787 = v357;
  v359 = sub_1CA94C438("Radius", 6);
  v785 = v360;
  v792 = &v785;
  MEMORY[0x1EEE9AC00](v359);
  sub_1CA948D98();
  v361 = [v349 bundleURL];
  MEMORY[0x1EEE9AC00](v361);
  sub_1CA948B68();

  v362 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v339 + 240) = sub_1CA2F9F14(v787, v786, v359, v785, 0, 0, &v785 - v348, &v785 - v351);
  v363 = v801;
  *(v339 + 264) = v355;
  *(v339 + 272) = v363;
  v364 = swift_allocObject();
  *(v364 + 16) = v825;
  v365 = swift_allocObject();
  *(v365 + 16) = v824;
  strcpy((v365 + 32), "WFParameterKey");
  *(v365 + 47) = -18;
  strcpy((v365 + 48), "WFAlertEnabled");
  *(v365 + 63) = -18;
  v366 = MEMORY[0x1E69E6158];
  *(v365 + 72) = MEMORY[0x1E69E6158];
  *(v365 + 80) = 0xD000000000000010;
  *(v365 + 88) = v817;
  *(v365 + 96) = 0x7472656C41;
  *(v365 + 104) = 0xE500000000000000;
  *(v365 + 120) = v366;
  *(v365 + 128) = 0x72756F7365524657;
  *(v365 + 168) = v366;
  v367 = v366;
  v368 = v808;
  *(v365 + 136) = 0xEF7373616C436563;
  *(v365 + 144) = v368;
  v369 = v816;
  *(v365 + 152) = v816;
  *(v364 + 32) = sub_1CA94C1E8();
  v370 = swift_allocObject();
  *(v370 + 16) = v824;
  strcpy((v370 + 32), "WFParameterKey");
  *(v370 + 47) = -18;
  *(v370 + 48) = 0xD000000000000010;
  *(v370 + 56) = v803;
  v371 = v820;
  *(v370 + 72) = v367;
  *(v370 + 80) = v371;
  *(v370 + 88) = v793;
  *(v370 + 96) = &unk_1F49F90F0;
  *(v370 + 120) = v807;
  *(v370 + 128) = 0x72756F7365524657;
  *(v370 + 168) = v367;
  *(v370 + 136) = 0xEF7373616C436563;
  *(v370 + 144) = v368;
  *(v370 + 152) = v369;
  *(v364 + 40) = sub_1CA94C1E8();
  *(v339 + 280) = v364;
  v372 = v796;
  *(v339 + 304) = v809;
  *(v339 + 312) = v372;
  *(v339 + 320) = 0x7468676952;
  *(v339 + 328) = 0xE500000000000000;
  *(v339 + 344) = v367;
  *(v339 + 352) = @"WFUnitType";
  *(v339 + 384) = v367;
  *(v339 + 360) = 0x6874676E654CLL;
  *(v339 + 368) = 0xE600000000000000;
  v803 = v372;
  v373 = @"WFUnitType";
  v374 = sub_1CA94C1E8();
  v375 = sub_1CA2F864C(v374);
  v830[10] = v375;
  v376 = swift_allocObject();
  *(v376 + 16) = v797;
  v377 = v788;
  v378 = v789;
  v379 = v819;
  *(v376 + 32) = v788;
  *(v376 + 40) = v379;
  *(v376 + 48) = 0x80000001CA9AB710;
  *(v376 + 64) = v367;
  *(v376 + 72) = v378;
  v792 = v377;
  *&v797 = v378;
  v796 = sub_1CA94C438("Text representing the date or date and time when the alert should occur. Examples: “tonight at 7”, “March 7” (WFAlertCustomTime)", 136);
  v381 = v380;
  v382 = sub_1CA94C438("Text representing the date or date and time when the alert should occur. Examples: “tonight at 7”, “March 7”", 116);
  v384 = v383;
  v807 = &v785;
  MEMORY[0x1EEE9AC00](v382);
  v385 = &v785 - v835;
  sub_1CA948D98();
  v386 = v834;
  v387 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v387);
  v388 = &v785 - v832;
  sub_1CA948B68();

  v389 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v390 = sub_1CA2F9F14(v796, v381, v382, v384, 0, 0, v385, v388);
  *(v376 + 104) = v831;
  *(v376 + 80) = v390;
  *(v376 + 112) = sub_1CA94C368();
  *(v376 + 120) = 1;
  v391 = v790;
  v392 = v791;
  *(v376 + 144) = MEMORY[0x1E69E6370];
  *(v376 + 152) = v391;
  *(v376 + 160) = v820;
  *(v376 + 168) = 0x80000001CA9B3BC0;
  *(v376 + 184) = MEMORY[0x1E69E6158];
  *(v376 + 192) = v392;
  v793 = v391;
  v796 = v392;
  v393 = sub_1CA94C438("Time (WFAlertCustomTime)", 24);
  v790 = v394;
  v791 = v393;
  v395 = sub_1CA94C438("Time", 4);
  v789 = v396;
  v807 = &v785;
  MEMORY[0x1EEE9AC00](v395);
  v397 = v835;
  sub_1CA948D98();
  v398 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v398);
  v399 = &v785 - v832;
  sub_1CA948B68();

  v400 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v376 + 200) = sub_1CA2F9F14(v791, v790, v395, v789, 0, 0, &v785 - v397, v399);
  *(v376 + 224) = v831;
  *(v376 + 232) = @"Placeholder";
  v807 = @"Placeholder";
  v401 = sub_1CA94C438("2:00 PM (WFAlertCustomTime)", 27);
  v789 = v402;
  v790 = v401;
  v403 = sub_1CA94C438("2:00 PM", 7);
  v788 = v404;
  v791 = &v785;
  MEMORY[0x1EEE9AC00](v403);
  sub_1CA948D98();
  v405 = v834;
  v406 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v406);
  v407 = v832;
  sub_1CA948B68();

  v408 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v376 + 240) = sub_1CA2F9F14(v790, v789, v403, v788, 0, 0, &v785 - v397, &v785 - v407);
  v409 = v831;
  v410 = v802;
  *(v376 + 264) = v831;
  *(v376 + 272) = v410;
  v411 = sub_1CA94C438("What time should it be? (WFAlertCustomTime)", 43);
  v790 = v412;
  v791 = v411;
  v413 = sub_1CA94C438("What time should it be?", 23);
  v789 = v414;
  v802 = &v785;
  MEMORY[0x1EEE9AC00](v413);
  v415 = &v785 - v835;
  sub_1CA948D98();
  v416 = [v405 bundleURL];
  MEMORY[0x1EEE9AC00](v416);
  sub_1CA948B68();

  v417 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v376 + 280) = sub_1CA2F9F14(v791, v790, v413, v789, 0, 0, v415, &v785 - v407);
  v418 = v801;
  *(v376 + 304) = v409;
  *(v376 + 312) = v418;
  v419 = swift_allocObject();
  *(v419 + 16) = v825;
  v420 = MEMORY[0x1E69E6158];
  *(v419 + 32) = sub_1CA94C1E8();
  *(v419 + 40) = sub_1CA94C1E8();
  *(v376 + 320) = v419;
  *(v376 + 344) = v812;
  *(v376 + 352) = @"ResultType";
  strcpy((v376 + 360), "WFDetectedDate");
  *(v376 + 375) = -18;
  v421 = v803;
  *(v376 + 384) = v420;
  *(v376 + 392) = v421;
  *(v376 + 424) = v420;
  *(v376 + 400) = 0x7468676952;
  *(v376 + 408) = 0xE500000000000000;
  v422 = @"ResultType";
  v423 = sub_1CA94C1E8();
  v424 = sub_1CA2F864C(v423);
  v830[11] = v424;
  v425 = swift_allocObject();
  *(v425 + 16) = xmmword_1CA981370;
  v426 = v792;
  v427 = v814;
  *(v425 + 32) = v792;
  *(v425 + 40) = v427;
  v428 = v804;
  *(v425 + 48) = v805;
  *(v425 + 64) = v420;
  *(v425 + 72) = v428;
  *(v425 + 80) = 1701736270;
  *(v425 + 88) = 0xE400000000000000;
  v429 = v794;
  *(v425 + 104) = v420;
  *(v425 + 112) = v429;
  *&v814 = swift_allocObject();
  *(v814 + 16) = v795;
  v813 = v426;
  v430 = sub_1CA94C438("None (WFPriority)", 17);
  v804 = v431;
  v805 = v430;
  v432 = sub_1CA94C438("None", 4);
  v802 = v433;
  v812 = &v785;
  MEMORY[0x1EEE9AC00](v432);
  v434 = &v785 - v835;
  sub_1CA948D98();
  v435 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v435);
  v436 = v832;
  sub_1CA948B68();

  v437 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v438 = sub_1CA2F9F14(v805, v804, v432, v802, 0, 0, v434, &v785 - v436);
  v439 = v814;
  *(v814 + 32) = v438;
  v440 = sub_1CA94C438("Low (WFPriority)", 16);
  v804 = v441;
  v805 = v440;
  v442 = sub_1CA94C438("Low", 3);
  v802 = v443;
  v812 = &v785;
  MEMORY[0x1EEE9AC00](v442);
  v444 = v835;
  sub_1CA948D98();
  v445 = [v834 bundleURL];
  *&v801 = &v785;
  MEMORY[0x1EEE9AC00](v445);
  sub_1CA948B68();

  v446 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v439 + 40) = sub_1CA2F9F14(v805, v804, v442, v802, 0, 0, &v785 - v444, &v785 - v436);
  v447 = sub_1CA94C438("Medium (WFPriority)", 19);
  v804 = v448;
  v805 = v447;
  v449 = sub_1CA94C438("Medium", 6);
  v802 = v450;
  v812 = &v785;
  MEMORY[0x1EEE9AC00](v449);
  v451 = &v785 - v444;
  sub_1CA948D98();
  v452 = v834;
  v453 = [v834 bundleURL];
  *&v801 = &v785;
  MEMORY[0x1EEE9AC00](v453);
  v454 = v832;
  sub_1CA948B68();

  v455 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v456 = sub_1CA2F9F14(v805, v804, v449, v802, 0, 0, v451, &v785 - v454);
  *(v814 + 48) = v456;
  v457 = sub_1CA94C438("High (WFPriority)", 17);
  v804 = v458;
  v805 = v457;
  v459 = sub_1CA94C438("High", 4);
  v802 = v460;
  v812 = &v785;
  MEMORY[0x1EEE9AC00](v459);
  v461 = &v785 - v835;
  sub_1CA948D98();
  v462 = [v452 bundleURL];
  MEMORY[0x1EEE9AC00](v462);
  sub_1CA948B68();

  v463 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v464 = sub_1CA2F9F14(v805, v804, v459, v802, 0, 0, v461, &v785 - v454);
  v465 = v814;
  *(v814 + 56) = v464;
  *(v425 + 120) = v465;
  v466 = v793;
  *(v425 + 144) = v806;
  *(v425 + 152) = v466;
  *(v425 + 160) = 0x69726F6972504657;
  *(v425 + 168) = 0xEA00000000007974;
  v467 = v796;
  *(v425 + 184) = MEMORY[0x1E69E6158];
  *(v425 + 192) = v467;
  v812 = v466;
  *&v814 = v467;
  v468 = sub_1CA94C438("Priority (WFPriority)", 21);
  v470 = v469;
  v471 = sub_1CA94C438("Priority", 8);
  v473 = v472;
  v806 = &v785;
  MEMORY[0x1EEE9AC00](v471);
  v474 = &v785 - v835;
  sub_1CA948D98();
  v475 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v475);
  v476 = &v785 - v832;
  sub_1CA948B68();

  v477 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v478 = sub_1CA2F9F14(v468, v470, v471, v473, 0, 0, v474, v476);
  *(v425 + 224) = v831;
  *(v425 + 200) = v478;
  v479 = sub_1CA94C1E8();
  v480 = sub_1CA2F864C(v479);
  v830[12] = v480;
  v481 = swift_allocObject();
  *(v481 + 16) = v824;
  v483 = v812;
  v482 = v813;
  v484 = v820;
  *(v481 + 32) = v813;
  *(v481 + 40) = v484;
  *(v481 + 48) = 0x80000001CA99E620;
  v485 = MEMORY[0x1E69E6158];
  *(v481 + 64) = MEMORY[0x1E69E6158];
  *(v481 + 72) = v483;
  *(v481 + 80) = 0x67616C464657;
  *(v481 + 88) = 0xE600000000000000;
  v486 = v814;
  *(v481 + 104) = v485;
  *(v481 + 112) = v486;
  v813 = v482;
  v806 = v483;
  *&v814 = v486;
  v487 = sub_1CA94C438("Flag (WFFlag)", 13);
  v489 = v488;
  v490 = sub_1CA94C438("Flag", 4);
  v492 = v491;
  v812 = &v785;
  MEMORY[0x1EEE9AC00](v490);
  v493 = &v785 - v835;
  sub_1CA948D98();
  v494 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v494);
  v495 = &v785 - v832;
  sub_1CA948B68();

  v496 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v497 = sub_1CA2F9F14(v487, v489, v490, v492, 0, 0, v493, v495);
  *(v481 + 144) = v831;
  *(v481 + 120) = v497;
  v498 = sub_1CA94C1E8();
  v499 = sub_1CA2F864C(v498);
  v830[13] = v499;
  v500 = swift_allocObject();
  *(v500 + 16) = v821;
  v501 = v813;
  *(v500 + 32) = v813;
  strcpy((v500 + 40), "WFURLParameter");
  *(v500 + 55) = -18;
  v502 = v797;
  *(v500 + 64) = MEMORY[0x1E69E6158];
  *(v500 + 72) = v502;
  v813 = v501;
  v812 = v502;
  v804 = sub_1CA94C438("Optionally, a URL to attach to this reminder. (WFURL)", 53);
  v802 = v503;
  v504 = sub_1CA94C438("Optionally, a URL to attach to this reminder.", 45);
  v506 = v505;
  v805 = &v785;
  MEMORY[0x1EEE9AC00](v504);
  v507 = v835;
  sub_1CA948D98();
  v508 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v508);
  v509 = &v785 - v832;
  sub_1CA948B68();

  v510 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v511 = sub_1CA2F9F14(v804, v802, v504, v506, 0, 0, &v785 - v507, v509);
  v512 = v806;
  *(v500 + 80) = v511;
  *(v500 + 104) = v831;
  *(v500 + 112) = v512;
  *(v500 + 120) = 0x4C52554657;
  *(v500 + 128) = 0xE500000000000000;
  v513 = v814;
  *(v500 + 144) = MEMORY[0x1E69E6158];
  *(v500 + 152) = v513;
  v805 = v512;
  v806 = v513;
  v804 = sub_1CA94C438("URL (WFURL)", 11);
  v802 = v514;
  v515 = sub_1CA94C438("URL", 3);
  *&v801 = v516;
  *&v814 = &v785;
  MEMORY[0x1EEE9AC00](v515);
  v517 = &v785 - v507;
  sub_1CA948D98();
  v518 = v834;
  v519 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v519);
  v520 = v832;
  sub_1CA948B68();

  v521 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v500 + 160) = sub_1CA2F9F14(v804, v802, v515, v801, 0, 0, v517, &v785 - v520);
  v522 = v831;
  v523 = v807;
  *(v500 + 184) = v831;
  *(v500 + 192) = v523;
  v804 = sub_1CA94C438("optional (WFURL)", 16);
  v802 = v524;
  v525 = sub_1CA94C438("optional", 8);
  v527 = v526;
  *&v814 = &v785;
  MEMORY[0x1EEE9AC00](v525);
  v528 = &v785 - v835;
  sub_1CA948D98();
  v529 = [v518 bundleURL];
  MEMORY[0x1EEE9AC00](v529);
  sub_1CA948B68();

  v530 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v500 + 200) = sub_1CA2F9F14(v804, v802, v525, v527, 0, 0, v528, &v785 - v520);
  v531 = v803;
  *(v500 + 224) = v522;
  *(v500 + 232) = v531;
  v532 = MEMORY[0x1E69E6158];
  *(v500 + 264) = MEMORY[0x1E69E6158];
  *(v500 + 240) = 0x7468676952;
  *(v500 + 248) = 0xE500000000000000;
  v533 = sub_1CA94C1E8();
  v534 = sub_1CA2F864C(v533);
  v830[14] = v534;
  v535 = swift_allocObject();
  v814 = xmmword_1CA981350;
  *(v535 + 16) = xmmword_1CA981350;
  v803 = 0xD000000000000019;
  v804 = 0x80000001CA99B030;
  v537 = v812;
  v536 = v813;
  *(v535 + 32) = v813;
  *(v535 + 40) = 0xD000000000000019;
  *(v535 + 48) = 0x80000001CA99B030;
  *(v535 + 64) = v532;
  *(v535 + 72) = v537;
  v813 = v536;
  v812 = v537;
  *&v801 = sub_1CA94C438("An optional set of images to attach to this reminder. Use a variable to get the images. (WFImages)", 98);
  *&v797 = v538;
  v539 = sub_1CA94C438("An optional set of images to attach to this reminder. Use a variable to get the images.", 87);
  v796 = v540;
  v802 = &v785;
  MEMORY[0x1EEE9AC00](v539);
  v541 = v835;
  sub_1CA948D98();
  v542 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v542);
  v543 = v832;
  sub_1CA948B68();

  v544 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v535 + 80) = sub_1CA2F9F14(v801, v797, v539, v796, 0, 0, &v785 - v541, &v785 - v543);
  v545 = v831;
  v546 = v805;
  v547 = v806;
  *(v535 + 104) = v831;
  *(v535 + 112) = v546;
  *(v535 + 120) = 0x736567616D494657;
  *(v535 + 128) = 0xE800000000000000;
  *(v535 + 144) = MEMORY[0x1E69E6158];
  *(v535 + 152) = v547;
  v805 = v546;
  v806 = v547;
  *&v801 = sub_1CA94C438("Images (WFImages)", 17);
  *&v797 = v548;
  v549 = sub_1CA94C438("Images", 6);
  v551 = v550;
  v802 = &v785;
  MEMORY[0x1EEE9AC00](v549);
  sub_1CA948D98();
  v552 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v552);
  sub_1CA948B68();

  v553 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v554 = sub_1CA2F9F14(v801, v797, v549, v551, 0, 0, &v785 - v541, &v785 - v543);
  *(v535 + 184) = v545;
  *(v535 + 160) = v554;
  v555 = sub_1CA94C1E8();
  v556 = sub_1CA2F864C(v555);
  v830[15] = v556;
  v557 = swift_allocObject();
  *(v557 + 16) = v814;
  v559 = v812;
  v558 = v813;
  v561 = v803;
  v560 = v804;
  *(v557 + 32) = v813;
  *(v557 + 40) = v561;
  *(v557 + 48) = v560;
  *(v557 + 64) = MEMORY[0x1E69E6158];
  *(v557 + 72) = v559;
  v813 = v558;
  v812 = v559;
  v562 = sub_1CA94C438("Optionally, a parent reminder to add this reminder to. (WFParentTask)", 69);
  v802 = v563;
  v803 = v562;
  v564 = sub_1CA94C438("Optionally, a parent reminder to add this reminder to.", 54);
  *&v801 = v565;
  v804 = &v785;
  MEMORY[0x1EEE9AC00](v564);
  v566 = v835;
  sub_1CA948D98();
  v567 = v834;
  v568 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v568);
  v569 = &v785 - v832;
  sub_1CA948B68();

  v570 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v571 = sub_1CA2F9F14(v803, v802, v564, v801, 0, 0, &v785 - v566, v569);
  v572 = v805;
  *(v557 + 80) = v571;
  v573 = v831;
  *(v557 + 104) = v831;
  *(v557 + 112) = v572;
  strcpy((v557 + 120), "WFParentTask");
  *(v557 + 133) = 0;
  *(v557 + 134) = -5120;
  v574 = v806;
  *(v557 + 144) = MEMORY[0x1E69E6158];
  *(v557 + 152) = v574;
  v805 = v572;
  v806 = v574;
  v575 = sub_1CA94C438("Parent Reminder (WFParentTask)", 30);
  v802 = v576;
  v803 = v575;
  v577 = sub_1CA94C438("Parent Reminder", 15);
  v579 = v578;
  v804 = &v785;
  MEMORY[0x1EEE9AC00](v577);
  sub_1CA948D98();
  v580 = [v567 bundleURL];
  MEMORY[0x1EEE9AC00](v580);
  v581 = &v785 - v832;
  sub_1CA948B68();

  v582 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v583 = sub_1CA2F9F14(v803, v802, v577, v579, 0, 0, &v785 - v566, v581);
  *(v557 + 184) = v573;
  *(v557 + 160) = v583;
  v584 = sub_1CA94C1E8();
  v585 = sub_1CA2F864C(v584);
  v830[16] = v585;
  v586 = swift_allocObject();
  *(v586 + 16) = v814;
  v587 = v818;
  *(v586 + 32) = v813;
  *(v586 + 40) = v587;
  *(v586 + 48) = 0x80000001CA9B3F90;
  v588 = v812;
  *(v586 + 64) = MEMORY[0x1E69E6158];
  *(v586 + 72) = v588;
  v589 = sub_1CA94C438("Optionally, tags to add to this reminder. (WFTags)", 50);
  v803 = v590;
  v804 = v589;
  v591 = sub_1CA94C438("Optionally, tags to add to this reminder.", 41);
  v802 = v592;
  *&v814 = &v785;
  MEMORY[0x1EEE9AC00](v591);
  v593 = &v785 - v835;
  sub_1CA948D98();
  v594 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v594);
  v595 = v832;
  sub_1CA948B68();

  v596 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v586 + 80) = sub_1CA2F9F14(v804, v803, v591, v802, 0, 0, v593, &v785 - v595);
  v597 = v831;
  v598 = v805;
  *(v586 + 104) = v831;
  *(v586 + 112) = v598;
  *(v586 + 120) = 0x736761544657;
  *(v586 + 128) = 0xE600000000000000;
  v599 = v806;
  *(v586 + 144) = MEMORY[0x1E69E6158];
  *(v586 + 152) = v599;
  v600 = sub_1CA94C438("Tags (WFTags)", 13);
  v803 = v601;
  v804 = v600;
  v602 = sub_1CA94C438("Tags", 4);
  v802 = v603;
  *&v814 = &v785;
  MEMORY[0x1EEE9AC00](v602);
  v604 = &v785 - v835;
  sub_1CA948D98();
  v605 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v605);
  sub_1CA948B68();

  v606 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v607 = sub_1CA2F9F14(v804, v803, v602, v802, 0, 0, v604, &v785 - v595);
  *(v586 + 184) = v597;
  *(v586 + 160) = v607;
  v608 = sub_1CA94C1E8();
  v609 = sub_1CA2F864C(v608);
  v830[17] = v609;
  v610 = swift_allocObject();
  *(v610 + 16) = v821;
  v611 = v819;
  *(v610 + 32) = v813;
  *(v610 + 40) = v611;
  *(v610 + 48) = v798;
  v612 = v812;
  *(v610 + 64) = MEMORY[0x1E69E6158];
  *(v610 + 72) = v612;
  *&v821 = sub_1CA94C438("Optionally, a description for this reminder. (WFCalendarItemNotes)", 66);
  v819 = v613;
  v614 = sub_1CA94C438("Optionally, a description for this reminder.", 44);
  v616 = v615;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v614);
  v617 = &v785 - v835;
  sub_1CA948D98();
  v618 = v834;
  v619 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v619);
  v620 = &v785 - v832;
  sub_1CA948B68();

  v621 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v610 + 80) = sub_1CA2F9F14(v821, v819, v614, v616, 0, 0, v617, v620);
  v622 = v831;
  v623 = v805;
  *(v610 + 104) = v831;
  *(v610 + 112) = v623;
  *(v610 + 120) = v818;
  *(v610 + 128) = 0x80000001CA9B40B0;
  v624 = v806;
  *(v610 + 144) = MEMORY[0x1E69E6158];
  *(v610 + 152) = v624;
  *&v821 = sub_1CA94C438("Notes (WFCalendarItemNotes)", 27);
  v819 = v625;
  v626 = sub_1CA94C438("Notes", 5);
  v818 = v627;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v626);
  v628 = v835;
  sub_1CA948D98();
  v629 = [v618 bundleURL];
  *&v814 = &v785;
  MEMORY[0x1EEE9AC00](v629);
  v630 = v832;
  sub_1CA948B68();

  v631 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v610 + 160) = sub_1CA2F9F14(v821, v819, v626, v818, 0, 0, &v785 - v628, &v785 - v630);
  *(v610 + 184) = v622;
  *(v610 + 192) = @"Multiline";
  *(v610 + 200) = 1;
  v632 = v807;
  *(v610 + 224) = MEMORY[0x1E69E6370];
  *(v610 + 232) = v632;
  v633 = @"Multiline";
  *&v821 = sub_1CA94C438("Notes (WFCalendarItemNotes)", 27);
  v819 = v634;
  v635 = sub_1CA94C438("Notes", 5);
  v637 = v636;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v635);
  sub_1CA948D98();
  v638 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v638);
  sub_1CA948B68();

  v639 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v640 = sub_1CA2F9F14(v821, v819, v635, v637, 0, 0, &v785 - v628, &v785 - v630);
  *(v610 + 264) = v831;
  *(v610 + 240) = v640;
  v641 = sub_1CA94C1E8();
  v642 = sub_1CA2F864C(v641);
  v643 = v830;
  v830[18] = v642;
  v644 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v645 = v823;
  v823[40] = v643;
  v645[43] = v644;
  v645[44] = @"ParameterSummary";
  v830 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v831 = swift_allocObject();
  *(v831 + 16) = xmmword_1CA983CF0;
  v829 = "Notes (WFCalendarItemNotes)";
  v646 = @"ParameterSummary";
  v647 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled} ${WFAlertCondition} ${WFAlertCustomTime}", 90);
  v826 = v648;
  v827 = v647;
  v649 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled} ${WFAlertCondition} ${WFAlertCustomTime}", 90);
  v651 = v650;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v649);
  v652 = v835;
  sub_1CA948D98();
  v653 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v653);
  v654 = v832;
  sub_1CA948B68();

  v655 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v656 = sub_1CA2F9F14(v827, v826, v649, v651, 0, 0, &v785 - v652, &v785 - v654);
  v657 = objc_allocWithZone(WFActionParameterSummaryValue);
  v658 = sub_1CA65DD78(0xD000000000000055, v829 | 0x8000000000000000, v656);
  *(v831 + 32) = v658;
  v829 = "tion} ${WFAlertCustomTime}";
  v659 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled} ${WFAlertCondition} at ${WFAlertLocation}", 91);
  v826 = v660;
  v827 = v659;
  v661 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled} ${WFAlertCondition} at ${WFAlertLocation}", 91);
  v663 = v662;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v661);
  v664 = &v785 - v652;
  sub_1CA948D98();
  v665 = v834;
  v666 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v666);
  sub_1CA948B68();

  v667 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v668 = sub_1CA2F9F14(v827, v826, v661, v663, 0, 0, v664, &v785 - v654);
  v669 = objc_allocWithZone(WFActionParameterSummaryValue);
  v670 = sub_1CA65DD78(0xD000000000000059, v829 | 0x8000000000000000, v668);
  *(v831 + 40) = v670;
  v829 = "tion} at ${WFAlertLocation}";
  v671 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled} ${WFAlertCondition} from ${WFAlertLocation}", 93);
  v827 = v672;
  v673 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled} ${WFAlertCondition} from ${WFAlertLocation}", 93);
  v675 = v674;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v673);
  v676 = &v785 - v835;
  sub_1CA948D98();
  v677 = [v665 bundleURL];
  MEMORY[0x1EEE9AC00](v677);
  v678 = &v785 - v832;
  sub_1CA948B68();

  v679 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v680 = sub_1CA2F9F14(v671, v827, v673, v675, 0, 0, v676, v678);
  v681 = objc_allocWithZone(WFActionParameterSummaryValue);
  v682 = sub_1CA65DD78(0xD000000000000058, v829 | 0x8000000000000000, v680);
  v683 = v831;
  *(v831 + 48) = v682;
  v829 = "tion} from ${WFAlertLocation}";
  v684 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled} ${WFAlertCondition} ${WFAlertPerson}", 86);
  v826 = v685;
  v827 = v684;
  v686 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled} ${WFAlertCondition} ${WFAlertPerson}", 86);
  v688 = v687;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v686);
  v689 = &v785 - v835;
  sub_1CA948D98();
  v690 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v690);
  v691 = v832;
  sub_1CA948B68();

  v692 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v693 = sub_1CA2F9F14(v827, v826, v686, v688, 0, 0, v689, &v785 - v691);
  v694 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v683 + 56) = sub_1CA65DD78(0xD000000000000058, v829 | 0x8000000000000000, v693);
  v829 = "tion} ${WFAlertPerson}";
  v695 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled}", 49);
  v826 = v696;
  v827 = v695;
  v697 = sub_1CA94C438("Add ${WFCalendarItemTitle} with ${WFAlertEnabled}", 49);
  v699 = v698;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v697);
  v700 = &v785 - v835;
  sub_1CA948D98();
  v701 = v834;
  v702 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v702);
  sub_1CA948B68();

  v703 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v704 = sub_1CA2F9F14(v827, v826, v697, v699, 0, 0, v700, &v785 - v691);
  v705 = objc_allocWithZone(WFActionParameterSummaryValue);
  v706 = sub_1CA65DD78(0xD00000000000002CLL, v829 | 0x8000000000000000, v704);
  v707 = v831;
  *(v831 + 64) = v706;
  v829 = "${WFAlertEnabled}";
  v708 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled} ${WFAlertCondition} ${WFAlertCustomTime}", 117);
  v826 = v709;
  v827 = v708;
  v710 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled} ${WFAlertCondition} ${WFAlertCustomTime}", 117);
  v712 = v711;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v710);
  v713 = &v785 - v835;
  sub_1CA948D98();
  v714 = [v701 bundleURL];
  MEMORY[0x1EEE9AC00](v714);
  v715 = &v785 - v832;
  sub_1CA948B68();

  v716 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v717 = sub_1CA2F9F14(v827, v826, v710, v712, 0, 0, v713, v715);
  v718 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v707 + 72) = sub_1CA65DD78(0xD00000000000006ALL, v829 | 0x8000000000000000, v717);
  v829 = " ${WFAlertCustomTime}";
  v719 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled} ${WFAlertCondition} at ${WFAlertLocation}", 118);
  v826 = v720;
  v827 = v719;
  v721 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled} ${WFAlertCondition} at ${WFAlertLocation}", 118);
  v723 = v722;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v721);
  v724 = v835;
  sub_1CA948D98();
  v725 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v725);
  v726 = &v785 - v832;
  sub_1CA948B68();

  v727 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v728 = sub_1CA2F9F14(v827, v826, v721, v723, 0, 0, &v785 - v724, v726);
  v729 = objc_allocWithZone(WFActionParameterSummaryValue);
  v730 = sub_1CA65DD78(0xD00000000000006ELL, v829 | 0x8000000000000000, v728);
  *(v831 + 80) = v730;
  v829 = " at ${WFAlertLocation}";
  v731 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled} ${WFAlertCondition} from ${WFAlertLocation}", 120);
  v826 = v732;
  v827 = v731;
  v733 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled} ${WFAlertCondition} from ${WFAlertLocation}", 120);
  v735 = v734;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v733);
  v736 = &v785 - v724;
  sub_1CA948D98();
  v737 = v834;
  v738 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v738);
  v739 = v832;
  sub_1CA948B68();

  v740 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v741 = sub_1CA2F9F14(v827, v826, v733, v735, 0, 0, v736, &v785 - v739);
  v742 = objc_allocWithZone(WFActionParameterSummaryValue);
  v743 = sub_1CA65DD78(0xD00000000000006DLL, v829 | 0x8000000000000000, v741);
  *(v831 + 88) = v743;
  v829 = " from ${WFAlertLocation}";
  v744 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled} ${WFAlertCondition} ${WFAlertPerson}", 113);
  v826 = v745;
  v827 = v744;
  v746 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled} ${WFAlertCondition} ${WFAlertPerson}", 113);
  v748 = v747;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v746);
  v749 = &v785 - v835;
  sub_1CA948D98();
  v750 = [v737 bundleURL];
  MEMORY[0x1EEE9AC00](v750);
  sub_1CA948B68();

  v751 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v752 = sub_1CA2F9F14(v827, v826, v746, v748, 0, 0, v749, &v785 - v739);
  v753 = objc_allocWithZone(WFActionParameterSummaryValue);
  v754 = sub_1CA65DD78(0xD00000000000006DLL, v829 | 0x8000000000000000, v752);
  v755 = v831;
  *(v831 + 96) = v754;
  v829 = " ${WFAlertPerson}";
  v756 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled}", 76);
  v758 = v757;
  v759 = sub_1CA94C438("Add ${WFCalendarItemTitle} to ${WFCalendarDescriptor} with ${WFAlertEnabled}", 76);
  v761 = v760;
  v828 = &v785;
  MEMORY[0x1EEE9AC00](v759);
  v762 = &v785 - v835;
  sub_1CA948D98();
  v763 = [v834 bundleURL];
  MEMORY[0x1EEE9AC00](v763);
  v764 = &v785 - v832;
  sub_1CA948B68();

  v765 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v766 = sub_1CA2F9F14(v756, v758, v759, v761, 0, 0, v762, v764);
  v767 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v755 + 104) = sub_1CA65DD78(0xD000000000000041, v829 | 0x8000000000000000, v766);
  v768 = v830;
  v769 = sub_1CA65AF90(v755);
  v770 = v823;
  v823[45] = v769;
  v770[48] = v768;
  v770[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v771 = swift_allocObject();
  *(v771 + 16) = v825;
  v772 = MEMORY[0x1E69E6158];
  *(v771 + 56) = MEMORY[0x1E69E6158];
  v836 = 0xD000000000000018;
  *(v771 + 32) = 0xD000000000000018;
  *(v771 + 40) = 0x80000001CA993D70;
  v773 = swift_allocObject();
  *(v773 + 16) = v825;
  *(v773 + 32) = v820;
  *(v773 + 40) = 0x80000001CA99B240;
  v774 = swift_allocObject();
  *(v774 + 16) = v811;
  v775 = swift_allocObject();
  *(v775 + 16) = v824;
  strcpy((v775 + 32), "WFParameterKey");
  *(v775 + 47) = -18;
  *(v775 + 48) = 0x4C7472656C414657;
  *(v775 + 56) = 0xEF6E6F697461636FLL;
  *(v775 + 72) = v772;
  *(v775 + 80) = 0xD000000000000010;
  *(v775 + 88) = v817;
  v776 = @"RequiredResources";
  v777 = sub_1CA94C1E8();
  v778 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v775 + 96) = v777;
  *(v775 + 120) = v778;
  *(v775 + 128) = 0x72756F7365524657;
  *(v775 + 168) = v772;
  v779 = v808;
  *(v775 + 136) = 0xEF7373616C436563;
  *(v775 + 144) = v779;
  *(v775 + 152) = v816;
  *(v774 + 32) = sub_1CA94C1E8();
  *(v773 + 48) = v774;
  *(v773 + 72) = v809;
  *(v773 + 80) = 0x72756F7365524657;
  *(v773 + 120) = v772;
  v780 = v836;
  *(v773 + 88) = 0xEF7373616C436563;
  *(v773 + 96) = v780;
  *(v773 + 104) = 0x80000001CA994040;
  v781 = sub_1CA94C1E8();
  *(v771 + 88) = v799;
  *(v771 + 64) = v781;
  v782 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v783 = v823;
  v823[53] = v782;
  v783[50] = v771;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}