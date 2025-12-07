void sub_1BC850EE8()
{
  OUTLINED_FUNCTION_29_0();
  v5 = v0;
  v7 = v6;
  v8 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_5();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_10();
  v15 = [v5 recordUUID];
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = v15;
  sub_1BC8F7244();

  v17 = *(v10 + 32);
  v17(v4, v3, v8);
  v18 = [v5 conversationID];
  if (!v18)
  {
    (*(v10 + 8))(v4, v8);
LABEL_5:
    v31 = 0xF000000000000007;
    goto LABEL_6;
  }

  v19 = v18;
  sub_1BC8F7244();

  v17(v1, v2, v8);
  OUTLINED_FUNCTION_21_4();
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
  v32 = v1;
  v33 = v7;
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC8FC230;
  v23 = *(v10 + 16);
  v23(v22 + v21, v4, v8);
  *(v20 + 16) = v22;
  v24 = v20 | 0x1000000000000000;
  OUTLINED_FUNCTION_21_4();
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BC8FC230;
  v23(v26 + v21, v32, v8);
  *(v25 + 16) = v26;
  v27 = v25 | 0x2000000000000000;
  OUTLINED_FUNCTION_21_4();
  v28 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BC8FEAA0;
  *(v29 + 32) = v24;
  *(v29 + 40) = v27;
  v30 = *(v10 + 8);
  v30(v32, v8);
  v30(v4, v8);
  v7 = v33;
  *(v28 + 16) = v29;
  v31 = v28 | 0xC000000000000000;
LABEL_6:
  *v7 = v31;
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8511D8(uint64_t *a1)
{
  sub_1BC85510C(*a1, a1[1], a1[2]);
  v3 = v2;

  OUTLINED_FUNCTION_79();
  v4 = sub_1BC8F7BE4();
  [v1 willChangeValueForKey_];

  if (v3 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_30();
    sub_1BC7EC5DC(v6, v7);
    OUTLINED_FUNCTION_30();
    v5 = sub_1BC8F70C4();
    v8 = OUTLINED_FUNCTION_30();
    sub_1BC7ECAC8(v8, v9);
  }

  OUTLINED_FUNCTION_79();
  v10 = sub_1BC8F7BE4();
  [v1 setPrimitiveValue:v5 forKey:v10];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_79();
  v11 = sub_1BC8F7BE4();
  [v1 didChangeValueForKey_];

  v12 = OUTLINED_FUNCTION_30();

  return sub_1BC7ECAC8(v12, v13);
}

void FTStoredMessage.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  v6 = v0;
  v307[5] = *MEMORY[0x1E69E9840];
  v7 = sub_1BC8F7C64();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v9);
  v10 = sub_1BC8F7134();
  OUTLINED_FUNCTION_0();
  v296 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v13);
  v295 = sub_1BC8F7154();
  OUTLINED_FUNCTION_0();
  v294 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v16);
  v300 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v292 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_4();
  v291 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v21 = OUTLINED_FUNCTION_25(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v27);
  v301 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v299 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_4();
  v298 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v32 = OUTLINED_FUNCTION_25(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v281[-v37];
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_19_13();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v281[-v42];
  *&v305 = 0x555564726F636572;
  *(&v305 + 1) = 0xEA00000000004449;
  v44 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v302 = v6;
  v45 = [v6 recordUUID];
  v297 = v10;
  if (v45)
  {
    isUniquelyReferenced_nonNull_native = v45;
    sub_1BC8F7244();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  OUTLINED_FUNCTION_83_1(v5, v46);
  sub_1BC8555B8(v5, v43, &unk_1EBCF5D70, &qword_1BC8FC740);
  v47 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v47, v48, v10))
  {
    sub_1BC7C1744(v43, &unk_1EBCF5D70, &qword_1BC8FC740);
    v49 = MEMORY[0x1E69E7CC8];
    v50 = sub_1BC83C8E8();
    if (v51)
    {
      v52 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v304 = v49;
      v53 = *(v49 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_55_1();
      sub_1BC8037DC(v54 + v52 * v55);
      sub_1BC7F0E58((*(v53 + 56) + 32 * v52), &v305);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
      v53 = MEMORY[0x1E69E7CC8];
    }

    v62 = v282;
    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
    v56 = v299;
    isUniquelyReferenced_nonNull_native = v298;
    (*(v299 + 16))(v298, v43, v10);
    sub_1BC7C1744(v43, &unk_1EBCF5D70, &qword_1BC8FC740);
    v57 = sub_1BC8F7204();
    v59 = v58;
    (*(v56 + 8))(isUniquelyReferenced_nonNull_native, v10);
    v306 = v44;
    *&v305 = v57;
    *(&v305 + 1) = v59;
    OUTLINED_FUNCTION_29_5();
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v303 = v3;
    OUTLINED_FUNCTION_8(v60, v61, v60);
    v53 = v303;
    sub_1BC8037DC(v307);
    v62 = v282;
  }

  *&v305 = 0x444955556C6C6163;
  *(&v305 + 1) = 0xE800000000000000;
  v63 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v64 = OUTLINED_FUNCTION_28_8();
  v66 = [v64 v65];
  if (v66)
  {
    v67 = v66;
    sub_1BC8F7244();

    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  OUTLINED_FUNCTION_83_1(v4, v68);
  v69 = v4;
  v70 = v10;
  sub_1BC8555B8(v69, v2, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v2, 1, v10))
  {
    sub_1BC7C1744(v2, &unk_1EBCF5D70, &qword_1BC8FC740);
    v71 = sub_1BC83C8E8();
    if (v72)
    {
      v73 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v304 = v53;
      v53 = *(v53 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_55_1();
      sub_1BC8037DC(v74 + v73 * v75);
      OUTLINED_FUNCTION_51_3(*(v53 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    v82 = v283;
    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v76 = OUTLINED_FUNCTION_38_7();
    v77(v76, v2, v10);
    sub_1BC7C1744(v2, &unk_1EBCF5D70, &qword_1BC8FC740);
    sub_1BC8F7204();
    OUTLINED_FUNCTION_45_7();
    v78 = OUTLINED_FUNCTION_77_1();
    v79(v78);
    v306 = v63;
    *&v305 = v3;
    *(&v305 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_29_5();
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v303 = v53;
    OUTLINED_FUNCTION_8(v80, v81, v80);
    v53 = v303;
    sub_1BC8037DC(v307);
    v82 = v283;
  }

  strcpy(&v305, "conversationID");
  HIBYTE(v305) = -18;
  v83 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v84 = OUTLINED_FUNCTION_28_8();
  v86 = [v84 v85];
  if (v86)
  {
    v87 = v86;
    sub_1BC8F7244();

    v88 = 0;
  }

  else
  {
    v88 = 1;
  }

  __swift_storeEnumTagSinglePayload(v82, v88, 1, v70);
  sub_1BC8555B8(v82, v38, &unk_1EBCF5D70, &qword_1BC8FC740);
  if (__swift_getEnumTagSinglePayload(v38, 1, v70))
  {
    sub_1BC7C1744(v38, &unk_1EBCF5D70, &qword_1BC8FC740);
    v89 = sub_1BC83C8E8();
    if (v90)
    {
      v91 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v304 = v53;
      v53 = *(v53 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_55_1();
      sub_1BC8037DC(v92 + v91 * v93);
      OUTLINED_FUNCTION_51_3(*(v53 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v94 = OUTLINED_FUNCTION_38_7();
    v95(v94, v38, v70);
    sub_1BC7C1744(v38, &unk_1EBCF5D70, &qword_1BC8FC740);
    sub_1BC8F7204();
    OUTLINED_FUNCTION_45_7();
    v96 = OUTLINED_FUNCTION_77_1();
    v97(v96);
    v306 = v83;
    *&v305 = v3;
    *(&v305 + 1) = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_29_5();
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v303 = v53;
    OUTLINED_FUNCTION_8(v98, v99, v98);
    v53 = v303;
    sub_1BC8037DC(v307);
  }

  *&v305 = 0x546567617373656DLL;
  *(&v305 + 1) = 0xEB00000000657079;
  v100 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v101 = v302;
  v102 = [v302 messageType];
  v103 = MEMORY[0x1E69E7290];
  v306 = MEMORY[0x1E69E7290];
  LOWORD(v305) = v102;
  OUTLINED_FUNCTION_29_5();
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v303 = v53;
  OUTLINED_FUNCTION_8(v104, v105, v104);
  OUTLINED_FUNCTION_43_4();
  *&v305 = 1836020326;
  *(&v305 + 1) = 0xE400000000000000;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v106 = sub_1BC7C19F8(v101, &selRef_from);
  if (v107)
  {
    sub_1BC7EB6B4(v106, v107);
    isUniquelyReferenced_nonNull_native = v108;
    v53 = v109;

    v306 = v100;
    *&v305 = isUniquelyReferenced_nonNull_native;
    *(&v305 + 1) = v53;
    v110 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13(v110);
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_59_2();
    v111 = v284;
  }

  else
  {
    OUTLINED_FUNCTION_52();
    v111 = v284;
    if (v112)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_32_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v113 + v100 * v114);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    OUTLINED_FUNCTION_59_2();
    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v305 = 0x72656469766F7270;
  *(&v305 + 1) = 0xE800000000000000;
  v115 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v116 = OUTLINED_FUNCTION_28_8();
  v118 = sub_1BC7C19F8(v116, v117);
  if (v119)
  {
    v306 = v115;
    *&v305 = v118;
    *(&v305 + 1) = v119;
    v120 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13(v120);
    OUTLINED_FUNCTION_43_4();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    if (v121)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_32_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      OUTLINED_FUNCTION_59_2();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v122 + v100 * v123);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v305 = 0x6165724365746164;
  *(&v305 + 1) = 0xEB00000000646574;
  v124 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v125 = OUTLINED_FUNCTION_28_8();
  v127 = [v125 v126];
  if (v127)
  {
    v128 = v127;
    sub_1BC8F71B4();

    v129 = 0;
  }

  else
  {
    v129 = 1;
  }

  OUTLINED_FUNCTION_73_0(v62, v129);
  sub_1BC8555B8(v62, v111, &unk_1EBCF5D80, &qword_1BC8FEA60);
  if (__swift_getEnumTagSinglePayload(v111, 1, v53))
  {
    sub_1BC7C1744(v111, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_52();
    if (v130)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_32_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      OUTLINED_FUNCTION_59_2();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v131 + v124 * v132);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    v142 = v285;
    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_48_5();
    v134 = *(v133 - 256);
    v135(v134, v111, v53);
    sub_1BC7C1744(v111, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v136 = v293;
    sub_1BC8F7144();
    OUTLINED_FUNCTION_69_1();
    v137 = sub_1BC8F71C4();
    v138 = OUTLINED_FUNCTION_30_8();
    v139(v138);
    (*(v294 + 8))(v136, v295);
    v140 = v103;
    v103 = v62;
    (*(v140 + 8))(v134, v53);
    v306 = v124;
    *&v305 = v137;
    *(&v305 + 1) = isUniquelyReferenced_nonNull_native;
    v141 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13(v141);
    OUTLINED_FUNCTION_43_4();
    v142 = v285;
  }

  *&v305 = 0x656C654465746164;
  *(&v305 + 1) = 0xEB00000000646574;
  v143 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v144 = OUTLINED_FUNCTION_28_8();
  v146 = [v144 v145];
  if (v146)
  {
    v147 = v146;
    sub_1BC8F71B4();

    v148 = 0;
  }

  else
  {
    v148 = 1;
  }

  OUTLINED_FUNCTION_73_0(v142, v148);
  v149 = v286;
  sub_1BC8555B8(v142, v286, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v150 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v150, v151, v53))
  {
    sub_1BC7C1744(v149, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_52();
    if (v152)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_32_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_10_17();
      OUTLINED_FUNCTION_59_2();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v153 + v143 * v154);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    v164 = v287;
    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v155 = v292;
    v156 = v291;
    v157 = OUTLINED_FUNCTION_29();
    v158(v157);
    sub_1BC7C1744(v149, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v159 = v293;
    sub_1BC8F7144();
    OUTLINED_FUNCTION_69_1();
    v160 = sub_1BC8F71C4();
    v161 = OUTLINED_FUNCTION_30_8();
    v162(v161);
    (*(v294 + 8))(v159, v295);
    (*(v155 + 8))(v156, v53);
    v306 = v143;
    *&v305 = v160;
    *(&v305 + 1) = isUniquelyReferenced_nonNull_native;
    v163 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13(v163);
    OUTLINED_FUNCTION_43_4();
    v164 = v287;
  }

  strcpy(&v305, "dateModified");
  BYTE13(v305) = 0;
  HIWORD(v305) = -5120;
  v165 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v166 = OUTLINED_FUNCTION_28_8();
  v168 = [v166 v167];
  if (v168)
  {
    v169 = v168;
    sub_1BC8F71B4();

    v170 = 0;
  }

  else
  {
    v170 = 1;
  }

  OUTLINED_FUNCTION_73_0(v164, v170);
  v171 = v288;
  sub_1BC8555B8(v164, v288, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v172 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v172, v173, v53))
  {
    sub_1BC7C1744(v171, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v174 = OUTLINED_FUNCTION_52();
    if (v175)
    {
      v164 = v174;
      swift_isUniquelyReferenced_nonNull_native();
      v304 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v176 + v164 * v177);
      sub_1BC7F0E58((*(v38 + 7) + 32 * v164), &v305);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_48_5();
    v164 = *(v178 - 256);
    v179 = OUTLINED_FUNCTION_29();
    v180(v179);
    sub_1BC7C1744(v171, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v181 = v293;
    sub_1BC8F7144();
    OUTLINED_FUNCTION_69_1();
    sub_1BC8F71C4();
    OUTLINED_FUNCTION_45_7();
    (*(v296 + 8))(v53, v297);
    (*(v294 + 8))(v181, v295);
    (*(v103 + 8))(v164, v53);
    v103 = v62;
    v306 = v165;
    *&v305 = v164;
    *(&v305 + 1) = isUniquelyReferenced_nonNull_native;
    v182 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_13_13(v182);
    OUTLINED_FUNCTION_43_4();
  }

  *&v305 = 0x646165527369;
  *(&v305 + 1) = 0xE600000000000000;
  v183 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v184 = v302;
  v185 = [v302 isRead];
  v186 = MEMORY[0x1E69E6370];
  v306 = MEMORY[0x1E69E6370];
  LOBYTE(v305) = v185;
  v187 = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13_13(v187);
  OUTLINED_FUNCTION_50_4();
  *&v305 = 0x6E6F697461727564;
  *(&v305 + 1) = 0xE800000000000000;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  [v184 duration];
  v306 = MEMORY[0x1E69E63B0];
  *&v305 = v188;
  OUTLINED_FUNCTION_16_11();
  v189 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v189, v190, v191);
  OUTLINED_FUNCTION_50_4();
  *&v305 = 0x54786F626C69616DLL;
  *(&v305 + 1) = 0xEB00000000657079;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v192 = [v184 mailboxType];
  v306 = v103;
  LOWORD(v305) = v192;
  OUTLINED_FUNCTION_16_11();
  v193 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v193, v194, v195);
  OUTLINED_FUNCTION_50_4();
  *&v305 = 0x7469736E65537369;
  *(&v305 + 1) = 0xEB00000000657669;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v196 = [v184 isSensitive];
  v306 = v186;
  LOBYTE(v305) = v196;
  OUTLINED_FUNCTION_16_11();
  v197 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v197, v198, v199);
  OUTLINED_FUNCTION_50_4();
  *&v305 = 0x5454527369;
  *(&v305 + 1) = 0xE500000000000000;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v200 = [v184 isRTT];
  v306 = v186;
  LOBYTE(v305) = v200;
  OUTLINED_FUNCTION_16_11();
  v201 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v201, v202, v203);
  OUTLINED_FUNCTION_50_4();
  *&v305 = 0xD000000000000013;
  *(&v305 + 1) = 0x80000001BC90B210;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v204 = [v184 transcriptionStatus];
  v306 = v103;
  LOWORD(v305) = v204;
  OUTLINED_FUNCTION_16_11();
  v205 = OUTLINED_FUNCTION_5_19();
  sub_1BC83D6F0(v205, v206, v207);
  OUTLINED_FUNCTION_50_4();
  *&v305 = 0x7974696C617571;
  *(&v305 + 1) = 0xE700000000000000;
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v208 = sub_1BC7C19F8(v184, &selRef_quality);
  if (v209)
  {
    v306 = v183;
    *&v305 = v208;
    *(&v305 + 1) = v209;
    OUTLINED_FUNCTION_16_11();
    v210 = OUTLINED_FUNCTION_5_19();
    sub_1BC83D6F0(v210, v211, v212);
    OUTLINED_FUNCTION_50_4();
    v213 = v301;
  }

  else
  {
    v214 = OUTLINED_FUNCTION_87();
    v213 = v301;
    if (v215)
    {
      v216 = v214;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_29_6();
      sub_1BC8037DC(v217 + v216 * v218);
      OUTLINED_FUNCTION_51_3(*(v164 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v305 = 0x6E65697069636572;
  *(&v305 + 1) = 0xE900000000000074;
  v219 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v220 = OUTLINED_FUNCTION_28_8();
  v222 = sub_1BC7C19F8(v220, v221);
  if (v223)
  {
    sub_1BC7EB6B4(v222, v223);
    v225 = v224;
    v227 = v226;

    v306 = v219;
    *&v305 = v225;
    *(&v305 + 1) = v227;
    OUTLINED_FUNCTION_16_11();
    v228 = OUTLINED_FUNCTION_5_19();
    sub_1BC83D6F0(v228, v229, v230);
    OUTLINED_FUNCTION_50_4();
  }

  else
  {
    v231 = OUTLINED_FUNCTION_87();
    if (v232)
    {
      v233 = v231;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_29_6();
      sub_1BC8037DC(v234 + v233 * v235);
      OUTLINED_FUNCTION_51_3(*(v164 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v305 = 0x44496D6973;
  *(&v305 + 1) = 0xE500000000000000;
  v236 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v237 = OUTLINED_FUNCTION_28_8();
  v239 = sub_1BC7C19F8(v237, v238);
  if (v240)
  {
    v306 = v236;
    *&v305 = v239;
    *(&v305 + 1) = v240;
    OUTLINED_FUNCTION_16_11();
    v241 = OUTLINED_FUNCTION_5_19();
    sub_1BC83D6F0(v241, v242, v243);
    OUTLINED_FUNCTION_50_4();
  }

  else
  {
    v244 = OUTLINED_FUNCTION_87();
    if (v245)
    {
      v246 = v244;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_29_6();
      sub_1BC8037DC(v247 + v246 * v248);
      OUTLINED_FUNCTION_51_3(*(v164 + 56));
      OUTLINED_FUNCTION_34_8();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  strcpy(&v305, "reminderUUID");
  BYTE13(v305) = 0;
  HIWORD(v305) = -5120;
  v249 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_7_12();
  sub_1BC8F8544();
  v250 = OUTLINED_FUNCTION_28_8();
  v252 = [v250 v251];
  if (v252)
  {
    v253 = v252;
    v254 = v289;
    sub_1BC8F7244();

    v255 = 0;
  }

  else
  {
    v255 = 1;
    v254 = v289;
  }

  __swift_storeEnumTagSinglePayload(v254, v255, 1, v213);
  v256 = v290;
  sub_1BC8555B8(v254, v290, &unk_1EBCF5D70, &qword_1BC8FC740);
  v257 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v257, v258, v213))
  {
    sub_1BC7C1744(v256, &unk_1EBCF5D70, &qword_1BC8FC740);
    v259 = OUTLINED_FUNCTION_87();
    if (v260)
    {
      v261 = v259;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_33_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_12_13();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_29_6();
      sub_1BC8037DC(v262 + v261 * v263);
      sub_1BC7F0E58((*(v164 + 56) + 32 * v261), &v305);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v307);
    sub_1BC7C1744(&v305, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v264 = v299;
    v265 = v298;
    (*(v299 + 16))(v298, v256, v213);
    sub_1BC7C1744(v256, &unk_1EBCF5D70, &qword_1BC8FC740);
    v266 = sub_1BC8F7204();
    v268 = v267;
    (*(v264 + 8))(v265, v213);
    v306 = v249;
    *&v305 = v266;
    *(&v305 + 1) = v268;
    OUTLINED_FUNCTION_16_11();
    v269 = OUTLINED_FUNCTION_5_19();
    sub_1BC83D6F0(v269, v270, v271);
    OUTLINED_FUNCTION_50_4();
  }

  v272 = objc_opt_self();
  v273 = sub_1BC8F7A94();
  v307[0] = 0;
  v274 = [v272 dataWithJSONObject:v273 options:11 error:v307];

  v275 = v307[0];
  if (v274)
  {
    v276 = sub_1BC8F70D4();
    v278 = v277;

    sub_1BC8F7C54();
    sub_1BC8F7C34();
    sub_1BC7D4C94(v276, v278);
  }

  else
  {
    v279 = v275;

    v280 = sub_1BC8F6EA4();

    swift_willThrow();
    v307[0] = 0;
    v307[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_1BC8F8A64();
  }

  OUTLINED_FUNCTION_24();
}

void static FTStoredMessage.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_0();
  a19 = v26;
  a20 = v27;
  v223 = v28;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v32 = OUTLINED_FUNCTION_25(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_31();
  v209 = v33;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_47();
  v208 = v35;
  v224 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v220 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_31();
  v218 = v38;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_20_4();
  v219 = v40;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_20_4();
  v215 = v42;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_20_4();
  v216 = v44;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_20_4();
  v206 = v46;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_20_4();
  v207 = v48;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_20_4();
  v211 = v50;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_20_4();
  v212 = v52;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_47();
  v217 = v54;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D58, &qword_1BC903E30);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_31();
  v213 = v56;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_47();
  v221 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v60 = OUTLINED_FUNCTION_25(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_31();
  v214 = v61;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_20_4();
  v210 = v63;
  OUTLINED_FUNCTION_17_0();
  v65 = MEMORY[0x1EEE9AC00](v64);
  v67 = &v198 - v66;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_53_5();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_81_2();
  v71 = MEMORY[0x1EEE9AC00](v70);
  v73 = &v198 - v72;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_19_13();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_11_10();
  v76 = [v30 dateDeleted];
  if (v76)
  {
    v77 = v76;
    sub_1BC8F71B4();

    __swift_storeEnumTagSinglePayload(v24, 0, 1, v224);
    sub_1BC7C1744(v24, &unk_1EBCF5D80, &qword_1BC8FEA60);
    goto LABEL_22;
  }

  v204 = v73;
  v203 = v25;
  v202 = v20;
  v200 = v21;
  v201 = v22;
  v199 = v67;
  v205 = v30;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v224);
  sub_1BC7C1744(v24, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v78 = v223;
  v79 = [v223 dateDeleted];
  if (v79)
  {
    v80 = v79;
    sub_1BC8F71B4();

    OUTLINED_FUNCTION_67_0(v23, 0);
    v81 = v23;
LABEL_6:
    sub_1BC7C1744(v81, &unk_1EBCF5D80, &qword_1BC8FEA60);
LABEL_22:
    OUTLINED_FUNCTION_24();
    return;
  }

  OUTLINED_FUNCTION_67_0(v23, 1);
  sub_1BC7C1744(v23, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v82 = v205;
  sub_1BC7C19F8(v205, &selRef_quality);
  v83 = sub_1BC8F8804();

  if (v83 >= 4)
  {
    v84 = 1;
  }

  else
  {
    v84 = v83;
  }

  sub_1BC7C19F8(v78, &selRef_quality);
  v85 = sub_1BC8F8804();

  if (v85 >= 4)
  {
    v86 = 1;
  }

  else
  {
    v86 = v85;
  }

  if ((sub_1BC800E6C(v84, v86) & 1) == 0)
  {
    goto LABEL_22;
  }

  v87 = [v82 messageType];
  v88 = v224;
  v89 = v82;
  v91 = v221;
  v90 = v222;
  v92 = v203;
  v93 = v204;
  if (v87 == 1)
  {
    sub_1BC85553C(v89);
    OUTLINED_FUNCTION_76_1();
    if (!(!v113 & v96))
    {
      sub_1BC7ECAC8(v94, v95);
      sub_1BC85553C(v78);
      OUTLINED_FUNCTION_76_1();
      if (!v113 & v96)
      {
        goto LABEL_22;
      }

      sub_1BC7ECAC8(v97, v98);
    }

    sub_1BC85553C(v89);
    OUTLINED_FUNCTION_76_1();
    if (!v113 & v96)
    {
      sub_1BC85553C(v78);
      OUTLINED_FUNCTION_76_1();
      if (!(!v113 & v96))
      {
        sub_1BC7ECAC8(v101, v102);
        goto LABEL_22;
      }
    }

    else
    {
      sub_1BC7ECAC8(v99, v100);
    }
  }

  v103 = [v89 dateCreated];
  if (v103)
  {
    v104 = v103;
    sub_1BC8F71B4();

    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  v106 = 1;
  OUTLINED_FUNCTION_67_0(v92, v105);
  v107 = [v78 dateCreated];
  if (v107)
  {
    v108 = v107;
    sub_1BC8F71B4();

    v106 = 0;
  }

  OUTLINED_FUNCTION_67_0(v93, v106);
  v109 = *(v90 + 48);
  sub_1BC7C4DAC(v92, v91, &unk_1EBCF5D80, &qword_1BC8FEA60);
  sub_1BC7C4DAC(v93, v91 + v109, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v91, 1, v88);
  if (v113)
  {
    sub_1BC7C1744(v93, &unk_1EBCF5D80, &qword_1BC8FEA60);
    sub_1BC7C1744(v92, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_43(v91 + v109, 1, v88);
    v111 = v218;
    v110 = v219;
    if (v113)
    {
      sub_1BC7C1744(v91, &unk_1EBCF5D80, &qword_1BC8FEA60);
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v112 = v202;
  sub_1BC7C4DAC(v91, v202, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v91 + v109, 1, v88);
  v114 = v217;
  v110 = v219;
  if (v113)
  {
    v115 = OUTLINED_FUNCTION_37_9();
    OUTLINED_FUNCTION_49_4(v115);
    OUTLINED_FUNCTION_49_4(v92);
    (*(v220 + 8))(v112, v224);
    v111 = v218;
LABEL_36:
    sub_1BC7C1744(v91, &qword_1EBCF5D58, &qword_1BC903E30);
LABEL_37:
    v116 = [v89 dateCreated];
    if (v116)
    {
      v117 = v116;
      v118 = v215;
      sub_1BC8F71B4();

      v119 = v220;
      v120 = *(v220 + 32);
      v121 = v78;
      v122 = v224;
      v120(v216, v118, v224);
      v123 = [v121 dateCreated];
      if (v123)
      {
        v124 = v123;
        sub_1BC8F71B4();

        v120(v110, v111, v122);
        sub_1BC8F7184();
        v125 = *(v119 + 8);
        v125(v110, v122);
        v126 = OUTLINED_FUNCTION_63_1();
LABEL_71:
        v125(v126, v127);
        goto LABEL_22;
      }

      v141 = OUTLINED_FUNCTION_63_1();
      v142(v141);
    }

    v143 = [v89 dateCreated];
    if (!v143)
    {
      v146 = 1;
      v145 = v214;
      goto LABEL_50;
    }

    v144 = v143;
    v145 = v214;
LABEL_48:
    sub_1BC8F71B4();

    v146 = 0;
LABEL_50:
    __swift_storeEnumTagSinglePayload(v145, v146, 1, v224);
    v81 = v145;
    goto LABEL_6;
  }

  v128 = v91;
  v129 = v220;
  (*(v220 + 32))(v217, v128 + v109, v88);
  OUTLINED_FUNCTION_1_18();
  sub_1BC8556EC(v130, v131, MEMORY[0x1E6969550]);
  OUTLINED_FUNCTION_36_8();
  v132 = sub_1BC8F7BC4();
  v133 = *(v129 + 8);
  v133(v114, v224);
  v134 = OUTLINED_FUNCTION_37_9();
  sub_1BC7C1744(v134, &unk_1EBCF5D80, &qword_1BC8FEA60);
  sub_1BC7C1744(v203, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v133(v112, v224);
  v89 = v205;
  v88 = v224;
  sub_1BC7C1744(v128, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v111 = v218;
  if ((v132 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_41:
  v135 = [v89 isRead];
  if (v135 != [v78 isRead])
  {
    [v89 isRead];
    goto LABEL_22;
  }

  v136 = [v89 dateModified];
  if (v136)
  {
    v137 = v136;
    v138 = v201;
    sub_1BC8F71B4();

    v139 = 0;
    v140 = v220;
  }

  else
  {
    v139 = 1;
    v140 = v220;
    v138 = v201;
  }

  v147 = v200;
  v148 = 1;
  OUTLINED_FUNCTION_67_0(v138, v139);
  v149 = [v78 dateModified];
  if (v149)
  {
    v150 = v149;
    sub_1BC8F71B4();

    v148 = 0;
  }

  OUTLINED_FUNCTION_67_0(v147, v148);
  v151 = v88;
  v152 = *(v222 + 48);
  v153 = v147;
  v154 = v213;
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C4DAC(v155, v156, v157, &qword_1BC8FEA60);
  v158 = v154;
  sub_1BC7C4DAC(v153, v154 + v152, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v154, 1, v151);
  if (v113)
  {
    OUTLINED_FUNCTION_40_6(v153);
    v159 = OUTLINED_FUNCTION_60_2();
    v160 = v213;
    sub_1BC7C1744(v159, v161, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_43(v160 + v152, 1, v151);
    if (v113)
    {
      sub_1BC7C1744(v160, &unk_1EBCF5D80, &qword_1BC8FEA60);
      goto LABEL_67;
    }

    goto LABEL_62;
  }

  v162 = v154;
  v163 = v199;
  sub_1BC7C4DAC(v162, v199, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v158 + v152, 1, v151);
  if (v164)
  {
    v165 = OUTLINED_FUNCTION_35_6(&a13);
    sub_1BC7C1744(v165, v166, &qword_1BC8FEA60);
    v167 = OUTLINED_FUNCTION_35_6(&a14);
    v160 = v213;
    sub_1BC7C1744(v167, v168, &qword_1BC8FEA60);
    (*(v140 + 8))(v163, v151);
LABEL_62:
    sub_1BC7C1744(v160, &qword_1EBCF5D58, &qword_1BC903E30);
    v169 = &off_1E7FF5000;
LABEL_63:
    v170 = [v89 v169[257]];
    if (v170)
    {
      v171 = v170;
      v172 = v211;
      sub_1BC8F71B4();

      v173 = *(v140 + 32);
      v174 = v78;
      v175 = v224;
      v173(v212, v172, v224);
      v176 = [v174 v169[257]];
      if (v176)
      {
        v177 = v176;
        v178 = v206;
        sub_1BC8F71B4();

        v179 = v207;
        v173(v207, v178, v175);
        sub_1BC8F7184();
        v180 = *(v140 + 8);
        v180(v179, v175);
        v181 = OUTLINED_FUNCTION_63_1();
        (v180)(v181);
        goto LABEL_22;
      }

      v195 = OUTLINED_FUNCTION_63_1();
      v196(v195);
    }

    v197 = [v89 v169[257]];
    if (!v197)
    {
      v146 = 1;
      v145 = v210;
      goto LABEL_50;
    }

    v144 = v197;
    v145 = v210;
    goto LABEL_48;
  }

  v182 = v158 + v152;
  v183 = v217;
  (*(v140 + 32))(v217, v182, v151);
  OUTLINED_FUNCTION_1_18();
  sub_1BC8556EC(v184, v185, MEMORY[0x1E6969550]);
  LODWORD(v222) = sub_1BC8F7BC4();
  v186 = *(v140 + 8);
  v186(v183, v151);
  OUTLINED_FUNCTION_49_4(v200);
  OUTLINED_FUNCTION_49_4(v201);
  v186(v163, v151);
  v187 = OUTLINED_FUNCTION_29();
  sub_1BC7C1744(v187, v188, &qword_1BC8FEA60);
  v169 = &off_1E7FF5000;
  if ((v222 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_67:
  v189 = MessageType.init(rawValue:)([v89 messageType]);
  if ((v189 & 0x10000) != 0)
  {
    __break(1u);
    goto LABEL_77;
  }

  sub_1BC80BF98(v189);
  v226 = v89;
  v190 = v89;
  v191 = v208;
  swift_getAtKeyPath();
  v192 = sub_1BC8F7264();
  OUTLINED_FUNCTION_43(v191, 1, v192);
  if (v113)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v225 = v78;
  v193 = v78;
  v194 = v209;
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_43(v194, 1, v192);
  if (!v113)
  {

    MEMORY[0x1BFB28630](v191, v194);

    v125 = *(*(v192 - 8) + 8);
    v125(v194, v192);
    v126 = v191;
    v127 = v192;
    goto LABEL_71;
  }

LABEL_78:
  __break(1u);
}

uint64_t static FTStoredMessage.== infix(_:_:)(void *a1, void *a2)
{
  v254 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v248 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_4();
  v244 = v10;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D58, &qword_1BC903E30);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v247 = v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_47();
  v250 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v16 = OUTLINED_FUNCTION_25(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_4();
  v246 = v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_4();
  v249 = v20;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_20_4();
  v245 = v22;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_4();
  v252 = v24;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_47();
  v253 = v26;
  v27 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_4();
  v255 = v31;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B40, &unk_1BC904FF0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_53_5();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_20_4();
  v259 = v34;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_11_10();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v37 = OUTLINED_FUNCTION_25(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_20_4();
  v258 = v41;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_20_4();
  v256 = v43;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_20_4();
  v257 = v45;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_19_13();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v239 - v49;
  v260 = a1;
  v51 = [a1 recordUUID];
  if (v51)
  {
    v52 = v51;
    sub_1BC8F7244();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  OUTLINED_FUNCTION_58_2(v50, v53);
  v261 = a2;
  v54 = [a2 recordUUID];
  if (v54)
  {
    v55 = v54;
    sub_1BC8F7244();
  }

  OUTLINED_FUNCTION_44_7(v5);
  v56 = *(v262 + 48);
  sub_1BC7C4DAC(v50, v4, &unk_1EBCF5D70, &qword_1BC8FC740);
  sub_1BC7C4DAC(v5, v4 + v56, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_6_15(v4);
  if (v57)
  {
    OUTLINED_FUNCTION_71_0(v5);
    OUTLINED_FUNCTION_71_0(v50);
    OUTLINED_FUNCTION_6_15(v4 + v56);
    if (v57)
    {
      v240 = v2;
      sub_1BC7C1744(v4, &unk_1EBCF5D70, &qword_1BC8FC740);
      goto LABEL_16;
    }

LABEL_14:
    v58 = &qword_1EBCF5B40;
    v59 = &unk_1BC904FF0;
    v60 = v4;
    goto LABEL_30;
  }

  sub_1BC7C4DAC(v4, v3, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_6_15(v4 + v56);
  if (v57)
  {
    OUTLINED_FUNCTION_40_6(v5);
    OUTLINED_FUNCTION_40_6(v50);
    (*(v29 + 8))(v3, v27);
    goto LABEL_14;
  }

  v240 = v2;
  v61 = v4 + v56;
  v62 = v255;
  (*(v29 + 32))(v255, v61, v27);
  OUTLINED_FUNCTION_2_18();
  sub_1BC8556EC(v63, v64, MEMORY[0x1E69695C8]);
  v65 = OUTLINED_FUNCTION_36_8();
  HIDWORD(v239) = OUTLINED_FUNCTION_85_0(v65, v66, v67, v68);
  v69 = v29;
  v70 = *(v29 + 8);
  v70(v62, v27);
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C1744(v71, v72, v73);
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C1744(v74, v75, v76);
  v77 = OUTLINED_FUNCTION_82();
  (v70)(v77);
  v29 = v69;
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C1744(v78, v79, v80);
  if ((v239 & 0x100000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v81 = v260;
  v82 = [v260 conversationID];
  if (v82)
  {
    v83 = v82;
    v84 = v257;
    sub_1BC8F7244();

    v85 = 0;
    v86 = v261;
    v87 = v258;
    v88 = v259;
  }

  else
  {
    v85 = 1;
    v86 = v261;
    v87 = v258;
    v88 = v259;
    v84 = v257;
  }

  v89 = v256;
  OUTLINED_FUNCTION_58_2(v84, v85);
  v90 = [v86 conversationID];
  if (v90)
  {
    v91 = v90;
    sub_1BC8F7244();
  }

  OUTLINED_FUNCTION_44_7(v89);
  v92 = *(v262 + 48);
  OUTLINED_FUNCTION_56_2(v84, v88);
  OUTLINED_FUNCTION_56_2(v89, v88 + v92);
  OUTLINED_FUNCTION_6_15(v88);
  if (v57)
  {
    v93 = OUTLINED_FUNCTION_36_8();
    sub_1BC7C1744(v93, v94, &qword_1BC8FC740);
    OUTLINED_FUNCTION_40_6(v84);
    OUTLINED_FUNCTION_6_15(v88 + v92);
    if (v57)
    {
      v259 = v29;
      v95 = v27;
      sub_1BC7C1744(v88, &unk_1EBCF5D70, &qword_1BC8FC740);
      goto LABEL_34;
    }

LABEL_29:
    v58 = &qword_1EBCF5B40;
    v59 = &unk_1BC904FF0;
    v60 = v88;
    goto LABEL_30;
  }

  sub_1BC7C4DAC(v88, v87, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_6_15(v88 + v92);
  if (v96)
  {
    v97 = OUTLINED_FUNCTION_36_8();
    sub_1BC7C1744(v97, v98, &qword_1BC8FC740);
    OUTLINED_FUNCTION_40_6(v84);
    (*(v29 + 8))(v87, v27);
    goto LABEL_29;
  }

  v101 = v88 + v92;
  v102 = v255;
  (*(v29 + 32))(v255, v101, v27);
  OUTLINED_FUNCTION_2_18();
  v105 = sub_1BC8556EC(v103, v104, MEMORY[0x1E69695C8]);
  LODWORD(v258) = OUTLINED_FUNCTION_85_0(v87, v102, v106, v105);
  v259 = v29;
  v107 = *(v29 + 8);
  v107(v102, v27);
  OUTLINED_FUNCTION_71_0(v89);
  OUTLINED_FUNCTION_71_0(v84);
  v108 = v87;
  v95 = v27;
  v107(v108, v27);
  OUTLINED_FUNCTION_71_0(v88);
  if ((v258 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  v109 = [v81 messageType];
  v110 = v261;
  if (v109 != [v261 messageType])
  {
    goto LABEL_31;
  }

  v111 = OUTLINED_FUNCTION_60_2();
  sub_1BC7C19F8(v111, v112);
  v114 = v113;
  sub_1BC7C19F8(v110, &selRef_from);
  v99 = v115;
  if (v114)
  {
    v116 = v254;
    if (!v115)
    {
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_61_2();
    if (v57)
    {
      v120 = v114 == v99;
    }

    else
    {
      v120 = 0;
    }

    if (v120)
    {
    }

    else
    {
      OUTLINED_FUNCTION_23_5(v117, v118, v119);
      OUTLINED_FUNCTION_70_0();

      if ((&selRef_from & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v116 = v254;
    if (v115)
    {
      goto LABEL_55;
    }
  }

  v121 = OUTLINED_FUNCTION_60_2();
  sub_1BC7C19F8(v121, v122);
  OUTLINED_FUNCTION_41_10();
  v99 = v123;
  if (v114)
  {
    if (!v123)
    {
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_61_2();
    if (v57)
    {
      v127 = v114 == v99;
    }

    else
    {
      v127 = 0;
    }

    if (v127)
    {
    }

    else
    {
      OUTLINED_FUNCTION_23_5(v124, v125, v126);
      OUTLINED_FUNCTION_70_0();

      if ((&selRef_provider & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v123)
  {
    goto LABEL_55;
  }

  v128 = [v81 dateCreated];
  if (v128)
  {
    v129 = v128;
    v130 = v253;
    sub_1BC8F71B4();

    v131 = 0;
    v132 = v261;
    v133 = v250;
  }

  else
  {
    v131 = 1;
    v132 = v261;
    v133 = v250;
    v130 = v253;
  }

  OUTLINED_FUNCTION_58_2(v130, v131);
  v134 = [v132 dateCreated];
  if (v134)
  {
    v135 = v134;
    v136 = v252;
    sub_1BC8F71B4();
  }

  else
  {
    v136 = v252;
  }

  OUTLINED_FUNCTION_44_7(v136);
  v137 = *(v251 + 48);
  v138 = v253;
  OUTLINED_FUNCTION_47_5();
  sub_1BC7C4DAC(v139, v140, v141, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_56_2(v136, v133 + v137);
  OUTLINED_FUNCTION_6_15(v133);
  if (!v57)
  {
    v142 = v245;
    sub_1BC7C4DAC(v133, v245, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_6_15(v133 + v137);
    if (!v143)
    {
      v144 = v133;
      v145 = v248;
      v146 = v144 + v137;
      v147 = v244;
      (*(v248 + 32))(v244, v146, v116);
      OUTLINED_FUNCTION_1_18();
      v150 = sub_1BC8556EC(v148, v149, MEMORY[0x1E6969550]);
      v152 = OUTLINED_FUNCTION_85_0(v142, v147, v151, v150);
      v153 = *(v145 + 8);
      v153(v147, v254);
      OUTLINED_FUNCTION_49_4(v252);
      OUTLINED_FUNCTION_49_4(v253);
      v153(v142, v254);
      v116 = v254;
      v132 = v261;
      OUTLINED_FUNCTION_49_4(v144);
      if ((v152 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_40_6(v252);
    OUTLINED_FUNCTION_40_6(v253);
    (*(v248 + 8))(v142, v116);
LABEL_71:
    v58 = &qword_1EBCF5D58;
    v59 = &qword_1BC903E30;
    v60 = v133;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_40_6(v136);
  OUTLINED_FUNCTION_40_6(v138);
  OUTLINED_FUNCTION_6_15(v133 + v137);
  if (!v57)
  {
    goto LABEL_71;
  }

  sub_1BC7C1744(v133, &unk_1EBCF5D80, &qword_1BC8FEA60);
LABEL_73:
  v154 = [v81 dateModified];
  if (v154)
  {
    v155 = v154;
    v156 = v249;
    sub_1BC8F71B4();

    v157 = 0;
  }

  else
  {
    v157 = 1;
    v156 = v249;
  }

  OUTLINED_FUNCTION_58_2(v156, v157);
  v158 = [v132 dateModified];
  if (v158)
  {
    v159 = v158;
    v160 = v246;
    sub_1BC8F71B4();
  }

  else
  {
    v160 = v246;
  }

  OUTLINED_FUNCTION_44_7(v160);
  v161 = *(v251 + 48);
  v162 = v249;
  v163 = v247;
  OUTLINED_FUNCTION_56_2(v249, v247);
  v164 = v163;
  sub_1BC7C4DAC(v160, v163 + v161, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_6_15(v163);
  if (v57)
  {
    OUTLINED_FUNCTION_40_6(v160);
    v165 = v247;
    sub_1BC7C1744(v162, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_6_15(v165 + v161);
    if (v57)
    {
      sub_1BC7C1744(v165, &unk_1EBCF5D80, &qword_1BC8FEA60);
LABEL_89:
      v176 = [v81 isRead];
      if (v176 != [v132 isRead])
      {
        goto LABEL_31;
      }

      [v81 duration];
      v178 = v177;
      [v132 duration];
      if (v178 != v179)
      {
        goto LABEL_31;
      }

      v180 = [v81 mailboxType];
      if (v180 != [v132 mailboxType])
      {
        goto LABEL_31;
      }

      v181 = [v81 isSensitive];
      if (v181 != [v132 isSensitive])
      {
        goto LABEL_31;
      }

      v182 = OUTLINED_FUNCTION_60_2();
      sub_1BC7C19F8(v182, v183);
      v185 = v184;
      v186 = OUTLINED_FUNCTION_36_8();
      sub_1BC7C19F8(v186, v187);
      v99 = v188;
      if (v185)
      {
        if (!v188)
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_61_2();
        if (v57)
        {
          v192 = v185 == v99;
        }

        else
        {
          v192 = 0;
        }

        if (v192)
        {
        }

        else
        {
          OUTLINED_FUNCTION_23_5(v189, v190, v191);
          OUTLINED_FUNCTION_70_0();

          if ((&selRef_recipient & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v188)
      {
        goto LABEL_55;
      }

      v193 = [v260 transcriptionStatus];
      if (v193 != [v261 transcriptionStatus])
      {
        goto LABEL_31;
      }

      sub_1BC7C19F8(v260, &selRef_simID);
      OUTLINED_FUNCTION_41_10();
      v99 = v194;
      if (v185)
      {
        if (!v194)
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_61_2();
        if (v57)
        {
          v198 = v185 == v99;
        }

        else
        {
          v198 = 0;
        }

        if (v198)
        {
        }

        else
        {
          OUTLINED_FUNCTION_23_5(v195, v196, v197);
          OUTLINED_FUNCTION_70_0();

          if ((&selRef_simID & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v194)
      {
        goto LABEL_55;
      }

      sub_1BC7C19F8(v260, &selRef_quality);
      OUTLINED_FUNCTION_41_10();
      v99 = v199;
      if (v185)
      {
        if (v199)
        {
          OUTLINED_FUNCTION_61_2();
          if (v57)
          {
            v203 = v185 == v99;
          }

          else
          {
            v203 = 0;
          }

          if (v203)
          {
          }

          else
          {
            OUTLINED_FUNCTION_23_5(v200, v201, v202);
            OUTLINED_FUNCTION_70_0();

            if ((&selRef_quality & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_128;
        }

LABEL_124:

        return v99 & 1;
      }

      if (!v199)
      {
LABEL_128:
        v204 = [v260 reminderUUID];
        if (v204)
        {
          v205 = v204;
          sub_1BC8F7244();
        }

        v206 = 1;
        v207 = OUTLINED_FUNCTION_37_9();
        OUTLINED_FUNCTION_73_0(v207, v208);
        v209 = [v261 reminderUUID];
        if (v209)
        {
          v210 = v209;
          sub_1BC8F7244();

          v206 = 0;
        }

        v211 = v242;
        OUTLINED_FUNCTION_73_0(v242, v206);
        v212 = *(v262 + 48);
        OUTLINED_FUNCTION_37_9();
        v213 = v240;
        OUTLINED_FUNCTION_47_5();
        sub_1BC7C4DAC(v214, v215, v216, &qword_1BC8FC740);
        OUTLINED_FUNCTION_56_2(v211, v213 + v212);
        v217 = v213;
        v218 = v213;
        v219 = v95;
        OUTLINED_FUNCTION_43(v218, 1, v95);
        if (v57)
        {
          v220 = OUTLINED_FUNCTION_35_6(&v263);
          sub_1BC7C1744(v220, v221, &qword_1BC8FC740);
          v222 = OUTLINED_FUNCTION_35_6(&v264);
          sub_1BC7C1744(v222, v223, &qword_1BC8FC740);
          OUTLINED_FUNCTION_43(v217 + v212, 1, v95);
          if (v57)
          {
            sub_1BC7C1744(v217, &unk_1EBCF5D70, &qword_1BC8FC740);
            LOBYTE(v99) = 1;
            return v99 & 1;
          }
        }

        else
        {
          sub_1BC7C4DAC(v217, v241, &unk_1EBCF5D70, &qword_1BC8FC740);
          OUTLINED_FUNCTION_43(v217 + v212, 1, v95);
          if (!v224)
          {
            v229 = v259;
            v230 = v255;
            (*(v259 + 32))(v255, v217 + v212, v219);
            OUTLINED_FUNCTION_2_18();
            sub_1BC8556EC(v231, v232, MEMORY[0x1E69695C8]);
            v233 = v241;
            OUTLINED_FUNCTION_36_8();
            LOBYTE(v99) = sub_1BC8F7BC4();
            v234 = *(v229 + 8);
            v234(v230, v219);
            v235 = OUTLINED_FUNCTION_35_6(&v263);
            sub_1BC7C1744(v235, v236, &qword_1BC8FC740);
            v237 = OUTLINED_FUNCTION_35_6(&v264);
            sub_1BC7C1744(v237, v238, &qword_1BC8FC740);
            v234(v233, v219);
            sub_1BC7C1744(v217, &unk_1EBCF5D70, &qword_1BC8FC740);
            return v99 & 1;
          }

          v225 = OUTLINED_FUNCTION_35_6(&v263);
          sub_1BC7C1744(v225, v226, &qword_1BC8FC740);
          v227 = OUTLINED_FUNCTION_35_6(&v264);
          sub_1BC7C1744(v227, v228, &qword_1BC8FC740);
          (*(v259 + 8))(v241, v95);
        }

        v58 = &qword_1EBCF5B40;
        v59 = &unk_1BC904FF0;
        v60 = v217;
        goto LABEL_30;
      }

LABEL_55:

      goto LABEL_31;
    }
  }

  else
  {
    v166 = v243;
    sub_1BC7C4DAC(v163, v243, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_6_15(v163 + v161);
    if (!v167)
    {
      v168 = v248;
      v169 = v164 + v161;
      v170 = v244;
      (*(v248 + 32))(v244, v169, v116);
      OUTLINED_FUNCTION_1_18();
      v173 = sub_1BC8556EC(v171, v172, MEMORY[0x1E6969550]);
      LODWORD(v258) = OUTLINED_FUNCTION_85_0(v166, v170, v174, v173);
      v175 = *(v168 + 8);
      v175(v170, v116);
      OUTLINED_FUNCTION_49_4(v246);
      OUTLINED_FUNCTION_49_4(v249);
      v175(v166, v116);
      v132 = v261;
      OUTLINED_FUNCTION_49_4(v164);
      if ((v258 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_89;
    }

    OUTLINED_FUNCTION_40_6(v246);
    v165 = v247;
    sub_1BC7C1744(v249, &unk_1EBCF5D80, &qword_1BC8FEA60);
    (*(v248 + 8))(v166, v116);
  }

  v58 = &qword_1EBCF5D58;
  v59 = &qword_1BC903E30;
  v60 = v165;
LABEL_30:
  sub_1BC7C1744(v60, v58, v59);
LABEL_31:
  LOBYTE(v99) = 0;
  return v99 & 1;
}

uint64_t sub_1BC85510C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BC8F7474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FaceTimeMessageStore_Summary(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    sub_1BC8F7424();
    if (a1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1 <= 0x7FFFFFFF)
    {
      *v12 = a1;
      *(v12 + 1) = a2;
      *(v12 + 2) = a3;
      sub_1BC8F7464();
      sub_1BC8556EC(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary, &unk_1BC909F40);
      sub_1BC8F7564();
      (*(v7 + 8))(v9, v6);
      sub_1BC83ED08(v12);
      return v22[2];
    }

    __break(1u);
    swift_once();
    v13 = sub_1BC8F7734();
    __swift_project_value_buffer(v13, qword_1EDC2B3A8);
    v14 = a3;
    v15 = sub_1BC8F7714();
    v16 = sub_1BC8F81F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      v19 = a3;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1BC7A3000, v15, v16, "Failed to deserialize storedMessage summaryData with error %{public}@", v17, 0xCu);
      sub_1BC7C1744(v18, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v18, -1, -1);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1BC855480()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BC8554C4()
{
  sub_1BC8F6D24();
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BC85553C(void *a1)
{
  v1 = [a1 transcript];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F70D4();

  return v3;
}

uint64_t sub_1BC8555B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return v4;
}

uint64_t sub_1BC85564C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceTimeMessageStore_Summary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC8556EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_1BC8037DC(v0 - 136);
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_83_1(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 272);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1BC8F7BC4();
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1BC8557D4()
{
  type metadata accessor for MessageStoreController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDC2B1B0 = result;
  return result;
}

id sub_1BC85582C()
{
  if (qword_1EDC1DD40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC2B1B0;
  qword_1EDC2B320 = qword_1EDC2B1B0;
  *algn_1EDC2B328 = 0x617A696C61636F4CLL;
  qword_1EDC2B330 = 0xEB00000000656C62;

  return v1;
}

uint64_t sub_1BC8558B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      v20 = MEMORY[0x1E69E7CC0];
      v9 = &v20;
      sub_1BC8F8684();
      if (v8 < 0)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1BFB29A00](v10, a1);
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v12 = *(a1 + 8 * v10 + 32);
        }

        v9 = v12;
        v18 = v12;
        sub_1BC85EDC0(&v18, a2, a3, a4, &v19);
        if (v6)
        {
          goto LABEL_19;
        }

        v6 = 0;

        sub_1BC8F8654();
        sub_1BC8F8694();
        sub_1BC8F86A4();
        sub_1BC8F8664();
        ++v10;
        if (v11 == v8)
        {

          v13 = v20;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v8 = sub_1BC8F8504();
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:

    __break(1u);
  }

  else
  {
LABEL_16:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_17:

    return v13;
  }

  return result;
}

uint64_t sub_1BC855A68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v55 - v12;
  v65 = sub_1BC8F7264();
  v13 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v77 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D90, &qword_1BC904138);
  v15 = MEMORY[0x1EEE9AC00](v64);
  v76 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v55 - v17;
  v18 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v55 = v1;
    v82 = MEMORY[0x1E69E7CC0];
    sub_1BC8F8684();
    result = sub_1BC800458(a1);
    v22 = 0;
    v23 = a1 + 64;
    v62 = v13 + 2;
    v61 = v13 + 4;
    v57 = v20;
    v56 = a1 + 72;
    v58 = v13;
    v60 = v18;
    v59 = a1 + 64;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v23 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_21;
      }

      if (*(a1 + 36) != v20)
      {
        goto LABEL_22;
      }

      v73 = 1 << result;
      v74 = result >> 6;
      v71 = v22;
      v72 = v20;
      v70 = v21;
      v25 = v63;
      v24 = v64;
      v26 = &v63[*(v64 + 48)];
      v27 = *(a1 + 48) + v13[9] * result;
      v28 = v13[2];
      v79 = result;
      v29 = v65;
      v28(v63, v27, v65);
      v30 = *(a1 + 56) + 24 * v79;
      v75 = *(v30 + 16);
      v31 = v75;
      *v26 = *v30;
      v26[2] = v31;
      v32 = v13[4];
      v33 = v76;
      v32(v76, v25, v29);
      v34 = (v33 + *(v24 + 48));
      v35 = a1;
      v37 = *v26;
      v36 = v26[1];
      v38 = v26[2];
      *v34 = v37;
      v34[1] = v36;
      v34[2] = v38;
      v28(v77, v33, v29);
      __swift_storeEnumTagSinglePayload(v78, 1, 1, v29);
      v39 = v66;
      __swift_storeEnumTagSinglePayload(v66, 1, 1, v29);
      v40 = sub_1BC8F7014();
      v41 = v68;
      __swift_storeEnumTagSinglePayload(v68, 1, 1, v40);
      v42 = sub_1BC8F71E4();
      v43 = v69;
      __swift_storeEnumTagSinglePayload(v69, 1, 1, v42);
      v81[0] = v37;
      v81[1] = v36;
      a1 = v35;
      v81[2] = v38;
      v44 = v67;
      __swift_storeEnumTagSinglePayload(v67, 1, 1, v29);
      objc_allocWithZone(type metadata accessor for MessageUpdate(0));

      v80 = 1;
      MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:reminderUUID:)(v77, v78, v39, 0, 0, 0, 1, 2, 0, 1, v54, 0, 1, 0, 0, 0, 1, 0, 2, v41, 0, 0, v43, 0, 1, v81, 0, v44);
      sub_1BC862F74(v76, &qword_1EBCF5D90, &qword_1BC904138);
      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      result = v79;
      v45 = 1 << *(a1 + 32);
      if (v79 >= v45)
      {
        goto LABEL_23;
      }

      v23 = v59;
      v46 = *(v59 + 8 * v74);
      v47 = v60;
      if ((v46 & v73) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v72)
      {
        goto LABEL_25;
      }

      v48 = v46 & (-2 << (v79 & 0x3F));
      if (v48)
      {
        v45 = __clz(__rbit64(v48)) | v79 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = v74 << 6;
        v50 = v74 + 1;
        v51 = (v56 + 8 * v74);
        while (v50 < (v45 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            sub_1BC7FBED8(v79, v72, v70 & 1);
            v45 = __clz(__rbit64(v52)) + v49;
            goto LABEL_17;
          }
        }

        sub_1BC7FBED8(v79, v72, v70 & 1);
      }

LABEL_17:
      v21 = 0;
      v22 = v71 + 1;
      result = v45;
      v20 = v57;
      v13 = v58;
      if (v71 + 1 == v47)
      {
        return v82;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC8560F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_1(a2 + 16, v3);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BC8565F8();
  }

  return result;
}

id sub_1BC856148()
{
  v1 = v0;
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3C0);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_20_8(v4))
  {
    v5 = OUTLINED_FUNCTION_21_1();
    v6 = OUTLINED_FUNCTION_28();
    v15 = v6;
    *v5 = 136446210;
    OUTLINED_FUNCTION_31_0();
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000016, v7, &v15);
    OUTLINED_FUNCTION_25_9();
    _os_log_impl(v8, v9, v10, v11, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6();
  }

  result = [*(v1 + 104) voicemailSearchEnabled];
  if (result)
  {
    type metadata accessor for DeferredIndexingTask();
    swift_allocObject();

    sub_1BC8E6040(v13);
    if (qword_1EDC1ECD8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E10, &qword_1BC9041E0);
    swift_allocObject();
    swift_retain_n();
    OUTLINED_FUNCTION_40();
    *(v1 + 168) = sub_1BC862B7C();

    sub_1BC85E13C(sub_1BC861734);

    type metadata accessor for SummaryIndexingTask();
    swift_allocObject();

    sub_1BC8E6040(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E18, &qword_1BC9041E8);
    swift_allocObject();
    OUTLINED_FUNCTION_40();
    *(v1 + 176) = sub_1BC862B7C();

    sub_1BC85E13C(sub_1BC8614B0);
  }

  return result;
}

uint64_t sub_1BC8563D8(uint64_t a1)
{
  *(v1 + 160) = a1;
  swift_retain_n();

  *(*(v1 + 128) + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_analyticsManager) = a1;
}

void sub_1BC856440()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1BC8F7294();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_64_1();
  v5 = *(v0 + 152);
  OUTLINED_FUNCTION_31_0();
  v6 = sub_1BC8F7BE4();
  v7 = [v5 stringForKey_];

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = sub_1BC8F7C24();
  v10 = v9;

  sub_1BC8F7284();
  v11 = sub_1BC8F7274();
  v13 = v12;
  (*(v3 + 8))(v0, v1);
  if (v11 == v8 && v13 == v10)
  {

    goto LABEL_9;
  }

  v15 = sub_1BC8F8AA4();

  if ((v15 & 1) == 0)
  {
LABEL_7:
    type metadata accessor for SpotlightIndexManagerUtilities();
    v17 = 8;

    sub_1BC7E46FC(v16, &v17, v5);
  }

LABEL_9:
  OUTLINED_FUNCTION_24();
}

void sub_1BC8565F8()
{
  v1 = v0;
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3C0);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_20_8(v4))
  {
    v5 = OUTLINED_FUNCTION_36();
    *v5 = 0;
    OUTLINED_FUNCTION_25_9();
    _os_log_impl(v6, v7, v8, v9, v5, 2u);
    OUTLINED_FUNCTION_6();
  }

  v10 = *(v1 + 136);
  v12[4] = sub_1BC863098;
  v12[5] = v1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BC8568B0;
  v12[3] = &block_descriptor_115;
  v11 = _Block_copy(v12);

  [v10 getLastUpdatedCallDirectoryInfoWithReply_];
  _Block_release(v11);
}

double sub_1BC856740(uint64_t a1)
{
  if (a1 >= 1)
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v3 = sub_1BC8F7734();
    __swift_project_value_buffer(v3, qword_1EDC2B3C0);
    v4 = sub_1BC8F7714();
    v5 = sub_1BC8F8204();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134283521;
      *(v6 + 4) = a1;
      _os_log_impl(&dword_1BC7A3000, v4, v5, "Updating Index for phoneNumber: %{private}lld", v6, 0xCu);
      MEMORY[0x1BFB2AA50](v6, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC8FC230;
    type metadata accessor for SpotlightIndexManagerUtilities();
    *(v7 + 32) = static SpotlightIndexManagerUtilities.lastFourDigits(from:)();
    *(v7 + 40) = v8;
    sub_1BC859344(v7, 0, 0);
  }

  return result;
}

void sub_1BC8568B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1BC856940(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1BC856984(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_1_19(sub_1BC85699C);
}

uint64_t sub_1BC85699C()
{
  OUTLINED_FUNCTION_32();
  if ([*(v0[23] + 104) voicemailSearchEnabled])
  {
    if (sub_1BC7C0454(v0[22]))
    {
      v1 = swift_task_alloc();
      v0[24] = v1;
      *v1 = v0;
      v1[1] = sub_1BC856AF8;
      v2 = OUTLINED_FUNCTION_28_9(v0[22]);

      return sub_1BC857248(v2);
    }

    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v4 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v4, qword_1EDC2B3C0);
    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v6))
    {
      v7 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v7);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_18_12();
    }
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_1BC856AF8()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_11_3();
  *v5 = v4;
  v2[25] = v6;
  v2[26] = v7;

  v8 = swift_task_alloc();
  v2[27] = v8;
  *v8 = v4;
  v8[1] = sub_1BC856C48;
  v9 = OUTLINED_FUNCTION_28_9(v1[22]);

  return sub_1BC857560(v9);
}

uint64_t sub_1BC856C48()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC856D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v14 = sub_1BC8F7734();
  v12[28] = __swift_project_value_buffer(v14, qword_1EDC2B3C0);
  v15 = sub_1BC8F7714();
  v16 = sub_1BC8F8204();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_118(v17);
    _os_log_impl(&dword_1BC7A3000, v15, v16, "Finished fetching attributes", v13, 2u);
    OUTLINED_FUNCTION_9_0();
  }

  sub_1BC8579BC();

  v18 = sub_1BC8F7714();
  v19 = sub_1BC8F8204();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_36();
    *v20 = 0;
    _os_log_impl(&dword_1BC7A3000, v18, v19, "Finished populating subtitle", v20, 2u);
    OUTLINED_FUNCTION_6();
  }

  v21 = v12[23];

  v22 = *(v21 + 96);
  sub_1BC7D9730(0, &qword_1EDC1DE38, 0x1E6964E80);
  v23 = sub_1BC8F7E34();
  v12[29] = v23;

  v12[2] = v12;
  v12[3] = sub_1BC856F84;
  v24 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1BC890F2C;
  v12[13] = &block_descriptor_109;
  v12[14] = v24;
  [v22 indexSearchableItems:v23 completionHandler:v12 + 10];
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DEC8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1BC856F84()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC857080()
{
  OUTLINED_FUNCTION_32();

  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v2))
  {
    v3 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v3);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_18_12();
  }

  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_1BC857120()
{
  OUTLINED_FUNCTION_9_10();
  v16 = v0;
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  swift_willThrow();

  v4 = v3;
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F81E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    OUTLINED_FUNCTION_21_1();
    v15 = OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_94(4.8751e-34);
    v8 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v8, v9, &v15);
    OUTLINED_FUNCTION_14_7();
    *(v3 + 4) = v1;
    OUTLINED_FUNCTION_50_5(&dword_1BC7A3000, v10, v11, "Encountered an error while indexing messages: %{public}s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v12 = *(v0 + 240);
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_1BC857248(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_1_19(sub_1BC857288);
}

uint64_t sub_1BC857288()
{
  OUTLINED_FUNCTION_9_10();
  if (sub_1BC7C0454(v0[2]))
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v1 = sub_1BC8F7734();
    __swift_project_value_buffer(v1, qword_1EDC2B3C0);

    v2 = sub_1BC8F7714();
    v3 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v3))
    {
      v4 = OUTLINED_FUNCTION_21_1();
      v5 = OUTLINED_FUNCTION_100_0(v4, 3.9122e-34);
      OUTLINED_FUNCTION_78_2(v5);

      OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v6, v7, "Indexing %{public}ld messages");
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
    }

    v38 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BC903280;
    v20 = *MEMORY[0x1E695C258];
    v21 = *MEMORY[0x1E695C330];
    v22 = MEMORY[0x1E695C208];
    *(v19 + 32) = *MEMORY[0x1E695C258];
    *(v19 + 40) = v21;
    v23 = *v22;
    *(v19 + 48) = *v22;
    v39 = v19;
    v24 = objc_opt_self();
    v25 = v20;
    v26 = v21;
    v27 = v23;
    v28 = [v24 descriptorForRequiredKeysForStyle_];
    MEMORY[0x1BFB29230]();
    v29 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v29 >> 1)
    {
      OUTLINED_FUNCTION_37(v29);
      sub_1BC8F7E94();
    }

    v31 = v0[3];
    v30 = v0[4];
    v32 = v0[2];
    OUTLINED_FUNCTION_45_1();
    sub_1BC8F7ED4();
    sub_1BC85EA64(v32, v39);

    v33 = OUTLINED_FUNCTION_45_2();
    v17 = sub_1BC8558B4(v33, v34, v31, v35, v30);

    v18 = v38;
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v8 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v8, qword_1EDC2B3C0);
    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v10))
    {
      v11 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v11);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    v17 = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E7CC0];
  }

  v36 = v0[1];

  return v36(v17, v18);
}

uint64_t sub_1BC857560(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return OUTLINED_FUNCTION_1_19(sub_1BC857578);
}

uint64_t sub_1BC857578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  v44 = v12;
  v13 = v12[18];
  v14 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v15 = sub_1BC7C0454(v13);
  v23 = v15;
  v24 = 0;
  v25 = v13 & 0xC000000000000001;
  v26 = v13 & 0xFFFFFFFFFFFFFF8;
  v27 = v13 + 32;
  v28 = v14;
  while (v23 != v24)
  {
    if (v25)
    {
      v15 = MEMORY[0x1BFB29A00](v24, v44[18]);
    }

    else
    {
      if (v24 >= *(v26 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(v27 + 8 * v24);
    }

    v29 = v15;
    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v15, v16, v17, v18, v19, v20, v21, v22, v44, a10, v45, a12);
    }

    v31 = sub_1BC7C83A8();

    ++v24;
    if (v31)
    {
      MEMORY[0x1BFB29230]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      v15 = sub_1BC8F7ED4();
      v28 = v45;
      v24 = v30;
    }
  }

  a10 = v14;
  v45 = v14;
  v15 = sub_1BC7C0454(v28);
  v32 = v15;
  v33 = 0;
  while (v32 != v33)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v38 = OUTLINED_FUNCTION_40();
      v15 = MEMORY[0x1BFB29A00](v38);
    }

    else
    {
      if (v33 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v15 = *(v28 + 8 * v33 + 32);
    }

    v34 = v15;
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_28;
    }

    v36 = [objc_allocWithZone(MEMORY[0x1E69D8C48]) initWithHandle_];

    ++v33;
    if (v36)
    {
      MEMORY[0x1BFB29230]();
      v37 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v37 >> 1)
      {
        OUTLINED_FUNCTION_37(v37);
        sub_1BC8F7E94();
      }

      OUTLINED_FUNCTION_44_2();
      v15 = sub_1BC8F7ED4();
      a10 = v45;
      v33 = v35;
    }
  }

  v39 = v44[19];

  v40 = *(v39 + 112);
  sub_1BC7D9730(0, &qword_1EDC1DDB0, 0x1E69D8C48);
  v41 = sub_1BC8F7E34();
  v44[20] = v41;

  v44[2] = v44;
  v44[3] = sub_1BC857894;
  v42 = swift_continuation_init();
  v44[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE8, &qword_1BC9041C8);
  v44[10] = MEMORY[0x1E69E9820];
  v44[11] = 1107296256;
  v44[12] = sub_1BC860308;
  v44[13] = &block_descriptor_112;
  v44[14] = v42;
  [v40 updateCacheWithDestinationIDs:v41 completion:v44 + 10];
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DEC8](v15, v16, v17, v18, v19, v20, v21, v22, v44, a10, v45, a12);
}

uint64_t sub_1BC857894()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC857964()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v1();
}

void sub_1BC8579BC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  if (v0 >> 62)
  {
    v2 = sub_1BC8F8504();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    OUTLINED_FUNCTION_24();
    return;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB29A00](v3, v1) : *(v1 + 8 * v3 + 32);
      v5 = v4;
      sub_1BC862874(v4, &selRef_contentDescription);
      if (!v6)
      {
        v7 = sub_1BC862674(v5);
        if (!v7)
        {
          goto LABEL_14;
        }

        if (v7[2])
        {
          break;
        }
      }

LABEL_15:
      if (v2 == ++v3)
      {
        goto LABEL_16;
      }
    }

    v8 = v7[4];
    v9 = v7[5];

    v10 = sub_1BC860340(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_1BC86279C(v10, v12);
    }

LABEL_14:

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1BC857AF0()
{
  OUTLINED_FUNCTION_5();
  v1[22] = v2;
  v1[23] = v0;
  v3 = sub_1BC8F7264();
  v1[24] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[25] = v4;
  v1[26] = OUTLINED_FUNCTION_47_3();
  v5 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC857B94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63_2();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_82_1();
  a22 = v24;
  v27 = v24;
  if ([*(v24[23] + 104) voicemailSearchEnabled])
  {
    v28 = *(v24[22] + 16);
    if (v28)
    {
      if (qword_1EDC20730 != -1)
      {
        OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
      }

      v29 = sub_1BC8F7734();
      v24[27] = OUTLINED_FUNCTION_37_0(v29, qword_1EDC2B3C0);

      v30 = sub_1BC8F7714();
      v31 = sub_1BC8F8204();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_21_1();
        v33 = OUTLINED_FUNCTION_28();
        a13 = v33;
        *v32 = 136446210;
        v34 = OUTLINED_FUNCTION_44_2();
        v35 = MEMORY[0x1BFB29280](v34);
        v37 = sub_1BC7A9A4C(v35, v36, &a13);

        *(v32 + 4) = v37;
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9_0();
      }

      v43 = v24[25];
      v44 = v24[22];
      v87 = *(v27[23] + 96);
      a13 = MEMORY[0x1E69E7CC0];
      sub_1BC7AD404(0, v28, 0);
      v45 = a13;
      v46 = *(v43 + 16);
      v43 += 16;
      v47 = v44 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
      v88 = *(v43 + 56);
      v89 = v46;
      v90 = v43;
      v48 = (v43 - 8);
      do
      {
        v49 = v27[26];
        v50 = v27;
        v51 = v27[24];
        v89(v49, v47, v51);
        v52 = sub_1BC8F7204();
        v54 = v53;
        (*v48)(v49, v51);
        a13 = v45;
        v56 = v45[2];
        v55 = v45[3];
        if (v56 >= v55 >> 1)
        {
          v58 = OUTLINED_FUNCTION_37(v55);
          sub_1BC7AD404(v58, v56 + 1, 1);
          v45 = a13;
        }

        v45[2] = v56 + 1;
        v57 = &v45[2 * v56];
        v57[4] = v52;
        v57[5] = v54;
        v47 += v88;
        --v28;
        v27 = v50;
      }

      while (v28);
      v59 = sub_1BC8F7E34();
      v50[28] = v59;

      v50[2] = v50;
      v50[3] = sub_1BC857F74;
      v60 = swift_continuation_init();
      v50[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
      v50[10] = MEMORY[0x1E69E9820];
      v50[11] = 1107296256;
      v50[12] = sub_1BC890F2C;
      v50[13] = &block_descriptor_104;
      v50[14] = v60;
      [v87 deleteSearchableItemsWithIdentifiers:v59 completionHandler:v50 + 10];
      OUTLINED_FUNCTION_32_7();

      return MEMORY[0x1EEE6DEC8](v61, v62, v63, v64, v65, v66, v67, v68, v87, v88, v89, v90);
    }

    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v69 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v69, qword_1EDC2B3C0);
    v70 = sub_1BC8F7714();
    v71 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v71))
    {
      v72 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v72);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      OUTLINED_FUNCTION_18_12();
    }
  }

  OUTLINED_FUNCTION_32_7();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BC857F74()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC858070()
{
  OUTLINED_FUNCTION_32();

  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v2))
  {
    v3 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_81(v3);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_18_12();
  }

  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_1BC858118()
{
  OUTLINED_FUNCTION_9_10();
  v16 = v0;
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  swift_willThrow();

  v4 = v3;
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F81E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    OUTLINED_FUNCTION_21_1();
    v15 = OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_94(4.8751e-34);
    v8 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v8, v9, &v15);
    OUTLINED_FUNCTION_14_7();
    *(v3 + 4) = v1;
    OUTLINED_FUNCTION_50_5(&dword_1BC7A3000, v10, v11, "Encountered an error while indexing deleted messages: %{public}s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v12 = *(v0 + 232);
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_1BC858248()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1BC8F7264();
  v1[9] = v5;
  OUTLINED_FUNCTION_26(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_47_3();
  v7 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8588F8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC858D64()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1BC858E64()
{
  OUTLINED_FUNCTION_22_0();
  v1 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v1 != v0[15])
  {
    v2 = v0[6];
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB29A00](v1);
    }

    else
    {
      if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v3 = *(v2 + 8 * v1 + 32);
    }

    v4 = v3;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (sub_1BC8592D0())
    {
      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }

    ++v1;
  }

  v0[18] = v6;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_23_6(v5);

  sub_1BC856984(v6);
}

uint64_t sub_1BC858FB8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC8590B8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (*(*(v0 + 56) + 16))
  {

    v1 = sub_1BC8F7714();
    v2 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v2))
    {
      v3 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_71_2(v3, 3.9122e-34);
      OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v4, v5, "Removing deleted %{public}ld messages");
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
    }

    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_3_19(v15);
    OUTLINED_FUNCTION_112();

    return sub_1BC857AF0();
  }

  else
  {

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1BC8591CC()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

BOOL sub_1BC8592D0()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_17_1(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType, v5);
  if (*(v0 + v1) > 1u)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_17_1(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType, &v4);
  return *(v0 + v2) == 0;
}

uint64_t sub_1BC859344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  sub_1BC8333D4();
}

uint64_t sub_1BC859448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v11 = swift_task_alloc();
  v7[10] = v11;
  *v11 = v7;
  v11[1] = sub_1BC859504;

  return sub_1BC85AD80(a5, a6, a7);
}

uint64_t sub_1BC859504()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC859604()
{
  OUTLINED_FUNCTION_22_0();
  v35 = v0;
  v1 = v0[11];
  if (!v1)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v12 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v12, qword_1EDC2B3C0);
    v13 = sub_1BC8F7714();
    v14 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v14))
    {
      v15 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v15);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    goto LABEL_13;
  }

  if (v1 > 100)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v2 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3C0);
    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v4))
    {
      v5 = v0[11];
      v6 = OUTLINED_FUNCTION_21_1();
      *v6 = 134349056;
      *(v6 + 4) = v5;
      OUTLINED_FUNCTION_4();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
      OUTLINED_FUNCTION_18_12();
    }

    type metadata accessor for SpotlightIndexManagerUtilities();
    v34 = 64;
    static SpotlightIndexManagerUtilities.setVoicemailsNeedsDeferredReindexing(for:defaults:)(&v34, 0);
LABEL_13:
    OUTLINED_FUNCTION_27();

    return v21();
  }

  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v23 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v23, qword_1EDC2B3C0);
  v24 = sub_1BC8F7714();
  v25 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v25))
  {
    v26 = v0[11];
    v27 = OUTLINED_FUNCTION_21_1();
    *v27 = 134349056;
    *(v27 + 4) = v26;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    OUTLINED_FUNCTION_18_12();
  }

  v33 = swift_task_alloc();
  v0[13] = v33;
  *v33 = v0;
  v33[1] = sub_1BC859888;
  OUTLINED_FUNCTION_28_9(v0[7]);

  return sub_1BC859AA4();
}

uint64_t sub_1BC859888()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC859968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_110();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v23 = v18[12];
  v24 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v24, qword_1EDC2B3C0);
  v25 = v23;
  v26 = sub_1BC8F7714();
  v27 = sub_1BC8F81E4();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v18[12];
  if (v28)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_59_3(4.8149e-34);
    swift_getErrorValue();
    v30 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v30, v31, &a9);
    OUTLINED_FUNCTION_14_7();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_50_5(&dword_1BC7A3000, v32, v33, "Error checking messages count: %s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

uint64_t sub_1BC859AA4()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v1[6] = v0;
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  v1[7] = Request;
  OUTLINED_FUNCTION_25(Request);
  v1[8] = OUTLINED_FUNCTION_47_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_26(v9);
  v1[9] = v10;
  v1[10] = OUTLINED_FUNCTION_47_3();
  v11 = swift_task_alloc();
  v1[11] = v11;
  *v11 = v1;
  OUTLINED_FUNCTION_15_9(v11);

  return sub_1BC85A734(v7, v5, v3);
}

uint64_t sub_1BC859BC4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC859CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_91();
  v15 = v14[12];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v14[9];
    v62 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDD44(0, v16, 0);
    v18 = v62;
    v19 = v15 + 40;
    do
    {

      OUTLINED_FUNCTION_45_2();
      sub_1BC8F71F4();

      a11 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_37(v20);
        sub_1BC7DDD44(v23, v21 + 1, 1);
      }

      v22 = v14[10];
      *(v18 + 16) = v21 + 1;
      sub_1BC862FD0(v22, v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v21, &unk_1EBCF5D70, &qword_1BC8FC740);
      v19 += 16;
      --v16;
    }

    while (v16);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1BC85AA84(v18);

  if (v24)
  {
    v26 = v14[7];
    v25 = v14[8];
    v27 = v14[6];
    OUTLINED_FUNCTION_21_4();
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_1F3B36A78;
    v29 = v28 | 0x8000000000000000;
    OUTLINED_FUNCTION_21_4();
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_1F3B36AA0;
    v31 = v30 | 0x6000000000000000;
    OUTLINED_FUNCTION_21_4();
    v32 = swift_allocObject();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
    v34 = OUTLINED_FUNCTION_55(v33);
    *(v34 + 16) = xmmword_1BC8FEAA0;
    *(v34 + 32) = v29;
    *(v34 + 40) = v31;
    *(v32 + 16) = v34;
    OUTLINED_FUNCTION_21_4();
    v35 = swift_allocObject();
    *(v35 + 16) = v24;
    v36 = v35 | 0x1000000000000000;
    OUTLINED_FUNCTION_21_4();
    v37 = swift_allocObject();
    v14[14] = v37;
    v38 = OUTLINED_FUNCTION_55(v33);
    *(v38 + 16) = xmmword_1BC8FEAA0;
    *(v38 + 32) = v32 | 0xC000000000000000;
    *(v38 + 40) = v36;
    *(v37 + 16) = v38;

    sub_1BC8F7254();
    *(v25 + v26[5]) = v37 | 0xC000000000000000;
    *(v25 + v26[6]) = 10;
    *(v25 + v26[7]) = 0;
    v39 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    v40 = (v25 + v26[8]);
    *v40 = v39;
    v40[1] = v41;
    *(v25 + v26[9]) = 0x7FFFFFFFFFFFFFFFLL;
    *(v25 + v26[10]) = 0;
    __swift_project_boxed_opaque_existential_1((v27 + 16), *(v27 + 40));
    v42 = swift_task_alloc();
    v14[15] = v42;
    *v42 = v14;
    v42[1] = sub_1BC85A070;
    OUTLINED_FUNCTION_28_9(v14[8]);
    OUTLINED_FUNCTION_62_1();

    return sub_1BC7BF034();
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v45 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v45, qword_1EDC2B3C0);
    v46 = sub_1BC8F7714();
    v47 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_21(v47))
    {
      v48 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v48);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    OUTLINED_FUNCTION_101_0();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_62_1();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1BC85A070()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC85A170()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v1 = sub_1BC8F7734();
  v0[18] = __swift_project_value_buffer(v1, qword_1EDC2B3C0);

  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_21_1();
    v5 = OUTLINED_FUNCTION_100_0(v4, 3.9122e-34);
    OUTLINED_FUNCTION_78_2(v5);

    OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v6, v7, "Indexing %{public}ld messages");
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_1BC85A410;
  v9 = OUTLINED_FUNCTION_28_9(v0[16]);

  return sub_1BC856984(v9);
}

uint64_t sub_1BC85A2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_110();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  v23 = v18[8];

  sub_1BC7ADC24(v23);
  v24 = v18[17];
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v25 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v25, qword_1EDC2B3C0);
  v26 = v24;
  v27 = sub_1BC8F7714();
  v28 = sub_1BC8F81E4();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_59_3(4.8149e-34);
    swift_getErrorValue();
    v29 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v29, v30, &a9);
    OUTLINED_FUNCTION_14_7();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_58_3(&dword_1BC7A3000, v27, v28, "Error fetching messages: %s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_1BC85A410()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC85A510()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_72_1(v2);
  v4 = *(v0 + 64);
  if (v3)
  {
    *OUTLINED_FUNCTION_36() = 0;
    OUTLINED_FUNCTION_42_9();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  sub_1BC7ADC24(v4);
  OUTLINED_FUNCTION_101_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1BC85A5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_110();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  v23 = v18[13];
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v24 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v24, qword_1EDC2B3C0);
  v25 = v23;
  v26 = sub_1BC8F7714();
  v27 = sub_1BC8F81E4();

  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_59_3(4.8149e-34);
    swift_getErrorValue();
    v28 = sub_1BC8F8B84();
    sub_1BC7A9A4C(v28, v29, &a9);
    OUTLINED_FUNCTION_14_7();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_58_3(&dword_1BC7A3000, v26, v27, "Error fetching messages: %s");
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_1BC85A734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_1_19(sub_1BC85A750);
}

uint64_t sub_1BC85A750()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_21_4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1BC85B020(v6, v2, v1);
  v0[8] = v7;

  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v9 = swift_task_alloc();
  v0[10] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  *v9 = v0;
  v9[1] = sub_1BC85A8B0;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BC85A8B0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC85A9B4()
{
  OUTLINED_FUNCTION_5();

  v1 = OUTLINED_FUNCTION_79_1();

  return v2(v1);
}

uint64_t sub_1BC85AA14()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC85AA84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v21 - v6;
  v7 = sub_1BC8F7264();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v26 = a1;
  v27 = *(a1 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDB5C(0, v27, 0);
  v14 = 0;
  v15 = v28;
  v22 = v8;
  v16 = (v8 + 32);
  while (v27 != v14)
  {
    sub_1BC7E8B8C(v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v14, v23);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
      sub_1BC862F74(v5, &unk_1EBCF5D70, &qword_1BC8FC740);
      return 0;
    }

    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    v17 = *v16;
    (*v16)(v13, v5, v7);
    v17(v11, v13, v7);
    v28 = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1BC7DDB5C(v18 > 1, v19 + 1, 1);
      v15 = v28;
    }

    *(v15 + 16) = v19 + 1;
    v17((v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19), v11, v7);
    ++v14;
  }

  return v15;
}

uint64_t sub_1BC85AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_1_19(sub_1BC85AD9C);
}

uint64_t sub_1BC85AD9C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_21_4();
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = 0;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BC85B020(v5, v2, v1);
  v0[8] = v6;

  v7 = [v6 queryContext];
  [v7 setCounting_];

  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1BC85AF1C;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BC85AF1C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

id sub_1BC85B020(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1BC860F60(a1, a2, a3);
  OUTLINED_FUNCTION_24_4();
  v3 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
  v5 = OUTLINED_FUNCTION_55(v4);
  *(v5 + 16) = xmmword_1BC8FC230;
  *(v5 + 32) = sub_1BC8F7C24();
  *(v5 + 40) = v6;
  OUTLINED_FUNCTION_50_0();
  sub_1BC86273C();
  v7 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v8 = OUTLINED_FUNCTION_29();
  return sub_1BC86257C(v8, v9, v3);
}

id sub_1BC85B0D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DD0, &qword_1BC904178);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  v25 = sub_1BC862CAC;
  v26 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85B460;
  v24 = &block_descriptor_59;
  v11 = _Block_copy(&aBlock);

  [a2 setCountChangedHandler_];
  _Block_release(v11);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v25 = sub_1BC862CB4;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85B8C4;
  v24 = &block_descriptor_65;
  v14 = _Block_copy(&aBlock);

  v15 = a2;

  [v15 setCompletionHandler_];
  _Block_release(v14);
  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v16 = sub_1BC8F7734();
  __swift_project_value_buffer(v16, qword_1EDC2B3C0);
  v17 = sub_1BC8F7714();
  v18 = sub_1BC8F8204();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BC7A3000, v17, v18, "Beginning search query for contact change", v19, 2u);
    MEMORY[0x1BFB2AA50](v19, -1, -1);
  }

  return [v15 start];
}

