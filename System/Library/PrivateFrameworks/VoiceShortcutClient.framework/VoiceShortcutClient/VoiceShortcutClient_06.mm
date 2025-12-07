uint64_t sub_1B1E6905C(uint64_t a1)
{
  v2 = sub_1B1E69484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69098(uint64_t a1)
{
  v2 = sub_1B1E69430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E690D4(uint64_t a1)
{
  v2 = sub_1B1E69430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutClientRequest.ToolKit.SyncingRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_34();
  a25 = v30;
  a26 = v31;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B10, &qword_1B1F33BD0);
  OUTLINED_FUNCTION_0();
  v49 = v35;
  v50 = v34;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v48 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B18, &qword_1B1F33BD8);
  OUTLINED_FUNCTION_0();
  v51 = v39;
  v52 = v38;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_38_1();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B20, &qword_1B1F33BE0);
  OUTLINED_FUNCTION_0();
  v43 = v42;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_19_8();
  v45 = *(v26 + 16);
  __swift_project_boxed_opaque_existential_0(v33, v33[3]);
  sub_1B1E693DC();
  sub_1B1F1B830();
  if (v45 < 0)
  {
    a16 = 1;
    sub_1B1E69430();
    v29 = v48;
    OUTLINED_FUNCTION_35_2(&_s7ToolKitO14SyncingRequestO14PushCodingKeysON, &a16);
    v46 = v50;
    sub_1B1F1B280();
    v47 = v49;
  }

  else
  {
    a15 = 0;
    sub_1B1E69484();
    OUTLINED_FUNCTION_35_2(&_s7ToolKitO14SyncingRequestO14PullCodingKeysON, &a15);
    v46 = v52;
    sub_1B1F1B250();
    if (!v27)
    {
      OUTLINED_FUNCTION_32_5();
      sub_1B1F1B280();
      sub_1B1F1B280();
    }

    v47 = v51;
  }

  (*(v47 + 8))(v29, v46);
  (*(v43 + 8))(v28, v41);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E693DC()
{
  result = qword_1EB785B28;
  if (!qword_1EB785B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B28);
  }

  return result;
}

unint64_t sub_1B1E69430()
{
  result = qword_1EB785B30;
  if (!qword_1EB785B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B30);
  }

  return result;
}

unint64_t sub_1B1E69484()
{
  result = qword_1EB785B38;
  if (!qword_1EB785B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B38);
  }

  return result;
}

void VoiceShortcutClientRequest.ToolKit.SyncingRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  v84 = v23;
  v26 = v25;
  v82 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B40, &qword_1B1F33BE8);
  OUTLINED_FUNCTION_0();
  v79 = v28;
  v80 = v29;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_19_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B48, &qword_1B1F33BF0);
  OUTLINED_FUNCTION_0();
  v81 = v31;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_38_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B50, &unk_1B1F33BF8);
  OUTLINED_FUNCTION_0();
  v35 = v34;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v75 - v37;
  v39 = v26[3];
  v83 = v26;
  __swift_project_boxed_opaque_existential_0(v26, v39);
  sub_1B1E693DC();
  v40 = v84;
  sub_1B1F1B810();
  if (v40)
  {
    goto LABEL_9;
  }

  v78 = v24;
  v41 = v82;
  v84 = v35;
  sub_1B1F1B210();
  sub_1B1E32BFC();
  if (v43 == v42 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_40();
  v77 = 0;
  if (v47 < (v46 >> 1))
  {
    v76 = *(v45 + v44);
    sub_1B1E32BF8();
    v49 = v48;
    v51 = v50;
    swift_unknownObjectRelease();
    if (v49 == v51 >> 1)
    {
      if (v76)
      {
        sub_1B1E69430();
        v52 = v77;
        sub_1B1F1B180();
        if (v52)
        {
LABEL_7:
          v53 = OUTLINED_FUNCTION_3_13();
          v54(v53);
          swift_unknownObjectRelease();
LABEL_9:
          __swift_destroy_boxed_opaque_existential_1(v83);
LABEL_10:
          OUTLINED_FUNCTION_35();
          return;
        }

        v60 = sub_1B1F1B1D0();
        swift_unknownObjectRelease();
        v61 = OUTLINED_FUNCTION_12_1();
        v62(v61);
        v63 = OUTLINED_FUNCTION_3_13();
        v64(v63);
        v65 = 0;
        v66 = v60 & 1;
        v67 = 0x8000;
      }

      else
      {
        sub_1B1E69484();
        v59 = v77;
        sub_1B1F1B180();
        if (v59)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_10_8();
        v79 = sub_1B1F1B1A0();
        v80 = v68;
        OUTLINED_FUNCTION_32_5();
        OUTLINED_FUNCTION_10_8();
        LODWORD(v77) = sub_1B1F1B1D0();
        OUTLINED_FUNCTION_10_8();
        v69 = sub_1B1F1B1D0();
        swift_unknownObjectRelease();
        v70 = OUTLINED_FUNCTION_31_4();
        v71(v70);
        v72 = OUTLINED_FUNCTION_3_13();
        v73(v72);
        if (v69)
        {
          v74 = 256;
        }

        else
        {
          v74 = 0;
        }

        v67 = v74 & 0xFFFE | v77 & 1;
        v66 = v79;
        v65 = v80;
      }

      *v41 = v66;
      *(v41 + 8) = v65;
      *(v41 + 16) = v67;
      __swift_destroy_boxed_opaque_existential_1(v83);
      goto LABEL_10;
    }

LABEL_8:
    v55 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_18();
    swift_allocError();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v57 = &type metadata for VoiceShortcutClientRequest.ToolKit.SyncingRequest;
    v58 = sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8(v58);
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v84 + 8))(v38, v33);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1B1E69A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54676E6974697277 && a2 == 0xEC000000736C6F6FLL;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C65646F4D657375 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x654D736F746F6870 && a2 == 0xEE00736569726F6DLL;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616C506567616D69 && a2 == 0xEF646E756F726779;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x80000001B1F397A0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B1F1B510();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1B1E69C30(char a1)
{
  result = 0x54676E6974697277;
  switch(a1)
  {
    case 1:
      result = 0x6C65646F4D657375;
      break;
    case 2:
      result = 0x654D736F746F6870;
      break;
    case 3:
      result = 0x616C506567616D69;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E69CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E69A74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E69D20(uint64_t a1)
{
  v2 = sub_1B1E6C700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69D5C(uint64_t a1)
{
  v2 = sub_1B1E6C700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69D98(uint64_t a1)
{
  v2 = sub_1B1E6C7A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69DD4(uint64_t a1)
{
  v2 = sub_1B1E6C7A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69E10(uint64_t a1)
{
  v2 = sub_1B1E6C7FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69E4C(uint64_t a1)
{
  v2 = sub_1B1E6C7FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69E88(uint64_t a1)
{
  v2 = sub_1B1E6C850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69EC4(uint64_t a1)
{
  v2 = sub_1B1E6C850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69F00(uint64_t a1)
{
  v2 = sub_1B1E6C754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69F3C(uint64_t a1)
{
  v2 = sub_1B1E6C754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69F78(uint64_t a1)
{
  v2 = sub_1B1E6C8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69FB4(uint64_t a1)
{
  v2 = sub_1B1E6C8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutClientRequest.ToolKit.ActionAvailabilityRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_34();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B58, &qword_1B1F33C08);
  OUTLINED_FUNCTION_0();
  v75 = v33;
  v76 = v32;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_17();
  v74 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B60, &qword_1B1F33C10);
  OUTLINED_FUNCTION_0();
  v72 = v37;
  v73 = v36;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17();
  v71 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B68, &qword_1B1F33C18);
  OUTLINED_FUNCTION_0();
  v69 = v41;
  v70 = v40;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_17();
  v68 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B70, &qword_1B1F33C20);
  OUTLINED_FUNCTION_0();
  v66 = v45;
  v67 = v44;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_17();
  v65 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B78, &qword_1B1F33C28);
  OUTLINED_FUNCTION_0();
  v63 = v49;
  v64 = v48;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v62 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B80, &qword_1B1F33C30);
  OUTLINED_FUNCTION_0();
  v55 = v54;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_60();
  v57 = *v26;
  __swift_project_boxed_opaque_existential_0(v31, v31[3]);
  sub_1B1E6C700();
  sub_1B1F1B830();
  v58 = (v55 + 8);
  switch(v57)
  {
    case 1:
      OUTLINED_FUNCTION_32_5();
      sub_1B1E6C850();
      v59 = v65;
      OUTLINED_FUNCTION_4_12(&_s7ToolKitO25ActionAvailabilityRequestO18UseModelCodingKeysON, &a13);
      v61 = v66;
      v60 = v67;
      goto LABEL_7;
    case 2:
      a14 = 2;
      sub_1B1E6C7FC();
      v59 = v68;
      OUTLINED_FUNCTION_4_12(&_s7ToolKitO25ActionAvailabilityRequestO24PhotosMemoriesCodingKeysON, &a14);
      v61 = v69;
      v60 = v70;
      goto LABEL_7;
    case 3:
      a15 = 3;
      sub_1B1E6C7A8();
      v59 = v71;
      OUTLINED_FUNCTION_4_12(&_s7ToolKitO25ActionAvailabilityRequestO25ImagePlaygroundCodingKeysON, &a15);
      v61 = v72;
      v60 = v73;
      goto LABEL_7;
    case 4:
      a16 = 4;
      sub_1B1E6C754();
      v59 = v74;
      OUTLINED_FUNCTION_4_12(&_s7ToolKitO25ActionAvailabilityRequestO34VisualIntelligenceCameraCodingKeysON, &a16);
      v61 = v75;
      v60 = v76;
LABEL_7:
      (*(v61 + 8))(v59, v60);
      break;
    default:
      sub_1B1E6C8A4();
      sub_1B1F1B240();
      (*(v63 + 8))(v52, v64);
      break;
  }

  (*v58)(v27, v53);
  OUTLINED_FUNCTION_35();
}

uint64_t VoiceShortcutClientRequest.ToolKit.ActionAvailabilityRequest.hashValue.getter()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](v1);
  return sub_1B1F1B7F0();
}

void VoiceShortcutClientRequest.ToolKit.ActionAvailabilityRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_34();
  a25 = v29;
  a26 = v30;
  v100 = v26;
  v32 = v31;
  v96 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BB8, &qword_1B1F33C38);
  OUTLINED_FUNCTION_0();
  v93 = v34;
  v94 = v35;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v99 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BC0, &qword_1B1F33C40);
  OUTLINED_FUNCTION_0();
  v91 = v38;
  v92 = v39;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_17();
  v98 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BC8, &qword_1B1F33C48);
  OUTLINED_FUNCTION_0();
  v89 = v43;
  v90 = v42;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_17();
  v95 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BD0, &qword_1B1F33C50);
  OUTLINED_FUNCTION_0();
  v87 = v47;
  v88 = v46;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_60();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BD8, &qword_1B1F33C58);
  OUTLINED_FUNCTION_0();
  v86 = v50;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_19_8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BE0, &qword_1B1F33C60);
  OUTLINED_FUNCTION_0();
  v97 = v53;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v81 - v55;
  __swift_project_boxed_opaque_existential_0(v32, v32[3]);
  sub_1B1E6C700();
  v57 = v100;
  sub_1B1F1B810();
  if (v57)
  {
    goto LABEL_10;
  }

  v84 = v49;
  v85 = v27;
  v100 = v28;
  v58 = v99;
  v59 = v56;
  sub_1B1F1B210();
  sub_1B1E32BFC();
  if (v61 == v60 >> 1)
  {
    v62 = v97;
LABEL_9:
    v77 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_18();
    swift_allocError();
    v79 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v79 = &type metadata for VoiceShortcutClientRequest.ToolKit.ActionAvailabilityRequest;
    v80 = sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8(v80);
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x1E69E6AF8], v77);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v59, v52);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v32);
LABEL_11:
    OUTLINED_FUNCTION_35();
    return;
  }

  OUTLINED_FUNCTION_40();
  if (v66 < (v65 >> 1))
  {
    v82 = *(v64 + v63);
    v67 = sub_1B1E32BF8();
    v69 = v68;
    v71 = v70;
    swift_unknownObjectRelease();
    v83 = v67;
    if (v69 == v71 >> 1)
    {
      v72 = v96;
      v73 = v97;
      switch(v82)
      {
        case 1:
          OUTLINED_FUNCTION_32_5();
          sub_1B1E6C850();
          OUTLINED_FUNCTION_2_17(&_s7ToolKitO25ActionAvailabilityRequestO18UseModelCodingKeysON, &a13);
          swift_unknownObjectRelease();
          goto LABEL_16;
        case 2:
          a14 = 2;
          sub_1B1E6C7FC();
          OUTLINED_FUNCTION_2_17(&_s7ToolKitO25ActionAvailabilityRequestO24PhotosMemoriesCodingKeysON, &a14);
          swift_unknownObjectRelease();
          goto LABEL_16;
        case 3:
          a15 = 3;
          sub_1B1E6C7A8();
          OUTLINED_FUNCTION_2_17(&_s7ToolKitO25ActionAvailabilityRequestO25ImagePlaygroundCodingKeysON, &a15);
          swift_unknownObjectRelease();
LABEL_16:
          v74 = OUTLINED_FUNCTION_47();
          goto LABEL_17;
        case 4:
          a16 = 4;
          sub_1B1E6C754();
          OUTLINED_FUNCTION_10_8();
          sub_1B1F1B180();
          swift_unknownObjectRelease();
          (*(v94 + 8))(v58, v93);
          goto LABEL_18;
        default:
          a12 = 0;
          sub_1B1E6C8A4();
          OUTLINED_FUNCTION_2_17(&_s7ToolKitO25ActionAvailabilityRequestO22WritingToolsCodingKeysON, &a12);
          swift_unknownObjectRelease();
          v74 = OUTLINED_FUNCTION_47();
          v76 = v84;
LABEL_17:
          v75(v74, v76);
LABEL_18:
          (*(v73 + 8))(v67, v52);
          *v72 = v82;
          __swift_destroy_boxed_opaque_existential_1(v32);
          break;
      }

      goto LABEL_11;
    }

    v62 = v97;
    v59 = v56;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1B1E6AAD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E697865646E69 && a2 == 0xEF74736575716552;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x52676E69636E7973 && a2 == 0xEE00747365757165;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001B1F397C0 == a2)
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

uint64_t sub_1B1E6ABFC(char a1)
{
  if (!a1)
  {
    return 0x676E697865646E69;
  }

  if (a1 == 1)
  {
    return 0x52676E69636E7973;
  }

  return 0xD000000000000019;
}

