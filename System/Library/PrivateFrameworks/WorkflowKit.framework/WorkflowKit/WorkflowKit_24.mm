uint64_t sub_1CA4DDAF4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2DBC14;

  return sub_1CA4DD420(v2, v3, v4);
}

unint64_t sub_1CA4DDBA8()
{
  result = qword_1EC445D28;
  if (!qword_1EC445D28)
  {
    sub_1CA25B3D0(255, &qword_1EDB9FAC0, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D28);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA4DDC40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CA4DDCCC()
{
  v101 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C3800;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v100 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA981310;
  *(v2 + 32) = @"DescriptionSummary";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionSummary";
  v6 = sub_1CA94C438("Shows the results of the previous action in the Content Graph.", 62);
  v102 = v7;
  v8 = sub_1CA94C438("Shows the results of the previous action in the Content Graph.", 62);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = v12;
  v107 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v93 - v107;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v104 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v106 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v103 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v93 - v103;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v6, v102, v8, v10, 0, 0, v13, v17);
  v102 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 64) = v102;
  *(v2 + 40) = v19;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v20 = sub_1CA94C1E8();
  v21 = v100;
  *(inited + 80) = sub_1CA6B3784(v20);
  *(inited + 104) = v21;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 0xD000000000000014;
  *(inited + 128) = 0x80000001CA99B480;
  v22 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0xD00000000000002CLL;
  *(inited + 168) = 0x80000001CA9A9D20;
  *(inited + 184) = v22;
  *(inited + 192) = @"Input";
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v24 = swift_initStackObject();
  v97 = xmmword_1CA981350;
  *(v24 + 16) = xmmword_1CA981350;
  *(v24 + 32) = 0x656C7069746C754DLL;
  *(v24 + 40) = 0xE800000000000000;
  v25 = MEMORY[0x1E69E6370];
  *(v24 + 48) = 1;
  *(v24 + 72) = v25;
  strcpy((v24 + 80), "ParameterKey");
  *(v24 + 93) = 0;
  *(v24 + 94) = -5120;
  *(v24 + 96) = 0x7475706E494657;
  *(v24 + 104) = 0xE700000000000000;
  *(v24 + 120) = v23;
  *(v24 + 128) = 0x6465726975716552;
  *(v24 + 136) = 0xE800000000000000;
  *(v24 + 144) = 1;
  *(v24 + 168) = v25;
  *(v24 + 176) = 0x7365707954;
  *(v24 + 184) = 0xE500000000000000;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v24 + 216) = v100;
  *(v24 + 192) = &unk_1F4A01BB0;
  v26 = @"IconColor";
  v27 = @"IconSymbol";
  v28 = @"Input";
  v29 = sub_1CA94C1E8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v29;
  *(inited + 224) = v30;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v25;
  *(inited + 272) = @"Name";
  v31 = @"InputPassthrough";
  v32 = @"Name";
  v33 = sub_1CA94C438("Show Content Graph (Action Name)", 32);
  v35 = v34;
  v36 = sub_1CA94C438("Show Content Graph", 18);
  v38 = v37;
  v99 = &v93;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v93 - v107;
  sub_1CA948D98();
  v40 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v93 - v103;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v33, v35, v36, v38, 0, 0, v39, v41);
  *(inited + 304) = v102;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v99 = swift_allocObject();
  *(v99 + 1) = xmmword_1CA9813B0;
  v98 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v43 = swift_initStackObject();
  *(v43 + 16) = v97;
  *(v43 + 32) = @"Class";
  *(v43 + 40) = 0xD000000000000019;
  *(v43 + 48) = 0x80000001CA99B030;
  v44 = MEMORY[0x1E69E6158];
  *(v43 + 64) = MEMORY[0x1E69E6158];
  *(v43 + 72) = @"Key";
  *(v43 + 80) = 0x7475706E494657;
  *(v43 + 88) = 0xE700000000000000;
  *(v43 + 104) = v44;
  *(v43 + 112) = @"Label";
  v45 = @"Parameters";
  v46 = @"Class";
  v47 = @"Key";
  v48 = @"Label";
  v49 = sub_1CA94C438("Input (WFInput)", 15);
  v95 = v50;
  v96 = v49;
  v94 = sub_1CA94C438("Input", 5);
  v52 = v51;
  *&v97 = &v93;
  MEMORY[0x1EEE9AC00](v94);
  v53 = &v93 - v107;
  sub_1CA948D98();
  v54 = v104;
  v55 = [v104 bundleURL];
  v93 = &v93;
  MEMORY[0x1EEE9AC00](v55);
  v56 = v103;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 120) = sub_1CA2F9F14(v96, v95, v94, v52, 0, 0, v53, &v93 - v56);
  v58 = v102;
  *(v43 + 144) = v102;
  *(v43 + 152) = @"Placeholder";
  v59 = @"Placeholder";
  v60 = sub_1CA94C438("Input (WFInput)", 15);
  v95 = v61;
  v96 = v60;
  v62 = sub_1CA94C438("Input", 5);
  v94 = v63;
  *&v97 = &v93;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v93 - v107;
  sub_1CA948D98();
  v65 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v96, v95, v62, v94, 0, 0, v64, &v93 - v56);
  *(v43 + 184) = v58;
  *(v43 + 160) = v67;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v68 = sub_1CA94C1E8();
  v69 = sub_1CA2F864C(v68);
  v70 = v99;
  v99[4] = v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v70;
  *(inited + 344) = v71;
  *(inited + 352) = @"ParameterSummary";
  v72 = @"ParameterSummary";
  v73 = sub_1CA94C438("Show Content Graph of ${WFInput} (Parameter Summary)", 52);
  v75 = v74;
  v76 = sub_1CA94C438("Show Content Graph of ${WFInput}", 32);
  v78 = v77;
  v102 = &v93;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v93 - v107;
  sub_1CA948D98();
  v80 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v93 - v103;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v73, v75, v76, v78, 0, 0, v79, v81);
  v84 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v85 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v84;
  *(inited + 384) = v85;
  *(inited + 392) = @"RequiredResources";
  *(inited + 400) = &unk_1F4A01BE0;
  v86 = v100;
  *(inited + 424) = v100;
  *(inited + 432) = @"UserInterfaceClasses";
  v87 = @"RequiredResources";
  v88 = @"UserInterfaceClasses";
  v89 = sub_1CA94C1E8();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 440) = v89;
  *(inited + 464) = v90;
  *(inited + 472) = @"UserInterfaces";
  *(inited + 504) = v86;
  *(inited + 480) = &unk_1F4A01C70;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v91 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4DE938()
{
  v235 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9C3930;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("add|text|prepend", 16);
  v6 = v5;
  v7 = sub_1CA94C438("add|text|prepend", 16);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v251 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v252 = v11;
  v12 = v226 - v251;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v250 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v248 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v249 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v226 - v249;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v247 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v244 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v245 = xmmword_1CA9813C0;
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = @"DescriptionNote";
  v21 = @"Description";
  v22 = @"DescriptionNote";
  v23 = sub_1CA94C438("If no file exists yet at the specified path, a new file will be created. Make sure to include a file extension (usually .txt) at the end of your path.", 150);
  v241 = v24;
  v242 = v23;
  v25 = sub_1CA94C438("If no file exists yet at the specified path, a new file will be created. Make sure to include a file extension (usually .txt) at the end of your path.", 150);
  v27 = v26;
  v243 = v226;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v226 - v251;
  sub_1CA948D98();
  v29 = v250;
  v30 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v246 = inited;
  v31 = v249;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v242, v241, v25, v27, 0, 0, v28, v226 - v31);
  *(v20 + 64) = v247;
  *(v20 + 72) = @"DescriptionResult";
  v33 = @"DescriptionResult";
  v34 = sub_1CA94C438("The file that was appended to", 29);
  v241 = v35;
  v242 = v34;
  v240 = sub_1CA94C438("The file that was appended to", 29);
  v37 = v36;
  v243 = v226;
  MEMORY[0x1EEE9AC00](v240);
  v38 = v251;
  sub_1CA948D98();
  v39 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 80) = sub_1CA2F9F14(v242, v241, v240, v37, 0, 0, v226 - v38, v226 - v31);
  v41 = v247;
  *(v20 + 104) = v247;
  *(v20 + 112) = @"DescriptionSummary";
  v42 = @"DescriptionSummary";
  v43 = sub_1CA94C438("Adds the text passed as input to the end of the specified file.", 63);
  v241 = v44;
  v242 = v43;
  v45 = sub_1CA94C438("Adds the text passed as input to the end of the specified file.", 63);
  v47 = v46;
  v243 = v226;
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948D98();
  v48 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v226 - v249;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v242, v241, v45, v47, 0, 0, v226 - v38, v49);
  *(v20 + 144) = v41;
  *(v20 + 120) = v51;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v52 = sub_1CA94C1E8();
  v53 = v244;
  v54 = sub_1CA6B3784(v52);
  v55 = v246;
  v246[15] = v54;
  v55[18] = v53;
  v55[19] = @"IconName";
  v55[20] = 0x786F62706F7244;
  v55[21] = 0xE700000000000000;
  v56 = MEMORY[0x1E69E6158];
  v55[23] = MEMORY[0x1E69E6158];
  v55[24] = @"Input";
  v57 = v56;
  v58 = v55;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  v239 = xmmword_1CA981350;
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  v60 = MEMORY[0x1E69E6370];
  *(v59 + 48) = 0;
  *(v59 + 72) = v60;
  strcpy((v59 + 80), "ParameterKey");
  *(v59 + 93) = 0;
  *(v59 + 94) = -5120;
  *(v59 + 96) = 0x7475706E494657;
  *(v59 + 104) = 0xE700000000000000;
  *(v59 + 120) = v57;
  *(v59 + 128) = 0x6465726975716552;
  *(v59 + 136) = 0xE800000000000000;
  *(v59 + 144) = 1;
  *(v59 + 168) = v60;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v240;
  *(v59 + 192) = &unk_1F4A01CA0;
  v61 = @"IconName";
  v62 = @"Input";
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v244 = v64;
  v58[25] = v63;
  v58[28] = v64;
  v58[29] = @"Name";
  v65 = @"Name";
  v241 = sub_1CA94C438("Append to Dropbox Text File (Action Name)", 41);
  v238 = v66;
  v67 = sub_1CA94C438("Append to Dropbox Text File", 27);
  v69 = v68;
  v242 = v226;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v226 - v251;
  sub_1CA948D98();
  v71 = v250;
  v72 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v249;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v75 = sub_1CA2F9F14(v241, v238, v67, v69, 0, 0, v70, v226 - v73);
  v76 = v246;
  v77 = v247;
  v246[30] = v75;
  v76[33] = v77;
  v76[34] = @"Output";
  v78 = swift_initStackObject();
  *(v78 + 16) = v245;
  *(v78 + 32) = 0x656C7069746C754DLL;
  *(v78 + 40) = 0xE800000000000000;
  *(v78 + 48) = 0;
  *(v78 + 72) = MEMORY[0x1E69E6370];
  *(v78 + 80) = 0x614E74757074754FLL;
  *(v78 + 88) = 0xEA0000000000656DLL;
  v79 = @"Output";
  v80 = sub_1CA94C438("Appended File (Default Output Name)", 35);
  v242 = v81;
  v243 = v80;
  v241 = sub_1CA94C438("Appended File", 13);
  v83 = v82;
  *&v245 = v226;
  MEMORY[0x1EEE9AC00](v241);
  v84 = v226 - v251;
  sub_1CA948D98();
  v85 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 96) = sub_1CA2F9F14(v243, v242, v241, v83, 0, 0, v84, v226 - v73);
  *(v78 + 120) = v77;
  *(v78 + 128) = 0x7365707954;
  *(v78 + 168) = v240;
  *(v78 + 136) = 0xE500000000000000;
  *(v78 + 144) = &unk_1F4A01CD0;
  v87 = MEMORY[0x1E69E6158];
  v88 = sub_1CA94C1E8();
  v89 = v246;
  v246[35] = v88;
  v89[38] = v244;
  v89[39] = @"ParameterCollapsingBehavior";
  v89[40] = 0x726576654ELL;
  v89[41] = 0xE500000000000000;
  v89[43] = v87;
  v89[44] = @"Parameters";
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v244 = swift_allocObject();
  *(v244 + 16) = xmmword_1CA981570;
  *&v245 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CA981420;
  *(v90 + 32) = @"AutocapitalizationType";
  *(v90 + 40) = 1701736270;
  *(v90 + 48) = 0xE400000000000000;
  *(v90 + 64) = v87;
  *(v90 + 72) = @"Class";
  v233 = 0xD000000000000014;
  v234 = 0x80000001CA99B500;
  *(v90 + 80) = 0xD000000000000014;
  *(v90 + 88) = 0x80000001CA99B500;
  *(v90 + 104) = v87;
  *(v90 + 112) = @"Description";
  v231 = @"Class";
  v91 = @"ParameterCollapsingBehavior";
  v92 = @"Parameters";
  v93 = @"AutocapitalizationType";
  v94 = @"Description";
  v95 = sub_1CA94C438("The name or path of the file to retrieve. For example, if you are appending a file called “notes.txt” in a folder called “Public”, use “/Public/notes.txt”. (WFFilePath)", 180);
  v97 = v96;
  v98 = sub_1CA94C438("The name or path of the file to retrieve. For example, if you are appending a file called “notes.txt” in a folder called “Public”, use “/Public/notes.txt”.", 167);
  v100 = v99;
  v242 = v226;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v226 - v251;
  sub_1CA948D98();
  v102 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v226 - v249;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 120) = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v103);
  *(v90 + 144) = v247;
  *(v90 + 152) = @"DisableAutocorrection";
  *(v90 + 160) = 1;
  *(v90 + 184) = MEMORY[0x1E69E6370];
  *(v90 + 192) = @"Key";
  *(v90 + 200) = 0x6150656C69464657;
  *(v90 + 208) = 0xEA00000000006874;
  v105 = MEMORY[0x1E69E6158];
  *(v90 + 224) = MEMORY[0x1E69E6158];
  *(v90 + 232) = @"KeyboardType";
  *(v90 + 240) = 0x6372616553626557;
  *(v90 + 248) = 0xE900000000000068;
  *(v90 + 264) = v105;
  *(v90 + 272) = @"Label";
  v106 = @"Key";
  v107 = @"Label";
  v108 = v106;
  v109 = v107;
  v232 = v108;
  v236 = v109;
  v110 = @"DisableAutocorrection";
  v111 = @"KeyboardType";
  v241 = sub_1CA94C438("File Path (WFFilePath)", 22);
  v237 = v112;
  v113 = sub_1CA94C438("File Path", 9);
  v115 = v114;
  v242 = v226;
  MEMORY[0x1EEE9AC00](v113);
  v116 = v251;
  sub_1CA948D98();
  v117 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = v226 - v249;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 280) = sub_1CA2F9F14(v241, v237, v113, v115, 0, 0, v226 - v116, v118);
  v120 = v247;
  *(v90 + 304) = v247;
  *(v90 + 312) = @"Placeholder";
  v121 = @"Placeholder";
  v241 = sub_1CA94C438("example.txt (WFFilePath)", 24);
  v237 = v122;
  v123 = sub_1CA94C438("example.txt", 11);
  v230 = v124;
  v242 = v226;
  MEMORY[0x1EEE9AC00](v123);
  v125 = v226 - v116;
  sub_1CA948D98();
  v126 = v250;
  v127 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = v249;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 320) = sub_1CA2F9F14(v241, v237, v123, v230, 0, 0, v125, v226 - v128);
  *(v90 + 344) = v120;
  *(v90 + 352) = @"Prefix";
  *(v90 + 360) = 0x756374726F68532FLL;
  *(v90 + 368) = 0xEB000000002F7374;
  v130 = MEMORY[0x1E69E6158];
  *(v90 + 384) = MEMORY[0x1E69E6158];
  *(v90 + 392) = @"TextAlignment";
  *(v90 + 424) = v130;
  v131 = v130;
  *(v90 + 400) = 1952867660;
  *(v90 + 408) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  v242 = v132;
  v241 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v133 = @"Prefix";
  v134 = @"TextAlignment";
  v135 = sub_1CA94C1E8();
  v136 = sub_1CA2F864C(v135);
  *(v244 + 32) = v136;
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1CA981370;
  v138 = v231;
  *(v137 + 32) = v231;
  *(v137 + 40) = 0xD000000000000016;
  *(v137 + 48) = 0x80000001CA99C4A0;
  *(v137 + 64) = v131;
  *(v137 + 72) = @"DefaultValue";
  *(v137 + 80) = 0x646E65707041;
  *(v137 + 88) = 0xE600000000000000;
  *(v137 + 104) = v131;
  *(v137 + 112) = @"Items";
  v237 = swift_allocObject();
  *&v237->data = xmmword_1CA981360;
  v139 = @"DefaultValue";
  v238 = v138;
  v231 = v139;
  v140 = @"Items";
  v141 = sub_1CA94C438("Append (WFAppendFileWriteMode)", 30);
  v228 = v142;
  v229 = v141;
  v143 = sub_1CA94C438("Append", 6);
  v227 = v144;
  v230 = v226;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v226 - v251;
  sub_1CA948D98();
  v146 = [v126 bundleURL];
  v226[1] = v226;
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v229, v228, v143, v227, 0, 0, v145, v226 - v128);
  v237[1].isa = v148;
  v149 = sub_1CA94C438("Prepend (WFAppendFileWriteMode)", 31);
  v228 = v150;
  v229 = v149;
  v227 = sub_1CA94C438("Prepend", 7);
  v152 = v151;
  v230 = v226;
  MEMORY[0x1EEE9AC00](v227);
  v153 = v251;
  sub_1CA948D98();
  v154 = [v126 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156 = sub_1CA2F9F14(v229, v228, v227, v152, 0, 0, v226 - v153, v226 - v128);
  v157 = v237;
  v237[1].info = v156;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v137 + 120) = v157;
  v159 = v232;
  *(v137 + 144) = v158;
  *(v137 + 152) = v159;
  *(v137 + 160) = 0xD000000000000015;
  *(v137 + 168) = 0x80000001CA9C3D00;
  v160 = v236;
  *(v137 + 184) = MEMORY[0x1E69E6158];
  *(v137 + 192) = v160;
  v237 = v159;
  v236 = v160;
  v161 = sub_1CA94C438("Mode (WFAppendFileWriteMode)", 28);
  v230 = v162;
  v163 = sub_1CA94C438("Mode", 4);
  v165 = v164;
  v232 = v226;
  MEMORY[0x1EEE9AC00](v163);
  sub_1CA948D98();
  v166 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  v167 = v226 - v249;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v161, v230, v163, v165, 0, 0, v226 - v153, v167);
  *(v137 + 224) = v247;
  *(v137 + 200) = v169;
  v170 = sub_1CA94C1E8();
  v171 = sub_1CA2F864C(v170);
  *(v244 + 40) = v171;
  v172 = swift_allocObject();
  *(v172 + 16) = v239;
  *(v172 + 32) = v238;
  *(v172 + 40) = 0xD000000000000011;
  *(v172 + 48) = 0x80000001CA99E620;
  v173 = MEMORY[0x1E69E6158];
  v174 = v231;
  *(v172 + 64) = MEMORY[0x1E69E6158];
  *(v172 + 72) = v174;
  *(v172 + 80) = 1;
  v175 = v237;
  *(v172 + 104) = MEMORY[0x1E69E6370];
  *(v172 + 112) = v175;
  *(v172 + 120) = 0xD000000000000011;
  *(v172 + 128) = 0x80000001CA9C3D40;
  v176 = v236;
  *(v172 + 144) = v173;
  *(v172 + 152) = v176;
  v177 = sub_1CA94C438("Make New Line (WFAppendOnNewLine)", 33);
  v230 = v178;
  v231 = v177;
  v179 = sub_1CA94C438("Make New Line", 13);
  v229 = v180;
  v232 = v226;
  MEMORY[0x1EEE9AC00](v179);
  v181 = v226 - v153;
  sub_1CA948D98();
  v182 = v250;
  v183 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  v184 = v249;
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v186 = sub_1CA2F9F14(v231, v230, v179, v229, 0, 0, v181, v226 - v184);
  *(v172 + 184) = v247;
  *(v172 + 160) = v186;
  v187 = sub_1CA94C1E8();
  v188 = sub_1CA2F864C(v187);
  *(v244 + 48) = v188;
  v189 = swift_allocObject();
  *(v189 + 16) = v239;
  v191 = v233;
  v190 = v234;
  *(v189 + 32) = v238;
  *(v189 + 40) = v191;
  *(v189 + 48) = v190;
  v192 = MEMORY[0x1E69E6158];
  v193 = v237;
  *(v189 + 64) = MEMORY[0x1E69E6158];
  *(v189 + 72) = v193;
  *(v189 + 80) = 0x7475706E494657;
  *(v189 + 88) = 0xE700000000000000;
  v194 = v236;
  *(v189 + 104) = v192;
  *(v189 + 112) = v194;
  v195 = sub_1CA94C438("Text (WFInput)", 14);
  v238 = v196;
  *&v239 = v195;
  v197 = sub_1CA94C438("Text", 4);
  v199 = v198;
  v243 = v226;
  MEMORY[0x1EEE9AC00](v197);
  v200 = v226 - v251;
  sub_1CA948D98();
  v201 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v189 + 120) = sub_1CA2F9F14(v239, v238, v197, v199, 0, 0, v200, v226 - v184);
  *(v189 + 144) = v247;
  *(v189 + 152) = @"Multiline";
  *(v189 + 184) = MEMORY[0x1E69E6370];
  *(v189 + 160) = 1;
  v203 = @"Multiline";
  v204 = sub_1CA94C1E8();
  v205 = sub_1CA2F864C(v204);
  v206 = v244;
  *(v244 + 56) = v205;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v208 = v246;
  v246[45] = v206;
  v208[48] = v207;
  v208[49] = @"ParameterSummary";
  v209 = @"ParameterSummary";
  v210 = sub_1CA94C438("${WFAppendFileWriteMode} ${WFInput} (Parameter Summary)", 55);
  v212 = v211;
  v213 = sub_1CA94C438("${WFAppendFileWriteMode} ${WFInput}", 35);
  v215 = v214;
  MEMORY[0x1EEE9AC00](v213);
  v216 = v226 - v251;
  sub_1CA948D98();
  v217 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v217);
  v218 = v226 - v249;
  sub_1CA948B68();

  v219 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v220 = sub_1CA2F9F14(v210, v212, v213, v215, 0, 0, v216, v218);
  v221 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v222 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v223 = v246;
  v246[50] = v221;
  v223[53] = v222;
  v223[54] = @"RequiredResources";
  v223[58] = v240;
  v223[55] = &unk_1F4A01D00;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v224 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA4E03E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA4E0468(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 1) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFC)
      {
        return __swift_getEnumTagSinglePayload(&a1[v7 + 1] & ~v7, v6, v4);
      }

      v16 = *a1;
      if (v16 >= 4)
      {
        return v16 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (a1[2] << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1CA4E05E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFC)
  {
    v9 = 252;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 1) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
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
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFC)
          {
            v21 = &a1[v10 + 1] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else
          {
            *a1 = a2 + 3;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA4E0850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001CA9C3F00 == a2;
    if (v6 || (sub_1CA94D7F8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
      if (v7 || (sub_1CA94D7F8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x80000001CA9C3F20 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1CA94D7F8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1CA4E09C0(char a1)
{
  result = 0x6E6168547373656CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x5472657461657267;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA4E0A64(void *a1, uint64_t a2)
{
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DB0, &qword_1CA989478);
  OUTLINED_FUNCTION_1_0();
  v39 = v4;
  v40 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_43();
  v38 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DB8, &qword_1CA989480);
  OUTLINED_FUNCTION_1_0();
  v36 = v8;
  v37 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43();
  v35 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DC0, &qword_1CA989488);
  OUTLINED_FUNCTION_1_0();
  v33 = v12;
  v34 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DC8, &qword_1CA989490);
  OUTLINED_FUNCTION_1_0();
  v32 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445DD0, &qword_1CA989498);
  OUTLINED_FUNCTION_1_0();
  v23 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v31 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA4E3700();
  sub_1CA94D9B8();
  switch(v41)
  {
    case 1:
      v43 = 1;
      sub_1CA4E3834();
      OUTLINED_FUNCTION_17_12(&type metadata for RowTemplateOrderedComparison.LessThanOrEqualToCodingKeys, &v43);
      (*(v33 + 8))(v15, v34);
      break;
    case 2:
      v44 = 2;
      sub_1CA4E37E0();
      v27 = v35;
      OUTLINED_FUNCTION_17_12(&type metadata for RowTemplateOrderedComparison.GreaterThanCodingKeys, &v44);
      v29 = v36;
      v28 = v37;
      goto LABEL_5;
    case 3:
      v45 = 3;
      sub_1CA4E378C();
      v27 = v38;
      OUTLINED_FUNCTION_17_12(&type metadata for RowTemplateOrderedComparison.GreaterThanOrEqualToCodingKeys, &v45);
      v29 = v39;
      v28 = v40;
LABEL_5:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_1CA4E3888();
      OUTLINED_FUNCTION_17_12(&type metadata for RowTemplateOrderedComparison.LessThanCodingKeys, &v42);
      (*(v32 + 8))(v20, v16);
      break;
  }

  return (*(v23 + 8))(v26, v21);
}

void sub_1CA4E0E2C(void *a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D58, &qword_1CA989448);
  OUTLINED_FUNCTION_1_0();
  v60 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_43();
  v62 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D60, &qword_1CA989450);
  OUTLINED_FUNCTION_1_0();
  v57 = v6;
  v58 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43();
  v59 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D68, &qword_1CA989458);
  OUTLINED_FUNCTION_1_0();
  v55 = v10;
  v56 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D70, &qword_1CA989460);
  OUTLINED_FUNCTION_1_0();
  v54 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D78, &qword_1CA989468);
  OUTLINED_FUNCTION_1_0();
  v61 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA4E3700();
  v24 = v64;
  sub_1CA94D9A8();
  if (v24)
  {
    goto LABEL_9;
  }

  v51 = v14;
  v52 = v18;
  v53 = v13;
  v25 = v62;
  v26 = v63;
  v64 = a1;
  v27 = v23;
  v28 = sub_1CA94D738();
  sub_1CA4E3754(v28, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_8;
  }

  v50 = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return;
  }

  v33 = *(v30 + v31);
  sub_1CA4E4238(v31 + 1, v32 >> 1, v29, v30, v31, v32);
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != v37 >> 1)
  {
LABEL_8:
    v42 = sub_1CA94D4A8();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D88, &qword_1CA989470);
    *v44 = &type metadata for RowTemplateOrderedComparison;
    sub_1CA94D708();
    sub_1CA94D498();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v27, v19);
    a1 = v64;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  v38 = v33;
  v40 = v60;
  v39 = v61;
  switch(v38)
  {
    case 1:
      v66 = 1;
      sub_1CA4E3834();
      v45 = v53;
      OUTLINED_FUNCTION_15_15(&type metadata for RowTemplateOrderedComparison.LessThanOrEqualToCodingKeys, &v66);
      swift_unknownObjectRelease();
      v47 = v55;
      v46 = v56;
      goto LABEL_18;
    case 2:
      v67[0] = 2;
      sub_1CA4E37E0();
      v45 = v59;
      OUTLINED_FUNCTION_15_15(&type metadata for RowTemplateOrderedComparison.GreaterThanCodingKeys, v67);
      swift_unknownObjectRelease();
      v47 = v57;
      v46 = v58;
LABEL_18:
      (*(v47 + 8))(v45, v46);
      goto LABEL_19;
    case 3:
      v67[1] = 3;
      sub_1CA4E378C();
      v48 = v50;
      sub_1CA94D6F8();
      if (v48)
      {
        (*(v39 + 8))(v27, v19);
        swift_unknownObjectRelease();
        a1 = v64;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
      (*(v40 + 8))(v25, v26);
LABEL_19:
      (*(v39 + 8))(v27, v19);
      __swift_destroy_boxed_opaque_existential_0(v64);
      break;
    default:
      v65 = 0;
      sub_1CA4E3888();
      v41 = v52;
      OUTLINED_FUNCTION_15_15(&type metadata for RowTemplateOrderedComparison.LessThanCodingKeys, &v65);
      swift_unknownObjectRelease();
      (*(v54 + 8))(v41, v51);
      goto LABEL_19;
  }
}