uint64_t sub_1BC85B40C(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = __OFADD__(v5, a1);
  v7 = v5 + a1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t sub_1BC85B460(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1BC85B4B4(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if ([a2 isCancelled])
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v6 = sub_1BC8F7734();
    __swift_project_value_buffer(v6, qword_1EDC2B3C0);
    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F8204();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BC7A3000, v7, v8, "Search query is cancelled", v9, 2u);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DD0, &qword_1BC904178);
    sub_1BC8F7F64();
  }

  else if (a1)
  {
    v11 = a1;
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B3C0);
    v13 = a1;
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Fetching search results from Spotlight failed with error: %@", v16, 0xCu);
      sub_1BC862F74(v17, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DD0, &qword_1BC904178);
    sub_1BC8F7F64();
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B3C0);

    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F8204();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_beginAccess();
      *(v24 + 4) = *(a4 + 16);

      _os_log_impl(&dword_1BC7A3000, v22, v23, "Got %ld search results count for contact change query", v24, 0xCu);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DD0, &qword_1BC904178);
    sub_1BC8F7F74();
  }
}

void sub_1BC85B8C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1BC85B930(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_19(sub_1BC85B948);
}

uint64_t sub_1BC85B948()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_21_4();
  v1 = swift_allocObject();
  v0[5] = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v2 = sub_1BC85BC94();
  v0[6] = v2;
  v3 = [v2 queryContext];
  v4 = sub_1BC8F7E34();
  [v3 setFetchAttributes_];

  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D98, &qword_1BC904150);
  *v6 = v0;
  v6[1] = sub_1BC85BAC0;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BC85BAC0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC85BBC4()
{
  OUTLINED_FUNCTION_5();

  v1 = OUTLINED_FUNCTION_79_1();

  return v2(v1);
}

