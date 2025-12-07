uint64_t static ToolKitProtoIndexingRequest.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_33(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB10C(*(v2 + 16), *(v1 + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoIndexingRequest(0);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_0_64();
  v9 = sub_1C8ECA390(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v9) & 1;
}

uint64_t sub_1C8EC00A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319108, type metadata accessor for ToolKitProtoIndexingRequest, &protocol conformance descriptor for ToolKitProtoIndexingRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC0124(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EDA61820, type metadata accessor for ToolKitProtoIndexingRequest, &protocol conformance descriptor for ToolKitProtoIndexingRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC0194(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(&qword_1EDA61820, type metadata accessor for ToolKitProtoIndexingRequest, &protocol conformance descriptor for ToolKitProtoIndexingRequest);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC022C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318E88);
  __swift_project_value_buffer(v0, qword_1EC318E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resolvedChangeset";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "decisionMetadata";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoIndexingPolicyResolution.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639CC();
        break;
      case 2:
        OUTLINED_FUNCTION_40_16();
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC04DC(v3, v4, v5, v6, v7);
        break;
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8EC04DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for ToolKitProtoChangeset(0);
  OUTLINED_FUNCTION_39_15();
  sub_1C8ECA390(v5, v6, &protocol conformance descriptor for ToolKitProtoChangeset);
  return sub_1C9063A4C();
}

void ToolKitProtoIndexingPolicyResolution.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    OUTLINED_FUNCTION_40_16();
    OUTLINED_FUNCTION_2_55();
    sub_1C8EC0618();
    if (!v0)
    {
      if (*(*(v1 + 16) + 16))
      {
        OUTLINED_FUNCTION_17_25();
        sub_1C9063B6C();
      }

      type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
      OUTLINED_FUNCTION_13_23();
    }
  }
}

void sub_1C8EC0618()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v16[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  type metadata accessor for ToolKitProtoChangeset(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v1(0);
  sub_1C8ECA488();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v11, v12, v13) == 1)
  {
    sub_1C8D16D78(v6, &qword_1EC3141E0, &unk_1C90729F0);
  }

  else
  {
    sub_1C8ECA3D8();
    OUTLINED_FUNCTION_39_15();
    sub_1C8ECA390(v14, v15, &protocol conformance descriptor for ToolKitProtoChangeset);
    sub_1C9063BCC();
    sub_1C8ECA430(v10, type metadata accessor for ToolKitProtoChangeset);
  }

  OUTLINED_FUNCTION_198();
}

void static ToolKitProtoIndexingPolicyResolution.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for ToolKitProtoChangeset(v4);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_23();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_73();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318FA8, &qword_1C909C478);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = *v1 == *v0 && v1[1] == v0[1];
  if (!v12 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_18;
  }

  v25[1] = type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
  v13 = *(v8 + 48);
  OUTLINED_FUNCTION_44_18();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_44_18();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_14_2(v11);
  if (v12)
  {
    OUTLINED_FUNCTION_14_2(&v11[v13]);
    if (v12)
    {
      sub_1C8D16D78(v11, &qword_1EC3141E0, &unk_1C90729F0);
      goto LABEL_16;
    }

LABEL_14:
    sub_1C8D16D78(v11, &qword_1EC318FA8, &qword_1C909C478);
LABEL_18:
    v24 = 0;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_14_2(&v11[v13]);
  if (v14)
  {
    OUTLINED_FUNCTION_35_16();
    sub_1C8ECA430(v3, v15);
    goto LABEL_14;
  }

  sub_1C8ECA3D8();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoChangeset.== infix(_:_:)();
  v17 = v16;
  sub_1C8ECA430(v2, type metadata accessor for ToolKitProtoChangeset);
  v18 = OUTLINED_FUNCTION_125();
  sub_1C8ECA430(v18, v19);
  sub_1C8D16D78(v11, &qword_1EC3141E0, &unk_1C90729F0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  sub_1C8CEB10C(v1[2], v0[2]);
  if ((v20 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_1C90637EC();
  OUTLINED_FUNCTION_0_64();
  v23 = sub_1C8ECA390(v21, v22, MEMORY[0x1E69AAC10]);
  v24 = OUTLINED_FUNCTION_12_28(v23);
LABEL_19:
  OUTLINED_FUNCTION_50_0(v24);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EC0AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319100, type metadata accessor for ToolKitProtoIndexingPolicyResolution, &protocol conformance descriptor for ToolKitProtoIndexingPolicyResolution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC0B64(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA63ED0, type metadata accessor for ToolKitProtoIndexingPolicyResolution, &protocol conformance descriptor for ToolKitProtoIndexingPolicyResolution);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC0BD4(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(qword_1EDA63ED0, type metadata accessor for ToolKitProtoIndexingPolicyResolution, &protocol conformance descriptor for ToolKitProtoIndexingPolicyResolution);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC0C6C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318EA0);
  __swift_project_value_buffer(v0, qword_1EC318EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tool";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "success";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "failure";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoIndexingEvent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_39();
        v12 = 0;
        goto LABEL_10;
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        v12 = 1;
LABEL_10:
        sub_1C8EC0FE4(v7, v8, v9, v10, v12, v11);
        break;
      case 5:
        v13 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC10B8(v13, v14, v15, v16);
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC12B4(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

void sub_1C8EC0FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1C90639FC();
  if (v6)
  {
  }

  else if (v13)
  {
    if (*(a2 + 32) == 255)
    {
      v10 = 255;
    }

    else
    {
      sub_1C90638EC();
      v10 = *(a2 + 32);
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = v13;
    *(a2 + 32) = a5;
    a6(v11, v12, v10);
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C8EC10B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = sub_1C906373C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
  sub_1C906392C();
  if (v4)
  {
    return sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v19 = a2;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
  sub_1C8D16D78(v8, &qword_1EC3191B0, &qword_1C909DFA0);
  if (EnumTagSinglePayload == 1)
  {
    return sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v14 = v19;
  if (*(v19 + 48) != 1)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  v16 = *(v14 + 40);
  v17 = *(v14 + 48);
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  return sub_1C8CE5490(v16, v17);
}

uint64_t sub_1C8EC12B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C90639FC();
  if (v4)
  {
  }

  if (v9)
  {
    if (*(a2 + 48) == 1)
    {
      v7 = 1;
    }

    else
    {
      sub_1C90638EC();
      v7 = *(a2 + 48);
    }

    v8 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a2 + 48) = v9;
    return sub_1C8CE5490(v8, v7);
  }

  return result;
}

void ToolKitProtoIndexingEvent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    if (*(v1 + 32) == 255)
    {
      goto LABEL_12;
    }

    v3 = OUTLINED_FUNCTION_2_55();
    if (v4)
    {
      sub_1C8EC1478(v3);
    }

    else
    {
      sub_1C8EC142C(v3);
    }

    if (!v0)
    {
LABEL_12:
      if (*(v1 + 48) == 1)
      {
        goto LABEL_13;
      }

      v5 = OUTLINED_FUNCTION_2_55();
      if (v9)
      {
        sub_1C8EC1610(v5);
      }

      else
      {
        sub_1C8EC14C4(v5, v6, v7, v8);
      }

      if (!v0)
      {
LABEL_13:
        type metadata accessor for ToolKitProtoIndexingEvent(0);
        OUTLINED_FUNCTION_13_23();
      }
    }
  }
}

uint64_t sub_1C8EC142C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != 255 && (v1 & 1) == 0)
  {
    return sub_1C9063B8C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC1478(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != 255 && (v1 & 1) != 0)
  {
    return sub_1C9063B8C();
  }

  __break(1u);
  return result;
}

void sub_1C8EC14C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C906373C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48))
  {
    __break(1u);
  }

  else
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    sub_1C9063B1C();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C8EC1610(uint64_t result)
{
  if (*(result + 48) >= 2uLL)
  {
    return sub_1C9063B8C();
  }

  __break(1u);
  return result;
}

uint64_t static ToolKitProtoIndexingEvent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_33(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  if (v7 != 255)
  {
    v143 = *(v2 + 16);
    v144 = v6;
    v145 = v7;
    if (v10 != 255)
    {
      v140 = v9;
      v141 = v8;
      v142 = v10 & 1;
      v11 = OUTLINED_FUNCTION_25_17();
      sub_1C8D6E118(v11, v12, v13, v14, v15, v16);
      v17 = OUTLINED_FUNCTION_203();
      sub_1C8D6E118(v17, v18, v10, v19, v20, v21);
      v22 = OUTLINED_FUNCTION_25_17();
      sub_1C8D6E118(v22, v23, v24, v25, v26, v27);
      v32 = static ToolKitProtoIndexingEventContents.== infix(_:_:)(&v143, &v140, v28, v29, v30, v31);
      OUTLINED_FUNCTION_265(v140, v141);
      OUTLINED_FUNCTION_265(v143, v144);
      v33 = OUTLINED_FUNCTION_25_17();
      sub_1C8D93F28(v33, v34, v35);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    v50 = OUTLINED_FUNCTION_25_17();
    sub_1C8D6E118(v50, v51, v52, v53, v54, v55);
    v56 = OUTLINED_FUNCTION_203();
    sub_1C8D6E118(v56, v57, 255, v58, v59, v60);
    v61 = OUTLINED_FUNCTION_25_17();
    sub_1C8D6E118(v61, v62, v63, v64, v65, v66);
    v67 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_265(v67, v68);
LABEL_13:
    v69 = OUTLINED_FUNCTION_25_17();
    sub_1C8D93F28(v69, v70, v71);
    v72 = OUTLINED_FUNCTION_203();
    sub_1C8D93F28(v72, v73, v10);
    return 0;
  }

  v40 = OUTLINED_FUNCTION_100();
  sub_1C8D6E118(v40, v41, 255, v42, v43, v44);
  if (v10 != 255)
  {
    v45 = OUTLINED_FUNCTION_203();
    sub_1C8D6E118(v45, v46, v10, v47, v48, v49);
    goto LABEL_13;
  }

  v74 = OUTLINED_FUNCTION_203();
  sub_1C8D6E118(v74, v75, 255, v76, v77, v78);
  v79 = OUTLINED_FUNCTION_100();
  sub_1C8D93F28(v79, v80, 255);
LABEL_15:
  v81 = *(v2 + 40);
  v82 = *(v2 + 48);
  v83 = *(v1 + 40);
  v84 = *(v1 + 48);
  if (v82 == 1)
  {
    sub_1C8CE5404(*(v2 + 40), 1, v36, v37, v38, v39);
    if (v84 == 1)
    {
      sub_1C8CE5404(v83, 1, v85, v86, v87, v88);
      sub_1C8CE5490(v81, 1);
LABEL_25:
      type metadata accessor for ToolKitProtoIndexingEvent(0);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_64();
      v139 = sub_1C8ECA390(v137, v138, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_12_28(v139) & 1;
    }

    v105 = OUTLINED_FUNCTION_211();
    sub_1C8CE5404(v105, v106, v107, v108, v109, v110);
    goto LABEL_21;
  }

  v143 = *(v2 + 40);
  v144 = v82;
  if (v84 == 1)
  {
    v89 = OUTLINED_FUNCTION_249();
    sub_1C8CE5404(v89, v90, v91, v92, v93, v94);
    sub_1C8CE5404(v83, 1, v95, v96, v97, v98);
    v99 = OUTLINED_FUNCTION_249();
    sub_1C8CE5404(v99, v100, v101, v102, v103, v104);

LABEL_21:
    v111 = OUTLINED_FUNCTION_249();
    sub_1C8CE5490(v111, v112);
    v113 = OUTLINED_FUNCTION_211();
    sub_1C8CE5490(v113, v114);
    return 0;
  }

  v140 = v83;
  v141 = v84;
  v116 = OUTLINED_FUNCTION_249();
  sub_1C8CE5404(v116, v117, v118, v119, v120, v121);
  v122 = OUTLINED_FUNCTION_211();
  sub_1C8CE5404(v122, v123, v124, v125, v126, v127);
  v128 = OUTLINED_FUNCTION_249();
  sub_1C8CE5404(v128, v129, v130, v131, v132, v133);
  v134 = static ToolKitProtoIndexingEventType.== infix(_:_:)(&v143, &v140);

  v135 = OUTLINED_FUNCTION_249();
  sub_1C8CE5490(v135, v136);
  if (v134)
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t sub_1C8EC1970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190F8, type metadata accessor for ToolKitProtoIndexingEvent, &protocol conformance descriptor for ToolKitProtoIndexingEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC19F0(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent, &protocol conformance descriptor for ToolKitProtoIndexingEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC1A60(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent, &protocol conformance descriptor for ToolKitProtoIndexingEvent);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC1AF8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318EB8);
  __swift_project_value_buffer(v0, qword_1EC318EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updated";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "skipped";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "failed";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoIndexingResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC1DFC(v11, v12, v13, v14);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC1FF8(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC21FC(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8EC1DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = sub_1C906373C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
  sub_1C906392C();
  if (v4)
  {
    return sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v19 = a2;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
  sub_1C8D16D78(v8, &qword_1EC3191B0, &qword_1C909DFA0);
  if (EnumTagSinglePayload == 1)
  {
    return sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v14 = v19;
  if (*(v19 + 24) != 2)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  v16 = *(v14 + 16);
  v17 = *(v14 + 24);
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  return sub_1C8D93ECC(v16, v17);
}

uint64_t sub_1C8EC1FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = sub_1C906373C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
  sub_1C906392C();
  if (v4)
  {
    return sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v19 = a2;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
  sub_1C8D16D78(v8, &qword_1EC3191B0, &qword_1C909DFA0);
  if (EnumTagSinglePayload == 1)
  {
    return sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v14 = v19;
  if (*(v19 + 24) != 2)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  v16 = *(v14 + 16);
  v17 = *(v14 + 24);
  *(v14 + 16) = xmmword_1C90747F0;
  return sub_1C8D93ECC(v16, v17);
}

uint64_t sub_1C8EC21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C90639FC();
  if (v4)
  {
  }

  if (v9)
  {
    if (*(a2 + 24) == 2)
    {
      v7 = 2;
    }

    else
    {
      sub_1C90638EC();
      v7 = *(a2 + 24);
    }

    v8 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a2 + 24) = v9;
    return sub_1C8D93ECC(v8, v7);
  }

  return result;
}

void ToolKitProtoIndexingResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    if (*(v1 + 24) == 2)
    {
      goto LABEL_10;
    }

    v3 = OUTLINED_FUNCTION_2_55();
    if (v7 == 1)
    {
      sub_1C8EC24A8(v3, v4, v5, v6);
    }

    else if (v7)
    {
      sub_1C8EC25F8(v3);
    }

    else
    {
      sub_1C8EC235C(v3, v4, v5, v6);
    }

    if (!v0)
    {
LABEL_10:
      type metadata accessor for ToolKitProtoIndexingResponse(0);
      OUTLINED_FUNCTION_13_23();
    }
  }
}

void sub_1C8EC235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C906373C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    __break(1u);
  }

  else
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    sub_1C9063B1C();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1C8EC24A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C906373C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24) == 1)
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    sub_1C9063B1C();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8EC25F8(uint64_t result)
{
  if (*(result + 24) >= 3uLL)
  {
    return sub_1C9063B8C();
  }

  __break(1u);
  return result;
}

uint64_t static ToolKitProtoIndexingResponse.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_33(a1);
  v7 = v7 && v3 == v5;
  if (!v7 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  if (v9 != 2)
  {
    v66 = *(v2 + 16);
    v67 = v9;
    if (v11 != 2)
    {
      v64 = v10;
      v65 = v11;
      v40 = OUTLINED_FUNCTION_249();
      sub_1C8EC8E20(v40, v41, v42, v43, v44);
      v45 = OUTLINED_FUNCTION_211();
      sub_1C8EC8E20(v45, v46, v47, v48, v49);
      v50 = OUTLINED_FUNCTION_249();
      sub_1C8EC8E20(v50, v51, v52, v53, v54);
      v58 = static ToolKitProtoIndexingResponseKind.== infix(_:_:)(&v66, &v64, v55, v56, v57);
      sub_1C8D93EDC(v64, v65);
      sub_1C8D93EDC(v66, v67);
      v59 = OUTLINED_FUNCTION_249();
      sub_1C8D93ECC(v59, v60);
      if (v58)
      {
        goto LABEL_15;
      }

      return 0;
    }

    v15 = OUTLINED_FUNCTION_249();
    sub_1C8EC8E20(v15, v16, v17, v18, v19);
    sub_1C8EC8E20(v10, 2uLL, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_249();
    sub_1C8EC8E20(v23, v24, v25, v26, v27);
    v28 = OUTLINED_FUNCTION_249();
    sub_1C8D93EDC(v28, v29);
LABEL_12:
    v35 = OUTLINED_FUNCTION_249();
    sub_1C8D93ECC(v35, v36);
    v37 = OUTLINED_FUNCTION_211();
    sub_1C8D93ECC(v37, v38);
    return 0;
  }

  sub_1C8EC8E20(*(v2 + 16), 2uLL, v4, v5, v6);
  if (v11 != 2)
  {
    v30 = OUTLINED_FUNCTION_211();
    sub_1C8EC8E20(v30, v31, v32, v33, v34);
    goto LABEL_12;
  }

  sub_1C8EC8E20(v10, 2uLL, v12, v13, v14);
  sub_1C8D93ECC(v8, 2uLL);
LABEL_15:
  type metadata accessor for ToolKitProtoIndexingResponse(0);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_0_64();
  v63 = sub_1C8ECA390(v61, v62, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v63) & 1;
}

uint64_t sub_1C8EC2844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190F0, type metadata accessor for ToolKitProtoIndexingResponse, &protocol conformance descriptor for ToolKitProtoIndexingResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC28C4(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse, &protocol conformance descriptor for ToolKitProtoIndexingResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC2934(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse, &protocol conformance descriptor for ToolKitProtoIndexingResponse);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC2AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190E8, type metadata accessor for ToolKitProtoWALOperationStart, &protocol conformance descriptor for ToolKitProtoWALOperationStart);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC2B70(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EDA616C0, type metadata accessor for ToolKitProtoWALOperationStart, &protocol conformance descriptor for ToolKitProtoWALOperationStart);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC2BE0(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(&qword_1EDA616C0, type metadata accessor for ToolKitProtoWALOperationStart, &protocol conformance descriptor for ToolKitProtoWALOperationStart);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC2C78()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318EE8);
  __swift_project_value_buffer(v0, qword_1EC318EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "operationId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "busy";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalFrames";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "checkpointedFrames";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "error";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoWALOperationEnd.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C906390C();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_22_0();
        sub_1C906398C();
        break;
      case 5:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      default:
        continue;
    }
  }
}