uint64_t sub_1CA4E1438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA4E0850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA4E1460@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA4E09B8();
  *a1 = result;
  return result;
}

uint64_t sub_1CA4E1488(uint64_t a1)
{
  v2 = sub_1CA4E3700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E14C4(uint64_t a1)
{
  v2 = sub_1CA4E3700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E1520@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_17_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA4E154C(uint64_t a1)
{
  v2 = sub_1CA4E37E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E1588(uint64_t a1)
{
  v2 = sub_1CA4E37E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E15C4(uint64_t a1)
{
  v2 = sub_1CA4E378C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E1600(uint64_t a1)
{
  v2 = sub_1CA4E378C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E163C(uint64_t a1)
{
  v2 = sub_1CA4E3888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E1678(uint64_t a1)
{
  v2 = sub_1CA4E3888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E16B4(uint64_t a1)
{
  v2 = sub_1CA4E3834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4E16F0(uint64_t a1)
{
  v2 = sub_1CA4E3834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4E1744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CA94D918();
  a4(v8, v6);
  return sub_1CA94D968();
}

void sub_1CA4E1790(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1CA4E0E2C(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_1CA4E17DC()
{
  result = qword_1EC445D50;
  if (!qword_1EC445D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D50);
  }

  return result;
}

id sub_1CA4E1838(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 24);
  v4 = &v1[*(a1 + 36)];
  v5 = v3[5](*(a1 + 16), v3);
  switch(v2)
  {
    case 1:
      if (v5)
      {
        sub_1CA94C438("is shorter than or equal to", 27);
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      v12 = OUTLINED_FUNCTION_2_36();
      if ((v13(v12) & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_1CA94C438("is smaller than or equal to", 27);
      OUTLINED_FUNCTION_1_2();
      if (qword_1EDB9F5F0 != -1)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    case 2:
      if (v5)
      {
        sub_1CA94C438("is longer than", 14);
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      v6 = OUTLINED_FUNCTION_2_36();
      if (v7(v6))
      {
        sub_1CA94C438("is larger than", 14);
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      result = WFDefaultLocalizedLabelForContentOperator();
      if (result)
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_28;
    case 3:
      if (v5)
      {
        sub_1CA94C438("is longer than or equal to", 26);
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      v8 = OUTLINED_FUNCTION_2_36();
      if (v9(v8))
      {
        sub_1CA94C438("is larger than or equal to", 26);
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

LABEL_28:
      result = WFDefaultLocalizedLabelForContentOperator();
      if (result)
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_30;
    default:
      if (v5)
      {
        sub_1CA94C438("is shorter than", 15);
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

      v10 = OUTLINED_FUNCTION_2_36();
      if (v11(v10))
      {
        sub_1CA94C438("is smaller than", 15);
        OUTLINED_FUNCTION_1_2();
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_25;
        }

LABEL_35:
        OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
LABEL_25:
        OUTLINED_FUNCTION_14_4();
        OUTLINED_FUNCTION_7_24();
        v14 = OUTLINED_FUNCTION_18_18();
        v15 = OUTLINED_FUNCTION_4_36(v14, sel_localizedStringForKey_value_table_);

LABEL_34:
        v17 = sub_1CA94C3A8();

        return v17;
      }

LABEL_30:
      result = WFDefaultLocalizedLabelForContentOperator();
      if (result)
      {
        goto LABEL_33;
      }

      __break(1u);
LABEL_32:
      result = WFDefaultLocalizedLabelForContentOperator();
      if (result)
      {
LABEL_33:
        v15 = result;
        goto LABEL_34;
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_1CA4E1CC4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA4E1D00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA4E1830();
  *a1 = result;
  return result;
}

uint64_t sub_1CA4E1D2C()
{
  OUTLINED_FUNCTION_59_0();
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1CA4E1E68;
  v5 = OUTLINED_FUNCTION_19_15();

  return v7(v5);
}

uint64_t sub_1CA4E1E68()
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

uint64_t sub_1CA4E1F84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2AD9FC;

  return sub_1CA4E1D2C();
}

uint64_t sub_1CA4E2040(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = v4;
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a3 + 16);
  v13 = (*(a4 + 16) + **(a4 + 16));
  v11 = swift_task_alloc();
  *(v5 + 24) = v11;
  *v11 = v5;
  v11[1] = sub_1CA4E2188;

  return v13(v8, a1, v9, v10, a4);
}

uint64_t sub_1CA4E2188()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v4 = *v1;
  *v3 = v4;
  *(v2 + 32) = v5;

  if (v0)
  {
    v6 = *(v4 + 8);

    return v6(0);
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1CA4E22B0()
{
  v1 = *(v0 + 32);
  switch(**(v0 + 16))
  {
    case 1:
      ++v1;
      goto LABEL_4;
    case 2:
      v2 = v1 == 1;
      goto LABEL_6;
    case 3:
LABEL_4:
      v3 = v1 < 2;
      return (*(v0 + 8))(v3);
    default:
      v2 = v1 == -1;
LABEL_6:
      v3 = v2;
      return (*(v0 + 8))(v3);
  }
}

uint64_t sub_1CA4E2314(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA4E42D0;

  return sub_1CA4E2040(a1, a2, a3, v8);
}

uint64_t sub_1CA4E23DC(uint64_t a1, uint64_t a2)
{
  sub_1CA2C2738();
  v5 = sub_1CA94C1E8();
  v74 = a1;
  sub_1CA43FE30(a1, v80);
  v81 = 0x65756C6176;
  v82 = 0xE500000000000000;
  v72 = *(a2 + 24);
  v73 = a2;
  v75 = v2;
  v69 = *(a2 + 16);
  v70 = *(v72 + 16);
  v71 = v72 + 16;
  v70(v80);
  sub_1CA43FEEC(v80);
  OUTLINED_FUNCTION_8_19();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v76 = v12;
  if (v10)
  {
    while (1)
    {
      v13 = v6;
LABEL_6:
      v14 = __clz(__rbit64(v10)) | (v13 << 6);
      v15 = (*(v79 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(*(v79 + 56) + 8 * v14);
      sub_1CA94C218();
      swift_isUniquelyReferenced_nonNull_native();
      v80[0] = v5;
      sub_1CA271BF8(v17, v16);
      OUTLINED_FUNCTION_22_15();
      if (v21)
      {
        break;
      }

      v22 = v19;
      v23 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444388, &qword_1CA9833C0);
      v24 = sub_1CA94D588();
      if (v24)
      {
        v24 = sub_1CA271BF8(v17, v16);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_38;
        }

        v22 = v24;
      }

      v10 &= v10 - 1;
      if (v23)
      {

        v5 = v80[0];
        v32 = *(v80[0] + 56);
        v33 = *(v32 + 8 * v22);
        *(v32 + 8 * v22) = v18;
      }

      else
      {
        OUTLINED_FUNCTION_9_23(v24, v25, v26, v27, v28, v29, v30, v31, v68, v69, v70, v71, v72, v73, v74, v75, v76, v78, v79, v80[0]);
        *v34 = v17;
        v34[1] = v16;
        *(*(v5 + 56) + 8 * v22) = v18;

        v35 = *(v5 + 16);
        v21 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v21)
        {
          goto LABEL_36;
        }

        *(v5 + 16) = v36;
      }

      v6 = v13;
      v12 = v76;
      v7 = v78;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        sub_1CA43FE30(v74, v80);
        v81 = 0x61765F726568746FLL;
        v82 = 0xEB0000000065756CLL;
        (v70)(v80, v69, v72);
        sub_1CA43FEEC(v80);
        OUTLINED_FUNCTION_8_19();
        v41 = v40 & v39;
        v43 = (v42 + 63) >> 6;
        v77 = v43;
        if (!v41)
        {
          goto LABEL_18;
        }

        while (1)
        {
          v44 = v37;
LABEL_21:
          v45 = __clz(__rbit64(v41)) | (v44 << 6);
          v46 = (*(v79 + 48) + 16 * v45);
          v48 = *v46;
          v47 = v46[1];
          v49 = *(*(v79 + 56) + 8 * v45);
          sub_1CA94C218();
          swift_isUniquelyReferenced_nonNull_native();
          v80[0] = v5;
          sub_1CA271BF8(v48, v47);
          OUTLINED_FUNCTION_22_15();
          if (v21)
          {
            goto LABEL_35;
          }

          v52 = v50;
          v53 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444388, &qword_1CA9833C0);
          v54 = sub_1CA94D588();
          if (v54)
          {
            v54 = sub_1CA271BF8(v48, v47);
            if ((v53 & 1) != (v55 & 1))
            {
              goto LABEL_38;
            }

            v52 = v54;
          }

          v41 &= v41 - 1;
          if (v53)
          {

            v5 = v80[0];
            v62 = *(v80[0] + 56);
            v63 = *(v62 + 8 * v52);
            *(v62 + 8 * v52) = v49;
          }

          else
          {
            OUTLINED_FUNCTION_9_23(v54, v55, v56, v57, v58, v59, v60, v61, v68, v69, v70, v71, v72, v73, v74, v75, v77, v78, v79, v80[0]);
            *v64 = v48;
            v64[1] = v47;
            *(*(v5 + 56) + 8 * v52) = v49;

            v65 = *(v5 + 16);
            v21 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v21)
            {
              goto LABEL_37;
            }

            *(v5 + 16) = v66;
          }

          v37 = v44;
          v43 = v77;
          v38 = v78;
          if (!v41)
          {
LABEL_18:
            while (1)
            {
              v44 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
                goto LABEL_33;
              }

              if (v44 >= v43)
              {

                return v5;
              }

              v41 = *(v38 + 8 * v44);
              ++v37;
              if (v41)
              {
                goto LABEL_21;
              }
            }
          }
        }
      }

      v10 = *(v7 + 8 * v13);
      ++v6;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA4E2820()
{
  OUTLINED_FUNCTION_59_0();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  v6 = *v5;
  v7 = v5[1];
  *(v1 + 96) = *v5;
  *(v1 + 104) = v7;
  v8 = *(v5 + 16);
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  v9 = *(v2 + 16);
  *(v1 + 112) = v9;
  *(v1 + 120) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xA6F6000000000000;
  *(v1 + 128) = *(v4 + 16);
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v1 + 136) = v10;
  *v10 = v1;
  v10[1] = sub_1CA4E296C;
  v11 = OUTLINED_FUNCTION_19_15();

  return v13(v11);
}

uint64_t sub_1CA4E296C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA4E2A68()
{
  OUTLINED_FUNCTION_59_0();
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  *(v0 + 40) = *(v0 + 96);
  *(v0 + 48) = v2;
  *(v0 + 56) = 1;
  sub_1CA94C218();
  v3 = v2;
  v9 = (v1 + *v1);
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_1CA4E2B9C;
  v5 = *(v0 + 128);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);

  return v9(v7, v0 + 40, v5, v6);
}

uint64_t sub_1CA4E2B9C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v3 + 160) = v0;

  v7 = *(v3 + 48);

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v11 = *(v5 + 8);

    return v11();
  }
}

uint64_t sub_1CA4E2CD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2AD81C;

  return sub_1CA4E2820();
}

uint64_t sub_1CA4E2D94()
{
  OUTLINED_FUNCTION_59_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v8;
  v1[3] = v4;
  v10 = sub_1CA949F78();
  v1[6] = v10;
  v1[7] = *(v10 - 8);
  v11 = swift_task_alloc();
  v13 = *v7;
  v12 = v7[1];
  v1[8] = v11;
  v1[9] = v13;
  v1[10] = v12;
  v14 = *(v3 + 16);
  v1[11] = v14;
  v1[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0x2421000000000000;
  v15 = *(v5 + 16);
  v1[13] = v15;
  v18 = (v14 + *v14);
  v16 = swift_task_alloc();
  v1[14] = v16;
  *v16 = v1;
  v16[1] = sub_1CA4E2F4C;

  return v18(v13, v9, v12, v15, v3);
}

uint64_t sub_1CA4E2F4C(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  if (v1)
  {

    v9 = *(v7 + 8);

    return v9(0);
  }

  else
  {
    v11 = v5[11];
    v5[15] = a1;
    v18 = (v11 + *v11);
    v12 = swift_task_alloc();
    v5[16] = v12;
    *v12 = v7;
    v12[1] = sub_1CA4E313C;
    v13 = v5[13];
    v14 = v5[10];
    v15 = v5[4];
    v16 = v5[2];
    v17 = v5[9];

    return v18(v17, v16, v14, v13, v15);
  }
}

uint64_t sub_1CA4E313C(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  if (v1)
  {

    v9 = *(v7 + 8);

    return v9(0);
  }

  else
  {
    *(v5 + 136) = a1;
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1CA4E3280()
{
  v1 = v0[17] + 1;
  sub_1CA949C58();
  v2 = sub_1CA949F68();
  v3 = sub_1CA94CC38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15] < 2uLL;
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = v4;
    *(v5 + 8) = 1024;
    *(v5 + 10) = v1 < 2;
    _os_log_impl(&dword_1CA256000, v2, v3, "Between operator: afterFirst: %{BOOL}d, beforeSecond: %{BOOL}d", v5, 0xEu);
    MEMORY[0x1CCAA4BF0](v5, -1, -1);
  }

  v6 = v0[15];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  (*(v8 + 8))(v7, v9);
  v11 = v6 < 2 && v1 < 2;

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1CA4E33E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA4E349C;

  return sub_1CA4E2D94();
}

uint64_t sub_1CA4E349C()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  v6 = *(v4 + 8);
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

uint64_t sub_1CA4E3594(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA4E35D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 4:
      v3 = MEMORY[0x1E6969A70];
      break;
    case 8:
      v3 = MEMORY[0x1E6969A80];
      break;
    case 0x10:
      v3 = MEMORY[0x1E6969A40];
      break;
    case 0x20:
      v3 = MEMORY[0x1E6969A60];
      break;
    case 0x40:
      v3 = MEMORY[0x1E6969A90];
      break;
    case 0x2000:
      v3 = MEMORY[0x1E6969A08];
      break;
    case 0x80:
      v3 = MEMORY[0x1E6969AA0];
      break;
    default:
      v4 = sub_1CA9490C8();
      v5 = a2;
      v6 = 1;
      goto LABEL_17;
  }

  v7 = *v3;
  v8 = sub_1CA9490C8();
  (*(*(v8 - 8) + 104))(a2, v7, v8);
  v5 = a2;
  v6 = 0;
  v4 = v8;
LABEL_17:

  return __swift_storeEnumTagSinglePayload(v5, v6, 1, v4);
}

unint64_t sub_1CA4E3700()
{
  result = qword_1EC445D80;
  if (!qword_1EC445D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D80);
  }

  return result;
}

void sub_1CA4E3754(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1CA4E378C()
{
  result = qword_1EC445D90;
  if (!qword_1EC445D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D90);
  }

  return result;
}

unint64_t sub_1CA4E37E0()
{
  result = qword_1EC445D98;
  if (!qword_1EC445D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445D98);
  }

  return result;
}

unint64_t sub_1CA4E3834()
{
  result = qword_1EC445DA0;
  if (!qword_1EC445DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DA0);
  }

  return result;
}

unint64_t sub_1CA4E3888()
{
  result = qword_1EC445DA8;
  if (!qword_1EC445DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionKitAssertion.Result(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1CA4E3964(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CA4E3A80(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA4E3AF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_1CA4E3C40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
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
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1CA4E3E74()
{
  result = qword_1EC445DD8;
  if (!qword_1EC445DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DD8);
  }

  return result;
}

unint64_t sub_1CA4E3ECC()
{
  result = qword_1EC445DE0;
  if (!qword_1EC445DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DE0);
  }

  return result;
}

unint64_t sub_1CA4E3F24()
{
  result = qword_1EC445DE8;
  if (!qword_1EC445DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DE8);
  }

  return result;
}

unint64_t sub_1CA4E3F7C()
{
  result = qword_1EC445DF0;
  if (!qword_1EC445DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DF0);
  }

  return result;
}

unint64_t sub_1CA4E3FD4()
{
  result = qword_1EC445DF8;
  if (!qword_1EC445DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445DF8);
  }

  return result;
}

unint64_t sub_1CA4E402C()
{
  result = qword_1EC445E00;
  if (!qword_1EC445E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E00);
  }

  return result;
}

unint64_t sub_1CA4E4084()
{
  result = qword_1EC445E08;
  if (!qword_1EC445E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E08);
  }

  return result;
}

unint64_t sub_1CA4E40DC()
{
  result = qword_1EC445E10;
  if (!qword_1EC445E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E10);
  }

  return result;
}

unint64_t sub_1CA4E4134()
{
  result = qword_1EC445E18;
  if (!qword_1EC445E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E18);
  }

  return result;
}

unint64_t sub_1CA4E418C()
{
  result = qword_1EC445E20;
  if (!qword_1EC445E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E20);
  }

  return result;
}

unint64_t sub_1CA4E41E4()
{
  result = qword_1EC445E28;
  if (!qword_1EC445E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E28);
  }

  return result;
}