uint64_t sub_1B1E6ACAC(uint64_t a1)
{
  v2 = sub_1B1E6C94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6ACE8(uint64_t a1)
{
  v2 = sub_1B1E6C94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E6AD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E6AAD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E6AD54(uint64_t a1)
{
  v2 = sub_1B1E6C8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6AD90(uint64_t a1)
{
  v2 = sub_1B1E6C8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E6ADCC(uint64_t a1)
{
  v2 = sub_1B1E6CA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6AE08(uint64_t a1)
{
  v2 = sub_1B1E6CA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E6AE44(uint64_t a1)
{
  v2 = sub_1B1E6C9F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6AE80(uint64_t a1)
{
  v2 = sub_1B1E6C9F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutClientRequest.ToolKit.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BE8, &qword_1B1F33C68);
  OUTLINED_FUNCTION_0();
  v37 = v4;
  v38 = v3;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v36 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BF0, &qword_1B1F33C70);
  OUTLINED_FUNCTION_0();
  v34 = v8;
  v35 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BF8, &qword_1B1F33C78);
  OUTLINED_FUNCTION_0();
  v33 = v13;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C00, &qword_1B1F33C80);
  OUTLINED_FUNCTION_0();
  v40 = v18;
  v41 = v17;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v19);
  v20 = v0[1];
  v39 = *v0;
  v32 = v20;
  v21 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_1B1E6C8F8();
  sub_1B1F1B830();
  v22 = (v21 >> 13) & 3;
  if (v22)
  {
    if (v22 != 1)
    {
      LOBYTE(v42) = 2;
      sub_1B1E6C94C();
      v28 = v36;
      v29 = v41;
      sub_1B1F1B240();
      LOBYTE(v42) = v39;
      sub_1B1E6C9A0();
      v30 = v38;
      sub_1B1F1B2B0();
      (*(v37 + 8))(v28, v30);
      v25 = OUTLINED_FUNCTION_47();
      v27 = v29;
      goto LABEL_7;
    }

    LOBYTE(v42) = 1;
    sub_1B1E6C9F4();
    v23 = v41;
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    v42 = v39;
    v43 = v32;
    v44 = v21 & 0x9FFF;
    sub_1B1E6CA48();
    v24 = v35;
    sub_1B1F1B2B0();
    (*(v34 + 8))(v11, v24);
  }

  else
  {
    LOBYTE(v42) = 0;
    sub_1B1E6CA9C();
    v23 = v41;
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    v42 = v39;
    type metadata accessor for ToolKitIndexingRequest(0);
    sub_1B1E6CB98(&unk_1EB783390, &protocol conformance descriptor for ToolKitIndexingRequest);
    sub_1B1F1B2B0();
    (*(v33 + 8))(v16, v12);
  }

  v25 = OUTLINED_FUNCTION_47();
  v27 = v23;
LABEL_7:
  v26(v25, v27);
  OUTLINED_FUNCTION_35();
}

void VoiceShortcutClientRequest.ToolKit.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v69 = v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C38, &qword_1B1F33C88);
  OUTLINED_FUNCTION_0();
  v68 = v5;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v71 = v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C40, &qword_1B1F33C90);
  OUTLINED_FUNCTION_0();
  v70 = v8;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_60();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C48, &qword_1B1F33C98);
  OUTLINED_FUNCTION_0();
  v66 = v11;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C50, &qword_1B1F33CA0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_38_1();
  v73 = v3;
  v17 = OUTLINED_FUNCTION_12_1();
  __swift_project_boxed_opaque_existential_0(v17, v18);
  sub_1B1E6C8F8();
  sub_1B1F1B810();
  if (v0)
  {
    goto LABEL_11;
  }

  v63 = v10;
  v64 = v14;
  v65 = 0;
  v19 = v72;
  sub_1B1F1B210();
  sub_1B1E32BFC();
  v21 = v15;
  if (v22 == v20 >> 1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_40();
  if (v26 < (v25 >> 1))
  {
    v27 = v15;
    v28 = *(v24 + v23);
    v29 = sub_1B1E32BF8();
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v31 == v33 >> 1;
    v35 = v70;
    if (!v34)
    {
      v21 = v27;
LABEL_10:
      v39 = sub_1B1F1AFE0();
      OUTLINED_FUNCTION_18();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
      *v41 = &type metadata for VoiceShortcutClientRequest.ToolKit;
      v42 = sub_1B1F1B190();
      OUTLINED_FUNCTION_15_8(v42);
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      swift_unknownObjectRelease();
      v43 = OUTLINED_FUNCTION_8_10();
      v44(v43, v21);
LABEL_11:
      v45 = v73;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_35();
      return;
    }

    if (v28)
    {
      if (v28 == 1)
      {
        LOBYTE(v74) = 1;
        sub_1B1E6C9F4();
        OUTLINED_FUNCTION_16_9();
        v36 = v65;
        sub_1B1F1B180();
        v37 = v69;
        if (!v36)
        {
          sub_1B1E6CB44();
          v38 = v67;
          OUTLINED_FUNCTION_24_6();
          sub_1B1F1B200();
          swift_unknownObjectRelease();
          (*(v35 + 8))(v1, v38);
          v52 = OUTLINED_FUNCTION_8_10();
          v53(v52, v27);
          v55 = v74;
          v54 = v75;
          v56 = v76 | 0x2000;
LABEL_18:
          v45 = v73;
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v74) = 2;
        sub_1B1E6C94C();
        OUTLINED_FUNCTION_16_9();
        v49 = v65;
        sub_1B1F1B180();
        v37 = v69;
        if (!v49)
        {
          v70 = v29;
          sub_1B1E6CAF0();
          OUTLINED_FUNCTION_24_6();
          sub_1B1F1B200();
          swift_unknownObjectRelease();
          v59 = OUTLINED_FUNCTION_47();
          v60(v59, v19);
          v61 = OUTLINED_FUNCTION_22_6();
          v62(v61);
          v54 = 0;
          v55 = v74;
          v56 = 0x4000;
          goto LABEL_18;
        }
      }
    }

    else
    {
      LOBYTE(v74) = 0;
      sub_1B1E6CA9C();
      v47 = v64;
      v46 = v65;
      OUTLINED_FUNCTION_16_9();
      sub_1B1F1B180();
      if (!v46)
      {
        type metadata accessor for ToolKitIndexingRequest(0);
        sub_1B1E6CB98(&unk_1EB783380, &protocol conformance descriptor for ToolKitIndexingRequest);
        v48 = v63;
        sub_1B1F1B200();
        swift_unknownObjectRelease();
        (*(v66 + 8))(v47, v48);
        v57 = OUTLINED_FUNCTION_22_6();
        v58(v57);
        v54 = 0;
        v56 = 0;
        v45 = v73;
        v55 = v74;
        v37 = v69;
LABEL_19:
        *v37 = v55;
        *(v37 + 8) = v54;
        *(v37 + 16) = v56;
        goto LABEL_12;
      }
    }

    v50 = OUTLINED_FUNCTION_8_10();
    v51(v50, v27);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t VCVoiceShortcutClient.reindexToolKitDatabase(request:)()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v2;
  v1[10] = v0;
  v1[11] = type metadata accessor for VoiceShortcutClientRequest(0);
  v1[12] = OUTLINED_FUNCTION_9();
  v3 = sub_1B1F1A640();
  v1[13] = v3;
  OUTLINED_FUNCTION_6_0(v3);
  v1[14] = v4;
  v1[15] = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B1E6BA50()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  *(v0 + 144) = 1;
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_24_8(v4);

  return sub_1B1E1978C(v5, (v0 + 144), v6);
}

uint64_t sub_1B1E6BB14()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v2 + 136) = v0;

  sub_1B1E04AB4(*(v2 + 96));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E6BC28()
{
  v1 = v0[17];
  sub_1B1E18F74();
  v2 = sub_1B1F1A630();
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_33_4();
    v4(v3);
LABEL_5:

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v5 = v0[14];
  v6 = v0[13];
  if (v0[4])
  {
    OUTLINED_FUNCTION_27_1(v2, v6);
    OUTLINED_FUNCTION_18();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_22_2(v7, v8);
    OUTLINED_FUNCTION_18();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v9, v10);
    (*(v5 + 8))();
    goto LABEL_5;
  }

  (*(v5 + 8))(v0[15], v6);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v11();
}

uint64_t VCVoiceShortcutClient.checkActionAvailability(request:)()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  *(v1 + 80) = v0;
  *(v1 + 88) = type metadata accessor for VoiceShortcutClientRequest(0);
  *(v1 + 96) = OUTLINED_FUNCTION_9();
  v4 = sub_1B1F1A640();
  *(v1 + 104) = v4;
  OUTLINED_FUNCTION_6_0(v4);
  *(v1 + 112) = v5;
  *(v1 + 120) = OUTLINED_FUNCTION_9();
  *(v1 + 74) = *v3;
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E6BE58()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 74);
  v2 = *(v0 + 96);
  *(v0 + 73) = 1;
  *v2 = v1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0x4000;
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_24_8(v3);

  return sub_1B1E1978C(v4, (v0 + 73), v5);
}

uint64_t sub_1B1E6BF0C()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v2 + 136) = v0;

  sub_1B1E04AB4(*(v2 + 96));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E6C020()
{
  v1 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C68, &qword_1B1F33CB8);
  sub_1B1E6CBDC();
  sub_1B1F1A630();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_33_4();
    v3(v2);
LABEL_5:

    v14 = *(v0 + 8);
    v15 = 0;
    goto LABEL_6;
  }

  v4 = *(v0 + 16);
  if (*(v0 + 72))
  {
    v5 = *(v0 + 17);
    v21 = *(v0 + 64);
    v6 = *(v0 + 56);
    v19 = *(v0 + 24);
    v20 = *(v0 + 40);
    v7 = *(v0 + 21);
    v8 = *(v0 + 23);
    sub_1B1E04B74();
    OUTLINED_FUNCTION_18();
    swift_allocError();
    *v9 = v4;
    *(v9 + 7) = v8;
    *(v9 + 5) = v7;
    *(v9 + 1) = v5;
    *(v9 + 8) = v19;
    *(v9 + 24) = v20;
    *(v9 + 40) = v6;
    *(v9 + 48) = v21;
    sub_1B1E04BC8();
    OUTLINED_FUNCTION_18();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v10, v11);
    v12 = OUTLINED_FUNCTION_12_1();
    v13(v12);
    goto LABEL_5;
  }

  v17 = OUTLINED_FUNCTION_12_1();
  v18(v17);

  v14 = *(v0 + 8);
  v15 = v4 & 1;
LABEL_6:

  return v14(v15);
}

uint64_t sub_1B1E6C1EC()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t VCVoiceShortcutClient.performToolDatabaseSync(request:)()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  *(v1 + 72) = v0;
  *(v1 + 80) = type metadata accessor for VoiceShortcutClientRequest(0);
  *(v1 + 88) = OUTLINED_FUNCTION_9();
  v4 = sub_1B1F1A640();
  *(v1 + 96) = v4;
  OUTLINED_FUNCTION_6_0(v4);
  *(v1 + 104) = v5;
  *(v1 + 112) = OUTLINED_FUNCTION_9();
  *(v1 + 120) = *v3;
  *(v1 + 152) = *(v3 + 16);
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E6C340()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  *(v0 + 154) = 1;
  v3 = *(v0 + 88);
  v4 = *(v0 + 152);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v4 | 0x2000;
  swift_storeEnumTagMultiPayload();
  sub_1B1E6CC40(v1, v2, v4);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_1B1E6C424;
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);

  return sub_1B1E1978C(v6, (v0 + 154), v7);
}

uint64_t sub_1B1E6C424()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v2 + 144) = v0;

  sub_1B1E04AB4(*(v2 + 88));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E6C538()
{
  v1 = v0[18];
  sub_1B1E18F74();
  v2 = sub_1B1F1A630();
  if (v1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
LABEL_5:

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v3 = v0[13];
  v4 = v0[12];
  if (v0[4])
  {
    OUTLINED_FUNCTION_27_1(v2, v4);
    OUTLINED_FUNCTION_18();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_22_2(v5, v6);
    OUTLINED_FUNCTION_18();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v7, v8);
    (*(v3 + 8))();
    goto LABEL_5;
  }

  (*(v3 + 8))(v0[14], v4);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v9();
}

uint64_t sub_1B1E6C698()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_2_0();

  return v0();
}

unint64_t sub_1B1E6C700()
{
  result = qword_1EB785B88;
  if (!qword_1EB785B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B88);
  }

  return result;
}

unint64_t sub_1B1E6C754()
{
  result = qword_1EB785B90;
  if (!qword_1EB785B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B90);
  }

  return result;
}

unint64_t sub_1B1E6C7A8()
{
  result = qword_1EB785B98;
  if (!qword_1EB785B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B98);
  }

  return result;
}

unint64_t sub_1B1E6C7FC()
{
  result = qword_1EB785BA0;
  if (!qword_1EB785BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785BA0);
  }

  return result;
}

unint64_t sub_1B1E6C850()
{
  result = qword_1EB785BA8;
  if (!qword_1EB785BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785BA8);
  }

  return result;
}

unint64_t sub_1B1E6C8A4()
{
  result = qword_1EB785BB0;
  if (!qword_1EB785BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785BB0);
  }

  return result;
}

unint64_t sub_1B1E6C8F8()
{
  result = qword_1EB785C08;
  if (!qword_1EB785C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C08);
  }

  return result;
}

unint64_t sub_1B1E6C94C()
{
  result = qword_1EB785C10;
  if (!qword_1EB785C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C10);
  }

  return result;
}

unint64_t sub_1B1E6C9A0()
{
  result = qword_1EB785C18;
  if (!qword_1EB785C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C18);
  }

  return result;
}

unint64_t sub_1B1E6C9F4()
{
  result = qword_1EB785C20;
  if (!qword_1EB785C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C20);
  }

  return result;
}

unint64_t sub_1B1E6CA48()
{
  result = qword_1EB785C28;
  if (!qword_1EB785C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C28);
  }

  return result;
}

unint64_t sub_1B1E6CA9C()
{
  result = qword_1EB785C30;
  if (!qword_1EB785C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C30);
  }

  return result;
}

unint64_t sub_1B1E6CAF0()
{
  result = qword_1EB785C58;
  if (!qword_1EB785C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C58);
  }

  return result;
}

unint64_t sub_1B1E6CB44()
{
  result = qword_1EB785C60;
  if (!qword_1EB785C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C60);
  }

  return result;
}

uint64_t sub_1B1E6CB98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ToolKitIndexingRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E6CBDC()
{
  result = qword_1EB785C70;
  if (!qword_1EB785C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785C68, &qword_1B1F33CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C70);
  }

  return result;
}

uint64_t sub_1B1E6CC40(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x8000) == 0)
  {
    return sub_1B1F1A760();
  }

  return result;
}