uint64_t ToolKitProtoWALOperationEnd.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v1 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
  {
    v3 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8EC306C(v3);
    if (!v0)
    {
      v4 = OUTLINED_FUNCTION_2_55();
      sub_1C8EC30A8(v4);
      v5 = OUTLINED_FUNCTION_2_55();
      sub_1C8EC30E0(v5);
      v6 = OUTLINED_FUNCTION_2_55();
      sub_1C8EC3118(v6);
      type metadata accessor for ToolKitProtoWALOperationEnd(0);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8EC306C(uint64_t result)
{
  if (*(result + 16) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

uint64_t sub_1C8EC30A8(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    return sub_1C9063B4C();
  }

  return result;
}

uint64_t sub_1C8EC30E0(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {
    return sub_1C9063B4C();
  }

  return result;
}

uint64_t sub_1C8EC3118(uint64_t result)
{
  if (*(result + 48))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t static ToolKitProtoWALOperationEnd.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_33(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v1 + 24);
  if (*(v2 + 24))
  {
    if (!*(v1 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 20) != *(v1 + 20))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(v1 + 32);
  if (*(v2 + 32))
  {
    if (!*(v1 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 28) != *(v1 + 28))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v2 + 48);
  v11 = *(v1 + 48);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(v2 + 40) == *(v1 + 40) && v10 == v11;
    if (!v12 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }

LABEL_30:
    type metadata accessor for ToolKitProtoWALOperationEnd(0);
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_64();
    v15 = sub_1C8ECA390(v13, v14, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_12_28(v15) & 1;
  }

  if (!v11)
  {
    goto LABEL_30;
  }

  return 0;
}

uint64_t sub_1C8EC3354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190E0, type metadata accessor for ToolKitProtoWALOperationEnd, &protocol conformance descriptor for ToolKitProtoWALOperationEnd);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC33D4(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd, &protocol conformance descriptor for ToolKitProtoWALOperationEnd);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC3444(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd, &protocol conformance descriptor for ToolKitProtoWALOperationEnd);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC3518()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t sub_1C8EC3590(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_1_6();
  if (!v6 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v4))
  {
    a4(0);
    return OUTLINED_FUNCTION_13_23();
  }

  return result;
}

uint64_t sub_1C8EC3618(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_6_33(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_0_64();
  v9 = sub_1C8ECA390(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v9) & 1;
}

uint64_t sub_1C8EC372C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190D8, type metadata accessor for ToolKitProtoVacuumOperationStart, &protocol conformance descriptor for ToolKitProtoVacuumOperationStart);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC37AC(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EDA61308, type metadata accessor for ToolKitProtoVacuumOperationStart, &protocol conformance descriptor for ToolKitProtoVacuumOperationStart);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC381C(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(&qword_1EDA61308, type metadata accessor for ToolKitProtoVacuumOperationStart, &protocol conformance descriptor for ToolKitProtoVacuumOperationStart);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC38B4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318F18);
  __swift_project_value_buffer(v0, qword_1EC318F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operationId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8EC3ACC()
{
  OUTLINED_FUNCTION_57_1();
  while (1)
  {
    OUTLINED_FUNCTION_125();
    result = sub_1C90638DC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_29_18();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_29_18();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoVacuumOperationEnd.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v1 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
  {
    v3 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8EC3BB4(v3);
    if (!v0)
    {
      type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8EC3BB4(uint64_t result)
{
  if (*(result + 24))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t static ToolKitProtoVacuumOperationEnd.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_33(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (sub_1C9064C2C() & 1) != 0)
  {
    v6 = *(v2 + 24);
    v7 = *(v1 + 24);
    if (v6)
    {
      if (v7)
      {
        v8 = *(v2 + 16) == *(v1 + 16) && v6 == v7;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v7)
    {
LABEL_13:
      type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
      OUTLINED_FUNCTION_64_7();
      OUTLINED_FUNCTION_0_64();
      v11 = sub_1C8ECA390(v9, v10, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_12_28(v11) & 1;
    }
  }

  return 0;
}

uint64_t sub_1C8EC3D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190D0, type metadata accessor for ToolKitProtoVacuumOperationEnd, &protocol conformance descriptor for ToolKitProtoVacuumOperationEnd);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC3DC8(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA61400, type metadata accessor for ToolKitProtoVacuumOperationEnd, &protocol conformance descriptor for ToolKitProtoVacuumOperationEnd);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC3E38(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(qword_1EDA61400, type metadata accessor for ToolKitProtoVacuumOperationEnd, &protocol conformance descriptor for ToolKitProtoVacuumOperationEnd);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC3ED0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318F30);
  __swift_project_value_buffer(v0, qword_1EC318F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C460;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "reason";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "policyResolution";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "indexingEvent";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "response";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "walOperationStart";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "walOperationEnd";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "vacuumOperationStart";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "vacuumOperationEnd";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoIndexingLogEntry.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC4364(v3, v4, v5, v6);
        break;
      case 2:
        v26 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC485C(v26, v27, v28, v29, v30);
        break;
      case 3:
        v12 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC4D54(v12, v13, v14, v15);
        break;
      case 4:
        v16 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC524C(v16, v17, v18, v19, v20);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC5744(v7, v8, v9, v10, v11);
        break;
      case 6:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC5C3C(v31, v32, v33, v34, v35);
        break;
      case 7:
        v36 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC6134(v36, v37, v38, v39, v40);
        break;
      case 9:
        v21 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC662C(v21, v22, v23, v24, v25);
        break;
      case 10:
        v41 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC6B24(v41, v42, v43, v44);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8EC4364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoIndexingReason(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319168, &qword_1C909DF58);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8ECA430(v13, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC319168, &qword_1C909DF58);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8ECA390(qword_1EDA61AF8, type metadata accessor for ToolKitProtoIndexingReason, &protocol conformance descriptor for ToolKitProtoIndexingReason);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC319168, &qword_1C909DF58);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC319168, &qword_1C909DF58);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC319168, &qword_1C909DF58);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC319168, &qword_1C909DF58);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8EC485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for ToolKitProtoIndexingRequest(0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319170, &qword_1C909DF60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_storeEnumTagSinglePayload(&v27 - v20, 1, 1, v6);
  v28 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v30 = v12;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v11, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v21, &qword_1EC319170, &qword_1C909DF60);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C8ECA430(v14, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(&qword_1EDA61820, type metadata accessor for ToolKitProtoIndexingRequest, &protocol conformance descriptor for ToolKitProtoIndexingRequest);
  v22 = v32;
  sub_1C9063A4C();
  if (v22)
  {
    v23 = v21;
    return sub_1C8D16D78(v23, &qword_1EC319170, &qword_1C909DF60);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
  {
    sub_1C8D16D78(v21, &qword_1EC319170, &qword_1C909DF60);
    v23 = v18;
    return sub_1C8D16D78(v23, &qword_1EC319170, &qword_1C909DF60);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v25 = v30;
  sub_1C8D16D78(v21, &qword_1EC319170, &qword_1C909DF60);
  v26 = v28;
  sub_1C8D16D78(v28, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_1C8EC4D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319178, &qword_1C909DF68);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC319178, &qword_1C909DF68);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v13, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(qword_1EDA63ED0, type metadata accessor for ToolKitProtoIndexingPolicyResolution, &protocol conformance descriptor for ToolKitProtoIndexingPolicyResolution);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC319178, &qword_1C909DF68);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC319178, &qword_1C909DF68);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC319178, &qword_1C909DF68);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC319178, &qword_1C909DF68);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8EC524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for ToolKitProtoIndexingEvent(0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319180, &qword_1C909DF70);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_storeEnumTagSinglePayload(&v27 - v20, 1, 1, v6);
  v28 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v30 = v12;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v11, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v21, &qword_1EC319180, &qword_1C909DF70);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C8ECA430(v14, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent, &protocol conformance descriptor for ToolKitProtoIndexingEvent);
  v22 = v32;
  sub_1C9063A4C();
  if (v22)
  {
    v23 = v21;
    return sub_1C8D16D78(v23, &qword_1EC319180, &qword_1C909DF70);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
  {
    sub_1C8D16D78(v21, &qword_1EC319180, &qword_1C909DF70);
    v23 = v18;
    return sub_1C8D16D78(v23, &qword_1EC319180, &qword_1C909DF70);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v25 = v30;
  sub_1C8D16D78(v21, &qword_1EC319180, &qword_1C909DF70);
  v26 = v28;
  sub_1C8D16D78(v28, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_1C8EC5744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for ToolKitProtoIndexingResponse(0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319188, &qword_1C909DF78);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_storeEnumTagSinglePayload(&v27 - v20, 1, 1, v6);
  v28 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v30 = v12;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v11, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v21, &qword_1EC319188, &qword_1C909DF78);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C8ECA430(v14, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse, &protocol conformance descriptor for ToolKitProtoIndexingResponse);
  v22 = v32;
  sub_1C9063A4C();
  if (v22)
  {
    v23 = v21;
    return sub_1C8D16D78(v23, &qword_1EC319188, &qword_1C909DF78);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
  {
    sub_1C8D16D78(v21, &qword_1EC319188, &qword_1C909DF78);
    v23 = v18;
    return sub_1C8D16D78(v23, &qword_1EC319188, &qword_1C909DF78);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v25 = v30;
  sub_1C8D16D78(v21, &qword_1EC319188, &qword_1C909DF78);
  v26 = v28;
  sub_1C8D16D78(v28, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_1C8EC5C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for ToolKitProtoWALOperationStart(0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319190, &qword_1C909DF80);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_storeEnumTagSinglePayload(&v27 - v20, 1, 1, v6);
  v28 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v30 = v12;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v11, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v21, &qword_1EC319190, &qword_1C909DF80);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C8ECA430(v14, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(&qword_1EDA616C0, type metadata accessor for ToolKitProtoWALOperationStart, &protocol conformance descriptor for ToolKitProtoWALOperationStart);
  v22 = v32;
  sub_1C9063A4C();
  if (v22)
  {
    v23 = v21;
    return sub_1C8D16D78(v23, &qword_1EC319190, &qword_1C909DF80);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
  {
    sub_1C8D16D78(v21, &qword_1EC319190, &qword_1C909DF80);
    v23 = v18;
    return sub_1C8D16D78(v23, &qword_1EC319190, &qword_1C909DF80);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v25 = v30;
  sub_1C8D16D78(v21, &qword_1EC319190, &qword_1C909DF80);
  v26 = v28;
  sub_1C8D16D78(v28, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_1C8EC6134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for ToolKitProtoWALOperationEnd(0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319198, &qword_1C909DF88);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_storeEnumTagSinglePayload(&v27 - v20, 1, 1, v6);
  v28 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v30 = v12;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v11, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v21, &qword_1EC319198, &qword_1C909DF88);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C8ECA430(v14, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd, &protocol conformance descriptor for ToolKitProtoWALOperationEnd);
  v22 = v32;
  sub_1C9063A4C();
  if (v22)
  {
    v23 = v21;
    return sub_1C8D16D78(v23, &qword_1EC319198, &qword_1C909DF88);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
  {
    sub_1C8D16D78(v21, &qword_1EC319198, &qword_1C909DF88);
    v23 = v18;
    return sub_1C8D16D78(v23, &qword_1EC319198, &qword_1C909DF88);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v25 = v30;
  sub_1C8D16D78(v21, &qword_1EC319198, &qword_1C909DF88);
  v26 = v28;
  sub_1C8D16D78(v28, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_1C8EC662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for ToolKitProtoVacuumOperationStart(0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191A0, &qword_1C909DF90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_storeEnumTagSinglePayload(&v27 - v20, 1, 1, v6);
  v28 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v30 = v12;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v11, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v21, &qword_1EC3191A0, &qword_1C909DF90);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C8ECA430(v14, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(&qword_1EDA61308, type metadata accessor for ToolKitProtoVacuumOperationStart, &protocol conformance descriptor for ToolKitProtoVacuumOperationStart);
  v22 = v32;
  sub_1C9063A4C();
  if (v22)
  {
    v23 = v21;
    return sub_1C8D16D78(v23, &qword_1EC3191A0, &qword_1C909DF90);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
  {
    sub_1C8D16D78(v21, &qword_1EC3191A0, &qword_1C909DF90);
    v23 = v18;
    return sub_1C8D16D78(v23, &qword_1EC3191A0, &qword_1C909DF90);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v25 = v30;
  sub_1C8D16D78(v21, &qword_1EC3191A0, &qword_1C909DF90);
  v26 = v28;
  sub_1C8D16D78(v28, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_1C8EC6B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191A8, &qword_1C909DF98);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v20, &qword_1EC3191A8, &qword_1C909DF98);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v13, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(qword_1EDA61400, type metadata accessor for ToolKitProtoVacuumOperationEnd, &protocol conformance descriptor for ToolKitProtoVacuumOperationEnd);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC3191A8, &qword_1C909DF98);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC3191A8, &qword_1C909DF98);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC3191A8, &qword_1C909DF98);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC3191A8, &qword_1C909DF98);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t ToolKitProtoIndexingLogEntry.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_30_20(v4, v5, v6, v7, v8, v9, v10, v11, v53);
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v12) != 1)
  {
    OUTLINED_FUNCTION_124();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v33 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC73B8(v33, v34, v35, v36);
        goto LABEL_11;
      case 2u:
        v21 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC75C0(v21, v22, v23, v24);
        goto LABEL_11;
      case 3u:
        v25 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC77C8(v25, v26, v27, v28);
        goto LABEL_11;
      case 4u:
        v17 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC79D0(v17, v18, v19, v20);
        goto LABEL_11;
      case 5u:
        v37 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC7BD8(v37, v38, v39, v40);
        goto LABEL_11;
      case 6u:
        v41 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC7DE0(v41, v42, v43, v44);
        goto LABEL_11;
      case 7u:
        v29 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC7FE8(v29, v30, v31, v32);
        goto LABEL_11;
      case 8u:
        v47 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC81F0(v47, v48, v49, v50);
        if (v0)
        {
          OUTLINED_FUNCTION_9_28();
          return sub_1C8ECA430(v1, v51);
        }

        OUTLINED_FUNCTION_9_28();
        sub_1C8ECA430(v1, v52);
        break;
      default:
        v13 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC71B4(v13, v14, v15, v16);
LABEL_11:
        OUTLINED_FUNCTION_9_28();
        result = sub_1C8ECA430(v1, v45);
        if (!v0)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ToolKitProtoIndexingLogEntry(0);
  OUTLINED_FUNCTION_22_0();
  return sub_1C90637CC();
}

uint64_t sub_1C8EC71B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoIndexingReason(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v10 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA61AF8, type metadata accessor for ToolKitProtoIndexingReason, &protocol conformance descriptor for ToolKitProtoIndexingReason);
      sub_1C9063BCC();
      return sub_1C8ECA430(v9, type metadata accessor for ToolKitProtoIndexingReason);
    }

    result = sub_1C8ECA430(v6, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoIndexingRequest(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v10 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(&qword_1EDA61820, type metadata accessor for ToolKitProtoIndexingRequest, &protocol conformance descriptor for ToolKitProtoIndexingRequest);
      sub_1C9063BCC();
      return sub_1C8ECA430(v9, type metadata accessor for ToolKitProtoIndexingRequest);
    }

    result = sub_1C8ECA430(v6, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v10 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA63ED0, type metadata accessor for ToolKitProtoIndexingPolicyResolution, &protocol conformance descriptor for ToolKitProtoIndexingPolicyResolution);
      sub_1C9063BCC();
      return sub_1C8ECA430(v9, type metadata accessor for ToolKitProtoIndexingPolicyResolution);
    }

    result = sub_1C8ECA430(v6, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC77C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoIndexingEvent(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v10 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent, &protocol conformance descriptor for ToolKitProtoIndexingEvent);
      sub_1C9063BCC();
      return sub_1C8ECA430(v9, type metadata accessor for ToolKitProtoIndexingEvent);
    }

    result = sub_1C8ECA430(v6, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC79D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoIndexingResponse(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v10 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse, &protocol conformance descriptor for ToolKitProtoIndexingResponse);
      sub_1C9063BCC();
      return sub_1C8ECA430(v9, type metadata accessor for ToolKitProtoIndexingResponse);
    }

    result = sub_1C8ECA430(v6, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC7BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoWALOperationStart(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v10 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(&qword_1EDA616C0, type metadata accessor for ToolKitProtoWALOperationStart, &protocol conformance descriptor for ToolKitProtoWALOperationStart);
      sub_1C9063BCC();
      return sub_1C8ECA430(v9, type metadata accessor for ToolKitProtoWALOperationStart);
    }

    result = sub_1C8ECA430(v6, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC7DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoWALOperationEnd(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v10 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd, &protocol conformance descriptor for ToolKitProtoWALOperationEnd);
      sub_1C9063BCC();
      return sub_1C8ECA430(v9, type metadata accessor for ToolKitProtoWALOperationEnd);
    }

    result = sub_1C8ECA430(v6, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC7FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoVacuumOperationStart(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v10 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(&qword_1EDA61308, type metadata accessor for ToolKitProtoVacuumOperationStart, &protocol conformance descriptor for ToolKitProtoVacuumOperationStart);
      sub_1C9063BCC();
      return sub_1C8ECA430(v9, type metadata accessor for ToolKitProtoVacuumOperationStart);
    }

    result = sub_1C8ECA430(v6, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC81F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v10 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA61400, type metadata accessor for ToolKitProtoVacuumOperationEnd, &protocol conformance descriptor for ToolKitProtoVacuumOperationEnd);
      sub_1C9063BCC();
      return sub_1C8ECA430(v9, type metadata accessor for ToolKitProtoVacuumOperationEnd);
    }

    result = sub_1C8ECA430(v6, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoIndexingLogEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(v3);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v5 = OUTLINED_FUNCTION_124();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_73();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318FF8, &qword_1C909C480);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_47_13();
  OUTLINED_FUNCTION_14_2(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_14_2(v0 + v2);
    if (v11)
    {
      sub_1C8D16D78(v0, &qword_1EC3141D8, &qword_1C909DFF0);
LABEL_12:
      type metadata accessor for ToolKitProtoIndexingLogEntry(0);
      OUTLINED_FUNCTION_63_10();
      OUTLINED_FUNCTION_0_64();
      v20 = sub_1C8ECA390(v18, v19, MEMORY[0x1E69AAC10]);
      v13 = OUTLINED_FUNCTION_12_28(v20);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_14_2(v0 + v2);
  if (v11)
  {
    OUTLINED_FUNCTION_9_28();
    sub_1C8ECA430(v1, v12);
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC318FF8, &qword_1C909C480);
    goto LABEL_10;
  }

  sub_1C8ECA3D8();
  v14 = OUTLINED_FUNCTION_398();
  static ToolKitProtoIndexingLogEntryKind.== infix(_:_:)(v14, v15);
  OUTLINED_FUNCTION_61_11();
  v16 = OUTLINED_FUNCTION_125();
  sub_1C8ECA430(v16, v17);
  sub_1C8D16D78(v0, &qword_1EC3141D8, &qword_1C909DFF0);
  if (&qword_1EC3141D8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v13 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v13);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EC8690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190C8, type metadata accessor for ToolKitProtoIndexingLogEntry, &protocol conformance descriptor for ToolKitProtoIndexingLogEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC8710(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA64C68, type metadata accessor for ToolKitProtoIndexingLogEntry, &protocol conformance descriptor for ToolKitProtoIndexingLogEntry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC8780(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(qword_1EDA64C68, type metadata accessor for ToolKitProtoIndexingLogEntry, &protocol conformance descriptor for ToolKitProtoIndexingLogEntry);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC8830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C906A950;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  sub_1C9063BDC();
  OUTLINED_FUNCTION_13_1();
  (*(v13 + 104))(v11, v12);
  return sub_1C9063BEC();
}

uint64_t sub_1C8EC89B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C9063C0C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t ToolKitProtoToolDatabaseOpaqueValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C906394C();
    }
  }

  return result;
}

uint64_t ToolKitProtoToolDatabaseOpaqueValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B2C(), !v1))
  {
    type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(0);
    return OUTLINED_FUNCTION_13_23();
  }

  return result;
}

uint64_t sub_1C8EC8B30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_223();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_0_64();
  v10 = sub_1C8ECA390(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v10) & 1;
}

uint64_t sub_1C8EC8C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190C0, type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue, &protocol conformance descriptor for ToolKitProtoToolDatabaseOpaqueValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC8CDC(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA66BC8, type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue, &protocol conformance descriptor for ToolKitProtoToolDatabaseOpaqueValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC8D4C(uint64_t a1, uint64_t a2)
{
  sub_1C8ECA390(qword_1EDA66BC8, type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue, &protocol conformance descriptor for ToolKitProtoToolDatabaseOpaqueValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC8DC8(uint64_t a1, uint64_t a2)
{
  sub_1C9064D7C();
  sub_1C9063E7C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8EC8E20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 2)
  {
    return sub_1C8D6E194(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C8ECA390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8ECA3D8()
{
  v2 = OUTLINED_FUNCTION_24_2();
  v3(v2);
  OUTLINED_FUNCTION_13_1();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C8ECA430(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8ECA488()
{
  OUTLINED_FUNCTION_223();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_13_1();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_23_22()
{

  return sub_1C8ECA488();
}

uint64_t OUTLINED_FUNCTION_61_11()
{

  return sub_1C8ECA430(v0, v1);
}

void OUTLINED_FUNCTION_68_6()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t ToolKitProtoLaunchServicesSnapshot.init(stateByBundleIdentifier:version:)()
{
  OUTLINED_FUNCTION_31_17();
  v2 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0) + 20);
  v3 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  OUTLINED_FUNCTION_45_17(v1 + v2, v4, v5, v3);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v0;
  return sub_1C8D7300C();
}

uint64_t sub_1C8ECA750()
{
  v5 = OUTLINED_FUNCTION_14_30();
  v6(v5);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  return result;
}

uint64_t ToolKitProtoChangeset.Partial.init(updated:removed:provenance:)()
{
  OUTLINED_FUNCTION_83_3();
  type metadata accessor for ToolKitProtoChangeset.Partial(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  return result;
}

uint64_t sub_1C8ECA870()
{
  OUTLINED_FUNCTION_83_3();
  v4(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  return result;
}

uint64_t ToolKitProtoIndexingPolicyResolution.init(requestID:resolvedChangeset:decisionMetadata:)()
{
  v4 = OUTLINED_FUNCTION_14_30();
  v5 = *(type metadata accessor for ToolKitProtoIndexingPolicyResolution(v4) + 24);
  v6 = type metadata accessor for ToolKitProtoChangeset(0);
  OUTLINED_FUNCTION_45_17(v3 + v5, v7, v8, v6);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  result = sub_1C8D7300C();
  v3[2] = v0;
  return result;
}

uint64_t ToolKitProtoWALOperationEnd.init(operationID:busy:totalFrames:checkpointedFrames:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for ToolKitProtoWALOperationEnd(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 20) = a4;
  *(a8 + 24) = BYTE4(a4) & 1;
  *(a8 + 28) = a5;
  *(a8 + 32) = BYTE4(a5) & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_1C8ECAA9C()
{
  OUTLINED_FUNCTION_31_17();
  v3(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

uint64_t ToolKitProtoVacuumOperationEnd.init(operationID:error:)()
{
  v5 = OUTLINED_FUNCTION_14_30();
  type metadata accessor for ToolKitProtoVacuumOperationEnd(v5);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  return result;
}

uint64_t sub_1C8ECAB80@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  a2(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t ToolKitProtoLaunchServicesSnapshot.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v1);
  v2 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  OUTLINED_FUNCTION_53_5(v2);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State(0);
  result = sub_1C9063E2C();
  *v0 = result;
  return result;
}

uint64_t ToolKitProtoLaunchServicesSnapshot.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECACF8()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  OUTLINED_FUNCTION_220_0();
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8ECAD78()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  OUTLINED_FUNCTION_220_0();
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoLaunchServicesSnapshot.State.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.Version.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoLinkSnapshot.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoLinkSnapshot(v1);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  type metadata accessor for ToolKitProtoLinkSnapshot.State(0);
  result = sub_1C9063E2C();
  *v0 = result;
  return result;
}

uint64_t ToolKitProtoLinkSnapshot.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoLinkSnapshot(v0);
  return OUTLINED_FUNCTION_104();
}

double sub_1C8ECAF94()
{
  v1 = OUTLINED_FUNCTION_61_0();
  v2(v1);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  result = 0.0;
  *(v0 + 16) = xmmword_1C9074C90;
  return result;
}

uint64_t ToolKitProtoLinkSnapshot.State.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoLinkSnapshot.State(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECB0AC()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8ECB130()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoChangeset.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoChangeset(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECB20C()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v4 = v3(v2);
  OUTLINED_FUNCTION_45_17(v1, v5, v6, v4);
  v0(0);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoChangeset.Provenance.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoChangeset.Provenance(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoChangeset.Partial.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoChangeset.Partial(v1);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v3;
  v0[2] = v3;
  return result;
}

uint64_t ToolKitProtoChangeset.Partial.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoChangeset.Partial(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoIndexingReason.init()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_50_13(a1);
  *(a1 + 32) = v2;
  type metadata accessor for ToolKitProtoIndexingReason(0);
  v3 = OUTLINED_FUNCTION_220_0();
  v4 = type metadata accessor for ToolKitProtoChangeset(v3);
  OUTLINED_FUNCTION_53_5(v4);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t sub_1C8ECB448()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_60_4();

  return v3(v2);
}

uint64_t sub_1C8ECB4CC()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_168_2();

  return v3(v2);
}

uint64_t ToolKitProtoIndexingReason.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoIndexingReason(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECB59C()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v3(v2);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = v0;
  return result;
}

uint64_t ToolKitProtoIndexingRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoIndexingRequest(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoIndexingPolicyResolution.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoIndexingPolicyResolution(v1);
  v2 = OUTLINED_FUNCTION_220_0();
  v3 = type metadata accessor for ToolKitProtoChangeset(v2);
  OUTLINED_FUNCTION_53_5(v3);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t ToolKitProtoIndexingPolicyResolution.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoIndexingPolicyResolution(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoIndexingEvent.init()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_50_13(a1);
  *(a1 + 32) = v2;
  *(a1 + 40) = xmmword_1C90747F0;
  type metadata accessor for ToolKitProtoIndexingEvent(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoIndexingEvent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoIndexingEvent(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoIndexingResponse.init()(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_1C907C320;
  type metadata accessor for ToolKitProtoIndexingResponse(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoIndexingResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoIndexingResponse(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoWALOperationStart.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoWALOperationStart(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoWALOperationEnd.init()(uint64_t a1@<X8>)
{
  *(a1 + 16) = 2;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for ToolKitProtoWALOperationEnd(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoWALOperationEnd.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoWALOperationEnd(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v1 = OUTLINED_FUNCTION_60_4();

  return v2(v1);
}

uint64_t ToolKitProtoWALOperationEnd.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoWALOperationEnd(v0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_13_1();
  v1 = OUTLINED_FUNCTION_168_2();

  return v2(v1);
}

uint64_t ToolKitProtoWALOperationEnd.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoWALOperationEnd(v0);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8ECBAD0()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoVacuumOperationStart.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoVacuumOperationStart(v0);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoVacuumOperationEnd.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoVacuumOperationEnd(v1);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoVacuumOperationEnd.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoVacuumOperationEnd(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoIndexingLogEntry.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoIndexingLogEntry(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDatabaseOpaqueValue.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(v1);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoToolDatabaseOpaqueValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.version.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v0);
  return sub_1C8D63FCC();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.version.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v0);
  return sub_1C8D7300C();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.version.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoLinkSnapshot.State.containerID.setter()
{
  OUTLINED_FUNCTION_127_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoLinkSnapshot.State.installIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoLinkSnapshot.State.installIdentifier.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7B78(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static ToolKitProtoChangeset.ToolKitProtoProvenanceKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v16[1] = type metadata accessor for ToolKitProtoLinkSnapshot(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v3 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129E8, &qword_1C909DFE0);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  sub_1C8ECC8A8();
  sub_1C8ECC8A8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_21_20();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_295() != 1)
      {
        goto LABEL_12;
      }

      sub_1C8ECC4DC();
      sub_1C8F56D1C();
      if (v12)
      {
        sub_1C90637EC();
        v13 = sub_1C8D99190();
        if (OUTLINED_FUNCTION_226_0(v13))
        {
          OUTLINED_FUNCTION_22_26();
          sub_1C8ECC488();
          OUTLINED_FUNCTION_59_13();
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_22_26();
      sub_1C8ECC488();
      OUTLINED_FUNCTION_59_13();
      OUTLINED_FUNCTION_7_35();
      goto LABEL_14;
    case 2u:
      if (OUTLINED_FUNCTION_295() != 2)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    case 3u:
      if (OUTLINED_FUNCTION_295() != 3)
      {
        goto LABEL_13;
      }

LABEL_7:
      OUTLINED_FUNCTION_7_35();
      v11 = 1;
      break;
    default:
      OUTLINED_FUNCTION_21_20();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_295())
      {
LABEL_12:
        sub_1C8ECC488();
LABEL_13:
        sub_1C8D16D78(v10, &qword_1EC3129E8, &qword_1C909DFE0);
LABEL_14:
        v11 = 0;
      }

      else
      {
        sub_1C8ECC4DC();
        static ToolKitProtoLaunchServicesSnapshot.== infix(_:_:)();
        v11 = v15;
        sub_1C8ECC488();
        sub_1C8ECC488();
        OUTLINED_FUNCTION_7_35();
      }

      break;
  }

  return v11 & 1;
}

uint64_t sub_1C8ECC488()
{
  v1 = OUTLINED_FUNCTION_258();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C8ECC4DC()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t ToolKitProtoChangeset.Partial.updated.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ToolKitProtoChangeset.Partial.removed.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ToolKitProtoChangeset.Partial.provenance.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static ToolKitProtoChangesetKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = (v5 - v4);
  v7 = type metadata accessor for ToolKitProtoChangesetKind(0);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191D0, &qword_1C909DFE8);
  v13 = OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1C8ECC8A8();
  sub_1C8ECC8A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 2, v2);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      if (OUTLINED_FUNCTION_48_14() != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_26_15();
      return 1;
    }

    if (OUTLINED_FUNCTION_48_14() == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C8ECC8A8();
    if (!OUTLINED_FUNCTION_48_14())
    {
      sub_1C8ECC4DC();
      sub_1C8CEB10C(*v11, *v6);
      if ((v18 & 1) == 0 || (sub_1C8CEB10C(v11[1], v6[1]), (v19 & 1) == 0) || (sub_1C8CF0A10(), (v20 & 1) == 0) || (sub_1C90637EC(), v21 = sub_1C8D99190(), (OUTLINED_FUNCTION_226_0(v21) & 1) == 0))
      {
        OUTLINED_FUNCTION_25_18();
        sub_1C8ECC488();
        OUTLINED_FUNCTION_59_13();
        OUTLINED_FUNCTION_26_15();
        return 0;
      }

      OUTLINED_FUNCTION_25_18();
      sub_1C8ECC488();
      OUTLINED_FUNCTION_59_13();
      goto LABEL_8;
    }

    sub_1C8ECC488();
  }

LABEL_9:
  sub_1C8D16D78(v15, &qword_1EC3191D0, &qword_1C909DFE8);
  return 0;
}

uint64_t sub_1C8ECC8A8()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t ToolKitProtoIndexingReason.requestedChangeset.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoIndexingReason(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoIndexingReason.init(id:requestedChangeset:)()
{
  OUTLINED_FUNCTION_83_3();
  OUTLINED_FUNCTION_50_13(v3);
  *(v2 + 32) = v4;
  v5 = *(type metadata accessor for ToolKitProtoIndexingReason(0) + 24);
  v6 = type metadata accessor for ToolKitProtoChangeset(0);
  OUTLINED_FUNCTION_45_17(v2 + v5, v7, v8, v6);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  *(v2 + 8) = v0;
  return sub_1C8D7300C();
}

uint64_t static ToolKitProtoTriggerKind.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v25 = OUTLINED_FUNCTION_94();
      sub_1C8D7CAE8(v25, v26, 0);
      v27 = OUTLINED_FUNCTION_249();
      sub_1C8D7CAE8(v27, v28, 0);
      v29 = v7 ^ v5 ^ 1;
      return v29 & 1;
    }

LABEL_19:
    v34 = OUTLINED_FUNCTION_249();
    sub_1C8D78DD0(v34, v35, v9, v36, v37);
    v38 = OUTLINED_FUNCTION_94();
    sub_1C8D7CAE8(v38, v39, v6);
    v40 = OUTLINED_FUNCTION_249();
    sub_1C8D7CAE8(v40, v41, v9);
    v29 = 0;
    return v29 & 1;
  }

  if (v6 != 1)
  {
    switch(v5)
    {
      case 1:
        if (v9 != 2 || v7 != 1 || v8 != 0)
        {
          goto LABEL_19;
        }

        v77 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v77, v78, 2);
        v29 = 1;
        v52 = 1;
        v53 = 0;
        v54 = 2;
        goto LABEL_22;
      case 2:
        if (v9 != 2 || v7 != 2 || v8 != 0)
        {
          goto LABEL_19;
        }

        v65 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v65, v66, 2);
        v33 = 2;
        break;
      case 3:
        if (v9 != 2 || v7 != 3 || v8 != 0)
        {
          goto LABEL_19;
        }

        v69 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v69, v70, 2);
        v33 = 3;
        break;
      case 4:
        if (v9 != 2 || v7 != 4 || v8 != 0)
        {
          goto LABEL_19;
        }

        v57 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v57, v58, 2);
        v33 = 4;
        break;
      case 5:
        if (v9 != 2 || v7 != 5 || v8 != 0)
        {
          goto LABEL_19;
        }

        v81 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v81, v82, 2);
        v33 = 5;
        break;
      case 6:
        if (v9 != 2 || v7 != 6 || v8 != 0)
        {
          goto LABEL_19;
        }

        v85 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v85, v86, 2);
        v33 = 6;
        break;
      case 7:
        if (v9 != 2 || v7 != 7 || v8 != 0)
        {
          goto LABEL_19;
        }

        v73 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v73, v74, 2);
        v33 = 7;
        break;
      case 8:
        if (v9 != 2 || v7 != 8 || v8 != 0)
        {
          goto LABEL_19;
        }

        v89 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v89, v90, 2);
        v33 = 8;
        break;
      case 9:
        if (v9 != 2 || v7 != 9 || v8 != 0)
        {
          goto LABEL_19;
        }

        v61 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v61, v62, 2);
        v33 = 9;
        break;
      default:
        if (v9 != 2 || (v8 | v7) != 0)
        {
          goto LABEL_19;
        }

        v31 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v31, v32, 2);
        v33 = 0;
        break;
    }

    sub_1C8D7CAE8(v33, 0, 2);
    v29 = 1;
    return v29 & 1;
  }

  if (v9 != 1)
  {

    goto LABEL_19;
  }

  if (v5 != v7 || a1[1] != v8)
  {
    OUTLINED_FUNCTION_94();
    v11 = sub_1C9064C2C();
    v12 = OUTLINED_FUNCTION_249();
    sub_1C8D78DD0(v12, v13, 1, v14, v15);
    v16 = OUTLINED_FUNCTION_94();
    sub_1C8D78DD0(v16, v17, 1, v18, v19);
    v20 = OUTLINED_FUNCTION_94();
    sub_1C8D7CAE8(v20, v21, 1);
    v22 = OUTLINED_FUNCTION_249();
    sub_1C8D7CAE8(v22, v23, 1);
    return v11 & 1;
  }

  v29 = 1;
  v42 = OUTLINED_FUNCTION_94();
  sub_1C8D78DD0(v42, v43, 1, v44, v45);
  v46 = OUTLINED_FUNCTION_94();
  sub_1C8D78DD0(v46, v47, 1, v48, v49);
  v50 = OUTLINED_FUNCTION_94();
  sub_1C8D7CAE8(v50, v51, 1);
  v52 = OUTLINED_FUNCTION_94();
  v54 = 1;
LABEL_22:
  sub_1C8D7CAE8(v52, v53, v54);
  return v29 & 1;
}

uint64_t sub_1C8ECCDD8()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v1(v0);
  return sub_1C8D63FCC();
}

uint64_t sub_1C8ECCE38()
{
  v0 = OUTLINED_FUNCTION_258();
  v1(v0);
  return sub_1C8D7300C();
}

uint64_t ToolKitProtoIndexingPolicyResolution.resolvedChangeset.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  type metadata accessor for ToolKitProtoIndexingPolicyResolution(v0);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECCEF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  *a2 = *(v2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = *(v2 + 32);
  return a1();
}

uint64_t sub_1C8ECCF2C(uint64_t *a1, uint64_t (*a2)(void, void, void))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  result = a2(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  return result;
}

uint64_t ToolKitProtoIndexingEvent.indexingEventType.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  *a5 = v6;
  a5[1] = v7;
  return sub_1C8CE5404(v6, v7, a1, a2, a3, a4);
}

uint64_t ToolKitProtoIndexingEvent.indexingEventType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C8CE5490(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t ToolKitProtoIndexingEvent.init(requestID:)()
{
  OUTLINED_FUNCTION_31_17();
  OUTLINED_FUNCTION_50_13(v3);
  *(v2 + 32) = v4;
  *(v2 + 40) = xmmword_1C90747F0;
  type metadata accessor for ToolKitProtoIndexingEvent(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  *(v2 + 8) = v0;
  return result;
}

uint64_t static ToolKitProtoIndexingEventContents.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v10 = *a2;
  v9 = a2[1];
  v11 = *(a2 + 16);
  if ((v8 & 1) == 0)
  {
    if ((v11 & 1) == 0)
    {
      v45 = *a1;
      if (v7 != v10 || v6 != v9)
      {
        v13 = sub_1C9064C2C();
        v47 = OUTLINED_FUNCTION_100();
        v52 = OUTLINED_FUNCTION_16_24(v47, v48, 0, v49, v50, v51);
        v57 = OUTLINED_FUNCTION_16_24(v52, v53, 0, v54, v55, v56);
        OUTLINED_FUNCTION_265(v57, v58);
        v27 = OUTLINED_FUNCTION_100();
        goto LABEL_16;
      }

      v75 = OUTLINED_FUNCTION_16_24(v45, v6, 0, a4, a5, a6);
      v80 = OUTLINED_FUNCTION_16_24(v75, v76, 0, v77, v78, v79);
      OUTLINED_FUNCTION_265(v80, v81);
      OUTLINED_FUNCTION_265(v7, v6);
      return 1;
    }

LABEL_9:
    v29 = OUTLINED_FUNCTION_100();
    v34 = OUTLINED_FUNCTION_16_24(v29, v30, v11, v31, v32, v33);
    v39 = OUTLINED_FUNCTION_16_24(v34, v35, v8, v36, v37, v38);
    OUTLINED_FUNCTION_265(v39, v40);
    v41 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_265(v41, v42);
    return 0;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v7 == v10 && v6 == v9)
  {
    v43 = 1;
    v59 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_264(v59, v60, v61, v62, v63, v64);
    v65 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_264(v65, v66, v67, v68, v69, v70);
    v71 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_265(v71, v72);
    v73 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_265(v73, v74);
    return v43;
  }

  v13 = sub_1C9064C2C();
  v14 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_264(v14, v15, 1, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_264(v19, v20, v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_265(v25, v26);
  v27 = OUTLINED_FUNCTION_100();
LABEL_16:
  OUTLINED_FUNCTION_265(v27, v28);
  return v13 & 1;
}

uint64_t static ToolKitProtoIndexingEventType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C9064C2C();
}

uint64_t ToolKitProtoIndexingResponse.indexingResponseKind.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *a4 = v5;
  a4[1] = v6;
  return sub_1C8EC8E20(v5, v6, a1, a2, a3);
}

uint64_t ToolKitProtoIndexingResponse.indexingResponseKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C8D93ECC(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ToolKitProtoIndexingResponse.init(requestID:)()
{
  OUTLINED_FUNCTION_31_17();
  *(v2 + 16) = xmmword_1C907C320;
  type metadata accessor for ToolKitProtoIndexingResponse(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  *(v2 + 8) = v0;
  return result;
}

uint64_t static ToolKitProtoIndexingResponseKind.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  if (!v6)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    sub_1C8D93EDC(*a1, 0);
    v10 = v7;
    v11 = 0;
LABEL_15:
    sub_1C8D93EDC(v10, v11);
    return 1;
  }

  if (v6 != 1)
  {
    if (v8 < 2)
    {
      goto LABEL_8;
    }

    v26 = *a1;
    if (v5 != v7 || v6 != v8)
    {
      v28 = sub_1C9064C2C();
      v29 = OUTLINED_FUNCTION_181();
      sub_1C8D6E194(v29, v30, v31, v32, v33);
      v34 = OUTLINED_FUNCTION_145();
      sub_1C8D6E194(v34, v35, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_145();
      sub_1C8D93EDC(v39, v40);
      v41 = OUTLINED_FUNCTION_181();
      sub_1C8D93EDC(v41, v42);
      return v28 & 1;
    }

    sub_1C8D6E194(v26, v6, a3, a4, a5);
    v44 = OUTLINED_FUNCTION_145();
    sub_1C8D6E194(v44, v45, v46, v47, v48);
    v49 = OUTLINED_FUNCTION_145();
    sub_1C8D93EDC(v49, v50);
    v10 = OUTLINED_FUNCTION_145();
    goto LABEL_15;
  }

  if (v8 != 1)
  {
LABEL_8:
    v12 = OUTLINED_FUNCTION_181();
    sub_1C8D6E194(v12, v13, v14, v15, v16);
    v17 = OUTLINED_FUNCTION_145();
    sub_1C8D6E194(v17, v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_145();
    sub_1C8D93EDC(v22, v23);
    v24 = OUTLINED_FUNCTION_181();
    sub_1C8D93EDC(v24, v25);
    return 0;
  }

  v9 = 1;
  sub_1C8D93EDC(*a1, 1uLL);
  sub_1C8D93EDC(v7, 1uLL);
  return v9;
}

uint64_t ToolKitProtoWALOperationEnd.totalFrames.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitProtoWALOperationEnd.checkpointedFrames.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitProtoWALOperationEnd.error.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ToolKitProtoVacuumOperationEnd.error.setter()
{
  OUTLINED_FUNCTION_127_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static ToolKitProtoIndexingLogEntryKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v85 = a1;
  v86 = a2;
  v2 = type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
  v3 = OUTLINED_FUNCTION_9(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_0();
  v80 = v4;
  v5 = OUTLINED_FUNCTION_111();
  v75[4] = type metadata accessor for ToolKitProtoVacuumOperationStart(v5);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  v81 = v7;
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for ToolKitProtoWALOperationEnd(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v78 = v11;
  v12 = OUTLINED_FUNCTION_111();
  v75[3] = type metadata accessor for ToolKitProtoWALOperationStart(v12);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_0();
  v79 = v14;
  v15 = OUTLINED_FUNCTION_111();
  v16 = type metadata accessor for ToolKitProtoIndexingResponse(v15);
  v17 = OUTLINED_FUNCTION_9(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_0();
  v77 = v18;
  v19 = OUTLINED_FUNCTION_111();
  v20 = type metadata accessor for ToolKitProtoIndexingEvent(v19);
  v21 = OUTLINED_FUNCTION_9(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_0();
  v75[6] = v22;
  v23 = OUTLINED_FUNCTION_111();
  v24 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(v23);
  v25 = OUTLINED_FUNCTION_9(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_0();
  v75[5] = v26;
  v27 = OUTLINED_FUNCTION_111();
  v75[1] = type metadata accessor for ToolKitProtoIndexingRequest(v27);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_0();
  v76 = v29;
  v30 = OUTLINED_FUNCTION_111();
  v31 = type metadata accessor for ToolKitProtoIndexingReason(v30);
  v32 = OUTLINED_FUNCTION_9(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_0();
  v75[2] = v33;
  v34 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoIndexingLogEntryKind(v34);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v35);
  v82 = v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v84 = v75 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v75 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v83 = v75 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v75 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v75 - v48;
  MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  v53 = (v75 - v52);
  MEMORY[0x1EEE9AC00](v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191D8, &qword_1C909DFF8);
  v56 = OUTLINED_FUNCTION_9(v55);
  MEMORY[0x1EEE9AC00](v56);
  v58 = v75 - v57;
  sub_1C8ECC8A8();
  sub_1C8ECC8A8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 1)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v65 = v76;
      sub_1C8ECC4DC();
      v66 = *v53 == *v65 && v53[1] == v65[1];
      if (v66 || (sub_1C9064C2C() & 1) != 0)
      {
        sub_1C8CEB10C(v53[2], v65[2]);
        if (v67)
        {
          sub_1C90637EC();
          sub_1C8D99190();
          if (sub_1C9063EAC())
          {
            OUTLINED_FUNCTION_24_23();
            sub_1C8ECC488();
            goto LABEL_35;
          }
        }
      }

      OUTLINED_FUNCTION_24_23();
      sub_1C8ECC488();
      goto LABEL_48;
    case 2u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 2)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      sub_1C8ECC4DC();
      OUTLINED_FUNCTION_145();
      static ToolKitProtoIndexingPolicyResolution.== infix(_:_:)();
      v59 = v60;
      sub_1C8ECC488();
      OUTLINED_FUNCTION_94();
      goto LABEL_45;
    case 3u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 3)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      sub_1C8ECC4DC();
      v59 = static ToolKitProtoIndexingEvent.== infix(_:_:)(v49);
      sub_1C8ECC488();
      goto LABEL_45;
    case 4u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 4)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      sub_1C8ECC4DC();
      v59 = static ToolKitProtoIndexingResponse.== infix(_:_:)(v46);
      sub_1C8ECC488();
      goto LABEL_45;
    case 5u:
      OUTLINED_FUNCTION_0_65();
      v68 = v83;
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 5)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v69 = v79;
      sub_1C8ECC4DC();
      v70 = *v68 == *v69 && v68[1] == v69[1];
      if (v70 || (sub_1C9064C2C() & 1) != 0)
      {
        sub_1C90637EC();
        v71 = sub_1C8D99190();
        if (OUTLINED_FUNCTION_57_10(v71))
        {
          goto LABEL_34;
        }
      }

      goto LABEL_47;
    case 6u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 6)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      sub_1C8ECC4DC();
      v59 = static ToolKitProtoWALOperationEnd.== infix(_:_:)(v41);
      sub_1C8ECC488();
      goto LABEL_45;
    case 7u:
      OUTLINED_FUNCTION_0_65();
      v61 = v84;
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 7)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v62 = v81;
      sub_1C8ECC4DC();
      v63 = *v61 == *v62 && v61[1] == v62[1];
      if (v63 || (sub_1C9064C2C() & 1) != 0)
      {
        sub_1C90637EC();
        v64 = sub_1C8D99190();
        if (OUTLINED_FUNCTION_57_10(v64))
        {
LABEL_34:
          sub_1C8ECC488();
LABEL_35:
          sub_1C8ECC488();
          OUTLINED_FUNCTION_8_33();
          v59 = 1;
          return v59 & 1;
        }
      }

LABEL_47:
      sub_1C8ECC488();
LABEL_48:
      sub_1C8ECC488();
      OUTLINED_FUNCTION_8_33();
      goto LABEL_41;
    case 8u:
      OUTLINED_FUNCTION_0_65();
      v72 = v82;
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 8)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      sub_1C8ECC4DC();
      v59 = static ToolKitProtoVacuumOperationEnd.== infix(_:_:)(v72);
      goto LABEL_44;
    default:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14())
      {
LABEL_40:
        sub_1C8ECC488();
        sub_1C8D16D78(v58, &qword_1EC3191D8, &qword_1C909DFF8);
LABEL_41:
        v59 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_32_16();
        sub_1C8ECC4DC();
        static ToolKitProtoIndexingReason.== infix(_:_:)();
        v59 = v73;
LABEL_44:
        sub_1C8ECC488();
LABEL_45:
        sub_1C8ECC488();
        OUTLINED_FUNCTION_8_33();
      }

      return v59 & 1;
  }
}

void sub_1C8ECE114(uint64_t a1)
{
  sub_1C8ECE320(319, &qword_1EDA60588, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State);
  if (v1 <= 0x3F)
  {
    sub_1C8ECE48C(319, &qword_1EDA64080, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C90637EC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8ECE280(uint64_t a1)
{
  sub_1C8ECE320(319, &qword_1EDA60590, type metadata accessor for ToolKitProtoLinkSnapshot.State);
  if (v1 <= 0x3F)
  {
    sub_1C90637EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8ECE320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C9063E5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C8ECE3AC()
{
  result = sub_1C90637EC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_62();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_44_6();
  }

  return result;
}

void sub_1C8ECE48C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C8ECE560(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoLinkSnapshot(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8ECE5FC(uint64_t a1)
{
  sub_1C8ECF5B4(319, &qword_1EDA6E550, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8ECE48C(319, &qword_1EDA60550, type metadata accessor for ToolKitProtoChangeset.Provenance, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C90637EC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8ECE714(uint64_t a1)
{
  v1 = type metadata accessor for ToolKitProtoChangeset.Partial(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1C8ECE7BC()
{
  OUTLINED_FUNCTION_40_17();
  sub_1C8ECF5B4(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1C8ECE48C(319, &qword_1EDA65EE0, type metadata accessor for ToolKitProtoChangeset, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      sub_1C90637EC();
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_62();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_44_6();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7ToolKit0aB16ProtoTriggerKindO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t __swift_get_extra_inhabitant_index_89Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_21_0(*(v1 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 24);
  }

  else
  {
    sub_1C90637EC();
    v6 = *(v2 + 28);
  }

  v7 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_90Tm()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
    OUTLINED_FUNCTION_179();
    if (*(v5 + 84) == v4)
    {
      v6 = *(v3 + 24);
    }

    else
    {
      sub_1C90637EC();
      v6 = *(v3 + 28);
    }

    v7 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1C8ECEAF4(uint64_t a1)
{
  sub_1C8ECF5B4(319, qword_1EDA611D0, &type metadata for ToolKitProtoIndexingEventContents, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C8ECF5B4(319, qword_1EDA616C8, &type metadata for ToolKitProtoIndexingEventType, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C90637EC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8ECEC64()
{
  OUTLINED_FUNCTION_40_17();
  sub_1C8ECF5B4(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1C90637EC();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_62();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_44_6();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7ToolKit0aB25ProtoIndexingResponseKindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8ECED08(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C8ECED5C(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C8ECEE18(uint64_t a1)
{
  sub_1C8ECF5B4(319, &qword_1EDA66730, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C8ECF5B4(319, &unk_1EDA60448, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C8ECF5B4(319, &qword_1EDA6E558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C90637EC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_159Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_137_0();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

uint64_t sub_1C8ECEFD8()
{
  result = sub_1C90637EC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_62();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_44_6();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_10Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_11Tm()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v2 = OUTLINED_FUNCTION_37_1(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t __swift_get_extra_inhabitant_index_46Tm()
{
  OUTLINED_FUNCTION_116_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_179();
  if (*(v6 + 84) == v0)
  {
    v7 = v5;
    v8 = v2;
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_137_0();
    v8 = v2 + v9;
  }

  return __swift_getEnumTagSinglePayload(v8, v0, v7);
}

uint64_t __swift_store_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_179();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_138_1();
    v12 = a1 + v13;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C8ECF308()
{
  OUTLINED_FUNCTION_40_17();
  result = v0(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C90637EC();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_62();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_44_6();
    }
  }

  return result;
}

uint64_t sub_1C8ECF388(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoIndexingReason(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoIndexingRequest(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoIndexingPolicyResolution(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoIndexingEvent(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoIndexingResponse(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoWALOperationStart(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoWALOperationEnd(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoVacuumOperationStart(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ToolKitProtoVacuumOperationEnd(319);
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_28Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*v0);
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_137_0();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_29Tm()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1C8ECF5B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_57_10(uint64_t a1)
{

  return sub_1C9063EAC();
}

uint64_t sub_1C8ECF6C0(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v4 = *(v1 + 16);
  v7 = *(v1 + 24);
  type metadata accessor for ToolDatabase.Accessor();
  swift_allocObject();
  v5 = sub_1C903A588(v4, &v7);

  a1(&v8, v5);

  if (!v2)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1C8ECF770(void (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v6 = *(v1 + 24);
  type metadata accessor for ToolDatabase.Accessor();
  swift_allocObject();
  v4 = sub_1C903A588(v3, &v6);

  a1(v4);
}

uint64_t sub_1C8ECF818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v6;
  v5[5] = a3;
  v5[6] = a4;
  return sub_1C8E78DFC(sub_1C8ED3A64, v5);
}

void sub_1C8ECF8B0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void (*a5)(id *__return_ptr, uint64_t), void *a6)
{
  v7 = v6;
  v37 = a6;
  v38 = a5;
  v12 = sub_1C90626DC();
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  type metadata accessor for ToolDatabase.Savepoint();
  v40 = type metadata accessor for ToolDatabase.Transaction();
  v41 = &protocol witness table for ToolDatabase.Transaction;
  v39[0] = a4;
  v18 = *(a1 + 16);
  HIBYTE(v43[0]) = a4[25];

  v19 = v18;
  v20 = v7;
  v22 = sub_1C8E79A60(a2, a3, v39, v19, v43 + 7, v21);
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (!v20)
  {
    v23 = v36;
    v38(v39, v22);
    ToolDatabase.Savepoint.commit()();
    v25 = v24;
    if (v24)
    {
      v39[0] = v24;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
      if (swift_dynamicCast())
      {

        (*(v23 + 32))(v14, v17, v12);
        sub_1C8D11CA4(1, v27, v28, v29, v30, v31, v32, v33, v36, v37, v38, v39[0], v39[1], v39[2], v40, v41, v42, v43[0], v43[1], v43[2]);
        sub_1C8ED3B50(&qword_1EC312ED8, MEMORY[0x1E699FE10], MEMORY[0x1E699FE18]);
        swift_allocError();
        (*(v23 + 16))(v35, v14, v12);
        swift_willThrow();

        (*(v23 + 8))(v14, v12);
      }

      else
      {

        ToolDatabase.Savepoint.rollBack()();
        if (v34)
        {
        }

        else
        {
          swift_willThrow();
        }
      }
    }

    else
    {
    }
  }
}

void sub_1C8ECFBE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, void (*a5)(id *__return_ptr, uint64_t)@<X4>, uint64_t a6@<X5>, id *a7@<X8>)
{
  v8 = v7;
  v41 = a6;
  v42 = a5;
  v40 = a7;
  v13 = sub_1C90626DC();
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  type metadata accessor for ToolDatabase.Savepoint();
  v44 = type metadata accessor for ToolDatabase.Transaction();
  v45 = &protocol witness table for ToolDatabase.Transaction;
  v43[0] = a4;
  v19 = *(a1 + 16);
  HIBYTE(v47) = a4[25];

  v20 = v19;
  v21 = v8;
  v23 = sub_1C8E79A60(a2, a3, v43, v20, &v47 + 7, v22);
  __swift_destroy_boxed_opaque_existential_1(v43);
  if (!v21)
  {
    v24 = v39;
    v25 = v40;
    v42(v43, v23);
    ToolDatabase.Savepoint.commit()();
    v27 = v26;
    if (v26)
    {

      v43[0] = v26;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
      if (swift_dynamicCast())
      {

        v24[4](v15, v18, v13);
        sub_1C8D11CA4(1, v29, v30, v31, v32, v33, v34, v35, v38, v39, v40, v41, v42, v43[0], v43[1], v43[2], v44, v45, v46, v47);
        sub_1C8ED3B50(&qword_1EC312ED8, MEMORY[0x1E699FE10], MEMORY[0x1E699FE18]);
        swift_allocError();
        v24[2](v37, v15, v13);
        swift_willThrow();

        (v24[1])(v15, v13);
      }

      else
      {

        ToolDatabase.Savepoint.rollBack()();
        if (v36)
        {
        }

        else
        {
          swift_willThrow();
        }
      }
    }

    else
    {

      *v25 = v43[0];
    }
  }
}

void ToolDatabase.Accessor.insert(tool:locale:source:localizationUsage:)(void *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *a4;
  v10 = MEMORY[0x1CCA82A80]();
  sub_1C8ED00B8(v4, a2, v9, a1, v7, v8, &v11, &v12);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_1C8ED00B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, Swift::Int64 a6@<X5>, void *a7@<X6>, Swift::Int64 *a8@<X8>)
{
  v180 = a7;
  v165 = a5;
  v166 = a6;
  v168 = a4;
  v164 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v144 - v13);
  v15 = sub_1C90620BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v175) = 0;
  sub_1C8EDAD68(a2, &v175, v18);
  LOBYTE(v175) = a3 & 1;
  v19 = sub_1C8EDB288(v18, &v175);
  sub_1C8ED101C();
  if (v8)
  {
    (*(v16 + 8))(v18, v15);

    *v180 = v8;
  }

  else
  {
    v161 = v14;
    v162 = v15;
    v163 = v16;
    v21 = v168;
    memcpy(__dst, v168 + 24, 0x61uLL);
    memcpy(v178, v168 + 24, 0x61uLL);
    sub_1C8CC1340(__dst, &v175);
    ToolDatabase.Accessor.insert(container:locale:)(v178, v18);
    v158 = v22;
    v160 = v18;
    memcpy(v177, v178, 0x61uLL);
    sub_1C8CC15FC(v177);
    v23 = v21[38];
    if (v23)
    {
      *&v175 = v21[37];
      *(&v175 + 1) = v23;
      memcpy(v176, v21 + 39, 0x51uLL);
      ToolDatabase.Accessor.insert(container:locale:)(&v175, v160);
      v157 = v24;
      v167 = a1;
    }

    else
    {
      v167 = a1;
      v157 = 0;
    }

    v25 = *v21;
    v155 = v21[1];
    v156 = v25;
    LOBYTE(v171[0]) = *(v21 + 32);
    *&v174[0] = v21[7];
    v26 = type metadata accessor for ToolDefinition(0);
    sub_1C8DFBCF4(v21 + v26[16], v161, &qword_1EC3144B8, &qword_1C90839E0);
    v27 = (v21 + v26[19]);
    v28 = v27[1];
    v159 = v19;
    v153 = v27;
    if (v28)
    {
      v29 = v27[3];
      v154 = v27[2];
    }

    else
    {
      v154 = 0;
      v29 = 0;
    }

    v30 = v166;
    LODWORD(v166) = v23 == 0;
    v31 = v26[20];
    v173[0] = *(v21 + v26[21]);
    v32 = *(v21 + v31);
    v170[0] = *(v21 + v26[22]);
    *&v175 = v165;
    *(&v175 + 1) = v30;

    ActionProvider.rawValue.getter();
    v172[0] = *(v21 + v26[25]);
    deprecationMessage = v32;
    v33 = v161;
    v34 = v167;
    ToolDatabase.Accessor.addTool(localId:toolType:sourceContainerId:attributionContainerId:outputTypeInstance:customIcon:deprecationReplacementId:flags:requirements:authenticationPolicy:sourceActionProvider:visibilityFlags:)(v156, v155, v171, v158, v157, v166, v174, v161, v154, v29, v173, deprecationMessage, v170, v35, v36, v172, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155);
    v166 = v37;
    v167 = v34;

    sub_1C8D16D78(v33, &qword_1EC3144B8, &qword_1C90839E0);

    v38 = 0;
    v161 = v26;
    v39 = *(v21 + v26[26]);
    v40 = *(v39 + 16);
    v41 = (v39 + 40);
    while (v40 != v38)
    {
      if (v38 >= *(v39 + 16))
      {
        __break(1u);
LABEL_81:
        v135 = v164;
        result = (*(v163 + 8))(v40, v162);
        *v135 = v166;
        return result;
      }

      v42 = *(v41 - 1);
      v43 = *v41;

      v44._countAndFlagsBits = v42;
      v44._object = v43;
      ToolDatabase.Accessor.addLinkActionIdentifier(toolId:identifier:)(v166, v44);
      v46 = v45;
      if (v45)
      {
LABEL_18:
        (*(v163 + 8))(v160, v162);

LABEL_19:

LABEL_20:
        *v180 = v46;
        return result;
      }

      ++v38;
      v41 += 2;
    }

    v47 = 0;
    v48 = *(v168 + v161[23]);
    v165 = *(v48 + 16);
    v49 = (v48 + 32);
    v50 = v166;
    while (v165 != v47)
    {
      if (v47 >= *(v48 + 16))
      {
        __break(1u);
        goto LABEL_83;
      }

      v51 = *v49;
      v52 = v49[1];
      v53 = v49[2];
      *&v176[25] = *(v49 + 41);
      *v176 = v52;
      *&v176[16] = v53;
      v175 = v51;
      v174[0] = *v49;
      v174[1] = v49[1];
      v174[2] = v49[2];
      *(&v174[2] + 9) = *(v49 + 41);
      sub_1C8D0717C(&v175, v173);
      ToolDatabase.Accessor.addSystemToolProtocol(toolId:systemToolProtocol:)(v50, v174, v54, v55, v56);
      ++v47;
      sub_1C8D071D8(&v175);
      v49 += 4;
    }

    *&v175 = v168[7];
    TypeInstance.typeIdentifiers.getter();
    v58 = v57;
    v59 = v57 + 56;
    v60 = 1 << *(v57 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v57 + 56);
    v63 = (v60 + 63) >> 6;

    for (i = 0; v62; i = v65)
    {
      v65 = i;
LABEL_28:
      *&v174[0] = *(*(v58 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v62)))));

      ToolDatabase.Accessor.addToolOutputType(toolId:typeIdentifier:)(v166, v174);
      v62 &= v62 - 1;
    }

    while (1)
    {
      v65 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v65 >= v63)
      {

        v66 = *(v159 + 16);
        if (!v66)
        {
LABEL_41:
          *&v175 = v168[5];

          sub_1C8D37D04(v87);
          v155 = (v175 + 32);
          v156 = v175;

          v88 = 0;
          while (1)
          {
            v89 = v156[2];
            if (v88 == v89)
            {
              break;
            }

            if (v88 >= v89)
            {
              goto LABEL_85;
            }

            memcpy(v174, &v155[17 * v88], 0x88uLL);
            memmove(&v175, &v155[17 * v88], 0x88uLL);
            v90 = *&v176[40];
            v173[17] = *&v176[40];
            sub_1C8D07294(v174, v173);
            TypeInstance.typeIdentifiers.getter();
            v92 = 0;
            v93 = 1 << *(v91 + 32);
            v94 = (v93 + 63) >> 6;
            v95 = 56;
            if (!v94)
            {
              goto LABEL_90;
            }

            while (1)
            {
              v96 = *(v91 + v95);
              if (v96)
              {
                break;
              }

              v95 += 8;
              v92 -= 64;
              if (!--v94)
              {
                goto LABEL_90;
              }
            }

            v97 = __clz(__rbit64(v96));
            if (v97 - v93 == v92)
            {
              goto LABEL_90;
            }

            if (-v92 < 0)
            {
              goto LABEL_86;
            }

            v98 = v97 - v92;
            if (v98 >= v93)
            {
              goto LABEL_86;
            }

            if (((*(v91 + v95) >> v97) & 1) == 0)
            {
              goto LABEL_87;
            }

            v158 = *(*(v91 + 48) + 8 * v98);

            v99 = v175;
            v171[13] = v90;
            memcpy(v172, v168 + 24, 0x61uLL);
            memcpy(v171, v168 + 24, 0x61uLL);
            memset(v170, 0, 97);

            sub_1C8CC1340(v172, v169);
            TypeInstance.asSourced(from:attribution:)(v171, v169);
            memcpy(v173, v171, 0x61uLL);
            sub_1C8CC15FC(v173);

            v171[0] = *&v176[32];
            ToolDatabase.Accessor.addParameter(toolId:key:typeInstance:sortOrder:relationships:flags:)(v166, v99._countAndFlagsBits, v99._object, v169, v88, *&v176[48]);
            v157 = v88 + 1;

            v100 = sub_1C906206C();
            v102 = v101;
            v103 = *&v176[64];
            if (*&v176[64])
            {
              v104 = *&v176[80];
              v105 = *&v176[72];
              v165 = *&v176[56];
            }

            else
            {
              v165 = 0;
              v105 = 0;
              v104 = 0;
            }

            deprecationMessageb.value.falseString._countAndFlagsBits = v105;
            deprecationMessageb.value.falseString._object = v104;
            deprecationMessageb.value.trueString._object = v103;
            deprecationMessageb.value.trueString._countAndFlagsBits = v165;
            v106._countAndFlagsBits = v100;
            v106._object = v102;
            ToolDatabase.Accessor.addParameterLocalization(toolId:key:locale:name:description:BOOLeanLocalization:)(v166, v99, v106, *v176, *&v176[16], deprecationMessageb);
            v46 = v107;
            if (v107)
            {

              sub_1C8D16E14(v165, v103);

LABEL_69:
              sub_1C8D072F0(&v175);
              swift_bridgeObjectRelease_n();
              result = (*(v163 + 8))(v160, v162);
              goto LABEL_20;
            }

            sub_1C8D16E14(v165, v103);
            v108._rawValue = *(v168 + v161[27]);
            if (v108._rawValue)
            {

              ToolDatabase.Accessor.addSampleInvocations(toolId:parameterKey:sampleInvocations:)(v166, v99, v108);
              v46 = v109;
              v110 = v157;
              if (v109)
              {

                goto LABEL_69;
              }

              sub_1C8D072F0(&v175);
              v88 = v110;
            }

            else
            {

              sub_1C8D072F0(&v175);
              v88 = v157;
            }
          }

          swift_bridgeObjectRelease_n();
          v111 = 0;
          v112 = *(v168 + v161[17]);
          v165 = *(v112 + 16);
          v113 = (v112 + 40);
          while (v165 != v111)
          {
            if (v111 >= *(v112 + 16))
            {
              goto LABEL_88;
            }

            v115 = *(v113 - 1);
            v114 = *v113;
            v116 = sub_1C906206C();
            v118 = v117;

            v119._countAndFlagsBits = v116;
            v119._object = v118;
            v120._countAndFlagsBits = v115;
            v120._object = v114;
            ToolDatabase.Accessor.addCategory(toolId:locale:category:)(v166, v119, v120);
            v46 = v121;
            if (v121)
            {
              goto LABEL_18;
            }

            ++v111;
            v113 += 2;
          }

          v122 = 0;
          v123 = *(v168 + v161[18]);
          v165 = *(v123 + 16);
          for (j = (v123 + 40); ; j += 2)
          {
            v40 = v160;
            if (v165 == v122)
            {
              break;
            }

            if (v122 >= *(v123 + 16))
            {
              goto LABEL_89;
            }

            v126 = *(j - 1);
            v125 = *j;
            v127 = sub_1C906206C();
            v129 = v128;

            v130._countAndFlagsBits = v127;
            v130._object = v129;
            v131._countAndFlagsBits = v126;
            v131._object = v125;
            ToolDatabase.Accessor.addSearchKeyword(toolId:locale:keyword:order:)(v166, v130, v131, v122);
            v46 = v132;
            if (v132)
            {
              (*(v163 + 8))(v160, v162);
              goto LABEL_61;
            }

            ++v122;
          }

          v133._rawValue = *(v168 + v161[27]);
          if (v133._rawValue)
          {
            ToolDatabase.Accessor.addSampleInvocations(toolId:parameterKey:sampleInvocations:)(v166, 0, v133);
            v46 = v134;
            if (v134)
            {
              result = (*(v163 + 8))(v40, v162);
              goto LABEL_20;
            }
          }

          goto LABEL_81;
        }

        v67 = 0;
        v68 = v168[3];
        v165 = v168[2];
        v69 = v168[9];
        v157 = v168[8];
        v158 = v68;
        v156 = v69;
        v70 = v168[51];
        v154 = v168[52];
        v155 = v70;
        v71 = v168[53];
        v151 = v168[54];
        v152 = v71;
        v72 = v168[55];
        v149 = v168[56];
        v150 = v72;
        v73 = v168[57];
        v147 = v168[58];
        v148 = v73;
        v74 = v168[59];
        v145 = v168[60];
        v146 = v74;
        v75 = v153[1];
        v144 = *v153;
        while (v67 < *(v159 + 16))
        {
          v76 = *(v159 + v67 + 32);
          v77 = sub_1C906206C();
          v79 = v78;
          if (v75)
          {

            v80 = v144;
          }

          else
          {
            v80 = 0;
          }

          v81 = 0x79616C70736964;
          if (v76)
          {
            v81 = 0x65676175676E616CLL;
            v82 = 0xED00006C65646F4DLL;
          }

          else
          {
            v82 = 0xE700000000000000;
          }

          deprecationMessagea.value._countAndFlagsBits = v80;
          descriptionRequires.value._object = v145;
          descriptionRequires.value._countAndFlagsBits = v146;
          descriptionNote.value._object = v147;
          descriptionNote.value._countAndFlagsBits = v148;
          descriptionResult.value._object = v149;
          descriptionResult.value._countAndFlagsBits = v150;
          descriptionAttribution.value._object = v151;
          descriptionAttribution.value._countAndFlagsBits = v152;
          v181.value._object = v154;
          localizationUsage._countAndFlagsBits = v81;
          localizationUsage._object = v82;
          deprecationMessagea.value._object = v75;
          v83._countAndFlagsBits = v165;
          v84._countAndFlagsBits = v77;
          v84._object = v79;
          v85.value._countAndFlagsBits = v157;
          v83._object = v158;
          v181.value._countAndFlagsBits = v155;
          v85.value._object = v156;
          ToolDatabase.Accessor.addToolLocalization(toolId:locale:name:outputResultName:descriptionSummary:descriptionAttribution:descriptionResult:descriptionNote:descriptionRequires:deprecationMessage:localizationUsage:)(v166, v84, v83, v85, v181, descriptionAttribution, descriptionResult, descriptionNote, descriptionRequires, deprecationMessagea, localizationUsage);
          v46 = v86;
          if (v86)
          {
            (*(v163 + 8))(v160, v162);

LABEL_61:

            goto LABEL_19;
          }

          ++v67;

          if (v66 == v67)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_84;
      }

      v62 = *(v59 + 8 * v65);
      ++i;
      if (v62)
      {
        goto LABEL_28;
      }
    }

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
LABEL_90:

    result = sub_1C906491C();
    __break(1u);
  }

  return result;
}

void sub_1C8ED101C()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    v2 = sub_1C8ED29C0(0xD00000000000001ALL, 0x80000001C90CC910);
    if (!v1 && (v2 & 1) == 0)
    {
      v3 = sub_1C8ED29C0(0xD000000000000025, 0x80000001C90CC930);
      if ((v3 & 1) == 0)
      {
        sub_1C8D5D868(v3, v4, v5);
        swift_allocError();
        *v6 = 0;
        *(v6 + 56) = 0;
        *(v6 + 96) = 0;
        swift_willThrow();
      }
    }
  }
}

void ToolDatabase.Accessor.insert(container:locale:)(void *__src, uint64_t a2)
{
  v3 = memcpy(__dst, __src, 0x61uLL);
  v4 = MEMORY[0x1CCA82A80](v3);
  sub_1C8ED116C(a2, __dst, &v5, &v6);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1C8ED116C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v52 = a4;
  v8 = sub_1C90620BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[0] = 0;
  sub_1C8EDAD68(a1, v53, v11);
  sub_1C8ED101C();
  v12 = v4;
  if (!v4)
  {
    v48 = v9;
    v49 = v8;
    v46 = a3;
    v56 = *(a2 + 56);
    v54 = *(a2 + 80);
    v14 = *(&v54 + 1);
    if (*(&v54 + 1))
    {
      v15 = v54;
    }

    else
    {
      v15 = 0;
    }

    if (!*(&v54 + 1))
    {
      v14 = 0xE000000000000000;
    }

    v50 = v14;
    v51 = v15;
    v16 = *(a2 + 24);
    v17 = *(a2 + 32);
    v19 = *(a2 + 40);
    v18 = *(a2 + 48);
    v20 = *(a2 + 72);
    v47 = *(a2 + 64);
    v55 = *(a2 + 96);
    sub_1C8ED3B98(&v54, v53);
    v57.value._object = v20;
    v21._countAndFlagsBits = v16;
    v21._object = v17;
    v22.value._countAndFlagsBits = v19;
    v22.value._object = v18;
    v23.value._countAndFlagsBits = v51;
    v23.value._object = v50;
    v57.value._countAndFlagsBits = v47;
    v24 = ToolDatabase.Accessor.addContainerMetadata(containerId:bundleVersion:containerType:deviceId:teamId:origin:)(v21, v22, &v56, v23, v57, &v55);
    v12 = v25;
    if (v25)
    {
      v27 = v48;
      v26 = v49;
    }

    else
    {
      v28 = v24;

      v29 = sub_1C906206C();
      v31 = v30;
      v32._countAndFlagsBits = v29;
      v32._object = v31;
      ToolDatabase.Accessor.addContainerMetadataLocalization(containerId:locale:name:)(v28, v32, *a2);
      v12 = v33;
      v27 = v48;
      v26 = v49;
      if (!v33)
      {
        v51 = v28;

        v34 = 0;
        v35 = *(a2 + 16);
        v50 = *(v35 + 16);
        for (i = (v35 + 40); ; i += 2)
        {
          if (v50 == v34)
          {
            result = (*(v48 + 8))(v11, v49);
            *v52 = v51;
            return result;
          }

          v37 = *(i - 1);
          v38 = *i;
          v39 = sub_1C906206C();
          v41 = v40;

          v42._countAndFlagsBits = v39;
          v42._object = v41;
          v43._countAndFlagsBits = v37;
          v43._object = v38;
          ToolDatabase.Accessor.addContainerMetadataSynonym(containerId:locale:synonym:order:)(v51, v42, v43, v34);
          v12 = v44;
          if (v44)
          {
            break;
          }

          ++v34;
        }

        (*(v48 + 8))(v11, v49);

        goto LABEL_12;
      }
    }

    (*(v27 + 8))(v11, v26);
LABEL_12:

    a3 = v46;
    goto LABEL_13;
  }

  result = (*(v9 + 8))(v11, v8);
LABEL_13:
  *a3 = v12;
  return result;
}

void ToolDatabase.Accessor.insert(type:sourceContainer:locale:localizationUsage:)(void *__src@<X0>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t x8_0@<X8>)
{
  memcpy(__dst, __src, 0x61uLL);
  v9 = OUTLINED_FUNCTION_8_34(v12);
  v10 = *a4;
  v11 = MEMORY[0x1CCA82A80](v9);
  sub_1C8ED151C(v5, a3, v10, v12, __dst, &v14, x8_0);
  objc_autoreleasePoolPop(v11);
}

void sub_1C8ED151C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v210 = a6;
  v206 = a5;
  LODWORD(v209) = a3;
  v189 = a7;
  v11 = *a4;
  v204 = *(a4 + 1);
  v205 = v11;
  v12 = *(a4 + 4);
  v200 = *(a4 + 5);
  v201 = v12;
  v13 = *(a4 + 6);
  v198 = *(a4 + 7);
  v199 = v13;
  v14 = *(a4 + 4);
  v202 = *(a4 + 5);
  v203 = v14;
  LODWORD(v197) = a4[96];
  v15 = sub_1C9063C4C();
  v16 = *(v15 - 8);
  v187 = v15;
  v188 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v207 = &v166 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v196 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v195 = &v166 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v194 = &v166 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v193 = &v166 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v192 = &v166 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v191 = (&v166 - v31);
  v190 = type metadata accessor for EnumerationCaseDefinition(0);
  v185 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v208 = (&v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_1C90620BC();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v166 - v38;
  LOBYTE(v217[0]) = 0;
  sub_1C8EDAD68(a2, v217, &v166 - v38);
  LOBYTE(v217[0]) = v209 & 1;
  v40 = sub_1C8EDB288(v39, v217);
  sub_1C8ED101C();
  if (v7)
  {
    (*(v34 + 8))(v39, v33);

    *v210 = v7;
  }

  else
  {
    v181 = v36;
    v182 = v34;
    v209 = v39;
    v183 = v40;
    v184 = v33;
    memcpy(v217, a4, 0x61uLL);
    ToolDatabase.Accessor.fetchContainerRecordId(_:)();
    v41 = v184;
    if (v42)
    {

      v44 = v198 & 7;
      v45 = v197 & 3 | 0x80;
      sub_1C8D5D868(v43, v46, v47);
      v48 = swift_allocError();
      v49 = v204;
      *v50 = v205;
      *(v50 + 16) = v49;
      v51 = v200;
      *(v50 + 32) = v201;
      *(v50 + 40) = v51;
      *(v50 + 48) = v199;
      *(v50 + 56) = v44;
      v52 = v202;
      *(v50 + 64) = v203;
      *(v50 + 80) = v52;
      *(v50 + 96) = v45;
      swift_willThrow();
      sub_1C8CC1340(a4, v217);
      (*(v182 + 8))(v209, v41);
      *v210 = v48;
    }

    else
    {
      v53 = a1;
      v54 = v206;
      memcpy(v217, v206, 0x61uLL);
      ToolDatabase.Accessor.addType(_:sourceContainerId:)();
      v57 = v54[96];
      v58 = v54;
      if (v57 == 3)
      {
        v59 = *(v54 + 24);
        v218[0] = *(v54 + 8);
        v218[1] = v59;
        v218[2] = *(v54 + 40);
        v219 = *(v54 + 7);
        v60 = *(v54 + 24);
        v214 = *(v54 + 8);
        v215 = v60;
        v216[0] = *(v54 + 40);
        *&v216[1] = *(v54 + 7);
        sub_1C8D90D54(v54, v217);
        sub_1C8D3A7FC(v218, v217);
        ToolDatabase.Accessor.addPredicateTemplates(_:typeId:)();
        v61 = v189;
        sub_1C8D90DB0(v58);
        v217[0] = v214;
        v217[1] = v215;
        v217[2] = v216[0];
        *&v217[3] = *&v216[1];
        sub_1C8D3ABC4(v217);

LABEL_11:
        (*(v182 + 8))(v209, v41);
        memcpy(v217, v58, 0x61uLL);
        v67 = v61;
LABEL_12:
        TypeDefinition.typeIdentifier.getter(v67);
      }

      else
      {
        v63 = *(v54 + 3);
        v62 = *(v54 + 4);
        v64 = (v54 + 24);
        v65 = *(v54 + 6);
        v173 = *(v54 + 5);
        v171 = v63;
        v172._rawValue = v65;
        v170 = *(v54 + 7);
        v61 = v189;
        *&v204 = v56;
        v66 = v208;
        switch(v57)
        {
          case 1:
            *&v203 = v55;
            v68 = v170;
            v167 = v64;
            v168 = v171;
            v171 = v62;
            rawValue = v172._rawValue;
            v170 = v173;
            v172._rawValue = v68;
            v173 = rawValue;
            goto LABEL_16;
          case 2:
            *&v203 = v55;
            v167 = v64;
            v168 = v173;
            v70 = *(v206 + 9);
            v173 = *(v206 + 8);
            v171 = v172._rawValue;
            v172._rawValue = v70;
            goto LABEL_16;
          case 3:
            goto LABEL_79;
          case 4:
            *&v203 = v55;
            v71 = *(v206 + 2);
            v167 = v64;
            v168 = v71;
            v170 = v62;
LABEL_16:
            v174 = 0;
            v72 = v183;
            v177 = (v182 + 8);
            v169 = *(v183 + 16);
            v73 = v209;
            *&v202 = v53;
            v74 = v181;
            break;
          default:

            v58 = v206;
            goto LABEL_11;
        }

        while (1)
        {
LABEL_17:
          if (v174 == v169)
          {

            v136 = MEMORY[0x1E69E7CC0];
            v137 = v167;
            switch(v206[96])
            {
              case 1:
                v137 = (v206 + 64);
                goto LABEL_54;
              case 2:
LABEL_54:
                v136 = *v137;

                break;
              default:
                break;
            }

            v138 = 0;
            v139 = *(v136 + 16);
            for (i = 32; ; i += 64)
            {
              v141 = v204;
              if (v139 == v138)
              {
                break;
              }

              if (v138 >= *(v136 + 16))
              {
                goto LABEL_77;
              }

              v142 = *(v136 + i);
              v143 = *(v136 + i + 16);
              v144 = *(v136 + i + 32);
              *(&v217[2] + 9) = *(v136 + i + 41);
              v217[1] = v143;
              v217[2] = v144;
              v217[0] = v142;
              v145 = *(v136 + i + 16);
              v214 = *(v136 + i);
              v215 = v145;
              v216[0] = *(v136 + i + 32);
              *(v216 + 9) = *(v136 + i + 41);
              sub_1C8D070A4(v217, &v211);
              ToolDatabase.Accessor.addSystemTypeProtocol(typeId:systemTypeProtocol:)();
              ++v138;
              sub_1C8D07100(v217);
            }

            if (v206[96] == 1)
            {
              v146 = *(v206 + 9);
            }

            else
            {
              v146 = MEMORY[0x1E69E7CC0];
            }

            v147 = v187;
            v148 = 0;
            v149 = *(v146 + 16);
            v200 = v146 + 32;
            v201 = v149;
            v207 = v188 + 8;
            v208 = (v188 + 16);
            v199 = v146;
            v150 = v188;
            while (1)
            {
LABEL_64:
              if (v148 == v201)
              {
                (*v177)(v209, v184);

                memcpy(v217, v206, 0x61uLL);
                v67 = v189;
                goto LABEL_12;
              }

              if (v148 >= *(v146 + 16))
              {
                goto LABEL_79;
              }

              v151 = v200 + 16 * v148;
              v152 = *(v151 + 8);
              *&v217[0] = *v151;
              BYTE8(v217[0]) = v152;
              *&v205 = *&v217[0];

              ToolDatabase.Accessor.addTypeCoercion(typeId:coercionDefinition:)(v203, v141, v217);
              ++v148;
              if (v152)
              {
                break;
              }

              v141 = v204;
            }

            v198 = v148;
            *&v217[0] = v205;
            BYTE8(v217[0]) = v152;
            CoercionDefinition.wrappedUTTypes.getter();
            v154 = v153;
            v155 = 0;
            v156 = *(v153 + 16);
            while (1)
            {
              v141 = v204;
              if (v156 == v155)
              {

                v148 = v198;
                v146 = v199;
                goto LABEL_64;
              }

              if (v155 >= *(v154 + 16))
              {
                goto LABEL_78;
              }

              v157 = v186;
              (*(v150 + 16))(v186, v154 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v155, v147);
              v158 = sub_1C9063C1C();
              v159 = v147;
              v161 = v160;
              (*(v150 + 8))(v157, v159);
              v162._countAndFlagsBits = v203;
              v162._object = v204;
              v163._countAndFlagsBits = v158;
              v163._object = v161;
              ToolDatabase.Accessor.addUTTypeCoercion(typeId:coercionIdentifier:)(v162, v163);
              v80 = v164;
              if (v164)
              {
                break;
              }

              ++v155;
              v147 = v187;
            }

LABEL_50:

            (*v177)(v209, v184);
LABEL_6:
            *v210 = v80;
            return;
          }

          if (v174 >= *(v72 + 16))
          {
            break;
          }

          v222._countAndFlagsBits = sub_1C906206C();
          v222._object = v75;
          v76._countAndFlagsBits = v203;
          v76._object = v204;
          v77._countAndFlagsBits = v168;
          v78.value._countAndFlagsBits = v170;
          v77._object = v171;
          v78.value._object = v173;
          ToolDatabase.Accessor.addTypeDisplayRepresentation(typeId:name:numericFormat:synonyms:locale:)(v76, v77, v78, v172, v222);
          v80 = v79;
          if (v79)
          {

            (*v177)(v73, v184);
            goto LABEL_6;
          }

          ++v174;

          v81 = *(v206 + 1);
          v82 = v206[96];
          if (v82 == 2)
          {
            v221 = *(v206 + 1);
            v72 = v183;
            v99 = v184;
            if (*(v81 + 16))
            {
              v179 = *(v81 + 16);
              v100 = (v81 + ((*(v185 + 80) + 32) & ~*(v185 + 80)));
              v101 = v185;
              sub_1C8D90D54(v206, v217);
              sub_1C8DFBCF4(&v221, v217, &qword_1EC317DE8, &qword_1C9090C08);
              v175 = *(v101 + 72);
              while (1)
              {
                v201 = 0;
                v178 = v100;
                sub_1C8ED3A88(v100, v66, type metadata accessor for EnumerationCaseDefinition);
                _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
                v198 = sub_1C906206C();
                v200 = v102;
                v176 = *v177;
                v176(v74, v99);
                v103 = v66[1];
                v197 = *v66;
                v182 = v103;
                v104 = v191;
                *&v205 = *(v190 + 20);
                sub_1C8DFBCF4(v66 + v205, v191, &qword_1EC312788, &unk_1C906A3A0);
                v105 = type metadata accessor for DisplayRepresentation(0);
                if (__swift_getEnumTagSinglePayload(v104, 1, v105) == 1)
                {
                  sub_1C8D16D78(v104, &qword_1EC312788, &unk_1C906A3A0);
                  v180 = 0;
                  v106 = 0;
                }

                else
                {
                  v106 = v104[1];
                  v180 = *v104;

                  sub_1C8ED3AF8(v104, type metadata accessor for DisplayRepresentation);
                }

                v107 = v194;
                v108 = v66 + v205;
                v109 = v192;
                sub_1C8DFBCF4(v108, v192, &qword_1EC312788, &unk_1C906A3A0);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v109, 1, v105);
                v199 = v106;
                if (EnumTagSinglePayload == 1)
                {
                  sub_1C8D16D78(v109, &qword_1EC312788, &unk_1C906A3A0);
                  v113 = 0;
                  v114 = 0;
                  v115 = -1;
                }

                else
                {
                  v116 = v109;
                  v113 = *(v109 + 16);
                  v114 = *(v109 + 24);
                  v115 = *(v116 + 32);
                  sub_1C8CD3AA0(v113, v114, v115, v111, v112);
                  sub_1C8ED3AF8(v116, type metadata accessor for DisplayRepresentation);
                }

                *&v214 = v113;
                *(&v214 + 1) = v114;
                LOBYTE(v215) = v115;
                v117 = v193;
                sub_1C8DFBCF4(v208 + v205, v193, &qword_1EC312788, &unk_1C906A3A0);
                if (__swift_getEnumTagSinglePayload(v117, 1, v105) == 1)
                {
                  sub_1C8D16D78(v117, &qword_1EC312788, &unk_1C906A3A0);
                  v120 = 0;
                  v121 = 0;
                  v122 = -1;
                }

                else
                {
                  v120 = *(v117 + 40);
                  v121 = *(v117 + 48);
                  v122 = *(v117 + 56);
                  sub_1C8CD3AA0(v120, v121, v122, v118, v119);
                  sub_1C8ED3AF8(v117, type metadata accessor for DisplayRepresentation);
                }

                v211 = v120;
                v212 = v121;
                v213 = v122;
                v123 = v208;
                sub_1C8DFBCF4(v208 + v205, v107, &qword_1EC312788, &unk_1C906A3A0);
                if (__swift_getEnumTagSinglePayload(v107, 1, v105) == 1)
                {
                  sub_1C8D16D78(v107, &qword_1EC312788, &unk_1C906A3A0);
                  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
                  __swift_storeEnumTagSinglePayload(v207, 1, 1, v124);
                }

                else
                {
                  sub_1C8DFBCF4(v107 + v105[7], v207, &qword_1EC312528, &unk_1C9066960);
                  sub_1C8ED3AF8(v107, type metadata accessor for DisplayRepresentation);
                }

                v125 = v195;
                sub_1C8DFBCF4(v123 + v205, v195, &qword_1EC312788, &unk_1C906A3A0);
                if (__swift_getEnumTagSinglePayload(v125, 1, v105) == 1)
                {
                  sub_1C8D16D78(v125, &qword_1EC312788, &unk_1C906A3A0);
                  v126 = 0;
                  v127 = 0;
                  v128 = 0;
                  v129 = 0;
                }

                else
                {
                  v130 = (v125 + v105[8]);
                  v126 = *v130;
                  v127 = v130[1];
                  v128 = v130[2];
                  v129 = v130[3];
                  sub_1C8CE9E30(*v130, v127, v128, v129);
                  sub_1C8ED3AF8(v125, type metadata accessor for DisplayRepresentation);
                }

                v131 = v200;
                *&v217[0] = v126;
                *(&v217[0] + 1) = v127;
                *&v217[1] = v128;
                *(&v217[1] + 1) = v129;
                v132 = v196;
                sub_1C8DFBCF4(v208 + v205, v196, &qword_1EC312788, &unk_1C906A3A0);
                if (__swift_getEnumTagSinglePayload(v132, 1, v105) == 1)
                {
                  sub_1C8D16D78(v132, &qword_1EC312788, &unk_1C906A3A0);
                  v133 = MEMORY[0x1E69E7CC0];
                }

                else
                {
                  v133 = *(v132 + v105[9]);

                  sub_1C8ED3AF8(v132, type metadata accessor for DisplayRepresentation);
                }

                v134 = v201;
                v135 = v207;
                v74 = v181;
                ToolDatabase.Accessor.addEnumerationCase(typeId:locale:id:title:subtitle:altText:image:snippetPluginModel:synonyms:)(v203, v204, v198, v131, v197, v182, v180, v199, &v214, &v211, v207, v217, v133, v165, v166, v167, v168, v169, v170, v171, v172._rawValue, v173, v174, v175, v176);
                v80 = v134;
                if (v134)
                {
                  break;
                }

                sub_1C8CF6A1C(*&v217[0], *(&v217[0] + 1), *&v217[1], *(&v217[1] + 1));
                sub_1C8D16D78(v135, &qword_1EC312528, &unk_1C9066960);
                sub_1C8CE08AC(v211, v212, v213);
                sub_1C8CE08AC(v214, *(&v214 + 1), v215);
                v66 = v208;
                sub_1C8ED3AF8(v208, type metadata accessor for EnumerationCaseDefinition);
                v100 = v175 + v178;
                --v179;
                v99 = v184;
                if (!v179)
                {
                  sub_1C8D90DB0(v206);
                  sub_1C8D16D78(&v221, &qword_1EC317DE8, &qword_1C9090C08);
                  v72 = v183;
                  v73 = v209;
                  goto LABEL_17;
                }
              }

              sub_1C8D16D78(&v221, &qword_1EC317DE8, &qword_1C9090C08);

              sub_1C8D90DB0(v206);
              sub_1C8CF6A1C(*&v217[0], *(&v217[0] + 1), *&v217[1], *(&v217[1] + 1));
              sub_1C8D16D78(v135, &qword_1EC312528, &unk_1C9066960);
              sub_1C8CE08AC(v211, v212, v213);
              sub_1C8CE08AC(v214, *(&v214 + 1), v215);
              v176(v209, v184);
              sub_1C8ED3AF8(v208, type metadata accessor for EnumerationCaseDefinition);
              goto LABEL_6;
            }
          }

          else
          {
            v72 = v183;
            if (v82 == 1)
            {
              v220[0] = *(v206 + 1);
              v83 = *(v81 + 16);
              sub_1C8D90D54(v206, v217);
              sub_1C8DFBCF4(v220, v217, &qword_1EC316C58, &unk_1C909F350);
              v84 = (v81 + 64);
              v85 = v204;
              if (v83)
              {
                while (1)
                {
                  v87 = *(v84 - 4);
                  v86 = *(v84 - 3);
                  v88 = *(v84 - 2);
                  v89 = *(v84 - 1);
                  v199 = v83;
                  v200 = v88;
                  *&v217[0] = *v84;
                  v201 = *&v217[0];
                  swift_retain_n();

                  *&v205 = v89;

                  v90 = v203;
                  v91 = v85;
                  ToolDatabase.Accessor.addEntityProperty(typeId:id:typeInstance:)();

                  v198 = 0;
                  v92._countAndFlagsBits = sub_1C906206C();
                  v94 = v93;
                  v95._countAndFlagsBits = v90;
                  v95._object = v91;
                  v96._countAndFlagsBits = v87;
                  v96._object = v86;
                  v92._object = v94;
                  v97._countAndFlagsBits = v200;
                  v97._object = v205;
                  ToolDatabase.Accessor.addEntityPropertyLocalization(typeId:propertyId:locale:displayName:)(v95, v96, v92, v97);
                  v80 = v98;
                  if (v98)
                  {
                    break;
                  }

                  v84 += 5;
                  v83 = v199 - 1;
                  v66 = v208;
                  v73 = v209;
                  v85 = v204;
                  v74 = v181;
                  if (v199 == 1)
                  {
                    goto LABEL_25;
                  }
                }

                sub_1C8D16D78(v220, &qword_1EC316C58, &unk_1C909F350);

                sub_1C8D90DB0(v206);

                goto LABEL_50;
              }

LABEL_25:
              sub_1C8D16D78(v220, &qword_1EC316C58, &unk_1C909F350);
              sub_1C8D90DB0(v206);
              v72 = v183;
            }
          }
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
      }
    }
  }
}

uint64_t sub_1C8ED29C0(uint64_t a1, uint64_t a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = SecTaskCreateFromSelf(0);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  error[0] = 0;
  v4 = sub_1C9063EBC();
  v5 = SecTaskCopyValueForEntitlement(v3, v4, error);

  v6 = 2;
  if (v5)
  {
    if (swift_dynamicCast())
    {
      v6 = v11;
    }

    else
    {
      v6 = 2;
    }
  }

  v7 = error[0];
  if (!error[0])
  {

    if (v6 != 2 && (v6 & 1) != 0)
    {
      v9 = 1;
      return v9 & 1;
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  type metadata accessor for CFError(0);
  sub_1C8ED3B50(&qword_1EC3191E0, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
  swift_allocError();
  *v8 = v7;
  swift_willThrow();

  return v9 & 1;
}

uint64_t ToolDatabase.insert(tool:locale:source:session:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = a1;
  v7 = a2;
  v8 = *a3;
  v4[2] = sub_1C8ED2BF8;
  v4[3] = &v5;
  return sub_1C8ECF818(0, 0, sub_1C8ED35A0, v4);
}

void sub_1C8ED2BA4(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9[0] = a3;
  v9[1] = a4;
  v8 = 0;
  ToolDatabase.Accessor.insert(tool:locale:source:localizationUsage:)(a1, a2, v9, &v8);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t ToolDatabase.insert(container:locale:session:)()
{
  OUTLINED_FUNCTION_4_37();
  memcpy(__dst, v1, 0x61uLL);
  v5 = __dst;
  v6 = v0;
  v3[2] = sub_1C8ED35BC;
  v3[3] = &v4;
  return sub_1C8ECF818(0, 0, sub_1C8ED3BF4, v3);
}

void sub_1C8ED2CA0(void *__src@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  ToolDatabase.Accessor.insert(container:locale:)(__src, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t ToolDatabase.insert(type:sourceContainer:session:)()
{
  OUTLINED_FUNCTION_4_37();
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v4, v0, sizeof(v4));
  return sub_1C8ECF864();
}

uint64_t sub_1C8ED2D8C@<X0>(void *a2@<X1>, uint64_t x8_0@<X8>)
{
  v6 = sub_1C90620BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  v12 = 0;
  ToolDatabase.Accessor.insert(type:sourceContainer:locale:localizationUsage:)(a2, v9, &v12, x8_0);
  return (*(v7 + 8))(v9, v6);
}

uint64_t ToolDatabase.insert(tool:locale:source:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v30 = a2;
  v28 = a1;
  v6 = sub_1C90620BC();
  v27 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = type metadata accessor for ToolDefinition(0);
  v10 = OUTLINED_FUNCTION_46(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v17 = a3[1];
  v29 = v16;
  sub_1C8ED3A88(v28, v15, type metadata accessor for ToolDefinition);
  (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v6);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = (v14 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  sub_1C8ED3620(v15, v20 + v18);
  (*(v7 + 32))(v20 + v19, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v29;
  v21[1] = v17;

  sub_1C8ED3770(v22, v17, v23, v24, v25);
  sub_1C8ECFF34();
}

uint64_t sub_1C8ED30E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return ToolDatabase.insert(tool:locale:source:session:)(a3, a4, &v7);
}

uint64_t ToolDatabase.insert(container:locale:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_34(__src);
  (*(v6 + 16))(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v10 = (*(v6 + 80) + 121) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  memcpy((v11 + 24), __src, 0x61uLL);
  (*(v6 + 32))(v11 + v10, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);

  sub_1C8CC1340(__src, v13);
  sub_1C8ECFF34();
}

uint64_t ToolDatabase.insert(type:sourceContainer:)(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_8_34(v7);
  memcpy(__dst, a2, 0x61uLL);
  v4 = swift_allocObject();
  v4[2] = v2;
  OUTLINED_FUNCTION_8_34(v4 + 3);
  memcpy(v4 + 16, a2, 0x61uLL);

  sub_1C8D90D54(v7, v6);
  sub_1C8CC1340(__dst, v6);
  sub_1C8ECFF8C();
}

uint64_t ToolDatabase.insert(tool:)(uint64_t a1)
{
  sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_42(v4);
  v8 = xmmword_1C907C300;
  ToolDatabase.insert(tool:locale:source:)(a1, v1, &v8);
  v5 = OUTLINED_FUNCTION_7_36();
  return v6(v5);
}

uint64_t ToolDatabase.insert(container:)(uint64_t a1)
{
  sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_42(v4);
  ToolDatabase.insert(container:locale:)(a1, v1);
  v5 = OUTLINED_FUNCTION_7_36();
  return v6(v5);
}

uint64_t sub_1C8ED3574@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C8ECFFE4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C8ED3620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDefinition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8ED3684()
{
  v0 = OUTLINED_FUNCTION_5_40();
  v1 = type metadata accessor for ToolDefinition(v0);
  OUTLINED_FUNCTION_46(v1);
  v2 = sub_1C90620BC();
  OUTLINED_FUNCTION_46(v2);
  v3 = OUTLINED_FUNCTION_6_34();
  return sub_1C8ED30E8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C8ED3770(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_1C8ED3784()
{
  OUTLINED_FUNCTION_5_40();
  sub_1C90620BC();
  OUTLINED_FUNCTION_6_34();
  return sub_1C8ED329C();
}

uint64_t sub_1C8ED37F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  switch(a13)
  {
    case 1:

      goto LABEL_8;
    case 2:

      goto LABEL_10;
    case 3:

      sub_1C8D16E14(a4, a5);
      sub_1C8CD0FB0(a8);
      goto LABEL_10;
    case 4:

LABEL_8:

LABEL_10:

      break;
    case 5:

      break;
    default:
      return v16;
  }

  return v16;
}

void sub_1C8ED39F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE **a4@<X3>, void (*a5)(id *__return_ptr, uint64_t)@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  sub_1C8ECF8B0(a1, a2, a3, *a4, a5, a6);
  if (!v7)
  {
    *a7 = v9;
  }
}

uint64_t sub_1C8ED3A88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8ED3AE8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1C8CE7B78(a1, a2);
  }
}

uint64_t sub_1C8ED3AF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8ED3B50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8ED3C38(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8ED3C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A40;
  if (!qword_1EDA60A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A40);
  }

  return result;
}

uint64_t static AssistantTypeSchemaDefinition.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x69uLL);
  memcpy(v104, a2, 0x69uLL);
  memcpy(v105, __src, 0x69uLL);
  v4 = memcpy(v106, a2, sizeof(v106));
  if (__dst[104])
  {
    if (v104[104])
    {
      memcpy(v88, __src, sizeof(v88));
      v12 = memcpy(v87, a2, sizeof(v87));
      v20 = OUTLINED_FUNCTION_5_41(v12, v13, v14, v15, v16, v17, v18, v19, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104]);
      v28 = OUTLINED_FUNCTION_6_35(v20, v21, v22, v23, v24, v25, v26, v27, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
      v36 = OUTLINED_FUNCTION_6_35(v28, v29, v30, v31, v32, v33, v34, v35, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
      OUTLINED_FUNCTION_5_41(v36, v37, v38, v39, v40, v41, v42, v43, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104]);
      v44 = static AssistantEnumerationSchemaDefinition.== infix(_:_:)(v88, v87);
LABEL_7:
      v53 = v44;
      sub_1C8ED3EA4(v105);
      sub_1C8ED3F0C(v104);
      sub_1C8ED3F0C(__dst);
      return v53 & 1;
    }
  }

  else if ((v104[104] & 1) == 0)
  {
    memcpy(v88, __src, sizeof(v88));
    v54 = memcpy(v87, a2, sizeof(v87));
    v62 = OUTLINED_FUNCTION_5_41(v54, v55, v56, v57, v58, v59, v60, v61, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104]);
    v70 = OUTLINED_FUNCTION_6_35(v62, v63, v64, v65, v66, v67, v68, v69, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
    v78 = OUTLINED_FUNCTION_6_35(v70, v71, v72, v73, v74, v75, v76, v77, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
    OUTLINED_FUNCTION_5_41(v78, v79, v80, v81, v82, v83, v84, v85, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104]);
    v44 = static AssistantEntitySchemaDefinition.== infix(_:_:)(v88, v87);
    goto LABEL_7;
  }

  v45 = OUTLINED_FUNCTION_6_35(v4, v5, v6, v7, v8, v9, v10, v11, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  OUTLINED_FUNCTION_5_41(v45, v46, v47, v48, v49, v50, v51, v52, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104]);
  sub_1C8ED3EA4(v105);
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_1C8ED3EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191E8, &qword_1C909E7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8ED3F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8ED4384(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8ED3F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8ED4384(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8ED3FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8ED4480(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8ED3FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8ED4480(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8ED402C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8ED43D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8ED4068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8ED43D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AssistantTypeSchemaDefinition.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191F0, &qword_1C909E7C8);
  OUTLINED_FUNCTION_11();
  v37 = v4;
  v38 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191F8, &qword_1C909E7D0);
  OUTLINED_FUNCTION_11();
  v35 = v9;
  v36 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319200, &qword_1C909E7D8);
  OUTLINED_FUNCTION_11();
  v14 = v13;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v40 = v1;
  v18 = v1[104];
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8ED4384(v19, v20, v21);
  v22 = sub_1C9064E1C();
  if (v18)
  {
    __dst[0] = 1;
    sub_1C8ED43D8(v22, v23, v24);
    OUTLINED_FUNCTION_8_35(&type metadata for AssistantTypeSchemaDefinition.EnumerationCodingKeys);
    v25 = memcpy(__dst, v40, sizeof(__dst));
    sub_1C8ED442C(v25, v26, v27);
    v28 = v38;
    sub_1C9064B8C();
    (*(v37 + 8))(v7, v28);
  }

  else
  {
    __dst[0] = 0;
    sub_1C8ED4480(v22, v23, v24);
    OUTLINED_FUNCTION_8_35(&type metadata for AssistantTypeSchemaDefinition.EntityCodingKeys);
    v29 = memcpy(__dst, v40, sizeof(__dst));
    sub_1C8ED44D4(v29, v30, v31);
    v32 = v36;
    sub_1C9064B8C();
    (*(v35 + 8))(v12, v32);
  }

  return (*(v14 + 8))(v17, a1);
}

unint64_t sub_1C8ED4384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319208;
  if (!qword_1EC319208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319208);
  }

  return result;
}

unint64_t sub_1C8ED43D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319210;
  if (!qword_1EC319210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319210);
  }

  return result;
}

unint64_t sub_1C8ED442C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319218;
  if (!qword_1EC319218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319218);
  }

  return result;
}

unint64_t sub_1C8ED4480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319220;
  if (!qword_1EC319220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319220);
  }

  return result;
}

unint64_t sub_1C8ED44D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319228;
  if (!qword_1EC319228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319228);
  }

  return result;
}

uint64_t AssistantTypeSchemaDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 88);
  if (*(v1 + 104))
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9063FBC();
    MEMORY[0x1CCA82830](v2);
    MEMORY[0x1CCA82830](v3);
    MEMORY[0x1CCA82830](v4);
    sub_1C9063FBC();
    sub_1C8D0225C();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    sub_1C9063FBC();
    MEMORY[0x1CCA82830](v2);
    MEMORY[0x1CCA82830](v3);
    MEMORY[0x1CCA82830](v4);
    sub_1C9063FBC();
    sub_1C8D02D7C();
  }

  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v5)
  {
    sub_1C9063FBC();
  }

  return sub_1C8CC1590();
}

uint64_t AssistantTypeSchemaDefinition.hashValue.getter()
{
  sub_1C9064D7C();
  AssistantTypeSchemaDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t AssistantTypeSchemaDefinition.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319230, &qword_1C909E7E0);
  OUTLINED_FUNCTION_11();
  v58 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319238, &qword_1C909E7E8);
  OUTLINED_FUNCTION_11();
  v57 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319240, &unk_1C909E7F0);
  OUTLINED_FUNCTION_11();
  v12 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v55 - v14;
  v16 = a1[3];
  v61 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1C8ED4384(v17, v18, v19);
  v20 = v62;
  sub_1C9064DEC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v55[1] = v9;
  v56 = v12;
  v21 = v60;
  v62 = v15;
  v22 = sub_1C9064A9C();
  result = sub_1C8CB8914(v22, 0);
  if (v25 == v26 >> 1)
  {
    goto LABEL_7;
  }

  if (v25 >= (v26 >> 1))
  {
    __break(1u);
    return result;
  }

  v66 = *(v24 + v25);
  sub_1C8CB891C(v25 + 1, v26 >> 1, result, v24, v25, v26);
  v28 = v27;
  v30 = v29;
  v31 = swift_unknownObjectRelease();
  if (v28 != v30 >> 1)
  {
LABEL_7:
    v39 = sub_1C90647DC();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v41 = &type metadata for AssistantTypeSchemaDefinition;
    v42 = v62;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v56 + 8))(v42, v10);
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  if (v66)
  {
    __src[0] = 1;
    sub_1C8ED43D8(v31, v32, v33);
    v35 = v21;
    v34 = OUTLINED_FUNCTION_4_38(&type metadata for AssistantTypeSchemaDefinition.EnumerationCodingKeys, __src);
    sub_1C8ED4D00(v34, v36, v37);
    v38 = v59;
    sub_1C9064A6C();
    OUTLINED_FUNCTION_3_43();
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_7_37();
    v47(v46, v38);
    v48 = OUTLINED_FUNCTION_1_58();
    v49(v48);
    memcpy(__dst, __src, sizeof(__dst));
    v50 = 1;
    v65 = 1;
    v21 = v35;
  }

  else
  {
    __src[0] = 0;
    sub_1C8ED4480(v31, v32, v33);
    v43 = OUTLINED_FUNCTION_4_38(&type metadata for AssistantTypeSchemaDefinition.EntityCodingKeys, __src);
    sub_1C8ED4D54(v43, v44, v45);
    sub_1C9064A6C();
    OUTLINED_FUNCTION_3_43();
    swift_unknownObjectRelease();
    v51 = OUTLINED_FUNCTION_7_37();
    v52(v51, v5);
    v53 = OUTLINED_FUNCTION_1_58();
    v54(v53);
    memcpy(__dst, __src, sizeof(__dst));
    v50 = 0;
    v65 = 0;
  }

  memcpy(v21, __dst, 0x68uLL);
  v21[104] = v50;
  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_1C8ED4CC0(uint64_t a1)
{
  sub_1C9064D7C();
  AssistantTypeSchemaDefinition.hash(into:)(v2);
  return sub_1C9064DBC();
}

unint64_t sub_1C8ED4D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319248;
  if (!qword_1EC319248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319248);
  }

  return result;
}

unint64_t sub_1C8ED4D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319250;
  if (!qword_1EC319250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319250);
  }

  return result;
}

unint64_t sub_1C8ED4DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319258;
  if (!qword_1EC319258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319258);
  }

  return result;
}

uint64_t sub_1C8ED4E00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 105))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 104);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8ED4E40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantTypeSchemaDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8ED4FA8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8ED5058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319260;
  if (!qword_1EC319260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319260);
  }

  return result;
}

unint64_t sub_1C8ED50B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319268;
  if (!qword_1EC319268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319268);
  }

  return result;
}

unint64_t sub_1C8ED5108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319270;
  if (!qword_1EC319270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319270);
  }

  return result;
}

unint64_t sub_1C8ED5160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319278;
  if (!qword_1EC319278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319278);
  }

  return result;
}

