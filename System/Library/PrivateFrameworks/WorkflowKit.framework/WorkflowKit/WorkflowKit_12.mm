id sub_1CA3A1C74()
{
  v106 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9AE5E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v108 = sub_1CA94C438("file|files|folder|root", 22);
  v5 = v4;
  v6 = sub_1CA94C438("file|files|folder|root", 22);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v112 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v113 = v10;
  v11 = v102 - v112;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v109 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v110 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v102 - v111;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v108, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v108 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v107 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Gets the common parent directory of the files passed in.", 56);
  *&v104 = v24;
  v25 = sub_1CA94C438("Gets the common parent directory of the files passed in.", 56);
  v27 = v26;
  v105 = v102;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v102 - v112;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v102 - v111;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v104, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v108;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v107;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = 0x80000001CA9AE660;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  v36 = v35;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
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
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v107;
  *(v37 + 192) = &unk_1F49F7BE0;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *&v104 = v44;
  *(inited + 280) = v43;
  *(inited + 304) = v44;
  *(inited + 312) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Get Parent Directory (Action Name)", 34);
  v48 = v47;
  v49 = sub_1CA94C438("Get Parent Directory", 20);
  v51 = v50;
  v103 = v102;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v102 - v112;
  sub_1CA948D98();
  v53 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v102 - v111;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v108;
  *(inited + 352) = @"Output";
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  v58 = MEMORY[0x1E69E6370];
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x7365707954;
  v59 = v107;
  *(v56 + 168) = v107;
  *(v56 + 136) = 0xE500000000000000;
  *(v56 + 144) = &unk_1F49F7C10;
  v60 = @"Output";
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v104;
  *(inited + 392) = @"Parameters";
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v103 = swift_allocObject();
  v104 = xmmword_1CA9813B0;
  *(v103 + 1) = xmmword_1CA9813B0;
  v102[2] = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CA981370;
  *(v61 + 32) = @"AllowsMultipleValues";
  *(v61 + 40) = 1;
  *(v61 + 64) = v58;
  *(v61 + 72) = @"Class";
  *(v61 + 80) = 0xD000000000000015;
  *(v61 + 88) = 0x80000001CA99B1E0;
  *(v61 + 104) = v57;
  *(v61 + 112) = @"FilePickerSupportedTypes";
  *(v61 + 120) = &unk_1F49F7C40;
  *(v61 + 144) = v59;
  *(v61 + 152) = @"Key";
  *(v61 + 160) = 0x7475706E494657;
  *(v61 + 168) = 0xE700000000000000;
  *(v61 + 184) = v57;
  *(v61 + 192) = @"Label";
  v62 = @"Parameters";
  v63 = @"AllowsMultipleValues";
  v64 = @"Class";
  v65 = @"FilePickerSupportedTypes";
  v66 = @"Key";
  v67 = @"Label";
  v68 = sub_1CA94C438("Files (WFInput)", 15);
  v102[0] = v69;
  v70 = sub_1CA94C438("Files", 5);
  v72 = v71;
  v102[1] = v102;
  MEMORY[0x1EEE9AC00](v70);
  v73 = v102 - v112;
  sub_1CA948D98();
  v74 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = v102 - v111;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v68, v102[0], v70, v72, 0, 0, v73, v75);
  *(v61 + 224) = v108;
  *(v61 + 200) = v77;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v78 = sub_1CA94C1E8();
  v79 = sub_1CA2F864C(v78);
  v80 = v103;
  v103[4] = v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v80;
  *(inited + 424) = v81;
  *(inited + 432) = @"ParameterSummary";
  v82 = @"ParameterSummary";
  v83 = sub_1CA94C438("Get parent directory of ${WFInput} (Parameter Summary)", 54);
  v85 = v84;
  v86 = sub_1CA94C438("Get parent directory of ${WFInput}", 34);
  v88 = v87;
  v108 = v102;
  MEMORY[0x1EEE9AC00](v86);
  v89 = v102 - v112;
  sub_1CA948D98();
  v90 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = v102 - v111;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v83, v85, v86, v88, 0, 0, v89, v91);
  v94 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v95 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v94;
  *(inited + 464) = v95;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 480) = &unk_1F49F7C70;
  *(inited + 504) = v107;
  *(inited + 512) = @"RequiredResources";
  v96 = swift_allocObject();
  *(v96 + 16) = v104;
  v114 = 2;
  v115 = 0;
  v97 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v98 = @"RemoteExecuteOnPlatforms";
  v99 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v114);
  *(v96 + 32) = v100;
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 520) = v96;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFWorkflow.actionIdentifiersPublisher.getter()
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B00, &qword_1CA985810);
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B08, &qword_1CA985818);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B10, &unk_1CA985820);
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  swift_getKeyPath();
  sub_1CA948B08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA3A2EB0();
  sub_1CA94A0D8();
  (*(v13 + 8))(v16, v11);
  sub_1CA25C3BC(&qword_1EC444B20, &qword_1EC444B08, &qword_1CA985818, MEMORY[0x1E695BD60]);
  sub_1CA3A2F08();
  sub_1CA94A0F8();
  (*(v7 + 8))(v10, v5);
  sub_1CA25C3BC(&qword_1EC444B30, &qword_1EC444B00, &qword_1CA985810, MEMORY[0x1E695BD38]);
  v17 = v21;
  v18 = sub_1CA94A0C8();
  (*(v1 + 8))(v4, v17);
  return v18;
}

void sub_1CA3A2CF4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 actions];
  sub_1CA3A2F84();
  v4 = sub_1CA94C658();

  *a2 = v4;
}

void sub_1CA3A2D58(unint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v7 = *a1;
  if (*a1 >> 62)
  {
    v8 = sub_1CA94D328();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
LABEL_13:
    *a6 = v9;
    return;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1CA271524(0, v8 & ~(v8 >> 63), 0, a2, a3, a4, a5);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v24 = a6;
    v10 = 0;
    v9 = v25;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1CCAA22D0](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 identifier];
      v14 = sub_1CA94C3A8();
      v16 = v15;

      v22 = *(v25 + 16);
      v21 = *(v25 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1CA271524(v21 > 1, v22 + 1, 1, v17, v18, v19, v20);
      }

      ++v10;
      *(v25 + 16) = v22 + 1;
      v23 = v25 + 16 * v22;
      *(v23 + 32) = v14;
      *(v23 + 40) = v16;
    }

    while (v8 != v10);
    a6 = v24;
    goto LABEL_13;
  }

  __break(1u);
}

unint64_t sub_1CA3A2EB0()
{
  result = qword_1EC444B18;
  if (!qword_1EC444B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444B10, &unk_1CA985820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444B18);
  }

  return result;
}

unint64_t sub_1CA3A2F08()
{
  result = qword_1EC444B28;
  if (!qword_1EC444B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443E20, &qword_1CA986220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444B28);
  }

  return result;
}

unint64_t sub_1CA3A2F84()
{
  result = qword_1EDB9F5D0;
  if (!qword_1EDB9F5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB9F5D0);
  }

  return result;
}

id sub_1CA3A2FFC()
{
  v141 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9AE780;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("create|calendar", 15);
  v7 = v6;
  v8 = sub_1CA94C438("create|calendar", 15);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v147 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v148 = v12;
  v13 = &v133 - v147;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v143 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v145 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v142 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v133 - v142;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v146 = v20;
  v2[10] = v19;
  v2[13] = v20;
  v2[14] = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v144 = v2;
  v2[15] = v22;
  v2[18] = v23;
  v2[19] = @"Description";
  v140 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438("The name of the new calendar", 28);
  v137 = v28;
  v138 = v27;
  v29 = sub_1CA94C438("The name of the new calendar", 28);
  v136 = v30;
  v139 = &v133;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v133 - v147;
  sub_1CA948D98();
  v32 = v143;
  v33 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v142;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v138, v137, v29, v136, 0, 0, v31, &v133 - v34);
  *(v24 + 64) = v146;
  *(v24 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438("Creates a new calendar.", 23);
  v137 = v38;
  v138 = v37;
  v39 = sub_1CA94C438("Creates a new calendar.", 23);
  v41 = v40;
  v139 = &v133;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v133 - v147;
  sub_1CA948D98();
  v43 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v138, v137, v39, v41, 0, 0, v42, &v133 - v34);
  *(v24 + 104) = v146;
  *(v24 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v46 = sub_1CA94C1E8();
  v47 = v140;
  v48 = sub_1CA6B3784(v46);
  v49 = v144;
  v144[20] = v48;
  v49[23] = v47;
  v49[24] = @"InputPassthrough";
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 200) = 0;
  v49[28] = v50;
  v49[29] = @"Name";
  v51 = @"InputPassthrough";
  v52 = @"Name";
  v53 = sub_1CA94C438("Add New Calendar (Action Name)", 30);
  v138 = v54;
  v139 = v53;
  v55 = sub_1CA94C438("Add New Calendar", 16);
  v57 = v56;
  v140 = &v133;
  MEMORY[0x1EEE9AC00](v55);
  v58 = v147;
  sub_1CA948D98();
  v59 = v143;
  v60 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v133 - v142;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v139, v138, v55, v57, 0, 0, &v133 - v58, v61);
  v64 = v144;
  v144[30] = v63;
  v64[33] = v146;
  v64[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_1CA9813C0;
  *(v65 + 32) = 0x656C7069746C754DLL;
  *(v65 + 40) = 0xE800000000000000;
  *(v65 + 48) = 0;
  *(v65 + 72) = MEMORY[0x1E69E6370];
  *(v65 + 80) = 0x614E74757074754FLL;
  *(v65 + 88) = 0xEA0000000000656DLL;
  v66 = @"Output";
  v67 = sub_1CA94C438("New Calendar (Default Output Name)", 34);
  v138 = v68;
  v139 = v67;
  v69 = sub_1CA94C438("New Calendar", 12);
  v71 = v70;
  v140 = &v133;
  MEMORY[0x1EEE9AC00](v69);
  sub_1CA948D98();
  v72 = [v59 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v133 - v142;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 96) = sub_1CA2F9F14(v139, v138, v69, v71, 0, 0, &v133 - v58, v73);
  *(v65 + 120) = v146;
  *(v65 + 128) = 0x7365707954;
  *(v65 + 136) = 0xE500000000000000;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v65 + 168) = v140;
  *(v65 + 144) = &unk_1F49F7CE0;
  v75 = MEMORY[0x1E69E6158];
  v76 = sub_1CA94C1E8();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v78 = v144;
  v144[35] = v76;
  v78[38] = v77;
  v78[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v139 = swift_allocObject();
  *(v139 + 1) = xmmword_1CA9813B0;
  v138 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v79 = swift_initStackObject();
  *(v79 + 16) = xmmword_1CA981370;
  *(v79 + 32) = @"Class";
  *(v79 + 40) = 0xD000000000000014;
  *(v79 + 48) = 0x80000001CA99B500;
  *(v79 + 64) = v75;
  *(v79 + 72) = @"Key";
  strcpy((v79 + 80), "CalendarName");
  *(v79 + 93) = 0;
  *(v79 + 94) = -5120;
  *(v79 + 104) = v75;
  *(v79 + 112) = @"Label";
  v80 = @"Parameters";
  v81 = @"Class";
  v82 = @"Key";
  v83 = @"Label";
  v84 = sub_1CA94C438("Calendar Name (CalendarName)", 28);
  v135 = v85;
  v136 = v84;
  v86 = sub_1CA94C438("Calendar Name", 13);
  v134 = v87;
  v137 = &v133;
  MEMORY[0x1EEE9AC00](v86);
  v88 = v147;
  sub_1CA948D98();
  v89 = v143;
  v90 = [v143 bundleURL];
  v133 = &v133;
  MEMORY[0x1EEE9AC00](v90);
  v91 = v142;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 120) = sub_1CA2F9F14(v136, v135, v86, v134, 0, 0, &v133 - v88, &v133 - v91);
  v93 = v146;
  *(v79 + 144) = v146;
  *(v79 + 152) = @"Placeholder";
  v94 = @"Placeholder";
  v95 = sub_1CA94C438("Calendar Name (CalendarName)", 28);
  v135 = v96;
  v136 = v95;
  v97 = sub_1CA94C438("Calendar Name", 13);
  v134 = v98;
  v137 = &v133;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v133 - v88;
  sub_1CA948D98();
  v100 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 160) = sub_1CA2F9F14(v136, v135, v97, v134, 0, 0, v99, &v133 - v91);
  *(v79 + 184) = v93;
  *(v79 + 192) = @"Prompt";
  v102 = @"Prompt";
  v103 = sub_1CA94C438("What’s the name of the new calendar? (CalendarName)", 53);
  v136 = v104;
  v105 = sub_1CA94C438("What’s the name of the new calendar?", 38);
  v107 = v106;
  v137 = &v133;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v133 - v147;
  sub_1CA948D98();
  v109 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v103, v136, v105, v107, 0, 0, v108, &v133 - v91);
  *(v79 + 224) = v146;
  *(v79 + 200) = v111;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v112 = sub_1CA94C1E8();
  v113 = sub_1CA2F864C(v112);
  v114 = v139;
  v139[4] = v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v116 = v144;
  v144[40] = v114;
  v116[43] = v115;
  v116[44] = @"ParameterSummary";
  v117 = @"ParameterSummary";
  v118 = sub_1CA94C438("Add new calendar ${CalendarName} (Parameter Summary)", 52);
  v120 = v119;
  v121 = sub_1CA94C438("Add new calendar ${CalendarName}", 32);
  v123 = v122;
  v146 = &v133;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v133 - v147;
  sub_1CA948D98();
  v125 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v118, v120, v121, v123, 0, 0, v124, &v133 - v91);
  v128 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v129 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v130 = v144;
  v144[45] = v128;
  v130[48] = v129;
  v130[49] = @"RequiredResources";
  v130[53] = v140;
  v130[50] = &unk_1F49F7D10;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v131 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static OpenWorkflowActionMigration.workflowNeedsMigration(_:fromClientVersion:)(uint64_t a1, uint64_t a2)
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

