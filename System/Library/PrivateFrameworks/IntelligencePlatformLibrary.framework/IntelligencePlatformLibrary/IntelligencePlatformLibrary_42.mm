Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GeneratedImageFailureReason.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for GeneratedImageFailureReason();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_193779ED4(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE42940, &qword_193994DE8, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_193779ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageFailureReason();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static GeneratedImageFailureReason.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE42940, &qword_193994DE8, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_19377A068(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19377A068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageFailureReason();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static GeneratedImageFailureReason.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v2;
  v36 = v1;
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  if (*sub_19377D868() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v15 + 16))(v19, v21, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v15 + 8))(v21, v13);
    if (!v0)
    {
      v27 = v35;
      sub_19377A068(v12, v35);
      v28 = type metadata accessor for GeneratedImageFailureReason();
      v29 = *(v28 + 20);
      sub_19344E6DC(v27 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v31 + 16))(v27 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v27 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v27 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v27 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v26 = v5;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t GeneratedImageFailureReason.serialize()()
{
  v1 = type metadata accessor for GeneratedImageFailureReason();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_193779ED4(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE42940, &qword_193994DE8, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE42940, &qword_193994DE8);
  return v11;
}

id static GeneratedImageFailureReason.columns.getter()
{
  v135 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v12, v13, v14, v15, v16, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  v28 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v38 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v38);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v39, v40, v41, v42, v43, 14, 3);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  v44 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v54 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v64 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v64);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v65, v66, v67, v68, v69, 13, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v70 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  v80 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  v90 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v90);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v91, v92, v93, v94, v95, 13, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v96 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v106 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  v116 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v116);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v117, v118, v119, v120, v121, 4, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v122 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  v132 = OUTLINED_FUNCTION_6_4();
  *(v132 + 16) = xmmword_193950B10;
  *(v132 + 32) = sub_19393C850();
  v133 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v134 = OUTLINED_FUNCTION_22_6();
  result = sub_19343D150(v134, 0xE700000000000000, 0, 0, v132, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v135;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_19377A854()
{
  OUTLINED_FUNCTION_26();
  v50 = v1;
  v51 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  v9 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v49 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_1();
  v25 = v24 - v23;
  v26 = v5 == v22 && v3 == 0xE900000000000070;
  if (!v26 && (OUTLINED_FUNCTION_59_0(v22, 0xE900000000000070) & 1) == 0)
  {
    v29 = OUTLINED_FUNCTION_105();
    v31 = v5 == v29 && v3 == v30;
    if (v31 || (OUTLINED_FUNCTION_59_0(v29, 0xEA00000000007265) & 1) != 0)
    {
      v32 = type metadata accessor for GeneratedImageFailureReason();
      sub_1934486F8(v51 + *(v32 + 32), v8, &qword_1EAE3AA88, &qword_19394F9C0);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        v34 = v49;
        (*(v49 + 32))(v14, v8, v9);
        sub_1934948FC();
        (*(v34 + 8))(v14, v9);
        goto LABEL_9;
      }

      sub_19344E6DC(v8, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_17;
    }

    v35 = v5 == 0xD000000000000015 && 0x8000000193A2B230 == v3;
    if (v35 || (OUTLINED_FUNCTION_59_0(0xD000000000000015, 0x8000000193A2B230) & 1) != 0)
    {
      v36 = *(type metadata accessor for GeneratedImageFailureReason() + 36);
    }

    else
    {
      v39 = v5 == 0xD000000000000013 && 0x8000000193A2B250 == v3;
      if (!v39 && (OUTLINED_FUNCTION_59_0(0xD000000000000013, 0x8000000193A2B250) & 1) == 0)
      {
        v40 = v5 == 0x6E6F73616572 && v3 == 0xE600000000000000;
        if (v40 || (OUTLINED_FUNCTION_59_0(0x6E6F73616572, 0xE600000000000000) & 1) != 0)
        {
          v41 = type metadata accessor for GeneratedImageFailureReason();
          OUTLINED_FUNCTION_9_71(*(v41 + 44));
        }

        else
        {
          v42 = OUTLINED_FUNCTION_22_6();
          v43 = v5 == v42 && v3 == 0xE700000000000000;
          if (!v43 && (OUTLINED_FUNCTION_59_0(v42, 0xE700000000000000) & 1) == 0)
          {
            sub_19349AB64();
            swift_allocError();
            v46 = v45;
            *v45 = v5;
            v45[1] = v3;
            v45[5] = type metadata accessor for GeneratedImageFailureReason();
            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v46 + 2);
            sub_193779ED4(v51, boxed_opaque_existential_1Tm);
            *(v46 + 48) = 1;
            swift_willThrow();

            goto LABEL_9;
          }

          v44 = type metadata accessor for GeneratedImageFailureReason();
          OUTLINED_FUNCTION_9_71(*(v44 + 48));
        }

        goto LABEL_27;
      }

      v36 = *(type metadata accessor for GeneratedImageFailureReason() + 40);
    }

    v37 = (v51 + v36);
    v38 = *(v51 + v36 + 8);
    if (!v38)
    {
LABEL_17:
      v33 = v50;
      *v50 = 0u;
      v33[1] = 0u;
      goto LABEL_9;
    }

    v52 = *v37;
    v53 = v38;
LABEL_27:
    sub_1934948FC();
    goto LABEL_9;
  }

  v27 = type metadata accessor for GeneratedImageFailureReason();
  sub_1934486F8(v51 + *(v27 + 28), v17, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_19344E6DC(v17, &qword_1EAE3A9E8, &qword_19394F800);
    v28 = v50;
    *v50 = 0u;
    v28[1] = 0u;
  }

  else
  {
    (*(v20 + 32))(v25, v17, v18);
    sub_1934948FC();
    (*(v20 + 8))(v25, v18);
  }

LABEL_9:
  OUTLINED_FUNCTION_27();
}

uint64_t GeneratedImageFailureReason.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GeneratedImageFailureReason();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v6 = v2[8];
  sub_19344B7DC();
  v13 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_19377D868();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);
  sub_19344E6DC(a1 + v6, &qword_1EAE3AA88, &qword_19394F9C0);
  v9 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v9);

  *v13 = 0;
  v13[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  v11 = a1 + v2[11];
  *v11 = 0;
  v11[8] = 0;
  v12 = a1 + v2[12];
  *v12 = 0;
  v12[8] = 0;
  return result;
}

uint64_t static GeneratedImageFailureReason.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v71 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v67 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v65 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v64 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v64 - v12;
  v13 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v73 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v70 = type metadata accessor for GeneratedImageFailureReason();
  v27 = *(v70 + 28);
  v28 = *(v23 + 56);
  v72 = a1;
  sub_1934486F8(a1 + v27, v26, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(a2 + v27, &v26[v28], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v26, 1, v13);
  if (v29)
  {
    OUTLINED_FUNCTION_6_3(&v26[v28], 1, v13);
    if (v29)
    {
      sub_19344E6DC(v26, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_11;
    }

LABEL_9:
    v30 = &qword_1EAE3B968;
    v31 = &qword_193972430;
    v32 = v26;
LABEL_20:
    sub_19344E6DC(v32, v30, v31);
    goto LABEL_21;
  }

  sub_1934486F8(v26, v22, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v26[v28], 1, v13);
  if (v29)
  {
    (*(v73 + 8))(v22, v13);
    goto LABEL_9;
  }

  v33 = v73;
  (*(v73 + 32))(v18, &v26[v28], v13);
  OUTLINED_FUNCTION_19_9();
  sub_193652BF4(v34, v35, MEMORY[0x1E6969550]);
  v36 = sub_19393C550();
  v37 = *(v33 + 8);
  v37(v18, v13);
  v37(v22, v13);
  sub_19344E6DC(v26, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v39 = v69;
  v38 = v70;
  v40 = *(v70 + 32);
  v41 = *(v68 + 48);
  sub_1934486F8(v72 + v40, v69, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(a2 + v40, v39 + v41, &qword_1EAE3AA88, &qword_19394F9C0);
  v42 = v71;
  OUTLINED_FUNCTION_6_3(v39, 1, v71);
  if (!v29)
  {
    v43 = v66;
    sub_1934486F8(v39, v66, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v39 + v41, 1, v42);
    if (!v44)
    {
      v47 = v67;
      v48 = v39 + v41;
      v49 = v65;
      (*(v67 + 32))(v65, v48, v42);
      OUTLINED_FUNCTION_20_34();
      sub_193652BF4(v50, v51, MEMORY[0x1E69695C8]);
      v52 = sub_19393C550();
      v53 = *(v47 + 8);
      v53(v49, v42);
      v53(v43, v42);
      sub_19344E6DC(v39, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    (*(v67 + 8))(v43, v42);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_3(v39 + v41, 1, v42);
  if (!v29)
  {
LABEL_19:
    v30 = &qword_1EAE3B4E8;
    v31 = &unk_193952CF0;
    v32 = v39;
    goto LABEL_20;
  }

  sub_19344E6DC(v39, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_24:
  OUTLINED_FUNCTION_1_2();
  if (v54)
  {
    if (!v55)
    {
      goto LABEL_21;
    }

    v58 = *v56 == *v57 && v54 == v55;
    if (!v58 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v55)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_2();
  if (v59)
  {
    if (!v60)
    {
      goto LABEL_21;
    }

    v63 = *v61 == *v62 && v59 == v60;
    if (!v63 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v60)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_6_60(*(v38 + 44));
  sub_19377B57C();
  if (sub_19393C550())
  {
    OUTLINED_FUNCTION_6_60(*(v38 + 48));
    sub_19377B5D0();
    v45 = sub_19393C550();
    return v45 & 1;
  }

LABEL_21:
  v45 = 0;
  return v45 & 1;
}

unint64_t sub_19377B57C()
{
  result = qword_1EAE42950;
  if (!qword_1EAE42950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42950);
  }

  return result;
}

unint64_t sub_19377B5D0()
{
  result = qword_1EAE42958;
  if (!qword_1EAE42958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42958);
  }

  return result;
}

uint64_t GeneratedImageFailureReason.hash(into:)()
{
  v1 = v0;
  sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v33 = v3;
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v32 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = type metadata accessor for GeneratedImageFailureReason();
  sub_1934486F8(v1 + v21[7], v20, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v20, 1, v10);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v12 + 32))(v16, v20, v10);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_19_9();
    sub_193652BF4(v23, v24, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v12 + 8))(v16, v10);
  }

  sub_1934486F8(v1 + v21[8], v9, &qword_1EAE3AA88, &qword_19394F9C0);
  v25 = v34;
  OUTLINED_FUNCTION_6_3(v9, 1, v34);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v27 = v32;
    v26 = v33;
    (*(v33 + 32))(v32, v9, v25);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_20_34();
    sub_193652BF4(v28, v29, MEMORY[0x1E69695B8]);
    sub_19393C540();
    (*(v26 + 8))(v27, v25);
  }

  if (*(v1 + v21[9] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v21[10] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_17_29(v21[11]);
  sub_19377B9D8();
  sub_19393C540();
  OUTLINED_FUNCTION_17_29(v21[12]);
  sub_19377BA2C();
  return sub_19393C540();
}

unint64_t sub_19377B9D8()
{
  result = qword_1EAE42960;
  if (!qword_1EAE42960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42960);
  }

  return result;
}

unint64_t sub_19377BA2C()
{
  result = qword_1EAE42968;
  if (!qword_1EAE42968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42968);
  }

  return result;
}

void GeneratedImageFailureReason.Reason.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static GeneratedImageFailureReason.Reason.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42988, &qword_193994EF8);
  v3 = v0;
  v5 = *(v0 + 2);
  v4 = *(v0 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v79 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_84_2(v79, v80, v81, v82, &qword_1EAE42988, &qword_193994EF8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v83 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_85(v83, v84, v85, v86, &qword_1EAE42988, &qword_193994EF8);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v87 = OUTLINED_FUNCTION_39(v4);
    v0 = sub_1934B0FCC(v87, v5 + 3, 1, v88, &qword_1EAE42988, &qword_193994EF8);
    v3 = v0;
  }

  *(v3 + 16) = v11;
  v12 = v3 + 16 * v9;
  *(v12 + 32) = 1;
  *(v12 + 40) = 1;
  v13 = *(v3 + 24);
  if ((v5 + 4) > (v13 >> 1))
  {
    v89 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_84_2(v89, v90, v91, v92, &qword_1EAE42988, &qword_193994EF8);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 4;
  v14 = v3 + 16 * v11;
  *(v14 + 32) = 2;
  *(v14 + 40) = 1;
  v15 = *(v3 + 24);
  if ((v5 + 5) > (v15 >> 1))
  {
    v93 = OUTLINED_FUNCTION_39(v15);
    v0 = OUTLINED_FUNCTION_85(v93, v94, v95, v96, &qword_1EAE42988, &qword_193994EF8);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_4(v16);
  if ((v5 + 6) > (v21 >> 1))
  {
    v97 = OUTLINED_FUNCTION_39(v21);
    v17 = OUTLINED_FUNCTION_84_2(v97, v98, v99, v100, &qword_1EAE42988, &qword_193994EF8);
    v20 = v17;
  }

  OUTLINED_FUNCTION_50(v17, v18, v19, v20);
  OUTLINED_FUNCTION_4(v22);
  if ((v5 + 7) > (v27 >> 1))
  {
    v101 = OUTLINED_FUNCTION_39(v27);
    v23 = OUTLINED_FUNCTION_85(v101, v102, v103, v104, &qword_1EAE42988, &qword_193994EF8);
    v26 = v23;
  }

  OUTLINED_FUNCTION_47_5(v23, v24, v25, v26);
  OUTLINED_FUNCTION_4(v28);
  if ((v5 + 8) > (v33 >> 1))
  {
    v105 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_84_2(v105, v106, v107, v108, &qword_1EAE42988, &qword_193994EF8);
    v32 = v29;
  }

  OUTLINED_FUNCTION_50(v29, v30, v31, v32);
  OUTLINED_FUNCTION_4(v34);
  if ((v5 + 9) > (v39 >> 1))
  {
    v109 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_85(v109, v110, v111, v112, &qword_1EAE42988, &qword_193994EF8);
    v38 = v35;
  }

  OUTLINED_FUNCTION_47_5(v35, v36, v37, v38);
  OUTLINED_FUNCTION_4(v40);
  if ((v5 + 10) > (v45 >> 1))
  {
    v113 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_84_2(v113, v114, v115, v116, &qword_1EAE42988, &qword_193994EF8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_50(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if ((v5 + 11) > (v51 >> 1))
  {
    v117 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_85(v117, v118, v119, v120, &qword_1EAE42988, &qword_193994EF8);
    v50 = v47;
  }

  OUTLINED_FUNCTION_47_5(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if ((v5 + 12) > (v57 >> 1))
  {
    v121 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_84_2(v121, v122, v123, v124, &qword_1EAE42988, &qword_193994EF8);
    v56 = v53;
  }

  OUTLINED_FUNCTION_50(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  if ((v5 + 13) > (v63 >> 1))
  {
    v125 = OUTLINED_FUNCTION_39(v63);
    v59 = OUTLINED_FUNCTION_85(v125, v126, v127, v128, &qword_1EAE42988, &qword_193994EF8);
    v62 = v59;
  }

  OUTLINED_FUNCTION_47_5(v59, v60, v61, v62);
  OUTLINED_FUNCTION_4(v64);
  if ((v5 + 14) > (v69 >> 1))
  {
    v129 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v129, v130, v131, v132, &qword_1EAE42988, &qword_193994EF8);
    v68 = v65;
  }

  OUTLINED_FUNCTION_50(v65, v66, v67, v68);
  OUTLINED_FUNCTION_4(v70);
  if ((v5 + 15) > (v75 >> 1))
  {
    v133 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v133, v134, v135, v136, &qword_1EAE42988, &qword_193994EF8);
    v74 = v71;
  }

  OUTLINED_FUNCTION_47_5(v71, v72, v73, v74);
  *(v76 + 32) = 13;
  *(v76 + 40) = 1;
  return v77;
}

unint64_t GeneratedImageFailureReason.Reason.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x727265764F534D47;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_19_51();
      break;
    case 2:
      result = 0x6867697279706F43;
      break;
    case 3:
      result = OUTLINED_FUNCTION_21_43();
      break;
    case 4:
      result = OUTLINED_FUNCTION_23_42();
      break;
    case 5:
      result = OUTLINED_FUNCTION_24_43();
      break;
    case 6:
      result = OUTLINED_FUNCTION_20_45();
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xALL:
      result = 0xD000000000000019;
      break;
    case 0xBLL:
      result = 0xD000000000000014;
      break;
    case 0xCLL:
      result = 0x6F6F626154;
      break;
    case 0xDLL:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

void GeneratedImageFailureReason.Reason.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x727265764F534D47 ? (v5 = v0 == 0xEB00000000656469) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x727265764F534D47, 0xEB00000000656469) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_51();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v10 = v1 == 0x6867697279706F43 && v0 == 0xE900000000000074;
      if (v10 || (OUTLINED_FUNCTION_0_9(0x6867697279706F43, 0xE900000000000074) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_21_43();
        v13 = v1 == v11 && v0 == v12;
        if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v14 = OUTLINED_FUNCTION_23_42();
          v16 = v1 == v14 && v0 == v15;
          if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            v17 = OUTLINED_FUNCTION_24_43();
            v19 = v1 == v17 && v0 == v18;
            if (v19 || (OUTLINED_FUNCTION_0_9(v17, v18) & 1) != 0)
            {

              v6 = 5;
            }

            else
            {
              v20 = OUTLINED_FUNCTION_20_45();
              v22 = v1 == v20 && v0 == v21;
              if (v22 || (OUTLINED_FUNCTION_0_9(v20, v21) & 1) != 0)
              {

                v6 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_26_4();
                v24 = v4 && v23 == v0;
                if (v24 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v23) & 1) != 0)
                {

                  v6 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_26_4();
                  v26 = v4 && v25 == v0;
                  if (v26 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v25) & 1) != 0)
                  {

                    v6 = 8;
                  }

                  else
                  {
                    v27 = v1 == 0xD000000000000015 && 0x8000000193A35E50 == v0;
                    if (v27 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A35E50) & 1) != 0)
                    {

                      v6 = 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_26_4();
                      v29 = v4 && v28 == v0;
                      if (v29 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v28) & 1) != 0)
                      {

                        v6 = 10;
                      }

                      else
                      {
                        v30 = v1 == 0xD000000000000014 && 0x8000000193A35E10 == v0;
                        if (v30 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, 0x8000000193A35E10) & 1) != 0)
                        {

                          v6 = 11;
                        }

                        else
                        {
                          v31 = v1 == 0x6F6F626154 && v0 == 0xE500000000000000;
                          if (v31 || (OUTLINED_FUNCTION_0_9(0x6F6F626154, 0xE500000000000000) & 1) != 0)
                          {

                            v6 = 12;
                          }

                          else if (v1 == 0xD000000000000017 && 0x8000000193A35DF0 == v0)
                          {

                            v6 = 13;
                          }

                          else
                          {
                            v33 = OUTLINED_FUNCTION_0_9(0xD000000000000017, 0x8000000193A35DF0);

                            v6 = 13;
                            if ((v33 & 1) == 0)
                            {
                              v6 = 0;
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
  }

  OUTLINED_FUNCTION_12_1(v6);
}

void GeneratedImageFailureReason.Feature.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static GeneratedImageFailureReason.Feature.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42980, &qword_193994EF0);
  v3 = v0;
  v5 = *(v0 + 2);
  v4 = *(v0 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v19 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_84_2(v19, v20, v21, v22, &qword_1EAE42980, &qword_193994EF0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  if (v6 < (v5 + 2))
  {
    v23 = OUTLINED_FUNCTION_39(v4);
    OUTLINED_FUNCTION_85(v23, v24, v25, v26, &qword_1EAE42980, &qword_193994EF0);
    OUTLINED_FUNCTION_17_2();
  }

  *(v3 + 16) = v5 + 2;
  v9 = v3 + 16 * v7;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  if (v6 < (v5 + 3))
  {
    v27 = OUTLINED_FUNCTION_39(v4);
    v0 = OUTLINED_FUNCTION_84_2(v27, v28, v29, v30, &qword_1EAE42980, &qword_193994EF0);
    v3 = v0;
  }

  OUTLINED_FUNCTION_50(v0, v1, v2, v3);
  *(v14 + 32) = 1;
  *(v14 + 40) = 1;
  v15 = *(v13 + 24);
  if ((v5 + 4) > (v15 >> 1))
  {
    v31 = OUTLINED_FUNCTION_39(v15);
    v10 = OUTLINED_FUNCTION_85(v31, v32, v33, v34, &qword_1EAE42980, &qword_193994EF0);
    v13 = v10;
  }

  OUTLINED_FUNCTION_47_5(v10, v11, v12, v13);
  *(v16 + 32) = 2;
  *(v16 + 40) = 1;
  return v17;
}

uint64_t GeneratedImageFailureReason.Feature.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x616C506567616D49;
  if (*v0 != 1)
  {
    v1 = 0x706150636967614DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696A6F6D6E6547;
  }
}

void GeneratedImageFailureReason.Feature.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x696A6F6D6E6547 ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x696A6F6D6E6547, 0xE700000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x616C506567616D49 && v0 == 0xEF646E756F726779;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x616C506567616D49, 0xEF646E756F726779) & 1) != 0)
    {

      v6 = 1;
    }

    else if (v1 == 0x706150636967614DLL && v0 == 0xEA00000000007265)
    {

      v6 = 2;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_0_9(0x706150636967614DLL, 0xEA00000000007265);

      v6 = 2;
      if ((v9 & 1) == 0)
      {
        v6 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

unint64_t sub_19377C770()
{
  result = qword_1EAE42970;
  if (!qword_1EAE42970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42970);
  }

  return result;
}

unint64_t sub_19377C7C8()
{
  result = qword_1EAE42978;
  if (!qword_1EAE42978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42978);
  }

  return result;
}