unint64_t sub_1C8ED51B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319280;
  if (!qword_1EC319280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319280);
  }

  return result;
}

unint64_t sub_1C8ED5210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319288;
  if (!qword_1EC319288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319288);
  }

  return result;
}

unint64_t sub_1C8ED5268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319290;
  if (!qword_1EC319290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319290);
  }

  return result;
}

unint64_t sub_1C8ED52C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319298;
  if (!qword_1EC319298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319298);
  }

  return result;
}

unint64_t sub_1C8ED5318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3192A0;
  if (!qword_1EC3192A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3192A0);
  }

  return result;
}

uint64_t sub_1C8ED5370@<X0>(void (*a1)(char *, uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v5 = type metadata accessor for FetchedTool(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319358, &qword_1C909EDB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1C8EE3DD8(v2, &v14 - v9, &qword_1EC319358, &qword_1C909EDB0);
  v11 = 1;
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) != 1)
  {
    sub_1C8EE4050(v10, v7);
    v15(v7, &v16);
    result = sub_1C8EE3FF4(v7, type metadata accessor for FetchedTool);
    if (v3)
    {
      return result;
    }

    v11 = 0;
  }

  v13 = type metadata accessor for ToolDefinition(0);
  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v13);
}

uint64_t (*sub_1C8ED5580(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = 32;
  v14 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    memcpy(__dst, (a3 + v9), 0x61uLL);
    memcpy(__src, (a3 + v9), 0x61uLL);
    sub_1C8D90D54(__dst, v15);
    v10 = v5(__src);
    if (v3)
    {
      memcpy(v15, __src, 0x61uLL);
      sub_1C8D90DB0(v15);

LABEL_14:

      return v8;
    }

    if (v10)
    {
      memcpy(v15, __src, 0x61uLL);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C8D09BE4(0, *(v8 + 16) + 1, 1);
        v8 = v18;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C8D09BE4(v12 > 1, v13 + 1, 1);
        v8 = v18;
      }

      *(v8 + 16) = v13 + 1;
      result = memcpy((v8 + 104 * v13 + 32), v15, 0x61uLL);
      v5 = v14;
    }

    else
    {
      memcpy(v15, __src, 0x61uLL);
      result = sub_1C8D90DB0(v15);
    }

    v9 += 104;
    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1C8ED5730()
{
  OUTLINED_FUNCTION_196();
  v22 = v2;
  v27 = v3;
  v5 = v4;
  v26 = v6;
  v8 = v7(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_12();
  v23 = v10;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_233_0();
  v12 = 0;
  v13 = *(v5 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v12)
    {

LABEL_14:
      OUTLINED_FUNCTION_198();
      return;
    }

    if (v12 >= *(v5 + 16))
    {
      break;
    }

    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = *(v9 + 72);
    sub_1C8EE3F9C(v5 + v14 + v15 * v12, v1);
    v16 = v26(v1);
    if (v0)
    {
      sub_1C8EE3FF4(v1, v27);

      goto LABEL_14;
    }

    if (v16)
    {
      sub_1C8EE4050(v1, v23);
      v17 = v24;
      v28 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22(0, *(v24 + 16) + 1, 1);
        v17 = v24;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v25 = v19 + 1;
        v21 = *(v17 + 16);
        v22(v18 > 1, v19 + 1, 1);
        v20 = v25;
        v19 = v21;
        v17 = v28;
      }

      ++v12;
      *(v17 + 16) = v20;
      v24 = v17;
      sub_1C8EE4050(v23, v17 + v14 + v19 * v15);
    }

    else
    {
      sub_1C8EE3FF4(v1, v27);
      ++v12;
    }
  }

  __break(1u);
}

