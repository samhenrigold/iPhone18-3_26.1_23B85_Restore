id sub_1CA2F6338(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C1A8();

  v6 = [a3 createActionWithIdentifier:a1 serializedParameters:v5];

  return v6;
}

unint64_t sub_1CA2F63C4(uint64_t a1)
{
  result = sub_1CA2F63EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2F63EC()
{
  result = qword_1EC442038[0];
  if (!qword_1EC442038[0])
  {
    type metadata accessor for AppAssociatedShortcutsDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442038);
  }

  return result;
}

uint64_t dispatch thunk of AppAssociatedShortcutsDataSource.workflow(for:)()
{
  OUTLINED_FUNCTION_10_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_8(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AppAssociatedShortcutsDataSource.action(for:)()
{
  OUTLINED_FUNCTION_10_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_8(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AppAssociatedShortcutsLoader.loadItemsForBundleIdentifier(_:)()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  v9 = (*(v4 + 104) + **(v4 + 104));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v6[1] = sub_1CA2F68C4;

  return v9(v3, v1);
}

uint64_t sub_1CA2F68C4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v3 = v2;

  OUTLINED_FUNCTION_2_4();

  return v4(v0);
}

uint64_t dispatch thunk of AppAssociatedShortcutsLoader.action(for:)()
{
  OUTLINED_FUNCTION_10_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_8(v1);

  return v4(v3);
}

uint64_t sub_1CA2F6B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2F6B80(void *a1)
{
  v1 = [a1 associatedAppBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

id sub_1CA2F6C24()
{
  v105 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v104 = xmmword_1CA981450;
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6E656D6D6F434657;
  *(inited + 48) = 0xEF6E6F6974634174;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("note|explain", 12);
  v6 = v5;
  v7 = sub_1CA94C438("note|explain", 12);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = v11;
  v12 = &v98 - v110;
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
  v16 = &v98 - v108;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v106 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Appearance";
  *(inited + 120) = 0x746E656D6D6F43;
  *(inited + 128) = 0xE700000000000000;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  v103 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Appearance";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438("This action lets you explain how part of a shortcut works. When run, this action does nothing.", 94);
  v101 = v25;
  v26 = sub_1CA94C438("This action lets you explain how part of a shortcut works. When run, this action does nothing.", 94);
  v28 = v27;
  v102 = &v98;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v98 - v110;
  sub_1CA948D98();
  v30 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v98 - v108;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v101, v26, v28, 0, 0, v29, v31);
  *(v20 + 64) = v106;
  *(v20 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v103;
  *(inited + 160) = sub_1CA6B3784(v34);
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x7261656C43;
  *(inited + 208) = 0xE500000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000010;
  *(inited + 248) = 0x80000001CA9A0DD0;
  *(inited + 264) = v36;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 0x776F6C6C6559;
  *(inited + 288) = 0xE600000000000000;
  *(inited + 304) = v36;
  *(inited + 312) = @"InputPassthrough";
  v37 = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  *(inited + 344) = v37;
  *(inited + 352) = @"Name";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"IconSymbolColor";
  v41 = @"InputPassthrough";
  v42 = @"Name";
  v43 = sub_1CA94C438("Comment (Action Name)", 21);
  v45 = v44;
  v46 = sub_1CA94C438("Comment", 7);
  v48 = v47;
  v103 = &v98;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v98 - v110;
  sub_1CA948D98();
  v50 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v98 - v108;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  v101 = @"Parameters";
  *(inited + 384) = v106;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v103 = swift_allocObject();
  *(v103 + 1) = xmmword_1CA9813B0;
  v102 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v53 = swift_allocObject();
  *(v53 + 16) = v104;
  *&v104 = @"AutocapitalizationType";
  *(v53 + 32) = @"AutocapitalizationType";
  *(v53 + 40) = 0x65636E65746E6553;
  *(v53 + 48) = 0xE900000000000073;
  v100 = @"Class";
  v54 = MEMORY[0x1E69E6158];
  *(v53 + 64) = MEMORY[0x1E69E6158];
  *(v53 + 72) = @"Class";
  *(v53 + 80) = 0xD000000000000014;
  *(v53 + 88) = 0x80000001CA99B500;
  v99 = @"DisableAutoPeriods";
  *(v53 + 104) = v54;
  *(v53 + 112) = @"DisableAutoPeriods";
  *(v53 + 120) = 0;
  v55 = MEMORY[0x1E69E6370];
  *(v53 + 144) = MEMORY[0x1E69E6370];
  *(v53 + 152) = @"DisableSmartDashes";
  *(v53 + 160) = 0;
  *(v53 + 184) = v55;
  *(v53 + 192) = @"DisableSmartQuotes";
  *(v53 + 200) = 0;
  *(v53 + 224) = v55;
  *(v53 + 232) = @"DisableTextReplacement";
  *(v53 + 240) = 0;
  *(v53 + 264) = v55;
  *(v53 + 272) = @"DisallowedVariableTypes";
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 280) = &unk_1F49F3148;
  *(v53 + 304) = v56;
  *(v53 + 312) = @"ImportQuestionBehavior";
  *(v53 + 320) = 0x6E6564646948;
  *(v53 + 328) = 0xE600000000000000;
  v57 = MEMORY[0x1E69E6158];
  *(v53 + 344) = MEMORY[0x1E69E6158];
  *(v53 + 352) = @"Key";
  *(v53 + 360) = 0xD000000000000013;
  *(v53 + 368) = 0x80000001CA9A0E10;
  *(v53 + 384) = v57;
  *(v53 + 392) = @"Label";
  v58 = v101;
  v59 = v104;
  v60 = v100;
  v61 = v99;
  v62 = @"DisableSmartDashes";
  v63 = @"DisableSmartQuotes";
  v64 = @"DisableTextReplacement";
  v65 = @"DisallowedVariableTypes";
  v66 = @"ImportQuestionBehavior";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438("Comment (WFCommentActionText)", 29);
  v101 = v70;
  v71 = sub_1CA94C438("Comment", 7);
  v73 = v72;
  *&v104 = &v98;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v98 - v110;
  sub_1CA948D98();
  v75 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v98 - v108;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 400) = sub_1CA2F9F14(v69, v101, v71, v73, 0, 0, v74, v76);
  *(v53 + 424) = v106;
  *(v53 + 432) = @"Multiline";
  *(v53 + 440) = 1;
  *(v53 + 464) = MEMORY[0x1E69E6370];
  *(v53 + 472) = @"Placeholder";
  v78 = @"Multiline";
  v79 = @"Placeholder";
  v80 = sub_1CA94C438("Enter comment… (WFCommentActionText)", 38);
  v101 = v81;
  v82 = sub_1CA94C438("Enter comment…", 16);
  v84 = v83;
  *&v104 = &v98;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v98 - v110;
  sub_1CA948D98();
  v86 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v98 - v108;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v80, v101, v82, v84, 0, 0, v85, v87);
  *(v53 + 504) = v106;
  *(v53 + 480) = v89;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v90 = sub_1CA94C1E8();
  v91 = sub_1CA2F864C(v90);
  v92 = v103;
  v103[4] = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v92;
  *(inited + 424) = v93;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 440) = 1;
  v94 = MEMORY[0x1E69E6370];
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 472) = @"SnappingPassthrough";
  *(inited + 504) = v94;
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v95 = @"ResidentCompatible";
  v96 = @"SnappingPassthrough";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F7864()
{
  sub_1CA2ECC0C();
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0x65746F6D65525654;
  *(inited + 128) = 0xE800000000000000;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000012;
  *(inited + 168) = 0x80000001CA9A0EE0;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFParameter.ToolKitTypeIdentifierParameterError.hashValue.getter()
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t sub_1CA2F7AFC(uint64_t a1)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t static WFParameter.toolkitTypeIdentifier()@<X0>(void *a1@<X8>)
{
  type metadata accessor for WFAskLLMModelParameter();
  if (swift_dynamicCastMetatype())
  {
    v2 = swift_allocObject();
    v2[2] = sub_1CA94C3A8();
    v2[3] = v3;
    swift_getMetatypeMetadata();
    v2[4] = sub_1CA94C408();
    v2[5] = v4;
    *a1 = v2;
    v5 = *MEMORY[0x1E69DB098];
    v6 = sub_1CA94ADC8();
    return (*(*(v6 - 8) + 104))(a1, v5, v6);
  }

  else
  {
    sub_1CA2F7C50();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_1CA2F7C50()
{
  result = qword_1EC4442A8;
  if (!qword_1EC4442A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4442A8);
  }

  return result;
}

unint64_t sub_1CA2F7CA8()
{
  result = qword_1EC4442B0;
  if (!qword_1EC4442B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4442B0);
  }

  return result;
}

uint64_t _s35ToolKitTypeIdentifierParameterErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *_s35ToolKitTypeIdentifierParameterErrorOwst(_BYTE *result, int a2, int a3)
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

id sub_1CA2F7E30()
{
  v70 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9A0F10;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v72 = sub_1CA94C438("home|screen|SpringBoard", 23);
  v5 = v4;
  v6 = sub_1CA94C438("home|screen|SpringBoard", 23);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = v10;
  v11 = &v66 - v75;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v71 = v14;
  v73 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v66 - v73;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v72, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v72 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"Description";
  v69 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Navigates to the Home Screen.", 29);
  v67 = v23;
  v24 = sub_1CA94C438("Navigates to the Home Screen.", 29);
  v26 = v25;
  v68 = &v66;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v66 - v75;
  sub_1CA948D98();
  v28 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v66 - v73;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v22, v67, v24, v26, 0, 0, v27, v29);
  *(v19 + 64) = v72;
  *(v19 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v69;
  *(inited + 120) = sub_1CA6B3784(v32);
  *(inited + 144) = v33;
  *(inited + 152) = @"Name";
  v34 = @"Name";
  v35 = sub_1CA94C438("Go to Home Screen (Action Name)", 31);
  v68 = v36;
  v37 = sub_1CA94C438("Go to Home Screen", 17);
  v39 = v38;
  v69 = &v66;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v66 - v75;
  sub_1CA948D98();
  v41 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = v73;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 160) = sub_1CA2F9F14(v35, v68, v37, v39, 0, 0, v40, &v66 - v42);
  *(inited + 184) = v72;
  *(inited + 192) = @"ParameterSummary";
  v44 = @"ParameterSummary";
  v45 = sub_1CA94C438("Go to Home Screen (Parameter Summary)", 37);
  v69 = v46;
  v47 = sub_1CA94C438("Go to Home Screen", 17);
  v49 = v48;
  v72 = &v66;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v66 - v75;
  sub_1CA948D98();
  v51 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v45, v69, v47, v49, 0, 0, v50, &v66 - v42);
  v54 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v55 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 200) = v54;
  *(inited + 224) = v55;
  *(inited + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA981360;
  v77 = 3;
  v78 = 1;
  v57 = type metadata accessor for WFDeviceIdiomResource();
  v58 = objc_allocWithZone(v57);
  v59 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v77);
  *(v56 + 32) = v60;
  v77 = 2;
  v78 = 1;
  v61 = objc_allocWithZone(v57);
  WFDeviceIdiomResource.init(requirement:)(&v77);
  *(v56 + 40) = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 240) = v56;
  *(inited + 264) = v63;
  *(inited + 272) = @"RequiresUnlock";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v64 = @"RequiresUnlock";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F864C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s3__C3KeyVMa_0(0);
  OUTLINED_FUNCTION_0_12();
  sub_1CA2FA080(v2, v3, &unk_1CA980550);
  v4 = sub_1CA94C1A8();

  v5 = [v1 initWithDictionary_];

  return v5;
}

uint64_t static WFActionDefinitionRegistry.actionDefinitionForSearch()()
{
  v1 = sub_1CA949F78();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() searchActionEnabled])
  {
    v141 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_1CA981470;
    v149 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981350;
    v6 = MEMORY[0x1E69E6158];
    *(inited + 32) = @"Class";
    *(inited + 40) = 0xD000000000000014;
    *(inited + 48) = 0x80000001CA99B500;
    *(inited + 64) = v6;
    *(inited + 72) = @"Key";
    *(inited + 80) = 0x547475706E494657;
    *(inited + 88) = 0xEB00000000747865;
    *(inited + 104) = v6;
    *(inited + 112) = @"Label";
    v7 = @"Class";
    v8 = @"Key";
    v9 = v7;
    v10 = v8;
    v11 = @"Label";
    v143 = v9;
    v142 = v10;
    v140 = v11;
    sub_1CA94C438("Text (WFInputText)", 18);
    v148 = v12;
    sub_1CA94C438("Text", 4);
    v13 = sub_1CA948E58();
    v145 = &v136;
    MEMORY[0x1EEE9AC00](v13 - 8);
    v153 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
    v154 = v14;
    v15 = &v136 - v153;
    sub_1CA948D98();
    if (qword_1EDB9F5F0 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDB9F690;
    v147 = qword_1EDB9F690;
    v17 = [qword_1EDB9F690 bundleURL];
    v18 = sub_1CA948BA8();
    v151 = *(*(v18 - 8) + 64);
    MEMORY[0x1EEE9AC00](v18 - 8);
    v152 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
    OUTLINED_FUNCTION_1_12();
    sub_1CA948B68();

    v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    v27 = sub_1CA2F9F14(v21, v22, v23, v24, v25, v26, v15, v2);
    v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
    *(inited + 120) = v27;
    *(inited + 144) = v28;
    *(inited + 152) = @"Placeholder";
    v148 = v28;
    v29 = @"Placeholder";
    sub_1CA94C438("Text (WFInputText)", 18);
    v144 = v30;
    v31 = sub_1CA94C438("Text", 4);
    v33 = v32;
    v145 = &v136;
    MEMORY[0x1EEE9AC00](v31);
    OUTLINED_FUNCTION_5_12();
    v36 = v34 - v35;
    sub_1CA948D98();
    v37 = [v16 bundleURL];
    MEMORY[0x1EEE9AC00](v37);
    OUTLINED_FUNCTION_4_9();
    v40 = v38 - v39;
    sub_1CA948B68();

    v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    v48 = sub_1CA2F9F14(v42, v43, v44, v45, v46, v47, v36, v40);
    *(inited + 184) = v28;
    *(inited + 160) = v48;
    _s3__C3KeyVMa_0(0);
    v145 = v49;
    OUTLINED_FUNCTION_0_12();
    v144 = sub_1CA2FA080(v50, v51, &unk_1CA980550);
    v52 = sub_1CA94C1E8();
    v53 = sub_1CA2F864C(v52);
    *(v150 + 32) = v53;
    v54 = swift_initStackObject();
    v138 = xmmword_1CA981400;
    *(v54 + 16) = xmmword_1CA981400;
    OUTLINED_FUNCTION_6_5();
    v55[4] = v143;
    v55[5] = 0xD00000000000002ALL;
    v55[6] = v56;
    v55[8] = MEMORY[0x1E69E6158];
    v55[9] = v142;
    OUTLINED_FUNCTION_6_5();
    v58[10] = v57 + 11;
    v58[11] = v59;
    v58[13] = v60;
    v58[14] = @"DefaultValue";
    v58[15] = 7105601;
    v58[16] = 0xE300000000000000;
    v61 = v140;
    v58[18] = v60;
    v58[19] = v61;
    v137 = @"DefaultValue";
    sub_1CA94C438("Result Type (WFSpotlightSearchResultType)", 41);
    v62 = sub_1CA94C438("Type", 4);
    v140 = &v136;
    MEMORY[0x1EEE9AC00](v62);
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_1_12();
    sub_1CA948D98();
    v63 = [v147 bundleURL];
    MEMORY[0x1EEE9AC00](v63);
    OUTLINED_FUNCTION_4_9();
    v66 = v64 - v65;
    sub_1CA948B68();

    v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    *(v54 + 160) = sub_1CA2F9F14(v68, v69, v70, v71, v72, v73, v33, v66);
    *(v54 + 184) = v148;
    *(v54 + 192) = @"DisallowedVariableTypes";
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    v140 = v74;
    *(v54 + 200) = &unk_1F49F3208;
    *(v54 + 224) = v74;
    *(v54 + 232) = @"AllowsMultipleValues";
    v75 = MEMORY[0x1E69E6370];
    *(v54 + 240) = 1;
    *(v54 + 264) = v75;
    *(v54 + 272) = @"AllowsEmptyValue";
    *(v54 + 304) = v75;
    *(v54 + 280) = 0;
    v139 = @"DisallowedVariableTypes";
    v76 = @"AllowsMultipleValues";
    v77 = @"AllowsEmptyValue";
    v78 = sub_1CA94C1E8();
    v79 = sub_1CA2F864C(v78);
    *(v150 + 40) = v79;
    v80 = swift_initStackObject();
    *(v80 + 16) = v138;
    OUTLINED_FUNCTION_6_5();
    v81[4] = v143;
    v81[5] = 0xD000000000000012;
    v81[6] = v82;
    v83 = v142;
    v81[8] = MEMORY[0x1E69E6158];
    v81[9] = v83;
    OUTLINED_FUNCTION_6_5();
    v85[10] = v84 + 6;
    v85[11] = v86;
    v87 = v137;
    v85[13] = v88;
    v85[14] = v87;
    v89 = MEMORY[0x1E69E6530];
    v85[15] = 5;
    v85[18] = v89;
    v85[19] = @"MinimumValue";
    v85[20] = 1;
    v85[23] = v89;
    v85[24] = @"StepperDescription";
    v90 = @"MinimumValue";
    v91 = @"StepperDescription";
    sub_1CA94C438("Number of Results (WFSpotlightSearchLimit)", 42);
    v92 = sub_1CA94C438("Number of Results", 17);
    v146 = &v136;
    MEMORY[0x1EEE9AC00](v92);
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_1_12();
    sub_1CA948D98();
    v93 = [v147 bundleURL];
    MEMORY[0x1EEE9AC00](v93);
    OUTLINED_FUNCTION_4_9();
    v96 = v94 - v95;
    sub_1CA948B68();

    v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    *(v80 + 200) = sub_1CA2F9F14(v98, v99, v100, v101, v102, v103, v33, v96);
    *(v80 + 224) = v148;
    *(v80 + 232) = @"StepperNoun";
    v104 = @"StepperNoun";
    v105 = sub_1CA94C438("Get %d Items", v136);
    v107 = v106;
    v146 = v106;
    v159 = 0;
    v160 = 0xE000000000000000;
    sub_1CA94D408();

    v159 = v105;
    v160 = v107;
    v157 = 10;
    v158 = 0xE100000000000000;
    v155 = 32;
    v156 = 0xE100000000000000;
    sub_1CA27BAF0();
    v159 = sub_1CA94D1B8();
    v160 = v108;
    v109 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
    MEMORY[0x1EEE9AC00](v109);
    OUTLINED_FUNCTION_5_12();
    v112 = v110 - v111;
    sub_1CA948D98();
    v113 = [v147 bundleURL];
    MEMORY[0x1EEE9AC00](v113);
    OUTLINED_FUNCTION_4_9();
    v116 = v114 - v115;
    sub_1CA948B68();

    v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    *(v80 + 240) = sub_1CA2F9F14(v118, v119, v120, v121, v122, v123, v112, v116);
    v125 = v139;
    v124 = v140;
    *(v80 + 264) = v148;
    *(v80 + 272) = v125;
    *(v80 + 304) = v124;
    *(v80 + 280) = &unk_1F49F3248;
    v126 = sub_1CA94C1E8();
    v127 = sub_1CA2F864C(v126);
    v128 = v150;
    *(v150 + 48) = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442B8, &qword_1CA982DA8);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1CA981310;
    *(v129 + 32) = @"Watch";
    v130 = swift_allocObject();
    *(v130 + 16) = v129;
    *(v130 + 24) = v128;
    v131 = @"Watch";
    static WFActionDefinitionRegistry.register(_:_:)(0xD000000000000023, 0x80000001CA999F00, sub_1CA2FA078, v130);
  }

  else
  {
    sub_1CA949C58();
    v133 = sub_1CA949F68();
    v134 = sub_1CA94CC08();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_1CA256000, v133, v134, "search action feature flag is not enabled", v135, 2u);
      MEMORY[0x1CCAA4BF0](v135, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

id sub_1CA2F92FC(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  v110 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A10F0;
  *(inited + 64) = v3;
  *(inited + 72) = @"Description";
  v108 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1CA97EDF0;
  *(v4 + 32) = @"DescriptionSummary";
  v5 = @"ActionClass";
  v6 = @"Description";
  v7 = @"DescriptionSummary";
  v111 = sub_1CA94C438("Searches for content in the system that matches the specified text.", 67);
  v112 = v8;
  v9 = sub_1CA94C438("Searches for content in the system that matches the specified text.", 67);
  *&v107 = v10;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = v12;
  v114 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (&v105 - v114);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB9F690;
  v116 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v115 = v17;
  v113 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v105 - v113;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v111, v112, v9, v107, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v4 + 40) = v20;
  *(v4 + 64) = v21;
  *(v4 + 72) = @"DescriptionResult";
  v112 = v21;
  v22 = @"DescriptionResult";
  v23 = sub_1CA94C438("The content that matches the search criteria.", 45);
  v106 = v24;
  *&v107 = v23;
  v25 = sub_1CA94C438("The content that matches the search criteria.", 45);
  v27 = v26;
  v111 = &v105;
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v105 - v114);
  sub_1CA948D98();
  v29 = [v14 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v105 - v113;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v107, v106, v25, v27, 0, 0, v28, v30);
  *(v4 + 104) = v21;
  *(v4 + 80) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA2FA080(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v108;
  *(inited + 80) = sub_1CA6B3784(v33);
  *(inited + 104) = v34;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 1702194242;
  *(inited + 128) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0x697966696E67616DLL;
  *(inited + 168) = 0xEF7373616C67676ELL;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconSymbolColor";
  *(inited + 200) = 0x6574696857;
  *(inited + 208) = 0xE500000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"IconSymbolColor";
  v39 = @"Name";
  v40 = sub_1CA94C438("Search (Action Name)", 20);
  v42 = v41;
  v43 = sub_1CA94C438("Search", 6);
  v45 = v44;
  v111 = &v105;
  MEMORY[0x1EEE9AC00](v43);
  v46 = (&v105 - v114);
  sub_1CA948D98();
  v47 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v105 - v113;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v40, v42, v43, v45, 0, 0, v46, v48);
  *(inited + 264) = v112;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v107 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 0;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x547475706E494657;
  *(v50 + 104) = 0xEB00000000747865;
  v52 = MEMORY[0x1E69E6158];
  *(v50 + 120) = MEMORY[0x1E69E6158];
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v111;
  *(v50 + 192) = &unk_1F49F3288;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v108 = v55;
  *(inited + 280) = v54;
  *(inited + 304) = v55;
  *(inited + 312) = @"Output";
  v56 = swift_allocObject();
  *(v56 + 16) = v107;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = v52;
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  *(v56 + 120) = v51;
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438("Results (Default Output Name)", 29);
  v106 = v59;
  v60 = sub_1CA94C438("Results", 7);
  v62 = v61;
  *&v107 = &v105;
  MEMORY[0x1EEE9AC00](v60);
  v63 = (&v105 - v114);
  sub_1CA948D98();
  v64 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v105 - v113;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v58, v106, v60, v62, 0, 0, v63, v65);
  *(v56 + 168) = v112;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 216) = v111;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F49F32B8;
  *(inited + 320) = sub_1CA94C1E8();
  v67 = v109;
  *(inited + 344) = v108;
  *(inited + 352) = @"DisabledOnPlatforms";
  v68 = *(v67 + 16);
  if (v68)
  {
    v118 = MEMORY[0x1E69E7CC0];
    v69 = @"DisabledOnPlatforms";
    sub_1CA271524(0, v68, 0, v70, v71, v72, v73);
    v75 = v117;
    v74 = v118;
    v76 = v67 + 32;
    do
    {
      v81 = sub_1CA94C3A8();
      v83 = v82;
      v118 = v74;
      v85 = *(v74 + 16);
      v84 = *(v74 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_1CA271524(v84 > 1, v85 + 1, 1, v77, v78, v79, v80);
        v74 = v118;
      }

      *(v74 + 16) = v85 + 1;
      v86 = v74 + 16 * v85;
      *(v86 + 32) = v81;
      *(v86 + 40) = v83;
      v76 += 8;
      --v68;
    }

    while (v68);
  }

  else
  {
    v87 = @"DisabledOnPlatforms";
    v74 = MEMORY[0x1E69E7CC0];
    v75 = v117;
  }

  v117 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  *(inited + 360) = v74;
  *(inited + 384) = v111;
  *(inited + 392) = @"Parameters";
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v110;
  *(inited + 424) = v88;
  *(inited + 432) = @"ParameterSummary";
  v89 = @"Parameters";
  sub_1CA94C218();
  v90 = @"ParameterSummary";
  v91 = sub_1CA94C438("Search ${WFInputText} (Parameter Summary)", 41);
  v93 = v92;
  v94 = sub_1CA94C438("Search ${WFInputText}", 21);
  v96 = v95;
  v114 = &v105;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v105 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  v98 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v105 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v91, v93, v94, v96, 0, 0, v97, v100);
  v103 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 464) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v103;
  type metadata accessor for Key(0);
  sub_1CA2FA080(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F9F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = sub_1CA94C368();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_1CA94C368();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_1CA94C368();

LABEL_6:
  v17 = sub_1CA948D88();
  v18 = sub_1CA948B48();
  v19 = [v9 initWithKey:v14 defaultValue:v15 table:v16 locale:v17 bundleURL:v18];

  sub_1CA948BA8();
  OUTLINED_FUNCTION_7_2();
  (*(v20 + 8))(a8);
  sub_1CA948E58();
  OUTLINED_FUNCTION_7_2();
  (*(v21 + 8))(a7);
  return v19;
}

