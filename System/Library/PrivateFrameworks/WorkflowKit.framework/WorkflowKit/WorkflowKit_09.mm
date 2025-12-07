uint64_t sub_1CA34FBC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CA34FC40()
{
  v165 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A81F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("speech|detection|dictation|speak|say|voice|recognize|microphone|transcribe|transcription|siri", 93);
  v6 = v5;
  v7 = sub_1CA94C438("speech|detection|dictation|speak|say|voice|recognize|microphone|transcribe|transcription|siri", 93);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v173 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v174 = v11;
  v12 = &v154 - v173;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v171 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v170 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v172 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v154 - v172;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v169 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v168 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Transcribes what you say aloud into text and passes the result to the next action.", 82);
  v166 = v24;
  v25 = sub_1CA94C438("Transcribes what you say aloud into text and passes the result to the next action.", 82);
  v27 = v26;
  v167 = &v154;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v154 - v173;
  sub_1CA948D98();
  v29 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v154 - v172;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v166, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v169;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v168;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1851881795;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6C6C69662E63696DLL;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"Name";
  v39 = sub_1CA94C438("Dictate Text (Action Name)", 26);
  v41 = v40;
  v42 = sub_1CA94C438("Dictate Text", 12);
  v44 = v43;
  v168 = &v154;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v154 - v173;
  sub_1CA948D98();
  v46 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v154 - v172;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  *(inited + 264) = v169;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x63696C627550;
  *(v49 + 56) = 0xE600000000000000;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 96) = 0;
  *(v49 + 120) = v50;
  *(v49 + 128) = 0x614E74757074754FLL;
  *(v49 + 136) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438("Dictated Text (Default Output Name)", 35);
  v167 = v53;
  v54 = sub_1CA94C438("Dictated Text", 13);
  v56 = v55;
  v168 = &v154;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v154 - v173;
  sub_1CA948D98();
  v58 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v154 - v172;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v52, v167, v54, v56, 0, 0, v57, v59);
  v62 = v169;
  *(v49 + 144) = v61;
  *(v49 + 168) = v62;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v164;
  *(v49 + 192) = &unk_1F49F5C28;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v64;
  *(inited + 304) = v65;
  *(inited + 312) = @"Parameters";
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v168 = swift_allocObject();
  *(v168 + 1) = xmmword_1CA981360;
  v167 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_1CA9813C0;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000024;
  *(v66 + 48) = 0x80000001CA9A8340;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0xD000000000000010;
  *(v66 + 88) = 0x80000001CA9A8370;
  *(v66 + 104) = v63;
  *(v66 + 112) = @"Label";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v158 = v67;
  v162 = v68;
  v163 = v69;
  v70 = @"Parameters";
  v71 = sub_1CA94C438("Language (WFSpeechLanguage)", 27);
  v160 = v72;
  v73 = sub_1CA94C438("Language", 8);
  v75 = v74;
  v161 = &v154;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v154 - v173;
  sub_1CA948D98();
  v77 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v154 - v172;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v71, v160, v73, v75, 0, 0, v76, v78);
  *(v66 + 144) = v169;
  *(v66 + 120) = v80;
  _s3__C3KeyVMa_0(0);
  v161 = v81;
  v160 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v82 = sub_1CA94C1E8();
  v83 = sub_1CA2F864C(v82);
  v168[4] = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1CA981370;
  *(v84 + 32) = v158;
  *(v84 + 40) = 0xD000000000000016;
  *(v84 + 48) = 0x80000001CA99C4A0;
  v85 = MEMORY[0x1E69E6158];
  *(v84 + 64) = MEMORY[0x1E69E6158];
  *(v84 + 72) = @"DefaultValue";
  *(v84 + 80) = 0x6150207265746641;
  *(v84 + 88) = 0xEB00000000657375;
  *(v84 + 104) = v85;
  *(v84 + 112) = @"Items";
  v166 = swift_allocObject();
  *(v166 + 1) = xmmword_1CA981470;
  v86 = @"DefaultValue";
  v87 = @"Items";
  v88 = sub_1CA94C438("After Pause (WFDictateTextStopListening)", 40);
  v157 = v89;
  v158 = v88;
  v90 = sub_1CA94C438("After Pause", 11);
  v156 = v91;
  v159 = &v154;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v154 - v173;
  sub_1CA948D98();
  v93 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v154 - v172;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v158, v157, v90, v156, 0, 0, v92, v94);
  v97 = v166;
  v166[4] = v96;
  v98 = sub_1CA94C438("After Short Pause (WFDictateTextStopListening)", 46);
  v156 = v99;
  v157 = v98;
  v100 = sub_1CA94C438("After Short Pause", 17);
  v155 = v101;
  v158 = &v154;
  MEMORY[0x1EEE9AC00](v100);
  v159 = inited;
  v102 = v173;
  sub_1CA948D98();
  v103 = v171;
  v104 = [v171 bundleURL];
  v154 = &v154;
  MEMORY[0x1EEE9AC00](v104);
  v105 = v172;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 40) = sub_1CA2F9F14(v157, v156, v100, v155, 0, 0, &v154 - v102, &v154 - v105);
  v107 = sub_1CA94C438("On Tap (WFDictateTextStopListening)", 35);
  v156 = v108;
  v157 = v107;
  v109 = sub_1CA94C438("On Tap", 6);
  v155 = v110;
  v158 = &v154;
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948D98();
  v111 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v157, v156, v109, v155, 0, 0, &v154 - v102, &v154 - v105);
  v114 = v166;
  v166[6] = v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v84 + 120) = v114;
  v116 = v162;
  *(v84 + 144) = v115;
  *(v84 + 152) = v116;
  *(v84 + 160) = 0xD00000000000001ALL;
  *(v84 + 168) = 0x80000001CA9A8480;
  v117 = v163;
  *(v84 + 184) = MEMORY[0x1E69E6158];
  *(v84 + 192) = v117;
  v118 = sub_1CA94C438("Stop Listening (WFDictateTextStopListening)", 43);
  v163 = v119;
  v120 = sub_1CA94C438("Stop Listening", 14);
  v122 = v121;
  v166 = &v154;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v154 - v173;
  sub_1CA948D98();
  v124 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v154 - v172;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v118, v163, v120, v122, 0, 0, v123, v125);
  *(v84 + 224) = v169;
  *(v84 + 200) = v127;
  v128 = sub_1CA94C1E8();
  v129 = sub_1CA2F864C(v128);
  v130 = v168;
  v168[5] = v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v132 = v159;
  v159[40] = v130;
  v132[43] = v131;
  v132[44] = @"ParameterSummary";
  v133 = @"ParameterSummary";
  v134 = sub_1CA94C438("Dictate text (Parameter Summary)", 32);
  v136 = v135;
  v137 = sub_1CA94C438("Dictate text", 12);
  v139 = v138;
  v169 = &v154;
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v154 - v173;
  sub_1CA948D98();
  v141 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v154 - v172;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v134, v136, v137, v139, 0, 0, v140, v142);
  v145 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v146 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v132[45] = v145;
  v132[48] = v146;
  v132[49] = @"RequiredResources";
  v132[50] = &unk_1F49F5C58;
  v147 = v164;
  v132[53] = v164;
  v132[54] = @"UserInterfaceClasses";
  v148 = @"RequiredResources";
  v149 = @"UserInterfaceClasses";
  v150 = sub_1CA94C1E8();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v132[55] = v150;
  v132[58] = v151;
  v132[59] = @"UserInterfaces";
  v132[63] = v147;
  v132[60] = &unk_1F49F5D38;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v152 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA350F28(void *a1)
{
  sub_1CA948A48();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
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
    sub_1CA30F7DC(v10, &qword_1EC447940, &unk_1CA983D00);
    return 0;
  }

  (*(v4 + 32))(v7, v10, v1);
  v14 = sub_1CA948A18();
  v15 = [objc_allocWithZone(WFPersonNameComponentsParameterState) initWithValue_];

  (*(v4 + 8))(v7, v1);
  return v15;
}

id sub_1CA351178(uint64_t a1)
{
  sub_1CA948A48();
  OUTLINED_FUNCTION_5_4();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
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
    sub_1CA30F7DC(v11, &qword_1EC447940, &unk_1CA983D00);
    return 0;
  }

  (*(v4 + 32))(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v1);
  v14 = sub_1CA94CC88();
  MEMORY[0x1EEE9AC00](v14);
  v15 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v15, v8, v1);
  v16 = MEMORY[0x1CCAA1AB0](v15);
  v22 = v14;
  v21[0] = v16;
  sub_1CA25B3D0(0, &qword_1EC444698, 0x1E69AC750);
  v17 = sub_1CA94CDB8();
  v18 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v19 = sub_1CA320AB4(v21, v17);
  (*(v4 + 8))(v8, v1);
  return v19;
}

id sub_1CA351484(uint64_t a1)
{
  sub_1CA948A48();
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
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v27 - v16;
  OUTLINED_FUNCTION_1_17(v27 - v16);
  sub_1CA3518D8();
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
  v23 = MEMORY[0x1CCAA1AB0](v22);
  v27[3] = v21;
  v27[0] = v23;
  sub_1CA25B3D0(0, &qword_1EC444698, 0x1E69AC750);
  v24 = sub_1CA94CDB8();
  v25 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v26 = sub_1CA320AB4(v27, v24);
  (*(v4 + 8))(v9, v1);
  return v26;
}

id WFLinkActionPersonNameComponentsParameterDefinition.__allocating_init(valueType:parameterMetadata:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithValueType:a1 parameterMetadata:a2];

  return v5;
}

id WFLinkActionPersonNameComponentsParameterDefinition.init(valueType:parameterMetadata:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFLinkActionPersonNameComponentsParameterDefinition();
  v5 = objc_msgSendSuper2(&v7, sel_initWithValueType_parameterMetadata_, a1, a2);

  return v5;
}

id WFLinkActionPersonNameComponentsParameterDefinition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFLinkActionPersonNameComponentsParameterDefinition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CA3518D8()
{
  result = qword_1EC4446D8[0];
  if (!qword_1EC4446D8[0])
  {
    sub_1CA948A48();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4446D8);
  }

  return result;
}