uint64_t sub_1BC85BC24()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v1();
}

id sub_1BC85BC94()
{
  sub_1BC8F85A4();
  v0 = sub_1BC8F7C24();
  v2 = v1;

  OUTLINED_FUNCTION_31_0();
  MEMORY[0x1BFB29120](0xD000000000000016);
  v3 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
  v5 = OUTLINED_FUNCTION_55(v4);
  *(v5 + 16) = xmmword_1BC8FC230;
  *(v5 + 32) = sub_1BC8F7C24();
  *(v5 + 40) = v6;
  OUTLINED_FUNCTION_50_0();
  sub_1BC86273C();
  v7 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v8 = OUTLINED_FUNCTION_29();
  return sub_1BC86257C(v8, v9, v3);
}

id sub_1BC85BDA4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DA0, &unk_1BC904158);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  v25 = sub_1BC862C08;
  v26 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85C634;
  v24 = &block_descriptor_3;
  v11 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v11);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v25 = sub_1BC862C28;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85B8C4;
  v24 = &block_descriptor_51;
  v14 = _Block_copy(&aBlock);

  v15 = a2;

  [v15 setCompletionHandler_];
  _Block_release(v14);
  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v16 = sub_1BC8F7734();
  __swift_project_value_buffer(v16, qword_1EDC2B3C0);
  v17 = sub_1BC8F7714();
  v18 = sub_1BC8F8204();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BC7A3000, v17, v18, "Beginning search query for contact change", v19, 2u);
    MEMORY[0x1BFB2AA50](v19, -1, -1);
  }

  return [v15 start];
}