void sub_19377C844()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD8B0);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v7, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "timestamp";
  *(v0 + 8) = 9;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 2;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v13 = 3;
  *v12 = "userInterfaceLanguage";
  *(v12 + 8) = 21;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v15 = 4;
  *v14 = "userSetRegionFormat";
  *(v14 + 8) = 19;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v6);
  *v17 = 5;
  *v16 = "reason";
  *(v16 + 8) = 6;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v18 = OUTLINED_FUNCTION_3_1(v1 + 5 * v6);
  *v19 = 6;
  *v18 = "feature";
  *(v18 + 8) = 7;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19377CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  while (1)
  {
    v10 = sub_19393C0E0();
    if (v7 || (v11 & 1) != 0)
    {
      break;
    }

    switch(v10)
    {
      case 1:
        v12 = type metadata accessor for GeneratedImageFailureReason();
        sub_1934976E4(v3 + *(v12 + 28), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_9;
      case 2:
        v14 = type metadata accessor for GeneratedImageFailureReason();
        sub_193497890(v3 + *(v14 + 32));
        goto LABEL_9;
      case 3:
      case 4:
        type metadata accessor for GeneratedImageFailureReason();
        sub_19393C200();
LABEL_9:
        v7 = 0;
        continue;
      case 5:
        OUTLINED_FUNCTION_12_41();
        sub_1934982A8();
        v13 = *(OUTLINED_FUNCTION_5_68() + 44);
        goto LABEL_11;
      case 6:
        OUTLINED_FUNCTION_12_41();
        sub_1934982A8();
        v13 = *(OUTLINED_FUNCTION_5_68() + 48);
LABEL_11:
        v15 = v3 + v13;
        *v15 = v5;
        *(v15 + 8) = v6 & 1;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_19377CC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_19377CE40(v3, a1, a2, a3);
  if (!v4)
  {
    sub_19377D000(v3, a1, a2, a3);
    v9 = type metadata accessor for GeneratedImageFailureReason();
    v10 = v9;
    if (*(v3 + *(v9 + 36) + 8))
    {
      OUTLINED_FUNCTION_32_20();
      sub_19393C3C0();
    }

    if (*(v3 + *(v10 + 40) + 8))
    {
      OUTLINED_FUNCTION_32_20();
      sub_19393C3C0();
    }

    sub_19377B57C();
    if ((sub_19393C550() & 1) == 0)
    {
      OUTLINED_FUNCTION_32_20();
      sub_193447324(v11, v12, v13, v14, v15, v16);
    }

    sub_19377B5D0();
    result = sub_19393C550();
    if ((result & 1) == 0)
    {
      OUTLINED_FUNCTION_32_20();
      return sub_193447324(v17, v18, v19, v20, v21, v22);
    }
  }

  return result;
}

uint64_t sub_19377CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GeneratedImageFailureReason();
  sub_193448758(v6 + *(v15 + 28), v9, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
  {
    return sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
  }

  (*(v11 + 32))(v14, v9, v5);
  sub_193451F04(v14, 1, 2020175477, 0xE400000000000000, v4, v17[3]);
  return (*(v11 + 8))(v14, v5);
}

uint64_t sub_19377D000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GeneratedImageFailureReason();
  sub_193448758(v5 + *(v14 + 32), v8, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
  {
    return sub_19344E6DC(v8, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v10 + 32))(v13, v8, v4);
  sub_19344652C();
  return (*(v10 + 8))(v13, v4);
}

uint64_t sub_19377D1B4(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE42990;

  return v1;
}

void sub_19377D250()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD8C8);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_193952670;
  v5 = v50 + v0 + dword_1EAEAD900;
  *(v50 + v0) = 0;
  *v5 = "ReasonUnknown";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v50 + v0 + v4);
  *v9 = 1;
  *v8 = "GMSOverride";
  v8[1] = 11;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v50 + v0 + 2 * v4);
  *v12 = 2;
  *v11 = "LexiconLanguage";
  v11[1] = 15;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v50 + v0 + 3 * v4);
  *v15 = 3;
  *v14 = "Copyright";
  v14[1] = 9;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v50 + v0 + 4 * v4);
  *v18 = 4;
  *v17 = "TextSafetyModel";
  v17[1] = 15;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v50 + v0 + 5 * v4);
  *v21 = 5;
  *v20 = "ADMBlocklist";
  v20[1] = 12;
  v22 = OUTLINED_FUNCTION_1_3(v20);
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_14_4(6);
  *v23 = "SafetyNudity";
  *(v23 + 1) = 12;
  v24 = OUTLINED_FUNCTION_1_3(v23);
  (v7)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v50 + v0 + 7 * v4);
  *v26 = 7;
  *v25 = "SafetyViolence";
  v25[1] = 14;
  v27 = OUTLINED_FUNCTION_1_3(v25);
  (v7)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v50 + v0 + 8 * v4);
  *v29 = 8;
  *v28 = "SafetyStructuralIntegrity";
  v28[1] = 25;
  v30 = OUTLINED_FUNCTION_1_3(v28);
  (v7)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v50 + v0 + 9 * v4);
  *v32 = 9;
  *v31 = "MultiplePeopleNoFaceprint";
  v31[1] = 25;
  v33 = OUTLINED_FUNCTION_1_3(v31);
  (v7)(v33);
  v34 = OUTLINED_FUNCTION_14_4(10);
  *v34 = "AnimalPeopleConfusion";
  *(v34 + 1) = 21;
  v35 = OUTLINED_FUNCTION_1_3(v34);
  (v7)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v50 + v0 + 11 * v4);
  *v37 = v38;
  *v36 = "InputNoPeopleOutputPeople";
  v36[1] = 25;
  v39 = OUTLINED_FUNCTION_1_3(v36);
  (v7)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v50 + v0 + 12 * v4);
  *v41 = 12;
  *v40 = "OutputMultiplePeople";
  v40[1] = 20;
  v42 = OUTLINED_FUNCTION_1_3(v40);
  (v7)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v50 + v0 + 13 * v4);
  *v44 = v45;
  *v43 = "Taboo";
  v43[1] = 5;
  v46 = OUTLINED_FUNCTION_1_3(v43);
  (v7)(v46);
  v47 = OUTLINED_FUNCTION_3_1(v50 + v0 + 14 * v4);
  *v48 = v49;
  *v47 = "InputTextMultiplePeople";
  *(v47 + 8) = 23;
  *(v47 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19377D65C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD8E0);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v7, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "FeatureUnknown";
  *(v0 + 8) = 14;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 1;
  *v10 = "Genmoji";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v13 = 2;
  *v12 = "ImagePlayground";
  *(v12 + 8) = 15;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v15 = 3;
  *v14 = "MagicPaper";
  *(v14 + 8) = 10;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t GeneratedImageFailureReason.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t type metadata accessor for GeneratedImageFailureReason()
{
  result = qword_1EAE93BC0;
  if (!qword_1EAE93BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeneratedImageFailureReason.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t GeneratedImageFailureReason.timestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 28));
}

uint64_t GeneratedImageFailureReason.identifier.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 32));
}

uint64_t GeneratedImageFailureReason.userInterfaceLanguage.getter()
{
  type metadata accessor for GeneratedImageFailureReason();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageFailureReason.userInterfaceLanguage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GeneratedImageFailureReason() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GeneratedImageFailureReason.userSetRegionFormat.getter()
{
  type metadata accessor for GeneratedImageFailureReason();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageFailureReason.userSetRegionFormat.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GeneratedImageFailureReason() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void GeneratedImageFailureReason.reason.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  OUTLINED_FUNCTION_2_52(*(v0 + 44));
}

uint64_t GeneratedImageFailureReason.reason.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for GeneratedImageFailureReason();
  v5 = v1 + *(result + 44);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void GeneratedImageFailureReason.feature.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  OUTLINED_FUNCTION_2_52(*(v0 + 48));
}

uint64_t GeneratedImageFailureReason.feature.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for GeneratedImageFailureReason();
  v5 = v1 + *(result + 48);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_19377DE60@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageFailureReason.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19377DE88@<X0>(uint64_t *a1@<X8>)
{
  result = static GeneratedImageFailureReason.Reason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19377DEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19377DFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_19377E0F8@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageFailureReason.Feature.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19377E120@<X0>(uint64_t *a1@<X8>)
{
  result = static GeneratedImageFailureReason.Feature.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t GeneratedImageFailureReason.hashValue.getter()
{
  sub_19393CAB0();
  GeneratedImageFailureReason.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19377E260()
{
  sub_19393CAB0();
  GeneratedImageFailureReason.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19377E308()
{
  result = qword_1EAE429C0;
  if (!qword_1EAE429C0)
  {
    type metadata accessor for GeneratedImageFailureReason();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE429C0);
  }

  return result;
}

uint64_t sub_19377E38C()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_193658134();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *_s11MobileAssetOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s9LifeCycleOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19377E64C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED512298);
  v4 = __swift_project_value_buffer(v3, qword_1ED512298);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.MobileAsset.LifeCycle.InstrumentationEvent.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:1 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_66 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512298);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429C8, &qword_193995260);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.MobileAsset.LifeCycle.InstrumentationEvent.attribute(_:)(void (*a1)(void))
{
  result = sub_19377EA5C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19377EAA4(void (*a1)(void))
{
  result = sub_19377EA5C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19377EAD4(uint64_t a1)
{
  result = sub_19377EAFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19377EAFC()
{
  result = qword_1EAE3A8C0;
  if (!qword_1EAE3A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A8C0);
  }

  return result;
}

_BYTE *_s20InstrumentationEventOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MobileAssetInstrumentationEvent.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for MobileAssetInstrumentationEvent();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429D0, &qword_1939952E8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19377EE04(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE429D0, &qword_1939952E8, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE429D0, &qword_1939952E8);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19377EE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetInstrumentationEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MobileAssetInstrumentationEvent.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429D0, &qword_1939952E8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE429D0, &qword_1939952E8, v8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19377EFA8(v6, a1);
  }

  return result;
}

uint64_t sub_19377EFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetInstrumentationEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MobileAssetInstrumentationEvent.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429D0, &qword_1939952E8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_193783268() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_19377EFA8(v11, v36);
      v29 = type metadata accessor for MobileAssetInstrumentationEvent();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t MobileAssetInstrumentationEvent.serialize()()
{
  v1 = type metadata accessor for MobileAssetInstrumentationEvent();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429D0, &qword_1939952E8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_19377EE04(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE429D0, &qword_1939952E8, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE429D0, &qword_1939952E8);
  return v11;
}

id static MobileAssetInstrumentationEvent.columns.getter()
{
  v13 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_10_62();
  OUTLINED_FUNCTION_16_38();
  result = sub_19343D150(v3, v4, 2, 0, v1, 13, 0);
  if (result)
  {
    inited[2].n128_u64[0] = result;
    sub_19343D230(inited);
    v6 = swift_initStackObject();
    v7 = OUTLINED_FUNCTION_22_15(v6, xmmword_193950B10);
    *(v7 + 16) = xmmword_193950B10;
    *(v7 + 32) = sub_19393C850();
    v8 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
    OUTLINED_FUNCTION_96_6();
    OUTLINED_FUNCTION_11();
    result = sub_19343D150(v9, v10, v11, v12, v7, 4, 0);
    if (result)
    {
      v6[2].n128_u64[0] = result;
      sub_19343D230(v6);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

int *sub_19377F620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_16_38();
  v7 = OUTLINED_FUNCTION_10_62();
  v9 = a1 == v7 && a2 == v8;
  if (v9 || (OUTLINED_FUNCTION_59_0(v7, v8) & 1) != 0)
  {
    result = type metadata accessor for MobileAssetInstrumentationEvent();
    v11 = (v3 + result[7]);
    v12 = v11[1];
    if (v12)
    {
      __dst[0] = *v11;
      __dst[1] = v12;
      return sub_1934948FC();
    }

    goto LABEL_15;
  }

  v13 = OUTLINED_FUNCTION_96_6();
  v15 = a1 == v13 && a2 == v14;
  if (v15 || (OUTLINED_FUNCTION_59_0(v13, 0xE900000000000065) & 1) != 0)
  {
    result = type metadata accessor for MobileAssetInstrumentationEvent();
    v16 = v3 + result[8];
    if ((*(v16 + 9) & 1) == 0)
    {
      v17 = *(v16 + 8);
      __dst[0] = *v16;
      LOBYTE(__dst[1]) = v17 & 1;
      return sub_1934948FC();
    }

    goto LABEL_15;
  }

  v18 = a1 == 0xD000000000000010 && 0x8000000193A35F90 == a2;
  if (v18 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193A35F90) & 1) != 0)
  {
    result = type metadata accessor for MobileAssetInstrumentationEvent();
    v19 = (v3 + result[9]);
    v20 = v19[9];
    if (v20 != 1)
    {
      memcpy(__dst, v19, 0x48uLL);
      __dst[9] = v20;
      v21 = &type metadata for MADownloadResultEvent;
      v22 = &off_1F07EFE40;
      return sub_193494798(v21, v22, a3);
    }

    goto LABEL_15;
  }

  v23 = a1 == 0x657275636553616DLL && a2 == 0xEE006C6961746544;
  if (v23 || (OUTLINED_FUNCTION_59_0(0x657275636553616DLL, 0xEE006C6961746544) & 1) != 0)
  {
    v24 = type metadata accessor for MobileAssetInstrumentationEvent();
    memcpy(__dst, (v3 + *(v24 + 40)), sizeof(__dst));
    result = sub_1934B59A8(__dst);
    if (result != 1)
    {
      memcpy(v28, __dst, sizeof(v28));
      v21 = &type metadata for MASecureDetailEvent;
      v22 = &off_1F07EFE50;
      return sub_193494798(v21, v22, a3);
    }

LABEL_15:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v26 = v25;
  *v25 = a1;
  v25[1] = a2;
  v25[5] = type metadata accessor for MobileAssetInstrumentationEvent();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26 + 2);
  sub_19377EE04(v3, boxed_opaque_existential_1Tm);
  *(v26 + 48) = 1;
  swift_willThrow();
}