id sub_1CA35197C()
{
  v0 = sub_1CA949D18();
  v223 = *(v0 - 8);
  v224 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v222 = &v211 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9A8570;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438("jpeg|jpg|png|bmp|tiff|strip|remove|preserve|metadata|photos", 59);
  v8 = v7;
  v9 = sub_1CA94C438("jpeg|jpg|png|bmp|tiff|strip|remove|preserve|metadata|photos", 59);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v241 = v13;
  v243 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v211 - v243;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v242 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v244 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v240 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v211 - v240;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v239 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v237 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  v234 = xmmword_1CA981310;
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438("Converts the images passed into the action to the specified image format.", 73);
  v27 = v26;
  v28 = sub_1CA94C438("Converts the images passed into the action to the specified image format.", 73);
  v30 = v29;
  v236 = &v211;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v211 - v243;
  sub_1CA948D98();
  v32 = [v242 bundleURL];
  v238 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v211 - v240;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v25, v27, v28, v30, 0, 0, v31, v34);
  *(v22 + 64) = v239;
  *(v22 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v237;
  v39 = sub_1CA6B3784(v37);
  v40 = v238;
  v238[15] = v39;
  v40[18] = v38;
  v40[19] = @"IconColor";
  v40[20] = 1702194242;
  v40[21] = 0xE400000000000000;
  v41 = MEMORY[0x1E69E6158];
  v40[23] = MEMORY[0x1E69E6158];
  v40[24] = @"IconSymbol";
  v40[25] = 0x69662E6F746F6870;
  v40[26] = 0xEA00000000006C6CLL;
  v40[28] = v41;
  v40[29] = @"Input";
  v42 = v40;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v43 = swift_initStackObject();
  v232 = xmmword_1CA981350;
  *(v43 + 16) = xmmword_1CA981350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  v44 = MEMORY[0x1E69E6370];
  *(v43 + 48) = 1;
  *(v43 + 72) = v44;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  *(v43 + 96) = 0x7475706E494657;
  *(v43 + 104) = 0xE700000000000000;
  *(v43 + 120) = v41;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v44;
  *(v43 + 176) = 0x7365707954;
  v45 = v44;
  *(v43 + 184) = 0xE500000000000000;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v43 + 216) = v237;
  *(v43 + 192) = &unk_1F49F5D88;
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"Input";
  v49 = sub_1CA94C1E8();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v236 = v50;
  v42[30] = v49;
  v42[33] = v50;
  v42[34] = @"InputPassthrough";
  *(v42 + 280) = 0;
  v42[38] = v45;
  v42[39] = @"Name";
  v51 = @"InputPassthrough";
  v52 = @"Name";
  v53 = sub_1CA94C438("Convert Image (Action Name)", 27);
  v55 = v54;
  v56 = sub_1CA94C438("Convert Image", 13);
  v58 = v57;
  v235 = &v211;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v211 - v243;
  sub_1CA948D98();
  v60 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v211 - v240;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v53, v55, v56, v58, 0, 0, v59, v61);
  v64 = v238;
  v65 = v239;
  v238[40] = v63;
  v64[43] = v65;
  v64[44] = @"Output";
  v66 = swift_allocObject();
  *(v66 + 16) = v232;
  *(v66 + 32) = 0x75736F6C63736944;
  *(v66 + 40) = 0xEF6C6576654C6572;
  *(v66 + 48) = 0x63696C627550;
  *(v66 + 56) = 0xE600000000000000;
  *(v66 + 72) = MEMORY[0x1E69E6158];
  *(v66 + 80) = 0x656C7069746C754DLL;
  *(v66 + 88) = 0xE800000000000000;
  *(v66 + 96) = 0;
  *(v66 + 120) = MEMORY[0x1E69E6370];
  *(v66 + 128) = 0x614E74757074754FLL;
  *(v66 + 136) = 0xEA0000000000656DLL;
  v67 = @"Output";
  v68 = sub_1CA94C438("Converted Image (Default Output Name)", 37);
  v231 = v69;
  v70 = sub_1CA94C438("Converted Image", 15);
  v72 = v71;
  v235 = &v211;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v211 - v243;
  sub_1CA948D98();
  v74 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v211 - v240;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 144) = sub_1CA2F9F14(v68, v231, v70, v72, 0, 0, v73, v75);
  *(v66 + 168) = v65;
  *(v66 + 176) = 0x7365707954;
  *(v66 + 216) = v237;
  *(v66 + 184) = 0xE500000000000000;
  *(v66 + 192) = &unk_1F49F5DB8;
  v77 = MEMORY[0x1E69E6158];
  v78 = sub_1CA94C1E8();
  v79 = v238;
  v238[45] = v78;
  v79[48] = v236;
  v79[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v236 = swift_allocObject();
  *(v236 + 1) = xmmword_1CA981570;
  v235 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v80 = swift_initStackObject();
  *(v80 + 16) = v232;
  *(v80 + 32) = @"Class";
  *(v80 + 40) = 0xD000000000000023;
  *(v80 + 48) = 0x80000001CA9A8690;
  *(v80 + 64) = v77;
  *(v80 + 72) = @"DefaultValue";
  *(v80 + 80) = 1195724874;
  *(v80 + 88) = 0xE400000000000000;
  *(v80 + 104) = v77;
  *(v80 + 112) = @"Key";
  strcpy((v80 + 120), "WFImageFormat");
  *(v80 + 134) = -4864;
  *(v80 + 144) = v77;
  *(v80 + 152) = @"Label";
  v81 = @"Class";
  v82 = @"DefaultValue";
  v83 = @"Key";
  v84 = @"Label";
  v85 = v81;
  v86 = v82;
  v87 = v83;
  v88 = v84;
  v229 = v85;
  v228 = v86;
  v227 = v87;
  v226 = v88;
  v89 = @"Parameters";
  v90 = sub_1CA94C438("Format (WFImageFormat)", 22);
  v92 = v91;
  v93 = sub_1CA94C438("Format", 6);
  v95 = v94;
  *&v232 = &v211;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v211 - v243;
  sub_1CA948D98();
  v97 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v211 - v240;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v90, v92, v93, v95, 0, 0, v96, v98);
  *(v80 + 184) = v239;
  *(v80 + 160) = v100;
  _s3__C3KeyVMa_0(0);
  *&v232 = v101;
  v231 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  v236[4] = v103;
  v104 = swift_allocObject();
  v220 = xmmword_1CA981380;
  *(v104 + 16) = xmmword_1CA981380;
  v105 = v229;
  *(v104 + 32) = v229;
  *(v104 + 40) = 0xD000000000000011;
  *(v104 + 48) = 0x80000001CA9A0B80;
  v106 = v228;
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = v106;
  v107 = MEMORY[0x1E69E63B0];
  *(v104 + 80) = 0x3FE8000000000000;
  *(v104 + 104) = v107;
  *(v104 + 112) = @"Description";
  v108 = @"Description";
  v229 = v105;
  v219 = v108;
  v218 = sub_1CA94C438("Allows you to choose the image quality used when compressing the image file. Higher quality images will look better, but result in larger files. (WFImageCompressionQuality)", 172);
  *&v217 = v109;
  v110 = sub_1CA94C438("Allows you to choose the image quality used when compressing the image file. Higher quality images will look better, but result in larger files.", 144);
  v216 = v111;
  v221 = &v211;
  MEMORY[0x1EEE9AC00](v110);
  v112 = v243;
  sub_1CA948D98();
  v113 = v242;
  v114 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = v240;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v104 + 120) = sub_1CA2F9F14(v218, v217, v110, v216, 0, 0, &v211 - v112, &v211 - v115);
  v118 = v226;
  v117 = v227;
  *(v104 + 144) = v239;
  *(v104 + 152) = v117;
  v221 = 0xD000000000000019;
  *(v104 + 160) = 0xD000000000000019;
  *(v104 + 168) = 0x80000001CA9A8830;
  *(v104 + 184) = MEMORY[0x1E69E6158];
  *(v104 + 192) = v118;
  v227 = v117;
  v226 = v118;
  v119 = sub_1CA94C438("Quality (WFImageCompressionQuality)", 35);
  v216 = v120;
  *&v217 = v119;
  v121 = sub_1CA94C438("Quality", 7);
  v215 = v122;
  v218 = &v211;
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948D98();
  v123 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v104 + 200) = sub_1CA2F9F14(v217, v216, v121, v215, 0, 0, &v211 - v112, &v211 - v115);
  *(v104 + 224) = v239;
  *(v104 + 232) = @"RequiredResources";
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v125 = swift_allocObject();
  *(v125 + 16) = v234;
  v126 = swift_allocObject();
  v217 = xmmword_1CA9813C0;
  *(v126 + 16) = xmmword_1CA9813C0;
  strcpy((v126 + 32), "WFParameterKey");
  *(v126 + 47) = -18;
  strcpy((v126 + 48), "WFImageFormat");
  *(v126 + 62) = -4864;
  v216 = 0x80000001CA9A2F30;
  v127 = MEMORY[0x1E69E6158];
  *(v126 + 72) = MEMORY[0x1E69E6158];
  *(v126 + 80) = 0xD000000000000011;
  *(v126 + 88) = 0x80000001CA9A2F30;
  *(v126 + 96) = &unk_1F49F5DE8;
  *(v126 + 120) = v237;
  *(v126 + 128) = 0x72756F7365524657;
  *(v126 + 168) = v127;
  v214 = 0xD00000000000001BLL;
  v215 = 0x80000001CA993590;
  *(v126 + 136) = 0xEF7373616C436563;
  *(v126 + 144) = 0xD00000000000001BLL;
  *(v126 + 152) = 0x80000001CA993590;
  v212 = @"RequiredResources";
  *(v125 + 32) = sub_1CA94C1E8();
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v104 + 264) = v213;
  *(v104 + 240) = v125;
  v128 = sub_1CA94C1E8();
  v129 = sub_1CA2F864C(v128);
  v236[5] = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = v220;
  *(v130 + 32) = v229;
  *(v130 + 40) = 0xD000000000000011;
  *(v130 + 48) = 0x80000001CA99E620;
  v131 = v228;
  *(v130 + 64) = v127;
  *(v130 + 72) = v131;
  *(v130 + 80) = 1;
  v132 = v219;
  *(v130 + 104) = MEMORY[0x1E69E6370];
  *(v130 + 112) = v132;
  v133 = sub_1CA94C438("When Preserve Metadata is turned off, all metadata, such as the GPS coordinates where the photo was taken, will be stripped from the image file. (WFImagePreserveMetadata)", 170);
  v219 = v134;
  *&v220 = v133;
  v211 = sub_1CA94C438("When Preserve Metadata is turned off, all metadata, such as the GPS coordinates where the photo was taken, will be stripped from the image file.", 144);
  v136 = v135;
  v228 = &v211;
  MEMORY[0x1EEE9AC00](v211);
  v137 = &v211 - v243;
  sub_1CA948D98();
  v138 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = v240;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v130 + 120) = sub_1CA2F9F14(v220, v219, v211, v136, 0, 0, v137, &v211 - v139);
  v141 = v239;
  v142 = v227;
  *(v130 + 144) = v239;
  *(v130 + 152) = v142;
  *(v130 + 160) = 0xD000000000000017;
  *(v130 + 168) = 0x80000001CA9A89D0;
  v143 = v226;
  *(v130 + 184) = MEMORY[0x1E69E6158];
  *(v130 + 192) = v143;
  v144 = sub_1CA94C438("Preserve Metadata (WFImagePreserveMetadata)", 43);
  v219 = v145;
  *&v220 = v144;
  v146 = sub_1CA94C438("Preserve Metadata", 17);
  v148 = v147;
  v228 = &v211;
  MEMORY[0x1EEE9AC00](v146);
  v149 = &v211 - v243;
  sub_1CA948D98();
  v150 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v130 + 200) = sub_1CA2F9F14(v220, v219, v146, v148, 0, 0, v149, &v211 - v139);
  v152 = v212;
  *(v130 + 224) = v141;
  *(v130 + 232) = v152;
  v153 = swift_allocObject();
  *(v153 + 16) = v234;
  v154 = swift_allocObject();
  *(v154 + 16) = v217;
  strcpy((v154 + 32), "WFParameterKey");
  *(v154 + 47) = -18;
  strcpy((v154 + 48), "WFImageFormat");
  *(v154 + 62) = -4864;
  v155 = MEMORY[0x1E69E6158];
  *(v154 + 72) = MEMORY[0x1E69E6158];
  *(v154 + 80) = 0xD000000000000011;
  *(v154 + 88) = v216;
  *(v154 + 96) = &unk_1F49F5E18;
  *(v154 + 120) = v237;
  *(v154 + 128) = 0x72756F7365524657;
  *(v154 + 168) = v155;
  *(v154 + 136) = 0xEF7373616C436563;
  v156 = v215;
  *(v154 + 144) = v214;
  *(v154 + 152) = v156;
  v157 = v155;
  *(v153 + 32) = sub_1CA94C1E8();
  *(v130 + 264) = v213;
  *(v130 + 240) = v153;
  v158 = sub_1CA94C1E8();
  v159 = sub_1CA2F864C(v158);
  v236[6] = v159;
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_1CA981370;
  v161 = v221;
  *(v160 + 32) = v229;
  *(v160 + 40) = v161;
  *(v160 + 48) = 0x80000001CA99B030;
  v162 = v227;
  *(v160 + 64) = v157;
  *(v160 + 72) = v162;
  *(v160 + 80) = 0x7475706E494657;
  *(v160 + 88) = 0xE700000000000000;
  v163 = v226;
  *(v160 + 104) = v157;
  *(v160 + 112) = v163;
  v164 = sub_1CA94C438("Image (WFInput)", 15);
  v229 = v165;
  v230 = v164;
  v166 = sub_1CA94C438("Image", 5);
  v228 = v167;
  v233 = &v211;
  MEMORY[0x1EEE9AC00](v166);
  v168 = v243;
  sub_1CA948D98();
  v169 = v242;
  v170 = [v242 bundleURL];
  v227 = &v211;
  MEMORY[0x1EEE9AC00](v170);
  v171 = v240;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v160 + 120) = sub_1CA2F9F14(v230, v229, v166, v228, 0, 0, &v211 - v168, &v211 - v171);
  v173 = v239;
  *(v160 + 144) = v239;
  *(v160 + 152) = @"Placeholder";
  v174 = @"Placeholder";
  v175 = sub_1CA94C438("Image (WFInput)", 15);
  v229 = v176;
  v230 = v175;
  v177 = sub_1CA94C438("Image", 5);
  v179 = v178;
  v233 = &v211;
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v211 - v168;
  sub_1CA948D98();
  v181 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v160 + 160) = sub_1CA2F9F14(v230, v229, v177, v179, 0, 0, v180, &v211 - v171);
  *(v160 + 184) = v173;
  *(v160 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v183 = swift_allocObject();
  *(v183 + 16) = v234;
  v184 = @"PreferredTypes";
  v185 = v222;
  sub_1CA949CB8();
  v186 = sub_1CA949C68();
  v188 = v187;
  (*(v223 + 8))(v185, v224);
  *(v183 + 32) = v186;
  *(v183 + 40) = v188;
  *(v160 + 224) = v237;
  *(v160 + 200) = v183;
  v189 = sub_1CA94C1E8();
  v190 = sub_1CA2F864C(v189);
  v191 = v236;
  v236[7] = v190;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v193 = v238;
  v238[50] = v191;
  v193[53] = v192;
  v193[54] = @"ParameterSummary";
  v194 = @"ParameterSummary";
  v195 = sub_1CA94C438("Convert ${WFInput} to ${WFImageFormat} (Parameter Summary)", 58);
  v197 = v196;
  v198 = sub_1CA94C438("Convert ${WFInput} to ${WFImageFormat}", 38);
  v200 = v199;
  MEMORY[0x1EEE9AC00](v198);
  v201 = &v211 - v243;
  sub_1CA948D98();
  v202 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v211 - v240;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v205 = sub_1CA2F9F14(v195, v197, v198, v200, 0, 0, v201, v203);
  v206 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v207 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v208 = v238;
  v238[55] = v206;
  v208[58] = v207;
  v208[59] = @"ResidentCompatible";
  v208[63] = MEMORY[0x1E69E6370];
  *(v208 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v209 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA35340C()
{
  v948 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v931 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  v923 = 0xD000000000000011;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = MEMORY[0x1E69E6158];
  v2 = sub_1CA94C1E8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v2;
  v913 = v3;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000010;
  v941 = 0xD000000000000010;
  *(inited + 88) = 0x80000001CA9A8AF0;
  *(inited + 96) = 0x3936373333353039;
  *(inited + 104) = 0xE900000000000031;
  *(inited + 120) = v1;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v4 = sub_1CA94C438("Drafts (App Name)", 17);
  v6 = v5;
  v7 = sub_1CA94C438("Drafts", 6);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v953 = v11;
  v952 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v881 - v952;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v951 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v950 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v954 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v881 - v954;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v949 = v19;
  *(inited + 144) = v18;
  *(inited + 168) = v19;
  *(inited + 176) = 0x6D656863534C5255;
  *(inited + 184) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v900 = swift_allocObject();
  v940 = xmmword_1CA9813C0;
  *(v900 + 16) = xmmword_1CA9813C0;
  v20 = swift_initStackObject();
  v899 = v20;
  *(v20 + 16) = v940;
  *(v20 + 32) = 0x736E6F69746341;
  *(v20 + 40) = 0xE700000000000000;
  v935 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v924 = swift_allocObject();
  *(v924 + 16) = v931;
  v21 = swift_initStackObject();
  v921 = xmmword_1CA9813E0;
  *(v21 + 16) = xmmword_1CA9813E0;
  strcpy((v21 + 32), "ActionKeywords");
  *(v21 + 47) = -18;
  v22 = sub_1CA94C438("draft|notes|document", 20);
  v947 = v23;
  v24 = sub_1CA94C438("draft|notes|document", 20);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v881 - v952;
  sub_1CA948D98();
  v28 = [v951 bundleURL];
  v898 = inited;
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v881 - v954;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 48) = sub_1CA2F9F14(v22, v947, v24, v26, 0, 0, v27, v29);
  *(v21 + 72) = v949;
  *(v21 + 80) = 0x79726F6765746143;
  *(v21 + 88) = 0xE800000000000000;
  v31 = *MEMORY[0x1E6996FC8];
  type metadata accessor for WFContentCategory(0);
  v920 = v32;
  *(v21 + 96) = v31;
  *(v21 + 120) = v32;
  *(v21 + 128) = 0x7470697263736544;
  *(v21 + 136) = 0xEB000000006E6F69;
  v922 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  v919 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v33 = swift_initStackObject();
  v937 = xmmword_1CA981310;
  *(v33 + 16) = xmmword_1CA981310;
  *(v33 + 32) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = v31;
  v36 = v34;
  v37 = v35;
  v908 = v36;
  v907 = v37;
  v946 = sub_1CA94C438("This action will open the specified draft in Drafts and allows you to run a Drafts action on it.", 96);
  v39 = v38;
  v40 = sub_1CA94C438("This action will open the specified draft in Drafts and allows you to run a Drafts action on it.", 96);
  v42 = v41;
  v947 = &v881;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v881 - v952;
  sub_1CA948D98();
  v44 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v881 - v954;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v946, v39, v40, v42, 0, 0, v43, v45);
  *(v33 + 64) = v949;
  *(v33 + 40) = v47;
  type metadata accessor for DescriptionKey(0);
  v918 = v48;
  v917 = sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v49 = sub_1CA94C1E8();
  v50 = v922;
  v51 = sub_1CA6B3784(v49);
  v906 = v21;
  *(v21 + 144) = v51;
  *(v21 + 168) = v50;
  strcpy((v21 + 176), "Discoverable");
  *(v21 + 189) = 0;
  *(v21 + 190) = -5120;
  v52 = MEMORY[0x1E69E6370];
  *(v21 + 192) = 0;
  *(v21 + 216) = v52;
  *(v21 + 224) = 0x74616D726F46;
  *(v21 + 232) = 0xE600000000000000;
  *(v21 + 240) = 0xD00000000000002DLL;
  *(v21 + 248) = 0x80000001CA9A8BC0;
  v53 = MEMORY[0x1E69E6158];
  *(v21 + 264) = MEMORY[0x1E69E6158];
  *(v21 + 272) = 0x696669746E656449;
  v54 = v53;
  v916 = 0xEA00000000007265;
  *(v21 + 280) = 0xEA00000000007265;
  *(v21 + 288) = 1852141679;
  *(v21 + 296) = 0xE400000000000000;
  *(v21 + 312) = v53;
  strcpy((v21 + 320), "InputMapping");
  *(v21 + 333) = 0;
  *(v21 + 334) = -5120;
  v932 = swift_allocObject();
  v934 = xmmword_1CA981380;
  *(v932 + 1) = xmmword_1CA981380;
  v55 = swift_allocObject();
  *(v55 + 16) = v934;
  strcpy((v55 + 32), "DestinationKey");
  *(v55 + 47) = -18;
  *(v55 + 48) = 1684632949;
  *(v55 + 56) = 0xE400000000000000;
  *(v55 + 72) = v54;
  *(v55 + 80) = 0x74616E6974736544;
  *(v55 + 88) = 0xEF657079546E6F69;
  *(v55 + 96) = 0x74736275534C5255;
  *(v55 + 104) = 0xEF6E6F6974757469;
  *(v55 + 120) = v54;
  *(v55 + 128) = 0x73616C436D657449;
  v942 = 0xE900000000000073;
  v939 = 0x80000001CA993390;
  *(v55 + 136) = 0xE900000000000073;
  *(v55 + 144) = 0xD000000000000013;
  *(v55 + 152) = 0x80000001CA993390;
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x6574656D61726150;
  *(v55 + 184) = 0xEB00000000495572;
  v947 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v946 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = v940;
  v936 = 0x80000001CA99B500;
  v938 = 0xD000000000000014;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000014;
  *(v56 + 48) = 0x80000001CA99B500;
  *(v56 + 64) = v54;
  *(v56 + 72) = @"Description";
  v57 = @"Class";
  v58 = @"Description";
  v59 = v57;
  v60 = v58;
  v933 = v59;
  *&v930 = v60;
  v944 = sub_1CA94C438("The UUID of the draft (can be found inside of the Drafts app)", 61);
  v943 = v61;
  v62 = sub_1CA94C438("The UUID of the draft (can be found inside of the Drafts app)", 61);
  v929 = v63;
  v945 = &v881;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v881 - v952;
  sub_1CA948D98();
  v65 = v951;
  v66 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v881 - v954;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 80) = sub_1CA2F9F14(v944, v943, v62, v929, 0, 0, v64, v67);
  v69 = v949;
  *(v56 + 104) = v949;
  *(v56 + 112) = @"Label";
  v929 = @"Label";
  v944 = sub_1CA94C438("UUID (Parameter Label)", 22);
  v943 = v70;
  v71 = sub_1CA94C438("UUID", 4);
  v928 = v72;
  v945 = &v881;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v881 - v952;
  sub_1CA948D98();
  v74 = [v65 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v881 - v954;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v944, v943, v71, v928, 0, 0, v73, v75);
  *(v56 + 144) = v69;
  *(v56 + 120) = v77;
  _s3__C3KeyVMa_0(0);
  v945 = v78;
  v944 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v79 = sub_1CA94C1E8();
  v80 = v947;
  *(v55 + 192) = sub_1CA2F864C(v79);
  *(v55 + 216) = v80;
  *(v55 + 224) = 0x654B656372756F53;
  *(v55 + 232) = 0xE900000000000079;
  *(v55 + 240) = 0x5555737466617244;
  *(v55 + 248) = 0xEA00000000004449;
  v81 = MEMORY[0x1E69E6158];
  *(v55 + 264) = MEMORY[0x1E69E6158];
  *(v55 + 272) = 0x7954656372756F53;
  *(v55 + 312) = v81;
  *(v55 + 280) = 0xEA00000000006570;
  *(v55 + 288) = 0x6574656D61726150;
  v943 = 0xE900000000000072;
  *(v55 + 296) = 0xE900000000000072;
  v932[4] = sub_1CA94C1E8();
  v82 = swift_allocObject();
  v912 = xmmword_1CA981400;
  *(v82 + 16) = xmmword_1CA981400;
  *(v82 + 32) = 0x74616E6974736544;
  *(v82 + 40) = 0xEF657079546E6F69;
  *(v82 + 48) = 0x43656C6261736944;
  *(v82 + 56) = 0xEF6B6361626C6C61;
  *(v82 + 72) = v81;
  *(v82 + 80) = 0x73616C436D657449;
  v897 = 0x80000001CA993A60;
  v83 = v938;
  *(v82 + 88) = v942;
  *(v82 + 96) = v83;
  *(v82 + 104) = 0x80000001CA993A60;
  v928 = 0x80000001CA9A8C50;
  v84 = v941;
  *(v82 + 120) = v81;
  *(v82 + 128) = v84;
  *(v82 + 136) = 0x80000001CA9A8C50;
  *(v82 + 144) = 1;
  *(v82 + 168) = MEMORY[0x1E69E6370];
  *(v82 + 176) = 0x6574656D61726150;
  *(v82 + 184) = 0xEB00000000495572;
  v85 = swift_allocObject();
  *(v85 + 16) = v940;
  v909 = 0x80000001CA99E620;
  v86 = v933;
  v87 = v923;
  *(v85 + 32) = v933;
  *(v85 + 40) = v87;
  *(v85 + 48) = 0x80000001CA99E620;
  v88 = v930;
  *(v85 + 64) = v81;
  *(v85 + 72) = v88;
  v927 = v86;
  v933 = v88;
  v89 = sub_1CA94C438("Whether to stay editing in Drafts or to immediately return to Shortcuts", 71);
  v925 = v90;
  v926 = v89;
  *&v915 = sub_1CA94C438("Whether to stay editing in Drafts or to immediately return to Shortcuts", 71);
  v92 = v91;
  *&v930 = &v881;
  MEMORY[0x1EEE9AC00](v915);
  v93 = v952;
  sub_1CA948D98();
  v94 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v881 - v954;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 80) = sub_1CA2F9F14(v926, v925, v915, v92, 0, 0, &v881 - v93, v95);
  v97 = v949;
  v98 = v929;
  *(v85 + 104) = v949;
  *(v85 + 112) = v98;
  *&v930 = v98;
  v99 = sub_1CA94C438("Edit in Drafts (Parameter Label)", 32);
  v925 = v100;
  v926 = v99;
  v101 = sub_1CA94C438("Edit in Drafts", 14);
  v103 = v102;
  v929 = &v881;
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948D98();
  v104 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v881 - v954;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v926, v925, v101, v103, 0, 0, &v881 - v93, v105);
  *(v85 + 144) = v97;
  *(v85 + 120) = v107;
  v108 = sub_1CA94C1E8();
  v109 = v947;
  *(v82 + 192) = sub_1CA2F864C(v108);
  *(v82 + 216) = v109;
  *(v82 + 224) = 0x654B656372756F53;
  *(v82 + 232) = 0xE900000000000079;
  strcpy((v82 + 240), "DraftsReturn");
  *(v82 + 253) = 0;
  *(v82 + 254) = -5120;
  v110 = MEMORY[0x1E69E6158];
  *(v82 + 264) = MEMORY[0x1E69E6158];
  *(v82 + 272) = 0x7954656372756F53;
  *(v82 + 280) = 0xEA00000000006570;
  *(v82 + 288) = 0x6574656D61726150;
  *(v82 + 296) = v943;
  *(v82 + 312) = v110;
  strcpy((v82 + 320), "ValueMapping");
  *(v82 + 333) = 0;
  *(v82 + 334) = -5120;
  v111 = v110;
  v112 = sub_1CA94C1E8();
  *(v82 + 360) = v913;
  *(v82 + 336) = v112;
  v932[5] = sub_1CA94C1E8();
  v113 = swift_allocObject();
  *(v113 + 16) = v940;
  *(v113 + 32) = 0x6574656D61726150;
  *(v113 + 40) = 0xEB00000000495572;
  v114 = swift_allocObject();
  v915 = xmmword_1CA97EDF0;
  *(v114 + 16) = xmmword_1CA97EDF0;
  v115 = v927;
  v116 = v923;
  *(v114 + 32) = v927;
  *(v114 + 40) = v116;
  *(v114 + 48) = v909;
  v117 = v930;
  *(v114 + 64) = v111;
  *(v114 + 72) = v117;
  v926 = v115;
  v927 = v117;
  v118 = sub_1CA94C438("Run Action (Parameter Label)", 28);
  v929 = v119;
  v120 = sub_1CA94C438("Run Action", 10);
  v122 = v121;
  *&v930 = &v881;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v881 - v952;
  sub_1CA948D98();
  v124 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v881 - v954;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v118, v929, v120, v122, 0, 0, v123, v125);
  *(v114 + 104) = v949;
  *(v114 + 80) = v127;
  v128 = sub_1CA94C1E8();
  v129 = v947;
  *(v113 + 48) = sub_1CA2F864C(v128);
  *(v113 + 72) = v129;
  *(v113 + 80) = 0x654B656372756F53;
  v929 = 0x80000001CA9A8D20;
  *(v113 + 88) = 0xE900000000000079;
  *(v113 + 96) = 0xD000000000000013;
  *(v113 + 104) = 0x80000001CA9A8D20;
  v130 = MEMORY[0x1E69E6158];
  *(v113 + 120) = MEMORY[0x1E69E6158];
  *(v113 + 128) = 0x7954656372756F53;
  *(v113 + 168) = v130;
  *(v113 + 136) = 0xEA00000000006570;
  *(v113 + 144) = 0x6574656D61726150;
  *(v113 + 152) = v943;
  v932[6] = sub_1CA94C1E8();
  v131 = swift_allocObject();
  *(v131 + 16) = v934;
  strcpy((v131 + 32), "DestinationKey");
  *(v131 + 47) = -18;
  *(v131 + 48) = 0x6E6F69746361;
  *(v131 + 56) = 0xE600000000000000;
  *(v131 + 72) = v130;
  *(v131 + 80) = 0x74616E6974736544;
  *(v131 + 88) = 0xEF657079546E6F69;
  strcpy((v131 + 96), "URLQueryValue");
  *(v131 + 110) = -4864;
  *(v131 + 120) = v130;
  *(v131 + 128) = 0x73616C436D657449;
  *(v131 + 136) = v942;
  *(v131 + 144) = 0xD000000000000013;
  *(v131 + 152) = v939;
  *(v131 + 168) = v130;
  *(v131 + 176) = 0x6574656D61726150;
  *(v131 + 184) = 0xEB00000000495572;
  v132 = swift_allocObject();
  v930 = xmmword_1CA981370;
  *(v132 + 16) = xmmword_1CA981370;
  v133 = v926;
  v134 = v938;
  *(v132 + 32) = v926;
  *(v132 + 40) = v134;
  *(v132 + 48) = v936;
  v135 = v933;
  *(v132 + 64) = v130;
  *(v132 + 72) = v135;
  v911 = v133;
  v910 = v135;
  v136 = sub_1CA94C438("The Drafts action to run automatically", 38);
  v925 = v137;
  v926 = v136;
  v138 = sub_1CA94C438("The Drafts action to run automatically", 38);
  v914 = v139;
  v933 = &v881;
  MEMORY[0x1EEE9AC00](v138);
  v140 = &v881 - v952;
  sub_1CA948D98();
  v141 = [v951 bundleURL];
  v905 = &v881;
  MEMORY[0x1EEE9AC00](v141);
  v142 = v954;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 80) = sub_1CA2F9F14(v926, v925, v138, v914, 0, 0, v140, &v881 - v142);
  v144 = v927;
  *(v132 + 104) = v949;
  *(v132 + 112) = v144;
  v914 = v144;
  v145 = sub_1CA94C438("Action (Parameter Label)", 24);
  v926 = v146;
  v927 = v145;
  v147 = sub_1CA94C438("Action", 6);
  v925 = v148;
  v933 = &v881;
  MEMORY[0x1EEE9AC00](v147);
  v149 = &v881 - v952;
  sub_1CA948D98();
  v150 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 120) = sub_1CA2F9F14(v927, v926, v147, v925, 0, 0, v149, &v881 - v142);
  v152 = v949;
  *(v132 + 144) = v949;
  *(v132 + 152) = @"Placeholder";
  v905 = @"Placeholder";
  v153 = sub_1CA94C438("Reminder (Parameter Placeholder)", 32);
  v926 = v154;
  v927 = v153;
  v155 = sub_1CA94C438("Reminder", 8);
  v157 = v156;
  v933 = &v881;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v881 - v952;
  sub_1CA948D98();
  v159 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v881 - v954;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 160) = sub_1CA2F9F14(v927, v926, v155, v157, 0, 0, v158, v160);
  *(v132 + 184) = v152;
  *(v132 + 192) = @"RequiredResources";
  v162 = swift_allocObject();
  *(v162 + 16) = v937;
  v163 = swift_allocObject();
  *(v163 + 16) = v940;
  strcpy((v163 + 32), "WFParameterKey");
  *(v163 + 47) = -18;
  v164 = v929;
  *(v163 + 48) = 0xD000000000000013;
  *(v163 + 56) = v164;
  v927 = 0x80000001CA993570;
  v165 = MEMORY[0x1E69E6158];
  v166 = v941;
  *(v163 + 72) = MEMORY[0x1E69E6158];
  *(v163 + 80) = v166;
  *(v163 + 88) = 0x80000001CA993570;
  *(v163 + 96) = 1;
  *(v163 + 120) = MEMORY[0x1E69E6370];
  *(v163 + 128) = 0x72756F7365524657;
  *(v163 + 168) = v165;
  v925 = 0xD00000000000001BLL;
  v926 = 0x80000001CA993590;
  *(v163 + 136) = 0xEF7373616C436563;
  *(v163 + 144) = 0xD00000000000001BLL;
  *(v163 + 152) = 0x80000001CA993590;
  v904 = @"RequiredResources";
  *(v162 + 32) = sub_1CA94C1E8();
  v933 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v132 + 224) = v933;
  *(v132 + 200) = v162;
  v167 = sub_1CA94C1E8();
  v168 = v947;
  *(v131 + 192) = sub_1CA2F864C(v167);
  *(v131 + 216) = v168;
  *(v131 + 224) = 0x654B656372756F53;
  *(v131 + 232) = 0xE900000000000079;
  strcpy((v131 + 240), "DraftsAction");
  *(v131 + 253) = 0;
  *(v131 + 254) = -5120;
  *(v131 + 264) = v165;
  *(v131 + 272) = 0x7954656372756F53;
  *(v131 + 312) = v165;
  *(v131 + 280) = 0xEA00000000006570;
  *(v131 + 288) = 0x6574656D61726150;
  *(v131 + 296) = v943;
  v932[7] = sub_1CA94C1E8();
  v169 = swift_allocObject();
  *(v169 + 16) = v934;
  strcpy((v169 + 32), "DestinationKey");
  *(v169 + 47) = -18;
  *(v169 + 48) = 7955819;
  *(v169 + 56) = 0xE300000000000000;
  *(v169 + 72) = v165;
  *(v169 + 80) = 0x74616E6974736544;
  *(v169 + 88) = 0xEF657079546E6F69;
  strcpy((v169 + 96), "URLQueryValue");
  *(v169 + 110) = -4864;
  *(v169 + 120) = v165;
  *(v169 + 128) = 0x73616C436D657449;
  *(v169 + 136) = v942;
  *(v169 + 144) = 0xD000000000000013;
  *(v169 + 152) = v939;
  *(v169 + 168) = v165;
  *(v169 + 176) = 0x6574656D61726150;
  *(v169 + 184) = 0xEB00000000495572;
  v170 = swift_allocObject();
  *(v170 + 16) = v930;
  v172 = v910;
  v171 = v911;
  v173 = v938;
  *(v170 + 32) = v911;
  *(v170 + 40) = v173;
  *(v170 + 48) = v936;
  *(v170 + 64) = v165;
  *(v170 + 72) = v172;
  v911 = v171;
  *&v903 = v172;
  v174 = sub_1CA94C438("The URL security key specified in Drafts settings, if it's required", 67);
  v901 = v175;
  v902 = v174;
  v176 = sub_1CA94C438("The URL security key specified in Drafts settings, if it's required", 67);
  v896 = v177;
  v910 = &v881;
  MEMORY[0x1EEE9AC00](v176);
  v178 = v952;
  sub_1CA948D98();
  v179 = v951;
  v180 = [v951 bundleURL];
  v895 = &v881;
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v881 - v954;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 80) = sub_1CA2F9F14(v902, v901, v176, v896, 0, 0, &v881 - v178, v181);
  v183 = v949;
  v184 = v914;
  *(v170 + 104) = v949;
  *(v170 + 112) = v184;
  v914 = v184;
  v185 = sub_1CA94C438("Key (Parameter Label)", 21);
  v901 = v186;
  v902 = v185;
  v187 = sub_1CA94C438("Key", 3);
  v896 = v188;
  v910 = &v881;
  MEMORY[0x1EEE9AC00](v187);
  sub_1CA948D98();
  v189 = [v179 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  v190 = &v881 - v954;
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 120) = sub_1CA2F9F14(v902, v901, v187, v896, 0, 0, &v881 - v178, v190);
  v193 = v904;
  v192 = v905;
  *(v170 + 144) = v183;
  *(v170 + 152) = v192;
  *(v170 + 160) = 0x504C4B595A33;
  *(v170 + 168) = 0xE600000000000000;
  v194 = MEMORY[0x1E69E6158];
  *(v170 + 184) = MEMORY[0x1E69E6158];
  *(v170 + 192) = v193;
  v195 = swift_allocObject();
  *(v195 + 16) = v937;
  v196 = swift_allocObject();
  *(v196 + 16) = v940;
  strcpy((v196 + 32), "WFParameterKey");
  *(v196 + 47) = -18;
  *(v196 + 48) = 0xD000000000000013;
  *(v196 + 56) = v929;
  v197 = v941;
  *(v196 + 72) = v194;
  *(v196 + 80) = v197;
  *(v196 + 88) = v927;
  *(v196 + 96) = 1;
  *(v196 + 120) = MEMORY[0x1E69E6370];
  *(v196 + 128) = 0x72756F7365524657;
  *(v196 + 168) = v194;
  *(v196 + 136) = 0xEF7373616C436563;
  v198 = v926;
  *(v196 + 144) = v925;
  *(v196 + 152) = v198;
  v893 = v192;
  v910 = v193;
  *(v195 + 32) = sub_1CA94C1E8();
  *(v170 + 224) = v933;
  *(v170 + 200) = v195;
  v199 = sub_1CA94C1E8();
  v200 = v947;
  *(v169 + 192) = sub_1CA2F864C(v199);
  *(v169 + 216) = v200;
  *(v169 + 224) = 0x654B656372756F53;
  *(v169 + 232) = 0xE900000000000079;
  *(v169 + 240) = 0x6341737466617244;
  *(v169 + 248) = 0xEF79654B6E6F6974;
  *(v169 + 264) = v194;
  *(v169 + 272) = 0x7954656372756F53;
  *(v169 + 312) = v194;
  *(v169 + 280) = 0xEA00000000006570;
  *(v169 + 288) = 0x6574656D61726150;
  *(v169 + 296) = v943;
  v932[8] = sub_1CA94C1E8();
  v201 = swift_allocObject();
  *(v201 + 16) = v912;
  strcpy((v201 + 32), "DestinationKey");
  *(v201 + 47) = -18;
  strcpy((v201 + 48), "afterSuccess");
  *(v201 + 61) = 0;
  *(v201 + 62) = -5120;
  *(v201 + 72) = v194;
  *(v201 + 80) = 0x74616E6974736544;
  *(v201 + 88) = 0xEF657079546E6F69;
  strcpy((v201 + 96), "URLQueryValue");
  *(v201 + 110) = -4864;
  *(v201 + 120) = v194;
  *(v201 + 128) = 0x73616C436D657449;
  *(v201 + 136) = v942;
  *(v201 + 144) = 0xD000000000000013;
  *(v201 + 152) = v939;
  *(v201 + 168) = v194;
  *(v201 + 176) = v197;
  *(v201 + 184) = v928;
  *(v201 + 192) = 0x676E6968746F4ELL;
  *(v201 + 200) = 0xE700000000000000;
  *(v201 + 216) = v194;
  *(v201 + 224) = 0x6574656D61726150;
  *(v201 + 232) = 0xEB00000000495572;
  v202 = swift_allocObject();
  *(v202 + 16) = v930;
  v203 = v911;
  *(v202 + 32) = v911;
  *(v202 + 40) = 0xD000000000000016;
  v904 = 0x80000001CA99C4A0;
  v905 = 0xD000000000000016;
  *(v202 + 48) = 0x80000001CA99C4A0;
  v204 = v903;
  *(v202 + 64) = v194;
  *(v202 + 72) = v204;
  v205 = v202;
  v892 = v203;
  v891 = v204;
  v206 = sub_1CA94C438("What to do with the draft if the action succeeds", 48);
  *&v903 = v207;
  v208 = sub_1CA94C438("What to do with the draft if the action succeeds", 48);
  v210 = v209;
  v911 = &v881;
  MEMORY[0x1EEE9AC00](v208);
  v211 = &v881 - v952;
  sub_1CA948D98();
  v212 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v881 - v954;
  sub_1CA948B68();

  v214 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v215 = sub_1CA2F9F14(v206, v903, v208, v210, 0, 0, v211, v213);
  v896 = v205;
  v205[10] = v215;
  v205[13] = v949;
  v205[14] = @"Items";
  v911 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v216 = swift_allocObject();
  v903 = xmmword_1CA981470;
  *(v216 + 16) = xmmword_1CA981470;
  v902 = @"Items";
  v217 = sub_1CA94C438("Nothing (DraftsAfterSuccess)", 28);
  v894 = v218;
  v895 = v217;
  v219 = sub_1CA94C438("Nothing", 7);
  v890 = v220;
  v901 = &v881;
  MEMORY[0x1EEE9AC00](v219);
  v221 = v952;
  sub_1CA948D98();
  v222 = v951;
  v223 = [v951 bundleURL];
  v889 = &v881;
  MEMORY[0x1EEE9AC00](v223);
  v224 = &v881 - v954;
  sub_1CA948B68();

  v225 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v216 + 32) = sub_1CA2F9F14(v895, v894, v219, v890, 0, 0, &v881 - v221, v224);
  v226 = sub_1CA94C438("Archive (DraftsAfterSuccess)", 28);
  v894 = v227;
  v895 = v226;
  v228 = sub_1CA94C438("Archive", 7);
  v890 = v229;
  v901 = &v881;
  MEMORY[0x1EEE9AC00](v228);
  v230 = &v881 - v221;
  sub_1CA948D98();
  v231 = [v222 bundleURL];
  MEMORY[0x1EEE9AC00](v231);
  v232 = v954;
  sub_1CA948B68();

  v233 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v216 + 40) = sub_1CA2F9F14(v895, v894, v228, v890, 0, 0, v230, &v881 - v232);
  v234 = sub_1CA94C438("Delete (DraftsAfterSuccess)", 27);
  v894 = v235;
  v895 = v234;
  v236 = sub_1CA94C438("Delete", 6);
  v890 = v237;
  v901 = &v881;
  MEMORY[0x1EEE9AC00](v236);
  v238 = &v881 - v952;
  sub_1CA948D98();
  v239 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v239);
  sub_1CA948B68();

  v240 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v241 = sub_1CA2F9F14(v895, v894, v236, v890, 0, 0, v238, &v881 - v232);
  v242 = v216;
  *(v216 + 48) = v241;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v901 = v243;
  v244 = v896;
  v896[15] = v242;
  v245 = v914;
  v244[18] = v243;
  v244[19] = v245;
  v890 = v245;
  v246 = sub_1CA94C438("After Success (Parameter Label)", 31);
  v895 = v247;
  v248 = sub_1CA94C438("After Success", 13);
  v250 = v249;
  v914 = &v881;
  MEMORY[0x1EEE9AC00](v248);
  v251 = &v881 - v952;
  sub_1CA948D98();
  v252 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v252);
  v253 = &v881 - v954;
  sub_1CA948B68();

  v254 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v244[20] = sub_1CA2F9F14(v246, v895, v248, v250, 0, 0, v251, v253);
  v255 = v910;
  v244[23] = v949;
  v244[24] = v255;
  v256 = swift_allocObject();
  *(v256 + 16) = v937;
  v257 = swift_allocObject();
  *(v257 + 16) = v940;
  strcpy((v257 + 32), "WFParameterKey");
  *(v257 + 47) = -18;
  *(v257 + 48) = 0xD000000000000013;
  *(v257 + 56) = v929;
  v258 = MEMORY[0x1E69E6158];
  v259 = v941;
  *(v257 + 72) = MEMORY[0x1E69E6158];
  *(v257 + 80) = v259;
  *(v257 + 88) = v927;
  *(v257 + 96) = 1;
  *(v257 + 120) = MEMORY[0x1E69E6370];
  *(v257 + 128) = 0x72756F7365524657;
  *(v257 + 168) = v258;
  *(v257 + 136) = 0xEF7373616C436563;
  v260 = v926;
  *(v257 + 144) = v925;
  *(v257 + 152) = v260;
  v894 = v255;
  *(v256 + 32) = sub_1CA94C1E8();
  v261 = v933;
  v244[28] = v933;
  v244[25] = v256;
  v262 = sub_1CA94C1E8();
  v263 = v947;
  *(v201 + 240) = sub_1CA2F864C(v262);
  *(v201 + 264) = v263;
  *(v201 + 272) = 0x654B656372756F53;
  v895 = 0xD000000000000012;
  v896 = 0x80000001CA9A8F10;
  *(v201 + 280) = 0xE900000000000079;
  *(v201 + 288) = 0xD000000000000012;
  *(v201 + 296) = 0x80000001CA9A8F10;
  *(v201 + 312) = v258;
  *(v201 + 320) = 0x7954656372756F53;
  *(v201 + 360) = v258;
  *(v201 + 328) = 0xEA00000000006570;
  *(v201 + 336) = 0x6574656D61726150;
  *(v201 + 344) = v943;
  v264 = sub_1CA94C1E8();
  v265 = v932;
  v932[9] = v264;
  v266 = v906;
  v906[10].data = v265;
  v266[11].info = v261;
  v266[11].data = 1701667150;
  v266[11].length = 0xE400000000000000;
  v914 = sub_1CA94C438("Open Draft (Action Name)", 24);
  v910 = v267;
  v889 = sub_1CA94C438("Open Draft", 10);
  v269 = v268;
  v932 = &v881;
  MEMORY[0x1EEE9AC00](v889);
  v270 = v952;
  sub_1CA948D98();
  v271 = v951;
  v272 = [v951 bundleURL];
  v888 = &v881;
  MEMORY[0x1EEE9AC00](v272);
  v273 = v954;
  sub_1CA948B68();

  v274 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v266[12].isa = sub_1CA2F9F14(v914, v910, v889, v269, 0, 0, &v881 - v270, &v881 - v273);
  v914 = 0x80000001CA9A8F60;
  v275 = v941;
  v266[12].length = v949;
  v266[13].isa = v275;
  v266[13].info = 0x80000001CA9A8F60;
  v910 = sub_1CA94C438("Open draft ${DraftsUUID} (Parameter Summary)", 44);
  v889 = v276;
  v888 = sub_1CA94C438("Open draft ${DraftsUUID}", 24);
  v278 = v277;
  v932 = &v881;
  MEMORY[0x1EEE9AC00](v888);
  sub_1CA948D98();
  v279 = [v271 bundleURL];
  MEMORY[0x1EEE9AC00](v279);
  sub_1CA948B68();

  v280 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v281 = sub_1CA2F9F14(v910, v889, v888, v278, 0, 0, &v881 - v270, &v881 - v273);
  v282 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v910 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v266[14].info = v910;
  v266[13].data = v282;
  *(v924 + 32) = sub_1CA94C1E8();
  v283 = swift_allocObject();
  *(v283 + 16) = xmmword_1CA981420;
  strcpy((v283 + 32), "ActionKeywords");
  *(v283 + 47) = -18;
  v906 = sub_1CA94C438("draft|notes|document", 20);
  v285 = v284;
  v286 = sub_1CA94C438("draft|notes|document", 20);
  v288 = v287;
  v932 = &v881;
  MEMORY[0x1EEE9AC00](v286);
  v289 = v952;
  sub_1CA948D98();
  v290 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v290);
  v291 = &v881 - v954;
  sub_1CA948B68();

  v292 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v283 + 48) = sub_1CA2F9F14(v906, v285, v286, v288, 0, 0, &v881 - v289, v291);
  v293 = v949;
  *(v283 + 72) = v949;
  *(v283 + 80) = 0x79726F6765746143;
  v294 = v907;
  *(v283 + 88) = 0xE800000000000000;
  *(v283 + 96) = v294;
  *(v283 + 120) = v920;
  *(v283 + 128) = 0x7470697263736544;
  *(v283 + 136) = 0xEB000000006E6F69;
  v295 = swift_initStackObject();
  *(v295 + 16) = v937;
  v296 = v908;
  *(v295 + 32) = v908;
  v906 = v294;
  v907 = v296;
  v908 = sub_1CA94C438("This action will get the contents of the specified draft in Drafts.", 67);
  v889 = v297;
  v298 = sub_1CA94C438("This action will get the contents of the specified draft in Drafts.", 67);
  v300 = v299;
  v932 = &v881;
  MEMORY[0x1EEE9AC00](v298);
  sub_1CA948D98();
  v301 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v301);
  v302 = &v881 - v954;
  sub_1CA948B68();

  v303 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v304 = sub_1CA2F9F14(v908, v889, v298, v300, 0, 0, &v881 - v289, v302);
  *(v295 + 64) = v293;
  *(v295 + 40) = v304;
  v305 = sub_1CA94C1E8();
  v306 = v922;
  *(v283 + 144) = sub_1CA6B3784(v305);
  *(v283 + 168) = v306;
  strcpy((v283 + 176), "Discoverable");
  *(v283 + 189) = 0;
  *(v283 + 190) = -5120;
  *(v283 + 192) = 0;
  *(v283 + 216) = MEMORY[0x1E69E6370];
  *(v283 + 224) = 0x74616D726F46;
  *(v283 + 232) = 0xE600000000000000;
  *(v283 + 240) = 0xD00000000000002CLL;
  *(v283 + 248) = 0x80000001CA9A9020;
  v307 = MEMORY[0x1E69E6158];
  *(v283 + 264) = MEMORY[0x1E69E6158];
  *(v283 + 272) = 0x696669746E656449;
  *(v283 + 280) = v916;
  *(v283 + 288) = 7628135;
  *(v283 + 296) = 0xE300000000000000;
  *(v283 + 312) = v307;
  strcpy((v283 + 320), "InputMapping");
  *(v283 + 333) = 0;
  *(v283 + 334) = -5120;
  v932 = swift_allocObject();
  *(v932 + 1) = v937;
  v308 = swift_allocObject();
  *(v308 + 16) = v934;
  strcpy((v308 + 32), "DestinationKey");
  *(v308 + 47) = -18;
  *(v308 + 48) = 1684632949;
  *(v308 + 56) = 0xE400000000000000;
  *(v308 + 72) = v307;
  *(v308 + 80) = 0x74616E6974736544;
  *(v308 + 88) = 0xEF657079546E6F69;
  *(v308 + 96) = 0x74736275534C5255;
  *(v308 + 104) = 0xEF6E6F6974757469;
  *(v308 + 120) = v307;
  *(v308 + 128) = 0x73616C436D657449;
  *(v308 + 136) = v942;
  *(v308 + 144) = 0xD000000000000013;
  *(v308 + 152) = v939;
  *(v308 + 168) = v307;
  *(v308 + 176) = 0x6574656D61726150;
  *(v308 + 184) = 0xEB00000000495572;
  v309 = swift_allocObject();
  *(v309 + 16) = v931;
  v311 = v891;
  v310 = v892;
  v312 = v938;
  *(v309 + 32) = v892;
  *(v309 + 40) = v312;
  *(v309 + 48) = v936;
  *(v309 + 64) = v307;
  *(v309 + 72) = v311;
  v889 = v310;
  v892 = v311;
  v891 = sub_1CA94C438("The UUID of the draft (can be found inside of the Drafts app)", 61);
  v888 = v313;
  v314 = sub_1CA94C438("The UUID of the draft (can be found inside of the Drafts app)", 61);
  v886 = v315;
  v887 = v314;
  v908 = &v881;
  MEMORY[0x1EEE9AC00](v314);
  v316 = &v881 - v952;
  sub_1CA948D98();
  v317 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v317);
  v318 = v954;
  sub_1CA948B68();

  v319 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v309 + 80) = sub_1CA2F9F14(v891, v888, v887, v886, 0, 0, v316, &v881 - v318);
  v320 = v949;
  v321 = v890;
  *(v309 + 104) = v949;
  *(v309 + 112) = v321;
  v888 = v321;
  v322 = sub_1CA94C438("Draft UUID (Parameter Label)", 28);
  v890 = v323;
  v891 = v322;
  v324 = sub_1CA94C438("Draft UUID", 10);
  v886 = v325;
  v887 = v324;
  v908 = &v881;
  MEMORY[0x1EEE9AC00](v324);
  v326 = &v881 - v952;
  sub_1CA948D98();
  v327 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v327);
  sub_1CA948B68();

  v328 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v309 + 120) = sub_1CA2F9F14(v891, v890, v887, v886, 0, 0, v326, &v881 - v318);
  v329 = v893;
  *(v309 + 144) = v320;
  *(v309 + 152) = v329;
  v330 = MEMORY[0x1E69E6158];
  *(v309 + 184) = MEMORY[0x1E69E6158];
  *(v309 + 160) = 0xD000000000000024;
  *(v309 + 168) = 0x80000001CA9A9080;
  v893 = v329;
  v331 = sub_1CA94C1E8();
  v332 = v947;
  *(v308 + 192) = sub_1CA2F864C(v331);
  *(v308 + 216) = v332;
  *(v308 + 224) = 0x654B656372756F53;
  *(v308 + 232) = 0xE900000000000079;
  *(v308 + 240) = 0x5555737466617244;
  *(v308 + 248) = 0xEA00000000004449;
  *(v308 + 264) = v330;
  *(v308 + 272) = 0x7954656372756F53;
  *(v308 + 312) = v330;
  *(v308 + 280) = 0xEA00000000006570;
  *(v308 + 288) = 0x6574656D61726150;
  *(v308 + 296) = v943;
  v333 = sub_1CA94C1E8();
  v334 = v932;
  v335 = v933;
  v932[4] = v333;
  *(v283 + 336) = v334;
  *(v283 + 360) = v335;
  *(v283 + 368) = 1701667150;
  *(v283 + 376) = 0xE400000000000000;
  v336 = sub_1CA94C438("Get Contents of Draft (Action Name)", 35);
  v908 = v337;
  v338 = sub_1CA94C438("Get Contents of Draft", 21);
  v340 = v339;
  v932 = &v881;
  MEMORY[0x1EEE9AC00](v338);
  v341 = &v881 - v952;
  sub_1CA948D98();
  v342 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v342);
  v343 = &v881 - v954;
  sub_1CA948B68();

  v344 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v283 + 384) = sub_1CA2F9F14(v336, v908, v338, v340, 0, 0, v341, v343);
  *(v283 + 408) = v949;
  strcpy((v283 + 416), "OutputMapping");
  *(v283 + 430) = -4864;
  v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v345 = swift_allocObject();
  *(v345 + 16) = v937;
  *(v345 + 32) = sub_1CA94C1E8();
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v890 = v346;
  *(v283 + 432) = v345;
  v347 = v941;
  *(v283 + 456) = v346;
  *(v283 + 464) = v347;
  *(v283 + 472) = v914;
  v348 = sub_1CA94C438("Get contents of draft ${DraftsUUID} (Parameter Summary)", 55);
  v908 = v349;
  v350 = sub_1CA94C438("Get contents of draft ${DraftsUUID}", 35);
  v352 = v351;
  v932 = &v881;
  MEMORY[0x1EEE9AC00](v350);
  v353 = &v881 - v952;
  sub_1CA948D98();
  v354 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v354);
  v355 = &v881 - v954;
  sub_1CA948B68();

  v356 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v357 = sub_1CA2F9F14(v348, v908, v350, v352, 0, 0, v353, v355);
  v358 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v283 + 504) = v910;
  *(v283 + 480) = v358;
  *(v924 + 40) = sub_1CA94C1E8();
  v359 = swift_allocObject();
  *(v359 + 16) = v921;
  strcpy((v359 + 32), "ActionKeywords");
  *(v359 + 47) = -18;
  v887 = sub_1CA94C438("draft|notes|document", 20);
  v361 = v360;
  v362 = sub_1CA94C438("draft|notes|document", 20);
  v364 = v363;
  v932 = &v881;
  MEMORY[0x1EEE9AC00](v362);
  v365 = &v881 - v952;
  sub_1CA948D98();
  v366 = v951;
  v367 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v367);
  v368 = &v881 - v954;
  sub_1CA948B68();

  v369 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v359 + 48) = sub_1CA2F9F14(v887, v361, v362, v364, 0, 0, v365, v368);
  v370 = v949;
  *(v359 + 72) = v949;
  *(v359 + 80) = 0x79726F6765746143;
  v371 = v906;
  *(v359 + 88) = 0xE800000000000000;
  *(v359 + 96) = v371;
  *(v359 + 120) = v920;
  *(v359 + 128) = 0x7470697263736544;
  *(v359 + 136) = 0xEB000000006E6F69;
  v372 = swift_allocObject();
  *(v372 + 16) = v937;
  *(v372 + 32) = v907;
  v373 = sub_1CA94C438("This action will add the input to the specified draft in Drafts and allows you to run a Drafts action on it.", 108);
  v886 = v374;
  v887 = v373;
  v375 = sub_1CA94C438("This action will add the input to the specified draft in Drafts and allows you to run a Drafts action on it.", 108);
  v377 = v376;
  v932 = &v881;
  MEMORY[0x1EEE9AC00](v375);
  v378 = &v881 - v952;
  sub_1CA948D98();
  v379 = [v366 bundleURL];
  MEMORY[0x1EEE9AC00](v379);
  v380 = &v881 - v954;
  sub_1CA948B68();

  v381 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v382 = sub_1CA2F9F14(v887, v886, v375, v377, 0, 0, v378, v380);
  *(v372 + 64) = v370;
  *(v372 + 40) = v382;
  v383 = sub_1CA94C1E8();
  v384 = v922;
  v385 = sub_1CA6B3784(v383);
  v908 = v359;
  *(v359 + 144) = v385;
  *(v359 + 168) = v384;
  strcpy((v359 + 176), "Discoverable");
  *(v359 + 189) = 0;
  *(v359 + 190) = -5120;
  *(v359 + 192) = 0;
  *(v359 + 216) = MEMORY[0x1E69E6370];
  *(v359 + 224) = 0x74616D726F46;
  *(v359 + 232) = 0xE600000000000000;
  *(v359 + 240) = 0xD000000000000031;
  *(v359 + 248) = 0x80000001CA9A91E0;
  v386 = MEMORY[0x1E69E6158];
  *(v359 + 264) = MEMORY[0x1E69E6158];
  *(v359 + 272) = 0x696669746E656449;
  *(v359 + 280) = v916;
  *(v359 + 288) = 0x6F74646461;
  *(v359 + 296) = 0xE500000000000000;
  *(v359 + 312) = v386;
  strcpy((v359 + 320), "InputMapping");
  *(v359 + 333) = 0;
  *(v359 + 334) = -5120;
  v387 = swift_allocObject();
  *(v387 + 16) = v921;
  v388 = v387;
  v932 = v387;
  v389 = swift_allocObject();
  *(v389 + 16) = v930;
  strcpy((v389 + 32), "DestinationKey");
  *(v389 + 47) = -18;
  *(v389 + 48) = 1954047348;
  *(v389 + 56) = 0xE400000000000000;
  *(v389 + 72) = v386;
  *(v389 + 80) = 0x74616E6974736544;
  *(v389 + 88) = 0xEF657079546E6F69;
  *(v389 + 96) = 0x74736275534C5255;
  *(v389 + 104) = 0xEF6E6F6974757469;
  *(v389 + 120) = v386;
  *(v389 + 128) = 0x73616C436D657449;
  *(v389 + 136) = v942;
  *(v389 + 144) = 0xD000000000000013;
  *(v389 + 152) = v939;
  *(v389 + 168) = v386;
  *(v389 + 176) = 0x654B656372756F53;
  *(v389 + 184) = 0xE900000000000079;
  *(v389 + 192) = 0x6E49737466617244;
  *(v389 + 200) = 0xEB00000000747570;
  *(v389 + 216) = v386;
  *(v389 + 224) = 0x7954656372756F53;
  *(v389 + 264) = v386;
  *(v389 + 232) = 0xEA00000000006570;
  *(v389 + 240) = 0x7475706E49;
  *(v389 + 248) = 0xE500000000000000;
  *(v388 + 32) = sub_1CA94C1E8();
  v390 = swift_allocObject();
  *(v390 + 16) = v940;
  *(v390 + 32) = 0x6574656D61726150;
  *(v390 + 40) = 0xEB00000000495572;
  v391 = swift_allocObject();
  *(v391 + 16) = v915;
  v393 = v888;
  v392 = v889;
  v394 = v938;
  *(v391 + 32) = v889;
  *(v391 + 40) = v394;
  *(v391 + 48) = v936;
  *(v391 + 64) = v386;
  *(v391 + 72) = v393;
  v887 = v392;
  v889 = v393;
  v395 = sub_1CA94C438("Text (Parameter Label)", 22);
  v886 = v396;
  v397 = sub_1CA94C438("Text", 4);
  v399 = v398;
  v888 = &v881;
  MEMORY[0x1EEE9AC00](v397);
  v400 = &v881 - v952;
  sub_1CA948D98();
  v401 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v401);
  v402 = &v881 - v954;
  sub_1CA948B68();

  v403 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v404 = sub_1CA2F9F14(v395, v886, v397, v399, 0, 0, v400, v402);
  *(v391 + 104) = v949;
  *(v391 + 80) = v404;
  v405 = sub_1CA94C1E8();
  v406 = v947;
  *(v390 + 48) = sub_1CA2F864C(v405);
  *(v390 + 72) = v406;
  *(v390 + 80) = 0x654B656372756F53;
  *(v390 + 88) = 0xE900000000000079;
  *(v390 + 96) = 0x6E49737466617244;
  *(v390 + 104) = 0xEB00000000747570;
  v407 = MEMORY[0x1E69E6158];
  *(v390 + 120) = MEMORY[0x1E69E6158];
  *(v390 + 128) = 0x7954656372756F53;
  *(v390 + 168) = v407;
  *(v390 + 136) = 0xEA00000000006570;
  *(v390 + 144) = 0x6574656D61726150;
  *(v390 + 152) = v943;
  v932[5] = sub_1CA94C1E8();
  v408 = swift_allocObject();
  *(v408 + 16) = xmmword_1CA981300;
  strcpy((v408 + 32), "DestinationKey");
  *(v408 + 47) = -18;
  *(v408 + 48) = 1701080941;
  *(v408 + 56) = 0xE400000000000000;
  *(v408 + 72) = v407;
  *(v408 + 80) = 0x74616E6974736544;
  *(v408 + 88) = 0xEF657079546E6F69;
  *(v408 + 96) = 0x74736275534C5255;
  *(v408 + 104) = 0xEF6E6F6974757469;
  *(v408 + 120) = v407;
  *(v408 + 128) = 0x73616C436D657449;
  *(v408 + 136) = v942;
  *(v408 + 144) = 0xD000000000000013;
  *(v408 + 152) = v939;
  v409 = v941;
  *(v408 + 168) = v407;
  *(v408 + 176) = v409;
  *(v408 + 184) = v928;
  *(v408 + 192) = 0x657461657243;
  *(v408 + 200) = 0xE600000000000000;
  *(v408 + 216) = v407;
  *(v408 + 224) = 0x6574656D61726150;
  *(v408 + 232) = 0xEB00000000495572;
  v410 = swift_allocObject();
  v886 = v410;
  *(v410 + 16) = v940;
  v411 = v887;
  v412 = v904;
  v413 = v905;
  *(v410 + 32) = v887;
  *(v410 + 40) = v413;
  *(v410 + 48) = v412;
  v414 = v902;
  *(v410 + 64) = v407;
  *(v410 + 72) = v414;
  v415 = swift_allocObject();
  *(v415 + 16) = v903;
  v888 = v411;
  v416 = sub_1CA94C438("Create (DraftsAddMode)", 22);
  v884 = v417;
  v885 = v416;
  v418 = sub_1CA94C438("Create", 6);
  v883 = v419;
  v887 = &v881;
  MEMORY[0x1EEE9AC00](v418);
  v420 = &v881 - v952;
  sub_1CA948D98();
  v421 = v951;
  v422 = [v951 bundleURL];
  v882 = &v881;
  MEMORY[0x1EEE9AC00](v422);
  v423 = &v881 - v954;
  sub_1CA948B68();

  v424 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v415 + 32) = sub_1CA2F9F14(v885, v884, v418, v883, 0, 0, v420, v423);
  v425 = sub_1CA94C438("Append (DraftsAddMode)", 22);
  v884 = v426;
  v885 = v425;
  v427 = sub_1CA94C438("Append", 6);
  v883 = v428;
  v887 = &v881;
  MEMORY[0x1EEE9AC00](v427);
  v429 = v952;
  sub_1CA948D98();
  v430 = [v421 bundleURL];
  MEMORY[0x1EEE9AC00](v430);
  v431 = v954;
  sub_1CA948B68();

  v432 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v415 + 40) = sub_1CA2F9F14(v885, v884, v427, v883, 0, 0, &v881 - v429, &v881 - v431);
  v433 = sub_1CA94C438("Prepend (DraftsAddMode)", 23);
  v884 = v434;
  v885 = v433;
  v435 = sub_1CA94C438("Prepend", 7);
  v883 = v436;
  v887 = &v881;
  MEMORY[0x1EEE9AC00](v435);
  v437 = &v881 - v429;
  sub_1CA948D98();
  v438 = v951;
  v439 = [v951 bundleURL];
  v882 = &v881;
  MEMORY[0x1EEE9AC00](v439);
  sub_1CA948B68();

  v440 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v441 = sub_1CA2F9F14(v885, v884, v435, v883, 0, 0, v437, &v881 - v431);
  v442 = v415;
  *(v415 + 48) = v441;
  v443 = v886;
  v886[10] = v442;
  v444 = v889;
  v443[13] = v901;
  v443[14] = v444;
  v887 = v444;
  v445 = sub_1CA94C438("Mode (Parameter Label)", 22);
  v884 = v446;
  v885 = v445;
  v447 = sub_1CA94C438("Mode", 4);
  v449 = v448;
  v889 = &v881;
  MEMORY[0x1EEE9AC00](v447);
  v450 = &v881 - v952;
  sub_1CA948D98();
  v451 = [v438 bundleURL];
  MEMORY[0x1EEE9AC00](v451);
  v452 = &v881 - v954;
  sub_1CA948B68();

  v453 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v454 = sub_1CA2F9F14(v885, v884, v447, v449, 0, 0, v450, v452);
  v443[18] = v949;
  v443[15] = v454;
  v455 = sub_1CA94C1E8();
  v456 = v947;
  *(v408 + 240) = sub_1CA2F864C(v455);
  *(v408 + 264) = v456;
  *(v408 + 272) = 0x654B656372756F53;
  *(v408 + 280) = 0xE900000000000079;
  strcpy((v408 + 288), "DraftsAddMode");
  *(v408 + 302) = -4864;
  v457 = MEMORY[0x1E69E6158];
  *(v408 + 312) = MEMORY[0x1E69E6158];
  *(v408 + 320) = 0x7954656372756F53;
  *(v408 + 328) = 0xEA00000000006570;
  *(v408 + 336) = 0x6574656D61726150;
  *(v408 + 344) = v943;
  *(v408 + 360) = v457;
  strcpy((v408 + 368), "ValueMapping");
  *(v408 + 381) = 0;
  *(v408 + 382) = -5120;
  v458 = v457;
  v459 = sub_1CA94C1E8();
  *(v408 + 408) = v913;
  *(v408 + 384) = v459;
  v932[6] = sub_1CA94C1E8();
  v460 = swift_allocObject();
  *(v460 + 16) = v934;
  strcpy((v460 + 32), "DestinationKey");
  *(v460 + 47) = -18;
  *(v460 + 48) = 1684632949;
  *(v460 + 56) = 0xE400000000000000;
  *(v460 + 72) = v458;
  *(v460 + 80) = 0x74616E6974736544;
  *(v460 + 88) = 0xEF657079546E6F69;
  strcpy((v460 + 96), "URLQueryValue");
  *(v460 + 110) = -4864;
  *(v460 + 120) = v458;
  *(v460 + 128) = 0x73616C436D657449;
  *(v460 + 136) = v942;
  *(v460 + 144) = 0xD000000000000013;
  *(v460 + 152) = v939;
  *(v460 + 168) = v458;
  *(v460 + 176) = 0x6574656D61726150;
  *(v460 + 184) = 0xEB00000000495572;
  v461 = swift_allocObject();
  *(v461 + 16) = v931;
  v462 = v888;
  v463 = v938;
  *(v461 + 32) = v888;
  *(v461 + 40) = v463;
  *(v461 + 48) = v936;
  v464 = v892;
  *(v461 + 64) = v458;
  *(v461 + 72) = v464;
  v889 = v462;
  v888 = v464;
  v465 = sub_1CA94C438("The UUID of the draft (can be found inside of the Drafts app)", 61);
  v885 = v466;
  v886 = v465;
  v467 = sub_1CA94C438("The UUID of the draft (can be found inside of the Drafts app)", 61);
  v884 = v468;
  v892 = &v881;
  MEMORY[0x1EEE9AC00](v467);
  v469 = &v881 - v952;
  sub_1CA948D98();
  v470 = [v951 bundleURL];
  v883 = &v881;
  MEMORY[0x1EEE9AC00](v470);
  v471 = v954;
  sub_1CA948B68();

  v472 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v461 + 80) = sub_1CA2F9F14(v886, v885, v467, v884, 0, 0, v469, &v881 - v471);
  v473 = v949;
  v474 = v887;
  *(v461 + 104) = v949;
  *(v461 + 112) = v474;
  v892 = v474;
  v475 = sub_1CA94C438("Draft UUID (Parameter Label)", 28);
  v885 = v476;
  v886 = v475;
  v477 = sub_1CA94C438("Draft UUID", 10);
  v884 = v478;
  v887 = &v881;
  MEMORY[0x1EEE9AC00](v477);
  v479 = &v881 - v952;
  sub_1CA948D98();
  v480 = [v951 bundleURL];
  v883 = &v881;
  MEMORY[0x1EEE9AC00](v480);
  sub_1CA948B68();

  v481 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v461 + 120) = sub_1CA2F9F14(v886, v885, v477, v884, 0, 0, v479, &v881 - v471);
  *(v461 + 144) = v473;
  v482 = v894;
  *(v461 + 152) = v894;
  v483 = swift_allocObject();
  *(v483 + 16) = v937;
  v894 = v482;
  v484 = MEMORY[0x1E69E6158];
  *(v483 + 32) = sub_1CA94C1E8();
  *(v461 + 184) = v890;
  *(v461 + 160) = v483;
  v485 = sub_1CA94C1E8();
  v486 = v947;
  *(v460 + 192) = sub_1CA2F864C(v485);
  *(v460 + 216) = v486;
  *(v460 + 224) = 0x654B656372756F53;
  *(v460 + 232) = 0xE900000000000079;
  *(v460 + 240) = 0x5555737466617244;
  *(v460 + 248) = 0xEA00000000004449;
  *(v460 + 264) = v484;
  *(v460 + 272) = 0x7954656372756F53;
  *(v460 + 312) = v484;
  *(v460 + 280) = 0xEA00000000006570;
  *(v460 + 288) = 0x6574656D61726150;
  *(v460 + 296) = v943;
  v932[7] = sub_1CA94C1E8();
  v487 = swift_allocObject();
  *(v487 + 16) = v912;
  *(v487 + 32) = 0x74616E6974736544;
  *(v487 + 40) = 0xEF657079546E6F69;
  *(v487 + 48) = 0x43656C6261736944;
  *(v487 + 56) = 0xEF6B6361626C6C61;
  *(v487 + 72) = v484;
  *(v487 + 80) = 0x73616C436D657449;
  v488 = v938;
  *(v487 + 88) = v942;
  *(v487 + 96) = v488;
  *(v487 + 104) = v897;
  v489 = v941;
  *(v487 + 120) = v484;
  *(v487 + 128) = v489;
  *(v487 + 136) = v928;
  *(v487 + 144) = 1;
  *(v487 + 168) = MEMORY[0x1E69E6370];
  *(v487 + 176) = 0x6574656D61726150;
  *(v487 + 184) = 0xEB00000000495572;
  v490 = swift_allocObject();
  *(v490 + 16) = v940;
  v492 = v888;
  v491 = v889;
  v493 = v923;
  *(v490 + 32) = v889;
  *(v490 + 40) = v493;
  *(v490 + 48) = v909;
  *(v490 + 64) = v484;
  *(v490 + 72) = v492;
  v891 = v491;
  v897 = v492;
  v494 = sub_1CA94C438("Whether to stay editing in Drafts or to immediately return to Shortcuts", 71);
  v888 = v495;
  v889 = v494;
  v496 = sub_1CA94C438("Whether to stay editing in Drafts or to immediately return to Shortcuts", 71);
  v887 = v497;
  v890 = &v881;
  MEMORY[0x1EEE9AC00](v496);
  v498 = v952;
  sub_1CA948D98();
  v499 = v951;
  v500 = [v951 bundleURL];
  v886 = &v881;
  MEMORY[0x1EEE9AC00](v500);
  v501 = &v881 - v954;
  sub_1CA948B68();

  v502 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v490 + 80) = sub_1CA2F9F14(v889, v888, v496, v887, 0, 0, &v881 - v498, v501);
  v503 = v949;
  v504 = v892;
  *(v490 + 104) = v949;
  *(v490 + 112) = v504;
  v892 = v504;
  v505 = sub_1CA94C438("Edit in Drafts (Parameter Label)", 32);
  v888 = v506;
  v889 = v505;
  v507 = sub_1CA94C438("Edit in Drafts", 14);
  v887 = v508;
  v890 = &v881;
  MEMORY[0x1EEE9AC00](v507);
  sub_1CA948D98();
  v509 = [v499 bundleURL];
  MEMORY[0x1EEE9AC00](v509);
  v510 = &v881 - v954;
  sub_1CA948B68();

  v511 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v512 = sub_1CA2F9F14(v889, v888, v507, v887, 0, 0, &v881 - v498, v510);
  *(v490 + 144) = v503;
  *(v490 + 120) = v512;
  v513 = sub_1CA94C1E8();
  v514 = v947;
  *(v487 + 192) = sub_1CA2F864C(v513);
  *(v487 + 216) = v514;
  *(v487 + 224) = 0x654B656372756F53;
  *(v487 + 232) = 0xE900000000000079;
  strcpy((v487 + 240), "DraftsReturn");
  *(v487 + 253) = 0;
  *(v487 + 254) = -5120;
  v515 = MEMORY[0x1E69E6158];
  *(v487 + 264) = MEMORY[0x1E69E6158];
  *(v487 + 272) = 0x7954656372756F53;
  *(v487 + 280) = 0xEA00000000006570;
  *(v487 + 288) = 0x6574656D61726150;
  *(v487 + 296) = v943;
  *(v487 + 312) = v515;
  strcpy((v487 + 320), "ValueMapping");
  *(v487 + 333) = 0;
  *(v487 + 334) = -5120;
  v516 = v515;
  v517 = sub_1CA94C1E8();
  *(v487 + 360) = v913;
  *(v487 + 336) = v517;
  v932[8] = sub_1CA94C1E8();
  v518 = swift_allocObject();
  *(v518 + 16) = v931;
  v519 = v928;
  *(v518 + 32) = v941;
  *(v518 + 40) = v519;
  *(v518 + 48) = 0;
  *(v518 + 72) = MEMORY[0x1E69E6370];
  *(v518 + 80) = 0x6574656D61726150;
  *(v518 + 88) = 0xEB00000000495572;
  v520 = swift_allocObject();
  *(v520 + 16) = v915;
  v521 = v891;
  v522 = v892;
  v523 = v923;
  *(v520 + 32) = v891;
  *(v520 + 40) = v523;
  *(v520 + 48) = v909;
  *(v520 + 64) = v516;
  *(v520 + 72) = v522;
  v913 = v521;
  v923 = v522;
  v524 = sub_1CA94C438("Run Action (Parameter Label)", 28);
  v892 = v525;
  v526 = sub_1CA94C438("Run Action", 10);
  v528 = v527;
  v909 = &v881;
  MEMORY[0x1EEE9AC00](v526);
  v529 = &v881 - v952;
  sub_1CA948D98();
  v530 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v530);
  v531 = &v881 - v954;
  sub_1CA948B68();

  v532 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v533 = sub_1CA2F9F14(v524, v892, v526, v528, 0, 0, v529, v531);
  *(v520 + 104) = v949;
  *(v520 + 80) = v533;
  v534 = sub_1CA94C1E8();
  v535 = v947;
  *(v518 + 96) = sub_1CA2F864C(v534);
  *(v518 + 120) = v535;
  *(v518 + 128) = 0x654B656372756F53;
  *(v518 + 136) = 0xE900000000000079;
  *(v518 + 144) = 0xD000000000000013;
  *(v518 + 152) = v929;
  v536 = MEMORY[0x1E69E6158];
  *(v518 + 168) = MEMORY[0x1E69E6158];
  *(v518 + 176) = 0x7954656372756F53;
  *(v518 + 216) = v536;
  *(v518 + 184) = 0xEA00000000006570;
  *(v518 + 192) = 0x6574656D61726150;
  *(v518 + 200) = v943;
  v932[9] = sub_1CA94C1E8();
  v537 = swift_allocObject();
  *(v537 + 16) = v934;
  strcpy((v537 + 32), "DestinationKey");
  *(v537 + 47) = -18;
  *(v537 + 48) = 0x6E6F69746361;
  *(v537 + 56) = 0xE600000000000000;
  *(v537 + 72) = v536;
  *(v537 + 80) = 0x74616E6974736544;
  *(v537 + 88) = 0xEF657079546E6F69;
  strcpy((v537 + 96), "URLQueryValue");
  *(v537 + 110) = -4864;
  *(v537 + 120) = v536;
  *(v537 + 128) = 0x73616C436D657449;
  *(v537 + 136) = v942;
  *(v537 + 144) = 0xD000000000000013;
  *(v537 + 152) = v939;
  *(v537 + 168) = v536;
  *(v537 + 176) = 0x6574656D61726150;
  *(v537 + 184) = 0xEB00000000495572;
  v538 = swift_allocObject();
  *(v538 + 16) = v930;
  v539 = v913;
  v540 = v938;
  *(v538 + 32) = v913;
  *(v538 + 40) = v540;
  *(v538 + 48) = v936;
  v541 = v897;
  *(v538 + 64) = v536;
  *(v538 + 72) = v541;
  v892 = v539;
  v897 = v541;
  v909 = sub_1CA94C438("The Drafts action to run automatically", 38);
  v891 = v542;
  v543 = sub_1CA94C438("The Drafts action to run automatically", 38);
  v890 = v544;
  v913 = &v881;
  MEMORY[0x1EEE9AC00](v543);
  v545 = v952;
  sub_1CA948D98();
  v546 = v951;
  v547 = [v951 bundleURL];
  v889 = &v881;
  MEMORY[0x1EEE9AC00](v547);
  v548 = &v881 - v954;
  sub_1CA948B68();

  v549 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v538 + 80) = sub_1CA2F9F14(v909, v891, v543, v890, 0, 0, &v881 - v545, v548);
  v550 = v923;
  *(v538 + 104) = v949;
  *(v538 + 112) = v550;
  v913 = v550;
  v909 = sub_1CA94C438("Action (Parameter Label)", 24);
  v891 = v551;
  v552 = sub_1CA94C438("Action", 6);
  v890 = v553;
  v923 = &v881;
  MEMORY[0x1EEE9AC00](v552);
  sub_1CA948D98();
  v554 = [v546 bundleURL];
  MEMORY[0x1EEE9AC00](v554);
  v555 = v954;
  sub_1CA948B68();

  v556 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v538 + 120) = sub_1CA2F9F14(v909, v891, v552, v890, 0, 0, &v881 - v545, &v881 - v555);
  v557 = v949;
  v558 = v893;
  *(v538 + 144) = v949;
  *(v538 + 152) = v558;
  v923 = v558;
  v893 = sub_1CA94C438("Reminder (Parameter Placeholder)", 32);
  v891 = v559;
  v560 = sub_1CA94C438("Reminder", 8);
  v890 = v561;
  v909 = &v881;
  MEMORY[0x1EEE9AC00](v560);
  v562 = &v881 - v952;
  sub_1CA948D98();
  v563 = [v951 bundleURL];
  v889 = &v881;
  MEMORY[0x1EEE9AC00](v563);
  sub_1CA948B68();

  v564 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v538 + 160) = sub_1CA2F9F14(v893, v891, v560, v890, 0, 0, v562, &v881 - v555);
  v565 = v894;
  *(v538 + 184) = v557;
  *(v538 + 192) = v565;
  v566 = swift_allocObject();
  *(v566 + 16) = v937;
  v567 = swift_allocObject();
  *(v567 + 16) = v940;
  strcpy((v567 + 32), "WFParameterKey");
  *(v567 + 47) = -18;
  *(v567 + 48) = 0xD000000000000013;
  *(v567 + 56) = v929;
  v568 = MEMORY[0x1E69E6158];
  v569 = v941;
  *(v567 + 72) = MEMORY[0x1E69E6158];
  *(v567 + 80) = v569;
  *(v567 + 88) = v927;
  *(v567 + 96) = 1;
  *(v567 + 120) = MEMORY[0x1E69E6370];
  *(v567 + 128) = 0x72756F7365524657;
  *(v567 + 168) = v568;
  *(v567 + 136) = 0xEF7373616C436563;
  v570 = v926;
  *(v567 + 144) = v925;
  *(v567 + 152) = v570;
  v909 = v565;
  *(v566 + 32) = sub_1CA94C1E8();
  *(v538 + 224) = v933;
  *(v538 + 200) = v566;
  v571 = sub_1CA94C1E8();
  v572 = v947;
  *(v537 + 192) = sub_1CA2F864C(v571);
  *(v537 + 216) = v572;
  *(v537 + 224) = 0x654B656372756F53;
  *(v537 + 232) = 0xE900000000000079;
  strcpy((v537 + 240), "DraftsAction");
  *(v537 + 253) = 0;
  *(v537 + 254) = -5120;
  *(v537 + 264) = v568;
  *(v537 + 272) = 0x7954656372756F53;
  *(v537 + 312) = v568;
  *(v537 + 280) = 0xEA00000000006570;
  *(v537 + 288) = 0x6574656D61726150;
  *(v537 + 296) = v943;
  v932[10] = sub_1CA94C1E8();
  v573 = swift_allocObject();
  *(v573 + 16) = v934;
  strcpy((v573 + 32), "DestinationKey");
  *(v573 + 47) = -18;
  *(v573 + 48) = 7955819;
  *(v573 + 56) = 0xE300000000000000;
  *(v573 + 72) = v568;
  *(v573 + 80) = 0x74616E6974736544;
  *(v573 + 88) = 0xEF657079546E6F69;
  strcpy((v573 + 96), "URLQueryValue");
  *(v573 + 110) = -4864;
  *(v573 + 120) = v568;
  *(v573 + 128) = 0x73616C436D657449;
  *(v573 + 136) = v942;
  *(v573 + 144) = 0xD000000000000013;
  *(v573 + 152) = v939;
  *(v573 + 168) = v568;
  *(v573 + 176) = 0x6574656D61726150;
  *(v573 + 184) = 0xEB00000000495572;
  v574 = swift_allocObject();
  *(v574 + 16) = v930;
  v575 = v892;
  v576 = v938;
  *(v574 + 32) = v892;
  *(v574 + 40) = v576;
  *(v574 + 48) = v936;
  v577 = v897;
  *(v574 + 64) = v568;
  *(v574 + 72) = v577;
  v893 = v575;
  v894 = v577;
  v578 = sub_1CA94C438("The URL security key specified in Drafts settings, if it's required", 67);
  v891 = v579;
  v892 = v578;
  v890 = sub_1CA94C438("The URL security key specified in Drafts settings, if it's required", 67);
  v581 = v580;
  v897 = &v881;
  MEMORY[0x1EEE9AC00](v890);
  v582 = v952;
  sub_1CA948D98();
  v583 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v583);
  v584 = &v881 - v954;
  sub_1CA948B68();

  v585 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v574 + 80) = sub_1CA2F9F14(v892, v891, v890, v581, 0, 0, &v881 - v582, v584);
  v586 = v949;
  v587 = v913;
  *(v574 + 104) = v949;
  *(v574 + 112) = v587;
  v897 = v587;
  v588 = sub_1CA94C438("Key (Parameter Label)", 21);
  v891 = v589;
  v892 = v588;
  v590 = sub_1CA94C438("Key", 3);
  v592 = v591;
  v913 = &v881;
  MEMORY[0x1EEE9AC00](v590);
  sub_1CA948D98();
  v593 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v593);
  v594 = &v881 - v954;
  sub_1CA948B68();

  v595 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v574 + 120) = sub_1CA2F9F14(v892, v891, v590, v592, 0, 0, &v881 - v582, v594);
  v596 = v923;
  *(v574 + 144) = v586;
  *(v574 + 152) = v596;
  *(v574 + 160) = 0x504C4B595A33;
  *(v574 + 168) = 0xE600000000000000;
  v597 = MEMORY[0x1E69E6158];
  v598 = v909;
  *(v574 + 184) = MEMORY[0x1E69E6158];
  *(v574 + 192) = v598;
  v599 = swift_allocObject();
  *(v599 + 16) = v937;
  v600 = swift_allocObject();
  *(v600 + 16) = v940;
  strcpy((v600 + 32), "WFParameterKey");
  *(v600 + 47) = -18;
  *(v600 + 48) = 0xD000000000000013;
  *(v600 + 56) = v929;
  v601 = v941;
  *(v600 + 72) = v597;
  *(v600 + 80) = v601;
  *(v600 + 88) = v927;
  *(v600 + 96) = 1;
  *(v600 + 120) = MEMORY[0x1E69E6370];
  *(v600 + 128) = 0x72756F7365524657;
  *(v600 + 168) = v597;
  *(v600 + 136) = 0xEF7373616C436563;
  v602 = v926;
  *(v600 + 144) = v925;
  *(v600 + 152) = v602;
  *(v599 + 32) = sub_1CA94C1E8();
  *(v574 + 224) = v933;
  *(v574 + 200) = v599;
  v603 = sub_1CA94C1E8();
  v604 = v947;
  *(v573 + 192) = sub_1CA2F864C(v603);
  *(v573 + 216) = v604;
  *(v573 + 224) = 0x654B656372756F53;
  *(v573 + 232) = 0xE900000000000079;
  *(v573 + 240) = 0x6341737466617244;
  *(v573 + 248) = 0xEF79654B6E6F6974;
  *(v573 + 264) = v597;
  *(v573 + 272) = 0x7954656372756F53;
  *(v573 + 312) = v597;
  *(v573 + 280) = 0xEA00000000006570;
  *(v573 + 288) = 0x6574656D61726150;
  *(v573 + 296) = v943;
  v932[11] = sub_1CA94C1E8();
  v605 = swift_allocObject();
  *(v605 + 16) = v912;
  strcpy((v605 + 32), "DestinationKey");
  *(v605 + 47) = -18;
  strcpy((v605 + 48), "afterSuccess");
  *(v605 + 61) = 0;
  *(v605 + 62) = -5120;
  *(v605 + 72) = v597;
  *(v605 + 80) = 0x74616E6974736544;
  *(v605 + 88) = 0xEF657079546E6F69;
  strcpy((v605 + 96), "URLQueryValue");
  *(v605 + 110) = -4864;
  *(v605 + 120) = v597;
  *(v605 + 128) = 0x73616C436D657449;
  *(v605 + 136) = v942;
  *(v605 + 144) = 0xD000000000000013;
  *(v605 + 152) = v939;
  *(v605 + 168) = v597;
  *(v605 + 176) = v601;
  *(v605 + 184) = v928;
  *(v605 + 192) = 0x676E6968746F4ELL;
  *(v605 + 200) = 0xE700000000000000;
  *(v605 + 216) = v597;
  *(v605 + 224) = 0x6574656D61726150;
  *(v605 + 232) = 0xEB00000000495572;
  v606 = swift_allocObject();
  *(v606 + 16) = v930;
  v607 = v893;
  v608 = v894;
  v609 = v904;
  v610 = v905;
  *(v606 + 32) = v893;
  *(v606 + 40) = v610;
  *(v606 + 48) = v609;
  *(v606 + 64) = v597;
  *(v606 + 72) = v608;
  *&v912 = v607;
  v913 = v608;
  v611 = sub_1CA94C438("What to do with the draft if the action succeeds", 48);
  v904 = v612;
  v905 = v611;
  v894 = sub_1CA94C438("What to do with the draft if the action succeeds", 48);
  v614 = v613;
  v928 = &v881;
  MEMORY[0x1EEE9AC00](v894);
  v615 = v952;
  sub_1CA948D98();
  v616 = v951;
  v617 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v617);
  v618 = &v881 - v954;
  sub_1CA948B68();

  v619 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v606 + 80) = sub_1CA2F9F14(v905, v904, v894, v614, 0, 0, &v881 - v615, v618);
  v620 = v902;
  *(v606 + 104) = v949;
  *(v606 + 112) = v620;
  v928 = swift_allocObject();
  *(v928 + 1) = v903;
  v904 = sub_1CA94C438("Nothing (DraftsAfterSuccess)", 28);
  *&v903 = v621;
  v622 = sub_1CA94C438("Nothing", 7);
  v902 = v623;
  v905 = &v881;
  MEMORY[0x1EEE9AC00](v622);
  v624 = &v881 - v615;
  sub_1CA948D98();
  v625 = [v616 bundleURL];
  MEMORY[0x1EEE9AC00](v625);
  v626 = &v881 - v954;
  sub_1CA948B68();

  v627 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v628 = sub_1CA2F9F14(v904, v903, v622, v902, 0, 0, v624, v626);
  v928[4] = v628;
  v904 = sub_1CA94C438("Archive (DraftsAfterSuccess)", 28);
  *&v903 = v629;
  v630 = sub_1CA94C438("Archive", 7);
  v902 = v631;
  v905 = &v881;
  MEMORY[0x1EEE9AC00](v630);
  v632 = &v881 - v952;
  sub_1CA948D98();
  v633 = v951;
  v634 = [v951 bundleURL];
  v894 = &v881;
  MEMORY[0x1EEE9AC00](v634);
  v635 = v954;
  sub_1CA948B68();

  v636 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v637 = sub_1CA2F9F14(v904, v903, v630, v902, 0, 0, v632, &v881 - v635);
  v928[5] = v637;
  v904 = sub_1CA94C438("Delete (DraftsAfterSuccess)", 27);
  *&v903 = v638;
  v639 = sub_1CA94C438("Delete", 6);
  v902 = v640;
  v905 = &v881;
  MEMORY[0x1EEE9AC00](v639);
  v641 = v952;
  sub_1CA948D98();
  v642 = [v633 bundleURL];
  v894 = &v881;
  MEMORY[0x1EEE9AC00](v642);
  sub_1CA948B68();

  v643 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v644 = sub_1CA2F9F14(v904, v903, v639, v902, 0, 0, &v881 - v641, &v881 - v635);
  v645 = v928;
  v928[6] = v644;
  *(v606 + 120) = v645;
  v646 = v897;
  *(v606 + 144) = v901;
  *(v606 + 152) = v646;
  v928 = v646;
  v904 = sub_1CA94C438("After Success (Parameter Label)", 31);
  *&v903 = v647;
  v648 = sub_1CA94C438("After Success", 13);
  v902 = v649;
  v905 = &v881;
  MEMORY[0x1EEE9AC00](v648);
  sub_1CA948D98();
  v650 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v650);
  v651 = &v881 - v954;
  sub_1CA948B68();

  v652 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v606 + 160) = sub_1CA2F9F14(v904, v903, v648, v902, 0, 0, &v881 - v641, v651);
  v653 = v909;
  *(v606 + 184) = v949;
  *(v606 + 192) = v653;
  v654 = swift_allocObject();
  *(v654 + 16) = v937;
  v655 = swift_allocObject();
  *(v655 + 16) = v940;
  strcpy((v655 + 32), "WFParameterKey");
  *(v655 + 47) = -18;
  *(v655 + 48) = 0xD000000000000013;
  *(v655 + 56) = v929;
  v656 = MEMORY[0x1E69E6158];
  v657 = v941;
  *(v655 + 72) = MEMORY[0x1E69E6158];
  *(v655 + 80) = v657;
  *(v655 + 88) = v927;
  *(v655 + 96) = 1;
  *(v655 + 120) = MEMORY[0x1E69E6370];
  *(v655 + 128) = 0x72756F7365524657;
  *(v655 + 168) = v656;
  *(v655 + 136) = 0xEF7373616C436563;
  v658 = v926;
  *(v655 + 144) = v925;
  *(v655 + 152) = v658;
  v659 = v656;
  *(v654 + 32) = sub_1CA94C1E8();
  v660 = v933;
  *(v606 + 224) = v933;
  *(v606 + 200) = v654;
  v661 = sub_1CA94C1E8();
  v662 = v947;
  *(v605 + 240) = sub_1CA2F864C(v661);
  *(v605 + 264) = v662;
  *(v605 + 272) = 0x654B656372756F53;
  *(v605 + 280) = 0xE900000000000079;
  v663 = v896;
  *(v605 + 288) = v895;
  *(v605 + 296) = v663;
  *(v605 + 312) = v659;
  *(v605 + 320) = 0x7954656372756F53;
  *(v605 + 360) = v659;
  *(v605 + 328) = 0xEA00000000006570;
  *(v605 + 336) = 0x6574656D61726150;
  *(v605 + 344) = v943;
  v664 = sub_1CA94C1E8();
  v665 = v932;
  v932[12] = v664;
  v666 = v908;
  v908[10].data = v665;
  v666[11].info = v660;
  v666[11].data = 1701667150;
  v666[11].length = 0xE400000000000000;
  v667 = sub_1CA94C438("Add to Draft (Action Name)", 26);
  v929 = v668;
  v669 = sub_1CA94C438("Add to Draft", 12);
  v671 = v670;
  v932 = &v881;
  MEMORY[0x1EEE9AC00](v669);
  v672 = v952;
  sub_1CA948D98();
  v673 = v951;
  v674 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v674);
  v675 = &v881 - v954;
  sub_1CA948B68();

  v676 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v677 = sub_1CA2F9F14(v667, v929, v669, v671, 0, 0, &v881 - v672, v675);
  v678 = v908;
  v908[12].isa = v677;
  v679 = v941;
  v678[12].length = v949;
  v678[13].isa = v679;
  v678[13].info = v914;
  v932 = swift_allocObject();
  *(v932 + 1) = xmmword_1CA981410;
  v929 = "tion Name)";
  v680 = sub_1CA94C438("${DraftsAddMode} ${DraftsInput} to draft ${DraftsUUID}", 54);
  v925 = v681;
  v926 = v680;
  v682 = sub_1CA94C438("${DraftsAddMode} ${DraftsInput} to draft ${DraftsUUID}", 54);
  v684 = v683;
  v927 = &v881;
  MEMORY[0x1EEE9AC00](v682);
  sub_1CA948D98();
  v685 = [v673 bundleURL];
  MEMORY[0x1EEE9AC00](v685);
  v686 = v954;
  sub_1CA948B68();

  v687 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v688 = sub_1CA2F9F14(v926, v925, v682, v684, 0, 0, &v881 - v672, &v881 - v686);
  v689 = objc_allocWithZone(WFActionParameterSummaryValue);
  v690 = sub_1CA65DD78(0xD00000000000004DLL, v929 | 0x8000000000000000, v688);
  v691 = v932;
  v932[4] = v690;
  v929 = "to draft ${DraftsUUID}";
  v692 = sub_1CA94C438("${DraftsAddMode} ${DraftsInput} to draft ${DraftsUUID}", 54);
  v925 = v693;
  v926 = v692;
  v694 = sub_1CA94C438("${DraftsAddMode} ${DraftsInput} to draft ${DraftsUUID}", 54);
  v911 = v695;
  v927 = &v881;
  MEMORY[0x1EEE9AC00](v694);
  v696 = &v881 - v952;
  sub_1CA948D98();
  v697 = v951;
  v698 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v698);
  sub_1CA948B68();

  v699 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v700 = sub_1CA2F9F14(v926, v925, v694, v911, 0, 0, v696, &v881 - v686);
  v701 = objc_allocWithZone(WFActionParameterSummaryValue);
  v691[5] = sub_1CA65DD78(0xD000000000000080, v929 | 0x8000000000000000, v700);
  v929 = "aftsAfterSuccess";
  v702 = sub_1CA94C438("${DraftsAddMode} draft with ${DraftsInput}", 42);
  v925 = v703;
  v926 = v702;
  v704 = sub_1CA94C438("${DraftsAddMode} draft with ${DraftsInput}", 42);
  v706 = v705;
  v927 = &v881;
  MEMORY[0x1EEE9AC00](v704);
  v707 = &v881 - v952;
  sub_1CA948D98();
  v708 = [v697 bundleURL];
  MEMORY[0x1EEE9AC00](v708);
  sub_1CA948B68();

  v709 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v710 = sub_1CA2F9F14(v926, v925, v704, v706, 0, 0, v707, &v881 - v686);
  v711 = objc_allocWithZone(WFActionParameterSummaryValue);
  v712 = sub_1CA65DD78(0xD000000000000042, v929 | 0x8000000000000000, v710);
  v713 = v932;
  v932[6] = v712;
  v929 = " draft with ${DraftsInput}";
  v714 = sub_1CA94C438("${DraftsAddMode} draft with ${DraftsInput}", 42);
  v925 = v715;
  v926 = v714;
  v716 = sub_1CA94C438("${DraftsAddMode} draft with ${DraftsInput}", 42);
  v911 = v717;
  v927 = &v881;
  MEMORY[0x1EEE9AC00](v716);
  v718 = v952;
  sub_1CA948D98();
  v719 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v719);
  sub_1CA948B68();

  v720 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v721 = sub_1CA2F9F14(v926, v925, v716, v911, 0, 0, &v881 - v718, &v881 - v686);
  v722 = objc_allocWithZone(WFActionParameterSummaryValue);
  v713[7] = sub_1CA65DD78(0xD000000000000075, v929 | 0x8000000000000000, v721);
  v929 = "ey,DraftsAfterSuccess";
  v723 = sub_1CA94C438("${DraftsAddMode} ${DraftsInput} to draft ${DraftsUUID}", 54);
  v925 = v724;
  v926 = v723;
  v725 = sub_1CA94C438("${DraftsAddMode} ${DraftsInput} to draft ${DraftsUUID}", 54);
  v911 = v726;
  v927 = &v881;
  MEMORY[0x1EEE9AC00](v725);
  sub_1CA948D98();
  v727 = v951;
  v728 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v728);
  v729 = v954;
  sub_1CA948B68();

  v730 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v731 = sub_1CA2F9F14(v926, v925, v725, v911, 0, 0, &v881 - v718, &v881 - v729);
  v732 = objc_allocWithZone(WFActionParameterSummaryValue);
  v733 = sub_1CA65DD78(0xD00000000000004ELL, v929 | 0x8000000000000000, v731);
  v932[8] = v733;
  v929 = "aftsReturn,DraftsActionEnabled";
  v734 = sub_1CA94C438("${DraftsAddMode} ${DraftsInput} to draft ${DraftsUUID}", 54);
  v925 = v735;
  v926 = v734;
  v736 = sub_1CA94C438("${DraftsAddMode} ${DraftsInput} to draft ${DraftsUUID}", 54);
  v911 = v737;
  v927 = &v881;
  MEMORY[0x1EEE9AC00](v736);
  v738 = v952;
  sub_1CA948D98();
  v739 = [v727 bundleURL];
  MEMORY[0x1EEE9AC00](v739);
  sub_1CA948B68();

  v740 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v741 = sub_1CA2F9F14(v926, v925, v736, v911, 0, 0, &v881 - v738, &v881 - v729);
  v742 = objc_allocWithZone(WFActionParameterSummaryValue);
  v743 = sub_1CA65DD78(0xD000000000000081, v929 | 0x8000000000000000, v741);
  v744 = v932;
  v932[9] = v743;
  v745 = v910;
  v746 = sub_1CA65AF90(v744);
  v747 = v908;
  v908[14].info = v745;
  *(v747 + 432) = v746;
  *(v924 + 48) = sub_1CA94C1E8();
  v748 = swift_allocObject();
  *(v748 + 16) = v921;
  strcpy((v748 + 32), "ActionKeywords");
  *(v748 + 47) = -18;
  v749 = sub_1CA94C438("draft|notes|document", 20);
  v926 = v750;
  v927 = v749;
  v751 = sub_1CA94C438("draft|notes|document", 20);
  v753 = v752;
  v929 = &v881;
  MEMORY[0x1EEE9AC00](v751);
  sub_1CA948D98();
  v754 = [v727 bundleURL];
  MEMORY[0x1EEE9AC00](v754);
  v755 = &v881 - v954;
  sub_1CA948B68();

  v756 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v748 + 48) = sub_1CA2F9F14(v927, v926, v751, v753, 0, 0, &v881 - v738, v755);
  v757 = v949;
  *(v748 + 72) = v949;
  *(v748 + 80) = 0x79726F6765746143;
  v758 = v906;
  *(v748 + 88) = 0xE800000000000000;
  *(v748 + 96) = v758;
  *(v748 + 120) = v920;
  *(v748 + 128) = 0x7470697263736544;
  *(v748 + 136) = 0xEB000000006E6F69;
  v759 = swift_allocObject();
  *(v759 + 16) = v937;
  *(v759 + 32) = v907;
  v929 = sub_1CA94C438("This action will run a Drafts action on the input", 49);
  v927 = v760;
  v761 = sub_1CA94C438("This action will run a Drafts action on the input", 49);
  v763 = v762;
  *&v937 = &v881;
  MEMORY[0x1EEE9AC00](v761);
  v764 = &v881 - v952;
  sub_1CA948D98();
  v765 = [v727 bundleURL];
  MEMORY[0x1EEE9AC00](v765);
  v766 = &v881 - v954;
  sub_1CA948B68();

  v767 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v768 = sub_1CA2F9F14(v929, v927, v761, v763, 0, 0, v764, v766);
  *(v759 + 64) = v757;
  *(v759 + 40) = v768;
  v769 = sub_1CA94C1E8();
  v770 = v922;
  v771 = sub_1CA6B3784(v769);
  v932 = v748;
  *(v748 + 144) = v771;
  *(v748 + 168) = v770;
  strcpy((v748 + 176), "Discoverable");
  *(v748 + 189) = 0;
  *(v748 + 190) = -5120;
  *(v748 + 192) = 0;
  *(v748 + 216) = MEMORY[0x1E69E6370];
  *(v748 + 224) = 0x74616D726F46;
  *(v748 + 232) = 0xE600000000000000;
  *(v748 + 240) = 0xD000000000000032;
  *(v748 + 248) = 0x80000001CA9A9640;
  v772 = MEMORY[0x1E69E6158];
  *(v748 + 264) = MEMORY[0x1E69E6158];
  *(v748 + 272) = 0x696669746E656449;
  *(v748 + 280) = v916;
  *(v748 + 288) = 0x6F697463416E7572;
  *(v748 + 296) = 0xE90000000000006ELL;
  *(v748 + 312) = v772;
  strcpy((v748 + 320), "InputMapping");
  *(v748 + 333) = 0;
  *(v748 + 334) = -5120;
  v773 = swift_allocObject();
  *(v773 + 16) = v931;
  v774 = v773;
  *&v937 = v773;
  v775 = swift_allocObject();
  *(v775 + 16) = v930;
  strcpy((v775 + 32), "DestinationKey");
  *(v775 + 47) = -18;
  *(v775 + 48) = 1954047348;
  *(v775 + 56) = 0xE400000000000000;
  *(v775 + 72) = v772;
  *(v775 + 80) = 0x74616E6974736544;
  *(v775 + 88) = 0xEF657079546E6F69;
  *(v775 + 96) = 0x74736275534C5255;
  *(v775 + 104) = 0xEF6E6F6974757469;
  *(v775 + 120) = v772;
  v776 = v942;
  *(v775 + 128) = 0x73616C436D657449;
  *(v775 + 136) = v776;
  v777 = v939;
  *(v775 + 144) = 0xD000000000000013;
  *(v775 + 152) = v777;
  *(v775 + 168) = v772;
  *(v775 + 176) = 0x654B656372756F53;
  *(v775 + 184) = 0xE900000000000079;
  *(v775 + 192) = 0x6E49737466617244;
  *(v775 + 200) = 0xEB00000000747570;
  *(v775 + 216) = v772;
  *(v775 + 224) = 0x7954656372756F53;
  *(v775 + 264) = v772;
  *(v775 + 232) = 0xEA00000000006570;
  *(v775 + 240) = 0x7475706E49;
  *(v775 + 248) = 0xE500000000000000;
  *(v774 + 32) = sub_1CA94C1E8();
  v778 = swift_allocObject();
  *(v778 + 16) = v931;
  *(v778 + 32) = 0x73616C436D657449;
  *(v778 + 40) = v776;
  *(v778 + 48) = 0xD000000000000013;
  *(v778 + 56) = v777;
  *(v778 + 72) = v772;
  *(v778 + 80) = 0x6574656D61726150;
  *(v778 + 88) = 0xEB00000000495572;
  v779 = swift_allocObject();
  *(v779 + 16) = v915;
  v780 = v912;
  v781 = v938;
  *(v779 + 32) = v912;
  *(v779 + 40) = v781;
  *(v779 + 48) = v936;
  v782 = v928;
  *(v779 + 64) = v772;
  *(v779 + 72) = v782;
  *&v930 = v780;
  v935 = v782;
  v783 = sub_1CA94C438("Text (Parameter Label)", 22);
  v927 = v784;
  v928 = v783;
  v785 = sub_1CA94C438("Text", 4);
  v787 = v786;
  v929 = &v881;
  MEMORY[0x1EEE9AC00](v785);
  v788 = &v881 - v952;
  sub_1CA948D98();
  v789 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v789);
  v790 = &v881 - v954;
  sub_1CA948B68();

  v791 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v792 = sub_1CA2F9F14(v928, v927, v785, v787, 0, 0, v788, v790);
  *(v779 + 104) = v949;
  *(v779 + 80) = v792;
  v793 = sub_1CA94C1E8();
  v794 = v947;
  *(v778 + 96) = sub_1CA2F864C(v793);
  *(v778 + 120) = v794;
  *(v778 + 128) = 0x654B656372756F53;
  *(v778 + 136) = 0xE900000000000079;
  *(v778 + 144) = 0x6E49737466617244;
  *(v778 + 152) = 0xEB00000000747570;
  v795 = MEMORY[0x1E69E6158];
  *(v778 + 168) = MEMORY[0x1E69E6158];
  *(v778 + 176) = 0x7954656372756F53;
  *(v778 + 216) = v795;
  *(v778 + 184) = 0xEA00000000006570;
  *(v778 + 192) = 0x6574656D61726150;
  *(v778 + 200) = v943;
  *(v937 + 40) = sub_1CA94C1E8();
  v796 = swift_allocObject();
  *(v796 + 16) = v934;
  strcpy((v796 + 32), "DestinationKey");
  *(v796 + 47) = -18;
  *(v796 + 48) = 0x6E6F69746361;
  *(v796 + 56) = 0xE600000000000000;
  *(v796 + 72) = v795;
  *(v796 + 80) = 0x74616E6974736544;
  *(v796 + 88) = 0xEF657079546E6F69;
  strcpy((v796 + 96), "URLQueryValue");
  *(v796 + 110) = -4864;
  *(v796 + 120) = v795;
  *(v796 + 128) = 0x73616C436D657449;
  *(v796 + 136) = v942;
  *(v796 + 144) = 0xD000000000000013;
  *(v796 + 152) = v939;
  *(v796 + 168) = v795;
  *(v796 + 176) = 0x6574656D61726150;
  *(v796 + 184) = 0xEB00000000495572;
  v797 = swift_allocObject();
  *(v797 + 16) = v940;
  v798 = v938;
  *(v797 + 32) = v930;
  *(v797 + 40) = v798;
  *(v797 + 48) = v936;
  v799 = v913;
  *(v797 + 64) = v795;
  *(v797 + 72) = v799;
  v800 = sub_1CA94C438("The Drafts action to run automatically", 38);
  v928 = v801;
  v929 = v800;
  v802 = sub_1CA94C438("The Drafts action to run automatically", 38);
  v926 = v803;
  v927 = v802;
  *&v940 = &v881;
  MEMORY[0x1EEE9AC00](v802);
  v804 = v952;
  sub_1CA948D98();
  v805 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v805);
  v806 = v954;
  sub_1CA948B68();

  v807 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v797 + 80) = sub_1CA2F9F14(v929, v928, v927, v926, 0, 0, &v881 - v804, &v881 - v806);
  v808 = v949;
  v809 = v935;
  *(v797 + 104) = v949;
  *(v797 + 112) = v809;
  v810 = sub_1CA94C438("Action (Parameter Label)", 24);
  v928 = v811;
  v929 = v810;
  v812 = sub_1CA94C438("Action", 6);
  v926 = v813;
  v927 = v812;
  *&v940 = &v881;
  MEMORY[0x1EEE9AC00](v812);
  v814 = &v881 - v804;
  sub_1CA948D98();
  v815 = v951;
  v816 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v816);
  sub_1CA948B68();

  v817 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v818 = sub_1CA2F9F14(v929, v928, v927, v926, 0, 0, v814, &v881 - v806);
  *(v797 + 144) = v808;
  *(v797 + 120) = v818;
  v819 = sub_1CA94C1E8();
  v820 = v947;
  *(v796 + 192) = sub_1CA2F864C(v819);
  *(v796 + 216) = v820;
  *(v796 + 224) = 0x654B656372756F53;
  *(v796 + 232) = 0xE900000000000079;
  strcpy((v796 + 240), "DraftsAction");
  *(v796 + 253) = 0;
  *(v796 + 254) = -5120;
  v821 = MEMORY[0x1E69E6158];
  *(v796 + 264) = MEMORY[0x1E69E6158];
  *(v796 + 272) = 0x7954656372756F53;
  *(v796 + 312) = v821;
  *(v796 + 280) = 0xEA00000000006570;
  *(v796 + 288) = 0x6574656D61726150;
  *(v796 + 296) = v943;
  *(v937 + 48) = sub_1CA94C1E8();
  v822 = swift_allocObject();
  *(v822 + 16) = v934;
  strcpy((v822 + 32), "DestinationKey");
  *(v822 + 47) = -18;
  *(v822 + 48) = 7955819;
  *(v822 + 56) = 0xE300000000000000;
  *(v822 + 72) = v821;
  *(v822 + 80) = 0x74616E6974736544;
  *(v822 + 88) = 0xEF657079546E6F69;
  strcpy((v822 + 96), "URLQueryValue");
  *(v822 + 110) = -4864;
  *(v822 + 120) = v821;
  *(v822 + 128) = 0x73616C436D657449;
  *(v822 + 136) = v942;
  *(v822 + 144) = 0xD000000000000013;
  *(v822 + 152) = v939;
  *(v822 + 168) = v821;
  *(v822 + 176) = 0x6574656D61726150;
  *(v822 + 184) = 0xEB00000000495572;
  v823 = swift_allocObject();
  *(v823 + 16) = v931;
  v824 = v938;
  *(v823 + 32) = v930;
  *(v823 + 40) = v824;
  *(v823 + 48) = v936;
  v825 = v913;
  *(v823 + 64) = v821;
  *(v823 + 72) = v825;
  v946 = sub_1CA94C438("The URL security key specified in Drafts settings, if it's required", 67);
  v942 = v826;
  *&v940 = sub_1CA94C438("The URL security key specified in Drafts settings, if it's required", 67);
  v939 = v827;
  v948 = &v881;
  MEMORY[0x1EEE9AC00](v940);
  v828 = v952;
  sub_1CA948D98();
  v829 = [v815 bundleURL];
  v938 = &v881;
  MEMORY[0x1EEE9AC00](v829);
  v830 = v954;
  sub_1CA948B68();

  v831 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v823 + 80) = sub_1CA2F9F14(v946, v942, v940, v939, 0, 0, &v881 - v828, &v881 - v830);
  v832 = v935;
  *(v823 + 104) = v949;
  *(v823 + 112) = v832;
  v946 = sub_1CA94C438("Key (Parameter Label)", 21);
  v942 = v833;
  *&v940 = sub_1CA94C438("Key", 3);
  v939 = v834;
  v948 = &v881;
  MEMORY[0x1EEE9AC00](v940);
  sub_1CA948D98();
  v835 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v835);
  sub_1CA948B68();

  v836 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v823 + 120) = sub_1CA2F9F14(v946, v942, v940, v939, 0, 0, &v881 - v828, &v881 - v830);
  v837 = v923;
  *(v823 + 144) = v949;
  *(v823 + 152) = v837;
  v838 = MEMORY[0x1E69E6158];
  *(v823 + 184) = MEMORY[0x1E69E6158];
  *(v823 + 160) = 0x504C4B595A33;
  *(v823 + 168) = 0xE600000000000000;
  v839 = sub_1CA94C1E8();
  v840 = v947;
  *(v822 + 192) = sub_1CA2F864C(v839);
  *(v822 + 216) = v840;
  *(v822 + 224) = 0x654B656372756F53;
  *(v822 + 232) = 0xE900000000000079;
  *(v822 + 240) = 0x6341737466617244;
  *(v822 + 248) = 0xEF79654B6E6F6974;
  *(v822 + 264) = v838;
  *(v822 + 272) = 0x7954656372756F53;
  *(v822 + 312) = v838;
  *(v822 + 280) = 0xEA00000000006570;
  *(v822 + 288) = 0x6574656D61726150;
  *(v822 + 296) = v943;
  v841 = sub_1CA94C1E8();
  v842 = v937;
  *(v937 + 56) = v841;
  v843 = v932;
  v932[42] = v842;
  v843[45] = v933;
  v843[46] = 1701667150;
  v843[47] = 0xE400000000000000;
  v844 = sub_1CA94C438("Run Drafts Action (Action Name)", 31);
  v846 = v845;
  v847 = sub_1CA94C438("Run Drafts Action", 17);
  v849 = v848;
  v948 = &v881;
  MEMORY[0x1EEE9AC00](v847);
  v850 = &v881 - v952;
  sub_1CA948D98();
  v851 = v951;
  v852 = [v951 bundleURL];
  MEMORY[0x1EEE9AC00](v852);
  v853 = &v881 - v954;
  sub_1CA948B68();

  v854 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v855 = sub_1CA2F9F14(v844, v846, v847, v849, 0, 0, v850, v853);
  v856 = v932;
  v932[48] = v855;
  v857 = v941;
  v856[51] = v949;
  v856[52] = v857;
  v856[53] = v914;
  v858 = sub_1CA94C438("Run ${DraftsAction} on ${DraftsInput} (Parameter Summary)", 57);
  v948 = v859;
  v860 = sub_1CA94C438("Run ${DraftsAction} on ${DraftsInput}", 37);
  v862 = v861;
  v949 = &v881;
  MEMORY[0x1EEE9AC00](v860);
  v863 = &v881 - v952;
  sub_1CA948D98();
  v864 = [v851 bundleURL];
  MEMORY[0x1EEE9AC00](v864);
  v865 = &v881 - v954;
  sub_1CA948B68();

  v866 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v867 = sub_1CA2F9F14(v858, v948, v860, v862, 0, 0, v863, v865);
  v868 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v856[57] = v910;
  v856[54] = v868;
  v869 = MEMORY[0x1E69E6158];
  v870 = sub_1CA94C1E8();
  v871 = v924;
  *(v924 + 56) = v870;
  v872 = v899;
  *(v899 + 48) = v871;
  *(v872 + 72) = v933;
  strcpy((v872 + 80), "Capabilities");
  *(v872 + 93) = 0;
  *(v872 + 94) = -5120;
  v873 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v872 + 96) = &unk_1F49F6168;
  *(v872 + 120) = v873;
  *(v872 + 128) = 0x656D65686353;
  *(v872 + 168) = v869;
  *(v872 + 136) = 0xE600000000000000;
  *(v872 + 144) = 0x7374666172642D78;
  *(v872 + 152) = 0xE900000000000035;
  v874 = sub_1CA94C1E8();
  v875 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v876 = v900;
  *(v900 + 32) = v874;
  v876[7] = v875;
  v876[8] = 0x35737466617264;
  v876[9] = 0xE700000000000000;
  v876[15] = v869;
  v876[11] = v869;
  v876[12] = 0x34737466617264;
  v876[13] = 0xE700000000000000;
  v877 = v876;
  v878 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v879 = v898;
  *(v898 + 216) = v878;
  *(v879 + 192) = v877;
  return sub_1CA94C1E8();
}