void sub_1BC85C0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_1BC8F7264();
  v40 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  if (qword_1EDC20730 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B3C0);

    v13 = sub_1BC8F7714();
    v14 = sub_1BC8F8204();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      *(v15 + 4) = sub_1BC7C0454(a1);

      _os_log_impl(&dword_1BC7A3000, v13, v14, "Found %{public}ld messages with a summary", v15, 0xCu);
      MEMORY[0x1BFB2AA50](v15, -1, -1);
    }

    else
    {
    }

    v51 = sub_1BC7C0454(a1);
    if (!v51)
    {
      break;
    }

    if (v51 < 1)
    {
      __break(1u);
LABEL_30:
      sub_1BC8F8B44();
      __break(1u);
      return;
    }

    v16 = 0;
    v50 = a1 & 0xC000000000000001;
    v44 = a1;
    v45 = (v40 + 16);
    v46 = (v40 + 8);
    v47 = (v40 + 32);
    v42 = a2;
    v43 = v6;
    v41 = v11;
    while (1)
    {
      if (v50)
      {
        v17 = MEMORY[0x1BFB29A00](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 uniqueIdentifier];
      sub_1BC8F7C24();

      sub_1BC8F71F4();

      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {

        sub_1BC862F74(v6, &unk_1EBCF5D70, &qword_1BC8FC740);
        goto LABEL_24;
      }

      (*v47)(v11, v6, v7);
      v20 = sub_1BC8626CC([v18 attributeSet]);
      if (!v21)
      {
        (*v46)(v11, v7);

        goto LABEL_24;
      }

      v22 = v21;
      v48 = v20;
      v6 = *v45;
      v23 = v11;
      v11 = v49;
      a1 = v7;
      (*v45)(v49, v23, v7);
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v52 = *(a2 + 16);
      v24 = v52;
      *(a2 + 16) = 0x8000000000000000;
      v25 = sub_1BC83C928();
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      a2 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        break;
      }

      v11 = v25;
      v29 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DC0, &qword_1BC904168);
      if (sub_1BC8F8734())
      {
        v30 = sub_1BC83C928();
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_30;
        }

        v11 = v30;
      }

      v32 = v52;
      if (v29)
      {
        v33 = (v52[7] + 24 * v11);
        *v33 = 1;
        v33[1] = v48;
        v33[2] = v22;

        v7 = a1;
      }

      else
      {
        v52[(v11 >> 6) + 8] |= 1 << v11;
        v7 = a1;
        (v6)(v32[6] + *(v40 + 72) * v11, v49, a1);
        v34 = (v32[7] + 24 * v11);
        v35 = v48;
        *v34 = 1;
        v34[1] = v35;
        v34[2] = v22;
        v36 = v32[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_27;
        }

        v32[2] = v38;
      }

      v39 = *v46;
      (*v46)(v49, v7);
      a2 = v42;
      *(v42 + 16) = v32;

      swift_endAccess();

      v11 = v41;
      v39(v41, v7);
      v6 = v43;
      a1 = v44;