uint64_t sub_1CA2FA080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CA2FA0FC()
{
  sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"Name";
  v3 = @"ActionClass";
  v4 = @"Discoverable";
  v5 = @"Name";
  v6 = sub_1CA94C438("Get Details of Appearance (Action Name)", 39);
  v8 = v7;
  v9 = sub_1CA94C438("Get Details of Appearance", 25);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  *(inited + 144) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v20;
  v21 = sub_1CA94C368();
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 152) = v21;
  *(inited + 160) = 0xD00000000000001ELL;
  *(inited + 168) = 0x80000001CA9A12E0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2FA458()
{
  v137 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9A1310;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("preview|show|file|document|quicklook|quick look", 47);
  v6 = v5;
  v7 = sub_1CA94C438("preview|show|file|document|quicklook|quick look", 47);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v144 = v11;
  v146 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v126 - v146;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v143 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v145 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v142 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v126 - v142;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v141 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  *&v140 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Displays a preview of the input using the system Quick Look.", 60);
  v138 = v24;
  v25 = sub_1CA94C438("Displays a preview of the input using the system Quick Look.", 60);
  v27 = v26;
  v139 = &v126;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v126 - v146;
  sub_1CA948D98();
  v29 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v126 - v142;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v138, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v141;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v140;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA99B480;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6C6C69662E657965;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v140 = xmmword_1CA981350;
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
  v38 = v37;
  *(v36 + 184) = 0xE500000000000000;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v136;
  *(v36 + 192) = &unk_1F49F3338;
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
  v46 = sub_1CA94C438("Quick Look (Action Name)", 24);
  v48 = v47;
  v49 = sub_1CA94C438("Quick Look", 10);
  v51 = v50;
  v139 = &v126;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v126 - v146;
  sub_1CA948D98();
  v53 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v126 - v142;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v141;
  *(inited + 352) = @"Parameters";
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v139 = swift_allocObject();
  *(v139 + 1) = xmmword_1CA981360;
  v138 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = v140;
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
  v58 = @"Class";
  v59 = @"Key";
  v60 = @"Label";
  v132 = v58;
  v131 = v59;
  v133 = v60;
  v61 = @"Parameters";
  v62 = sub_1CA94C438("Input (WFInput)", 15);
  v128 = v63;
  v129 = v62;
  v127 = sub_1CA94C438("Input", 5);
  v65 = v64;
  v130 = &v126;
  MEMORY[0x1EEE9AC00](v127);
  v66 = &v126 - v146;
  sub_1CA948D98();
  v67 = v143;
  v68 = [v143 bundleURL];
  v126 = &v126;
  MEMORY[0x1EEE9AC00](v68);
  v69 = v142;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v129, v128, v127, v65, 0, 0, v66, &v126 - v69);
  v71 = v141;
  *(v56 + 144) = v141;
  *(v56 + 152) = @"Placeholder";
  v72 = @"Placeholder";
  v73 = sub_1CA94C438("Input (WFInput)", 15);
  v128 = v74;
  v129 = v73;
  v75 = sub_1CA94C438("Input", 5);
  v127 = v76;
  v130 = &v126;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v126 - v146;
  sub_1CA948D98();
  v78 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v129, v128, v75, v127, 0, 0, v77, &v126 - v69);
  *(v56 + 184) = v71;
  *(v56 + 160) = v80;
  _s3__C3KeyVMa_0(0);
  v130 = v81;
  v129 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v82 = sub_1CA94C1E8();
  v83 = sub_1CA2F864C(v82);
  v139[4] = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = v140;
  *(v84 + 32) = v132;
  *(v84 + 40) = 0xD000000000000011;
  *(v84 + 48) = 0x80000001CA99E620;
  v85 = MEMORY[0x1E69E6158];
  v86 = v131;
  *(v84 + 64) = MEMORY[0x1E69E6158];
  *(v84 + 72) = v86;
  *(v84 + 80) = 0xD00000000000001BLL;
  *(v84 + 88) = 0x80000001CA9A13D0;
  v87 = v133;
  *(v84 + 104) = v85;
  *(v84 + 112) = v87;
  v88 = sub_1CA94C438("Full Screen (WFQuickLookActionFullScreen)", 41);
  v134 = v89;
  v90 = sub_1CA94C438("Full Screen", 11);
  v92 = v91;
  *&v140 = &v126;
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v126 - v146;
  sub_1CA948D98();
  v94 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v126 - v142;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 120) = sub_1CA2F9F14(v88, v134, v90, v92, 0, 0, v93, v95);
  *(v84 + 144) = v141;
  *(v84 + 152) = @"RequiredResources";
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA9813B0;
  v147 = 1;
  v148 = 0;
  v98 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v99 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v147);
  *(v97 + 32) = v100;
  *(v84 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v84 + 160) = v97;
  v101 = sub_1CA94C1E8();
  v102 = sub_1CA2F864C(v101);
  v103 = v139;
  v139[5] = v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v103;
  *(inited + 384) = v104;
  *(inited + 392) = @"ParameterSummary";
  v105 = @"ParameterSummary";
  v106 = sub_1CA94C438("Show ${WFInput} in Quick Look (Parameter Summary)", 49);
  v108 = v107;
  v109 = sub_1CA94C438("Show ${WFInput} in Quick Look", 29);
  v111 = v110;
  v141 = &v126;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v126 - v146;
  sub_1CA948D98();
  v113 = [v143 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v126 - v142;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v106, v108, v109, v111, 0, 0, v112, v114);
  v117 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v118 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v117;
  *(inited + 424) = v118;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F49F3368;
  v119 = v136;
  *(inited + 464) = v136;
  *(inited + 472) = @"RequiresUnlock";
  *(inited + 480) = 1;
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 512) = @"UserInterfaceClasses";
  v120 = @"RequiredResources";
  v121 = @"RequiresUnlock";
  v122 = @"UserInterfaceClasses";
  v123 = sub_1CA94C1E8();
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 520) = v123;
  *(inited + 552) = @"UserInterfaces";
  *(inited + 584) = v119;
  *(inited + 560) = &unk_1F49F33F8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v124 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2FB450()
{
  v113 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9A14D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("airdrop|push|desk|connect|device|mac|share", 42);
  v6 = v5;
  v7 = sub_1CA94C438("airdrop|push|desk|connect|device|mac|share", 42);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v118 = v11;
  v120 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v106 - v120;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v117 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v119 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v106 - v116;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v115 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v20 = swift_initStackObject();
  v114 = xmmword_1CA981350;
  *(v20 + 16) = xmmword_1CA981350;
  v21 = MEMORY[0x1E69E6370];
  *(v20 + 32) = 0xD00000000000001DLL;
  *(v20 + 40) = 0x80000001CA99DA80;
  *(v20 + 48) = 1;
  *(v20 + 72) = v21;
  *(v20 + 80) = 0xD000000000000010;
  *(v20 + 88) = 0x80000001CA993290;
  *(v20 + 96) = 0xD000000000000013;
  *(v20 + 104) = 0x80000001CA9A1520;
  v22 = MEMORY[0x1E69E6158];
  *(v20 + 120) = MEMORY[0x1E69E6158];
  *(v20 + 128) = 1701667150;
  *(v20 + 136) = 0xE400000000000000;
  *(v20 + 144) = 0x6E6E6F436B736544;
  *(v20 + 152) = 0xEB00000000746365;
  *(v20 + 168) = v22;
  strcpy((v20 + 176), "TeamIdentifier");
  *(v20 + 216) = v22;
  *(v20 + 191) = -18;
  *(v20 + 192) = 0x3544585638363556;
  *(v20 + 200) = 0xEA00000000003850;
  v23 = @"AppDefinition";
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v111 = v25;
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"Description";
  v110 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1CA981310;
  *(v26 + 32) = @"DescriptionSummary";
  v27 = @"Description";
  v28 = @"DescriptionSummary";
  v29 = sub_1CA94C438("Sends the input to another device via DeskConnect. DeskConnect makes it easy to send web pages, documents, pictures, and anything else between your devices.", 156);
  v108 = v30;
  v31 = sub_1CA94C438("Sends the input to another device via DeskConnect. DeskConnect makes it easy to send web pages, documents, pictures, and anything else between your devices.", 156);
  v33 = v32;
  v109 = &v106;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v106 - v120;
  sub_1CA948D98();
  v35 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v106 - v116;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v29, v108, v31, v33, 0, 0, v34, v36);
  *(v26 + 64) = v115;
  *(v26 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v39 = sub_1CA94C1E8();
  v40 = v110;
  *(inited + 160) = sub_1CA6B3784(v39);
  *(inited + 184) = v40;
  *(inited + 192) = @"Discontinued";
  *(inited + 200) = 1;
  v41 = MEMORY[0x1E69E6370];
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 232) = @"Input";
  v42 = swift_allocObject();
  *(v42 + 16) = v114;
  *(v42 + 32) = 0x656C7069746C754DLL;
  *(v42 + 40) = 0xE800000000000000;
  *(v42 + 48) = 1;
  *(v42 + 72) = v41;
  strcpy((v42 + 80), "ParameterKey");
  *(v42 + 93) = 0;
  *(v42 + 94) = -5120;
  *(v42 + 96) = 0x7475706E494657;
  *(v42 + 104) = 0xE700000000000000;
  *(v42 + 120) = MEMORY[0x1E69E6158];
  *(v42 + 128) = 0x6465726975716552;
  *(v42 + 136) = 0xE800000000000000;
  *(v42 + 144) = 1;
  *(v42 + 168) = v41;
  *(v42 + 176) = 0x7365707954;
  *(v42 + 184) = 0xE500000000000000;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v42 + 216) = v112;
  *(v42 + 192) = &unk_1F49F3428;
  v43 = @"Discontinued";
  v44 = @"Input";
  *(inited + 240) = sub_1CA94C1E8();
  *(inited + 264) = v111;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v41;
  *(inited + 312) = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438("Send via DeskConnect (Action Name)", 34);
  v49 = v48;
  v50 = sub_1CA94C438("Send via DeskConnect", 20);
  v52 = v51;
  v111 = &v106;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v106 - v120;
  sub_1CA948D98();
  v54 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v106 - v116;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  *(inited + 344) = v115;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v111 = swift_allocObject();
  *(v111 + 1) = xmmword_1CA9813B0;
  v110 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_allocObject();
  *(v57 + 16) = v114;
  *(v57 + 32) = @"Class";
  *(v57 + 40) = 0xD000000000000019;
  *(v57 + 48) = 0x80000001CA99B030;
  v58 = MEMORY[0x1E69E6158];
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"Key";
  *(v57 + 80) = 0x7475706E494657;
  *(v57 + 88) = 0xE700000000000000;
  *(v57 + 104) = v58;
  *(v57 + 112) = @"Label";
  v59 = @"Parameters";
  v60 = @"Class";
  v61 = @"Key";
  v62 = @"Label";
  v63 = sub_1CA94C438("Content (WFInput)", 17);
  v108 = v64;
  v109 = v63;
  v65 = sub_1CA94C438("Content", 7);
  v107 = v66;
  *&v114 = &v106;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v106 - v120;
  sub_1CA948D98();
  v68 = v117;
  v69 = [v117 bundleURL];
  v106 = &v106;
  MEMORY[0x1EEE9AC00](v69);
  v70 = v116;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 120) = sub_1CA2F9F14(v109, v108, v65, v107, 0, 0, v67, &v106 - v70);
  v72 = v115;
  *(v57 + 144) = v115;
  *(v57 + 152) = @"Placeholder";
  v73 = @"Placeholder";
  v74 = sub_1CA94C438("Content (WFInput)", 17);
  v108 = v75;
  v109 = v74;
  v76 = sub_1CA94C438("Content", 7);
  v107 = v77;
  *&v114 = &v106;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v106 - v120;
  sub_1CA948D98();
  v79 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v109, v108, v76, v107, 0, 0, v78, &v106 - v70);
  *(v57 + 184) = v72;
  *(v57 + 160) = v81;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v82 = sub_1CA94C1E8();
  v83 = sub_1CA2F864C(v82);
  v84 = v111;
  v111[4] = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v84;
  *(inited + 384) = v85;
  *(inited + 392) = @"ParameterSummary";
  v86 = @"ParameterSummary";
  v87 = sub_1CA94C438("Send ${WFInput} via the missing link between your devices, DeskConnect 💔 (Parameter Summary)", 95);
  v89 = v88;
  v90 = sub_1CA94C438("Send ${WFInput} via the missing link between your devices, DeskConnect 💔", 75);
  v92 = v91;
  v115 = &v106;
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v106 - v120;
  sub_1CA948D98();
  v94 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v106 - v116;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v87, v89, v90, v92, 0, 0, v93, v95);
  v98 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v99 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v98;
  *(inited + 424) = v99;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v112;
  *(inited + 440) = &unk_1F49F3468;
  v100 = @"RequiredResources";
  *(inited + 472) = sub_1CA94C368();
  v101 = sub_1CA94C1E8();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 480) = v101;
  *(inited + 504) = v102;
  *(inited + 512) = @"UserInterfaceClasses";
  v103 = @"UserInterfaceClasses";
  v104 = sub_1CA94C1E8();
  *(inited + 544) = v102;
  *(inited + 520) = v104;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2FC30C()
{
  v162 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A16F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("directory|files", 15);
  v6 = v5;
  v7 = sub_1CA94C438("directory|files", 15);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v169 = v11;
  v170 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v151 - v170;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v168 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v167 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v171 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v151 - v171;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v166 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v165 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v163 = sub_1CA94C438("The folder contents", 19);
  v161 = v26;
  v27 = sub_1CA94C438("The folder contents", 19);
  v160 = v28;
  v164 = &v151;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v151 - v170;
  sub_1CA948D98();
  v30 = v168;
  v31 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v171;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v163, v161, v27, v160, 0, 0, v29, &v151 - v32);
  v34 = v166;
  *(v23 + 64) = v166;
  *(v23 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v163 = sub_1CA94C438("This action gets the files inside of the specified folder.", 58);
  v161 = v36;
  v160 = sub_1CA94C438("This action gets the files inside of the specified folder.", 58);
  v38 = v37;
  v164 = &v151;
  MEMORY[0x1EEE9AC00](v160);
  v39 = &v151 - v170;
  sub_1CA948D98();
  v40 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v163, v161, v160, v38, 0, 0, v39, &v151 - v32);
  *(v23 + 104) = v34;
  *(v23 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v165;
  *(inited + 160) = sub_1CA6B3784(v43);
  *(inited + 184) = v44;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v45 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x662E7265646C6F66;
  *(inited + 248) = 0xEB000000006C6C69;
  *(inited + 264) = v45;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v45;
  *(inited + 312) = @"Input";
  v46 = v45;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 48) = 1;
  *(v47 + 72) = v48;
  strcpy((v47 + 80), "ParameterKey");
  *(v47 + 93) = 0;
  *(v47 + 94) = -5120;
  *(v47 + 96) = 0x7265646C6F464657;
  *(v47 + 104) = 0xE800000000000000;
  *(v47 + 120) = v46;
  *(v47 + 128) = 0x6465726975716552;
  *(v47 + 136) = 0xE800000000000000;
  *(v47 + 144) = 1;
  *(v47 + 168) = v48;
  *(v47 + 176) = 0x7365707954;
  *(v47 + 184) = 0xE500000000000000;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 216) = v165;
  *(v47 + 192) = &unk_1F49F3588;
  v49 = @"IconColor";
  v50 = @"IconSymbol";
  v51 = @"IconSymbolColor";
  v52 = @"Input";
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v164 = v54;
  *(inited + 320) = v53;
  *(inited + 344) = v54;
  *(inited + 352) = @"Name";
  v55 = @"Name";
  v56 = sub_1CA94C438("Get Contents of Folder (Action Name)", 36);
  v159 = v57;
  v160 = v56;
  v58 = sub_1CA94C438("Get Contents of Folder", 22);
  v60 = v59;
  v161 = &v151;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v151 - v170;
  sub_1CA948D98();
  v62 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v151 - v171;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v160, v159, v58, v60, 0, 0, v61, v63);
  v65 = v166;
  *(inited + 384) = v166;
  *(inited + 392) = @"Output";
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA9813C0;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  *(v66 + 48) = 1;
  *(v66 + 72) = MEMORY[0x1E69E6370];
  *(v66 + 80) = 0x614E74757074754FLL;
  *(v66 + 88) = 0xEA0000000000656DLL;
  v67 = @"Output";
  v68 = sub_1CA94C438("Folder Contents (Default Output Name)", 37);
  v160 = v69;
  v161 = v68;
  v159 = sub_1CA94C438("Folder Contents", 15);
  v71 = v70;
  v163 = &v151;
  MEMORY[0x1EEE9AC00](v159);
  v72 = &v151 - v170;
  sub_1CA948D98();
  v73 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v151 - v171;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 96) = sub_1CA2F9F14(v161, v160, v159, v71, 0, 0, v72, v74);
  *(v66 + 120) = v65;
  *(v66 + 128) = 0x7365707954;
  v76 = v165;
  *(v66 + 168) = v165;
  *(v66 + 136) = 0xE500000000000000;
  *(v66 + 144) = &unk_1F49F35B8;
  v77 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v164;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v164 = swift_allocObject();
  *(v164 + 1) = xmmword_1CA981360;
  v163 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  v157 = xmmword_1CA981370;
  *(v78 + 16) = xmmword_1CA981370;
  *(v78 + 32) = @"Class";
  *(v78 + 40) = 0xD000000000000015;
  *(v78 + 48) = 0x80000001CA99B1E0;
  *(v78 + 64) = v77;
  *(v78 + 72) = @"FilePickerSupportedTypes";
  *(v78 + 80) = &unk_1F49F35E8;
  *(v78 + 104) = v76;
  *(v78 + 112) = @"Key";
  *(v78 + 120) = 0x7265646C6F464657;
  *(v78 + 128) = 0xE800000000000000;
  *(v78 + 144) = v77;
  *(v78 + 152) = @"Label";
  v79 = @"Class";
  v80 = @"Key";
  v81 = @"Label";
  v156 = v79;
  v159 = v80;
  v160 = v81;
  v82 = @"Parameters";
  v83 = @"FilePickerSupportedTypes";
  v84 = sub_1CA94C438("Folder (WFFolder)", 17);
  v153 = v85;
  v154 = v84;
  v86 = sub_1CA94C438("Folder", 6);
  v152 = v87;
  v155 = &v151;
  MEMORY[0x1EEE9AC00](v86);
  v161 = inited;
  v88 = v170;
  sub_1CA948D98();
  v89 = v168;
  v90 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v151 - v171;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 160) = sub_1CA2F9F14(v154, v153, v86, v152, 0, 0, &v151 - v88, v91);
  v93 = v166;
  *(v78 + 184) = v166;
  *(v78 + 192) = @"Placeholder";
  v94 = @"Placeholder";
  v95 = sub_1CA94C438("Folder (WFFolder)", 17);
  v153 = v96;
  v154 = v95;
  v152 = sub_1CA94C438("Folder", 6);
  v98 = v97;
  v155 = &v151;
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948D98();
  v99 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v151 - v171;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v154, v153, v152, v98, 0, 0, &v151 - v88, v100);
  *(v78 + 224) = v93;
  *(v78 + 200) = v102;
  _s3__C3KeyVMa_0(0);
  v155 = v103;
  v154 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v104 = sub_1CA94C1E8();
  v105 = sub_1CA2F864C(v104);
  v164[4] = v105;
  v106 = swift_allocObject();
  *(v106 + 16) = v157;
  *(v106 + 32) = v156;
  *(v106 + 40) = 0xD000000000000011;
  *(v106 + 48) = 0x80000001CA99E620;
  *(v106 + 64) = MEMORY[0x1E69E6158];
  *(v106 + 72) = @"DefaultValue";
  *(v106 + 80) = 0;
  *(v106 + 104) = MEMORY[0x1E69E6370];
  *(v106 + 112) = @"Description";
  v107 = @"DefaultValue";
  v108 = @"Description";
  v109 = sub_1CA94C438("If this option is enabled, this action will get all the files inside of a folder, including its subfolders. (Recursive)", 119);
  v156 = v110;
  *&v157 = v109;
  v111 = sub_1CA94C438("If this option is enabled, this action will get all the files inside of a folder, including its subfolders.", 107);
  v153 = v112;
  v158 = &v151;
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v151 - v88;
  sub_1CA948D98();
  v114 = v168;
  v115 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v151 - v171;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 120) = sub_1CA2F9F14(v157, v156, v111, v153, 0, 0, v113, v116);
  v118 = v159;
  *(v106 + 144) = v166;
  *(v106 + 152) = v118;
  *(v106 + 160) = 0x7669737275636552;
  *(v106 + 168) = 0xE900000000000065;
  v119 = v160;
  *(v106 + 184) = MEMORY[0x1E69E6158];
  *(v106 + 192) = v119;
  v120 = sub_1CA94C438("Recursive (Recursive)", 21);
  v158 = v121;
  v159 = v120;
  v122 = sub_1CA94C438("Recursive", 9);
  v124 = v123;
  v160 = &v151;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v151 - v170;
  sub_1CA948D98();
  v126 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v151 - v171;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v159, v158, v122, v124, 0, 0, v125, v127);
  *(v106 + 224) = v166;
  *(v106 + 200) = v129;
  v130 = sub_1CA94C1E8();
  v131 = sub_1CA2F864C(v130);
  v132 = v164;
  v164[5] = v131;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v134 = v161;
  v161[55] = v132;
  v134[58] = v133;
  v134[59] = @"ParameterSummary";
  v135 = @"ParameterSummary";
  v136 = sub_1CA94C438("Get contents of ${WFFolder} (Parameter Summary)", 47);
  v138 = v137;
  v139 = sub_1CA94C438("Get contents of ${WFFolder}", 27);
  v141 = v140;
  v166 = &v151;
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v151 - v170;
  sub_1CA948D98();
  v143 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v151 - v171;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v136, v138, v139, v141, 0, 0, v142, v144);
  v147 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v148 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v134[60] = v147;
  v134[63] = v148;
  v134[64] = @"RemoteExecuteOnPlatforms";
  v134[68] = v165;
  v134[65] = &unk_1F49F3618;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v149 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2FD680()
{
  sub_1CA2ECC0C();
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0xD000000000000010;
  *(inited + 128) = 0x80000001CA9A19F0;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x80000001CA9A1A10;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2FD878()
{
  OUTLINED_FUNCTION_0();
  v0[14] = v1;
  v0[15] = v2;
  v3 = sub_1CA94AD98();
  v0[16] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[17] = v4;
  v0[18] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94AD88();
  v0[19] = v5;
  OUTLINED_FUNCTION_12(v5);
  v0[20] = v6;
  v0[21] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94ADC8();
  v0[22] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[23] = v8;
  v0[24] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA2FD9B8()
{
  v1 = OUTLINED_FUNCTION_19_5();
  v2(v1);
  v3 = OUTLINED_FUNCTION_3_3();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x1E69DB0B0])
  {
    v6 = v0[24];
    v7 = OUTLINED_FUNCTION_14_1();
    v8(v7);
    v0[32] = *v6;
    swift_projectBox();
    v9 = OUTLINED_FUNCTION_22();
    v10(v9);
    v11 = swift_task_alloc();
    v0[33] = v11;
    *v11 = v0;
    v11[1] = sub_1CA2FE09C;
    v12 = v0[18];

    return sub_1CA6A3220(v12);
  }

  if (v5 == *MEMORY[0x1E69DB0A0])
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v14 = sub_1CA2FFC58();
    v15 = OUTLINED_FUNCTION_127(&type metadata for ToolKitValueTransformError, v14);
    OUTLINED_FUNCTION_11_8(v15, v16);
LABEL_7:
    OUTLINED_FUNCTION_4_10();

    OUTLINED_FUNCTION_5();

    return v17();
  }

  if (v5 == *MEMORY[0x1E69DB098])
  {
    v18 = v0[24];
    v19 = OUTLINED_FUNCTION_14_1();
    v20(v19);
    v21 = *v18;
    v0[29] = *v18;
    v23 = *(v21 + 32);
    v22 = *(v21 + 40);
    v24 = swift_task_alloc();
    v0[30] = v24;
    *v24 = v0;
    v25 = sub_1CA2FDF24;
  }

  else if (v5 == *MEMORY[0x1E69DB088])
  {
    v26 = v0[24];
    v27 = OUTLINED_FUNCTION_14_1();
    v28(v27);
    v0[25] = *v26;
    swift_projectBox();
    v29 = OUTLINED_FUNCTION_22();
    v30(v29);
    v23 = sub_1CA94AD78();
    v22 = v31;
    v0[26] = v31;
    v24 = swift_task_alloc();
    v0[27] = v24;
    *v24 = v0;
    v25 = sub_1CA2FDD80;
  }

  else
  {
    v33 = v0[23];
    v32 = v0[24];
    v34 = v0[22];
    if (v5 != *MEMORY[0x1E69DB0A8])
    {
      v38 = sub_1CA2FFC58();
      OUTLINED_FUNCTION_127(&type metadata for ToolKitValueTransformError, v38);
      *v39 = 0;
      swift_willThrow();
      (*(v33 + 8))(v32, v34);
      goto LABEL_7;
    }

    (*(v33 + 96))(v0[24], v0[22]);
    v35 = *v32;
    v0[35] = *v32;
    v23 = *(v35 + 16);
    v22 = *(v35 + 24);
    v24 = swift_task_alloc();
    v0[36] = v24;
    *v24 = v0;
    v25 = sub_1CA2FE2AC;
  }

  v24[1] = v25;
  v37 = v0[14];
  v36 = v0[15];

  return sub_1CA2FE59C(v37, v36, v23, v22);
}