uint64_t sub_1CA35B280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CA35B2FC()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  v4 = sub_1CA94C438("camera|roll|picture|photo|animated", 34);
  v6 = v5;
  v7 = sub_1CA94C438("camera|roll|picture|photo|animated", 34);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v126 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v127 = v11;
  v12 = &v116 - v126;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v125 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v116 - v123;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v122 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v121 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets the most recent Live Photos from the photo library.", 56);
  v118 = v27;
  v28 = sub_1CA94C438("Gets the most recent Live Photos from the photo library.", 56);
  v30 = v29;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v116 - v126;
  sub_1CA948D98();
  v32 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v116 - v123;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v118, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v122;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v121;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v121 = v38;
  *(inited + 200) = &unk_1F49F61D8;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438("Get Latest Live Photos (Action Name)", 36);
  v117 = v44;
  v118 = v43;
  v45 = sub_1CA94C438("Get Latest Live Photos", 22);
  v47 = v46;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v116 - v126;
  sub_1CA948D98();
  v49 = v124;
  v50 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v123;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v118, v117, v45, v47, 0, 0, v48, &v116 - v51);
  v53 = v122;
  *(inited + 304) = v122;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA9813C0;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  *(v54 + 72) = MEMORY[0x1E69E6370];
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Latest Live Photos (Default Output Name)", 40);
  v117 = v57;
  v118 = v56;
  v58 = sub_1CA94C438("Latest Live Photos", 18);
  v116 = v59;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v116 - v126;
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 96) = sub_1CA2F9F14(v118, v117, v58, v116, 0, 0, v60, &v116 - v51);
  *(v54 + 120) = v53;
  *(v54 + 128) = 0x7365707954;
  *(v54 + 168) = v121;
  *(v54 + 136) = 0xE500000000000000;
  *(v54 + 144) = &unk_1F49F6208;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 1) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000012;
  *(v66 + 48) = 0x80000001CA99B980;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  v67 = MEMORY[0x1E69E6530];
  *(v66 + 80) = 1;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Key";
  *(v66 + 120) = 0xD000000000000015;
  *(v66 + 128) = 0x80000001CA9A9870;
  *(v66 + 144) = v63;
  *(v66 + 152) = @"StepperDescription";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"DefaultValue";
  v71 = @"Key";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438("Number of Live Photos (WFGetLatestPhotoCount)", 45);
  v116 = v74;
  v75 = sub_1CA94C438("Number of Live Photos", 21);
  v77 = v76;
  v117 = &v116;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v116 - v126;
  sub_1CA948D98();
  v79 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v116 - v123;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 160) = sub_1CA2F9F14(v73, v116, v75, v77, 0, 0, v78, v80);
  *(v66 + 184) = v122;
  *(v66 + 192) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438("%d Live Photos", v116);
  v116 = v84;
  v117 = v83;
  v85 = v84;
  v132 = 0;
  v133 = 0xE000000000000000;
  sub_1CA94D408();

  v132 = v83;
  v133 = v85;
  v130 = 10;
  v131 = 0xE100000000000000;
  v128 = 32;
  v129 = 0xE100000000000000;
  sub_1CA27BAF0();
  v132 = sub_1CA94D1B8();
  v133 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v88 = v132;
  v89 = v133;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v116 - v126;
  sub_1CA948D98();
  v91 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v116 - v123;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v88, v89, v117, v116, 0, 0, v90, v92);
  *(v66 + 224) = v122;
  *(v66 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v95 = sub_1CA94C1E8();
  v96 = sub_1CA2F864C(v95);
  v97 = v119;
  v119[4] = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v97;
  *(inited + 384) = v98;
  *(inited + 392) = @"ParameterSummary";
  v99 = @"ParameterSummary";
  v100 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount} (Parameter Summary)", 59);
  v102 = v101;
  v103 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount}", 39);
  v105 = v104;
  v122 = &v116;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v116 - v126;
  sub_1CA948D98();
  v107 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v116 - v123;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  v111 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v112 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v111;
  *(inited + 424) = v112;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v121;
  *(inited + 440) = &unk_1F49F6238;
  v113 = @"RequiredResources";
  v114 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v114;
  *(inited + 480) = 0x6F6850206576694CLL;
  *(inited + 488) = 0xEA00000000006F74;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA35C1E0()
{
  v189 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A9990;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("maps|search|query|place|location|nearby|find|local|businesses", 61);
  v6 = v5;
  v7 = sub_1CA94C438("maps|search|query|place|location|nearby|find|local|businesses", 61);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v204 = v11;
  v205 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v184 - v205;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v200 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v203 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v202 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v184 - v202;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v201 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v198 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v196 = sub_1CA94C438("A location to search near.", 26);
  *&v195 = v26;
  v27 = sub_1CA94C438("A location to search near.", 26);
  v29 = v28;
  v197 = &v184;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v184 - v205;
  sub_1CA948D98();
  v31 = v200;
  v32 = [v200 bundleURL];
  v199 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v184 - v202;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v196, v195, v27, v29, 0, 0, v30, v34);
  v36 = v201;
  *(v23 + 64) = v201;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v196 = sub_1CA94C438("Finds nearby places using Maps, and returns the results.", 56);
  *&v195 = v38;
  v39 = sub_1CA94C438("Finds nearby places using Maps, and returns the results.", 56);
  v41 = v40;
  v197 = &v184;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v184 - v205;
  sub_1CA948D98();
  v43 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v184 - v202;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v196, v195, v39, v41, 0, 0, v42, v44);
  *(v23 + 104) = v36;
  *(v23 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v47 = sub_1CA94C1E8();
  v48 = v198;
  v49 = sub_1CA6B3784(v47);
  v50 = v199;
  v199[20] = v49;
  v50[23] = v48;
  v50[24] = @"Input";
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  v195 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  v52 = MEMORY[0x1E69E6370];
  *(v51 + 48) = 0;
  *(v51 + 72) = v52;
  strcpy((v51 + 80), "ParameterKey");
  *(v51 + 93) = 0;
  *(v51 + 94) = -5120;
  *(v51 + 96) = 0x7475706E494657;
  *(v51 + 104) = 0xE700000000000000;
  *(v51 + 120) = MEMORY[0x1E69E6158];
  *(v51 + 128) = 0x6465726975716552;
  *(v51 + 136) = 0xE800000000000000;
  *(v51 + 144) = 0;
  *(v51 + 168) = v52;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v196;
  *(v51 + 192) = &unk_1F49F62A8;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v198 = v55;
  v50[25] = v54;
  v50[28] = v55;
  v50[29] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438("Find Places (Action Name)", 25);
  v193 = v58;
  v59 = sub_1CA94C438("Find Places", 11);
  v61 = v60;
  v194 = &v184;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v184 - v205;
  sub_1CA948D98();
  v63 = v200;
  v64 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v202;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v193, v59, v61, 0, 0, v62, &v184 - v65);
  v68 = v199;
  v199[30] = v67;
  v68[33] = v201;
  v68[34] = @"Output";
  v69 = swift_allocObject();
  *(v69 + 16) = v195;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 1;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438("Local Businesses (Default Output Name)", 38);
  *&v195 = v72;
  v73 = sub_1CA94C438("Local Businesses", 16);
  v75 = v74;
  v197 = &v184;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v184 - v205;
  sub_1CA948D98();
  v77 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v71, v195, v73, v75, 0, 0, v76, &v184 - v65);
  *(v69 + 168) = v201;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v196;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F49F62D8;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v199;
  v199[35] = v80;
  v81[38] = v198;
  v81[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_1CA981470;
  v197 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  v188 = xmmword_1CA981370;
  *(v82 + 16) = xmmword_1CA981370;
  *(v82 + 64) = v79;
  *(v82 + 32) = @"Class";
  *(v82 + 40) = 0xD000000000000013;
  *(v82 + 48) = 0x80000001CA99B730;
  v194 = @"Class";
  v83 = @"Parameters";
  *(v82 + 72) = sub_1CA94C368();
  *(v82 + 80) = 1;
  *(v82 + 104) = MEMORY[0x1E69E6370];
  *(v82 + 112) = @"Key";
  *(v82 + 120) = 0x7475706E494657;
  *(v82 + 128) = 0xE700000000000000;
  *(v82 + 144) = v79;
  *(v82 + 152) = @"Label";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v84;
  v87 = v85;
  v192 = v86;
  v193 = v87;
  v88 = sub_1CA94C438("Location (WFInput)", 18);
  v90 = v89;
  v91 = sub_1CA94C438("Location", 8);
  v93 = v92;
  v191 = &v184;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v184 - v205;
  sub_1CA948D98();
  v95 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v184 - v202;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v88, v90, v91, v93, 0, 0, v94, v96);
  *(v82 + 184) = v201;
  *(v82 + 160) = v98;
  *(v82 + 192) = sub_1CA94C368();
  *(v82 + 224) = MEMORY[0x1E69E6370];
  *(v82 + 200) = 1;
  _s3__C3KeyVMa_0(0);
  v191 = v99;
  v190 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v100 = sub_1CA94C1E8();
  v101 = sub_1CA2F864C(v100);
  *(v198 + 32) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1CA981400;
  *(v102 + 32) = v194;
  *(v102 + 40) = 0xD000000000000014;
  *(v102 + 48) = 0x80000001CA99B500;
  *(v102 + 64) = MEMORY[0x1E69E6158];
  *(v102 + 72) = @"Description";
  v103 = @"Description";
  v104 = sub_1CA94C438("Keywords used to search for places. (WFSearchQuery)", 51);
  v186 = v105;
  v106 = sub_1CA94C438("Keywords used to search for places.", 35);
  v108 = v107;
  v187 = &v184;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v184 - v205;
  sub_1CA948D98();
  v110 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v184 - v202;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v102 + 80) = sub_1CA2F9F14(v104, v186, v106, v108, 0, 0, v109, v111);
  v113 = v192;
  *(v102 + 104) = v201;
  *(v102 + 112) = v113;
  strcpy((v102 + 120), "WFSearchQuery");
  *(v102 + 134) = -4864;
  v114 = v193;
  *(v102 + 144) = MEMORY[0x1E69E6158];
  *(v102 + 152) = v114;
  v115 = sub_1CA94C438("Search (WFSearchQuery)", 22);
  v185 = v116;
  v186 = v115;
  v117 = sub_1CA94C438("Search", 6);
  v184 = v118;
  v187 = &v184;
  MEMORY[0x1EEE9AC00](v117);
  v119 = v205;
  sub_1CA948D98();
  v120 = v200;
  v121 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v184 - v202;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v102 + 160) = sub_1CA2F9F14(v186, v185, v117, v184, 0, 0, &v184 - v119, v122);
  *(v102 + 184) = v201;
  *(v102 + 192) = @"Placeholder";
  v124 = @"Placeholder";
  v125 = sub_1CA94C438("Places (WFSearchQuery)", 22);
  v185 = v126;
  v186 = v125;
  v127 = sub_1CA94C438("Places", 6);
  v184 = v128;
  v187 = &v184;
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948D98();
  v129 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v202;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v102 + 200) = sub_1CA2F9F14(v186, v185, v127, v184, 0, 0, &v184 - v119, &v184 - v130);
  v132 = v201;
  *(v102 + 224) = v201;
  *(v102 + 232) = @"Prompt";
  v133 = @"Prompt";
  v134 = sub_1CA94C438("What are you looking for? (WFSearchQuery)", 41);
  v185 = v135;
  v186 = v134;
  v136 = sub_1CA94C438("What are you looking for?", 25);
  v138 = v137;
  v187 = &v184;
  MEMORY[0x1EEE9AC00](v136);
  v139 = &v184 - v205;
  sub_1CA948D98();
  v140 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v102 + 240) = sub_1CA2F9F14(v186, v185, v136, v138, 0, 0, v139, &v184 - v130);
  *(v102 + 264) = v132;
  *(v102 + 272) = @"TextAlignment";
  v142 = MEMORY[0x1E69E6158];
  *(v102 + 304) = MEMORY[0x1E69E6158];
  *(v102 + 280) = 0x7468676952;
  *(v102 + 288) = 0xE500000000000000;
  v187 = @"TextAlignment";
  v143 = sub_1CA94C1E8();
  v144 = sub_1CA2F864C(v143);
  *(v198 + 40) = v144;
  v145 = swift_allocObject();
  *(v145 + 16) = v188;
  *(v145 + 32) = v194;
  *(v145 + 40) = 0xD000000000000026;
  *(v145 + 48) = 0x80000001CA9A9BD0;
  v146 = v192;
  *(v145 + 64) = v142;
  *(v145 + 72) = v146;
  strcpy((v145 + 80), "WFSearchRadius");
  *(v145 + 95) = -18;
  v147 = v193;
  *(v145 + 104) = v142;
  *(v145 + 112) = v147;
  v148 = sub_1CA94C438("Radius (WFSearchRadius)", 23);
  v150 = v149;
  v151 = sub_1CA94C438("Radius", 6);
  v153 = v152;
  *&v195 = &v184;
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v184 - v205;
  sub_1CA948D98();
  v155 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = &v184 - v202;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v145 + 120) = sub_1CA2F9F14(v148, v150, v151, v153, 0, 0, v154, v156);
  v158 = v187;
  *(v145 + 144) = v201;
  *(v145 + 152) = v158;
  *(v145 + 160) = 0x7468676952;
  *(v145 + 168) = 0xE500000000000000;
  v159 = MEMORY[0x1E69E6158];
  *(v145 + 184) = MEMORY[0x1E69E6158];
  *(v145 + 192) = @"WFUnitType";
  *(v145 + 224) = v159;
  *(v145 + 200) = 0x6874676E654CLL;
  *(v145 + 208) = 0xE600000000000000;
  v160 = @"WFUnitType";
  v161 = sub_1CA94C1E8();
  v162 = sub_1CA2F864C(v161);
  v163 = v198;
  *(v198 + 48) = v162;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v165 = v199;
  v199[40] = v163;
  v165[43] = v164;
  v165[44] = @"ParameterSummary";
  v166 = @"ParameterSummary";
  v167 = sub_1CA94C438("Find ${WFSearchQuery} near ${WFInput} (Parameter Summary)", 57);
  v169 = v168;
  v170 = sub_1CA94C438("Find ${WFSearchQuery} near ${WFInput}", 37);
  v172 = v171;
  MEMORY[0x1EEE9AC00](v170);
  v173 = &v184 - v205;
  sub_1CA948D98();
  v174 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v184 - v202;
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v177 = sub_1CA2F9F14(v167, v169, v170, v172, 0, 0, v173, v175);
  v178 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v179 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v180 = v199;
  v199[45] = v178;
  v180[48] = v179;
  v180[49] = @"RequiredResources";
  v180[50] = &unk_1F49F6308;
  v180[53] = v196;
  v180[54] = @"ResidentCompatible";
  v180[58] = MEMORY[0x1E69E6370];
  *(v180 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v181 = @"RequiredResources";
  v182 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA35D8FC()
{
  v115 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000025;
  *(inited + 48) = 0x80000001CA9A9CA0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("mdm|content source|data info", 28);
  v6 = v5;
  v7 = sub_1CA94C438("mdm|content source|data info", 28);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v119 = v11;
  v121 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v107 - v121;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v118 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v117 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v120 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v107 - v120;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v116 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v114 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Shows the Content Source of Input contents", 42);
  v112 = v24;
  v25 = sub_1CA94C438("Shows the Content Source of Input contents", 42);
  v27 = v26;
  v113 = &v107;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v107 - v121;
  sub_1CA948D98();
  v29 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v107 - v120;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v112, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v116;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v114;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA99B480;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD00000000000002CLL;
  *(inited + 208) = 0x80000001CA9A9D20;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v111 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E49;
  *(v37 + 104) = 0xE500000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v114;
  *(v37 + 192) = &unk_1F49F6348;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v38;
  *(inited + 312) = @"Discoverable";
  *(inited + 320) = 0;
  *(inited + 344) = v38;
  *(inited + 352) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Discoverable";
  v46 = @"Name";
  v47 = sub_1CA94C438("Show Content Attribution (Action Name)", 38);
  v49 = v48;
  v50 = sub_1CA94C438("Show Content Attribution", 24);
  v52 = v51;
  v113 = &v107;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v107 - v121;
  sub_1CA948D98();
  v54 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v107 - v120;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  *(inited + 384) = v116;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v113 = swift_allocObject();
  *(v113 + 1) = xmmword_1CA9813B0;
  v112 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_allocObject();
  *(v57 + 16) = v111;
  *(v57 + 32) = @"Class";
  *(v57 + 40) = 0xD000000000000019;
  *(v57 + 48) = 0x80000001CA99B030;
  v58 = MEMORY[0x1E69E6158];
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"Key";
  *(v57 + 80) = 0x7475706E49;
  *(v57 + 88) = 0xE500000000000000;
  *(v57 + 104) = v58;
  *(v57 + 112) = @"Label";
  v59 = @"Parameters";
  v60 = @"Class";
  v61 = @"Key";
  v62 = @"Label";
  v63 = sub_1CA94C438("Input (Input)", 13);
  v109 = v64;
  v110 = v63;
  v65 = sub_1CA94C438("Input", 5);
  v108 = v66;
  *&v111 = &v107;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v107 - v121;
  sub_1CA948D98();
  v68 = v118;
  v69 = [v118 bundleURL];
  v107 = &v107;
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v107 - v120;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 120) = sub_1CA2F9F14(v110, v109, v65, v108, 0, 0, v67, v70);
  v72 = v116;
  *(v57 + 144) = v116;
  *(v57 + 152) = @"Placeholder";
  v73 = @"Placeholder";
  v74 = sub_1CA94C438("Input (Input)", 13);
  v109 = v75;
  v110 = v74;
  v76 = sub_1CA94C438("Input", 5);
  v108 = v77;
  *&v111 = &v107;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v107 - v121;
  sub_1CA948D98();
  v79 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v107 - v120;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v110, v109, v76, v108, 0, 0, v78, v80);
  *(v57 + 184) = v72;
  *(v57 + 160) = v82;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v83 = sub_1CA94C1E8();
  v84 = sub_1CA2F864C(v83);
  v85 = v113;
  v113[4] = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v85;
  *(inited + 424) = v86;
  *(inited + 432) = @"ParameterSummary";
  v87 = @"ParameterSummary";
  v88 = sub_1CA94C438("Show Content Attribution of ${Input} (Parameter Summary)", 56);
  v90 = v89;
  v91 = sub_1CA94C438("Show Content Attribution of ${Input}", 36);
  v93 = v92;
  v116 = &v107;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v107 - v121;
  sub_1CA948D98();
  v95 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v107 - v120;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v88, v90, v91, v93, 0, 0, v94, v96);
  v99 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v100 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v99;
  *(inited + 464) = v100;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F49F6378;
  v101 = v114;
  *(inited + 504) = v114;
  *(inited + 512) = @"UserInterfaceClasses";
  v102 = @"RequiredResources";
  v103 = @"UserInterfaceClasses";
  v104 = sub_1CA94C1E8();
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 520) = v104;
  *(inited + 552) = @"UserInterfaces";
  *(inited + 584) = v101;
  *(inited + 560) = &unk_1F49F6408;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v105 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA35E684(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1CA35E710(uint64_t a1, _OWORD *a2)
{
  v2 = *(*(a1 + 64) + 40);
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1CA35E738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1CA35E784(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA35E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_5(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v6 = OUTLINED_FUNCTION_13_2(v5);

  return v7(v6);
}

uint64_t sub_1CA35E8C4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
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

uint64_t sub_1CA35E9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA35EAB4;

  return sub_1CA35E7CC(a1, a2, a3, v8);
}

uint64_t sub_1CA35EAB4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1CA35EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_5(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v6 = OUTLINED_FUNCTION_13_2(v5);

  return v7(v6);
}

uint64_t sub_1CA35ECDC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
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

uint64_t sub_1CA35EDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA35FF60;

  return sub_1CA35EBE4(a1, a2, a3, v8);
}

uint64_t sub_1CA35EEB4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 240) = a4;
  *(v5 + 248) = v4;
  *(v5 + 224) = a1;
  *(v5 + 232) = a3;
  *(v5 + 256) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA35EED4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[28];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA35EFC4;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
  OUTLINED_FUNCTION_3_0(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_3();
  [v1 getStringRepresentation_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA35EFC4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA35F0C0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_9();
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_14_10(v1);

  return v3(v2);
}

uint64_t sub_1CA35F1AC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  v2[38] = v4;
  v2[39] = v5;
  v2[40] = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA35F2B0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_8();
  if (v3)
  {
    *(v0 + 208) = v2;
    OUTLINED_FUNCTION_6_17(v1);
    OUTLINED_FUNCTION_7_12();
    v4 = sub_1CA94D1E8();
  }

  else
  {
    *(v0 + 176) = v2;
    OUTLINED_FUNCTION_6_17(v1);
    OUTLINED_FUNCTION_7_12();
    v4 = sub_1CA94D238();
  }

  v5 = v4;

  OUTLINED_FUNCTION_2_4();

  return v6(v5 & 1);
}