uint64_t sub_1CA4E4238(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1CA4E430C()
{
  v234 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C3F50;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("search|tag", 10);
  v6 = v5;
  v7 = sub_1CA94C438("search|tag", 10);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v247 = v11;
  v250 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v228 - v250;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v246 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v248 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v249 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v228 - v249;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v245 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v243 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets recent notes from Evernote, optionally filtering based on criteria.", 72);
  v28 = v27;
  v29 = sub_1CA94C438("Gets recent notes from Evernote, optionally filtering based on criteria.", 72);
  v31 = v30;
  v242 = &v228;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v228 - v250;
  sub_1CA948D98();
  v33 = [v246 bundleURL];
  v244 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v228 - v249;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v245;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v243;
  v40 = sub_1CA6B3784(v38);
  v41 = v244;
  v244[20] = v40;
  v41[23] = v39;
  v41[24] = @"Name";
  v42 = @"Name";
  v43 = sub_1CA94C438("Get Notes (Action Name)", 23);
  v45 = v44;
  v46 = sub_1CA94C438("Get Notes", 9);
  v48 = v47;
  v243 = &v228;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v228 - v250;
  sub_1CA948D98();
  v50 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v228 - v249;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  v54 = v244;
  v244[25] = v53;
  v55 = v245;
  v54[28] = v245;
  v54[29] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 48) = 1;
  *(v56 + 72) = v57;
  *(v56 + 80) = 0x614E74757074754FLL;
  *(v56 + 88) = 0xEA0000000000656DLL;
  v58 = @"Output";
  v59 = sub_1CA94C438("Notes (Default Output Name)", 27);
  v242 = v60;
  v61 = sub_1CA94C438("Notes", 5);
  v63 = v62;
  v243 = &v228;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v228 - v250;
  sub_1CA948D98();
  v65 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v228 - v249;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 96) = sub_1CA2F9F14(v59, v242, v61, v63, 0, 0, v64, v66);
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x7365707954;
  *(v56 + 136) = 0xE500000000000000;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 168) = v233;
  *(v56 + 144) = &unk_1F4A01DC0;
  v68 = MEMORY[0x1E69E6158];
  v69 = sub_1CA94C1E8();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v71 = v244;
  v244[30] = v69;
  v71[33] = v70;
  v71[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v243 = swift_allocObject();
  *(v243 + 1) = xmmword_1CA981570;
  v242 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v72 = swift_initStackObject();
  v236 = xmmword_1CA981370;
  *(v72 + 16) = xmmword_1CA981370;
  *(v72 + 32) = @"Class";
  *(v72 + 40) = 0xD000000000000014;
  *(v72 + 48) = 0x80000001CA99B500;
  *(v72 + 64) = v68;
  *(v72 + 72) = @"Description";
  v73 = @"Class";
  v74 = @"Description";
  v75 = v73;
  v76 = v74;
  v235 = v75;
  v238 = v76;
  v77 = @"Parameters";
  v78 = sub_1CA94C438("Text to look for in the title of notes. (WFEvernoteNotesTitleSearch)", 68);
  v80 = v79;
  v81 = sub_1CA94C438("Text to look for in the title of notes.", 39);
  v83 = v82;
  v240 = &v228;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v228 - v250;
  sub_1CA948D98();
  v85 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v228 - v249;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 80) = sub_1CA2F9F14(v78, v80, v81, v83, 0, 0, v84, v86);
  *(v72 + 104) = v245;
  *(v72 + 112) = @"Key";
  *(v72 + 120) = 0xD00000000000001ALL;
  *(v72 + 128) = 0x80000001CA9C40A0;
  *(v72 + 144) = MEMORY[0x1E69E6158];
  *(v72 + 152) = @"Label";
  v88 = @"Key";
  v89 = @"Label";
  v90 = v88;
  v91 = v89;
  v232 = v90;
  v237 = v91;
  v239 = sub_1CA94C438("Title Search (WFEvernoteNotesTitleSearch)", 41);
  v231 = v92;
  v93 = sub_1CA94C438("Title Search", 12);
  v230 = v94;
  v240 = &v228;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v228 - v250;
  sub_1CA948D98();
  v96 = v246;
  v97 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v249;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 160) = sub_1CA2F9F14(v239, v231, v93, v230, 0, 0, v95, &v228 - v98);
  *(v72 + 184) = v245;
  *(v72 + 192) = @"Placeholder";
  v231 = @"Placeholder";
  v239 = sub_1CA94C438("optional (WFEvernoteNotesTitleSearch)", 37);
  v230 = v100;
  v101 = sub_1CA94C438("optional", 8);
  v229 = v102;
  v240 = &v228;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v228 - v250;
  sub_1CA948D98();
  v104 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v239, v230, v101, v229, 0, 0, v103, &v228 - v98);
  *(v72 + 224) = v245;
  *(v72 + 200) = v106;
  _s3__C3KeyVMa_0(0);
  v240 = v107;
  v239 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v108 = sub_1CA94C1E8();
  v109 = sub_1CA2F864C(v108);
  v243[4] = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v236;
  v111 = v235;
  *(v110 + 32) = v235;
  *(v110 + 40) = 0xD00000000000001FLL;
  *(v110 + 48) = 0x80000001CA9C4130;
  v112 = v238;
  *(v110 + 64) = MEMORY[0x1E69E6158];
  *(v110 + 72) = v112;
  *&v236 = v111;
  v113 = sub_1CA94C438("A list of tags with which to find matching notes. Wildcard characters (*) may be used. (WFEvernoteNotesTags)", 108);
  v229 = v114;
  v230 = v113;
  v115 = sub_1CA94C438("A list of tags with which to find matching notes. Wildcard characters (*) may be used.", 86);
  v117 = v116;
  v235 = &v228;
  MEMORY[0x1EEE9AC00](v115);
  v118 = v250;
  sub_1CA948D98();
  v119 = v246;
  v120 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v228 - v249;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 80) = sub_1CA2F9F14(v230, v229, v115, v117, 0, 0, &v228 - v118, v121);
  v123 = v232;
  *(v110 + 104) = v245;
  *(v110 + 112) = v123;
  *(v110 + 120) = 0xD000000000000013;
  *(v110 + 128) = 0x80000001CA9C4220;
  v124 = v237;
  *(v110 + 144) = MEMORY[0x1E69E6158];
  *(v110 + 152) = v124;
  v235 = v123;
  v125 = sub_1CA94C438("Tags (WFEvernoteNotesTags)", 26);
  v229 = v126;
  v230 = v125;
  v228 = sub_1CA94C438("Tags", 4);
  v128 = v127;
  v232 = &v228;
  MEMORY[0x1EEE9AC00](v228);
  v129 = &v228 - v118;
  sub_1CA948D98();
  v130 = v119;
  v131 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = v249;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 160) = sub_1CA2F9F14(v230, v229, v228, v128, 0, 0, v129, &v228 - v132);
  v134 = v245;
  v135 = v231;
  *(v110 + 184) = v245;
  *(v110 + 192) = v135;
  v136 = sub_1CA94C438("optional (WFEvernoteNotesTags)", 30);
  v230 = v137;
  v231 = v136;
  v138 = sub_1CA94C438("optional", 8);
  v229 = v139;
  v232 = &v228;
  MEMORY[0x1EEE9AC00](v138);
  v140 = &v228 - v250;
  sub_1CA948D98();
  v141 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v231, v230, v138, v229, 0, 0, v140, &v228 - v132);
  *(v110 + 224) = v134;
  *(v110 + 200) = v143;
  v144 = sub_1CA94C1E8();
  v145 = sub_1CA2F864C(v144);
  v243[5] = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_1CA981350;
  *(v146 + 32) = v236;
  *(v146 + 40) = 0xD000000000000021;
  *(v146 + 48) = 0x80000001CA9C4280;
  v147 = v238;
  *(v146 + 64) = MEMORY[0x1E69E6158];
  *(v146 + 72) = v147;
  v148 = sub_1CA94C438("The notebook in which to look for notes (optional) (WFEvernoteNotesNotebookName)", 80);
  v231 = v149;
  v232 = v148;
  v150 = sub_1CA94C438("The notebook in which to look for notes (optional)", 50);
  v230 = v151;
  v238 = &v228;
  MEMORY[0x1EEE9AC00](v150);
  v152 = v250;
  sub_1CA948D98();
  v153 = v246;
  v154 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v228 - v249;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v146 + 80) = sub_1CA2F9F14(v232, v231, v150, v230, 0, 0, &v228 - v152, v155);
  v157 = v245;
  v158 = v235;
  *(v146 + 104) = v245;
  *(v146 + 112) = v158;
  *(v146 + 120) = 0xD00000000000001BLL;
  *(v146 + 128) = 0x80000001CA9C4350;
  v159 = v237;
  *(v146 + 144) = MEMORY[0x1E69E6158];
  *(v146 + 152) = v159;
  v237 = sub_1CA94C438("In Notebook (WFEvernoteNotesNotebookName)", 41);
  v232 = v160;
  v161 = sub_1CA94C438("In Notebook", 11);
  v231 = v162;
  v238 = &v228;
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948D98();
  v163 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  v164 = &v228 - v249;
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v166 = sub_1CA2F9F14(v237, v232, v161, v231, 0, 0, &v228 - v152, v164);
  *(v146 + 184) = v157;
  *(v146 + 160) = v166;
  v167 = sub_1CA94C1E8();
  v168 = sub_1CA2F864C(v167);
  v243[6] = v168;
  v169 = swift_allocObject();
  *(v169 + 16) = xmmword_1CA981380;
  *(v169 + 32) = v236;
  *(v169 + 40) = 0xD000000000000012;
  *(v169 + 48) = 0x80000001CA99B980;
  v170 = MEMORY[0x1E69E6158];
  *(v169 + 64) = MEMORY[0x1E69E6158];
  *(v169 + 72) = @"DefaultValue";
  v171 = MEMORY[0x1E69E6530];
  *(v169 + 80) = 1;
  *(v169 + 104) = v171;
  *(v169 + 112) = v235;
  *(v169 + 120) = 0xD000000000000014;
  *(v169 + 128) = 0x80000001CA9C43B0;
  *(v169 + 144) = v170;
  *(v169 + 152) = @"StepperDescription";
  v172 = @"DefaultValue";
  v173 = @"StepperDescription";
  v174 = sub_1CA94C438("Number of Notes (WFEvernoteNotesCount)", 38);
  v176 = v175;
  v177 = sub_1CA94C438("Number of Notes", 15);
  v179 = v178;
  v241 = &v228;
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v228 - v250;
  sub_1CA948D98();
  v181 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v228 - v249;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 160) = sub_1CA2F9F14(v174, v176, v177, v179, 0, 0, v180, v182);
  *(v169 + 184) = v245;
  *(v169 + 192) = @"StepperNoun";
  v184 = @"StepperNoun";
  v185 = sub_1CA94C438("%d Notes", v228);
  v241 = v185;
  v187 = v186;
  v238 = v186;
  v255 = 0;
  v256 = 0xE000000000000000;
  sub_1CA94D408();

  v255 = v185;
  v256 = v187;
  v253 = 10;
  v254 = 0xE100000000000000;
  v251 = 32;
  v252 = 0xE100000000000000;
  sub_1CA27BAF0();
  v255 = sub_1CA94D1B8();
  v256 = v188;
  v189 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v237 = &v228;
  v190 = v255;
  *&v236 = v256;
  MEMORY[0x1EEE9AC00](v189);
  v191 = &v228 - v250;
  sub_1CA948D98();
  v192 = v246;
  v193 = [v246 bundleURL];
  v235 = &v228;
  MEMORY[0x1EEE9AC00](v193);
  v194 = v249;
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 200) = sub_1CA2F9F14(v190, v236, v241, v238, 0, 0, v191, &v228 - v194);
  v196 = v245;
  *(v169 + 224) = v245;
  *(v169 + 232) = @"StepperPrefix";
  v197 = @"StepperPrefix";
  v198 = sub_1CA94C438("Get (WFEvernoteNotesCount)", 26);
  v237 = v199;
  v238 = v198;
  v200 = sub_1CA94C438("Get", 3);
  *&v236 = v201;
  v241 = &v228;
  MEMORY[0x1EEE9AC00](v200);
  v202 = v250;
  sub_1CA948D98();
  v203 = [v192 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v205 = sub_1CA2F9F14(v238, v237, v200, v236, 0, 0, &v228 - v202, &v228 - v194);
  *(v169 + 264) = v196;
  *(v169 + 240) = v205;
  v206 = sub_1CA94C1E8();
  v207 = sub_1CA2F864C(v206);
  v208 = v243;
  v243[7] = v207;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v210 = v244;
  v244[35] = v208;
  v210[38] = v209;
  v210[39] = @"ParameterSummary";
  v211 = @"ParameterSummary";
  v212 = sub_1CA94C438("Get ${WFEvernoteNotesCount} (Parameter Summary)", 47);
  v214 = v213;
  v215 = sub_1CA94C438("Get ${WFEvernoteNotesCount}", 27);
  v217 = v216;
  MEMORY[0x1EEE9AC00](v215);
  v218 = &v228 - v202;
  sub_1CA948D98();
  v219 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v219);
  v220 = &v228 - v249;
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v222 = sub_1CA2F9F14(v212, v214, v215, v217, 0, 0, v218, v220);
  v223 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v224 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v225 = v244;
  v244[40] = v223;
  v225[43] = v224;
  v225[44] = @"RequiredResources";
  v225[48] = v233;
  v225[45] = &unk_1F4A01DF0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v226 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4E5D74()
{
  v165 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9C44C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("URL|web|later|save|pinboard", 27);
  v6 = v5;
  v7 = sub_1CA94C438("URL|web|later|save|pinboard", 27);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v174 = v11;
  v172 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v156 - v172;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v170 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v173 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v169 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v156 - v169;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v171 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v167 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Gets bookmarks in your Pinboard account.", 40);
  v25 = v24;
  v26 = sub_1CA94C438("Gets bookmarks in your Pinboard account.", 40);
  v28 = v27;
  v166 = &v156;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v156 - v172;
  sub_1CA948D98();
  v30 = [v170 bundleURL];
  v168 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v156 - v169;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v171;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v167;
  v37 = sub_1CA6B3784(v35);
  v38 = v168;
  v168[15] = v37;
  v38[18] = v36;
  v38[19] = @"Discontinued";
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 160) = 1;
  v38[23] = v39;
  v38[24] = @"IconName";
  v38[25] = 0x6472616F626E6950;
  v38[26] = 0xE800000000000000;
  v38[28] = MEMORY[0x1E69E6158];
  v38[29] = @"Name";
  v40 = @"Discontinued";
  v41 = @"IconName";
  v42 = @"Name";
  v166 = sub_1CA94C438("Get Pinboard Bookmarks (Action Name)", 36);
  v164 = v43;
  v44 = sub_1CA94C438("Get Pinboard Bookmarks", 22);
  v46 = v45;
  v167 = &v156;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v172;
  sub_1CA948D98();
  v48 = v170;
  v49 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v156 - v169;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v166, v164, v44, v46, 0, 0, &v156 - v47, v50);
  v53 = v168;
  v168[30] = v52;
  v54 = v171;
  v53[33] = v171;
  v53[34] = @"Output";
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
  v166 = sub_1CA94C438("Pinboard Bookmarks (Default Output Name)", 40);
  v164 = v57;
  v58 = sub_1CA94C438("Pinboard Bookmarks", 18);
  v163 = v59;
  v167 = &v156;
  MEMORY[0x1EEE9AC00](v58);
  sub_1CA948D98();
  v60 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = v169;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 96) = sub_1CA2F9F14(v166, v164, v58, v163, 0, 0, &v156 - v47, &v156 - v61);
  *(v55 + 120) = v54;
  *(v55 + 128) = 0x7365707954;
  *(v55 + 136) = 0xE500000000000000;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v55 + 168) = v164;
  *(v55 + 144) = &unk_1F4A01E30;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v66 = v168;
  v168[35] = v64;
  v66[38] = v65;
  v66[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v167 = swift_allocObject();
  *(v167 + 1) = xmmword_1CA981360;
  v166 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  v160 = xmmword_1CA981380;
  *(v67 + 16) = xmmword_1CA981380;
  *(v67 + 32) = @"AutocapitalizationType";
  *(v67 + 40) = 1701736270;
  *(v67 + 48) = 0xE400000000000000;
  *(v67 + 64) = v63;
  *(v67 + 72) = @"Class";
  *(v67 + 80) = 0xD000000000000014;
  *(v67 + 88) = 0x80000001CA99B500;
  *(v67 + 104) = v63;
  *(v67 + 112) = @"Description";
  v159 = @"Class";
  v68 = @"Parameters";
  v69 = @"AutocapitalizationType";
  v70 = @"Description";
  v162 = sub_1CA94C438("If specified, only items matching all of these tags will be returned. Supports a maximum of three tags. (WFPinTags)", 115);
  v158 = v71;
  v157 = sub_1CA94C438("If specified, only items matching all of these tags will be returned. Supports a maximum of three tags.", 103);
  v73 = v72;
  v163 = &v156;
  MEMORY[0x1EEE9AC00](v157);
  v74 = v172;
  sub_1CA948D98();
  v75 = v170;
  v76 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v162, v158, v157, v73, 0, 0, &v156 - v74, &v156 - v61);
  *(v67 + 144) = v171;
  *(v67 + 152) = @"Key";
  *(v67 + 160) = 0x6761546E69504657;
  *(v67 + 168) = 0xE900000000000073;
  *(v67 + 184) = MEMORY[0x1E69E6158];
  *(v67 + 192) = @"Label";
  v158 = @"Key";
  v78 = @"Label";
  v162 = sub_1CA94C438("Tags (WFPinTags)", 16);
  v157 = v79;
  v156 = sub_1CA94C438("Tags", 4);
  v81 = v80;
  v163 = &v156;
  MEMORY[0x1EEE9AC00](v156);
  sub_1CA948D98();
  v82 = [v75 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 200) = sub_1CA2F9F14(v162, v157, v156, v81, 0, 0, &v156 - v74, &v156 - v61);
  v84 = v171;
  *(v67 + 224) = v171;
  *(v67 + 232) = @"Placeholder";
  v85 = @"Placeholder";
  v162 = sub_1CA94C438("apple longread (WFPinTags)", 26);
  v157 = v86;
  v87 = sub_1CA94C438("apple longread", 14);
  v156 = v88;
  v163 = &v156;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v156 - v172;
  sub_1CA948D98();
  v90 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v156 - v169;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v162, v157, v87, v156, 0, 0, v89, v91);
  *(v67 + 264) = v84;
  *(v67 + 240) = v93;
  _s3__C3KeyVMa_0(0);
  v163 = v94;
  v162 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v95 = sub_1CA94C1E8();
  v96 = sub_1CA2F864C(v95);
  v167[4] = v96;
  v97 = swift_allocObject();
  *(v97 + 16) = v160;
  *(v97 + 32) = v159;
  *(v97 + 40) = 0xD000000000000012;
  *(v97 + 48) = 0x80000001CA99B980;
  *(v97 + 80) = 5;
  v98 = MEMORY[0x1E69E6530];
  v99 = MEMORY[0x1E69E6158];
  *(v97 + 64) = MEMORY[0x1E69E6158];
  *(v97 + 72) = @"DefaultValue";
  v100 = v158;
  *(v97 + 104) = v98;
  *(v97 + 112) = v100;
  *(v97 + 120) = 0x616D6B6F6F424657;
  *(v97 + 128) = 0xEF746E756F436B72;
  *(v97 + 144) = v99;
  *(v97 + 152) = @"StepperDescription";
  v101 = @"DefaultValue";
  v102 = @"StepperDescription";
  v103 = sub_1CA94C438("Number of Bookmarks (WFBookmarkCount)", 37);
  v105 = v104;
  v106 = sub_1CA94C438("Number of Bookmarks", 19);
  v108 = v107;
  v161 = &v156;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v156 - v172;
  sub_1CA948D98();
  v110 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v156 - v169;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 160) = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  *(v97 + 184) = v171;
  *(v97 + 192) = @"StepperNoun";
  v113 = @"StepperNoun";
  v114 = sub_1CA94C438("%d Bookmarks", v156);
  v161 = v114;
  v116 = v115;
  *&v160 = v115;
  v179 = 0;
  v180 = 0xE000000000000000;
  sub_1CA94D408();

  v179 = v114;
  v180 = v116;
  v177 = 10;
  v178 = 0xE100000000000000;
  v175 = 32;
  v176 = 0xE100000000000000;
  sub_1CA27BAF0();
  v179 = sub_1CA94D1B8();
  v180 = v117;
  v118 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v159 = &v156;
  v119 = v179;
  v158 = v180;
  MEMORY[0x1EEE9AC00](v118);
  v120 = v172;
  sub_1CA948D98();
  v121 = v170;
  v122 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = v169;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 200) = sub_1CA2F9F14(v119, v158, v161, v160, 0, 0, &v156 - v120, &v156 - v123);
  *(v97 + 224) = v171;
  *(v97 + 232) = @"StepperPrefix";
  v125 = @"StepperPrefix";
  v126 = sub_1CA94C438("Get (WFBookmarkCount)", 21);
  v159 = v127;
  *&v160 = v126;
  v128 = sub_1CA94C438("Get", 3);
  v130 = v129;
  v161 = &v156;
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948D98();
  v131 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v160, v159, v128, v130, 0, 0, &v156 - v120, &v156 - v123);
  *(v97 + 264) = v171;
  *(v97 + 240) = v133;
  v134 = sub_1CA94C1E8();
  v135 = sub_1CA2F864C(v134);
  v136 = v167;
  v167[5] = v135;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v138 = v168;
  v168[40] = v136;
  v138[43] = v137;
  v138[44] = @"ParameterSummary";
  v139 = @"ParameterSummary";
  v140 = sub_1CA94C438("Get ${WFBookmarkCount} (Parameter Summary)", 42);
  v142 = v141;
  v143 = sub_1CA94C438("Get ${WFBookmarkCount}", 22);
  v145 = v144;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v156 - v172;
  sub_1CA948D98();
  v147 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v156 - v169;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v140, v142, v143, v145, 0, 0, v146, v148);
  v151 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v152 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v153 = v168;
  v168[45] = v151;
  v153[48] = v152;
  v153[49] = @"RequiredResources";
  v153[53] = v164;
  v153[50] = &unk_1F4A01E60;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v154 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA4E7108(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1CA949328();
  v2[4] = v3;
  OUTLINED_FUNCTION_12(v3);
  v2[5] = v4;
  v2[6] = swift_task_alloc();
  v5 = sub_1CA94ADC8();
  v2[7] = v5;
  OUTLINED_FUNCTION_12(v5);
  v2[8] = v6;
  v2[9] = swift_task_alloc();
  v7 = sub_1CA94AD48();
  v2[10] = v7;
  OUTLINED_FUNCTION_12(v7);
  v2[11] = v8;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA4E7274, 0, 0);
}

