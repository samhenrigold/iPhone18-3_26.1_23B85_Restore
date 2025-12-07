void sub_1B1E3FC9C(id a1, uint64_t a2, unsigned int a3)
{
  v3 = (a3 >> 13) & 3;
  if (v3 == 1)
  {
    sub_1B1E3FCBC(a1, a2, a3 & 0x9FFF);
  }

  else if (!v3)
  {
  }
}

uint64_t sub_1B1E3FCBC(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x8000) == 0)
  {
  }

  return result;
}

unint64_t sub_1B1E3FCCC()
{
  result = qword_1EB784EE8;
  if (!qword_1EB784EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EE8);
  }

  return result;
}

uint64_t sub_1B1E3FD20(uint64_t a1)
{
  v2 = type metadata accessor for VoiceShortcutClientRequest.Automations(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void VoiceShortcutClientRequest.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v106 = v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784EF8, &qword_1B1F2F568);
  OUTLINED_FUNCTION_0();
  v97 = v5;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v101 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F00, &qword_1B1F2F570);
  OUTLINED_FUNCTION_0();
  v95 = v9;
  v96 = v8;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v100 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F08, &qword_1B1F2F578);
  OUTLINED_FUNCTION_0();
  v93 = v13;
  v94 = v12;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v99 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F10, &qword_1B1F2F580);
  OUTLINED_FUNCTION_0();
  v91 = v17;
  v92 = v16;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v98 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F18, &unk_1B1F2F588);
  OUTLINED_FUNCTION_0();
  v103 = v21;
  v104 = v20;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v22);
  v102 = type metadata accessor for VoiceShortcutClientRequest(0);
  OUTLINED_FUNCTION_10();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_26_1();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v84 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v84 - v34;
  v36 = v3[3];
  v107 = v3;
  __swift_project_boxed_opaque_existential_0(v3, v36);
  sub_1B1E3F998();
  sub_1B1F1B810();
  if (v0)
  {
    goto LABEL_8;
  }

  v90 = v33;
  v87 = v1;
  v88 = v29;
  v89 = v26;
  v37 = v106;
  v38 = v104;
  sub_1B1F1B210();
  sub_1B1E32BFC();
  if (v40 == v41 >> 1)
  {
LABEL_7:
    v48 = v38;
    v49 = v102;
    v50 = sub_1B1F1AFE0();
    swift_allocError();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v52 = v49;
    v53 = sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8(v53);
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v54 = OUTLINED_FUNCTION_13_4();
    v55(v54, v48);
LABEL_8:
    v56 = v107;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_35();
    return;
  }

  v86 = 0;
  if (v40 < (v41 >> 1))
  {
    v85 = *(v39 + v40);
    sub_1B1E32BF8();
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    if (v43 == v45 >> 1)
    {
      v46 = v37;
      switch(v85)
      {
        case 1:
          LOBYTE(v108) = 1;
          sub_1B1E3FBF4();
          OUTLINED_FUNCTION_4_10(&type metadata for VoiceShortcutClientRequest.ToolKitCodingKeys, &v108);
          sub_1B1E4223C();
          OUTLINED_FUNCTION_14_7(&type metadata for VoiceShortcutClientRequest.ToolKit, v59);
          OUTLINED_FUNCTION_17_3();
          swift_unknownObjectRelease();
          v77 = OUTLINED_FUNCTION_2_12();
          v78(v77);
          v79 = OUTLINED_FUNCTION_10_4();
          v80(v79);
          v81 = v109;
          v65 = v87;
          *v87 = v108;
          *(v65 + 16) = v81;
          goto LABEL_13;
        case 2:
          LOBYTE(v108) = 2;
          sub_1B1E3FAF8();
          OUTLINED_FUNCTION_4_10(&type metadata for VoiceShortcutClientRequest.SpotlightCodingKeys, &v108);
          sub_1B1E421E8();
          OUTLINED_FUNCTION_14_7(&type metadata for VoiceShortcutClientRequest.Spotlight, v57);
          OUTLINED_FUNCTION_17_3();
          swift_unknownObjectRelease();
          v60 = OUTLINED_FUNCTION_2_12();
          v61(v60);
          v62 = OUTLINED_FUNCTION_10_4();
          v63(v62);
          v64 = v109;
          v65 = v88;
          *v88 = v108;
          *(v65 + 16) = v64;
          goto LABEL_13;
        case 3:
          LOBYTE(v108) = 3;
          sub_1B1E3FA50();
          OUTLINED_FUNCTION_4_10(&type metadata for VoiceShortcutClientRequest.DaemonConfigurationCodingKeys, &v108);
          sub_1B1E42134();
          OUTLINED_FUNCTION_14_7(&type metadata for VoiceShortcutClientRequest.DaemonConfiguration, v58);
          OUTLINED_FUNCTION_17_3();
          swift_unknownObjectRelease();
          v66 = OUTLINED_FUNCTION_2_12();
          v67(v66);
          v68 = OUTLINED_FUNCTION_10_4();
          v69(v68);
          v65 = v89;
LABEL_13:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_16();
          v74 = v35;
          sub_1B1E42188(v65, v35, v82);
          v76 = v107;
          break;
        default:
          LOBYTE(v108) = 0;
          sub_1B1E3FCCC();
          OUTLINED_FUNCTION_4_10(&type metadata for VoiceShortcutClientRequest.AutomationsCodingKeys, &v108);
          type metadata accessor for VoiceShortcutClientRequest.Automations(0);
          sub_1B1E42290(&qword_1EB784F38, &protocol conformance descriptor for VoiceShortcutClientRequest.Automations);
          v47 = v90;
          sub_1B1F1B200();
          swift_unknownObjectRelease();
          v70 = OUTLINED_FUNCTION_2_12();
          v71(v70);
          v72 = OUTLINED_FUNCTION_13_4();
          v73(v72, v38);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_16();
          v74 = v35;
          sub_1B1E42188(v47, v35, v75);
          v46 = v106;
          v76 = v107;
          break;
      }

      OUTLINED_FUNCTION_1_16();
      sub_1B1E42188(v74, v46, v83);
      v56 = v76;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B1E405F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E406B8(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B1E406EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_24_4(a1);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E40780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E405F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E407A8(uint64_t a1)
{
  v2 = sub_1B1E422D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E407E4(uint64_t a1)
{
  v2 = sub_1B1E422D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E40820(uint64_t a1)
{
  v2 = sub_1B1E42328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E4085C(uint64_t a1)
{
  v2 = sub_1B1E42328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E40898(uint64_t a1)
{
  v2 = sub_1B1E423D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E408D4(uint64_t a1)
{
  v2 = sub_1B1E423D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutResponse.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F40, &qword_1B1F2F598);
  OUTLINED_FUNCTION_0();
  v32 = v5;
  v33 = v4;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F48, &qword_1B1F2F5A0);
  OUTLINED_FUNCTION_0();
  v24 = v10;
  v25 = v9;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F50, &qword_1B1F2F5A8);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = *v0;
  v30 = v0[1];
  v31 = v17;
  v19 = v0[2];
  v18 = v0[3];
  v20 = v0[5];
  v28 = v0[4];
  v29 = v18;
  v26 = v0[6];
  v27 = v20;
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_1B1E422D4();
  sub_1B1F1B830();
  if (v19)
  {
    LOBYTE(v35) = 1;
    sub_1B1E42328();
    v21 = v34;
    sub_1B1F1B240();
    v35 = v31;
    v36 = v30;
    v37 = v19;
    v38 = v29;
    v39 = v28;
    v40 = v27;
    v41 = v26;
    sub_1B1E4237C();
    v22 = v33;
    sub_1B1F1B2B0();
    (*(v32 + 8))(v8, v22);
    (*(v13 + 8))(v16, v21);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_1B1E423D0();
    v23 = v34;
    sub_1B1F1B240();
    (*(v24 + 8))(v1, v25);
    (*(v13 + 8))(v16, v23);
  }

  OUTLINED_FUNCTION_35();
}

void VoiceShortcutResponse.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v48 = v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F78, &qword_1B1F2F5B0);
  OUTLINED_FUNCTION_0();
  v47 = v4;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F80, &qword_1B1F2F5B8);
  OUTLINED_FUNCTION_0();
  v46 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F88, &qword_1B1F2F5C0);
  OUTLINED_FUNCTION_0();
  v49 = v12;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42[-v14];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_1B1E422D4();
  sub_1B1F1B810();
  if (v0)
  {
    goto LABEL_8;
  }

  v44 = v6;
  v45 = v10;
  v56 = v2;
  sub_1B1F1B210();
  sub_1B1E32BFC();
  if (v17 == v18 >> 1)
  {
LABEL_7:
    v24 = sub_1B1F1AFE0();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v26 = &type metadata for VoiceShortcutResponse;
    v27 = sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8(v27);
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = OUTLINED_FUNCTION_12_5();
    v29(v28);
    v2 = v56;
LABEL_8:
    v30 = v2;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_35();
    return;
  }

  if (v17 < (v18 >> 1))
  {
    v43 = *(v16 + v17);
    sub_1B1E32BF8();
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    if (v20 == v22 >> 1)
    {
      if (v43)
      {
        LOBYTE(v51) = 1;
        sub_1B1E42328();
        sub_1B1F1B180();
        v23 = v48;
        sub_1B1E42424();
        sub_1B1F1B200();
        v32 = v49;
        swift_unknownObjectRelease();
        v35 = OUTLINED_FUNCTION_27_2();
        v36(v35);
        (*(v32 + 8))(v15, v11);
        v37 = v51;
        v38 = v52;
        v39 = v53;
        v40 = v54;
        v41 = v55;
      }

      else
      {
        LOBYTE(v51) = 0;
        sub_1B1E423D0();
        v31 = v45;
        sub_1B1F1B180();
        v23 = v48;
        swift_unknownObjectRelease();
        (*(v46 + 8))(v31, v44);
        v33 = OUTLINED_FUNCTION_12_5();
        v34(v33);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v37 = 0uLL;
        v41 = 0uLL;
      }

      *v23 = v37;
      *(v23 + 16) = v38;
      *(v23 + 24) = v39;
      *(v23 + 32) = v40;
      *(v23 + 40) = v41;
      v30 = v56;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B1E41194(uint64_t a1)
{
  sub_1B1F1B7C0();
  sub_1B1E00CC0(v3, *v1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E411F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E405F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E41254@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E33B60();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E41288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B1E412DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B1E4137C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_17_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B1E413B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B1E41408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B1E4145C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1B1F1B7C0();
  a4(v7, a2[2], a2[3], a2[4]);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E414DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B1E41530(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void VoiceShortcutResponseWithValue.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v42 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = OUTLINED_FUNCTION_32_1();
  type metadata accessor for VoiceShortcutResponseWithValue.ErrorCodingKeys(v9, v10, v11, v12);
  OUTLINED_FUNCTION_8_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_1();
  sub_1B1F1B2C0();
  OUTLINED_FUNCTION_0();
  v40 = v14;
  v41 = v13;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v43 = v16;
  v17 = OUTLINED_FUNCTION_32_1();
  type metadata accessor for VoiceShortcutResponseWithValue.SuccessCodingKeys(v17, v18, v19, v20);
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_1();
  sub_1B1F1B2C0();
  OUTLINED_FUNCTION_0();
  v38 = v22;
  v39 = v21;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v36 = v24;
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_3();
  v35 = v27 - v26;
  v28 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_30_1();
  type metadata accessor for VoiceShortcutResponseWithValue.CodingKeys(255, v7, v6, v8);
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  sub_1B1F1B2C0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  sub_1B1F1B830();
  (*(v28 + 16))(v1, v42, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B1F1B240();
    sub_1B1E4237C();
    sub_1B1F1B2B0();
    (*(v40 + 8))(v43, v41);
    v31 = OUTLINED_FUNCTION_28_2();
    v32(v31);
  }

  else
  {
    (*(v37 + 32))(v35, v1, v7);
    sub_1B1F1B240();
    sub_1B1F1B2B0();
    (*(v38 + 8))(v36, v39);
    (*(v37 + 8))(v35, v7);
    v33 = OUTLINED_FUNCTION_28_2();
    v34(v33);
  }

  OUTLINED_FUNCTION_35();
}

void VoiceShortcutResponseWithValue.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v91 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v86 = v10;
  v11 = type metadata accessor for VoiceShortcutResponseWithValue.ErrorCodingKeys(255, v6, v4, v2);
  OUTLINED_FUNCTION_8_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_1();
  v84 = v11;
  v83 = v12;
  v77 = sub_1B1F1B220();
  OUTLINED_FUNCTION_0();
  v76 = v13;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v85 = v15;
  v16 = OUTLINED_FUNCTION_20_4();
  v20 = type metadata accessor for VoiceShortcutResponseWithValue.SuccessCodingKeys(v16, v17, v18, v19);
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_1();
  v81 = v20;
  v80 = v21;
  v75 = sub_1B1F1B220();
  OUTLINED_FUNCTION_0();
  v74 = v22;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v82 = v24;
  v25 = OUTLINED_FUNCTION_20_4();
  type metadata accessor for VoiceShortcutResponseWithValue.CodingKeys(v25, v26, v27, v28);
  OUTLINED_FUNCTION_6_9();
  WitnessTable = swift_getWitnessTable();
  sub_1B1F1B220();
  OUTLINED_FUNCTION_0();
  v88 = v29;
  v89 = v30;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30_1();
  v78 = v7;
  v79 = v5;
  v32 = type metadata accessor for VoiceShortcutResponseWithValue(0, v7, v5, v3);
  OUTLINED_FUNCTION_0();
  v87 = v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_26_1();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v72 - v39;
  v98 = v9;
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v41 = v91;
  sub_1B1F1B810();
  if (!v41)
  {
    v91 = v7;
    v73 = v37;
    WitnessTable = v40;
    v42 = v88;
    *&v92 = sub_1B1F1B210();
    sub_1B1F1A9F0();
    swift_getWitnessTable();
    *&v96 = sub_1B1F1AEF0();
    *(&v96 + 1) = v43;
    *&v97 = v44;
    *(&v97 + 1) = v45;
    sub_1B1F1AEE0();
    swift_getWitnessTable();
    sub_1B1F1ACB0();
    v46 = v92;
    if (v92 == 2 || (v72 = v96, v92 = v96, v93 = v97, (sub_1B1F1ACC0() & 1) == 0))
    {
      v53 = sub_1B1F1AFE0();
      swift_allocError();
      v55 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
      *v55 = v32;
      v56 = sub_1B1F1B190();
      OUTLINED_FUNCTION_15_8(v56);
      (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
      swift_willThrow();
      (*(v89 + 8))(v1, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v46)
      {
        LOBYTE(v92) = 1;
        v47 = v85;
        OUTLINED_FUNCTION_33_1(v84, &v92, v42, v84);
        v48 = v86;
        v49 = v87;
        v50 = v89;
        sub_1B1E42424();
        v51 = v47;
        v52 = v77;
        sub_1B1F1B200();
        OUTLINED_FUNCTION_13_2();
        v60(v51, v52);
        v61 = OUTLINED_FUNCTION_19_4();
        v62(v61);
        OUTLINED_FUNCTION_16_5();
        swift_unknownObjectRelease();
        v63 = v94;
        v64 = v93;
        v65 = v73;
        *v73 = v92;
        v65[1] = v64;
        *(v65 + 4) = v63;
        *(v65 + 40) = v95;
        swift_storeEnumTagMultiPayload();
        v66 = *(v49 + 32);
        v67 = OUTLINED_FUNCTION_22_4();
        v66(v67);
      }

      else
      {
        LOBYTE(v92) = 0;
        v57 = v82;
        OUTLINED_FUNCTION_33_1(v81, &v92, v42, v81);
        v50 = v89;
        v58 = v87;
        v59 = v75;
        sub_1B1F1B200();
        OUTLINED_FUNCTION_13_2();
        v68(v57, v59);
        v69 = OUTLINED_FUNCTION_19_4();
        v70(v69);
        OUTLINED_FUNCTION_16_5();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v66 = *(v58 + 32);
        v71 = OUTLINED_FUNCTION_22_4();
        v66(v71);
        v48 = v86;
      }

      (v66)(v48, v50, v32);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v98);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E42134()
{
  result = qword_1EB784F20;
  if (!qword_1EB784F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F20);
  }

  return result;
}

uint64_t sub_1B1E42188(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1B1E421E8()
{
  result = qword_1EB784F28;
  if (!qword_1EB784F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F28);
  }

  return result;
}

unint64_t sub_1B1E4223C()
{
  result = qword_1EB784F30;
  if (!qword_1EB784F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F30);
  }

  return result;
}

uint64_t sub_1B1E42290(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoiceShortcutClientRequest.Automations(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E422D4()
{
  result = qword_1EB784F58;
  if (!qword_1EB784F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F58);
  }

  return result;
}

unint64_t sub_1B1E42328()
{
  result = qword_1EB784F60;
  if (!qword_1EB784F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F60);
  }

  return result;
}

unint64_t sub_1B1E4237C()
{
  result = qword_1EB784F68;
  if (!qword_1EB784F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F68);
  }

  return result;
}

unint64_t sub_1B1E423D0()
{
  result = qword_1EB784F70;
  if (!qword_1EB784F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F70);
  }

  return result;
}

unint64_t sub_1B1E42424()
{
  result = qword_1EB784F90;
  if (!qword_1EB784F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F90);
  }

  return result;
}

uint64_t sub_1B1E424D8(uint64_t a1)
{
  result = type metadata accessor for VoiceShortcutClientRequest.Automations(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient0aB8ResponseO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B1E42588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E425D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double sub_1B1E42638(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B1E42680(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E426EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 56;
  if (*(v3 + 64) > 0x38uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1B1E42810(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x38)
  {
    v5 = 56;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1B1E429D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VoiceShortcutClientRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E42BDC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E42C8C()
{
  result = qword_1EB7851A8;
  if (!qword_1EB7851A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851A8);
  }

  return result;
}

unint64_t sub_1B1E42CE4()
{
  result = qword_1EB7851B0;
  if (!qword_1EB7851B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851B0);
  }

  return result;
}

unint64_t sub_1B1E42D3C()
{
  result = qword_1EB7851B8;
  if (!qword_1EB7851B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851B8);
  }

  return result;
}

unint64_t sub_1B1E42D94()
{
  result = qword_1EB7851C0;
  if (!qword_1EB7851C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851C0);
  }

  return result;
}

unint64_t sub_1B1E42DEC()
{
  result = qword_1EB7851C8;
  if (!qword_1EB7851C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851C8);
  }

  return result;
}

unint64_t sub_1B1E42E44()
{
  result = qword_1EB7851D0;
  if (!qword_1EB7851D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851D0);
  }

  return result;
}

unint64_t sub_1B1E42E9C()
{
  result = qword_1EB7851D8;
  if (!qword_1EB7851D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851D8);
  }

  return result;
}

unint64_t sub_1B1E42FF0()
{
  result = qword_1EB7851E0;
  if (!qword_1EB7851E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851E0);
  }

  return result;
}

unint64_t sub_1B1E43048()
{
  result = qword_1EB7851E8;
  if (!qword_1EB7851E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851E8);
  }

  return result;
}