Swift::Void __swiftcall OpenWorkflowActionMigration.migrateWorkflow()()
{
  v1 = v0;
  v2 = [v0 actions];
  if (v2)
  {
    v3 = v2;
    v68 = sub_1CA948AF8();
    v69 = &v63;
    v67 = *(v68 - 8);
    MEMORY[0x1EEE9AC00](v68);
    v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = v3;
    sub_1CA94CF68();
    v76 = "onDestinationAction";
    v77 = 0x80000001CA9AE970;
    v78 = 0x80000001CA9A2890;
    v75 = 0x80000001CA99E7A0;
    v66 = 0x80000001CA9AE9A0;
    v6 = MEMORY[0x1E69E7CA0];
    v73 = xmmword_1CA981310;
    v74 = v1;
    while (1)
    {
      do
      {
        sub_1CA948AE8();
        if (!v86)
        {
          (*(v67 + 8))(v5, v68);
          [v1 finish];

          return;
        }

        sub_1CA2C0A20(&v85, &v83);
        sub_1CA25B3D0(0, &qword_1EC443AE8, 0x1E695DF90);
      }

      while ((swift_dynamicCast() & 1) == 0);
      v7 = v6;
      v8 = v81;
      v9 = [v1 actionIdentifierKey];
      v10 = sub_1CA94C3A8();
      v12 = v11;

      *&v81 = v10;
      *(&v81 + 1) = v12;
      v13 = [v8 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v13)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_9_0();
      }

      OUTLINED_FUNCTION_2_7();
      v6 = v7;
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_0_23();
      if (!swift_dynamicCast())
      {
        goto LABEL_17;
      }

      if (v79 == 0xD000000000000020 && v77 == *(&v79 + 1))
      {

LABEL_19:
        v17 = [v1 actionIdentifierKey];
        v18 = sub_1CA94C3A8();
        v20 = v19;

        v21 = sub_1CA94C368();
        *&v83 = v18;
        *(&v83 + 1) = v20;
        [v8 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
        v22 = sub_1CA94C1E8();
        *&v81 = 0xD00000000000001ALL;
        *(&v81 + 1) = v78;
        v23 = [v8 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v23)
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_9_0();
        }

        v6 = v7;
        OUTLINED_FUNCTION_2_7();
        if (v24)
        {
          OUTLINED_FUNCTION_0_23();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_27;
          }

          v25 = v79;
          v26 = sub_1CA94C1A8();

          *&v83 = 0xD000000000000013;
          *(&v83 + 1) = v75;
          [v25 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          *&v81 = 0x6C666B726F574657;
          *(&v81 + 1) = 0xEA0000000000776FLL;
          v27 = sub_1CA94D848();
          v71 = v25;
          v28 = [v25 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          v1 = v74;
          if (v28)
          {
            sub_1CA94D258();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_9_0();
          }

          OUTLINED_FUNCTION_2_7();
          if (v32)
          {
            sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
            OUTLINED_FUNCTION_0_23();
            if (swift_dynamicCast())
            {
              v33 = v79;
              v34 = [v79 mutableCopy];
              if (v34)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }
          }

          else
          {
            sub_1CA2C0A74(&v83);
          }

          v33 = 0;
LABEL_35:
          v34 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
LABEL_36:
          v72 = v34;
          if (v33)
          {
            strcpy(&v79, "workflowName");
            BYTE13(v79) = 0;
            HIWORD(v79) = -5120;
            v35 = v33;
            v36 = [v35 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            v37 = v35;

            if (v36)
            {
              sub_1CA94D258();
              swift_unknownObjectRelease();
            }

            else
            {
              v79 = 0u;
              v80 = 0u;
            }

            v6 = v7;
            v81 = v79;
            v82 = v80;
            if (*(&v80 + 1))
            {
              sub_1CA2C0A20(&v81, &v83);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
              inited = swift_initStackObject();
              *(inited + 16) = v73;
              *(inited + 32) = 7955819;
              *(inited + 40) = 0xE300000000000000;
              sub_1CA25B374(&v83, inited + 48);
              sub_1CA94C1E8();
              v39 = sub_1CA94C1A8();

              OUTLINED_FUNCTION_2_24(1819568500);
              [v72 __swift_setObject_forKeyedSubscript_];

              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0(&v83);
              goto LABEL_45;
            }
          }

          else
          {
            OUTLINED_FUNCTION_9_0();
          }

          sub_1CA2C0A74(&v81);
          if (!v33)
          {
            v52 = 0;
            OUTLINED_FUNCTION_9_0();
            v42 = v72;
            goto LABEL_57;
          }

          v37 = v33;
LABEL_45:
          *&v79 = 0xD000000000000012;
          *(&v79 + 1) = v66;
          v40 = v37;
          v41 = [v40 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          v65 = v40;

          if (v41)
          {
            sub_1CA94D258();
            swift_unknownObjectRelease();
          }

          else
          {
            v79 = 0u;
            v80 = 0u;
          }

          v42 = v72;
          v81 = v79;
          v82 = v80;
          if (!*(&v80 + 1))
          {
            v52 = v65;
LABEL_57:
            sub_1CA2C0A74(&v81);
            goto LABEL_63;
          }

          sub_1CA2C0A20(&v81, &v83);
          __swift_project_boxed_opaque_existential_1(&v83, v84);
          v43 = sub_1CA94D7D8();
          *&v81 = 0x696669746E656469;
          *(&v81 + 1) = 0xEA00000000007265;
          [v42 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1CA25B374(&v83, &v81);
          if (swift_dynamicCast())
          {
            v44 = [objc_opt_self() defaultDatabase];
            v45 = sub_1CA94C368();

            v46 = [v44 referenceForWorkflowID_];

            if (!v46)
            {
              goto LABEL_60;
            }

            v47 = objc_opt_self();
            v48 = [v46 icon];
            v49 = [v47 imageWithIcon:v48 size:{31.0, 31.0}];

            if (!v49 || (v50 = sub_1CA3A4EE8(v49), v51 >> 60 == 15))
            {

              goto LABEL_60;
            }

            v53 = v50;
            v54 = v51;
            sub_1CA25B3D0(0, &unk_1EDB9F6C0, 0x1E69AC870);
            sub_1CA25CF98(v53, v54);
            v55 = sub_1CA3A4D4C(v53, v54, 1);
            if (v55)
            {
              v56 = v55;
              v57 = [v55 serializedRepresentation];
              v64 = v54;
              v58 = v57;
              OUTLINED_FUNCTION_2_24(1734438249);
              v59 = sub_1CA94D848();
              v63 = v53;
              [v42 __swift_setObject_forKeyedSubscript_];

              sub_1CA39F318(v63, v64);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
LABEL_60:
              __swift_destroy_boxed_opaque_existential_0(&v83);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0(&v83);
              sub_1CA39F318(v53, v54);
            }

            v6 = v7;
            goto LABEL_62;
          }

          __swift_destroy_boxed_opaque_existential_0(&v83);
LABEL_62:
          v52 = v65;
LABEL_63:
          v60 = sub_1CA94C368();
          v61 = v71;
          [v71 removeObjectForKey_];

          *&v83 = 0x746567726174;
          *(&v83 + 1) = 0xE600000000000000;
          v62 = v42;
          [v61 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1CA2C0A74(&v83);
LABEL_27:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B38, &qword_1CA985868);
          v29 = swift_initStackObject();
          *(v29 + 16) = v73;
          v30 = v75;
          *(v29 + 32) = 0xD000000000000013;
          *(v29 + 40) = v30;
          *(v29 + 48) = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
          sub_1CA94C1E8();
          v31 = sub_1CA94C1A8();

          *&v83 = 0xD00000000000001ALL;
          *(&v83 + 1) = v78;
          [v8 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          v1 = v74;
        }
      }

      else
      {
        v16 = sub_1CA94D7F8();

        if (v16)
        {
          goto LABEL_19;
        }

LABEL_17:
      }
    }

    sub_1CA2C0A74(&v83);
    goto LABEL_17;
  }
}

id sub_1CA3A4D4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1CA948BF8();
  v8 = [v6 initWithData:v7 renderingMode:a3];

  sub_1CA266F2C(a1, a2);
  return v8;
}

id OpenWorkflowActionMigration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OpenWorkflowActionMigration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OpenWorkflowActionMigration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA3A4EE8(void *a1)
{
  v2 = [a1 PNGRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA948C08();

  return v3;
}

id sub_1CA3A4FB0()
{
  v176 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9AE9F0;
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
  v191 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v192 = v11;
  v12 = &v171 - v191;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v190 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v189 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v188 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v171 - v188;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v187 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v185 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Sets the name of the item passed as input.", 42);
  v25 = v24;
  v26 = sub_1CA94C438("Sets the name of the item passed as input.", 42);
  v28 = v27;
  v184 = &v171;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v171 - v191;
  sub_1CA948D98();
  v30 = [v190 bundleURL];
  v186 = inited;
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v171 - v188;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v31);
  *(v20 + 64) = v187;
  *(v20 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v185;
  v36 = sub_1CA6B3784(v34);
  v37 = v186;
  v186[15] = v36;
  v37[18] = v35;
  v37[19] = @"IconColor";
  v37[20] = 2036429383;
  v37[21] = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  v37[23] = MEMORY[0x1E69E6158];
  v37[24] = @"IconSymbol";
  v37[25] = 0xD000000000000016;
  v37[26] = 0x80000001CA9AEA40;
  v37[28] = v38;
  v37[29] = @"Input";
  v39 = v38;
  v40 = v37;
  *&v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA981370;
  *(v41 + 32) = 0xD00000000000001DLL;
  *(v41 + 40) = 0x80000001CA9A3ED0;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  *(v41 + 80) = 0x656C7069746C754DLL;
  *(v41 + 88) = 0xE800000000000000;
  *(v41 + 96) = 0;
  *(v41 + 120) = v42;
  strcpy((v41 + 128), "ParameterKey");
  *(v41 + 141) = 0;
  *(v41 + 142) = -5120;
  *(v41 + 144) = 0x7475706E494657;
  *(v41 + 152) = 0xE700000000000000;
  *(v41 + 168) = v39;
  *(v41 + 176) = 0x6465726975716552;
  *(v41 + 184) = 0xE800000000000000;
  *(v41 + 192) = 1;
  *(v41 + 216) = v42;
  *(v41 + 224) = 0x7365707954;
  *(v41 + 232) = 0xE500000000000000;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 264) = v185;
  *(v41 + 240) = &unk_1F49F7E00;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v184 = v47;
  v40[30] = v46;
  v40[33] = v47;
  v40[34] = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438("Set Name (Action Name)", 22);
  v51 = v50;
  v52 = sub_1CA94C438("Set Name", 8);
  v54 = v53;
  v182 = &v171;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v191;
  sub_1CA948D98();
  v56 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v171 - v188;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, &v171 - v55, v57);
  v60 = v186;
  v186[35] = v59;
  v60[38] = v187;
  v60[39] = @"Output";
  v61 = swift_allocObject();
  v183 = xmmword_1CA981350;
  *(v61 + 16) = xmmword_1CA981350;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x63696C627550;
  *(v61 + 56) = 0xE600000000000000;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  *(v61 + 96) = 0;
  *(v61 + 120) = MEMORY[0x1E69E6370];
  *(v61 + 128) = 0x614E74757074754FLL;
  *(v61 + 136) = 0xEA0000000000656DLL;
  v62 = @"Output";
  v63 = sub_1CA94C438("Renamed Item (Default Output Name)", 34);
  v181 = v64;
  v65 = sub_1CA94C438("Renamed Item", 12);
  v67 = v66;
  v182 = &v171;
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948D98();
  v68 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v171 - v188;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 144) = sub_1CA2F9F14(v63, v181, v65, v67, 0, 0, &v171 - v55, v69);
  *(v61 + 168) = v187;
  *(v61 + 176) = 0x7365707954;
  *(v61 + 216) = v185;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 192) = &unk_1F49F7E30;
  v71 = MEMORY[0x1E69E6158];
  v72 = sub_1CA94C1E8();
  v73 = v186;
  v186[40] = v72;
  v73[43] = v184;
  v73[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_1CA981470;
  v184 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_initStackObject();
  *(v74 + 16) = v183;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000014;
  *(v74 + 48) = 0x80000001CA99B500;
  *(v74 + 64) = v71;
  *(v74 + 72) = @"Key";
  *(v74 + 80) = 0x656D614E4657;
  *(v74 + 88) = 0xE600000000000000;
  *(v74 + 104) = v71;
  *(v74 + 112) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v181 = v78;
  v180 = v79;
  v179 = v80;
  v81 = @"Parameters";
  v177 = sub_1CA94C438("Name (WFName)", 13);
  v175 = v82;
  v83 = sub_1CA94C438("Name", 4);
  v85 = v84;
  v178 = &v171;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v171 - v191;
  sub_1CA948D98();
  v87 = v190;
  v88 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = v188;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v177, v175, v83, v85, 0, 0, v86, &v171 - v89);
  v91 = v187;
  *(v74 + 144) = v187;
  *(v74 + 152) = @"Placeholder";
  v175 = @"Placeholder";
  v177 = sub_1CA94C438("Name (WFName)", 13);
  v174 = v92;
  v93 = sub_1CA94C438("Name", 4);
  v173 = v94;
  v178 = &v171;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v171 - v191;
  sub_1CA948D98();
  v96 = [v87 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v177, v174, v93, v173, 0, 0, v95, &v171 - v89);
  *(v74 + 184) = v91;
  *(v74 + 160) = v98;
  _s3__C3KeyVMa_0(0);
  v178 = v99;
  v177 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v100 = sub_1CA94C1E8();
  v101 = sub_1CA2F864C(v100);
  *(v185 + 32) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = v183;
  *(v102 + 32) = v181;
  *(v102 + 40) = 0xD000000000000011;
  *(v102 + 48) = 0x80000001CA99E620;
  *(v102 + 64) = MEMORY[0x1E69E6158];
  *(v102 + 72) = @"Description";
  v103 = @"Description";
  v104 = sub_1CA94C438("By default, Shortcuts will automatically include a file extension if one isn't specified. Turn this on if you want to create a file with no extension. (WFDontIncludeFileExtension)", 179);
  v172 = v105;
  v173 = v104;
  v106 = sub_1CA94C438("By default, Shortcuts will automatically include a file extension if one isn't specified. Turn this on if you want to create a file with no extension.", 150);
  v108 = v107;
  v174 = &v171;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v171 - v191;
  sub_1CA948D98();
  v110 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v171 - v188;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v102 + 80) = sub_1CA2F9F14(v173, v172, v106, v108, 0, 0, v109, v111);
  v113 = v187;
  v114 = v180;
  *(v102 + 104) = v187;
  *(v102 + 112) = v114;
  *(v102 + 120) = 0xD00000000000001ALL;
  *(v102 + 128) = 0x80000001CA9AEC30;
  v115 = v179;
  *(v102 + 144) = MEMORY[0x1E69E6158];
  *(v102 + 152) = v115;
  v116 = sub_1CA94C438("Don't Include File Extension (WFDontIncludeFileExtension)", 57);
  v172 = v117;
  v173 = v116;
  v118 = sub_1CA94C438("Don't Include File Extension", 28);
  v171 = v119;
  v174 = &v171;
  MEMORY[0x1EEE9AC00](v118);
  v120 = v191;
  sub_1CA948D98();
  v121 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = v188;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v173, v172, v118, v171, 0, 0, &v171 - v120, &v171 - v122);
  *(v102 + 184) = v113;
  *(v102 + 160) = v124;
  v125 = sub_1CA94C1E8();
  v126 = sub_1CA2F864C(v125);
  *(v185 + 40) = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = v183;
  *(v127 + 32) = v181;
  *(v127 + 40) = 0xD000000000000019;
  *(v127 + 48) = 0x80000001CA99B030;
  v128 = MEMORY[0x1E69E6158];
  v129 = v180;
  *(v127 + 64) = MEMORY[0x1E69E6158];
  *(v127 + 72) = v129;
  *(v127 + 80) = 0x7475706E494657;
  *(v127 + 88) = 0xE700000000000000;
  v130 = v179;
  *(v127 + 104) = v128;
  *(v127 + 112) = v130;
  v131 = sub_1CA94C438("Input (WFInput)", 15);
  v181 = v132;
  v182 = v131;
  v133 = sub_1CA94C438("Input", 5);
  v180 = v134;
  *&v183 = &v171;
  MEMORY[0x1EEE9AC00](v133);
  v135 = &v171 - v120;
  sub_1CA948D98();
  v136 = v190;
  v137 = [v190 bundleURL];
  v179 = &v171;
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 120) = sub_1CA2F9F14(v182, v181, v133, v180, 0, 0, v135, &v171 - v122);
  v139 = v187;
  v140 = v175;
  *(v127 + 144) = v187;
  *(v127 + 152) = v140;
  v141 = sub_1CA94C438("Input (WFInput)", 15);
  v181 = v142;
  v182 = v141;
  v143 = sub_1CA94C438("Input", 5);
  v180 = v144;
  *&v183 = &v171;
  MEMORY[0x1EEE9AC00](v143);
  v145 = &v171 - v191;
  sub_1CA948D98();
  v146 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v182, v181, v143, v180, 0, 0, v145, &v171 - v122);
  *(v127 + 184) = v139;
  *(v127 + 160) = v148;
  v149 = sub_1CA94C1E8();
  v150 = sub_1CA2F864C(v149);
  v151 = v185;
  *(v185 + 48) = v150;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v153 = v186;
  v186[45] = v151;
  v153[48] = v152;
  v153[49] = @"ParameterSummary";
  v154 = @"ParameterSummary";
  v155 = sub_1CA94C438("Set name of ${WFInput} to ${WFName} (Parameter Summary)", 55);
  v157 = v156;
  v158 = sub_1CA94C438("Set name of ${WFInput} to ${WFName}", 35);
  v160 = v159;
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v171 - v191;
  sub_1CA948D98();
  v162 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v171 - v188;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v155, v157, v158, v160, 0, 0, v161, v163);
  v166 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v167 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v168 = v186;
  v186[50] = v166;
  v168[53] = v167;
  v168[54] = @"ResidentCompatible";
  v168[58] = MEMORY[0x1E69E6370];
  *(v168 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v169 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3A64B0()
{
  v148 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9AED30;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v152 = sub_1CA94C438("pause|play|song|podcast|ipod|track|music|itunes", 47);
  v5 = v4;
  v6 = sub_1CA94C438("pause|play|song|podcast|ipod|track|music|itunes", 47);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v156 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v157 = v10;
  v11 = &v139 - v156;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v153 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v154 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v155 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v139 - v155;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v152, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v152 = v19;
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
  v23 = sub_1CA94C438("Plays or pauses the currently playing media.", 44);
  v149 = v24;
  v25 = sub_1CA94C438("Plays or pauses the currently playing media.", 44);
  v27 = v26;
  v150 = &v139;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v139 - v156;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v139 - v155;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v149, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v152;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v151;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "playpause.fill");
  *(inited + 215) = -18;
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
  v41 = sub_1CA94C438("Play/Pause (Action Name)", 24);
  v43 = v42;
  v44 = sub_1CA94C438("Play/Pause", 10);
  v46 = v45;
  v151 = &v139;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v139 - v156;
  sub_1CA948D98();
  v48 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v139 - v155;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v152;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v151 = swift_allocObject();
  *(v151 + 1) = xmmword_1CA981360;
  v150 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981370;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD000000000000016;
  *(v51 + 48) = 0x80000001CA99C4A0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DefaultValue";
  *(v51 + 80) = 0x7561502F79616C50;
  *(v51 + 88) = 0xEA00000000006573;
  *(v51 + 104) = v52;
  *(v51 + 112) = @"Items";
  v149 = swift_allocObject();
  *(v149 + 1) = xmmword_1CA981470;
  v53 = @"Class";
  v54 = @"DefaultValue";
  v145 = v53;
  v144 = v54;
  v55 = @"Parameters";
  v56 = @"Items";
  v57 = sub_1CA94C438("Play/Pause (WFPlayPauseBehavior)", 32);
  v142 = v58;
  v143 = v57;
  v59 = sub_1CA94C438("Play/Pause", 10);
  v141 = v60;
  v147 = &v139;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v139 - v156;
  sub_1CA948D98();
  v62 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v139 - v155;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v143, v142, v59, v141, 0, 0, v61, v63);
  v66 = v149;
  v149[4] = v65;
  v67 = sub_1CA94C438("Play (WFPlayPauseBehavior)", 26);
  v141 = v68;
  v142 = v67;
  v69 = sub_1CA94C438("Play", 4);
  v140 = v70;
  v143 = &v139;
  MEMORY[0x1EEE9AC00](v69);
  v147 = inited;
  v71 = v156;
  sub_1CA948D98();
  v72 = v153;
  v73 = [v153 bundleURL];
  v139 = &v139;
  MEMORY[0x1EEE9AC00](v73);
  v74 = v155;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 40) = sub_1CA2F9F14(v142, v141, v69, v140, 0, 0, &v139 - v71, &v139 - v74);
  v76 = sub_1CA94C438("Pause (WFPlayPauseBehavior)", 27);
  v141 = v77;
  v142 = v76;
  v78 = sub_1CA94C438("Pause", 5);
  v140 = v79;
  v143 = &v139;
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948D98();
  v80 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v142, v141, v78, v140, 0, 0, &v139 - v71, &v139 - v74);
  v83 = v149;
  v149[6] = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v51 + 120) = v83;
  *(v51 + 144) = v84;
  *(v51 + 152) = @"Key";
  *(v51 + 160) = 0xD000000000000013;
  *(v51 + 168) = 0x80000001CA9AEE60;
  *(v51 + 184) = MEMORY[0x1E69E6158];
  *(v51 + 192) = @"Label";
  v85 = @"Key";
  v86 = @"Label";
  v140 = v85;
  v141 = v86;
  v87 = sub_1CA94C438("Play/Pause (WFPlayPauseBehavior)", 32);
  v143 = v88;
  v89 = sub_1CA94C438("Play/Pause", 10);
  v91 = v90;
  v149 = &v139;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v139 - v156;
  sub_1CA948D98();
  v93 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v155;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v87, v143, v89, v91, 0, 0, v92, &v139 - v94);
  *(v51 + 224) = v152;
  *(v51 + 200) = v96;
  _s3__C3KeyVMa_0(0);
  v143 = v97;
  v142 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v98 = sub_1CA94C1E8();
  v99 = sub_1CA2F864C(v98);
  v151[4] = v99;
  v100 = swift_initStackObject();
  *(v100 + 16) = xmmword_1CA981380;
  *(v100 + 32) = v145;
  *(v100 + 40) = 0xD00000000000001BLL;
  *(v100 + 48) = 0x80000001CA9A1EB0;
  v101 = MEMORY[0x1E69E6158];
  v102 = v144;
  *(v100 + 64) = MEMORY[0x1E69E6158];
  *(v100 + 72) = v102;
  *(v100 + 80) = 0x6C61636F4CLL;
  *(v100 + 88) = 0xE500000000000000;
  *(v100 + 104) = v101;
  *(v100 + 112) = @"DisallowedVariableTypes";
  v103 = v101;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v149 = v104;
  *(v100 + 120) = &unk_1F49F7E60;
  v105 = v140;
  *(v100 + 144) = v104;
  *(v100 + 152) = v105;
  strcpy((v100 + 160), "WFMediaRoute");
  *(v100 + 173) = 0;
  *(v100 + 174) = -5120;
  v106 = v141;
  *(v100 + 184) = v103;
  *(v100 + 192) = v106;
  v107 = @"DisallowedVariableTypes";
  v108 = sub_1CA94C438("Device (WFMediaRoute)", 21);
  v145 = v109;
  v110 = sub_1CA94C438("Device", 6);
  v112 = v111;
  v146 = &v139;
  MEMORY[0x1EEE9AC00](v110);
  v113 = &v139 - v156;
  sub_1CA948D98();
  v114 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v108, v145, v110, v112, 0, 0, v113, &v139 - v94);
  *(v100 + 224) = v152;
  *(v100 + 200) = v116;
  v117 = sub_1CA94C368();
  *(v100 + 264) = MEMORY[0x1E69E6158];
  *(v100 + 232) = v117;
  *(v100 + 240) = 0x746E696F70646E45;
  *(v100 + 248) = 0xE800000000000000;
  v118 = sub_1CA94C1E8();
  v119 = sub_1CA2F864C(v118);
  v120 = v151;
  v151[5] = v119;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v122 = v147;
  v147[40] = v120;
  v122[43] = v121;
  v122[44] = @"ParameterSummary";
  v123 = @"ParameterSummary";
  v124 = sub_1CA94C438("${WFPlayPauseBehavior} on ${WFMediaRoute} (Parameter Summary)", 61);
  v126 = v125;
  v127 = sub_1CA94C438("${WFPlayPauseBehavior} on ${WFMediaRoute}", 41);
  v129 = v128;
  v152 = &v139;
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v139 - v156;
  sub_1CA948D98();
  v131 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v139 - v155;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134 = sub_1CA2F9F14(v124, v126, v127, v129, 0, 0, v130, v132);
  v135 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v136 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v122[45] = v135;
  v122[48] = v136;
  v122[49] = @"RequiredResources";
  v122[53] = v149;
  v122[50] = &unk_1F49F7E90;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v137 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3A7594()
{
  v230 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9AEF20;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("name|model|screen|dimensions|version|system|os|ios|software|current|brightness|volume|firmware", 94);
  v6 = v5;
  v7 = sub_1CA94C438("name|model|screen|dimensions|version|system|os|ios|software|current|brightness|volume|firmware", 94);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v237 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v238 = v11;
  v12 = v222 - v237;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v235 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v236 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v234 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v222 - v234;
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
  v233 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets information about the current device.", 42);
  v28 = v27;
  v29 = sub_1CA94C438("Gets information about the current device.", 42);
  v31 = v30;
  v229 = v222;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v222 - v237;
  sub_1CA948D98();
  v33 = [v235 bundleURL];
  v232 = inited;
  MEMORY[0x1EEE9AC00](v33);
  v34 = v222 - v234;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v34);
  *(v23 + 64) = v231;
  *(v23 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v233;
  v39 = sub_1CA6B3784(v37);
  v40 = v232;
  v232[20] = v39;
  v40[23] = v38;
  v40[24] = @"IconColor";
  v40[25] = 1702194242;
  v40[26] = 0xE400000000000000;
  v41 = MEMORY[0x1E69E6158];
  v40[28] = MEMORY[0x1E69E6158];
  v40[29] = @"IconSymbol";
  v40[30] = 0x656E6F687069;
  v40[31] = 0xE600000000000000;
  v40[33] = v41;
  v40[34] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v40 + 280) = 0;
  v40[38] = v42;
  v40[39] = @"LocallyProcessesData";
  *(v40 + 320) = 1;
  v40[43] = v42;
  v40[44] = @"Name";
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"InputPassthrough";
  v46 = @"LocallyProcessesData";
  v47 = @"Name";
  v48 = sub_1CA94C438("Get Device Details (Action Name)", 32);
  v228 = v49;
  v229 = v48;
  v50 = sub_1CA94C438("Get Device Details", 18);
  v52 = v51;
  v233 = v222;
  MEMORY[0x1EEE9AC00](v50);
  v53 = v222 - v237;
  sub_1CA948D98();
  v54 = v235;
  v55 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v234;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v58 = sub_1CA2F9F14(v229, v228, v50, v52, 0, 0, v53, v222 - v56);
  v59 = v232;
  v232[45] = v58;
  v60 = v231;
  v59[48] = v231;
  v59[49] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_1CA9813C0;
  *(v61 + 32) = 0x656C7069746C754DLL;
  *(v61 + 40) = 0xE800000000000000;
  *(v61 + 48) = 0;
  *(v61 + 72) = MEMORY[0x1E69E6370];
  *(v61 + 80) = 0x614E74757074754FLL;
  *(v61 + 88) = 0xEA0000000000656DLL;
  v62 = @"Output";
  v63 = sub_1CA94C438("Device Details (Default Output Name)", 36);
  v228 = v64;
  v229 = v63;
  v65 = sub_1CA94C438("Device Details", 14);
  v227 = v66;
  v233 = v222;
  MEMORY[0x1EEE9AC00](v65);
  v67 = v222 - v237;
  sub_1CA948D98();
  v68 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 96) = sub_1CA2F9F14(v229, v228, v65, v227, 0, 0, v67, v222 - v56);
  *(v61 + 120) = v60;
  *(v61 + 128) = 0x7365707954;
  *(v61 + 136) = 0xE500000000000000;
  *(v61 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v61 + 144) = &unk_1F49F7F00;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v232;
  v232[50] = v71;
  v73[53] = v72;
  v73[54] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v229 = swift_allocObject();
  *(v229 + 1) = xmmword_1CA9813B0;
  v228 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  v227 = v74;
  *(v74 + 16) = xmmword_1CA981370;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000016;
  *(v74 + 48) = 0x80000001CA99C4A0;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"DefaultValue";
  *(v74 + 80) = 0x4E20656369766544;
  *(v74 + 88) = 0xEB00000000656D61;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Items";
  v233 = swift_allocObject();
  *(v233 + 1) = xmmword_1CA9858B0;
  v75 = @"Parameters";
  v76 = @"Class";
  v77 = @"DefaultValue";
  v78 = @"Items";
  v79 = sub_1CA94C438("Device Name (WFDeviceDetail)", 28);
  v224 = v80;
  v225 = v79;
  v81 = sub_1CA94C438("Device Name", 11);
  v223 = v82;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v237;
  sub_1CA948D98();
  v84 = v235;
  v85 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = v222 - v234;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v225, v224, v81, v223, 0, 0, v222 - v83, v86);
  v89 = v233;
  v233[4] = v88;
  v90 = sub_1CA94C438("Device Hostname (WFDeviceDetail)", 32);
  v224 = v91;
  v225 = v90;
  v223 = sub_1CA94C438("Device Hostname", 15);
  v93 = v92;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v223);
  sub_1CA948D98();
  v94 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = v234;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89[5] = sub_1CA2F9F14(v225, v224, v223, v93, 0, 0, v222 - v83, v222 - v95);
  v97 = sub_1CA94C438("Device Model (WFDeviceDetail)", 29);
  v224 = v98;
  v225 = v97;
  v223 = sub_1CA94C438("Device Model", 12);
  v100 = v99;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v223);
  v101 = v237;
  sub_1CA948D98();
  v102 = v235;
  v103 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v225, v224, v223, v100, 0, 0, v222 - v101, v222 - v95);
  v106 = v233;
  v233[6] = v105;
  v107 = sub_1CA94C438("Device Is Watch (WFDeviceDetail)", 32);
  v224 = v108;
  v225 = v107;
  v109 = sub_1CA94C438("Device Is Watch", 15);
  v223 = v110;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948D98();
  v111 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = v234;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106[7] = sub_1CA2F9F14(v225, v224, v109, v223, 0, 0, v222 - v101, v222 - v112);
  v114 = sub_1CA94C438("System Version (WFDeviceDetail)", 31);
  v224 = v115;
  v225 = v114;
  v116 = sub_1CA94C438("System Version", 14);
  v223 = v117;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v237;
  sub_1CA948D98();
  v119 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v225, v224, v116, v223, 0, 0, v222 - v118, v222 - v112);
  v122 = v233;
  v233[8] = v121;
  v123 = sub_1CA94C438("System Build Number (WFDeviceDetail)", 36);
  v224 = v124;
  v225 = v123;
  v125 = sub_1CA94C438("System Build Number", 19);
  v223 = v126;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v125);
  v127 = v222 - v118;
  sub_1CA948D98();
  v128 = v235;
  v129 = [v235 bundleURL];
  v222[1] = v222;
  MEMORY[0x1EEE9AC00](v129);
  v130 = v234;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122[9] = sub_1CA2F9F14(v225, v224, v125, v223, 0, 0, v127, v222 - v130);
  v132 = sub_1CA94C438("Screen Width (WFDeviceDetail)", 29);
  v224 = v133;
  v225 = v132;
  v134 = sub_1CA94C438("Screen Width", 12);
  v223 = v135;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v237;
  sub_1CA948D98();
  v137 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139 = sub_1CA2F9F14(v225, v224, v134, v223, 0, 0, v222 - v136, v222 - v130);
  v140 = v233;
  v233[10] = v139;
  v141 = sub_1CA94C438("Screen Height (WFDeviceDetail)", 30);
  v224 = v142;
  v225 = v141;
  v223 = sub_1CA94C438("Screen Height", 13);
  v144 = v143;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v223);
  v145 = v222 - v136;
  sub_1CA948D98();
  v146 = v128;
  v147 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140[11] = sub_1CA2F9F14(v225, v224, v223, v144, 0, 0, v145, v222 - v130);
  v149 = sub_1CA94C438("Current Volume (WFDeviceDetail)", 31);
  v224 = v150;
  v225 = v149;
  v151 = sub_1CA94C438("Current Volume", 14);
  v223 = v152;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v151);
  v153 = v237;
  sub_1CA948D98();
  v154 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156 = sub_1CA2F9F14(v225, v224, v151, v223, 0, 0, v222 - v153, v222 - v130);
  v157 = v233;
  v233[12] = v156;
  v158 = sub_1CA94C438("Current Brightness (WFDeviceDetail)", 35);
  v224 = v159;
  v225 = v158;
  v160 = sub_1CA94C438("Current Brightness", 18);
  v223 = v161;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v160);
  v162 = v222 - v153;
  sub_1CA948D98();
  v163 = v235;
  v164 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157[13] = sub_1CA2F9F14(v225, v224, v160, v223, 0, 0, v162, v222 - v130);
  v166 = sub_1CA94C438("Current Appearance (WFDeviceDetail)", 35);
  v224 = v167;
  v225 = v166;
  v168 = sub_1CA94C438("Current Appearance", 18);
  v223 = v169;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v168);
  v170 = v222 - v237;
  sub_1CA948D98();
  v171 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  v172 = v234;
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174 = sub_1CA2F9F14(v225, v224, v168, v223, 0, 0, v170, v222 - v172);
  v233[14] = v174;
  v175 = sub_1CA94C438("Device Is Locked (WFDeviceDetail)", 33);
  v224 = v176;
  v225 = v175;
  v223 = sub_1CA94C438("Device Is Locked", 16);
  v178 = v177;
  v226 = v222;
  MEMORY[0x1EEE9AC00](v223);
  v179 = v237;
  sub_1CA948D98();
  v180 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182 = sub_1CA2F9F14(v225, v224, v223, v178, 0, 0, v222 - v179, v222 - v172);
  v183 = v233;
  v233[15] = v182;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v185 = v227;
  *(v227 + 120) = v183;
  *(v185 + 144) = v184;
  *(v185 + 152) = @"Key";
  strcpy((v185 + 160), "WFDeviceDetail");
  *(v185 + 175) = -18;
  *(v185 + 184) = MEMORY[0x1E69E6158];
  *(v185 + 192) = @"Label";
  v186 = @"Key";
  v187 = @"Label";
  v188 = sub_1CA94C438("Get (WFDeviceDetail)", 20);
  v226 = v189;
  v190 = sub_1CA94C438("Get", 3);
  v192 = v191;
  v233 = v222;
  MEMORY[0x1EEE9AC00](v190);
  v193 = v222 - v179;
  sub_1CA948D98();
  v194 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = v222 - v234;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v188, v226, v190, v192, 0, 0, v193, v195);
  *(v185 + 224) = v231;
  *(v185 + 200) = v197;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v198 = sub_1CA94C1E8();
  v199 = sub_1CA2F864C(v198);
  v200 = v229;
  v229[4] = v199;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v202 = v232;
  v232[55] = v200;
  v202[58] = v201;
  v202[59] = @"ParameterSummary";
  v203 = @"ParameterSummary";
  v204 = sub_1CA94C438("Get the ${WFDeviceDetail} (Parameter Summary)", 45);
  v206 = v205;
  v207 = sub_1CA94C438("Get the ${WFDeviceDetail}", 25);
  v209 = v208;
  MEMORY[0x1EEE9AC00](v207);
  v210 = v222 - v237;
  sub_1CA948D98();
  v211 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  v212 = v222 - v234;
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v214 = sub_1CA2F9F14(v204, v206, v207, v209, 0, 0, v210, v212);
  v215 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v216 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v217 = v232;
  v232[60] = v215;
  v217[63] = v216;
  v217[64] = @"ResidentCompatible";
  v218 = MEMORY[0x1E69E6370];
  v217[68] = MEMORY[0x1E69E6370];
  *(v217 + 520) = 1;
  v217[69] = @"SuggestedAsInitialAction";
  v217[73] = v218;
  *(v217 + 560) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v219 = @"ResidentCompatible";
  v220 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3A8F40()
{
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001CA9A8AF0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x3737343932363431;
  *(inited + 56) = 0xEA00000000003235;
  *(inited + 72) = v1;
  *(inited + 80) = 1701667150;
  *(inited + 88) = 0xE400000000000000;
  v2 = sub_1CA94C438("Shortcuts (App Name)", 20, v22[0]);
  v4 = v3;
  v5 = sub_1CA94C438("Shortcuts", 9);
  v7 = v6;
  v8 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v11 = [qword_1EDB9F690 bundleURL];
  v12 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v15 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v16 = sub_1CA2F9F14(v2, v4, v5, v7, 0, 0, v10, v14);
  v17 = sub_1CA344264();
  *(inited + 96) = v16;
  *(inited + 120) = v17;
  *(inited + 128) = 0x6D656863534C5255;
  *(inited + 136) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1CA981310;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA97EDF0;
  strcpy((v19 + 32), "Capabilities");
  *(v19 + 45) = 0;
  *(v19 + 46) = -5120;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v19 + 48) = &unk_1F49F7F40;
  *(v19 + 72) = v20;
  *(v19 + 80) = 0x656D65686353;
  *(v19 + 120) = MEMORY[0x1E69E6158];
  *(v19 + 88) = 0xE600000000000000;
  *(v19 + 96) = 0xD000000000000014;
  *(v19 + 104) = 0x80000001CA9AF3D0;
  *(v18 + 32) = sub_1CA94C1E8();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(inited + 144) = v18;
  return sub_1CA94C1E8();
}

id sub_1CA3A9320()
{
  v118 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9AF400;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("URL|web|later|save|reading|list", 31);
  v6 = v5;
  v7 = sub_1CA94C438("URL|web|later|save|reading|list", 31);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v123 = v11;
  v124 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v109 - v124;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v121 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v119 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v120 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v109 - v120;
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
  v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Adds URLs passed into the action to your reading list.", 54);
  v115 = v27;
  v28 = sub_1CA94C438("Adds URLs passed into the action to your reading list.", 54);
  v30 = v29;
  v116 = v109;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v109 - v124;
  sub_1CA948D98();
  v32 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v109 - v120;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v115, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v122;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v117;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
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
  *(v38 + 96) = 0x4C52554657;
  *(v38 + 104) = 0xE500000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  v40 = v39;
  *(v38 + 184) = 0xE500000000000000;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v117;
  *(v38 + 192) = &unk_1F49F7FB0;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v42;
  *(inited + 224) = v43;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v40;
  *(inited + 272) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438("Add to Reading List (Action Name)", 33);
  v48 = v47;
  v49 = sub_1CA94C438("Add to Reading List", 19);
  v51 = v50;
  v116 = v109;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v109 - v124;
  sub_1CA948D98();
  v53 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v109 - v120;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v114 = @"Parameters";
  *(inited + 304) = v122;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v116 = swift_allocObject();
  *(v116 + 1) = xmmword_1CA9813B0;
  v115 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA9813E0;
  *(v56 + 32) = @"AllowsMultipleValues";
  *(v56 + 40) = 1;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 64) = MEMORY[0x1E69E6370];
  *(v56 + 72) = @"AutocapitalizationType";
  *(v56 + 80) = 1701736270;
  *(v56 + 88) = 0xE400000000000000;
  v58 = MEMORY[0x1E69E6158];
  *(v56 + 104) = MEMORY[0x1E69E6158];
  *(v56 + 112) = @"Class";
  *(v56 + 120) = 0xD000000000000014;
  *(v56 + 128) = 0x80000001CA99B500;
  *(v56 + 144) = v58;
  *(v56 + 152) = @"DisableAutocorrection";
  *(v56 + 160) = 1;
  *(v56 + 184) = v57;
  *(v56 + 192) = @"Key";
  *(v56 + 200) = 0x4C52554657;
  *(v56 + 208) = 0xE500000000000000;
  *(v56 + 224) = v58;
  *(v56 + 232) = @"KeyboardType";
  *(v56 + 240) = 5001813;
  *(v56 + 248) = 0xE300000000000000;
  *(v56 + 264) = v58;
  *(v56 + 272) = @"Label";
  v59 = v114;
  v60 = @"AllowsMultipleValues";
  v61 = @"AutocapitalizationType";
  v62 = @"Class";
  v63 = @"DisableAutocorrection";
  v64 = @"Key";
  v65 = @"KeyboardType";
  v66 = @"Label";
  v67 = sub_1CA94C438("URL (WFURL)", 11);
  v111 = v68;
  v112 = v67;
  v69 = sub_1CA94C438("URL", 3);
  v110 = v70;
  v113 = v109;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v109 - v124;
  sub_1CA948D98();
  v72 = v121;
  v73 = [v121 bundleURL];
  v109[1] = v109;
  MEMORY[0x1EEE9AC00](v73);
  v114 = inited;
  v74 = v120;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 280) = sub_1CA2F9F14(v112, v111, v69, v110, 0, 0, v71, v109 - v74);
  *(v56 + 304) = v122;
  *(v56 + 312) = @"Placeholder";
  v76 = @"Placeholder";
  v77 = sub_1CA94C438("URL (WFURL)", 11);
  v111 = v78;
  v112 = v77;
  v79 = sub_1CA94C438("URL", 3);
  v81 = v80;
  v113 = v109;
  MEMORY[0x1EEE9AC00](v79);
  v82 = v109 - v124;
  sub_1CA948D98();
  v83 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 320) = sub_1CA2F9F14(v112, v111, v79, v81, 0, 0, v82, v109 - v74);
  *(v56 + 344) = v122;
  *(v56 + 352) = @"TextContentType";
  *(v56 + 384) = MEMORY[0x1E69E6158];
  *(v56 + 360) = 5001813;
  *(v56 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v85 = @"TextContentType";
  v86 = sub_1CA94C1E8();
  v87 = sub_1CA2F864C(v86);
  v88 = v116;
  v116[4] = v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v90 = v114;
  v114[10].isa = v88;
  v90[10].length = v89;
  v90[11].isa = @"ParameterSummary";
  v91 = @"ParameterSummary";
  v92 = sub_1CA94C438("Add ${WFURL} to Reading List (Parameter Summary)", 48);
  v94 = v93;
  v95 = sub_1CA94C438("Add ${WFURL} to Reading List", 28);
  v97 = v96;
  v122 = v109;
  MEMORY[0x1EEE9AC00](v95);
  v98 = v109 - v124;
  sub_1CA948D98();
  v99 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v109 - v120;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v92, v94, v95, v97, 0, 0, v98, v100);
  v103 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v104 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v90[11].info = v103;
  v90[12].isa = v104;
  v90[12].info = @"RemoteExecuteOnPlatforms";
  v90[12].data = &unk_1F49F7FE0;
  v105 = v117;
  v90[13].info = v117;
  v90[13].data = @"RequiredResources";
  v90[14].data = v105;
  v90[13].length = &unk_1F49F8010;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v106 = @"RemoteExecuteOnPlatforms";
  v107 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id TableTemplateValue<>.propertyQuery(metadata:actionIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + qword_1EC444E18);
  v18 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v7 = sub_1CA25B410(v6);
  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1CCAA22D0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v13 = MEMORY[0x1CCAA22D0](0, v4);
      goto LABEL_18;
    }

    if (a3)
    {
      v4 = sub_1CA94C368();
    }

    else
    {
      v4 = 0;
    }

    v12 = WFLNPropertyQueryForRowTemplateValue(v10, a1, v4);

    ++v8;
    if (v12)
    {
      MEMORY[0x1CCAA1490]();
      v4 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v18 = v20;
      v8 = v11;
    }
  }

  v4 = v18;
  if (sub_1CA25B410(v18) == 1)
  {
    sub_1CA275D70(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_25;
    }

    v13 = *(v18 + 32);
LABEL_18:
    v14 = v13;

    return v14;
  }

  v16 = *(v17 + qword_1EC444E10);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1CA25B3D0(0, &qword_1EC444668, 0x1E69AC770);
      return sub_1CA33A808(v18);
    }

    else
    {
      type metadata accessor for WFTableTemplateCompoundType(0);
      result = sub_1CA94D838();
      __break(1u);
    }
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC444668, 0x1E69AC770);
    return sub_1CA3AAA50(v18);
  }

  return result;
}