LABEL_24:
      if (v51 == ++v16)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }
}

double sub_1BC85C634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1BC7D9730(0, &qword_1EDC1DE38, 0x1E6964E80);
  v3 = sub_1BC8F7E54();

  v2(v3);

  return result;
}

void sub_1BC85C6B8(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if ([a2 isCancelled])
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v6 = sub_1BC8F7734();
    __swift_project_value_buffer(v6, qword_1EDC2B3C0);
    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F8204();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BC7A3000, v7, v8, "Summarized messages search query is cancelled", v9, 2u);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DA0, &unk_1BC904158);
    sub_1BC8F7F64();
  }

  else if (a1)
  {
    v11 = a1;
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B3C0);
    v13 = a1;
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Fetching search results for summarized messages in Spotlight failed with error: %@", v16, 0xCu);
      sub_1BC862F74(v17, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DA0, &unk_1BC904158);
    sub_1BC8F7F64();
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B3C0);

    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F8204();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_beginAccess();
      *(v24 + 4) = *(*(a4 + 16) + 16);

      _os_log_impl(&dword_1BC7A3000, v22, v23, "Got %ld search results for query", v24, 0xCu);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DA0, &unk_1BC904158);
    sub_1BC8F7F74();
  }
}

uint64_t sub_1BC85CAD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1BC85CB48()
{
  sub_1BC85CAD0();

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t sub_1BC85CBA0()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_1BC8F7294();
  v1[3] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_47_3();
  v4 = sub_1BC8F71E4();
  v1[6] = v4;
  OUTLINED_FUNCTION_26(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC85CCA4()
{
  OUTLINED_FUNCTION_32();
  if (![*(*(v0 + 16) + 104) voicemailSearchEnabled])
  {
    goto LABEL_8;
  }

  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v1 = sub_1BC8F7734();
  *(v0 + 80) = __swift_project_value_buffer(v1, qword_1EDC2B3C0);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_20_8(v3))
  {
    v4 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_118(v4);
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_9_0();
  }

  v10 = *(v0 + 16);

  type metadata accessor for SpotlightIndexManagerUtilities();
  v11 = *(v10 + 152);
  *(v0 + 88) = v11;
  v12 = static SpotlightIndexManagerUtilities.voicemailsNeedsDeferredReindexing(defaults:)(v11);
  *(v0 + 104) = v12;
  v13 = static SpotlightIndexManagerUtilities.voicemailsNeedIndexingDueToVersionMismatch(defaults:)(v11);
  *(v0 + 105) = v13 & 1;
  if ((v13 & 1) != 0 || v12)
  {
    sub_1BC8F71D4();
    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v17))
    {
      v18 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v18);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    v24 = swift_task_alloc();
    *(v0 + 96) = v24;
    *v24 = v0;
    v24[1] = sub_1BC85CEAC;

    return sub_1BC85E19C();
  }

  else
  {
LABEL_8:

    OUTLINED_FUNCTION_27();

    return v14();
  }
}

uint64_t sub_1BC85CEAC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC85CF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_91();
  v15 = *(v14 + 105);
  sub_1BC85E8D4();
  if (v15 == 1)
  {
    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v17))
    {
      v18 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v18);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    v24 = *(v14 + 88);

    v25 = sub_1BC8F7BE4();
    [v24 setInteger:8 forKey:v25];
  }

  if (*(v14 + 104) == 1)
  {
    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v27))
    {
      v28 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v28);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    v34 = *(v14 + 88);

    v35 = sub_1BC8F7BE4();
    [v34 setInteger:0 forKey:v35];
  }

  v36 = *(v14 + 88);
  v37 = *(v14 + 64);
  v38 = *(v14 + 48);
  v39 = *(v14 + 56);
  v40 = *(v14 + 32);
  v41 = *(v14 + 40);
  v42 = *(v14 + 24);
  v57 = *(v14 + 16);
  v58 = *(v14 + 72);
  sub_1BC8F7284();
  sub_1BC8F7274();
  (*(v40 + 8))(v41, v42);
  v43 = sub_1BC8F7BE4();

  OUTLINED_FUNCTION_31_0();
  v44 = sub_1BC8F7BE4();
  [v36 setObject:v43 forKey:v44];

  sub_1BC8F71D4();
  v45 = sub_1BC8F7174();
  v46 = *(v39 + 8);
  v46(v37, v38);
  v47 = sub_1BC8F7BE4();
  [v36 setObject:v45 forKey:v47];

  sub_1BC881B10();
  v46(v58, v38);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_62_1();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, v57, v58, a12, a13, a14);
}

uint64_t sub_1BC85D254()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v2);
  v1[9] = OUTLINED_FUNCTION_47_3();
  v3 = sub_1BC8F7264();
  v1[10] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[11] = v4;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  v1[14] = Request;
  OUTLINED_FUNCTION_25(Request);
  v1[15] = OUTLINED_FUNCTION_47_3();
  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC85D35C()
{
  OUTLINED_FUNCTION_71();
  v22 = v0;
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v1 = sub_1BC8F7734();
  v0[16] = __swift_project_value_buffer(v1, qword_1EDC2B3C0);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_21_1();
    v5 = OUTLINED_FUNCTION_28();
    v21 = v5;
    *v4 = 136446210;
    OUTLINED_FUNCTION_31_0();
    *(v4 + 4) = sub_1BC7A9A4C(0xD000000000000013, v6, &v21);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_18_12();
  }

  if (![*(v0[8] + 104) voicemailSearchEnabled])
  {

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_48_4();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_21_4();
  *(swift_allocObject() + 16) = &unk_1F3B36988;
  OUTLINED_FUNCTION_21_4();
  *(swift_allocObject() + 16) = &unk_1F3B369B0;
  OUTLINED_FUNCTION_21_4();
  v0[17] = swift_allocObject();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v13 = OUTLINED_FUNCTION_55(v12);
  OUTLINED_FUNCTION_70_1(v13, xmmword_1BC8FEAA0);
  sub_1BC8F7254();
  OUTLINED_FUNCTION_43_6();
  v14 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  OUTLINED_FUNCTION_54_4(v14, v15);
  v16 = swift_task_alloc();
  v0[18] = v16;
  *v16 = v0;
  v16[1] = sub_1BC85D5E0;
  OUTLINED_FUNCTION_28_9(v0[15]);
  OUTLINED_FUNCTION_48_4();

  return sub_1BC7BF034();
}

uint64_t sub_1BC85D5E0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v4;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC85DA94()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BC85DB1C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v5 = v4;
  *(v7 + 184) = v6;
  *(v7 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BC85DC44()
{
  OUTLINED_FUNCTION_22_0();
  if (*(v0[23] + 16))
  {
    v1 = sub_1BC855A68(v0[23]);
    v0[25] = v1;

    v2 = sub_1BC8F7714();
    v3 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_20_8(v3))
    {
      v4 = OUTLINED_FUNCTION_21_1();
      *v4 = 134349056;
      *(v4 + 4) = sub_1BC7C0454(v1);

      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
    v12 = swift_task_alloc();
    v0[26] = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_15_9(v12);

    return sub_1BC815FC8();
  }

  else
  {
    sub_1BC7ADC24(v0[15]);

    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_1BC85DE0C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC85DF34()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_72_1(v2);
  v4 = *(v0 + 120);
  if (v3)
  {
    *OUTLINED_FUNCTION_36() = 0;
    OUTLINED_FUNCTION_42_9();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  sub_1BC7ADC24(v4);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1BC85E02C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BC85E0B4()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BC85E13C(uint64_t (*a1)(void))
{
  sub_1BC861468(v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  LOBYTE(a1) = a1(*(v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(v4);
  return a1 & 1;
}

uint64_t sub_1BC85E19C()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  v1[3] = Request;
  OUTLINED_FUNCTION_25(Request);
  v1[4] = OUTLINED_FUNCTION_47_3();
  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC85E218()
{
  OUTLINED_FUNCTION_22_0();
  if ([*(v0[2] + 104) voicemailSearchEnabled])
  {
    OUTLINED_FUNCTION_21_4();
    *(swift_allocObject() + 16) = &unk_1F3B36908;
    OUTLINED_FUNCTION_21_4();
    *(swift_allocObject() + 16) = &unk_1F3B36930;
    OUTLINED_FUNCTION_21_4();
    v0[5] = swift_allocObject();
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
    v2 = OUTLINED_FUNCTION_55(v1);
    OUTLINED_FUNCTION_70_1(v2, xmmword_1BC8FEAA0);
    sub_1BC8F7254();
    OUTLINED_FUNCTION_43_6();
    v3 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    OUTLINED_FUNCTION_54_4(v3, v4);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_1BC85E3B8;
    OUTLINED_FUNCTION_28_9(v0[4]);

    return sub_1BC7BF034();
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_1BC85E3B8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC85E4B8()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v1 = sub_1BC8F7734();
  v0[9] = __swift_project_value_buffer(v1, qword_1EDC2B3C0);

  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_21_1();
    v5 = OUTLINED_FUNCTION_100_0(v4, 3.9122e-34);
    OUTLINED_FUNCTION_78_2(v5);

    OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v6, v7, "Indexing %{public}ld messages");
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1BC85E70C;
  v9 = OUTLINED_FUNCTION_28_9(v0[7]);

  return sub_1BC856984(v9);
}

uint64_t sub_1BC85E5F8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B3C0);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F81E4();
  v4 = OUTLINED_FUNCTION_72_1(v3);
  v5 = *(v0 + 64);
  if (v4)
  {
    *OUTLINED_FUNCTION_36() = 0;
    OUTLINED_FUNCTION_42_9();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  sub_1BC7ADC24(*(v0 + 32));

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1BC85E70C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC85E80C()
{
  OUTLINED_FUNCTION_32();
  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_20_8(v2))
  {
    v3 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_118(v3);
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  sub_1BC7ADC24(*(v0 + 32));

  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_1BC85E8D4()
{
  v1 = v0;
  type metadata accessor for SpotlightIndexManagerUtilities();
  static SpotlightIndexManagerUtilities.voicemailsDeferredReindexingReason(defaults:)(0, &v11);
  if ((static SpotlightIndexManagerUtilities.voicemailsNeedIndexingDueToVersionMismatch(defaults:)(0) & 1) != 0 && (v11 & 2) == 0)
  {
    v11 |= 2uLL;
  }

  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B3C0);
  v3 = v11;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Finished Reindexing voicemail for reasons: %ld", v6, 0xCu);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
  }

  v7 = *(v1 + 160);
  swift_beginAccess();
  v10 = v11;

  sub_1BC8F7194();
  sub_1BC7E5254(v7, &v10, 0, -v8);
}

uint64_t sub_1BC85EA64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v6 = sub_1BC7C0454(a1);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      v14 = v2[10];
      v15 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v14);
      v16 = (*(v15 + 16))(v5, a2, v14, v15);

      return v16;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB29A00](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = sub_1BC7C83A8();
    if (v10)
    {
      v11 = v10;
      MEMORY[0x1BFB29230]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      sub_1BC8F7ED4();

      v5 = v27;
    }

    v12 = sub_1BC7C7E54();
    if (v12)
    {
      v13 = v12;
      MEMORY[0x1BFB29230]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      sub_1BC8F7ED4();

      v5 = v27;
    }

    else
    {
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  swift_once();
  v17 = sub_1BC8F7734();
  __swift_project_value_buffer(v17, qword_1EDC2B3C0);
  v18 = v2;
  v19 = sub_1BC8F7714();
  v20 = sub_1BC8F81E4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v3;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_1BC7A3000, v19, v20, "Failed to fetch contacts by handle: %@", v21, 0xCu);
    sub_1BC862F74(v22, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v22, -1, -1);
    MEMORY[0x1BFB2AA50](v21, -1, -1);
  }

  sub_1BC7D9730(0, &qword_1EDC1DD30, 0x1E69D8C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E00, &qword_1BC9041D8);
  sub_1BC863030();
  v16 = sub_1BC8F7AD4();

  return v16;
}

void sub_1BC85EDC0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v86 = a5;
  v76 = a4;
  v88 = a3;
  v7 = sub_1BC8F7264();
  v83 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v84 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v75 - v14;
  v81 = sub_1BC8F7014();
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1BC85F5CC();
  v19 = v18;
  v20 = sub_1BC7C83A8();
  v87 = v17;
  if (!v20)
  {
    LODWORD(v80) = 0;
    goto LABEL_14;
  }

  v21 = v20;
  v22 = a2;
  sub_1BC8E7370(v20, a2);
  if (v23)
  {
    v24 = v23;
    if (sub_1BC7C0454(v23))
    {
      sub_1BC8E2358();
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1BFB29A00](0, v24);
      }

      else
      {
        v25 = *(v24 + 32);
      }

      v26 = v25;

      LODWORD(v80) = 0;
      goto LABEL_10;
    }
  }

  v26 = 0;
  LODWORD(v80) = 1;
LABEL_10:
  v27 = sub_1BC85FD38(v21, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BC904010;
  *(v28 + 32) = v27;
  v29 = v27;
  sub_1BC8627FC();
  sub_1BC862874(v29, &selRef_displayName);
  if (v30)
  {
    v31 = sub_1BC8F7BE4();
  }

  else
  {
    v31 = 0;
  }

  [v19 setTitle_];

  v17 = v87;
  a2 = v22;
LABEL_14:
  v32 = sub_1BC7C7E54();
  if (!v32)
  {
    goto LABEL_23;
  }

  v33 = v32;
  sub_1BC8E7370(v32, a2);
  if (v34)
  {
    v35 = v34;
    if (sub_1BC7C0454(v34))
    {
      sub_1BC8E2358();
      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1BFB29A00](0, v35);
      }

      else
      {
        v36 = *(v35 + 32);
      }

      v37 = v36;
      v17 = v87;

      goto LABEL_22;
    }
  }

  v37 = 0;