void ToolDatabase.Accessor.containers(matching:scope:locale:)()
{
  OUTLINED_FUNCTION_196();
  v32 = v2;
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_11();
  v30 = v4;
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v29 = v5;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[5];
  v27 = *v0;
  v28 = v9;
  v15 = *(v0 + 8);
  OUTLINED_FUNCTION_77_5();
  sub_1C8EDAD68(v32, v16, v8);
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = v14;
  v33 = v27;
  v17 = v30;
  v34 = v15;
  v18 = *(v30 + 16);
  v19 = v29;
  v32 = v8;
  v20 = v8;
  v21 = v31;
  v18(v29, v20);
  Request = type metadata accessor for ContainerDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);

  v23 = OUTLINED_FUNCTION_70_4();
  v25 = sub_1C8EE4790(v23, v24, v19);
  sub_1C8EDDC74(v25);
  OUTLINED_FUNCTION_53_11();
  (*(v17 + 8))(v32, v21);

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.types(matching:scope:locale:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_59();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_84();
  memcpy(v20, v7, sizeof(v20));
  v10 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  v19[0] = 0;
  sub_1C8EDAD68(v3, v19, v0);
  OUTLINED_FUNCTION_62_10();
  v17 = v10;
  v18 = v5;
  v11 = OUTLINED_FUNCTION_9_29();
  v12(v11);
  Request = type metadata accessor for TypeDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);
  OUTLINED_FUNCTION_63_11();
  v14 = sub_1C8E01160(v19, &v17, v1);
  sub_1C8EDDD00(v14);
  OUTLINED_FUNCTION_34_13();
  v15 = OUTLINED_FUNCTION_49();
  v16(v15);

  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.iterate(over:scope:locale:block:)()
{
  OUTLINED_FUNCTION_196();
  v22 = v2;
  v23 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v20 = v12;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_156_0();
  memcpy(v28, v7, 0x58uLL);
  v15 = *v5;
  LOBYTE(v7) = *(v5 + 8);
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  OUTLINED_FUNCTION_64_8();
  sub_1C8EDAD68(v0, v16, v1);
  v21 = *(v10 + 8);
  v21(v0, v8);
  memcpy(v27, v28, sizeof(v27));
  v25 = v15;
  v26 = v7;
  v17 = v8;
  (*(v10 + 16))(v20, v1, v8);
  Request = type metadata accessor for TypeDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);
  sub_1C8E051A0(v28, &v24);
  v19 = sub_1C8E01160(v27, &v25, v20);
  sub_1C8EDE0A8(v19, v22, v23, sub_1C8EE3F0C);
  v21(v1, v17);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_196();
  v24 = v3;
  v23 = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_41_15();
  v9 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_156_0();
  memcpy(v27, v0, sizeof(v27));
  v14 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  OUTLINED_FUNCTION_64_8();
  sub_1C8EDAD68(v6, v15, v1);
  OUTLINED_FUNCTION_38_18();
  v25[14] = v14;
  v26 = v8;
  (*(v11 + 16))(v2, v1, v9);
  Request = type metadata accessor for ToolDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);
  v17 = OUTLINED_FUNCTION_35_17();
  sub_1C8EE2C10(v17, v25);
  v18 = OUTLINED_FUNCTION_22_27();
  sub_1C8F187B4(v18, v19, v2, v20);
  OUTLINED_FUNCTION_18_24();
  sub_1C8EDE0A8(v21, v23, v24, v22);
  (*(v11 + 8))(v1, v9);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_196();
  v17 = v1;
  v18 = v2;
  v16 = v3;
  sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v14 = v5;
  v15 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v13 = v6;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_77_5();
  sub_1C8EDAD68(v16, v8, v0);
  (*(v14 + 16))(v13, v0, v15);
  Request = type metadata accessor for ContainerDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);

  v10 = OUTLINED_FUNCTION_70_4();
  v12 = sub_1C8EE4790(v10, v11, v13);
  sub_1C8EDE0A8(v12, v17, v18, sub_1C8EE3C50);
  (*(v14 + 8))(v0, v15);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_196();
  v15 = v1;
  v16 = v2;
  v14 = v3;
  v4 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_75_4();
  sub_1C8EDAD68(v14, v9, v0);
  v10 = OUTLINED_FUNCTION_50_14();
  v11(v10);
  Request = type metadata accessor for TriggerDefinitionQueryRequest(0);
  OUTLINED_FUNCTION_171(Request);

  OUTLINED_FUNCTION_74_4();
  sub_1C902EB70();
  sub_1C8EDE0A8(v13, v15, v16, sub_1C8EE3AAC);
  (*(v6 + 8))(v0, v4);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDatabase.tool(matching:locale:)()
{
  OUTLINED_FUNCTION_49_12();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_54_9();
  return sub_1C8D0D3F4(v1, v2, v3);
}