id TableTemplateValue<>.spotlightQuery(actionIdentifier:metadata:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = sub_1CA94C3A8();
  v9 = v8;
  v10 = [a3 identifier];
  v11 = sub_1CA94C3A8();
  v13 = v12;

  Value = type metadata accessor for WFSpotlightQueryValue();
  v15 = objc_allocWithZone(Value);
  v16 = &v15[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
  *v16 = v11;
  v16[1] = v13;
  v40.receiver = v15;
  v40.super_class = Value;
  v17 = objc_msgSendSuper2(&v40, sel_init);
  v18 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryCondition());
  v19 = v7;
  v20 = v18;
  v21 = sub_1CA44123C(v19, v9, 4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CA9813B0;
  v34 = v22;
  *(v22 + 32) = v21;
  v36 = v4;
  v23 = *(v4 + qword_1EC444E18);
  v37 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v24 = sub_1CA25B410(v23);
  v35 = v21;
  v25 = 0;
  while (1)
  {
    if (v24 == v25)
    {
      v39 = v34;
      sub_1CA2B7C54(v37);
      v29 = v39;
      v20 = *(v36 + qword_1EC444E10);
      if (v20)
      {
        if (v20 != 1)
        {
          goto LABEL_19;
        }

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryBuilder());
      v32 = sub_1CA440B68(v30, v29);

      return v32;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1CCAA22D0](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v20 = v26;
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    v28 = sub_1CA3AAAD4(a1, a2, a3);

    ++v25;
    if (v28)
    {
      MEMORY[0x1CCAA1490]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      v20 = &v39;
      sub_1CA94C6E8();
      v37 = v39;
      v25 = v27;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  type metadata accessor for WFTableTemplateCompoundType(0);
  v39 = v20;
  result = sub_1CA94D838();
  __break(1u);
  return result;
}

id TableTemplateValue<>.contentPredicate.getter()
{
  v1 = *(v0 + qword_1EC444E18);
  v2 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v3 = sub_1CA25B410(v1);
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v6 = MEMORY[0x1CCAA22D0](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if ([v6 removable])
    {
    }

    else
    {
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      v0 = &v39;
      sub_1CA94D4E8();
    }

    ++v4;
  }

  v8 = v39;
  v39 = v2;
  v9 = sub_1CA25B410(v1);
  for (i = 0; v9 != i; ++i)
  {
    if (v5)
    {
      v11 = MEMORY[0x1CCAA22D0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v11 = *(v1 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      goto LABEL_48;
    }

    if ([v11 removable])
    {
      sub_1CA94D4D8();
      OUTLINED_FUNCTION_0_24();
      sub_1CA94D518();
      OUTLINED_FUNCTION_0_24();
      sub_1CA94D528();
      v0 = &v39;
      sub_1CA94D4E8();
    }

    else
    {
    }
  }

  v13 = v39;
  v14 = sub_1CA25B410(v8);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = v14;
    v39 = MEMORY[0x1E69E7CC0];
    v0 = &v39;
    sub_1CA94D508();
    if (v16 < 0)
    {
      goto LABEL_50;
    }

    v17 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCAA22D0](v17, v8);
      }

      else
      {
        v18 = *(v8 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = WFContentPredicateForRowTemplateValue(v18);

      sub_1CA94D4D8();
      OUTLINED_FUNCTION_0_24();
      sub_1CA94D518();
      OUTLINED_FUNCTION_0_24();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    while (v16 != v17);
    v15 = v39;
  }

  v21 = sub_1CA25B410(v13);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v23 = v21;
    v39 = MEMORY[0x1E69E7CC0];
    v0 = &v39;
    sub_1CA94D508();
    if (v23 < 0)
    {
      goto LABEL_51;
    }

    v24 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1CCAA22D0](v24, v13);
      }

      else
      {
        v25 = *(v13 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      v27 = WFContentPredicateForRowTemplateValue(v25);

      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    while (v23 != v24);
    v22 = v39;
  }

  v0 = *(v38 + qword_1EC444E10);
  if (!v0)
  {
    v28 = objc_opt_self();
    v29 = sub_1CA3AC36C(v22, v28, &selRef_orPredicateWithSubpredicates_);
    if (v29)
    {
LABEL_44:
      v0 = v29;
      v31 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CA9813B0;
      *(inited + 32) = v0;
      v39 = v15;
      v33 = v0;
      sub_1CA94C218();
      v34 = OUTLINED_FUNCTION_0_24();
      sub_1CA2B7C80(v34);
      v35 = sub_1CA3AC2E8(v39, v31);
      if (v35)
      {
        v36 = v35;

        return v36;
      }

      goto LABEL_52;
    }

    __break(1u);
  }

  if (v0 != 1)
  {
    goto LABEL_54;
  }

  v30 = objc_opt_self();
  v29 = sub_1CA3AC36C(v22, v30, &selRef_andPredicateWithSubpredicates_);
  if (v29)
  {
    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  type metadata accessor for WFTableTemplateCompoundType(0);
  v39 = v0;
  result = sub_1CA94D838();
  __break(1u);
  return result;
}

id sub_1CA3AAA50(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EC444678, 0x1E69AC760);
  v1 = sub_1CA94C648();

  v2 = [swift_getObjCClassFromMetadata() orComparisons_];

  return v2;
}

id sub_1CA3AAAD4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1CA36D2C4(v3, &selRef_contentPropertyName);
  if (!v7)
  {
    return 0;
  }

  if (![v3 contentItemClass])
  {
LABEL_31:

    return 0;
  }

  swift_getObjCClassMetadata();
  v8 = sub_1CA94C368();
  v9 = [swift_getObjCClassFromMetadata() propertyForName_];

  if (!v9)
  {
    goto LABEL_127;
  }

  v10 = [v9 userInfo];
  if (!v10)
  {
LABEL_30:

    goto LABEL_31;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    goto LABEL_9;
  }

  if ([v12 objectForKey_])
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v152 = 0u;
    v153 = 0u;
  }

  v154[0] = v152;
  v154[1] = v153;
  if (!*(&v153 + 1))
  {
    swift_unknownObjectRelease();

    sub_1CA2C0A74(v154);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  v145 = v150;
  if (!sub_1CA94CD98())
  {

    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v143 = a2;
  v146 = v151;
  v141 = v4;
  v142 = v11;
  v144 = v9;
  v140 = [swift_getObjCClassFromMetadata() tableTemplateSubjectType];
  v13 = [a3 properties];
  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  v14 = sub_1CA94C658();

  v15 = sub_1CA25B410(v14);
  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      v15 = 0;
      goto LABEL_36;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1CCAA22D0](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    v18 = v17;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v19 = sub_1CA52A3C0(v17);
    if (!v20)
    {
      goto LABEL_26;
    }

    if (v19 == v145 && v20 == v146)
    {

LABEL_42:

      v15 = v18;
      v31 = sub_1CA3AC3E8(v15, &selRef_spotlightAttributeKey);
      i = v144;
      if (v32 || (v15 = v15, v31 = sub_1CA3AC3E8(v15, &selRef_spotlightCustomAttributeKey), v32))
      {
        v28 = v31;
        v30 = v32;
LABEL_45:
        v33 = [i propertyClasses];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
        v34 = sub_1CA94C658();

        switch(v140)
        {
          case 0uLL:
            v54 = [v141 &selRef_componentsWithString_];
            if ((v54 - 100) < 2)
            {
              goto LABEL_64;
            }

            v145 = v28;
            if ((v54 - 4) > 1)
            {
              goto LABEL_149;
            }

            v34 = v141;
            v74 = [v141 enumeration];
            if (!v74)
            {
              goto LABEL_90;
            }

            v75 = v74;
            objc_opt_self();
            v76 = swift_dynamicCastObjCClass();
            if (!v76 || (v77 = v76, ![i hasPossibleValues]))
            {
              *&v152 = v75;
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B68, &unk_1CA9858E0);
              if (swift_dynamicCast())
              {
                if ([i hasPossibleValues])
                {
                  Value = type metadata accessor for WFSpotlightQueryValue();
                  v100 = objc_allocWithZone(Value);
                  *&v100[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue] = v154[0];
                  v148.receiver = v100;
                  v148.super_class = Value;
                  v101 = objc_msgSendSuper2(&v148, sel_init);
                  swift_unknownObjectRelease();
                  v38 = v101;
                  swift_unknownObjectRelease();
                  goto LABEL_119;
                }

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
              }

              goto LABEL_9;
            }

            v78 = [v77 value];
            sub_1CA94D258();
            swift_unknownObjectRelease();
            if (swift_dynamicCast())
            {
              v79 = type metadata accessor for WFSpotlightQueryValue();
              v80 = objc_allocWithZone(v79);
              *&v80[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue] = v152;
              v147.receiver = v80;
              v147.super_class = v79;
              v81 = objc_msgSendSuper2(&v147, sel_init);
              swift_unknownObjectRelease();
              v38 = v81;
              __swift_destroy_boxed_opaque_existential_0(v154);
              goto LABEL_119;
            }

            if (swift_dynamicCast())
            {
              type metadata accessor for WFSpotlightQueryValue();
              v124 = sub_1CA94C988();
              v125 = sub_1CA44051C(v124);

              swift_unknownObjectRelease();
              v38 = v125;
              __swift_destroy_boxed_opaque_existential_0(v154);
              i = v144;
              v34 = v141;
              goto LABEL_145;
            }

            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0(v154);
            return 0;
          case 1uLL:

            v57 = [v141 BOOLean];
            if (!v57)
            {
              goto LABEL_90;
            }

            v58 = v57;
            type metadata accessor for WFSpotlightQueryValue();
            v59 = sub_1CA44051C(v58);
            v60 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryCondition());
            v9 = sub_1CA44123C(v28, v30, 4, v59);

            goto LABEL_67;
          case 2uLL:
            v39 = [v141 &selRef_componentsWithString_];
            if ((v39 > 9 || ((1 << v39) & 0x330) == 0) && v39 != 999 && v39 != 99)
            {
              goto LABEL_149;
            }

            if ([i hasPossibleValues])
            {

              goto LABEL_90;
            }

            v69 = sub_1CA36D2C4(v141, &selRef_string);
            v145 = v28;
            if (!v70)
            {
              goto LABEL_107;
            }

            v71 = v69;
            v72 = v70;
            v73 = HIBYTE(v70) & 0xF;
            if ((v70 & 0x2000000000000000) == 0)
            {
              v73 = v69 & 0xFFFFFFFFFFFFLL;
            }

            if (v73)
            {

              type metadata accessor for WFSpotlightQueryValue();
              v34 = v141;
              i = v144;
              v37 = sub_1CA440598(v71, v72, [v141 &selRef_componentsWithString_]);

LABEL_49:
              v38 = v37;
              goto LABEL_145;
            }

LABEL_107:
            v102 = v30;
            v103 = v15;
            v104 = 0;
            v41 = v34[2];
            while (v41 != v104)
            {
              v105 = v104 + 1;
              v28 = v34[v104 + 4];
              sub_1CA25B3D0(0, &qword_1EC444B58, 0x1E6996F00);
              v106 = swift_dynamicCastMetatype();
              v104 = v105;
              if (v106)
              {
                v107 = sub_1CA36D2C4(v141, &selRef_phone);
                if (v108)
                {
                  v109 = sub_1CA3AC284(v107);
                  if (v109)
                  {
                    v110 = v109;

                    v111 = [v110 normalizedPhoneNumber];

                    v112 = sub_1CA94C3A8();
                    v114 = v113;

                    type metadata accessor for WFSpotlightQueryValue();
                    v34 = v141;
                    v115 = sub_1CA440598(v112, v114, [v141 &selRef_componentsWithString_]);

                    v38 = v115;
                    i = v144;
                    v15 = v103;
                    v30 = v102;
                    goto LABEL_145;
                  }
                }

                break;
              }
            }

            v116 = 0;
            v30 = v102;
            while (1)
            {
              i = v144;
              if (v41 == v116)
              {
                swift_unknownObjectRelease();

                v15 = v103;
                goto LABEL_133;
              }

              if (v116 >= v34[2])
              {
                break;
              }

              v117 = v116 + 1;
              sub_1CA25B3D0(0, &qword_1EC444B60, 0x1E6996E00);
              v118 = swift_dynamicCastMetatype();
              v116 = v117;
              v30 = v102;
              if (v118)
              {

                v34 = v141;
                v119 = sub_1CA36D2C4(v141, &selRef_email);
                v15 = v103;
                if (v120)
                {
                  v121 = v119;
                  v122 = v120;
                  type metadata accessor for WFSpotlightQueryValue();
                  v123 = sub_1CA440598(v121, v122, [v141 &selRef_componentsWithString_]);

                  v38 = v123;
LABEL_119:
                  i = v144;
                  goto LABEL_145;
                }

                swift_unknownObjectRelease();

LABEL_133:

                return 0;
              }
            }

            __break(1u);
LABEL_147:
            swift_once();
LABEL_61:
            v43 = sub_1CA323E2C();
            if (v43)
            {
              v44 = v43;
              v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B48, qword_1CA9858C8);
              v140 = &v135;
              v139 = *(v45 - 8);
              v46 = *(v139 + 64);
              MEMORY[0x1EEE9AC00](v45);
              v146 = v30;
              [v28 doubleValue];
              sub_1CA25B3D0(0, &qword_1EC444B50, 0x1E696ABA0);
              v137 = v41;
              v47 = sub_1CA948818();
              v138 = &v135;
              MEMORY[0x1EEE9AC00](v47);
              v48 = &v135 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1CA948838();
              type metadata accessor for WFSpotlightQueryValue();
              sub_1CA948828();
              v50 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
              v136 = sub_1CA44051C(v50);
              v51 = v137;

              v34 = v141;
              v52 = *(v139 + 8);
              v52(v48, v45);
              i = v144;
              v52(v48, v45);
              v30 = v146;

              v53 = v136;
            }

            else
            {
              type metadata accessor for WFSpotlightQueryValue();
              v87 = sub_1CA44051C(v28);

              v28 = v41;
LABEL_95:

              v53 = v87;
            }

            v38 = v53;
            v15 = v143;
LABEL_145:
            v133 = [v34 comparisonOperator];
            v134 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryCondition());
            v9 = sub_1CA44123C(v145, v30, v133, v38);

            swift_unknownObjectRelease();
            return v9;
          case 3uLL:
          case 6uLL:
          case 7uLL:
            if ([v141 comparisonOperator] > 5)
            {
              goto LABEL_149;
            }

            v35 = [v141 number];
            if (!v35)
            {
              goto LABEL_90;
            }

            v36 = v35;
            v34 = v141;
            v145 = v28;
            type metadata accessor for WFSpotlightQueryValue();
            v37 = sub_1CA44051C(v36);

            goto LABEL_49;
          case 4uLL:
            v61 = [v141 &selRef_componentsWithString_];
            if (v61 <= 5 && ((1 << v61) & 0x35) != 0)
            {
              v145 = v28;
              v65 = v30;

              v82 = sub_1CA948CB8();
              v83 = *(v82 - 8);
              MEMORY[0x1EEE9AC00](v82);
              v85 = &v135 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
              v34 = v141;
              v9 = [v141 date];
              if (!v9)
              {

                swift_unknownObjectRelease();
                return v9;
              }

              sub_1CA948C78();

              type metadata accessor for WFSpotlightQueryValue();
              v86 = sub_1CA4409B4();
              (*(v83 + 8))(v85, v82);
              v38 = v86;
              i = v144;
LABEL_144:
              v30 = v65;
              goto LABEL_145;
            }

            if (v61 - 1000 >= 2)
            {
              if (v61 == 1002)
              {
LABEL_64:

                v55 = [v141 &selRef_componentsWithString_];
                v56 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryCondition());
                v9 = sub_1CA4411A4(v28, v30, v55);
LABEL_67:

                swift_unknownObjectRelease();
                return v9;
              }

              v145 = v28;
              v143 = v15;
              if (v61 == 1003)
              {

                v88 = sub_1CA948CB8();
                v89 = *(v88 - 8);
                v90 = *(v89 + 64);
                MEMORY[0x1EEE9AC00](v88);
                v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
                v34 = v141;
                v92 = [v141 date];
                if (v92)
                {
                  v93 = v92;
                  v146 = v30;
                  sub_1CA948C78();

                  MEMORY[0x1EEE9AC00](v94);
                  v95 = [v141 anotherDate];
                  if (v95)
                  {
                    v96 = v95;
                    sub_1CA948C78();

                    type metadata accessor for WFSpotlightQueryValue();
                    v97 = sub_1CA44066C(&v135 - v91, &v135 - v91);
                    v98 = *(v89 + 8);
                    v98(&v135 - v91, v88);
                    v98(&v135 - v91, v88);
                    v38 = v97;
                    i = v144;
                    v15 = v143;
                    v30 = v146;
                    goto LABEL_145;
                  }

                  (*(v89 + 8))(&v135 - v91, v88);

                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                }

                return 0;
              }

              goto LABEL_149;
            }

            v145 = v28;
            v62 = [v141 number];
            if (!v62)
            {
              goto LABEL_124;
            }

            v63 = v62;
            v64 = [v141 calendarUnit];
            v9 = v64;
            if (v64)
            {
              v65 = v30;
              v66 = [v64 unsignedIntegerValue];

              v67 = v15;
              if (v66 == 4)
              {
                v68 = 89;
                goto LABEL_143;
              }

              if (v66 == 0x2000)
              {
                v68 = 119;
                goto LABEL_143;
              }

              if (v66 == 16)
              {
                v68 = 68;
                goto LABEL_143;
              }

              if (v66 == 32)
              {
                v68 = 104;
                goto LABEL_143;
              }

              if (v66 == 64)
              {
                v68 = 109;
                goto LABEL_143;
              }

              if (v66 == 128)
              {
                v68 = 115;
LABEL_143:

                v126 = [v63 description];
                v127 = sub_1CA94C3A8();
                v129 = v128;

                *&v154[0] = v127;
                *(&v154[0] + 1) = v129;
                MEMORY[0x1CCAA1300](v68, 0xE100000000000000);

                v130 = type metadata accessor for WFSpotlightQueryValue();
                v131 = objc_allocWithZone(v130);
                *&v131[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue] = v154[0];
                v149.receiver = v131;
                v149.super_class = v130;
                v132 = objc_msgSendSuper2(&v149, sel_init);

                v38 = v132;
                i = v144;
                v34 = v141;
                v15 = v67;
                goto LABEL_144;
              }

              if (v66 == 8)
              {
                v68 = 77;
                goto LABEL_143;
              }

              while (1)
              {
LABEL_149:
                sub_1CA94D5F8();
                __break(1u);
              }
            }

            swift_unknownObjectRelease();

            break;
          case 5uLL:
            v145 = v28;
            if ([v141 &selRef_componentsWithString_] > 5)
            {
              goto LABEL_149;
            }

            v40 = [v141 number];
            if (!v40)
            {
              goto LABEL_90;
            }

            v28 = v40;
            v34 = v141;
            v143 = v15;
            v41 = [v141 measurementUnit];
            if (!v41 || (objc_opt_self(), !swift_dynamicCastObjCClass()))
            {
              type metadata accessor for WFSpotlightQueryValue();
              v87 = sub_1CA44051C(v28);
              goto LABEL_95;
            }

            v42 = qword_1EC442D50;
            v41 = v41;
            if (v42 != -1)
            {
              goto LABEL_147;
            }

            goto LABEL_61;
          default:
            *&v154[0] = 0;
            *(&v154[0] + 1) = 0xE000000000000000;
            sub_1CA94D408();
            MEMORY[0x1CCAA1300](0xD00000000000002DLL, 0x80000001CA9AF580);
            *&v152 = v140;
            type metadata accessor for WFTableTemplateSubjectType(0);
            sub_1CA94D578();
            goto LABEL_149;
        }

LABEL_127:

        return v9;
      }

LABEL_36:
      v24 = WFIndexingKeyForForcedLinkEntityFindAction();
      v25 = sub_1CA94C1C8();

      v26 = sub_1CA3FA1E8(v25);

      if (v26)
      {
        v27 = sub_1CA323E30();

        if (v27)
        {
          v28 = sub_1CA3118E4(v145, v146, v27);
          v30 = v29;

          if (v30)
          {
            i = v144;
            goto LABEL_45;
          }
        }
      }

LABEL_9:
      swift_unknownObjectRelease();
      return 0;
    }

    v22 = sub_1CA94D7F8();

    if (v22)
    {
      goto LABEL_42;
    }

LABEL_26:
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:

LABEL_90:

  swift_unknownObjectRelease();
  return 0;
}

id sub_1CA3AC284(uint64_t a1)
{
  v1 = sub_1CA94C368();

  v2 = [swift_getObjCClassFromMetadata() phoneNumberWithPhoneNumberString_];

  return v2;
}

id sub_1CA3AC2E8(uint64_t a1, void *a2)
{
  sub_1CA25B3D0(0, &qword_1EC4445D8, 0x1E6996D80);
  v3 = sub_1CA94C648();

  v4 = [a2 andPredicateWithSubpredicates_];

  return v4;
}

id sub_1CA3AC36C(uint64_t a1, void *a2, SEL *a3)
{
  sub_1CA25B3D0(0, &qword_1EC4445D8, 0x1E6996D80);
  v5 = sub_1CA94C648();
  v6 = [a2 *a3];

  return v6;
}

uint64_t sub_1CA3AC3E8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1CA94C3A8();

  return v4;
}