unint64_t sub_1B1E6CC54()
{
  result = qword_1EB785C78;
  if (!qword_1EB785C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C78);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B1E6CCD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >> 1 >= 0xFFF && *(a1 + 18))
    {
      v2 = *a1 + 8189;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 13) & 3 | (4 * ((*(a1 + 16) >> 2) & 0x780 | (*(a1 + 16) >> 1)))) ^ 0x1FFF;
      if (v2 >= 0x1FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B1E6CD30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 8190;
    *(result + 8) = 0;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FF) - (a2 << 11);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0x7E00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1B1E6CDD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 18))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (*(a1 + 16) & 0xFE | (*(a1 + 16) >> 15) | (*(a1 + 16) >> 1) & 0x3F00) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B1E6CE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

_BYTE *sub_1B1E6CF18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s7ToolKitO14SyncingRequestO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E6D120(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B1E6D1FC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E6D2AC()
{
  result = qword_1EB785C80;
  if (!qword_1EB785C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C80);
  }

  return result;
}

unint64_t sub_1B1E6D304()
{
  result = qword_1EB785C88;
  if (!qword_1EB785C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C88);
  }

  return result;
}

unint64_t sub_1B1E6D35C()
{
  result = qword_1EB785C90;
  if (!qword_1EB785C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C90);
  }

  return result;
}

unint64_t sub_1B1E6D3B4()
{
  result = qword_1EB785C98;
  if (!qword_1EB785C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C98);
  }

  return result;
}

unint64_t sub_1B1E6D40C()
{
  result = qword_1EB785CA0;
  if (!qword_1EB785CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CA0);
  }

  return result;
}

unint64_t sub_1B1E6D464()
{
  result = qword_1EB785CA8;
  if (!qword_1EB785CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CA8);
  }

  return result;
}

unint64_t sub_1B1E6D4BC()
{
  result = qword_1EB785CB0;
  if (!qword_1EB785CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CB0);
  }

  return result;
}

unint64_t sub_1B1E6D514()
{
  result = qword_1EB785CB8;
  if (!qword_1EB785CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CB8);
  }

  return result;
}

unint64_t sub_1B1E6D56C()
{
  result = qword_1EB785CC0;
  if (!qword_1EB785CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CC0);
  }

  return result;
}

unint64_t sub_1B1E6D5C4()
{
  result = qword_1EB785CC8;
  if (!qword_1EB785CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CC8);
  }

  return result;
}

unint64_t sub_1B1E6D61C()
{
  result = qword_1EB785CD0;
  if (!qword_1EB785CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CD0);
  }

  return result;
}

unint64_t sub_1B1E6D674()
{
  result = qword_1EB785CD8;
  if (!qword_1EB785CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CD8);
  }

  return result;
}

unint64_t sub_1B1E6D6CC()
{
  result = qword_1EB785CE0;
  if (!qword_1EB785CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CE0);
  }

  return result;
}

unint64_t sub_1B1E6D724()
{
  result = qword_1EB785CE8;
  if (!qword_1EB785CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CE8);
  }

  return result;
}

unint64_t sub_1B1E6D77C()
{
  result = qword_1EB785CF0;
  if (!qword_1EB785CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CF0);
  }

  return result;
}

unint64_t sub_1B1E6D7D4()
{
  result = qword_1EB785CF8;
  if (!qword_1EB785CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CF8);
  }

  return result;
}

unint64_t sub_1B1E6D82C()
{
  result = qword_1EB785D00;
  if (!qword_1EB785D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D00);
  }

  return result;
}

unint64_t sub_1B1E6D884()
{
  result = qword_1EB785D08;
  if (!qword_1EB785D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D08);
  }

  return result;
}

unint64_t sub_1B1E6D8DC()
{
  result = qword_1EB785D10;
  if (!qword_1EB785D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D10);
  }

  return result;
}

unint64_t sub_1B1E6D934()
{
  result = qword_1EB785D18;
  if (!qword_1EB785D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D18);
  }

  return result;
}

unint64_t sub_1B1E6D98C()
{
  result = qword_1EB785D20;
  if (!qword_1EB785D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D20);
  }

  return result;
}

unint64_t sub_1B1E6D9E4()
{
  result = qword_1EB785D28;
  if (!qword_1EB785D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D28);
  }

  return result;
}

unint64_t sub_1B1E6DA3C()
{
  result = qword_1EB785D30;
  if (!qword_1EB785D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D30);
  }

  return result;
}

unint64_t sub_1B1E6DA94()
{
  result = qword_1EB785D38;
  if (!qword_1EB785D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D38);
  }

  return result;
}

unint64_t sub_1B1E6DAEC()
{
  result = qword_1EB785D40;
  if (!qword_1EB785D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D40);
  }

  return result;
}

unint64_t sub_1B1E6DB44()
{
  result = qword_1EB785D48;
  if (!qword_1EB785D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D48);
  }

  return result;
}

unint64_t sub_1B1E6DB9C()
{
  result = qword_1EB785D50;
  if (!qword_1EB785D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D50);
  }

  return result;
}

unint64_t sub_1B1E6DBF4()
{
  result = qword_1EB785D58;
  if (!qword_1EB785D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D58);
  }

  return result;
}

unint64_t sub_1B1E6DC4C()
{
  result = qword_1EB785D60;
  if (!qword_1EB785D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D60);
  }

  return result;
}

unint64_t sub_1B1E6DCA4()
{
  result = qword_1EB785D68;
  if (!qword_1EB785D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D68);
  }

  return result;
}

unint64_t sub_1B1E6DCFC()
{
  result = qword_1EB785D70;
  if (!qword_1EB785D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D70);
  }

  return result;
}

unint64_t sub_1B1E6DD54()
{
  result = qword_1EB785D78;
  if (!qword_1EB785D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D78);
  }

  return result;
}

unint64_t sub_1B1E6DDAC()
{
  result = qword_1EB785D80;
  if (!qword_1EB785D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D80);
  }

  return result;
}

unint64_t sub_1B1E6DE04()
{
  result = qword_1EB785D88;
  if (!qword_1EB785D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B240();
}

uint64_t Collection<>.take(upTo:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B1F1AC90();
  if (a2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      return sub_1B1F1ACD0();
    }

    __break(1u);
  }

  else
  {
    if (result >= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      return sub_1B1F1ACD0();
    }
  }

  __break(1u);
  return result;
}

uint64_t XPCDarwinNotificationEventStream.Event.name.getter()
{
  v1 = *v0;
  sub_1B1F1A760();
  return v1;
}

BOOL sub_1B1E6DFA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1F1B160();

  return v2 != 0;
}

BOOL sub_1B1E6DFF8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1E6DFA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B1E6E02C(uint64_t a1@<X8>)
{
  strcpy(a1, "Notification");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_1B1E6E070@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E6DFA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E6E09C(uint64_t a1)
{
  v2 = sub_1B1E6E290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6E0D8(uint64_t a1)
{
  v2 = sub_1B1E6E290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCDarwinNotificationEventStream.Event.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785D90, &qword_1B1F34C70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E6E290();
  sub_1B1F1B810();
  if (!v2)
  {
    v9 = sub_1B1F1B1C0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B1E6E290()
{
  result = qword_1ED84EB70;
  if (!qword_1ED84EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB70);
  }

  return result;
}

unint64_t sub_1B1E6E300(uint64_t a1)
{
  result = sub_1B1E6E328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B1E6E328()
{
  result = qword_1ED84EB58;
  if (!qword_1ED84EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB58);
  }

  return result;
}

unint64_t sub_1B1E6E380()
{
  result = qword_1ED84EB50;
  if (!qword_1ED84EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB50);
  }

  return result;
}

uint64_t sub_1B1E6E400(uint64_t a1, int a2)
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

_BYTE *sub_1B1E6E44C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E6E4F8()
{
  result = qword_1EB785D98;
  if (!qword_1EB785D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D98);
  }

  return result;
}

unint64_t sub_1B1E6E550()
{
  result = qword_1ED84EB60;
  if (!qword_1ED84EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB60);
  }

  return result;
}

unint64_t sub_1B1E6E5A8()
{
  result = qword_1ED84EB68;
  if (!qword_1ED84EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB68);
  }

  return result;
}

uint64_t sub_1B1E6E650(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_1B1F1A760();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1B1DF63A0(*(a1 + 56) + 32 * v12, v36);
    *&v35 = v15;
    *(&v35 + 1) = v14;
    v32 = v35;
    v33 = v36[0];
    v34 = v36[1];
    sub_1B1DF63A0(&v33, v29);
    sub_1B1F1A760();
    if (swift_dynamicCast())
    {
      v16 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {
        goto LABEL_17;
      }

      v38 = v30;
      v31[0] = v33;
      v31[1] = v34;
      v30 = v32;
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {
        sub_1B1E7414C(v17 + 1, 1);
        v2 = v37;
      }

      v18 = v30;
      sub_1B1F1B7C0();
      sub_1B1F1A900();
      result = sub_1B1F1B7F0();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v18;
      v28 = (*(v2 + 56) + 16 * v23);
      *v28 = v38;
      v28[1] = v16;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      v30 = 0uLL;
LABEL_17:
      result = sub_1B1E0BDB8(&v32, &qword_1EB785E10, &unk_1B1F2AF80);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B1E6E914(uint64_t a1)
{
  v3 = type metadata accessor for XPCEncoder();
  swift_allocObject();
  v4 = sub_1B1E11104();
  v13[3] = v3;
  v13[4] = sub_1B1DFA880(&qword_1EB784418, type metadata accessor for XPCEncoder, &unk_1B1F2BD4C);
  v13[0] = v4;

  v5 = a1;
  sub_1B1E73330(v13);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = sub_1B1E10CB0();
    v8 = v7;
    v10 = v9;
    sub_1B1E0FF58(v6, v7, v9);
    v5 = v11;
    sub_1B1E177B0(v6, v8, v10);
  }

  return v5;
}

xpc_connection_t sub_1B1E6EA2C(uint64_t a1, unint64_t a2, dispatch_queue_t targetq)
{
  mach_service = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = name;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      mach_service = xpc_connection_create_mach_service(v6, targetq, 0);

      return mach_service;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843C0, &unk_1B1F33BC0);
  sub_1B1F1AF90();

  if (!v3)
  {
    return v10;
  }

  return mach_service;
}

xpc_connection_t sub_1B1E6EB08(uint64_t a1, unint64_t a2, dispatch_queue_t targetq)
{
  v5 = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = name;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      v5 = xpc_connection_create(v6, targetq);

      return v5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843C0, &unk_1B1F33BC0);
  sub_1B1F1AF90();

  if (!v3)
  {
    return v10;
  }

  return v5;
}

uint64_t sub_1B1E6EBE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

unint64_t XPCConnectionError.errorDescription.getter()
{
  v1 = v0[1];
  result = 0x206E776F6E6B6E55;
  switch(v1)
  {
    case 0:
      result = 0xD000000000000016;
      break;
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      return result;
    default:
      v3 = *v0;
      OUTLINED_FUNCTION_62();
      sub_1B1F1AFA0();

      OUTLINED_FUNCTION_28_6();
      MEMORY[0x1B273D1A0](v3, v1);
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1B1E6ED4C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1B1E6EE4C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1B1E75DBC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1B1E6EDBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1B1E75DAC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1B1DFB8E8(v1, v2);
  return sub_1B1E6EE94(v4, v3);
}

uint64_t sub_1B1E6EE4C()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_6_8();
  sub_1B1DFB8E8(v0, v1);
  return OUTLINED_FUNCTION_6_8();
}

uint64_t sub_1B1E6EE94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return sub_1B1DEBA94(v5, v6);
}

uint64_t sub_1B1E6EF30@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1B1E6F030();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1B1E748F4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1B1E6EFA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1B1E748CC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1B1DFB8E8(v1, v2);
  return sub_1B1E6F078(v4, v3);
}

uint64_t sub_1B1E6F030()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_6_8();
  sub_1B1DFB8E8(v0, v1);
  return OUTLINED_FUNCTION_6_8();
}

uint64_t sub_1B1E6F078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return sub_1B1DEBA94(v5, v6);
}

uint64_t sub_1B1E6F114(_xpc_connection_s *a1, void *a2)
{
  *(v2 + 32) = sub_1B1F1A730();
  *(v2 + 40) = sub_1B1F1A730();
  *(v2 + 48) = 0xD000000000000010;
  *(v2 + 56) = 0x80000001B1F39A00;
  *(v2 + 64) = 0xD000000000000010;
  *(v2 + 72) = 0x80000001B1F39A20;
  *(v2 + 80) = 0xD000000000000017;
  *(v2 + 88) = 0x80000001B1F39A40;
  *(v2 + 96) = 0xD000000000000021;
  *(v2 + 104) = 0x80000001B1F39A60;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v9[4] = sub_1B1E75790;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B1E6EBE0;
  v9[3] = &block_descriptor_58;
  v6 = _Block_copy(v9);
  swift_unknownObjectRetain_n();
  v7 = a2;

  xpc_connection_set_event_handler(a1, v6);
  _Block_release(v6);
  swift_unknownObjectRelease();

  return v2;
}