uint64_t sub_1C8ED5EB0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1C8D24BA0(v9, v10, v11);
  sub_1C90624BC();
  if (*(v0 + *(*v0 + 144) + 8) == 1)
  {
    (*(v3 + 32))(v8, v5, v2);
  }

  else
  {
    sub_1C8D28184(&qword_1EDA62C08, &qword_1EC318D38, &qword_1C90C6380, MEMORY[0x1E699FF80]);
    sub_1C9062A5C();
    (*(v3 + 8))(v5, v2);
  }

  (*(*v0 + 200))(v8);
  if (!v1)
  {
    sub_1C9062C1C();
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1C8ED60D4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1C8D24D68(v9, v10, v11);
  sub_1C90624BC();
  if (*(v0 + *(*v0 + 144) + 8) == 1)
  {
    (*(v3 + 32))(v8, v5, v2);
  }

  else
  {
    sub_1C8D28184(&qword_1EC3162E0, &qword_1EC316230, &unk_1C9084E40, MEMORY[0x1E699FF80]);
    sub_1C9062A5C();
    (*(v3 + 8))(v5, v2);
  }

  (*(*v0 + 200))(v8);
  if (!v1)
  {
    sub_1C9062C1C();
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1C8ED62F8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  type metadata accessor for ToolRecord(0);
  sub_1C8EE3E34(&qword_1EDA6B220, type metadata accessor for ToolRecord, &unk_1C906B058);
  sub_1C90624BC();
  if (*(v0 + *(*v0 + 144) + 8) == 1)
  {
    (*(v3 + 32))(v8, v5, v2);
  }

  else
  {
    sub_1C8D28184(&qword_1EDA62C30, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF80]);
    sub_1C9062A5C();
    (*(v3 + 8))(v5, v2);
  }

  (*(*v0 + 200))(v8);
  if (!v1)
  {
    type metadata accessor for FetchedTool(0);
    sub_1C9062C1C();
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1C8ED6550()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192D0, &qword_1C909ED68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1C8D27FE0(v9, v10, v11);
  sub_1C90624BC();
  if (*(v0 + *(*v0 + 144) + 8) == 1)
  {
    (*(v3 + 32))(v8, v5, v2);
  }

  else
  {
    sub_1C8D28184(&qword_1EC3192D8, &qword_1EC3192D0, &qword_1C909ED68, MEMORY[0x1E699FF80]);
    sub_1C9062A5C();
    (*(v3 + 8))(v5, v2);
  }

  (*(*v0 + 200))(v8);
  if (!v1)
  {
    sub_1C9062C1C();
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1C8ED6774(void *__src, char a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *(v2 + *(*v2 + 168));
  v6 = a2 & 1;
  return v4(__dst, &v6);
}

uint64_t sub_1C8ED67F8(void *__src, char a2)
{
  memcpy(v6, __src, sizeof(v6));
  v4 = *(v2 + *(*v2 + 168));
  v7 = a2 & 1;
  return v4(v6, &v7);
}

uint64_t sub_1C8ED6884(uint64_t a1, char a2)
{
  v3 = *(v2 + *(*v2 + 168));
  v5 = a2 & 1;
  return v3(a1, &v5);
}

uint64_t sub_1C8ED68D0()
{
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90CBCE0);
  sub_1C906204C();
  sub_1C8EE3E34(&qword_1EDA6CB98, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v0);

  MEMORY[0x1CCA81A90](0x203A65706F637320, 0xE800000000000000);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](0x3A656C61636F6C20, 0xE900000000000020);
  v1 = sub_1C906206C();
  MEMORY[0x1CCA81A90](v1);

  MEMORY[0x1CCA81A90](0x203A797265757120, 0xE800000000000000);
  v2 = ContainerDefinitionQuery.debugDescription.getter();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8ED6AC4()
{
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90CBCE0);
  sub_1C906204C();
  sub_1C8EE3E34(&qword_1EDA6CB98, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v0);

  MEMORY[0x1CCA81A90](0x203A65706F637320, 0xE800000000000000);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](0x3A656C61636F6C20, 0xE900000000000020);
  v1 = sub_1C906206C();
  MEMORY[0x1CCA81A90](v1);

  MEMORY[0x1CCA81A90](0x203A797265757120, 0xE800000000000000);
  v2 = TypeDefinitionQuery.debugDescription.getter();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8ED6CB8()
{
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90CBCE0);
  sub_1C906204C();
  sub_1C8EE3E34(&qword_1EDA6CB98, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v0);

  MEMORY[0x1CCA81A90](0x203A65706F637320, 0xE800000000000000);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](0x3A656C61636F6C20, 0xE900000000000020);
  v1 = sub_1C906206C();
  MEMORY[0x1CCA81A90](v1);

  MEMORY[0x1CCA81A90](0x203A797265757120, 0xE800000000000000);
  v2 = ToolDefinitionQuery.debugDescription.getter();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8ED6EAC()
{
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90CBCE0);
  sub_1C906204C();
  sub_1C8EE3E34(&qword_1EDA6CB98, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v0);

  MEMORY[0x1CCA81A90](0x203A65706F637320, 0xE800000000000000);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](0x3A656C61636F6C20, 0xE900000000000020);
  v1 = sub_1C906206C();
  MEMORY[0x1CCA81A90](v1);

  MEMORY[0x1CCA81A90](0x203A797265757120, 0xE800000000000000);
  v2 = TriggerDefinitionQuery.debugDescription.getter();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

