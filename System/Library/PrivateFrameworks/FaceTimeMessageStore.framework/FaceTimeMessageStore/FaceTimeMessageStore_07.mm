uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1BC7ABB48(a2 + 32, a1 + 32);
}

uint64_t sub_1BC83A054()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC834944();
}

uint64_t sub_1BC83A0D8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_15(v1);
  OUTLINED_FUNCTION_112();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC83A168()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC834CEC();
}

uint64_t sub_1BC83A1EC()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_15(v1);
  OUTLINED_FUNCTION_112();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC83A27C()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC835290(v3);
}

uint64_t sub_1BC83A300()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_15(v1);
  OUTLINED_FUNCTION_112();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC83A390()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC835668(v3);
}

uint64_t sub_1BC83A414()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC835A68(v3);
}

uint64_t sub_1BC83A498()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC835D4C(v3);
}

uint64_t sub_1BC83A51C()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC836108(v3);
}

uint64_t sub_1BC83A5B8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_33_7(v1);

  return sub_1BC836600(v3, v4, v5, v6);
}

uint64_t sub_1BC83A754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1BC83A7B4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_33_7(v1);

  return sub_1BC8C59DC();
}

uint64_t sub_1BC83A840()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_33_7(v1);

  return sub_1BC810590(v3, v4, v5, v6);
}