uint64_t sub_1CA35F368()
{
  OUTLINED_FUNCTION_14();
  swift_willThrow();
  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA35F3D0()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA35F430(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1CA35E684(v4, a3);
  }

  v6 = sub_1CA94C3A8();
  return sub_1CA35E738(v4, v6, v7);
}

uint64_t sub_1CA35F4A4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2A715C;

  return sub_1CA35EEB4(a1, a2, a3, v8);
}

uint64_t sub_1CA35F560(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 240) = a4;
  *(v5 + 248) = v4;
  *(v5 + 224) = a1;
  *(v5 + 232) = a3;
  *(v5 + 256) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA35F580()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[28];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA35F670;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
  OUTLINED_FUNCTION_3_0(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_3();
  [v1 getStringRepresentation_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA35F670()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA35F76C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_9();
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_14_10(v1);

  return v3(v2);
}

uint64_t sub_1CA35F858()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  v2[38] = v4;
  v2[39] = v5;
  v2[40] = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA35F95C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_8();
  if (v3)
  {
    *(v0 + 208) = v2;
    OUTLINED_FUNCTION_6_17(v1);
    OUTLINED_FUNCTION_7_12();
    v4 = sub_1CA94D1E8();
  }

  else
  {
    *(v0 + 176) = v2;
    OUTLINED_FUNCTION_6_17(v1);
    OUTLINED_FUNCTION_7_12();
    v4 = sub_1CA94D238();
  }

  v5 = v4;

  OUTLINED_FUNCTION_2_4();

  return v6((v5 & 1) == 0);
}