uint64_t sub_1CA2FDD80()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_21_1();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 224) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2FDE9C()
{
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_20_5();
  v1(v0);

  OUTLINED_FUNCTION_4_10();

  v2 = OUTLINED_FUNCTION_1_3();

  return v3(v2);
}

uint64_t sub_1CA2FDF24()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_21_1();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 248) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2FE024()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_4_10();

  v0 = OUTLINED_FUNCTION_1_3();

  return v1(v0);
}

uint64_t sub_1CA2FE09C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_21_1();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 272) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2FE19C()
{
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_18_7();
  v1(v0);

  OUTLINED_FUNCTION_4_10();

  v2 = OUTLINED_FUNCTION_1_3();

  return v3(v2);
}

uint64_t sub_1CA2FE224()
{
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_18_7();
  v1(v0);

  OUTLINED_FUNCTION_4_10();

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA2FE2AC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  OUTLINED_FUNCTION_21_1();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 296) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2FE3AC()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_4_10();

  v0 = OUTLINED_FUNCTION_1_3();

  return v1(v0);
}

uint64_t sub_1CA2FE424()
{
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_20_5();
  v1(v0);

  OUTLINED_FUNCTION_4_10();

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA2FE4AC()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_4_10();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA2FE524()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_4_10();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA2FE59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1CA94AD98();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1CA949328();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1CA94AF18();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_1CA94B068();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = sub_1CA94AEE8();
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v10 = sub_1CA94AD48();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2FE838, 0, 0);
}

uint64_t sub_1CA2FE838()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for TypedValueConversionContext(0) + 20));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v10 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1CA2FE978;
  v6 = v0[24];
  v7 = v0[2];
  v8 = v0[3];

  return v10(v6, v7, v8, v3, v4);
}

uint64_t sub_1CA2FE978()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA2FEA74()
{
  v1 = OUTLINED_FUNCTION_19_5();
  v2(v1);
  v3 = OUTLINED_FUNCTION_3_3();
  v5 = v4(v3);
  if (v5 != *MEMORY[0x1E69DAFA8])
  {
    v14 = v5;
    if (v5 == *MEMORY[0x1E69DAF98])
    {
      v15 = v0[22];
      v16 = v0[19];
      v18 = v0[16];
      v17 = v0[17];
      v19 = v0[15];
      (*(v15 + 96))(v0[23], v0[21]);
      v20 = OUTLINED_FUNCTION_13_0();
      v21(v20);
      (*(v18 + 104))(v17, *MEMORY[0x1E69DB238], v19);
      v22 = sub_1CA94AEC8();
      v23 = OUTLINED_FUNCTION_70();
      v24(v23);
      v25 = (v16 + 8);
      v26 = v0[20];
      v27 = v0[18];
      if (v22)
      {
        v29 = v0[4];
        v28 = v0[5];
        sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
        sub_1CA94C218();
        sub_1CA4ECDAC(v29, v28);
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x1E69AC7F0]) init];
      }

      (*v25)(v26, v27);
      v35 = *(v15 + 8);
LABEL_12:
      OUTLINED_FUNCTION_12_7();
      v35();

      OUTLINED_FUNCTION_24();

      __asm { BRAA            X2, X16 }
    }

    if (v5 == *MEMORY[0x1E69DAF80])
    {
      v30 = v0[24];
      v31 = v0[21];
      v32 = v0[22];
      v34 = v0[4];
      v33 = v0[5];
      sub_1CA25B3D0(0, &qword_1EC4442C8, 0x1E69AC890);
      sub_1CA94C218();
      sub_1CA4ECDB8(v34, v33);
      v35 = *(v32 + 8);
      (v35)(v30, v31);
      goto LABEL_12;
    }

    if (v5 == *MEMORY[0x1E69DAF90])
    {
      v38 = v0[24];
      v39 = v0[21];
      v40 = v0[22];
      v41 = sub_1CA2FFC58();
      v42 = OUTLINED_FUNCTION_127(&type metadata for ToolKitValueTransformError, v41);
      OUTLINED_FUNCTION_11_8(v42, v43);
      v44 = *(v40 + 8);
      v44(v38, v39);
      v45 = OUTLINED_FUNCTION_70();
      (v44)(v45);
    }

    else if (v5 == *MEMORY[0x1E69DAFA0])
    {
      v46 = v0[11];
      v47 = OUTLINED_FUNCTION_14_1();
      v48(v47);
      v49 = OUTLINED_FUNCTION_13_0();
      v50(v49);
      v51 = sub_1CA949338();
      sub_1CA94AF08();
      sub_1CA949318();
      v52 = sub_1CA3118B4(v46, v51);

      v53 = OUTLINED_FUNCTION_70();
      v54(v53);
      if (v52)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v55 = v0[22];
          (*(v0[13] + 8))(v0[14], v0[12]);
          v35 = *(v55 + 8);
          goto LABEL_12;
        }
      }

      v65 = v0[24];
      v66 = v0[21];
      v67 = v0[22];
      v69 = v0[13];
      v68 = v0[14];
      v70 = v0[12];
      v71 = sub_1CA2FFC58();
      v72 = OUTLINED_FUNCTION_127(&type metadata for ToolKitValueTransformError, v71);
      OUTLINED_FUNCTION_11_8(v72, v73);
      (*(v69 + 8))(v68, v70);
      (*(v67 + 8))(v65, v66);
    }

    else
    {
      v56 = v0[22];
      v57 = *MEMORY[0x1E69DAF88];
      v58 = sub_1CA2FFC58();
      OUTLINED_FUNCTION_127(&type metadata for ToolKitValueTransformError, v58);
      v60 = (v56 + 8);
      v61 = v0[24];
      v62 = v0[21];
      *v59 = v14 == v57;
      swift_willThrow();
      v63 = *v60;
      (*v60)(v61, v62);
      v64 = OUTLINED_FUNCTION_70();
      v63(v64);
    }

    OUTLINED_FUNCTION_6_11();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  v6 = OUTLINED_FUNCTION_14_1();
  v7(v6);
  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_1CA2FF0E8;
  OUTLINED_FUNCTION_24();

  return sub_1CA6A3220(v11);
}

uint64_t sub_1CA2FF044()
{
  OUTLINED_FUNCTION_6_11();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA2FF0E8()
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
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 232) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA2FF1F8()
{
  (*(v1[7] + 8))(v1[8], v1[6]);
  OUTLINED_FUNCTION_12_7();
  v2(v0);

  v3 = OUTLINED_FUNCTION_1_3();

  return v4(v3);
}

uint64_t sub_1CA2FF2DC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = OUTLINED_FUNCTION_3_3();
  v2(v1);
  OUTLINED_FUNCTION_6_11();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA2FF3B4()
{
  OUTLINED_FUNCTION_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v0[7] = OUTLINED_FUNCTION_45();
  v4 = sub_1CA94B1C8();
  v0[8] = v4;
  OUTLINED_FUNCTION_12(v4);
  v0[9] = v5;
  v0[10] = OUTLINED_FUNCTION_45();
  v6 = sub_1CA94B168();
  v0[11] = v6;
  OUTLINED_FUNCTION_12(v6);
  v0[12] = v7;
  v0[13] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA2FF4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = v18[12];
  v19 = v18[13];
  v21 = v18[11];
  v22 = v18[6];
  v23 = *(type metadata accessor for LinkValueTransformContext(0) + 20);
  MEMORY[0x1CCA9FFE0]();
  v24 = (*(v20 + 88))(v19, v21);
  if (v24 == *MEMORY[0x1E69DB2E8])
  {
    v25 = v18[10];
    v26 = v18[8];
    v27 = v18[9];
    v28 = v18[7];
    (*(v18[12] + 8))(v18[13], v18[11]);
    sub_1CA94AD88();
    v29 = swift_allocBox();
    v18[2] = v29;
    v18[3] = v30;
    v18[14] = v29;
    (*(v27 + 16))(v25, v22 + v23, v26);
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v26);
    v31 = swift_task_alloc();
    v18[15] = v31;
    *v31 = v18;
    v31[1] = sub_1CA2FF714;

    return LinkValueTransformContext.sourceTypeName.getter();
  }

  else if (v24 == *MEMORY[0x1E69DB2E0])
  {
    sub_1CA94B0F8();
    sub_1CA94CB58();

    OUTLINED_FUNCTION_5();

    return v33();
  }

  else
  {

    return sub_1CA94D7E8();
  }
}

uint64_t sub_1CA2FF714()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v7[16] = v0;

  if (v0)
  {
    sub_1CA2FF9AC(v7[7]);
    v11 = OUTLINED_FUNCTION_3_3();
    v12(v11);
  }

  else
  {
    v13 = v7[3];
    v7[17] = v3;
    v7[18] = v5;
    v7[19] = v13;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1CA2FF84C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 112);
  v2 = *(v0 + 32);
  sub_1CA94AD58();
  *v2 = v1;
  v3 = *MEMORY[0x1E69DB088];
  v4 = sub_1CA94ADC8();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA2FF928()
{
  OUTLINED_FUNCTION_14();
  swift_deallocBox();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA2FF9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA2FFA14()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2DF78C;

  return sub_1CA2FF3B4();
}

uint64_t sub_1CA2FFAC0()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA2FFB5C;

  return sub_1CA2FD878();
}

uint64_t sub_1CA2FFB5C()
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

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

unint64_t sub_1CA2FFC58()
{
  result = qword_1EC4442C0;
  if (!qword_1EC4442C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4442C0);
  }

  return result;
}

id sub_1CA2FFCE0()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9A1A40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("split|generate|pdf|Documents|break", 34);
  v6 = v5;
  v7 = sub_1CA94C438("split|generate|pdf|Documents|break", 34);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v125 = v11;
  v126 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v114 - v126;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v122 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v114 - v123;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v119 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Splits the input document by creating a PDF for each page.", 58);
  v117 = v24;
  v25 = sub_1CA94C438("Splits the input document by creating a PDF for each page.", 58);
  v27 = v26;
  v118 = &v114;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v114 - v126;
  sub_1CA948D98();
  v29 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v114 - v123;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v117, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v121;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v119;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"DisabledOnPlatforms";
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F36C8;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  v36 = v35;
  v117 = v35;
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v37 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x642E6E6F2E636F64;
  *(inited + 248) = 0xEF6C6C69662E636FLL;
  *(inited + 264) = v37;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v37;
  *(inited + 312) = @"Input";
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
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
  *(v38 + 192) = &unk_1F49F36F8;
  v40 = @"DisabledOnPlatforms";
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"IconSymbolColor";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v119 = v46;
  *(inited + 320) = v45;
  *(inited + 344) = v46;
  *(inited + 352) = @"InputPassthrough";
  *(inited + 360) = 0;
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 392) = @"Name";
  v47 = @"InputPassthrough";
  v48 = @"Name";
  v49 = sub_1CA94C438("Split PDF Into Pages (Action Name)", 34);
  v114 = v50;
  v115 = v49;
  v51 = sub_1CA94C438("Split PDF Into Pages", 20);
  v53 = v52;
  v116 = &v114;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v114 - v126;
  sub_1CA948D98();
  v55 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v114 - v123;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v115, v114, v51, v53, 0, 0, v54, v56);
  v58 = v121;
  *(inited + 424) = v121;
  *(inited + 432) = @"Output";
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA9813C0;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  *(v59 + 48) = 1;
  *(v59 + 72) = MEMORY[0x1E69E6370];
  *(v59 + 80) = 0x614E74757074754FLL;
  *(v59 + 88) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438("PDF Pages (Default Output Name)", 31);
  v115 = v62;
  v116 = v61;
  v114 = sub_1CA94C438("PDF Pages", 9);
  v64 = v63;
  v118 = &v114;
  MEMORY[0x1EEE9AC00](v114);
  v65 = &v114 - v126;
  sub_1CA948D98();
  v66 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v114 - v123;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v116, v115, v114, v64, 0, 0, v65, v67);
  v70 = v117;
  *(v59 + 96) = v69;
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x7365707954;
  *(v59 + 168) = v70;
  *(v59 + 136) = 0xE500000000000000;
  *(v59 + 144) = &unk_1F49F3728;
  v71 = MEMORY[0x1E69E6158];
  *(inited + 440) = sub_1CA94C1E8();
  *(inited + 464) = v119;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1CA981370;
  *(v72 + 32) = @"Class";
  *(v72 + 40) = 0xD000000000000015;
  *(v72 + 48) = 0x80000001CA99B1E0;
  *(v72 + 64) = v71;
  *(v72 + 72) = @"FilePickerSupportedTypes";
  *(v72 + 80) = &unk_1F49F3758;
  *(v72 + 104) = v70;
  *(v72 + 112) = @"Key";
  *(v72 + 120) = 0x7475706E494657;
  *(v72 + 128) = 0xE700000000000000;
  *(v72 + 144) = v71;
  *(v72 + 152) = @"Label";
  v73 = @"Parameters";
  v74 = @"Class";
  v75 = @"FilePickerSupportedTypes";
  v76 = @"Key";
  v77 = @"Label";
  v78 = sub_1CA94C438("PDF (WFInput)", 13);
  v115 = v79;
  v116 = v78;
  v80 = sub_1CA94C438("PDF", 3);
  v114 = v81;
  v117 = &v114;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v114 - v126;
  sub_1CA948D98();
  v83 = v124;
  v84 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = v123;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 160) = sub_1CA2F9F14(v116, v115, v80, v114, 0, 0, v82, &v114 - v85);
  *(v72 + 184) = v121;
  *(v72 + 192) = @"Placeholder";
  v87 = @"Placeholder";
  v88 = sub_1CA94C438("Document (WFInput)", 18);
  v115 = v89;
  v116 = v88;
  v90 = sub_1CA94C438("Document", 8);
  v114 = v91;
  v117 = &v114;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v114 - v126;
  sub_1CA948D98();
  v93 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v116, v115, v90, v114, 0, 0, v92, &v114 - v85);
  *(v72 + 224) = v121;
  *(v72 + 200) = v95;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v96 = sub_1CA94C1E8();
  v97 = sub_1CA2F864C(v96);
  v98 = v119;
  *(v119 + 32) = v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v98;
  *(inited + 504) = v99;
  *(inited + 512) = @"ParameterSummary";
  v100 = @"ParameterSummary";
  v101 = sub_1CA94C438("Split PDF ${WFInput} into pages (Parameter Summary)", 51);
  v103 = v102;
  v104 = sub_1CA94C438("Split PDF ${WFInput} into pages", 31);
  v106 = v105;
  v121 = &v114;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v114 - v126;
  sub_1CA948D98();
  v108 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v114 - v123;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  v112 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v112;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_1CA94C438(result, a2);
    }

    __break(1u);
  }

  v3 = HIDWORD(result);
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    v3 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v4 = result + 1;
LABEL_9:
        v5 = __clz(v4);
        a2 = 4 - (v5 >> 3);
        v11 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v5 >> 3))));
        result = &v11;
        return sub_1CA94C438(result, a2);
      }

LABEL_13:
      v6 = (result & 0x3F) << 8;
      v7 = (result >> 6) + v6 + 33217;
      v8 = (v6 | (result >> 6) & 0x3F) << 8;
      v9 = (result >> 18) + ((v8 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v10 = (result >> 12) + v8 + 8487393;
      if (v3)
      {
        v4 = v9;
      }

      else
      {
        v4 = v10;
      }

      if (result < 0x800)
      {
        v4 = v7;
      }

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB9F690;

  return v1;
}

id sub_1CA300D18()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDB9F690 = result;
  return result;
}