id sub_1CA3AC488()
{
  v28[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438("Get Details of Weather Conditions (Action Name)", 47, v28[0]);
  v11 = v10;
  v12 = sub_1CA94C438("Get Details of Weather Conditions", 33);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v23;
  *(inited + 184) = v24;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v25 = @"ResidentCompatible";
  v26 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v26;
  *(inited + 240) = 0xD000000000000018;
  *(inited + 248) = 0x80000001CA9AF660;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3AC85C()
{
  v429 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  v428 = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9AF690;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("scientific|math|calculator|number|add|addition|subtract|subtraction|multiply|multiplication|times|divide|division|modulus|square|squared|exponent|exponential|power|^|ln|log|logarithm|root|sin|cos|tan|sine|cosine|tangent|trig|abs|absolute|value|factorial", 253);
  v6 = v5;
  v7 = sub_1CA94C438("scientific|math|calculator|number|add|addition|subtract|subtraction|multiply|multiplication|times|divide|division|modulus|square|squared|exponent|exponential|power|^|ln|log|logarithm|root|sin|cos|tan|sine|cosine|tangent|trig|abs|absolute|value|factorial", 253);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v452 = v11;
  v448 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v416 - v448;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v449 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v450 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v451 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v416 - v451;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *&v447 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  *&v446 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v436 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Performs a number operation on the input and returns the result.", 64);
  v28 = v27;
  v29 = sub_1CA94C438("Performs a number operation on the input and returns the result.", 64);
  v31 = v30;
  *&v445 = &v416;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v416 - v448;
  sub_1CA948D98();
  v33 = [v449 bundleURL];
  v439 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v416 - v451;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v447;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v446;
  v40 = sub_1CA6B3784(v38);
  v41 = v439;
  *(v439 + 20) = v40;
  *(v41 + 23) = v39;
  *(v41 + 24) = @"IconColor";
  *(v41 + 25) = 2036429383;
  *(v41 + 26) = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  *(v41 + 28) = MEMORY[0x1E69E6158];
  *(v41 + 29) = @"IconSymbol";
  strcpy(v41 + 240, "math.operators");
  v41[255] = -18;
  *(v41 + 33) = v42;
  *(v41 + 34) = @"Input";
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v43 = swift_initStackObject();
  v445 = xmmword_1CA981350;
  *(v43 + 16) = xmmword_1CA981350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  v44 = MEMORY[0x1E69E6370];
  *(v43 + 48) = 0;
  *(v43 + 72) = v44;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  *(v43 + 96) = 0x7475706E494657;
  *(v43 + 104) = 0xE700000000000000;
  *(v43 + 120) = v42;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v44;
  *(v43 + 176) = 0x7365707954;
  v45 = v44;
  *(v43 + 184) = 0xE500000000000000;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v43 + 216) = v438;
  *(v43 + 192) = &unk_1F49F80D0;
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"Input";
  v49 = sub_1CA94C1E8();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *&v446 = v50;
  *(v41 + 35) = v49;
  *(v41 + 38) = v50;
  *(v41 + 39) = @"LocallyProcessesData";
  v41[320] = 1;
  *(v41 + 43) = v45;
  *(v41 + 44) = @"Name";
  v51 = @"LocallyProcessesData";
  v52 = @"Name";
  v53 = sub_1CA94C438("Calculate (Action Name)", 23);
  v55 = v54;
  v56 = sub_1CA94C438("Calculate", 9);
  v58 = v57;
  v444 = &v416;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v416 - v448;
  sub_1CA948D98();
  v60 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v416 - v451;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v41 + 45) = sub_1CA2F9F14(v53, v55, v56, v58, 0, 0, v59, v61);
  v63 = v447;
  *(v41 + 48) = v447;
  *(v41 + 49) = @"Output";
  v64 = swift_allocObject();
  *(v64 + 16) = v445;
  *(v64 + 32) = 0x75736F6C63736944;
  *(v64 + 40) = 0xEF6C6576654C6572;
  *(v64 + 48) = 0x63696C627550;
  *(v64 + 56) = 0xE600000000000000;
  *(v64 + 72) = MEMORY[0x1E69E6158];
  *(v64 + 80) = 0x656C7069746C754DLL;
  *(v64 + 88) = 0xE800000000000000;
  *(v64 + 96) = 0;
  *(v64 + 120) = MEMORY[0x1E69E6370];
  *(v64 + 128) = 0x614E74757074754FLL;
  *(v64 + 136) = 0xEA0000000000656DLL;
  v65 = @"Output";
  v66 = sub_1CA94C438("Calculation Result (Default Output Name)", 40);
  v443 = v67;
  v444 = v66;
  v68 = sub_1CA94C438("Calculation Result", 18);
  v70 = v69;
  *&v445 = &v416;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v416 - v448;
  sub_1CA948D98();
  v72 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v416 - v451;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 144) = sub_1CA2F9F14(v444, v443, v68, v70, 0, 0, v71, v73);
  *(v64 + 168) = v63;
  *(v64 + 176) = 0x7365707954;
  *(v64 + 216) = v438;
  *(v64 + 184) = 0xE500000000000000;
  *(v64 + 192) = &unk_1F49F8100;
  v75 = MEMORY[0x1E69E6158];
  *(v41 + 50) = sub_1CA94C1E8();
  *(v41 + 53) = v446;
  *(v41 + 54) = @"ParameterCollapsingBehavior";
  *(v41 + 55) = 0x726576654ELL;
  *(v41 + 56) = 0xE500000000000000;
  *(v41 + 58) = v75;
  *(v41 + 59) = @"Parameters";
  v76 = v75;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v445 = swift_allocObject();
  v431 = xmmword_1CA981560;
  *(v445 + 16) = xmmword_1CA981560;
  v444 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  v446 = xmmword_1CA981370;
  *(v77 + 16) = xmmword_1CA981370;
  *(v77 + 32) = @"AllowsDecimalNumbers";
  *(v77 + 40) = 1;
  *(v77 + 64) = MEMORY[0x1E69E6370];
  *(v77 + 72) = @"Class";
  v435 = 0x80000001CA99C180;
  *(v77 + 80) = 0xD000000000000016;
  *(v77 + 88) = 0x80000001CA99C180;
  *(v77 + 104) = v76;
  *(v77 + 112) = @"Key";
  *(v77 + 120) = 0x7475706E494657;
  *(v77 + 128) = 0xE700000000000000;
  *(v77 + 144) = v76;
  *(v77 + 152) = @"Label";
  v78 = @"AllowsDecimalNumbers";
  v79 = @"Class";
  v80 = @"Key";
  v81 = @"Label";
  v82 = v78;
  v83 = v79;
  v84 = v80;
  v85 = v81;
  v434 = v82;
  *&v426 = v83;
  v430 = v84;
  v427 = v85;
  v86 = @"ParameterCollapsingBehavior";
  v87 = @"Parameters";
  v442 = sub_1CA94C438("Number (WFInput)", 16);
  v433 = v88;
  v89 = sub_1CA94C438("Number", 6);
  v432 = v90;
  v443 = &v416;
  MEMORY[0x1EEE9AC00](v89);
  v91 = v448;
  sub_1CA948D98();
  v92 = v449;
  v93 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v451;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 160) = sub_1CA2F9F14(v442, v433, v89, v432, 0, 0, &v416 - v91, &v416 - v94);
  v96 = v447;
  *(v77 + 184) = v447;
  *(v77 + 192) = @"Placeholder";
  v433 = @"Placeholder";
  v442 = sub_1CA94C438("Number (WFInput)", 16);
  v432 = v97;
  v98 = sub_1CA94C438("Number", 6);
  v425 = v99;
  v443 = &v416;
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948D98();
  v100 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v442, v432, v98, v425, 0, 0, &v416 - v91, &v416 - v94);
  *(v77 + 224) = v96;
  *(v77 + 200) = v102;
  _s3__C3KeyVMa_0(0);
  v443 = v103;
  v442 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v104 = sub_1CA94C1E8();
  v105 = sub_1CA2F864C(v104);
  *(v445 + 32) = v105;
  v106 = swift_allocObject();
  v422 = v106;
  *(v106 + 16) = v446;
  v425 = 0x80000001CA99C4A0;
  v107 = v426;
  *(v106 + 32) = v426;
  *(v106 + 40) = 0xD000000000000016;
  *(v106 + 48) = 0x80000001CA99C4A0;
  v108 = MEMORY[0x1E69E6158];
  *(v106 + 64) = MEMORY[0x1E69E6158];
  *(v106 + 72) = @"DefaultValue";
  *(v106 + 80) = 43;
  *(v106 + 88) = 0xE100000000000000;
  *(v106 + 104) = v108;
  *(v106 + 112) = @"Items";
  v432 = swift_allocObject();
  *(v432 + 1) = v431;
  v109 = @"Items";
  v423 = v107;
  v424 = v109;
  v110 = @"DefaultValue";
  *&v426 = sub_1CA94C438("+ (WFMathOperation)", 19);
  v421 = v111;
  v112 = sub_1CA94C438("+", 1);
  v420 = v113;
  *&v431 = &v416;
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v416 - v91;
  v115 = v91;
  sub_1CA948D98();
  v116 = v449;
  v117 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v416 - v451;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120 = sub_1CA2F9F14(v426, v421, v112, v420, 0, 0, v114, v118);
  v121 = v432;
  v432[4] = v120;
  *&v426 = sub_1CA94C438("- (WFMathOperation)", 19);
  v421 = v122;
  v123 = sub_1CA94C438("-", 1);
  v420 = v124;
  *&v431 = &v416;
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948D98();
  v125 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = v451;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 40) = sub_1CA2F9F14(v426, v421, v123, v420, 0, 0, &v416 - v115, &v416 - v126);
  *&v426 = sub_1CA94C438("× (WFMathOperation)", 20);
  v421 = v128;
  v129 = sub_1CA94C438("×", 2);
  v420 = v130;
  *&v431 = &v416;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v448;
  sub_1CA948D98();
  v132 = v449;
  v133 = [v449 bundleURL];
  v419 = &v416;
  MEMORY[0x1EEE9AC00](v133);
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v426, v421, v129, v420, 0, 0, &v416 - v131, &v416 - v126);
  v136 = v432;
  v432[6] = v135;
  *&v426 = sub_1CA94C438("÷ (WFMathOperation)", 20);
  v421 = v137;
  v138 = sub_1CA94C438("÷", 2);
  v420 = v139;
  *&v431 = &v416;
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948D98();
  v140 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = v451;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v136 + 56) = sub_1CA2F9F14(v426, v421, v138, v420, 0, 0, &v416 - v131, &v416 - v141);
  *&v426 = sub_1CA94C438("… (WFMathOperation)", 21);
  v421 = v143;
  v144 = sub_1CA94C438("…", 3);
  v420 = v145;
  *&v431 = &v416;
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v416 - v131;
  sub_1CA948D98();
  v147 = v449;
  v148 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v426, v421, v144, v420, 0, 0, v146, &v416 - v141);
  v151 = v136;
  *(v136 + 64) = v150;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *&v431 = v152;
  v153 = v422;
  v422[15] = v151;
  v154 = v430;
  v153[18] = v152;
  v153[19] = v154;
  v153[20] = 0x704F6874614D4657;
  v153[21] = 0xEF6E6F6974617265;
  v155 = v427;
  v153[23] = MEMORY[0x1E69E6158];
  v153[24] = v155;
  v430 = v154;
  v427 = v155;
  *&v426 = sub_1CA94C438("Operation (WFMathOperation)", 27);
  v157 = v156;
  v158 = sub_1CA94C438("Operation", 9);
  v160 = v159;
  v432 = &v416;
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v416 - v448;
  sub_1CA948D98();
  v162 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v416 - v451;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v426, v157, v158, v160, 0, 0, v161, v163);
  v153[28] = v447;
  v153[25] = v165;
  v166 = sub_1CA94C1E8();
  v167 = sub_1CA2F864C(v166);
  *(v445 + 40) = v167;
  v168 = swift_allocObject();
  *&v426 = v168;
  *(v168 + 16) = v446;
  v169 = v423;
  *(v168 + 32) = v423;
  *(v168 + 40) = 0xD000000000000016;
  *(v168 + 48) = v425;
  v170 = v424;
  *(v168 + 64) = MEMORY[0x1E69E6158];
  *(v168 + 72) = v170;
  *&v446 = swift_allocObject();
  *(v446 + 16) = xmmword_1CA9858F0;
  v432 = v169;
  v171 = sub_1CA94C438("Modulus (WFScientificMathOperation)", 35);
  v423 = v172;
  v424 = v171;
  v173 = sub_1CA94C438("Modulus", 7);
  v422 = v174;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v173);
  v175 = v448;
  sub_1CA948D98();
  v176 = v449;
  v177 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v416 - v451;
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v180 = sub_1CA2F9F14(v424, v423, v173, v422, 0, 0, &v416 - v175, v178);
  v181 = v446;
  *(v446 + 32) = v180;
  v182 = sub_1CA94C438("x^2 (WFScientificMathOperation)", 31);
  v423 = v183;
  v424 = v182;
  v184 = sub_1CA94C438("x^2", 3);
  v422 = v185;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v184);
  sub_1CA948D98();
  v186 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = v451;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v181 + 40) = sub_1CA2F9F14(v424, v423, v184, v422, 0, 0, &v416 - v175, &v416 - v187);
  v189 = sub_1CA94C438("x^3 (WFScientificMathOperation)", 31);
  v423 = v190;
  v424 = v189;
  v191 = sub_1CA94C438("x^3", 3);
  v422 = v192;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v191);
  v193 = v448;
  sub_1CA948D98();
  v194 = v449;
  v195 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v424, v423, v191, v422, 0, 0, &v416 - v193, &v416 - v187);
  v198 = v446;
  *(v446 + 48) = v197;
  v199 = sub_1CA94C438("x^y (WFScientificMathOperation)", 31);
  v423 = v200;
  v424 = v199;
  v201 = sub_1CA94C438("x^y", 3);
  v422 = v202;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v201);
  sub_1CA948D98();
  v203 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = v451;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v198 + 56) = sub_1CA2F9F14(v424, v423, v201, v422, 0, 0, &v416 - v193, &v416 - v204);
  v206 = sub_1CA94C438("e^x (WFScientificMathOperation)", 31);
  v423 = v207;
  v424 = v206;
  v208 = sub_1CA94C438("e^x", 3);
  v422 = v209;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v208);
  v210 = &v416 - v448;
  sub_1CA948D98();
  v211 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v198 + 64) = sub_1CA2F9F14(v424, v423, v208, v422, 0, 0, v210, &v416 - v204);
  v213 = sub_1CA94C438("10^x (WFScientificMathOperation)", 32);
  v423 = v214;
  v424 = v213;
  v215 = sub_1CA94C438("10^x", 4);
  v422 = v216;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v215);
  v217 = v448;
  sub_1CA948D98();
  v218 = v449;
  v219 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v219);
  v220 = v451;
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v222 = sub_1CA2F9F14(v424, v423, v215, v422, 0, 0, &v416 - v217, &v416 - v220);
  v223 = v446;
  *(v446 + 72) = v222;
  v224 = sub_1CA94C438("ln(x) (WFScientificMathOperation)", 33);
  v423 = v225;
  v424 = v224;
  v226 = sub_1CA94C438("ln(x)", 5);
  v422 = v227;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v226);
  sub_1CA948D98();
  v228 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v223 + 80) = sub_1CA2F9F14(v424, v423, v226, v422, 0, 0, &v416 - v217, &v416 - v220);
  v230 = sub_1CA94C438("log(x) (WFScientificMathOperation)", 34);
  v423 = v231;
  v424 = v230;
  v232 = sub_1CA94C438("log(x)", 6);
  v234 = v233;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v232);
  v235 = v448;
  sub_1CA948D98();
  v236 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v236);
  v237 = v451;
  sub_1CA948B68();

  v238 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v239 = sub_1CA2F9F14(v424, v423, v232, v234, 0, 0, &v416 - v235, &v416 - v237);
  v240 = v446;
  *(v446 + 88) = v239;
  v241 = sub_1CA94C438("√x (WFScientificMathOperation)", 32);
  v423 = v242;
  v424 = v241;
  v422 = sub_1CA94C438("√x", 4);
  v244 = v243;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v422);
  sub_1CA948D98();
  v245 = v449;
  v246 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v246);
  sub_1CA948B68();

  v247 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v240 + 96) = sub_1CA2F9F14(v424, v423, v422, v244, 0, 0, &v416 - v235, &v416 - v237);
  v248 = sub_1CA94C438("∛x (WFScientificMathOperation)", 32);
  v423 = v249;
  v424 = v248;
  v422 = sub_1CA94C438("∛x", 4);
  v251 = v250;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v422);
  v252 = v448;
  sub_1CA948D98();
  v253 = [v245 bundleURL];
  MEMORY[0x1EEE9AC00](v253);
  v254 = v451;
  sub_1CA948B68();

  v255 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v256 = sub_1CA2F9F14(v424, v423, v422, v251, 0, 0, &v416 - v252, &v416 - v254);
  v257 = v446;
  *(v446 + 104) = v256;
  v258 = sub_1CA94C438("x! (WFScientificMathOperation)", 30);
  v423 = v259;
  v424 = v258;
  v260 = sub_1CA94C438("x!", 2);
  v422 = v261;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v260);
  sub_1CA948D98();
  v262 = v449;
  v263 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v263);
  sub_1CA948B68();

  v264 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v257 + 112) = sub_1CA2F9F14(v424, v423, v260, v422, 0, 0, &v416 - v252, &v416 - v254);
  v265 = sub_1CA94C438("sin(x) (WFScientificMathOperation)", 34);
  v423 = v266;
  v424 = v265;
  v422 = sub_1CA94C438("sin(x)", 6);
  v268 = v267;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v422);
  v269 = v448;
  sub_1CA948D98();
  v270 = [v262 bundleURL];
  MEMORY[0x1EEE9AC00](v270);
  v271 = v451;
  sub_1CA948B68();

  v272 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v273 = sub_1CA2F9F14(v424, v423, v422, v268, 0, 0, &v416 - v269, &v416 - v271);
  v274 = v446;
  *(v446 + 120) = v273;
  v275 = sub_1CA94C438("cos(x) (WFScientificMathOperation)", 34);
  v423 = v276;
  v424 = v275;
  v277 = sub_1CA94C438("cos(x)", 6);
  v422 = v278;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v277);
  v279 = &v416 - v269;
  sub_1CA948D98();
  v280 = v449;
  v281 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v281);
  sub_1CA948B68();

  v282 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v274 + 128) = sub_1CA2F9F14(v424, v423, v277, v422, 0, 0, v279, &v416 - v271);
  v283 = sub_1CA94C438("tan(x) (WFScientificMathOperation)", 34);
  v423 = v284;
  v424 = v283;
  v285 = sub_1CA94C438("tan(x)", 6);
  v422 = v286;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v285);
  v287 = v448;
  sub_1CA948D98();
  v288 = [v280 bundleURL];
  MEMORY[0x1EEE9AC00](v288);
  v289 = v451;
  sub_1CA948B68();

  v290 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v291 = sub_1CA2F9F14(v424, v423, v285, v422, 0, 0, &v416 - v287, &v416 - v289);
  *(v446 + 136) = v291;
  v292 = sub_1CA94C438("abs(x) (WFScientificMathOperation)", 34);
  v423 = v293;
  v424 = v292;
  v294 = sub_1CA94C438("abs(x)", 6);
  v422 = v295;
  v425 = &v416;
  MEMORY[0x1EEE9AC00](v294);
  v296 = &v416 - v287;
  sub_1CA948D98();
  v297 = v449;
  v298 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v298);
  sub_1CA948B68();

  v299 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v300 = sub_1CA2F9F14(v424, v423, v294, v422, 0, 0, v296, &v416 - v289);
  v301 = v426;
  v302 = v446;
  *(v446 + 144) = v300;
  v301[10] = v302;
  v303 = v430;
  v301[13] = v431;
  v301[14] = v303;
  v424 = 0xD000000000000019;
  v425 = 0x80000001CA9AFC40;
  v301[15] = 0xD000000000000019;
  v301[16] = 0x80000001CA9AFC40;
  v304 = v427;
  v301[18] = MEMORY[0x1E69E6158];
  v301[19] = v304;
  v430 = v303;
  *&v431 = v304;
  v305 = sub_1CA94C438("Scientific Operation (WFScientificMathOperation)", 48);
  v307 = v306;
  v308 = sub_1CA94C438("Scientific Operation", 20);
  v310 = v309;
  *&v446 = &v416;
  MEMORY[0x1EEE9AC00](v308);
  v311 = &v416 - v448;
  sub_1CA948D98();
  v312 = [v297 bundleURL];
  MEMORY[0x1EEE9AC00](v312);
  v313 = &v416 - v451;
  sub_1CA948B68();

  v314 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v301[20] = sub_1CA2F9F14(v305, v307, v308, v310, 0, 0, v311, v313);
  v301[23] = v447;
  v301[24] = @"RequiredResources";
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v315 = swift_allocObject();
  *(v315 + 16) = v436;
  v423 = 0x80000001CA993570;
  v427 = 0x80000001CA993590;
  *&v446 = @"RequiredResources";
  v316 = MEMORY[0x1E69E6158];
  *(v315 + 32) = sub_1CA94C1E8();
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v301[28] = v421;
  v301[25] = v315;
  v317 = sub_1CA94C1E8();
  v318 = sub_1CA2F864C(v317);
  *(v445 + 48) = v318;
  v319 = swift_allocObject();
  v426 = xmmword_1CA981400;
  *(v319 + 16) = xmmword_1CA981400;
  *(v319 + 32) = v434;
  *(v319 + 40) = 1;
  v320 = v432;
  *(v319 + 64) = MEMORY[0x1E69E6370];
  *(v319 + 72) = v320;
  *(v319 + 80) = 0xD000000000000016;
  *(v319 + 88) = v435;
  v321 = v430;
  *(v319 + 104) = v316;
  *(v319 + 112) = v321;
  strcpy((v319 + 120), "WFMathOperand");
  *(v319 + 134) = -4864;
  v322 = v431;
  *(v319 + 144) = v316;
  *(v319 + 152) = v322;
  v323 = sub_1CA94C438("Operand (WFMathOperand)", 23);
  v418 = v324;
  v419 = v323;
  v325 = sub_1CA94C438("Operand", 7);
  v417 = v326;
  v420 = &v416;
  MEMORY[0x1EEE9AC00](v325);
  v327 = v448;
  sub_1CA948D98();
  v328 = v449;
  v329 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v329);
  v330 = &v416 - v451;
  sub_1CA948B68();

  v331 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v319 + 160) = sub_1CA2F9F14(v419, v418, v325, v417, 0, 0, &v416 - v327, v330);
  v332 = v447;
  v333 = v433;
  *(v319 + 184) = v447;
  *(v319 + 192) = v333;
  v334 = sub_1CA94C438("Number (WFMathOperand)", 22);
  v418 = v335;
  v419 = v334;
  v336 = sub_1CA94C438("Number", 6);
  v338 = v337;
  v420 = &v416;
  MEMORY[0x1EEE9AC00](v336);
  sub_1CA948D98();
  v339 = [v328 bundleURL];
  MEMORY[0x1EEE9AC00](v339);
  v340 = &v416 - v451;
  sub_1CA948B68();

  v341 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v319 + 200) = sub_1CA2F9F14(v419, v418, v336, v338, 0, 0, &v416 - v327, v340);
  v342 = v446;
  *(v319 + 224) = v332;
  *(v319 + 232) = v342;
  v343 = swift_allocObject();
  *(v343 + 16) = v436;
  v344 = MEMORY[0x1E69E6158];
  *(v343 + 32) = sub_1CA94C1E8();
  *(v319 + 240) = v343;
  *(v319 + 264) = v421;
  *(v319 + 272) = @"TextAlignment";
  *(v319 + 304) = v344;
  *(v319 + 280) = 0x7468676952;
  *(v319 + 288) = 0xE500000000000000;
  *&v436 = @"TextAlignment";
  v345 = sub_1CA94C1E8();
  v346 = sub_1CA2F864C(v345);
  *(v445 + 56) = v346;
  v347 = swift_allocObject();
  *(v347 + 16) = v426;
  *(v347 + 32) = v434;
  *(v347 + 40) = 1;
  v348 = v432;
  *(v347 + 64) = MEMORY[0x1E69E6370];
  *(v347 + 72) = v348;
  v349 = v435;
  *(v347 + 80) = 0xD000000000000016;
  *(v347 + 88) = v349;
  v350 = v430;
  *(v347 + 104) = v344;
  *(v347 + 112) = v350;
  *(v347 + 120) = 0xD000000000000017;
  *(v347 + 128) = 0x80000001CA9AFD00;
  v351 = v431;
  *(v347 + 144) = v344;
  *(v347 + 152) = v351;
  v352 = sub_1CA94C438("Operand (WFScientificMathOperand)", 33);
  v434 = v353;
  v435 = v352;
  v354 = sub_1CA94C438("Operand", 7);
  v432 = v355;
  v441 = &v416;
  MEMORY[0x1EEE9AC00](v354);
  v356 = v448;
  sub_1CA948D98();
  v357 = [v449 bundleURL];
  *&v431 = &v416;
  MEMORY[0x1EEE9AC00](v357);
  v358 = v451;
  sub_1CA948B68();

  v359 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v347 + 160) = sub_1CA2F9F14(v435, v434, v354, v432, 0, 0, &v416 - v356, &v416 - v358);
  v360 = v433;
  *(v347 + 184) = v447;
  *(v347 + 192) = v360;
  v361 = sub_1CA94C438("Number (WFScientificMathOperand)", 32);
  v434 = v362;
  v435 = v361;
  v363 = sub_1CA94C438("Number", 6);
  v433 = v364;
  v441 = &v416;
  MEMORY[0x1EEE9AC00](v363);
  sub_1CA948D98();
  v365 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v365);
  sub_1CA948B68();

  v366 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v347 + 200) = sub_1CA2F9F14(v435, v434, v363, v433, 0, 0, &v416 - v356, &v416 - v358);
  v367 = v446;
  *(v347 + 224) = v447;
  *(v347 + 232) = v367;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v368 = swift_allocObject();
  *(v368 + 16) = xmmword_1CA97EDF0;
  v369 = swift_allocObject();
  v447 = xmmword_1CA9813C0;
  *(v369 + 16) = xmmword_1CA9813C0;
  strcpy((v369 + 32), "WFParameterKey");
  *(v369 + 47) = -18;
  *(v369 + 48) = 0x704F6874614D4657;
  *(v369 + 56) = 0xEF6E6F6974617265;
  v370 = MEMORY[0x1E69E6158];
  *(v369 + 72) = MEMORY[0x1E69E6158];
  *(v369 + 80) = 0xD000000000000010;
  *(v369 + 88) = v423;
  *(v369 + 96) = 10911970;
  *(v369 + 104) = 0xA300000000000000;
  *(v369 + 120) = v370;
  *(v369 + 128) = 0x72756F7365524657;
  *(v369 + 168) = v370;
  *(v369 + 136) = 0xEF7373616C436563;
  *(v369 + 144) = 0xD00000000000001BLL;
  v371 = v427;
  *(v369 + 152) = v427;
  *(v368 + 32) = sub_1CA94C1E8();
  v372 = swift_allocObject();
  *(v372 + 16) = v447;
  strcpy((v372 + 32), "WFParameterKey");
  *(v372 + 47) = -18;
  v373 = v425;
  *(v372 + 48) = v424;
  *(v372 + 56) = v373;
  v374 = v428;
  *(v372 + 72) = v370;
  *(v372 + 80) = v374;
  *(v372 + 88) = 0x80000001CA9A2F30;
  *(v372 + 96) = &unk_1F49F8250;
  *(v372 + 120) = v438;
  *(v372 + 128) = 0x72756F7365524657;
  *(v372 + 168) = v370;
  *(v372 + 136) = 0xEF7373616C436563;
  *(v372 + 144) = 0xD00000000000001BLL;
  *(v372 + 152) = v371;
  *(v368 + 40) = sub_1CA94C1E8();
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v347 + 240) = v368;
  v376 = v436;
  *(v347 + 264) = v375;
  *(v347 + 272) = v376;
  *(v347 + 304) = v370;
  *(v347 + 280) = 0x7468676952;
  *(v347 + 288) = 0xE500000000000000;
  v377 = sub_1CA94C1E8();
  v378 = sub_1CA2F864C(v377);
  v379 = v445;
  *(v445 + 64) = v378;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v381 = v439;
  *(v439 + 60) = v379;
  *(v381 + 63) = v380;
  *(v381 + 64) = @"ParameterSummary";
  *&v446 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *&v447 = swift_allocObject();
  *(v447 + 16) = xmmword_1CA981360;
  *&v445 = "ificMathOperand)";
  v382 = @"ParameterSummary";
  v383 = sub_1CA94C438("${WFInput} ${WFMathOperation} ${WFMathOperand}", 46);
  v385 = v384;
  v386 = sub_1CA94C438("${WFInput} ${WFMathOperation} ${WFMathOperand}", 46);
  v388 = v387;
  v444 = &v416;
  MEMORY[0x1EEE9AC00](v386);
  v389 = &v416 - v448;
  sub_1CA948D98();
  v390 = v449;
  v391 = [v449 bundleURL];
  MEMORY[0x1EEE9AC00](v391);
  v392 = &v416 - v451;
  sub_1CA948B68();

  v393 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v394 = sub_1CA2F9F14(v383, v385, v386, v388, 0, 0, v389, v392);
  v395 = objc_allocWithZone(WFActionParameterSummaryValue);
  v396 = sub_1CA65DD78(0xD000000000000025, v445 | 0x8000000000000000, v394);
  *(v447 + 32) = v396;
  *&v445 = "athOperation} ${WFMathOperand}";
  v397 = sub_1CA94C438("${WFInput} ${WFMathOperation} ${WFScientificMathOperand}", 56);
  v399 = v398;
  v400 = sub_1CA94C438("${WFInput} ${WFMathOperation} ${WFScientificMathOperand}", 56);
  v402 = v401;
  v444 = &v416;
  MEMORY[0x1EEE9AC00](v400);
  v403 = &v416 - v448;
  sub_1CA948D98();
  v404 = [v390 bundleURL];
  MEMORY[0x1EEE9AC00](v404);
  v405 = &v416 - v451;
  sub_1CA948B68();

  v406 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v407 = sub_1CA2F9F14(v397, v399, v400, v402, 0, 0, v403, v405);
  v408 = objc_allocWithZone(WFActionParameterSummaryValue);
  v409 = sub_1CA65DD78(0xD000000000000057, v445 | 0x8000000000000000, v407);
  v410 = v447;
  *(v447 + 40) = v409;
  v411 = v446;
  v412 = sub_1CA65AF90(v410);
  v413 = v439;
  *(v439 + 68) = v411;
  *(v413 + 65) = v412;
  *(v413 + 69) = @"ResidentCompatible";
  *(v413 + 73) = MEMORY[0x1E69E6370];
  v413[560] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v414 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3AFB00()
{
  v94 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9AFE90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("battery|life|charge|turn", 24);
  v6 = v5;
  v7 = sub_1CA94C438("battery|life|charge|turn", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v99 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v100 = v11;
  v12 = &v88 - v99;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v96 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v98 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v88 - v95;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v97 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v93 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v92 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"FocusFilterDescription";
  v24 = @"Description";
  v25 = @"FocusFilterDescription";
  v26 = sub_1CA94C438("Low Power Mode will turn on or off with this Focus.", 51);
  v90 = v27;
  v28 = sub_1CA94C438("Low Power Mode will turn on or off with this Focus.", 51);
  v30 = v29;
  v91 = &v88;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v88 - v99;
  sub_1CA948D98();
  v32 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v88 - v95;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v90, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v97;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v93;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F49F82D0;
  *(inited + 224) = v38;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x65676E61724FLL;
  *(inited + 248) = 0xE600000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x2E79726574746162;
  *(inited + 288) = 0xEA00000000003035;
  *(inited + 304) = v39;
  *(inited + 312) = @"InputPassthrough";
  v40 = v39;
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  v41 = @"DisabledOnPlatforms";
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"InputPassthrough";
  v45 = sub_1CA94C368();
  *(inited + 384) = v40;
  *(inited + 352) = v45;
  *(inited + 360) = 0xD000000000000057;
  *(inited + 368) = 0x80000001CA9AFF10;
  *(inited + 392) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v46 = swift_initStackObject();
  v93 = v46;
  *(v46 + 16) = v92;
  *(v46 + 32) = 0x6574617473;
  *(v46 + 40) = 0xE500000000000000;
  *&v92 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = @"Key";
  *(v47 + 40) = 0x65756C61566E4FLL;
  *(v47 + 48) = 0xE700000000000000;
  *(v47 + 64) = v40;
  *(v47 + 72) = @"Label";
  v48 = @"Key";
  v49 = @"Label";
  v50 = sub_1CA94C438("Low Power Mode (Parameter Label)", 32);
  v89 = v51;
  v90 = v50;
  v52 = sub_1CA94C438("Low Power Mode", 14);
  v88 = v53;
  v91 = &v88;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v88 - v99;
  sub_1CA948D98();
  v55 = v96;
  v56 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v95;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 80) = sub_1CA2F9F14(v90, v89, v52, v88, 0, 0, v54, &v88 - v57);
  *(v47 + 104) = v97;
  *(v47 + 112) = @"Placeholder";
  v59 = @"Placeholder";
  v60 = sub_1CA94C438("Low Power Mode State (Parameter Placeholder)", 44);
  v89 = v61;
  v90 = v60;
  v62 = sub_1CA94C438("State", 5);
  v88 = v63;
  v91 = &v88;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v88 - v99;
  sub_1CA948D98();
  v65 = [v55 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 120) = sub_1CA2F9F14(v90, v89, v62, v88, 0, 0, v64, &v88 - v57);
  v67 = v97;
  *(v47 + 144) = v97;
  *(v47 + 152) = @"Prompt";
  v68 = @"Prompt";
  v69 = sub_1CA94C438("State (WFSetLowPowerModeAction)", 31);
  v89 = v70;
  v90 = v69;
  v71 = sub_1CA94C438("State", 5);
  v73 = v72;
  v91 = &v88;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v88 - v99;
  sub_1CA948D98();
  v75 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v88 - v95;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v90, v89, v71, v73, 0, 0, v74, v76);
  *(v47 + 184) = v67;
  *(v47 + 160) = v78;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v79 = sub_1CA94C1E8();
  v80 = sub_1CA2F864C(v79);
  *(v93 + 48) = v80;
  v81 = sub_1CA94C1E8();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 400) = v81;
  *(inited + 424) = v82;
  *(inited + 432) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1CA9813B0;
  v101 = 2;
  v102 = 1;
  v84 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v85 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v101);
  *(v83 + 32) = v86;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 440) = v83;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3B0690()
{
  v183 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFSeekAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("ipod|track|music|itunes|skip", 28);
  v6 = v5;
  v7 = sub_1CA94C438("ipod|track|music|itunes|skip", 28);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v195 = v11;
  v198 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v178 - v198;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v194 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v196 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v197 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v178 - v197;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v193 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v191 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Seek to a specific time, or forward and backward by some duration, in the currently playing media.", 98);
  v25 = v24;
  v26 = sub_1CA94C438("Seek to a specific time, or forward and backward by some duration, in the currently playing media.", 98);
  v28 = v27;
  v190 = &v178;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v178 - v198;
  sub_1CA948D98();
  v30 = [v194 bundleURL];
  v192 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v178 - v197;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v193;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v191;
  v37 = sub_1CA6B3784(v35);
  v38 = v192;
  v192[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 6579538;
  v38[21] = 0xE300000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0x726177726F666F67;
  v38[26] = 0xE900000000000064;
  v38[28] = v39;
  v38[29] = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"Name";
  v43 = sub_1CA94C438("Seek (Action Name)", 18);
  v45 = v44;
  v46 = sub_1CA94C438("Seek", 4);
  v48 = v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v178 - v198;
  sub_1CA948D98();
  v50 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v178 - v197;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  v54 = v192;
  v192[30] = v53;
  v54[33] = v193;
  v54[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v191 = swift_allocObject();
  v188 = xmmword_1CA981470;
  *(v191 + 16) = xmmword_1CA981470;
  v190 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1CA981370;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000016;
  *(v55 + 48) = 0x80000001CA99C4A0;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 64) = MEMORY[0x1E69E6158];
  *(v55 + 72) = @"DefaultValue";
  *(v55 + 80) = 0x656D6954206F54;
  *(v55 + 88) = 0xE700000000000000;
  *(v55 + 104) = v56;
  *(v55 + 112) = @"Items";
  v187 = swift_allocObject();
  *&v187->data = v188;
  v57 = @"Class";
  v58 = @"DefaultValue";
  *&v188 = v57;
  v182 = v58;
  v59 = @"Parameters";
  v60 = @"Items";
  v61 = sub_1CA94C438("To Time (WFSeekBehavior)", 24);
  v184 = v62;
  v185 = v61;
  v63 = sub_1CA94C438("To Time", 7);
  v181 = v64;
  v186 = &v178;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v198;
  sub_1CA948D98();
  v66 = v194;
  v67 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v178 - v197;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v185, v184, v63, v181, 0, 0, &v178 - v65, v68);
  v71 = v187;
  v187[1].isa = v70;
  v72 = sub_1CA94C438("Forward By (WFSeekBehavior)", 27);
  v184 = v73;
  v185 = v72;
  v74 = sub_1CA94C438("Forward By", 10);
  v181 = v75;
  v186 = &v178;
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948D98();
  v76 = v66;
  v77 = [v66 bundleURL];
  *&v180 = &v178;
  MEMORY[0x1EEE9AC00](v77);
  v78 = v197;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71[1].info = sub_1CA2F9F14(v185, v184, v74, v181, 0, 0, &v178 - v65, &v178 - v78);
  v80 = sub_1CA94C438("Backward By (WFSeekBehavior)", 28);
  v184 = v81;
  v185 = v80;
  v82 = sub_1CA94C438("Backward By", 11);
  v181 = v83;
  v186 = &v178;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v178 - v198;
  sub_1CA948D98();
  v85 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v185, v184, v82, v181, 0, 0, v84, &v178 - v78);
  v88 = v187;
  v187[1].data = v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v55 + 120) = v88;
  *(v55 + 144) = v89;
  *(v55 + 152) = @"Key";
  strcpy((v55 + 160), "WFSeekBehavior");
  *(v55 + 175) = -18;
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Label";
  v90 = @"Key";
  v91 = @"Label";
  v92 = v90;
  v93 = v91;
  v184 = v92;
  v187 = v93;
  v94 = sub_1CA94C438("Seek Type (WFSeekBehavior)", 26);
  v96 = v95;
  v97 = sub_1CA94C438("Seek Type", 9);
  v99 = v98;
  v186 = &v178;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v178 - v198;
  sub_1CA948D98();
  v101 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v178 - v197;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  *(v55 + 224) = v193;
  *(v55 + 200) = v104;
  _s3__C3KeyVMa_0(0);
  v186 = v105;
  v185 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v106 = sub_1CA94C1E8();
  v107 = sub_1CA2F864C(v106);
  *(v191 + 32) = v107;
  v108 = swift_initStackObject();
  v180 = xmmword_1CA981380;
  *(v108 + 16) = xmmword_1CA981380;
  *(v108 + 32) = v188;
  *(v108 + 40) = 0xD000000000000020;
  *(v108 + 48) = 0x80000001CA9A44A0;
  v109 = MEMORY[0x1E69E6158];
  *(v108 + 64) = MEMORY[0x1E69E6158];
  *(v108 + 72) = @"DefaultUnit";
  *(v108 + 80) = 6514035;
  *(v108 + 88) = 0xE300000000000000;
  v110 = v184;
  *(v108 + 104) = v109;
  *(v108 + 112) = v110;
  strcpy((v108 + 120), "WFTimeInterval");
  *(v108 + 135) = -18;
  v111 = v187;
  *(v108 + 144) = v109;
  *(v108 + 152) = v111;
  v112 = @"DefaultUnit";
  v179 = sub_1CA94C438("Time Interval (WFTimeInterval)", 30);
  v114 = v113;
  v115 = sub_1CA94C438("Time Interval", 13);
  v117 = v116;
  v181 = &v178;
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v178 - v198;
  sub_1CA948D98();
  v119 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v178 - v197;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 160) = sub_1CA2F9F14(v179, v114, v115, v117, 0, 0, v118, v120);
  v122 = v193;
  *(v108 + 184) = v193;
  *(v108 + 192) = @"Placeholder";
  v123 = @"Placeholder";
  v124 = sub_1CA94C438("30 (WFTimeInterval)", 19);
  v178 = v125;
  v179 = v124;
  v126 = sub_1CA94C438("30", 2);
  v128 = v127;
  v181 = &v178;
  MEMORY[0x1EEE9AC00](v126);
  v129 = &v178 - v198;
  sub_1CA948D98();
  v130 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v178 - v197;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 200) = sub_1CA2F9F14(v179, v178, v126, v128, 0, 0, v129, v131);
  *(v108 + 224) = v122;
  *(v108 + 232) = @"PossibleUnits";
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v108 + 264) = v133;
  v134 = v133;
  v181 = v133;
  *(v108 + 240) = &unk_1F49F8300;
  v135 = @"PossibleUnits";
  v136 = sub_1CA94C1E8();
  v137 = sub_1CA2F864C(v136);
  *(v191 + 40) = v137;
  v138 = swift_allocObject();
  *(v138 + 16) = v180;
  *(v138 + 32) = v188;
  *(v138 + 40) = 0xD00000000000001BLL;
  *(v138 + 48) = 0x80000001CA9A1EB0;
  v139 = MEMORY[0x1E69E6158];
  v140 = v182;
  *(v138 + 64) = MEMORY[0x1E69E6158];
  *(v138 + 72) = v140;
  *(v138 + 80) = 0x6C61636F4CLL;
  *(v138 + 88) = 0xE500000000000000;
  *(v138 + 104) = v139;
  *(v138 + 112) = @"DisallowedVariableTypes";
  *(v138 + 120) = &unk_1F49F8350;
  v141 = v184;
  *(v138 + 144) = v134;
  *(v138 + 152) = v141;
  strcpy((v138 + 160), "WFMediaRoute");
  *(v138 + 173) = 0;
  *(v138 + 174) = -5120;
  v142 = v187;
  *(v138 + 184) = v139;
  *(v138 + 192) = v142;
  v143 = @"DisallowedVariableTypes";
  v144 = sub_1CA94C438("Device (WFMediaRoute)", 21);
  v146 = v145;
  v147 = sub_1CA94C438("Device", 6);
  v149 = v148;
  v189 = &v178;
  MEMORY[0x1EEE9AC00](v147);
  v150 = &v178 - v198;
  sub_1CA948D98();
  v151 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v178 - v197;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v144, v146, v147, v149, 0, 0, v150, v152);
  *(v138 + 224) = v193;
  *(v138 + 200) = v154;
  v155 = sub_1CA94C368();
  *(v138 + 264) = MEMORY[0x1E69E6158];
  *(v138 + 232) = v155;
  *(v138 + 240) = 0x746E696F70646E45;
  *(v138 + 248) = 0xE800000000000000;
  v156 = sub_1CA94C1E8();
  v157 = sub_1CA2F864C(v156);
  v158 = v191;
  *(v191 + 48) = v157;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v160 = v192;
  v192[35] = v158;
  v160[38] = v159;
  v160[39] = @"ParameterSummary";
  v161 = @"ParameterSummary";
  v162 = sub_1CA94C438("Seek ${WFSeekBehavior} ${WFTimeInterval} on ${WFMediaRoute} (Parameter Summary)", 79);
  v164 = v163;
  v165 = sub_1CA94C438("Seek ${WFSeekBehavior} ${WFTimeInterval} on ${WFMediaRoute}", 59);
  v167 = v166;
  MEMORY[0x1EEE9AC00](v165);
  v168 = &v178 - v198;
  sub_1CA948D98();
  v169 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  v170 = &v178 - v197;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v172 = sub_1CA2F9F14(v162, v164, v165, v167, 0, 0, v168, v170);
  v173 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v174 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v175 = v192;
  v192[40] = v173;
  v175[43] = v174;
  v175[44] = @"RequiredResources";
  v175[48] = v181;
  v175[45] = &unk_1F49F8380;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v176 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA3B1A38(uint64_t a1)
{
  v1 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    [v9 doubleValue];
    sub_1CA948C28();
    swift_unknownObjectRelease();
    sub_1CA948CB8();
    OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    sub_1CA949C58();
    swift_unknownObjectRetain();
    v15 = sub_1CA949F68();
    v16 = sub_1CA94CC28();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
      v19 = sub_1CA94C408();
      v21 = sub_1CA26B54C(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1CA256000, v15, v16, "Invalid date de-serialization: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1CCAA4BF0](v18, -1, -1);
      MEMORY[0x1CCAA4BF0](v17, -1, -1);
    }

    (*(v3 + 8))(v7, v1);
    sub_1CA948CB8();
    v22 = OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1CA3B1CA0()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA948E68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, v1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (MEMORY[0x1E69698C8] && v11 == *MEMORY[0x1E69698C8] || MEMORY[0x1E6969898] && v11 == *MEMORY[0x1E6969898] || MEMORY[0x1E69698A8] && v11 == *MEMORY[0x1E69698A8] || MEMORY[0x1E69698B8] && v11 == *MEMORY[0x1E69698B8])
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    return sub_1CA94D008();
  }

  else
  {
    v33 = v3;
    v13 = sub_1CA949C58();
    v32 = v26;
    MEMORY[0x1EEE9AC00](v13);
    v30 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = v26 - v30;
    v10(v26 - v30, v1, v6);
    v15 = sub_1CA949F68();
    v31 = sub_1CA94CC28();
    if (os_log_type_enabled(v15, v31))
    {
      v27 = swift_slowAlloc();
      v28 = v2;
      v16 = v27;
      v17 = swift_slowAlloc();
      v29 = v17;
      v26[1] = v26;
      v34 = v17;
      *v16 = 136315138;
      MEMORY[0x1EEE9AC00](v17);
      v10(v26 - v30, v14, v6);
      v18 = sub_1CA94C408();
      v20 = v19;
      v21 = *(v7 + 8);
      v21(v14, v6);
      v22 = sub_1CA26B54C(v18, v20, &v34);

      v23 = v27;
      *(v27 + 4) = v22;
      v24 = v23;
      _os_log_impl(&dword_1CA256000, v15, v31, "Unhandled calendar matching policy: %s", v23, 0xCu);
      v25 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1CCAA4BF0](v25, -1, -1);
      MEMORY[0x1CCAA4BF0](v24, -1, -1);

      (*(v33 + 8))(v5, v28);
    }

    else
    {

      v21 = *(v7 + 8);
      v21(v14, v6);
      (*(v33 + 8))(v5, v2);
    }

    v21(v9, v6);
    return 0;
  }
}