unint64_t sub_1B1E430A0()
{
  result = qword_1EB7851F0;
  if (!qword_1EB7851F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851F0);
  }

  return result;
}

unint64_t sub_1B1E430F8()
{
  result = qword_1EB7851F8;
  if (!qword_1EB7851F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851F8);
  }

  return result;
}

unint64_t sub_1B1E43150()
{
  result = qword_1EB785200;
  if (!qword_1EB785200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785200);
  }

  return result;
}

unint64_t sub_1B1E431A8()
{
  result = qword_1EB785208;
  if (!qword_1EB785208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785208);
  }

  return result;
}

unint64_t sub_1B1E43200()
{
  result = qword_1EB785210;
  if (!qword_1EB785210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785210);
  }

  return result;
}

unint64_t sub_1B1E43258()
{
  result = qword_1EB785218;
  if (!qword_1EB785218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785218);
  }

  return result;
}

unint64_t sub_1B1E432B0()
{
  result = qword_1EB785220;
  if (!qword_1EB785220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785220);
  }

  return result;
}

unint64_t sub_1B1E43308()
{
  result = qword_1EB785228;
  if (!qword_1EB785228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785228);
  }

  return result;
}

unint64_t sub_1B1E43360()
{
  result = qword_1EB785230;
  if (!qword_1EB785230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785230);
  }

  return result;
}

unint64_t sub_1B1E433B8()
{
  result = qword_1EB785238;
  if (!qword_1EB785238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785238);
  }

  return result;
}

unint64_t sub_1B1E43410()
{
  result = qword_1EB785240;
  if (!qword_1EB785240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785240);
  }

  return result;
}

unint64_t sub_1B1E43468()
{
  result = qword_1EB785248;
  if (!qword_1EB785248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785248);
  }

  return result;
}

unint64_t sub_1B1E434C0()
{
  result = qword_1EB785250;
  if (!qword_1EB785250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785250);
  }

  return result;
}

unint64_t sub_1B1E43518()
{
  result = qword_1EB785258;
  if (!qword_1EB785258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785258);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1)
{

  return sub_1B1F1AFD0();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1)
{

  return sub_1B1F1B510();
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B240();
}

uint64_t static LNSystemEntityValueType.supportedValueTypeIdentifiers.getter()
{
  sub_1B1E438F8();
  v0 = sub_1B1F1AE50();
  v1 = *(v0 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B1E3B244(0, v1, 0);
    v2 = v23;
    result = sub_1B1E4393C(v0);
    v5 = result;
    v6 = v0 + 64;
    v7 = v1 - 1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v0 + 32))
      {
        if ((*(v6 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_18;
        }

        if (v4 != *(v0 + 36))
        {
          goto LABEL_19;
        }

        v20 = v7;
        v21 = v4;
        v8 = (*(v0 + 48) + 16 * v5);
        v10 = *v8;
        v9 = v8[1];
        v22 = v2;
        v11 = *(*(v0 + 56) + 8 * v5);
        sub_1B1F1A760();
        v12 = v11;
        v13 = [v12 bundleIdentifier];
        v14 = sub_1B1F1A890();
        v16 = v15;

        sub_1B1F1A760();
        MEMORY[0x1B273D1A0](46, 0xE100000000000000);

        sub_1B1F1A760();
        MEMORY[0x1B273D1A0](v10, v9);

        sub_1B1F1A760();
        MEMORY[0x1B273D1A0](0x797469746E45, 0xE600000000000000);
        v2 = v22;

        v18 = *(v22 + 16);
        v17 = *(v22 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_1B1E3B244(v17 > 1, v18 + 1, 1);
          v2 = v22;
        }

        *(v2 + 16) = v18 + 1;
        v19 = v2 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        if (v5 >= -(-1 << *(v0 + 32)))
        {
          goto LABEL_20;
        }

        v6 = v0 + 64;
        if ((*(v0 + 64 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_21;
        }

        if (v21 != *(v0 + 36))
        {
          goto LABEL_22;
        }

        result = sub_1B1F1AF30();
        if (!v20)
        {

          return v2;
        }

        v5 = result;
        v4 = *(v0 + 36);
        v7 = v20 - 1;
        if (result < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1B1E438F8()
{
  result = qword_1EB785260;
  if (!qword_1EB785260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB785260);
  }

  return result;
}

uint64_t CodableError.errorDomain.getter()
{
  v1 = *(v0 + 8);
  sub_1B1F1A760();
  return v1;
}

uint64_t CodableError.localizedDescription.getter()
{
  v1 = *(v0 + 24);
  sub_1B1F1A760();
  return v1;
}

uint64_t CodableError.localizedFailureReason.getter()
{
  v1 = *(v0 + 40);
  sub_1B1F1A760();
  return v1;
}

void CodableError.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B1F1A1B0();
  v18 = [v4 code];
  v5 = [v4 domain];
  v6 = sub_1B1F1A890();
  v8 = v7;

  v9 = [v4 localizedDescription];
  v10 = sub_1B1F1A890();
  v12 = v11;

  v13 = [v4 localizedFailureReason];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1B1F1A890();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  *a2 = v18;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v15;
  a2[6] = v17;
}

uint64_t sub_1B1E43B38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001B1F390E0 == a2;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000001B1F39100 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B1F1B510();

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

unint64_t sub_1B1E43CA8(char a1)
{
  result = 0x646F43726F727265;
  switch(a1)
  {
    case 1:
      result = 0x6D6F44726F727265;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E43D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E43B38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E43D74(uint64_t a1)
{
  v2 = sub_1B1E43FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E43DB0(uint64_t a1)
{
  v2 = sub_1B1E43FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785268, &qword_1B1F30390);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  v10 = v1[1];
  v11 = v1[3];
  v14[4] = v1[2];
  v14[5] = v10;
  v12 = v1[5];
  v14[2] = v1[4];
  v14[3] = v11;
  v14[0] = v1[6];
  v14[1] = v12;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E43FAC();
  sub_1B1F1B830();
  v18 = 0;
  sub_1B1F1B290();
  if (!v2)
  {
    v17 = 1;
    OUTLINED_FUNCTION_1_17();
    sub_1B1F1B270();
    v16 = 2;
    OUTLINED_FUNCTION_1_17();
    sub_1B1F1B270();
    v15 = 3;
    OUTLINED_FUNCTION_1_17();
    sub_1B1F1B250();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1B1E43FAC()
{
  result = qword_1EB785270;
  if (!qword_1EB785270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785270);
  }

  return result;
}

uint64_t CodableError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785278, &qword_1B1F30398);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E43FAC();
  sub_1B1F1B810();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  OUTLINED_FUNCTION_0_15();
  v11 = sub_1B1F1B1E0();
  v30 = 1;
  OUTLINED_FUNCTION_0_15();
  v12 = sub_1B1F1B1C0();
  v15 = v14;
  v26 = v12;
  v29 = 2;
  OUTLINED_FUNCTION_0_15();
  v25 = sub_1B1F1B1C0();
  v27 = v16;
  v28 = 3;
  OUTLINED_FUNCTION_0_15();
  v17 = sub_1B1F1B1A0();
  v19 = v18;
  v20 = *(v7 + 8);
  v24 = v17;
  v20(v10, v5);
  v21 = v25;
  v22 = v26;
  *a2 = v11;
  a2[1] = v22;
  a2[2] = v15;
  a2[3] = v21;
  v23 = v24;
  a2[4] = v27;
  a2[5] = v23;
  a2[6] = v19;
  sub_1B1F1A760();
  sub_1B1F1A760();
  sub_1B1F1A760();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B1E44270(uint64_t a1)
{
  v2 = sub_1B1E445A0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1E442AC(uint64_t a1)
{
  v2 = sub_1B1E445A0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1E44320(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B1E44360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E4449C()
{
  result = qword_1EB785280;
  if (!qword_1EB785280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785280);
  }

  return result;
}

unint64_t sub_1B1E444F4()
{
  result = qword_1EB785288;
  if (!qword_1EB785288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785288);
  }

  return result;
}

unint64_t sub_1B1E4454C()
{
  result = qword_1EB785290;
  if (!qword_1EB785290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785290);
  }

  return result;
}

unint64_t sub_1B1E445A0()
{
  result = qword_1EB785298;
  if (!qword_1EB785298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785298);
  }

  return result;
}

uint64_t sub_1B1E445F8()
{
  sub_1B1F1AFA0();

  v1 = (v0 + *(type metadata accessor for Queue.Job(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v3 = 0xEA00000000003E6CLL;
    v2 = 0x6562616C206F6E3CLL;
  }

  sub_1B1F1A760();
  MEMORY[0x1B273D1A0](v2, v3);

  MEMORY[0x1B273D1A0](1029990688, 0xE400000000000000);
  sub_1B1F1A350();
  sub_1B1E47954();
  v4 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v4);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0x62616C20626F4A3CLL;
}

uint64_t Queue.__allocating_init()()
{
  v0 = swift_allocObject();
  Queue.init()();
  return v0;
}

uint64_t Queue.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v0);
  v33 = &v29 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A0, &qword_1B1F30638);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A8, &qword_1B1F30640);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B0, &qword_1B1F30648);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  type metadata accessor for Queue.Job(0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8650], v2);
  v30 = v12;
  sub_1B1F1AA90();
  (*(v4 + 8))(v7, v2);
  v22 = v32;
  (*(v9 + 16))(v34 + OBJC_IVAR____TtC19VoiceShortcutClient5Queue_taskStreamContinuation, v12, v32);
  v23 = sub_1B1F1AA80();
  v24 = v33;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v23);
  v25 = v31;
  (*(v14 + 16))(v19, v21, v31);
  v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v14 + 32))(v27 + v26, v19, v25);
  sub_1B1E459C8(0, 0, v24, &unk_1B1F30658, v27);

  sub_1B1E05950(v24);
  (*(v9 + 8))(v30, v22);
  (*(v14 + 8))(v21, v25);
  return v34;
}

uint64_t sub_1B1E44B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for Queue.Job(0);
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852C0, &qword_1B1F306F8);
  v4[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB7852C8, &unk_1B1F30700);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_1B1F1A500();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E44CE8, 0, 0);
}

uint64_t sub_1B1E44CE8()
{
  v0[17] = "ToolKitSync";
  if (qword_1ED84F030 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED84F030);
  }

  v1 = qword_1ED84F038;
  v2 = swift_task_alloc();
  *(v2 + 16) = "ToolKitSync";
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_1B1E07904;
  *(v3 + 24) = v2;

  os_unfair_lock_lock(v1 + 4);
  sub_1B1E07944(v4);
  os_unfair_lock_unlock(v1 + 4);

  v5 = sub_1B1F1A4E0();
  v6 = sub_1B1F1AD00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1DE3000, v5, v6, "queue: queue started", v7, 2u);
    OUTLINED_FUNCTION_5();
  }

  v8 = v0[16];
  v9 = v0[11];
  v10 = v0[12];

  v11 = *(v10 + 8);
  v0[18] = v11;
  v11(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B0, &qword_1B1F30648);
  sub_1B1F1AB00();
  v0[19] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[20] = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_2_14(v12);

  return MEMORY[0x1EEE6D9C8](v14);
}

uint64_t sub_1B1E44EF4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B1E44FDC()
{
  v45 = v0;
  v1 = v0[7];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v0[3]);
  v3 = v0[19];
  v4 = v0[17];
  if (EnumTagSinglePayload == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v5 = qword_1ED84F038;
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    v7 = swift_task_alloc();
    *(v7 + 16) = sub_1B1E07904;
    *(v7 + 24) = v6;
    v8 = v5 + 4;

    os_unfair_lock_lock(v5 + 4);
    sub_1B1E07944(v9);
    if (!v3)
    {
      os_unfair_lock_unlock(v5 + 4);

      v10 = sub_1B1F1A4E0();
      v11 = sub_1B1F1AD00();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1B1DE3000, v10, v11, "queue: queue finished", v12, 2u);
        OUTLINED_FUNCTION_5();
      }

      v13 = v0[18];
      v14 = v0[15];
      v15 = v0[11];

      v13(v14, v15);

      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_16_6();

      __asm { BRAA            X1, X16 }
    }

    goto LABEL_9;
  }

  sub_1B1E479AC(v1, v0[6]);
  v18 = qword_1ED84F038;
  v19 = swift_task_alloc();
  *(v19 + 16) = v4;
  v20 = swift_task_alloc();
  *(v20 + 16) = sub_1B1E07904;
  *(v20 + 24) = v19;
  v8 = v18 + 4;

  os_unfair_lock_lock(v18 + 4);
  sub_1B1E07944(v21);
  if (v3)
  {
LABEL_9:
    os_unfair_lock_unlock(v8);
    OUTLINED_FUNCTION_16_6();
  }

  v25 = v0[5];
  v24 = v0[6];
  os_unfair_lock_unlock(v18 + 4);

  sub_1B1E47548(v24, v25);
  v26 = sub_1B1F1A4E0();
  v27 = sub_1B1F1AD00();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[18];
  v30 = v0[5];
  if (v28)
  {
    v31 = swift_slowAlloc();
    v43 = v29;
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136315138;
    v33 = sub_1B1E445F8();
    v35 = v34;
    sub_1B1E475AC(v30);
    v36 = sub_1B1DF61DC(v33, v35, &v44);

    *(v31 + 4) = v36;
    OUTLINED_FUNCTION_17_4(&dword_1B1DE3000, v37, v38, "queue: executing job: %s");
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();

    v39 = OUTLINED_FUNCTION_14_8();
    v43(v39);
  }

  else
  {

    sub_1B1E475AC(v30);
    v40 = OUTLINED_FUNCTION_14_8();
    v29(v40);
  }

  v41 = swift_task_alloc();
  v0[21] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  *v41 = v0;
  v41[1] = sub_1B1E4546C;
  OUTLINED_FUNCTION_16_6();

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_1B1E4546C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1E45568()
{
  v30 = v0;
  v1 = v0[22];
  v2 = v0[17];
  v3 = qword_1ED84F038;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1B1E07904;
  *(v5 + 24) = v4;

  os_unfair_lock_lock(v3 + 4);
  sub_1B1E07944(v6);
  if (v1)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {
    v8 = v0[6];
    v9 = v0[4];
    os_unfair_lock_unlock(v3 + 4);

    sub_1B1E47548(v8, v9);
    v10 = sub_1B1F1A4E0();
    v11 = sub_1B1F1AD00();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[18];
    v14 = v0[4];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v28 = v13;
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      v17 = sub_1B1E445F8();
      v19 = v18;
      sub_1B1E475AC(v14);
      v20 = sub_1B1DF61DC(v17, v19, &v29);

      *(v15 + 4) = v20;
      OUTLINED_FUNCTION_17_4(&dword_1B1DE3000, v21, v22, "queue: executed job: %s");
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5();

      v23 = OUTLINED_FUNCTION_14_8();
      v28(v23);
    }

    else
    {

      sub_1B1E475AC(v14);
      v24 = OUTLINED_FUNCTION_14_8();
      v13(v24);
    }

    sub_1B1E475AC(v0[6]);
    v0[19] = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v0[20] = v25;
    *v25 = v26;
    v27 = OUTLINED_FUNCTION_2_14(v25);

    return MEMORY[0x1EEE6D9C8](v27);
  }
}

uint64_t sub_1B1E457E8()
{
  v1 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1B1E475AC(v1);

  OUTLINED_FUNCTION_2_0();

  return v2();
}

uint64_t sub_1B1E458DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B0, &qword_1B1F30648);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1B1E05D18;
  v3 = OUTLINED_FUNCTION_4_11();

  return sub_1B1E44B1C(v3, v4, v5, v6);
}