uint64_t sub_1CA4E7274()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CA94A9C8();
  *(v5 + 24) = v6;
  *v1 = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E69DB0A8], v3);
  v7 = (v4 + *(type metadata accessor for TypedValueConversionContext(0) + 20));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v15 = (*(v9 + 8) + **(v9 + 8));
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1CA4E7418;
  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[3];

  return v15(v11, v12, v13, v8, v9);
}

uint64_t sub_1CA4E7418()
{
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1CA4E77E4;
  }

  else
  {
    v7 = sub_1CA4E7524;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA4E7524()
{
  v28 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v4 + 16))(v1, v2, v3);
  LODWORD(v2) = (*(v4 + 88))(v1, v3);
  v5 = *MEMORY[0x1E69DAFA0];
  v6 = *(v4 + 8);
  v6(v1, v3);
  if (v2 == v5)
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    v10 = sub_1CA949338();
    sub_1CA94A9C8();
    sub_1CA949318();
    v11 = sub_1CA3118B4(v7, v10);

    (*(v8 + 8))(v7, v9);
    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v14 = v0[13];
        v15 = v0[10];
        v16 = sub_1CA94CC88();
        v17 = sub_1CA94A9D8();
        v27[3] = v16;
        v27[0] = sub_1CA46E0C8(v17, v18);
        v19 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
        v20 = sub_1CA320AB4(v27, v13);
        v6(v14, v15);

        v21 = v0[1];

        return v21(v20);
      }
    }
  }

  v23 = v0[13];
  v24 = v0[10];
  sub_1CA2FFC58();
  swift_allocError();
  *v25 = 1;
  swift_willThrow();
  v6(v23, v24);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1CA4E77E4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1CA4E7888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1CA3DBB6C;

  return sub_1CA4E7108(a2, a3);
}