uint64_t sub_1BC83A8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC83A914(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1BC83A95C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1BC83A9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAssetInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC83AA10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void FTLocalMessage.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  isUniquelyReferenced_nonNull_native = v0;
  v228[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F7C64();
  v3 = OUTLINED_FUNCTION_25(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v207[0] = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v7 = OUTLINED_FUNCTION_25(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_9(v207 - v10);
  v213 = sub_1BC8F7134();
  OUTLINED_FUNCTION_0();
  v212 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_9(v14 - v13);
  v211 = sub_1BC8F7154();
  OUTLINED_FUNCTION_0();
  v209 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_9(v18 - v17);
  v216 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v207[2] = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v207[1] = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v24 = OUTLINED_FUNCTION_25(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21_9(v207 - v28);
  v29 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v221 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12();
  v220 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v35 = OUTLINED_FUNCTION_25(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_20_0();
  v38 = v36 - v37;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = v207 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = v207 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = v207 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = v207 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = v207 - v52;
  *&v225 = 0x555564726F636572;
  *(&v225 + 1) = 0xEA00000000004449;
  v54 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v222 = isUniquelyReferenced_nonNull_native;
  v55 = [isUniquelyReferenced_nonNull_native recordUUID];
  if (v55)
  {
    isUniquelyReferenced_nonNull_native = v55;
    sub_1BC8F7244();

    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  __swift_storeEnumTagSinglePayload(v51, v56, 1, v29);
  sub_1BC83E9A8(v51, v53, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v53, 1, v29))
  {
    sub_1BC7C1744(v53, &unk_1EBCF5D70, &qword_1BC8FC740);
    v57 = MEMORY[0x1E69E7CC8];
    v58 = sub_1BC83C8E8();
    if (v59)
    {
      v60 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v224 = v57;
      v61 = *(v57 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_38_5();
      sub_1BC8037DC(v62 + v60 * v63);
      sub_1BC7F0E58((*(v61 + 56) + 32 * v60), &v225);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
      v61 = MEMORY[0x1E69E7CC8];
    }

    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_13_11();
    isUniquelyReferenced_nonNull_native = *(v64 - 256);
    v65(isUniquelyReferenced_nonNull_native, v53, v29);
    sub_1BC7C1744(v53, &unk_1EBCF5D70, &qword_1BC8FC740);
    v66 = sub_1BC8F7204();
    v68 = v67;
    (*(v38 + 8))(isUniquelyReferenced_nonNull_native, v29);
    v227 = v54;
    *&v225 = v66;
    *(&v225 + 1) = v68;
    OUTLINED_FUNCTION_29_5();
    v69 = MEMORY[0x1E69E7CC8];
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v69;
    OUTLINED_FUNCTION_8(v70, v71, v70);
    v61 = v223;
    sub_1BC8037DC(v228);
  }

  *&v225 = 0x444955556C6C6163;
  *(&v225 + 1) = 0xE800000000000000;
  v72 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v73 = [v222 callUUID];
  if (v73)
  {
    v74 = v73;
    sub_1BC8F7244();

    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  __swift_storeEnumTagSinglePayload(v45, v75, 1, v29);
  sub_1BC83E9A8(v45, v48, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v48, 1, v29))
  {
    sub_1BC7C1744(v48, &unk_1EBCF5D70, &qword_1BC8FC740);
    v76 = sub_1BC83C8E8();
    if (v77)
    {
      v78 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v224 = v61;
      v48 = *(v61 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_38_5();
      sub_1BC8037DC(v79 + v78 * v80);
      sub_1BC7F0E58((*(v61 + 56) + 32 * v78), &v225);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    OUTLINED_FUNCTION_46_5();
    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_13_11();
    v82 = *(v81 - 256);
    v83(v82, v48, v29);
    sub_1BC7C1744(v48, &unk_1EBCF5D70, &qword_1BC8FC740);
    sub_1BC8F7204();
    OUTLINED_FUNCTION_49_2();
    (*(v38 + 8))(v82, v29);
    v227 = v72;
    *&v225 = v82;
    *(&v225 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_29_5();
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v61;
    OUTLINED_FUNCTION_8(v84, v85, v84);
    v61 = v223;
    sub_1BC8037DC(v228);
    OUTLINED_FUNCTION_46_5();
  }

  strcpy(&v225, "conversationID");
  HIBYTE(v225) = -18;
  v86 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v87 = [v72 conversationID];
  if (v87)
  {
    v88 = v87;
    sub_1BC8F7244();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  __swift_storeEnumTagSinglePayload(v38, v89, 1, v29);
  sub_1BC83E9A8(v38, v42, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v42, 1, v29))
  {
    sub_1BC7C1744(v42, &unk_1EBCF5D70, &qword_1BC8FC740);
    v90 = sub_1BC83C8E8();
    if (v91)
    {
      v92 = v90;
      swift_isUniquelyReferenced_nonNull_native();
      v224 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_38_5();
      sub_1BC8037DC(v93 + v92 * v94);
      OUTLINED_FUNCTION_40_5(*(v61 + 56));
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    OUTLINED_FUNCTION_44_6();
    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_13_11();
    v96 = *(v95 - 256);
    v97(v96, v42, v29);
    sub_1BC7C1744(v42, &unk_1EBCF5D70, &qword_1BC8FC740);
    sub_1BC8F7204();
    OUTLINED_FUNCTION_49_2();
    (*(v38 + 8))(v96, v29);
    v227 = v86;
    *&v225 = v96;
    *(&v225 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_29_5();
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v61;
    OUTLINED_FUNCTION_8(v98, v99, v98);
    v61 = v223;
    sub_1BC8037DC(v228);
    OUTLINED_FUNCTION_44_6();
  }

  *&v225 = 0x546567617373656DLL;
  *(&v225 + 1) = 0xEB00000000657079;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v100 = [v72 messageType];
  v227 = MEMORY[0x1E69E7290];
  LOWORD(v225) = v100;
  OUTLINED_FUNCTION_29_5();
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v223 = v61;
  OUTLINED_FUNCTION_8(v101, v102, v101);
  OUTLINED_FUNCTION_43_4();
  *&v225 = 1836020326;
  *(&v225 + 1) = 0xE400000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v103 = sub_1BC7C19F8(v72, &selRef_from);
  if (v104)
  {
    OUTLINED_FUNCTION_18_9(v103, v104);
    swift_isUniquelyReferenced_nonNull_native();
    v105 = OUTLINED_FUNCTION_6_12();
    sub_1BC83D6F0(v105, v106, v107);
    OUTLINED_FUNCTION_43_4();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    if (v108)
    {
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_24_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_34_6();
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v225 = 0x72656469766F7270;
  *(&v225 + 1) = 0xE800000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v109 = sub_1BC7C19F8(v72, &selRef_provider);
  if (v110)
  {
    OUTLINED_FUNCTION_18_9(v109, v110);
    swift_isUniquelyReferenced_nonNull_native();
    v111 = OUTLINED_FUNCTION_6_12();
    sub_1BC83D6F0(v111, v112, v113);
    OUTLINED_FUNCTION_43_4();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    if (v114)
    {
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_24_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_34_6();
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v225 = 0x6165724365746164;
  *(&v225 + 1) = 0xEB00000000646574;
  v115 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v116 = [v72 dateCreated];
  if (v116)
  {
    v117 = v116;
    sub_1BC8F71B4();

    v118 = 0;
  }

  else
  {
    v118 = 1;
  }

  __swift_storeEnumTagSinglePayload(v86, v118, 1, v48);
  sub_1BC83E9A8(v86, v42, &unk_1EBCF5D80, &qword_1BC8FEA60);
  if (__swift_getEnumTagSinglePayload(v42, 1, v48))
  {
    sub_1BC7C1744(v42, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_52();
    if (v119)
    {
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_24_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_34_6();
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    v131 = v214;
    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_41_7();
    v121 = *(v120 - 256);
    v122(v121, v42, v48);
    sub_1BC7C1744(v42, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v123 = v208;
    sub_1BC8F7144();
    v124 = v210;
    sub_1BC8F7124();
    v125 = sub_1BC8F71C4();
    v127 = v126;
    (*(v212 + 8))(v124, v213);
    (*(v209 + 8))(v123, v211);
    (*(v86 + 8))(v121, v48);
    v227 = v115;
    *&v225 = v125;
    *(&v225 + 1) = v127;
    OUTLINED_FUNCTION_25_0();
    v128 = OUTLINED_FUNCTION_6_12();
    sub_1BC83D6F0(v128, v129, v130);
    OUTLINED_FUNCTION_43_4();
    v131 = v214;
  }

  strcpy(&v225, "dateModified");
  BYTE13(v225) = 0;
  HIWORD(v225) = -5120;
  v132 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v133 = [v72 dateModified];
  if (v133)
  {
    v134 = v133;
    sub_1BC8F71B4();

    v135 = 0;
  }

  else
  {
    v135 = 1;
  }

  __swift_storeEnumTagSinglePayload(v131, v135, 1, v48);
  v136 = v215;
  sub_1BC83E9A8(v131, v215, &unk_1EBCF5D80, &qword_1BC8FEA60);
  if (__swift_getEnumTagSinglePayload(v136, 1, v48))
  {
    sub_1BC7C1744(v136, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_52();
    if (v137)
    {
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_24_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_34_6();
      OUTLINED_FUNCTION_27_5();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_41_7();
    v139 = *(v138 - 256);
    v140(v139, v136, v48);
    sub_1BC7C1744(v136, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v141 = v208;
    sub_1BC8F7144();
    v142 = v210;
    sub_1BC8F7124();
    sub_1BC8F71C4();
    OUTLINED_FUNCTION_49_2();
    (*(v212 + 8))(v142, v213);
    (*(v209 + 8))(v141, v211);
    v143 = OUTLINED_FUNCTION_44_2();
    v144(v143);
    v227 = v132;
    *&v225 = v139;
    *(&v225 + 1) = v131;
    OUTLINED_FUNCTION_25_0();
    v145 = OUTLINED_FUNCTION_6_12();
    sub_1BC83D6F0(v145, v146, v147);
    OUTLINED_FUNCTION_43_4();
  }

  *&v225 = 0x646165527369;
  *(&v225 + 1) = 0xE600000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v148 = [v72 isRead];
  v149 = MEMORY[0x1E69E6370];
  v227 = MEMORY[0x1E69E6370];
  LOBYTE(v225) = v148;
  OUTLINED_FUNCTION_25_0();
  v150 = OUTLINED_FUNCTION_6_12();
  sub_1BC83D6F0(v150, v151, v152);
  OUTLINED_FUNCTION_33_9();
  *&v225 = 0x6E6F697461727564;
  *(&v225 + 1) = 0xE800000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  [v72 duration];
  v227 = MEMORY[0x1E69E63B0];
  *&v225 = v153;
  v154 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16(v154);
  OUTLINED_FUNCTION_33_9();
  *&v225 = 0x54786F626C69616DLL;
  *(&v225 + 1) = 0xEB00000000657079;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v155 = [v72 mailboxType];
  v227 = MEMORY[0x1E69E7290];
  LOWORD(v225) = v155;
  v156 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16(v156);
  OUTLINED_FUNCTION_33_9();
  *&v225 = 0x7469736E65537369;
  *(&v225 + 1) = 0xEB00000000657669;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v157 = [v72 isSensitive];
  v227 = v149;
  LOBYTE(v225) = v157;
  v158 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16(v158);
  OUTLINED_FUNCTION_33_9();
  *&v225 = 0x5454527369;
  *(&v225 + 1) = 0xE500000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v159 = [v72 isRTT];
  v227 = v149;
  LOBYTE(v225) = v159;
  v160 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16(v160);
  OUTLINED_FUNCTION_33_9();
  *&v225 = 0x466567617373656DLL;
  *(&v225 + 1) = 0xEB00000000656C69;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v161 = [v72 messageFile];
  if (v161)
  {
    v162 = v217;
    sub_1BC8F6FB4();

    v163 = 0;
    v164 = v218;
  }

  else
  {
    v163 = 1;
    v164 = v218;
    v162 = v217;
  }

  v165 = v161 != 0;
  v166 = sub_1BC8F7014();
  v167 = 1;
  __swift_storeEnumTagSinglePayload(v162, v163, 1, v166);
  sub_1BC7C1744(v162, &qword_1EBCF5A20, &qword_1BC901BF0);
  v227 = v149;
  LOBYTE(v225) = v165;
  v168 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16(v168);
  OUTLINED_FUNCTION_33_9();
  *&v225 = 0xD000000000000010;
  *(&v225 + 1) = 0x80000001BC90B180;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v169 = [v72 messageThumbnail];
  if (v169)
  {
    sub_1BC8F6FB4();

    v167 = 0;
  }

  v170 = v169 != 0;
  v171 = 1;
  __swift_storeEnumTagSinglePayload(v164, v167, 1, v166);
  sub_1BC7C1744(v164, &qword_1EBCF5A20, &qword_1BC901BF0);
  v227 = v149;
  LOBYTE(v225) = v170;
  v172 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16(v172);
  OUTLINED_FUNCTION_33_9();
  *&v225 = 0x7263736E6172745FLL;
  *(&v225 + 1) = 0xEB00000000747069;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v173 = [v72 transcript];
  v174 = v219;
  if (v173)
  {
    sub_1BC8F6FB4();

    v171 = 0;
  }

  __swift_storeEnumTagSinglePayload(v174, v171, 1, v166);
  sub_1BC7C1744(v174, &qword_1EBCF5A20, &qword_1BC901BF0);
  v227 = v149;
  LOBYTE(v225) = v173 != 0;
  v175 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16(v175);
  OUTLINED_FUNCTION_33_9();
  *&v225 = 0xD000000000000013;
  *(&v225 + 1) = 0x80000001BC90B210;
  v176 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v177 = [v72 transcriptionStatus];
  v227 = MEMORY[0x1E69E7290];
  LOWORD(v225) = v177;
  v178 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16(v178);
  OUTLINED_FUNCTION_33_9();
  *&v225 = 0x7974696C617571;
  *(&v225 + 1) = 0xE700000000000000;
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v179 = sub_1BC7C19F8(v72, &selRef_quality);
  if (v180)
  {
    v227 = v176;
    *&v225 = v179;
    *(&v225 + 1) = v180;
    v181 = OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_2_16(v181);
    OUTLINED_FUNCTION_33_9();
  }

  else
  {
    sub_1BC83C8E8();
    if (v182)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_39_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_40_5(v226);
      OUTLINED_FUNCTION_29();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v225 = 0x6E65697069636572;
  *(&v225 + 1) = 0xE900000000000074;
  v183 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v184 = sub_1BC7C19F8(v72, &selRef_recipient);
  if (v185)
  {
    sub_1BC7EB6B4(v184, v185);
    v187 = v186;
    v189 = v188;

    v227 = v183;
    *&v225 = v187;
    *(&v225 + 1) = v189;
    v190 = OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_2_16(v190);
    OUTLINED_FUNCTION_33_9();
  }

  else
  {
    sub_1BC83C8E8();
    if (v191)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_39_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_40_5(v226);
      OUTLINED_FUNCTION_29();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v225 = 0x44496D6973;
  *(&v225 + 1) = 0xE500000000000000;
  v192 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_17();
  sub_1BC8F8544();
  v193 = sub_1BC7C19F8(v72, &selRef_simID);
  if (v194)
  {
    v227 = v192;
    *&v225 = v193;
    *(&v225 + 1) = v194;
    v195 = OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_2_16(v195);
    OUTLINED_FUNCTION_33_9();
  }

  else
  {
    sub_1BC83C8E8();
    if (v196)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_39_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_5_16();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_40_5(v226);
      OUTLINED_FUNCTION_29();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v228);
    sub_1BC7C1744(&v225, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v225 = 0x69616D6563696F76;
  *(&v225 + 1) = 0xEB0000000044496CLL;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v197 = [v72 voicemailID];
  v227 = MEMORY[0x1E69E72F0];
  LODWORD(v225) = v197;
  v198 = OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_2_16(v198);
  sub_1BC8037DC(v228);
  v199 = objc_opt_self();
  v200 = sub_1BC8F7A94();
  v228[0] = 0;
  v201 = [v199 dataWithJSONObject:v200 options:11 error:v228];

  v202 = v228[0];
  if (v201)
  {
    sub_1BC8F70D4();

    sub_1BC8F7C54();
    OUTLINED_FUNCTION_50();
    sub_1BC8F7C34();
    v203 = OUTLINED_FUNCTION_50();
    sub_1BC7D4C94(v203, v204);
  }

  else
  {
    v205 = v202;

    v206 = sub_1BC8F6EA4();

    swift_willThrow();
    v228[0] = 0;
    v228[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_1BC8F8A64();
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC83C50C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7454();
  v4 = OUTLINED_FUNCTION_25(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  type metadata accessor for FaceTimeMessageStore_Summary(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  sub_1BC8555A0(0x447972616D6D7573, 0xEB00000000617461, v0);
  v12 = sub_1BC8F7BE4();
  v13 = [v0 primitiveValueForKey_];

  if (v13)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v20[0] = v24;
  v20[1] = v25;
  if (!*(&v25 + 1))
  {
    sub_1BC7C1744(v20, &unk_1EBCF5E50, &qword_1BC8FE850);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    goto LABEL_9;
  }

  v14 = v22;
  v15 = v23;
  sub_1BC8555AC(0x447972616D6D7573, 0xEB00000000617461, v0);
  *&v24 = v14;
  *(&v24 + 1) = v15;
  v21 = 0;
  OUTLINED_FUNCTION_15_10();
  sub_1BC7EC5DC(v14, v15);
  sub_1BC8F7444();
  sub_1BC83ECC4(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary);
  sub_1BC8F7554();
  sub_1BC7D4C94(v14, v15);
  sub_1BC83EDC0(v11, v8, type metadata accessor for FaceTimeMessageStore_Summary);
  v16 = *v8;
  v18 = *(v8 + 1);
  v17 = *(v8 + 2);

  sub_1BC83ED08(v8);
  *v2 = v16;
  v2[1] = v18;
  v2[2] = v17;
LABEL_9:
  OUTLINED_FUNCTION_24();
}

unint64_t sub_1BC83C8E8()
{
  sub_1BC8F8524();
  v0 = OUTLINED_FUNCTION_121();

  return sub_1BC83CBC0(v0, v1);
}

unint64_t sub_1BC83C928()
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_14_10();
  sub_1BC83ECC4(v0, v1);
  OUTLINED_FUNCTION_50();
  sub_1BC8F7B54();
  v2 = OUTLINED_FUNCTION_121();

  return sub_1BC83CC84(v2, v3);
}

unint64_t sub_1BC83C9A8(uint64_t a1)
{
  sub_1BC8F8C04();
  sub_1BC83EA74(v4);
  v2 = sub_1BC8F8C64();

  return sub_1BC83CE40(a1, v2);
}

unint64_t sub_1BC83CA14(uint64_t a1)
{
  sub_1BC8F7C24();
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v2 = sub_1BC8F8C64();

  return sub_1BC83D270(a1, v2);
}

unint64_t sub_1BC83CAA8()
{
  sub_1BC8F8394();
  v0 = OUTLINED_FUNCTION_121();

  return sub_1BC83D368(v0, v1);
}

uint64_t sub_1BC83CB40(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1BC8F8C04();
  a2(v8, a1);
  v5 = sub_1BC8F8C64();

  return a3(a1, v5);
}

unint64_t sub_1BC83CBC0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1BC83EE1C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1BFB29940](v8, a1);
    sub_1BC8037DC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BC83CC84(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1BC83ECC4(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
    v9 = sub_1BC8F7BC4();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BC83CE40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BC8F7264();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B40, &unk_1BC904FF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740) - 8;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v29 - v17;
  v19 = v3 + 64;
  v20 = -1 << *(v3 + 32);
  v21 = a2 & ~v20;
  if ((*(v3 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v35 = ~v20;
    v30 = (v7 + 32);
    v31 = v3 + 64;
    v36 = *(v16 + 72);
    v34 = (v7 + 8);
    v29 = v9;
    do
    {
      sub_1BC7E8B8C(*(v3 + 48) + v36 * v21, v18);
      v22 = *(v9 + 48);
      sub_1BC7E8B8C(v18, v11);
      sub_1BC7E8B8C(a1, &v11[v22]);
      if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
      {
        sub_1BC7C1744(v18, &unk_1EBCF5D70, &qword_1BC8FC740);
        if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v6) == 1)
        {
          sub_1BC7C1744(v11, &unk_1EBCF5D70, &qword_1BC8FC740);
          return v21;
        }
      }

      else
      {
        sub_1BC7E8B8C(v11, v15);
        if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v6) != 1)
        {
          v23 = v32;
          (*v30)(v32, &v11[v22], v6);
          sub_1BC83ECC4(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
          v33 = sub_1BC8F7BC4();
          v24 = a1;
          v25 = v3;
          v26 = *v34;
          v27 = v23;
          v19 = v31;
          (*v34)(v27, v6);
          sub_1BC7C1744(v18, &unk_1EBCF5D70, &qword_1BC8FC740);
          v26(v15, v6);
          v3 = v25;
          a1 = v24;
          v9 = v29;
          sub_1BC7C1744(v11, &unk_1EBCF5D70, &qword_1BC8FC740);
          if (v33)
          {
            return v21;
          }

          goto LABEL_10;
        }

        sub_1BC7C1744(v18, &unk_1EBCF5D70, &qword_1BC8FC740);
        (*v34)(v15, v6);
      }

      sub_1BC7C1744(v11, &qword_1EBCF5B40, &unk_1BC904FF0);
LABEL_10:
      v21 = (v21 + 1) & v35;
    }

    while (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  return v21;
}

unint64_t sub_1BC83D270(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1BC8F7C24();
    v7 = v6;
    if (v5 == sub_1BC8F7C24() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1BC8F8AA4();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1BC83D368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1BC83EC80();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1BC8F83A4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BC83D428(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1BC8F8AA4() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BC83D530(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {

    sub_1BC7F5C04(v6, a1);
    v8 = v7;

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_1BC83D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_30_6(a1, a2, a3);
  OUTLINED_FUNCTION_0_17();
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56C0, &unk_1BC900B90);
  if (OUTLINED_FUNCTION_10_14(v12))
  {
    sub_1BC803CBC(v5, v4);
    OUTLINED_FUNCTION_22_8();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  v15 = *v6;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1((v15[7] + 32 * v10));
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_54_2();

    sub_1BC7F0E58(v16, v17);
  }

  else
  {
    sub_1BC83E388(v10, v5, v4, v3, v15);
    OUTLINED_FUNCTION_54_2();
  }
}

_OWORD *sub_1BC83D6F0(_OWORD *a1, uint64_t a2, char a3)
{
  sub_1BC83C8E8();
  OUTLINED_FUNCTION_0_17();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = sub_1BC8F8B44();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
  if (sub_1BC8F8734())
  {
    OUTLINED_FUNCTION_50_2();
    sub_1BC83C8E8();
    OUTLINED_FUNCTION_22_8();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  v13 = *v3;
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1((v13[7] + 32 * v9));
    v14 = OUTLINED_FUNCTION_29();

    return sub_1BC7F0E58(v14, v15);
  }

  else
  {
    sub_1BC83EE1C(a2, v17);
    return sub_1BC83E3F4(v9, v17, a1, v13);
  }
}

void sub_1BC83D814()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_0_17();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D10, &qword_1BC903558);
  if (OUTLINED_FUNCTION_10_14(v8))
  {
    OUTLINED_FUNCTION_50_2();
    sub_1BC83C928();
    OUTLINED_FUNCTION_37_6();
    if (!v10)
    {
      goto LABEL_11;
    }

    v6 = v9;
  }

  v11 = *v1;
  if (v7)
  {
    v12 = v11[7];
    v13 = type metadata accessor for TrackedOutgoingMessage(0);
    OUTLINED_FUNCTION_25(v13);
    sub_1BC83ED64(v0, v12 + *(v14 + 72) * v6, type metadata accessor for TrackedOutgoingMessage);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_19_11();
    v16(v15);
    v17 = OUTLINED_FUNCTION_44_2();
    sub_1BC83E470(v17, v18, v0, v11);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC83D958()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_0_17();
  if (v5)
  {
    __break(1u);
LABEL_12:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5900, &unk_1BC902A70);
  if (OUTLINED_FUNCTION_10_14(v8))
  {
    OUTLINED_FUNCTION_50_2();
    sub_1BC83C928();
    OUTLINED_FUNCTION_37_6();
    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = v9;
  }

  v11 = *v1;
  if (v7)
  {
    *(*(v11 + 56) + 8 * v6) = v0;
    OUTLINED_FUNCTION_24();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_19_11();
    v14(v13);
    v15 = OUTLINED_FUNCTION_44_2();
    sub_1BC83E560(v15, v16, v0, v11);
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC83DA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_30_6(a1, a2, a3);
  OUTLINED_FUNCTION_0_17();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D00, &qword_1BC903B10);
  if ((OUTLINED_FUNCTION_10_14(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1BC803CBC(v5, v4);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_11:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  v15 = *v6;
  if (v11)
  {
    v16 = v15[7];
    v17 = type metadata accessor for VideoFileTransfer(0);
    OUTLINED_FUNCTION_25(v17);
    sub_1BC83ED64(v3, v16 + *(v18 + 72) * v10, type metadata accessor for VideoFileTransfer);
    OUTLINED_FUNCTION_54_2();
  }

  else
  {
    sub_1BC83E600(v10, v5, v4, v3, v15);
    OUTLINED_FUNCTION_54_2();
  }
}

void sub_1BC83DBA8()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_0_17();
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B50, &qword_1BC903550);
  if (sub_1BC8F8734())
  {
    OUTLINED_FUNCTION_50_2();
    v9 = sub_1BC83C928();
    if ((v8 & 1) == (v10 & 1))
    {
      v7 = v9;
      goto LABEL_5;
    }

LABEL_10:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

LABEL_5:
  v11 = *v0;
  if (v8)
  {
    *(v11[7] + v7) = v2;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_19_11();
    v13(v12);
    v14 = OUTLINED_FUNCTION_44_2();
    sub_1BC83E6AC(v14, v15, v2, v11);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC83DCE4()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v27 = v3;
  v28 = v4;
  v26 = v5;
  v7 = v6;
  v8 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  sub_1BC83C928();
  OUTLINED_FUNCTION_0_17();
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B48, &qword_1BC903548);
  if ((OUTLINED_FUNCTION_51_2(v20) & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = sub_1BC83C928();
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v18 = v21;
LABEL_5:
  v23 = *v0;
  if (v19)
  {
    v24 = (v23[7] + 32 * v18);
    *v24 = v7;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;

    OUTLINED_FUNCTION_24();
  }

  else
  {
    (*(v10 + 16))(v14, v2, v8);
    sub_1BC83E764(v18, v14, v7, v26, v27, v28, v23);
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC83DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_7();
  sub_1BC83CB40(a3, v7, sub_1BC83D428);
  OUTLINED_FUNCTION_0_17();
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
  if (OUTLINED_FUNCTION_10_14(v13))
  {
    OUTLINED_FUNCTION_16_7();
    sub_1BC83CB40(a3, v14, sub_1BC83D428);
    OUTLINED_FUNCTION_22_8();
    if (!v16)
    {
      goto LABEL_14;
    }

    v11 = v15;
  }

  v17 = *v3;
  if (v12)
  {
    v18 = (*(v17 + 56) + 16 * v11);
    *v18 = a1;
    v18[1] = a2;

    OUTLINED_FUNCTION_54_2();
  }

  else
  {
    sub_1BC83E838(v11, a3, a1, a2, v17);
    OUTLINED_FUNCTION_54_2();
  }
}

void sub_1BC83DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BC803CBC(a5, a6);
  OUTLINED_FUNCTION_0_17();
  if (v14)
  {
    __break(1u);
LABEL_14:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF65A0, &qword_1BC9077C0);
  if (OUTLINED_FUNCTION_51_2(v17))
  {
    sub_1BC803CBC(a5, a6);
    OUTLINED_FUNCTION_37_6();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  v20 = *v6;
  if (v16)
  {
    v21 = (*(v20 + 56) + 32 * v15);
    *v21 = a1;
    v21[1] = a2;
    v21[2] = a3;
    v21[3] = a4;
  }

  else
  {
    sub_1BC83E880(v15, a5, a6, a1, a2, a3, a4, v20);
  }
}

void sub_1BC83E138()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1BC803CBC(v3, v1);
  OUTLINED_FUNCTION_0_17();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B60, &unk_1BC903560);
  if ((sub_1BC8F8734() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1BC803CBC(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_24();
  }

  else
  {
    sub_1BC83E914(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC83E27C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1BC803CBC(v7, v5);
  OUTLINED_FUNCTION_0_17();
  if (v13)
  {
    __break(1u);
LABEL_14:
    sub_1BC8F8B44();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  if (OUTLINED_FUNCTION_10_14(v16))
  {
    sub_1BC803CBC(v8, v6);
    OUTLINED_FUNCTION_22_8();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v0;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v14) = v10;
    OUTLINED_FUNCTION_24();
  }

  else
  {
    sub_1BC83E960(v14, v8, v6, v10, v19);
    OUTLINED_FUNCTION_24();
  }
}

_OWORD *sub_1BC83E388(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BC7F0E58(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1BC83E3F4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1BC7F0E58(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1BC83E470(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BC8F7264();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for TrackedOutgoingMessage(0);
  result = sub_1BC83EDC0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for TrackedOutgoingMessage);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1BC83E560(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36_7(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  result = (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t sub_1BC83E600(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for VideoFileTransfer(0);
  result = sub_1BC83EDC0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for VideoFileTransfer);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1BC83E6AC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BC8F7264();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BC83E764(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_1BC8F7264();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_1BC83E838(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_36_7(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * result) = v7;
  v8 = (v6[7] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_1BC83E880(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_36_7(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 16 * result);
  *v10 = v11;
  v10[1] = v12;
  v13 = (v9[7] + 32 * result);
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

uint64_t sub_1BC83E8D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_36_7(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

unint64_t sub_1BC83E914(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1BC83E960(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_36_7(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_1BC83E9A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return a2;
}

uint64_t sub_1BC83EA04(uint64_t a1, uint64_t a2)
{
  sub_1BC8F7C24();
  OUTLINED_FUNCTION_49_2();
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v2 = sub_1BC8F8C64();

  return v2;
}

uint64_t sub_1BC83EA74(uint64_t a1)
{
  v2 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_1BC7E8B8C(v1, &v18 - v11);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    return sub_1BC8F8C24();
  }

  v14 = OUTLINED_FUNCTION_50();
  v15(v14);
  sub_1BC8F8C24();
  OUTLINED_FUNCTION_14_10();
  sub_1BC83ECC4(v16, v17);
  sub_1BC8F7B64();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1BC83EBFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC8F7C24();
  v4 = v3;
  if (v2 == sub_1BC8F7C24() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();
  }

  return v7 & 1;
}

unint64_t sub_1BC83EC80()
{
  result = qword_1EDC1DD30;
  if (!qword_1EDC1DD30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC1DD30);
  }

  return result;
}

uint64_t sub_1BC83ECC4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_121();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC83ED08(uint64_t a1)
{
  v2 = type metadata accessor for FaceTimeMessageStore_Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC83ED64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_29();
  v5(v4);
  return a2;
}

uint64_t sub_1BC83EDC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_29();
  v5(v4);
  return a2;
}

uint64_t sub_1BC83EED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

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

uint64_t sub_1BC83EF9C(char a1)
{
  if (a1)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1BC83EFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC83EED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC83F000(uint64_t a1)
{
  v2 = sub_1BC83F1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC83F03C(uint64_t a1)
{
  v2 = sub_1BC83F1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CaptionRange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B68, &qword_1BC903570);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  v11[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC83F1DC();
  sub_1BC8F8CA4();
  v13 = 0;
  sub_1BC8F89D4();
  if (!v2)
  {
    v12 = 1;
    sub_1BC8F89D4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1BC83F1DC()
{
  result = qword_1EBCF5B70;
  if (!qword_1EBCF5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B70);
  }

  return result;
}

uint64_t CaptionRange.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFB2A020](*v0);
  return MEMORY[0x1BFB2A020](v1);
}

uint64_t CaptionRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  return sub_1BC8F8C64();
}

uint64_t CaptionRange.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B78, &qword_1BC903578);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC83F1DC();
  sub_1BC8F8C84();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1BC8F88D4();
    v15 = 1;
    v12 = sub_1BC8F88D4();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BC83F494(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC83F4F0()
{
  result = qword_1EBCF5B80;
  if (!qword_1EBCF5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CaptionRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CaptionRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CaptionRange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC83F680()
{
  result = qword_1EBCF5B88;
  if (!qword_1EBCF5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B88);
  }

  return result;
}

unint64_t sub_1BC83F6D8()
{
  result = qword_1EBCF5B90;
  if (!qword_1EBCF5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B90);
  }

  return result;
}

unint64_t sub_1BC83F730()
{
  result = qword_1EBCF5B98;
  if (!qword_1EBCF5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5B98);
  }

  return result;
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

uint64_t sub_1BC83F7A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BC83F7E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BC83F83C()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 232) = v3;
  *(v1 + 72) = v4;
  v5 = sub_1BC8F6ED4();
  *(v1 + 96) = v5;
  OUTLINED_FUNCTION_26(v5);
  *(v1 + 104) = v6;
  *(v1 + 112) = swift_task_alloc();
  v7 = sub_1BC8F7264();
  *(v1 + 120) = v7;
  OUTLINED_FUNCTION_26(v7);
  *(v1 + 128) = v8;
  *(v1 + 136) = swift_task_alloc();
  v9 = sub_1BC8F7014();
  *(v1 + 144) = v9;
  OUTLINED_FUNCTION_26(v9);
  *(v1 + 152) = v10;
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC83F9C0()
{
  v23 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EDC2B2B0);
  v2 = OUTLINED_FUNCTION_5_17();
  v3(v2);
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    OUTLINED_FUNCTION_9();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v8 = 136446210;
    sub_1BC80DFB0();
    v9 = sub_1BC8F8A54();
    v11 = v10;
    v12 = *(v7 + 8);
    v13 = OUTLINED_FUNCTION_8_1();
    v12(v13);
    v14 = sub_1BC7A9A4C(v9, v11, &v22);

    *(v8 + 4) = v14;
    OUTLINED_FUNCTION_12_11(&dword_1BC7A3000, v15, v16, "BLASTDOOR: Generating thumbnail from url %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v12 = *(v7 + 8);
    v18 = OUTLINED_FUNCTION_8_1();
    v17 = (v12)(v18);
  }

  *(v0 + 192) = v12;
  (**(v0 + 88))(v17);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v19 = swift_task_alloc();
  *(v0 + 200) = v19;
  *v19 = v0;
  v19[1] = sub_1BC83FBE4;

  return sub_1BC8405D0();
}

uint64_t sub_1BC83FBE4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  *v3 = *v1;
  v2[26] = v4;
  v2[27] = v5;
  v2[28] = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC83FCF0()
{
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 72);
    v4 = 1;
    goto LABEL_3;
  }

  v32 = *(v0 + 224);
  v29 = *(v0 + 168);
  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v30 = *(v0 + 144);
  v31 = *(v0 + 192);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 96);
  sub_1BC8F6F34();
  sub_1BC8F7254();
  v13 = sub_1BC8F7204();
  v15 = v14;
  (*(v8 + 8))(v7, v9);
  *(v0 + 56) = v13;
  *(v0 + 64) = v15;
  (*(v11 + 104))(v10, *MEMORY[0x1E6968F70], v12);
  sub_1BC7B7A9C();
  sub_1BC8F7004();
  (*(v11 + 8))(v10, v12);

  v31(v6, v30);
  sub_1BC8F6F84();
  v31(v29, v30);
  sub_1BC8F70F4();
  if (!v32)
  {
    if ((*(v0 + 232) & 1) == 0)
    {
      v23 = *(v0 + 208);
      v24 = *(v0 + 216);
      v25 = *(v0 + 192);
      v26 = *(v0 + 176);
      v27 = *(v0 + 144);
      v28 = *(v0 + 72);
      __swift_project_boxed_opaque_existential_1((*(v0 + 88) + 16), *(*(v0 + 88) + 40));
      sub_1BC8B4D4C(v26, v28);
      sub_1BC7ECAC8(v23, v24);
      v25(v26, v27);
      goto LABEL_4;
    }

    v19 = *(v0 + 176);
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);
    v22 = *(v0 + 72);
    sub_1BC7ECAC8(*(v0 + 208), *(v0 + 216));
    (*(v21 + 32))(v22, v19, v20);
    v3 = v22;
    v4 = 0;
    v2 = v20;
LABEL_3:
    __swift_storeEnumTagSinglePayload(v3, v4, 1, v2);
LABEL_4:

    OUTLINED_FUNCTION_27();
    goto LABEL_7;
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 216);
  (*(v0 + 192))(*(v0 + 176), *(v0 + 144));
  sub_1BC7ECAC8(v16, v17);

  OUTLINED_FUNCTION_27();
LABEL_7:

  return v5();
}

uint64_t sub_1BC84002C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_27();

  return v1();
}

void sub_1BC8400D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5EB0, &unk_1BC904890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v47 - v9;
  v10 = sub_1BC8F7994();
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v14 = sub_1BC8F7734();
  v15 = __swift_project_value_buffer(v14, qword_1EDC2B2B0);

  v55 = v15;
  v16 = sub_1BC8F7714();
  v17 = sub_1BC8F8204();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_9();
    v18 = swift_slowAlloc();
    v48 = v5;
    v19 = v18;
    OUTLINED_FUNCTION_8_2();
    v20 = swift_slowAlloc();
    v50 = a2;
    v21 = v20;
    v54[0] = v20;
    *v19 = 136315138;
    v22 = sub_1BC8F7AB4();
    v49 = a1;
    v24 = sub_1BC7A9A4C(v22, v23, v54);
    a1 = v49;

    *(v19 + 4) = v24;
    v4 = v3;
    _os_log_impl(&dword_1BC7A3000, v16, v17, "BLASTDOOR: Got request to decode metadata from %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    a2 = v50;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v5 = v48;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  (*v5)(v54);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v25 = v4;
  sub_1BC841290(a1);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
    v26 = v4;
    v27 = sub_1BC8F7714();
    v28 = sub_1BC8F81E4();

    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_9();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      v31 = v25;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_1BC7A3000, v27, v28, "BLASTDOOR: Failed to decode metadata with error %{public}@", v29, 0xCu);
      sub_1BC7F1790(v30, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
    v33 = *(v53 + 16);
    v33(v13, a2, v52);
    v34 = sub_1BC8F7714();
    v35 = sub_1BC8F8204();
    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_9();
      v36 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v37 = swift_slowAlloc();
      LODWORD(v50) = v35;
      v38 = v13;
      v55 = v37;
      v54[0] = v37;
      *v36 = 136315138;
      v39 = v51;
      v40 = v13;
      v41 = v52;
      v42 = v53;
      v33(v51, v40, v52);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v41);
      v43 = sub_1BC863BB4(v39);
      v45 = v44;
      sub_1BC7F1790(v39, &unk_1EBCF5EB0, &unk_1BC904890);
      (*(v42 + 8))(v38, v41);
      v46 = sub_1BC7A9A4C(v43, v45, v54);

      *(v36 + 4) = v46;
      _os_log_impl(&dword_1BC7A3000, v34, v50, "BLASTDOOR: Successfully decoded metadata %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      (*(v53 + 8))(v13, v52);
    }
  }
}

uint64_t sub_1BC8405D0()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1BC8F7014();
  v1[6] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[7] = v4;
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC840680()
{
  v24 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EDC2B2B0);
  v2 = OUTLINED_FUNCTION_5_17();
  v3(v2);
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    sub_1BC80DFB0();
    v8 = sub_1BC8F8A54();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_8_1();
    v12(v11);
    v13 = sub_1BC7A9A4C(v8, v10, &v23);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_12_11(&dword_1BC7A3000, v14, v15, "BLASTDOOR: Trying to generate thumbnail from url %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v16);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v17);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_8_1();
    v19(v18);
  }

  v20 = swift_task_alloc();
  v0[4].i64[1] = v20;
  v20[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v21 = swift_task_alloc();
  v0[5].i64[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA0, &qword_1BC903838);
  *v21 = v0;
  v21[1] = sub_1BC8408E8;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BC8408E8()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  *(v2 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8409F4()
{
  OUTLINED_FUNCTION_5();
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1BC840A60()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC840AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_1BC8F7624();
}

void sub_1BC840C2C(void *a1, void *a2)
{
  v4 = sub_1BC8F7A04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BB0, &qword_1BC903848);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v41 - v9;
  v11 = sub_1BC8F7A24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (a1 && (sub_1BC8F79E4(), swift_dynamicCastClass()))
    {
      v24 = sub_1BC8F79D4();
      v25 = sub_1BC8F7924();

      if (v25)
      {
        type metadata accessor for CGImage(0);
        v43 = v26;
        v44 = MEMORY[0x1E698F420];
        *&v42 = v25;
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v4);
        v41[0] = v25;
        sub_1BC8F7A14();
        sub_1BC8F79C4();
        (*(v5 + 104))(v7, *MEMORY[0x1E698F418], v4);
        v38 = sub_1BC8F79F4();
        v40 = v39;
        (*(v5 + 8))(v7, v4);
        *&v42 = v38;
        *(&v42 + 1) = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
        sub_1BC8F7F74();

        (*(v12 + 8))(v14, v11);
        return;
      }

      if (qword_1EDC1E1F8 != -1)
      {
        swift_once();
      }

      v36 = sub_1BC8F7734();
      __swift_project_value_buffer(v36, qword_1EDC2B2B0);
      v29 = sub_1BC8F7714();
      v37 = sub_1BC8F81E4();
      if (!os_log_type_enabled(v29, v37))
      {
        goto LABEL_16;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1BC7A3000, v29, v37, "BLASTDOOR: Recevied empty image result from BlastDoor", v31, 2u);
    }

    else
    {
      if (qword_1EDC1E1F8 != -1)
      {
        swift_once();
      }

      v27 = sub_1BC8F7734();
      __swift_project_value_buffer(v27, qword_1EDC2B2B0);
      v28 = a1;
      v29 = sub_1BC8F7714();
      v30 = sub_1BC8F8204();

      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_16;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v42 = v32;
      *v31 = 136446210;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BB8, &unk_1BC903850);
      v33 = sub_1BC8F7C94();
      v35 = sub_1BC7A9A4C(v33, v34, &v42);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1BC7A3000, v29, v30, "BLASTDOOR: Received unsupported result type: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1BFB2AA50](v32, -1, -1);
    }

    MEMORY[0x1BFB2AA50](v31, -1, -1);
LABEL_16:

    v42 = xmmword_1BC9037B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
    sub_1BC8F7F74();
    return;
  }

  v15 = a2;
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v16 = sub_1BC8F7734();
  __swift_project_value_buffer(v16, qword_1EDC2B2B0);
  v17 = a2;
  v18 = sub_1BC8F7714();
  v19 = sub_1BC8F81E4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    v22 = a2;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_1BC7A3000, v18, v19, "BLASTDOOR: Error generating movie preview %{public}@", v20, 0xCu);
    sub_1BC7F1790(v21, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v21, -1, -1);
    MEMORY[0x1BFB2AA50](v20, -1, -1);
  }

  v42 = xmmword_1BC9037B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
  sub_1BC8F7F74();
}

uint64_t sub_1BC841290(uint64_t a1)
{
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EDC2B2B0);

  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();

  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_9();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v4 = 136315138;
    v5 = sub_1BC8F7AB4();
    v7 = sub_1BC7A9A4C(v5, v6, &v10);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_1BC7A3000, v2, v3, "BLASTDOOR: Trying to parse metadata from %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  return sub_1BC8F7634();
}

void sub_1BC841438(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);

  sub_1BC840C2C(a1, a2);
}

double sub_1BC8414D4(char a1)
{
  v2 = 7827308;
  v3 = 0xE300000000000000;
  switch(a1)
  {
    case 1:
      v3 = 0xE600000000000000;
      v2 = 0x6D756964656DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v2 = 1751607656;
      break;
    case 3:
      v2 = 7823730;
      break;
    default:
      break;
  }

  MEMORY[0x1BFB29120](v2, v3);

  return result;
}

uint64_t sub_1BC841570@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  objc_allocWithZone(MEMORY[0x1E6987E60]);

  result = sub_1BC7F15F0(a1, a2, a3);
  v9 = result;
  if (result)
  {
    result = sub_1BC7D9730(0, &qword_1EBCF5BE0, 0x1E6987E60);
    v10 = &off_1F3B3DFB0;
  }

  else
  {
    v10 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = v9;
  a4[3] = result;
  a4[4] = v10;
  return result;
}

uint64_t sub_1BC841614@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_1BC8F6ED4();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BC8F7014();
  v23 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-v11];
  v22 = *a1;
  sub_1BC8F6F94();
  sub_1BC8F6F54();
  v13 = sub_1BC8F6F24();
  v15 = v14;
  v16 = *(v7 + 8);
  v16(v10, v6);
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x1BFB29120](v13, v15);

  MEMORY[0x1BFB29120](95, 0xE100000000000000);
  v17 = sub_1BC8414D4(v22);
  v18 = v24;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v24, v17);
  sub_1BC7B7A9C();
  sub_1BC8F7004();
  (*(v3 + 8))(v5, v18);

  sub_1BC8F6F84();
  v19 = v23;
  v16(v10, v23);
  return (v16)(v12, v19);
}

void *sub_1BC8418A8(uint64_t a1)
{
  v2 = sub_1BC841AF0(a1);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v3 = sub_1BC8F7734();
  __swift_project_value_buffer(v3, qword_1EDC2B2B0);
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Raw file size is %{public}llu bytes", v6, 0xCu);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  if (v2 < 0x989680)
  {
    return &unk_1F3B369D8;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v8 = sub_1BC8DFC10();
  v9 = sub_1BC8F7714();
  v10 = sub_1BC8F8204();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    if (v8)
    {
      v13 = 6578530;
    }

    else
    {
      v13 = 1685024615;
    }

    if (v8)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v15 = sub_1BC7A9A4C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1BC7A3000, v9, v10, "Network quality is %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  if (v8)
  {
    v16 = &unk_1F3B36A28;
    v17 = 50000000;
  }

  else
  {
    v16 = &unk_1F3B36A50;
    v17 = 100000000;
  }

  if (v2 >= v17)
  {
    return v16;
  }

  else
  {
    return &unk_1F3B36A00;
  }
}

uint64_t sub_1BC841AF0(uint64_t a1)
{
  v2 = sub_1BC8F7014();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1BC8F7734();
  v13 = __swift_project_value_buffer(v12, qword_1EDC2B2B0);
  v34 = *(v3 + 16);
  v34(v11, a1, v2);
  v32 = v13;
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  v16 = os_log_type_enabled(v14, v15);
  v33 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v29 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = v6;
    v20 = v19;
    v35 = v19;
    *v18 = 136446210;
    sub_1BC80DFB0();
    v21 = sub_1BC8F8A54();
    v30 = a1;
    v23 = v22;
    (*(v3 + 8))(v11, v2);
    v24 = sub_1BC7A9A4C(v21, v23, &v35);
    a1 = v30;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "Loading file size for url %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB2AA50](v20, -1, -1);
    v25 = v18;
    v9 = v29;
    MEMORY[0x1BFB2AA50](v25, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v11, v2);
  }

  sub_1BC7D9730(0, &qword_1EBCF5BD8, 0x1E696AC00);
  v34(v9, a1, v2);
  v26 = sub_1BC843B78(v9);
  v27 = sub_1BC8F81B4();

  return v27;
}

uint64_t sub_1BC841F68()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 16) = v5;
  v6 = sub_1BC8F7014();
  *(v1 + 40) = v6;
  *(v1 + 48) = *(v6 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 81) = *v3;

  return MEMORY[0x1EEE6DFA0](sub_1BC842034, 0, 0);
}

uint64_t sub_1BC842034()
{
  v31 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B2B0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_14_11(v7))
  {
    v8 = *(v0 + 81);
    v9 = OUTLINED_FUNCTION_8_17();
    v30[0] = OUTLINED_FUNCTION_15_11();
    *v9 = 136446466;
    v10 = 7827308;
    switch(v8)
    {
      case 1:
        v10 = OUTLINED_FUNCTION_1_16();
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_3_18();
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_10_15();
        break;
      default:
        break;
    }

    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);
    v17 = sub_1BC7A9A4C(v10, 0xE300000000000000, v30);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2082;
    sub_1BC80DFB0();
    v18 = sub_1BC8F8A54();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_1BC7A9A4C(v18, v20, v30);

    *(v9 + 14) = v21;
    OUTLINED_FUNCTION_12_12(&dword_1BC7A3000, v22, v23, "Generating asset (%{public}s for %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 40);

    (*(v12 + 8))(v11, v13);
  }

  v24 = *(v0 + 81);
  if (v24 == 3)
  {
    sub_1BC8424D4(*(v0 + 16));

    OUTLINED_FUNCTION_27();

    return v25();
  }

  else
  {
    *(v0 + 80) = v24;
    v26 = swift_task_alloc();
    *(v0 + 64) = v26;
    *v26 = v0;
    v26[1] = sub_1BC842344;
    v27 = *(v0 + 24);
    v28 = *(v0 + 16);

    return sub_1BC842960(v28, v27, (v0 + 80));
  }
}

uint64_t sub_1BC842344()
{
  OUTLINED_FUNCTION_5();
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BC842478, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v2();
  }
}

uint64_t sub_1BC842478()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

id sub_1BC8424D4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v36[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BC8F7014();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - v6;
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v34 = v2;
  v35 = v1;
  v8 = sub_1BC8F7734();
  __swift_project_value_buffer(v8, qword_1EDC2B2B0);
  v9 = sub_1BC8F7714();
  v10 = sub_1BC8F8204();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BC7A3000, v9, v10, "Copying raw video", v11, 2u);
    MEMORY[0x1BFB2AA50](v11, -1, -1);
  }

  LOBYTE(v36[0]) = 3;
  sub_1BC841614(v36, v7);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_1BC8F6FC4();
  v14 = sub_1BC8F7BE4();

  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    v17 = v34;
    v16 = v35;
    (*(v34 + 16))(v5, v7, v35);
    v18 = sub_1BC8F7714();
    v19 = sub_1BC8F8204();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136446210;
      sub_1BC80DFB0();
      v22 = sub_1BC8F8A54();
      v24 = v23;
      (*(v17 + 8))(v5, v35);
      v25 = sub_1BC7A9A4C(v22, v24, v36);

      *(v20 + 4) = v25;
      v16 = v35;
      _os_log_impl(&dword_1BC7A3000, v18, v19, "Asset already exists %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1BFB2AA50](v21, -1, -1);
      MEMORY[0x1BFB2AA50](v20, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v5, v16);
    }

    return (*(v17 + 32))(v33, v7, v16);
  }

  else
  {
    v26 = [v12 defaultManager];
    v27 = sub_1BC8F6F44();
    v28 = sub_1BC8F6F44();
    v36[0] = 0;
    v29 = [v26 copyItemAtURL:v27 toURL:v28 error:v36];

    v30 = v36[0];
    if (v29)
    {
      (*(v34 + 32))(v33, v7, v35);
      return v30;
    }

    else
    {
      v32 = v36[0];
      sub_1BC8F6EA4();

      swift_willThrow();
      return (*(v34 + 8))(v7, v35);
    }
  }
}

uint64_t sub_1BC842960(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  v6 = sub_1BC8F7014();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 200) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1BC842A78, 0, 0);
}

uint64_t sub_1BC842A78()
{
  v68 = v0;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_1BC8F7734();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_1EDC2B2B0);
  v3 = *(v1 + 16);
  *(v0 + 160) = v3;
  *(v0 + 168) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = OUTLINED_FUNCTION_97();
  v3(v4);
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();
  if (os_log_type_enabled(v5, v6))
  {
    v62 = v3;
    v7 = *(v0 + 200);
    v8 = OUTLINED_FUNCTION_8_17();
    *v67 = OUTLINED_FUNCTION_15_11();
    *v8 = 136446466;
    v9 = 7827308;
    switch(v7)
    {
      case 1:
        v9 = OUTLINED_FUNCTION_1_16();
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_3_18();
        break;
      case 3:
        v9 = OUTLINED_FUNCTION_10_15();
        break;
      default:
        break;
    }

    v13 = *(v0 + 144);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = sub_1BC7A9A4C(v9, 0xE300000000000000, v67);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2082;
    sub_1BC80DFB0();
    v17 = sub_1BC8F8A54();
    v19 = v18;
    v20 = v15;
    v11 = *(v14 + 8);
    v11(v13, v20);
    sub_1BC7A9A4C(v17, v19, v67);
    OUTLINED_FUNCTION_16_8();
    *(v8 + 14) = v17;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "Generating video asset (%{public}s) for %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();

    v3 = v62;
  }

  else
  {
    v10 = *(v0 + 88);

    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_97();
    (v11)(v12);
  }

  *(v0 + 176) = v11;
  v21 = *(v0 + 136);
  v67[0] = *(v0 + 200);
  sub_1BC841614(v67, v21);
  v22 = [objc_opt_self() defaultManager];
  sub_1BC8F6FC4();
  v23 = sub_1BC8F7BE4();

  v24 = [v22 fileExistsAtPath_];

  if (v24)
  {
    (v3)(*(v0 + 128), *(v0 + 64), *(v0 + 80));
    v25 = sub_1BC8F7714();
    v26 = sub_1BC8F8204();
    v27 = OUTLINED_FUNCTION_14_11(v26);
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    v30 = *(v0 + 80);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63 = v3;
      *v67 = v61;
      *v31 = 136446210;
      sub_1BC80DFB0();
      v32 = sub_1BC8F8A54();
      v64 = v29;
      v34 = v33;
      v35 = OUTLINED_FUNCTION_97();
      (v11)(v35);
      sub_1BC7A9A4C(v32, v34, v67);
      OUTLINED_FUNCTION_16_8();
      *(v31 + 4) = v28;
      _os_log_impl(&dword_1BC7A3000, v25, v26, "Asset already exists %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      v3 = v63;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

      v11(v64, v30);
    }

    else
    {

      v39 = OUTLINED_FUNCTION_97();
      (v11)(v39);
      v11(v29, v30);
    }

    (v3)(*(v0 + 56), *(v0 + 64), *(v0 + 80));
    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_27();

    return v40();
  }

  else
  {
    v36 = *(v0 + 200);
    sub_1BC7D9730(0, &qword_1EDC1DEA8, 0x1E6988168);
    v37 = OUTLINED_FUNCTION_97();
    v3(v37);
    v38 = sub_1BC7F0BB8();
    *(v0 + 184) = v38;
    sub_1BC8437F0(v38, qword_1BC9039A0[v36], *(v0 + 136), v0 + 16);
    (v3)(*(v0 + 112), *(v0 + 64), *(v0 + 80));
    v42 = sub_1BC8F7714();
    v43 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_14_11(v43))
    {
      v65 = *(v0 + 200);
      v45 = *(v0 + 112);
      v46 = OUTLINED_FUNCTION_8_17();
      *v67 = OUTLINED_FUNCTION_15_11();
      *v46 = 136446466;
      sub_1BC80DFB0();
      v47 = sub_1BC8F8A54();
      v49 = v48;
      v50 = OUTLINED_FUNCTION_6_13();
      v51(v50);
      sub_1BC7A9A4C(v47, v49, v67);
      OUTLINED_FUNCTION_16_8();
      *(v46 + 4) = v45;
      *(v46 + 12) = 2082;
      v52 = OUTLINED_FUNCTION_9_11();
      switch(v65)
      {
        case 1:
          v52 = OUTLINED_FUNCTION_1_16();
          break;
        case 2:
          v52 = OUTLINED_FUNCTION_3_18();
          break;
        case 3:
          v52 = OUTLINED_FUNCTION_10_15();
          break;
        default:
          break;
      }

      v55 = sub_1BC7A9A4C(v52, v45, v67);

      *(v46 + 14) = v55;
      OUTLINED_FUNCTION_12_12(&dword_1BC7A3000, v56, v57, "Starting export for %{public}s with quality %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {
      v53 = *(v0 + 112);
      v54 = *(v0 + 80);

      v11(v53, v54);
    }

    v58 = *(v0 + 40);
    v59 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v58);
    v66 = (*(v59 + 88) + **(v59 + 88));
    v60 = swift_task_alloc();
    *(v0 + 192) = v60;
    *v60 = v0;
    v60[1] = sub_1BC843280;

    return v66(v58, v59);
  }
}

uint64_t sub_1BC843280()
{
  OUTLINED_FUNCTION_5();

  return MEMORY[0x1EEE6DFA0](sub_1BC843378, 0, 0);
}

uint64_t sub_1BC843378()
{
  v47 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = (*(v2 + 32))(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  if (v3)
  {
    v7 = v3;
    v4(*(v0 + 104), v6, v5);
    v8 = v7;
    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F81E4();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 176);
    if (v11)
    {
      v43 = v10;
      v13 = OUTLINED_FUNCTION_8_17();
      v42 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46[0] = v45;
      *v13 = 136446466;
      sub_1BC80DFB0();
      v14 = sub_1BC8F8A54();
      v16 = v15;
      v17 = OUTLINED_FUNCTION_7_11();
      v12(v17);
      v18 = sub_1BC7A9A4C(v14, v16, v46);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2114;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v42 = v20;
      _os_log_impl(&dword_1BC7A3000, v9, v43, "Export failed for %{public}s with error %{public}@", v13, 0x16u);
      sub_1BC7E6180(v42, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v32 = OUTLINED_FUNCTION_7_11();
      v12(v32);
    }

    v34 = *(v0 + 176);
    v33 = *(v0 + 184);
    swift_willThrow();

    v35 = OUTLINED_FUNCTION_97();
    v34(v35);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    OUTLINED_FUNCTION_27();
  }

  else
  {
    v4(*(v0 + 96), v6, v5);
    v21 = sub_1BC8F7714();
    v22 = sub_1BC8F8204();
    v23 = OUTLINED_FUNCTION_14_11(v22);
    v24 = *(v0 + 96);
    if (v23)
    {
      v25 = *(v0 + 176);
      v44 = *(v0 + 200);
      v26 = OUTLINED_FUNCTION_8_17();
      v46[0] = OUTLINED_FUNCTION_15_11();
      *v26 = 136446466;
      sub_1BC80DFB0();
      v27 = sub_1BC8F8A54();
      v29 = v28;
      v30 = OUTLINED_FUNCTION_6_13();
      v25(v30);
      sub_1BC7A9A4C(v27, v29, v46);
      OUTLINED_FUNCTION_16_8();
      *(v26 + 4) = v24;
      *(v26 + 12) = 2082;
      v31 = OUTLINED_FUNCTION_9_11();
      switch(v44)
      {
        case 1:
          v31 = OUTLINED_FUNCTION_1_16();
          break;
        case 2:
          v31 = OUTLINED_FUNCTION_3_18();
          break;
        case 3:
          v31 = OUTLINED_FUNCTION_10_15();
          break;
        default:
          break;
      }

      v39 = *(v0 + 184);
      v40 = sub_1BC7A9A4C(v31, v24, v46);

      *(v26 + 14) = v40;
      _os_log_impl(&dword_1BC7A3000, v21, v22, "Export finished for %{public}s with quality %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {
      v37 = *(v0 + 176);

      v38 = OUTLINED_FUNCTION_6_13();
      v37(v38);
    }

    (*(*(v0 + 88) + 32))(*(v0 + 56), *(v0 + 136), *(v0 + 80));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_27();
  }

  return v36();
}

uint64_t sub_1BC8437F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = *v4;
  v13 = sub_1BC8F7C24();
  v12(&v38, a1, v13, v14);

  if (v39)
  {
    sub_1BC7CF5EC(&v38, a4);
    v15 = *(a4 + 24);
    v16 = *(a4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
    (*(v16 + 48))(a2, v15, v16);
    v17 = sub_1BC8F7014();
    (*(*(v17 - 8) + 16))(v11, a3, v17);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v17);
    v18 = *(a4 + 24);
    v19 = *(a4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a4, v18);
    (*(v19 + 16))(v11, v18, v19);
    v20 = *MEMORY[0x1E69874C0];
    v21 = *(a4 + 24);
    v22 = *(a4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
    v23 = *(v22 + 72);
    v24 = v20;
    return v23(v20, v21, v22);
  }

  else
  {
    sub_1BC7E6180(&v38, &qword_1EBCF5BC0, &unk_1BC9038C0);
    if (qword_1EDC1E1F8 != -1)
    {
      swift_once();
    }

    v26 = sub_1BC8F7734();
    __swift_project_value_buffer(v26, qword_1EDC2B2B0);
    v27 = a1;
    v28 = sub_1BC8F7714();
    v29 = sub_1BC8F81E4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v38 = v31;
      *v30 = 136446210;
      v40 = v27;
      sub_1BC7D9730(0, &qword_1EBCF5BD0, 0x1E6987E28);
      v32 = v27;
      v33 = sub_1BC8F7C94();
      v35 = sub_1BC7A9A4C(v33, v34, &v38);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1BC7A3000, v28, v29, "Failed to create an export session for %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1BFB2AA50](v31, -1, -1);
      MEMORY[0x1BFB2AA50](v30, -1, -1);
    }

    sub_1BC843CD0();
    swift_allocError();
    *v36 = 1;
    return swift_willThrow();
  }
}

id sub_1BC843B78(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F6F44();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1BC8F7014();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1BC8F6EA4();

    swift_willThrow();
    v9 = sub_1BC8F7014();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

unint64_t sub_1BC843CD0()
{
  result = qword_1EBCF5BC8;
  if (!qword_1EBCF5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5BC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoMessageAssetManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC843E04()
{
  result = qword_1EBCF5BE8;
  if (!qword_1EBCF5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5BE8);
  }

  return result;
}

uint64_t sub_1BC843E58(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_16_9();
  type metadata accessor for TrackedOutgoingMessage(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    v12 = OUTLINED_FUNCTION_97();
    sub_1BC7C1744(v12, v13, &qword_1BC901220);
    sub_1BC8496F0(v3);
    sub_1BC8F7264();
    OUTLINED_FUNCTION_4_1();
    (*(v14 + 8))(a2);
    return sub_1BC7C1744(v3, &qword_1EBCF5730, &qword_1BC901220);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_97();
    sub_1BC849EE0(v16, v17);
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    sub_1BC83D814();
    *v4 = v19;
    sub_1BC8F7264();
    OUTLINED_FUNCTION_4_1();
    return (*(v18 + 8))(a2);
  }
}

void sub_1BC84400C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CF8, &qword_1BC903B08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for VideoFileTransfer(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_1BC7C1744(a1, &qword_1EBCF5CF8, &qword_1BC903B08);
    sub_1BC849870(a2, a3, v10);

    sub_1BC7C1744(v10, &qword_1EBCF5CF8, &qword_1BC903B08);
  }

  else
  {
    sub_1BC849EE0(a1, v13);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1BC83DA90(v13, a2, a3);

    *v4 = v16;
  }
}

uint64_t sub_1BC8441AC(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1BFB28D50]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for VideoFileTransfer(0);

  return sub_1BC8F6FA4();
}

uint64_t sub_1BC84420C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

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

uint64_t sub_1BC8442D4(char a1)
{
  if (a1)
  {
    return 7107189;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1BC844304(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CC0, &qword_1BC903AE8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC849454();
  sub_1BC8F8CA4();
  v25 = 0;
  sub_1BC8F7994();
  OUTLINED_FUNCTION_2_17();
  v13 = sub_1BC849F3C(v11, v12, MEMORY[0x1E698F3E0]);
  OUTLINED_FUNCTION_39_5(v3, &v25, v14, v15, v13);
  if (!v2)
  {
    v16 = *(type metadata accessor for VideoFileTransfer(0) + 20);
    v24 = 1;
    sub_1BC8F7014();
    OUTLINED_FUNCTION_1_17();
    v19 = sub_1BC849F3C(v17, v18, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_39_5(v3 + v16, &v24, v20, v21, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1BC8444B4()
{
  sub_1BC8F7994();
  OUTLINED_FUNCTION_2_17();
  sub_1BC849F3C(v0, v1, MEMORY[0x1E698F3E8]);
  OUTLINED_FUNCTION_30();
  sub_1BC8F7B64();
  type metadata accessor for VideoFileTransfer(0);
  sub_1BC8F7014();
  OUTLINED_FUNCTION_1_17();
  sub_1BC849F3C(v2, v3, MEMORY[0x1E6968FC0]);
  OUTLINED_FUNCTION_30();
  return sub_1BC8F7B64();
}

uint64_t sub_1BC844564()
{
  sub_1BC8F8C04();
  sub_1BC8F7994();
  OUTLINED_FUNCTION_2_17();
  sub_1BC849F3C(v0, v1, MEMORY[0x1E698F3E8]);
  sub_1BC8F7B64();
  type metadata accessor for VideoFileTransfer(0);
  sub_1BC8F7014();
  OUTLINED_FUNCTION_1_17();
  sub_1BC849F3C(v2, v3, MEMORY[0x1E6968FC0]);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC844634@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v27 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  v32 = sub_1BC8F7994();
  OUTLINED_FUNCTION_0();
  v29 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v31 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CA0, &qword_1BC903AE0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_16_9();
  v15 = type metadata accessor for VideoFileTransfer(v14);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v19 = v18 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC849454();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_17();
  sub_1BC849F3C(v20, v21, MEMORY[0x1E698F3F0]);
  sub_1BC8F88F4();
  (*(v29 + 32))(v19, v31, v32);
  OUTLINED_FUNCTION_1_17();
  sub_1BC849F3C(v22, v23, MEMORY[0x1E6968FD0]);
  sub_1BC8F88F4();
  v24 = OUTLINED_FUNCTION_10_16();
  v25(v24);
  (*(v27 + 32))(v19 + *(v15 + 20), v8, v30);
  sub_1BC8494A8(v19, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BC84950C(v19);
}

uint64_t sub_1BC8449C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC84420C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8449F0(uint64_t a1)
{
  v2 = sub_1BC849454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC844A2C(uint64_t a1)
{
  v2 = sub_1BC849454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC844AA0(uint64_t a1)
{
  sub_1BC8F8C04();
  sub_1BC8F7994();
  sub_1BC849F3C(&qword_1EBCF5CD8, MEMORY[0x1E698F3D8], MEMORY[0x1E698F3E8]);
  sub_1BC8F7B64();
  sub_1BC8F7014();
  sub_1BC849F3C(&qword_1EBCF5CE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

void sub_1BC844B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v119 = a5;
  v120 = a3;
  v121 = a2;
  v122 = a1;
  v127 = *MEMORY[0x1E69E9840];
  v116 = type metadata accessor for VideoFileTransfer(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v11 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v118 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v16 = v15 - v14;
  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  OUTLINED_FUNCTION_37_7();
  v17 = sub_1BC8F7994();
  OUTLINED_FUNCTION_2_17();
  sub_1BC849F3C(v18, v19, MEMORY[0x1E698F3E0]);
  v20 = a4;
  v21 = sub_1BC8F6C94();
  v23 = v22;

  v123 = v5;
  if (!v5)
  {
    v24 = v121;
    v113 = v16;
    v109 = v17;
    v115 = v11;
    v114 = v20;
    v112 = v10;
    v25 = objc_opt_self();
    v26 = sub_1BC8F70C4();
    v124 = 0;
    v27 = [v25 JSONObjectWithData:v26 options:0 error:&v124];

    v28 = v124;
    if (!v27)
    {
      v54 = v28;
      v55 = sub_1BC8F6EA4();

      v123 = v55;
      swift_willThrow();
      v56 = v21;
      v57 = v23;
LABEL_19:
      sub_1BC7D4C94(v56, v57);
      return;
    }

    v110 = v21;
    v111 = v23;
    sub_1BC8F8474();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CE8, &qword_1BC903AF0);
    swift_dynamicCast();
    v29 = v124;
    v30 = v120;
    v31 = sub_1BC8F7BE4();
    v32 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v32)
    {
      v120 = sub_1BC8F7C24();
      v108 = v33;

      if (qword_1EDC1E1F8 != -1)
      {
        OUTLINED_FUNCTION_0_18();
        swift_once();
      }

      v34 = sub_1BC8F7734();
      v35 = __swift_project_value_buffer(v34, qword_1EDC2B2B0);
      v36 = v118;
      v37 = *(v118 + 16);
      v38 = v113;
      v39 = v115;
      v107 = v118 + 16;
      v106 = v37;
      v37(v113, v122, v115);

      v121 = v35;
      v40 = sub_1BC8F7714();
      v41 = sub_1BC8F8204();

      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_11_2();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v125 = swift_slowAlloc();
        *v42 = 136446466;
        OUTLINED_FUNCTION_1_17();
        sub_1BC849F3C(v43, v44, MEMORY[0x1E6968FE0]);
        v45 = sub_1BC8F8A54();
        v46 = v38;
        v48 = v47;
        (*(v36 + 8))(v46, v39);
        v49 = sub_1BC7A9A4C(v45, v48, &v125);

        *(v42 + 4) = v49;
        *(v42 + 12) = 2080;
        v50 = sub_1BC8F7AB4();
        v52 = sub_1BC7A9A4C(v50, v51, &v125);

        *(v42 + 14) = v52;
        _os_log_impl(&dword_1BC7A3000, v40, v41, "Sending messaging at url %{public}s with metadata %s", v42, 0x16u);
        swift_arrayDestroy();
        v53 = OUTLINED_FUNCTION_6_14();
        MEMORY[0x1BFB2AA50](v53);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {

        (*(v118 + 8))(v113, v115);
      }

      v68 = v117;
      v69 = *(v117 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service + 24);
      v70 = *(v117 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service + 32);
      v119 = __swift_project_boxed_opaque_existential_1((v117 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service), v69);

      sub_1BC899DDC(v71);
      v73 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CF0, &unk_1BC903AF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC8FEAA0;
      v125 = sub_1BC8F7C24();
      v126 = v75;
      v76 = MEMORY[0x1E69E6158];
      sub_1BC8F8544();
      *(inited + 96) = MEMORY[0x1E69E6530];
      *(inited + 72) = 2592000;
      v125 = sub_1BC8F7C24();
      v126 = v77;
      sub_1BC8F8544();
      *(inited + 168) = v76;
      v78 = v108;
      *(inited + 144) = v120;
      *(inited + 152) = v78;
      v79 = sub_1BC8F7AD4();
      v80 = v123;
      v81 = (*(v70 + 8))(v122, v29, v73, v79, v69, v70);
      if (v123)
      {

        v83 = v123;
        OUTLINED_FUNCTION_21_10();
        v84 = sub_1BC8F7714();
        v85 = sub_1BC8F81E4();

        v86 = v111;
        if (os_log_type_enabled(v84, v85))
        {
          OUTLINED_FUNCTION_9();
          v87 = swift_slowAlloc();
          OUTLINED_FUNCTION_18_10();
          v88 = swift_slowAlloc();
          *v87 = 138543362;
          v89 = v80;
          v90 = _swift_stdlib_bridgeErrorToNSError();
          *(v87 + 4) = v90;
          *v88 = v90;
          OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v91, v92, "Failed to start outgoing message transfer with error %{public}@");
          sub_1BC7C1744(v88, &unk_1EBCF5DB0, &unk_1BC900410);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        v123 = v80;
        swift_willThrow();
        v56 = v110;
        v57 = v86;
        goto LABEL_19;
      }

      v93 = v81;
      v94 = v82;

      v95 = v112;
      (*(*(v109 - 8) + 16))(v112, v114);
      v96 = v106(v112 + *(v116 + 20), v122, v115);
      MEMORY[0x1EEE9AC00](v96);
      *(&v105 - 4) = v68;
      *(&v105 - 3) = v93;
      *(&v105 - 2) = v94;
      *(&v105 - 1) = v95;
      v98 = v97;
      sub_1BC84575C(sub_1BC8496D0);

      OUTLINED_FUNCTION_21_10();
      v99 = sub_1BC8F7714();
      LOBYTE(v98) = sub_1BC8F8204();

      if (os_log_type_enabled(v99, v98))
      {
        OUTLINED_FUNCTION_9();
        v100 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v101 = swift_slowAlloc();
        v125 = v101;
        *v100 = 136446210;
        v102 = sub_1BC7A9A4C(v93, v94, &v125);

        *(v100 + 4) = v102;
        OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v103, v104, "Successfully sent message with transaction identifier %{public}s");
        __swift_destroy_boxed_opaque_existential_1(v101);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_26_6();
      }

      else
      {
        OUTLINED_FUNCTION_26_6();
      }

      sub_1BC84950C(v112);
    }

    else
    {

      if (qword_1EDC1E1F8 != -1)
      {
        OUTLINED_FUNCTION_0_18();
        swift_once();
      }

      v58 = sub_1BC8F7734();
      __swift_project_value_buffer(v58, qword_1EDC2B2B0);

      v59 = sub_1BC8F7714();
      v60 = sub_1BC8F81E4();

      if (os_log_type_enabled(v59, v60))
      {
        OUTLINED_FUNCTION_9();
        v61 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v62 = swift_slowAlloc();
        v125 = v62;
        *v61 = 136446210;
        sub_1BC7EB6B4(v24, v30);
        v65 = sub_1BC7A9A4C(v63, v64, &v125);

        *(v61 + 4) = v65;
        OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v66, v67, "Unable to create ids address from sender handle %{public}s");
        __swift_destroy_boxed_opaque_existential_1(v62);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      OUTLINED_FUNCTION_26_6();
    }
  }
}

uint64_t sub_1BC84565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CF8, &qword_1BC903B08);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1BC8494A8(a4, &v12 - v8);
  v10 = type metadata accessor for VideoFileTransfer(0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  swift_beginAccess();

  sub_1BC84400C(v9, a2, a3);
  return swift_endAccess();
}

double sub_1BC8457D4@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  [a1 lock];
  sub_1BC8490B0(a2, a3, a4, a5);
  [a1 unlock];

  return result;
}

void sub_1BC845860()
{
  v0 = sub_1BC8F7264();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC7D9730(0, &unk_1EDC1FF40, 0x1E6983308);
  v4 = sub_1BC7D4FB8(0xD000000000000012, 0x80000001BC90B6C0);
  v5 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  v6 = sub_1BC8F7BE4();
  [v5 setTitle_];

  v7 = sub_1BC8F7BE4();
  [v5 setSubtitle_];

  sub_1BC7D9730(0, &unk_1EDC1DDD0, 0x1E6983298);
  sub_1BC8F7254();
  v8 = sub_1BC8F7204();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v11 = v5;
  v12 = sub_1BC891064(v8, v10, v11, 0);
  [v4 addNotificationRequest:v12 withCompletionHandler:0];
}

uint64_t sub_1BC845A78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC845AA4()
{
  OUTLINED_FUNCTION_32();
  if (sub_1BC845E18(*(v0 + 24)))
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_1BC845C20;
    v2 = *(v0 + 16);

    return sub_1BC845EE8(v2);
  }

  else
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v4 = sub_1BC8F7734();
    __swift_project_value_buffer(v4, qword_1EDC2B2B0);
    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_28_7(v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "Dropping message - file size check", v7, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_1BC845C20()
{
  OUTLINED_FUNCTION_5();
  *(*v0 + 48) = v1;

  v2 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BC845D14()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 48);
  if ((v1 & 1) == 0)
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v2 = sub_1BC8F7734();
    __swift_project_value_buffer(v2, qword_1EDC2B2B0);
    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_28_7(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BC7A3000, v3, v4, "Dropping message - active downloads check", v5, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

BOOL sub_1BC845E18(void *a1)
{
  v2 = [a1 fileSize];
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_serverBag), *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_serverBag + 24));
  sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  v3 = sub_1BC8F8384();
  v4 = sub_1BC849568(0xD000000000000016, 0x80000001BC90CB50, v3);

  v5 = [v4 unsignedIntegerValue];
  return v2 < 1 || v5 >= v2;
}

uint64_t sub_1BC845EE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1BC8F7914();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1BC8F7264();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC846004, 0, 0);
}

uint64_t sub_1BC846004()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(*(v0 + 24) + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_downloadManager);
  *(v0 + 80) = v4;

  sub_1BC8F7954();
  sub_1BC8F7934();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x1E698F3B0])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_9;
  }

  if (v5 == *MEMORY[0x1E698F3C8])
  {
    v6 = 1;
  }

  else if (v5 == *MEMORY[0x1E698F3C0])
  {
    v6 = 2;
  }

  else
  {
    if (v5 != *MEMORY[0x1E698F3B8])
    {
      if (v5 != *MEMORY[0x1E698F3D0])
      {
        (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
      }

      goto LABEL_2;
    }

    v6 = 3;
  }

LABEL_9:
  *(v0 + 88) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BC846164, v4, 0);
}

uint64_t sub_1BC846164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1BC872F2C(*(v5 + 72), v5 + 88, a3, a4, a5);

  v7 = OUTLINED_FUNCTION_30();
  v8(v7);

  v9 = *(v5 + 8);

  return v9(v6 & 1);
}

uint64_t sub_1BC846218@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v93 = *MEMORY[0x1E69E9840];
  v86 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v84 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v82 = v5 - v4;
  OUTLINED_FUNCTION_19_6();
  v6 = sub_1BC8F6ED4();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v10 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  v16 = (v14 - v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v74 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v74 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v74 - v24;
  sub_1BC8F6F34();
  v91 = 0xD000000000000016;
  v92 = 0x80000001BC90CB70;
  v26 = *(v8 + 104);
  v79 = *MEMORY[0x1E6968F70];
  v80 = v8 + 104;
  v78 = v26;
  v26(v1);
  v77 = sub_1BC7B7A9C();
  sub_1BC8F7004();
  v27 = *(v8 + 8);
  v83 = v1;
  v87 = v6;
  v85 = v8 + 8;
  v76 = v27;
  v27(v1, v6);
  v28 = *(v12 + 8);
  v81 = v23;
  v89 = v28;
  v90 = v10;
  v28(v23, v10);
  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  sub_1BC8F6FC4();
  v31 = sub_1BC8F7BE4();

  LODWORD(v23) = [v30 fileExistsAtPath_];

  if (v23)
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v32 = sub_1BC8F7734();
    __swift_project_value_buffer(v32, qword_1EDC2B2B0);
    v33 = v90;
    (*(v12 + 16))(v20, v25, v90);
    v34 = sub_1BC8F7714();
    v35 = sub_1BC8F8204();
    v36 = OUTLINED_FUNCTION_32_5();
    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_9();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v39 = swift_slowAlloc();
      v91 = v39;
      *v38 = 136446210;
      OUTLINED_FUNCTION_1_17();
      sub_1BC849F3C(v40, v41, MEMORY[0x1E6968FE0]);
      v42 = sub_1BC8F8A54();
      v43 = v20;
      v44 = v89;
      v89(v43, v90);
      v45 = OUTLINED_FUNCTION_97();
      sub_1BC7A9A4C(v45, v46, v47);
      OUTLINED_FUNCTION_77();

      *(v38 + 4) = v42;
      v48 = v35;
      v49 = v44;
      _os_log_impl(&dword_1BC7A3000, v34, v48, "Incoming video messages folder already exists: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v50 = OUTLINED_FUNCTION_6_14();
      MEMORY[0x1BFB2AA50](v50);
      v33 = v90;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v49 = v89;
      v89(v20, v33);
    }

    goto LABEL_14;
  }

  v75 = v29;
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v51 = sub_1BC8F7734();
  __swift_project_value_buffer(v51, qword_1EDC2B2B0);
  v33 = v90;
  (*(v12 + 16))(v16, v25, v90);
  v52 = sub_1BC8F7714();
  v53 = sub_1BC8F8204();
  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_9();
    v54 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v74 = swift_slowAlloc();
    v91 = v74;
    *v54 = 136446210;
    OUTLINED_FUNCTION_1_17();
    sub_1BC849F3C(v55, v56, MEMORY[0x1E6968FE0]);
    sub_1BC8F8A54();
    v49 = v89;
    v89(v16, v90);
    v57 = OUTLINED_FUNCTION_97();
    v60 = sub_1BC7A9A4C(v57, v58, v59);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_1BC7A3000, v52, v53, "Incoming video messages folder does not exist - creating now %{public}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v33 = v90;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v49 = v89;
    v89(v16, v33);
  }

  v61 = [v75 defaultManager];
  v62 = sub_1BC8F6F44();
  v91 = 0;
  v63 = [v61 createDirectoryAtURL:v62 withIntermediateDirectories:1 attributes:0 error:&v91];

  if (v63)
  {
    v64 = v91;
LABEL_14:
    v65 = v82;
    sub_1BC8F7254();
    v66 = sub_1BC8F7204();
    v68 = v67;
    (*(v84 + 8))(v65, v86);
    v91 = v66;
    v92 = v68;
    v69 = v83;
    v70 = v87;
    v78(v83, v79, v87);
    v71 = v81;
    sub_1BC8F7004();
    v76(v69, v70);

    sub_1BC8F6F84();
    v49(v71, v33);
    return (v49)(v25, v33);
  }

  v73 = v91;
  sub_1BC8F6EA4();

  swift_willThrow();
  return (v49)(v25, v33);
}

void sub_1BC846AD4()
{
  OUTLINED_FUNCTION_29_0();
  v197 = v2;
  v198 = v1;
  v4 = v3;
  v196 = v5;
  v201[7] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v188 = &v171 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  v190 = v11 - v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  v194 = &v171 - v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v171 - v16;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v17);
  v182 = &v171 - v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_47();
  v200 = v20;
  OUTLINED_FUNCTION_19_6();
  sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v192 = v21;
  v193 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v189 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_30_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_47();
  v187 = v26;
  OUTLINED_FUNCTION_30_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_47();
  v181 = v28;
  OUTLINED_FUNCTION_30_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_47();
  v191 = v30;
  OUTLINED_FUNCTION_30_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_47();
  v195 = v32;
  OUTLINED_FUNCTION_19_6();
  v33 = sub_1BC8F7994();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v184 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v171 - v40;
  v183 = v42;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_47();
  v199 = v43;
  OUTLINED_FUNCTION_19_6();
  v44 = sub_1BC8F78F4();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_12();
  v50 = v49 - v48;
  v185 = v0;
  v51 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_queue];
  *(v49 - v48) = v51;
  (*(v46 + 104))(v49 - v48, *MEMORY[0x1E69E8020], v44);
  v52 = v51;
  v53 = sub_1BC8F7904();
  (*(v46 + 8))(v50, v44);
  if ((v53 & 1) == 0)
  {
    __break(1u);
    OUTLINED_FUNCTION_0_18();
    swift_once();
    v55 = sub_1BC8F7734();
    __swift_project_value_buffer(v55, qword_1EDC2B2B0);
    v56 = v53;
    v57 = sub_1BC8F7714();
    v58 = sub_1BC8F8204();

    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_9();
      v59 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_10();
      v60 = swift_slowAlloc();
      *v59 = 138543362;
      v61 = v53;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v62;
      *v60 = v62;
      OUTLINED_FUNCTION_41_8(&dword_1BC7A3000, v63, v64, "Dropping message as we couldn't download the metadata %{public}@");
      sub_1BC7C1744(v60, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v65 = OUTLINED_FUNCTION_6_14();
      MEMORY[0x1BFB2AA50](v65);
    }

    else
    {
    }

    goto LABEL_35;
  }

  v201[5] = &type metadata for CoreImageBlurrer;
  v201[6] = &off_1F3B3D070;
  v201[0] = sub_1BC84A1CC;
  v201[1] = 0;
  if (!v4)
  {
    __break(1u);
  }

  sub_1BC8400D8(v4, v41);
  v54 = v200;
  sub_1BC849AE8(v201);
  v180 = v35;
  v66 = *(v35 + 32);
  v67 = v41;
  v68 = v33;
  v176 = v35 + 32;
  v175 = v66;
  v66(v199, v67, v33);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v69 = sub_1BC8F7734();
  v70 = __swift_project_value_buffer(v69, qword_1EDC2B2B0);
  v71 = v197;

  v179 = v70;
  v72 = sub_1BC8F7714();
  v73 = sub_1BC8F8204();
  v74 = OUTLINED_FUNCTION_28_7(v73);
  v177 = v4;
  if (v74)
  {
    v178 = v68;
    OUTLINED_FUNCTION_11_2();
    v75 = swift_slowAlloc();
    OUTLINED_FUNCTION_18();
    v201[0] = swift_slowAlloc();
    *v75 = 136446466;
    if (!v71)
    {

      __break(1u);
      goto LABEL_39;
    }

    sub_1BC7EB6B4(v198, v71);
    v78 = sub_1BC7A9A4C(v76, v77, v201);

    *(v75 + 4) = v78;
    *(v75 + 12) = 2080;
    v79 = sub_1BC8F7AB4();
    v81 = sub_1BC7A9A4C(v79, v80, v201);

    *(v75 + 14) = v81;
    _os_log_impl(&dword_1BC7A3000, v72, v73, "Received incoming resource from %{public}s metadata %s", v75, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v82 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x1BFB2AA50](v82);

    v68 = v178;
    v54 = v200;
    v83 = v71;
  }

  else
  {

    v83 = v71;
    if (!v71)
    {
      v84 = 0;
      goto LABEL_14;
    }
  }

  v84 = sub_1BC8F7BE4();
LABEL_14:
  v85 = v180;
  v86 = IDSCopyAddressDestinationForDestination();

  if (!v86 || (v87 = IDSCopyRawAddressForDestination(), v86, !v87) || (v88 = [objc_opt_self() normalizedHandleWithDestinationID_], v87, !v88))
  {

    OUTLINED_FUNCTION_21_10();
    v90 = sub_1BC8F7714();
    v91 = sub_1BC8F81E4();
    v92 = OUTLINED_FUNCTION_32_5();
    if (!os_log_type_enabled(v92, v93))
    {

      (*(v85 + 8))(v199, v68);
      goto LABEL_35;
    }

    v94 = v68;
    OUTLINED_FUNCTION_9();
    v95 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v96 = swift_slowAlloc();
    v201[0] = v96;
    *v95 = 136446210;
    if (v83)
    {
      v97 = v96;

      sub_1BC7EB6B4(v198, v83);
      v100 = sub_1BC7A9A4C(v98, v99, v201);

      *(v95 + 4) = v100;
      _os_log_impl(&dword_1BC7A3000, v90, v91, "Unable to construct TUHandle from %{public}s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      v101 = OUTLINED_FUNCTION_6_14();
      MEMORY[0x1BFB2AA50](v101);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

      (*(v85 + 8))(v199, v94);
LABEL_35:
      OUTLINED_FUNCTION_24();
      return;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v89 = v195;
  sub_1BC846218(v195);
  v178 = v68;
  sub_1BC7D9558(v196, v54, &qword_1EBCF5A20, &qword_1BC901BF0);
  v102 = v192;
  v103 = v193;
  v104 = *(v193 + 16);
  v105 = v191;
  v197 = v193 + 16;
  v174 = v104;
  v104(v191, v89, v192);
  OUTLINED_FUNCTION_21_10();
  v106 = sub_1BC8F7714();
  v107 = sub_1BC8F8204();
  v108 = OUTLINED_FUNCTION_32_5();
  if (!os_log_type_enabled(v108, v109))
  {

    v118 = *(v103 + 8);
    (v118)(v105, v102);
    sub_1BC7C1744(v54, &qword_1EBCF5A20, &qword_1BC901BF0);
    goto LABEL_27;
  }

  v173 = v107;
  v198 = v106;
  OUTLINED_FUNCTION_11_2();
  v111 = swift_slowAlloc();
  OUTLINED_FUNCTION_18();
  v172 = swift_slowAlloc();
  v201[0] = v172;
  *v111 = 136446466;
  v112 = v182;
  sub_1BC7D9558(v54, v182, &qword_1EBCF5A20, &qword_1BC901BF0);
  if (__swift_getEnumTagSinglePayload(v112, 1, v102) != 1)
  {
    v113 = v193;
    v114 = v181;
    (*(v193 + 32))(v181, v112, v102);
    OUTLINED_FUNCTION_1_17();
    sub_1BC849F3C(v115, v116, MEMORY[0x1E6968FE0]);
    v117 = sub_1BC8F8A54();
    v118 = *(v113 + 8);
    (v118)(v114, v102);
    sub_1BC7C1744(v200, &qword_1EBCF5A20, &qword_1BC901BF0);
    v119 = OUTLINED_FUNCTION_97();
    sub_1BC7A9A4C(v119, v120, v121);
    OUTLINED_FUNCTION_77();

    *(v111 + 4) = v117;
    *(v111 + 12) = 2082;
    v122 = v191;
    v123 = sub_1BC8F8A54();
    v125 = v124;
    (v118)(v122, v102);
    v126 = sub_1BC7A9A4C(v123, v125, v201);

    *(v111 + 14) = v126;
    v127 = v198;
    _os_log_impl(&dword_1BC7A3000, v198, v173, "Moving incoming file from %{public}s to %{public}s", v111, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v103 = v193;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();

LABEL_27:
    v128 = [objc_opt_self() defaultManager];
    v129 = v186;
    sub_1BC7D9558(v196, v186, &qword_1EBCF5A20, &qword_1BC901BF0);
    if (__swift_getEnumTagSinglePayload(v129, 1, v102) == 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v130 = sub_1BC8F6F44();
    (v118)(v129, v102);
    v131 = v195;
    v132 = sub_1BC8F6F44();
    v201[0] = 0;
    v133 = [v128 copyItemAtURL:v130 toURL:v132 error:v201];
    v198 = v118;
    v134 = v133;

    v135 = v201[0];
    if (v134)
    {
      v136 = sub_1BC8F7FC4();
      __swift_storeEnumTagSinglePayload(v188, 1, 1, v136);
      v137 = v180;
      v138 = *(v180 + 16);
      v196 = v135;
      v200 = v88;
      v139 = v184;
      v138(v184, v199, v178);
      v174(v187, v131, v102);
      v140 = (*(v137 + 80) + 40) & ~*(v137 + 80);
      v141 = (v183 + *(v103 + 80) + v140) & ~*(v103 + 80);
      v197 = v103 + 8;
      v142 = (v24 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
      v143 = swift_allocObject();
      *(v143 + 2) = 0;
      *(v143 + 3) = 0;
      v144 = v185;
      *(v143 + 4) = v185;
      v145 = &v143[v140];
      v146 = v178;
      v175(v145, v139, v178);
      (*(v103 + 32))(&v143[v141], v187, v102);
      *&v143[v142] = v177;
      v147 = v200;
      *&v143[(v142 + 15) & 0xFFFFFFFFFFFFFFF8] = v200;

      v148 = v196;
      v149 = v144;
      v150 = v147;
      sub_1BC8333D4();

      (v198)(v195, v102);
      (*(v137 + 8))(v199, v146);
      goto LABEL_35;
    }

    v151 = v201[0];
    v152 = v102;
    v153 = sub_1BC8F6EA4();

    swift_willThrow();
    (v198)(v131, v152);
    v154 = v180;
    v155 = v194;
    sub_1BC7D9558(v196, v194, &qword_1EBCF5A20, &qword_1BC901BF0);
    OUTLINED_FUNCTION_21_10();
    v156 = sub_1BC8F7714();
    v157 = sub_1BC8F81E4();
    v158 = OUTLINED_FUNCTION_32_5();
    if (!os_log_type_enabled(v158, v159))
    {

      sub_1BC7C1744(v155, &qword_1EBCF5A20, &qword_1BC901BF0);
      goto LABEL_34;
    }

    v200 = v88;
    OUTLINED_FUNCTION_9();
    v160 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v198 = swift_slowAlloc();
    v201[0] = v198;
    *v160 = 136446210;
    v161 = v190;
    sub_1BC7D9558(v155, v190, &qword_1EBCF5A20, &qword_1BC901BF0);
    v162 = v192;
    if (__swift_getEnumTagSinglePayload(v161, 1, v192) != 1)
    {
      v163 = v193;
      v164 = v189;
      (*(v193 + 32))(v189, v161, v162);
      OUTLINED_FUNCTION_1_17();
      sub_1BC849F3C(v165, v166, MEMORY[0x1E6968FE0]);
      v167 = sub_1BC8F8A54();
      v169 = v168;
      (*(v163 + 8))(v164, v162);
      sub_1BC7C1744(v194, &qword_1EBCF5A20, &qword_1BC901BF0);
      v170 = sub_1BC7A9A4C(v167, v169, v201);

      *(v160 + 4) = v170;
      _os_log_impl(&dword_1BC7A3000, v156, v157, "Failed to move incoming file from %{public}s", v160, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v198);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

LABEL_34:
      (*(v154 + 8))(v199, v178);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1BC847B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1BC8F7914();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = sub_1BC8F7264();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC847C58, 0, 0);
}

uint64_t sub_1BC847C58()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(*(v0 + 16) + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_downloadManager);
  *(v0 + 104) = v4;

  sub_1BC8F7954();
  sub_1BC8F7934();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x1E698F3B0])
  {
LABEL_2:
    v6 = 0;
    goto LABEL_9;
  }

  if (v5 == *MEMORY[0x1E698F3C8])
  {
    v6 = 1;
  }

  else if (v5 == *MEMORY[0x1E698F3C0])
  {
    v6 = 2;
  }

  else
  {
    if (v5 != *MEMORY[0x1E698F3B8])
    {
      if (v5 != *MEMORY[0x1E698F3D0])
      {
        (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      }

      goto LABEL_2;
    }

    v6 = 3;
  }

LABEL_9:
  *(v0 + 112) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BC847DB8, v4, 0);
}

uint64_t sub_1BC847DB8()
{
  OUTLINED_FUNCTION_32();
  *(v0 + 113) = sub_1BC872FF8(*(v0 + 96), v0 + 112, v1, v2, v3) & 1;

  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC847E4C()
{
  OUTLINED_FUNCTION_5();
  if (*(v0 + 113) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = *(v0 + 40);
      if (!v2)
      {
        __break(1u);
        return result;
      }

      sub_1BC87A730(*(v0 + 16), *(v0 + 32), v2, *(v0 + 48));
      swift_unknownObjectRelease();
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_1BC84809C()
{
  OUTLINED_FUNCTION_29_0();
  v61 = v1;
  v63 = v2;
  v64 = v3;
  v5 = v4;
  v65 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v9);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  sub_1BC8F7994();
  OUTLINED_FUNCTION_0();
  v59 = v14;
  v60 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_47();
  v68 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v22 = sub_1BC8F78F4();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  v28 = v27 - v26;
  v62 = v0;
  v29 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_queue];
  *(v27 - v26) = v29;
  (*(v24 + 104))(v27 - v26, *MEMORY[0x1E69E8020], v22);
  v30 = v29;
  LOBYTE(v29) = sub_1BC8F7904();
  (*(v24 + 8))(v28, v22);
  if (v29)
  {
    v66 = v21;
    v67 = v12;
    if (qword_1EDC1E1F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_18();
  swift_once();
LABEL_3:
  v31 = sub_1BC8F7734();
  __swift_project_value_buffer(v31, qword_1EDC2B2B0);

  v32 = sub_1BC8F7714();
  v33 = sub_1BC8F8204();
  if (!OUTLINED_FUNCTION_28_7(v33))
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_11_2();
  v34 = swift_slowAlloc();
  OUTLINED_FUNCTION_18();
  v69[0] = swift_slowAlloc();
  *v34 = 136446466;
  if (!v5)
  {
LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  sub_1BC7EB6B4(v65, v5);
  v37 = sub_1BC7A9A4C(v35, v36, v69);

  *(v34 + 4) = v37;
  *(v34 + 12) = 2080;
  if (v8)
  {

    v38 = sub_1BC8F7AB4();
    v40 = sub_1BC7A9A4C(v38, v39, v69);

    *(v34 + 14) = v40;
    _os_log_impl(&dword_1BC7A3000, v32, v33, "Received pending incoming resource from %{public}s metadata %s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
LABEL_8:

    v69[5] = &type metadata for CoreImageBlurrer;
    v69[6] = &off_1F3B3D070;
    v69[0] = sub_1BC84A1CC;
    v69[1] = 0;
    v41 = v68;
    if (v8)
    {
      sub_1BC8400D8(v8, v68);
      sub_1BC849AE8(v69);
      v43 = v59;
      v42 = v60;
      v44 = *(v59 + 32);
      v45 = v66;
      v44(v66, v41, v60);
      v46 = sub_1BC8F7FC4();
      __swift_storeEnumTagSinglePayload(v67, 1, 1, v46);
      v47 = v58;
      (*(v43 + 16))(v58, v45, v42);
      v48 = (*(v43 + 80) + 40) & ~*(v43 + 80);
      v49 = (v16 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      *(v50 + 2) = 0;
      *(v50 + 3) = 0;
      v51 = v62;
      *(v50 + 4) = v62;
      v44(&v50[v48], v47, v42);
      v52 = v61;
      *&v50[v49] = v61;
      v53 = &v50[(v49 + 15) & 0xFFFFFFFFFFFFFFF8];
      v54 = v63;
      v55 = v64;
      *v53 = v63;
      v53[1] = v55;
      v56 = v52;
      v57 = v51;
      sub_1BC849C68(v54, v55);
      sub_1BC8333D4();

      (*(v43 + 8))(v66, v42);
      OUTLINED_FUNCTION_24();
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1BC848688@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x1E698F428];
  v3 = sub_1BC8F7654();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  result = sub_1BC8F7644();
  a1[3] = v3;
  a1[4] = &off_1F3B3AAF8;
  *a1 = result;
  return result;
}

uint64_t sub_1BC8486E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BC848710, 0, 0);
}

void sub_1BC848710()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1BC8487B0;
    v3 = v0[3];

    sub_1BC845A78(v3, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BC8487B0()
{
  OUTLINED_FUNCTION_5();
  *(*v0 + 64) = v1;

  v2 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1BC8488A4()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EDC2B2B0);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_28_7(v3))
  {
    v4 = *(v0 + 64);
    OUTLINED_FUNCTION_18_10();
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BC7A3000, v2, v3, "Decided to download message %{BOOL,public}d", v5, 8u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v6 = *(v0 + 40);

  if (v6)
  {
    (*(v0 + 40))(*(v0 + 64));
    v7 = *(v0 + 8);

    v7();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BC848B1C()
{
  OUTLINED_FUNCTION_29_0();
  v56 = v1;
  v53 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for VideoFileTransfer(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5CF8, &qword_1BC903B08);
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_transactionLock];

  v21 = v20;
  v22 = v0;
  v54 = v6;
  v55 = v22;
  v23 = v6;
  v24 = v4;
  sub_1BC8457D4(v21, v22, v23, v4, v19);

  v57 = v19;
  sub_1BC7D9558(v19, v16, &qword_1EBCF5CF8, &qword_1BC903B08);
  if (__swift_getEnumTagSinglePayload(v16, 1, v7) == 1)
  {
    sub_1BC7C1744(v16, &qword_1EBCF5CF8, &qword_1BC903B08);
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v25 = sub_1BC8F7734();
    __swift_project_value_buffer(v25, qword_1EDC2B2B0);
    OUTLINED_FUNCTION_77();

    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_9();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v29 = swift_slowAlloc();
    v58 = v29;
    *v28 = 136446210;
    if (v24)
    {
      v30 = v29;
      *(v28 + 4) = OUTLINED_FUNCTION_25_8();
      _os_log_impl(&dword_1BC7A3000, v26, v27, "Somehow we're sending a message that we're not tracking in our cache %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v31 = OUTLINED_FUNCTION_6_14();
      MEMORY[0x1BFB2AA50](v31);
LABEL_7:

LABEL_26:
      sub_1BC7C1744(v57, &qword_1EBCF5CF8, &qword_1BC903B08);
      OUTLINED_FUNCTION_24();
      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1BC849EE0(v16, v11);
  v32 = v56;
  if (v56)
  {
    v33 = v56;
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_0_18();
      swift_once();
    }

    v34 = sub_1BC8F7734();
    __swift_project_value_buffer(v34, qword_1EDC2B2B0);
    OUTLINED_FUNCTION_77();

    v35 = v32;
    v36 = sub_1BC8F7714();
    v37 = sub_1BC8F81E4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_10();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v38 = 67240706;
      *(v38 + 4) = v53 & 1;
      *(v38 + 8) = 2082;

      if (!v24)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      *(v38 + 10) = OUTLINED_FUNCTION_25_8();
      *(v38 + 18) = 2114;
      v41 = v32;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 20) = v42;
      *v39 = v42;
      _os_log_impl(&dword_1BC7A3000, v36, v37, "Finished sending %{BOOL,public}d asset with identifier %{public}s with error: %{public}@ ", v38, 0x1Cu);
      sub_1BC7C1744(v39, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {
    }

    v51 = v55;
    sub_1BC845860();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BC88EDF8(v51, v11);
      swift_unknownObjectRelease();
    }

LABEL_25:
    sub_1BC84950C(v11);
    goto LABEL_26;
  }

  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_0_18();
    swift_once();
  }

  v43 = sub_1BC8F7734();
  __swift_project_value_buffer(v43, qword_1EDC2B2B0);
  OUTLINED_FUNCTION_77();

  v44 = sub_1BC8F7714();
  v45 = sub_1BC8F8204();

  if (!os_log_type_enabled(v44, v45))
  {
LABEL_19:

    v50 = v55;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BC88E8F0(v50, v11);
      swift_unknownObjectRelease();
    }

    goto LABEL_25;
  }

  v46 = swift_slowAlloc();
  OUTLINED_FUNCTION_8_2();
  v47 = swift_slowAlloc();
  v58 = v47;
  *v46 = 67240450;
  *(v46 + 4) = v53 & 1;
  *(v46 + 8) = 2082;
  if (v24)
  {
    v48 = v47;
    *(v46 + 10) = OUTLINED_FUNCTION_25_8();
    _os_log_impl(&dword_1BC7A3000, v44, v45, "Finished sending %{BOOL,public}d asset with identifier %{public}s", v46, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v49 = OUTLINED_FUNCTION_6_14();
    MEMORY[0x1BFB2AA50](v49);
    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1BC8490B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v6 = result;
    v8 = OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_transactionMap;
    swift_beginAccess();
    v9 = sub_1BC803CBC(a2, a3);
    if (v10)
    {
      v11 = v9;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v6 + v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D00, &qword_1BC903B10);
      sub_1BC8F8734();

      v12 = *(v17 + 56);
      v13 = type metadata accessor for VideoFileTransfer(0);
      sub_1BC849EE0(v12 + *(*(v13 - 8) + 72) * v11, a4);
      sub_1BC8F8754();
      *(v6 + v8) = v17;
      v14 = a4;
      v15 = 0;
      v16 = v13;
    }

    else
    {
      v16 = type metadata accessor for VideoFileTransfer(0);
      v14 = a4;
      v15 = 1;
    }

    __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for VideoFileTransfer(uint64_t a1)
{
  result = qword_1EDC1EFB0;
  if (!qword_1EDC1EFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC849388(uint64_t a1)
{
  result = sub_1BC8F7994();
  if (v2 <= 0x3F)
  {
    result = sub_1BC8F7014();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BC849454()
{
  result = qword_1EBCF5CA8;
  if (!qword_1EBCF5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5CA8);
  }

  return result;
}

uint64_t sub_1BC8494A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoFileTransfer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC84950C(uint64_t a1)
{
  v2 = type metadata accessor for VideoFileTransfer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BC849568(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BC8F7BE4();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
    sub_1BC7F0E58(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E50, &qword_1BC8FE850);
  sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    return v8;
  }

  return a3;
}

id sub_1BC84966C(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v4 = sub_1BC8F7BE4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 initWithService_];

  return v5;
}

uint64_t sub_1BC8496F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC83C928();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D10, &qword_1BC903558);
    OUTLINED_FUNCTION_42_6(v6);
    v7 = *(v19 + 48);
    v8 = sub_1BC8F7264();
    OUTLINED_FUNCTION_4_1();
    (*(v9 + 8))(v7 + *(v9 + 72) * v5, v8);
    v10 = *(v19 + 56);
    v11 = type metadata accessor for TrackedOutgoingMessage(0);
    OUTLINED_FUNCTION_4_1();
    sub_1BC849EE0(v10 + *(v12 + 72) * v5, a1);
    OUTLINED_FUNCTION_8_18();
    sub_1BC849F3C(v13, v14, MEMORY[0x1E69695B8]);
    sub_1BC8F8754();
    *v1 = v19;
    v15 = a1;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v17 = type metadata accessor for TrackedOutgoingMessage(0);
    v15 = a1;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_1BC849870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1BC803CBC(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D00, &qword_1BC903B10);
    sub_1BC8F8734();

    v8 = *(v14 + 56);
    v9 = type metadata accessor for VideoFileTransfer(0);
    sub_1BC849EE0(v8 + *(*(v9 - 8) + 72) * v7, a3);
    sub_1BC8F8754();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for VideoFileTransfer(0);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1BC8499B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC83C928();
  if (v4)
  {
    v5 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B50, &qword_1BC903550);
    OUTLINED_FUNCTION_42_6(v6);
    v7 = *(v12 + 48);
    v8 = sub_1BC8F7264();
    OUTLINED_FUNCTION_4_1();
    (*(v9 + 8))(v7 + *(v9 + 72) * v5, v8);
    *a1 = *(*(v12 + 56) + v5);
    OUTLINED_FUNCTION_8_18();
    sub_1BC849F3C(v10, v11, MEMORY[0x1E69695B8]);
    result = sub_1BC8F8754();
    *v1 = v12;
  }

  else
  {
    *a1 = 4;
  }

  return result;
}

uint64_t sub_1BC849B3C()
{
  v2 = sub_1BC8F7994();
  OUTLINED_FUNCTION_26(v2);
  OUTLINED_FUNCTION_14_12();
  v4 = *(v0 + v3);
  v5 = *(v0 + 32);
  v7 = *(v0 + v6);
  v8 = *(v0 + v6 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1BC84A1D0;
  v10 = OUTLINED_FUNCTION_31_6();

  return sub_1BC8486E8(v10, v11, v12, v5, v13, v4, v7, v8);
}

uint64_t sub_1BC849C68(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC849C78()
{
  v2 = sub_1BC8F7994();
  OUTLINED_FUNCTION_26(v2);
  v3 = sub_1BC8F7014();
  OUTLINED_FUNCTION_26(v3);
  OUTLINED_FUNCTION_14_12();
  v4 = *(v0 + 32);
  v6 = *(v0 + v5);
  v8 = *(v0 + v7);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1BC849DF0;
  v10 = OUTLINED_FUNCTION_31_6();

  return sub_1BC847B34(v10, v11, v12, v4, v13, v14, v6, v8);
}

uint64_t sub_1BC849DF0()
{
  OUTLINED_FUNCTION_5();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BC849EE0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_7();
  v5(v4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1BC849F3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC849F84()
{
  result = qword_1EDC20680;
  if (!qword_1EDC20680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5AE0, &qword_1BC9034B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoFileTransfer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC84A0C8()
{
  result = qword_1EBCF5D20;
  if (!qword_1EBCF5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5D20);
  }

  return result;
}

unint64_t sub_1BC84A120()
{
  result = qword_1EBCF5D28;
  if (!qword_1EBCF5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5D28);
  }

  return result;
}

unint64_t sub_1BC84A178()
{
  result = qword_1EBCF5D30;
  if (!qword_1EBCF5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5D30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1BC8F89F4();
}

unint64_t sub_1BC84A1F4(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 6:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

void *MessageStoreController.__allocating_init()()
{
  type metadata accessor for MessageStoreClient();
  swift_allocObject();
  v0 = sub_1BC7A5BC0();

  return sub_1BC7A6D8C(v0);
}

uint64_t static MessageStoreController.shared.getter()
{
  if (qword_1EDC20D78 != -1)
  {
    swift_once();
  }
}

void sub_1BC84A348(void *a1)
{
  v3 = *(v1 + 64);
  os_unfair_lock_lock(v3 + 4);
  sub_1BC8507C8();
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1BC84A3B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = a2;
  v3 = a2;
}

uint64_t MessageStoreController.delegate.setter(uint64_t result)
{
  if (result)
  {
    swift_getObjectType();
    v1 = OUTLINED_FUNCTION_26_7();
    sub_1BC850434(v1, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *(*MessageStoreController.delegate.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = 0;
  a1[1] = v1;
  return sub_1BC84A494;
}

uint64_t *sub_1BC84A494(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v3 = result[1];
      swift_getObjectType();
      v4 = swift_unknownObjectRetain();
      sub_1BC850434(v4, v3);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    swift_getObjectType();
    v5 = OUTLINED_FUNCTION_26_7();
    sub_1BC850434(v5, v6);
  }

  return swift_unknownObjectRelease();
}

void MessageStoreController.removeDelegate(_:)()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC7A9F90();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1BC84A598(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = sub_1BC850208((a1 + 80), a2);
  if (!v2)
  {
    v6 = *(*(a1 + 80) + 16);
    if (v6 >= v5)
    {
      sub_1BC8B2160(v5, v6);
      return swift_endAccess();
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t MessageStoreController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t MessageStoreController.__deallocating_deinit()
{
  MessageStoreController.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1BC84A6C0()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  *(v0 + 16) = xmmword_1BC901350;
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_1BC84A7EC;
  v11 = OUTLINED_FUNCTION_14();

  return MessageStoreController.getMessages(query:pageSize:page:)(v11, 0x7FFFFFFFFFFFFFFFLL, 0);
}

uint64_t sub_1BC84A7EC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_18();
  v4 = v3;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  v4[6] = v1;

  sub_1BC80157C(v4[2], v4[3]);
  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_96();

    return v11(v0);
  }
}

uint64_t MessageStoreController.getMessages(query:pageSize:page:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 64) = *a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84A93C()
{
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = OUTLINED_FUNCTION_27_0();
  sub_1BC80156C(v2, v3);
  v4 = sub_1BC8F7714();
  sub_1BC8F8204();
  v5 = OUTLINED_FUNCTION_27_0();
  sub_1BC80157C(v5, v6);
  if (OUTLINED_FUNCTION_49_3())
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    OUTLINED_FUNCTION_9();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v22 = swift_slowAlloc();
    *v9 = 136446210;
    v10 = sub_1BC80156C(v8, v7);
    SortedMessageStoreQuery.description.getter(v10);
    sub_1BC80157C(v8, v7);
    v11 = OUTLINED_FUNCTION_8_1();
    v14 = sub_1BC7A9A4C(v11, v12, v13);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = 0;
  v20 = swift_task_alloc();
  *(v0 + 80) = v20;
  *v20 = v0;
  v20[1] = sub_1BC84AB18;

  return MessageStoreController.getMessages(query:options:pageSize:page:)();
}

uint64_t sub_1BC84AB18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_18();
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v7 + 88) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_96();

    return v11(v0);
  }
}

uint64_t MessageStoreController.getMessages(providers:types:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84AC70()
{
  OUTLINED_FUNCTION_71();
  v32 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);

  v2 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = swift_slowAlloc();
    v31 = OUTLINED_FUNCTION_15_11();
    *v5 = 136446466;
    v6 = MEMORY[0x1BFB29280](v4, &type metadata for MessageStoreProvider);
    v8 = sub_1BC7A9A4C(v6, v7, &v31);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = MEMORY[0x1BFB29280](v3, &type metadata for MessageType);
    v11 = sub_1BC7A9A4C(v9, v10, &v31);

    *(v5 + 14) = v11;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v17 = v0[4];
  v18 = v0[5];
  OUTLINED_FUNCTION_21_4();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = v19 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v22 = v21 | 0x6000000000000000;
  OUTLINED_FUNCTION_21_4();
  v23 = swift_allocObject();
  v0[7] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BC8FEAA0;
  *(v24 + 32) = v20;
  *(v24 + 40) = v22;
  *(v23 + 16) = v24;
  v0[2] = v23 | 0xC000000000000000;
  v0[3] = 0;

  v25 = swift_task_alloc();
  v0[8] = v25;
  *v25 = v0;
  v25[1] = sub_1BC84AF14;
  OUTLINED_FUNCTION_111();

  return MessageStoreController.getMessages(query:pageSize:page:)(v26, v27, v28);
}

uint64_t sub_1BC84AF14()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v5[9] = v0;

  if (!v0)
  {
    v5[10] = v3;
  }

  sub_1BC80157C(v5[2], v5[3]);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC84B030()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_96();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1BC84B090()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t MessageStoreController.getMessages(recordUUIDs:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84B100()
{
  OUTLINED_FUNCTION_71();
  v23 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);

  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_42_7();

  if (OUTLINED_FUNCTION_37_8())
  {
    v3 = v0[4];
    OUTLINED_FUNCTION_9();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136446210;
    v6 = sub_1BC8F7264();
    v7 = MEMORY[0x1BFB29280](v3, v6);
    v9 = sub_1BC7A9A4C(v7, v8, &v22);

    *(v4 + 4) = v9;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  OUTLINED_FUNCTION_21_4();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_41_9(v15);
  v0[3] = 0;

  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1BC84B2C8;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_48_4();

  return MessageStoreController.getMessages(query:pageSize:page:)(v17, v18, v19);
}

uint64_t sub_1BC84B2C8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_18();
  v4 = v3;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  v4[7] = v1;

  sub_1BC80157C(v4[2], v4[3]);
  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_96();

    return v11(v0);
  }
}

uint64_t MessageStoreController.getMessages(query:options:pageSize:page:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  *(v1 + 32) = v6;
  *(v1 + 40) = v0;
  *(v1 + 24) = v7;
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  *(v1 + 48) = Request;
  OUTLINED_FUNCTION_25(Request);
  *(v1 + 56) = OUTLINED_FUNCTION_38_6();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = *v5;
  *(v1 + 88) = *v3;
  v9 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC84B4A4()
{
  v41 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = OUTLINED_FUNCTION_27_0();
  sub_1BC80156C(v2, v3);
  v4 = sub_1BC8F7714();
  sub_1BC8F8204();
  v5 = OUTLINED_FUNCTION_27_0();
  sub_1BC80157C(v5, v6);
  if (OUTLINED_FUNCTION_49_3())
  {
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v38 = OUTLINED_FUNCTION_15_11();
    v39 = v9;
    *v10 = 136446466;
    v40 = v7;
    v11 = sub_1BC80156C(v9, v7);
    SortedMessageStoreQuery.description.getter(v11);
    sub_1BC80157C(v39, v7);
    v12 = OUTLINED_FUNCTION_8_1();
    v15 = sub_1BC7A9A4C(v12, v13, v14);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v0[2] = v8;
    v16 = sub_1BC8F7C94();
    v18 = sub_1BC7A9A4C(v16, v17, &v38);

    *(v10 + 14) = v18;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v24 = v0[10];
  v25 = v0[11];
  v26 = v0[8];
  v28 = v0[6];
  v27 = v0[7];
  v30 = v0[3];
  v29 = v0[4];
  if ((v24 & 4) != 0)
  {
    v31 = v24 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v31 = v0[9];
  }

  if ((v24 & 4) != 0)
  {
    v32 = v0[9] & 0x1FF;
  }

  else
  {
    v32 = 512;
  }

  sub_1BC7A5AB4(v31);
  sub_1BC8F7254();
  *(v27 + v28[5]) = v31;
  *(v27 + v28[6]) = v32;
  *(v27 + v28[7]) = v25;
  v33 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v34 = (v27 + v28[8]);
  *v34 = v33;
  v34[1] = v35;
  *(v27 + v28[9]) = v30;
  *(v27 + v28[10]) = v29;
  sub_1BC7B9D48(v27, v26);
  v36 = swift_task_alloc();
  v0[12] = v36;
  *v36 = v0;
  v36[1] = sub_1BC84B744;

  return MessageStoreController.getMessages(fetchRequest:)();
}

uint64_t sub_1BC84B744()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;
  *(v5 + 104) = v0;

  v8 = *(v4 + 64);
  if (v0)
  {
    sub_1BC7ADC24(v8);
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1BC7ADC24(v8);

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1BC84B8C8()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC84B92C(uint64_t a1)
{
  v33 = v1;
  v2 = v1[17];
  v3 = v1[11];
  v4 = v1[7];
  v5 = v1[5];
  sub_1BC8F71D4();
  sub_1BC8F7164();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_69();
  v6(v7);
  sub_1BC7AB2C0(v5, v4);
  v8 = v2;
  v9 = sub_1BC8F7714();
  v10 = sub_1BC8F8204();

  if (os_log_type_enabled(v9, v10))
  {
    v31 = v1[17];
    v11 = v1[7];
    OUTLINED_FUNCTION_8_2();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = OUTLINED_FUNCTION_15_11();
    *v12 = 136446722;
    sub_1BC8F7264();
    sub_1BC7C0EA4();
    v14 = sub_1BC8F8A54();
    v15 = v6;
    v17 = v16;
    sub_1BC7ADC24(v11);
    v18 = sub_1BC7A9A4C(v14, v17, v32);
    v6 = v15;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E63B0];
    *(v19 + 16) = xmmword_1BC8FC230;
    v21 = OUTLINED_FUNCTION_34_7(v19, v20);
    v23 = sub_1BC7A9A4C(v21, v22, v32);

    *(v12 + 14) = v23;
    *(v12 + 22) = 2114;
    v24 = v31;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v25;
    *v13 = v25;
    _os_log_impl(&dword_1BC7A3000, v9, v10, "Fetch request with id %{public}s failed after %{public}ss. Error: %{public}@", v12, 0x20u);
    sub_1BC8504B8(v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
    v26 = v1[7];

    sub_1BC7ADC24(v26);
  }

  v27 = v1[13];
  v28 = v1[10];
  swift_willThrow();
  (v6)(v27, v28);

  OUTLINED_FUNCTION_27();

  return v29();
}

uint64_t sub_1BC84BC18(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D40, &unk_1BC903DD0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  v13 = a1;
  v14 = a2;
  v15 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8790], v5);
  return sub_1BC8F80A4();
}

uint64_t sub_1BC84BD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  v7 = *(Request - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Request - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v18 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a1, v10);
  sub_1BC7AB2C0(a2, v9);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v11 + 32))(v22 + v19, v14, v10);
  sub_1BC7B9D48(v9, v22 + v20);
  v23 = v26;
  *(v22 + v21) = v25;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  sub_1BC8333D4();
}

uint64_t sub_1BC84BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D50, &unk_1BC903E00);
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = type metadata accessor for MessageStoreFetchRequest(0);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC84C0DC, 0, 0);
}

uint64_t sub_1BC84C0DC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 56);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = v3[5];
  v5 = *(v1 + v3[6]);
  *(v0 + 192) = v5;
  v6 = *(v1 + v3[7]);
  *(v0 + 128) = v6;
  v7 = (v1 + v3[8]);
  v8 = *(v1 + v4);
  *(v0 + 136) = v8;
  *(v0 + 144) = *v7;
  v9 = v7[1];
  *(v0 + 152) = v9;
  *(v0 + 160) = 0;
  sub_1BC7A5AB4(v8);

  sub_1BC8F7254();
  *(v2 + v3[5]) = v8;
  *(v2 + v3[6]) = v5;
  *(v2 + v3[7]) = v6;
  if (v9)
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
  }

  else
  {
    v10 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  }

  OUTLINED_FUNCTION_19_12(v10, v11);
  *(v12 + v13) = 0;
  sub_1BC7B9D48(v12, v14);
  v15 = swift_task_alloc();
  *(v0 + 168) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_11_12(v15);

  return MessageStoreController.getMessages(fetchRequest:)();
}

uint64_t sub_1BC84C204()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC84C308()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 176);
  *(v0 + 32) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  sub_1BC8F8064();
  v2 = OUTLINED_FUNCTION_69();
  v3(v2);
  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_1BC7ADC24(*(v0 + 120));

LABEL_14:
    *(v0 + 40) = 0;
    sub_1BC8F8074();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_111();

    __asm { BRAA            X1, X16 }
  }

  if (!sub_1BC8F8504())
  {
    goto LABEL_13;
  }

  v4 = sub_1BC8F8504();
LABEL_3:
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);

  result = sub_1BC7ADC24(v5);
  if (v4 != v6)
  {
    goto LABEL_14;
  }

  v8 = *(v0 + 160);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 160) = v9;
    v10 = *(v0 + 152);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 192);
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    sub_1BC7A5AB4(v11);

    sub_1BC8F7254();
    *(v14 + v15[5]) = v11;
    *(v14 + v15[6]) = v13;
    *(v14 + v15[7]) = v12;
    if (v10)
    {
      v16 = *(v0 + 144);
      v17 = *(v0 + 152);
    }

    else
    {
      v16 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    }

    OUTLINED_FUNCTION_19_12(v16, v17);
    *(v18 + v19) = v9;
    sub_1BC7B9D48(v18, v20);
    v21 = swift_task_alloc();
    *(v0 + 168) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_11_12(v21);
    OUTLINED_FUNCTION_111();

    return MessageStoreController.getMessages(fetchRequest:)();
  }

  return result;
}

uint64_t sub_1BC84C544()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = v1[23];
  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B390);
  v4 = v2;
  v5 = sub_1BC8F7714();
  sub_1BC8F81E4();

  if (os_log_type_enabled(v5, v0))
  {
    v6 = v1[23];
    OUTLINED_FUNCTION_9();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BC7A3000, v5, v0, "Error fetching messages: %{public}@", v7, 0xCu);
    sub_1BC8504B8(v8);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v11 = v1[23];
  v12 = v1[15];

  v1[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  sub_1BC8F8074();
  sub_1BC7ADC24(v12);
  v1[3] = 0;
  sub_1BC8F8074();

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t MessageStoreController.saveMessage(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84C718()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B390);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v5 = v0[5];
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BC8504B8(v7);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = v0[6];

  OUTLINED_FUNCTION_19_10(v14 + 16);
  OUTLINED_FUNCTION_50_3();
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_8_4(v15);

  return sub_1BC8085B0(v16);
}

uint64_t MessageStoreController.markMessagesAsRead(messageUUIDs:)()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v3);
  v1[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v4);
  v1[5] = OUTLINED_FUNCTION_38_6();
  v1[6] = swift_task_alloc();
  v5 = sub_1BC8F7264();
  v1[7] = v5;
  OUTLINED_FUNCTION_26(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_38_6();
  v1[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC84C9B4()
{
  v44 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);

  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_42_7();

  if (OUTLINED_FUNCTION_37_8())
  {
    OUTLINED_FUNCTION_9();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v4 = swift_slowAlloc();
    v42[0] = v4;
    *v3 = 136446210;
    v5 = OUTLINED_FUNCTION_27_0();
    v6 = MEMORY[0x1BFB29280](v5);
    v8 = sub_1BC7A9A4C(v6, v7, v42);

    *(v3 + 4) = v8;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = v0[2];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = v0[8];
    v42[0] = MEMORY[0x1E69E7CC0];
    sub_1BC8F8684();
    v18 = *(v17 + 16);
    v17 += 16;
    v19 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v37 = *(v17 + 56);
    v38 = v18;
    v39 = v17;
    v36 = v17 - 8;
    do
    {
      v21 = v0[9];
      v20 = v0[10];
      v23 = v0[6];
      v22 = v0[7];
      v24 = v15;
      v25 = v0[5];
      v40 = v0[4];
      v38(v20, v19, v22);
      v38(v21, v20, v22);
      OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_46_6();
      v26 = sub_1BC8F7014();
      __swift_storeEnumTagSinglePayload(v40, 1, 1, v26);
      v27 = objc_allocWithZone(type metadata accessor for MessageUpdate(0));
      LOBYTE(v34) = 0;
      BYTE4(v33) = 2;
      LODWORD(v33) = 0x10000;
      HIDWORD(v32) = 0x10000;
      LOBYTE(v32) = 1;
      MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)(v21, v23, v25, 0, 0, 0, 1, 1, 0, v32, 0, 0, v33, v40, 0, 0, v34, v35, v36, v37, v38, v39, SWORD1(v39), SWORD2(v39), SBYTE6(v39), v40, v41, v42[0], SBYTE2(v42[0]), SBYTE3(v42[0]), BYTE4(v42[0]), v42[1], v42[2], v42[3], v43);
      v28 = OUTLINED_FUNCTION_69();
      v29(v28);
      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v19 += v37;
      v15 = v24 - 1;
    }

    while (v24 != 1);
    v16 = v42[0];
  }

  v0[11] = v16;
  v30 = swift_task_alloc();
  v0[12] = v30;
  *v30 = v0;
  v30[1] = sub_1BC84CCFC;

  return MessageStoreController.updateMessages(_:)();
}

uint64_t sub_1BC84CCFC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC84CDF8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_45_6();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_1BC84CE84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_45_6();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t MessageStoreController.updateMessages(_:)()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1BC8F7264();
  v1[7] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1BC84CFC0()
{
  v39 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);

  v2 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_49_3())
  {
    v3 = v0[5];
    OUTLINED_FUNCTION_9();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v5 = swift_slowAlloc();
    v37 = v5;
    *v4 = 136446210;
    v6 = sub_1BC7C0454(v3);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v8 = v6;
      v38 = MEMORY[0x1E69E7CC0];
      sub_1BC7DDB5C(0, v6 & ~(v6 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        return;
      }

      v32 = v5;
      v33 = v4;
      v34 = v2;
      v9 = 0;
      v10 = v0[8];
      v11 = v0[5];
      v7 = v38;
      v12 = (v10 + 16);
      v35 = v11 + 32;
      v36 = v11 & 0xC000000000000001;
      do
      {
        v13 = v8;
        v14 = v0[9];
        v15 = v0[7];
        if (v36)
        {
          v16 = MEMORY[0x1BFB29A00](v9, v0[5]);
          (*v12)(v14, v16 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v15);
          swift_unknownObjectRelease();
        }

        else
        {
          (*v12)(v14, *(v35 + 8 * v9) + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v15);
        }

        v38 = v7;
        v18 = *(v7 + 16);
        v17 = *(v7 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1BC7DDB5C(v17 > 1, v18 + 1, 1);
          v7 = v38;
        }

        v19 = v0[9];
        v20 = v0[7];
        ++v9;
        *(v7 + 16) = v18 + 1;
        (*(v10 + 32))(v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v19, v20);
        v8 = v13;
      }

      while (v13 != v9);
      v2 = v34;
      v5 = v32;
      v4 = v33;
    }

    v21 = MEMORY[0x1BFB29280](v7, v0[7]);
    v23 = v22;

    v24 = sub_1BC7A9A4C(v21, v23, &v37);

    *(v4 + 4) = v24;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  OUTLINED_FUNCTION_19_10(v0[6] + 16);
  OUTLINED_FUNCTION_16_10();
  v30 = swift_task_alloc();
  v0[10] = v30;
  *v30 = v0;
  v31 = OUTLINED_FUNCTION_8_4(v30);

  sub_1BC808CD0(v31);
}

uint64_t sub_1BC84D2FC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t MessageStoreController.deleteMessages(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84D40C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_21_4();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_41_9(v1);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1BC809108;
  v3 = OUTLINED_FUNCTION_14();

  return MessageStoreController.deleteMessages(query:)(v3);
}

uint64_t MessageStoreController.deleteMessages(query:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84D69C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t MessageStoreController.saveMessagesToPhotoLibrary(messageUUIDs:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC84D7EC()
{
  OUTLINED_FUNCTION_71();
  v23 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);

  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_42_7();

  if (OUTLINED_FUNCTION_37_8())
  {
    v3 = v0[5];
    OUTLINED_FUNCTION_9();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136446210;
    v6 = sub_1BC8F7264();
    v7 = MEMORY[0x1BFB29280](v3, v6);
    v9 = sub_1BC7A9A4C(v7, v8, &v22);

    *(v4 + 4) = v9;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v15 = v0[6];
  v0[7] = *(v0[5] + 16);
  OUTLINED_FUNCTION_19_10(v15 + 16);
  v0[8] = 0;
  if (!v0[7])
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_48_4();

    __asm { BRAA            X1, X16 }
  }

  v16 = sub_1BC8F7264();
  OUTLINED_FUNCTION_25(v16);
  OUTLINED_FUNCTION_16_10();
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_1BC84DA14;
  OUTLINED_FUNCTION_48_4();

  return sub_1BC80889C();
}

uint64_t sub_1BC84DA14()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1BC84DB2C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[7];
  v2 = v0[8] + 1;
  v0[8] = v2;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_11();

    return v3();
  }

  else
  {
    v5 = v0[6];
    v6 = sub_1BC8F7264();
    OUTLINED_FUNCTION_26(v6);
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1BC84DA14;
    OUTLINED_FUNCTION_14();

    return sub_1BC80889C();
  }
}

uint64_t sub_1BC84DC7C()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v10 = *(v0 + 40);

  OUTLINED_FUNCTION_19_10(v10 + 16);
  OUTLINED_FUNCTION_50_3();
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_1BC834FA4;

  return sub_1BC80924C();
}

uint64_t sub_1BC84DDB4()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_1BC84DEC8;

  return MessageStoreController.getAccountInfo()();
}

uint64_t sub_1BC84DEC8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_18();
  v4 = v3;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_43_5();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1BC84DFF0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);
  v2 = *&v1[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_accountStatus];

  OUTLINED_FUNCTION_96();

  return v3(v2);
}

uint64_t sub_1BC84E074()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B390);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v10 = *(v0 + 16);

  if (*(v10 + 56))
  {
    OUTLINED_FUNCTION_27();
    v16 = v11;
    v13 = v12;

    return v16(v13);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 24) = v15;
    *v15 = v0;
    v15[1] = sub_1BC84E1D4;

    return sub_1BC84E2BC();
  }
}