LABEL_22:
  v38 = sub_1BC85FD38(v33, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BC904010;
  *(v39 + 32) = v38;
  sub_1BC8627FC();

LABEL_23:
  v40 = *(v88 + 120);
  v41 = (v17 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  swift_beginAccess();

  v42 = sub_1BC8F7BE4();

  v43 = [v40 providerWithIdentifier_];

  if (v43)
  {
    sub_1BC862874(v43, &selRef_bundleIdentifier);
    if (v44)
    {
      v45 = sub_1BC8F7BE4();
    }

    else
    {
      v45 = 0;
    }

    [v19 setRelatedAppBundleIdentifier_];
  }

  if (v80)
  {
    v46 = *v41 == 0xD000000000000017 && 0x80000001BC90BE40 == v41[1];
    if (v46 || (sub_1BC8F8AA4() & 1) != 0)
    {
      v47 = v19;
      v48 = v76;
      MEMORY[0x1BFB29230]();
      sub_1BC8ABF08(*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1BC8F7ED4();
    }
  }

  sub_1BC85FFA0(v17, v15);
  v49 = v81;
  if (__swift_getEnumTagSinglePayload(v15, 1, v81) == 1)
  {
    sub_1BC862F74(v15, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  else
  {
    v50 = v77;
    v51 = v78;
    (*(v78 + 32))(v77, v15, v49);
    v52 = sub_1BC8F6F44();
    [v19 setPhoneCallBackURL_];

    (*(v51 + 8))(v50, v49);
  }

  v53 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  v54 = v87;
  swift_beginAccess();
  v55 = v82;
  v56 = v83;
  v88 = *(v83 + 16);
  (v88)(v82, v54 + v53, v7);
  v57 = sub_1BC8F7204();
  v80 = v58;
  v81 = v57;
  v83 = *(v56 + 8);
  (v83)(v55, v7);
  v59 = sub_1BC862874(v19, &selRef_title);
  if (v60)
  {
    v61 = v59;
  }

  else
  {
    v61 = 0;
  }

  v82 = v61;
  sub_1BC8F7AD4();
  v79 = v19;
  sub_1BC8F8324();

  v62 = v84;
  v63 = v88;
  (v88)(v84, v54 + v53, v7);
  v64 = sub_1BC8F7204();
  v82 = v65;
  v66 = v83;
  (v83)(v62, v7);
  v67 = v54 + v53;
  v68 = v85;
  v63(v85, v67, v7);
  v69 = sub_1BC8F7204();
  v71 = v70;
  v66(v68, v7);
  objc_allocWithZone(MEMORY[0x1E6964E80]);
  v72 = v79;
  v74 = sub_1BC862414(v64, v82, v69, v71, v72, v73);
  [v74 setUpdateListenerOptions_];

  *v86 = v74;
}

void sub_1BC85F5CC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v2 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_64_1();
  v6 = [objc_allocWithZone(MEMORY[0x1E6964E90]) init];
  sub_1BC86279C(0xD000000000000012, 0x80000001BC90CED0);
  v7 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_17_1(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated, &v91);
  v8 = *(v4 + 16);
  v8(v0, v0 + v7, v2);
  v9 = sub_1BC8F7174();
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v12 = OUTLINED_FUNCTION_40();
  v11(v12);
  [v6 setContentCreationDate_];

  v8(v0, v0 + v7, v2);
  v13 = sub_1BC8F7174();
  v14 = OUTLINED_FUNCTION_40();
  v11(v14);
  [v6 setLastUsedDate_];

  v15 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_17_1(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from, &v90);
  v17 = *v15;
  v16 = v15[1];

  sub_1BC86279C(v17, v16);
  v18 = sub_1BC7C83A8();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 type];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v10 = OUTLINED_FUNCTION_55(v21);
    *(v10 + 16) = xmmword_1BC8FC230;
    if (v20 == 2)
    {
      v86 = xmmword_1BC8FC230;
      v22 = [v19 value];
      v23 = sub_1BC8F7C24();
      v25 = v24;

      *(v10 + 32) = v23;
      *(v10 + 40) = v25;
      sub_1BC86273C();
      sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
      v26 = sub_1BC8F8374();
      [v6 setSupportsPhoneCall_];

      v27 = sub_1BC8605F0();
      v29 = v28;
      v30 = sub_1BC87C8D8(v19);
      sub_1BC8611A4(v27, v29, v30, v31);
      v33 = v32;
      v35 = v34;

      v10 = OUTLINED_FUNCTION_55(v21);
      *(v10 + 16) = v86;
      *(v10 + 32) = v33;
    }

    else
    {
      v36 = sub_1BC8605F0();
      v35 = v37;
      *(v10 + 32) = v36;
    }

    *(v10 + 40) = v35;
    v38 = sub_1BC8F7E34();

    [v6 setParticipants_];
  }

  v40 = Message.getTranscriptString()();
  if (v39)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v41 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v41, qword_1EDC2B3C0);
    v42 = v39;
    v43 = sub_1BC8F7714();
    v44 = sub_1BC8F81E4();

    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_21_1();
      *&v86 = OUTLINED_FUNCTION_5_12();
      v89[0] = v86;
      *v10 = 136446210;
      swift_getErrorValue();
      v45 = v87;
      v46 = sub_1BC8F83F4();
      v84 = &v84;
      OUTLINED_FUNCTION_0();
      v85 = v44;
      v48 = v47;
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1EEE9AC00](v49);
      v51 = &v84 - v50;
      OUTLINED_FUNCTION_10();
      v52 = OUTLINED_FUNCTION_45_2();
      v53(v52);
      OUTLINED_FUNCTION_76_2();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
      v58 = sub_1BC8073F0(v51, v45);
      v60 = v59;
      (*(v48 + 8))(v51, v46);
      v61 = sub_1BC7A9A4C(v58, v60, v89);

      *(v10 + 4) = v61;
      OUTLINED_FUNCTION_42_9();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {
    }

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  else
  {
    countAndFlagsBits = v40._countAndFlagsBits;
    object = v40._object;
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v69 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v69, qword_1EDC2B3C0);
    v70 = sub_1BC8F7714();
    v71 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_20_8(v71))
    {
      v72 = OUTLINED_FUNCTION_36();
      *v72 = 0;
      OUTLINED_FUNCTION_25_9();
      _os_log_impl(v73, v74, v75, v76, v72, 2u);
      OUTLINED_FUNCTION_6();
    }
  }

  sub_1BC86279C(countAndFlagsBits, object);
  v77 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID;
  OUTLINED_FUNCTION_17_1(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID, v89);
  if (*(v77 + 8))
  {

    v78 = OUTLINED_FUNCTION_40();
    sub_1BC86279C(v78, v79);
  }

  v80 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_17_1(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider, &v88);
  v81 = *v80 == 0xD00000000000003BLL && 0x80000001BC90BE00 == v80[1];
  if (v81 || (sub_1BC8F8AA4() & 1) != 0)
  {
    sub_1BC86279C(0x656D695465636146, 0xE800000000000000);
    if (qword_1EDC1EF18 != -1)
    {
      swift_once();
    }

    v82 = sub_1BC8F6DC4();
    sub_1BC86279C(v82, v83);
  }

  sub_1BC86279C(0x6F69647541, 0xE500000000000000);
  OUTLINED_FUNCTION_24();
}

id sub_1BC85FD38(id a1, void *a2)
{
  if (a2)
  {
    v4 = objc_opt_self();
    v5 = a2;
    v6 = [v4 stringFromContact:v5 style:0];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1BC8F7C24();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v15 = OUTLINED_FUNCTION_55(v14);
    *(v15 + 16) = xmmword_1BC8FC230;
    *(v15 + 32) = sub_1BC8605F0();
    *(v15 + 40) = v16;
    v17 = sub_1BC860658();
    v19 = v18;
    v20 = objc_allocWithZone(MEMORY[0x1E6964E50]);
    v21 = sub_1BC8624C0(v8, v10, v15, v17, v19);
    v22 = [v5 identifier];
    v23 = sub_1BC8F7C24();
    v25 = v24;

    sub_1BC86279C(v23, v25);
    return v21;
  }

  else
  {
    v11 = [a1 type];
    sub_1BC870714(a1);
    if (v11 == 2)
    {
      if (v12)
      {
        OUTLINED_FUNCTION_45_1();
        v13 = sub_1BC8F7BE4();
      }

      else
      {
        v13 = 0;
      }

      sub_1BC87C8D8(a1);
      if (v27)
      {
        v28 = sub_1BC8F7BE4();
      }

      else
      {
        v28 = 0;
      }

      OUTLINED_FUNCTION_45_1();
      v29 = TUFormattedPhoneNumber();

      if (v29)
      {
        sub_1BC8F7C24();
      }
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v31 = OUTLINED_FUNCTION_55(v30);
    *(v31 + 16) = xmmword_1BC8FC230;
    *(v31 + 32) = sub_1BC8605F0();
    *(v31 + 40) = v32;
    v33 = sub_1BC860658();
    v35 = v34;
    v36 = objc_allocWithZone(MEMORY[0x1E6964E50]);
    v37 = OUTLINED_FUNCTION_45_1();
    return sub_1BC8624C0(v37, v38, v31, v33, v35);
  }
}

uint64_t sub_1BC85FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v9);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40[-v11];
  v13 = *(v2 + 120);
  OUTLINED_FUNCTION_17_1(a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider, v41);

  v14 = sub_1BC8F7BE4();

  v15 = [v13 providerWithIdentifier_];

  if (v15)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
    v17 = sub_1BC7C83A8();
    [v16 setHandle_];

    v18 = a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID;
    OUTLINED_FUNCTION_17_1(v18, v40);
    if (*(v18 + 8))
    {

      sub_1BC8F71F4();

      v19 = sub_1BC8F7264();
      v20 = 0;
      if (__swift_getEnumTagSinglePayload(v12, 1, v19) != 1)
      {
        v20 = sub_1BC8F7214();
        OUTLINED_FUNCTION_10();
        (*(v21 + 8))(v12, v19);
      }

      [v16 setLocalSenderIdentityAccountUUID_];
    }

    [v16 setOriginatingUIType_];
    v22 = [v16 URL];
    if (v22)
    {
      v23 = v22;
      sub_1BC8F6FB4();

      v24 = 0;
      v16 = v23;
    }

    else
    {
      v24 = 1;
    }

    v35 = sub_1BC8F7014();
    __swift_storeEnumTagSinglePayload(v8, v24, 1, v35);
    v36 = OUTLINED_FUNCTION_45_1();
    return sub_1BC862FD0(v36, v37, v38, v39);
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v25 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v25, qword_1EDC2B3C0);
    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_20_8(v27))
    {
      v28 = OUTLINED_FUNCTION_36();
      *v28 = 0;
      OUTLINED_FUNCTION_25_9();
      _os_log_impl(v29, v30, v31, v32, v28, 2u);
      OUTLINED_FUNCTION_6();
    }

    v33 = sub_1BC8F7014();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v33);
  }
}

uint64_t sub_1BC860308(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

uint64_t sub_1BC860340(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  OUTLINED_FUNCTION_50_0();
  v4 = sub_1BC8F7BE4();
  v5 = [v3 normalizedHandleWithDestinationID_];

  if (!v5)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EDC20730);
    }

    v12 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v12, qword_1EDC2B3C0);

    v5 = sub_1BC8F7714();
    v13 = sub_1BC8F81E4();

    if (os_log_type_enabled(v5, v13))
    {
      v14 = OUTLINED_FUNCTION_21_1();
      v21 = OUTLINED_FUNCTION_28();
      *v14 = 136315138;
      v15 = OUTLINED_FUNCTION_50_0();
      *(v14 + 4) = sub_1BC7A9A4C(v15, v16, v17);
      _os_log_impl(&dword_1BC7A3000, v5, v13, "Unable to create TUHandle from destinationID: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    goto LABEL_11;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69D8C48]) initWithHandle_];
  if (!v6)
  {
LABEL_11:

    return 0;
  }

  v7 = v6;
  v8 = [*(v2 + 112) metadataForDestinationID_];
  sub_1BC7D9730(0, &qword_1EDC1DD68, 0x1E69D8A68);
  v9 = [v8 metadataForProvider_];
  if (!v9)
  {
    sub_1BC7D9730(0, &qword_1EDC1DD70, 0x1E69D8D08);
    v9 = [v8 metadataForProvider_];
    if (!v9)
    {
      sub_1BC7D9730(0, &qword_1EDC1DD78, 0x1E69D8BF8);
      v19 = [v8 metadataForProvider_];
      if (v19)
      {
        v20 = v19;
        v11 = sub_1BC8F7C24();

        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  v10 = v9;
  v11 = sub_1BC8F7C24();

LABEL_6:
  return v11;
}

uint64_t sub_1BC8605F0()
{
  sub_1BC870714(v0);
  if (v1)
  {
    OUTLINED_FUNCTION_24_4();
  }

  else
  {
    v2 = [v0 value];
    sub_1BC8F7C24();
    OUTLINED_FUNCTION_24_4();
  }

  return OUTLINED_FUNCTION_29();
}

uint64_t sub_1BC860658()
{
  v1 = [v0 type];
  if (v1 == 2 || v1 == 3)
  {
    return sub_1BC8F7C24();
  }

  else
  {
    return 0;
  }
}

id sub_1BC8606B4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE0, &unk_1BC904190);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  v25 = sub_1BC862D94;
  v26 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85C634;
  v24 = &block_descriptor_85;
  v11 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v11);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v25 = sub_1BC862E64;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85B8C4;
  v24 = &block_descriptor_91;
  v14 = _Block_copy(&aBlock);

  v15 = a2;

  [v15 setCompletionHandler_];
  _Block_release(v14);
  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v16 = sub_1BC8F7734();
  __swift_project_value_buffer(v16, qword_1EDC2B3C0);
  v17 = sub_1BC8F7714();
  v18 = sub_1BC8F8204();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BC7A3000, v17, v18, "Beginning search query for contact change", v19, 2u);
    MEMORY[0x1BFB2AA50](v19, -1, -1);
  }

  return [v15 start];
}

void sub_1BC8609EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC7C0454(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_10:
    swift_beginAccess();
    sub_1BC7F3540(v5);
    swift_endAccess();
    return;
  }

  v6 = v4;
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BC7AD404(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v17 = a2;
    v7 = 0;
    v5 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB29A00](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 uniqueIdentifier];
      v11 = sub_1BC8F7C24();
      v13 = v12;

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1BC7AD404(v14 > 1, v15 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1BC860B48(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if ([a2 isCancelled])
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v6 = sub_1BC8F7734();
    __swift_project_value_buffer(v6, qword_1EDC2B3C0);
    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F8204();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BC7A3000, v7, v8, "Search query is cancelled", v9, 2u);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE0, &unk_1BC904190);
    sub_1BC8F7F64();
  }

  else if (a1)
  {
    v11 = a1;
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B3C0);
    v13 = a1;
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Fetching search results from Spotlight failed with error: %@", v16, 0xCu);
      sub_1BC862F74(v17, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE0, &unk_1BC904190);
    sub_1BC8F7F64();
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B3C0);

    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F8204();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_beginAccess();
      *(v24 + 4) = *(*(a4 + 16) + 16);

      _os_log_impl(&dword_1BC7A3000, v22, v23, "Got %ld search results for contact change query", v24, 0xCu);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE0, &unk_1BC904190);
    sub_1BC8F7F74();
  }
}

uint64_t sub_1BC860F60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  for (i = (a1 + 40); v3; --v3)
  {
    v6 = *(i - 1);
    v5 = *i;

    v7 = OUTLINED_FUNCTION_45_2();
    MEMORY[0x1BFB29120](v7);

    v19 = sub_1BC8F7C24();
    v22 = v8;
    OUTLINED_FUNCTION_46_7();
    MEMORY[0x1BFB29120](v6, v5);
    OUTLINED_FUNCTION_47_6();
    MEMORY[0x1BFB29120](v19, v22);

    i += 2;
  }

  if (a3)
  {
    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v20 = sub_1BC8F7C24();
      v23 = v10;
      OUTLINED_FUNCTION_46_7();
      v11 = OUTLINED_FUNCTION_45_1();
      MEMORY[0x1BFB29120](v11);
      OUTLINED_FUNCTION_47_6();
      v13 = v20;
      v12 = v23;
      v21 = sub_1BC8F7C24();
      v24 = v14;
      OUTLINED_FUNCTION_46_7();
      v15 = OUTLINED_FUNCTION_45_1();
      MEMORY[0x1BFB29120](v15);
      OUTLINED_FUNCTION_47_6();

      MEMORY[0x1BFB29120](545029152, 0xE400000000000000);

      MEMORY[0x1BFB29120](v21, v24);

      MEMORY[0x1BFB29120](0, 0xE000000000000000);

      MEMORY[0x1BFB29120](v13, v12);
    }
  }

  return 0;
}

void sub_1BC8611A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BC8F6CE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(MEMORY[0x1E6993588]);

  v12 = sub_1BC8625E0(a1, a2, a3, a4);
  v13 = sub_1BC862874(v12, &selRef_formattedRepresentation);
  if (v14)
  {
    v29[0] = v13;
    v29[1] = v14;
    sub_1BC8F6CD4();
    sub_1BC7B7A9C();
    v15 = sub_1BC8F8404();
    (*(v9 + 8))(v11, v8);

    v16 = 0;
    v17 = *(v15 + 16);
    v18 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v19 = (v15 + 40 + 16 * v16);
    while (1)
    {
      if (v17 == v16)
      {

        v29[0] = v18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
        sub_1BC7ADBA4();
        sub_1BC8F7B74();
        swift_bridgeObjectRelease_n();
        goto LABEL_17;
      }

      if (v16 >= v17)
      {
        break;
      }

      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_19;
      }

      v22 = *(v19 - 1);
      v21 = *v19;
      v23 = HIBYTE(*v19) & 0xF;
      if ((*v19 & 0x2000000000000000) == 0)
      {
        v23 = v22 & 0xFFFFFFFFFFFFLL;
      }

      ++v16;
      v19 += 2;
      if (v23)
      {
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BC7F6F9C(0, *(v18 + 16) + 1, 1, v18);
          v18 = v27;
        }

        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1BC7F6F9C(v24 > 1, v25 + 1, 1, v18);
          v18 = v28;
        }

        *(v18 + 16) = v25 + 1;
        v26 = v18 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v21;

        v16 = v20;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

LABEL_17:
  }
}

void sub_1BC861468(uint64_t a1@<X8>)
{
  os_unfair_lock_lock(v1 + 6);
  sub_1BC7A792C(&v1[8], a1);

  os_unfair_lock_unlock(v1 + 6);
}

id sub_1BC8614B0(uint64_t a1)
{
  if (qword_1EDC1E218 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B2E0);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000016, 0x80000001BC90CFA0, &v15);
    _os_log_impl(&dword_1BC7A3000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  v21 = xmmword_1BC904020;
  sub_1BC8F8724();
  v7 = v15;
  v8 = v16;
  v9 = sub_1BC8E6824();
  v10 = sub_1BC8F7BE4();
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000002FLL;
  v11[3] = 0x80000001BC90CF50;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = a1;
  v19 = sub_1BC8630A0;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BC8623AC;
  v18 = &block_descriptor_121;
  v12 = _Block_copy(&v15);

  v13 = [v9 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v12];
  _Block_release(v12);

  return v13;
}

id sub_1BC861734(uint64_t a1)
{
  if (qword_1EDC1E218 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B2E0);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000016, 0x80000001BC90CFA0, &v15);
    _os_log_impl(&dword_1BC7A3000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  v21 = xmmword_1BC904020;
  sub_1BC8F8724();
  v7 = v15;
  v8 = v16;
  v9 = sub_1BC8E6824();
  v10 = sub_1BC8F7BE4();
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000030;
  v11[3] = 0x80000001BC90CFC0;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = a1;
  v19 = sub_1BC8631A8;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BC8623AC;
  v18 = &block_descriptor_136;
  v12 = _Block_copy(&v15);

  v13 = [v9 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v12];
  _Block_release(v12);

  return v13;
}

void sub_1BC8619B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_0();
  v23 = v22;
  v25 = v24;
  v59 = v26;
  v60 = v27;
  v29 = v28;
  v31 = v30;
  v58 = v32;
  v33 = a22;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v34);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v56 - v36;
  if (qword_1EDC1E218 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EDC1E218);
  }

  v38 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v38, qword_1EDC2B2E0);

  v39 = sub_1BC8F7714();
  v40 = sub_1BC8F8204();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_21_1();
    v57 = a22;
    v42 = v41;
    v43 = OUTLINED_FUNCTION_28();
    v56 = v23;
    v44 = v43;
    v61 = v43;
    *v42 = 136446210;
    v45 = OUTLINED_FUNCTION_50_0();
    *(v42 + 4) = sub_1BC7A9A4C(v45, v46, v47);
    _os_log_impl(&dword_1BC7A3000, v39, v40, "Starting to run ScheduledActivity(%{public}s)", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_6();
    v33 = v57;
    OUTLINED_FUNCTION_6();
  }

  type metadata accessor for SendableBGSystemTask();
  swift_allocObject();
  v48 = sub_1BC8E6860(v58);
  v49 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v49);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v31;
  v50[5] = v29;
  v52 = v59;
  v51 = v60;
  v50[6] = v48;
  v50[7] = v52;
  v50[8] = v51;
  v50[9] = v25;

  sub_1BC8333D4();
  v54 = v53;
  v55 = swift_allocObject();
  v55[2] = v31;
  v55[3] = v29;
  v55[4] = v54;

  sub_1BC8E6940(v33, v55);

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC861C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_1BC8F7F84();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 104) = 0;
  v10 = swift_task_alloc();
  *(v8 + 88) = v10;
  *v10 = v8;
  v10[1] = sub_1BC861D3C;

  return sub_1BC8E634C();
}

uint64_t sub_1BC861D3C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC861E34()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_81_3();
  sub_1BC8E6B8C((v0 + 104), v1, v2, v3, v4, v5);

  OUTLINED_FUNCTION_27();

  return v6();
}