void *sub_1C8ED70A0@<X0>(char a2@<W1>, _OWORD *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319310, &qword_1C909ED90);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  result = sub_1C8ED60D4();
  if (!v4)
  {
    v25 = v3;
    v39 = v8;
    v12 = sub_1C8D28184(&qword_1EC319318, &qword_1EC319310, &qword_1C909ED90, MEMORY[0x1E699FF60]);
    sub_1C8EE3CC0(v12, v13, v14);
    sub_1C906256C();
    memcpy(v34, v36, sizeof(v34));
    memcpy(v35, v36, sizeof(v35));
    if (OUTLINED_FUNCTION_125_0(v35) == 1)
    {
      memset(v37, 0, 96);
      v37[96] = -1;
      v15 = v39;
      v16 = v25;
    }

    else
    {
      memcpy(v38, v34, 0xF0uLL);
      memcpy(v33, v34, sizeof(v33));
      sub_1C8D16AE0(v33, v26);
      v16 = v25;
      sub_1C8ED67F8(v38, a2 & 1);
      sub_1C8D3F0C4(v34, &qword_1EC319328, &qword_1C909ED98);
      v15 = v39;
    }

    memcpy(v33, v36, sizeof(v33));
    sub_1C8D3F0C4(v33, &qword_1EC319328, &qword_1C909ED98);
    memcpy(v26, v37, 0x61uLL);
    if (v26[96] != 255)
    {
      memcpy(v32, v37, 0x61uLL);
      v17 = (v16 + *(*v16 + 136));
      if (v17[9])
      {
        memcpy(v28, v17, sizeof(v28));
        memcpy(v27, v17, sizeof(v27));
        sub_1C8EE3DD8(v26, v30, &qword_1EC312F08, &qword_1C9091C20);
        sub_1C8E051A0(v28, v30);
        TypeDefinitionQuery.shouldFilterOut(model:)(v32, v18, v19, v20, v21);
        v23 = v22;
        memcpy(v29, v27, 0x58uLL);
        sub_1C8D90D00(v29);
        memcpy(v31, v32, 0x61uLL);
        sub_1C8D90DB0(v31);
        (*(v15 + 8))(v10, v7);
        if (v23)
        {
          memcpy(v30, v37, 0x61uLL);
          result = sub_1C8D3F0C4(v30, &qword_1EC312F08, &qword_1C9091C20);
          *a3 = 0u;
          a3[1] = 0u;
          a3[2] = 0u;
          a3[3] = 0u;
          a3[4] = 0u;
          a3[5] = 0u;
          *(a3 + 96) = -1;
          return result;
        }

        return memcpy(a3, v37, 0x61uLL);
      }

      memcpy(v30, v37, 0x61uLL);
      memcpy(v31, v37, 0x61uLL);
      sub_1C8D90D54(v31, v29);
      sub_1C8D90DB0(v30);
    }

    (*(v15 + 8))(v10, v7);
    return memcpy(a3, v37, 0x61uLL);
  }

  return result;
}