id sub_1CA300DD8()
{
  v162 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9A1C00;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("file|document|filepicker|move|folder|rename", 43);
  v6 = v5;
  v7 = sub_1CA94C438("file|document|filepicker|move|folder|rename", 43);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v177 = v11;
  v180 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v158 - v180;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v176 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v178 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v179 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v158 - v179;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v175 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  *&v174 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v170 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Moves the specified file to a new location.", 43);
  v172 = v27;
  v28 = sub_1CA94C438("Moves the specified file to a new location.", 43);
  v30 = v29;
  v173 = &v158;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v158 - v180;
  sub_1CA948D98();
  v32 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v158 - v179;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v172, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v175;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v174;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x662E7265646C6F66;
  *(inited + 248) = 0xEB000000006C6C69;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v39 = v38;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v174 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 0;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x656C69464657;
  *(v40 + 104) = 0xE600000000000000;
  *(v40 + 120) = v39;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v173;
  *(v40 + 192) = &unk_1F49F37C8;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"IconSymbolColor";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v172 = v47;
  *(inited + 320) = v46;
  *(inited + 344) = v47;
  *(inited + 352) = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438("Move File (Action Name)", 23);
  v167 = v50;
  v168 = v49;
  v51 = sub_1CA94C438("Move File", 9);
  v53 = v52;
  v171 = &v158;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v158 - v180;
  sub_1CA948D98();
  v55 = v176;
  v56 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v158 - v179;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v168, v167, v51, v53, 0, 0, v54, v57);
  v59 = v175;
  *(inited + 384) = v175;
  *(inited + 392) = @"Output";
  v60 = swift_allocObject();
  *(v60 + 16) = v174;
  *(v60 + 32) = 0x75736F6C63736944;
  *(v60 + 40) = 0xEF6C6576654C6572;
  *(v60 + 48) = 0x63696C627550;
  *(v60 + 56) = 0xE600000000000000;
  *(v60 + 72) = MEMORY[0x1E69E6158];
  *(v60 + 80) = 0x656C7069746C754DLL;
  *(v60 + 88) = 0xE800000000000000;
  *(v60 + 96) = 0;
  *(v60 + 120) = MEMORY[0x1E69E6370];
  *(v60 + 128) = 0x614E74757074754FLL;
  *(v60 + 136) = 0xEA0000000000656DLL;
  v61 = @"Output";
  v62 = sub_1CA94C438("File (Default Output Name)", 26);
  v167 = v63;
  v168 = v62;
  v64 = sub_1CA94C438("File", 4);
  v66 = v65;
  v171 = &v158;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v158 - v180;
  sub_1CA948D98();
  v68 = [v55 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v158 - v179;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 144) = sub_1CA2F9F14(v168, v167, v64, v66, 0, 0, v67, v69);
  *(v60 + 168) = v59;
  *(v60 + 176) = 0x7365707954;
  v71 = v173;
  *(v60 + 216) = v173;
  *(v60 + 184) = 0xE500000000000000;
  *(v60 + 192) = &unk_1F49F37F8;
  v72 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v172;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1CA981470;
  v171 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  *(v73 + 16) = v174;
  v160 = 0xD000000000000015;
  v161 = 0x80000001CA99B1E0;
  *(v73 + 32) = @"Class";
  *(v73 + 40) = 0xD000000000000015;
  *(v73 + 48) = 0x80000001CA99B1E0;
  *(v73 + 64) = v72;
  *(v73 + 72) = @"FilePickerSupportedTypes";
  *(v73 + 80) = &unk_1F49F3828;
  *(v73 + 104) = v71;
  *(v73 + 112) = @"Key";
  *(v73 + 120) = 0x656C69464657;
  *(v73 + 128) = 0xE600000000000000;
  *(v73 + 144) = v72;
  *(v73 + 152) = @"Label";
  v74 = @"Class";
  v75 = @"Key";
  v76 = @"Label";
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v80 = @"FilePickerSupportedTypes";
  v165 = v77;
  v166 = v78;
  v167 = v79;
  v159 = v80;
  v81 = @"Parameters";
  v82 = sub_1CA94C438("File (WFFile)", 13);
  v163 = v83;
  v84 = sub_1CA94C438("File", 4);
  v86 = v85;
  v164 = &v158;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v158 - v180;
  sub_1CA948D98();
  v88 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v158 - v179;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v82, v163, v84, v86, 0, 0, v87, v89);
  *(v73 + 184) = v175;
  *(v73 + 160) = v91;
  _s3__C3KeyVMa_0(0);
  v164 = v92;
  v163 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v93 = sub_1CA94C1E8();
  v94 = sub_1CA2F864C(v93);
  *(v172 + 32) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1CA981380;
  v97 = v160;
  v96 = v161;
  *(v95 + 32) = v165;
  *(v95 + 40) = v97;
  *(v95 + 48) = v96;
  v98 = MEMORY[0x1E69E6158];
  *(v95 + 64) = MEMORY[0x1E69E6158];
  *(v95 + 72) = @"DefaultsToShortcutsFolder";
  *(v95 + 80) = 1;
  v99 = MEMORY[0x1E69E6370];
  *(v95 + 104) = MEMORY[0x1E69E6370];
  *(v95 + 112) = @"Optional";
  *(v95 + 120) = 0;
  v100 = v159;
  *(v95 + 144) = v99;
  *(v95 + 152) = v100;
  *(v95 + 160) = &unk_1F49F3858;
  v101 = v166;
  *(v95 + 184) = v173;
  *(v95 + 192) = v101;
  *(v95 + 200) = 0x7265646C6F464657;
  *(v95 + 208) = 0xE800000000000000;
  v102 = v167;
  *(v95 + 224) = v98;
  *(v95 + 232) = v102;
  v103 = @"DefaultsToShortcutsFolder";
  v104 = @"Optional";
  v105 = sub_1CA94C438("Folder (WFFolder)", 17);
  v160 = v106;
  v107 = sub_1CA94C438("Folder", 6);
  v109 = v108;
  v161 = &v158;
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v158 - v180;
  sub_1CA948D98();
  v111 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v158 - v179;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v105, v160, v107, v109, 0, 0, v110, v112);
  *(v95 + 264) = v175;
  *(v95 + 240) = v114;
  v115 = sub_1CA94C1E8();
  v116 = sub_1CA2F864C(v115);
  *(v172 + 40) = v116;
  v117 = swift_allocObject();
  *(v117 + 16) = v174;
  *(v117 + 32) = v165;
  *(v117 + 40) = 0xD000000000000011;
  *&v174 = 0xD000000000000011;
  *(v117 + 48) = 0x80000001CA99E620;
  v118 = MEMORY[0x1E69E6158];
  *(v117 + 64) = MEMORY[0x1E69E6158];
  *(v117 + 72) = @"DefaultValue";
  *(v117 + 80) = 0;
  *(v117 + 104) = MEMORY[0x1E69E6370];
  *(v117 + 112) = v166;
  *(v117 + 120) = 0xD000000000000011;
  *(v117 + 128) = 0x80000001CA9A1CB0;
  v119 = v167;
  *(v117 + 144) = v118;
  *(v117 + 152) = v119;
  v120 = @"DefaultValue";
  v121 = sub_1CA94C438("Replace Existing Files (WFReplaceExisting)", 42);
  v167 = v122;
  v123 = sub_1CA94C438("Replace Existing Files", 22);
  v125 = v124;
  v168 = &v158;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v158 - v180;
  sub_1CA948D98();
  v127 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v158 - v179;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v121, v167, v123, v125, 0, 0, v126, v128);
  *(v117 + 184) = v175;
  *(v117 + 160) = v130;
  v131 = sub_1CA94C1E8();
  v132 = sub_1CA2F864C(v131);
  v133 = v172;
  *(v172 + 48) = v132;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v133;
  *(inited + 464) = v134;
  *(inited + 472) = @"ParameterSummary";
  v135 = @"ParameterSummary";
  v136 = sub_1CA94C438("Move ${WFFile} to ${WFFolder} (Parameter Summary)", 49);
  v138 = v137;
  v139 = sub_1CA94C438("Move ${WFFile} to ${WFFolder}", 29);
  v141 = v140;
  v175 = &v158;
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v158 - v180;
  sub_1CA948D98();
  v143 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v158 - v179;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v136, v138, v139, v141, 0, 0, v142, v144);
  v147 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v148 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v147;
  *(inited + 504) = v148;
  *(inited + 512) = @"RemoteExecuteOnPlatforms";
  *(inited + 544) = v173;
  *(inited + 520) = &unk_1F49F3888;
  *(inited + 552) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v149 = swift_allocObject();
  *(v149 + 16) = v170;
  v150 = swift_initStackObject();
  *(v150 + 16) = xmmword_1CA97EDF0;
  *(v150 + 32) = v174;
  *(v150 + 40) = 0x80000001CA99B240;
  v151 = swift_allocObject();
  *(v151 + 16) = v170;
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1CA9813C0;
  strcpy((v152 + 32), "WFParameterKey");
  *(v152 + 47) = -18;
  *(v152 + 48) = 0xD000000000000010;
  *(v152 + 56) = 0x80000001CA99B260;
  v153 = MEMORY[0x1E69E6158];
  *(v152 + 72) = MEMORY[0x1E69E6158];
  *(v152 + 80) = 0xD000000000000010;
  *(v152 + 88) = 0x80000001CA993570;
  *(v152 + 96) = 1;
  *(v152 + 120) = MEMORY[0x1E69E6370];
  *(v152 + 128) = 0x72756F7365524657;
  *(v152 + 168) = v153;
  *(v152 + 136) = 0xEF7373616C436563;
  *(v152 + 144) = 0xD00000000000001BLL;
  *(v152 + 152) = 0x80000001CA993590;
  v154 = @"RemoteExecuteOnPlatforms";
  v155 = @"RequiredResources";
  *(v151 + 32) = sub_1CA94C1E8();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v150 + 48) = v151;
  *(v150 + 72) = v156;
  *(v150 + 80) = 0x72756F7365524657;
  *(v150 + 120) = v153;
  *(v150 + 88) = 0xEF7373616C436563;
  *(v150 + 96) = 0xD000000000000019;
  *(v150 + 104) = 0x80000001CA9932D0;
  *(v149 + 32) = sub_1CA94C1E8();
  *(inited + 584) = v156;
  *(inited + 560) = v149;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA302268()
{
  v134 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9A1D90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v138 = sub_1CA94C438("device|airpods|noise|control|cancellation|focus|presence|aripods", 64);
  v5 = v4;
  v6 = sub_1CA94C438("device|airpods|noise|control|cancellation|focus|presence|aripods", 64);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v142 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v143 = v10;
  v11 = &v123 - v142;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v139 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v140 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v141 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v123 - v141;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v138, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v138 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v137 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v133 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Sets a Noise Control mode on your selected device", 49);
  v135 = v24;
  v25 = sub_1CA94C438("Sets a Noise Control mode on your selected device", 49);
  v27 = v26;
  v136 = &v123;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v123 - v142;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v123 - v141;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v135, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v138;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v137;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"DisabledOnPlatforms";
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v137 = v35;
  *(inited + 160) = &unk_1F49F38B8;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 6579538;
  *(inited + 208) = 0xE300000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000010;
  *(inited + 248) = 0x80000001CA9A1E40;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"DisabledOnPlatforms";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Name";
  v41 = sub_1CA94C438("Set Noise Control Mode (Action Name)", 36);
  v43 = v42;
  v44 = sub_1CA94C438("Set Noise Control Mode", 22);
  v46 = v45;
  v136 = &v123;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v123 - v142;
  sub_1CA948D98();
  v48 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v123 - v141;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v138;
  *(inited + 312) = @"Parameters";
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v136 = swift_allocObject();
  v131 = xmmword_1CA981360;
  *(v136 + 1) = xmmword_1CA981360;
  v135 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  v129 = xmmword_1CA981370;
  *(v51 + 16) = xmmword_1CA981370;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD00000000000001BLL;
  *(v51 + 48) = 0x80000001CA9A1EB0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DisallowedVariableTypes";
  *(v51 + 80) = &unk_1F49F38E8;
  *(v51 + 104) = v137;
  *(v51 + 112) = @"Key";
  *(v51 + 120) = 0x6574756F524657;
  *(v51 + 128) = 0xE700000000000000;
  *(v51 + 144) = v52;
  *(v51 + 152) = @"Label";
  v53 = @"Class";
  v54 = @"DisallowedVariableTypes";
  v55 = @"Key";
  v56 = @"Label";
  v125 = v53;
  v124 = v54;
  v123 = v55;
  v126 = v56;
  v57 = @"Parameters";
  v58 = sub_1CA94C438("Device (WFRoute)", 16);
  v127 = v59;
  v60 = sub_1CA94C438("Device", 6);
  v62 = v61;
  v128 = &v123;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v123 - v142;
  sub_1CA948D98();
  v64 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v123 - v141;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v58, v127, v60, v62, 0, 0, v63, v65);
  *(v51 + 184) = v138;
  *(v51 + 160) = v67;
  v68 = sub_1CA94C368();
  v69 = MEMORY[0x1E69E6158];
  *(v51 + 224) = MEMORY[0x1E69E6158];
  *(v51 + 192) = v68;
  *(v51 + 200) = 0xD000000000000020;
  *(v51 + 208) = 0x80000001CA9A1EF0;
  _s3__C3KeyVMa_0(0);
  v128 = v70;
  v127 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v71 = sub_1CA94C1E8();
  v72 = sub_1CA2F864C(v71);
  v136[4] = v72;
  v73 = swift_initStackObject();
  *(v73 + 16) = v129;
  *(v73 + 32) = v125;
  *(v73 + 40) = 0xD00000000000001ELL;
  *(v73 + 48) = 0x80000001CA9A1F20;
  v74 = v124;
  *(v73 + 64) = v69;
  *(v73 + 72) = v74;
  *(v73 + 80) = &unk_1F49F3918;
  v75 = v123;
  *(v73 + 104) = v137;
  *(v73 + 112) = v75;
  *(v73 + 120) = 0x6E657473694C4657;
  *(v73 + 128) = 0xEF65646F4D676E69;
  v76 = v126;
  *(v73 + 144) = v69;
  *(v73 + 152) = v76;
  v77 = sub_1CA94C438("Noise Control Mode (WFListeningMode)", 36);
  *&v129 = v78;
  v79 = sub_1CA94C438("Noise Control Mode", 18);
  v81 = v80;
  v130 = &v123;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v123 - v142;
  sub_1CA948D98();
  v83 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v123 - v141;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 160) = sub_1CA2F9F14(v77, v129, v79, v81, 0, 0, v82, v84);
  *(v73 + 184) = v138;
  *(v73 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v86 = swift_allocObject();
  *(v86 + 16) = v133;
  v87 = @"RequiredResources";
  *(v86 + 32) = sub_1CA94C1E8();
  *(v73 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v73 + 200) = v86;
  v88 = sub_1CA94C1E8();
  v89 = sub_1CA2F864C(v88);
  v90 = v136;
  v136[5] = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v90;
  *(inited + 344) = v91;
  *(inited + 352) = @"ParameterSummary";
  v136 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v138 = swift_allocObject();
  *(v138 + 16) = v131;
  v92 = @"ParameterSummary";
  v93 = sub_1CA94C438("Set Noise Control mode on ${WFRoute}", 36);
  v95 = v94;
  v96 = sub_1CA94C438("Set Noise Control mode on ${WFRoute}", 36);
  v98 = v97;
  v135 = &v123;
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v123 - v142;
  sub_1CA948D98();
  v100 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v123 - v141;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  v104 = objc_allocWithZone(WFActionParameterSummaryValue);
  v105 = sub_1CA65DD78(0x6574756F524657, 0xE700000000000000, v103);
  *(v138 + 32) = v105;
  v135 = "l mode on ${WFRoute}";
  v106 = sub_1CA94C438("Set Noise Control mode on ${WFRoute} to ${WFListeningMode}", 58);
  v108 = v107;
  v109 = sub_1CA94C438("Set Noise Control mode on ${WFRoute} to ${WFListeningMode}", 58);
  v111 = v110;
  *&v133 = &v123;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v123 - v142;
  sub_1CA948D98();
  v113 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v123 - v141;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v106, v108, v109, v111, 0, 0, v112, v114);
  v117 = objc_allocWithZone(WFActionParameterSummaryValue);
  v118 = sub_1CA65DD78(0xD000000000000017, v135 | 0x8000000000000000, v116);
  v119 = v138;
  *(v138 + 40) = v118;
  v120 = v136;
  *(inited + 360) = sub_1CA65AF90(v119);
  *(inited + 384) = v120;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = v137;
  *(inited + 400) = &unk_1F49F39C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v121 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static WFActionDefinitionRegistry.actionDefinitionForAskLLM()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v143 = swift_allocObject();
  *(v143 + 1) = xmmword_1CA981360;
  v155 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"AutocapitalizationType";
  *(inited + 40) = 0x65636E65746E6553;
  *(inited + 48) = 0xE900000000000073;
  *(inited + 64) = v1;
  *(inited + 72) = @"Class";
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CA99B500;
  *(inited + 104) = v1;
  *(inited + 112) = @"Description";
  v152 = @"Class";
  v2 = @"AutocapitalizationType";
  v142 = @"Description";
  sub_1CA94C438("A request for the model that optionally includes variables and outputs from previous actions, including calendar events, reminders, images, and more.", 149);
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB9F690;
  v4 = sub_1CA94C368();
  v5 = sub_1CA94C368();

  v154 = v3;
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_1CA94C3A8();
  v9 = v8;

  *(inited + 120) = v7;
  *(inited + 128) = v9;
  *(inited + 144) = v1;
  *(inited + 152) = @"DisableAutocorrection";
  v10 = MEMORY[0x1E69E6370];
  *(inited + 160) = 0;
  *(inited + 184) = v10;
  *(inited + 192) = @"Key";
  *(inited + 200) = 0x6F72504D4C4C4657;
  *(inited + 208) = 0xEB0000000074706DLL;
  *(inited + 224) = v1;
  *(inited + 232) = @"Label";
  v11 = @"Key";
  v12 = @"Label";
  v141 = v11;
  v151 = v12;
  v13 = @"DisableAutocorrection";
  v14 = sub_1CA94C438("Request (WFInput)", 17);
  v146 = v15;
  v16 = sub_1CA94C438("Request", 7);
  v18 = v17;
  v19 = sub_1CA948E58();
  v150 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v149 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v135 - v149;
  sub_1CA948D98();
  v22 = [v3 bundleURL];
  v23 = sub_1CA948BA8();
  v148 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v147 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v135 - v147;
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v14, v146, v16, v18, 0, 0, v21, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v146 = v28;
  *(inited + 240) = v27;
  *(inited + 264) = v28;
  *(inited + 272) = @"Multiline";
  *(inited + 280) = 1;
  v29 = MEMORY[0x1E69E6370];
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 312) = @"Placeholder";
  v30 = @"Multiline";
  v31 = @"Placeholder";
  sub_1CA94C438("Request…", 10);
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C368();
  v32 = OUTLINED_FUNCTION_5_13();

  v33 = v154;
  v34 = OUTLINED_FUNCTION_4_11(v154, sel_localizedStringForKey_value_table_);

  v35 = sub_1CA94C3A8();
  v37 = v36;

  *(inited + 320) = v35;
  *(inited + 328) = v37;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 352) = @"ProcessIntoContentItems";
  *(inited + 384) = v29;
  *(inited + 360) = 1;
  _s3__C3KeyVMa_0(0);
  v145 = v39;
  v144 = sub_1CA2FA080(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v40 = @"ProcessIntoContentItems";
  v41 = sub_1CA94C1E8();
  v42 = sub_1CA2F864C(v41);
  v143[4] = v42;
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1CA981350;
  OUTLINED_FUNCTION_6_5();
  v44[4] = v152;
  v44[5] = 0xD000000000000016;
  v44[6] = v45;
  v44[8] = v38;
  v44[9] = @"DisallowedVariableTypes";
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v43 + 80) = &unk_1F49F39F8;
  v140 = v46;
  v47 = v141;
  *(v43 + 104) = v46;
  *(v43 + 112) = v47;
  *(v43 + 120) = 0x646F4D4D4C4C4657;
  *(v43 + 128) = 0xEA00000000006C65;
  v48 = v151;
  *(v43 + 144) = v38;
  *(v43 + 152) = v48;
  v139 = @"DisallowedVariableTypes";
  v49 = sub_1CA94C438("Model (WFAskLLM)", 16);
  v136 = v50;
  v137 = v49;
  v51 = sub_1CA94C438("Model", 5);
  v53 = v52;
  v138 = &v135;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v135 - v149;
  sub_1CA948D98();
  v55 = v33;
  v56 = [v33 bundleURL];
  v57 = MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_3_9(v57);

  v58 = &selRef_isInputParameter;
  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = v54;
  v61 = v47;
  v62 = inited;
  v63 = v55;
  v64 = sub_1CA2F9F14(v137, v136, v51, v53, 0, 0, v60, v62);
  *(v43 + 184) = v146;
  *(v43 + 160) = v64;
  v65 = sub_1CA94C1E8();
  v66 = sub_1CA2F864C(v65);
  v67 = v143;
  v143[5] = v66;
  v156 = v67;
  v68 = static WFActionDefinitionRegistry.continuousChatEnabled()();
  v69 = v152;
  if (v68)
  {
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1CA981380;
    OUTLINED_FUNCTION_6_5();
    *(v71 + 32) = v69;
    *(v71 + 40) = 0xD000000000000011;
    *(v71 + 48) = v72;
    v73 = MEMORY[0x1E69E6158];
    *(v71 + 64) = MEMORY[0x1E69E6158];
    *(v71 + 72) = @"DefaultValue";
    *(v71 + 80) = 0;
    v74 = v142;
    *(v71 + 104) = MEMORY[0x1E69E6370];
    *(v71 + 112) = v74;
    v75 = v69;
    v76 = v74;
    v77 = @"DefaultValue";
    sub_1CA94C438("Show the model’s response and make additional requests before the final response is passed to the next action.", 112);
    OUTLINED_FUNCTION_1_2();
    sub_1CA94C368();
    v78 = OUTLINED_FUNCTION_5_13();

    v79 = OUTLINED_FUNCTION_4_11(v63, sel_localizedStringForKey_value_table_);

    v80 = sub_1CA94C3A8();
    v82 = v81;

    *(v70 + 120) = v80;
    *(v70 + 128) = v82;
    *(v70 + 144) = v73;
    *(v70 + 152) = v61;
    *(v70 + 160) = 0x7055776F6C6C6F46;
    *(v70 + 168) = 0xE800000000000000;
    v83 = v139;
    *(v70 + 184) = v73;
    *(v70 + 192) = v83;
    *(v70 + 200) = &unk_1F49F3A28;
    v84 = v151;
    *(v70 + 224) = v140;
    *(v70 + 232) = v84;
    v85 = v61;
    v86 = v84;
    v87 = v83;
    sub_1CA94C438("Follow Up", 9);
    OUTLINED_FUNCTION_1_2();
    v51 = sub_1CA94C438("Follow Up", 9);
    v143 = &v135;
    MEMORY[0x1EEE9AC00](v51);
    OUTLINED_FUNCTION_2_13();
    v88 = [v63 bundleURL];
    MEMORY[0x1EEE9AC00](v88);
    v89 = &v135 - v147;
    sub_1CA948B68();

    v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
    v91 = OUTLINED_FUNCTION_0_13();
    v98 = sub_1CA2F9F14(v91, v92, v93, v94, v95, v96, v97, v89);
    *(v70 + 264) = v146;
    *(v70 + 240) = v98;
    v99 = sub_1CA94C1E8();
    sub_1CA2F864C(v99);
    MEMORY[0x1CCAA1490]();
    if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    sub_1CA94C6E8();
    v63 = v154;
    v69 = v152;
    v58 = 0x1FAE4E000;
    v61 = v141;
  }

  v100 = swift_initStackObject();
  *(v100 + 16) = xmmword_1CA981370;
  OUTLINED_FUNCTION_6_5();
  v101[4] = v69;
  v101[5] = 0xD000000000000025;
  v101[6] = v102;
  v103 = v58;
  v104 = v63;
  v105 = MEMORY[0x1E69E6158];
  v106 = v142;
  v101[8] = MEMORY[0x1E69E6158];
  v101[9] = v106;
  v107 = v69;
  v108 = v106;
  sub_1CA94C438("Responses are automatically optimized for the actions they’re passed into — for example, if the response is passed into the “Repeat with Each” action, the model creates a list.\n\nTo manually specify the model’s output, select an output type using the “Output” parameter.\n\n**Private Cloud Compute Model**\nUse a large server-based model on Private Cloud Compute to handle complex requests while protecting your privacy.\n\n**On-Device Model**\nUse the on-device model to handle simple requests without the need for a network connection.\n\n**Extension**\nTap into ChatGPT's broad world knowledge and domain expertise.\n\nImage analysis is supported by the Private Cloud Compute and Extension models.", 702);
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C368();
  v109 = OUTLINED_FUNCTION_5_13();

  v110 = OUTLINED_FUNCTION_4_11(v104, v103 + 3668);

  v111 = sub_1CA94C3A8();
  v113 = v112;

  *(v100 + 80) = v111;
  *(v100 + 88) = v113;
  *(v100 + 104) = v105;
  *(v100 + 112) = v61;
  OUTLINED_FUNCTION_6_5();
  *(v100 + 120) = 0xD000000000000016;
  *(v100 + 128) = v114;
  v115 = v151;
  *(v100 + 144) = v105;
  *(v100 + 152) = v115;
  v116 = v61;
  v117 = v115;
  sub_1CA94C438("Output (WFGenerativeResultType)", 31);
  OUTLINED_FUNCTION_1_2();
  v118 = sub_1CA94C438("Output", 6);
  v153 = &v135;
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_2_13();
  v119 = [v154 bundleURL];
  v120 = MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_3_9(v120);

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = OUTLINED_FUNCTION_0_13();
  *(v100 + 160) = sub_1CA2F9F14(v122, v123, v124, v125, v126, v127, v128, v105);
  v129 = v139;
  *(v100 + 184) = v146;
  *(v100 + 192) = v129;
  *(v100 + 224) = v140;
  *(v100 + 200) = &unk_1F49F3A68;
  v130 = v129;
  v131 = sub_1CA94C1E8();
  sub_1CA2F864C(v131);
  MEMORY[0x1CCAA1490]();
  if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  sub_1CA94C6E8();
  v132 = v156;
  v133 = swift_allocObject();
  *(v133 + 16) = v132;
  static WFActionDefinitionRegistry.register(_:_:)(0xD00000000000001ALL, 0x80000001CA9A2470, sub_1CA304C7C, v133);
}

uint64_t static WFActionDefinitionRegistry.continuousChatEnabled()()
{
  v0 = sub_1CA94C3A8();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v4 = sub_1CA304C84(v0, v2);
  v5 = 1;
  if (v4)
  {
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x80000001CA9A2510;
    *(inited + 72) = MEMORY[0x1E69E6370];
    *(inited + 48) = 1;
    sub_1CA94C1E8();
    v8 = sub_1CA94C1A8();

    [v6 registerDefaults_];

    v9 = sub_1CA94C368();
    v5 = [v6 BOOLForKey_];
  }

  return v5;
}