void sub_1B1E6F2D4(void *a1, void *a2, _xpc_connection_s *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = MEMORY[0x1B273FB80](a1);
  if (v9 == sub_1B1F1A550())
  {
    v12 = sub_1B1F1A5A0();
    swift_unknownObjectRelease();
    if (v12 == a1)
    {
      swift_beginAccess();
      v14 = a2[16];
      if (!v14)
      {
        return;
      }

      v15 = a2[17];
    }

    else
    {
      v13 = sub_1B1F1A5B0();
      swift_unknownObjectRelease();
      if (v13 != a1)
      {
        return;
      }

      swift_beginAccess();
      v14 = a2[14];
      if (!v14)
      {
        return;
      }

      v15 = a2[15];
    }

    v14(v29);
    sub_1B1DEBA94(v14, v15);
    return;
  }

  if (v9 != sub_1B1F1A590())
  {
    goto LABEL_3;
  }

  v16 = a2[6];
  v17 = a2[7];
  swift_unknownObjectRetain();
  v18 = sub_1B1E07BD8(v16, v17, a1);
  if (!v19)
  {
    swift_unknownObjectRelease();
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B1F2A3B0;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 32) = 0xD00000000000003ELL;
    *(v10 + 40) = 0x80000001B1F39A90;
    sub_1B1F1B7A0();

    v11 = a2[2];

    xpc_connection_cancel(v11);
    return;
  }

  v20 = v18;
  v21 = v19;
  v22 = sub_1B1F1A8E0();
  v23 = xpc_dictionary_get_value(a1, (v22 + 32));

  if (!v23)
  {
    swift_unknownObjectRelease();

    goto LABEL_3;
  }

  swift_beginAccess();
  sub_1B1F1A760();
  v24 = sub_1B1E0E2C0();
  v26 = v25;

  if (v24)
  {

    v27 = sub_1B1F1AA80();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v24;
    v28[5] = v26;
    v28[6] = v23;
    v28[7] = a1;
    v28[8] = a2;
    v28[9] = a3;

    swift_unknownObjectRetain();
    sub_1B1E700AC(0, 0, v8, &unk_1B1F35190, v28);
LABEL_21:

    return;
  }

  swift_beginAccess();
  sub_1B1F1A760();
  v30 = sub_1B1E0E2C0();
  v32 = v31;

  if (v30)
  {

    v33 = sub_1B1F1AA80();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v30;
    v34[5] = v32;
    v34[6] = v23;
    sub_1B1DFB8E8(v30, v32);
    swift_unknownObjectRetain();
    sub_1B1E700AC(0, 0, v8, &unk_1B1F35180, v34);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1B1DEBA94(v30, v32);
    goto LABEL_21;
  }

  reply = xpc_dictionary_create_reply(a1);
  if (reply)
  {
    v36 = reply;

    v37 = sub_1B1F1A8E0();
    xpc_dictionary_set_BOOL(v36, (v37 + 32), 1);

    xpc_connection_send_message(a3, v36);
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1B1F2A3B0;
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1B1F1AFA0();

    v41 = 0xD000000000000029;
    v42 = 0x80000001B1F39AD0;
    MEMORY[0x1B273D1A0](v20, v21);

    v39 = v41;
    v40 = v42;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    *(v38 + 32) = v39;
    *(v38 + 40) = v40;
    sub_1B1F1B7A0();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1B1E6F818(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v14;
  v8[19] = a7;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v8[22] = v10;
  *v10 = v8;
  v10[1] = sub_1B1E6F920;

  return v12(a6);
}

uint64_t sub_1B1E6F920()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B1E6FA24()
{
  OUTLINED_FUNCTION_15();
  reply = xpc_dictionary_create_reply(*(v0 + 152));
  v2 = *(v0 + 184);
  if (reply)
  {
    v3 = reply;
    v4 = *(v0 + 168);
    v5 = sub_1B1F1A8E0();
    swift_unknownObjectRetain();
    xpc_dictionary_set_value(v3, (v5 + 32), v2);

    swift_unknownObjectRelease();
    xpc_connection_send_message(v4, v3);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    *(swift_allocObject() + 16) = xmmword_1B1F2A3B0;
    OUTLINED_FUNCTION_28_6();
    v6[7] = MEMORY[0x1E69E6158];
    v6[4] = 0xD000000000000039;
    v6[5] = v7;
    OUTLINED_FUNCTION_15_12(v6);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_2_0();

  return v8();
}

uint64_t sub_1B1E6FB50()
{
  reply = xpc_dictionary_create_reply(*(v0 + 152));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 192);
    sub_1B1F1A760();
    v4 = v3;
    sub_1B1E6FD30(v3, (v0 + 16));
    v5 = sub_1B1E6E914(v0 + 16);
    v6 = *(v0 + 168);
    sub_1B1E75620(v0 + 16);
    v7 = sub_1B1F1A8E0();

    xpc_dictionary_set_value(v2, (v7 + 32), v5);

    swift_unknownObjectRelease();
    xpc_connection_send_message(v6, v2);
    swift_unknownObjectRelease();
  }

  v8 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B1F2A3B0;
  OUTLINED_FUNCTION_62();
  sub_1B1F1AFA0();
  *(v0 + 128) = v14;
  *(v0 + 136) = v15;
  OUTLINED_FUNCTION_31_5();
  *(v0 + 144) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1B0A0();
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  OUTLINED_FUNCTION_15_12(v9);

  OUTLINED_FUNCTION_2_0();

  return v12();
}

uint64_t sub_1B1E6FD30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getErrorValue();
  v4 = sub_1B1F1B750();
  v35 = v5;
  v36 = v4;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E00, &qword_1B1F351A0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
    v7 = sub_1B1F1A140();
    v33 = v8;
    v34 = v7;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1B1E0BDB8(&v37, &qword_1EB785E08, &unk_1B1F351A8);
    v33 = 0;
    v34 = 0;
  }

  v9 = a1;
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
    v10 = sub_1B1F1A130();
    v31 = v11;
    v32 = v10;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1B1E0BDB8(&v37, &qword_1EB785E08, &unk_1B1F351A8);
    v31 = 0;
    v32 = 0;
  }

  v12 = a1;
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
    v13 = sub_1B1F1A150();
    v29 = v14;
    v30 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1B1E0BDB8(&v37, &qword_1EB785E08, &unk_1B1F351A8);
    v29 = 0;
    v30 = 0;
  }

  v15 = a1;
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
    v16 = sub_1B1F1A120();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1B1E0BDB8(&v37, &qword_1EB785E08, &unk_1B1F351A8);
    v16 = 0;
    v18 = 0;
  }

  v19 = sub_1B1F1A1B0();
  v20 = [v19 domain];
  v21 = sub_1B1F1A890();
  v23 = v22;

  v24 = [v19 code];
  v25 = [v19 userInfo];
  v26 = sub_1B1F1A710();

  v27 = sub_1B1E6E650(v26);

  *a2 = v36;
  a2[1] = v35;
  a2[2] = v34;
  a2[3] = v33;
  a2[4] = v32;
  a2[5] = v31;
  a2[6] = v30;
  a2[7] = v29;
  a2[8] = v16;
  a2[9] = v18;
  a2[10] = v21;
  a2[11] = v23;
  a2[12] = v24;
  a2[13] = v27;
  return result;
}

uint64_t sub_1B1E700AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1B1E058E0(a3, v24 - v10);
  v12 = sub_1B1F1AA80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1E0BDB8(v11, &qword_1EB783E48, &qword_1B1F30630);
  }

  else
  {
    sub_1B1F1AA70();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B1F1AA20();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B1F1A8E0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1B1E0BDB8(a3, &qword_1EB783E48, &qword_1B1F30630);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B1E0BDB8(a3, &qword_1EB783E48, &qword_1B1F30630);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1B1E70380(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_1B1E70478;

  return v10(a6);
}

uint64_t sub_1B1E70478()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v6 + 48) = v0;

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

uint64_t sub_1B1E70590()
{
  OUTLINED_FUNCTION_26_4();
  v1 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B1F2A3B0;
  OUTLINED_FUNCTION_62();
  sub_1B1F1AFA0();
  v0[2] = v7;
  v0[3] = v8;
  OUTLINED_FUNCTION_31_5();
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1B0A0();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  OUTLINED_FUNCTION_15_12(v2);

  OUTLINED_FUNCTION_2_0();

  return v5();
}

uint64_t XPCConnection.__allocating_init(incomingConnection:)(uint64_t a1)
{
  v17 = sub_1B1F1AD60();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  sub_1B1F1AD50();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v7 = sub_1B1F1A6B0();
  v8 = OUTLINED_FUNCTION_8(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  v9 = *(a1 + 16);
  sub_1B1E1D940();
  swift_unknownObjectRetain();
  sub_1B1F1A680();
  OUTLINED_FUNCTION_2_18();
  sub_1B1DFA880(v10, v11, MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  OUTLINED_FUNCTION_1_20();
  sub_1B1E2FC9C(v12, &unk_1EB7845B0, qword_1B1F34ED0, v13);
  sub_1B1F1AF00();
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8090], v17);
  OUTLINED_FUNCTION_19_9();
  v14 = sub_1B1F1AD80();
  type metadata accessor for XPCConnection();
  OUTLINED_FUNCTION_27_5();
  swift_allocObject();
  v15 = sub_1B1E6F114(v9, v14);

  return v15;
}

uint64_t static XPCConnection.endpoint(_:)(_xpc_endpoint_s **a1)
{
  v28 = sub_1B1F1AD60();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_3();
  v7 = v6 - v5;
  sub_1B1F1AD50();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v9 = sub_1B1F1A6B0();
  v10 = OUTLINED_FUNCTION_8(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v11 = sub_1B1F1A670();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_3();
  v17 = v16 - v15;
  v27 = *a1;
  sub_1B1E1D940();
  (*(v13 + 104))(v17, *MEMORY[0x1E69E7F98], v11);
  sub_1B1F1AD90();
  (*(v13 + 8))(v17, v11);
  sub_1B1F1A680();
  OUTLINED_FUNCTION_2_18();
  sub_1B1DFA880(v18, v19, MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  OUTLINED_FUNCTION_1_20();
  sub_1B1E2FC9C(v20, &unk_1EB7845B0, qword_1B1F34ED0, v21);
  sub_1B1F1AF00();
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8090], v28);
  OUTLINED_FUNCTION_19_9();
  v22 = sub_1B1F1AD80();
  v23 = xpc_connection_create_from_endpoint(v27);
  type metadata accessor for XPCConnection();
  OUTLINED_FUNCTION_27_5();
  swift_allocObject();
  swift_unknownObjectRetain();
  v24 = v22;
  v25 = sub_1B1E6F114(v23, v24);
  xpc_connection_activate(v23);

  swift_unknownObjectRelease();
  return v25;
}

uint64_t sub_1B1E70C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, id))
{
  v25 = sub_1B1F1AD60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  sub_1B1F1AD50();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  v9 = sub_1B1F1A6B0();
  v10 = OUTLINED_FUNCTION_8(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  v11 = sub_1B1F1A670();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  sub_1B1E1D940();
  (*(v13 + 104))(v3, *MEMORY[0x1E69E7F98], v11);
  sub_1B1F1AD90();
  (*(v13 + 8))(v3, v11);
  sub_1B1F1A680();
  OUTLINED_FUNCTION_2_18();
  sub_1B1DFA880(v15, v16, MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  OUTLINED_FUNCTION_1_20();
  sub_1B1E2FC9C(v17, &unk_1EB7845B0, qword_1B1F34ED0, v18);
  sub_1B1F1AF00();
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8090], v25);
  OUTLINED_FUNCTION_19_9();
  v19 = sub_1B1F1AD80();
  v20 = a3(a1, a2, v19);
  type metadata accessor for XPCConnection();
  OUTLINED_FUNCTION_27_5();
  swift_allocObject();
  v21 = v19;
  v22 = swift_unknownObjectRetain();
  v23 = sub_1B1E6F114(v22, v21);
  xpc_connection_activate(v20);

  swift_unknownObjectRelease();
  return v23;
}

uint64_t sub_1B1E70F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  OUTLINED_FUNCTION_5_1();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E70FB0()
{
  v1 = sub_1B1E0FE6C(v0[5], v0[6], *(v0[7] + 16));
  v0[9] = v1;
  v2 = v1;
  v3 = v0[8];
  v18 = v0[7];
  v4 = v0[6];
  empty = xpc_dictionary_create_empty();
  v0[2] = empty;
  v0[3] = v4;
  swift_getMetatypeMetadata();
  sub_1B1F1A8D0();
  v6 = sub_1B1F1A8E0();
  v7 = sub_1B1F1A8E0();

  xpc_dictionary_set_string(empty, (v6 + 32), (v7 + 32));

  v8 = sub_1B1F1A8E0();
  swift_unknownObjectRetain();
  xpc_dictionary_set_value(empty, (v8 + 32), v2);

  swift_unknownObjectRelease();
  v9 = swift_task_alloc();
  v0[10] = v9;
  v9[2] = v4;
  v9[3] = v18;
  v9[4] = v3;
  v9[5] = v0 + 2;
  v10 = swift_task_alloc();
  v0[11] = v10;
  swift_getAssociatedTypeWitness();
  *v10 = v0;
  v10[1] = sub_1B1E711F8;
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DE38](v11, v12, v13, v14, 0xE800000000000000, v15, v9, v16);
}

uint64_t sub_1B1E711F8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1E712FC()
{
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_0();

  return v0();
}

uint64_t sub_1B1E71360()
{
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_0();

  return v0();
}

uint64_t sub_1B1E713CC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v10 = sub_1B1F1AA50();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *a3;
  v15 = *(a2 + 24);
  v20 = *(a2 + 16);
  v21 = v15;
  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a2;
  (*(v11 + 32))(&v17[v16], v13, v10);
  aBlock[4] = sub_1B1E75650;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1E6EBE0;
  aBlock[3] = &block_descriptor_5;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  xpc_connection_send_message_with_reply(v20, v14, v21, v18);
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1E71604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1B1E71CC8(a1, v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 16))(v10, v12, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1AA50();
  sub_1B1F1AA40();
  return (*(v7 + 8))(v12, AssociatedTypeWitness);
}