void sub_1BC861E98()
{
  OUTLINED_FUNCTION_9_10();
  v27 = v0;
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  if (swift_dynamicCast())
  {

    *(v0 + 104) = 1;
    v3 = OUTLINED_FUNCTION_40();
    v4(v3);
    v5 = *(v0 + 16);
  }

  else
  {

    if (qword_1EDC1E218 != -1)
    {
      OUTLINED_FUNCTION_6_1(&qword_1EDC1E218);
    }

    v6 = *(v0 + 96);
    v7 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v7, qword_1EDC2B2E0);
    v8 = v6;

    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F81E4();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 96);
    if (v11)
    {
      v14 = *(v0 + 24);
      v13 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_85_1();
      *v15 = 136446466;
      *(v15 + 4) = sub_1BC7A9A4C(v14, v13, &v26);
      *(v15 + 12) = 2114;
      v17 = v12;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1BC7A3000, v9, v10, "ScheduledActivity(%{public}s) threw error: %{public}@", v15, 0x16u);
      sub_1BC862F74(v16, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_9_0();

      goto LABEL_9;
    }

    v5 = v12;
  }

LABEL_9:
  OUTLINED_FUNCTION_81_3();
  sub_1BC8E6B8C((v0 + 104), v19, v20, v21, v22, v23);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_47_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BC8620E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_1BC862184;

  return sub_1BC8E608C();
}

uint64_t sub_1BC862184()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1BC862268()
{
  OUTLINED_FUNCTION_71();
  v16 = v0;
  v2 = sub_1BC8E6824();
  [v2 setTaskCompleted];

  if (qword_1EDC1E218 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EDC1E218);
  }

  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B2E0);

  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    OUTLINED_FUNCTION_21_1();
    v15 = OUTLINED_FUNCTION_5_12();
    *v1 = 136446210;
    *(v1 + 4) = sub_1BC7A9A4C(v7, v6, &v15);
    OUTLINED_FUNCTION_42_9();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48_4();

  __asm { BRAA            X1, X16 }
}

void sub_1BC8623AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1BC862414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_1BC8F7BE4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1BC8F7BE4();

LABEL_6:
  v11 = [v6 initWithUniqueIdentifier:v9 domainIdentifier:v10 attributeSet:a5];

  return v11;
}

id sub_1BC8624C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = sub_1BC8F7BE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1BC8F7E34();

  v8 = sub_1BC8F7BE4();

  v9 = [v5 initWithDisplayName:v6 handles:v7 handleIdentifier:v8];

  return v9;
}

id sub_1BC86257C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BC8F7BE4();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

id sub_1BC8625E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BC8F7BE4();

  if (a4)
  {
    v7 = sub_1BC8F7BE4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithDigits:v6 isoCountryCode:v7];

  return v8;
}

uint64_t sub_1BC862674(void *a1)
{
  v1 = [a1 phoneNumbers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F7E54();

  return v3;
}

uint64_t sub_1BC8626CC(void *a1)
{
  v2 = [a1 textContentSummary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BC8F7C24();

  return v3;
}

void sub_1BC86273C()
{
  OUTLINED_FUNCTION_60_3();
  v9 = sub_1BC8F7E34();

  OUTLINED_FUNCTION_74_1(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_1BC86279C(uint64_t a1, uint64_t a2)
{
  v11 = sub_1BC8F7BE4();

  OUTLINED_FUNCTION_74_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1BC8627FC()
{
  OUTLINED_FUNCTION_60_3();
  sub_1BC7D9730(0, &unk_1EDC1DD58, 0x1E6964E50);
  v9 = sub_1BC8F7E34();

  OUTLINED_FUNCTION_74_1(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BC862874(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1BC8F7C24();
    OUTLINED_FUNCTION_24_4();
  }

  return OUTLINED_FUNCTION_29();
}

uint64_t sub_1BC862928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1BC7B0168;

  return sub_1BC861C3C(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BC862A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BC7B0248;

  return sub_1BC8620E8(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BC862B7C()
{
  OUTLINED_FUNCTION_60_3();
  v7 = type metadata accessor for SystemTaskScheduler();
  v8 = &off_1F3B3E598;
  *&v5[40] = 0;
  *&v6 = v1;
  *(v0 + 16) = v2;
  *v5 = 0;
  memset(&v5[8], 0, 32);
  sub_1BC7CF5EC(&v6, &v5[8]);
  v3 = *&v5[16];
  *(v0 + 24) = *v5;
  *(v0 + 40) = v3;
  *(v0 + 56) = *&v5[32];
  return v0;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

unint64_t sub_1BC862C50()
{
  result = qword_1EBCF5DA8;
  if (!qword_1EBCF5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5DA8);
  }

  return result;
}

uint64_t sub_1BC862CDC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_26(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, v12, v4 + v11, v13);
}

uint64_t objectdestroy_47Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 24) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v2, v9 + 8, v6 | 7);
}

uint64_t sub_1BC862E8C()
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_111();

  return sub_1BC859448(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BC862F74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BC862FD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10();
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return a2;
}

unint64_t sub_1BC863030()
{
  result = qword_1EDC1DD28;
  if (!qword_1EDC1DD28)
  {
    sub_1BC7D9730(255, &qword_1EDC1DD30, 0x1E69D8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DD28);
  }

  return result;
}

void sub_1BC8630B8()
{
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_41_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_9(v1);
  OUTLINED_FUNCTION_47_4();

  __asm { BR              X9 }
}

uint64_t objectdestroy_117Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_123Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_1BC863228()
{
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_41_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_9(v1);
  OUTLINED_FUNCTION_47_4();

  __asm { BR              X9 }
}

uint64_t objectdestroy_127Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for SpotlightIndexManager.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8633EC()
{
  result = qword_1EBCF5E28;
  if (!qword_1EBCF5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5E28);
  }

  return result;
}

void OUTLINED_FUNCTION_50_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_72_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return sub_1BC8F86A4();
}

uint64_t OUTLINED_FUNCTION_101_0()
{
}

_BYTE *storeEnumTagSinglePayload for VideoMessagingIDSServiceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BC863608()
{
  result = qword_1EBCF5E30;
  if (!qword_1EBCF5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5E30);
  }

  return result;
}

BOOL sub_1BC86365C(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1BC8636B0()
{
  v3 = OUTLINED_FUNCTION_125();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_105();
  v8 = type metadata accessor for TrackedOutgoingMessage(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_4();
  v11 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v11, v12, v8);
  if (v13)
  {
    sub_1BC7C1744(v0, &qword_1EBCF5730, &qword_1BC901220);
    OUTLINED_FUNCTION_101_1();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_40();
    sub_1BC871CE4(v14, v15);
    sub_1BC871D3C(v1, v2);
    OUTLINED_FUNCTION_62_0();
    sub_1BC8F7C94();
    OUTLINED_FUNCTION_211();
    v16 = OUTLINED_FUNCTION_81_0();
    sub_1BC871D94(v16, v17);
  }

  return OUTLINED_FUNCTION_31_3();
}

uint64_t sub_1BC863800()
{
  v3 = OUTLINED_FUNCTION_125();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_105();
  v8 = type metadata accessor for MessageAssetInfo(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_4();
  v11 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v11, v12, v8);
  if (v13)
  {
    sub_1BC7C1744(v0, &qword_1EBCF58E0, &qword_1BC904880);
    OUTLINED_FUNCTION_101_1();
  }

  else
  {
    OUTLINED_FUNCTION_79_2();
    v14 = OUTLINED_FUNCTION_40();
    sub_1BC871CE4(v14, v15);
    sub_1BC871D3C(v1, v2);
    OUTLINED_FUNCTION_62_0();
    sub_1BC8F7C94();
    OUTLINED_FUNCTION_211();
    v16 = OUTLINED_FUNCTION_81_0();
    sub_1BC871D94(v16, v17);
  }

  return OUTLINED_FUNCTION_31_3();
}

uint64_t sub_1BC863968(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_25(v8);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33_2();
  v10 = a4(0);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_138_0();
  sub_1BC7C4DAC(v17, v18, v19, v20);
  OUTLINED_FUNCTION_43(v4, 1, v10);
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_50_0();
    sub_1BC7C1744(v22, v23, a3);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_79();
    v25(v24);
    (*(v12 + 16))(v5, v16, v10);
    sub_1BC8F7C94();
    v26 = OUTLINED_FUNCTION_143();
    v27(v26);
  }

  return OUTLINED_FUNCTION_41_1();
}

uint64_t sub_1BC863B08(uint64_t a1)
{
  sub_1BC7C4DAC(a1, &v2, &qword_1EBCF5EE0, &qword_1BC903B50);
  if (v3)
  {
    sub_1BC7CF5EC(&v2, v4);
    sub_1BC7A792C(v4, &v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EE8, &qword_1BC9048B8);
    sub_1BC8F7C94();
    OUTLINED_FUNCTION_211();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_1BC7C1744(&v2, &qword_1EBCF5EE0, &qword_1BC903B50);
    OUTLINED_FUNCTION_101_1();
  }

  return OUTLINED_FUNCTION_31_3();
}

uint64_t sub_1BC863BDC()
{
  v3 = OUTLINED_FUNCTION_125();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_105();
  v8 = type metadata accessor for OutgoingVideoMessage(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_4();
  v11 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v11, v12, v8);
  if (v13)
  {
    sub_1BC7C1744(v0, &qword_1EBCF5EA8, &qword_1BC904888);
    OUTLINED_FUNCTION_101_1();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_40();
    sub_1BC871CE4(v14, v15);
    sub_1BC871D3C(v1, v2);
    OUTLINED_FUNCTION_62_0();
    sub_1BC8F7C94();
    OUTLINED_FUNCTION_211();
    v16 = OUTLINED_FUNCTION_81_0();
    sub_1BC871D94(v16, v17);
  }

  return OUTLINED_FUNCTION_31_3();
}

void Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, uint64_t *a28, unsigned __int8 a29, objc_class *a30, uint64_t a31, unsigned __int8 *a32, uint64_t a33, uint64_t *a34)
{
  OUTLINED_FUNCTION_97_0();
  v115 = v35;
  v117 = v37;
  v118 = v36;
  HIDWORD(v116) = v38;
  v121 = v40;
  v122 = v39;
  v123 = v41;
  v125 = v42;
  v109 = a31;
  v108 = a30;
  HIDWORD(v107) = a29;
  v113 = a26;
  v114 = a27;
  HIDWORD(v110) = a25;
  v112 = a24;
  v111 = a23;
  v106 = a33;
  v43 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v104 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v46);
  v103 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_31();
  v51 = v50;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_20_4();
  v54 = v53;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_47();
  v57 = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v59 = OUTLINED_FUNCTION_25(v58);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_153();
  MEMORY[0x1EEE9AC00](v61);
  v62 = *a28;
  v119 = a28[1];
  v63 = a28[2];
  HIDWORD(v100) = *a32;
  v64 = a34[1];
  v99 = *a34;
  v98 = v64;
  v97 = a34[2];
  v124 = v95 - v65;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v43);
  v120 = v62;
  if (v62)
  {
    v126 = v120;
    v127 = v119;
    v128 = v63;
    sub_1BC7DA9A8();
    v69 = OUTLINED_FUNCTION_37_7();
    type metadata accessor for Message(v69);
    sub_1BC866FDC();

    sub_1BC7C1744(v124, &qword_1EBCF5A20, &qword_1BC901BF0);
    v70 = OUTLINED_FUNCTION_29();
    sub_1BC805ABC(v70, v71);
  }

  v72 = *(v48 + 16);
  v95[1] = v57;
  v73 = v57;
  v74 = v103;
  v72(v73, v125, v103);
  v72(v54, v122, v74);
  v101 = v63;
  v75 = v51;
  v72(v51, v123, v74);
  v76 = v104;
  v77 = v105;
  (*(v104 + 16))(v105, v121, v43);
  v96 = v43;
  v78 = v118;
  v79 = OUTLINED_FUNCTION_62_0();
  v95[0] = v34;
  v81 = v80;
  sub_1BC7C4DAC(v79, v82, &qword_1EBCF5A20, v80);
  v83 = v102;
  sub_1BC7C4DAC(v124, v102, &qword_1EBCF5A20, v81);
  v129[0] = BYTE4(v100);
  v126 = v99;
  v127 = v98;
  v128 = v97;
  v84 = objc_allocWithZone(type metadata accessor for Message(0));
  OUTLINED_FUNCTION_164();
  LOBYTE(v100) = BYTE4(v107) & 1;
  LOBYTE(v97) = BYTE4(v110) & 1;
  Message.init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(v111, v54, v75, v77, v115, HIDWORD(v116), v83, v117, v115, v111, v112, v97, v113, v114, v100, v108, v109, v129, v85, &v126, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, SBYTE4(v118), v119);
  v87 = v86;
  sub_1BC7C1744(v78, &qword_1EBCF5A20, &qword_1BC901BF0);
  (*(v76 + 8))(v121, v96);
  v88 = *(v48 + 8);
  v88(v123, v74);
  v88(v122, v74);
  v88(v125, v74);
  sub_1BC7C1744(v124, &qword_1EBCF5A20, &qword_1BC901BF0);
  v89 = &v87[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript];
  v90 = *&v87[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript + 16];
  v91 = v119;
  *v89 = v120;
  *(v89 + 1) = v91;
  *(v89 + 2) = v101;
  v92 = v87;
  v93 = OUTLINED_FUNCTION_40();
  sub_1BC7C532C(v93, v94, v90);

  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_98();
}

id sub_1BC8642A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EC0, &qword_1BC9048A0);
  OUTLINED_FUNCTION_218();
  sub_1BC871DEC(v10, v11, v12, v13);
  v14 = sub_1BC8F6C94();
  if (v4)
  {

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v14;
    v18 = v15;

    v19 = &v5[OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data];
    *v19 = v17;
    v19[1] = v18;
    v20.receiver = v5;
    v20.super_class = ObjectType;
    return objc_msgSendSuper2(&v20, sel_init);
  }
}

id sub_1BC8643FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v18 = a2;
  v19 = a3;
  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5ED0, &unk_1BC9048A8);
  sub_1BC871DEC(&qword_1EDC1F268, &unk_1EBCF5ED0, &unk_1BC9048A8, sub_1BC7C5254);
  v10 = sub_1BC8F6C94();
  if (v4)
  {

    sub_1BC7C532C(v17, v18, v19);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v10;
    v14 = v11;
    sub_1BC7C532C(v17, v18, v19);

    v15 = &v5[OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data];
    *v15 = v13;
    v15[1] = v14;
    v16.receiver = v5;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, sel_init);
  }
}

uint64_t sub_1BC86455C()
{
  sub_1BC8F6C54();
  swift_allocObject();
  sub_1BC8F6C44();
  sub_1BC7C76BC();
  sub_1BC8F6C34();
}

uint64_t sub_1BC864600()
{
  sub_1BC8F6C54();
  swift_allocObject();
  sub_1BC8F6C44();
  sub_1BC7C75C4();
  sub_1BC8F6C34();
}

uint64_t sub_1BC8646E8()
{
  v1 = *v0;
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8647AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33_2();
  v9 = OUTLINED_FUNCTION_50_0();
  v10(v9);
  return a6(v6);
}

uint64_t sub_1BC864A4C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  result = OUTLINED_FUNCTION_31_7(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BC864B30(uint64_t a1)
{
  OUTLINED_FUNCTION_222(a1);
  v2 = OUTLINED_FUNCTION_50_0();
  return v1(v2);
}

double sub_1BC864B70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_45_8(*a3);
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  *v3 = a1;
  v3[1] = a2;

  return result;
}

uint64_t sub_1BC864CB8(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v7 + 40))(v3 + v6, a1);
  return swift_endAccess();
}