uint64_t sub_1C8ED74F8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a1;
  v38 = a3;
  v5 = type metadata accessor for ToolDefinition(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319358, &qword_1C909EDB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319360, &qword_1C909EDB8);
  v40 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v47 = v3;
  result = sub_1C8ED62F8();
  if (!v4)
  {
    v34 = v7;
    v35 = v12;
    v33 = v3;
    v36 = v5;
    v37 = v15;
    sub_1C8D28184(&qword_1EDA69370, &qword_1EC319360, &qword_1C909EDB8, MEMORY[0x1E699FF60]);
    sub_1C8EE3E34(&qword_1EDA692F0, type metadata accessor for FetchedTool, &unk_1C90C7B44);
    v20 = v42;
    v21 = sub_1C906256C();
    v22 = v40;
    MEMORY[0x1EEE9AC00](v21);
    *(&v32 - 2) = &v47;
    *(&v32 - 8) = v39 & 1;
    v23 = v37;
    sub_1C8ED5370(sub_1C8EE40C0, v37);
    sub_1C8D3F0C4(v20, &qword_1EC319358, &qword_1C909EDB0);
    v24 = v35;
    sub_1C8EE3DD8(v23, v35, &qword_1EC312F18, &qword_1C907A7B0);
    v25 = v36;
    v26 = v23;
    if (__swift_getEnumTagSinglePayload(v24, 1, v36) == 1)
    {
      (*(v22 + 8))(v18, v16);
      sub_1C8D3F0C4(v24, &qword_1EC312F18, &qword_1C907A7B0);
    }

    else
    {
      v27 = v16;
      v28 = v34;
      sub_1C8EE4050(v24, v34);
      v29 = (v33 + *(*v33 + 136));
      if (v29[10])
      {
        memcpy(v45, (v33 + *(*v33 + 136)), sizeof(v45));
        memcpy(v44, v29, sizeof(v44));
        sub_1C8EE2C10(v45, &v43);
        ToolDefinitionQuery.shouldFilterOut(model:)(v28);
        v31 = v30;
        memcpy(__dst, v44, 0x70uLL);
        sub_1C8DC8734(__dst);
        sub_1C8EE3FF4(v28, type metadata accessor for ToolDefinition);
        (*(v22 + 8))(v18, v27);
        if (v31)
        {
          sub_1C8D3F0C4(v26, &qword_1EC312F18, &qword_1C907A7B0);
          return __swift_storeEnumTagSinglePayload(v38, 1, 1, v25);
        }
      }

      else
      {
        sub_1C8EE3FF4(v28, type metadata accessor for ToolDefinition);
        (*(v22 + 8))(v18, v27);
      }
    }

    return sub_1C8EE3D68(v26, v38);
  }

  return result;
}

void *sub_1C8ED7A10@<X0>(char a2@<W1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319300, &qword_1C909ED88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  result = sub_1C8ED5EB0();
  if (!v4)
  {
    v17 = v3;
    v25 = v8;
    v12 = sub_1C8D28184(&qword_1EDA62C00, &qword_1EC319300, &qword_1C909ED88, MEMORY[0x1E699FF60]);
    sub_1C8D80704(v12, v13, v14);
    sub_1C906256C();
    memcpy(v20, v22, sizeof(v20));
    memcpy(v21, v22, sizeof(v21));
    v15 = sub_1C8CE5448(v21);
    v16 = v25;
    if (v15 == 1)
    {
      (*(v25 + 8))(v10, v7);
      memset(v23, 0, sizeof(v23));
    }

    else
    {
      memcpy(__dst, v20, 0x88uLL);
      memcpy(v19, v20, sizeof(v19));
      sub_1C8D50178(v19, &v18);
      sub_1C8ED6774(__dst, a2 & 1);
      sub_1C8D3F0C4(v20, &qword_1EC3144D0, &qword_1C9074130);
      (*(v16 + 8))(v10, v7);
    }

    memcpy(v19, v22, sizeof(v19));
    sub_1C8D3F0C4(v19, &qword_1EC3144D0, &qword_1C9074130);
    return memcpy(a3, v23, 0x61uLL);
  }

  return result;
}

void *sub_1C8ED7D00@<X0>(char a2@<W1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192B0, &qword_1C909ED58);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  result = sub_1C8ED6550();
  if (!v4)
  {
    v17 = v3;
    v25 = v8;
    v12 = sub_1C8D28184(&qword_1EC3192B8, &qword_1EC3192B0, &qword_1C909ED58, MEMORY[0x1E699FF60]);
    sub_1C8EE3B70(v12, v13, v14);
    sub_1C906256C();
    memcpy(v20, v22, sizeof(v20));
    memcpy(v21, v22, sizeof(v21));
    v15 = sub_1C8CE5448(v21);
    v16 = v25;
    if (v15 == 1)
    {
      (*(v25 + 8))(v10, v7);
      memset(v23, 0, sizeof(v23));
    }

    else
    {
      memcpy(__dst, v20, 0x88uLL);
      memcpy(v19, v20, sizeof(v19));
      sub_1C8D500C8(v19, &v18);
      sub_1C8ED6774(__dst, a2 & 1);
      sub_1C8D3F0C4(v20, &qword_1EC3192C8, &qword_1C909ED60);
      (*(v16 + 8))(v10, v7);
    }

    memcpy(v19, v22, sizeof(v19));
    sub_1C8D3F0C4(v19, &qword_1EC3192C8, &qword_1C909ED60);
    return memcpy(a3, v23, 0x50uLL);
  }

  return result;
}

uint64_t sub_1C8ED7FEC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319300, &qword_1C909ED88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v16 = v2;
  sub_1C8ED5EB0();
  if (!v3)
  {
    v9 = sub_1C8D28184(&qword_1EDA62C00, &qword_1EC319300, &qword_1C909ED88, MEMORY[0x1E699FF60]);
    sub_1C8D80704(v9, v10, v11);
    v12 = sub_1C906255C();
    MEMORY[0x1EEE9AC00](v12);
    *(&v15 - 2) = &v16;
    *(&v15 - 8) = a2 & 1;
    sub_1C8D3FB80();
    a2 = v14;

    (*(v6 + 8))(v8, v5);
  }

  return a2;
}

uint64_t (*sub_1C8ED81F8(uint64_t a1, char a2))(_BYTE *)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319310, &qword_1C909ED90);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v18 = v2;
  sub_1C8ED60D4();
  if (!v3)
  {
    v10 = sub_1C8D28184(&qword_1EC319318, &qword_1EC319310, &qword_1C909ED90, MEMORY[0x1E699FF60]);
    sub_1C8EE3CC0(v10, v11, v12);
    v13 = sub_1C906255C();
    MEMORY[0x1EEE9AC00](v13);
    *(&v17 - 2) = &v18;
    *(&v17 - 8) = a2 & 1;
    sub_1C8D3FCB8();
    v2 = v14;

    if (*(v4 + *(*v4 + 136) + 72))
    {
      MEMORY[0x1EEE9AC00](v16);
      *(&v17 - 2) = &v18;
      v2 = sub_1C8ED5580(sub_1C8EE3F60, (&v17 - 4), v2);
    }

    (*(v7 + 8))(v9, v6);
  }

  return v2;
}

uint64_t sub_1C8ED8488(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319360, &qword_1C909EDB8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v16 = v2;
  sub_1C8ED62F8();
  if (!v3)
  {
    sub_1C8D28184(&qword_1EDA69370, &qword_1EC319360, &qword_1C909EDB8, MEMORY[0x1E699FF60]);
    sub_1C8EE3E34(&qword_1EDA692F0, type metadata accessor for FetchedTool, &unk_1C90C7B44);
    v10 = sub_1C906255C();
    MEMORY[0x1EEE9AC00](v10);
    *(&v15 - 2) = &v16;
    *(&v15 - 8) = a2 & 1;
    sub_1C8D4032C(sub_1C8EE3EB4, (&v15 - 4), v10);
    v2 = v11;

    if (*(v4 + *(*v4 + 136) + 80))
    {
      MEMORY[0x1EEE9AC00](v13);
      *(&v15 - 2) = &v16;
      sub_1C8ED5730();
      v2 = v14;
    }

    (*(v7 + 8))(v9, v6);
  }

  return v2;
}