uint64_t sub_1CA35FA18(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA35FF98;

  return sub_1CA35F560(a1, a2, a3, v8);
}

uint64_t sub_1CA35FAD4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA35FB28(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA35FBA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_1CA35FD0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
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
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t ToolKitValueTransformable.transform<A>(using:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_4_19();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_19(v11);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_150();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_4_19();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_19(v11);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_150();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1CA3601B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of ToolKitValueTransformer.transform(input:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_4_19();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_19(v11);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_150();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of BidirectionalToolKitValueTransformer.transform(input:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_4_19();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_19(v11);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_150();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t WFWorkflowActionTree.availableVariableNames(at:)()
{
  v25 = MEMORY[0x1E69E7CD0];
  sub_1CA367290();
  v1 = v0;
  result = sub_1CA25B410(v0);
  v23 = result;
  if (result)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1CCAA22D0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }
      }

      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v6 = sub_1CA365194();
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        v10 = v25;
        if (*(v25 + 16))
        {
          sub_1CA94D918();
          sub_1CA94C458();
          sub_1CA94D968();
          OUTLINED_FUNCTION_60_0();
          v13 = ~v12;
          while (1)
          {
            v14 = v11 & v13;
            if (((*(v10 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
            {
              break;
            }

            v15 = (*(v10 + 48) + 16 * v14);
            if (*v15 != v8 || v9 != v15[1])
            {
              v17 = sub_1CA94D7F8();
              v11 = v14 + 1;
              if ((v17 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_18;
          }
        }

        sub_1CA94C218();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_1CA26DADC();
          v4 = v21;
        }

        v19 = *(v4 + 16);
        v18 = *(v4 + 24);
        if (v19 >= v18 >> 1)
        {
          OUTLINED_FUNCTION_64(v18);
          sub_1CA26DADC();
          v4 = v22;
        }

        *(v4 + 16) = v19 + 1;
        v20 = v4 + 16 * v19;
        *(v20 + 32) = v8;
        *(v20 + 40) = v9;
        sub_1CA368948(&v24, v8, v9);
      }

      else
      {
LABEL_18:
      }

      if (v3 == v23)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
LABEL_27:

    return v4;
  }

  return result;
}

Swift::Bool __swiftcall WFWorkflowActionTree.isVariableNameAvailable(_:at:)(Swift::String _, Swift::Int at)
{
  OUTLINED_FUNCTION_44_4();
  sub_1CA9491F8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_69();
  sub_1CA366EB4();
  v3 = sub_1CA949198();
  v4 = OUTLINED_FUNCTION_104();
  v5(v4);
  return (v3 & 1) == 0;
}

uint64_t WFWorkflowActionTree.__possibleContentClasses(namedVariable:at:)()
{
  WFWorkflowActionTree.possibleContentClasses(namedVariable:at:)();
  sub_1CA360CAC();
  OUTLINED_FUNCTION_87();

  return v0;
}

void WFWorkflowActionTree.possibleContentClasses(namedVariable:at:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v51 = v4;
  v52 = v5;
  v6 = sub_1CA94C368();
  v54 = v1;
  v7 = [v1 actionsProvidingVariableNamed:v6 atIndex:v3];

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_5_3();
  v8 = sub_1CA94C658();

  v9 = sub_1CA25B410(v8);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v53 = OBJC_IVAR___WFWorkflowActionTree_variableAvailability;
    v55 = v8 & 0xC000000000000001;
    v48 = v8 + 32;
    v13 = MEMORY[0x1E69E7CC0];
    v49 = v9;
    v50 = v8;
    while (1)
    {
      sub_1CA275D70(v11, v55 == 0, v8);
      v14 = v55 ? MEMORY[0x1CCAA22D0](v11, v8) : *(v48 + 8 * v11);
      v15 = v14;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v17 = [v14 identifier];
      v18 = sub_1CA94C3A8();
      v20 = v19;

      v59 = v18;
      v60 = v20;
      MEMORY[0x1EEE9AC00](v21);
      OUTLINED_FUNCTION_98();
      *(v22 - 16) = &v59;
      LOBYTE(v17) = sub_1CA2BFD14(sub_1CA2E9370, v23, &unk_1F49F6438);
      v56 = v12;

      if (v17 & 1) != 0 && (v59 = v51, v60 = v52, strcpy(v57, "Repeat Index"), v57[13] = 0, v58 = -5120, sub_1CA27BAF0(), (sub_1CA94D238()))
      {
        v24 = *(v13 + 16);
        v25 = 32;
        while (v24)
        {
          v26 = *(v13 + v25);
          v25 += 8;
          --v24;
          if (v26 == sub_1CA25B3D0(0, &qword_1EC4447F0, 0x1E6996EC0))
          {

            goto LABEL_28;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_20_7();
          sub_1CA2E5130();
          v13 = v46;
        }

        v12 = v56;
        v44 = *(v13 + 16);
        v43 = *(v13 + 24);
        if (v44 >= v43 >> 1)
        {
          OUTLINED_FUNCTION_64(v43);
          OUTLINED_FUNCTION_20_7();
          sub_1CA2E5130();
          v13 = v47;
        }

        v45 = sub_1CA25B3D0(0, &qword_1EC4447F0, 0x1E6996EC0);
        *(v13 + 16) = v44 + 1;
        *(v13 + 8 * v44 + 32) = v45;
      }

      else
      {
        v27 = *&v54[v53];
        v28 = v54;
        v29 = v15;
        v30 = sub_1CA365410(v29, v27, v28, v29);
        v31 = v30;
        v32 = *(v30 + 16);
        if (v32)
        {
          v33 = 0;
          v34 = v30 + 32;
          while (v33 < *(v31 + 16))
          {
            v35 = *(v34 + 8 * v33++);
            v36 = *(v13 + 16);
            v37 = 32;
            while (v36)
            {
              v38 = *(v13 + v37);
              v37 += 8;
              --v36;
              if (v38 == v35)
              {
                goto LABEL_25;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_20_7();
              sub_1CA2E5130();
              v13 = v41;
            }

            v40 = *(v13 + 16);
            v39 = *(v13 + 24);
            if (v40 >= v39 >> 1)
            {
              OUTLINED_FUNCTION_64(v39);
              OUTLINED_FUNCTION_20_7();
              sub_1CA2E5130();
              v13 = v42;
            }

            *(v13 + 16) = v40 + 1;
            *(v13 + 8 * v40 + 32) = v35;
LABEL_25:
            if (v33 == v32)
            {

              v10 = v49;
              v8 = v50;
              goto LABEL_28;
            }
          }

          __break(1u);
          break;
        }

LABEL_28:
        v12 = v56;
      }

      if (v11 == v10)
      {

        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_37:
    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA360CAC()
{
  OUTLINED_FUNCTION_71_0();
  if (*(v0 + 16))
  {
    v1 = OUTLINED_FUNCTION_14_11();
    sub_1CA2B8D64(v1, v2, v3);
    do
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
      OUTLINED_FUNCTION_52_2(v5, v6);
      OUTLINED_FUNCTION_36_4();
      if (v8)
      {
        sub_1CA2B8D64(v7 > 1, v4, 1);
      }

      OUTLINED_FUNCTION_45_4();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_1CA360D8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8DA8(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1CA2B8DA8(v5 > 1, v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1CA2C0A20(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CA360EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8ED4(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1CA2C9578(v4, v10);
      v5 = OUTLINED_FUNCTION_116();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C0, &qword_1CA981A50);
      swift_dynamicCast();
      v12 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1CA2B8ED4(v7 > 1, v8 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v8 + 1;
      sub_1CA27F268(&v11, v2 + 40 * v8 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CA360FF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_14_11();
    sub_1CA2B8DA8(v4, v5, v6);
    v2 = v12;
    v7 = a1 + 40;
    do
    {
      sub_1CA94C218();
      swift_dynamicCast();
      v12 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1CA2B8DA8(v8 > 1, v9 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v9 + 1;
      sub_1CA2C0A20(&v11, (v2 + 32 * v9 + 32));
      v7 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CA3610E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_14_11();
    sub_1CA271524(v4, v5, v6, v7, v8, v9, v10);
    v2 = v27;
    v11 = a1 + 32;
    do
    {
      sub_1CA25B374(v11, v24);
      swift_dynamicCast();
      v12 = v25;
      v13 = v26;
      v27 = v2;
      v14 = *(v2 + 16);
      if (v14 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_43_5();
        sub_1CA271524(v16, v17, v18, v19, v20, v21, v22);
        v2 = v27;
      }

      *(v2 + 16) = v14 + 1;
      v15 = v2 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v13;
      v11 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1CA3611E0()
{
  OUTLINED_FUNCTION_71_0();
  if (*(v0 + 16))
  {
    v1 = OUTLINED_FUNCTION_14_11();
    sub_1CA2B8FC4(v1, v2, v3);
    do
    {
      sub_1CA94C218();
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444050, &unk_1CA9842E0);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
      OUTLINED_FUNCTION_52_2(v5, v6);
      OUTLINED_FUNCTION_36_4();
      if (v8)
      {
        sub_1CA2B8FC4(v7 > 1, v4, 1);
      }

      OUTLINED_FUNCTION_45_4();
    }

    while (!v9);
  }

  OUTLINED_FUNCTION_73();
}

void sub_1CA3612C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1CA94D328();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8DA8(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v12;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = OUTLINED_FUNCTION_106();
          MEMORY[0x1CCAA22D0](v7);
        }

        else
        {
          v8 = *(a1 + 8 * v5 + 32);
        }

        sub_1CA25B3D0(0, &qword_1EC444818, 0x1E6996ED0);
        swift_dynamicCast();
        v12 = v6;
        OUTLINED_FUNCTION_36_4();
        if (v10)
        {
          sub_1CA2B8DA8(v9 > 1, v1, 1);
          v6 = v12;
        }

        ++v5;
        *(v6 + 16) = v1;
        sub_1CA2C0A20(&v11, (v6 + 32 * v2 + 32));
      }

      while (v4 != v5);
    }
  }
}

uint64_t sub_1CA361448(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8DA8(0, v1, 0);
    v2 = v13;
    v4 = a1 + 32;
    do
    {
      sub_1CA94C218();
      v5 = OUTLINED_FUNCTION_116();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      swift_dynamicCast();
      v13 = v2;
      v7 = *(v2 + 16);
      if (v7 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_43_5();
        sub_1CA2B8DA8(v8, v9, v10);
        v2 = v13;
      }

      *(v2 + 16) = v7 + 1;
      sub_1CA2C0A20(&v12, (v2 + 32 * v7 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void WFWorkflowActionTree.actionsProvidingVariable(named:at:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  sub_1CA9491F8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_104();
  sub_1CA366EB4();
  OUTLINED_FUNCTION_71_3(&qword_1EC4447F8);
  v5 = sub_1CA94CA28();
  if (!v5)
  {
    v22 = OUTLINED_FUNCTION_106();
    v23(v22);
LABEL_12:
    OUTLINED_FUNCTION_36();
    return;
  }

  v6 = v5;
  v29[4] = MEMORY[0x1E69E7CC0];
  sub_1CA94D508();
  v7 = sub_1CA9490E8();
  OUTLINED_FUNCTION_1_0();
  v28 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  sub_1CA94C9F8();
  if (v6 < 0)
  {
    goto LABEL_15;
  }

  v25 = v7;
  v26 = &v24;
  v27 = v3;
  while (1)
  {
    v13 = sub_1CA94CB28();
    v15 = *v14;
    v13(v29, 0);
    v16 = [v1 actions];
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v17 = sub_1CA94C658();

    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = OUTLINED_FUNCTION_119();
      MEMORY[0x1CCAA22D0](v19);
      goto LABEL_8;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v18 = *(v17 + 8 * v15 + 32);
LABEL_8:

    sub_1CA94D4D8();
    sub_1CA94D518();
    sub_1CA94D528();
    sub_1CA94D4E8();
    sub_1CA94CA68();
    if (!--v6)
    {
      (*(v28 + 8))(v12, v25);
      v20 = OUTLINED_FUNCTION_106();
      v21(v20);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void WFWorkflowActionTree.availableOutputActions(at:)()
{
  OUTLINED_FUNCTION_71_0();
  sub_1CA367290();
  v1 = v0;
  v14 = MEMORY[0x1E69E7CC0];
  v2 = sub_1CA25B410(v0);
  v3 = 0;
LABEL_2:
  v4 = v3;
  while (1)
  {
    while (1)
    {
      if (v4 == v2)
      {

        OUTLINED_FUNCTION_73();
        return;
      }

      if ((v1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v6 = OUTLINED_FUNCTION_106();
      v7 = MEMORY[0x1CCAA22D0](v6);
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_19;
      }

      v9 = *(v7 + 16);
      v10 = *(v7 + 40);
      v12 = *(v7 + 32);
      v13 = *(v7 + 24);
      sub_1CA36D3B8(v9, v13, v12, v10);
      swift_unknownObjectRelease();
      if (v10 == 1)
      {
        v3 = v4;
        goto LABEL_12;
      }

      sub_1CA36D434(v9, v13, v12, v10);
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v3 = v4 + 1;
    v5 = *(v1 + 32 + 8 * v4++);
    if (*(v5 + 40) == 1)
    {
      *(v5 + 16);
LABEL_12:
      MEMORY[0x1CCAA1490]();
      v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
      {
        OUTLINED_FUNCTION_64(v11);
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1CA361BD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1CA94C3A8();
  v10 = v9;
  v11 = a1;
  LOBYTE(a5) = a5(v8, v10, a4);

  return a5 & 1;
}

id WFWorkflowActionTree.__possibleContentClasses(action:)(void *a1)
{
  v3 = v1;
  v4 = a1;
  OUTLINED_FUNCTION_30_5();
  sub_1CA365410(v5, v6, v7, v5);
  sub_1CA360CAC();
  OUTLINED_FUNCTION_87();

  return v3;
}

uint64_t WFWorkflowActionTree.possibleContentClasses(action:)(void *a1)
{
  v3 = v1;
  v4 = a1;
  OUTLINED_FUNCTION_30_5();

  return sub_1CA365410(v5, v6, v7, v5);
}

void __swiftcall WFWorkflowActionTree.outputAction(id:)(WFAction_optional *__return_ptr retstr, Swift::String id)
{
  v3 = v2;
  v4 = *(*&v2[OBJC_IVAR___WFWorkflowActionTree_variableAvailability] + 64);
  if (*(v4 + 16))
  {
    OUTLINED_FUNCTION_44_4();
    sub_1CA94C218();
    v5 = OUTLINED_FUNCTION_69();
    v7 = sub_1CA271BF8(v5, v6);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);

      v10 = [v3 actionAtIndex_];
    }

    else
    {
    }
  }
}

uint64_t WFWorkflowActionTree.shortcutInputActionOutput.getter()
{
  v0 = type metadata accessor for ActionOutput();

  return MEMORY[0x1EEE6C000](v0, &unk_1EC442DE0);
}

uint64_t WFWorkflowActionTree.outputs(for:)(void *a1)
{
  v1 = sub_1CA361F1C(a1);
  if (v1 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444800, &qword_1CA984018);
    OUTLINED_FUNCTION_5_3();
    v2 = sub_1CA94D608();
  }

  else
  {
    sub_1CA94C218();
    sub_1CA94D808();
    v2 = v1;
  }

  return v2;
}

uint64_t sub_1CA361F1C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  if ([a1 isEligibleForOutputVariable])
  {
    type metadata accessor for ActionOutput();
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = a1;
    *(v5 + 40) = 1;
    MEMORY[0x1CCAA1490](a1);
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    sub_1CA94C6E8();
    v4 = v52;
  }

  v6 = [a1 identifier];
  v7 = sub_1CA94C3A8();
  v9 = v8;

  v50 = v7;
  v51 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v50;
  LOBYTE(v6) = sub_1CA2BFD14(sub_1CA36DB00, v47, &unk_1F49F6478);

  if (v6)
  {
    v11 = sub_1CA94C368();
    v12 = [a1 parameterStateForKey_];

    if (v12)
    {
      v49 = v2;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 string];
        v16 = sub_1CA94C3A8();
        v18 = v17;

        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          v20 = a1;
          v21 = [v14 string];
          v22 = sub_1CA94C3A8();
          v24 = v23;

          type metadata accessor for ActionOutput();
          v25 = swift_allocObject();
          *(v25 + 16) = v20;
          *(v25 + 24) = v22;
          *(v25 + 32) = v24;
          *(v25 + 40) = 0;
          MEMORY[0x1CCAA1490]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1CA94C698();
          }

          sub_1CA94C6E8();
          v4 = v52;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v26 = [a1 identifier];
  v27 = sub_1CA94C3A8();
  v29 = v28;

  v50 = v27;
  v51 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v48 = &v50;
  LOBYTE(v26) = sub_1CA2BFD14(sub_1CA36DB00, v47, &unk_1F49F6438);

  if (v26)
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = v31;
      v33 = a1;
      if ([v32 mode])
      {
LABEL_32:

        return v4;
      }

      v34 = v33;
      v35 = sub_1CA363C0C(v32);
      if (v36)
      {
LABEL_19:

        goto LABEL_32;
      }

      v37 = v35;
      type metadata accessor for ActionOutput();
      v38 = swift_allocObject();
      *(v38 + 16) = v32;
      *(v38 + 24) = v37;
      *(v38 + 32) = 0;
      *(v38 + 40) = 2;
      v34 = v34;
      MEMORY[0x1CCAA1490]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v4 = v52;
      v39 = [v32 identifier];
      v40 = sub_1CA94C3A8();
      v42 = v41;

      if (v40 == 0xD00000000000001FLL && 0x80000001CA9940A0 == v42)
      {
      }

      else
      {
        v44 = sub_1CA94D7F8();

        if ((v44 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v45 = swift_allocObject();
      *(v45 + 16) = v32;
      *(v45 + 24) = v37;
      *(v45 + 32) = 0;
      *(v45 + 40) = 3;
      MEMORY[0x1CCAA1490]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v4 = v52;
      goto LABEL_32;
    }
  }

  return v4;
}

id sub_1CA36246C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);

  v8 = OUTLINED_FUNCTION_116();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = sub_1CA94C648();

  return v10;
}

void WFWorkflowActionTree.outputs(for:inScopeOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_72();
  v24 = v23;
  v26 = sub_1CA361F1C(v25);
  [v22 indexOfAction_];
  sub_1CA367290();
  sub_1CA2E3068(v27);
  v32 = MEMORY[0x1E69E7CC0];
  v28 = sub_1CA25B410(v26);
  for (i = 0; v28 != i; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0](i, v26);
    }

    else
    {
      if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v30 = OUTLINED_FUNCTION_68_3();
    if (sub_1CA2B5A74(v30, v31))
    {
      sub_1CA94D4D8();
      sub_1CA94D518();
      OUTLINED_FUNCTION_194_0();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    else
    {
    }
  }

  sub_1CA94C218();
  if ((v32 & 0x8000000000000000) == 0 && (v32 & 0x4000000000000000) == 0)
  {
    sub_1CA94D808();
    goto LABEL_15;
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444800, &qword_1CA984018);
  OUTLINED_FUNCTION_5_3();
  sub_1CA94D608();

LABEL_15:

  OUTLINED_FUNCTION_70_2();
}

void sub_1CA3627A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_1CA362820(char *a1, void *a2)
{
  v4 = _s17ControlFlowBranchVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v146 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 indexOfAction_];
  if (v10 == sub_1CA948778())
  {
    return;
  }

  sub_1CA285AF8(v9);
  v11 = *(v9 + 4);
  sub_1CA94C218();
  sub_1CA36D8F4(v9, _s6LayoutVMa);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v10 >= *(v11 + 16))
  {
    goto LABEL_143;
  }

  v12 = v11 + 48 * v10;
  v13 = *(v12 + 32);
  v14 = *(v12 + 48);
  v15 = *(v12 + 56);
  v16 = *(v12 + 64);
  v17 = *(v12 + 72);
  v137 = *(v12 + 40);
  v138 = v14;
  v136 = v15;
  sub_1CA36D94C(v13, v137, v14, v15, v16, v17);

  if (v17)
  {
    if (v17 != 1)
    {
      v20 = v138;
      v21 = v138[2];
      if (v21)
      {
        v135 = a1;
        v144 = *(v4 + 28);
        v134 = OBJC_IVAR___WFWorkflowActionTree_variableAvailability;
        v132 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v145 = (v138 + v132);
        sub_1CA94C218();
        v22 = 0;
        v23 = 0;
        v133 = v21 - 1;
        v24 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v25 = v23;
          while (1)
          {
            if (v25 >= v20[2])
            {
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
              goto LABEL_142;
            }

            v26 = v146;
            sub_1CA36D71C(v145 + *(v5 + 72) * v25, v146);
            v23 = v25 + 1;
            v27 = *(v26 + v144);
            sub_1CA94C218();
            sub_1CA36D8F4(v26, _s17ControlFlowBranchVMa);
            v28 = *(v27 + 16);
            if (v28)
            {
              break;
            }

            ++v25;
            if (v21 == v23)
            {

              v58 = v135;
              if ((v22 & 1) == 0)
              {

                if (!v20[2])
                {
                  goto LABEL_148;
                }

                v59 = *&v58[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
                v60 = *v145;
                v61 = v58;
                v62 = v60;
                sub_1CA365410(v62, v59, v61, v62);
              }

LABEL_135:

              return;
            }
          }

          v29 = v27 + 40 * v28;
          v30 = *v29;
          v32 = *(v29 + 8);
          v31 = *(v29 + 16);
          v33 = *(v29 + 24);
          v139 = *(v29 - 8);
          v143 = v31;
          sub_1CA36DA2C(v139, v30, v32, v31, v33);

          if (v33)
          {
            if (!*(v32 + 16))
            {
              goto LABEL_146;
            }

            v34 = *(v32 + v132);
            sub_1CA36D780(v139, v30, v32, v143, 1);
            v139 = v34;
          }

          v35 = *&v135[v134];
          swift_beginAccess();
          v36 = *(v35 + 32);
          if (*(v36 + 16) && (v37 = sub_1CA320E94(v139), (v38 & 1) != 0))
          {
            v39 = *(*(v36 + 56) + 8 * v37);
            sub_1CA94C218();
          }

          else
          {
            swift_beginAccess();
            v40 = *(v35 + 24);
            if (*(v40 + 16))
            {
              v41 = sub_1CA94D908();
              v42 = ~(-1 << *(v40 + 32));
              while (1)
              {
                v43 = v41 & v42;
                if (((*(v40 + 56 + (((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v42)) & 1) == 0)
                {
                  break;
                }

                v41 = v43 + 1;
                if (*(*(v40 + 48) + 8 * v43) == v139)
                {
                  v39 = MEMORY[0x1E69E7CC0];
                  goto LABEL_30;
                }
              }
            }

            swift_beginAccess();
            v44 = v135;
            v143 = v44;
            v45 = v139;
            sub_1CA369200(&v147, v45);
            swift_endAccess();
            sub_1CA362820(v44, v45);
            v39 = v46;
            swift_beginAccess();
            sub_1CA6AEF44(v45);
            swift_endAccess();
            swift_beginAccess();
            sub_1CA94C218();
            swift_isUniquelyReferenced_nonNull_native();
            v147 = *(v35 + 32);
            sub_1CA3226FC();
            *(v35 + 32) = v147;
            swift_endAccess();
          }

LABEL_30:
          v143 = *(v39 + 16);
          if (v143)
          {
            v47 = 0;
            v140 = (v39 + 32);
            v141 = v39;
            v142 = v25 + 1;
            while (v47 < *(v39 + 16))
            {
              v48 = v21;
              v49 = v5;
              v50 = v140[v47];
              v51 = *(v24 + 16);
              if (v51)
              {
                ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                v53 = 32;
                v54 = v51;
                while (swift_getObjCClassFromMetadata() != ObjCClassFromMetadata)
                {
                  v53 += 8;
                  if (!--v54)
                  {
                    goto LABEL_37;
                  }
                }

                v5 = v49;
                v21 = v48;
              }

              else
              {
LABEL_37:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1CA2E5130();
                  v24 = v56;
                }

                v55 = *(v24 + 16);
                v5 = v49;
                if (v55 >= *(v24 + 24) >> 1)
                {
                  sub_1CA2E5130();
                  v24 = v57;
                }

                v21 = v48;
                *(v24 + 16) = v55 + 1;
                *(v24 + 8 * v55 + 32) = v50;
              }

              v39 = v141;
              v23 = v142;
              if (++v47 == v143)
              {

                v20 = v138;
                goto LABEL_46;
              }
            }

            goto LABEL_139;
          }

LABEL_46:
          v22 = 1;
          if (v133 == v25)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_135;
          }
        }
      }

LABEL_148:
      __break(1u);
      return;
    }

    if (v16)
    {
      if (v138[2])
      {
        v18 = *&a1[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
        v19 = *(v138 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
        sub_1CA365410(v19, v18, a1, v19);

        return;
      }

      goto LABEL_145;
    }
  }

  else
  {
    sub_1CA36D9BC(v13, v137, v138, v136, v16, 0);
  }

  if ([a2 usesLegacyInputBehavior])
  {
    if (v10)
    {
      v63 = [a1 actionAtIndex_];
      v64 = *&a1[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
      v65 = a1;
      v66 = v63;
      sub_1CA365410(v66, v64, v65, v66);
    }

    else
    {
      v74 = [a2 workflow];
      if (v74)
      {
        v75 = v74;
        v76 = [v74 effectiveInputClasses];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
        v77 = sub_1CA94C658();

        v78 = *(v77 + 16);
        if (v78)
        {
          sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
          v79 = MEMORY[0x1E69E7CC0];
          v80 = 32;
          do
          {
            v81 = swift_dynamicCastMetatype();
            if (v81)
            {
              v82 = v81;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1CA2E5130();
                v79 = v84;
              }

              v83 = *(v79 + 16);
              if (v83 >= *(v79 + 24) >> 1)
              {
                sub_1CA2E5130();
                v79 = v85;
              }

              *(v79 + 16) = v83 + 1;
              *(v79 + 8 * v83 + 32) = v82;
            }

            v80 += 8;
            --v78;
          }

          while (v78);
        }

        goto LABEL_135;
      }
    }

    return;
  }

  if (![a2 inputTypeDeterminesOutputType] || (v67 = objc_msgSend(a2, sel_inputParameter)) == 0)
  {
LABEL_76:
    v141 = v10;
    v86 = [a2 identifier];
    v87 = sub_1CA94C3A8();
    v89 = v88;

    if (v87 == 0xD000000000000018 && 0x80000001CA996200 == v89)
    {
    }

    else
    {
      v91 = sub_1CA94D7F8();

      if ((v91 & 1) == 0)
      {
        goto LABEL_133;
      }
    }

    v92 = sub_1CA94C368();
    v93 = [a2 parameterStateForKey_];

    if (v93)
    {
      objc_opt_self();
      v94 = swift_dynamicCastObjCClass();
      if (v94)
      {
        v95 = [v94 values];
        sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
        v96 = sub_1CA94C658();

        v146 = sub_1CA25B410(v96);
        if (!v146)
        {
LABEL_129:
          swift_unknownObjectRelease();
          goto LABEL_135;
        }

        v137 = v93;
        v135 = a1;
        v97 = 0;
        v145 = (v96 & 0xC000000000000001);
        v142 = v96 + 32;
        v143 = (v96 & 0xFFFFFFFFFFFFFF8);
        v98 = MEMORY[0x1E69E7CC0];
        v144 = v96;
        while (1)
        {
          if (v145)
          {
            v99 = MEMORY[0x1CCAA22D0](v97, v96);
          }

          else
          {
            if (v97 >= *(v143 + 2))
            {
              goto LABEL_144;
            }

            v99 = *(v142 + 8 * v97);
          }

          v100 = v99;
          if (__OFADD__(v97++, 1))
          {
            goto LABEL_141;
          }

          v102 = [v99 state];
          if (!v102)
          {
            goto LABEL_117;
          }

          v103 = v102;
          objc_opt_self();
          v104 = swift_dynamicCastObjCClass();
          if (!v104)
          {
            goto LABEL_116;
          }

          v105 = v104;
          v106 = [v104 variableString];
          v107 = [v106 representsSingleContentVariable];

          if (!v107)
          {
            goto LABEL_116;
          }

          v108 = [v105 variableString];
          v109 = [v108 variables];
          sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
          v110 = sub_1CA94C658();

          if (!(v110 >> 62 ? sub_1CA94D328() : *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10)))
          {
            break;
          }

          if ((v110 & 0xC000000000000001) != 0)
          {
            v112 = MEMORY[0x1CCAA22D0](0, v110);
          }

          else
          {
            if (!*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_147;
            }

            v112 = *(v110 + 32);
          }

          v113 = v112;

          v114 = sub_1CA363784(v113);
          v115 = *(v114 + 16);
          if (v115)
          {
            v138 = v113;
            v139 = v103;
            v140 = v100;
            v116 = 0;
            while (v116 < *(v114 + 16))
            {
              v117 = *(v114 + 32 + 8 * v116++);
              v118 = *(v98 + 16);
              v119 = 32;
              while (v118)
              {
                v120 = *(v98 + v119);
                v119 += 8;
                --v118;
                if (v120 == v117)
                {
                  goto LABEL_113;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1CA2E5130();
                v98 = v122;
              }

              v121 = *(v98 + 16);
              if (v121 >= *(v98 + 24) >> 1)
              {
                sub_1CA2E5130();
                v98 = v123;
              }

              *(v98 + 16) = v121 + 1;
              *(v98 + 8 * v121 + 32) = v117;
LABEL_113:
              if (v116 == v115)
              {

                goto LABEL_127;
              }
            }

            goto LABEL_140;
          }

LABEL_127:
          swift_unknownObjectRelease();
          v96 = v144;
LABEL_128:
          if (v97 == v146)
          {
            goto LABEL_129;
          }
        }

LABEL_116:
        swift_unknownObjectRelease();
        v96 = v144;
LABEL_117:
        v124 = v100;
        v125 = *(v98 + 16);
        v126 = 32;
        while (v125)
        {
          v127 = *(v98 + v126);
          v126 += 8;
          --v125;
          if (v127 == sub_1CA25B3D0(0, &unk_1EC4448F0, 0x1E6996F60))
          {

            goto LABEL_128;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E5130();
          v98 = v130;
        }

        v128 = *(v98 + 16);
        if (v128 >= *(v98 + 24) >> 1)
        {
          sub_1CA2E5130();
          v98 = v131;
        }

        v129 = sub_1CA25B3D0(0, &unk_1EC4448F0, 0x1E6996F60);
        *(v98 + 16) = v128 + 1;
        *(v98 + 8 * v128 + 32) = v129;
        goto LABEL_128;
      }

      swift_unknownObjectRelease();
    }

LABEL_133:
    WFAction.outputContentClasses.getter();
    return;
  }

  v68 = v67;
  objc_opt_self();
  v69 = swift_dynamicCastObjCClass();
  if (!v69)
  {

    goto LABEL_76;
  }

  v70 = [v69 key];
  if (!v70)
  {
    sub_1CA94C3A8();
    v70 = sub_1CA94C368();
  }

  v71 = [a2 parameterStateForKey_];

  if (v71)
  {
    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (v72)
    {
      v73 = [v72 variable];
      sub_1CA363784(v73);

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CA363784(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 name];
    sub_1CA94C3A8();

    WFWorkflowActionTree.possibleContentClasses(namedVariable:at:)();
    v8 = v7;

    sub_1CA363924(v8, v5);
    v10 = v9;

    return v10;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = a1;
  v15 = [v13 action];
  if (!v15)
  {

LABEL_7:
    v23 = [a1 possibleAggrandizedContentClasses];
    v22 = sub_1CA63DC58(v23);

    return v22;
  }

  v16 = v15;
  v17 = *&v1[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
  v18 = v1;
  v19 = v16;
  v20 = sub_1CA365410(v19, v17, v18, v19);
  sub_1CA363924(v20, v14);
  v22 = v21;

  return v22;
}

void sub_1CA363924(uint64_t a1, id a2)
{
  v3 = [a2 aggrandizements];
  sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
  v4 = sub_1CA94C658();

  v24 = sub_1CA25B410(v4);
  if (v24)
  {
    sub_1CA25B3D0(0, &unk_1EC444900, 0x1E695DFB8);
    v23 = v4 & 0xC000000000000001;
    v20 = v4 + 32;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    sub_1CA94C218();
    v5 = 0;
    v22 = v4;
    while (1)
    {
      if (v23)
      {
        v6 = MEMORY[0x1CCAA22D0](v5, v4);
      }

      else
      {
        if (v5 >= *(v21 + 16))
        {
          goto LABEL_24;
        }

        v6 = *(v20 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v9 = sub_1CA360D8C(a1);

      v10 = sub_1CA56040C(v9);
      v11 = [v7 processedContentClasses_];

      v12 = [v11 array];
      v13 = sub_1CA94C658();

      v14 = *(v13 + 16);
      if (v14)
      {
        v25 = v7;
        v15 = v13 + 32;
        a1 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1CA25B374(v15, v28);
          sub_1CA2C0A20(v28, &v26);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
          if (swift_dynamicCast())
          {
            v16 = v27;
            if (v27)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1CA2E5130();
                a1 = v18;
              }

              v17 = *(a1 + 16);
              if (v17 >= *(a1 + 24) >> 1)
              {
                sub_1CA2E5130();
                a1 = v19;
              }

              *(a1 + 16) = v17 + 1;
              *(a1 + 8 * v17 + 32) = v16;
            }
          }

          v15 += 32;
          --v14;
        }

        while (v14);

        v4 = v22;
        v7 = v25;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (v5 == v24)
      {

        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {

    sub_1CA94C218();
  }
}

uint64_t sub_1CA363C0C(uint64_t a1)
{
  v3 = _s6LayoutVMa(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = [v1 indexOfAction_];
  sub_1CA285AF8(v8);
  v10 = *(v8 + 4);
  sub_1CA94C218();
  result = sub_1CA36D8F4(v8, _s6LayoutVMa);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= *(v10 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = v10 + 48 * v9;
  v14 = *(v12 + 32);
  v13 = *(v12 + 40);
  v16 = *(v12 + 48);
  v15 = *(v12 + 56);
  v17 = *(v12 + 64);
  v18 = *(v12 + 72);
  sub_1CA36D94C(v14, v13, v16, v15, v17, *(v12 + 72));

  if (v18 == 1)
  {

    if (!v17)
    {
      v19 = sub_1CA9492B8();
      v20 = *(v19 - 8);
      MEMORY[0x1EEE9AC00](v19);
      v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1CA285AF8(v6);
      v23 = *(v6 + 3);
      sub_1CA94C218();
      result = sub_1CA36D8F4(v6, _s6LayoutVMa);
      if (v9 < *(v23 + 16))
      {
        (*(v20 + 16))(v22, v23 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v9, v19);

        v25 = 1;
        sub_1CA94C218();
        sub_1CA6A6E4C();

        (*(v20 + 8))(v22, v19);
        return v25;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_1CA36D9BC(v14, v13, v16, v15, v17, v18);
  }

  return 0;
}

void sub_1CA363EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(_s17ControlFlowBranchVMa(0) - 8);
  v9 = [*(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80))) identifier];
  v10 = sub_1CA94C3A8();
  v12 = v11;

  v16[0] = v10;
  v16[1] = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_98();
  *(v14 - 16) = v16;
  LOBYTE(v9) = sub_1CA2BFD14(sub_1CA36DB00, v15, &unk_1F49F6438);

  if ((v9 & 1) == 0)
  {
    return;
  }

  if (__OFADD__(*a6, 1))
  {
LABEL_7:
    __break(1u);
    return;
  }

  ++*a6;
}

uint64_t sub_1CA364010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_44_4();
  switch(v13)
  {
    case 1:
      if (v12 != 1)
      {
        goto LABEL_20;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      return OUTLINED_FUNCTION_24_7() & 1;
    case 2:
      if (v12 == 2)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    case 3:
      if (v12 != 3)
      {
        goto LABEL_20;
      }

LABEL_17:
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      result = OUTLINED_FUNCTION_24_7() & (v7 == a6);
      break;
    case 4:
      if (v12 == 4 && !(a6 | a5 | a7))
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    default:
      if (v12 || (v14 = v11, sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0), (OUTLINED_FUNCTION_24_7() & 1) == 0))
      {
LABEL_20:
        result = 0;
      }

      else if (v7 == a6 && v14 == a7)
      {
LABEL_13:
        result = 1;
      }

      else
      {

        result = sub_1CA94D7F8();
      }

      break;
  }

  return result;
}

uint64_t sub_1CA36417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 1:
      MEMORY[0x1CCAA2780](1, a2, a3, a4);
      return sub_1CA94CFE8();
    case 2:
      v8 = 2;
      goto LABEL_8;
    case 3:
      v8 = 3;
LABEL_8:
      MEMORY[0x1CCAA2780](v8, a2, a3, a4);
      sub_1CA94CFE8();
      v7 = a3;
      goto LABEL_9;
    case 4:
      v7 = 4;
LABEL_9:
      result = MEMORY[0x1CCAA2780](v7, a2, a3, a4);
      break;
    default:
      MEMORY[0x1CCAA2780](0);
      sub_1CA94CFE8();
      OUTLINED_FUNCTION_20_0();

      result = sub_1CA94C458();
      break;
  }

  return result;
}

uint64_t sub_1CA364270(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CA94D918();
  sub_1CA36417C(v9, a1, a2, a3, a4);
  return sub_1CA94D968();
}

uint64_t sub_1CA3642F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1CA94D918();
  sub_1CA36417C(v7, v2, v3, v4, v5);
  return sub_1CA94D968();
}

uint64_t sub_1CA36437C()
{
  v1 = *(v0 + 24);
  switch(*(v0 + 40))
  {
    case 1:
      MEMORY[0x1CCAA2780](1);
      OUTLINED_FUNCTION_59_3();
      return sub_1CA94CFE8();
    case 2:
      v4 = 2;
      goto LABEL_8;
    case 3:
      v4 = 3;
LABEL_8:
      MEMORY[0x1CCAA2780](v4);
      OUTLINED_FUNCTION_59_3();
      sub_1CA94CFE8();
      v3 = v1;
      goto LABEL_9;
    case 4:
      v3 = 4;
LABEL_9:
      result = MEMORY[0x1CCAA2780](v3);
      break;
    default:
      MEMORY[0x1CCAA2780](0);
      OUTLINED_FUNCTION_59_3();
      sub_1CA94CFE8();
      OUTLINED_FUNCTION_33_5();

      result = sub_1CA94C458();
      break;
  }

  return result;
}

uint64_t sub_1CA364498()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = 0x74756374726F6853;
  switch(*(v0 + 40))
  {
    case 1:
      v6 = [v2 generateUUIDIfNecessaryWithUUIDProvider_];
      if (!v6)
      {
        sub_1CA94C3A8();
        v6 = sub_1CA94C368();
      }

      v7 = WFVariableNameForActionOutputUUID(v6, v5);

      v4 = sub_1CA94C3A8();
      sub_1CA36D434(v2, v1, v3, 1u);
      break;
    case 2:
      v4 = 0x4920746165706552;
      if (v1 != 1)
      {
        goto LABEL_9;
      }

      break;
    case 3:
      v4 = 0x4920746165706552;
      if (v1 != 1)
      {
LABEL_9:
        v8 = sub_1CA94D798();
        MEMORY[0x1CCAA1300](v8);

        v4 = 0x4920746165706552;
      }

      break;
    case 4:
      return v4;
    default:
      sub_1CA94C218();
      v4 = v1;
      break;
  }

  return v4;
}

id sub_1CA364674(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  OUTLINED_FUNCTION_20_0();
  v5 = sub_1CA94C368();

  return v5;
}

uint64_t sub_1CA3646E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  switch(*(v0 + 40))
  {
    case 1:
      v8 = v2;
      v9 = sub_1CA36D2C4(v8, &selRef_outputName);
      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v19 = [v8 localizedDefaultOutputName];
        v11 = sub_1CA94C3A8();
      }

      sub_1CA36D434(v2, v1, v3, 1u);
      return v11;
    case 2:
      if (v1 == 1)
      {
        sub_1CA94C438("Repeat Index", 12);
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_23;
        }

        goto LABEL_10;
      }

      sub_1CA94C438("Repeat Index %ld", v21);
      if (qword_1EDB9F5F0 != -1)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    case 3:
      if (v1 == 1)
      {
        sub_1CA94C438("Repeat Item", 11);
        if (qword_1EDB9F5F0 != -1)
        {
LABEL_23:
          swift_once();
        }

LABEL_10:
        v4 = qword_1EDB9F690;
        v5 = sub_1CA94C368();
        v6 = sub_1CA94C368();

        v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

        v1 = sub_1CA94C3A8();
      }

      else
      {
        sub_1CA94C438("Repeat Item %ld", v21);
        if (qword_1EDB9F5F0 != -1)
        {
LABEL_24:
          swift_once();
        }

LABEL_16:
        v12 = qword_1EDB9F690;
        v13 = sub_1CA94C368();
        v14 = sub_1CA94C368();

        v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

        sub_1CA94C3A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
        v16 = swift_allocObject();
        v17 = MEMORY[0x1E69E6530];
        *(v16 + 16) = xmmword_1CA981310;
        v18 = MEMORY[0x1E69E65A8];
        *(v16 + 56) = v17;
        *(v16 + 64) = v18;
        *(v16 + 32) = v1;
        v1 = sub_1CA94C378();
      }

      return v1;
    case 4:
      sub_1CA94C438("Shortcut Input", 14);
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    default:
      sub_1CA94C218();
      return v1;
  }
}

id sub_1CA364BE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  switch(*(v0 + 40))
  {
    case 1:
      v12 = v1;
      v13 = [v12 outputIcon];
      if (!v13)
      {
        v13 = [v12 icon];
      }

      v8 = v13;
      sub_1CA36D434(v1, v2, v3, 1u);
      break;
    case 2:
    case 3:
      sub_1CA25B3D0(0, &qword_1EC444870, 0x1E69E0D70);
      v4 = sub_1CA4D6A18();
      goto LABEL_4;
    case 4:
      v5 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithSystemColor_];
      v6 = [objc_opt_self() clearBackground];
      v7 = objc_allocWithZone(MEMORY[0x1E69E0D70]);
      v4 = sub_1CA42AB48(0xD000000000000019, 0x80000001CA9AA0A0, v5, v6);
LABEL_4:
      v8 = v4;
      break;
    default:
      v9 = objc_opt_self();
      v10 = sub_1CA94C368();
      v11 = [v9 workflowKitImageNamed_];

      v8 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];
      break;
  }

  return v8;
}

uint64_t sub_1CA364E70()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = 0;
  switch(*(v0 + 40))
  {
    case 1:
      v6 = [v2 generateUUIDIfNecessaryWithUUIDProvider_];
      if (!v6)
      {
        sub_1CA94C3A8();
        v6 = sub_1CA94C368();
      }

      v7 = WFVariableNameForActionOutputUUID(v6, v5);

      v4 = sub_1CA94C3A8();
      sub_1CA36D434(v2, v1, v3, 1u);
      break;
    case 2:
      v4 = 0x4920746165706552;
      if (v1 != 1)
      {
        goto LABEL_9;
      }

      break;
    case 3:
      v4 = 0x4920746165706552;
      if (v1 != 1)
      {
LABEL_9:
        v8 = sub_1CA94D798();
        MEMORY[0x1CCAA1300](v8);

        v4 = 0x4920746165706552;
      }

      break;
    case 4:
      return v4;
    default:
      sub_1CA94C218();
      v4 = v1;
      break;
  }

  return v4;
}

id sub_1CA36501C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  switch(*(v1 + 40))
  {
    case 1:
      result = [v3 outputVariableWithVariableProvider:a1 UUIDProvider:0];
      if (!result)
      {
        goto LABEL_9;
      }

      v12 = result;
      sub_1CA36D434(v3, v2, v4, 1u);
      result = v12;
      break;
    case 4:
      v10 = objc_allocWithZone(WFShortcutInputVariable);
      v11 = swift_unknownObjectRetain();
      result = sub_1CA615164(v11, 0);
      break;
    default:
      result = sub_1CA364E70();
      if (v7)
      {
        v8 = result;
        v9 = v7;
        objc_allocWithZone(WFUserDefinedVariable);
        swift_unknownObjectRetain();
        result = sub_1CA368890(v8, v9, a1, 0);
      }

      else
      {
        __break(1u);
LABEL_9:
        __break(1u);
      }

      break;
  }

  return result;
}

uint64_t sub_1CA365194()
{
  result = 0;
  if (((1 << *(v0 + 40)) & 0xD) != 0)
  {
    return sub_1CA364E70();
  }

  return result;
}

uint64_t sub_1CA3651CC()
{
  sub_1CA36D434(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t sub_1CA36520C()
{
  sub_1CA94D918();
  sub_1CA36417C(v2, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  return sub_1CA94D968();
}

uint64_t sub_1CA3652A0(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA36437C();
  return sub_1CA94D968();
}

void *sub_1CA3652EC(void *a1)
{
  v3 = [objc_opt_self() hashTableWithOptions_];
  v4 = MEMORY[0x1E69E7CD0];
  v1[2] = v3;
  v1[3] = v4;
  OUTLINED_FUNCTION_27_2((a1 + 5), v10);
  v1[5] = a1[5];
  v1[7] = a1[7];
  v1[8] = a1[8];
  OUTLINED_FUNCTION_27_2((a1 + 6), v9);
  v1[6] = a1[6];
  v1[9] = a1[9];
  OUTLINED_FUNCTION_27_2((a1 + 10), v8);
  v1[10] = a1[10];
  OUTLINED_FUNCTION_27_2((a1 + 4), &v7);
  v5 = a1[4];
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();

  v1[4] = v5;
  return v1;
}

uint64_t sub_1CA365410(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_27_2(a2 + 32, v19);
  v8 = *(a2 + 32);
  if (*(v8 + 16) && (v9 = sub_1CA320E94(a1), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    sub_1CA94C218();
  }

  else
  {
    OUTLINED_FUNCTION_27_2(a2 + 24, v18);
    if (sub_1CA2B5D28(a1, *(a2 + 24)))
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      OUTLINED_FUNCTION_28(a2 + 24, v16);
      sub_1CA369200(&v17, a1);
      swift_endAccess();
      v12 = OUTLINED_FUNCTION_116();
      sub_1CA362820(v12, v13);
      v11 = v14;
      OUTLINED_FUNCTION_28(a2 + 24, v16);
      sub_1CA6AEF44(a1);
      swift_endAccess();
      OUTLINED_FUNCTION_28(a2 + 32, v16);
      sub_1CA94C218();
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *(a2 + 32);
      OUTLINED_FUNCTION_104();
      sub_1CA3226FC();
      *(a2 + 32) = v17;
      swift_endAccess();
    }
  }

  return v11;
}

void sub_1CA365554(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_28(v4 + 32, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444850, qword_1CA984318);
  sub_1CA94C228();
  swift_endAccess();
  v10 = [a1 identifier];
  v11 = sub_1CA94C3A8();
  v13 = v12;

  v49 = v11;
  v50 = v13;
  v46 = &v49;
  LOBYTE(v10) = sub_1CA2BFD14(sub_1CA36DB00, v45, &unk_1F49F6478);

  if (v10)
  {
    v14 = a2 == 0x6261697261564657 && a3 == 0xEE00656D614E656CLL;
    if (v14 || (OUTLINED_FUNCTION_194_0(), (sub_1CA94D7F8() & 1) != 0))
    {
      sub_1CA365968();
    }
  }

  sub_1CA94C218();
  OUTLINED_FUNCTION_194_0();
  v15 = sub_1CA94C368();
  v16 = [a1 parameterStateForKey:v15 fallingBackToDefaultValue:0];

  if (v16)
  {
    v40 = a1;
    v41 = a2;
    v42 = a3;
    v43 = v5;
    v39 = v16;
    v17 = [v16 containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v18 = sub_1CA94C658();

    v19 = sub_1CA25B410(v18);
    if (v19)
    {
      v20 = v19;
      HIDWORD(v44) = 0;
      v21 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1CCAA22D0](v21, v18);
        }

        else
        {
          if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v22 = *(v18 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();

        if (v25)
        {
          HIDWORD(v44) = 1;
        }

        ++v21;
        if (v24 == v20)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    HIDWORD(v44) = 0;
LABEL_21:
    swift_unknownObjectRelease();

    a3 = v42;
    a1 = v40;
    a2 = v41;
    LOBYTE(v16) = BYTE4(v44);
  }

  OUTLINED_FUNCTION_27_2(v5 + 80, &v49);
  v26 = *(*(v5 + 80) + 16);
  v27 = v5 + 80;
  if (v16)
  {
    OUTLINED_FUNCTION_28(v27, v47);
    sub_1CA3692B0(v48, a1, a2, a3);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_28(v27, v48);
    sub_1CA6AF018(a1, a2, a3, v28, v29, v30, v31, v32, v39, v40, v41, v42, v43, v44, v45[0], v45[1], v46, v47[0], v47[1], v47[2], v48[0], v48[1], v48[2], v48[3], v49, v50, v51, v52, v53, v54);
    swift_endAccess();
  }

  if ((v26 == 0) == (*(*(v5 + 80) + 16) != 0))
  {
    v33 = [*(a4 + OBJC_IVAR___WFWorkflowActionTree_observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444858, &unk_1CA992010);
    v34 = sub_1CA94C658();

    v35 = sub_1CA25B410(v34);
    if (v35)
    {
      v36 = v35;
      if (v35 < 1)
      {
LABEL_37:
        __break(1u);
        return;
      }

      for (i = 0; i != v36; ++i)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1CCAA22D0](i, v34);
        }

        else
        {
          v38 = *(v34 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [v38 actionTreeDidChangeShortcutInputUsage_];
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1CA365968()
{
  OUTLINED_FUNCTION_37_0();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = [v5 indexOfAction_];
  v108 = v6;
  v10 = sub_1CA361F1C(v8);
  OUTLINED_FUNCTION_27_2(v4 + 48, &v118);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_104;
  }

  v11 = *(v4 + 48);
  if (v9 >= *(v11 + 16))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v109 = v4;
  v114 = v9;
  v12 = *(v11 + 8 * v9 + 32);
  v13 = sub_1CA25B410(v10);
  v14 = v12;
  sub_1CA94C218();
  v15 = 0;
  v115 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v15)
    {
      v6 = v115;
      v9 = v14;
      if (v115[2])
      {
        v20 = v115[5];
        v112 = v115[4];
        v113 = v20;
        sub_1CA94C218();

        v21 = sub_1CA25B410(v14);
        v22 = 0;
        v3 = (v14 & 0xC000000000000001);
        v115 = MEMORY[0x1E69E7CC0];
        while (v21 != v22)
        {
          if (v3)
          {
            v2 = MEMORY[0x1CCAA22D0](v22, v14);
          }

          else
          {
            if (v22 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_103;
            }

            v2 = *(v14 + 8 * v22 + 32);
          }

          v9 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          v6 = v2;
          sub_1CA365194();
          OUTLINED_FUNCTION_70_5();
          ++v22;
          if (v1)
          {
            v22 = v115;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_21();
              sub_1CA26DADC();
              v22 = v24;
            }

            OUTLINED_FUNCTION_69_3();
            if (v17)
            {
              OUTLINED_FUNCTION_64(v23);
              OUTLINED_FUNCTION_43_5();
              sub_1CA26DADC();
              v115 = v25;
            }

            OUTLINED_FUNCTION_47_3();
          }
        }

        if (v115[2])
        {
          v2 = v115[4];
          v9 = v115[5];
          sub_1CA94C218();

          v3 = v112;
          v26 = v112 == v2 && v113 == v9;
          if (!v26 && (sub_1CA94D7F8() & 1) == 0)
          {
            v6 = v109;
            OUTLINED_FUNCTION_28(v109 + 48, v117);
            v27 = *(v109 + 48);
            sub_1CA94C218();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v109 + 48) = v27;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_109;
            }

            goto LABEL_39;
          }
        }
      }

LABEL_37:

      OUTLINED_FUNCTION_36();
      return;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1CCAA22D0](v15, v10);
    }

    else
    {
      if (v15 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v2 = *(v10 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      break;
    }

    sub_1CA365194();
    OUTLINED_FUNCTION_70_5();
    ++v15;
    if (v1)
    {
      v15 = v115;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA26DADC();
        v15 = v18;
      }

      OUTLINED_FUNCTION_69_3();
      if (v17)
      {
        OUTLINED_FUNCTION_64(v16);
        OUTLINED_FUNCTION_43_5();
        sub_1CA26DADC();
        v115 = v19;
      }

      OUTLINED_FUNCTION_47_3();
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  OUTLINED_FUNCTION_20_7();
  for (i = __swift_storeEnumTagSinglePayload(v62, v63, v64, v65); ; i = sub_1CA94C218())
  {
    v3 = &v101;
    MEMORY[0x1EEE9AC00](i);
    OUTLINED_FUNCTION_34_6();
    v66 = OUTLINED_FUNCTION_104();
    sub_1CA36D830(v66, v67);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v10);
    v9 = v103;
    if (EnumTagSinglePayload == 1)
    {
      v117[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_17_4();
      sub_1CA36DA78(v69, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
      sub_1CA36D7CC();
      sub_1CA94D2A8();

      sub_1CA27080C(v15, &unk_1EC444840, &qword_1CA984310);
    }

    else
    {

      (*(v2 + 32))(v13, v15, v10);
    }

    LODWORD(v114) = sub_1CA949198();
    (*(v2 + 8))(v13, v10);
    v71 = [v108 actions];
    v72 = sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v6 = OUTLINED_FUNCTION_53_3(v72);

    v105 = v6;
    v73 = sub_1CA25B410(v6);
    v2 = v102;
    v107 = v73;
    if (!v73)
    {
LABEL_93:

      v56 = v109;
LABEL_94:

      sub_1CA28CBA8();
      v93 = [*(v56 + 16) allObjects];
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481A0, &qword_1CA992020);
      v95 = OUTLINED_FUNCTION_53_3(v94);

      v96 = sub_1CA25B410(v95);
      if (v96)
      {
        v97 = v96;
        if (v96 < 1)
        {
          goto LABEL_112;
        }

        for (j = 0; j != v97; ++j)
        {
          if ((v95 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x1CCAA22D0](j, v95);
          }

          else
          {
            v99 = *(v95 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          [v99 availableVariablesDidChange];
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_37;
    }

    v74 = 0;
    v106 = v105 & 0xC000000000000001;
    v104 = v105 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_56_3(v105 + 32);
    while (1)
    {
      if (v106)
      {
        v75 = MEMORY[0x1CCAA22D0](v74, v105);
      }

      else
      {
        if (v74 >= *(v104 + 16))
        {
          goto LABEL_108;
        }

        OUTLINED_FUNCTION_155_0();
        v75 = *(v76 + 8 * v74);
      }

      v77 = __OFADD__(v74, 1);
      v78 = v74 + 1;
      if (v77)
      {
        goto LABEL_106;
      }

      v110 = v75;
      v111 = v78;
      v79 = [v75 containedVariables];
      v80 = sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
      v81 = OUTLINED_FUNCTION_53_3(v80);

      if (!(v81 >> 62))
      {
        v10 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          break;
        }

        goto LABEL_89;
      }

      v10 = sub_1CA94D328();
      if (v10)
      {
        break;
      }

LABEL_89:

      v74 = v111;
      if (v111 == v107)
      {
        goto LABEL_93;
      }
    }

    if (v10 >= 1)
    {
      v82 = 0;
      v115 = (v81 & 0xC000000000000001);
      while (1)
      {
        if (v115)
        {
          v83 = MEMORY[0x1CCAA22D0](v82, v81);
        }

        else
        {
          v83 = *(v81 + 8 * v82 + 32);
        }

        v84 = v83;
        objc_opt_self();
        v85 = swift_dynamicCastObjCClass();
        if (!v85)
        {
          goto LABEL_85;
        }

        v86 = v85;
        v87 = v9;
        v88 = v2;
        v89 = [v85 name];
        v6 = sub_1CA94C3A8();
        v3 = v90;

        v2 = v88;
        v9 = v87;
        if (v6 == v2 && v3 == v87)
        {
        }

        else
        {
          v6 = sub_1CA94D7F8();

          if ((v6 & 1) == 0)
          {
            goto LABEL_85;
          }
        }

        v92 = [v86 variableProvider];
        if (v92)
        {
          v3 = v92;
          if (v114)
          {
            sub_1CA36D324(v92, v112, v113, v86);
          }

          else
          {
            [v86 variableProviderDidInvalidateOutputDetails_];
          }

          swift_unknownObjectRelease();
          goto LABEL_88;
        }

LABEL_85:

LABEL_88:
        if (v10 == ++v82)
        {
          goto LABEL_89;
        }
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    sub_1CA42B24C();
    v27 = v100;
    *(v6 + 48) = v100;
LABEL_39:
    v103 = v9;
    if (v114 >= *(v27 + 16))
    {
      break;
    }

    *(v27 + 8 * v114 + 32) = v10;
    *(v6 + 48) = v27;
    swift_endAccess();

    v29 = sub_1CA366608(v117);
    v30 = sub_1CA366548(v116, v2, v103);
    v32 = v31;
    v10 = sub_1CA9491F8();
    if (!__swift_getEnumTagSinglePayload(v32, 1, v10))
    {
      sub_1CA949188();
    }

    (v30)(v116, 0);
    (v29)(v117, 0);
    v33 = v109;
    OUTLINED_FUNCTION_28(v109 + 40, v117);
    swift_isUniquelyReferenced_nonNull_native();
    v116[0] = *(v33 + 40);
    v34 = v116[0];
    *(v33 + 40) = 0x8000000000000000;
    v35 = sub_1CA271BF8(v3, v113);
    if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
    {
      goto LABEL_111;
    }

    v37 = v35;
    v38 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444828, &qword_1CA9842F8);
    v39 = sub_1CA94D588();
    v40 = v116[0];
    v102 = v2;
    if (v39)
    {
      v41 = sub_1CA271BF8(v3, v113);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_113;
      }

      v37 = v41;
    }

    *(v109 + 40) = v40;
    v43 = *(v10 - 8);
    if ((v38 & 1) == 0)
    {
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_62();
      v116[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_17_4();
      sub_1CA36DA78(v45, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
      sub_1CA36D7CC();
      sub_1CA94D2A8();
      sub_1CA3230EC(v37, v3, v113, v38, v40);
      sub_1CA94C218();
    }

    v2 = v43;
    v47 = *(v43 + 72);
    sub_1CA949168();
    swift_endAccess();
    v48 = [v108 notifyVariablesOfChanges];
    if (!v48)
    {
      v56 = v109;
      goto LABEL_94;
    }

    v49 = *(v109 + 40);
    MEMORY[0x1EEE9AC00](v48);
    OUTLINED_FUNCTION_6_0();
    v13 = v51 - v50;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444840, &qword_1CA984310);
    v15 = *(*(v52 - 8) + 64);
    MEMORY[0x1EEE9AC00](v52 - 8);
    OUTLINED_FUNCTION_62();
    v53 = *(v49 + 16);
    v115 = &v101;
    if (v53)
    {
      sub_1CA94C218();
      v54 = sub_1CA271BF8(v102, v103);
      if (v55)
      {
        (*(v2 + 16))(v38, *(v49 + 56) + v54 * v47, v10);
      }

      goto LABEL_56;
    }

    OUTLINED_FUNCTION_20_7();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  sub_1CA94D878();
  __break(1u);
}

uint64_t (*sub_1CA366548(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1CA36CCD0(v6, a2, a3);
  return sub_1CA3665BC;
}

void sub_1CA3665BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1CA366650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1CA94D7F8();
  }
}

uint64_t sub_1CA36668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1CCAA2780](a2);

  return sub_1CA94C458();
}

uint64_t sub_1CA3666E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a1);
  sub_1CA94C458();
  return sub_1CA94D968();
}

uint64_t sub_1CA366760(uint64_t a1)
{
  v2 = *v1;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v2);
  sub_1CA94C458();
  return sub_1CA94D968();
}

void sub_1CA3667DC()
{
  OUTLINED_FUNCTION_37_0();
  v68 = v0;
  v2 = v1;
  v3 = sub_1CA9491F8();
  v4 = sub_1CA94C1E8();
  v74 = sub_1CA94C1E8();
  v5 = [v2 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_87();
  v6 = sub_1CA94C658();

  sub_1CA25B410(v6);

  sub_1CA2E51EC();
  v8 = v7;
  v71 = v2;
  v9 = [v2 actions];
  v10 = sub_1CA94C658();

  v73 = sub_1CA25B410(v10);
  v11 = 0;
  OUTLINED_FUNCTION_56_3(v10 & 0xC000000000000001);
  v72 = v10 & 0xFFFFFFFFFFFFFF8;
  v69 = v10;
  v70 = v10 + 32;
  v83 = v3;
  v78 = v3 - 8;
  while (1)
  {
    if (v11 == v73)
    {

      v67 = v68;
      swift_beginAccess();
      v67[5] = v4;

      v67[8] = v74;

      swift_beginAccess();
      v67[6] = v8;

      OUTLINED_FUNCTION_36();
      return;
    }

    OUTLINED_FUNCTION_155_0();
    if (v12)
    {
      v13 = MEMORY[0x1CCAA22D0](v11, v69);
    }

    else
    {
      if (v11 >= *(v72 + 16))
      {
        goto LABEL_49;
      }

      v13 = *(v70 + 8 * v11);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v75 = v11 + 1;
    v15 = sub_1CA361F1C(v13);
    v16 = v15;
    if (v15 >> 62)
    {
      v17 = sub_1CA94D328();
    }

    else
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v76 = v8;
    v77 = v14;
    v86 = v16;
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v87 = v16 & 0xC000000000000001;
      v79 = v16 & 0xFFFFFFFFFFFFFF8;
      v84 = v17;
      v85 = v11;
      while (1)
      {
        if (v87)
        {
          v20 = MEMORY[0x1CCAA22D0](v19, v16);
        }

        else
        {
          if (v19 >= *(v79 + 16))
          {
            goto LABEL_46;
          }

          v20 = *(v16 + 8 * v19 + 32);
        }

        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v22 = sub_1CA364E70();
        if (v23)
        {
          v24 = v22;
          v25 = v23;
          v88 = v20;
          swift_isUniquelyReferenced_nonNull_native();
          v90 = v4;
          v89 = v24;
          v26 = sub_1CA271BF8(v24, v25);
          if (__OFADD__(*(v4 + 16), (v27 & 1) == 0))
          {
            goto LABEL_45;
          }

          v28 = v26;
          v29 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444828, &qword_1CA9842F8);
          v30 = sub_1CA94D588();
          v4 = v90;
          if (v30)
          {
            v31 = sub_1CA271BF8(v89, v25);
            if ((v29 & 1) != (v32 & 1))
            {
              goto LABEL_52;
            }

            v28 = v31;
          }

          if (v29)
          {
          }

          else
          {
            v80 = &v68;
            v33 = v4;
            v34 = *(v83 - 8);
            OUTLINED_FUNCTION_29();
            MEMORY[0x1EEE9AC00](v35);
            v82 = &v68 - v36;
            v90 = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_17_4();
            v81 = sub_1CA36DA78(&unk_1EC442CF0, v37);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
            sub_1CA36D7CC();
            v38 = v83;
            sub_1CA94D2A8();
            v33[(v28 >> 6) + 8] |= 1 << v28;
            v39 = (v33[6] + 16 * v28);
            *v39 = v89;
            v39[1] = v25;
            (*(v34 + 32))(v33[7] + *(v34 + 72) * v28, v82, v38);
            v40 = v33[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_47;
            }

            v4 = v33;
            v33[2] = v42;
          }

          v11 = v85;
          sub_1CA949168();
          v16 = v86;
          v18 = v84;
        }

        ++v19;
        if (v21 == v18)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      break;
    }

LABEL_27:
    v43 = v77;
    v44 = sub_1CA36D2C4(v77, &selRef_UUID);
    if (v45)
    {
      v46 = v44;
      v47 = v45;
      v48 = v11;
      v49 = v74;
      swift_isUniquelyReferenced_nonNull_native();
      v90 = v49;
      v50 = OUTLINED_FUNCTION_116();
      v52 = sub_1CA271BF8(v50, v51);
      v8 = v76;
      if (__OFADD__(*(v49 + 16), (v53 & 1) == 0))
      {
        goto LABEL_50;
      }

      v54 = v52;
      v55 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444820, &qword_1CA9842F0);
      if (sub_1CA94D588())
      {
        v56 = OUTLINED_FUNCTION_116();
        v58 = sub_1CA271BF8(v56, v57);
        if ((v55 & 1) != (v59 & 1))
        {
          goto LABEL_52;
        }

        v54 = v58;
      }

      v16 = v86;
      v60 = v90;
      v74 = v90;
      if (v55)
      {
        *(v90[7] + 8 * v54) = v48;
      }

      else
      {
        v90[(v54 >> 6) + 8] |= 1 << v54;
        v61 = (v60[6] + 16 * v54);
        *v61 = v46;
        v61[1] = v47;
        *(v60[7] + 8 * v54) = v48;
        v62 = v60[2];
        v41 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v41)
        {
          goto LABEL_51;
        }

        v60[2] = v63;
      }

      v43 = v77;
    }

    else
    {
      v8 = v76;
    }

    v65 = *(v8 + 16);
    v64 = *(v8 + 24);
    if (v65 >= v64 >> 1)
    {
      OUTLINED_FUNCTION_64(v64);
      OUTLINED_FUNCTION_20_7();
      sub_1CA2E51EC();
      v8 = v66;
    }

    *(v8 + 16) = v65 + 1;
    *(v8 + 8 * v65 + 32) = v16;
    v11 = v75;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  sub_1CA94D878();
  __break(1u);
}

void sub_1CA366EB4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v4 = v3;
  if (*(*(v0 + 56) + 16) <= v3)
  {
    goto LABEL_5;
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_1CA9491F8();
  v26 = &v22;
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v23 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v22 - v23;
  OUTLINED_FUNCTION_27_2(v0 + 40, &v27);
  v13 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444840, &qword_1CA984310);
  v25 = &v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1CA94C218();
  sub_1CA311940(v6, v5, v13, v16);

  if (__swift_getEnumTagSinglePayload(v16, 1, v7) == 1)
  {
    sub_1CA27080C(v16, &unk_1EC444840, &qword_1CA984310);
LABEL_5:
    sub_1CA9491E8();
LABEL_6:
    OUTLINED_FUNCTION_36();
    return;
  }

  v17 = v24;
  v18 = (*(v9 + 32))(v24, v16, v7);
  MEMORY[0x1EEE9AC00](v18);
  v19 = *(v0 + 56);
  if (*(v19 + 16) > v4)
  {
    (*(v9 + 16))(&v22 - v23, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v4, v7);
    sub_1CA949108();
    v20 = *(v9 + 8);
    v21 = OUTLINED_FUNCTION_68_3();
    v20(v21);
    (v20)(v17, v7);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA367134(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0 && *(*(v3 + 56) + 16) > a3)
  {
    OUTLINED_FUNCTION_44_4();
    v5 = *(v3 + 64);
    sub_1CA94C218();
    v6 = OUTLINED_FUNCTION_69();
    sub_1CA311A0C(v6, v7, v5);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      v10 = *(v3 + 56);
      v11 = sub_1CA9491F8();
      OUTLINED_FUNCTION_1_0();
      v13 = v12;
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_6_0();
      v17 = v16 - v15;
      if (*(v10 + 16) <= a3)
      {
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_32_4();
        (*(v13 + 16))(v17, v18 + *(v13 + 72) * a3, v11);
        sub_1CA9491A8();
        v19 = OUTLINED_FUNCTION_69();
        v20(v19);
      }
    }
  }
}

void sub_1CA367290()
{
  OUTLINED_FUNCTION_37_0();
  if ((v1 & 0x8000000000000000) != 0 || (v2 = v0, v3 = v1, v4 = *(v0 + 56), v5 = MEMORY[0x1E69E7CC0], *(v4 + 16) <= v1))
  {
LABEL_69:
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v6 = sub_1CA9491F8();
    v7 = &v55;
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v3;
    v60 = v10;
    (*(v10 + 16))(v9, v12, v6);
    v80 = v5;
    if (sub_1CA25B410(v5))
    {
      sub_1CA2E8760(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CD0];
    }

    v79 = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444918, &qword_1CA9843B0);
    v58 = &v55;
    v15 = v14 - 8;
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v16);
    v18 = &v55 - v17;
    v59 = v9;
    sub_1CA949118();
    v19 = sub_1CA9490E8();
    v20 = *(v15 + 44);
    OUTLINED_FUNCTION_27_2(v2 + 48, &v78);
    v74 = v19;
    v21 = *(v19 - 8);
    v73 = *(v21 + 64);
    v22 = OUTLINED_FUNCTION_71_3(&qword_1EC4447F8);
    v23 = v22;
    v72 = (v21 + 8);
    v65 = MEMORY[0x1E69E7CC0];
    while (1)
    {
LABEL_8:
      MEMORY[0x1EEE9AC00](v22);
      OUTLINED_FUNCTION_61_3();
      sub_1CA94CA58();
      sub_1CA36DA78(&qword_1EC444920, MEMORY[0x1EEE78AC8]);
      v24 = v74;
      v25 = sub_1CA94C358();
      (*v72)(v21, v24);
      if (v25)
      {
        sub_1CA27080C(v18, &qword_1EC444918, &qword_1CA9843B0);
        (*(v60 + 8))(v59, v6);

        OUTLINED_FUNCTION_100();
        goto LABEL_69;
      }

      v26 = v18;
      v27 = sub_1CA94CB28();
      v21 = *v28;
      v27(v77, 0);
      sub_1CA94CA68();
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v29 = *(v2 + 48);
      if (v21 >= *(v29 + 16))
      {
        goto LABEL_71;
      }

      v22 = *(v29 + 8 * v21 + 32);
      if (!(v22 >> 62))
      {
        break;
      }

      v21 = *(v29 + 8 * v21 + 32);
      sub_1CA94D328();
      v22 = OUTLINED_FUNCTION_87();
      if (v18)
      {
        goto LABEL_13;
      }
    }

    v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (v26 >= 1)
    {
      v55 = v6;
      v56 = v2;
      v57 = v7;
      OUTLINED_FUNCTION_56_3(v22 & 0xC000000000000001);
      v61 = v30 + 32;
      v64 = v30;
      sub_1CA94C218();
      v31 = 0;
      v70 = v20;
      v71 = v18;
      v69 = v23;
      v68 = v26;
      while (1)
      {
        OUTLINED_FUNCTION_155_0();
        if (v32)
        {
          v21 = MEMORY[0x1CCAA22D0](v31, v64);
        }

        else
        {
          v21 = *(v61 + 8 * v31);
        }

        v33 = v79;
        if ((v79 & 0xC000000000000001) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_16_8();

        v34 = sub_1CA94D368();

        if ((v34 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_63:

        v20 = v70;
        v18 = v71;
        v23 = v69;
        if (++v31 == v68)
        {

          v7 = v57;
          v2 = v56;
          v6 = v55;
          goto LABEL_8;
        }
      }

      if (*(v79 + 16))
      {
        sub_1CA94D918();
        v35 = *(v21 + 24);
        v76 = *(v21 + 16);
        v36 = *(v21 + 40);
        v63 = *(v21 + 32);
        v75 = v36;
        v67 = v35;
        switch(v36)
        {
          case 1:
            MEMORY[0x1CCAA2780](1);
            sub_1CA94CFE8();
            break;
          case 2:
            v38 = 2;
            goto LABEL_27;
          case 3:
            v38 = 3;
LABEL_27:
            MEMORY[0x1CCAA2780](v38);
            sub_1CA94CFE8();
            v37 = v35;
            goto LABEL_28;
          case 4:
            v37 = 4;
LABEL_28:
            MEMORY[0x1CCAA2780](v37);
            break;
          default:
            MEMORY[0x1CCAA2780](0);
            sub_1CA94CFE8();
            sub_1CA94C458();
            break;
        }

        sub_1CA94D968();
        OUTLINED_FUNCTION_60_0();
        v41 = v40 & ~v39;
        v42 = v75;
        if ((*(v33 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
        {
          v43 = ~v39;
          v45 = v75 != 4 || (v67 | v76 | v63) != 0;
          v66 = v45;
          while (1)
          {
            v46 = *(*(v33 + 48) + 8 * v41);
            v47 = *(v46 + 24);
            v48 = *(v46 + 32);
            switch(*(v46 + 40))
            {
              case 1:
                if (v42 != 1)
                {
                  goto LABEL_59;
                }

                sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

                v50 = sub_1CA94CFD8();
                goto LABEL_56;
              case 2:
                if (v42 != 2)
                {
                  goto LABEL_59;
                }

                goto LABEL_51;
              case 3:
                if (v42 != 3)
                {
                  goto LABEL_59;
                }

LABEL_51:
                sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

                v51 = sub_1CA94CFD8();

                v42 = v75;
                if ((v51 & 1) != 0 && v47 == v67)
                {
                  goto LABEL_63;
                }

                goto LABEL_59;
              case 4:
                if (!v66)
                {
                  goto LABEL_63;
                }

                goto LABEL_59;
              default:
                if (v42)
                {
                  goto LABEL_59;
                }

                v62 = sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

                if (sub_1CA94CFD8())
                {
                  if (v47 == v67 && v48 == v63)
                  {

                    goto LABEL_63;
                  }

                  v50 = sub_1CA94D7F8();
LABEL_56:
                  v52 = v50;

                  v42 = v75;
                  if (v52)
                  {
                    goto LABEL_63;
                  }
                }

                else
                {

                  v42 = v75;
                }

LABEL_59:
                v41 = (v41 + 1) & v43;
                if (((*(v33 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                {
                  goto LABEL_60;
                }

                break;
            }
          }
        }
      }

LABEL_60:

      MEMORY[0x1CCAA1490](v53);
      v54 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v54 >> 1)
      {
        OUTLINED_FUNCTION_64(v54);
        sub_1CA94C698();
      }

      OUTLINED_FUNCTION_116();
      sub_1CA94C6E8();
      v65 = v80;
      sub_1CA368E60(v77, v21);
      goto LABEL_63;
    }

LABEL_72:
    __break(1u);
  }
}

void sub_1CA367AE4()
{
  OUTLINED_FUNCTION_37_0();
  v112 = v0;
  v122 = v2;
  v4 = v3;
  v128 = v5;
  v7 = v6;
  v94 = v8;
  v95 = _s17ControlFlowBranchVMa(0);
  OUTLINED_FUNCTION_1_0();
  v108 = v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v94 - v14;
  v121 = sub_1CA9491F8();
  OUTLINED_FUNCTION_1_0();
  v117 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v109 = v17;
  v123 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA9491E8();
  v18 = *(v7 + 16);
  if (!v18)
  {
LABEL_39:
    v91 = v123;
    OUTLINED_FUNCTION_27_2(v123, &v129);
    (*(v117 + 16))(v94, v91, v121);
    v92 = OUTLINED_FUNCTION_116();
    v93(v92);
    OUTLINED_FUNCTION_36();
    return;
  }

  v105 = v7 + 32;
  v19 = OUTLINED_FUNCTION_27_2(v123, &v131);
  v20 = 0;
  v104 = 0;
  v116 = v117 + 32;
  v111 = v117 + 16;
  v115 = (v117 + 8);
  v120 = v4;
  v114 = v13;
  v96 = v18;
  while (1)
  {
    v21 = v105 + 40 * v20;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    LOBYTE(v21) = *(v21 + 32);
    v110 = v24;
    v106 = v20;
    if ((v21 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v19);
      OUTLINED_FUNCTION_34_6();
      v53 = v22;
      v54 = v22;
      sub_1CA949158();
      v55 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA2E52A8();
        v55 = v89;
      }

      v57 = *(v55 + 16);
      v56 = *(v55 + 24);
      if (v57 >= v56 >> 1)
      {
        OUTLINED_FUNCTION_64(v56);
        sub_1CA2E52A8();
        v55 = v90;
      }

      *(v55 + 16) = v57 + 1;
      OUTLINED_FUNCTION_32_4();
      (*(v59 + 32))(v58 + *(v59 + 72) * v57, v1, v121);
      v4 = v120;
      *v120 = v55;
      [v128 indexOfAction_];
      v60 = OUTLINED_FUNCTION_37_4();
      OUTLINED_FUNCTION_28(v60, v61);
      sub_1CA949168();
      swift_endAccess();
      sub_1CA36D780(v53, v23, v110, v25, 0);
      goto LABEL_38;
    }

    v103 = &v94;
    v26 = v109;
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_34_6();
    sub_1CA94C218();
    sub_1CA94C218();
    v102 = v25;
    v127 = v1;
    sub_1CA9491E8();
    if (!*(v24 + 16))
    {
      goto LABEL_42;
    }

    v99 = v25;
    v100 = v23;
    v101 = v22;
    v27 = (v24 + ((*(v108 + 80) + 32) & ~*(v108 + 80)));
    v28 = [*v27 identifier];
    v29 = sub_1CA94C3A8();
    v31 = v30;

    v129 = v29;
    v130 = v31;
    MEMORY[0x1EEE9AC00](v32);
    OUTLINED_FUNCTION_98();
    *(v33 - 16) = &v129;
    v34 = v104;
    LOBYTE(v28) = sub_1CA2BFD14(sub_1CA36DB00, v35, &unk_1F49F6438);

    if (v28)
    {
      v124 = *(v24 + 16);
      if (v124)
      {
        break;
      }
    }

LABEL_28:
    v104 = v34;
    v98 = &v94;
    MEMORY[0x1EEE9AC00](v36);
    v62 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    OUTLINED_FUNCTION_37_4();
    swift_beginAccess();
    v119 = &v94 - v62;
    sub_1CA949158();
    v63 = swift_endAccess();
    v64 = &v94;
    MEMORY[0x1EEE9AC00](v63);
    v118 = (&v94 - v62);
    sub_1CA9491E8();
    v1 = *(v110 + 16);
    v97 = &v94;
    if (v1)
    {
      v113 = *(v95 + 28);
      OUTLINED_FUNCTION_56_3(*(v108 + 72));
      v65 = v120;
      v66 = v114;
      v67 = v109;
      do
      {
        v68 = sub_1CA36D71C(v27, v66);
        MEMORY[0x1EEE9AC00](v68);
        OUTLINED_FUNCTION_61_3();
        sub_1CA949158();
        v69 = *v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v1;
        v126 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_1CA2E52A8();
          v69 = v82;
        }

        v72 = *(v69 + 16);
        v71 = *(v69 + 24);
        if (v72 >= v71 >> 1)
        {
          OUTLINED_FUNCTION_64(v71);
          OUTLINED_FUNCTION_43_5();
          sub_1CA2E52A8();
          v69 = v83;
        }

        *(v69 + 16) = v72 + 1;
        v73 = v117;
        OUTLINED_FUNCTION_32_4();
        v75 = v121;
        v76 = (*(v73 + 32))(v74 + *(v73 + 72) * v72, v62, v121);
        v65 = v120;
        *v120 = v69;
        v124 = &v94;
        MEMORY[0x1EEE9AC00](v76);
        v62 = &v94 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v73 + 16))(v62, v119, v75);
        v66 = v114;
        [v128 indexOfAction_];
        sub_1CA949168();
        v77 = sub_1CA9491C8();
        MEMORY[0x1EEE9AC00](v77);
        sub_1CA367AE4();
        OUTLINED_FUNCTION_7_14();
        sub_1CA36D8F4(v66, v78);
        sub_1CA9491C8();
        v64 = *(v73 + 8);
        (v64)(v62, v75);
        (v64)(v62, v75);
        v79 = v125;
        v80 = v126;
        OUTLINED_FUNCTION_155_0();
        v27 = (v80 + v81);
        v1 = v79 - 1;
      }

      while (v1);
    }

    else
    {
      v65 = v120;
    }

    v84 = OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_28(v84, v85);
    v86 = v118;
    sub_1CA9491C8();
    swift_endAccess();
    sub_1CA368558(v65, v64, v122);
    [v128 indexOfAction_];
    OUTLINED_FUNCTION_28(v64, &v129);
    sub_1CA949168();
    swift_endAccess();
    sub_1CA36D780(v101, v100, v110, v99, 1);
    v87 = *v115;
    v88 = v121;
    (*v115)(v86, v121);
    v87(v119, v88);
    v87(v127, v88);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_100();
    v4 = v65;
    v18 = v96;
LABEL_38:
    v20 = v106 + 1;
    if (v106 + 1 == v18)
    {
      goto LABEL_39;
    }
  }

  v37 = 0;
  v119 = *(v95 + 28);
  v126 = v27;
  while (v37 < *(v110 + 16))
  {
    v38 = v107;
    sub_1CA36D71C(v27 + *(v108 + 72) * v37, v107);
    v39 = *(v38 + v119);
    sub_1CA94C218();
    OUTLINED_FUNCTION_7_14();
    sub_1CA36D8F4(v38, v40);
    v41 = sub_1CA6A71A4(v39);

    if (v41 >> 62)
    {
      v42 = sub_1CA94D328();
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v125 = v37;
    if (v42)
    {
      if (v42 < 1)
      {
        goto LABEL_41;
      }

      for (i = 0; i != v42; ++i)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x1CCAA22D0](i, v41);
        }

        else
        {
          v44 = *(v41 + 8 * i + 32);
        }

        v45 = v44;
        v46 = [v44 identifier];
        v47 = sub_1CA94C3A8();
        v49 = v48;

        v129 = v47;
        v130 = v49;
        MEMORY[0x1EEE9AC00](v50);
        OUTLINED_FUNCTION_98();
        *(v51 - 16) = &v129;
        LOBYTE(v46) = sub_1CA2BFD14(sub_1CA36DB00, v52, &unk_1F49F6438);

        if ((v46 & 1) == 0)
        {
          [v128 indexOfAction_];
          sub_1CA949168();
        }
      }
    }

    v37 = v125 + 1;

    v26 = v109;
    v27 = v126;
    if (v37 == v124)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1CA368558(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CA9491F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v9);
  (*(v6 + 16))(&v13 - v8, a2, v5);
  sub_1CA949158();
  (*(v6 + 8))(&v13 - v8, v5);
  sub_1CA69ADE0();
  v10 = *(*a1 + 16);
  sub_1CA69AFF4(v10);
  v11 = *a1;
  *(v11 + 16) = v10 + 1;
  return (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, &v13 - v8, v5);
}

uint64_t sub_1CA3686EC()
{

  return v0;
}

uint64_t sub_1CA36874C()
{
  sub_1CA3686EC();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1CA368780()
{
  MEMORY[0x1CCAA2780](*v0);
  OUTLINED_FUNCTION_33_5();
  sub_1CA94C298();
  OUTLINED_FUNCTION_33_5();
  sub_1CA94C298();
  v1 = v0[9];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1CCAA27B0](*&v1);
  v2 = v0[10];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1CCAA27B0](*&v2);
  if (!*(v0 + 12))
  {
    return sub_1CA94D938();
  }

  v3 = *(v0 + 13);
  sub_1CA94D938();
  sub_1CA94C218();
  OUTLINED_FUNCTION_20_0();
  sub_1CA94C458();
  MEMORY[0x1CCAA2780](v3);
}