uint64_t sub_1BC84E1D4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_18();
  v3 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_96();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1BC84E2DC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_19_10(*(v0 + 40) + 16);
  OUTLINED_FUNCTION_16_10();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1BC84E374;

  return sub_1BC8094EC();
}

uint64_t sub_1BC84E374()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_18();
  v4 = v3;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 56) = v0;
    v10 = OUTLINED_FUNCTION_43_5();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1BC84E49C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);
  v2 = v1;
  sub_1BC84A348(v1);
  OUTLINED_FUNCTION_96();
  v4 = *(v0 + 56);

  return v3(v4);
}

uint64_t MessageStoreController.reportTranscriptionAccuracy(for:wasAccurate:)()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 88) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v0;
  v4 = sub_1BC8F7264();
  *(v1 + 56) = v4;
  OUTLINED_FUNCTION_26(v4);
  *(v1 + 64) = v5;
  *(v1 + 72) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC84E5B8()
{
  v21 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B390);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();
  if (os_log_type_enabled(v6, v7))
  {
    v19 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_15_11();
    *v8 = 136446722;
    *(v8 + 4) = sub_1BC7A9A4C(0xD00000000000002DLL, 0x80000001BC90C250, &v20);
    *(v8 + 12) = 2082;
    sub_1BC7C0EA4();
    v9 = sub_1BC8F8A54();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_8_1();
    v13(v12);
    v14 = sub_1BC7A9A4C(v9, v11, &v20);

    *(v8 + 14) = v14;
    *(v8 + 22) = 1026;
    *(v8 + 24) = v19;
    _os_log_impl(&dword_1BC7A3000, v6, v7, "%{public}s: %{public}s wasAccurate: %{BOOL,public}d", v8, 0x1Cu);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v15 = OUTLINED_FUNCTION_8_1();
    v16(v15);
  }

  OUTLINED_FUNCTION_19_10(*(v0 + 48) + 16);
  OUTLINED_FUNCTION_16_10();
  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_1BC85077C;

  return sub_1BC809778();
}