id sub_1CA4E795C()
{
  v69 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9C4770;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("song|music|itunes|up next|apple|album|next|play|clear", 53);
  v6 = v5;
  v7 = sub_1CA94C438("song|music|itunes|up next|apple|album|next|play|clear", 53);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v11;
  v12 = &v66 - v74;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v71 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v72 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v73 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v66 - v73;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v70 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v68 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Clears all the music in your Playing Next queue.", 48);
  v66 = v27;
  v28 = sub_1CA94C438("Clears all the music in your Playing Next queue.", 48);
  v30 = v29;
  v67 = &v66;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v66 - v74;
  sub_1CA948D98();
  v32 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v66 - v73;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v66, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v70;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v68;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438("Clear Playing Next (Action Name)", 32);
  v67 = v42;
  v43 = sub_1CA94C438("Clear Playing Next", 18);
  v45 = v44;
  v68 = &v66;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v66 - v74;
  sub_1CA948D98();
  v47 = v71;
  v48 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v66 - v73;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v67, v43, v45, 0, 0, v46, v49);
  *(inited + 264) = v70;
  *(inited + 272) = @"ParameterSummary";
  v51 = @"ParameterSummary";
  v52 = sub_1CA94C438("Clear Playing Next (Parameter Summary)", 38);
  v68 = v53;
  v54 = sub_1CA94C438("Clear Playing Next", 18);
  v56 = v55;
  v70 = &v66;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v66 - v74;
  sub_1CA948D98();
  v58 = [v47 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v66 - v73;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v52, v68, v54, v56, 0, 0, v57, v59);
  v62 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v63 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 280) = v62;
  *(inited + 304) = v63;
  *(inited + 312) = @"RequiredResources";
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 320) = &unk_1F4A01EE0;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v64 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4E818C()
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
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 0x65676E61724FLL;
  *(inited + 128) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001CA9A3B70;
  *(inited + 184) = v1;
  *(inited + 192) = @"Name";
  v6 = @"IconColor";
  v7 = @"IconSymbol";
  v8 = @"Name";
  v9 = sub_1CA94C438("Get Details of Article (Action Name)", 36);
  v29 = v10;
  v11 = sub_1CA94C438("Get Details of Article", 22);
  v13 = v12;
  v14 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v9, v29, v11, v13, 0, 0, v16, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v22;
  *(inited + 224) = v23;
  *(inited + 232) = @"Output";
  v24 = @"Output";
  v25 = sub_1CA94C1E8();
  *(inited + 264) = v30;
  *(inited + 240) = v25;
  v26 = sub_1CA94C368();
  *(inited + 304) = v1;
  *(inited + 272) = v26;
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = 0x80000001CA993510;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4E8598()
{
  v165 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6565465353524657;
  *(inited + 48) = 0xEF6E6F6974634164;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("article|podcast|text|clipboard|copy|paste", 41);
  v7 = v6;
  v8 = sub_1CA94C438("article|podcast|text|clipboard|copy|paste", 41);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v172 = v12;
  v175 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v156 - v175;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v170 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v174 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v173 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v156 - v173;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v171 = v20;
  v2[10] = v19;
  v2[13] = v20;
  v2[14] = @"Description";
  v168 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438("Downloads the latest items from an RSS feed.", 44);
  v166 = v25;
  v26 = sub_1CA94C438("Downloads the latest items from an RSS feed.", 44);
  v28 = v27;
  v167 = &v156;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v156 - v175;
  sub_1CA948D98();
  v30 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v156 - v173;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v166, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v171;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v168;
  v2[15] = sub_1CA6B3784(v34);
  v2[18] = v35;
  v2[19] = @"IconColor";
  v2[20] = 0x65676E61724FLL;
  v2[21] = 0xE600000000000000;
  v36 = MEMORY[0x1E69E6158];
  v2[23] = MEMORY[0x1E69E6158];
  v2[24] = @"IconSymbol";
  v2[25] = 0xD000000000000019;
  v2[26] = 0x80000001CA9A5E00;
  v2[28] = v36;
  v2[29] = @"Input";
  v37 = v36;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v164 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  strcpy((v38 + 96), "WFRSSFeedURL");
  *(v38 + 109) = 0;
  *(v38 + 110) = -5120;
  *(v38 + 120) = v37;
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v168;
  *(v38 + 192) = &unk_1F4A01F90;
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v167 = v44;
  v169 = v2;
  v2[30] = v43;
  v2[33] = v44;
  v2[34] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Get Items from RSS Feed (Action Name)", 37);
  v161 = v47;
  v162 = v46;
  v48 = sub_1CA94C438("Get Items from RSS Feed", 23);
  v160 = v49;
  v163 = &v156;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v156 - v175;
  sub_1CA948D98();
  v51 = v170;
  v52 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v173;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v162, v161, v48, v160, 0, 0, v50, &v156 - v53);
  v56 = v169;
  v169[35] = v55;
  v56[38] = v171;
  v56[39] = @"Output";
  v57 = swift_allocObject();
  *(v57 + 16) = v164;
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
  v59 = sub_1CA94C438("RSS Items (Default Output Name)", 31);
  v163 = v60;
  *&v164 = v59;
  v61 = sub_1CA94C438("RSS Items", 9);
  v162 = v62;
  v166 = &v156;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v175;
  sub_1CA948D98();
  v64 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v164, v163, v61, v162, 0, 0, &v156 - v63, &v156 - v53);
  *(v57 + 168) = v171;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v168;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F4A01FD0;
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = v169;
  v169[40] = v67;
  *&v164 = @"Parameters";
  v68[43] = v167;
  v68[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v167 = swift_allocObject();
  *(v167 + 1) = xmmword_1CA981360;
  v166 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CA9813E0;
  *(v69 + 32) = @"AutocapitalizationType";
  *(v69 + 40) = 1701736270;
  *(v69 + 48) = 0xE400000000000000;
  *(v69 + 64) = v66;
  *(v69 + 72) = @"Class";
  *(v69 + 80) = 0xD000000000000014;
  *(v69 + 88) = 0x80000001CA99B500;
  *(v69 + 104) = v66;
  *(v69 + 112) = @"DefaultValue";
  *(v69 + 120) = 0xD00000000000002BLL;
  *(v69 + 128) = 0x80000001CA9C49E0;
  *(v69 + 144) = v66;
  *(v69 + 152) = @"DisableAutocorrection";
  *(v69 + 160) = 1;
  *(v69 + 184) = MEMORY[0x1E69E6370];
  *(v69 + 192) = @"Key";
  strcpy((v69 + 200), "WFRSSFeedURL");
  *(v69 + 213) = 0;
  *(v69 + 214) = -5120;
  *(v69 + 224) = v66;
  *(v69 + 232) = @"KeyboardType";
  *(v69 + 240) = 5001813;
  *(v69 + 248) = 0xE300000000000000;
  *(v69 + 264) = v66;
  *(v69 + 272) = @"Label";
  v70 = @"Class";
  v71 = @"DefaultValue";
  v72 = @"Key";
  v160 = v70;
  v159 = v71;
  v161 = v72;
  v73 = v164;
  v74 = @"AutocapitalizationType";
  v75 = @"DisableAutocorrection";
  v76 = @"KeyboardType";
  v77 = @"Label";
  v163 = sub_1CA94C438("URL (WFRSSFeedURL)", 18);
  v158 = v78;
  v79 = sub_1CA94C438("URL", 3);
  v157 = v80;
  *&v164 = &v156;
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948D98();
  v81 = v170;
  v82 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v156 - v173;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 280) = sub_1CA2F9F14(v163, v158, v79, v157, 0, 0, &v156 - v63, v83);
  v85 = v171;
  *(v69 + 304) = v171;
  *(v69 + 312) = @"Placeholder";
  v86 = @"Placeholder";
  v163 = sub_1CA94C438("RSS feed (WFRSSFeedURL)", 23);
  v158 = v87;
  v88 = sub_1CA94C438("RSS feed", 8);
  v157 = v89;
  *&v164 = &v156;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v156 - v175;
  sub_1CA948D98();
  v91 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v156 - v173;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 320) = sub_1CA2F9F14(v163, v158, v88, v157, 0, 0, v90, v92);
  *(v69 + 344) = v85;
  *(v69 + 352) = @"TextContentType";
  v94 = MEMORY[0x1E69E6158];
  *(v69 + 384) = MEMORY[0x1E69E6158];
  *(v69 + 360) = 5001813;
  *(v69 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  *&v164 = v95;
  v163 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v96 = @"TextContentType";
  v97 = sub_1CA94C1E8();
  v98 = sub_1CA2F864C(v97);
  *(v167 + 4) = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1CA981380;
  *(v99 + 32) = v160;
  *(v99 + 40) = 0xD000000000000012;
  *(v99 + 48) = 0x80000001CA99B980;
  v100 = v159;
  *(v99 + 64) = v94;
  *(v99 + 72) = v100;
  v101 = MEMORY[0x1E69E6530];
  *(v99 + 80) = 10;
  v102 = v161;
  *(v99 + 104) = v101;
  *(v99 + 112) = v102;
  *(v99 + 120) = 0xD000000000000011;
  *(v99 + 128) = 0x80000001CA9C4A60;
  *(v99 + 144) = v94;
  *(v99 + 152) = @"StepperDescription";
  v103 = @"StepperDescription";
  v104 = sub_1CA94C438("Number of Items (WFRSSItemQuantity)", 35);
  v161 = v105;
  v106 = sub_1CA94C438("Number of Items", 15);
  v108 = v107;
  v162 = &v156;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v156 - v175;
  sub_1CA948D98();
  v110 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v156 - v173;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 160) = sub_1CA2F9F14(v104, v161, v106, v108, 0, 0, v109, v111);
  *(v99 + 184) = v171;
  *(v99 + 192) = @"StepperNoun";
  v113 = @"StepperNoun";
  v114 = sub_1CA94C438("%d Items", v156);
  v161 = v115;
  v162 = v114;
  v116 = v115;
  v180 = 0;
  v181 = 0xE000000000000000;
  sub_1CA94D408();

  v180 = v114;
  v181 = v116;
  v178 = 10;
  v179 = 0xE100000000000000;
  v176 = 32;
  v177 = 0xE100000000000000;
  sub_1CA27BAF0();
  v180 = sub_1CA94D1B8();
  v181 = v117;
  v118 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v160 = &v156;
  v119 = v180;
  v159 = v181;
  MEMORY[0x1EEE9AC00](v118);
  v120 = v175;
  sub_1CA948D98();
  v121 = v170;
  v122 = [v170 bundleURL];
  v158 = &v156;
  MEMORY[0x1EEE9AC00](v122);
  v123 = v169;
  v124 = v173;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 200) = sub_1CA2F9F14(v119, v159, v162, v161, 0, 0, &v156 - v120, &v156 - v124);
  v126 = v171;
  *(v99 + 224) = v171;
  *(v99 + 232) = @"StepperPrefix";
  v127 = @"StepperPrefix";
  v128 = sub_1CA94C438("Get (WFRSSItemQuantity)", 23);
  v160 = v129;
  v161 = v128;
  v130 = sub_1CA94C438("Get", 3);
  v159 = v131;
  v162 = &v156;
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948D98();
  v132 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134 = sub_1CA2F9F14(v161, v160, v130, v159, 0, 0, &v156 - v120, &v156 - v124);
  *(v99 + 264) = v126;
  *(v99 + 240) = v134;
  v135 = sub_1CA94C1E8();
  v136 = sub_1CA2F864C(v135);
  v137 = v167;
  *(v167 + 5) = v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v123[45] = v137;
  v123[48] = v138;
  v123[49] = @"ParameterSummary";
  v139 = @"ParameterSummary";
  v140 = sub_1CA94C438("Get ${WFRSSItemQuantity} from ${WFRSSFeedURL} (Parameter Summary)", 65);
  v142 = v141;
  v143 = sub_1CA94C438("Get ${WFRSSItemQuantity} from ${WFRSSFeedURL}", 45);
  v145 = v144;
  v171 = &v156;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v156 - v175;
  sub_1CA948D98();
  v147 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v156 - v173;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v140, v142, v143, v145, 0, 0, v146, v148);
  v151 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v152 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v123[50] = v151;
  v123[53] = v152;
  v123[54] = @"RequiredResources";
  v123[55] = &unk_1F4A02010;
  v123[58] = v168;
  v123[59] = @"ResidentCompatible";
  v123[63] = MEMORY[0x1E69E6370];
  *(v123 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v153 = @"RequiredResources";
  v154 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4E9A90()
{
  v209 = sub_1CA94B4D8();
  v207 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v197 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x7461726269564657;
  *(inited + 48) = 0xEF6E6F6974634165;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v214 = sub_1CA94C438("vibration|taptic|haptic|notification|alert", 42);
  v6 = v5;
  v7 = sub_1CA94C438("vibration|taptic|haptic|notification|alert", 42);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v218 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v219 = v11;
  v12 = &v197 - v218;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v217 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v215 = v15;
  v216 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v197 - v216;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v214, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v213 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v214 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v206 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Vibrates the device for a short amount of time.", 47);
  *&v205 = v24;
  v25 = sub_1CA94C438("Vibrates the device for a short amount of time.", 47);
  v27 = v26;
  v211 = &v197;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v197 - v218;
  sub_1CA948D98();
  v29 = inited;
  v30 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v197 - v216;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v23, v205, v25, v27, 0, 0, v28, v31);
  *(v20 + 64) = v213;
  *(v20 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v214;
  *(v29 + 120) = sub_1CA6B3784(v34);
  *(v29 + 144) = v35;
  *(v29 + 152) = @"DisabledOnPlatforms";
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v212 = v29;
  *(v29 + 160) = &unk_1F4A02040;
  *(v29 + 184) = v36;
  *(v29 + 192) = @"IconColor";
  *(v29 + 200) = 6579538;
  *(v29 + 208) = 0xE300000000000000;
  v37 = MEMORY[0x1E69E6158];
  *(v29 + 224) = MEMORY[0x1E69E6158];
  *(v29 + 232) = @"IconSymbol";
  *(v29 + 240) = 0xD000000000000020;
  *(v29 + 248) = 0x80000001CA9C4BD0;
  *(v29 + 264) = v37;
  *(v29 + 272) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(v29 + 280) = 1;
  *(v29 + 304) = v38;
  *(v29 + 312) = @"Name";
  v39 = @"DisabledOnPlatforms";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"InputPassthrough";
  v43 = @"Name";
  v44 = sub_1CA94C438("Vibrate Device (Action Name)", 28);
  v46 = v45;
  v47 = sub_1CA94C438("Vibrate Device", 14);
  v49 = v48;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v197 - v218;
  sub_1CA948D98();
  v51 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v197 - v216;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  v55 = v212;
  v212[40] = v54;
  v55[43] = v213;
  v55[44] = @"Parameters";
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v204 = swift_allocObject();
  v205 = xmmword_1CA9813B0;
  *(v204 + 16) = xmmword_1CA9813B0;
  v203 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA981300;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000016;
  *(v56 + 48) = 0x80000001CA99C4A0;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"DefaultValue";
  *(v56 + 80) = 0x746C7561666544;
  *(v56 + 88) = 0xE700000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Description";
  v58 = @"Parameters";
  v59 = @"Class";
  v60 = @"DefaultValue";
  v61 = @"Description";
  v201 = sub_1CA94C438("When run on Apple Watch, the selected pattern will be tapped on to your wrist. (WFVibrateHapticType)", 100);
  v63 = v62;
  v64 = sub_1CA94C438("When run on Apple Watch, the selected pattern will be tapped on to your wrist.", 78);
  v66 = v65;
  v214 = &v197;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v197 - v218;
  sub_1CA948D98();
  v68 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = v216;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71 = sub_1CA2F9F14(v201, v63, v64, v66, 0, 0, v67, &v197 - v69);
  v202 = v56;
  *(v56 + 120) = v71;
  *(v56 + 144) = v213;
  *(v56 + 152) = @"Hidden";
  *(v56 + 160) = 1;
  *(v56 + 184) = MEMORY[0x1E69E6370];
  *(v56 + 192) = @"Items";
  v214 = swift_allocObject();
  *(v214 + 1) = xmmword_1CA981720;
  v72 = @"Hidden";
  v73 = @"Items";
  v74 = sub_1CA94C438("Default (WFVibrateHapticType)", 29);
  v199 = v75;
  v200 = v74;
  v76 = sub_1CA94C438("Default", 7);
  v198 = v77;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v197 - v218;
  sub_1CA948D98();
  v79 = v217;
  v80 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v200, v199, v76, v198, 0, 0, v78, &v197 - v69);
  v214[4] = v82;
  v83 = sub_1CA94C438("Up Direction (WFVibrateHapticType)", 34);
  v199 = v84;
  v200 = v83;
  v85 = sub_1CA94C438("Up Direction", 12);
  v198 = v86;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v218;
  sub_1CA948D98();
  v88 = [v79 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = v216;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v200, v199, v85, v198, 0, 0, &v197 - v87, &v197 - v89);
  v92 = v214;
  v214[5] = v91;
  v93 = sub_1CA94C438("Down Direction (WFVibrateHapticType)", 36);
  v199 = v94;
  v200 = v93;
  v95 = sub_1CA94C438("Down Direction", 14);
  v198 = v96;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948D98();
  v97 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 48) = sub_1CA2F9F14(v200, v199, v95, v198, 0, 0, &v197 - v87, &v197 - v89);
  v99 = sub_1CA94C438("Success (WFVibrateHapticType)", 29);
  v199 = v100;
  v200 = v99;
  v101 = sub_1CA94C438("Success", 7);
  v198 = v102;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v101);
  v103 = v218;
  sub_1CA948D98();
  v104 = v217;
  v105 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v197 - v216;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v200, v199, v101, v198, 0, 0, &v197 - v103, v106);
  v109 = v214;
  v214[7] = v108;
  v110 = sub_1CA94C438("Failure (WFVibrateHapticType)", 29);
  v199 = v111;
  v200 = v110;
  v112 = sub_1CA94C438("Failure", 7);
  v198 = v113;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v197 - v103;
  sub_1CA948D98();
  v115 = v104;
  v116 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = v216;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v109 + 64) = sub_1CA2F9F14(v200, v199, v112, v198, 0, 0, v114, &v197 - v117);
  v119 = sub_1CA94C438("Retry (WFVibrateHapticType)", 27);
  v199 = v120;
  v200 = v119;
  v121 = sub_1CA94C438("Retry", 5);
  v123 = v122;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v197 - v218;
  sub_1CA948D98();
  v125 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v200, v199, v121, v123, 0, 0, v124, &v197 - v117);
  v128 = v214;
  v214[9] = v127;
  v129 = sub_1CA94C438("Start (WFVibrateHapticType)", 27);
  v199 = v130;
  v200 = v129;
  v131 = sub_1CA94C438("Start", 5);
  v198 = v132;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v131);
  v133 = v218;
  sub_1CA948D98();
  v134 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v128 + 80) = sub_1CA2F9F14(v200, v199, v131, v198, 0, 0, &v197 - v133, &v197 - v117);
  v136 = sub_1CA94C438("Stop (WFVibrateHapticType)", 26);
  v199 = v137;
  v200 = v136;
  v138 = sub_1CA94C438("Stop", 4);
  v198 = v139;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v138);
  v140 = &v197 - v133;
  v141 = v133;
  sub_1CA948D98();
  v142 = v217;
  v143 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = v216;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v200, v199, v138, v198, 0, 0, v140, &v197 - v144);
  v214[11] = v146;
  v147 = sub_1CA94C438("Click (WFVibrateHapticType)", 27);
  v199 = v148;
  v200 = v147;
  v149 = sub_1CA94C438("Click", 5);
  v198 = v150;
  v201 = &v197;
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948D98();
  v151 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v200, v199, v149, v198, 0, 0, &v197 - v141, &v197 - v144);
  v154 = v214;
  v214[12] = v153;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v156 = v202;
  v202[25] = v154;
  v156[28] = v155;
  v156[29] = @"Key";
  v156[30] = 0xD000000000000013;
  v156[31] = 0x80000001CA9C4E90;
  v156[33] = MEMORY[0x1E69E6158];
  v156[34] = @"Label";
  v157 = @"Key";
  v158 = @"Label";
  v159 = sub_1CA94C438("Haptic Pattern (WFVibrateHapticType)", 36);
  v161 = v160;
  v162 = sub_1CA94C438("Haptic Pattern", 14);
  v164 = v163;
  v214 = &v197;
  MEMORY[0x1EEE9AC00](v162);
  v165 = &v197 - v218;
  sub_1CA948D98();
  v166 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  v167 = &v197 - v216;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156[35] = sub_1CA2F9F14(v159, v161, v162, v164, 0, 0, v165, v167);
  v156[38] = v213;
  v156[39] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v169 = swift_allocObject();
  *(v169 + 16) = v206;
  v170 = @"RequiredResources";
  *(v169 + 32) = sub_1CA94C1E8();
  v156[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v156[40] = v169;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v171 = sub_1CA94C1E8();
  v172 = sub_1CA2F864C(v171);
  v173 = v204;
  *(v204 + 32) = v172;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v175 = v212;
  v212[45] = v173;
  v175[48] = v174;
  v175[49] = @"ParameterSummary";
  v176 = @"ParameterSummary";
  v177 = sub_1CA94C438("Vibrate device (Parameter Summary)", 34);
  v179 = v178;
  v180 = sub_1CA94C438("Vibrate device", 14);
  v182 = v181;
  MEMORY[0x1EEE9AC00](v180);
  v183 = &v197 - v218;
  sub_1CA948D98();
  v184 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = &v197 - v216;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v177, v179, v180, v182, 0, 0, v183, v185);
  v188 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v189 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v190 = v212;
  v212[50] = v188;
  v190[53] = v189;
  v190[54] = @"RequiredResources";
  v191 = swift_allocObject();
  *(v191 + 16) = v205;
  v192 = v208;
  (*(v207 + 104))(v208, *MEMORY[0x1E69DB3F8], v209);
  v193 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource(0));
  v194 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v192);
  *(v191 + 32) = v195;
  v190[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  v190[55] = v191;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4EB1A0()
{
  v134 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFListAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("array", 5);
  v7 = v6;
  v8 = sub_1CA94C438("array", 5);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v140 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v141 = v12;
  v13 = &v125 - v140;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v138 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v137 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v139 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v125 - v139;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v135 = v2;
  v136 = v20;
  v2[10] = v19;
  v2[13] = v20;
  v2[14] = @"Description";
  v133 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionNote";
  v22 = @"Description";
  v23 = @"DescriptionNote";
  v24 = sub_1CA94C438("If you specify a variable, the contents of that variable will be included in the list.", 86);
  v130 = v25;
  *&v131 = v24;
  v26 = sub_1CA94C438("If you specify a variable, the contents of that variable will be included in the list.", 86);
  v28 = v27;
  v132 = &v125;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v125 - v140;
  sub_1CA948D98();
  v30 = v138;
  v31 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v125 - v139;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v131, v130, v26, v28, 0, 0, v29, v32);
  v34 = v136;
  *(v21 + 64) = v136;
  *(v21 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438("Allows you to specify a list of items to be passed to the next action.", 70);
  v130 = v37;
  *&v131 = v36;
  v38 = sub_1CA94C438("Allows you to specify a list of items to be passed to the next action.", 70);
  v40 = v39;
  v132 = &v125;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v125 - v140;
  sub_1CA948D98();
  v42 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v125 - v139;
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v131, v130, v38, v40, 0, 0, v41, v43);
  *(v21 + 104) = v34;
  *(v21 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v46 = sub_1CA94C1E8();
  v47 = v133;
  v48 = sub_1CA6B3784(v46);
  v49 = v135;
  v135[15] = v48;
  v49[18] = v47;
  v49[19] = @"IconColor";
  v49[20] = 0x65676E61724FLL;
  v49[21] = 0xE600000000000000;
  v50 = MEMORY[0x1E69E6158];
  v49[23] = MEMORY[0x1E69E6158];
  v49[24] = @"IconSymbol";
  v49[25] = 0x6C75622E7473696CLL;
  v49[26] = 0xEB0000000074656CLL;
  v49[28] = v50;
  v49[29] = @"Name";
  v51 = v49;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Name";
  v55 = sub_1CA94C438("List (Action Name)", 18);
  v57 = v56;
  v58 = sub_1CA94C438("List", 4);
  v60 = v59;
  v133 = &v125;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v125 - v140;
  sub_1CA948D98();
  v62 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v125 - v139;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v55, v57, v58, v60, 0, 0, v61, v63);
  v66 = v51;
  v51[30] = v65;
  v67 = v136;
  v66[33] = v136;
  v66[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v68 = swift_initStackObject();
  v131 = xmmword_1CA981350;
  *(v68 + 16) = xmmword_1CA981350;
  *(v68 + 32) = 0x75736F6C63736944;
  *(v68 + 40) = 0xEF6C6576654C6572;
  *(v68 + 48) = 0x63696C627550;
  *(v68 + 56) = 0xE600000000000000;
  *(v68 + 72) = MEMORY[0x1E69E6158];
  *(v68 + 80) = 0x656C7069746C754DLL;
  *(v68 + 88) = 0xE800000000000000;
  v69 = MEMORY[0x1E69E6370];
  *(v68 + 96) = 1;
  *(v68 + 120) = v69;
  *(v68 + 128) = 0x614E74757074754FLL;
  *(v68 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438("List (Default Output Name)", 26);
  v132 = v72;
  v73 = sub_1CA94C438("List", 4);
  v75 = v74;
  v133 = &v125;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v125 - v140;
  sub_1CA948D98();
  v77 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v125 - v139;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 144) = sub_1CA2F9F14(v71, v132, v73, v75, 0, 0, v76, v78);
  *(v68 + 168) = v67;
  *(v68 + 176) = 0x7365707954;
  *(v68 + 184) = 0xE500000000000000;
  *(v68 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v68 + 192) = &unk_1F4A020D0;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v83 = v135;
  v135[35] = v81;
  v83[38] = v82;
  v83[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v133 = swift_allocObject();
  *(v133 + 1) = xmmword_1CA9813B0;
  v132 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_initStackObject();
  *(v84 + 16) = v131;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000017;
  *(v84 + 48) = 0x80000001CA9C5040;
  *(v84 + 64) = v80;
  *(v84 + 72) = @"DefaultValue";
  *&v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1CA981360;
  v85 = @"Parameters";
  v86 = @"Class";
  v87 = @"DefaultValue";
  v88 = sub_1CA94C438("One (WFItems)", 13);
  v128 = v89;
  v129 = v88;
  v90 = sub_1CA94C438("One", 3);
  v126 = v91;
  v127 = v90;
  v130 = &v125;
  MEMORY[0x1EEE9AC00](v90);
  v92 = v140;
  sub_1CA948D98();
  v93 = v138;
  v94 = [v138 bundleURL];
  v125 = &v125;
  MEMORY[0x1EEE9AC00](v94);
  v95 = v139;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v129, v128, v127, v126, 0, 0, &v125 - v92, &v125 - v95);
  v98 = v131;
  *(v131 + 32) = v97;
  v99 = sub_1CA94C438("Two (WFItems)", 13);
  v128 = v100;
  v129 = v99;
  v127 = sub_1CA94C438("Two", 3);
  v102 = v101;
  v130 = &v125;
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948D98();
  v103 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v98 + 40) = sub_1CA2F9F14(v129, v128, v127, v102, 0, 0, &v125 - v92, &v125 - v95);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v84 + 80) = v98;
  *(v84 + 104) = v105;
  *(v84 + 112) = @"Key";
  *(v84 + 120) = 0x736D6574494657;
  *(v84 + 128) = 0xE700000000000000;
  *(v84 + 144) = MEMORY[0x1E69E6158];
  *(v84 + 152) = @"Label";
  v106 = @"Key";
  v107 = @"Label";
  v108 = sub_1CA94C438("Items (WFItems)", 15);
  v130 = v109;
  v110 = sub_1CA94C438("Items", 5);
  v112 = v111;
  *&v131 = &v125;
  MEMORY[0x1EEE9AC00](v110);
  v113 = &v125 - v140;
  sub_1CA948D98();
  v114 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v125 - v139;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v108, v130, v110, v112, 0, 0, v113, v115);
  *(v84 + 184) = v136;
  *(v84 + 160) = v117;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v118 = sub_1CA94C1E8();
  v119 = sub_1CA2F864C(v118);
  v120 = v133;
  v133[4] = v119;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v122 = v135;
  v135[40] = v120;
  v122[43] = v121;
  v122[44] = @"ResidentCompatible";
  v122[48] = MEMORY[0x1E69E6370];
  *(v122 + 360) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v123 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4EC094()
{
  v105 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9C50B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("phone|number|mobile|home|cellular|telephone", 43);
  v6 = v5;
  v7 = sub_1CA94C438("phone|number|mobile|home|cellular|telephone", 43);
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
  v26 = sub_1CA94C438("Passes the specified phone numbers to the next action.", 54);
  v102 = v27;
  v28 = sub_1CA94C438("Passes the specified phone numbers to the next action.", 54);
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
  *(inited + 200) = 0x6E65657247;
  *(inited + 208) = 0xE500000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x69662E656E6F6870;
  *(inited + 248) = 0xEA00000000006C6CLL;
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
  v44 = sub_1CA94C438("Phone Number (Action Name)", 26);
  v46 = v45;
  v47 = sub_1CA94C438("Phone Number", 12);
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
  v56 = sub_1CA94C438("Phone Number (Default Output Name)", 34);
  v103 = v57;
  v58 = sub_1CA94C438("Phone Number", 12);
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
  *(v54 + 192) = &unk_1F4A02140;
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
  *(v68 + 80) = 0xD00000000000001BLL;
  *(v68 + 88) = 0x80000001CA9BEDF0;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Key";
  strcpy((v68 + 120), "WFPhoneNumber");
  *(v68 + 134) = -4864;
  *(v68 + 144) = v65;
  *(v68 + 152) = @"Label";
  v69 = @"Parameters";
  v70 = @"AllowsMultipleValues";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v74 = sub_1CA94C438("Phone Number (WFPhoneNumber)", 28);
  v101 = v75;
  v76 = sub_1CA94C438("Phone Number", 12);
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
  v84 = sub_1CA94C438("Type in a phone number (WFPhoneNumber)", 38);
  v101 = v85;
  v86 = sub_1CA94C438("Type in a phone number", 22);
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

id sub_1CA4ECDC4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1CA94C368();

  v6 = [v4 *a3];

  return v6;
}

id sub_1CA4ECE38(uint64_t a1, uint64_t a2)
{
  *&v2[qword_1EC444E10] = a1;
  *&v2[qword_1EC444E18] = a2;
  v4.receiver = v2;
  v4.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900);
  return objc_msgSendSuper2(&v4, sel_init);
}

id Query.toTableTemplateValue()()
{
  sub_1CA94AF38();
  OUTLINED_FUNCTION_1_0();
  v62 = v3;
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v58 = v5 - v4;
  sub_1CA94AF58();
  OUTLINED_FUNCTION_1_0();
  v60 = v6;
  v61 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_10_18(v8);
  v9 = sub_1CA94B0C8();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  sub_1CA94ACD8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_0();
  v22 = v21 - v20;
  sub_1CA94B768();
  v23 = OUTLINED_FUNCTION_104();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x1E69DAEC8])
  {
    v26 = OUTLINED_FUNCTION_104();
    v27(v26);
    (*(v11 + 32))(v18, v22, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1CA9813B0;
    v0 = v18;
    v29 = sub_1CA4ED528();
    if (v1)
    {
      (*(v11 + 8))(v18, v9);
      *(v28 + 16) = 0;
LABEL_40:
    }

    else
    {
      *(v28 + 32) = v29;
      v47 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900));
      v0 = sub_1CA4ECE38(1, v28);
      (*(v11 + 8))(v18, v9);
    }

    return v0;
  }

  v64 = v11;
  v65 = v9;
  if (v25 == *MEMORY[0x1E69DAEF8])
  {
    v30 = OUTLINED_FUNCTION_104();
    v31(v30);
    v32 = v60;
    v33 = v59;
    (*(v61 + 32))(v59, v22, v60);
    v34 = v58;
    sub_1CA94AF48();
    v35 = (*(v62 + 88))(v34, v63);
    if (v35 == *MEMORY[0x1E69DB118])
    {
      v36 = 1;
      v37 = v65;
LABEL_31:
      v48 = sub_1CA94AF28();
      v49 = *(v48 + 16);
      if (v49)
      {
        v58 = v36;
        v66 = MEMORY[0x1E69E7CC0];
        v62 = v49;
        sub_1CA94D508();
        v50 = 0;
        v63 = v48 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        while (v50 < *(v48 + 16))
        {
          (*(v64 + 16))(v15, v63 + *(v64 + 72) * v50, v37);
          v0 = v15;
          sub_1CA4ED528();
          if (v1)
          {

            v55 = OUTLINED_FUNCTION_4_37();
            v56(v55);
            (*(v61 + 8))(v59, v60);
            goto LABEL_40;
          }

          ++v50;
          v51 = OUTLINED_FUNCTION_4_37();
          v52(v51);
          sub_1CA94D4D8();
          sub_1CA94D518();
          v37 = v65;
          sub_1CA94D528();
          sub_1CA94D4E8();
          if (v62 == v50)
          {

            v53 = v66;
            v33 = v59;
            v32 = v60;
            v36 = v58;
            goto LABEL_38;
          }
        }

        __break(1u);
        goto LABEL_43;
      }

      v53 = MEMORY[0x1E69E7CC0];
LABEL_38:
      v54 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900));
      v0 = sub_1CA4ECE38(v36, v53);
      (*(v61 + 8))(v33, v32);
      return v0;
    }

    v37 = v65;
    if (v35 == *MEMORY[0x1E69DB110])
    {
      v36 = 0;
      goto LABEL_31;
    }
  }

  else if (v25 == *MEMORY[0x1E69DAED8] || v25 == *MEMORY[0x1E69DAF00] || v25 == *MEMORY[0x1E69DAEE0] || v25 == *MEMORY[0x1E69DAEE8] || v25 == *MEMORY[0x1E69DAEF0] || v25 == *MEMORY[0x1E69DAF08] || v25 == *MEMORY[0x1E69DAED0])
  {
    v44 = OUTLINED_FUNCTION_104();
    v45(v44);
    type metadata accessor for QueryToTableTemplateValueConversionError(0);
    v46 = sub_1CA4EE284(&qword_1EC445E30, type metadata accessor for QueryToTableTemplateValueConversionError, &unk_1CA98993C);
    OUTLINED_FUNCTION_8_20(v46);
    sub_1CA94B768();
    swift_willThrow();
    return v0;
  }

LABEL_43:
  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