uint64_t sub_1B1E459C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1B1E058E0(a3, v21 - v9);
  v11 = sub_1B1F1AA80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1E05950(v10);
  }

  else
  {
    sub_1B1F1AA70();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1B1F1AA20();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1B1F1A8E0() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t Queue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A8, &qword_1B1F30640);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC19VoiceShortcutClient5Queue_taskStreamContinuation;
  (*(v4 + 16))(&v11 - v6, v1 + OBJC_IVAR____TtC19VoiceShortcutClient5Queue_taskStreamContinuation, v2);
  sub_1B1F1AAE0();
  v9 = *(v4 + 8);
  v9(v7, v2);
  v9((v1 + v8), v2);
  return v1;
}

uint64_t Queue.__deallocating_deinit()
{
  Queue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Queue.enqueue(label:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B8, &qword_1B1F30660);
  OUTLINED_FUNCTION_0();
  v53 = v8;
  v54 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v48 - v10;
  sub_1B1F1A500();
  OUTLINED_FUNCTION_0();
  v50 = v12;
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Queue.Job(0);
  v16 = v15 - 8;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v48 - v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - v26;
  v28 = sub_1B1F1AA80();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a3;
  v29[5] = a4;

  v30 = sub_1B1E46490(0, 0, v27, &unk_1B1F30670, v29);
  sub_1B1F1A340();
  v31 = (v24 + *(v16 + 32));
  *v31 = v49;
  v31[1] = a2;
  *v24 = v30;
  v32 = qword_1ED84F030;
  v33 = sub_1B1F1A760();
  if (v32 != -1)
  {
    v33 = OUTLINED_FUNCTION_1_1(&qword_1ED84F030);
  }

  v34 = qword_1ED84F038;
  v35 = MEMORY[0x1EEE9AC00](v33);
  *(&v48 - 2) = "ToolKitSync";
  MEMORY[0x1EEE9AC00](v35);
  *(&v48 - 2) = sub_1B1DE7A98;
  *(&v48 - 1) = v36;

  os_unfair_lock_lock(v34 + 4);
  sub_1B1DE7A64(v37);
  os_unfair_lock_unlock(v34 + 4);

  sub_1B1E47548(v24, v22);
  v38 = sub_1B1F1A4E0();
  v39 = sub_1B1F1AD00();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v55 = v41;
    *v40 = 136315138;
    v42 = sub_1B1E445F8();
    v44 = v43;
    sub_1B1E475AC(v22);
    v45 = sub_1B1DF61DC(v42, v44, &v55);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1B1DE3000, v38, v39, "queue: enqueuing job: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  else
  {

    sub_1B1E475AC(v22);
  }

  (*(v50 + 8))(v14, v51);
  sub_1B1E47548(v24, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A8, &qword_1B1F30640);
  v46 = v52;
  sub_1B1F1AAD0();
  (*(v53 + 8))(v46, v54);
  return sub_1B1E475AC(v24);
}

uint64_t sub_1B1E46218(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B1E46300;

  return v7();
}

uint64_t sub_1B1E46300()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_1B1E463E0()
{
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1B1E05D18;
  v5 = OUTLINED_FUNCTION_4_11();

  return sub_1B1E46218(v5, v6, v7, v2);
}

uint64_t sub_1B1E46490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1B1E058E0(a3, v21 - v9);
  v11 = sub_1B1F1AA80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1E05950(v10);
  }

  else
  {
    sub_1B1F1AA70();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1B1F1AA20();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1B1F1A8E0() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1B1E05950(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B1E05950(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t Queue.enqueueAndWait<A>(label:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  OUTLINED_FUNCTION_5_1();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B1E46718()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v12 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v12;
  *(v3 + 56) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 80) = v5;
  *v5 = v6;
  v5[1] = sub_1B1E46818;
  OUTLINED_FUNCTION_5_1();

  return sub_1B1E47314(v7, v8, v9, v10, v3);
}

uint64_t sub_1B1E46818()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_2_0();

    return v10();
  }
}

uint64_t sub_1B1E46938()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_2_0();

  return v0();
}

uint64_t sub_1B1E46994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v50 = a4;
  v57 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B8, &qword_1B1F30660);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v48 - v12;
  v13 = sub_1B1F1A500();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Queue.Job(0);
  v17 = v16 - 8;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v51 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v48 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v48 - v26;
  v28 = sub_1B1F1AA80();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v49;
  v29[5] = a1;
  v29[6] = a2;
  v29[7] = a3;

  v30 = sub_1B1E46490(0, 0, v27, &unk_1B1F306F0, v29);
  sub_1B1F1A340();
  v31 = (v24 + *(v17 + 32));
  *v31 = v50;
  v31[1] = a5;
  *v24 = v30;
  v32 = qword_1ED84F030;
  v33 = sub_1B1F1A760();
  if (v32 != -1)
  {
    v33 = swift_once();
  }

  v34 = qword_1ED84F038;
  v35 = MEMORY[0x1EEE9AC00](v33);
  *(&v48 - 2) = "ToolKitSync";
  MEMORY[0x1EEE9AC00](v35);
  *(&v48 - 2) = sub_1B1E07904;
  *(&v48 - 1) = v36;

  os_unfair_lock_lock(v34 + 4);
  sub_1B1E07944(v37);
  os_unfair_lock_unlock(v34 + 4);

  sub_1B1E47548(v24, v22);
  v38 = sub_1B1F1A4E0();
  v39 = sub_1B1F1AD00();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v58 = v41;
    *v40 = 136315138;
    v42 = sub_1B1E445F8();
    v44 = v43;
    sub_1B1E475AC(v22);
    v45 = sub_1B1DF61DC(v42, v44, &v58);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1B1DE3000, v38, v39, "queue: enqueuing waiting job: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1B273F720](v41, -1, -1);
    MEMORY[0x1B273F720](v40, -1, -1);
  }

  else
  {

    sub_1B1E475AC(v22);
  }

  (*(v52 + 8))(v15, v53);
  sub_1B1E47548(v24, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A8, &qword_1B1F30640);
  v46 = v54;
  sub_1B1F1AAD0();
  (*(v55 + 8))(v46, v56);
  return sub_1B1E475AC(v24);
}

uint64_t sub_1B1E46EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a4;
  v7[4] = a7;
  v9 = swift_task_alloc();
  v7[5] = v9;
  v12 = (a5 + *a5);
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_1B1E46FD4;

  return v12(v9);
}

uint64_t sub_1B1E46FD4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1E470D0()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1E47208(v2, v3, v1);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_1B1E47168()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[7];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1E47280((v0 + 2), v1, v2, v3, MEMORY[0x1E69E7288]);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_1B1E47208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return MEMORY[0x1EEE6DEE0](a2);
}

uint64_t sub_1B1E47280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocError();
  (*(*(a4 - 8) + 32))(v9, a1, a4);

  return MEMORY[0x1EEE6DEE8](a2, v8);
}

uint64_t sub_1B1E47314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B1F1AA20();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B1E473A8, v6, v8);
}

uint64_t sub_1B1E473A8()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B1E4744C;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1E4744C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1B1E47548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Queue.Job(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E475AC(uint64_t a1)
{
  v2 = type metadata accessor for Queue.Job(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B1E47640(uint64_t a1)
{
  sub_1B1E476FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B1E476FC(uint64_t a1)
{
  if (!qword_1EB783258)
  {
    type metadata accessor for Queue.Job(255);
    v1 = sub_1B1F1AAF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB783258);
    }
  }
}

void sub_1B1E4777C(uint64_t a1)
{
  sub_1B1E47818(319);
  if (v1 <= 0x3F)
  {
    sub_1B1F1A350();
    if (v2 <= 0x3F)
    {
      sub_1B1E36AB8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B1E47818(uint64_t a1)
{
  if (!qword_1EB783250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
    v1 = sub_1B1F1AB40();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB783250);
    }
  }
}

uint64_t sub_1B1E47890()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1B1E05460;
  v8 = OUTLINED_FUNCTION_4_11();

  return sub_1B1E46EAC(v8, v9, v10, v3, v5, v4, v2);
}

unint64_t sub_1B1E47954()
{
  result = qword_1EB783AC8;
  if (!qword_1EB783AC8)
  {
    sub_1B1F1A350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AC8);
  }

  return result;
}

uint64_t sub_1B1E479AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Queue.Job(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_17_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1B1E47A38()
{
  v0 = swift_slowAlloc();
  xpc_connection_get_audit_token();
  return *v0;
}

double sub_1B1E47A78@<D0>(uint64_t a3@<X8>)
{
  v4 = swift_slowAlloc();
  xpc_connection_get_audit_token();
  v5 = v4[1];
  *v11.val = *v4;
  *&v11.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &v11);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B1F1A860();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, 0);

    if (v9)
    {
      *(a3 + 24) = swift_getObjectType();

      *a3 = v9;
      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t XPCIncomingConnection.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t XPCIncomingConnection.description.getter()
{
  sub_1B1F1AFA0();

  v1 = *(v0 + 16);
  xpc_connection_get_pid(v1);
  v2 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v2);

  MEMORY[0x1B273D1A0](8250, 0xE200000000000000);
  v3 = MEMORY[0x1B273FA10](v1);
  v4 = sub_1B1F1A920();
  v6 = v5;
  MEMORY[0x1B273F720](v3, -1, -1);
  MEMORY[0x1B273D1A0](v4, v6);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t sub_1B1E47D6C(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v6[2] = *(*v2 + 80);
  v6[3] = a2;
  v6[4] = a1;
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  v4 = sub_1B1F1A7C0();

  sub_1B1E49E44(sub_1B1E49FCC, v6, v3, v4, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B1E47E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B1F1AAF0();
  v6 = sub_1B1F1AEB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = sub_1B1F1A350();
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  (*(v7 + 16))(v9, a3, v6);
  sub_1B1DF7854();
  sub_1B1F1A7C0();
  return sub_1B1F1A7E0();
}

uint64_t sub_1B1E47FE8(uint64_t a1)
{
  v2 = v1[2];
  v5[2] = *(*v1 + 80);
  v5[3] = a1;
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  v3 = sub_1B1F1A7C0();

  sub_1B1E49E44(sub_1B1E49FB0, v5, v2, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B1E480AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B1F1AAF0();
  v5 = sub_1B1F1AEB0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  v8 = sub_1B1F1A350();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v4);
  sub_1B1DF7854();
  sub_1B1F1A7C0();
  return sub_1B1F1A7E0();
}

uint64_t sub_1B1E48218()
{
  v1 = v0[2];
  v5[2] = *(*v0 + 80);
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  v2 = sub_1B1F1A7C0();
  v3 = sub_1B1F1A770();

  sub_1B1E49E44(sub_1B1E49F94, v5, v1, v2, v3);

  return v5[5];
}

uint64_t sub_1B1E48300@<X0>(uint64_t *a3@<X8>)
{
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  result = sub_1B1F1A790();
  *a3 = result;
  return result;
}

uint64_t sub_1B1E48378()
{
  v1 = sub_1B1F1AAC0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9[-v2];
  v4 = sub_1B1F1A350();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B1F1A340();
  v10 = v0;
  v11 = v7;
  sub_1B1E48754(v3);
  sub_1B1F1AB20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B1E484E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v20 = a3;
  v18[1] = a1;
  v5 = *a2;
  v6 = sub_1B1F1A350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v19 = *(v5 + 80);
  v9 = sub_1B1F1AAF0();
  v10 = sub_1B1F1AEB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - v12;
  (*(*(v9 - 8) + 16))(v18 - v12, a1, v9);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
  v14 = v20;
  sub_1B1E47D6C(v13, v20);
  (*(v11 + 8))(v13, v10);
  (*(v7 + 16))(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  *(v16 + 24) = a2;
  (*(v7 + 32))(v16 + v15, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  return sub_1B1F1AAB0();
}

uint64_t sub_1B1E48754@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8650];
  v4 = sub_1B1F1AAC0();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_1B1E487CC(uint64_t a1)
{
  sub_1B1E48218();
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  sub_1B1F1A770();
  swift_getWitnessTable();
  sub_1B1F1A970();
}

uint64_t sub_1B1E488AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1F1AAA0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  (*(v5 + 16))(v7, a2, a3);
  sub_1B1F1AAF0();
  sub_1B1F1AAD0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B1E48A34()
{
  sub_1B1E48218();
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  sub_1B1F1A770();
  swift_getWitnessTable();
  sub_1B1F1A970();
}

uint64_t *sub_1B1E48B78()
{
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  v3 = sub_1B1F1A6E0();
  v1 = sub_1B1F1A7C0();
  *(v0 + 16) = sub_1B1DF78B4(&v3, v1);
  return v0;
}

uint64_t *ToManyStream.init()@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for ToManyStream.Factory(0, a1, a3, a4);
  result = sub_1B1E48B44();
  *a2 = result;
  return result;
}

uint64_t sub_1B1E48CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v6[2] = *(*v2 + 80);
  v6[3] = a2;
  v6[4] = a1;
  sub_1B1F1A350();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1DF7854();
  v4 = sub_1B1F1A7C0();
  sub_1B1E49E44(sub_1B1E49F74, v6, v3, v4, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B1E48DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v6 = sub_1B1F1ABC0();
  v7 = sub_1B1F1AEB0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1B1F1A350();
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  (*(*(v6 - 8) + 16))(v9, a3, v6);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v6);
  sub_1B1DF7854();
  sub_1B1F1A7C0();
  return sub_1B1F1A7E0();
}

uint64_t sub_1B1E48F80(uint64_t a1)
{
  v2 = v1[2];
  v5[2] = *(*v1 + 80);
  v5[3] = a1;
  sub_1B1F1A350();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1DF7854();
  v3 = sub_1B1F1A7C0();
  sub_1B1E49E44(sub_1B1E49F58, v5, v2, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B1E49060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v4 = sub_1B1F1ABC0();
  v5 = sub_1B1F1AEB0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  v8 = sub_1B1F1A350();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v4);
  sub_1B1DF7854();
  sub_1B1F1A7C0();
  return sub_1B1F1A7E0();
}

uint64_t sub_1B1E491F0()
{
  v1 = v0[2];
  v5[2] = *(*v0 + 80);
  sub_1B1F1A350();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1DF7854();
  v2 = sub_1B1F1A7C0();
  v3 = sub_1B1F1A9F0();
  sub_1B1E49E44(sub_1B1E49E28, v5, v1, v2, v3);

  return v5[5];
}

uint64_t sub_1B1E492E0@<X0>(uint64_t *a3@<X8>)
{
  sub_1B1F1A350();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1DF7854();
  sub_1B1F1A790();
  sub_1B1F1A770();
  swift_getWitnessTable();
  result = sub_1B1F1AA00();
  *a3 = result;
  return result;
}

uint64_t sub_1B1E493D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v1 = sub_1B1F1AB90();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9[-v2];
  v4 = sub_1B1F1A350();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B1F1A340();
  v10 = v0;
  v11 = v7;
  sub_1B1E4977C(v3);
  sub_1B1F1ABD0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B1E4955C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = sub_1B1F1A350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B1E48CD4(a1, a3);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(v5 + 80);
  *(v11 + 24) = v9;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  return sub_1B1F1AB80();
}

uint64_t sub_1B1E4971C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1E48F80(a3);
  }

  return result;
}

uint64_t sub_1B1E4977C@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v4 = sub_1B1F1AB90();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_1B1E49820(uint64_t a1)
{
  sub_1B1E491F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1F1A9F0();
  swift_getWitnessTable();
  sub_1B1F1A970();
}

uint64_t sub_1B1E49904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = a1;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v8 = sub_1B1F1AB70();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  (*(v5 + 16))(v7, a2, a3);
  sub_1B1F1ABC0();
  sub_1B1F1ABA0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B1E49AC4(uint64_t a1)
{
  sub_1B1E491F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1F1A9F0();
  swift_getWitnessTable();
  sub_1B1F1A970();
}

uint64_t sub_1B1E49BA8(int a1, id a2, uint64_t a3)
{
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  return sub_1B1F1ABB0();
}