uint64_t sub_1BC864D8C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  result = OUTLINED_FUNCTION_31_7(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BC864E18(double a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_35_7();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC864EB0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  result = OUTLINED_FUNCTION_31_7(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BC864F3C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
  OUTLINED_FUNCTION_30_9(a1);
  return *(v1 + v2);
}

uint64_t sub_1BC864F70(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
  result = OUTLINED_FUNCTION_31_7(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BC865060(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  OUTLINED_FUNCTION_30_9(a1);
  return *(v1 + v2);
}

uint64_t sub_1BC865094(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  result = OUTLINED_FUNCTION_31_7(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BC865120(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
  OUTLINED_FUNCTION_30_9(a1);
  return *(v1 + v2);
}

uint64_t sub_1BC865154(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
  result = OUTLINED_FUNCTION_31_7(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BC8651E0(uint64_t a1)
{
  OUTLINED_FUNCTION_222(a1);
  v2 = OUTLINED_FUNCTION_50_0();
  return v1(v2);
}

void *sub_1BC865278@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC8652EC(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1BC8652EC@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  OUTLINED_FUNCTION_13();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1BC86533C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  result = OUTLINED_FUNCTION_31_7(a1);
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1BC8653C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BC86543C();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1BC86543C()
{
  v1 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t sub_1BC865490(uint64_t a1)
{
  OUTLINED_FUNCTION_45_8(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
  OUTLINED_FUNCTION_35_7();
  result = swift_beginAccess();
  *v1 = a1;
  *(v1 + 4) = BYTE4(a1) & 1;
  return result;
}

double sub_1BC865524@<D0>(uint64_t a1@<X8>)
{
  sub_1BC7C84C4(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

double sub_1BC865568(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;

  return sub_1BC8655B0(&v3);
}

double sub_1BC8655B0(__int128 *a1)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  *v3 = v5;
  *(v3 + 16) = v2;

  return result;
}

uint64_t sub_1BC865664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_25(v8);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  OUTLINED_FUNCTION_138_0();
  sub_1BC7C4DAC(v12, v13, v14, v15);
  return a7(v11);
}

uint64_t sub_1BC865720(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  sub_1BC7C3684(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1BC8657DC()
{
  v2 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_190_0();
  v6 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (*(v4 + 16))(v1, v0 + v6, v2);
  sub_1BC7EF368();
  v8 = v7;
  (*(v4 + 8))(v1, v2);
  return v8;
}

id sub_1BC865904(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile;
  OUTLINED_FUNCTION_30_9(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1BC865948(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile;
  OUTLINED_FUNCTION_31_7(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BC8659E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BC865A4C(v1);
}

void *sub_1BC865A10(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  OUTLINED_FUNCTION_30_9(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1BC865A4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  OUTLINED_FUNCTION_31_7(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BC865AE0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BC865B4C(v1);
}

void *sub_1BC865B10(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
  OUTLINED_FUNCTION_30_9(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1BC865B4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
  OUTLINED_FUNCTION_31_7(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL sub_1BC865BE0()
{
  v1 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v2 = v1[1];
  v3 = *v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  return v3 == 0;
}

void sub_1BC865C3C()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_190_0();
  v8 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_53_5();
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - v12;
  v14 = &v0[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript];
  v16 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript];
  v15 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript + 8];
  v17 = *(v14 + 2);
  if (!v16)
  {
    v61 = v11;
    v18 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v19 = *&v3[v18];
    if (!v19)
    {
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      goto LABEL_20;
    }

    v58 = v18;
    v60 = v15;
    v59 = v19;
    v20 = sub_1BC8316B8();
    if (v20)
    {
      v21 = v20;
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v8);
      OUTLINED_FUNCTION_1_20();
      sub_1BC7C4720(v25, v26, MEMORY[0x1E6968FD8]);
      sub_1BC8F87F4();

      v27 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_43(v27, v28, v8);
      if (!v29)
      {
        v30 = *(v61 + 32);
        (v30)(v2, v1, v8);
        OUTLINED_FUNCTION_220();
        v30();
        v31 = OUTLINED_FUNCTION_230(v13);
        if (v1)
        {

          v33 = OUTLINED_FUNCTION_94_0();
          v34(v33);
        }

        else
        {
          v35 = v31;
          v36 = v32;
          if (!sub_1BC86365C(v31, v32))
          {
            type metadata accessor for Message(0);
            v55 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
            OUTLINED_FUNCTION_13();
            swift_beginAccess();
            sub_1BC86603C(v35, *&v3[v55], v5);
            sub_1BC7D4C94(v35, v36);

            v56 = OUTLINED_FUNCTION_94_0();
            v57(v56);
LABEL_19:
            v15 = v60;
            goto LABEL_20;
          }

          v37 = OUTLINED_FUNCTION_94_0();
          v38(v37);
          sub_1BC7D4C94(v35, v36);
        }
      }
    }

    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v39 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v39, qword_1EDC2B3A8);
    v40 = v3;
    v41 = sub_1BC8F7714();
    v42 = sub_1BC8F81F4();

    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_9();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136446210;
      v45 = *&v3[v58];
      if (v45)
      {
        v62[4] = v45;
        type metadata accessor for SandboxExtendedURL();
        v46 = v45;
        v47 = sub_1BC8F7C94();
        v49 = v48;
      }

      else
      {
        v49 = 0xE300000000000000;
        v47 = 7104878;
      }

      v50 = sub_1BC7A9A4C(v47, v49, v62);

      *(v43 + 4) = v50;
      OUTLINED_FUNCTION_25_9();
      _os_log_impl(v51, v52, v53, v54, v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    goto LABEL_19;
  }

  *v5 = v16;
  v5[1] = v15;
  v5[2] = v17;
LABEL_20:
  sub_1BC7C52A8(v16, v15, v17);
  OUTLINED_FUNCTION_24();
}

void sub_1BC86603C(void *a1@<X0>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 2:
      goto LABEL_17;
    case 1:
      v5 = sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
      sub_1BC7D9730(0, &qword_1EBCF5550, 0x1E69E06B0);
      OUTLINED_FUNCTION_176();
      v6 = sub_1BC8F8214();
      if (a1)
      {

        goto LABEL_5;
      }

      if (!v6)
      {
LABEL_5:
        if (qword_1EDC20728 != -1)
        {
          OUTLINED_FUNCTION_1();
          swift_once();
        }

        v7 = sub_1BC8F7734();
        OUTLINED_FUNCTION_37_0(v7, qword_1EDC2B3A8);
        v8 = sub_1BC8F7714();
        v9 = sub_1BC8F81E4();
        if (!OUTLINED_FUNCTION_28_7(v9))
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      sub_1BC7DA3A8(v6, &v18);
      goto LABEL_22;
    case 0:
      v5 = sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
      sub_1BC7D9730(0, &unk_1EBCF5E40, 0x1E69D8AD8);
      OUTLINED_FUNCTION_176();
      v10 = sub_1BC8F8224();
      if (a1)
      {
      }

      else if (v10)
      {
        sub_1BC7DA1B0(v10, &v18);
LABEL_22:
        *a3 = v18;
        *(a3 + 8) = v19;
        return;
      }

      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v11 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v11, qword_1EDC2B3A8);
      v8 = sub_1BC8F7714();
      v12 = sub_1BC8F81E4();
      if (!OUTLINED_FUNCTION_28_7(v12))
      {
        goto LABEL_16;
      }

LABEL_15:
      OUTLINED_FUNCTION_45();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_202(v13);
      OUTLINED_FUNCTION_25_9();
      _os_log_impl(v14, v15, v16, v17, v5, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
LABEL_16:

LABEL_17:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
  }

  sub_1BC8F8B04();
  __break(1u);
}

void Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, double a9, __int128 a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, __int128 a16, uint64_t a17, unint64_t a18, uint64_t a19)
{
  HIDWORD(v28) = a6;
  v20 = objc_allocWithZone(v19);
  LOBYTE(v24) = a15;
  LOBYTE(v23) = a12;
  v21 = OUTLINED_FUNCTION_82();
  Message.init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(v21, v22, a3, a4, a5, HIDWORD(v28), a7, a8, a10, *(&a10 + 1), a11, v23, a13, a14, v24, a16, *(&a16 + 1), a17, a18 | ((HIDWORD(a18) & 1) << 32), a19, a16, *(&a16 + 1), a10, *(&a10 + 1), a3, a4, a5, v28, a7, a8, v31, v32, *v33, v33[4], v34);
}

void Message.init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, objc_class *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, _DWORD *a31, char *a32, int a33, char a34, uint64_t a35)
{
  OUTLINED_FUNCTION_97_0();
  v37 = v35;
  v170 = v38;
  v176 = v39;
  v177 = v40;
  v172 = v41;
  v174 = v42;
  v44 = v43;
  v173 = v45;
  v175 = v46;
  v47 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v178 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_18_1(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v52 = OUTLINED_FUNCTION_25(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v55);
  v167 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v166 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_185();
  v169 = *a32;
  v171 = *(a35 + 16);
  v58 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v47);
  v62 = OUTLINED_FUNCTION_49_6(OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript);
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v47);
  v65 = &v35[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient];
  *v65 = 0;
  v65[1] = 0;
  v66 = &v35[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID];
  *v66 = 0;
  v66[1] = 0;
  v67 = &v35[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  v168 = &v35[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  *v67 = 0;
  v67[4] = 1;
  v68 = &v35[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary];
  v68[1] = 0;
  v68[2] = 0;
  *v68 = 0;
  v69 = sub_1BC8F7264();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
  OUTLINED_FUNCTION_177(&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript]);
  v161 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  *&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile] = 0;
  v157 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
  *&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile] = 0;
  v164 = *(v69 - 8);
  v73 = *(v164 + 16);
  v73(&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID], v175, v69);
  v73(&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID], v173, v69);
  v165 = v69;
  v73(&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID], v174, v69);
  v74 = v172;
  v156 = *(v178 + 16);
  v156(&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile], v172, v47);
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v75 = &v37[v58];
  v76 = v177;
  sub_1BC87064C(v177, v75);
  swift_endAccess();
  *&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType] = v176;
  v77 = OUTLINED_FUNCTION_195();
  v78 = v170;
  if (!v77)
  {
    v78 = 0;
  }

  v79 = 0xE000000000000000;
  if (v77)
  {
    v79 = v77;
  }

  v80 = &v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
  *v80 = v78;
  v80[1] = v79;
  v81 = &v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider];
  *v81 = a24;
  v81[1] = a25;

  sub_1BC8F71D4();
  v82 = *(v166 + 32);
  v82(&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated], v36, v167);
  sub_1BC8F71D4();
  v82(&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified], v36, v167);
  v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead] = 0;
  *&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration] = v44;
  *&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType] = 0;
  v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive] = a26;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v83 = v65[1];
  *v65 = a27;
  v65[1] = a28;

  v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT] = a29;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  *v66 = a30;
  v66[1] = a31;

  v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality] = v169;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  *v168 = a33;
  v168[4] = a34 & 1;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_167();
  *v68 = v85;
  v68[1] = v84;
  v68[2] = v171;

  sub_1BC8F6F44();
  v86 = type metadata accessor for SandboxExtendedURL();
  v87 = objc_allocWithZone(v86);
  OUTLINED_FUNCTION_10_2();
  *&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile] = SandboxExtendedURL.init(with:)();
  v88 = v47;
  v89 = 0;
  if (__swift_getEnumTagSinglePayload(v76, 1, v47) != 1)
  {
    v83 = v160;
    sub_1BC7C4DAC(v177, v160, &qword_1EBCF5A20, &qword_1BC901BF0);
    v90 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_43(v90, v91, v47);
    if (v92)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1BC8F6F44();
    v93 = objc_allocWithZone(v86);
    OUTLINED_FUNCTION_10_2();
    v89 = SandboxExtendedURL.init(with:)();
    OUTLINED_FUNCTION_191();
    v94(v160, v47);
  }

  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v95 = *&v37[v161];
  *&v37[v161] = v89;

  v96 = OUTLINED_FUNCTION_196(&v182);
  sub_1BC7C4DAC(v96, v162, v97, v98);
  v99 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v99, v100, v47);
  if (v92)
  {
    sub_1BC7C1744(v162, &qword_1EBCF5A20, &qword_1BC901BF0);
    v76 = v178;
    OUTLINED_FUNCTION_96_0();
    v74 = v176;
  }

  else
  {
    OUTLINED_FUNCTION_215();
    v101 = OUTLINED_FUNCTION_29();
    v102(v101);
    v103 = OUTLINED_FUNCTION_230(v163);
    if (v83)
    {

LABEL_15:
      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v107 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v107, qword_1EDC2B3A8);
      v108 = v37;
      v109 = sub_1BC8F7714();
      v110 = sub_1BC8F81F4();

      if (os_log_type_enabled(v109, v110))
      {
        OUTLINED_FUNCTION_9();
        v111 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        *&v179[0] = swift_slowAlloc();
        *v111 = 136446210;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        sub_1BC7C4DAC(&v37[v158], v159, &qword_1EBCF5A20, &qword_1BC901BF0);
        OUTLINED_FUNCTION_78_3();
        v112 = OUTLINED_FUNCTION_63_1();
        v115 = sub_1BC863968(v112, v113, &qword_1BC901BF0, v114);
        v117 = v116;
        v118 = OUTLINED_FUNCTION_63_1();
        sub_1BC7C1744(v118, v119, &qword_1BC901BF0);
        v76 = v178;
        v120 = sub_1BC7A9A4C(v115, v117, v179);

        *(v111 + 4) = v120;
        OUTLINED_FUNCTION_62_2();
        _os_log_impl(v121, v122, v123, v124, v125, 0xCu);
        v126 = OUTLINED_FUNCTION_121_0(&v181);
        __swift_destroy_boxed_opaque_existential_1(v126);
        v127 = OUTLINED_FUNCTION_27_7();
        MEMORY[0x1BFB2AA50](v127);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();

        OUTLINED_FUNCTION_170();
        v129 = v163;
        v88 = v47;
      }

      else
      {

        OUTLINED_FUNCTION_170();
        v129 = v163;
      }

      v128(v129, v47);
      OUTLINED_FUNCTION_96_0();
      v74 = v176;
      goto LABEL_21;
    }

    if (sub_1BC86365C(v103, v104))
    {
      v105 = OUTLINED_FUNCTION_143();
      sub_1BC7D4C94(v105, v106);
      goto LABEL_15;
    }

    v139 = OUTLINED_FUNCTION_121_0(&v177);
    v156(v139, v163, v47);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v47);
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    sub_1BC7C3684(v162, &v37[v158], &qword_1EBCF5A20, &qword_1BC901BF0);
    swift_endAccess();
    sub_1BC8F6F44();
    v143 = objc_allocWithZone(v86);
    v144 = OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v145 = *&v37[v157];
    *&v37[v157] = v144;

    type metadata accessor for Message(0);
    v146 = OUTLINED_FUNCTION_143();
    v74 = v176;
    sub_1BC86603C(v146, v176, v147);
    v148 = OUTLINED_FUNCTION_143();
    sub_1BC7D4C94(v148, v149);
    OUTLINED_FUNCTION_170();
    v150(v163, v47);
    v151 = OUTLINED_FUNCTION_150();
    *v152 = v179[0];
    *(v152 + 16) = v153;
    sub_1BC7C532C(v151, v154, v155);
    OUTLINED_FUNCTION_96_0();
  }

LABEL_21:
  if (v74 - 1 < 2)
  {
    v130 = 4;
LABEL_25:

    *&v37[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus] = v130;
    v131 = type metadata accessor for Message(0);
    v180.receiver = v37;
    v180.super_class = v131;
    objc_msgSendSuper2(&v180, sel_init);
    OUTLINED_FUNCTION_72();
    sub_1BC7C1744(v132, v133, v134);
    (*(v76 + 8))(v172, v88);
    v135 = *(v164 + 8);
    v135(v174, v165);
    v135(v173, v165);
    v135(v175, v165);
    OUTLINED_FUNCTION_72();
    sub_1BC7C1744(v136, v137, v138);
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_98();
    return;
  }

  if (!v74)
  {
    v130 = 3;
    goto LABEL_25;
  }

LABEL_28:
  LOWORD(v179[0]) = v74;
  sub_1BC8F8B04();
  __break(1u);
}

void sub_1BC866FDC()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v109 = v4;
  v115 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_53_5();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v101 - v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_156();
  v108 = v3;
  if (sub_1BC7C0454(v3))
  {
    sub_1BC8F6F34();
    v113 = 0;
    v114 = 0xE000000000000000;
    v105 = v9;
    sub_1BC8F85A4();
    v107 = v0;
    sub_1BC8F7264();
    OUTLINED_FUNCTION_23_7();
    sub_1BC7C4720(v15, v16, MEMORY[0x1E69695E0]);
    v17 = sub_1BC8F8A54();
    v19 = v18;
    v20 = v107;

    v113 = v17;
    v114 = v19;
    MEMORY[0x1BFB29120](0xD000000000000014, 0x80000001BC90D130);
    sub_1BC8F6F74();
    v21 = v105;

    v22 = v21 + 1;
    v106 = v21[1];
    v106(v14, v7);
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_10_18();
      swift_once();
    }

    v23 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v23, qword_1EDC2B3D8);
    v24 = v21[2];
    v24(v1, v20, v7);

    v103 = v14;
    v25 = sub_1BC8F7714();
    v26 = sub_1BC8F8204();

    v102 = v26;
    v27 = os_log_type_enabled(v25, v26);
    v104 = v7;
    if (v27)
    {
      OUTLINED_FUNCTION_11_2();
      v28 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = OUTLINED_FUNCTION_125();
      (v24)(v29);
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v7);
      OUTLINED_FUNCTION_78_3();
      v33 = OUTLINED_FUNCTION_221();
      sub_1BC863968(v33, v34, &qword_1BC901BF0, v35);
      v101 = v25;
      v37 = v36;
      v38 = OUTLINED_FUNCTION_221();
      v39 = v108;
      sub_1BC7C1744(v38, v40, &qword_1BC901BF0);
      v106(v1, v7);
      v41 = OUTLINED_FUNCTION_29();
      v44 = sub_1BC7A9A4C(v41, v42, v43);

      *(v28 + 4) = v44;
      *(v28 + 12) = 2080;
      v110 = sub_1BC7C0454(v39);
      v45 = sub_1BC8F7C94();
      sub_1BC7A9A4C(v45, v46, &v113);
      OUTLINED_FUNCTION_10_2();

      *(v28 + 14) = v37;
      v47 = v101;
      _os_log_impl(&dword_1BC7A3000, v101, v102, "saving transcription to file %s of %s entries", v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v20 = v107;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v106(v1, v7);
    }

    v63 = objc_opt_self();
    sub_1BC7D9730(0, &unk_1EBCF5E40, 0x1E69D8AD8);
    v64 = sub_1BC8F7E34();
    v113 = 0;
    v65 = [v63 archivedDataWithRootObject:v64 requiringSecureCoding:1 error:&v113];

    v66 = v113;
    if (v65)
    {
      v67 = sub_1BC8F70D4();
      v69 = v68;

      sub_1BC8F70F4();
      sub_1BC7D4C94(v67, v69);
      v95 = v104;
      v96 = v109;
      v97 = OUTLINED_FUNCTION_19_5();
      v98(v97);
      v99 = v96;
      v100 = 0;
    }

    else
    {
      v70 = v66;
      v71 = sub_1BC8F6EA4();

      swift_willThrow();
      v72 = v71;
      v73 = sub_1BC8F7714();
      v74 = sub_1BC8F81E4();

      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_9();
        v75 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v76 = swift_slowAlloc();
        v113 = v76;
        *v75 = 136315138;
        swift_getErrorValue();
        v77 = v111;
        v78 = v112;
        sub_1BC8F83F4();
        v105 = &v101;
        OUTLINED_FUNCTION_0();
        v108 = v22;
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1EEE9AC00](v79);
        v81 = &v101 - v80;
        (*(*(v78 - 8) + 16))(&v101 - v80, v77, v78);
        OUTLINED_FUNCTION_30_0();
        __swift_storeEnumTagSinglePayload(v82, v83, v84, v78);
        v85 = sub_1BC8073F0(v81, v78);
        v87 = v86;
        v88 = OUTLINED_FUNCTION_199();
        v89(v88);
        v90 = sub_1BC7A9A4C(v85, v87, &v113);

        *(v75 + 4) = v90;
        OUTLINED_FUNCTION_25_9();
        _os_log_impl(v91, v92, v93, v94, v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();

        v95 = v104;
        v106(v107, v104);
      }

      else
      {

        v95 = v104;
        v106(v20, v104);
      }

      v99 = v109;
      v100 = 1;
    }

    __swift_storeEnumTagSinglePayload(v99, v100, 1, v95);
    OUTLINED_FUNCTION_24();
  }

  else
  {
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_10_18();
      swift_once();
    }

    v48 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v48, qword_1EDC2B3D8);
    v49 = sub_1BC8F7714();
    sub_1BC8F8204();
    v50 = OUTLINED_FUNCTION_63_3();
    if (os_log_type_enabled(v50, v51))
    {
      OUTLINED_FUNCTION_45();
      v52 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v52);
      OUTLINED_FUNCTION_62_2();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_24();

    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  }
}

void Message.__allocating_init(conversationID:messageFile:messageThumbnail:messageType:transcript:sender:provider:isSensitive:duration:recipient:isRTT:simID:quality:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, unsigned __int8 *a29, __int128 *a30)
{
  OUTLINED_FUNCTION_97_0();
  v92 = v32;
  v93 = v33;
  v90 = v34;
  v91 = v35;
  v89 = v36;
  v101 = v37;
  v102 = v38;
  v99 = a23;
  v100 = v39;
  v97 = a25;
  v98 = a24;
  v96 = a26;
  v94 = a28;
  v95 = a27;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v41 = OUTLINED_FUNCTION_25(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v43);
  v44 = sub_1BC8F7014();
  v84 = v44;
  OUTLINED_FUNCTION_0_5();
  v46 = v45;
  v85 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_12();
  v50 = v49 - v48;
  v82 = v49 - v48;
  v51 = sub_1BC8F7264();
  v87 = v51;
  OUTLINED_FUNCTION_0_5();
  v53 = v52;
  v88 = v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v76 - v57;
  v81 = *a29;
  v78 = *a30;
  v77 = *(a30 + 2);
  sub_1BC8F7254();
  v59 = *(v53 + 16);
  v60 = v101;
  v59(v31, v101, v51);
  v59(v30, v60, v51);
  (*(v46 + 16))(v50, v102, v44);
  v61 = v83;
  sub_1BC7C4DAC(v89, v83, &qword_1EBCF5A20, &qword_1BC901BF0);
  v62 = v90;
  OUTLINED_FUNCTION_116();
  sub_1BC7C4DAC(v63, v50, &qword_1EBCF5A20, &qword_1BC901BF0);
  v64 = v92;
  if (!v91)
  {
    v64 = 0;
  }

  v92 = v64;
  if (v91)
  {
    v65 = v91;
  }

  else
  {
    v65 = 0xE000000000000000;
  }

  v66 = MessageStoreProvider.identifierString.getter(v93);
  v68 = v67;
  v106[0] = v81;
  v104 = v78;
  v105 = v77;
  v69 = objc_allocWithZone(type metadata accessor for Message(0));
  v103 = 1;
  LOBYTE(v75) = v96;
  LOBYTE(v74) = v99;
  Message.init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(v58, v31, v30, v82, v61, v100, v50, v92, v65, v66, v68, v74, v98, v97, v75, v95, v94, v106, 0x100000000, &v104, v76, v77, v78, *(&v78 + 1), v79, v80, v82, v83, v84, v85, v86, v87, v88, SBYTE4(v88), v89);
  sub_1BC7C1744(v62, &qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_72();
  sub_1BC7C1744(v70, v71, v72);
  OUTLINED_FUNCTION_20_3();
  v73(v102, v84);
  (*(v88 + 8))(v101, v87);
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_98();
}

void Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:reminderUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, objc_class *a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, __int128 *a28, unsigned __int8 a29, uint64_t a30, uint64_t a31, unsigned __int8 *a32, __int128 *a33, __int128 *a34, uint64_t *a35)
{
  OUTLINED_FUNCTION_97_0();
  a21 = v35;
  a22 = v36;
  v105 = v37;
  v106 = v38;
  HIDWORD(v104) = v39;
  v94 = v40;
  v93 = v41;
  v108 = v42;
  v109 = v43;
  v110 = v44;
  v102 = a24;
  v103 = a23;
  HIDWORD(v101) = a25;
  v100 = a26;
  v99 = a27;
  v98 = a29;
  v96 = a30;
  v95 = a31;
  v45 = a34;
  v107 = a35;
  v92 = a33;
  v46 = a32;
  v47 = a28;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v48);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_9(v50);
  v90 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v52 = v51;
  v89 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_12();
  v56 = v55 - v54;
  v57 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v59 = v58;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_20_0();
  v63 = v61 - v62;
  v65 = MEMORY[0x1EEE9AC00](v64);
  v67 = &v83 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v88 = *v47;
  v87 = *(v47 + 2);
  HIDWORD(v86) = *v46;
  v85 = *v45;
  v84 = *(v45 + 2);
  v68 = *(v59 + 16);
  v68(&v83 - v69, v110, v57);
  v68(v67, v108, v57);
  v68(v63, v109, v57);
  v70 = v93;
  v71 = v90;
  (*(v52 + 16))(v56, v93, v90);
  v72 = OUTLINED_FUNCTION_196(&a16);
  v73 = v91;
  sub_1BC7C4DAC(v72, v91, &qword_1EBCF5A20, &qword_1BC901BF0);
  v114 = v88;
  v115 = v87;
  v113 = BYTE4(v86);
  v111 = v85;
  v112 = v84;
  OUTLINED_FUNCTION_164();
  v91 = v74;
  v92 = &v111;
  v90 = &v113;
  v89 = v95;
  *(&v88 + 1) = v96;
  LOBYTE(v88) = v98;
  v87 = &v114;
  v86 = v99;
  *(&v85 + 1) = v100;
  LOBYTE(v85) = BYTE4(v101);
  v84 = v102;
  v83 = v103;
  v75 = OUTLINED_FUNCTION_41_1();
  Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:)(v75, v76, v63, v56, v73, HIDWORD(v104), v105, v106, v83, v84, v85, *(&v85 + 1), v86, v87, v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, v97, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  v78 = v77;
  sub_1BC7C1744(v52 + 16, &qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_20_3();
  v79(v70, v71);
  v80 = *(v59 + 8);
  v80(v109, v57);
  v80(v108, v57);
  v80(v110, v57);
  v81 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v82 = v78;
  sub_1BC7C3684(v107, v78 + v81, &unk_1EBCF5D70, &qword_1BC8FC740);
  swift_endAccess();

  OUTLINED_FUNCTION_98();
}