uint64_t MessageStoreController.getDatabaseURL()()
{
  v1 = v0;
  if (qword_1EDC20720 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B390);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000010, 0x80000001BC90C230, v8);
    _os_log_impl(&dword_1BC7A3000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  return sub_1BC809B18();
}

double sub_1BC84E998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  os_unfair_lock_lock(v5 + 4);
  sub_1BC8507B0(&v34, v6);
  os_unfair_lock_unlock(v5 + 4);
  v7 = *(v34 + 16);
  if (v7)
  {
    v8 = v34 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v10 = qword_1EDC2B390;
    v11 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v8, &v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v14 = sub_1BC8F7734();
        __swift_project_value_buffer(v14, v10);

        v15 = sub_1BC8F7714();
        v16 = sub_1BC8F8204();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33[0] = v32;
          *v17 = 136446466;
          *(v17 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, v33);
          *(v17 + 12) = 2080;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
          v18 = sub_1BC8F7C94();
          v30 = v16;
          v31 = v13;
          v20 = v15;
          v21 = v11;
          v22 = v10;
          v23 = a3;
          v24 = a2;
          v25 = sub_1BC7A9A4C(v18, v19, v33);

          *(v17 + 14) = v25;
          a2 = v24;
          a3 = v23;
          v10 = v22;
          v11 = v21;
          v26 = v20;
          v13 = v31;
          _os_log_impl(&dword_1BC7A3000, v26, v30, "Callback from daemon to delegate %{public}s - added messages %s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB2AA50](v32, -1, -1);
          v27 = v17;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v27, -1, -1);
        }

        else
        {
        }

        type metadata accessor for Message(0);
        v28 = sub_1BC8F7E34();
        [v13 v11[160]];
        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v34);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
  }

  return result;
}