uint64_t sub_1C8ED8798(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192B0, &qword_1C909ED58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v16 = v2;
  sub_1C8ED6550();
  if (!v3)
  {
    v9 = sub_1C8D28184(&qword_1EC3192B8, &qword_1EC3192B0, &qword_1C909ED58, MEMORY[0x1E699FF60]);
    sub_1C8EE3B70(v9, v10, v11);
    v12 = sub_1C906255C();
    MEMORY[0x1EEE9AC00](v12);
    *(&v15 - 2) = &v16;
    *(&v15 - 8) = a2 & 1;
    sub_1C8D40540();
    a2 = v14;

    (*(v6 + 8))(v8, v5);
  }

  return a2;
}

void sub_1C8ED89F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a2 + *(*a2 + 136);
  v8 = *(v7 + 72);
  if (v8)
  {
    v47 = *(v7 + 8);
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
    v11 = *(v7 + 56);
    v12 = *(v7 + 64);
    v13 = *(v7 + 80);
    v14 = 64;
    v15 = MEMORY[0x1E69E7CC0];
    switch(*(a1 + 96))
    {
      case 1:
        goto LABEL_4;
      case 2:
        v14 = 24;
LABEL_4:
        v15 = *(a1 + v14);

        break;
      default:
        break;
    }

    v16 = *(v15 + 16);

    j__swift_bridgeObjectRetain_0(v9, v10, v17, v18, v19, v20);
    v44 = v11;
    j__swift_bridgeObjectRetain_0(v11, v12, v21, v22, v23, v24);
    sub_1C8E05190(v8, v13);
    sub_1C8E05190(v8, v13);
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v27 = v15 + (v25 << 6);
    while (v16 != v25)
    {
      if (v25 >= *(v15 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v28 = (v27 + 64);
      ++v25;
      v29 = *(v27 + 88);
      v27 += 64;
      if (!v29)
      {
        v42 = *(v28 - 2);
        v43 = v6;
        v30 = *(v28 - 1);
        v41 = *v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C8D01378();
          v26 = v33;
        }

        v31 = v26[2];
        if (v31 >= v26[3] >> 1)
        {
          sub_1C8D01378();
          v26 = v34;
        }

        v26[2] = v31 + 1;
        v32 = &v26[3 * v31];
        v32[4] = v42;
        v32[5] = v30;
        v32[6] = v41;
        v6 = v43;
        goto LABEL_6;
      }
    }

    v35 = v26 + 6;
    v36 = -v26[2];
    v37 = -1;
    do
    {
      if (v36 + v37 == -1)
      {
        break;
      }

      if (++v37 >= v26[2])
      {
        goto LABEL_22;
      }

      v38 = v35 + 3;
      v39 = *v35;
      v45 = *(v35 - 1);
      v46 = v39;
      v40 = v8(&v45);
      v35 = v38;
    }

    while ((v40 & 1) != 0);
    sub_1C8CC7E94(v8, v13);

    j__swift_bridgeObjectRelease_0(v9);
    j__swift_bridgeObjectRelease_0(v44);
    sub_1C8CC7E94(v8, v13);
  }
}

BOOL sub_1C8ED8CF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(*a2 + 136);
  memcpy(__dst, (a2 + v4), sizeof(__dst));
  memcpy(v7, (v2 + v4), sizeof(v7));
  sub_1C8EE2C10(__dst, v9);
  ToolDefinitionQuery.shouldFilterOut(model:)(a1);
  LOBYTE(v2) = v5;
  memcpy(v9, v7, sizeof(v9));
  sub_1C8DC8734(v9);
  return (v2 & 1) == 0;
}

uint64_t sub_1C8ED8DA4(uint64_t a1, uint64_t i)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319360, &qword_1C909EDB8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  sub_1C8ED62F8();
  if (v3)
  {
    return i;
  }

  if (!*(v2 + *(*v2 + 136) + 80))
  {
    v27 = v10;
    i = sub_1C9062C2C();
    v26 = v9;
LABEL_10:
    (*(v27 + 8))(v12, v26);
    return i;
  }

  v13 = sub_1C8EDA014(a1);
  v27 = v10;
  v28 = a1;
  v29 = i;
  v26 = v9;
  for (i = 0; ; ++i)
  {
    v14 = v13;
    sub_1C8EDABE0();
    if (v15)
    {

      goto LABEL_10;
    }

    v16 = MEMORY[0x1CCA82A80]();
    sub_1C8F18998();
    sub_1C8ED74F8(v28, v29 & 1, v8);
    v17 = type metadata accessor for ToolDefinition(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v17);
    result = sub_1C8D3F0C4(v8, &qword_1EC312F18, &qword_1C907A7B0);
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8EE3AC8(result, v20, v21);
      swift_allocError();
      *v22 = 1;
      swift_willThrow();

      objc_autoreleasePoolPop(v16);
      v23 = v26;
      v24 = v27;

      (*(v24 + 8))(v12, v23);
      return i;
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_autoreleasePoolPop(v16);
    v13 = v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8ED90B8(uint64_t a1, int a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319310, &qword_1C909ED90);
  i = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  sub_1C8ED60D4();
  if (v3)
  {
    return i;
  }

  if (!*(v2 + *(*v2 + 136) + 72))
  {
    v23 = i;
    i = sub_1C9062C2C();
LABEL_10:
    (*(v23 + 8))(v9, v6);
    return i;
  }

  sub_1C8ED9CA0(a1);
  v24 = a2;
  v27 = a1;
  v23 = i;
  v22 = v6;
  for (i = 0; ; ++i)
  {
    v10 = sub_1C8EDAA70();
    v12 = v11;
    if (!v11)
    {

      v6 = v22;
      goto LABEL_10;
    }

    v13 = v10;
    v14 = MEMORY[0x1CCA82A80]();
    sub_1C8E01308(v13, v12);
    sub_1C8ED70A0(v24 & 1, __src);
    if (LOBYTE(__src[6]) == 255)
    {
      memcpy(__dst, __src, 0x61uLL);
      v16 = sub_1C8D3F0C4(__dst, &qword_1EC312F08, &qword_1C9091C20);
      sub_1C8EE3AC8(v16, v17, v18);
      swift_allocError();
      *v19 = 1;
      swift_willThrow();

      objc_autoreleasePoolPop(v14);

      v20 = v23;

      v21 = *(v20 + 8);
      i = v20 + 8;
      v21(v9, v22);
      return i;
    }

    memcpy(__dst, __src, 0x61uLL);
    result = sub_1C8D3F0C4(__dst, &qword_1EC312F08, &qword_1C9091C20);
    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_autoreleasePoolPop(v14);
  }

  __break(1u);
  return result;
}

char *sub_1C8ED93F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(__n128))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  a5(v12);
  if (!v6)
  {
    v5 = v14;
    sub_1C9062C2C();
    OUTLINED_FUNCTION_53_11();
    (*(v10 + 8))(v14, v8);
  }

  return v5;
}

uint64_t sub_1C8ED94F4(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, char a4)
{
  result = sub_1C8ED9CA0(a3);
  if (!v4)
  {
    v18 = a1;
    v22 = a2;
    while (1)
    {
      v9 = sub_1C8EDAA70();
      v11 = v10;
      if (!v10)
      {
        break;
      }

      v12 = v9;
      v13 = MEMORY[0x1CCA82A80]();
      sub_1C8E01308(v12, v11);
      sub_1C8ED70A0(a4 & 1, __src);
      if (__src[96] == 255)
      {
        memcpy(v19, __src, 0x61uLL);
        v14 = sub_1C8D3F0C4(v19, &qword_1EC312F08, &qword_1C9091C20);
        sub_1C8EE3AC8(v14, v15, v16);
        swift_allocError();
        *v17 = 1;
        swift_willThrow();

        objc_autoreleasePoolPop(v13);
      }

      memcpy(__dst, __src, 0x61uLL);
      v18(__dst);
      memcpy(v19, __dst, 0x61uLL);
      sub_1C8D90DB0(v19);

      objc_autoreleasePoolPop(v13);
    }
  }

  return result;
}

uint64_t sub_1C8ED96C8(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v28 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ToolDefinition(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C8EDA014(a3);
  if (!v4)
  {
    v14 = result;
    v25 = v10;
    v26 = v9;
    v27 = a3;
    while (1)
    {
      sub_1C8EDABE0();
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = MEMORY[0x1CCA82A80]();
      sub_1C8F18998();
      v18 = a4;
      v19 = a4 & 1;
      v20 = v26;
      sub_1C8ED74F8(v27, v19, v26);
      if (__swift_getEnumTagSinglePayload(v20, 1, v25) == 1)
      {
        v21 = sub_1C8D3F0C4(v20, &qword_1EC312F18, &qword_1C907A7B0);
        sub_1C8EE3AC8(v21, v22, v23);
        swift_allocError();
        *v24 = 1;
        swift_willThrow();

        objc_autoreleasePoolPop(v17);
      }

      sub_1C8EE4050(v20, v12);
      v28(v12);
      sub_1C8EE3FF4(v12, type metadata accessor for ToolDefinition);

      objc_autoreleasePoolPop(v17);
      v14 = v16;
      a4 = v18;
    }
  }

  return result;
}

uint64_t sub_1C8ED9950(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, char a4)
{
  result = sub_1C8EDA388(a3);
  if (!v4)
  {
    v20 = a2;
    while (1)
    {
      v9 = sub_1C8EDABE0();
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = MEMORY[0x1CCA82A80]();
      sub_1C8EE4924(v11);
      sub_1C8ED7A10(a4 & 1, __src);
      if (!__src[1])
      {
        memcpy(v17, __src, 0x61uLL);
        v13 = sub_1C8D3F0C4(v17, &qword_1EC312EF8, &unk_1C90839D0);
        sub_1C8EE3AC8(v13, v14, v15);
        swift_allocError();
        *v16 = 1;
        swift_willThrow();

        objc_autoreleasePoolPop(v12);
      }

      memcpy(__dst, __src, 0x61uLL);
      a1(__dst);
      memcpy(v17, __dst, 0x61uLL);
      sub_1C8CC15FC(v17);

      objc_autoreleasePoolPop(v12);
    }
  }

  return result;
}

uint64_t sub_1C8ED9AF8(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, char a4)
{
  result = sub_1C8EDA6FC(a3);
  if (!v4)
  {
    v20 = a2;
    while (1)
    {
      v9 = sub_1C8EDABE0();
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = MEMORY[0x1CCA82A80]();
      sub_1C902ED04(v11);
      sub_1C8ED7D00(a4 & 1, __src);
      if (!__src[1])
      {
        memcpy(v17, __src, sizeof(v17));
        v13 = sub_1C8D3F0C4(v17, &qword_1EC312EE8, &unk_1C9091C10);
        sub_1C8EE3AC8(v13, v14, v15);
        swift_allocError();
        *v16 = 1;
        swift_willThrow();

        objc_autoreleasePoolPop(v12);
      }

      memcpy(__dst, __src, 0x50uLL);
      a1(__dst);
      memcpy(v17, __dst, sizeof(v17));
      sub_1C8EE3B1C(v17);

      objc_autoreleasePoolPop(v12);
    }
  }

  return result;
}

uint64_t sub_1C8ED9CA0(uint64_t a1)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319310, &qword_1C909ED90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319348, &qword_1C909EDA8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  sub_1C8ED60D4();
  if (!v1)
  {
    v22 = v9;
    v23 = v3;
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C906A950;
    v14 = sub_1C9062E6C();
    v15 = MEMORY[0x1E69A0038];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    if (qword_1EC3112B8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v14, qword_1EC390940);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v17, v14);
    sub_1C8D28184(&qword_1EC319350, &qword_1EC319310, &qword_1C909ED90, MEMORY[0x1E699FF88]);
    sub_1C9062AEC();

    v18 = *(v23 + 8);
    v18(v5, v2);
    sub_1C9062C1C();
    v18(v8, v2);
    sub_1C8D28184(&qword_1EDA6CB90, &qword_1EC319348, &qword_1C909EDA8, MEMORY[0x1E699FF60]);
    v19 = v22;
    v9 = sub_1C90625BC();
    (*(v24 + 8))(v12, v19);
  }

  return v9;
}

uint64_t sub_1C8EDA014(uint64_t a1)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319360, &qword_1C909EDB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192E8, &qword_1C909ED78);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  sub_1C8ED62F8();
  if (!v1)
  {
    v22 = v9;
    v23 = v3;
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C906A950;
    v14 = sub_1C9062E6C();
    v15 = MEMORY[0x1E69A0038];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    if (qword_1EDA62448 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v14, qword_1EDA6E5D8);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v17, v14);
    sub_1C8D28184(&qword_1EDA62C40, &qword_1EC319360, &qword_1C909EDB8, MEMORY[0x1E699FF88]);
    sub_1C9062AEC();

    v18 = *(v23 + 8);
    v18(v5, v2);
    sub_1C9062C1C();
    v18(v8, v2);
    sub_1C8D28184(&qword_1EDA666D0, &qword_1EC3192E8, &qword_1C909ED78, MEMORY[0x1E699FF60]);
    v19 = v22;
    v9 = sub_1C90625BC();
    (*(v24 + 8))(v12, v19);
  }

  return v9;
}

uint64_t sub_1C8EDA388(uint64_t a1)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319300, &qword_1C909ED88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192E8, &qword_1C909ED78);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  sub_1C8ED5EB0();
  if (!v1)
  {
    v22 = v9;
    v23 = v3;
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C906A950;
    v14 = sub_1C9062E6C();
    v15 = MEMORY[0x1E69A0038];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    if (qword_1EC3113E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v14, qword_1EC390B88);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v17, v14);
    sub_1C8D28184(&qword_1EC319308, &qword_1EC319300, &qword_1C909ED88, MEMORY[0x1E699FF88]);
    sub_1C9062AEC();

    v18 = *(v23 + 8);
    v18(v5, v2);
    sub_1C9062C1C();
    v18(v8, v2);
    sub_1C8D28184(&qword_1EDA666D0, &qword_1EC3192E8, &qword_1C909ED78, MEMORY[0x1E699FF60]);
    v19 = v22;
    v9 = sub_1C90625BC();
    (*(v24 + 8))(v12, v19);
  }

  return v9;
}

uint64_t sub_1C8EDA6FC(uint64_t a1)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192B0, &qword_1C909ED58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192E8, &qword_1C909ED78);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  sub_1C8ED6550();
  if (!v1)
  {
    v22 = v9;
    v23 = v3;
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C906A950;
    v14 = sub_1C9062E6C();
    v15 = MEMORY[0x1E69A0038];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    if (qword_1EC312188 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v14, qword_1EC391190);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v17, v14);
    sub_1C8D28184(&qword_1EC3192F8, &qword_1EC3192B0, &qword_1C909ED58, MEMORY[0x1E699FF88]);
    sub_1C9062AEC();

    v18 = *(v23 + 8);
    v18(v5, v2);
    sub_1C9062C1C();
    v18(v8, v2);
    sub_1C8D28184(&qword_1EDA666D0, &qword_1EC3192E8, &qword_1C909ED78, MEMORY[0x1E699FF60]);
    v19 = v22;
    v9 = sub_1C90625BC();
    (*(v24 + 8))(v12, v19);
  }

  return v9;
}

uint64_t sub_1C8EDAA70()
{
  sub_1C8D28184(&qword_1EC319330, &qword_1EC319338, &qword_1C909EDA0, MEMORY[0x1E699FF10]);
  if (sub_1C90629EC())
  {
    return 0;
  }

  sub_1C8D28184(&qword_1EC319340, &qword_1EC319338, &qword_1C909EDA0, MEMORY[0x1E699FF18]);
  sub_1C90627FC();

  sub_1C906300C();

  if (!v0)
  {
    v1 = v3;
    if (!v4)
    {
      sub_1C90629FC();
    }
  }

  return v1;
}

uint64_t sub_1C8EDABE0()
{
  sub_1C8D28184(&qword_1EDA62C70, &qword_1EC3192E0, &qword_1C909ED70, MEMORY[0x1E699FF10]);
  if (sub_1C90629EC())
  {
    return 0;
  }

  sub_1C8D28184(&qword_1EDA62C68, &qword_1EC3192E0, &qword_1C909ED70, MEMORY[0x1E699FF18]);
  sub_1C90627FC();

  sub_1C906300C();

  if (!v0)
  {
    v1 = v3;
    if (v4)
    {
      sub_1C90629FC();
    }
  }

  return v1;
}

uint64_t sub_1C8EDAD68@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v48 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319348, &qword_1C909EDA8);
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v44 - v12;
  v45 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v13 = swift_allocObject();
  v44 = xmmword_1C906A950;
  *(v13 + 16) = xmmword_1C906A950;
  if (qword_1EDA6C790 != -1)
  {
    OUTLINED_FUNCTION_27_15(&qword_1EDA6C790);
  }

  v14 = sub_1C9062E6C();
  __swift_project_value_buffer(v14, qword_1EDA6EBF8);
  v15 = MEMORY[0x1E69A0038];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  OUTLINED_FUNCTION_10_0();
  v17 = *(v16 + 16);
  v18 = v17();
  sub_1C8D24D14(v18, v19, v20);
  v21 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_81_6();

  if (qword_1EDA624D8 != -1)
  {
    OUTLINED_FUNCTION_26_16(&qword_1EDA624D8);
  }

  v22 = __swift_project_value_buffer(v14, qword_1EDA6E6C0);
  v50[3] = v14;
  v50[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (v17)(boxed_opaque_existential_1, v22, v14);
  v24 = 0x79616C70736964;
  if (v45)
  {
    v24 = 0x65676175676E616CLL;
  }

  v25 = 0xE700000000000000;
  v49[3] = v21;
  v49[4] = MEMORY[0x1E69A0130];
  if (v45)
  {
    v25 = 0xED00006C65646F4DLL;
  }

  v49[0] = v24;
  v49[1] = v25;
  v51[3] = sub_1C90627EC();
  v51[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_1C9062D6C();
  sub_1C8D3F0C4(v49, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v50);
  OUTLINED_FUNCTION_16_25();
  sub_1C8D28184(v26, v27, &qword_1C909EDA8, v28);
  sub_1C906292C();
  v29 = *(v8 + 8);
  v29(v4, v6);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v30 = v46;
  sub_1C9062C4C();
  v29(v3, v6);
  OUTLINED_FUNCTION_15_25();
  sub_1C8D28184(v31, v32, &qword_1C909EDA8, v33);
  sub_1C906259C();
  v29(v30, v6);
  v34 = objc_opt_self();
  v35 = sub_1C906418C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v36 = swift_allocObject();
  *(v36 + 16) = v44;
  v37 = v47;
  *(v36 + 32) = sub_1C906206C();
  *(v36 + 40) = v38;
  v39 = sub_1C906418C();

  v40 = [v34 preferredLocalizationsFromArray:v35 forPreferences:v39];

  v41 = sub_1C906419C();
  if (*(v41 + 16))
  {

    return sub_1C906205C();
  }

  else
  {

    sub_1C90620BC();
    OUTLINED_FUNCTION_24_1();
    return (*(v43 + 16))(v48, v37);
  }
}

uint64_t sub_1C8EDB288(uint64_t a1, unsigned __int8 *a2)
{
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319348, &qword_1C909EDA8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - v11;
  v41 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v12 = swift_allocObject();
  v40 = xmmword_1C906A950;
  *(v12 + 16) = xmmword_1C906A950;
  if (qword_1EDA624D8 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_26_16(&qword_1EDA624D8);
  }

  v13 = sub_1C9062E6C();
  v14 = __swift_project_value_buffer(v13, qword_1EDA6E6C0);
  v15 = MEMORY[0x1E69A0038];
  *(v12 + 56) = v13;
  *(v12 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  OUTLINED_FUNCTION_10_0();
  v17 = *(v16 + 16);
  v19 = v17(v18, v14);
  sub_1C8D24D14(v19, v20, v21);
  v22 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_81_6();

  if (qword_1EDA6C790 != -1)
  {
    OUTLINED_FUNCTION_27_15(&qword_1EDA6C790);
  }

  v23 = __swift_project_value_buffer(v13, qword_1EDA6EBF8);
  v45[3] = v13;
  v45[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (v17)(boxed_opaque_existential_1, v23, v13);
  v25 = sub_1C906206C();
  v44[3] = v22;
  v44[4] = MEMORY[0x1E69A0130];
  v44[0] = v25;
  v44[1] = v26;
  v46[3] = sub_1C90627EC();
  v46[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v46);
  sub_1C9062D6C();
  sub_1C8D3F0C4(v44, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v45);
  OUTLINED_FUNCTION_16_25();
  sub_1C8D28184(v27, v28, &qword_1C909EDA8, v29);
  sub_1C906292C();
  v30 = *(v5 + 8);
  v31 = OUTLINED_FUNCTION_49();
  v30(v31);
  __swift_destroy_boxed_opaque_existential_1(v46);
  sub_1C9062C4C();
  (v30)(v9, v3);
  OUTLINED_FUNCTION_15_25();
  sub_1C8D28184(v32, v33, &qword_1C909EDA8, v34);
  v9 = sub_1C906259C();
  v35 = OUTLINED_FUNCTION_49();
  v30(v35);
  v3 = 0;
  v46[0] = MEMORY[0x1E69E7CD0];
  v5 = *(v9 + 2);
  v36 = v9 + 40;
  while (v5 != v3)
  {
    if (v3 >= *(v9 + 2))
    {
      __break(1u);
      goto LABEL_15;
    }

    v37 = sub_1C906497C();
    if (v37)
    {
      if (v37 != 1)
      {
        goto LABEL_12;
      }

      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    sub_1C8D87D50(v45, v38);
LABEL_12:

    v36 += 16;
    ++v3;
  }

  sub_1C8D87D50(v45, v41);
  return sub_1C8D79078(v46[0]);
}