void *sub_1B1E71804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1E0FE6C(a1, a2, *(a3 + 16));
  if (!v4)
  {
    v6 = result;
    xdict = xpc_dictionary_create_empty();
    swift_getMetatypeMetadata();
    sub_1B1F1A8D0();
    v7 = sub_1B1F1A8E0();
    v8 = sub_1B1F1A8E0();

    xpc_dictionary_set_string(xdict, (v7 + 32), (v8 + 32));

    v9 = sub_1B1F1A8E0();
    swift_unknownObjectRetain();
    xpc_dictionary_set_value(xdict, (v9 + 32), v6);
    swift_unknownObjectRelease();

    v10 = xpc_connection_send_message_with_reply_sync(*(v3 + 16), xdict);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1B1E71CC8(v10, v13, AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1B1E7199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1E0FE6C(a1, a2, *(a3 + 16));
  if (!v4)
  {
    v6 = result;
    empty = xpc_dictionary_create_empty();
    swift_getMetatypeMetadata();
    sub_1B1F1A8D0();
    v8 = sub_1B1F1A8E0();
    v9 = sub_1B1F1A8E0();

    xpc_dictionary_set_string(empty, (v8 + 32), (v9 + 32));

    v10 = sub_1B1F1A8E0();
    swift_unknownObjectRetain();
    xpc_dictionary_set_value(empty, (v10 + 32), v6);
    swift_unknownObjectRelease();

    xpc_connection_send_message(*(v3 + 16), empty);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B1E71AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_12(a1, a2, a3, a4);
  sub_1B1F1A8D0();
  v5 = OUTLINED_FUNCTION_13_6();
  sub_1B1E71B50(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_32_6(v4 + 32, v17);

  swift_isUniquelyReferenced_nonNull_native();
  v10 = OUTLINED_FUNCTION_16_10();
  sub_1B1E0DF18(v10, v11, v12, v13, v14);
  *(v4 + 32) = v16;

  return swift_endAccess();
}

void *sub_1B1E71B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a2;
  v9[5] = a3;
  return &unk_1B1F35150;
}

uint64_t sub_1B1E71BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_12(a1, a2, a3, a4);
  sub_1B1F1A8D0();
  v5 = OUTLINED_FUNCTION_13_6();
  sub_1B1E71C58(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_32_6(v4 + 40, v17);

  swift_isUniquelyReferenced_nonNull_native();
  v10 = OUTLINED_FUNCTION_16_10();
  sub_1B1E0DF40(v10, v11, v12, v13, v14);
  *(v4 + 40) = v16;

  return swift_endAccess();
}

void *sub_1B1E71C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a2;
  v9[5] = a3;
  return &unk_1B1F35140;
}

uint64_t sub_1B1E71CC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1B273FB80](a1, a2);
  if (v8 == sub_1B1F1A550())
  {
    v11 = sub_1B1F1A5A0();
    swift_unknownObjectRelease();
    if (v11 == a1)
    {
      if (xpc_connection_copy_invalidation_reason())
      {
        v19 = sub_1B1F1A920();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v27 = sub_1B1E74404();
      OUTLINED_FUNCTION_13(&type metadata for XPCConnectionError, v27);
      *v28 = v19;
      v28[1] = v21;
    }

    else
    {
      v12 = sub_1B1F1A5B0();
      swift_unknownObjectRelease();
      v13 = sub_1B1E74404();
      OUTLINED_FUNCTION_13(&type metadata for XPCConnectionError, v13);
      *v14 = 0;
      if (v12 == a1)
      {
        v15 = 1;
      }

      else
      {
        v15 = 3;
      }

      v14[1] = v15;
    }

    return swift_willThrow();
  }

  if (v8 != sub_1B1F1A590())
  {
    v9 = sub_1B1E74404();
    OUTLINED_FUNCTION_13(&type metadata for XPCConnectionError, v9);
    *v10 = xmmword_1B1F34EB0;
    return swift_willThrow();
  }

  v16 = sub_1B1F1A8E0();
  v17 = swift_unknownObjectRetain();
  v18 = xpc_dictionary_get_value(v17, (v16 + 32));

  if (v18)
  {
    XPCCoder.decode<A>(_:from:)(a3, v18, a3, a4);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = sub_1B1F1A8E0();
    v23 = xpc_dictionary_get_BOOL(a1, (v22 + 32));

    if (v23)
    {
      v24 = sub_1B1E74404();
      OUTLINED_FUNCTION_13(&type metadata for XPCConnectionError, v24);
      v26 = xmmword_1B1F34EC0;
    }

    else
    {
      v30 = sub_1B1F1A8E0();
      v31 = xpc_dictionary_get_value(a1, (v30 + 32));

      if (v31)
      {
        sub_1B1F1B0B0();
        v32 = MEMORY[0x1E69E7CC0];
        v33 = sub_1B1F1A730();
        v37[3] = &type metadata for XPCDecoder;
        v37[0] = v31;
        v37[1] = v32;
        v37[4] = sub_1B1E141EC();
        v37[2] = v33;
        swift_unknownObjectRetain();
        sub_1B1E735D4(v37, __src);
        if (!v4)
        {
          v35 = sub_1B1E75540();
          OUTLINED_FUNCTION_13(&type metadata for XPCRemoteError, v35);
          memcpy(v36, __src, 0x70uLL);
          swift_willThrow();
        }

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      v34 = sub_1B1E74404();
      OUTLINED_FUNCTION_13(&type metadata for XPCConnectionError, v34);
      v26 = xmmword_1B1F34EB0;
    }

    *v25 = v26;
    swift_willThrow();
  }

  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.deinit()
{
  swift_unknownObjectRelease();

  sub_1B1DEBA94(*(v0 + 112), *(v0 + 120));
  sub_1B1DEBA94(*(v0 + 128), *(v0 + 136));
  return v0;
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();
  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t XPCConnection.description.getter()
{
  v1 = *(v0 + 16);
  xpc_connection_get_pid(v1);
  sub_1B1F1AFA0();

  OUTLINED_FUNCTION_28_6();
  v2 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v2);

  MEMORY[0x1B273D1A0](8250, 0xE200000000000000);
  v3 = MEMORY[0x1B273FA10](v1);
  v4 = sub_1B1F1A920();
  v6 = v5;
  MEMORY[0x1B273F720](v3, -1, -1);
  MEMORY[0x1B273D1A0](v4, v6);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t XPCConnection.debugDescription.getter()
{
  v1 = *(v0 + 16);
  xpc_connection_get_pid(v1);
  swift_beginAccess();
  v2 = sub_1B1F1A760();
  sub_1B1E72388(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783B50, &qword_1B1F29880);
  sub_1B1E2FC9C(&qword_1EB785DA8, &qword_1EB783B50, &qword_1B1F29880, MEMORY[0x1E69E6310]);
  v3 = sub_1B1F1A810();
  v5 = v4;

  sub_1B1F1AFA0();

  OUTLINED_FUNCTION_28_6();
  v6 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v6);

  MEMORY[0x1B273D1A0](8250, 0xE200000000000000);
  v7 = MEMORY[0x1B273FA10](v1);
  v8 = sub_1B1F1A920();
  v10 = v9;
  MEMORY[0x1B273F720](v7, -1, -1);
  MEMORY[0x1B273D1A0](v8, v10);

  MEMORY[0x1B273D1A0](0xD000000000000014, 0x80000001B1F398E0);
  MEMORY[0x1B273D1A0](v3, v5);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD000000000000013;
}

void *sub_1B1E72388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1B1E2B3B4(*(a1 + 16), 0);
  v4 = sub_1B1E2CEE4(&v7, v3 + 4, v1, a1);
  v5 = v7;
  sub_1B1F1A760();
  sub_1B1E2CC74(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v7 = v3;
  sub_1B1E7491C(&v7);
  return v7;
}

uint64_t sub_1B1E72490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();
  v5[10] = *(a4 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E725C8, 0, 0);
}

uint64_t sub_1B1E725C8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_4();
  if (v0)
  {

    OUTLINED_FUNCTION_2_0();

    return v2();
  }

  else
  {
    v7 = (v1[3] + *v1[3]);
    v4 = swift_task_alloc();
    v1[12] = v4;
    *v4 = v1;
    v4[1] = sub_1B1E72718;
    v5 = v1[11];
    v6 = v1[9];

    return v7(v6, v5);
  }
}

uint64_t sub_1B1E72718()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1E72814()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[5];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1B1E0FE6C(v4, v6, AssociatedConformanceWitness);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v7);

  v11 = v0[1];
  if (!v1)
  {
    v10 = v9;
  }

  return v11(v10);
}

uint64_t sub_1B1E72928()
{
  OUTLINED_FUNCTION_1();
  (*(v0[10] + 8))(v0[11], v0[5]);

  OUTLINED_FUNCTION_2_0();

  return v1();
}

uint64_t sub_1B1E729A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a4 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E72A64, 0, 0);
}

uint64_t sub_1B1E72A64()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_4();
  if (v0)
  {

    OUTLINED_FUNCTION_2_0();

    return v2();
  }

  else
  {
    v6 = (v1[3] + *v1[3]);
    v4 = swift_task_alloc();
    v1[9] = v4;
    *v4 = v1;
    v4[1] = sub_1B1E72BA4;
    v5 = v1[8];

    return v6(v5);
  }
}

uint64_t sub_1B1E72BA4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B1E72C8C()
{
  OUTLINED_FUNCTION_1();
  (*(v0[7] + 8))(v0[8], v0[5]);

  OUTLINED_FUNCTION_2_0();

  return v1();
}