double sub_1BC84EC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  os_unfair_lock_lock(v5 + 4);
  sub_1BC8507B0(&v34, v6);
  os_unfair_lock_unlock(v5 + 4);
  v7 = *(v34 + 16);
  if (v7)
  {
    v8 = v34 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v10 = qword_1EDC2B390;
    v11 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v8, &v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v14 = sub_1BC8F7734();
        __swift_project_value_buffer(v14, v10);

        v15 = sub_1BC8F7714();
        v16 = sub_1BC8F8204();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33[0] = v32;
          *v17 = 136446466;
          *(v17 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, v33);
          *(v17 + 12) = 2080;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
          v18 = sub_1BC8F7C94();
          v30 = v16;
          v31 = v13;
          v20 = v15;
          v21 = v11;
          v22 = v10;
          v23 = a3;
          v24 = a2;
          v25 = sub_1BC7A9A4C(v18, v19, v33);

          *(v17 + 14) = v25;
          a2 = v24;
          a3 = v23;
          v10 = v22;
          v11 = v21;
          v26 = v20;
          v13 = v31;
          _os_log_impl(&dword_1BC7A3000, v26, v30, "Callback from daemon to delegate %{public}s - updated messages %s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB2AA50](v32, -1, -1);
          v27 = v17;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v27, -1, -1);
        }

        else
        {
        }

        type metadata accessor for Message(0);
        v28 = sub_1BC8F7E34();
        [v13 v11[159]];
        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v34);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
  }

  return result;
}