id sub_1CA303EDC(uint64_t *a1)
{
  v108 = a1;
  v109 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFAskLLMAction");
  *(inited + 55) = -18;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v112 = sub_1CA94C438("ask|apple|intelligence|intelligent|ai|generative|chat|llm|language|chatgpt|siri", 79);
  v6 = v5;
  v7 = sub_1CA94C438("ask|apple|intelligence|intelligent|ai|generative|chat|llm|language|chatgpt|siri", 79);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v114 = v11;
  v116 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v101 - v116;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v111 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v115 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v113 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v101 - v113;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v112, v6, v7, v9, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v112 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v110 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438("Use a model to handle complex requests in your shortcuts.", 57);
  v106 = v25;
  v26 = sub_1CA94C438("Use a model to handle complex requests in your shortcuts.", 57);
  v28 = v27;
  v107 = &v101;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v101 - v116;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v101 - v113;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v106, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v112;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA2FA080(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v110;
  *(inited + 120) = sub_1CA6B3784(v34);
  *(inited + 144) = v35;
  *(inited + 152) = @"Input";
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v105 = xmmword_1CA981350;
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x6F72504D4C4C4657;
  *(v36 + 104) = 0xEB0000000074706DLL;
  *(v36 + 120) = MEMORY[0x1E69E6158];
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v110;
  *(v36 + 192) = &unk_1F49F3AA8;
  v38 = @"Input";
  v39 = sub_1CA94C1E8();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v107 = v40;
  *(inited + 160) = v39;
  *(inited + 184) = v40;
  *(inited + 192) = @"Name";
  v41 = @"Name";
  v42 = sub_1CA94C438("Use Model (Action Name)", 23);
  v102 = v43;
  v103 = v42;
  v44 = sub_1CA94C438("Use Model", 9);
  v101 = v45;
  v104 = &v101;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v101 - v116;
  sub_1CA948D98();
  v47 = v111;
  v48 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v113;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v103, v102, v44, v101, 0, 0, v46, &v101 - v49);
  *(inited + 224) = v112;
  *(inited + 232) = @"Output";
  v51 = swift_initStackObject();
  *(v51 + 16) = v105;
  *(v51 + 32) = 0x75736F6C63736944;
  *(v51 + 40) = 0xEF6C6576654C6572;
  *(v51 + 48) = 0x63696C627550;
  *(v51 + 56) = 0xE600000000000000;
  *(v51 + 72) = MEMORY[0x1E69E6158];
  *(v51 + 80) = 0x656C7069746C754DLL;
  *(v51 + 88) = 0xE800000000000000;
  *(v51 + 96) = 1;
  *(v51 + 120) = MEMORY[0x1E69E6370];
  *(v51 + 128) = 0x614E74757074754FLL;
  *(v51 + 136) = 0xEA0000000000656DLL;
  v52 = @"Output";
  v53 = sub_1CA94C438("Response (Default Output Name)", 30);
  v104 = v54;
  *&v105 = v53;
  v55 = sub_1CA94C438("Response", 8);
  v57 = v56;
  v106 = &v101;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v101 - v116;
  sub_1CA948D98();
  v59 = [v47 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 144) = sub_1CA2F9F14(v105, v104, v55, v57, 0, 0, v58, &v101 - v49);
  *(v51 + 168) = v112;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 216) = v110;
  *(v51 + 184) = 0xE500000000000000;
  *(v51 + 192) = &unk_1F49F3AD8;
  *(inited + 240) = sub_1CA94C1E8();
  *(inited + 264) = v107;
  *(inited + 272) = @"Parameters";
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v108;
  *(inited + 304) = v61;
  *(inited + 312) = @"ParameterSummary";
  v107 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v112 = swift_allocObject();
  v105 = xmmword_1CA981360;
  *(v112 + 16) = xmmword_1CA981360;
  v62 = @"Parameters";
  sub_1CA94C218();
  v63 = @"ParameterSummary";
  v64 = sub_1CA94C438("Use ${WFLLMModel} model", 23);
  v66 = v65;
  v67 = sub_1CA94C438("Use ${WFLLMModel} model", 23);
  v69 = v68;
  v108 = &v101;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v101 - v116;
  sub_1CA948D98();
  v71 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v101 - v113;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v64, v66, v67, v69, 0, 0, v70, v72);
  v75 = objc_allocWithZone(WFActionParameterSummaryValue);
  v76 = sub_1CA65DD78(0x646F4D4D4C4C4657, 0xEA00000000006C65, v74);
  *(v112 + 32) = v76;
  v108 = "Use ${WFLLMModel} model";
  v77 = sub_1CA94C438("Use ${WFLLMModel}", 17);
  v79 = v78;
  v80 = sub_1CA94C438("Use ${WFLLMModel}", 17);
  v82 = v81;
  v104 = &v101;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v101 - v116;
  sub_1CA948D98();
  v84 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v101 - v113;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v77, v79, v80, v82, 0, 0, v83, v85);
  v88 = objc_allocWithZone(WFActionParameterSummaryValue);
  v89 = sub_1CA65DD78(0xD000000000000013, v108 | 0x8000000000000000, v87);
  v90 = v112;
  *(v112 + 40) = v89;
  v91 = v107;
  *(inited + 320) = sub_1CA65AF90(v90);
  *(inited + 344) = v91;
  *(inited + 352) = @"RequiredResources";
  v92 = swift_allocObject();
  *(v92 + 16) = v105;
  v93 = objc_allocWithZone(type metadata accessor for WFAppleIntelligenceAccessResource());
  v94 = @"RequiredResources";
  *(v92 + 32) = [v93 init];
  *(v92 + 40) = [objc_allocWithZone(WFLLMActionAvailabilityResource) init];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442D8, &unk_1CA982E00);
  *(inited + 360) = v92;
  *(inited + 384) = v95;
  *(inited + 392) = @"UserInterfaceClasses";
  v96 = @"UserInterfaceClasses";
  v97 = sub_1CA94C1E8();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 400) = v97;
  *(inited + 424) = v98;
  *(inited + 432) = @"UserInterfaces";
  *(inited + 464) = v110;
  *(inited + 440) = &unk_1F49F3BB8;
  type metadata accessor for Key(0);
  sub_1CA2FA080(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v99 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA304C84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CA304CF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1CA304D34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA304D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v40 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = @"Label";
  v8 = @"Key";
  sub_1CA94C218();
  v9 = @"Label";
  v10 = sub_1CA94C438("Number (Parameter Label)", 24, v40);
  v12 = v11;
  v13 = sub_1CA94C438("Number", 6);
  v15 = v14;
  v16 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v10, v12, v13, v15, 0, 0, v18, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v24;
  *(inited + 104) = v25;
  *(inited + 112) = @"AllowsNegativeNumbers";
  v26 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v26;
  *(inited + 152) = @"FallbackToAllSupportedUnits";
  *(inited + 160) = 1;
  *(inited + 184) = v26;
  *(inited + 192) = @"WFUnitType";
  v27 = *MEMORY[0x1E69E11B8];
  type metadata accessor for WFMeasurementUnitType(0);
  *(inited + 224) = v28;
  *(inited + 200) = v27;
  _s3__C3KeyVMa_0(0);
  sub_1CA2A7470();
  v29 = @"AllowsNegativeNumbers";
  v30 = @"FallbackToAllSupportedUnits";
  v31 = @"WFUnitType";
  v32 = v27;
  v33 = sub_1CA94C1E8();
  v34 = sub_1CA2F864C(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_1CA981310;
  v36 = v42;
  *(v35 + 32) = v41;
  *(v35 + 40) = v36;
  v37 = objc_allocWithZone(WFUnitQuantityFieldParameter);
  sub_1CA94C218();
  *(v35 + 48) = [v37 initWithDefinition_];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v38 = sub_1CA94C1E8();

  return v38;
}

uint64_t sub_1CA305128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA30514C, 0, 0);
}

uint64_t sub_1CA30514C()
{
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(v0[4], v0[5]), (v2 & 1) != 0) && (v0[6] = *(*(v0[2] + 56) + 8 * v1), objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1CA305290;
    v4 = v0[3];

    return sub_1CA32B3B4(v4);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v6(0);
  }
}

uint64_t sub_1CA305290()
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
    v5 = sub_1CA305398;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1CA305398()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_1CA305554(v3);
    v5 = v4;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_4:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_9_2();

      __asm { BRAA            X2, X16 }
    }

    v11 = sub_1CA2A741C();
    OUTLINED_FUNCTION_127(&unk_1F4A11410, v11);
    v13 = v12;
    *(v12 + 24) = sub_1CA25B3D0(0, &qword_1EC443820, 0x1E6996F28);
    *v13 = v3;
    *(v13 + 32) = 2;
    swift_willThrow();
  }

  else
  {
    v8 = sub_1CA2A741C();
    OUTLINED_FUNCTION_127(&unk_1F4A11410, v8);
    v10 = v9;
    *(v9 + 24) = swift_getObjectType();
    *v10 = v1;
    *(v10 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_2();

  __asm { BRAA            X1, X16 }
}

void sub_1CA305554(void *a1)
{
  if (a1 && (sub_1CA677620(a1), v2))
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() unitFromString_];

  if (v4)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
    v5 = objc_opt_self();
    v6 = [v5 kilobytes];
    v7 = sub_1CA94CFD8();

    if (v7)
    {
      v8 = 1000;
    }

    else
    {
      v9 = [v5 megabytes];
      v10 = sub_1CA94CFD8();

      if (v10)
      {
        v8 = 1000000;
      }

      else
      {
        v11 = [v5 gigabytes];
        v12 = sub_1CA94CFD8();

        if (v12)
        {
          v8 = 1000000000;
        }

        else
        {
          v13 = [v5 terabytes];
          v14 = sub_1CA94CFD8();

          if (v14)
          {
            v8 = 1000000000000;
          }

          else
          {
            v15 = [v5 petabytes];
            v16 = sub_1CA94CFD8();

            if (v16)
            {
              v8 = 1000000000000000;
            }

            else
            {
              v17 = [v5 exabytes];
              v18 = sub_1CA94CFD8();

              if (v18)
              {
                v8 = 1000000000000000000;
              }

              else
              {
                v19 = [v5 zettabytes];
                v20 = sub_1CA94CFD8();

                if (v20)
                {
LABEL_28:
                  __break(1u);
                  goto LABEL_29;
                }

                v21 = [v5 yottabytes];
                v22 = sub_1CA94CFD8();

                if (v22)
                {
LABEL_29:
                  __break(1u);
                  return;
                }

                v8 = 1;
              }
            }
          }
        }
      }
    }

    if (a1)
    {
      v23 = [a1 magnitude];
      v24 = [v23 longLongValue];
    }

    else
    {
      v24 = 0;
    }

    if ((v24 * v8) >> 64 == (v24 * v8) >> 63)
    {
      [objc_allocWithZone(MEMORY[0x1E6996E28]) initWithByteCount_];

      return;
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_1CA305884()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 16) = v3;
  *(v0 + 40) = *v4;
  v5 = sub_1CA25B3D0(0, &qword_1EC4442E0, 0x1E6996E28);
  *(v0 + 56) = v5;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1CA305948;

  return MEMORY[0x1EEDF81A0](v5);
}

uint64_t sub_1CA305948()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    __asm { BRAA            X2, X16 }
  }

  *(v5 + 72) = v3;

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA305A8C()
{
  OUTLINED_FUNCTION_6();
  if (v0[9])
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    v0[10] = v1;
    if (v1)
    {
      v2 = swift_task_alloc();
      v0[11] = v2;
      *v2 = v0;
      v2[1] = sub_1CA305BEC;
      v4 = v0[5];
      v3 = v0[6];
      v5 = v0[3];
      v6 = v0[4];

      return sub_1CA305128(v4, v3, v5, v6);
    }

    swift_unknownObjectRelease();
  }

  v8 = v0[2];
  v9 = sub_1CA2A741C();
  OUTLINED_FUNCTION_127(&unk_1F4A11410, v9);
  v10 = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  OUTLINED_FUNCTION_6_12(v10);
  v11 = v8;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v12(0);
}

uint64_t sub_1CA305BEC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v6 = sub_1CA305DA4;
  }

  else
  {
    swift_unknownObjectRelease();
    v6 = sub_1CA305CFC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA305CFC()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = sub_1CA94CFD8();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v3(v2 & 1);
}

uint64_t sub_1CA305DA4()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA305E08()
{
  OUTLINED_FUNCTION_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = sub_1CA25B3D0(0, &qword_1EC4442E0, 0x1E6996E28);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1CA305EC4;

  return MEMORY[0x1EEDF81A0](v6);
}

uint64_t sub_1CA305EC4()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 64) = v3;

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA306004()
{
  OUTLINED_FUNCTION_6();
  if (v0[8])
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    v0[9] = v1;
    if (v1)
    {
      v2 = swift_task_alloc();
      v0[10] = v2;
      *v2 = v0;
      v2[1] = sub_1CA306164;
      v3 = v0[5];
      v4 = v0[6];
      v5 = v0[4];
      v6 = v0[2];

      return sub_1CA305128(v6, v5, v3, v4);
    }

    swift_unknownObjectRelease();
  }

  v8 = v0[3];
  v9 = sub_1CA2A741C();
  OUTLINED_FUNCTION_127(&unk_1F4A11410, v9);
  v10 = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  OUTLINED_FUNCTION_6_12(v10);
  v11 = v8;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v12();
}

uint64_t sub_1CA306164()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  if (v0)
  {
    v5 = sub_1CA306374;
  }

  else
  {
    v5 = sub_1CA30626C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA30626C()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = [*(v0 + 72) compare_];

    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_2_4();

    return v3(v2);
  }

  else
  {
    v5 = sub_1CA2A741C();
    OUTLINED_FUNCTION_127(&unk_1F4A11410, v5);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_5();

    return v7();
  }
}

uint64_t sub_1CA306374()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA3063D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2A715C;

  return sub_1CA305884();
}

uint64_t sub_1CA306484()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2A731C;

  return sub_1CA305E08();
}

id sub_1CA306580()
{
  v0 = sub_1CA949D18();
  v152 = *(v0 - 8);
  v153 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v151 = v142 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v150 = v142 - v3;
  v154 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9A2690;
  *(inited + 64) = v5;
  *(inited + 72) = @"ActionKeywords";
  v6 = @"ActionClass";
  v7 = @"ActionKeywords";
  v8 = sub_1CA94C438("animated|gif|burst|split|individual|explode|separate", 52);
  v10 = v9;
  v11 = sub_1CA94C438("animated|gif|burst|split|individual|explode|separate", 52);
  v13 = v12;
  v14 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v160 = v15;
  v161 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v142 - v161;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v159 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v158 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v157 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v142 - v157;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v8, v10, v11, v13, 0, 0, v16, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v156 = v23;
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"Description";
  v155 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA9813C0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v148 = sub_1CA94C438("An animated GIF or photo burst", 30);
  *&v147 = v27;
  v146 = sub_1CA94C438("An animated GIF or photo burst", 30);
  v29 = v28;
  v149 = v142;
  MEMORY[0x1EEE9AC00](v146);
  v30 = v142 - v161;
  sub_1CA948D98();
  v31 = v159;
  v32 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v142 - v157;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v148, v147, v146, v29, 0, 0, v30, v33);
  *(v24 + 64) = v156;
  *(v24 + 72) = @"DescriptionResult";
  v35 = @"DescriptionResult";
  v148 = sub_1CA94C438("The frames", 10);
  *&v147 = v36;
  v146 = sub_1CA94C438("The frames", 10);
  v38 = v37;
  v149 = v142;
  MEMORY[0x1EEE9AC00](v146);
  v39 = v142 - v161;
  sub_1CA948D98();
  v40 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = v157;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v148, v147, v146, v38, 0, 0, v39, v142 - v41);
  v43 = v156;
  *(v24 + 104) = v156;
  *(v24 + 112) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v148 = sub_1CA94C438("Splits an animated GIF or a photo burst into individual frames.", 63);
  *&v147 = v45;
  v146 = sub_1CA94C438("Splits an animated GIF or a photo burst into individual frames.", 63);
  v47 = v46;
  v149 = v142;
  MEMORY[0x1EEE9AC00](v146);
  v48 = v142 - v161;
  sub_1CA948D98();
  v49 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v148, v147, v146, v47, 0, 0, v48, v142 - v41);
  *(v24 + 144) = v43;
  *(v24 + 120) = v51;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v52 = sub_1CA94C1E8();
  v53 = v155;
  *(inited + 120) = sub_1CA6B3784(v52);
  *(inited + 144) = v53;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x656C70727550;
  *(inited + 168) = 0xE600000000000000;
  v54 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000027;
  *(inited + 208) = 0x80000001CA99BB90;
  *(inited + 224) = v54;
  *(inited + 232) = @"Input";
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  v147 = xmmword_1CA981350;
  *(v55 + 16) = xmmword_1CA981350;
  *(v55 + 32) = 0x656C7069746C754DLL;
  *(v55 + 40) = 0xE800000000000000;
  v56 = MEMORY[0x1E69E6370];
  *(v55 + 48) = 0;
  *(v55 + 72) = v56;
  strcpy((v55 + 80), "ParameterKey");
  *(v55 + 93) = 0;
  *(v55 + 94) = -5120;
  *(v55 + 96) = 0x6567616D494657;
  *(v55 + 104) = 0xE700000000000000;
  *(v55 + 120) = v54;
  *(v55 + 128) = 0x6465726975716552;
  *(v55 + 136) = 0xE800000000000000;
  *(v55 + 144) = 1;
  *(v55 + 168) = v56;
  *(v55 + 176) = 0x7365707954;
  v57 = v56;
  *(v55 + 184) = 0xE500000000000000;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v55 + 216) = v155;
  *(v55 + 192) = &unk_1F49F3BE8;
  v58 = @"IconColor";
  v59 = @"IconSymbol";
  v60 = @"Input";
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v149 = v62;
  *(inited + 240) = v61;
  *(inited + 264) = v62;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 0;
  *(inited + 304) = v57;
  *(inited + 312) = @"Name";
  v63 = @"InputPassthrough";
  v64 = @"Name";
  v65 = sub_1CA94C438("Get Frames from Image (Action Name)", 35);
  v144 = v66;
  v145 = v65;
  v67 = sub_1CA94C438("Get Frames from Image", 21);
  v69 = v68;
  v146 = v142;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v161;
  sub_1CA948D98();
  v71 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = v142 - v157;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v145, v144, v67, v69, 0, 0, v142 - v70, v72);
  v74 = v156;
  *(inited + 344) = v156;
  *(inited + 352) = @"Output";
  v75 = swift_allocObject();
  *(v75 + 16) = v147;
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
  v77 = sub_1CA94C438("Frames from Image (Default Output Name)", 39);
  v146 = v78;
  *&v147 = v77;
  v79 = sub_1CA94C438("Frames from Image", 17);
  v145 = v80;
  v148 = v142;
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948D98();
  v81 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v142 - v157;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 144) = sub_1CA2F9F14(v147, v146, v79, v145, 0, 0, v142 - v70, v82);
  *(v75 + 168) = v74;
  *(v75 + 176) = 0x7365707954;
  *(v75 + 216) = v155;
  *(v75 + 184) = 0xE500000000000000;
  *(v75 + 192) = &unk_1F49F3C18;
  v84 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v149;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v149 = swift_allocObject();
  *(v149 + 1) = xmmword_1CA9813B0;
  v148 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1CA981370;
  *(v85 + 32) = @"Class";
  *(v85 + 40) = 0xD000000000000019;
  *(v85 + 48) = 0x80000001CA99B030;
  *(v85 + 64) = v84;
  *(v85 + 72) = @"Key";
  *(v85 + 80) = 0x6567616D494657;
  *(v85 + 88) = 0xE700000000000000;
  *(v85 + 104) = v84;
  *(v85 + 112) = @"Label";
  v86 = @"Parameters";
  v87 = @"Class";
  v88 = @"Key";
  v89 = @"Label";
  v90 = sub_1CA94C438("Image (WFImage)", 15);
  v144 = v91;
  v145 = v90;
  v92 = sub_1CA94C438("Image", 5);
  v143 = v93;
  v146 = v142;
  *&v147 = inited;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v142 - v161;
  sub_1CA948D98();
  v95 = v159;
  v96 = [v159 bundleURL];
  v142[1] = v142;
  MEMORY[0x1EEE9AC00](v96);
  v97 = v157;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 120) = sub_1CA2F9F14(v145, v144, v92, v143, 0, 0, v94, v142 - v97);
  v99 = v156;
  *(v85 + 144) = v156;
  *(v85 + 152) = @"Placeholder";
  v100 = @"Placeholder";
  v101 = sub_1CA94C438("Image (WFImage)", 15);
  v144 = v102;
  v145 = v101;
  v143 = sub_1CA94C438("Image", 5);
  v104 = v103;
  v146 = v142;
  MEMORY[0x1EEE9AC00](v143);
  v105 = v142 - v161;
  sub_1CA948D98();
  v106 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 160) = sub_1CA2F9F14(v145, v144, v143, v104, 0, 0, v105, v142 - v97);
  *(v85 + 184) = v99;
  *(v85 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1CA97EDF0;
  v109 = @"PreferredTypes";
  v110 = v150;
  sub_1CA949C88();
  v111 = sub_1CA949C68();
  v113 = v112;
  v114 = *(v152 + 8);
  v115 = v110;
  v116 = v153;
  v114(v115, v153);
  *(v108 + 32) = v111;
  *(v108 + 40) = v113;
  v117 = v151;
  sub_1CA949D08();
  v118 = sub_1CA949C68();
  v120 = v119;
  v114(v117, v116);
  *(v108 + 48) = v118;
  *(v108 + 56) = v120;
  *(v85 + 224) = v155;
  *(v85 + 200) = v108;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v121 = sub_1CA94C1E8();
  v122 = sub_1CA2F864C(v121);
  v123 = v149;
  v149[4] = v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v125 = v147;
  *(v147 + 400) = v123;
  *(v125 + 424) = v124;
  *(v125 + 432) = @"ParameterSummary";
  v126 = @"ParameterSummary";
  v127 = sub_1CA94C438("Get frames from ${WFImage} (Parameter Summary)", 46);
  v129 = v128;
  v130 = sub_1CA94C438("Get frames from ${WFImage}", 26);
  v132 = v131;
  v156 = v142;
  MEMORY[0x1EEE9AC00](v130);
  v133 = v142 - v161;
  sub_1CA948D98();
  v134 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = v142 - v157;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v127, v129, v130, v132, 0, 0, v133, v135);
  v138 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v139 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v125 + 440) = v138;
  *(v125 + 464) = v139;
  *(v125 + 472) = @"ResidentCompatible";
  *(v125 + 504) = MEMORY[0x1E69E6370];
  *(v125 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v140 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA30782C()
{
  OUTLINED_FUNCTION_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = *v0;
  v1[10] = *v0;
  v1[11] = *(v4 + 80);
  OUTLINED_FUNCTION_4_12();
  v1[12] = v5;
  v1[13] = *(v6 + 64);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA307958, v0, 0);
}

uint64_t sub_1CA307958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[10];
  sub_1CA3077F4();
  v14 = *(v13 + 88);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443898, &unk_1CA9855B0);
  sub_1CA94C888();
  v16 = *(v13 + 96);
  sub_1CA94C268();

  v17 = v12[5];
  v12[16] = v17;
  if (v17)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    v12[17] = v21;
    *v21 = v22;
    v21[1] = sub_1CA307CA8;
    v23 = v12[7];
    v24 = MEMORY[0x1E69E7288];
    v25 = v17;
    v26 = v14;
    v27 = v15;
  }

  else
  {
    v29 = v12[14];
    v28 = v12[15];
    v30 = v12[12];
    v31 = v12[11];
    v32 = v12[8];
    v41 = v12[9];
    v43 = v32;
    v33 = sub_1CA94C858();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v33);
    v42 = *(v30 + 16);
    v42(v29, v32, v31);
    type metadata accessor for ConcurrentCache(255, v31, v14, v16);
    WitnessTable = swift_getWitnessTable();
    v44 = v15;
    v35 = (*(v30 + 80) + 64) & ~*(v30 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = v41;
    *(v36 + 3) = WitnessTable;
    *(v36 + 4) = v31;
    *(v36 + 5) = v14;
    *(v36 + 6) = v16;
    *(v36 + 7) = v41;
    (*(v30 + 32))(&v36[v35], v29, v31);
    swift_retain_n();
    v37 = sub_1CA308818(0, 0, v28, &unk_1CA982EC0, v36, v14);
    v12[19] = v37;
    v42(v29, v43, v31);
    v12[6] = v37;
    swift_beginAccess();
    sub_1CA94C248();

    sub_1CA94C278();
    swift_endAccess();
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    v12[20] = v38;
    *v38 = v39;
    v38[1] = sub_1CA307E34;
    v23 = v12[7];
    v24 = MEMORY[0x1E69E7288];
    v25 = v37;
    v26 = v14;
    v27 = v44;
  }

  return MEMORY[0x1EEE6DA10](v23, v25, v26, v27, v24, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_1CA307CA8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1CA307FC0;
  }

  else
  {
    v6 = sub_1CA307DCC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1CA307DCC()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_3_6();

  return v0();
}

uint64_t sub_1CA307E34()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1CA30802C;
  }

  else
  {
    v6 = sub_1CA307F58;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1CA307F58()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_3_6();

  return v0();
}

uint64_t sub_1CA307FC0()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA30802C()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA308098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v7 = *a4;
  v5[9] = *a4;
  v8 = *(v7 + 88);
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = *(v9 + 64);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v5[14] = swift_task_alloc();
  v10 = *(v7 + 80);
  v5[15] = v10;
  v5[16] = *(v10 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA30823C, a4, 0);
}

uint64_t sub_1CA30823C()
{
  OUTLINED_FUNCTION_0();
  v6 = (*(v0[7] + 120) + **(v0[7] + 120));
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v0[18] = v1;
  *v1 = v2;
  v1[1] = sub_1CA30832C;
  v3 = v0[8];
  v4 = v0[6];

  return v6(v4, v3);
}

uint64_t sub_1CA30832C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;

  if (v0)
  {

    OUTLINED_FUNCTION_5();

    return v4();
  }

  else
  {
    v6 = *(v2 + 56);

    return MEMORY[0x1EEE6DFA0](sub_1CA308478, v6, 0);
  }
}

uint64_t sub_1CA308478()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  (*(v0[16] + 16))();
  v8 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  v9 = v3;
  (*(v5 + 16))(v3, v7, v4);
  v10 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v1;
  *(v11 + 5) = v4;
  *(v11 + 6) = *(v6 + 96);
  (*(v5 + 32))(&v11[v10], v9, v4);
  v0[5] = sub_1CA308818(0, 0, v2, &unk_1CA982F58, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443898, &unk_1CA9855B0);
  sub_1CA94C888();
  sub_1CA94C248();
  sub_1CA94C278();
  swift_endAccess();

  OUTLINED_FUNCTION_3_6();

  return v12();
}

uint64_t sub_1CA308688(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1CA308FE0;

  return sub_1CA308098(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_1CA308774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CA308798, 0, 0);
}

uint64_t sub_1CA308798()
{
  OUTLINED_FUNCTION_0();
  (*(*(v0[4] - 8) + 16))(v0[2], v0[3]);
  OUTLINED_FUNCTION_3_6();

  return v1();
}