uint64_t sub_1CA3B2150()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA949068();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, v1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (MEMORY[0x1E69699D0] && v11 == *MEMORY[0x1E69699D0] || MEMORY[0x1E69699B8] && v11 == *MEMORY[0x1E69699B8])
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    return sub_1CA94D008();
  }

  else
  {
    v33 = v3;
    v34 = v2;
    v13 = sub_1CA949C58();
    v32 = &v28;
    MEMORY[0x1EEE9AC00](v13);
    v14 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v15 = &v28 - v14;
    v10(&v28 - v14, v1, v6);
    v16 = sub_1CA949F68();
    v31 = sub_1CA94CC28();
    if (os_log_type_enabled(v16, v31))
    {
      v17 = swift_slowAlloc();
      v29 = v16;
      v18 = v17;
      v19 = swift_slowAlloc();
      v30 = v19;
      v28 = &v28;
      v35 = v19;
      *v18 = 136315138;
      MEMORY[0x1EEE9AC00](v19);
      v10(&v28 - v14, &v28 - v14, v6);
      v20 = sub_1CA94C408();
      v22 = v21;
      v23 = *(v7 + 8);
      v23(v15, v6);
      v24 = sub_1CA26B54C(v20, v22, &v35);

      v25 = v18;
      *(v18 + 4) = v24;
      v26 = v29;
      _os_log_impl(&dword_1CA256000, v29, v31, "Unhandled calendar repeated time policy: %s", v25, 0xCu);
      v27 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1CCAA4BF0](v27, -1, -1);
      MEMORY[0x1CCAA4BF0](v25, -1, -1);
    }

    else
    {

      v23 = *(v7 + 8);
      v23(v15, v6);
    }

    (*(v33 + 8))(v5, v34);
    v23(v9, v6);
    return 0;
  }
}

uint64_t sub_1CA3B255C(uint64_t a1)
{
  v13[1] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (swift_dynamicCast())
  {
    v1 = sub_1CA323E28();
    if (v1)
    {
      v2 = v1;
      v3 = sub_1CA948CB8();
      v4 = *(v3 - 8);
      MEMORY[0x1EEE9AC00](v3);
      v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
      MEMORY[0x1EEE9AC00](v7 - 8);
      v9 = v13 - v8;
      sub_1CA3B1A38(v2);
      if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
      {

        (*(v4 + 32))(v6, v9, v3);
        sub_1CA948F08();
        swift_unknownObjectRelease();
        return (*(v4 + 8))(v6, v3);
      }

      swift_unknownObjectRelease();
      sub_1CA30F7DC(v9, &qword_1EC4466D0, &qword_1CA991AA0);
    }

    v10 = sub_1CA323E28();

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 integerValue];
        sub_1CA948ED8();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return sub_1CA948EF8();
}

uint64_t sub_1CA3B280C()
{
  v0 = sub_1CA948CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  sub_1CA948EE8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) == 1)
  {
    sub_1CA30F7DC(v6, &qword_1EC4466D0, &qword_1CA991AA0);
    v7 = sub_1CA948EC8();
    if (v8)
    {
      return 0;
    }

    else
    {
      v14 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1CA981310;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 32) = 0x6E6572727563636FLL;
      *(v15 + 40) = 0xEB00000000736563;
      v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(v15 + 88) = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      *(v15 + 64) = v16;
      sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
      return sub_1CA94CBB8();
    }
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    sub_1CA948C38();
    v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E6158];
    *(v12 + 16) = xmmword_1CA981310;
    *(v12 + 56) = v13;
    *(v12 + 32) = 1702125924;
    *(v12 + 40) = 0xE400000000000000;
    *(v12 + 88) = swift_getObjectType();
    *(v12 + 64) = v11;
    sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
    v9 = sub_1CA94CBB8();
    (*(v1 + 8))(v3, v0);
  }

  return v9;
}

uint64_t sub_1CA3B2B0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1CA323E28();
    if (v3)
    {
      v33 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
      if (swift_dynamicCast())
      {
        v4 = sub_1CA948DD8();
        v5 = *(v4 - 8);
        MEMORY[0x1EEE9AC00](v4);
        v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444BD0, &qword_1CA985948);
        MEMORY[0x1EEE9AC00](v8 - 8);
        v10 = &v32 - v9;
        sub_1CA948DB8();
        if (__swift_getEnumTagSinglePayload(v10, 1, v4) != 1)
        {
          v24 = *(v5 + 32);
          v24(v7, v10, v4);
          v24(a2, v7, v4);
          v25 = *MEMORY[0x1E6969908];
          v26 = sub_1CA948FA8();
          (*(*(v26 - 8) + 104))(a2, v25, v26);
          return __swift_storeEnumTagSinglePayload(a2, 0, 1, v26);
        }

        sub_1CA30F7DC(v10, &unk_1EC444BD0, &qword_1CA985948);
      }
    }

    if (sub_1CA323E28())
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11 && (v12 = v11, (v13 = sub_1CA323E28()) != 0) && (v33 = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520), (swift_dynamicCast() & 1) != 0))
      {
        v14 = sub_1CA948DD8();
        v32 = &v32;
        v15 = *(v14 - 8);
        MEMORY[0x1EEE9AC00](v14);
        v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444BD0, &qword_1CA985948);
        MEMORY[0x1EEE9AC00](v18 - 8);
        v20 = &v32 - v19;
        sub_1CA948DB8();
        if (__swift_getEnumTagSinglePayload(v20, 1, v14) != 1)
        {
          v27 = *(v15 + 32);
          v27(v17, v20, v14);
          v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC8, &qword_1CA985940) + 48);
          v29 = [v12 integerValue];
          swift_unknownObjectRelease();
          *a2 = v29;
          v27(&a2[v28], v17, v14);
          v30 = *MEMORY[0x1E69698F8];
          v31 = sub_1CA948FA8();
          (*(*(v31 - 8) + 104))(a2, v30, v31);
          return __swift_storeEnumTagSinglePayload(a2, 0, 1, v31);
        }

        swift_unknownObjectRelease();
        sub_1CA30F7DC(v20, &unk_1EC444BD0, &qword_1CA985948);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v23 = sub_1CA948FA8();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v23);
  }

  else
  {
    v21 = sub_1CA948FA8();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v21);
  }
}

uint64_t sub_1CA3B306C()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA948FA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, v1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (MEMORY[0x1E6969908] && v11 == *MEMORY[0x1E6969908])
  {
    (*(v7 + 96))(&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v12 = sub_1CA948DD8();
    v13 = *(v12 - 8);
    MEMORY[0x1EEE9AC00](v12);
    v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 32))(v15, v9, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E6158];
    *(v16 + 16) = xmmword_1CA981310;
    *(v16 + 56) = v17;
    *(v16 + 32) = 0x7972657665;
    *(v16 + 40) = 0xE500000000000000;
    v18 = sub_1CA948DC8();
    *(v16 + 88) = v17;
    *(v16 + 64) = v18;
    *(v16 + 72) = v19;
LABEL_7:
    sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
    v28 = sub_1CA94CBB8();
    (*(v13 + 8))(v15, v12);
    return v28;
  }

  if (MEMORY[0x1E69698F8] && v11 == *MEMORY[0x1E69698F8])
  {
    (*(v7 + 96))(&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v20 = *v9;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC8, &qword_1CA985940) + 48);
    v12 = sub_1CA948DD8();
    v13 = *(v12 - 8);
    MEMORY[0x1EEE9AC00](v12);
    v15 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 32))(v15, &v9[v21], v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1CA97EDF0;
    v24 = MEMORY[0x1E69E6158];
    *(v23 + 32) = 6845550;
    *(v23 + 40) = 0xE300000000000000;
    v25 = MEMORY[0x1E69E6530];
    *(v23 + 56) = v24;
    *(v23 + 64) = v20;
    *(v23 + 120) = v24;
    *(v23 + 88) = v25;
    *(v23 + 96) = 0x7961446B656577;
    *(v23 + 104) = 0xE700000000000000;
    v26 = sub_1CA948DC8();
    *(v23 + 152) = v24;
    *(v23 + 128) = v26;
    *(v23 + 136) = v27;
    goto LABEL_7;
  }

  v50 = v3;
  v51 = v2;
  v29 = sub_1CA949C58();
  v49 = &v45;
  MEMORY[0x1EEE9AC00](v29);
  v30 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v45 - v30;
  v10(&v45 - v30, v1, v6);
  v32 = sub_1CA949F68();
  v48 = sub_1CA94CC28();
  if (os_log_type_enabled(v32, v48))
  {
    v33 = swift_slowAlloc();
    v46 = v32;
    v34 = v33;
    v35 = swift_slowAlloc();
    v47 = v35;
    v45 = &v45;
    v52 = v35;
    *v34 = 136315138;
    MEMORY[0x1EEE9AC00](v35);
    v10(&v45 - v30, &v45 - v30, v6);
    v36 = sub_1CA94C408();
    v38 = v37;
    v39 = *(v7 + 8);
    v39(v31, v6);
    v40 = sub_1CA26B54C(v36, v38, &v52);

    v41 = v34;
    *(v34 + 4) = v40;
    v42 = v46;
    _os_log_impl(&dword_1CA256000, v46, v48, "Unhandled value %s for Weekday serializedRepresentation", v41, 0xCu);
    v43 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1CCAA4BF0](v43, -1, -1);
    MEMORY[0x1CCAA4BF0](v41, -1, -1);
  }

  else
  {

    v39 = *(v7 + 8);
    v39(v31, v6);
  }

  (*(v50 + 8))(v5, v51);
  v39(v9, v6);
  return 0;
}

uint64_t sub_1CA3B36D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CA949F78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 == 0x656D69547478656ELL && a2 == 0xE800000000000000;
  if (v10 || (sub_1CA94D7F8() & 1) != 0)
  {
    v11 = MEMORY[0x1E69698C8];
LABEL_7:
    v12 = *v11;
    v13 = sub_1CA948E68();
    (*(*(v13 - 8) + 104))(a3, v12, v13);

    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
  }

  v15 = a1 == 0xD000000000000023 && 0x80000001CA9B0300 == a2;
  if (v15 || (sub_1CA94D7F8() & 1) != 0)
  {
    v11 = MEMORY[0x1E6969898];
    goto LABEL_7;
  }

  v16 = a1 == 0xD000000000000027 && 0x80000001CA9B02D0 == a2;
  if (v16 || (sub_1CA94D7F8() & 1) != 0)
  {
    v11 = MEMORY[0x1E69698A8];
    goto LABEL_7;
  }

  v17 = a1 == 0x746369727473 && a2 == 0xE600000000000000;
  if (v17 || (sub_1CA94D7F8() & 1) != 0)
  {
    v11 = MEMORY[0x1E69698B8];
    goto LABEL_7;
  }

  sub_1CA949C58();
  sub_1CA94C218();
  v18 = sub_1CA949F68();
  v19 = sub_1CA94CC28();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1CA26B54C(a1, a2, &v24);
    _os_log_impl(&dword_1CA256000, v18, v19, "Unhandled value %s for calendarMatchingPolicy", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1CCAA4BF0](v21, -1, -1);
    MEMORY[0x1CCAA4BF0](v20, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v22 = sub_1CA948E68();
  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v22);
}

uint64_t sub_1CA3B3A38@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CA949F78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v10 || (sub_1CA94D7F8() & 1) != 0)
  {
    v11 = MEMORY[0x1E69699D0];
LABEL_7:
    v12 = *v11;
    v13 = sub_1CA949068();
    (*(*(v13 - 8) + 104))(a3, v12, v13);

    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
  }

  v15 = a1 == 1953718636 && a2 == 0xE400000000000000;
  if (v15 || (sub_1CA94D7F8() & 1) != 0)
  {
    v11 = MEMORY[0x1E69699B8];
    goto LABEL_7;
  }

  sub_1CA949C58();
  sub_1CA94C218();
  v16 = sub_1CA949F68();
  v17 = sub_1CA94CC28();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1CA26B54C(a1, a2, &v22);
    _os_log_impl(&dword_1CA256000, v16, v17, "Unhandled value %s for calendarRepeatedPolicy", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1CCAA4BF0](v19, -1, -1);
    MEMORY[0x1CCAA4BF0](v18, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v20 = sub_1CA949068();
  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v20);
}