void sub_19377F8A4()
{
  OUTLINED_FUNCTION_5_69();
  v6 = memcpy(__dst, v5, sizeof(__dst));
  v12 = v2 == v4 && v1 == v3;
  if (v12 || (v6 = OUTLINED_FUNCTION_5_5(v4, v3), (v6 & 1) != 0))
  {
    if (*(&__dst[0] + 1) != 1)
    {
      *(&v44[0] + 1) = *(&__dst[0] + 1);
      v44[1] = __dst[1];
      v44[2] = __dst[2];
      OUTLINED_FUNCTION_52_2(v6, &type metadata for MAAssetMetadata, &off_1F07EFE60, v7, v8, v9, v10, v11, *&__dst[0]);
      sub_193494798(v13, v14, v15);
      return;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v24 = v2 == 0xD000000000000015 && v17 == v1;
  if (v24 || (v16 = OUTLINED_FUNCTION_2_75(v16, v17), (v16 & 1) != 0))
  {
    v25 = LOBYTE(__dst[3]);
LABEL_14:
    if (v25 == 2)
    {
LABEL_15:
      *v0 = 0u;
      v0[1] = 0u;
      return;
    }

    LOBYTE(v44[0]) = v25 & 1;
    v26 = MEMORY[0x1E69E6370];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD000000000000016;
  v28 = v2 == 0xD000000000000016 && v27 == v1;
  if (v28 || (v16 = OUTLINED_FUNCTION_5_5(0xD000000000000016, v27), (v16 & 1) != 0))
  {
    v25 = BYTE1(__dst[3]);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD00000000000001FLL;
  v30 = v2 == 0xD00000000000001FLL && v29 == v1;
  if (v30 || (v16 = OUTLINED_FUNCTION_5_5(0xD00000000000001FLL, v29), (v16 & 1) != 0))
  {
    v25 = BYTE2(__dst[3]);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD000000000000020;
  v32 = v2 == 0xD000000000000020 && v31 == v1;
  if (v32 || (v16 = OUTLINED_FUNCTION_5_5(0xD000000000000020, v31), (v16 & 1) != 0))
  {
    v25 = BYTE3(__dst[3]);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD00000000000001DLL;
  v34 = v2 == 0xD00000000000001DLL && v33 == v1;
  if (v34 || (v16 = OUTLINED_FUNCTION_5_5(0xD00000000000001DLL, v33), (v16 & 1) != 0))
  {
    v25 = BYTE4(__dst[3]);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD00000000000001ELL;
  v36 = v2 == 0xD00000000000001ELL && v35 == v1;
  if (v36 || (v16 = OUTLINED_FUNCTION_5_5(0xD00000000000001ELL, v35), (v16 & 1) != 0))
  {
    v25 = BYTE5(__dst[3]);
    goto LABEL_14;
  }

  v16 = 0x6F747541414D7369;
  v37 = v2 == 0x6F747541414D7369 && v1 == 0xED00007465737341;
  if (v37 || (v16 = OUTLINED_FUNCTION_5_5(0x6F747541414D7369, 0xED00007465737341), (v16 & 1) != 0))
  {
    v25 = BYTE6(__dst[3]);
    goto LABEL_14;
  }

  v16 = 0x6572637369447369;
  v38 = v2 == 0x6572637369447369 && v1 == 0xEF7972616E6F6974;
  if (v38 || (v16 = OUTLINED_FUNCTION_5_5(0x6572637369447369, 0xEF7972616E6F6974), (v16 & 1) != 0))
  {
    v25 = BYTE7(__dst[3]);
    goto LABEL_14;
  }

  v16 = 0x7250726573557349;
  v39 = v2 == 0x7250726573557349 && v1 == 0xEE00797469726F69;
  if (v39 || (v16 = OUTLINED_FUNCTION_5_5(0x7250726573557349, 0xEE00797469726F69), (v16 & 1) != 0))
  {
    v25 = BYTE8(__dst[3]);
    goto LABEL_14;
  }

  v16 = OUTLINED_FUNCTION_12_50();
  v40 = v12 && v1 == 0xE600000000000000;
  if (v40 || (v16 = OUTLINED_FUNCTION_5_5(v16, 0xE600000000000000), (v16 & 1) != 0))
  {
    if (!*(&__dst[4] + 1))
    {
      goto LABEL_15;
    }

    v44[0] = __dst[4];
    v26 = MEMORY[0x1E69E6158];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v16, v26, v18, v19, v20, v21, v22, v23, *&v44[0]);
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v42 = v41;
  *v41 = v2;
  v41[1] = v1;
  v41[5] = &type metadata for MADownloadResultEvent;
  v43 = swift_allocObject();
  v42[2] = v43;
  memcpy((v43 + 16), __dst, 0x50uLL);
  *(v42 + 48) = 1;
  swift_willThrow();

  sub_19378024C(__dst, v44);
}

void sub_19377FBFC()
{
  OUTLINED_FUNCTION_5_69();
  v6 = memcpy(__dst, v5, sizeof(__dst));
  v12 = v2 == v4 && v1 == v3;
  if (v12 || (v6 = OUTLINED_FUNCTION_5_5(v4, v3), (v6 & 1) != 0))
  {
    if (*&__dst[8] != 1)
    {
      v47 = *&__dst[8];
      v48 = *&__dst[16];
      v49 = *&__dst[32];
      OUTLINED_FUNCTION_52_2(v6, &type metadata for MAAssetMetadata, &off_1F07EFE60, v7, v8, v9, v10, v11, *__dst);
      sub_193494798(v14, v15, v16);
      return;
    }

    goto LABEL_15;
  }

  v17 = 0x614E746E65696C63;
  v18 = v2 == 0x614E746E65696C63 && v1 == 0xEA0000000000656DLL;
  if (v18 || (v17 = OUTLINED_FUNCTION_5_5(0x614E746E65696C63, 0xEA0000000000656DLL), (v17 & 1) != 0))
  {
    v19 = __dst[48];
LABEL_14:
    if (v19 == 2)
    {
LABEL_15:
      *v0 = 0u;
      v0[1] = 0u;
      return;
    }

    LOBYTE(v46) = v19 & 1;
    v20 = MEMORY[0x1E69E6370];
    goto LABEL_17;
  }

  v17 = 0x61636F4C6D6F7266;
  v21 = v2 == 0x61636F4C6D6F7266 && v1 == 0xEC0000006E6F6974;
  if (v21 || (v17 = OUTLINED_FUNCTION_5_5(0x61636F4C6D6F7266, 0xEC0000006E6F6974), (v17 & 1) != 0))
  {
    v19 = __dst[49];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v23 = v2 == 0xD000000000000015 && v22 == v1;
  if (v23 || (v17 = OUTLINED_FUNCTION_2_75(v17, v22), (v17 & 1) != 0))
  {
    v24 = *&__dst[64];
    if (!*&__dst[64])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[56];
    goto LABEL_31;
  }

  v17 = 0x676E697466617267;
  v26 = v2 == 0x676E697466617267 && v1 == 0xEE00746C75736552;
  if (v26 || (v17 = OUTLINED_FUNCTION_5_5(0x676E697466617267, 0xEE00746C75736552), (v17 & 1) != 0))
  {
    v19 = __dst[72];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v28 = v2 == 0xD000000000000017 && v27 == v1;
  if (v28 || (v17 = OUTLINED_FUNCTION_5_5(0xD000000000000017, v27), (v17 & 1) != 0))
  {
    v24 = *&__dst[88];
    if (!*&__dst[88])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[80];
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_38();
  v30 = v2 == 0xD000000000000017 && v29 == v1;
  if (v30 || (v17 = OUTLINED_FUNCTION_5_5(0xD000000000000017, v29), (v17 & 1) != 0))
  {
    v19 = __dst[96];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v32 = v2 == 0xD000000000000015 && v31 == v1;
  if (v32 || (v17 = OUTLINED_FUNCTION_2_75(v17, v31), (v17 & 1) != 0))
  {
    v24 = *&__dst[112];
    if (!*&__dst[112])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[104];
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_38();
  v34 = v2 == 0xD000000000000015 && v33 == v1;
  if (v34 || (v17 = OUTLINED_FUNCTION_2_75(v17, v33), (v17 & 1) != 0))
  {
    v19 = __dst[120];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v36 = v2 == 0xD000000000000015 && v35 == v1;
  if (v36 || (v17 = OUTLINED_FUNCTION_2_75(v17, v35), (v17 & 1) != 0))
  {
    if (__dst[137])
    {
      goto LABEL_15;
    }

    v46 = *&__dst[128];
    LOBYTE(v47) = __dst[136] & 1;
    v20 = &type metadata for MASecureOperationType;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v38 = v2 == 0xD000000000000018 && v37 == v1;
  if (v38 || (v17 = OUTLINED_FUNCTION_5_5(0xD000000000000018, v37), (v17 & 1) != 0))
  {
    v24 = *&__dst[152];
    if (!*&__dst[152])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[144];
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_38();
  v40 = v2 == 0xD000000000000018 && v39 == v1;
  if (v40 || (v17 = OUTLINED_FUNCTION_5_5(0xD000000000000018, v39), (v17 & 1) != 0))
  {
    v19 = __dst[160];
    goto LABEL_14;
  }

  v17 = 0x6552657275636573;
  v41 = v2 == 0x6552657275636573 && v1 == 0xEC0000006E6F7361;
  if (v41 || (v17 = OUTLINED_FUNCTION_5_5(0x6552657275636573, 0xEC0000006E6F7361), (v17 & 1) != 0))
  {
    v24 = *&__dst[176];
    if (!*&__dst[176])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[168];
    goto LABEL_31;
  }

  v17 = OUTLINED_FUNCTION_12_50();
  v42 = v12 && v1 == 0xE600000000000000;
  if (v42 || (v17 = OUTLINED_FUNCTION_5_5(v17, 0xE600000000000000), (v17 & 1) != 0))
  {
    v24 = *&__dst[192];
    if (!*&__dst[192])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[184];
LABEL_31:
    v46 = v25;
    v47 = v24;
    v20 = MEMORY[0x1E69E6158];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v17, v20, v13, v7, v8, v9, v10, v11, v46);
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v44 = v43;
  *v43 = v2;
  v43[1] = v1;
  v43[5] = &type metadata for MASecureDetailEvent;
  v45 = swift_allocObject();
  v44[2] = v45;
  memcpy((v45 + 16), __dst, 0xC8uLL);
  *(v44 + 48) = 1;
  swift_willThrow();

  sub_1937802A8(__dst, &v46);
}

uint64_t sub_19378002C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6570537465737361;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x6570537465737361 && a2 == 0xEE00726569666963;
  if (v10 || (v11 = v3[2], v12 = v3[3], v13 = v3[4], v14 = v3[5], v20 = v13, result = OUTLINED_FUNCTION_67(0x6570537465737361, 0xEE00726569666963), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x7079547465737361;
  v15 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
  if (v15 || (result = OUTLINED_FUNCTION_67(0x7079547465737361, 0xE900000000000065), (result & 1) != 0))
  {
    if (v12)
    {
      return sub_1934948FC();
    }

LABEL_21:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  result = 0x7265567465737361;
  v16 = a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973;
  if (v16 || (result = OUTLINED_FUNCTION_67(0x7265567465737361, 0xEC0000006E6F6973), (result & 1) != 0))
  {
    if (v14)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v18 = v17;
  *v17 = a1;
  v17[1] = a2;
  v17[5] = &type metadata for MAAssetMetadata;
  v19 = swift_allocObject();
  v18[2] = v19;
  v19[2] = v9;
  v19[3] = v8;
  v19[4] = v11;
  v19[5] = v12;
  v19[6] = v20;
  v19[7] = v14;
  *(v18 + 48) = 1;
  swift_willThrow();
}

double sub_193780214(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  return result;
}

void *MobileAssetInstrumentationEvent.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for MobileAssetInstrumentationEvent();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = (a1 + v2[9]);
  sub_193769F30(v7);
  v8 = v2[10];
  sub_1937836E4(a1 + v8);
  *a1 = *sub_193783268();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  *(v6 + 8) = 256;
  memcpy(v11, v7, sizeof(v11));
  sub_193442B60(v11, &qword_1EAE429D8, &qword_1939952F0);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  *(v7 + 8) = 0;
  *(v7 + 9) = 1;
  sub_193780214(__src);
  OUTLINED_FUNCTION_6_61(v13);
  sub_193442B60(v13, &qword_1EAE429E0, &qword_1939954C0);
  return memcpy(a1 + v8, __src, 0xC8uLL);
}

BOOL static MobileAssetInstrumentationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetInstrumentationEvent();
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = a1 + v11;
  v13 = *(a1 + v11 + 9);
  v14 = a2 + v11;
  v15 = *(a2 + v11 + 9);
  if (v13)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = *v14;
    v17 = *(v14 + 8);
    v18 = *(v12 + 8);
    __src[0] = *v12;
    LOWORD(__src[1]) = v18;
    if (v15)
    {
      return 0;
    }

    v54[0] = v16;
    LOBYTE(v54[1]) = v17 & 1;
    sub_193780B98();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v19 = v4[9];
  memcpy(__dst, (a1 + v19), sizeof(__dst));
  v20 = v4[9];
  memcpy(v61, (a2 + v20), sizeof(v61));
  v21 = __dst[9];
  v22 = v61[9];
  if (__dst[9] != 1)
  {
    OUTLINED_FUNCTION_10_63();
    __src[9] = v21;
    memcpy(v54, __src, 0x50uLL);
    if (v22 != 1)
    {
      memcpy(v59, (a2 + v20), 0x48uLL);
      v59[9] = v22;
      OUTLINED_FUNCTION_13_54(__dst);
      OUTLINED_FUNCTION_13_54(v61);
      OUTLINED_FUNCTION_13_54(__src);
      sub_193780B44();
      v26 = sub_19393C550();
      memcpy(v57, v59, 0x50uLL);
      sub_193780AF0(v57);
      memcpy(v58, v54, 0x50uLL);
      sub_193780AF0(v58);
      memcpy(v59, (a1 + v19), 0x48uLL);
      v59[9] = v21;
      sub_193442B60(v59, &qword_1EAE429D8, &qword_1939952F0);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    memcpy(v59, __src, 0x50uLL);
    OUTLINED_FUNCTION_12_51(__dst);
    OUTLINED_FUNCTION_12_51(v61);
    OUTLINED_FUNCTION_12_51(__src);
    sub_193780AF0(v59);
LABEL_21:
    OUTLINED_FUNCTION_10_63();
    __src[9] = v21;
    memcpy(&__src[10], (a2 + v20), 0x48uLL);
    __src[19] = v22;
    v23 = &unk_1EAE429E8;
    v24 = &unk_193995370;
    v25 = __src;
LABEL_30:
    sub_193442B60(v25, v23, v24);
    return 0;
  }

  if (v61[9] != 1)
  {
    sub_1937809E0(__dst, __src, &qword_1EAE429D8, &qword_1939952F0);
    sub_1937809E0(v61, __src, &qword_1EAE429D8, &qword_1939952F0);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_10_63();
  __src[9] = 1;
  sub_1937809E0(__dst, v54, &qword_1EAE429D8, &qword_1939952F0);
  sub_1937809E0(v61, v54, &qword_1EAE429D8, &qword_1939952F0);
  sub_193442B60(__src, &qword_1EAE429D8, &qword_1939952F0);
LABEL_23:
  OUTLINED_FUNCTION_6_61(v57);
  OUTLINED_FUNCTION_15_53(v58);
  OUTLINED_FUNCTION_6_61(__src);
  OUTLINED_FUNCTION_15_53(&__src[25]);
  OUTLINED_FUNCTION_6_61(v59);
  if (sub_1934B59A8(v59) == 1)
  {
    OUTLINED_FUNCTION_15_53(v54);
    if (sub_1934B59A8(v54) == 1)
    {
      OUTLINED_FUNCTION_6_61(v55);
      OUTLINED_FUNCTION_7_49(v57, v53);
      OUTLINED_FUNCTION_7_49(v58, v53);
      sub_193442B60(v55, &qword_1EAE429E0, &qword_1939954C0);
      return 1;
    }

    OUTLINED_FUNCTION_7_49(v57, v55);
    OUTLINED_FUNCTION_7_49(v58, v55);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_6_61(v55);
  OUTLINED_FUNCTION_6_61(v53);
  OUTLINED_FUNCTION_15_53(v54);
  if (sub_1934B59A8(v54) == 1)
  {
    memcpy(v52, v53, sizeof(v52));
    OUTLINED_FUNCTION_7_49(v57, v51);
    OUTLINED_FUNCTION_7_49(v58, v51);
    OUTLINED_FUNCTION_7_49(v55, v51);
    sub_193780A48(v52);
LABEL_29:
    memcpy(v54, __src, sizeof(v54));
    v23 = &unk_1EAE429F0;
    v24 = &unk_193995378;
    v25 = v54;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_15_53(v52);
  OUTLINED_FUNCTION_11_50(v57, v28, v29, v30, v31, v32, v33, v34, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23], v50[24]);
  OUTLINED_FUNCTION_11_50(v58, v35, v36, v37, v38, v39, v40, v41, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23], v50[24]);
  OUTLINED_FUNCTION_11_50(v55, v42, v43, v44, v45, v46, v47, v48, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23], v50[24]);
  sub_193780A9C();
  v49 = sub_19393C550();
  memcpy(v50, v52, sizeof(v50));
  sub_193780A48(v50);
  memcpy(v51, v53, sizeof(v51));
  sub_193780A48(v51);
  OUTLINED_FUNCTION_6_61(v52);
  sub_193442B60(v52, &qword_1EAE429E0, &qword_1939954C0);
  return (v49 & 1) != 0;
}

uint64_t sub_1937809E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_193780A9C()
{
  result = qword_1EAE429F8;
  if (!qword_1EAE429F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE429F8);
  }

  return result;
}

unint64_t sub_193780B44()
{
  result = qword_1EAE42A00;
  if (!qword_1EAE42A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A00);
  }

  return result;
}

unint64_t sub_193780B98()
{
  result = qword_1EAE42A08;
  if (!qword_1EAE42A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A08);
  }

  return result;
}

uint64_t MobileAssetInstrumentationEvent.hash(into:)()
{
  v1 = type metadata accessor for MobileAssetInstrumentationEvent();
  if (*(v0 + v1[7] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v2 = v0 + v1[8];
  if (*(v2 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v3 = *(v2 + 8);
    v12[0] = *v2;
    LOBYTE(v12[1]) = v3 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_193780DD4();
    sub_19393C540();
  }

  v4 = v1[9];
  v5 = (v0 + v4);
  v6 = *(v0 + v4 + 72);
  if (v6 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    memcpy(__dst, (v0 + v4), 0x48uLL);
    __dst[9] = v6;
    OUTLINED_FUNCTION_103_0();
    memcpy(v11, v5, 0x48uLL);
    v11[9] = v6;
    sub_19378024C(v11, v12);
    sub_193780E28();
    sub_19393C540();
    memcpy(v12, __dst, 0x50uLL);
    sub_193780AF0(v12);
  }

  v7 = v1[10];
  memcpy(v12, (v0 + v7), sizeof(v12));
  if (sub_1934B59A8(v12) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  memcpy(v9, (v0 + v7), sizeof(v9));
  OUTLINED_FUNCTION_103_0();
  memcpy(__dst, (v0 + v7), sizeof(__dst));
  sub_1937802A8(__dst, v11);
  sub_193780E7C();
  sub_19393C540();
  memcpy(v11, v9, sizeof(v11));
  return sub_193780A48(v11);
}

unint64_t sub_193780DD4()
{
  result = qword_1EAE42A10;
  if (!qword_1EAE42A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A10);
  }

  return result;
}

unint64_t sub_193780E28()
{
  result = qword_1EAE42A18;
  if (!qword_1EAE42A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A18);
  }

  return result;
}

unint64_t sub_193780E7C()
{
  result = qword_1EAE42A20;
  if (!qword_1EAE42A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A20);
  }

  return result;
}

void MAEventType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MAEventType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static MAEventType.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42A40, &qword_193995440);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v10 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_84_2(v10, v11, v12, v13, &qword_1EAE42A40, &qword_193995440);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v14 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_85(v14, v15, v16, v17, &qword_1EAE42A40, &qword_193995440);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v18 = OUTLINED_FUNCTION_39(v1);
    v0 = OUTLINED_FUNCTION_84_2(v18, v19, v20, v21, &qword_1EAE42A40, &qword_193995440);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t MAEventType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6544657275636553;
  }

  return 0x64616F6C6E776F44;
}

uint64_t MAEventType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2 == 0x64616F6C6E776F44 && v1 == 0xEE00746C75736552;
    if (v9 || (OUTLINED_FUNCTION_0_9(0x64616F6C6E776F44, 0xEE00746C75736552) & 1) != 0)
    {

      v7 = 0;
    }

    else
    {
      if (v2 != 0x6544657275636553 || v1 != 0xEC0000006C696174)
      {
        v8 = OUTLINED_FUNCTION_0_9(0x6544657275636553, 0xEC0000006C696174);

        v7 = v8 & 1;
        goto LABEL_14;
      }

      v7 = 1;
    }

    v8 = 1;
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

void MASecureOperationType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static MASecureOperationType.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42A38, &qword_193995438);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v25 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_84_2(v25, v26, v27, v28, &qword_1EAE42A38, &qword_193995438);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v29 = OUTLINED_FUNCTION_39(v1);
    OUTLINED_FUNCTION_85(v29, v30, v31, v32, &qword_1EAE42A38, &qword_193995438);
    OUTLINED_FUNCTION_17_2();
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v33 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v33, v2 + 3, 1, v34, &qword_1EAE42A38, &qword_193995438);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v35 = OUTLINED_FUNCTION_39(v10);
    v0 = OUTLINED_FUNCTION_84_2(v35, v36, v37, v38, &qword_1EAE42A38, &qword_193995438);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v39 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_85(v39, v40, v41, v42, &qword_1EAE42A38, &qword_193995438);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(&v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v43 = OUTLINED_FUNCTION_39(v16);
    v15 = OUTLINED_FUNCTION_84_2(v43, v44, v45, v46, &qword_1EAE42A38, &qword_193995438);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(&v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v47 = OUTLINED_FUNCTION_39(v19);
    v18 = OUTLINED_FUNCTION_85(v47, v48, v49, v50, &qword_1EAE42A38, &qword_193995438);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(&v18[16 * v17]);
  if ((v2 + 8) > (v22 >> 1))
  {
    v51 = OUTLINED_FUNCTION_39(v22);
    v21 = OUTLINED_FUNCTION_84_2(v51, v52, v53, v54, &qword_1EAE42A38, &qword_193995438);
  }

  *(v21 + 2) = v2 + 8;
  v23 = &v21[16 * v20];
  *(v23 + 4) = 6;
  v23[40] = 1;
  return v21;
}

unint64_t MASecureOperationType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1886351182;
  switch(*v0)
  {
    case 1:
      v2 = 1717662279;
      return v2 | 0x676E697400000000;
    case 2:
      v2 = 1853189965;
      return v2 | 0x676E697400000000;
    case 3:
      v3 = 0x666172676E55;
      goto LABEL_9;
    case 4:
      v3 = 0x6E756F6D6E55;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 5:
      result = OUTLINED_FUNCTION_8_56();
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MASecureOperationType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v9 = v2 == 1886351182 && v1 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_9(1886351182, 0xE400000000000000) & 1) != 0)
  {

    v7 = 0;
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v10 = v2 == 0x676E697466617247 && v1 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x676E697466617247, 0xE800000000000000) & 1) != 0)
  {

    v7 = 1;
    goto LABEL_13;
  }

  v11 = v2 == 0x676E69746E756F4DLL && v1 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_0_9(0x676E69746E756F4DLL, 0xE800000000000000) & 1) != 0)
  {

    v8 = 1;
    v7 = 2;
  }

  else
  {
    v12 = v2 == 0x6974666172676E55 && v1 == 0xEA0000000000676ELL;
    if (v12 || (OUTLINED_FUNCTION_0_9(0x6974666172676E55, 0xEA0000000000676ELL) & 1) != 0)
    {

      v8 = 1;
      v7 = 3;
    }

    else
    {
      v13 = v2 == 0x69746E756F6D6E55 && v1 == 0xEA0000000000676ELL;
      if (v13 || (OUTLINED_FUNCTION_0_9(0x69746E756F6D6E55, 0xEA0000000000676ELL) & 1) != 0)
      {

        v8 = 1;
        v7 = 4;
      }

      else
      {
        v14 = OUTLINED_FUNCTION_8_56();
        v16 = v2 == v14 && v1 == v15;
        if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
        {

          v8 = 1;
          v7 = 5;
        }

        else if (v2 == 0xD000000000000011 && 0x8000000193A360B0 == v1)
        {

          v8 = 1;
          v7 = 6;
        }

        else
        {
          v8 = OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A360B0);

          v7 = 6;
          if ((v8 & 1) == 0)
          {
            v7 = 0;
          }
        }
      }
    }
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_193781770()
{
  result = qword_1EAE42A28;
  if (!qword_1EAE42A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A28);
  }

  return result;
}

unint64_t sub_1937817C8()
{
  result = qword_1EAE42A30;
  if (!qword_1EAE42A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A30);
  }

  return result;
}

void sub_19378181C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAD8F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_156();
  *(v3 + 16) = xmmword_19394FBC0;
  v4 = v3 + v0 + dword_1EAEAD930;
  *(v3 + v0) = 1;
  *v4 = "subSystemName";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v3 + v0 + v2);
  *v8 = 2;
  *v7 = "eventType";
  v7[1] = 9;
  v9 = OUTLINED_FUNCTION_1_3(v7);
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v3 + v0 + 2 * v2));
  *v10 = "maDownloadResult";
  *(v10 + 1) = 16;
  v11 = OUTLINED_FUNCTION_1_3(v10);
  (v6)(v11);
  OUTLINED_FUNCTION_3_1(v3 + v0 + 3 * v2);
  OUTLINED_FUNCTION_34_8(v12);
  OUTLINED_FUNCTION_36_5(v13, "maSecureDetail");
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937819DC()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        type metadata accessor for MobileAssetInstrumentationEvent();
        sub_19393C200();
        goto LABEL_8;
      case 2:
        type metadata accessor for MobileAssetInstrumentationEvent();
        sub_1934982A8();
        goto LABEL_8;
      case 3:
      case 4:
        type metadata accessor for MobileAssetInstrumentationEvent();
        sub_193498018();
LABEL_8:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193781B44()
{
  OUTLINED_FUNCTION_22_0();
  v2 = type metadata accessor for MobileAssetInstrumentationEvent();
  if (*(v0 + v2[7] + 8))
  {
    sub_19393C3C0();
  }

  if (!v1)
  {
    v3 = v0 + v2[8];
    if ((*(v3 + 9) & 1) == 0)
    {
      v4 = *(v3 + 8);
      __dst[0] = *v3;
      LOBYTE(__dst[1]) = v4 & 1;
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v5, v6, v7, v8, v9, v10);
    }

    v11 = (v0 + v2[9]);
    v12 = v11[9];
    if (v12 != 1)
    {
      memcpy(__dst, v11, 0x48uLL);
      __dst[9] = v12;
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    memcpy(__dst, (v0 + v2[10]), sizeof(__dst));
    if (sub_1934B59A8(__dst) != 1)
    {
      memcpy(v13, __dst, sizeof(v13));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }
  }
}

void sub_193781D24()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD910);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_18_43(v5, xmmword_1939526F0);
  *v0 = "assetMetaData";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  v10 = OUTLINED_FUNCTION_5_4(v8, "cellularAccessRequest");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "cellularAccessResponse");
  (v7)(v12);
  OUTLINED_FUNCTION_44(3 * v4);
  OUTLINED_FUNCTION_34_8(v13);
  v15 = OUTLINED_FUNCTION_5_4(v14, "constrainedNetworkAccessRequest");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v17 = 5;
  v18 = OUTLINED_FUNCTION_5_4(v16, "constrainedNetworkAccessResponse");
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_44(5 * v4);
  *v20 = 6;
  v21 = OUTLINED_FUNCTION_5_4(v19, "expensiveNetworkAccessRequest");
  (v7)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v23 = 7;
  v24 = OUTLINED_FUNCTION_5_4(v22, "expensiveNetworkAccessResponse");
  (v7)(v24);
  v25 = OUTLINED_FUNCTION_44(7 * v4);
  *v26 = 8;
  *v25 = "isMAAutoAsset";
  v25[1] = 13;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v7)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v1 + 8 * v4);
  *v29 = 9;
  v30 = OUTLINED_FUNCTION_5_4(v28, "isDiscretionary");
  (v7)(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v4);
  *v32 = 10;
  v33 = OUTLINED_FUNCTION_5_4(v31, "IsUserPriority");
  (v7)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v35 = 11;
  *v34 = "result";
  *(v34 + 8) = 6;
  *(v34 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193782000()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_119_1();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 11:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1937820F4()
{
  OUTLINED_FUNCTION_67_2();
  v2 = *(v1 + 48);
  v3 = *(v1 + 49);
  v4 = *(v1 + 50);
  v5 = *(v1 + 51);
  v6 = *(v1 + 52);
  v7 = *(v1 + 53);
  v9 = *(v1 + 54);
  v10 = *(v1 + 55);
  v11 = *(v1 + 56);
  v8 = *(v1 + 64);
  v12 = *(v1 + 72);
  if (*(v1 + 8) != 1)
  {
    sub_193447600();
  }

  if (!v0)
  {
    if (v2 != 2)
    {
      OUTLINED_FUNCTION_21_10(v2 & 1, 2);
    }

    if (v3 != 2)
    {
      OUTLINED_FUNCTION_21_10(v3 & 1, 3);
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_21_10(v4 & 1, 4);
    }

    if (v5 != 2)
    {
      OUTLINED_FUNCTION_21_10(v5 & 1, 5);
    }

    if (v6 != 2)
    {
      OUTLINED_FUNCTION_21_10(v6 & 1, 6);
    }

    if (v7 != 2)
    {
      OUTLINED_FUNCTION_21_10(v7 & 1, 7);
    }

    if (v9 != 2)
    {
      OUTLINED_FUNCTION_21_10(v9 & 1, 8);
    }

    if (v10 != 2)
    {
      OUTLINED_FUNCTION_21_10(v10 & 1, 9);
    }

    if (v11 != 2)
    {
      OUTLINED_FUNCTION_21_10(v11 & 1, 10);
    }

    if (v12)
    {
      OUTLINED_FUNCTION_181(v8, v12, 11);
    }
  }
}

void sub_193782318()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAD928);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_18_43(v5, xmmword_193952690);
  *v0 = "assetMetaData";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  v10 = OUTLINED_FUNCTION_5_4(v8, "clientName");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "fromLocation");
  (v7)(v12);
  OUTLINED_FUNCTION_44(3 * v4);
  OUTLINED_FUNCTION_34_8(v13);
  v15 = OUTLINED_FUNCTION_5_4(v14, "graftingFailureReason");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v17 = 5;
  *v16 = "graftingResult";
  v16[1] = 14;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_44(5 * v4);
  *v20 = 6;
  *v19 = "mapExclaveFailureReason";
  v19[1] = 23;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v7)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v23 = 7;
  *v22 = "mapExclaveFailureResult";
  v22[1] = 23;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v7)(v24);
  v25 = OUTLINED_FUNCTION_44(7 * v4);
  *v26 = 8;
  *v25 = "mountingFailureReason";
  v25[1] = 21;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v7)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v1 + 8 * v4);
  *v29 = 9;
  *v28 = "mountingFailureResult";
  v28[1] = 21;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v7)(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v4);
  *v32 = 10;
  *v31 = "maSecureOperationType";
  v31[1] = 21;
  v33 = OUTLINED_FUNCTION_41(v31);
  (v7)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v35 = 11;
  *v34 = "personalizeFailureReason";
  v34[1] = 24;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v7)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 11 * v4);
  *v38 = 12;
  *v37 = "personalizeFailureResult";
  v37[1] = 24;
  v39 = OUTLINED_FUNCTION_41(v37);
  (v7)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v1 + 12 * v4);
  *v41 = 13;
  *v40 = "secureReason";
  v40[1] = v42;
  v43 = OUTLINED_FUNCTION_41(v40);
  (v7)(v43);
  v44 = OUTLINED_FUNCTION_3_1(v1 + 13 * v4);
  *v45 = 14;
  *v44 = "result";
  *(v44 + 8) = 6;
  *(v44 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193782698()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_119_1();
        break;
      case 2:
      case 3:
      case 5:
      case 7:
      case 9:
      case 12:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 4:
      case 6:
      case 8:
      case 11:
      case 13:
      case 14:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 10:
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }
}