uint64_t sub_1B1E49C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1B1E49D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B1E49ED0(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_1B1E4A02C(uint64_t a1)
{
  v3 = *(sub_1B1F1A350() - 8);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1B1E4971C(a1, v4, v5);
}

uint64_t objectdestroy_10Tm()
{
  v1 = sub_1B1F1A350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B1E4A224()
{
  v0 = sub_1B1F1A200();
  v16 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v17[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B1F1ACF0();
  sub_1B1E4F2C8(&qword_1EB783AF8, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1B1F1AEC0();
    if (!v20)
    {
      break;
    }

    sub_1B1E077D8(&v19, v18);
    sub_1B1DF63A0(v18, v17);
    sub_1B1DEA98C(0, &qword_1EB7835E0, 0x1E69635F8);
    swift_dynamicCast();
    v4 = v21;
    v5 = [v21 bundleIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1B1F1A890();
      v9 = v8;

      v10 = [v4 persistentIdentifier];
      __swift_destroy_boxed_opaque_existential_1(v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1E2B2C8();
        v3 = v13;
      }

      v11 = *(v3 + 16);
      if (v11 >= *(v3 + 24) >> 1)
      {
        sub_1B1E2B2C8();
        v3 = v14;
      }

      *(v3 + 16) = v11 + 1;
      v12 = (v3 + 24 * v11);
      v12[4] = v7;
      v12[5] = v9;
      v12[6] = v10;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  (*(v16 + 8))(v2, v0);
  return v3;
}

VoiceShortcutClient::LaunchServicesSnapshot::State __swiftcall LaunchServicesSnapshot.State.init(bundleId:persistentIdentifier:)(Swift::String bundleId, __C::LSPersistentIdentifier persistentIdentifier)
{
  *v2 = bundleId;
  *(v2 + 16) = persistentIdentifier;
  result.bundleId = bundleId;
  result.persistentIdentifier = persistentIdentifier;
  return result;
}

uint64_t static LaunchServicesSnapshot.State.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1B1F1B510() & 1) == 0)
  {
    return 0;
  }

  sub_1B1F1A290();
  v3 = sub_1B1F1A290();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_28_3();
  v7 = MEMORY[0x1B273CB00](v6);
  sub_1B1E03C48(v3, v5);
  v8 = OUTLINED_FUNCTION_28_3();
  sub_1B1E03C48(v8, v9);
  return v7 & 1;
}

uint64_t sub_1B1E4A590(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B1F39270 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E4A660(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_1B1E4A6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E4A590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E4A6CC(uint64_t a1)
{
  v2 = sub_1B1E4F274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E4A708(uint64_t a1)
{
  v2 = sub_1B1E4F274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LaunchServicesSnapshot.State.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853D0, &qword_1B1F308B0);
  OUTLINED_FUNCTION_0();
  v9 = v5;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E4F274();
  sub_1B1F1B830();
  sub_1B1F1B270();
  if (!v0)
  {
    OUTLINED_FUNCTION_33_2();
    type metadata accessor for LSPersistentIdentifier(0);
    OUTLINED_FUNCTION_14_9();
    sub_1B1E4F2C8(v7, v8, &protocol conformance descriptor for LSPersistentIdentifier);
    OUTLINED_FUNCTION_31_1();
    sub_1B1F1B2B0();
  }

  (*(v9 + 8))(v1, v4);
  OUTLINED_FUNCTION_35();
}

uint64_t LaunchServicesSnapshot.State.hash(into:)(uint64_t a1)
{
  sub_1B1F1A900();
  sub_1B1F1A290();
  OUTLINED_FUNCTION_6_8();
  sub_1B1F1A2A0();
  v1 = OUTLINED_FUNCTION_28_3();

  return sub_1B1E03C48(v1, v2);
}

uint64_t LaunchServicesSnapshot.State.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  sub_1B1F1A900();
  sub_1B1F1A290();
  sub_1B1F1A2A0();
  v1 = OUTLINED_FUNCTION_6_8();
  sub_1B1E03C48(v1, v2);
  return sub_1B1F1B7F0();
}

void LaunchServicesSnapshot.State.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853E0, &qword_1B1F308B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44(v25, v25[3]);
  sub_1B1E4F274();
  sub_1B1F1B810();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v29 = sub_1B1F1B1C0();
    v31 = v30;
    type metadata accessor for LSPersistentIdentifier(0);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_14_9();
    sub_1B1E4F2C8(v32, v33, &protocol conformance descriptor for LSPersistentIdentifier);
    OUTLINED_FUNCTION_36_0();
    sub_1B1F1B200();
    v34 = OUTLINED_FUNCTION_30_2();
    v35(v34);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v37;
    sub_1B1F1A760();
    v36 = v37;
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E4ABC8(uint64_t a1)
{
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v1 = sub_1B1F1A290();
  v3 = v2;
  sub_1B1F1A2A0();
  sub_1B1E03C48(v1, v3);
  return sub_1B1F1B7F0();
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.uuid.getter()
{
  sub_1B1F1A350();
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_6_8();

  return v1(v0);
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.init(uuid:sequenceNumber:)()
{
  OUTLINED_FUNCTION_24_5();
  v3 = v2;
  sub_1B1F1A350();
  OUTLINED_FUNCTION_10();
  (*(v4 + 32))(v3, v1);
  result = OUTLINED_FUNCTION_10_5();
  *(v3 + v6) = v0;
  return result;
}

BOOL static LaunchServicesSnapshot.DatabaseVersion.== infix(_:_:)()
{
  OUTLINED_FUNCTION_24_5();
  if ((sub_1B1F1A310() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_29_2();
  return v0 != 0;
}

uint64_t sub_1B1E4AD68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEE007265626D754ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E4AE38(char a1)
{
  if (a1)
  {
    return 0x65636E6575716573;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_1B1E4AE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E4AD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E4AEA4(uint64_t a1)
{
  v2 = sub_1B1E4F330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E4AEE0(uint64_t a1)
{
  v2 = sub_1B1E4F330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853E8, &qword_1B1F308C0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  OUTLINED_FUNCTION_44(a1, a1[3]);
  sub_1B1E4F330();
  sub_1B1F1B830();
  v12[15] = 0;
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v9, v10, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_37_0();
  sub_1B1F1B2B0();
  if (!v1)
  {
    type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
    OUTLINED_FUNCTION_33_2();
    sub_1B1F1B290();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.hash(into:)(uint64_t a1)
{
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v2, v3, MEMORY[0x1E69695B8]);
  sub_1B1F1A800();
  OUTLINED_FUNCTION_10_5();
  return MEMORY[0x1B273E060](*(v1 + v4));
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v2, v3, MEMORY[0x1E69695B8]);
  sub_1B1F1A800();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x1B273E060](*(v1 + v4));
  return sub_1B1F1B7F0();
}

void LaunchServicesSnapshot.DatabaseVersion.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34();
  v24 = v23;
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0();
  v41 = v26;
  v42 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_3();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853F0, &qword_1B1F308C8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  v31 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_3();
  v35 = v34 - v33;
  OUTLINED_FUNCTION_44(v24, v24[3]);
  sub_1B1E4F330();
  sub_1B1F1B810();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    sub_1B1E4F2C8(v36, v37, MEMORY[0x1E69695D0]);
    OUTLINED_FUNCTION_37_0();
    sub_1B1F1B200();
    (*(v41 + 32))(v35, v29, v42);
    OUTLINED_FUNCTION_33_2();
    v38 = sub_1B1F1B1E0();
    v39 = OUTLINED_FUNCTION_32_2();
    v40(v39);
    *(v35 + *(v31 + 20)) = v38;
    sub_1B1E4F588();
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_1B1E4F5E0(v35, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E4B4A4(uint64_t a1, uint64_t a2)
{
  sub_1B1F1B7C0();
  sub_1B1F1A350();
  sub_1B1E4F2C8(&qword_1ED84EFE8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B1F1A800();
  MEMORY[0x1B273E060](*(v2 + *(a2 + 20)));
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E4B570()
{
  OUTLINED_FUNCTION_8_8();

  return sub_1B1F1A760();
}

uint64_t LaunchServicesSnapshot.init(version:state:)()
{
  OUTLINED_FUNCTION_24_5();
  v3 = v2;
  sub_1B1E4F588();
  v4 = sub_1B1E4B618(v0);

  sub_1B1E4F5E0(v1, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  result = OUTLINED_FUNCTION_8_8();
  *(v3 + v6) = v4;
  return result;
}

void *sub_1B1E4B618(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 48);
  v3 = MEMORY[0x1E69E7CC8];
  if (!v1)
  {
    return v3;
  }

  while (1)
  {
    v5 = *(v2 - 2);
    v4 = *(v2 - 1);
    v6 = *v2;
    v7 = v3[2];
    sub_1B1F1A760();
    v8 = v6;
    if (v7)
    {
      sub_1B1DEBED8(v5, v4);
      if (v9)
      {
        break;
      }
    }

    sub_1B1F1A760();
    v10 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1B1DEBED8(v5, v4);
    if (__OFADD__(v3[2], (v12 & 1) == 0))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      break;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7854D0, &qword_1B1F310F8);
    if (sub_1B1F1B0C0())
    {
      v15 = sub_1B1DEBED8(v5, v4);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_17;
      }

      v13 = v15;
    }

    if (v14)
    {
      v17 = (v3[7] + 24 * v13);
      v18 = v17[2];
      *v17 = v5;
      v17[1] = v4;
      v17[2] = v10;
    }

    else
    {
      v3[(v13 >> 6) + 8] |= 1 << v13;
      v19 = (v3[6] + 16 * v13);
      *v19 = v5;
      v19[1] = v4;
      v20 = (v3[7] + 24 * v13);
      *v20 = v5;
      v20[1] = v4;
      v20[2] = v10;

      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_15;
      }

      v3[2] = v23;
    }

    v2 += 3;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_17:
  result = sub_1B1F1B720();
  __break(1u);
  return result;
}

uint64_t LaunchServicesSnapshot.init(version:stateByBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B1E4F3A4(a1, a3);
  result = OUTLINED_FUNCTION_8_8();
  *(a3 + v6) = a2;
  return result;
}

uint64_t LaunchServicesSnapshot.setting(stateByContainerId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_10();
  sub_1B1E4F588();
  OUTLINED_FUNCTION_8_8();
  *(a2 + v4) = a1;

  return sub_1B1F1A760();
}

uint64_t static LaunchServicesSnapshot.== infix(_:_:)()
{
  OUTLINED_FUNCTION_24_5();
  if ((sub_1B1F1A310() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_29_2();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_8();
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);

  return sub_1B1E38FD4(v4, v5);
}

uint64_t sub_1B1E4B8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4279426574617473 && a2 == 0xEF6449656C646E75)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E4B9AC(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_35_0(a1);
  MEMORY[0x1B273E060](v1 & 1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E4B9EC(char a1)
{
  if (a1)
  {
    return 0x4279426574617473;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1B1E4BA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E4B8DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E4BA60(uint64_t a1)
{
  v2 = sub_1B1E4F408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E4BA9C(uint64_t a1)
{
  v2 = sub_1B1E4F408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LaunchServicesSnapshot.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853F8, &qword_1B1F308D0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_44(a1, a1[3]);
  sub_1B1E4F408();
  sub_1B1F1B830();
  type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  OUTLINED_FUNCTION_15_9();
  sub_1B1E4F2C8(v8, v9, &protocol conformance descriptor for LaunchServicesSnapshot.DatabaseVersion);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_31_1();
  sub_1B1F1B2B0();
  if (!v1)
  {
    type metadata accessor for LaunchServicesSnapshot(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785408, &qword_1B1F308D8);
    sub_1B1E4F4B0(&qword_1EB785410, sub_1B1E4F45C, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    OUTLINED_FUNCTION_31_1();
    sub_1B1F1B2B0();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t LaunchServicesSnapshot.hash(into:)(const void *a1)
{
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v3, v4, MEMORY[0x1E69695B8]);
  sub_1B1F1A800();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x1B273E060](*(v1 + v5));
  OUTLINED_FUNCTION_8_8();
  v7 = *(v1 + v6);

  return sub_1B1E3BDC0(a1, v7);
}

uint64_t LaunchServicesSnapshot.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v2, v3, MEMORY[0x1E69695B8]);
  sub_1B1F1A800();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x1B273E060](*(v1 + v4));
  OUTLINED_FUNCTION_8_8();
  sub_1B1E3BDC0(v7, *(v1 + v5));
  return sub_1B1F1B7F0();
}

void LaunchServicesSnapshot.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v22[1] = v3;
  type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_3();
  v25 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785420, &qword_1B1F308E0);
  OUTLINED_FUNCTION_0();
  v23 = v8;
  v24 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v12 = type metadata accessor for LaunchServicesSnapshot(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_3();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E4F408();
  sub_1B1F1B810();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v17 = v16;
    v18 = v23;
    OUTLINED_FUNCTION_15_9();
    sub_1B1E4F2C8(v19, v20, &protocol conformance descriptor for LaunchServicesSnapshot.DatabaseVersion);
    OUTLINED_FUNCTION_37_0();
    v21 = v24;
    sub_1B1F1B200();
    sub_1B1E4F3A4(v25, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785408, &qword_1B1F308D8);
    OUTLINED_FUNCTION_33_2();
    sub_1B1E4F4B0(&qword_1EB783288, sub_1B1E4F534, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    OUTLINED_FUNCTION_36_0();
    sub_1B1F1B200();
    (*(v18 + 8))(v11, v21);
    *(v17 + *(v12 + 20)) = v26;
    sub_1B1E4F588();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1B1E4F5E0(v17, type metadata accessor for LaunchServicesSnapshot);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t static LaunchServicesSnapshot.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  v5 = OUTLINED_FUNCTION_8(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  result = static LaunchServicesSnapshot.DatabaseVersion.current.getter(v2);
  if (!v1)
  {
    sub_1B1E4F588();
    v7 = sub_1B1E4B618(MEMORY[0x1E69E7CC0]);
    sub_1B1E4F5E0(v2, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
    result = type metadata accessor for LaunchServicesSnapshot(0);
    *(a1 + *(result + 20)) = v7;
  }

  return result;
}

uint64_t sub_1B1E4C1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B1E05460;

  return static LaunchServicesSnapshot.partial(_:failIfContainerNotFound:)(a1, a2, v4);
}

uint64_t static LaunchServicesSnapshot.partial(_:failIfContainerNotFound:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return OUTLINED_FUNCTION_16_7();
}

uint64_t sub_1B1E4C280()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785428, &qword_1B1F308F0);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = type metadata accessor for LaunchServicesSnapshot(0);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 40) = v6;
  *v6 = v7;
  v6[1] = sub_1B1E4C390;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v8, v3, v5, 0, 0, &unk_1B1F30900, v4, v3);
}

uint64_t sub_1B1E4C390()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B1E4C4B4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_2_0();

    return v7();
  }
}

uint64_t sub_1B1E4C4B4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_2_0();

  return v0();
}

uint64_t sub_1B1E4C510()
{
  OUTLINED_FUNCTION_1();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v3[1] = sub_1B1E05D18;

  return static LaunchServicesSnapshot.complete()(v1);
}

uint64_t sub_1B1E4C5B0()
{
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785430, &qword_1B1F30910);
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = type metadata accessor for LaunchServicesSnapshot(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v1 + 24) = v4;
  *v4 = v5;
  v4[1] = sub_1B1E4C694;
  v6 = *(v1 + 16);

  return MEMORY[0x1EEE6DD58](v6, v0, v3, 0, 0, &unk_1B1F30920, 0, v0);
}

uint64_t sub_1B1E4C694()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B1E4C7B0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_2_0();

    return v7();
  }
}

BOOL LaunchServicesSnapshot.isEqualInProvenance(to:)()
{
  if ((sub_1B1F1A310() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_29_2();
  return v0 != 0;
}

uint64_t sub_1B1E4C858(uint64_t a1, uint64_t a2)
{
  sub_1B1F1B7C0();
  sub_1B1F1A350();
  sub_1B1E4F2C8(&qword_1ED84EFE8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B1F1A800();
  v4 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  MEMORY[0x1B273E060](*(v2 + *(v4 + 20)));
  sub_1B1E3BDC0(v6, *(v2 + *(a2 + 20)));
  return sub_1B1F1B7F0();
}

unint64_t LaunchServicesSnapshot.debugDescription.getter()
{
  v1 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  sub_1B1F1AFA0();

  OUTLINED_FUNCTION_3_10();
  sub_1B1E4F588();
  v2 = sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v3, v4, MEMORY[0x1E69695E0]);
  v5 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v5);

  (*(*(v2 - 8) + 8))(v0, v2);
  MEMORY[0x1B273D1A0](1031151660, 0xE400000000000000);
  v6 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v6);

  MEMORY[0x1B273D1A0](2113065, 0xE300000000000000);
  OUTLINED_FUNCTION_8_8();
  sub_1B1F1A760();
  v7 = sub_1B1F1A740();
  MEMORY[0x1B273D1A0](v7);

  MEMORY[0x1B273D1A0](0x73656C646E756220, 0xE800000000000000);
  return 0xD00000000000001DLL;
}

uint64_t static LaunchServicesSnapshot.DatabaseVersion.current.getter@<X0>(uint64_t a1@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultWorkspace];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v9 = 0;
  v10[0] = 0;
  [v2 getKnowledgeUUID:v10 andSequenceNumber:&v9];

  v4 = v10[0];
  if (v10[0] && v9)
  {
    v5 = v9;
    v6 = v4;
    v7 = [v5 integerValue];
    sub_1B1F1A320();

    result = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
    *(a1 + *(result + 20)) = v7;
  }

  else
  {
    sub_1B1E4F770();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B1E4CC54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 200) = a4;
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7854B8, &qword_1B1F310E0);
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E4CDA4, 0, 0);
}

uint64_t sub_1B1E4CDA4()
{
  static LaunchServicesSnapshot.DatabaseVersion.current.getter(*(v0 + 168));
  v1 = *(v0 + 112);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v32 = *(v0 + 200);
  v5 = -1;
  v6 = -1 << *(*(v0 + 112) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v34 = *(v0 + 112);
  v9 = sub_1B1F1A760();
  v12 = 0;
  v33 = v3;
  v31 = v8;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8C8](v9, v10, v11);
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v12;
    if (v7)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v15 = *(v0 + 144);
        v14 = *(v0 + 152);
        v16 = (*(v34 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v7)))));
        v17 = *v16;
        v18 = v16[1];
        v19 = sub_1B1F1AA80();
        __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        *(v20 + 32) = v17;
        *(v20 + 40) = v18;
        *(v20 + 48) = v32;
        OUTLINED_FUNCTION_28_3();
        sub_1B1E503C0();
        LODWORD(v15) = __swift_getEnumTagSinglePayload(v15, 1, v19);
        sub_1B1F1A760();
        v21 = *(v0 + 144);
        if (v15 == 1)
        {
          sub_1B1E0BDB8(*(v0 + 144), &qword_1EB783E48, &qword_1B1F30630);
        }

        else
        {
          sub_1B1F1AA70();
          (*(*(v19 - 8) + 8))(v21, v19);
        }

        if (*(v20 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_1B1F1AA20();
          v24 = v23;
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v25 = **(v0 + 104);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785428, &qword_1B1F308F0);
        v26 = v24 | v22;
        if (v24 | v22)
        {
          v26 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v22;
          *(v0 + 40) = v24;
        }

        v27 = *(v0 + 152);
        v7 &= v7 - 1;
        *(v0 + 48) = 1;
        *(v0 + 56) = v26;
        *(v0 + 64) = v25;
        swift_task_create();

        v9 = sub_1B1E0BDB8(v27, &qword_1EB783E48, &qword_1B1F30630);
        v3 = v33;
        v8 = v31;
      }

      while (v7);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785428, &qword_1B1F308F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1AB50();
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  sub_1B1E504D0(&qword_1EB7854C0, &qword_1EB7854B8, &qword_1B1F310E0);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 184) = v28;
  *v28 = v29;
  v9 = OUTLINED_FUNCTION_9_9(v28);

  return MEMORY[0x1EEE6D8C8](v9, v10, v11);
}