void static LNRecurrenceRuleBridge.recurrenceRuleBridge(with:)(uint64_t a1)
{
  v288 = a1;
  swift_unknownObjectRetain();
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    goto LABEL_187;
  }

  v2 = 0;
  v3 = v290;
  v4 = sub_1CA9490D8();
  OUTLINED_FUNCTION_1_0();
  v272 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v256 = v7;
  v271 = v248 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA9490B8();
  v279 = v3;
  v8 = sub_1CA323E28();
  v253 = v248;
  if (v8)
  {
    v290 = v8;
    v11 = OUTLINED_FUNCTION_16_10(v8, v9, v10, MEMORY[0x1E6969088]);
    if (v11)
    {
      v12 = v288;
      v1 = v289;
      v13 = v256;
      MEMORY[0x1EEE9AC00](v11);
      v14 = v248 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1CA9487B8();
      swift_allocObject();
      sub_1CA9487A8();
      sub_1CA3B6C98(&qword_1EC444BA8, MEMORY[0x1EEE78AC0]);
      sub_1CA948798();
      v15 = v271;
      v16 = v272;
      (*(v272 + 8))(v271, v4);

      sub_1CA266F2C(v12, v1);
      (*(v16 + 32))(v15, v14, v4);
      v2 = 0;
    }
  }

  v17 = 0x6854664F73796164;
  v18 = sub_1CA323E28();
  v262 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v288 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25(v19))
    {
      v20 = v290;
      v21 = sub_1CA25B410(v290);
      if (v21)
      {
        v1 = v21;
        v283 = 0;
        OUTLINED_FUNCTION_4_23(v21, MEMORY[0x1E69E7CC0]);
        if ((v1 & 0x8000000000000000) != 0)
        {
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        v22 = 0;
        v23 = v288;
        do
        {
          v24 = v23;
          if ((v20 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1CCAA22D0](v22, v20);
          }

          else
          {
            v25 = *(v20 + 8 * v22 + 32);
          }

          v26 = v25;
          v27 = [v25 integerValue];

          v23 = v24;
          v288 = v24;
          v29 = *(v24 + 16);
          v28 = *(v24 + 24);
          if (v29 >= v28 >> 1)
          {
            v30 = OUTLINED_FUNCTION_5_20(v28);
            sub_1CA2B8E70(v30, v29 + 1, 1);
            v23 = v288;
          }

          ++v22;
          *(v23 + 16) = v29 + 1;
          *(v23 + 8 * v29 + 32) = v27;
        }

        while (v1 != v22);
        v262 = v23;

        v2 = v283;
        goto LABEL_20;
      }
    }

    v262 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:
  v31 = sub_1CA323E28();
  v261 = MEMORY[0x1E69E7CC0];
  v264 = v4;
  if (!v31)
  {
    goto LABEL_34;
  }

  v288 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
  if ((OUTLINED_FUNCTION_2_25(v32) & 1) == 0)
  {
    goto LABEL_33;
  }

  v33 = OUTLINED_FUNCTION_27_11();
  v34 = sub_1CA25B410(v33);
  if (!v34)
  {

LABEL_33:
    v261 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v35 = v34;
  OUTLINED_FUNCTION_4_23(v34, MEMORY[0x1E69E7CC0]);
  if (v35 < 0)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  OUTLINED_FUNCTION_23_9();
  do
  {
    if (v2)
    {
      v36 = MEMORY[0x1CCAA22D0](v1, 0x6854664F73796164);
    }

    else
    {
      v36 = *(8 * v1 + 0x6854664F73796184);
    }

    v37 = v36;
    [v36 integerValue];

    OUTLINED_FUNCTION_1_21();
    if (v39)
    {
      v41 = OUTLINED_FUNCTION_5_20(v38);
      OUTLINED_FUNCTION_31_7(v41);
    }

    ++v1;
    OUTLINED_FUNCTION_9_12();
  }

  while (v35 != v1);
  v261 = v40;

LABEL_34:
  v42 = sub_1CA948F18();
  v252 = v248;
  OUTLINED_FUNCTION_1_0();
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v49 = v248 - v48;
  sub_1CA948EF8();
  v50 = sub_1CA323E28();
  v286 = v248 - v48;
  if (v50)
  {
    v17 = v50;
    v51 = MEMORY[0x1EEE9AC00](v50);
    sub_1CA3B255C(v51);
    swift_unknownObjectRelease();
    (*(v44 + 8))(v286, v42);
    (*(v44 + 32))(v286, v248 - v48, v42);
    v49 = v286;
  }

  v274 = v46;
  sub_1CA949038();
  v251 = v248;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_8_9(v248);
  OUTLINED_FUNCTION_21_9(&v291);
  v267 = v53;
  v273 = v54;
  v55();
  v56 = sub_1CA323E28();
  if (v56)
  {
    v17 = v56;
    v57 = objc_opt_self();
    v58 = OUTLINED_FUNCTION_36_6(v57);
    if (v58)
    {
      v59 = v58;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BA0, &qword_1CA985920);
      v46 = v248;
      OUTLINED_FUNCTION_18_0(v60);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v61);
      v63 = v248 - v62;
      [v59 integerValue];
      sub_1CA949018();
      swift_unknownObjectRelease();
      v17 = v273;
      if (__swift_getEnumTagSinglePayload(v63, 1, v273) == 1)
      {
        sub_1CA30F7DC(v63, &qword_1EC444BA0, &qword_1CA985920);
      }

      else
      {
        OUTLINED_FUNCTION_20_9();
        v64(v267, v17);
        v65 = OUTLINED_FUNCTION_22_8();
        v66(v65, v63, v17);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v49 = v286;
  }

  v67 = sub_1CA323E28();
  v260 = MEMORY[0x1E69E7CC0];
  v284 = v44;
  if (v67)
  {
    v288 = v67;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25(v68))
    {
      v69 = OUTLINED_FUNCTION_27_11();
      v70 = sub_1CA25B410(v69);
      if (v70)
      {
        v71 = v70;
        OUTLINED_FUNCTION_4_23(v70, MEMORY[0x1E69E7CC0]);
        if (v71 < 0)
        {
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        OUTLINED_FUNCTION_23_9();
        do
        {
          if (v2)
          {
            v72 = MEMORY[0x1CCAA22D0](v46, v17);
          }

          else
          {
            v72 = *(v17 + 8 * v46 + 32);
          }

          v73 = v72;
          [v72 integerValue];

          OUTLINED_FUNCTION_1_21();
          if (v39)
          {
            v76 = OUTLINED_FUNCTION_5_20(v74);
            OUTLINED_FUNCTION_31_7(v76);
          }

          v46 = (v46 + 1);
          OUTLINED_FUNCTION_9_12();
        }

        while (v71 != v46);
        v260 = v75;

        v44 = v284;
      }

      else
      {

        v260 = MEMORY[0x1E69E7CC0];
      }

      v49 = v286;
    }

    else
    {
      v260 = MEMORY[0x1E69E7CC0];
    }
  }

  if (sub_1CA323E28())
  {
    v77 = objc_opt_self();
    v78 = OUTLINED_FUNCTION_36_6(v77);
    if (v78)
    {
      v249 = [v78 integerValue];
    }

    else
    {
      v249 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v249 = 1;
  }

  sub_1CA948E68();
  v250 = v248;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_8_9(v248);
  OUTLINED_FUNCTION_21_9(&v287);
  v266 = v80;
  v270 = v81;
  v82();
  v83 = sub_1CA323E28();
  v86 = v2;
  if (v83)
  {
    v290 = v83;
    if (OUTLINED_FUNCTION_16_10(v83, v84, v85, MEMORY[0x1E69E6158]))
    {
      v87 = v288;
      v88 = v289;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B98, &qword_1CA985918);
      v46 = v248;
      OUTLINED_FUNCTION_18_0(v89);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v90);
      OUTLINED_FUNCTION_12_10();
      sub_1CA3B36D0(v87, v88, v91);

      v92 = OUTLINED_FUNCTION_80();
      v93 = v270;
      if (__swift_getEnumTagSinglePayload(v92, v94, v270) == 1)
      {
        sub_1CA30F7DC(v2, &qword_1EC444B98, &qword_1CA985918);
      }

      else
      {
        OUTLINED_FUNCTION_20_9();
        v95(v266, v93);
        v96 = OUTLINED_FUNCTION_22_8();
        v97(v96, v2, v93);
      }

      v49 = v286;
      v86 = v2;
    }
  }

  v98 = sub_1CA323E28();
  v259 = MEMORY[0x1E69E7CC0];
  if (v98)
  {
    v288 = v98;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25(v99))
    {
      v100 = OUTLINED_FUNCTION_27_11();
      v101 = sub_1CA25B410(v100);
      if (v101)
      {
        v102 = v101;
        OUTLINED_FUNCTION_4_23(v101, MEMORY[0x1E69E7CC0]);
        if (v102 < 0)
        {
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        OUTLINED_FUNCTION_23_9();
        do
        {
          if (v2)
          {
            v103 = MEMORY[0x1CCAA22D0](v46, v86);
          }

          else
          {
            v103 = *(v86 + 8 * v46 + 32);
          }

          v104 = v103;
          [v103 integerValue];

          OUTLINED_FUNCTION_1_21();
          if (v39)
          {
            v107 = OUTLINED_FUNCTION_5_20(v105);
            OUTLINED_FUNCTION_31_7(v107);
          }

          v46 = (v46 + 1);
          OUTLINED_FUNCTION_9_12();
        }

        while (v102 != v46);
        v259 = v106;

        v86 = v2;
        v44 = v284;
        v49 = v286;
      }

      else
      {

        v259 = MEMORY[0x1E69E7CC0];
        v49 = v286;
        v86 = v2;
      }
    }

    else
    {
      v259 = MEMORY[0x1E69E7CC0];
    }
  }

  v108 = sub_1CA323E28();
  v263 = v42;
  if (v108)
  {
    v288 = v108;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80);
    if (OUTLINED_FUNCTION_2_25(v109))
    {
      v110 = OUTLINED_FUNCTION_27_11();
      v282 = sub_1CA25B410(v110);
      v111 = 0;
      v280 = v86;
      v277 = (v86 & 0xFFFFFFFFFFFFFF8);
      v278 = v86 & 0xC000000000000001;
      v281 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v282 == v111)
        {

          goto LABEL_115;
        }

        if (v278)
        {
          v112 = MEMORY[0x1CCAA22D0](v111, v280);
        }

        else
        {
          if (v111 >= v277[2])
          {
            goto LABEL_190;
          }

          v112 = *(v280 + 8 * v111 + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(v111, 1))
        {
          break;
        }

        v283 = v86;
        v113 = sub_1CA948F58();
        OUTLINED_FUNCTION_1_0();
        v115 = v114;
        MEMORY[0x1EEE9AC00](v116);
        OUTLINED_FUNCTION_6_0();
        v119 = (v118 - v117);
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B90, &qword_1CA985910);
        OUTLINED_FUNCTION_18_0(v120);
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v121);
        v123 = v248 - v122;
        v288 = v112;
        swift_unknownObjectRetain();
        if (OUTLINED_FUNCTION_29_9())
        {
          v276 = v248;
          v124 = v290;
          if (*(v290 + 16) && (v125 = sub_1CA271BF8(0x7865646E69, 0xE500000000000000), (v126 & 1) != 0) && (v127 = *(*(v124 + 56) + 8 * v125), v128 = objc_opt_self(), (v129 = OUTLINED_FUNCTION_36_6(v128)) != 0))
          {
            v269 = v129;
            v130 = *(v124 + 16);
            v275 = v127;
            swift_unknownObjectRetain();
            if (v130 && (sub_1CA271BF8(0x6F4D7061654C7369, 0xEB0000000068746ELL), (v131 & 1) != 0) && (v132 = objc_opt_self(), (v133 = OUTLINED_FUNCTION_36_6(v132)) != 0))
            {
              v265 = v133;
              swift_unknownObjectRetain();
              [v269 integerValue];
              [v265 BOOLValue];
              sub_1CA948F68();
              swift_unknownObjectRelease();
            }

            else
            {
              [v269 integerValue];
              sub_1CA948F68();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            v134 = 0;
            v49 = v286;
          }

          else
          {
            swift_unknownObjectRelease();

            v134 = 1;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v134 = 1;
        }

        __swift_storeEnumTagSinglePayload(v123, v134, 1, v113);
        if (__swift_getEnumTagSinglePayload(v123, 1, v113) == 1)
        {
          sub_1CA30F7DC(v123, &qword_1EC444B90, &qword_1CA985910);
          v86 = v283;
        }

        else
        {
          v135 = *(v115 + 32);
          v135(v119, v123, v113);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_32_6();
            sub_1CA2E5430();
            v281 = v140;
          }

          v86 = v283;
          v137 = *(v281 + 16);
          v136 = *(v281 + 24);
          if (v137 >= v136 >> 1)
          {
            OUTLINED_FUNCTION_64(v136);
            sub_1CA2E5430();
            v281 = v141;
          }

          *(v281 + 16) = v137 + 1;
          OUTLINED_FUNCTION_68_0();
          v135(v139 + v138 + *(v115 + 72) * v137, v119, v113);
          v49 = v286;
        }

        ++v111;
        v44 = v284;
      }

      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }
  }

  v281 = MEMORY[0x1E69E7CC0];
LABEL_115:
  sub_1CA949068();
  v248[1] = v248;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_8_9(v248);
  OUTLINED_FUNCTION_21_9(&v286);
  v265 = v143;
  v269 = v144;
  v145();
  v146 = sub_1CA323E28();
  if (v146)
  {
    v290 = v146;
    if (OUTLINED_FUNCTION_16_10(v146, v147, v148, MEMORY[0x1E69E6158]))
    {
      v149 = v288;
      v150 = v289;
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B88, &qword_1CA985908);
      OUTLINED_FUNCTION_18_0(v151);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v152);
      OUTLINED_FUNCTION_12_10();
      sub_1CA3B3A38(v149, v150, v153);

      v154 = OUTLINED_FUNCTION_80();
      v155 = v269;
      if (__swift_getEnumTagSinglePayload(v154, v156, v269) == 1)
      {
        sub_1CA30F7DC(v86, &qword_1EC444B88, &qword_1CA985908);
      }

      else
      {
        OUTLINED_FUNCTION_20_9();
        v157(v265, v155);
        v158 = OUTLINED_FUNCTION_22_8();
        v159(v158, v86, v155);
      }

      v49 = v286;
    }
  }

  v160 = sub_1CA323E28();
  v258 = MEMORY[0x1E69E7CC0];
  if (v160)
  {
    v288 = v160;
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25(v161))
    {
      v162 = v290;
      v163 = sub_1CA25B410(v290);
      if (v163)
      {
        v164 = v163;
        v165 = v86;
        OUTLINED_FUNCTION_4_23(v163, MEMORY[0x1E69E7CC0]);
        if (v164 < 0)
        {
LABEL_197:
          __break(1u);
          goto LABEL_198;
        }

        for (i = 0; i != v164; ++i)
        {
          if ((v162 & 0xC000000000000001) != 0)
          {
            v167 = MEMORY[0x1CCAA22D0](i, v162);
          }

          else
          {
            v167 = *(v162 + 8 * i + 32);
          }

          v168 = v167;
          [v167 integerValue];

          OUTLINED_FUNCTION_1_21();
          if (v39)
          {
            v171 = OUTLINED_FUNCTION_5_20(v169);
            OUTLINED_FUNCTION_31_7(v171);
          }

          OUTLINED_FUNCTION_9_12();
        }

        v258 = v170;

        v86 = v165;
        v44 = v284;
      }

      else
      {

        v258 = MEMORY[0x1E69E7CC0];
      }

      v49 = v286;
    }

    else
    {
      v258 = MEMORY[0x1E69E7CC0];
    }
  }

  v172 = sub_1CA323E28();
  v257 = MEMORY[0x1E69E7CC0];
  if (v172)
  {
    v288 = v172;
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25(v173))
    {
      v174 = v290;
      v175 = sub_1CA25B410(v290);
      if (v175)
      {
        v176 = v175;
        v177 = v86;
        OUTLINED_FUNCTION_4_23(v175, MEMORY[0x1E69E7CC0]);
        if (v176 < 0)
        {
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        for (j = 0; j != v176; ++j)
        {
          if ((v174 & 0xC000000000000001) != 0)
          {
            v179 = MEMORY[0x1CCAA22D0](j, v174);
          }

          else
          {
            v179 = *(v174 + 8 * j + 32);
          }

          v180 = v179;
          [v179 integerValue];

          OUTLINED_FUNCTION_1_21();
          if (v39)
          {
            v183 = OUTLINED_FUNCTION_5_20(v181);
            OUTLINED_FUNCTION_31_7(v183);
          }

          OUTLINED_FUNCTION_9_12();
        }

        v257 = v182;

        v86 = v177;
        v44 = v284;
      }

      else
      {

        v257 = MEMORY[0x1E69E7CC0];
      }

      v49 = v286;
    }

    else
    {
      v257 = MEMORY[0x1E69E7CC0];
    }
  }

  v184 = sub_1CA323E28();
  if (v184 && (v288 = v184, v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80), (OUTLINED_FUNCTION_2_25(v185) & 1) != 0))
  {
    v283 = v86;
    v186 = OUTLINED_FUNCTION_27_11();
    v187 = sub_1CA25B410(v186);
    v277 = v86;
    v278 = v187;
    v188 = 0;
    v275 = (v86 & 0xFFFFFFFFFFFFFF8);
    v276 = (v86 & 0xC000000000000001);
    v280 = MEMORY[0x1E69E7CC0];
    v189 = &unk_1EC444B80;
    while (v278 != v188)
    {
      if (v276)
      {
        v86 = MEMORY[0x1CCAA22D0](v188, v277);
      }

      else
      {
        if (v188 >= v275[2])
        {
          goto LABEL_192;
        }

        v86 = v277[v188 + 4];
        swift_unknownObjectRetain();
      }

      if (__OFADD__(v188, 1))
      {
        goto LABEL_191;
      }

      v190 = sub_1CA948FA8();
      v282 = v248;
      OUTLINED_FUNCTION_1_0();
      v192 = v191;
      MEMORY[0x1EEE9AC00](v193);
      OUTLINED_FUNCTION_6_0();
      v196 = (v195 - v194);
      v197 = __swift_instantiateConcreteTypeFromMangledNameV2(v189, &qword_1CA985900);
      OUTLINED_FUNCTION_18_0(v197);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v198);
      v199 = v189;
      v201 = v248 - v200;
      v288 = v86;
      swift_unknownObjectRetain();
      if (OUTLINED_FUNCTION_29_9())
      {
        v202 = v290;
      }

      else
      {
        v202 = 0;
      }

      sub_1CA3B2B0C(v202, v201);
      swift_unknownObjectRelease();

      if (__swift_getEnumTagSinglePayload(v201, 1, v190) == 1)
      {
        sub_1CA30F7DC(v201, v199, &qword_1CA985900);
        v189 = v199;
        v49 = v286;
      }

      else
      {
        v203 = v199;
        v204 = *(v192 + 32);
        v204(v196, v201, v190);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6();
          sub_1CA2E536C();
          v280 = v209;
        }

        v189 = v203;
        v206 = *(v280 + 16);
        v205 = *(v280 + 24);
        v86 = v206 + 1;
        if (v206 >= v205 >> 1)
        {
          OUTLINED_FUNCTION_64(v205);
          sub_1CA2E536C();
          v280 = v210;
        }

        *(v280 + 16) = v86;
        OUTLINED_FUNCTION_68_0();
        v204(v208 + v207 + *(v192 + 72) * v206, v196, v190);
        v49 = v286;
      }

      ++v188;
      v44 = v284;
    }
  }

  else
  {
    v280 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA323E28();
  OUTLINED_FUNCTION_158();

  v211 = MEMORY[0x1E69E7CC0];
  v212 = v274;
  if (!v86)
  {
    goto LABEL_185;
  }

  v288 = v86;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
  if ((OUTLINED_FUNCTION_2_25(v213) & 1) == 0)
  {
    goto LABEL_185;
  }

  v214 = v290;
  v215 = sub_1CA25B410(v290);
  v216 = v256;
  if (!v215)
  {

    goto LABEL_186;
  }

  v217 = v215;
  v288 = v211;
  sub_1CA2B8E70(0, v215 & ~(v215 >> 63), 0);
  if ((v217 & 0x8000000000000000) == 0)
  {
    v218 = 0;
    v219 = v288;
    do
    {
      if ((v214 & 0xC000000000000001) != 0)
      {
        v220 = MEMORY[0x1CCAA22D0](v218, v214);
      }

      else
      {
        v220 = *(v214 + 8 * v218 + 32);
      }

      v221 = v220;
      v222 = [v220 integerValue];

      v288 = v219;
      v224 = *(v219 + 16);
      v223 = *(v219 + 24);
      if (v224 >= v223 >> 1)
      {
        v225 = OUTLINED_FUNCTION_5_20(v223);
        sub_1CA2B8E70(v225, v224 + 1, 1);
        v219 = v288;
      }

      ++v218;
      *(v219 + 16) = v224 + 1;
      *(v219 + 8 * v224 + 32) = v222;
      v49 = v286;
      v212 = v274;
    }

    while (v217 != v218);

LABEL_185:
    v216 = v256;
LABEL_186:
    sub_1CA949058();
    v287 = v248;
    OUTLINED_FUNCTION_1_0();
    v284 = v227;
    v285 = v226;
    v282 = *(v228 + 64);
    MEMORY[0x1EEE9AC00](v226);
    OUTLINED_FUNCTION_13_11();
    v283 = v229;
    v278 = v230 - v229;
    v279 = v248;
    MEMORY[0x1EEE9AC00](v231);
    v232 = (*(v272 + 16))(v248 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0), v271, v264);
    v277 = v248;
    MEMORY[0x1EEE9AC00](v232);
    OUTLINED_FUNCTION_13_11();
    v235 = (*(v268 + 16))(v233 - v234, v267, v273);
    v276 = v248;
    MEMORY[0x1EEE9AC00](v235);
    v236 = (*(v44 + 16))(v248 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v263);
    v275 = v248;
    MEMORY[0x1EEE9AC00](v236);
    OUTLINED_FUNCTION_13_11();
    v239 = v255;
    v240 = (*(v255 + 16))(v237 - v238, v266, v270);
    MEMORY[0x1EEE9AC00](v240);
    OUTLINED_FUNCTION_13_11();
    v243 = v254;
    (*(v254 + 16))(v241 - v242, v265, v269);
    v244 = v278;
    sub_1CA948FD8();
    v245 = sub_1CA94CED8();
    MEMORY[0x1EEE9AC00](v245);
    v246 = v284;
    v247 = v285;
    (*(v284 + 16))(v248 - v283, v244, v285);
    sub_1CA94CEC8();
    (*(v246 + 8))(v244, v247);
    (*(v243 + 8))(v265, v269);
    (*(v239 + 8))(v266, v270);
    (*(v268 + 8))(v267, v273);
    (*(v44 + 8))(v286, v263);
    (*(v272 + 8))(v271, v264);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_100();
LABEL_187:
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_199:
  __break(1u);
}

id sub_1CA3B5A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  static LNRecurrenceRuleBridge.recurrenceRuleBridge(with:)(a3);
  v5 = v4;
  swift_unknownObjectRelease();

  return v5;
}

id sub_1CA3B5AE4(void *a1)
{
  v1 = a1;
  LNRecurrenceRuleBridge.serializedRepresentation.getter();
  v3 = v2;

  return v3;
}