void sub_1937827D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v7 = v3[1];
  v8 = *(v3 + 48);
  v9 = *(v3 + 49);
  v10 = v3[8];
  v11 = *(v3 + 72);
  v12 = v3[11];
  v38 = v3[10];
  v39 = v3[7];
  v13 = *(v3 + 96);
  v14 = v3[14];
  v37 = v3[13];
  v45 = *(v3 + 120);
  v36 = *(v3 + 137);
  v32 = v3[18];
  v34 = v3[19];
  v35 = *(v3 + 160);
  v30 = v3[21];
  v33 = v3[22];
  v29 = v3[23];
  v31 = v3[24];
  v44 = v11;
  if (v7 != 1)
  {
    v15 = *v3;
    v16 = *(v3 + 2);
    v42 = *(v3 + 1);
    v43 = v16;
    v40 = v15;
    v41 = v7;
    v28 = v9;
    v17 = v10;
    v18 = v12;
    v19 = a2;
    v21 = v13;
    v22 = v8;
    sub_193447600();
    v8 = v22;
    v10 = v17;
    v9 = v28;
    v13 = v21;
    v5 = a3;
    a2 = v19;
    v12 = v18;
  }

  if (!v4)
  {
    if (v8 != 2)
    {
      v23 = v10;
      v24 = v12;
      v25 = v13;
      OUTLINED_FUNCTION_33_28(v8 & 1, 2);
      v13 = v25;
      v12 = v24;
      v10 = v23;
    }

    v27 = v13;
    if (v9 != 2)
    {
      v26 = v10;
      OUTLINED_FUNCTION_33_28(v9 & 1, 3);
      v13 = v27;
      v10 = v26;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_31_38(v39, v10, 4);
      v13 = v27;
    }

    if (v44 != 2)
    {
      OUTLINED_FUNCTION_33_28(v44 & 1, 5);
      v13 = v27;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_31_38(v38, v12, 6);
      v13 = v27;
    }

    if (v13 != 2)
    {
      OUTLINED_FUNCTION_33_28(v13 & 1, 7);
    }

    if (v14)
    {
      OUTLINED_FUNCTION_31_38(v37, v14, 8);
    }

    if (v45 != 2)
    {
      OUTLINED_FUNCTION_33_28(v45 & 1, 9);
    }

    if ((v36 & 1) == 0)
    {
      v40 = v3[16];
      LOBYTE(v41) = *(v3 + 136);
      sub_193447324(&v40, 10, a2, &type metadata for MASecureOperationType, v5, &off_1F07EFF58);
    }

    if (v34)
    {
      OUTLINED_FUNCTION_31_38(v32, v34, 11);
    }

    if (v35 != 2)
    {
      OUTLINED_FUNCTION_33_28(v35 & 1, 12);
    }

    if (v33)
    {
      OUTLINED_FUNCTION_31_38(v30, v33, 13);
    }

    if (v31)
    {
      OUTLINED_FUNCTION_31_38(v29, v31, 14);
    }
  }
}

void sub_193782B1C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD940);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v1 = 1;
  *v0 = "assetSpecifier";
  *(v0 + 8) = 14;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  *v8 = "assetType";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  OUTLINED_FUNCTION_36_5(v10, "assetVersion");
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193782C9C()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_193782D14()
{
  OUTLINED_FUNCTION_67_2();
  v2 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v1, v2, 1);
  }

  if (!v0)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_181(v3, v5, 2);
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181(v4, v6, 3);
    }
  }
}

void sub_193782E00()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD958);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "MAEventTypeUnknown";
  *(v0 + 8) = 18;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "MAEventTypeDownloadResult";
  *(v8 + 8) = 25;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  OUTLINED_FUNCTION_36_5(v10, "MAEventTypeSecureDetail");
  OUTLINED_FUNCTION_10_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193782FB0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD970);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_156();
  *(v3 + 16) = xmmword_1939526B0;
  v4 = v3 + v0;
  v5 = v3 + v0 + dword_1EAEAD9A8;
  *(v3 + v0) = 0;
  *v5 = "MASecureOperationTypeUnknown";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v4 + v2);
  *v9 = 1;
  *v8 = "MASecureOperationTypeNoop";
  v8[1] = 25;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v4 + 2 * v2);
  *v12 = 2;
  *v11 = "MASecureOperationTypeGrafting";
  v11[1] = 29;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v4 + 3 * v2));
  *v14 = "MASecureOperationTypeMounting";
  *(v14 + 1) = 29;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v15);
  OUTLINED_FUNCTION_3_1(v4 + 4 * v2);
  OUTLINED_FUNCTION_34_8(v16);
  *v17 = "MASecureOperationTypeUngrafting";
  v17[1] = 31;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  (v7)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v4 + 5 * v2);
  *v20 = 5;
  *v19 = "MASecureOperationTypeUnmounting";
  v19[1] = 31;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v7)(v21);
  v22 = (v4 + 6 * v2);
  v23 = (v22 + dword_1EAEAD9A8);
  *v22 = 6;
  *v23 = "MASecureOperationTypePersonalization";
  v23[1] = 36;
  v24 = OUTLINED_FUNCTION_1_3(v23);
  (v7)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v4 + 7 * v2);
  *v26 = 7;
  OUTLINED_FUNCTION_36_5(v25, "MASecureOperationTypeDepersonalization");
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t MobileAssetInstrumentationEvent.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for MobileAssetInstrumentationEvent();
  return sub_193448804(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for MobileAssetInstrumentationEvent()
{
  result = qword_1EAE45B50;
  if (!qword_1EAE45B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileAssetInstrumentationEvent.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for MobileAssetInstrumentationEvent();
  return sub_193448804(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t MobileAssetInstrumentationEvent.subSystemName.getter()
{
  type metadata accessor for MobileAssetInstrumentationEvent();

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MobileAssetInstrumentationEvent.subSystemName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for MobileAssetInstrumentationEvent() + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MobileAssetInstrumentationEvent.eventType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for MobileAssetInstrumentationEvent();
  v3 = (v1 + *(result + 32));
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 9) = v3;
  return result;
}

uint64_t MobileAssetInstrumentationEvent.eventType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for MobileAssetInstrumentationEvent();
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t MobileAssetInstrumentationEvent.maDownloadResult.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for MobileAssetInstrumentationEvent() + 36);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x50uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE429D8, &qword_1939952F0);
}

void *MobileAssetInstrumentationEvent.maDownloadResult.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_39() + 36);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19344E6DC(v4, &qword_1EAE429D8, &qword_1939952F0);
  return memcpy((v1 + v2), v0, 0x50uLL);
}

uint64_t MobileAssetInstrumentationEvent.maSecureDetail.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for MobileAssetInstrumentationEvent() + 40);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0xC8uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE429E0, &qword_1939954C0);
}

void *MobileAssetInstrumentationEvent.maSecureDetail.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_39() + 40);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE429E0, &qword_1939954C0);
  return memcpy((v1 + v2), v0, 0xC8uLL);
}

uint64_t MobileAssetInstrumentationEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MobileAssetInstrumentationEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193783880()
{
  sub_19393CAB0();
  MobileAssetInstrumentationEvent.hash(into:)();
  return sub_19393CB00();
}

__n128 MADownloadResultEvent.assetMetaData.setter()
{
  OUTLINED_FUNCTION_22_37();
  result = *v0;
  v5 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MADownloadResultEvent.result.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

double MADownloadResultEvent.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_21_44(v1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0x202020202020202;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return result;
}

uint64_t static MADownloadResultEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 49);
  v65 = *(a1 + 51);
  v66 = *(a1 + 50);
  v63 = *(a1 + 53);
  v64 = *(a1 + 52);
  v61 = *(a1 + 55);
  v62 = *(a1 + 54);
  v60 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *a2;
  v12 = *(a2 + 8);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = *(a2 + 49);
  v20 = *(a2 + 50);
  v21 = *(a2 + 51);
  v22 = *(a2 + 52);
  v23 = *(a2 + 53);
  v24 = *(a2 + 54);
  v25 = *(a2 + 55);
  v26 = *(a2 + 56);
  v28 = *(a2 + 64);
  v27 = *(a2 + 72);
  if (v3 == 1)
  {
    v29 = *a2;
    v67 = *(a2 + 48);
    v68 = *(a2 + 49);
    v69 = v8;
    v70 = v9;
    v58 = *(a2 + 51);
    v59 = *(a2 + 50);
    v56 = *(a2 + 53);
    v57 = *(a2 + 52);
    v54 = *(a2 + 55);
    v55 = *(a2 + 54);
    v53 = *(a2 + 56);
    v49 = *(a2 + 64);
    v50 = v10;
    v51 = *(a2 + 72);
    v52 = v11;
    sub_193641A34(v2, 1);
    if (v12 == 1)
    {
      v30 = OUTLINED_FUNCTION_24_44();
      sub_193641A34(v30, v31);
      sub_193640C90(v2, 1);
      goto LABEL_11;
    }

    sub_193641A34(v13, v12);
LABEL_7:
    v36 = OUTLINED_FUNCTION_13_55();
    sub_193640C90(v36, v37);
    sub_193640C90(v29, v12);
    return 0;
  }

  v72[0] = v2;
  v72[1] = v3;
  v72[2] = v4;
  v72[3] = v5;
  v72[4] = v6;
  v72[5] = v7;
  if (v12 == 1)
  {
    v29 = v13;
    sub_193641A34(v2, v3);
    v32 = OUTLINED_FUNCTION_24_44();
    sub_193641A34(v32, v33);
    v34 = OUTLINED_FUNCTION_13_55();
    sub_193641A34(v34, v35);

    goto LABEL_7;
  }

  v67 = v18;
  v68 = v19;
  v69 = v8;
  v70 = v9;
  v58 = v21;
  v59 = v20;
  v56 = v23;
  v57 = v22;
  v54 = v25;
  v55 = v24;
  v53 = v26;
  v49 = v28;
  v50 = v10;
  v51 = v27;
  v52 = v11;
  v71[0] = v13;
  v71[1] = v12;
  v71[2] = v15;
  v71[3] = v14;
  v71[4] = v16;
  v71[5] = v17;
  v48 = static MAAssetMetadata.== infix(_:_:)(v72, v71);
  v39 = OUTLINED_FUNCTION_2_76();
  sub_193641A34(v39, v40);
  sub_193641A34(v13, v12);
  v41 = OUTLINED_FUNCTION_2_76();
  sub_193641A34(v41, v42);

  v43 = OUTLINED_FUNCTION_2_76();
  sub_193640C90(v43, v44);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (v69 == 2)
  {
    v45 = v68;
    v46 = v70;
    if (v67 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v45 = v68;
    v46 = v70;
    if (v67 == 2 || ((v67 ^ v69) & 1) != 0)
    {
      return result;
    }
  }

  if (v46 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v45 == 2 || ((v45 ^ v46) & 1) != 0)
    {
      return result;
    }
  }

  if (v66 == 2)
  {
    if (v59 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v59 == 2 || ((v59 ^ v66) & 1) != 0)
    {
      return result;
    }
  }

  if (v65 == 2)
  {
    if (v58 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v58 == 2 || ((v58 ^ v65) & 1) != 0)
    {
      return result;
    }
  }

  if (v64 == 2)
  {
    if (v57 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v57 == 2 || ((v57 ^ v64) & 1) != 0)
    {
      return result;
    }
  }

  if (v63 == 2)
  {
    if (v56 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v56 == 2 || ((v56 ^ v63) & 1) != 0)
    {
      return result;
    }
  }

  if (v62 == 2)
  {
    if (v55 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v55 == 2 || ((v55 ^ v62) & 1) != 0)
    {
      return result;
    }
  }

  if (v61 == 2)
  {
    if (v54 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v54 == 2 || ((v54 ^ v61) & 1) != 0)
    {
      return result;
    }
  }

  if (v60 == 2)
  {
    if (v53 == 2)
    {
      goto LABEL_56;
    }

    return 0;
  }

  result = 0;
  if (v53 != 2 && ((v53 ^ v60) & 1) == 0)
  {
LABEL_56:
    if (v52)
    {
      if (v51)
      {
        v47 = v50 == v49 && v52 == v51;
        if (v47 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v51)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t MADownloadResultEvent.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);
  v3 = *(v0 + 49);
  v4 = *(v0 + 50);
  v5 = *(v0 + 51);
  v18 = *(v0 + 53);
  v19 = *(v0 + 52);
  v6 = *(v0 + 54);
  v7 = *(v0 + 55);
  v8 = *(v0 + 56);
  v9 = *(v0 + 72);
  if (v1 == 1)
  {
    sub_19393CAD0();
    v10 = v5;
    v11 = v4;
  }

  else
  {
    v16 = *(v0 + 56);
    v17 = *(v0 + 55);
    v12 = *(v0 + 24);
    v13 = *(v0 + 40);
    sub_19393CAD0();
    sub_19393CAD0();
    if (v1)
    {
      sub_19393C640();
    }

    v10 = v5;
    v11 = v4;
    sub_19393CAD0();
    if (v12)
    {
      sub_19393C640();
    }

    v14 = v13;
    v8 = v16;
    v7 = v17;
    sub_19393CAD0();
    if (v14)
    {
      sub_19393C640();
    }
  }

  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v11 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v10 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v19 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v18 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v7 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v8 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v9)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t MADownloadResultEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MADownloadResultEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19378434C()
{
  sub_19393CAB0();
  MADownloadResultEvent.hash(into:)();
  return sub_19393CB00();
}

__n128 MASecureDetailEvent.assetMetaData.setter()
{
  OUTLINED_FUNCTION_22_37();
  result = *v0;
  v5 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MASecureDetailEvent.graftingFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t MASecureDetailEvent.mapExclaveFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t MASecureDetailEvent.mountingFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

void MASecureDetailEvent.maSecureOperationType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 137);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t MASecureDetailEvent.maSecureOperationType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 128) = *result;
  *(v1 + 136) = v2;
  *(v1 + 137) = v3;
  return result;
}

uint64_t MASecureDetailEvent.personalizeFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t MASecureDetailEvent.secureReason.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MASecureDetailEvent.result.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

double MASecureDetailEvent.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_21_44(v1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 514;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 2;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 2;
  *(v0 + 128) = 0;
  *(v0 + 136) = 256;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 2;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  return result;
}