uint64_t sub_1B1E4D1D0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  v3[24] = v0;

  if (v0)
  {
    (*(v3[16] + 8))(v3[17], v3[15]);

    v7 = sub_1B1E4D5BC;
  }

  else
  {
    v7 = sub_1B1E4D2F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B1E4D2F4()
{
  v1 = *(v0 + 80);
  if (v1 == 1)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 168);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    sub_1B1E50524(*(v0 + 72), *(v0 + 80), *(v0 + 88));
    sub_1B1E4DAB4(v3);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    if (v2)
    {
      OUTLINED_FUNCTION_1_18();
      sub_1B1E4F5E0(v4, v6);

      OUTLINED_FUNCTION_19_5();
    }

    else
    {
      v19 = *(v0 + 160);
      v20 = *(v0 + 96);
      sub_1B1E4F588();
      sub_1B1E4F588();
      v21 = sub_1B1E4B618(v5);

      sub_1B1E4F5E0(v19, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
      sub_1B1E4F5E0(v4, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
      OUTLINED_FUNCTION_8_8();
      *(v20 + v22) = v21;

      OUTLINED_FUNCTION_6();
    }

    return v7();
  }

  else
  {
    v8 = *(v0 + 176);
    if (v1)
    {
      v9 = *(v0 + 72);
      v10 = *(v0 + 88);
      sub_1B1E50578(v9, *(v0 + 80), v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v0 + 176);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B1E2B2C8();
        v8 = v23;
      }

      v12 = *(v8 + 16);
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1B1E2B2C8();
        v8 = v24;
      }

      sub_1B1E50524(v9, v1, v10);
      *(v8 + 16) = v12 + 1;
      v13 = (v8 + 24 * v12);
      v13[4] = v9;
      v13[5] = v1;
      v13[6] = v10;
    }

    *(v0 + 176) = v8;
    sub_1B1E504D0(&qword_1EB7854C0, &qword_1EB7854B8, &qword_1B1F310E0);
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    *(v0 + 184) = v14;
    *v14 = v15;
    v16 = OUTLINED_FUNCTION_9_9(v14);

    return MEMORY[0x1EEE6D8C8](v16, v17, v18);
  }
}

uint64_t sub_1B1E4D5BC()
{
  OUTLINED_FUNCTION_1_18();
  sub_1B1E4F5E0(v0, v1);

  OUTLINED_FUNCTION_2_0();

  return v2();
}

uint64_t sub_1B1E4D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 40) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1E4D688, 0, 0);
}

uint64_t sub_1B1E4D688()
{
  OUTLINED_FUNCTION_15();
  sub_1B1DEA98C(0, &qword_1EB7854C8, 0x1E6963620);
  sub_1B1F1A760();
  v1 = OUTLINED_FUNCTION_6_8();
  v3 = sub_1B1E4D75C(v1, v2, 0);
  sub_1B1E4D844(v3, *(v0 + 16));
  OUTLINED_FUNCTION_6();

  return v4();
}

id sub_1B1E4D75C(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B1F1A860();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  return v5;
}

void sub_1B1E4D844(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 bundleIdentifier];
  if (v4)
  {
    v5 = sub_1B1F1A890();
    v7 = v6;

    v4 = [a1 persistentIdentifier];
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v4;
}

uint64_t sub_1B1E4D8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - v7;
  sub_1B1E503C0();
  v9 = sub_1B1F1AA80();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B1E0BDB8(v8, &qword_1EB783E48, &qword_1B1F30630);
  }

  else
  {
    sub_1B1F1AA70();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = sub_1B1F1AA20();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785430, &qword_1B1F30910);
  v14 = (v12 | v10);
  if (v12 | v10)
  {
    v17[0] = 0;
    v17[1] = 0;
    v14 = v17;
    v17[2] = v10;
    v17[3] = v12;
  }

  v16[1] = 1;
  v16[2] = v14;
  v16[3] = v13;
  swift_task_create();
}

void sub_1B1E4DAB4(uint64_t a1)
{
  v3 = sub_1B1F1A500();
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v38[-v11];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38[-v16];
  static LaunchServicesSnapshot.DatabaseVersion.current.getter(&v38[-v16]);
  if (!v1)
  {
    v45 = v15;
    v46 = v12;
    v41 = v9;
    v18 = sub_1B1F1A310();
    if ((v18 & 1) == 0 || *&v17[*(v6 + 20)] != *(a1 + *(v6 + 20)))
    {
      v43 = v3;
      if (qword_1ED84F030 != -1)
      {
        v18 = swift_once();
      }

      v44 = v38;
      v19 = qword_1ED84F038;
      v20 = MEMORY[0x1EEE9AC00](v18);
      v42 = v38;
      *&v38[-16] = "ToolKit";
      MEMORY[0x1EEE9AC00](v20);
      *&v38[-16] = sub_1B1DE7A98;
      *&v38[-8] = v21;

      os_unfair_lock_lock(v19 + 4);
      sub_1B1DE7A64(v22);
      v24 = v45;
      v23 = v46;
      os_unfair_lock_unlock(v19 + 4);

      sub_1B1E4F588();
      sub_1B1E4F588();
      v25 = sub_1B1F1A4E0();
      v26 = sub_1B1F1AD10();
      v44 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v48 = v40;
        *v27 = 136315394;
        v42 = v5;
        sub_1B1E4F588();
        v28 = sub_1B1F1A8D0();
        v39 = v26;
        v30 = v29;
        sub_1B1E4F5E0(v24, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
        v31 = sub_1B1DF61DC(v28, v30, &v48);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        sub_1B1E4F588();
        v32 = sub_1B1F1A8D0();
        v34 = v33;
        sub_1B1E4F5E0(v23, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
        v35 = sub_1B1DF61DC(v32, v34, &v48);

        *(v27 + 14) = v35;
        v36 = v44;
        _os_log_impl(&dword_1B1DE3000, v44, v39, "LS version changed while we were reading it. This might cause inconsistencies in our view of LS (before=%s, current=%s", v27, 0x16u);
        v37 = v40;
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v37, -1, -1);
        MEMORY[0x1B273F720](v27, -1, -1);

        (*(v47 + 8))(v42, v43);
      }

      else
      {

        sub_1B1E4F5E0(v23, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
        sub_1B1E4F5E0(v24, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
        (*(v47 + 8))(v5, v43);
      }

      sub_1B1E5036C();
      swift_allocError();
      swift_willThrow();
    }

    sub_1B1E4F5E0(v17, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  }
}

uint64_t sub_1B1E4DFCC()
{
  OUTLINED_FUNCTION_1();
  v0[3] = v1;
  v0[4] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7854A8, &unk_1B1F310A8);
  v0[5] = v3;
  v0[6] = *(v3 - 8);
  v0[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  OUTLINED_FUNCTION_8(v4);
  v0[8] = swift_task_alloc();
  v5 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  OUTLINED_FUNCTION_8(v5);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E4E0FC, 0, 0);
}

uint64_t sub_1B1E4E0FC()
{
  static LaunchServicesSnapshot.DatabaseVersion.current.getter(v0[10]);
  v1 = v0[8];
  sub_1B1F1AA80();
  OUTLINED_FUNCTION_41();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1B1E4D8DC(v1, &unk_1B1F310C0, v2);
  sub_1B1E0BDB8(v1, &qword_1EB783E48, &qword_1B1F30630);
  OUTLINED_FUNCTION_41();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1B1E4D8DC(v1, &unk_1B1F310D0, v3);
  sub_1B1E0BDB8(v1, &qword_1EB783E48, &qword_1B1F30630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785430, &qword_1B1F30910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  OUTLINED_FUNCTION_28_3();
  sub_1B1F1AB50();
  v0[11] = MEMORY[0x1E69E7CC0];
  v4 = sub_1B1E504D0(&qword_1EB783630, &qword_1EB7854A8, &unk_1B1F310A8);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[12] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_11_5(v5);

  return MEMORY[0x1EEE6D8C8](v0 + 2, v7, v4);
}

uint64_t sub_1B1E4E330()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    (*(v3[6] + 8))(v3[7], v3[5]);

    v7 = sub_1B1E4E720;
  }

  else
  {
    v7 = sub_1B1E4E454;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B1E4E454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  if (v4)
  {
    isUniquelyReferenced_nonNull_native = v3[11];
    v6 = *(v4 + 16);
    v7 = *(isUniquelyReferenced_nonNull_native + 16);
    if (__OFADD__(v7, v6))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v3[11];
      if (!isUniquelyReferenced_nonNull_native || v7 + v6 > *(v8 + 24) >> 1)
      {
        sub_1B1E2B2C8();
        v8 = isUniquelyReferenced_nonNull_native;
      }

      if (*(v4 + 16))
      {
        if ((*(v8 + 24) >> 1) - *(v8 + 16) >= v6)
        {
          swift_arrayInitWithCopy();

          if (!v6)
          {
            goto LABEL_14;
          }

          v9 = *(v8 + 16);
          v10 = __OFADD__(v9, v6);
          v11 = v9 + v6;
          if (!v10)
          {
            *(v8 + 16) = v11;
            goto LABEL_14;
          }

LABEL_24:
          __break(1u);
          return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_native, a2, a3);
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (!v6)
      {
LABEL_14:
        v3[11] = v8;
        v18 = sub_1B1E504D0(&qword_1EB783630, &qword_1EB7854A8, &unk_1B1F310A8);
        swift_task_alloc();
        OUTLINED_FUNCTION_24();
        v3[12] = v19;
        *v19 = v20;
        OUTLINED_FUNCTION_11_5(v19);
        isUniquelyReferenced_nonNull_native = (v3 + 2);
        a3 = v18;

        return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_native, a2, a3);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v12 = v3[13];
  v13 = v3[10];
  (*(v3[6] + 8))(v3[7], v3[5], a3);
  sub_1B1E4DAB4(v13);
  v15 = v3[10];
  v14 = v3[11];
  if (v12)
  {
    OUTLINED_FUNCTION_1_18();
    sub_1B1E4F5E0(v15, v16);

    OUTLINED_FUNCTION_19_5();
  }

  else
  {
    v21 = v3[9];
    v22 = v3[3];
    sub_1B1E4F588();
    sub_1B1E4F588();
    v23 = sub_1B1E4B618(v14);

    sub_1B1E4F5E0(v21, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
    sub_1B1E4F5E0(v15, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
    OUTLINED_FUNCTION_8_8();
    *(v22 + v24) = v23;

    OUTLINED_FUNCTION_6();
  }

  return v17();
}

uint64_t sub_1B1E4E720()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_18();
  sub_1B1E4F5E0(v0, v1);

  OUTLINED_FUNCTION_2_0();

  return v2();
}

uint64_t sub_1B1E4E7CC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() enumeratorWithOptions_];
  v3 = sub_1B1E4A224();

  *v1 = v3;
  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_1B1E4E890()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 16);
  sub_1B1E4E8EC();
  *v1 = v2;
  OUTLINED_FUNCTION_6();

  return v3();
}

void sub_1B1E4E8EC()
{
  sub_1B1DEA98C(0, &qword_1EB7835C8, 0x1E69635D0);
  v0 = sub_1B1F1AE60();
  v1 = sub_1B1DEBAA4(v0);
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v1 == v2)
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B273D840](v2, v0);
    }

    else
    {
      if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v0 + 8 * v2 + 32);
    }

    v5 = v4;
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v7 = [v4 bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1B1F1A890();
      v17 = v10;

      v16 = [v5 persistentIdentifier];
      v11 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1E2B2C8();
        v3 = v14;
      }

      v12 = *(v3 + 16);
      if (v12 >= *(v3 + 24) >> 1)
      {
        sub_1B1E2B2C8();
        v3 = v15;
      }

      *(v3 + 16) = v12 + 1;
      v13 = (v3 + 24 * v12);
      v13[4] = v11;
      v13[5] = v17;
      v13[6] = v16;
      v2 = v6;
    }

    else
    {

      ++v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1B1E4EAA0(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  MEMORY[0x1B273E060](0);
  return sub_1B1F1B7F0();
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.majorVersionEqual(to:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_25_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8(v3);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  v11 = v10 - v9;
  sub_1B1E503C0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1B1E0BDB8(v6, &qword_1EB785440, &qword_1B1F30928);
    v12 = 0;
  }

  else
  {
    sub_1B1E4F3A4(v6, v11);
    v12 = sub_1B1F1A310();
    OUTLINED_FUNCTION_1_18();
    sub_1B1E4F5E0(v11, v13);
  }

  return v12 & 1;
}

void *LSPersistentIdentifier.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_25_0();
  sub_1B1F1B800();
  if (!v1)
  {
    OUTLINED_FUNCTION_44(v7, v7[3]);
    sub_1B1E0EDAC();
    sub_1B1F1B520();
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_25_0();
    v3 = sub_1B1F1A250();
    v5 = OUTLINED_FUNCTION_25_0();
    sub_1B1E03C48(v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t LSPersistentIdentifier.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_25_0();
  sub_1B1F1B820();
  v4 = sub_1B1F1A290();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1B1E0EF20();
  sub_1B1F1B550();
  sub_1B1E03C48(v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *sub_1B1E4EDB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = LSPersistentIdentifier.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B1E4EE00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7854A0, &qword_1B1F310A0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785478, &unk_1B1F30CB0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-v10];
  v12 = OBJC_IVAR____TtCV19VoiceShortcutClient22LaunchServicesSnapshotP33_2DE8BE4BDEA9300B3DAFA689E06A50638Observer_continuation;
  swift_beginAccess();
  sub_1B1E503C0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    result = sub_1B1E0BDB8(v7, &qword_1EB7854A0, &qword_1B1F310A0);
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1B1F1AA40();
    (*(v9 + 8))(v11, v8);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
    swift_beginAccess();
    sub_1B1E501CC(v5, v1 + v12);
    return swift_endAccess();
  }

  return result;
}

id sub_1B1E4F06C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtCV19VoiceShortcutClient22LaunchServicesSnapshotP33_2DE8BE4BDEA9300B3DAFA689E06A50638Observer_continuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785478, &unk_1B1F30CB0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1B1E4F10C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1E4F1A0(uint64_t a1, uint64_t a2)
{
  sub_1B1F1A290();
  OUTLINED_FUNCTION_6_8();
  sub_1B1F1A2A0();
  v2 = OUTLINED_FUNCTION_28_3();

  return sub_1B1E03C48(v2, v3);
}

uint64_t sub_1B1E4F1F8(uint64_t a1, uint64_t a2)
{
  sub_1B1F1A890();
  sub_1B1F1A900();
}

unint64_t sub_1B1E4F274()
{
  result = qword_1EB7833F8;
  if (!qword_1EB7833F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833F8);
  }

  return result;
}

uint64_t sub_1B1E4F2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B1E4F330()
{
  result = qword_1EB783830;
  if (!qword_1EB783830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783830);
  }

  return result;
}

uint64_t sub_1B1E4F3A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E4F408()
{
  result = qword_1EB783418;
  if (!qword_1EB783418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783418);
  }

  return result;
}

unint64_t sub_1B1E4F45C()
{
  result = qword_1EB785418;
  if (!qword_1EB785418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785418);
  }

  return result;
}

uint64_t sub_1B1E4F4B0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785408, &qword_1B1F308D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E4F534()
{
  result = qword_1EB7833E0;
  if (!qword_1EB7833E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833E0);
  }

  return result;
}

uint64_t sub_1B1E4F588()
{
  OUTLINED_FUNCTION_24_5();
  v1(0);
  OUTLINED_FUNCTION_10();
  v2 = OUTLINED_FUNCTION_6_8();
  v3(v2);
  return v0;
}

uint64_t sub_1B1E4F5E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E4F638()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_2(v7);
  *v8 = v9;
  v8[1] = sub_1B1E05D18;

  return sub_1B1E4CC54(v4, v2, v5, v6);
}

uint64_t sub_1B1E4F6E4()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_0(v1);

  return sub_1B1E4DFCC();
}

unint64_t sub_1B1E4F770()
{
  result = qword_1EB785438;
  if (!qword_1EB785438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785438);
  }

  return result;
}

unint64_t sub_1B1E4F7C8()
{
  result = qword_1EB785448;
  if (!qword_1EB785448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785448);
  }

  return result;
}

unint64_t sub_1B1E4F870()
{
  result = qword_1EB785450;
  if (!qword_1EB785450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785450);
  }

  return result;
}