double sub_1BC84EF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  os_unfair_lock_lock(v5 + 4);
  sub_1BC8507B0(&v34, v6);
  os_unfair_lock_unlock(v5 + 4);
  v7 = *(v34 + 16);
  if (v7)
  {
    v8 = v34 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v10 = qword_1EDC2B390;
    v11 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v8, &v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v14 = sub_1BC8F7734();
        __swift_project_value_buffer(v14, v10);

        v15 = sub_1BC8F7714();
        v16 = sub_1BC8F8204();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33[0] = v32;
          *v17 = 136446466;
          *(v17 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, v33);
          *(v17 + 12) = 2080;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
          v18 = sub_1BC8F7C94();
          v30 = v16;
          v31 = v13;
          v20 = v15;
          v21 = v11;
          v22 = v10;
          v23 = a3;
          v24 = a2;
          v25 = sub_1BC7A9A4C(v18, v19, v33);

          *(v17 + 14) = v25;
          a2 = v24;
          a3 = v23;
          v10 = v22;
          v11 = v21;
          v26 = v20;
          v13 = v31;
          _os_log_impl(&dword_1BC7A3000, v26, v30, "Callback from daemon to delegate %{public}s - deleted messages %s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB2AA50](v32, -1, -1);
          v27 = v17;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v27, -1, -1);
        }

        else
        {
        }

        type metadata accessor for Message(0);
        v28 = sub_1BC8F7E34();
        [v13 v11[276]];
        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v34);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
  }

  return result;
}