unint64_t sub_1B1E72D0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E20, &qword_1B1F2F1A0);
    v2 = sub_1B1F1B140();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  result = sub_1B1F1A760();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];
    sub_1B1F1A760();
    sub_1B1F1A760();
    swift_dynamicCast();
    sub_1B1E077D8(&v22, v24);
    sub_1B1E077D8(v24, v25);
    sub_1B1E077D8(v25, &v23);
    result = sub_1B1DEBED8(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_1B1E077D8(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_1B1E077D8(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B1E72F58()
{
  v1 = *(v0 + 80);
  sub_1B1F1A760();
  return v1;
}

uint64_t sub_1B1E72F88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001B1F390E0 == a2;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001B1F39B70 == a2;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001B1F39B90 == a2;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x68636E41706C6568 && a2 == 0xEA0000000000726FLL;
          if (v9 || (sub_1B1F1B510() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
            if (v10 || (sub_1B1F1B510() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
              if (v11 || (sub_1B1F1B510() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B1F1B510();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B1E73228(char a1)
{
  result = 0x526572756C696166;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x68636E41706C6568;
      break;
    case 5:
      result = 0x6E69616D6F64;
      break;
    case 6:
      result = 0x646F43726F727265;
      break;
    case 7:
      result = 0x6F666E4972657375;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1B1E73330(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785DF0, &qword_1B1F35198);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E75594();
  sub_1B1F1B830();
  LOBYTE(v11) = 0;
  sub_1B1F1B270();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1B1F1B250();
    LOBYTE(v11) = 2;
    sub_1B1F1B250();
    LOBYTE(v11) = 3;
    sub_1B1F1B250();
    LOBYTE(v11) = 4;
    sub_1B1F1B250();
    LOBYTE(v11) = 5;
    sub_1B1F1B270();
    LOBYTE(v11) = 6;
    sub_1B1F1B290();
    v11 = *(v3 + 104);
    v10[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785DD8, &unk_1B1F35160);
    sub_1B1E75920(&qword_1EB785DF8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1B1F1B2B0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1B1E735D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785DC8, &qword_1B1F35158);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E75594();
  sub_1B1F1B810();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v9 = sub_1B1F1B1C0();
  v11 = v10;
  LOBYTE(v39[0]) = 1;
  v33 = sub_1B1F1B1A0();
  v37 = v12;
  LOBYTE(v39[0]) = 2;
  v32 = sub_1B1F1B1A0();
  v36 = v13;
  LOBYTE(v39[0]) = 3;
  v29 = sub_1B1F1B1A0();
  v30 = v9;
  v35 = v14;
  LOBYTE(v39[0]) = 4;
  v15 = sub_1B1F1B1A0();
  v31 = v16;
  v28 = v15;
  LOBYTE(v39[0]) = 5;
  v27 = sub_1B1F1B1C0();
  v34 = v17;
  LOBYTE(v39[0]) = 6;
  v26 = sub_1B1F1B1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785DD8, &unk_1B1F35160);
  v40 = 7;
  sub_1B1E75920(&unk_1EB785DE0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1B1F1B200();
  (*(v6 + 8))(v8, v5);
  v25 = v41;
  __src[0] = v30;
  __src[1] = v11;
  __src[2] = v33;
  v18 = v37;
  __src[3] = v37;
  __src[4] = v32;
  v19 = v36;
  __src[5] = v36;
  __src[6] = v29;
  v20 = v35;
  __src[7] = v35;
  v21 = v31;
  __src[8] = v28;
  __src[9] = v31;
  v22 = v34;
  __src[10] = v27;
  __src[11] = v34;
  __src[12] = v26;
  __src[13] = v41;
  sub_1B1E755E8(__src, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v30;
  v39[1] = v11;
  v39[2] = v33;
  v39[3] = v18;
  v39[4] = v32;
  v39[5] = v19;
  v39[6] = v29;
  v39[7] = v20;
  v39[8] = v28;
  v39[9] = v21;
  v39[10] = v27;
  v39[11] = v22;
  v39[12] = v26;
  v39[13] = v25;
  sub_1B1E75620(v39);
  return memcpy(a2, __src, 0x70uLL);
}

uint64_t sub_1B1E73BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E72F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E73BDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E73220();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E73C04(uint64_t a1)
{
  v2 = sub_1B1E75594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E73C40(uint64_t a1)
{
  v2 = sub_1B1E75594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E73C7C()
{
  v1 = *(v0 + 16);
  sub_1B1F1A760();
  return v1;
}

uint64_t sub_1B1E73CAC()
{
  v1 = *(v0 + 32);
  sub_1B1F1A760();
  return v1;
}

uint64_t sub_1B1E73CDC()
{
  v1 = *(v0 + 48);
  sub_1B1F1A760();
  return v1;
}

uint64_t sub_1B1E73D0C()
{
  v1 = *(v0 + 64);
  sub_1B1F1A760();
  return v1;
}

void *sub_1B1E73D80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B1E735D4(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

uint64_t sub_1B1E73E5C(uint64_t a1)
{
  v2 = sub_1B1E75D50();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1E73E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E20, &qword_1B1F2F1A0);
  v33 = v4;
  result = sub_1B1F1B130();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1B1E64060(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_1B1E077D8(v22, v34);
    }

    else
    {
      sub_1B1DF63A0(v22, v34);
      sub_1B1F1A760();
    }

    sub_1B1F1B7C0();
    sub_1B1F1A900();
    result = sub_1B1F1B7F0();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_1B1E077D8(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B1E7414C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E18, &qword_1B1F351B8);
  v36 = v4;
  result = sub_1B1F1B130();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_1B1E64060(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
      sub_1B1F1A760();
      sub_1B1F1A760();
    }

    sub_1B1F1B7C0();
    sub_1B1F1A900();
    result = sub_1B1F1B7F0();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1B1E74404()
{
  result = qword_1EB785DB0;
  if (!qword_1EB785DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785DB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient18XPCConnectionErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1E7447C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E744DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1B1E74538(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t dispatch thunk of XPCConnection.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (*(*v4 + 264) + **(*v4 + 264));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_5_2(v9);
  *v10 = v11;
  v10[1] = sub_1B1E05460;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCConnection.send<A>(_:)()
{
  return (*(*v0 + 272))();
}

{
  return (*(*v0 + 280))();
}

uint64_t dispatch thunk of XPCConnection.handle<A>(_:handler:)()
{
  return (*(*v0 + 288))();
}

{
  return (*(*v0 + 296))();
}

uint64_t sub_1B1E7491C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B1E2CB08(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1B1E74988(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B1E74988(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B1F1B2F0();
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
        v6 = sub_1B1F1A9E0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B1E74B44(v7, v8, a1, v4);
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
    return sub_1B1E74A7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B1E74A7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

        result = sub_1B1F1B510();
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

void sub_1B1E74B44(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
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
          v14 = sub_1B1F1B510();
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

          else if ((v14 ^ sub_1B1F1B510()))
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
            v86 = v5;
            v88 = v9;
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
                if (v37 || (sub_1B1F1B510() & 1) == 0)
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
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1E2B1EC();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1B1E2B1EC();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
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

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1B1E75178((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1B1E7504C(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_1B1E7504C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B1E2C634(v5);
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
    sub_1B1E75178((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1B1E75178(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1B1E2B4A4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1B1F1B510() & 1) == 0)
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

  sub_1B1E2B4A4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1B1F1B510() & 1) != 0)
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

uint64_t sub_1B1E7531C()
{
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_25_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_12_6(v1);

  return sub_1B1E729A8(v2, v3, v4, v5, v6);
}

uint64_t sub_1B1E753B8()
{
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_25_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_12_6(v1);

  return sub_1B1E72490(v2, v3, v4, v5, v6);
}

uint64_t sub_1B1E75454()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

unint64_t sub_1B1E75540()
{
  result = qword_1EB785DC0;
  if (!qword_1EB785DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785DC0);
  }

  return result;
}

unint64_t sub_1B1E75594()
{
  result = qword_1EB785DD0;
  if (!qword_1EB785DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785DD0);
  }

  return result;
}

uint64_t sub_1B1E75650(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v5 = sub_1B1F1AA50();
  OUTLINED_FUNCTION_8(v5);
  v7 = v1[4];
  v8 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1B1E71604(a1, v7, v8, v3, v4);
}

xpc_connection_t sub_1B1E75724@<X0>(const char *a1@<X0>, xpc_connection_t *a2@<X8>)
{
  result = xpc_connection_create(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

xpc_connection_t sub_1B1E75758@<X0>(const char *a1@<X0>, xpc_connection_t *a2@<X8>)
{
  result = xpc_connection_create_mach_service(a1, *(v2 + 16), 0);
  *a2 = result;
  return result;
}

uint64_t sub_1B1E75798()
{
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_25_7();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_2(v5);
  *v6 = v7;
  v6[1] = sub_1B1E05460;
  v8 = OUTLINED_FUNCTION_10_9();

  return sub_1B1E70380(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_1B1E75848()
{
  OUTLINED_FUNCTION_25_7();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_2(v7);
  *v8 = v9;
  v8[1] = sub_1B1E05D18;
  v10 = OUTLINED_FUNCTION_10_9();

  return sub_1B1E6F818(v10, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1B1E75920(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785DD8, &unk_1B1F35160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B1E7598C()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1B1E05D18;
  v3 = OUTLINED_FUNCTION_10_9();

  return v4(v3);
}

uint64_t getEnumTagSinglePayload for XPCRemoteError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCRemoteError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B1E75B9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1B1E75BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B1E75C4C()
{
  result = qword_1EB785E28;
  if (!qword_1EB785E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E28);
  }

  return result;
}

unint64_t sub_1B1E75CA4()
{
  result = qword_1EB785E30;
  if (!qword_1EB785E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E30);
  }

  return result;
}

unint64_t sub_1B1E75CFC()
{
  result = qword_1EB785E38;
  if (!qword_1EB785E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E38);
  }

  return result;
}

unint64_t sub_1B1E75D50()
{
  result = qword_1EB785E40;
  if (!qword_1EB785E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_12(uint64_t a1)
{

  return sub_1B1F1B7A0();
}

uint64_t OUTLINED_FUNCTION_23_4()
{
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(v0[6] + 8);

  return XPCCoder.decode<A>(_:from:)(v2, v3, v2, v4);
}

uint64_t sub_1B1E75E34(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  OUTLINED_FUNCTION_58_0();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E75EEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_0(a1);
  sub_1B1F1A900();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E75F34(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_35_0(a1);
  a2(v5, a1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E75F7C(uint64_t a1, char a2)
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E75FE4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_4_13();
      break;
    default:
      break;
  }

  sub_1B1F1A900();
}

uint64_t sub_1B1E760A4(uint64_t a1, char a2)
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E76124(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_13();
  }

  sub_1B1F1A900();
}

uint64_t sub_1B1E761B8(uint64_t a1, char a2)
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E76238(uint64_t a1, char a2)
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E762B4(uint64_t a1, char a2)
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E76394(uint64_t a1)
{
  sub_1B1F1B7C0();
  OUTLINED_FUNCTION_58_0();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E763EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_0(a1, a2);
  if (v2)
  {
    v5 = 0x656C67676F74;
  }

  else
  {
    v5 = 1852994932;
  }

  OUTLINED_FUNCTION_57_0(v3, v5, v4);

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E76450(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_0(a1, a2);
  if (v2)
  {
    v5 = 0x716552796C706572;
  }

  else
  {
    v5 = 0x746E657645435058;
  }

  OUTLINED_FUNCTION_57_0(v3, v5, v4);

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E764D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_0(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x61506E6564646968;
    }

    else
    {
      v5 = 0x6E65646469686E75;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_13();
  }

  OUTLINED_FUNCTION_57_0(v3, v5, v4);

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E76588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E765D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_0(a1, a2);
  if (v2)
  {
    v5 = 0x6F666E4972657355;
  }

  else
  {
    v5 = 1701667150;
  }

  OUTLINED_FUNCTION_57_0(v3, v5, v4);

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E76654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_1B1F1B7C0();
  a3(v6, a2);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E766A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_0(a1, a2);
  sub_1B1F1A900();

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E76714@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B1E7C9B4(v1, v10);
  v4 = v13;
  if (v13)
  {
    v5 = 0;
    v7 = *(&v10[0] + 1);
    v6 = *&v10[0];
  }

  else
  {
    v7 = v11;
    v5 = v12;
    sub_1B1E17F10(v10, v9);
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_1B1F19E20();
    sub_1B1DEA98C(0, &qword_1EB785FB0, 0x1E69AC640);
    swift_dynamicCast();
    v6 = v8;
    result = __swift_destroy_boxed_opaque_existential_1(v9);
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  return result;
}

BOOL static Recurrence.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    v7 = *a1;
    if (!*(a2 + 8))
    {
      v9 = sub_1B1E76958(v7, *a2);
      sub_1B1E76938(v4, 0);
      sub_1B1E76938(v2, 0);
      sub_1B1E76948(v2, 0);
      sub_1B1E76948(v4, 0);
      return v9 & 1;
    }

    sub_1B1F1A760();
    goto LABEL_19;
  }

  if (v3 != 1)
  {
    if (v2)
    {
      if (v5 == 2 && v4 == 1)
      {
        v6 = 1;
        sub_1B1E76948(1, 2);
        sub_1B1E76948(1, 2);
        return v6;
      }
    }

    else if (v5 == 2 && v4 == 0)
    {
      sub_1B1E76948(0, 2);
      sub_1B1E76948(0, 2);
      return 1;
    }

LABEL_19:
    sub_1B1E76938(v4, v5);
    sub_1B1E76948(v2, v3);
    sub_1B1E76948(v4, v5);
    return 0;
  }

  if (v5 != 1)
  {
    goto LABEL_19;
  }

  sub_1B1E76948(*a1, 1);
  sub_1B1E76948(v4, 1);
  return v2 == v4;
}

uint64_t sub_1B1E76938(uint64_t result, char a2)
{
  if (!a2)
  {
    return sub_1B1F1A760();
  }

  return v2;
}

uint64_t sub_1B1E76948(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1B1E76958(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TimeOfDayTrigger.init(recurrence:components:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TimeOfDayTrigger(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v10 = (v9 - v8);
  v11 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v12 = 1;
    }

    else
    {
      if (!v11)
      {
        sub_1B1E76948(0, 2);
        v13 = 1;
        goto LABEL_8;
      }

      v11 = 1;
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  sub_1B1E76948(v11, v12);
  v13 = 0;
LABEL_8:
  sub_1B1E76948(0, 2);
  *v10 = v13;
  sub_1B1F1A0F0();
  if (v14 & 1) != 0 || (sub_1B1F1A100(), (v15))
  {
    sub_1B1F1A110();
    OUTLINED_FUNCTION_10();
    (*(v16 + 8))(a2);
    OUTLINED_FUNCTION_54_0();

    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  else
  {
    v22 = *(v6 + 20);
    sub_1B1F1A110();
    OUTLINED_FUNCTION_10();
    (*(v23 + 32))(&v10[v22], a2);
    sub_1B1E7AEB8(v10, a3);
    OUTLINED_FUNCTION_54_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_14_13();
    return sub_1B1E7AF10(v10, v28);
  }
}

uint64_t sub_1B1E76BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6954656E4F7369 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
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

uint64_t sub_1B1E76CC4(char a1)
{
  if (a1)
  {
    return 0x6E656E6F706D6F63;
  }

  else
  {
    return 0x6D6954656E4F7369;
  }
}

uint64_t sub_1B1E76D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E76BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E76D34(uint64_t a1)
{
  v2 = sub_1B1E76F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E76D70(uint64_t a1)
{
  v2 = sub_1B1E76F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeOfDayTrigger.encode(to:)()
{
  OUTLINED_FUNCTION_33_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E50, &qword_1B1F35470);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_11();
  v2 = sub_1B1E76F00();
  OUTLINED_FUNCTION_15_13(&type metadata for TimeOfDayTrigger.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_24_0();
  sub_1B1F1B280();
  if (!v0)
  {
    type metadata accessor for TimeOfDayTrigger(0);
    OUTLINED_FUNCTION_33_2();
    sub_1B1F1A110();
    OUTLINED_FUNCTION_1_21();
    sub_1B1E771F0(v4, v5, MEMORY[0x1E6968280]);
    OUTLINED_FUNCTION_24_0();
    sub_1B1F1B2B0();
  }

  v6 = OUTLINED_FUNCTION_8_11();
  return v7(v6);
}

unint64_t sub_1B1E76F00()
{
  result = qword_1EB785E58;
  if (!qword_1EB785E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E58);
  }

  return result;
}

void TimeOfDayTrigger.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34();
  v25 = v24;
  v42 = v26;
  v44 = sub_1B1F1A110();
  OUTLINED_FUNCTION_0();
  v41 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_3();
  v31 = v30 - v29;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E68, &qword_1B1F35478);
  OUTLINED_FUNCTION_0();
  v43 = v32;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_4();
  v34 = type metadata accessor for TimeOfDayTrigger(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_3();
  v38 = (v37 - v36);
  OUTLINED_FUNCTION_44(v25, v25[3]);
  sub_1B1E76F00();
  sub_1B1F1B810();
  if (!v22)
  {
    *v38 = sub_1B1F1B1D0() & 1;
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_1_21();
    sub_1B1E771F0(v39, v40, MEMORY[0x1E6968298]);
    sub_1B1F1B200();
    (*(v43 + 8))(v23, v45);
    (*(v41 + 32))(&v38[*(v34 + 20)], v31, v44);
    sub_1B1E7AE0C(v38, v42);
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E771F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B1E77288(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657265746E65 && a2 == 0xE700000000000000)
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

uint64_t sub_1B1E77350(char a1)
{
  if (a1)
  {
    return 0x64657265746E65;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_1B1E77388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E77288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E773B0(uint64_t a1)
{
  v2 = sub_1B1E77774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E773EC(uint64_t a1)
{
  v2 = sub_1B1E77774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E77428(uint64_t a1)
{
  v2 = sub_1B1E777C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E77464(uint64_t a1)
{
  v2 = sub_1B1E777C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E774A0(uint64_t a1)
{
  v2 = sub_1B1E7781C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E774DC(uint64_t a1)
{
  v2 = sub_1B1E7781C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationTrigger.State.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E78, &qword_1B1F35480);
  OUTLINED_FUNCTION_0();
  v46 = v28;
  v47 = v27;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  v45 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E80, &qword_1B1F35488);
  OUTLINED_FUNCTION_0();
  v43 = v32;
  v44 = v31;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_4();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E88, &qword_1B1F35490);
  OUTLINED_FUNCTION_0();
  v36 = v35;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v43 - v38;
  v40 = *v23;
  OUTLINED_FUNCTION_44(v26, v26[3]);
  sub_1B1E77774();
  sub_1B1F1B830();
  v41 = (v36 + 8);
  if (v40)
  {
    OUTLINED_FUNCTION_84();
    sub_1B1E777C8();
    v42 = v45;
    sub_1B1F1B240();
    (*(v46 + 8))(v42, v47);
  }

  else
  {
    sub_1B1E7781C();
    sub_1B1F1B240();
    (*(v43 + 8))(v24, v44);
  }

  (*v41)(v39, v34);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E77774()
{
  result = qword_1EB785E90;
  if (!qword_1EB785E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E90);
  }

  return result;
}

unint64_t sub_1B1E777C8()
{
  result = qword_1EB785E98;
  if (!qword_1EB785E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E98);
  }

  return result;
}

unint64_t sub_1B1E7781C()
{
  result = qword_1EB785EA0;
  if (!qword_1EB785EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785EA0);
  }

  return result;
}

uint64_t LocationTrigger.State.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  OUTLINED_FUNCTION_58_0();
  return sub_1B1F1B7F0();
}

void LocationTrigger.State.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  a22 = v25;
  a23 = v26;
  v70 = v24;
  v28 = v27;
  v67 = v29;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EA8, &qword_1B1F35498);
  OUTLINED_FUNCTION_0();
  v66 = v30;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30_5();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EB0, &qword_1B1F354A0);
  OUTLINED_FUNCTION_0();
  v65 = v33;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v62 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EB8, &unk_1B1F354A8);
  OUTLINED_FUNCTION_0();
  v68 = v38;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v62 - v40;
  OUTLINED_FUNCTION_44(v28, v28[3]);
  sub_1B1E77774();
  v42 = v70;
  sub_1B1F1B810();
  if (v42)
  {
    goto LABEL_10;
  }

  v63 = v32;
  v64 = v36;
  v70 = v28;
  v43 = v69;
  sub_1B1F1B210();
  v44 = sub_1B1E32BFC();
  if (v46 == v47 >> 1)
  {
    v69 = v44;
LABEL_9:
    v56 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13(v56, MEMORY[0x1E69E6B28]);
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v58 = &type metadata for LocationTrigger.State;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_35_3();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v41, v37);
    v28 = v70;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_11:
    OUTLINED_FUNCTION_35();
    return;
  }

  v62[1] = 0;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    v49 = sub_1B1E32BF8();
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      if (v48)
      {
        OUTLINED_FUNCTION_84();
        sub_1B1E777C8();
        v54 = v23;
        OUTLINED_FUNCTION_74(&type metadata for LocationTrigger.State.EnteredCodingKeys, &a13);
        v55 = v67;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v54, v43);
      }

      else
      {
        a12 = 0;
        sub_1B1E7781C();
        v59 = v64;
        OUTLINED_FUNCTION_74(&type metadata for LocationTrigger.State.LeftCodingKeys, &a12);
        v55 = v67;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v59, v63);
      }

      v60 = OUTLINED_FUNCTION_50_0();
      v61(v60, v51);
      *v55 = v48;
      __swift_destroy_boxed_opaque_existential_1(v70);
      goto LABEL_11;
    }

    v69 = v49;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t LocationTrigger.TimeRange.start.getter()
{
  OUTLINED_FUNCTION_87();
  sub_1B1F1A110();
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_6_8();

  return v1(v0);
}

uint64_t sub_1B1E77DA8()
{
  v2 = OUTLINED_FUNCTION_87();
  v4 = *(v3(v2) + 20);
  sub_1B1F1A110();
  OUTLINED_FUNCTION_10();
  v7 = *(v6 + 16);

  return v7(v0, v1 + v4, v5);
}

uint64_t LocationTrigger.TimeRange.init(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocationTrigger.TimeRange(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v10 = v9 - v8;
  sub_1B1F1A100();
  if (v11 & 1) != 0 || (sub_1B1F1A0F0(), (v12) || (sub_1B1F1A100(), (v13) || (sub_1B1F1A0F0(), (v14))
  {
    v15 = sub_1B1F1A110();
    OUTLINED_FUNCTION_10();
    v17 = *(v16 + 8);
    v17(a2, v15);
    v17(a1, v15);
    OUTLINED_FUNCTION_54_0();

    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  else
  {
    v23 = sub_1B1F1A110();
    OUTLINED_FUNCTION_10();
    v25 = *(v24 + 32);
    v25(v10, a1, v23);
    v25(v10 + *(v6 + 20), a2, v23);
    sub_1B1E7AE0C(v10, a3);
    OUTLINED_FUNCTION_54_0();
    return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

uint64_t sub_1B1E77FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
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

uint64_t sub_1B1E78098(char a1)
{
  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1B1E780CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E77FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E780F4(uint64_t a1)
{
  v2 = sub_1B1E7AE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E78130(uint64_t a1)
{
  v2 = sub_1B1E7AE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationTrigger.TimeRange.encode(to:)()
{
  OUTLINED_FUNCTION_33_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EC0, &qword_1B1F354B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_11();
  v2 = sub_1B1E7AE64();
  OUTLINED_FUNCTION_15_13(&type metadata for LocationTrigger.TimeRange.CodingKeys, v3, v2);
  sub_1B1F1A110();
  OUTLINED_FUNCTION_1_21();
  sub_1B1E771F0(v4, v5, MEMORY[0x1E6968280]);
  OUTLINED_FUNCTION_24_0();
  sub_1B1F1B2B0();
  if (!v0)
  {
    type metadata accessor for LocationTrigger.TimeRange(0);
    OUTLINED_FUNCTION_24_0();
    sub_1B1F1B2B0();
  }

  v6 = OUTLINED_FUNCTION_8_11();
  return v7(v6);
}

void LocationTrigger.TimeRange.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34();
  v24 = v23;
  v53 = v25;
  v58 = sub_1B1F1A110();
  OUTLINED_FUNCTION_0();
  v54 = v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v55 = &v49 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED0, &qword_1B1F354C0);
  OUTLINED_FUNCTION_0();
  v56 = v32;
  v57 = v33;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_17_6();
  v36 = type metadata accessor for LocationTrigger.TimeRange(v35);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_3();
  v40 = v39 - v38;
  OUTLINED_FUNCTION_44(v24, v24[3]);
  sub_1B1E7AE64();
  sub_1B1F1B810();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v50 = v36;
    v51 = v30;
    v52 = v40;
    v41 = v54;
    OUTLINED_FUNCTION_1_21();
    sub_1B1E771F0(v42, v43, MEMORY[0x1E6968298]);
    v44 = v55;
    sub_1B1F1B200();
    v55 = *(v41 + 32);
    (v55)(v52, v44, v58);
    OUTLINED_FUNCTION_33_2();
    v45 = v51;
    sub_1B1F1B200();
    v46 = OUTLINED_FUNCTION_18_7();
    v47(v46);
    v48 = v52;
    (v55)(v52 + *(v50 + 20), v45, v58);
    sub_1B1E7AEB8(v48, v53);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_1B1E7AF10(v48, type metadata accessor for LocationTrigger.TimeRange);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t LocationTrigger.timeRange.getter()
{
  v2 = OUTLINED_FUNCTION_87();
  v3 = v1 + *(type metadata accessor for LocationTrigger(v2) + 28);

  return sub_1B1E7AF88(v3, v0);
}

uint64_t LocationTrigger.init(isOneTime:region:state:timeRange:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = a5 + *(type metadata accessor for LocationTrigger(0) + 28);

  return sub_1B1E7AFF8(a4, v8);
}

uint64_t sub_1B1E78710@<X0>(uint64_t a3@<X8>)
{
  sub_1B1E7AEB8(v3, a3);
  type metadata accessor for TriggerType(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1B1E78768(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1F1B160();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B1E787B4(char a1)
{
  result = 0x6D6954656E4F7369;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69676572;
      break;
    case 2:
      result = 0x6574617473;
      break;
    case 3:
      result = 0x676E6152656D6974;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B1E788A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1E78768(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B1E788D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E787B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B1E78908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E78768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E78930(uint64_t a1)
{
  v2 = sub_1B1E7B068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E7896C(uint64_t a1)
{
  v2 = sub_1B1E7B068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationTrigger.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v20 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EE0, &qword_1B1F354D0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_17_6();
  v8 = type metadata accessor for LocationTrigger(v7);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_3();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E7B068();
  sub_1B1F1B810();
  if (!v1)
  {
    *v12 = sub_1B1F1B1D0() & 1;
    OUTLINED_FUNCTION_84();
    sub_1B1E0EDAC();
    OUTLINED_FUNCTION_34_2(MEMORY[0x1E6969080]);
    sub_1B1DEA98C(0, qword_1EB7849B8, 0x1E696ACD0);
    sub_1B1DEA98C(0, &qword_1EB785EF0, 0x1E695FBB0);
    v15 = sub_1B1F1AD40();
    if (v15)
    {
      *(v12 + 8) = v15;
      sub_1B1E7B0BC();
      OUTLINED_FUNCTION_34_2(&type metadata for LocationTrigger.State);
      *(v12 + 16) = 0;
      type metadata accessor for LocationTrigger.TimeRange(0);
      sub_1B1E771F0(&qword_1EB785F08, type metadata accessor for LocationTrigger.TimeRange, &protocol conformance descriptor for LocationTrigger.TimeRange);
      sub_1B1F1B1B0();
      v17 = OUTLINED_FUNCTION_6_11();
      v18(v17);
      OUTLINED_FUNCTION_56_0();
      sub_1B1E7AFF8(v0, v12 + *(v8 + 28));
      sub_1B1E7AEB8(v12, v20);
      __swift_destroy_boxed_opaque_existential_1(v3);
      OUTLINED_FUNCTION_10_10();
      sub_1B1E7AF10(v12, v19);
      goto LABEL_4;
    }

    v16 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13(v16, MEMORY[0x1E69E6B28]);
    sub_1B1E7B368(&qword_1EB785EF8, &qword_1EB785EE0, &qword_1B1F354D0);
    sub_1B1F1AFC0();
    swift_willThrow();
    OUTLINED_FUNCTION_56_0();
    v13 = OUTLINED_FUNCTION_6_11();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_4:
  OUTLINED_FUNCTION_35();
}

void LocationTrigger.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v0;
  v18[2] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F10, &qword_1B1F354D8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_11();
  v4 = sub_1B1E7B068();
  OUTLINED_FUNCTION_15_13(&type metadata for LocationTrigger.CodingKeys, v5, v4);
  LOBYTE(v18[0]) = 0;
  OUTLINED_FUNCTION_32_7();
  sub_1B1F1B280();
  if (v1)
  {
    goto LABEL_2;
  }

  v8 = objc_opt_self();
  v9 = *(v0 + 8);
  v18[0] = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v18];
  v11 = v18[0];
  if (!v10)
  {
    v17 = v11;
    sub_1B1F1A1C0();

    swift_willThrow();
LABEL_2:
    v6 = OUTLINED_FUNCTION_8_11();
    v7(v6);
    goto LABEL_8;
  }

  v12 = sub_1B1F1A290();
  v14 = v13;

  v18[0] = v12;
  v18[1] = v14;
  sub_1B1E0EF20();
  OUTLINED_FUNCTION_32_7();
  sub_1B1F1B2B0();
  LOBYTE(v18[0]) = *(v2 + 16);
  sub_1B1E7B110();
  OUTLINED_FUNCTION_32_7();
  sub_1B1F1B2B0();
  type metadata accessor for LocationTrigger(0);
  LOBYTE(v18[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8);
  sub_1B1E7B164();
  sub_1B1F1B2B0();
  v15 = OUTLINED_FUNCTION_8_11();
  v16(v15);
  sub_1B1E03C48(v12, v14);
LABEL_8:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E79050(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_1B1E79118(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1B1E79188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E79050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E791B0(uint64_t a1)
{
  v2 = sub_1B1E7B218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E791EC(uint64_t a1)
{
  v2 = sub_1B1E7B218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E79228(uint64_t a1)
{
  v2 = sub_1B1E7B26C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E79264(uint64_t a1)
{
  v2 = sub_1B1E7B26C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E792A0(uint64_t a1)
{
  v2 = sub_1B1E7B2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E792DC(uint64_t a1)
{
  v2 = sub_1B1E7B2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriggerType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  v62 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F30, &qword_1B1F354E0);
  OUTLINED_FUNCTION_0();
  v60 = v29;
  v61 = v28;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  v59 = v31;
  type metadata accessor for LocationTrigger(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_3();
  v58 = v34 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F38, &qword_1B1F354E8);
  OUTLINED_FUNCTION_0();
  v56 = v36;
  v57 = v35;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_30_5();
  type metadata accessor for TimeOfDayTrigger(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_3();
  v41 = v40 - v39;
  type metadata accessor for TriggerType(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_3();
  v45 = v44 - v43;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F40, &qword_1B1F354F0);
  OUTLINED_FUNCTION_0();
  v47 = v46;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_44(v27, v27[3]);
  sub_1B1E7B218();
  sub_1B1F1B830();
  OUTLINED_FUNCTION_13_7();
  sub_1B1E7AEB8(v62, v45);
  v49 = (v47 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B1E7AE0C(v45, v58);
    OUTLINED_FUNCTION_84();
    sub_1B1E7B26C();
    sub_1B1F1B240();
    OUTLINED_FUNCTION_12_7();
    sub_1B1E771F0(v50, v51, &protocol conformance descriptor for LocationTrigger);
    sub_1B1F1B2B0();
    (*(v60 + 8))(v59, v61);
    OUTLINED_FUNCTION_10_10();
    sub_1B1E7AF10(v58, v52);
  }

  else
  {
    sub_1B1E7AE0C(v45, v41);
    sub_1B1E7B2C0();
    sub_1B1F1B240();
    OUTLINED_FUNCTION_11_8();
    sub_1B1E771F0(v53, v54, &protocol conformance descriptor for TimeOfDayTrigger);
    sub_1B1F1B2B0();
    (*(v56 + 8))(v23, v57);
    OUTLINED_FUNCTION_14_13();
    sub_1B1E7AF10(v41, v55);
  }

  (*v49)(v25, v63);
  OUTLINED_FUNCTION_35();
}

void TriggerType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_34();
  a23 = v25;
  a24 = v26;
  v96 = v24;
  v28 = v27;
  v87 = v29;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F70, &qword_1B1F354F8);
  OUTLINED_FUNCTION_0();
  v90 = v30;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_17();
  v92 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F78, &qword_1B1F35500);
  OUTLINED_FUNCTION_0();
  v88 = v34;
  v89 = v33;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_17();
  v91 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F80, &qword_1B1F35508);
  OUTLINED_FUNCTION_0();
  v93 = v38;
  v94 = v37;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_39_1();
  v40 = type metadata accessor for TriggerType(0);
  OUTLINED_FUNCTION_10();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v83 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v83 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v83 - v48;
  OUTLINED_FUNCTION_44(v28, v28[3]);
  sub_1B1E7B218();
  v50 = v96;
  sub_1B1F1B810();
  if (v50)
  {
    goto LABEL_8;
  }

  v83 = v44;
  v84 = v47;
  v51 = v94;
  v85 = v49;
  v86 = v40;
  v96 = v28;
  sub_1B1F1B210();
  sub_1B1E32BFC();
  if (v53 == v54 >> 1)
  {
LABEL_7:
    v66 = v86;
    v67 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13(v67, MEMORY[0x1E69E6B28]);
    v69 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v69 = v66;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_35_3();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69E6AF8], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v70 = OUTLINED_FUNCTION_19_10();
    v71(v70, v51);
    v28 = v96;
LABEL_8:
    v72 = v28;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_35();
    return;
  }

  if (v53 < (v54 >> 1))
  {
    a10 = *(v52 + v53);
    sub_1B1E32BF8();
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    if (v56 == v58 >> 1)
    {
      v59 = v51;
      if (a10)
      {
        OUTLINED_FUNCTION_84();
        sub_1B1E7B26C();
        OUTLINED_FUNCTION_42_0(&type metadata for TriggerType.LocationCodingKeys, &a14);
        v60 = v85;
        v61 = type metadata accessor for LocationTrigger(0);
        OUTLINED_FUNCTION_12_7();
        sub_1B1E771F0(v62, v63, &protocol conformance descriptor for LocationTrigger);
        v64 = v83;
        OUTLINED_FUNCTION_55_0(v61, v65);
        swift_unknownObjectRelease();
        v77 = OUTLINED_FUNCTION_20_5();
        v78(v77);
        v79 = OUTLINED_FUNCTION_50_0();
      }

      else
      {
        a13 = 0;
        sub_1B1E7B2C0();
        OUTLINED_FUNCTION_42_0(&type metadata for TriggerType.TimeCodingKeys, &a13);
        v60 = v85;
        v73 = type metadata accessor for TimeOfDayTrigger(0);
        OUTLINED_FUNCTION_11_8();
        sub_1B1E771F0(v74, v75, &protocol conformance descriptor for TimeOfDayTrigger);
        v64 = v84;
        OUTLINED_FUNCTION_55_0(v73, v76);
        swift_unknownObjectRelease();
        v81 = OUTLINED_FUNCTION_20_5();
        v82(v81);
        v79 = OUTLINED_FUNCTION_19_10();
      }

      v80(v79, v59);
      swift_storeEnumTagMultiPayload();
      sub_1B1E7AE0C(v64, v60);
      sub_1B1E7AE0C(v60, v87);
      v72 = v96;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B1E79D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_41_1(0x746E65746E69, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001B1F39C20 == a2;
    if (v6 || (OUTLINED_FUNCTION_41_1(0xD000000000000010, 0x80000001B1F39C20) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74756374726F6873 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_41_1(0x74756374726F6873, 0xE800000000000000);

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

uint64_t sub_1B1E79E48(char a1)
{
  if (!a1)
  {
    return 0x746E65746E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x74756374726F6873;
}

uint64_t sub_1B1E79EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E79D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E79EE4(uint64_t a1)
{
  v2 = sub_1B1E7B314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E79F20(uint64_t a1)
{
  v2 = sub_1B1E7B314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CodableTriggerAction.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F98, &qword_1B1F35510);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E7B314();
  sub_1B1F1B810();
  if (!v0)
  {
    sub_1B1E0EDAC();
    OUTLINED_FUNCTION_24_0();
    sub_1B1F1B200();
    sub_1B1DEA98C(0, qword_1EB7849B8, 0x1E696ACD0);
    sub_1B1DEA98C(0, &qword_1EB785FB0, 0x1E69AC640);
    v6 = sub_1B1F1AD40();
    if (v6)
    {
      v15 = v6;
      OUTLINED_FUNCTION_24_0();
      v12 = sub_1B1F1B1C0();
      v14 = v13;
      sub_1B1E03C48(v16, v17);
      v7 = OUTLINED_FUNCTION_49();
      v8(v7);
      *v4 = v15;
      *(v4 + 8) = v12;
      *(v4 + 16) = v14;
      *(v4 + 24) = 0;
    }

    else
    {
      v9 = sub_1B1F1AFE0();
      OUTLINED_FUNCTION_13(v9, MEMORY[0x1E69E6B28]);
      sub_1B1E7B368(&qword_1EB785FA8, &qword_1EB785F98, &qword_1B1F35510);
      sub_1B1F1AFC0();
      swift_willThrow();
      sub_1B1E03C48(v16, v17);
      v10 = OUTLINED_FUNCTION_49();
      v11(v10);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_35();
}

void CodableTriggerAction.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v27 = v1;
  v3 = v2;
  v29[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785FB8, &qword_1B1F35518);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = *v0;
  v11 = v0[1];
  v25 = v0[2];
  v26 = v10;
  v12 = *(v0 + 24);
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E7B314();
  sub_1B1F1B830();
  if (v12)
  {
    LOBYTE(v29[0]) = 2;
    sub_1B1F1B270();
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    v23[1] = v11;
    v24 = v9;
    v13 = v6;
    v14 = v27;
    v15 = objc_opt_self();
    v29[0] = 0;
    v16 = [v15 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:v29];
    v17 = v29[0];
    if (v16)
    {
      v18 = sub_1B1F1A290();
      v20 = v19;

      v29[0] = v18;
      v29[1] = v20;
      v28 = 0;
      sub_1B1E0EF20();
      v21 = v24;
      sub_1B1F1B2B0();
      if (v14)
      {
        (*(v13 + 8))(v21, v4);
        sub_1B1E03C48(v18, v20);
      }

      else
      {
        LOBYTE(v29[0]) = 1;
        sub_1B1F1B270();
        sub_1B1E03C48(v18, v20);
        (*(v13 + 8))(v21, v4);
      }
    }

    else
    {
      v22 = v17;
      sub_1B1F1A1C0();

      swift_willThrow();
      (*(v13 + 8))(v24, v4);
    }
  }

  OUTLINED_FUNCTION_35();
}

uint64_t ScheduledTrigger.triggerType.getter()
{
  v2 = OUTLINED_FUNCTION_87();
  type metadata accessor for ScheduledTrigger(v2);
  OUTLINED_FUNCTION_13_7();
  return sub_1B1E7AEB8(v1 + v3, v0);
}

uint64_t ScheduledTrigger.triggerType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ScheduledTrigger(0) + 20);

  return sub_1B1E7B3DC(a1, v3);
}

uint64_t ScheduledTrigger.init(identifier:trigger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, v5);
  v7 = *(v6 + 32);
  type metadata accessor for ScheduledTrigger(0);
  v7(v5, v6);

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t sub_1B1E7A7C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5472656767697274 && a2 == 0xEB00000000657079)
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

uint64_t sub_1B1E7A898(char a1)
{
  if (a1)
  {
    return 0x5472656767697274;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1B1E7A8DC(uint64_t a1)
{
  sub_1B1F1B7C0();
  OUTLINED_FUNCTION_58_0();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E7A920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E7A7C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E7A948(uint64_t a1)
{
  v2 = sub_1B1E7B440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E7A984(uint64_t a1)
{
  v2 = sub_1B1E7B440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScheduledTrigger.encode(to:)()
{
  OUTLINED_FUNCTION_33_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785FC0, &qword_1B1F35520);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_11();
  v2 = sub_1B1E7B440();
  OUTLINED_FUNCTION_15_13(&type metadata for ScheduledTrigger.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_24_0();
  sub_1B1F1B270();
  if (!v0)
  {
    type metadata accessor for ScheduledTrigger(0);
    OUTLINED_FUNCTION_33_2();
    type metadata accessor for TriggerType(0);
    OUTLINED_FUNCTION_9_12();
    sub_1B1E771F0(v4, v5, &protocol conformance descriptor for TriggerType);
    OUTLINED_FUNCTION_24_0();
    sub_1B1F1B2B0();
  }

  v6 = OUTLINED_FUNCTION_8_11();
  return v7(v6);
}

void ScheduledTrigger.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34();
  v24 = v23;
  v42 = v25;
  type metadata accessor for TriggerType(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_3();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785FD0, &qword_1B1F35528);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_17_6();
  v32 = type metadata accessor for ScheduledTrigger(v31);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_3();
  v36 = (v35 - v34);
  OUTLINED_FUNCTION_44(v24, v24[3]);
  sub_1B1E7B440();
  sub_1B1F1B810();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    *v36 = sub_1B1F1B1C0();
    v36[1] = v37;
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_9_12();
    sub_1B1E771F0(v38, v39, &protocol conformance descriptor for TriggerType);
    sub_1B1F1B200();
    v40 = OUTLINED_FUNCTION_31_6();
    v41(v40);
    sub_1B1E7AE0C(v29, v36 + *(v32 + 20));
    sub_1B1E7AEB8(v36, v42);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_1B1E7AF10(v36, type metadata accessor for ScheduledTrigger);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E7AE0C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25_4();
  v4(v3);
  OUTLINED_FUNCTION_10();
  v5 = OUTLINED_FUNCTION_6_8();
  v6(v5);
  return a2;
}

unint64_t sub_1B1E7AE64()
{
  result = qword_1EB785EC8;
  if (!qword_1EB785EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785EC8);
  }

  return result;
}

uint64_t sub_1B1E7AEB8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25_4();
  v4(v3);
  OUTLINED_FUNCTION_10();
  v5 = OUTLINED_FUNCTION_6_8();
  v6(v5);
  return a2;
}

uint64_t sub_1B1E7AF10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E7AF88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E7AFF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E7B068()
{
  result = qword_1EB785EE8;
  if (!qword_1EB785EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785EE8);
  }

  return result;
}

unint64_t sub_1B1E7B0BC()
{
  result = qword_1EB785F00;
  if (!qword_1EB785F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F00);
  }

  return result;
}

unint64_t sub_1B1E7B110()
{
  result = qword_1EB785F18;
  if (!qword_1EB785F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F18);
  }

  return result;
}

unint64_t sub_1B1E7B164()
{
  result = qword_1EB785F20;
  if (!qword_1EB785F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785ED8, &qword_1B1F354C8);
    sub_1B1E771F0(&qword_1EB785F28, type metadata accessor for LocationTrigger.TimeRange, &protocol conformance descriptor for LocationTrigger.TimeRange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F20);
  }

  return result;
}

unint64_t sub_1B1E7B218()
{
  result = qword_1EB785F48;
  if (!qword_1EB785F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F48);
  }

  return result;
}

unint64_t sub_1B1E7B26C()
{
  result = qword_1EB785F50;
  if (!qword_1EB785F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F50);
  }

  return result;
}

unint64_t sub_1B1E7B2C0()
{
  result = qword_1EB785F60;
  if (!qword_1EB785F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F60);
  }

  return result;
}

unint64_t sub_1B1E7B314()
{
  result = qword_1EB785FA0;
  if (!qword_1EB785FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785FA0);
  }

  return result;
}

uint64_t sub_1B1E7B368(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B1E7B3DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E7B440()
{
  result = qword_1EB785FC8;
  if (!qword_1EB785FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785FC8);
  }

  return result;
}

uint64_t sub_1B1E7B494(uint64_t a1)
{
  *(a1 + 8) = sub_1B1E771F0(&qword_1EB785F90, type metadata accessor for TimeOfDayTrigger, &protocol conformance descriptor for TimeOfDayTrigger);
  result = sub_1B1E771F0(&qword_1EB785F68, type metadata accessor for TimeOfDayTrigger, &protocol conformance descriptor for TimeOfDayTrigger);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B1E7B51C()
{
  result = qword_1EB785FD8;
  if (!qword_1EB785FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785FD8);
  }

  return result;
}

uint64_t sub_1B1E7B570(uint64_t a1)
{
  *(a1 + 8) = sub_1B1E771F0(&qword_1EB785F88, type metadata accessor for LocationTrigger, &protocol conformance descriptor for LocationTrigger);
  result = sub_1B1E771F0(&qword_1EB785F58, type metadata accessor for LocationTrigger, &protocol conformance descriptor for LocationTrigger);
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient10RecurrenceO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_1B1E7B6B8(uint64_t a1)
{
  sub_1B1DEA98C(319, &qword_1EB785EF0, 0x1E695FBB0);
  if (v1 <= 0x3F)
  {
    sub_1B1E7B764(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1E7B764(uint64_t a1)
{
  if (!qword_1EB786010)
  {
    type metadata accessor for LocationTrigger.TimeRange(255);
    v1 = sub_1B1F1AEB0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB786010);
    }
  }
}

uint64_t sub_1B1E7B7F4(uint64_t a1)
{
  result = sub_1B1F1A110();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E7B888(uint64_t a1)
{
  result = type metadata accessor for TimeOfDayTrigger(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocationTrigger(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B1E7B924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E7B960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1E7B9B0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1B1E7B9F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1B1E7BA38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1E7BAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableTriggerAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B1E7BC68(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LocationTrigger.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E7BE30(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E7BF10()
{
  result = qword_1EB786048;
  if (!qword_1EB786048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786048);
  }

  return result;
}

unint64_t sub_1B1E7BF68()
{
  result = qword_1EB786050;
  if (!qword_1EB786050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786050);
  }

  return result;
}

unint64_t sub_1B1E7BFC0()
{
  result = qword_1EB786058;
  if (!qword_1EB786058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786058);
  }

  return result;
}

unint64_t sub_1B1E7C018()
{
  result = qword_1EB786060;
  if (!qword_1EB786060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786060);
  }

  return result;
}

unint64_t sub_1B1E7C070()
{
  result = qword_1EB786068;
  if (!qword_1EB786068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786068);
  }

  return result;
}

unint64_t sub_1B1E7C0C8()
{
  result = qword_1EB786070;
  if (!qword_1EB786070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786070);
  }

  return result;
}

unint64_t sub_1B1E7C120()
{
  result = qword_1EB786078;
  if (!qword_1EB786078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786078);
  }

  return result;
}

unint64_t sub_1B1E7C178()
{
  result = qword_1EB786080;
  if (!qword_1EB786080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786080);
  }

  return result;
}

unint64_t sub_1B1E7C1D0()
{
  result = qword_1EB786088;
  if (!qword_1EB786088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786088);
  }

  return result;
}

unint64_t sub_1B1E7C228()
{
  result = qword_1EB786090;
  if (!qword_1EB786090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786090);
  }

  return result;
}

unint64_t sub_1B1E7C280()
{
  result = qword_1EB786098;
  if (!qword_1EB786098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786098);
  }

  return result;
}

unint64_t sub_1B1E7C2D8()
{
  result = qword_1EB7860A0;
  if (!qword_1EB7860A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860A0);
  }

  return result;
}

unint64_t sub_1B1E7C330()
{
  result = qword_1EB7860A8;
  if (!qword_1EB7860A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860A8);
  }

  return result;
}

unint64_t sub_1B1E7C388()
{
  result = qword_1EB7860B0;
  if (!qword_1EB7860B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860B0);
  }

  return result;
}

unint64_t sub_1B1E7C3E0()
{
  result = qword_1EB7860B8;
  if (!qword_1EB7860B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860B8);
  }

  return result;
}

unint64_t sub_1B1E7C438()
{
  result = qword_1EB7860C0;
  if (!qword_1EB7860C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860C0);
  }

  return result;
}

unint64_t sub_1B1E7C490()
{
  result = qword_1EB7860C8;
  if (!qword_1EB7860C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860C8);
  }

  return result;
}

unint64_t sub_1B1E7C4E8()
{
  result = qword_1EB7860D0;
  if (!qword_1EB7860D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860D0);
  }

  return result;
}

unint64_t sub_1B1E7C540()
{
  result = qword_1EB7860D8;
  if (!qword_1EB7860D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860D8);
  }

  return result;
}

unint64_t sub_1B1E7C598()
{
  result = qword_1EB7860E0;
  if (!qword_1EB7860E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860E0);
  }

  return result;
}

unint64_t sub_1B1E7C5F0()
{
  result = qword_1EB7860E8;
  if (!qword_1EB7860E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860E8);
  }

  return result;
}

unint64_t sub_1B1E7C648()
{
  result = qword_1EB7860F0;
  if (!qword_1EB7860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860F0);
  }

  return result;
}

unint64_t sub_1B1E7C6A0()
{
  result = qword_1EB7860F8;
  if (!qword_1EB7860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860F8);
  }

  return result;
}

unint64_t sub_1B1E7C6F8()
{
  result = qword_1EB786100;
  if (!qword_1EB786100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786100);
  }

  return result;
}

unint64_t sub_1B1E7C750()
{
  result = qword_1EB786108;
  if (!qword_1EB786108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786108);
  }

  return result;
}

unint64_t sub_1B1E7C7A8()
{
  result = qword_1EB786110;
  if (!qword_1EB786110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786110);
  }

  return result;
}

unint64_t sub_1B1E7C800()
{
  result = qword_1EB786118;
  if (!qword_1EB786118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786118);
  }

  return result;
}

unint64_t sub_1B1E7C858()
{
  result = qword_1EB786120;
  if (!qword_1EB786120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786120);
  }

  return result;
}

unint64_t sub_1B1E7C8B0()
{
  result = qword_1EB786128;
  if (!qword_1EB786128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786128);
  }

  return result;
}

unint64_t sub_1B1E7C908()
{
  result = qword_1EB786130;
  if (!qword_1EB786130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786130);
  }

  return result;
}

unint64_t sub_1B1E7C960()
{
  result = qword_1EB786138;
  if (!qword_1EB786138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786138);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B1F1B830();
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1)
{

  return sub_1B1F1B200();
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return sub_1B1F1AFD0();
}

uint64_t OUTLINED_FUNCTION_39_2()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B510();
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B180();
}

void *OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, ...)
{

  return sub_1B1F1B7C0();
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B200();
}