uint64_t sub_1B1E4F8C4(void *a1)
{
  a1[1] = sub_1B1E4F2C8(&qword_1EB7837D8, type metadata accessor for LaunchServicesSnapshot, &protocol conformance descriptor for LaunchServicesSnapshot);
  a1[2] = sub_1B1E4F2C8(&qword_1EB7837E0, type metadata accessor for LaunchServicesSnapshot, &protocol conformance descriptor for LaunchServicesSnapshot);
  a1[3] = sub_1B1E4F2C8(&qword_1EB783800, type metadata accessor for LaunchServicesSnapshot, &protocol conformance descriptor for LaunchServicesSnapshot);
  result = sub_1B1E4F2C8(&unk_1EB7837F0, type metadata accessor for LaunchServicesSnapshot, &protocol conformance descriptor for LaunchServicesSnapshot);
  a1[4] = result;
  return result;
}

void sub_1B1E4FA08(uint64_t a1)
{
  type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(319);
  if (v1 <= 0x3F)
  {
    sub_1B1E4FA8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1E4FA8C()
{
  if (!qword_1EB783290)
  {
    v0 = sub_1B1F1A7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB783290);
    }
  }
}

uint64_t sub_1B1E4FB24(uint64_t a1)
{
  result = sub_1B1F1A350();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1E4FBC0(uint64_t a1)
{
  sub_1B1E4FC50(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B1E4FC50(uint64_t a1)
{
  if (!qword_1EB785470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785478, &unk_1B1F30CB0);
    v1 = sub_1B1F1AEB0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB785470);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LaunchServicesSnapshot.DatabaseVersion.LaunchServicesError(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1B1E4FD80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E4FE60()
{
  result = qword_1EB785480;
  if (!qword_1EB785480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785480);
  }

  return result;
}

unint64_t sub_1B1E4FEB8()
{
  result = qword_1EB785488;
  if (!qword_1EB785488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785488);
  }

  return result;
}

unint64_t sub_1B1E4FF10()
{
  result = qword_1EB785490;
  if (!qword_1EB785490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785490);
  }

  return result;
}

unint64_t sub_1B1E4FF68()
{
  result = qword_1EB785498;
  if (!qword_1EB785498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785498);
  }

  return result;
}

unint64_t sub_1B1E4FFC0()
{
  result = qword_1EB783408;
  if (!qword_1EB783408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783408);
  }

  return result;
}

unint64_t sub_1B1E50018()
{
  result = qword_1EB783410;
  if (!qword_1EB783410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783410);
  }

  return result;
}

unint64_t sub_1B1E50070()
{
  result = qword_1EB783820;
  if (!qword_1EB783820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783820);
  }

  return result;
}

unint64_t sub_1B1E500C8()
{
  result = qword_1EB783828;
  if (!qword_1EB783828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783828);
  }

  return result;
}

unint64_t sub_1B1E50120()
{
  result = qword_1EB7833E8;
  if (!qword_1EB7833E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833E8);
  }

  return result;
}

unint64_t sub_1B1E50178()
{
  result = qword_1EB7833F0;
  if (!qword_1EB7833F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833F0);
  }

  return result;
}

uint64_t sub_1B1E501CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7854A0, &qword_1B1F310A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E5023C()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_0(v1);

  return sub_1B1E4E7AC(v3);
}

uint64_t sub_1B1E502D4()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_0(v1);

  return sub_1B1E4E870(v3);
}

unint64_t sub_1B1E5036C()
{
  result = qword_1EB7854B0;
  if (!qword_1EB7854B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7854B0);
  }

  return result;
}

uint64_t sub_1B1E503C0()
{
  OUTLINED_FUNCTION_24_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10();
  v3 = OUTLINED_FUNCTION_6_8();
  v4(v3);
  return v0;
}

uint64_t sub_1B1E50418()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_18_0(v7);

  return sub_1B1E4D660(v9, v1, v2, v3, v4, v5);
}

uint64_t sub_1B1E504D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1B1E50524(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 1)
  {
    sub_1B1E50534(a1, a2, a3);
  }
}

void sub_1B1E50534(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void sub_1B1E50578(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    sub_1B1F1A760();

    v3 = a3;
  }
}

void *OUTLINED_FUNCTION_35_0(uint64_t a1, ...)
{

  return sub_1B1F1B7C0();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t XPCSecureCodedArray.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t XPCSecureCodedArray.init(from:)(void *a1)
{
  sub_1B1E507D0();
  [swift_getObjCClassFromMetadata() classForCoder];
  v2 = sub_1B1E50814();
  v3 = OUTLINED_FUNCTION_13(&type metadata for XPCSecureCodingError, v2);
  OUTLINED_FUNCTION_0_17(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B1E507D0()
{
  result = qword_1EB7854E0;
  if (!qword_1EB7854E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7854E0);
  }

  return result;
}

unint64_t sub_1B1E50814()
{
  result = qword_1EB7854E8[0];
  if (!qword_1EB7854E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7854E8);
  }

  return result;
}

uint64_t XPCSecureCodedArray.encode(to:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1E50814();
  v3 = OUTLINED_FUNCTION_13(&type metadata for XPCSecureCodingError, v2);
  return OUTLINED_FUNCTION_0_17(v3, v4);
}

uint64_t XPCSecureCoded.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t XPCSecureCoded.init(from:)(void *a1)
{
  v2 = sub_1B1E50814();
  v3 = OUTLINED_FUNCTION_13(&type metadata for XPCSecureCodingError, v2);
  OUTLINED_FUNCTION_0_17(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t XPCSecureCoded.encode(to:)()
{
  v0 = sub_1B1E50814();
  v1 = OUTLINED_FUNCTION_13(&type metadata for XPCSecureCodingError, v0);
  return OUTLINED_FUNCTION_0_17(v1, v2);
}

uint64_t sub_1B1E509F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B1E50A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for XPCSecureCodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E50B7C()
{
  result = qword_1EB785650;
  if (!qword_1EB785650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785650);
  }

  return result;
}

uint64_t ToolKitIndexingReason.id.getter()
{
  OUTLINED_FUNCTION_87();
  sub_1B1F1A350();
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_6_8();

  return v1(v0);
}

uint64_t ToolKitIndexingReason.trigger.getter()
{
  v2 = OUTLINED_FUNCTION_87();
  v3 = v1 + *(type metadata accessor for ToolKitIndexingReason(v2) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v0 = *v3;
  *(v0 + 8) = v5;
  v6 = *(v3 + 16);
  *(v0 + 16) = v6;

  return sub_1B1E50C7C(v4, v5, v6);
}

uint64_t sub_1B1E50C7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return sub_1B1F1A760();
  }

  return result;
}

unint64_t ToolKitIndexingReason.changeset.getter()
{
  v2 = OUTLINED_FUNCTION_87();
  v3 = (v1 + *(type metadata accessor for ToolKitIndexingReason(v2) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;

  return sub_1B1E50CE0(v4, v5, v6);
}

unint64_t sub_1B1E50CE0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
    sub_1B1F1A760();
    sub_1B1F1A760();

    return sub_1B1F1A760();
  }

  return result;
}

uint64_t ToolKitIndexingReason.Trigger.debugDescription.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    OUTLINED_FUNCTION_62();
    sub_1B1F1AFA0();

    v10 = 0x286C61756E616D2ELL;
    if (v1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    MEMORY[0x1B273D1A0](v2, v3);

    goto LABEL_11;
  }

  if (*(v0 + 16) == 1)
  {
    v10 = 0x676E69747365742ELL;
    MEMORY[0x1B273D1A0](v1, v0[1]);
LABEL_11:
    MEMORY[0x1B273D1A0](41, 0xE100000000000000);
    return v10;
  }

  result = 0x6E5574737269662ELL;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_10_6();
      result = v5 - 5;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      OUTLINED_FUNCTION_10_6();
      result = v7 + 4;
      break;
    case 4:
      OUTLINED_FUNCTION_10_6();
      result = v6 + 5;
      break;
    case 5:
      OUTLINED_FUNCTION_10_6();
      result = v8 + 9;
      break;
    case 6:
      OUTLINED_FUNCTION_10_6();
      result = v9 - 4;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
    case 9:
      result = 0x657272656665642ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static ToolKitIndexingReason.Trigger.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v20 = OUTLINED_FUNCTION_6_8();
      sub_1B1E5120C(v20, v21, 0);
      v22 = OUTLINED_FUNCTION_43_0();
      sub_1B1E5120C(v22, v23, 0);
      v24 = v4 ^ v2 ^ 1;
      return v24 & 1;
    }

LABEL_19:
    v29 = OUTLINED_FUNCTION_43_0();
    sub_1B1E50C7C(v29, v30, v6);
    v31 = OUTLINED_FUNCTION_6_8();
    sub_1B1E5120C(v31, v32, v3);
    v33 = OUTLINED_FUNCTION_43_0();
    sub_1B1E5120C(v33, v34, v6);
    v24 = 0;
    return v24 & 1;
  }

  if (v3 != 1)
  {
    switch(v2)
    {
      case 1:
        if (v6 != 2 || v4 != 1 || v5 != 0)
        {
          goto LABEL_19;
        }

        v69 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v69, v70, 2);
        v24 = 1;
        v44 = 1;
        v45 = 0;
        v46 = 2;
        goto LABEL_22;
      case 2:
        if (v6 != 2 || v4 != 2 || v5 != 0)
        {
          goto LABEL_19;
        }

        v57 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v57, v58, 2);
        v28 = 2;
        break;
      case 3:
        if (v6 != 2 || v4 != 3 || v5 != 0)
        {
          goto LABEL_19;
        }

        v61 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v61, v62, 2);
        v28 = 3;
        break;
      case 4:
        if (v6 != 2 || v4 != 4 || v5 != 0)
        {
          goto LABEL_19;
        }

        v49 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v49, v50, 2);
        v28 = 4;
        break;
      case 5:
        if (v6 != 2 || v4 != 5 || v5 != 0)
        {
          goto LABEL_19;
        }

        v73 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v73, v74, 2);
        v28 = 5;
        break;
      case 6:
        if (v6 != 2 || v4 != 6 || v5 != 0)
        {
          goto LABEL_19;
        }

        v77 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v77, v78, 2);
        v28 = 6;
        break;
      case 7:
        if (v6 != 2 || v4 != 7 || v5 != 0)
        {
          goto LABEL_19;
        }

        v65 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v65, v66, 2);
        v28 = 7;
        break;
      case 8:
        if (v6 != 2 || v4 != 8 || v5 != 0)
        {
          goto LABEL_19;
        }

        v81 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v81, v82, 2);
        v28 = 8;
        break;
      case 9:
        if (v6 != 2 || v4 != 9 || v5 != 0)
        {
          goto LABEL_19;
        }

        v53 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v53, v54, 2);
        v28 = 9;
        break;
      default:
        if (v6 != 2 || (v5 | v4) != 0)
        {
          goto LABEL_19;
        }

        v26 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v26, v27, 2);
        v28 = 0;
        break;
    }

    sub_1B1E5120C(v28, 0, 2);
    v24 = 1;
    return v24 & 1;
  }

  if (v6 != 1)
  {
    sub_1B1F1A760();
    goto LABEL_19;
  }

  if (v2 != v4 || a1[1] != v5)
  {
    OUTLINED_FUNCTION_6_8();
    v8 = sub_1B1F1B510();
    v9 = OUTLINED_FUNCTION_43_0();
    sub_1B1E50C7C(v9, v10, 1);
    v11 = OUTLINED_FUNCTION_16_8();
    sub_1B1E50C7C(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_16_8();
    sub_1B1E5120C(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_43_0();
    sub_1B1E5120C(v17, v18, 1);
    return v8 & 1;
  }

  v24 = 1;
  v35 = OUTLINED_FUNCTION_16_8();
  sub_1B1E50C7C(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_16_8();
  sub_1B1E50C7C(v38, v39, v40);
  v41 = OUTLINED_FUNCTION_16_8();
  sub_1B1E5120C(v41, v42, v43);
  v44 = OUTLINED_FUNCTION_16_8();
LABEL_22:
  sub_1B1E5120C(v44, v45, v46);
  return v24 & 1;
}

uint64_t sub_1B1E5120C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1B1E51224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61756E616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6E557473726966 && a2 == 0xEB000000006B636FLL;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C756465686373 && a2 == 0xEF6465746F6F4272;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001B1F39500 == a2;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x80000001B1F39520 == a2;
          if (v9 || (sub_1B1F1B510() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001B1F39540 == a2;
            if (v10 || (sub_1B1F1B510() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001DLL && 0x80000001B1F39560 == a2;
              if (v11 || (sub_1B1F1B510() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001B1F39580 == a2;
                if (v12 || (sub_1B1F1B510() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001B1F395A0 == a2;
                  if (v13 || (sub_1B1F1B510() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6465727265666564 && a2 == 0xEC0000006C6C7546;
                    if (v14 || (sub_1B1F1B510() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6465727265666564 && a2 == 0xED000061746C6544;
                      if (v15 || (sub_1B1F1B510() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x676E6974736574 && a2 == 0xE700000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1B1F1B510();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B1E515D4(char a1)
{
  result = 0x6C61756E616DLL;
  switch(a1)
  {
    case 1:
      result = 0x6C6E557473726966;
      break;
    case 2:
      result = 0x656C756465686373;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
    case 10:
      result = 0x6465727265666564;
      break;
    case 11:
      result = 0x676E6974736574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E5173C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6563726F66 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E517C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E5184C(uint64_t a1)
{
  v2 = sub_1B1E52AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51888(uint64_t a1)
{
  v2 = sub_1B1E52AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E518C4(uint64_t a1)
{
  v2 = sub_1B1E52B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51900(uint64_t a1)
{
  v2 = sub_1B1E52B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E51224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E5196C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E515CC();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E51994(uint64_t a1)
{
  v2 = sub_1B1E52898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E519D0(uint64_t a1)
{
  v2 = sub_1B1E52898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51A0C(uint64_t a1)
{
  v2 = sub_1B1E52940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51A48(uint64_t a1)
{
  v2 = sub_1B1E52940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51A84(uint64_t a1)
{
  v2 = sub_1B1E52994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51AC0(uint64_t a1)
{
  v2 = sub_1B1E52994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51AFC(uint64_t a1)
{
  v2 = sub_1B1E52C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51B38(uint64_t a1)
{
  v2 = sub_1B1E52C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51B74(uint64_t a1)
{
  v2 = sub_1B1E52A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51BB0(uint64_t a1)
{
  v2 = sub_1B1E52A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51BEC(uint64_t a1)
{
  v2 = sub_1B1E52A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51C28(uint64_t a1)
{
  v2 = sub_1B1E52A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E5173C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E51C94(uint64_t a1)
{
  v2 = sub_1B1E52C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51CD0(uint64_t a1)
{
  v2 = sub_1B1E52C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51D0C(uint64_t a1)
{
  v2 = sub_1B1E52BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51D48(uint64_t a1)
{
  v2 = sub_1B1E52BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51D84(uint64_t a1)
{
  v2 = sub_1B1E52B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51DC0(uint64_t a1)
{
  v2 = sub_1B1E52B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51DFC(uint64_t a1)
{
  v2 = sub_1B1E529E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51E38(uint64_t a1)
{
  v2 = sub_1B1E529E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E517C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E51EA4(uint64_t a1)
{
  v2 = sub_1B1E528EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51EE0(uint64_t a1)
{
  v2 = sub_1B1E528EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingReason.Trigger.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_34();
  a26 = v29;
  a27 = v30;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785660, &qword_1B1F31310);
  OUTLINED_FUNCTION_0();
  v113 = v34;
  v114 = v33;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_17();
  v112 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785668, &qword_1B1F31318);
  OUTLINED_FUNCTION_0();
  v110 = v38;
  v111 = v37;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_17();
  v109 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785670, &qword_1B1F31320);
  OUTLINED_FUNCTION_0();
  v107 = v42;
  v108 = v41;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_17();
  v106 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785678, &qword_1B1F31328);
  OUTLINED_FUNCTION_0();
  v104 = v46;
  v105 = v45;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_17();
  v103 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785680, &qword_1B1F31330);
  OUTLINED_FUNCTION_0();
  v101 = v50;
  v102 = v49;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_17();
  v100 = v52;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785688, &qword_1B1F31338);
  OUTLINED_FUNCTION_0();
  v98 = v53;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v55);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785690, &qword_1B1F31340);
  OUTLINED_FUNCTION_0();
  v96 = v56;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v58);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785698, &qword_1B1F31348);
  OUTLINED_FUNCTION_0();
  v94 = v59;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v61);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7856A0, &qword_1B1F31350);
  OUTLINED_FUNCTION_0();
  v92 = v62;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v64);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7856A8, &qword_1B1F31358);
  OUTLINED_FUNCTION_0();
  v90 = v65;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v67);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7856B0, &qword_1B1F31360);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7856B8, &qword_1B1F31368);
  OUTLINED_FUNCTION_0();
  v72 = v71;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7856C0, &qword_1B1F31370);
  OUTLINED_FUNCTION_0();
  v115[0] = v74;
  v115[1] = v75;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_14_10();
  v116 = *v27;
  v77 = *(v27 + 16);
  OUTLINED_FUNCTION_44(v32, v32[3]);
  sub_1B1E52898();
  OUTLINED_FUNCTION_68();
  sub_1B1F1B830();
  if (!v77)
  {
    v117 = 0;
    sub_1B1E52C88();
    v78 = v115[0];
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    sub_1B1F1B280();
    (*(v72 + 8))(v28, v70);
    v81 = OUTLINED_FUNCTION_47();
    goto LABEL_5;
  }

  if (v77 == 1)
  {
    a17 = 11;
    sub_1B1E528EC();
    v78 = v115[0];
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    sub_1B1F1B270();
    v79 = OUTLINED_FUNCTION_25_5();
    v80(v79, v114);
    v81 = OUTLINED_FUNCTION_36_1();
LABEL_5:
    v82(v81, v78);
    goto LABEL_20;
  }

  switch(v116)
  {
    case 1:
      v119 = 2;
      sub_1B1E52BE0();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.SchedulerBootedCodingKeys, &v119);
      v83 = OUTLINED_FUNCTION_15_10();
      v85 = &v116;
      goto LABEL_15;
    case 2:
      v120 = 3;
      sub_1B1E52B8C();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.ShortcutsAppLaunchedCodingKeys, &v120);
      v83 = OUTLINED_FUNCTION_15_10();
      v85 = &a9;
      goto LABEL_15;
    case 3:
      a10 = 4;
      sub_1B1E52B38();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.AppProtectionStateChangedCodingKeys, &a10);
      v83 = OUTLINED_FUNCTION_15_10();
      v85 = &a19;
      goto LABEL_15;
    case 4:
      a11 = 5;
      sub_1B1E52AE4();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.AppIntentsDatabaseChangedCodingKeys, &a11);
      v83 = OUTLINED_FUNCTION_15_10();
      v85 = &a22;
      goto LABEL_15;
    case 5:
      a12 = 6;
      sub_1B1E52A90();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.LaunchServicesDatabaseChangedCodingKeys, &a12);
      v83 = OUTLINED_FUNCTION_15_10();
      v85 = &a25;
      goto LABEL_15;
    case 6:
      a13 = 7;
      sub_1B1E52A3C();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.LanguagesChangedCodingKeys, &a13);
      goto LABEL_18;
    case 7:
      a14 = 8;
      sub_1B1E529E8();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.SiriLanguagesChangedCodingKeys, &a14);
      goto LABEL_18;
    case 8:
      a15 = 9;
      sub_1B1E52994();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.DeferredFullCodingKeys, &a15);
      goto LABEL_18;
    case 9:
      a16 = 10;
      sub_1B1E52940();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.DeferredDeltaCodingKeys, &a16);
LABEL_18:
      v83 = OUTLINED_FUNCTION_37_1();
      break;
    default:
      v118 = 1;
      sub_1B1E52C34();
      OUTLINED_FUNCTION_11_6(&type metadata for ToolKitIndexingReason.Trigger.FirstUnlockCodingKeys, &v118);
      v83 = OUTLINED_FUNCTION_15_10();
      v85 = v115;
LABEL_15:
      v86 = *(v85 - 32);
      break;
  }

  v84(v83, v86);
  v87 = OUTLINED_FUNCTION_19_6();
  v88(v87, v77);
LABEL_20:
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E52898()
{
  result = qword_1EB7839C8;
  if (!qword_1EB7839C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839C8);
  }

  return result;
}

unint64_t sub_1B1E528EC()
{
  result = qword_1EB7856D0;
  if (!qword_1EB7856D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856D0);
  }

  return result;
}

unint64_t sub_1B1E52940()
{
  result = qword_1EB783968;
  if (!qword_1EB783968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783968);
  }

  return result;
}

unint64_t sub_1B1E52994()
{
  result = qword_1EB7856E0;
  if (!qword_1EB7856E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856E0);
  }

  return result;
}

unint64_t sub_1B1E529E8()
{
  result = qword_1EB7856E8;
  if (!qword_1EB7856E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856E8);
  }

  return result;
}

unint64_t sub_1B1E52A3C()
{
  result = qword_1EB7856F0;
  if (!qword_1EB7856F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856F0);
  }

  return result;
}

unint64_t sub_1B1E52A90()
{
  result = qword_1EB7856F8;
  if (!qword_1EB7856F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856F8);
  }

  return result;
}

unint64_t sub_1B1E52AE4()
{
  result = qword_1EB785700;
  if (!qword_1EB785700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785700);
  }

  return result;
}

unint64_t sub_1B1E52B38()
{
  result = qword_1EB785708;
  if (!qword_1EB785708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785708);
  }

  return result;
}

unint64_t sub_1B1E52B8C()
{
  result = qword_1EB7834D0;
  if (!qword_1EB7834D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834D0);
  }

  return result;
}

unint64_t sub_1B1E52BE0()
{
  result = qword_1EB785718;
  if (!qword_1EB785718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785718);
  }

  return result;
}

unint64_t sub_1B1E52C34()
{
  result = qword_1EB785720;
  if (!qword_1EB785720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785720);
  }

  return result;
}

unint64_t sub_1B1E52C88()
{
  result = qword_1EB785728;
  if (!qword_1EB785728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785728);
  }

  return result;
}

uint64_t ToolKitIndexingReason.Trigger.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1B273E060](11);

      return sub_1B1F1A900();
    }

    else
    {
      switch(*v1)
      {
        case 1:
          v3 = 2;
          break;
        case 2:
          v3 = 3;
          break;
        case 3:
          v3 = 4;
          break;
        case 4:
          v3 = 5;
          break;
        case 5:
          v3 = 6;
          break;
        case 6:
          v3 = 7;
          break;
        case 7:
          v3 = 8;
          break;
        case 8:
          v3 = 9;
          break;
        case 9:
          v3 = 10;
          break;
        default:
          v3 = 1;
          break;
      }

      return MEMORY[0x1B273E060](v3);
    }
  }

  else
  {
    MEMORY[0x1B273E060](0);
    return sub_1B1F1B7E0();
  }
}