double sub_1BC84F298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  os_unfair_lock_lock(v5 + 4);
  sub_1BC8507B0(&v34, v6);
  os_unfair_lock_unlock(v5 + 4);
  v7 = *(v34 + 16);
  if (v7)
  {
    v8 = v34 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    v10 = qword_1EDC2B390;
    v11 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v8, &v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v14 = sub_1BC8F7734();
        __swift_project_value_buffer(v14, v10);

        v15 = sub_1BC8F7714();
        v16 = sub_1BC8F8204();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33[0] = v32;
          *v17 = 136446466;
          *(v17 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, v33);
          *(v17 + 12) = 2082;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
          v18 = sub_1BC8F7C94();
          v30 = v16;
          v31 = v13;
          v20 = v15;
          v21 = v11;
          v22 = v10;
          v23 = a3;
          v24 = a2;
          v25 = sub_1BC7A9A4C(v18, v19, v33);

          *(v17 + 14) = v25;
          a2 = v24;
          a3 = v23;
          v10 = v22;
          v11 = v21;
          v26 = v20;
          v13 = v31;
          _os_log_impl(&dword_1BC7A3000, v26, v30, "Callback from daemon to delegate %{public}s - deleted messages %{public}s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB2AA50](v32, -1, -1);
          v27 = v17;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v27, -1, -1);
        }

        else
        {
        }

        sub_1BC8F7264();
        v28 = sub_1BC8F7E34();
        [v13 v11[158]];
        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v34);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
  }

  return result;
}