void LNRecurrenceRuleBridge.serializedRepresentation.getter()
{
  v1 = sub_1CA949058();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BB0, &qword_1CA985928);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_10();
  sub_1CA94CEB8();
  v10 = OUTLINED_FUNCTION_80();
  if (__swift_getEnumTagSinglePayload(v10, v11, v1) == 1)
  {
    sub_1CA30F7DC(v0, &qword_1EC444BB0, &qword_1CA985928);
  }

  else
  {
    v192 = v3;
    v193 = v1;
    (*(v3 + 32))(v7, v0, v1);
    v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1E8();
    sub_1CA9487E8();
    swift_allocObject();
    v12 = sub_1CA9487D8();
    sub_1CA9490D8();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_6_0();
    sub_1CA948FE8();
    sub_1CA3B6C98(&qword_1EC444BB8, MEMORY[0x1EEE78AB8]);
    OUTLINED_FUNCTION_187();
    sub_1CA9487C8();
    v15 = v14;
    v16 = OUTLINED_FUNCTION_187();
    v17(v16);

    sub_1CA948BF8();
    v18 = OUTLINED_FUNCTION_158();
    sub_1CA266F2C(v18, v15);
    v19 = v12;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v20, v21, 0xE800000000000000, v22, v23);

    v24 = sub_1CA948E98();
    v25 = v24;
    v26 = MEMORY[0x1E69E7CC0];
    v200[0] = MEMORY[0x1E69E7CC0];
    v27 = *(v24 + 16);
    if (v27)
    {
      v28 = (v24 + 32);
      do
      {
        v29 = *v28++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          MEMORY[0x1CCAA1490]();
          OUTLINED_FUNCTION_11_12();
          v32 = *(v30 + 16);
          v31 = *(v30 + 24);
          if (v32 >= v31 >> 1)
          {
            OUTLINED_FUNCTION_64(v31);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_69();
          sub_1CA94C6E8();
        }

        --v27;
      }

      while (v27);
    }

    v196 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    sub_1CA94C648();
    OUTLINED_FUNCTION_158();

    v33 = v25;
    swift_isUniquelyReferenced_nonNull_native();
    v34 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v34, 0x6854664F73796164, v35, v36, v37);

    OUTLINED_FUNCTION_28_6();
    v38 = sub_1CA948E88();
    v200[0] = v26;
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = (v38 + 32);
      do
      {
        v41 = *v40++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          OUTLINED_FUNCTION_37_6();
          OUTLINED_FUNCTION_6_20();
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_64(v42);
            OUTLINED_FUNCTION_38_5(v44);
          }

          OUTLINED_FUNCTION_187();
          sub_1CA94C6E8();
        }

        --v39;
      }

      while (v39);
    }

    v45 = OUTLINED_FUNCTION_30_7();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v45, 0x6854664F73796164, 0xED00007261655965, v46, v200);

    v47 = v200[0];
    sub_1CA948F18();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v48);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_10_9();
    sub_1CA948F28();
    v49 = sub_1CA3B280C();
    v50 = OUTLINED_FUNCTION_69();
    v51(v50);
    if (v49)
    {
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v200[0] = v47;
      swift_getObjectType();
      v53 = OUTLINED_FUNCTION_14_13();
      sub_1CA32EB34(v53, 6581861, 0xE300000000000000, isUniquelyReferenced_nonNull_native, v54, v55);
      swift_unknownObjectRelease();
      v47 = v200[0];
    }

    v56 = sub_1CA949038();
    OUTLINED_FUNCTION_1_0();
    v58 = v57;
    MEMORY[0x1EEE9AC00](v59);
    OUTLINED_FUNCTION_6_0();
    v62 = v61 - v60;
    sub_1CA949048();
    v63 = sub_1CA949028();
    (*(v58 + 8))(v62, v56);
    v64 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v47;
    v191 = v64;
    sub_1CA32EA0C(v64, 0x636E657571657266, 0xE900000000000079, v65, v200);
    OUTLINED_FUNCTION_28_6();
    v66 = sub_1CA948F78();
    v200[0] = v26;
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = (v66 + 32);
      do
      {
        v69 = *v68++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          OUTLINED_FUNCTION_37_6();
          OUTLINED_FUNCTION_6_20();
          if (v43)
          {
            v71 = OUTLINED_FUNCTION_64(v70);
            OUTLINED_FUNCTION_38_5(v71);
          }

          OUTLINED_FUNCTION_187();
          sub_1CA94C6E8();
        }

        --v67;
      }

      while (v67);
    }

    v72 = OUTLINED_FUNCTION_30_7();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v72, 0x7372756F68, 0xE500000000000000, v73, v200);

    OUTLINED_FUNCTION_28_6();
    v74 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v74, 0x6C61767265746E69, 0xE800000000000000, v75, v200);

    v76 = v200[0];
    sub_1CA948E68();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v77);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_10_9();
    sub_1CA948EA8();
    v78 = sub_1CA3B1CA0();
    v79 = OUTLINED_FUNCTION_69();
    v80(v79);
    if (v78)
    {
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v200[0] = v76;
      v81 = OUTLINED_FUNCTION_14_13();
      sub_1CA32EA0C(v81, v82, v83, v84, v85);

      v76 = v200[0];
    }

    v86 = sub_1CA948FB8();
    v87 = v86;
    v200[0] = v26;
    v88 = *(v86 + 16);
    if (v88)
    {
      v89 = (v86 + 32);
      do
      {
        v90 = *v89++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          MEMORY[0x1CCAA1490]();
          OUTLINED_FUNCTION_11_12();
          v93 = *(v91 + 16);
          v92 = *(v91 + 24);
          if (v93 >= v92 >> 1)
          {
            OUTLINED_FUNCTION_64(v92);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_69();
          sub_1CA94C6E8();
        }

        --v88;
      }

      while (v88);
    }

    OUTLINED_FUNCTION_30_7();
    OUTLINED_FUNCTION_158();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v76;
    v94 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v94, v95, 0xE700000000000000, v96, v97);

    v98 = v200[0];
    v99 = sub_1CA948F98();
    v200[0] = v26;
    v100 = sub_1CA948F58();
    OUTLINED_FUNCTION_1_0();
    v102 = v101;
    MEMORY[0x1EEE9AC00](v103);
    OUTLINED_FUNCTION_6_0();
    v106 = v105 - v104;
    v107 = *(v99 + 16);
    v194 = v7;
    if (v107)
    {
      v189[2] = v189;
      v190 = v98;
      v108 = sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
      v110 = *(v102 + 16);
      v109 = v102 + 16;
      v198 = v110;
      v199 = v108;
      OUTLINED_FUNCTION_68_0();
      v189[1] = v99;
      v112 = v99 + v111;
      v113 = *(v109 + 56);
      v114 = (v109 - 8);
      v197 = xmmword_1CA97EDF0;
      do
      {
        v115 = v109;
        v198(v106, v112, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
        v116 = swift_allocObject();
        *(v116 + 16) = v197;
        v117 = MEMORY[0x1E69E6158];
        *(v116 + 56) = MEMORY[0x1E69E6158];
        *(v116 + 32) = 0x7865646E69;
        *(v116 + 40) = 0xE500000000000000;
        *(v116 + 64) = sub_1CA948F38();
        *(v116 + 120) = v117;
        *(v116 + 88) = MEMORY[0x1E69E6530];
        *(v116 + 96) = 0x6F4D7061654C7369;
        *(v116 + 104) = 0xEB0000000068746ELL;
        v118 = sub_1CA948F48();
        *(v116 + 152) = MEMORY[0x1E69E6370];
        *(v116 + 128) = v118 & 1;
        sub_1CA94CBB8();
        v119 = (*v114)(v106, v100);
        MEMORY[0x1CCAA1490](v119);
        OUTLINED_FUNCTION_11_12();
        v122 = *(v120 + 16);
        v121 = *(v120 + 24);
        if (v122 >= v121 >> 1)
        {
          OUTLINED_FUNCTION_64(v121);
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
        v112 += v113;
        --v107;
        v109 = v115;
      }

      while (v107);

      v7 = v194;
      v98 = v190;
    }

    else
    {
    }

    v123 = sub_1CA94C648();

    swift_unknownObjectRetain();
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v98;
    sub_1CA32EA0C(v123, 0x7368746E6F6DLL, 0xE600000000000000, v124, v200);

    v125 = v200[0];
    sub_1CA949068();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v126);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_10_9();
    sub_1CA948EB8();
    v127 = sub_1CA3B2150();
    v128 = OUTLINED_FUNCTION_69();
    v129(v128);
    if (v127)
    {
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v200[0] = v125;
      v130 = OUTLINED_FUNCTION_14_13();
      sub_1CA32EA0C(v130, 0xD000000000000012, v131, v132, v133);

      v125 = v200[0];
    }

    v134 = sub_1CA948FC8();
    v135 = v134;
    v200[0] = MEMORY[0x1E69E7CC0];
    v136 = *(v134 + 16);
    if (v136)
    {
      v137 = (v134 + 32);
      do
      {
        v138 = *v137++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          MEMORY[0x1CCAA1490]();
          OUTLINED_FUNCTION_11_12();
          v141 = *(v139 + 16);
          v140 = *(v139 + 24);
          if (v141 >= v140 >> 1)
          {
            OUTLINED_FUNCTION_64(v140);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_69();
          sub_1CA94C6E8();
        }

        --v136;
      }

      while (v136);
    }

    OUTLINED_FUNCTION_30_7();
    OUTLINED_FUNCTION_158();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v125;
    v142 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v142, v143, 0xE700000000000000, v144, v145);

    OUTLINED_FUNCTION_28_6();
    v146 = sub_1CA948E78();
    v147 = MEMORY[0x1E69E7CC0];
    v200[0] = MEMORY[0x1E69E7CC0];
    v148 = *(v146 + 16);
    if (v148)
    {
      v149 = (v146 + 32);
      do
      {
        v150 = *v149++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          OUTLINED_FUNCTION_37_6();
          OUTLINED_FUNCTION_6_20();
          if (v43)
          {
            v152 = OUTLINED_FUNCTION_64(v151);
            OUTLINED_FUNCTION_38_5(v152);
          }

          OUTLINED_FUNCTION_187();
          sub_1CA94C6E8();
        }

        --v148;
      }

      while (v148);
    }

    v153 = OUTLINED_FUNCTION_30_7();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v153, 0x7469736F50746573, 0xEC000000736E6F69, v154, v200);

    v155 = v200[0];
    v156 = sub_1CA949008();
    v200[0] = v147;
    v157 = sub_1CA948FA8();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v158);
    OUTLINED_FUNCTION_6_0();
    v162 = v161 - v160;
    v163 = *(v156 + 16);
    if (v163)
    {
      *&v197 = v189;
      v164 = *(v159 + 16);
      v198 = v155;
      v199 = v164;
      OUTLINED_FUNCTION_68_0();
      v190 = v156;
      v167 = v156 + v166;
      v168 = *(v165 + 56);
      v169 = (v165 - 8);
      do
      {
        v170 = v165;
        v199(v162, v167, v157);
        v171 = sub_1CA3B306C();
        v172 = (*v169)(v162, v157);
        if (v171)
        {
          MEMORY[0x1CCAA1490](v172);
          OUTLINED_FUNCTION_11_12();
          v175 = *(v173 + 16);
          v174 = *(v173 + 24);
          if (v175 >= v174 >> 1)
          {
            OUTLINED_FUNCTION_64(v174);
            sub_1CA94C698();
          }

          sub_1CA94C6E8();
        }

        v167 += v168;
        --v163;
        v165 = v170;
      }

      while (v163);

      v7 = v194;
      v155 = v198;
    }

    else
    {
    }

    v176 = sub_1CA94C648();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v155;
    v177 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v177, v178, 0xE800000000000000, v179, v180);

    OUTLINED_FUNCTION_28_6();
    v181 = sub_1CA948F88();
    v200[0] = MEMORY[0x1E69E7CC0];
    v182 = *(v181 + 16);
    if (v182)
    {
      v183 = (v181 + 32);
      do
      {
        v184 = *v183++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          OUTLINED_FUNCTION_37_6();
          OUTLINED_FUNCTION_6_20();
          if (v43)
          {
            v186 = OUTLINED_FUNCTION_64(v185);
            OUTLINED_FUNCTION_38_5(v186);
          }

          OUTLINED_FUNCTION_187();
          sub_1CA94C6E8();
        }

        --v182;
      }

      while (v182);
    }

    v187 = sub_1CA94C648();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v187, 0x736B656577, 0xE500000000000000, v188, v200);

    sub_1CA94C1A8();

    (*(v192 + 8))(v7, v193);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA3B6C98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CA9490D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1CA3B6D10()
{
  v168 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9B0340;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("play|podcast|show|library", 25);
  v6 = v5;
  v7 = sub_1CA94C438("play|podcast|show|library", 25);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v177 = v11;
  v174 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v159 - v174;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v175 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v176 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v173 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v159 - v173;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v172 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v167 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v170 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v166 = sub_1CA94C438("The podcast to be played", 24);
  *&v165 = v26;
  v27 = sub_1CA94C438("The podcast to be played", 24);
  v29 = v28;
  v169 = &v159;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v159 - v174;
  sub_1CA948D98();
  v31 = [v175 bundleURL];
  v171 = inited;
  MEMORY[0x1EEE9AC00](v31);
  v32 = v173;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v166, v165, v27, v29, 0, 0, v30, &v159 - v32);
  v34 = v172;
  *(v23 + 64) = v172;
  *(v23 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v166 = sub_1CA94C438("Plays a podcast using the Podcasts app. If no podcast is selected, resumes playback.", 84);
  *&v165 = v36;
  v164 = sub_1CA94C438("Plays a podcast using the Podcasts app. If no podcast is selected, resumes playback.", 84);
  v38 = v37;
  v169 = &v159;
  MEMORY[0x1EEE9AC00](v164);
  v39 = &v159 - v174;
  sub_1CA948D98();
  v40 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v166, v165, v164, v38, 0, 0, v39, &v159 - v32);
  *(v23 + 104) = v34;
  *(v23 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v170;
  v45 = sub_1CA6B3784(v43);
  v46 = v171;
  v171[20] = v45;
  v46[23] = v44;
  v46[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  v165 = xmmword_1CA9813C0;
  *(v47 + 16) = xmmword_1CA9813C0;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 48) = 1;
  *(v47 + 72) = v48;
  strcpy((v47 + 80), "ParameterKey");
  *(v47 + 93) = 0;
  *(v47 + 94) = -5120;
  strcpy((v47 + 96), "WFPodcastShow");
  *(v47 + 110) = -4864;
  *(v47 + 120) = MEMORY[0x1E69E6158];
  *(v47 + 128) = 0x7365707954;
  *(v47 + 136) = 0xE500000000000000;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 168) = v166;
  *(v47 + 144) = &unk_1F49F83F0;
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v46[25] = v50;
  v46[28] = v51;
  v46[29] = @"InputPassthrough";
  *(v46 + 240) = 1;
  v46[33] = v48;
  v46[34] = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438("Play Podcast (Action Name)", 26);
  v56 = v55;
  v57 = sub_1CA94C438("Play Podcast", 12);
  v59 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v159 - v174;
  sub_1CA948D98();
  v61 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v159 - v173;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  v65 = v171;
  v171[35] = v64;
  v65[38] = v172;
  v65[39] = @"Parameters";
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1CA981360;
  v169 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = v165;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000018;
  *(v66 + 48) = 0x80000001CA9B0430;
  v67 = MEMORY[0x1E69E6158];
  *(v66 + 64) = MEMORY[0x1E69E6158];
  *(v66 + 72) = @"Key";
  strcpy((v66 + 80), "WFPodcastShow");
  *(v66 + 94) = -4864;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Label";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v160 = v68;
  v159 = v69;
  v161 = v70;
  v71 = @"Parameters";
  v72 = sub_1CA94C438("Podcast (WFPodcastShow)", 23);
  v74 = v73;
  v75 = sub_1CA94C438("Podcast", 7);
  v77 = v76;
  *&v165 = &v159;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v159 - v174;
  sub_1CA948D98();
  v79 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v159 - v173;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v72, v74, v75, v77, 0, 0, v78, v80);
  *(v66 + 144) = v172;
  *(v66 + 120) = v82;
  _s3__C3KeyVMa_0(0);
  *&v165 = v83;
  v164 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v84 = sub_1CA94C1E8();
  v85 = sub_1CA2F864C(v84);
  *(v170 + 32) = v85;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1CA981370;
  *(v86 + 32) = v160;
  *(v86 + 40) = 0xD000000000000016;
  *(v86 + 48) = 0x80000001CA99C4A0;
  v87 = MEMORY[0x1E69E6158];
  v88 = v159;
  *(v86 + 64) = MEMORY[0x1E69E6158];
  *(v86 + 72) = v88;
  *(v86 + 80) = 0xD000000000000016;
  *(v86 + 88) = 0x80000001CA9B0470;
  v89 = v161;
  *(v86 + 104) = v87;
  *(v86 + 112) = v89;
  v90 = sub_1CA94C438("Episode Order (WFPodcastPlaybackOrder)", 38);
  v160 = v91;
  v161 = v90;
  v159 = sub_1CA94C438("Playback Order", 14);
  v93 = v92;
  v162 = &v159;
  MEMORY[0x1EEE9AC00](v159);
  v94 = &v159 - v174;
  sub_1CA948D98();
  v95 = v175;
  v96 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v173;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 120) = sub_1CA2F9F14(v161, v160, v159, v93, 0, 0, v94, &v159 - v97);
  *(v86 + 144) = v172;
  *(v86 + 152) = @"Description";
  v99 = @"Description";
  v100 = sub_1CA94C438("The order within a show of the episodes to play. By default, the order will match the order used in the Podcasts app.", 117);
  v160 = v101;
  v161 = v100;
  v159 = sub_1CA94C438("The order within a show of the episodes to play. By default, the order will match the order used in the Podcasts app.", 117);
  v103 = v102;
  v162 = &v159;
  MEMORY[0x1EEE9AC00](v159);
  v104 = v174;
  sub_1CA948D98();
  v105 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 160) = sub_1CA2F9F14(v161, v160, v159, v103, 0, 0, &v159 - v104, &v159 - v97);
  *(v86 + 184) = v172;
  *(v86 + 192) = @"Items";
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1CA981470;
  v107 = @"Items";
  v108 = sub_1CA94C438("Default (WFPodcastPlaybackOrder)", 32);
  v161 = v109;
  v162 = v108;
  v110 = sub_1CA94C438("Default", 7);
  v112 = v111;
  v163 = &v159;
  MEMORY[0x1EEE9AC00](v110);
  v113 = &v159 - v104;
  sub_1CA948D98();
  v114 = v175;
  v115 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v159 - v173;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v162, v161, v110, v112, 0, 0, v113, v116);
  v119 = v172;
  *(v172 + 32) = v118;
  v120 = sub_1CA94C438("Newest First (WFPodcastPlaybackOrder)", 37);
  v161 = v121;
  v162 = v120;
  v122 = sub_1CA94C438("Newest First", 12);
  v160 = v123;
  v163 = &v159;
  MEMORY[0x1EEE9AC00](v122);
  v124 = v174;
  sub_1CA948D98();
  v125 = [v114 bundleURL];
  v159 = &v159;
  MEMORY[0x1EEE9AC00](v125);
  v126 = v173;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 40) = sub_1CA2F9F14(v162, v161, v122, v160, 0, 0, &v159 - v124, &v159 - v126);
  v128 = sub_1CA94C438("Oldest First (WFPodcastPlaybackOrder)", 37);
  v161 = v129;
  v162 = v128;
  v130 = sub_1CA94C438("Oldest First", 12);
  v160 = v131;
  v163 = &v159;
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948D98();
  v132 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134 = sub_1CA2F9F14(v162, v161, v130, v160, 0, 0, &v159 - v124, &v159 - v126);
  v135 = v172;
  *(v172 + 48) = v134;
  *(v86 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v86 + 200) = v135;
  v136 = sub_1CA94C1E8();
  v137 = sub_1CA2F864C(v136);
  v138 = v170;
  *(v170 + 40) = v137;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v140 = v171;
  v171[40] = v138;
  v140[43] = v139;
  v140[44] = @"ParameterSummary";
  v141 = @"ParameterSummary";
  v142 = sub_1CA94C438("Play ${WFPodcastShow} (Parameter Summary)", 41);
  v144 = v143;
  v145 = sub_1CA94C438("Play ${WFPodcastShow}", 21);
  v147 = v146;
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948D98();
  v148 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = &v159 - v173;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v142, v144, v145, v147, 0, 0, &v159 - v124, v149);
  v152 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v153 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v154 = v171;
  v171[45] = v152;
  v154[48] = v153;
  v154[49] = @"RequiredResources";
  v154[50] = &unk_1F49F8430;
  v154[53] = v166;
  v154[54] = @"SessionConfiguration";
  v155 = @"RequiredResources";
  v156 = @"SessionConfiguration";
  v157 = sub_1CA94C1E8();
  v154[58] = v167;
  v154[55] = v157;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3B806C()
{
  v184 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ELL;
  *(inited + 48) = 0x80000001CA9B0660;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("script|safari|java|javascript|web page|webkit|browser|json|web|page|website", 75);
  v6 = v5;
  v7 = sub_1CA94C438("script|safari|java|javascript|web page|webkit|browser|json|web|page|website", 75);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v194 = v11;
  v190 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v174 - v190;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v189 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v192 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v193 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v174 - v193;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v191 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v187 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v186 = xmmword_1CA981350;
  *(v23 + 16) = xmmword_1CA981350;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("Safari web pages", 16);
  v182 = v27;
  v183 = v26;
  v28 = sub_1CA94C438("Safari web pages", 16);
  v181 = v29;
  v185 = &v174;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v174 - v190;
  sub_1CA948D98();
  v31 = v189;
  v32 = [v189 bundleURL];
  v188 = inited;
  MEMORY[0x1EEE9AC00](v32);
  v33 = v193;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v183, v182, v28, v181, 0, 0, v30, &v174 - v33);
  *(v23 + 64) = v191;
  *(v23 + 72) = @"DescriptionNote";
  v35 = @"DescriptionNote";
  v36 = sub_1CA94C438("Safari Web Page items are only available when running your shortcut as an Action Extension in Safari.", 101);
  v182 = v37;
  v183 = v36;
  v181 = sub_1CA94C438("Safari Web Page items are only available when running your shortcut as an Action Extension in Safari.", 101);
  v39 = v38;
  v185 = &v174;
  MEMORY[0x1EEE9AC00](v181);
  v40 = v190;
  sub_1CA948D98();
  v41 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 80) = sub_1CA2F9F14(v183, v182, v181, v39, 0, 0, &v174 - v40, &v174 - v33);
  *(v23 + 104) = v191;
  *(v23 + 112) = @"DescriptionResult";
  v43 = @"DescriptionResult";
  v44 = sub_1CA94C438("The output from the JavaScript (JSON)", 37);
  v182 = v45;
  v183 = v44;
  v46 = sub_1CA94C438("The output from the JavaScript (JSON)", 37);
  v48 = v47;
  v185 = &v174;
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948D98();
  v49 = v189;
  v50 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v174 - v193;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 120) = sub_1CA2F9F14(v183, v182, v46, v48, 0, 0, &v174 - v40, v51);
  v53 = v191;
  *(v23 + 144) = v191;
  *(v23 + 152) = @"DescriptionSummary";
  v54 = @"DescriptionSummary";
  v55 = sub_1CA94C438("Runs JavaScript on a Safari web page passed in as input", 55);
  v182 = v56;
  v183 = v55;
  v57 = sub_1CA94C438("Runs JavaScript on a Safari web page passed in as input", 55);
  v59 = v58;
  v185 = &v174;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v174 - v190;
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v174 - v193;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v183, v182, v57, v59, 0, 0, v60, v62);
  *(v23 + 184) = v53;
  *(v23 + 160) = v64;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v65 = sub_1CA94C1E8();
  v66 = v187;
  v67 = sub_1CA6B3784(v65);
  v68 = v188;
  v188[20] = v67;
  v68[23] = v66;
  v68[24] = @"DisabledOnPlatforms";
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v68[28] = v69;
  v70 = v69;
  v187 = v69;
  v68[25] = &unk_1F49F8520;
  v71 = @"DisabledOnPlatforms";
  v68[29] = sub_1CA94C368();
  v72 = MEMORY[0x1E69E6370];
  *(v68 + 240) = 1;
  v68[33] = v72;
  v68[34] = @"Input";
  v73 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v74 = swift_initStackObject();
  *(v74 + 16) = v186;
  *(v74 + 32) = 0x656C7069746C754DLL;
  *(v74 + 40) = 0xE800000000000000;
  *(v74 + 48) = 0;
  *(v74 + 72) = v73;
  strcpy((v74 + 80), "ParameterKey");
  *(v74 + 93) = 0;
  *(v74 + 94) = -5120;
  *(v74 + 96) = 0x7475706E494657;
  *(v74 + 104) = 0xE700000000000000;
  *(v74 + 120) = MEMORY[0x1E69E6158];
  *(v74 + 128) = 0x6465726975716552;
  *(v74 + 136) = 0xE800000000000000;
  *(v74 + 144) = 1;
  *(v74 + 168) = v73;
  *(v74 + 176) = 0x7365707954;
  v75 = v73;
  *(v74 + 216) = v70;
  *(v74 + 184) = 0xE500000000000000;
  *(v74 + 192) = &unk_1F49F8550;
  v76 = @"Input";
  v77 = sub_1CA94C1E8();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *&v186 = v78;
  v68[35] = v77;
  v68[38] = v78;
  v68[39] = @"InputPassthrough";
  *(v68 + 320) = 0;
  v68[43] = v73;
  v68[44] = @"Output";
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1CA9813C0;
  *(v79 + 32) = 0x656C7069746C754DLL;
  *(v79 + 40) = 0xE800000000000000;
  *(v79 + 48) = 0;
  *(v79 + 72) = v75;
  *(v79 + 80) = 0x614E74757074754FLL;
  *(v79 + 88) = 0xEA0000000000656DLL;
  v80 = @"InputPassthrough";
  v81 = @"Output";
  v82 = sub_1CA94C438("JavaScript Result (Default Output Name)", 39);
  v84 = v83;
  v85 = sub_1CA94C438("JavaScript Result", 17);
  v87 = v86;
  v185 = &v174;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v174 - v190;
  sub_1CA948D98();
  v89 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v174 - v193;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 96) = sub_1CA2F9F14(v82, v84, v85, v87, 0, 0, v88, v90);
  *(v79 + 120) = v191;
  *(v79 + 128) = 0x7365707954;
  *(v79 + 168) = v187;
  *(v79 + 136) = 0xE500000000000000;
  *(v79 + 144) = &unk_1F49F8580;
  v92 = MEMORY[0x1E69E6158];
  v93 = sub_1CA94C1E8();
  v94 = v188;
  v188[45] = v93;
  v94[48] = v186;
  v94[49] = @"ParameterCollapsingBehavior";
  v94[50] = 0x726576654ELL;
  v94[51] = 0xE500000000000000;
  v94[53] = v92;
  v94[54] = @"Parameters";
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v186 = swift_allocObject();
  *(v186 + 16) = xmmword_1CA981360;
  v185 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1CA981550;
  *(v95 + 32) = @"AutocapitalizationType";
  *(v95 + 40) = 1701736270;
  *(v95 + 48) = 0xE400000000000000;
  *(v95 + 64) = v92;
  *(v95 + 72) = @"Class";
  *(v95 + 80) = 0xD000000000000014;
  *(v95 + 88) = 0x80000001CA99B500;
  *(v95 + 104) = v92;
  *(v95 + 112) = @"DefaultValue";
  v181 = @"Class";
  v96 = @"ParameterCollapsingBehavior";
  v97 = @"Parameters";
  v98 = @"AutocapitalizationType";
  v99 = @"DefaultValue";
  v100 = sub_1CA94C438("Run JavaScript on Web Page (Description Summary)", 48);
  v102 = v101;
  v103 = sub_1CA94C438("var result = [];\n// Get all links from the page\nvar elements = document.querySelectorAll(a);\nfor (let element of elements) {\n    result.push({\n        url: element.href,\n        text: element.innerText\n    });\n}\n\n// Call completion to finish\ncompletion(result);", 267);
  v105 = v104;
  v180 = &v174;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v174 - v190;
  sub_1CA948D98();
  v107 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v174 - v193;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 120) = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  *(v95 + 144) = v191;
  *(v95 + 152) = @"DisableAutocorrection";
  *(v95 + 160) = 1;
  v110 = MEMORY[0x1E69E6370];
  *(v95 + 184) = MEMORY[0x1E69E6370];
  *(v95 + 192) = @"DisableAutoPeriods";
  *(v95 + 200) = 1;
  *(v95 + 224) = v110;
  *(v95 + 232) = @"DisableSmartDashes";
  *(v95 + 240) = 1;
  *(v95 + 264) = v110;
  *(v95 + 272) = @"DisableSmartQuotes";
  *(v95 + 280) = 1;
  *(v95 + 304) = v110;
  *(v95 + 312) = @"DisableTextReplacement";
  *(v95 + 320) = 0;
  *(v95 + 344) = v110;
  *(v95 + 352) = @"Key";
  strcpy((v95 + 360), "WFJavaScript");
  *(v95 + 373) = 0;
  *(v95 + 374) = -5120;
  *(v95 + 384) = MEMORY[0x1E69E6158];
  *(v95 + 392) = @"Label";
  v111 = @"Key";
  v112 = @"Label";
  v180 = v111;
  v179 = v112;
  v113 = @"DisableAutocorrection";
  v114 = @"DisableAutoPeriods";
  v115 = @"DisableSmartDashes";
  v116 = @"DisableSmartQuotes";
  v117 = @"DisableTextReplacement";
  v118 = sub_1CA94C438("JavaScript (WFJavaScript)", 25);
  v176 = v119;
  v177 = v118;
  v120 = sub_1CA94C438("JavaScript", 10);
  v122 = v121;
  v178 = &v174;
  MEMORY[0x1EEE9AC00](v120);
  v123 = v190;
  sub_1CA948D98();
  v124 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v174 - v193;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 400) = sub_1CA2F9F14(v177, v176, v120, v122, 0, 0, &v174 - v123, v125);
  *(v95 + 424) = v191;
  *(v95 + 432) = @"MonospaceFont";
  *(v95 + 440) = 1;
  v127 = MEMORY[0x1E69E6370];
  *(v95 + 464) = MEMORY[0x1E69E6370];
  *(v95 + 472) = @"Multiline";
  *(v95 + 480) = 1;
  *(v95 + 504) = v127;
  *(v95 + 512) = @"Placeholder";
  v176 = @"Placeholder";
  v128 = @"MonospaceFont";
  v129 = @"Multiline";
  v177 = sub_1CA94C438("JavaScript (WFJavaScript)", 25);
  v175 = v130;
  v131 = sub_1CA94C438("JavaScript", 10);
  v133 = v132;
  v178 = &v174;
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948D98();
  v134 = v189;
  v135 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v174 - v193;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v177, v175, v131, v133, 0, 0, &v174 - v123, v136);
  *(v95 + 544) = v191;
  *(v95 + 520) = v138;
  *(v95 + 552) = @"SyntaxHighlightingType";
  v139 = MEMORY[0x1E69E6158];
  *(v95 + 584) = MEMORY[0x1E69E6158];
  *(v95 + 560) = 0x697263536176614ALL;
  *(v95 + 568) = 0xEA00000000007470;
  _s3__C3KeyVMa_0(0);
  v178 = v140;
  v177 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v141 = @"SyntaxHighlightingType";
  v142 = sub_1CA94C1E8();
  v143 = sub_1CA2F864C(v142);
  *(v186 + 32) = v143;
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_1CA981370;
  *(v144 + 32) = v181;
  *(v144 + 40) = 0xD000000000000019;
  *(v144 + 48) = 0x80000001CA99B030;
  v145 = v180;
  *(v144 + 64) = v139;
  *(v144 + 72) = v145;
  *(v144 + 80) = 0x7475706E494657;
  *(v144 + 88) = 0xE700000000000000;
  v146 = v179;
  *(v144 + 104) = v139;
  *(v144 + 112) = v146;
  v147 = sub_1CA94C438("Web Page (WFInput)", 18);
  v180 = v148;
  v181 = v147;
  v179 = sub_1CA94C438("Web Page", 8);
  v150 = v149;
  v182 = &v174;
  MEMORY[0x1EEE9AC00](v179);
  v151 = v190;
  sub_1CA948D98();
  v152 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = v193;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v144 + 120) = sub_1CA2F9F14(v181, v180, v179, v150, 0, 0, &v174 - v151, &v174 - v153);
  v155 = v191;
  v156 = v176;
  *(v144 + 144) = v191;
  *(v144 + 152) = v156;
  v157 = sub_1CA94C438("Web Page (WFInput)", 18);
  v180 = v158;
  v181 = v157;
  v159 = sub_1CA94C438("Web Page", 8);
  v179 = v160;
  v182 = &v174;
  MEMORY[0x1EEE9AC00](v159);
  sub_1CA948D98();
  v161 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v144 + 160) = sub_1CA2F9F14(v181, v180, v159, v179, 0, 0, &v174 - v151, &v174 - v153);
  *(v144 + 184) = v155;
  *(v144 + 192) = @"RequiredResources";
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_1CA9813B0;
  v195 = 2;
  v196 = 1;
  v164 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v165 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v195);
  *(v163 + 32) = v166;
  *(v144 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v144 + 200) = v163;
  v167 = sub_1CA94C1E8();
  v168 = sub_1CA2F864C(v167);
  v169 = v186;
  *(v186 + 40) = v168;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v171 = v188;
  v188[55] = v169;
  v171[58] = v170;
  v171[59] = @"RequiredResources";
  v171[63] = v187;
  v171[60] = &unk_1F49F85E0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v172 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3B9608()
{
  v107 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9B09D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("notification|audio|music", 24);
  v6 = v5;
  v7 = sub_1CA94C438("notification|audio|music", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = v11;
  v113 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v100 - v113;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v108 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v111 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v112 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v100 - v112;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v109 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v106 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Plays the audio file passed as input, or a default notification sound if no audio file was passed.", 98);
  *&v104 = v24;
  v25 = sub_1CA94C438("Plays the audio file passed as input, or a default notification sound if no audio file was passed.", 98);
  v27 = v26;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v100 - v113;
  sub_1CA948D98();
  v29 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v100 - v112;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v104, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v109;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v106;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x80000001CA9B0A80;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v104 = xmmword_1CA981350;
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
  *(v37 + 144) = 0;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  *(v37 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 192) = &unk_1F49F8610;
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
  *(inited + 312) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438("Play Sound (Action Name)", 24);
  v48 = v47;
  v49 = sub_1CA94C438("Play Sound", 10);
  v51 = v50;
  v106 = &v100;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v100 - v113;
  sub_1CA948D98();
  v53 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v100 - v112;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v109;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v106 = swift_allocObject();
  *(v106 + 1) = xmmword_1CA9813B0;
  v105 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *(v56 + 16) = v104;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000019;
  *(v56 + 48) = 0x80000001CA99B030;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"Key";
  *(v56 + 80) = 0x7475706E494657;
  *(v56 + 88) = 0xE700000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Label";
  v58 = @"Parameters";
  v59 = @"Class";
  v60 = @"Key";
  v61 = @"Label";
  v62 = sub_1CA94C438("Sound File (WFInput)", 20);
  v102 = v63;
  v103 = v62;
  v64 = sub_1CA94C438("Sound File", 10);
  v101 = v65;
  *&v104 = &v100;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v100 - v113;
  sub_1CA948D98();
  v67 = v108;
  v68 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v100 - v112;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v103, v102, v64, v101, 0, 0, v66, v69);
  *(v56 + 144) = v109;
  *(v56 + 152) = @"Placeholder";
  v71 = @"Placeholder";
  v72 = sub_1CA94C438("Choose Variable (WFInput)", 25);
  v102 = v73;
  v103 = v72;
  v74 = sub_1CA94C438("Choose Variable", 15);
  v76 = v75;
  *&v104 = &v100;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v100 - v113;
  sub_1CA948D98();
  v78 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v100 - v112;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v103, v102, v74, v76, 0, 0, v77, v79);
  *(v56 + 184) = v109;
  *(v56 + 160) = v81;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v82 = sub_1CA94C1E8();
  v83 = sub_1CA2F864C(v82);
  v84 = v106;
  v106[4] = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v84;
  *(inited + 384) = v85;
  *(inited + 392) = @"ParameterSummary";
  v86 = @"ParameterSummary";
  v87 = sub_1CA94C438("Play sound (Parameter Summary)", 30);
  v89 = v88;
  v90 = sub_1CA94C438("Play sound", 10);
  v92 = v91;
  v109 = &v100;
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v100 - v113;
  sub_1CA948D98();
  v94 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v100 - v112;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v87, v89, v90, v92, 0, 0, v93, v95);
  v98 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 424) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v98;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3BA2E8()
{
  v137 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9B0B30;
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
  v144 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v145 = v11;
  v12 = &v130 - v144;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v143 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v141 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v142 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v130 - v142;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v140 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v139 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v136 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Passes the specified measurement (including number and unit) to the next action.", 80);
  v135 = v27;
  v28 = sub_1CA94C438("Passes the specified measurement (including number and unit) to the next action.", 80);
  v30 = v29;
  v138 = &v130;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v130 - v144;
  sub_1CA948D98();
  v32 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v130 - v142;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v135, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v140;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v139;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 0;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  *(inited + 240) = 1;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"LocallyProcessesData";
  v41 = @"Name";
  v42 = sub_1CA94C438("Measurement (Action Name)", 25);
  v44 = v43;
  v45 = sub_1CA94C438("Measurement", 11);
  v47 = v46;
  v139 = &v130;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v130 - v144;
  sub_1CA948D98();
  v49 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v130 - v142;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v42, v44, v45, v47, 0, 0, v48, v50);
  *(inited + 304) = v140;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x75736F6C63736944;
  *(v52 + 40) = 0xEF6C6576654C6572;
  *(v52 + 48) = 0x63696C627550;
  *(v52 + 56) = 0xE600000000000000;
  *(v52 + 72) = MEMORY[0x1E69E6158];
  *(v52 + 80) = 0x656C7069746C754DLL;
  *(v52 + 88) = 0xE800000000000000;
  *(v52 + 96) = 0;
  *(v52 + 120) = MEMORY[0x1E69E6370];
  *(v52 + 128) = 0x614E74757074754FLL;
  *(v52 + 136) = 0xEA0000000000656DLL;
  v53 = @"Output";
  v54 = sub_1CA94C438("Measurement (Default Output Name)", 33);
  v138 = v55;
  v56 = sub_1CA94C438("Measurement", 11);
  v58 = v57;
  v139 = &v130;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v130 - v144;
  sub_1CA948D98();
  v60 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v130 - v142;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v54, v138, v56, v58, 0, 0, v59, v61);
  v64 = v140;
  *(v52 + 144) = v63;
  *(v52 + 168) = v64;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v65;
  *(v52 + 192) = &unk_1F49F8680;
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v67;
  *(inited + 344) = v68;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v139 = swift_allocObject();
  *(v139 + 1) = xmmword_1CA981360;
  v138 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_1CA981370;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000019;
  *(v69 + 48) = 0x80000001CA9B0C40;
  *(v69 + 64) = v66;
  *(v69 + 72) = @"DefaultValue";
  *(v69 + 80) = 0x6874676E654CLL;
  *(v69 + 88) = 0xE600000000000000;
  *(v69 + 104) = v66;
  *(v69 + 112) = @"DisallowedVariableTypes";
  *(v69 + 120) = &unk_1F49F86B0;
  *(v69 + 144) = v65;
  *(v69 + 152) = @"Key";
  *(v69 + 160) = 0xD000000000000015;
  *(v69 + 168) = 0x80000001CA994540;
  *(v69 + 184) = v66;
  *(v69 + 192) = @"Label";
  v70 = @"Class";
  v71 = @"Key";
  v72 = @"Label";
  v130 = v70;
  v131 = v71;
  v132 = v72;
  v73 = @"Parameters";
  v74 = @"DefaultValue";
  v75 = @"DisallowedVariableTypes";
  v76 = sub_1CA94C438("Type (WFMeasurementUnitType)", 28);
  v133 = v77;
  v78 = sub_1CA94C438("Type", 4);
  v80 = v79;
  v134 = &v130;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v130 - v144;
  sub_1CA948D98();
  v82 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v130 - v142;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v76, v133, v78, v80, 0, 0, v81, v83);
  *(v69 + 224) = v140;
  *(v69 + 200) = v85;
  _s3__C3KeyVMa_0(0);
  v134 = v86;
  v133 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v87 = sub_1CA94C1E8();
  v88 = sub_1CA2F864C(v87);
  v139[4] = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1CA981400;
  *(v89 + 32) = @"AllowsNegativeNumbers";
  *(v89 + 40) = 1;
  v90 = v130;
  *(v89 + 64) = MEMORY[0x1E69E6370];
  *(v89 + 72) = v90;
  *(v89 + 80) = 0xD00000000000001CLL;
  *(v89 + 88) = 0x80000001CA9AC750;
  v91 = MEMORY[0x1E69E6158];
  v92 = v131;
  *(v89 + 104) = MEMORY[0x1E69E6158];
  *(v89 + 112) = v92;
  *(v89 + 120) = 0xD000000000000011;
  *(v89 + 128) = 0x80000001CA9B0C80;
  *(v89 + 144) = v91;
  *(v89 + 152) = @"KeyboardType";
  *(v89 + 160) = 0x506C616D69636544;
  *(v89 + 168) = 0xEA00000000006461;
  v93 = v132;
  *(v89 + 184) = v91;
  *(v89 + 192) = v93;
  v94 = @"AllowsNegativeNumbers";
  v95 = @"KeyboardType";
  v96 = sub_1CA94C438("Value (WFMeasurementUnit)", 25);
  v132 = v97;
  v98 = sub_1CA94C438("Value", 5);
  v100 = v99;
  v135 = &v130;
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v130 - v144;
  sub_1CA948D98();
  v102 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v130 - v142;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 200) = sub_1CA2F9F14(v96, v132, v98, v100, 0, 0, v101, v103);
  *(v89 + 224) = v140;
  *(v89 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v105 = swift_allocObject();
  *(v105 + 16) = v136;
  v106 = @"RequiredResources";
  v107 = MEMORY[0x1E69E6158];
  *(v105 + 32) = sub_1CA94C1E8();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v89 + 240) = v105;
  *(v89 + 264) = v108;
  *(v89 + 272) = @"TextAlignment";
  *(v89 + 304) = v107;
  *(v89 + 280) = 0x7468676952;
  *(v89 + 288) = 0xE500000000000000;
  v109 = @"TextAlignment";
  v110 = sub_1CA94C1E8();
  v111 = sub_1CA2F864C(v110);
  v112 = v139;
  v139[5] = v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v112;
  *(inited + 384) = v113;
  *(inited + 392) = @"ParameterSummary";
  v114 = @"ParameterSummary";
  v115 = sub_1CA94C438("${WFMeasurementUnitType}\n${WFMeasurementUnit} (Parameter Summary)", 65);
  v117 = v116;
  v118 = sub_1CA94C438("${WFMeasurementUnitType}\n${WFMeasurementUnit}", 45);
  v120 = v119;
  v140 = &v130;
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v130 - v144;
  sub_1CA948D98();
  v122 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v130 - v142;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v115, v117, v118, v120, 0, 0, v121, v123);
  v126 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v127 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v126;
  *(inited + 424) = v127;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v128 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3BB330()
{
  sub_1CA2ECC0C();
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
  *(inited + 152) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1CA9813C0;
  *(v7 + 32) = 0x656C7069746C754DLL;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 48) = 1;
  *(v7 + 72) = v6;
  *(v7 + 80) = 0x6465726975716552;
  *(v7 + 88) = 0xE800000000000000;
  *(v7 + 96) = 1;
  *(v7 + 120) = v6;
  *(v7 + 128) = 0x7365707954;
  *(v7 + 136) = 0xE500000000000000;
  *(v7 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v7 + 144) = &unk_1F49F87E0;
  v8 = @"Discoverable";
  v9 = @"Input";
  v10 = sub_1CA94C1E8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 160) = v10;
  *(inited + 184) = v11;
  *(inited + 192) = @"Name";
  *(inited + 224) = v1;
  *(inited + 200) = 0xD00000000000001CLL;
  *(inited + 208) = 0x80000001CA9B0D80;
  v12 = @"Name";
  v13 = sub_1CA94C368();
  *(inited + 264) = v1;
  *(inited + 232) = v13;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001CA994580;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3BB638()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
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
  v125 = v11;
  v126 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v112 - v126;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v122 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v124 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v112 - v123;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v19;
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
  v119 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionNote";
  v24 = @"DeletesInput";
  v25 = @"Description";
  v26 = @"DescriptionNote";
  v117 = sub_1CA94C438("This is a destructive and permanent action. You will be asked to confirm before reminders are removed.", 102);
  *&v116 = v27;
  v28 = sub_1CA94C438("This is a destructive and permanent action. You will be asked to confirm before reminders are removed.", 102);
  v115 = v29;
  v118 = &v112;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v112 - v126;
  sub_1CA948D98();
  v31 = v122;
  v32 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v123;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v117, v116, v28, v115, 0, 0, v30, &v112 - v33);
  v35 = v121;
  *(v23 + 64) = v121;
  *(v23 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v117 = sub_1CA94C438("Removes all reminders passed into the action from the lists they are contained in.", 82);
  *&v116 = v37;
  v115 = sub_1CA94C438("Removes all reminders passed into the action from the lists they are contained in.", 82);
  v39 = v38;
  v118 = &v112;
  MEMORY[0x1EEE9AC00](v115);
  v40 = &v112 - v126;
  sub_1CA948D98();
  v41 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v117, v116, v115, v39, 0, 0, v40, &v112 - v33);
  *(v23 + 104) = v35;
  *(v23 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v44 = sub_1CA94C1E8();
  v45 = v119;
  *(inited + 240) = sub_1CA6B3784(v44);
  *(inited + 264) = v45;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v46 = swift_initStackObject();
  v116 = xmmword_1CA981350;
  *(v46 + 16) = xmmword_1CA981350;
  *(v46 + 32) = 0x656C7069746C754DLL;
  *(v46 + 40) = 0xE800000000000000;
  *(v46 + 48) = 1;
  v47 = MEMORY[0x1E69E6370];
  *(v46 + 72) = MEMORY[0x1E69E6370];
  strcpy((v46 + 80), "ParameterKey");
  v115 = 0x80000001CA9B0EB0;
  *(v46 + 93) = 0;
  *(v46 + 94) = -5120;
  *(v46 + 96) = 0xD000000000000010;
  *(v46 + 104) = 0x80000001CA9B0EB0;
  *(v46 + 120) = MEMORY[0x1E69E6158];
  *(v46 + 128) = 0x6465726975716552;
  *(v46 + 136) = 0xE800000000000000;
  *(v46 + 144) = 1;
  *(v46 + 168) = v47;
  *(v46 + 176) = 0x7365707954;
  v48 = v47;
  *(v46 + 184) = 0xE500000000000000;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v46 + 216) = v119;
  *(v46 + 192) = &unk_1F49F8850;
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
  v54 = sub_1CA94C438("Remove Reminders (Action Name)", 30);
  v56 = v55;
  v57 = sub_1CA94C438("Remove Reminders", 16);
  v59 = v58;
  v118 = &v112;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v112 - v126;
  sub_1CA948D98();
  v61 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v112 - v123;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  *(inited + 384) = v121;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_allocObject();
  *(v64 + 16) = v116;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000019;
  *(v64 + 48) = 0x80000001CA99B030;
  v65 = MEMORY[0x1E69E6158];
  *(v64 + 64) = MEMORY[0x1E69E6158];
  *(v64 + 72) = @"Key";
  v66 = v115;
  *(v64 + 80) = 0xD000000000000010;
  *(v64 + 88) = v66;
  *(v64 + 104) = v65;
  *(v64 + 112) = @"Label";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438("Reminders (WFInputReminders)", 28);
  v114 = v72;
  v115 = v71;
  v73 = sub_1CA94C438("Reminders", 9);
  v113 = v74;
  *&v116 = &v112;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v112 - v126;
  sub_1CA948D98();
  v76 = v122;
  v77 = [v122 bundleURL];
  v112 = &v112;
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v112 - v123;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v115, v114, v73, v113, 0, 0, v75, v78);
  v80 = v121;
  *(v64 + 144) = v121;
  *(v64 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438("Reminders (WFInputReminders)", 28);
  v114 = v83;
  v115 = v82;
  v113 = sub_1CA94C438("Reminders", 9);
  v85 = v84;
  *&v116 = &v112;
  MEMORY[0x1EEE9AC00](v113);
  v86 = &v112 - v126;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v112 - v123;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v115, v114, v113, v85, 0, 0, v86, v88);
  *(v64 + 184) = v80;
  *(v64 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = sub_1CA94C1E8();
  v92 = sub_1CA2F864C(v91);
  v93 = v118;
  v118[4] = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v93;
  *(inited + 424) = v94;
  *(inited + 432) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438("Remove ${WFInputReminders} (Parameter Summary)", 46);
  v98 = v97;
  v99 = sub_1CA94C438("Remove ${WFInputReminders}", 26);
  v101 = v100;
  v121 = &v112;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v112 - v126;
  sub_1CA948D98();
  v103 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v112 - v123;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  v107 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v108 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v107;
  *(inited + 464) = v108;
  *(inited + 472) = @"RequiredResources";
  *(inited + 504) = v119;
  *(inited + 480) = &unk_1F49F8880;
  v109 = @"RequiredResources";
  *(inited + 512) = sub_1CA94C368();
  v110 = MEMORY[0x1E69E6158];
  *(inited + 544) = MEMORY[0x1E69E6158];
  *(inited + 520) = 0x7265646E696D6552;
  *(inited + 528) = 0xE800000000000000;
  *(inited + 552) = sub_1CA94C368();
  *(inited + 584) = v110;
  *(inited + 560) = 0xD00000000000001ALL;
  *(inited + 568) = 0x80000001CA9938C0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3BC4F4()
{
  OUTLINED_FUNCTION_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1CA94B728();
  v1[5] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA3BC5A0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for LinkValueTransformContext(0);
  (*(v2 + 16))(v1, v6 + *(v7 + 24), v3);
  DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(v4, v1, *(v6 + *(v7 + 28)), v5);

  OUTLINED_FUNCTION_3_6();

  return v8();
}

uint64_t sub_1CA3BC674()
{
  OUTLINED_FUNCTION_0();
  v0[28] = v1;
  v0[29] = v2;
  v3 = sub_1CA94AA78();
  v0[30] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[31] = v4;
  v0[32] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94AAB8();
  v0[33] = v5;
  OUTLINED_FUNCTION_12(v5);
  v0[34] = v6;
  v0[35] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445A90, &qword_1CA985978);
  v0[36] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[37] = v8;
  v0[38] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94AB28();
  v0[39] = v9;
  OUTLINED_FUNCTION_12(v9);
  v0[40] = v10;
  v0[41] = OUTLINED_FUNCTION_45();
  v11 = sub_1CA94AAF8();
  v0[42] = v11;
  OUTLINED_FUNCTION_12(v11);
  v0[43] = v12;
  v0[44] = OUTLINED_FUNCTION_45();
  v13 = sub_1CA94AB58();
  v0[45] = v13;
  OUTLINED_FUNCTION_12(v13);
  v0[46] = v14;
  v0[47] = OUTLINED_FUNCTION_45();
  v15 = sub_1CA94ABA8();
  v0[48] = v15;
  OUTLINED_FUNCTION_12(v15);
  v0[49] = v16;
  v0[50] = OUTLINED_FUNCTION_45();
  v17 = sub_1CA94AC18();
  v0[51] = v17;
  OUTLINED_FUNCTION_12(v17);
  v0[52] = v18;
  v0[53] = OUTLINED_FUNCTION_45();
  v19 = sub_1CA94AD98();
  v0[54] = v19;
  OUTLINED_FUNCTION_12(v19);
  v0[55] = v20;
  v0[56] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1CA3BC988()
{
  OUTLINED_FUNCTION_0();
  sub_1CA94ABB8();
  v1 = swift_task_alloc();
  *(v0 + 456) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3BCA20;
  v2 = OUTLINED_FUNCTION_33_7(*(v0 + 448));

  return sub_1CA6A3220(v2);
}

uint64_t sub_1CA3BCA20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = v4[56];
  v6 = v4[55];
  v7 = v4[54];
  v8 = *v1;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  *(v11 + 464) = v10;
  *(v11 + 472) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA3BCB7C()
{
  v144 = v0;
  v2 = v0[53];
  v3 = v0[51];
  (*(v0[52] + 16))(v2, v0[28], v3);
  v4 = OUTLINED_FUNCTION_3_3();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x1E69DADC0])
  {
    v7 = OUTLINED_FUNCTION_0_25();
    v8(v7);
    v9 = *v3;
    v143 = MEMORY[0x1E69E6370];
    LOBYTE(v141) = v9;
LABEL_11:
    v23 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v24 = &v141;
    v25 = v2;
LABEL_12:
    sub_1CA320AB4(v24, v25);
    goto LABEL_13;
  }

  if (v6 == *MEMORY[0x1E69DADB0])
  {
    v10 = OUTLINED_FUNCTION_0_25();
    v11(v10);
    v12 = *v3;
    v143 = MEMORY[0x1E69E6530];
    *&v141 = v12;
    goto LABEL_11;
  }

  if (v6 == *MEMORY[0x1E69DADE0])
  {
    v13 = OUTLINED_FUNCTION_0_25();
    v14(v13);
    v15 = *v3;
    v143 = MEMORY[0x1E69E63B0];
    *&v141 = v15;
    goto LABEL_11;
  }

  if (v6 == *MEMORY[0x1E69DADF8])
  {
    v16 = OUTLINED_FUNCTION_0_25();
    v17(v16);
    v141 = *v3;
    v142 = *(v3 + 16);
    type metadata accessor for Decimal(0);
    v143 = v18;
    goto LABEL_11;
  }

  if (v6 == *MEMORY[0x1E69DADF0])
  {
    v19 = OUTLINED_FUNCTION_0_25();
    v20(v19);
    v21 = *v3;
    v22 = *(v3 + 8);
    v143 = MEMORY[0x1E69E6158];
    *&v141 = v21;
    *(&v141 + 1) = v22;
    goto LABEL_11;
  }

  if (v6 == *MEMORY[0x1E69DADC8])
  {
    v28 = OUTLINED_FUNCTION_0_25();
    v29(v28);
    v30 = sub_1CA948CB8();
    OUTLINED_FUNCTION_1_0();
    v32 = v31;
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v33();
    v0[25] = v30;
    __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_9_13();
    v34();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v35 = v0 + 22;
LABEL_26:
    sub_1CA320AB4(v35, v2);
    (*(v32 + 8))(v1, v30);
LABEL_27:

    goto LABEL_13;
  }

  if (v6 == *MEMORY[0x1E69DAD80])
  {
    v36 = OUTLINED_FUNCTION_0_25();
    v37(v36);
    v30 = sub_1CA9488E8();
    OUTLINED_FUNCTION_1_0();
    v32 = v38;
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v39();
    v0[21] = v30;
    __swift_allocate_boxed_opaque_existential_1(v0 + 18);
    OUTLINED_FUNCTION_9_13();
    v40();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v35 = v0 + 18;
    goto LABEL_26;
  }

  if (v6 == *MEMORY[0x1E69DADB8])
  {
    v41 = OUTLINED_FUNCTION_0_25();
    v42(v41);
    v30 = sub_1CA948BA8();
    OUTLINED_FUNCTION_1_0();
    v32 = v43;
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v44();
    v0[17] = v30;
    __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    OUTLINED_FUNCTION_9_13();
    v45();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v35 = v0 + 14;
    goto LABEL_26;
  }

  if (v6 == *MEMORY[0x1E69DAD98])
  {
    v46 = OUTLINED_FUNCTION_0_25();
    v47(v46);
    v30 = sub_1CA948978();
    OUTLINED_FUNCTION_1_0();
    v32 = v48;
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v49();
    v0[13] = v30;
    __swift_allocate_boxed_opaque_existential_1(v0 + 10);
    OUTLINED_FUNCTION_9_13();
    v50();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v35 = v0 + 10;
    goto LABEL_26;
  }

  if (v6 == *MEMORY[0x1E69DAD60])
  {
    v51 = OUTLINED_FUNCTION_0_25();
    v52(v51);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
    OUTLINED_FUNCTION_1_0();
    v32 = v53;
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v54();
    v0[9] = v30;
    __swift_allocate_boxed_opaque_existential_1(v0 + 6);
    OUTLINED_FUNCTION_9_13();
    v55();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v35 = v0 + 6;
    goto LABEL_26;
  }

  if (v6 == *MEMORY[0x1E69DAD78])
  {
    v56 = OUTLINED_FUNCTION_14_1();
    v57(v56);
    v58 = OUTLINED_FUNCTION_46_0();
    v59(v58);
    v60 = swift_task_alloc();
    v0[60] = v60;
    *v60 = v0;
    v60[1] = sub_1CA3BD92C;
    OUTLINED_FUNCTION_33_7(v0[35]);
    OUTLINED_FUNCTION_99();

    return sub_1CA539600(v61);
  }

  if (v6 != *MEMORY[0x1E69DAD70])
  {
    if (v6 == *MEMORY[0x1E69DAE10])
    {
      v70 = v0[50];
      v71 = v0[48];
      v72 = v0[49];
      v73 = OUTLINED_FUNCTION_14_1();
      v74(v73);
      v75 = OUTLINED_FUNCTION_5_21();
      v76(v75);
      v77 = sub_1CA94AB98();
      v78 = &unk_1EC447E40;
      v79 = 0x1E695FC20;
LABEL_43:
      v143 = sub_1CA25B3D0(0, v78, v79);
      *&v141 = v77;
LABEL_44:
      v89 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
      OUTLINED_FUNCTION_34_7();
      sub_1CA320AB4(v90, v91);
      (*(v72 + 8))(v70, v71);
LABEL_13:
      OUTLINED_FUNCTION_1_22();

      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_99();

      __asm { BRAA            X2, X16 }
    }

    if (v6 == *MEMORY[0x1E69DADE8])
    {
      OUTLINED_FUNCTION_13_12();
      v72 = v0[46];
      v70 = v0[47];
      v71 = v0[45];
      v80 = OUTLINED_FUNCTION_14_1();
      v81(v80);
      v82 = OUTLINED_FUNCTION_5_21();
      v83(v82);
      v77 = sub_1CA94AB48();
      v78 = &qword_1EC444BF0;
      v79 = 0x1E696E940;
      goto LABEL_43;
    }

    if (v6 == *MEMORY[0x1E69DADD0])
    {
      OUTLINED_FUNCTION_13_12();
      v72 = v0[40];
      v70 = v0[41];
      v71 = v0[39];
      v84 = OUTLINED_FUNCTION_14_1();
      v85(v84);
      v86 = OUTLINED_FUNCTION_5_21();
      v87(v86);
      v88 = sub_1CA94AB18();
LABEL_42:
      v77 = v88;
      v78 = &qword_1EC441738;
      v79 = 0x1E696E840;
      goto LABEL_43;
    }

    if (v6 == *MEMORY[0x1E69DADA8])
    {
      OUTLINED_FUNCTION_13_12();
      v72 = v0[43];
      v70 = v0[44];
      v71 = v0[42];
      v92 = OUTLINED_FUNCTION_14_1();
      v93(v92);
      v94 = OUTLINED_FUNCTION_5_21();
      v95(v94);
      v96 = sub_1CA94A9C8();
      v143 = MEMORY[0x1E69E6158];
      *&v141 = v96;
      *(&v141 + 1) = v97;
      goto LABEL_44;
    }

    if (v6 == *MEMORY[0x1E69DAD90] || v6 == *MEMORY[0x1E69DAE08])
    {
      v98 = v0[58];
      v100 = v0[52];
      v99 = v0[53];
      v101 = v0[51];
      v102 = sub_1CA2FFC58();
      v103 = OUTLINED_FUNCTION_127(&type metadata for ToolKitValueTransformError, v102);
      OUTLINED_FUNCTION_35_6(v103, v104);
      swift_willThrow();

      (*(v100 + 8))(v99, v101);
      goto LABEL_50;
    }

    if (v6 == *MEMORY[0x1E69DAD88])
    {
      v107 = OUTLINED_FUNCTION_0_25();
      v108(v107);
      v30 = sub_1CA949058();
      OUTLINED_FUNCTION_1_0();
      v32 = v109;
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_4_24();
      v110();
      v0[5] = v30;
      __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      OUTLINED_FUNCTION_9_13();
      v111();
      objc_allocWithZone(MEMORY[0x1E69ACA90]);
      v35 = v0 + 2;
      goto LABEL_26;
    }

    if (v6 == *MEMORY[0x1E69DAD68])
    {
      OUTLINED_FUNCTION_13_12();
      v112 = OUTLINED_FUNCTION_14_1();
      v113(v112);
      v114 = sub_1CA948898();
      OUTLINED_FUNCTION_1_0();
      v116 = v115;
      v117 = swift_task_alloc();
      (*(v116 + 32))(v117, v2, v114);
      v118 = sub_1CA94CC88();
      v119 = swift_task_alloc();
      (*(v116 + 16))(v119, v117, v114);
      v120 = MEMORY[0x1CCAA1AA0](v119);

      v143 = v118;
      *&v141 = v120;
      v121 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
      OUTLINED_FUNCTION_34_7();
      sub_1CA320AB4(v122, v123);
      (*(v116 + 8))(v117, v114);
      goto LABEL_27;
    }

    if (v6 == *MEMORY[0x1E69DAE00])
    {
      OUTLINED_FUNCTION_13_12();
      v124 = OUTLINED_FUNCTION_14_1();
      v125(v124);
      v126 = *v2;
      v127 = v2[1];
      v128 = sub_1CA94CC88();
      v0[26] = v126;
      v0[27] = v127;
      v143 = v128;
      *&v141 = sub_1CA94CC78();
    }

    else
    {
      if (v6 == *MEMORY[0x1E69DAD58])
      {
        OUTLINED_FUNCTION_13_12();
        v72 = v0[37];
        v70 = v0[38];
        v71 = v0[36];
        v130 = OUTLINED_FUNCTION_14_1();
        v131(v130);
        v132 = OUTLINED_FUNCTION_5_21();
        v133(v132);
        v88 = sub_1CA94AD18();
        goto LABEL_42;
      }

      v134 = v0[58];
      if (v6 != *MEMORY[0x1E69DADD8])
      {
        v137 = v0[52];
        v136 = v0[53];
        v138 = v0[51];
        v139 = sub_1CA2FFC58();
        OUTLINED_FUNCTION_127(&type metadata for ToolKitValueTransformError, v139);
        *v140 = 0;
        swift_willThrow();

        (*(v137 + 8))(v136, v138);
LABEL_50:
        OUTLINED_FUNCTION_1_22();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_99();

        __asm { BRAA            X1, X16 }
      }

      v135 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v143 = sub_1CA25B3D0(0, &qword_1EC444BF8, 0x1E695DFB0);
      *&v141 = v135;
    }

    v129 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    OUTLINED_FUNCTION_34_7();
    goto LABEL_12;
  }

  v64 = OUTLINED_FUNCTION_14_1();
  v65(v64);
  v66 = OUTLINED_FUNCTION_46_0();
  v67(v66);
  v68 = swift_task_alloc();
  v0[63] = v68;
  *v68 = v0;
  v68[1] = sub_1CA3BDBC4;
  OUTLINED_FUNCTION_33_7(v0[32]);
  OUTLINED_FUNCTION_99();

  return sub_1CA309888();
}