uint64_t static MASecureDetailEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 49);
  v93 = *(a1 + 56);
  v97 = *(a1 + 64);
  v95 = *(a1 + 72);
  v91 = *(a1 + 88);
  v89 = *(a1 + 96);
  v82 = *(a1 + 104);
  v86 = *(a1 + 112);
  v87 = *(a1 + 80);
  v84 = *(a1 + 120);
  v77 = *(a1 + 136);
  v80 = *(a1 + 137);
  v73 = *(a1 + 144);
  v78 = *(a1 + 128);
  v79 = *(a1 + 152);
  v74 = *(a1 + 160);
  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  v12 = *(a1 + 184);
  v13 = *(a1 + 192);
  v14 = *(a2 + 8);
  v103 = *a2;
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v18 = *(a2 + 32);
  v17 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 49);
  v92 = *(a2 + 56);
  v96 = *(a2 + 64);
  v94 = *(a2 + 72);
  v21 = *(a2 + 80);
  v90 = *(a2 + 88);
  v88 = *(a2 + 96);
  v22 = *(a2 + 104);
  v85 = *(a2 + 112);
  v83 = *(a2 + 120);
  v76 = *(a2 + 128);
  v75 = *(a2 + 136);
  v81 = *(a2 + 137);
  v23 = *(a2 + 144);
  v24 = *(a2 + 152);
  v25 = *(a2 + 160);
  v27 = *(a2 + 168);
  v26 = *(a2 + 176);
  v29 = *(a2 + 184);
  v28 = *(a2 + 192);
  if (v2 == 1)
  {
    v98 = *(a2 + 48);
    v99 = *(a2 + 49);
    v100 = v8;
    v101 = v9;
    v71 = *(a2 + 104);
    v72 = *(a2 + 80);
    v67 = v11;
    v68 = *(a2 + 144);
    v70 = *(a2 + 152);
    v69 = *(a2 + 160);
    v62 = *(a2 + 168);
    v63 = v10;
    v65 = v13;
    v66 = *(a2 + 176);
    v60 = *(a2 + 184);
    v61 = v12;
    v64 = *(a2 + 192);
    sub_193641A34(v3, 1);
    if (v14 == 1)
    {
      OUTLINED_FUNCTION_3_73();
      sub_193641A34(v30, v31);
      OUTLINED_FUNCTION_8_57();
      sub_193640C90(v32, v33);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_3_73();
    sub_193641A34(v38, v39);
LABEL_7:
    OUTLINED_FUNCTION_8_57();
    sub_193640C90(v40, v41);
    OUTLINED_FUNCTION_3_73();
    sub_193640C90(v42, v43);
    return 0;
  }

  v110 = v3;
  v111 = v2;
  v112 = v4;
  v113 = v5;
  v114 = v6;
  v115 = v7;
  if (v14 == 1)
  {
    sub_193641A34(v3, v2);
    OUTLINED_FUNCTION_3_73();
    sub_193641A34(v34, v35);
    OUTLINED_FUNCTION_8_57();
    sub_193641A34(v36, v37);

    goto LABEL_7;
  }

  v98 = v19;
  v99 = v20;
  v100 = v8;
  v101 = v9;
  v71 = v22;
  v72 = v21;
  v67 = v11;
  v68 = v23;
  v70 = v24;
  v69 = v25;
  v62 = v27;
  v63 = v10;
  v65 = v13;
  v66 = v26;
  v60 = v29;
  v61 = v12;
  v64 = v28;
  v104 = v103;
  v105 = v14;
  v106 = v15;
  v107 = v16;
  v108 = v18;
  v109 = v17;
  v102 = static MAAssetMetadata.== infix(_:_:)(&v110, &v104);
  v45 = OUTLINED_FUNCTION_1_75();
  sub_193641A34(v45, v46);
  sub_193641A34(v103, v14);
  v47 = OUTLINED_FUNCTION_1_75();
  sub_193641A34(v47, v48);

  v49 = OUTLINED_FUNCTION_1_75();
  sub_193640C90(v49, v50);
  if ((v102 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (v100 == 2)
  {
    v51 = v99;
    v52 = v101;
    if (v98 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v51 = v99;
    v52 = v101;
    if (v98 == 2 || ((v98 ^ v100) & 1) != 0)
    {
      return result;
    }
  }

  if (v52 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v51 == 2 || ((v51 ^ v52) & 1) != 0)
    {
      return result;
    }
  }

  if (v97)
  {
    if (!v96)
    {
      return 0;
    }

    v53 = v93 == v92 && v97 == v96;
    if (!v53 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  if (v95 == 2)
  {
    if (v94 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v94 == 2 || ((v94 ^ v95) & 1) != 0)
    {
      return result;
    }
  }

  if (v91)
  {
    if (!v90)
    {
      return 0;
    }

    v54 = v87 == v72 && v91 == v90;
    if (!v54 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v90)
  {
    return 0;
  }

  if (v89 == 2)
  {
    if (v88 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v88 == 2 || ((v88 ^ v89) & 1) != 0)
    {
      return result;
    }
  }

  if (v86)
  {
    if (!v85)
    {
      return 0;
    }

    v55 = v82 == v71 && v86 == v85;
    if (!v55 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v85)
  {
    return 0;
  }

  if (v84 == 2)
  {
    if (v83 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v83 == 2 || ((v83 ^ v84) & 1) != 0)
    {
      return result;
    }
  }

  if (v80)
  {
    if ((v81 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v81)
    {
      return 0;
    }

    v110 = v78;
    LOBYTE(v111) = v77 & 1;
    v104 = v76;
    LOBYTE(v105) = v75 & 1;
    v56 = MASecureOperationType.rawValue.getter();
    if (v56 != MASecureOperationType.rawValue.getter())
    {
      return 0;
    }
  }

  if (v79)
  {
    if (!v70)
    {
      return 0;
    }

    v57 = v73 == v68 && v79 == v70;
    if (!v57 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  if (v74 == 2)
  {
    if (v69 != 2)
    {
      return 0;
    }

    goto LABEL_82;
  }

  result = 0;
  if (v69 != 2 && ((v69 ^ v74) & 1) == 0)
  {
LABEL_82:
    if (v67)
    {
      if (v66)
      {
        v58 = v63 == v62 && v67 == v66;
        if (v58 || (sub_19393CA30() & 1) != 0)
        {
LABEL_91:
          if (v65)
          {
            if (v64)
            {
              v59 = v61 == v60 && v65 == v64;
              if (v59 || (sub_19393CA30() & 1) != 0)
              {
                return 1;
              }
            }
          }

          else if (!v64)
          {
            return 1;
          }
        }
      }
    }

    else if (!v66)
    {
      goto LABEL_91;
    }

    return 0;
  }

  return result;
}

uint64_t MASecureDetailEvent.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 49);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 88);
  v17 = *(v0 + 48);
  v18 = *(v0 + 96);
  v19 = *(v0 + 112);
  v6 = *(v0 + 120);
  v20 = *(v0 + 137);
  v21 = *(v0 + 152);
  v23 = *(v0 + 176);
  v7 = *(v0 + 192);
  v22 = *(v0 + 160);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    v8 = v6;
    v9 = v5;
    v10 = v3;
    v11 = v17;
  }

  else
  {
    v16 = *(v0 + 192);
    v12 = *(v0 + 24);
    v15 = *(v0 + 40);
    OUTLINED_FUNCTION_103_0();
    if (v1)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v10 = v3;
    v8 = v6;
    if (v12)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v9 = v5;
    v11 = v17;
    if (v15)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v7 = v16;
  }

  if (v11 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v10)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v9)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v18 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v19)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v8 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v20)
  {
    OUTLINED_FUNCTION_104_0();
    if (v21)
    {
LABEL_34:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_37;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v13 = MASecureOperationType.rawValue.getter();
    MEMORY[0x193B18030](v13);
    if (v21)
    {
      goto LABEL_34;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_37:
  if (v22 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (!v23)
  {
    OUTLINED_FUNCTION_104_0();
    if (v7)
    {
      goto LABEL_41;
    }

    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v7)
  {
    return OUTLINED_FUNCTION_104_0();
  }

LABEL_41:
  OUTLINED_FUNCTION_103_0();

  return sub_19393C640();
}

uint64_t MASecureDetailEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MASecureDetailEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937852C4()
{
  sub_19393CAB0();
  MASecureDetailEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t MAAssetMetadata.assetSpecifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MAAssetMetadata.assetType.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MAAssetMetadata.assetVersion.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall MAAssetMetadata.init()(IntelligencePlatformLibrary::MAAssetMetadata *__return_ptr retstr)
{
  retstr->assetType = 0u;
  retstr->assetVersion = 0u;
  retstr->assetSpecifier = 0u;
}

uint64_t static MAAssetMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = v4 == v9 && v6 == v11;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12)
    {
      if (v5 == v10 && v7 == v12)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t MAAssetMetadata.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[5];
  if (v0[1])
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t MAAssetMetadata.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v3)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193785750()
{
  sub_19393CAB0();
  MAAssetMetadata.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937857AC@<X0>(uint64_t *a1@<X8>)
{
  result = MAEventType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937857D4@<X0>(char **a1@<X8>)
{
  result = static MAEventType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193785830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193785938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193785A44@<X0>(uint64_t *a1@<X8>)
{
  result = MASecureOperationType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193785A6C@<X0>(char **a1@<X8>)
{
  result = static MASecureOperationType.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_193785B68()
{
  result = qword_1EAE42A88;
  if (!qword_1EAE42A88)
  {
    type metadata accessor for MobileAssetInstrumentationEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A88);
  }

  return result;
}

unint64_t sub_193785BCC()
{
  result = qword_1EAE42A90;
  if (!qword_1EAE42A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A90);
  }

  return result;
}

unint64_t sub_193785C88()
{
  result = qword_1EAE42AB8;
  if (!qword_1EAE42AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42AB8);
  }

  return result;
}

void sub_193785D04()
{
  sub_19349D140(319);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE3A8B8, &type metadata for MAEventType);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1EAE3A8A8, &type metadata for MADownloadResultEvent);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1EAE3A8B0, &type metadata for MASecureDetailEvent);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary15MAAssetMetadataVSg(uint64_t a1)
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

uint64_t sub_193785E74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193785EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_44(uint64_t a1)
{

  return sub_193640C90(a1, 1);
}

_BYTE *_s5GamesOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19378606C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v2, qword_1ED512338);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_193786228()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v2, qword_1ED512380);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

unint64_t sub_193786314()
{
  result = sub_193484E38();
  qword_1ED512328 = &type metadata for Library.Databases.Games.RecentlyPlayed;
  unk_1ED512330 = result;
  return result;
}

uint64_t static Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused.database.getter()
{
  if (qword_1ED512300 != -1)
  {
    OUTLINED_FUNCTION_5_71(&qword_1ED512300);
  }

  return qword_1ED512328;
}

uint64_t sub_193786388()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v2, qword_1ED512398);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v5 = OUTLINED_FUNCTION_22_9();
    return v6(v5);
  }

  return result;
}

uint64_t sub_193786474@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1937865E8(uint64_t a1)
{
  sub_193786FE0();

  return MEMORY[0x1EEDF07A0](a1);
}

uint64_t static Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED512320 != -1)
  {
    OUTLINED_FUNCTION_0_101(&qword_1ED512320);
  }

  v2 = sub_19393BF10();
  v3 = __swift_project_value_buffer(v2, qword_1ED5123B0);
  swift_beginAccess();
  OUTLINED_FUNCTION_23();
  return (*(v4 + 16))(a1, v3, v2);
}

unint64_t sub_1937866E0()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_193490E70((v1 > 1), v2 + 1, 1, v0);
  }

  result = sub_193786FE0();
  *(v0 + 2) = v2 + 1;
  v4 = &v0[16 * v2];
  *(v4 + 4) = &type metadata for Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused;
  *(v4 + 5) = result;
  qword_1ED512318 = v0;
  return result;
}

uint64_t static Library.Databases.Games.RecentlyPlayed.views.getter()
{
  if (qword_1ED512310 != -1)
  {
    OUTLINED_FUNCTION_4_72(&qword_1ED512310);
  }
}

unint64_t sub_1937867D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a1 == 0xD000000000000013 && 0x8000000193995AC0 == a2;
  if (!v5 && (sub_19393CA30() & 1) == 0)
  {
    return a3();
  }

  result = sub_193787034(a3);
  if (!v3)
  {
  }

  return result;
}

uint64_t sub_1937868C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v1);
  v52 = v48 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_19393BEC0();
  v51 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19393BF10();
  __swift_allocate_value_buffer(v13, qword_1ED5123B0);
  v49 = v13;
  v14 = __swift_project_value_buffer(v13, qword_1ED5123B0);
  v55 = &enum case for MASecureOperationType.grafting(_:);
  v56 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v15 = *(sub_19393BF30() - 8);
  v53 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v54 = v17;
  *(v17 + 16) = xmmword_19394FBE0;
  v48[1] = v17 + v16;
  v18 = *MEMORY[0x1E698F198];
  v19 = *(v10 + 104);
  v50 = v10 + 104;
  v19(v12, v18, v9);
  v20 = sub_19393BF40();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = sub_19393BEF0();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v13);
  v31 = sub_19393BEB0();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_17_40();
  sub_19393BF20();
  v19(v12, *MEMORY[0x1E698F188], v51);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v20);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v24);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v49);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v31);
  OUTLINED_FUNCTION_17_40();
  sub_19393BF20();
  return sub_19393BEA0();
}

uint64_t static Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused.metadata.setter(uint64_t a1)
{
  if (qword_1ED512320 != -1)
  {
    OUTLINED_FUNCTION_0_101(&qword_1ED512320);
  }

  v2 = sub_19393BF10();
  __swift_project_value_buffer(v2, qword_1ED5123B0);
  swift_beginAccess();
  v3 = *(v2 - 8);
  v4 = OUTLINED_FUNCTION_22_9();
  v5(v4);
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused.metadata.modify())(uint64_t a1)
{
  if (qword_1ED512320 != -1)
  {
    OUTLINED_FUNCTION_0_101(&qword_1ED512320);
  }

  v0 = sub_19393BF10();
  __swift_project_value_buffer(v0, qword_1ED5123B0);
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_193786E74()
{
  result = qword_1ED5028F8;
  if (!qword_1ED5028F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5028F8);
  }

  return result;
}

unint64_t sub_193786ECC()
{
  result = qword_1ED502910;
  if (!qword_1ED502910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502910);
  }

  return result;
}

_BYTE *sub_193786F34(_BYTE *result, int a2, int a3)
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

unint64_t sub_193786FE0()
{
  result = qword_1ED5028C8;
  if (!qword_1ED5028C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5028C8);
  }

  return result;
}

_BYTE *_s6EventsOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s7MomentsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1937871EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5123E8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5123E8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static Library.Streams.Moments.Events.Notifications.configuration.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:10000 maxEventCount:604800.0];
  if (v0)
  {
    v1 = v0;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v36 = v1;
    v35 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_193995C60;
    v5 = 0x1E698F000uLL;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E698F340]) initWithPlatform:2 transportType:2 direction:3];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E698F340]) initWithPlatform:1 transportType:2 direction:2];
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E698F340]) initWithPlatform:3 transportType:2 direction:2];
    v6 = 0;
    *(inited + 56) = [objc_allocWithZone(MEMORY[0x1E698F340]) initWithPlatform:4 transportType:2 direction:2];
    v38 = inited & 0xC000000000000001;
    v39 = inited;
    v37 = inited & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x1E69E7CC8];
    while (v6 != 4)
    {
      if (v38)
      {
        v8 = MEMORY[0x193B17E70](v6, v39);
      }

      else
      {
        if (v6 >= *(v37 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v39 + 8 * v6 + 32);
      }

      v9 = v8;
      [v8 platform];
      v10 = BMDevicePlatformAsKeyString();
      v11 = sub_19393C580();
      v13 = v12;

      if (v7[2] && (v14 = sub_193485250(v11, v13), (v15 & 1) != 0))
      {
        v40 = *(v7[7] + 8 * v14);
      }

      else
      {
        v40 = MEMORY[0x1E69E7CC0];
      }

      inited = v9;
      MEMORY[0x193B17C20]();
      v5 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19393C6E0();
      }

      sub_19393C720();
      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_193485250(v11, v13);
      if (__OFADD__(v7[2], (v17 & 1) == 0))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v5 = v16;
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AC0, &qword_193995C70);
      if (sub_19393C980())
      {
        v19 = sub_193485250(v11, v13);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_30;
        }

        v5 = v19;
      }

      if (v18)
      {
        *(v7[7] + 8 * v5) = v40;
      }

      else
      {
        v7[(v5 >> 6) + 8] |= 1 << v5;
        v21 = (v7[6] + 16 * v5);
        *v21 = v11;
        v21[1] = v13;
        *(v7[7] + 8 * v5) = v40;
        v22 = v7[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_27;
        }

        v7[2] = v24;
      }

      ++v6;
    }

    swift_setDeallocating();
    sub_193787D54();
    sub_193787924(v7);

    v25 = objc_allocWithZone(MEMORY[0x1E698F348]);
    v5 = sub_193787CB4(0, 0);
    inited = objc_opt_self();
    if (_MergedGlobals_68 == -1)
    {
      goto LABEL_24;
    }

LABEL_28:
    swift_once();
LABEL_24:
    v26 = sub_19393BE60();
    __swift_project_value_buffer(v26, qword_1ED5123E8);
    v27 = sub_19393BE30();
    v28 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AC8, &qword_193995C78);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = v5;
    v31 = sub_19393C6C0();
    BYTE2(v34) = 0;
    LOWORD(v34) = 1;
    v32 = [inited _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v32;
  }

  else
  {
    __break(1u);
LABEL_30:
    result = sub_19393CA50();
    __break(1u);
  }

  return result;
}