void sub_1BC84F598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 72);
  os_unfair_lock_lock(v4 + 4);
  sub_1BC8507B0(&v23, v5);
  os_unfair_lock_unlock(v4 + 4);
  v6 = *(v23 + 16);
  if (v6)
  {
    v7 = v23 + 32;
    p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
    do
    {
      sub_1BC7AA5C8(v7, &v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        if (p_cache[228] != -1)
        {
          swift_once();
        }

        v11 = sub_1BC8F7734();
        __swift_project_value_buffer(v11, qword_1EDC2B390);

        v12 = a3;
        v13 = sub_1BC8F7714();
        v14 = sub_1BC8F8204();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v17 = a3;
          v18 = swift_slowAlloc();
          v22 = v18;
          *v15 = 136446466;
          *(v15 + 4) = sub_1BC7A9A4C(7104878, 0xE300000000000000, &v22);
          *(v15 + 12) = 2114;
          *(v15 + 14) = v12;
          *v16 = v17;
          v19 = v12;
          _os_log_impl(&dword_1BC7A3000, v13, v14, "Callback from daemon to delegate %{public}s - account info changed %{public}@", v15, 0x16u);
          sub_1BC8504B8(v16);
          v20 = v16;
          p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
          MEMORY[0x1BFB2AA50](v20, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v18);
          v21 = v18;
          a3 = v17;
          MEMORY[0x1BFB2AA50](v21, -1, -1);
          MEMORY[0x1BFB2AA50](v15, -1, -1);
        }

        if ([v10 respondsToSelector_])
        {
          [v10 messageStoreAccountInfoDidChange_];
        }

        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v23);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

double sub_1BC84F840(uint64_t a1)
{
  v1 = *(a1 + 72);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC8507B0(&v24, v2);
  os_unfair_lock_unlock(v1 + 4);
  v3 = *(v24 + 16);
  if (v3)
  {
    v4 = v24 + 32;
    v5 = &off_1E7FF5000;
    v6 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v4, &v24);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        if (qword_1EDC20720 != -1)
        {
          swift_once();
        }

        v9 = sub_1BC8F7734();
        __swift_project_value_buffer(v9, qword_1EDC2B390);
        swift_unknownObjectRetain();
        v10 = sub_1BC8F7714();
        v11 = sub_1BC8F81E4();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v23 = v21;
          *v12 = 136446210;
          ObjectType = swift_getObjectType();
          v22 = v8;
          v14 = sub_1BC8073F0(&v22, ObjectType);
          v20 = v11;
          v16 = v6;
          v17 = v5;
          v18 = sub_1BC7A9A4C(v14, v15, &v23);

          *(v12 + 4) = v18;
          v5 = v17;
          v6 = v16;
          _os_log_impl(&dword_1BC7A3000, v10, v20, "Callback from daemon to delegate %{public}s - reconnected", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x1BFB2AA50](v21, -1, -1);
          MEMORY[0x1BFB2AA50](v12, -1, -1);
        }

        if ([v8 v6[275]])
        {
          [v8 v5[156]];
        }

        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v24);
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

double sub_1BC84FAA0(uint64_t a1)
{
  v1 = *(a1 + 72);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC82F470(&v24, v2);
  os_unfair_lock_unlock(v1 + 4);
  v3 = *(v24 + 16);
  if (v3)
  {
    v4 = v24 + 32;
    v5 = &off_1E7FF5000;
    v6 = &off_1E7FF5000;
    do
    {
      sub_1BC7AA5C8(v4, &v24);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        if (qword_1EDC20720 != -1)
        {
          swift_once();
        }

        v9 = sub_1BC8F7734();
        __swift_project_value_buffer(v9, qword_1EDC2B390);
        swift_unknownObjectRetain();
        v10 = sub_1BC8F7714();
        v11 = sub_1BC8F81E4();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v23 = v21;
          *v12 = 136446210;
          ObjectType = swift_getObjectType();
          v22 = v8;
          v14 = sub_1BC8073F0(&v22, ObjectType);
          v20 = v11;
          v16 = v6;
          v17 = v5;
          v18 = sub_1BC7A9A4C(v14, v15, &v23);

          *(v12 + 4) = v18;
          v5 = v17;
          v6 = v16;
          _os_log_impl(&dword_1BC7A3000, v10, v20, "Callback from daemon to delegate %{public}s - protected apps changed", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x1BFB2AA50](v21, -1, -1);
          MEMORY[0x1BFB2AA50](v12, -1, -1);
        }

        if ([v8 v6[275]])
        {
          [v8 v5[155]];
        }

        swift_unknownObjectRelease();
      }

      sub_1BC7AA648(&v24);
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1BC84FD00(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 80);
  v5 = *(v4 + 16);
  v6 = v4 + 32;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v7)
    {

      *(a1 + 80) = v8;

      *a2 = *(a1 + 80);

      return;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    sub_1BC7AA5C8(v6, v13);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BC8506F0(v13, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BC7DDD24(0, *(v8 + 16) + 1, 1);
        v8 = v14;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1BC7DDD24((v10 > 1), v11 + 1, 1);
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      sub_1BC8506F0(v12, v8 + 8 * v11 + 32);
    }

    else
    {
      sub_1BC7AA648(v13);
    }

    v6 += 8;
    ++v7;
  }

  __break(1u);
}

double sub_1BC84FEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2);
  v6 = sub_1BC8F7E54();

  a5(v6);

  return result;
}

uint64_t sub_1BC84FFD4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return a2(v2, v2, a1);
}

void MessageStoreController.messageStoreAccountInfoDidChange(_:)(void *a1)
{
  v3 = a1;
  sub_1BC84A348(a1);
  v4 = v3;

  sub_1BC84F598(v5, v1, v4);
}

uint64_t sub_1BC850150(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void *sub_1BC850194(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1BC8501CC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(&var1, a1);
  if (!v2)
  {
    v3 = var1;
  }

  return v3 & 1;
}

uint64_t sub_1BC850208(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_1BC85039C(v6, a2);
  if (v2)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);
LABEL_5:
    swift_unknownObjectRelease();
    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 8 * result + 40; ; i += 8)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        goto LABEL_5;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

      sub_1BC7AA5C8(v6 + i, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        swift_unknownObjectRelease();
        result = sub_1BC7AA648(v17);
        if (v13 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1BC7AA648(v17);
      }

      if (v9 != v3)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v14 = *(v6 + 16);
        if (v3 >= v14)
        {
          goto LABEL_27;
        }

        result = sub_1BC7AA5C8(v6 + 32 + 8 * v3, v17);
        if (v9 >= v14)
        {
          goto LABEL_28;
        }

        sub_1BC7AA5C8(v6 + i, &v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BC8301EC();
          v6 = v15;
        }

        result = sub_1BC850744(&v16, v6 + 8 * v3 + 32);
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        result = sub_1BC850744(v17, v6 + i);
        *a1 = v6;
      }

      ++v3;
LABEL_24:
      ++v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC85039C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = a1 + 32; ; i += 8)
  {
    if (v4 == v3)
    {
      v8 = 0;
      goto LABEL_8;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    ++v3;
  }

  v8 = v3;
LABEL_8:
  swift_unknownObjectRelease();
  return v8;
}

void sub_1BC850434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  os_unfair_lock_lock(v2 + 4);
  sub_1BC8507C8();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BC8504B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC850544()
{
  OUTLINED_FUNCTION_71();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  OUTLINED_FUNCTION_26(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  OUTLINED_FUNCTION_26(Request);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = *(v0 + v14);
  v18 = *(v0 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v2 + 16) = v19;
  *v19 = v2;
  v19[1] = sub_1BC7B0168;

  return sub_1BC84BFD0(v4, v15, v16, v0 + v7, v0 + v12, v17, v18);
}

void *OUTLINED_FUNCTION_50_3()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

void sub_1BC8507FC()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v6 = OUTLINED_FUNCTION_25(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v83 = v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_19_13();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_4();
  v84 = v21;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v76 - v23;
  v25 = [v0 messageType];
  if (v25 <= 2)
  {
    v26 = v25;
    v80 = v9;
    v81 = v24;
    v85 = v16;
    v27 = v0;
    sub_1BC80BF48(v26);
    v87[4] = v27;
    v28 = swift_readAtKeyPath();
    sub_1BC7C4DAC(v29, v13, &unk_1EBCF5D70, &qword_1BC8FC740);
    v28(v87, 0);

    OUTLINED_FUNCTION_43(v13, 1, v14);
    if (v30)
    {
      sub_1BC7C1744(v13, &unk_1EBCF5D70, &qword_1BC8FC740);
    }

    else
    {
      v31 = *(v85 + 32);
      v86 = v14;
      v78 = v85 + 32;
      v79 = v2;
      v77 = v31;
      v31(v81, v13, v14);
      v32 = sub_1BC80BF98(v26);
      v33 = sub_1BC7C0454(v4);
      v34 = 0;
      v35 = v4 & 0xC000000000000001;
      v36 = v4 & 0xFFFFFFFFFFFFFF8;
      v82 = MEMORY[0x1E69E7CC0];
      while (v33 != v34)
      {
        if (v35)
        {
          v37 = MEMORY[0x1BFB29A00](v34, v4);
        }

        else
        {
          if (v34 >= *(v36 + 16))
          {
            goto LABEL_25;
          }

          v37 = *(v4 + 8 * v34 + 32);
        }

        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v39 = v4;
        v87[0] = v37;
        v40 = v37;
        v41 = v32;
        swift_getAtKeyPath();

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v86);
        sub_1BC7C1744(v1, &unk_1EBCF5D70, &qword_1BC8FC740);
        if (EnumTagSinglePayload == 1)
        {

          ++v34;
          v32 = v41;
          v4 = v39;
        }

        else
        {
          v87[0] = v40;
          v43 = v40;
          v44 = v80;
          v32 = v41;
          swift_getAtKeyPath();
          v45 = v86;
          OUTLINED_FUNCTION_43(v44, 1, v86);
          if (v30)
          {
            __break(1u);
            return;
          }

          v46 = v77;
          v77(v79, v44, v45);
          v46(v84, v79, v45);
          v47 = v82;
          v4 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BC7F7144();
            v47 = v51;
          }

          v49 = *(v47 + 16);
          v48 = *(v47 + 24);
          v82 = v47;
          if (v49 >= v48 >> 1)
          {
            sub_1BC7F7144();
            v82 = v52;
          }

          v50 = v82;
          *(v82 + 16) = v49 + 1;
          v77(v50 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v49, v84, v86);
          v34 = v38;
        }
      }

      if (qword_1EDC20728 == -1)
      {
        goto LABEL_20;
      }

LABEL_26:
      OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
LABEL_20:
      v53 = sub_1BC8F7734();
      __swift_project_value_buffer(v53, qword_1EDC2B3A8);
      v55 = v85;
      v54 = v86;
      v56 = v83;
      v57 = v81;
      (*(v85 + 16))(v83, v81, v86);

      v58 = sub_1BC8F7714();
      v59 = sub_1BC8F8204();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v80 = v32;
        v61 = v60;
        v84 = swift_slowAlloc();
        v87[0] = v84;
        *v61 = 134218754;
        *(v61 + 4) = sub_1BC7C0454(v4);

        *(v61 + 12) = 2080;
        OUTLINED_FUNCTION_2_18();
        sub_1BC8556EC(v62, v63, MEMORY[0x1E69695E0]);
        sub_1BC8F8A54();
        OUTLINED_FUNCTION_45_7();
        v64 = v55 + 8;
        v65 = *(v55 + 8);
        v85 = v64;
        v66 = OUTLINED_FUNCTION_36_8();
        v65(v66);
        v67 = sub_1BC7A9A4C(v56, v4, v87);

        *(v61 + 14) = v67;
        *(v61 + 22) = 2080;
        v68 = sub_1BC8F8484();
        v70 = v69;
        v71 = sub_1BC7A9A4C(v68, v69, v87);

        *(v61 + 24) = v71;
        *(v61 + 32) = 2080;
        v72 = OUTLINED_FUNCTION_60_2();
        MEMORY[0x1BFB29280](v72);
        OUTLINED_FUNCTION_45_7();

        v73 = sub_1BC7A9A4C(v70, v71, v87);

        *(v61 + 34) = v73;
        _os_log_impl(&dword_1BC7A3000, v58, v59, "Found %ld duplicates for %s: %s %s", v61, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();

        (v65)(v81, v54);
      }

      else
      {

        v74 = *(v55 + 8);
        v75 = OUTLINED_FUNCTION_36_8();
        v74(v75);
        (v74)(v57, v54);
      }
    }
  }

  OUTLINED_FUNCTION_24();
}