uint64_t sub_1CA308818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23[-1] - v11;
  v23[5] = a4;
  v23[6] = a5;
  sub_1CA308D4C(a3, &v23[-1] - v11);
  v13 = sub_1CA94C858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1CA308DBC(v12);
  }

  else
  {
    sub_1CA94C848();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CA94C7C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CA94C418();
      sub_1CA308E24(v19 + 32, v23);

      v20 = v23[0];
      sub_1CA308DBC(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CA308DBC(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t ConcurrentCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ConcurrentCache.__deallocating_deinit()
{
  ConcurrentCache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of ConcurrentCache.value(for:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(*v2 + 160) + **(*v2 + 160));
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v3 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1CA308C60;

  return v9(a1, a2);
}

uint64_t sub_1CA308C60()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA308D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA308DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA308E24@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA308EE0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1CA308FE0;

  return sub_1CA308774(a1, v7, v8, v1 + v6, v4, v5);
}

uint64_t static ShazamActionMigration.workflowNeedsMigration(_:fromClientVersion:)(uint64_t a1, uint64_t a2)
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

Swift::Void __swiftcall ShazamActionMigration.migrateWorkflow()()
{
  v1 = v0;
  v2 = [v0 actions];
  if (v2)
  {
    v3 = v2;
    v45 = &v43;
    v44 = sub_1CA948AF8();
    v43 = *(v44 - 8);
    MEMORY[0x1EEE9AC00](v44);
    v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v3;
    sub_1CA94CF68();
    v6 = 0x80000001CA99E4A0;
    v52 = 0x80000001CA9A2890;
    v49 = 0x80000001CA99E690;
    v50 = "${WFImage}";
    v47 = 0x80000001CA9A28B0;
    v48 = "WFSwitchParameter";
    v51 = 0x80000001CA99E4A0;
    while (1)
    {
      do
      {
        sub_1CA948AE8();
        if (!v59)
        {
          (*(v43 + 8))(v5, v44);
          [v1 finish];

          return;
        }

        sub_1CA2C0A20(&v58, &v56);
        sub_1CA2C0A30();
      }

      while ((OUTLINED_FUNCTION_2_14(&v54) & 1) == 0);
      v7 = v54;
      v8 = [v1 actionIdentifierKey];
      v9 = sub_1CA94C3A8();
      v11 = v10;

      *&v54 = v9;
      *(&v54 + 1) = v11;
      sub_1CA94D848();
      v12 = OUTLINED_FUNCTION_1_13();
      v14 = [v12 v13];
      swift_unknownObjectRelease();
      if (v14)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      v56 = v54;
      v57 = v55;
      if (!*(&v55 + 1))
      {
        sub_1CA2C0A74(&v56);
        goto LABEL_28;
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_28;
      }

      if (v53[0] == 0xD00000000000001FLL && v6 == v53[1])
      {
      }

      else
      {
        v16 = sub_1CA94D7F8();

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v17 = [v1 actionIdentifierKey];
      v18 = sub_1CA94C3A8();
      v20 = v19;

      v21 = sub_1CA94C368();
      *&v56 = v18;
      *(&v56 + 1) = v20;
      OUTLINED_FUNCTION_3_10();
      v22 = OUTLINED_FUNCTION_1_13();
      [v22 v23];

      swift_unknownObjectRelease();
      *&v54 = 0xD00000000000001ALL;
      *(&v54 + 1) = v52;
      sub_1CA94D848();
      v24 = OUTLINED_FUNCTION_1_13();
      v26 = [v24 v25];
      swift_unknownObjectRelease();
      if (v26)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      v56 = v54;
      v57 = v55;
      v6 = v51;
      if (!*(&v55 + 1))
      {
        sub_1CA2C0A74(&v56);
LABEL_27:
        sub_1CA94C1E8();
        v40 = sub_1CA94C1A8();

        *&v56 = 0xD00000000000001ALL;
        *(&v56 + 1) = v52;
        OUTLINED_FUNCTION_3_10();
        v41 = OUTLINED_FUNCTION_1_13();
        [v41 v42];

        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      if ((OUTLINED_FUNCTION_2_14(v53) & 1) == 0)
      {
        goto LABEL_27;
      }

      v27 = v53[0];
      v28 = sub_1CA94C7A8();
      strcpy(&v56, "addToLibrary");
      BYTE13(v56) = 0;
      HIWORD(v56) = -5120;
      OUTLINED_FUNCTION_3_10();
      v29 = OUTLINED_FUNCTION_0_14();
      [v29 v30];

      swift_unknownObjectRelease();
      v31 = sub_1CA94C368();
      v32 = OUTLINED_FUNCTION_0_14();
      [v32 v33];

      *&v56 = 0xD000000000000027;
      *(&v56 + 1) = v49;
      OUTLINED_FUNCTION_3_10();
      v34 = OUTLINED_FUNCTION_0_14();
      v36 = [v34 v35];
      swift_unknownObjectRelease();
      if (v36)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
        __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
        v36 = sub_1CA94D7D8();
        __swift_destroy_boxed_opaque_existential_0(&v56);
      }

      v6 = v51;
      *&v54 = 0xD000000000000014;
      *(&v54 + 1) = v47;
      [v27 __swift_setObject_forKeyedSubscript_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v37 = sub_1CA94C368();
      v38 = OUTLINED_FUNCTION_0_14();
      [v38 v39];

LABEL_28:
    }
  }
}

id ShazamActionMigration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShazamActionMigration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ShazamActionMigration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA309888()
{
  OUTLINED_FUNCTION_0();
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v0[3] = OUTLINED_FUNCTION_45();
  v2 = sub_1CA94AA48();
  v0[4] = v2;
  v0[5] = *(v2 - 8);
  v0[6] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA30996C, 0, 0);
}

uint64_t sub_1CA30996C()
{
  v25 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_1CA94AA68();
  v5 = sub_1CA2F0A90();
  (*(v2 + 8))(v1, v3);
  sub_1CA94AA38();
  v6 = sub_1CA94B458();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v6);
  v8 = v0[3];
  if (EnumTagSinglePayload == 1)
  {
    sub_1CA30A3DC(v0[3]);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = sub_1CA94B378();
    v10 = v11;
    (*(*(v6 - 8) + 8))(v8, v6);
  }

  v12 = sub_1CA94AA28();
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x1E696E938]);
  v16 = sub_1CA470FE4(v5, v9, v10, v12, v14, 0);
  v24[3] = sub_1CA30A444();
  v24[0] = v16;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 paymentMethodValueType];
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v21 = sub_1CA320AB4(v24, v19);

  v22 = v0[1];

  return v22(v21);
}

uint64_t sub_1CA309B68()
{
  OUTLINED_FUNCTION_0();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v0[11] = OUTLINED_FUNCTION_45();
  v4 = sub_1CA94AA48();
  v0[12] = v4;
  v0[13] = *(v4 - 8);
  v0[14] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA309C50, 0, 0);
}

uint64_t sub_1CA309C50()
{
  v3 = [*(v0 + 72) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v4 = sub_1CA55BBA4(v0 + 16);
  *(v0 + 120) = v4;
  v6 = v4;
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1CA2F0A08([v6 type], v7);
  *(v0 + 48) = sub_1CA5EF41C(v6);
  *(v0 + 56) = v9;
  *(v0 + 128) = v9;
  v10 = [v8 displayRepresentation];
  *(v0 + 136) = v10;
  if (v10)
  {
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_1CA309E48;

    return sub_1CA3BC4F4();
  }

  else
  {
    OUTLINED_FUNCTION_1_14();
    v12 = sub_1CA94B458();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v12);
    OUTLINED_FUNCTION_4_13();

    OUTLINED_FUNCTION_5();

    return v13();
  }
}

uint64_t sub_1CA309E48()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *v4 = *v1;
  v3[19] = v0;

  v5 = v2[17];
  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);

    v6 = sub_1CA30A03C;
  }

  else
  {

    v6 = sub_1CA309F9C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA309F9C()
{
  OUTLINED_FUNCTION_1_14();
  v2 = sub_1CA94B458();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
  OUTLINED_FUNCTION_4_13();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA30A03C()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA30A0AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA30A15C;

  return sub_1CA309B68();
}

uint64_t sub_1CA30A15C()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA30A240()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA30A2D4;

  return sub_1CA309888();
}

uint64_t sub_1CA30A2D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1CA30A3DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CA30A444()
{
  result = qword_1EC4442E8;
  if (!qword_1EC4442E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4442E8);
  }

  return result;
}

id sub_1CA30A4BC()
{
  v38 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  *(inited + 112) = @"Input";
  v6 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 120) = v7;
  *(inited + 144) = v8;
  *(inited + 152) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v9;
  *(inited + 192) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438("Find Windows (Action Name)", 26);
  v14 = v13;
  v15 = sub_1CA94C438("Find Windows", 12);
  v17 = v16;
  v18 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v37 = 0x80000001CA993B60;
  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v20, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v26;
  *(inited + 224) = v27;
  *(inited + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1CA9813B0;
  v39 = 2;
  v40 = 0;
  v29 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v30 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v39);
  *(v28 + 32) = v31;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 240) = v28;
  v32 = sub_1CA94C368();
  v33 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v32;
  *(inited + 280) = 0xD000000000000013;
  *(inited + 288) = v37;
  v34 = sub_1CA94C368();
  *(inited + 344) = v33;
  *(inited + 312) = v34;
  *(inited + 320) = 0x656D614E20707041;
  *(inited + 328) = 0xE800000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA30A990()
{
  v105 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9A2980;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("URL|podcast|show", 16);
  v6 = v5;
  v7 = sub_1CA94C438("URL|podcast|show", 16);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = v11;
  v12 = &v99 - v110;
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
  v16 = &v99 - v108;
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
  v26 = sub_1CA94C438("Follows podcasts or podcast feed URLs passed into the action.", 61);
  v102 = v27;
  v28 = sub_1CA94C438("Follows podcasts or podcast feed URLs passed into the action.", 61);
  v30 = v29;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v99 - v110;
  sub_1CA948D98();
  v32 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v99 - v108;
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
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v104;
  *(v38 + 192) = &unk_1F49F3D78;
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
  v46 = sub_1CA94C438("Follow Podcast (Action Name)", 28);
  v48 = v47;
  v49 = sub_1CA94C438("Follow Podcast", 14);
  v51 = v50;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v99 - v110;
  sub_1CA948D98();
  v53 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v99 - v108;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v101 = @"Parameters";
  *(inited + 304) = v106;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v103 = swift_allocObject();
  *(v103 + 1) = xmmword_1CA9813B0;
  v102 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA981300;
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
  *(v56 + 200) = 0x7475706E494657;
  *(v56 + 208) = 0xE700000000000000;
  *(v56 + 224) = v58;
  *(v56 + 232) = @"KeyboardType";
  *(v56 + 240) = 5001813;
  *(v56 + 248) = 0xE300000000000000;
  *(v56 + 264) = v58;
  *(v56 + 272) = @"Label";
  v59 = v101;
  v60 = @"AllowsMultipleValues";
  v61 = @"AutocapitalizationType";
  v62 = @"Class";
  v63 = @"DisableAutocorrection";
  v64 = @"Key";
  v65 = @"KeyboardType";
  v66 = @"Label";
  v67 = sub_1CA94C438("Podcast URL (WFInput)", 21);
  v100 = v68;
  v69 = sub_1CA94C438("Podcast URL", 11);
  v71 = v70;
  v101 = &v99;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v99 - v110;
  sub_1CA948D98();
  v73 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v99 - v108;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 280) = sub_1CA2F9F14(v67, v100, v69, v71, 0, 0, v72, v74);
  *(v56 + 304) = v106;
  *(v56 + 312) = @"TextContentType";
  *(v56 + 344) = MEMORY[0x1E69E6158];
  *(v56 + 320) = 5001813;
  *(v56 + 328) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v76 = @"TextContentType";
  v77 = sub_1CA94C1E8();
  v78 = sub_1CA2F864C(v77);
  v79 = v103;
  v103[4] = v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v79;
  *(inited + 344) = v80;
  *(inited + 352) = @"ParameterSummary";
  v81 = @"ParameterSummary";
  v82 = sub_1CA94C438("Follow ${WFInput} (Parameter Summary)", 37);
  v84 = v83;
  v85 = sub_1CA94C438("Follow ${WFInput}", 17);
  v87 = v86;
  v106 = &v99;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v99 - v110;
  sub_1CA948D98();
  v89 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v99 - v108;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v82, v84, v85, v87, 0, 0, v88, v90);
  v93 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v94 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v93;
  *(inited + 384) = v94;
  *(inited + 392) = @"RemoteExecuteOnPlatforms";
  *(inited + 400) = &unk_1F49F3DB8;
  v95 = v104;
  *(inited + 424) = v104;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v95;
  *(inited + 440) = &unk_1F49F3DE8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v96 = @"RemoteExecuteOnPlatforms";
  v97 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA30B668()
{
  v133 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9A2AC0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v134 = sub_1CA94C438("loop|while|for", 14);
  v5 = v4;
  v6 = sub_1CA94C438("loop|while|for", 14);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v138 = v10;
  v139 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v126 - v139;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v135 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v136 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v137 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v126 - v137;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v134, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v134 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v132 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Repeats the contained actions, running them the specified number of times.", 74);
  v130 = v24;
  v25 = sub_1CA94C438("Repeats the contained actions, running them the specified number of times.", 74);
  v27 = v26;
  v131 = &v126;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v126 - v139;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v126 - v137;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v130, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v134;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v132;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x746165706572;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA9813C0;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  *(v36 + 80) = 0x6465726975716552;
  *(v36 + 88) = 0xE800000000000000;
  *(v36 + 96) = 0;
  *(v36 + 120) = v37;
  *(v36 + 128) = 0x7365707954;
  *(v36 + 136) = 0xE500000000000000;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 168) = v132;
  *(v36 + 144) = &unk_1F49F3E18;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v131 = v42;
  *(inited + 240) = v41;
  *(inited + 264) = v42;
  *(inited + 272) = @"Name";
  v43 = @"Name";
  v128 = sub_1CA94C438("Repeat (Action Name)", 20);
  v45 = v44;
  v46 = sub_1CA94C438("Repeat", 6);
  v48 = v47;
  v129 = &v126;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v126 - v139;
  sub_1CA948D98();
  v50 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v126 - v137;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v128, v45, v46, v48, 0, 0, v49, v51);
  v53 = v134;
  *(inited + 304) = v134;
  *(inited + 312) = @"Output";
  v54 = swift_allocObject();
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
  v56 = sub_1CA94C438("Repeat (Default Output Name)", 28);
  v128 = v57;
  v129 = v56;
  v127 = sub_1CA94C438("Repeat", 6);
  v59 = v58;
  v130 = &v126;
  MEMORY[0x1EEE9AC00](v127);
  v60 = &v126 - v139;
  sub_1CA948D98();
  v61 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v126 - v137;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v129, v128, v127, v59, 0, 0, v60, v62);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 216) = v132;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 192) = &unk_1F49F3E48;
  v64 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v131;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1CA9813B0;
  v131 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1CA981400;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000012;
  *(v65 + 48) = 0x80000001CA99B980;
  *(v65 + 64) = v64;
  *(v65 + 72) = @"DefaultValue";
  v66 = MEMORY[0x1E69E6530];
  *(v65 + 80) = 1;
  *(v65 + 104) = v66;
  *(v65 + 112) = @"Key";
  strcpy((v65 + 120), "WFRepeatCount");
  *(v65 + 134) = -4864;
  *(v65 + 144) = v64;
  *(v65 + 152) = @"MinimumValue";
  *(v65 + 160) = 0;
  *(v65 + 184) = v66;
  *(v65 + 192) = @"StepperDescription";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"DefaultValue";
  v70 = @"Key";
  v71 = @"MinimumValue";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438("Repetitions (WFRepeatCount)", 27);
  v129 = v74;
  v75 = sub_1CA94C438("Repetitions", 11);
  v77 = v76;
  v130 = &v126;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v126 - v139;
  sub_1CA948D98();
  v79 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v126 - v137;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 200) = sub_1CA2F9F14(v73, v129, v75, v77, 0, 0, v78, v80);
  *(v65 + 224) = v134;
  *(v65 + 232) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438("%d Times", v126);
  v129 = v84;
  v130 = v83;
  v85 = v84;
  v144 = 0;
  v145 = 0xE000000000000000;
  sub_1CA94D408();

  v144 = v83;
  v145 = v85;
  v142 = 10;
  v143 = 0xE100000000000000;
  v140 = 32;
  v141 = 0xE100000000000000;
  sub_1CA27BAF0();
  v144 = sub_1CA94D1B8();
  v145 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v128 = &v126;
  v88 = v144;
  v127 = v145;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v126 - v139;
  sub_1CA948D98();
  v90 = v135;
  v91 = [v135 bundleURL];
  v126 = &v126;
  MEMORY[0x1EEE9AC00](v91);
  v92 = v137;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 240) = sub_1CA2F9F14(v88, v127, v130, v129, 0, 0, v89, &v126 - v92);
  v94 = v134;
  *(v65 + 264) = v134;
  *(v65 + 272) = @"StepperPrefix";
  v95 = @"StepperPrefix";
  v96 = sub_1CA94C438("Repeat (WFRepeatCount)", 22);
  v128 = v97;
  v129 = v96;
  v98 = sub_1CA94C438("Repeat", 6);
  v127 = v99;
  v130 = &v126;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v126 - v139;
  sub_1CA948D98();
  v101 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v129, v128, v98, v127, 0, 0, v100, &v126 - v92);
  *(v65 + 304) = v94;
  *(v65 + 280) = v103;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v104 = sub_1CA94C1E8();
  v105 = sub_1CA2F864C(v104);
  v106 = v132;
  *(v132 + 32) = v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v106;
  *(inited + 384) = v107;
  *(inited + 392) = @"ParameterSummary";
  v108 = @"ParameterSummary";
  v109 = sub_1CA94C438("Repeat ${WFRepeatCount} (Parameter Summary)", 43);
  v111 = v110;
  v112 = sub_1CA94C438("Repeat ${WFRepeatCount}", 23);
  v114 = v113;
  v134 = &v126;
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v126 - v139;
  sub_1CA948D98();
  v116 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v126 - v137;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v109, v111, v112, v114, 0, 0, v115, v117);
  v120 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v121 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v120;
  *(inited + 424) = v121;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 440) = 1;
  v122 = MEMORY[0x1E69E6370];
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 472) = @"SnappingPassthrough";
  *(inited + 504) = v122;
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v123 = @"ResidentCompatible";
  v124 = @"SnappingPassthrough";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA30C708()
{
  OUTLINED_FUNCTION_10_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_13_7(v8, v16);
  v9 = sub_1CA94C858();
  OUTLINED_FUNCTION_15_4(v9);
  if (v6 == 1)
  {
    sub_1CA30F7DC(v1, &qword_1EC443880, &qword_1CA982FB0);
  }

  else
  {
    sub_1CA94C848();
    OUTLINED_FUNCTION_14_8();
    (*(v10 + 8))(v1, v5);
  }

  v11 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v11)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1CA30F7DC(v3, &qword_1EC443880, &qword_1CA982FB0);
    OUTLINED_FUNCTION_11_1();
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = v0;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1CA94C7C8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1CA94C418();
  OUTLINED_FUNCTION_11_1();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_18_8(v12);
  v14 = swift_task_create();

  sub_1CA30F7DC(v3, &qword_1EC443880, &qword_1CA982FB0);

  return v14;
}

uint64_t sub_1CA30C978()
{
  OUTLINED_FUNCTION_10_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_13_7(v8, v16);
  v9 = sub_1CA94C858();
  OUTLINED_FUNCTION_15_4(v9);
  if (v6 == 1)
  {
    sub_1CA30F7DC(v1, &qword_1EC443880, &qword_1CA982FB0);
  }

  else
  {
    sub_1CA94C848();
    OUTLINED_FUNCTION_14_8();
    (*(v10 + 8))(v1, v5);
  }

  v11 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v11)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1CA30F7DC(v3, &qword_1EC443880, &qword_1CA982FB0);
    OUTLINED_FUNCTION_11_1();
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = v0;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1CA94C7C8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1CA94C418();
  OUTLINED_FUNCTION_11_1();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_18_8(v12);
  v14 = swift_task_create();

  sub_1CA30F7DC(v3, &qword_1EC443880, &qword_1CA982FB0);

  return v14;
}

id WFPhotosMemoryCreationAvailabilityResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFPhotosMemoryCreationAvailabilityResource.init()()
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

uint64_t sub_1CA30CD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v9 = sub_1CA949578();
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v10 = sub_1CA949528();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();
  v11 = sub_1CA9495A8();
  v4[24] = v11;
  v4[25] = *(v11 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA30D058, 0, 0);
}

uint64_t sub_1CA30D058()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[19];
  v13 = v0[21];
  v6 = v0[13];
  v7 = v0[14];
  v14 = v0[12];
  sub_1CA30D764();
  (*(v5 + 104))(v3, *MEMORY[0x1E69A12A0], v4);
  sub_1CA949518();
  sub_1CA949598();
  (*(v2 + 8))(v1, v13);
  sub_1CA949588();
  sub_1CA949548();
  (*(v6 + 8))(v7, v14);
  v0[27] = *MEMORY[0x1E69E1078];
  OUTLINED_FUNCTION_5_14();
  sub_1CA30F8CC(v8, v9, MEMORY[0x1E69A1298]);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_2_15(v10);

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1CA30D1E0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *(v4 + 232) = v0;

  if (v0)
  {
    v5 = sub_1CA2AA31C;
  }

  else
  {
    v5 = sub_1CA30D2E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA30D300()
{
  v36 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v5 = *(v0 + 192);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    (*(v4 + 8))(v3, v5);

    OUTLINED_FUNCTION_5();

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
      sub_1CA30F8CC(&unk_1EC4438A0, MEMORY[0x1E69A11A8], MEMORY[0x1E69A11C0]);
      v21 = sub_1CA94D798();
      v32 = v16;
      v23 = v22;
      v31 = v12;
      v24 = *(v15 + 8);
      v24(v14, v17);
      v25 = sub_1CA26B54C(v21, v23, &v35);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1CA256000, v11, v31, "Memory Creation availability changed: %s", v20, 0xCu);
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
    OUTLINED_FUNCTION_5_14();
    sub_1CA30F8CC(v27, v28, MEMORY[0x1E69A1298]);
    v29 = swift_task_alloc();
    *(v0 + 224) = v29;
    *v29 = v0;
    v30 = OUTLINED_FUNCTION_2_15(v29);

    return MEMORY[0x1EEE6D8C8](v30);
  }
}

uint64_t sub_1CA30D6BC()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_4(v6);
  *v7 = v8;
  v7[1] = sub_1CA2DF78C;

  return sub_1CA30CD2C(v2, v3, v4, v5);
}

uint64_t sub_1CA30D764()
{
  v0 = sub_1CA9493B8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CA981370;
  sub_1CA9493A8();
  v16 = sub_1CA949398();
  v18 = v17;
  v19 = *(v1 + 8);
  v19(v14, v0);
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_1CA949378();
  v20 = sub_1CA949398();
  v22 = v21;
  v19(v12, v0);
  *(v15 + 48) = v20;
  *(v15 + 56) = v22;
  sub_1CA949368();
  v23 = sub_1CA949398();
  v25 = v24;
  v19(v9, v0);
  *(v15 + 64) = v23;
  *(v15 + 72) = v25;
  sub_1CA949388();
  v26 = sub_1CA949398();
  v28 = v27;
  v19(v6, v0);
  *(v15 + 80) = v26;
  *(v15 + 88) = v28;
  v29 = v35;
  sub_1CA949358();
  v30 = sub_1CA949398();
  v32 = v31;
  v19(v29, v0);
  *(v15 + 96) = v30;
  *(v15 + 104) = v32;
  return v15;
}