uint64_t sub_193787924(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AD8, &qword_193995CF0);
    v2 = sub_19393C9B0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AE0, &qword_193995CF8);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_193495EE0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_193495EE0(v29, v30);
    result = sub_19393C8C0();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_193495EE0(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t static Library.Streams.Moments.Events.Notifications.attribute(_:)(void (*a1)(void))
{
  result = sub_193787C1C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193787C58(void (*a1)(void))
{
  result = sub_193787C1C(a1);
  if (!v1)
  {
  }

  return result;
}

id sub_193787CB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_19393C570();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_19393C4F0();

  v5 = [v2 initWithLegacyDescriptor:v3 platformPolicies:v4];

  return v5;
}

uint64_t sub_193787D54()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_193787DA8(uint64_t a1)
{
  result = sub_193787DD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193787DD0()
{
  result = qword_1EAE42AD0;
  if (!qword_1EAE42AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42AD0);
  }

  return result;
}

_BYTE *_s13NotificationsOwst(_BYTE *result, int a2, int a3)
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

void sub_193787ED0()
{
  OUTLINED_FUNCTION_26();
  v189 = v0;
  v190 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_8();
  v183 = v9;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v10);
  v186 = &v181 - v11;
  sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v184 = v13;
  v185 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_8();
  v181 = v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  v182 = &v181 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_47(v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v181 - v19;
  v21 = type metadata accessor for MomentsEventData.EventBundle(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_47(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v28 = OUTLINED_FUNCTION_9_6();
  v29 = type metadata accessor for MomentsEventData.Event(v28);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v33 = v32 - v31;
  v187 = v6;
  v188 = v4;
  v34 = v6 == 0x746E657665 && v4 == 0xE500000000000000;
  if (v34 || (OUTLINED_FUNCTION_10_28(0x746E657665, 0xE500000000000000) & 1) != 0)
  {
    sub_1934486F8(v189, v1, &qword_1EAE42AF0, &unk_193997C80);
    OUTLINED_FUNCTION_6_3(v1, 1, v29);
    if (!v34)
    {
      v39 = type metadata accessor for MomentsEventData.Event;
      sub_19378C498(v1, v33, type metadata accessor for MomentsEventData.Event);
      sub_193494798(v29, &off_1F07F0770, v190);
      v40 = v33;
LABEL_11:
      sub_19378C4F8(v40, v39);
      goto LABEL_12;
    }

    v35 = &qword_1EAE42AF0;
    v36 = &unk_193997C80;
    v37 = v1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_51();
  OUTLINED_FUNCTION_14_49();
  v43 = v34 && v42 == 0xE600000000000000;
  if (v43 || (OUTLINED_FUNCTION_10_28(v41, 0xE600000000000000) & 1) != 0)
  {
    v44 = type metadata accessor for MomentsEventData(0);
    v45 = OUTLINED_FUNCTION_38_33(*(v44 + 20));
    sub_1934486F8(v45, v20, v46, v47);
    v48 = OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_6_3(v48, v49, v21);
    if (!v34)
    {
      v39 = type metadata accessor for MomentsEventData.EventBundle;
      sub_19378C498(v20, v25, type metadata accessor for MomentsEventData.EventBundle);
      sub_193494798(v21, &off_1F07F0780, v190);
      v40 = v25;
      goto LABEL_11;
    }

    v35 = &qword_1EAE42AE8;
    v36 = &qword_193995D00;
    v37 = v20;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_49();
  v52 = v34 && v51 == 0xE800000000000000;
  if (v52 || (OUTLINED_FUNCTION_35_33(v50) & 1) != 0)
  {
    v53 = *(type metadata accessor for MomentsEventData(0) + 24);
LABEL_27:
    v54 = *(v189 + v53);
    if (v54 == 2)
    {
      goto LABEL_10;
    }

    LOBYTE(v191) = v54 & 1;
LABEL_29:
    sub_1934948FC();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_44();
  v57 = v34 && v56 == 0xE800000000000000;
  if (v57 || (OUTLINED_FUNCTION_35_33(v55) & 1) != 0)
  {
    v53 = *(type metadata accessor for MomentsEventData(0) + 28);
    goto LABEL_27;
  }

  v58 = v187 == 6645601 && v188 == 0xE300000000000000;
  if (v58 || (OUTLINED_FUNCTION_10_28(6645601, 0xE300000000000000) & 1) != 0)
  {
LABEL_41:
    type metadata accessor for MomentsEventData(0);
    OUTLINED_FUNCTION_18_27();
    if (*(v59 + 4))
    {
      goto LABEL_10;
    }

    LODWORD(v191) = *v59;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_14_49();
  v62 = v34 && v61 == 0xE800000000000000;
  if (v62 || (OUTLINED_FUNCTION_35_33(v60) & 1) != 0)
  {
    type metadata accessor for MomentsEventData(0);
    OUTLINED_FUNCTION_7_50();
    if (v64)
    {
      goto LABEL_10;
    }

    goto LABEL_130;
  }

  OUTLINED_FUNCTION_18_44();
  v68 = v34 && v67 == v66;
  if (v68 || (OUTLINED_FUNCTION_10_28(v65, v66) & 1) != 0)
  {
    type metadata accessor for MomentsEventData(0);
    OUTLINED_FUNCTION_7_50();
    if (v69)
    {
      goto LABEL_10;
    }

    goto LABEL_130;
  }

  v70 = OUTLINED_FUNCTION_24_31();
  v72 = v187 == v70 && v188 == v71;
  if (v72 || (OUTLINED_FUNCTION_30_28(v70) & 1) != 0)
  {
    v73 = type metadata accessor for MomentsEventData(0);
    v74 = OUTLINED_FUNCTION_38_33(*(v73 + 44));
    v75 = v186;
    sub_1934486F8(v74, v186, v76, v77);
    OUTLINED_FUNCTION_6_3(v75, 1, v185);
    if (!v34)
    {
      v78 = v184;
      OUTLINED_FUNCTION_24_45();
      v80 = v182;
      v81 = v182;
      v82 = v186;
LABEL_65:
      v83 = v185;
      v79(v81, v82, v185);
      sub_1934948FC();
      (*(v78 + 8))(v80, v83);
      goto LABEL_12;
    }

    v35 = &qword_1EAE3A9E8;
    v36 = &qword_19394F800;
    v37 = v186;
  }

  else
  {
    OUTLINED_FUNCTION_14_49();
    v86 = v34 && v85 == 0xE700000000000000;
    if (!v86 && (OUTLINED_FUNCTION_10_28(v84, 0xE700000000000000) & 1) == 0)
    {
      OUTLINED_FUNCTION_18_44();
      v95 = v34 && v94 == v93;
      if (v95 || (OUTLINED_FUNCTION_10_28(v92, v93) & 1) != 0)
      {
        v96 = *(type metadata accessor for MomentsEventData(0) + 52);
      }

      else
      {
        OUTLINED_FUNCTION_11_51();
        OUTLINED_FUNCTION_18_44();
        v102 = v34 && v101 == v100;
        if (v102 || (OUTLINED_FUNCTION_10_28(v99, v100) & 1) != 0)
        {
          v96 = *(type metadata accessor for MomentsEventData(0) + 56);
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v104 = v187 == 0xD000000000000013 && v103 == v188;
          if (v104 || (OUTLINED_FUNCTION_10_28(0xD000000000000013, v103) & 1) != 0)
          {
            v96 = *(type metadata accessor for MomentsEventData(0) + 60);
          }

          else
          {
            OUTLINED_FUNCTION_60_22();
            OUTLINED_FUNCTION_18_44();
            v108 = v34 && v107 == v106;
            if (v108 || (OUTLINED_FUNCTION_10_28(v105, v106) & 1) != 0)
            {
              v96 = *(type metadata accessor for MomentsEventData(0) + 64);
            }

            else
            {
              OUTLINED_FUNCTION_18_44();
              v112 = v34 && v111 == v110;
              if (v112 || (OUTLINED_FUNCTION_10_28(v109, v110) & 1) != 0)
              {
                v96 = *(type metadata accessor for MomentsEventData(0) + 68);
              }

              else
              {
                OUTLINED_FUNCTION_6_62();
                v116 = v115 == 0xD000000000000012 && v113 == v114;
                if (!v116 && (OUTLINED_FUNCTION_10_28(0xD000000000000012, v113) & 1) == 0)
                {
                  OUTLINED_FUNCTION_38();
                  OUTLINED_FUNCTION_18_44();
                  v120 = v34 && v118 == v119;
                  if (v120 || (OUTLINED_FUNCTION_10_28(v117, v118) & 1) != 0)
                  {
                    goto LABEL_41;
                  }

                  OUTLINED_FUNCTION_38();
                  OUTLINED_FUNCTION_18_44();
                  v124 = v34 && v122 == v123;
                  if (v124 || (OUTLINED_FUNCTION_10_28(v121, v122) & 1) != 0)
                  {
                    goto LABEL_41;
                  }

                  OUTLINED_FUNCTION_38();
                  OUTLINED_FUNCTION_18_44();
                  v128 = v34 && v126 == v127;
                  if (!v128 && (OUTLINED_FUNCTION_10_28(v125, v126) & 1) == 0)
                  {
                    OUTLINED_FUNCTION_38();
                    OUTLINED_FUNCTION_18_44();
                    v133 = v34 && v131 == v132;
                    if (v133 || (OUTLINED_FUNCTION_10_28(v130, v131) & 1) != 0)
                    {
                      v53 = *(type metadata accessor for MomentsEventData(0) + 88);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_6_62();
                      v137 = v136 == 0xD000000000000012 && v134 == v135;
                      if (v137 || (OUTLINED_FUNCTION_10_28(0xD000000000000012, v134) & 1) != 0)
                      {
                        v53 = *(type metadata accessor for MomentsEventData(0) + 92);
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        OUTLINED_FUNCTION_18_44();
                        v141 = v34 && v139 == v140;
                        if (v141 || (OUTLINED_FUNCTION_10_28(v138, v139) & 1) != 0)
                        {
                          v53 = *(type metadata accessor for MomentsEventData(0) + 96);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          OUTLINED_FUNCTION_18_44();
                          v145 = v34 && v143 == v144;
                          if (v145 || (OUTLINED_FUNCTION_10_28(v142, v143) & 1) != 0)
                          {
                            v53 = *(type metadata accessor for MomentsEventData(0) + 100);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_38();
                            OUTLINED_FUNCTION_18_44();
                            v149 = v34 && v147 == v148;
                            if (v149 || (OUTLINED_FUNCTION_10_28(v146, v147) & 1) != 0)
                            {
                              v53 = *(type metadata accessor for MomentsEventData(0) + 104);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              OUTLINED_FUNCTION_26_33();
                              v152 = v34 && v150 == v151;
                              if (v152 || (OUTLINED_FUNCTION_10_28(0xD00000000000002ALL, v150) & 1) != 0)
                              {
                                v53 = *(type metadata accessor for MomentsEventData(0) + 108);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38();
                                OUTLINED_FUNCTION_40_27();
                                v155 = v34 && v153 == v154;
                                if (v155 || (OUTLINED_FUNCTION_10_28(0xD00000000000001CLL, v153) & 1) != 0)
                                {
                                  v53 = *(type metadata accessor for MomentsEventData(0) + 112);
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_38();
                                  OUTLINED_FUNCTION_18_44();
                                  v159 = v34 && v157 == v158;
                                  if (v159 || (OUTLINED_FUNCTION_10_28(v156, v157) & 1) != 0)
                                  {
                                    v53 = *(type metadata accessor for MomentsEventData(0) + 116);
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_6_62();
                                    v163 = v162 == 0xD00000000000001CLL && v160 == v161;
                                    if (v163 || (OUTLINED_FUNCTION_10_28(0xD00000000000001CLL, v160) & 1) != 0)
                                    {
                                      v53 = *(type metadata accessor for MomentsEventData(0) + 120);
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_38();
                                      OUTLINED_FUNCTION_18_44();
                                      v167 = v34 && v165 == v166;
                                      if (v167 || (OUTLINED_FUNCTION_10_28(v164, v165) & 1) != 0)
                                      {
                                        v53 = *(type metadata accessor for MomentsEventData(0) + 124);
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_38();
                                        OUTLINED_FUNCTION_18_44();
                                        v171 = v34 && v169 == v170;
                                        if (v171 || (OUTLINED_FUNCTION_10_28(v168, v169) & 1) != 0)
                                        {
                                          v53 = *(type metadata accessor for MomentsEventData(0) + 128);
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_6_62();
                                          v175 = v174 == 0xD00000000000002ALL && v172 == v173;
                                          if (!v175 && (OUTLINED_FUNCTION_10_28(0xD00000000000002ALL, v172) & 1) == 0)
                                          {
                                            v176 = sub_19349AB64();
                                            v177 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v176);
                                            v179 = OUTLINED_FUNCTION_47_27(v177, v178);
                                            MEMORY[0xD000000000000052] = type metadata accessor for MomentsEventData(v179);
                                            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(0xD00000000000003ALL);
                                            sub_19378D884(v189, boxed_opaque_existential_1Tm, type metadata accessor for MomentsEventData);
                                            OUTLINED_FUNCTION_64_19();

                                            goto LABEL_12;
                                          }

                                          v53 = *(type metadata accessor for MomentsEventData(0) + 132);
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

                    goto LABEL_27;
                  }

                  type metadata accessor for MomentsEventData(0);
                  OUTLINED_FUNCTION_7_50();
                  if (v129)
                  {
                    goto LABEL_10;
                  }

LABEL_130:
                  OUTLINED_FUNCTION_41_2(v63);
                  goto LABEL_29;
                }

                v96 = *(type metadata accessor for MomentsEventData(0) + 72);
              }
            }
          }
        }
      }

      v97 = (v189 + v96);
      v98 = *(v189 + v96 + 8);
      if (!v98)
      {
        goto LABEL_10;
      }

      v191 = *v97;
      v192 = v98;
      goto LABEL_29;
    }

    v87 = type metadata accessor for MomentsEventData(0);
    v88 = OUTLINED_FUNCTION_38_33(*(v87 + 48));
    v89 = v183;
    sub_1934486F8(v88, v183, v90, v91);
    OUTLINED_FUNCTION_6_3(v89, 1, v185);
    if (!v34)
    {
      v78 = v184;
      OUTLINED_FUNCTION_24_45();
      v80 = v181;
      v81 = v181;
      goto LABEL_65;
    }

    v35 = &qword_1EAE3A9E8;
    v36 = &qword_19394F800;
    v37 = v183;
  }

LABEL_9:
  sub_19344E6DC(v37, v35, v36);
LABEL_10:
  v38 = v190;
  *v190 = 0u;
  *(v38 + 1) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_193788ADC()
{
  OUTLINED_FUNCTION_52_21();
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v7 = v1 == v6 && v2 == 0xE400000000000000;
  if (v7 || (v8 = v2, v9 = v1, v10 = v0[3], v21 = v0[2], v20 = *(v0 + 8), v11 = *(v0 + 36), v12 = OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_0_32(v12, v13) & 1) != 0))
  {
    if (v5)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_15;
  }

  v14 = v9 == 0x614E6E6F69746361 && v8 == 0xEA0000000000656DLL;
  if (v14 || (OUTLINED_FUNCTION_0_32(0x614E6E6F69746361, 0xEA0000000000656DLL) & 1) != 0)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v15 = v9 == 0xD000000000000014 && 0x8000000193A36750 == v8;
  if (v15 || (OUTLINED_FUNCTION_0_32(0xD000000000000014, 0x8000000193A36750) & 1) != 0)
  {
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  v16 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
  v18 = v17;
  *v17 = v9;
  v17[1] = v8;
  v17[5] = &type metadata for MomentsEventData.Action;
  v19 = swift_allocObject();
  v18[2] = v19;
  *(v19 + 16) = v3;
  *(v19 + 24) = v4;
  *(v19 + 25) = v5;
  *(v19 + 32) = v21;
  *(v19 + 40) = v10;
  *(v19 + 48) = v20;
  *(v19 + 52) = v11;
  OUTLINED_FUNCTION_163_6();
}

void sub_193788CC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 9);
  v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_15_10(), (sub_19393CA30() & 1) != 0))
  {
    if (v8)
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    v12 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 40) = a3;
    *(v13 + 16) = v6;
    *(v13 + 24) = v7;
    *(v13 + 25) = v8;
    *(v13 + 48) = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_193788DF4()
{
  OUTLINED_FUNCTION_26();
  v341 = v0;
  v342 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_8();
  v335 = v8;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49();
  v336 = v10;
  OUTLINED_FUNCTION_47_3();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v333 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v333 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v333 - v18;
  v338 = sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v337 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15_8();
  v334 = v22;
  OUTLINED_FUNCTION_47_3();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v333 - v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_58_20();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v333 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v34 = &v333 - v33;
  v339 = v5;
  v340 = v3;
  v35 = v5 == v31 && v3 == v32;
  if (v35 || (OUTLINED_FUNCTION_10_28(v31, v32) & 1) != 0)
  {
    v36 = v341;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24_31();
  OUTLINED_FUNCTION_18_44();
  v40 = v35 && v39 == 0xE900000000000065;
  if (v40 || (OUTLINED_FUNCTION_30_28(v38) & 1) != 0)
  {
    v41 = type metadata accessor for MomentsEventData.Event(0);
    v42 = OUTLINED_FUNCTION_38_33(*(v41 + 20));
    sub_1934486F8(v42, v19, v43, v44);
    v45 = v338;
    OUTLINED_FUNCTION_6_3(v19, 1, v338);
    if (!v35)
    {
      v47 = v337;
      OUTLINED_FUNCTION_24_45();
      v48(v34, v19, v45);
      sub_1934948FC();
      (*(v47 + 8))(v34, v45);
      goto LABEL_28;
    }

    v46 = v19;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_14_49();
  v51 = v35 && v50 == 0xE700000000000000;
  if (v51 || (OUTLINED_FUNCTION_10_28(v49, 0xE700000000000000) & 1) != 0)
  {
    v52 = type metadata accessor for MomentsEventData.Event(0);
    v53 = OUTLINED_FUNCTION_38_33(*(v52 + 24));
    sub_1934486F8(v53, v17, v54, v55);
    v56 = OUTLINED_FUNCTION_132();
    v57 = v338;
    OUTLINED_FUNCTION_6_3(v56, v58, v338);
    if (!v35)
    {
      v60 = v337;
      OUTLINED_FUNCTION_24_45();
      v61(v30, v17, v57);
      sub_1934948FC();
      (*(v60 + 8))(v30, v57);
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_18_44();
  v65 = v35 && v64 == v63;
  if (v65 || (OUTLINED_FUNCTION_10_28(v62, v63) & 1) != 0)
  {
    v66 = type metadata accessor for MomentsEventData.Event(0);
    v67 = OUTLINED_FUNCTION_38_33(*(v66 + 28));
    sub_1934486F8(v67, v14, v68, v69);
    v70 = v338;
    OUTLINED_FUNCTION_6_3(v14, 1, v338);
    if (!v35)
    {
      v71 = v337;
      (*(v337 + 32))(0xEF7265696669746ELL, v14, v70);
      sub_1934948FC();
      (*(v71 + 8))(0xEF7265696669746ELL, v70);
      goto LABEL_28;
    }

    v46 = v14;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_40_27();
  v74 = v35 && v72 == v73;
  if (v74 || (OUTLINED_FUNCTION_10_28(0xD000000000000012, v72) & 1) != 0)
  {
    v75 = type metadata accessor for MomentsEventData.Event(0);
    v76 = OUTLINED_FUNCTION_38_33(*(v75 + 32));
    v17 = v336;
    sub_1934486F8(v76, v336, v77, v78);
    v79 = OUTLINED_FUNCTION_132();
    v80 = v338;
    OUTLINED_FUNCTION_6_3(v79, v81, v338);
    if (!v35)
    {
      v82 = v337;
      OUTLINED_FUNCTION_24_45();
      v83(v26, v17, v80);
      sub_1934948FC();
      (*(v82 + 8))(v26, v80);
      goto LABEL_28;
    }

LABEL_25:
    v46 = v17;
LABEL_26:
    sub_19344E6DC(v46, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_18_44();
  v87 = v35 && v86 == v85;
  if (v87 || (OUTLINED_FUNCTION_10_28(v84, v85) & 1) != 0)
  {
    v88 = type metadata accessor for MomentsEventData.Event(0);
    v89 = OUTLINED_FUNCTION_38_33(*(v88 + 36));
    v90 = v335;
    sub_1934486F8(v89, v335, v91, v92);
    v93 = v338;
    OUTLINED_FUNCTION_6_3(v90, 1, v338);
    if (!v35)
    {
      v94 = v337;
      OUTLINED_FUNCTION_24_45();
      v95 = v334;
      v96(v334, v90, v93);
      sub_1934948FC();
      (*(v94 + 8))(v95, v93);
      goto LABEL_28;
    }

    v46 = v90;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_14_49();
  v99 = v35 && v98 == 0xE800000000000000;
  if (v99 || (OUTLINED_FUNCTION_35_33(v97) & 1) != 0)
  {
    type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50();
    if (v101)
    {
      goto LABEL_27;
    }

LABEL_411:
    OUTLINED_FUNCTION_41_2(v100);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_44();
  v104 = v35 && v103 == 0xE800000000000000;
  if (v104 || (OUTLINED_FUNCTION_35_33(v102) & 1) != 0)
  {
    type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50();
    if (v105)
    {
      goto LABEL_27;
    }

    goto LABEL_411;
  }

  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_18_44();
  v109 = v35 && v108 == v107;
  if (v109 || (OUTLINED_FUNCTION_10_28(v106, v107) & 1) != 0)
  {
    type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50();
    if (v110)
    {
      goto LABEL_27;
    }

    goto LABEL_411;
  }

  OUTLINED_FUNCTION_18_44();
  v113 = v35 && v112 == 0xEB0000000079726FLL;
  if (v113 || (OUTLINED_FUNCTION_10_28(v111, 0xEB0000000079726FLL) & 1) != 0)
  {
    type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50();
    if (v114)
    {
      goto LABEL_27;
    }

    goto LABEL_411;
  }

  OUTLINED_FUNCTION_18_44();
  v118 = v35 && v117 == v116;
  if (v118 || (OUTLINED_FUNCTION_10_28(v115, v116) & 1) != 0)
  {
    type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50();
    if (v119)
    {
      goto LABEL_27;
    }

    goto LABEL_411;
  }

  OUTLINED_FUNCTION_18_44();
  v123 = v35 && v122 == v121;
  if (v123 || (OUTLINED_FUNCTION_10_28(v120, v121) & 1) != 0)
  {
    type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50();
    if (v124)
    {
      goto LABEL_27;
    }

    goto LABEL_411;
  }

  OUTLINED_FUNCTION_46_23();
  OUTLINED_FUNCTION_18_44();
  v128 = v35 && v127 == v126;
  if (v128 || (OUTLINED_FUNCTION_10_28(v125, v126) & 1) != 0)
  {
    type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50();
    if (v129)
    {
      goto LABEL_27;
    }

    goto LABEL_411;
  }

  OUTLINED_FUNCTION_46_23();
  OUTLINED_FUNCTION_18_44();
  v133 = v35 && v132 == v131;
  if (!v133 && (OUTLINED_FUNCTION_10_28(v130, v131) & 1) == 0)
  {
    v135 = v339 == 0x6E6547616964656DLL && v340 == 0xEA00000000006572;
    if (v135 || (OUTLINED_FUNCTION_10_28(0x6E6547616964656DLL, 0xEA00000000006572) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_7_50();
      if (v136)
      {
        goto LABEL_27;
      }

      goto LABEL_411;
    }

    OUTLINED_FUNCTION_18_44();
    v139 = v35 && v138 == 0xE900000000000065;
    if (v139 || (OUTLINED_FUNCTION_30_28(v137) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_7_50();
      if (v140)
      {
        goto LABEL_27;
      }

      goto LABEL_411;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_18_44();
    v144 = v35 && v142 == v143;
    if (v144 || (OUTLINED_FUNCTION_10_28(v141, v142) & 1) != 0)
    {
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_6_62();
    v148 = v147 == 0xD000000000000012 && v145 == v146;
    if (v148 || (OUTLINED_FUNCTION_10_28(0xD000000000000012, v145) & 1) != 0)
    {
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_18_44();
    v153 = v35 && v152 == v151;
    if (v153 || (OUTLINED_FUNCTION_10_28(v150, v151) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_7_50();
      if (v154)
      {
        goto LABEL_27;
      }

      goto LABEL_411;
    }

    OUTLINED_FUNCTION_6_62();
    v159 = v158 == 0xD000000000000013 && v156 == v157;
    if (v159 || (OUTLINED_FUNCTION_23_43(v155, v156) & 1) != 0)
    {
      v134 = *(type metadata accessor for MomentsEventData.Event(0) + 92);
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_40_27();
    v162 = v35 && v160 == v161;
    if (v162 || (OUTLINED_FUNCTION_10_28(0xD00000000000001FLL, v160) & 1) != 0)
    {
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_26_33();
    v165 = v35 && v163 == v164;
    if (v165 || (OUTLINED_FUNCTION_10_28(0xD000000000000024, v163) & 1) != 0)
    {
LABEL_159:
      type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_18_27();
      if ((v166[1] & 1) == 0)
      {
        v343 = *v166;
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_6_62();
    v170 = v169 == 0xD00000000000001FLL && v167 == v168;
    if (v170 || (OUTLINED_FUNCTION_10_28(0xD00000000000001FLL, v167) & 1) != 0)
    {
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_6_62();
    v174 = v173 == 0xD000000000000024 && v171 == v172;
    if (v174 || (OUTLINED_FUNCTION_10_28(0xD000000000000024, v171) & 1) != 0)
    {
      goto LABEL_159;
    }

    OUTLINED_FUNCTION_6_62();
    v178 = v177 == 0xD000000000000024 && v175 == v176;
    if (v178 || (OUTLINED_FUNCTION_10_28(0xD000000000000024, v175) & 1) != 0 || ((OUTLINED_FUNCTION_6_62(), v181 == 0xD000000000000024) ? (v182 = v179 == v180) : (v182 = 0), v182 || (OUTLINED_FUNCTION_10_28(0xD000000000000024, v179) & 1) != 0 || ((OUTLINED_FUNCTION_18_44(), v35) ? (v186 = v185 == v184) : (v186 = 0), v186 || (OUTLINED_FUNCTION_10_28(v183, v184) & 1) != 0)))
    {
LABEL_133:
      type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_18_27();
      if ((*(v149 + 4) & 1) == 0)
      {
        LODWORD(v343) = *v149;
        goto LABEL_9;
      }

LABEL_27:
      v59 = v342;
      *v342 = 0u;
      *(v59 + 1) = 0u;
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_38();
    v188 = v339 == 0xD000000000000018 && v187 == v340;
    if (v188 || (OUTLINED_FUNCTION_10_28(0xD000000000000018, v187) & 1) != 0)
    {
      v189 = *(type metadata accessor for MomentsEventData.Event(0) + 124);
LABEL_276:
      v343 = *(v341 + v189);
      v233 = &qword_1EAE3ABB0;
      v234 = &qword_193950BB8;
      goto LABEL_277;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_18_44();
    v193 = v35 && v191 == v192;
    if (v193 || (OUTLINED_FUNCTION_10_28(v190, v191) & 1) != 0)
    {
      v134 = *(type metadata accessor for MomentsEventData.Event(0) + 128);
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_26_33();
    v196 = v35 && v194 == v195;
    if (v196 || (OUTLINED_FUNCTION_10_28(0xD000000000000017, v194) & 1) != 0)
    {
      goto LABEL_159;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_40_27();
    v199 = v35 && v197 == v198;
    if (v199 || (OUTLINED_FUNCTION_10_28(0xD000000000000019, v197) & 1) != 0)
    {
      v200 = *(type metadata accessor for MomentsEventData.Event(0) + 136);
    }

    else
    {
      OUTLINED_FUNCTION_6_62();
      v204 = v203 == 0xD000000000000019 && v201 == v202;
      if (v204 || (OUTLINED_FUNCTION_10_28(0xD000000000000019, v201) & 1) != 0)
      {
        v200 = *(type metadata accessor for MomentsEventData.Event(0) + 140);
      }

      else
      {
        OUTLINED_FUNCTION_6_62();
        v208 = v207 == 0xD000000000000017 && v205 == v206;
        if (v208 || (OUTLINED_FUNCTION_10_28(0xD000000000000017, v205) & 1) != 0)
        {
          goto LABEL_133;
        }

        OUTLINED_FUNCTION_6_62();
        v212 = v211 == 0xD000000000000018 && v209 == v210;
        if (v212 || (OUTLINED_FUNCTION_10_28(0xD000000000000018, v209) & 1) != 0)
        {
          goto LABEL_133;
        }

        OUTLINED_FUNCTION_6_62();
        v216 = v215 == 0xD000000000000018 && v213 == v214;
        if (v216 || (OUTLINED_FUNCTION_10_28(0xD000000000000018, v213) & 1) != 0)
        {
          goto LABEL_133;
        }

        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_18_44();
        v220 = v35 && v218 == v219;
        if (v220 || (OUTLINED_FUNCTION_10_28(v217, v218) & 1) != 0)
        {
          goto LABEL_159;
        }

        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_26_33();
        v223 = v35 && v221 == v222;
        if (v223 || (OUTLINED_FUNCTION_10_28(0xD000000000000021, v221) & 1) != 0)
        {
          goto LABEL_159;
        }

        OUTLINED_FUNCTION_6_62();
        v227 = v226 == 0xD000000000000021 && v224 == v225;
        if (v227 || (OUTLINED_FUNCTION_10_28(0xD000000000000021, v224) & 1) != 0)
        {
          goto LABEL_159;
        }

        OUTLINED_FUNCTION_38();
        v229 = v339 == 0xD000000000000011 && v228 == v340;
        if (v229 || (OUTLINED_FUNCTION_10_28(0xD000000000000011, v228) & 1) != 0)
        {
          type metadata accessor for MomentsEventData.Event(0);
          OUTLINED_FUNCTION_7_50();
          if (v230)
          {
            goto LABEL_27;
          }

          goto LABEL_411;
        }

        OUTLINED_FUNCTION_38();
        v232 = v339 == 0xD000000000000015 && v231 == v340;
        if (v232 || (OUTLINED_FUNCTION_10_28(0xD000000000000015, v231) & 1) != 0)
        {
          v343 = *(v341 + *(type metadata accessor for MomentsEventData.Event(0) + 172));
          v233 = &unk_1EAE42AF8;
          v234 = &unk_193995D08;
LABEL_277:
          __swift_instantiateConcreteTypeFromMangledNameV2(v233, v234);
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_6_62();
        v239 = v238 == 0xD000000000000013 && v236 == v237;
        if (v239 || (OUTLINED_FUNCTION_23_43(v235, v236) & 1) != 0)
        {
          v189 = *(type metadata accessor for MomentsEventData.Event(0) + 176);
          goto LABEL_276;
        }

        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_26_33();
        v242 = v35 && v240 == v241;
        if (v242 || (OUTLINED_FUNCTION_10_28(0xD000000000000016, v240) & 1) != 0)
        {
          goto LABEL_133;
        }

        OUTLINED_FUNCTION_6_62();
        v246 = v245 == 0xD000000000000018 && v243 == v244;
        if (v246 || (OUTLINED_FUNCTION_10_28(0xD000000000000018, v243) & 1) != 0)
        {
          goto LABEL_133;
        }

        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_18_44();
        v250 = v35 && v248 == v249;
        if (v250 || (OUTLINED_FUNCTION_10_28(v247, v248) & 1) != 0)
        {
          goto LABEL_133;
        }

        OUTLINED_FUNCTION_6_62();
        v254 = v253 == 0xD000000000000015 && v251 == v252;
        if (v254 || (OUTLINED_FUNCTION_10_28(0xD000000000000015, v251) & 1) != 0)
        {
          goto LABEL_133;
        }

        OUTLINED_FUNCTION_6_62();
        v258 = v257 == 0xD000000000000015 && v255 == v256;
        if (v258 || (OUTLINED_FUNCTION_10_28(0xD000000000000015, v255) & 1) != 0)
        {
          v200 = *(type metadata accessor for MomentsEventData.Event(0) + 196);
        }

        else
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_18_44();
          v262 = v35 && v260 == v261;
          if (v262 || (OUTLINED_FUNCTION_10_28(v259, v260) & 1) != 0)
          {
            v200 = *(type metadata accessor for MomentsEventData.Event(0) + 200);
          }

          else
          {
            OUTLINED_FUNCTION_6_62();
            v267 = v266 == 0xD000000000000013 && v264 == v265;
            if (v267 || (OUTLINED_FUNCTION_23_43(v263, v264) & 1) != 0)
            {
              v200 = *(type metadata accessor for MomentsEventData.Event(0) + 204);
            }

            else
            {
              OUTLINED_FUNCTION_6_62();
              v272 = v271 == 0xD000000000000013 && v269 == v270;
              if (v272 || (OUTLINED_FUNCTION_23_43(v268, v269) & 1) != 0)
              {
                v200 = *(type metadata accessor for MomentsEventData.Event(0) + 208);
              }

              else
              {
                OUTLINED_FUNCTION_6_62();
                v276 = v275 == 0xD000000000000016 && v273 == v274;
                if (v276 || (OUTLINED_FUNCTION_10_28(0xD000000000000016, v273) & 1) != 0)
                {
                  type metadata accessor for MomentsEventData.Event(0);
                  OUTLINED_FUNCTION_7_50();
                  if (v277)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_411;
                }

                OUTLINED_FUNCTION_18_44();
                v281 = v35 && v280 == v279;
                if (v281 || (OUTLINED_FUNCTION_10_28(v278, v279) & 1) != 0)
                {
                  goto LABEL_133;
                }

                OUTLINED_FUNCTION_18_44();
                v285 = v35 && v284 == v283;
                if (v285 || (OUTLINED_FUNCTION_10_28(v282, v283) & 1) != 0)
                {
                  goto LABEL_133;
                }

                OUTLINED_FUNCTION_14_49();
                v288 = v35 && v287 == 0xE800000000000000;
                if (v288 || (OUTLINED_FUNCTION_35_33(v286) & 1) != 0)
                {
                  type metadata accessor for MomentsEventData.Event(0);
                  OUTLINED_FUNCTION_7_50();
                  if (v289)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_411;
                }

                OUTLINED_FUNCTION_18_44();
                v293 = v35 && v292 == v291;
                if (v293 || (OUTLINED_FUNCTION_10_28(v290, v291) & 1) != 0)
                {
                  goto LABEL_133;
                }

                OUTLINED_FUNCTION_18_44();
                v297 = v35 && v296 == v295;
                if (v297 || (OUTLINED_FUNCTION_10_28(v294, v295) & 1) != 0)
                {
                  goto LABEL_133;
                }

                OUTLINED_FUNCTION_6_62();
                v301 = v300 == 0xD000000000000011 && v298 == v299;
                if (v301 || (OUTLINED_FUNCTION_10_28(0xD000000000000011, v298) & 1) != 0)
                {
                  goto LABEL_133;
                }

                OUTLINED_FUNCTION_6_62();
                v306 = v305 == 0xD000000000000013 && v303 == v304;
                if (!v306 && (OUTLINED_FUNCTION_23_43(v302, v303) & 1) == 0)
                {
                  v308 = v339 == 1380999527 && v340 == 0xE400000000000000;
                  if (v308 || (OUTLINED_FUNCTION_10_28(1380999527, 0xE400000000000000) & 1) != 0)
                  {
                    type metadata accessor for MomentsEventData.Event(0);
                    OUTLINED_FUNCTION_18_27();
                    if ((*(v309 + 10) & 1) == 0)
                    {
                      v310 = *(v309 + 4);
                      v343 = *v309;
                      LOWORD(v344) = v310 & 0x1FF;
                      sub_193494798(&type metadata for MomentsEventData.PR, &off_1F07F0760, v342);
                      goto LABEL_28;
                    }

                    goto LABEL_27;
                  }

                  OUTLINED_FUNCTION_14_49();
                  v313 = v35 && v312 == 0xE600000000000000;
                  if (!v313 && (OUTLINED_FUNCTION_10_28(v311, 0xE600000000000000) & 1) == 0)
                  {
                    OUTLINED_FUNCTION_84_1();
                    OUTLINED_FUNCTION_18_44();
                    v317 = v35 && v316 == v315;
                    if (v317 || (OUTLINED_FUNCTION_10_28(v314, v315) & 1) != 0)
                    {
                      type metadata accessor for MomentsEventData.Event(0);
                      OUTLINED_FUNCTION_7_50();
                      if (v318)
                      {
                        goto LABEL_27;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_18_44();
                      v321 = v35 && v320 == 0xE900000000000065;
                      if (v321 || (OUTLINED_FUNCTION_30_28(v319) & 1) != 0)
                      {
                        type metadata accessor for MomentsEventData.Event(0);
                        OUTLINED_FUNCTION_7_50();
                        if (v322)
                        {
                          goto LABEL_27;
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_6_62();
                        v326 = v325 == 0xD000000000000015 && v323 == v324;
                        if (!v326 && (OUTLINED_FUNCTION_10_28(0xD000000000000015, v323) & 1) == 0)
                        {
                          v328 = sub_19349AB64();
                          v329 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v328);
                          v331 = OUTLINED_FUNCTION_47_27(v329, v330);
                          MEMORY[0xD00000000000003E] = type metadata accessor for MomentsEventData.Event(v331);
                          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(0xD000000000000026);
                          sub_19378D884(v341, boxed_opaque_existential_1Tm, type metadata accessor for MomentsEventData.Event);
                          OUTLINED_FUNCTION_64_19();

                          goto LABEL_28;
                        }

                        type metadata accessor for MomentsEventData.Event(0);
                        OUTLINED_FUNCTION_7_50();
                        if (v327)
                        {
                          goto LABEL_27;
                        }
                      }
                    }

                    goto LABEL_411;
                  }

                  goto LABEL_133;
                }

                v200 = *(type metadata accessor for MomentsEventData.Event(0) + 240);
              }
            }
          }
        }
      }
    }

    v307 = *(v341 + v200);
    if (v307 != 2)
    {
      LOBYTE(v343) = v307 & 1;
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  v134 = *(type metadata accessor for MomentsEventData.Event(0) + 68);
LABEL_107:
  v36 = (v341 + v134);
LABEL_7:
  v37 = v36[1];
  if (!v37)
  {
    goto LABEL_27;
  }

  v343 = *v36;
  v344 = v37;
LABEL_9:
  sub_1934948FC();
LABEL_28:
  OUTLINED_FUNCTION_27();
}

void sub_19378A2F0()
{
  OUTLINED_FUNCTION_26();
  v540 = v0;
  v541 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42B00, &qword_193997C90);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v533 = &v517 - v8;
  v532 = type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v531 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = OUTLINED_FUNCTION_47(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_8();
  v530 = v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49();
  v528 = v16;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49();
  v526 = v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49();
  v525 = v20;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_49();
  v524 = v22;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_49();
  v520 = v24;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_49();
  v534 = v26;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_49();
  v535 = v28;
  OUTLINED_FUNCTION_47_3();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v517 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v517 - v33;
  sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v536 = v36;
  v537 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15_8();
  v529 = v37;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_49();
  v527 = v39;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_49();
  v523 = v41;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_49();
  v522 = v43;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_49();
  v521 = v45;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_49();
  v519 = v47;
  OUTLINED_FUNCTION_47_3();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v517 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v517 - v53;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_58_20();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v517 - v56;
  OUTLINED_FUNCTION_38();
  v538 = v5;
  v539 = v3;
  v60 = v5 == 0xD000000000000010 && v59 == v3;
  if (v60 || (OUTLINED_FUNCTION_16_40(v58, v59) & 1) != 0)
  {
    v61 = v540;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_51();
  OUTLINED_FUNCTION_19_53();
  v66 = v60 && v65 == v64;
  if (v66 || (OUTLINED_FUNCTION_37_29(v63, v64) & 1) != 0)
  {
    v67 = type metadata accessor for MomentsEventData.EventBundle(0);
    v68 = OUTLINED_FUNCTION_28_31(*(v67 + 20));
    sub_1934486F8(v68, v34, v69, v70);
    v71 = v537;
    OUTLINED_FUNCTION_6_3(v34, 1, v537);
    if (!v60)
    {
      OUTLINED_FUNCTION_12_52();
      v76(v57, v34, v71);
      sub_1934948FC();
      v77 = *(v0 + 8);
      v78 = v57;
LABEL_21:
      v77(v78, v71);
      goto LABEL_20;
    }

    v72 = &qword_1EAE3A9E8;
    v73 = &qword_19394F800;
    v74 = v34;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_11_51();
  OUTLINED_FUNCTION_19_53();
  v82 = v60 && v81 == v80;
  if (v82 || (OUTLINED_FUNCTION_37_29(v79, v80) & 1) != 0)
  {
    v83 = type metadata accessor for MomentsEventData.EventBundle(0);
    v84 = OUTLINED_FUNCTION_28_31(*(v83 + 24));
    sub_1934486F8(v84, v32, v85, v86);
    v87 = v537;
    OUTLINED_FUNCTION_6_3(v32, 1, v537);
    if (!v60)
    {
      v88 = v536;
      (*(v536 + 32))(v0, v32, v87);
      sub_1934948FC();
      (*(v88 + 8))(v0, v87);
      goto LABEL_20;
    }

    v72 = &qword_1EAE3A9E8;
    v73 = &qword_19394F800;
    v74 = v32;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38();
  v90 = v538 == 0xD000000000000012 && v89 == v539;
  if (v90 || (OUTLINED_FUNCTION_37_29(0xD000000000000012, v89) & 1) != 0)
  {
    v91 = type metadata accessor for MomentsEventData.EventBundle(0);
    v92 = OUTLINED_FUNCTION_28_31(*(v91 + 28));
    v93 = v535;
    sub_1934486F8(v92, v535, v94, v95);
    v96 = OUTLINED_FUNCTION_132();
    v71 = v537;
    OUTLINED_FUNCTION_6_3(v96, v97, v537);
    if (!v60)
    {
      OUTLINED_FUNCTION_12_52();
      v98(v54, v93, v71);
      sub_1934948FC();
      v77 = *(v0 + 8);
      v78 = v54;
      goto LABEL_21;
    }

    v72 = &qword_1EAE3A9E8;
    v73 = &qword_19394F800;
    v74 = v93;
LABEL_18:
    sub_19344E6DC(v74, v72, v73);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_38();
  v100 = v538 == 0xD000000000000014 && v99 == v539;
  if (v100 || (OUTLINED_FUNCTION_37_29(0xD000000000000014, v99) & 1) != 0)
  {
    v101 = type metadata accessor for MomentsEventData.EventBundle(0);
    v102 = OUTLINED_FUNCTION_28_31(*(v101 + 32));
    v103 = v534;
    sub_1934486F8(v102, v534, v104, v105);
    v106 = v537;
    OUTLINED_FUNCTION_6_3(v103, 1, v537);
    if (!v60)
    {
      OUTLINED_FUNCTION_12_52();
      v107(v51, v103, v106);
      sub_1934948FC();
      MEMORY[0xD00000000000001C](v51, v106);
      goto LABEL_20;
    }

    v72 = &qword_1EAE3A9E8;
    v73 = &qword_19394F800;
    v74 = v103;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38();
  v109 = v538 == 0xD000000000000013 && v108 == v539;
  if (v109 || (OUTLINED_FUNCTION_37_29(0xD000000000000013, v108) & 1) != 0)
  {
    type metadata accessor for MomentsEventData.EventBundle(0);
    OUTLINED_FUNCTION_5_72();
    if (v111)
    {
      goto LABEL_19;
    }

LABEL_506:
    OUTLINED_FUNCTION_0_102(v110);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v113 = v538 == 0xD000000000000018 && v112 == v539;
  if (v113 || (OUTLINED_FUNCTION_37_29(0xD000000000000018, v112) & 1) != 0)
  {
    v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 40);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_38();
  v117 = v538 == 0xD000000000000017 && v116 == v539;
  if (v117 || (OUTLINED_FUNCTION_37_29(0xD000000000000017, v116) & 1) != 0)
  {
    v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 44);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_38();
  v119 = v538 == 0xD00000000000001BLL && v118 == v539;
  if (v119 || (OUTLINED_FUNCTION_37_29(0xD00000000000001BLL, v118) & 1) != 0)
  {
    v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 48);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_38();
  v121 = v538 == 0xD000000000000019 && v120 == v539;
  if (v121 || (OUTLINED_FUNCTION_37_29(0xD000000000000019, v120) & 1) != 0)
  {
    v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 52);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_38();
  v535 = 0xD00000000000001ALL;
  v123 = v538 == 0xD00000000000001ALL && v122 == v539;
  if (!v123 && (OUTLINED_FUNCTION_37_29(v535, v122) & 1) == 0)
  {
    OUTLINED_FUNCTION_4_73();
    v128 = v127 == 0xD000000000000012 && v125 == v126;
    if (v128 || (OUTLINED_FUNCTION_37_29(0xD000000000000012, v125) & 1) != 0)
    {
      v124 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 60);
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_19_53();
    v132 = v60 && v130 == v131;
    if (v132 || (OUTLINED_FUNCTION_37_29(v129, v130) & 1) != 0)
    {
      v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 64);
      goto LABEL_59;
    }

    v133 = OUTLINED_FUNCTION_11_51() & 0xFFFFFFFFFFFFLL | 0x6C50000000000000;
    v135 = v538 == v133 && v539 == v134;
    if (v135 || (OUTLINED_FUNCTION_37_29(v133, v134) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v136)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_4_73();
    v140 = v139 == 0xD000000000000013 && v137 == v138;
    if (v140 || (OUTLINED_FUNCTION_37_29(0xD000000000000013, v137) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v141)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_38();
    v534 = 0xD000000000000016;
    v143 = v538 == 0xD000000000000016 && v142 == v539;
    if (v143 || (OUTLINED_FUNCTION_37_29(v534, v142) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v144)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_11_51();
    OUTLINED_FUNCTION_19_53();
    v148 = v60 && v147 == v146;
    if (v148 || (OUTLINED_FUNCTION_37_29(v145, v146) & 1) != 0)
    {
      v149 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 80);
LABEL_125:
      OUTLINED_FUNCTION_20_46(v149);
      v150 = &qword_1EAE3ABB0;
      v151 = &qword_193950BB8;
LABEL_126:
      __swift_instantiateConcreteTypeFromMangledNameV2(v150, v151);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_4_73();
    v156 = v155 == 0xD000000000000010 && v153 == v154;
    if (v156 || (OUTLINED_FUNCTION_16_40(v152, v153) & 1) != 0)
    {
      v157 = v540 + *(type metadata accessor for MomentsEventData.EventBundle(0) + 84);
      v158 = *(v157 + 3);
      if (v158 == 1)
      {
        goto LABEL_19;
      }

      v159 = v157[36];
      v160 = *(v157 + 8);
      v162 = *(v157 + 1);
      v161 = *(v157 + 2);
      v543[0] = *v157;
      LOWORD(v543[1]) = v162 & 0x1FF;
      v543[2] = v161;
      v543[3] = v158;
      LODWORD(v543[4]) = v160;
      BYTE4(v543[4]) = v159 & 1;
      v163 = &type metadata for MomentsEventData.Action;
      v164 = &off_1F07F0750;
LABEL_134:
      sub_193494798(v163, v164, v541);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_38();
    v518 = 0xD000000000000011;
    v166 = v538 == 0xD000000000000011 && v165 == v539;
    if (v166 || (OUTLINED_FUNCTION_37_29(v518, v165) & 1) != 0)
    {
      v167 = type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_20_46(*(v167 + 88));
      v150 = &unk_1EAE42B28;
      v151 = &unk_193995D30;
      goto LABEL_126;
    }

    OUTLINED_FUNCTION_8_58();
    v171 = v170 == v534 && v168 == v169;
    if (v171 || (OUTLINED_FUNCTION_37_29(0xD000000000000016, v168) & 1) != 0)
    {
      v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 92);
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_11_51();
    OUTLINED_FUNCTION_19_53();
    v175 = v60 && v174 == v173;
    if (v175 || (OUTLINED_FUNCTION_37_29(v172, v173) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v176)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_4_73();
    v180 = v179 == 0xD00000000000001BLL && v177 == v178;
    if (v180 || (OUTLINED_FUNCTION_37_29(0xD00000000000001BLL, v177) & 1) != 0)
    {
      v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 100);
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_38();
    v517 = 0xD000000000000021;
    v182 = v538 == 0xD000000000000021 && v181 == v539;
    if (v182 || (OUTLINED_FUNCTION_37_29(v517, v181) & 1) != 0)
    {
      v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 104);
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_19_53();
    v186 = v60 && v184 == v185;
    if (v186 || (OUTLINED_FUNCTION_37_29(v183, v184) & 1) != 0)
    {
      v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 108);
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_8_58();
    v190 = v189 == v517 && v187 == v188;
    if (v190 || (OUTLINED_FUNCTION_37_29(0xD000000000000021, v187) & 1) != 0)
    {
      v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 112);
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_38();
    v517 = 0xD000000000000023;
    v192 = v538 == 0xD000000000000023 && v191 == v539;
    if (v192 || (OUTLINED_FUNCTION_37_29(v517, v191) & 1) != 0)
    {
      v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 116);
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_19_53();
    v196 = v60 && v194 == v195;
    if (v196 || (OUTLINED_FUNCTION_37_29(v193, v194) & 1) != 0)
    {
      v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 120);
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_19_53();
    v200 = v60 && v199 == v198;
    if (v200 || (OUTLINED_FUNCTION_37_29(v197, v198) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v201)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_11_51();
    OUTLINED_FUNCTION_19_53();
    v205 = v60 && v204 == v203;
    if (v205 || (OUTLINED_FUNCTION_37_29(v202, v203) & 1) != 0)
    {
      v206 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 128);
      goto LABEL_611;
    }

    OUTLINED_FUNCTION_19_53();
    v210 = v60 && v209 == v208;
    if (v210 || (OUTLINED_FUNCTION_37_29(v207, v208) & 1) != 0)
    {
      v206 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 132);
      goto LABEL_611;
    }

    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_19_53();
    v214 = v60 && v213 == v212;
    if (v214 || (OUTLINED_FUNCTION_37_29(v211, v212) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v215)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_4_73();
    v219 = v218 == 0xD000000000000013 && v216 == v217;
    if (v219 || (OUTLINED_FUNCTION_37_29(0xD000000000000013, v216) & 1) != 0)
    {
      v220 = type metadata accessor for MomentsEventData.EventBundle(0);
      v221 = OUTLINED_FUNCTION_28_31(*(v220 + 140));
      v222 = v520;
      sub_1934486F8(v221, v520, v223, v224);
      OUTLINED_FUNCTION_14_55();
      if (v60)
      {
        v72 = &qword_1EAE3A9E8;
        v73 = &qword_19394F800;
        v74 = v520;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_52();
      v230 = v519;
      v229 = v520;
      goto LABEL_539;
    }

    OUTLINED_FUNCTION_8_58();
    OUTLINED_FUNCTION_49_22();
    v227 = v60 && v225 == v226;
    if (v227 || (OUTLINED_FUNCTION_37_29(0xD00000000000001ALL, v225) & 1) != 0)
    {
      v124 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 144);
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_4_73();
    v234 = v233 == 0xD00000000000001BLL && v231 == v232;
    if (v234 || (OUTLINED_FUNCTION_37_29(0xD00000000000001BLL, v231) & 1) != 0)
    {
      v124 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 148);
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_4_73();
    v238 = v237 == 0xD000000000000019 && v235 == v236;
    if (v238 || (OUTLINED_FUNCTION_37_29(0xD000000000000019, v235) & 1) != 0)
    {
      v239 = v540 + *(type metadata accessor for MomentsEventData.EventBundle(0) + 152);
      if ((v239[4] & 1) == 0)
      {
        LODWORD(v543[0]) = *v239;
        goto LABEL_9;
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_8_58();
    v243 = v242 == v518 && v240 == v241;
    if (v243 || (OUTLINED_FUNCTION_37_29(0xD000000000000011, v240) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v244)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_19_53();
    v248 = v60 && v246 == v247;
    if (v248 || (OUTLINED_FUNCTION_37_29(v245, v246) & 1) != 0)
    {
      v124 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 160);
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_8_58();
    v252 = v251 == v534 && v249 == v250;
    if (v252 || (OUTLINED_FUNCTION_37_29(0xD000000000000016, v249) & 1) != 0)
    {
      v253 = type metadata accessor for MomentsEventData.EventBundle(0);
      v254 = OUTLINED_FUNCTION_28_31(*(v253 + 164));
      v222 = v524;
      sub_1934486F8(v254, v524, v255, v256);
      OUTLINED_FUNCTION_14_55();
      if (v60)
      {
        v72 = &qword_1EAE3A9E8;
        v73 = &qword_19394F800;
        v74 = v524;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_52();
      v230 = v521;
      v265 = v521;
      v229 = v524;
LABEL_540:
      v71 = v537;
      v228(v265, v229, v537);
      sub_1934948FC();
      v77 = *(v222 + 8);
      v78 = v230;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_8_58();
    v260 = v259 == v534 && v257 == v258;
    if (v260 || (OUTLINED_FUNCTION_37_29(0xD000000000000016, v257) & 1) != 0)
    {
      v261 = type metadata accessor for MomentsEventData.EventBundle(0);
      v262 = OUTLINED_FUNCTION_28_31(*(v261 + 168));
      v222 = v525;
      sub_1934486F8(v262, v525, v263, v264);
      OUTLINED_FUNCTION_14_55();
      if (v60)
      {
        v72 = &qword_1EAE3A9E8;
        v73 = &qword_19394F800;
        v74 = v525;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_52();
      v230 = v522;
      v265 = v522;
      v229 = v525;
      goto LABEL_540;
    }

    OUTLINED_FUNCTION_4_73();
    v270 = v269 == 0xD000000000000014 && v267 == v268;
    if (v270 || (OUTLINED_FUNCTION_34_35(v266, v267) & 1) != 0)
    {
      v271 = type metadata accessor for MomentsEventData.EventBundle(0);
      v272 = OUTLINED_FUNCTION_28_31(*(v271 + 172));
      v222 = v526;
      sub_1934486F8(v272, v526, v273, v274);
      OUTLINED_FUNCTION_14_55();
      if (v60)
      {
        v72 = &qword_1EAE3A9E8;
        v73 = &qword_19394F800;
        v74 = v526;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_52();
      v230 = v523;
      v265 = v523;
      v229 = v526;
      goto LABEL_540;
    }

    OUTLINED_FUNCTION_38();
    v535 = 0xD00000000000001CLL;
    v276 = v538 == 0xD00000000000001CLL && v275 == v539;
    if (v276 || (OUTLINED_FUNCTION_37_29(v535, v275) & 1) != 0)
    {
      v277 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 176);
      goto LABEL_375;
    }

    OUTLINED_FUNCTION_8_58();
    OUTLINED_FUNCTION_49_22();
    v280 = v60 && v278 == v279;
    if (v280 || (OUTLINED_FUNCTION_37_29(0xD00000000000001CLL, v278) & 1) != 0)
    {
      v277 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 180);
      goto LABEL_375;
    }

    OUTLINED_FUNCTION_4_73();
    v284 = v283 == 0xD000000000000017 && v281 == v282;
    if (v284 || (OUTLINED_FUNCTION_37_29(0xD000000000000017, v281) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v285)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_8_58();
    v289 = v288 == v517 && v286 == v287;
    if (v289 || (OUTLINED_FUNCTION_37_29(0xD000000000000023, v286) & 1) != 0)
    {
      v124 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 188);
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_8_58();
    OUTLINED_FUNCTION_49_22();
    v292 = v60 && v290 == v291;
    if (v292 || (OUTLINED_FUNCTION_37_29(0xD00000000000001CLL, v290) & 1) != 0)
    {
      v293 = type metadata accessor for MomentsEventData.EventBundle(0);
      v294 = OUTLINED_FUNCTION_28_31(*(v293 + 192));
      v222 = v528;
      sub_1934486F8(v294, v528, v295, v296);
      OUTLINED_FUNCTION_14_55();
      if (v60)
      {
        v72 = &qword_1EAE3A9E8;
        v73 = &qword_19394F800;
        v74 = v528;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_52();
      v230 = v527;
      v229 = v528;
LABEL_539:
      v265 = v230;
      goto LABEL_540;
    }

    OUTLINED_FUNCTION_4_73();
    v301 = v300 == 0xD000000000000014 && v298 == v299;
    if (v301 || (OUTLINED_FUNCTION_34_35(v297, v298) & 1) != 0)
    {
      v124 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 196);
      goto LABEL_85;
    }

    OUTLINED_FUNCTION_19_53();
    v305 = v60 && v304 == v303;
    if (v305 || (OUTLINED_FUNCTION_37_29(v302, v303) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v306)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_4_73();
    v311 = v310 == 0xD000000000000010 && v308 == v309;
    if (v311 || (OUTLINED_FUNCTION_16_40(v307, v308) & 1) != 0)
    {
      type metadata accessor for MomentsEventData.EventBundle(0);
      OUTLINED_FUNCTION_5_72();
      if (v312)
      {
        goto LABEL_19;
      }

      goto LABEL_506;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_19_53();
    v316 = v60 && v314 == v315;
    if (v316 || (OUTLINED_FUNCTION_37_29(v313, v314) & 1) != 0)
    {
      v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 208);
    }

    else
    {
      OUTLINED_FUNCTION_4_73();
      v321 = v320 == 0xD000000000000014 && v318 == v319;
      if (v321 || (OUTLINED_FUNCTION_34_35(v317, v318) & 1) != 0)
      {
        v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 212);
      }

      else
      {
        OUTLINED_FUNCTION_4_73();
        v325 = v324 == 0xD000000000000018 && v322 == v323;
        if (v325 || (OUTLINED_FUNCTION_37_29(0xD000000000000018, v322) & 1) != 0)
        {
          v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 216);
        }

        else
        {
          OUTLINED_FUNCTION_4_73();
          v329 = v328 == 0xD000000000000017 && v326 == v327;
          if (v329 || (OUTLINED_FUNCTION_37_29(0xD000000000000017, v326) & 1) != 0)
          {
            v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 220);
          }

          else
          {
            OUTLINED_FUNCTION_8_58();
            OUTLINED_FUNCTION_49_22();
            v332 = v60 && v330 == v331;
            if (v332 || (OUTLINED_FUNCTION_37_29(0xD00000000000001CLL, v330) & 1) != 0)
            {
              v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 224);
            }

            else
            {
              OUTLINED_FUNCTION_19_53();
              v336 = v60 && v335 == v334;
              if (v336 || (OUTLINED_FUNCTION_37_29(v333, v334) & 1) != 0)
              {
                v337 = type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_20_46(*(v337 + 228));
                v150 = &unk_1EAE42B20;
                v151 = &unk_193995D28;
                goto LABEL_126;
              }

              OUTLINED_FUNCTION_11_51();
              OUTLINED_FUNCTION_19_53();
              v341 = v60 && v340 == v339;
              if (v341 || (OUTLINED_FUNCTION_37_29(v338, v339) & 1) != 0)
              {
                v277 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 232);
LABEL_375:
                v342 = v540 + v277;
                if ((v342[4] & 1) == 0)
                {
                  LODWORD(v543[0]) = *v342;
                  goto LABEL_9;
                }

                goto LABEL_19;
              }

              v343 = v538 == 0x676E696B6E6172 && v539 == 0xE700000000000000;
              if (v343 || (OUTLINED_FUNCTION_37_29(0x676E696B6E6172, 0xE700000000000000) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v344)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_4_73();
              v349 = v348 == 0xD000000000000014 && v346 == v347;
              if (v349 || (OUTLINED_FUNCTION_34_35(v345, v346) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v350)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_4_73();
              v355 = v354 == 0xD000000000000014 && v352 == v353;
              if (v355 || (OUTLINED_FUNCTION_34_35(v351, v352) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v356)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_41_24();
              OUTLINED_FUNCTION_19_53();
              v360 = v60 && v359 == v358;
              if (v360 || (OUTLINED_FUNCTION_37_29(v357, v358) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v361)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_4_73();
              v366 = v365 == 0xD000000000000010 && v363 == v364;
              if (v366 || (OUTLINED_FUNCTION_16_40(v362, v363) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v367)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_19_53();
              v371 = v60 && v370 == v369;
              if (v371 || (OUTLINED_FUNCTION_37_29(v368, v369) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v372)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_19_53();
              v375 = v60 && v374 == 0xE900000000000065;
              if (v375 || (OUTLINED_FUNCTION_37_29(v373, 0xE900000000000065) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v376)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_4_73();
              v381 = v380 == 0xD000000000000010 && v378 == v379;
              if (v381 || (OUTLINED_FUNCTION_16_40(v377, v378) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v382)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_4_73();
              v387 = v386 == 0xD000000000000010 && v384 == v385;
              if (v387 || (OUTLINED_FUNCTION_16_40(v383, v384) & 1) != 0 || ((OUTLINED_FUNCTION_4_73(), v391 == 0xD000000000000010) ? (v392 = v389 == v390) : (v392 = 0), v392 || (OUTLINED_FUNCTION_16_40(v388, v389) & 1) != 0))
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v393)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_4_73();
              v397 = v396 == 0xD000000000000018 && v394 == v395;
              if (v397 || (OUTLINED_FUNCTION_37_29(0xD000000000000018, v394) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v398)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_4_73();
              v403 = v402 == 0xD000000000000014 && v400 == v401;
              if (v403 || (OUTLINED_FUNCTION_34_35(v399, v400) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v404)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_38();
              OUTLINED_FUNCTION_19_53();
              v408 = v60 && v406 == v407;
              if (v408 || (OUTLINED_FUNCTION_37_29(v405, v406) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v409)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              OUTLINED_FUNCTION_8_58();
              OUTLINED_FUNCTION_49_22();
              v412 = v60 && v410 == v411;
              if (v412 || (OUTLINED_FUNCTION_37_29(0xD00000000000001CLL, v410) & 1) != 0)
              {
                type metadata accessor for MomentsEventData.EventBundle(0);
                OUTLINED_FUNCTION_5_72();
                if (v413)
                {
                  goto LABEL_19;
                }

                goto LABEL_506;
              }

              v414 = OUTLINED_FUNCTION_43_21();
              v416 = v538 == v414 && v539 == v415;
              if (v416 || (OUTLINED_FUNCTION_37_29(v414, 0xEA00000000006465) & 1) != 0)
              {
                v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 292);
              }

              else
              {
                v417 = v538 == 0x7553656C646E7562 && v539 == 0xEF65707954726570;
                if (v417 || (OUTLINED_FUNCTION_37_29(0x7553656C646E7562, 0xEF65707954726570) & 1) != 0)
                {
                  type metadata accessor for MomentsEventData.EventBundle(0);
                  OUTLINED_FUNCTION_5_72();
                  if (v418)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_506;
                }

                OUTLINED_FUNCTION_84_1();
                v420 = v538 == 0x7553656C646E7562 && v539 == v419;
                if (v420 || (OUTLINED_FUNCTION_37_29(0x7553656C646E7562, v419) & 1) != 0)
                {
                  type metadata accessor for MomentsEventData.EventBundle(0);
                  OUTLINED_FUNCTION_5_72();
                  if (v421)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_506;
                }

                OUTLINED_FUNCTION_4_73();
                v425 = v424 == 0xD000000000000019 && v422 == v423;
                if (v425 || (OUTLINED_FUNCTION_37_29(0xD000000000000019, v422) & 1) != 0)
                {
                  v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 304);
                }

                else
                {
                  OUTLINED_FUNCTION_4_73();
                  v429 = v428 == 0xD000000000000018 && v426 == v427;
                  if (v429 || (OUTLINED_FUNCTION_37_29(0xD000000000000018, v426) & 1) != 0)
                  {
                    type metadata accessor for MomentsEventData.EventBundle(0);
                    OUTLINED_FUNCTION_5_72();
                    if (v430)
                    {
                      goto LABEL_19;
                    }

                    goto LABEL_506;
                  }

                  OUTLINED_FUNCTION_4_73();
                  v434 = v433 == 0xD00000000000001BLL && v431 == v432;
                  if (!v434 && (OUTLINED_FUNCTION_37_29(0xD00000000000001BLL, v431) & 1) == 0)
                  {
                    OUTLINED_FUNCTION_19_53();
                    v438 = v60 && v437 == v436;
                    if (v438 || (OUTLINED_FUNCTION_37_29(v435, v436) & 1) != 0)
                    {
                      v149 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 316);
                      goto LABEL_125;
                    }

                    OUTLINED_FUNCTION_4_73();
                    v443 = v442 == 0xD000000000000010 && v440 == v441;
                    if (v443 || (OUTLINED_FUNCTION_16_40(v439, v440) & 1) != 0)
                    {
                      v149 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 320);
                      goto LABEL_125;
                    }

                    OUTLINED_FUNCTION_8_58();
                    v447 = v446 == v518 && v444 == v445;
                    if (!v447 && (OUTLINED_FUNCTION_37_29(0xD000000000000011, v444) & 1) == 0)
                    {
                      OUTLINED_FUNCTION_19_53();
                      v455 = v60 && v454 == v453;
                      if (v455 || (OUTLINED_FUNCTION_37_29(v452, v453) & 1) != 0)
                      {
                        v456 = type metadata accessor for MomentsEventData.EventBundle(0);
                        OUTLINED_FUNCTION_20_46(*(v456 + 328));
                        v150 = &unk_1EAE42B18;
                        v151 = &unk_193995D20;
                        goto LABEL_126;
                      }

                      v457 = v538 == 0x736E6F73726570 && v539 == 0xE700000000000000;
                      if (v457 || (OUTLINED_FUNCTION_37_29(0x736E6F73726570, 0xE700000000000000) & 1) != 0)
                      {
                        v458 = type metadata accessor for MomentsEventData.EventBundle(0);
                        OUTLINED_FUNCTION_20_46(*(v458 + 332));
                        v150 = &unk_1EAE42B10;
                        v151 = &unk_193995D18;
                        goto LABEL_126;
                      }

                      OUTLINED_FUNCTION_19_53();
                      v461 = v60 && v460 == 0xE900000000000065;
                      if (v461 || (OUTLINED_FUNCTION_37_29(v459, 0xE900000000000065) & 1) != 0)
                      {
                        v462 = v540 + *(type metadata accessor for MomentsEventData.EventBundle(0) + 336);
                        if (v462[105])
                        {
                          goto LABEL_19;
                        }

                        memcpy(v543, v462, 0x69uLL);
                        v163 = &type metadata for MomentsEventData.EventBundle.Place;
                        v164 = &off_1F07F07C0;
                        goto LABEL_134;
                      }

                      OUTLINED_FUNCTION_19_53();
                      v465 = v60 && v464 == 0xEB00000000736563;
                      if (v465 || (OUTLINED_FUNCTION_37_29(v463, 0xEB00000000736563) & 1) != 0)
                      {
                        v466 = type metadata accessor for MomentsEventData.EventBundle(0);
                        OUTLINED_FUNCTION_20_46(*(v466 + 340));
                        v150 = &unk_1EAE42B08;
                        v151 = &unk_193995D10;
                        goto LABEL_126;
                      }

                      OUTLINED_FUNCTION_19_53();
                      v470 = v60 && v469 == v468;
                      if (v470 || (OUTLINED_FUNCTION_37_29(v467, v468) & 1) != 0)
                      {
                        v149 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 344);
                        goto LABEL_125;
                      }

                      OUTLINED_FUNCTION_19_53();
                      v473 = v60 && v472 == 0xEF61746164617465;
                      if (v473 || (OUTLINED_FUNCTION_37_29(v471, 0xEF61746164617465) & 1) != 0)
                      {
                        v474 = v540 + *(type metadata accessor for MomentsEventData.EventBundle(0) + 348);
                        v475 = *v474;
                        if (*v474 == 3)
                        {
                          goto LABEL_19;
                        }

                        v476 = v474[16];
                        v477 = *(v474 + 1);
                        v543[0] = v475;
                        v543[1] = v477;
                        LOBYTE(v543[2]) = v476;
                        v163 = &type metadata for MomentsEventData.EventBundle.ClusterMetadata;
                        v164 = &off_1F07F07D0;
                        goto LABEL_134;
                      }

                      OUTLINED_FUNCTION_19_53();
                      v480 = v60 && v479 == 0xEF61746164617465;
                      if (v480 || (OUTLINED_FUNCTION_37_29(v478, 0xEF61746164617465) & 1) != 0)
                      {
                        v481 = type metadata accessor for MomentsEventData.EventBundle(0);
                        v482 = OUTLINED_FUNCTION_28_31(*(v481 + 352));
                        v483 = v533;
                        sub_1934486F8(v482, v533, v484, v485);
                        OUTLINED_FUNCTION_6_3(v483, 1, v532);
                        if (!v60)
                        {
                          v490 = v531;
                          sub_19378C498(v533, v531, type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata);
                          sub_193494798(v532, &off_1F07F07E0, v541);
                          sub_19378C4F8(v490, type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata);
                          goto LABEL_20;
                        }

                        v72 = &qword_1EAE42B00;
                        v73 = &qword_193997C90;
                        v74 = v533;
                        goto LABEL_18;
                      }

                      OUTLINED_FUNCTION_4_73();
                      v489 = v488 == 0xD000000000000013 && v486 == v487;
                      if (v489 || (OUTLINED_FUNCTION_37_29(0xD000000000000013, v486) & 1) != 0)
                      {
                        v206 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 356);
                      }

                      else
                      {
                        OUTLINED_FUNCTION_8_58();
                        v494 = v493 == v518 && v491 == v492;
                        if (v494 || (OUTLINED_FUNCTION_37_29(0xD000000000000011, v491) & 1) != 0)
                        {
                          v206 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 360);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_84_1();
                          OUTLINED_FUNCTION_19_53();
                          v498 = v60 && v497 == v496;
                          if (v498 || (OUTLINED_FUNCTION_37_29(v495, v496) & 1) != 0)
                          {
                            v206 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 364);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_19_53();
                            v502 = v60 && v501 == v500;
                            if (v502 || (OUTLINED_FUNCTION_37_29(v499, v500) & 1) != 0)
                            {
                              v206 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 368);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_19_53();
                              v505 = v60 && v504 == 0xEF65726F63537363;
                              if (!v505 && (OUTLINED_FUNCTION_37_29(v503, 0xEF65726F63537363) & 1) == 0)
                              {
                                OUTLINED_FUNCTION_19_53();
                                v510 = v60 && v509 == v508;
                                if (!v510 && (OUTLINED_FUNCTION_37_29(v507, v508) & 1) == 0)
                                {
                                  v512 = sub_19349AB64();
                                  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v512);
                                  v514 = v513;
                                  v515 = v539;
                                  *v513 = v538;
                                  v513[1] = v515;
                                  v513[5] = type metadata accessor for MomentsEventData.EventBundle(0);
                                  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v514 + 2);
                                  sub_19378D884(v540, boxed_opaque_existential_1Tm, type metadata accessor for MomentsEventData.EventBundle);
                                  *(v514 + 48) = 1;
                                  swift_willThrow();

                                  goto LABEL_20;
                                }

                                v511 = type metadata accessor for MomentsEventData.EventBundle(0);
                                memcpy(v543, v540 + *(v511 + 376), 0xDAuLL);
                                if (sub_1936EC8BC(v543) == 1)
                                {
                                  goto LABEL_19;
                                }

                                memcpy(v542, v543, sizeof(v542));
                                v163 = &type metadata for MomentsEventData.EventBundle.MetadataForRank;
                                v164 = &off_1F07F07F0;
                                goto LABEL_134;
                              }

                              v206 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 372);
                            }
                          }
                        }
                      }

LABEL_611:
                      v506 = v540 + v206;
                      if ((v506[8] & 1) == 0)
                      {
                        v543[0] = *v506;
                        goto LABEL_9;
                      }

                      goto LABEL_19;
                    }

                    v448 = type metadata accessor for MomentsEventData.EventBundle(0);
                    v449 = OUTLINED_FUNCTION_28_31(*(v448 + 324));
                    v222 = v530;
                    sub_1934486F8(v449, v530, v450, v451);
                    OUTLINED_FUNCTION_14_55();
                    if (v60)
                    {
                      v72 = &qword_1EAE3A9E8;
                      v73 = &qword_19394F800;
                      v74 = v530;
                      goto LABEL_18;
                    }

                    OUTLINED_FUNCTION_12_52();
                    v230 = v529;
                    v229 = v530;
                    goto LABEL_539;
                  }

                  v114 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 312);
                }
              }
            }
          }
        }
      }
    }

LABEL_59:
    v115 = *(v540 + v114);
    if (v115 != 2)
    {
      LOBYTE(v543[0]) = v115 & 1;
      goto LABEL_9;
    }

LABEL_19:
    v75 = v541;
    *v541 = 0u;
    *(v75 + 1) = 0u;
    goto LABEL_20;
  }

  v124 = *(type metadata accessor for MomentsEventData.EventBundle(0) + 56);
LABEL_85:
  v61 = (v540 + v124);
LABEL_7:
  v62 = v61[1];
  if (!v62)
  {
    goto LABEL_19;
  }

  v543[0] = *v61;
  v543[1] = v62;
LABEL_9:
  sub_1934948FC();
LABEL_20:
  OUTLINED_FUNCTION_27();
}