id sub_1CA4ED528()
{
  sub_1CA94AC88();
  OUTLINED_FUNCTION_1_0();
  v114 = v1;
  v115 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_19();
  v108 = (v2 - v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v109 = (&v107 - v6);
  MEMORY[0x1EEE9AC00](v5);
  v113 = (&v107 - v7);
  sub_1CA94B538();
  OUTLINED_FUNCTION_1_0();
  v116 = v9;
  v117 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  sub_1CA94B088();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v118 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v107 - v19;
  v21 = sub_1CA94B618();
  OUTLINED_FUNCTION_1_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  v27 = v26 - v25;
  sub_1CA94B0A8();
  v28 = ContentItemClassDescriptor.load()();
  (*(v23 + 8))(v27, v21);
  if (!v28)
  {
    type metadata accessor for PredicateToRowTemplateValueConversionError(0);
    v36 = sub_1CA4EE284(&qword_1EC445E48, type metadata accessor for PredicateToRowTemplateValueConversionError, &unk_1CA989A2C);
    OUTLINED_FUNCTION_8_20(v36);
    v38 = v37;
    sub_1CA94B0A8();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v38;
  }

  v111 = v28;
  sub_1CA94B098();
  v29 = OUTLINED_FUNCTION_4_37();
  v110 = v30;
  v31 = v30(v29);
  v32 = *MEMORY[0x1E69DB260];
  v112 = v14;
  if (v31 == v32)
  {
    v33 = OUTLINED_FUNCTION_2_37();
    v31 = v34(v33);
    v35 = 5;
LABEL_35:
    MEMORY[0x1CCA9FF10](v31);
    v66 = sub_1CA94B518();
    v68 = v67;
    (*(v116 + 8))(v12, v117);
    v69 = objc_allocWithZone(WFRowTemplateValue);
    v38 = sub_1CA66ABCC(v111, v66, v68, v35, 0);
    v70 = v118;
    sub_1CA94B098();
    v71 = OUTLINED_FUNCTION_9_24();
    v72 = v110(v71);
    if (v72 == v32 || v72 == *MEMORY[0x1E69DB288] || v72 == *MEMORY[0x1E69DB268] || v72 == *MEMORY[0x1E69DB280] || v72 == *MEMORY[0x1E69DB2B0] || v72 == *MEMORY[0x1E69DB278] || v72 == *MEMORY[0x1E69DB298] || v72 == *MEMORY[0x1E69DB270] || v72 == *MEMORY[0x1E69DB250] || v72 == *MEMORY[0x1E69DB2A0] || v72 == *MEMORY[0x1E69DB2C0] || v72 == *MEMORY[0x1E69DB2B8])
    {
      v84 = OUTLINED_FUNCTION_9_24();
      v85(v84);
      v87 = v113;
      v86 = v114;
      v88 = v70;
      v89 = v115;
      (*(v114 + 32))(v113, v88, v115);
      v90 = v119;
      sub_1CA4EE2CC(v87, 0);
      (*(v86 + 8))(v87, v89);
      if (v90)
      {
      }
    }

    else if (v72 == *MEMORY[0x1E69DB2C8])
    {
      v91 = OUTLINED_FUNCTION_9_24();
      v92(v91);
      v93 = v70;
      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445E50, &unk_1CA989980) + 48);
      v96 = v114;
      v95 = v115;
      v97 = *(v114 + 32);
      v98 = v109;
      v97(v109, v93, v115);
      v99 = v93 + v94;
      v100 = v108;
      v97(v108, v99, v95);
      v101 = v119;
      sub_1CA4EE2CC(v98, 0);
      if (v101)
      {

        v102 = *(v96 + 8);
        v102(v100, v95);
        v102(v98, v95);
      }

      else
      {
        sub_1CA4EE2CC(v100, 1);
        v106 = *(v96 + 8);
        v106(v100, v95);
        v106(v98, v95);
      }
    }

    else
    {
      v104 = OUTLINED_FUNCTION_9_24();
      v105(v104);
    }

    return v38;
  }

  if (v31 == *MEMORY[0x1E69DB288])
  {
    v39 = OUTLINED_FUNCTION_2_37();
    v31 = v40(v39);
    v35 = 4;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB268])
  {
    v41 = OUTLINED_FUNCTION_2_37();
    v31 = v42(v41);
    v35 = 2;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB280])
  {
    v43 = OUTLINED_FUNCTION_2_37();
    v31 = v44(v43);
    v35 = 3;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB2B0])
  {
    v45 = OUTLINED_FUNCTION_2_37();
    v31 = v46(v45);
    v35 = 0;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB278])
  {
    v47 = OUTLINED_FUNCTION_2_37();
    v31 = v48(v47);
    v35 = 1;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB298])
  {
    v49 = OUTLINED_FUNCTION_2_37();
    v31 = v50(v49);
    v35 = 99;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB270])
  {
    v51 = OUTLINED_FUNCTION_2_37();
    v31 = v52(v51);
    v35 = 999;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB250])
  {
    v53 = OUTLINED_FUNCTION_2_37();
    v31 = v54(v53);
    v35 = 8;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB2A0])
  {
    v55 = OUTLINED_FUNCTION_2_37();
    v31 = v56(v55);
    v35 = 9;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB2C0])
  {
    v57 = OUTLINED_FUNCTION_2_37();
    v31 = v58(v57);
    v35 = 1000;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB2B8])
  {
    v59 = OUTLINED_FUNCTION_2_37();
    v31 = v60(v59);
    v35 = 1001;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB2C8])
  {
    v61 = OUTLINED_FUNCTION_4_37();
    v62(v61);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445E50, &unk_1CA989980);
    v64 = v115;
    v65 = *(v114 + 8);
    v65(&v20[*(v63 + 48)], v115);
    v31 = (v65)(v20, v64);
    v35 = 1003;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB2A8])
  {
    v35 = 100;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB258])
  {
    v35 = 101;
    goto LABEL_35;
  }

  if (v31 == *MEMORY[0x1E69DB290])
  {
    v35 = 1002;
    goto LABEL_35;
  }

  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

uint64_t ContentItemClassDescriptor.load()()
{
  v0 = sub_1CA949328();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v6 = v5 - v4;
  v7 = sub_1CA94B5F8();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = (v12 - v11);
  sub_1CA94B608();
  v14 = (*(v9 + 88))(v13, v7);
  if (v14 == *MEMORY[0x1E69DB460])
  {
    v15 = OUTLINED_FUNCTION_7_25();
    v16(v15);
    v17 = sub_1CA94C368();

    v18 = NSClassFromString(v17);
    goto LABEL_9;
  }

  if (v14 == *MEMORY[0x1E69DB450])
  {
    v19 = OUTLINED_FUNCTION_7_25();
    v20(v19);
    v21 = *v13;
    v22 = v13[1];
    sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
    v23 = &selRef_initWithIdentifier_;
LABEL_7:
    v17 = sub_1CA4ECDC4(v21, v22, v23);
    v26 = sub_1CA94C368();

    v27 = [(NSString *)v17 wf_contentItemClassWithAppBundleIdentifier:v26];
LABEL_8:
    v18 = v27;

LABEL_9:
    if (v18)
    {
      swift_getObjCClassMetadata();
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      return swift_dynamicCastMetatype();
    }

    return 0;
  }

  if (v14 == *MEMORY[0x1E69DB468])
  {
    v24 = OUTLINED_FUNCTION_7_25();
    v25(v24);
    v21 = *v13;
    v22 = v13[1];
    sub_1CA25B3D0(0, &qword_1EC4442C8, 0x1E69AC890);
    v23 = &selRef_initWithEnumerationIdentifier_;
    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x1E69DB458])
  {
    v29 = OUTLINED_FUNCTION_7_25();
    v30(v29);
    v31 = sub_1CA949338();
    sub_1CA949318();
    v17 = sub_1CA3118B4(v6, v31);

    (*(v2 + 8))(v6, v0);
    if (v17)
    {
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32)
      {
        v33 = v32;
        v26 = sub_1CA94C368();
        v27 = [v33 wf:v26 contentItemClassWithAppBundleIdentifier:?];
        goto LABEL_8;
      }
    }

    return 0;
  }

  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

uint64_t sub_1CA4EE1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA94ACD8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA4EE1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA94ACD8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1CA4EE284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CA4EE2CC(uint64_t *a1, int a2)
{
  v100 = a2;
  sub_1CA94A8C8();
  OUTLINED_FUNCTION_1_0();
  v102 = v4;
  v103 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_10_18(v5);
  v6 = sub_1CA94AC18();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v99[-v14];
  v16 = sub_1CA94AC88();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_0();
  v104 = *(v18 + 16);
  v105 = a1;
  (v104)(v21 - v20, a1, v16);
  v22 = OUTLINED_FUNCTION_4_37();
  v24 = v23(v22);
  if (v24 != *MEMORY[0x1E69DAE70])
  {
    if (v24 != *MEMORY[0x1E69DAE20])
    {
      type metadata accessor for TypedValueToRowTemplateValuePopulationError(0);
      OUTLINED_FUNCTION_5_27();
      v46 = sub_1CA4EE284(v44, v45, &unk_1CA9899EC);
      OUTLINED_FUNCTION_8_20(v46);
      (v104)(v47, v105, v16);
      swift_willThrow();
      v48 = OUTLINED_FUNCTION_4_37();
      v49(v48);
      return;
    }

    v33 = OUTLINED_FUNCTION_4_37();
    v34(v33);
    v35 = swift_projectBox();
    v36 = v101;
    v37 = v102;
    v38 = v103;
    (*(v102 + 16))(v101, v35, v103);
    sub_1CA94A898();
    v39 = sub_1CA94C368();

    [v106 setEnumeration_];

    (*(v37 + 8))(v36, v38);
    goto LABEL_22;
  }

  v25 = OUTLINED_FUNCTION_4_37();
  v26(v25);
  v27 = swift_projectBox();
  v28 = *(v8 + 16);
  v28(v15, v27, v6);
  v28(v12, v15, v6);
  v29 = (*(v8 + 88))(v12, v6);
  if (v29 == *MEMORY[0x1E69DADC0])
  {
    v30 = OUTLINED_FUNCTION_3_33();
    v31(v30);
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v32 = sub_1CA94CFA8();
    [v106 setBoolean_];
LABEL_8:

    v42 = OUTLINED_FUNCTION_94();
    v43(v42);
LABEL_22:

    return;
  }

  if (v29 == *MEMORY[0x1E69DADE0])
  {
    v40 = OUTLINED_FUNCTION_3_33();
    v41(v40);
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v32 = sub_1CA94CF98();
    [v106 setNumber_];
    goto LABEL_8;
  }

  if (v29 == *MEMORY[0x1E69DADF0])
  {
    v50 = OUTLINED_FUNCTION_3_33();
    v51(v50);
    sub_1CA5146AC(*v12, v12[1], v106);
    v52 = OUTLINED_FUNCTION_94();
    v53(v52);
    goto LABEL_22;
  }

  if (v29 == *MEMORY[0x1E69DADC8])
  {
    (*(v8 + 96))(v12, v6);
    v54 = sub_1CA948CB8();
    v105 = v99;
    OUTLINED_FUNCTION_1_0();
    v55 = v8 + 96;
    v57 = v56;
    MEMORY[0x1EEE9AC00](v58);
    OUTLINED_FUNCTION_6_0();
    v61 = v60 - v59;
    (*(v57 + 32))(v60 - v59, v12, v54);
    v62 = sub_1CA948C58();
    if (v100)
    {
      [v106 setAnotherDate_];
    }

    else
    {
      [v106 setDate_];
    }

    (*(v57 + 8))(v61, v54);
    (*(v55 - 88))(v15, v6);
  }

  else
  {
    if (v29 != *MEMORY[0x1E69DAD80])
    {
      if (v29 == *MEMORY[0x1E69DADB8])
      {
        v81 = OUTLINED_FUNCTION_3_33();
        v82(v81);
        v83 = sub_1CA948BA8();
        OUTLINED_FUNCTION_1_0();
        v85 = v84;
        MEMORY[0x1EEE9AC00](v86);
        OUTLINED_FUNCTION_6_0();
        v89 = v88 - v87;
        (*(v85 + 32))(v88 - v87, v12, v83);
        v90 = sub_1CA948B28();
        sub_1CA5146AC(v90, v91, v106);
        (*(v85 + 8))(v89, v83);
        v92 = OUTLINED_FUNCTION_94();
        v93(v92);
      }

      else
      {
        type metadata accessor for TypedValueToRowTemplateValuePopulationError(0);
        OUTLINED_FUNCTION_5_27();
        sub_1CA4EE284(v94, v95, &unk_1CA9899EC);
        swift_allocError();
        (v104)(v96, v105, v16);
        swift_willThrow();
        v97 = *(v8 + 8);
        v98 = OUTLINED_FUNCTION_94();
        v97(v98);
        (v97)(v12, v6);
      }

      goto LABEL_22;
    }

    v105 = v15;
    v63 = OUTLINED_FUNCTION_3_33();
    v64(v63);
    v65 = sub_1CA9488E8();
    v103 = v6;
    v66 = v65;
    v104 = v99;
    OUTLINED_FUNCTION_1_0();
    v67 = v8;
    v69 = v68;
    MEMORY[0x1EEE9AC00](v70);
    OUTLINED_FUNCTION_6_0();
    v73 = v72 - v71;
    (*(v69 + 32))(v72 - v71, v12, v66);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
    MEMORY[0x1EEE9AC00](v74 - 8);
    v76 = &v99[-v75];
    sub_1CA9488D8();
    v77 = sub_1CA948CB8();
    if (__swift_getEnumTagSinglePayload(v76, 1, v77) == 1)
    {
      __break(1u);
    }

    else
    {
      v78 = sub_1CA948C58();
      v79 = OUTLINED_FUNCTION_9_24();
      v80(v79);
      [v106 setDate_];

      (*(v69 + 8))(v73, v66);
      (*(v67 + 8))(v105, v103);
    }
  }
}

uint64_t sub_1CA4EEC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA94AC88();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA4EECA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA94AC88();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1CA4EED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return v5;
}