uint64_t WFPhotosMemoryCreationAvailabilityResource.name.getter()
{
  sub_1CA94C438("Memory Creation", 15);
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

Swift::Void __swiftcall WFPhotosMemoryCreationAvailabilityResource.refreshAvailability()()
{
  v1 = v0;
  if (sub_1CA30DDE8())
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
    sub_1CA94C438("Memory Creation is Unavailable", 30);
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
    sub_1CA94C438("Memory Creation is not available on this device.", 48);
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

uint64_t sub_1CA30DDE8()
{
  v130 = sub_1CA9494E8();
  v127 = *(v130 - 8);
  v0 = MEMORY[0x1EEE9AC00](v130);
  v126 = &v119 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v0);
  v129 = &v119 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443860, &qword_1CA981600);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v133 = &v119 - v4;
  v137 = sub_1CA949498();
  v134 = *(v137 - 8);
  v5 = MEMORY[0x1EEE9AC00](v137);
  v123 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v131 = &v119 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v119 - v9;
  v10 = sub_1CA9494B8();
  v11 = *(v10 - 8);
  v135 = v10;
  v136 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CA949F78();
  v14 = *(v13 - 8);
  v142 = v13;
  v143 = v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v124 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v128 = &v119 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v125 = &v119 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v122 = &v119 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v121 = &v119 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v119 - v25;
  v144 = sub_1CA949578();
  v26 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1CA949528();
  v29 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v31 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1CA9495A8();
  v32 = *(v140 - 1);
  MEMORY[0x1EEE9AC00](v140);
  v34 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1CA9494F8();
  v139 = *(v35 - 8);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v119 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v119 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v119 - v41;
  sub_1CA30D764();
  (*(v26 + 104))(v28, *MEMORY[0x1E69A12A0], v144);
  sub_1CA949518();
  sub_1CA949598();
  (*(v29 + 8))(v31, v141);
  sub_1CA949538();
  v43 = v34;
  v44 = v139;
  (*(v32 + 8))(v43, v140);
  v45 = *(v44 + 16);
  v45(v40, v42, v35);
  v46 = *(v44 + 88);
  v144 = v35;
  v47 = v46(v40, v35);
  if (v47 == *MEMORY[0x1E69A0EF8])
  {
    (*(v44 + 96))(v40, v144);
    v49 = v135;
    v48 = v136;
    v50 = v138;
    (*(v136 + 32))(v138, v40, v135);
    v51 = sub_1CA9494A8();
    v52 = v133;
    sub_1CA2ECCA8(v51, v133);

    v53 = v137;
    if (__swift_getEnumTagSinglePayload(v52, 1, v137) == 1)
    {
      v54 = v50;
      sub_1CA30F7DC(v52, &qword_1EC443860, &qword_1CA981600);
      v55 = v125;
      sub_1CA949C58();
      v56 = sub_1CA949F68();
      v57 = sub_1CA94CBF8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1CA256000, v56, v57, "Memory Creation restricted with no reason", v58, 2u);
        MEMORY[0x1CCAA4BF0](v58, -1, -1);
      }

      (*(v143 + 8))(v55, v142);
      (*(v48 + 8))(v54, v49);
      goto LABEL_17;
    }

    v75 = v134;
    v76 = v132;
    (*(v134 + 32))(v132, v52, v53);
    v77 = *(v75 + 16);
    v78 = v131;
    v77(v131, v76, v53);
    if ((*(v75 + 88))(v78, v53) != *MEMORY[0x1E69A0F38])
    {
      v90 = v122;
      sub_1CA949C58();
      v91 = v123;
      v77(v123, v76, v53);
      v92 = sub_1CA949F68();
      v93 = sub_1CA94CC08();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v145[0] = v95;
        *v94 = 136315138;
        sub_1CA30F8CC(&qword_1EC444300, MEMORY[0x1E69A0F90], MEMORY[0x1E69A0FC0]);
        LODWORD(v140) = v93;
        v96 = sub_1CA94D798();
        v141 = v42;
        v98 = v97;
        v99 = *(v134 + 8);
        v99(v91, v137);
        v100 = sub_1CA26B54C(v96, v98, v145);

        *(v94 + 4) = v100;
        _os_log_impl(&dword_1CA256000, v92, v140, "Memory Creation: restricted with reason %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x1CCAA4BF0](v95, -1, -1);
        v101 = v94;
        v53 = v137;
        MEMORY[0x1CCAA4BF0](v101, -1, -1);

        (*(v143 + 8))(v90, v142);
        v99(v132, v53);
        (*(v136 + 8))(v138, v135);
        (*(v44 + 8))(v141, v144);
      }

      else
      {

        v99 = *(v134 + 8);
        v99(v91, v53);
        (*(v143 + 8))(v90, v142);
        v99(v76, v53);
        (*(v136 + 8))(v138, v135);
        (*(v44 + 8))(v42, v144);
      }

      v99(v131, v53);
      return 0;
    }

    v79 = v121;
    sub_1CA949C58();
    v80 = sub_1CA949F68();
    v81 = sub_1CA94CC08();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v53;
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1CA256000, v80, v81, "Memory Creation: assetIsNotReady, but still returning available", v83, 2u);
      MEMORY[0x1CCAA4BF0](v83, -1, -1);

      (*(v143 + 8))(v79, v142);
      (*(v134 + 8))(v132, v82);
    }

    else
    {

      (*(v143 + 8))(v79, v142);
      (*(v134 + 8))(v132, v53);
    }

    (*(v48 + 8))(v138, v49);
  }

  else
  {
    if (v47 == *MEMORY[0x1E69A0F00])
    {
      (*(v44 + 96))(v40, v144);
      v59 = v127;
      v60 = v129;
      v61 = v40;
      v62 = v130;
      (*(v127 + 32))(v129, v61, v130);
      v63 = v128;
      sub_1CA949C58();
      v64 = v126;
      (*(v59 + 16))(v126, v60, v62);
      v65 = sub_1CA949F68();
      v66 = sub_1CA94CC18();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = v64;
        v69 = swift_slowAlloc();
        v145[0] = v69;
        *v67 = 136315138;
        sub_1CA30F8CC(&qword_1EC4442F8, MEMORY[0x1E69A1188], MEMORY[0x1E69A1190]);
        v70 = sub_1CA94D798();
        v141 = v42;
        v72 = v71;
        v73 = *(v59 + 8);
        v73(v68, v62);
        v74 = sub_1CA26B54C(v70, v72, v145);

        *(v67 + 4) = v74;
        _os_log_impl(&dword_1CA256000, v65, v66, "Memory Creation unavailable with info: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x1CCAA4BF0](v69, -1, -1);
        MEMORY[0x1CCAA4BF0](v67, -1, -1);

        (*(v143 + 8))(v128, v142);
        v73(v129, v130);
        (*(v44 + 8))(v141, v144);
        return 0;
      }

      v88 = *(v59 + 8);
      v88(v64, v62);
      (*(v143 + 8))(v63, v142);
      v88(v60, v62);
LABEL_17:
      (*(v44 + 8))(v42, v144);
      return 0;
    }

    if (v47 != *MEMORY[0x1E69A11A0])
    {
      v102 = v124;
      sub_1CA949C58();
      v103 = v119;
      v45(v119, v42, v144);
      v104 = sub_1CA949F68();
      v105 = sub_1CA94CC18();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v141 = v42;
        v145[0] = v140;
        *v106 = 136315138;
        sub_1CA30F8CC(&unk_1EC4438A0, MEMORY[0x1E69A11A8], MEMORY[0x1E69A11C0]);
        v107 = v144;
        v108 = sub_1CA94D798();
        v109 = v103;
        v110 = v40;
        v112 = v111;
        v113 = *(v44 + 8);
        v113(v109, v107);
        v114 = sub_1CA26B54C(v108, v112, v145);
        v40 = v110;

        *(v106 + 4) = v114;
        _os_log_impl(&dword_1CA256000, v104, v105, "Memory Creation unavailable, unhandled enum case: %s", v106, 0xCu);
        v115 = v140;
        __swift_destroy_boxed_opaque_existential_0(v140);
        MEMORY[0x1CCAA4BF0](v115, -1, -1);
        MEMORY[0x1CCAA4BF0](v106, -1, -1);

        (*(v143 + 8))(v124, v142);
        v116 = v141;
        v117 = v107;
      }

      else
      {

        v113 = *(v44 + 8);
        v118 = v144;
        v113(v103, v144);
        (*(v143 + 8))(v102, v142);
        v116 = v42;
        v117 = v118;
      }

      v113(v116, v117);
      v113(v40, v144);
      return 0;
    }

    v84 = v120;
    sub_1CA949C58();
    v85 = sub_1CA949F68();
    v86 = sub_1CA94CC08();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_1CA256000, v85, v86, "Memory Creation available", v87, 2u);
      MEMORY[0x1CCAA4BF0](v87, -1, -1);
    }

    (*(v143 + 8))(v84, v142);
  }

  (*(v44 + 8))(v42, v144);
  return 1;
}

uint64_t WFPhotosMemoryCreationAvailabilityResource.localizedErrorReason(for:)(uint64_t a1)
{
  if (a1 == 1 || a1 == 4)
  {
    return 0;
  }

  sub_1CA94C438("Memory Creation is not currently available.", 43);
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

id WFPhotosMemoryCreationAvailabilityResource.__allocating_init(definition:enableDistributedNotifications:)(uint64_t a1, char a2)
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

id WFPhotosMemoryCreationAvailabilityResource.__allocating_init(definition:)(uint64_t a1)
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

id WFPhotosMemoryCreationAvailabilityResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA30F2EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA30F3E4;

  return v6(a1);
}

uint64_t sub_1CA30F3E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA30F4C8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1CA30F5BC;

  return v5(v2 + 32);
}

uint64_t sub_1CA30F5BC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  *v3 = *(v2 + 32);
  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA30F6BC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_2(v1);

  return v4(v3);
}

uint64_t sub_1CA30F74C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_2(v1);

  return v4(v3);
}

uint64_t sub_1CA30F7DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CA30F83C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_2(v1);

  return v4(v3);
}

uint64_t sub_1CA30F8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CA30F948()
{
  v245 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9A2D50;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("get|maps|search|query|place|location|find|waze|google|transit|citymapper", 72);
  v6 = v5;
  v7 = sub_1CA94C438("get|maps|search|query|place|location|find|waze|google|transit|citymapper", 72);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v262 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v263 = v11;
  v12 = &v230 - v262;
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
  v16 = &v230 - v261;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v258 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v256 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v257 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("The destination address", 23);
  v252 = v27;
  v253 = v26;
  v28 = sub_1CA94C438("The destination address", 23);
  v30 = v29;
  v255 = &v230;
  MEMORY[0x1EEE9AC00](v28);
  v254 = inited;
  v31 = &v230 - v262;
  sub_1CA948D98();
  v32 = v259;
  v33 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v230 - v261;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v253, v252, v28, v30, 0, 0, v31, v34);
  v36 = v258;
  *(v23 + 64) = v258;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438("Opens directions to the location passed into this action in your choice of Maps, Google Maps, Citymapper, Transit, or Waze. For example, you can use this action to get directions to an upcoming event on your calendar.", 217);
  v252 = v39;
  v253 = v38;
  v40 = sub_1CA94C438("Opens directions to the location passed into this action in your choice of Maps, Google Maps, Citymapper, Transit, or Waze. For example, you can use this action to get directions to an upcoming event on your calendar.", 217);
  v42 = v41;
  v255 = &v230;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v230 - v262;
  sub_1CA948D98();
  v44 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v230 - v261;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v253, v252, v40, v42, 0, 0, v43, v45);
  *(v23 + 104) = v36;
  *(v23 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v48 = sub_1CA94C1E8();
  v49 = v257;
  v50 = sub_1CA6B3784(v48);
  v51 = v254;
  v254[20] = v50;
  v51[23] = v49;
  v51[24] = @"Input";
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  v249 = xmmword_1CA981350;
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 0;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  strcpy((v52 + 96), "WFDestination");
  *(v52 + 110) = -4864;
  *(v52 + 120) = MEMORY[0x1E69E6158];
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  v54 = v53;
  *(v52 + 184) = 0xE500000000000000;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v257;
  *(v52 + 192) = &unk_1F49F3EB8;
  v55 = @"Input";
  v56 = sub_1CA94C1E8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v51[25] = v56;
  v51[28] = v57;
  v51[29] = @"InputPassthrough";
  *(v51 + 240) = 1;
  v51[33] = v54;
  v51[34] = @"Name";
  v58 = v51;
  v59 = @"InputPassthrough";
  v60 = @"Name";
  v61 = sub_1CA94C438("Open Directions (Action Name)", 29);
  v63 = v62;
  v64 = sub_1CA94C438("Open Directions", 15);
  v66 = v65;
  v255 = &v230;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v230 - v262;
  sub_1CA948D98();
  v68 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v230 - v261;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v58[35] = sub_1CA2F9F14(v61, v63, v64, v66, 0, 0, v67, v69);
  v58[38] = v258;
  v58[39] = @"Output";
  v71 = @"Output";
  v72 = MEMORY[0x1E69E6158];
  v58[40] = sub_1CA94C1E8();
  v58[43] = v256;
  v58[44] = @"Parameters";
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v256 = swift_allocObject();
  *(v256 + 16) = xmmword_1CA981570;
  v255 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1CA981400;
  v247 = "App (IntentAppDefinition)";
  v74 = @"Parameters";
  v246 = 0xD000000000000014;
  *(v73 + 32) = sub_1CA94C368();
  *(v73 + 40) = 1;
  v75 = MEMORY[0x1E69E6370];
  *(v73 + 64) = MEMORY[0x1E69E6370];
  *(v73 + 72) = @"Class";
  *&v234 = 0x80000001CA99B730;
  *(v73 + 104) = v72;
  v230 = 0xD000000000000013;
  *(v73 + 80) = 0xD000000000000013;
  *(v73 + 88) = 0x80000001CA99B730;
  v233 = @"Class";
  *(v73 + 112) = sub_1CA94C368();
  *(v73 + 120) = 1;
  *(v73 + 144) = v75;
  *(v73 + 152) = @"Key";
  *(v73 + 160) = 0x697461636F4C4657;
  *(v73 + 168) = 0xEA00000000006E6FLL;
  *(v73 + 184) = v72;
  *(v73 + 192) = @"Label";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v76;
  v79 = v77;
  v231 = v78;
  v232 = v79;
  v80 = sub_1CA94C438("Location (WFLocation)", 21);
  v82 = v81;
  v83 = sub_1CA94C438("Location", 8);
  v85 = v84;
  v252 = &v230;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v230 - v262;
  sub_1CA948D98();
  v87 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v230 - v261;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 200) = sub_1CA2F9F14(v80, v82, v83, v85, 0, 0, v86, v88);
  *(v73 + 224) = v258;
  *(v73 + 232) = @"RequiredResources";
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v90 = swift_allocObject();
  v242 = xmmword_1CA981310;
  *(v90 + 16) = xmmword_1CA981310;
  v91 = swift_allocObject();
  *(v91 + 16) = v249;
  strcpy((v91 + 32), "WFParameterKey");
  *(v91 + 47) = -18;
  v248 = 0x80000001CA9A2F10;
  *(v91 + 48) = 0xD000000000000018;
  *(v91 + 56) = 0x80000001CA9A2F10;
  v92 = MEMORY[0x1E69E6158];
  v93 = v230;
  *(v91 + 72) = MEMORY[0x1E69E6158];
  *(v91 + 80) = v93;
  *(v91 + 88) = 0x80000001CA9939F0;
  *(v91 + 96) = 15649;
  *(v91 + 104) = 0xE200000000000000;
  v240 = 0xD000000000000011;
  v241 = 0x80000001CA9A2F30;
  *(v91 + 120) = v92;
  *(v91 + 128) = 0xD000000000000011;
  *(v91 + 136) = 0x80000001CA9A2F30;
  *(v91 + 144) = &unk_1F49F3F48;
  *(v91 + 168) = v257;
  *(v91 + 176) = 0x72756F7365524657;
  *(v91 + 216) = v92;
  v238 = 0xD00000000000001BLL;
  v239 = 0x80000001CA993590;
  *(v91 + 184) = 0xEF7373616C436563;
  *(v91 + 192) = 0xD00000000000001BLL;
  *(v91 + 200) = 0x80000001CA993590;
  v236 = @"RequiredResources";
  *(v90 + 32) = sub_1CA94C1E8();
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v73 + 264) = v237;
  *(v73 + 240) = v90;
  v235 = 0xD00000000000001DLL;
  *(v73 + 272) = sub_1CA94C368();
  v94 = MEMORY[0x1E69E6370];
  *(v73 + 304) = MEMORY[0x1E69E6370];
  *(v73 + 280) = 1;
  _s3__C3KeyVMa_0(0);
  v252 = v95;
  v251 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v96 = sub_1CA94C1E8();
  v97 = sub_1CA2F864C(v96);
  *(v256 + 32) = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = v249;
  *(v98 + 32) = sub_1CA94C368();
  *(v98 + 40) = 1;
  v100 = v233;
  v99 = v234;
  *(v98 + 64) = v94;
  *(v98 + 72) = v100;
  *(v98 + 80) = v93;
  *(v98 + 88) = v99;
  v101 = v231;
  v102 = v232;
  *(v98 + 104) = v92;
  *(v98 + 112) = v101;
  strcpy((v98 + 120), "WFDestination");
  *(v98 + 134) = -4864;
  *(v98 + 144) = v92;
  *(v98 + 152) = v102;
  v246 = v100;
  v247 = v101;
  *&v249 = v102;
  v103 = sub_1CA94C438("Destination (WFDestination)", 27);
  v105 = v104;
  v106 = sub_1CA94C438("Destination", 11);
  v108 = v107;
  *&v234 = &v230;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v230 - v262;
  sub_1CA948D98();
  v110 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v230 - v261;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  *(v98 + 184) = v258;
  *(v98 + 160) = v113;
  v114 = sub_1CA94C1E8();
  v115 = sub_1CA2F864C(v114);
  *(v256 + 40) = v115;
  v116 = swift_allocObject();
  v234 = xmmword_1CA981370;
  *(v116 + 16) = xmmword_1CA981370;
  *(v116 + 32) = v246;
  *(v116 + 40) = 0xD000000000000018;
  *(v116 + 48) = 0x80000001CA9A2F80;
  v117 = MEMORY[0x1E69E6158];
  *(v116 + 64) = MEMORY[0x1E69E6158];
  *(v116 + 72) = @"DefaultValue";
  *(v116 + 80) = 1936744781;
  *(v116 + 88) = 0xE400000000000000;
  v119 = v247;
  v118 = v248;
  *(v116 + 104) = v117;
  *(v116 + 112) = v119;
  *(v116 + 120) = 0xD000000000000018;
  *(v116 + 128) = v118;
  v120 = v249;
  *(v116 + 144) = v117;
  *(v116 + 152) = v120;
  v233 = @"DefaultValue";
  v121 = sub_1CA94C438("App (WFGetDirectionsActionApp)", 30);
  v123 = v122;
  v124 = sub_1CA94C438("App", 3);
  v126 = v125;
  v232 = &v230;
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v230 - v262;
  sub_1CA948D98();
  v128 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v230 - v261;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v121, v123, v124, v126, 0, 0, v127, v129);
  *(v116 + 184) = v258;
  *(v116 + 160) = v131;
  v132 = sub_1CA94C368();
  *(v116 + 224) = v257;
  *(v116 + 192) = v132;
  *(v116 + 200) = &unk_1F49F3F78;
  v133 = sub_1CA94C1E8();
  v134 = sub_1CA2F864C(v133);
  *(v256 + 48) = v134;
  v135 = swift_allocObject();
  *(v135 + 16) = v234;
  v136 = v235;
  *(v135 + 32) = v246;
  *(v135 + 40) = v136;
  *(v135 + 48) = 0x80000001CA99FB10;
  v137 = MEMORY[0x1E69E6158];
  v138 = v233;
  *(v135 + 64) = MEMORY[0x1E69E6158];
  *(v135 + 72) = v138;
  *(v135 + 80) = 0x676E6976697244;
  *(v135 + 88) = 0xE700000000000000;
  v139 = v247;
  *(v135 + 104) = v137;
  *(v135 + 112) = v139;
  *(v135 + 120) = 0xD000000000000019;
  *(v135 + 128) = 0x80000001CA99C580;
  v140 = v249;
  *(v135 + 144) = v137;
  *(v135 + 152) = v140;
  v141 = sub_1CA94C438("Mode (WFGetDirectionsActionMode)", 32);
  v143 = v142;
  v144 = sub_1CA94C438("Mode", 4);
  v146 = v145;
  v253 = &v230;
  MEMORY[0x1EEE9AC00](v144);
  v147 = &v230 - v262;
  sub_1CA948D98();
  v148 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = &v230 - v261;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 160) = sub_1CA2F9F14(v141, v143, v144, v146, 0, 0, v147, v149);
  v151 = v236;
  *(v135 + 184) = v258;
  *(v135 + 192) = v151;
  v152 = swift_allocObject();
  *(v152 + 16) = v242;
  v153 = swift_initStackObject();
  *(v153 + 16) = xmmword_1CA9813C0;
  strcpy((v153 + 32), "WFParameterKey");
  *(v153 + 47) = -18;
  *(v153 + 48) = 0xD000000000000018;
  *(v153 + 56) = v248;
  v154 = MEMORY[0x1E69E6158];
  v155 = v240;
  v156 = v241;
  *(v153 + 72) = MEMORY[0x1E69E6158];
  *(v153 + 80) = v155;
  *(v153 + 88) = v156;
  *(v153 + 96) = &unk_1F49F3FF8;
  *(v153 + 120) = v257;
  *(v153 + 128) = 0x72756F7365524657;
  *(v153 + 168) = v154;
  *(v153 + 136) = 0xEF7373616C436563;
  v157 = v239;
  *(v153 + 144) = v238;
  *(v153 + 152) = v157;
  *(v152 + 32) = sub_1CA94C1E8();
  *(v135 + 224) = v237;
  *(v135 + 200) = v152;
  v158 = sub_1CA94C1E8();
  v159 = sub_1CA2F864C(v158);
  v160 = v256;
  *(v256 + 56) = v159;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v162 = v254;
  v254[45] = v160;
  v162[48] = v161;
  v162[49] = @"ParameterSummary";
  v256 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v258 = swift_allocObject();
  *(v258 + 16) = xmmword_1CA981560;
  v255 = "tionsActionMode)";
  v163 = @"ParameterSummary";
  v164 = sub_1CA94C438("Open directions to ${WFDestination} using ${WFGetDirectionsActionApp}", 69);
  v251 = v165;
  v252 = v164;
  v166 = sub_1CA94C438("Open directions to ${WFDestination} using ${WFGetDirectionsActionApp}", 69);
  v168 = v167;
  v253 = &v230;
  MEMORY[0x1EEE9AC00](v166);
  v169 = v262;
  sub_1CA948D98();
  v170 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v261;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v252, v251, v166, v168, 0, 0, &v230 - v169, &v230 - v171);
  v174 = objc_allocWithZone(WFActionParameterSummaryValue);
  v175 = sub_1CA65DD78(0xD000000000000026, v255 | 0x8000000000000000, v173);
  *(v258 + 32) = v175;
  v255 = "tDirectionsActionApp}";
  v176 = sub_1CA94C438("Open directions from ${WFLocation} to ${WFDestination}", 54);
  v251 = v177;
  v252 = v176;
  v178 = sub_1CA94C438("Open directions from ${WFLocation} to ${WFDestination}", 54);
  v180 = v179;
  v253 = &v230;
  MEMORY[0x1EEE9AC00](v178);
  v181 = &v230 - v169;
  sub_1CA948D98();
  v182 = v259;
  v183 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v185 = sub_1CA2F9F14(v252, v251, v178, v180, 0, 0, v181, &v230 - v171);
  v186 = objc_allocWithZone(WFActionParameterSummaryValue);
  v187 = sub_1CA65DD78(0xD000000000000018, v255 | 0x8000000000000000, v185);
  *(v258 + 40) = v187;
  v255 = "n} to ${WFDestination}";
  v188 = sub_1CA94C438("Open directions from ${WFLocation} to ${WFDestination} using ${WFGetDirectionsActionApp}", 88);
  v251 = v189;
  v252 = v188;
  v190 = sub_1CA94C438("Open directions from ${WFLocation} to ${WFDestination} using ${WFGetDirectionsActionApp}", 88);
  v192 = v191;
  v253 = &v230;
  MEMORY[0x1EEE9AC00](v190);
  v193 = v262;
  sub_1CA948D98();
  v194 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = v261;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v252, v251, v190, v192, 0, 0, &v230 - v193, &v230 - v195);
  v198 = objc_allocWithZone(WFActionParameterSummaryValue);
  v199 = sub_1CA65DD78(0xD000000000000031, v255 | 0x8000000000000000, v197);
  *(v258 + 48) = v199;
  v255 = "FGetDirectionsActionApp}";
  v200 = sub_1CA94C438("Open ${WFGetDirectionsActionMode} directions from ${WFLocation} to ${WFDestination}", 83);
  v251 = v201;
  v252 = v200;
  v202 = sub_1CA94C438("Open ${WFGetDirectionsActionMode} directions from ${WFLocation} to ${WFDestination}", 83);
  v204 = v203;
  v253 = &v230;
  MEMORY[0x1EEE9AC00](v202);
  sub_1CA948D98();
  v205 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v207 = sub_1CA2F9F14(v252, v251, v202, v204, 0, 0, &v230 - v193, &v230 - v195);
  v208 = objc_allocWithZone(WFActionParameterSummaryValue);
  v209 = sub_1CA65DD78(0xD000000000000032, v255 | 0x8000000000000000, v207);
  v210 = v258;
  *(v258 + 56) = v209;
  v255 = "to ${WFDestination}";
  v211 = sub_1CA94C438("Open ${WFGetDirectionsActionMode} directions from ${WFLocation} to ${WFDestination} using ${WFGetDirectionsActionApp}", 117);
  v213 = v212;
  v214 = sub_1CA94C438("Open ${WFGetDirectionsActionMode} directions from ${WFLocation} to ${WFDestination} using ${WFGetDirectionsActionApp}", 117);
  v216 = v215;
  v253 = &v230;
  MEMORY[0x1EEE9AC00](v214);
  v217 = &v230 - v262;
  sub_1CA948D98();
  v218 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v218);
  v219 = &v230 - v261;
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v221 = sub_1CA2F9F14(v211, v213, v214, v216, 0, 0, v217, v219);
  v222 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v210 + 64) = sub_1CA65DD78(0xD00000000000004BLL, v255 | 0x8000000000000000, v221);
  v223 = v256;
  v224 = sub_1CA65AF90(v210);
  v225 = v254;
  v254[50] = v224;
  v225[53] = v223;
  v225[54] = @"RequiredResources";
  v225[55] = &unk_1F49F4048;
  v226 = v257;
  v225[58] = v257;
  v225[59] = @"UserInterfaces";
  v225[63] = v226;
  v225[60] = &unk_1F49F4078;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v227 = @"RequiredResources";
  v228 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3114F4()
{
  sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9A3320;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"InputPassthrough";
  *(inited + 120) = 1;
  *(inited + 144) = v2;
  *(inited + 152) = @"Name";
  v3 = @"ActionClass";
  v4 = @"Discoverable";
  v5 = @"InputPassthrough";
  v6 = @"Name";
  v7 = sub_1CA94C438("Unknown User Activity (Action Name)", 35);
  v9 = v8;
  v10 = sub_1CA94C438("Unknown User Activity", 21);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v15, v19);
  *(inited + 184) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v21;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA311800(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1CA320F08(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1CA311864(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v3);
}

uint64_t sub_1CA3118E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1CA271BF8(a1, a2);
    if (v3)
    {
      OUTLINED_FUNCTION_205_0();
    }
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA31194C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_1CA271BF8(a1, a2), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    OUTLINED_FUNCTION_52();
    (*(v12 + 16))(a5, v10 + *(v12 + 72) * v9, v11);
    v13 = OUTLINED_FUNCTION_200_0();
  }

  else
  {
    (a4)(0, a2);
    OUTLINED_FUNCTION_46();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_1CA311A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_213();
  }

  v3 = sub_1CA271BF8(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_88_0(v3);
  }

  else
  {
    return 0;
  }
}