uint64_t ToolKitIndexingReason.Trigger.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  OUTLINED_FUNCTION_35_0(a1);
  ToolKitIndexingReason.Trigger.hash(into:)(v4);
  return sub_1B1F1B7F0();
}

void ToolKitIndexingReason.Trigger.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_34();
  a26 = v30;
  a27 = v31;
  v199 = v27;
  v33 = v32;
  v193 = v34;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785730, &qword_1B1F31378);
  OUTLINED_FUNCTION_0();
  v165 = v35;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v191 = v37;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785738, &qword_1B1F31380);
  OUTLINED_FUNCTION_0();
  v184 = v38;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_17();
  v190 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785740, &qword_1B1F31388);
  OUTLINED_FUNCTION_0();
  v182 = v42;
  v183 = v41;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_17();
  v189 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785748, &qword_1B1F31390);
  OUTLINED_FUNCTION_0();
  v180 = v46;
  v181 = v45;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_17();
  v188 = v48;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785750, &qword_1B1F31398);
  OUTLINED_FUNCTION_0();
  v178 = v49;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_17();
  v197 = v51;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785758, &qword_1B1F313A0);
  OUTLINED_FUNCTION_0();
  v177 = v52;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_80(v54);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785760, &qword_1B1F313A8);
  OUTLINED_FUNCTION_0();
  v175 = v55;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_17();
  v187 = v57;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785768, &qword_1B1F313B0);
  OUTLINED_FUNCTION_0();
  v173 = v58;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_17();
  v186 = v60;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785770, &qword_1B1F313B8);
  OUTLINED_FUNCTION_0();
  v171 = v61;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_17();
  v195 = v63;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785778, &qword_1B1F313C0);
  OUTLINED_FUNCTION_0();
  v168 = v64;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_17();
  v185 = v66;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785780, &qword_1B1F313C8);
  OUTLINED_FUNCTION_0();
  v166 = v67;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_21_4();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785788, &qword_1B1F313D0);
  OUTLINED_FUNCTION_0();
  v164 = v70;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v158 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785790, &qword_1B1F313D8);
  OUTLINED_FUNCTION_0();
  v76 = v75;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_14_10();
  v78 = v33[3];
  v198 = v33;
  OUTLINED_FUNCTION_44(v33, v78);
  sub_1B1E52898();
  OUTLINED_FUNCTION_68();
  v79 = v199;
  sub_1B1F1B810();
  if (!v79)
  {
    v162 = v73;
    v163 = v29;
    v161 = v69;
    v80 = v195;
    v81 = v196;
    v82 = v197;
    v199 = v76;
    v83 = v28;
    sub_1B1F1B210();
    sub_1B1E32BFC();
    if (v85 != v84 >> 1)
    {
      OUTLINED_FUNCTION_40();
      v160 = 0;
      OUTLINED_FUNCTION_65();
      if (v88 == v89)
      {
        __break(1u);
        return;
      }

      v159 = *(v87 + v86);
      sub_1B1E32BF8();
      v91 = v90;
      v93 = v92;
      swift_unknownObjectRelease();
      v94 = v194;
      if (v91 == v93 >> 1)
      {
        v96 = v192;
        v95 = v193;
        switch(v159)
        {
          case 1:
            v201 = 1;
            sub_1B1E52C34();
            v128 = v163;
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.FirstUnlockCodingKeys, &v201);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2();
            v129(v128, v167);
            v130 = OUTLINED_FUNCTION_3_11();
            v131(v130);
            v157 = 0;
            v74 = 0;
            goto LABEL_18;
          case 2:
            v202 = 2;
            sub_1B1E52BE0();
            v118 = v185;
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.SchedulerBootedCodingKeys, &v202);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2();
            v119(v118, v169);
            v120 = OUTLINED_FUNCTION_3_11();
            v121(v120);
            OUTLINED_FUNCTION_48();
            v157 = 1;
            goto LABEL_23;
          case 3:
            v203 = 3;
            sub_1B1E52B8C();
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.ShortcutsAppLaunchedCodingKeys, &v203);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2();
            v122(v80, v172);
            v123 = OUTLINED_FUNCTION_3_11();
            v124(v123);
            v74 = 0;
            v157 = 2;
LABEL_18:
            v156 = 2;
            goto LABEL_23;
          case 4:
            a10 = 4;
            sub_1B1E52B38();
            v110 = v186;
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.AppProtectionStateChangedCodingKeys, &a10);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2();
            v111(v110, v174);
            v112 = OUTLINED_FUNCTION_3_11();
            v113(v112);
            OUTLINED_FUNCTION_48();
            v157 = 3;
            goto LABEL_23;
          case 5:
            a11 = 5;
            sub_1B1E52AE4();
            v132 = v187;
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.AppIntentsDatabaseChangedCodingKeys, &a11);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2();
            v133(v132, v170);
            v134 = OUTLINED_FUNCTION_3_11();
            v135(v134);
            OUTLINED_FUNCTION_48();
            v157 = 4;
            goto LABEL_23;
          case 6:
            a12 = 6;
            sub_1B1E52A90();
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.LaunchServicesDatabaseChangedCodingKeys, &a12);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2();
            v136(v81, v176);
            v137 = OUTLINED_FUNCTION_3_11();
            v138(v137);
            OUTLINED_FUNCTION_48();
            v157 = 5;
            goto LABEL_23;
          case 7:
            a13 = 7;
            sub_1B1E52A3C();
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.LanguagesChangedCodingKeys, &a13);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2();
            v125(v82, v179);
            v126 = OUTLINED_FUNCTION_3_11();
            v127(v126);
            OUTLINED_FUNCTION_48();
            v157 = 6;
            goto LABEL_23;
          case 8:
            a14 = 8;
            sub_1B1E529E8();
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.SiriLanguagesChangedCodingKeys, &a14);
            swift_unknownObjectRelease();
            v146 = OUTLINED_FUNCTION_36_1();
            v147(v146);
            v148 = OUTLINED_FUNCTION_3_11();
            v149(v148);
            OUTLINED_FUNCTION_48();
            v157 = 7;
            goto LABEL_23;
          case 9:
            a15 = 9;
            sub_1B1E52994();
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.DeferredFullCodingKeys, &a15);
            swift_unknownObjectRelease();
            v114 = OUTLINED_FUNCTION_36_1();
            v115(v114);
            v116 = OUTLINED_FUNCTION_3_11();
            v117(v116);
            OUTLINED_FUNCTION_48();
            v157 = 8;
            goto LABEL_23;
          case 10:
            a16 = 10;
            sub_1B1E52940();
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.DeferredDeltaCodingKeys, &a16);
            swift_unknownObjectRelease();
            v139 = OUTLINED_FUNCTION_25_5();
            v140(v139, v94);
            v141 = OUTLINED_FUNCTION_3_11();
            v142(v141);
            OUTLINED_FUNCTION_48();
            v157 = 9;
LABEL_23:
            v100 = v198;
            goto LABEL_24;
          case 11:
            a17 = 11;
            sub_1B1E528EC();
            v109 = v191;
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.TestingCodingKeys, &a17);
            v143 = v83;
            v197 = v74;
            v144 = sub_1B1F1B1C0();
            v100 = v198;
            v145 = v199;
            v157 = v144;
            v74 = v150;
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2();
            v151(v109, v96);
            (*(v145 + 8))(v143, v197);
            v156 = 1;
            goto LABEL_25;
          default:
            v200 = 0;
            sub_1B1E52C88();
            v97 = v162;
            OUTLINED_FUNCTION_8_9(&type metadata for ToolKitIndexingReason.Trigger.ManualCodingKeys, &v200);
            v98 = v161;
            v99 = sub_1B1F1B1D0();
            v100 = v198;
            v152 = v99;
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2();
            v153(v97, v98);
            v154 = OUTLINED_FUNCTION_86();
            v155(v154);
            v74 = 0;
            v156 = 0;
            v157 = v152 & 1;
LABEL_25:
            v95 = v193;
LABEL_24:
            *v95 = v157;
            *(v95 + 8) = v74;
            *(v95 + 16) = v156;
            break;
        }

        goto LABEL_10;
      }
    }

    v101 = v74;
    v102 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13(v102, MEMORY[0x1E69E6B28]);
    v104 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v104 = &type metadata for ToolKitIndexingReason.Trigger;
    v105 = sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8(v105);
    OUTLINED_FUNCTION_11_2();
    (*(v106 + 104))(v104);
    swift_willThrow();
    swift_unknownObjectRelease();
    v107 = OUTLINED_FUNCTION_19_6();
    v108(v107, v101);
  }

  v100 = v198;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v100);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E53CEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1B1F1B7C0();
  ToolKitIndexingReason.Trigger.hash(into:)(v4);
  return sub_1B1F1B7F0();
}

uint64_t static ToolKitIndexingReason.Changeset.Provenance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LaunchServicesSnapshot(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  v9 = v8 - v7;
  type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  OUTLINED_FUNCTION_8(v14);
  OUTLINED_FUNCTION_26();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  v19 = *(v16 + 56);
  sub_1B1E5CF1C(a1, &v27 - v17);
  sub_1B1E5CF1C(a2, &v18[v19]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_15();
      sub_1B1E5CF1C(v18, v2);
      if (OUTLINED_FUNCTION_92() != 1)
      {

        goto LABEL_11;
      }

      v23 = OUTLINED_FUNCTION_43_0();
      v22 = sub_1B1E398D0(v23, v24);

      OUTLINED_FUNCTION_9_10();
      return v22 & 1;
    case 2u:
      if (OUTLINED_FUNCTION_92() == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 3u:
      if (OUTLINED_FUNCTION_92() == 3)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    default:
      OUTLINED_FUNCTION_2_15();
      v20 = OUTLINED_FUNCTION_59();
      sub_1B1E5CF1C(v20, v21);
      if (OUTLINED_FUNCTION_92())
      {
        OUTLINED_FUNCTION_6_10();
        sub_1B1E5C898();
LABEL_11:
        sub_1B1E5C830(v18);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_30_3();
      sub_1B1E5CA90(&v18[v19], v9);
      if ((sub_1B1F1A310() & 1) == 0 || (v26 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0), *&v13[*(v26 + 20)] != *(v9 + *(v26 + 20))) || (sub_1B1E38FD4(*&v13[*(v5 + 20)], *(v9 + *(v5 + 20))) & 1) == 0)
      {
        OUTLINED_FUNCTION_31_2();
        sub_1B1E5C898();
        sub_1B1E5C898();
        OUTLINED_FUNCTION_9_10();
LABEL_12:
        v22 = 0;
        return v22 & 1;
      }

      OUTLINED_FUNCTION_31_2();
      sub_1B1E5C898();
      sub_1B1E5C898();
LABEL_7:
      OUTLINED_FUNCTION_9_10();
      v22 = 1;
      return v22 & 1;
  }
}

uint64_t sub_1B1E54004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001B1F395C0 == a2;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001B1F395E0 == a2;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001B1F39600 == a2;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x5365646163736163 && a2 == 0xEB00000000636E79)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B1F1B510();

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