uint64_t sub_1CA4EEDBC(uint64_t a1)
{
  result = sub_1CA94ACD8();
  if (v2 <= 0x3F)
  {
    result = sub_1CA94B618();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static SplitScreenActionMigration.workflowNeedsMigration(_:fromClientVersion:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA94C368();
  v3 = sub_1CA94C368();
  v4 = WFBundleVersionLessThan(v2, v3);

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1CA94C368();
  v6 = sub_1CA94C1A8();
  HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(v5, v6);

  return HasActionsWithIdentifier;
}

Swift::Void __swiftcall SplitScreenActionMigration.migrateWorkflow()()
{
  v1 = v0;
  v2 = [v0 actions];
  if (v2)
  {
    v3 = v2;
    v29 = sub_1CA948AF8();
    v30 = &v27;
    v28 = *(v29 - 8);
    MEMORY[0x1EEE9AC00](v29);
    v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v3;
    sub_1CA94CF68();
    *(&v32 + 1) = 0x80000001CA9A2890;
    v33 = 0x80000001CA999EE0;
    *&v32 = 0xD00000000000001ALL;
    while (1)
    {
      while (1)
      {
        do
        {
          sub_1CA948AE8();
          if (!v40)
          {
            (*(v28 + 8))(v5, v29);
            [v1 finish];

            return;
          }

          sub_1CA2C0A20(&v39, v38);
          sub_1CA2C0A30();
        }

        while ((swift_dynamicCast() & 1) == 0);
        v6 = v36;
        v7 = [v1 actionIdentifierKey];
        v8 = sub_1CA94C3A8();
        v10 = v9;

        *&v36 = v8;
        *(&v36 + 1) = v10;
        v11 = sub_1CA94D848();
        v12 = OUTLINED_FUNCTION_3_34(v11);
        swift_unknownObjectRelease();
        if (v12)
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
        }

        OUTLINED_FUNCTION_2_7();
        if (!v13)
        {
          sub_1CA2C0A74(v38);
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_0_44();
        if (!swift_dynamicCast())
        {
          goto LABEL_17;
        }

        if (v34 == 0xD00000000000001FLL && v33 == v35)
        {
        }

        else
        {
          v15 = sub_1CA94D7F8();

          if ((v15 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v36 = v32;
        v16 = sub_1CA94D848();
        v17 = OUTLINED_FUNCTION_3_34(v16);
        swift_unknownObjectRelease();
        if (v17)
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
        }

        OUTLINED_FUNCTION_2_7();
        if (v18)
        {
          break;
        }

LABEL_36:

        sub_1CA2C0A74(v38);
      }

      OUTLINED_FUNCTION_0_44();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_17;
      }

      v19 = v34;
      OUTLINED_FUNCTION_2_38();
      *&v36 = v20;
      *(&v36 + 1) = 0xEA00000000006F69;
      v21 = [v19 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v21)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      OUTLINED_FUNCTION_2_7();
      if (!v22)
      {

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_0_44();
      if (swift_dynamicCast())
      {
        if (v34 == 0x85E2202B209385E2 && v35 == 0xA900000000000094)
        {

LABEL_39:
          v25 = sub_1CA94C368();
          OUTLINED_FUNCTION_2_38();
          *&v38[0] = v26;
          *(&v38[0] + 1) = 0xEA00000000006F69;
          [v19 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          goto LABEL_40;
        }

        v24 = sub_1CA94D7F8();

        if (v24)
        {
          goto LABEL_39;
        }

LABEL_40:
      }

      else
      {

LABEL_17:
      }
    }
  }
}

id SplitScreenActionMigration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SplitScreenActionMigration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SplitScreenActionMigration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA4EF5A4()
{
  v165 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C5230;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("song|music|itunes|up next|apple|album|next|play", 47);
  v6 = v5;
  v7 = sub_1CA94C438("song|music|itunes|up next|apple|album|next|play", 47);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v175 = v11;
  v176 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v157 - v176;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v173 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v172 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v174 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v157 - v174;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v171 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v169 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("Items in your music library or items from the Find iTunes Store Items action.", 77);
  v166 = v27;
  v167 = v26;
  v28 = sub_1CA94C438("Items in your music library or items from the Find iTunes Store Items action.", 77);
  *&v164 = v29;
  v168 = v157;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v157 - v176;
  sub_1CA948D98();
  v31 = v173;
  v32 = [v173 bundleURL];
  v170 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v174;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v167, v166, v28, v164, 0, 0, v30, v157 - v34);
  v36 = v171;
  *(v23 + 64) = v171;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438("Adds the music passed as input to your Playing Next queue.", 58);
  v166 = v39;
  v167 = v38;
  v40 = sub_1CA94C438("Adds the music passed as input to your Playing Next queue.", 58);
  v42 = v41;
  v168 = v157;
  MEMORY[0x1EEE9AC00](v40);
  v43 = v157 - v176;
  sub_1CA948D98();
  v44 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v167, v166, v40, v42, 0, 0, v43, v157 - v34);
  *(v23 + 104) = v36;
  *(v23 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v47 = sub_1CA94C1E8();
  v48 = v169;
  v49 = sub_1CA6B3784(v47);
  v50 = v170;
  v170[20] = v49;
  v50[23] = v48;
  v50[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  v164 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  v52 = MEMORY[0x1E69E6370];
  *(v51 + 48) = 1;
  *(v51 + 72) = v52;
  strcpy((v51 + 80), "ParameterKey");
  *(v51 + 93) = 0;
  *(v51 + 94) = -5120;
  *(v51 + 96) = 0x636973754D4657;
  *(v51 + 104) = 0xE700000000000000;
  *(v51 + 120) = MEMORY[0x1E69E6158];
  *(v51 + 128) = 0x6465726975716552;
  *(v51 + 136) = 0xE800000000000000;
  *(v51 + 144) = 1;
  *(v51 + 168) = v52;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v169;
  *(v51 + 192) = &unk_1F4A021B0;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v50[25] = v54;
  v50[28] = v55;
  v50[29] = @"InputPassthrough";
  *(v50 + 240) = 1;
  v50[33] = v52;
  v50[34] = @"Name";
  v56 = @"InputPassthrough";
  v57 = @"Name";
  v58 = sub_1CA94C438("Add to Playing Next (Action Name)", 33);
  v60 = v59;
  v61 = sub_1CA94C438("Add to Playing Next", 19);
  v63 = v62;
  MEMORY[0x1EEE9AC00](v61);
  v64 = v157 - v176;
  sub_1CA948D98();
  v65 = [v173 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v157 - v174;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v58, v60, v61, v63, 0, 0, v64, v66);
  v69 = v170;
  v170[35] = v68;
  v69[38] = v171;
  v69[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v168 = swift_allocObject();
  v162 = xmmword_1CA981360;
  *(v168 + 1) = xmmword_1CA981360;
  v167 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CA981380;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000016;
  *(v70 + 48) = 0x80000001CA99C4A0;
  v71 = MEMORY[0x1E69E6158];
  *(v70 + 64) = MEMORY[0x1E69E6158];
  *(v70 + 72) = @"DefaultValue";
  *(v70 + 80) = 1954047310;
  *(v70 + 88) = 0xE400000000000000;
  *(v70 + 104) = v71;
  *(v70 + 112) = @"DisallowedVariableTypes";
  *(v70 + 120) = &unk_1F4A021F0;
  *(v70 + 144) = v169;
  *(v70 + 152) = @"Items";
  v166 = swift_allocObject();
  *(v166 + 1) = v162;
  *&v162 = @"Class";
  v72 = @"Parameters";
  v73 = @"DefaultValue";
  v74 = @"DisallowedVariableTypes";
  v75 = @"Items";
  v76 = sub_1CA94C438("Next (WFWhenToPlay)", 19);
  v159 = v77;
  v160 = v76;
  v78 = sub_1CA94C438("Next", 4);
  v158 = v79;
  v161 = v157;
  MEMORY[0x1EEE9AC00](v78);
  v80 = v157 - v176;
  sub_1CA948D98();
  v81 = v173;
  v82 = [v173 bundleURL];
  v157[1] = v157;
  MEMORY[0x1EEE9AC00](v82);
  v83 = v174;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v160, v159, v78, v158, 0, 0, v80, v157 - v83);
  v166[4] = v85;
  v86 = sub_1CA94C438("Later (WFWhenToPlay)", 20);
  v159 = v87;
  v160 = v86;
  v88 = sub_1CA94C438("Later", 5);
  v158 = v89;
  v161 = v157;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v157 - v176;
  sub_1CA948D98();
  v91 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v160, v159, v88, v158, 0, 0, v90, v157 - v83);
  v94 = v166;
  v166[5] = v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v70 + 160) = v94;
  *(v70 + 184) = v95;
  *(v70 + 192) = @"Key";
  strcpy((v70 + 200), "WFWhenToPlay");
  *(v70 + 213) = 0;
  *(v70 + 214) = -5120;
  *(v70 + 224) = MEMORY[0x1E69E6158];
  *(v70 + 232) = @"Label";
  v96 = @"Key";
  v97 = @"Label";
  v160 = v96;
  v159 = v97;
  v98 = sub_1CA94C438("Play (WFWhenToPlay)", 19);
  v100 = v99;
  v101 = sub_1CA94C438("Play", 4);
  v103 = v102;
  v166 = v157;
  MEMORY[0x1EEE9AC00](v101);
  v104 = v157 - v176;
  sub_1CA948D98();
  v105 = [v173 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = v157 - v174;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v98, v100, v101, v103, 0, 0, v104, v106);
  *(v70 + 264) = v171;
  *(v70 + 240) = v108;
  _s3__C3KeyVMa_0(0);
  v166 = v109;
  v161 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v110 = sub_1CA94C1E8();
  v111 = sub_1CA2F864C(v110);
  v168[4] = v111;
  v112 = swift_initStackObject();
  *(v112 + 16) = v164;
  *(v112 + 32) = v162;
  *(v112 + 40) = 0xD000000000000019;
  *(v112 + 48) = 0x80000001CA99B030;
  v113 = MEMORY[0x1E69E6158];
  v114 = v160;
  *(v112 + 64) = MEMORY[0x1E69E6158];
  *(v112 + 72) = v114;
  *(v112 + 80) = 0x636973754D4657;
  *(v112 + 88) = 0xE700000000000000;
  v115 = v159;
  *(v112 + 104) = v113;
  *(v112 + 112) = v115;
  v163 = sub_1CA94C438("Music (WFMusic)", 15);
  *&v162 = v116;
  v160 = sub_1CA94C438("Music", 5);
  v118 = v117;
  *&v164 = v157;
  MEMORY[0x1EEE9AC00](v160);
  v119 = v176;
  sub_1CA948D98();
  v120 = v173;
  v121 = [v173 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = v157 - v174;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v112 + 120) = sub_1CA2F9F14(v163, v162, v160, v118, 0, 0, v157 - v119, v122);
  v124 = v171;
  *(v112 + 144) = v171;
  *(v112 + 152) = @"Placeholder";
  v125 = @"Placeholder";
  v163 = sub_1CA94C438("Music (WFMusic)", 15);
  *&v162 = v126;
  v127 = sub_1CA94C438("Music", 5);
  v129 = v128;
  *&v164 = v157;
  MEMORY[0x1EEE9AC00](v127);
  v130 = v157 - v119;
  sub_1CA948D98();
  v131 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = v157 - v174;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134 = sub_1CA2F9F14(v163, v162, v127, v129, 0, 0, v130, v132);
  *(v112 + 184) = v124;
  *(v112 + 160) = v134;
  v135 = sub_1CA94C1E8();
  v136 = sub_1CA2F864C(v135);
  v137 = v168;
  v168[5] = v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v139 = v170;
  v170[40] = v137;
  v139[43] = v138;
  v139[44] = @"ParameterSummary";
  v140 = @"ParameterSummary";
  v141 = sub_1CA94C438("Add ${WFMusic} to ${WFWhenToPlay} of Playing Next (Parameter Summary)", 69);
  v143 = v142;
  v144 = sub_1CA94C438("Add ${WFMusic} to ${WFWhenToPlay} of Playing Next", 49);
  v146 = v145;
  MEMORY[0x1EEE9AC00](v144);
  v147 = v157 - v176;
  sub_1CA948D98();
  v148 = [v173 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = v157 - v174;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v141, v143, v144, v146, 0, 0, v147, v149);
  v152 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v153 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v154 = v170;
  v170[45] = v152;
  v154[48] = v153;
  v154[49] = @"RequiredResources";
  v154[53] = v169;
  v154[50] = &unk_1F4A02220;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v155 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA4F0818(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1CA94C6C8();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1CA986F60)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1CA4F08BC(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_1CA94C6C8();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1CA986F60)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1CA4F0968(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA62787C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA4F22AC(v6);
  *a1 = v2;
  return result;
}

id static SemanticSymbolIndex.index()()
{
  v1 = sub_1CA4F0A3C();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA4F0BAC(v2);
  v4 = v3;
  v5 = objc_allocWithZone(v0);
  v6 = sub_1CA4F107C(v2, v4);

  return v6;
}

id sub_1CA4F0A3C()
{
  v0 = objc_opt_self();
  v1 = sub_1CA948E58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  sub_1CA948D48();
  (*(v2 + 8))(v4, v1);
  v5 = sub_1CA94C368();

  v6 = [v0 baseLanguageFromLanguage_];

  if (!v6)
  {
    sub_1CA94C3A8();
    v6 = sub_1CA94C368();
  }

  v7 = [objc_opt_self() wordEmbeddingForLanguage_];

  return v7;
}

void sub_1CA4F0BAC(void *a1)
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  while (v1 != 3)
  {
    v3 = WFGlyphCharactersInSection();
    sub_1CA4F3484();
    v4 = sub_1CA94C658();

    if (v4 >> 62)
    {
      v5 = sub_1CA94D328();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      v7 = sub_1CA94D328();
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v7 + v5;
    if (__OFADD__(v7, v5))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v53 = v5;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v6)
      {
LABEL_13:
        sub_1CA94D328();
      }

LABEL_14:
      v2 = sub_1CA94D488();
      v9 = v2 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_15;
    }

    if (v6)
    {
      goto LABEL_13;
    }

    v9 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v8 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_14;
    }

LABEL_15:
    ++v1;
    v10 = *(v9 + 16);
    v11 = (*(v9 + 24) >> 1) - v10;
    v12 = v9 + 8 * v10;
    if (v4 >> 62)
    {
      v14 = sub_1CA94D328();
      if (!v14)
      {
        goto LABEL_29;
      }

      v15 = v14;
      v16 = sub_1CA94D328();
      if (v11 < v16)
      {
        goto LABEL_63;
      }

      if (v15 < 1)
      {
        goto LABEL_64;
      }

      v51 = v16;
      v17 = v12 + 32;
      sub_1CA4F34C8();
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
        v19 = sub_1CA276BDC(v54, i, v4);
        v21 = *v20;
        v19(v54, 0);
        *(v17 + 8 * i) = v21;
      }

      v13 = v51;
LABEL_25:

      if (v13 < v53)
      {
        goto LABEL_57;
      }

      if (v13 > 0)
      {
        v22 = *(v9 + 16);
        v23 = __OFADD__(v22, v13);
        v24 = v22 + v13;
        if (v23)
        {
          goto LABEL_61;
        }

        *(v9 + 16) = v24;
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        if (v11 < v13)
        {
          goto LABEL_62;
        }

        swift_arrayInitWithCopy();
        goto LABEL_25;
      }

LABEL_29:

      if (v53 > 0)
      {
        goto LABEL_57;
      }
    }
  }

  v25 = sub_1CA25B410(v2);
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v25 != v26)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1CCAA22D0](v26, v2);
    }

    else
    {
      if (v26 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v28 = *(v2 + 8 * v26 + 32);
    }

    v29 = v28;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_58;
    }

    v30 = [v28 unsignedIntegerValue];

    if (v30 >> 16)
    {
      goto LABEL_60;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E6688();
      v27 = v32;
    }

    v31 = *(v27 + 16);
    if (v31 >= *(v27 + 24) >> 1)
    {
      sub_1CA2E6688();
      v27 = v33;
    }

    *(v27 + 16) = v31 + 1;
    *(v27 + 2 * v31 + 32) = v30;
    ++v26;
  }

  v34 = *(v27 + 16);
  if (v34)
  {
    v35 = (v27 + 32);
    v36 = MEMORY[0x1E69E7CC0];
    do
    {
      v37 = *v35++;
      sub_1CA4F1C54(v37, a1);
      if (v39)
      {
        v42 = v38;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E65A4(0, *(v36 + 16) + 1, 1, v36);
          v36 = v49;
        }

        v47 = *(v36 + 16);
        v46 = *(v36 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1CA2E65A4(v46 > 1, v47 + 1, 1, v36);
          v36 = v50;
        }

        *(v36 + 16) = v47 + 1;
        v48 = v36 + 32 * v47;
        *(v48 + 32) = v42;
        *(v48 + 40) = v43;
        *(v48 + 48) = v44;
        *(v48 + 56) = v45;
      }

      --v34;
    }

    while (v34);
  }

  sub_1CA2E340C();
}

id sub_1CA4F107C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___WFSemanticSymbolSearch_embedding] = a1;
  v6 = objc_allocWithZone(MEMORY[0x1E6977A88]);
  v7 = a1;
  v8 = [v6 initWithUnit_];
  *&v2[OBJC_IVAR___WFSemanticSymbolSearch_tokenizer] = v8;
  *&v2[OBJC_IVAR___WFSemanticSymbolSearch_symbols] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

void SemanticSymbolIndex.search(for:excluding:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __C[2] = *MEMORY[0x1E69E9840];
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v121 = a3;
    __C[0] = a1;
    __C[1] = a2;
    sub_1CA27BAF0();
    v123 = sub_1CA94D198();
    v124 = v5;
    v6 = sub_1CA948868();
    v7 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA948858();
    v10 = sub_1CA94D1A8();
    v12 = v11;
    (*(v7 + 8))(v9, v6);

    v13 = sub_1CA40FF50(v10, v12);

    v18 = *(v13 + 16);
    if (v18)
    {
      __C[0] = v4;
      sub_1CA271524(0, v18, 0, v14, v15, v16, v17);
      v19 = 0;
      v4 = __C[0];
      v20 = (v13 + 56);
      while (v19 < *(v13 + 16))
      {
        v21 = *(v20 - 3);
        v22 = *(v20 - 2);
        v23 = *(v20 - 1);
        v24 = *v20;
        sub_1CA94C218();
        v25 = MEMORY[0x1CCAA1280](v21, v22, v23, v24);
        v27 = v26;

        __C[0] = v4;
        v29 = *(v4 + 16);
        v28 = *(v4 + 24);
        if (v29 >= v28 >> 1)
        {
          v31 = OUTLINED_FUNCTION_0_45(v28);
          sub_1CA271524(v31, v29 + 1, 1, v32, v33, v34, v35);
          v4 = __C[0];
        }

        ++v19;
        *(v4 + 16) = v29 + 1;
        v30 = v4 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v20 += 4;
        if (v18 == v19)
        {
          goto LABEL_10;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_10:

    v36 = *(v4 + 16);
    v37 = *(v122 + OBJC_IVAR___WFSemanticSymbolSearch_embedding);
    v38 = 0;
    v39 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v40 = v4 + 40 + 16 * v38;
    while (v36 != v38)
    {
      if (v38 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      ++v38;
      v41 = v40 + 16;
      sub_1CA94C218();
      v42 = sub_1CA94CB88();

      v40 = v41;
      if (v42)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E6800();
          v39 = v44;
        }

        v43 = *(v39 + 16);
        if (v43 >= *(v39 + 24) >> 1)
        {
          sub_1CA2E6800();
          v39 = v45;
        }

        *(v39 + 16) = v43 + 1;
        *(v39 + 8 * v43 + 32) = v42;
        goto LABEL_11;
      }
    }

    sub_1CA4F1904(v39);
    v47 = v46;

    if (v47)
    {
      sub_1CA94C218();
      v48 = sub_1CA2E34F4();
      v49 = sub_1CA94C218();
      v50 = sub_1CA4F2D04(v49, v48);
      v51 = v50;
      v119 = 0;
      v52 = v50 + 56;
      v53 = 1 << v50[32];
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & *(v50 + 7);
      v56 = (v53 + 63) >> 6;

      v58 = 0;
      v59 = MEMORY[0x1E69E7CC0];
      v122 = v57;
      while (v55)
      {
        v60 = v55;
LABEL_30:
        v55 = (v60 - 1) & v60;
        v62 = *(v47 + 16);
        if (v62)
        {
          v63 = *(v51 + 6) + ((v58 << 11) | (32 * __clz(__rbit64(v60))));
          v64 = *(v63 + 24);
          if (v62 == *(v64 + 16))
          {
            LODWORD(v121) = *(v63 + 16);
            v65 = *(v63 + 8);
            v120 = *v63;
            __C[0] = 0x7FF8000000000000;
            sub_1CA94C218();
            sub_1CA94C218();
            vDSP_dotprD((v47 + 32), 1, (v47 + 32), 1, __C, v62);
            v66 = *__C;
            v67 = *(v64 + 16);
            __C[0] = 0x7FF8000000000000;
            OUTLINED_FUNCTION_1_35((v64 + 32), v68, v69, v70, v71, v67);
            v76 = sqrt(v66 * *__C);
            if (v76 == 0.0)
            {

              v51 = v122;
            }

            else
            {
              v77 = *(v47 + 16);
              if (v77 != *(v64 + 16))
              {
                goto LABEL_69;
              }

              v78 = v76;
              __C[0] = 0x7FF8000000000000;
              OUTLINED_FUNCTION_1_35((v47 + 32), v72, v73, v74, v75, v77);
              v79 = *__C;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51 = v122;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1CA2E6744();
                v59 = v86;
              }

              v81 = v121;
              v82 = v120;
              v83 = *(v59 + 16);
              v84 = v83 + 1;
              if (v83 >= *(v59 + 24) >> 1)
              {
                v118 = v83 + 1;
                sub_1CA2E6744();
                v84 = v118;
                v82 = v120;
                v81 = v121;
                v59 = v87;
              }

              *(v59 + 16) = v84;
              v85 = v59 + 40 * v83;
              *(v85 + 32) = v79 / v78;
              *(v85 + 40) = v82;
              *(v85 + 48) = v65;
              *(v85 + 56) = v81;
              *(v85 + 64) = v64;
            }
          }
        }
      }

      while (1)
      {
        v61 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_64;
        }

        if (v61 >= v56)
        {
          break;
        }

        v60 = *&v52[8 * v61];
        ++v58;
        if (v60)
        {
          v58 = v61;
          goto LABEL_30;
        }
      }

      v88 = 0;
      v89 = *(v59 + 16);
      v90 = MEMORY[0x1E69E7CC0];
LABEL_41:
      v91 = 40 * v88;
      while (v89 != v88)
      {
        if (v88 >= *(v59 + 16))
        {
          goto LABEL_65;
        }

        ++v88;
        v92 = v91 + 40;
        v93 = *(v59 + v91 + 32);
        v91 += 40;
        if (v93 > 0.4)
        {
          v95 = *(v59 + v92);
          v94 = *(v59 + v92 + 8);
          v96 = *(v59 + v92 + 16);
          v97 = *(v59 + v92 + 24);
          sub_1CA94C218();
          sub_1CA94C218();
          v98 = swift_isUniquelyReferenced_nonNull_native();
          __C[0] = v90;
          if ((v98 & 1) == 0)
          {
            sub_1CA2B9004(0, *(v90 + 16) + 1, 1);
            v90 = __C[0];
          }

          v100 = *(v90 + 16);
          v99 = *(v90 + 24);
          if (v100 >= v99 >> 1)
          {
            v102 = OUTLINED_FUNCTION_0_45(v99);
            sub_1CA2B9004(v102, v100 + 1, 1);
            v90 = __C[0];
          }

          *(v90 + 16) = v100 + 1;
          v101 = v90 + 40 * v100;
          *(v101 + 32) = v93;
          *(v101 + 40) = v95;
          *(v101 + 48) = v94;
          *(v101 + 56) = v96;
          *(v101 + 64) = v97;
          goto LABEL_41;
        }
      }

      __C[0] = v90;

      v103 = v119;
      sub_1CA4F0968(__C);
      if (v103)
      {

        __break(1u);
      }

      else
      {

        sub_1CA4F1AB8(6, __C[0]);
        v107 = v106 >> 1;
        v108 = (v106 >> 1) - v105;
        if (__OFSUB__(v106 >> 1, v105))
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v108)
        {
          v109 = v104;
          v110 = v105;
          __C[0] = MEMORY[0x1E69E7CC0];
          sub_1CA2B8FE4(0, v108 & ~(v108 >> 63), 0);
          if (v108 < 0)
          {
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
          }

          v111 = __C[0];
          v112 = (v109 + 40 * v110 + 24);
          do
          {
            if (v110 >= v107)
            {
              goto LABEL_66;
            }

            v113 = *v112;
            __C[0] = v111;
            v115 = *(v111 + 16);
            v114 = *(v111 + 24);
            if (v115 >= v114 >> 1)
            {
              v116 = OUTLINED_FUNCTION_0_45(v114);
              sub_1CA2B8FE4(v116, v115 + 1, 1);
              v111 = __C[0];
            }

            *(v111 + 16) = v115 + 1;
            *(v111 + 2 * v115 + 32) = v113;
            ++v110;
            v112 += 20;
          }

          while (v107 != v110);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_1CA4F1904(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = *(*(a1 + 32) + 16);
    while (v1 != v2)
    {
      v5 = *(v3 + 8 * v2++);
      if (*(v5 + 16) != v4)
      {
        return;
      }
    }

    v6 = sub_1CA4F08BC(v4, 0.0);
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = *(v3 + 8 * v7);
      v10 = *(v6 + 16);
      sub_1CA94C218();
      if (v10)
      {
        v11 = sub_1CA94C6C8();
        *(v11 + 16) = v10;
        v12 = *(v6 + 16);
      }

      else
      {
        v12 = 0;
        v11 = v8;
      }

      if (v12 != v10)
      {
        break;
      }

      if (*(v9 + 16) != v10)
      {
        goto LABEL_16;
      }

      vDSP_vaddD((v6 + 32), 1, (v9 + 32), 1, (v11 + 32), 1, v10);
      v13 = *(v6 + 16);
      if (v10 < v13)
      {
        goto LABEL_17;
      }

      ++v7;
      *(v11 + 16) = v13;

      v6 = v11;
      if (v1 == v7)
      {
        v14 = MEMORY[0x1EEE9AC00](*(v11 + 16));
        sub_1CA4F3234(v14, sub_1CA4F3464);

        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_1CA4F1AB8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_1CA4F33FC(0, result, v2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = sub_1CA6A6B30();

      return v5;
    }
  }

  __break(1u);
  return result;
}

id SemanticSymbolIndex.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SemanticSymbolIndex.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CA4F1C54(unsigned __int16 a1, void *a2)
{
  v3 = WFNameForGlyphCharacter();
  if (v3)
  {
    v4 = v3;
    v52 = a2;
    sub_1CA94C3A8();

    sub_1CA27BAF0();
    sub_1CA94D198();
    v5 = sub_1CA94D248();

    v6 = 0;
    v53 = *(v5 + 16);
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    while (v6 != v53)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      v8 = (v5 + 32 + 32 * v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      ++v6;
      sub_1CA94C218();
      if (sub_1CA94D0F8() != 1)
      {
        v13 = v9;
        while ((v13 ^ v10) >= 0x4000)
        {
          sub_1CA94D108();
          v13 = sub_1CA94D0C8();
          sub_1CA94C218();
          sub_1CA94C2B8();
          v15 = v14;
          swift_bridgeObjectRelease_n();
          if (v15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA2B9024(0, v7[2] + 1, 1);
            }

            v17 = v7[2];
            v16 = v7[3];
            if (v17 >= v16 >> 1)
            {
              sub_1CA2B9024(v16 > 1, v17 + 1, 1);
            }

            v7[2] = v17 + 1;
            v18 = &v7[4 * v17];
            v18[4] = v9;
            v18[5] = v10;
            v18[6] = v11;
            v18[7] = v12;
            goto LABEL_3;
          }
        }
      }
    }

    v23 = v7[2];
    if (v23)
    {
      v54 = MEMORY[0x1E69E7CC0];
      sub_1CA271524(0, v23, 0, v19, v20, v21, v22);
      v24 = v54;
      v25 = v7 + 7;
      do
      {
        v26 = *(v25 - 3);
        v27 = *(v25 - 2);
        v28 = *(v25 - 1);
        v29 = *v25;
        sub_1CA94C218();
        v30 = MEMORY[0x1CCAA1280](v26, v27, v28, v29);
        v32 = v31;

        v38 = *(v54 + 16);
        v37 = *(v54 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1CA271524(v37 > 1, v38 + 1, 1, v33, v34, v35, v36);
        }

        *(v54 + 16) = v38 + 1;
        v39 = v54 + 16 * v38;
        *(v39 + 32) = v30;
        *(v39 + 40) = v32;
        v25 += 4;
        --v23;
      }

      while (v23);
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
    }

    v40 = *(v24 + 16);
    v41 = v52;
    v42 = 0;
    v43 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v44 = v24 + 40 + 16 * v42;
    while (v40 != v42)
    {
      if (v42 >= *(v24 + 16))
      {
        goto LABEL_36;
      }

      ++v42;
      v45 = v44 + 16;
      sub_1CA94C218();
      v46 = sub_1CA94CB88();

      v44 = v45;
      if (v46)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E6800();
          v43 = v48;
        }

        v47 = *(v43 + 16);
        if (v47 >= *(v43 + 24) >> 1)
        {
          sub_1CA2E6800();
          v43 = v49;
        }

        *(v43 + 16) = v47 + 1;
        *(v43 + 8 * v47 + 32) = v46;
        goto LABEL_24;
      }
    }

    sub_1CA4F1904(v43);
    v51 = v50;

    if (!v51)
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1CA4F20AC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (!v12 && (sub_1CA94D7F8() & 1) == 0 || a3 != a7)
  {
    return 0;
  }

  return sub_1CA2B6D50(a4, a8);
}

uint64_t sub_1CA4F2138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CA94C458();
  sub_1CA94D948();

  return sub_1CA2BBC0C(a1, a5);
}