double sub_1CA311A58@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (sub_1CA320F08(a3), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_155_1(v4);

    sub_1CA25B374(v6, v7);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_1CA311AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1CA271BF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void *sub_1CA311B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a2 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1CA311B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1CA271BF8(a1, a2), (v4 & 1) != 0))
  {
    type metadata accessor for DrawerAction(0);
    OUTLINED_FUNCTION_52();
    sub_1CA323CB4();
    v5 = OUTLINED_FUNCTION_200_0();
  }

  else
  {
    type metadata accessor for DrawerAction(0);
    OUTLINED_FUNCTION_46();
  }

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

double sub_1CA311C0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_1CA271BF8(a1, a2), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_155_1(v5);

    sub_1CA25B374(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1CA311C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1CA271BF8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v3);
  return swift_unknownObjectRetain();
}

uint64_t sub_1CA311CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_1CA271BF8(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1CA311D00(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_213();
  }

  v2 = sub_1CA320E94(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_88_0(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA311D4C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_213();
  }

  sub_1CA3210F0();
  if (v3)
  {
    return OUTLINED_FUNCTION_88_0(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA311D98(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1CA3210B4();
    if (v2)
    {
      OUTLINED_FUNCTION_205_0();
    }
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA311DDC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1CA321184(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v2);
  return sub_1CA94C218();
}

double sub_1CA311E28@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1CA320ECC(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_155_1(v3);

    sub_1CA25B374(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1CA311EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v3);
  return sub_1CA94C218();
}

uint64_t sub_1CA311F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1CA271BF8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v3);
  return sub_1CA94C218();
}

uint64_t sub_1CA311F50(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  sub_1CA32127C();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

id sub_1CA312038(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    sub_1CA94C368();
    OUTLINED_FUNCTION_87();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *ToolInvocationOptionsBox.lnInterfaceIdiom.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFToolInvocationOptions_lnInterfaceIdiom);
  v2 = v1;
  return v1;
}

void ToolInvocationOptionsBox.__allocating_init(lnInteractionMode:locale:requestIdentifier:lnInterfaceIdiom:)()
{
  OUTLINED_FUNCTION_77_1();
  objc_allocWithZone(OUTLINED_FUNCTION_104_1());
  ToolInvocationOptionsBox.init(lnInteractionMode:locale:requestIdentifier:lnInterfaceIdiom:)();
  OUTLINED_FUNCTION_76_0();
}

id ToolInvocationOptionsBox.init(lnInteractionMode:locale:requestIdentifier:lnInterfaceIdiom:)()
{
  OUTLINED_FUNCTION_104_1();
  ObjectType = swift_getObjectType();
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  *&v1[OBJC_IVAR___WFToolInvocationOptions_lnInteractionMode] = v9;
  v10 = &v1[OBJC_IVAR___WFToolInvocationOptions_locale];
  *v10 = v5;
  *(v10 + 1) = v4;
  v11 = &v1[OBJC_IVAR___WFToolInvocationOptions_requestIdentifier];
  *v11 = v3;
  *(v11 + 1) = v2;
  *&v1[OBJC_IVAR___WFToolInvocationOptions_lnInterfaceIdiom] = v0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void static ToolInvocationOptionsBox.from(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_77_1();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_81_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444338, &qword_1CA983040);
  OUTLINED_FUNCTION_18_0(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &a9 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444340, &qword_1CA983048);
  OUTLINED_FUNCTION_18_0(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_134_0();
  sub_1CA94A568();
  v28 = sub_1CA94A558();
  if (__swift_getEnumTagSinglePayload(v19, 1, v28) != 1)
  {
    OUTLINED_FUNCTION_192_0();
    v30 = v29;
    v32 = (*(v31 + 88))(v19, v28);
    if (v32 != *MEMORY[0x1E69DAB88] && v32 != *MEMORY[0x1E69DAB80] && v32 != *MEMORY[0x1E69DAB70] && v32 != *MEMORY[0x1E69DAB90] && v32 != *MEMORY[0x1E69DAB78])
    {
      (*(v30 + 8))(v19, v28);
    }
  }

  sub_1CA94A548();
  v33 = sub_1CA94A538();
  if (__swift_getEnumTagSinglePayload(v25, 1, v33) == 1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_192_0();
  v34 = OUTLINED_FUNCTION_70();
  v36 = v35(v34);
  if (v36 == *MEMORY[0x1E69DAB60])
  {
    goto LABEL_10;
  }

  if (v36 == *MEMORY[0x1E69DAB50])
  {
    v38 = MEMORY[0x1E69ACBB8];
LABEL_31:
    v37 = *v38;
    v39 = *v38;
    goto LABEL_32;
  }

  if (v36 == *MEMORY[0x1E69DAB68])
  {
    v38 = MEMORY[0x1E69ACBC8];
    goto LABEL_31;
  }

  if (v36 == *MEMORY[0x1E69DAB58])
  {
    v38 = MEMORY[0x1E69ACBD8];
    goto LABEL_31;
  }

  if (v36 == *MEMORY[0x1E69DAB20])
  {
    v38 = MEMORY[0x1E69ACBE8];
    goto LABEL_31;
  }

  if (v36 == *MEMORY[0x1E69DAB48])
  {
    v38 = MEMORY[0x1E69ACBB0];
    goto LABEL_31;
  }

  if (v36 == *MEMORY[0x1E69DAB30])
  {
    v38 = MEMORY[0x1E69ACC08];
    goto LABEL_31;
  }

  if (v36 == *MEMORY[0x1E69DAB28])
  {
    v38 = MEMORY[0x1E69ACC00];
    goto LABEL_31;
  }

  if (v36 == *MEMORY[0x1E69DAB38])
  {
    v38 = MEMORY[0x1E69ACC40];
    goto LABEL_31;
  }

  if (v36 == *MEMORY[0x1E69DAB18])
  {
    v38 = MEMORY[0x1E69ACC20];
    goto LABEL_31;
  }

  if (v36 == *MEMORY[0x1E69DAB40])
  {
    v38 = MEMORY[0x1E69ACC28];
    goto LABEL_31;
  }

  v40 = OUTLINED_FUNCTION_70();
  v41(v40);
LABEL_10:
  v37 = 0;
LABEL_32:
  sub_1CA94A588();
  OUTLINED_FUNCTION_194();
  sub_1CA94A578();
  objc_allocWithZone(v18);
  ToolInvocationOptionsBox.init(lnInteractionMode:locale:requestIdentifier:lnInterfaceIdiom:)();

  OUTLINED_FUNCTION_76_0();
}

uint64_t ToolInvocationBox.ErrorCode.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CA312798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ToolInvocationBox.ErrorCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static ToolInvocationBox.Error.errorDomain.getter()
{
  swift_beginAccess();
  sub_1CA94C218();
  return OUTLINED_FUNCTION_3_3();
}

uint64_t static ToolInvocationBox.Error.errorDomain.setter()
{
  OUTLINED_FUNCTION_170_0();
  swift_beginAccess();
  qword_1EC444308 = v1;
  off_1EC444310 = v0;
}

uint64_t (*static ToolInvocationBox.Error.errorDomain.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_3_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1CA3128CC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EC444310;
  *a1 = qword_1EC444308;
  a1[1] = v2;
  return sub_1CA94C218();
}

uint64_t sub_1CA31291C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EC444308 = v2;
  off_1EC444310 = v1;
  sub_1CA94C218();
}

uint64_t ToolInvocationBox.Error.errorCode.getter()
{
  if (!*(v0 + 16))
  {
    return 1;
  }

  if (*(v0 + 16) == 1)
  {
    return 3;
  }

  if (*v0 == 0)
  {
    return 2;
  }

  return 4;
}

uint64_t ToolInvocationBox.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WFToolInvocation_toolInvocation;
  sub_1CA94A2F8();
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

objc_class *ToolInvocationBox.__allocating_init(toolInvocation:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___WFToolInvocation_toolInvocation;
  v5 = sub_1CA94A2F8();
  (*(*(v5 - 8) + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  objc_msgSendSuper2(&v9, sel_init);
  v6 = OUTLINED_FUNCTION_198_0();
  v7(v6);
  return v1;
}

char *ToolInvocationBox.init(toolInvocation:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___WFToolInvocation_toolInvocation;
  v5 = sub_1CA94A2F8();
  (*(*(v5 - 8) + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_init);
  v6 = OUTLINED_FUNCTION_198_0();
  v7(v6);
  return v1;
}

id ToolInvocationBox.init(encodedToolInvocation:)(id a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1CA94A2F8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  sub_1CA9489C8();
  swift_allocObject();
  sub_1CA9489B8();
  OUTLINED_FUNCTION_79_1();
  sub_1CA323D64(v15, v16);
  OUTLINED_FUNCTION_126();
  sub_1CA9489A8();
  if (v2)
  {
    sub_1CA266F2C(a1, a2);
  }

  else
  {

    v25 = a1;
    v26 = a2;
    v17 = *(v7 + 16);
    v17(v11, v14, v5);
    v27 = 0;
    v18 = v7;
    v19 = ObjectType;
    v20 = objc_allocWithZone(ObjectType);
    v17(&v20[OBJC_IVAR___WFToolInvocation_toolInvocation], v11, v5);
    v28.receiver = v20;
    v28.super_class = v19;
    a1 = objc_msgSendSuper2(&v28, sel_init);
    v21 = *(v18 + 8);
    v21(v11, v5);
    sub_1CA266F2C(v25, v26);
    v22 = OUTLINED_FUNCTION_137();
    (v21)(v22);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return a1;
}

uint64_t ToolInvocationBox.__allocating_init(action:bundleIdentifier:deviceIdentifier:)()
{
  OUTLINED_FUNCTION_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = sub_1CA94A2F8();
  v1[10] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_13_5();
  v1[13] = swift_task_alloc();
  v9 = sub_1CA94B168();
  v1[14] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_13_5();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA31310C()
{
  OUTLINED_FUNCTION_59_0();
  sub_1CA94A138();
  sub_1CA94A118();
  v0[19] = sub_1CA94A128();

  v1 = v0[8];
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[14];
    v4 = v0[15];
    *v2 = v0[7];
    v2[1] = v1;
    (*(v4 + 104))(v2, *MEMORY[0x1E69DB2E8], v3);
    v5 = OUTLINED_FUNCTION_20_0();
    v6(v5);
  }

  else
  {
    (*(v0[15] + 104))(v0[18], *MEMORY[0x1E69DB2E0], v0[14]);
  }

  v7 = v0[4];
  (*(v0[15] + 16))(v0[16], v0[18], v0[14]);
  v8 = v7;

  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1CA313330;

  return ToolInvocation.init(action:bundleIdentifier:device:database:)();
}

uint64_t sub_1CA313330()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA313428()
{
  receiver = v0[9].receiver;
  super_class = v0[7].super_class;
  v15 = v0[7].receiver;
  v3 = v0[6].receiver;
  v2 = v0[6].super_class;
  v5 = v0[5].receiver;
  v4 = v0[5].super_class;
  v6 = v0[4].super_class;
  v14 = v0[2].receiver;
  v7 = *(v4 + 2);
  v8 = OUTLINED_FUNCTION_3_3();
  v7(v8);
  v9 = objc_allocWithZone(v6);
  (v7)(&v9[OBJC_IVAR___WFToolInvocation_toolInvocation], v3, v5);
  v0[1].receiver = v9;
  v0[1].super_class = v6;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);
  v11 = *(v4 + 1);
  v11(v3, v5);

  v11(v2, v5);
  (*(super_class + 1))(receiver, v15);

  OUTLINED_FUNCTION_2_4();

  return v12(v10);
}

void sub_1CA3135B0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_43_4();
  v3(v2);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_2();

  __asm { BRAA            X1, X16 }
}

uint64_t ToolInvocation.init(action:bundleIdentifier:device:database:)()
{
  OUTLINED_FUNCTION_0();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[7] = v5;
  v0[8] = v6;
  v7 = sub_1CA949F78();
  v0[13] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94AC88();
  v0[16] = v9;
  OUTLINED_FUNCTION_12(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_13_5();
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_183(v11);
  v13 = type metadata accessor for LinkValueTransformContext(v12);
  v0[20] = v13;
  OUTLINED_FUNCTION_18_0(v13);
  v0[21] = OUTLINED_FUNCTION_45();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CB0, &unk_1CA983060);
  OUTLINED_FUNCTION_18_0(v14);
  v0[22] = OUTLINED_FUNCTION_45();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444348, &qword_1CA985B20);
  v0[23] = v15;
  OUTLINED_FUNCTION_12(v15);
  v0[24] = v16;
  v0[25] = OUTLINED_FUNCTION_45();
  v17 = sub_1CA94A408();
  v0[26] = v17;
  OUTLINED_FUNCTION_12(v17);
  v0[27] = v18;
  v0[28] = OUTLINED_FUNCTION_13_5();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454B0, &unk_1CA983070);
  OUTLINED_FUNCTION_18_0(v19);
  v0[31] = OUTLINED_FUNCTION_45();
  v20 = sub_1CA94A288();
  v0[32] = v20;
  OUTLINED_FUNCTION_12(v20);
  v0[33] = v21;
  v0[34] = OUTLINED_FUNCTION_13_5();
  v0[35] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CC0, &unk_1CA9867F0);
  v0[36] = v22;
  OUTLINED_FUNCTION_12(v22);
  v0[37] = v23;
  v0[38] = OUTLINED_FUNCTION_45();
  v24 = sub_1CA94B508();
  v0[39] = v24;
  OUTLINED_FUNCTION_12(v24);
  v0[40] = v25;
  v0[41] = OUTLINED_FUNCTION_13_5();
  v0[42] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v26);
  v0[43] = OUTLINED_FUNCTION_45();
  v27 = sub_1CA94B1C8();
  v0[44] = v27;
  OUTLINED_FUNCTION_12(v27);
  v0[45] = v28;
  v0[46] = OUTLINED_FUNCTION_45();
  v29 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1CA313A1C()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v108 = v0[39];
  v4 = v0[37];
  v106 = v0[36];
  v5 = v0[9];
  v6 = v0[10];
  sub_1CA94B4F8();
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *v3 = v7;
  v104 = *MEMORY[0x1E69DA9C0];
  v103 = *(v4 + 104);
  v103(v3);
  sub_1CA323D64(&unk_1EC441CD8, MEMORY[0x1E69DB418]);
  OUTLINED_FUNCTION_100_1(&qword_1EDB9F7C0, &unk_1EC444CC0, &unk_1CA9867F0);
  sub_1CA94A838();

  v8 = *(v4 + 8);
  v8(v3, v106);
  v107 = *(v2 + 8);
  v107(v1, v108);
  v9 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  v12 = swift_task_alloc();
  sub_1CA948D98();
  sub_1CA94A808();
  v102 = v8;
  v14 = v0[43];
  v13 = v0[44];
  v15 = v0[42];
  v16 = v0[39];
  v105 = *(v11 + 8);
  v105(v12, v9);
  v107(v15, v16);

  if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
  {
    v17 = v0[11];
    v18 = v0[8];
    sub_1CA323C64(v0[43], &qword_1EC4445D0);
    v19 = [v18 identifier];
    v20 = sub_1CA94C3A8();
    v22 = v21;

    v23 = sub_1CA322384();
    OUTLINED_FUNCTION_127(&type metadata for ToolInvocationBox.Error, v23);
    *v24 = v20;
    *(v24 + 8) = v22;
    *(v24 + 16) = 1;
    swift_willThrow();

    sub_1CA94B168();
    OUTLINED_FUNCTION_7_2();
    (*(v25 + 8))(v17);
LABEL_3:
    OUTLINED_FUNCTION_67_2();

    OUTLINED_FUNCTION_5();
LABEL_4:

    return v26();
  }

  v28 = v0[8];
  (*(v0[45] + 32))(v0[46], v0[43], v0[44]);
  v110 = sub_1CA94B0F8();
  v111 = v29;
  MEMORY[0x1CCAA1300](46, 0xE100000000000000);
  v30 = [v28 identifier];
  sub_1CA94C3A8();

  v31 = OUTLINED_FUNCTION_69_0();
  MEMORY[0x1CCAA1300](v31);

  v32 = WFLinkActionIdentifierOverrides();
  v33 = sub_1CA94C1C8();

  v34 = OUTLINED_FUNCTION_204();
  v36 = sub_1CA3118E4(v34, v35, v33);
  v38 = v37;

  v101 = v9;
  if (v38)
  {

    v100 = v36;
    v109 = v38;
  }

  else
  {
    v109 = v111;
    v100 = v110;
  }

  v39 = v0[45];
  v40 = v0[44];
  v98 = v0[38];
  v99 = v0[36];
  v41 = v0[28];
  v95 = v0[46];
  v96 = v0[29];
  v42 = v0[27];
  v97 = v0[26];
  v44 = v0[24];
  v43 = v0[25];
  v45 = v0[23];
  sub_1CA94A3D8();
  swift_getKeyPath();
  v46 = swift_allocBox();
  (*(v39 + 16))(v47, v95, v40);
  *v43 = v46;
  (*(v44 + 104))(v43, v104, v45);
  sub_1CA323D64(&qword_1EC441D50, MEMORY[0x1E69DAAB8]);
  OUTLINED_FUNCTION_100_1(&qword_1EC444358, &qword_1EC444348, &qword_1CA985B20);
  sub_1CA94A838();

  (*(v44 + 8))(v43, v45);
  v48 = *(v42 + 8);
  v48(v41, v97);
  swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v100;
  *(v49 + 24) = v109;
  *v98 = v49;
  (v103)(v98, v104, v99);
  sub_1CA94A838();

  v102(v98, v99);
  v48(v96, v97);
  v50 = swift_task_alloc();
  sub_1CA948D98();
  OUTLINED_FUNCTION_104();
  sub_1CA94A6E8();
  v52 = v0[31];
  v51 = v0[32];
  v105(v50, v101);
  v53 = OUTLINED_FUNCTION_106_1();
  (v48)(v53);

  if (__swift_getEnumTagSinglePayload(v52, 1, v51) == 1)
  {
    sub_1CA323C64(v0[31], &qword_1EC4454B0);
    sub_1CA32059C();
    v54 = v0[46];
    if ((v55 & 1) == 0)
    {
      v73 = v0[44];
      v74 = v0[45];
      v75 = v0[11];
      v76 = v0[8];
      v77 = [v76 identifier];
      v78 = sub_1CA94C3A8();
      v80 = v79;

      v81 = sub_1CA322384();
      OUTLINED_FUNCTION_127(&type metadata for ToolInvocationBox.Error, v81);
      *v82 = v78;
      *(v82 + 8) = v80;
      *(v82 + 16) = 1;
      swift_willThrow();

      sub_1CA94B168();
      OUTLINED_FUNCTION_7_2();
      (*(v83 + 8))(v75);
      (*(v74 + 8))(v54, v73);
      goto LABEL_3;
    }

    sub_1CA31FA6C();
  }

  else
  {
    (*(v0[33] + 32))(v0[35], v0[31], v0[32]);
  }

  v56 = v0[8];
  v57 = sub_1CA94C1E8();
  v58 = [v56 parameters];
  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  OUTLINED_FUNCTION_186_0();
  v59 = sub_1CA94C658();
  v0[47] = v59;

  result = sub_1CA25B410(v59);
  v0[48] = result;
  if (!result)
  {
LABEL_23:

    v67 = OUTLINED_FUNCTION_130_0();
    v68(v67);
    sub_1CA2F54CC(v57);

    sub_1CA94A598();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
    OUTLINED_FUNCTION_106_1();
    sub_1CA94A298();
    v88 = v0[11];
    v89 = v0[8];

    sub_1CA94B168();
    OUTLINED_FUNCTION_7_2();
    (*(v90 + 8))(v88);
    v91 = OUTLINED_FUNCTION_137();
    v92(v91);
    v93 = OUTLINED_FUNCTION_20_0();
    v94(v93);

    OUTLINED_FUNCTION_5();
    goto LABEL_4;
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v60 = 0;
    v0[49] = *MEMORY[0x1E69E10F8];
    while (1)
    {
      v61 = OUTLINED_FUNCTION_188_0(v60);
      v64 = v63 ? *(v62 + 8 * v61 + 32) : MEMORY[0x1CCAA22D0](v61);
      v65 = v64;
      v0[53] = v64;
      v66 = [v64 value];
      v0[54] = v66;
      if (v66)
      {
        break;
      }

      v60 = OUTLINED_FUNCTION_96_2();
      if (v63)
      {
        goto LABEL_23;
      }
    }

    OUTLINED_FUNCTION_174_0(v66);
    sub_1CA94A1E8();
    _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
    v84 = [objc_opt_self() defaultContext];
    OUTLINED_FUNCTION_62_0(v84);
    v85 = swift_task_alloc();
    v86 = OUTLINED_FUNCTION_153_1(v85);
    *v86 = v87;
    OUTLINED_FUNCTION_18_9(v86);

    return TypedValueTransformer.transform(input:with:)();
  }

  return result;
}