unint64_t sub_1B1E5416C(char a1)
{
  result = 0x5365646163736163;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1B1E5420C(uint64_t a1)
{
  v2 = sub_1B1E5C9E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E54248(uint64_t a1)
{
  v2 = sub_1B1E5C9E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E54284(uint64_t a1)
{
  v2 = sub_1B1E5C994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E542C0(uint64_t a1)
{
  v2 = sub_1B1E5C994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E542FC(uint64_t a1)
{
  v2 = sub_1B1E5C940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E54338(uint64_t a1)
{
  v2 = sub_1B1E5C940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E5437C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E54004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E543A4(uint64_t a1)
{
  v2 = sub_1B1E5C8EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E543E0(uint64_t a1)
{
  v2 = sub_1B1E5C8EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E5441C(uint64_t a1)
{
  v2 = sub_1B1E5CA3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E54458(uint64_t a1)
{
  v2 = sub_1B1E5CA3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingReason.Changeset.Provenance.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_34();
  v69 = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A8, &qword_1B1F313E0);
  OUTLINED_FUNCTION_0();
  v67 = v28;
  v68 = v27;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_80(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857B0, &qword_1B1F313E8);
  OUTLINED_FUNCTION_0();
  v64 = v32;
  v65 = v31;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_17();
  v62 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857B8, &qword_1B1F313F0);
  OUTLINED_FUNCTION_0();
  v63 = v35;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857C0, &qword_1B1F313F8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_17();
  type metadata accessor for LaunchServicesSnapshot(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_3();
  v41 = v40 - v39;
  type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_3();
  v45 = v44 - v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7857C8, &qword_1B1F31400);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_44(v26, v26[3]);
  sub_1B1E5C8EC();
  OUTLINED_FUNCTION_68();
  sub_1B1F1B830();
  OUTLINED_FUNCTION_2_15();
  sub_1B1E5CF1C(v69, v45);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B1E5C9E8();
      OUTLINED_FUNCTION_24_6();
      sub_1B1F1B240();
      sub_1B1E3C410();
      sub_1B1F1B2B0();
      v57 = OUTLINED_FUNCTION_25_5();
      v58(v57, v63);
      v59 = OUTLINED_FUNCTION_35_1();
      v60(v59);

      break;
    case 2u:
      sub_1B1E5C994();
      v52 = v62;
      OUTLINED_FUNCTION_24_6();
      sub_1B1F1B240();
      v54 = v64;
      v53 = v65;
      goto LABEL_5;
    case 3u:
      sub_1B1E5C940();
      v52 = v66;
      OUTLINED_FUNCTION_24_6();
      sub_1B1F1B240();
      v54 = v67;
      v53 = v68;
LABEL_5:
      (*(v54 + 8))(v52, v53);
      v55 = OUTLINED_FUNCTION_35_1();
      v56(v55);
      break;
    default:
      sub_1B1E5CA90(v45, v41);
      sub_1B1E5CA3C();
      OUTLINED_FUNCTION_24_6();
      sub_1B1F1B240();
      OUTLINED_FUNCTION_28_4();
      sub_1B1DF6BE0(v47);
      sub_1B1F1B2B0();
      v48 = OUTLINED_FUNCTION_47();
      v49(v48, v61);
      OUTLINED_FUNCTION_6_10();
      sub_1B1E5C898();
      v50 = OUTLINED_FUNCTION_35_1();
      v51(v50);
      break;
  }

  OUTLINED_FUNCTION_35();
}

uint64_t ToolKitIndexingReason.Changeset.Provenance.hash(into:)()
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_50();
  v5 = type metadata accessor for LaunchServicesSnapshot(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_2_15();
  sub_1B1E5CF1C(v3, v10);
  OUTLINED_FUNCTION_54();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = *v10;
      MEMORY[0x1B273E060](1);
      sub_1B1E3BF6C(v0, v15);

      break;
    case 2u:
      v14 = 2;
      goto LABEL_5;
    case 3u:
      v14 = 3;
LABEL_5:
      result = MEMORY[0x1B273E060](v14);
      break;
    default:
      OUTLINED_FUNCTION_30_3();
      sub_1B1E5CA90(v10, v2);
      MEMORY[0x1B273E060](0);
      sub_1B1F1A350();
      OUTLINED_FUNCTION_0_18();
      sub_1B1DF6BE0(v11);
      sub_1B1F1A800();
      v12 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
      MEMORY[0x1B273E060](*(v2 + *(v12 + 20)));
      sub_1B1E3BDC0(v0, *(v2 + *(v5 + 20)));
      OUTLINED_FUNCTION_6_10();
      result = sub_1B1E5C898();
      break;
  }

  return result;
}

void ToolKitIndexingReason.Changeset.Provenance.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_34();
  v140 = v24;
  v28 = v27;
  v136 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857F0, &qword_1B1F31408);
  OUTLINED_FUNCTION_0();
  v134 = v31;
  v135 = v30;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_80(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857F8, &qword_1B1F31410);
  OUTLINED_FUNCTION_0();
  v127 = v35;
  v128 = v34;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v132 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785800, &qword_1B1F31418);
  OUTLINED_FUNCTION_0();
  v129 = v39;
  v130 = v38;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_17();
  v133 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785808, &qword_1B1F31420);
  OUTLINED_FUNCTION_0();
  v125 = v43;
  v126 = v42;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_17();
  v131 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785810, &qword_1B1F31428);
  OUTLINED_FUNCTION_0();
  v138 = v47;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_21_4();
  v49 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_53();
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = &v121 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v121 - v55;
  v139 = v28;
  v57 = OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_44(v57, v58);
  sub_1B1E5C8EC();
  v59 = v140;
  sub_1B1F1B810();
  if (!v59)
  {
    v123 = v25;
    v124 = v54;
    v140 = v56;
    v60 = v26;
    sub_1B1F1B210();
    v61 = sub_1B1E32BFC();
    if (v63 == v62 >> 1)
    {
      v140 = v61;
      v64 = v46;
      v65 = v138;
      v66 = v49;
      v67 = v60;
    }

    else
    {
      OUTLINED_FUNCTION_40();
      v121 = 0;
      v122 = v49;
      OUTLINED_FUNCTION_65();
      if (v70 == v71)
      {
        __break(1u);
        return;
      }

      v72 = *(v69 + v68);
      v73 = sub_1B1E32BF8();
      v75 = v74;
      v77 = v76;
      swift_unknownObjectRelease();
      v67 = v26;
      v78 = v137;
      if (v75 == v77 >> 1)
      {
        v79 = v135;
        v80 = v134;
        switch(v72)
        {
          case 1:
            sub_1B1E5C9E8();
            OUTLINED_FUNCTION_24_6();
            OUTLINED_FUNCTION_93(v105, v106, v107, v108);
            sub_1B1E3C3BC();
            OUTLINED_FUNCTION_57();
            sub_1B1F1B200();
            OUTLINED_FUNCTION_94();
            v114 = OUTLINED_FUNCTION_79();
            v115(v114);
            v116 = OUTLINED_FUNCTION_7_9();
            v117(v116);
            v113 = v123;
            *v123 = v141;
            goto LABEL_17;
          case 2:
            sub_1B1E5C994();
            v92 = v132;
            OUTLINED_FUNCTION_24_6();
            OUTLINED_FUNCTION_93(v93, v94, v95, v96);
            OUTLINED_FUNCTION_94();
            (*(v127 + 8))(v92, v128);
            v97 = OUTLINED_FUNCTION_7_9();
            v98(v97);
            goto LABEL_15;
          case 3:
            sub_1B1E5C940();
            OUTLINED_FUNCTION_24_6();
            OUTLINED_FUNCTION_93(v99, v100, v101, v102);
            OUTLINED_FUNCTION_94();
            (*(v80 + 8))(v78, v79);
            v103 = OUTLINED_FUNCTION_7_9();
            v104(v103);
LABEL_15:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            sub_1B1E5CA3C();
            OUTLINED_FUNCTION_24_6();
            OUTLINED_FUNCTION_93(v81, v82, v83, v84);
            type metadata accessor for LaunchServicesSnapshot(0);
            OUTLINED_FUNCTION_28_4();
            sub_1B1DF6BE0(v85);
            v86 = v126;
            sub_1B1F1B200();
            OUTLINED_FUNCTION_94();
            v109 = OUTLINED_FUNCTION_19_6();
            v110(v109, v86);
            v111 = OUTLINED_FUNCTION_7_9();
            v112(v111);
            v113 = v124;
LABEL_17:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_32_3();
            sub_1B1E5CA90(v113, v140);
            break;
        }

        v118 = v139;
        OUTLINED_FUNCTION_32_3();
        v119 = OUTLINED_FUNCTION_54();
        sub_1B1E5CA90(v119, v120);
        __swift_destroy_boxed_opaque_existential_1(v118);
        goto LABEL_12;
      }

      v140 = v73;
      v64 = v46;
      v65 = v138;
      v66 = v122;
    }

    v87 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13(v87, MEMORY[0x1E69E6B28]);
    v89 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v89 = v66;
    v90 = sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8(v90);
    OUTLINED_FUNCTION_11_2();
    (*(v91 + 104))(v89);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v65 + 8))(v67, v64);
  }

  __swift_destroy_boxed_opaque_existential_1(v139);
LABEL_12:
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_35();
}

uint64_t ToolKitIndexingReason.Changeset.debugDescription.getter()
{
  if (!*v0)
  {
    return 0x6C6C75662ELL;
  }

  if (*v0 == 1)
  {
    return 0x656E6F6E2ELL;
  }

  sub_1B1F1AFA0();
  MEMORY[0x1B273D1A0](0xD000000000000017, 0x80000001B1F39370);
  OUTLINED_FUNCTION_88();
  v2 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v2);

  MEMORY[0x1B273D1A0](0x6465766F6D657220, 0xEF203A746E756F43);
  OUTLINED_FUNCTION_88();
  v3 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v3);

  MEMORY[0x1B273D1A0](0x6465746164707520, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_43_0();
  v4 = sub_1B1F1AC10();
  MEMORY[0x1B273D1A0](v4);

  MEMORY[0x1B273D1A0](0x65766F6D6572202CLL, 0xEB00000000203A64);
  OUTLINED_FUNCTION_59();
  v5 = sub_1B1F1AC10();
  MEMORY[0x1B273D1A0](v5);

  MEMORY[0x1B273D1A0](41, 0xE100000000000000);
  return 0;
}

uint64_t ToolKitIndexingReason.Changeset.isEmpty.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  if (v1 == 1)
  {
    return OUTLINED_FUNCTION_17_1();
  }

  return !*(v1 + 16) && *(v0[1] + 16) == 0;
}

uint64_t *static ToolKitIndexingReason.Changeset.+ infix(_:_:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result;
  v4 = result[1];
  v6 = result[2];
  if (!*result)
  {
    *a3 = 0;
    a3[1] = v4;
    a3[2] = v6;
    return result;
  }

  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  if (!*a2)
  {
    *a3 = 0;
    a3[1] = v7;
    a3[2] = v9;
    return result;
  }

  if (v8 != 1)
  {
    if (v5 != 1)
    {
      v13 = OUTLINED_FUNCTION_35_1();
      sub_1B1E50CE0(v13, v14, v6);
      v15 = OUTLINED_FUNCTION_58();
      sub_1B1E50CE0(v15, v16, v9);
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1F1A760();
      v17 = sub_1B1E55724(v8, v5);
      v18 = sub_1B1E55724(v7, v4);
      v19 = sub_1B1E55A28(v17, v18);
      v20 = sub_1B1E55828(v9, v6);
      v21 = OUTLINED_FUNCTION_35_1();
      sub_1B1E5CAE8(v21);
      v22 = OUTLINED_FUNCTION_58();
      result = sub_1B1E5CAE8(v22);
      *a3 = v17;
      a3[1] = v19;
      a3[2] = v20;
      return result;
    }

    goto LABEL_9;
  }

  if (v5 == 1)
  {
LABEL_9:
    *a3 = v8;
    a3[1] = v7;
    a3[2] = v9;
    v10 = OUTLINED_FUNCTION_58();
    v12 = v9;
    goto LABEL_10;
  }

  *a3 = v5;
  a3[1] = v4;
  a3[2] = v6;
  v10 = OUTLINED_FUNCTION_35_1();
  v12 = v6;
LABEL_10:

  return sub_1B1E50CE0(v10, v11, v12);
}

uint64_t sub_1B1E55724(uint64_t result, uint64_t a2)
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
    sub_1B1F1A760();
    sub_1B1E640C4(v14, v12, v13);
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

uint64_t sub_1B1E55828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - v13;
  v15 = 0;
  v23 = a2;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  for (i = (v16 + 63) >> 6; v18; result = sub_1B1E5C898())
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1B1E5CF1C(*(a1 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v14);
    sub_1B1E5CA90(v14, v8);
    sub_1B1E64210(v11, v8);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 56 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E55A28(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1B1E5B570(a1);
    return a2;
  }

  else
  {

    return sub_1B1E5B69C(a1, a2);
  }
}

uint64_t ToolKitIndexingReason.Changeset.encoded()()
{
  sub_1B1F1A050();
  swift_allocObject();
  sub_1B1F1A040();
  sub_1B1E5CB38();
  sub_1B1F1A030();

  return OUTLINED_FUNCTION_59();
}

double static ToolKitIndexingReason.Changeset.decode(from:)()
{
  OUTLINED_FUNCTION_87();
  sub_1B1F1A020();
  swift_allocObject();
  sub_1B1F1A010();
  sub_1B1E5CB8C();
  OUTLINED_FUNCTION_76();
  sub_1B1F1A000();

  if (!v1)
  {
    result = *&v3;
    *v0 = v3;
    *(v0 + 16) = v4;
  }

  return result;
}

uint64_t static ToolKitIndexingReason.Changeset.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        goto LABEL_6;
      }
    }

    else if (v3 >= 2)
    {
      v14 = OUTLINED_FUNCTION_63();
      sub_1B1E50CE0(v14, v15, v16);
      v17 = OUTLINED_FUNCTION_61();
      sub_1B1E50CE0(v17, v18, v19);
      if (sub_1B1E55CA4(v2, v3))
      {
        v20 = OUTLINED_FUNCTION_6_8();
        if (sub_1B1E55CA4(v20, v21))
        {
          v22 = OUTLINED_FUNCTION_43_0();
          v4 = sub_1B1E55E4C(v22, v23);
          goto LABEL_10;
        }
      }

      goto LABEL_9;
    }

LABEL_8:
    v5 = OUTLINED_FUNCTION_63();
    sub_1B1E50CE0(v5, v6, v7);
    v8 = OUTLINED_FUNCTION_61();
    sub_1B1E50CE0(v8, v9, v10);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v4 = 1;
LABEL_10:
  v11 = OUTLINED_FUNCTION_61();
  sub_1B1E5CAE8(v11);
  v12 = OUTLINED_FUNCTION_63();
  sub_1B1E5CAE8(v12);
  return v4 & 1;
}

uint64_t sub_1B1E55CA4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A900();
      v15 = sub_1B1F1B7F0();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_1B1F1B510();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E55E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchServicesSnapshot(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v44 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v57 = &v44 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v24 = &v44 - v23;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    v48 = a1;
    v49 = v4;
    v25 = 0;
    v26 = a1 + 56;
    v27 = 1 << *(a1 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(a1 + 56);
    v30 = (v27 + 63) >> 6;
    v56 = a2 + 56;
    v46 = v24;
    v47 = v22;
    v45 = a1 + 56;
    v44 = v30;
    if (v29)
    {
LABEL_7:
      v31 = __clz(__rbit64(v29));
      v50 = (v29 - 1) & v29;
      goto LABEL_13;
    }

LABEL_8:
    v32 = v25;
    do
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        return result;
      }

      if (v25 >= v30)
      {
        return 1;
      }

      v33 = *(v26 + 8 * v25);
      ++v32;
    }

    while (!v33);
    v31 = __clz(__rbit64(v33));
    v50 = (v33 - 1) & v33;
LABEL_13:
    v51 = v25;
    v34 = *(a1 + 48);
    v55 = *(v22 + 72);
    v35 = v24;
    sub_1B1E5CF1C(v34 + v55 * (v31 | (v25 << 6)), v24);
    sub_1B1E5CA90(v35, v57);
    sub_1B1F1B7C0();
    ToolKitIndexingReason.Changeset.Provenance.hash(into:)();
    v36 = sub_1B1F1B7F0();
    v37 = -1 << *(a2 + 32);
    v38 = v36 & ~v37;
    if ((*(v56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
    {
      v54 = ~v37;
      while (1)
      {
        sub_1B1E5CF1C(*(a2 + 48) + v38 * v55, v18);
        v39 = *(v7 + 48);
        sub_1B1E5CF1C(v18, v9);
        sub_1B1E5CF1C(v57, &v9[v39]);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_1B1E5CF1C(v9, v13);
            v41 = *v13;
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              sub_1B1E5C898();

              goto LABEL_26;
            }

            v52 = sub_1B1E398D0(v41, *&v9[v39]);
            sub_1B1E5C898();

            if ((v52 & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          case 2u:
            sub_1B1E5C898();
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              goto LABEL_36;
            }

            goto LABEL_26;
          case 3u:
            sub_1B1E5C898();
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              goto LABEL_36;
            }

            goto LABEL_26;
          default:
            v40 = v53;
            sub_1B1E5CF1C(v9, v53);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_1B1E5C898();
              sub_1B1E5C898();
LABEL_26:
              sub_1B1E5C830(v9);
            }

            else
            {
              sub_1B1E5CA90(&v9[v39], v6);
              if ((sub_1B1F1A310() & 1) != 0 && (v42 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0), *(v40 + *(v42 + 20)) == *&v6[*(v42 + 20)]))
              {
                v43 = sub_1B1E38FD4(*(v40 + *(v49 + 20)), *&v6[*(v49 + 20)]);
                sub_1B1E5C898();
                if (v43)
                {
                  sub_1B1E5C898();
                  sub_1B1E5C898();
LABEL_36:
                  sub_1B1E5C898();
                  result = sub_1B1E5C898();
                  v22 = v47;
                  a1 = v48;
                  v24 = v46;
                  v29 = v50;
                  v25 = v51;
                  v26 = v45;
                  v30 = v44;
                  if (v50)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_8;
                }
              }

              else
              {
                sub_1B1E5C898();
              }

              sub_1B1E5C898();
              sub_1B1E5C898();
LABEL_33:
              sub_1B1E5C898();
            }

            v38 = (v38 + 1) & v54;
            if (((*(v56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              goto LABEL_39;
            }

            break;
        }
      }
    }

LABEL_39:
    sub_1B1E5C898();
  }

  return 0;
}

uint64_t sub_1B1E56574(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047270 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616974726170 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B1E56684(char a1)
{
  if (!a1)
  {
    return 1819047270;
  }

  if (a1 == 1)
  {
    return 0x6C616974726170;
  }

  return 1701736302;
}

uint64_t sub_1B1E566CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}