uint64_t sub_1CA4F2190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D948();
  sub_1CA2BBC0C(v6, a4);
  return sub_1CA94D968();
}

uint64_t sub_1CA4F2228(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  sub_1CA94D918();
  sub_1CA4F2138(v7, v2, v3, v5, v4);
  return sub_1CA94D968();
}

uint64_t sub_1CA4F22AC(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444000, &unk_1CA981AC0);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA4F2444(v7, v8, a1, v4);
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
    return sub_1CA4F23B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA4F23B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v9 + 40;
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 + 48);
        v12 = *(v9 + 56);
        v13 = *(v9 + 64);
        result = *(v9 + 72);
        v14 = *(v9 + 16);
        *v10 = *v9;
        *(v9 + 56) = v14;
        v15 = *(v9 + 32);
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 16) = v12;
        *(v9 + 24) = v13;
        *(v9 + 32) = result;
        v9 -= 40;
        *(v10 + 32) = v15;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA4F2444(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v94 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9);
        v11 = (*a3 + 40 * v7);
        v13 = *v11;
        v12 = v11 + 10;
        v14 = v13;
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v12;
          v12 += 5;
          v19 = (v14 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v14 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 40 * v6 - 16;
            v21 = 40 * v7 + 32;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v21);
                v26 = *(v24 + v21 - 32);
                v27 = v24 + v20;
                v28 = *(v25 - 3);
                v29 = *(v25 - 2);
                v30 = *(v25 - 4);
                v31 = *v25;
                v32 = *(v27 + 8);
                v33 = *(v27 - 8);
                *(v25 - 2) = *(v27 - 24);
                *(v25 - 1) = v33;
                *v25 = v32;
                *(v27 - 24) = v26;
                *(v27 - 16) = v28;
                *(v27 - 8) = v29;
                *v27 = v30;
                *(v27 + 8) = v31;
              }

              ++v23;
              v20 -= 40;
              v21 += 40;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
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
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v34 = *a3;
            v35 = *a3 + 40 * v9 - 40;
            v36 = v7 - v9;
            do
            {
              v37 = *(v34 + 40 * v9);
              v38 = v36;
              v39 = v35;
              do
              {
                v40 = v39 + 40;
                if (*v39 >= v37)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_111;
                }

                v41 = *(v39 + 48);
                v42 = *(v39 + 56);
                v43 = *(v39 + 64);
                v44 = *(v39 + 72);
                v45 = *(v39 + 16);
                *v40 = *v39;
                *(v39 + 56) = v45;
                v46 = *(v39 + 32);
                *v39 = v37;
                *(v39 + 8) = v41;
                *(v39 + 16) = v42;
                *(v39 + 24) = v43;
                *(v39 + 32) = v44;
                v39 -= 40;
                *(v40 + 32) = v46;
              }

              while (!__CFADD__(v38++, 1));
              ++v9;
              v35 += 40;
              --v36;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v96 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E49C0(0, v8[2] + 1, 1, v8);
        v8 = v92;
      }

      v49 = v8[2];
      v48 = v8[3];
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        sub_1CA2E49C0(v48 > 1, v49 + 1, 1, v8);
        v8 = v93;
      }

      v8[2] = v50;
      v51 = v8 + 4;
      v52 = &v8[2 * v49 + 4];
      *v52 = v7;
      v52[1] = v96;
      v97 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v8[2 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = v8[4];
            v57 = v8[5];
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_56:
            if (v59)
            {
              goto LABEL_96;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_99;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_104;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v50 < 2)
          {
            goto LABEL_98;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_71:
          if (v74)
          {
            goto LABEL_101;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_103;
          }

          if (v81 < v73)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v53 - 1 >= v50)
          {
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
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
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
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v85 = &v51[2 * v53 - 2];
          v86 = *v85;
          v87 = &v51[2 * v53];
          v88 = v87[1];
          sub_1CA4F2ABC((*a3 + 40 * *v85), (*a3 + 40 * *v87), *a3 + 40 * v88, v97);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v88 < v86)
          {
            goto LABEL_91;
          }

          v89 = v8;
          v90 = v8[2];
          if (v53 > v90)
          {
            goto LABEL_92;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v53 >= v90)
          {
            goto LABEL_93;
          }

          v50 = v90 - 1;
          memmove(&v51[2 * v53], v87 + 2, 16 * (v90 - 1 - v53));
          v89[2] = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          v5 = 0;
          if (!v91)
          {
            goto LABEL_85;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_94;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_95;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_97;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_100;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_105;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v96;
      a4 = v94;
      if (v96 >= v6)
      {
        v99 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1CA4F2984(&v99, *result, a3);
LABEL_89:
}

uint64_t sub_1CA4F2984(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CA627610();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1CA4F2ABC((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1CA4F2ABC(char *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1CA27B60C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 5;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 5;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    *(v7 + 4) = v12[4];
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1CA27B60C(a2, (a3 - a2) / 40, a4);
  v10 = &v4[5 * v9];
LABEL_15:
  v16 = v6 - 5;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*v16 < *(v10 - 5))
    {
      v13 = v5 + 40 == v6;
      v6 -= 5;
      if (!v13)
      {
        v20 = *v16;
        v21 = *(v16 + 1);
        *(v5 + 32) = v16[4];
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v18 = *(v10 - 5);
      v19 = *(v10 - 3);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v18;
      *(v5 + 16) = v19;
    }

    v10 -= 5;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

void *sub_1CA4F2C64(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1CA4F3074(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_1CA4F2D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v37 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);
  v10 = sub_1CA94C218();
  if (v7 > 0xD)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v32 = v3;
    v30 = &v30;
    MEMORY[0x1EEE9AC00](v10);
    v31 = v8;
    v33 = &v30 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1CA5C3FA4(0, v8, v33);
    v34 = v5;
    v35 = 0;
    v11 = 0;
    v13 = *(v5 + 56);
    v5 += 56;
    v12 = v13;
    v14 = 1 << *(v5 - 24);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & v12;
    v8 = (v14 + 63) >> 6;
    v3 = a2 + 56;
LABEL_6:
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      v20 = v17 | (v11 << 6);
      if (*(a2 + 16))
      {
        v21 = *(*(v34 + 48) + 32 * v20 + 16);
        sub_1CA94D918();
        v9 = &v36;
        sub_1CA94D948();
        v22 = sub_1CA94D968();
        v23 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v24 = v22 & v23;
          if (((*(v3 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
          {
            break;
          }

          v22 = v24 + 1;
          if (*(*(a2 + 48) + 2 * v24) == v21)
          {
            goto LABEL_6;
          }
        }
      }

      *(v33 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_21:
        sub_1CA6B0650(v33, v31, v35, v34);
        v27 = v26;
        goto LABEL_22;
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_21;
      }

      v19 = *(v5 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  sub_1CA94C218();
  v27 = sub_1CA4F2C64(v29, v8, v5, a2);

  MEMORY[0x1CCAA4BF0](v29, -1, -1);
LABEL_22:
  swift_bridgeObjectRelease_n();
  return v27;
}

unint64_t sub_1CA4F3020()
{
  result = qword_1EC445E98;
  if (!qword_1EC445E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445E98);
  }

  return result;
}

uint64_t sub_1CA4F3074(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    if (*(a4 + 16))
    {
      v16 = *(*(a3 + 48) + 32 * v15 + 16);
      sub_1CA94D918();
      sub_1CA94D948();
      result = sub_1CA94D968();
      v17 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v18 = result & v17;
        if (((*(v11 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          break;
        }

        result = v18 + 1;
        if (*(*(a4 + 48) + 2 * v18) == v16)
        {
          goto LABEL_5;
        }
      }
    }

    *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v25++, 1))
    {
      __break(1u);
LABEL_20:

      sub_1CA6B0650(v23, a2, v25, a3);
      v21 = v20;

      return v21;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_20;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA4F3234(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1CA94C6C8();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v7[1] = v4;
  v8 = 0;
  v7[0] = v5 + 32;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1CA4F337C(uint64_t a1, uint64_t a2, double a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  if (*(a1 + 16) != v3)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v4[0] = a3;
  if (!*a2)
  {
    goto LABEL_5;
  }

  vDSP_vsdivD((a1 + 32), 1, v4, *a2, 1, v3);
}

uint64_t sub_1CA4F33FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_1CA4F3484()
{
  result = qword_1EDB9F5E0;
  if (!qword_1EDB9F5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB9F5E0);
  }

  return result;
}

unint64_t sub_1CA4F34C8()
{
  result = qword_1EC445EA0;
  if (!qword_1EC445EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC444B70, &unk_1CA989B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445EA0);
  }

  return result;
}

id sub_1CA4F3560()
{
  v118 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("find|detect|people|person|email|e-mail|phone", 44);
  v6 = v5;
  v7 = sub_1CA94C438("find|detect|people|person|email|e-mail|phone", 44);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v123 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v124 = v11;
  v12 = &v111 - v123;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v122 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v121 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v120 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v111 - v120;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v119 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA993920;
  *(inited + 184) = v21;
  *(inited + 192) = @"Description";
  *&v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets contacts from the result of the previous action.", 53);
  v115 = v27;
  v28 = sub_1CA94C438("Gets contacts from the result of the previous action.", 53);
  v30 = v29;
  v116 = &v111;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v111 - v123;
  sub_1CA948D98();
  v32 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v111 - v120;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v115, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v119;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v117;
  *(inited + 200) = sub_1CA6B3784(v36);
  *(inited + 224) = v37;
  *(inited + 232) = @"Input";
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v117 = xmmword_1CA981350;
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
  v40 = v39;
  *(v38 + 184) = 0xE500000000000000;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v116;
  *(v38 + 192) = &unk_1F4A022C8;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v115 = v43;
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"LocallyProcessesData";
  *(inited + 280) = 1;
  *(inited + 304) = v40;
  *(inited + 312) = @"Name";
  v44 = @"LocallyProcessesData";
  v45 = @"Name";
  v46 = sub_1CA94C438("Get Contacts from Input (Action Name)", 37);
  v111 = v47;
  v112 = v46;
  v48 = sub_1CA94C438("Get Contacts from Input", 23);
  v50 = v49;
  v113 = &v111;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v111 - v123;
  sub_1CA948D98();
  v52 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v120;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v112, v111, v48, v50, 0, 0, v51, &v111 - v53);
  v55 = v119;
  *(inited + 344) = v119;
  *(inited + 352) = @"Output";
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  *(v56 + 48) = 1;
  *(v56 + 72) = MEMORY[0x1E69E6370];
  *(v56 + 80) = 0x614E74757074754FLL;
  *(v56 + 88) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438("Contacts (Default Output Name)", 30);
  v112 = v59;
  v113 = v58;
  v111 = sub_1CA94C438("Contacts", 8);
  v61 = v60;
  v114 = &v111;
  MEMORY[0x1EEE9AC00](v111);
  v62 = &v111 - v123;
  sub_1CA948D98();
  v63 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 96) = sub_1CA2F9F14(v113, v112, v111, v61, 0, 0, v62, &v111 - v53);
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x7365707954;
  *(v56 + 168) = v116;
  *(v56 + 136) = 0xE500000000000000;
  *(v56 + 144) = &unk_1F4A022F8;
  v65 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v115;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v116 = swift_allocObject();
  *(v116 + 1) = xmmword_1CA9813B0;
  v115 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = v117;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000019;
  *(v66 + 48) = 0x80000001CA99B030;
  *(v66 + 64) = v65;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0x7475706E494657;
  *(v66 + 88) = 0xE700000000000000;
  *(v66 + 104) = v65;
  *(v66 + 112) = @"Label";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438("Input (WFInput)", 15);
  v113 = v72;
  v114 = v71;
  v73 = sub_1CA94C438("Input", 5);
  v112 = v74;
  *&v117 = &v111;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v123;
  sub_1CA948D98();
  v76 = v122;
  v77 = [v122 bundleURL];
  v111 = &v111;
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v111 - v120;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 120) = sub_1CA2F9F14(v114, v113, v73, v112, 0, 0, &v111 - v75, v78);
  v80 = v119;
  *(v66 + 144) = v119;
  *(v66 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438("Input (WFInput)", 15);
  v113 = v83;
  v114 = v82;
  v112 = sub_1CA94C438("Input", 5);
  v85 = v84;
  *&v117 = &v111;
  MEMORY[0x1EEE9AC00](v112);
  v86 = &v111 - v75;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v111 - v120;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v114, v113, v112, v85, 0, 0, v86, v88);
  *(v66 + 184) = v80;
  *(v66 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = sub_1CA94C1E8();
  v92 = sub_1CA2F864C(v91);
  v93 = v116;
  v116[4] = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v93;
  *(inited + 424) = v94;
  *(inited + 432) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438("Get contacts from ${WFInput} (Parameter Summary)", 48);
  v98 = v97;
  v99 = sub_1CA94C438("Get contacts from ${WFInput}", 28);
  v101 = v100;
  v119 = &v111;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v111 - v123;
  sub_1CA948D98();
  v103 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v111 - v120;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  v107 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v108 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v107;
  *(inited + 464) = v108;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v109 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA4F444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1CA271524(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1CA4FCA34(a1);
    v12 = 0;
    v13 = a1 + 64;
    v35 = v7;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_24;
        }

        v36 = v10;
        v37 = v12;
        v38 = v9;
        v15 = *(*(a1 + 56) + 8 * v11);
        v16 = [v15 identifier];
        v17 = sub_1CA94C3A8();
        v19 = v18;

        v25 = *(v39 + 16);
        v24 = *(v39 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1CA271524(v24 > 1, v25 + 1, 1, v20, v21, v22, v23);
        }

        *(v39 + 16) = v25 + 1;
        v26 = v39 + 16 * v25;
        *(v26 + 32) = v17;
        *(v26 + 40) = v19;
        v27 = 1 << *(a1 + 32);
        if (v11 >= v27)
        {
          goto LABEL_25;
        }

        v13 = a1 + 64;
        v28 = *(a1 + 64 + 8 * v14);
        if ((v28 & (1 << v11)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v38)
        {
          goto LABEL_27;
        }

        v29 = v28 & (-2 << (v11 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v14 << 6;
          v31 = v14 + 1;
          v32 = (a1 + 72 + 8 * v14);
          while (v31 < (v27 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              sub_1CA2974B8(v11, v38, v36 & 1);
              v27 = __clz(__rbit64(v33)) + v30;
              goto LABEL_18;
            }
          }

          sub_1CA2974B8(v11, v38, v36 & 1);
        }

LABEL_18:
        v12 = v37 + 1;
        if (v37 + 1 == v35)
        {
          return;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_1CA4F46A4(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  while (v4 != v3)
  {
    v6 = *(v5 - 1) == 0x797469746E65 && *v5 == 0xE600000000000000;
    if (v6 || (sub_1CA94D7F8() & 1) != 0)
    {
      v7 = v3;
      goto LABEL_11;
    }

    ++v3;
    v5 += 2;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

uint64_t WFEntityUpdatingAction.loadDynamicResult(forEnumeration:searchTerm:)()
{
  OUTLINED_FUNCTION_14();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  sub_1CA94C838();
  v1[43] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v5 = sub_1CA94C7C8();
  v1[44] = v5;
  v1[45] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CA4F484C, v5, v6);
}

uint64_t sub_1CA4F484C()
{
  v1 = [v0[21].receiver parameters];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v2 = sub_1CA94C658();

  v3 = sub_1CA25B410(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      v8 = 0;
      goto LABEL_29;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    v0[23].receiver = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    type metadata accessor for WFUpdatableParameter();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      if (*(v7 + OBJC_IVAR___WFUpdatableParameter_underlyingParameter) == v0[19].super_class)
      {
        break;
      }
    }
  }

  v8 = v6;
  v9 = [v8 key];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_115();

  v10 = sub_1CA323E2C();
  v0[23].super_class = v10;

  if (!v10)
  {
LABEL_28:

LABEL_29:
    v0[28].receiver = v8;
    if (v0[20].super_class)
    {
      v21 = sub_1CA94C368();
    }

    else
    {
      v21 = 0;
    }

    v0[28].super_class = v21;
    receiver = v0[21].receiver;
    super_class = v0[19].super_class;
    v0[1].receiver = v0;
    v0[3].super_class = &v0[18];
    v0[1].super_class = sub_1CA4F521C;
    v24 = swift_continuation_init();
    v0[12].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445EA8, &unk_1CA989B88);
    v0[9].receiver = MEMORY[0x1E69E9820];
    v0[9].super_class = 1107296256;
    v0[10].receiver = sub_1CA4F4758;
    v0[10].super_class = &block_descriptor_17;
    v0[11].receiver = v24;
    v25 = type metadata accessor for WFEntityUpdatingAction();
    v0[17].receiver = receiver;
    v0[17].super_class = v25;
    objc_msgSendSuper2(v0 + 17, sel_loadDynamicResultForEnumeration_searchTerm_completionHandler_, super_class, v21, &v0[9]);
    v26 = v0 + 1;
LABEL_33:

    return MEMORY[0x1EEE6DEC8](v26);
  }

  v48 = v8;
  v50 = v10;
  v11 = [(objc_class *)v10 parameters];
  sub_1CA25B3D0(0, &unk_1EC445EB0, 0x1E69AC680);
  v12 = sub_1CA94C658();

  v13 = sub_1CA25B410(v12);
  for (j = 0; ; ++j)
  {
    if (v13 == j)
    {

      v8 = v48;
      goto LABEL_28;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1CCAA22D0](j, v12);
    }

    else
    {
      if (j >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v15 = *(v12 + 8 * j + 32);
    }

    v16 = v15;
    v0[24].receiver = v15;
    if (__OFADD__(j, 1))
    {
      goto LABEL_49;
    }

    v17 = sub_1CA3F132C(v15, &selRef_name);
    if (v18)
    {
      break;
    }

LABEL_25:
  }

  if (v17 != 0x79747265706F7270 || v18 != 0xE800000000000000)
  {
    v20 = sub_1CA94D7F8();

    if (v20)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

LABEL_37:

  v27 = v0[21].receiver;
  v28 = [objc_allocWithZone(MEMORY[0x1E69ACE78]) init];
  v0[24].super_class = v28;
  v29 = sub_1CA3F132C(v27, &selRef_preferredExtensionBundleIdentifier);
  if (v30)
  {
    sub_1CA4FC878(v29, v30, v28);
  }

  v31 = [objc_opt_self() policyWithActionMetadata:v10 signals:v28];
  v0[25].receiver = v31;
  v0[19].receiver = 0;
  v32 = [v31 connectionWithError_];
  v0[25].super_class = v32;
  v33 = v0[19].receiver;
  if (v32)
  {
    v34 = v32;
    v35 = v0[20].super_class;
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    v36 = v33;
    v37 = sub_1CA94C648();
    v51 = [v31 actionWithParameters_];
    v0[26].receiver = v51;

    if (v35)
    {
      v38 = sub_1CA94C368();
    }

    else
    {
      v38 = 0;
    }

    v49 = v38;
    v0[26].super_class = v38;
    v41 = sub_1CA948E58();
    OUTLINED_FUNCTION_1_0();
    v43 = v42;
    v44 = OUTLINED_FUNCTION_45();
    sub_1CA948DE8();
    sub_1CA948D48();
    (*(v43 + 8))(v44, v41);
    v45 = sub_1CA94C368();
    v0[27].receiver = v45;

    v0[5].receiver = v0;
    v0[7].super_class = &v0[18].super_class;
    v0[5].super_class = sub_1CA4F4FE4;
    v46 = swift_continuation_init();
    v0[16].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445EA8, &unk_1CA989B88);
    v0[13].receiver = MEMORY[0x1E69E9820];
    v0[13].super_class = 1107296256;
    v0[14].receiver = sub_1CA4F4758;
    v0[14].super_class = &block_descriptor_4;
    v0[15].receiver = v46;
    [(objc_class *)v34 fetchOptionsForAction:v51 actionMetadata:v50 parameterMetadata:v16 optionsProviderReference:0 searchTerm:v49 localeIdentifier:v45 completionHandler:&v0[13]];
    v26 = v0 + 5;
    goto LABEL_33;
  }

  v39 = v33;

  sub_1CA948AD8();

  swift_willThrow();
  OUTLINED_FUNCTION_5();

  return v40();
}